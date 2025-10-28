#----------------------------------------------------------
# ihit before dhit during lw/sw 
#----------------------------------------------------------

  org 0x0000
  
  # Initialize with cache-aware addresses
  ori $1, $0, 0x400    # Data address - set 0
  ori $2, $0, 0x440    # Same DCache set, different tag
  ori $3, $0, 0xABCD   # Test value 1
  ori $4, $0, 0x1234   # Test value 2
  
  # Store initial values (will allocate cache blocks)
  sw $3, 0($1)         # Allocate block in DCache
  sw $4, 0($2)         # Allocate another block in same set
  
  # Clear some registers
  ori $5, $0, 0
  ori $6, $0, 0
  ori $7, $0, 0
  
  # Sequence where IHit clearly precedes DHit
  # Multiple instructions to separate fetches from data accesses
  addi $8, $0, 1       # IHit
  addi $9, $0, 2       # IHit  
  addi $10, $0, 3      # IHit
  addi $11, $0, 4      # IHit
  
  # Now load - IHit for lw instruction, then DHit for data
  lw $5, 0($1)         # IHit then DHit
  
  # More instructions between memory ops
  add $6, $5, $8       # IHit
  sub $7, $6, $9       # IHit
  xor $12, $7, $10     # IHit
  
  # Another memory operation
  sw $12, 4($1)        # IHit then DHit (write to existing block)
  
  # Test write-back: modify and force eviction
  ori $13, $0, 0x480   # Same set as $1 and $2
  lw $14, 0($13)       # Should cause eviction of one block (write-back if dirty)
  
  # Final verification
  lw $15, 0($1)        # Check if block was written back properly
  lw $16, 4($1)        # Check the stored value
  
  # Store results
  ori $20, $0, 0x700   # Result base address
  sw $5, 0($20)        # Should be 0xABCD
  sw $6, 4($20)        # Should be 0xABCE
  sw $7, 8($20)        # Should be 0xABCC
  sw $12, 12($20)      # Should be 0xABCF
  sw $15, 16($20)      # Should be 0xABCD (verify write-back)
  sw $16, 20($20)      # Should be 0xABCF
  
  halt
