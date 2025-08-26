`include "register_file_if.vh"
`include "cpu_types_pkg.vh"

module register_file (
    input logic clk, nrst,
    register_file_if.rf rfif
);

word_t [31:0] register, next_register;

always_comb begin : write
    if (rfif.wen) begin
        if (rfif.wsel != 0) begin
            next_register[rfif.wsel] = rfif.wdat;
        end
    end
end

always_comb begin: read
    rfif.rdat1 = register[rfif.rsel1];
    rfif.rdat2 = register[rfif.rsel2];
end

always_ff @( posedge clk, negedge nrst ) begin
    if (!nrst) begin
        register <= '0;
    end
    else begin
        register <= next_register;
    end
end


endmodule