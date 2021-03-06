CODE SEGMENT
    ASSUME CS:CODE, DS:CODE, ES:CODE, SS:CODE
    ORG 100H

MOV AX,8D
MOV BX,12D

CMP AX, BX
JE LAST
JG SORT

MOV CX,AX

LCM:    
    ADD     AX,CX
    PUSH    AX
    MOV     DX,0H
    DIV     BX
    POP     AX
    CMP     DX,0H
    JZ      LAST
    JNZ     LCM  

SORT:
    MOV CX,AX
    MOV AX,BX
    MOV BX,CX
    MOV CX,AX
    JMP LCM
    
LAST:   HLT

CODE    ENDS
END