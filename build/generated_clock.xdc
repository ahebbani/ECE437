create_clock -period 10.000 -name MAIN -waveform {0.000 5.0} [get_ports CLK_100MHZ]
create_generated_clock -name CPUCLK -source [get_ports CLK_100MHZ] -divide_by 2 [get_nets SYS/CPUCLK]

# VIO debug path is not performance-critical, ignore it for timing analysis.
set_false_path -through [get_nets {dbg_addr[*]}]
set_false_path -through [get_nets {dbg_data_out[*]}]
