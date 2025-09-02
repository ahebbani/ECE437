mult:
    pop t1 # multiplicand
    pop t2 # multiplier
    li t3, 0 # result

    mult_loop:
        beqz t2, mult_done
        add t3, t3, t1
        addi t2, t2, -1
        j mult_loop

    mult_done:
        push t3
    
    ret