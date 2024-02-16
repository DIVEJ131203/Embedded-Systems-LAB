





	AREA RESET,DATA,READONLY
	EXPORT __Vectors
	
__Vectors
	DCD 0X100000FF ;STACK POINTER
	DCD Reset_Handler
	
	ALIGN
	
	AREA mycode,CODE,READONLY
	EXPORT Reset_Handler
	ENTRY
Reset_Handler
	LDR R0,=SRC
	LDR R1,=SRC+4*10-4
	MOV R2,#5
UP
	LDR R4,[R0]
	LDR R5,[R1]
	STR R4,[R1]
	STR R5,[R0]
	ADD R0,#4
	SUB R1,#4
	SUBS R3,#1
	BNE UP
STOP
	B STOP
	AREA mydata,DATA,READWRITE
SRC DCD 1,2,3,4,5,6,7,8,9,10
DST DCD 0,0,0,0,0,0,0,0,0,0
	END
	








































ARE