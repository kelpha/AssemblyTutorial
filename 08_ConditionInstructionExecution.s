.global _start
_start:
    MOV R0, #2
    MOV R1, #4
    CMP R1, R0

    @ ADDLT R2, #1 @ Add if less than,  i.e this instruction will trigger if the comparison that come previous is less 
    @ SUBLT
    @ MULLT
    MOVGE   R2, #5  @ Move if previous comparison is greater than or equal

