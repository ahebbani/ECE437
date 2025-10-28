org 0x0000
li x6, 4
li x7, 8
li x17, 0
li sp, 0xFFFC
li x16, 5

li x5, 0
li x18, 10
sw x18, 20(x6) # store x18

loop: 
    addi x5, x5, 1 # ihit
    lw x8, 20(x6)  # dhit
    bne x5, x16, loop
    halt
