// Hazard unit will detect any hazards
// Tells the forwarding unit what to forward.

// Also flushes if a branch is taken

// Structural hazards happen fi two stages need the same hardware at the same time - handled by the memory arbiter
// Data hazards happen when the next instruction needs a register before it is determined
// If the value is already computed in the exe stage, then forwarding unit can bring it to the next instructions exe stage
// if it is a load use case, then the data is not ready until the mem stage, so we need to stall
// Control hazards happen with branches
// You only knwo when a branch is taken at the exe stage
// if the branch is taken, then flush the previous stages
// else continue

module hazard_unit (
    input logic clk, nrst,
    hazard_unit_if.hu huif
);

// Data and control hazard detection
always_comb begin
    huif.stall = 0;
    huif.flush = 0;

    // Control hazards
    if (huif.inst_ex == BTYPE) begin
        if ((huif.branchPCSrc_ex == 2'b11 && huif.zero) ||
            (huif.branchPCSrc_ex == 2'b10 && ~huif.zero)) begin
                huif.flush;
            end
    end

    // Data hazards
    // ALU output is forwarded to next ALU
    if ((huif.inst_ex == RTYPE || huif.inst_ex == ITYPE) &&
        (huif.rs1_id == huif.rd_ex || huif.rs2_id == huif.rd_ex)) begin
        huif.stall = 0;
    end
    // Load use hazard
    else if (huif.inst_ex == ITYPE_LW && 
            (huif.rs1_id == huid.rd_ex || huif.rs2_id == huif.rd_ex)) begin
                huif.stall = 1;
            end
    else if (huif.inst_ex == STYPE && huif.rs2_id == huif.rd_ex) begin
        huif.stall = 1;
    end
end

endmodule