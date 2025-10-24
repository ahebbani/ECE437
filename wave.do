onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /dcache_tb/CLK
add wave -noupdate /dcache_tb/nRST
add wave -noupdate -radix decimal /dcache_tb/PROG/#ublk#502948#187/testnum
add wave -noupdate /dcache_tb/PROG/expected_hits
add wave -noupdate -divider {cif inputs}
add wave -noupdate /dcache_tb/cif/dwait
add wave -noupdate /dcache_tb/cif/dload
add wave -noupdate -divider {cif outputs}
add wave -noupdate /dcache_tb/cif/dREN
add wave -noupdate /dcache_tb/cif/dWEN
add wave -noupdate /dcache_tb/cif/dstore
add wave -noupdate /dcache_tb/cif/daddr
add wave -noupdate -divider {dcif inputs}
add wave -noupdate /dcache_tb/dcif/halt
add wave -noupdate /dcache_tb/dcif/dmemREN
add wave -noupdate /dcache_tb/dcif/dmemWEN
add wave -noupdate /dcache_tb/dcif/dmemstore
add wave -noupdate /dcache_tb/dcif/dmemaddr
add wave -noupdate -divider {dcif outputs}
add wave -noupdate /dcache_tb/dcif/dhit
add wave -noupdate /dcache_tb/dcif/flushed
add wave -noupdate /dcache_tb/dcif/dmemload
add wave -noupdate -divider dcache
add wave -noupdate /dcache_tb/DUT/miss
add wave -noupdate /dcache_tb/DUT/hitCnt
add wave -noupdate /dcache_tb/DUT/hitCnt_reg
add wave -noupdate /dcache_tb/DUT/frames
add wave -noupdate /dcache_tb/DUT/left_nxt
add wave -noupdate /dcache_tb/DUT/right_nxt
add wave -noupdate /dcache_tb/DUT/mru
add wave -noupdate /dcache_tb/DUT/mru_nxt
add wave -noupdate /dcache_tb/DUT/addr
add wave -noupdate /dcache_tb/DUT/state
add wave -noupdate /dcache_tb/DUT/state_nxt
add wave -noupdate /dcache_tb/DUT/setIdx
add wave -noupdate /dcache_tb/DUT/setIdx_nxt
add wave -noupdate /dcache_tb/DUT/way
add wave -noupdate /dcache_tb/DUT/way_nxt
add wave -noupdate /dcache_tb/DUT/m_setIdx
add wave -noupdate /dcache_tb/DUT/m_way
add wave -noupdate /dcache_tb/DUT/m_write
add wave -noupdate /dcache_tb/DUT/m_off
add wave -noupdate /dcache_tb/DUT/m_tag
add wave -noupdate /dcache_tb/DUT/m_wdata
add wave -noupdate /dcache_tb/DUT/active
add wave -noupdate /dcache_tb/DUT/active_prev
add wave -noupdate /dcache_tb/DUT/left_hit
add wave -noupdate /dcache_tb/DUT/right_hit
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {37 ns} 0}
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
WaveRestoreZoom {0 ns} {79 ns}
