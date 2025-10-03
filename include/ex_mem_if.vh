`ifndef EX_MEM_IF_VH
`define EX_MEM_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface ex_mem_if;
  // import types
  import cpu_types_pkg::*;

  word_t pc_out, pc_in;
  word_t imm_out, imm_in, rdat2_out, rdat2_in, alu_out_out, alu_out_in;
  logic stall, dhit, dmemREN, dmemWEN, ihit, branchPCand_out, branchPCand_in, branchPCadder_out, branchPCadder_in, jumpPCsrc_out, jumpPCsrc_in, jumpPCadder_out, jumpPCadder_in, dREN_out, dREN_in, dWEN_out, dWEN_in, RegWEN_out, RegWEN_in;
  logic [1:0] MemtoReg_out, MemtoReg_in;
  logic [4:0] rd_out, rd_in;
  logic halt_in, halt_out;
  logic [31:0] inst_in, inst_out;

  // control_unit ports
  modport exmem (
	input inst_in, stall, dhit, ihit, alu_out_in, pc_in, rdat2_in, imm_in, dREN_in, dWEN_in, branchPCand_in, branchPCadder_in, jumpPCsrc_in, jumpPCadder_in, MemtoReg_in, rd_in,RegWEN_in, halt_in,
	output inst_out, dmemREN, dmemWEN, pc_out, alu_out_out, rdat2_out, imm_out, dREN_out, dWEN_out, branchPCand_out, branchPCadder_out, jumpPCsrc_out, jumpPCadder_out, MemtoReg_out, rd_out,RegWEN_out, halt_out
  );
  // control_unit tb
  modport tb (
	input inst_out, dmemREN, dmemWEN, pc_out, alu_out_out, rdat2_out, imm_out, dREN_out, dWEN_out, branchPCand_out, branchPCadder_out, jumpPCsrc_out, jumpPCadder_out, MemtoReg_out, rd_out,RegWEN_out,
	output inst_in, stall, dhit, ihit, alu_out_in, pc_in, rdat2_in, imm_in, dREN_in, dWEN_in, branchPCand_in, branchPCadder_in, jumpPCsrc_in, jumpPCadder_in, MemtoReg_in, rd_in,RegWEN_in
  );
endinterface

`endif