onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/DUT/CPUCLK
add wave -noupdate /system_tb/nRST
add wave -noupdate /system_tb/DUT/CPU/dcif/halt
add wave -noupdate /system_tb/DUT/CPU/dcif/ihit
add wave -noupdate /system_tb/DUT/CPU/dcif/imemREN
add wave -noupdate /system_tb/DUT/CPU/dcif/imemload
add wave -noupdate /system_tb/DUT/CPU/dcif/imemaddr
add wave -noupdate /system_tb/DUT/CPU/dcif/dhit
add wave -noupdate /system_tb/DUT/CPU/dcif/dmemREN
add wave -noupdate /system_tb/DUT/CPU/dcif/dmemWEN
add wave -noupdate /system_tb/DUT/CPU/dcif/flushed
add wave -noupdate /system_tb/DUT/CPU/dcif/dmemload
add wave -noupdate /system_tb/DUT/CPU/dcif/dmemstore
add wave -noupdate /system_tb/DUT/CPU/dcif/dmemaddr
add wave -noupdate /system_tb/DUT/RAM/ramif/ramload
add wave -noupdate -divider cuif
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/inst
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/imm
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/rs1
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/rs2
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/rd
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/branchPCSrc
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/jumpPCsrc
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/MemtoReg
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/RegWEN
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/dWEN
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/dREN
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/iREN
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/halt
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/aluop
add wave -noupdate /system_tb/DUT/CPU/DP/pcif/npc
add wave -noupdate /system_tb/DUT/CPU/DP/pcif/PC
add wave -noupdate /system_tb/DUT/CPU/DP/pcif/new_pc
add wave -noupdate /system_tb/DUT/CPU/DP/pcif/PCEN
add wave -noupdate -divider aluif
add wave -noupdate /system_tb/DUT/CPU/DP/aluif/a
add wave -noupdate /system_tb/DUT/CPU/DP/aluif/b
add wave -noupdate /system_tb/DUT/CPU/DP/aluif/out
add wave -noupdate /system_tb/DUT/CPU/DP/aluif/opcode
add wave -noupdate -divider rfif
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/WEN
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/wsel
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/rsel1
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/rsel2
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/wdat
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/rdat1
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/rdat2
add wave -noupdate -expand /system_tb/DUT/CPU/DP/REGF/register
add wave -noupdate -expand -group Fetch-Decode /system_tb/DUT/CPU/DP/fdf/pc_out
add wave -noupdate -expand -group Fetch-Decode /system_tb/DUT/CPU/DP/fdf/pc_in
add wave -noupdate -expand -group Fetch-Decode /system_tb/DUT/CPU/DP/fdf/inst_out
add wave -noupdate -expand -group Fetch-Decode /system_tb/DUT/CPU/DP/fdf/inst_in
add wave -noupdate -expand -group Fetch-Decode /system_tb/DUT/CPU/DP/fdf/ihit
add wave -noupdate -expand -group Fetch-Decode /system_tb/DUT/CPU/DP/fdf/flush
add wave -noupdate -expand -group Fetch-Decode /system_tb/DUT/CPU/DP/fdf/stall
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/pc_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/pc_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/rdat1_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/rdat1_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/rdat2_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/rdat2_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/imm_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/imm_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/aluop_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/aluop_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/ihit
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/ALUSrc1_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/ALUSrc1_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/ALUSrc2_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/ALUSrc2_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/dREN_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/dREN_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/dWEN_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/dWEN_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/branchPCSrc_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/branchPCSrc_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/jumpPCsrc_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/jumpPCsrc_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/MemtoReg_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/MemtoReg_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/rd_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/rd_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/inst_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/inst_out
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/flush
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/stall
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/RegWEN_in
add wave -noupdate -expand -group Decode-Execute /system_tb/DUT/CPU/DP/dx/RegWEN_out
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/pc_out
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/pc_in
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/imm_out
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/imm_in
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/rdat2_out
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/rdat2_in
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/alu_out_out
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/alu_out_in
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/dhit
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/dmemREN
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/dmemWEN
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/ihit
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/dREN_out
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/dREN_in
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/dWEN_out
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/dWEN_in
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/MemtoReg_out
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/MemtoReg_in
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/rd_out
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/rd_in
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/RegWEN_out
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/RegWEN_in
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/inst_in
add wave -noupdate -expand -group Execute-Memory /system_tb/DUT/CPU/DP/exm/inst_out
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/pc_out
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/pc_in
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/ihit
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/imm_out
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/imm_in
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/alu_out_out
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/alu_out_in
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/dmemload_out
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/dmemload_in
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/MemtoReg_out
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/MemtoReg_in
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/rd_out
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/rd_in
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/RegWEN_in
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/RegWEN_out
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/inst_in
add wave -noupdate -expand -group memory-writeback /system_tb/DUT/CPU/DP/mwb/inst_out
add wave -noupdate -divider huif
add wave -noupdate /system_tb/DUT/CPU/DP/huif/stall
add wave -noupdate /system_tb/DUT/CPU/DP/huif/flush
add wave -noupdate /system_tb/DUT/CPU/DP/huif/branchtaken
add wave -noupdate /system_tb/DUT/CPU/DP/huif/inst_ex
add wave -noupdate /system_tb/DUT/CPU/DP/huif/rs1_id
add wave -noupdate /system_tb/DUT/CPU/DP/huif/rs2_id
add wave -noupdate /system_tb/DUT/CPU/DP/huif/rd_ex
add wave -noupdate -divider fuif
add wave -noupdate /system_tb/DUT/CPU/DP/fuif/dxo_rs1
add wave -noupdate /system_tb/DUT/CPU/DP/fuif/dxo_rs2
add wave -noupdate /system_tb/DUT/CPU/DP/fuif/exmo_rd
add wave -noupdate /system_tb/DUT/CPU/DP/fuif/mwbo_rd
add wave -noupdate /system_tb/DUT/CPU/DP/fuif/exmo_RegWEN
add wave -noupdate /system_tb/DUT/CPU/DP/fuif/mwbo_RegWEN
add wave -noupdate /system_tb/DUT/CPU/DP/fuif/forwardA
add wave -noupdate /system_tb/DUT/CPU/DP/fuif/forwardB
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8326903353 ps} 0} {{Cursor 2} {138561 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 150
configure wave -valuecolwidth 92
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {364 ns}
