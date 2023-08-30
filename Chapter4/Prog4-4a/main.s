; Perform the same steps as in program 4-4 but do it in a loop
; and 10 times instead of 4.
	EXPORT __main
	AREA M_PROG4_4A_CODE, CODE, READONLY

__main
	MOV 	R1, #0			; HIGH word = 0
	MOV 	R0, #0			; LOW word = 0
	LDR		R2, =0x99999999	
	MOV		R3, #10			; Counter initialize to 10
LOOP
	ADDS	R0, R2
	BCC		SKIP_HIGH
	ADDS	R1, R1, #1		; Increment HIFH word
SKIP_HIGH
	SUBS	R3, R3, #1		; Decrement counter
	BNE		LOOP
HERE
	B		HERE
	END