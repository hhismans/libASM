section .text

	global _ft_strlen

	_ft_strlen:
		push rdi
		jmp while

	while:
		cmp byte [rdi], 0
		je end
		inc rdi
		jmp while

	end:
		pop r8
		sub rdi, r8
		mov rax, rdi
		ret
