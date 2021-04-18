global _ft_strcmp

_ft_strcmp:
	xor bl, bl
	xor al, al
	xor rax, rax
repeat:
	mov al, [rsi]		;2nd argument
	mov bl, [rdi]		;1st argument
	cmp al, bl
	ja inf              ;jmp above x>y
	jb sup				;jmp below x<y
	cmp bl, 0
	je end
	inc rdi
	inc rsi
	jmp repeat
sup:
	mov rax, 1
	jmp end
inf:
	mov rax, -1
end:
	ret
