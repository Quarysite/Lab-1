%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    
    FLD DWORD [a]
    FLD DWORD [b]
    FLD DWORD [c]
    FDIV
    FSUB
    
    FST DWORD [r]
    
    ret
    
section .data

    a: DD 0xC1300000 ; 0x41000000 
    b: DD 0xC1500000 ; 0x41600000 
    c: DD 0xC0C00000 ; 0x41B00000 
    r: DD 0x00000000 