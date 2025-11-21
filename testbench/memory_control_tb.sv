// // mapped needs this
// `include "cpu_ram_if.vh"
// `include "cache_control_if.vh"
// `include "cpu_types_pkg.vh"

// import cpu_types_pkg::*;

// // mapped timing needs this. 1ns is too fast
// `timescale 1 ns / 1 ns

// module memory_control_tb;

//   parameter PERIOD = 10;
//   logic CLK = 0, nRST;

//   // clock
//   always #(PERIOD/2) CLK++;

//   // interfaces
//   caches_if cif0();
//   caches_if cif1();
//   cache_control_if ccif (cif0, cif1);
//   cpu_ram_if ramif ();

//   // DUT
//   `ifndef MAPPED
//   memory_control DUT(CLK, nRST, ccif);
// `else
//   memory_control DUT(
// 	.\CLK (CLK),
// 	.\nRST (nRST),
// 	.\ccif.iREN (ccif.iREN),
// 	.\ccif.dREN (ccif.dREN),
// 	.\ccif.dWEN (ccif.dWEN),
// 	.\ccif.dstore (ccif.dstore),
// 	.\ccif.iaddr (ccif.iaddr),
// 	.\ccif.daddr (ccif.daddr),
// 	.\ccif.ramload (ccif.ramload),
// 	.\ccif.ramstate (ccif.ramstate),
// 	.\ccif.iwait (ccif.iwait),
// 	.\ccif.dwait (ccif.dwait),
// 	.\ccif.iload (ccif.iload),
// 	.\ccif.dload (ccif.dload),
// 	.\ccif.ramstore (ccif.ramstore),
// 	.\ccif.ramaddr (ccif.ramaddr),
// 	.\ccif.ramWEN (ccif.ramWEN),
// 	.\ccif.ramREN (ccif.ramREN)
//   );
// `endif

// `ifndef MAPPED
//   ram ram (CLK, nRST, 1'b0, ramif);
// `else
//  ram ram(
// 	.\CLK (CLK),
// 	.\nRST (nRST),
// 	.\ramif.ramstore (ramif.ramstore),
// 	.\ramif.ramaddr (ramif.ramaddr),
// 	.\ramif.ramWEN (ramif.ramWEN),
// 	.\ramif.ramREN (ramif.ramREN),
// 	.\ramif.ramload (ramif.ramload),
// 	.\ramif.ramstate (ramif.ramstate)
//   );
// `endif

// // Connect cpu ram to memory control
// assign ramif.ramaddr = ccif.ramaddr;
// assign ramif.ramstore = ccif.ramstore;
// assign ramif.ramREN = ccif.ramREN;
// assign ramif.ramWEN = ccif.ramWEN;
// assign ccif.ramstate = ramif.ramstate;
// assign ccif.ramload = ramif.ramload;

// // test program
//   test PROG (CLK, nRST, ccif, ramif);

// endmodule

// program test (
//   input logic clk,
//   output logic nrst,
//   cache_control_if ccif,
//   cpu_ram_if ramif
// );

// integer score;
// integer index;

// task reset_dut;
// begin
//   nrst = 0;
//   #3;
//   nrst = 1;
//   #3;
//   score = 0;
//   index = 0;
// end
// endtask

// task initialize;
// begin
//     ccif.cif0.iaddr = 0;
//     ccif.cif0.dstore = 0;
//     ccif.cif0.daddr = 0;
// end
// endtask

// task automatic dump_memory();
//     string filename = "memcpu.hex";
//     int memfd;

//     ccif.cif0.daddr = 0;
//     ccif.cif0.dWEN = 0;
//     ccif.cif0.dREN = 0;

//     memfd = $fopen(filename,"w");
//     if (memfd)
//       $display("Starting memory dump.");
//     else
//       begin $display("Failed to open %s.",filename); $finish; end

//     for (int unsigned i = 0; memfd && i < 16384; i++)
//     begin
//       int chksum = 0;
//       bit [7:0][7:0] values;
//       string ihex;

