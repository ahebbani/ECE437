onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /hazard_unit_tb/CLK
add wave -noupdate /hazard_unit_tb/nRST
add wave -noupdate /hazard_unit_tb/PROG/expectedVal/casename
add wave -noupdate -divider INPUTS
add wave -noupdate /hazard_unit_tb/DUT/huif/id_rs1
add wave -noupdate /hazard_unit_tb/DUT/huif/id_rs2
add wave -noupdate /hazard_unit_tb/DUT/huif/id_read1
add wave -noupdate /hazard_unit_tb/DUT/huif/id_read2
add wave -noupdate /hazard_unit_tb/DUT/huif/dxo_rd
add wave -noupdate /hazard_unit_tb/DUT/huif/dxo_RegWEN
add wave -noupdate /hazard_unit_tb/DUT/huif/dxo_isLoad
add wave -noupdate /hazard_unit_tb/DUT/huif/exec_branch_taken
add wave -noupdate /hazard_unit_tb/DUT/huif/exec_new_target
add wave -noupdate /hazard_unit_tb/DUT/huif/mem_active
add wave -noupdate /hazard_unit_tb/DUT/huif/dhit
add wave -noupdate -divider OUTPUTS
add wave -noupdate /hazard_unit_tb/DUT/huif/pc_new
add wave -noupdate /hazard_unit_tb/DUT/huif/pc_en
add wave -noupdate /hazard_unit_tb/DUT/huif/fdf_stall
add wave -noupdate /hazard_unit_tb/DUT/huif/fdf_flush
add wave -noupdate /hazard_unit_tb/DUT/huif/dx_flush
add wave -noupdate /hazard_unit_tb/DUT/huif/dx_stall
add wave -noupdate /hazard_unit_tb/DUT/huif/freeze
add wave -noupdate /hazard_unit_tb/DUT/huif/flush
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {47 ns} 0}
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
WaveRestoreZoom {0 ns} {194 ns}
