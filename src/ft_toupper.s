section .text

	global _ft_toupper
	
	_ft_toupper:
		cmp rdi, 'a'
		jl retFalse
		cmp rdi, 'z'
		jg retFalse

		jmp toUpper
	toUpper:
		sub rdi, 'a'
		add rdi, 'A'
		mov rax, rdi
		ret
	
	retFalse:
		mov rax, rdi
		ret
	
