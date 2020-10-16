CODE SEGMENT
	ASSUME CS:CODE, DS:CODE, ES:CODE, SS:CODE
    ORG 100H

    MOV AX,108D
    MOV BX,72D
    
Label:    
    MOV     DX,0H
    DIV     BX
    MOV     AX,BX
    MOV     BX,DX
    CMP     BX,0H
    JNE     Label
        
    HLT     
    
CODE ENDS
END