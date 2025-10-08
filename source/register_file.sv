`include "register_file_if.vh"
`include "cpu_types_pkg.vh"

module register_file (
    input logic clk, nrst,
    register_file_if.rf rfif
);

import cpu_types_pkg::*;

word_t [31:0] register, next_register;

always_comb begin : write
    next_register = register;
    if (rfif.WEN) begin
        if (rfif.wsel != 0) begin
            next_register[rfif.wsel] = rfif.wdat; 
        end
    end
end

always_comb begin: read
    rfif.rdat1 = register[rfif.rsel1];
    rfif.rdat2 = register[rfif.rsel2];
end

always_ff @( negedge clk, negedge nrst ) begin
    if (!nrst) begin
        register <= '0;
    end
    else begin
        register <= next_register;
    end
end


endmodule