/*
  Eric Villasenor
  evillase@gmail.com

  this block is the coherence protocol
  and artibtration for ram
*/

// interface include
`include "cache_control_if.vh"
`include "cpu_ram_if.vh"

// memory types
`include "cpu_types_pkg.vh"

module memory_control (
  input CLK, nRST,
  cache_control_if.cc ccif
);
  // type import
  import cpu_types_pkg::*;

  int cycle;

always_ff @(posedge CLK or negedge nRST) begin
    if(!nRST) cycle <= 0;
    else cycle <= cycle + 1;
end

  // number of cpus for cc
  parameter CPUS = 2;

  // Bus Controller
  typedef enum { IDLE, SNOOP, CHECK, MEM_ACCESS1, MEM_ACCESS2, CTOC1, CTOC2, DCTOC1, DCTOC2, IFETCH, WRITE1, WRITE2 } bus_states;
  bus_states curr_state, next_state;
  /*
    LRU convention and indexing notes

    - `lru` holds the index of the core that is (or will be) serviced for the
      current transaction. The controller uses `lru` to refer to the requester
      (the core being serviced) and `~lru` to refer to the other core (the
      snooped core).

    - `next_lru` is computed in the combinational next-state logic and is
      applied to `lru` on the rising clock edge together with the state
      transition. This ensures that when the controller actually enters the
      SNOOP/CHECK/CTOC states (after the clock edge) the `lru` value matches
      the core being serviced.

    - outputs in the SNOOP/CHECK state index signals using
      `lru` and `~lru`. For example the SNOOP action does:
         ccsnoopaddr[~lru] = daddr[lru];
      which places the requester's address (`daddr[lru]`) onto the snoop input
      of the other core (`ccsnoopaddr[~lru]`). To make this mapping correct the
      controller must set `next_lru` to the requester before the state change,
      so that on the next clock `lru` is the requester index.

    Example:
      - Initial: `lru == 0` (core 0 is the next-to-be-serviced).
      - Core 1 issues a load (`dREN[1] == 1`). The IDLE logic sees
        `dREN[~lru]` (i.e. `dREN[1]`) and takes the branch that sets
        `next_state = SNOOP` and `next_lru = ~lru` (i.e. `1`).
      - On the rising clock: `curr_state` becomes `SNOOP` and `lru` updates to
        `1`. Now the SNOOP outputs drive:
           ccsnoopaddr[~lru] = daddr[lru];
        which evaluates to `ccsnoopaddr[0] = daddr[1]` — the controller sends
        core 1's requested address to core 0 to snoop, as intended.
  */
  logic next_lru, lru;

  always_comb begin
    next_state = curr_state;
    next_lru = lru;
    case(curr_state) 
      IDLE: begin
        if (ccif.dWEN[lru]) next_state = WRITE1;
        else if (ccif.dWEN[~lru])begin
          next_state = WRITE1; 
          next_lru = ~lru;
        end
        else if (ccif.dREN[lru]) next_state = SNOOP;
        else if (ccif.dREN[~lru]) begin
          next_state = SNOOP;
          next_lru = ~lru;
        end
        else if (ccif.iREN[lru]) next_state = IFETCH;
        else if (ccif.iREN[~lru]) begin
          next_state = IFETCH;
          next_lru = ~lru;
        end
        else next_state = IDLE;
      end
      SNOOP: next_state = CHECK;
      CHECK: begin
        if (ccif.cctrans[~lru] && ~ccif.ccwrite[~lru]) next_state = CTOC1;
        else if (ccif.cctrans[~lru] && ccif.ccwrite[~lru]) next_state = DCTOC1;
        else if (~ccif.cctrans[~lru]) next_state = MEM_ACCESS1;
      end
      MEM_ACCESS1: begin
        if (ccif.ramstate == ACCESS) next_state = MEM_ACCESS2;
        else next_state = MEM_ACCESS1;
      end
      MEM_ACCESS2: begin
        if (ccif.ramstate == ACCESS) begin
          next_state = IDLE;
          next_lru = ~lru;
        end
        else next_state = MEM_ACCESS2;
      end
      CTOC1: next_state = CTOC2;
      CTOC2: begin
          next_state = IDLE;
          next_lru = ~lru;
      end
      DCTOC1: begin
        if (ccif.ramstate == ACCESS) next_state = DCTOC2;
        else next_state = DCTOC1;
      end
      DCTOC2: begin
        if (ccif.ramstate == ACCESS) begin
          next_state = IDLE;
          next_lru = ~lru;
        end
        else next_state = DCTOC2;
      end
      IFETCH: begin
        if (ccif.ramstate == ACCESS) begin
          next_state = IDLE;
          next_lru = ~lru;
        end
        else next_state = IFETCH;
      end
      WRITE1: begin
        if (ccif.ramstate == ACCESS) next_state = WRITE2;
        else next_state = WRITE1;
      end
      WRITE2: begin
        if (ccif.ramstate == ACCESS) begin
          next_state = IDLE;
          next_lru = ~lru;
        end
        else next_state = WRITE2;
      end
    endcase
  end

  always_comb begin
    ccif.ccsnoopaddr = 0;
    ccif.ccwait = 0;
    ccif.ccinv = 0;
    ccif.dload = 0;
    ccif.iload = 0;
    ccif.ramaddr = 0;
    ccif.ramstore = 0;
    ccif.ramREN = 0;
    ccif.ramWEN = 0;
    case (curr_state)
      SNOOP: begin
        ccif.ccsnoopaddr[~lru] = ccif.daddr[lru];
        ccif.ccwait[~lru] = 1'b1;
      end
      CHECK: begin
        ccif.ccinv[~lru] = ccif.ccwrite[lru];
        ccif.ccsnoopaddr[~lru] = ccif.daddr[lru];
        ccif.ccwait[~lru] = 1'b1;
      end
      MEM_ACCESS1: begin
        ccif.ramREN = 1'b1;
        ccif.ramaddr = ccif.daddr[lru];
        if (ccif.ramstate == ACCESS) begin
          ccif.dload[lru] = ccif.ramload;
        end
      end
      MEM_ACCESS2: begin
        ccif.ramREN = 1'b1;
        ccif.ramaddr = ccif.daddr[lru];
        if (ccif.ramstate == ACCESS) begin
          ccif.dload[lru] = ccif.ramload;
        end
      end
      CTOC1: begin
        ccif.ccsnoopaddr[~lru] = ccif.daddr[lru];
        ccif.ccinv[~lru] = ccif.ccwrite[lru];
        ccif.dload[lru] = ccif.dstore[~lru];
        ccif.ccwait[~lru] = 1'b1;
        //ccif.dwait = 0;
      end
      CTOC2: begin
        ccif.ccsnoopaddr[~lru] = ccif.daddr[lru];
        ccif.ccinv[~lru] = ccif.ccwrite[lru];
        ccif.dload[lru] = ccif.dstore[~lru];
        ccif.ccwait[~lru] = 1'b1;
        //ccif.dwait = 0;
      end
      DCTOC1: begin

        ccif.ccsnoopaddr[~lru] = ccif.daddr[lru];
        ccif.ccinv[~lru] = ccif.ccwrite[lru];
        ccif.dload[lru] = ccif.dstore[~lru];
        ccif.ccwait[~lru] = 1'b1;

        ccif.ramWEN = 1'b1;
        ccif.ramaddr = ccif.daddr[lru];
        ccif.ramstore = ccif.dstore[~lru];
      end
      DCTOC2: begin

        ccif.ccsnoopaddr[~lru] = ccif.daddr[lru];
        ccif.ccinv[~lru] = ccif.ccwrite[lru];
        ccif.dload[lru] = ccif.dstore[~lru];
        ccif.ccwait[~lru] = 1'b1;

        ccif.ramWEN = 1'b1;
        ccif.ramaddr = ccif.daddr[lru];
        ccif.ramstore = ccif.dstore[~lru];
      end
      IFETCH: begin
        ccif.ramREN = 1'b1;
        ccif.ramaddr = ccif.iaddr[lru];
        if (ccif.ramstate == ACCESS) begin
          ccif.iload[lru] = ccif.ramload;
        end
      end
      WRITE1: begin
        ccif.ramWEN = 1'b1;
        ccif.ramaddr = ccif.daddr[lru];
        ccif.ramstore = ccif.dstore[lru];

      end
      WRITE2: begin
        ccif.ramWEN  = 1'b1;
        ccif.ramaddr = ccif.daddr[lru];
        ccif.ramstore = ccif.dstore[lru];
      end
    endcase
  end

  // iwait, dwait logic
  always_comb begin
      ccif.iwait = '1;
      ccif.dwait = '1;

      case (curr_state)
          IDLE: begin
          end
          IFETCH: begin
              ccif.iwait[lru] = (ccif.ramstate != ACCESS);
              ccif.iwait[~lru] = 1'b1;
          end
          MEM_ACCESS1, MEM_ACCESS2: ccif.dwait[lru] = (ccif.ramstate != ACCESS);
          CTOC1, CTOC2: ccif.dwait = '0;
          DCTOC1, DCTOC2: begin
             ccif.dwait[lru] = (ccif.ramstate != ACCESS);
             ccif.dwait[~lru] = (ccif.ramstate != ACCESS);
          end
          WRITE1, WRITE2: ccif.dwait[lru] = (ccif.ramstate != ACCESS);
      endcase
  end

  always_ff @(posedge CLK, negedge nRST) begin
    if (~nRST) begin
      curr_state <= IDLE;
      lru <= 0;
    end
    else begin
      curr_state <= next_state;
      lru <= next_lru;
    end
  end


endmodule
