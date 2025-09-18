li t0, 2
li t1, 3
li t2, 0
li sp, 0xFFFC
li x16, 5

test_jal:
    beq t0, t1, success
    jal ra, failure

success:
    addi t2, x0, 1
    push t2
    halt

failure:
    addi t2, x0, 2
    push t2
    halt
