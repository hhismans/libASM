section .text

	global _ft_isascii
	
	_ft_isascii:
		cmp rdi, 0
		jl retFalse
		cmp rdi, 127
		jle retTrue

		jmp retFalse
	
	retTrue:
		mov rax, 1
		ret
	
	retFalse:
		mov rax, 0
		ret
	
