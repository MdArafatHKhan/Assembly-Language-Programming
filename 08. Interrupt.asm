; Types 0 to 4 are for the predefined interrupts.
; Types 5 to 31 are reserved by intel for future use.
; Types 32 to 255 are acailiable for maskable interrupts.

CODE SEGMENT
	ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE

    V_T EQU	32H*4

	ORG	1000H
	
	MOV	AX,0H
	MOV	DS,AX
	MOV	BX,V_T 
	
	MOV	AX,OFFSET INT_32
	MOV	WORD PTR [BX],AX
	MOV	WORD PTR [BX+2],DS
	ADD	BX,04H 
	
	MOV	AX,OFFSET INT_33
	MOV	WORD PTR [BX],AX
	MOV	WORD PTR [BX+2],DS
	ADD	BX,04H
		
	MOV	AX,OFFSET INT_34
	MOV	WORD PTR [BX],AX
	MOV	WORD PTR [BX+2],DS
	ADD	BX,04H

	MOV	AX,1234H
	MOV	BX,6789H
	INT	32H
	INT	33H
	INT	34H
	INT	32H
	INT	34H

	INT	03H

INT_32: ADD	AX,BX
	IRET
		
INT_33: ADD	AX,BX
	IRET
		
INT_34: ADD	AX,BX
	IRET  
	; 
	; 
	; and so on
		
CODE ENDS
END