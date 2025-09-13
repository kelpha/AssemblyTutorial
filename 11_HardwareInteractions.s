.equ SWITCH, 0xff200040  @ Global variable for switch as constant because we cannot directly load value that much load on to the register. 
.equ LED,    0xFF200000


.global _start
_start:
    LDR R0,=SWITCH
    LDR R1, [R0]
    
    LDR R0, =LED
    STR R1, [R0]    //Store value fro R1 into the location of R0

    