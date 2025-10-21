`include "cpu_types_pkg.vh"
`include "datapath_cache_if.vh"
`include "caches_if.vh"

module icache (
    input logic clk, nrst,
    datapath_cache_if.dc dcif,
    caches_if.cif
);

// there was a case when there was a lw followed by an add followed by an xor
// the lw was in writeback, and the xor was in execute, but the add kicks out the lw before the value was forwarded when triggering on dhit

// Decode imemaddr
logic [1:0] byte_offset = dcif.imemaddr[1:0];
logic [4:0] index = dcif.imemaddr[5:2];
logic [25:0] tag = dcif.imemaddr[31:6];


// FSM
typedef enum {COMPARE_TAG, ALLOCATE} icache_state;
icache_state curr_state, next_state;

case (curr_state)
    COMPARE_TAG: begin
        if (icuif.valid && icuif.hit) begin
            valid = ;
            tag = ;
        end
        next_state = ;
    end
    ALLOCATE: begin
        cif.iREN = 1;
        cif.iaddr = ;
        if (iwait) next_state = ALLOCATE;
        next_state = COMPARE_TAG;
    end
endcase


// 64 byte direct mapped cache
word_t [15:0] icache;


endmodule