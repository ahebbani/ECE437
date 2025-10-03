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

  // Test program connected to the interface
  test PROG(.clk(CLK), .nrst(nRST), .hu_if(huif));

  // DUT
`ifndef MAPPED
  hazard_unit DUT(.clk(CLK), .nrst(nRST), .huif(huif));
`else
   hazard_unit DUT(
     .clk(CLK),
     .nrst(nRST),
//     .\huif.inst_ex      (huif.inst_ex),
//     .\huif.rs1_id       (huif.rs1_id),
//     .\huif.rs2_id       (huif.rs2_id),
//     .\huif.rd_ex        (huif.rd_ex),
//     .\huif.branchtaken  (huif.branchtaken),
//     .\huif.stall        (huif.stall),
//     .\huif.flush        (huif.flush)
    .\huif.id_rs1(huif.id_rs1),
    .\huif.id_rs2(huif.id_rs2),
    .\huif.id_read1(huif.id_read1),
    .\huif.id_read2(huif.id_read2),
    .\huif.dxo_rd(huif.dxo_rd),
    .\huif.dxo_RegWEN(huif.dxo_RegWEN),
    .\huif.dxo_isLoad(huif.dxo_isLoad),
    .\huif.exec_branch_taken(huif.exec_branch_taken),
    .\huif.exec_new_target(huif.exec_new_target),
    .\huif.mem_active(huif.mem_active),
    .\huif.dhit(huif.dhit),
    .\huif.pc_new(huif.pc_new),
    .\huif.pc_en(huif.pc_en),
    .\huif.fdf_stall(huif.fdf_stall),
    .\huif.fdf_flush(huif.fdf_flush),
    .\huif.dx_stall(huif.dx_stall),
    .\huif.dx_flush(huif.dx_flush),
    .\huif.freeze(huif.freeze),
    .\huif.flush(huif.flush)
   );
