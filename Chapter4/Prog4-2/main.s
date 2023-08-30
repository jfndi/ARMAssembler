; This program place value 0x55 into 100 consecutive bytes of RAM locations
	
	EXPORT	__main
	AREA MY_PROG4_2_CODE, CODE, READONLY
		
RAM_ADDR EQU 0x20000000
	
__main
	MOV		R0, #0x55 			; Value to be stored in RAM
	MOV		R1, #0x64			; Number of bytes to be updated in RAM
	LDR		R2, =RAM_ADDR		; Load the strating address
	
AGAIN
	STRB	R0, [R2]			; Store one byte
	ADD		R2, R2, #1			; Increment the address by 1
	SUBS	R1, R1, #1			; Decrement the counter by one
	BNE		AGAIN				; Loop until the counter is zero
	
HERE
	B		HERE
	END