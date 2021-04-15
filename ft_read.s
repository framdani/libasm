global	_ft_read
extern	___error

_ft_read:
	mov rax, 0x02000003
	syscall
	jc set_errno
	jmp end
set_errno:
	push rax
	call ___error
	pop rcx
	mov [rax], rcx
	mov rax, -1
end:
	ret
