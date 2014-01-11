// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/08/FunctionCalls/FibonacciElement/FibonacciElement.tst

// FibonacciElement.asm is the result of translating both Main.vm and Sys.vm.

load CallReturn.asm,
output-file CallReturn.out,
//compare-to CallReturn.cmp,
output-list RAM[0]%D1.6.1 RAM[261]%D1.6.1;

set RAM[0] 256,
set RAM[1] 100,
set RAM[2] 200,
set RAM[3] 300,
set RAM[4] 400;


repeat 400 {
  ticktock;
}

output;
