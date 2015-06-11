section .data
	var:
		.string db "(null)",10

section .text

	global _ft_puts
	extern _ft_strlen

	_ft_puts:
		cmp rdi, 0
		je _null
		push rdi
		call _ft_strlen
		pop rsi
		mov rdi, 1
		mov rdx, rax
		mov rax, 0x2000004
		syscall

		mov rdi, 1
		push 10
		lea rsi, [rsp]
		mov rdx, 1
		mov rax, 0x2000004
		syscall
		pop rsi
		jmp _end
	_null:
		lea	rsi, [rel var.string]
		mov rdi, 1
		mov rax, 0x2000004
		mov rdx, 7
		syscall
		mov rax, 1
		jmp _end

	_end:
		ret
