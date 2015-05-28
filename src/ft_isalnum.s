section .text

	global _ft_isalnum
	
	_ft_isalnum:
		cmp rdi, '0'
		jl retFalse
		cmp rdi, '9'
		jle retTrue

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
	
