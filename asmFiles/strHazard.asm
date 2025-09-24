#------------------------------------------------------------------
# Unit Test Structural Hazard
# Two instructions need the same hardware at the same time
# test lw/sw and writing/reading from reg file
#------------------------------------------------------------------

org 0x0000

li t0, 0x0F00
li t1, 0x0F20

//Mem needs ram access when IF needs ram access too

lw t2, 0(t0) 
sw t2, 0(t1)

lw t3, 4(t0)
sw t3, 4(t1)

lw t4, 8(t0)
sw t4, 8(t1)

halt

org 0x0F00  //data value source
cfw 0x11111111  //should find at 0x0F20
cfw 0x22222222  //should find at 0x0F24
cfw 0x33333333  //should find at 0x0F28
