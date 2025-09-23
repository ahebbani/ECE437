`ifndef ID_EX_IF_VH
`define ID_EX_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface id_ex_if;
  // import types
  import cpu_types_pkg::*;

  word_t pc_out, pc_in;
  word_t rdat1_out, rdat1_in, rdat2_out, rdat2_in, imm_out, imm_in;
  aluop_t aluop_out, aluop_in;
  logic ALUSrc1_out, ALUSrc1_in, ALUSrc2_out, ALUSrc2_in, dREN_out, dREN_in, dWEN_out, dWEN_in;
  logic [1:0] branchPCSrc_out, branchPCSrc_in, jumpPCsrc_out, jumpPCsrc_in, MemtoReg_out, MemtoReg_in;
  logic [4:0] rd_out, rd_in;

  // control_unit ports
  modport pc (
	input pc_in, rdat1_in, rdat2_in, imm_in, aluop_in, ALUSrc1_in, ALUSrc2_in, dREN_in, dWEN_in, branchPCSrc_in, jumpPCsrc_in, MemtoReg_in, rd_in,
	output pc_out, rdat1_out, rdat2_out, imm_out, aluop_out, ALUSrc1_out, ALUSrc2_out, dREN_out, dWEN_out, branchPCSrc_out, jumpPCsrc_out, MemtoReg_out, rd_out
  );
  // control_unit tb
  modport tb (
	input pc_out, rdat1_out, rdat2_out, imm_out, aluop_out, ALUSrc1_out, ALUSrc2_out, dREN_out, dWEN_out, branchPCSrc_out, jumpPCsrc_out, MemtoReg_out, rd_out
	output pc_in, rdat1_in, rdat2_in, imm_in, aluop_in, ALUSrc1_in, ALUSrc2_in, dREN_in, dWEN_in, branchPCSrc_in, jumpPCsrc_in, MemtoReg_in, rd_in
  );
endinterface

`endif