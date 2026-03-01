;;; csc231.asm
;;; JJ Cham
;;;
;;; Prints the CSC231 bubble letters to stdout
;;;
;;; to assemble and run:
;;;
;;;     nasm-f elf csc231.asm
;;;     ld-melf_i386-o csc231 csc231.o
;;;     ./csc231
;;; -------------------------------------------------------------------

;%include files here...



        ;; ------------------------------------------------------------
        ;; data areas
        ;; ------------------------------------------------------------

        section .data

msg:    db  '____ ____   ____   ____  _____ _', 10
        db  '/ ___/ ___| / ___| |___ \\|___// |', 10
        db  '| |   \\___ \\| |       __) | |_ \\| |', 10
        db  '| |___ ___) | |___   / __/___)  | |', 10
        db  '\\____|____/ \\____| |_____|____/|_|', 10
len:    equ $ - msg

        ;; ------------------------------------------------------------
        ;; code area
        ;; ------------------------------------------------------------

        section .text
        global  _start

_start:


        ;; (add your code here!!!!)
        ; write(1, msg, len)
        mov     rax, 1          ; sys_write
        mov     rdi, 1          ; fd = stdout
        mov     rsi, msg        ; buffer
        mov     rdx, len        ; length
        syscall

        ; exit(0)
        mov     rax, 60         ; sys_exit
        xor     rdi, rdi        ; status = 0
        syscall
