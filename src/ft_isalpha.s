section .text

	global _isalpha
	
	_ft_isalpha:
		cmp rdi, 'A'
		jl retFalse
		cmp rdi, 'Z'
		jle retTrue

		cmp rdi, 'a'
		jl retFalse
		cmp rdi, 'z'
		jle retTrue

		retFalse
	
	retTrue:
		mov rax, 1
		ret
	
	retFalse:
		mov rax, 0
		ret
	
