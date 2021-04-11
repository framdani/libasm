## Machine code vs Assembly

In computer programming, each computer has a microprocessor that manages the computer's arithmetical, logical, and control activities. And every processor family has its own instruction set for handling various operations such as displaying information on screen and performing various other operations.

Machine code, consisting of machine language instructions, is used to directly control a computer's central processing unit (CPU). It's the binary executed by the computer.

An assembly language(asm) is a low level programming language for a computer but still requires compilation. It describes the succession of commands the processor will execute. One line means one instruction.
Assembly has the advantage to be more readable by humans.

### The tools

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

#### A typical NASM file layout
   ![alt text]img src="https://drive.google.com/file/d/13DfQ7oNmAi4C1wF7a8KM_O2nnUjFwnbf/view?usp=sharing">
   #### Registres
#### Instructions
#### The calling conventions
