`include "cpu_types_pkg.vh"
`include "program_counter_if.vh"

module program_counter(
  input CLK, nRST,
  program_counter_if.pc pcif
);

import cpu_types_pkg::*;

always_ff @(posedge CLK, negedge nRST) begin

	if(nRST == 0) pcif.PC <= '0; 
	else 
	begin
		if(pcif.PCEN) pcif.PC <= pcif.new_pc;	
	end
end

assign pcif.npc = pcif.PC + 4;

endmodule