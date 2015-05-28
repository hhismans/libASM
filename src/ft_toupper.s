section .text

	global _ft_toupper
	
	_ft_toupper:
		cmp rdi, 'a'
		jl retFalse
		cmp rdi, 'z'
		jg retFalse

		jmp toUpper
	
	toUpper:
		mov rax, rdi - 'a' + 'A'
		ret
	
	retFalse:
		ret
	
