// data path interface
`include "mem_wb_if.vh"

module mem_wb (
    input logic clk, nrst,
    mem_wb_if.memwb mwb
);

import cpu_types_pkg::*;

// Passes writeback signals

always_ff @(posedge clk, negedge nrst) begin
    if (~nrst) begin
        mwb.pc_out <= 0;

        // writeback signals        
        mwb.imm_out <= 0;
        mwb.MemtoReg_out <= 0;
        mwb.dmemload_out <= 0;
        mwb.alu_out_out <= 0;
        mwb.rd_out <= 0;
        mwb.RegWEN_out <= 0;
        mwb.halt_out <= 0;
        mwb.inst_out <= 0;
    end
    // else if (mwb.dhit) begin
        
    //     mwb.pc_out <= exm.pc_in;

    //     // writeback signals        
    //     mwb.imm_out <= mwb.imm_in;
    //     mwb.MemtoReg_out <= mwb.MemtoReg_in;
    //     mwb.alu_out_out <= mwb.alu_out_in;
    //     mwb.rd_out <= mwb.rd_in;
    //     mwb.RegWEN_out <= mwb.RegWEN_in;
    //     mwb.halt_out <= mwb.halt_in;
    //     mwb.inst_out <= mwb.inst_in;
    // end
    else if (mwb.ihit || mwb.dhit) begin
        mwb.dmemload_out <= mwb.dmemload_in;
        mwb.pc_out <= mwb.pc_in;

        // writeback signals        
        mwb.imm_out <= mwb.imm_in;
        mwb.MemtoReg_out <= mwb.MemtoReg_in;
        mwb.alu_out_out <= mwb.alu_out_in;
        mwb.rd_out <= mwb.rd_in;
        mwb.RegWEN_out <= mwb.RegWEN_in;
        mwb.dmemload_out <= mwb.dmemload_in;
        mwb.halt_out <= mwb.halt_in;
        mwb.inst_out <= mwb.inst_in;
    end
end

endmodule