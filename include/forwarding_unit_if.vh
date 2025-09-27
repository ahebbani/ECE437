`ifndef FORWARDING_UNIT_IF_VH
`define FORWARDING_UNIT_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface forwarding_unit_if;
  // import types
  import cpu_types_pkg::*;

    logic [4:0] dxo_rs1, dxo_rs2, exmo_rd, mwbo_rd;
    logic exmo_RegWEN, mwbo_RegWEN;
    logic [1:0] forwardA, forwardB;
  // fu ports
  modport fu (
    input dxo_rs1, dxo_rs2, exmo_rd, mwbo_rd, exmo_RegWEN, mwbo_RegWEN,
    output forwardA, forwardB
  );
  // fu tb
  modport tb (
    input forwardA, forwardB,
    output  dxo_rs1, dxo_rs2, exmo_rd, mwbo_rd, exmo_RegWEN, mwbo_RegWEN
  );
endinterface

`endif 