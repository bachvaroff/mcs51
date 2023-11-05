;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module stack
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _stack_init
	.globl _stack_push
	.globl _stack_pop
	.globl _stack_peek
	.globl _stack_iter_peek
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'stack_init'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	stack.c:4: void stack_init(stack_t *s) __reentrant {
;	-----------------------------------------
;	 function stack_init
;	-----------------------------------------
_stack_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	stack.c:5: s->N = SIZE;
	mov	ar2,r5
	mov	a,#0x20
	add	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x08
	lcall	__gptrput
;	stack.c:6: s->p = -1;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	mov	a,#0x20
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
	inc	dptr
;	stack.c:8: return;
;	stack.c:9: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'stack_push'
;------------------------------------------------------------
;val                       Allocated to stack - _bp -6
;s                         Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	stack.c:11: int stack_push(stack_t *s, long val) __reentrant {
;	-----------------------------------------
;	 function stack_push
;	-----------------------------------------
_stack_push:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	stack.c:12: if (s->p == (s->N - 1)) return 0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	mov	a,#0x20
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	mov	a,#0x20
	inc	r0
	add	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	dec	r5
	cjne	r5,#0xff,00109$
	dec	r6
00109$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00110$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00110$
	sjmp	00111$
00110$:
	sjmp	00102$
00111$:
	mov	dptr,#0x0000
	sjmp	00103$
00102$:
;	stack.c:13: s->p++;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	stack.c:14: s->data[s->p] = val;
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	stack.c:15: return 1;
	mov	dptr,#0x0001
00103$:
;	stack.c:16: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stack_pop'
;------------------------------------------------------------
;val                       Allocated to stack - _bp -5
;s                         Allocated to registers r5 r3 r4 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +1
;sloc2                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	stack.c:18: int stack_pop(stack_t *s, long *val) __reentrant {
;	-----------------------------------------
;	 function stack_pop
;	-----------------------------------------
_stack_pop:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	mov	r5,dpl
	mov	r3,dph
	mov	r4,b
;	stack.c:19: if (s->p < 0) return 0;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	mov	a,#0x20
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	jnb	acc.7,00102$
	mov	dptr,#0x0000
	ljmp	00103$
00102$:
;	stack.c:20: *val = s->data[s->p];
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	add	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	stack.c:21: s->p--;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00110$
	dec	r7
00110$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	stack.c:22: return 1;
	mov	dptr,#0x0001
00103$:
;	stack.c:23: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stack_peek'
;------------------------------------------------------------
;val                       Allocated to stack - _bp -5
;s                         Allocated to registers r7 r6 r5 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	stack.c:25: int stack_peek(stack_t *s, long *val) __reentrant {
;	-----------------------------------------
;	 function stack_peek
;	-----------------------------------------
_stack_peek:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
;	stack.c:26: if (s->p < 0) return 0;
	mov	a,#0x02
	add	a,r7
	mov	r3,a
	mov	a,#0x20
	addc	a,r6
	mov	r2,a
	mov	ar4,r5
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	jnb	acc.7,00102$
	mov	dptr,#0x0000
	sjmp	00103$
00102$:
;	stack.c:27: *val = s->data[s->p];
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,r7
	mov	r3,a
	mov	a,r4
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	stack.c:28: return 1;
	mov	dptr,#0x0001
00103$:
;	stack.c:29: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stack_iter_peek'
;------------------------------------------------------------
;iter                      Allocated to stack - _bp -4
;_ctx                      Allocated to stack - _bp -7
;s                         Allocated to stack - _bp +1
;j                         Allocated to registers 
;r                         Allocated to registers r2 r7 
;------------------------------------------------------------
;	stack.c:31: int stack_iter_peek(stack_t *s, stack_iter_t iter, void *_ctx) __reentrant {
;	-----------------------------------------
;	 function stack_iter_peek
;	-----------------------------------------
_stack_iter_peek:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	stack.c:34: if (s->p < 0) return 0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r3,a
	mov	a,#0x20
	inc	r0
	addc	a,@r0
	mov	r2,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	jnb	acc.7,00102$
	mov	dptr,#0x0000
	ljmp	00109$
00102$:
;	stack.c:36: for (j = s->p, r = 0; j >= 0; j--) {
	mov	r2,#0x00
	mov	r7,#0x00
00107$:
	mov	a,r4
	jnb	acc.7,00129$
	ljmp	00105$
00129$:
;	stack.c:37: r = iter(_ctx, s->data[j]);
	mov	a,r3
	add	a,r3
	mov	r5,a
	mov	a,r4
	rlc	a
	mov	r6,a
	mov	a,r5
	add	a,r5
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r5
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	push	ar4
	push	ar3
	push	ar5
	push	ar4
	push	ar6
	push	ar3
	lcall	00130$
	sjmp	00131$
00130$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00131$:
	mov	r5,dpl
	mov	r6,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar4
	mov	ar2,r5
	mov	ar7,r6
;	stack.c:38: if (r <= 0) break;
	clr	c
	clr	a
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	pop	ar4
	pop	ar3
	jnc	00105$
;	stack.c:36: for (j = s->p, r = 0; j >= 0; j--) {
	dec	r3
	cjne	r3,#0xff,00133$
	dec	r4
00133$:
	ljmp	00107$
00105$:
;	stack.c:41: return r;
	mov	dpl,r2
	mov	dph,r7
00109$:
;	stack.c:42: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
