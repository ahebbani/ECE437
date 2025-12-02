`include "cpu_types_pkg.vh"
`include "pc_if.vh"

module pc(
  input CLK, nRST,
  pc_if.pc pcif
);

import cpu_types_pkg::*;

always_ff @(posedge CLK, negedge nRST) begin

	if(nRST == 0) pcif.PC <= pcif.pc_init; 
	else
	begin
		if(pcif.PCEN) pcif.PC <= pcif.new_pc;	
	end
end

assign pcif.npc = pcif.PC + 4;

endmodule