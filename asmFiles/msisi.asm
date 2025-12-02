#------------------------------------------------------------------
# Unit Test MSI S -> I
# transition(s) : BusRdX/           
#------------------------------------------------------------------

org 0x0000

li t0, 0x1000
li t1, 0x3000   //sync var kinda

lw t2, 0(t0)    //PrRd miss -> BusRd -> S

//go core 1
li t3, 1
sw t3, 0(t1)    //set sync = 1, start the other core process


//wait until core 1 finishes it's write, sync = 2 when c1 is done
wait_c1: 
    lw t4, 0(t1)    //sync value?
    li t5, 2        
    bne t4, t5, wait_c1     //loop until it is 2

    lw t6, 0(t0)    //we should now be I due to our S being invalidated
                    //this load will take us from i -> s

    halt


org 0x200

li t0, 0x1000
li t1, 0x3000

//wait until core 0 finishes it's store, sync = 1 when c0 is done
wait_c0:

    lw t2, 0(t1)    //read sync val
    li t3, 1
    bne t2, t3, wait_c0     //loop until done

    //store requires exclusivity, invalidated copy in core 0 (s->I)
    li t4, 0xBBBB2222
    sw t4, 0(t0)    //PrWr miss -> BusRdX -> M

    li t5, 2
    sw t5, 0(t1)    //sync = 2, core 1 is done

    halt


org 0x3000
    cfw 0x0
