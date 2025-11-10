onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /memory_control_tb/CLK
add wave -noupdate /memory_control_tb/nRST
add wave -noupdate -divider {I AND D}
add wave -noupdate /memory_control_tb/DUT/ccif/iREN
add wave -noupdate /memory_control_tb/DUT/ccif/dREN
add wave -noupdate /memory_control_tb/DUT/ccif/dWEN
add wave -noupdate -divider wait
add wave -noupdate /memory_control_tb/DUT/ccif/iwait
add wave -noupdate /memory_control_tb/DUT/ccif/dwait
add wave -noupdate /memory_control_tb/DUT/ccif/iload
add wave -noupdate /memory_control_tb/DUT/ccif/dload
add wave -noupdate /memory_control_tb/DUT/ccif/dstore
add wave -noupdate /memory_control_tb/DUT/ccif/iaddr
add wave -noupdate /memory_control_tb/DUT/ccif/daddr
add wave -noupdate /memory_control_tb/DUT/ccif/ramWEN
add wave -noupdate /memory_control_tb/DUT/ccif/ramREN
add wave -noupdate /memory_control_tb/DUT/ccif/ramstate
add wave -noupdate /memory_control_tb/DUT/ccif/ramaddr
add wave -noupdate /memory_control_tb/DUT/ccif/ramstore
add wave -noupdate /memory_control_tb/DUT/ccif/ramload
add wave -noupdate -divider cif0
add wave -noupdate /memory_control_tb/cif0/ccinv
add wave -noupdate /memory_control_tb/cif0/ccsnoopaddr
add wave -noupdate /memory_control_tb/cif0/cctrans
add wave -noupdate /memory_control_tb/cif0/ccwait
add wave -noupdate /memory_control_tb/cif0/ccwrite
add wave -noupdate /memory_control_tb/cif0/daddr
add wave -noupdate /memory_control_tb/cif0/dload
add wave -noupdate /memory_control_tb/cif0/dREN
add wave -noupdate /memory_control_tb/cif0/dstore
add wave -noupdate /memory_control_tb/cif0/dwait
add wave -noupdate /memory_control_tb/cif0/dWEN
add wave -noupdate /memory_control_tb/cif0/iaddr
add wave -noupdate /memory_control_tb/cif0/iload
add wave -noupdate /memory_control_tb/cif0/iREN
add wave -noupdate /memory_control_tb/cif0/iwait
add wave -noupdate -divider cif1
add wave -noupdate /memory_control_tb/cif1/ccinv
add wave -noupdate /memory_control_tb/cif1/ccsnoopaddr
add wave -noupdate /memory_control_tb/cif1/cctrans
add wave -noupdate /memory_control_tb/cif1/ccwait
add wave -noupdate /memory_control_tb/cif1/ccwrite
add wave -noupdate /memory_control_tb/cif1/daddr
add wave -noupdate /memory_control_tb/cif1/dload
add wave -noupdate /memory_control_tb/cif1/dREN
add wave -noupdate /memory_control_tb/cif1/dstore
add wave -noupdate /memory_control_tb/cif1/dwait
add wave -noupdate /memory_control_tb/cif1/dWEN
add wave -noupdate /memory_control_tb/cif1/iaddr
add wave -noupdate /memory_control_tb/cif1/iload
add wave -noupdate /memory_control_tb/cif1/iREN
add wave -noupdate /memory_control_tb/cif1/iwait
add wave -noupdate /memory_control_tb/DUT/curr_state
add wave -noupdate /memory_control_tb/DUT/lru
add wave -noupdate /memory_control_tb/DUT/next_lru
add wave -noupdate /memory_control_tb/DUT/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {14372 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {0 ps} {168120 ps}
