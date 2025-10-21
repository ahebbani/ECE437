# small pipeline stress test for load-use, forwarding, and halt
org 0x0000

  # clear flags
  ori   $2, $0, 0
  sw    $2, flag1($0)
  sw    $2, flag2($0)
  sw    $2, flag3($0)
  sw    $2, flag_end($0)

# ---------- Test A: load-use branch ----------
  ori   $10, $0, data_lw    # pointer to data word (contains 1)
  ori   $11, $0, 1          # compare value

  lw    $5, 0($10)          # load into $5
  beq   $5, $11, A_pass     # branch immediately using loaded value

  # A_fail: branch used stale value (no load-use stall/forward)
  ori   $2, $0, 0xDEAD
  sw    $2, flag1($0)
  j     A_cont

A_pass:
  ori   $2, $0, 1
  sw    $2, flag1($0)

A_cont:

# ---------- Test B: ALU->branch forwarding ----------
  ori   $13, $0, 2
  ori   $14, $0, 3
  add   $12, $13, $14       # $12 = 5
  ori   $15, $0, 5
  beq   $12, $15, B_pass    # branch immediately using ALU result

  # B_fail: ALU result not forwarded to branch comparator
  ori   $2, $0, 0xBEEF
  sw    $2, flag2($0)
  j     B_cont

B_pass:
  ori   $2, $0, 2
  sw    $2, flag2($0)

B_cont:

# ---------- Test C: HALT correctness ----------
  ori   $16, $0, 99
  halt                      # processor must stop fetching/committing here

  # This instruction MUST NOT execute. If it does, halt is broken.
  ori   $2, $0, 42
  sw    $2, flag3($0)

  # marker that should be written only if code continues normally (optional)
  ori   $2, $0, 0x1234
  sw    $2, flag_end($0)

end:
  j     end


# ---------- Data area ----------
org 0x0200
flag1:
  cfw 0     # expected 1 if Test A passed; 0xDEAD if failed
flag2:
  cfw 0     # expected 2 if Test B passed; 0xBEEF if failed
flag3:
  cfw 0     # expected 0 if HALT worked; 42 if executed after halt
flag_end:
  cfw 0     # optional marker; expected 0x1234 only if code ran past halt

data_lw:
  cfw 1     # word for load-use test
