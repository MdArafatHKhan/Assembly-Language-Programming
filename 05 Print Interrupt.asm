CODE SEGMENT
    ASSUME CS:CODE, DS:CODE, ES:CODE, SS:CODE
    ORG 100H


;;;; Display a single character ;;;;;;
MOV DL,61H  ; ascii code of 'a'
MOV AH,2h   ; ms-dos character output function
INT 21H     ; takes character in DL register
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  


;;;; Display more than one character ;;;;;
MOV BX,0H
MOV CX,07H
Print:
    MOV DL,Word_Data[BX]    ; ascii code of 'a'
    MOV AH,2h               ; ms-dos character output function
    INT 21H                 ; takes character in DL register    
    INC BX
    LOOP Print
Word_Data DB 7D, 1010B, 'H',45H,'L','L','O' 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

HLT

CODE ENDS
END