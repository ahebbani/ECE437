`ifndef CONTROL_UNIT_IF_VH
`define CONTROL_UNIT_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface control_unit_if;
  // import types
  import cpu_types_pkg::*;

  word_t inst, imm;
  regbits_t rs1, rs2, rd;
  logic RegWEN, dWEN, dREN, iREN, halt, ALUSrc1, ALUSrc2, atomic;
  aluop_t aluop;
  logic [1:0] MemtoReg, branchPCSrc, jumpPCsrc;

  // control_unit ports
  modport cu (
    input   inst,
    output  branchPCSrc, jumpPCsrc, MemtoReg, RegWEN, dWEN, dREN, iREN, ALUSrc1, ALUSrc2, aluop, rs1, rs2, rd, imm, halt, atomic
  );

  // control_unit tb
  modport tb (
    input  branchPCSrc, jumpPCsrc, MemtoReg, RegWEN, dWEN, dREN, iREN, ALUSrc1, ALUSrc2, aluop, rs1, rs2, rd, imm, halt,
    output  inst
  );
endinterface

`endif