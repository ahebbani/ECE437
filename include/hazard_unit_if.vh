`ifndef HAZARD_UNIT_IF_VH
`define HAZARD_UNIT_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface hazard_unit_if;
  // import types
  import cpu_types_pkg::*;

  // logic stall, flush, branchtaken;
  // word_t inst_ex;
  // logic [4:0] rs1_id, rs2_id, rd_ex;

  //from decode stage
  logic [4:0] id_rs1, id_rs2;
  logic id_read1, id_read2;

  //from execute stage
  logic [4:0] dxo_rd;
  logic dxo_RegWEN, dxo_isLoad;

  //predict not taken, from execute
  logic exec_branch_taken;
  word_t exec_new_target;

  logic mem_active, dhit;

  word_t pc_new;
  logic pc_en, fdf_stall, fdf_flush, dx_flush, dx_stall;

  logic freeze, flush;




  // control_unit ports
  modport hu (
    input id_rs1, id_rs2, id_read1, id_read2, dxo_rd, dxo_RegWEN, dxo_isLoad, exec_branch_taken, exec_new_target, mem_active, dhit,
    output pc_new, pc_en, fdf_stall, fdf_flush, dx_flush, dx_stall,freeze, flush
  // input branchtaken, inst_ex, rs1_id, rs2_id, rd_ex,
	// output stall, flush
  );
  // tb
  modport tb (
	// input branchtaken, inst_ex, rs1_id, rs2_id, rd_ex,
	// output stall, flush
  input pc_new, pc_en, fdf_stall, fdf_flush, dx_flush, dx_stall,freeze, flush,
  output id_rs1, id_rs2, id_read1, id_read2, dxo_rd, dxo_RegWEN, dxo_isLoad, exec_branch_taken, exec_new_target, mem_active, dhit
  );
endinterface

`endif