section .text

	global _ft_isdigit
	
	_ft_isdigit:
		cmp rdi, ' '
		jl retFalse
		cmp rdi, '~'
		jle retTrue

		jmp retFalse
	
	retTrue:
		mov rax, 1
		ret
	
	retFalse:
		mov rax, 0
		ret
	
