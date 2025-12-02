onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/DUT/CPUCLK
add wave -noupdate /system_tb/nRST
add wave -noupdate -divider {MEM CONTROL}
add wave -noupdate /system_tb/DUT/CPU/CC/curr_state
add wave -noupdate /system_tb/DUT/CPU/CC/lru
add wave -noupdate /system_tb/DUT/CPU/CC/next_lru
add wave -noupdate -divider CIF0
add wave -noupdate -expand -subitemconfig {{/system_tb/DUT/CPU/CM0/DCACHE/frames[0]} -expand {/system_tb/DUT/CPU/CM0/DCACHE/frames[0][1]} -expand {/system_tb/DUT/CPU/CM0/DCACHE/frames[0][1].data} -expand} /system_tb/DUT/CPU/CM0/DCACHE/frames
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/iwait
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/dwait
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/iREN
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/dREN
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/dWEN
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/iload
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/dload
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/dstore
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/iaddr
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/daddr
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/ccwait
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/ccinv
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/ccwrite
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/cctrans
add wave -noupdate /system_tb/DUT/CPU/CM0/cif/ccsnoopaddr
add wave -noupdate /system_tb/DUT/CPU/CM0/DCACHE/mru_nxt
add wave -noupdate /system_tb/DUT/CPU/CM0/DCACHE/mru
add wave -noupdate /system_tb/DUT/CPU/CM0/DCACHE/state_nxt
add wave -noupdate /system_tb/DUT/CPU/CM0/DCACHE/state
add wave -noupdate /system_tb/DUT/CPU/CM0/DCACHE/setIdx_nxt
add wave -noupdate /system_tb/DUT/CPU/CM0/DCACHE/setIdx
add wave -noupdate -divider CIF1
add wave -noupdate /system_tb/DUT/CPU/CM1/DCACHE/state_nxt
add wave -noupdate /system_tb/DUT/CPU/CM1/DCACHE/state
add wave -noupdate /system_tb/DUT/CPU/CM1/DCACHE/frames
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/iwait
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/dwait
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/iREN
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/dREN
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/dWEN
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/iload
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/dload
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/dstore
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/iaddr
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/daddr
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/ccwait
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/ccinv
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/ccwrite
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/cctrans
add wave -noupdate /system_tb/DUT/CPU/CM1/cif/ccsnoopaddr
add wave -noupdate /system_tb/DUT/CPU/CM1/DCACHE/mru_nxt
add wave -noupdate /system_tb/DUT/CPU/CM1/DCACHE/mru
add wave -noupdate /system_tb/DUT/CPU/CM1/DCACHE/setIdx_nxt
add wave -noupdate /system_tb/DUT/CPU/CM1/DCACHE/setIdx
add wave -noupdate -divider CCIF
add wave -noupdate /system_tb/DUT/CPU/ccif/iwait
add wave -noupdate /system_tb/DUT/CPU/ccif/dwait
add wave -noupdate /system_tb/DUT/CPU/ccif/iREN
add wave -noupdate /system_tb/DUT/CPU/ccif/dREN
add wave -noupdate /system_tb/DUT/CPU/ccif/dWEN
add wave -noupdate /system_tb/DUT/CPU/ccif/iload
add wave -noupdate /system_tb/DUT/CPU/ccif/dload
add wave -noupdate /system_tb/DUT/CPU/ccif/dstore
add wave -noupdate /system_tb/DUT/CPU/ccif/iaddr
add wave -noupdate /system_tb/DUT/CPU/ccif/daddr
add wave -noupdate /system_tb/DUT/CPU/ccif/ccwait
add wave -noupdate /system_tb/DUT/CPU/ccif/ccinv
add wave -noupdate /system_tb/DUT/CPU/ccif/ccwrite
add wave -noupdate /system_tb/DUT/CPU/ccif/cctrans
add wave -noupdate /system_tb/DUT/CPU/ccif/ccsnoopaddr
add wave -noupdate /system_tb/DUT/CPU/ccif/ramWEN
add wave -noupdate /system_tb/DUT/CPU/ccif/ramREN
add wave -noupdate /system_tb/DUT/CPU/ccif/ramstate
add wave -noupdate /system_tb/DUT/CPU/ccif/ramaddr
add wave -noupdate /system_tb/DUT/CPU/ccif/ramstore
add wave -noupdate /system_tb/DUT/CPU/ccif/ramload
add wave -noupdate -divider RAM
add wave -noupdate /system_tb/DUT/CPU/scif/ramREN
add wave -noupdate /system_tb/DUT/CPU/scif/ramWEN
add wave -noupdate /system_tb/DUT/CPU/scif/ramaddr
add wave -noupdate /system_tb/DUT/CPU/scif/ramstore
add wave -noupdate /system_tb/DUT/CPU/scif/ramload
add wave -noupdate /system_tb/DUT/CPU/scif/ramstate
add wave -noupdate /system_tb/DUT/CPU/scif/memREN
add wave -noupdate /system_tb/DUT/CPU/scif/memWEN
add wave -noupdate /system_tb/DUT/CPU/scif/memaddr
add wave -noupdate /system_tb/DUT/CPU/scif/memstore
add wave -noupdate -divider {REG FILE 0}
add wave -noupdate /system_tb/DUT/CPU/DP0/REGF/register
add wave -noupdate /system_tb/DUT/CPU/DP0/rfif/WEN
add wave -noupdate /system_tb/DUT/CPU/DP0/rfif/wsel
add wave -noupdate /system_tb/DUT/CPU/DP0/rfif/rsel1
add wave -noupdate /system_tb/DUT/CPU/DP0/rfif/rsel2
add wave -noupdate /system_tb/DUT/CPU/DP0/rfif/wdat
add wave -noupdate /system_tb/DUT/CPU/DP0/rfif/rdat1
add wave -noupdate /system_tb/DUT/CPU/DP0/rfif/rdat2
add wave -noupdate -divider {PC 0}
add wave -noupdate /system_tb/DUT/CPU/DP0/pcif/npc
add wave -noupdate /system_tb/DUT/CPU/DP0/pcif/PC
add wave -noupdate /system_tb/DUT/CPU/DP0/pcif/new_pc
add wave -noupdate /system_tb/DUT/CPU/DP0/pcif/PCEN
add wave -noupdate /system_tb/DUT/CPU/DP1/rfif/WEN
add wave -noupdate -divider {REG FILE 1}
add wave -noupdate /system_tb/DUT/CPU/DP1/REGF/register
add wave -noupdate /system_tb/DUT/CPU/DP1/rfif/wsel
add wave -noupdate /system_tb/DUT/CPU/DP1/rfif/rsel1
add wave -noupdate /system_tb/DUT/CPU/DP1/rfif/rsel2
add wave -noupdate /system_tb/DUT/CPU/DP1/rfif/wdat
add wave -noupdate /system_tb/DUT/CPU/DP1/rfif/rdat1
add wave -noupdate /system_tb/DUT/CPU/DP1/rfif/rdat2
add wave -noupdate -divider {PC 1}
add wave -noupdate /system_tb/DUT/CPU/DP1/pcif/npc
add wave -noupdate /system_tb/DUT/CPU/DP1/pcif/PC
add wave -noupdate /system_tb/DUT/CPU/DP1/pcif/new_pc
add wave -noupdate /system_tb/DUT/CPU/DP1/pcif/PCEN
add wave -noupdate -divider DPIF1
add wave -noupdate /system_tb/DUT/CPU/DP1/dpif/halt
add wave -noupdate /system_tb/DUT/CPU/DP1/dpif/ihit
add wave -noupdate /system_tb/DUT/CPU/DP1/dpif/imemREN
add wave -noupdate /system_tb/DUT/CPU/DP1/dpif/imemload
add wave -noupdate /system_tb/DUT/CPU/DP1/dpif/imemaddr
add wave -noupdate /system_tb/DUT/CPU/DP1/dpif/dhit
add wave -noupdate /system_tb/DUT/CPU/DP1/dpif/dmemREN
add wave -noupdate /system_tb/DUT/CPU/DP1/dpif/dmemWEN
add wave -noupdate /system_tb/DUT/CPU/DP1/dpif/flushed
add wave -noupdate /system_tb/DUT/CPU/DP1/dpif/dmemload
add wave -noupdate /system_tb/DUT/CPU/DP1/dpif/dmemstore
add wave -noupdate /system_tb/DUT/CPU/DP1/dpif/dmemaddr
add wave -noupdate -divider DPIF0
add wave -noupdate /system_tb/DUT/CPU/DP0/dpif/halt
add wave -noupdate /system_tb/DUT/CPU/DP0/dpif/ihit
add wave -noupdate /system_tb/DUT/CPU/DP0/dpif/imemREN
add wave -noupdate /system_tb/DUT/CPU/DP0/dpif/imemload
add wave -noupdate /system_tb/DUT/CPU/DP0/dpif/imemaddr
add wave -noupdate /system_tb/DUT/CPU/DP0/dpif/dhit
add wave -noupdate /system_tb/DUT/CPU/DP0/dpif/dmemREN
add wave -noupdate /system_tb/DUT/CPU/DP0/dpif/dmemWEN
add wave -noupdate /system_tb/DUT/CPU/DP0/dpif/flushed
add wave -noupdate /system_tb/DUT/CPU/DP0/dpif/dmemload
add wave -noupdate /system_tb/DUT/CPU/DP0/dpif/dmemstore
add wave -noupdate /system_tb/DUT/CPU/DP0/dpif/dmemaddr
add wave -noupdate /system_tb/DUT/CPU/CM0/DCACHE/setIdx
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3357490 ps} 0} {{Cursor 2} {28914116959 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 230
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
WaveRestoreZoom {3228050 ps} {3675050 ps}
