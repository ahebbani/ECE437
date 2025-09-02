# Use multiple subroutine to calculate the days since the year 2000

org 0x0000

li t0, 23
li t1, 8
li t2, 2025

addi t1, t1, -1

li t4, 2000
sub t2, t2, t4

li t5, 30
push t5
push t1
jal mult
pop t6

li a0, 365
push a0
push t2
jal mult
pop a1

add a2, t0, t6
add a2, a2, a1

halt

mult: 
    pop a3 # multiplicand
    pop a4 # multiplier
    li a5, 0 # result

    mult_loop:
        beqz a4, mult_done
        andi a6, a4, 1
        beqz a6, skip_add
        add a5, a5, a3

    skip_add:
        slli a3, a3, 1
        srli a4, a4, 1
        j mult_loop

    mult_done:
        push a5
    
    ret
