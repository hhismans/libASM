section .text

	global _ft_isprint
	
	_ft_isprint:
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
	
