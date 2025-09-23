`ifndef EX_MEM_IF_VH
`define EX_MEM_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface ex_mem_if;
  // import types
  import cpu_types_pkg::*;

  word_t pc_out, pc_in;
  word_t imm_out, imm_in, rdat2_out, rdat2_in, alu_out_out, alu_out_in;
  logic branchPCand_out, branchPCand_in, branchPCadder_out, branchPCadder_in, jumpPCsrc_out, jumpPCsrc_in, jumpPCadder_out, jumpPCadder_in, dREN_out, dREN_in, dWEN_out, dWEN_in;
  logic [1:0] MemtoReg_out, MemtoReg_in;

  // control_unit ports
  modport pc (
	input pc_in, rdat2_in, imm_in, alu_out_in, dREN_in, dWEN_in, branchPCand_in, branchPCadder_in, jumpPCsrc_in, jumpPCadder_in, MemtoReg_in,
	output pc_out, rdat1_out, rdat2_out, imm_out, aluop_out, ALUSrc1_out, ALUSrc2_out, dREN_out, dWEN_out, branchPCSrc_out, jumpPCsrc_out, MemtoReg_out
  );
  // control_unit tb
  modport tb (
	input pc_out, rdat1_out, rdat2_out, imm_out, aluop_out, ALUSrc1_out, ALUSrc2_out, dREN_out, dWEN_out, branchPCSrc_out, jumpPCsrc_out, MemtoReg_out,
	output pc_in, rdat1_in, rdat2_in, imm_in, aluop_in, ALUSrc1_in, ALUSrc2_in, dREN_in, dWEN_in, branchPCSrc_in, jumpPCsrc_in, MemtoReg_in
  );
endinterface

`endif