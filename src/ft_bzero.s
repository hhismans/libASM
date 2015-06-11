section .text

	global _ft_bzero
	extern _ft_memset

	_ft_bzero:
		mov rdx, rsi
		mov rsi, 0
		call _ft_memset
		ret
;

;	_ft_bzero:
;		cmp rsi, 0
;		je end
;		dec rsi
;		mov byte [rdi], 0
;		inc rdi
;	
;	end:
;		ret
;		
