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
  parameter CPUS = 1;

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
  typedef enum { IDLE, SNOOP, CHECK, MEM_ACCESS1, MEM_ACCESS2, CTOC1, CTOC2, DCTOC1, DCTC2, IFETCH, WRITE1, WRITE2 } bus_states;
  bus_states curr_state, next_state;
  logic next_lru, lru;
  logic requesting_core;

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

  logic [1:0] requesting_core;
  always_comb begin
    if (dREN[1] || dWEN[1] || iREN[1]) next_requesting_core[1] = 1;
    if (dREN[0] || dWEN[0] || iREN[0]) next_requesting_core[0] = 1;
    if (requesting_core[0] && requesting_core[1]) next_lru = lru;
    else next_lru = requesting_core[1];
  end

  always_comb begin
    case(curr_state) 
      IDLE: begin
        if (dWEN[lru]) next_state = SNOOP;
        else if (dWEN[~lru])begin
          next_state = SNOOP; 
          next_lru = ~lru;
        end
        else if (dREN[lru]) next_state = WRITE1;
        else if (dREN[~lru]) begin
          next_state = WRITE1;
          next_lru = ~lru;
        end
        else if (iREN[lru]) next_state = IFETCH;
        else if (iREN[~lru]) begin
          next_state = IFETCH;
          next_lru = ~lru;
        end
        else next_state = IDLE;
      end
      SNOOP: next_state = CHECK;
      CHECK: begin
        if (cctrans && ccwrite) next_state = CTOC1;
        else if (cctrans && ~ccwrite) next_state = DCTOC1;
        else if (~cctrans) next_state = MEM_ACCESS1;
      end
      MEM_ACCESS1: begin
        if (ramstate == ACCESS) next_state = MEM_ACCESS2;
        else next_state = MEM_ACCESS1;
      end
      MEM_ACCESS2: begin
        if (ramstate == ACCESS) begin
          next_state = IDLE;
          // next_lru = ~lru;
        end
        else next_state = MEM_ACCESS2;
      end
      CTOC1: next_state = CTOC2;
      CTOC2: begin
        if (ramstate == ACCESS) begin
          next_state = IDLE;
          // next_lru = ~lru;
        end
        else next_state = CTOC2;
      end
      DCTOC1: begin
        if (ramstate == ACCESS) next_state = DCTOC2;
        else next_state = DCTOC1;
      end
      DCTOC2: begin
        if (ramstate == ACCESS) begin
          next_state = IDLE;
          // next_lru = ~lru;
        end
        else next_state = DCTOC2;
      end
      IFETCH: begin
        if (ramstate == ACCESS) begin
          next_state = IDLE;
          // next_lru = ~lru;
        end
        else next_state = IFETCH;
      end
      WRITE1: begin
        if (ramstate == ACCESS) next_state = WRITE2;
        else next_state = WRITE1;
      end
      WRITE2: begin
        if (ramstate == ACCESS) begin
          next_state = IDLE;
          // next_lru = ~lru;
        end
        else next_state = WRITE2;
      end
    endcase
  end

  always_comb begin
    case (curr_state)
      SNOOP: begin
        ccsnoopaddr[~lru] = daddr[lru];
        ccwait[~lru] = 1;
      end
      CHECK: begin
        ccinv[lru] = ccwrite[lru];
      end
      MEM_ACCESS1: begin
        dload[lru] = ramload;
        ramaddr = daddr[~lru];
      end
      MEM_ACCESS2: begin
        dload[lru] = ramload;
        ramaddr = daddr[lru];
      end
      CTOC1: begin
        dload[lru] = dstore[~lru];
      end
      CTOC2: begin
        dload[lru] = dstore[~lru];
      end
      DCTOC1: begin
        dload[lru] = dstore[~lru];
        ramaddr = daddr[lru];
        ramstore = dstore[lru];
      end
      DCTOC2: begin
        dload[lru] = dstore[~lru];
        ramaddr = daddr[lru];
        ramstore = dstore[lru];
      end
      IFETCH: begin
        iload[lru] = ramload;
        ramaddr= iaddr[lru]
      end
      WRITE1: begin
        ramaddr = daddr[lru];
        ramstore = dstore[lru];
      end
      WRITE2: begin
        ramaddr = daddr[lru];
        ramstore = dstore[lru];
      end
    endcase
  end

  always_ff @(posedge clk, negedge nrst) begin
    if (~nrst) begin
      curr_state <= IDLE;
      lru <= 0;
    end
    else begin
      curr_state <= next_state;
      lru <= next_lru;
    end
  end


endmodule
