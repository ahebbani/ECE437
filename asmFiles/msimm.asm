#------------------------------------------------------------------
# Unit Test MSI M -> M
# transition(s) : PrWr/ 
#                 PrRd/            
#------------------------------------------------------------------

# core 0
org 0x0000
  li t0, 0x1000     
  li t1, 0x12345678
  li t2, 0x87654321

  sw t1, 0(t0)    # PrWr on I -> BusRdX -> M

  # read hit in M
  lw t3, 0(t0)    # PrRd hit -> stays M

  # write hit in M
  sw t2, 0(t0)    # PrWr hit -> stays M

  halt

# core 1
org 0x0200
  halt            # idle second core