`endif

  

endmodule


program test (
  input  logic clk,
  output logic nrst,
  hazard_unit_if.hu hu_if
);

import cpu_types_pkg::*;

  task step(input int n);
    repeat (n) @(posedge clk);
  endtask

  task deassert();
    hu_if.id_rs1 = '0;
    hu_if.id_rs2 = '0;
    hu_if.id_read1 = 1'b0;
    hu_if.id_read2 = 1'b0;

    hu_if.dxo_rd = '0;
    hu_if.dxo_RegWEN = 1'b0;
    hu_if.dxo_isLoad = 1'b0;

    hu_if.exec_branch_taken = 1'b0;
    hu_if.exec_new_target = '0;

    hu_if.mem_active = 1'b0;
    hu_if.dhit = 1'b1; //ready by default
  endtask

  task expectedVal(
    input logic exp_pc_en,
    input logic exp_fdf_stall,
    input logic exp_fdf_flush,
    input logic exp_dx_stall,
    input logic exp_dx_flush,
    input logic exp_freeze,
    input logic exp_flush,
    input string casename
  );
      if (hu_if.pc_en !== exp_pc_en ||
        hu_if.fdf_stall !== exp_fdf_stall ||
        hu_if.fdf_flush !== exp_fdf_flush ||
        hu_if.dx_stall !== exp_dx_stall ||
        hu_if.dx_flush !== exp_dx_flush ||
        hu_if.freeze !== exp_freeze ||
        hu_if.flush !== exp_flush)
        begin
          $display("%s FAILED: pc_en=%0b fdf_stall=%0b fdf_flush=%0b dx_stall=%0b dx_flush=%0b freeze=%0b flush=%0b",
              casename, hu_if.pc_en, hu_if.fdf_stall, hu_if.fdf_flush, hu_if.dx_stall, hu_if.dx_flush, hu_if.freeze, hu_if.flush);
        end
        else
        begin
           $display("%s PASSED", casename);
        end
  endtask

    task bubbleCheck(string casename);
      step(1); 
      expectedVal(1, 0, 1, 0, 1, 0, 1, {casename,"(cycle 1)"}); //second bubble

      step(1); 
      expectedVal(1, 0, 1, 0, 1, 0, 1, {casename,"(cycle 2)"}); //third bubble

      step(1); 
      expectedVal(1, 0, 0, 0, 0, 0, 0, {casename," (post-flush)"});  //done
    endtask

  // // simple task to check hazard outputs
  // task automatic check_hazard(
  //   input opcode_t inst_ex,
  //   input [4:0] rs1_id, rs2_id, rd_ex,
  //   input logic branchtaken,
  //   input logic exp_stall, exp_flush,
  //   string casename
  // );
  //   begin
  //     hu_if.inst_ex     = inst_ex;
  //     hu_if.rs1_id      = rs1_id;
  //     hu_if.rs2_id      = rs2_id;
  //     hu_if.rd_ex       = rd_ex;
  //     hu_if.branchtaken = branchtaken;

  //     #20; // allow comb logic to settle

  //     assert (hu_if.stall == exp_stall && hu_if.flush == exp_flush)
  //       else $error("%s FAILED: got stall=%b flush=%b, expectedValed %b %b",
  //                   casename, hu_if.stall, hu_if.flush, exp_stall, exp_flush);

  //     $display("%s PASSED: stall=%b flush=%b",
  //              casename, hu_if.stall, hu_if.flush);
  //   end
  // endtask

  // initial begin
  //   nrst = 1;

  //   // Case 1: No hazard
  //   check_hazard(opcode_t'(RTYPE), 5'd1, 5'd2, 5'd0, 0, 0,0, "Case 1: No hazard");

  //   // Case 2: Branch taken → flush=1
  //   check_hazard(opcode_t'(BTYPE), 5'd1, 5'd2, 5'd0, 1, 0,1, "Case 2: Branch taken");

  //   // Case 3: Branch not taken → flush=0
  //   check_hazard(opcode_t'(BTYPE), 5'd1, 5'd2, 5'd0, 0, 0,0, "Case 3: Branch not taken");

  //   // Case 4: Load-use hazard on rs1 → stall=1
  //   check_hazard(ITYPE_LW, 5'd5, 5'd6, 5'd5, 0, 1,0, "Case 4: Load-use hazard rs1");

  //   // Case 5: Load-use hazard on rs2 → stall=1
  //   check_hazard(ITYPE_LW, 5'd7, 5'd8, 5'd8, 0, 1,0, "Case 5: Load-use hazard rs2");

  //   // Case 6: Load-use with rd_ex==x0 → no hazard
  //   check_hazard(ITYPE_LW, 5'd1, 5'd2, 5'd0, 0, 0,0, "Case 6: Load-use with rd_ex=0");

  //   // Case 7: Both branch taken and load-use in EX
  //   // Flush has no overlap with stall, but we can still check
  //   check_hazard(ITYPE_LW, 5'd3, 5'd4, 5'd3, 1, 1,0, "Case 7: Load-use stall, branch taken ignored");

  //   $display("Hazard Unit Testbench Complete.");
  //   $finish;
  // end

  initial begin

    //reset
    nrst = 0;
    deassert();
    step(2);
    nrst = 1;
    step(1);


    //CASE 0: NO HAZARDS
    deassert();
    step(1);
    expectedVal(1, 0, 0, 0, 0, 0, 0, "Case 0: no hazards");

    //CASE 1: LOAD USE VIA RS1
    deassert();
    hu_if.dxo_isLoad   = 1'b1;
    hu_if.dxo_RegWEN   = 1'b1;
    hu_if.dxo_rd       = 5'd5;
    hu_if.id_rs1       = 5'd5;
    hu_if.id_read1     = 1'b1;
    //expectedVal hold pc, bubble in id/ex, stall if/id
    step(1);
    expectedVal(0, 1, 0, 1, 1, 1, 0, "Case 1: Load-use rs1");

    //clear
    deassert();
    step(1);

    //CASE 2: LOAD USE VIA RS2
    hu_if.dxo_isLoad   = 1'b1;
    hu_if.dxo_RegWEN   = 1'b1;
    hu_if.dxo_rd       = 5'd8;
    hu_if.id_rs2       = 5'd8;
    hu_if.id_read2     = 1'b1;
    //expectedVal hold pc, bubble in id/ex, stall if/id
    step(1);
    expectedVal(0, 1, 0, 1, 1, 1, 0, "Case 2: Load-use rs2");

    //clear
    deassert();
    step(1);

    //CASE 3: LOAD USE rd = 0 (no stall)
    deassert();
    hu_if.dxo_isLoad   = 1'b1;
    hu_if.dxo_RegWEN   = 1'b1;
    hu_if.dxo_rd       = 5'd0;  //x0
    hu_if.id_rs1       = 5'd0;
    hu_if.id_read1     = 1'b1;
    step(1);
    expectedVal(1, 0, 0, 0, 0, 0, 0, "Case 3: Load-use rd=x0 -> no hazard");

    //CASE 4: STRUCTURAL mem wait stall
    deassert();
    hu_if.mem_active = 1'b1;
    hu_if.dhit = 1'b0;
    step(1);
    expectedVal(0, 1, 0, 1, 1, 1, 0, "Case 4: MEM wait -> stall/ex bubble");

    hu_if.dhit = 1'b1; 
    step(1);
    expectedVal(1, 0, 0, 0, 0, 0, 0, "Case 4b: MEM ready -> resume");

    //CASE 5: 3 bubbles
    deassert();
    hu_if.exec_new_target = 32'h1111_3333;
    hu_if.exec_branch_taken = 1'b1;   //this is redirect cycle
    step(1);
    //PC must redirect immediately and pc_en must be 1
    expectedVal(1, 0, 1, 0, 1, 0, 1, "Case 5: redirect cycle (flush+redirect)");

    //2 cycles of flush
    hu_if.exec_branch_taken = 1'b0;
    bubbleCheck("Case 5: remaining bubbles");

    //CASE 6: 3 bubble flush takes priority over stalls
    deassert();
    hu_if.exec_new_target = 32'h1234_5678;
    hu_if.exec_branch_taken = 1'b1; 
    step(1); //redirect cycle
    hu_if.exec_branch_taken = 1'b0;

    //now in flush window
    //load use and mem wait simultaneously
    hu_if.dxo_isLoad = 1'b1;
    hu_if.dxo_RegWEN = 1'b1;
    hu_if.dxo_rd = 5'd9;
    hu_if.id_rs1 = 5'd9;
    hu_if.id_read1 = 1'b1;
    hu_if.mem_active = 1'b1;
    hu_if.dhit = 1'b0;
    step(1); 
    expectedVal(1, 0, 1, 0, 1, 0, 1, "Case 6: flush dominates (cycle 0)");

    step(1); 
    expectedVal(1, 0, 1, 0, 1, 0, 1, "Case 6: flush dominates (cycle 1)");

    step(1);
    expectedVal(1, 0, 0, 0, 0, 0, 0, "Case 6: post-flush");


  $finish;

  end

endprogram
