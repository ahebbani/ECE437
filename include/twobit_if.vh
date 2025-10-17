`ifndef TWOBIT_IF_VH
`define TWOBIT_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface twobit_if;
  // import types
  import cpu_types_pkg::*;

  // Lookup (IF stage)
  word_t fetch_pc;
  logic  predict_taken;     // MSB of 2-bit counter AND BTB hit
  logic  predict_hit;       // BTB tag/valid hit
  word_t predict_target;    // BTB target when predict_taken & predict_hit

  // Update (EX stage)
  logic        update_en;        // pulse when a branch resolves in EX
  word_t       update_pc;        // PC of the branch instruction
  logic        update_is_branch; // 1 if opcode is BTYPE
  logic        update_taken;     // actual outcome
  word_t       update_target;    // actual target (pc + imm)

  // modports
  modport bpu (
    input  fetch_pc, update_en, update_pc, update_is_branch, update_taken, update_target,
    output predict_taken, predict_hit, predict_target
  );

  modport dp (
    input  predict_taken, predict_hit, predict_target,
    output fetch_pc, update_en, update_pc, update_is_branch, update_taken, update_target
  );
endinterface

`endif