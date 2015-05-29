section .text

	global _ft_puts
	extern _ft_strlen

	_ft_puts:
		push rax
		call _ft_strlen
		mov rsi, rdi
		mov rdi, 1
		mov rax, 0x2000004
		syscall
		pop rax
