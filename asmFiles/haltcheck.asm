li t0, 1
li t2, 2
li x17, 0
li sp, 0xFFFC
li x16, 5
sw $16, 0($31)

# Jump over a few instructions to create pipeline activity
jal x1, skip_branch

# These should NOT run
halt
li t1, 0xBADBAD00
li t2, 0xBADBAD01
sw $16, 0($31)

skip_branch:
    # Simple taken branch just before halt
    li t3, 1
    li t4, 1
    beq t3, t4, do_halt   # branch should be taken
    

    # These should NOT run either
    halt
    sw $16, 0($31)
    sw $16, 4($31)

do_halt:
    sw $16, 8($31)
    halt            
    sw $16, 16($31)

    li t1, 1
    li t2, 2
    add t3, t1, t2        # should never happen
