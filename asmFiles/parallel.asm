#----------------------------------------------------------
# RISC-V Assembly - Parallel Producer/Consumer using LR/SC
#----------------------------------------------------------
#----------------------------------------------------------
# Core 1
#----------------------------------------------------------
  org 0x0000 
  li x2, 0xFFFC  
  jal mainp0 
  halt

mainp0:
  push x1
  li x31, 256            
  li x20, 0x1234 # seed
  li x22, 0 

genRand:
  # generate random number
  or x12, x0, x20       
  jal crc32        
  or x21, x0, x10 

  # push result
  ori   x10, x0, l1        
  jal   lock   
  or    x10, x0, x21 
  jal   pushVal 
  ori   x10, x0, l1  
  jal   unlock 

  # seed = result
  or x20, x0, x21      

  # if not done, go to generate
  addi x22, x22, 1
  bne x22, x31, genRand 

  pop x1 
  ret

l1:
  cfw 0x0


#----------------------------------------------------------
# Core 2
#----------------------------------------------------------
  org 0x0200 
  li x2, 0x7FFC 
  jal mainp1 
  halt

mainp1:
  push  x1  
  li x30, 256
  li x23, 0 

  # initialize results
  li x8, 0x0000FFFF 
  li x9, 0x00000000 
  li x18, 0 
  li x25, 0x0000FFFF

popNextVal:
  # verify there are values in the stack
  jal   checkStack

  # obtain locks and pop values
  ori x10, x0, l1 
  jal lock 
  jal popVal 
  or x22, x0, x10
  ori x10, x0, l1 
  jal unlock 

  # min calculation on lower 16 bits
  and x24, x22, x25 
  and x12, x8, x25 
  or x13, x0, x24 
  jal min
  or x8, x0, x10 

  # max calculation on lower 16 bits
  and x12, x9, x25 
  or x13, x0, x24 
  jal max
  or x9, x0, x10 

  # compute sum and store in s2
  add   x18, x18, x24  

  # increment counter and branch
  addi  x23, x23, 1
  bne   x23, x30, popNextVal

  # final calculation for average and remainder
  # average = sum >> 8 (divide by 256)
  li    x5, 8
  srl   x18, x18, x5 
  # average is in s2 and remainder in s3

  # Keep results in registers: x8=min, x9=max, x18=avg

  pop   x1 
  halt

res:
  cfw 0x0

#---------------------------------------------------------
# Lock and Unlock (LR/SC)
#---------------------------------------------------------
lock:
acquire:
  lr.w  x5, (x10)           # t0=x5, a0=x10
  bne   x5, x0, acquire
  li    x6, 1               # t1=x6
  sc.w  x7, x6, (x10)       # t2=x7
  bne   x7, x0, lock
  ret

unlock:
  sw    x0, 0(x10)
  ret

#-----------------------------------------------------------
# Push and Pop functions
#-----------------------------------------------------------

# loop until the offset is greater than 0
checkStack:
  ori   x5, x0, gstackptr
  lw    x6, 0(x5)                      # t1=x6
  beq   x6, x0, checkStack
  ret                                  # return to caller

pushVal:
  ori   x5, x0, gstackptr
  lw    x6, 0(x5)

  ori   x7, x0, gstackbase
  lw    x28, 0(x7)                      # t3=x28

  sub   x28, x28, x6

  sw    x10, 0(x28)
  addi  x6, x6, 4
  sw    x6, 0(x5)

  ret                                  # return to caller


popVal:
  ori   x5, x0, gstackptr
  lw    x6, 0(x5)

  ori   x7, x0, gstackbase
  lw    x28, 0(x7)

  addi  x6, x6, -4
  sub   x28, x28, x6

  lw    x10, 0(x28)
  sw    x0, 0(x28)
  sw    x6, 0(x5)

  ret                                  # return to caller


#----------------------------------------------------------
# REGISTERS (documentation-style for reference)
# a0..a7: function args/returns
# t0..t6: temporaries
# s0..s11: saved registers
# ra: return address
#----------------------------------------------------------

# USAGE random0 = crc(seed), random1 = crc(random0)
#       randomN = crc(randomN-1)
# $a0 = crc32($a2)
crc32:
  lui   x6, 0x04C11            # t1=x6
  ori   x6, x6, 0x7B7          # match provided subroutine_crc.asm
  addi  x6, x6, 0x600          # polynomial becomes 0x04C11817
  or    x7, x0, x0             # t2=x7
  li    x28, 32                # t3=x28

crcl1:
  slt   x29, x7, x28           # t4=x29
  beq   x29, x0, crcl2

  li    x30, 31                # t5=x30
  srl   x29, x12, x30
  li    x30, 1
  sll   x12, x12, x30
  beq   x29, x0, crcl3
  xor   x12, x12, x6
crcl3:
  addi  x7, x7, 1
  j     crcl1
crcl2:
  or    x10, x12, x0
  ret

# registers a2,a3,a0,a1,t0
# a2 = Numerator
# a3 = Denominator
# a0 = Quotient
# a1 = Remainder
divide:
  push  x1                # saved return address
  push  x12               # save numerator (a2=x12)
  push  x13               # save denominator (a3=x13)
  or    x10, x0, x0       # a0=Quotient = 0
  or    x11, x0, x12      # a1=Remainder = Numerator
  beq   x13, x0, divrtn   # if Denominator == 0
  slt   x5, x13, x0       # test neg D (t0=x5)
  bne   x5, x0, divdneg
  slt   x5, x12, x0       # test neg N
  bne   x5, x0, divnneg
divloop:
  slt   x5, x11, x13      # while R >= D
  bne   x5, x0, divrtn
  addi  x10, x10, 1       # Q = Q + 1
  sub   x11, x11, x13     # R = R - D
  j     divloop
divnneg:
  sub   x12, x0, x12      # negate N
  jal   divide            # call divide
  sub   x10, x0, x10      # negate Q
  beq   x11, x0, divrtn
  addi  x10, x10, -1      # return -Q-1
  j     divrtn
divdneg:
  sub   x13, x0, x13      # negate D
  jal   divide            # call divide
  sub   x10, x0, x10      # negate Q
divrtn:
  pop   x13
  pop   x12
  pop   x1
  ret

max:
  push  x1
  push  x12
  push  x13
  or    x10, x0, x12
  slt   x5, x12, x13
  beq   x5, x0, maxrtn
  or    x10, x0, x13
maxrtn:
  pop   x13
  pop   x12
  pop   x1
  ret

min:
  push  x1
  push  x12
  push  x13
  or    x10, x0, x12
  slt   x5, x13, x12
  beq   x5, x0, minrtn
  or    x10, x0, x13
minrtn:
  pop   x13
  pop   x12
  pop   x1
  ret

gstackptr:
  cfw 0x0000

gstackbase:
  cfw 0x9000

org 0xE000
max_res:
  cfw 0xBAD1BAD1
min_res:
  cfw 0xBAD2BAD2
avg_res:
  cfw 0xBAD3BAD3
  cfw 0x0
