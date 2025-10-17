// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Oct  9 18:21:46 2025
// Host        : cparch13.ecn.purdue.edu running 64-bit Oracle Linux Server release 8.10
// Command     : write_verilog -force -mode synth_stub
//               /home/ecegridfs/a/437mg063/ece437/processors/build/system_fpga.gen/sources_1/ip/mem_debug_vio/mem_debug_vio_stub.v
// Design      : mem_debug_vio
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2023.2" *)
module mem_debug_vio(clk, probe_in0, probe_out0)
/* synthesis syn_black_box black_box_pad_pin="probe_in0[31:0],probe_out0[13:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [31:0]probe_in0;
  output [13:0]probe_out0;
endmodule
