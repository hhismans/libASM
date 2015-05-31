section .text

	global _ft_strdup
	extern _malloc
	extern _ft_strlen

	_ft_strdup:
		call _ft_strlen
		push rdi
		mov rdi, rax
		inc rdi
		call _malloc
		mov r8, rax
		pop rdi
		jmp while

		while:
			cmp rsi, 0
			je end
			mov [rsi], byte rdi
			mov [rdi], byte rsi
			inc rsi
			inc rdi
			while

		end:
			inc rdi
			mov rax, r8
			ret
