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

  
  //DUT
  control_unit CTRLU(cuif);
  request_unit REQU(CLK, nRST, ruif);
  register_file REGF(CLK, nRST, rfif);
  alu ALU(aluif);
  pc PC(CLK, nRST, pcif);


  // regfile
  assign rfif.WEN = cuif.RegWEN && (dpif.ihit || dpif.dhit);
  assign rfif.wsel = cuif.rd;
  assign rfif.rsel1 = cuif.rs1; 
  assign rfif.rsel2 = cuif.rs2;
  always_comb begin
    rfif.wdat = 0;
    case (cuif.MemtoReg) 
      2'b00: rfif.wdat = aluif.out;
      2'b01: rfif.wdat = dpif.dmemload;
      2'b10: rfif.wdat = pcif.npc;
      2'b11: rfif.wdat = cuif.imm;
    endcase
  end

  // alu
  assign aluif.opcode = cuif.aluop;
  assign aluif.a = (cuif.ALUSrc2 == 1) ? pcif.PC : rfif.rdat1;
  assign aluif.b = (cuif.ALUSrc1 == 1) ? cuif.imm : rfif.rdat2;

  // request
  assign ruif.dWEN = cuif.dWEN ;
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