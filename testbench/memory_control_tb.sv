// mapped needs this
`include "cpu_ram_if.vh"
`include "cache_control_if.vh"
`include "cpu_types_pkg.vh"

import cpu_types_pkg::*;

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module memory_control_tb;

  parameter PERIOD = 10;
  logic CLK = 0, nRST;

  // clock
  always #(PERIOD/2) CLK++;

  // interfaces
  caches_if cif0();
  caches_if cif1();
  cache_control_if ccif (cif0, cif1);
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


    // instruction fetch test (i hand up)
    ccif.cif0.iREN = 1;
    ccif.cif0.dREN = 0;
    ccif.cif0.dWEN = 0;
    for (index = 0; index < 5; index++) begin
        ccif.cif0.iaddr = ccif.cif0.iaddr + 4;
        #(20);
        if (ccif.ramload == ccif.cif0.iload) score++;
    end
    assert(score == 10) else $error ("Instruction fetch failed.");

    // data write test
    reset_dut();
    ccif.cif0.iREN = 1;
    ccif.cif0.dREN = 0;
    ccif.cif0.dWEN = 1;
    ccif.cif0.iaddr = '0;
    ccif.cif0.dstore = 32'hABCDEF00;
    ccif.cif0.daddr = 32'hABCABC00;
    score = 0;

    for (index = 1; index <= 5; index++) begin
      #(40);
      if (ccif.ramstore == ccif.cif0.dstore) score++;
      ccif.cif0.daddr = ccif.cif0.daddr + 4;
      ccif.cif0.dstore++;
    end

    

    // data and instruction load (both hands up)
    reset_dut();
    ccif.cif0.daddr = 32'hABCABC00;
    ccif.cif0.iREN = 1;
    ccif.cif0.dREN = 1;
    ccif.cif0.dWEN = 0;
    for (index = 0; index < 5; index++) begin
        if (ccif.cif0.dload == ccif.ramload) score ++;
        #(20)
        ccif.cif0.daddr = ccif.cif0.daddr + 4;
    end
    assert(score == 10) else $error ("Data load fetch failed.");

    // data load test (only d hand up ?? not sure when iREN will be low)
    reset_dut();
    ccif.cif0.daddr = 32'hABCABC00;
    ccif.cif0.iREN = 1;
    ccif.cif0.dREN = 1;
    ccif.cif0.dWEN = 0;
    for (index = 0; index < 5; index++) begin
        if (ccif.cif0.dload == ccif.ramload) score ++;
        #(20)
        ccif.cif0.daddr = ccif.cif0.daddr + 4;
    end
    assert(score == 10) else $error ("Data load fetch failed.");


    

    // mem dump
    dump_memory();

    // done
    $finish;
end
endprogram
