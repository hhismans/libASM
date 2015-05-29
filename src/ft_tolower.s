section .text

	global _ft_tolower
	
	_ft_tolower:
		cmp rdi, 'A'
		jl retFalse
		cmp rdi, 'Z'
		jg retFalse

		jmp toUpper
	
	toUpper:
		sub rdi, 'A'
		add rdi, 'a'
		mov rax, rdi
		ret
	
	retFalse:
		ret
	
