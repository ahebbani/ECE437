// data path interface
`include "id_ex_if.vh"

module if_id (
    id_ex_if.idex dx
);

import cpu_types_pkg::*;

// Flush should be high if there is a branch or jump instruction. it removes the previous two instrutions before the execute stage
// Execute stage will find out whether we are falling through the branch or not
//

always_ff (posedge clk, negedge nrst) begin
    if (~nrst) begin
        dx.pc_out <= 0;
        dx.inst_out <=0;
        dx.rdat1_out <= 0;
        dx.rdat2_out <= 0;
        dx.imm_out <= 0;
        dx.wdat_out <=0;
        dx.dREN_out <= 0;
        dx.dWEN_out <=0;
        dx.iREN_out <= 0;
        dx.branchPCSrc_out <= 0;
        dx.jumpPCsrc_out <=0;
        dx.regWEN_out <= 0;
        dx.ALUSrc1_out <= 0;
        dx.ALUSrc2_out <= 0;
        dx.aluop_out <= 0;
        dx.MemtoReg_in <= 0;
    end
    // else if (dx.flush) begin
    //     dx.pc_out <= 0;
    //     dx.inst_out <=0;
    //     dx.rdat1_out <= 0;
    //     dx.rdat2_out <= 0;
    //     dx.imm_out <= 0;
    //     dx.wdat_out <=0;
    //     dx.dREN_out <= 0;
    //     dx.dWEN_out <=0;
    //     dx.iREN_out <= 0;
    //     dx.branchPCSrc_out <= 0;
    //     dx.jumpPCsrc_out <=0;
    //     dx.regWEN_out <= 0;
    //     dx.ALUSrc1_out <= 0;
    //     dx.ALUSrc2_out <= 0;
    //     dx.aluop_out <= 0;
    //     dx.MemtoReg_in <= 0;
    // end
    else if (dx.ihit) begin
        dx.pc_out <= dx.pc_in;
        dx.inst_out <= dx.inst_in;
        dx.rdat1_out <= dx.rdat1_in;
        dx.rdat2_out <= dx.rdat2_in;
        dx.imm_out <= dx.imm_in;
        dx.wdat_out <= dx.wdat_in;
        dx.dREN_out <= dx.dREN_in;
        dx.dWEN_out <= dx.dWEN_in;
        dx.iREN_out <= dx.iREN_in;
        dx.branchPCSrc_out <= dx.branchPCSrc_in;
        dx.jumpPCsrc_out <= dx.jumpPCsrc_in;
        dx.regWEN_out <= dx.regWEN_in;
        dx.ALUSrc1_out <= dx.ALUSrc1_in;
        dx.ALUSrc2_out <= dx.ALUSrc2_in;
        dx.aluop_out <= dx.aluop_in;
        dx.MemtoReg_in <= dx.MemtoReg_in;
    end
end

endmodule