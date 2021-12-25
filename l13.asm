%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    MOV EBP, ESP
    XOR ECX, ECX   
    LEA EBX, [a]
    MOV EDI, 3
    MOV ESI, 0
Next:
    CMP EDI, ESI
    je End
    MOV AL, [EBX+ESI]
    CMP AL, 0
    JG Count
    INC ESI
    JMP Next
Count:
    ADD CL,AL
    INC ESi
    JMP Next
End:
    PRINT_DEC 4, ECX
    RET
    
    ret
section .data
a: DB 8,14,22; -11,-13,-6    