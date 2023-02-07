.org	0x2000

.equ	cin, 0x0032
.equ	cout, 0x0030
.equ	phex, 0x0034
.equ	phex16, 0x0036
.equ	nl, 0x0048

	clr	p1.2
	mov	dptr, #0x4000
	mov	r0, #0x55
	mov	r1, #0x60
	acall	fill
	
	setb	p1.2
	mov	dptr, #0x4000
	mov	r0, #0xaa
	mov	r1, #0x60
	acall	fill

	clr	p1.2
	mov	dptr, #0x4000
	mov	r1, #0x60
	acall	dump
	
	lcall	nl
	lcall	cin
	
	setb	p1.2
	mov	dptr, #0x4000
	mov	r1, #0x60
	acall	dump

	lcall	nl
	lcall	cin
	
	clr	p1.2
	mov	dptr, #0x4000
	mov	r0, #0xaa
	mov	r1, #0x60
	acall	fill
	
	setb	p1.2
	mov	dptr, #0x4000
	mov	r0, #0x55
	mov	r1, #0x60
	acall	fill

	clr	p1.2
	mov	dptr, #0x4000
	mov	r1, #0x60
	acall	dump
	
	lcall	nl
	lcall	cin
	
	setb	p1.2
	mov	dptr, #0x4000
	mov	r1, #0x60
	acall	dump

	lcall	nl
	lcall	cin
	
	ljmp	0x0000
	
;--------
fill:
	mov	a, r0
	movx	@dptr, a
	inc	dptr
	mov	a, dph
	xrl	a, r1
	jnz	fill
	ret
;--------

;--------
dump:
	movx	a, @dptr
	lcall	phex
	inc	dptr
	mov	a, dpl
	anl	a, #0x1f
	jnz	print_sp
	lcall	nl
	sjmp	next
print_sp:
	mov	a, #' '
	lcall	cout
next:
	mov	a, dph
	xrl	a, r1
	jnz	dump
	ret
;--------

