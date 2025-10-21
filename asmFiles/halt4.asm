org 0x0000
li x5, 2
li x6, 2
li x7, 4
li x17, 0
li sp, 0xFFFC
li x16, 8

// fill pipeline
sw x5, 202(x5)
lw x6, 202(x5)
sw x7, 198(x6)
lw x7, 198(x6)
sw x16, 196(x7)

sw x7, 200(x7) // halt in d
halt
add t2, t3, t1 // halt in e
addi t3, t2, 1 // halt in m -> should flush everything
add t4, t3, x0 // halt in w -> flushed

