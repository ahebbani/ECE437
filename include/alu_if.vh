`ifndef ALU_IF_VH
`define ALU_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface alu_if;
  // import types
  import cpu_types_pkg::*;

  logic     negative, overflow, zero;
  aluop_t opcode;
  word_t    a, b, out;

  // alu ports
  modport alu (
    input   a, b, opcode,
    output  out, negative, overflow, zero
  );
  // alu tb
  modport tb (
    input   out, negative, overflow, zero,
    output  a, b, opcode
  );
endinterface

`endif //ALU_IF_VH

