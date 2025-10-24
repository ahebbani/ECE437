org 0x0000
li t1, 2
li t2, 2
li x17, 0
li sp, 0xFFFC
li x16, 5

li x18, 5  # set x18
sw x18, 0(x0) # store x18
lw x17, 0(x0)  # dhit
addi x5, x18, 0
addi x7, x6, 0 # cache instruction
addi x7, x6, 0 # ihit 
addi x8, x7, 0
