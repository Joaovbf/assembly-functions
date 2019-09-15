		format elf64

		section '.text'
		public custom_strcat
		include 'strcpy.inc'

custom_strcat:	mov	rax, rdi
		jmp	goto_eol

strcat:		call	custom_strcpy
		ret

goto_eol:	cmp	byte [rdi], 0
		je	strcat
		inc	rdi
		jmp	goto_eol