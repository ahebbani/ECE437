// mapped needs this
`include "forwarding_unit_if.vh"

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module forwarding_unit_tb;

  parameter PERIOD = 10;

  logic CLK = 0, nRST;

  // clock
  always #(PERIOD/2) CLK++;

  // interface
  forwarding_unit_if fuif ();
  // test program
  test PROG ();
  // DUT
`ifndef MAPPED
  forwarding_unit DUT(fuif);
`else
  forwarding_unit DUT(
    .\fuif.dxo_rs1 (fuif.dxo_rs1),
    .\fuif.dxo_rs2 (fuif.dxo_rs2),
    .\fuif.exmo_rd (fuif.exmo_rd),
    .\fuif.mwbo_rd (fuif.mwbo_rd),
    .\fuif.exmo_RegWEN (fuif.exmo_RegWEN),
    .\fuif.mwbo_RegWEN (fuif.mwbo_RegWEN),
    .\fuif.forwardA (fuif.forwardA),
    .\fuif.forwardB (fuif.forwardB)
  );
`endif

endmodule

program test;
parameter DELAY = 10;
integer i,j,k,l;
initial begin

// data hazard


$finish;
end

endprogram