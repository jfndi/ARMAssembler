; Illustrates the use of BNE instruction to implement a loop.
; This program has the obvious drawback of not taking into account the case
; where the initial count is zero (Yes, I know the current value is hard coded.
	EXPORT __main
	AREA MY_PROG4_1_CODE, CODE, READONLY

__main
	MOV		R0, #0		; Clear R0 register
	LDR		R1, =1000	; R1 will be the counter.
	
AGAIN
	ADD		R0, R0, #9	; Increment R0 by 9
	SUBS	R1, R1, #1	; Decrement counter by one
	BNE		AGAIN		; Loop if counter is not zero
	MOV		R4, R0		; Move the result into R4
	
HERE
	B		HERE
	END
