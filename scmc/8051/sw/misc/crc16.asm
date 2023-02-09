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
	
	mov	dpl, r6
	mov	dph, r7
	lcall	phex16
	lcall	nl
	lcall	cin
	ljmp	0x0000

init_crc16:
	mov	r6, #initial_l
	mov	r7, #initial_h
	ret
	
update_crc16:
	mov	r0, a
	mov	a, #0x80
	
loop:
	mov	r1, a
	mov	a, r0
	
	anl	a, r1
	jz	skip0
	mov	a, #1
skip0:
	mov	r2, a
	mov	a, r7
	rl	a
	anl	a, #1
	xrl	a, r2
	mov	r2, a
	
	mov     a, r6
	add     a, r6
	mov     r6, a
	mov     a, r7
	rlc     a
	mov     r7, a
	
	mov	a, r2
	jz	skip1
	
	mov	a, r6
	xrl	a, #poly_l
	mov	r6, a
	mov	a, r7
	xrl	a, #poly_h
	mov	r7, a
	
skip1:
	mov	a, r1
	clr	c
	rrc	a
	jnz	loop
		
	ret
	
finish_crc16:
	mov	a, r6
	xrl	a, #final_l
	mov	r6, a
	mov	a, r7
	xrl	a, #final_h
	mov	r7, a
	ret
	
