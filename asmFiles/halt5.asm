li x31, 0xf0
li x16, 4
li x5, 5


do_halt:
    li t1, 1
    li t2, 2
    add t3, t1, t2        # should never happen
    sw $16, 8($31)
    halt            
    sw $5, 16($31)

    li t1, 1
    li t2, 2
    add t3, t1, t2        # should never happen
