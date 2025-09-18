li t0, 2
li t1, 3
li t2, 0
li sp, 0xFFFC
li x16, 5

test_jalr:
    beq t0, t1, success
    jal ra, failure
    li t3, 5
    push t3
    halt

success:
    addi t2, t2, 1
    push t2
    halt

failure:
    add t2, x0, ra
    jalr t2
