		format elf64

		section '.text'
		public custom_strlen

custom_strlen: 	XOR 	rcx, rcx
count_str:      CMP     byte [rdi], 0
                JE      retornar
                INC     rdi
                LOOP    count_str


retornar:       NEG     rcx
                MOV     rax, rcx
                RET