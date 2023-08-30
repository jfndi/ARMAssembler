; This program toggle all the bits of address 0x40000000 by sending to it the
; values 0x55 and 0xAA continously. We put a time delay between each issuing 
; of data.
	EXPORT __main
	AREA MY_PROG4_8_CODE, CODE, READONLY

RAM_ADDR EQU 0x20000000
	
__main
	LDR		R1, =RAM_ADDR
AGAIN
	MOV		R0, #0x55
	STRB	R0, [R1]
	BL		DELAY
	MOV		R0, #0xAA
	STRB	R0, [R1]
	BL		DELAY
	B		AGAIN

;---------- DELAY SUBROUTINE
DELAY
	LDR		R3, =100000
L1
	SUBS	R3, R3, #1
	BNE		L1
	BX		LR
;---------- end of DELAY SUBROUTINE
	END
