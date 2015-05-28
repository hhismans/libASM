section .text

	global _ft_isalpha
	
	_ft_isalpha:
		cmp rdi, 'A'
		jl retFalse
		cmp rdi, 'Z'
		jle retTrue

		cmp rdi, 'a'
		jl retFalse
		cmp rdi, 'z'
		jle retTrue

		jmp retFalse
	
	retTrue:
		mov rax, 1
		ret
	
	retFalse:
		mov rax, 0
		ret
	
