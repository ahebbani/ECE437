# JALR spam + halt test (no label arithmetic, no pseudo-instructions)

_start:
    jal   t0, func1        # t0 = return address (points here + 4)
func1:
    jal   t1, func2        # t1 = return address
func2:
    jal   t2, func3        # t2 = return address
func3:
    jal   t3, func4        # t3 = return address
func4:
    jal   t4, end_func     # t4 = return address

    # jump through all of them with JALR spam
    jalr  zero, 0(t0)
    jalr  zero, 0(t1)
    jalr  zero, 0(t2)
    jalr  zero, 0(t3)
    jalr  zero, 0(t4)

end_func:
    addi  a0, zero, 11
    addi  a1, zero, 22
    addi  a2, zero, 33
    add   a3, a0, a1
    add   a4, a3, a2
    halt
