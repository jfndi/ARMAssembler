; Illustrates the use of BCC (Branch if Carry is Cleared).
	EXPORT __main
	AREA MY_PROG4_4_CODE, CODE, READONLY

__main
	MOV		R1, #0				; Clear high word
	MOV		R0, #0				; Clear low word
	LDR		R2, =0x99999999
	ADDS	R0, R0, R2
	BCC		L1					; If C = 0 branch to L1
	ADDS	R1, R1, #1			; Else increment high word
L1
	ADDS	R0, R0, R2
	BCC		L2					; If C = 0 branch to L2
	ADDS	R1, R1, #1			; Else increment high word
L2
	ADDS	R0, R2
	BCC		L3					; If C = 0 branch to L3
	ADDS	R1, R1, #1			; Else increment high word
L3
	ADDS	R0, R2
	BCC		L4					; If C = 0 branch to L4
	ADDS	R1, R1, #1			; Else increment high word
L4
	B 		L4
	END
