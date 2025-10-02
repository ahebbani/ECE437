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
  test PROG (CLK, nRST, fuif);
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

program test (
  input logic clk,
  output logic nrst,
  forwarding_unit_if.tb fu_if
);

task automatic check_forwarding(
  input [4:0] rs1, rs2, ex_rd, mem_rd,
  input logic exwen, memwen,
  input [1:0] expA, expB,
  string casename
);
begin
  fu_if.dxo_rs1 = rs1;
  fu_if.dxo_rs2 = rs2;
  fu_if.exmo_rd = ex_rd;
  fu_if.mwbo_rd = mem_rd;
  fu_if.exmo_RegWEN = exwen;
  fu_if.mwbo_RegWEN = memwen;

  #20;

  assert (fu_if.forwardA == expA && fu_if.forwardB == expB)
    else $error("%s FAILED: got fA=%b fB=%b, expected %b %b", casename, fu_if.forwardA, fu_if.forwardB, expA, expB);

  $display("%s PASSED: forwardA=%b forwardB=%b", casename, fu_if.forwardA, fu_if.forwardB);
end
endtask

initial begin

check_forwarding(5'd1,  5'd2,  5'd0,  5'd0, 0,0, 2'b00,2'b00, "Case 1: No hazard");
check_forwarding(5'd5,  5'd6,  5'd5,  5'd0, 1,0, 2'b10,2'b00, "Case 2: EX hazard on rs1");
check_forwarding(5'd7,  5'd8,  5'd8,  5'd0, 1,0, 2'b00,2'b10, "Case 3: EX hazard on rs2");
check_forwarding(5'd9,  5'd10, 5'd0,  5'd9, 0,1, 2'b01,2'b00, "Case 4: MEM hazard on rs1");
check_forwarding(5'd3,  5'd4,  5'd3,  5'd3, 1,1, 2'b10,2'b00, "Case 5: EX priority over MEM");
check_forwarding(5'd11, 5'd12, 5'd11, 5'd12,1,1, 2'b10,2'b01, "Case 6: Independent hazards");

$finish;
end

endprogram