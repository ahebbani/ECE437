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

  // number of cpus for cc
  parameter CPUS = 2;

  // // iwait depends on iREN and dWEN and dREN and ramstate
  // // iwait tells the CPU to wait while iload is getting the next instruction
  // // iwait is high meaning cpu has to wait for next instruction
  // // iwait is high when :
  // // ramstate is busy
  // // dREN is high because when data is being read you cannot process another instruction
  // // dWEN is high for the same reason
  // assign ccif.iwait = (ccif.dREN || ccif.dWEN || ccif.ramstate == BUSY);

  // // dwait is low when dREN or dWEN is high
  // // only wait for data when data is being read or written to
  // // depends on ramstate?
  // assign ccif.dwait = ~(ccif.dREN || ccif.dWEN) || ccif.ramstate == BUSY;

  // // iload loads instruction to the cpu on the next negedge cpu clock cycle of when instruction is asserted
  // assign ccif.iload = ccif.iREN == 1 ? ccif.ramload : '0;

  // // dload is asserted on the next negedge cpu clock cycle of daddr when lw instruction
  // assign ccif.dload = ccif.dREN == 1 ? ccif.ramload : 0;

  // // ramstore is same as daddr when store word
  // assign ccif.ramstore = ccif.dstore;
  
  // // ramaddr gets ram address of next data if data write or read is asserted
  // // next instruction if not asserted
  // assign ccif.ramaddr = (ccif.dREN == 1 || ccif.dWEN == 1) ? ccif.daddr : ccif.iaddr;

  // // ramWEN is the same as data write asserted
  // assign ccif.ramWEN = ccif.dWEN;

  // // ramREN allows reading of next data or instruction but not writing
  // assign ccif.ramREN = (ccif.dREN || ccif.iREN) & ~ccif.dWEN;


  // Bus Controller
  typedef enum { IDLE, SNOOP, CHECK, MEM_ACCESS1, MEM_ACCESS2, CTOC1, CTOC2, DCTOC1, DCTOC2, IFETCH, WRITE1, WRITE2 } bus_states;
  bus_states curr_state, next_state;
  logic next_lru, lru;

  // if both cores are requesting dWEN, then prioritize the older one (lru)
  // requesting_core:
  // [0, 0] neither is requesting
  // [1, 0] core 0 is requesting
  // [0, 1] core 1 is requesting
  // [1, 1] both cores are requesting
  // if both cores are requesting, set the lru bit
  // whichever one is being serviced
  // if [0, 0], lru = 0 -> service core 0 first
  // if [1, 0], lru = 0 -> service core 0 first
  // if [0, 1], lru = 1 -> service core 1 first
  // if [1, 0] -> [1, 1], lru = 0, service core 0, then core 1
  // if [0, 1] -> [1, 1], lru = 1, service core 1, then core 0

  // NEW lru logic
  // if [0, 1] -> lru = 1
  // if [1, 0] -> lru = 0
  // if either [0, 1] or [1, 0] -> [1, 1] lru stays the same

  always_comb begin
    next_state = curr_state;
    next_lru   = lru;
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
        end
        else if (ccif.iREN[lru]) next_state = IFETCH;
        else if (ccif.iREN[~lru]) begin
          next_state = IFETCH;
        end
        else next_state = IDLE;
      end
      SNOOP: next_state = CHECK;
      CHECK: begin
        if (ccif.cctrans[~lru] && ccif.ccwrite[~lru]) next_state = CTOC1;
        else if (ccif.cctrans[~lru] && ~ccif.ccwrite[~lru]) next_state = DCTOC1;
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
        if (ccif.ramstate == ACCESS) begin
          next_state = IDLE;
          next_lru = ~lru;
        end
        else next_state = CTOC2;
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
        ccif.dload[lru] = ccif.dstore[~lru];
        ccif.ccwait[~lru] = 1'b1;
      end
      CTOC2: begin
        ccif.dload[lru] = ccif.dstore[~lru];
        ccif.ccwait[~lru] = 1'b1;
      end
      DCTOC1: begin
        ccif.ramWEN = 1'b1;
        ccif.ramaddr  = ccif.daddr[lru];
        ccif.ramstore  = ccif.dstore[~lru];
      end
      DCTOC2: begin
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
      ccif.iwait = 1;
      ccif.dwait = 1;

      case (curr_state)
          IDLE: begin
              if (ccif.dWEN[lru] || ccif.dREN[lru]) ccif.dwait[lru] = 1'b0;
              else if (ccif.dWEN[~lru] || ccif.dREN[~lru]) ccif.dwait[~lru] = 1'b0;
              else if (ccif.iREN[lru]) ccif.iwait[lru] = 1'b0;
              else if (ccif.iREN[~lru]) ccif.iwait[~lru] = 1'b0;
          end
          IFETCH: begin
              ccif.iwait[lru] = (ccif.ramstate != ACCESS);
              ccif.iwait[~lru] = 1'b1;
          end
          SNOOP, CHECK, MEM_ACCESS1, MEM_ACCESS2: ccif.dwait[lru] = (ccif.ramstate != ACCESS);
          CTOC1, CTOC2: ccif.dwait[lru] = (ccif.ramstate != ACCESS);
          DCTOC1, DCTOC2: ccif.dwait[lru] = (ccif.ramstate != ACCESS);
          WRITE1, WRITE2: ccif.dwait[lru] = (ccif.ramstate != ACCESS);
          default: begin
              // stall everything
              ccif.iwait = '1;
              ccif.dwait = '1;
          end
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
