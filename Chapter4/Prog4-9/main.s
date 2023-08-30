; This program fills a block of memory with afixed value and then transfers,
; copies the block to new area of memory.
	EXPORT __main
	AREA MY_PROG4_9_CODE, CODE, READONLY

RAM1_ADDR	EQU 0x20000000
RAM2_ADDR	EQU 0x20000100

__main PROC
	BL		FILL
	BL		COPY
HERE
	B		HERE
	ENDP

;----------- BLOCK FILL SUBROUTINE
FILL PROC
	LDR		R1, =RAM1_ADDR
	MOV		R0, #10;
	LDR		R2, =0x55555555
L1
	STR		R2, [R1]
	ADD		R1, R1, #4
	SUBS	R0, R0, #1
	BNE		L1
	BX		LR
	ENDP

;----------- BLOCK COPY SUBROUTINE
COPY PROC
	LDR		R1, =RAM1_ADDR
	LDR		R2, =RAM2_ADDR
	MOV		R0, #10;
L2
	LDR		R3, [R1]
	STR		R3, [R2]
	ADD		R1, R1, #4
	ADD		R2, R2, #4
	SUBS	R0, R0, #1
	BNE		L2
	BX		LR
	ENDP
	
	END