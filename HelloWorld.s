// Register r7 is a special purpose register which tells OS to do something
// For example, If we place number 1 in r7 and call interrupt then OS will terminate the execution of the program.


.global _start // Global Register
_start:	// Label

    // opcode dest,src
    MOV R0,#30

    MOV R7,#1
    SWI 0 // Interrupt - Software Interrupt