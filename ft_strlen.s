global _ft_strlen

_ft_strlen:
	mov rax, 0			  ;charater to find
	mov rcx, -1			  ;counter
	repne scasb			  ;scan as long as not equal to rax
	neg rcx				  ;
	lea rax, [rcx - 2]    ;
	ret
