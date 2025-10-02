// mapped needs this
`include "hazard_unit_if.vh"
`include "cpu_types_pkg.vh"

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module hazard_unit_tb;

  parameter PERIOD = 10;
  logic CLK = 0, nRST;

  // clock
  always #(PERIOD/2) CLK++;

  // interface instance
  hazard_unit_if huif();

  // DUT
`ifndef MAPPED
  hazard_unit DUT(.clk(CLK), .nrst(nRST), .huif(huif));
`else
  hazard_unit DUT(
    .clk(CLK),
    .nrst(nRST),
    .\huif.inst_ex      (huif.inst_ex),
    .\huif.rs1_id       (huif.rs1_id),
    .\huif.rs2_id       (huif.rs2_id),
    .\huif.rd_ex        (huif.rd_ex),
    .\huif.branchtaken  (huif.branchtaken),
    .\huif.stall        (huif.stall),
    .\huif.flush        (huif.flush)
  );
`endif

  // Test program connected to the interface
  test PROG(.clk(CLK), .nrst(nRST), .hu_if(huif));

endmodule


program test (
  input  logic clk,
  output logic nrst,
  hazard_unit_if.hu hu_if
);

import cpu_types_pkg::*;

  // simple task to check hazard outputs
  task automatic check_hazard(
    input opcode_t inst_ex,
    input [4:0] rs1_id, rs2_id, rd_ex,
    input logic branchtaken,
    input logic exp_stall, exp_flush,
    string casename
  );
    begin
      hu_if.inst_ex     = inst_ex;
      hu_if.rs1_id      = rs1_id;
      hu_if.rs2_id      = rs2_id;
      hu_if.rd_ex       = rd_ex;
      hu_if.branchtaken = branchtaken;

      #20; // allow comb logic to settle

      assert (hu_if.stall == exp_stall && hu_if.flush == exp_flush)
        else $error("%s FAILED: got stall=%b flush=%b, expected %b %b",
                    casename, hu_if.stall, hu_if.flush, exp_stall, exp_flush);

      $display("%s PASSED: stall=%b flush=%b",
               casename, hu_if.stall, hu_if.flush);
    end
  endtask

  initial begin
    nrst = 1;

    // Case 1: No hazard
    check_hazard(opcode_t'(RTYPE), 5'd1, 5'd2, 5'd0, 0, 0,0, "Case 1: No hazard");

    // Case 2: Branch taken → flush=1
    check_hazard(opcode_t'(BTYPE), 5'd1, 5'd2, 5'd0, 1, 0,1, "Case 2: Branch taken");

    // Case 3: Branch not taken → flush=0
    check_hazard(opcode_t'(BTYPE), 5'd1, 5'd2, 5'd0, 0, 0,0, "Case 3: Branch not taken");

    // Case 4: Load-use hazard on rs1 → stall=1
    check_hazard(ITYPE_LW, 5'd5, 5'd6, 5'd5, 0, 1,0, "Case 4: Load-use hazard rs1");

    // Case 5: Load-use hazard on rs2 → stall=1
    check_hazard(ITYPE_LW, 5'd7, 5'd8, 5'd8, 0, 1,0, "Case 5: Load-use hazard rs2");

    // Case 6: Load-use with rd_ex==x0 → no hazard
    check_hazard(ITYPE_LW, 5'd1, 5'd2, 5'd0, 0, 0,0, "Case 6: Load-use with rd_ex=0");

    // Case 7: Both branch taken and load-use in EX
    // Flush has no overlap with stall, but we can still check
    check_hazard(ITYPE_LW, 5'd3, 5'd4, 5'd3, 1, 1,0, "Case 7: Load-use stall, branch taken ignored");

    $display("Hazard Unit Testbench Complete.");
    $finish;
  end

endprogram
