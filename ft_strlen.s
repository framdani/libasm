global _ft_strlen

_ft_strlen:
	xor rax, rax			;charater to find 0;this instructin recognized on all CPUs
	mov rcx, -1				;max number of character
	cld						;pointer auto increment directly
	repne scasb				;scan as long as not equal to rax
	neg rcx					;make it positif
	lea rax, [rcx-2]		;-1 for 0 and -1 for the complement of two
	ret
