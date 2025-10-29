#------------------------------------------------------------------
# Unit Test Data Hazard
# Data not ready (RAW), tests forwarding and load inserting 1 stall/bubble
#------------------------------------------------------------------

org 0x0000

//test forwarding------------------------------------------------------------------

li t0, 5   //ori t0:IF 
li t1, 7   //ori t1:IF, ori t0:ID

add t2, t0, t1  //add t2:IF, ori t1:ID, ori t0:EX 
add t3, t2, t1  //add t3:IF, add t2:ID, ori t1:EX, ori t0:MEM
sub t4, t3, t0  //sub t4:IF, add t3:ID, add t2:EX, ori t1:MEM, ori t0:WB


//test loads------------------------------------------------------------------

li t6, 0x0F20

//load, use alu
lw t0, 0(t6)  
add t1, t0, t0  //haz unit inserts 1 bubble, lw has to be in mem stage to get t0 val

//load, store
lw t2, 4(t6)
sw t2, 0(t6)   //haz unit inserts 1 bubble 

//load, branch
lw t3, 8(t6)
beq t3, x0, DONE

//beq not taken (fallback, shouldn't happen)
add t4, t4, t4 //would be 28, not taken t4 stay 14

DONE:
    halt

org 0x0F20
cfw 0x3
cfw 0x9
cfw 0x0
