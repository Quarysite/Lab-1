%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax  
    mov ax, -11
    mov bx, -6
    mov cx, -13
    mul bx
    sub ax, cx
    xor dx,dx
    idiv bx
    
    
    ret


;a: DW 0x0008
;b: DW 0x000C
;c: DW 0x0016
;    mov ax, 8
;    mov bx, 22
;    mov dx, 0
;    mul bx
;    mov bx, 14
;    sub ax, bx
;    mov bx, 22
;    div bx
    