# Lab 2 Multiply Algorithm

org 0x0000

# Pop two words from the top of the stack, multiple them together, push them back on the stack
li t0, 4
push t0
li t0, 2
push t0

pop t1 # multiplicand
pop t2 # multiplier
li t3, 0 # result

mult_loop:
    beqz t2, mult_done
    andi t4, t2, 1
    beqz t4, skip_add
    add t3, t3, t1

skip_add:
    slli t1, t1, 1
    srli t2, t2, 1
    j mult_loop

mult_done:
    push t3

halt
