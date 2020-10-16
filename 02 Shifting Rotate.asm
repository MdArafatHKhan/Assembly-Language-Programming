CODE SEGMENT
	ASSUME CS:CODE, DS:CODE, ES:CODE, SS:CODE

    MOV CL,03H
    MOV AX,02F3H ; In binary 0000 0010 1111 0011
    SHR AX,CL    ; In binary 0000 0000 0101 1110
    SHL AX,CL    ; In binary 0000 0010 1111 0000
    ; what will happen if CH is used???
    ; why dont you get the AX back after SHL???
    ; use extended value viewer
    
    MOV CL,02H 
    MOV AX,72F8H ; In binary 1000 0010 1111 0011
    SAR AX,CL    ; In binary 1111 0000 0101 1110
    SAL AX,CL    ; In binary 1000 0010 1111 0000 
    
    MOV AX,82F3H ; In binary 1000 0010 1111 0011
    SAL AX,06h    ; In binary 0001 0111 1001 1000
    SAR AX,05h    ; In binary 0000 0010 1111 0011 
    
    MOV CL,03H
    MOV AX,82F3H ; In binary 1000 0010 1111 0011
    ROR AX,CL    ; In binary 0111 0000 0101 1110
    ROL AX,CL    ; In binary 1000 0010 1111 0011
    ; observe carry flag 
    
    MOV CL,03H
    MOV AX,82F3H ; In binary 1000 0010 1111 0011
    ROR AX,CL    ; In binary 0111 0000 0101 1110
    ROL AX,CL    ; In binary 1000 0010 1111 0011
        
    HLT
    
CODE ENDS

END