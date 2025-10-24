// mapped needs this
`include "cpu_types_pkg.vh"
`include "datapath_cache_if.vh"
`include "caches_if.vh"

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

import cpu_types_pkg::*;

module icache_tb;

  parameter PERIOD = 10;
  logic CLK = 0, nRST;
  int testnum;

  // clock
  always #(PERIOD/2) CLK++;

  // interface instance
  datapath_cache_if dcif();
  caches_if cif();

  // Test program connected to the interface

  // DUT
`ifndef MAPPED
  icache DUT(.clk(CLK), .nrst(nRST), .dcif(dcif), .cif(cif));
`else
  hazard_unit DUT(
    .clk(CLK),
    .nrst(nRST),
    .\dcif.imemREN (dcif.imemREN),  //inputs
    .\dcif.imemaddr (dcif.imemaddr),
    .\dcif.ihit (dcif.ihit),    //outputs
    .\dcif.imemload (dcif.imemload),
    .\cif.iwait (cif.iwait),    //inputs
    .\cif.iload (cif.iload),
    .\cif.iREN (cif.iREN),  //outputs
    .\cif.iaddr (cif.iaddr)
  );
`endif

test PROG(.CLK(CLK), .nRST(nRST), .dcif(dcif), .cif(cif), .testnum(testnum));

endmodule


program test(
    input logic CLK,
    output logic nRST,
    output int testnum,
    datapath_cache_if dcif,
    caches_if cif);

