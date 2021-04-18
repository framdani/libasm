global _ft_strdup
extern _ft_strlen
extern _malloc
extern _ft_strcpy

_ft_strdup:
	push rdi				;conserve the 1st argument
	call _ft_strlen			;len of rdi in rax
	inc rax					;add 1 for \0
	mov rdi, rax			;len became the argument of malloc
	call _malloc
	cmp rax, 0
	je crash
	pop rsi					;rdi in rsi now
	mov rdi, rax			;the result of malloc is the dest in strcpy
	call _ft_strcpy			; the result in rax
	ret
crash:
	pop rdi
	ret

	
