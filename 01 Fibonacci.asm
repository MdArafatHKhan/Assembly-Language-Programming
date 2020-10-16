CODE SEGMENT
    ASSUME CS: CODE, DS: CODE, SS: CODE, ES: CODE
    ORG 100H

    COUNT DB 2 DUP(1)
    
    MOV AL, COUNT[0]
    MOV BX, 1h
    
    COUNTMORE:
        ADD AL, COUNT[BX-1]
        INC BX
        MOV COUNT[BX], AL
        CMP AL, COUNT[BX-1]
        JLE GETOUT
        JG COUNTMORE
    
    GETOUT:
        HLT

CODE ENDS
END