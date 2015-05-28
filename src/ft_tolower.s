section .text

	global _ft_tolower
	
	_ft_tolower:
		cmp rdi, 'A'
		jl retFalse
		cmp rdi, 'Z'
		jg retFalse

		jmp toUpper
	
	toUpper:
		mov rax, rdi - 'A' + 'a'
		ret
	
	retFalse:
		ret
	
