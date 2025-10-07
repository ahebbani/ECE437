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
  logic flush, stall, ihit, dhit, ALUSrc1_out, ALUSrc1_in, ALUSrc2_out, ALUSrc2_in, dREN_out, dREN_in, dWEN_out, dWEN_in,RegWEN_in, RegWEN_out;
  logic [1:0] branchPCSrc_out, branchPCSrc_in, jumpPCsrc_out, jumpPCsrc_in, MemtoReg_out, MemtoReg_in;
  logic [4:0] rd_out, rd_in, rs1_in, rs1_out, rs2_in, rs2_out;
  logic halt_in, halt_out;
  logic [31:0] inst_in, inst_out;

  // control_unit ports
  modport idex (
	input rs1_in, rs2_in, stall, flush, ihit, dhit, pc_in, rdat1_in, rdat2_in, imm_in, aluop_in, ALUSrc1_in, ALUSrc2_in, dREN_in, dWEN_in, branchPCSrc_in, jumpPCsrc_in, MemtoReg_in, rd_in,RegWEN_in, halt_in, inst_in,
	output rs1_out, rs2_out, pc_out, rdat1_out, rdat2_out, imm_out, aluop_out, ALUSrc1_out, ALUSrc2_out, dREN_out, dWEN_out, branchPCSrc_out, jumpPCsrc_out, MemtoReg_out, rd_out,RegWEN_out, halt_out, inst_out
  );
  // control_unit tb
  modport tb (
	input rs1_out, rs2_out, pc_out, rdat1_out, rdat2_out, imm_out, aluop_out, ALUSrc1_out, ALUSrc2_out, dREN_out, dWEN_out, branchPCSrc_out, jumpPCsrc_out, MemtoReg_out, rd_out,RegWEN_out, halt_out, inst_out,
	output rs1_in, rs2_in, stall, flush, ihit, dhit, pc_in, rdat1_in, rdat2_in, imm_in, aluop_in, ALUSrc1_in, ALUSrc2_in, dREN_in, dWEN_in, branchPCSrc_in, jumpPCsrc_in, MemtoReg_in, rd_in,RegWEN_in, inst_in
  );
endinterface

`endif