## 1. Introduction

The aim of this project is to get familiar with assembly language. 
I rewrite the following functions in asm :

```
size_t		ft_strlen(char *str);
char		*ft_strcpy(char * dst, const char * src);
ssize_t		ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t		ft_read(int fildes, void *buf, size_t nbyte);
int		ft_strcmp(const char *str1, const char *str2);
char		*ft_strdup(const char *s1);
```
## 2. Requirements

```
# Install nasm on MacOS 
brew install nasm
```

To run this program, use the followings commands :
```
make
make test_a
make test_b
```
But if you create your own main.c, run the program by :
```
make
gcc main.c libasm.a
./a.out
```

## 3. Notes

### Machine code vs Assembly

In computer programming, each computer has a microprocessor that manages the computer's arithmetical, logical, and control activities. And every processor family has its own instruction set for handling various operations such as displaying information on screen and performing various other operations.

Machine code, consisting of machine language instructions, is used to directly control a computer's central processing unit (CPU). It's the binary executed by the computer.

An assembly language(asm) is a low level programming language for a computer but still requires compilation. It describes the succession of commands the processor will execute. One line means one instruction.
Assembly has the advantage to be more readable by humans.

### The tools

These are some assemblers that translate assembly language source code into binary programs:
- MASM (Micorosft Assembler).
- NASM (Netwide Assembler).
- FASM (Flat Assembler).

To compile assembly files, here is the useful commands :

```
#Compile assembly files
nasm -f macho64 asm_files.s -o object_files.o
ar rcs exec_name object_files
```

### A typical NASM file layout

<p align = "center">
<img src ="https://mdimg.wxwenku.com/getimg/356ed03bdc643f9448b3f6485edc229ba422382be5dc35225d189c9043ca660f40f6f899b01c9555ae15ee9292ca4f48.jpg"/>
</p>

Most programs consist of directives followed by one or more sections. In general, an assembly can be divided into three sections: 
   - section .data   : is used for declaring initialized data or constants. This dara does not change at runtime.
   - section .text   : where program code goes.
   - section .bss    : the bss section is used for declaring variables
   
### Registers
There are 3 types of memory : regiters, memory addresses(RAM) and constants.

Registers are very fast , they store data elements for processing without having to access the memory. A limited number of registers are built into the processor chip.

<p align="center">
<img src = "https://blog.oursin.eu/images/asm_registers.png"/>
</p>

### Instructions
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
### System calls & calling conventions

In general, a **system call** is the fundamental interface between an application and the Linux kernel. When a Unix/Linux program does a file I/O, network data transfer or invokes some process which directly or indirectly interact with the low level instructions, then system call is involved. Making these calls usually involves using a library called glibc which contains the functions.

A systems programmer writes program that will not directly make the systems call, rather than he will just specify which system call to use. This involves using a calling convention which is dependent or the hardware architecture of the system where the kernel sits. Hence different architectures have different calling conventions.

A **calling convention** is an implementation-level design for how subroutines receive parameters from their caller and how the results are returned. Differences in various implementations include where parameters, return values, return addresses and scope links are placed (registers, stack or memory etc.), and how the tasks of preparing for a function call and restoring the environment afterward are divided between the caller and the callee.

Each **system call** has a fixed number. We need to take the following steps to use a system call in our programs:
- Put the system call number in the RAX register.
- Store the arguments to the system call in the registers RBX, RCX, etc.
- Call the relevant interrupt.
- The result is usually returned in the RAX registre.

### System call error handling

System calls that fail to complete successfully almost always return a value of -1 in the program. In addition to the -1 returned to the program, the unsuccessful system call places an integer in an externally declared variable, errno. In a C program, you can determine the value in errno if your program contains the following statement:
```
#include <errno.h>
```
