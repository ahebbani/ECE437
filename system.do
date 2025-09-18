onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/nRST
add wave -noupdate /system_tb/dbg_data_out_tb
add wave -noupdate /system_tb/DUT/CPU/dcif/halt
add wave -noupdate /system_tb/DUT/CPU/dcif/ihit
add wave -noupdate /system_tb/DUT/CPU/dcif/imemREN
add wave -noupdate /system_tb/DUT/CPU/dcif/imemload
add wave -noupdate /system_tb/DUT/CPU/dcif/imemaddr
add wave -noupdate /system_tb/DUT/CPU/dcif/dhit
add wave -noupdate /system_tb/DUT/CPU/dcif/datomic
add wave -noupdate /system_tb/DUT/CPU/dcif/dmemREN
add wave -noupdate /system_tb/DUT/CPU/dcif/dmemWEN
add wave -noupdate /system_tb/DUT/CPU/dcif/flushed
add wave -noupdate /system_tb/DUT/CPU/dcif/dmemload
add wave -noupdate /system_tb/DUT/CPU/dcif/dmemstore
add wave -noupdate /system_tb/DUT/CPU/dcif/dmemaddr
add wave -noupdate -divider cuif
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/inst
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/imm
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/opcode
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
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/ALUSrc
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/halt
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/aluop
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {1 us}
