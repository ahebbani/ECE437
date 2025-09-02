/*
  Eric Villasenor
  evillase@gmail.com

  register file test bench
*/

// mapped needs this
`include "register_file_if.vh"
`include "cpu_types_pkg.vh"

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module register_file_tb;

  parameter PERIOD = 10;

  logic CLK = 0, nRST;

  // test vars
  int v1 = 1;
  int v2 = 4721;
  int v3 = 25119;

  // clock
  always #(PERIOD/2) CLK++;

  // interface
  register_file_if rfif ();
  // test program
  test PROG (CLK, nRST, rfif);
  // DUT
`ifndef MAPPED
  register_file DUT(CLK, nRST, rfif);
`else
  register_file DUT(
    .\rfif.rdat2 (rfif.rdat2),
    .\rfif.rdat1 (rfif.rdat1),
    .\rfif.wdat (rfif.wdat),
    .\rfif.rsel2 (rfif.rsel2),O o
    .\rfif.rsel1 (rfif.rsel1),
    .\rfif.wsel (rfif.wsel),
    .\rfif.WEN (rfif.WEN),
    .\nRST (nRST),
    .\CLK (CLK)
  );
`endif

endmodule


program test (
  input logic clk,
  output logic nrst,
  register_file_if.tb tbif
);

task reset_dut;
begin
  nrst = 0;
   @(posedge clk);
  nrst = 1;
  @(posedge clk);
end
endtask

initial begin
  // test 1
  nrst = 0;
  @(posedge clk*3);

  // test 2
  reset_dut;
  tbif.WEN = 1;
  @(posedge clk*3);
  tbif.wdat = 32'd1;
  tbif.wsel = 5'd0;
  @(posedge clk*3);

  // test 3 : writes
  reset_dut;
  tbif.wdat = 32'd1;
  tbif.wsel = 5'd1;
  @(posedge clk*3);
  tbif.wdat = 32'd2;
  tbif.wsel = 5'd2;
  @(posedge clk*3);
  tbif.wdat = 32'd3;
  tbif.wsel = 5'd3;
  @(posedge clk*3);

  // test 3: reads
  tbif.rsel1 = 5'd1;
  @(posedge clk*3);
  // $display ();
  tbif.rsel2 = 5'd2;
  @(posedge clk*3);
  // $display ();

  $finish;
end

endprogram
