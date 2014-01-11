
My work repository for nand2tetris.org and the book &ldquo;[The Elements of Computing Systems](http://www.amazon.com/gp/product/0262640686/ref=as_li_ss_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=0262640686&linkCode=as2&tag=hlidskialf-20)&rdquo; by Nisan and Schocken.


Hack Machine
------------

Chapters 1-5 were a straight forward but fun task.  Ultimately just an interesting exercise as the remainder of our the work will end up being hosted via the VMEmulator for efficiency's sake.

*Future Ideas*: 
* Combine the functionality of the vm into the hardware design.
* Incorporate Stack Pointer as a register.
* Extend instruction set to allow call/return.
* Add XOR to ALU/instruction set.


Hack Assembler (Jhasm)
----------------------
I decided I wanted to use Jack as my high level language to implement the assembler in.  But in order to fulfill the contract of Chapter 6 I needed to extend the BuiltinVM in two ways. 

First, since Jack/Hack (JHack) doesn't have any filesystem, I needed a way to read and write files from the host machine.  I added a builtinVM class ```File``` to the VMEmulator java code that was a thin wrapper around java.io.File,BufferedWriter,LineNumberReader. 

Secondly, I needed the ability to get the filename from the command-line arguments.  I extended the BuiltinVM class Sys. to provide two additional functions: ```String Sys.argument(int index)``` and ```int Sys.argumentCount()```.

http://github.com/lithium/nand2tetris-open-source

VM Translator (jhvm)
-------------
I implemented my VM Implementation in Jack.  I decided to "skip" chapter 9 as I think the last 3 chapters suffice for writing a high level language program in Jack. 

Jack Compiler (Jhackc)
----
The plan is to write the Jack compiler in Jack. Bootstrap compiling it with the provided JackCompiler, and then compiling itself with itself for final delivery.


Improvements to make:
  * optional ```let``` and ```do``` keywords.
  * more comparison operators: >=, <=, ~=
  * xor operator
  * optional return in void function/method
  * variable arguments (printf)
  * Void generic pointer type
  * support 'char' character constants
  * support constant strings (dont leak constant strings)


JackOS (JHackOS)
----------------

I started implementing the Chapter 12 Jack OS functions while I was using Jack to build the Assember and VM Implementation.  



