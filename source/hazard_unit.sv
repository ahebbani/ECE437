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

// // Data and control hazard detection
// always_comb begin
//     huif.stall = 0;
//     huif.flush = 0;

//     // Control hazard
//     // if taking the branch, then flush if/id and id/ex regs
//     if (huif.inst_ex[6:0] == opcode_t'(BTYPE) && huif.branchtaken) begin 
//         huif.flush = 1;
//     end

//     // Load use hazard
//     // if doing a load word, and if the next instruction depends on the loaded word, stall the if/id and id/ex regs
//     if (huif.rd_ex != 5'd0 && huif.inst_ex[6:0] == ITYPE_LW && (huif.rs1_id == huif.rd_ex || huif.rs2_id == huif.rd_ex)) begin
//         huif.stall = 1; 
//     end
// end



//Load-use: in ex there is a load that will write dxo_rd next, and ID needs that reg value
logic load_use = huif.dxo_isLoad && huif.dxo_RegWEN && (huif.dxo_rd != 5'd0) && (((huif.id_rs1 == huif.dxo_rd)) || ((huif.id_rs2 == huif.dxo_rd)));

//mem wait: memory is busy
logic mem_wait;
assign mem_wait = huif.mem_active && !huif.dhit;

//Control Hazard - 3 bubbles

typedef enum logic [1:0] {
    FLSH0,
    FLSH1,
    FLSH2, 
    FLSH3
}flshState_t;

flshState_t curr_flushCnt, nxt_flushCnt;

always_comb begin
    nxt_flushCnt = curr_flushCnt;

    if(huif.exec_branch_taken)
    begin
        nxt_flushCnt = FLSH2;   //set to 2 when branch is taken
    end
    else if(curr_flushCnt != FLSH0)
    begin
        nxt_flushCnt = flshState_t'(curr_flushCnt - 2'd1);    //count down
    end
end

always_ff @(posedge clk or negedge nrst)
begin
    if(!nrst)
    begin
        curr_flushCnt <= FLSH0;
    end
    else
    begin
        curr_flushCnt <= nxt_flushCnt;
    end
end

logic flushControl = (curr_flushCnt != FLSH0);
logic pc_hold;

always_comb
begin
    huif.freeze = 1'b0;
    huif.flush = 1'b0;

    huif.fdf_stall = 1'b0;
    huif.dx_stall = 1'b0;

    huif.fdf_flush = 1'b0;
    huif.dx_flush = 1'b0;

    huif.pc_new = '0;
    huif.pc_en = 1'b1;

    if(huif.exec_branch_taken)    //redirect on same cycle as branch resolution
    begin
        huif.pc_new = huif.exec_new_target;

        //immediately flush
        huif.flush = 1'b1;
        huif.fdf_flush = 1'b1;    //flush if/id
        huif.dx_flush = 1'b1;     //flush id/exec
    end
    else if(flushControl)
    begin
        huif.flush = 1'b1;
        huif.fdf_flush = 1'b1;    //flush if/id
        huif.dx_flush = 1'b1;     //flush id/exec
    end
    else if(mem_wait)//Structural Hazard: memory stall
    begin
        huif.freeze = 1'b1;
        huif.fdf_stall = 1'b1;

        huif.dx_stall  = 1'b1;
        huif.dx_flush  = 1'b1;
    end
    else if(load_use)//Data Hazard: load/use stall
    begin
         huif.freeze = 1'b1;
         huif.fdf_stall = 1'b1;
         huif.dx_stall  = 1'b1;
         huif.dx_flush  = 1'b1;
    end

    pc_hold = (!flushControl && !huif.exec_branch_taken && huif.freeze);
    huif.pc_en  = !pc_hold; 

end



endmodule