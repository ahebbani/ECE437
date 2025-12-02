#------------------------------------------------------------------
# Unit Test MSI S -> M
# transition : PrWr / BusRdX
#------------------------------------------------------------------
# core 0

org 0x0000
  li t0, 0x1000     
  li t1, 0x12348765

  #get the line into S state
  lw t2, 0(t0)        # PrRd -> BusRd -> S (other core will also read)

  #write on a shared line: S -> M via BusRdX
  sw t1, 0(t0)        # PrWr on S -> BusRdX -> M

  halt

# core 1
org 0x0200
  li t0, 0x1000

  # Bring the same line into S in this core
  lw t1, 0(t0)        # PrRd -> BusRd -> S

  halt 
