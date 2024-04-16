.equ	cin, 0x0036
.equ	cout, 0x003c
.equ    pcstr, 0x0048

.equ	locat, 0x8000		; Location for this program
.org	locat
.db	0xA5, 0xE5, 0xE0, 0xA5	; signature bytes
.db	35, 255, 0, 0		; id (35=prog)
.db	0, 0, 0, 0		; prompt code vector
.db	0, 0, 0, 0		; reserved
.db	0, 0, 0, 0		; reserved
.db	0, 0, 0, 0		; reserved
.db	0, 0, 0, 0		; user defined
.db	255, 255, 255, 255	; length and checksum (255=unused)
.db	"hello", 0		; max 31 characters, plus the zero
.org	locat + 64		; executable code begins here

start:
	mov	dptr, #hello
	lcall	pcstr
	lcall	cin
	orl	pcon, #2
	
hello:
	.db "Hello world!\r\n", 0
	
