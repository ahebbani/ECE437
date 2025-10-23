// mapped needs this
`include "cpu_types_pkg.vh"
`include "datapath_cache_if.vh"
`include "caches_if.vh"

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module dcache_tb;

  parameter PERIOD = 10;
  logic CLK = 0, nRST;

  // clock
  always #(PERIOD/2) CLK++;

  // interface instances
  caches_if         cif();
  datapath_cache_if dcif();

  // DUT
`ifndef MAPPED
  dcache DUT(
    .clk  (CLK),
    .nrst (nRST),
    .dcif (dcif),
    .cif  (cif)
  );
`else
  dcache DUT(
    .clk(CLK),
    .nrst(nRST),
    // datapath <-> dcache
    .\dcif.halt       (dcif.halt),
    .\dcif.dmemREN    (dcif.dmemREN),
    .\dcif.dmemWEN    (dcif.dmemWEN),
    .\dcif.datomic    (dcif.datomic),
    .\dcif.dmemstore  (dcif.dmemstore),
    .\dcif.dmemaddr   (dcif.dmemaddr),
    .\dcif.dhit       (dcif.dhit),
    .\dcif.dmemload   (dcif.dmemload),
    .\dcif.flushed    (dcif.flushed),
    // dcache <-> memory controller
    .\cif.dwait       (cif.dwait),
    .\cif.dload       (cif.dload),
    .\cif.ccwait      (cif.ccwait),
    .\cif.ccinv       (cif.ccinv),
    .\cif.ccsnoopaddr (cif.ccsnoopaddr),
    .\cif.dREN        (cif.dREN),
    .\cif.dWEN        (cif.dWEN),
    .\cif.daddr       (cif.daddr),
    .\cif.dstore      (cif.dstore),
    .\cif.ccwrite     (cif.ccwrite),
    .\cif.cctrans     (cif.cctrans)
  );
`endif

  // Test program connected to the interfaces
  test PROG(.clk(CLK), .nrst(nRST), .dcif(dcif), .cif(cif));

endmodule


