#------------------------------------------------------------------
# Unit Test MSI S -> S
# transition(s) : PrRd/ 
#                 BusRd/            
#------------------------------------------------------------------

org 0x0000

        # addresses
        li t0, 0x2000       # shared data address
        li t1, 0x3000       # sync variable address

        # init sync = 0
        li t2, 0
        sw t2, 0(t1)

        # First read: Core 0 brings line into S
        lw t3, 0(t0)        # PrRd miss -> BusRd -> S (Core 0)

        # signal core 1 to run: sync = 1
        li t2, 1
        sw t2, 0(t1)

        #wait for core 1 to finish, sync = 2
wait_c1:
        lw t4, 0(t1)
        li t5, 2
        bne t4, t5, wait_c1

        # At this point both caches should have the line in S
        halt



org 0x200

        li t0, 0x2000       # shared data address
        li t1, 0x3000       # sync variable address

        # wait until core 0 has done its load (sync = 1)
wait_c0:
        lw t2, 0(t1)
        li t3, 1
        bne t2, t3, wait_c0

        # Second read: Core 1 brings line into S
        # Core 0 should remain in S on BusRd snoop
        lw t4, 0(t0)        # PrRd miss -> BusRd -> S (Core 1), S->S for Core 0

        # signal done: sync = 2
        li t5, 2
        sw t5, 0(t1)

        halt


org 0x2000
    cfw 0x1
    cfw 0xA

org 0x3000
    cfw 0x0
    cfw 0xB
