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
INC COUNT        ; Increment the memory variable COUNT

MOV TOTAL, 48    ; Transfer the value 48 in the 
                 ; memory variable TOTAL
					  
ADD AH, BH       ; Add the content of the 
                 ; BH register into the AH register
					  
AND MASK1, 128   ; Perform AND operation on the 
                 ; variable MASK1 and 128
					  
ADD MARKS, 10    ; Add 10 to the variable MARKS
MOV AL, 10       ; Transfer the value 10 to the AL register

ret		 ; End the function

```
## System calls
System calls are the interface between user programs and the kernel. They are used to let the kernel perform various system tasks, such as file access, process management.
Each system call has a fixed number. We need to take the following steps to use a system call in our programs:
- Put the system call number in the RAX register.
- Store the arguments to the system call in the registers RBX, RCX, etc.
- Call the relevant interrupt.
- The result is usually returned in the RAX registre.
-
