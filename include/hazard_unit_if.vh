`ifndef HAZARD_UNIT_IF_VH
`define HAZARD_UNIT_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface hazard_unit_if;
  // import types
  import cpu_types_pkg::*;

  logic stall, flush, zero;
  word_t inst_ex;
  logic [1:0] branchPCSrc_ex;
  logic [4:0] rs1_id, rs2_id, rd_ex;

  // control_unit ports
  modport hu (
	input branchtaken, inst_ex, rs1_id, rs2_id, rd_ex,
	output stall, flush
  );
  // control_unit tb
  modport tb (
	input branchtaken, inst_ex, rs1_id, rs2_id, rd_ex,
	output stall, flush
  );
endinterface

`endif