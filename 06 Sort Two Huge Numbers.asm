;Build a program that sorts 2 numbers (ascending) 
;Each of which is not less than 128 bits.

CODE SEGMENT
    ASSUME CS:CODE, DS:CODE, SS:CODE, ES:CODE
    
    ORG 100H        
        
    MOV BX,0H
    
    START:
    MOV AX, DATA1[BX]
    MOV DX, DATA2[BX]
    
    CMP AX,DX
    JGE SWAPDATA
    JNGE GETOUT

    SWAPDATA:
    CMP AX,DX
    JNG PROCEED
    MOV CX,010H
    SUB CX,BX
    SHR CX,01H 
      SWAPLOOP:
      MOV DATA1[BX],DX
      MOV DATA2[BX],AX
      ADD BX,02H
      MOV AX,DATA1[BX]
      MOV DX,DATA2[BX]
      LOOP SWAPLOOP
    JMP GETOUT
    
    PROCEED:
    ADD BX,02H
    JMP START

    GETOUT:
    HLT   

    DATA1 DW 102AH,1C32H,0A561H,5A0BH,0E31H,0BB5H,1C02H,2308H
    DATA2 DW 102AH,1C32H,0B561H,5A0BH,0E21H,0AA5H,2B02H,0A108H     
    
    CODE ENDS
END