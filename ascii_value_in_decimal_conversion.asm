INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H     
.DATA
MSG DW 'ENTER HEX DIGITS :$'
MSG1 DW 0AH,0DH,'IN DECIMAL IT IS :1$'
A DB '?'
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX  

LEA DX,MSG
MOV AH,9
INT 21H

MOV AH,1    
INT 21H
MOV A,AL 
PRINTN

SUB A,11H;17
MOV AH,9
LEA DX,MSG1            
INT 21H  

MOV AH,2
MOV DL,A
INT 21H

MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN

            

