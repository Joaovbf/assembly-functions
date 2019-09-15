public custom_strlen

custom_strlen: 	XOR 	rcx, rcx
count_str:      CMP     byte [rdi], 0
                JE      len_retornar
                INC     rdi
                LOOP    count_str


len_retornar:   NEG     rcx
                MOV     rax, rcx
                RET