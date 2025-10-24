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

// Latched miss address to keep a stable request during allocation
word_t miss_addr;

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
            if (dcif.imemREN) begin
                if (cache_mem[addr_fields.idx].valid && cache_mem[addr_fields.idx].tag == addr_fields.tag) begin
                    dcif.ihit = 1;
                    dcif.imemload = cache_mem[addr_fields.idx].data;
                    next_state = COMPARE_TAG;
                end 
                else next_state = ALLOCATE;
            end
            else next_state = COMPARE_TAG;
        end

        ALLOCATE: begin
            // Keep request asserted until memory returns
            cif.iREN = 1'b1;
            cif.iaddr = dcif.imemaddr;

            if (cif.iwait) next_state = ALLOCATE;
            else begin
                // Return this cycle
                if (dcif.imemREN) begin
                    dcif.ihit= 1'b1;
                    dcif.imemload = cif.iload;
                end
                next_state = COMPARE_TAG;
            end
        end
    endcase
end

always_ff @(posedge clk, negedge nrst) begin
    if (~nrst) begin
        curr_state <= COMPARE_TAG;
        miss_addr <= 0;
        cache_mem <= '{default: '{valid: 0, tag: 0, data: 0}};
    end 
    else begin
        curr_state <= next_state;

        // Latch miss address when we start allocation
        if (curr_state == COMPARE_TAG && next_state == ALLOCATE) miss_addr <= dcif.imemaddr;

        // On memory return, replace the cache block
        if (curr_state == ALLOCATE && !cif.iwait) begin
            icachef_t miss_fields;
            miss_fields = icachef_t'(miss_addr);
            cache_mem[miss_fields.idx].valid <= 1;
            cache_mem[miss_fields.idx].tag <= miss_fields.tag;
            cache_mem[miss_fields.idx].data <= cif.iload;
        end
    end
end

endmodule
