section .text

	global _ft_tolower
	
	_ft_tolower:
		cmp rdi, 65;'A'
		jl retFalse
		cmp rdi, 90;'Z'
		jg retFalse

		jmp toUpper
	
	toUpper:
		sub rdi, 65;'A'
		add rdi, 97;'a'
		mov rax, rdi
		ret
	
	retFalse:
		mov rax, rdi
		ret
	
