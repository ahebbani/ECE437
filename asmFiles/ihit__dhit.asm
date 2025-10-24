org 0x0000
li t1, 2
li t2, 2
li x17, 0
li sp, 0xFFFC
li x16, 5

sw x18, 0(x0) # store x18
loop: 
    addi x5, x0, 1 # ihit
    lw x18, 0(x0)      # dhit right after ihit
    addi x5, x18, 0
    addi x6, x5, 0
    addi x7, x6, 0 
    addi x8, x7, 0
    bne x5, 5, loop
