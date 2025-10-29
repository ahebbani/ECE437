`ifndef IF_ID_IF_VH
`define IF_ID_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface if_id_if;
  // import types
  import cpu_types_pkg::*;

  word_t pc_out, pc_in, inst_out, inst_in;
  logic pipe_ctrl, ihit, flush, stall;

  // control_unit ports
  modport ifid (
	input pipe_ctrl, stall, flush, ihit, pc_in, inst_in,
	output pc_out, inst_out
  );
  // control_unit tb
  modport tb (
	input  pc_out, inst_out,
	output pipe_ctrl, stall, flush, ihit, pc_in, inst_in
  );
endinterface

`endif