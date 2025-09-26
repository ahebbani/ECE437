// data path interface
`include "request_unit_if.vh"
`include "pc_if.vh"
`include "if_id_if.vh"


// Carries the instruction from the fetch to the decode stage
module if_id (
    input logic clk, nrst,
    if_id_if.ifid fdf
);

import cpu_types_pkg::*;

always_ff @(posedge clk, negedge nrst) begin
    if (~nrst) begin
        fdf.pc_out <= 0;
        fdf.inst_out <= 0;
    end
    else if (fdf.ihit && ~fdf.stall) begin
        fdf.pc_out <= fdf.pc_in;
        fdf.inst_out <= fdf.inst_in;
    end
end

endmodule