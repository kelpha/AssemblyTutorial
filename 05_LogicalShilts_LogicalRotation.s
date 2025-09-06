.global _start
_start:
    @ Logical Shit to left
    @ Example
    @ number 10 in Binary is 0x1010
    @ After left shit number become 0x10100 in decimal 20
    @ Logical shift left is fast way to multiply with 2
    @ Similarly Logical Shift to right is fast way to divide by 2
    @
    @ Note: In ARM there is no instruction for division operation
    @
    @ ROR: Rotation 
    @ Right most bit loop back to left most position
    @ Example 0000 0101 - 1000 0010
    @ Usage of ROR Hashing, Crypto, Graphics
    @
    @ Note: ARM doesn't have ROL Rotation to left
    @ If we want to do n bit rotation to left then we have to do 32-n rotation to right
    @ Rotations are not much common operations
    @ MOV R0, #10
    @ LSL R0, #2
    @ LSR R0, #1

    @ Move and shift
    @ MOV R0, #10
    @ MOV R1, R0
    @ LSL R1, #1

    @ Move and shift in single instruction
    MOV R0, #10
    MOV R1, R0, LSL #1

    @ Rotation
    MOV R0, #15
    ROR R0, #1