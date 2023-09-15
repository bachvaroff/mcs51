.equ	cin, 0x0032
.equ	cout, 0x0030
.equ	phex, 0x0034
.equ	phex16, 0x0036
.equ	nl, 0x0048

.org	0x2000

main:
	clr	p1.7
	
	mov	a, #0xf0
	mov	p2, a

	mov	r0, #0x04
	mov	r1, #0x05
	
	clr	a
	movx	@r0, a
	movx	@r1, a
	
	mov	r0, #0x06
	mov	a, #0xcf
	movx	@r0, a
	
	mov	r0, #0x04
	
	clr	a
loop:
	xrl	a, #0x80
	movx	@r0, a
;	xrl	a, #0x80
	movx	@r1, a
;	xrl	a, #0x80
	sjmp	loop
	
	ljmp	0x0000
	
