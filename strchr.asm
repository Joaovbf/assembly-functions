		format elf64

		section '.text'
		public custom_strchr
		include 'strlen.inc'

custom_strchr:	call 	custom_strlen
		mov	rcx, rax
		xor 	rax, rax
		jrcxz	chr_ret_falha

search_chr:	cmp	byte [rdi], sil
		je	chr_ret_sucesso
		inc	rdi
		loop	search_chr
		ret

chr_ret_sucesso:mov	rax, rdi		
chr_ret_falha:	ret