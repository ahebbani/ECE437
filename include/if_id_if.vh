`ifndef IF_ID_IF_VH
`define IF_ID_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface if_id_if;
  // import types
  import cpu_types_pkg::*;

  word_t pc_out, pc_in, inst_out, inst_in;
  logic ihit, stall;

  // control_unit ports
  modport ifid (
	input stall, ihit, pc_in, inst_in,
	output pc_out, inst_out
  );
  // control_unit tb
  modport tb (
	input  pc_out, inst_out,
	output stall, ihit, pc_in, inst_in
  );
endinterface

`endif