#------------------------------------------------------------------
# Unit Test MSI I -> S
# transition : PrRd / BusRd
#------------------------------------------------------------------
org 0x0000
  li t0, 0x1000
  lw t1, 0(t0)      # PrRd miss -> BusRd -> line in S state
  halt

# core 1
org 0x0200
  halt              # stays idle; observes BusRd on the bus
