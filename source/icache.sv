`include "cpu_types_pkg.vh"
`include "datapath_cache_if.vh"
`include "caches_if.vh"

module icache (
    input logic clk, nrst,
    datapath_cache_if.icache dcif,
    caches_if.icache cif
);

import cpu_types_pkg::*;
// there was a case when there was a lw followed by an add followed by an xor
// the lw was in writeback, and the xor was in execute, but the add kicks out the lw before the value was forwarded when triggering on dhit

// Decode imemaddr
icachef_t addr_fields;
assign addr_fields = icachef_t'(dcif.imemaddr);

// 64 byte direct mapped cache
icache_frame cache_mem[15:0];    

// FSM
typedef enum {COMPARE_TAG, ALLOCATE} icache_state;
icache_state curr_state, next_state;

always_comb begin
    dcif.ihit = 0;
    dcif.imemload = 0;
    cif.iREN = 0;
    cif.iaddr = 0;

    next_state = curr_state;

    case (curr_state)
        COMPARE_TAG: begin
            dcif.ihit = 0;
            dcif.imemload = 0;
            if (cache_mem[addr_fields.idx].valid && cache_mem[addr_fields.idx].tag == addr_fields.tag) begin
                dcif.ihit = 1;
                dcif.imemload = cache_mem[addr_fields.idx].data;
                next_state = COMPARE_TAG;
            end
            next_state = ALLOCATE;
        end
        ALLOCATE: begin
            cif.iREN = 1;
            cif.iaddr = dcif.imemaddr;
            if (cif.iwait) next_state = ALLOCATE;
            next_state = COMPARE_TAG;
        end
    endcase
end

always_ff @(posedge clk, negedge nrst) begin
    if (~nrst) curr_state <= COMPARE_TAG;
    else curr_state <= next_state;
end

endmodule