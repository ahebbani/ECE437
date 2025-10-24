onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /icache_tb/CLK
add wave -noupdate /icache_tb/nRST
add wave -noupdate -radix decimal /icache_tb/testnum
add wave -noupdate -divider dcif.icache
add wave -noupdate /icache_tb/dcif/imemREN
add wave -noupdate /icache_tb/dcif/imemaddr
add wave -noupdate /icache_tb/dcif/ihit
add wave -noupdate /icache_tb/dcif/imemload
add wave -noupdate -divider cif.icache
add wave -noupdate /icache_tb/cif/iwait
add wave -noupdate /icache_tb/cif/iload
add wave -noupdate /icache_tb/cif/iREN
add wave -noupdate /icache_tb/cif/iaddr
add wave -noupdate -divider icache
add wave -noupdate -expand /icache_tb/DUT/addr_fields
add wave -noupdate -expand -subitemconfig {{/icache_tb/DUT/cache_mem[1]} -expand} /icache_tb/DUT/cache_mem
add wave -noupdate /icache_tb/DUT/curr_state
add wave -noupdate /icache_tb/DUT/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {82 ns} 0}
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
WaveRestoreZoom {38 ns} {130 ns}
