# libasm
Assembling, linking and running heeloworld.asm :

nasm -f macho64 helloworld.asm

ld -e start -static helloworld.o -o hello

./hello

ld is defaulting to dynamic linking and tries to load crt1 which is looking for main. So specify static linking.


