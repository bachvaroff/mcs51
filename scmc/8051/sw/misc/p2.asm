.equ	cin, 0x0032
.equ	cout, 0x0030
.equ	phex, 0x0034
.equ	phex16, 0x0036
.equ	nl, 0x0048

.org	0x2000

main:
	mov	a, #0x40
	mov	p2, a
	mov	r0, #0x00
	mov	dptr, #0x4008
	mov	a, #0x08
loop:
	dec	a
	movx	@r0, a
	movx	@dptr, a
	inc	r0
	inc	dptr
	jnz	loop
	
	ljmp	0x0000
