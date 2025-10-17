`ifndef IF_ID_IF_VH
`define IF_ID_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface if_id_if;
  // import types
  import cpu_types_pkg::*;

  word_t pc_out, pc_in, inst_out, inst_in;
  logic ihit, flush, stall;
  // Prediction bits pipelined IF->ID
  logic predict_taken_out, predict_taken_in;
  word_t predict_target_out, predict_target_in;

  // control_unit ports
  modport ifid (
	input stall, flush, ihit, pc_in, inst_in, predict_taken_in, predict_target_in,
	output pc_out, inst_out, predict_taken_out, predict_target_out
  );
  // control_unit tb
  modport tb (
	input  pc_out, inst_out, predict_taken_out, predict_target_out,
	output stall, flush, ihit, pc_in, inst_in, predict_taken_in, predict_target_in
  );
endinterface

`endif