#----------------------------------------------------------
# dcache Associativity Test (2-way)
#----------------------------------------------------------

  org 0x0000
  
  ori $1, $0, 0x100    # way 0 (set 0)
  ori $2, $0, 0x140    # way 1, same set as 0x100 but diff tag
  
  ori $3, $0, 0x1234   # way 0
  ori $4, $0, 0x5678   # way 1
  ori $5, $0, 0x9ABC   # replacement val
  ori $6, $0, 0xDEF0   # new val
  
  # fill both ways
  sw $3, 0($1)         # way 0
  sw $4, 0($2)         # way 1
  
  # verify both are in cache by reading back
  lw $7, 0($1)         # hit way 0
  lw $8, 0($2)         # hit way 1
  
  # access second word in same block 
  sw $6, 4($1) 
  lw $9, 4($1) 
  
  # force replacement
  ori $10, $0, 0x180   # same set as 0x100 and 0x140
  sw $5, 0($10)        # replace one way (LRU)
  
  # LRU verify
  lw $11, 0($1)        # way 0 survivor?
  lw $12, 0($2)        # way 1 survivor?
  lw $13, 0($10)       # new value
  
  # results for verif
  ori $20, $0, 0x700   # result base address
  sw $7, 0($20)        # 0x1234
  sw $8, 4($20)        # 0x5678
  sw $9, 8($20)        # 0xDEF0
  sw $11, 12($20)      # LRU 0x100 victim?
  sw $12, 16($20)      # LRU 0x140 victim?
  sw $13, 20($20)      # 0x9ABC
  
  halt
