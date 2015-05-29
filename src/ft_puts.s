section .text

	global _ft_puts
	extern _ft_strlen

	_ft_puts:
		push rax
		call _strlen
		mov rdi, 1
		mov, rsi, rcx
		mov rax,
		mov r8, 0
		jmp while

	while:
		cmp byte [rdi], 0
		je affich
		while

	incr8:
		inc r8
		while

	affich:
		
