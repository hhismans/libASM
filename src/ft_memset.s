section .text

	global _ft_memset

		_ft_memset:
			push rdi
			mov rcx, rdx
			mov rax, rsi
			rep stosb
			pop rax
			ret

;section .text
;
;	global _ft_memset
;
;	_ft_memset:
;		push rdi
;		jmp while
;	
;	while:
;		cmp rdx, 0
;		je end
;		dec rdx
;		mov [rdi], byte rsi
;		inc rdi
;		jmp while
;
;	end:
;		pop rax
;		ret
