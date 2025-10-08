create_clock -period 5.000 -name MAIN -waveform {0.000 2.5} [get_ports CLK]
create_generated_clock -name CPUCLK -source [get_ports CLK] -divide_by 2 [get_nets CPUCLK]
