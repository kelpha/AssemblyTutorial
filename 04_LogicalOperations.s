.global _start
_start:
    @ Anding
    @ Syntax
    @ AND  dest Reg , first reg, second reg

    MOV R0, #0xFF
    MOV R1, #22
    @ AND R2, R0, R1 @ This is most common because we don't usually have flags getting set with the end operation
    ANDS R2, R0, R1
    ORR  R2, R0, R1 @ or operation
    EOR  R2, R0, R1 @ exclusive or - only give one if one of then ore one not both of the one

    @ Negation
    MOV R0, #0xAA
    MVN R0, R0 @ Result 0xFFFFFF00
    AND R0, R0,#0x000000FF @ Result 0x00000000
