/*
  Eric Villasenor
  evillase@gmail.com

  datapath contains register file, control, hazard,
  muxes, and glue logic for processor
*/

// data path interface
`include "datapath_cache_if.vh"
`include "control_unit_if.vh"
`include "request_unit_if.vh"
`include "register_file_if.vh"
`include "cache_control_if.vh"
`include "alu_if.vh"
`include "pc_if.vh"
`include "hazard_unit_if.vh"
`include "forwarding_unit_if.vh"

// alu op, mips op, and instruction type
`include "cpu_types_pkg.vh"

module datapath (
  input logic CLK, nRST,
  datapath_cache_if.dp dpif
);
  // import types
  import cpu_types_pkg::*;

  // pc init
  parameter PC_INIT = 0;

  //interfaces
  control_unit_if cuif();
  request_unit_if ruif();
  register_file_if rfif();
  alu_if aluif();
  pc_if pcif();
  if_id_if fdf();
  id_ex_if dx();
  ex_mem_if exm();
  mem_wb_if mwb();
  hazard_unit_if huif();
  forwarding_unit_if fuif();

  
  //DUT
  forwarding_unit FU(fuif);
  hazard_unit HU(CLK, nRST, huif);
  control_unit CTRLU(cuif);
  request_unit REQU(CLK, nRST, ruif);
  register_file REGF(CLK, nRST, rfif);
  alu ALU(aluif);
  pc PC(CLK, nRST, pcif);
  if_id FDFREG(CLK, nRST, fdf);
  id_ex DXREG(CLK, nRST, dx);
  ex_mem EXMREG(CLK, nRST, exm);
  mem_wb MWBREG(CLK, nRST, mwb);

  // signals
  logic branchtaken;

  // regfile - could write the value from the same cycle
  assign rfif.WEN = mwb.RegWEN_out;
  assign rfif.wsel = mwb.rd_out;
  assign rfif.rsel1 = cuif.rs1; 
  assign rfif.rsel2 = cuif.rs2;
  always_comb begin
    rfif.wdat = 0;
    case (mwb.MemtoReg_out) 
      2'b00: rfif.wdat = mwb.alu_out_out;
      2'b01: rfif.wdat = mwb.dmemload_out;
      2'b10: rfif.wdat = mwb.pc_out;
      2'b11: rfif.wdat = mwb.imm_out;
    endcase
  end

  // alu
  assign aluif.opcode = dx.aluop_out;

  // pc
assign pcif.PCEN = dpif.ihit;
assign branchtaken = (dx.branchPCSrc_out == 2'b11 && aluif.zero) || (dx.branchPCSrc_out == 2'b10 && ~aluif.zero);
always_comb begin
  case (cuif.jumpPCsrc)
    2'b01: pcif.new_pc = dx.pc_out + dx.imm_out;
    2'b10: pcif.new_pc = aluif.out & ~32'h1;
    default: begin
      if (dx.jumpPCsrc_out) pcif.new_pc = dx.pc_out + dx.imm_out;
      else if (branchtaken) pcif.new_pc = dx.pc_out + dx.imm_out;
      else pcif.new_pc = pcif.npc;
    end
  endcase
end

// hazard unit
assign huif.branchtaken = branchtaken;
assign dx.inst_in = fdf.inst_out;
assign huif.inst_ex = dx.inst_out;
assign huif.rs1_id = cuif.rs1;
assign huif.rs2_id = cuif.rs2;
assign huif.rd_ex = dx.rd_out;
assign fdf.stall = huif.stall;
assign dx.stall = huif.stall;
assign fdf.flush = huif.flush;
assign dx.flush = huif.flush;

// forwarding unit
assign fuif.dxo_rs1 = cuif.rs1;
assign fuif.dxo_rs2 = cuif.rs2;
assign fuif.exmo_rd = exm.rd_out;
assign fuif.mwbo_rd = mwb.rd_out;
assign fuif.exmo_RegWEN = exm.RegWEN_out;
assign fuif.mwbo_RegWEN = mwb.RegWEN_out; 
always_comb begin
case (fuif.forwardA)
  2'b01: aluif.a = mwb.alu_out_out;
  2'b10: aluif.a = exm.alu_out_out;
  default: aluif.a = (dx.ALUSrc2_out == 1) ? dx.pc_out : dx.rdat1_out;
endcase
case (fuif.forwardB)
  2'b01: aluif.b = mwb.alu_out_out;
  2'b10: aluif.b = exm.alu_out_out;
  default: aluif.b = (dx.ALUSrc1_out == 1) ? dx.imm_out : dx.rdat2_out;
endcase
end

assign fdf.pc_in = pcif.PC;
assign dx.pc_in = fdf.pc_out;
assign exm.pc_in = dx.pc_out;
assign mwb.pc_in = exm.pc_out;

assign exm.inst_in = dx.inst_out;
assign mwb.inst_in = exm.inst_out;


assign dx.branchPCSrc_in = cuif.branchPCSrc;
assign dx.jumpPCsrc_in = cuif.jumpPCsrc;
assign dx.dWEN_in = cuif.dWEN;
assign exm.dWEN_in = dx.dWEN_out;

assign dx.dREN_in = cuif.dREN;
assign exm.dREN_in = dx.dREN_out;
assign dx.ALUSrc1_in = cuif.ALUSrc1;
assign dx.ALUSrc2_in = cuif.ALUSrc2;
assign dx.aluop_in = cuif.aluop;
assign dx.MemtoReg_in = cuif.MemtoReg;
assign dx.rdat1_in = rfif.rdat1;
assign dx.rdat2_in = rfif.rdat2;
assign exm.rdat2_in = dx.rdat2_out;
assign dx.rd_in = cuif.rd;
assign exm.rd_in = dx.rd_out;
assign mwb.rd_in = exm.rd_out;

assign dx.imm_in = cuif.imm;
assign exm.imm_in = dx.imm_out;
assign mwb.imm_in = exm.imm_out;

assign dx.RegWEN_in = cuif.RegWEN;
assign exm.RegWEN_in = dx.RegWEN_out;
assign mwb.RegWEN_in = exm.RegWEN_out;

assign exm.alu_out_in = aluif.out;
assign mwb.alu_out_in = exm.alu_out_out;

assign fdf.ihit = dpif.ihit;
assign dx.ihit = dpif.ihit;
assign exm.ihit = dpif.ihit;
assign mwb.ihit = dpif.ihit;

assign exm.dhit = dpif.dhit;
assign mwb.dhit = dpif.dhit;

assign exm.MemtoReg_in = dx.MemtoReg_out;
assign mwb.MemtoReg_in = exm.MemtoReg_out;

assign dx.halt_in = cuif.halt;
assign exm.halt_in = dx.halt_out;
assign mwb.halt_in = exm.halt_out;


always_comb
begin
  mwb.dmemload_in = dpif.dmemload;
  fdf.inst_in = dpif.ihit ? dpif.imemload : '0;
end

  // control
  // assign fdf.inst_in = dpif.imemload;
  assign cuif.inst = fdf.inst_out;

  //setup datapath outputs
  always_ff @(negedge nRST, posedge CLK) begin
    if(~nRST) dpif.halt <= 0;
    else dpif.halt <= exm.halt_out | dpif.halt;
  end

  assign dpif.imemREN = (dpif.halt) ? 0 : 1;
  assign dpif.imemaddr = pcif.PC;
  assign dpif.dmemREN = exm.dmemREN;
  assign dpif.dmemWEN = exm.dmemWEN;
  assign dpif.dmemstore = exm.rdat2_out;
  assign dpif.dmemaddr = exm.alu_out_out;

endmodule