li t1, 2
li t2, 3
li x17, 0
li sp, 0xFFFC
li x16, 5

bge t1, t2, lessthan
push x16
halt

lessthan:
    addi x17, x0, 1
    push x17
    halt

