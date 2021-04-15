;errno is a global variable located somewhere in the memory of the program
;the system kernel system call set/clear the cf according to wheter an error occurred

global _ft_write
extern	___error

_ft_write:
	mov rax, 0x02000004		;syscall for write
	syscall
	jc set_errno			;if an error occured the CF is set to 1
	jmp end					;if not jmp to end
set_errno:
	push rax				;rax contains the error code
	call ___error
	pop rcx					;rcx = rax
	mov [rax], rcx			;rax point at the adress of errno
	mov rax, -1
end:
	ret

