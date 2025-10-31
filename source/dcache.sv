`include "cpu_types_pkg.vh"
`include "datapath_cache_if.vh"
`include "caches_if.vh"

/*
  // dcache format widths
  parameter DTAG_W    = 26;
  parameter DIDX_W    = 3;
  parameter DBLK_W    = 1;
  parameter DBYT_W    = 2;
  parameter DWAY_ASS  = 2;

    // dcache format type
  typedef struct packed {
    logic [DTAG_W-1:0]  tag;
    logic [DIDX_W-1:0]  idx;
    logic [DBLK_W-1:0]  blkoff;
    logic [DBYT_W-1:0]  bytoff;
  } dcachef_t;
*/

module dcache (input logic clk, nrst,
    datapath_cache_if dcif,
    caches_if cif);

import cpu_types_pkg::*;

localparam int WAYS = 2;
localparam int SETS = 8;
localparam int LEFT = 0;
localparam int RIGHT = 1;

dcache_frame frames[SETS-1:0][WAYS-1:0];
dcache_frame left, right, left_nxt, right_nxt;

//one bit LRU per set

// mru[set] = 1 : victim = left
// mru[set] = 0 : victim = right
logic [SETS-1:0] mru, mru_nxt;

dcachef_t addr;
assign addr = dcachef_t'(dcif.dmemaddr);



//FSM
typedef enum logic[3:0]
{
    IDLE,   //hits/detect miss
    RF_0, RF_1,     //refill words
    WB_0, WB_1,     //writeback victim words
    DIRTY,          //sweep all sets/ways on halt
    FL_0, FL_1,     //writeback dirty frames
    H_CNT,          //write hitCnt to 0x3100
    HALT           
}state_t;

state_t state, state_nxt;

logic[2:0] setIdx, setIdx_nxt;  //for dirty sweep iteration
logic way, way_nxt; //way = 0->left, 1->right

logic miss;
word_t hitCnt, hitCnt_reg;
logic hit_occur;


//latch values for servicing a miss
logic [2:0] m_setIdx;
logic m_way, m_write, m_off;
logic [25:0] m_tag;
word_t m_wdata;

//logic active, active_prev;
//assign active = dcif.dmemREN || dcif.dmemWEN;   //pulse high for 1st cycle of request

logic new_req, initial_hit, left_hit, right_hit;
//assign new_req = active && !active_prev;

logic jrf, jrf_nxt;

logic issued, issued_nxt;

//latches for cp
logic req_valid, req_valid_nxt;
//logic resp_ready, resp_ready_nxt;
logic req_wen, req_wen_nxt;
word_t req_addr, req_addr_nxt;
word_t req_wdata, req_wdata_nxt;

// logic cu_valid, cu_valid_nxt;
// word_t cu_data, cu_data_nxt;
// logic [2:0] cu_set, cu_set_nxt;
// logic cu_way, cu_way_nxt;
// logic cu_word_sel, cu_word_sel_nxt;
// logic [25:0] cu_tag, cu_tag_nxt;


always_comb begin       //next state transtions
    state_nxt = state;
    setIdx_nxt = setIdx;
    way_nxt = way;
    jrf_nxt = jrf;
    issued_nxt = issued;

    // req_valid_nxt = 1'b0;
    // req_wen_nxt = 1'b0;
    // req_addr_nxt = '0;
    // req_wdata_nxt = '0;
    
    // cu_valid_nxt = 1'b0;
    // cu_data_nxt = cu_data;
    // cu_set_nxt = cu_set;
    // cu_way_nxt = cu_way;
    // cu_word_sel_nxt = cu_word_sel;
    // cu_tag_nxt = cu_tag;

    casez(state)
        IDLE: begin
            //req_valid_nxt = 1'b0;
            issued_nxt = 1'b0;
           if(dcif.halt)
           begin
                jrf_nxt = 1'b0;
                setIdx_nxt = 3'b0;
                way_nxt = LEFT;  //start with left way (doesn't matter tbh)
                state_nxt = DIRTY;
           end
           else if(miss)
           begin
            jrf_nxt = 1'b1;
            if(mru[addr.idx] == RIGHT)   //victim = left way
            begin
                state_nxt = frames[addr.idx][LEFT].dirty ? WB_0 : RF_0;
            end
            else                //victim = right way
            begin
                state_nxt = frames[addr.idx][RIGHT].dirty ? WB_0 : RF_0;
            end
           end
            else
            begin
                if(jrf)
                begin
                    jrf_nxt = 1'b0;
                end
            end
        end
        RF_0: begin
            // req_valid_nxt = 1'b1;
            // req_wen_nxt = 1'b0;
            // req_addr_nxt = {m_tag, m_setIdx, 3'b0};
            
            // if(!cif.dwait) 
            // begin
            //     // cu_valid_nxt = 1'b1;
            //     // cu_data_nxt = cif.dload;
            //     // cu_set_nxt = m_setIdx;
            //     // cu_way_nxt = m_way;
            //     // cu_tag_nxt = m_tag;
            //     // cu_word_sel_nxt = 1'b0;
                
            //     state_nxt = RF_1;
            // end

        if (!issued)
        begin
            state_nxt = RF_0;
            issued_nxt = 1'b1;
        end 
        else 
            begin
            if (!cif.dwait) 
            begin
                state_nxt = RF_1;
                issued_nxt = 1'b0; 
            end 
            else 
            begin
                state_nxt = RF_0;
                issued_nxt = issued;
            end
        end
        end
        RF_1: begin
            // req_valid_nxt = 1'b1;
            // req_wen_nxt = 1'b0;
            // req_addr_nxt = {m_tag, m_setIdx, 3'b100};

            //if(!cif.dwait)
            //begin
                // cu_valid_nxt = 1'b1;
                // cu_data_nxt = cif.dload;
                // cu_set_nxt = m_setIdx;
                // cu_way_nxt = m_way;
                // cu_tag_nxt = m_tag;
                // cu_word_sel_nxt = 1'b1;

              //  state_nxt = IDLE;
            //end

            if (!issued)
            begin
                state_nxt = RF_1;
                issued_nxt = 1'b1;
            end 
            else 
            begin
                if (!cif.dwait) 
                begin
                    state_nxt = IDLE;
                    issued_nxt = 1'b0; 
                end 
                else 
                begin
                    state_nxt = RF_1;
                    issued_nxt = issued;
                end
            end
        end
        WB_0: begin
            // req_valid_nxt = 1'b1;
            // req_wen_nxt = 1'b1;
            // req_addr_nxt = {frames[m_setIdx][m_way].tag, m_setIdx, 3'b0};
            // req_wdata_nxt = frames[m_setIdx][m_way].data[0];

            //if(!cif.dwait) state_nxt = WB_1;
            if (!issued)
            begin
                state_nxt = WB_0;
                issued_nxt = 1'b1;
            end 
            else 
            begin
                if (!cif.dwait) 
                begin
                    state_nxt = WB_1;
                    issued_nxt = 1'b0; 
                end 
                else 
                begin
                    state_nxt = WB_0;
                    issued_nxt = issued;
                end
            end
            
        end
        WB_1: begin
            // req_valid_nxt = 1'b1;
            // req_wen_nxt = 1'b1;
            // req_addr_nxt = {frames[m_setIdx][m_way].tag, m_setIdx, 3'b100};
            // req_wdata_nxt = frames[m_setIdx][m_way].data[1];

            //if(!cif.dwait) state_nxt = RF_0;
            if (!issued)
            begin
                state_nxt = WB_1;
                issued_nxt = 1'b1;
            end 
            else 
            begin
                if (!cif.dwait) 
                begin
                    state_nxt = RF_0;
                    issued_nxt = 1'b0; 
                end 
                else 
                begin
                    state_nxt = WB_1;
                    issued_nxt = issued;
                end
            end
        end
        DIRTY: begin
            issued_nxt = 1'b0;
            if(frames[setIdx][way].dirty)
            begin
                state_nxt = FL_0;
            end
            else    //clean pathway
            begin
                if(way == LEFT)
                begin
                    way_nxt = RIGHT; //next way = right
                    state_nxt = DIRTY;
                end
                else
                begin
                    if(setIdx == (SETS - 1))
                    begin
                        state_nxt = H_CNT;
                    end
                    else
                    begin
                        setIdx_nxt = setIdx + 1;
                        way_nxt = LEFT;
                        state_nxt = DIRTY;
                    end
                end
            end
        end
        FL_0: begin
            // req_valid_nxt = 1'b1;
            // req_wen_nxt = 1'b1;
            // req_addr_nxt = {frames[setIdx][way].tag, setIdx, 3'b0};
            // req_wdata_nxt = frames[setIdx][way].data[0];

            //if(!cif.dwait) state_nxt = FL_1;
            if (!issued)
            begin
                state_nxt = FL_0;
                issued_nxt = 1'b1;
            end 
            else 
            begin
                if (!cif.dwait) 
                begin
                    state_nxt = FL_1;
                    issued_nxt = 1'b0; 
                end 
                else 
                begin
                    state_nxt = FL_0;
                    issued_nxt = issued;
                end
            end
        end
        FL_1: begin
            // req_valid_nxt = 1'b1;
            // req_wen_nxt = 1'b1;
            // req_addr_nxt = {frames[setIdx][way].tag, setIdx, 3'b100};
            // req_wdata_nxt = frames[setIdx][way].data[1];

            // if(!cif.dwait)
            // begin
            //     state_nxt = DIRTY;

            //     if(way == LEFT)
            //     begin
            //         way_nxt = RIGHT;
            //     end
            //     else
            //     begin
            //         if(setIdx != (SETS - 1))
            //         begin
            //             setIdx_nxt = setIdx + 1;
            //             way_nxt = LEFT;
            //         end
            //     end
            // end

            if (!issued) 
            begin
            state_nxt = FL_1;
            issued_nxt = 1'b1;
            end
            else 
            begin
            if (!cif.dwait) 
            begin
                state_nxt = DIRTY;
                issued_nxt = 1'b0;

                if(way == LEFT) 
                begin
                    way_nxt = RIGHT;
                end 
                else 
                begin
                    if(setIdx != (SETS - 1)) 
                    begin
                        setIdx_nxt = setIdx + 1;
                        way_nxt = LEFT;
                    end
                end
            end 
            else 
            begin
                state_nxt = FL_1;
                issued_nxt = issued;
            end
    end
        end
        H_CNT: begin
            // req_valid_nxt = 1'b1;
            // req_wen_nxt = 1'b1;
            // req_addr_nxt = 32'h3100;
            // req_wdata_nxt = hitCnt_reg;

           // if(!cif.dwait) state_nxt = HALT;
           if (!issued) 
           begin
                state_nxt = H_CNT;
                issued_nxt = 1'b1;
            end 
            else begin
                if (!cif.dwait) begin
                    state_nxt = HALT;
                    issued_nxt = 1'b0;
                end 
                else 
                begin
                    state_nxt = H_CNT;
                    issued_nxt = issued;
                end
            end
        end
        HALT: begin
            issued_nxt = 1'b0;
            state_nxt = HALT;
        end
    endcase

end


always_comb     //output/control comb
begin
    
    dcif.dhit = 0;
    dcif.dmemload = '0;
    dcif.flushed = (state == HALT);

    miss = 0;
    mru_nxt = mru;

    left_nxt = frames[addr.idx][LEFT];
    right_nxt = frames[addr.idx][RIGHT];

    left_hit = frames[addr.idx][LEFT].valid && (frames[addr.idx][LEFT].tag == addr.tag);
    right_hit = frames[addr.idx][RIGHT].valid && (frames[addr.idx][RIGHT].tag == addr.tag);
    //initial_hit = new_req && (left_hit || right_hit);

        if(state == IDLE)
        begin
            //transition on halt (dhit = 0)
            if(dcif.dmemREN)
            begin
                //left way hits
                if(left_hit)
                begin
                    dcif.dhit = 1'b1;
                    dcif.dmemload = frames[addr.idx][LEFT].data[addr.blkoff];
                    mru_nxt[addr.idx] = LEFT;
                end
                else if(right_hit)
                begin
                    dcif.dhit = 1'b1;
                    dcif.dmemload = frames[addr.idx][RIGHT].data[addr.blkoff];
                    mru_nxt[addr.idx] = RIGHT;
                end
                else
                begin
                    miss = 1'b1;
                end
            end
            else if(dcif.dmemWEN)
            begin
                if(left_hit)
                begin
                    dcif.dhit = 1'b1;
                    left_nxt.data[addr.blkoff] = dcif.dmemstore;
                    left_nxt.dirty = 1'b1;  
                    mru_nxt[addr.idx] = LEFT;
                end
                else if(right_hit)
                begin
                    dcif.dhit = 1'b1;
                    right_nxt.data[addr.blkoff] = dcif.dmemstore;
                    right_nxt.dirty = 1'b1;  
                    mru_nxt[addr.idx] = RIGHT;
                end
                else
                begin
                    miss = 1'b1;
                end
            end
        end

    // cif.dREN = 0;
    // cif.dWEN = 0;
    // cif.daddr = 0;
    // cif.dstore = 0;

    req_valid_nxt = 1'b0;
    req_wen_nxt = 1'b0;
    req_addr_nxt = '0;
    req_wdata_nxt = '0;
    
    case(state)
        RF_0: begin
            req_valid_nxt = 1'b1;
            req_wen_nxt = 1'b0;
            req_addr_nxt = {m_tag, m_setIdx, 3'b0};
        end
        RF_1: begin
            req_valid_nxt = 1'b1;
            req_wen_nxt = 1'b0;
            req_addr_nxt = {m_tag, m_setIdx, 3'b100};
        end
        WB_0: begin
            req_valid_nxt = 1'b1;
            req_wen_nxt = 1'b1; // write
            req_addr_nxt = {frames[m_setIdx][m_way].tag, m_setIdx, 3'b0};
            req_wdata_nxt = frames[m_setIdx][m_way].data[0];
        end
        WB_1: begin
            req_valid_nxt = 1'b1;
            req_wen_nxt = 1'b1; // write
            req_addr_nxt = {frames[m_setIdx][m_way].tag, m_setIdx, 3'b100};
            req_wdata_nxt = frames[m_setIdx][m_way].data[1];
        end
        FL_0: begin
            req_valid_nxt = 1'b1;
            req_wen_nxt = 1'b1;
            req_addr_nxt = {frames[setIdx][way].tag, setIdx, 3'b0};
            req_wdata_nxt = frames[setIdx][way].data[0];
        end
        FL_1: begin
            req_valid_nxt = 1'b1;
            req_wen_nxt = 1'b1;
            req_addr_nxt = {frames[setIdx][way].tag, setIdx, 3'b100};
            req_wdata_nxt = frames[setIdx][way].data[1];
        end
        H_CNT: begin
            req_valid_nxt = 1'b1;
            req_wen_nxt = 1'b1;
            req_addr_nxt = 32'h3100;
            req_wdata_nxt = hitCnt_reg;
        end
    endcase

    cif.dREN = req_valid && !req_wen;
    cif.dWEN = req_valid && req_wen;
    cif.daddr = req_addr;
    cif.dstore = req_wdata;


    hit_occur = (state == IDLE) && (dcif.dmemREN || dcif.dmemWEN) && !jrf && !miss;
    
    hitCnt = hitCnt_reg + (hit_occur ? 1 : 0);
end


//FSM / local register
always_ff @(posedge clk or negedge nrst)
begin
    if(!nrst)
    begin
        state <= IDLE;
        setIdx <= '0;
        way <= LEFT;

        hitCnt_reg <= '0;
        mru <= '0;

        jrf <= 1'b0;

        req_valid <= 1'b0;
        req_wen <= 1'b0;
        req_addr <= '0;
        req_wdata <= '0;

        issued <= 1'b0;

        // cu_valid <= 1'b0;
        // cu_data <= '0;
        // cu_set <= '0;
        // cu_way <= LEFT;
        // cu_word_sel <= 1'b0;
        // cu_tag <= '0;
    end
    else
    begin
        state <= state_nxt;
        setIdx <= setIdx_nxt;
        way <= way_nxt;
        issued <= issued_nxt;

        //hitCnt <= hitCnt_nxt;
        mru <= mru_nxt;

        jrf <= jrf_nxt;

        req_valid <= req_valid_nxt;
        req_wen <= req_wen_nxt;
        req_addr <= req_addr_nxt;
        req_wdata <= req_wdata_nxt;
        
        // cu_valid <= cu_valid_nxt;
        // cu_data <= cu_data_nxt;
        // cu_set <= cu_set_nxt;
        // cu_way <= cu_way_nxt;
        // cu_word_sel <= cu_word_sel_nxt;
        // cu_tag <= cu_tag_nxt;

        if(hit_occur)
        begin
            hitCnt_reg <= hitCnt_reg + 1;
        end


        //set refilled way as MRU when done
        if(state == RF_1 && !cif.dwait)
        begin
            mru[m_setIdx] <= m_way;
        end

    end
end


//miss servicing
always_ff @(posedge clk or negedge nrst)
begin
    if(!nrst)
    begin
        m_setIdx <= '0;
        m_way <= LEFT;
        m_tag <= '0;
        m_write <= '0;
        m_off <= '0;
        m_wdata <= '0;
    end
    else
    begin
        //latch as you leave idle on a miss
        if(state == IDLE && miss)
        begin
            m_setIdx <= addr.idx;
            m_way <= (mru[addr.idx] == RIGHT) ? LEFT : RIGHT;
            m_tag <= addr.tag;
            m_write <= dcif.dmemWEN;
            m_off <= addr.blkoff;
            m_wdata <= dcif.dmemstore;
        end
    end
end


//frame updates
always_ff @(posedge clk or negedge nrst)
begin
    if(!nrst)
    begin
    //invalidate and clear every frame
    for(int s = 0; s < SETS; s++)
    begin
        for(int w = 0; w < WAYS; w++)
        begin
            frames[s][w].valid <= 1'b0;
            frames[s][w].dirty <= 1'b0;
            frames[s][w].tag <= '0;
            frames[s][w].data[0] <= '0;
            frames[s][w].data[1] <= '0;
        end
    end
    end
    else
    begin

        //same cycle write-hit updates
        if(state == IDLE)
        begin
            frames[addr.idx][LEFT] <= left_nxt;
            frames[addr.idx][RIGHT] <= right_nxt;
        end

        //refill on acceptance
        // if(cu_valid)
        // begin
        //     frames[cu_set][cu_way].data[cu_word_sel] <= cu_data;

        //     if(cu_word_sel)
        //     begin
        //         frames[cu_set][cu_way].tag <= cu_tag;
        //         frames[cu_set][cu_way].valid <= 1'b1;

        //         if(m_write && cu_way == m_way && cu_set == m_setIdx)
        //         begin
        //             frames[cu_set][cu_way].data[m_off] <= m_wdata;
        //             frames[cu_set][cu_way].dirty <= 1'b1;
        //         end
        //         else
        //         begin
        //             frames[cu_set][cu_way].dirty <= 1'b0;
        //         end
        //     end
        // end
        // if(cu_valid) begin
        //     if(state == RF_0 || state == RF_1) begin
        //         frames[cu_set][cu_way].data[state == RF_0 ? 0 : 1] <= cu_data;
                
        //         if(state == RF_1) begin
        //             frames[cu_set][cu_way].tag <= cu_tag;
        //             frames[cu_set][cu_way].valid <= 1'b1;
        //             if(m_write && cu_way == m_way && cu_set == m_setIdx) begin
        //                 frames[cu_set][cu_way].data[m_off] <= m_wdata;
        //                 frames[cu_set][cu_way].dirty <= 1'b1;
        //             end else begin
        //                 frames[cu_set][cu_way].dirty <= 1'b0;
        //             end
        //         end
        //     end
        // end
        if(state == RF_0 && !cif.dwait && issued)
        begin
            frames[m_setIdx][m_way].data[0] <= cif.dload;
        end

        if(state == RF_1 && !cif.dwait && issued)
        begin
            frames[m_setIdx][m_way].data[1] <= cif.dload;

            //set rest of cacheline
            frames[m_setIdx][m_way].tag <= m_tag;
            frames[m_setIdx][m_way].valid <= 1'b1;

            if(m_write)
            begin
                frames[m_setIdx][m_way].data[m_off] <= m_wdata;
                frames[m_setIdx][m_way].dirty <= 1'b1;
            end
            else
            begin
                frames[m_setIdx][m_way].dirty <= 1'b0;
            end

        end

        if(state == WB_1 && !cif.dwait) begin
            frames[m_setIdx][m_way].valid <= 1'b0;
            frames[m_setIdx][m_way].dirty <= 1'b0;
        end

        //halt sweep invalidations
            if(state == DIRTY && !frames[setIdx][way].dirty)
            begin
                frames[setIdx][way].valid <= 1'b0;
                frames[setIdx][way].dirty <= 1'b0;
            end
            if(state == FL_1 && !cif.dwait)
            begin
                frames[setIdx][way].valid <= 1'b0;
                frames[setIdx][way].dirty <= 1'b0;
            end
    end
end


endmodule