program test (
  input  logic clk,
  output logic nrst,
  datapath_cache_if dcif,
  caches_if cif
);

  import cpu_types_pkg::*;

  // simple backing memory model (word-addressed)
  localparam int MEM_WORDS = 1<<16; // 256 KB words
  word_t mem [0:MEM_WORDS-1];

  // track memory-side activity for assertions
  int mem_reads;
  int mem_writes;
  int ren_edges;
  int wen_edges;

  // expected hit counter (first-cycle hits on new requests only)
  word_t exp_hit_cnt;

  // helper: get word address from byte address
  function automatic int unsigned word_addr(input word_t byte_addr);
    word_addr = byte_addr[31:2];
  endfunction

  // helper: compose an address with given tag/set/word offset
  function automatic word_t mk_addr(input int unsigned tag,
                                    input int unsigned set,
                                    input bit word_off);
    dcachef_t f;
    f.tag    = tag[DTAG_W-1:0];
    f.idx    = set[DIDX_W-1:0];
    f.blkoff = word_off;
    f.bytoff = '0; // word-aligned
    return word_t'(f);
  endfunction

  // coherence defaults (no other caches)
  always_comb begin
    cif.ccwait      = 1'b0;
    cif.ccinv       = 1'b0;
    cif.ccsnoopaddr = '0;
  end

  // ---------------- Memory latency model ----------------
  // Configurable latency (cycles) for both reads and writes, clamped to [0,10]
  int mem_latency_cycles = 0; // default 0-cycle memory
  task automatic set_mem_latency(input int n);
    if (n < 0)      mem_latency_cycles = 0;
    else if (n > 10) mem_latency_cycles = 10;
    else             mem_latency_cycles = n;
  endtask

  typedef enum logic [1:0] { M_IDLE, M_READ, M_WRITE } mstate_t;
  mstate_t mstate;
  int countdown;
  word_t lat_addr, lat_wdata;

  // Initialize memory control inputs driven by TB
  initial begin
    mstate    = M_IDLE;
    countdown = 0;
    lat_addr  = '0;
    lat_wdata = '0;
    cif.dwait = 1'b0;
    cif.dload = '0;
  end

  // Simple one-transaction-at-a-time memory model with ready/valid via dwait
  always_ff @(posedge clk or negedge nrst) begin
    if (!nrst) begin
      mstate    <= M_IDLE;
      countdown <= 0;
      lat_addr  <= '0;
      lat_wdata <= '0;
      cif.dwait <= 1'b0;
      cif.dload <= '0;
    end else begin
      case (mstate)
        M_IDLE: begin
          // start a read on rising edge of dREN
          if (cif.dREN && !prev_dREN) begin
            mstate    <= M_READ;
            countdown <= mem_latency_cycles;
            lat_addr  <= cif.daddr;
            cif.dwait <= (mem_latency_cycles != 0);
            if (cif.dWEN && !prev_dWEN) begin
              $error("Memory model: simultaneous dREN and dWEN not supported");
            end
          end
          // start a write on rising edge of dWEN
          else if (cif.dWEN && !prev_dWEN) begin
            mstate    <= M_WRITE;
            countdown <= mem_latency_cycles;
            lat_addr  <= cif.daddr;
            lat_wdata <= cif.dstore;
            cif.dwait <= (mem_latency_cycles != 0);
          end
          else begin
            cif.dwait <= 1'b0;
          end
        end

        M_READ: begin
          if (countdown > 0) begin
            countdown <= countdown - 1;
            cif.dwait <= 1'b1;
          end else begin
            // accept this read this cycle
            cif.dwait <= 1'b0;
            cif.dload <= mem[word_addr(lat_addr) % MEM_WORDS];
            mstate    <= M_IDLE;
          end
        end

        M_WRITE: begin
          if (countdown > 0) begin
            countdown <= countdown - 1;
            cif.dwait <= 1'b1;
          end else begin
            // accept this write this cycle
            cif.dwait <= 1'b0;
            mem[word_addr(lat_addr) % MEM_WORDS] <= lat_wdata;
            mstate    <= M_IDLE;
          end
        end
      endcase
    end
  end

  // observe controller writes and record stats / update memory
  logic prev_dREN, prev_dWEN;
  always_ff @(posedge clk) begin
    // count edges of requests issued by the cache
    if (cif.dREN && !cif.dwait) begin
      mem_reads++;
      if (!prev_dREN) ren_edges++;
    end
    if (cif.dWEN && !cif.dwait) begin
      mem_writes++;
      if (!prev_dWEN) wen_edges++;
  // write commit handled in memory latency model on acceptance
    end
    prev_dREN <= cif.dREN;
    prev_dWEN <= cif.dWEN;
  end

  // convenience delays
  task automatic tick(input int n=1); repeat(n) @(posedge clk); endtask

  // initialize memory contents with a simple pattern
  task automatic mem_init();
    for (int i = 0; i < MEM_WORDS; i++) begin
      mem[i] = 32'hA000_0000 | i;
    end
  endtask

  // read from CPU side; keep REN asserted until hit is observed
  task automatic do_read(input word_t addr,
                         input bit expect_first_cycle_hit,
                         input string casename);
    word_t exp = mem[word_addr(addr) % MEM_WORDS];
    // start a new request
    dcif.dmemWEN   = 0;
    dcif.dmemREN   = 1;
    dcif.dmemaddr  = addr;
    dcif.datomic   = 0;
    tick(1);

    if (expect_first_cycle_hit) begin
      assert (dcif.dhit === 1'b1 && dcif.dmemload === exp)
        else $error("%s FAILED: expected immediate hit. got dhit=%0b dmemload=0x%08x exp=0x%08x",
                    casename, dcif.dhit, dcif.dmemload, exp);
      // ensure no memory read issued on hit
      assert (cif.dREN === 1'b0) else $error("%s FAILED: cache issued dREN on a hit", casename);
      exp_hit_cnt++;
    end else begin
      // expect miss initially
      assert (dcif.dhit === 1'b0)
        else $error("%s FAILED: expected miss on first cycle, got hit", casename);
      // wait until cache reports hit with data after refill
      int safety = 0;
      while (dcif.dhit !== 1'b1 && safety < 50) begin
        tick(1);
        safety++;
      end
      assert (dcif.dhit === 1'b1)
        else $error("%s FAILED: read never hit after refill", casename);
      assert (dcif.dmemload === exp)
        else $error("%s FAILED: post-refill data mismatch: got=0x%08x exp=0x%08x",
                    casename, dcif.dmemload, exp);
    end

    // deassert request
    dcif.dmemREN = 0;
    tick(1);
  endtask

  // read holding REN high multiple cycles to verify hit counted once
  task automatic do_read_hold(input word_t addr,
                              input int hold_cycles,
                              input string casename);
    word_t exp = mem[word_addr(addr) % MEM_WORDS];
    dcif.dmemWEN  = 0;
    dcif.dmemREN  = 1;
    dcif.dmemaddr = addr;
    dcif.datomic  = 0;
    tick(1);
    // first cycle must be a hit
    assert (dcif.dhit === 1'b1 && dcif.dmemload === exp)
      else $error("%s FAILED: expected immediate hit on first cycle", casename);
    exp_hit_cnt++;
    // hold REN and ensure hit does not re-count or access memory
    for (int i = 0; i < hold_cycles-1; i++) begin
      tick(1);
      assert (dcif.dhit === 1'b1 && cif.dREN === 1'b0)
        else $error("%s FAILED: unexpected miss or memory access while holding REN", casename);
    end
    dcif.dmemREN = 0;
    tick(1);
  endtask

  // write from CPU side; keep WEN asserted until hit (or post-refill) is observed
  task automatic do_write(input word_t addr,
                          input word_t wdata,
                          input bit expect_first_cycle_hit,
                          input string casename);
    dcif.dmemREN   = 0;
    dcif.dmemWEN   = 1;
    dcif.dmemaddr  = addr;
    dcif.dmemstore = wdata;
    dcif.datomic   = 0;
    tick(1);

    if (expect_first_cycle_hit) begin
      assert (dcif.dhit === 1'b1)
        else $error("%s FAILED: expected immediate write hit", casename);
      // no memory reads or writes should be issued by cache on a write hit in IDLE
      assert (cif.dREN === 1'b0 && cif.dWEN === 1'b0)
        else $error("%s FAILED: unexpected memory access on write hit", casename);
      exp_hit_cnt++;
    end else begin
      assert (dcif.dhit === 1'b0)
        else $error("%s FAILED: expected write miss initially", casename);
      // wait until cache completes refill and write update
      int safety = 0;
      while (dcif.dhit !== 1'b1 && safety < 50) begin
        tick(1);
        safety++;
      end
      assert (dcif.dhit === 1'b1)
        else $error("%s FAILED: write never hit after refill", casename);
    end

    // deassert request
    dcif.dmemWEN = 0;
    tick(1);
  endtask

  // Test sequence
  initial begin
    // reset
    dcif.halt     = 0;
    dcif.dmemREN  = 0;
    dcif.dmemWEN  = 0;
    dcif.datomic  = 0;
    dcif.dmemaddr = '0;
    dcif.dmemstore= '0;

    mem_reads   = 0;
    mem_writes  = 0;
    ren_edges   = 0;
    wen_edges   = 0;
    exp_hit_cnt = 0;

    nrst = 0; tick(2); nrst = 1; tick(2);
    mem_init();

    // ------------ Case 1: Cold miss then hit ------------
    word_t a1 = mk_addr(10, 0, 1'b0);
    do_read(a1, /*expect_first_cycle_hit*/ 0, "Case 1a: cold miss");
    do_read(a1, /*expect_first_cycle_hit*/ 1, "Case 1b: subsequent hit");

    // ------------ Case 2: Hit behavior (no mem traffic) ------------
    int prev_reads = mem_reads;
    do_read(a1, 1, "Case 2: steady-state hit");
    assert (mem_reads == prev_reads)
      else $error("Case 2 FAILED: memory reads occurred on a hit");

    // ------------ Case 3: Replacement policy (2-way LRU) ------------
  int unsigned s = 3; // set index
    word_t a2 = mk_addr(11, s, 1'b0);
    word_t a3 = mk_addr(12, s, 1'b0);
    // Fill both ways
    do_read(a2, 0, "Case 3a: fill way 0/1 miss (a2)");
    do_read(a3, 0, "Case 3b: fill other way miss (a3)");
    // Touch a2 to make it MRU
    do_read(a2, 1, "Case 3c: a2 becomes MRU");
    // Bring a new tag mapping to same set -> should evict LRU (a3)
    word_t a4 = mk_addr(13, s, 1'b0);
    do_read(a4, 0, "Case 3d: miss causes eviction of LRU (a3)");
    // Access a3 again -> should miss (evicted)
    do_read(a3, 0, "Case 3e: a3 missed after eviction");
    // a2 should still be a hit
    do_read(a2, 1, "Case 3f: a2 still a hit");

    // ------------ Case 4: Capacity touch (sanity across sets) ------------
    for (int set_i = 0; set_i < 8; set_i++) begin
      word_t b1 = mk_addr(20, set_i, 1'b0);
      word_t b2 = mk_addr(21, set_i, 1'b1);
      do_read(b1, 0, $sformatf("Case 4: set %0d first fill (b1)", set_i));
      do_read(b2, 0, $sformatf("Case 4: set %0d second fill (b2)", set_i));
      do_read(b1, 1, $sformatf("Case 4: set %0d hit (b1)", set_i));
    end

    // ------------ Case 5: Read/Write consistency and dirty writeback ------------
    word_t c1 = mk_addr(30, 2, 1'b1);
    do_read(c1, 0, "Case 5a: miss then fill (c1)");
    word_t wdata = 32'hDEAD_BEEF;
    do_write(c1, wdata, 1, "Case 5b: write hit updates line and marks dirty");
    // Read back should hit and return written data
    // Override mem backing to reflect expectation after eviction only. For now, expect cache to return wdata.
    do_read(c1, 1, "Case 5c: read-after-write hit returns updated data");
    // Force eviction of c1 by loading two other tags in same set then a third
    word_t c2 = mk_addr(31, 2, 1'b0);
    word_t c3 = mk_addr(32, 2, 1'b0);
    do_read(c2, 0, "Case 5d: fill other way (c2)");
    // Touch c2 to make it MRU so c1 becomes LRU
    do_read(c2, 1, "Case 5e: c2 MRU");
    // Now bring c3 -> should evict c1; expect writebacks of both words in c1's block
    int prev_writes = mem_writes;
    do_read(c3, 0, "Case 5f: miss causing eviction and writeback of dirty c1");
    assert (mem_writes >= prev_writes + 2)
      else $error("Case 5 FAILED: expected two word writebacks on dirty eviction");
    // After eviction, backing memory at c1 word should equal wdata
    assert (mem[word_addr(c1) % MEM_WORDS] == wdata)
      else $error("Case 5 FAILED: backing memory did not receive written data on eviction");

    // ------------ Case 6: Hit counting rules ------------
    // Ensure not counting the same hit multiple times while holding REN
    do_read_hold(a1, 3, "Case 6a: hold REN, count one");
    // Issue a fresh hit on a different address
    do_read(a2, 1, "Case 6b: another first-cycle hit");

    // ------------ Case 7: Halt -> sweep, hit counter write to 0x3100, flushed ------------
    word_t hitcnt_addr = 32'h0000_3100;
    int prev_mem_writes = mem_writes;
    dcif.halt = 1;
    // Wait for write to 0x3100 to occur
    int guard = 0;
    while (mem[word_addr(hitcnt_addr) % MEM_WORDS] !== exp_hit_cnt && guard < 200) begin
      tick(1);
      guard++;
    end
    assert (mem[word_addr(hitcnt_addr) % MEM_WORDS] === exp_hit_cnt)
      else $error("Case 7 FAILED: hit counter write mismatch. got=%0d exp=%0d",
                  mem[word_addr(hitcnt_addr) % MEM_WORDS], exp_hit_cnt);
    // flushed should assert and stay high in HALT
    tick(2);
    assert (dcif.flushed === 1'b1) else $error("Case 7 FAILED: flushed not asserted in HALT");

    $display("DCache Testbench Complete. Expected hits counted = %0d, mem_writes=%0d, mem_reads=%0d",
             exp_hit_cnt, mem_writes, mem_reads);
    $finish;
  end

endprogram
