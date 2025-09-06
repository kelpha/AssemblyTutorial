.global _start
_start:
    MOV R0, #1
    MOV R1, #2
    CMP R0, R1

    BGT greater @ IF R1 is greater than R0
    BAL default @ Branch always

greater:
    MOV R2, #1

default:
    MOV R2, #2
