// Copyright (C) 2022  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Standard Edition"

// DATE "09/15/2025 18:52:59"

// 
// Device: Altera EP4CE115F29C8 Package FBGA780
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module control_unit (
	\cuif.halt ,
	\cuif.imm ,
	\cuif.rd ,
	\cuif.rs2 ,
	\cuif.rs1 ,
	\cuif.aluop ,
	\cuif.ALUSrc ,
	\cuif.iREN ,
	\cuif.dREN ,
	\cuif.dWEN ,
	\cuif.RegWEN ,
	\cuif.MemtoReg ,
	\cuif.jumpPCsrc ,
	\cuif.branchPCSrc ,
	\cuif.inst );
output 	\cuif.halt ;
output 	[31:0] \cuif.imm ;
output 	[4:0] \cuif.rd ;
output 	[4:0] \cuif.rs2 ;
output 	[4:0] \cuif.rs1 ;
output 	[3:0] \cuif.aluop ;
output 	\cuif.ALUSrc ;
output 	\cuif.iREN ;
output 	\cuif.dREN ;
output 	\cuif.dWEN ;
output 	\cuif.RegWEN ;
output 	\cuif.MemtoReg ;
output 	\cuif.jumpPCsrc ;
output 	\cuif.branchPCSrc ;
input 	[31:0] \cuif.inst ;

// Design Ports Information
// cuif.halt	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[0]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[5]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[8]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[9]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[10]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[12]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[13]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[14]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[15]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[16]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[17]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[18]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[19]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[20]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[21]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[22]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[23]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[24]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[25]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[26]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[27]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[28]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[29]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[30]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.imm[31]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rd[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rd[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rd[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rd[3]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rd[4]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rs2[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rs2[1]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rs2[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rs2[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rs2[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rs1[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rs1[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rs1[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rs1[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.rs1[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.aluop[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.aluop[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.aluop[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.aluop[3]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.ALUSrc	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.iREN	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.dREN	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.dWEN	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.RegWEN	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.MemtoReg	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.jumpPCsrc	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.branchPCSrc	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[5]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[4]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[6]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[12]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[7]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[20]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[13]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[21]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[14]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[9]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[22]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[15]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[10]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[23]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[24]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[11]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[16]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[17]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[25]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[26]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[18]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[27]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[19]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[28]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[29]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[30]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cuif.inst[31]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
wire \~ALTERA_ASDO_DATA1~~ibuf_o ;
wire \~ALTERA_ASDO_DATA1~~padout ;
wire \~ALTERA_FLASH_nCE_nCSO~~ibuf_o ;
wire \~ALTERA_FLASH_nCE_nCSO~~padout ;
wire \~ALTERA_DCLK~~padout ;
wire \~ALTERA_DATA0~~ibuf_o ;
wire \~ALTERA_DATA0~~padout ;
wire \~ALTERA_DCLK~~obuf_o ;
wire \cuif.inst[3]~input_o ;
wire \cuif.inst[4]~input_o ;
wire \cuif.inst[6]~input_o ;
wire \cuif.inst[2]~input_o ;
wire \cuif.inst[5]~input_o ;
wire \cuif.inst[1]~input_o ;
wire \cuif.inst[0]~input_o ;
wire \Decoder2~0_combout ;
wire \Decoder2~1_combout ;
wire \Decoder2~2_combout ;
wire \Decoder2~3_combout ;
wire \Selector11~0_combout ;
wire \Selector11~1_combout ;
wire \Selector11~2_combout ;
wire \cuif.inst[12]~input_o ;
wire \cuif.inst[7]~input_o ;
wire \cuif.inst[20]~input_o ;
wire \Selector11~3_combout ;
wire \Selector11~4_combout ;
wire \cuif.inst[13]~input_o ;
wire \cuif.inst[21]~input_o ;
wire \cuif.inst[8]~input_o ;
wire \Selector10~0_combout ;
wire \Selector10~1_combout ;
wire \cuif.inst[14]~input_o ;
wire \cuif.inst[9]~input_o ;
wire \cuif.inst[22]~input_o ;
wire \Selector9~0_combout ;
wire \Selector9~1_combout ;
wire \cuif.inst[23]~input_o ;
wire \cuif.inst[10]~input_o ;
wire \Selector8~0_combout ;
wire \cuif.inst[15]~input_o ;
wire \Selector8~1_combout ;
wire \Decoder2~4_combout ;
wire \Selector7~2_combout ;
wire \cuif.inst[24]~input_o ;
wire \cuif.inst[11]~input_o ;
wire \Selector7~0_combout ;
wire \Selector7~1_combout ;
wire \cuif.inst[16]~input_o ;
wire \Selector7~3_combout ;
wire \Selector4~2_combout ;
wire \Selector4~3_combout ;
wire \Selector4~5_combout ;
wire \cuif.inst[17]~input_o ;
wire \cuif.inst[25]~input_o ;
wire \Selector6~0_combout ;
wire \cuif.inst[18]~input_o ;
wire \cuif.inst[26]~input_o ;
wire \Selector5~0_combout ;
wire \cuif.inst[27]~input_o ;
wire \cuif.inst[19]~input_o ;
wire \Selector4~4_combout ;
wire \cuif.inst[28]~input_o ;
wire \Selector3~0_combout ;
wire \Selector3~1_combout ;
wire \Selector3~2_combout ;
wire \cuif.inst[29]~input_o ;
wire \Selector2~0_combout ;
wire \cuif.inst[30]~input_o ;
wire \Selector1~0_combout ;
wire \cuif.inst[31]~input_o ;
wire \Selector0~0_combout ;
wire \imm~0_combout ;
wire \imm~1_combout ;
wire \imm~2_combout ;
wire \imm~3_combout ;
wire \imm~4_combout ;
wire \imm~5_combout ;
wire \imm~6_combout ;
wire \imm~7_combout ;
wire \imm~8_combout ;
wire \Selector15~1_combout ;
wire \Decoder2~5_combout ;
wire \Equal6~0_combout ;
wire \Equal9~0_combout ;
wire \Selector14~0_combout ;
wire \Selector15~0_combout ;
wire \Selector15~2_combout ;
wire \Selector15~3_combout ;
wire \Selector15~4_combout ;
wire \Selector14~4_combout ;
wire \Equal0~0_combout ;
wire \Equal6~1_combout ;
wire \Selector14~1_combout ;
wire \Selector14~2_combout ;
wire \Selector14~3_combout ;
wire \Selector14~5_combout ;
wire \jumpPCsrc~0_combout ;
wire \Selector14~6_combout ;
wire \Selector13~2_combout ;
wire \Selector13~0_combout ;
wire \Selector13~1_combout ;
wire \Selector13~3_combout ;
wire \Selector13~4_combout ;
wire \Selector13~5_combout ;
wire \Selector13~6_combout ;
wire \Selector12~0_combout ;
wire \Selector12~1_combout ;
wire \Decoder2~6_combout ;
wire \Decoder2~7_combout ;
wire \Decoder2~8_combout ;
wire \WideOr2~0_combout ;
wire \jumpPCsrc~1_combout ;
wire \WideOr2~1_combout ;
wire \Decoder2~9_combout ;
wire \Decoder2~10_combout ;


// Location: IOOBUF_X3_Y73_N2
cycloneive_io_obuf \cuif.halt~output (
	.i(\Decoder2~1_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.halt ),
	.obar());
