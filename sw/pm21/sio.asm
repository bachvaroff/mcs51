;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module sio
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _putchar
	.globl _getchar
	.globl _getchar_poll
	.globl _printstr
	.globl _print8bin
	.globl _print16bin
	.globl _print32bin
	.globl _print8x
	.globl _print16x
	.globl _print32x
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
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
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	sio.c:10: int putchar(int c) __naked {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	naked function: no prologue.
;	sio.c:18: __endasm;
	push	acc
	mov	a, dpl
	lcall	0x003c
	pop	acc
	ret
;	sio.c:19: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	sio.c:21: int getchar(void) __naked {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	naked function: no prologue.
;	sio.c:29: __endasm;
	push	acc
	lcall	0x0036
	mov	dpl, a
	mov	dph, #0
	pop	acc
	ret
;	sio.c:30: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_poll'
;------------------------------------------------------------
;	sio.c:32: int getchar_poll(void) __naked {
;	-----------------------------------------
;	 function getchar_poll
;	-----------------------------------------
_getchar_poll:
;	naked function: no prologue.
;	sio.c:47: __endasm;
	push	acc
	push	b
	mov	a, #0xff
	mov	b, a
	lcall	0x0039
	jc	nochar
	mov	b, #0x00
	nochar:
	mov	dpl, a
	mov	dph, b
	pop	b
	pop	acc
	ret
;	sio.c:48: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'printstr'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	sio.c:50: void printstr(const char *s) {
;	-----------------------------------------
;	 function printstr
;	-----------------------------------------
_printstr:
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
;	sio.c:53: return;
00103$:
;	sio.c:51: for (; *s; s++) putchar((int)*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00101$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00101$:
;	sio.c:53: return;
;	sio.c:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print8bin'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;mask                      Allocated to registers r6 
;------------------------------------------------------------
;	sio.c:56: void print8bin(unsigned char d) {
;	-----------------------------------------
;	 function print8bin
;	-----------------------------------------
_print8bin:
	mov	r7,dpl
;	sio.c:59: for (mask = 0x80u; mask; mask >>= 1)
	mov	r6,#0x80
00102$:
;	sio.c:60: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,r6
	anl	a,r7
	jz	00106$
	mov	r4,#0x31
	mov	r5,#0x00
	sjmp	00107$
00106$:
	mov	r4,#0x30
	mov	r5,#0x00
00107$:
	mov	dpl,r4
	mov	dph,r5
	lcall	_putchar
;	sio.c:59: for (mask = 0x80u; mask; mask >>= 1)
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
	jnz	00102$
;	sio.c:62: return;
;	sio.c:63: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print16bin'
;------------------------------------------------------------
;d                         Allocated to registers r6 r7 
;mask                      Allocated to registers r4 r5 
;------------------------------------------------------------
;	sio.c:65: void print16bin(unsigned int d) {
;	-----------------------------------------
;	 function print16bin
;	-----------------------------------------
_print16bin:
	mov	r6,dpl
	mov	r7,dph
;	sio.c:68: for (mask = 0x8000u; mask; mask >>= 1)
	mov	r4,#0x00
	mov	r5,#0x80
00102$:
;	sio.c:69: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,r4
	anl	a,r6
	mov	r2,a
	mov	a,r5
	anl	a,r7
	orl	a,r2
	jz	00106$
	mov	r2,#0x31
	mov	r3,#0x00
	sjmp	00107$
00106$:
	mov	r2,#0x30
	mov	r3,#0x00
00107$:
	mov	dpl,r2
	mov	dph,r3
	lcall	_putchar
;	sio.c:68: for (mask = 0x8000u; mask; mask >>= 1)
	mov	a,r5
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	orl	a,r4
	jnz	00102$
;	sio.c:71: return;
;	sio.c:72: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print32bin'
;------------------------------------------------------------
;d                         Allocated to stack - _bp +1
;mask                      Allocated to stack - _bp +5
;------------------------------------------------------------
;	sio.c:74: void print32bin(unsigned long d) {
;	-----------------------------------------
;	 function print32bin
;	-----------------------------------------
_print32bin:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	sio.c:77: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00102$:
;	sio.c:78: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r1
	anl	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	r5,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00106$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00107$
00106$:
	mov	r6,#0x30
	mov	r7,#0x00
00107$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	sio.c:77: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	sio.c:80: return;
;	sio.c:81: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print8x'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;------------------------------------------------------------
;	sio.c:83: void print8x(unsigned char d) {
;	-----------------------------------------
;	 function print8x
;	-----------------------------------------
_print8x:
;	sio.c:84: putchar(digits[(d >> 4) & 0xf]);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	r6,a
	anl	ar6,#0x0f
	mov	r5,#0x00
	mov	a,r6
	add	a,#_digits
	mov	dpl,a
	mov	a,r5
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r5
	lcall	_putchar
;	sio.c:85: putchar(digits[d & 0xf]);
	anl	ar7,#0x0f
	mov	r6,#0x00
	mov	a,r7
	add	a,#_digits
	mov	dpl,a
	mov	a,r6
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
;	sio.c:87: return;
;	sio.c:88: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'print16x'
;------------------------------------------------------------
;d                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	sio.c:90: void print16x(unsigned int d) {
;	-----------------------------------------
;	 function print16x
;	-----------------------------------------
_print16x:
	mov	r6,dpl
;	sio.c:91: putchar(digits[(d >> 12) & 0xf]);
	mov	a,dph
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	r4,a
	anl	ar4,#0x0f
	mov	r5,#0x00
	mov	a,r4
	add	a,#_digits
	mov	dpl,a
	mov	a,r5
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	sio.c:92: putchar(digits[(d >> 8) & 0xf]);
	mov	ar5,r7
	anl	ar5,#0x0f
	mov	r4,#0x00
	mov	a,r5
	add	a,#_digits
	mov	dpl,a
	mov	a,r4
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	sio.c:93: putchar(digits[(d >> 4) & 0xf]);
	mov	ar4,r6
	mov	a,r7
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	ar4,#0x0f
	mov	r5,#0x00
	mov	a,r4
	add	a,#_digits
	mov	dpl,a
	mov	a,r5
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	sio.c:94: putchar(digits[d & 0xf]);
	anl	ar6,#0x0f
	mov	r7,#0x00
	mov	a,r6
	add	a,#_digits
	mov	dpl,a
	mov	a,r7
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
;	sio.c:96: return;
;	sio.c:97: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'print32x'
;------------------------------------------------------------
;d                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	sio.c:99: void print32x(unsigned long d) {
;	-----------------------------------------
;	 function print32x
;	-----------------------------------------
_print32x:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
;	sio.c:100: putchar(digits[(d >> 28) & 0xf]);
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	r0,a
	anl	ar0,#0x0f
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_digits
	mov	dpl,a
	mov	a,r1
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
;	sio.c:101: putchar(digits[(d >> 24) & 0xf]);
	mov	ar3,r7
	anl	ar3,#0x0f
	mov	r2,#0x00
	mov	a,r3
	add	a,#_digits
	mov	dpl,a
	mov	a,r2
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
;	sio.c:102: putchar(digits[(d >> 20) & 0xf]);
	mov	ar0,r6
	mov	a,r7
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	ar0,#0x0f
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_digits
	mov	dpl,a
	mov	a,r1
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
;	sio.c:103: putchar(digits[(d >> 16) & 0xf]);
	mov	ar3,r6
	anl	ar3,#0x0f
	mov	r2,#0x00
	mov	a,r3
	add	a,#_digits
	mov	dpl,a
	mov	a,r2
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
;	sio.c:104: putchar(digits[(d >> 12) & 0xf]);
	mov	ar0,r5
	mov	a,r6
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	mov	r1,a
	mov	a,r7
	swap	a
	anl	a,#0xf0
	orl	a,r1
	mov	a,r7
	swap	a
	anl	a,#0x0f
	anl	ar0,#0x0f
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_digits
	mov	dpl,a
	mov	a,r1
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
;	sio.c:105: putchar(digits[(d >> 8) & 0xf]);
	mov	ar3,r5
	anl	ar3,#0x0f
	mov	r2,#0x00
	mov	a,r3
	add	a,#_digits
	mov	dpl,a
	mov	a,r2
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
;	sio.c:106: putchar(digits[(d >> 4) & 0xf]);
	mov	ar0,r4
	mov	a,r5
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	mov	r1,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r1
	mov	ar2,r6
	mov	a,r7
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	ar0,#0x0f
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_digits
	mov	dpl,a
	mov	a,r1
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
;	sio.c:107: putchar(digits[d & 0xf]);
	anl	ar4,#0x0f
	clr	a
	mov	r5,a
	mov	a,r4
	add	a,#_digits
	mov	dpl,a
	mov	a,r5
	addc	a,#(_digits >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
;	sio.c:109: return;
;	sio.c:110: }
	ljmp	_putchar
	.area CSEG    (CODE)
	.area CONST   (CODE)
_digits:
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
