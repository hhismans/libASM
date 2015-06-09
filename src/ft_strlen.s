section .text

; Explenation:
;
; set rcx to his max value ("infinite loop")
; scasb compare RAX && [RDI] while RCX != 0
; then convert rcx to strlen


	global _ft_strlen

	_ft_strlen:
		sub	rcx, rcx                        ; or sub rcx, -1
		not	rcx
		mov		rax, 0
		jmp	_counter

	_counter:
		cld
		repnz	scasb
		not		rcx
		dec		rcx
		jmp		end

	end:
		mov		rax, rcx
		ret
