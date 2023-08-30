; Illustrates how to dela with counter values greater than 2^32 -1.
	EXPORT __main
	AREA MY_PROG4_3_CODE, CODE, READONLY

ONE_BILLION			EQU 0x3B9ACA00
UPPER_LOOP_COUNT 	EQU	0x10

__main
	MOV		R0, #0x55				; Load the value in R0
	MOV		R1, #UPPER_LOOP_COUNT	; Upper loop initial count

UPPER_LOOP
	LDR		R2,	=ONE_BILLION		; Inner loop initial count
INNER_LOOP
	EOR		R0, R0, #0xFF			; R0 is filled with the complemented
									; previous value
	SUBS	R2, R2, #1				; Decrement the inner loop counter
	BNE		INNER_LOOP
	SUBS	R1, R1, #1				; Decrement the outer loop.
	BNE		UPPER_LOOP

HERE
	B		HERE
	END