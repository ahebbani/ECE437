#------------------------------------------------------------------
# Unit Test Control Flow Hazard
# Which instruction to fetch? Not known. Using Sol 3
#------------------------------------------------------------------

org 0x0000

li t0, 0x0F00

//------------------------------------------------------------------

ori t1, x0, 1
bne t1, t1, B    //branch not taken, prediction was correct
//pnt was right, process these no bubble
ori t2, x0, 2
sw t1, 0(t0)        //mem[0xF00] = 1 
sw t2, 4(t0)        //mem[0xF04] = 2 

B: 
    ori t3, x0, 0x111
    ori t4, x0, 0x222
    ori t5, x0, 0x333

    ori t1, x0, 5
    ori t2, x0, 5
    beq t1, t2, TAKEN   //pnt, prediction was wrong
    //pnt, flush these
    sw t3, 8(t0)
    sw t4, 12(t0)
    sw t5, 16(t0)

TAKEN:
    lui t6, 0xABCD0
    srli t6, t6, 16     //t6 = 0x0000ABCD
    sw t6, 20(t0)       //mem[0xF16] = t6
    halt

org 0x0F00
cfw 0xAAAAAAAA  //0 expect 1
cfw 0xBBBBBBBB  //4 expect 2
cfw 0xCCCCCCCC  //8 remain
cfw 0xDDDDDDDD  //12 remain
cfw 0xEEEEEEEE  //16 remain
cfw 0xFFFFFFFF  //20 expect 0x0000ABCD



