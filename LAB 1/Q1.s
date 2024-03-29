	AREA    RESET, DATA, READONLY
    EXPORT  __Vectors

__Vectors 
	DCD  0x100000FF     ; stack pointer value when stack is empty
    DCD  Reset_Handler  ; reset vector
  
    ALIGN

	AREA mycode, CODE, READONLY
	EXPORT Reset_Handler
	ENTRY
Reset_Handler
	LDR R0, =SRC
	LDR R1, =DST
	MOV R2, #10
	
LOOP
	LDR R3,[R0],#04
	STR R3,[R1],#04
	SUBS R2,#1
	BNE LOOP
STOP
	B STOP
SRC DCD 0X11111111, 0X22222222, 0X33333333, 0X44444444, 0X55555555, 0X66666666, 0X77777777, 0X88888888, 0X99999999, 0XAAAAAAAA
	AREA mydata, DATA, READWRITE
DST DCD 0,0,0,0,0,0,0,0,0,0
	END