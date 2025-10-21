org 0x0000
addi $2, $2, -4
ori   $4,$0,0xF0
lw    $11,0($4)
halt
sw t5, 0($11)
