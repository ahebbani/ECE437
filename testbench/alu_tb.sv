// mapped needs this
`include "alu_if.vh"
`include "cpu_types_pkg.vh"

import cpu_types_pkg::*;

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module alu_tb;

  parameter PERIOD = 10;

  logic CLK = 0, nRST;

  // clock
  always #(PERIOD/2) CLK++;

  // interface
  alu_if aluif ();
  // test program
  test PROG (CLK, nRST, aluif);
  // DUT
`ifndef MAPPED
  alu DUT(aluif);
// `else
//   alu DUT(
//     .\aluif.rdat2 (rfif.rdat2),
//     .\aluif.rdat1 (rfif.rdat1),
//     .\aluif.wdat (rfif.wdat),
//     .\aluif.rsel2 (rfif.rsel2),O o
//     .\aluif.rsel1 (rfif.rsel1),
//     .\aluif.wsel (rfif.wsel),
//     .\aluif.WEN (rfif.WEN),
//     .\nRST (nRST),
//     .\CLK (CLK)
//   );
`endif

endmodule

program test (
  input logic clk,
  output logic nrst,
  alu_if.tb alu_if
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


    // Test ADD
    alu_if.a = 32'd1;
    alu_if.b = 32'd2;
    alu_if.opcode = ALU_ADD;
    @(posedge clk*3);
    $display ("Output: %h, Negative: %b, Overflow: %b", alu_if.out, alu_if.negative, alu_if.overflow);
    assert(alu_if.out == 32'd3) else $error ("ADD operation failed");

    // Test SUB
    alu_if.a = 32'd5;
    alu_if.b = 32'd3;
    alu_if.opcode = ALU_SUB;
    @(posedge clk*3);
    $display ("out: %h, Negative: %b, Overflow: %b", alu_if.out, alu_if.negative, alu_if.overflow);
    assert(alu_if.out == 32'd2) else $error ("SUB operation failed");

    // Test AND
    alu_if.a = 32'hF0F0F0F0;
    alu_if.b = 32'h0F0F0F0F;
    alu_if.opcode = ALU_AND;
    @(posedge clk*3);
    $display ("out: %h, Negative: %b, Overflow: %b", alu_if.out, alu_if.negative, alu_if.overflow);
    assert(alu_if.out == 32'h00000000) else $error ("AND operation failed");

    // Test OR
    alu_if.a = 32'hF0F0F0F0;
    alu_if.b = 32'h0F0F0F0F;
    alu_if.opcode = ALU_OR;
    @(posedge clk*3);
    $display ("out: %h, Negative: %b, Overflow: %b", alu_if.out, alu_if.negative, alu_if.overflow);
    assert(alu_if.out == 32'hFFFFFFFF) else $error ("OR operation failed");

    // Test XOR
    alu_if.a = 32'hF0F0F0F0;
    alu_if.b = 32'h0F0F0F0F;
    alu_if.opcode = ALU_XOR;
    @(posedge clk*3);
    $display ("out: %h, Negative: %b, Overflow: %b", alu_if.out, alu_if.negative, alu_if.overflow);
    assert(alu_if.out == 32'hFFFFFFFF) else $error ("XOR operation failed");

    // Test SLL (Shift Left Logical)
    alu_if.a = 32'h00000001;
    alu_if.b = 32'h00000004; // shift by 4
    alu_if.opcode = ALU_SLL;
    @(posedge clk*3);
    $display ("SLL: %h", alu_if.out);
    assert(alu_if.out == 32'h00000010) else $error("SLL operation failed");

    // Test SRL (Shift Right Logical)
    alu_if.a = 32'h00000010;
    alu_if.b = 32'h00000004; // shift by 4
    alu_if.opcode = ALU_SRL;
    @(posedge clk*3);
    $display ("SRL: %h", alu_if.out);
    assert(alu_if.out == 32'h00000001) else $error("SRL operation failed");

    // Test SRA (Shift Right Arithmetic)
    alu_if.a = 32'hF0000010; // negative value
    alu_if.b = 32'h00000004; // shift by 4
    alu_if.opcode = ALU_SRA;
    @(posedge clk*3);
    $display ("SRA: %h", alu_if.out);
    assert(alu_if.out == 32'hFF000001) else $error("SRA operation failed");

    // Test SLT (Set Less Than, signed)
    alu_if.a = 32'h00000001;
    alu_if.b = 32'h00000002;
    alu_if.opcode = ALU_SLT;
    @(posedge clk*3);
    $display ("SLT: %h", alu_if.out);
    assert(alu_if.out == 32'h00000001) else $error("SLT operation failed");

    alu_if.a = 32'h00000002;
    alu_if.b = 32'h00000001;
    alu_if.opcode = ALU_SLT;
    @(posedge clk*3);
    $display ("SLT: %h", alu_if.out);
    assert(alu_if.out == 32'h00000000) else $error("SLT operation failed");

    // Test SLTU (Set Less Than Unsigned)
    alu_if.a = 32'hFFFFFFFF;
    alu_if.b = 32'h00000001;
    alu_if.opcode = ALU_SLTU;
    @(posedge clk*3);
    $display ("SLTU: %h", alu_if.out);
    assert(alu_if.out == 32'h00000000) else $error("SLTU operation failed");

    alu_if.a = 32'h00000001;
    alu_if.b = 32'hFFFFFFFF;
    alu_if.opcode = ALU_SLTU;
    @(posedge clk*3);
    $display ("SLTU: %h", alu_if.out);
    assert(alu_if.out == 32'h00000001) else $error("SLTU operation failed");

    $finish;
end

endprogram
