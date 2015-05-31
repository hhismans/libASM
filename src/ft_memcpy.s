section .text

	global _ft_memcpy

	_ft_memcpy:
		push rdi
		jmp while
	
	while:
		cmp rdx, 0
		je end
		dec rdx
		mov r8, byte [rsi]
		mov [rdi], byte r8
		inc rsi
		inc rdi
		jmp while

	end:
		pop rax
		ret
