section .text

	global _ft_bzero

	_ft_bzero:
		cmp rsi, 0
		je end
		dec rsi
		mov byte [rdi], 0
		inc rdi
	
	end:
		ret
		
