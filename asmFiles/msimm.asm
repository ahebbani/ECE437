#------------------------------------------------------------------
# Unit Test MSI M -> M
# transition(s) : PrWr/ 
#                 PrRd/            
#------------------------------------------------------------------

li t0, 0x1000     
li t1, 0x12345678
li t2, 0x87654321

sw t1, 0(t0) #PrWr on I -> BusRdX -> M

//read hit
lw t3, 0(t0) #PrRd -> M

//write hit
sw t2, 0(t0)    #PrWr -> M 

halt
