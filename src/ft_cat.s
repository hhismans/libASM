%define MACH_SYSCALL(nb)	0x2000000 | nb
%define READ				3
%define WRITE				4

section .data
var:
	.buffer	times 255 db 0
	.len equ 255

section .text
	global _ft_cat
	extern _ft_bzero

_ft_cat:
	jmp		_while

_while:
	push		rdi
	lea			rdi, [rel var.buffer]
	mov			rsi, var.len
	call		_ft_bzero
	pop			rdi
	push		rdi
	lea			rsi, [rel var.buffer]
	mov			rdx, var.len
	mov			rax, MACH_SYSCALL(READ)
	syscall
	jc			_error
	cmp 		rax, 0
	jle			_end
	mov			rdi, 1
	lea			rsi, [rel var.buffer]
	mov			rdx, rax
	mov			rax, MACH_SYSCALL(WRITE)
	syscall
	pop			rdi
	jmp			_while

_error:
	mov			rax, 1
	add			rsp, 8
	ret

_end:
	mov			rax, 0
	add			rsp, 8
	ret
