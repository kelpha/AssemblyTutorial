.global _start
_start:
    @ MOV R0, #5
    @ MOV R1, #7
    @ ADD R2, R0, R1 // R2 = R0 + R1
    @ SUB R2, R0, R1 // R2 = R0 - R1
	@ MUL R2, R0, R1 // R2 = R0 * R1

    @ Subtraction 
    @ If we subtract 1 from 0xFFFFFF result is same as we subtract 7 from 5 i.e 0xFFFFFFFe
    @ Using CPSR register we can identify what whether it is large number or negative number.
    @ In CPSR register there are below Flags
    @ N - Result of last operation is negative
    @ Z - 
    @ C -
    @ V -
    @ I -
    @
    @ S -
    @ V -
    @ C -
    @ 
    @ To update CPSR register we have to use arithmetic with flag for example SUBS
    @ SUBS will set the flag in CPSR register

    @ Negative Flag
    @ MOV R0, #5
    @ MOV R1, #7
    @ SUBS R2, R0, R1

    @ Carry Flag 
    @ MOV R0, #0xFFFFFFFF
    @ MOV R1, #3
    @ ADDS R2, R0, R1

    @ If we want to use Carry Operation
    @ We have to use ADC Instruction Add with Carry
    @ This will add carry to result
    MOV R0, #0xFFFFFFFF
    MOV R1, #3
    ADC R2, R0, R1 // R2 = R0 + R1 + Carry