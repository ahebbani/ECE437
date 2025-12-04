//Program is modified from the demo in class
`include "cpu_types_pkg.vh"
`include "control_unit_if.vh"

module control_unit(
  control_unit_if.cu cuif
);

import cpu_types_pkg::*;

logic [6:0] funct7, opcode, imm2;
logic [2:0] funct3;
logic [4:0] imm1, funct5_atom;


// Break up instruction
assign funct7 = cuif.inst[31:25];
assign cuif.rs2 = cuif.inst[24:20];
assign cuif.rs1 = cuif.inst[19:15];     
assign funct3 = cuif.inst[14:12];
assign cuif.rd = cuif.inst[11:7];
assign opcode = cuif.inst[6:0];
assign funct5_atom = cuif.inst[31:27]; //top 5 bits

// Decode
always_comb begin
    cuif.branchPCSrc = 0; 
    cuif.jumpPCsrc = 0;
    cuif.MemtoReg = 0; 
    cuif.RegWEN = 0; 
    cuif.dWEN = 0; 
    cuif.dREN = 0; 
    cuif.iREN = 1; 
    cuif.ALUSrc1 = 0; 
    cuif.ALUSrc2 = 0; 
    cuif.aluop = ALU_SLL; 
    cuif.halt = 0;
    cuif.imm = 32'b0;
    
    cuif.atomic = 1'b0; //default not atomic

    imm1 = 0;
    imm2 = 0;
    casez (opcode_t'(opcode))
        RTYPE: begin
            cuif.RegWEN   = 1;
            cuif.MemtoReg = 2'b00;
            casez ({funct7, funct3})
                10'b0000000_000: cuif.aluop = ALU_ADD;
                10'b0100000_000: cuif.aluop = ALU_SUB;
                10'b0000000_111: cuif.aluop = ALU_AND;
                10'b0000000_110: cuif.aluop = ALU_OR;
                10'b0000000_100: cuif.aluop = ALU_XOR;
                10'b0000000_001: cuif.aluop = ALU_SLL;
                10'b0000000_101: cuif.aluop = ALU_SRL;
                10'b0100000_101: cuif.aluop = ALU_SRA;
                10'b0000000_010: cuif.aluop = ALU_SLT;
                10'b0000000_011: cuif.aluop = ALU_SLTU;
            endcase
        end
        ITYPE: begin
            cuif.imm = {{20{cuif.inst[31]}}, cuif.inst[31:20]};
            cuif.RegWEN = 1;
            cuif.MemtoReg = 2'b00;
            cuif.ALUSrc1 = 1;
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
            cuif.imm = {{20{cuif.inst[31]}}, cuif.inst[31:20]};
            cuif.RegWEN = 1;
            cuif.dREN = 1;
            cuif.MemtoReg = 2'b01;
            cuif.aluop = ALU_ADD; // Effective address = rs1 + imm
            cuif.ALUSrc1 = 1;
        end
        JALR: begin
            cuif.imm = {{21{cuif.inst[31]}}, cuif.inst[30:20]};
            cuif.jumpPCsrc = 2'b10;
            cuif.MemtoReg = 2'b10;
            cuif.RegWEN = 1;
            cuif.ALUSrc1 = 1;
            cuif.aluop = ALU_ADD; // Target address = rs1 + imm
        end
        STYPE: begin
            cuif.dWEN = 1;
            imm2 = cuif.inst[31:25];
            imm1 = cuif.inst[11:7];
            cuif.imm = {{20{cuif.inst[31]}}, imm2, imm1};
            cuif.aluop = ALU_ADD;
            cuif.ALUSrc1 = 1;
        end
        BTYPE: begin
            cuif.imm = {{19{cuif.inst[31]}},
            cuif.inst[31],
            cuif.inst[7],
            cuif.inst[30:25],
            cuif.inst[11:8],
            1'b0};

            cuif.branchPCSrc = 2'b10;
            case (funct3_b_t'(funct3))
                BEQ: begin
                    cuif.branchPCSrc = 2'b11;
                    cuif.aluop = ALU_SUB;
                end
                BNE: begin
                    cuif.branchPCSrc = 2'b10;
                    cuif.aluop = ALU_SUB;
                end
                BLT: begin
                    cuif.branchPCSrc = 2'b10;
                    cuif.aluop = ALU_SLT;
                end
                BGE: begin
                    cuif.branchPCSrc = 2'b11;
                    cuif.aluop = ALU_SLT;
                end
                BLTU: begin
                    cuif.branchPCSrc = 2'b10;
                    cuif.aluop = ALU_SLTU;
                end
                BGEU: begin
                    cuif.branchPCSrc = 2'b11;
                    cuif.aluop = ALU_SLTU;
                end
            endcase
        end
        JAL: begin
            cuif.imm = {{11{cuif.inst[31]}}, cuif.inst[31], cuif.inst[19:12], cuif.inst[20], cuif.inst[30:21], 1'b0};
            cuif.RegWEN = 1;
            cuif.MemtoReg = 2'b10;
            cuif.jumpPCsrc = 2'b01;
            cuif.aluop = ALU_ADD; // PC + 4
        end
        LUI: begin
            cuif.imm = {cuif.inst[31:12], 12'b0};
            cuif.RegWEN = 1;
            cuif.MemtoReg = 2'b11;
        end
        AUIPC: begin
            cuif.RegWEN = 1;
            cuif.ALUSrc1 = 1;
            cuif.ALUSrc2 = 1;
            cuif.imm = {{11{cuif.inst[31]}}, cuif.inst[31:12], 12'b0};
            cuif.aluop = ALU_ADD; 
        end
        HALT: begin
            cuif.halt = 1;
        end
        LR_SC: begin
            casez(funct5_atom)
                LR: begin
                    //kinda like lw with offset 0, but atomic
                    cuif.MemtoReg = 2'b01;  //comes from dmemload
                    cuif.RegWEN = 1'b1;    
                    cuif.dWEN = 0; 
                    cuif.dREN = 1'b1;       //loading/reading
                    cuif.ALUSrc1 = 1'b1;    //port b = imm 
                    cuif.ALUSrc2 = 0;       //port a  = rdat1
                    cuif.aluop = ALU_ADD;   //addr = rdat1+imm(0)
                    cuif.imm = 32'b0;   //no immediate
                    cuif.atomic = 1'b1;
                end
                SC: begin
                    //like sw with offset 0, writes 0/1 to reg via dmemload
                    cuif.MemtoReg = 2'b01;  //comes from dmemload
                    cuif.RegWEN = 1'b1;    //rd gets success value
                    cuif.dWEN = 1'b1;       //storing/writing
                    cuif.dREN = 0;       
                    cuif.ALUSrc1 = 1'b1;    //port b = imm 
                    cuif.ALUSrc2 = 0;       //port a  = rdat1
                    cuif.aluop = ALU_ADD;   //addr = rdat1+imm(0)
                    cuif.imm = 32'b0;   //no immediate
                    cuif.atomic = 1'b1;
                end
            endcase
        end
    endcase
end

endmodule