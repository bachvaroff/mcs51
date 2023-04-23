;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module walk
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _int0
	.globl _srand
	.globl _rand
	.globl _puts
	.globl _printf
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
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_i0:
	.ds 1
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
_g:
	.ds 9216
_stack:
	.ds 36864
_sp:
	.ds 2
_main_R_65536_64:
	.ds 2
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_int0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;initial                   Allocated to stack - _bp +5
;i                         Allocated to stack - _bp +3
;j                         Allocated to registers r4 r5 
;sloc0                     Allocated to stack - _bp +1
;R                         Allocated with name '_main_R_65536_64'
;------------------------------------------------------------
;	walk.c:133: static volatile __xdata int *R = (__xdata int *)0xfffe;
	mov	dptr,#_main_R_65536_64
	mov	a,#0xfe
	movx	@dptr,a
	inc	a
	inc	dptr
	movx	@dptr,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	walk.c:8: int putchar(int c) __naked {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	naked function: no prologue.
;	walk.c:13: __endasm;
	mov	a, dpl
	ljmp	0x0030
;	walk.c:14: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	walk.c:16: int getchar(void) __naked {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	naked function: no prologue.
;	walk.c:22: __endasm;
	lcall	0x0032
	mov	dpl, a
	mov	dph, #0
	ret
;	walk.c:23: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'int0'
;------------------------------------------------------------
;	walk.c:27: void int0(void) __interrupt IE0_VECTOR __using 1 {
;	-----------------------------------------
;	 function int0
;	-----------------------------------------
_int0:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	psw
	mov	psw,#0x08
;	walk.c:28: i0 = 0;
	mov	r0,#_i0
	mov	@r0,#0x00
;	walk.c:29: }
	pop	psw
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'reset'
;------------------------------------------------------------
;	walk.c:31: static void reset(void) __naked {
;	-----------------------------------------
;	 function reset
;	-----------------------------------------
_reset:
;	naked function: no prologue.
;	walk.c:34: __endasm;
	orl	pcon, #2
;	walk.c:35: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'update'
;------------------------------------------------------------
;cur                       Allocated to stack - _bp -5
;j                         Allocated to stack - _bp -7
;t                         Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +6
;sloc2                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	walk.c:73: static int update(struct node *t, struct node *cur, int j) {
;	-----------------------------------------
;	 function update
;	-----------------------------------------
_update:
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
	add	a,#0x07
	mov	sp,a
;	walk.c:74: t->r = cur->r + neigh[j].r;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
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
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r0
	add	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	rlc	a
	inc	r1
	mov	@r1,a
	dec	r1
	mov	a,@r1
	add	a,@r1
	mov	@r1,a
	inc	r1
	mov	a,@r1
	rlc	a
	mov	@r1,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	add	a,#_neigh
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#(_neigh >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r7,a
	mov	a,r6
	inc	r0
	addc	a,@r0
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
;	walk.c:75: t->c = cur->c + neigh[j].c;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x08
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
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	add	a,#_neigh
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,#(_neigh >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	walk.c:77: if (t->r < 0) t->r += ROWS;
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
	mov	r4,a
	mov	a,r6
	jnb	acc.7,00104$
	mov	a,#0x30
	add	a,r5
	mov	r7,a
	clr	a
	addc	a,r4
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
	sjmp	00105$
00104$:
;	walk.c:78: else if (t->r >= ROWS) t->r -= ROWS;
	clr	c
	mov	a,r5
	subb	a,#0x30
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
	mov	a,r5
	add	a,#0xd0
	mov	r5,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
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
	mov	a,r4
	lcall	__gptrput
00105$:
;	walk.c:79: if (t->c < 0) t->c += COLS;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	inc	dptr
	lcall	__gptrget
	jnb	acc.7,00109$
	mov	a,_bp
	add	a,#0x08
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
	mov	a,#0xc0
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
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
	sjmp	00110$
00109$:
;	walk.c:80: else if (t->c >= COLS) t->c -= COLS;
	mov	a,_bp
	add	a,#0x08
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
	clr	c
	mov	a,r6
	subb	a,#0xc0
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00110$
	mov	a,_bp
	add	a,#0x08
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
	mov	a,r6
	add	a,#0x40
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
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
00110$:
;	walk.c:82: if (g[t->r][t->c] == 0xaa) return 0;
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
	push	ar6
	push	ar7
	mov	dptr,#0x00c0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,r6
	add	a,#_g
	mov	r6,a
	mov	a,r7
	addc	a,#(_g >> 8)
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
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
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xaa,00114$
	mov	dptr,#0x0000
	sjmp	00116$
00114$:
;	walk.c:83: else if (g[t->r][t->c] != 0x55) {
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
	push	ar6
	push	ar7
	mov	dptr,#0x00c0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,r6
	add	a,#_g
	mov	r6,a
	mov	a,r7
	addc	a,#(_g >> 8)
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
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
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x55,00148$
	sjmp	00115$
00148$:
;	walk.c:84: (void)puts("Memory error");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_puts
;	walk.c:85: reset();
	lcall	_reset
00115$:
;	walk.c:88: return 1;
	mov	dptr,#0x0001
00116$:
;	walk.c:89: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'walk'
;------------------------------------------------------------
;nstart                    Allocated to registers 
;cur                       Allocated to stack - _bp +10
;t                         Allocated to stack - _bp +14
;j                         Allocated to stack - _bp +18
;f                         Allocated to stack - _bp +20
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;sloc2                     Allocated to stack - _bp +3
;sloc3                     Allocated to stack - _bp +19
;sloc4                     Allocated to stack - _bp +4
;sloc5                     Allocated to stack - _bp +5
;sloc6                     Allocated to stack - _bp +6
;sloc7                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	walk.c:91: static void walk(struct node *nstart) {
;	-----------------------------------------
;	 function walk
;	-----------------------------------------
_walk:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x15
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	walk.c:95: cur = *nstart;
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar1
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar1
;	walk.c:97: process:
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar1
	mov	a,_bp
	add	a,#0x0e
	mov	r6,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar1
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar1
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	mov	ar2,r1
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar1
	mov	a,#0x02
	add	a,r1
	mov	r0,a
00101$:
;	walk.c:98: g[cur.r][cur.c] = 0xaa;
	push	ar2
	mov	ar2,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	push	ar6
	push	ar1
	push	ar0
	push	ar2
	push	ar5
	mov	dptr,#0x00c0
	lcall	__mulint
	mov	r2,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	mov	a,r2
	add	a,#_g
	mov	r7,a
	mov	a,r5
	addc	a,#(_g >> 8)
	mov	r4,a
	mov	ar2,@r0
	inc	r0
	mov	ar5,@r0
	dec	r0
	mov	a,r2
	add	a,r7
	mov	dpl,a
	mov	a,r5
	addc	a,r4
	mov	dph,a
	mov	a,#0xaa
	movx	@dptr,a
;	walk.c:99: printf("\033[%d;%dHo", cur.r + 3, cur.c + 1);
	mov	ar2,@r0
	inc	r0
	mov	ar5,@r0
	dec	r0
	mov	a,#0x01
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r4,a
	mov	ar2,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r5,a
	push	ar2
	push	ar1
	push	ar0
	push	ar7
	push	ar4
	push	ar2
	push	ar5
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
;	walk.c:129: return;
	pop	ar2
;	walk.c:101: next:
00102$:
;	walk.c:102: printf("\033[1;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
	push	ar2
	mov	ar7,@r0
	inc	r0
	mov	ar4,@r0
	dec	r0
	mov	ar2,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	push	ar6
	push	ar2
	push	ar1
	push	ar0
	push	ar7
	push	ar4
	push	ar2
	push	ar5
	mov	dptr,#_sp
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
;	walk.c:104: for (j = 0, f = 0; j < NMAX; j++) {
	push	ar0
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	pop	ar0
;	walk.c:129: return;
	pop	ar2
;	walk.c:104: for (j = 0, f = 0; j < NMAX; j++) {
00120$:
	push	ar0
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x08
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	pop	ar0
	jc	00160$
	ljmp	00106$
00160$:
;	walk.c:105: if (!update(&t, &cur, j)) continue;
	push	ar2
	push	ar0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	pop	ar1
	pop	ar0
	mov	ar4,r6
	mov	r5,#0x00
	mov	r7,#0x40
	push	ar6
	push	ar2
	push	ar1
	push	ar0
	mov	b,ar0
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_update
	mov	r5,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
	pop	ar2
	mov	a,r5
	orl	a,r7
	jz	00105$
;	walk.c:106: f++;
	push	ar0
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00162$
	inc	r0
	inc	@r0
00162$:
	pop	ar0
00105$:
;	walk.c:104: for (j = 0, f = 0; j < NMAX; j++) {
	push	ar0
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00163$
	inc	r0
	inc	@r0
00163$:
	pop	ar0
	ljmp	00120$
00106$:
;	walk.c:109: if (f) {
	push	ar0
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	pop	ar0
	jnz	00164$
	ljmp	00115$
00164$:
;	walk.c:110: while (1) {
00112$:
;	walk.c:111: j = rand() % NMAX;
	push	ar2
	push	ar6
	push	ar2
	push	ar1
	push	ar0
	lcall	_rand
	mov	r5,dpl
	mov	r7,dph
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r7
	lcall	__modsint
	push	ar0
	xch	a,r0
	mov	a,_bp
	add	a,#0x12
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar0
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
;	walk.c:112: if (!update(&t, &cur, j)) continue;
	push	ar0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	pop	ar1
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar4,@r0
	mov	r5,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar6
	push	ar2
	push	ar1
	push	ar0
	mov	b,ar0
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_update
	mov	r5,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
	pop	ar2
	mov	a,r5
	orl	a,r7
	jnz	00165$
	ljmp	00112$
00165$:
;	walk.c:114: if (!stpush(&cur)) {
	mov	ar4,r2
	mov	r5,#0x00
	mov	r7,#0x40
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	push	ar6
	push	ar2
	push	ar1
	push	ar0
	lcall	_stpush
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
	orl	a,b
	jnz	00110$
;	walk.c:115: (void)puts("Memory error");
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar6
	push	ar2
	push	ar1
	push	ar0
	lcall	_puts
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
;	walk.c:116: reset();
	lcall	_reset
00110$:
;	walk.c:118: cur = t;
	push	ar2
	push	ar0
	mov	r0,_bp
	inc	r0
	push	ar1
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	pop	ar1
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r7,#0x40
	pop	ar0
	push	ar6
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	b,ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
;	walk.c:119: goto process;
	pop	ar2
	ljmp	00101$
00115$:
;	walk.c:123: printf("\033[%d;%dH.", cur.r + 3, cur.c + 1);
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	inc	r5
	cjne	r5,#0x00,00167$
	inc	r7
00167$:
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	dec	r1
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	push	ar6
	push	ar2
	push	ar1
	push	ar0
	push	ar5
	push	ar7
	push	ar3
	push	ar4
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
;	walk.c:125: if (!stpop(&cur)) goto term;
	push	ar0
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar4,@r0
	mov	r5,#0x00
	mov	r7,#0x40
	pop	ar0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	push	ar6
	push	ar2
	push	ar1
	push	ar0
	lcall	_stpop
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
	orl	a,b
	jz	00168$
	ljmp	00102$
00168$:
;	walk.c:129: return;
;	walk.c:130: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;initial                   Allocated to stack - _bp +5
;i                         Allocated to stack - _bp +3
;j                         Allocated to registers r4 r5 
;sloc0                     Allocated to stack - _bp +1
;R                         Allocated with name '_main_R_65536_64'
;------------------------------------------------------------
;	walk.c:132: int main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x08
	mov	sp,a
;	walk.c:137: i0 = 1;
	mov	r0,#_i0
	mov	@r0,#0x01
;	walk.c:139: IT0 = 1;
;	assignBit
	setb	_IT0
;	walk.c:140: EX0 = 1;
;	assignBit
	setb	_EX0
;	walk.c:141: EA = 1;
;	assignBit
	setb	_EA
;	walk.c:143: srand(*R);
	mov	dptr,#_main_R_65536_64
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_srand
;	walk.c:144: stinit();
	lcall	_stinit
;	walk.c:146: while (i0) {
	mov	a,_bp
	add	a,#0x05
	mov	r7,a
	mov	r6,a
00107$:
	mov	r0,#_i0
	mov	a,@r0
	jnz	00168$
	ljmp	00109$
00168$:
;	walk.c:147: for (i = 0; i < ROWS; i++)
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r2,#0x00
	mov	r3,#0x00
;	walk.c:148: for (j = 0; j < COLS; j++)
00121$:
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,#_g
	mov	@r0,a
	mov	a,r3
	addc	a,#(_g >> 8)
	inc	r0
	mov	@r0,a
	mov	r4,#0x00
	mov	r5,#0x00
00110$:
;	walk.c:149: g[i][j] = 0x55;
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	dpl,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	dph,a
	mov	a,#0x55
	movx	@dptr,a
;	walk.c:148: for (j = 0; j < COLS; j++)
	inc	r4
	cjne	r4,#0x00,00169$
	inc	r5
00169$:
	clr	c
	mov	a,r4
	subb	a,#0xc0
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00110$
;	walk.c:147: for (i = 0; i < ROWS; i++)
	mov	a,#0xc0
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00171$
	inc	r0
	inc	@r0
00171$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00121$
;	walk.c:151: puts("\033[2J");
	mov	dptr,#___str_4
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_puts
;	walk.c:152: initial.r = rand() % ROWS;
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	push	ar1
	lcall	_rand
	mov	r4,dpl
	mov	r5,dph
	mov	a,#0x30
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	lcall	__modsint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar6
	pop	ar7
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	dec	r1
;	walk.c:153: initial.c = rand() % COLS;
	mov	a,#0x02
	add	a,r7
	mov	r1,a
	push	ar7
	push	ar6
	push	ar1
	lcall	_rand
	mov	r4,dpl
	mov	r5,dph
	mov	a,#0xc0
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	lcall	__modsint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar6
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	dec	r1
;	walk.c:154: walk(&initial);
	mov	ar3,r6
	mov	r4,#0x00
	mov	r5,#0x40
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar6
	lcall	_walk
	pop	ar6
	pop	ar7
;	walk.c:156: for (i = 0; i < ROWS; i++)
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r2,#0x00
	mov	r3,#0x00
;	walk.c:157: for (j = 0; j < COLS; j++)
00126$:
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,#_g
	mov	@r0,a
	mov	a,r3
	addc	a,#(_g >> 8)
	inc	r0
	mov	@r0,a
	mov	r4,#0x00
	mov	r5,#0x00
00114$:
;	walk.c:158: if (g[i][j] != 0xaa) {
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	dpl,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0xaa,00173$
	pop	ar6
	sjmp	00115$
00173$:
	pop	ar6
;	walk.c:159: (void)puts("Memory error");
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_puts
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	walk.c:160: reset();
	lcall	_reset
00115$:
;	walk.c:157: for (j = 0; j < COLS; j++)
	inc	r4
	cjne	r4,#0x00,00174$
	inc	r5
00174$:
	clr	c
	mov	a,r4
	subb	a,#0xc0
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00114$
;	walk.c:156: for (i = 0; i < ROWS; i++)
	mov	a,#0xc0
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00176$
	inc	r0
	inc	@r0
00176$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00177$
	ljmp	00126$
00177$:
	ljmp	00107$
00109$:
;	walk.c:164: EA = 0;
;	assignBit
	clr	_EA
;	walk.c:168: __endasm;
	ljmp	0
;	walk.c:170: return 0;
	mov	dptr,#0x0000
;	walk.c:171: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stinit'
;------------------------------------------------------------
;	walk.c:173: static void stinit(void) {
;	-----------------------------------------
;	 function stinit
;	-----------------------------------------
_stinit:
;	walk.c:174: sp = -1;
	mov	dptr,#_sp
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	walk.c:175: return;
;	walk.c:176: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stpush'
;------------------------------------------------------------
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	walk.c:178: static int stpush(struct node *t) {
;	-----------------------------------------
;	 function stpush
;	-----------------------------------------
_stpush:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	walk.c:179: if (sp == (SMAX - 1)) return 0;
	mov	dptr,#_sp
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r3,#0xff,00102$
	cjne	r4,#0x23,00102$
	mov	dptr,#0x0000
	ret
00102$:
;	walk.c:180: sp++;
	mov	dptr,#_sp
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
;	walk.c:181: stack[sp] = *t;
	mov	dptr,#_sp
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
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
	add	a,#_stack
	mov	r3,a
	mov	a,r4
	addc	a,#(_stack >> 8)
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	walk.c:182: return 1;
	mov	dptr,#0x0001
;	walk.c:183: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stpop'
;------------------------------------------------------------
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	walk.c:185: static int stpop(struct node *t) {
;	-----------------------------------------
;	 function stpop
;	-----------------------------------------
_stpop:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	walk.c:186: if (sp == -1) return 0;
	mov	dptr,#_sp
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r3,#0xff,00102$
	cjne	r4,#0xff,00102$
	mov	dptr,#0x0000
	ret
00102$:
;	walk.c:187: *t = stack[sp];
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
	add	a,#_stack
	mov	r3,a
	mov	a,r4
	addc	a,#(_stack >> 8)
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	walk.c:188: sp--;
	mov	dptr,#_sp
	movx	a,@dptr
	add	a,#0xff
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_sp
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	walk.c:189: return 1;
	mov	dptr,#0x0001
;	walk.c:190: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_neigh:
	.byte #0xff, #0xff	; -1
	.byte #0xff, #0xff	; -1
	.byte #0xff, #0xff	; -1
	.byte #0x00, #0x00	;  0
	.byte #0xff, #0xff	; -1
	.byte #0x01, #0x00	;  1
	.byte #0x00, #0x00	;  0
	.byte #0xff, #0xff	; -1
	.byte #0x00, #0x00	;  0
	.byte #0x01, #0x00	;  1
	.byte #0x01, #0x00	;  1
	.byte #0xff, #0xff	; -1
	.byte #0x01, #0x00	;  1
	.byte #0x00, #0x00	;  0
	.byte #0x01, #0x00	;  1
	.byte #0x01, #0x00	;  1
	.area CONST   (CODE)
___str_0:
	.ascii "Memory error"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x1b
	.ascii "[%d;%dHo"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x1b
	.ascii "[1;1H% 8d% 8d% 8d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x1b
	.ascii "[%d;%dH."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x1b
	.ascii "[2J"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)