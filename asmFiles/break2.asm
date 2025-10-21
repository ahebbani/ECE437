# branch/jump flush test
org 0x0000
  ori   $1, $0, 0
  ori   $2, $0, 5

loop1:
  addi  $1, $1, 1
  beq   $1, $2, br_taken
  jal   skip_next       # jump-and-link immediately after a branch (flush overlap)
  ori   $3, $0, 0x1111  # should be skipped
skip_next:
  j     loop1

br_taken:
  ori   $4, $0, 0x2222
  jal   target2
  ori   $5, $0, 0x3333  # should be skipped if jal flushes properly

target2:
  halt

org 0x0200
res1:
  cfw 0
