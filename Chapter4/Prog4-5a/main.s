; Assume address location 0x40010808 is assigned to an input port address and
; connected to 8 DIP switches. The following program checks that the input port
; and whenever both pins 4 and 6 are LOW, R4 register is incremented.
PORT_ADDR	EQU 0x40010808
TEST_MASK	EQU	0x50

	EXPORT __main
	AREA MY_PROG4_5A_CODE, CODE, READONLY
__main
	MOV		R4, #0			; Initialize counter R4
	LDR		R0, =PORT_ADDR	; Load the port address in R0
CHECK
	LDRB	R1, [R0]		; Load half word in R1
	TST		R1, #TEST_MASK	; Test if bit 6 and 4 are HIGH
	BNE		CHECK			; Nope. Jump back to check.
	ADDS	R4, R4, #1		; Increment R4
HANG
	B		HANG
	END
