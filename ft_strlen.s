global _ft_strlen

_ft_strlen:
	xor rax, rax			;charater to find 0
	mov rcx, -1				;max number of character
	repne scasb				;scan as long as not equal to rax
	neg rcx					;make it positif
	sub rcx, 2				;-1 for 0 and -1 for the complement of two
	mov rax, rcx			
	ret
