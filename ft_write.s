global _ft_write
extern	___error

_ft_write:
	mov rax, 0x02000004		;syscall for write
	syscall
	jc set_errno			;if an error occured the CF is set to 1
	jmp end
set_errno:
	push rax
	call ___error
	pop rcx
	mov [rax], rcx
	mov rax, -1
end:
	ret

