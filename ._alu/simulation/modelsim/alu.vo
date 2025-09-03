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

// DATE "09/03/2025 19:02:37"

// 
// Device: Altera EP4CE115F29C8 Package FBGA780
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module alu (
	\aluif.zero ,
	\aluif.overflow ,
	\aluif.negative ,
	\aluif.out ,
	\aluif.opcode ,
	\aluif.b ,
	\aluif.a );
output 	\aluif.zero ;
output 	\aluif.overflow ;
output 	\aluif.negative ;
output 	[31:0] \aluif.out ;
input 	[3:0] \aluif.opcode ;
input 	[31:0] \aluif.b ;
input 	[31:0] \aluif.a ;

// Design Ports Information
// aluif.zero	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.overflow	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.negative	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[0]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[1]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[3]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[4]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[5]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[6]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[7]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[8]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[9]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[10]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[11]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[12]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[13]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[14]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[15]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[16]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[17]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[18]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[19]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[20]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[21]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[22]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[23]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[24]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[25]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[26]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[27]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[28]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[29]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[30]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.out[31]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.opcode[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.opcode[1]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.opcode[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.opcode[3]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[23]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[21]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[1]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[22]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[20]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[0]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[19]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[17]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[18]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[16]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[2]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[29]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[28]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[31]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[30]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[27]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[25]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[26]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[24]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[15]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[13]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[14]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[12]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[11]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[9]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[10]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[8]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[7]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[6]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[5]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[4]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[1]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[0]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.a[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[4]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[31]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[30]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[29]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[28]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[27]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[26]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[25]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[24]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[23]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[22]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[21]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[20]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[19]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[18]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[17]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[16]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[15]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[14]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[13]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[12]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[11]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[10]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[9]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[8]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[7]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[6]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// aluif.b[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
wire \aluif.b[27]~input_o ;
wire \aluif.a[27]~input_o ;
wire \aluif.b[26]~input_o ;
wire \aluif.a[26]~input_o ;
wire \aluif.b[25]~input_o ;
wire \aluif.a[25]~input_o ;
wire \aluif.b[24]~input_o ;
wire \aluif.a[24]~input_o ;
wire \aluif.a[23]~input_o ;
wire \aluif.b[23]~input_o ;
wire \aluif.a[22]~input_o ;
wire \aluif.b[22]~input_o ;
wire \aluif.b[21]~input_o ;
wire \aluif.a[21]~input_o ;
wire \aluif.b[20]~input_o ;
wire \aluif.a[20]~input_o ;
wire \aluif.a[19]~input_o ;
wire \aluif.b[19]~input_o ;
wire \aluif.a[18]~input_o ;
wire \aluif.b[18]~input_o ;
wire \aluif.a[17]~input_o ;
wire \aluif.b[17]~input_o ;
wire \aluif.a[16]~input_o ;
wire \aluif.b[16]~input_o ;
wire \aluif.a[15]~input_o ;
wire \aluif.b[15]~input_o ;
wire \aluif.a[14]~input_o ;
wire \aluif.b[14]~input_o ;
wire \aluif.a[13]~input_o ;
wire \aluif.b[13]~input_o ;
wire \aluif.b[12]~input_o ;
wire \aluif.a[12]~input_o ;
wire \aluif.b[11]~input_o ;
wire \aluif.a[11]~input_o ;
wire \aluif.b[10]~input_o ;
wire \aluif.a[10]~input_o ;
wire \aluif.a[9]~input_o ;
wire \aluif.b[9]~input_o ;
wire \aluif.a[8]~input_o ;
wire \aluif.b[8]~input_o ;
wire \aluif.b[7]~input_o ;
wire \aluif.a[7]~input_o ;
wire \aluif.b[6]~input_o ;
wire \aluif.a[6]~input_o ;
wire \aluif.b[5]~input_o ;
wire \aluif.a[5]~input_o ;
wire \aluif.b[4]~input_o ;
wire \aluif.a[4]~input_o ;
wire \aluif.a[3]~input_o ;
wire \aluif.b[3]~input_o ;
wire \aluif.b[2]~input_o ;
wire \aluif.a[2]~input_o ;
wire \aluif.b[1]~input_o ;
wire \aluif.a[1]~input_o ;
wire \aluif.a[0]~input_o ;
wire \aluif.b[0]~input_o ;
wire \Add1~1 ;
wire \Add1~3 ;
wire \Add1~5 ;
wire \Add1~7 ;
wire \Add1~9 ;
wire \Add1~11 ;
wire \Add1~13 ;
wire \Add1~15 ;
wire \Add1~17 ;
wire \Add1~19 ;
wire \Add1~21 ;
wire \Add1~23 ;
wire \Add1~25 ;
wire \Add1~27 ;
wire \Add1~29 ;
wire \Add1~31 ;
wire \Add1~33 ;
wire \Add1~35 ;
wire \Add1~37 ;
wire \Add1~39 ;
wire \Add1~41 ;
wire \Add1~43 ;
wire \Add1~45 ;
wire \Add1~47 ;
wire \Add1~49 ;
wire \Add1~51 ;
wire \Add1~53 ;
wire \Add1~54_combout ;
wire \aluif.opcode[0]~input_o ;
wire \aluif.opcode[1]~input_o ;
wire \aluif.opcode[3]~input_o ;
wire \aluif.opcode[2]~input_o ;
wire \Selector0~19_combout ;
wire \Selector0~6_combout ;
wire \Add0~1 ;
wire \Add0~3 ;
wire \Add0~5 ;
wire \Add0~7 ;
wire \Add0~9 ;
wire \Add0~11 ;
wire \Add0~13 ;
wire \Add0~15 ;
wire \Add0~17 ;
wire \Add0~19 ;
wire \Add0~21 ;
wire \Add0~23 ;
wire \Add0~25 ;
wire \Add0~27 ;
wire \Add0~29 ;
wire \Add0~31 ;
wire \Add0~33 ;
wire \Add0~35 ;
wire \Add0~37 ;
wire \Add0~39 ;
wire \Add0~41 ;
wire \Add0~43 ;
wire \Add0~45 ;
wire \Add0~47 ;
wire \Add0~49 ;
wire \Add0~51 ;
wire \Add0~53 ;
wire \Add0~54_combout ;
wire \Selector4~7_combout ;
wire \Selector23~0_combout ;
wire \Selector10~3_combout ;
wire \ShiftLeft0~33_combout ;
wire \aluif.a[31]~input_o ;
wire \Selector20~2_combout ;
wire \aluif.a[28]~input_o ;
wire \ShiftRight1~26_combout ;
wire \aluif.a[30]~input_o ;
wire \aluif.a[29]~input_o ;
wire \ShiftRight1~16_combout ;
wire \ShiftRight1~27_combout ;
wire \Selector4~0_combout ;
wire \Selector7~3_combout ;
wire \Selector6~2_combout ;
wire \ShiftLeft0~47_combout ;
wire \ShiftRight0~23_combout ;
wire \Selector4~1_combout ;
wire \Selector10~4_combout ;
wire \Selector10~5_combout ;
wire \Selector0~7_combout ;
wire \Selector4~3_combout ;
wire \Selector7~4_combout ;
wire \ShiftLeft0~25_combout ;
wire \ShiftLeft0~24_combout ;
wire \ShiftLeft0~26_combout ;
wire \ShiftLeft0~27_combout ;
wire \ShiftLeft0~28_combout ;
wire \ShiftLeft0~29_combout ;
wire \Selector7~2_combout ;
wire \ShiftLeft0~18_combout ;
wire \ShiftLeft0~17_combout ;
wire \ShiftLeft0~19_combout ;
wire \ShiftLeft0~49_combout ;
wire \ShiftLeft0~97_combout ;
wire \ShiftLeft0~8_combout ;
wire \ShiftLeft0~9_combout ;
wire \ShiftLeft0~10_combout ;
wire \ShiftLeft0~21_combout ;
wire \ShiftLeft0~20_combout ;
wire \ShiftLeft0~22_combout ;
wire \ShiftLeft0~12_combout ;
wire \ShiftLeft0~11_combout ;
wire \ShiftLeft0~13_combout ;
wire \ShiftLeft0~48_combout ;
wire \Selector4~4_combout ;
wire \ShiftLeft0~14_combout ;
wire \ShiftLeft0~15_combout ;
wire \ShiftLeft0~16_combout ;
wire \Selector4~5_combout ;
wire \Selector0~4_combout ;
wire \Selector0~21_combout ;
wire \Selector0~20_combout ;
wire \Selector4~2_combout ;
wire \Selector4~6_combout ;
wire \Selector4~8_combout ;
wire \aluif.b[28]~input_o ;
wire \Selector3~1_combout ;
wire \Selector9~0_combout ;
wire \ShiftRight1~2_combout ;
wire \ShiftRight0~5_combout ;
wire \ShiftRight0~6_combout ;
wire \Selector3~0_combout ;
wire \Selector3~2_combout ;
wire \Selector3~3_combout ;
wire \Selector10~16_combout ;
wire \Selector30~7_combout ;
wire \ShiftLeft0~43_combout ;
wire \ShiftLeft0~79_combout ;
wire \ShiftLeft0~59_combout ;
wire \ShiftLeft0~80_combout ;
wire \ShiftLeft0~81_combout ;
wire \ShiftLeft0~75_combout ;
wire \Selector2~6_combout ;
wire \ShiftLeft0~73_combout ;
wire \ShiftLeft0~56_combout ;
wire \ShiftLeft0~94_combout ;
wire \Selector3~5_combout ;
wire \Selector3~6_combout ;
wire \Add0~55 ;
wire \Add0~56_combout ;
wire \Selector3~7_combout ;
wire \Selector3~4_combout ;
wire \Add1~55 ;
wire \Add1~56_combout ;
wire \Selector3~8_combout ;
wire \ShiftLeft0~37_combout ;
wire \ShiftLeft0~82_combout ;
wire \ShiftLeft0~40_combout ;
wire \ShiftLeft0~83_combout ;
wire \Selector11~10_combout ;
wire \ShiftLeft0~51_combout ;
wire \ShiftLeft0~34_combout ;
wire \ShiftLeft0~52_combout ;
wire \ShiftLeft0~53_combout ;
wire \ShiftLeft0~93_combout ;
wire \Selector3~9_combout ;
wire \Add0~52_combout ;
wire \Add1~52_combout ;
wire \Selector5~4_combout ;
wire \Selector5~5_combout ;
wire \Selector5~6_combout ;
wire \Selector5~7_combout ;
wire \ShiftRight1~18_combout ;
wire \ShiftRight1~47_combout ;
wire \ShiftRight1~48_combout ;
wire \ShiftRight0~25_combout ;
wire \Selector5~8_combout ;
wire \ShiftLeft0~38_combout ;
wire \ShiftLeft0~62_combout ;
wire \ShiftLeft0~35_combout ;
wire \ShiftLeft0~67_combout ;
wire \ShiftLeft0~85_combout ;
wire \ShiftLeft0~65_combout ;
wire \ShiftLeft0~66_combout ;
wire \ShiftLeft0~95_combout ;
wire \ShiftLeft0~44_combout ;
wire \ShiftLeft0~70_combout ;
wire \ShiftLeft0~41_combout ;
wire \ShiftLeft0~63_combout ;
wire \ShiftLeft0~90_combout ;
wire \ShiftLeft0~74_combout ;
wire \ShiftLeft0~76_combout ;
wire \Selector5~2_combout ;
wire \ShiftLeft0~71_combout ;
wire \ShiftLeft0~72_combout ;
wire \Selector5~3_combout ;
wire \ShiftRight1~51_combout ;
wire \ShiftRight1~52_combout ;
wire \Selector5~10_combout ;
wire \Selector5~9_combout ;
wire \Selector23~1_combout ;
wire \Selector28~0_combout ;
wire \Selector28~1_combout ;
wire \out~12_combout ;
wire \Add1~6_combout ;
wire \Selector28~2_combout ;
wire \Add0~6_combout ;
wire \Selector28~4_combout ;
wire \ShiftRight1~59_combout ;
wire \ShiftRight1~5_combout ;
wire \ShiftRight1~63_combout ;
wire \ShiftRight1~13_combout ;
wire \Selector28~5_combout ;
wire \ShiftRight1~35_combout ;
wire \ShiftRight1~4_combout ;
wire \ShiftRight1~36_combout ;
wire \ShiftRight1~1_combout ;
wire \ShiftRight1~37_combout ;
wire \ShiftRight1~38_combout ;
wire \ShiftRight1~39_combout ;
wire \ShiftRight1~11_combout ;
wire \Selector28~6_combout ;
wire \Selector23~2_combout ;
wire \Selector29~1_combout ;
wire \Selector28~3_combout ;
wire \Selector28~7_combout ;
wire \ShiftRight1~3_combout ;
wire \ShiftRight1~30_combout ;
wire \ShiftRight1~31_combout ;
wire \ShiftRight1~28_combout ;
wire \ShiftRight1~0_combout ;
wire \ShiftRight1~29_combout ;
wire \ShiftRight1~32_combout ;
wire \Selector28~8_combout ;
wire \ShiftLeft0~32_combout ;
wire \ShiftRight1~33_combout ;
wire \ShiftRight1~34_combout ;
wire \Selector28~9_combout ;
wire \Selector6~4_combout ;
wire \ShiftRight1~17_combout ;
wire \ShiftRight0~7_combout ;
wire \ShiftRight1~19_combout ;
wire \ShiftRight1~20_combout ;
wire \Selector6~11_combout ;
wire \ShiftRight0~21_combout ;
wire \Selector6~3_combout ;
wire \Add1~50_combout ;
wire \Add0~50_combout ;
wire \Selector6~5_combout ;
wire \Selector6~6_combout ;
wire \ShiftLeft0~58_combout ;
wire \ShiftLeft0~60_combout ;
wire \ShiftLeft0~42_combout ;
wire \ShiftLeft0~45_combout ;
wire \ShiftLeft0~46_combout ;
wire \ShiftLeft0~55_combout ;
wire \ShiftLeft0~57_combout ;
wire \Selector6~7_combout ;
wire \ShiftLeft0~39_combout ;
wire \ShiftLeft0~86_combout ;
wire \ShiftLeft0~87_combout ;
wire \ShiftLeft0~88_combout ;
wire \Selector6~8_combout ;
wire \Selector6~9_combout ;
wire \Selector6~10_combout ;
wire \Equal10~8_combout ;
wire \Selector19~2_combout ;
wire \Selector23~4_combout ;
wire \ShiftRight0~2_combout ;
wire \ShiftRight0~3_combout ;
wire \Selector23~3_combout ;
wire \ShiftRight0~8_combout ;
wire \Selector19~3_combout ;
wire \Selector19~4_combout ;
wire \out~9_combout ;
wire \Add1~24_combout ;
wire \Selector19~5_combout ;
wire \ShiftRight0~11_combout ;
wire \ShiftRight0~12_combout ;
wire \ShiftRight0~0_combout ;
wire \ShiftRight0~1_combout ;
wire \Selector23~7_combout ;
wire \Selector19~6_combout ;
wire \Add0~24_combout ;
wire \Selector19~0_combout ;
wire \Selector23~5_combout ;
wire \Selector19~1_combout ;
wire \Selector19~7_combout ;
wire \ShiftRight1~62_combout ;
wire \Selector8~8_combout ;
wire \Selector8~1_combout ;
wire \ShiftRight1~57_combout ;
wire \ShiftLeft0~84_combout ;
wire \Selector8~0_combout ;
wire \Selector8~2_combout ;
wire \Selector8~3_combout ;
wire \Add0~46_combout ;
wire \out~10_combout ;
wire \Add1~46_combout ;
wire \Selector8~5_combout ;
wire \Selector8~6_combout ;
wire \Selector8~4_combout ;
wire \Selector10~12_combout ;
wire \ShiftLeft0~30_combout ;
wire \Selector8~7_combout ;
wire \Selector8~9_combout ;
wire \Selector24~14_combout ;
wire \Selector24~9_combout ;
wire \Selector24~7_combout ;
wire \Selector24~8_combout ;
wire \Add1~14_combout ;
wire \Selector24~10_combout ;
wire \Selector24~11_combout ;
wire \Selector24~12_combout ;
wire \Add0~14_combout ;
wire \Selector24~15_combout ;
wire \Selector24~4_combout ;
wire \Selector24~5_combout ;
wire \Selector24~6_combout ;
wire \Selector24~13_combout ;
wire \ShiftRight1~21_combout ;
wire \ShiftRight1~49_combout ;
wire \ShiftRight1~14_combout ;
wire \ShiftRight1~54_combout ;
wire \Selector17~8_combout ;
wire \Selector17~4_combout ;
wire \out~11_combout ;
wire \Add1~28_combout ;
wire \Selector17~6_combout ;
wire \Add0~28_combout ;
wire \Selector15~1_combout ;
wire \Selector17~5_combout ;
wire \Selector17~7_combout ;
wire \Selector17~9_combout ;
wire \ShiftLeft0~68_combout ;
wire \ShiftLeft0~64_combout ;
wire \ShiftLeft0~69_combout ;
wire \Selector17~11_combout ;
wire \ShiftRight1~23_combout ;
wire \ShiftRight1~56_combout ;
wire \Selector17~2_combout ;
wire \Selector17~3_combout ;
wire \Selector17~10_combout ;
wire \Equal10~7_combout ;
wire \Selector7~6_combout ;
wire \Selector7~13_combout ;
wire \ShiftRight0~9_combout ;
wire \Selector7~5_combout ;
wire \ShiftLeft0~91_combout ;
wire \ShiftLeft0~92_combout ;
wire \ShiftLeft0~96_combout ;
wire \ShiftLeft0~89_combout ;
wire \Selector7~9_combout ;
wire \Selector7~10_combout ;
wire \Add1~48_combout ;
wire \Add0~48_combout ;
wire \Selector7~8_combout ;
wire \Selector7~7_combout ;
wire \Selector7~11_combout ;
wire \Selector7~12_combout ;
wire \Equal10~9_combout ;
wire \out~2_combout ;
wire \Add1~10_combout ;
wire \Selector26~4_combout ;
wire \ShiftRight1~24_combout ;
wire \ShiftRight0~13_combout ;
wire \ShiftRight1~8_combout ;
wire \ShiftRight1~9_combout ;
wire \Selector26~5_combout ;
wire \ShiftRight1~15_combout ;
wire \Selector26~6_combout ;
wire \ShiftRight1~22_combout ;
wire \ShiftRight1~40_combout ;
wire \Selector26~7_combout ;
wire \ShiftRight1~41_combout ;
wire \ShiftRight1~42_combout ;
wire \Selector26~2_combout ;
wire \ShiftLeft0~36_combout ;
wire \ShiftLeft0~50_combout ;
wire \Selector26~3_combout ;
wire \Selector26~8_combout ;
wire \Selector18~0_combout ;
wire \Add0~10_combout ;
wire \ShiftRight1~10_combout ;
wire \ShiftRight1~12_combout ;
wire \Selector26~0_combout ;
wire \Selector26~1_combout ;
wire \Selector26~9_combout ;
wire \Add1~8_combout ;
wire \out~3_combout ;
wire \Selector27~4_combout ;
wire \Selector27~5_combout ;
wire \Selector27~6_combout ;
wire \ShiftRight0~16_combout ;
wire \ShiftRight1~6_combout ;
wire \Selector27~7_combout ;
wire \Add0~8_combout ;
wire \Selector27~8_combout ;
wire \ShiftRight1~43_combout ;
wire \ShiftRight1~44_combout ;
wire \Selector27~0_combout ;
wire \ShiftRight0~14_combout ;
wire \Selector27~2_combout ;
wire \Selector27~1_combout ;
wire \Selector27~3_combout ;
wire \Selector27~9_combout ;
wire \aluif.b[29]~input_o ;
wire \Add0~57 ;
wire \Add0~58_combout ;
wire \Selector2~3_combout ;
wire \Add1~57 ;
wire \Add1~58_combout ;
wire \Selector2~4_combout ;
wire \Selector2~5_combout ;
wire \ShiftLeft0~61_combout ;
wire \ShiftLeft0~7_combout ;
wire \Selector2~7_combout ;
wire \Selector2~8_combout ;
wire \Selector2~9_combout ;
wire \Selector18~1_combout ;
wire \Selector2~0_combout ;
wire \Selector2~1_combout ;
wire \Selector10~6_combout ;
wire \ShiftLeft0~54_combout ;
wire \Selector2~2_combout ;
wire \Selector2~10_combout ;
wire \Selector1~4_combout ;
wire \Selector1~5_combout ;
wire \Selector1~6_combout ;
wire \Selector1~7_combout ;
wire \Selector1~1_combout ;
wire \Selector1~2_combout ;
wire \Selector0~0_combout ;
wire \Selector1~3_combout ;
wire \Selector1~8_combout ;
wire \Selector0~3_combout ;
wire \aluif.b[30]~input_o ;
wire \Selector0~2_combout ;
wire \Selector1~9_combout ;
wire \ShiftLeft0~6_combout ;
wire \Selector0~1_combout ;
wire \Selector1~10_combout ;
wire \Selector1~13_combout ;
wire \Add1~59 ;
wire \Add1~60_combout ;
wire \Add0~59 ;
wire \Add0~60_combout ;
wire \Selector0~5_combout ;
wire \Selector1~12_combout ;
wire \Selector1~11_combout ;
wire \Selector1~14_combout ;
wire \Selector1~0_combout ;
wire \Selector1~15_combout ;
wire \Equal10~2_combout ;
wire \Selector0~11_combout ;
wire \Selector0~8_combout ;
wire \Selector0~9_combout ;
wire \Selector0~10_combout ;
wire \Selector0~12_combout ;
wire \ShiftLeft0~23_combout ;
wire \ShiftLeft0~31_combout ;
wire \Selector0~13_combout ;
wire \aluif.b[31]~input_o ;
wire \Selector0~14_combout ;
wire \Selector0~15_combout ;
wire \Add1~61 ;
wire \Add1~62_combout ;
wire \Add0~61 ;
wire \Add0~62_combout ;
wire \Selector0~17_combout ;
wire \Selector0~16_combout ;
wire \Selector0~18_combout ;
wire \Selector31~1_combout ;
wire \Selector31~2_combout ;
wire \Add1~0_combout ;
wire \Selector31~5_combout ;
wire \Add0~0_combout ;
wire \Selector31~6_combout ;
wire \LessThan1~1_cout ;
wire \LessThan1~3_cout ;
wire \LessThan1~5_cout ;
wire \LessThan1~7_cout ;
wire \LessThan1~9_cout ;
wire \LessThan1~11_cout ;
wire \LessThan1~13_cout ;
wire \LessThan1~15_cout ;
wire \LessThan1~17_cout ;
wire \LessThan1~19_cout ;
wire \LessThan1~21_cout ;
wire \LessThan1~23_cout ;
wire \LessThan1~25_cout ;
wire \LessThan1~27_cout ;
wire \LessThan1~29_cout ;
wire \LessThan1~31_cout ;
wire \LessThan1~33_cout ;
wire \LessThan1~35_cout ;
wire \LessThan1~37_cout ;
wire \LessThan1~39_cout ;
wire \LessThan1~41_cout ;
wire \LessThan1~43_cout ;
wire \LessThan1~45_cout ;
wire \LessThan1~47_cout ;
wire \LessThan1~49_cout ;
wire \LessThan1~51_cout ;
wire \LessThan1~53_cout ;
wire \LessThan1~55_cout ;
wire \LessThan1~57_cout ;
wire \LessThan1~59_cout ;
wire \LessThan1~61_cout ;
wire \LessThan1~62_combout ;
wire \LessThan0~1_cout ;
wire \LessThan0~3_cout ;
wire \LessThan0~5_cout ;
wire \LessThan0~7_cout ;
wire \LessThan0~9_cout ;
wire \LessThan0~11_cout ;
wire \LessThan0~13_cout ;
wire \LessThan0~15_cout ;
wire \LessThan0~17_cout ;
wire \LessThan0~19_cout ;
wire \LessThan0~21_cout ;
wire \LessThan0~23_cout ;
wire \LessThan0~25_cout ;
wire \LessThan0~27_cout ;
wire \LessThan0~29_cout ;
wire \LessThan0~31_cout ;
wire \LessThan0~33_cout ;
wire \LessThan0~35_cout ;
wire \LessThan0~37_cout ;
wire \LessThan0~39_cout ;
wire \LessThan0~41_cout ;
wire \LessThan0~43_cout ;
wire \LessThan0~45_cout ;
wire \LessThan0~47_cout ;
wire \LessThan0~49_cout ;
wire \LessThan0~51_cout ;
wire \LessThan0~53_cout ;
wire \LessThan0~55_cout ;
wire \LessThan0~57_cout ;
wire \LessThan0~59_cout ;
wire \LessThan0~61_cout ;
wire \LessThan0~62_combout ;
wire \Selector31~3_combout ;
wire \Selector31~4_combout ;
wire \ShiftRight0~4_combout ;
wire \ShiftRight0~10_combout ;
wire \ShiftRight0~17_combout ;
wire \ShiftRight0~18_combout ;
wire \ShiftRight1~7_combout ;
wire \ShiftRight0~19_combout ;
wire \ShiftRight0~15_combout ;
wire \ShiftRight0~20_combout ;
wire \Selector15~0_combout ;
wire \Selector31~0_combout ;
wire \Selector31~7_combout ;
wire \Equal10~0_combout ;
wire \Selector16~1_combout ;
wire \Selector16~0_combout ;
wire \Selector16~2_combout ;
wire \Selector16~3_combout ;
wire \Add0~30_combout ;
wire \Add1~30_combout ;
wire \out~5_combout ;
wire \Selector16~4_combout ;
wire \Selector16~5_combout ;
wire \Selector16~6_combout ;
wire \Selector16~7_combout ;
wire \Selector16~8_combout ;
wire \ShiftRight1~45_combout ;
wire \Selector11~2_combout ;
wire \Selector11~3_combout ;
wire \Selector11~4_combout ;
wire \Selector11~6_combout ;
wire \Selector10~2_combout ;
wire \Selector11~5_combout ;
wire \Add1~40_combout ;
wire \Selector11~7_combout ;
wire \Add0~40_combout ;
wire \Selector11~11_combout ;
wire \Selector11~8_combout ;
wire \Selector11~9_combout ;
wire \Selector10~17_combout ;
wire \ShiftLeft0~77_combout ;
wire \ShiftLeft0~78_combout ;
wire \Selector10~9_combout ;
wire \Add1~42_combout ;
wire \Selector10~10_combout ;
wire \Selector10~11_combout ;
wire \Selector10~8_combout ;
wire \Selector10~13_combout ;
wire \Selector10~7_combout ;
wire \Selector10~14_combout ;
wire \Add0~42_combout ;
wire \Selector10~15_combout ;
wire \Selector9~2_combout ;
wire \ShiftRight1~50_combout ;
wire \ShiftRight1~46_combout ;
wire \Selector9~1_combout ;
wire \Selector9~3_combout ;
wire \Selector9~4_combout ;
wire \ShiftRight0~24_combout ;
wire \Selector9~5_combout ;
wire \out~4_combout ;
wire \Add1~44_combout ;
wire \Selector9~6_combout ;
wire \Add0~44_combout ;
wire \Selector9~7_combout ;
wire \Selector9~8_combout ;
wire \Selector9~9_combout ;
wire \Equal10~3_combout ;
wire \ShiftRight1~25_combout ;
wire \Add1~2_combout ;
wire \Add0~2_combout ;
wire \Selector30~10_combout ;
wire \Selector30~11_combout ;
wire \Selector30~5_combout ;
wire \Selector14~14_combout ;
wire \Selector30~6_combout ;
wire \Selector30~8_combout ;
wire \ShiftRight0~22_combout ;
wire \Selector30~9_combout ;
wire \Selector30~1_combout ;
wire \Selector30~2_combout ;
wire \Selector30~3_combout ;
wire \Selector30~0_combout ;
wire \Selector30~4_combout ;
wire \Selector30~12_combout ;
wire \Selector30~13_combout ;
wire \Selector12~9_combout ;
wire \Selector12~11_combout ;
wire \Selector12~4_combout ;
wire \Selector12~5_combout ;
wire \out~1_combout ;
wire \Add1~38_combout ;
wire \Selector12~6_combout ;
wire \Selector12~7_combout ;
wire \Selector12~2_combout ;
wire \Selector12~3_combout ;
wire \Selector12~8_combout ;
wire \Add0~38_combout ;
wire \Selector12~10_combout ;
wire \Selector20~4_combout ;
wire \Selector20~8_combout ;
wire \Selector20~7_combout ;
wire \Add1~22_combout ;
wire \Selector20~9_combout ;
wire \Selector20~6_combout ;
wire \Selector20~10_combout ;
wire \Selector20~12_combout ;
wire \Selector20~5_combout ;
wire \Add0~22_combout ;
wire \Selector20~3_combout ;
wire \Selector20~11_combout ;
wire \Add1~34_combout ;
wire \out~0_combout ;
wire \Selector14~7_combout ;
wire \Selector14~5_combout ;
wire \Selector14~6_combout ;
wire \Selector14~8_combout ;
wire \Selector14~12_combout ;
wire \Selector14~3_combout ;
wire \Selector14~2_combout ;
wire \Selector14~4_combout ;
wire \Add0~34_combout ;
wire \Selector14~9_combout ;
wire \Selector14~10_combout ;
wire \Selector14~11_combout ;
wire \Selector14~13_combout ;
wire \Equal10~1_combout ;
wire \Equal10~4_combout ;
wire \Selector18~2_combout ;
wire \Selector22~4_combout ;
wire \Add0~26_combout ;
wire \Add1~26_combout ;
wire \Selector18~5_combout ;
wire \Selector18~4_combout ;
wire \Selector18~6_combout ;
wire \Selector18~7_combout ;
wire \Selector18~3_combout ;
wire \Selector18~8_combout ;
wire \Selector18~9_combout ;
wire \Selector13~9_combout ;
wire \Selector13~6_combout ;
wire \ShiftRight1~61_combout ;
wire \out~7_combout ;
wire \Add1~36_combout ;
wire \Selector13~4_combout ;
wire \Selector13~5_combout ;
wire \Add0~36_combout ;
wire \Selector13~11_combout ;
wire \Selector13~7_combout ;
wire \Selector13~8_combout ;
wire \Selector13~2_combout ;
wire \Selector13~3_combout ;
wire \Selector13~10_combout ;
wire \Add1~32_combout ;
wire \Add0~32_combout ;
wire \Selector15~4_combout ;
wire \Selector15~5_combout ;
wire \Selector15~3_combout ;
wire \Selector15~2_combout ;
wire \Selector15~6_combout ;
wire \Selector15~7_combout ;
wire \Selector15~8_combout ;
wire \Selector15~9_combout ;
wire \Selector23~10_combout ;
wire \Add1~16_combout ;
wire \out~8_combout ;
wire \Selector23~9_combout ;
wire \Selector23~11_combout ;
wire \Selector23~6_combout ;
wire \Selector23~8_combout ;
wire \Selector23~12_combout ;
wire \Add0~16_combout ;
wire \Selector23~13_combout ;
wire \Equal10~6_combout ;
wire \Add0~12_combout ;
wire \ShiftRight1~58_combout ;
wire \ShiftRight1~60_combout ;
wire \Selector25~0_combout ;
wire \Selector25~1_combout ;
wire \Selector25~2_combout ;
wire \Selector25~3_combout ;
wire \Selector25~8_combout ;
wire \Add1~12_combout ;
wire \Selector25~6_combout ;
wire \Selector25~7_combout ;
wire \Selector25~9_combout ;
wire \Selector25~4_combout ;
wire \Selector25~5_combout ;
wire \Selector25~10_combout ;
wire \Selector29~7_combout ;
wire \Selector29~8_combout ;
wire \Selector21~0_combout ;
wire \Selector29~0_combout ;
wire \Add0~4_combout ;
wire \Selector29~2_combout ;
wire \ShiftRight1~53_combout ;
wire \ShiftRight1~55_combout ;
wire \Selector29~3_combout ;
wire \Selector29~4_combout ;
wire \Add1~4_combout ;
wire \Selector29~5_combout ;
wire \Selector29~6_combout ;
wire \Selector29~9_combout ;
wire \Add1~20_combout ;
wire \Selector21~5_combout ;
wire \Selector21~4_combout ;
wire \Selector21~6_combout ;
wire \Add0~20_combout ;
wire \Selector21~7_combout ;
wire \Selector21~1_combout ;
wire \Selector21~2_combout ;
wire \Selector21~3_combout ;
wire \Selector21~8_combout ;
wire \Selector22~7_combout ;
wire \Add0~18_combout ;
wire \Selector22~0_combout ;
wire \Selector22~1_combout ;
wire \Selector22~2_combout ;
wire \out~6_combout ;
wire \Add1~18_combout ;
wire \Selector22~3_combout ;
wire \Selector22~5_combout ;
wire \Selector22~6_combout ;
wire \Selector22~8_combout ;
wire \Equal10~5_combout ;
wire \Equal10~10_combout ;
wire \overflow~0_combout ;
wire \overflow~1_combout ;


// Location: IOOBUF_X115_Y5_N16
cycloneive_io_obuf \aluif.zero~output (
	.i(\Equal10~10_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.zero ),
	.obar());
// synopsys translate_off
defparam \aluif.zero~output .bus_hold = "false";
defparam \aluif.zero~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X60_Y0_N23
cycloneive_io_obuf \aluif.overflow~output (
	.i(\overflow~1_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.overflow ),
	.obar());
// synopsys translate_off
defparam \aluif.overflow~output .bus_hold = "false";
defparam \aluif.overflow~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X113_Y0_N2
cycloneive_io_obuf \aluif.negative~output (
	.i(\Selector0~18_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.negative ),
	.obar());
// synopsys translate_off
defparam \aluif.negative~output .bus_hold = "false";
defparam \aluif.negative~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y12_N2
cycloneive_io_obuf \aluif.out[0]~output (
	.i(\Selector31~7_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [0]),
	.obar());
// synopsys translate_off
defparam \aluif.out[0]~output .bus_hold = "false";
defparam \aluif.out[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y17_N9
cycloneive_io_obuf \aluif.out[1]~output (
	.i(\Selector30~13_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [1]),
	.obar());
// synopsys translate_off
defparam \aluif.out[1]~output .bus_hold = "false";
defparam \aluif.out[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y13_N2
cycloneive_io_obuf \aluif.out[2]~output (
	.i(\Selector29~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [2]),
	.obar());
// synopsys translate_off
defparam \aluif.out[2]~output .bus_hold = "false";
defparam \aluif.out[2]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y15_N9
cycloneive_io_obuf \aluif.out[3]~output (
	.i(\Selector28~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [3]),
	.obar());
// synopsys translate_off
defparam \aluif.out[3]~output .bus_hold = "false";
defparam \aluif.out[3]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y14_N9
cycloneive_io_obuf \aluif.out[4]~output (
	.i(\Selector27~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [4]),
	.obar());
// synopsys translate_off
defparam \aluif.out[4]~output .bus_hold = "false";
defparam \aluif.out[4]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y17_N2
cycloneive_io_obuf \aluif.out[5]~output (
	.i(\Selector26~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [5]),
	.obar());
// synopsys translate_off
defparam \aluif.out[5]~output .bus_hold = "false";
defparam \aluif.out[5]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y8_N23
cycloneive_io_obuf \aluif.out[6]~output (
	.i(\Selector25~10_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [6]),
	.obar());
// synopsys translate_off
defparam \aluif.out[6]~output .bus_hold = "false";
defparam \aluif.out[6]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X54_Y0_N9
cycloneive_io_obuf \aluif.out[7]~output (
	.i(\Selector24~13_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [7]),
	.obar());
// synopsys translate_off
defparam \aluif.out[7]~output .bus_hold = "false";
defparam \aluif.out[7]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X109_Y0_N2
cycloneive_io_obuf \aluif.out[8]~output (
	.i(\Selector23~13_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [8]),
	.obar());
// synopsys translate_off
defparam \aluif.out[8]~output .bus_hold = "false";
defparam \aluif.out[8]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X91_Y0_N16
cycloneive_io_obuf \aluif.out[9]~output (
	.i(\Selector22~8_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [9]),
	.obar());
// synopsys translate_off
defparam \aluif.out[9]~output .bus_hold = "false";
defparam \aluif.out[9]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y11_N2
cycloneive_io_obuf \aluif.out[10]~output (
	.i(\Selector21~8_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [10]),
	.obar());
// synopsys translate_off
defparam \aluif.out[10]~output .bus_hold = "false";
defparam \aluif.out[10]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y16_N9
cycloneive_io_obuf \aluif.out[11]~output (
	.i(\Selector20~11_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [11]),
	.obar());
// synopsys translate_off
defparam \aluif.out[11]~output .bus_hold = "false";
defparam \aluif.out[11]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X52_Y0_N9
cycloneive_io_obuf \aluif.out[12]~output (
	.i(\Selector19~7_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [12]),
	.obar());
// synopsys translate_off
defparam \aluif.out[12]~output .bus_hold = "false";
defparam \aluif.out[12]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y8_N16
cycloneive_io_obuf \aluif.out[13]~output (
	.i(\Selector18~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [13]),
	.obar());
// synopsys translate_off
defparam \aluif.out[13]~output .bus_hold = "false";
defparam \aluif.out[13]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y15_N2
cycloneive_io_obuf \aluif.out[14]~output (
	.i(\Selector17~10_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [14]),
	.obar());
// synopsys translate_off
defparam \aluif.out[14]~output .bus_hold = "false";
defparam \aluif.out[14]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y13_N9
cycloneive_io_obuf \aluif.out[15]~output (
	.i(\Selector16~8_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [15]),
	.obar());
// synopsys translate_off
defparam \aluif.out[15]~output .bus_hold = "false";
defparam \aluif.out[15]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X60_Y0_N16
cycloneive_io_obuf \aluif.out[16]~output (
	.i(\Selector15~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [16]),
	.obar());
// synopsys translate_off
defparam \aluif.out[16]~output .bus_hold = "false";
defparam \aluif.out[16]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X98_Y0_N16
cycloneive_io_obuf \aluif.out[17]~output (
	.i(\Selector14~13_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [17]),
	.obar());
// synopsys translate_off
defparam \aluif.out[17]~output .bus_hold = "false";
defparam \aluif.out[17]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y7_N16
cycloneive_io_obuf \aluif.out[18]~output (
	.i(\Selector13~10_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [18]),
	.obar());
// synopsys translate_off
defparam \aluif.out[18]~output .bus_hold = "false";
defparam \aluif.out[18]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y12_N9
cycloneive_io_obuf \aluif.out[19]~output (
	.i(\Selector12~10_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [19]),
	.obar());
// synopsys translate_off
defparam \aluif.out[19]~output .bus_hold = "false";
defparam \aluif.out[19]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X54_Y0_N2
cycloneive_io_obuf \aluif.out[20]~output (
	.i(\Selector11~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [20]),
	.obar());
// synopsys translate_off
defparam \aluif.out[20]~output .bus_hold = "false";
defparam \aluif.out[20]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y10_N9
cycloneive_io_obuf \aluif.out[21]~output (
	.i(\Selector10~15_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [21]),
	.obar());
// synopsys translate_off
defparam \aluif.out[21]~output .bus_hold = "false";
defparam \aluif.out[21]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X54_Y0_N23
cycloneive_io_obuf \aluif.out[22]~output (
	.i(\Selector9~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [22]),
	.obar());
// synopsys translate_off
defparam \aluif.out[22]~output .bus_hold = "false";
defparam \aluif.out[22]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y16_N2
cycloneive_io_obuf \aluif.out[23]~output (
	.i(\Selector8~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [23]),
	.obar());
// synopsys translate_off
defparam \aluif.out[23]~output .bus_hold = "false";
defparam \aluif.out[23]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X105_Y0_N16
cycloneive_io_obuf \aluif.out[24]~output (
	.i(\Selector7~12_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [24]),
	.obar());
// synopsys translate_off
defparam \aluif.out[24]~output .bus_hold = "false";
defparam \aluif.out[24]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X105_Y0_N23
cycloneive_io_obuf \aluif.out[25]~output (
	.i(\Selector6~10_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [25]),
	.obar());
// synopsys translate_off
defparam \aluif.out[25]~output .bus_hold = "false";
defparam \aluif.out[25]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y14_N2
cycloneive_io_obuf \aluif.out[26]~output (
	.i(\Selector5~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [26]),
	.obar());
// synopsys translate_off
defparam \aluif.out[26]~output .bus_hold = "false";
defparam \aluif.out[26]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y9_N23
cycloneive_io_obuf \aluif.out[27]~output (
	.i(\Selector4~8_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [27]),
	.obar());
// synopsys translate_off
defparam \aluif.out[27]~output .bus_hold = "false";
defparam \aluif.out[27]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X60_Y0_N9
cycloneive_io_obuf \aluif.out[28]~output (
	.i(\Selector3~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [28]),
	.obar());
// synopsys translate_off
defparam \aluif.out[28]~output .bus_hold = "false";
defparam \aluif.out[28]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X109_Y0_N9
cycloneive_io_obuf \aluif.out[29]~output (
	.i(\Selector2~10_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [29]),
	.obar());
// synopsys translate_off
defparam \aluif.out[29]~output .bus_hold = "false";
defparam \aluif.out[29]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X56_Y0_N23
cycloneive_io_obuf \aluif.out[30]~output (
	.i(\Selector1~15_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [30]),
	.obar());
// synopsys translate_off
defparam \aluif.out[30]~output .bus_hold = "false";
defparam \aluif.out[30]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X111_Y0_N9
cycloneive_io_obuf \aluif.out[31]~output (
	.i(\Selector0~18_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\aluif.out [31]),
	.obar());
// synopsys translate_off
defparam \aluif.out[31]~output .bus_hold = "false";
defparam \aluif.out[31]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOIBUF_X85_Y0_N15
cycloneive_io_ibuf \aluif.b[27]~input (
	.i(\aluif.b [27]),
	.ibar(gnd),
	.o(\aluif.b[27]~input_o ));
// synopsys translate_off
defparam \aluif.b[27]~input .bus_hold = "false";
defparam \aluif.b[27]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X107_Y0_N1
cycloneive_io_ibuf \aluif.a[27]~input (
	.i(\aluif.a [27]),
	.ibar(gnd),
	.o(\aluif.a[27]~input_o ));
// synopsys translate_off
defparam \aluif.a[27]~input .bus_hold = "false";
defparam \aluif.a[27]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X83_Y0_N1
cycloneive_io_ibuf \aluif.b[26]~input (
	.i(\aluif.b [26]),
	.ibar(gnd),
	.o(\aluif.b[26]~input_o ));
// synopsys translate_off
defparam \aluif.b[26]~input .bus_hold = "false";
defparam \aluif.b[26]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y6_N15
cycloneive_io_ibuf \aluif.a[26]~input (
	.i(\aluif.a [26]),
	.ibar(gnd),
	.o(\aluif.a[26]~input_o ));
// synopsys translate_off
defparam \aluif.a[26]~input .bus_hold = "false";
defparam \aluif.a[26]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X89_Y0_N15
cycloneive_io_ibuf \aluif.b[25]~input (
	.i(\aluif.b [25]),
	.ibar(gnd),
	.o(\aluif.b[25]~input_o ));
// synopsys translate_off
defparam \aluif.b[25]~input .bus_hold = "false";
defparam \aluif.b[25]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X96_Y0_N15
cycloneive_io_ibuf \aluif.a[25]~input (
	.i(\aluif.a [25]),
	.ibar(gnd),
	.o(\aluif.a[25]~input_o ));
// synopsys translate_off
defparam \aluif.a[25]~input .bus_hold = "false";
defparam \aluif.a[25]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X105_Y0_N8
cycloneive_io_ibuf \aluif.b[24]~input (
	.i(\aluif.b [24]),
	.ibar(gnd),
	.o(\aluif.b[24]~input_o ));
// synopsys translate_off
defparam \aluif.b[24]~input .bus_hold = "false";
defparam \aluif.b[24]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y4_N15
cycloneive_io_ibuf \aluif.a[24]~input (
	.i(\aluif.a [24]),
	.ibar(gnd),
	.o(\aluif.a[24]~input_o ));
// synopsys translate_off
defparam \aluif.a[24]~input .bus_hold = "false";
defparam \aluif.a[24]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X100_Y0_N1
cycloneive_io_ibuf \aluif.a[23]~input (
	.i(\aluif.a [23]),
	.ibar(gnd),
	.o(\aluif.a[23]~input_o ));
// synopsys translate_off
defparam \aluif.a[23]~input .bus_hold = "false";
defparam \aluif.a[23]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X85_Y0_N8
cycloneive_io_ibuf \aluif.b[23]~input (
	.i(\aluif.b [23]),
	.ibar(gnd),
	.o(\aluif.b[23]~input_o ));
// synopsys translate_off
defparam \aluif.b[23]~input .bus_hold = "false";
defparam \aluif.b[23]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X79_Y0_N1
cycloneive_io_ibuf \aluif.a[22]~input (
	.i(\aluif.a [22]),
	.ibar(gnd),
	.o(\aluif.a[22]~input_o ));
// synopsys translate_off
defparam \aluif.a[22]~input .bus_hold = "false";
defparam \aluif.a[22]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X79_Y0_N15
cycloneive_io_ibuf \aluif.b[22]~input (
	.i(\aluif.b [22]),
	.ibar(gnd),
	.o(\aluif.b[22]~input_o ));
// synopsys translate_off
defparam \aluif.b[22]~input .bus_hold = "false";
defparam \aluif.b[22]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X56_Y0_N8
cycloneive_io_ibuf \aluif.b[21]~input (
	.i(\aluif.b [21]),
	.ibar(gnd),
	.o(\aluif.b[21]~input_o ));
// synopsys translate_off
defparam \aluif.b[21]~input .bus_hold = "false";
defparam \aluif.b[21]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X67_Y0_N15
cycloneive_io_ibuf \aluif.a[21]~input (
	.i(\aluif.a [21]),
	.ibar(gnd),
	.o(\aluif.a[21]~input_o ));
// synopsys translate_off
defparam \aluif.a[21]~input .bus_hold = "false";
defparam \aluif.a[21]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X100_Y0_N22
cycloneive_io_ibuf \aluif.b[20]~input (
	.i(\aluif.b [20]),
	.ibar(gnd),
	.o(\aluif.b[20]~input_o ));
// synopsys translate_off
defparam \aluif.b[20]~input .bus_hold = "false";
defparam \aluif.b[20]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X79_Y0_N8
cycloneive_io_ibuf \aluif.a[20]~input (
	.i(\aluif.a [20]),
	.ibar(gnd),
	.o(\aluif.a[20]~input_o ));
// synopsys translate_off
defparam \aluif.a[20]~input .bus_hold = "false";
defparam \aluif.a[20]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X74_Y0_N1
cycloneive_io_ibuf \aluif.a[19]~input (
	.i(\aluif.a [19]),
	.ibar(gnd),
	.o(\aluif.a[19]~input_o ));
// synopsys translate_off
defparam \aluif.a[19]~input .bus_hold = "false";
defparam \aluif.a[19]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X81_Y0_N15
cycloneive_io_ibuf \aluif.b[19]~input (
	.i(\aluif.b [19]),
	.ibar(gnd),
	.o(\aluif.b[19]~input_o ));
// synopsys translate_off
defparam \aluif.b[19]~input .bus_hold = "false";
defparam \aluif.b[19]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X74_Y0_N15
cycloneive_io_ibuf \aluif.a[18]~input (
	.i(\aluif.a [18]),
	.ibar(gnd),
	.o(\aluif.a[18]~input_o ));
// synopsys translate_off
defparam \aluif.a[18]~input .bus_hold = "false";
defparam \aluif.a[18]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X65_Y0_N15
cycloneive_io_ibuf \aluif.b[18]~input (
	.i(\aluif.b [18]),
	.ibar(gnd),
	.o(\aluif.b[18]~input_o ));
// synopsys translate_off
defparam \aluif.b[18]~input .bus_hold = "false";
defparam \aluif.b[18]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X111_Y0_N1
cycloneive_io_ibuf \aluif.a[17]~input (
	.i(\aluif.a [17]),
	.ibar(gnd),
	.o(\aluif.a[17]~input_o ));
// synopsys translate_off
defparam \aluif.a[17]~input .bus_hold = "false";
defparam \aluif.a[17]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X107_Y0_N8
cycloneive_io_ibuf \aluif.b[17]~input (
	.i(\aluif.b [17]),
	.ibar(gnd),
	.o(\aluif.b[17]~input_o ));
// synopsys translate_off
defparam \aluif.b[17]~input .bus_hold = "false";
defparam \aluif.b[17]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X65_Y0_N8
cycloneive_io_ibuf \aluif.a[16]~input (
	.i(\aluif.a [16]),
	.ibar(gnd),
	.o(\aluif.a[16]~input_o ));
// synopsys translate_off
defparam \aluif.a[16]~input .bus_hold = "false";
defparam \aluif.a[16]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X83_Y0_N22
cycloneive_io_ibuf \aluif.b[16]~input (
	.i(\aluif.b [16]),
	.ibar(gnd),
	.o(\aluif.b[16]~input_o ));
// synopsys translate_off
defparam \aluif.b[16]~input .bus_hold = "false";
defparam \aluif.b[16]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X102_Y0_N15
cycloneive_io_ibuf \aluif.a[15]~input (
	.i(\aluif.a [15]),
	.ibar(gnd),
	.o(\aluif.a[15]~input_o ));
// synopsys translate_off
defparam \aluif.a[15]~input .bus_hold = "false";
defparam \aluif.a[15]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X87_Y0_N15
cycloneive_io_ibuf \aluif.b[15]~input (
	.i(\aluif.b [15]),
	.ibar(gnd),
	.o(\aluif.b[15]~input_o ));
// synopsys translate_off
defparam \aluif.b[15]~input .bus_hold = "false";
defparam \aluif.b[15]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X74_Y0_N22
cycloneive_io_ibuf \aluif.a[14]~input (
	.i(\aluif.a [14]),
	.ibar(gnd),
	.o(\aluif.a[14]~input_o ));
// synopsys translate_off
defparam \aluif.a[14]~input .bus_hold = "false";
defparam \aluif.a[14]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X56_Y0_N15
cycloneive_io_ibuf \aluif.b[14]~input (
	.i(\aluif.b [14]),
	.ibar(gnd),
	.o(\aluif.b[14]~input_o ));
// synopsys translate_off
defparam \aluif.b[14]~input .bus_hold = "false";
defparam \aluif.b[14]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X54_Y0_N15
cycloneive_io_ibuf \aluif.a[13]~input (
	.i(\aluif.a [13]),
	.ibar(gnd),
	.o(\aluif.a[13]~input_o ));
// synopsys translate_off
defparam \aluif.a[13]~input .bus_hold = "false";
defparam \aluif.a[13]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X96_Y0_N8
cycloneive_io_ibuf \aluif.b[13]~input (
	.i(\aluif.b [13]),
	.ibar(gnd),
	.o(\aluif.b[13]~input_o ));
// synopsys translate_off
defparam \aluif.b[13]~input .bus_hold = "false";
defparam \aluif.b[13]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X67_Y0_N8
cycloneive_io_ibuf \aluif.b[12]~input (
	.i(\aluif.b [12]),
	.ibar(gnd),
	.o(\aluif.b[12]~input_o ));
// synopsys translate_off
defparam \aluif.b[12]~input .bus_hold = "false";
defparam \aluif.b[12]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X60_Y0_N1
cycloneive_io_ibuf \aluif.a[12]~input (
	.i(\aluif.a [12]),
	.ibar(gnd),
	.o(\aluif.a[12]~input_o ));
// synopsys translate_off
defparam \aluif.a[12]~input .bus_hold = "false";
defparam \aluif.a[12]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X62_Y0_N22
cycloneive_io_ibuf \aluif.b[11]~input (
	.i(\aluif.b [11]),
	.ibar(gnd),
	.o(\aluif.b[11]~input_o ));
// synopsys translate_off
defparam \aluif.b[11]~input .bus_hold = "false";
defparam \aluif.b[11]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X105_Y0_N1
cycloneive_io_ibuf \aluif.a[11]~input (
	.i(\aluif.a [11]),
	.ibar(gnd),
	.o(\aluif.a[11]~input_o ));
// synopsys translate_off
defparam \aluif.a[11]~input .bus_hold = "false";
defparam \aluif.a[11]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X83_Y0_N8
cycloneive_io_ibuf \aluif.b[10]~input (
	.i(\aluif.b [10]),
	.ibar(gnd),
	.o(\aluif.b[10]~input_o ));
// synopsys translate_off
defparam \aluif.b[10]~input .bus_hold = "false";
defparam \aluif.b[10]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X69_Y0_N8
cycloneive_io_ibuf \aluif.a[10]~input (
	.i(\aluif.a [10]),
	.ibar(gnd),
	.o(\aluif.a[10]~input_o ));
// synopsys translate_off
defparam \aluif.a[10]~input .bus_hold = "false";
defparam \aluif.a[10]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X72_Y0_N1
cycloneive_io_ibuf \aluif.a[9]~input (
	.i(\aluif.a [9]),
	.ibar(gnd),
	.o(\aluif.a[9]~input_o ));
// synopsys translate_off
defparam \aluif.a[9]~input .bus_hold = "false";
defparam \aluif.a[9]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X65_Y0_N1
cycloneive_io_ibuf \aluif.b[9]~input (
	.i(\aluif.b [9]),
	.ibar(gnd),
	.o(\aluif.b[9]~input_o ));
// synopsys translate_off
defparam \aluif.b[9]~input .bus_hold = "false";
defparam \aluif.b[9]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X69_Y0_N1
cycloneive_io_ibuf \aluif.a[8]~input (
	.i(\aluif.a [8]),
	.ibar(gnd),
	.o(\aluif.a[8]~input_o ));
// synopsys translate_off
defparam \aluif.a[8]~input .bus_hold = "false";
defparam \aluif.a[8]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X79_Y0_N22
cycloneive_io_ibuf \aluif.b[8]~input (
	.i(\aluif.b [8]),
	.ibar(gnd),
	.o(\aluif.b[8]~input_o ));
// synopsys translate_off
defparam \aluif.b[8]~input .bus_hold = "false";
defparam \aluif.b[8]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X83_Y0_N15
cycloneive_io_ibuf \aluif.b[7]~input (
	.i(\aluif.b [7]),
	.ibar(gnd),
	.o(\aluif.b[7]~input_o ));
// synopsys translate_off
defparam \aluif.b[7]~input .bus_hold = "false";
defparam \aluif.b[7]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X100_Y0_N15
cycloneive_io_ibuf \aluif.a[7]~input (
	.i(\aluif.a [7]),
	.ibar(gnd),
	.o(\aluif.a[7]~input_o ));
// synopsys translate_off
defparam \aluif.a[7]~input .bus_hold = "false";
defparam \aluif.a[7]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X67_Y0_N1
cycloneive_io_ibuf \aluif.b[6]~input (
	.i(\aluif.b [6]),
	.ibar(gnd),
	.o(\aluif.b[6]~input_o ));
// synopsys translate_off
defparam \aluif.b[6]~input .bus_hold = "false";
defparam \aluif.b[6]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X65_Y0_N22
cycloneive_io_ibuf \aluif.a[6]~input (
	.i(\aluif.a [6]),
	.ibar(gnd),
	.o(\aluif.a[6]~input_o ));
// synopsys translate_off
defparam \aluif.a[6]~input .bus_hold = "false";
defparam \aluif.a[6]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X56_Y0_N1
cycloneive_io_ibuf \aluif.b[5]~input (
	.i(\aluif.b [5]),
	.ibar(gnd),
	.o(\aluif.b[5]~input_o ));
// synopsys translate_off
defparam \aluif.b[5]~input .bus_hold = "false";
defparam \aluif.b[5]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X72_Y0_N8
cycloneive_io_ibuf \aluif.a[5]~input (
	.i(\aluif.a [5]),
	.ibar(gnd),
	.o(\aluif.a[5]~input_o ));
// synopsys translate_off
defparam \aluif.a[5]~input .bus_hold = "false";
defparam \aluif.a[5]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X89_Y0_N8
cycloneive_io_ibuf \aluif.b[4]~input (
	.i(\aluif.b [4]),
	.ibar(gnd),
	.o(\aluif.b[4]~input_o ));
// synopsys translate_off
defparam \aluif.b[4]~input .bus_hold = "false";
defparam \aluif.b[4]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y4_N22
cycloneive_io_ibuf \aluif.a[4]~input (
	.i(\aluif.a [4]),
	.ibar(gnd),
	.o(\aluif.a[4]~input_o ));
// synopsys translate_off
defparam \aluif.a[4]~input .bus_hold = "false";
defparam \aluif.a[4]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X98_Y0_N22
cycloneive_io_ibuf \aluif.a[3]~input (
	.i(\aluif.a [3]),
	.ibar(gnd),
	.o(\aluif.a[3]~input_o ));
// synopsys translate_off
defparam \aluif.a[3]~input .bus_hold = "false";
defparam \aluif.a[3]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X89_Y0_N22
cycloneive_io_ibuf \aluif.b[3]~input (
	.i(\aluif.b [3]),
	.ibar(gnd),
	.o(\aluif.b[3]~input_o ));
// synopsys translate_off
defparam \aluif.b[3]~input .bus_hold = "false";
defparam \aluif.b[3]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X94_Y0_N8
cycloneive_io_ibuf \aluif.b[2]~input (
	.i(\aluif.b [2]),
	.ibar(gnd),
	.o(\aluif.b[2]~input_o ));
// synopsys translate_off
defparam \aluif.b[2]~input .bus_hold = "false";
defparam \aluif.b[2]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X67_Y0_N22
cycloneive_io_ibuf \aluif.a[2]~input (
	.i(\aluif.a [2]),
	.ibar(gnd),
	.o(\aluif.a[2]~input_o ));
// synopsys translate_off
defparam \aluif.a[2]~input .bus_hold = "false";
defparam \aluif.a[2]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X89_Y0_N1
cycloneive_io_ibuf \aluif.b[1]~input (
	.i(\aluif.b [1]),
	.ibar(gnd),
	.o(\aluif.b[1]~input_o ));
// synopsys translate_off
defparam \aluif.b[1]~input .bus_hold = "false";
defparam \aluif.b[1]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X62_Y0_N15
cycloneive_io_ibuf \aluif.a[1]~input (
	.i(\aluif.a [1]),
	.ibar(gnd),
	.o(\aluif.a[1]~input_o ));
// synopsys translate_off
defparam \aluif.a[1]~input .bus_hold = "false";
defparam \aluif.a[1]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X85_Y0_N22
cycloneive_io_ibuf \aluif.a[0]~input (
	.i(\aluif.a [0]),
	.ibar(gnd),
	.o(\aluif.a[0]~input_o ));
// synopsys translate_off
defparam \aluif.a[0]~input .bus_hold = "false";
defparam \aluif.a[0]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X91_Y0_N22
cycloneive_io_ibuf \aluif.b[0]~input (
	.i(\aluif.b [0]),
	.ibar(gnd),
	.o(\aluif.b[0]~input_o ));
// synopsys translate_off
defparam \aluif.b[0]~input .bus_hold = "false";
defparam \aluif.b[0]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N0
cycloneive_lcell_comb \Add1~0 (
// Equation(s):
// \Add1~0_combout  = (\aluif.a[0]~input_o  & ((GND) # (!\aluif.b[0]~input_o ))) # (!\aluif.a[0]~input_o  & (\aluif.b[0]~input_o  $ (GND)))
// \Add1~1  = CARRY((\aluif.a[0]~input_o ) # (!\aluif.b[0]~input_o ))

	.dataa(\aluif.a[0]~input_o ),
	.datab(\aluif.b[0]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add1~0_combout ),
	.cout(\Add1~1 ));
// synopsys translate_off
defparam \Add1~0 .lut_mask = 16'h66BB;
defparam \Add1~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N2
cycloneive_lcell_comb \Add1~2 (
// Equation(s):
// \Add1~2_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[1]~input_o  & (!\Add1~1 )) # (!\aluif.a[1]~input_o  & ((\Add1~1 ) # (GND))))) # (!\aluif.b[1]~input_o  & ((\aluif.a[1]~input_o  & (\Add1~1  & VCC)) # (!\aluif.a[1]~input_o  & (!\Add1~1 ))))
// \Add1~3  = CARRY((\aluif.b[1]~input_o  & ((!\Add1~1 ) # (!\aluif.a[1]~input_o ))) # (!\aluif.b[1]~input_o  & (!\aluif.a[1]~input_o  & !\Add1~1 )))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[1]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~1 ),
	.combout(\Add1~2_combout ),
	.cout(\Add1~3 ));
// synopsys translate_off
defparam \Add1~2 .lut_mask = 16'h692B;
defparam \Add1~2 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N4
cycloneive_lcell_comb \Add1~4 (
// Equation(s):
// \Add1~4_combout  = ((\aluif.b[2]~input_o  $ (\aluif.a[2]~input_o  $ (\Add1~3 )))) # (GND)
// \Add1~5  = CARRY((\aluif.b[2]~input_o  & (\aluif.a[2]~input_o  & !\Add1~3 )) # (!\aluif.b[2]~input_o  & ((\aluif.a[2]~input_o ) # (!\Add1~3 ))))

	.dataa(\aluif.b[2]~input_o ),
	.datab(\aluif.a[2]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~3 ),
	.combout(\Add1~4_combout ),
	.cout(\Add1~5 ));
// synopsys translate_off
defparam \Add1~4 .lut_mask = 16'h964D;
defparam \Add1~4 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N6
cycloneive_lcell_comb \Add1~6 (
// Equation(s):
// \Add1~6_combout  = (\aluif.a[3]~input_o  & ((\aluif.b[3]~input_o  & (!\Add1~5 )) # (!\aluif.b[3]~input_o  & (\Add1~5  & VCC)))) # (!\aluif.a[3]~input_o  & ((\aluif.b[3]~input_o  & ((\Add1~5 ) # (GND))) # (!\aluif.b[3]~input_o  & (!\Add1~5 ))))
// \Add1~7  = CARRY((\aluif.a[3]~input_o  & (\aluif.b[3]~input_o  & !\Add1~5 )) # (!\aluif.a[3]~input_o  & ((\aluif.b[3]~input_o ) # (!\Add1~5 ))))

	.dataa(\aluif.a[3]~input_o ),
	.datab(\aluif.b[3]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~5 ),
	.combout(\Add1~6_combout ),
	.cout(\Add1~7 ));
// synopsys translate_off
defparam \Add1~6 .lut_mask = 16'h694D;
defparam \Add1~6 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N8
cycloneive_lcell_comb \Add1~8 (
// Equation(s):
// \Add1~8_combout  = ((\aluif.b[4]~input_o  $ (\aluif.a[4]~input_o  $ (\Add1~7 )))) # (GND)
// \Add1~9  = CARRY((\aluif.b[4]~input_o  & (\aluif.a[4]~input_o  & !\Add1~7 )) # (!\aluif.b[4]~input_o  & ((\aluif.a[4]~input_o ) # (!\Add1~7 ))))

	.dataa(\aluif.b[4]~input_o ),
	.datab(\aluif.a[4]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~7 ),
	.combout(\Add1~8_combout ),
	.cout(\Add1~9 ));
// synopsys translate_off
defparam \Add1~8 .lut_mask = 16'h964D;
defparam \Add1~8 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N10
cycloneive_lcell_comb \Add1~10 (
// Equation(s):
// \Add1~10_combout  = (\aluif.b[5]~input_o  & ((\aluif.a[5]~input_o  & (!\Add1~9 )) # (!\aluif.a[5]~input_o  & ((\Add1~9 ) # (GND))))) # (!\aluif.b[5]~input_o  & ((\aluif.a[5]~input_o  & (\Add1~9  & VCC)) # (!\aluif.a[5]~input_o  & (!\Add1~9 ))))
// \Add1~11  = CARRY((\aluif.b[5]~input_o  & ((!\Add1~9 ) # (!\aluif.a[5]~input_o ))) # (!\aluif.b[5]~input_o  & (!\aluif.a[5]~input_o  & !\Add1~9 )))

	.dataa(\aluif.b[5]~input_o ),
	.datab(\aluif.a[5]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~9 ),
	.combout(\Add1~10_combout ),
	.cout(\Add1~11 ));
// synopsys translate_off
defparam \Add1~10 .lut_mask = 16'h692B;
defparam \Add1~10 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N12
cycloneive_lcell_comb \Add1~12 (
// Equation(s):
// \Add1~12_combout  = ((\aluif.b[6]~input_o  $ (\aluif.a[6]~input_o  $ (\Add1~11 )))) # (GND)
// \Add1~13  = CARRY((\aluif.b[6]~input_o  & (\aluif.a[6]~input_o  & !\Add1~11 )) # (!\aluif.b[6]~input_o  & ((\aluif.a[6]~input_o ) # (!\Add1~11 ))))

	.dataa(\aluif.b[6]~input_o ),
	.datab(\aluif.a[6]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~11 ),
	.combout(\Add1~12_combout ),
	.cout(\Add1~13 ));
// synopsys translate_off
defparam \Add1~12 .lut_mask = 16'h964D;
defparam \Add1~12 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N14
cycloneive_lcell_comb \Add1~14 (
// Equation(s):
// \Add1~14_combout  = (\aluif.b[7]~input_o  & ((\aluif.a[7]~input_o  & (!\Add1~13 )) # (!\aluif.a[7]~input_o  & ((\Add1~13 ) # (GND))))) # (!\aluif.b[7]~input_o  & ((\aluif.a[7]~input_o  & (\Add1~13  & VCC)) # (!\aluif.a[7]~input_o  & (!\Add1~13 ))))
// \Add1~15  = CARRY((\aluif.b[7]~input_o  & ((!\Add1~13 ) # (!\aluif.a[7]~input_o ))) # (!\aluif.b[7]~input_o  & (!\aluif.a[7]~input_o  & !\Add1~13 )))

	.dataa(\aluif.b[7]~input_o ),
	.datab(\aluif.a[7]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~13 ),
	.combout(\Add1~14_combout ),
	.cout(\Add1~15 ));
// synopsys translate_off
defparam \Add1~14 .lut_mask = 16'h692B;
defparam \Add1~14 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N16
cycloneive_lcell_comb \Add1~16 (
// Equation(s):
// \Add1~16_combout  = ((\aluif.a[8]~input_o  $ (\aluif.b[8]~input_o  $ (\Add1~15 )))) # (GND)
// \Add1~17  = CARRY((\aluif.a[8]~input_o  & ((!\Add1~15 ) # (!\aluif.b[8]~input_o ))) # (!\aluif.a[8]~input_o  & (!\aluif.b[8]~input_o  & !\Add1~15 )))

	.dataa(\aluif.a[8]~input_o ),
	.datab(\aluif.b[8]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~15 ),
	.combout(\Add1~16_combout ),
	.cout(\Add1~17 ));
// synopsys translate_off
defparam \Add1~16 .lut_mask = 16'h962B;
defparam \Add1~16 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N18
cycloneive_lcell_comb \Add1~18 (
// Equation(s):
// \Add1~18_combout  = (\aluif.a[9]~input_o  & ((\aluif.b[9]~input_o  & (!\Add1~17 )) # (!\aluif.b[9]~input_o  & (\Add1~17  & VCC)))) # (!\aluif.a[9]~input_o  & ((\aluif.b[9]~input_o  & ((\Add1~17 ) # (GND))) # (!\aluif.b[9]~input_o  & (!\Add1~17 ))))
// \Add1~19  = CARRY((\aluif.a[9]~input_o  & (\aluif.b[9]~input_o  & !\Add1~17 )) # (!\aluif.a[9]~input_o  & ((\aluif.b[9]~input_o ) # (!\Add1~17 ))))

	.dataa(\aluif.a[9]~input_o ),
	.datab(\aluif.b[9]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~17 ),
	.combout(\Add1~18_combout ),
	.cout(\Add1~19 ));
// synopsys translate_off
defparam \Add1~18 .lut_mask = 16'h694D;
defparam \Add1~18 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N20
cycloneive_lcell_comb \Add1~20 (
// Equation(s):
// \Add1~20_combout  = ((\aluif.b[10]~input_o  $ (\aluif.a[10]~input_o  $ (\Add1~19 )))) # (GND)
// \Add1~21  = CARRY((\aluif.b[10]~input_o  & (\aluif.a[10]~input_o  & !\Add1~19 )) # (!\aluif.b[10]~input_o  & ((\aluif.a[10]~input_o ) # (!\Add1~19 ))))

	.dataa(\aluif.b[10]~input_o ),
	.datab(\aluif.a[10]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~19 ),
	.combout(\Add1~20_combout ),
	.cout(\Add1~21 ));
// synopsys translate_off
defparam \Add1~20 .lut_mask = 16'h964D;
defparam \Add1~20 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N22
cycloneive_lcell_comb \Add1~22 (
// Equation(s):
// \Add1~22_combout  = (\aluif.b[11]~input_o  & ((\aluif.a[11]~input_o  & (!\Add1~21 )) # (!\aluif.a[11]~input_o  & ((\Add1~21 ) # (GND))))) # (!\aluif.b[11]~input_o  & ((\aluif.a[11]~input_o  & (\Add1~21  & VCC)) # (!\aluif.a[11]~input_o  & (!\Add1~21 ))))
// \Add1~23  = CARRY((\aluif.b[11]~input_o  & ((!\Add1~21 ) # (!\aluif.a[11]~input_o ))) # (!\aluif.b[11]~input_o  & (!\aluif.a[11]~input_o  & !\Add1~21 )))

	.dataa(\aluif.b[11]~input_o ),
	.datab(\aluif.a[11]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~21 ),
	.combout(\Add1~22_combout ),
	.cout(\Add1~23 ));
// synopsys translate_off
defparam \Add1~22 .lut_mask = 16'h692B;
defparam \Add1~22 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N24
cycloneive_lcell_comb \Add1~24 (
// Equation(s):
// \Add1~24_combout  = ((\aluif.b[12]~input_o  $ (\aluif.a[12]~input_o  $ (\Add1~23 )))) # (GND)
// \Add1~25  = CARRY((\aluif.b[12]~input_o  & (\aluif.a[12]~input_o  & !\Add1~23 )) # (!\aluif.b[12]~input_o  & ((\aluif.a[12]~input_o ) # (!\Add1~23 ))))

	.dataa(\aluif.b[12]~input_o ),
	.datab(\aluif.a[12]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~23 ),
	.combout(\Add1~24_combout ),
	.cout(\Add1~25 ));
// synopsys translate_off
defparam \Add1~24 .lut_mask = 16'h964D;
defparam \Add1~24 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N26
cycloneive_lcell_comb \Add1~26 (
// Equation(s):
// \Add1~26_combout  = (\aluif.a[13]~input_o  & ((\aluif.b[13]~input_o  & (!\Add1~25 )) # (!\aluif.b[13]~input_o  & (\Add1~25  & VCC)))) # (!\aluif.a[13]~input_o  & ((\aluif.b[13]~input_o  & ((\Add1~25 ) # (GND))) # (!\aluif.b[13]~input_o  & (!\Add1~25 ))))
// \Add1~27  = CARRY((\aluif.a[13]~input_o  & (\aluif.b[13]~input_o  & !\Add1~25 )) # (!\aluif.a[13]~input_o  & ((\aluif.b[13]~input_o ) # (!\Add1~25 ))))

	.dataa(\aluif.a[13]~input_o ),
	.datab(\aluif.b[13]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~25 ),
	.combout(\Add1~26_combout ),
	.cout(\Add1~27 ));
// synopsys translate_off
defparam \Add1~26 .lut_mask = 16'h694D;
defparam \Add1~26 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N28
cycloneive_lcell_comb \Add1~28 (
// Equation(s):
// \Add1~28_combout  = ((\aluif.a[14]~input_o  $ (\aluif.b[14]~input_o  $ (\Add1~27 )))) # (GND)
// \Add1~29  = CARRY((\aluif.a[14]~input_o  & ((!\Add1~27 ) # (!\aluif.b[14]~input_o ))) # (!\aluif.a[14]~input_o  & (!\aluif.b[14]~input_o  & !\Add1~27 )))

	.dataa(\aluif.a[14]~input_o ),
	.datab(\aluif.b[14]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~27 ),
	.combout(\Add1~28_combout ),
	.cout(\Add1~29 ));
// synopsys translate_off
defparam \Add1~28 .lut_mask = 16'h962B;
defparam \Add1~28 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y10_N30
cycloneive_lcell_comb \Add1~30 (
// Equation(s):
// \Add1~30_combout  = (\aluif.a[15]~input_o  & ((\aluif.b[15]~input_o  & (!\Add1~29 )) # (!\aluif.b[15]~input_o  & (\Add1~29  & VCC)))) # (!\aluif.a[15]~input_o  & ((\aluif.b[15]~input_o  & ((\Add1~29 ) # (GND))) # (!\aluif.b[15]~input_o  & (!\Add1~29 ))))
// \Add1~31  = CARRY((\aluif.a[15]~input_o  & (\aluif.b[15]~input_o  & !\Add1~29 )) # (!\aluif.a[15]~input_o  & ((\aluif.b[15]~input_o ) # (!\Add1~29 ))))

	.dataa(\aluif.a[15]~input_o ),
	.datab(\aluif.b[15]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~29 ),
	.combout(\Add1~30_combout ),
	.cout(\Add1~31 ));
// synopsys translate_off
defparam \Add1~30 .lut_mask = 16'h694D;
defparam \Add1~30 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N0
cycloneive_lcell_comb \Add1~32 (
// Equation(s):
// \Add1~32_combout  = ((\aluif.a[16]~input_o  $ (\aluif.b[16]~input_o  $ (\Add1~31 )))) # (GND)
// \Add1~33  = CARRY((\aluif.a[16]~input_o  & ((!\Add1~31 ) # (!\aluif.b[16]~input_o ))) # (!\aluif.a[16]~input_o  & (!\aluif.b[16]~input_o  & !\Add1~31 )))

	.dataa(\aluif.a[16]~input_o ),
	.datab(\aluif.b[16]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~31 ),
	.combout(\Add1~32_combout ),
	.cout(\Add1~33 ));
// synopsys translate_off
defparam \Add1~32 .lut_mask = 16'h962B;
defparam \Add1~32 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N2
cycloneive_lcell_comb \Add1~34 (
// Equation(s):
// \Add1~34_combout  = (\aluif.a[17]~input_o  & ((\aluif.b[17]~input_o  & (!\Add1~33 )) # (!\aluif.b[17]~input_o  & (\Add1~33  & VCC)))) # (!\aluif.a[17]~input_o  & ((\aluif.b[17]~input_o  & ((\Add1~33 ) # (GND))) # (!\aluif.b[17]~input_o  & (!\Add1~33 ))))
// \Add1~35  = CARRY((\aluif.a[17]~input_o  & (\aluif.b[17]~input_o  & !\Add1~33 )) # (!\aluif.a[17]~input_o  & ((\aluif.b[17]~input_o ) # (!\Add1~33 ))))

	.dataa(\aluif.a[17]~input_o ),
	.datab(\aluif.b[17]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~33 ),
	.combout(\Add1~34_combout ),
	.cout(\Add1~35 ));
// synopsys translate_off
defparam \Add1~34 .lut_mask = 16'h694D;
defparam \Add1~34 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N4
cycloneive_lcell_comb \Add1~36 (
// Equation(s):
// \Add1~36_combout  = ((\aluif.a[18]~input_o  $ (\aluif.b[18]~input_o  $ (\Add1~35 )))) # (GND)
// \Add1~37  = CARRY((\aluif.a[18]~input_o  & ((!\Add1~35 ) # (!\aluif.b[18]~input_o ))) # (!\aluif.a[18]~input_o  & (!\aluif.b[18]~input_o  & !\Add1~35 )))

	.dataa(\aluif.a[18]~input_o ),
	.datab(\aluif.b[18]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~35 ),
	.combout(\Add1~36_combout ),
	.cout(\Add1~37 ));
// synopsys translate_off
defparam \Add1~36 .lut_mask = 16'h962B;
defparam \Add1~36 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N6
cycloneive_lcell_comb \Add1~38 (
// Equation(s):
// \Add1~38_combout  = (\aluif.a[19]~input_o  & ((\aluif.b[19]~input_o  & (!\Add1~37 )) # (!\aluif.b[19]~input_o  & (\Add1~37  & VCC)))) # (!\aluif.a[19]~input_o  & ((\aluif.b[19]~input_o  & ((\Add1~37 ) # (GND))) # (!\aluif.b[19]~input_o  & (!\Add1~37 ))))
// \Add1~39  = CARRY((\aluif.a[19]~input_o  & (\aluif.b[19]~input_o  & !\Add1~37 )) # (!\aluif.a[19]~input_o  & ((\aluif.b[19]~input_o ) # (!\Add1~37 ))))

	.dataa(\aluif.a[19]~input_o ),
	.datab(\aluif.b[19]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~37 ),
	.combout(\Add1~38_combout ),
	.cout(\Add1~39 ));
// synopsys translate_off
defparam \Add1~38 .lut_mask = 16'h694D;
defparam \Add1~38 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N8
cycloneive_lcell_comb \Add1~40 (
// Equation(s):
// \Add1~40_combout  = ((\aluif.b[20]~input_o  $ (\aluif.a[20]~input_o  $ (\Add1~39 )))) # (GND)
// \Add1~41  = CARRY((\aluif.b[20]~input_o  & (\aluif.a[20]~input_o  & !\Add1~39 )) # (!\aluif.b[20]~input_o  & ((\aluif.a[20]~input_o ) # (!\Add1~39 ))))

	.dataa(\aluif.b[20]~input_o ),
	.datab(\aluif.a[20]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~39 ),
	.combout(\Add1~40_combout ),
	.cout(\Add1~41 ));
// synopsys translate_off
defparam \Add1~40 .lut_mask = 16'h964D;
defparam \Add1~40 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N10
cycloneive_lcell_comb \Add1~42 (
// Equation(s):
// \Add1~42_combout  = (\aluif.b[21]~input_o  & ((\aluif.a[21]~input_o  & (!\Add1~41 )) # (!\aluif.a[21]~input_o  & ((\Add1~41 ) # (GND))))) # (!\aluif.b[21]~input_o  & ((\aluif.a[21]~input_o  & (\Add1~41  & VCC)) # (!\aluif.a[21]~input_o  & (!\Add1~41 ))))
// \Add1~43  = CARRY((\aluif.b[21]~input_o  & ((!\Add1~41 ) # (!\aluif.a[21]~input_o ))) # (!\aluif.b[21]~input_o  & (!\aluif.a[21]~input_o  & !\Add1~41 )))

	.dataa(\aluif.b[21]~input_o ),
	.datab(\aluif.a[21]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~41 ),
	.combout(\Add1~42_combout ),
	.cout(\Add1~43 ));
// synopsys translate_off
defparam \Add1~42 .lut_mask = 16'h692B;
defparam \Add1~42 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N12
cycloneive_lcell_comb \Add1~44 (
// Equation(s):
// \Add1~44_combout  = ((\aluif.a[22]~input_o  $ (\aluif.b[22]~input_o  $ (\Add1~43 )))) # (GND)
// \Add1~45  = CARRY((\aluif.a[22]~input_o  & ((!\Add1~43 ) # (!\aluif.b[22]~input_o ))) # (!\aluif.a[22]~input_o  & (!\aluif.b[22]~input_o  & !\Add1~43 )))

	.dataa(\aluif.a[22]~input_o ),
	.datab(\aluif.b[22]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~43 ),
	.combout(\Add1~44_combout ),
	.cout(\Add1~45 ));
// synopsys translate_off
defparam \Add1~44 .lut_mask = 16'h962B;
defparam \Add1~44 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N14
cycloneive_lcell_comb \Add1~46 (
// Equation(s):
// \Add1~46_combout  = (\aluif.a[23]~input_o  & ((\aluif.b[23]~input_o  & (!\Add1~45 )) # (!\aluif.b[23]~input_o  & (\Add1~45  & VCC)))) # (!\aluif.a[23]~input_o  & ((\aluif.b[23]~input_o  & ((\Add1~45 ) # (GND))) # (!\aluif.b[23]~input_o  & (!\Add1~45 ))))
// \Add1~47  = CARRY((\aluif.a[23]~input_o  & (\aluif.b[23]~input_o  & !\Add1~45 )) # (!\aluif.a[23]~input_o  & ((\aluif.b[23]~input_o ) # (!\Add1~45 ))))

	.dataa(\aluif.a[23]~input_o ),
	.datab(\aluif.b[23]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~45 ),
	.combout(\Add1~46_combout ),
	.cout(\Add1~47 ));
// synopsys translate_off
defparam \Add1~46 .lut_mask = 16'h694D;
defparam \Add1~46 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N16
cycloneive_lcell_comb \Add1~48 (
// Equation(s):
// \Add1~48_combout  = ((\aluif.b[24]~input_o  $ (\aluif.a[24]~input_o  $ (\Add1~47 )))) # (GND)
// \Add1~49  = CARRY((\aluif.b[24]~input_o  & (\aluif.a[24]~input_o  & !\Add1~47 )) # (!\aluif.b[24]~input_o  & ((\aluif.a[24]~input_o ) # (!\Add1~47 ))))

	.dataa(\aluif.b[24]~input_o ),
	.datab(\aluif.a[24]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~47 ),
	.combout(\Add1~48_combout ),
	.cout(\Add1~49 ));
// synopsys translate_off
defparam \Add1~48 .lut_mask = 16'h964D;
defparam \Add1~48 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N18
cycloneive_lcell_comb \Add1~50 (
// Equation(s):
// \Add1~50_combout  = (\aluif.b[25]~input_o  & ((\aluif.a[25]~input_o  & (!\Add1~49 )) # (!\aluif.a[25]~input_o  & ((\Add1~49 ) # (GND))))) # (!\aluif.b[25]~input_o  & ((\aluif.a[25]~input_o  & (\Add1~49  & VCC)) # (!\aluif.a[25]~input_o  & (!\Add1~49 ))))
// \Add1~51  = CARRY((\aluif.b[25]~input_o  & ((!\Add1~49 ) # (!\aluif.a[25]~input_o ))) # (!\aluif.b[25]~input_o  & (!\aluif.a[25]~input_o  & !\Add1~49 )))

	.dataa(\aluif.b[25]~input_o ),
	.datab(\aluif.a[25]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~49 ),
	.combout(\Add1~50_combout ),
	.cout(\Add1~51 ));
// synopsys translate_off
defparam \Add1~50 .lut_mask = 16'h692B;
defparam \Add1~50 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N20
cycloneive_lcell_comb \Add1~52 (
// Equation(s):
// \Add1~52_combout  = ((\aluif.b[26]~input_o  $ (\aluif.a[26]~input_o  $ (\Add1~51 )))) # (GND)
// \Add1~53  = CARRY((\aluif.b[26]~input_o  & (\aluif.a[26]~input_o  & !\Add1~51 )) # (!\aluif.b[26]~input_o  & ((\aluif.a[26]~input_o ) # (!\Add1~51 ))))

	.dataa(\aluif.b[26]~input_o ),
	.datab(\aluif.a[26]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~51 ),
	.combout(\Add1~52_combout ),
	.cout(\Add1~53 ));
// synopsys translate_off
defparam \Add1~52 .lut_mask = 16'h964D;
defparam \Add1~52 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N22
cycloneive_lcell_comb \Add1~54 (
// Equation(s):
// \Add1~54_combout  = (\aluif.b[27]~input_o  & ((\aluif.a[27]~input_o  & (!\Add1~53 )) # (!\aluif.a[27]~input_o  & ((\Add1~53 ) # (GND))))) # (!\aluif.b[27]~input_o  & ((\aluif.a[27]~input_o  & (\Add1~53  & VCC)) # (!\aluif.a[27]~input_o  & (!\Add1~53 ))))
// \Add1~55  = CARRY((\aluif.b[27]~input_o  & ((!\Add1~53 ) # (!\aluif.a[27]~input_o ))) # (!\aluif.b[27]~input_o  & (!\aluif.a[27]~input_o  & !\Add1~53 )))

	.dataa(\aluif.b[27]~input_o ),
	.datab(\aluif.a[27]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~53 ),
	.combout(\Add1~54_combout ),
	.cout(\Add1~55 ));
// synopsys translate_off
defparam \Add1~54 .lut_mask = 16'h692B;
defparam \Add1~54 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: IOIBUF_X58_Y0_N8
cycloneive_io_ibuf \aluif.opcode[0]~input (
	.i(\aluif.opcode [0]),
	.ibar(gnd),
	.o(\aluif.opcode[0]~input_o ));
// synopsys translate_off
defparam \aluif.opcode[0]~input .bus_hold = "false";
defparam \aluif.opcode[0]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X58_Y0_N1
cycloneive_io_ibuf \aluif.opcode[1]~input (
	.i(\aluif.opcode [1]),
	.ibar(gnd),
	.o(\aluif.opcode[1]~input_o ));
// synopsys translate_off
defparam \aluif.opcode[1]~input .bus_hold = "false";
defparam \aluif.opcode[1]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y11_N8
cycloneive_io_ibuf \aluif.opcode[3]~input (
	.i(\aluif.opcode [3]),
	.ibar(gnd),
	.o(\aluif.opcode[3]~input_o ));
// synopsys translate_off
defparam \aluif.opcode[3]~input .bus_hold = "false";
defparam \aluif.opcode[3]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y10_N1
cycloneive_io_ibuf \aluif.opcode[2]~input (
	.i(\aluif.opcode [2]),
	.ibar(gnd),
	.o(\aluif.opcode[2]~input_o ));
// synopsys translate_off
defparam \aluif.opcode[2]~input .bus_hold = "false";
defparam \aluif.opcode[2]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N22
cycloneive_lcell_comb \Selector0~19 (
// Equation(s):
// \Selector0~19_combout  = (!\aluif.opcode[0]~input_o  & (!\aluif.opcode[1]~input_o  & (!\aluif.opcode[3]~input_o  & \aluif.opcode[2]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~19_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~19 .lut_mask = 16'h0100;
defparam \Selector0~19 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N30
cycloneive_lcell_comb \Selector0~6 (
// Equation(s):
// \Selector0~6_combout  = (\aluif.opcode[0]~input_o  & (\aluif.opcode[1]~input_o  & (!\aluif.opcode[3]~input_o  & !\aluif.opcode[2]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~6 .lut_mask = 16'h0008;
defparam \Selector0~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N0
cycloneive_lcell_comb \Add0~0 (
// Equation(s):
// \Add0~0_combout  = (\aluif.b[0]~input_o  & (\aluif.a[0]~input_o  $ (VCC))) # (!\aluif.b[0]~input_o  & (\aluif.a[0]~input_o  & VCC))
// \Add0~1  = CARRY((\aluif.b[0]~input_o  & \aluif.a[0]~input_o ))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\aluif.a[0]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add0~0_combout ),
	.cout(\Add0~1 ));
// synopsys translate_off
defparam \Add0~0 .lut_mask = 16'h6688;
defparam \Add0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N2
cycloneive_lcell_comb \Add0~2 (
// Equation(s):
// \Add0~2_combout  = (\aluif.a[1]~input_o  & ((\aluif.b[1]~input_o  & (\Add0~1  & VCC)) # (!\aluif.b[1]~input_o  & (!\Add0~1 )))) # (!\aluif.a[1]~input_o  & ((\aluif.b[1]~input_o  & (!\Add0~1 )) # (!\aluif.b[1]~input_o  & ((\Add0~1 ) # (GND)))))
// \Add0~3  = CARRY((\aluif.a[1]~input_o  & (!\aluif.b[1]~input_o  & !\Add0~1 )) # (!\aluif.a[1]~input_o  & ((!\Add0~1 ) # (!\aluif.b[1]~input_o ))))

	.dataa(\aluif.a[1]~input_o ),
	.datab(\aluif.b[1]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~1 ),
	.combout(\Add0~2_combout ),
	.cout(\Add0~3 ));
// synopsys translate_off
defparam \Add0~2 .lut_mask = 16'h9617;
defparam \Add0~2 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N4
cycloneive_lcell_comb \Add0~4 (
// Equation(s):
// \Add0~4_combout  = ((\aluif.b[2]~input_o  $ (\aluif.a[2]~input_o  $ (!\Add0~3 )))) # (GND)
// \Add0~5  = CARRY((\aluif.b[2]~input_o  & ((\aluif.a[2]~input_o ) # (!\Add0~3 ))) # (!\aluif.b[2]~input_o  & (\aluif.a[2]~input_o  & !\Add0~3 )))

	.dataa(\aluif.b[2]~input_o ),
	.datab(\aluif.a[2]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~3 ),
	.combout(\Add0~4_combout ),
	.cout(\Add0~5 ));
// synopsys translate_off
defparam \Add0~4 .lut_mask = 16'h698E;
defparam \Add0~4 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N6
cycloneive_lcell_comb \Add0~6 (
// Equation(s):
// \Add0~6_combout  = (\aluif.a[3]~input_o  & ((\aluif.b[3]~input_o  & (\Add0~5  & VCC)) # (!\aluif.b[3]~input_o  & (!\Add0~5 )))) # (!\aluif.a[3]~input_o  & ((\aluif.b[3]~input_o  & (!\Add0~5 )) # (!\aluif.b[3]~input_o  & ((\Add0~5 ) # (GND)))))
// \Add0~7  = CARRY((\aluif.a[3]~input_o  & (!\aluif.b[3]~input_o  & !\Add0~5 )) # (!\aluif.a[3]~input_o  & ((!\Add0~5 ) # (!\aluif.b[3]~input_o ))))

	.dataa(\aluif.a[3]~input_o ),
	.datab(\aluif.b[3]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~5 ),
	.combout(\Add0~6_combout ),
	.cout(\Add0~7 ));
// synopsys translate_off
defparam \Add0~6 .lut_mask = 16'h9617;
defparam \Add0~6 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N8
cycloneive_lcell_comb \Add0~8 (
// Equation(s):
// \Add0~8_combout  = ((\aluif.a[4]~input_o  $ (\aluif.b[4]~input_o  $ (!\Add0~7 )))) # (GND)
// \Add0~9  = CARRY((\aluif.a[4]~input_o  & ((\aluif.b[4]~input_o ) # (!\Add0~7 ))) # (!\aluif.a[4]~input_o  & (\aluif.b[4]~input_o  & !\Add0~7 )))

	.dataa(\aluif.a[4]~input_o ),
	.datab(\aluif.b[4]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~7 ),
	.combout(\Add0~8_combout ),
	.cout(\Add0~9 ));
// synopsys translate_off
defparam \Add0~8 .lut_mask = 16'h698E;
defparam \Add0~8 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N10
cycloneive_lcell_comb \Add0~10 (
// Equation(s):
// \Add0~10_combout  = (\aluif.a[5]~input_o  & ((\aluif.b[5]~input_o  & (\Add0~9  & VCC)) # (!\aluif.b[5]~input_o  & (!\Add0~9 )))) # (!\aluif.a[5]~input_o  & ((\aluif.b[5]~input_o  & (!\Add0~9 )) # (!\aluif.b[5]~input_o  & ((\Add0~9 ) # (GND)))))
// \Add0~11  = CARRY((\aluif.a[5]~input_o  & (!\aluif.b[5]~input_o  & !\Add0~9 )) # (!\aluif.a[5]~input_o  & ((!\Add0~9 ) # (!\aluif.b[5]~input_o ))))

	.dataa(\aluif.a[5]~input_o ),
	.datab(\aluif.b[5]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~9 ),
	.combout(\Add0~10_combout ),
	.cout(\Add0~11 ));
// synopsys translate_off
defparam \Add0~10 .lut_mask = 16'h9617;
defparam \Add0~10 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N12
cycloneive_lcell_comb \Add0~12 (
// Equation(s):
// \Add0~12_combout  = ((\aluif.b[6]~input_o  $ (\aluif.a[6]~input_o  $ (!\Add0~11 )))) # (GND)
// \Add0~13  = CARRY((\aluif.b[6]~input_o  & ((\aluif.a[6]~input_o ) # (!\Add0~11 ))) # (!\aluif.b[6]~input_o  & (\aluif.a[6]~input_o  & !\Add0~11 )))

	.dataa(\aluif.b[6]~input_o ),
	.datab(\aluif.a[6]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~11 ),
	.combout(\Add0~12_combout ),
	.cout(\Add0~13 ));
// synopsys translate_off
defparam \Add0~12 .lut_mask = 16'h698E;
defparam \Add0~12 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N14
cycloneive_lcell_comb \Add0~14 (
// Equation(s):
// \Add0~14_combout  = (\aluif.b[7]~input_o  & ((\aluif.a[7]~input_o  & (\Add0~13  & VCC)) # (!\aluif.a[7]~input_o  & (!\Add0~13 )))) # (!\aluif.b[7]~input_o  & ((\aluif.a[7]~input_o  & (!\Add0~13 )) # (!\aluif.a[7]~input_o  & ((\Add0~13 ) # (GND)))))
// \Add0~15  = CARRY((\aluif.b[7]~input_o  & (!\aluif.a[7]~input_o  & !\Add0~13 )) # (!\aluif.b[7]~input_o  & ((!\Add0~13 ) # (!\aluif.a[7]~input_o ))))

	.dataa(\aluif.b[7]~input_o ),
	.datab(\aluif.a[7]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~13 ),
	.combout(\Add0~14_combout ),
	.cout(\Add0~15 ));
// synopsys translate_off
defparam \Add0~14 .lut_mask = 16'h9617;
defparam \Add0~14 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N16
cycloneive_lcell_comb \Add0~16 (
// Equation(s):
// \Add0~16_combout  = ((\aluif.a[8]~input_o  $ (\aluif.b[8]~input_o  $ (!\Add0~15 )))) # (GND)
// \Add0~17  = CARRY((\aluif.a[8]~input_o  & ((\aluif.b[8]~input_o ) # (!\Add0~15 ))) # (!\aluif.a[8]~input_o  & (\aluif.b[8]~input_o  & !\Add0~15 )))

	.dataa(\aluif.a[8]~input_o ),
	.datab(\aluif.b[8]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~15 ),
	.combout(\Add0~16_combout ),
	.cout(\Add0~17 ));
// synopsys translate_off
defparam \Add0~16 .lut_mask = 16'h698E;
defparam \Add0~16 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N18
cycloneive_lcell_comb \Add0~18 (
// Equation(s):
// \Add0~18_combout  = (\aluif.b[9]~input_o  & ((\aluif.a[9]~input_o  & (\Add0~17  & VCC)) # (!\aluif.a[9]~input_o  & (!\Add0~17 )))) # (!\aluif.b[9]~input_o  & ((\aluif.a[9]~input_o  & (!\Add0~17 )) # (!\aluif.a[9]~input_o  & ((\Add0~17 ) # (GND)))))
// \Add0~19  = CARRY((\aluif.b[9]~input_o  & (!\aluif.a[9]~input_o  & !\Add0~17 )) # (!\aluif.b[9]~input_o  & ((!\Add0~17 ) # (!\aluif.a[9]~input_o ))))

	.dataa(\aluif.b[9]~input_o ),
	.datab(\aluif.a[9]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~17 ),
	.combout(\Add0~18_combout ),
	.cout(\Add0~19 ));
// synopsys translate_off
defparam \Add0~18 .lut_mask = 16'h9617;
defparam \Add0~18 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N20
cycloneive_lcell_comb \Add0~20 (
// Equation(s):
// \Add0~20_combout  = ((\aluif.b[10]~input_o  $ (\aluif.a[10]~input_o  $ (!\Add0~19 )))) # (GND)
// \Add0~21  = CARRY((\aluif.b[10]~input_o  & ((\aluif.a[10]~input_o ) # (!\Add0~19 ))) # (!\aluif.b[10]~input_o  & (\aluif.a[10]~input_o  & !\Add0~19 )))

	.dataa(\aluif.b[10]~input_o ),
	.datab(\aluif.a[10]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~19 ),
	.combout(\Add0~20_combout ),
	.cout(\Add0~21 ));
// synopsys translate_off
defparam \Add0~20 .lut_mask = 16'h698E;
defparam \Add0~20 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N22
cycloneive_lcell_comb \Add0~22 (
// Equation(s):
// \Add0~22_combout  = (\aluif.a[11]~input_o  & ((\aluif.b[11]~input_o  & (\Add0~21  & VCC)) # (!\aluif.b[11]~input_o  & (!\Add0~21 )))) # (!\aluif.a[11]~input_o  & ((\aluif.b[11]~input_o  & (!\Add0~21 )) # (!\aluif.b[11]~input_o  & ((\Add0~21 ) # (GND)))))
// \Add0~23  = CARRY((\aluif.a[11]~input_o  & (!\aluif.b[11]~input_o  & !\Add0~21 )) # (!\aluif.a[11]~input_o  & ((!\Add0~21 ) # (!\aluif.b[11]~input_o ))))

	.dataa(\aluif.a[11]~input_o ),
	.datab(\aluif.b[11]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~21 ),
	.combout(\Add0~22_combout ),
	.cout(\Add0~23 ));
// synopsys translate_off
defparam \Add0~22 .lut_mask = 16'h9617;
defparam \Add0~22 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N24
cycloneive_lcell_comb \Add0~24 (
// Equation(s):
// \Add0~24_combout  = ((\aluif.a[12]~input_o  $ (\aluif.b[12]~input_o  $ (!\Add0~23 )))) # (GND)
// \Add0~25  = CARRY((\aluif.a[12]~input_o  & ((\aluif.b[12]~input_o ) # (!\Add0~23 ))) # (!\aluif.a[12]~input_o  & (\aluif.b[12]~input_o  & !\Add0~23 )))

	.dataa(\aluif.a[12]~input_o ),
	.datab(\aluif.b[12]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~23 ),
	.combout(\Add0~24_combout ),
	.cout(\Add0~25 ));
// synopsys translate_off
defparam \Add0~24 .lut_mask = 16'h698E;
defparam \Add0~24 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N26
cycloneive_lcell_comb \Add0~26 (
// Equation(s):
// \Add0~26_combout  = (\aluif.a[13]~input_o  & ((\aluif.b[13]~input_o  & (\Add0~25  & VCC)) # (!\aluif.b[13]~input_o  & (!\Add0~25 )))) # (!\aluif.a[13]~input_o  & ((\aluif.b[13]~input_o  & (!\Add0~25 )) # (!\aluif.b[13]~input_o  & ((\Add0~25 ) # (GND)))))
// \Add0~27  = CARRY((\aluif.a[13]~input_o  & (!\aluif.b[13]~input_o  & !\Add0~25 )) # (!\aluif.a[13]~input_o  & ((!\Add0~25 ) # (!\aluif.b[13]~input_o ))))

	.dataa(\aluif.a[13]~input_o ),
	.datab(\aluif.b[13]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~25 ),
	.combout(\Add0~26_combout ),
	.cout(\Add0~27 ));
// synopsys translate_off
defparam \Add0~26 .lut_mask = 16'h9617;
defparam \Add0~26 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N28
cycloneive_lcell_comb \Add0~28 (
// Equation(s):
// \Add0~28_combout  = ((\aluif.a[14]~input_o  $ (\aluif.b[14]~input_o  $ (!\Add0~27 )))) # (GND)
// \Add0~29  = CARRY((\aluif.a[14]~input_o  & ((\aluif.b[14]~input_o ) # (!\Add0~27 ))) # (!\aluif.a[14]~input_o  & (\aluif.b[14]~input_o  & !\Add0~27 )))

	.dataa(\aluif.a[14]~input_o ),
	.datab(\aluif.b[14]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~27 ),
	.combout(\Add0~28_combout ),
	.cout(\Add0~29 ));
// synopsys translate_off
defparam \Add0~28 .lut_mask = 16'h698E;
defparam \Add0~28 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y11_N30
cycloneive_lcell_comb \Add0~30 (
// Equation(s):
// \Add0~30_combout  = (\aluif.b[15]~input_o  & ((\aluif.a[15]~input_o  & (\Add0~29  & VCC)) # (!\aluif.a[15]~input_o  & (!\Add0~29 )))) # (!\aluif.b[15]~input_o  & ((\aluif.a[15]~input_o  & (!\Add0~29 )) # (!\aluif.a[15]~input_o  & ((\Add0~29 ) # (GND)))))
// \Add0~31  = CARRY((\aluif.b[15]~input_o  & (!\aluif.a[15]~input_o  & !\Add0~29 )) # (!\aluif.b[15]~input_o  & ((!\Add0~29 ) # (!\aluif.a[15]~input_o ))))

	.dataa(\aluif.b[15]~input_o ),
	.datab(\aluif.a[15]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~29 ),
	.combout(\Add0~30_combout ),
	.cout(\Add0~31 ));
// synopsys translate_off
defparam \Add0~30 .lut_mask = 16'h9617;
defparam \Add0~30 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N0
cycloneive_lcell_comb \Add0~32 (
// Equation(s):
// \Add0~32_combout  = ((\aluif.a[16]~input_o  $ (\aluif.b[16]~input_o  $ (!\Add0~31 )))) # (GND)
// \Add0~33  = CARRY((\aluif.a[16]~input_o  & ((\aluif.b[16]~input_o ) # (!\Add0~31 ))) # (!\aluif.a[16]~input_o  & (\aluif.b[16]~input_o  & !\Add0~31 )))

	.dataa(\aluif.a[16]~input_o ),
	.datab(\aluif.b[16]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~31 ),
	.combout(\Add0~32_combout ),
	.cout(\Add0~33 ));
// synopsys translate_off
defparam \Add0~32 .lut_mask = 16'h698E;
defparam \Add0~32 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N2
cycloneive_lcell_comb \Add0~34 (
// Equation(s):
// \Add0~34_combout  = (\aluif.a[17]~input_o  & ((\aluif.b[17]~input_o  & (\Add0~33  & VCC)) # (!\aluif.b[17]~input_o  & (!\Add0~33 )))) # (!\aluif.a[17]~input_o  & ((\aluif.b[17]~input_o  & (!\Add0~33 )) # (!\aluif.b[17]~input_o  & ((\Add0~33 ) # (GND)))))
// \Add0~35  = CARRY((\aluif.a[17]~input_o  & (!\aluif.b[17]~input_o  & !\Add0~33 )) # (!\aluif.a[17]~input_o  & ((!\Add0~33 ) # (!\aluif.b[17]~input_o ))))

	.dataa(\aluif.a[17]~input_o ),
	.datab(\aluif.b[17]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~33 ),
	.combout(\Add0~34_combout ),
	.cout(\Add0~35 ));
// synopsys translate_off
defparam \Add0~34 .lut_mask = 16'h9617;
defparam \Add0~34 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N4
cycloneive_lcell_comb \Add0~36 (
// Equation(s):
// \Add0~36_combout  = ((\aluif.a[18]~input_o  $ (\aluif.b[18]~input_o  $ (!\Add0~35 )))) # (GND)
// \Add0~37  = CARRY((\aluif.a[18]~input_o  & ((\aluif.b[18]~input_o ) # (!\Add0~35 ))) # (!\aluif.a[18]~input_o  & (\aluif.b[18]~input_o  & !\Add0~35 )))

	.dataa(\aluif.a[18]~input_o ),
	.datab(\aluif.b[18]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~35 ),
	.combout(\Add0~36_combout ),
	.cout(\Add0~37 ));
// synopsys translate_off
defparam \Add0~36 .lut_mask = 16'h698E;
defparam \Add0~36 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N6
cycloneive_lcell_comb \Add0~38 (
// Equation(s):
// \Add0~38_combout  = (\aluif.b[19]~input_o  & ((\aluif.a[19]~input_o  & (\Add0~37  & VCC)) # (!\aluif.a[19]~input_o  & (!\Add0~37 )))) # (!\aluif.b[19]~input_o  & ((\aluif.a[19]~input_o  & (!\Add0~37 )) # (!\aluif.a[19]~input_o  & ((\Add0~37 ) # (GND)))))
// \Add0~39  = CARRY((\aluif.b[19]~input_o  & (!\aluif.a[19]~input_o  & !\Add0~37 )) # (!\aluif.b[19]~input_o  & ((!\Add0~37 ) # (!\aluif.a[19]~input_o ))))

	.dataa(\aluif.b[19]~input_o ),
	.datab(\aluif.a[19]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~37 ),
	.combout(\Add0~38_combout ),
	.cout(\Add0~39 ));
// synopsys translate_off
defparam \Add0~38 .lut_mask = 16'h9617;
defparam \Add0~38 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N8
cycloneive_lcell_comb \Add0~40 (
// Equation(s):
// \Add0~40_combout  = ((\aluif.a[20]~input_o  $ (\aluif.b[20]~input_o  $ (!\Add0~39 )))) # (GND)
// \Add0~41  = CARRY((\aluif.a[20]~input_o  & ((\aluif.b[20]~input_o ) # (!\Add0~39 ))) # (!\aluif.a[20]~input_o  & (\aluif.b[20]~input_o  & !\Add0~39 )))

	.dataa(\aluif.a[20]~input_o ),
	.datab(\aluif.b[20]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~39 ),
	.combout(\Add0~40_combout ),
	.cout(\Add0~41 ));
// synopsys translate_off
defparam \Add0~40 .lut_mask = 16'h698E;
defparam \Add0~40 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N10
cycloneive_lcell_comb \Add0~42 (
// Equation(s):
// \Add0~42_combout  = (\aluif.b[21]~input_o  & ((\aluif.a[21]~input_o  & (\Add0~41  & VCC)) # (!\aluif.a[21]~input_o  & (!\Add0~41 )))) # (!\aluif.b[21]~input_o  & ((\aluif.a[21]~input_o  & (!\Add0~41 )) # (!\aluif.a[21]~input_o  & ((\Add0~41 ) # (GND)))))
// \Add0~43  = CARRY((\aluif.b[21]~input_o  & (!\aluif.a[21]~input_o  & !\Add0~41 )) # (!\aluif.b[21]~input_o  & ((!\Add0~41 ) # (!\aluif.a[21]~input_o ))))

	.dataa(\aluif.b[21]~input_o ),
	.datab(\aluif.a[21]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~41 ),
	.combout(\Add0~42_combout ),
	.cout(\Add0~43 ));
// synopsys translate_off
defparam \Add0~42 .lut_mask = 16'h9617;
defparam \Add0~42 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N12
cycloneive_lcell_comb \Add0~44 (
// Equation(s):
// \Add0~44_combout  = ((\aluif.a[22]~input_o  $ (\aluif.b[22]~input_o  $ (!\Add0~43 )))) # (GND)
// \Add0~45  = CARRY((\aluif.a[22]~input_o  & ((\aluif.b[22]~input_o ) # (!\Add0~43 ))) # (!\aluif.a[22]~input_o  & (\aluif.b[22]~input_o  & !\Add0~43 )))

	.dataa(\aluif.a[22]~input_o ),
	.datab(\aluif.b[22]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~43 ),
	.combout(\Add0~44_combout ),
	.cout(\Add0~45 ));
// synopsys translate_off
defparam \Add0~44 .lut_mask = 16'h698E;
defparam \Add0~44 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N14
cycloneive_lcell_comb \Add0~46 (
// Equation(s):
// \Add0~46_combout  = (\aluif.a[23]~input_o  & ((\aluif.b[23]~input_o  & (\Add0~45  & VCC)) # (!\aluif.b[23]~input_o  & (!\Add0~45 )))) # (!\aluif.a[23]~input_o  & ((\aluif.b[23]~input_o  & (!\Add0~45 )) # (!\aluif.b[23]~input_o  & ((\Add0~45 ) # (GND)))))
// \Add0~47  = CARRY((\aluif.a[23]~input_o  & (!\aluif.b[23]~input_o  & !\Add0~45 )) # (!\aluif.a[23]~input_o  & ((!\Add0~45 ) # (!\aluif.b[23]~input_o ))))

	.dataa(\aluif.a[23]~input_o ),
	.datab(\aluif.b[23]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~45 ),
	.combout(\Add0~46_combout ),
	.cout(\Add0~47 ));
// synopsys translate_off
defparam \Add0~46 .lut_mask = 16'h9617;
defparam \Add0~46 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N16
cycloneive_lcell_comb \Add0~48 (
// Equation(s):
// \Add0~48_combout  = ((\aluif.a[24]~input_o  $ (\aluif.b[24]~input_o  $ (!\Add0~47 )))) # (GND)
// \Add0~49  = CARRY((\aluif.a[24]~input_o  & ((\aluif.b[24]~input_o ) # (!\Add0~47 ))) # (!\aluif.a[24]~input_o  & (\aluif.b[24]~input_o  & !\Add0~47 )))

	.dataa(\aluif.a[24]~input_o ),
	.datab(\aluif.b[24]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~47 ),
	.combout(\Add0~48_combout ),
	.cout(\Add0~49 ));
// synopsys translate_off
defparam \Add0~48 .lut_mask = 16'h698E;
defparam \Add0~48 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N18
cycloneive_lcell_comb \Add0~50 (
// Equation(s):
// \Add0~50_combout  = (\aluif.b[25]~input_o  & ((\aluif.a[25]~input_o  & (\Add0~49  & VCC)) # (!\aluif.a[25]~input_o  & (!\Add0~49 )))) # (!\aluif.b[25]~input_o  & ((\aluif.a[25]~input_o  & (!\Add0~49 )) # (!\aluif.a[25]~input_o  & ((\Add0~49 ) # (GND)))))
// \Add0~51  = CARRY((\aluif.b[25]~input_o  & (!\aluif.a[25]~input_o  & !\Add0~49 )) # (!\aluif.b[25]~input_o  & ((!\Add0~49 ) # (!\aluif.a[25]~input_o ))))

	.dataa(\aluif.b[25]~input_o ),
	.datab(\aluif.a[25]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~49 ),
	.combout(\Add0~50_combout ),
	.cout(\Add0~51 ));
// synopsys translate_off
defparam \Add0~50 .lut_mask = 16'h9617;
defparam \Add0~50 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N20
cycloneive_lcell_comb \Add0~52 (
// Equation(s):
// \Add0~52_combout  = ((\aluif.a[26]~input_o  $ (\aluif.b[26]~input_o  $ (!\Add0~51 )))) # (GND)
// \Add0~53  = CARRY((\aluif.a[26]~input_o  & ((\aluif.b[26]~input_o ) # (!\Add0~51 ))) # (!\aluif.a[26]~input_o  & (\aluif.b[26]~input_o  & !\Add0~51 )))

	.dataa(\aluif.a[26]~input_o ),
	.datab(\aluif.b[26]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~51 ),
	.combout(\Add0~52_combout ),
	.cout(\Add0~53 ));
// synopsys translate_off
defparam \Add0~52 .lut_mask = 16'h698E;
defparam \Add0~52 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N22
cycloneive_lcell_comb \Add0~54 (
// Equation(s):
// \Add0~54_combout  = (\aluif.b[27]~input_o  & ((\aluif.a[27]~input_o  & (\Add0~53  & VCC)) # (!\aluif.a[27]~input_o  & (!\Add0~53 )))) # (!\aluif.b[27]~input_o  & ((\aluif.a[27]~input_o  & (!\Add0~53 )) # (!\aluif.a[27]~input_o  & ((\Add0~53 ) # (GND)))))
// \Add0~55  = CARRY((\aluif.b[27]~input_o  & (!\aluif.a[27]~input_o  & !\Add0~53 )) # (!\aluif.b[27]~input_o  & ((!\Add0~53 ) # (!\aluif.a[27]~input_o ))))

	.dataa(\aluif.b[27]~input_o ),
	.datab(\aluif.a[27]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~53 ),
	.combout(\Add0~54_combout ),
	.cout(\Add0~55 ));
// synopsys translate_off
defparam \Add0~54 .lut_mask = 16'h9617;
defparam \Add0~54 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N6
cycloneive_lcell_comb \Selector4~7 (
// Equation(s):
// \Selector4~7_combout  = (\Add1~54_combout  & ((\Selector0~19_combout ) # ((\Selector0~6_combout  & \Add0~54_combout )))) # (!\Add1~54_combout  & (((\Selector0~6_combout  & \Add0~54_combout ))))

	.dataa(\Add1~54_combout ),
	.datab(\Selector0~19_combout ),
	.datac(\Selector0~6_combout ),
	.datad(\Add0~54_combout ),
	.cin(gnd),
	.combout(\Selector4~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~7 .lut_mask = 16'hF888;
defparam \Selector4~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N2
cycloneive_lcell_comb \Selector23~0 (
// Equation(s):
// \Selector23~0_combout  = (!\aluif.opcode[3]~input_o  & !\aluif.opcode[2]~input_o )

	.dataa(gnd),
	.datab(gnd),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector23~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~0 .lut_mask = 16'h000F;
defparam \Selector23~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N24
cycloneive_lcell_comb \Selector10~3 (
// Equation(s):
// \Selector10~3_combout  = (!\aluif.opcode[0]~input_o  & (\aluif.opcode[1]~input_o  & (\Selector23~0_combout  & !\aluif.b[4]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\Selector23~0_combout ),
	.datad(\aluif.b[4]~input_o ),
	.cin(gnd),
	.combout(\Selector10~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~3 .lut_mask = 16'h0040;
defparam \Selector10~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N16
cycloneive_lcell_comb \ShiftLeft0~33 (
// Equation(s):
// \ShiftLeft0~33_combout  = (!\aluif.b[3]~input_o  & !\aluif.b[2]~input_o )

	.dataa(gnd),
	.datab(\aluif.b[3]~input_o ),
	.datac(gnd),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~33_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~33 .lut_mask = 16'h0033;
defparam \ShiftLeft0~33 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X94_Y0_N1
cycloneive_io_ibuf \aluif.a[31]~input (
	.i(\aluif.a [31]),
	.ibar(gnd),
	.o(\aluif.a[31]~input_o ));
// synopsys translate_off
defparam \aluif.a[31]~input .bus_hold = "false";
defparam \aluif.a[31]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N20
cycloneive_lcell_comb \Selector20~2 (
// Equation(s):
// \Selector20~2_combout  = (\aluif.a[31]~input_o  & ((\aluif.b[3]~input_o ) # (\aluif.b[2]~input_o )))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\aluif.a[31]~input_o ),
	.datac(gnd),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector20~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~2 .lut_mask = 16'hCC88;
defparam \Selector20~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X96_Y0_N22
cycloneive_io_ibuf \aluif.a[28]~input (
	.i(\aluif.a [28]),
	.ibar(gnd),
	.o(\aluif.a[28]~input_o ));
// synopsys translate_off
defparam \aluif.a[28]~input .bus_hold = "false";
defparam \aluif.a[28]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N22
cycloneive_lcell_comb \ShiftRight1~26 (
// Equation(s):
// \ShiftRight1~26_combout  = (!\aluif.b[1]~input_o  & ((\aluif.b[0]~input_o  & (\aluif.a[28]~input_o )) # (!\aluif.b[0]~input_o  & ((\aluif.a[27]~input_o )))))

	.dataa(\aluif.a[28]~input_o ),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[27]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~26_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~26 .lut_mask = 16'h0B08;
defparam \ShiftRight1~26 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X87_Y0_N22
cycloneive_io_ibuf \aluif.a[30]~input (
	.i(\aluif.a [30]),
	.ibar(gnd),
	.o(\aluif.a[30]~input_o ));
// synopsys translate_off
defparam \aluif.a[30]~input .bus_hold = "false";
defparam \aluif.a[30]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X102_Y0_N22
cycloneive_io_ibuf \aluif.a[29]~input (
	.i(\aluif.a [29]),
	.ibar(gnd),
	.o(\aluif.a[29]~input_o ));
// synopsys translate_off
defparam \aluif.a[29]~input .bus_hold = "false";
defparam \aluif.a[29]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N4
cycloneive_lcell_comb \ShiftRight1~16 (
// Equation(s):
// \ShiftRight1~16_combout  = (\aluif.b[0]~input_o  & (\aluif.a[30]~input_o )) # (!\aluif.b[0]~input_o  & ((\aluif.a[29]~input_o )))

	.dataa(gnd),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.a[30]~input_o ),
	.datad(\aluif.a[29]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~16_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~16 .lut_mask = 16'hF3C0;
defparam \ShiftRight1~16 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N16
cycloneive_lcell_comb \ShiftRight1~27 (
// Equation(s):
// \ShiftRight1~27_combout  = (\ShiftRight1~26_combout ) # ((\ShiftRight1~16_combout  & \aluif.b[1]~input_o ))

	.dataa(\ShiftRight1~26_combout ),
	.datab(\ShiftRight1~16_combout ),
	.datac(\aluif.b[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight1~27_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~27 .lut_mask = 16'hEAEA;
defparam \ShiftRight1~27 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N10
cycloneive_lcell_comb \Selector4~0 (
// Equation(s):
// \Selector4~0_combout  = (\Selector10~3_combout  & ((\Selector20~2_combout ) # ((\ShiftLeft0~33_combout  & \ShiftRight1~27_combout ))))

	.dataa(\Selector10~3_combout ),
	.datab(\ShiftLeft0~33_combout ),
	.datac(\Selector20~2_combout ),
	.datad(\ShiftRight1~27_combout ),
	.cin(gnd),
	.combout(\Selector4~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~0 .lut_mask = 16'hA8A0;
defparam \Selector4~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N24
cycloneive_lcell_comb \Selector7~3 (
// Equation(s):
// \Selector7~3_combout  = (\aluif.b[4]~input_o ) # (\aluif.b[3]~input_o )

	.dataa(\aluif.b[4]~input_o ),
	.datab(gnd),
	.datac(\aluif.b[3]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector7~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~3 .lut_mask = 16'hFAFA;
defparam \Selector7~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N30
cycloneive_lcell_comb \Selector6~2 (
// Equation(s):
// \Selector6~2_combout  = (\Selector23~0_combout  & (!\aluif.opcode[1]~input_o  & (!\Selector7~3_combout  & \aluif.opcode[0]~input_o )))

	.dataa(\Selector23~0_combout ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\Selector7~3_combout ),
	.datad(\aluif.opcode[0]~input_o ),
	.cin(gnd),
	.combout(\Selector6~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~2 .lut_mask = 16'h0200;
defparam \Selector6~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y14_N12
cycloneive_lcell_comb \ShiftLeft0~47 (
// Equation(s):
// \ShiftLeft0~47_combout  = (!\aluif.b[0]~input_o  & !\aluif.b[1]~input_o )

	.dataa(\aluif.b[0]~input_o ),
	.datab(gnd),
	.datac(\aluif.b[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~47_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~47 .lut_mask = 16'h0505;
defparam \ShiftLeft0~47 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N2
cycloneive_lcell_comb \ShiftRight0~23 (
// Equation(s):
// \ShiftRight0~23_combout  = (\aluif.b[2]~input_o  & (((\aluif.a[31]~input_o  & \ShiftLeft0~47_combout )))) # (!\aluif.b[2]~input_o  & (\ShiftRight1~27_combout ))

	.dataa(\ShiftRight1~27_combout ),
	.datab(\aluif.a[31]~input_o ),
	.datac(\ShiftLeft0~47_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~23_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~23 .lut_mask = 16'hC0AA;
defparam \ShiftRight0~23 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N28
cycloneive_lcell_comb \Selector4~1 (
// Equation(s):
// \Selector4~1_combout  = (\Selector4~0_combout ) # ((\Selector6~2_combout  & \ShiftRight0~23_combout ))

	.dataa(\Selector4~0_combout ),
	.datab(\Selector6~2_combout ),
	.datac(gnd),
	.datad(\ShiftRight0~23_combout ),
	.cin(gnd),
	.combout(\Selector4~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~1 .lut_mask = 16'hEEAA;
defparam \Selector4~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N18
cycloneive_lcell_comb \Selector10~4 (
// Equation(s):
// \Selector10~4_combout  = (!\aluif.opcode[0]~input_o  & (\aluif.opcode[1]~input_o  & (\Selector23~0_combout  & \aluif.b[4]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\Selector23~0_combout ),
	.datad(\aluif.b[4]~input_o ),
	.cin(gnd),
	.combout(\Selector10~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~4 .lut_mask = 16'h4000;
defparam \Selector10~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N24
cycloneive_lcell_comb \Selector10~5 (
// Equation(s):
// \Selector10~5_combout  = (\Selector10~4_combout  & \aluif.a[31]~input_o )

	.dataa(gnd),
	.datab(\Selector10~4_combout ),
	.datac(gnd),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\Selector10~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~5 .lut_mask = 16'hCC00;
defparam \Selector10~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N16
cycloneive_lcell_comb \Selector0~7 (
// Equation(s):
// \Selector0~7_combout  = (\aluif.opcode[0]~input_o  & (\aluif.opcode[1]~input_o  & (!\aluif.opcode[3]~input_o  & \aluif.opcode[2]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~7 .lut_mask = 16'h0800;
defparam \Selector0~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N26
cycloneive_lcell_comb \Selector4~3 (
// Equation(s):
// \Selector4~3_combout  = (\Selector0~7_combout  & (\aluif.b[27]~input_o  $ (\aluif.a[27]~input_o )))

	.dataa(\Selector0~7_combout ),
	.datab(\aluif.b[27]~input_o ),
	.datac(gnd),
	.datad(\aluif.a[27]~input_o ),
	.cin(gnd),
	.combout(\Selector4~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~3 .lut_mask = 16'h2288;
defparam \Selector4~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N20
cycloneive_lcell_comb \Selector7~4 (
// Equation(s):
// \Selector7~4_combout  = (\aluif.b[4]~input_o ) # ((\aluif.b[2]~input_o  & !\aluif.b[3]~input_o ))

	.dataa(\aluif.b[2]~input_o ),
	.datab(\aluif.b[3]~input_o ),
	.datac(\aluif.b[4]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector7~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~4 .lut_mask = 16'hF2F2;
defparam \Selector7~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N24
cycloneive_lcell_comb \ShiftLeft0~25 (
// Equation(s):
// \ShiftLeft0~25_combout  = (\aluif.b[0]~input_o  & (\aluif.a[0]~input_o )) # (!\aluif.b[0]~input_o  & ((\aluif.a[1]~input_o )))

	.dataa(\aluif.a[0]~input_o ),
	.datab(gnd),
	.datac(\aluif.a[1]~input_o ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~25_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~25 .lut_mask = 16'hAAF0;
defparam \ShiftLeft0~25 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N14
cycloneive_lcell_comb \ShiftLeft0~24 (
// Equation(s):
// \ShiftLeft0~24_combout  = (!\aluif.b[1]~input_o  & ((\aluif.b[0]~input_o  & ((\aluif.a[2]~input_o ))) # (!\aluif.b[0]~input_o  & (\aluif.a[3]~input_o ))))

	.dataa(\aluif.a[3]~input_o ),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~24_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~24 .lut_mask = 16'h0E02;
defparam \ShiftLeft0~24 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N26
cycloneive_lcell_comb \ShiftLeft0~26 (
// Equation(s):
// \ShiftLeft0~26_combout  = (\ShiftLeft0~24_combout ) # ((\aluif.b[1]~input_o  & \ShiftLeft0~25_combout ))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\ShiftLeft0~25_combout ),
	.datac(\ShiftLeft0~24_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~26_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~26 .lut_mask = 16'hF8F8;
defparam \ShiftLeft0~26 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y14_N24
cycloneive_lcell_comb \ShiftLeft0~27 (
// Equation(s):
// \ShiftLeft0~27_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[4]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[6]~input_o ))

	.dataa(gnd),
	.datab(\aluif.a[6]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[4]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~27_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~27 .lut_mask = 16'hFC0C;
defparam \ShiftLeft0~27 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N30
cycloneive_lcell_comb \ShiftLeft0~28 (
// Equation(s):
// \ShiftLeft0~28_combout  = (\aluif.b[1]~input_o  & (\aluif.a[5]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[7]~input_o )))

	.dataa(gnd),
	.datab(\aluif.a[5]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[7]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~28_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~28 .lut_mask = 16'hCFC0;
defparam \ShiftLeft0~28 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y14_N26
cycloneive_lcell_comb \ShiftLeft0~29 (
// Equation(s):
// \ShiftLeft0~29_combout  = (\aluif.b[0]~input_o  & (\ShiftLeft0~27_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftLeft0~28_combout )))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\ShiftLeft0~27_combout ),
	.datac(gnd),
	.datad(\ShiftLeft0~28_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~29_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~29 .lut_mask = 16'hDD88;
defparam \ShiftLeft0~29 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N24
cycloneive_lcell_comb \Selector7~2 (
// Equation(s):
// \Selector7~2_combout  = (!\aluif.b[3]~input_o  & \aluif.b[2]~input_o )

	.dataa(\aluif.b[3]~input_o ),
	.datab(gnd),
	.datac(gnd),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector7~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~2 .lut_mask = 16'h5500;
defparam \Selector7~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N16
cycloneive_lcell_comb \ShiftLeft0~18 (
// Equation(s):
// \ShiftLeft0~18_combout  = (\aluif.b[1]~input_o  & (\aluif.a[9]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[11]~input_o )))

	.dataa(\aluif.a[9]~input_o ),
	.datab(gnd),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[11]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~18_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~18 .lut_mask = 16'hAFA0;
defparam \ShiftLeft0~18 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N28
cycloneive_lcell_comb \ShiftLeft0~17 (
// Equation(s):
// \ShiftLeft0~17_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[8]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[10]~input_o ))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[10]~input_o ),
	.datac(gnd),
	.datad(\aluif.a[8]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~17_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~17 .lut_mask = 16'hEE44;
defparam \ShiftLeft0~17 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N10
cycloneive_lcell_comb \ShiftLeft0~19 (
// Equation(s):
// \ShiftLeft0~19_combout  = (\aluif.b[0]~input_o  & ((\ShiftLeft0~17_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftLeft0~18_combout ))

	.dataa(gnd),
	.datab(\ShiftLeft0~18_combout ),
	.datac(\ShiftLeft0~17_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~19_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~19 .lut_mask = 16'hF0CC;
defparam \ShiftLeft0~19 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y14_N28
cycloneive_lcell_comb \ShiftLeft0~49 (
// Equation(s):
// \ShiftLeft0~49_combout  = (\ShiftLeft0~29_combout  & ((\Selector7~2_combout ) # ((\ShiftLeft0~33_combout  & \ShiftLeft0~19_combout )))) # (!\ShiftLeft0~29_combout  & (((\ShiftLeft0~33_combout  & \ShiftLeft0~19_combout ))))

	.dataa(\ShiftLeft0~29_combout ),
	.datab(\Selector7~2_combout ),
	.datac(\ShiftLeft0~33_combout ),
	.datad(\ShiftLeft0~19_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~49_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~49 .lut_mask = 16'hF888;
defparam \ShiftLeft0~49 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N0
cycloneive_lcell_comb \ShiftLeft0~97 (
// Equation(s):
// \ShiftLeft0~97_combout  = (\ShiftLeft0~49_combout ) # ((\ShiftLeft0~26_combout  & (\aluif.b[3]~input_o  & !\aluif.b[2]~input_o )))

	.dataa(\ShiftLeft0~26_combout ),
	.datab(\ShiftLeft0~49_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~97_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~97 .lut_mask = 16'hCCEC;
defparam \ShiftLeft0~97 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N8
cycloneive_lcell_comb \ShiftLeft0~8 (
// Equation(s):
// \ShiftLeft0~8_combout  = (\aluif.b[1]~input_o  & ((\aluif.b[0]~input_o  & ((\aluif.a[24]~input_o ))) # (!\aluif.b[0]~input_o  & (\aluif.a[25]~input_o ))))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\aluif.b[1]~input_o ),
	.datac(\aluif.a[25]~input_o ),
	.datad(\aluif.a[24]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~8_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~8 .lut_mask = 16'hC840;
defparam \ShiftLeft0~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N2
cycloneive_lcell_comb \ShiftLeft0~9 (
// Equation(s):
// \ShiftLeft0~9_combout  = (\aluif.b[0]~input_o  & ((\aluif.a[26]~input_o ))) # (!\aluif.b[0]~input_o  & (\aluif.a[27]~input_o ))

	.dataa(\aluif.b[0]~input_o ),
	.datab(gnd),
	.datac(\aluif.a[27]~input_o ),
	.datad(\aluif.a[26]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~9_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~9 .lut_mask = 16'hFA50;
defparam \ShiftLeft0~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N28
cycloneive_lcell_comb \ShiftLeft0~10 (
// Equation(s):
// \ShiftLeft0~10_combout  = (\ShiftLeft0~8_combout ) # ((!\aluif.b[1]~input_o  & \ShiftLeft0~9_combout ))

	.dataa(gnd),
	.datab(\ShiftLeft0~8_combout ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\ShiftLeft0~9_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~10_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~10 .lut_mask = 16'hCFCC;
defparam \ShiftLeft0~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N22
cycloneive_lcell_comb \ShiftLeft0~21 (
// Equation(s):
// \ShiftLeft0~21_combout  = (\aluif.b[1]~input_o  & (\aluif.a[13]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[15]~input_o )))

	.dataa(gnd),
	.datab(\aluif.a[13]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[15]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~21_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~21 .lut_mask = 16'hCFC0;
defparam \ShiftLeft0~21 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N4
cycloneive_lcell_comb \ShiftLeft0~20 (
// Equation(s):
// \ShiftLeft0~20_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[12]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[14]~input_o ))

	.dataa(\aluif.a[14]~input_o ),
	.datab(\aluif.a[12]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~20_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~20 .lut_mask = 16'hCACA;
defparam \ShiftLeft0~20 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N8
cycloneive_lcell_comb \ShiftLeft0~22 (
// Equation(s):
// \ShiftLeft0~22_combout  = (\aluif.b[0]~input_o  & ((\ShiftLeft0~20_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftLeft0~21_combout ))

	.dataa(\ShiftLeft0~21_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~20_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~22_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~22 .lut_mask = 16'hF0AA;
defparam \ShiftLeft0~22 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N8
cycloneive_lcell_comb \ShiftLeft0~12 (
// Equation(s):
// \ShiftLeft0~12_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[17]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[19]~input_o ))

	.dataa(\aluif.a[19]~input_o ),
	.datab(gnd),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[17]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~12_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~12 .lut_mask = 16'hFA0A;
defparam \ShiftLeft0~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N14
cycloneive_lcell_comb \ShiftLeft0~11 (
// Equation(s):
// \ShiftLeft0~11_combout  = (\aluif.b[1]~input_o  & (\aluif.a[16]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[18]~input_o )))

	.dataa(gnd),
	.datab(\aluif.a[16]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[18]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~11_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~11 .lut_mask = 16'hCFC0;
defparam \ShiftLeft0~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N24
cycloneive_lcell_comb \ShiftLeft0~13 (
// Equation(s):
// \ShiftLeft0~13_combout  = (\aluif.b[0]~input_o  & ((\ShiftLeft0~11_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftLeft0~12_combout ))

	.dataa(\ShiftLeft0~12_combout ),
	.datab(gnd),
	.datac(\aluif.b[0]~input_o ),
	.datad(\ShiftLeft0~11_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~13_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~13 .lut_mask = 16'hFA0A;
defparam \ShiftLeft0~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N10
cycloneive_lcell_comb \ShiftLeft0~48 (
// Equation(s):
// \ShiftLeft0~48_combout  = (\aluif.b[2]~input_o  & (\ShiftLeft0~22_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftLeft0~13_combout )))

	.dataa(gnd),
	.datab(\aluif.b[2]~input_o ),
	.datac(\ShiftLeft0~22_combout ),
	.datad(\ShiftLeft0~13_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~48_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~48 .lut_mask = 16'hF3C0;
defparam \ShiftLeft0~48 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N4
cycloneive_lcell_comb \Selector4~4 (
// Equation(s):
// \Selector4~4_combout  = (\Selector7~4_combout  & (\Selector7~3_combout )) # (!\Selector7~4_combout  & ((\Selector7~3_combout  & ((\ShiftLeft0~48_combout ))) # (!\Selector7~3_combout  & (\ShiftLeft0~10_combout ))))

	.dataa(\Selector7~4_combout ),
	.datab(\Selector7~3_combout ),
	.datac(\ShiftLeft0~10_combout ),
	.datad(\ShiftLeft0~48_combout ),
	.cin(gnd),
	.combout(\Selector4~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~4 .lut_mask = 16'hDC98;
defparam \Selector4~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N28
cycloneive_lcell_comb \ShiftLeft0~14 (
// Equation(s):
// \ShiftLeft0~14_combout  = (\aluif.b[1]~input_o  & (\aluif.a[20]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[22]~input_o )))

	.dataa(\aluif.a[20]~input_o ),
	.datab(\aluif.a[22]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~14_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~14 .lut_mask = 16'hACAC;
defparam \ShiftLeft0~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N22
cycloneive_lcell_comb \ShiftLeft0~15 (
// Equation(s):
// \ShiftLeft0~15_combout  = (\aluif.b[1]~input_o  & (\aluif.a[21]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[23]~input_o )))

	.dataa(\aluif.b[1]~input_o ),
	.datab(gnd),
	.datac(\aluif.a[21]~input_o ),
	.datad(\aluif.a[23]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~15_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~15 .lut_mask = 16'hF5A0;
defparam \ShiftLeft0~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N16
cycloneive_lcell_comb \ShiftLeft0~16 (
// Equation(s):
// \ShiftLeft0~16_combout  = (\aluif.b[0]~input_o  & (\ShiftLeft0~14_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftLeft0~15_combout )))

	.dataa(\ShiftLeft0~14_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~15_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~16_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~16 .lut_mask = 16'hAAF0;
defparam \ShiftLeft0~16 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N14
cycloneive_lcell_comb \Selector4~5 (
// Equation(s):
// \Selector4~5_combout  = (\Selector7~4_combout  & ((\Selector4~4_combout  & (\ShiftLeft0~97_combout )) # (!\Selector4~4_combout  & ((\ShiftLeft0~16_combout ))))) # (!\Selector7~4_combout  & (((\Selector4~4_combout ))))

	.dataa(\Selector7~4_combout ),
	.datab(\ShiftLeft0~97_combout ),
	.datac(\Selector4~4_combout ),
	.datad(\ShiftLeft0~16_combout ),
	.cin(gnd),
	.combout(\Selector4~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~5 .lut_mask = 16'hDAD0;
defparam \Selector4~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N24
cycloneive_lcell_comb \Selector0~4 (
// Equation(s):
// \Selector0~4_combout  = (!\aluif.opcode[0]~input_o  & (!\aluif.opcode[1]~input_o  & (!\aluif.opcode[3]~input_o  & !\aluif.opcode[2]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~4 .lut_mask = 16'h0001;
defparam \Selector0~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N26
cycloneive_lcell_comb \Selector0~21 (
// Equation(s):
// \Selector0~21_combout  = (\aluif.opcode[0]~input_o  & (!\aluif.opcode[1]~input_o  & (!\aluif.opcode[3]~input_o  & \aluif.opcode[2]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~21_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~21 .lut_mask = 16'h0200;
defparam \Selector0~21 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N8
cycloneive_lcell_comb \Selector0~20 (
// Equation(s):
// \Selector0~20_combout  = (!\aluif.opcode[0]~input_o  & (\aluif.opcode[1]~input_o  & (!\aluif.opcode[3]~input_o  & \aluif.opcode[2]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~20_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~20 .lut_mask = 16'h0400;
defparam \Selector0~20 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N24
cycloneive_lcell_comb \Selector4~2 (
// Equation(s):
// \Selector4~2_combout  = (\aluif.a[27]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.b[27]~input_o )))) # (!\aluif.a[27]~input_o  & (((\aluif.b[27]~input_o  & \Selector0~20_combout ))))

	.dataa(\aluif.a[27]~input_o ),
	.datab(\Selector0~21_combout ),
	.datac(\aluif.b[27]~input_o ),
	.datad(\Selector0~20_combout ),
	.cin(gnd),
	.combout(\Selector4~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~2 .lut_mask = 16'hFA80;
defparam \Selector4~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N28
cycloneive_lcell_comb \Selector4~6 (
// Equation(s):
// \Selector4~6_combout  = (\Selector4~3_combout ) # ((\Selector4~2_combout ) # ((\Selector4~5_combout  & \Selector0~4_combout )))

	.dataa(\Selector4~3_combout ),
	.datab(\Selector4~5_combout ),
	.datac(\Selector0~4_combout ),
	.datad(\Selector4~2_combout ),
	.cin(gnd),
	.combout(\Selector4~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~6 .lut_mask = 16'hFFEA;
defparam \Selector4~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N0
cycloneive_lcell_comb \Selector4~8 (
// Equation(s):
// \Selector4~8_combout  = (\Selector4~7_combout ) # ((\Selector4~1_combout ) # ((\Selector10~5_combout ) # (\Selector4~6_combout )))

	.dataa(\Selector4~7_combout ),
	.datab(\Selector4~1_combout ),
	.datac(\Selector10~5_combout ),
	.datad(\Selector4~6_combout ),
	.cin(gnd),
	.combout(\Selector4~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~8 .lut_mask = 16'hFFFE;
defparam \Selector4~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X96_Y0_N1
cycloneive_io_ibuf \aluif.b[28]~input (
	.i(\aluif.b [28]),
	.ibar(gnd),
	.o(\aluif.b[28]~input_o ));
// synopsys translate_off
defparam \aluif.b[28]~input .bus_hold = "false";
defparam \aluif.b[28]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N26
cycloneive_lcell_comb \Selector3~1 (
// Equation(s):
// \Selector3~1_combout  = (\aluif.b[28]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.a[28]~input_o )))) # (!\aluif.b[28]~input_o  & (((\Selector0~20_combout  & \aluif.a[28]~input_o ))))

	.dataa(\Selector0~21_combout ),
	.datab(\aluif.b[28]~input_o ),
	.datac(\Selector0~20_combout ),
	.datad(\aluif.a[28]~input_o ),
	.cin(gnd),
	.combout(\Selector3~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~1 .lut_mask = 16'hF8C0;
defparam \Selector3~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N12
cycloneive_lcell_comb \Selector9~0 (
// Equation(s):
// \Selector9~0_combout  = (\aluif.opcode[0]~input_o  & (!\aluif.b[4]~input_o  & (!\aluif.opcode[1]~input_o  & \Selector23~0_combout )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.b[4]~input_o ),
	.datac(\aluif.opcode[1]~input_o ),
	.datad(\Selector23~0_combout ),
	.cin(gnd),
	.combout(\Selector9~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~0 .lut_mask = 16'h0200;
defparam \Selector9~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N8
cycloneive_lcell_comb \ShiftRight1~2 (
// Equation(s):
// \ShiftRight1~2_combout  = (\aluif.b[0]~input_o  & ((\aluif.a[31]~input_o ))) # (!\aluif.b[0]~input_o  & (\aluif.a[30]~input_o ))

	.dataa(gnd),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.a[30]~input_o ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~2_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~2 .lut_mask = 16'hFC30;
defparam \ShiftRight1~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N8
cycloneive_lcell_comb \ShiftRight0~5 (
// Equation(s):
// \ShiftRight0~5_combout  = (!\aluif.b[1]~input_o  & ((\aluif.b[0]~input_o  & (\aluif.a[29]~input_o )) # (!\aluif.b[0]~input_o  & ((\aluif.a[28]~input_o )))))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.a[29]~input_o ),
	.datad(\aluif.a[28]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~5_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~5 .lut_mask = 16'h5140;
defparam \ShiftRight0~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N10
cycloneive_lcell_comb \ShiftRight0~6 (
// Equation(s):
// \ShiftRight0~6_combout  = (\ShiftRight0~5_combout ) # ((\ShiftRight1~2_combout  & \aluif.b[1]~input_o ))

	.dataa(gnd),
	.datab(\ShiftRight1~2_combout ),
	.datac(\ShiftRight0~5_combout ),
	.datad(\aluif.b[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~6_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~6 .lut_mask = 16'hFCF0;
defparam \ShiftRight0~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N20
cycloneive_lcell_comb \Selector3~0 (
// Equation(s):
// \Selector3~0_combout  = (\ShiftRight0~6_combout  & (\ShiftLeft0~33_combout  & ((\Selector9~0_combout ) # (\Selector10~3_combout ))))

	.dataa(\Selector9~0_combout ),
	.datab(\ShiftRight0~6_combout ),
	.datac(\Selector10~3_combout ),
	.datad(\ShiftLeft0~33_combout ),
	.cin(gnd),
	.combout(\Selector3~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~0 .lut_mask = 16'hC800;
defparam \Selector3~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N22
cycloneive_lcell_comb \Selector3~2 (
// Equation(s):
// \Selector3~2_combout  = (\Selector10~3_combout  & ((\Selector20~2_combout ) # ((\aluif.a[31]~input_o  & \Selector10~4_combout )))) # (!\Selector10~3_combout  & (\aluif.a[31]~input_o  & ((\Selector10~4_combout ))))

	.dataa(\Selector10~3_combout ),
	.datab(\aluif.a[31]~input_o ),
	.datac(\Selector20~2_combout ),
	.datad(\Selector10~4_combout ),
	.cin(gnd),
	.combout(\Selector3~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~2 .lut_mask = 16'hECA0;
defparam \Selector3~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N8
cycloneive_lcell_comb \Selector3~3 (
// Equation(s):
// \Selector3~3_combout  = (\Selector3~1_combout ) # ((\Selector3~0_combout ) # (\Selector3~2_combout ))

	.dataa(\Selector3~1_combout ),
	.datab(\Selector3~0_combout ),
	.datac(\Selector3~2_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector3~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~3 .lut_mask = 16'hFEFE;
defparam \Selector3~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N2
cycloneive_lcell_comb \Selector10~16 (
// Equation(s):
// \Selector10~16_combout  = (\Selector0~4_combout  & \aluif.b[4]~input_o )

	.dataa(gnd),
	.datab(\Selector0~4_combout ),
	.datac(\aluif.b[4]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector10~16_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~16 .lut_mask = 16'hC0C0;
defparam \Selector10~16 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N2
cycloneive_lcell_comb \Selector30~7 (
// Equation(s):
// \Selector30~7_combout  = (\Selector0~4_combout  & !\aluif.b[4]~input_o )

	.dataa(\Selector0~4_combout ),
	.datab(gnd),
	.datac(\aluif.b[4]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector30~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~7 .lut_mask = 16'h0A0A;
defparam \Selector30~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N18
cycloneive_lcell_comb \ShiftLeft0~43 (
// Equation(s):
// \ShiftLeft0~43_combout  = (\aluif.b[1]~input_o  & (\aluif.a[14]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[16]~input_o )))

	.dataa(\aluif.a[14]~input_o ),
	.datab(\aluif.a[16]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~43_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~43 .lut_mask = 16'hACAC;
defparam \ShiftLeft0~43 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N12
cycloneive_lcell_comb \ShiftLeft0~79 (
// Equation(s):
// \ShiftLeft0~79_combout  = (\aluif.b[0]~input_o  & ((\ShiftLeft0~21_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftLeft0~43_combout ))

	.dataa(\ShiftLeft0~43_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~21_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~79_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~79 .lut_mask = 16'hF0AA;
defparam \ShiftLeft0~79 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N2
cycloneive_lcell_comb \ShiftLeft0~59 (
// Equation(s):
// \ShiftLeft0~59_combout  = (\aluif.b[1]~input_o  & (\aluif.a[18]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[20]~input_o )))

	.dataa(gnd),
	.datab(\aluif.a[18]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[20]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~59_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~59 .lut_mask = 16'hCFC0;
defparam \ShiftLeft0~59 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N18
cycloneive_lcell_comb \ShiftLeft0~80 (
// Equation(s):
// \ShiftLeft0~80_combout  = (\aluif.b[0]~input_o  & (\ShiftLeft0~12_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftLeft0~59_combout )))

	.dataa(\ShiftLeft0~12_combout ),
	.datab(gnd),
	.datac(\aluif.b[0]~input_o ),
	.datad(\ShiftLeft0~59_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~80_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~80 .lut_mask = 16'hAFA0;
defparam \ShiftLeft0~80 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N6
cycloneive_lcell_comb \ShiftLeft0~81 (
// Equation(s):
// \ShiftLeft0~81_combout  = (\aluif.b[2]~input_o  & (\ShiftLeft0~79_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftLeft0~80_combout )))

	.dataa(\ShiftLeft0~79_combout ),
	.datab(\ShiftLeft0~80_combout ),
	.datac(gnd),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~81_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~81 .lut_mask = 16'hAACC;
defparam \ShiftLeft0~81 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N0
cycloneive_lcell_comb \ShiftLeft0~75 (
// Equation(s):
// \ShiftLeft0~75_combout  = (\aluif.b[0]~input_o  & (\aluif.a[25]~input_o )) # (!\aluif.b[0]~input_o  & ((\aluif.a[26]~input_o )))

	.dataa(gnd),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.a[25]~input_o ),
	.datad(\aluif.a[26]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~75_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~75 .lut_mask = 16'hF3C0;
defparam \ShiftLeft0~75 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N10
cycloneive_lcell_comb \Selector2~6 (
// Equation(s):
// \Selector2~6_combout  = (\aluif.b[3]~input_o ) # ((\aluif.b[1]~input_o  & !\aluif.b[2]~input_o ))

	.dataa(\aluif.b[1]~input_o ),
	.datab(gnd),
	.datac(\aluif.b[3]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector2~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~6 .lut_mask = 16'hF0FA;
defparam \Selector2~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N0
cycloneive_lcell_comb \ShiftLeft0~73 (
// Equation(s):
// \ShiftLeft0~73_combout  = (\aluif.b[0]~input_o  & ((\aluif.a[27]~input_o ))) # (!\aluif.b[0]~input_o  & (\aluif.a[28]~input_o ))

	.dataa(\aluif.a[28]~input_o ),
	.datab(\aluif.b[0]~input_o ),
	.datac(gnd),
	.datad(\aluif.a[27]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~73_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~73 .lut_mask = 16'hEE22;
defparam \ShiftLeft0~73 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N18
cycloneive_lcell_comb \ShiftLeft0~56 (
// Equation(s):
// \ShiftLeft0~56_combout  = (\aluif.b[1]~input_o  & (\aluif.a[22]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[24]~input_o )))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[22]~input_o ),
	.datac(\aluif.a[24]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~56_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~56 .lut_mask = 16'hD8D8;
defparam \ShiftLeft0~56 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N14
cycloneive_lcell_comb \ShiftLeft0~94 (
// Equation(s):
// \ShiftLeft0~94_combout  = (\aluif.b[0]~input_o  & ((\ShiftLeft0~15_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftLeft0~56_combout ))

	.dataa(gnd),
	.datab(\ShiftLeft0~56_combout ),
	.datac(\ShiftLeft0~15_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~94_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~94 .lut_mask = 16'hF0CC;
defparam \ShiftLeft0~94 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N18
cycloneive_lcell_comb \Selector3~5 (
// Equation(s):
// \Selector3~5_combout  = (\Selector2~6_combout  & (((!\ShiftLeft0~33_combout )))) # (!\Selector2~6_combout  & ((\ShiftLeft0~33_combout  & (\ShiftLeft0~73_combout )) # (!\ShiftLeft0~33_combout  & ((\ShiftLeft0~94_combout )))))

	.dataa(\ShiftLeft0~73_combout ),
	.datab(\ShiftLeft0~94_combout ),
	.datac(\Selector2~6_combout ),
	.datad(\ShiftLeft0~33_combout ),
	.cin(gnd),
	.combout(\Selector3~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~5 .lut_mask = 16'h0AFC;
defparam \Selector3~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N28
cycloneive_lcell_comb \Selector3~6 (
// Equation(s):
// \Selector3~6_combout  = (\Selector2~6_combout  & ((\Selector3~5_combout  & (\ShiftLeft0~81_combout )) # (!\Selector3~5_combout  & ((\ShiftLeft0~75_combout ))))) # (!\Selector2~6_combout  & (((\Selector3~5_combout ))))

	.dataa(\ShiftLeft0~81_combout ),
	.datab(\ShiftLeft0~75_combout ),
	.datac(\Selector2~6_combout ),
	.datad(\Selector3~5_combout ),
	.cin(gnd),
	.combout(\Selector3~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~6 .lut_mask = 16'hAFC0;
defparam \Selector3~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N24
cycloneive_lcell_comb \Add0~56 (
// Equation(s):
// \Add0~56_combout  = ((\aluif.a[28]~input_o  $ (\aluif.b[28]~input_o  $ (!\Add0~55 )))) # (GND)
// \Add0~57  = CARRY((\aluif.a[28]~input_o  & ((\aluif.b[28]~input_o ) # (!\Add0~55 ))) # (!\aluif.a[28]~input_o  & (\aluif.b[28]~input_o  & !\Add0~55 )))

	.dataa(\aluif.a[28]~input_o ),
	.datab(\aluif.b[28]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~55 ),
	.combout(\Add0~56_combout ),
	.cout(\Add0~57 ));
// synopsys translate_off
defparam \Add0~56 .lut_mask = 16'h698E;
defparam \Add0~56 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N30
cycloneive_lcell_comb \Selector3~7 (
// Equation(s):
// \Selector3~7_combout  = (\Selector30~7_combout  & ((\Selector3~6_combout ) # ((\Add0~56_combout  & \Selector0~6_combout )))) # (!\Selector30~7_combout  & (((\Add0~56_combout  & \Selector0~6_combout ))))

	.dataa(\Selector30~7_combout ),
	.datab(\Selector3~6_combout ),
	.datac(\Add0~56_combout ),
	.datad(\Selector0~6_combout ),
	.cin(gnd),
	.combout(\Selector3~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~7 .lut_mask = 16'hF888;
defparam \Selector3~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N16
cycloneive_lcell_comb \Selector3~4 (
// Equation(s):
// \Selector3~4_combout  = (\Selector0~7_combout  & (\aluif.a[28]~input_o  $ (\aluif.b[28]~input_o )))

	.dataa(gnd),
	.datab(\Selector0~7_combout ),
	.datac(\aluif.a[28]~input_o ),
	.datad(\aluif.b[28]~input_o ),
	.cin(gnd),
	.combout(\Selector3~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~4 .lut_mask = 16'h0CC0;
defparam \Selector3~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N24
cycloneive_lcell_comb \Add1~56 (
// Equation(s):
// \Add1~56_combout  = ((\aluif.a[28]~input_o  $ (\aluif.b[28]~input_o  $ (\Add1~55 )))) # (GND)
// \Add1~57  = CARRY((\aluif.a[28]~input_o  & ((!\Add1~55 ) # (!\aluif.b[28]~input_o ))) # (!\aluif.a[28]~input_o  & (!\aluif.b[28]~input_o  & !\Add1~55 )))

	.dataa(\aluif.a[28]~input_o ),
	.datab(\aluif.b[28]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~55 ),
	.combout(\Add1~56_combout ),
	.cout(\Add1~57 ));
// synopsys translate_off
defparam \Add1~56 .lut_mask = 16'h962B;
defparam \Add1~56 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N8
cycloneive_lcell_comb \Selector3~8 (
// Equation(s):
// \Selector3~8_combout  = (\Selector3~7_combout ) # ((\Selector3~4_combout ) # ((\Add1~56_combout  & \Selector0~19_combout )))

	.dataa(\Selector3~7_combout ),
	.datab(\Selector3~4_combout ),
	.datac(\Add1~56_combout ),
	.datad(\Selector0~19_combout ),
	.cin(gnd),
	.combout(\Selector3~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~8 .lut_mask = 16'hFEEE;
defparam \Selector3~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N22
cycloneive_lcell_comb \ShiftLeft0~37 (
// Equation(s):
// \ShiftLeft0~37_combout  = (\aluif.b[1]~input_o  & (\aluif.a[6]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[8]~input_o )))

	.dataa(gnd),
	.datab(\aluif.a[6]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[8]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~37_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~37 .lut_mask = 16'hCFC0;
defparam \ShiftLeft0~37 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N14
cycloneive_lcell_comb \ShiftLeft0~82 (
// Equation(s):
// \ShiftLeft0~82_combout  = (\aluif.b[0]~input_o  & ((\ShiftLeft0~28_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftLeft0~37_combout ))

	.dataa(\ShiftLeft0~37_combout ),
	.datab(gnd),
	.datac(\aluif.b[0]~input_o ),
	.datad(\ShiftLeft0~28_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~82_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~82 .lut_mask = 16'hFA0A;
defparam \ShiftLeft0~82 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N28
cycloneive_lcell_comb \ShiftLeft0~40 (
// Equation(s):
// \ShiftLeft0~40_combout  = (\aluif.b[1]~input_o  & (\aluif.a[10]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[12]~input_o )))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[10]~input_o ),
	.datac(\aluif.a[12]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~40_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~40 .lut_mask = 16'hD8D8;
defparam \ShiftLeft0~40 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N6
cycloneive_lcell_comb \ShiftLeft0~83 (
// Equation(s):
// \ShiftLeft0~83_combout  = (\aluif.b[0]~input_o  & (\ShiftLeft0~18_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftLeft0~40_combout )))

	.dataa(gnd),
	.datab(\ShiftLeft0~18_combout ),
	.datac(\ShiftLeft0~40_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~83_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~83 .lut_mask = 16'hCCF0;
defparam \ShiftLeft0~83 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N22
cycloneive_lcell_comb \Selector11~10 (
// Equation(s):
// \Selector11~10_combout  = (\aluif.b[2]~input_o  & (\ShiftLeft0~82_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftLeft0~83_combout )))

	.dataa(gnd),
	.datab(\ShiftLeft0~82_combout ),
	.datac(\ShiftLeft0~83_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector11~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~10 .lut_mask = 16'hCCF0;
defparam \Selector11~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y14_N16
cycloneive_lcell_comb \ShiftLeft0~51 (
// Equation(s):
// \ShiftLeft0~51_combout  = (\aluif.b[0]~input_o  & ((\aluif.b[1]~input_o  & ((\aluif.a[1]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[3]~input_o ))))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[3]~input_o ),
	.datac(\aluif.b[0]~input_o ),
	.datad(\aluif.a[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~51_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~51 .lut_mask = 16'hE040;
defparam \ShiftLeft0~51 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y14_N22
cycloneive_lcell_comb \ShiftLeft0~34 (
// Equation(s):
// \ShiftLeft0~34_combout  = (\aluif.b[1]~input_o  & (\aluif.a[2]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[4]~input_o )))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[2]~input_o ),
	.datac(gnd),
	.datad(\aluif.a[4]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~34_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~34 .lut_mask = 16'hDD88;
defparam \ShiftLeft0~34 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y14_N18
cycloneive_lcell_comb \ShiftLeft0~52 (
// Equation(s):
// \ShiftLeft0~52_combout  = (\ShiftLeft0~51_combout ) # ((!\aluif.b[0]~input_o  & \ShiftLeft0~34_combout ))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\ShiftLeft0~51_combout ),
	.datac(\ShiftLeft0~34_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~52_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~52 .lut_mask = 16'hDCDC;
defparam \ShiftLeft0~52 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N4
cycloneive_lcell_comb \ShiftLeft0~53 (
// Equation(s):
// \ShiftLeft0~53_combout  = (\aluif.b[2]~input_o  & (((\ShiftLeft0~47_combout  & \aluif.a[0]~input_o )))) # (!\aluif.b[2]~input_o  & (\ShiftLeft0~52_combout ))

	.dataa(\ShiftLeft0~52_combout ),
	.datab(\ShiftLeft0~47_combout ),
	.datac(\aluif.a[0]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~53_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~53 .lut_mask = 16'hC0AA;
defparam \ShiftLeft0~53 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N24
cycloneive_lcell_comb \ShiftLeft0~93 (
// Equation(s):
// \ShiftLeft0~93_combout  = (\aluif.b[3]~input_o  & ((\ShiftLeft0~53_combout ))) # (!\aluif.b[3]~input_o  & (\Selector11~10_combout ))

	.dataa(\Selector11~10_combout ),
	.datab(\ShiftLeft0~53_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~93_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~93 .lut_mask = 16'hCACA;
defparam \ShiftLeft0~93 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N4
cycloneive_lcell_comb \Selector3~9 (
// Equation(s):
// \Selector3~9_combout  = (\Selector3~3_combout ) # ((\Selector3~8_combout ) # ((\Selector10~16_combout  & \ShiftLeft0~93_combout )))

	.dataa(\Selector3~3_combout ),
	.datab(\Selector10~16_combout ),
	.datac(\Selector3~8_combout ),
	.datad(\ShiftLeft0~93_combout ),
	.cin(gnd),
	.combout(\Selector3~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~9 .lut_mask = 16'hFEFA;
defparam \Selector3~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N16
cycloneive_lcell_comb \Selector5~4 (
// Equation(s):
// \Selector5~4_combout  = (\Add0~52_combout  & ((\Selector0~6_combout ) # ((\Add1~52_combout  & \Selector0~19_combout )))) # (!\Add0~52_combout  & (((\Add1~52_combout  & \Selector0~19_combout ))))

	.dataa(\Add0~52_combout ),
	.datab(\Selector0~6_combout ),
	.datac(\Add1~52_combout ),
	.datad(\Selector0~19_combout ),
	.cin(gnd),
	.combout(\Selector5~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~4 .lut_mask = 16'hF888;
defparam \Selector5~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N2
cycloneive_lcell_comb \Selector5~5 (
// Equation(s):
// \Selector5~5_combout  = (\Selector5~4_combout ) # ((\Selector10~4_combout  & \aluif.a[31]~input_o ))

	.dataa(gnd),
	.datab(\Selector5~4_combout ),
	.datac(\Selector10~4_combout ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\Selector5~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~5 .lut_mask = 16'hFCCC;
defparam \Selector5~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N24
cycloneive_lcell_comb \Selector5~6 (
// Equation(s):
// \Selector5~6_combout  = (\Selector0~20_combout  & (((\aluif.b[26]~input_o ) # (\aluif.a[26]~input_o )))) # (!\Selector0~20_combout  & (\Selector0~21_combout  & (\aluif.b[26]~input_o  & \aluif.a[26]~input_o )))

	.dataa(\Selector0~21_combout ),
	.datab(\Selector0~20_combout ),
	.datac(\aluif.b[26]~input_o ),
	.datad(\aluif.a[26]~input_o ),
	.cin(gnd),
	.combout(\Selector5~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~6 .lut_mask = 16'hECC0;
defparam \Selector5~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N2
cycloneive_lcell_comb \Selector5~7 (
// Equation(s):
// \Selector5~7_combout  = (\Selector5~6_combout ) # ((\Selector0~7_combout  & (\aluif.b[26]~input_o  $ (\aluif.a[26]~input_o ))))

	.dataa(\aluif.b[26]~input_o ),
	.datab(\Selector0~7_combout ),
	.datac(\aluif.a[26]~input_o ),
	.datad(\Selector5~6_combout ),
	.cin(gnd),
	.combout(\Selector5~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~7 .lut_mask = 16'hFF48;
defparam \Selector5~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N24
cycloneive_lcell_comb \ShiftRight1~18 (
// Equation(s):
// \ShiftRight1~18_combout  = (\aluif.b[1]~input_o  & (\aluif.a[28]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[26]~input_o )))

	.dataa(\aluif.a[28]~input_o ),
	.datab(\aluif.b[1]~input_o ),
	.datac(\aluif.a[26]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight1~18_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~18 .lut_mask = 16'hB8B8;
defparam \ShiftRight1~18 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N30
cycloneive_lcell_comb \ShiftRight1~47 (
// Equation(s):
// \ShiftRight1~47_combout  = (\aluif.b[0]~input_o  & ((\aluif.b[1]~input_o  & ((\aluif.a[29]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[27]~input_o ))))

	.dataa(\aluif.a[27]~input_o ),
	.datab(\aluif.b[1]~input_o ),
	.datac(\aluif.a[29]~input_o ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~47_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~47 .lut_mask = 16'hE200;
defparam \ShiftRight1~47 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N8
cycloneive_lcell_comb \ShiftRight1~48 (
// Equation(s):
// \ShiftRight1~48_combout  = (\ShiftRight1~47_combout ) # ((\ShiftRight1~18_combout  & !\aluif.b[0]~input_o ))

	.dataa(gnd),
	.datab(\ShiftRight1~18_combout ),
	.datac(\ShiftRight1~47_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~48_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~48 .lut_mask = 16'hF0FC;
defparam \ShiftRight1~48 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N6
cycloneive_lcell_comb \ShiftRight0~25 (
// Equation(s):
// \ShiftRight0~25_combout  = (\aluif.b[2]~input_o  & (((\ShiftRight1~2_combout  & !\aluif.b[1]~input_o )))) # (!\aluif.b[2]~input_o  & (\ShiftRight1~48_combout ))

	.dataa(\ShiftRight1~48_combout ),
	.datab(\ShiftRight1~2_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\aluif.b[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~25_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~25 .lut_mask = 16'h0ACA;
defparam \ShiftRight0~25 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N10
cycloneive_lcell_comb \Selector5~8 (
// Equation(s):
// \Selector5~8_combout  = (\Selector5~5_combout ) # ((\Selector5~7_combout ) # ((\Selector6~2_combout  & \ShiftRight0~25_combout )))

	.dataa(\Selector6~2_combout ),
	.datab(\Selector5~5_combout ),
	.datac(\Selector5~7_combout ),
	.datad(\ShiftRight0~25_combout ),
	.cin(gnd),
	.combout(\Selector5~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~8 .lut_mask = 16'hFEFC;
defparam \Selector5~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N8
cycloneive_lcell_comb \ShiftLeft0~38 (
// Equation(s):
// \ShiftLeft0~38_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[7]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[9]~input_o ))

	.dataa(\aluif.b[1]~input_o ),
	.datab(gnd),
	.datac(\aluif.a[9]~input_o ),
	.datad(\aluif.a[7]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~38_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~38 .lut_mask = 16'hFA50;
defparam \ShiftLeft0~38 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N12
cycloneive_lcell_comb \ShiftLeft0~62 (
// Equation(s):
// \ShiftLeft0~62_combout  = (\aluif.b[0]~input_o  & (\ShiftLeft0~38_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftLeft0~17_combout )))

	.dataa(gnd),
	.datab(\ShiftLeft0~38_combout ),
	.datac(\aluif.b[0]~input_o ),
	.datad(\ShiftLeft0~17_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~62_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~62 .lut_mask = 16'hCFC0;
defparam \ShiftLeft0~62 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y14_N0
cycloneive_lcell_comb \ShiftLeft0~35 (
// Equation(s):
// \ShiftLeft0~35_combout  = (\aluif.b[1]~input_o  & (\aluif.a[3]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[5]~input_o )))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[3]~input_o ),
	.datac(\aluif.a[5]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~35_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~35 .lut_mask = 16'hD8D8;
defparam \ShiftLeft0~35 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y14_N28
cycloneive_lcell_comb \ShiftLeft0~67 (
// Equation(s):
// \ShiftLeft0~67_combout  = (\aluif.b[0]~input_o  & (\ShiftLeft0~35_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftLeft0~27_combout )))

	.dataa(gnd),
	.datab(\ShiftLeft0~35_combout ),
	.datac(\aluif.b[0]~input_o ),
	.datad(\ShiftLeft0~27_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~67_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~67 .lut_mask = 16'hCFC0;
defparam \ShiftLeft0~67 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N30
cycloneive_lcell_comb \ShiftLeft0~85 (
// Equation(s):
// \ShiftLeft0~85_combout  = (!\aluif.b[3]~input_o  & ((\aluif.b[2]~input_o  & ((\ShiftLeft0~67_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftLeft0~62_combout ))))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\ShiftLeft0~62_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\ShiftLeft0~67_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~85_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~85 .lut_mask = 16'h5404;
defparam \ShiftLeft0~85 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N28
cycloneive_lcell_comb \ShiftLeft0~65 (
// Equation(s):
// \ShiftLeft0~65_combout  = (!\aluif.b[0]~input_o  & ((\aluif.b[1]~input_o  & ((\aluif.a[0]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[2]~input_o ))))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[2]~input_o ),
	.datac(\aluif.a[0]~input_o ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~65_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~65 .lut_mask = 16'h00E4;
defparam \ShiftLeft0~65 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N30
cycloneive_lcell_comb \ShiftLeft0~66 (
// Equation(s):
// \ShiftLeft0~66_combout  = (\ShiftLeft0~65_combout ) # ((!\aluif.b[1]~input_o  & (\aluif.a[1]~input_o  & \aluif.b[0]~input_o )))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\ShiftLeft0~65_combout ),
	.datac(\aluif.a[1]~input_o ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~66_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~66 .lut_mask = 16'hDCCC;
defparam \ShiftLeft0~66 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N14
cycloneive_lcell_comb \ShiftLeft0~95 (
// Equation(s):
// \ShiftLeft0~95_combout  = (\ShiftLeft0~85_combout ) # ((\ShiftLeft0~66_combout  & (!\aluif.b[2]~input_o  & \aluif.b[3]~input_o )))

	.dataa(\ShiftLeft0~85_combout ),
	.datab(\ShiftLeft0~66_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~95_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~95 .lut_mask = 16'hAEAA;
defparam \ShiftLeft0~95 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N12
cycloneive_lcell_comb \ShiftLeft0~44 (
// Equation(s):
// \ShiftLeft0~44_combout  = (\aluif.b[1]~input_o  & (\aluif.a[15]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[17]~input_o )))

	.dataa(gnd),
	.datab(\aluif.a[15]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[17]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~44_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~44 .lut_mask = 16'hCFC0;
defparam \ShiftLeft0~44 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N10
cycloneive_lcell_comb \ShiftLeft0~70 (
// Equation(s):
// \ShiftLeft0~70_combout  = (\aluif.b[0]~input_o  & (\ShiftLeft0~44_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftLeft0~11_combout )))

	.dataa(\ShiftLeft0~44_combout ),
	.datab(gnd),
	.datac(\aluif.b[0]~input_o ),
	.datad(\ShiftLeft0~11_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~70_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~70 .lut_mask = 16'hAFA0;
defparam \ShiftLeft0~70 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N30
cycloneive_lcell_comb \ShiftLeft0~41 (
// Equation(s):
// \ShiftLeft0~41_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[11]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[13]~input_o ))

	.dataa(gnd),
	.datab(\aluif.a[13]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[11]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~41_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~41 .lut_mask = 16'hFC0C;
defparam \ShiftLeft0~41 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N18
cycloneive_lcell_comb \ShiftLeft0~63 (
// Equation(s):
// \ShiftLeft0~63_combout  = (\aluif.b[0]~input_o  & ((\ShiftLeft0~41_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftLeft0~20_combout ))

	.dataa(gnd),
	.datab(\ShiftLeft0~20_combout ),
	.datac(\ShiftLeft0~41_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~63_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~63 .lut_mask = 16'hF0CC;
defparam \ShiftLeft0~63 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N22
cycloneive_lcell_comb \ShiftLeft0~90 (
// Equation(s):
// \ShiftLeft0~90_combout  = (\aluif.b[2]~input_o  & ((\ShiftLeft0~63_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftLeft0~70_combout ))

	.dataa(\ShiftLeft0~70_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~63_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~90_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~90 .lut_mask = 16'hF0AA;
defparam \ShiftLeft0~90 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N12
cycloneive_lcell_comb \ShiftLeft0~74 (
// Equation(s):
// \ShiftLeft0~74_combout  = (\aluif.b[1]~input_o  & ((\aluif.b[0]~input_o  & ((\aluif.a[23]~input_o ))) # (!\aluif.b[0]~input_o  & (\aluif.a[24]~input_o ))))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.a[24]~input_o ),
	.datad(\aluif.a[23]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~74_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~74 .lut_mask = 16'hA820;
defparam \ShiftLeft0~74 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N26
cycloneive_lcell_comb \ShiftLeft0~76 (
// Equation(s):
// \ShiftLeft0~76_combout  = (\ShiftLeft0~74_combout ) # ((\ShiftLeft0~75_combout  & !\aluif.b[1]~input_o ))

	.dataa(\ShiftLeft0~74_combout ),
	.datab(\ShiftLeft0~75_combout ),
	.datac(\aluif.b[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~76_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~76 .lut_mask = 16'hAEAE;
defparam \ShiftLeft0~76 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N14
cycloneive_lcell_comb \Selector5~2 (
// Equation(s):
// \Selector5~2_combout  = (\Selector7~4_combout  & (((\Selector7~3_combout )))) # (!\Selector7~4_combout  & ((\Selector7~3_combout  & (\ShiftLeft0~90_combout )) # (!\Selector7~3_combout  & ((\ShiftLeft0~76_combout )))))

	.dataa(\Selector7~4_combout ),
	.datab(\ShiftLeft0~90_combout ),
	.datac(\ShiftLeft0~76_combout ),
	.datad(\Selector7~3_combout ),
	.cin(gnd),
	.combout(\Selector5~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~2 .lut_mask = 16'hEE50;
defparam \Selector5~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N24
cycloneive_lcell_comb \ShiftLeft0~71 (
// Equation(s):
// \ShiftLeft0~71_combout  = (\aluif.b[1]~input_o  & (\aluif.a[19]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[21]~input_o )))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[19]~input_o ),
	.datac(\aluif.a[21]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~71_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~71 .lut_mask = 16'hD8D8;
defparam \ShiftLeft0~71 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N2
cycloneive_lcell_comb \ShiftLeft0~72 (
// Equation(s):
// \ShiftLeft0~72_combout  = (\aluif.b[0]~input_o  & (\ShiftLeft0~71_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftLeft0~14_combout )))

	.dataa(gnd),
	.datab(\ShiftLeft0~71_combout ),
	.datac(\ShiftLeft0~14_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~72_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~72 .lut_mask = 16'hCCF0;
defparam \ShiftLeft0~72 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N16
cycloneive_lcell_comb \Selector5~3 (
// Equation(s):
// \Selector5~3_combout  = (\Selector5~2_combout  & ((\ShiftLeft0~95_combout ) # ((!\Selector7~4_combout )))) # (!\Selector5~2_combout  & (((\Selector7~4_combout  & \ShiftLeft0~72_combout ))))

	.dataa(\ShiftLeft0~95_combout ),
	.datab(\Selector5~2_combout ),
	.datac(\Selector7~4_combout ),
	.datad(\ShiftLeft0~72_combout ),
	.cin(gnd),
	.combout(\Selector5~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~3 .lut_mask = 16'hBC8C;
defparam \Selector5~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N16
cycloneive_lcell_comb \ShiftRight1~51 (
// Equation(s):
// \ShiftRight1~51_combout  = (\aluif.b[1]~input_o  & (((\aluif.a[31]~input_o )))) # (!\aluif.b[1]~input_o  & ((\aluif.b[0]~input_o  & ((\aluif.a[31]~input_o ))) # (!\aluif.b[0]~input_o  & (\aluif.a[30]~input_o ))))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.a[30]~input_o ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~51_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~51 .lut_mask = 16'hFE10;
defparam \ShiftRight1~51 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N18
cycloneive_lcell_comb \ShiftRight1~52 (
// Equation(s):
// \ShiftRight1~52_combout  = (\aluif.b[2]~input_o  & ((\ShiftRight1~51_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftRight1~48_combout ))

	.dataa(\ShiftRight1~48_combout ),
	.datab(\ShiftRight1~51_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight1~52_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~52 .lut_mask = 16'hCACA;
defparam \ShiftRight1~52 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N30
cycloneive_lcell_comb \Selector5~10 (
// Equation(s):
// \Selector5~10_combout  = (\Selector10~3_combout  & ((\aluif.b[3]~input_o  & (\aluif.a[31]~input_o )) # (!\aluif.b[3]~input_o  & ((\ShiftRight1~52_combout )))))

	.dataa(\aluif.a[31]~input_o ),
	.datab(\ShiftRight1~52_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\Selector10~3_combout ),
	.cin(gnd),
	.combout(\Selector5~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~10 .lut_mask = 16'hAC00;
defparam \Selector5~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N20
cycloneive_lcell_comb \Selector5~9 (
// Equation(s):
// \Selector5~9_combout  = (\Selector5~8_combout ) # ((\Selector5~10_combout ) # ((\Selector5~3_combout  & \Selector0~4_combout )))

	.dataa(\Selector5~8_combout ),
	.datab(\Selector5~3_combout ),
	.datac(\Selector5~10_combout ),
	.datad(\Selector0~4_combout ),
	.cin(gnd),
	.combout(\Selector5~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~9 .lut_mask = 16'hFEFA;
defparam \Selector5~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N28
cycloneive_lcell_comb \Selector23~1 (
// Equation(s):
// \Selector23~1_combout  = (\aluif.opcode[0]~input_o  & (!\aluif.opcode[1]~input_o  & (\Selector23~0_combout  & \aluif.b[4]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\Selector23~0_combout ),
	.datad(\aluif.b[4]~input_o ),
	.cin(gnd),
	.combout(\Selector23~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~1 .lut_mask = 16'h2000;
defparam \Selector23~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N22
cycloneive_lcell_comb \Selector28~0 (
// Equation(s):
// \Selector28~0_combout  = (\Selector0~20_combout ) # ((\aluif.a[3]~input_o  & \Selector0~21_combout ))

	.dataa(\aluif.a[3]~input_o ),
	.datab(\Selector0~21_combout ),
	.datac(gnd),
	.datad(\Selector0~20_combout ),
	.cin(gnd),
	.combout(\Selector28~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~0 .lut_mask = 16'hFF88;
defparam \Selector28~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N0
cycloneive_lcell_comb \Selector28~1 (
// Equation(s):
// \Selector28~1_combout  = (\aluif.b[3]~input_o  & ((\Selector28~0_combout ) # ((\ShiftRight0~23_combout  & \Selector23~1_combout ))))

	.dataa(\ShiftRight0~23_combout ),
	.datab(\aluif.b[3]~input_o ),
	.datac(\Selector23~1_combout ),
	.datad(\Selector28~0_combout ),
	.cin(gnd),
	.combout(\Selector28~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~1 .lut_mask = 16'hCC80;
defparam \Selector28~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N8
cycloneive_lcell_comb \out~12 (
// Equation(s):
// \out~12_combout  = \aluif.b[3]~input_o  $ (\aluif.a[3]~input_o )

	.dataa(\aluif.b[3]~input_o ),
	.datab(gnd),
	.datac(\aluif.a[3]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\out~12_combout ),
	.cout());
// synopsys translate_off
defparam \out~12 .lut_mask = 16'h5A5A;
defparam \out~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N10
cycloneive_lcell_comb \Selector28~2 (
// Equation(s):
// \Selector28~2_combout  = (\Selector0~19_combout  & ((\Add1~6_combout ) # ((\out~12_combout  & \Selector0~7_combout )))) # (!\Selector0~19_combout  & (\out~12_combout  & ((\Selector0~7_combout ))))

	.dataa(\Selector0~19_combout ),
	.datab(\out~12_combout ),
	.datac(\Add1~6_combout ),
	.datad(\Selector0~7_combout ),
	.cin(gnd),
	.combout(\Selector28~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~2 .lut_mask = 16'hECA0;
defparam \Selector28~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N30
cycloneive_lcell_comb \Selector28~4 (
// Equation(s):
// \Selector28~4_combout  = (\Selector0~20_combout  & ((\aluif.a[3]~input_o ) # ((\Add0~6_combout  & \Selector0~6_combout )))) # (!\Selector0~20_combout  & (\Add0~6_combout  & ((\Selector0~6_combout ))))

	.dataa(\Selector0~20_combout ),
	.datab(\Add0~6_combout ),
	.datac(\aluif.a[3]~input_o ),
	.datad(\Selector0~6_combout ),
	.cin(gnd),
	.combout(\Selector28~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~4 .lut_mask = 16'hECA0;
defparam \Selector28~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N10
cycloneive_lcell_comb \ShiftRight1~59 (
// Equation(s):
// \ShiftRight1~59_combout  = (\aluif.b[1]~input_o  & (\aluif.a[9]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[7]~input_o )))

	.dataa(\aluif.b[1]~input_o ),
	.datab(gnd),
	.datac(\aluif.a[9]~input_o ),
	.datad(\aluif.a[7]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~59_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~59 .lut_mask = 16'hF5A0;
defparam \ShiftRight1~59 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N16
cycloneive_lcell_comb \ShiftRight1~5 (
// Equation(s):
// \ShiftRight1~5_combout  = (\aluif.b[1]~input_o  & (\aluif.a[10]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[8]~input_o )))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[10]~input_o ),
	.datac(gnd),
	.datad(\aluif.a[8]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~5_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~5 .lut_mask = 16'hDD88;
defparam \ShiftRight1~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N6
cycloneive_lcell_comb \ShiftRight1~63 (
// Equation(s):
// \ShiftRight1~63_combout  = (\aluif.b[0]~input_o  & ((\ShiftRight1~5_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftRight1~59_combout ))

	.dataa(\ShiftRight1~59_combout ),
	.datab(gnd),
	.datac(\aluif.b[0]~input_o ),
	.datad(\ShiftRight1~5_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~63_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~63 .lut_mask = 16'hFA0A;
defparam \ShiftRight1~63 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y14_N20
cycloneive_lcell_comb \ShiftRight1~13 (
// Equation(s):
// \ShiftRight1~13_combout  = (\aluif.b[0]~input_o  & ((\aluif.a[4]~input_o ))) # (!\aluif.b[0]~input_o  & (\aluif.a[3]~input_o ))

	.dataa(gnd),
	.datab(\aluif.a[3]~input_o ),
	.datac(\aluif.b[0]~input_o ),
	.datad(\aluif.a[4]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~13_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~13 .lut_mask = 16'hFC0C;
defparam \ShiftRight1~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N16
cycloneive_lcell_comb \Selector28~5 (
// Equation(s):
// \Selector28~5_combout  = (\Selector2~6_combout  & (((!\ShiftLeft0~33_combout )))) # (!\Selector2~6_combout  & ((\ShiftLeft0~33_combout  & ((\ShiftRight1~13_combout ))) # (!\ShiftLeft0~33_combout  & (\ShiftRight1~63_combout ))))

	.dataa(\Selector2~6_combout ),
	.datab(\ShiftRight1~63_combout ),
	.datac(\ShiftRight1~13_combout ),
	.datad(\ShiftLeft0~33_combout ),
	.cin(gnd),
	.combout(\Selector28~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~5 .lut_mask = 16'h50EE;
defparam \Selector28~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y14_N6
cycloneive_lcell_comb \ShiftRight1~35 (
// Equation(s):
// \ShiftRight1~35_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[13]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[11]~input_o ))

	.dataa(\aluif.a[11]~input_o ),
	.datab(\aluif.a[13]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight1~35_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~35 .lut_mask = 16'hCACA;
defparam \ShiftRight1~35 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N26
cycloneive_lcell_comb \ShiftRight1~4 (
// Equation(s):
// \ShiftRight1~4_combout  = (\aluif.b[1]~input_o  & (\aluif.a[14]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[12]~input_o )))

	.dataa(\aluif.a[14]~input_o ),
	.datab(\aluif.a[12]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight1~4_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~4 .lut_mask = 16'hACAC;
defparam \ShiftRight1~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N4
cycloneive_lcell_comb \ShiftRight1~36 (
// Equation(s):
// \ShiftRight1~36_combout  = (!\aluif.b[2]~input_o  & ((\aluif.b[0]~input_o  & ((\ShiftRight1~4_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftRight1~35_combout ))))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\ShiftRight1~35_combout ),
	.datac(\ShiftRight1~4_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~36_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~36 .lut_mask = 16'h00E4;
defparam \ShiftRight1~36 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N10
cycloneive_lcell_comb \ShiftRight1~1 (
// Equation(s):
// \ShiftRight1~1_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[18]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[16]~input_o ))

	.dataa(gnd),
	.datab(\aluif.a[16]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[18]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~1_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~1 .lut_mask = 16'hFC0C;
defparam \ShiftRight1~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N30
cycloneive_lcell_comb \ShiftRight1~37 (
// Equation(s):
// \ShiftRight1~37_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[17]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[15]~input_o ))

	.dataa(gnd),
	.datab(\aluif.a[15]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[17]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~37_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~37 .lut_mask = 16'hFC0C;
defparam \ShiftRight1~37 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N24
cycloneive_lcell_comb \ShiftRight1~38 (
// Equation(s):
// \ShiftRight1~38_combout  = (\aluif.b[0]~input_o  & (\ShiftRight1~1_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftRight1~37_combout )))

	.dataa(\ShiftRight1~1_combout ),
	.datab(gnd),
	.datac(\ShiftRight1~37_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~38_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~38 .lut_mask = 16'hAAF0;
defparam \ShiftRight1~38 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N14
cycloneive_lcell_comb \ShiftRight1~39 (
// Equation(s):
// \ShiftRight1~39_combout  = (\ShiftRight1~36_combout ) # ((\ShiftRight1~38_combout  & \aluif.b[2]~input_o ))

	.dataa(gnd),
	.datab(\ShiftRight1~36_combout ),
	.datac(\ShiftRight1~38_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~39_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~39 .lut_mask = 16'hFCCC;
defparam \ShiftRight1~39 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N18
cycloneive_lcell_comb \ShiftRight1~11 (
// Equation(s):
// \ShiftRight1~11_combout  = (\aluif.b[0]~input_o  & (\aluif.a[6]~input_o )) # (!\aluif.b[0]~input_o  & ((\aluif.a[5]~input_o )))

	.dataa(gnd),
	.datab(\aluif.a[6]~input_o ),
	.datac(\aluif.b[0]~input_o ),
	.datad(\aluif.a[5]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~11_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~11 .lut_mask = 16'hCFC0;
defparam \ShiftRight1~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N18
cycloneive_lcell_comb \Selector28~6 (
// Equation(s):
// \Selector28~6_combout  = (\Selector2~6_combout  & ((\Selector28~5_combout  & (\ShiftRight1~39_combout )) # (!\Selector28~5_combout  & ((\ShiftRight1~11_combout ))))) # (!\Selector2~6_combout  & (\Selector28~5_combout ))

	.dataa(\Selector2~6_combout ),
	.datab(\Selector28~5_combout ),
	.datac(\ShiftRight1~39_combout ),
	.datad(\ShiftRight1~11_combout ),
	.cin(gnd),
	.combout(\Selector28~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~6 .lut_mask = 16'hE6C4;
defparam \Selector28~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N28
cycloneive_lcell_comb \Selector23~2 (
// Equation(s):
// \Selector23~2_combout  = (!\aluif.b[4]~input_o  & (!\aluif.opcode[2]~input_o  & (\aluif.opcode[0]~input_o  $ (\aluif.opcode[1]~input_o ))))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.b[4]~input_o ),
	.datac(\aluif.opcode[1]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector23~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~2 .lut_mask = 16'h0012;
defparam \Selector23~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N0
cycloneive_lcell_comb \Selector29~1 (
// Equation(s):
// \Selector29~1_combout  = (\Selector23~2_combout  & !\aluif.opcode[3]~input_o )

	.dataa(gnd),
	.datab(\Selector23~2_combout ),
	.datac(gnd),
	.datad(\aluif.opcode[3]~input_o ),
	.cin(gnd),
	.combout(\Selector29~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~1 .lut_mask = 16'h00CC;
defparam \Selector29~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N12
cycloneive_lcell_comb \Selector28~3 (
// Equation(s):
// \Selector28~3_combout  = (\ShiftLeft0~33_combout  & (!\aluif.b[4]~input_o  & (\ShiftLeft0~26_combout  & \Selector0~4_combout )))

	.dataa(\ShiftLeft0~33_combout ),
	.datab(\aluif.b[4]~input_o ),
	.datac(\ShiftLeft0~26_combout ),
	.datad(\Selector0~4_combout ),
	.cin(gnd),
	.combout(\Selector28~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~3 .lut_mask = 16'h2000;
defparam \Selector28~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N20
cycloneive_lcell_comb \Selector28~7 (
// Equation(s):
// \Selector28~7_combout  = (\Selector28~4_combout ) # ((\Selector28~3_combout ) # ((\Selector28~6_combout  & \Selector29~1_combout )))

	.dataa(\Selector28~4_combout ),
	.datab(\Selector28~6_combout ),
	.datac(\Selector29~1_combout ),
	.datad(\Selector28~3_combout ),
	.cin(gnd),
	.combout(\Selector28~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~7 .lut_mask = 16'hFFEA;
defparam \Selector28~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N20
cycloneive_lcell_comb \ShiftRight1~3 (
// Equation(s):
// \ShiftRight1~3_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[26]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[24]~input_o ))

	.dataa(\aluif.a[24]~input_o ),
	.datab(\aluif.b[1]~input_o ),
	.datac(\aluif.a[26]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight1~3_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~3 .lut_mask = 16'hE2E2;
defparam \ShiftRight1~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N0
cycloneive_lcell_comb \ShiftRight1~30 (
// Equation(s):
// \ShiftRight1~30_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[25]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[23]~input_o ))

	.dataa(gnd),
	.datab(\aluif.b[1]~input_o ),
	.datac(\aluif.a[23]~input_o ),
	.datad(\aluif.a[25]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~30_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~30 .lut_mask = 16'hFC30;
defparam \ShiftRight1~30 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N26
cycloneive_lcell_comb \ShiftRight1~31 (
// Equation(s):
// \ShiftRight1~31_combout  = (\aluif.b[0]~input_o  & (\ShiftRight1~3_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftRight1~30_combout )))

	.dataa(gnd),
	.datab(\ShiftRight1~3_combout ),
	.datac(\aluif.b[0]~input_o ),
	.datad(\ShiftRight1~30_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~31_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~31 .lut_mask = 16'hCFC0;
defparam \ShiftRight1~31 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N20
cycloneive_lcell_comb \ShiftRight1~28 (
// Equation(s):
// \ShiftRight1~28_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[21]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[19]~input_o ))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[19]~input_o ),
	.datac(\aluif.a[21]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight1~28_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~28 .lut_mask = 16'hE4E4;
defparam \ShiftRight1~28 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N26
cycloneive_lcell_comb \ShiftRight1~0 (
// Equation(s):
// \ShiftRight1~0_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[22]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[20]~input_o ))

	.dataa(\aluif.a[20]~input_o ),
	.datab(\aluif.a[22]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight1~0_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~0 .lut_mask = 16'hCACA;
defparam \ShiftRight1~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N6
cycloneive_lcell_comb \ShiftRight1~29 (
// Equation(s):
// \ShiftRight1~29_combout  = (\aluif.b[0]~input_o  & ((\ShiftRight1~0_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftRight1~28_combout ))

	.dataa(gnd),
	.datab(\ShiftRight1~28_combout ),
	.datac(\ShiftRight1~0_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~29_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~29 .lut_mask = 16'hF0CC;
defparam \ShiftRight1~29 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N16
cycloneive_lcell_comb \ShiftRight1~32 (
// Equation(s):
// \ShiftRight1~32_combout  = (\Selector7~2_combout  & ((\ShiftRight1~31_combout ) # ((\ShiftLeft0~33_combout  & \ShiftRight1~29_combout )))) # (!\Selector7~2_combout  & (((\ShiftLeft0~33_combout  & \ShiftRight1~29_combout ))))

	.dataa(\Selector7~2_combout ),
	.datab(\ShiftRight1~31_combout ),
	.datac(\ShiftLeft0~33_combout ),
	.datad(\ShiftRight1~29_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~32_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~32 .lut_mask = 16'hF888;
defparam \ShiftRight1~32 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N22
cycloneive_lcell_comb \Selector28~8 (
// Equation(s):
// \Selector28~8_combout  = (\Selector28~2_combout ) # ((\Selector28~7_combout ) # ((\Selector23~1_combout  & \ShiftRight1~32_combout )))

	.dataa(\Selector28~2_combout ),
	.datab(\Selector28~7_combout ),
	.datac(\Selector23~1_combout ),
	.datad(\ShiftRight1~32_combout ),
	.cin(gnd),
	.combout(\Selector28~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~8 .lut_mask = 16'hFEEE;
defparam \Selector28~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N4
cycloneive_lcell_comb \ShiftLeft0~32 (
// Equation(s):
// \ShiftLeft0~32_combout  = (\aluif.b[3]~input_o  & !\aluif.b[2]~input_o )

	.dataa(\aluif.b[3]~input_o ),
	.datab(gnd),
	.datac(gnd),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~32_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~32 .lut_mask = 16'h00AA;
defparam \ShiftLeft0~32 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N16
cycloneive_lcell_comb \ShiftRight1~33 (
// Equation(s):
// \ShiftRight1~33_combout  = (\aluif.b[3]~input_o  & (\aluif.a[31]~input_o  & \aluif.b[2]~input_o ))

	.dataa(\aluif.b[3]~input_o ),
	.datab(gnd),
	.datac(\aluif.a[31]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~33_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~33 .lut_mask = 16'hA000;
defparam \ShiftRight1~33 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N4
cycloneive_lcell_comb \ShiftRight1~34 (
// Equation(s):
// \ShiftRight1~34_combout  = (\ShiftRight1~32_combout ) # ((\ShiftRight1~33_combout ) # ((\ShiftLeft0~32_combout  & \ShiftRight1~27_combout )))

	.dataa(\ShiftRight1~32_combout ),
	.datab(\ShiftLeft0~32_combout ),
	.datac(\ShiftRight1~27_combout ),
	.datad(\ShiftRight1~33_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~34_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~34 .lut_mask = 16'hFFEA;
defparam \ShiftRight1~34 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N26
cycloneive_lcell_comb \Selector28~9 (
// Equation(s):
// \Selector28~9_combout  = (\Selector28~1_combout ) # ((\Selector28~8_combout ) # ((\Selector10~4_combout  & \ShiftRight1~34_combout )))

	.dataa(\Selector10~4_combout ),
	.datab(\Selector28~1_combout ),
	.datac(\Selector28~8_combout ),
	.datad(\ShiftRight1~34_combout ),
	.cin(gnd),
	.combout(\Selector28~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~9 .lut_mask = 16'hFEFC;
defparam \Selector28~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N8
cycloneive_lcell_comb \Selector6~4 (
// Equation(s):
// \Selector6~4_combout  = (\aluif.b[25]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.a[25]~input_o )))) # (!\aluif.b[25]~input_o  & (\Selector0~20_combout  & ((\aluif.a[25]~input_o ))))

	.dataa(\aluif.b[25]~input_o ),
	.datab(\Selector0~20_combout ),
	.datac(\Selector0~21_combout ),
	.datad(\aluif.a[25]~input_o ),
	.cin(gnd),
	.combout(\Selector6~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~4 .lut_mask = 16'hEC88;
defparam \Selector6~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N10
cycloneive_lcell_comb \ShiftRight1~17 (
// Equation(s):
// \ShiftRight1~17_combout  = (\aluif.b[2]~input_o  & ((\aluif.b[1]~input_o  & ((\aluif.a[31]~input_o ))) # (!\aluif.b[1]~input_o  & (\ShiftRight1~16_combout ))))

	.dataa(\ShiftRight1~16_combout ),
	.datab(\aluif.b[1]~input_o ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~17_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~17 .lut_mask = 16'hE020;
defparam \ShiftRight1~17 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N10
cycloneive_lcell_comb \ShiftRight0~7 (
// Equation(s):
// \ShiftRight0~7_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[27]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[25]~input_o ))

	.dataa(\aluif.a[25]~input_o ),
	.datab(\aluif.b[1]~input_o ),
	.datac(gnd),
	.datad(\aluif.a[27]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~7_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~7 .lut_mask = 16'hEE22;
defparam \ShiftRight0~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N18
cycloneive_lcell_comb \ShiftRight1~19 (
// Equation(s):
// \ShiftRight1~19_combout  = (\aluif.b[0]~input_o  & ((\ShiftRight1~18_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftRight0~7_combout ))

	.dataa(\ShiftRight0~7_combout ),
	.datab(\ShiftRight1~18_combout ),
	.datac(gnd),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~19_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~19 .lut_mask = 16'hCCAA;
defparam \ShiftRight1~19 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N20
cycloneive_lcell_comb \ShiftRight1~20 (
// Equation(s):
// \ShiftRight1~20_combout  = (\ShiftRight1~17_combout ) # ((!\aluif.b[2]~input_o  & \ShiftRight1~19_combout ))

	.dataa(\ShiftRight1~17_combout ),
	.datab(gnd),
	.datac(\aluif.b[2]~input_o ),
	.datad(\ShiftRight1~19_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~20_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~20 .lut_mask = 16'hAFAA;
defparam \ShiftRight1~20 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N18
cycloneive_lcell_comb \Selector6~11 (
// Equation(s):
// \Selector6~11_combout  = (\Selector10~3_combout  & ((\aluif.b[3]~input_o  & ((\aluif.a[31]~input_o ))) # (!\aluif.b[3]~input_o  & (\ShiftRight1~20_combout ))))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\ShiftRight1~20_combout ),
	.datac(\aluif.a[31]~input_o ),
	.datad(\Selector10~3_combout ),
	.cin(gnd),
	.combout(\Selector6~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~11 .lut_mask = 16'hE400;
defparam \Selector6~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N30
cycloneive_lcell_comb \ShiftRight0~21 (
// Equation(s):
// \ShiftRight0~21_combout  = (\aluif.b[1]~input_o  & (((!\aluif.b[0]~input_o  & \aluif.a[31]~input_o )))) # (!\aluif.b[1]~input_o  & (\ShiftRight1~16_combout ))

	.dataa(\ShiftRight1~16_combout ),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~21_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~21 .lut_mask = 16'h3A0A;
defparam \ShiftRight0~21 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N14
cycloneive_lcell_comb \Selector6~3 (
// Equation(s):
// \Selector6~3_combout  = (\Selector6~2_combout  & ((\aluif.b[2]~input_o  & ((\ShiftRight0~21_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftRight1~19_combout ))))

	.dataa(\ShiftRight1~19_combout ),
	.datab(\Selector6~2_combout ),
	.datac(\ShiftRight0~21_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector6~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~3 .lut_mask = 16'hC088;
defparam \Selector6~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N18
cycloneive_lcell_comb \Selector6~5 (
// Equation(s):
// \Selector6~5_combout  = (\Add1~50_combout  & ((\Selector0~19_combout ) # ((\Selector0~6_combout  & \Add0~50_combout )))) # (!\Add1~50_combout  & (((\Selector0~6_combout  & \Add0~50_combout ))))

	.dataa(\Add1~50_combout ),
	.datab(\Selector0~19_combout ),
	.datac(\Selector0~6_combout ),
	.datad(\Add0~50_combout ),
	.cin(gnd),
	.combout(\Selector6~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~5 .lut_mask = 16'hF888;
defparam \Selector6~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N12
cycloneive_lcell_comb \Selector6~6 (
// Equation(s):
// \Selector6~6_combout  = (\Selector6~5_combout ) # ((\Selector0~7_combout  & (\aluif.b[25]~input_o  $ (\aluif.a[25]~input_o ))))

	.dataa(\Selector0~7_combout ),
	.datab(\Selector6~5_combout ),
	.datac(\aluif.b[25]~input_o ),
	.datad(\aluif.a[25]~input_o ),
	.cin(gnd),
	.combout(\Selector6~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~6 .lut_mask = 16'hCEEC;
defparam \Selector6~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N30
cycloneive_lcell_comb \ShiftLeft0~58 (
// Equation(s):
// \ShiftLeft0~58_combout  = (!\aluif.b[0]~input_o  & ((\aluif.b[1]~input_o  & (\aluif.a[19]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[21]~input_o )))))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[19]~input_o ),
	.datac(\aluif.a[21]~input_o ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~58_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~58 .lut_mask = 16'h00D8;
defparam \ShiftLeft0~58 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N16
cycloneive_lcell_comb \ShiftLeft0~60 (
// Equation(s):
// \ShiftLeft0~60_combout  = (\ShiftLeft0~58_combout ) # ((\ShiftLeft0~59_combout  & \aluif.b[0]~input_o ))

	.dataa(\ShiftLeft0~59_combout ),
	.datab(\ShiftLeft0~58_combout ),
	.datac(\aluif.b[0]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~60_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~60 .lut_mask = 16'hECEC;
defparam \ShiftLeft0~60 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N0
cycloneive_lcell_comb \ShiftLeft0~42 (
// Equation(s):
// \ShiftLeft0~42_combout  = (\aluif.b[0]~input_o  & (\ShiftLeft0~40_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftLeft0~41_combout )))

	.dataa(gnd),
	.datab(\ShiftLeft0~40_combout ),
	.datac(\ShiftLeft0~41_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~42_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~42 .lut_mask = 16'hCCF0;
defparam \ShiftLeft0~42 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N14
cycloneive_lcell_comb \ShiftLeft0~45 (
// Equation(s):
// \ShiftLeft0~45_combout  = (\aluif.b[0]~input_o  & ((\ShiftLeft0~43_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftLeft0~44_combout ))

	.dataa(\ShiftLeft0~44_combout ),
	.datab(\ShiftLeft0~43_combout ),
	.datac(\aluif.b[0]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~45_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~45 .lut_mask = 16'hCACA;
defparam \ShiftLeft0~45 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N18
cycloneive_lcell_comb \ShiftLeft0~46 (
// Equation(s):
// \ShiftLeft0~46_combout  = (\aluif.b[2]~input_o  & (\ShiftLeft0~42_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftLeft0~45_combout )))

	.dataa(\ShiftLeft0~42_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~45_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~46_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~46 .lut_mask = 16'hAAF0;
defparam \ShiftLeft0~46 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N8
cycloneive_lcell_comb \ShiftLeft0~55 (
// Equation(s):
// \ShiftLeft0~55_combout  = (!\aluif.b[0]~input_o  & ((\aluif.b[1]~input_o  & ((\aluif.a[23]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[25]~input_o ))))

	.dataa(\aluif.a[25]~input_o ),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[23]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~55_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~55 .lut_mask = 16'h3202;
defparam \ShiftLeft0~55 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N4
cycloneive_lcell_comb \ShiftLeft0~57 (
// Equation(s):
// \ShiftLeft0~57_combout  = (\ShiftLeft0~55_combout ) # ((\ShiftLeft0~56_combout  & \aluif.b[0]~input_o ))

	.dataa(gnd),
	.datab(\ShiftLeft0~56_combout ),
	.datac(\ShiftLeft0~55_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~57_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~57 .lut_mask = 16'hFCF0;
defparam \ShiftLeft0~57 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N14
cycloneive_lcell_comb \Selector6~7 (
// Equation(s):
// \Selector6~7_combout  = (\Selector7~4_combout  & (((\Selector7~3_combout )))) # (!\Selector7~4_combout  & ((\Selector7~3_combout  & (\ShiftLeft0~46_combout )) # (!\Selector7~3_combout  & ((\ShiftLeft0~57_combout )))))

	.dataa(\ShiftLeft0~46_combout ),
	.datab(\ShiftLeft0~57_combout ),
	.datac(\Selector7~4_combout ),
	.datad(\Selector7~3_combout ),
	.cin(gnd),
	.combout(\Selector6~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~7 .lut_mask = 16'hFA0C;
defparam \Selector6~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N2
cycloneive_lcell_comb \ShiftLeft0~39 (
// Equation(s):
// \ShiftLeft0~39_combout  = (\aluif.b[0]~input_o  & (\ShiftLeft0~37_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftLeft0~38_combout )))

	.dataa(\ShiftLeft0~37_combout ),
	.datab(\ShiftLeft0~38_combout ),
	.datac(\aluif.b[0]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~39_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~39 .lut_mask = 16'hACAC;
defparam \ShiftLeft0~39 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y14_N30
cycloneive_lcell_comb \ShiftLeft0~86 (
// Equation(s):
// \ShiftLeft0~86_combout  = (\Selector7~2_combout  & ((\aluif.b[0]~input_o  & (\ShiftLeft0~34_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftLeft0~35_combout )))))

	.dataa(\ShiftLeft0~34_combout ),
	.datab(\ShiftLeft0~35_combout ),
	.datac(\aluif.b[0]~input_o ),
	.datad(\Selector7~2_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~86_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~86 .lut_mask = 16'hAC00;
defparam \ShiftLeft0~86 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N2
cycloneive_lcell_comb \ShiftLeft0~87 (
// Equation(s):
// \ShiftLeft0~87_combout  = (\ShiftLeft0~25_combout  & (!\aluif.b[1]~input_o  & (\aluif.b[3]~input_o  & !\aluif.b[2]~input_o )))

	.dataa(\ShiftLeft0~25_combout ),
	.datab(\aluif.b[1]~input_o ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~87_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~87 .lut_mask = 16'h0020;
defparam \ShiftLeft0~87 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N4
cycloneive_lcell_comb \ShiftLeft0~88 (
// Equation(s):
// \ShiftLeft0~88_combout  = (\ShiftLeft0~86_combout ) # ((\ShiftLeft0~87_combout ) # ((\ShiftLeft0~33_combout  & \ShiftLeft0~39_combout )))

	.dataa(\ShiftLeft0~33_combout ),
	.datab(\ShiftLeft0~39_combout ),
	.datac(\ShiftLeft0~86_combout ),
	.datad(\ShiftLeft0~87_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~88_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~88 .lut_mask = 16'hFFF8;
defparam \ShiftLeft0~88 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N16
cycloneive_lcell_comb \Selector6~8 (
// Equation(s):
// \Selector6~8_combout  = (\Selector6~7_combout  & (((\ShiftLeft0~88_combout ) # (!\Selector7~4_combout )))) # (!\Selector6~7_combout  & (\ShiftLeft0~60_combout  & (\Selector7~4_combout )))

	.dataa(\ShiftLeft0~60_combout ),
	.datab(\Selector6~7_combout ),
	.datac(\Selector7~4_combout ),
	.datad(\ShiftLeft0~88_combout ),
	.cin(gnd),
	.combout(\Selector6~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~8 .lut_mask = 16'hEC2C;
defparam \Selector6~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N14
cycloneive_lcell_comb \Selector6~9 (
// Equation(s):
// \Selector6~9_combout  = (\Selector6~6_combout ) # ((\Selector10~5_combout ) # ((\Selector0~4_combout  & \Selector6~8_combout )))

	.dataa(\Selector6~6_combout ),
	.datab(\Selector0~4_combout ),
	.datac(\Selector10~5_combout ),
	.datad(\Selector6~8_combout ),
	.cin(gnd),
	.combout(\Selector6~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~9 .lut_mask = 16'hFEFA;
defparam \Selector6~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N24
cycloneive_lcell_comb \Selector6~10 (
// Equation(s):
// \Selector6~10_combout  = (\Selector6~4_combout ) # ((\Selector6~11_combout ) # ((\Selector6~3_combout ) # (\Selector6~9_combout )))

	.dataa(\Selector6~4_combout ),
	.datab(\Selector6~11_combout ),
	.datac(\Selector6~3_combout ),
	.datad(\Selector6~9_combout ),
	.cin(gnd),
	.combout(\Selector6~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~10 .lut_mask = 16'hFFFE;
defparam \Selector6~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y11_N8
cycloneive_lcell_comb \Equal10~8 (
// Equation(s):
// \Equal10~8_combout  = (!\Selector3~9_combout  & (!\Selector5~9_combout  & (!\Selector28~9_combout  & !\Selector6~10_combout )))

	.dataa(\Selector3~9_combout ),
	.datab(\Selector5~9_combout ),
	.datac(\Selector28~9_combout ),
	.datad(\Selector6~10_combout ),
	.cin(gnd),
	.combout(\Equal10~8_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~8 .lut_mask = 16'h0001;
defparam \Equal10~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N28
cycloneive_lcell_comb \Selector19~2 (
// Equation(s):
// \Selector19~2_combout  = (\aluif.a[12]~input_o  & ((\Selector0~20_combout ) # ((\aluif.b[12]~input_o  & \Selector0~21_combout )))) # (!\aluif.a[12]~input_o  & (\Selector0~20_combout  & (\aluif.b[12]~input_o )))

	.dataa(\aluif.a[12]~input_o ),
	.datab(\Selector0~20_combout ),
	.datac(\aluif.b[12]~input_o ),
	.datad(\Selector0~21_combout ),
	.cin(gnd),
	.combout(\Selector19~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~2 .lut_mask = 16'hE8C8;
defparam \Selector19~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N20
cycloneive_lcell_comb \Selector23~4 (
// Equation(s):
// \Selector23~4_combout  = (\Selector23~2_combout  & (!\aluif.b[3]~input_o  & !\aluif.opcode[3]~input_o ))

	.dataa(gnd),
	.datab(\Selector23~2_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\aluif.opcode[3]~input_o ),
	.cin(gnd),
	.combout(\Selector23~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~4 .lut_mask = 16'h000C;
defparam \Selector23~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N16
cycloneive_lcell_comb \ShiftRight0~2 (
// Equation(s):
// \ShiftRight0~2_combout  = (\aluif.b[1]~input_o  & (\aluif.a[19]~input_o )) # (!\aluif.b[1]~input_o  & ((\aluif.a[17]~input_o )))

	.dataa(\aluif.a[19]~input_o ),
	.datab(gnd),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[17]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~2_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~2 .lut_mask = 16'hAFA0;
defparam \ShiftRight0~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N4
cycloneive_lcell_comb \ShiftRight0~3 (
// Equation(s):
// \ShiftRight0~3_combout  = (\aluif.b[0]~input_o  & ((\ShiftRight0~2_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftRight1~1_combout ))

	.dataa(\ShiftRight1~1_combout ),
	.datab(\ShiftRight0~2_combout ),
	.datac(gnd),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~3_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~3 .lut_mask = 16'hCCAA;
defparam \ShiftRight0~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N18
cycloneive_lcell_comb \Selector23~3 (
// Equation(s):
// \Selector23~3_combout  = (\Selector23~2_combout  & (\aluif.b[3]~input_o  & !\aluif.opcode[3]~input_o ))

	.dataa(gnd),
	.datab(\Selector23~2_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\aluif.opcode[3]~input_o ),
	.cin(gnd),
	.combout(\Selector23~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~3 .lut_mask = 16'h00C0;
defparam \Selector23~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N6
cycloneive_lcell_comb \ShiftRight0~8 (
// Equation(s):
// \ShiftRight0~8_combout  = (\aluif.b[0]~input_o  & (\ShiftRight0~7_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftRight1~3_combout )))

	.dataa(\ShiftRight0~7_combout ),
	.datab(\ShiftRight1~3_combout ),
	.datac(gnd),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~8_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~8 .lut_mask = 16'hAACC;
defparam \ShiftRight0~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N6
cycloneive_lcell_comb \Selector19~3 (
// Equation(s):
// \Selector19~3_combout  = (\Selector23~4_combout  & ((\ShiftRight0~3_combout ) # ((\Selector23~3_combout  & \ShiftRight0~8_combout )))) # (!\Selector23~4_combout  & (((\Selector23~3_combout  & \ShiftRight0~8_combout ))))

	.dataa(\Selector23~4_combout ),
	.datab(\ShiftRight0~3_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\ShiftRight0~8_combout ),
	.cin(gnd),
	.combout(\Selector19~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~3 .lut_mask = 16'hF888;
defparam \Selector19~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N6
cycloneive_lcell_comb \Selector19~4 (
// Equation(s):
// \Selector19~4_combout  = (\Selector19~2_combout ) # ((\Selector19~3_combout  & \aluif.b[2]~input_o ))

	.dataa(gnd),
	.datab(\Selector19~2_combout ),
	.datac(\Selector19~3_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector19~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~4 .lut_mask = 16'hFCCC;
defparam \Selector19~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N24
cycloneive_lcell_comb \out~9 (
// Equation(s):
// \out~9_combout  = \aluif.a[12]~input_o  $ (\aluif.b[12]~input_o )

	.dataa(\aluif.a[12]~input_o ),
	.datab(gnd),
	.datac(\aluif.b[12]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\out~9_combout ),
	.cout());
// synopsys translate_off
defparam \out~9 .lut_mask = 16'h5A5A;
defparam \out~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N18
cycloneive_lcell_comb \Selector19~5 (
// Equation(s):
// \Selector19~5_combout  = (\Selector0~19_combout  & ((\Add1~24_combout ) # ((\out~9_combout  & \Selector0~7_combout )))) # (!\Selector0~19_combout  & (\out~9_combout  & (\Selector0~7_combout )))

	.dataa(\Selector0~19_combout ),
	.datab(\out~9_combout ),
	.datac(\Selector0~7_combout ),
	.datad(\Add1~24_combout ),
	.cin(gnd),
	.combout(\Selector19~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~5 .lut_mask = 16'hEAC0;
defparam \Selector19~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N24
cycloneive_lcell_comb \ShiftRight0~11 (
// Equation(s):
// \ShiftRight0~11_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[15]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[13]~input_o ))

	.dataa(gnd),
	.datab(\aluif.a[13]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[15]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~11_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~11 .lut_mask = 16'hFC0C;
defparam \ShiftRight0~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N20
cycloneive_lcell_comb \ShiftRight0~12 (
// Equation(s):
// \ShiftRight0~12_combout  = (\aluif.b[0]~input_o  & (\ShiftRight0~11_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftRight1~4_combout )))

	.dataa(gnd),
	.datab(\ShiftRight0~11_combout ),
	.datac(\ShiftRight1~4_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~12_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~12 .lut_mask = 16'hCCF0;
defparam \ShiftRight0~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N0
cycloneive_lcell_comb \ShiftRight0~0 (
// Equation(s):
// \ShiftRight0~0_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[23]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[21]~input_o ))

	.dataa(\aluif.b[1]~input_o ),
	.datab(gnd),
	.datac(\aluif.a[21]~input_o ),
	.datad(\aluif.a[23]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~0_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~0 .lut_mask = 16'hFA50;
defparam \ShiftRight0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N16
cycloneive_lcell_comb \ShiftRight0~1 (
// Equation(s):
// \ShiftRight0~1_combout  = (\aluif.b[0]~input_o  & (\ShiftRight0~0_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftRight1~0_combout )))

	.dataa(gnd),
	.datab(\ShiftRight0~0_combout ),
	.datac(\ShiftRight1~0_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~1_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~1 .lut_mask = 16'hCCF0;
defparam \ShiftRight0~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N10
cycloneive_lcell_comb \Selector23~7 (
// Equation(s):
// \Selector23~7_combout  = (\Selector23~4_combout  & ((\ShiftRight0~12_combout ) # ((\Selector23~3_combout  & \ShiftRight0~1_combout )))) # (!\Selector23~4_combout  & (((\Selector23~3_combout  & \ShiftRight0~1_combout ))))

	.dataa(\Selector23~4_combout ),
	.datab(\ShiftRight0~12_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\ShiftRight0~1_combout ),
	.cin(gnd),
	.combout(\Selector23~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~7 .lut_mask = 16'hF888;
defparam \Selector23~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N12
cycloneive_lcell_comb \Selector19~6 (
// Equation(s):
// \Selector19~6_combout  = (\Selector19~4_combout ) # ((\Selector19~5_combout ) # ((\Selector23~7_combout  & !\aluif.b[2]~input_o )))

	.dataa(\Selector19~4_combout ),
	.datab(\Selector19~5_combout ),
	.datac(\Selector23~7_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector19~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~6 .lut_mask = 16'hEEFE;
defparam \Selector19~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N4
cycloneive_lcell_comb \Selector19~0 (
// Equation(s):
// \Selector19~0_combout  = (\Selector10~4_combout  & ((\Selector20~2_combout ) # ((\Selector0~6_combout  & \Add0~24_combout )))) # (!\Selector10~4_combout  & (\Selector0~6_combout  & ((\Add0~24_combout ))))

	.dataa(\Selector10~4_combout ),
	.datab(\Selector0~6_combout ),
	.datac(\Selector20~2_combout ),
	.datad(\Add0~24_combout ),
	.cin(gnd),
	.combout(\Selector19~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~0 .lut_mask = 16'hECA0;
defparam \Selector19~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N6
cycloneive_lcell_comb \Selector23~5 (
// Equation(s):
// \Selector23~5_combout  = (\aluif.b[4]~input_o  & (\Selector23~0_combout  & (\aluif.opcode[0]~input_o  $ (\aluif.opcode[1]~input_o ))))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.b[4]~input_o ),
	.datac(\aluif.opcode[1]~input_o ),
	.datad(\Selector23~0_combout ),
	.cin(gnd),
	.combout(\Selector23~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~5 .lut_mask = 16'h4800;
defparam \Selector23~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N30
cycloneive_lcell_comb \Selector19~1 (
// Equation(s):
// \Selector19~1_combout  = (\Selector19~0_combout ) # ((\ShiftLeft0~33_combout  & (\ShiftRight0~6_combout  & \Selector23~5_combout )))

	.dataa(\Selector19~0_combout ),
	.datab(\ShiftLeft0~33_combout ),
	.datac(\ShiftRight0~6_combout ),
	.datad(\Selector23~5_combout ),
	.cin(gnd),
	.combout(\Selector19~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~1 .lut_mask = 16'hEAAA;
defparam \Selector19~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N22
cycloneive_lcell_comb \Selector19~7 (
// Equation(s):
// \Selector19~7_combout  = (\Selector19~6_combout ) # ((\Selector19~1_combout ) # ((\ShiftLeft0~93_combout  & \Selector30~7_combout )))

	.dataa(\Selector19~6_combout ),
	.datab(\Selector19~1_combout ),
	.datac(\ShiftLeft0~93_combout ),
	.datad(\Selector30~7_combout ),
	.cin(gnd),
	.combout(\Selector19~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~7 .lut_mask = 16'hFEEE;
defparam \Selector19~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N2
cycloneive_lcell_comb \ShiftRight1~62 (
// Equation(s):
// \ShiftRight1~62_combout  = (\Selector7~2_combout  & ((\ShiftRight1~27_combout ) # ((\ShiftLeft0~33_combout  & \ShiftRight1~31_combout )))) # (!\Selector7~2_combout  & (\ShiftLeft0~33_combout  & (\ShiftRight1~31_combout )))

	.dataa(\Selector7~2_combout ),
	.datab(\ShiftLeft0~33_combout ),
	.datac(\ShiftRight1~31_combout ),
	.datad(\ShiftRight1~27_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~62_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~62 .lut_mask = 16'hEAC0;
defparam \ShiftRight1~62 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N12
cycloneive_lcell_comb \Selector8~8 (
// Equation(s):
// \Selector8~8_combout  = (\ShiftRight1~62_combout ) # ((\aluif.b[3]~input_o  & \aluif.a[31]~input_o ))

	.dataa(\ShiftRight1~62_combout ),
	.datab(\aluif.b[3]~input_o ),
	.datac(gnd),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\Selector8~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~8 .lut_mask = 16'hEEAA;
defparam \Selector8~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N22
cycloneive_lcell_comb \Selector8~1 (
// Equation(s):
// \Selector8~1_combout  = (\Selector30~7_combout  & ((\aluif.b[3]~input_o  & (\ShiftLeft0~19_combout )) # (!\aluif.b[3]~input_o  & ((\ShiftLeft0~13_combout )))))

	.dataa(\ShiftLeft0~19_combout ),
	.datab(\ShiftLeft0~13_combout ),
	.datac(\Selector30~7_combout ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector8~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~1 .lut_mask = 16'hA0C0;
defparam \Selector8~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N0
cycloneive_lcell_comb \ShiftRight1~57 (
// Equation(s):
// \ShiftRight1~57_combout  = (\aluif.b[3]~input_o  & \aluif.a[31]~input_o )

	.dataa(\aluif.b[3]~input_o ),
	.datab(gnd),
	.datac(gnd),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~57_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~57 .lut_mask = 16'hAA00;
defparam \ShiftRight1~57 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N2
cycloneive_lcell_comb \ShiftLeft0~84 (
// Equation(s):
// \ShiftLeft0~84_combout  = (\aluif.b[0]~input_o ) # ((\aluif.b[1]~input_o ) # (\aluif.b[2]~input_o ))

	.dataa(gnd),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~84_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~84 .lut_mask = 16'hFFFC;
defparam \ShiftLeft0~84 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N28
cycloneive_lcell_comb \Selector8~0 (
// Equation(s):
// \Selector8~0_combout  = (\Selector9~0_combout  & ((\ShiftRight1~62_combout ) # ((\ShiftRight1~57_combout  & !\ShiftLeft0~84_combout ))))

	.dataa(\ShiftRight1~62_combout ),
	.datab(\ShiftRight1~57_combout ),
	.datac(\ShiftLeft0~84_combout ),
	.datad(\Selector9~0_combout ),
	.cin(gnd),
	.combout(\Selector8~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~0 .lut_mask = 16'hAE00;
defparam \Selector8~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N0
cycloneive_lcell_comb \Selector8~2 (
// Equation(s):
// \Selector8~2_combout  = (\Selector30~7_combout  & ((\aluif.b[3]~input_o  & ((\ShiftLeft0~22_combout ))) # (!\aluif.b[3]~input_o  & (\ShiftLeft0~16_combout ))))

	.dataa(\Selector30~7_combout ),
	.datab(\ShiftLeft0~16_combout ),
	.datac(\ShiftLeft0~22_combout ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector8~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~2 .lut_mask = 16'hA088;
defparam \Selector8~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N26
cycloneive_lcell_comb \Selector8~3 (
// Equation(s):
// \Selector8~3_combout  = (\Selector8~0_combout ) # ((\aluif.b[2]~input_o  & (\Selector8~1_combout )) # (!\aluif.b[2]~input_o  & ((\Selector8~2_combout ))))

	.dataa(\Selector8~1_combout ),
	.datab(\Selector8~0_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\Selector8~2_combout ),
	.cin(gnd),
	.combout(\Selector8~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~3 .lut_mask = 16'hEFEC;
defparam \Selector8~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N22
cycloneive_lcell_comb \out~10 (
// Equation(s):
// \out~10_combout  = \aluif.b[23]~input_o  $ (\aluif.a[23]~input_o )

	.dataa(\aluif.b[23]~input_o ),
	.datab(gnd),
	.datac(gnd),
	.datad(\aluif.a[23]~input_o ),
	.cin(gnd),
	.combout(\out~10_combout ),
	.cout());
// synopsys translate_off
defparam \out~10 .lut_mask = 16'h55AA;
defparam \out~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N0
cycloneive_lcell_comb \Selector8~5 (
// Equation(s):
// \Selector8~5_combout  = (\out~10_combout  & ((\Selector0~7_combout ) # ((\Add1~46_combout  & \Selector0~19_combout )))) # (!\out~10_combout  & (\Add1~46_combout  & (\Selector0~19_combout )))

	.dataa(\out~10_combout ),
	.datab(\Add1~46_combout ),
	.datac(\Selector0~19_combout ),
	.datad(\Selector0~7_combout ),
	.cin(gnd),
	.combout(\Selector8~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~5 .lut_mask = 16'hEAC0;
defparam \Selector8~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N10
cycloneive_lcell_comb \Selector8~6 (
// Equation(s):
// \Selector8~6_combout  = (\Selector8~5_combout ) # ((\Selector10~5_combout ) # ((\Add0~46_combout  & \Selector0~6_combout )))

	.dataa(\Add0~46_combout ),
	.datab(\Selector8~5_combout ),
	.datac(\Selector10~5_combout ),
	.datad(\Selector0~6_combout ),
	.cin(gnd),
	.combout(\Selector8~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~6 .lut_mask = 16'hFEFC;
defparam \Selector8~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N28
cycloneive_lcell_comb \Selector8~4 (
// Equation(s):
// \Selector8~4_combout  = (\aluif.b[23]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.a[23]~input_o )))) # (!\aluif.b[23]~input_o  & (((\Selector0~20_combout  & \aluif.a[23]~input_o ))))

	.dataa(\aluif.b[23]~input_o ),
	.datab(\Selector0~21_combout ),
	.datac(\Selector0~20_combout ),
	.datad(\aluif.a[23]~input_o ),
	.cin(gnd),
	.combout(\Selector8~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~4 .lut_mask = 16'hF8A0;
defparam \Selector8~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N14
cycloneive_lcell_comb \Selector10~12 (
// Equation(s):
// \Selector10~12_combout  = (\aluif.b[4]~input_o  & (\Selector0~4_combout  & !\aluif.b[3]~input_o ))

	.dataa(gnd),
	.datab(\aluif.b[4]~input_o ),
	.datac(\Selector0~4_combout ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector10~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~12 .lut_mask = 16'h00C0;
defparam \Selector10~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y14_N16
cycloneive_lcell_comb \ShiftLeft0~30 (
// Equation(s):
// \ShiftLeft0~30_combout  = (\aluif.b[2]~input_o  & ((\ShiftLeft0~26_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftLeft0~29_combout ))

	.dataa(\ShiftLeft0~29_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~26_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~30_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~30 .lut_mask = 16'hF0AA;
defparam \ShiftLeft0~30 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N4
cycloneive_lcell_comb \Selector8~7 (
// Equation(s):
// \Selector8~7_combout  = (\Selector8~6_combout ) # ((\Selector8~4_combout ) # ((\Selector10~12_combout  & \ShiftLeft0~30_combout )))

	.dataa(\Selector8~6_combout ),
	.datab(\Selector8~4_combout ),
	.datac(\Selector10~12_combout ),
	.datad(\ShiftLeft0~30_combout ),
	.cin(gnd),
	.combout(\Selector8~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~7 .lut_mask = 16'hFEEE;
defparam \Selector8~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N6
cycloneive_lcell_comb \Selector8~9 (
// Equation(s):
// \Selector8~9_combout  = (\Selector8~3_combout ) # ((\Selector8~7_combout ) # ((\Selector8~8_combout  & \Selector10~3_combout )))

	.dataa(\Selector8~8_combout ),
	.datab(\Selector10~3_combout ),
	.datac(\Selector8~3_combout ),
	.datad(\Selector8~7_combout ),
	.cin(gnd),
	.combout(\Selector8~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~9 .lut_mask = 16'hFFF8;
defparam \Selector8~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N8
cycloneive_lcell_comb \Selector24~14 (
// Equation(s):
// \Selector24~14_combout  = (\aluif.b[3]~input_o  & (\Selector10~4_combout  & \aluif.a[31]~input_o ))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\Selector10~4_combout ),
	.datac(gnd),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\Selector24~14_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~14 .lut_mask = 16'h8800;
defparam \Selector24~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N22
cycloneive_lcell_comb \Selector24~9 (
// Equation(s):
// \Selector24~9_combout  = (\Selector0~7_combout  & (\aluif.b[7]~input_o  $ (\aluif.a[7]~input_o )))

	.dataa(\Selector0~7_combout ),
	.datab(\aluif.b[7]~input_o ),
	.datac(gnd),
	.datad(\aluif.a[7]~input_o ),
	.cin(gnd),
	.combout(\Selector24~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~9 .lut_mask = 16'h2288;
defparam \Selector24~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N24
cycloneive_lcell_comb \Selector24~7 (
// Equation(s):
// \Selector24~7_combout  = (\Selector23~4_combout  & ((\aluif.b[0]~input_o  & ((\ShiftRight1~4_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftRight1~35_combout ))))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\ShiftRight1~35_combout ),
	.datac(\ShiftRight1~4_combout ),
	.datad(\Selector23~4_combout ),
	.cin(gnd),
	.combout(\Selector24~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~7 .lut_mask = 16'hE400;
defparam \Selector24~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N2
cycloneive_lcell_comb \Selector24~8 (
// Equation(s):
// \Selector24~8_combout  = (\aluif.b[2]~input_o  & ((\Selector24~7_combout ) # ((\ShiftRight1~29_combout  & \Selector23~3_combout ))))

	.dataa(\ShiftRight1~29_combout ),
	.datab(\Selector24~7_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector24~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~8 .lut_mask = 16'hEC00;
defparam \Selector24~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N8
cycloneive_lcell_comb \Selector24~10 (
// Equation(s):
// \Selector24~10_combout  = (\Selector24~9_combout ) # ((\Selector24~8_combout ) # ((\Selector0~19_combout  & \Add1~14_combout )))

	.dataa(\Selector24~9_combout ),
	.datab(\Selector24~8_combout ),
	.datac(\Selector0~19_combout ),
	.datad(\Add1~14_combout ),
	.cin(gnd),
	.combout(\Selector24~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~10 .lut_mask = 16'hFEEE;
defparam \Selector24~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N10
cycloneive_lcell_comb \Selector24~11 (
// Equation(s):
// \Selector24~11_combout  = (\ShiftRight1~38_combout  & ((\Selector23~3_combout ) # ((\ShiftRight1~63_combout  & \Selector23~4_combout )))) # (!\ShiftRight1~38_combout  & (((\ShiftRight1~63_combout  & \Selector23~4_combout ))))

	.dataa(\ShiftRight1~38_combout ),
	.datab(\Selector23~3_combout ),
	.datac(\ShiftRight1~63_combout ),
	.datad(\Selector23~4_combout ),
	.cin(gnd),
	.combout(\Selector24~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~11 .lut_mask = 16'hF888;
defparam \Selector24~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N12
cycloneive_lcell_comb \Selector24~12 (
// Equation(s):
// \Selector24~12_combout  = (\Selector24~14_combout ) # ((\Selector24~10_combout ) # ((!\aluif.b[2]~input_o  & \Selector24~11_combout )))

	.dataa(\Selector24~14_combout ),
	.datab(\aluif.b[2]~input_o ),
	.datac(\Selector24~10_combout ),
	.datad(\Selector24~11_combout ),
	.cin(gnd),
	.combout(\Selector24~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~12 .lut_mask = 16'hFBFA;
defparam \Selector24~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N28
cycloneive_lcell_comb \Selector24~15 (
// Equation(s):
// \Selector24~15_combout  = (\aluif.b[3]~input_o  & (\Selector23~1_combout  & (!\ShiftLeft0~84_combout  & \aluif.a[31]~input_o )))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\Selector23~1_combout ),
	.datac(\ShiftLeft0~84_combout ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\Selector24~15_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~15 .lut_mask = 16'h0800;
defparam \Selector24~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N12
cycloneive_lcell_comb \Selector24~4 (
// Equation(s):
// \Selector24~4_combout  = (\Selector24~15_combout ) # ((\ShiftLeft0~30_combout  & (\Selector0~4_combout  & !\Selector7~3_combout )))

	.dataa(\ShiftLeft0~30_combout ),
	.datab(\Selector0~4_combout ),
	.datac(\Selector24~15_combout ),
	.datad(\Selector7~3_combout ),
	.cin(gnd),
	.combout(\Selector24~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~4 .lut_mask = 16'hF0F8;
defparam \Selector24~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N24
cycloneive_lcell_comb \Selector24~5 (
// Equation(s):
// \Selector24~5_combout  = (\aluif.b[7]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.a[7]~input_o )))) # (!\aluif.b[7]~input_o  & (((\Selector0~20_combout  & \aluif.a[7]~input_o ))))

	.dataa(\Selector0~21_combout ),
	.datab(\aluif.b[7]~input_o ),
	.datac(\Selector0~20_combout ),
	.datad(\aluif.a[7]~input_o ),
	.cin(gnd),
	.combout(\Selector24~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~5 .lut_mask = 16'hF8C0;
defparam \Selector24~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N28
cycloneive_lcell_comb \Selector24~6 (
// Equation(s):
// \Selector24~6_combout  = (\Selector24~4_combout ) # ((\Selector24~5_combout ) # ((\Selector23~5_combout  & \ShiftRight1~62_combout )))

	.dataa(\Selector23~5_combout ),
	.datab(\ShiftRight1~62_combout ),
	.datac(\Selector24~4_combout ),
	.datad(\Selector24~5_combout ),
	.cin(gnd),
	.combout(\Selector24~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~6 .lut_mask = 16'hFFF8;
defparam \Selector24~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N6
cycloneive_lcell_comb \Selector24~13 (
// Equation(s):
// \Selector24~13_combout  = (\Selector24~12_combout ) # ((\Selector24~6_combout ) # ((\Add0~14_combout  & \Selector0~6_combout )))

	.dataa(\Selector24~12_combout ),
	.datab(\Add0~14_combout ),
	.datac(\Selector0~6_combout ),
	.datad(\Selector24~6_combout ),
	.cin(gnd),
	.combout(\Selector24~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~13 .lut_mask = 16'hFFEA;
defparam \Selector24~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y14_N10
cycloneive_lcell_comb \ShiftRight1~21 (
// Equation(s):
// \ShiftRight1~21_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[24]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[22]~input_o ))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[22]~input_o ),
	.datac(\aluif.a[24]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight1~21_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~21 .lut_mask = 16'hE4E4;
defparam \ShiftRight1~21 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N2
cycloneive_lcell_comb \ShiftRight1~49 (
// Equation(s):
// \ShiftRight1~49_combout  = (\aluif.b[0]~input_o  & ((\ShiftRight1~30_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftRight1~21_combout ))

	.dataa(\ShiftRight1~21_combout ),
	.datab(\ShiftRight1~30_combout ),
	.datac(gnd),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~49_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~49 .lut_mask = 16'hCCAA;
defparam \ShiftRight1~49 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N26
cycloneive_lcell_comb \ShiftRight1~14 (
// Equation(s):
// \ShiftRight1~14_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[16]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[14]~input_o ))

	.dataa(\aluif.a[14]~input_o ),
	.datab(\aluif.a[16]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight1~14_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~14 .lut_mask = 16'hCACA;
defparam \ShiftRight1~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N28
cycloneive_lcell_comb \ShiftRight1~54 (
// Equation(s):
// \ShiftRight1~54_combout  = (\aluif.b[0]~input_o  & (\ShiftRight1~37_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftRight1~14_combout )))

	.dataa(\ShiftRight1~37_combout ),
	.datab(gnd),
	.datac(\ShiftRight1~14_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~54_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~54 .lut_mask = 16'hAAF0;
defparam \ShiftRight1~54 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N30
cycloneive_lcell_comb \Selector17~8 (
// Equation(s):
// \Selector17~8_combout  = (\Selector23~3_combout  & ((\ShiftRight1~49_combout ) # ((\Selector23~4_combout  & \ShiftRight1~54_combout )))) # (!\Selector23~3_combout  & (\Selector23~4_combout  & ((\ShiftRight1~54_combout ))))

	.dataa(\Selector23~3_combout ),
	.datab(\Selector23~4_combout ),
	.datac(\ShiftRight1~49_combout ),
	.datad(\ShiftRight1~54_combout ),
	.cin(gnd),
	.combout(\Selector17~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~8 .lut_mask = 16'hECA0;
defparam \Selector17~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N16
cycloneive_lcell_comb \Selector17~4 (
// Equation(s):
// \Selector17~4_combout  = (\aluif.a[14]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.b[14]~input_o )))) # (!\aluif.a[14]~input_o  & (((\aluif.b[14]~input_o  & \Selector0~20_combout ))))

	.dataa(\aluif.a[14]~input_o ),
	.datab(\Selector0~21_combout ),
	.datac(\aluif.b[14]~input_o ),
	.datad(\Selector0~20_combout ),
	.cin(gnd),
	.combout(\Selector17~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~4 .lut_mask = 16'hFA80;
defparam \Selector17~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N12
cycloneive_lcell_comb \out~11 (
// Equation(s):
// \out~11_combout  = \aluif.b[14]~input_o  $ (\aluif.a[14]~input_o )

	.dataa(gnd),
	.datab(\aluif.b[14]~input_o ),
	.datac(gnd),
	.datad(\aluif.a[14]~input_o ),
	.cin(gnd),
	.combout(\out~11_combout ),
	.cout());
// synopsys translate_off
defparam \out~11 .lut_mask = 16'h33CC;
defparam \out~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N6
cycloneive_lcell_comb \Selector17~6 (
// Equation(s):
// \Selector17~6_combout  = (\out~11_combout  & ((\Selector0~7_combout ) # ((\Selector0~19_combout  & \Add1~28_combout )))) # (!\out~11_combout  & (\Selector0~19_combout  & ((\Add1~28_combout ))))

	.dataa(\out~11_combout ),
	.datab(\Selector0~19_combout ),
	.datac(\Selector0~7_combout ),
	.datad(\Add1~28_combout ),
	.cin(gnd),
	.combout(\Selector17~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~6 .lut_mask = 16'hECA0;
defparam \Selector17~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N24
cycloneive_lcell_comb \Selector15~1 (
// Equation(s):
// \Selector15~1_combout  = (!\aluif.b[1]~input_o  & (!\aluif.b[0]~input_o  & (!\aluif.b[3]~input_o  & !\aluif.b[2]~input_o )))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector15~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~1 .lut_mask = 16'h0001;
defparam \Selector15~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N18
cycloneive_lcell_comb \Selector17~5 (
// Equation(s):
// \Selector17~5_combout  = (\Selector10~4_combout  & ((\Selector15~1_combout  & (\aluif.a[30]~input_o )) # (!\Selector15~1_combout  & ((\aluif.a[31]~input_o )))))

	.dataa(\Selector15~1_combout ),
	.datab(\Selector10~4_combout ),
	.datac(\aluif.a[30]~input_o ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\Selector17~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~5 .lut_mask = 16'hC480;
defparam \Selector17~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N8
cycloneive_lcell_comb \Selector17~7 (
// Equation(s):
// \Selector17~7_combout  = (\Selector17~6_combout ) # ((\Selector17~5_combout ) # ((\Add0~28_combout  & \Selector0~6_combout )))

	.dataa(\Selector17~6_combout ),
	.datab(\Add0~28_combout ),
	.datac(\Selector0~6_combout ),
	.datad(\Selector17~5_combout ),
	.cin(gnd),
	.combout(\Selector17~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~7 .lut_mask = 16'hFFEA;
defparam \Selector17~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N2
cycloneive_lcell_comb \Selector17~9 (
// Equation(s):
// \Selector17~9_combout  = (\Selector17~4_combout ) # ((\Selector17~7_combout ) # ((\Selector17~8_combout  & !\aluif.b[2]~input_o )))

	.dataa(\Selector17~8_combout ),
	.datab(\Selector17~4_combout ),
	.datac(\Selector17~7_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector17~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~9 .lut_mask = 16'hFCFE;
defparam \Selector17~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N8
cycloneive_lcell_comb \ShiftLeft0~68 (
// Equation(s):
// \ShiftLeft0~68_combout  = (\aluif.b[2]~input_o  & (\ShiftLeft0~66_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftLeft0~67_combout )))

	.dataa(gnd),
	.datab(\ShiftLeft0~66_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\ShiftLeft0~67_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~68_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~68 .lut_mask = 16'hCFC0;
defparam \ShiftLeft0~68 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N22
cycloneive_lcell_comb \ShiftLeft0~64 (
// Equation(s):
// \ShiftLeft0~64_combout  = (!\aluif.b[3]~input_o  & ((\aluif.b[2]~input_o  & (\ShiftLeft0~62_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftLeft0~63_combout )))))

	.dataa(\aluif.b[2]~input_o ),
	.datab(\ShiftLeft0~62_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\ShiftLeft0~63_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~64_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~64 .lut_mask = 16'h0D08;
defparam \ShiftLeft0~64 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N10
cycloneive_lcell_comb \ShiftLeft0~69 (
// Equation(s):
// \ShiftLeft0~69_combout  = (\ShiftLeft0~64_combout ) # ((\aluif.b[3]~input_o  & \ShiftLeft0~68_combout ))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\ShiftLeft0~68_combout ),
	.datac(\ShiftLeft0~64_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~69_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~69 .lut_mask = 16'hF8F8;
defparam \ShiftLeft0~69 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N22
cycloneive_lcell_comb \Selector17~11 (
// Equation(s):
// \Selector17~11_combout  = (!\aluif.b[3]~input_o  & (\ShiftRight1~2_combout  & (!\aluif.b[2]~input_o  & !\aluif.b[1]~input_o )))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\ShiftRight1~2_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\aluif.b[1]~input_o ),
	.cin(gnd),
	.combout(\Selector17~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~11 .lut_mask = 16'h0004;
defparam \Selector17~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N6
cycloneive_lcell_comb \ShiftRight1~23 (
// Equation(s):
// \ShiftRight1~23_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[20]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[18]~input_o ))

	.dataa(gnd),
	.datab(\aluif.a[18]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[20]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~23_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~23 .lut_mask = 16'hFC0C;
defparam \ShiftRight1~23 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N22
cycloneive_lcell_comb \ShiftRight1~56 (
// Equation(s):
// \ShiftRight1~56_combout  = (\aluif.b[0]~input_o  & ((\ShiftRight1~28_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftRight1~23_combout ))

	.dataa(\ShiftRight1~23_combout ),
	.datab(gnd),
	.datac(\ShiftRight1~28_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~56_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~56 .lut_mask = 16'hF0AA;
defparam \ShiftRight1~56 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N28
cycloneive_lcell_comb \Selector17~2 (
// Equation(s):
// \Selector17~2_combout  = (\Selector23~3_combout  & ((\ShiftRight1~48_combout ) # ((\Selector23~4_combout  & \ShiftRight1~56_combout )))) # (!\Selector23~3_combout  & (\Selector23~4_combout  & (\ShiftRight1~56_combout )))

	.dataa(\Selector23~3_combout ),
	.datab(\Selector23~4_combout ),
	.datac(\ShiftRight1~56_combout ),
	.datad(\ShiftRight1~48_combout ),
	.cin(gnd),
	.combout(\Selector17~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~2 .lut_mask = 16'hEAC0;
defparam \Selector17~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y14_N6
cycloneive_lcell_comb \Selector17~3 (
// Equation(s):
// \Selector17~3_combout  = (\Selector17~11_combout  & ((\Selector23~1_combout ) # ((\Selector17~2_combout  & \aluif.b[2]~input_o )))) # (!\Selector17~11_combout  & (\Selector17~2_combout  & ((\aluif.b[2]~input_o ))))

	.dataa(\Selector17~11_combout ),
	.datab(\Selector17~2_combout ),
	.datac(\Selector23~1_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector17~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~3 .lut_mask = 16'hECA0;
defparam \Selector17~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y14_N0
cycloneive_lcell_comb \Selector17~10 (
// Equation(s):
// \Selector17~10_combout  = (\Selector17~9_combout ) # ((\Selector17~3_combout ) # ((\Selector30~7_combout  & \ShiftLeft0~69_combout )))

	.dataa(\Selector17~9_combout ),
	.datab(\Selector30~7_combout ),
	.datac(\ShiftLeft0~69_combout ),
	.datad(\Selector17~3_combout ),
	.cin(gnd),
	.combout(\Selector17~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~10 .lut_mask = 16'hFFEA;
defparam \Selector17~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y11_N22
cycloneive_lcell_comb \Equal10~7 (
// Equation(s):
// \Equal10~7_combout  = (!\Selector19~7_combout  & (!\Selector8~9_combout  & (!\Selector24~13_combout  & !\Selector17~10_combout )))

	.dataa(\Selector19~7_combout ),
	.datab(\Selector8~9_combout ),
	.datac(\Selector24~13_combout ),
	.datad(\Selector17~10_combout ),
	.cin(gnd),
	.combout(\Equal10~7_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~7 .lut_mask = 16'h0001;
defparam \Equal10~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N26
cycloneive_lcell_comb \Selector7~6 (
// Equation(s):
// \Selector7~6_combout  = (\Selector0~20_combout  & ((\aluif.a[24]~input_o ) # ((\aluif.b[24]~input_o )))) # (!\Selector0~20_combout  & (\aluif.a[24]~input_o  & (\aluif.b[24]~input_o  & \Selector0~21_combout )))

	.dataa(\Selector0~20_combout ),
	.datab(\aluif.a[24]~input_o ),
	.datac(\aluif.b[24]~input_o ),
	.datad(\Selector0~21_combout ),
	.cin(gnd),
	.combout(\Selector7~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~6 .lut_mask = 16'hE8A8;
defparam \Selector7~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N20
cycloneive_lcell_comb \Selector7~13 (
// Equation(s):
// \Selector7~13_combout  = (\aluif.a[31]~input_o  & ((\Selector10~4_combout ) # ((\Selector10~3_combout  & \aluif.b[3]~input_o ))))

	.dataa(\Selector10~4_combout ),
	.datab(\Selector10~3_combout ),
	.datac(\aluif.a[31]~input_o ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector7~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~13 .lut_mask = 16'hE0A0;
defparam \Selector7~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N28
cycloneive_lcell_comb \ShiftRight0~9 (
// Equation(s):
// \ShiftRight0~9_combout  = (\aluif.b[2]~input_o  & (\ShiftRight0~6_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftRight0~8_combout )))

	.dataa(\ShiftRight0~6_combout ),
	.datab(gnd),
	.datac(\ShiftRight0~8_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~9_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~9 .lut_mask = 16'hAAF0;
defparam \ShiftRight0~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N20
cycloneive_lcell_comb \Selector7~5 (
// Equation(s):
// \Selector7~5_combout  = (\ShiftRight0~9_combout  & ((\Selector6~2_combout ) # ((\Selector10~3_combout  & !\aluif.b[3]~input_o ))))

	.dataa(\Selector6~2_combout ),
	.datab(\Selector10~3_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\ShiftRight0~9_combout ),
	.cin(gnd),
	.combout(\Selector7~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~5 .lut_mask = 16'hAE00;
defparam \Selector7~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N20
cycloneive_lcell_comb \ShiftLeft0~91 (
// Equation(s):
// \ShiftLeft0~91_combout  = (!\aluif.b[1]~input_o  & (!\aluif.b[0]~input_o  & (\aluif.b[3]~input_o  & !\aluif.b[2]~input_o )))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~91_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~91 .lut_mask = 16'h0010;
defparam \ShiftLeft0~91 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N20
cycloneive_lcell_comb \ShiftLeft0~92 (
// Equation(s):
// \ShiftLeft0~92_combout  = (\ShiftLeft0~91_combout  & ((\aluif.a[0]~input_o ) # ((\ShiftLeft0~33_combout  & \ShiftLeft0~82_combout )))) # (!\ShiftLeft0~91_combout  & (\ShiftLeft0~33_combout  & (\ShiftLeft0~82_combout )))

	.dataa(\ShiftLeft0~91_combout ),
	.datab(\ShiftLeft0~33_combout ),
	.datac(\ShiftLeft0~82_combout ),
	.datad(\aluif.a[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~92_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~92 .lut_mask = 16'hEAC0;
defparam \ShiftLeft0~92 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N6
cycloneive_lcell_comb \ShiftLeft0~96 (
// Equation(s):
// \ShiftLeft0~96_combout  = (\ShiftLeft0~92_combout ) # ((\ShiftLeft0~52_combout  & (!\aluif.b[3]~input_o  & \aluif.b[2]~input_o )))

	.dataa(\ShiftLeft0~52_combout ),
	.datab(\ShiftLeft0~92_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~96_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~96 .lut_mask = 16'hCECC;
defparam \ShiftLeft0~96 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N2
cycloneive_lcell_comb \ShiftLeft0~89 (
// Equation(s):
// \ShiftLeft0~89_combout  = (\aluif.b[2]~input_o  & ((\ShiftLeft0~83_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftLeft0~79_combout ))

	.dataa(gnd),
	.datab(\ShiftLeft0~79_combout ),
	.datac(\ShiftLeft0~83_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~89_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~89 .lut_mask = 16'hF0CC;
defparam \ShiftLeft0~89 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N18
cycloneive_lcell_comb \Selector7~9 (
// Equation(s):
// \Selector7~9_combout  = (\Selector7~3_combout  & (((\ShiftLeft0~89_combout ) # (\Selector7~4_combout )))) # (!\Selector7~3_combout  & (\ShiftLeft0~94_combout  & ((!\Selector7~4_combout ))))

	.dataa(\ShiftLeft0~94_combout ),
	.datab(\ShiftLeft0~89_combout ),
	.datac(\Selector7~3_combout ),
	.datad(\Selector7~4_combout ),
	.cin(gnd),
	.combout(\Selector7~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~9 .lut_mask = 16'hF0CA;
defparam \Selector7~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N28
cycloneive_lcell_comb \Selector7~10 (
// Equation(s):
// \Selector7~10_combout  = (\Selector7~9_combout  & ((\ShiftLeft0~96_combout ) # ((!\Selector7~4_combout )))) # (!\Selector7~9_combout  & (((\ShiftLeft0~80_combout  & \Selector7~4_combout ))))

	.dataa(\ShiftLeft0~96_combout ),
	.datab(\Selector7~9_combout ),
	.datac(\ShiftLeft0~80_combout ),
	.datad(\Selector7~4_combout ),
	.cin(gnd),
	.combout(\Selector7~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~10 .lut_mask = 16'hB8CC;
defparam \Selector7~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N20
cycloneive_lcell_comb \Selector7~8 (
// Equation(s):
// \Selector7~8_combout  = (\Add1~48_combout  & ((\Selector0~19_combout ) # ((\Selector0~6_combout  & \Add0~48_combout )))) # (!\Add1~48_combout  & (\Selector0~6_combout  & ((\Add0~48_combout ))))

	.dataa(\Add1~48_combout ),
	.datab(\Selector0~6_combout ),
	.datac(\Selector0~19_combout ),
	.datad(\Add0~48_combout ),
	.cin(gnd),
	.combout(\Selector7~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~8 .lut_mask = 16'hECA0;
defparam \Selector7~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N12
cycloneive_lcell_comb \Selector7~7 (
// Equation(s):
// \Selector7~7_combout  = (\Selector0~7_combout  & (\aluif.b[24]~input_o  $ (\aluif.a[24]~input_o )))

	.dataa(\aluif.b[24]~input_o ),
	.datab(\aluif.a[24]~input_o ),
	.datac(gnd),
	.datad(\Selector0~7_combout ),
	.cin(gnd),
	.combout(\Selector7~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~7 .lut_mask = 16'h6600;
defparam \Selector7~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N6
cycloneive_lcell_comb \Selector7~11 (
// Equation(s):
// \Selector7~11_combout  = (\Selector7~8_combout ) # ((\Selector7~7_combout ) # ((\Selector7~10_combout  & \Selector0~4_combout )))

	.dataa(\Selector7~10_combout ),
	.datab(\Selector7~8_combout ),
	.datac(\Selector0~4_combout ),
	.datad(\Selector7~7_combout ),
	.cin(gnd),
	.combout(\Selector7~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~11 .lut_mask = 16'hFFEC;
defparam \Selector7~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N16
cycloneive_lcell_comb \Selector7~12 (
// Equation(s):
// \Selector7~12_combout  = (\Selector7~6_combout ) # ((\Selector7~13_combout ) # ((\Selector7~5_combout ) # (\Selector7~11_combout )))

	.dataa(\Selector7~6_combout ),
	.datab(\Selector7~13_combout ),
	.datac(\Selector7~5_combout ),
	.datad(\Selector7~11_combout ),
	.cin(gnd),
	.combout(\Selector7~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~12 .lut_mask = 16'hFFFE;
defparam \Selector7~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y11_N10
cycloneive_lcell_comb \Equal10~9 (
// Equation(s):
// \Equal10~9_combout  = (!\Selector4~8_combout  & (\Equal10~8_combout  & (\Equal10~7_combout  & !\Selector7~12_combout )))

	.dataa(\Selector4~8_combout ),
	.datab(\Equal10~8_combout ),
	.datac(\Equal10~7_combout ),
	.datad(\Selector7~12_combout ),
	.cin(gnd),
	.combout(\Equal10~9_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~9 .lut_mask = 16'h0040;
defparam \Equal10~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N4
cycloneive_lcell_comb \out~2 (
// Equation(s):
// \out~2_combout  = \aluif.b[5]~input_o  $ (\aluif.a[5]~input_o )

	.dataa(gnd),
	.datab(\aluif.b[5]~input_o ),
	.datac(\aluif.a[5]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\out~2_combout ),
	.cout());
// synopsys translate_off
defparam \out~2 .lut_mask = 16'h3C3C;
defparam \out~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N30
cycloneive_lcell_comb \Selector26~4 (
// Equation(s):
// \Selector26~4_combout  = (\Selector0~7_combout  & ((\out~2_combout ) # ((\Selector0~19_combout  & \Add1~10_combout )))) # (!\Selector0~7_combout  & (((\Selector0~19_combout  & \Add1~10_combout ))))

	.dataa(\Selector0~7_combout ),
	.datab(\out~2_combout ),
	.datac(\Selector0~19_combout ),
	.datad(\Add1~10_combout ),
	.cin(gnd),
	.combout(\Selector26~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~4 .lut_mask = 16'hF888;
defparam \Selector26~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N0
cycloneive_lcell_comb \ShiftRight1~24 (
// Equation(s):
// \ShiftRight1~24_combout  = (\aluif.b[0]~input_o  & (\ShiftRight1~23_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftRight0~2_combout )))

	.dataa(\ShiftRight1~23_combout ),
	.datab(\ShiftRight0~2_combout ),
	.datac(gnd),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~24_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~24 .lut_mask = 16'hAACC;
defparam \ShiftRight1~24 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N14
cycloneive_lcell_comb \ShiftRight0~13 (
// Equation(s):
// \ShiftRight0~13_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[11]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[9]~input_o ))

	.dataa(\aluif.a[9]~input_o ),
	.datab(gnd),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[11]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~13_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~13 .lut_mask = 16'hFA0A;
defparam \ShiftRight0~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X82_Y12_N2
cycloneive_lcell_comb \ShiftRight1~8 (
// Equation(s):
// \ShiftRight1~8_combout  = (\aluif.b[1]~input_o  & ((\aluif.a[12]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[10]~input_o ))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[10]~input_o ),
	.datac(\aluif.a[12]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight1~8_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~8 .lut_mask = 16'hE4E4;
defparam \ShiftRight1~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N18
cycloneive_lcell_comb \ShiftRight1~9 (
// Equation(s):
// \ShiftRight1~9_combout  = (\aluif.b[0]~input_o  & ((\ShiftRight1~8_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftRight0~13_combout ))

	.dataa(\ShiftRight0~13_combout ),
	.datab(gnd),
	.datac(\ShiftRight1~8_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~9_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~9 .lut_mask = 16'hF0AA;
defparam \ShiftRight1~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N14
cycloneive_lcell_comb \Selector26~5 (
// Equation(s):
// \Selector26~5_combout  = (\Selector23~4_combout  & ((\ShiftRight1~9_combout ) # ((\ShiftRight1~24_combout  & \Selector23~3_combout )))) # (!\Selector23~4_combout  & (\ShiftRight1~24_combout  & (\Selector23~3_combout )))

	.dataa(\Selector23~4_combout ),
	.datab(\ShiftRight1~24_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\ShiftRight1~9_combout ),
	.cin(gnd),
	.combout(\Selector26~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~5 .lut_mask = 16'hEAC0;
defparam \Selector26~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y13_N20
cycloneive_lcell_comb \ShiftRight1~15 (
// Equation(s):
// \ShiftRight1~15_combout  = (\aluif.b[0]~input_o  & (\ShiftRight1~14_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftRight0~11_combout )))

	.dataa(\ShiftRight1~14_combout ),
	.datab(gnd),
	.datac(\ShiftRight0~11_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~15_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~15 .lut_mask = 16'hAAF0;
defparam \ShiftRight1~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N0
cycloneive_lcell_comb \Selector26~6 (
// Equation(s):
// \Selector26~6_combout  = (\aluif.b[2]~input_o  & (\Selector26~5_combout )) # (!\aluif.b[2]~input_o  & (((\Selector23~3_combout  & \ShiftRight1~15_combout ))))

	.dataa(\aluif.b[2]~input_o ),
	.datab(\Selector26~5_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\ShiftRight1~15_combout ),
	.cin(gnd),
	.combout(\Selector26~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~6 .lut_mask = 16'hD888;
defparam \Selector26~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N12
cycloneive_lcell_comb \ShiftRight1~22 (
// Equation(s):
// \ShiftRight1~22_combout  = (\aluif.b[0]~input_o  & (\ShiftRight1~21_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftRight0~0_combout )))

	.dataa(\ShiftRight1~21_combout ),
	.datab(gnd),
	.datac(\ShiftRight0~0_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~22_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~22 .lut_mask = 16'hAAF0;
defparam \ShiftRight1~22 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N4
cycloneive_lcell_comb \ShiftRight1~40 (
// Equation(s):
// \ShiftRight1~40_combout  = (\Selector7~2_combout  & ((\ShiftRight1~19_combout ) # ((\ShiftLeft0~33_combout  & \ShiftRight1~22_combout )))) # (!\Selector7~2_combout  & (((\ShiftLeft0~33_combout  & \ShiftRight1~22_combout ))))

	.dataa(\Selector7~2_combout ),
	.datab(\ShiftRight1~19_combout ),
	.datac(\ShiftLeft0~33_combout ),
	.datad(\ShiftRight1~22_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~40_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~40 .lut_mask = 16'hF888;
defparam \ShiftRight1~40 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N10
cycloneive_lcell_comb \Selector26~7 (
// Equation(s):
// \Selector26~7_combout  = (\Selector26~4_combout ) # ((\Selector26~6_combout ) # ((\Selector23~1_combout  & \ShiftRight1~40_combout )))

	.dataa(\Selector26~4_combout ),
	.datab(\Selector23~1_combout ),
	.datac(\Selector26~6_combout ),
	.datad(\ShiftRight1~40_combout ),
	.cin(gnd),
	.combout(\Selector26~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~7 .lut_mask = 16'hFEFA;
defparam \Selector26~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N24
cycloneive_lcell_comb \ShiftRight1~41 (
// Equation(s):
// \ShiftRight1~41_combout  = (\aluif.b[1]~input_o  & (((\aluif.a[31]~input_o )))) # (!\aluif.b[1]~input_o  & ((\aluif.b[2]~input_o  & ((\aluif.a[31]~input_o ))) # (!\aluif.b[2]~input_o  & (\ShiftRight1~16_combout ))))

	.dataa(\ShiftRight1~16_combout ),
	.datab(\aluif.b[1]~input_o ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~41_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~41 .lut_mask = 16'hFE02;
defparam \ShiftRight1~41 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N4
cycloneive_lcell_comb \ShiftRight1~42 (
// Equation(s):
// \ShiftRight1~42_combout  = (\ShiftRight1~40_combout ) # ((\ShiftRight1~41_combout  & \aluif.b[3]~input_o ))

	.dataa(gnd),
	.datab(\ShiftRight1~40_combout ),
	.datac(\ShiftRight1~41_combout ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~42_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~42 .lut_mask = 16'hFCCC;
defparam \ShiftRight1~42 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N2
cycloneive_lcell_comb \Selector26~2 (
// Equation(s):
// \Selector26~2_combout  = (\aluif.a[5]~input_o  & ((\Selector0~20_combout ) # ((\aluif.b[5]~input_o  & \Selector0~21_combout )))) # (!\aluif.a[5]~input_o  & (\aluif.b[5]~input_o  & (\Selector0~20_combout )))

	.dataa(\aluif.a[5]~input_o ),
	.datab(\aluif.b[5]~input_o ),
	.datac(\Selector0~20_combout ),
	.datad(\Selector0~21_combout ),
	.cin(gnd),
	.combout(\Selector26~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~2 .lut_mask = 16'hE8E0;
defparam \Selector26~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y14_N10
cycloneive_lcell_comb \ShiftLeft0~36 (
// Equation(s):
// \ShiftLeft0~36_combout  = (\aluif.b[0]~input_o  & ((\ShiftLeft0~34_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftLeft0~35_combout ))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\ShiftLeft0~35_combout ),
	.datac(\ShiftLeft0~34_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~36_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~36 .lut_mask = 16'hE4E4;
defparam \ShiftLeft0~36 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N6
cycloneive_lcell_comb \ShiftLeft0~50 (
// Equation(s):
// \ShiftLeft0~50_combout  = (\aluif.b[2]~input_o  & (\ShiftLeft0~25_combout  & ((!\aluif.b[1]~input_o )))) # (!\aluif.b[2]~input_o  & (((\ShiftLeft0~36_combout ))))

	.dataa(\ShiftLeft0~25_combout ),
	.datab(\ShiftLeft0~36_combout ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~50_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~50 .lut_mask = 16'h0ACC;
defparam \ShiftLeft0~50 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N8
cycloneive_lcell_comb \Selector26~3 (
// Equation(s):
// \Selector26~3_combout  = (\Selector26~2_combout ) # ((\Selector0~4_combout  & (!\Selector7~3_combout  & \ShiftLeft0~50_combout )))

	.dataa(\Selector26~2_combout ),
	.datab(\Selector0~4_combout ),
	.datac(\Selector7~3_combout ),
	.datad(\ShiftLeft0~50_combout ),
	.cin(gnd),
	.combout(\Selector26~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~3 .lut_mask = 16'hAEAA;
defparam \Selector26~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N22
cycloneive_lcell_comb \Selector26~8 (
// Equation(s):
// \Selector26~8_combout  = (\Selector26~7_combout ) # ((\Selector26~3_combout ) # ((\ShiftRight1~42_combout  & \Selector10~4_combout )))

	.dataa(\Selector26~7_combout ),
	.datab(\ShiftRight1~42_combout ),
	.datac(\Selector26~3_combout ),
	.datad(\Selector10~4_combout ),
	.cin(gnd),
	.combout(\Selector26~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~8 .lut_mask = 16'hFEFA;
defparam \Selector26~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N16
cycloneive_lcell_comb \Selector18~0 (
// Equation(s):
// \Selector18~0_combout  = (\Selector23~1_combout  & \ShiftRight0~21_combout )

	.dataa(gnd),
	.datab(\Selector23~1_combout ),
	.datac(\ShiftRight0~21_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector18~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~0 .lut_mask = 16'hC0C0;
defparam \Selector18~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N24
cycloneive_lcell_comb \ShiftRight1~10 (
// Equation(s):
// \ShiftRight1~10_combout  = (\aluif.b[1]~input_o  & ((\aluif.b[0]~input_o  & (\aluif.a[8]~input_o )) # (!\aluif.b[0]~input_o  & ((\aluif.a[7]~input_o )))))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[8]~input_o ),
	.datac(\aluif.b[0]~input_o ),
	.datad(\aluif.a[7]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~10_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~10 .lut_mask = 16'h8A80;
defparam \ShiftRight1~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N4
cycloneive_lcell_comb \ShiftRight1~12 (
// Equation(s):
// \ShiftRight1~12_combout  = (\ShiftRight1~10_combout ) # ((!\aluif.b[1]~input_o  & \ShiftRight1~11_combout ))

	.dataa(gnd),
	.datab(\ShiftRight1~10_combout ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\ShiftRight1~11_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~12_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~12 .lut_mask = 16'hCFCC;
defparam \ShiftRight1~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N6
cycloneive_lcell_comb \Selector26~0 (
// Equation(s):
// \Selector26~0_combout  = (!\aluif.b[2]~input_o  & (\Selector23~2_combout  & (!\aluif.b[3]~input_o  & !\aluif.opcode[3]~input_o )))

	.dataa(\aluif.b[2]~input_o ),
	.datab(\Selector23~2_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\aluif.opcode[3]~input_o ),
	.cin(gnd),
	.combout(\Selector26~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~0 .lut_mask = 16'h0004;
defparam \Selector26~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N6
cycloneive_lcell_comb \Selector26~1 (
// Equation(s):
// \Selector26~1_combout  = (\Add0~10_combout  & ((\Selector0~6_combout ) # ((\ShiftRight1~12_combout  & \Selector26~0_combout )))) # (!\Add0~10_combout  & (\ShiftRight1~12_combout  & (\Selector26~0_combout )))

	.dataa(\Add0~10_combout ),
	.datab(\ShiftRight1~12_combout ),
	.datac(\Selector26~0_combout ),
	.datad(\Selector0~6_combout ),
	.cin(gnd),
	.combout(\Selector26~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~1 .lut_mask = 16'hEAC0;
defparam \Selector26~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N2
cycloneive_lcell_comb \Selector26~9 (
// Equation(s):
// \Selector26~9_combout  = (\Selector26~8_combout ) # ((\Selector26~1_combout ) # ((\Selector18~0_combout  & \ShiftLeft0~32_combout )))

	.dataa(\Selector26~8_combout ),
	.datab(\Selector18~0_combout ),
	.datac(\ShiftLeft0~32_combout ),
	.datad(\Selector26~1_combout ),
	.cin(gnd),
	.combout(\Selector26~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~9 .lut_mask = 16'hFFEA;
defparam \Selector26~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N20
cycloneive_lcell_comb \out~3 (
// Equation(s):
// \out~3_combout  = \aluif.b[4]~input_o  $ (\aluif.a[4]~input_o )

	.dataa(\aluif.b[4]~input_o ),
	.datab(gnd),
	.datac(gnd),
	.datad(\aluif.a[4]~input_o ),
	.cin(gnd),
	.combout(\out~3_combout ),
	.cout());
// synopsys translate_off
defparam \out~3 .lut_mask = 16'h55AA;
defparam \out~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N16
cycloneive_lcell_comb \Selector27~4 (
// Equation(s):
// \Selector27~4_combout  = (\Selector0~19_combout  & ((\Add1~8_combout ) # ((\out~3_combout  & \Selector0~7_combout )))) # (!\Selector0~19_combout  & (((\out~3_combout  & \Selector0~7_combout ))))

	.dataa(\Selector0~19_combout ),
	.datab(\Add1~8_combout ),
	.datac(\out~3_combout ),
	.datad(\Selector0~7_combout ),
	.cin(gnd),
	.combout(\Selector27~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~4 .lut_mask = 16'hF888;
defparam \Selector27~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N10
cycloneive_lcell_comb \Selector27~5 (
// Equation(s):
// \Selector27~5_combout  = (\Selector27~4_combout ) # ((\ShiftRight0~12_combout  & (\Selector23~3_combout  & !\aluif.b[2]~input_o )))

	.dataa(\ShiftRight0~12_combout ),
	.datab(\Selector27~4_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector27~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~5 .lut_mask = 16'hCCEC;
defparam \Selector27~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N30
cycloneive_lcell_comb \Selector27~6 (
// Equation(s):
// \Selector27~6_combout  = (\Selector27~5_combout ) # ((\ShiftLeft0~53_combout  & (!\Selector7~3_combout  & \Selector0~4_combout )))

	.dataa(\Selector27~5_combout ),
	.datab(\ShiftLeft0~53_combout ),
	.datac(\Selector7~3_combout ),
	.datad(\Selector0~4_combout ),
	.cin(gnd),
	.combout(\Selector27~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~6 .lut_mask = 16'hAEAA;
defparam \Selector27~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N26
cycloneive_lcell_comb \ShiftRight0~16 (
// Equation(s):
// \ShiftRight0~16_combout  = (\aluif.b[1]~input_o  & ((\aluif.b[0]~input_o  & ((\aluif.a[7]~input_o ))) # (!\aluif.b[0]~input_o  & (\aluif.a[6]~input_o ))))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[6]~input_o ),
	.datac(\aluif.b[0]~input_o ),
	.datad(\aluif.a[7]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~16_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~16 .lut_mask = 16'hA808;
defparam \ShiftRight0~16 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N0
cycloneive_lcell_comb \ShiftRight1~6 (
// Equation(s):
// \ShiftRight1~6_combout  = (\aluif.b[0]~input_o  & (\aluif.a[5]~input_o )) # (!\aluif.b[0]~input_o  & ((\aluif.a[4]~input_o )))

	.dataa(\aluif.b[0]~input_o ),
	.datab(gnd),
	.datac(\aluif.a[5]~input_o ),
	.datad(\aluif.a[4]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~6_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~6 .lut_mask = 16'hF5A0;
defparam \ShiftRight1~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N16
cycloneive_lcell_comb \Selector27~7 (
// Equation(s):
// \Selector27~7_combout  = (\Selector26~0_combout  & ((\ShiftRight0~16_combout ) # ((\ShiftRight1~6_combout  & !\aluif.b[1]~input_o ))))

	.dataa(\Selector26~0_combout ),
	.datab(\ShiftRight0~16_combout ),
	.datac(\ShiftRight1~6_combout ),
	.datad(\aluif.b[1]~input_o ),
	.cin(gnd),
	.combout(\Selector27~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~7 .lut_mask = 16'h88A8;
defparam \Selector27~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N26
cycloneive_lcell_comb \Selector27~8 (
// Equation(s):
// \Selector27~8_combout  = (\Selector27~6_combout ) # ((\Selector27~7_combout ) # ((\Selector0~6_combout  & \Add0~8_combout )))

	.dataa(\Selector27~6_combout ),
	.datab(\Selector27~7_combout ),
	.datac(\Selector0~6_combout ),
	.datad(\Add0~8_combout ),
	.cin(gnd),
	.combout(\Selector27~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~8 .lut_mask = 16'hFEEE;
defparam \Selector27~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N2
cycloneive_lcell_comb \ShiftRight1~43 (
// Equation(s):
// \ShiftRight1~43_combout  = (\ShiftRight0~8_combout  & ((\Selector7~2_combout ) # ((\ShiftLeft0~33_combout  & \ShiftRight0~1_combout )))) # (!\ShiftRight0~8_combout  & (\ShiftLeft0~33_combout  & (\ShiftRight0~1_combout )))

	.dataa(\ShiftRight0~8_combout ),
	.datab(\ShiftLeft0~33_combout ),
	.datac(\ShiftRight0~1_combout ),
	.datad(\Selector7~2_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~43_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~43 .lut_mask = 16'hEAC0;
defparam \ShiftRight1~43 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N30
cycloneive_lcell_comb \ShiftRight1~44 (
// Equation(s):
// \ShiftRight1~44_combout  = (\ShiftRight1~33_combout ) # ((\ShiftRight1~43_combout ) # ((\ShiftLeft0~32_combout  & \ShiftRight0~6_combout )))

	.dataa(\ShiftRight1~33_combout ),
	.datab(\ShiftRight1~43_combout ),
	.datac(\ShiftLeft0~32_combout ),
	.datad(\ShiftRight0~6_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~44_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~44 .lut_mask = 16'hFEEE;
defparam \ShiftRight1~44 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N20
cycloneive_lcell_comb \Selector27~0 (
// Equation(s):
// \Selector27~0_combout  = (\Selector23~1_combout  & ((\ShiftRight1~43_combout ) # ((\ShiftLeft0~32_combout  & \ShiftRight0~6_combout ))))

	.dataa(\ShiftLeft0~32_combout ),
	.datab(\ShiftRight1~43_combout ),
	.datac(\Selector23~1_combout ),
	.datad(\ShiftRight0~6_combout ),
	.cin(gnd),
	.combout(\Selector27~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~0 .lut_mask = 16'hE0C0;
defparam \Selector27~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N18
cycloneive_lcell_comb \ShiftRight0~14 (
// Equation(s):
// \ShiftRight0~14_combout  = (\aluif.b[0]~input_o  & ((\ShiftRight0~13_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftRight1~5_combout ))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\ShiftRight1~5_combout ),
	.datac(\ShiftRight0~13_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight0~14_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~14 .lut_mask = 16'hE4E4;
defparam \ShiftRight0~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N20
cycloneive_lcell_comb \Selector27~2 (
// Equation(s):
// \Selector27~2_combout  = (\Selector23~4_combout  & ((\ShiftRight0~14_combout ) # ((\ShiftRight0~3_combout  & \Selector23~3_combout )))) # (!\Selector23~4_combout  & (\ShiftRight0~3_combout  & (\Selector23~3_combout )))

	.dataa(\Selector23~4_combout ),
	.datab(\ShiftRight0~3_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\ShiftRight0~14_combout ),
	.cin(gnd),
	.combout(\Selector27~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~2 .lut_mask = 16'hEAC0;
defparam \Selector27~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N2
cycloneive_lcell_comb \Selector27~1 (
// Equation(s):
// \Selector27~1_combout  = (\Selector0~20_combout  & (((\aluif.a[4]~input_o ) # (\aluif.b[4]~input_o )))) # (!\Selector0~20_combout  & (\Selector0~21_combout  & (\aluif.a[4]~input_o  & \aluif.b[4]~input_o )))

	.dataa(\Selector0~20_combout ),
	.datab(\Selector0~21_combout ),
	.datac(\aluif.a[4]~input_o ),
	.datad(\aluif.b[4]~input_o ),
	.cin(gnd),
	.combout(\Selector27~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~1 .lut_mask = 16'hEAA0;
defparam \Selector27~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N30
cycloneive_lcell_comb \Selector27~3 (
// Equation(s):
// \Selector27~3_combout  = (\Selector27~0_combout ) # ((\Selector27~1_combout ) # ((\Selector27~2_combout  & \aluif.b[2]~input_o )))

	.dataa(\Selector27~0_combout ),
	.datab(\Selector27~2_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\Selector27~1_combout ),
	.cin(gnd),
	.combout(\Selector27~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~3 .lut_mask = 16'hFFEA;
defparam \Selector27~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N4
cycloneive_lcell_comb \Selector27~9 (
// Equation(s):
// \Selector27~9_combout  = (\Selector27~8_combout ) # ((\Selector27~3_combout ) # ((\ShiftRight1~44_combout  & \Selector10~4_combout )))

	.dataa(\Selector27~8_combout ),
	.datab(\ShiftRight1~44_combout ),
	.datac(\Selector27~3_combout ),
	.datad(\Selector10~4_combout ),
	.cin(gnd),
	.combout(\Selector27~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~9 .lut_mask = 16'hFEFA;
defparam \Selector27~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X85_Y0_N1
cycloneive_io_ibuf \aluif.b[29]~input (
	.i(\aluif.b [29]),
	.ibar(gnd),
	.o(\aluif.b[29]~input_o ));
// synopsys translate_off
defparam \aluif.b[29]~input .bus_hold = "false";
defparam \aluif.b[29]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N26
cycloneive_lcell_comb \Add0~58 (
// Equation(s):
// \Add0~58_combout  = (\aluif.a[29]~input_o  & ((\aluif.b[29]~input_o  & (\Add0~57  & VCC)) # (!\aluif.b[29]~input_o  & (!\Add0~57 )))) # (!\aluif.a[29]~input_o  & ((\aluif.b[29]~input_o  & (!\Add0~57 )) # (!\aluif.b[29]~input_o  & ((\Add0~57 ) # (GND)))))
// \Add0~59  = CARRY((\aluif.a[29]~input_o  & (!\aluif.b[29]~input_o  & !\Add0~57 )) # (!\aluif.a[29]~input_o  & ((!\Add0~57 ) # (!\aluif.b[29]~input_o ))))

	.dataa(\aluif.a[29]~input_o ),
	.datab(\aluif.b[29]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~57 ),
	.combout(\Add0~58_combout ),
	.cout(\Add0~59 ));
// synopsys translate_off
defparam \Add0~58 .lut_mask = 16'h9617;
defparam \Add0~58 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N10
cycloneive_lcell_comb \Selector2~3 (
// Equation(s):
// \Selector2~3_combout  = (\aluif.b[29]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.a[29]~input_o )))) # (!\aluif.b[29]~input_o  & (\Selector0~20_combout  & ((\aluif.a[29]~input_o ))))

	.dataa(\aluif.b[29]~input_o ),
	.datab(\Selector0~20_combout ),
	.datac(\Selector0~21_combout ),
	.datad(\aluif.a[29]~input_o ),
	.cin(gnd),
	.combout(\Selector2~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~3 .lut_mask = 16'hEC88;
defparam \Selector2~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N26
cycloneive_lcell_comb \Add1~58 (
// Equation(s):
// \Add1~58_combout  = (\aluif.b[29]~input_o  & ((\aluif.a[29]~input_o  & (!\Add1~57 )) # (!\aluif.a[29]~input_o  & ((\Add1~57 ) # (GND))))) # (!\aluif.b[29]~input_o  & ((\aluif.a[29]~input_o  & (\Add1~57  & VCC)) # (!\aluif.a[29]~input_o  & (!\Add1~57 ))))
// \Add1~59  = CARRY((\aluif.b[29]~input_o  & ((!\Add1~57 ) # (!\aluif.a[29]~input_o ))) # (!\aluif.b[29]~input_o  & (!\aluif.a[29]~input_o  & !\Add1~57 )))

	.dataa(\aluif.b[29]~input_o ),
	.datab(\aluif.a[29]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~57 ),
	.combout(\Add1~58_combout ),
	.cout(\Add1~59 ));
// synopsys translate_off
defparam \Add1~58 .lut_mask = 16'h692B;
defparam \Add1~58 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N12
cycloneive_lcell_comb \Selector2~4 (
// Equation(s):
// \Selector2~4_combout  = (\Selector0~7_combout  & (\aluif.b[29]~input_o  $ (\aluif.a[29]~input_o )))

	.dataa(gnd),
	.datab(\aluif.b[29]~input_o ),
	.datac(\Selector0~7_combout ),
	.datad(\aluif.a[29]~input_o ),
	.cin(gnd),
	.combout(\Selector2~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~4 .lut_mask = 16'h30C0;
defparam \Selector2~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N6
cycloneive_lcell_comb \Selector2~5 (
// Equation(s):
// \Selector2~5_combout  = (\Selector2~3_combout ) # ((\Selector2~4_combout ) # ((\Add1~58_combout  & \Selector0~19_combout )))

	.dataa(\Selector2~3_combout ),
	.datab(\Add1~58_combout ),
	.datac(\Selector0~19_combout ),
	.datad(\Selector2~4_combout ),
	.cin(gnd),
	.combout(\Selector2~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~5 .lut_mask = 16'hFFEA;
defparam \Selector2~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N22
cycloneive_lcell_comb \ShiftLeft0~61 (
// Equation(s):
// \ShiftLeft0~61_combout  = (\aluif.b[2]~input_o  & ((\ShiftLeft0~45_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftLeft0~60_combout ))

	.dataa(\ShiftLeft0~60_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~45_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~61_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~61 .lut_mask = 16'hF0AA;
defparam \ShiftLeft0~61 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N28
cycloneive_lcell_comb \ShiftLeft0~7 (
// Equation(s):
// \ShiftLeft0~7_combout  = (\aluif.b[0]~input_o  & (\aluif.a[28]~input_o )) # (!\aluif.b[0]~input_o  & ((\aluif.a[29]~input_o )))

	.dataa(\aluif.a[28]~input_o ),
	.datab(\aluif.b[0]~input_o ),
	.datac(gnd),
	.datad(\aluif.a[29]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~7_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~7 .lut_mask = 16'hBB88;
defparam \ShiftLeft0~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N12
cycloneive_lcell_comb \Selector2~7 (
// Equation(s):
// \Selector2~7_combout  = (\Selector2~6_combout  & (((!\ShiftLeft0~33_combout )))) # (!\Selector2~6_combout  & ((\ShiftLeft0~33_combout  & (\ShiftLeft0~7_combout )) # (!\ShiftLeft0~33_combout  & ((\ShiftLeft0~57_combout )))))

	.dataa(\Selector2~6_combout ),
	.datab(\ShiftLeft0~7_combout ),
	.datac(\ShiftLeft0~33_combout ),
	.datad(\ShiftLeft0~57_combout ),
	.cin(gnd),
	.combout(\Selector2~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~7 .lut_mask = 16'h4F4A;
defparam \Selector2~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N8
cycloneive_lcell_comb \Selector2~8 (
// Equation(s):
// \Selector2~8_combout  = (\Selector2~6_combout  & ((\Selector2~7_combout  & (\ShiftLeft0~61_combout )) # (!\Selector2~7_combout  & ((\ShiftLeft0~9_combout ))))) # (!\Selector2~6_combout  & (((\Selector2~7_combout ))))

	.dataa(\Selector2~6_combout ),
	.datab(\ShiftLeft0~61_combout ),
	.datac(\Selector2~7_combout ),
	.datad(\ShiftLeft0~9_combout ),
	.cin(gnd),
	.combout(\Selector2~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~8 .lut_mask = 16'hDAD0;
defparam \Selector2~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N26
cycloneive_lcell_comb \Selector2~9 (
// Equation(s):
// \Selector2~9_combout  = (\Selector2~5_combout ) # ((\Selector10~5_combout ) # ((\Selector2~8_combout  & \Selector30~7_combout )))

	.dataa(\Selector2~5_combout ),
	.datab(\Selector10~5_combout ),
	.datac(\Selector2~8_combout ),
	.datad(\Selector30~7_combout ),
	.cin(gnd),
	.combout(\Selector2~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~9 .lut_mask = 16'hFEEE;
defparam \Selector2~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N2
cycloneive_lcell_comb \Selector18~1 (
// Equation(s):
// \Selector18~1_combout  = (\aluif.b[1]~input_o  & (((\aluif.a[31]~input_o )))) # (!\aluif.b[1]~input_o  & ((\ShiftLeft0~33_combout  & (\ShiftRight1~16_combout )) # (!\ShiftLeft0~33_combout  & ((\aluif.a[31]~input_o )))))

	.dataa(\ShiftRight1~16_combout ),
	.datab(\aluif.b[1]~input_o ),
	.datac(\ShiftLeft0~33_combout ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\Selector18~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~1 .lut_mask = 16'hEF20;
defparam \Selector18~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N12
cycloneive_lcell_comb \Selector2~0 (
// Equation(s):
// \Selector2~0_combout  = (\Selector10~3_combout  & \Selector18~1_combout )

	.dataa(gnd),
	.datab(\Selector10~3_combout ),
	.datac(gnd),
	.datad(\Selector18~1_combout ),
	.cin(gnd),
	.combout(\Selector2~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~0 .lut_mask = 16'hCC00;
defparam \Selector2~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N14
cycloneive_lcell_comb \Selector2~1 (
// Equation(s):
// \Selector2~1_combout  = (\Selector2~0_combout ) # ((\ShiftRight0~21_combout  & (\ShiftLeft0~33_combout  & \Selector9~0_combout )))

	.dataa(\ShiftRight0~21_combout ),
	.datab(\ShiftLeft0~33_combout ),
	.datac(\Selector9~0_combout ),
	.datad(\Selector2~0_combout ),
	.cin(gnd),
	.combout(\Selector2~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~1 .lut_mask = 16'hFF80;
defparam \Selector2~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N10
cycloneive_lcell_comb \Selector10~6 (
// Equation(s):
// \Selector10~6_combout  = (\aluif.b[2]~input_o  & ((\ShiftLeft0~39_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftLeft0~42_combout ))

	.dataa(\ShiftLeft0~42_combout ),
	.datab(\ShiftLeft0~39_combout ),
	.datac(gnd),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector10~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~6 .lut_mask = 16'hCCAA;
defparam \Selector10~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N12
cycloneive_lcell_comb \ShiftLeft0~54 (
// Equation(s):
// \ShiftLeft0~54_combout  = (\aluif.b[3]~input_o  & ((\ShiftLeft0~50_combout ))) # (!\aluif.b[3]~input_o  & (\Selector10~6_combout ))

	.dataa(\Selector10~6_combout ),
	.datab(gnd),
	.datac(\aluif.b[3]~input_o ),
	.datad(\ShiftLeft0~50_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~54_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~54 .lut_mask = 16'hFA0A;
defparam \ShiftLeft0~54 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N0
cycloneive_lcell_comb \Selector2~2 (
// Equation(s):
// \Selector2~2_combout  = (\Selector2~1_combout ) # ((\aluif.b[4]~input_o  & (\ShiftLeft0~54_combout  & \Selector0~4_combout )))

	.dataa(\aluif.b[4]~input_o ),
	.datab(\Selector2~1_combout ),
	.datac(\ShiftLeft0~54_combout ),
	.datad(\Selector0~4_combout ),
	.cin(gnd),
	.combout(\Selector2~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~2 .lut_mask = 16'hECCC;
defparam \Selector2~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N28
cycloneive_lcell_comb \Selector2~10 (
// Equation(s):
// \Selector2~10_combout  = (\Selector2~9_combout ) # ((\Selector2~2_combout ) # ((\Add0~58_combout  & \Selector0~6_combout )))

	.dataa(\Add0~58_combout ),
	.datab(\Selector0~6_combout ),
	.datac(\Selector2~9_combout ),
	.datad(\Selector2~2_combout ),
	.cin(gnd),
	.combout(\Selector2~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~10 .lut_mask = 16'hFFF8;
defparam \Selector2~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N12
cycloneive_lcell_comb \Selector1~4 (
// Equation(s):
// \Selector1~4_combout  = (!\aluif.b[3]~input_o  & \Selector0~4_combout )

	.dataa(gnd),
	.datab(\aluif.b[3]~input_o ),
	.datac(gnd),
	.datad(\Selector0~4_combout ),
	.cin(gnd),
	.combout(\Selector1~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~4 .lut_mask = 16'h3300;
defparam \Selector1~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N14
cycloneive_lcell_comb \Selector1~5 (
// Equation(s):
// \Selector1~5_combout  = (!\aluif.b[1]~input_o  & ((\aluif.b[0]~input_o  & ((\aluif.a[29]~input_o ))) # (!\aluif.b[0]~input_o  & (\aluif.a[30]~input_o ))))

	.dataa(\aluif.a[30]~input_o ),
	.datab(\aluif.b[0]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.a[29]~input_o ),
	.cin(gnd),
	.combout(\Selector1~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~5 .lut_mask = 16'h0E02;
defparam \Selector1~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N14
cycloneive_lcell_comb \Selector1~6 (
// Equation(s):
// \Selector1~6_combout  = (!\aluif.b[2]~input_o  & ((\Selector1~5_combout ) # ((\aluif.b[1]~input_o  & \ShiftLeft0~73_combout ))))

	.dataa(\Selector1~5_combout ),
	.datab(\aluif.b[2]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\ShiftLeft0~73_combout ),
	.cin(gnd),
	.combout(\Selector1~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~6 .lut_mask = 16'h3222;
defparam \Selector1~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N20
cycloneive_lcell_comb \Selector1~7 (
// Equation(s):
// \Selector1~7_combout  = (\Selector1~4_combout  & ((\Selector1~6_combout ) # ((\ShiftLeft0~76_combout  & \aluif.b[2]~input_o ))))

	.dataa(\Selector1~4_combout ),
	.datab(\Selector1~6_combout ),
	.datac(\ShiftLeft0~76_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector1~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~7 .lut_mask = 16'hA888;
defparam \Selector1~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N12
cycloneive_lcell_comb \Selector1~1 (
// Equation(s):
// \Selector1~1_combout  = (\Selector0~4_combout  & \aluif.b[3]~input_o )

	.dataa(gnd),
	.datab(gnd),
	.datac(\Selector0~4_combout ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector1~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~1 .lut_mask = 16'hF000;
defparam \Selector1~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N0
cycloneive_lcell_comb \Selector1~2 (
// Equation(s):
// \Selector1~2_combout  = (\Selector1~1_combout  & ((\aluif.b[2]~input_o  & (\ShiftLeft0~70_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftLeft0~72_combout )))))

	.dataa(\ShiftLeft0~70_combout ),
	.datab(\ShiftLeft0~72_combout ),
	.datac(\Selector1~1_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector1~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~2 .lut_mask = 16'hA0C0;
defparam \Selector1~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N0
cycloneive_lcell_comb \Selector0~0 (
// Equation(s):
// \Selector0~0_combout  = (\aluif.opcode[0]~input_o  & (!\aluif.opcode[1]~input_o  & (!\aluif.opcode[3]~input_o  & !\aluif.opcode[2]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~0 .lut_mask = 16'h0002;
defparam \Selector0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N0
cycloneive_lcell_comb \Selector1~3 (
// Equation(s):
// \Selector1~3_combout  = (\ShiftLeft0~33_combout  & (!\aluif.b[1]~input_o  & (\ShiftRight1~2_combout  & \Selector0~0_combout )))

	.dataa(\ShiftLeft0~33_combout ),
	.datab(\aluif.b[1]~input_o ),
	.datac(\ShiftRight1~2_combout ),
	.datad(\Selector0~0_combout ),
	.cin(gnd),
	.combout(\Selector1~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~3 .lut_mask = 16'h2000;
defparam \Selector1~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y14_N10
cycloneive_lcell_comb \Selector1~8 (
// Equation(s):
// \Selector1~8_combout  = (!\aluif.b[4]~input_o  & ((\Selector1~7_combout ) # ((\Selector1~2_combout ) # (\Selector1~3_combout ))))

	.dataa(\aluif.b[4]~input_o ),
	.datab(\Selector1~7_combout ),
	.datac(\Selector1~2_combout ),
	.datad(\Selector1~3_combout ),
	.cin(gnd),
	.combout(\Selector1~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~8 .lut_mask = 16'h5554;
defparam \Selector1~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N14
cycloneive_lcell_comb \Selector0~3 (
// Equation(s):
// \Selector0~3_combout  = (\aluif.opcode[0]~input_o  & (!\aluif.opcode[1]~input_o  & (!\aluif.opcode[3]~input_o  & \aluif.opcode[2]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~3 .lut_mask = 16'h0200;
defparam \Selector0~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X74_Y0_N8
cycloneive_io_ibuf \aluif.b[30]~input (
	.i(\aluif.b [30]),
	.ibar(gnd),
	.o(\aluif.b[30]~input_o ));
// synopsys translate_off
defparam \aluif.b[30]~input .bus_hold = "false";
defparam \aluif.b[30]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N20
cycloneive_lcell_comb \Selector0~2 (
// Equation(s):
// \Selector0~2_combout  = (!\aluif.opcode[0]~input_o  & (\aluif.opcode[1]~input_o  & (!\aluif.opcode[3]~input_o  & \aluif.opcode[2]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~2 .lut_mask = 16'h0400;
defparam \Selector0~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N26
cycloneive_lcell_comb \Selector1~9 (
// Equation(s):
// \Selector1~9_combout  = (\Selector0~2_combout ) # ((\Selector0~3_combout  & \aluif.b[30]~input_o ))

	.dataa(gnd),
	.datab(\Selector0~3_combout ),
	.datac(\aluif.b[30]~input_o ),
	.datad(\Selector0~2_combout ),
	.cin(gnd),
	.combout(\Selector1~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~9 .lut_mask = 16'hFFC0;
defparam \Selector1~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N18
cycloneive_lcell_comb \ShiftLeft0~6 (
// Equation(s):
// \ShiftLeft0~6_combout  = (\aluif.b[4]~input_o ) # (!\Selector15~1_combout )

	.dataa(gnd),
	.datab(gnd),
	.datac(\aluif.b[4]~input_o ),
	.datad(\Selector15~1_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~6_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~6 .lut_mask = 16'hF0FF;
defparam \ShiftLeft0~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N18
cycloneive_lcell_comb \Selector0~1 (
// Equation(s):
// \Selector0~1_combout  = (!\aluif.opcode[0]~input_o  & (\aluif.opcode[1]~input_o  & (!\aluif.opcode[3]~input_o  & !\aluif.opcode[2]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~1 .lut_mask = 16'h0004;
defparam \Selector0~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N4
cycloneive_lcell_comb \Selector1~10 (
// Equation(s):
// \Selector1~10_combout  = (\aluif.a[30]~input_o  & ((\Selector1~9_combout ) # ((!\ShiftLeft0~6_combout  & \Selector0~1_combout ))))

	.dataa(\Selector1~9_combout ),
	.datab(\ShiftLeft0~6_combout ),
	.datac(\aluif.a[30]~input_o ),
	.datad(\Selector0~1_combout ),
	.cin(gnd),
	.combout(\Selector1~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~10 .lut_mask = 16'hB0A0;
defparam \Selector1~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N10
cycloneive_lcell_comb \Selector1~13 (
// Equation(s):
// \Selector1~13_combout  = (\Selector0~1_combout  & \aluif.a[31]~input_o )

	.dataa(gnd),
	.datab(\Selector0~1_combout ),
	.datac(gnd),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\Selector1~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~13 .lut_mask = 16'hCC00;
defparam \Selector1~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N28
cycloneive_lcell_comb \Add1~60 (
// Equation(s):
// \Add1~60_combout  = ((\aluif.a[30]~input_o  $ (\aluif.b[30]~input_o  $ (\Add1~59 )))) # (GND)
// \Add1~61  = CARRY((\aluif.a[30]~input_o  & ((!\Add1~59 ) # (!\aluif.b[30]~input_o ))) # (!\aluif.a[30]~input_o  & (!\aluif.b[30]~input_o  & !\Add1~59 )))

	.dataa(\aluif.a[30]~input_o ),
	.datab(\aluif.b[30]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~59 ),
	.combout(\Add1~60_combout ),
	.cout(\Add1~61 ));
// synopsys translate_off
defparam \Add1~60 .lut_mask = 16'h962B;
defparam \Add1~60 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N28
cycloneive_lcell_comb \Add0~60 (
// Equation(s):
// \Add0~60_combout  = ((\aluif.a[30]~input_o  $ (\aluif.b[30]~input_o  $ (!\Add0~59 )))) # (GND)
// \Add0~61  = CARRY((\aluif.a[30]~input_o  & ((\aluif.b[30]~input_o ) # (!\Add0~59 ))) # (!\aluif.a[30]~input_o  & (\aluif.b[30]~input_o  & !\Add0~59 )))

	.dataa(\aluif.a[30]~input_o ),
	.datab(\aluif.b[30]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~59 ),
	.combout(\Add0~60_combout ),
	.cout(\Add0~61 ));
// synopsys translate_off
defparam \Add0~60 .lut_mask = 16'h698E;
defparam \Add0~60 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N4
cycloneive_lcell_comb \Selector0~5 (
// Equation(s):
// \Selector0~5_combout  = (!\aluif.opcode[0]~input_o  & (!\aluif.opcode[1]~input_o  & (!\aluif.opcode[3]~input_o  & \aluif.opcode[2]~input_o )))

	.dataa(\aluif.opcode[0]~input_o ),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~5 .lut_mask = 16'h0100;
defparam \Selector0~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N0
cycloneive_lcell_comb \Selector1~12 (
// Equation(s):
// \Selector1~12_combout  = (\Selector0~6_combout  & ((\Add0~60_combout ) # ((\Add1~60_combout  & \Selector0~5_combout )))) # (!\Selector0~6_combout  & (\Add1~60_combout  & ((\Selector0~5_combout ))))

	.dataa(\Selector0~6_combout ),
	.datab(\Add1~60_combout ),
	.datac(\Add0~60_combout ),
	.datad(\Selector0~5_combout ),
	.cin(gnd),
	.combout(\Selector1~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~12 .lut_mask = 16'hECA0;
defparam \Selector1~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N22
cycloneive_lcell_comb \Selector1~11 (
// Equation(s):
// \Selector1~11_combout  = (\aluif.b[30]~input_o  & ((\Selector0~2_combout ) # ((!\aluif.a[30]~input_o  & \Selector0~7_combout )))) # (!\aluif.b[30]~input_o  & (\aluif.a[30]~input_o  & (\Selector0~7_combout )))

	.dataa(\aluif.a[30]~input_o ),
	.datab(\aluif.b[30]~input_o ),
	.datac(\Selector0~7_combout ),
	.datad(\Selector0~2_combout ),
	.cin(gnd),
	.combout(\Selector1~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~11 .lut_mask = 16'hEC60;
defparam \Selector1~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N12
cycloneive_lcell_comb \Selector1~14 (
// Equation(s):
// \Selector1~14_combout  = (\Selector1~12_combout ) # ((\Selector1~11_combout ) # ((\Selector1~13_combout  & \ShiftLeft0~6_combout )))

	.dataa(\Selector1~13_combout ),
	.datab(\Selector1~12_combout ),
	.datac(\Selector1~11_combout ),
	.datad(\ShiftLeft0~6_combout ),
	.cin(gnd),
	.combout(\Selector1~14_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~14 .lut_mask = 16'hFEFC;
defparam \Selector1~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y14_N24
cycloneive_lcell_comb \Selector1~0 (
// Equation(s):
// \Selector1~0_combout  = (\aluif.b[4]~input_o  & (\ShiftLeft0~69_combout  & \Selector0~4_combout ))

	.dataa(\aluif.b[4]~input_o ),
	.datab(gnd),
	.datac(\ShiftLeft0~69_combout ),
	.datad(\Selector0~4_combout ),
	.cin(gnd),
	.combout(\Selector1~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~0 .lut_mask = 16'hA000;
defparam \Selector1~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y14_N20
cycloneive_lcell_comb \Selector1~15 (
// Equation(s):
// \Selector1~15_combout  = (\Selector1~8_combout ) # ((\Selector1~10_combout ) # ((\Selector1~14_combout ) # (\Selector1~0_combout )))

	.dataa(\Selector1~8_combout ),
	.datab(\Selector1~10_combout ),
	.datac(\Selector1~14_combout ),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\Selector1~15_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~15 .lut_mask = 16'hFFFE;
defparam \Selector1~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N28
cycloneive_lcell_comb \Equal10~2 (
// Equation(s):
// \Equal10~2_combout  = (!\Selector26~9_combout  & (!\Selector27~9_combout  & (!\Selector2~10_combout  & !\Selector1~15_combout )))

	.dataa(\Selector26~9_combout ),
	.datab(\Selector27~9_combout ),
	.datac(\Selector2~10_combout ),
	.datad(\Selector1~15_combout ),
	.cin(gnd),
	.combout(\Equal10~2_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~2 .lut_mask = 16'h0001;
defparam \Equal10~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N2
cycloneive_lcell_comb \Selector0~11 (
// Equation(s):
// \Selector0~11_combout  = (\aluif.b[3]~input_o  & ((\aluif.b[2]~input_o  & ((\ShiftLeft0~13_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftLeft0~16_combout ))))

	.dataa(\ShiftLeft0~16_combout ),
	.datab(\ShiftLeft0~13_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector0~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~11 .lut_mask = 16'hCA00;
defparam \Selector0~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N26
cycloneive_lcell_comb \Selector0~8 (
// Equation(s):
// \Selector0~8_combout  = (!\aluif.b[1]~input_o  & ((\aluif.b[0]~input_o  & (\aluif.a[30]~input_o )) # (!\aluif.b[0]~input_o  & ((\aluif.a[31]~input_o )))))

	.dataa(\aluif.a[30]~input_o ),
	.datab(\aluif.a[31]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\Selector0~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~8 .lut_mask = 16'h0A0C;
defparam \Selector0~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N30
cycloneive_lcell_comb \Selector0~9 (
// Equation(s):
// \Selector0~9_combout  = (!\aluif.b[2]~input_o  & ((\Selector0~8_combout ) # ((\ShiftLeft0~7_combout  & \aluif.b[1]~input_o ))))

	.dataa(\Selector0~8_combout ),
	.datab(\ShiftLeft0~7_combout ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~9 .lut_mask = 16'h00EA;
defparam \Selector0~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N8
cycloneive_lcell_comb \Selector0~10 (
// Equation(s):
// \Selector0~10_combout  = (!\aluif.b[3]~input_o  & ((\Selector0~9_combout ) # ((\ShiftLeft0~10_combout  & \aluif.b[2]~input_o ))))

	.dataa(\Selector0~9_combout ),
	.datab(\ShiftLeft0~10_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~10 .lut_mask = 16'h0E0A;
defparam \Selector0~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y9_N18
cycloneive_lcell_comb \Selector0~12 (
// Equation(s):
// \Selector0~12_combout  = (!\aluif.b[4]~input_o  & ((\Selector0~11_combout ) # (\Selector0~10_combout )))

	.dataa(gnd),
	.datab(\Selector0~11_combout ),
	.datac(\aluif.b[4]~input_o ),
	.datad(\Selector0~10_combout ),
	.cin(gnd),
	.combout(\Selector0~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~12 .lut_mask = 16'h0F0C;
defparam \Selector0~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N4
cycloneive_lcell_comb \ShiftLeft0~23 (
// Equation(s):
// \ShiftLeft0~23_combout  = (!\aluif.b[3]~input_o  & ((\aluif.b[2]~input_o  & (\ShiftLeft0~19_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftLeft0~22_combout )))))

	.dataa(\ShiftLeft0~19_combout ),
	.datab(\ShiftLeft0~22_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~23_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~23 .lut_mask = 16'h00AC;
defparam \ShiftLeft0~23 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N16
cycloneive_lcell_comb \ShiftLeft0~31 (
// Equation(s):
// \ShiftLeft0~31_combout  = (\ShiftLeft0~23_combout ) # ((\ShiftLeft0~30_combout  & \aluif.b[3]~input_o ))

	.dataa(gnd),
	.datab(\ShiftLeft0~30_combout ),
	.datac(\ShiftLeft0~23_combout ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~31_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~31 .lut_mask = 16'hFCF0;
defparam \ShiftLeft0~31 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N6
cycloneive_lcell_comb \Selector0~13 (
// Equation(s):
// \Selector0~13_combout  = (\Selector0~4_combout  & ((\Selector0~12_combout ) # ((\aluif.b[4]~input_o  & \ShiftLeft0~31_combout ))))

	.dataa(\aluif.b[4]~input_o ),
	.datab(\Selector0~12_combout ),
	.datac(\ShiftLeft0~31_combout ),
	.datad(\Selector0~4_combout ),
	.cin(gnd),
	.combout(\Selector0~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~13 .lut_mask = 16'hEC00;
defparam \Selector0~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X81_Y0_N22
cycloneive_io_ibuf \aluif.b[31]~input (
	.i(\aluif.b [31]),
	.ibar(gnd),
	.o(\aluif.b[31]~input_o ));
// synopsys translate_off
defparam \aluif.b[31]~input .bus_hold = "false";
defparam \aluif.b[31]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N16
cycloneive_lcell_comb \Selector0~14 (
// Equation(s):
// \Selector0~14_combout  = (\Selector0~2_combout ) # ((\Selector0~1_combout ) # ((\Selector0~3_combout  & \aluif.b[31]~input_o )))

	.dataa(\Selector0~2_combout ),
	.datab(\Selector0~3_combout ),
	.datac(\aluif.b[31]~input_o ),
	.datad(\Selector0~1_combout ),
	.cin(gnd),
	.combout(\Selector0~14_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~14 .lut_mask = 16'hFFEA;
defparam \Selector0~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N2
cycloneive_lcell_comb \Selector0~15 (
// Equation(s):
// \Selector0~15_combout  = (\aluif.a[31]~input_o  & ((\Selector0~14_combout ) # ((\Selector0~0_combout  & !\ShiftLeft0~6_combout ))))

	.dataa(\Selector0~0_combout ),
	.datab(\Selector0~14_combout ),
	.datac(\ShiftLeft0~6_combout ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\Selector0~15_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~15 .lut_mask = 16'hCE00;
defparam \Selector0~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y9_N30
cycloneive_lcell_comb \Add1~62 (
// Equation(s):
// \Add1~62_combout  = \aluif.a[31]~input_o  $ (\aluif.b[31]~input_o  $ (!\Add1~61 ))

	.dataa(\aluif.a[31]~input_o ),
	.datab(\aluif.b[31]~input_o ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add1~61 ),
	.combout(\Add1~62_combout ),
	.cout());
// synopsys translate_off
defparam \Add1~62 .lut_mask = 16'h6969;
defparam \Add1~62 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y10_N30
cycloneive_lcell_comb \Add0~62 (
// Equation(s):
// \Add0~62_combout  = \aluif.b[31]~input_o  $ (\Add0~61  $ (\aluif.a[31]~input_o ))

	.dataa(gnd),
	.datab(\aluif.b[31]~input_o ),
	.datac(gnd),
	.datad(\aluif.a[31]~input_o ),
	.cin(\Add0~61 ),
	.combout(\Add0~62_combout ),
	.cout());
// synopsys translate_off
defparam \Add0~62 .lut_mask = 16'hC33C;
defparam \Add0~62 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N14
cycloneive_lcell_comb \Selector0~17 (
// Equation(s):
// \Selector0~17_combout  = (\Selector0~6_combout  & ((\Add0~62_combout ) # ((\Add1~62_combout  & \Selector0~5_combout )))) # (!\Selector0~6_combout  & (\Add1~62_combout  & ((\Selector0~5_combout ))))

	.dataa(\Selector0~6_combout ),
	.datab(\Add1~62_combout ),
	.datac(\Add0~62_combout ),
	.datad(\Selector0~5_combout ),
	.cin(gnd),
	.combout(\Selector0~17_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~17 .lut_mask = 16'hECA0;
defparam \Selector0~17 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N28
cycloneive_lcell_comb \Selector0~16 (
// Equation(s):
// \Selector0~16_combout  = (\aluif.b[31]~input_o  & ((\Selector0~2_combout ) # ((\Selector0~7_combout  & !\aluif.a[31]~input_o )))) # (!\aluif.b[31]~input_o  & (\Selector0~7_combout  & (\aluif.a[31]~input_o )))

	.dataa(\Selector0~7_combout ),
	.datab(\aluif.a[31]~input_o ),
	.datac(\aluif.b[31]~input_o ),
	.datad(\Selector0~2_combout ),
	.cin(gnd),
	.combout(\Selector0~16_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~16 .lut_mask = 16'hF828;
defparam \Selector0~16 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N24
cycloneive_lcell_comb \Selector0~18 (
// Equation(s):
// \Selector0~18_combout  = (\Selector0~13_combout ) # ((\Selector0~15_combout ) # ((\Selector0~17_combout ) # (\Selector0~16_combout )))

	.dataa(\Selector0~13_combout ),
	.datab(\Selector0~15_combout ),
	.datac(\Selector0~17_combout ),
	.datad(\Selector0~16_combout ),
	.cin(gnd),
	.combout(\Selector0~18_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~18 .lut_mask = 16'hFFFE;
defparam \Selector0~18 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N8
cycloneive_lcell_comb \Selector31~1 (
// Equation(s):
// \Selector31~1_combout  = (\Selector0~2_combout ) # ((\Selector0~3_combout  & \aluif.b[0]~input_o ))

	.dataa(\Selector0~2_combout ),
	.datab(\Selector0~3_combout ),
	.datac(gnd),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\Selector31~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~1 .lut_mask = 16'hEEAA;
defparam \Selector31~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N20
cycloneive_lcell_comb \Selector31~2 (
// Equation(s):
// \Selector31~2_combout  = (\aluif.a[0]~input_o  & ((\Selector31~1_combout ) # ((\Selector0~4_combout  & !\ShiftLeft0~6_combout ))))

	.dataa(\Selector0~4_combout ),
	.datab(\ShiftLeft0~6_combout ),
	.datac(\Selector31~1_combout ),
	.datad(\aluif.a[0]~input_o ),
	.cin(gnd),
	.combout(\Selector31~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~2 .lut_mask = 16'hF200;
defparam \Selector31~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N2
cycloneive_lcell_comb \Selector31~5 (
// Equation(s):
// \Selector31~5_combout  = (\Selector0~5_combout  & ((\Add1~0_combout ) # ((\Selector0~2_combout  & \aluif.b[0]~input_o )))) # (!\Selector0~5_combout  & (\Selector0~2_combout  & ((\aluif.b[0]~input_o ))))

	.dataa(\Selector0~5_combout ),
	.datab(\Selector0~2_combout ),
	.datac(\Add1~0_combout ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\Selector31~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~5 .lut_mask = 16'hECA0;
defparam \Selector31~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N4
cycloneive_lcell_comb \Selector31~6 (
// Equation(s):
// \Selector31~6_combout  = (\Selector31~5_combout ) # ((\Add0~0_combout  & ((\Selector0~7_combout ) # (\Selector0~6_combout ))))

	.dataa(\Selector0~7_combout ),
	.datab(\Selector31~5_combout ),
	.datac(\Add0~0_combout ),
	.datad(\Selector0~6_combout ),
	.cin(gnd),
	.combout(\Selector31~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~6 .lut_mask = 16'hFCEC;
defparam \Selector31~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N0
cycloneive_lcell_comb \LessThan1~1 (
// Equation(s):
// \LessThan1~1_cout  = CARRY((\aluif.b[0]~input_o  & !\aluif.a[0]~input_o ))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\aluif.a[0]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\LessThan1~1_cout ));
// synopsys translate_off
defparam \LessThan1~1 .lut_mask = 16'h0022;
defparam \LessThan1~1 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N2
cycloneive_lcell_comb \LessThan1~3 (
// Equation(s):
// \LessThan1~3_cout  = CARRY((\aluif.a[1]~input_o  & ((!\LessThan1~1_cout ) # (!\aluif.b[1]~input_o ))) # (!\aluif.a[1]~input_o  & (!\aluif.b[1]~input_o  & !\LessThan1~1_cout )))

	.dataa(\aluif.a[1]~input_o ),
	.datab(\aluif.b[1]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~1_cout ),
	.combout(),
	.cout(\LessThan1~3_cout ));
// synopsys translate_off
defparam \LessThan1~3 .lut_mask = 16'h002B;
defparam \LessThan1~3 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N4
cycloneive_lcell_comb \LessThan1~5 (
// Equation(s):
// \LessThan1~5_cout  = CARRY((\aluif.a[2]~input_o  & (\aluif.b[2]~input_o  & !\LessThan1~3_cout )) # (!\aluif.a[2]~input_o  & ((\aluif.b[2]~input_o ) # (!\LessThan1~3_cout ))))

	.dataa(\aluif.a[2]~input_o ),
	.datab(\aluif.b[2]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~3_cout ),
	.combout(),
	.cout(\LessThan1~5_cout ));
// synopsys translate_off
defparam \LessThan1~5 .lut_mask = 16'h004D;
defparam \LessThan1~5 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N6
cycloneive_lcell_comb \LessThan1~7 (
// Equation(s):
// \LessThan1~7_cout  = CARRY((\aluif.a[3]~input_o  & ((!\LessThan1~5_cout ) # (!\aluif.b[3]~input_o ))) # (!\aluif.a[3]~input_o  & (!\aluif.b[3]~input_o  & !\LessThan1~5_cout )))

	.dataa(\aluif.a[3]~input_o ),
	.datab(\aluif.b[3]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~5_cout ),
	.combout(),
	.cout(\LessThan1~7_cout ));
// synopsys translate_off
defparam \LessThan1~7 .lut_mask = 16'h002B;
defparam \LessThan1~7 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N8
cycloneive_lcell_comb \LessThan1~9 (
// Equation(s):
// \LessThan1~9_cout  = CARRY((\aluif.a[4]~input_o  & (\aluif.b[4]~input_o  & !\LessThan1~7_cout )) # (!\aluif.a[4]~input_o  & ((\aluif.b[4]~input_o ) # (!\LessThan1~7_cout ))))

	.dataa(\aluif.a[4]~input_o ),
	.datab(\aluif.b[4]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~7_cout ),
	.combout(),
	.cout(\LessThan1~9_cout ));
// synopsys translate_off
defparam \LessThan1~9 .lut_mask = 16'h004D;
defparam \LessThan1~9 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N10
cycloneive_lcell_comb \LessThan1~11 (
// Equation(s):
// \LessThan1~11_cout  = CARRY((\aluif.b[5]~input_o  & (\aluif.a[5]~input_o  & !\LessThan1~9_cout )) # (!\aluif.b[5]~input_o  & ((\aluif.a[5]~input_o ) # (!\LessThan1~9_cout ))))

	.dataa(\aluif.b[5]~input_o ),
	.datab(\aluif.a[5]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~9_cout ),
	.combout(),
	.cout(\LessThan1~11_cout ));
// synopsys translate_off
defparam \LessThan1~11 .lut_mask = 16'h004D;
defparam \LessThan1~11 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N12
cycloneive_lcell_comb \LessThan1~13 (
// Equation(s):
// \LessThan1~13_cout  = CARRY((\aluif.a[6]~input_o  & (\aluif.b[6]~input_o  & !\LessThan1~11_cout )) # (!\aluif.a[6]~input_o  & ((\aluif.b[6]~input_o ) # (!\LessThan1~11_cout ))))

	.dataa(\aluif.a[6]~input_o ),
	.datab(\aluif.b[6]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~11_cout ),
	.combout(),
	.cout(\LessThan1~13_cout ));
// synopsys translate_off
defparam \LessThan1~13 .lut_mask = 16'h004D;
defparam \LessThan1~13 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N14
cycloneive_lcell_comb \LessThan1~15 (
// Equation(s):
// \LessThan1~15_cout  = CARRY((\aluif.b[7]~input_o  & (\aluif.a[7]~input_o  & !\LessThan1~13_cout )) # (!\aluif.b[7]~input_o  & ((\aluif.a[7]~input_o ) # (!\LessThan1~13_cout ))))

	.dataa(\aluif.b[7]~input_o ),
	.datab(\aluif.a[7]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~13_cout ),
	.combout(),
	.cout(\LessThan1~15_cout ));
// synopsys translate_off
defparam \LessThan1~15 .lut_mask = 16'h004D;
defparam \LessThan1~15 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N16
cycloneive_lcell_comb \LessThan1~17 (
// Equation(s):
// \LessThan1~17_cout  = CARRY((\aluif.b[8]~input_o  & ((!\LessThan1~15_cout ) # (!\aluif.a[8]~input_o ))) # (!\aluif.b[8]~input_o  & (!\aluif.a[8]~input_o  & !\LessThan1~15_cout )))

	.dataa(\aluif.b[8]~input_o ),
	.datab(\aluif.a[8]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~15_cout ),
	.combout(),
	.cout(\LessThan1~17_cout ));
// synopsys translate_off
defparam \LessThan1~17 .lut_mask = 16'h002B;
defparam \LessThan1~17 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N18
cycloneive_lcell_comb \LessThan1~19 (
// Equation(s):
// \LessThan1~19_cout  = CARRY((\aluif.b[9]~input_o  & (\aluif.a[9]~input_o  & !\LessThan1~17_cout )) # (!\aluif.b[9]~input_o  & ((\aluif.a[9]~input_o ) # (!\LessThan1~17_cout ))))

	.dataa(\aluif.b[9]~input_o ),
	.datab(\aluif.a[9]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~17_cout ),
	.combout(),
	.cout(\LessThan1~19_cout ));
// synopsys translate_off
defparam \LessThan1~19 .lut_mask = 16'h004D;
defparam \LessThan1~19 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N20
cycloneive_lcell_comb \LessThan1~21 (
// Equation(s):
// \LessThan1~21_cout  = CARRY((\aluif.a[10]~input_o  & (\aluif.b[10]~input_o  & !\LessThan1~19_cout )) # (!\aluif.a[10]~input_o  & ((\aluif.b[10]~input_o ) # (!\LessThan1~19_cout ))))

	.dataa(\aluif.a[10]~input_o ),
	.datab(\aluif.b[10]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~19_cout ),
	.combout(),
	.cout(\LessThan1~21_cout ));
// synopsys translate_off
defparam \LessThan1~21 .lut_mask = 16'h004D;
defparam \LessThan1~21 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N22
cycloneive_lcell_comb \LessThan1~23 (
// Equation(s):
// \LessThan1~23_cout  = CARRY((\aluif.b[11]~input_o  & (\aluif.a[11]~input_o  & !\LessThan1~21_cout )) # (!\aluif.b[11]~input_o  & ((\aluif.a[11]~input_o ) # (!\LessThan1~21_cout ))))

	.dataa(\aluif.b[11]~input_o ),
	.datab(\aluif.a[11]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~21_cout ),
	.combout(),
	.cout(\LessThan1~23_cout ));
// synopsys translate_off
defparam \LessThan1~23 .lut_mask = 16'h004D;
defparam \LessThan1~23 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N24
cycloneive_lcell_comb \LessThan1~25 (
// Equation(s):
// \LessThan1~25_cout  = CARRY((\aluif.a[12]~input_o  & (\aluif.b[12]~input_o  & !\LessThan1~23_cout )) # (!\aluif.a[12]~input_o  & ((\aluif.b[12]~input_o ) # (!\LessThan1~23_cout ))))

	.dataa(\aluif.a[12]~input_o ),
	.datab(\aluif.b[12]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~23_cout ),
	.combout(),
	.cout(\LessThan1~25_cout ));
// synopsys translate_off
defparam \LessThan1~25 .lut_mask = 16'h004D;
defparam \LessThan1~25 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N26
cycloneive_lcell_comb \LessThan1~27 (
// Equation(s):
// \LessThan1~27_cout  = CARRY((\aluif.b[13]~input_o  & (\aluif.a[13]~input_o  & !\LessThan1~25_cout )) # (!\aluif.b[13]~input_o  & ((\aluif.a[13]~input_o ) # (!\LessThan1~25_cout ))))

	.dataa(\aluif.b[13]~input_o ),
	.datab(\aluif.a[13]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~25_cout ),
	.combout(),
	.cout(\LessThan1~27_cout ));
// synopsys translate_off
defparam \LessThan1~27 .lut_mask = 16'h004D;
defparam \LessThan1~27 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N28
cycloneive_lcell_comb \LessThan1~29 (
// Equation(s):
// \LessThan1~29_cout  = CARRY((\aluif.a[14]~input_o  & (\aluif.b[14]~input_o  & !\LessThan1~27_cout )) # (!\aluif.a[14]~input_o  & ((\aluif.b[14]~input_o ) # (!\LessThan1~27_cout ))))

	.dataa(\aluif.a[14]~input_o ),
	.datab(\aluif.b[14]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~27_cout ),
	.combout(),
	.cout(\LessThan1~29_cout ));
// synopsys translate_off
defparam \LessThan1~29 .lut_mask = 16'h004D;
defparam \LessThan1~29 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y6_N30
cycloneive_lcell_comb \LessThan1~31 (
// Equation(s):
// \LessThan1~31_cout  = CARRY((\aluif.a[15]~input_o  & ((!\LessThan1~29_cout ) # (!\aluif.b[15]~input_o ))) # (!\aluif.a[15]~input_o  & (!\aluif.b[15]~input_o  & !\LessThan1~29_cout )))

	.dataa(\aluif.a[15]~input_o ),
	.datab(\aluif.b[15]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~29_cout ),
	.combout(),
	.cout(\LessThan1~31_cout ));
// synopsys translate_off
defparam \LessThan1~31 .lut_mask = 16'h002B;
defparam \LessThan1~31 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N0
cycloneive_lcell_comb \LessThan1~33 (
// Equation(s):
// \LessThan1~33_cout  = CARRY((\aluif.b[16]~input_o  & ((!\LessThan1~31_cout ) # (!\aluif.a[16]~input_o ))) # (!\aluif.b[16]~input_o  & (!\aluif.a[16]~input_o  & !\LessThan1~31_cout )))

	.dataa(\aluif.b[16]~input_o ),
	.datab(\aluif.a[16]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~31_cout ),
	.combout(),
	.cout(\LessThan1~33_cout ));
// synopsys translate_off
defparam \LessThan1~33 .lut_mask = 16'h002B;
defparam \LessThan1~33 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N2
cycloneive_lcell_comb \LessThan1~35 (
// Equation(s):
// \LessThan1~35_cout  = CARRY((\aluif.a[17]~input_o  & ((!\LessThan1~33_cout ) # (!\aluif.b[17]~input_o ))) # (!\aluif.a[17]~input_o  & (!\aluif.b[17]~input_o  & !\LessThan1~33_cout )))

	.dataa(\aluif.a[17]~input_o ),
	.datab(\aluif.b[17]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~33_cout ),
	.combout(),
	.cout(\LessThan1~35_cout ));
// synopsys translate_off
defparam \LessThan1~35 .lut_mask = 16'h002B;
defparam \LessThan1~35 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N4
cycloneive_lcell_comb \LessThan1~37 (
// Equation(s):
// \LessThan1~37_cout  = CARRY((\aluif.a[18]~input_o  & (\aluif.b[18]~input_o  & !\LessThan1~35_cout )) # (!\aluif.a[18]~input_o  & ((\aluif.b[18]~input_o ) # (!\LessThan1~35_cout ))))

	.dataa(\aluif.a[18]~input_o ),
	.datab(\aluif.b[18]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~35_cout ),
	.combout(),
	.cout(\LessThan1~37_cout ));
// synopsys translate_off
defparam \LessThan1~37 .lut_mask = 16'h004D;
defparam \LessThan1~37 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N6
cycloneive_lcell_comb \LessThan1~39 (
// Equation(s):
// \LessThan1~39_cout  = CARRY((\aluif.a[19]~input_o  & ((!\LessThan1~37_cout ) # (!\aluif.b[19]~input_o ))) # (!\aluif.a[19]~input_o  & (!\aluif.b[19]~input_o  & !\LessThan1~37_cout )))

	.dataa(\aluif.a[19]~input_o ),
	.datab(\aluif.b[19]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~37_cout ),
	.combout(),
	.cout(\LessThan1~39_cout ));
// synopsys translate_off
defparam \LessThan1~39 .lut_mask = 16'h002B;
defparam \LessThan1~39 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N8
cycloneive_lcell_comb \LessThan1~41 (
// Equation(s):
// \LessThan1~41_cout  = CARRY((\aluif.a[20]~input_o  & (\aluif.b[20]~input_o  & !\LessThan1~39_cout )) # (!\aluif.a[20]~input_o  & ((\aluif.b[20]~input_o ) # (!\LessThan1~39_cout ))))

	.dataa(\aluif.a[20]~input_o ),
	.datab(\aluif.b[20]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~39_cout ),
	.combout(),
	.cout(\LessThan1~41_cout ));
// synopsys translate_off
defparam \LessThan1~41 .lut_mask = 16'h004D;
defparam \LessThan1~41 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N10
cycloneive_lcell_comb \LessThan1~43 (
// Equation(s):
// \LessThan1~43_cout  = CARRY((\aluif.a[21]~input_o  & ((!\LessThan1~41_cout ) # (!\aluif.b[21]~input_o ))) # (!\aluif.a[21]~input_o  & (!\aluif.b[21]~input_o  & !\LessThan1~41_cout )))

	.dataa(\aluif.a[21]~input_o ),
	.datab(\aluif.b[21]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~41_cout ),
	.combout(),
	.cout(\LessThan1~43_cout ));
// synopsys translate_off
defparam \LessThan1~43 .lut_mask = 16'h002B;
defparam \LessThan1~43 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N12
cycloneive_lcell_comb \LessThan1~45 (
// Equation(s):
// \LessThan1~45_cout  = CARRY((\aluif.b[22]~input_o  & ((!\LessThan1~43_cout ) # (!\aluif.a[22]~input_o ))) # (!\aluif.b[22]~input_o  & (!\aluif.a[22]~input_o  & !\LessThan1~43_cout )))

	.dataa(\aluif.b[22]~input_o ),
	.datab(\aluif.a[22]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~43_cout ),
	.combout(),
	.cout(\LessThan1~45_cout ));
// synopsys translate_off
defparam \LessThan1~45 .lut_mask = 16'h002B;
defparam \LessThan1~45 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N14
cycloneive_lcell_comb \LessThan1~47 (
// Equation(s):
// \LessThan1~47_cout  = CARRY((\aluif.b[23]~input_o  & (\aluif.a[23]~input_o  & !\LessThan1~45_cout )) # (!\aluif.b[23]~input_o  & ((\aluif.a[23]~input_o ) # (!\LessThan1~45_cout ))))

	.dataa(\aluif.b[23]~input_o ),
	.datab(\aluif.a[23]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~45_cout ),
	.combout(),
	.cout(\LessThan1~47_cout ));
// synopsys translate_off
defparam \LessThan1~47 .lut_mask = 16'h004D;
defparam \LessThan1~47 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N16
cycloneive_lcell_comb \LessThan1~49 (
// Equation(s):
// \LessThan1~49_cout  = CARRY((\aluif.b[24]~input_o  & ((!\LessThan1~47_cout ) # (!\aluif.a[24]~input_o ))) # (!\aluif.b[24]~input_o  & (!\aluif.a[24]~input_o  & !\LessThan1~47_cout )))

	.dataa(\aluif.b[24]~input_o ),
	.datab(\aluif.a[24]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~47_cout ),
	.combout(),
	.cout(\LessThan1~49_cout ));
// synopsys translate_off
defparam \LessThan1~49 .lut_mask = 16'h002B;
defparam \LessThan1~49 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N18
cycloneive_lcell_comb \LessThan1~51 (
// Equation(s):
// \LessThan1~51_cout  = CARRY((\aluif.a[25]~input_o  & ((!\LessThan1~49_cout ) # (!\aluif.b[25]~input_o ))) # (!\aluif.a[25]~input_o  & (!\aluif.b[25]~input_o  & !\LessThan1~49_cout )))

	.dataa(\aluif.a[25]~input_o ),
	.datab(\aluif.b[25]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~49_cout ),
	.combout(),
	.cout(\LessThan1~51_cout ));
// synopsys translate_off
defparam \LessThan1~51 .lut_mask = 16'h002B;
defparam \LessThan1~51 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N20
cycloneive_lcell_comb \LessThan1~53 (
// Equation(s):
// \LessThan1~53_cout  = CARRY((\aluif.a[26]~input_o  & (\aluif.b[26]~input_o  & !\LessThan1~51_cout )) # (!\aluif.a[26]~input_o  & ((\aluif.b[26]~input_o ) # (!\LessThan1~51_cout ))))

	.dataa(\aluif.a[26]~input_o ),
	.datab(\aluif.b[26]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~51_cout ),
	.combout(),
	.cout(\LessThan1~53_cout ));
// synopsys translate_off
defparam \LessThan1~53 .lut_mask = 16'h004D;
defparam \LessThan1~53 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N22
cycloneive_lcell_comb \LessThan1~55 (
// Equation(s):
// \LessThan1~55_cout  = CARRY((\aluif.b[27]~input_o  & (\aluif.a[27]~input_o  & !\LessThan1~53_cout )) # (!\aluif.b[27]~input_o  & ((\aluif.a[27]~input_o ) # (!\LessThan1~53_cout ))))

	.dataa(\aluif.b[27]~input_o ),
	.datab(\aluif.a[27]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~53_cout ),
	.combout(),
	.cout(\LessThan1~55_cout ));
// synopsys translate_off
defparam \LessThan1~55 .lut_mask = 16'h004D;
defparam \LessThan1~55 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N24
cycloneive_lcell_comb \LessThan1~57 (
// Equation(s):
// \LessThan1~57_cout  = CARRY((\aluif.b[28]~input_o  & ((!\LessThan1~55_cout ) # (!\aluif.a[28]~input_o ))) # (!\aluif.b[28]~input_o  & (!\aluif.a[28]~input_o  & !\LessThan1~55_cout )))

	.dataa(\aluif.b[28]~input_o ),
	.datab(\aluif.a[28]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~55_cout ),
	.combout(),
	.cout(\LessThan1~57_cout ));
// synopsys translate_off
defparam \LessThan1~57 .lut_mask = 16'h002B;
defparam \LessThan1~57 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N26
cycloneive_lcell_comb \LessThan1~59 (
// Equation(s):
// \LessThan1~59_cout  = CARRY((\aluif.b[29]~input_o  & (\aluif.a[29]~input_o  & !\LessThan1~57_cout )) # (!\aluif.b[29]~input_o  & ((\aluif.a[29]~input_o ) # (!\LessThan1~57_cout ))))

	.dataa(\aluif.b[29]~input_o ),
	.datab(\aluif.a[29]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~57_cout ),
	.combout(),
	.cout(\LessThan1~59_cout ));
// synopsys translate_off
defparam \LessThan1~59 .lut_mask = 16'h004D;
defparam \LessThan1~59 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N28
cycloneive_lcell_comb \LessThan1~61 (
// Equation(s):
// \LessThan1~61_cout  = CARRY((\aluif.a[30]~input_o  & (\aluif.b[30]~input_o  & !\LessThan1~59_cout )) # (!\aluif.a[30]~input_o  & ((\aluif.b[30]~input_o ) # (!\LessThan1~59_cout ))))

	.dataa(\aluif.a[30]~input_o ),
	.datab(\aluif.b[30]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~59_cout ),
	.combout(),
	.cout(\LessThan1~61_cout ));
// synopsys translate_off
defparam \LessThan1~61 .lut_mask = 16'h004D;
defparam \LessThan1~61 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X85_Y5_N30
cycloneive_lcell_comb \LessThan1~62 (
// Equation(s):
// \LessThan1~62_combout  = (\aluif.a[31]~input_o  & (\aluif.b[31]~input_o  & \LessThan1~61_cout )) # (!\aluif.a[31]~input_o  & ((\aluif.b[31]~input_o ) # (\LessThan1~61_cout )))

	.dataa(\aluif.a[31]~input_o ),
	.datab(\aluif.b[31]~input_o ),
	.datac(gnd),
	.datad(gnd),
	.cin(\LessThan1~61_cout ),
	.combout(\LessThan1~62_combout ),
	.cout());
// synopsys translate_off
defparam \LessThan1~62 .lut_mask = 16'hD4D4;
defparam \LessThan1~62 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N0
cycloneive_lcell_comb \LessThan0~1 (
// Equation(s):
// \LessThan0~1_cout  = CARRY((\aluif.b[0]~input_o  & !\aluif.a[0]~input_o ))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\aluif.a[0]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\LessThan0~1_cout ));
// synopsys translate_off
defparam \LessThan0~1 .lut_mask = 16'h0022;
defparam \LessThan0~1 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N2
cycloneive_lcell_comb \LessThan0~3 (
// Equation(s):
// \LessThan0~3_cout  = CARRY((\aluif.a[1]~input_o  & ((!\LessThan0~1_cout ) # (!\aluif.b[1]~input_o ))) # (!\aluif.a[1]~input_o  & (!\aluif.b[1]~input_o  & !\LessThan0~1_cout )))

	.dataa(\aluif.a[1]~input_o ),
	.datab(\aluif.b[1]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~1_cout ),
	.combout(),
	.cout(\LessThan0~3_cout ));
// synopsys translate_off
defparam \LessThan0~3 .lut_mask = 16'h002B;
defparam \LessThan0~3 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N4
cycloneive_lcell_comb \LessThan0~5 (
// Equation(s):
// \LessThan0~5_cout  = CARRY((\aluif.a[2]~input_o  & (\aluif.b[2]~input_o  & !\LessThan0~3_cout )) # (!\aluif.a[2]~input_o  & ((\aluif.b[2]~input_o ) # (!\LessThan0~3_cout ))))

	.dataa(\aluif.a[2]~input_o ),
	.datab(\aluif.b[2]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~3_cout ),
	.combout(),
	.cout(\LessThan0~5_cout ));
// synopsys translate_off
defparam \LessThan0~5 .lut_mask = 16'h004D;
defparam \LessThan0~5 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N6
cycloneive_lcell_comb \LessThan0~7 (
// Equation(s):
// \LessThan0~7_cout  = CARRY((\aluif.b[3]~input_o  & (\aluif.a[3]~input_o  & !\LessThan0~5_cout )) # (!\aluif.b[3]~input_o  & ((\aluif.a[3]~input_o ) # (!\LessThan0~5_cout ))))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\aluif.a[3]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~5_cout ),
	.combout(),
	.cout(\LessThan0~7_cout ));
// synopsys translate_off
defparam \LessThan0~7 .lut_mask = 16'h004D;
defparam \LessThan0~7 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N8
cycloneive_lcell_comb \LessThan0~9 (
// Equation(s):
// \LessThan0~9_cout  = CARRY((\aluif.b[4]~input_o  & ((!\LessThan0~7_cout ) # (!\aluif.a[4]~input_o ))) # (!\aluif.b[4]~input_o  & (!\aluif.a[4]~input_o  & !\LessThan0~7_cout )))

	.dataa(\aluif.b[4]~input_o ),
	.datab(\aluif.a[4]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~7_cout ),
	.combout(),
	.cout(\LessThan0~9_cout ));
// synopsys translate_off
defparam \LessThan0~9 .lut_mask = 16'h002B;
defparam \LessThan0~9 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N10
cycloneive_lcell_comb \LessThan0~11 (
// Equation(s):
// \LessThan0~11_cout  = CARRY((\aluif.b[5]~input_o  & (\aluif.a[5]~input_o  & !\LessThan0~9_cout )) # (!\aluif.b[5]~input_o  & ((\aluif.a[5]~input_o ) # (!\LessThan0~9_cout ))))

	.dataa(\aluif.b[5]~input_o ),
	.datab(\aluif.a[5]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~9_cout ),
	.combout(),
	.cout(\LessThan0~11_cout ));
// synopsys translate_off
defparam \LessThan0~11 .lut_mask = 16'h004D;
defparam \LessThan0~11 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N12
cycloneive_lcell_comb \LessThan0~13 (
// Equation(s):
// \LessThan0~13_cout  = CARRY((\aluif.a[6]~input_o  & (\aluif.b[6]~input_o  & !\LessThan0~11_cout )) # (!\aluif.a[6]~input_o  & ((\aluif.b[6]~input_o ) # (!\LessThan0~11_cout ))))

	.dataa(\aluif.a[6]~input_o ),
	.datab(\aluif.b[6]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~11_cout ),
	.combout(),
	.cout(\LessThan0~13_cout ));
// synopsys translate_off
defparam \LessThan0~13 .lut_mask = 16'h004D;
defparam \LessThan0~13 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N14
cycloneive_lcell_comb \LessThan0~15 (
// Equation(s):
// \LessThan0~15_cout  = CARRY((\aluif.a[7]~input_o  & ((!\LessThan0~13_cout ) # (!\aluif.b[7]~input_o ))) # (!\aluif.a[7]~input_o  & (!\aluif.b[7]~input_o  & !\LessThan0~13_cout )))

	.dataa(\aluif.a[7]~input_o ),
	.datab(\aluif.b[7]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~13_cout ),
	.combout(),
	.cout(\LessThan0~15_cout ));
// synopsys translate_off
defparam \LessThan0~15 .lut_mask = 16'h002B;
defparam \LessThan0~15 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N16
cycloneive_lcell_comb \LessThan0~17 (
// Equation(s):
// \LessThan0~17_cout  = CARRY((\aluif.b[8]~input_o  & ((!\LessThan0~15_cout ) # (!\aluif.a[8]~input_o ))) # (!\aluif.b[8]~input_o  & (!\aluif.a[8]~input_o  & !\LessThan0~15_cout )))

	.dataa(\aluif.b[8]~input_o ),
	.datab(\aluif.a[8]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~15_cout ),
	.combout(),
	.cout(\LessThan0~17_cout ));
// synopsys translate_off
defparam \LessThan0~17 .lut_mask = 16'h002B;
defparam \LessThan0~17 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N18
cycloneive_lcell_comb \LessThan0~19 (
// Equation(s):
// \LessThan0~19_cout  = CARRY((\aluif.a[9]~input_o  & ((!\LessThan0~17_cout ) # (!\aluif.b[9]~input_o ))) # (!\aluif.a[9]~input_o  & (!\aluif.b[9]~input_o  & !\LessThan0~17_cout )))

	.dataa(\aluif.a[9]~input_o ),
	.datab(\aluif.b[9]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~17_cout ),
	.combout(),
	.cout(\LessThan0~19_cout ));
// synopsys translate_off
defparam \LessThan0~19 .lut_mask = 16'h002B;
defparam \LessThan0~19 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N20
cycloneive_lcell_comb \LessThan0~21 (
// Equation(s):
// \LessThan0~21_cout  = CARRY((\aluif.b[10]~input_o  & ((!\LessThan0~19_cout ) # (!\aluif.a[10]~input_o ))) # (!\aluif.b[10]~input_o  & (!\aluif.a[10]~input_o  & !\LessThan0~19_cout )))

	.dataa(\aluif.b[10]~input_o ),
	.datab(\aluif.a[10]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~19_cout ),
	.combout(),
	.cout(\LessThan0~21_cout ));
// synopsys translate_off
defparam \LessThan0~21 .lut_mask = 16'h002B;
defparam \LessThan0~21 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N22
cycloneive_lcell_comb \LessThan0~23 (
// Equation(s):
// \LessThan0~23_cout  = CARRY((\aluif.a[11]~input_o  & ((!\LessThan0~21_cout ) # (!\aluif.b[11]~input_o ))) # (!\aluif.a[11]~input_o  & (!\aluif.b[11]~input_o  & !\LessThan0~21_cout )))

	.dataa(\aluif.a[11]~input_o ),
	.datab(\aluif.b[11]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~21_cout ),
	.combout(),
	.cout(\LessThan0~23_cout ));
// synopsys translate_off
defparam \LessThan0~23 .lut_mask = 16'h002B;
defparam \LessThan0~23 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N24
cycloneive_lcell_comb \LessThan0~25 (
// Equation(s):
// \LessThan0~25_cout  = CARRY((\aluif.b[12]~input_o  & ((!\LessThan0~23_cout ) # (!\aluif.a[12]~input_o ))) # (!\aluif.b[12]~input_o  & (!\aluif.a[12]~input_o  & !\LessThan0~23_cout )))

	.dataa(\aluif.b[12]~input_o ),
	.datab(\aluif.a[12]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~23_cout ),
	.combout(),
	.cout(\LessThan0~25_cout ));
// synopsys translate_off
defparam \LessThan0~25 .lut_mask = 16'h002B;
defparam \LessThan0~25 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N26
cycloneive_lcell_comb \LessThan0~27 (
// Equation(s):
// \LessThan0~27_cout  = CARRY((\aluif.b[13]~input_o  & (\aluif.a[13]~input_o  & !\LessThan0~25_cout )) # (!\aluif.b[13]~input_o  & ((\aluif.a[13]~input_o ) # (!\LessThan0~25_cout ))))

	.dataa(\aluif.b[13]~input_o ),
	.datab(\aluif.a[13]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~25_cout ),
	.combout(),
	.cout(\LessThan0~27_cout ));
// synopsys translate_off
defparam \LessThan0~27 .lut_mask = 16'h004D;
defparam \LessThan0~27 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N28
cycloneive_lcell_comb \LessThan0~29 (
// Equation(s):
// \LessThan0~29_cout  = CARRY((\aluif.b[14]~input_o  & ((!\LessThan0~27_cout ) # (!\aluif.a[14]~input_o ))) # (!\aluif.b[14]~input_o  & (!\aluif.a[14]~input_o  & !\LessThan0~27_cout )))

	.dataa(\aluif.b[14]~input_o ),
	.datab(\aluif.a[14]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~27_cout ),
	.combout(),
	.cout(\LessThan0~29_cout ));
// synopsys translate_off
defparam \LessThan0~29 .lut_mask = 16'h002B;
defparam \LessThan0~29 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y8_N30
cycloneive_lcell_comb \LessThan0~31 (
// Equation(s):
// \LessThan0~31_cout  = CARRY((\aluif.a[15]~input_o  & ((!\LessThan0~29_cout ) # (!\aluif.b[15]~input_o ))) # (!\aluif.a[15]~input_o  & (!\aluif.b[15]~input_o  & !\LessThan0~29_cout )))

	.dataa(\aluif.a[15]~input_o ),
	.datab(\aluif.b[15]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~29_cout ),
	.combout(),
	.cout(\LessThan0~31_cout ));
// synopsys translate_off
defparam \LessThan0~31 .lut_mask = 16'h002B;
defparam \LessThan0~31 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N0
cycloneive_lcell_comb \LessThan0~33 (
// Equation(s):
// \LessThan0~33_cout  = CARRY((\aluif.a[16]~input_o  & (\aluif.b[16]~input_o  & !\LessThan0~31_cout )) # (!\aluif.a[16]~input_o  & ((\aluif.b[16]~input_o ) # (!\LessThan0~31_cout ))))

	.dataa(\aluif.a[16]~input_o ),
	.datab(\aluif.b[16]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~31_cout ),
	.combout(),
	.cout(\LessThan0~33_cout ));
// synopsys translate_off
defparam \LessThan0~33 .lut_mask = 16'h004D;
defparam \LessThan0~33 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N2
cycloneive_lcell_comb \LessThan0~35 (
// Equation(s):
// \LessThan0~35_cout  = CARRY((\aluif.a[17]~input_o  & ((!\LessThan0~33_cout ) # (!\aluif.b[17]~input_o ))) # (!\aluif.a[17]~input_o  & (!\aluif.b[17]~input_o  & !\LessThan0~33_cout )))

	.dataa(\aluif.a[17]~input_o ),
	.datab(\aluif.b[17]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~33_cout ),
	.combout(),
	.cout(\LessThan0~35_cout ));
// synopsys translate_off
defparam \LessThan0~35 .lut_mask = 16'h002B;
defparam \LessThan0~35 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N4
cycloneive_lcell_comb \LessThan0~37 (
// Equation(s):
// \LessThan0~37_cout  = CARRY((\aluif.a[18]~input_o  & (\aluif.b[18]~input_o  & !\LessThan0~35_cout )) # (!\aluif.a[18]~input_o  & ((\aluif.b[18]~input_o ) # (!\LessThan0~35_cout ))))

	.dataa(\aluif.a[18]~input_o ),
	.datab(\aluif.b[18]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~35_cout ),
	.combout(),
	.cout(\LessThan0~37_cout ));
// synopsys translate_off
defparam \LessThan0~37 .lut_mask = 16'h004D;
defparam \LessThan0~37 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N6
cycloneive_lcell_comb \LessThan0~39 (
// Equation(s):
// \LessThan0~39_cout  = CARRY((\aluif.a[19]~input_o  & ((!\LessThan0~37_cout ) # (!\aluif.b[19]~input_o ))) # (!\aluif.a[19]~input_o  & (!\aluif.b[19]~input_o  & !\LessThan0~37_cout )))

	.dataa(\aluif.a[19]~input_o ),
	.datab(\aluif.b[19]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~37_cout ),
	.combout(),
	.cout(\LessThan0~39_cout ));
// synopsys translate_off
defparam \LessThan0~39 .lut_mask = 16'h002B;
defparam \LessThan0~39 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N8
cycloneive_lcell_comb \LessThan0~41 (
// Equation(s):
// \LessThan0~41_cout  = CARRY((\aluif.a[20]~input_o  & (\aluif.b[20]~input_o  & !\LessThan0~39_cout )) # (!\aluif.a[20]~input_o  & ((\aluif.b[20]~input_o ) # (!\LessThan0~39_cout ))))

	.dataa(\aluif.a[20]~input_o ),
	.datab(\aluif.b[20]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~39_cout ),
	.combout(),
	.cout(\LessThan0~41_cout ));
// synopsys translate_off
defparam \LessThan0~41 .lut_mask = 16'h004D;
defparam \LessThan0~41 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N10
cycloneive_lcell_comb \LessThan0~43 (
// Equation(s):
// \LessThan0~43_cout  = CARRY((\aluif.b[21]~input_o  & (\aluif.a[21]~input_o  & !\LessThan0~41_cout )) # (!\aluif.b[21]~input_o  & ((\aluif.a[21]~input_o ) # (!\LessThan0~41_cout ))))

	.dataa(\aluif.b[21]~input_o ),
	.datab(\aluif.a[21]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~41_cout ),
	.combout(),
	.cout(\LessThan0~43_cout ));
// synopsys translate_off
defparam \LessThan0~43 .lut_mask = 16'h004D;
defparam \LessThan0~43 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N12
cycloneive_lcell_comb \LessThan0~45 (
// Equation(s):
// \LessThan0~45_cout  = CARRY((\aluif.b[22]~input_o  & ((!\LessThan0~43_cout ) # (!\aluif.a[22]~input_o ))) # (!\aluif.b[22]~input_o  & (!\aluif.a[22]~input_o  & !\LessThan0~43_cout )))

	.dataa(\aluif.b[22]~input_o ),
	.datab(\aluif.a[22]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~43_cout ),
	.combout(),
	.cout(\LessThan0~45_cout ));
// synopsys translate_off
defparam \LessThan0~45 .lut_mask = 16'h002B;
defparam \LessThan0~45 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N14
cycloneive_lcell_comb \LessThan0~47 (
// Equation(s):
// \LessThan0~47_cout  = CARRY((\aluif.b[23]~input_o  & (\aluif.a[23]~input_o  & !\LessThan0~45_cout )) # (!\aluif.b[23]~input_o  & ((\aluif.a[23]~input_o ) # (!\LessThan0~45_cout ))))

	.dataa(\aluif.b[23]~input_o ),
	.datab(\aluif.a[23]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~45_cout ),
	.combout(),
	.cout(\LessThan0~47_cout ));
// synopsys translate_off
defparam \LessThan0~47 .lut_mask = 16'h004D;
defparam \LessThan0~47 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N16
cycloneive_lcell_comb \LessThan0~49 (
// Equation(s):
// \LessThan0~49_cout  = CARRY((\aluif.a[24]~input_o  & (\aluif.b[24]~input_o  & !\LessThan0~47_cout )) # (!\aluif.a[24]~input_o  & ((\aluif.b[24]~input_o ) # (!\LessThan0~47_cout ))))

	.dataa(\aluif.a[24]~input_o ),
	.datab(\aluif.b[24]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~47_cout ),
	.combout(),
	.cout(\LessThan0~49_cout ));
// synopsys translate_off
defparam \LessThan0~49 .lut_mask = 16'h004D;
defparam \LessThan0~49 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N18
cycloneive_lcell_comb \LessThan0~51 (
// Equation(s):
// \LessThan0~51_cout  = CARRY((\aluif.a[25]~input_o  & ((!\LessThan0~49_cout ) # (!\aluif.b[25]~input_o ))) # (!\aluif.a[25]~input_o  & (!\aluif.b[25]~input_o  & !\LessThan0~49_cout )))

	.dataa(\aluif.a[25]~input_o ),
	.datab(\aluif.b[25]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~49_cout ),
	.combout(),
	.cout(\LessThan0~51_cout ));
// synopsys translate_off
defparam \LessThan0~51 .lut_mask = 16'h002B;
defparam \LessThan0~51 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N20
cycloneive_lcell_comb \LessThan0~53 (
// Equation(s):
// \LessThan0~53_cout  = CARRY((\aluif.b[26]~input_o  & ((!\LessThan0~51_cout ) # (!\aluif.a[26]~input_o ))) # (!\aluif.b[26]~input_o  & (!\aluif.a[26]~input_o  & !\LessThan0~51_cout )))

	.dataa(\aluif.b[26]~input_o ),
	.datab(\aluif.a[26]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~51_cout ),
	.combout(),
	.cout(\LessThan0~53_cout ));
// synopsys translate_off
defparam \LessThan0~53 .lut_mask = 16'h002B;
defparam \LessThan0~53 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N22
cycloneive_lcell_comb \LessThan0~55 (
// Equation(s):
// \LessThan0~55_cout  = CARRY((\aluif.b[27]~input_o  & (\aluif.a[27]~input_o  & !\LessThan0~53_cout )) # (!\aluif.b[27]~input_o  & ((\aluif.a[27]~input_o ) # (!\LessThan0~53_cout ))))

	.dataa(\aluif.b[27]~input_o ),
	.datab(\aluif.a[27]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~53_cout ),
	.combout(),
	.cout(\LessThan0~55_cout ));
// synopsys translate_off
defparam \LessThan0~55 .lut_mask = 16'h004D;
defparam \LessThan0~55 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N24
cycloneive_lcell_comb \LessThan0~57 (
// Equation(s):
// \LessThan0~57_cout  = CARRY((\aluif.a[28]~input_o  & (\aluif.b[28]~input_o  & !\LessThan0~55_cout )) # (!\aluif.a[28]~input_o  & ((\aluif.b[28]~input_o ) # (!\LessThan0~55_cout ))))

	.dataa(\aluif.a[28]~input_o ),
	.datab(\aluif.b[28]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~55_cout ),
	.combout(),
	.cout(\LessThan0~57_cout ));
// synopsys translate_off
defparam \LessThan0~57 .lut_mask = 16'h004D;
defparam \LessThan0~57 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N26
cycloneive_lcell_comb \LessThan0~59 (
// Equation(s):
// \LessThan0~59_cout  = CARRY((\aluif.a[29]~input_o  & ((!\LessThan0~57_cout ) # (!\aluif.b[29]~input_o ))) # (!\aluif.a[29]~input_o  & (!\aluif.b[29]~input_o  & !\LessThan0~57_cout )))

	.dataa(\aluif.a[29]~input_o ),
	.datab(\aluif.b[29]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~57_cout ),
	.combout(),
	.cout(\LessThan0~59_cout ));
// synopsys translate_off
defparam \LessThan0~59 .lut_mask = 16'h002B;
defparam \LessThan0~59 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N28
cycloneive_lcell_comb \LessThan0~61 (
// Equation(s):
// \LessThan0~61_cout  = CARRY((\aluif.b[30]~input_o  & ((!\LessThan0~59_cout ) # (!\aluif.a[30]~input_o ))) # (!\aluif.b[30]~input_o  & (!\aluif.a[30]~input_o  & !\LessThan0~59_cout )))

	.dataa(\aluif.b[30]~input_o ),
	.datab(\aluif.a[30]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~59_cout ),
	.combout(),
	.cout(\LessThan0~61_cout ));
// synopsys translate_off
defparam \LessThan0~61 .lut_mask = 16'h002B;
defparam \LessThan0~61 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X84_Y7_N30
cycloneive_lcell_comb \LessThan0~62 (
// Equation(s):
// \LessThan0~62_combout  = (\aluif.b[31]~input_o  & (\LessThan0~61_cout  & \aluif.a[31]~input_o )) # (!\aluif.b[31]~input_o  & ((\LessThan0~61_cout ) # (\aluif.a[31]~input_o )))

	.dataa(gnd),
	.datab(\aluif.b[31]~input_o ),
	.datac(gnd),
	.datad(\aluif.a[31]~input_o ),
	.cin(\LessThan0~61_cout ),
	.combout(\LessThan0~62_combout ),
	.cout());
// synopsys translate_off
defparam \LessThan0~62 .lut_mask = 16'hF330;
defparam \LessThan0~62 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X89_Y11_N10
cycloneive_lcell_comb \Selector31~3 (
// Equation(s):
// \Selector31~3_combout  = (\aluif.opcode[1]~input_o  & (\aluif.opcode[3]~input_o  & !\aluif.opcode[2]~input_o ))

	.dataa(gnd),
	.datab(\aluif.opcode[1]~input_o ),
	.datac(\aluif.opcode[3]~input_o ),
	.datad(\aluif.opcode[2]~input_o ),
	.cin(gnd),
	.combout(\Selector31~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~3 .lut_mask = 16'h00C0;
defparam \Selector31~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y6_N24
cycloneive_lcell_comb \Selector31~4 (
// Equation(s):
// \Selector31~4_combout  = (\Selector31~3_combout  & ((\aluif.opcode[0]~input_o  & (\LessThan1~62_combout )) # (!\aluif.opcode[0]~input_o  & ((\LessThan0~62_combout )))))

	.dataa(\LessThan1~62_combout ),
	.datab(\aluif.opcode[0]~input_o ),
	.datac(\LessThan0~62_combout ),
	.datad(\Selector31~3_combout ),
	.cin(gnd),
	.combout(\Selector31~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~4 .lut_mask = 16'hB800;
defparam \Selector31~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N8
cycloneive_lcell_comb \ShiftRight0~4 (
// Equation(s):
// \ShiftRight0~4_combout  = (!\aluif.b[3]~input_o  & ((\aluif.b[2]~input_o  & (\ShiftRight0~1_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftRight0~3_combout )))))

	.dataa(\ShiftRight0~1_combout ),
	.datab(\aluif.b[3]~input_o ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\ShiftRight0~3_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~4_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~4 .lut_mask = 16'h2320;
defparam \ShiftRight0~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N14
cycloneive_lcell_comb \ShiftRight0~10 (
// Equation(s):
// \ShiftRight0~10_combout  = (\ShiftRight0~4_combout ) # ((\ShiftRight0~9_combout  & \aluif.b[3]~input_o ))

	.dataa(\ShiftRight0~4_combout ),
	.datab(\ShiftRight0~9_combout ),
	.datac(gnd),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~10_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~10 .lut_mask = 16'hEEAA;
defparam \ShiftRight0~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N24
cycloneive_lcell_comb \ShiftRight0~17 (
// Equation(s):
// \ShiftRight0~17_combout  = (\aluif.b[2]~input_o  & ((\ShiftRight0~16_combout ) # ((\ShiftRight1~6_combout  & !\aluif.b[1]~input_o ))))

	.dataa(\ShiftRight1~6_combout ),
	.datab(\ShiftRight0~16_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\aluif.b[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~17_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~17 .lut_mask = 16'hC0E0;
defparam \ShiftRight0~17 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N8
cycloneive_lcell_comb \ShiftRight0~18 (
// Equation(s):
// \ShiftRight0~18_combout  = (!\aluif.b[1]~input_o  & ((\aluif.b[0]~input_o  & ((\aluif.a[1]~input_o ))) # (!\aluif.b[0]~input_o  & (\aluif.a[0]~input_o ))))

	.dataa(\aluif.a[0]~input_o ),
	.datab(\aluif.a[1]~input_o ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~18_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~18 .lut_mask = 16'h0C0A;
defparam \ShiftRight0~18 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N24
cycloneive_lcell_comb \ShiftRight1~7 (
// Equation(s):
// \ShiftRight1~7_combout  = (\aluif.b[0]~input_o  & ((\aluif.a[3]~input_o ))) # (!\aluif.b[0]~input_o  & (\aluif.a[2]~input_o ))

	.dataa(\aluif.a[2]~input_o ),
	.datab(gnd),
	.datac(\aluif.a[3]~input_o ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~7_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~7 .lut_mask = 16'hF0AA;
defparam \ShiftRight1~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N26
cycloneive_lcell_comb \ShiftRight0~19 (
// Equation(s):
// \ShiftRight0~19_combout  = (!\aluif.b[2]~input_o  & ((\ShiftRight0~18_combout ) # ((\ShiftRight1~7_combout  & \aluif.b[1]~input_o ))))

	.dataa(\ShiftRight0~18_combout ),
	.datab(\ShiftRight1~7_combout ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~19_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~19 .lut_mask = 16'h00EA;
defparam \ShiftRight0~19 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N28
cycloneive_lcell_comb \ShiftRight0~15 (
// Equation(s):
// \ShiftRight0~15_combout  = (\aluif.b[3]~input_o  & ((\aluif.b[2]~input_o  & (\ShiftRight0~12_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftRight0~14_combout )))))

	.dataa(\ShiftRight0~12_combout ),
	.datab(\aluif.b[3]~input_o ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\ShiftRight0~14_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~15_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~15 .lut_mask = 16'h8C80;
defparam \ShiftRight0~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N4
cycloneive_lcell_comb \ShiftRight0~20 (
// Equation(s):
// \ShiftRight0~20_combout  = (\ShiftRight0~15_combout ) # ((!\aluif.b[3]~input_o  & ((\ShiftRight0~17_combout ) # (\ShiftRight0~19_combout ))))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\ShiftRight0~17_combout ),
	.datac(\ShiftRight0~19_combout ),
	.datad(\ShiftRight0~15_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~20_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~20 .lut_mask = 16'hFF54;
defparam \ShiftRight0~20 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N24
cycloneive_lcell_comb \Selector15~0 (
// Equation(s):
// \Selector15~0_combout  = (\Selector0~1_combout ) # (\Selector0~0_combout )

	.dataa(gnd),
	.datab(gnd),
	.datac(\Selector0~1_combout ),
	.datad(\Selector0~0_combout ),
	.cin(gnd),
	.combout(\Selector15~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~0 .lut_mask = 16'hFFF0;
defparam \Selector15~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N18
cycloneive_lcell_comb \Selector31~0 (
// Equation(s):
// \Selector31~0_combout  = (\Selector15~0_combout  & ((\aluif.b[4]~input_o  & (\ShiftRight0~10_combout )) # (!\aluif.b[4]~input_o  & ((\ShiftRight0~20_combout )))))

	.dataa(\ShiftRight0~10_combout ),
	.datab(\aluif.b[4]~input_o ),
	.datac(\ShiftRight0~20_combout ),
	.datad(\Selector15~0_combout ),
	.cin(gnd),
	.combout(\Selector31~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~0 .lut_mask = 16'hB800;
defparam \Selector31~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N4
cycloneive_lcell_comb \Selector31~7 (
// Equation(s):
// \Selector31~7_combout  = (\Selector31~2_combout ) # ((\Selector31~6_combout ) # ((\Selector31~4_combout ) # (\Selector31~0_combout )))

	.dataa(\Selector31~2_combout ),
	.datab(\Selector31~6_combout ),
	.datac(\Selector31~4_combout ),
	.datad(\Selector31~0_combout ),
	.cin(gnd),
	.combout(\Selector31~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~7 .lut_mask = 16'hFFFE;
defparam \Selector31~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y11_N0
cycloneive_lcell_comb \Equal10~0 (
// Equation(s):
// \Equal10~0_combout  = (!\Selector0~18_combout  & !\Selector31~7_combout )

	.dataa(gnd),
	.datab(\Selector0~18_combout ),
	.datac(\Selector31~7_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Equal10~0_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~0 .lut_mask = 16'h0303;
defparam \Equal10~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N8
cycloneive_lcell_comb \Selector16~1 (
// Equation(s):
// \Selector16~1_combout  = (\ShiftRight1~29_combout  & ((\Selector23~4_combout ) # ((\Selector23~3_combout  & \ShiftRight1~27_combout )))) # (!\ShiftRight1~29_combout  & (((\Selector23~3_combout  & \ShiftRight1~27_combout ))))

	.dataa(\ShiftRight1~29_combout ),
	.datab(\Selector23~4_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\ShiftRight1~27_combout ),
	.cin(gnd),
	.combout(\Selector16~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~1 .lut_mask = 16'hF888;
defparam \Selector16~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N20
cycloneive_lcell_comb \Selector16~0 (
// Equation(s):
// \Selector16~0_combout  = (\Selector0~20_combout  & (((\aluif.b[15]~input_o ) # (\aluif.a[15]~input_o )))) # (!\Selector0~20_combout  & (\Selector0~21_combout  & (\aluif.b[15]~input_o  & \aluif.a[15]~input_o )))

	.dataa(\Selector0~20_combout ),
	.datab(\Selector0~21_combout ),
	.datac(\aluif.b[15]~input_o ),
	.datad(\aluif.a[15]~input_o ),
	.cin(gnd),
	.combout(\Selector16~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~0 .lut_mask = 16'hEAA0;
defparam \Selector16~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N30
cycloneive_lcell_comb \Selector16~2 (
// Equation(s):
// \Selector16~2_combout  = (\Selector16~0_combout ) # ((\Selector16~1_combout  & \aluif.b[2]~input_o ))

	.dataa(\Selector16~1_combout ),
	.datab(gnd),
	.datac(\aluif.b[2]~input_o ),
	.datad(\Selector16~0_combout ),
	.cin(gnd),
	.combout(\Selector16~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~2 .lut_mask = 16'hFFA0;
defparam \Selector16~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N4
cycloneive_lcell_comb \Selector16~3 (
// Equation(s):
// \Selector16~3_combout  = (!\aluif.b[3]~input_o  & (\Selector23~1_combout  & (!\ShiftLeft0~84_combout  & \aluif.a[31]~input_o )))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\Selector23~1_combout ),
	.datac(\ShiftLeft0~84_combout ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\Selector16~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~3 .lut_mask = 16'h0400;
defparam \Selector16~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N16
cycloneive_lcell_comb \out~5 (
// Equation(s):
// \out~5_combout  = \aluif.a[15]~input_o  $ (\aluif.b[15]~input_o )

	.dataa(gnd),
	.datab(\aluif.a[15]~input_o ),
	.datac(gnd),
	.datad(\aluif.b[15]~input_o ),
	.cin(gnd),
	.combout(\out~5_combout ),
	.cout());
// synopsys translate_off
defparam \out~5 .lut_mask = 16'h33CC;
defparam \out~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N10
cycloneive_lcell_comb \Selector16~4 (
// Equation(s):
// \Selector16~4_combout  = (\Selector0~7_combout  & ((\out~5_combout ) # ((\Add1~30_combout  & \Selector0~19_combout )))) # (!\Selector0~7_combout  & (\Add1~30_combout  & (\Selector0~19_combout )))

	.dataa(\Selector0~7_combout ),
	.datab(\Add1~30_combout ),
	.datac(\Selector0~19_combout ),
	.datad(\out~5_combout ),
	.cin(gnd),
	.combout(\Selector16~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~4 .lut_mask = 16'hEAC0;
defparam \Selector16~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y10_N20
cycloneive_lcell_comb \Selector16~5 (
// Equation(s):
// \Selector16~5_combout  = (\Selector10~5_combout ) # ((\Selector16~4_combout ) # ((\Add0~30_combout  & \Selector0~6_combout )))

	.dataa(\Add0~30_combout ),
	.datab(\Selector0~6_combout ),
	.datac(\Selector10~5_combout ),
	.datad(\Selector16~4_combout ),
	.cin(gnd),
	.combout(\Selector16~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~5 .lut_mask = 16'hFFF8;
defparam \Selector16~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N18
cycloneive_lcell_comb \Selector16~6 (
// Equation(s):
// \Selector16~6_combout  = (\ShiftRight1~38_combout  & ((\Selector23~4_combout ) # ((\Selector23~3_combout  & \ShiftRight1~31_combout )))) # (!\ShiftRight1~38_combout  & (\Selector23~3_combout  & (\ShiftRight1~31_combout )))

	.dataa(\ShiftRight1~38_combout ),
	.datab(\Selector23~3_combout ),
	.datac(\ShiftRight1~31_combout ),
	.datad(\Selector23~4_combout ),
	.cin(gnd),
	.combout(\Selector16~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~6 .lut_mask = 16'hEAC0;
defparam \Selector16~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N2
cycloneive_lcell_comb \Selector16~7 (
// Equation(s):
// \Selector16~7_combout  = (\Selector16~3_combout ) # ((\Selector16~5_combout ) # ((\Selector16~6_combout  & !\aluif.b[2]~input_o )))

	.dataa(\Selector16~3_combout ),
	.datab(\Selector16~5_combout ),
	.datac(\Selector16~6_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector16~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~7 .lut_mask = 16'hEEFE;
defparam \Selector16~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N8
cycloneive_lcell_comb \Selector16~8 (
// Equation(s):
// \Selector16~8_combout  = (\Selector16~2_combout ) # ((\Selector16~7_combout ) # ((\ShiftLeft0~31_combout  & \Selector30~7_combout )))

	.dataa(\Selector16~2_combout ),
	.datab(\ShiftLeft0~31_combout ),
	.datac(\Selector30~7_combout ),
	.datad(\Selector16~7_combout ),
	.cin(gnd),
	.combout(\Selector16~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~8 .lut_mask = 16'hFFEA;
defparam \Selector16~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N12
cycloneive_lcell_comb \ShiftRight1~45 (
// Equation(s):
// \ShiftRight1~45_combout  = (\ShiftLeft0~32_combout  & ((\ShiftRight0~5_combout ) # ((\ShiftRight1~2_combout  & \aluif.b[1]~input_o ))))

	.dataa(\ShiftLeft0~32_combout ),
	.datab(\ShiftRight1~2_combout ),
	.datac(\ShiftRight0~5_combout ),
	.datad(\aluif.b[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~45_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~45 .lut_mask = 16'hA8A0;
defparam \ShiftRight1~45 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N0
cycloneive_lcell_comb \Selector11~2 (
// Equation(s):
// \Selector11~2_combout  = (\aluif.a[20]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.b[20]~input_o )))) # (!\aluif.a[20]~input_o  & (((\Selector0~20_combout  & \aluif.b[20]~input_o ))))

	.dataa(\Selector0~21_combout ),
	.datab(\aluif.a[20]~input_o ),
	.datac(\Selector0~20_combout ),
	.datad(\aluif.b[20]~input_o ),
	.cin(gnd),
	.combout(\Selector11~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~2 .lut_mask = 16'hF8C0;
defparam \Selector11~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N26
cycloneive_lcell_comb \Selector11~3 (
// Equation(s):
// \Selector11~3_combout  = (\Selector11~2_combout ) # ((!\aluif.b[3]~input_o  & (\ShiftLeft0~81_combout  & \Selector30~7_combout )))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\Selector11~2_combout ),
	.datac(\ShiftLeft0~81_combout ),
	.datad(\Selector30~7_combout ),
	.cin(gnd),
	.combout(\Selector11~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~3 .lut_mask = 16'hDCCC;
defparam \Selector11~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N6
cycloneive_lcell_comb \Selector11~4 (
// Equation(s):
// \Selector11~4_combout  = (\Selector11~3_combout ) # ((\Selector9~0_combout  & ((\ShiftRight1~45_combout ) # (\ShiftRight1~43_combout ))))

	.dataa(\ShiftRight1~45_combout ),
	.datab(\ShiftRight1~43_combout ),
	.datac(\Selector11~3_combout ),
	.datad(\Selector9~0_combout ),
	.cin(gnd),
	.combout(\Selector11~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~4 .lut_mask = 16'hFEF0;
defparam \Selector11~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N26
cycloneive_lcell_comb \Selector11~6 (
// Equation(s):
// \Selector11~6_combout  = (\Selector0~7_combout  & (\aluif.a[20]~input_o  $ (\aluif.b[20]~input_o )))

	.dataa(\Selector0~7_combout ),
	.datab(gnd),
	.datac(\aluif.a[20]~input_o ),
	.datad(\aluif.b[20]~input_o ),
	.cin(gnd),
	.combout(\Selector11~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~6 .lut_mask = 16'h0AA0;
defparam \Selector11~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N2
cycloneive_lcell_comb \Selector10~2 (
// Equation(s):
// \Selector10~2_combout  = (!\aluif.b[4]~input_o  & (\Selector0~4_combout  & \aluif.b[3]~input_o ))

	.dataa(gnd),
	.datab(\aluif.b[4]~input_o ),
	.datac(\Selector0~4_combout ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector10~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~2 .lut_mask = 16'h3000;
defparam \Selector10~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N8
cycloneive_lcell_comb \Selector11~5 (
// Equation(s):
// \Selector11~5_combout  = (\Selector10~2_combout  & ((\aluif.b[2]~input_o  & (\ShiftLeft0~82_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftLeft0~83_combout )))))

	.dataa(\Selector10~2_combout ),
	.datab(\ShiftLeft0~82_combout ),
	.datac(\ShiftLeft0~83_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector11~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~5 .lut_mask = 16'h88A0;
defparam \Selector11~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N12
cycloneive_lcell_comb \Selector11~7 (
// Equation(s):
// \Selector11~7_combout  = (\Selector11~6_combout ) # ((\Selector11~5_combout ) # ((\Add1~40_combout  & \Selector0~19_combout )))

	.dataa(\Selector11~6_combout ),
	.datab(\Selector11~5_combout ),
	.datac(\Add1~40_combout ),
	.datad(\Selector0~19_combout ),
	.cin(gnd),
	.combout(\Selector11~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~7 .lut_mask = 16'hFEEE;
defparam \Selector11~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N28
cycloneive_lcell_comb \Selector11~11 (
// Equation(s):
// \Selector11~11_combout  = (\Add0~40_combout  & ((\Selector0~6_combout ) # ((\Selector10~4_combout  & \aluif.a[31]~input_o )))) # (!\Add0~40_combout  & (\Selector10~4_combout  & ((\aluif.a[31]~input_o ))))

	.dataa(\Add0~40_combout ),
	.datab(\Selector10~4_combout ),
	.datac(\Selector0~6_combout ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\Selector11~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~11 .lut_mask = 16'hECA0;
defparam \Selector11~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N14
cycloneive_lcell_comb \Selector11~8 (
// Equation(s):
// \Selector11~8_combout  = (\Selector11~7_combout ) # ((\Selector11~11_combout ) # ((\Selector10~12_combout  & \ShiftLeft0~53_combout )))

	.dataa(\Selector11~7_combout ),
	.datab(\Selector10~12_combout ),
	.datac(\ShiftLeft0~53_combout ),
	.datad(\Selector11~11_combout ),
	.cin(gnd),
	.combout(\Selector11~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~8 .lut_mask = 16'hFFEA;
defparam \Selector11~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N24
cycloneive_lcell_comb \Selector11~9 (
// Equation(s):
// \Selector11~9_combout  = (\Selector11~4_combout ) # ((\Selector11~8_combout ) # ((\Selector10~3_combout  & \ShiftRight1~44_combout )))

	.dataa(\Selector11~4_combout ),
	.datab(\Selector11~8_combout ),
	.datac(\Selector10~3_combout ),
	.datad(\ShiftRight1~44_combout ),
	.cin(gnd),
	.combout(\Selector11~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~9 .lut_mask = 16'hFEEE;
defparam \Selector11~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N30
cycloneive_lcell_comb \Selector10~17 (
// Equation(s):
// \Selector10~17_combout  = (\Selector10~6_combout  & ((\Selector10~2_combout ) # ((\Selector10~4_combout  & \aluif.a[31]~input_o )))) # (!\Selector10~6_combout  & (\Selector10~4_combout  & ((\aluif.a[31]~input_o ))))

	.dataa(\Selector10~6_combout ),
	.datab(\Selector10~4_combout ),
	.datac(\Selector10~2_combout ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\Selector10~17_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~17 .lut_mask = 16'hECA0;
defparam \Selector10~17 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N20
cycloneive_lcell_comb \ShiftLeft0~77 (
// Equation(s):
// \ShiftLeft0~77_combout  = (\aluif.b[2]~input_o  & ((\aluif.b[0]~input_o  & (\ShiftLeft0~43_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftLeft0~44_combout )))))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\ShiftLeft0~43_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\ShiftLeft0~44_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~77_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~77 .lut_mask = 16'hD080;
defparam \ShiftLeft0~77 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N30
cycloneive_lcell_comb \ShiftLeft0~78 (
// Equation(s):
// \ShiftLeft0~78_combout  = (!\aluif.b[2]~input_o  & ((\ShiftLeft0~58_combout ) # ((\aluif.b[0]~input_o  & \ShiftLeft0~59_combout ))))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\ShiftLeft0~58_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\ShiftLeft0~59_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~78_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~78 .lut_mask = 16'h0E0C;
defparam \ShiftLeft0~78 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y13_N8
cycloneive_lcell_comb \Selector10~9 (
// Equation(s):
// \Selector10~9_combout  = (\Selector30~7_combout  & (!\aluif.b[3]~input_o  & ((\ShiftLeft0~77_combout ) # (\ShiftLeft0~78_combout ))))

	.dataa(\Selector30~7_combout ),
	.datab(\ShiftLeft0~77_combout ),
	.datac(\ShiftLeft0~78_combout ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector10~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~9 .lut_mask = 16'h00A8;
defparam \Selector10~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N10
cycloneive_lcell_comb \Selector10~10 (
// Equation(s):
// \Selector10~10_combout  = (\Selector0~7_combout  & (\aluif.a[21]~input_o  $ (\aluif.b[21]~input_o )))

	.dataa(gnd),
	.datab(\aluif.a[21]~input_o ),
	.datac(\Selector0~7_combout ),
	.datad(\aluif.b[21]~input_o ),
	.cin(gnd),
	.combout(\Selector10~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~10 .lut_mask = 16'h30C0;
defparam \Selector10~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N20
cycloneive_lcell_comb \Selector10~11 (
// Equation(s):
// \Selector10~11_combout  = (\Selector10~9_combout ) # ((\Selector10~10_combout ) # ((\Add1~42_combout  & \Selector0~19_combout )))

	.dataa(\Selector10~9_combout ),
	.datab(\Add1~42_combout ),
	.datac(\Selector0~19_combout ),
	.datad(\Selector10~10_combout ),
	.cin(gnd),
	.combout(\Selector10~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~11 .lut_mask = 16'hFFEA;
defparam \Selector10~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N16
cycloneive_lcell_comb \Selector10~8 (
// Equation(s):
// \Selector10~8_combout  = (\aluif.a[21]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.b[21]~input_o )))) # (!\aluif.a[21]~input_o  & (((\Selector0~20_combout  & \aluif.b[21]~input_o ))))

	.dataa(\Selector0~21_combout ),
	.datab(\aluif.a[21]~input_o ),
	.datac(\Selector0~20_combout ),
	.datad(\aluif.b[21]~input_o ),
	.cin(gnd),
	.combout(\Selector10~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~8 .lut_mask = 16'hF8C0;
defparam \Selector10~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N0
cycloneive_lcell_comb \Selector10~13 (
// Equation(s):
// \Selector10~13_combout  = (\Selector10~11_combout ) # ((\Selector10~8_combout ) # ((\Selector10~12_combout  & \ShiftLeft0~50_combout )))

	.dataa(\Selector10~11_combout ),
	.datab(\Selector10~12_combout ),
	.datac(\Selector10~8_combout ),
	.datad(\ShiftLeft0~50_combout ),
	.cin(gnd),
	.combout(\Selector10~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~13 .lut_mask = 16'hFEFA;
defparam \Selector10~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N14
cycloneive_lcell_comb \Selector10~7 (
// Equation(s):
// \Selector10~7_combout  = (\Selector9~0_combout  & ((\ShiftRight1~40_combout ) # ((\ShiftRight0~21_combout  & \ShiftLeft0~32_combout ))))

	.dataa(\ShiftRight0~21_combout ),
	.datab(\ShiftRight1~40_combout ),
	.datac(\ShiftLeft0~32_combout ),
	.datad(\Selector9~0_combout ),
	.cin(gnd),
	.combout(\Selector10~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~7 .lut_mask = 16'hEC00;
defparam \Selector10~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N26
cycloneive_lcell_comb \Selector10~14 (
// Equation(s):
// \Selector10~14_combout  = (\Selector10~13_combout ) # ((\Selector10~7_combout ) # ((\ShiftRight1~42_combout  & \Selector10~3_combout )))

	.dataa(\Selector10~13_combout ),
	.datab(\ShiftRight1~42_combout ),
	.datac(\Selector10~7_combout ),
	.datad(\Selector10~3_combout ),
	.cin(gnd),
	.combout(\Selector10~14_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~14 .lut_mask = 16'hFEFA;
defparam \Selector10~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N0
cycloneive_lcell_comb \Selector10~15 (
// Equation(s):
// \Selector10~15_combout  = (\Selector10~17_combout ) # ((\Selector10~14_combout ) # ((\Selector0~6_combout  & \Add0~42_combout )))

	.dataa(\Selector10~17_combout ),
	.datab(\Selector10~14_combout ),
	.datac(\Selector0~6_combout ),
	.datad(\Add0~42_combout ),
	.cin(gnd),
	.combout(\Selector10~15_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~15 .lut_mask = 16'hFEEE;
defparam \Selector10~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N28
cycloneive_lcell_comb \Selector9~2 (
// Equation(s):
// \Selector9~2_combout  = (\Selector30~7_combout  & ((\aluif.b[3]~input_o  & ((\ShiftLeft0~62_combout ))) # (!\aluif.b[3]~input_o  & (\ShiftLeft0~70_combout ))))

	.dataa(\ShiftLeft0~70_combout ),
	.datab(\aluif.b[3]~input_o ),
	.datac(\Selector30~7_combout ),
	.datad(\ShiftLeft0~62_combout ),
	.cin(gnd),
	.combout(\Selector9~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~2 .lut_mask = 16'hE020;
defparam \Selector9~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N6
cycloneive_lcell_comb \ShiftRight1~50 (
// Equation(s):
// \ShiftRight1~50_combout  = (\Selector7~2_combout  & (!\ShiftRight1~48_combout  & ((!\ShiftLeft0~33_combout ) # (!\ShiftRight1~49_combout )))) # (!\Selector7~2_combout  & (((!\ShiftLeft0~33_combout )) # (!\ShiftRight1~49_combout )))

	.dataa(\Selector7~2_combout ),
	.datab(\ShiftRight1~49_combout ),
	.datac(\ShiftLeft0~33_combout ),
	.datad(\ShiftRight1~48_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~50_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~50 .lut_mask = 16'h153F;
defparam \ShiftRight1~50 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y13_N26
cycloneive_lcell_comb \ShiftRight1~46 (
// Equation(s):
// \ShiftRight1~46_combout  = (\aluif.b[3]~input_o  & ((\ShiftLeft0~84_combout  & ((\aluif.a[31]~input_o ))) # (!\ShiftLeft0~84_combout  & (\aluif.a[30]~input_o ))))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\aluif.a[30]~input_o ),
	.datac(\ShiftLeft0~84_combout ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~46_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~46 .lut_mask = 16'hA808;
defparam \ShiftRight1~46 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N18
cycloneive_lcell_comb \Selector9~1 (
// Equation(s):
// \Selector9~1_combout  = (\Selector10~3_combout  & ((\ShiftRight1~46_combout ) # (!\ShiftRight1~50_combout )))

	.dataa(\Selector10~3_combout ),
	.datab(gnd),
	.datac(\ShiftRight1~50_combout ),
	.datad(\ShiftRight1~46_combout ),
	.cin(gnd),
	.combout(\Selector9~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~1 .lut_mask = 16'hAA0A;
defparam \Selector9~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N14
cycloneive_lcell_comb \Selector9~3 (
// Equation(s):
// \Selector9~3_combout  = (\Selector30~7_combout  & ((\aluif.b[3]~input_o  & ((\ShiftLeft0~63_combout ))) # (!\aluif.b[3]~input_o  & (\ShiftLeft0~72_combout ))))

	.dataa(\Selector30~7_combout ),
	.datab(\ShiftLeft0~72_combout ),
	.datac(\ShiftLeft0~63_combout ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector9~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~3 .lut_mask = 16'hA088;
defparam \Selector9~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N16
cycloneive_lcell_comb \Selector9~4 (
// Equation(s):
// \Selector9~4_combout  = (\Selector9~1_combout ) # ((\aluif.b[2]~input_o  & (\Selector9~2_combout )) # (!\aluif.b[2]~input_o  & ((\Selector9~3_combout ))))

	.dataa(\Selector9~2_combout ),
	.datab(\Selector9~1_combout ),
	.datac(\Selector9~3_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector9~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~4 .lut_mask = 16'hEEFC;
defparam \Selector9~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N30
cycloneive_lcell_comb \ShiftRight0~24 (
// Equation(s):
// \ShiftRight0~24_combout  = ((\ShiftLeft0~32_combout  & (\ShiftRight1~2_combout  & !\aluif.b[1]~input_o ))) # (!\ShiftRight1~50_combout )

	.dataa(\ShiftLeft0~32_combout ),
	.datab(\ShiftRight1~2_combout ),
	.datac(\ShiftRight1~50_combout ),
	.datad(\aluif.b[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~24_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~24 .lut_mask = 16'h0F8F;
defparam \ShiftRight0~24 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N18
cycloneive_lcell_comb \Selector9~5 (
// Equation(s):
// \Selector9~5_combout  = (\aluif.b[22]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.a[22]~input_o )))) # (!\aluif.b[22]~input_o  & (((\Selector0~20_combout  & \aluif.a[22]~input_o ))))

	.dataa(\aluif.b[22]~input_o ),
	.datab(\Selector0~21_combout ),
	.datac(\Selector0~20_combout ),
	.datad(\aluif.a[22]~input_o ),
	.cin(gnd),
	.combout(\Selector9~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~5 .lut_mask = 16'hF8A0;
defparam \Selector9~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N10
cycloneive_lcell_comb \out~4 (
// Equation(s):
// \out~4_combout  = \aluif.b[22]~input_o  $ (\aluif.a[22]~input_o )

	.dataa(\aluif.b[22]~input_o ),
	.datab(gnd),
	.datac(\aluif.a[22]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\out~4_combout ),
	.cout());
// synopsys translate_off
defparam \out~4 .lut_mask = 16'h5A5A;
defparam \out~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N4
cycloneive_lcell_comb \Selector9~6 (
// Equation(s):
// \Selector9~6_combout  = (\out~4_combout  & ((\Selector0~7_combout ) # ((\Selector0~19_combout  & \Add1~44_combout )))) # (!\out~4_combout  & (\Selector0~19_combout  & ((\Add1~44_combout ))))

	.dataa(\out~4_combout ),
	.datab(\Selector0~19_combout ),
	.datac(\Selector0~7_combout ),
	.datad(\Add1~44_combout ),
	.cin(gnd),
	.combout(\Selector9~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~6 .lut_mask = 16'hECA0;
defparam \Selector9~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N26
cycloneive_lcell_comb \Selector9~7 (
// Equation(s):
// \Selector9~7_combout  = (\Selector10~5_combout ) # ((\Selector9~6_combout ) # ((\Selector0~6_combout  & \Add0~44_combout )))

	.dataa(\Selector10~5_combout ),
	.datab(\Selector9~6_combout ),
	.datac(\Selector0~6_combout ),
	.datad(\Add0~44_combout ),
	.cin(gnd),
	.combout(\Selector9~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~7 .lut_mask = 16'hFEEE;
defparam \Selector9~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N20
cycloneive_lcell_comb \Selector9~8 (
// Equation(s):
// \Selector9~8_combout  = (\Selector9~5_combout ) # ((\Selector9~7_combout ) # ((\Selector10~12_combout  & \ShiftLeft0~68_combout )))

	.dataa(\Selector10~12_combout ),
	.datab(\Selector9~5_combout ),
	.datac(\Selector9~7_combout ),
	.datad(\ShiftLeft0~68_combout ),
	.cin(gnd),
	.combout(\Selector9~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~8 .lut_mask = 16'hFEFC;
defparam \Selector9~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N24
cycloneive_lcell_comb \Selector9~9 (
// Equation(s):
// \Selector9~9_combout  = (\Selector9~4_combout ) # ((\Selector9~8_combout ) # ((\Selector9~0_combout  & \ShiftRight0~24_combout )))

	.dataa(\Selector9~0_combout ),
	.datab(\Selector9~4_combout ),
	.datac(\ShiftRight0~24_combout ),
	.datad(\Selector9~8_combout ),
	.cin(gnd),
	.combout(\Selector9~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~9 .lut_mask = 16'hFFEC;
defparam \Selector9~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y10_N26
cycloneive_lcell_comb \Equal10~3 (
// Equation(s):
// \Equal10~3_combout  = (!\Selector16~8_combout  & (!\Selector11~9_combout  & (!\Selector10~15_combout  & !\Selector9~9_combout )))

	.dataa(\Selector16~8_combout ),
	.datab(\Selector11~9_combout ),
	.datac(\Selector10~15_combout ),
	.datad(\Selector9~9_combout ),
	.cin(gnd),
	.combout(\Equal10~3_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~3 .lut_mask = 16'h0001;
defparam \Equal10~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N14
cycloneive_lcell_comb \ShiftRight1~25 (
// Equation(s):
// \ShiftRight1~25_combout  = (\Selector7~2_combout  & ((\ShiftRight1~22_combout ) # ((\ShiftRight1~24_combout  & \ShiftLeft0~33_combout )))) # (!\Selector7~2_combout  & (\ShiftRight1~24_combout  & (\ShiftLeft0~33_combout )))

	.dataa(\Selector7~2_combout ),
	.datab(\ShiftRight1~24_combout ),
	.datac(\ShiftLeft0~33_combout ),
	.datad(\ShiftRight1~22_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~25_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~25 .lut_mask = 16'hEAC0;
defparam \ShiftRight1~25 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N0
cycloneive_lcell_comb \Selector30~10 (
// Equation(s):
// \Selector30~10_combout  = (\Add1~2_combout  & ((\Selector0~5_combout ) # ((\Selector0~6_combout  & \Add0~2_combout )))) # (!\Add1~2_combout  & (\Selector0~6_combout  & (\Add0~2_combout )))

	.dataa(\Add1~2_combout ),
	.datab(\Selector0~6_combout ),
	.datac(\Add0~2_combout ),
	.datad(\Selector0~5_combout ),
	.cin(gnd),
	.combout(\Selector30~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~10 .lut_mask = 16'hEAC0;
defparam \Selector30~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N10
cycloneive_lcell_comb \Selector30~11 (
// Equation(s):
// \Selector30~11_combout  = (\Selector30~10_combout ) # ((\Selector0~7_combout  & (\aluif.b[1]~input_o  $ (\aluif.a[1]~input_o ))))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\Selector30~10_combout ),
	.datac(\aluif.a[1]~input_o ),
	.datad(\Selector0~7_combout ),
	.cin(gnd),
	.combout(\Selector30~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~11 .lut_mask = 16'hDECC;
defparam \Selector30~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N8
cycloneive_lcell_comb \Selector30~5 (
// Equation(s):
// \Selector30~5_combout  = (\ShiftRight1~20_combout  & (\aluif.b[4]~input_o  & (\Selector0~1_combout  & \aluif.b[3]~input_o )))

	.dataa(\ShiftRight1~20_combout ),
	.datab(\aluif.b[4]~input_o ),
	.datac(\Selector0~1_combout ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector30~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~5 .lut_mask = 16'h8000;
defparam \Selector30~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N28
cycloneive_lcell_comb \Selector14~14 (
// Equation(s):
// \Selector14~14_combout  = (\ShiftLeft0~25_combout  & (!\aluif.b[1]~input_o  & (!\aluif.b[3]~input_o  & !\aluif.b[2]~input_o )))

	.dataa(\ShiftLeft0~25_combout ),
	.datab(\aluif.b[1]~input_o ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector14~14_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~14 .lut_mask = 16'h0002;
defparam \Selector14~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N6
cycloneive_lcell_comb \Selector30~6 (
// Equation(s):
// \Selector30~6_combout  = (\aluif.b[1]~input_o  & ((\Selector0~2_combout ) # ((\Selector0~3_combout  & \aluif.a[1]~input_o )))) # (!\aluif.b[1]~input_o  & (((\aluif.a[1]~input_o  & \Selector0~2_combout ))))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\Selector0~3_combout ),
	.datac(\aluif.a[1]~input_o ),
	.datad(\Selector0~2_combout ),
	.cin(gnd),
	.combout(\Selector30~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~6 .lut_mask = 16'hFA80;
defparam \Selector30~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N28
cycloneive_lcell_comb \Selector30~8 (
// Equation(s):
// \Selector30~8_combout  = (\Selector30~5_combout ) # ((\Selector30~6_combout ) # ((\Selector30~7_combout  & \Selector14~14_combout )))

	.dataa(\Selector30~7_combout ),
	.datab(\Selector30~5_combout ),
	.datac(\Selector14~14_combout ),
	.datad(\Selector30~6_combout ),
	.cin(gnd),
	.combout(\Selector30~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~8 .lut_mask = 16'hFFEC;
defparam \Selector30~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N22
cycloneive_lcell_comb \ShiftRight0~22 (
// Equation(s):
// \ShiftRight0~22_combout  = (\aluif.b[2]~input_o  & ((\ShiftRight0~21_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftRight1~19_combout ))

	.dataa(\ShiftRight1~19_combout ),
	.datab(gnd),
	.datac(\ShiftRight0~21_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~22_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~22 .lut_mask = 16'hF0AA;
defparam \ShiftRight0~22 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N22
cycloneive_lcell_comb \Selector30~9 (
// Equation(s):
// \Selector30~9_combout  = (\ShiftRight0~22_combout  & (\aluif.b[3]~input_o  & (\aluif.b[4]~input_o  & \Selector0~0_combout )))

	.dataa(\ShiftRight0~22_combout ),
	.datab(\aluif.b[3]~input_o ),
	.datac(\aluif.b[4]~input_o ),
	.datad(\Selector0~0_combout ),
	.cin(gnd),
	.combout(\Selector30~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~9 .lut_mask = 16'h8000;
defparam \Selector30~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N20
cycloneive_lcell_comb \Selector30~1 (
// Equation(s):
// \Selector30~1_combout  = (!\aluif.b[1]~input_o  & ((\aluif.b[0]~input_o  & (\aluif.a[2]~input_o )) # (!\aluif.b[0]~input_o  & ((\aluif.a[1]~input_o )))))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[2]~input_o ),
	.datac(\aluif.a[1]~input_o ),
	.datad(\aluif.b[0]~input_o ),
	.cin(gnd),
	.combout(\Selector30~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~1 .lut_mask = 16'h4450;
defparam \Selector30~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N24
cycloneive_lcell_comb \Selector30~2 (
// Equation(s):
// \Selector30~2_combout  = (\ShiftLeft0~33_combout  & ((\Selector30~1_combout ) # ((\ShiftRight1~13_combout  & \aluif.b[1]~input_o ))))

	.dataa(\ShiftRight1~13_combout ),
	.datab(\Selector30~1_combout ),
	.datac(\aluif.b[1]~input_o ),
	.datad(\ShiftLeft0~33_combout ),
	.cin(gnd),
	.combout(\Selector30~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~2 .lut_mask = 16'hEC00;
defparam \Selector30~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y12_N10
cycloneive_lcell_comb \Selector30~3 (
// Equation(s):
// \Selector30~3_combout  = (\Selector30~2_combout ) # ((\ShiftRight1~15_combout  & (\aluif.b[3]~input_o  & \aluif.b[2]~input_o )))

	.dataa(\ShiftRight1~15_combout ),
	.datab(\Selector30~2_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector30~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~3 .lut_mask = 16'hECCC;
defparam \Selector30~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y12_N22
cycloneive_lcell_comb \Selector30~0 (
// Equation(s):
// \Selector30~0_combout  = (\ShiftLeft0~32_combout  & ((\ShiftRight1~9_combout ) # ((\ShiftRight1~12_combout  & \Selector7~2_combout )))) # (!\ShiftLeft0~32_combout  & (((\ShiftRight1~12_combout  & \Selector7~2_combout ))))

	.dataa(\ShiftLeft0~32_combout ),
	.datab(\ShiftRight1~9_combout ),
	.datac(\ShiftRight1~12_combout ),
	.datad(\Selector7~2_combout ),
	.cin(gnd),
	.combout(\Selector30~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~0 .lut_mask = 16'hF888;
defparam \Selector30~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N6
cycloneive_lcell_comb \Selector30~4 (
// Equation(s):
// \Selector30~4_combout  = (!\aluif.b[4]~input_o  & (\Selector15~0_combout  & ((\Selector30~3_combout ) # (\Selector30~0_combout ))))

	.dataa(\Selector30~3_combout ),
	.datab(\Selector30~0_combout ),
	.datac(\aluif.b[4]~input_o ),
	.datad(\Selector15~0_combout ),
	.cin(gnd),
	.combout(\Selector30~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~4 .lut_mask = 16'h0E00;
defparam \Selector30~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N16
cycloneive_lcell_comb \Selector30~12 (
// Equation(s):
// \Selector30~12_combout  = (\Selector30~11_combout ) # ((\Selector30~8_combout ) # ((\Selector30~9_combout ) # (\Selector30~4_combout )))

	.dataa(\Selector30~11_combout ),
	.datab(\Selector30~8_combout ),
	.datac(\Selector30~9_combout ),
	.datad(\Selector30~4_combout ),
	.cin(gnd),
	.combout(\Selector30~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~12 .lut_mask = 16'hFFFE;
defparam \Selector30~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N10
cycloneive_lcell_comb \Selector30~13 (
// Equation(s):
// \Selector30~13_combout  = (\Selector30~12_combout ) # ((\ShiftRight1~25_combout  & (\aluif.b[4]~input_o  & \Selector15~0_combout )))

	.dataa(\ShiftRight1~25_combout ),
	.datab(\Selector30~12_combout ),
	.datac(\aluif.b[4]~input_o ),
	.datad(\Selector15~0_combout ),
	.cin(gnd),
	.combout(\Selector30~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~13 .lut_mask = 16'hECCC;
defparam \Selector30~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y14_N2
cycloneive_lcell_comb \Selector12~9 (
// Equation(s):
// \Selector12~9_combout  = (\aluif.b[2]~input_o  & ((\ShiftLeft0~29_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftLeft0~19_combout ))

	.dataa(\ShiftLeft0~19_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~29_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector12~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~9 .lut_mask = 16'hF0AA;
defparam \Selector12~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N14
cycloneive_lcell_comb \Selector12~11 (
// Equation(s):
// \Selector12~11_combout  = (\Selector12~9_combout  & ((\Selector10~2_combout ) # ((\Selector10~4_combout  & \aluif.a[31]~input_o )))) # (!\Selector12~9_combout  & (\Selector10~4_combout  & (\aluif.a[31]~input_o )))

	.dataa(\Selector12~9_combout ),
	.datab(\Selector10~4_combout ),
	.datac(\aluif.a[31]~input_o ),
	.datad(\Selector10~2_combout ),
	.cin(gnd),
	.combout(\Selector12~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~11 .lut_mask = 16'hEAC0;
defparam \Selector12~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N16
cycloneive_lcell_comb \Selector12~4 (
// Equation(s):
// \Selector12~4_combout  = (\aluif.b[19]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.a[19]~input_o )))) # (!\aluif.b[19]~input_o  & (((\Selector0~20_combout  & \aluif.a[19]~input_o ))))

	.dataa(\Selector0~21_combout ),
	.datab(\aluif.b[19]~input_o ),
	.datac(\Selector0~20_combout ),
	.datad(\aluif.a[19]~input_o ),
	.cin(gnd),
	.combout(\Selector12~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~4 .lut_mask = 16'hF8C0;
defparam \Selector12~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N20
cycloneive_lcell_comb \Selector12~5 (
// Equation(s):
// \Selector12~5_combout  = (\Selector12~4_combout ) # ((\ShiftLeft0~48_combout  & (!\aluif.b[3]~input_o  & \Selector30~7_combout )))

	.dataa(\ShiftLeft0~48_combout ),
	.datab(\Selector12~4_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\Selector30~7_combout ),
	.cin(gnd),
	.combout(\Selector12~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~5 .lut_mask = 16'hCECC;
defparam \Selector12~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N6
cycloneive_lcell_comb \out~1 (
// Equation(s):
// \out~1_combout  = \aluif.a[19]~input_o  $ (\aluif.b[19]~input_o )

	.dataa(\aluif.a[19]~input_o ),
	.datab(gnd),
	.datac(gnd),
	.datad(\aluif.b[19]~input_o ),
	.cin(gnd),
	.combout(\out~1_combout ),
	.cout());
// synopsys translate_off
defparam \out~1 .lut_mask = 16'h55AA;
defparam \out~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N8
cycloneive_lcell_comb \Selector12~6 (
// Equation(s):
// \Selector12~6_combout  = (\out~1_combout  & ((\Selector0~7_combout ) # ((\Selector0~19_combout  & \Add1~38_combout )))) # (!\out~1_combout  & (((\Selector0~19_combout  & \Add1~38_combout ))))

	.dataa(\out~1_combout ),
	.datab(\Selector0~7_combout ),
	.datac(\Selector0~19_combout ),
	.datad(\Add1~38_combout ),
	.cin(gnd),
	.combout(\Selector12~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~6 .lut_mask = 16'hF888;
defparam \Selector12~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N26
cycloneive_lcell_comb \Selector12~7 (
// Equation(s):
// \Selector12~7_combout  = (\Selector12~5_combout ) # ((\Selector12~6_combout ) # ((\ShiftRight1~32_combout  & \Selector9~0_combout )))

	.dataa(\ShiftRight1~32_combout ),
	.datab(\Selector12~5_combout ),
	.datac(\Selector12~6_combout ),
	.datad(\Selector9~0_combout ),
	.cin(gnd),
	.combout(\Selector12~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~7 .lut_mask = 16'hFEFC;
defparam \Selector12~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N14
cycloneive_lcell_comb \Selector12~2 (
// Equation(s):
// \Selector12~2_combout  = (\ShiftLeft0~33_combout  & (\aluif.b[4]~input_o  & (\Selector0~4_combout  & \ShiftLeft0~26_combout )))

	.dataa(\ShiftLeft0~33_combout ),
	.datab(\aluif.b[4]~input_o ),
	.datac(\Selector0~4_combout ),
	.datad(\ShiftLeft0~26_combout ),
	.cin(gnd),
	.combout(\Selector12~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~2 .lut_mask = 16'h8000;
defparam \Selector12~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N0
cycloneive_lcell_comb \Selector12~3 (
// Equation(s):
// \Selector12~3_combout  = (\Selector12~2_combout ) # ((\ShiftRight0~23_combout  & (\Selector9~0_combout  & \aluif.b[3]~input_o )))

	.dataa(\ShiftRight0~23_combout ),
	.datab(\Selector9~0_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\Selector12~2_combout ),
	.cin(gnd),
	.combout(\Selector12~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~3 .lut_mask = 16'hFF80;
defparam \Selector12~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N30
cycloneive_lcell_comb \Selector12~8 (
// Equation(s):
// \Selector12~8_combout  = (\Selector12~7_combout ) # ((\Selector12~3_combout ) # ((\Selector10~3_combout  & \ShiftRight1~34_combout )))

	.dataa(\Selector12~7_combout ),
	.datab(\Selector10~3_combout ),
	.datac(\ShiftRight1~34_combout ),
	.datad(\Selector12~3_combout ),
	.cin(gnd),
	.combout(\Selector12~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~8 .lut_mask = 16'hFFEA;
defparam \Selector12~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N24
cycloneive_lcell_comb \Selector12~10 (
// Equation(s):
// \Selector12~10_combout  = (\Selector12~11_combout ) # ((\Selector12~8_combout ) # ((\Selector0~6_combout  & \Add0~38_combout )))

	.dataa(\Selector0~6_combout ),
	.datab(\Selector12~11_combout ),
	.datac(\Selector12~8_combout ),
	.datad(\Add0~38_combout ),
	.cin(gnd),
	.combout(\Selector12~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~10 .lut_mask = 16'hFEFC;
defparam \Selector12~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y14_N30
cycloneive_lcell_comb \Selector20~4 (
// Equation(s):
// \Selector20~4_combout  = (\Selector30~7_combout  & ((\ShiftLeft0~49_combout ) # ((\ShiftLeft0~26_combout  & \ShiftLeft0~32_combout ))))

	.dataa(\ShiftLeft0~26_combout ),
	.datab(\ShiftLeft0~49_combout ),
	.datac(\ShiftLeft0~32_combout ),
	.datad(\Selector30~7_combout ),
	.cin(gnd),
	.combout(\Selector20~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~4 .lut_mask = 16'hEC00;
defparam \Selector20~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N26
cycloneive_lcell_comb \Selector20~8 (
// Equation(s):
// \Selector20~8_combout  = (\Selector0~7_combout  & (\aluif.b[11]~input_o  $ (\aluif.a[11]~input_o )))

	.dataa(\aluif.b[11]~input_o ),
	.datab(gnd),
	.datac(\aluif.a[11]~input_o ),
	.datad(\Selector0~7_combout ),
	.cin(gnd),
	.combout(\Selector20~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~8 .lut_mask = 16'h5A00;
defparam \Selector20~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N18
cycloneive_lcell_comb \Selector20~7 (
// Equation(s):
// \Selector20~7_combout  = (\Selector23~3_combout  & ((\aluif.b[2]~input_o  & ((\ShiftRight1~31_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftRight1~29_combout ))))

	.dataa(\ShiftRight1~29_combout ),
	.datab(\ShiftRight1~31_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector20~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~7 .lut_mask = 16'hC0A0;
defparam \Selector20~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N20
cycloneive_lcell_comb \Selector20~9 (
// Equation(s):
// \Selector20~9_combout  = (\Selector20~8_combout ) # ((\Selector20~7_combout ) # ((\Selector0~19_combout  & \Add1~22_combout )))

	.dataa(\Selector20~8_combout ),
	.datab(\Selector0~19_combout ),
	.datac(\Selector20~7_combout ),
	.datad(\Add1~22_combout ),
	.cin(gnd),
	.combout(\Selector20~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~9 .lut_mask = 16'hFEFA;
defparam \Selector20~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N16
cycloneive_lcell_comb \Selector20~6 (
// Equation(s):
// \Selector20~6_combout  = (\Selector0~20_combout  & ((\aluif.a[11]~input_o ) # ((\aluif.b[11]~input_o )))) # (!\Selector0~20_combout  & (\aluif.a[11]~input_o  & (\Selector0~21_combout  & \aluif.b[11]~input_o )))

	.dataa(\Selector0~20_combout ),
	.datab(\aluif.a[11]~input_o ),
	.datac(\Selector0~21_combout ),
	.datad(\aluif.b[11]~input_o ),
	.cin(gnd),
	.combout(\Selector20~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~6 .lut_mask = 16'hEA88;
defparam \Selector20~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N0
cycloneive_lcell_comb \Selector20~10 (
// Equation(s):
// \Selector20~10_combout  = (\Selector20~9_combout ) # ((\Selector20~6_combout ) # ((\Selector23~4_combout  & \ShiftRight1~39_combout )))

	.dataa(\Selector23~4_combout ),
	.datab(\Selector20~9_combout ),
	.datac(\ShiftRight1~39_combout ),
	.datad(\Selector20~6_combout ),
	.cin(gnd),
	.combout(\Selector20~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~10 .lut_mask = 16'hFFEC;
defparam \Selector20~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N6
cycloneive_lcell_comb \Selector20~12 (
// Equation(s):
// \Selector20~12_combout  = (\Selector10~4_combout  & (!\aluif.b[3]~input_o  & (!\aluif.b[2]~input_o  & \ShiftRight1~27_combout )))

	.dataa(\Selector10~4_combout ),
	.datab(\aluif.b[3]~input_o ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\ShiftRight1~27_combout ),
	.cin(gnd),
	.combout(\Selector20~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~12 .lut_mask = 16'h0200;
defparam \Selector20~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N14
cycloneive_lcell_comb \Selector20~5 (
// Equation(s):
// \Selector20~5_combout  = (\Selector20~12_combout ) # ((\ShiftRight0~23_combout  & (\Selector23~1_combout  & !\aluif.b[3]~input_o )))

	.dataa(\Selector20~12_combout ),
	.datab(\ShiftRight0~23_combout ),
	.datac(\Selector23~1_combout ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector20~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~5 .lut_mask = 16'hAAEA;
defparam \Selector20~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N12
cycloneive_lcell_comb \Selector20~3 (
// Equation(s):
// \Selector20~3_combout  = (\Selector10~4_combout  & ((\Selector20~2_combout ) # ((\Selector0~6_combout  & \Add0~22_combout )))) # (!\Selector10~4_combout  & (\Selector0~6_combout  & ((\Add0~22_combout ))))

	.dataa(\Selector10~4_combout ),
	.datab(\Selector0~6_combout ),
	.datac(\Selector20~2_combout ),
	.datad(\Add0~22_combout ),
	.cin(gnd),
	.combout(\Selector20~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~3 .lut_mask = 16'hECA0;
defparam \Selector20~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N24
cycloneive_lcell_comb \Selector20~11 (
// Equation(s):
// \Selector20~11_combout  = (\Selector20~4_combout ) # ((\Selector20~10_combout ) # ((\Selector20~5_combout ) # (\Selector20~3_combout )))

	.dataa(\Selector20~4_combout ),
	.datab(\Selector20~10_combout ),
	.datac(\Selector20~5_combout ),
	.datad(\Selector20~3_combout ),
	.cin(gnd),
	.combout(\Selector20~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~11 .lut_mask = 16'hFFFE;
defparam \Selector20~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N12
cycloneive_lcell_comb \out~0 (
// Equation(s):
// \out~0_combout  = \aluif.b[17]~input_o  $ (\aluif.a[17]~input_o )

	.dataa(gnd),
	.datab(gnd),
	.datac(\aluif.b[17]~input_o ),
	.datad(\aluif.a[17]~input_o ),
	.cin(gnd),
	.combout(\out~0_combout ),
	.cout());
// synopsys translate_off
defparam \out~0 .lut_mask = 16'h0FF0;
defparam \out~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N24
cycloneive_lcell_comb \Selector14~7 (
// Equation(s):
// \Selector14~7_combout  = (\Add1~34_combout  & ((\Selector0~19_combout ) # ((\Selector0~7_combout  & \out~0_combout )))) # (!\Add1~34_combout  & (((\Selector0~7_combout  & \out~0_combout ))))

	.dataa(\Add1~34_combout ),
	.datab(\Selector0~19_combout ),
	.datac(\Selector0~7_combout ),
	.datad(\out~0_combout ),
	.cin(gnd),
	.combout(\Selector14~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~7 .lut_mask = 16'hF888;
defparam \Selector14~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N12
cycloneive_lcell_comb \Selector14~5 (
// Equation(s):
// \Selector14~5_combout  = (\Selector0~4_combout  & (\Selector14~14_combout  & \aluif.b[4]~input_o ))

	.dataa(\Selector0~4_combout ),
	.datab(\Selector14~14_combout ),
	.datac(\aluif.b[4]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector14~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~5 .lut_mask = 16'h8080;
defparam \Selector14~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N10
cycloneive_lcell_comb \Selector14~6 (
// Equation(s):
// \Selector14~6_combout  = (\Selector14~5_combout ) # ((!\aluif.b[3]~input_o  & (\Selector30~7_combout  & \ShiftLeft0~46_combout )))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\Selector14~5_combout ),
	.datac(\Selector30~7_combout ),
	.datad(\ShiftLeft0~46_combout ),
	.cin(gnd),
	.combout(\Selector14~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~6 .lut_mask = 16'hDCCC;
defparam \Selector14~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N22
cycloneive_lcell_comb \Selector14~8 (
// Equation(s):
// \Selector14~8_combout  = (\Selector14~7_combout ) # ((\Selector14~6_combout ) # ((\ShiftRight1~25_combout  & \Selector10~3_combout )))

	.dataa(\ShiftRight1~25_combout ),
	.datab(\Selector14~7_combout ),
	.datac(\Selector10~3_combout ),
	.datad(\Selector14~6_combout ),
	.cin(gnd),
	.combout(\Selector14~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~8 .lut_mask = 16'hFFEC;
defparam \Selector14~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N28
cycloneive_lcell_comb \Selector14~12 (
// Equation(s):
// \Selector14~12_combout  = (\Selector10~5_combout ) # ((\aluif.a[17]~input_o  & (\Selector0~21_combout  & \aluif.b[17]~input_o )))

	.dataa(\aluif.a[17]~input_o ),
	.datab(\Selector0~21_combout ),
	.datac(\aluif.b[17]~input_o ),
	.datad(\Selector10~5_combout ),
	.cin(gnd),
	.combout(\Selector14~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~12 .lut_mask = 16'hFF80;
defparam \Selector14~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N0
cycloneive_lcell_comb \Selector14~3 (
// Equation(s):
// \Selector14~3_combout  = (\aluif.b[3]~input_o  & ((\aluif.b[2]~input_o  & (\ShiftRight0~21_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftRight1~19_combout )))))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\ShiftRight0~21_combout ),
	.datac(\ShiftRight1~19_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector14~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~3 .lut_mask = 16'h88A0;
defparam \Selector14~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y13_N8
cycloneive_lcell_comb \Selector14~2 (
// Equation(s):
// \Selector14~2_combout  = (\Selector10~2_combout  & ((\aluif.b[2]~input_o  & (\ShiftLeft0~36_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftLeft0~39_combout )))))

	.dataa(\aluif.b[2]~input_o ),
	.datab(\ShiftLeft0~36_combout ),
	.datac(\Selector10~2_combout ),
	.datad(\ShiftLeft0~39_combout ),
	.cin(gnd),
	.combout(\Selector14~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~2 .lut_mask = 16'hD080;
defparam \Selector14~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N8
cycloneive_lcell_comb \Selector14~4 (
// Equation(s):
// \Selector14~4_combout  = (\Selector14~2_combout ) # ((\Selector9~0_combout  & ((\ShiftRight1~25_combout ) # (\Selector14~3_combout ))))

	.dataa(\ShiftRight1~25_combout ),
	.datab(\Selector14~3_combout ),
	.datac(\Selector14~2_combout ),
	.datad(\Selector9~0_combout ),
	.cin(gnd),
	.combout(\Selector14~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~4 .lut_mask = 16'hFEF0;
defparam \Selector14~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N10
cycloneive_lcell_comb \Selector14~9 (
// Equation(s):
// \Selector14~9_combout  = (\aluif.b[3]~input_o  & (\Selector10~3_combout  & \ShiftRight1~20_combout ))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\Selector10~3_combout ),
	.datac(gnd),
	.datad(\ShiftRight1~20_combout ),
	.cin(gnd),
	.combout(\Selector14~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~9 .lut_mask = 16'h8800;
defparam \Selector14~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N16
cycloneive_lcell_comb \Selector14~10 (
// Equation(s):
// \Selector14~10_combout  = (\Selector0~20_combout  & ((\aluif.b[17]~input_o ) # (\aluif.a[17]~input_o )))

	.dataa(\Selector0~20_combout ),
	.datab(gnd),
	.datac(\aluif.b[17]~input_o ),
	.datad(\aluif.a[17]~input_o ),
	.cin(gnd),
	.combout(\Selector14~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~10 .lut_mask = 16'hAAA0;
defparam \Selector14~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N18
cycloneive_lcell_comb \Selector14~11 (
// Equation(s):
// \Selector14~11_combout  = (\Selector14~9_combout ) # ((\Selector14~10_combout ) # ((\Add0~34_combout  & \Selector0~6_combout )))

	.dataa(\Add0~34_combout ),
	.datab(\Selector14~9_combout ),
	.datac(\Selector0~6_combout ),
	.datad(\Selector14~10_combout ),
	.cin(gnd),
	.combout(\Selector14~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~11 .lut_mask = 16'hFFEC;
defparam \Selector14~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N6
cycloneive_lcell_comb \Selector14~13 (
// Equation(s):
// \Selector14~13_combout  = (\Selector14~8_combout ) # ((\Selector14~12_combout ) # ((\Selector14~4_combout ) # (\Selector14~11_combout )))

	.dataa(\Selector14~8_combout ),
	.datab(\Selector14~12_combout ),
	.datac(\Selector14~4_combout ),
	.datad(\Selector14~11_combout ),
	.cin(gnd),
	.combout(\Selector14~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~13 .lut_mask = 16'hFFFE;
defparam \Selector14~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y12_N2
cycloneive_lcell_comb \Equal10~1 (
// Equation(s):
// \Equal10~1_combout  = (!\Selector30~13_combout  & (!\Selector12~10_combout  & (!\Selector20~11_combout  & !\Selector14~13_combout )))

	.dataa(\Selector30~13_combout ),
	.datab(\Selector12~10_combout ),
	.datac(\Selector20~11_combout ),
	.datad(\Selector14~13_combout ),
	.cin(gnd),
	.combout(\Equal10~1_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~1 .lut_mask = 16'h0001;
defparam \Equal10~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y11_N18
cycloneive_lcell_comb \Equal10~4 (
// Equation(s):
// \Equal10~4_combout  = (\Equal10~2_combout  & (\Equal10~0_combout  & (\Equal10~3_combout  & \Equal10~1_combout )))

	.dataa(\Equal10~2_combout ),
	.datab(\Equal10~0_combout ),
	.datac(\Equal10~3_combout ),
	.datad(\Equal10~1_combout ),
	.cin(gnd),
	.combout(\Equal10~4_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~4 .lut_mask = 16'h8000;
defparam \Equal10~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y13_N12
cycloneive_lcell_comb \Selector18~2 (
// Equation(s):
// \Selector18~2_combout  = (\Selector18~1_combout  & ((\Selector10~4_combout ) # ((\ShiftLeft0~33_combout  & \Selector18~0_combout )))) # (!\Selector18~1_combout  & (((\ShiftLeft0~33_combout  & \Selector18~0_combout ))))

	.dataa(\Selector18~1_combout ),
	.datab(\Selector10~4_combout ),
	.datac(\ShiftLeft0~33_combout ),
	.datad(\Selector18~0_combout ),
	.cin(gnd),
	.combout(\Selector18~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~2 .lut_mask = 16'hF888;
defparam \Selector18~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y14_N28
cycloneive_lcell_comb \Selector22~4 (
// Equation(s):
// \Selector22~4_combout  = (\ShiftRight1~15_combout  & ((\Selector23~4_combout ) # ((\Selector23~3_combout  & \ShiftRight1~22_combout )))) # (!\ShiftRight1~15_combout  & (\Selector23~3_combout  & ((\ShiftRight1~22_combout ))))

	.dataa(\ShiftRight1~15_combout ),
	.datab(\Selector23~3_combout ),
	.datac(\Selector23~4_combout ),
	.datad(\ShiftRight1~22_combout ),
	.cin(gnd),
	.combout(\Selector22~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~4 .lut_mask = 16'hECA0;
defparam \Selector22~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N4
cycloneive_lcell_comb \Selector18~5 (
// Equation(s):
// \Selector18~5_combout  = (\Selector0~19_combout  & ((\Add1~26_combout ) # ((\Add0~26_combout  & \Selector0~6_combout )))) # (!\Selector0~19_combout  & (\Add0~26_combout  & (\Selector0~6_combout )))

	.dataa(\Selector0~19_combout ),
	.datab(\Add0~26_combout ),
	.datac(\Selector0~6_combout ),
	.datad(\Add1~26_combout ),
	.cin(gnd),
	.combout(\Selector18~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~5 .lut_mask = 16'hEAC0;
defparam \Selector18~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N18
cycloneive_lcell_comb \Selector18~4 (
// Equation(s):
// \Selector18~4_combout  = (\Selector0~7_combout  & (\aluif.a[13]~input_o  $ (\aluif.b[13]~input_o )))

	.dataa(\aluif.a[13]~input_o ),
	.datab(\Selector0~7_combout ),
	.datac(\aluif.b[13]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector18~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~4 .lut_mask = 16'h4848;
defparam \Selector18~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N30
cycloneive_lcell_comb \Selector18~6 (
// Equation(s):
// \Selector18~6_combout  = (\Selector18~5_combout ) # ((\Selector18~4_combout ) # ((\Selector22~4_combout  & !\aluif.b[2]~input_o )))

	.dataa(\Selector22~4_combout ),
	.datab(\Selector18~5_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\Selector18~4_combout ),
	.cin(gnd),
	.combout(\Selector18~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~6 .lut_mask = 16'hFFCE;
defparam \Selector18~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N4
cycloneive_lcell_comb \Selector18~7 (
// Equation(s):
// \Selector18~7_combout  = (\Selector23~4_combout  & ((\ShiftRight1~24_combout ) # ((\Selector23~3_combout  & \ShiftRight1~19_combout )))) # (!\Selector23~4_combout  & (((\Selector23~3_combout  & \ShiftRight1~19_combout ))))

	.dataa(\Selector23~4_combout ),
	.datab(\ShiftRight1~24_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\ShiftRight1~19_combout ),
	.cin(gnd),
	.combout(\Selector18~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~7 .lut_mask = 16'hF888;
defparam \Selector18~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N16
cycloneive_lcell_comb \Selector18~3 (
// Equation(s):
// \Selector18~3_combout  = (\aluif.a[13]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.b[13]~input_o )))) # (!\aluif.a[13]~input_o  & (((\aluif.b[13]~input_o  & \Selector0~20_combout ))))

	.dataa(\aluif.a[13]~input_o ),
	.datab(\Selector0~21_combout ),
	.datac(\aluif.b[13]~input_o ),
	.datad(\Selector0~20_combout ),
	.cin(gnd),
	.combout(\Selector18~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~3 .lut_mask = 16'hFA80;
defparam \Selector18~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N24
cycloneive_lcell_comb \Selector18~8 (
// Equation(s):
// \Selector18~8_combout  = (\Selector18~6_combout ) # ((\Selector18~3_combout ) # ((\Selector18~7_combout  & \aluif.b[2]~input_o )))

	.dataa(\Selector18~6_combout ),
	.datab(\Selector18~7_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\Selector18~3_combout ),
	.cin(gnd),
	.combout(\Selector18~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~8 .lut_mask = 16'hFFEA;
defparam \Selector18~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N2
cycloneive_lcell_comb \Selector18~9 (
// Equation(s):
// \Selector18~9_combout  = (\Selector18~2_combout ) # ((\Selector18~8_combout ) # ((\ShiftLeft0~54_combout  & \Selector30~7_combout )))

	.dataa(\Selector18~2_combout ),
	.datab(\Selector18~8_combout ),
	.datac(\ShiftLeft0~54_combout ),
	.datad(\Selector30~7_combout ),
	.cin(gnd),
	.combout(\Selector18~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~9 .lut_mask = 16'hFEEE;
defparam \Selector18~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N0
cycloneive_lcell_comb \Selector13~9 (
// Equation(s):
// \Selector13~9_combout  = (\Selector10~3_combout  & ((\ShiftRight1~52_combout ) # ((\Selector9~0_combout  & \ShiftRight0~25_combout )))) # (!\Selector10~3_combout  & (((\Selector9~0_combout  & \ShiftRight0~25_combout ))))

	.dataa(\Selector10~3_combout ),
	.datab(\ShiftRight1~52_combout ),
	.datac(\Selector9~0_combout ),
	.datad(\ShiftRight0~25_combout ),
	.cin(gnd),
	.combout(\Selector13~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~9 .lut_mask = 16'hF888;
defparam \Selector13~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N12
cycloneive_lcell_comb \Selector13~6 (
// Equation(s):
// \Selector13~6_combout  = (\Selector10~2_combout  & ((\aluif.b[2]~input_o  & ((\ShiftLeft0~67_combout ))) # (!\aluif.b[2]~input_o  & (\ShiftLeft0~62_combout ))))

	.dataa(\aluif.b[2]~input_o ),
	.datab(\Selector10~2_combout ),
	.datac(\ShiftLeft0~62_combout ),
	.datad(\ShiftLeft0~67_combout ),
	.cin(gnd),
	.combout(\Selector13~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~6 .lut_mask = 16'hC840;
defparam \Selector13~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N22
cycloneive_lcell_comb \ShiftRight1~61 (
// Equation(s):
// \ShiftRight1~61_combout  = (\Selector7~2_combout  & ((\ShiftRight1~49_combout ) # ((\ShiftLeft0~33_combout  & \ShiftRight1~56_combout )))) # (!\Selector7~2_combout  & (((\ShiftLeft0~33_combout  & \ShiftRight1~56_combout ))))

	.dataa(\Selector7~2_combout ),
	.datab(\ShiftRight1~49_combout ),
	.datac(\ShiftLeft0~33_combout ),
	.datad(\ShiftRight1~56_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~61_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~61 .lut_mask = 16'hF888;
defparam \ShiftRight1~61 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N12
cycloneive_lcell_comb \out~7 (
// Equation(s):
// \out~7_combout  = \aluif.a[18]~input_o  $ (\aluif.b[18]~input_o )

	.dataa(gnd),
	.datab(\aluif.a[18]~input_o ),
	.datac(\aluif.b[18]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\out~7_combout ),
	.cout());
// synopsys translate_off
defparam \out~7 .lut_mask = 16'h3C3C;
defparam \out~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N30
cycloneive_lcell_comb \Selector13~4 (
// Equation(s):
// \Selector13~4_combout  = (\out~7_combout  & ((\Selector0~7_combout ) # ((\Selector0~19_combout  & \Add1~36_combout )))) # (!\out~7_combout  & (((\Selector0~19_combout  & \Add1~36_combout ))))

	.dataa(\out~7_combout ),
	.datab(\Selector0~7_combout ),
	.datac(\Selector0~19_combout ),
	.datad(\Add1~36_combout ),
	.cin(gnd),
	.combout(\Selector13~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~4 .lut_mask = 16'hF888;
defparam \Selector13~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N2
cycloneive_lcell_comb \Selector13~5 (
// Equation(s):
// \Selector13~5_combout  = (\Selector13~4_combout ) # ((\ShiftRight1~61_combout  & ((\Selector9~0_combout ) # (\Selector10~3_combout ))))

	.dataa(\ShiftRight1~61_combout ),
	.datab(\Selector13~4_combout ),
	.datac(\Selector9~0_combout ),
	.datad(\Selector10~3_combout ),
	.cin(gnd),
	.combout(\Selector13~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~5 .lut_mask = 16'hEEEC;
defparam \Selector13~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N30
cycloneive_lcell_comb \Selector13~11 (
// Equation(s):
// \Selector13~11_combout  = (\Selector0~4_combout  & (\aluif.b[4]~input_o  & (!\aluif.b[2]~input_o  & !\aluif.b[3]~input_o )))

	.dataa(\Selector0~4_combout ),
	.datab(\aluif.b[4]~input_o ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector13~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~11 .lut_mask = 16'h0008;
defparam \Selector13~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N28
cycloneive_lcell_comb \Selector13~7 (
// Equation(s):
// \Selector13~7_combout  = (\ShiftLeft0~66_combout  & ((\Selector13~11_combout ) # ((\Add0~36_combout  & \Selector0~6_combout )))) # (!\ShiftLeft0~66_combout  & (\Add0~36_combout  & ((\Selector0~6_combout ))))

	.dataa(\ShiftLeft0~66_combout ),
	.datab(\Add0~36_combout ),
	.datac(\Selector13~11_combout ),
	.datad(\Selector0~6_combout ),
	.cin(gnd),
	.combout(\Selector13~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~7 .lut_mask = 16'hECA0;
defparam \Selector13~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N22
cycloneive_lcell_comb \Selector13~8 (
// Equation(s):
// \Selector13~8_combout  = (\Selector13~6_combout ) # ((\Selector13~5_combout ) # ((\Selector10~5_combout ) # (\Selector13~7_combout )))

	.dataa(\Selector13~6_combout ),
	.datab(\Selector13~5_combout ),
	.datac(\Selector10~5_combout ),
	.datad(\Selector13~7_combout ),
	.cin(gnd),
	.combout(\Selector13~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~8 .lut_mask = 16'hFFFE;
defparam \Selector13~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y12_N26
cycloneive_lcell_comb \Selector13~2 (
// Equation(s):
// \Selector13~2_combout  = (\aluif.b[18]~input_o  & ((\Selector0~20_combout ) # ((\aluif.a[18]~input_o  & \Selector0~21_combout )))) # (!\aluif.b[18]~input_o  & (\aluif.a[18]~input_o  & (\Selector0~20_combout )))

	.dataa(\aluif.b[18]~input_o ),
	.datab(\aluif.a[18]~input_o ),
	.datac(\Selector0~20_combout ),
	.datad(\Selector0~21_combout ),
	.cin(gnd),
	.combout(\Selector13~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~2 .lut_mask = 16'hE8E0;
defparam \Selector13~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N24
cycloneive_lcell_comb \Selector13~3 (
// Equation(s):
// \Selector13~3_combout  = (\Selector13~2_combout ) # ((!\aluif.b[3]~input_o  & (\ShiftLeft0~90_combout  & \Selector30~7_combout )))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\ShiftLeft0~90_combout ),
	.datac(\Selector13~2_combout ),
	.datad(\Selector30~7_combout ),
	.cin(gnd),
	.combout(\Selector13~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~3 .lut_mask = 16'hF4F0;
defparam \Selector13~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N18
cycloneive_lcell_comb \Selector13~10 (
// Equation(s):
// \Selector13~10_combout  = (\Selector13~8_combout ) # ((\Selector13~3_combout ) # ((\aluif.b[3]~input_o  & \Selector13~9_combout )))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\Selector13~9_combout ),
	.datac(\Selector13~8_combout ),
	.datad(\Selector13~3_combout ),
	.cin(gnd),
	.combout(\Selector13~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~10 .lut_mask = 16'hFFF8;
defparam \Selector13~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N18
cycloneive_lcell_comb \Selector15~4 (
// Equation(s):
// \Selector15~4_combout  = (\Selector0~5_combout  & ((\Add1~32_combout ) # ((\Selector0~6_combout  & \Add0~32_combout )))) # (!\Selector0~5_combout  & (\Selector0~6_combout  & ((\Add0~32_combout ))))

	.dataa(\Selector0~5_combout ),
	.datab(\Selector0~6_combout ),
	.datac(\Add1~32_combout ),
	.datad(\Add0~32_combout ),
	.cin(gnd),
	.combout(\Selector15~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~4 .lut_mask = 16'hECA0;
defparam \Selector15~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N12
cycloneive_lcell_comb \Selector15~5 (
// Equation(s):
// \Selector15~5_combout  = (\Selector15~4_combout ) # ((\Selector0~7_combout  & (\aluif.b[16]~input_o  $ (\aluif.a[16]~input_o ))))

	.dataa(\aluif.b[16]~input_o ),
	.datab(\Selector15~4_combout ),
	.datac(\aluif.a[16]~input_o ),
	.datad(\Selector0~7_combout ),
	.cin(gnd),
	.combout(\Selector15~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~5 .lut_mask = 16'hDECC;
defparam \Selector15~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N16
cycloneive_lcell_comb \Selector15~3 (
// Equation(s):
// \Selector15~3_combout  = (\aluif.b[16]~input_o  & ((\Selector0~2_combout ) # ((\Selector0~3_combout  & \aluif.a[16]~input_o )))) # (!\aluif.b[16]~input_o  & (((\aluif.a[16]~input_o  & \Selector0~2_combout ))))

	.dataa(\aluif.b[16]~input_o ),
	.datab(\Selector0~3_combout ),
	.datac(\aluif.a[16]~input_o ),
	.datad(\Selector0~2_combout ),
	.cin(gnd),
	.combout(\Selector15~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~3 .lut_mask = 16'hFA80;
defparam \Selector15~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y12_N0
cycloneive_lcell_comb \Selector15~2 (
// Equation(s):
// \Selector15~2_combout  = (\Selector10~2_combout  & ((\aluif.b[2]~input_o  & (\ShiftLeft0~52_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftLeft0~82_combout )))))

	.dataa(\ShiftLeft0~52_combout ),
	.datab(\aluif.b[2]~input_o ),
	.datac(\ShiftLeft0~82_combout ),
	.datad(\Selector10~2_combout ),
	.cin(gnd),
	.combout(\Selector15~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~2 .lut_mask = 16'hB800;
defparam \Selector15~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y9_N30
cycloneive_lcell_comb \Selector15~6 (
// Equation(s):
// \Selector15~6_combout  = (\Selector1~13_combout ) # ((\Selector15~1_combout  & (\aluif.a[0]~input_o  & \Selector0~4_combout )))

	.dataa(\Selector1~13_combout ),
	.datab(\Selector15~1_combout ),
	.datac(\aluif.a[0]~input_o ),
	.datad(\Selector0~4_combout ),
	.cin(gnd),
	.combout(\Selector15~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~6 .lut_mask = 16'hEAAA;
defparam \Selector15~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N0
cycloneive_lcell_comb \Selector15~7 (
// Equation(s):
// \Selector15~7_combout  = (\aluif.b[4]~input_o  & (((\Selector15~6_combout )))) # (!\aluif.b[4]~input_o  & (\ShiftRight0~10_combout  & ((\Selector15~0_combout ))))

	.dataa(\ShiftRight0~10_combout ),
	.datab(\Selector15~6_combout ),
	.datac(\aluif.b[4]~input_o ),
	.datad(\Selector15~0_combout ),
	.cin(gnd),
	.combout(\Selector15~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~7 .lut_mask = 16'hCAC0;
defparam \Selector15~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y12_N26
cycloneive_lcell_comb \Selector15~8 (
// Equation(s):
// \Selector15~8_combout  = (\Selector15~7_combout ) # ((\Selector30~7_combout  & (!\aluif.b[3]~input_o  & \ShiftLeft0~89_combout )))

	.dataa(\Selector30~7_combout ),
	.datab(\aluif.b[3]~input_o ),
	.datac(\ShiftLeft0~89_combout ),
	.datad(\Selector15~7_combout ),
	.cin(gnd),
	.combout(\Selector15~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~8 .lut_mask = 16'hFF20;
defparam \Selector15~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y8_N22
cycloneive_lcell_comb \Selector15~9 (
// Equation(s):
// \Selector15~9_combout  = (\Selector15~5_combout ) # ((\Selector15~3_combout ) # ((\Selector15~2_combout ) # (\Selector15~8_combout )))

	.dataa(\Selector15~5_combout ),
	.datab(\Selector15~3_combout ),
	.datac(\Selector15~2_combout ),
	.datad(\Selector15~8_combout ),
	.cin(gnd),
	.combout(\Selector15~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~9 .lut_mask = 16'hFFFE;
defparam \Selector15~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N22
cycloneive_lcell_comb \Selector23~10 (
// Equation(s):
// \Selector23~10_combout  = (\Selector24~14_combout ) # ((!\aluif.b[3]~input_o  & (\ShiftRight0~9_combout  & \Selector23~5_combout )))

	.dataa(\Selector24~14_combout ),
	.datab(\aluif.b[3]~input_o ),
	.datac(\ShiftRight0~9_combout ),
	.datad(\Selector23~5_combout ),
	.cin(gnd),
	.combout(\Selector23~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~10 .lut_mask = 16'hBAAA;
defparam \Selector23~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N20
cycloneive_lcell_comb \out~8 (
// Equation(s):
// \out~8_combout  = \aluif.a[8]~input_o  $ (\aluif.b[8]~input_o )

	.dataa(\aluif.a[8]~input_o ),
	.datab(gnd),
	.datac(\aluif.b[8]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\out~8_combout ),
	.cout());
// synopsys translate_off
defparam \out~8 .lut_mask = 16'h5A5A;
defparam \out~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N14
cycloneive_lcell_comb \Selector23~9 (
// Equation(s):
// \Selector23~9_combout  = (\Add1~16_combout  & ((\Selector0~19_combout ) # ((\out~8_combout  & \Selector0~7_combout )))) # (!\Add1~16_combout  & (\out~8_combout  & (\Selector0~7_combout )))

	.dataa(\Add1~16_combout ),
	.datab(\out~8_combout ),
	.datac(\Selector0~7_combout ),
	.datad(\Selector0~19_combout ),
	.cin(gnd),
	.combout(\Selector23~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~9 .lut_mask = 16'hEAC0;
defparam \Selector23~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N16
cycloneive_lcell_comb \Selector23~11 (
// Equation(s):
// \Selector23~11_combout  = (\Selector23~10_combout ) # ((\Selector23~9_combout ) # ((!\aluif.b[2]~input_o  & \Selector27~2_combout )))

	.dataa(\Selector23~10_combout ),
	.datab(\Selector23~9_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\Selector27~2_combout ),
	.cin(gnd),
	.combout(\Selector23~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~11 .lut_mask = 16'hEFEE;
defparam \Selector23~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N26
cycloneive_lcell_comb \Selector23~6 (
// Equation(s):
// \Selector23~6_combout  = (\aluif.a[8]~input_o  & ((\Selector0~20_combout ) # ((\Selector0~21_combout  & \aluif.b[8]~input_o )))) # (!\aluif.a[8]~input_o  & (((\aluif.b[8]~input_o  & \Selector0~20_combout ))))

	.dataa(\aluif.a[8]~input_o ),
	.datab(\Selector0~21_combout ),
	.datac(\aluif.b[8]~input_o ),
	.datad(\Selector0~20_combout ),
	.cin(gnd),
	.combout(\Selector23~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~6 .lut_mask = 16'hFA80;
defparam \Selector23~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N12
cycloneive_lcell_comb \Selector23~8 (
// Equation(s):
// \Selector23~8_combout  = (\Selector23~6_combout ) # ((\aluif.b[2]~input_o  & \Selector23~7_combout ))

	.dataa(gnd),
	.datab(\Selector23~6_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(\Selector23~7_combout ),
	.cin(gnd),
	.combout(\Selector23~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~8 .lut_mask = 16'hFCCC;
defparam \Selector23~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N26
cycloneive_lcell_comb \Selector23~12 (
// Equation(s):
// \Selector23~12_combout  = (\Selector23~11_combout ) # ((\Selector23~8_combout ) # ((\ShiftLeft0~96_combout  & \Selector30~7_combout )))

	.dataa(\ShiftLeft0~96_combout ),
	.datab(\Selector23~11_combout ),
	.datac(\Selector30~7_combout ),
	.datad(\Selector23~8_combout ),
	.cin(gnd),
	.combout(\Selector23~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~12 .lut_mask = 16'hFFEC;
defparam \Selector23~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y11_N2
cycloneive_lcell_comb \Selector23~13 (
// Equation(s):
// \Selector23~13_combout  = (\Selector23~12_combout ) # ((\Add0~16_combout  & \Selector0~6_combout ))

	.dataa(\Selector23~12_combout ),
	.datab(\Add0~16_combout ),
	.datac(\Selector0~6_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector23~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~13 .lut_mask = 16'hEAEA;
defparam \Selector23~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y11_N4
cycloneive_lcell_comb \Equal10~6 (
// Equation(s):
// \Equal10~6_combout  = (!\Selector18~9_combout  & (!\Selector13~10_combout  & (!\Selector15~9_combout  & !\Selector23~13_combout )))

	.dataa(\Selector18~9_combout ),
	.datab(\Selector13~10_combout ),
	.datac(\Selector15~9_combout ),
	.datad(\Selector23~13_combout ),
	.cin(gnd),
	.combout(\Equal10~6_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~6 .lut_mask = 16'h0001;
defparam \Equal10~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N0
cycloneive_lcell_comb \ShiftRight1~58 (
// Equation(s):
// \ShiftRight1~58_combout  = (!\aluif.b[0]~input_o  & ((\aluif.b[1]~input_o  & ((\aluif.a[8]~input_o ))) # (!\aluif.b[1]~input_o  & (\aluif.a[6]~input_o ))))

	.dataa(\aluif.b[1]~input_o ),
	.datab(\aluif.a[6]~input_o ),
	.datac(\aluif.b[0]~input_o ),
	.datad(\aluif.a[8]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~58_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~58 .lut_mask = 16'h0E04;
defparam \ShiftRight1~58 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y15_N20
cycloneive_lcell_comb \ShiftRight1~60 (
// Equation(s):
// \ShiftRight1~60_combout  = (\ShiftRight1~58_combout ) # ((\ShiftRight1~59_combout  & \aluif.b[0]~input_o ))

	.dataa(\ShiftRight1~59_combout ),
	.datab(gnd),
	.datac(\aluif.b[0]~input_o ),
	.datad(\ShiftRight1~58_combout ),
	.cin(gnd),
	.combout(\ShiftRight1~60_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~60 .lut_mask = 16'hFFA0;
defparam \ShiftRight1~60 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N0
cycloneive_lcell_comb \Selector25~0 (
// Equation(s):
// \Selector25~0_combout  = (\Selector23~3_combout  & ((\ShiftRight1~54_combout ) # ((\Selector23~4_combout  & \ShiftRight1~60_combout )))) # (!\Selector23~3_combout  & (((\Selector23~4_combout  & \ShiftRight1~60_combout ))))

	.dataa(\Selector23~3_combout ),
	.datab(\ShiftRight1~54_combout ),
	.datac(\Selector23~4_combout ),
	.datad(\ShiftRight1~60_combout ),
	.cin(gnd),
	.combout(\Selector25~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~0 .lut_mask = 16'hF888;
defparam \Selector25~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N12
cycloneive_lcell_comb \Selector25~1 (
// Equation(s):
// \Selector25~1_combout  = (\Add0~12_combout  & ((\Selector0~6_combout ) # ((\Selector25~0_combout  & !\aluif.b[2]~input_o )))) # (!\Add0~12_combout  & (\Selector25~0_combout  & ((!\aluif.b[2]~input_o ))))

	.dataa(\Add0~12_combout ),
	.datab(\Selector25~0_combout ),
	.datac(\Selector0~6_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector25~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~1 .lut_mask = 16'hA0EC;
defparam \Selector25~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N6
cycloneive_lcell_comb \Selector25~2 (
// Equation(s):
// \Selector25~2_combout  = (\Selector10~4_combout  & ((\ShiftRight1~46_combout ) # (!\ShiftRight1~50_combout )))

	.dataa(\Selector10~4_combout ),
	.datab(gnd),
	.datac(\ShiftRight1~50_combout ),
	.datad(\ShiftRight1~46_combout ),
	.cin(gnd),
	.combout(\Selector25~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~2 .lut_mask = 16'hAA0A;
defparam \Selector25~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N8
cycloneive_lcell_comb \Selector25~3 (
// Equation(s):
// \Selector25~3_combout  = (\Selector25~2_combout ) # ((\Selector23~1_combout  & \ShiftRight0~24_combout ))

	.dataa(gnd),
	.datab(\Selector23~1_combout ),
	.datac(\ShiftRight0~24_combout ),
	.datad(\Selector25~2_combout ),
	.cin(gnd),
	.combout(\Selector25~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~3 .lut_mask = 16'hFFC0;
defparam \Selector25~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N14
cycloneive_lcell_comb \Selector25~8 (
// Equation(s):
// \Selector25~8_combout  = (\Selector0~7_combout  & (\aluif.a[6]~input_o  $ (\aluif.b[6]~input_o )))

	.dataa(\aluif.a[6]~input_o ),
	.datab(\Selector0~7_combout ),
	.datac(\aluif.b[6]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector25~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~8 .lut_mask = 16'h4848;
defparam \Selector25~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N26
cycloneive_lcell_comb \Selector25~6 (
// Equation(s):
// \Selector25~6_combout  = (\Selector23~4_combout  & ((\aluif.b[0]~input_o  & (\ShiftRight1~35_combout )) # (!\aluif.b[0]~input_o  & ((\ShiftRight1~8_combout )))))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\ShiftRight1~35_combout ),
	.datac(\Selector23~4_combout ),
	.datad(\ShiftRight1~8_combout ),
	.cin(gnd),
	.combout(\Selector25~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~6 .lut_mask = 16'hD080;
defparam \Selector25~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N20
cycloneive_lcell_comb \Selector25~7 (
// Equation(s):
// \Selector25~7_combout  = (\aluif.b[2]~input_o  & ((\Selector25~6_combout ) # ((\Selector23~3_combout  & \ShiftRight1~56_combout ))))

	.dataa(\Selector23~3_combout ),
	.datab(\ShiftRight1~56_combout ),
	.datac(\Selector25~6_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector25~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~7 .lut_mask = 16'hF800;
defparam \Selector25~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N30
cycloneive_lcell_comb \Selector25~9 (
// Equation(s):
// \Selector25~9_combout  = (\Selector25~8_combout ) # ((\Selector25~7_combout ) # ((\Add1~12_combout  & \Selector0~19_combout )))

	.dataa(\Selector25~8_combout ),
	.datab(\Add1~12_combout ),
	.datac(\Selector0~19_combout ),
	.datad(\Selector25~7_combout ),
	.cin(gnd),
	.combout(\Selector25~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~9 .lut_mask = 16'hFFEA;
defparam \Selector25~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N26
cycloneive_lcell_comb \Selector25~4 (
// Equation(s):
// \Selector25~4_combout  = (\aluif.b[6]~input_o  & ((\Selector0~20_combout ) # ((\aluif.a[6]~input_o  & \Selector0~21_combout )))) # (!\aluif.b[6]~input_o  & (\Selector0~20_combout  & (\aluif.a[6]~input_o )))

	.dataa(\aluif.b[6]~input_o ),
	.datab(\Selector0~20_combout ),
	.datac(\aluif.a[6]~input_o ),
	.datad(\Selector0~21_combout ),
	.cin(gnd),
	.combout(\Selector25~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~4 .lut_mask = 16'hE8C8;
defparam \Selector25~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N10
cycloneive_lcell_comb \Selector25~5 (
// Equation(s):
// \Selector25~5_combout  = (\Selector25~4_combout ) # ((\Selector0~4_combout  & (\ShiftLeft0~68_combout  & !\Selector7~3_combout )))

	.dataa(\Selector0~4_combout ),
	.datab(\ShiftLeft0~68_combout ),
	.datac(\Selector25~4_combout ),
	.datad(\Selector7~3_combout ),
	.cin(gnd),
	.combout(\Selector25~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~5 .lut_mask = 16'hF0F8;
defparam \Selector25~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y10_N4
cycloneive_lcell_comb \Selector25~10 (
// Equation(s):
// \Selector25~10_combout  = (\Selector25~1_combout ) # ((\Selector25~3_combout ) # ((\Selector25~9_combout ) # (\Selector25~5_combout )))

	.dataa(\Selector25~1_combout ),
	.datab(\Selector25~3_combout ),
	.datac(\Selector25~9_combout ),
	.datad(\Selector25~5_combout ),
	.cin(gnd),
	.combout(\Selector25~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~10 .lut_mask = 16'hFFFE;
defparam \Selector25~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y10_N22
cycloneive_lcell_comb \Selector29~7 (
// Equation(s):
// \Selector29~7_combout  = (\aluif.b[2]~input_o  & ((\Selector0~20_combout ) # ((\aluif.a[2]~input_o  & \Selector0~21_combout )))) # (!\aluif.b[2]~input_o  & (\aluif.a[2]~input_o  & ((\Selector0~20_combout ))))

	.dataa(\aluif.b[2]~input_o ),
	.datab(\aluif.a[2]~input_o ),
	.datac(\Selector0~21_combout ),
	.datad(\Selector0~20_combout ),
	.cin(gnd),
	.combout(\Selector29~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~7 .lut_mask = 16'hEE80;
defparam \Selector29~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N4
cycloneive_lcell_comb \Selector29~8 (
// Equation(s):
// \Selector29~8_combout  = (\Selector29~7_combout ) # ((\ShiftRight1~61_combout  & \Selector23~5_combout ))

	.dataa(\ShiftRight1~61_combout ),
	.datab(\Selector29~7_combout ),
	.datac(gnd),
	.datad(\Selector23~5_combout ),
	.cin(gnd),
	.combout(\Selector29~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~8 .lut_mask = 16'hEECC;
defparam \Selector29~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N8
cycloneive_lcell_comb \Selector21~0 (
// Equation(s):
// \Selector21~0_combout  = (\Selector23~1_combout  & ((\ShiftRight0~25_combout ) # ((\Selector10~4_combout  & \ShiftRight1~52_combout )))) # (!\Selector23~1_combout  & (\Selector10~4_combout  & (\ShiftRight1~52_combout )))

	.dataa(\Selector23~1_combout ),
	.datab(\Selector10~4_combout ),
	.datac(\ShiftRight1~52_combout ),
	.datad(\ShiftRight0~25_combout ),
	.cin(gnd),
	.combout(\Selector21~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~0 .lut_mask = 16'hEAC0;
defparam \Selector21~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N6
cycloneive_lcell_comb \Selector29~0 (
// Equation(s):
// \Selector29~0_combout  = (\Selector0~7_combout  & (\aluif.a[2]~input_o  $ (\aluif.b[2]~input_o )))

	.dataa(\aluif.a[2]~input_o ),
	.datab(\aluif.b[2]~input_o ),
	.datac(gnd),
	.datad(\Selector0~7_combout ),
	.cin(gnd),
	.combout(\Selector29~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~0 .lut_mask = 16'h6600;
defparam \Selector29~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N0
cycloneive_lcell_comb \Selector29~2 (
// Equation(s):
// \Selector29~2_combout  = (\Selector2~6_combout  & (((!\ShiftLeft0~33_combout )))) # (!\Selector2~6_combout  & ((\ShiftLeft0~33_combout  & (\ShiftRight1~7_combout )) # (!\ShiftLeft0~33_combout  & ((\ShiftRight1~60_combout )))))

	.dataa(\Selector2~6_combout ),
	.datab(\ShiftRight1~7_combout ),
	.datac(\ShiftRight1~60_combout ),
	.datad(\ShiftLeft0~33_combout ),
	.cin(gnd),
	.combout(\Selector29~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~2 .lut_mask = 16'h44FA;
defparam \Selector29~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N10
cycloneive_lcell_comb \ShiftRight1~53 (
// Equation(s):
// \ShiftRight1~53_combout  = (!\aluif.b[2]~input_o  & ((\aluif.b[0]~input_o  & ((\ShiftRight1~35_combout ))) # (!\aluif.b[0]~input_o  & (\ShiftRight1~8_combout ))))

	.dataa(\aluif.b[0]~input_o ),
	.datab(\ShiftRight1~8_combout ),
	.datac(\ShiftRight1~35_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~53_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~53 .lut_mask = 16'h00E4;
defparam \ShiftRight1~53 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N12
cycloneive_lcell_comb \ShiftRight1~55 (
// Equation(s):
// \ShiftRight1~55_combout  = (\ShiftRight1~53_combout ) # ((\ShiftRight1~54_combout  & \aluif.b[2]~input_o ))

	.dataa(\ShiftRight1~53_combout ),
	.datab(gnd),
	.datac(\ShiftRight1~54_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight1~55_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight1~55 .lut_mask = 16'hFAAA;
defparam \ShiftRight1~55 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N2
cycloneive_lcell_comb \Selector29~3 (
// Equation(s):
// \Selector29~3_combout  = (\Selector2~6_combout  & ((\Selector29~2_combout  & (\ShiftRight1~55_combout )) # (!\Selector29~2_combout  & ((\ShiftRight1~6_combout ))))) # (!\Selector2~6_combout  & (\Selector29~2_combout ))

	.dataa(\Selector2~6_combout ),
	.datab(\Selector29~2_combout ),
	.datac(\ShiftRight1~55_combout ),
	.datad(\ShiftRight1~6_combout ),
	.cin(gnd),
	.combout(\Selector29~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~3 .lut_mask = 16'hE6C4;
defparam \Selector29~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N28
cycloneive_lcell_comb \Selector29~4 (
// Equation(s):
// \Selector29~4_combout  = (\Selector0~6_combout  & ((\Add0~4_combout ) # ((\Selector29~1_combout  & \Selector29~3_combout )))) # (!\Selector0~6_combout  & (((\Selector29~1_combout  & \Selector29~3_combout ))))

	.dataa(\Selector0~6_combout ),
	.datab(\Add0~4_combout ),
	.datac(\Selector29~1_combout ),
	.datad(\Selector29~3_combout ),
	.cin(gnd),
	.combout(\Selector29~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~4 .lut_mask = 16'hF888;
defparam \Selector29~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X86_Y11_N14
cycloneive_lcell_comb \Selector29~5 (
// Equation(s):
// \Selector29~5_combout  = (\Selector29~0_combout ) # ((\Selector29~4_combout ) # ((\Add1~4_combout  & \Selector0~19_combout )))

	.dataa(\Selector29~0_combout ),
	.datab(\Selector29~4_combout ),
	.datac(\Add1~4_combout ),
	.datad(\Selector0~19_combout ),
	.cin(gnd),
	.combout(\Selector29~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~5 .lut_mask = 16'hFEEE;
defparam \Selector29~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y11_N2
cycloneive_lcell_comb \Selector29~6 (
// Equation(s):
// \Selector29~6_combout  = (\Selector29~5_combout ) # ((\ShiftLeft0~66_combout  & (\Selector30~7_combout  & \ShiftLeft0~33_combout )))

	.dataa(\Selector29~5_combout ),
	.datab(\ShiftLeft0~66_combout ),
	.datac(\Selector30~7_combout ),
	.datad(\ShiftLeft0~33_combout ),
	.cin(gnd),
	.combout(\Selector29~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~6 .lut_mask = 16'hEAAA;
defparam \Selector29~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N6
cycloneive_lcell_comb \Selector29~9 (
// Equation(s):
// \Selector29~9_combout  = (\Selector29~8_combout ) # ((\Selector29~6_combout ) # ((\aluif.b[3]~input_o  & \Selector21~0_combout )))

	.dataa(\aluif.b[3]~input_o ),
	.datab(\Selector29~8_combout ),
	.datac(\Selector21~0_combout ),
	.datad(\Selector29~6_combout ),
	.cin(gnd),
	.combout(\Selector29~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~9 .lut_mask = 16'hFFEC;
defparam \Selector29~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N20
cycloneive_lcell_comb \Selector21~5 (
// Equation(s):
// \Selector21~5_combout  = (\Selector0~7_combout  & (\aluif.a[10]~input_o  $ (\aluif.b[10]~input_o )))

	.dataa(\aluif.a[10]~input_o ),
	.datab(\aluif.b[10]~input_o ),
	.datac(\Selector0~7_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector21~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~5 .lut_mask = 16'h6060;
defparam \Selector21~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y14_N14
cycloneive_lcell_comb \Selector21~4 (
// Equation(s):
// \Selector21~4_combout  = (\Selector23~3_combout  & ((\aluif.b[2]~input_o  & (\ShiftRight1~49_combout )) # (!\aluif.b[2]~input_o  & ((\ShiftRight1~56_combout )))))

	.dataa(\Selector23~3_combout ),
	.datab(\ShiftRight1~49_combout ),
	.datac(\ShiftRight1~56_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector21~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~4 .lut_mask = 16'h88A0;
defparam \Selector21~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N22
cycloneive_lcell_comb \Selector21~6 (
// Equation(s):
// \Selector21~6_combout  = (\Selector21~5_combout ) # ((\Selector21~4_combout ) # ((\Add1~20_combout  & \Selector0~19_combout )))

	.dataa(\Add1~20_combout ),
	.datab(\Selector21~5_combout ),
	.datac(\Selector21~4_combout ),
	.datad(\Selector0~19_combout ),
	.cin(gnd),
	.combout(\Selector21~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~6 .lut_mask = 16'hFEFC;
defparam \Selector21~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N18
cycloneive_lcell_comb \Selector21~7 (
// Equation(s):
// \Selector21~7_combout  = (\Selector10~4_combout  & ((\ShiftRight1~57_combout ) # ((\Add0~20_combout  & \Selector0~6_combout )))) # (!\Selector10~4_combout  & (((\Add0~20_combout  & \Selector0~6_combout ))))

	.dataa(\Selector10~4_combout ),
	.datab(\ShiftRight1~57_combout ),
	.datac(\Add0~20_combout ),
	.datad(\Selector0~6_combout ),
	.cin(gnd),
	.combout(\Selector21~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~7 .lut_mask = 16'hF888;
defparam \Selector21~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y11_N26
cycloneive_lcell_comb \Selector21~1 (
// Equation(s):
// \Selector21~1_combout  = (\ShiftLeft0~95_combout  & ((\Selector30~7_combout ) # ((\Selector21~0_combout  & !\aluif.b[3]~input_o )))) # (!\ShiftLeft0~95_combout  & (\Selector21~0_combout  & (!\aluif.b[3]~input_o )))

	.dataa(\ShiftLeft0~95_combout ),
	.datab(\Selector21~0_combout ),
	.datac(\aluif.b[3]~input_o ),
	.datad(\Selector30~7_combout ),
	.cin(gnd),
	.combout(\Selector21~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~1 .lut_mask = 16'hAE0C;
defparam \Selector21~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N10
cycloneive_lcell_comb \Selector21~2 (
// Equation(s):
// \Selector21~2_combout  = (\aluif.a[10]~input_o  & ((\Selector0~20_combout ) # ((\aluif.b[10]~input_o  & \Selector0~21_combout )))) # (!\aluif.a[10]~input_o  & (\aluif.b[10]~input_o  & (\Selector0~20_combout )))

	.dataa(\aluif.a[10]~input_o ),
	.datab(\aluif.b[10]~input_o ),
	.datac(\Selector0~20_combout ),
	.datad(\Selector0~21_combout ),
	.cin(gnd),
	.combout(\Selector21~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~2 .lut_mask = 16'hE8E0;
defparam \Selector21~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y11_N4
cycloneive_lcell_comb \Selector21~3 (
// Equation(s):
// \Selector21~3_combout  = (\Selector21~2_combout ) # ((\ShiftRight1~55_combout  & \Selector23~4_combout ))

	.dataa(\Selector21~2_combout ),
	.datab(\ShiftRight1~55_combout ),
	.datac(gnd),
	.datad(\Selector23~4_combout ),
	.cin(gnd),
	.combout(\Selector21~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~3 .lut_mask = 16'hEEAA;
defparam \Selector21~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N28
cycloneive_lcell_comb \Selector21~8 (
// Equation(s):
// \Selector21~8_combout  = (\Selector21~6_combout ) # ((\Selector21~7_combout ) # ((\Selector21~1_combout ) # (\Selector21~3_combout )))

	.dataa(\Selector21~6_combout ),
	.datab(\Selector21~7_combout ),
	.datac(\Selector21~1_combout ),
	.datad(\Selector21~3_combout ),
	.cin(gnd),
	.combout(\Selector21~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~8 .lut_mask = 16'hFFFE;
defparam \Selector21~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y12_N24
cycloneive_lcell_comb \Selector22~7 (
// Equation(s):
// \Selector22~7_combout  = (\Selector24~14_combout ) # ((\Selector26~5_combout  & !\aluif.b[2]~input_o ))

	.dataa(\Selector24~14_combout ),
	.datab(\Selector26~5_combout ),
	.datac(\aluif.b[2]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector22~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~7 .lut_mask = 16'hAEAE;
defparam \Selector22~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y10_N4
cycloneive_lcell_comb \Selector22~0 (
// Equation(s):
// \Selector22~0_combout  = (\Selector10~4_combout  & (\ShiftRight1~20_combout  & !\aluif.b[3]~input_o ))

	.dataa(\Selector10~4_combout ),
	.datab(\ShiftRight1~20_combout ),
	.datac(gnd),
	.datad(\aluif.b[3]~input_o ),
	.cin(gnd),
	.combout(\Selector22~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~0 .lut_mask = 16'h0088;
defparam \Selector22~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N14
cycloneive_lcell_comb \Selector22~1 (
// Equation(s):
// \Selector22~1_combout  = (\aluif.a[9]~input_o  & ((\Selector0~20_combout ) # ((\aluif.b[9]~input_o  & \Selector0~21_combout )))) # (!\aluif.a[9]~input_o  & (\Selector0~20_combout  & (\aluif.b[9]~input_o )))

	.dataa(\aluif.a[9]~input_o ),
	.datab(\Selector0~20_combout ),
	.datac(\aluif.b[9]~input_o ),
	.datad(\Selector0~21_combout ),
	.cin(gnd),
	.combout(\Selector22~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~1 .lut_mask = 16'hE8C8;
defparam \Selector22~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y13_N18
cycloneive_lcell_comb \Selector22~2 (
// Equation(s):
// \Selector22~2_combout  = (\Selector22~1_combout ) # ((!\aluif.b[3]~input_o  & (\Selector23~1_combout  & \ShiftRight0~22_combout )))

	.dataa(\Selector22~1_combout ),
	.datab(\aluif.b[3]~input_o ),
	.datac(\Selector23~1_combout ),
	.datad(\ShiftRight0~22_combout ),
	.cin(gnd),
	.combout(\Selector22~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~2 .lut_mask = 16'hBAAA;
defparam \Selector22~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X85_Y13_N8
cycloneive_lcell_comb \out~6 (
// Equation(s):
// \out~6_combout  = \aluif.b[9]~input_o  $ (\aluif.a[9]~input_o )

	.dataa(gnd),
	.datab(gnd),
	.datac(\aluif.b[9]~input_o ),
	.datad(\aluif.a[9]~input_o ),
	.cin(gnd),
	.combout(\out~6_combout ),
	.cout());
// synopsys translate_off
defparam \out~6 .lut_mask = 16'h0FF0;
defparam \out~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N22
cycloneive_lcell_comb \Selector22~3 (
// Equation(s):
// \Selector22~3_combout  = (\out~6_combout  & ((\Selector0~7_combout ) # ((\Add1~18_combout  & \Selector0~19_combout )))) # (!\out~6_combout  & (\Add1~18_combout  & ((\Selector0~19_combout ))))

	.dataa(\out~6_combout ),
	.datab(\Add1~18_combout ),
	.datac(\Selector0~7_combout ),
	.datad(\Selector0~19_combout ),
	.cin(gnd),
	.combout(\Selector22~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~3 .lut_mask = 16'hECA0;
defparam \Selector22~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X84_Y12_N0
cycloneive_lcell_comb \Selector22~5 (
// Equation(s):
// \Selector22~5_combout  = (\Selector22~2_combout ) # ((\Selector22~3_combout ) # ((\Selector22~4_combout  & \aluif.b[2]~input_o )))

	.dataa(\Selector22~4_combout ),
	.datab(\Selector22~2_combout ),
	.datac(\Selector22~3_combout ),
	.datad(\aluif.b[2]~input_o ),
	.cin(gnd),
	.combout(\Selector22~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~5 .lut_mask = 16'hFEFC;
defparam \Selector22~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y11_N28
cycloneive_lcell_comb \Selector22~6 (
// Equation(s):
// \Selector22~6_combout  = (\Selector22~0_combout ) # ((\Selector22~5_combout ) # ((\ShiftLeft0~88_combout  & \Selector30~7_combout )))

	.dataa(\Selector22~0_combout ),
	.datab(\ShiftLeft0~88_combout ),
	.datac(\Selector30~7_combout ),
	.datad(\Selector22~5_combout ),
	.cin(gnd),
	.combout(\Selector22~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~6 .lut_mask = 16'hFFEA;
defparam \Selector22~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y11_N6
cycloneive_lcell_comb \Selector22~8 (
// Equation(s):
// \Selector22~8_combout  = (\Selector22~7_combout ) # ((\Selector22~6_combout ) # ((\Selector0~6_combout  & \Add0~18_combout )))

	.dataa(\Selector0~6_combout ),
	.datab(\Selector22~7_combout ),
	.datac(\Add0~18_combout ),
	.datad(\Selector22~6_combout ),
	.cin(gnd),
	.combout(\Selector22~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~8 .lut_mask = 16'hFFEC;
defparam \Selector22~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y11_N24
cycloneive_lcell_comb \Equal10~5 (
// Equation(s):
// \Equal10~5_combout  = (!\Selector25~10_combout  & (!\Selector29~9_combout  & (!\Selector21~8_combout  & !\Selector22~8_combout )))

	.dataa(\Selector25~10_combout ),
	.datab(\Selector29~9_combout ),
	.datac(\Selector21~8_combout ),
	.datad(\Selector22~8_combout ),
	.cin(gnd),
	.combout(\Equal10~5_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~5 .lut_mask = 16'h0001;
defparam \Equal10~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y11_N20
cycloneive_lcell_comb \Equal10~10 (
// Equation(s):
// \Equal10~10_combout  = (\Equal10~9_combout  & (\Equal10~4_combout  & (\Equal10~6_combout  & \Equal10~5_combout )))

	.dataa(\Equal10~9_combout ),
	.datab(\Equal10~4_combout ),
	.datac(\Equal10~6_combout ),
	.datad(\Equal10~5_combout ),
	.cin(gnd),
	.combout(\Equal10~10_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~10 .lut_mask = 16'h8000;
defparam \Equal10~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N12
cycloneive_lcell_comb \overflow~0 (
// Equation(s):
// \overflow~0_combout  = (\Selector0~19_combout  & ((\Selector0~6_combout ) # (\aluif.b[31]~input_o  $ (\aluif.a[31]~input_o )))) # (!\Selector0~19_combout  & (\Selector0~6_combout  & (\aluif.b[31]~input_o  $ (!\aluif.a[31]~input_o ))))

	.dataa(\Selector0~19_combout ),
	.datab(\Selector0~6_combout ),
	.datac(\aluif.b[31]~input_o ),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\overflow~0_combout ),
	.cout());
// synopsys translate_off
defparam \overflow~0 .lut_mask = 16'hCAAC;
defparam \overflow~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X83_Y11_N6
cycloneive_lcell_comb \overflow~1 (
// Equation(s):
// \overflow~1_combout  = (\overflow~0_combout  & (\Selector0~18_combout  $ (\aluif.a[31]~input_o )))

	.dataa(\overflow~0_combout ),
	.datab(\Selector0~18_combout ),
	.datac(gnd),
	.datad(\aluif.a[31]~input_o ),
	.cin(gnd),
	.combout(\overflow~1_combout ),
	.cout());
// synopsys translate_off
defparam \overflow~1 .lut_mask = 16'h2288;
defparam \overflow~1 .sum_lutc_input = "datac";
// synopsys translate_on

endmodule
