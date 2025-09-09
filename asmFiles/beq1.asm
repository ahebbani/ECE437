li t1, 2
li t2, 2
li x17, 0
li sp, 0xFFFC
li x16, 5

beq t1, t2, equal
push x16
halt

equal:
    addi x17, x0, 1
    push x17
    halt
