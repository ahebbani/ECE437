`include "alu_if.vh"
`include "cpu_types_pkg.vh"

module alu  (
    alu_if.alu aluif
);

import cpu_types_pkg::*;

always_comb begin
    aluif.out = 32'b0;
    case (aluif.opcode)
        ALU_ADD: aluif.out = aluif.a + aluif.b; // ADD
        ALU_SUB: aluif.out = aluif.a - aluif.b; // SUB
        ALU_AND: aluif.out = aluif.a & aluif.b; // AND
        ALU_OR: aluif.out = aluif.a | aluif.b;  // OR
        ALU_XOR: aluif.out = aluif.a ^ aluif.b; // XOR
        ALU_SLL: aluif.out = aluif.a << aluif.b [4:0];
        ALU_SRL: aluif.out = aluif.a >> aluif.b[4:0];
        ALU_SRA: aluif.out = $signed(aluif.a) >>> aluif.b[4:0];
        ALU_SLT: aluif.out = ($signed(aluif.a) < $signed(aluif.b)) ? 32'd1 : 32'd0;
        ALU_SLTU: aluif.out = (aluif.a < aluif.b) ? 32 'd1 : 32'd0;
        default: aluif.out = 32'b0;
    endcase
    aluif.zero = (aluif.out == 32'b0);
    aluif.negative = aluif.out[31];
    aluif.overflow = (aluif.opcode == ALU_ADD && aluif.a[31] == aluif.b[31] && aluif.out[31] != aluif.a[31]) || (aluif.opcode == ALU_SUB && aluif.a[31] != aluif.b[31] && aluif.out[31] != aluif.a[31]);
end

endmodule
