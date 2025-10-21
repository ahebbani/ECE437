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

  // iwait depends on iREN and dWEN and dREN and ramstate
  // iwait tells the CPU to wait while iload is getting the next instruction
  // iwait is high meaning cpu has to wait for next instruction
  // iwait is high when :
  // ramstate is busy
  // dREN is high because when data is being read you cannot process another instruction
  // dWEN is high for the same reason
  assign ccif.iwait = (ccif.dREN || ccif.dWEN || ccif.ramstate != ACCESS);

  // dwait is low when dREN or dWEN is high
  // only wait for data when data is being read or written to
  // depends on ramstate?
  assign ccif.dwait = ~(ccif.dREN || ccif.dWEN) || ccif.ramstate != ACCESS;

  // iload loads instruction to the cpu on the next negedge cpu clock cycle of when instruction is asserted
  assign ccif.iload = ccif.iREN == 1 ? ccif.ramload : '0;

  // dload is asserted on the next negedge cpu clock cycle of daddr when lw instruction
  assign ccif.dload = ccif.dREN == 1 ? ccif.ramload : 0;

  // ramstore is same as daddr when store word
  assign ccif.ramstore = ccif.dstore;
  
  // ramaddr gets ram address of next data if data write or read is asserted
  // next instruction if not asserted
  assign ccif.ramaddr = (ccif.dREN == 1 || ccif.dWEN == 1) ? ccif.daddr : ccif.iaddr;

  // ramWEN is the same as data write asserted
  assign ccif.ramWEN = ccif.dWEN;

  // ramREN allows reading of next data or instruction but not writing
  assign ccif.ramREN = (ccif.dREN || ccif.iREN) & ~ccif.dWEN;



endmodule
