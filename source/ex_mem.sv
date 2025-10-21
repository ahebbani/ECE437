// data path interface
`include "ex_mem_if.vh"

module ex_mem (
    input logic clk, nrst,
    ex_mem_if.exmem exm
);

import cpu_types_pkg::*;

// Passes memory and writeback signals

always_ff @(posedge clk, negedge nrst) begin
    if (~nrst || exm.flush) begin
        exm.pc_out <= 0;

        // memory signals
        exm.rdat2_out <= 0;
        exm.rdat1_out <= 0;
        exm.alu_out_out <= 0;
        exm.dREN_out <= 0;
        exm.dWEN_out <=0;
        exm.rdat2_out <= 0;
        exm.dmemREN <= 0;
        exm.dmemWEN <= 0;
        exm.dmemaddr <= 0;
        exm.halt_out <= 0;
        exm.inst_out <= 0;

        // writeback signals        
        exm.imm_out <= 0;
        exm.MemtoReg_out <= 0;
        exm.rd_out <= 0;
        exm.RegWEN_out <= 0;
    end
    else if (exm.dhit ) begin
        exm.dmemREN <= 0;
        exm.dmemWEN <= 0;
        exm.dmemaddr <= exm.alu_out_in;
    end
    else if (exm.ihit ) begin
        exm.pc_out <= exm.pc_in;

        // memory signals
        exm.rdat2_out <= exm.rdat2_in;
        exm.rdat1_out <= exm.rdat1_in;
        exm.alu_out_out <= exm.alu_out_in;
        exm.dREN_out <= exm.dREN_in;
        exm.dWEN_out <= exm.dWEN_in;
        exm.rdat2_out <= exm.rdat2_in;
        exm.dmemREN <= exm.dREN_in;
        exm.dmemWEN <= exm.dWEN_in;
        exm.halt_out <= exm.halt_in;
        exm.inst_out <= exm.inst_in;

        // writeback signals        
        exm.imm_out <= exm.imm_in;
        exm.MemtoReg_out <= exm.MemtoReg_in;
        exm.rd_out <= exm.rd_in;
        exm.RegWEN_out <= exm.RegWEN_in;
    end
end

endmodule