//       ccif.cif0.daddr = i << 2;
//       ccif.cif0.dREN = 1;
//       repeat (4) @(posedge clk);
//       if (ccif.cif0.dload === 0)
//         continue;
//       values = {8'h04,16'(i),8'h00,ccif.cif0.dload};
//       foreach (values[j])
//         chksum += values[j];
//       chksum = 16'h100 - chksum;
//       ihex = $sformatf(":04%h00%h%h",16'(i),ccif.cif0.dload,8'(chksum));
//       $fdisplay(memfd,"%s",ihex.toupper());
//     end //for
//     if (memfd)
//     begin
//       ccif.cif0.dREN = 0;
//       $fdisplay(memfd,":00000001FF");
//       $fclose(memfd);
//       $display("Finished memory dump.");
//     end
//   endtask

// initial begin

//     // Reset
//     reset_dut();

//     // get rid of red lines
//     ccif.cif0.dstore = 0;
//     ccif.cif0.iaddr = 0;
//     ccif.cif0.daddr = 0;


//     // instruction fetch test (i hand up)
//     ccif.cif0.iREN = 1;
//     ccif.cif0.dREN = 0;
//     ccif.cif0.dWEN = 0;
//     for (index = 0; index < 5; index++) begin
//         ccif.cif0.iaddr = ccif.cif0.iaddr + 4;
//         #(20);
//         if (ccif.ramload == ccif.cif0.iload) score++;
//     end
//     assert(score == 10) else $display ("Instruction fetch failed.");

//     // data write test
//     reset_dut();
//     ccif.cif0.iREN = 1;
//     ccif.cif0.dREN = 0;
//     ccif.cif0.dWEN = 1;
//     ccif.cif0.iaddr = '0;
//     ccif.cif0.dstore = 32'hABCDEF00;
//     ccif.cif0.daddr = 32'hABCABC00;
//     score = 0;

//     for (index = 1; index <= 5; index++) begin
//       #(40);
//       if (ccif.ramstore == ccif.cif0.dstore) score++;
//       ccif.cif0.daddr = ccif.cif0.daddr + 4;
//       ccif.cif0.dstore++;
//     end

    

//     // data and instruction load (both hands up)
//     reset_dut();
//     ccif.cif0.daddr = 32'hABCABC00;
//     ccif.cif0.iREN = 1;
//     ccif.cif0.dREN = 1;
//     ccif.cif0.dWEN = 0;
//     for (index = 0; index < 5; index++) begin
//         if (ccif.cif0.dload == ccif.ramload) score ++;
//         #(20)
//         ccif.cif0.daddr = ccif.cif0.daddr + 4;
//     end
//     assert(score == 10) else $display ("Data load fetch failed.");

//     // data load test (only d hand up ?? not sure when iREN will be low)
//     reset_dut();
//     ccif.cif0.daddr = 32'hABCABC00;
//     ccif.cif0.iREN = 1;
//     ccif.cif0.dREN = 1;
//     ccif.cif0.dWEN = 0;
//     for (index = 0; index < 5; index++) begin
//         if (ccif.cif0.dload == ccif.ramload) score ++;
//         #(20)
//         ccif.cif0.daddr = ccif.cif0.daddr + 4;
//     end
//     assert(score == 10) else $display ("Data load fetch failed.");


    

//     // mem dump
//     dump_memory();

//     // done
//     $finish;
// end
// endprogram

// mapped needs this
`include "cpu_ram_if.vh"
`include "cache_control_if.vh"
`include "cpu_types_pkg.vh"

import cpu_types_pkg::*;

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module memory_control_tb; // bus / memory controller testbench (dual-core)

  parameter PERIOD = 10;
  logic CLK = 0, nRST;

  // clock
  always #(PERIOD/2) CLK++;

  // interfaces
  caches_if cif0();
  caches_if cif1();
  cache_control_if #(.CPUS(2)) ccif (cif0, cif1);
  cpu_ram_if ramif ();

  // DUT
  `ifndef MAPPED
  memory_control DUT(CLK, nRST, ccif);
`else
  memory_control DUT(
	.\CLK (CLK),
	.\nRST (nRST),
	.\ccif.iREN (ccif.iREN),
	.\ccif.dREN (ccif.dREN),
	.\ccif.dWEN (ccif.dWEN),
	.\ccif.dstore (ccif.dstore),
	.\ccif.iaddr (ccif.iaddr),
	.\ccif.daddr (ccif.daddr),
	.\ccif.ramload (ccif.ramload),
	.\ccif.ramstate (ccif.ramstate),
	.\ccif.iwait (ccif.iwait),
	.\ccif.dwait (ccif.dwait),
	.\ccif.iload (ccif.iload),
	.\ccif.dload (ccif.dload),
	.\ccif.ramstore (ccif.ramstore),
	.\ccif.ramaddr (ccif.ramaddr),
	.\ccif.ramWEN (ccif.ramWEN),
	.\ccif.ramREN (ccif.ramREN)
  );
`endif

