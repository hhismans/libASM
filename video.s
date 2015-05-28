section .data
hello:
	.string db "Hello World", 10
	.len equ $ - hello.string ; adresse- adresse2;O
section .text
	global start
	global _main
	extern _printf

start:
	call _main
	ret
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	lea rdi, [rel hello.string]
	call _printf
	leave
	ret
