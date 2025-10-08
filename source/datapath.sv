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
`include "if_id_if.vh"
`include "id_ex_if.vh"
`include "ex_mem_if.vh"
`include "mem_wb_if.vh"

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


//-----------------------------------------------------------------------------
// REGISTER FILE (rfif)
//-----------------------------------------------------------------------------

  //write port control
  assign rfif.WEN = mwb.RegWEN_out;
  assign rfif.wsel = mwb.rd_out;

  //read port control
  assign rfif.rsel1 = cuif.rs1; 
  assign rfif.rsel2 = cuif.rs2;

  //write back data mux
  always_comb 
  begin
    rfif.wdat = 0;
    case (mwb.MemtoReg_out) 
      2'b00: rfif.wdat = mwb.alu_out_out;
      2'b01: rfif.wdat = mwb.dmemload_out;
      2'b10: rfif.wdat = mwb.pc_out;
      2'b11: rfif.wdat = mwb.imm_out;
    endcase
  end

//-----------------------------------------------------------------------------
// ALU (aluif)
//-----------------------------------------------------------------------------
  //alu opcode
  assign aluif.opcode = dx.aluop_out;

  //alu input ports
  assign aluif.a = (dx.ALUSrc2_out == 1) ? dx.pc_out : exm.rdat1_in;
  assign aluif.b = (dx.ALUSrc1_out == 1) ? dx.imm_out : exm.rdat2_in;


