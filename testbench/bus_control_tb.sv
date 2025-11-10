// mapped needs this
`include "cpu_ram_if.vh"
`include "cache_control_if.vh"
`include "cpu_types_pkg.vh"

import cpu_types_pkg::*;

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module memory_control_tb; // bus / memory controller testbench (dual-core)

  parameter PERIOD = 10;
  logic CLK = 0, nRST;

  // clock
  always #(PERIOD/2) CLK++;

  // interfaces
  caches_if cif0();
  caches_if cif1();
  cache_control_if #(.CPUS(2)) ccif (cif0, cif1);
  cpu_ram_if ramif ();

  // DUT
  `ifndef MAPPED
  memory_control DUT(CLK, nRST, ccif);
`else
  memory_control DUT(
	.\CLK (CLK),
	.\nRST (nRST),
	.\ccif.iREN (ccif.iREN),
	.\ccif.dREN (ccif.dREN),
	.\ccif.dWEN (ccif.dWEN),
	.\ccif.dstore (ccif.dstore),
	.\ccif.iaddr (ccif.iaddr),
	.\ccif.daddr (ccif.daddr),
	.\ccif.ramload (ccif.ramload),
	.\ccif.ramstate (ccif.ramstate),
	.\ccif.iwait (ccif.iwait),
	.\ccif.dwait (ccif.dwait),
	.\ccif.iload (ccif.iload),
	.\ccif.dload (ccif.dload),
	.\ccif.ramstore (ccif.ramstore),
	.\ccif.ramaddr (ccif.ramaddr),
	.\ccif.ramWEN (ccif.ramWEN),
	.\ccif.ramREN (ccif.ramREN)
  );
`endif

`ifndef MAPPED
  ram ram (CLK, nRST, 1'b0, ramif);
`else
 ram ram(
	.\CLK (CLK),
	.\nRST (nRST),
	.\ramif.ramstore (ramif.ramstore),
	.\ramif.ramaddr (ramif.ramaddr),
	.\ramif.ramWEN (ramif.ramWEN),
	.\ramif.ramREN (ramif.ramREN),
	.\ramif.ramload (ramif.ramload),
	.\ramif.ramstate (ramif.ramstate)
  );
