.equ	cin, 0x0036
.equ	cout, 0x003c
.equ	phex, 0x003f
.equ	phex16, 0x0045
.equ	crlf, 0x0057

.org	0x4000

test:
;--------------------------------
	clr	p1.1
	mov	r0, #0x55
	mov	r1, #0x40
	mov	r6, #0x00
	mov	r7, #0x20
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0x40
	mov	r6, #0x00
	mov	r7, #0x20
	acall	test_page
	setb	p1.1
	mov	r0, #0x55
	mov	r1, #0x40
	mov	r6, #0x00
	mov	r7, #0x20
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0x40
	mov	r6, #0x00
	mov	r7, #0x20
	acall	test_page
	lcall	crlf
	lcall	cin
;--------------------------------
	orl	pcon, #2
	ljmp	0x0000

;--------
; r0 = fill byte; r1 = final dph; r6 = dpl; r7 = dph
test_page:
	mov	dpl, r6
	mov	dph, r7
	acall	fill
	mov	dpl, r6
	mov	dph, r7
	acall	dump
	ret
;--------
	
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
	lcall	phex16
	mov	a, #' '
	lcall	cout	
dumpb:
	movx	a, @dptr
	lcall	phex
	inc	dptr
	mov	a, dpl
	anl	a, #0x1f
	jnz	print_sp
	lcall	crlf
	sjmp	next
print_sp:
	mov	a, #' '
	lcall	cout
	sjmp	dumpb
next:
	mov	a, dph
	xrl	a, r1
	jnz	dump
	ret
;--------

