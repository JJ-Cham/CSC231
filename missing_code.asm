;;; ; missing_code.asm
;;; ; your name(s) here
;;; ;
;;; ; a description of the program
;;; ;
;;; ; to assemble and run:
;;; ;
;;; ;     nasm-f elf missing_code.asm
;;; ;     ld-melf_i386-o missing_code missing_code.o
;;; ;     ./missing_code
;;; ;-------------------------------------------------------------------


;;; ------------------------------------------------------------
;;; data areas
;;; ------------------------------------------------------------

    section .data
plus    db "+ | "
msg1    db "Assembly"
message db "hello there", 10, 10 
        db "******--------------------------------*****"
msg2    db "CSC231a"
lf      db 10
msg3    db " Language"
msg4    db "|"
;;; -----------------------------------------------------------
;;; code area
;;; -----------------------------------------------------------

    section .text
    global _start
_start:
;;; ---- DO NOT EDIT ABOVE THIS LINE


;;; add your code here!
;;; ---- DO NOT EDIT ABOVE THIS LINE


    ; ---------------------------------------
    ; print top border: +-------------------+
    ; ---------------------------------------

    ; print "+"
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, plus        ; plus = "+ | "
    mov     edx, 1           ; only '+'
    int     0x80

    ; print 19 dashes from message+6
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, message+19   ; skip "******"
    mov     edx, 19
    int     0x80

    ; print "+"
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, plus        ; '+'
    mov     edx, 1
    int     0x80

    ; newline
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, lf
    mov     edx, 1
    int     0x80


    ; ---------------------------------------
    ; print middle line: | Assembly Language |
    ; ---------------------------------------

    ; "|"
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, msg4
    mov     edx, 1
    int     0x80

    ; space (from plus+1)
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, plus+1
    mov     edx, 1
    int     0x80

    ; "Assembly"
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, msg1
    mov     edx, 8
    int     0x80

    ; " Language"
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, msg3
    mov     edx, 9
    int     0x80

    ; space
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, plus+1
    mov     edx, 1
    int     0x80

    ; "|"
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, msg4
    mov     edx, 1
    int     0x80

    ; newline
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, lf
    mov     edx, 1
    int     0x80


    ; ---------------------------------------
    ; bottom border (same as top)
    ; ---------------------------------------

    ; "+"
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, plus
    mov     edx, 1
    int     0x80

    ; 19 dashes
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, message+19
    mov     edx, 19
    int     0x80

    ; "+"
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, plus
    mov     edx, 1
    int     0x80

    ; newline
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, lf
    mov     edx, 1
    int     0x80

;;; ---- DO NOT EDIT BELOW THIS LINE
;;;  exit()
    mov    eax,1
    mov    ebx,0
    int    0x80      ; final system call