`ifndef MAPPED
  ram ram (CLK, nRST, 1'b0, ramif);
`else
 ram ram(
	.\CLK (CLK),
	.\nRST (nRST),
	.\ramif.ramstore (ramif.ramstore),
	.\ramif.ramaddr (ramif.ramaddr),
	.\ramif.ramWEN (ramif.ramWEN),
	.\ramif.ramREN (ramif.ramREN),
	.\ramif.ramload (ramif.ramload),
	.\ramif.ramstate (ramif.ramstate)
  );
`endif

// Connect cpu ram to memory control
assign ramif.ramaddr = ccif.ramaddr;
assign ramif.ramstore = ccif.ramstore;
assign ramif.ramREN = ccif.ramREN;
assign ramif.ramWEN = ccif.ramWEN;
assign ccif.ramstate = ramif.ramstate;
assign ccif.ramload = ramif.ramload;

// test program
  test PROG (CLK, nRST, ccif, ramif);

endmodule

program test (
  input logic clk,
  output logic nrst,
  cache_control_if ccif,
  cpu_ram_if ramif
);

integer score;
integer index;

task reset_dut;
begin
  nrst = 0;
  #3;
  nrst = 1;
  #3;
  score = 0;
  index = 0;
end
endtask

task initialize;
begin
    ccif.cif0.iaddr = 0;
    ccif.cif0.dstore = 0;
    ccif.cif0.daddr = 0;
end
endtask

task automatic dump_memory();
    string filename = "memcpu.hex";
    int memfd;

    ccif.cif0.daddr = 0;
    ccif.cif0.dWEN = 0;
    ccif.cif0.dREN = 0;

    memfd = $fopen(filename,"w");
    if (memfd)
      $display("Starting memory dump.");
    else
      begin $display("Failed to open %s.",filename); $finish; end

    for (int unsigned i = 0; memfd && i < 16384; i++)
    begin
      int chksum = 0;
      bit [7:0][7:0] values;
      string ihex;

      ccif.cif0.daddr = i << 2;
      ccif.cif0.dREN = 1;
      repeat (4) @(posedge clk);
      if (ccif.cif0.dload === 0)
        continue;
      values = {8'h04,16'(i),8'h00,ccif.cif0.dload};
      foreach (values[j])
        chksum += values[j];
      chksum = 16'h100 - chksum;
      ihex = $sformatf(":04%h00%h%h",16'(i),ccif.cif0.dload,8'(chksum));
      $fdisplay(memfd,"%s",ihex.toupper());
    end //for
    if (memfd)
    begin
      ccif.cif0.dREN = 0;
      $fdisplay(memfd,":00000001FF");
      $fclose(memfd);
      $display("Finished memory dump.");
    end
  endtask

  int c0acc=0;
  int c1acc=0;
  int tmo=200;
  localparam word_t BLK = 32'h0000_1000;
  int msi3_tmo=200; 
  bit msi3_acc=0;
  bit got_accept = 0;
  bit got_access = 0;


initial begin

    // Reset
    reset_dut();

    // get rid of red lines
    ccif.cif0.dstore = 0;
    ccif.cif0.daddr = 0;
    ccif.cif0.dWEN = 0;
    ccif.cif0.dREN = 0;
    ccif.cif0.iaddr = 0;
    ccif.cif0.iREN = 0;
    ccif.cif0.cctrans = 0;
    ccif.cif0.ccwrite = 0;

    ccif.cif1.dstore = 0;
    ccif.cif1.daddr = 0;
    ccif.cif1.dWEN = 0;
    ccif.cif1.dREN = 0;
    ccif.cif1.iaddr = 0;
    ccif.cif1.iREN = 0;
    ccif.cif1.cctrans = 0;
    ccif.cif1.ccwrite = 0;

    //-----------------------------------------------------------------------------
    // ifetch tests
    //-----------------------------------------------------------------------------

    // // Test IF0: Core 0 instruction fetch request should drive a RAM read
    // // Expectation: ramREN asserted, ramaddr equals iaddr, iload matches ramload at ACCESS, iwait[0] low on accept
    // reset_dut();
    // ccif.cif0.iaddr = 32'h0000_1000;
    // ccif.cif0.iREN  = 1;

    // // Wait up to 50 cycles
    // for (int t = 0; t < 50; t++) begin
    //     @(posedge clk);

    //     // ACCEPT = iwait drops low while iREN stays high
    //     if (!ccif.iwait[0] && ccif.cif0.iREN)
    //         got_accept = 1;

    //     // ACCESS = controller hits RAM access state
    //     if (ccif.ramstate == ACCESS) begin
    //         got_access = 1;
    //         break;
    //     end
    // end

    // // 1. Controller accepted request
    // if (got_accept) $display("PASS: IF0 accept handshake (iwait[0]==0 while iREN==1)");
    // else $display("FAIL: IF0 - controller never accepted IF request.");

    // // 2. ACCESS reached
    // if (got_access) $display("PASS: IF0 reached RAM ACCESS state.");
    // else $display("FAIL: IF0 - controller never reached ACCESS.");

    // // 3. Controller must perform READ
    // if (ccif.ramREN && !ccif.ramWEN) $display("PASS: IF0 RAM read signaled (ramREN=1, ramWEN=0).");
    // else $display("FAIL: IF0 - Expected ramREN=1 & ramWEN=0, got REN=%0b WEN=%0b.", ccif.ramREN, ccif.ramWEN);

    // // 4. Address matches
    // if (ccif.ramaddr == 32'h0000_1000) $display("PASS: IF0 RAM address correct (%h).", ccif.ramaddr);
    // else $display("FAIL: IF0 - Wrong RAM address. Expected 00001000, got %h.", ccif.ramaddr);

    // // Small delay to allow iload update
    // @(posedge clk);

    // // 5. iload matches ramload
    // if (ccif.iload[0] === ccif.ramload) $display("PASS: IF0 iload matches ramload (%h).", ccif.iload[0]);
    // else $display("FAIL: IF0 - iload=%h ramload=%h mismatch.", ccif.iload[0], ccif.ramload);

    // // 6. Controller deasserted stall
    // if (ccif.iwait[0] == 1'b0) $display("PASS: IF0 iwait deasserted at accept/ACCESS.");
    // else $display("FAIL: IF0 - iwait[0] still asserted after ACCESS.");

    // // Deassert request
    // ccif.cif0.iREN = 0; @(posedge clk);


    // // Test IF1: Core 1 instruction fetch request should drive a RAM read
    // // Expectation: ramREN asserted, ramaddr equals iaddr, iload matches ramload at ACCESS, iwait[1] low on accept
    // reset_dut();
    // ccif.cif1.iaddr = 32'h0000_2000;
    // ccif.cif1.iREN = 1; 
    
    // for (int t = 0; t < 50; t++) begin
    //     @(posedge clk);

    //     // ACCEPT = iwait drops low while iREN stays high
    //     if (!ccif.iwait[1] && ccif.cif1.iREN)
    //         got_accept = 1;

    //     // ACCESS = controller hits RAM access state
    //     if (ccif.ramstate == ACCESS) begin
    //         got_access = 1;
    //         break;
    //     end
    // end

    // assert(ccif.ramREN) else $display("IF1: ramREN not asserted for core1 iREN");
    // assert(ccif.ramaddr == 32'h0000_2000) else $display("IF1: ramaddr mismatch for core1 iREN");
    // assert(ccif.iload[1] == ccif.ramload) else $display("IF1: iload[1] != ramload on ACCESS");
    // assert(ccif.iwait[1] == 1'b0) else $display("IF1: iwait[1] not deasserted on ACCESS");
    // ccif.cif1.iREN = 0; @(posedge clk);



    // Test IF2: Both cores fetch; both should eventually receive accepts (no starvation)
    // Expectation: both iwait[0] and iwait[1] drop low on some cycle while iREN asserted
    // reset_dut();
    // ccif.cif0.iaddr = 32'h0000_3000; 
    // ccif.cif1.iaddr = 32'h0000_4000;
    // ccif.cif0.iREN = 1; 
    // ccif.cif1.iREN = 1; 
    // @(posedge clk);
    // for (int t = 0; t < 50; t++) begin
    //     @(posedge clk);
    //     if (ccif.ramstate == ACCESS) break;
    // end
    // assert(ccif.ramREN) else $display("IF2: ramREN not asserted for core 0 iREN");
    // for (int t = 0; t < 50; t++) begin
    //     @(posedge clk);
    //     if (ccif.ramstate == ACCESS) break;
    // end
    // assert(ccif.ramREN) else $display("IF2: ramREN not asserted for core 1 iREN");
    // ccif.cif0.iREN = 0; ccif.cif1.iREN = 0; @(posedge clk);


    //-----------------------------------------------------------------------------
    // MSI tests
    //-----------------------------------------------------------------------------

    // Test MSI0: I->S via Core0 read miss
    // Expectation: Core0 dREN drives ramREN; ramWEN=0; after ACCESS, dwait[0]=0 one cycle; no ccinv asserted.
    // Core 0: I -> S, Core 1: I -> I
    reset_dut();
    ccif.cif0.daddr = BLK; 
    ccif.cif0.dREN = 1; 
    ccif.cif0.cctrans = 0; 
    while (ccif.ramstate != ACCESS) @(posedge clk);
    assert(ccif.ramREN && !ccif.ramWEN) else $display("MSI0: Expected ramREN=1 ramWEN=0 on read miss");
    assert(ccif.ccinv[1] == 0) else $display("MSI0: unexpected invalidate to core1");
    assert(ccif.ccwait == 2'b00) else $display("MSI0: wrong1");
    assert(ccif.ccsnoopaddr[1] == ccif.cif0.daddr) else $display("MSI0: wrong snoop addy");
    assert(ccif.cif0.dload == ccif.ramload) else $display("MSI0: kill yourself");
    ccif.cif0.dREN = 0; @(posedge clk);

    // Test MSI1: Second read (Core1) of same block -> shared
    // Expectation: Core1 dREN drives ramREN; no invalidate; dwait[1]=0 on ACCESS.
    // Core 0: S -> S, Core 1: I -> S
    ccif.cif1.daddr = BLK; 
    ccif.cif1.dREN = 1; 
    ccif.cif1.cctrans = 1;
    ccif.cif1.ccwrite = 0;
    while (ccif.ramstate != ACCESS) @(posedge clk);
    assert(ccif.ramREN && !ccif.ramWEN) else $display("MSI1: Expected ramREN=1 ramWEN=0 on read miss core1");
    assert(ccif.dwait[1] == 0) else $display("MSI1: dwait[1] not low on ACCESS");
    assert(ccif.ccwait == 2'b10) else $display("MSI1: wrong1");
    assert(ccif.ccsnoopaddr[0] == ccif.cif1.daddr) else $display("MSI1: wrong snoopaddr");
    assert(ccif.cif1.dload == ccif.ramload) else $display("MSI1: kill yourself");
    ccif.cif1.dREN = 0; ccif.cif1.cctrans = 0; @(posedge clk);

    // Test MSI2: S->M upgrade by Core0 write
    // Expectation: Core0 dWEN drives ramWEN; invalidate to core1 (ccinv[1]); dwait[0]=0 on ACCESS.
    // Core 0: S->M, Core 1: S -> I
    ccif.cif0.daddr = BLK; 
    ccif.cif0.dstore = 32'hAAAA5555; 
    ccif.cif0.dWEN = 1; 
    while (ccif.ramstate != ACCESS) @(posedge clk);
    assert(ccif.ramWEN) else $display("MSI2: ramWEN not asserted for write");
    assert(ccif.dwait[0] == 0) else $display("MSI2: dwait[0] not low on write ACCESS");
    assert(ccif.ccinv[1]) else $display("MSI2: NOTE invalidate not observed; verify controller logic");
    assert(ccif.ccwait == 2'b10) else $display("MSI2: wrong1");
    assert(ccif.ccsnoopaddr == ccif.cif0.daddr) else $display("MSI2: kill yourself");
    ccif.cif0.dWEN = 0; @(posedge clk);

    // reset_dut();
    // // Core 1 I -> M, Core 0: I -> I
    // ccif.cif1.daddr = BLK; ccif.cif1.dWEN = 1; ccif.cif1.dstore = 32'h11111111; ccif.cif1.cctrans = 0; @(posedge clk);
    // assert(ccif.ramWEN) else $display("MSI2: ramWEN not asserted for write");
    // while (ccif.ramstate != ACCESS) @(posedge clk);

    // // Core 1: M -> S, Core 0: I -> S
    // ccif.cif0.dREN = 1; ccif.cif0.daddr = BLK; ccif.cif0.cctrans = 1; ccif.cif0.ccwrite = 1; @(posedge clk);
    // assert(ccif.ramREN) else $display("MSI2: ramREN not asserted for write");
    // while (ccif.ramstate != ACCESS) @(posedge clk);

    // reset_dut();
    // // Core 1 I -> M,

    // ccif.cif1.daddr = BLK; ccif.cif1.dWEN = 1; ccif.cif1.dstore = 32'h11111111; ccif.cif1.cctrans = 0; @(posedge clk);
    // assert(ccif.ramWEN) else $display("MSI2: ramWEN not asserted for write");
    // while (ccif.ramstate != ACCESS) @(posedge clk);

    // // Core 0: I -> M, Core 1: M -> I
    // ccif.cif0.daddr = BLK; ccif.cif0.dWEN = 1; ccif.cif0.dstore = 32'h11111111; ccif.cif0.cctrans = 1; @(posedge clk);
    // assert(ccif.ramWEN) else $display("MSI2: ramWEN not asserted for write");
    // while (ccif.ramstate != ACCESS) @(posedge clk);

    // // Core 0: M -> M
    // ccif.cif0.daddr = BLK; ccif.cif0.dWEN = 1; ccif.cif0.dstore = 32'h2; ccif.cif0.cctrans = 0; @(posedge clk);
    // assert(ccif.ramWEN) else $display("MSI2: ramWEN not asserted for write");
    // while (ccif.ramstate != ACCESS) @(posedge clk);

    // // // Test MSI3: I->S via Core1 read of modified block in Core0
    // // // Expectation: Core1 dREN accepted; either RAM read or C2C; dwait[1]=0; core0 not invalidated (should become Shared)
    // // // reset_dut();
    // // ccif.cif1.daddr = BLK; ccif.cif1.dREN = 1; @(posedge clk);
    
    // // while (msi3_tmo--) begin
    // //   @(posedge clk);
    // //   if (ccif.dwait[1]==0) begin msi3_acc=1; break; end
    // // end
    // // assert(msi3_acc) else $display("MSI3: No accept pulse for Core1 read of modified block");
    // // assert(ccif.ccinv[0]==0) else $display("MSI3: Unexpected invalidate of owner on read");
    // // ccif.cif1.dREN = 0; @(posedge clk);

    // // // Test MSI4: M->I via Core1 write to block owned Modified by Core0
    // // // Expectation: Core1 write accepted (ramWEN); owner invalidated (ccinv[0]).
    // // // reset_dut();
    // // ccif.cif1.daddr = BLK; ccif.cif1.dstore = 32'h1234ABCD; ccif.cif1.dWEN = 1; ccif.cif1.cctrans = 1; @(posedge clk);
    // // while (ccif.ramstate != ACCESS) @(posedge clk);
    // // assert(ccif.dwait[1]==0) else $display("MSI4: dwait[1] not low on write ACCESS");
    // // if (!ccif.ccinv[0]) $display("MSI4: NOTE invalidate to owner not observed; verify controller logic");
    // // ccif.cif1.dWEN = 0;
    // // ccif.cif1.cctrans = 0;
    // // @(posedge clk);

    // // // Test MSI5: M->M (write again by same core already Modified)
    // // // Expectation: Write accepted; no additional invalidates.
    // // // reset_dut();
    // // ccif.cif1.daddr = BLK; ccif.cif1.dstore = 32'h5678DCBA; ccif.cif1.dWEN = 1; @(posedge clk);
    // // while (ccif.ramstate != ACCESS) @(posedge clk);
    // // assert(ccif.dwait[1]==0) else $display("MSI5: dwait[1] not low on second write");
    // // assert(ccif.ccinv[0]==0) else $display("MSI5: Unexpected invalidate on repeated write");
    // // ccif.cif1.dWEN = 0; @(posedge clk);
    

    // mem dump
    dump_memory();

    // done
    $finish;
end
endprogram
