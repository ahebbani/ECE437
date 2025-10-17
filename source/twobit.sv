`include "cpu_types_pkg.vh"
`include "twobit_if.vh"

// Simple direct-mapped BTB + 2-bit saturating counter BHT
// - No predictions for jumps (JAL/JALR); only conditional branches (BTYPE)
// - Initial state: strongly taken (2'b11)
// - Index: PC[9:2] -> 256 entries
// - Tag: the upper bits of PC excluding index and byte offset
module twobit_bpu (
  input  logic CLK, nRST,
  twobit_if.bpu bpuif
);
  import cpu_types_pkg::*;

  localparam ENTRIES = 256;
  typedef logic [7:0] idx_t; // PC[9:2]
  typedef struct packed {
    logic        valid;
    logic [WORD_W-1-8-2:0] tag; // tag = PC[31:10]
    word_t       target;
  } btb_entry_t;

  // Storage
  btb_entry_t btb   [ENTRIES];
  logic [1:0] bht   [ENTRIES]; // 2-bit counters

  // Helpers
  function automatic idx_t idx_of(word_t pc);
    return pc[9:2];
  endfunction

  function automatic logic [WORD_W-1-8-2:0] tag_of(word_t pc);
    return pc[31:10];
  endfunction

  // Lookup (combinational)
  idx_t f_idx;
  logic [WORD_W-1-8-2:0] f_tag;
  btb_entry_t f_ent;
  logic hit;
  always_comb begin
    f_idx = idx_of(bpuif.fetch_pc);
    f_tag = tag_of(bpuif.fetch_pc);
    f_ent = btb[f_idx];
    hit = f_ent.valid && (f_ent.tag == f_tag);

    bpuif.predict_hit = hit;
    bpuif.predict_taken = hit && bht[f_idx][1]; // MSB==1 => taken prediction
    bpuif.predict_target = f_ent.target;
  end

  // Reset/init and update
  idx_t u_idx; logic [WORD_W-1-8-2:0] u_tag;
  always_ff @(posedge CLK, negedge nRST) begin
    if (!nRST) begin
      for (int i = 0; i < ENTRIES; i++) begin
        btb[i].valid <= 1'b0;
        btb[i].tag   <= '0;
        btb[i].target<= '0;
        bht[i]       <= 2'b11; // strongly taken
      end
    end else begin
      if (bpuif.update_en && bpuif.update_is_branch) begin
        u_idx = idx_of(bpuif.update_pc);
        u_tag = tag_of(bpuif.update_pc);

        // Update BTB when branch is taken (allocate/update)
        if (bpuif.update_taken) begin
          btb[u_idx].valid  <= 1'b1;
          btb[u_idx].tag    <= u_tag;
          btb[u_idx].target <= bpuif.update_target;
        end
        // Do not invalidate on not-taken (common policy)

        // Update BHT (2-bit saturating)
        unique case (bht[u_idx])
          2'b00: bht[u_idx] <= bpuif.update_taken ? 2'b01 : 2'b00; // strong not-taken
          2'b01: bht[u_idx] <= bpuif.update_taken ? 2'b10 : 2'b00; // weak not-taken
          2'b10: bht[u_idx] <= bpuif.update_taken ? 2'b11 : 2'b01; // weak taken
          2'b11: bht[u_idx] <= bpuif.update_taken ? 2'b11 : 2'b10; // strong taken
        endcase
      end
    end
  end
endmodule