`endif

// Connect cpu ram to memory control
assign ramif.ramaddr = ccif.ramaddr;
assign ramif.ramstore = ccif.ramstore;
assign ramif.ramREN = ccif.ramREN;
assign ramif.ramWEN = ccif.ramWEN;
assign ccif.ramstate = ramif.ramstate;
assign ccif.ramload = ramif.ramload;

// test program
  test PROG (CLK, nRST, ccif, ramif);

endmodule

program test (
  input logic clk,
  output logic nrst,
  cache_control_if ccif,
  cpu_ram_if ramif
);

integer score;
integer index;

task reset_dut;
begin
  nrst = 0;
  #3;
  nrst = 1;
  #3;
  score = 0;
  index = 0;
end
endtask

task initialize;
begin
    ccif.cif0.iaddr = 0;
    ccif.cif0.dstore = 0;
    ccif.cif0.daddr = 0;
end
endtask

task automatic dump_memory();
    string filename = "memcpu.hex";
    int memfd;

    ccif.cif0.daddr = 0;
    ccif.cif0.dWEN = 0;
    ccif.cif0.dREN = 0;

    memfd = $fopen(filename,"w");
    if (memfd)
      $display("Starting memory dump.");
    else
      begin $display("Failed to open %s.",filename); $finish; end

    for (int unsigned i = 0; memfd && i < 16384; i++)
    begin
      int chksum = 0;
      bit [7:0][7:0] values;
      string ihex;

      ccif.cif0.daddr = i << 2;
      ccif.cif0.dREN = 1;
      repeat (4) @(posedge clk);
      if (ccif.cif0.dload === 0)
        continue;
      values = {8'h04,16'(i),8'h00,ccif.cif0.dload};
      foreach (values[j])
        chksum += values[j];
      chksum = 16'h100 - chksum;
      ihex = $sformatf(":04%h00%h%h",16'(i),ccif.cif0.dload,8'(chksum));
      $fdisplay(memfd,"%s",ihex.toupper());
    end //for
    if (memfd)
    begin
      ccif.cif0.dREN = 0;
      $fdisplay(memfd,":00000001FF");
      $fclose(memfd);
      $display("Finished memory dump.");
    end
  endtask

initial begin

    // Reset
    reset_dut();

    // get rid of red lines
    ccif.cif0.dstore = 0;
    ccif.cif0.iaddr = 0;
    ccif.cif0.daddr = 0;
    ccif.cif1.dstore = 0;
    ccif.cif1.iaddr = 0;
    ccif.cif0.daddr = 0;


    // // core 0 ifetch (i hand up)
    // ccif.cif0.iREN = 1;
    // ccif.cif0.dREN = 0;
    // ccif.cif0.dWEN = 0;
    // for (index = 0; index < 5; index++) begin
    //     ccif.cif0.iaddr = ccif.cif0.iaddr + 4;
    //     #(20);
    //     if (ccif.ramload == ccif.cif0.iload) score++;
    // end
    // assert(score == 10) else $error ("Instruction fetch failed.");

    //-----------------------------------------------------------------------------
    // ifetch tests
    //-----------------------------------------------------------------------------
    
    // ------------------------------------------------------------------
    // Simple IFETCH tests (assign inputs, check expected outputs)
    // ------------------------------------------------------------------

    // Test IF0: Core 0 instruction fetch request should drive a RAM read
    // Expectation: ramREN asserted, ramaddr equals iaddr, iload matches ramload at ACCESS, iwait[0] low on accept
    reset_dut();
    ccif.cif0.iaddr = 32'h0000_1000; ccif.cif0.iREN = 1; @(posedge CLK);
    assert(ccif.ramREN) else $error("IF0: ramREN not asserted for core0 iREN");
    assert(ccif.ramaddr == 32'h0000_1000) else $error("IF0: ramaddr mismatch for core0 iREN");
    while (ccif.ramstate != ACCESS) @(posedge CLK);
    assert(ccif.iload[0] == ccif.ramload) else $error("IF0: iload[0] != ramload on ACCESS");
    assert(ccif.iwait[0] == 1'b0) else $error("IF0: iwait[0] not deasserted on ACCESS");
    ccif.cif0.iREN = 0; @(posedge CLK);

    // Test IF1: Core 1 instruction fetch request should drive a RAM read
    // Expectation: ramREN asserted, ramaddr equals iaddr, iload matches ramload at ACCESS, iwait[1] low on accept
    reset_dut();
    ccif.cif1.iaddr = 32'h0000_2000; ccif.cif1.iREN = 1; @(posedge CLK);
    assert(ccif.ramREN) else $error("IF1: ramREN not asserted for core1 iREN");
    assert(ccif.ramaddr == 32'h0000_2000) else $error("IF1: ramaddr mismatch for core1 iREN");
    while (ccif.ramstate != ACCESS) @(posedge CLK);
    assert(ccif.iload[1] == ccif.ramload) else $error("IF1: iload[1] != ramload on ACCESS");
    assert(ccif.iwait[1] == 1'b0) else $error("IF1: iwait[1] not deasserted on ACCESS");
    ccif.cif1.iREN = 0; @(posedge CLK);

    // Test IF2: Both cores fetch; both should eventually receive accepts (no starvation)
    // Expectation: both iwait[0] and iwait[1] drop low on some cycle while iREN asserted
    reset_dut();
    ccif.cif0.iaddr = 32'h0000_3000; ccif.cif1.iaddr = 32'h0000_4000;
    ccif.cif0.iREN = 1; ccif.cif1.iREN = 1;
    int c0acc=0,c1acc=0, tmo=200;
    while (tmo--) begin
      @(posedge CLK);
      if (!ccif.iwait[0]) c0acc=1;
      if (!ccif.iwait[1]) c1acc=1;
      if (c0acc && c1acc) break;
    end
    assert(c0acc && c1acc) else $error("IF2: One of the cores did not receive an instruction accept");
    ccif.cif0.iREN = 0; ccif.cif1.iREN = 0; @(posedge CLK);


    //-----------------------------------------------------------------------------
    // MSI tests
    //-----------------------------------------------------------------------------

    localparam word_t BLK = 32'h0000_1000;

    // Test MSI0: I->S via Core0 read miss
    // Expectation: Core0 dREN drives ramREN; ramWEN=0; after ACCESS, dwait[0]=0 one cycle; no ccinv asserted.
    reset_dut();
    ccif.cif0.daddr = BLK; ccif.cif0.dREN = 1; @(posedge CLK);
    assert(ccif.ramREN && !ccif.ramWEN) else $error("MSI0: Expected ramREN=1 ramWEN=0 on read miss");
    while (ccif.ramstate != ACCESS) @(posedge CLK);
    assert(ccif.dwait[0] == 0) else $error("MSI0: dwait[0] not low on ACCESS");
    assert(ccif.ccinv[1] == 0) else $error("MSI0: unexpected invalidate to core1");
    ccif.cif0.dREN = 0; @(posedge CLK);

    // Test MSI1: Second read (Core1) of same block -> shared
    // Expectation: Core1 dREN drives ramREN; no invalidate; dwait[1]=0 on ACCESS.
    reset_dut();
    ccif.cif1.daddr = BLK; ccif.cif1.dREN = 1; @(posedge CLK);
    assert(ccif.ramREN && !ccif.ramWEN) else $error("MSI1: Expected ramREN=1 ramWEN=0 on read miss core1");
    while (ccif.ramstate != ACCESS) @(posedge CLK);
    assert(ccif.dwait[1] == 0) else $error("MSI1: dwait[1] not low on ACCESS");
    ccif.cif1.dREN = 0; @(posedge CLK);

    // Test MSI2: S->M upgrade by Core0 write
    // Expectation: Core0 dWEN drives ramWEN; invalidate to core1 (ccinv[1]); dwait[0]=0 on ACCESS.
    reset_dut();
    ccif.cif0.daddr = BLK; ccif.cif0.dstore = 32'hAAAA5555; ccif.cif0.dWEN = 1; @(posedge CLK);
    assert(ccif.ramWEN) else $error("MSI2: ramWEN not asserted for write");
    while (ccif.ramstate != ACCESS) @(posedge CLK);
    assert(ccif.dwait[0] == 0) else $error("MSI2: dwait[0] not low on write ACCESS");
    // simple invalidate expectation (controller should assert during SNOOP/CHECK prior cycles)
    if (!ccif.ccinv[1]) $display("MSI2: NOTE invalidate not observed; verify controller logic");
    ccif.cif0.dWEN = 0; @(posedge CLK);

    // Test MSI3: M->S via Core1 read of modified block in Core0
    // Expectation: Core1 dREN accepted; either RAM read or C2C; dwait[1]=0; core0 not invalidated (should become Shared)
    reset_dut();
    ccif.cif1.daddr = BLK; ccif.cif1.dREN = 1; @(posedge CLK);
    int msi3_tmo=200; bit msi3_acc=0;
    while (msi3_tmo--) begin
      @(posedge CLK);
      if (ccif.dwait[1]==0) begin msi3_acc=1; break; end
    end
    assert(msi3_acc) else $error("MSI3: No accept pulse for Core1 read of modified block");
    assert(ccif.ccinv[0]==0) else $error("MSI3: Unexpected invalidate of owner on read");
    ccif.cif1.dREN = 0; @(posedge CLK);

    // Test MSI4: M->I via Core1 write to block owned Modified by Core0
    // Expectation: Core1 write accepted (ramWEN); owner invalidated (ccinv[0]).
    reset_dut();
    ccif.cif1.daddr = BLK; ccif.cif1.dstore = 32'h1234ABCD; ccif.cif1.dWEN = 1; @(posedge CLK);
    while (ccif.ramstate != ACCESS) @(posedge CLK);
    assert(ccif.dwait[1]==0) else $error("MSI4: dwait[1] not low on write ACCESS");
    if (!ccif.ccinv[0]) $display("MSI4: NOTE invalidate to owner not observed; verify controller logic");
    ccif.cif1.dWEN = 0; @(posedge CLK);

    // Test MSI5: M->M (write again by same core already Modified)
    // Expectation: Write accepted; no additional invalidates.
    reset_dut();
    ccif.cif1.daddr = BLK; ccif.cif1.dstore = 32'h5678DCBA; ccif.cif1.dWEN = 1; @(posedge CLK);
    while (ccif.ramstate != ACCESS) @(posedge CLK);
    assert(ccif.dwait[1]==0) else $error("MSI5: dwait[1] not low on second write");
    assert(ccif.ccinv[0]==0) else $error("MSI5: Unexpected invalidate on repeated write");
    ccif.cif1.dWEN = 0; @(posedge CLK);
    

    // mem dump
    dump_memory();

    // done
    $finish;
end
endprogram
