`include "control_unit_if.vh"

`timescale 1 ns / 1 ns
import cpu_types_pkg::*;

module control_unit_tb;
  // interface
  control_unit_if cuif ();
  // test program
  test PROG ();
  // DUT
`ifndef MAPPED
  control_unit DUT(cuif);
`else
  control_unit DUT (
    .\cuif.inst(cuif.inst),
    .\cuif.branchPCSrc(cuif.branchPCSrc),
    .\cuif.jumpPCsrc(cuif.jumpPCsrc),
    .\cuif.MemtoReg(cuif.MemtoReg),
    .\cuif.RegWEN(cuif.RegWEN),
    .\cuif.dREN(cuif.dREN),
    .\cuif.dWEN(cuif.dWEN),
    .\cuif.iREN(cuif.iREN),
    .\cuif.ALUSrc(cuif.ALUSrc),
    .\cuif.halt(cuif.halt),
    .\cuif.aluop(cuif.aluop),
    .\cuif.rs1(cuif.rs1),
    .\cuif.rs2(cuif.rs2),
    .\cuif.rd(cuif.rd),
    .\cuif.imm(cuif.imm)
  );
`endif
endmodule

program test;

  initial begin
    // Test R-type instructions
    cuif.inst = 32'b0000000_00010_00001_000_00011_0110011; // ADD x3, x1, x2
    #10;
    cuif.inst = 32'b0100000_00010_00001_000_00011_0110011; // SUB x3, x1, x2
    #10;

    // Test I-type instructions
    cuif.inst = 32'b000000000101_00001_000_00011_0010011; // ADDI x3, x1, 5
    #10;
    cuif.inst = 32'b000000000101_00001_100_00011_0010011; // XORI x3, x1, 5
    #10;

    // Test S-type instructions
    cuif.inst = 32'b0000000_00011_00010_010_00001_0100011; // SW x3, 1(x2)
    #10;

    // Test B-type instructions
    cuif.inst = 32'b0000000_00010_00001_000_00010_1100011; // BEQ x1, x2, 2
    #10;

    // Test J-type instructions
    cuif.inst = 32'b00000000000000000001_00000_1101111; // JAL x1, 1
    #10;

    // Test U-type instructions
    cuif.inst = 32'b00000000000000000001_00000_0110111; // LUI x1, 1
    #10;

    // Test HALT instruction
    cuif.inst = 32'b00000000000000000000_00000_1111111; // HALT
    #10;

    $finish;
  end
endprogram