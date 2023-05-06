;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module fix_fft
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fix_fft
	.globl _Sinewave
	.globl _fix_fftr
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
_Sinewave::
	.ds 1536
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
;Allocation info for local variables in function 'fix_fft'
;------------------------------------------------------------
;fi                        Allocated to stack - _bp -5
;m                         Allocated to stack - _bp -7
;inverse                   Allocated to stack - _bp -9
;fr                        Allocated to stack - _bp +1
;mr                        Allocated to stack - _bp +24
;nn                        Allocated to registers r2 r4 
;i                         Allocated to stack - _bp +26
;j                         Allocated to registers r5 r4 
;l                         Allocated to stack - _bp +28
;k                         Allocated to stack - _bp +30
;istep                     Allocated to stack - _bp +32
;n                         Allocated to stack - _bp +34
;scale                     Allocated to stack - _bp +36
;shift                     Allocated to stack - _bp +38
;qr                        Allocated to stack - _bp +40
;qi                        Allocated to stack - _bp +42
;tr                        Allocated to stack - _bp +44
;ti                        Allocated to stack - _bp +46
;wr                        Allocated to stack - _bp +48
;wi                        Allocated to stack - _bp +50
;__4587520013              Allocated to registers 
;__4587520009              Allocated to registers 
;__4587520005              Allocated to registers 
;__4587520001              Allocated to registers 
;__4587520002              Allocated to registers 
;__4587520003              Allocated to stack - _bp +52
;a                         Allocated to stack - _bp +54
;b                         Allocated to registers r2 r3 
;c                         Allocated to registers r4 r5 r6 r7 
;__4587520006              Allocated to registers 
;__4587520007              Allocated to stack - _bp +52
;a                         Allocated to registers r2 r3 
;b                         Allocated to registers r2 r3 
;c                         Allocated to registers r4 r5 r6 r7 
;__4587520010              Allocated to registers 
;__4587520011              Allocated to registers 
;a                         Allocated to stack - _bp +52
;b                         Allocated to registers r2 r3 
;c                         Allocated to registers r4 r5 r6 r7 
;__4587520014              Allocated to registers 
;__4587520015              Allocated to registers 
;a                         Allocated to registers r2 r3 
;b                         Allocated to registers r2 r3 
;c                         Allocated to registers r4 r5 r6 r7 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +6
;sloc2                     Allocated to stack - _bp +9
;sloc3                     Allocated to stack - _bp +11
;sloc4                     Allocated to stack - _bp +13
;sloc5                     Allocated to stack - _bp +16
;sloc6                     Allocated to stack - _bp +20
;------------------------------------------------------------
;	fix_fft.c:169: int16_t fix_fft(int16_t *fr, int16_t *fi, int16_t m, int16_t inverse) {
;	-----------------------------------------
;	 function fix_fft
;	-----------------------------------------
_fix_fft:
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
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x34
	mov	sp,a
;	fix_fft.c:173: n = 1 << m;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar4,@r0
	mov	b,r4
	inc	b
	mov	r4,#0x01
	mov	r3,#0x00
	sjmp	00265$
00264$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r3,a
00265$:
	djnz	b,00264$
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
;	fix_fft.c:176: if (n > N_WAVE) return -1;
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	clr	c
	clr	a
	subb	a,r2
	mov	a,#(0x04 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
	mov	dptr,#0xffff
	ljmp	00149$
00102$:
;	fix_fft.c:178: mr = 0;
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	fix_fft.c:179: nn = n - 1;
	dec	r2
	cjne	r2,#0xff,00267$
	dec	r4
00267$:
;	fix_fft.c:183: for (m = 1; m <= nn; m++) {
	mov	r5,#0x01
	mov	r6,#0x00
00139$:
	clr	c
	mov	a,r2
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00268$
	ljmp	00109$
00268$:
;	fix_fft.c:184: l = n;
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	fix_fft.c:186: do l >>= 1;
00103$:
	push	ar5
	push	ar6
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	mov	c,acc.7
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	fix_fft.c:187: while ((mr + l) > nn);
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r5,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r6,a
	clr	c
	mov	a,r2
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	pop	ar6
	pop	ar5
	jc	00103$
;	fix_fft.c:189: mr = (mr & (l - 1)) + l;
	push	ar2
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	dec	r2
	cjne	r2,#0xff,00270$
	dec	r4
00270$:
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,r3
	anl	ar2,a
	mov	a,r7
	anl	ar4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r4,a
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
;	fix_fft.c:190: if (mr <= m) continue;
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	clr	c
	mov	a,r5
	subb	a,@r0
	mov	a,r6
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	pop	ar4
	pop	ar2
	jc	00271$
	ljmp	00108$
00271$:
;	fix_fft.c:192: tr = fr[m];
	push	ar2
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r5
	add	a,r5
	mov	@r0,a
	mov	a,r6
	rlc	a
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	fix_fft.c:193: fr[m] = fr[mr];
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,@r0
	add	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	rlc	a
	inc	r1
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0d
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
	mov	r7,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	fix_fft.c:194: fr[mr] = tr;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	fix_fft.c:195: ti = fi[m];
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	fix_fft.c:196: fi[m] = fi[mr];
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x06
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
	mov	r7,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	fix_fft.c:197: fi[mr] = ti;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	fix_fft.c:274: return scale;
	pop	ar4
	pop	ar2
;	fix_fft.c:197: fi[mr] = ti;
00108$:
;	fix_fft.c:183: for (m = 1; m <= nn; m++) {
	inc	r5
	cjne	r5,#0x00,00272$
	inc	r6
00272$:
	ljmp	00139$
00109$:
;	fix_fft.c:200: l = 1;
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	fix_fft.c:202: while (l < n) {
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	@r0,#0x09
	inc	r0
	mov	@r0,#0x00
00131$:
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	a,_bp
	add	a,#0x22
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	inc	r1
	mov	b,@r1
	xrl	b,#0x80
	subb	a,b
	jc	00273$
	ljmp	00133$
00273$:
;	fix_fft.c:203: if (inverse) {
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00274$
	ljmp	00121$
00274$:
;	fix_fft.c:205: shift = 0;
	mov	a,_bp
	add	a,#0x26
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	fix_fft.c:207: for (i = 0; i < n; i++) {
	mov	r2,#0x00
	mov	r3,#0x00
00141$:
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r3
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00275$
	ljmp	00117$
00275$:
;	fix_fft.c:208: j = fr[i];
	mov	a,r2
	add	a,r2
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	fix_fft.c:209: if (j < 0) j = -j;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	a,@r0
	jnb	acc.7,00111$
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	clr	c
	clr	a
	subb	a,@r0
	mov	@r0,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	@r0,a
00111$:
;	fix_fft.c:211: m = fi[i];
	mov	a,r2
	add	a,r2
	mov	r6,a
	mov	a,r3
	rlc	a
	mov	r7,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	fix_fft.c:212: if (m < 0) m = -m;
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r7
	jnb	acc.7,00113$
	clr	c
	clr	a
	subb	a,r4
	mov	r6,a
	clr	a
	subb	a,r5
	mov	r7,a
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00113$:
;	fix_fft.c:214: if ((j > 16383) || (m > 16383)) {
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x3f ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00114$
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x3f ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00142$
00114$:
;	fix_fft.c:215: shift = 1;
	mov	a,_bp
	add	a,#0x26
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	fix_fft.c:216: break;
	sjmp	00117$
00142$:
;	fix_fft.c:207: for (i = 0; i < n; i++) {
	inc	r2
	cjne	r2,#0x00,00280$
	inc	r3
00280$:
	ljmp	00141$
00117$:
;	fix_fft.c:220: if (shift) scale++;
	mov	a,_bp
	add	a,#0x26
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00122$
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00282$
	inc	r0
	inc	@r0
00282$:
	sjmp	00122$
00121$:
;	fix_fft.c:228: shift = 1;
	mov	a,_bp
	add	a,#0x26
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00122$:
;	fix_fft.c:236: istep = l << 1;
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	a,_bp
	add	a,#0x20
	mov	r1,a
	mov	a,@r0
	add	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	rlc	a
	inc	r1
	mov	@r1,a
;	fix_fft.c:237: for (m = 0; m < l; m++) {
	mov	r2,#0x00
	mov	r3,#0x00
00147$:
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r3
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00283$
	ljmp	00130$
00283$:
;	fix_fft.c:238: j = m << k;
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	r6,ar2
	mov	r7,ar3
	sjmp	00285$
00284$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00285$:
	djnz	b,00284$
	mov	ar5,r6
	mov	ar4,r7
;	fix_fft.c:241: wr =  Sinewave[j + N_WAVE / 4];
	mov	ar6,r5
	mov	ar7,r4
	mov	a,#0x01
	add	a,r7
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_Sinewave
	mov	dpl,a
	mov	a,r7
	addc	a,#(_Sinewave >> 8)
	mov	dph,a
	mov	a,_bp
	add	a,#0x30
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
;	fix_fft.c:242: wi = -Sinewave[j];
	mov	a,r5
	add	a,r5
	mov	r6,a
	mov	a,r4
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_Sinewave
	mov	dpl,a
	mov	a,r7
	addc	a,#(_Sinewave >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	fix_fft.c:243: if (inverse) wi = -wi;
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00124$
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	clr	c
	clr	a
	subb	a,@r0
	mov	@r0,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	@r0,a
00124$:
;	fix_fft.c:245: if (shift) {
	mov	a,_bp
	add	a,#0x26
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00126$
;	fix_fft.c:246: wr >>= 1;
	mov	a,_bp
	add	a,#0x30
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	mov	c,acc.7
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	fix_fft.c:247: wi >>= 1;
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	mov	c,acc.7
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
00126$:
;	fix_fft.c:250: for (i = m; i < n; i += istep) {
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
00144$:
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,_bp
	add	a,#0x22
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	inc	r1
	mov	b,@r1
	xrl	b,#0x80
	subb	a,b
	jc	00288$
	ljmp	00148$
00288$:
;	fix_fft.c:251: j = i + l;
	push	ar2
	push	ar3
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
;	fix_fft.c:253: tr = FIX_MPY(wr, fr[j]) - FIX_MPY(wi, fi[j]);
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r0
	add	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	rlc	a
	inc	r1
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x09
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
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
;	fix_fft.c:155: int32_t c = ((int32_t)a * (int32_t)b) >> 14;
	mov	a,_bp
	add	a,#0x30
	mov	r0,a
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,@r0
	rlc	a
	subb	a,acc
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,a
	mov	ar2,r7
	mov	a,r6
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	mov	ar4,r5
	mov	a,r6
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x03
	mov	r5,a
	mov	a,r7
	add	a,r7
	add	a,acc
	orl	a,r5
	mov	r5,a
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x03
	jnb	acc.1,00289$
	orl	a,#0xfc
00289$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
;	fix_fft.c:157: b = c & 0x01;
	mov	ar2,r4
	mov	ar3,r5
	anl	ar2,#0x01
	mov	r3,#0x00
;	fix_fft.c:159: a = (c >> 1) + b;
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	a,r6
	rrc	a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,_bp
	add	a,#0x36
	mov	r0,a
	mov	a,r2
	add	a,r4
	mov	@r0,a
	mov	a,r3
	addc	a,r5
	inc	r0
	mov	@r0,a
;	fix_fft.c:253: tr = FIX_MPY(wr, fr[j]) - FIX_MPY(wi, fi[j]);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r5,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar7,@r0
;	fix_fft.c:155: int32_t c = ((int32_t)a * (int32_t)b) >> 14;
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,@r0
	rlc	a
	subb	a,acc
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,a
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	push	ar3
	push	ar2
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	mov	ar4,r5
	mov	a,r6
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x03
	mov	r5,a
	mov	a,r7
	add	a,r7
	add	a,acc
	orl	a,r5
	mov	r5,a
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x03
	jnb	acc.1,00290$
	orl	a,#0xfc
00290$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
;	fix_fft.c:157: b = c & 0x01;
	mov	ar2,r4
	mov	ar3,r5
	anl	ar2,#0x01
	mov	r3,#0x00
;	fix_fft.c:159: a = (c >> 1) + b;
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	a,r6
	rrc	a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	add	a,r2
	mov	r2,a
	mov	a,r3
	addc	a,r5
	mov	r3,a
;	fix_fft.c:253: tr = FIX_MPY(wr, fr[j]) - FIX_MPY(wi, fi[j]);
	mov	a,_bp
	add	a,#0x36
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	subb	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0x2c
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	fix_fft.c:155: int32_t c = ((int32_t)a * (int32_t)b) >> 14;
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	a,@r0
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	push	ar3
	push	ar2
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	mov	ar4,r5
	mov	a,r6
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x03
	mov	r5,a
	mov	a,r7
	add	a,r7
	add	a,acc
	orl	a,r5
	mov	r5,a
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x03
	jnb	acc.1,00291$
	orl	a,#0xfc
00291$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
;	fix_fft.c:157: b = c & 0x01;
	mov	ar2,r4
	mov	ar3,r5
	anl	ar2,#0x01
	mov	r3,#0x00
;	fix_fft.c:159: a = (c >> 1) + b;
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	a,r6
	rrc	a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	a,r2
	add	a,r4
	mov	@r0,a
	mov	a,r3
	addc	a,r5
	inc	r0
	mov	@r0,a
;	fix_fft.c:155: int32_t c = ((int32_t)a * (int32_t)b) >> 14;
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	a,@r0
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	push	ar3
	push	ar2
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	mov	ar4,r5
	mov	a,r6
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x03
	mov	r5,a
	mov	a,r7
	add	a,r7
	add	a,acc
	orl	a,r5
	mov	r5,a
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x03
	jnb	acc.1,00292$
	orl	a,#0xfc
00292$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
;	fix_fft.c:157: b = c & 0x01;
	mov	ar2,r4
	mov	ar3,r5
	anl	ar2,#0x01
	mov	r3,#0x00
;	fix_fft.c:159: a = (c >> 1) + b;
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	a,r6
	rrc	a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	add	a,r2
	mov	r2,a
	mov	a,r3
	addc	a,r5
	mov	r3,a
;	fix_fft.c:254: ti = FIX_MPY(wr, fi[j]) + FIX_MPY(wi, fr[j]);
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,_bp
	add	a,#0x2e
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	fix_fft.c:255: qr = fr[i];
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	add	a,@r0
	mov	r6,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,r6
	add	a,@r0
	mov	r3,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	fix_fft.c:256: qi = fi[i];
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
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
	add	a,#0x2a
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	fix_fft.c:258: if (shift) {
	pop	ar3
	pop	ar2
	mov	a,_bp
	add	a,#0x26
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00128$
;	fix_fft.c:259: qr >>= 1;
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	mov	c,acc.7
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	fix_fft.c:260: qi >>= 1;
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	mov	c,acc.7
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
00128$:
;	fix_fft.c:263: fr[j] = qr - tr;
	push	ar2
	push	ar3
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	add	a,@r0
	mov	r6,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	mov	a,r6
	add	a,@r0
	mov	@r1,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	a,_bp
	add	a,#0x2c
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	r2,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	r5,a
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	fix_fft.c:264: fi[j] = qi - ti;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	mov	a,_bp
	add	a,#0x2e
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	r3,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	fix_fft.c:265: fr[i] = qr + tr;
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	add	a,@r0
	mov	r6,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	mov	a,r6
	add	a,@r0
	mov	@r1,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	a,_bp
	add	a,#0x2c
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	fix_fft.c:266: fi[i] = qi + ti;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	mov	a,_bp
	add	a,#0x2e
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	fix_fft.c:250: for (i = m; i < n; i += istep) {
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,_bp
	add	a,#0x20
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	pop	ar3
	pop	ar2
	ljmp	00144$
00148$:
;	fix_fft.c:237: for (m = 0; m < l; m++) {
	inc	r2
	cjne	r2,#0x00,00294$
	inc	r3
00294$:
	ljmp	00147$
00130$:
;	fix_fft.c:270: k--;
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xff,00295$
	inc	r0
	dec	@r0
00295$:
;	fix_fft.c:271: l = istep;
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	ljmp	00131$
00133$:
;	fix_fft.c:274: return scale;
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
00149$:
;	fix_fft.c:275: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fix_fftr'
;------------------------------------------------------------
;m                         Allocated to stack - _bp -4
;inverse                   Allocated to stack - _bp -6
;f                         Allocated to stack - _bp +1
;i                         Allocated to stack - _bp +12
;N                         Allocated to stack - _bp +14
;scale                     Allocated to registers r2 r4 
;tt                        Allocated to stack - _bp +7
;fr                        Allocated to registers 
;fi                        Allocated to stack - _bp +9
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	fix_fft.c:291: int16_t fix_fftr(int16_t *f, int16_t m, int16_t inverse) {
;	-----------------------------------------
;	 function fix_fftr
;	-----------------------------------------
_fix_fftr:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0c
	mov	sp,a
;	fix_fft.c:292: int16_t i, N = 1 << (m - 1), scale = 0;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar4,@r0
	dec	r4
	mov	b,r4
	inc	b
	mov	r4,#0x01
	mov	r3,#0x00
	sjmp	00128$
00127$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r3,a
00128$:
	djnz	b,00127$
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
;	fix_fft.c:293: int16_t tt, *fr = f, *fi = f + N;
	clr	a
	mov	r2,a
	mov	r4,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	add	a,@r0
	mov	r3,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
;	fix_fft.c:295: if (inverse)
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00102$
;	fix_fft.c:296: scale = fix_fft(fi, fr, m - 1, inverse);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	dec	r3
	cjne	r3,#0xff,00130$
	dec	r7
00130$:
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_fix_fft
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	ar2,r6
	mov	ar4,r7
00102$:
;	fix_fft.c:298: for (i = 1; i < N; i += 2) {
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00107$:
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	inc	r1
	mov	b,@r1
	xrl	b,#0x80
	subb	a,b
	jc	00131$
	ljmp	00103$
00131$:
;	fix_fft.c:299: tt = f[N + i - 1];
	push	ar2
	push	ar4
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r5,a
	dec	r3
	cjne	r3,#0xff,00132$
	dec	r5
00132$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	fix_fft.c:300: f[N + i - 1] = f[i];
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	add	a,@r0
	mov	r2,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,r2
	add	a,@r0
	mov	@r1,a
	mov	a,r7
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	fix_fft.c:301: f[i] = tt;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	fix_fft.c:298: for (i = 1; i < N; i += 2) {
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	pop	ar4
	pop	ar2
	ljmp	00107$
00103$:
;	fix_fft.c:304: if (!inverse)
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00105$
;	fix_fft.c:305: scale = fix_fft(fi, fr, m - 1, inverse);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r6
	cjne	r6,#0xff,00134$
	dec	r7
00134$:
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_fix_fft
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	ar2,r6
	mov	ar4,r7
00105$:
;	fix_fft.c:307: return scale;
	mov	dpl,r2
	mov	dph,r4
;	fix_fft.c:308: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__Sinewave:
	.byte #0x00, #0x00	;  0
	.byte #0xc9, #0x00	;  201
	.byte #0x92, #0x01	;  402
	.byte #0x5b, #0x02	;  603
	.byte #0x24, #0x03	;  804
	.byte #0xed, #0x03	;  1005
	.byte #0xb6, #0x04	;  1206
	.byte #0x7e, #0x05	;  1406
	.byte #0x47, #0x06	;  1607
	.byte #0x10, #0x07	;  1808
	.byte #0xd9, #0x07	;  2009
	.byte #0xa1, #0x08	;  2209
	.byte #0x6a, #0x09	;  2410
	.byte #0x32, #0x0a	;  2610
	.byte #0xfb, #0x0a	;  2811
	.byte #0xc3, #0x0b	;  3011
	.byte #0x8b, #0x0c	;  3211
	.byte #0x53, #0x0d	;  3411
	.byte #0x1b, #0x0e	;  3611
	.byte #0xe3, #0x0e	;  3811
	.byte #0xab, #0x0f	;  4011
	.byte #0x72, #0x10	;  4210
	.byte #0x39, #0x11	;  4409
	.byte #0x00, #0x12	;  4608
	.byte #0xc7, #0x12	;  4807
	.byte #0x8e, #0x13	;  5006
	.byte #0x55, #0x14	;  5205
	.byte #0x1b, #0x15	;  5403
	.byte #0xe1, #0x15	;  5601
	.byte #0xa7, #0x16	;  5799
	.byte #0x6d, #0x17	;  5997
	.byte #0x33, #0x18	;  6195
	.byte #0xf8, #0x18	;  6392
	.byte #0xbd, #0x19	;  6589
	.byte #0x82, #0x1a	;  6786
	.byte #0x46, #0x1b	;  6982
	.byte #0x0b, #0x1c	;  7179
	.byte #0xcf, #0x1c	;  7375
	.byte #0x93, #0x1d	;  7571
	.byte #0x56, #0x1e	;  7766
	.byte #0x19, #0x1f	;  7961
	.byte #0xdc, #0x1f	;  8156
	.byte #0x9f, #0x20	;  8351
	.byte #0x61, #0x21	;  8545
	.byte #0x23, #0x22	;  8739
	.byte #0xe4, #0x22	;  8932
	.byte #0xa6, #0x23	;  9126
	.byte #0x67, #0x24	;  9319
	.byte #0x27, #0x25	;  9511
	.byte #0xe7, #0x25	;  9703
	.byte #0xa7, #0x26	;  9895
	.byte #0x67, #0x27	;  10087
	.byte #0x26, #0x28	;  10278
	.byte #0xe5, #0x28	;  10469
	.byte #0xa3, #0x29	;  10659
	.byte #0x61, #0x2a	;  10849
	.byte #0x1e, #0x2b	;  11038
	.byte #0xdb, #0x2b	;  11227
	.byte #0x98, #0x2c	;  11416
	.byte #0x54, #0x2d	;  11604
	.byte #0x10, #0x2e	;  11792
	.byte #0xcc, #0x2e	;  11980
	.byte #0x86, #0x2f	;  12166
	.byte #0x41, #0x30	;  12353
	.byte #0xfb, #0x30	;  12539
	.byte #0xb4, #0x31	;  12724
	.byte #0x6d, #0x32	;  12909
	.byte #0x26, #0x33	;  13094
	.byte #0xde, #0x33	;  13278
	.byte #0x96, #0x34	;  13462
	.byte #0x4d, #0x35	;  13645
	.byte #0x03, #0x36	;  13827
	.byte #0xb9, #0x36	;  14009
	.byte #0x6f, #0x37	;  14191
	.byte #0x24, #0x38	;  14372
	.byte #0xd8, #0x38	;  14552
	.byte #0x8c, #0x39	;  14732
	.byte #0x3f, #0x3a	;  14911
	.byte #0xf2, #0x3a	;  15090
	.byte #0xa4, #0x3b	;  15268
	.byte #0x56, #0x3c	;  15446
	.byte #0x07, #0x3d	;  15623
	.byte #0xb7, #0x3d	;  15799
	.byte #0x67, #0x3e	;  15975
	.byte #0x16, #0x3f	;  16150
	.byte #0xc5, #0x3f	;  16325
	.byte #0x73, #0x40	;  16499
	.byte #0x20, #0x41	;  16672
	.byte #0xcd, #0x41	;  16845
	.byte #0x79, #0x42	;  17017
	.byte #0x25, #0x43	;  17189
	.byte #0xd0, #0x43	;  17360
	.byte #0x7a, #0x44	;  17530
	.byte #0x23, #0x45	;  17699
	.byte #0xcc, #0x45	;  17868
	.byte #0x74, #0x46	;  18036
	.byte #0x1c, #0x47	;  18204
	.byte #0xc3, #0x47	;  18371
	.byte #0x69, #0x48	;  18537
	.byte #0x0e, #0x49	;  18702
	.byte #0xb3, #0x49	;  18867
	.byte #0x57, #0x4a	;  19031
	.byte #0xfa, #0x4a	;  19194
	.byte #0x9d, #0x4b	;  19357
	.byte #0x3f, #0x4c	;  19519
	.byte #0xe0, #0x4c	;  19680
	.byte #0x80, #0x4d	;  19840
	.byte #0x20, #0x4e	;  20000
	.byte #0xbf, #0x4e	;  20159
	.byte #0x5d, #0x4f	;  20317
	.byte #0xfa, #0x4f	;  20474
	.byte #0x97, #0x50	;  20631
	.byte #0x33, #0x51	;  20787
	.byte #0xce, #0x51	;  20942
	.byte #0x68, #0x52	;  21096
	.byte #0x01, #0x53	;  21249
	.byte #0x9a, #0x53	;  21402
	.byte #0x32, #0x54	;  21554
	.byte #0xc9, #0x54	;  21705
	.byte #0x5f, #0x55	;  21855
	.byte #0xf4, #0x55	;  22004
	.byte #0x89, #0x56	;  22153
	.byte #0x1d, #0x57	;  22301
	.byte #0xb0, #0x57	;  22448
	.byte #0x42, #0x58	;  22594
	.byte #0xd3, #0x58	;  22739
	.byte #0x63, #0x59	;  22883
	.byte #0xf3, #0x59	;  23027
	.byte #0x81, #0x5a	;  23169
	.byte #0x0f, #0x5b	;  23311
	.byte #0x9c, #0x5b	;  23452
	.byte #0x28, #0x5c	;  23592
	.byte #0xb3, #0x5c	;  23731
	.byte #0x3d, #0x5d	;  23869
	.byte #0xc6, #0x5d	;  24006
	.byte #0x4f, #0x5e	;  24143
	.byte #0xd6, #0x5e	;  24278
	.byte #0x5d, #0x5f	;  24413
	.byte #0xe2, #0x5f	;  24546
	.byte #0x67, #0x60	;  24679
	.byte #0xeb, #0x60	;  24811
	.byte #0x6e, #0x61	;  24942
	.byte #0xf0, #0x61	;  25072
	.byte #0x71, #0x62	;  25201
	.byte #0xf1, #0x62	;  25329
	.byte #0x70, #0x63	;  25456
	.byte #0xee, #0x63	;  25582
	.byte #0x6b, #0x64	;  25707
	.byte #0xe7, #0x64	;  25831
	.byte #0x62, #0x65	;  25954
	.byte #0xdd, #0x65	;  26077
	.byte #0x56, #0x66	;  26198
	.byte #0xce, #0x66	;  26318
	.byte #0x45, #0x67	;  26437
	.byte #0xbc, #0x67	;  26556
	.byte #0x31, #0x68	;  26673
	.byte #0xa5, #0x68	;  26789
	.byte #0x19, #0x69	;  26905
	.byte #0x8b, #0x69	;  27019
	.byte #0xfc, #0x69	;  27132
	.byte #0x6c, #0x6a	;  27244
	.byte #0xdb, #0x6a	;  27355
	.byte #0x4a, #0x6b	;  27466
	.byte #0xb7, #0x6b	;  27575
	.byte #0x23, #0x6c	;  27683
	.byte #0x8e, #0x6c	;  27790
	.byte #0xf8, #0x6c	;  27896
	.byte #0x61, #0x6d	;  28001
	.byte #0xc9, #0x6d	;  28105
	.byte #0x30, #0x6e	;  28208
	.byte #0x95, #0x6e	;  28309
	.byte #0xfa, #0x6e	;  28410
	.byte #0x5e, #0x6f	;  28510
	.byte #0xc0, #0x6f	;  28608
	.byte #0x22, #0x70	;  28706
	.byte #0x82, #0x70	;  28802
	.byte #0xe1, #0x70	;  28897
	.byte #0x40, #0x71	;  28992
	.byte #0x9d, #0x71	;  29085
	.byte #0xf9, #0x71	;  29177
	.byte #0x54, #0x72	;  29268
	.byte #0xae, #0x72	;  29358
	.byte #0x06, #0x73	;  29446
	.byte #0x5e, #0x73	;  29534
	.byte #0xb5, #0x73	;  29621
	.byte #0x0a, #0x74	;  29706
	.byte #0x5e, #0x74	;  29790
	.byte #0xb1, #0x74	;  29873
	.byte #0x03, #0x75	;  29955
	.byte #0x54, #0x75	;  30036
	.byte #0xa4, #0x75	;  30116
	.byte #0xf3, #0x75	;  30195
	.byte #0x40, #0x76	;  30272
	.byte #0x8d, #0x76	;  30349
	.byte #0xd8, #0x76	;  30424
	.byte #0x22, #0x77	;  30498
	.byte #0x6b, #0x77	;  30571
	.byte #0xb3, #0x77	;  30643
	.byte #0xf9, #0x77	;  30713
	.byte #0x3f, #0x78	;  30783
	.byte #0x83, #0x78	;  30851
	.byte #0xc6, #0x78	;  30918
	.byte #0x08, #0x79	;  30984
	.byte #0x49, #0x79	;  31049
	.byte #0x89, #0x79	;  31113
	.byte #0xc7, #0x79	;  31175
	.byte #0x04, #0x7a	;  31236
	.byte #0x41, #0x7a	;  31297
	.byte #0x7c, #0x7a	;  31356
	.byte #0xb5, #0x7a	;  31413
	.byte #0xee, #0x7a	;  31470
	.byte #0x25, #0x7b	;  31525
	.byte #0x5c, #0x7b	;  31580
	.byte #0x91, #0x7b	;  31633
	.byte #0xc4, #0x7b	;  31684
	.byte #0xf7, #0x7b	;  31735
	.byte #0x29, #0x7c	;  31785
	.byte #0x59, #0x7c	;  31833
	.byte #0x88, #0x7c	;  31880
	.byte #0xb6, #0x7c	;  31926
	.byte #0xe2, #0x7c	;  31970
	.byte #0x0e, #0x7d	;  32014
	.byte #0x38, #0x7d	;  32056
	.byte #0x61, #0x7d	;  32097
	.byte #0x89, #0x7d	;  32137
	.byte #0xb0, #0x7d	;  32176
	.byte #0xd5, #0x7d	;  32213
	.byte #0xf9, #0x7d	;  32249
	.byte #0x1c, #0x7e	;  32284
	.byte #0x3e, #0x7e	;  32318
	.byte #0x5e, #0x7e	;  32350
	.byte #0x7e, #0x7e	;  32382
	.byte #0x9c, #0x7e	;  32412
	.byte #0xb9, #0x7e	;  32441
	.byte #0xd4, #0x7e	;  32468
	.byte #0xef, #0x7e	;  32495
	.byte #0x08, #0x7f	;  32520
	.byte #0x20, #0x7f	;  32544
	.byte #0x37, #0x7f	;  32567
	.byte #0x4c, #0x7f	;  32588
	.byte #0x61, #0x7f	;  32609
	.byte #0x74, #0x7f	;  32628
	.byte #0x86, #0x7f	;  32646
	.byte #0x96, #0x7f	;  32662
	.byte #0xa6, #0x7f	;  32678
	.byte #0xb4, #0x7f	;  32692
	.byte #0xc1, #0x7f	;  32705
	.byte #0xcd, #0x7f	;  32717
	.byte #0xd7, #0x7f	;  32727
	.byte #0xe0, #0x7f	;  32736
	.byte #0xe8, #0x7f	;  32744
	.byte #0xef, #0x7f	;  32751
	.byte #0xf5, #0x7f	;  32757
	.byte #0xf9, #0x7f	;  32761
	.byte #0xfc, #0x7f	;  32764
	.byte #0xfe, #0x7f	;  32766
	.byte #0xff, #0x7f	;  32767
	.byte #0xfe, #0x7f	;  32766
	.byte #0xfc, #0x7f	;  32764
	.byte #0xf9, #0x7f	;  32761
	.byte #0xf5, #0x7f	;  32757
	.byte #0xef, #0x7f	;  32751
	.byte #0xe8, #0x7f	;  32744
	.byte #0xe0, #0x7f	;  32736
	.byte #0xd7, #0x7f	;  32727
	.byte #0xcd, #0x7f	;  32717
	.byte #0xc1, #0x7f	;  32705
	.byte #0xb4, #0x7f	;  32692
	.byte #0xa6, #0x7f	;  32678
	.byte #0x96, #0x7f	;  32662
	.byte #0x86, #0x7f	;  32646
	.byte #0x74, #0x7f	;  32628
	.byte #0x61, #0x7f	;  32609
	.byte #0x4c, #0x7f	;  32588
	.byte #0x37, #0x7f	;  32567
	.byte #0x20, #0x7f	;  32544
	.byte #0x08, #0x7f	;  32520
	.byte #0xef, #0x7e	;  32495
	.byte #0xd4, #0x7e	;  32468
	.byte #0xb9, #0x7e	;  32441
	.byte #0x9c, #0x7e	;  32412
	.byte #0x7e, #0x7e	;  32382
	.byte #0x5e, #0x7e	;  32350
	.byte #0x3e, #0x7e	;  32318
	.byte #0x1c, #0x7e	;  32284
	.byte #0xf9, #0x7d	;  32249
	.byte #0xd5, #0x7d	;  32213
	.byte #0xb0, #0x7d	;  32176
	.byte #0x89, #0x7d	;  32137
	.byte #0x61, #0x7d	;  32097
	.byte #0x38, #0x7d	;  32056
	.byte #0x0e, #0x7d	;  32014
	.byte #0xe2, #0x7c	;  31970
	.byte #0xb6, #0x7c	;  31926
	.byte #0x88, #0x7c	;  31880
	.byte #0x59, #0x7c	;  31833
	.byte #0x29, #0x7c	;  31785
	.byte #0xf7, #0x7b	;  31735
	.byte #0xc4, #0x7b	;  31684
	.byte #0x91, #0x7b	;  31633
	.byte #0x5c, #0x7b	;  31580
	.byte #0x25, #0x7b	;  31525
	.byte #0xee, #0x7a	;  31470
	.byte #0xb5, #0x7a	;  31413
	.byte #0x7c, #0x7a	;  31356
	.byte #0x41, #0x7a	;  31297
	.byte #0x04, #0x7a	;  31236
	.byte #0xc7, #0x79	;  31175
	.byte #0x89, #0x79	;  31113
	.byte #0x49, #0x79	;  31049
	.byte #0x08, #0x79	;  30984
	.byte #0xc6, #0x78	;  30918
	.byte #0x83, #0x78	;  30851
	.byte #0x3f, #0x78	;  30783
	.byte #0xf9, #0x77	;  30713
	.byte #0xb3, #0x77	;  30643
	.byte #0x6b, #0x77	;  30571
	.byte #0x22, #0x77	;  30498
	.byte #0xd8, #0x76	;  30424
	.byte #0x8d, #0x76	;  30349
	.byte #0x40, #0x76	;  30272
	.byte #0xf3, #0x75	;  30195
	.byte #0xa4, #0x75	;  30116
	.byte #0x54, #0x75	;  30036
	.byte #0x03, #0x75	;  29955
	.byte #0xb1, #0x74	;  29873
	.byte #0x5e, #0x74	;  29790
	.byte #0x0a, #0x74	;  29706
	.byte #0xb5, #0x73	;  29621
	.byte #0x5e, #0x73	;  29534
	.byte #0x06, #0x73	;  29446
	.byte #0xae, #0x72	;  29358
	.byte #0x54, #0x72	;  29268
	.byte #0xf9, #0x71	;  29177
	.byte #0x9d, #0x71	;  29085
	.byte #0x40, #0x71	;  28992
	.byte #0xe1, #0x70	;  28897
	.byte #0x82, #0x70	;  28802
	.byte #0x22, #0x70	;  28706
	.byte #0xc0, #0x6f	;  28608
	.byte #0x5e, #0x6f	;  28510
	.byte #0xfa, #0x6e	;  28410
	.byte #0x95, #0x6e	;  28309
	.byte #0x30, #0x6e	;  28208
	.byte #0xc9, #0x6d	;  28105
	.byte #0x61, #0x6d	;  28001
	.byte #0xf8, #0x6c	;  27896
	.byte #0x8e, #0x6c	;  27790
	.byte #0x23, #0x6c	;  27683
	.byte #0xb7, #0x6b	;  27575
	.byte #0x4a, #0x6b	;  27466
	.byte #0xdb, #0x6a	;  27355
	.byte #0x6c, #0x6a	;  27244
	.byte #0xfc, #0x69	;  27132
	.byte #0x8b, #0x69	;  27019
	.byte #0x19, #0x69	;  26905
	.byte #0xa5, #0x68	;  26789
	.byte #0x31, #0x68	;  26673
	.byte #0xbc, #0x67	;  26556
	.byte #0x45, #0x67	;  26437
	.byte #0xce, #0x66	;  26318
	.byte #0x56, #0x66	;  26198
	.byte #0xdd, #0x65	;  26077
	.byte #0x62, #0x65	;  25954
	.byte #0xe7, #0x64	;  25831
	.byte #0x6b, #0x64	;  25707
	.byte #0xee, #0x63	;  25582
	.byte #0x70, #0x63	;  25456
	.byte #0xf1, #0x62	;  25329
	.byte #0x71, #0x62	;  25201
	.byte #0xf0, #0x61	;  25072
	.byte #0x6e, #0x61	;  24942
	.byte #0xeb, #0x60	;  24811
	.byte #0x67, #0x60	;  24679
	.byte #0xe2, #0x5f	;  24546
	.byte #0x5d, #0x5f	;  24413
	.byte #0xd6, #0x5e	;  24278
	.byte #0x4f, #0x5e	;  24143
	.byte #0xc6, #0x5d	;  24006
	.byte #0x3d, #0x5d	;  23869
	.byte #0xb3, #0x5c	;  23731
	.byte #0x28, #0x5c	;  23592
	.byte #0x9c, #0x5b	;  23452
	.byte #0x0f, #0x5b	;  23311
	.byte #0x81, #0x5a	;  23169
	.byte #0xf3, #0x59	;  23027
	.byte #0x63, #0x59	;  22883
	.byte #0xd3, #0x58	;  22739
	.byte #0x42, #0x58	;  22594
	.byte #0xb0, #0x57	;  22448
	.byte #0x1d, #0x57	;  22301
	.byte #0x89, #0x56	;  22153
	.byte #0xf4, #0x55	;  22004
	.byte #0x5f, #0x55	;  21855
	.byte #0xc9, #0x54	;  21705
	.byte #0x32, #0x54	;  21554
	.byte #0x9a, #0x53	;  21402
	.byte #0x01, #0x53	;  21249
	.byte #0x68, #0x52	;  21096
	.byte #0xce, #0x51	;  20942
	.byte #0x33, #0x51	;  20787
	.byte #0x97, #0x50	;  20631
	.byte #0xfa, #0x4f	;  20474
	.byte #0x5d, #0x4f	;  20317
	.byte #0xbf, #0x4e	;  20159
	.byte #0x20, #0x4e	;  20000
	.byte #0x80, #0x4d	;  19840
	.byte #0xe0, #0x4c	;  19680
	.byte #0x3f, #0x4c	;  19519
	.byte #0x9d, #0x4b	;  19357
	.byte #0xfa, #0x4a	;  19194
	.byte #0x57, #0x4a	;  19031
	.byte #0xb3, #0x49	;  18867
	.byte #0x0e, #0x49	;  18702
	.byte #0x69, #0x48	;  18537
	.byte #0xc3, #0x47	;  18371
	.byte #0x1c, #0x47	;  18204
	.byte #0x74, #0x46	;  18036
	.byte #0xcc, #0x45	;  17868
	.byte #0x23, #0x45	;  17699
	.byte #0x7a, #0x44	;  17530
	.byte #0xd0, #0x43	;  17360
	.byte #0x25, #0x43	;  17189
	.byte #0x79, #0x42	;  17017
	.byte #0xcd, #0x41	;  16845
	.byte #0x20, #0x41	;  16672
	.byte #0x73, #0x40	;  16499
	.byte #0xc5, #0x3f	;  16325
	.byte #0x16, #0x3f	;  16150
	.byte #0x67, #0x3e	;  15975
	.byte #0xb7, #0x3d	;  15799
	.byte #0x07, #0x3d	;  15623
	.byte #0x56, #0x3c	;  15446
	.byte #0xa4, #0x3b	;  15268
	.byte #0xf2, #0x3a	;  15090
	.byte #0x3f, #0x3a	;  14911
	.byte #0x8c, #0x39	;  14732
	.byte #0xd8, #0x38	;  14552
	.byte #0x24, #0x38	;  14372
	.byte #0x6f, #0x37	;  14191
	.byte #0xb9, #0x36	;  14009
	.byte #0x03, #0x36	;  13827
	.byte #0x4d, #0x35	;  13645
	.byte #0x96, #0x34	;  13462
	.byte #0xde, #0x33	;  13278
	.byte #0x26, #0x33	;  13094
	.byte #0x6d, #0x32	;  12909
	.byte #0xb4, #0x31	;  12724
	.byte #0xfb, #0x30	;  12539
	.byte #0x41, #0x30	;  12353
	.byte #0x86, #0x2f	;  12166
	.byte #0xcc, #0x2e	;  11980
	.byte #0x10, #0x2e	;  11792
	.byte #0x54, #0x2d	;  11604
	.byte #0x98, #0x2c	;  11416
	.byte #0xdb, #0x2b	;  11227
	.byte #0x1e, #0x2b	;  11038
	.byte #0x61, #0x2a	;  10849
	.byte #0xa3, #0x29	;  10659
	.byte #0xe5, #0x28	;  10469
	.byte #0x26, #0x28	;  10278
	.byte #0x67, #0x27	;  10087
	.byte #0xa7, #0x26	;  9895
	.byte #0xe7, #0x25	;  9703
	.byte #0x27, #0x25	;  9511
	.byte #0x67, #0x24	;  9319
	.byte #0xa6, #0x23	;  9126
	.byte #0xe4, #0x22	;  8932
	.byte #0x23, #0x22	;  8739
	.byte #0x61, #0x21	;  8545
	.byte #0x9f, #0x20	;  8351
	.byte #0xdc, #0x1f	;  8156
	.byte #0x19, #0x1f	;  7961
	.byte #0x56, #0x1e	;  7766
	.byte #0x93, #0x1d	;  7571
	.byte #0xcf, #0x1c	;  7375
	.byte #0x0b, #0x1c	;  7179
	.byte #0x46, #0x1b	;  6982
	.byte #0x82, #0x1a	;  6786
	.byte #0xbd, #0x19	;  6589
	.byte #0xf8, #0x18	;  6392
	.byte #0x33, #0x18	;  6195
	.byte #0x6d, #0x17	;  5997
	.byte #0xa7, #0x16	;  5799
	.byte #0xe1, #0x15	;  5601
	.byte #0x1b, #0x15	;  5403
	.byte #0x55, #0x14	;  5205
	.byte #0x8e, #0x13	;  5006
	.byte #0xc7, #0x12	;  4807
	.byte #0x00, #0x12	;  4608
	.byte #0x39, #0x11	;  4409
	.byte #0x72, #0x10	;  4210
	.byte #0xab, #0x0f	;  4011
	.byte #0xe3, #0x0e	;  3811
	.byte #0x1b, #0x0e	;  3611
	.byte #0x53, #0x0d	;  3411
	.byte #0x8b, #0x0c	;  3211
	.byte #0xc3, #0x0b	;  3011
	.byte #0xfb, #0x0a	;  2811
	.byte #0x32, #0x0a	;  2610
	.byte #0x6a, #0x09	;  2410
	.byte #0xa1, #0x08	;  2209
	.byte #0xd9, #0x07	;  2009
	.byte #0x10, #0x07	;  1808
	.byte #0x47, #0x06	;  1607
	.byte #0x7e, #0x05	;  1406
	.byte #0xb6, #0x04	;  1206
	.byte #0xed, #0x03	;  1005
	.byte #0x24, #0x03	;  804
	.byte #0x5b, #0x02	;  603
	.byte #0x92, #0x01	;  402
	.byte #0xc9, #0x00	;  201
	.byte #0x00, #0x00	;  0
	.byte #0x37, #0xff	; -201
	.byte #0x6e, #0xfe	; -402
	.byte #0xa5, #0xfd	; -603
	.byte #0xdc, #0xfc	; -804
	.byte #0x13, #0xfc	; -1005
	.byte #0x4a, #0xfb	; -1206
	.byte #0x82, #0xfa	; -1406
	.byte #0xb9, #0xf9	; -1607
	.byte #0xf0, #0xf8	; -1808
	.byte #0x27, #0xf8	; -2009
	.byte #0x5f, #0xf7	; -2209
	.byte #0x96, #0xf6	; -2410
	.byte #0xce, #0xf5	; -2610
	.byte #0x05, #0xf5	; -2811
	.byte #0x3d, #0xf4	; -3011
	.byte #0x75, #0xf3	; -3211
	.byte #0xad, #0xf2	; -3411
	.byte #0xe5, #0xf1	; -3611
	.byte #0x1d, #0xf1	; -3811
	.byte #0x55, #0xf0	; -4011
	.byte #0x8e, #0xef	; -4210
	.byte #0xc7, #0xee	; -4409
	.byte #0x00, #0xee	; -4608
	.byte #0x39, #0xed	; -4807
	.byte #0x72, #0xec	; -5006
	.byte #0xab, #0xeb	; -5205
	.byte #0xe5, #0xea	; -5403
	.byte #0x1f, #0xea	; -5601
	.byte #0x59, #0xe9	; -5799
	.byte #0x93, #0xe8	; -5997
	.byte #0xcd, #0xe7	; -6195
	.byte #0x08, #0xe7	; -6392
	.byte #0x43, #0xe6	; -6589
	.byte #0x7e, #0xe5	; -6786
	.byte #0xba, #0xe4	; -6982
	.byte #0xf5, #0xe3	; -7179
	.byte #0x31, #0xe3	; -7375
	.byte #0x6d, #0xe2	; -7571
	.byte #0xaa, #0xe1	; -7766
	.byte #0xe7, #0xe0	; -7961
	.byte #0x24, #0xe0	; -8156
	.byte #0x61, #0xdf	; -8351
	.byte #0x9f, #0xde	; -8545
	.byte #0xdd, #0xdd	; -8739
	.byte #0x1c, #0xdd	; -8932
	.byte #0x5a, #0xdc	; -9126
	.byte #0x99, #0xdb	; -9319
	.byte #0xd9, #0xda	; -9511
	.byte #0x19, #0xda	; -9703
	.byte #0x59, #0xd9	; -9895
	.byte #0x99, #0xd8	; -10087
	.byte #0xda, #0xd7	; -10278
	.byte #0x1b, #0xd7	; -10469
	.byte #0x5d, #0xd6	; -10659
	.byte #0x9f, #0xd5	; -10849
	.byte #0xe2, #0xd4	; -11038
	.byte #0x25, #0xd4	; -11227
	.byte #0x68, #0xd3	; -11416
	.byte #0xac, #0xd2	; -11604
	.byte #0xf0, #0xd1	; -11792
	.byte #0x34, #0xd1	; -11980
	.byte #0x7a, #0xd0	; -12166
	.byte #0xbf, #0xcf	; -12353
	.byte #0x05, #0xcf	; -12539
	.byte #0x4c, #0xce	; -12724
	.byte #0x93, #0xcd	; -12909
	.byte #0xda, #0xcc	; -13094
	.byte #0x22, #0xcc	; -13278
	.byte #0x6a, #0xcb	; -13462
	.byte #0xb3, #0xca	; -13645
	.byte #0xfd, #0xc9	; -13827
	.byte #0x47, #0xc9	; -14009
	.byte #0x91, #0xc8	; -14191
	.byte #0xdc, #0xc7	; -14372
	.byte #0x28, #0xc7	; -14552
	.byte #0x74, #0xc6	; -14732
	.byte #0xc1, #0xc5	; -14911
	.byte #0x0e, #0xc5	; -15090
	.byte #0x5c, #0xc4	; -15268
	.byte #0xaa, #0xc3	; -15446
	.byte #0xf9, #0xc2	; -15623
	.byte #0x49, #0xc2	; -15799
	.byte #0x99, #0xc1	; -15975
	.byte #0xea, #0xc0	; -16150
	.byte #0x3b, #0xc0	; -16325
	.byte #0x8d, #0xbf	; -16499
	.byte #0xe0, #0xbe	; -16672
	.byte #0x33, #0xbe	; -16845
	.byte #0x87, #0xbd	; -17017
	.byte #0xdb, #0xbc	; -17189
	.byte #0x30, #0xbc	; -17360
	.byte #0x86, #0xbb	; -17530
	.byte #0xdd, #0xba	; -17699
	.byte #0x34, #0xba	; -17868
	.byte #0x8c, #0xb9	; -18036
	.byte #0xe4, #0xb8	; -18204
	.byte #0x3d, #0xb8	; -18371
	.byte #0x97, #0xb7	; -18537
	.byte #0xf2, #0xb6	; -18702
	.byte #0x4d, #0xb6	; -18867
	.byte #0xa9, #0xb5	; -19031
	.byte #0x06, #0xb5	; -19194
	.byte #0x63, #0xb4	; -19357
	.byte #0xc1, #0xb3	; -19519
	.byte #0x20, #0xb3	; -19680
	.byte #0x80, #0xb2	; -19840
	.byte #0xe0, #0xb1	; -20000
	.byte #0x41, #0xb1	; -20159
	.byte #0xa3, #0xb0	; -20317
	.byte #0x06, #0xb0	; -20474
	.byte #0x69, #0xaf	; -20631
	.byte #0xcd, #0xae	; -20787
	.byte #0x32, #0xae	; -20942
	.byte #0x98, #0xad	; -21096
	.byte #0xff, #0xac	; -21249
	.byte #0x66, #0xac	; -21402
	.byte #0xce, #0xab	; -21554
	.byte #0x37, #0xab	; -21705
	.byte #0xa1, #0xaa	; -21855
	.byte #0x0c, #0xaa	; -22004
	.byte #0x77, #0xa9	; -22153
	.byte #0xe3, #0xa8	; -22301
	.byte #0x50, #0xa8	; -22448
	.byte #0xbe, #0xa7	; -22594
	.byte #0x2d, #0xa7	; -22739
	.byte #0x9d, #0xa6	; -22883
	.byte #0x0d, #0xa6	; -23027
	.byte #0x7f, #0xa5	; -23169
	.byte #0xf1, #0xa4	; -23311
	.byte #0x64, #0xa4	; -23452
	.byte #0xd8, #0xa3	; -23592
	.byte #0x4d, #0xa3	; -23731
	.byte #0xc3, #0xa2	; -23869
	.byte #0x3a, #0xa2	; -24006
	.byte #0xb1, #0xa1	; -24143
	.byte #0x2a, #0xa1	; -24278
	.byte #0xa3, #0xa0	; -24413
	.byte #0x1e, #0xa0	; -24546
	.byte #0x99, #0x9f	; -24679
	.byte #0x15, #0x9f	; -24811
	.byte #0x92, #0x9e	; -24942
	.byte #0x10, #0x9e	; -25072
	.byte #0x8f, #0x9d	; -25201
	.byte #0x0f, #0x9d	; -25329
	.byte #0x90, #0x9c	; -25456
	.byte #0x12, #0x9c	; -25582
	.byte #0x95, #0x9b	; -25707
	.byte #0x19, #0x9b	; -25831
	.byte #0x9e, #0x9a	; -25954
	.byte #0x23, #0x9a	; -26077
	.byte #0xaa, #0x99	; -26198
	.byte #0x32, #0x99	; -26318
	.byte #0xbb, #0x98	; -26437
	.byte #0x44, #0x98	; -26556
	.byte #0xcf, #0x97	; -26673
	.byte #0x5b, #0x97	; -26789
	.byte #0xe7, #0x96	; -26905
	.byte #0x75, #0x96	; -27019
	.byte #0x04, #0x96	; -27132
	.byte #0x94, #0x95	; -27244
	.byte #0x25, #0x95	; -27355
	.byte #0xb6, #0x94	; -27466
	.byte #0x49, #0x94	; -27575
	.byte #0xdd, #0x93	; -27683
	.byte #0x72, #0x93	; -27790
	.byte #0x08, #0x93	; -27896
	.byte #0x9f, #0x92	; -28001
	.byte #0x37, #0x92	; -28105
	.byte #0xd0, #0x91	; -28208
	.byte #0x6b, #0x91	; -28309
	.byte #0x06, #0x91	; -28410
	.byte #0xa2, #0x90	; -28510
	.byte #0x40, #0x90	; -28608
	.byte #0xde, #0x8f	; -28706
	.byte #0x7e, #0x8f	; -28802
	.byte #0x1f, #0x8f	; -28897
	.byte #0xc0, #0x8e	; -28992
	.byte #0x63, #0x8e	; -29085
	.byte #0x07, #0x8e	; -29177
	.byte #0xac, #0x8d	; -29268
	.byte #0x52, #0x8d	; -29358
	.byte #0xfa, #0x8c	; -29446
	.byte #0xa2, #0x8c	; -29534
	.byte #0x4b, #0x8c	; -29621
	.byte #0xf6, #0x8b	; -29706
	.byte #0xa2, #0x8b	; -29790
	.byte #0x4f, #0x8b	; -29873
	.byte #0xfd, #0x8a	; -29955
	.byte #0xac, #0x8a	; -30036
	.byte #0x5c, #0x8a	; -30116
	.byte #0x0d, #0x8a	; -30195
	.byte #0xc0, #0x89	; -30272
	.byte #0x73, #0x89	; -30349
	.byte #0x28, #0x89	; -30424
	.byte #0xde, #0x88	; -30498
	.byte #0x95, #0x88	; -30571
	.byte #0x4d, #0x88	; -30643
	.byte #0x07, #0x88	; -30713
	.byte #0xc1, #0x87	; -30783
	.byte #0x7d, #0x87	; -30851
	.byte #0x3a, #0x87	; -30918
	.byte #0xf8, #0x86	; -30984
	.byte #0xb7, #0x86	; -31049
	.byte #0x77, #0x86	; -31113
	.byte #0x39, #0x86	; -31175
	.byte #0xfc, #0x85	; -31236
	.byte #0xbf, #0x85	; -31297
	.byte #0x84, #0x85	; -31356
	.byte #0x4b, #0x85	; -31413
	.byte #0x12, #0x85	; -31470
	.byte #0xdb, #0x84	; -31525
	.byte #0xa4, #0x84	; -31580
	.byte #0x6f, #0x84	; -31633
	.byte #0x3c, #0x84	; -31684
	.byte #0x09, #0x84	; -31735
	.byte #0xd7, #0x83	; -31785
	.byte #0xa7, #0x83	; -31833
	.byte #0x78, #0x83	; -31880
	.byte #0x4a, #0x83	; -31926
	.byte #0x1e, #0x83	; -31970
	.byte #0xf2, #0x82	; -32014
	.byte #0xc8, #0x82	; -32056
	.byte #0x9f, #0x82	; -32097
	.byte #0x77, #0x82	; -32137
	.byte #0x50, #0x82	; -32176
	.byte #0x2b, #0x82	; -32213
	.byte #0x07, #0x82	; -32249
	.byte #0xe4, #0x81	; -32284
	.byte #0xc2, #0x81	; -32318
	.byte #0xa2, #0x81	; -32350
	.byte #0x82, #0x81	; -32382
	.byte #0x64, #0x81	; -32412
	.byte #0x47, #0x81	; -32441
	.byte #0x2c, #0x81	; -32468
	.byte #0x11, #0x81	; -32495
	.byte #0xf8, #0x80	; -32520
	.byte #0xe0, #0x80	; -32544
	.byte #0xc9, #0x80	; -32567
	.byte #0xb4, #0x80	; -32588
	.byte #0x9f, #0x80	; -32609
	.byte #0x8c, #0x80	; -32628
	.byte #0x7a, #0x80	; -32646
	.byte #0x6a, #0x80	; -32662
	.byte #0x5a, #0x80	; -32678
	.byte #0x4c, #0x80	; -32692
	.byte #0x3f, #0x80	; -32705
	.byte #0x33, #0x80	; -32717
	.byte #0x29, #0x80	; -32727
	.byte #0x20, #0x80	; -32736
	.byte #0x18, #0x80	; -32744
	.byte #0x11, #0x80	; -32751
	.byte #0x0b, #0x80	; -32757
	.byte #0x07, #0x80	; -32761
	.byte #0x04, #0x80	; -32764
	.byte #0x02, #0x80	; -32766
	.area CABS    (ABS,CODE)
