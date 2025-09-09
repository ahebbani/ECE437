li t1, 2
li t2, 3
li x17, 0
li sp, 0xFFFC
li x16, 5

bne t1, t2, notequal
push x16
halt

notequal:
    addi x17, x0, 1
    push x17
    halt
    

