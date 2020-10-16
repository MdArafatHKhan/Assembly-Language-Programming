code segment
    assume cs:code, ds:code 
; To read a secret message

ORG 100H
LEA BX,ENCRYPT ; LEA stands for Load Effective Address.
LEA SI,ORIGINAL
LEA DI,ENCODED
; To convert a message into encrypted version
NCRPT:
MOV AL,[SI]
CMP AL,'$'
JE END1
XLAT
MOV [DI],AL
INC DI
INC SI
JMP NCRPT
END1:
MOV [DI],AL
;To decrypt the encrypted message
LEA BX,DECRYPT
LEA SI,ENCODED
LEA DI,DECODED
DCRPT:
MOV AL,[SI]
CMP AL,'$'
JE END2
XLAT
MOV [DI],AL
INC DI
INC SI
JMP DCRPT
END2:
MOV [DI],AL
;End of decryption
HLT
              ; ALPHABET 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
ENCRYPT DB 65 DUP (' '), 'XQPOGHZBCADEIJUVFMNKLRSTWY'
        DB 37 DUP (' ') 
;why first 65 and last 37 blank spaces?
              
              ; ALPHABET 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
DECRYPT DB 65 DUP (' '), 'JHIKLQEFMNTURSDCBVWXOPYAZG'
        DB 37 DUP (' ')  
              
ORIGINAL DB 'GATHER YOUR FORCES AND ATTACK' , 30 DUP ('$')

ENCODED DB 80 DUP ('$')

DECODED DB 80 DUP ('$')
;
    code ends
end