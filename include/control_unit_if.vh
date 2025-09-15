`ifndef CONTROL_UNIT_IF_VH
`define CONTROL_UNIT_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface control_unit_if;
  // import types
  import cpu_types_pkg::*;

  word_t inst, imm;
  opcode_t opcode;
  regbits_t rs1, rs2, rd;
  logic branchPCSrc, jumpPCsrc, MemtoReg, RegWEN, dWEN, dREN, iREN, ALUSrc, halt;
  aluop_t aluop;

  // control_unit ports
  modport cu (
    input   inst,
    output  branchPCSrc, jumpPCsrc, MemtoReg, RegWEN, dWEN, dREN, iREN, ALUSrc, aluop, rs1, rs2, rd, imm, halt
  );

  // control_unit tb
  modport tb (
    input  branchPCSrc, jumpPCsrc, MemtoReg, RegWEN, dWEN, dREN, iREN, ALUSrc, aluop, rs1, rs2, rd, imm, halt,
    output  inst
  );
endinterface

`endif