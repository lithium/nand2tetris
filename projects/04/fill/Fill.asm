// Keyboard Screen Flash Assembly 
// For the book "The Elements of Computing Systems" (www.nand2tetris.org)
// Author: Matthew Wiggins


// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.



(FillScreen)
    @8191           // count = 8191
    D=A
    @count
    M=D

    @24576          // check keyboard, if zero, erase screen
    D=M
    @EraseScreen
    D;JEQ
                    // otherwise blacken the screen

(BlackenScreen)
    @count          // A = screen+count--
    D=M
    M=M-1
    @SCREEN
    A=D+A
    M=-1            // *A = 0xffff

    @BlackenScreen  // loop while count >= 0
    D;JGE

    @FillScreen     // return to main loop
    0;JMP

(EraseScreen)
    @count          // A = screen+count--
    D=M
    M=M-1
    @SCREEN
    A=D+A
    M=0             // *A = 0

    @EraseScreen    // loop while count >= 0
    D;JGE           


    @FillScreen     // return to main loop
    0;JMP

