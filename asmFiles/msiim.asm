#------------------------------------------------------------------
# Unit Test MSI I -> M
# transition : PrWr / BusRdX
#------------------------------------------------------------------

# core 0
org 0x0000
  li t0, 0x1000
  li t1, 0xAAAA1234
  sw t1, 0(t0)    # PrWr miss -> BusRdX -> M
  halt

# core 1
org 0x0200
  halt
