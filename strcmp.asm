		format elf64

		section '.text'
		public custom_strcmp
		
custom_strcmp:	mov	r9l, [rsi]
		cmp	byte [rdi], r9l
		jne	cmp_rtn_false
		cmp	byte [rdi], 0
		je	cmp_rtn_true
		inc	rdi
		inc	rsi
		jmp	custom_strcmp	


cmp_rtn_false:	mov 	rax, 0
		ret

cmp_rtn_true:	mov	rax, 1
		ret