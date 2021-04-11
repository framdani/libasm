## Machine code vs Assembly

In computer programming, each computer has a microprocessor that manages the computer's arithmetical, logical, and control activities. And every processor family has its own instruction set for handling various operations such as displaying information on screen and performing various other operations.

Machine code, consisting of machine language instructions, is used to directly control a computer's central processing unit (CPU). It's the binary executed by the computer.

An assembly language(asm) is a low level programming language for a computer but still requires compilation. It describes the succession of commands the processor will execute. One line means one instruction.
Assembly has the advantage to be more readable by humans.

## The tools

These are some assemblers that translate assembly language source code into binary programs:
- MASM (Micorosft Assembler).
- NASM (Netwide Assembler).
- FASM (Flat Assembler).

In this project, we gonna write our assembly code inside .s files and compile them with the nasm compiler.
```
# Install nasm on MacOS 
brew install nasm

#Compile assemly files
nasm -f macho64 asm_files.s -o object_files.o
ar rcs exec_name object_files
```

## A typical NASM file layout

<p align = "center">
<img src ="https://mdimg.wxwenku.com/getimg/356ed03bdc643f9448b3f6485edc229ba422382be5dc35225d189c9043ca660f40f6f899b01c9555ae15ee9292ca4f48.jpg"/>
</p>

Most programs consist of directives followed by one or more sections. In general, an assembly can be divided into three sections: 
   - section .data   : is used for declaring initialized data or constants. This dara does not change at runtime.
   - section .text   : where program code goes.
   - section .bss    : the bss section is used for declaring variables
   
## Registers
There are 3 types of memory : regiters, memory addresses(RAM) and constants.

Registers are very fast , they store data elements for processing without having to access the memory. A limited number of registers are built into the processor chip.

<p align="center">
<img src = "https://blog.oursin.eu/images/asm_registers.png"/>
</p>

## Instructions
A basic instruction in assembly language has two parts, the first one is the name of the instruction[mnemonic], and the second is the operands.

```
[label]   mnemonic   [operands]   [;comment]
```

There are hundreds of instructions. Here is some examples:


```
mov x ,y	     x ← y

```

```
and x ,y	     x ← x and y

```

```
or x ,y	     x ← x or y

```

```
xor x ,y	     x ← x xor y

```

```
add x ,y	     x ← x + y

```

```
sub x ,y	     x ← x – y

```

```
inc x	        x ← x + 1

```

```
dec x	        x ← x – 1

```

```
syscall	     Invoke an operating system routine

```

```
db	         A pseudo-instruction that declares bytes that will be in memory when the program runs

```
```
## The calling conventions
