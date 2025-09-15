//Program is modified from the demo in class
`include "cpu_types_pkg.vh"
`include "control_unit_if.vh"

module control_unit(
  control_unit_if.cu cuif
);

import cpu_types_pkg::*;

logic [6:0] funct7, opcode, imm2;
logic [2:0] funct3;
logic [4:0] imm1;


// Break up instruction
assign opcode = cuif.inst[6:0];
assign funct7 = cuif.inst[31:25];
assign cuif.rs2 = cuif.inst[24:20];
assign cuif.rs1 = cuif.inst[19:15];     
assign funct3 = cuif.inst[14:12];
assign cuif.rd = cuif.inst[11:7];

// Decode
always_comb begin
    cuif.branchPCSrc = 0; 
    cuif.jumpPCsrc = 0;
    cuif.MemtoReg = 0; 
    cuif.RegWEN = 0; 
    cuif.dWEN = 0; 
    cuif.dREN = 0; 
    cuif.iREN = 1; 
    cuif.ALUSrc = 0; 
    cuif.aluop = ALU_SLL; 
    cuif.halt = 0;
    cuif.imm = 0;
    imm1 = 0;
    imm2 = 0;
    casez (opcode_t'(opcode))
        RTYPE: begin
            cuif.RegWEN = 1;
            if (funct3 == 3'b000 && funct7 == 7'b0000000) cuif.aluop = ALU_ADD;
            else if (funct3 == 3'b000 && funct7 == 7'b0100000) cuif.aluop = ALU_SUB; 
            else if (funct3 == 3'b111 && funct7 == 7'b0000000) cuif.aluop = ALU_AND; 
            else if (funct3 == 3'b110 && funct7 == 7'b0000000) cuif.aluop = ALU_OR; 
            else if (funct3 == 3'b100 && funct7 == 7'b0000000) cuif.aluop = ALU_XOR; 
            else if (funct3 == 3'b001 && funct7 == 7'b0000000) cuif.aluop = ALU_SLL; 
            else if (funct3 == 3'b101 && funct7 == 7'b0000000) cuif.aluop = ALU_SRL; 
            else if (funct3 == 3'b101 && funct7 == 7'b0100000) cuif.aluop = ALU_SRA; 
            else if (funct3 == 3'b010 && funct7 == 7'b0000000) cuif.aluop = ALU_SLT; 
            else if (funct3 == 3'b011 && funct7 == 7'b0000000) cuif.aluop = ALU_SLTU;
        end
        ITYPE: begin
            cuif.imm = cuif.inst[31:20];
            cuif.RegWEN = 1;
            cuif.ALUSrc = 1;
            case (funct3)
                3'b000: cuif.aluop = ALU_ADD; // ADDI
                3'b010: cuif.aluop = ALU_SLT; // SLTI
                3'b011: cuif.aluop = ALU_SLTU; // SLTIU
                3'b100: cuif.aluop = ALU_XOR; // XORI
                3'b110: cuif.aluop = ALU_OR;  // ORI
                3'b111: cuif.aluop = ALU_AND; // ANDI
                3'b001: cuif.aluop = ALU_SLL; // SLLI
                3'b101: cuif.aluop = (cuif.imm[10] == 1'b0) ? ALU_SRL : ALU_SRA; // SRLI/SRAI
            endcase
        end
        ITYPE_LW: begin
            cuif.RegWEN = 1;
            cuif.dREN = 1;
            cuif.aluop = ALU_ADD; // Effective address = rs1 + imm
        end
        JALR: begin
            cuif.jumpPCsrc = 1;
            cuif.aluop = ALU_ADD; // Target address = rs1 + imm
        end
        STYPE: begin
            cuif.dWEN = 1;
            imm2 = cuif.inst[31:25];
            imm1 = cuif.inst[11:7];
            cuif.imm = {imm2, imm1};
        end
        BTYPE: begin
            cuif.imm = {imm2, imm1};
            cuif.aluop = ALU_SUB; // Use SUB for branch comparisons
            cuif.branchPCSrc = 1; // branch pc increment high for branch instructions
        end
        JAL: begin
            cuif.imm = cuif.inst[31:12];
            cuif.RegWEN = 1;
            cuif.jumpPCsrc = 1;
            cuif.aluop = ALU_ADD; // PC + 4
        end
        LUI: begin
            cuif.imm = cuif.inst[31:12];
            cuif.RegWEN = 1;
        end
        HALT: begin
            cuif.halt = 1;
        end
    endcase
end

endmodule