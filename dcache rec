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

  int testnum;

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
  test PROG(.CLK(CLK), .nRST(nRST), .dcif(dcif), .cif(cif), .testnum(testnum));

endmodule


program test (
  input  logic CLK,
  output int testnum,
  output logic nRST,
  datapath_cache_if dcif,
  caches_if cif
);

  import cpu_types_pkg::*;

function automatic word_t mem_data(input word_t addr);
    return (addr & 32'hFFFFFFFC) ^ 32'hAAAAAAAA;
endfunction

word_t memory [bit [29:0]];
task initialize_memory();
    foreach(memory[i]) begin
      memory[i] = (i << 2) ^ 32'hAAAAAAAA;
    end
endtask

int expected_hits = 0;

task checkCorrect(
      input int testcase,
      input logic edhit, 
      input logic edREN,
      input logic edWEN,
      input word_t edmemload,
      input word_t edaddr,
      input word_t edstore);

      logic match;
      match = 1'b1;

    if(dcif.dhit != edhit) 
    begin
      match = 0;
      $display("F dhit(%0d): expected %b, got %b", testcase, edhit, dcif.dhit);
    end
    if(dcif.dmemload != edmemload) 
    begin
      match = 0;
      $display("F dmemload(%0d): expected %h, got %h", testcase, edmemload, dcif.dmemload);
    end
    if(cif.dREN != edREN) 
    begin
      match = 0;
      $display("F dREN(%0d): expected %b, got %b", testcase, edREN, cif.dREN);
    end
    if(cif.dWEN != edWEN) 
    begin
      match = 0;
      $display("F dWEN(%0d): expected %b, got %b", testcase, edWEN, cif.dWEN);
    end
    if(cif.daddr != edaddr) 
    begin
      match = 0;
      $display("F daddr(%0d): expected %h, got %h", testcase, edaddr, cif.daddr);
    end
    if(cif.dstore != edstore) 
    begin
      match = 0;
      $display("F dstore(%0d): expected %h, got %h", testcase, edstore, cif.dstore);
    end

    if(match) 
    begin
      $display("Passed %0d", testcase);
    end 
    else 
    begin
      $display("Failed %0d", testcase);
    end
endtask

task miss_refill(input word_t addr, input int delayCycles = 0);

    // word 0
    handle_read({addr[31:3], 3'b000}, delayCycles);
    // word 1  
    handle_read({addr[31:3], 3'b100}, delayCycles);
endtask

task dirty_writeback(input word_t addr, input int delayCycles = 0);
    // word 0
    handle_write({addr[31:3], 3'b000}, delayCycles);
    // word 1
    handle_write({addr[31:3], 3'b100}, delayCycles);
  endtask

task handle_read(input word_t addr, input int delayCycles = 0);
    // wait for dREN to be asserted
    while(!cif.dREN) @(posedge CLK);

    repeat(delayCycles) @(posedge CLK);
    
    // provide data 
    cif.dwait = 1'b0;
    cif.dload = mem_data(addr);
    @(posedge CLK);
    
    // both sides should deassert now
    cif.dwait = 1'b1;
    cif.dload = '0;
    //@(posedge CLK);
endtask

task handle_write(input word_t addr, input int delayCycles = 0);
    // wait for dWEN to be asserted
    while(!cif.dWEN) @(posedge CLK);

    repeat(delayCycles) @(posedge CLK);
    
    // write to memory
    memory[addr[31:2]] = cif.dstore;
    cif.dwait = 1'b0;
    @(posedge CLK);
    
    // both sides should deassert now
    cif.dwait = 1'b1;
    //@(posedge CLK);
endtask


initial begin

    // {tag[25:0], idx[2:0], blkoff[0], bytoff[1:0]}
    // 8 sets, 3bit idx, 2-way, 2 words per block
    static logic [31:0] A = {26'h3FFFFFF,3'h1,1'b0,2'b00};    // set 1, word 0
    static logic [31:0] A1 = {26'h3FFFFFF,3'h1,1'b1,2'b00};   // set 1, word 1 (same block)
    static logic [31:0] B = {~26'h3FFFFFF,3'h1,1'b0,2'b00};   // set 1, different tag
    static logic [31:0] C = {26'h155555,3'h4,1'b0,2'b00};     // set 4
    static logic [31:0] D = {26'h0ABCDEF,3'h2,1'b0,2'b00};    // set 2
    static logic [31:0] E = {26'h0123456,3'h3,1'b0,2'b00};    // set 3
    static logic [31:0] BASE = {26'h0010000,3'h2,1'b0,2'b00}; // set 2
    static logic [31:0] BASE1 = {26'h0010000,3'h2,1'b0,2'b01}; // different byte offset
    static logic [31:0] F = {26'h1000000, 3'h5, 1'b0, 2'b00};

    static logic [31:0] LRU_A = {26'h100,3'h0,1'b0,2'b00}; // way 0 
    static logic [31:0] LRU_B = {26'h200,3'h0,1'b0,2'b00}; // way 1 
    static logic [31:0] LRU_C = {26'h300,3'h0,1'b0,2'b00}; // new tag, test LRU 
    
    static logic [31:0] DIRTY_A = {26'h400,3'h7,1'b0,2'b00};
    static logic [31:0] DIRTY_B = {26'h500,3'h7,1'b0,2'b00};
    static logic [31:0] DIRTY_C = {26'h600,3'h7,1'b0,2'b00};
    
    static logic [31:0] BB_A = {26'h700,3'h2,1'b0,2'b00};
    static logic [31:0] BB_B = {26'h800,3'h3,1'b0,2'b00};
    
    static logic [31:0] RESET_A = {26'h900,3'h4,1'b0,2'b00};

    //int testnum;

    initialize_memory();

    cif.dwait = 1'b1; // busy until return
    cif.dload = '0;
    
    dcif.dmemREN = 1'b0;
    dcif.dmemWEN = 1'b0;
    dcif.dmemaddr = '0;
    dcif.dmemstore = '0;
    dcif.halt = 1'b0;

    //TEST 0: reset
    $display("TEST 0: Reset");
    testnum = 0;
    nRST = 1'b0;
    @(posedge CLK);
    nRST = 1'b1;
    @(posedge CLK);
    checkCorrect(0, /*dhit*/0, /*dREN*/0, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/32'h0, /*dstore*/32'h0);


    //TEST 1: Compulsory miss
    $display("TEST 1: cold start read miss -> fill -> hit");
    testnum = 1;
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = A;
    // A misses on first try
    @(posedge CLK);
    $display("1 %0t", $time);
    checkCorrect(1, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(A & 32'hFFFF_FFF8), /*dstore*/32'h0);

    //get A from mem, ret to IDLE
    miss_refill(A);
    #1;
    $display("2 %0t", $time);
    //present info and hit, but not true hit as it missed first so we don't increase counter
    checkCorrect(2, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(A), /*daddr*/32'h0, /*dstore*/32'h0);
    @(posedge CLK);

    //deassert
    dcif.dmemREN = 1'b0;
    dcif.dmemaddr = '0;
    @(posedge CLK);

    //next A should hit
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = A;
    #1;
    $display("3 %0t", $time);
    checkCorrect(3, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(A), /*daddr*/32'h0, /*dstore*/32'h0);
    expected_hits++;
    @(posedge CLK);

    //end read
    dcif.dmemREN = 1'b0;
    dcif.dmemaddr = '0;
    @(posedge CLK);

     //TEST 2: Hit same block, diff word
    $display("TEST 2: hit same block, diff word");
    testnum = 2;

    //access word 1 of A
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = A1;
    #1;
    $display("4 %0t", $time);
    checkCorrect(3, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(A1), /*daddr*/32'h0, /*dstore*/32'h0);
    expected_hits++;
    @(posedge CLK);

    dcif.dmemaddr = '0;
    dcif.dmemREN = 1'b0;
    @(posedge CLK)

    //check we can still access word 0
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = A;
    #1;
    $display("5 %0t", $time);
    checkCorrect(3, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(A), /*daddr*/32'h0, /*dstore*/32'h0);
    expected_hits++;
    @(posedge CLK);

    dcif.dmemaddr = '0;
    dcif.dmemREN = 1'b0;
    @(posedge CLK)

    //TEST 3: Write hit
    $display("TEST 3: write hit");
    testnum = 3;

    //write to loc A (word 0 should be dirty now)
    dcif.dmemWEN = 1'b1;
    dcif.dmemaddr = A;
    dcif.dmemstore = 32'h12345678;
    #1;
    $display("6 %0t", $time);
    checkCorrect(6, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/32'h0, /*dstore*/32'h0);
    expected_hits++;
    @(posedge CLK);

    dcif.dmemaddr = '0;
    dcif.dmemWEN = 1'b0;
    dcif.dmemstore = 32'h0;
    @(posedge CLK);

    //read back to see if write worked
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = A;
    #1;
    $display("7 %0t", $time);
    checkCorrect(7, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/32'h12345678, /*daddr*/32'h0, /*dstore*/32'h0);
    expected_hits++;
    @(posedge CLK);

    dcif.dmemaddr = '0;
    dcif.dmemREN = 1'b0;
    @(posedge CLK);

    //verify word 1 is unaffected
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = A1;
    #1;
    $display("8 %0t", $time);
    checkCorrect(8, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(A1), /*daddr*/32'h0, /*dstore*/32'h0);
    expected_hits++;
    @(posedge CLK);

    dcif.dmemaddr = '0;
    dcif.dmemREN = 1'b0;
    @(posedge CLK)

  //TEST 4: Write miss
  $display("TEST 4: write miss");
  testnum = 4;

  //write to new addr B (should miss)
    dcif.dmemWEN = 1'b1;
    dcif.dmemaddr = B;
    dcif.dmemstore = 32'h87654321;
    @(posedge CLK);
    #1;
    $display("9 %0t", $time);
    checkCorrect(9, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(B & 32'hFFFF_FFF8), /*dstore*/32'h0);

    miss_refill(B);
    #1;
    $display("10 %0t", $time);
    checkCorrect(10, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/32'h0, /*dstore*/32'h0);
    //B should be dirty now
    @(posedge CLK);

    dcif.dmemWEN = 1'b0;
    dcif.dmemaddr = '0;
    dcif.dmemstore = '0;
    @(posedge CLK);

    //verify write by reading back
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = B;
    #1;
    $display("11 %0t", $time);
    checkCorrect(11, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/32'h87654321, /*daddr*/32'h0, /*dstore*/32'h0);
    expected_hits++;
    @(posedge CLK);

    dcif.dmemREN = 1'b0;
    dcif.dmemaddr = '0;
    @(posedge CLK);

    //TEST 5: LRU replacement
    $display("TEST 5: LRU replacement");
    testnum = 5;

    //fill both ways in set 0
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = LRU_A;  //way 0
    @(posedge CLK);
    #1;
    $display("12 %0t", $time);
    checkCorrect(12, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(LRU_A & 32'hFFFF_FFF8), /*dstore*/32'h0);

    miss_refill(LRU_A);
    #1;
    $display("13 %0t", $time);
    checkCorrect(13, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(LRU_A), /*daddr*/32'h0, /*dstore*/32'h0);
    @(posedge CLK);

    dcif.dmemREN = 1'b0;
    dcif.dmemaddr = '0;
    @(posedge CLK);

    //fill other way
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = LRU_B;  //way 1
    @(posedge CLK);
    #1;
    $display("14 %0t", $time);
    checkCorrect(14, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(LRU_B & 32'hFFFF_FFF8), /*dstore*/32'h0);

    miss_refill(LRU_B);
    #1;
    $display("15 %0t", $time);
    checkCorrect(15, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(LRU_B), /*daddr*/32'h0, /*dstore*/32'h0);
    @(posedge CLK);

    dcif.dmemREN = 1'b0;
    dcif.dmemaddr = '0;
    @(posedge CLK);

    //access A way 0 again to make it MRU
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = LRU_A;
    #1;
    $display("16 %0t", $time);
    checkCorrect(16, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(LRU_A), /*daddr*/32'h0, /*dstore*/32'h0);
    expected_hits++;
    @(posedge CLK);

    dcif.dmemREN = 1'b0;
    dcif.dmemaddr = '0;
    @(posedge CLK);

    //access LRU C now, should kick out B (LRU)
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = LRU_C;
    @(posedge CLK);
    #1;
    $display("17 %0t", $time);
    checkCorrect(17, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(LRU_C & 32'hFFFF_FFF8), /*dstore*/32'h0);
    
    //lru b should be clean->evicted, then LRU_refilled
    miss_refill(LRU_C);
    #1;
    $display("18 %0t", $time);
    checkCorrect(18, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(LRU_C), /*daddr*/32'h0, /*dstore*/32'h0);
    @(posedge CLK);

    dcif.dmemREN = 1'b0;
    dcif.dmemaddr = '0;
    @(posedge CLK);

    //verify LRU B was the victim
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = LRU_B;  //way 1
    @(posedge CLK);
    #1;
    $display("19 %0t", $time);
    checkCorrect(19, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(LRU_B & 32'hFFFF_FFF8), /*dstore*/32'h0);

    miss_refill(LRU_B); //refill it again, LRU_A should be evicted
    #1;
    $display("20 %0t", $time);
    checkCorrect(20, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(LRU_B), /*daddr*/32'h0, /*dstore*/32'h0);
    @(posedge CLK);

    dcif.dmemREN = 1'b0;
    dcif.dmemaddr = '0;
    @(posedge CLK);

    //TEST 6: Dirty writeback on replacement
    $display("TEST 6: Dirty writeback");
    testnum = 6;

    //make dirty_A dirty
    dcif.dmemWEN = 1'b1;
    dcif.dmemaddr = DIRTY_A;
    dcif.dmemstore = 32'hDEADDEAD;
    @(posedge CLK)
    #1;
    $display("21 %0t", $time);
    checkCorrect(21, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(DIRTY_A & 32'hFFFF_FFF8), /*dstore*/32'h0);

    miss_refill(DIRTY_A);
    #1;
    $display("22 %0t", $time);
    checkCorrect(22, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/32'h0, /*dstore*/32'h0);
    @(posedge CLK);

    dcif.dmemWEN = 1'b0;
    dcif.dmemaddr = '0;
    dcif.dmemstore = '0;
    @(posedge CLK);

    //make dirty b dirty
    dcif.dmemWEN = 1'b1;
    dcif.dmemaddr = DIRTY_B;
    dcif.dmemstore = 32'hDEADDEAD;
    @(posedge CLK)
    #1;
    $display("23 %0t", $time);
    checkCorrect(23, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(DIRTY_B & 32'hFFFF_FFF8), /*dstore*/32'h0);

    miss_refill(DIRTY_B);
    #1;
    $display("24 %0t", $time);
    checkCorrect(24, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/32'h0, /*dstore*/32'h0);
    @(posedge CLK);

    dcif.dmemWEN = 1'b0;
    dcif.dmemaddr = '0;
    dcif.dmemstore = '0;
    @(posedge CLK);

    //access a to make mru
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = DIRTY_A;
    #1;
    $display("25 %0t", $time);
    checkCorrect(25, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/32'hDEADDEAD, /*daddr*/32'h0, /*dstore*/32'h0);
    expected_hits++;
    @(posedge CLK);

    dcif.dmemREN = 1'b0;
    dcif.dmemaddr = '0;
    @(posedge CLK);

    //access dirty_c, writeback dirty B
    dcif.dmemREN = 1'b1;
    dcif.dmemaddr = DIRTY_C;
    @(posedge CLK);
    #1;
    $display("26 %0t", $time);
    checkCorrect(26, /*dhit*/0, /*dREN*/0, /*dWEN*/1, /*dmemload*/32'h0, /*daddr*/(DIRTY_B & 32'hFFFF_FFF8), /*dstore*/32'hDEADDEAD);
    dirty_writeback(DIRTY_B);

    @(posedge CLK);
    #1;
    $display("27 %0t", $time);
    checkCorrect(27, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(DIRTY_C & 32'hFFFF_FFF8), /*dstore*/32'h0);
    miss_refill(DIRTY_C);
    #1;
    $display("28 %0t", $time);
    checkCorrect(28, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(DIRTY_C), /*daddr*/32'h0, /*dstore*/32'h0);
    @(posedge CLK);

    dcif.dmemREN = 1'b0;
    dcif.dmemaddr = '0;
    @(posedge CLK);


    //TEST 7: Halt and flush
    $display("TEST 7: Halt and flush");
    testnum = 7;

    //make bb_a dirty
    dcif.dmemWEN = 1'b1;
    dcif.dmemaddr = BB_A;
    dcif.dmemstore = 32'h11111111;
    @(posedge CLK)
    #1;
    $display("29 %0t", $time);
    checkCorrect(29, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(BB_A & 32'hFFFF_FFF8), /*dstore*/32'h0);

    miss_refill(BB_A);
    #1;
    $display("30 %0t", $time);
    checkCorrect(30, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/32'h0, /*dstore*/32'h0);
    @(posedge CLK);

    dcif.dmemWEN = 1'b0;
    dcif.dmemaddr = '0;
    dcif.dmemstore = '0;
    @(posedge CLK);

    //make bb b dirty
    dcif.dmemWEN = 1'b1;
    dcif.dmemaddr = BB_B;
    dcif.dmemstore = 32'h22222222;
    @(posedge CLK)
    #1;
    $display("31 %0t", $time);
    checkCorrect(31, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(BB_B & 32'hFFFF_FFF8), /*dstore*/32'h0);

    miss_refill(BB_B);
    #1;
    $display("32 %0t", $time);
    checkCorrect(32, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/32'h0, /*dstore*/32'h0);
    @(posedge CLK);

    dcif.dmemWEN = 1'b0;
    dcif.dmemaddr = '0;
    dcif.dmemstore = '0;
    @(posedge CLK);


    //trigger halt
    dcif.halt = 1'b1;
    @(posedge CLK);

    //wait for flush/invalidation
    while(!dcif.flushed)
    begin
      if(cif.dWEN)
      begin
        $display("Handling writeback for address %h", cif.daddr);
        handle_write(cif.daddr);
      end
      @(posedge CLK);
    end


    $display("33 %0t", $time);
    checkCorrect(33, /*dhit*/0, /*dREN*/0, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/32'h0, /*dstore*/32'h0);
    dcif.halt = 1'b0;

    @(posedge CLK);

    $display("Expected hits so far: %0d", expected_hits);

    //verify mem contents
    if (memory[BB_A[31:2]] == 32'h11111111) begin
      $display("PASS: BB_A correctly written back to memory");
    end 
    else 
    begin
        $display("FAIL: BB_A not written back. Expected %h, got %h", 32'h11111111, memory[BB_A[31:2]]);
    end

    if (memory[BB_B[31:2]] == 32'h22222222) 
    begin
        $display("PASS: BB_B correctly written back to memory");
    end 
    else 
    begin
        $display("FAIL: BB_B not written back. Expected %h, got %h", 32'h22222222, memory[BB_B[31:2]]);
    end



  //TEST 8: Hit counter verification
  $display("TEST 8: Hit counter verif");
  testnum = 8;

  if (memory[32'h3100 >> 2] == expected_hits) 
  begin
      $display("PASS: Hit counter correctly written to 0x3100: %0d", expected_hits);
  end 
  else 
  begin
      $display("FAIL: Hit counter mismatch. Expected %0d, got %0d", 
              expected_hits, memory[32'h3100 >> 2]);
  end

  //reset:
   nRST = 1'b0;
    @(posedge CLK);
    nRST = 1'b1;
    @(posedge CLK);
  expected_hits = 0;

  //TEST 9: back to back ops
  $display("TEST 9: Back-to-back operations");
  testnum = 9;

  //read c
  dcif.dmemREN = 1'b1;
  dcif.dmemaddr = C;
  @(posedge CLK);
  $display("34 %0t", $time);
  checkCorrect(34, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(C & 32'hFFFF_FFF8), /*dstore*/32'h0);

  //get C from mem, ret to IDLE
  miss_refill(C);
  #1;
  $display("35 %0t", $time);
  checkCorrect(35, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(C), /*daddr*/32'h0, /*dstore*/32'h0);
  @(posedge CLK);

  //deassert
  dcif.dmemREN = 1'b0;
  dcif.dmemaddr = '0;
  @(posedge CLK);

  //write to new addr D (should miss)
  dcif.dmemWEN = 1'b1;
  dcif.dmemaddr = D;
  dcif.dmemstore = 32'h33333333;
  @(posedge CLK);
  #1;
  $display("36 %0t", $time);
  checkCorrect(36, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(D & 32'hFFFF_FFF8), /*dstore*/32'h0);

  miss_refill(D);
  #1;
  $display("37 %0t", $time);
  checkCorrect(37, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/32'h0, /*dstore*/32'h0);
  //D should be dirty now
  @(posedge CLK);

  dcif.dmemWEN = 1'b0;
  dcif.dmemaddr = '0;
  dcif.dmemstore = '0;
  @(posedge CLK);

  //read E
  dcif.dmemREN = 1'b1;
  dcif.dmemaddr = E;
  @(posedge CLK);
  $display("38 %0t", $time);
  checkCorrect(38, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(E & 32'hFFFF_FFF8), /*dstore*/32'h0);

  //get E from mem, ret to IDLE
  miss_refill(E);
  #1;
  $display("39 %0t", $time);
  checkCorrect(39, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(E), /*daddr*/32'h0, /*dstore*/32'h0);
  @(posedge CLK);

  //deassert
  dcif.dmemREN = 1'b0;
  dcif.dmemaddr = '0;
  @(posedge CLK);

  $display("Expected hits so far: %0d", expected_hits);


  //TEST 10: Byte offset insensitivity
  $display("TEST 10: Byte offset insensitive");
  testnum = 10;

  //load in BASE
  dcif.dmemREN = 1'b1;
  dcif.dmemaddr = BASE;
  @(posedge CLK);
  $display("40 %0t", $time);
  checkCorrect(40, /*dhit*/0, /*dREN*/1, /*dWEN*/0, /*dmemload*/32'h0, /*daddr*/(BASE & 32'hFFFF_FFF8), /*dstore*/32'h0);

  miss_refill(BASE);
  #1;
  $display("41 %0t", $time);
  checkCorrect(41, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(BASE), /*daddr*/32'h0, /*dstore*/32'h0);
  @(posedge CLK);

  //deassert
  dcif.dmemREN = 1'b0;
  dcif.dmemaddr = '0;
  @(posedge CLK);

  //test diff offset
  dcif.dmemREN = 1'b1;
  dcif.dmemaddr = BASE1;
  @(posedge CLK);
  #1;
  $display("42 %0t", $time);
  checkCorrect(42, /*dhit*/1, /*dREN*/0, /*dWEN*/0, /*dmemload*/mem_data(BASE), /*daddr*/32'h0, /*dstore*/32'h0);
  @(posedge CLK);

  //deassert
  dcif.dmemREN = 1'b0;
  dcif.dmemaddr = '0;
  @(posedge CLK);


  $finish;
end
endprogram