// synopsys translate_off
defparam \cuif.halt~output .bus_hold = "false";
defparam \cuif.halt~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y62_N23
cycloneive_io_obuf \cuif.imm[0]~output (
	.i(\Selector11~4_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [0]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[0]~output .bus_hold = "false";
defparam \cuif.imm[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y62_N16
cycloneive_io_obuf \cuif.imm[1]~output (
	.i(\Selector10~1_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [1]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[1]~output .bus_hold = "false";
defparam \cuif.imm[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y55_N23
cycloneive_io_obuf \cuif.imm[2]~output (
	.i(\Selector9~1_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [2]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[2]~output .bus_hold = "false";
defparam \cuif.imm[2]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y63_N16
cycloneive_io_obuf \cuif.imm[3]~output (
	.i(\Selector8~1_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [3]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[3]~output .bus_hold = "false";
defparam \cuif.imm[3]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X7_Y73_N16
cycloneive_io_obuf \cuif.imm[4]~output (
	.i(\Selector7~3_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [4]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[4]~output .bus_hold = "false";
defparam \cuif.imm[4]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X11_Y73_N9
cycloneive_io_obuf \cuif.imm[5]~output (
	.i(\Selector6~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [5]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[5]~output .bus_hold = "false";
defparam \cuif.imm[5]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X11_Y73_N2
cycloneive_io_obuf \cuif.imm[6]~output (
	.i(\Selector5~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [6]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[6]~output .bus_hold = "false";
defparam \cuif.imm[6]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X23_Y73_N9
cycloneive_io_obuf \cuif.imm[7]~output (
	.i(\Selector4~4_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [7]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[7]~output .bus_hold = "false";
defparam \cuif.imm[7]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y57_N16
cycloneive_io_obuf \cuif.imm[8]~output (
	.i(\Selector3~2_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [8]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[8]~output .bus_hold = "false";
defparam \cuif.imm[8]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y58_N16
cycloneive_io_obuf \cuif.imm[9]~output (
	.i(\Selector2~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [9]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[9]~output .bus_hold = "false";
defparam \cuif.imm[9]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y60_N16
cycloneive_io_obuf \cuif.imm[10]~output (
	.i(\Selector1~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [10]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[10]~output .bus_hold = "false";
defparam \cuif.imm[10]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X1_Y73_N23
cycloneive_io_obuf \cuif.imm[11]~output (
	.i(\Selector0~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [11]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[11]~output .bus_hold = "false";
defparam \cuif.imm[11]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X16_Y73_N2
cycloneive_io_obuf \cuif.imm[12]~output (
	.i(\imm~1_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [12]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[12]~output .bus_hold = "false";
defparam \cuif.imm[12]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X11_Y73_N16
cycloneive_io_obuf \cuif.imm[13]~output (
	.i(\imm~2_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [13]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[13]~output .bus_hold = "false";
defparam \cuif.imm[13]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X25_Y73_N23
cycloneive_io_obuf \cuif.imm[14]~output (
	.i(\imm~3_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [14]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[14]~output .bus_hold = "false";
defparam \cuif.imm[14]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X13_Y73_N16
cycloneive_io_obuf \cuif.imm[15]~output (
	.i(\imm~4_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [15]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[15]~output .bus_hold = "false";
defparam \cuif.imm[15]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X13_Y73_N23
cycloneive_io_obuf \cuif.imm[16]~output (
	.i(\imm~5_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [16]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[16]~output .bus_hold = "false";
defparam \cuif.imm[16]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X16_Y73_N9
cycloneive_io_obuf \cuif.imm[17]~output (
	.i(\imm~6_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [17]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[17]~output .bus_hold = "false";
defparam \cuif.imm[17]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X11_Y73_N23
cycloneive_io_obuf \cuif.imm[18]~output (
	.i(\imm~7_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [18]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[18]~output .bus_hold = "false";
defparam \cuif.imm[18]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X9_Y73_N2
cycloneive_io_obuf \cuif.imm[19]~output (
	.i(\imm~8_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [19]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[19]~output .bus_hold = "false";
defparam \cuif.imm[19]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y12_N2
cycloneive_io_obuf \cuif.imm[20]~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [20]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[20]~output .bus_hold = "false";
defparam \cuif.imm[20]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X3_Y0_N23
cycloneive_io_obuf \cuif.imm[21]~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [21]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[21]~output .bus_hold = "false";
defparam \cuif.imm[21]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X27_Y0_N9
cycloneive_io_obuf \cuif.imm[22]~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [22]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[22]~output .bus_hold = "false";
defparam \cuif.imm[22]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y16_N9
cycloneive_io_obuf \cuif.imm[23]~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [23]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[23]~output .bus_hold = "false";
defparam \cuif.imm[23]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X13_Y0_N23
cycloneive_io_obuf \cuif.imm[24]~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [24]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[24]~output .bus_hold = "false";
defparam \cuif.imm[24]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X49_Y0_N2
cycloneive_io_obuf \cuif.imm[25]~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [25]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[25]~output .bus_hold = "false";
defparam \cuif.imm[25]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X31_Y73_N2
cycloneive_io_obuf \cuif.imm[26]~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [26]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[26]~output .bus_hold = "false";
defparam \cuif.imm[26]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X81_Y73_N9
cycloneive_io_obuf \cuif.imm[27]~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [27]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[27]~output .bus_hold = "false";
defparam \cuif.imm[27]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X89_Y0_N23
cycloneive_io_obuf \cuif.imm[28]~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [28]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[28]~output .bus_hold = "false";
defparam \cuif.imm[28]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X107_Y73_N16
cycloneive_io_obuf \cuif.imm[29]~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [29]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[29]~output .bus_hold = "false";
defparam \cuif.imm[29]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X100_Y73_N16
cycloneive_io_obuf \cuif.imm[30]~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [30]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[30]~output .bus_hold = "false";
defparam \cuif.imm[30]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y24_N9
cycloneive_io_obuf \cuif.imm[31]~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.imm [31]),
	.obar());
// synopsys translate_off
defparam \cuif.imm[31]~output .bus_hold = "false";
defparam \cuif.imm[31]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y54_N9
cycloneive_io_obuf \cuif.rd[0]~output (
	.i(\cuif.inst[7]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rd [0]),
	.obar());
// synopsys translate_off
defparam \cuif.rd[0]~output .bus_hold = "false";
defparam \cuif.rd[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X31_Y73_N9
cycloneive_io_obuf \cuif.rd[1]~output (
	.i(\cuif.inst[8]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rd [1]),
	.obar());
// synopsys translate_off
defparam \cuif.rd[1]~output .bus_hold = "false";
defparam \cuif.rd[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y52_N23
cycloneive_io_obuf \cuif.rd[2]~output (
	.i(\cuif.inst[9]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rd [2]),
	.obar());
// synopsys translate_off
defparam \cuif.rd[2]~output .bus_hold = "false";
defparam \cuif.rd[2]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X1_Y73_N16
cycloneive_io_obuf \cuif.rd[3]~output (
	.i(\cuif.inst[10]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rd [3]),
	.obar());
// synopsys translate_off
defparam \cuif.rd[3]~output .bus_hold = "false";
defparam \cuif.rd[3]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y53_N2
cycloneive_io_obuf \cuif.rd[4]~output (
	.i(\cuif.inst[11]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rd [4]),
	.obar());
// synopsys translate_off
defparam \cuif.rd[4]~output .bus_hold = "false";
defparam \cuif.rd[4]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y59_N16
cycloneive_io_obuf \cuif.rs2[0]~output (
	.i(\cuif.inst[20]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rs2 [0]),
	.obar());
// synopsys translate_off
defparam \cuif.rs2[0]~output .bus_hold = "false";
defparam \cuif.rs2[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y53_N9
cycloneive_io_obuf \cuif.rs2[1]~output (
	.i(\cuif.inst[21]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rs2 [1]),
	.obar());
// synopsys translate_off
defparam \cuif.rs2[1]~output .bus_hold = "false";
defparam \cuif.rs2[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y51_N16
cycloneive_io_obuf \cuif.rs2[2]~output (
	.i(\cuif.inst[22]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rs2 [2]),
	.obar());
// synopsys translate_off
defparam \cuif.rs2[2]~output .bus_hold = "false";
defparam \cuif.rs2[2]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y49_N2
cycloneive_io_obuf \cuif.rs2[3]~output (
	.i(\cuif.inst[23]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rs2 [3]),
	.obar());
// synopsys translate_off
defparam \cuif.rs2[3]~output .bus_hold = "false";
defparam \cuif.rs2[3]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X18_Y73_N16
cycloneive_io_obuf \cuif.rs2[4]~output (
	.i(\cuif.inst[24]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rs2 [4]),
	.obar());
// synopsys translate_off
defparam \cuif.rs2[4]~output .bus_hold = "false";
defparam \cuif.rs2[4]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X27_Y73_N9
cycloneive_io_obuf \cuif.rs1[0]~output (
	.i(\cuif.inst[15]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rs1 [0]),
	.obar());
// synopsys translate_off
defparam \cuif.rs1[0]~output .bus_hold = "false";
defparam \cuif.rs1[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X27_Y73_N16
cycloneive_io_obuf \cuif.rs1[1]~output (
	.i(\cuif.inst[16]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rs1 [1]),
	.obar());
// synopsys translate_off
defparam \cuif.rs1[1]~output .bus_hold = "false";
defparam \cuif.rs1[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X20_Y73_N16
cycloneive_io_obuf \cuif.rs1[2]~output (
	.i(\cuif.inst[17]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rs1 [2]),
	.obar());
// synopsys translate_off
defparam \cuif.rs1[2]~output .bus_hold = "false";
defparam \cuif.rs1[2]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X20_Y73_N9
cycloneive_io_obuf \cuif.rs1[3]~output (
	.i(\cuif.inst[18]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rs1 [3]),
	.obar());
// synopsys translate_off
defparam \cuif.rs1[3]~output .bus_hold = "false";
defparam \cuif.rs1[3]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X23_Y73_N2
cycloneive_io_obuf \cuif.rs1[4]~output (
	.i(\cuif.inst[19]~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.rs1 [4]),
	.obar());
// synopsys translate_off
defparam \cuif.rs1[4]~output .bus_hold = "false";
defparam \cuif.rs1[4]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y61_N23
cycloneive_io_obuf \cuif.aluop[0]~output (
	.i(\Selector15~4_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.aluop [0]),
	.obar());
// synopsys translate_off
defparam \cuif.aluop[0]~output .bus_hold = "false";
defparam \cuif.aluop[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y57_N23
cycloneive_io_obuf \cuif.aluop[1]~output (
	.i(\Selector14~6_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.aluop [1]),
	.obar());
// synopsys translate_off
defparam \cuif.aluop[1]~output .bus_hold = "false";
defparam \cuif.aluop[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y63_N23
cycloneive_io_obuf \cuif.aluop[2]~output (
	.i(\Selector13~6_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.aluop [2]),
	.obar());
// synopsys translate_off
defparam \cuif.aluop[2]~output .bus_hold = "false";
defparam \cuif.aluop[2]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y50_N23
cycloneive_io_obuf \cuif.aluop[3]~output (
	.i(\Selector12~1_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.aluop [3]),
	.obar());
// synopsys translate_off
defparam \cuif.aluop[3]~output .bus_hold = "false";
defparam \cuif.aluop[3]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X1_Y73_N9
cycloneive_io_obuf \cuif.ALUSrc~output (
	.i(\Decoder2~6_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.ALUSrc ),
	.obar());
// synopsys translate_off
defparam \cuif.ALUSrc~output .bus_hold = "false";
defparam \cuif.ALUSrc~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X83_Y73_N16
cycloneive_io_obuf \cuif.iREN~output (
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.iREN ),
	.obar());
// synopsys translate_off
defparam \cuif.iREN~output .bus_hold = "false";
defparam \cuif.iREN~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y66_N23
cycloneive_io_obuf \cuif.dREN~output (
	.i(\Decoder2~7_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.dREN ),
	.obar());
// synopsys translate_off
defparam \cuif.dREN~output .bus_hold = "false";
defparam \cuif.dREN~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y68_N16
cycloneive_io_obuf \cuif.dWEN~output (
	.i(\Decoder2~8_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.dWEN ),
	.obar());
// synopsys translate_off
defparam \cuif.dWEN~output .bus_hold = "false";
defparam \cuif.dWEN~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X5_Y73_N2
cycloneive_io_obuf \cuif.RegWEN~output (
	.i(\WideOr2~1_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.RegWEN ),
	.obar());
// synopsys translate_off
defparam \cuif.RegWEN~output .bus_hold = "false";
defparam \cuif.RegWEN~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X89_Y73_N9
cycloneive_io_obuf \cuif.MemtoReg~output (
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.MemtoReg ),
	.obar());
// synopsys translate_off
defparam \cuif.MemtoReg~output .bus_hold = "false";
defparam \cuif.MemtoReg~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X5_Y73_N9
cycloneive_io_obuf \cuif.jumpPCsrc~output (
	.i(\jumpPCsrc~1_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.jumpPCsrc ),
	.obar());
// synopsys translate_off
defparam \cuif.jumpPCsrc~output .bus_hold = "false";
defparam \cuif.jumpPCsrc~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X5_Y73_N23
cycloneive_io_obuf \cuif.branchPCSrc~output (
	.i(\Decoder2~10_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\cuif.branchPCSrc ),
	.obar());
// synopsys translate_off
defparam \cuif.branchPCSrc~output .bus_hold = "false";
defparam \cuif.branchPCSrc~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOIBUF_X0_Y67_N22
cycloneive_io_ibuf \cuif.inst[3]~input (
	.i(\cuif.inst [3]),
	.ibar(gnd),
	.o(\cuif.inst[3]~input_o ));
// synopsys translate_off
defparam \cuif.inst[3]~input .bus_hold = "false";
defparam \cuif.inst[3]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X0_Y69_N8
cycloneive_io_ibuf \cuif.inst[4]~input (
	.i(\cuif.inst [4]),
	.ibar(gnd),
	.o(\cuif.inst[4]~input_o ));
// synopsys translate_off
defparam \cuif.inst[4]~input .bus_hold = "false";
defparam \cuif.inst[4]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X3_Y73_N22
cycloneive_io_ibuf \cuif.inst[6]~input (
	.i(\cuif.inst [6]),
	.ibar(gnd),
	.o(\cuif.inst[6]~input_o ));
// synopsys translate_off
defparam \cuif.inst[6]~input .bus_hold = "false";
defparam \cuif.inst[6]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X0_Y67_N15
cycloneive_io_ibuf \cuif.inst[2]~input (
	.i(\cuif.inst [2]),
	.ibar(gnd),
	.o(\cuif.inst[2]~input_o ));
// synopsys translate_off
defparam \cuif.inst[2]~input .bus_hold = "false";
defparam \cuif.inst[2]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X0_Y68_N8
cycloneive_io_ibuf \cuif.inst[5]~input (
	.i(\cuif.inst [5]),
	.ibar(gnd),
	.o(\cuif.inst[5]~input_o ));
// synopsys translate_off
defparam \cuif.inst[5]~input .bus_hold = "false";
defparam \cuif.inst[5]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X13_Y73_N8
cycloneive_io_ibuf \cuif.inst[1]~input (
	.i(\cuif.inst [1]),
	.ibar(gnd),
	.o(\cuif.inst[1]~input_o ));
// synopsys translate_off
defparam \cuif.inst[1]~input .bus_hold = "false";
defparam \cuif.inst[1]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X7_Y73_N22
cycloneive_io_ibuf \cuif.inst[0]~input (
	.i(\cuif.inst [0]),
	.ibar(gnd),
	.o(\cuif.inst[0]~input_o ));
// synopsys translate_off
defparam \cuif.inst[0]~input .bus_hold = "false";
defparam \cuif.inst[0]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N24
cycloneive_lcell_comb \Decoder2~0 (
// Equation(s):
// \Decoder2~0_combout  = (\cuif.inst[2]~input_o  & (\cuif.inst[5]~input_o  & (\cuif.inst[1]~input_o  & \cuif.inst[0]~input_o )))

	.dataa(\cuif.inst[2]~input_o ),
	.datab(\cuif.inst[5]~input_o ),
	.datac(\cuif.inst[1]~input_o ),
	.datad(\cuif.inst[0]~input_o ),
	.cin(gnd),
	.combout(\Decoder2~0_combout ),
	.cout());
// synopsys translate_off
defparam \Decoder2~0 .lut_mask = 16'h8000;
defparam \Decoder2~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N18
cycloneive_lcell_comb \Decoder2~1 (
// Equation(s):
// \Decoder2~1_combout  = (\cuif.inst[3]~input_o  & (\cuif.inst[4]~input_o  & (\cuif.inst[6]~input_o  & \Decoder2~0_combout )))

	.dataa(\cuif.inst[3]~input_o ),
	.datab(\cuif.inst[4]~input_o ),
	.datac(\cuif.inst[6]~input_o ),
	.datad(\Decoder2~0_combout ),
	.cin(gnd),
	.combout(\Decoder2~1_combout ),
	.cout());
// synopsys translate_off
defparam \Decoder2~1 .lut_mask = 16'h8000;
defparam \Decoder2~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N28
cycloneive_lcell_comb \Decoder2~2 (
// Equation(s):
// \Decoder2~2_combout  = (\cuif.inst[1]~input_o  & \cuif.inst[0]~input_o )

	.dataa(gnd),
	.datab(gnd),
	.datac(\cuif.inst[1]~input_o ),
	.datad(\cuif.inst[0]~input_o ),
	.cin(gnd),
	.combout(\Decoder2~2_combout ),
	.cout());
// synopsys translate_off
defparam \Decoder2~2 .lut_mask = 16'hF000;
defparam \Decoder2~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N24
cycloneive_lcell_comb \Decoder2~3 (
// Equation(s):
// \Decoder2~3_combout  = (!\cuif.inst[3]~input_o  & (!\cuif.inst[6]~input_o  & (!\cuif.inst[2]~input_o  & \Decoder2~2_combout )))

	.dataa(\cuif.inst[3]~input_o ),
	.datab(\cuif.inst[6]~input_o ),
	.datac(\cuif.inst[2]~input_o ),
	.datad(\Decoder2~2_combout ),
	.cin(gnd),
	.combout(\Decoder2~3_combout ),
	.cout());
// synopsys translate_off
defparam \Decoder2~3 .lut_mask = 16'h0100;
defparam \Decoder2~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N18
cycloneive_lcell_comb \Selector11~0 (
// Equation(s):
// \Selector11~0_combout  = (\cuif.inst[5]~input_o  & ((\cuif.inst[3]~input_o  & (!\cuif.inst[4]~input_o  & \cuif.inst[6]~input_o )) # (!\cuif.inst[3]~input_o  & (\cuif.inst[4]~input_o  & !\cuif.inst[6]~input_o ))))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(\cuif.inst[3]~input_o ),
	.datac(\cuif.inst[4]~input_o ),
	.datad(\cuif.inst[6]~input_o ),
	.cin(gnd),
	.combout(\Selector11~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~0 .lut_mask = 16'h0820;
defparam \Selector11~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N12
cycloneive_lcell_comb \Selector11~1 (
// Equation(s):
// \Selector11~1_combout  = (\Decoder2~3_combout  & (!\Selector11~0_combout  & ((\cuif.inst[5]~input_o ) # (\cuif.inst[4]~input_o ))))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(\Decoder2~3_combout ),
	.datac(\cuif.inst[4]~input_o ),
	.datad(\Selector11~0_combout ),
	.cin(gnd),
	.combout(\Selector11~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~1 .lut_mask = 16'h00C8;
defparam \Selector11~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N14
cycloneive_lcell_comb \Selector11~2 (
// Equation(s):
// \Selector11~2_combout  = (\Selector11~1_combout ) # ((\Selector11~0_combout  & (\cuif.inst[2]~input_o  & \Decoder2~2_combout )))

	.dataa(\Selector11~1_combout ),
	.datab(\Selector11~0_combout ),
	.datac(\cuif.inst[2]~input_o ),
	.datad(\Decoder2~2_combout ),
	.cin(gnd),
	.combout(\Selector11~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~2 .lut_mask = 16'hEAAA;
defparam \Selector11~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y65_N15
cycloneive_io_ibuf \cuif.inst[12]~input (
	.i(\cuif.inst [12]),
	.ibar(gnd),
	.o(\cuif.inst[12]~input_o ));
// synopsys translate_off
defparam \cuif.inst[12]~input .bus_hold = "false";
defparam \cuif.inst[12]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X0_Y55_N8
cycloneive_io_ibuf \cuif.inst[7]~input (
	.i(\cuif.inst [7]),
	.ibar(gnd),
	.o(\cuif.inst[7]~input_o ));
// synopsys translate_off
defparam \cuif.inst[7]~input .bus_hold = "false";
defparam \cuif.inst[7]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X0_Y59_N22
cycloneive_io_ibuf \cuif.inst[20]~input (
	.i(\cuif.inst [20]),
	.ibar(gnd),
	.o(\cuif.inst[20]~input_o ));
// synopsys translate_off
defparam \cuif.inst[20]~input .bus_hold = "false";
defparam \cuif.inst[20]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N16
cycloneive_lcell_comb \Selector11~3 (
// Equation(s):
// \Selector11~3_combout  = (\cuif.inst[5]~input_o  & (\cuif.inst[7]~input_o )) # (!\cuif.inst[5]~input_o  & ((\cuif.inst[20]~input_o )))

	.dataa(gnd),
	.datab(\cuif.inst[7]~input_o ),
	.datac(\cuif.inst[20]~input_o ),
	.datad(\cuif.inst[5]~input_o ),
	.cin(gnd),
	.combout(\Selector11~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~3 .lut_mask = 16'hCCF0;
defparam \Selector11~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N2
cycloneive_lcell_comb \Selector11~4 (
// Equation(s):
// \Selector11~4_combout  = (\Selector11~2_combout  & ((\Selector11~0_combout  & (\cuif.inst[12]~input_o )) # (!\Selector11~0_combout  & ((\Selector11~3_combout )))))

	.dataa(\Selector11~2_combout ),
	.datab(\Selector11~0_combout ),
	.datac(\cuif.inst[12]~input_o ),
	.datad(\Selector11~3_combout ),
	.cin(gnd),
	.combout(\Selector11~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~4 .lut_mask = 16'hA280;
defparam \Selector11~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y66_N15
cycloneive_io_ibuf \cuif.inst[13]~input (
	.i(\cuif.inst [13]),
	.ibar(gnd),
	.o(\cuif.inst[13]~input_o ));
// synopsys translate_off
defparam \cuif.inst[13]~input .bus_hold = "false";
defparam \cuif.inst[13]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X0_Y52_N1
cycloneive_io_ibuf \cuif.inst[21]~input (
	.i(\cuif.inst [21]),
	.ibar(gnd),
	.o(\cuif.inst[21]~input_o ));
// synopsys translate_off
defparam \cuif.inst[21]~input .bus_hold = "false";
defparam \cuif.inst[21]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X29_Y73_N8
cycloneive_io_ibuf \cuif.inst[8]~input (
	.i(\cuif.inst [8]),
	.ibar(gnd),
	.o(\cuif.inst[8]~input_o ));
// synopsys translate_off
defparam \cuif.inst[8]~input .bus_hold = "false";
defparam \cuif.inst[8]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N28
cycloneive_lcell_comb \Selector10~0 (
// Equation(s):
// \Selector10~0_combout  = (\cuif.inst[5]~input_o  & ((\cuif.inst[8]~input_o ))) # (!\cuif.inst[5]~input_o  & (\cuif.inst[21]~input_o ))

	.dataa(gnd),
	.datab(\cuif.inst[21]~input_o ),
	.datac(\cuif.inst[8]~input_o ),
	.datad(\cuif.inst[5]~input_o ),
	.cin(gnd),
	.combout(\Selector10~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~0 .lut_mask = 16'hF0CC;
defparam \Selector10~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N14
cycloneive_lcell_comb \Selector10~1 (
// Equation(s):
// \Selector10~1_combout  = (\Selector11~2_combout  & ((\Selector11~0_combout  & (\cuif.inst[13]~input_o )) # (!\Selector11~0_combout  & ((\Selector10~0_combout )))))

	.dataa(\Selector11~2_combout ),
	.datab(\Selector11~0_combout ),
	.datac(\cuif.inst[13]~input_o ),
	.datad(\Selector10~0_combout ),
	.cin(gnd),
	.combout(\Selector10~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~1 .lut_mask = 16'hA280;
defparam \Selector10~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y64_N1
cycloneive_io_ibuf \cuif.inst[14]~input (
	.i(\cuif.inst [14]),
	.ibar(gnd),
	.o(\cuif.inst[14]~input_o ));
// synopsys translate_off
defparam \cuif.inst[14]~input .bus_hold = "false";
defparam \cuif.inst[14]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X0_Y49_N8
cycloneive_io_ibuf \cuif.inst[9]~input (
	.i(\cuif.inst [9]),
	.ibar(gnd),
	.o(\cuif.inst[9]~input_o ));
// synopsys translate_off
defparam \cuif.inst[9]~input .bus_hold = "false";
defparam \cuif.inst[9]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X0_Y50_N15
cycloneive_io_ibuf \cuif.inst[22]~input (
	.i(\cuif.inst [22]),
	.ibar(gnd),
	.o(\cuif.inst[22]~input_o ));
// synopsys translate_off
defparam \cuif.inst[22]~input .bus_hold = "false";
defparam \cuif.inst[22]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N0
cycloneive_lcell_comb \Selector9~0 (
// Equation(s):
// \Selector9~0_combout  = (\cuif.inst[5]~input_o  & (\cuif.inst[9]~input_o )) # (!\cuif.inst[5]~input_o  & ((\cuif.inst[22]~input_o )))

	.dataa(gnd),
	.datab(\cuif.inst[9]~input_o ),
	.datac(\cuif.inst[22]~input_o ),
	.datad(\cuif.inst[5]~input_o ),
	.cin(gnd),
	.combout(\Selector9~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~0 .lut_mask = 16'hCCF0;
defparam \Selector9~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N18
cycloneive_lcell_comb \Selector9~1 (
// Equation(s):
// \Selector9~1_combout  = (\Selector11~2_combout  & ((\Selector11~0_combout  & (\cuif.inst[14]~input_o )) # (!\Selector11~0_combout  & ((\Selector9~0_combout )))))

	.dataa(\Selector11~2_combout ),
	.datab(\Selector11~0_combout ),
	.datac(\cuif.inst[14]~input_o ),
	.datad(\Selector9~0_combout ),
	.cin(gnd),
	.combout(\Selector9~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~1 .lut_mask = 16'hA280;
defparam \Selector9~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y48_N8
cycloneive_io_ibuf \cuif.inst[23]~input (
	.i(\cuif.inst [23]),
	.ibar(gnd),
	.o(\cuif.inst[23]~input_o ));
// synopsys translate_off
defparam \cuif.inst[23]~input .bus_hold = "false";
defparam \cuif.inst[23]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X1_Y73_N1
cycloneive_io_ibuf \cuif.inst[10]~input (
	.i(\cuif.inst [10]),
	.ibar(gnd),
	.o(\cuif.inst[10]~input_o ));
// synopsys translate_off
defparam \cuif.inst[10]~input .bus_hold = "false";
defparam \cuif.inst[10]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N0
cycloneive_lcell_comb \Selector8~0 (
// Equation(s):
// \Selector8~0_combout  = (\cuif.inst[5]~input_o  & ((\cuif.inst[10]~input_o ))) # (!\cuif.inst[5]~input_o  & (\cuif.inst[23]~input_o ))

	.dataa(gnd),
	.datab(\cuif.inst[23]~input_o ),
	.datac(\cuif.inst[10]~input_o ),
	.datad(\cuif.inst[5]~input_o ),
	.cin(gnd),
	.combout(\Selector8~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~0 .lut_mask = 16'hF0CC;
defparam \Selector8~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X29_Y73_N1
cycloneive_io_ibuf \cuif.inst[15]~input (
	.i(\cuif.inst [15]),
	.ibar(gnd),
	.o(\cuif.inst[15]~input_o ));
// synopsys translate_off
defparam \cuif.inst[15]~input .bus_hold = "false";
defparam \cuif.inst[15]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N26
cycloneive_lcell_comb \Selector8~1 (
// Equation(s):
// \Selector8~1_combout  = (\Selector11~2_combout  & ((\Selector11~0_combout  & ((\cuif.inst[15]~input_o ))) # (!\Selector11~0_combout  & (\Selector8~0_combout ))))

	.dataa(\Selector11~0_combout ),
	.datab(\Selector8~0_combout ),
	.datac(\Selector11~2_combout ),
	.datad(\cuif.inst[15]~input_o ),
	.cin(gnd),
	.combout(\Selector8~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~1 .lut_mask = 16'hE040;
defparam \Selector8~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y66_N16
cycloneive_lcell_comb \Decoder2~4 (
// Equation(s):
// \Decoder2~4_combout  = (\cuif.inst[2]~input_o  & \cuif.inst[5]~input_o )

	.dataa(gnd),
	.datab(gnd),
	.datac(\cuif.inst[2]~input_o ),
	.datad(\cuif.inst[5]~input_o ),
	.cin(gnd),
	.combout(\Decoder2~4_combout ),
	.cout());
// synopsys translate_off
defparam \Decoder2~4 .lut_mask = 16'hF000;
defparam \Decoder2~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N26
cycloneive_lcell_comb \Selector7~2 (
// Equation(s):
// \Selector7~2_combout  = (\Decoder2~4_combout  & ((\cuif.inst[6]~input_o  & (!\cuif.inst[4]~input_o  & \cuif.inst[3]~input_o )) # (!\cuif.inst[6]~input_o  & (\cuif.inst[4]~input_o  & !\cuif.inst[3]~input_o ))))

	.dataa(\cuif.inst[6]~input_o ),
	.datab(\cuif.inst[4]~input_o ),
	.datac(\Decoder2~4_combout ),
	.datad(\cuif.inst[3]~input_o ),
	.cin(gnd),
	.combout(\Selector7~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~2 .lut_mask = 16'h2040;
defparam \Selector7~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X18_Y73_N22
cycloneive_io_ibuf \cuif.inst[24]~input (
	.i(\cuif.inst [24]),
	.ibar(gnd),
	.o(\cuif.inst[24]~input_o ));
// synopsys translate_off
defparam \cuif.inst[24]~input .bus_hold = "false";
defparam \cuif.inst[24]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X0_Y55_N15
cycloneive_io_ibuf \cuif.inst[11]~input (
	.i(\cuif.inst [11]),
	.ibar(gnd),
	.o(\cuif.inst[11]~input_o ));
// synopsys translate_off
defparam \cuif.inst[11]~input .bus_hold = "false";
defparam \cuif.inst[11]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N14
cycloneive_lcell_comb \Selector7~0 (
// Equation(s):
// \Selector7~0_combout  = (\cuif.inst[5]~input_o  & (((\cuif.inst[11]~input_o  & !\cuif.inst[4]~input_o )))) # (!\cuif.inst[5]~input_o  & (\cuif.inst[24]~input_o  & ((\cuif.inst[4]~input_o ))))

	.dataa(\cuif.inst[24]~input_o ),
	.datab(\cuif.inst[5]~input_o ),
	.datac(\cuif.inst[11]~input_o ),
	.datad(\cuif.inst[4]~input_o ),
	.cin(gnd),
	.combout(\Selector7~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~0 .lut_mask = 16'h22C0;
defparam \Selector7~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N8
cycloneive_lcell_comb \Selector7~1 (
// Equation(s):
// \Selector7~1_combout  = (!\cuif.inst[3]~input_o  & (\Selector7~0_combout  & (!\cuif.inst[6]~input_o  & !\cuif.inst[2]~input_o )))

	.dataa(\cuif.inst[3]~input_o ),
	.datab(\Selector7~0_combout ),
	.datac(\cuif.inst[6]~input_o ),
	.datad(\cuif.inst[2]~input_o ),
	.cin(gnd),
	.combout(\Selector7~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~1 .lut_mask = 16'h0004;
defparam \Selector7~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X27_Y73_N22
cycloneive_io_ibuf \cuif.inst[16]~input (
	.i(\cuif.inst [16]),
	.ibar(gnd),
	.o(\cuif.inst[16]~input_o ));
// synopsys translate_off
defparam \cuif.inst[16]~input .bus_hold = "false";
defparam \cuif.inst[16]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N4
cycloneive_lcell_comb \Selector7~3 (
// Equation(s):
// \Selector7~3_combout  = (\Decoder2~2_combout  & ((\Selector7~1_combout ) # ((\Selector7~2_combout  & \cuif.inst[16]~input_o ))))

	.dataa(\Selector7~2_combout ),
	.datab(\Selector7~1_combout ),
	.datac(\cuif.inst[16]~input_o ),
	.datad(\Decoder2~2_combout ),
	.cin(gnd),
	.combout(\Selector7~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~3 .lut_mask = 16'hEC00;
defparam \Selector7~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N28
cycloneive_lcell_comb \Selector4~2 (
// Equation(s):
// \Selector4~2_combout  = (!\cuif.inst[2]~input_o  & (!\cuif.inst[3]~input_o  & (\cuif.inst[5]~input_o  $ (\cuif.inst[4]~input_o ))))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(\cuif.inst[2]~input_o ),
	.datac(\cuif.inst[4]~input_o ),
	.datad(\cuif.inst[3]~input_o ),
	.cin(gnd),
	.combout(\Selector4~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~2 .lut_mask = 16'h0012;
defparam \Selector4~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N6
cycloneive_lcell_comb \Selector4~3 (
// Equation(s):
// \Selector4~3_combout  = (!\Selector7~2_combout  & (\Selector4~2_combout  & (!\cuif.inst[6]~input_o  & \Decoder2~2_combout )))

	.dataa(\Selector7~2_combout ),
	.datab(\Selector4~2_combout ),
	.datac(\cuif.inst[6]~input_o ),
	.datad(\Decoder2~2_combout ),
	.cin(gnd),
	.combout(\Selector4~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~3 .lut_mask = 16'h0400;
defparam \Selector4~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N22
cycloneive_lcell_comb \Selector4~5 (
// Equation(s):
// \Selector4~5_combout  = (\Selector7~2_combout  & (\cuif.inst[1]~input_o  & \cuif.inst[0]~input_o ))

	.dataa(\Selector7~2_combout ),
	.datab(gnd),
	.datac(\cuif.inst[1]~input_o ),
	.datad(\cuif.inst[0]~input_o ),
	.cin(gnd),
	.combout(\Selector4~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~5 .lut_mask = 16'hA000;
defparam \Selector4~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X20_Y73_N22
cycloneive_io_ibuf \cuif.inst[17]~input (
	.i(\cuif.inst [17]),
	.ibar(gnd),
	.o(\cuif.inst[17]~input_o ));
// synopsys translate_off
defparam \cuif.inst[17]~input .bus_hold = "false";
defparam \cuif.inst[17]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X16_Y73_N22
cycloneive_io_ibuf \cuif.inst[25]~input (
	.i(\cuif.inst [25]),
	.ibar(gnd),
	.o(\cuif.inst[25]~input_o ));
// synopsys translate_off
defparam \cuif.inst[25]~input .bus_hold = "false";
defparam \cuif.inst[25]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N8
cycloneive_lcell_comb \Selector6~0 (
// Equation(s):
// \Selector6~0_combout  = (\Selector4~3_combout  & ((\cuif.inst[25]~input_o ) # ((\Selector4~5_combout  & \cuif.inst[17]~input_o )))) # (!\Selector4~3_combout  & (\Selector4~5_combout  & (\cuif.inst[17]~input_o )))

	.dataa(\Selector4~3_combout ),
	.datab(\Selector4~5_combout ),
	.datac(\cuif.inst[17]~input_o ),
	.datad(\cuif.inst[25]~input_o ),
	.cin(gnd),
	.combout(\Selector6~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~0 .lut_mask = 16'hEAC0;
defparam \Selector6~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X23_Y73_N15
cycloneive_io_ibuf \cuif.inst[18]~input (
	.i(\cuif.inst [18]),
	.ibar(gnd),
	.o(\cuif.inst[18]~input_o ));
// synopsys translate_off
defparam \cuif.inst[18]~input .bus_hold = "false";
defparam \cuif.inst[18]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X20_Y73_N1
cycloneive_io_ibuf \cuif.inst[26]~input (
	.i(\cuif.inst [26]),
	.ibar(gnd),
	.o(\cuif.inst[26]~input_o ));
// synopsys translate_off
defparam \cuif.inst[26]~input .bus_hold = "false";
defparam \cuif.inst[26]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N2
cycloneive_lcell_comb \Selector5~0 (
// Equation(s):
// \Selector5~0_combout  = (\Selector4~3_combout  & ((\cuif.inst[26]~input_o ) # ((\Selector4~5_combout  & \cuif.inst[18]~input_o )))) # (!\Selector4~3_combout  & (\Selector4~5_combout  & (\cuif.inst[18]~input_o )))

	.dataa(\Selector4~3_combout ),
	.datab(\Selector4~5_combout ),
	.datac(\cuif.inst[18]~input_o ),
	.datad(\cuif.inst[26]~input_o ),
	.cin(gnd),
	.combout(\Selector5~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~0 .lut_mask = 16'hEAC0;
defparam \Selector5~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X13_Y73_N1
cycloneive_io_ibuf \cuif.inst[27]~input (
	.i(\cuif.inst [27]),
	.ibar(gnd),
	.o(\cuif.inst[27]~input_o ));
// synopsys translate_off
defparam \cuif.inst[27]~input .bus_hold = "false";
defparam \cuif.inst[27]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X23_Y73_N22
cycloneive_io_ibuf \cuif.inst[19]~input (
	.i(\cuif.inst [19]),
	.ibar(gnd),
	.o(\cuif.inst[19]~input_o ));
// synopsys translate_off
defparam \cuif.inst[19]~input .bus_hold = "false";
defparam \cuif.inst[19]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N4
cycloneive_lcell_comb \Selector4~4 (
// Equation(s):
// \Selector4~4_combout  = (\Selector4~3_combout  & ((\cuif.inst[27]~input_o ) # ((\Selector4~5_combout  & \cuif.inst[19]~input_o )))) # (!\Selector4~3_combout  & (\Selector4~5_combout  & ((\cuif.inst[19]~input_o ))))

	.dataa(\Selector4~3_combout ),
	.datab(\Selector4~5_combout ),
	.datac(\cuif.inst[27]~input_o ),
	.datad(\cuif.inst[19]~input_o ),
	.cin(gnd),
	.combout(\Selector4~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~4 .lut_mask = 16'hECA0;
defparam \Selector4~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X16_Y73_N15
cycloneive_io_ibuf \cuif.inst[28]~input (
	.i(\cuif.inst [28]),
	.ibar(gnd),
	.o(\cuif.inst[28]~input_o ));
// synopsys translate_off
defparam \cuif.inst[28]~input .bus_hold = "false";
defparam \cuif.inst[28]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N30
cycloneive_lcell_comb \Selector3~0 (
// Equation(s):
// \Selector3~0_combout  = (\Decoder2~3_combout  & (!\Selector11~0_combout  & (\cuif.inst[5]~input_o  $ (\cuif.inst[4]~input_o ))))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(\Decoder2~3_combout ),
	.datac(\cuif.inst[4]~input_o ),
	.datad(\Selector11~0_combout ),
	.cin(gnd),
	.combout(\Selector3~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~0 .lut_mask = 16'h0048;
defparam \Selector3~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N8
cycloneive_lcell_comb \Selector3~1 (
// Equation(s):
// \Selector3~1_combout  = (\Selector3~0_combout ) # ((\Selector11~0_combout  & (\cuif.inst[2]~input_o  & \Decoder2~2_combout )))

	.dataa(\Selector3~0_combout ),
	.datab(\Selector11~0_combout ),
	.datac(\cuif.inst[2]~input_o ),
	.datad(\Decoder2~2_combout ),
	.cin(gnd),
	.combout(\Selector3~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~1 .lut_mask = 16'hEAAA;
defparam \Selector3~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N20
cycloneive_lcell_comb \Selector3~2 (
// Equation(s):
// \Selector3~2_combout  = (\Selector3~1_combout  & ((\Selector11~0_combout  & (\cuif.inst[20]~input_o )) # (!\Selector11~0_combout  & ((\cuif.inst[28]~input_o )))))

	.dataa(\cuif.inst[20]~input_o ),
	.datab(\Selector11~0_combout ),
	.datac(\cuif.inst[28]~input_o ),
	.datad(\Selector3~1_combout ),
	.cin(gnd),
	.combout(\Selector3~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~2 .lut_mask = 16'hB800;
defparam \Selector3~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X3_Y73_N8
cycloneive_io_ibuf \cuif.inst[29]~input (
	.i(\cuif.inst [29]),
	.ibar(gnd),
	.o(\cuif.inst[29]~input_o ));
// synopsys translate_off
defparam \cuif.inst[29]~input .bus_hold = "false";
defparam \cuif.inst[29]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N22
cycloneive_lcell_comb \Selector2~0 (
// Equation(s):
// \Selector2~0_combout  = (\Selector3~1_combout  & ((\Selector11~0_combout  & ((\cuif.inst[21]~input_o ))) # (!\Selector11~0_combout  & (\cuif.inst[29]~input_o ))))

	.dataa(\Selector3~1_combout ),
	.datab(\Selector11~0_combout ),
	.datac(\cuif.inst[29]~input_o ),
	.datad(\cuif.inst[21]~input_o ),
	.cin(gnd),
	.combout(\Selector2~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~0 .lut_mask = 16'hA820;
defparam \Selector2~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X9_Y73_N8
cycloneive_io_ibuf \cuif.inst[30]~input (
	.i(\cuif.inst [30]),
	.ibar(gnd),
	.o(\cuif.inst[30]~input_o ));
// synopsys translate_off
defparam \cuif.inst[30]~input .bus_hold = "false";
defparam \cuif.inst[30]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N24
cycloneive_lcell_comb \Selector1~0 (
// Equation(s):
// \Selector1~0_combout  = (\Selector3~1_combout  & ((\Selector11~0_combout  & (\cuif.inst[22]~input_o )) # (!\Selector11~0_combout  & ((\cuif.inst[30]~input_o )))))

	.dataa(\Selector3~1_combout ),
	.datab(\Selector11~0_combout ),
	.datac(\cuif.inst[22]~input_o ),
	.datad(\cuif.inst[30]~input_o ),
	.cin(gnd),
	.combout(\Selector1~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~0 .lut_mask = 16'hA280;
defparam \Selector1~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y68_N1
cycloneive_io_ibuf \cuif.inst[31]~input (
	.i(\cuif.inst [31]),
	.ibar(gnd),
	.o(\cuif.inst[31]~input_o ));
// synopsys translate_off
defparam \cuif.inst[31]~input .bus_hold = "false";
defparam \cuif.inst[31]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N10
cycloneive_lcell_comb \Selector0~0 (
// Equation(s):
// \Selector0~0_combout  = (\Selector3~1_combout  & ((\Selector11~0_combout  & (\cuif.inst[23]~input_o )) # (!\Selector11~0_combout  & ((\cuif.inst[31]~input_o )))))

	.dataa(\Selector11~0_combout ),
	.datab(\cuif.inst[23]~input_o ),
	.datac(\cuif.inst[31]~input_o ),
	.datad(\Selector3~1_combout ),
	.cin(gnd),
	.combout(\Selector0~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~0 .lut_mask = 16'hD800;
defparam \Selector0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N16
cycloneive_lcell_comb \imm~0 (
// Equation(s):
// \imm~0_combout  = (\cuif.inst[0]~input_o  & ((\cuif.inst[3]~input_o  & (!\cuif.inst[4]~input_o  & \cuif.inst[6]~input_o )) # (!\cuif.inst[3]~input_o  & (\cuif.inst[4]~input_o  & !\cuif.inst[6]~input_o ))))

	.dataa(\cuif.inst[3]~input_o ),
	.datab(\cuif.inst[4]~input_o ),
	.datac(\cuif.inst[6]~input_o ),
	.datad(\cuif.inst[0]~input_o ),
	.cin(gnd),
	.combout(\imm~0_combout ),
	.cout());
// synopsys translate_off
defparam \imm~0 .lut_mask = 16'h2400;
defparam \imm~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N6
cycloneive_lcell_comb \imm~1 (
// Equation(s):
// \imm~1_combout  = (\cuif.inst[1]~input_o  & (\imm~0_combout  & (\Decoder2~4_combout  & \cuif.inst[24]~input_o )))

	.dataa(\cuif.inst[1]~input_o ),
	.datab(\imm~0_combout ),
	.datac(\Decoder2~4_combout ),
	.datad(\cuif.inst[24]~input_o ),
	.cin(gnd),
	.combout(\imm~1_combout ),
	.cout());
// synopsys translate_off
defparam \imm~1 .lut_mask = 16'h8000;
defparam \imm~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N0
cycloneive_lcell_comb \imm~2 (
// Equation(s):
// \imm~2_combout  = (\imm~0_combout  & (\cuif.inst[25]~input_o  & (\Decoder2~4_combout  & \cuif.inst[1]~input_o )))

	.dataa(\imm~0_combout ),
	.datab(\cuif.inst[25]~input_o ),
	.datac(\Decoder2~4_combout ),
	.datad(\cuif.inst[1]~input_o ),
	.cin(gnd),
	.combout(\imm~2_combout ),
	.cout());
// synopsys translate_off
defparam \imm~2 .lut_mask = 16'h8000;
defparam \imm~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N26
cycloneive_lcell_comb \imm~3 (
// Equation(s):
// \imm~3_combout  = (\imm~0_combout  & (\cuif.inst[26]~input_o  & (\Decoder2~4_combout  & \cuif.inst[1]~input_o )))

	.dataa(\imm~0_combout ),
	.datab(\cuif.inst[26]~input_o ),
	.datac(\Decoder2~4_combout ),
	.datad(\cuif.inst[1]~input_o ),
	.cin(gnd),
	.combout(\imm~3_combout ),
	.cout());
// synopsys translate_off
defparam \imm~3 .lut_mask = 16'h8000;
defparam \imm~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N20
cycloneive_lcell_comb \imm~4 (
// Equation(s):
// \imm~4_combout  = (\imm~0_combout  & (\cuif.inst[27]~input_o  & (\Decoder2~4_combout  & \cuif.inst[1]~input_o )))

	.dataa(\imm~0_combout ),
	.datab(\cuif.inst[27]~input_o ),
	.datac(\Decoder2~4_combout ),
	.datad(\cuif.inst[1]~input_o ),
	.cin(gnd),
	.combout(\imm~4_combout ),
	.cout());
// synopsys translate_off
defparam \imm~4 .lut_mask = 16'h8000;
defparam \imm~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N14
cycloneive_lcell_comb \imm~5 (
// Equation(s):
// \imm~5_combout  = (\cuif.inst[1]~input_o  & (\imm~0_combout  & (\Decoder2~4_combout  & \cuif.inst[28]~input_o )))

	.dataa(\cuif.inst[1]~input_o ),
	.datab(\imm~0_combout ),
	.datac(\Decoder2~4_combout ),
	.datad(\cuif.inst[28]~input_o ),
	.cin(gnd),
	.combout(\imm~5_combout ),
	.cout());
// synopsys translate_off
defparam \imm~5 .lut_mask = 16'h8000;
defparam \imm~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N24
cycloneive_lcell_comb \imm~6 (
// Equation(s):
// \imm~6_combout  = (\imm~0_combout  & (\cuif.inst[29]~input_o  & (\Decoder2~4_combout  & \cuif.inst[1]~input_o )))

	.dataa(\imm~0_combout ),
	.datab(\cuif.inst[29]~input_o ),
	.datac(\Decoder2~4_combout ),
	.datad(\cuif.inst[1]~input_o ),
	.cin(gnd),
	.combout(\imm~6_combout ),
	.cout());
// synopsys translate_off
defparam \imm~6 .lut_mask = 16'h8000;
defparam \imm~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N10
cycloneive_lcell_comb \imm~7 (
// Equation(s):
// \imm~7_combout  = (\imm~0_combout  & (\cuif.inst[30]~input_o  & (\Decoder2~4_combout  & \cuif.inst[1]~input_o )))

	.dataa(\imm~0_combout ),
	.datab(\cuif.inst[30]~input_o ),
	.datac(\Decoder2~4_combout ),
	.datad(\cuif.inst[1]~input_o ),
	.cin(gnd),
	.combout(\imm~7_combout ),
	.cout());
// synopsys translate_off
defparam \imm~7 .lut_mask = 16'h8000;
defparam \imm~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N12
cycloneive_lcell_comb \imm~8 (
// Equation(s):
// \imm~8_combout  = (\imm~0_combout  & (\cuif.inst[31]~input_o  & (\Decoder2~4_combout  & \cuif.inst[1]~input_o )))

	.dataa(\imm~0_combout ),
	.datab(\cuif.inst[31]~input_o ),
	.datac(\Decoder2~4_combout ),
	.datad(\cuif.inst[1]~input_o ),
	.cin(gnd),
	.combout(\imm~8_combout ),
	.cout());
// synopsys translate_off
defparam \imm~8 .lut_mask = 16'h8000;
defparam \imm~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N28
cycloneive_lcell_comb \Selector15~1 (
// Equation(s):
// \Selector15~1_combout  = (\cuif.inst[13]~input_o  & (((\cuif.inst[12]~input_o )))) # (!\cuif.inst[13]~input_o  & (((\cuif.inst[14]~input_o  & !\cuif.inst[30]~input_o )) # (!\cuif.inst[12]~input_o )))

	.dataa(\cuif.inst[14]~input_o ),
	.datab(\cuif.inst[13]~input_o ),
	.datac(\cuif.inst[12]~input_o ),
	.datad(\cuif.inst[30]~input_o ),
	.cin(gnd),
	.combout(\Selector15~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~1 .lut_mask = 16'hC3E3;
defparam \Selector15~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N26
cycloneive_lcell_comb \Decoder2~5 (
// Equation(s):
// \Decoder2~5_combout  = (\cuif.inst[4]~input_o  & \Decoder2~3_combout )

	.dataa(gnd),
	.datab(\cuif.inst[4]~input_o ),
	.datac(gnd),
	.datad(\Decoder2~3_combout ),
	.cin(gnd),
	.combout(\Decoder2~5_combout ),
	.cout());
// synopsys translate_off
defparam \Decoder2~5 .lut_mask = 16'hCC00;
defparam \Decoder2~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N30
cycloneive_lcell_comb \Equal6~0 (
// Equation(s):
// \Equal6~0_combout  = (!\cuif.inst[28]~input_o  & (!\cuif.inst[25]~input_o  & (!\cuif.inst[27]~input_o  & !\cuif.inst[26]~input_o )))

	.dataa(\cuif.inst[28]~input_o ),
	.datab(\cuif.inst[25]~input_o ),
	.datac(\cuif.inst[27]~input_o ),
	.datad(\cuif.inst[26]~input_o ),
	.cin(gnd),
	.combout(\Equal6~0_combout ),
	.cout());
// synopsys translate_off
defparam \Equal6~0 .lut_mask = 16'h0001;
defparam \Equal6~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N16
cycloneive_lcell_comb \Equal9~0 (
// Equation(s):
// \Equal9~0_combout  = (!\cuif.inst[29]~input_o  & (!\cuif.inst[31]~input_o  & (\Equal6~0_combout  & !\cuif.inst[30]~input_o )))

	.dataa(\cuif.inst[29]~input_o ),
	.datab(\cuif.inst[31]~input_o ),
	.datac(\Equal6~0_combout ),
	.datad(\cuif.inst[30]~input_o ),
	.cin(gnd),
	.combout(\Equal9~0_combout ),
	.cout());
// synopsys translate_off
defparam \Equal9~0 .lut_mask = 16'h0010;
defparam \Equal9~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N16
cycloneive_lcell_comb \Selector14~0 (
// Equation(s):
// \Selector14~0_combout  = (\cuif.inst[14]~input_o  & (\cuif.inst[12]~input_o  & \cuif.inst[5]~input_o ))

	.dataa(gnd),
	.datab(\cuif.inst[14]~input_o ),
	.datac(\cuif.inst[12]~input_o ),
	.datad(\cuif.inst[5]~input_o ),
	.cin(gnd),
	.combout(\Selector14~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~0 .lut_mask = 16'hC000;
defparam \Selector14~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N10
cycloneive_lcell_comb \Selector15~0 (
// Equation(s):
// \Selector15~0_combout  = (\Equal9~0_combout  & ((\Selector14~0_combout ) # (\cuif.inst[13]~input_o  $ (!\cuif.inst[12]~input_o ))))

	.dataa(\Equal9~0_combout ),
	.datab(\cuif.inst[13]~input_o ),
	.datac(\cuif.inst[12]~input_o ),
	.datad(\Selector14~0_combout ),
	.cin(gnd),
	.combout(\Selector15~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~0 .lut_mask = 16'hAA82;
defparam \Selector15~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N30
cycloneive_lcell_comb \Selector15~2 (
// Equation(s):
// \Selector15~2_combout  = (\Decoder2~5_combout  & ((\Selector15~0_combout ) # ((!\cuif.inst[5]~input_o  & \Selector15~1_combout ))))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(\Selector15~1_combout ),
	.datac(\Decoder2~5_combout ),
	.datad(\Selector15~0_combout ),
	.cin(gnd),
	.combout(\Selector15~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~2 .lut_mask = 16'hF040;
defparam \Selector15~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N20
cycloneive_lcell_comb \Selector15~3 (
// Equation(s):
// \Selector15~3_combout  = (\cuif.inst[5]~input_o  & (((!\cuif.inst[6]~input_o ) # (!\cuif.inst[2]~input_o )))) # (!\cuif.inst[5]~input_o  & ((\cuif.inst[3]~input_o ) # ((\cuif.inst[2]~input_o ) # (\cuif.inst[6]~input_o ))))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(\cuif.inst[3]~input_o ),
	.datac(\cuif.inst[2]~input_o ),
	.datad(\cuif.inst[6]~input_o ),
	.cin(gnd),
	.combout(\Selector15~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~3 .lut_mask = 16'h5FFE;
defparam \Selector15~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N6
cycloneive_lcell_comb \Selector15~4 (
// Equation(s):
// \Selector15~4_combout  = (\Selector15~2_combout ) # ((!\Selector15~3_combout  & (!\cuif.inst[4]~input_o  & \Decoder2~2_combout )))

	.dataa(\Selector15~2_combout ),
	.datab(\Selector15~3_combout ),
	.datac(\cuif.inst[4]~input_o ),
	.datad(\Decoder2~2_combout ),
	.cin(gnd),
	.combout(\Selector15~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~4 .lut_mask = 16'hABAA;
defparam \Selector15~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N14
cycloneive_lcell_comb \Selector14~4 (
// Equation(s):
// \Selector14~4_combout  = (\cuif.inst[13]~input_o  & (!\cuif.inst[14]~input_o )) # (!\cuif.inst[13]~input_o  & (\cuif.inst[14]~input_o  & \cuif.inst[30]~input_o ))

	.dataa(gnd),
	.datab(\cuif.inst[13]~input_o ),
	.datac(\cuif.inst[14]~input_o ),
	.datad(\cuif.inst[30]~input_o ),
	.cin(gnd),
	.combout(\Selector14~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~4 .lut_mask = 16'h3C0C;
defparam \Selector14~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N12
cycloneive_lcell_comb \Equal0~0 (
// Equation(s):
// \Equal0~0_combout  = (!\cuif.inst[12]~input_o  & (!\cuif.inst[14]~input_o  & !\cuif.inst[13]~input_o ))

	.dataa(gnd),
	.datab(\cuif.inst[12]~input_o ),
	.datac(\cuif.inst[14]~input_o ),
	.datad(\cuif.inst[13]~input_o ),
	.cin(gnd),
	.combout(\Equal0~0_combout ),
	.cout());
// synopsys translate_off
defparam \Equal0~0 .lut_mask = 16'h0003;
defparam \Equal0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y69_N18
cycloneive_lcell_comb \Equal6~1 (
// Equation(s):
// \Equal6~1_combout  = (!\cuif.inst[29]~input_o  & (!\cuif.inst[31]~input_o  & (\Equal6~0_combout  & \cuif.inst[30]~input_o )))

	.dataa(\cuif.inst[29]~input_o ),
	.datab(\cuif.inst[31]~input_o ),
	.datac(\Equal6~0_combout ),
	.datad(\cuif.inst[30]~input_o ),
	.cin(gnd),
	.combout(\Equal6~1_combout ),
	.cout());
// synopsys translate_off
defparam \Equal6~1 .lut_mask = 16'h1000;
defparam \Equal6~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N24
cycloneive_lcell_comb \Selector14~1 (
// Equation(s):
// \Selector14~1_combout  = (\Equal6~1_combout  & (((\cuif.inst[13]~input_o )))) # (!\Equal6~1_combout  & ((\cuif.inst[14]~input_o  & (!\cuif.inst[12]~input_o )) # (!\cuif.inst[14]~input_o  & ((\cuif.inst[13]~input_o )))))

	.dataa(\Equal6~1_combout ),
	.datab(\cuif.inst[14]~input_o ),
	.datac(\cuif.inst[12]~input_o ),
	.datad(\cuif.inst[13]~input_o ),
	.cin(gnd),
	.combout(\Selector14~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~1 .lut_mask = 16'hBF04;
defparam \Selector14~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N18
cycloneive_lcell_comb \Selector14~2 (
// Equation(s):
// \Selector14~2_combout  = (\Equal9~0_combout  & ((\Equal0~0_combout ) # ((\Selector14~1_combout  & !\Equal6~1_combout )))) # (!\Equal9~0_combout  & (((!\Selector14~1_combout  & \Equal6~1_combout ))))

	.dataa(\Equal0~0_combout ),
	.datab(\Selector14~1_combout ),
	.datac(\Equal6~1_combout ),
	.datad(\Equal9~0_combout ),
	.cin(gnd),
	.combout(\Selector14~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~2 .lut_mask = 16'hAE30;
defparam \Selector14~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N12
cycloneive_lcell_comb \Selector14~3 (
// Equation(s):
// \Selector14~3_combout  = (\Selector14~2_combout  & ((\Equal9~0_combout  & (\cuif.inst[5]~input_o )) # (!\Equal9~0_combout  & ((\Selector14~0_combout )))))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(\Selector14~0_combout ),
	.datac(\Selector14~2_combout ),
	.datad(\Equal9~0_combout ),
	.cin(gnd),
	.combout(\Selector14~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~3 .lut_mask = 16'hA0C0;
defparam \Selector14~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N8
cycloneive_lcell_comb \Selector14~5 (
// Equation(s):
// \Selector14~5_combout  = (!\Selector14~3_combout  & ((\cuif.inst[5]~input_o ) # ((!\Selector14~4_combout  & \cuif.inst[12]~input_o ))))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(\Selector14~4_combout ),
	.datac(\cuif.inst[12]~input_o ),
	.datad(\Selector14~3_combout ),
	.cin(gnd),
	.combout(\Selector14~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~5 .lut_mask = 16'h00BA;
defparam \Selector14~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N2
cycloneive_lcell_comb \jumpPCsrc~0 (
// Equation(s):
// \jumpPCsrc~0_combout  = (!\cuif.inst[4]~input_o  & (\cuif.inst[1]~input_o  & \cuif.inst[0]~input_o ))

	.dataa(gnd),
	.datab(\cuif.inst[4]~input_o ),
	.datac(\cuif.inst[1]~input_o ),
	.datad(\cuif.inst[0]~input_o ),
	.cin(gnd),
	.combout(\jumpPCsrc~0_combout ),
	.cout());
// synopsys translate_off
defparam \jumpPCsrc~0 .lut_mask = 16'h3000;
defparam \jumpPCsrc~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N2
cycloneive_lcell_comb \Selector14~6 (
// Equation(s):
// \Selector14~6_combout  = (\Decoder2~5_combout  & (((!\Selector15~3_combout  & \jumpPCsrc~0_combout )) # (!\Selector14~5_combout ))) # (!\Decoder2~5_combout  & (!\Selector15~3_combout  & ((\jumpPCsrc~0_combout ))))

	.dataa(\Decoder2~5_combout ),
	.datab(\Selector15~3_combout ),
	.datac(\Selector14~5_combout ),
	.datad(\jumpPCsrc~0_combout ),
	.cin(gnd),
	.combout(\Selector14~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~6 .lut_mask = 16'h3B0A;
defparam \Selector14~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N10
cycloneive_lcell_comb \Selector13~2 (
// Equation(s):
// \Selector13~2_combout  = (!\cuif.inst[6]~input_o  & ((\Equal0~0_combout  & (\cuif.inst[5]~input_o )) # (!\Equal0~0_combout  & ((\cuif.inst[14]~input_o )))))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(\cuif.inst[6]~input_o ),
	.datac(\cuif.inst[14]~input_o ),
	.datad(\Equal0~0_combout ),
	.cin(gnd),
	.combout(\Selector13~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~2 .lut_mask = 16'h2230;
defparam \Selector13~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N30
cycloneive_lcell_comb \Selector13~0 (
// Equation(s):
// \Selector13~0_combout  = (\cuif.inst[14]~input_o  & ((\cuif.inst[13]~input_o ) # (!\cuif.inst[12]~input_o )))

	.dataa(gnd),
	.datab(\cuif.inst[12]~input_o ),
	.datac(\cuif.inst[14]~input_o ),
	.datad(\cuif.inst[13]~input_o ),
	.cin(gnd),
	.combout(\Selector13~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~0 .lut_mask = 16'hF030;
defparam \Selector13~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N8
cycloneive_lcell_comb \Selector13~1 (
// Equation(s):
// \Selector13~1_combout  = (\cuif.inst[5]~input_o  & (!\cuif.inst[4]~input_o  & ((\cuif.inst[6]~input_o )))) # (!\cuif.inst[5]~input_o  & (\cuif.inst[4]~input_o  & (\Selector13~0_combout  & !\cuif.inst[6]~input_o )))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(\cuif.inst[4]~input_o ),
	.datac(\Selector13~0_combout ),
	.datad(\cuif.inst[6]~input_o ),
	.cin(gnd),
	.combout(\Selector13~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~1 .lut_mask = 16'h2240;
defparam \Selector13~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N20
cycloneive_lcell_comb \Selector13~3 (
// Equation(s):
// \Selector13~3_combout  = (\cuif.inst[12]~input_o  & ((!\cuif.inst[5]~input_o ) # (!\cuif.inst[13]~input_o )))

	.dataa(gnd),
	.datab(\cuif.inst[13]~input_o ),
	.datac(\cuif.inst[12]~input_o ),
	.datad(\cuif.inst[5]~input_o ),
	.cin(gnd),
	.combout(\Selector13~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~3 .lut_mask = 16'h30F0;
defparam \Selector13~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N22
cycloneive_lcell_comb \Selector13~4 (
// Equation(s):
// \Selector13~4_combout  = (\Equal0~0_combout  & (((\Equal6~1_combout  & !\Equal9~0_combout )))) # (!\Equal0~0_combout  & (!\Selector13~3_combout  & ((\Equal9~0_combout ))))

	.dataa(\Equal0~0_combout ),
	.datab(\Selector13~3_combout ),
	.datac(\Equal6~1_combout ),
	.datad(\Equal9~0_combout ),
	.cin(gnd),
	.combout(\Selector13~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~4 .lut_mask = 16'h11A0;
defparam \Selector13~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X4_Y65_N4
cycloneive_lcell_comb \Selector13~5 (
// Equation(s):
// \Selector13~5_combout  = (\Selector13~1_combout ) # ((\Selector13~2_combout  & (\cuif.inst[4]~input_o  & \Selector13~4_combout )))

	.dataa(\Selector13~2_combout ),
	.datab(\cuif.inst[4]~input_o ),
	.datac(\Selector13~1_combout ),
	.datad(\Selector13~4_combout ),
	.cin(gnd),
	.combout(\Selector13~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~5 .lut_mask = 16'hF8F0;
defparam \Selector13~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N16
cycloneive_lcell_comb \Selector13~6 (
// Equation(s):
// \Selector13~6_combout  = (\Selector13~5_combout  & (!\cuif.inst[3]~input_o  & (!\cuif.inst[2]~input_o  & \Decoder2~2_combout )))

	.dataa(\Selector13~5_combout ),
	.datab(\cuif.inst[3]~input_o ),
	.datac(\cuif.inst[2]~input_o ),
	.datad(\Decoder2~2_combout ),
	.cin(gnd),
	.combout(\Selector13~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~6 .lut_mask = 16'h0200;
defparam \Selector13~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N0
cycloneive_lcell_comb \Selector12~0 (
// Equation(s):
// \Selector12~0_combout  = (!\cuif.inst[14]~input_o  & \cuif.inst[13]~input_o )

	.dataa(gnd),
	.datab(\cuif.inst[14]~input_o ),
	.datac(gnd),
	.datad(\cuif.inst[13]~input_o ),
	.cin(gnd),
	.combout(\Selector12~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~0 .lut_mask = 16'h3300;
defparam \Selector12~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X5_Y65_N26
cycloneive_lcell_comb \Selector12~1 (
// Equation(s):
// \Selector12~1_combout  = (\Selector12~0_combout  & (\Decoder2~5_combout  & ((\Equal9~0_combout ) # (!\cuif.inst[5]~input_o ))))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(\Selector12~0_combout ),
	.datac(\Decoder2~5_combout ),
	.datad(\Equal9~0_combout ),
	.cin(gnd),
	.combout(\Selector12~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~1 .lut_mask = 16'hC040;
defparam \Selector12~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N2
cycloneive_lcell_comb \Decoder2~6 (
// Equation(s):
// \Decoder2~6_combout  = (!\cuif.inst[5]~input_o  & (\cuif.inst[4]~input_o  & \Decoder2~3_combout ))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(gnd),
	.datac(\cuif.inst[4]~input_o ),
	.datad(\Decoder2~3_combout ),
	.cin(gnd),
	.combout(\Decoder2~6_combout ),
	.cout());
// synopsys translate_off
defparam \Decoder2~6 .lut_mask = 16'h5000;
defparam \Decoder2~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N4
cycloneive_lcell_comb \Decoder2~7 (
// Equation(s):
// \Decoder2~7_combout  = (!\cuif.inst[5]~input_o  & (!\cuif.inst[4]~input_o  & \Decoder2~3_combout ))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(gnd),
	.datac(\cuif.inst[4]~input_o ),
	.datad(\Decoder2~3_combout ),
	.cin(gnd),
	.combout(\Decoder2~7_combout ),
	.cout());
// synopsys translate_off
defparam \Decoder2~7 .lut_mask = 16'h0500;
defparam \Decoder2~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y65_N22
cycloneive_lcell_comb \Decoder2~8 (
// Equation(s):
// \Decoder2~8_combout  = (\cuif.inst[5]~input_o  & (!\cuif.inst[4]~input_o  & \Decoder2~3_combout ))

	.dataa(\cuif.inst[5]~input_o ),
	.datab(gnd),
	.datac(\cuif.inst[4]~input_o ),
	.datad(\Decoder2~3_combout ),
	.cin(gnd),
	.combout(\Decoder2~8_combout ),
	.cout());
// synopsys translate_off
defparam \Decoder2~8 .lut_mask = 16'h0A00;
defparam \Decoder2~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N30
cycloneive_lcell_comb \WideOr2~0 (
// Equation(s):
// \WideOr2~0_combout  = (\cuif.inst[6]~input_o ) # ((\cuif.inst[5]~input_o  & ((!\cuif.inst[4]~input_o ))) # (!\cuif.inst[5]~input_o  & (\cuif.inst[2]~input_o )))

	.dataa(\cuif.inst[2]~input_o ),
	.datab(\cuif.inst[5]~input_o ),
	.datac(\cuif.inst[6]~input_o ),
	.datad(\cuif.inst[4]~input_o ),
	.cin(gnd),
	.combout(\WideOr2~0_combout ),
	.cout());
// synopsys translate_off
defparam \WideOr2~0 .lut_mask = 16'hF2FE;
defparam \WideOr2~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N12
cycloneive_lcell_comb \jumpPCsrc~1 (
// Equation(s):
// \jumpPCsrc~1_combout  = (\cuif.inst[2]~input_o  & (\cuif.inst[5]~input_o  & (\cuif.inst[6]~input_o  & \jumpPCsrc~0_combout )))

	.dataa(\cuif.inst[2]~input_o ),
	.datab(\cuif.inst[5]~input_o ),
	.datac(\cuif.inst[6]~input_o ),
	.datad(\jumpPCsrc~0_combout ),
	.cin(gnd),
	.combout(\jumpPCsrc~1_combout ),
	.cout());
// synopsys translate_off
defparam \jumpPCsrc~1 .lut_mask = 16'h8000;
defparam \jumpPCsrc~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N0
cycloneive_lcell_comb \WideOr2~1 (
// Equation(s):
// \WideOr2~1_combout  = (\cuif.inst[3]~input_o  & (((\jumpPCsrc~1_combout )))) # (!\cuif.inst[3]~input_o  & (!\WideOr2~0_combout  & (\Decoder2~2_combout )))

	.dataa(\WideOr2~0_combout ),
	.datab(\Decoder2~2_combout ),
	.datac(\cuif.inst[3]~input_o ),
	.datad(\jumpPCsrc~1_combout ),
	.cin(gnd),
	.combout(\WideOr2~1_combout ),
	.cout());
// synopsys translate_off
defparam \WideOr2~1 .lut_mask = 16'hF404;
defparam \WideOr2~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N10
cycloneive_lcell_comb \Decoder2~9 (
// Equation(s):
// \Decoder2~9_combout  = (!\cuif.inst[2]~input_o  & !\cuif.inst[3]~input_o )

	.dataa(\cuif.inst[2]~input_o ),
	.datab(gnd),
	.datac(\cuif.inst[3]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Decoder2~9_combout ),
	.cout());
// synopsys translate_off
defparam \Decoder2~9 .lut_mask = 16'h0505;
defparam \Decoder2~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y69_N20
cycloneive_lcell_comb \Decoder2~10 (
// Equation(s):
// \Decoder2~10_combout  = (\Decoder2~9_combout  & (\cuif.inst[5]~input_o  & (\cuif.inst[6]~input_o  & \jumpPCsrc~0_combout )))

	.dataa(\Decoder2~9_combout ),
	.datab(\cuif.inst[5]~input_o ),
	.datac(\cuif.inst[6]~input_o ),
	.datad(\jumpPCsrc~0_combout ),
	.cin(gnd),
	.combout(\Decoder2~10_combout ),
	.cout());
// synopsys translate_off
defparam \Decoder2~10 .lut_mask = 16'h8000;
defparam \Decoder2~10 .sum_lutc_input = "datac";
// synopsys translate_on

endmodule
