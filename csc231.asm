;;; csc231.asm
;;; JJ Cham
;;;
;;; Prints the CSC231 bubble letters to stdout
;;;

section .data

msg:    db "____ ____   ____   ____  _____ _", 10
        db "/ ___/ ___| / ___| |___ \|___ // |", 10
        db "| | \___ \| |       __) | |_ \| |", 10
        db "| |___ ___) | |___   / __/ ___) | |", 10
        db "\____|____/ \____| |_____|____/|_|", 10
len     equ $ - msg

section .text
global _start

_start:

        ; write(1, msg, len)
        mov     eax, 4          ; sys_write
        mov     ebx, 1          ; stdout
        mov     ecx, msg        ; address
        mov     edx, len        ; length
        int     0x80

        ; exit(0)
        mov     eax, 1
        xor     ebx, ebx
        int     0x80
