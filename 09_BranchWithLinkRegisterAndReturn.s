.global _start
_start:

    MOV R0, #1
    MOV R1, #2
    BL add2         @ Branch link will store return value and will continue after branch complete
    MOV R3, #4

add2:
    ADD R2, R0, R1
	BX	LR		@ Branch back to return location in lr register