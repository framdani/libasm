global _ft_strcpy

_ft_strcpy:
	mov rcx, 1
repeat:
	lodsb		;loads a byte from rsi into al
	stosb		;stores a byte from al into rdi
	cmp al, 0
	je end
	inc rcx
	jmp repeat
end:
	sub rdi, rcx ;so that rdi points at the beg
	mov rax, rdi
	ret
	
