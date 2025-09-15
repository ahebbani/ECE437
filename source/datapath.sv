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
  
  //DUT
  control_unit CTRLU(cuif);
  request_unit REQU(CLK, nRST, ruif);
  register_file REGF(CLK, nRST, rfif);
  alu ALU(aluif);
  program_counter PC(CLK, nRST, pcif);

  // Sign extension, Jump, Branch
  word_t SignedExt, JumpAddr, BranchAddr;
  assign SignedExt = (cuif.imm[11] == 1)? {20'hfffff, cuif.imm}:{20'h00000, cuif.imm};
  assign JumpAddr = (cuif.jumpPCsrc == 1) ? pcif.pc + cuif.imm;
  assign BranchAddr = (cuif.branchPCSrc && aluif.zero) ? pcif.pc + cuif.imm;

  // regfile
  assign rfif.WEN = cuif.RegWEN & ( dpif.ihit | dpif.dhit);
  assign rfif.wsel = cuif.rd;
  assign rfif.rsel1 = cuif.rs1; 
  assign rfif.rsel2 = cuif.rs2;
  assign rfif.wdat = (cuif.MemtoReg) ? ccif.dload : aluif.out;

  // alu
  assign aluif.a = rfif.rdat1;
  assign aluif.b = (cuif.ALUSrc == 1) ? cuif.imm : rfif.rdat2;

  // request
  assign ruif.dWEN = cuif.dWEN;
  assign ruif.dREN = cuif.dREN;
  assign ruif.dhit = dpif.dhit;
  assign ruif.ihit = dpif.ihit;

  // pc
  assign pcif.PCEN = ruif.PCEN;
  if ((cuif.jumpPCsrc == 1) || (cuif.branchPCSrc && aluif.zero)) pcif.new_pc = pcif.pc + cuif.imm;
  else pcif.new_pc = pc.npc;

  // control
  assign cuif.inst = dpif.imemload;

  //setup datapath outputs
  always_ff @(negedge nRST, posedge CLK) begin
    if(~nRST) dpif.halt <= 0;
    else dpif.halt <= cuif.halt;
  end

  assign dpif.imemREN = cuif.imemREN;
  assign dpif.imemaddr = pcif.PC;
  assign dpif.dmemREN = ruif.dmemREN;
  assign dpif.dmemWEN = ruif.dmemWEN;
  assign dpif.dmemstore = rfif.rdat2;
  assign dpif.dmemaddr = aluif.out;

endmodule