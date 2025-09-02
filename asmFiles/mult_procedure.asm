# Push a variable number of operands to the stack, call mult sub routine and get the result

org 0x0000

li t0, 2
push t0
li t0, 6
push t0
li t0, 5
push t0

li t1, 3

li t2, 1

mult_procedure:
    beq t1, t2, done_mult
    jal mult
    addi t1, t1, -1
    j mult_procedure

done_mult:
    pop t0
    halt

mult: 
    pop t3 # multiplicand
    pop t4 # multiplier
    li t5, 0 # result

    mult_loop:
        beqz t4, mult_done
        andi t6, t4, 1
        beqz t6, skip_add
        add t5, t5, t3

    skip_add:
        slli t3, t3, 1
        srli t4, t4, 1
        j mult_loop

    mult_done:
        push t5
    
    ret



