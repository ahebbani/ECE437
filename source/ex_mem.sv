// data path interface
`include "ex_mem_if.vh"

module ex_mem (
    ex_mem_if.exmem exm
);

import cpu_types_pkg::*;

// Passes memory and writeback signals

always_ff (posedge clk, negedge nrst) begin
    if (~nrst) begin
        exm.pc_out <= 0;
        exm.branchPCand_out <= 0;
        exm.branchPCadder_out <= 0;
        exm.jumpPCadder_out <= 0;
        exm.jumpPCsrc_out <= 0;

        // memory signals
        exm.rdat2_out <= 0;
        exm.alu_out_out <= 0;
        dx.dREN_out <= 0;
        dx.dWEN_out <=0;

        // writeback signals        
        exm.imm_out <= 0;
        exm.MemtoReg_out <= 0;
    end
    else if (dx.ihit) begin
        exm.pc_out <= exm.pc_in;
        exm.branchPCand_out <= exm.branchPCand_in;
        exm.branchPCadder_out <= exm.branchPCadder_in;
        exm.jumpPCadder_out <= exm.jumpPCadder_in;
        exm.jumpPCsrc_out <= exm.jumpPCsrc_in

        // memory signals
        exm.rdat2_out <= exm.rdat2_in;
        exm.alu_out_out <= exm.alu_out_in;
        exm.dREN_out <= exm.dREN_in;
        exm.dWEN_out <= exm.dREN_in;

        // writeback signals        
        exm.imm_out <= exm.imm_in;
        exm.MemtoReg_out <= exm.MemtoReg_in;

    end
end

endmodule