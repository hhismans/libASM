section .text

	global _ft_strcat

	_ft_strcat:
		push rdi
		jmp part1
	part1:
		cmp byte [rdi], 0
		je cat
		inc rdi
		jmp part1

	cat:
		cmp byte [rsi], 0
		je add
		jmp end
	add:
		mov r8, [rsi]
		mov [rdi], r8
		inc rdi
		inc rsi
		jmp cat

	end:
		mov [rdi], byte 0
		pop rax
		ret
