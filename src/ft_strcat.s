section .text

	global _ft_strcat
	extern _ft_strlen
	extern _ft_memcpy
	_ft_strcat:

		push rdi
		jmp part1
	part1:
		call _ft_strlen
		mov r8, rax
		mov rdi, rsi
		call _ft_strlen
		mov rdx, rax
		pop rdi
		push rdi
		add rdi, r8
		call _ft_memcpy
		pop rax
		ret
