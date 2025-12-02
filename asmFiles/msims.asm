#------------------------------------------------------------------
# Unit Test MSI M -> S
# transition(s) : BusRd/BusWb         
#------------------------------------------------------------------

org 0x000

li t0, 0x1000
li t1, 0x3000  //sync var kinda

li t2, 0xAAAA1111  
sw t2, 0(t0)    //PrWr miss -> BusRdx -> M

//go core 1
li t3, 1
sw t3, 0(t1)    //set sync = 1, start the other core process


//wait until core 1 finishes it's read, sync = 2 when c1 is done
wait_c1: 
    lw t4, 0(t1)    //sync value?
    li t5, 2        
    bne t4, t5, wait_c1     //loop until it is 2

    lw t6, 0(t0)    //we should now be S due to core 1
                    //this load will take us from s->s

    halt


org 0x200

li t0, 0x1000
li t1, 0x3000

//wait until core 0 finishes it's store, sync = 1 when c0 is done
wait_c0:

    lw t2, 0(t1)    //read sync val
    li t3, 1
    bne t2, t3, wait_c0     //loop until done

    lw t4, 0(t0)        //PrRd miss -> BusRd -> S
                        //core 0 downgrades from m->s

    li t5, 2
    sw t5, 0(t1)    //sync = 2, core 1 is done

    halt


org 0x3000
    cfw 0x0
