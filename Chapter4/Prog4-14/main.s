; This program shows how to safely store the LR register between two function
; calls as well as the way it is restored.
	EXPORT __main
	AREA MY_PROG4_14_CODE, CODE, READONLY

__main PROC
	BL		FUNC1
HERE
	B		HERE
	ENDP

;--------- subroutine FUNC1
FUNC1 PROC
	PUSH	{LR}
	BL		FUNC2
	POP		{LR}
	BX		LR
	ENDP

;---------- subroutine FUNC2
FUNC2 PROC
	NOP
	NOP
	BX		LR
	ENDP
	
	END