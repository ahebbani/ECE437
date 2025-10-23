#----------------------------------------------------------
# ihit and dhit same cycle 
#----------------------------------------------------------

  org 0x0000
  
  # Initialize addresses - avoid ICache/DCache conflicts
  ori $1, $0, 0x500    # Data address - avoid low addresses used by instructions
  ori $2, $0, 0x540    # Same DCache set, different tag
  ori $3, $0, 0x1234   # Test value 1
  ori $4, $0, 0x5678   # Test value 2
  
  # Store test values in DCache
  sw $3, 0($1)         # Set in DCache
  sw $4, 0($2)         # Same set, different tag
  
  # Create tight loop to increase IHit+DHit probability
  nop
  nop
  nop
  
  # Rapid sequence that stresses both caches
  lw $5, 0($1)         # DHit - way 0
  addi $6, $5, 1       # IHit immediately after
  
  lw $7, 0($2)         # DHit - way 1 (same set)
  sw $6, 4($1)         # Store - same block as 0($1)
  
  # More operations to test cache ports
  lw $8, 4($1)         # Load from same block (should hit)
  add $9, $7, $8
  sw $9, 8($1)         # Store to new block
  
  # Verify results and count hits
  ori $20, $0, 0x700   # Result base address
  sw $5, 0($20)        # Should be 0x1234
  sw $6, 4($20)        # Should be 0x1235
  sw $7, 8($20)        # Should be 0x5678
  sw $8, 12($20)       # Should be 0x1235
  sw $9, 16($20)       # Should be 0x68AD
  
  halt