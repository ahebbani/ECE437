`ifndef MEM_WB_IF_VH
`define MEM_WB_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface mem_wb_if;
  // import types
  import cpu_types_pkg::*;

  word_t pc_out, pc_in;
  word_t dhit, ihit, imm_out, imm_in, alu_out_out, alu_out_in, dmemload_out, dmemload_in;
  logic [1:0] MemtoReg_out, MemtoReg_in;
  logic [4:0] rd_out, rd_in;
  logic stall, pipe_ctrl, RegWEN_in, RegWEN_out, halt_out, halt_in;
  logic [31:0] inst_in, inst_out;

  // control_unit ports
  modport memwb (
	input stall, pipe_ctrl, inst_in, halt_in, dhit, ihit, pc_in, imm_in, MemtoReg_in, dmemload_in, alu_out_in, rd_in, RegWEN_in,
	output inst_out, halt_out, pc_out, imm_out, MemtoReg_out, dmemload_out, alu_out_out, rd_out,RegWEN_out
  );
  // control_unit tb
  modport tb (
	input inst_out, halt_out, pc_out, imm_out, MemtoReg_out, dmemload_out, alu_out_out, rd_out,RegWEN_out,
	output stall, pipe_ctrl, inst_in, halt_in, dhit, ihit, pc_in, imm_in, MemtoReg_in, dmemload_in, alu_out_in, rd_in, RegWEN_in
  );
endinterface

`endif