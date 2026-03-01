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

    ; write "+"
    mov eax,4
    mov ebx,1
    mov ecx,msg1        ; "+ | Assembly"
    mov edx,1
    int 0x80

    ; write 19 dashes (skip "hello there",10,10 and "******")
    mov eax,4
    mov ebx,1
    mov ecx,message+14  ; skip "hello there" (11) + 2 LF + 6 stars
    mov edx,19
    int 0x80

    ; write "+"
    mov eax,4
    mov ebx,1
    mov ecx,msg1
    mov edx,1
    int 0x80

    ; newline
    mov eax,4
    mov ebx,1
    mov ecx,msg4        ; newline byte
    mov edx,1
    int 0x80

    ; write "|"
    mov eax,4
    mov ebx,1
    mov ecx,msg4+10     ; "|" is after newline + " Language"
    mov edx,1
    int 0x80

    ; write " Assembly"
    mov eax,4
    mov ebx,1
    mov ecx,msg1+4      ; skip "+ | "
    mov edx,9
    int 0x80

    ; write " Language"
    mov eax,4
    mov ebx,1
    mov ecx,msg4+1      ; skip newline
    mov edx,9
    int 0x80

    ; write space before closing |
    mov eax,4
    mov ebx,1
    mov ecx,msg1+1      ; space from "+ | "
    mov edx,1
    int 0x80

    ; write "|"
    mov eax,4
    mov ebx,1
    mov ecx,msg4+10
    mov edx,1
    int 0x80

    ; newline
    mov eax,4
    mov ebx,1
    mov ecx,msg4
    mov edx,1
    int 0x80

    ; bottom line: "+-------------------+"
    mov eax,4
    mov ebx,1
    mov ecx,msg1
    mov edx,1
    int 0x80

    mov eax,4
    mov ebx,1
    mov ecx,message+14
    mov edx,19
    int 0x80

    mov eax,4
    mov ebx,1
    mov ecx,msg1
    mov edx,1
    int 0x80

    mov eax,4
    mov ebx,1
    mov ecx,msg4
    mov edx,1
    int 0x80

;;; ---- DO NOT EDIT BELOW THIS LINE
;;;  exit()
    mov    eax,1
    mov    ebx,0
    int    0x80      ; final system call