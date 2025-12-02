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

dcachef_t saddr;
assign saddr = dcachef_t'(cif.ccsnoopaddr);

logic srh, slh;
assign srh = frames[saddr.idx][RIGHT].valid && (frames[saddr.idx][RIGHT].tag == saddr.tag);
assign slh = frames[saddr.idx][LEFT].valid && (frames[saddr.idx][LEFT].tag == saddr.tag);
 
 
 
 
//FSM
typedef enum logic[3:0]
{
    IDLE,   //hits/detect miss
    RF_0, RF_1,     //refill words
    WB_0, WB_1,     //writeback victim words
    DIRTY,          //sweep all sets/ways on halt
    FL_0, FL_1,     //writeback dirty frames
    SNOOP,
    S_WB0, S_WB1,
    HALT          
}state_t;
 
state_t state, state_nxt;
 
logic[2:0] setIdx, setIdx_nxt;  //for dirty sweep iteration
logic way, way_nxt; //way = 0->left, 1->right
 
logic miss;

state_t snoop_state, snoop_stateReg;
 
 
//latch values for servicing a miss
logic [2:0] m_setIdx;
logic m_way, m_write, m_off;
logic [25:0] m_tag;
word_t m_wdata;
 
 
logic left_hit, right_hit;
 
 
always_comb begin       //next state transtions
    state_nxt = state;
    setIdx_nxt = setIdx;
    way_nxt = way;

    casez(state)
        IDLE: begin
            if(cif.ccwait)
            begin
                state_nxt = SNOOP;
                snoop_stateReg = IDLE;
            end
           else if(dcif.halt)
           begin
                setIdx_nxt = 3'b0;
                way_nxt = LEFT;  //start with left way (doesn't matter tbh)
                state_nxt = DIRTY;
           end
           else if(miss)
           begin
            if(mru[addr.idx] == RIGHT)   //victim = left way
            begin
                state_nxt = frames[addr.idx][LEFT].dirty ? WB_0 : RF_0;
            end
            else                //victim = right way
            begin
                state_nxt = frames[addr.idx][RIGHT].dirty ? WB_0 : RF_0;
            end
           end
        end
        RF_0: begin
            if(cif.ccwait)
            begin
                state_nxt = SNOOP;
                snoop_stateReg = RF_0;
            end
            else if (!cif.dwait)
            begin
                state_nxt = RF_1;
            end
        end
        RF_1: begin
                if (!cif.dwait)
                begin
                    state_nxt = IDLE;
                end
        end
        WB_0: begin
            if(cif.ccwait)
            begin
                state_nxt = SNOOP;
                snoop_stateReg = WB_0;
            end
                else if (!cif.dwait)
                begin
                    state_nxt = WB_1;
                end
            
        end
        WB_1: begin
            if (!cif.dwait)
                begin
                    state_nxt = RF_0;
                end
        end
        DIRTY: begin
            if(cif.ccwait)
            begin
                state_nxt = SNOOP;
                snoop_stateReg = DIRTY;
            end
            else if(frames[setIdx][way].dirty)
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
                        state_nxt = HALT;
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
            if(cif.ccwait)
            begin
                state_nxt = SNOOP;
                snoop_stateReg = FL_0;
            end
            else if (!cif.dwait)
                begin
                    state_nxt = FL_1;
                end
        end
        FL_1: begin
            if (!cif.dwait)
            begin
                state_nxt = DIRTY;
 
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
        end
        HALT: begin
            state_nxt = HALT;
        end
        SNOOP:
        begin
            if(srh || slh)
            begin
                state_nxt = S_WB0;
            end
            else
            begin
                state_nxt = snoop_stateReg;
            end
        end
        S_WB0: begin
            if(!cif.dwait)
            begin 
                state_nxt = S_WB1;
            end
        end 
        S_WB1: begin
            if(!cif.dwait)
            begin 
                state_nxt = snoop_stateReg;
            end
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
    cif.cctrans = 1'b0;
    cif.ccwrite = 1'b0;

    cif.daddr = '0;
    cif.dstore = '0;
    cif.dWEN = 1'b0;
    cif.dREN = 1'b0;
 
    left_nxt = frames[addr.idx][LEFT];
    right_nxt = frames[addr.idx][RIGHT];
 
    left_hit = frames[addr.idx][LEFT].valid && (frames[addr.idx][LEFT].tag == addr.tag);
    right_hit = frames[addr.idx][RIGHT].valid && (frames[addr.idx][RIGHT].tag == addr.tag);
 
        if(state == IDLE)
        begin
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
 
    case(state)
        RF_0: begin
            cif.dWEN = 1'b0;
            cif.dREN = 1'b1;
            cif.daddr = {m_tag, m_setIdx, 3'b0};
        end
        RF_1: begin
            cif.dWEN = 1'b0;
            cif.dREN = 1'b1;
            cif.daddr = {m_tag, m_setIdx, 3'b100};
        end
        WB_0: begin
            cif.dWEN = 1'b1; // write
            cif.daddr = {frames[m_setIdx][m_way].tag, m_setIdx, 3'b0};
            cif.dstore = frames[m_setIdx][m_way].data[0];
        end
        WB_1: begin
            cif.dWEN = 1'b1; // write
            cif.daddr = {frames[m_setIdx][m_way].tag, m_setIdx, 3'b100};
            cif.dstore = frames[m_setIdx][m_way].data[1];
        end
        FL_0: begin
            cif.dWEN = 1'b1;
            cif.daddr = {frames[setIdx][way].tag, setIdx, 3'b0};
            cif.dstore = frames[setIdx][way].data[0];
        end
        FL_1: begin
            cif.dWEN = 1'b1;
            cif.daddr = {frames[setIdx][way].tag, setIdx, 3'b100};
            cif.dstore = frames[setIdx][way].data[1];
        end
    endcase

    casez(state)
        SNOOP: begin
            if(srh || slh)
            begin
                cif.ccwrite = 1'b1;
                cif.cctrans = 1'b1;
                cif.ccwrite = 1'b0;
                if(cif.ccinv)
                begin
                    cif.ccwrite = 1'b1;
                end
            end
        end
        S_WB0: begin
            if(srh)
            begin
                cif.dstore = frames[saddr.idx][RIGHT].data[0];
            end
            else
            begin
                cif.dstore = frames[saddr.idx][LEFT].data[0];
            end
        end
        S_WB1: begin
            if(srh)
            begin
                cif.dstore = frames[saddr.idx][RIGHT].data[1];
            end
            else
            begin
                cif.dstore = frames[saddr.idx][LEFT].data[1];
            end
        end
    endcase
end
 
 
//FSM / local register
always_ff @(posedge clk or negedge nrst)
begin
    if(!nrst)
    begin
        state <= IDLE;
        setIdx <= '0;
        way <= LEFT;
 
        mru <= '0;
    end
    else
    begin
        state <= state_nxt;
        setIdx <= setIdx_nxt;
        way <= way_nxt;
 
        mru <= mru_nxt;
 
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
 
       
        if(state == RF_0 && !cif.dwait)
        begin
            frames[m_setIdx][m_way].data[0] <= cif.dload;
        end
 
        if(state == RF_1 && !cif.dwait)
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

        if(state == SNOOP && cif.ccinv)
        begin
            if(srh)
            begin
                frames[saddr.idx][RIGHT].valid <= 1'b0;
                frames[saddr.idx][RIGHT].dirty <= 1'b0;
            end
            else
            begin
                frames[saddr.idx][LEFT].valid <= 1'b0;
                frames[saddr.idx][LEFT].dirty <= 1'b0;
            end
        end
    end
end
 
 
endmodule 