function automatic word_t mem_data(input word_t addr);
    return (addr & 32'hFFFFFFFC) ^ 32'hAAAAAAAA;
endfunction

task handle_read(input word_t addr, input int delayCycles = 0);
    // wait for iREN to be asserted
    while(!cif.iREN) @(posedge CLK);

    repeat(delayCycles) @(posedge CLK);
    
    // provide data 
    cif.iwait = 1'b0;
    cif.iload = mem_data(addr);
    @(posedge CLK);
    
    // both sides should deassert now
    cif.iwait = 1'b1;
    cif.iload = '0;
    //@(posedge CLK);
endtask

task checkCorrect(
        input int testcase,
        input logic eihit,
        input logic eiREN,
        input word_t eimemload,
        input word_t eiaddr);

    logic match;
    match = 1'b1;

    if(dcif.ihit != eihit)
    begin
        match = 0;
        $display("F ihit(%0d): expected %b, got %b", testcase, eihit, dcif.ihit);
    end
    if(dcif.imemload != eimemload)
    begin
        match = 0;
        $display("F imemload(%0d): expected %h, got %h", testcase, eimemload, dcif.imemload);
    end
    if(cif.iREN != eiREN)
    begin
        match = 0;
        $display("F iREN(%0d): expected %b, got %b", testcase, eiREN, cif.iREN);
    end
    if(cif.iaddr != eiaddr)
    begin
        match = 0;
        $display("F iaddr(%0d): expected %h, got %h", testcase, eiaddr, cif.iaddr);
    end

    if(match)
    begin
        $display("Passed %0d", testcase);
    end
    else
    begin
        $display("Failed %0d", testcase);
    end
    
endtask

initial begin

    //{tag[25:0], idx[3:0], bytoff[1:0]}
    static logic [31:0] A = {26'h3FFFFFF,4'h1,2'b00};    //idx1
    static logic [31:0] B = {~26'h3FFFFFF,4'h1,2'b00};    //idx1 diff tag
    static logic [31:0] C = {26'h155555,4'h4,2'b00};    //idx4
    static logic [31:0] D = {26'h0ABCDEF,4'h8,2'b00};    //idx8
    static logic [31:0] E = {26'h0123456,4'h9,2'b00};    //idx9
    static logic [31:0] BASE = {26'h0010000,4'h2,2'b00};     //idx2
    static logic [31:0] BASE1 = {26'h0010000,4'h2,2'b01};
    static logic [31:0] BASE2 = {26'h0010000,4'h2,2'b10};
    static logic [31:0] BASE3 = {26'h0010000,4'h2,2'b11};
    static logic [31:0] F = {26'h1000000, 4'hA, 2'b00};
    static logic [31:0] G;
    //int testnum;

    //set default values
    cif.iwait = 1'b1;   //busy until a return
    cif.iload = '0;

    dcif.imemREN = 1'b0; 
    dcif.imemaddr = '0;


    //TEST 0: reset
    $display("TEST 0: Reset");
    testnum = 0;
    nRST = 1'b0;
    @(posedge CLK);
    nRST = 1'b1;
    @(posedge CLK);
    checkCorrect(0, /*ihit*/0, /*iREN*/0, /*imemload*/32'h0, /*iaddr*/32'h0);

    //TEST 1: compulsory miss (cold start)
    $display("TEST 1: Compulsory miss -> fill -> hit");
    testnum = 1;

    dcif.imemREN = 1'b1;
    dcif.imemaddr = A;
    @(posedge CLK);
    #1;
    //first access is a miss
    $display("1 %0t", $time);
    checkCorrect(1, /*ihit*/0, /*iREN*/1, /*imemload*/32'h0, /*iaddr*/(A & 32'hFFFF_FFFC));

    //memory returns w/A
    handle_read(A);
    @(posedge CLK);

    //next reassert should be a hit
    dcif.imemaddr = A;
    #1;
    $display("2 %0t", $time);
    checkCorrect(2, /*ihit*/1, /*iREN*/0, /*imemload*/mem_data(A), /*iaddr*/32'h0);
    @(posedge CLK);

    //TEST 2: Direct Mapped conflict miss (same idx)
    $display("TEST 2: Conflict Miss");
    testnum = 2;
    
    //A hits
    dcif.imemaddr = A;
    #1;
    $display("3 %0t", $time);
    checkCorrect(3, /*ihit*/1, /*iREN*/0, /*imemload*/mem_data(A), /*iaddr*/32'h0);
    @(posedge CLK);

    //B has same idx as A but new tag -> MISS
    dcif.imemaddr = B;
    @(posedge CLK);
    #1;
    $display("4 %0t", $time);
    checkCorrect(4, /*ihit*/0, /*iREN*/1, /*imemload*/mem_data(A), /*iaddr*/(B & 32'hFFFF_FFFC));

    handle_read(B);
    @(posedge CLK);

    //A should miss now:
    dcif.imemaddr = A;
    @(posedge CLK);
    #1;
    $display("4 %0t", $time);
    checkCorrect(5, 0, 1, mem_data(B), (A & 32'hFFFF_FFFC));

    //memory returns for A
    handle_read(A);
    @(posedge CLK);

    //A hits again
    dcif.imemaddr = A;
    #1;
    $display("6 %0t", $time);
    checkCorrect(6, /*ihit*/1, /*iREN*/0, /*imemload*/mem_data(A), /*iaddr*/32'h0);
    @(posedge CLK);

    //TEST 4: Halt condition  (idk if this check is right)
    $display("TEST 4: Halt condition");
    testnum = 4;

    dcif.imemREN = 1'b0; //goes 0 on halt
    #1;
    checkCorrect(9, /*ihit*/0, /*iREN*/0, /*imemload*/32'h0, /*iaddr*/32'h0);
    @(posedge CLK);
    checkCorrect(9, /*ihit*/0, /*iREN*/0, /*imemload*/32'h0, /*iaddr*/32'h0);
    @(posedge CLK);
    dcif.imemREN = 1'b1;
    @(posedge CLK);

    //TEST 5: Back to back misses
    $display("TEST 5: Back to back misses");
    testnum = 5;

    //first D -> miss
    dcif.imemaddr = D;
    @(posedge CLK);
    checkCorrect(10, 0, 1, 32'h0, (D & 32'hFFFF_FFFC));

    handle_read(D);
    @(posedge CLK);

    //D hits now
    checkCorrect(11, 1, 0, mem_data(D), 32'h0);

    //E will miss
    dcif.imemaddr = E;
    @(posedge CLK);
    #1;
    checkCorrect(12, 0, 1, 32'h0, (E & 32'hFFFF_FFFC));

    //return with E
    handle_read(E);
    @(posedge CLK);

    //E should hit now
    checkCorrect(13, 1, 0, mem_data(E), 32'h0);
    @(posedge CLK);

    // //TEST 6: Byte offset insensitivity
    // $display("TEST 6: Byte offset insenstive");
    // testnum = 6;

    // //miss on BASE
    // dcif.imemaddr = BASE;
    // checkCorrect(14, 0, 1, 32'h0, (BASE & 32'hFFFF_FFFC));

    // //return w/base
    // #(5);
    // cif.iwait = 1'b0;
    // cif.iload = mem_data(BASE);
    // #1;
    // cif.iwait = 1'b1;
    // @(posedge CLK);

    // //base should hit now
    // dcif.imemaddr = BASE;
    // checkCorrect(15, 1, 1, mem_data(BASE), (BASE & 32'hFFFF_FFFC));
    // @(posedge CLK);
    // checkCorrect(15, 1, 1, mem_data(BASE), (BASE & 32'hFFFF_FFFC));

    // //reassert with new offset values, should still hit
    // dcif.imemaddr = BASE1;
    // checkCorrect(16, 1, 1, mem_data(BASE), (BASE & 32'hFFFF_FFFC));
    // @(posedge CLK);
    // checkCorrect(16, 1, 1, mem_data(BASE), (BASE & 32'hFFFF_FFFC));

    // dcif.imemaddr = BASE2;
    // checkCorrect(17, 1, 1, mem_data(BASE), (BASE & 32'hFFFF_FFFC));
    // @(posedge CLK);
    // checkCorrect(17, 1, 1, mem_data(BASE), (BASE & 32'hFFFF_FFFC));

    // dcif.imemaddr = BASE3;
    // checkCorrect(18, 1, 1, mem_data(BASE), (BASE & 32'hFFFF_FFFC));
    // @(posedge CLK);
    // checkCorrect(18, 1, 1, mem_data(BASE), (BASE & 32'hFFFF_FFFC));


    // //TEST 7: Consecutive hits at same address
    // $display("TEST 7: Conseq hits");
    // testnum = 7;

    // //miss on F
    // dcif.imemaddr = F;
    // checkCorrect(19, 0, 1, 32'h0, (F & 32'hFFFF_FFFC));

    // //return w/F
    // #(5);
    // cif.iwait = 1'b0;
    // cif.iload = mem_data(F);
    // #1;
    // cif.iwait = 1'b1;
    // @(posedge CLK);

    // //multiple consec hits at same address
    // for(int i = 0; i < 5; i++)
    // begin
    //     dcif.imemaddr = F;
    //     checkCorrect((20 + i), 1, 1, mem_data(F), (F & 32'hFFFF_FFFC));
    //     @(posedge CLK);
    //     checkCorrect((20 + i), 1, 1, mem_data(F), (F & 32'hFFFF_FFFC));
    // end

    //TEST 8: Cache capacity
    $display("TEST 8: Cache Capacity");
    testnum = 8;

    for(int idx = 0; idx < 16; idx++)
    begin
        G = {26'h2000000 + idx, 4'(idx), 2'b00};
        dcif.imemaddr = G;
        @(posedge CLK);
        #1;
        checkCorrect((24 + idx), 0, 1, 32'h0, (G & 32'hFFFF_FFFC));

        handle_read(G);
        @(posedge CLK);
    end

    //all must hit now
    for(int idx = 0; idx < 16; idx++)
    begin
        G = {26'h2000000 + idx, 4'(idx), 2'b00};
        dcif.imemaddr = G;
        #1;
        checkCorrect((39 + idx), 1, 0, mem_data(G), 32'h0);
        @(posedge CLK);
    end

    #(50);
    $finish;
end

endprogram