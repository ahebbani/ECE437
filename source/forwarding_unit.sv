`include "forwarding_unit_if.vh"
`include "cpu_types_pkg.vh"


module forwarding_unit(forwarding_unit_if.fu fuif);

import cpu_types_pkg::*;
/*
    forwardA/B:
    2'b00: dxo_rs1/dxo_rs2
    2'b01 = mwb_rd
    2'b10 = exm_rd
*/

always_comb
begin
    fuif.forwardA = '0;
    fuif.forwardB = '0;

    //mem hazard
    if(fuif.mwbo_RegWEN && (fuif.mwbo_rd != 5'd0))
    begin
        if(fuif.mwbo_rd == fuif.dxo_rs1)
        begin
            fuif.forwardA = 2'b01;
        end
        if (fuif.mwbo_rd == fuif.dxo_rs2)
        begin
            fuif.forwardB = 2'b01;
        end
    end

    //ex hazard
    if(fuif.exmo_RegWEN && (fuif.exmo_rd != 5'd0))
    begin
        if(fuif.exmo_rd == fuif.dxo_rs1)
        begin
            fuif.forwardA = 2'b10;
        end
        if(fuif.exmo_rd == fuif.dxo_rs2)
        begin
            fuif.forwardB = 2'b10;
        end
    end
end

endmodule