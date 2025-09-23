`ifndef MEM_WB_IF_VH
`define MEM_WB_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface mem_wb_if;
  // import types
  import cpu_types_pkg::*;

  word_t pc_out, pc_in;
  word_t imm_out, imm_in, alu_out_out, alu_out_in, dmemload_out, dmemload_in;
  logic [1:0] MemtoReg_out, MemtoReg_in;
  logic [4:0] rd_out, rd_in;

  // control_unit ports
  modport pc (
	input pc_in, imm_in, MemtoReg_in, dmemload_in, alu_out_in, rd_in,
	output pc_out, imm_out, MemtoReg_out, dmemload_out, alu_out_out, rd_out
  );
  // control_unit tb
  modport tb (
	input pc_out, imm_out, MemtoReg_out, dmemload_out, alu_out_out, rd_out,
	output pc_in, imm_in, MemtoReg_in, dmemload_in, alu_out_in, rd_in
  );
endinterface

`endif