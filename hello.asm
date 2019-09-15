                format elf64
                public hello_world

msg             db      'Hello World', 0AH
len             equ     $-msg
 
section '.text'
hello_world:    mov     edx, len
                mov     ecx, msg
                mov     ebx, 1
                mov     eax, 4
                int     80h
 
                mov     ebx, 0
                mov     eax, 1
                int     80h