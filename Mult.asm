// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.
// Initialize R2 to 0
@0
D=A
@R2
M=D

// Load the value of R0 into a temporary register (temp)
@R0
D=M
@temp
M=D

// Initialize the loop counter to the value of R1
@R1
D=M
@counter
M=D

(LOOP)
// Check if the counter is zero, if so, exit the loop
@counter
D=M
@END
D;JEQ

// Add the value of temp to R2
@temp
D=M
@R2
M=M+D

// Decrement the counter
@counter
M=M-1

// Repeat the loop
@LOOP
0;JMP

(END)
// End of the program
@END
0;JMP