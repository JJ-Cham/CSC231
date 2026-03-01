;;; ; missing_code.asm
;;; ; JJ Cham
;;; ;
;;; ; a description of the program
;;; ;
;;; ; to assemble and run:
;;; ;
;;; ;   nasm-f elf missing_code.asm
;;; ;   ld-melf_i386-o missing_code missing_code.o
;;; ;   ./missing_code
;;; ;-------------------------------------------------------------------


;;;------------------------------------------------------------
;;; data areas
;;;------------------------------------------------------------

    section .data
plus    db "+ | "
msg1    db "Assembly"
message db "hello there", 10, 10 
        db "******--------------------------------*****"
msg2    db "CSC231a"
lf      db 10
msg3    db " Language"
msg4    db "|"
;;;-----------------------------------------------------------
;;; code area
;;;-----------------------------------------------------------

    section.text
    global _start
_start:
;;;---- DO NOT EDIT ABOVE THIS LINE


;;; add your code here!


;;;---- DO NOT EDIT BELOW THIS LINE
;;; exit()
    mov     eax,1
    mov     ebx,0
    int     0x80        ; final system call