section .text
	global _ft_strcat

_ft_strcat:
	mov			rax, rdi

firstwhile:
	cmp	byte	[rdi], 0
	je			append
	inc			rdi
	jmp			firstwhile

append:
	mov			rcx, [rsi]
	mov			[rdi], rcx;
	cmp byte	[rsi], 0
	je			end
	inc			rsi
	inc			rdi
	jmp			append

end:
	ret
