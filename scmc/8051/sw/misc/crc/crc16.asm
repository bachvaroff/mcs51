.equ	cin, 0x0032
.equ	phex16, 0x0036
.equ	nl, 0x0048

.equ	initial_l, 0xff
.equ	initial_h, 0xff
.equ	final_l, 0x00
.equ	final_h, 0x00
.equ	poly_l, 0x21
.equ	poly_h, 0x10

.org	0x2000

calc_crc16:
	acall	init_crc16
	
	mov	dptr, #0x0000
next_byte:
	movx	a, @dptr	
	acall	update_crc16
	inc	dptr
	mov	a, dph
	cjne	a, #0x20, next_byte
	
	acall	finish_crc16
	
	mov	dpl, r2
	mov	dph, r3
	lcall	phex16
	lcall	nl
	lcall	cin
	orl	pcon, #2
	ljmp	0x0000

init_crc16:
	mov	r2, #initial_l
	mov	r3, #initial_h
	ret
	
update_crc16:
	mov	b, a
	mov	a, #0x80
	
loop:
	mov	r0, a
	mov	a, b
	
	anl	a, r0
	jz	skip0
	mov	a, #1
skip0:
	mov	r1, a
	mov	a, r3
	rl	a
	anl	a, #1
	xrl	a, r1
	mov	r1, a
	
	mov     a, r2
	add     a, r2
	mov     r2, a
	mov     a, r3
	rlc     a
	mov     r3, a
	
	mov	a, r1
	jz	skip1
	
	mov	a, r2
	xrl	a, #poly_l
	mov	r2, a
	mov	a, r3
	xrl	a, #poly_h
	mov	r3, a
	
skip1:
	mov	a, r0
	clr	c
	rrc	a
	jnz	loop
		
	ret
	
finish_crc16:
	mov	a, r2
	xrl	a, #final_l
	mov	r2, a
	mov	a, r3
	xrl	a, #final_h
	mov	r3, a
	ret
	
