.equ	cin, 0x0036
.equ	cout, 0x003c
.equ	phex, 0x003f
.equ	phex16, 0x0045
.equ	crlf, 0x0057

.org	0x2000

test:
;--------------------------------
	clr	p1.2
	mov	r0, #0x55
	mov	r1, #0x60
	mov	r6, #0x00
	mov	r7, #0x40
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0x60
	mov	r6, #0x00
	mov	r7, #0x40
	acall	test_page
	setb	p1.2
	mov	r0, #0x55
	mov	r1, #0x60
	mov	r6, #0x00
	mov	r7, #0x40
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0x60
	mov	r6, #0x00
	mov	r7, #0x40
	acall	test_page
	lcall	crlf
	lcall	cin
;--------------------------------
	clr	p1.3
	mov	r0, #0x55
	mov	r1, #0x80
	mov	r6, #0x00
	mov	r7, #0x60
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0x80
	mov	r6, #0x00
	mov	r7, #0x60
	acall	test_page
	setb	p1.3
	mov	r0, #0x55
	mov	r1, #0x80
	mov	r6, #0x00
	mov	r7, #0x60
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0x80
	mov	r6, #0x00
	mov	r7, #0x60
	acall	test_page
	lcall	crlf
	lcall	cin
;--------------------------------
	clr	p1.4
	mov	r0, #0x55
	mov	r1, #0xa0
	mov	r6, #0x00
	mov	r7, #0x80
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0xa0
	mov	r6, #0x00
	mov	r7, #0x80
	acall	test_page
	setb	p1.4
	mov	r0, #0x55
	mov	r1, #0xa0
	mov	r6, #0x00
	mov	r7, #0x80
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0xa0
	mov	r6, #0x00
	mov	r7, #0x80
	acall	test_page
	lcall	crlf
	lcall	cin
;--------------------------------
	clr	p1.5
	mov	r0, #0x55
	mov	r1, #0xc0
	mov	r6, #0x00
	mov	r7, #0xa0
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0xc0
	mov	r6, #0x00
	mov	r7, #0xa0
	acall	test_page
	setb	p1.5
	mov	r0, #0x55
	mov	r1, #0xc0
	mov	r6, #0x00
	mov	r7, #0xa0
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0xc0
	mov	r6, #0x00
	mov	r7, #0xa0
	acall	test_page
	lcall	crlf
	lcall	cin
;--------------------------------
	clr	p1.6
	mov	r0, #0x55
	mov	r1, #0xe0
	mov	r6, #0x00
	mov	r7, #0xc0
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0xe0
	mov	r6, #0x00
	mov	r7, #0xc0
	acall	test_page
	setb	p1.6
	mov	r0, #0x55
	mov	r1, #0xe0
	mov	r6, #0x00
	mov	r7, #0xc0
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0xe0
	mov	r6, #0x00
	mov	r7, #0xc0
	acall	test_page
	lcall	crlf
	lcall	cin
;--------------------------------
	clr	p1.7
	mov	r0, #0x55
	mov	r1, #0x00
	mov	r6, #0x00
	mov	r7, #0xe0
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0x00
	mov	r6, #0x00
	mov	r7, #0xe0
	acall	test_page
	setb	p1.7
	mov	r0, #0x55
	mov	r1, #0x00
	mov	r6, #0x00
	mov	r7, #0xe0
	acall	test_page
	mov	r0, #0xaa
	mov	r1, #0x00
	mov	r6, #0x00
	mov	r7, #0xe0
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

