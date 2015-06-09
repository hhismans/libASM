section .text

	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_memcpy

	_ft_strdup:
		push rbp
		mov rbp, rsp

		push rdi		;push of source

		call _ft_strlen
		inc rax
		push rax		;push of len
		mov rdi, rax
		call _malloc
		mov rdi, rax
		pop rdx			;pop of len
		pop rsi			;pop of source
		call _ft_memcpy

	leave
		ret
