// Multiplier in Hack Assembly 
// For the book "The Elements of Computing Systems" (www.nand2tetris.org)
// Author: Matthew Wiggins


// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)
// R2 = R0 * R1



        @R2        // r1 = 0
        M=0

(LOOP)
        @R1        // while r1 > 0 {
        D=M
        @END
        D;JLE      

        @R1
        M=D-1      // R1 -= 1


        @R0        // R2 += R0
        D=M
        @R2
        M=D+M

        @LOOP      // }
        0;JMP

(END)
        @END
        0;JMP