//-----------------------------------------------------------------------------
// Forwarding Unit (fuif)
//-----------------------------------------------------------------------------

  //assign fuif inputs
  assign fuif.dxo_rs1 = dx.rs1_out;
  assign fuif.dxo_rs2 = dx.rs2_out;
  assign fuif.exmo_rd = exm.rd_out;
  assign fuif.mwbo_rd = mwb.rd_out;
  assign fuif.exmo_RegWEN = exm.RegWEN_out;
  assign fuif.mwbo_RegWEN = mwb.RegWEN_out;

  //manage forwarding muxes
  always_comb 
  begin
    exm.rdat1_in = dx.rdat1_out;
    exm.rdat2_in = dx.rdat2_out;

    case (fuif.forwardA)
      2'b01: exm.rdat1_in = rfif.wdat; // load use
      2'b10:begin
        if (exm.inst_out[6:0] == opcode_t'(LUI)) exm.rdat1_in = exm.imm_out;
        else if (exm.inst_out[6:0] == opcode_t'(JAL) || exm.inst_out[6:0] == opcode_t'(JALR)) exm.rdat1_in = exm.pc_out + 4;
        else exm.rdat1_in = exm.alu_out_out;
      end
    endcase

    case (fuif.forwardB)
      2'b01: exm.rdat2_in = rfif.wdat;
      2'b10: begin
        if (exm.inst_out[6:0] == opcode_t'(LUI)) exm.rdat2_in = exm.imm_out;
        else if (exm.inst_out[6:0] == opcode_t'(JAL) || exm.inst_out[6:0] == opcode_t'(JALR)) exm.rdat2_in = exm.pc_out + 4;
        else exm.rdat2_in = exm.alu_out_out;
      end
    endcase
end


//-----------------------------------------------------------------------------
// PC (pcif) with branch/jump logic
//-----------------------------------------------------------------------------

  //pc enable
  assign pcif.PCEN = dpif.ihit && ~huif.stall;

  //branch/jump taken logic
  assign branchtaken = (dx.branchPCSrc_out == 2'b11 && aluif.zero) || (dx.branchPCSrc_out == 2'b10 && ~aluif.zero) || dx.jumpPCsrc_out;

  //pc new value logic
  always_comb 
  begin
    case (dx.jumpPCsrc_out)
      2'b01: pcif.new_pc = dx.pc_out + dx.imm_out;
      2'b10: pcif.new_pc = aluif.out & ~32'h1;
      default: begin
        if (branchtaken) pcif.new_pc = dx.pc_out + dx.imm_out;
        else pcif.new_pc = pcif.npc;
      end
    endcase
  end

//-----------------------------------------------------------------------------
// Hazard Unit (huif)
//-----------------------------------------------------------------------------

  //assign huif inputs
  assign huif.branchtaken = branchtaken;
  assign huif.inst_ex = dx.inst_out;
  assign huif.rs1_id = cuif.rs1;
  assign huif.rs2_id = cuif.rs2;
  assign huif.rd_ex = dx.rd_out;


//-----------------------------------------------------------------------------
// IF/ID (fdf)
//-----------------------------------------------------------------------------

  always_comb
  begin

    //FOR CU
    cuif.inst = fdf.inst_out;
    
    //from fetch
    fdf.pc_in = pcif.PC;
    fdf.inst_in = dpif.ihit ? dpif.imemload : '0;

    //from datapath
    fdf.ihit = dpif.ihit;

    //from hazard unit
    fdf.flush = huif.flush;
    fdf.stall = huif.stall;
  end

//-----------------------------------------------------------------------------
// ID/EX (dx)
//-----------------------------------------------------------------------------
  
  always_comb
  begin
    //from if/id
    dx.pc_in = fdf.pc_out;
    dx.inst_in = fdf.inst_out;

    //from datapath
    dx.ihit = dpif.ihit;

    //from control unit
    dx.branchPCSrc_in = cuif.branchPCSrc;
    dx.jumpPCsrc_in = cuif.jumpPCsrc;
    dx.dWEN_in = cuif.dWEN;
    dx.dREN_in = cuif.dREN;
    dx.ALUSrc1_in = cuif.ALUSrc1;
    dx.ALUSrc2_in = cuif.ALUSrc2;
    dx.aluop_in = cuif.aluop;
    dx.MemtoReg_in = cuif.MemtoReg;
    dx.imm_in = cuif.imm;
    dx.RegWEN_in = cuif.RegWEN;
    dx.halt_in = cuif.halt;
    dx.rd_in = cuif.rd;
    dx.rs1_in = cuif.rs1;
    dx.rs2_in = cuif.rs2;

    //from register file
    dx.rdat1_in = rfif.rdat1;
    dx.rdat2_in = rfif.rdat2;

    //from hazard unit
    dx.stall = huif.stall;
    dx.flush = huif.flush;

  end

//-----------------------------------------------------------------------------
// EX/MEM (exm)
//-----------------------------------------------------------------------------
  always_comb
  begin
    //from id/ex
    exm.pc_in = dx.pc_out;
    exm.inst_in = dx.inst_out;
    exm.dWEN_in = dx.dWEN_out;
    exm.dREN_in = dx.dREN_out;
    exm.rd_in = dx.rd_out;
    exm.imm_in = dx.imm_out;
    exm.RegWEN_in = dx.RegWEN_out;
    exm.MemtoReg_in = dx.MemtoReg_out;
    exm.halt_in = dx.halt_out;
    
    //from datapath
    exm.ihit = dpif.ihit;
    exm.dhit = dpif.dhit;

    //from alu
    exm.alu_out_in = aluif.out;

    //from hazard unit

  end

//-----------------------------------------------------------------------------
// MEM/WB (mwb)
//-----------------------------------------------------------------------------

  always_comb
  begin
    //from ex/mem
    mwb.pc_in = exm.pc_out;
    mwb.inst_in = exm.inst_out;
    mwb.rd_in = exm.rd_out;
    mwb.imm_in = exm.imm_out;
    mwb.RegWEN_in = exm.RegWEN_out;
    mwb.alu_out_in = exm.alu_out_out;
    mwb.MemtoReg_in = exm.MemtoReg_out;
    mwb.halt_in = exm.halt_out;
    mwb.dmemload_in = exm.dmemload;

    //from datapath
    mwb.ihit = dpif.ihit;
    mwb.dhit = dpif.dhit;

    //from hazard unit
  end

//-----------------------------------------------------------------------------
// DATPATH OUTPUTS
//-------------------------------------------------------------------------------
  always_ff @(negedge nRST, posedge CLK) begin
    if(~nRST) dpif.halt <= 0;
    else dpif.halt <= mwb.halt_out | dpif.halt;
  end

  assign dpif.imemREN = (dpif.halt) ? 0 : 1;
  assign dpif.imemaddr = pcif.PC;
  assign dpif.dmemREN = exm.dmemREN;
  assign dpif.dmemWEN = exm.dmemWEN;
  assign dpif.dmemstore = exm.rdat2_out;
  assign dpif.dmemaddr = exm.alu_out_out;

endmodule