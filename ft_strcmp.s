global _ft_strcmp

_ft_strcmp:
	xor bl, bl
	xor al, al
	xor rax, rax
repeat:
	mov al, [rsi]
	mov bl, [rdi]
	cmp al, bl
	ja inf
	jb sup
	cmp bl, 0
	je end
	inc rsi
	inc rdi
	jmp repeat
sup:
	mov eax, 1
	jmp end
inf:
	mov eax, -1
end:
	ret
