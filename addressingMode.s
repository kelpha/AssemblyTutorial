// Addressing mode allows to move data to registers
// MOV R0,#5   // Immediate Addressing
// MOV R1,R2   // Register Direct Addressing

// How do We get data onto the stack
// To do this we need .data section in application
// .data has to below our global section
// We will declare any data that we are going to use in our stack
// label act as variable name, then type of variable and data we are storing in it

// Note:- 32 bit data is consider as word

// LDR instruction will load data from stack to register

// To retrieve value form we have to use [],these square bracket tell assembler we are looking to find value associated with the register.

// PreIncrement accessing using '!'
// PostIncrement accessing  
.global _start
_start:
    LDR R0,=list // Direct addressing
    LDR R1, [R0] // Register Indirect addressing
    LDR R2, [R0,#4] // Adding 4 will add 4 to memory location and will be get value next in the list
    LDR R2, [R0,#4]! // Indicate we are incrementing now R0 will point not R0 + 4 memory location
    LDR R2, [R0],#4 // Post increment we access value R0 First and increment by 4
.data
list:
    .word 4,5,-9,1,0,2,-3