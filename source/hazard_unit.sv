// Hazard unit will detect any hazards
// Tells the forwarding unit what to forward.

// Also flushes if a branch is taken

// Structural hazards happen fi two stages need the same hardware at the same time - handled by the memory arbiter
// Data hazards happen when the next instruction needs a register before it is determined
// If the value is already computed in the exe stage, then forwarding unit can bring it to the next instructions exe stage
// if it is a load use case, then the data is not ready until the mem stage, so we need to stall
// Control hazards happen with branches
// You only know when a branch is taken at the exe stage
// if the branch is taken, then flush the previous stages
// else continue

`include "cpu_types_pkg.vh"
`include "hazard_unit_if.vh"

module hazard_unit (
    input logic clk, nrst,
    hazard_unit_if.hu huif
);

import cpu_types_pkg::*;

// Data and control hazard detection
always_comb begin
    huif.stall = 0;
    huif.flush = 0;

    // Control hazard
    // if taking the branch, then flush if/id and id/ex regs
    if (huif.inst_ex[6:0] == opcode_t'(BTYPE) && huif.branchtaken) begin 
        huif.flush = 1;
    end

    // Load use hazard
    // if doing a load word, and if the next instruction depends on the loaded word, stall the if/id and id/ex regs
    if (huif.rd_ex != 5'd0 && huif.inst_ex[6:0] == ITYPE_LW && (huif.rs1_id == huif.rd_ex || huif.rs2_id == huif.rd_ex)) begin
        huif.stall = 1; 
    end
end

endmodule