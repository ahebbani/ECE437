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

  
  //DUT
  control_unit CTRLU(cuif);
  request_unit REQU(CLK, nRST, ruif);
  register_file REGF(CLK, nRST, rfif);
  alu ALU(aluif);
  pc PC(CLK, nRST, pcif);
  if_id_if FDFREG(CLK, nRST, fdf);
  id_ex_if DXREG(CLK, nRST, dx);
  ex_mem_if EXMREG(CLK, nRST, exm);
  mem_wb_if MWBREG(CLK, nRST, mwb);



  // regfile - could write the value from the same cycle
  assign rfif.WEN = cuif.RegWEN && (dpif.ihit || dpif.dhit);
  assign rfif.wsel = mwb.rd_out;
  assign rfif.rsel1 = cuif.rs1; 
  assign rfif.rsel2 = cuif.rs2;
  always_comb begin
    rfif.wdat = 0;
    case (mwb.MemtoReg) 
      2'b00: rfif.wdat = mwb.alu_out_out;
      2'b01: rfif.wdat = mwb.dmemload_out;
      2'b10: rfif.wdat = mwb.pc_out;
      2'b11: rfif.wdat = mwb.imm_out;
    endcase
  end

  // alu
  assign aluif.opcode = cuif.aluop;
  assign aluif.a = (cuif.ALUSrc2 == 1) ? pcif.PC : rfif.rdat1;
  assign aluif.b = (cuif.ALUSrc1 == 1) ? cuif.imm : rfif.rdat2;

  // request
  assign ruif.dWEN = cuif.dWEN;
  assign ruif.dREN = cuif.dREN;
  assign ruif.dhit = dpif.dhit;
  assign ruif.ihit = dpif.ihit;

  // pc
  assign pcif.PCEN = ruif.PCEN;
  always_comb begin
    case (cuif.jumpPCsrc)
      2'b01: pcif.new_pc = pcif.PC + cuif.imm;
      2'b10: pcif.new_pc = aluif.out & ~32'h1;
      default: begin
        if (cuif.jumpPCsrc) pcif.new_pc = pcif.PC + cuif.imm;
        else if (cuif.branchPCSrc == 2'b11 && aluif.zero) pcif.new_pc = pcif.PC + cuif.imm;
        else if (cuif.branchPCSrc == 2'b10 && ~aluif.zero) pcif.new_pc = pcif.PC + cuif.imm;
        else pcif.new_pc = pcif.npc;
      end
    endcase
  end

  // control
  assign cuif.inst = dpif.imemload;
  assign cuif.zero = aluif.zero;

  //setup datapath outputs
  always_ff @(negedge nRST, posedge CLK) begin
    if(~nRST) dpif.halt <= 0;
    else dpif.halt <= cuif.halt | dpif.halt;
  end

  assign dpif.imemREN = (dpif.halt) ? 0 : cuif.iREN;
  assign dpif.imemaddr = pcif.PC;
  assign dpif.dmemREN = ruif.dmemREN;
  assign dpif.dmemWEN = ruif.dmemWEN;
  assign dpif.dmemstore = rfif.rdat2;
  assign dpif.dmemaddr = aluif.out;

endmodule