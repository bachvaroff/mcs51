.org	0x2000
.equ	DPS, 0x86

main:
	MOV DPS,#01h    ;Make sure were on DPTR1
	MOV DPTR,#2000h ;Load the destination address into DPTR1
	DEC DPS	   ;Now DPS=0, so weve selected the default DPTR
	MOV DPTR,#1000h ;Load the source address into DPTR
	MOV R0,#64	;Set our character counter
LOOP:
	MOVX A,@DPTR    ;Read the source byte 2 cycles
	INC DPTR	  ;Increment the source pointer 3 cycles
	INC DPS	   ;Now DPS=1 so were using DPTR1 2 cycles
	MOVX @DPTR,A    ;Write the value to the destination 2 cycles
	INC DPTR	  ;Increment the destination pointer 3 cycles
	DEC DPS	   ;Now DPS=0 so were using DPTR 2 cycles
	DJNZ R0,LOOP    ;Copy until R0=0 3 cycles	

	ljmp	0x0000
	
