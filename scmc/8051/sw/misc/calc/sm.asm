;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module sm
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _state_init
	.globl _state_reset
	.globl _state_exec
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
;Allocation info for local variables in function 'state_init'
;------------------------------------------------------------
;Initial                   Allocated to stack - _bp -4
;Final                     Allocated to stack - _bp -6
;Spurious                  Allocated to stack - _bp -8
;Deltas                    Allocated to stack - _bp -11
;Context                   Allocated to stack - _bp -14
;state                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	sm.c:3: void state_init(state_t *state, int Initial, int Final, int Spurious, delta_t *Deltas, void *Context) __reentrant {
;	-----------------------------------------
;	 function state_init
;	-----------------------------------------
_state_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
;	sm.c:4: state->current = Initial;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	sm.c:5: state->final = Final;
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	sm.c:6: state->spurious = Spurious;
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	sm.c:7: state->deltas = Deltas;
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0xf5
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
;	sm.c:8: state->ctx = Context;
	mov	a,#0x09
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0xf2
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
;	sm.c:10: return;
;	sm.c:11: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'state_reset'
;------------------------------------------------------------
;current                   Allocated to stack - _bp -4
;state                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	sm.c:13: void state_reset(state_t *state, int current) __reentrant {
;	-----------------------------------------
;	 function state_reset
;	-----------------------------------------
_state_reset:
	push	_bp
	mov	_bp,sp
;	sm.c:14: state->current = current;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	sm.c:16: return;
;	sm.c:17: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'state_exec'
;------------------------------------------------------------
;event                     Allocated to stack - _bp -4
;state                     Allocated to stack - _bp +1
;ret                       Allocated to stack - _bp +29
;j                         Allocated to stack - _bp +13
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;sloc2                     Allocated to stack - _bp +10
;sloc3                     Allocated to stack - _bp +13
;sloc4                     Allocated to stack - _bp +15
;sloc5                     Allocated to stack - _bp +17
;sloc6                     Allocated to stack - _bp +19
;sloc7                     Allocated to stack - _bp +21
;sloc8                     Allocated to stack - _bp +24
;sloc9                     Allocated to stack - _bp +26
;------------------------------------------------------------
;	sm.c:19: int state_exec(state_t *state, int event) __reentrant {
;	-----------------------------------------
;	 function state_exec
;	-----------------------------------------
_state_exec:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x1b
	mov	sp,a
;	sm.c:20: int ret = UNDEF;
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x80
;	sm.c:23: if (state->current == state->final) {
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r2
	cjne	a,ar3,00102$
	mov	a,r4
	cjne	a,ar7,00102$
;	sm.c:24: ret = 0;
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	sm.c:25: goto error;
	ljmp	00130$
00102$:
;	sm.c:28: if ((state->current == UNDEF) || (state->current == state->spurious)) {
	cjne	r2,#0x00,00190$
	cjne	r4,#0x80,00190$
	sjmp	00103$
00190$:
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r2
	cjne	a,ar3,00104$
	mov	a,r4
	cjne	a,ar7,00104$
00103$:
;	sm.c:29: ret = state->current;
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
;	sm.c:30: goto error;
	ljmp	00130$
00104$:
;	sm.c:33: for (j = 0; (state->deltas[j].current != UNDEF) || (state->deltas[j].next != UNDEF); j++)
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1a
	mov	r1,a
	mov	a,#0x09
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x06
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	clr	a
	mov	r2,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00133$:
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	cjne	r4,#0x00,00132$
	cjne	r5,#0x80,00132$
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	a,#0x04
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	cjne	r4,#0x00,00195$
	cjne	r5,#0x80,00195$
	ljmp	00119$
00195$:
00132$:
;	sm.c:35: ((state->deltas[j].current == state->current) || (state->deltas[j].current == ANY)) &&
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r4
	cjne	a,ar5,00196$
	mov	a,r3
	cjne	a,ar6,00196$
	sjmp	00117$
00196$:
	cjne	r4,#0xff,00197$
	cjne	r3,#0x7f,00197$
	sjmp	00198$
00197$:
	ljmp	00118$
00198$:
00117$:
;	sm.c:36: ((state->deltas[j].event == event) || (state->deltas[j].event == ANY))
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	r5,a
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	cjne	a,ar6,00199$
	inc	r0
	mov	a,@r0
	cjne	a,ar5,00199$
	sjmp	00113$
00199$:
	cjne	r6,#0xff,00200$
	cjne	r5,#0x7f,00200$
	sjmp	00201$
00200$:
	ljmp	00118$
00201$:
00113$:
;	sm.c:38: if (state->deltas[j].predicate)
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	a,@r0
	add	a,r4
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,ar6
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	orl	a,r4
	jz	00109$
;	sm.c:39: if (!state->deltas[j].predicate(state->ctx, &(state->deltas[j]))) continue;
	push	ar2
	push	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar5
	push	ar4
	push	ar2
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00203$
	sjmp	00204$
00203$:
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	ret
00204$:
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar2
	jnz	00205$
	ljmp	00118$
00205$:
00109$:
;	sm.c:40: if (state->deltas[j].callback)
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r7,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	r3,a
	mov	ar2,r6
	mov	a,#0x08
	add	a,r7
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r2
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00111$
;	sm.c:41: ret = state->deltas[j].callback(state->ctx, &(state->deltas[j]));
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar7
	push	ar3
	push	ar2
	lcall	00207$
	sjmp	00208$
00207$:
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
00208$:
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	sjmp	00119$
00111$:
;	sm.c:42: else ret = 1;
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	sm.c:43: break;
	sjmp	00119$
00118$:
;	sm.c:33: for (j = 0; (state->deltas[j].current != UNDEF) || (state->deltas[j].next != UNDEF); j++)
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x0a
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0x0a
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,#0x0a
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r2
	cjne	r2,#0x00,00209$
	inc	r7
00209$:
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
	ljmp	00133$
00119$:
;	sm.c:46: if (ret == UNDEF) {
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	cjne	@r0,#0x00,00121$
	inc	r0
	cjne	@r0,#0x80,00121$
;	sm.c:47: state->current = UNDEF;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
;	sm.c:48: goto error;
	ljmp	00130$
00121$:
;	sm.c:51: if ((ret < 0) || (ret == state->spurious)) {
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	inc	r0
	mov	a,@r0
	jb	acc.7,00122$
	mov	a,_bp
	add	a,#0x07
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
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	mov	a,@r0
	cjne	a,ar6,00213$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00213$
	sjmp	00214$
00213$:
	sjmp	00123$
00214$:
00122$:
;	sm.c:52: ret = state->current = state->spurious;
	mov	a,_bp
	add	a,#0x07
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
;	sm.c:53: goto error;
	ljmp	00130$
00123$:
;	sm.c:56: if ((ret > 0) && (state->deltas[j].next != ANY)) state->current = state->deltas[j].next;
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	clr	c
	clr	a
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00126$
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	cjne	r7,#0xff,00216$
	cjne	r6,#0x7f,00216$
	sjmp	00126$
00216$:
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
00126$:
;	sm.c:58: if (state->current == state->final) {
	mov	r0,_bp
	inc	r0
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
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00130$
	mov	a,r7
	cjne	a,ar5,00130$
;	sm.c:59: ret = 0;
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	sm.c:63: error:
00130$:
;	sm.c:64: return ret;
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
;	sm.c:65: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
