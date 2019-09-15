		public custom_strcpy

custom_strcpy:  mov     rax, rdi
put_chr:        cmp     byte [rsi], 0
                je      cpy_retornar
		mov     r9l, [rsi]
		mov	byte [rdi], r9l
		inc	rdi
		inc	rsi
                jmp     put_chr

cpy_retornar:	ret