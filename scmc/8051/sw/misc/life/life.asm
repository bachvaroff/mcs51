;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module life
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _show
	.globl _int1
	.globl _int0
	.globl _print32x
	.globl _print16x
	.globl _printstr
	.globl _getchar_poll
	.globl _getchar
	.globl _putchar
	.globl _toupper
	.globl ___memcpy
	.globl _memset
	.globl _srand
	.globl _rand
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
_i1:
	.ds 1
_OE76:
	.ds 1
_x:
	.ds 2
_y:
	.ds 2
_n:
	.ds 1
_fixed:
	.ds 1
_cycle2:
	.ds 1
_gen:
	.ds 4
_genc2:
	.ds 4
_c2set:
	.ds 1
_pruni:
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
_RND	=	0xe000
_OEreg	=	0xf006
_iu:
	.ds 9216
_pu:
	.ds 9216
_u:
	.ds 9216
_nu:
	.ds 9216
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
	.ds	5
	reti
	.ds	7
	ljmp	_int1
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
;Allocation info for local variables in function 'int0'
;------------------------------------------------------------
;	life.c:13: void int0(void) __interrupt IE0_VECTOR __using 1 {
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
;	life.c:14: i0 = 1;
	mov	r0,#_i0
	mov	@r0,#0x01
;	life.c:15: }
	pop	psw
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'int1'
;------------------------------------------------------------
;	life.c:17: void int1(void) __interrupt IE1_VECTOR __using 1 {
;	-----------------------------------------
;	 function int1
;	-----------------------------------------
_int1:
	push	psw
	mov	psw,#0x08
;	life.c:18: i1 = 1;
	mov	r0,#_i1
	mov	@r0,#0x01
;	life.c:19: }
	pop	psw
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'flashOE'
;------------------------------------------------------------
;	life.c:29: static void flashOE(void) {
;	-----------------------------------------
;	 function flashOE
;	-----------------------------------------
_flashOE:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	life.c:30: OEreg = OE76;
	mov	r0,#_OE76
	mov	dptr,#_OEreg
	mov	a,@r0
	movx	@dptr,a
;	life.c:32: return;
;	life.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'show'
;------------------------------------------------------------
;universe                  Allocated to stack - _bp -5
;prflags                   Allocated to registers r7 
;------------------------------------------------------------
;	life.c:67: void show(char prflags, char *universe) {
;	-----------------------------------------
;	 function show
;	-----------------------------------------
_show:
	push	_bp
	mov	_bp,sp
;	life.c:68: if (prflags & PRCLR) printstr("\033[2J");
	mov	a,dpl
	mov	r7,a
	jnb	acc.0,00102$
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	lcall	_printstr
	pop	ar7
00102$:
;	life.c:69: if (prflags & PRHDR) {
	mov	a,r7
	jnb	acc.1,00106$
;	life.c:70: printstr("GEN ");
	mov	dptr,#___str_1
	mov	b,#0x80
	push	ar7
	lcall	_printstr
;	life.c:71: print32x(gen);
	mov	r0,#_gen
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_print32x
	pop	ar7
;	life.c:72: if (c2set) {
	mov	r0,#_c2set
	mov	a,@r0
	jz	00104$
;	life.c:73: printstr(" CYCLE2 ");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	lcall	_printstr
;	life.c:74: print32x(genc2);
	mov	r0,#_genc2
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_print32x
	pop	ar7
00104$:
;	life.c:76: printstr("\r\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar7
	lcall	_printstr
	pop	ar7
00106$:
;	life.c:78: if (prflags & PRUNI) {
	mov	a,r7
	jb	acc.2,00159$
	ljmp	00113$
00159$:
;	life.c:79: printstr("\033[?25l");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_printstr
;	life.c:80: for (x = 0; x < W; x++) {
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00116$:
;	life.c:81: for (y = 0; y < H; y++)
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00114$:
;	life.c:82: if (universe[A2D(W, y, x)]) putchar((int)'1');
	mov	r0,#_y
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0030
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	r0,#_x
	mov	a,@r0
	add	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r7
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
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	jz	00108$
	mov	dptr,#0x0031
	lcall	_putchar
	sjmp	00115$
00108$:
;	life.c:83: else putchar((int)'0');
	mov	dptr,#0x0030
	lcall	_putchar
00115$:
;	life.c:81: for (y = 0; y < H; y++)
	mov	r0,#_y
	inc	@r0
	cjne	@r0,#0x00,00161$
	inc	r0
	inc	@r0
00161$:
	mov	r0,#_y
	clr	c
	mov	a,@r0
	subb	a,#0xc0
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00114$
;	life.c:84: printstr("\r\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_printstr
;	life.c:80: for (x = 0; x < W; x++) {
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00163$
	inc	r0
	inc	@r0
00163$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00164$
	ljmp	00116$
00164$:
;	life.c:86: printstr("\033[?25h");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_printstr
00113$:
;	life.c:89: return;
;	life.c:90: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;nbits                     Allocated to registers r4 r5 
;c                         Allocated to stack - _bp +10
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;sloc2                     Allocated to stack - _bp +4
;sloc3                     Allocated to stack - _bp +6
;sloc4                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	life.c:194: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0b
	mov	sp,a
;	life.c:197: IT0 = 1;
;	assignBit
	setb	_IT0
;	life.c:198: IT1 = 1;
;	assignBit
	setb	_IT1
;	life.c:199: EX0 = 1;
;	assignBit
	setb	_EX0
;	life.c:200: EX1 = 1;
;	assignBit
	setb	_EX1
;	life.c:201: EA = 1;	
;	assignBit
	setb	_EA
;	life.c:202: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	life.c:207: __endasm;
	nop
	nop
	nop
;	life.c:209: srand(RND);
	mov	dptr,#_RND
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_srand
;	life.c:211: OE76 = OE76_0;
	mov	r0,#_OE76
	mov	@r0,#0x3f
;	life.c:212: flashOE();
	lcall	_flashOE
;	life.c:49: gen = 0ul;
	mov	r0,#_gen
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:50: genc2 = 0ul;
	mov	r0,#_genc2
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:51: c2set = 0;
	mov	r0,#_c2set
	mov	@r0,#0x00
;	life.c:216: printstr("\033[?25h\033[m");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
;	life.c:218: for (i0 = 0; !i0; ) {
	mov	r0,#_i0
	mov	@r0,#0x00
00236$:
;	life.c:219: pruni = 1;
	mov	r0,#_pruni
	mov	@r0,#0x01
;	life.c:220: while (1) {
00127$:
;	life.c:221: printstr("LIFE I L R O P S U B T\r\n");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_printstr
;	life.c:222: c = toupper(getchar());
	lcall	_getchar
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
;	life.c:223: if (i0 || (c == (int)'T')) goto term;
	mov	r0,#_i0
	mov	a,@r0
	jz	00463$
	ljmp	00154$
00463$:
	cjne	r6,#0x54,00464$
	cjne	r7,#0x00,00464$
	ljmp	00154$
00464$:
;	life.c:224: else if ((c == (int)'I') || (c == (int)'L') || (c == (int)'R')) {
	cjne	r6,#0x49,00465$
	cjne	r7,#0x00,00465$
	sjmp	00117$
00465$:
	cjne	r6,#0x4c,00466$
	cjne	r7,#0x00,00466$
	sjmp	00117$
00466$:
	cjne	r6,#0x52,00467$
	cjne	r7,#0x00,00467$
	sjmp	00468$
00467$:
	ljmp	00118$
00468$:
00117$:
;	life.c:225: if (c == (int)'L') loadiu();
	cjne	r6,#0x4c,00469$
	cjne	r7,#0x00,00469$
	sjmp	00470$
00469$:
	ljmp	00104$
00470$:
;	life.c:102: printstr("LOAD 0 1 ~ # <");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_printstr
;	life.c:104: for (nbits = 0, y = 0; y < (H * W); y += W) {
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00222$:
	mov	r0,#_y
	clr	c
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0xa4
	jc	00471$
	ljmp	00181$
00471$:
;	life.c:105: for (x = 0; x < W; x++) {
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:106: while (1) {
00168$:
;	life.c:107: c = getchar();
	push	ar5
	push	ar4
	lcall	_getchar
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	life.c:108: if (c == (int)'0') {
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	cjne	@r0,#0x30,00166$
	inc	r0
	cjne	@r0,#0x00,00166$
;	life.c:109: iu[y + x] = 0;
	mov	r0,#_y
	mov	r1,#_x
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r2
	add	a,#_iu
	mov	dpl,a
	mov	a,r3
	addc	a,#(_iu >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	life.c:110: nbits++;
	inc	r4
;	life.c:111: break;
	cjne	r4,#0x00,00171$
	inc	r5
	sjmp	00171$
00166$:
;	life.c:112: } else if (c == (int)'1') {
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	cjne	@r0,#0x31,00164$
	inc	r0
	cjne	@r0,#0x00,00164$
;	life.c:113: iu[y + x] = 1;
	mov	r0,#_y
	mov	r1,#_x
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r2
	add	a,#_iu
	mov	dpl,a
	mov	a,r3
	addc	a,#(_iu >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	life.c:114: nbits++;
	inc	r4
;	life.c:115: break;
	cjne	r4,#0x00,00171$
	inc	r5
	sjmp	00171$
00164$:
;	life.c:116: } else if (c == (int)'~') goto br_inner;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	cjne	@r0,#0x7e,00478$
	inc	r0
	cjne	@r0,#0x00,00478$
	sjmp	00223$
00478$:
;	life.c:117: else if (c == (int)'#') goto out;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	cjne	@r0,#0x23,00479$
	inc	r0
	cjne	@r0,#0x00,00479$
	sjmp	00181$
00479$:
	ljmp	00168$
;	life.c:121: break;
00171$:
;	life.c:105: for (x = 0; x < W; x++) {
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00480$
	inc	r0
	inc	@r0
00480$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00481$
	ljmp	00168$
00481$:
00223$:
;	life.c:104: for (nbits = 0, y = 0; y < (H * W); y += W) {
	mov	r0,#_y
	mov	a,#0x30
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00222$
;	life.c:125: out:
00181$:
;	life.c:126: if (c != (int)'#')
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	cjne	@r0,#0x23,00482$
	inc	r0
	cjne	@r0,#0x00,00482$
	sjmp	00180$
00482$:
;	life.c:127: while (1) {
00177$:
;	life.c:128: c = getchar();
	push	ar5
	push	ar4
	lcall	_getchar
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	life.c:129: if (c == (int)'#') break;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	cjne	@r0,#0x23,00177$
	inc	r0
	cjne	@r0,#0x00,00177$
00180$:
;	life.c:131: print16x(nbits);
	mov	dpl,r4
	mov	dph,r5
	lcall	_print16x
;	life.c:132: printstr(">\r\n");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_printstr
;	life.c:225: if (c == (int)'L') loadiu();
	sjmp	00105$
00104$:
;	life.c:226: else if (c == (int)'R') loadriu();
	cjne	r6,#0x52,00105$
	cjne	r7,#0x00,00105$
;	life.c:138: printstr("RANDOM");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_printstr
;	life.c:140: for (y = 0; y < (H * W); y += W)
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00226$:
;	life.c:141: for (x = 0; x < W; x++)
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00224$:
;	life.c:142: iu[y + x] = rand() & 1;
	mov	r0,#_y
	mov	r1,#_x
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r4
	add	a,#_iu
	mov	r4,a
	mov	a,r5
	addc	a,#(_iu >> 8)
	mov	r5,a
	push	ar5
	push	ar4
	lcall	_rand
	mov	r2,dpl
	pop	ar4
	pop	ar5
	anl	ar2,#0x01
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
;	life.c:141: for (x = 0; x < W; x++)
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00487$
	inc	r0
	inc	@r0
00487$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00224$
;	life.c:140: for (y = 0; y < (H * W); y += W)
	mov	r0,#_y
	mov	a,#0x30
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	r0,#_y
	clr	c
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0xa4
	jc	00226$
;	life.c:144: printstr("\r\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_printstr
;	life.c:226: else if (c == (int)'R') loadriu();
00105$:
;	life.c:93: memset(u, 0, sizeof (u));
	clr	a
	push	acc
	mov	a,#0x24
	push	acc
	clr	a
	push	acc
	mov	dptr,#_u
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	life.c:94: memset(pu, 0, sizeof (pu));
	clr	a
	push	acc
	mov	a,#0x24
	push	acc
	clr	a
	push	acc
	mov	dptr,#_pu
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	life.c:49: gen = 0ul;
	mov	r0,#_gen
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:50: genc2 = 0ul;
	mov	r0,#_genc2
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:51: c2set = 0;
	mov	r0,#_c2set
	mov	@r0,#0x00
;	life.c:229: memcpy(u, iu, sizeof (iu));
	push	acc
	mov	a,#0x24
	push	acc
	mov	a,#_iu
	push	acc
	mov	a,#(_iu >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_u
	mov	b,#0x00
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	life.c:230: show(PRUNI, u);
	mov	a,#_u
	push	acc
	mov	a,#(_u >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x04
	lcall	_show
	dec	sp
	dec	sp
	dec	sp
	ljmp	00127$
00118$:
;	life.c:231: } else if (c == (int)'O') show(PRUNI, iu);
	cjne	r6,#0x4f,00115$
	cjne	r7,#0x00,00115$
	mov	a,#_iu
	push	acc
	mov	a,#(_iu >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x04
	lcall	_show
	dec	sp
	dec	sp
	dec	sp
	ljmp	00127$
00115$:
;	life.c:232: else if (c == (int)'P') show(PRHDR | PRUNI, u);
	cjne	r6,#0x50,00112$
	cjne	r7,#0x00,00112$
	mov	a,#_u
	push	acc
	mov	a,#(_u >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x06
	lcall	_show
	dec	sp
	dec	sp
	dec	sp
	ljmp	00127$
00112$:
;	life.c:233: else if (c == (int)'U') {
	cjne	r6,#0x55,00109$
	cjne	r7,#0x00,00109$
;	life.c:234: pruni = !pruni;
	mov	r0,#_pruni
	mov	a,@r0
	cjne	a,#0x01,00496$
00496$:
	mov	b0,c
	mov	r0,#_pruni
	clr	a
	rlc	a
	mov	@r0,a
;	life.c:235: printstr("U");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_printstr
;	life.c:236: putchar(pruni ? (int)'1' : (int)'0');
	mov	r0,#_pruni
	mov	a,@r0
	jz	00240$
	mov	r4,#0x31
	mov	r5,#0x00
	sjmp	00241$
00240$:
	mov	r4,#0x30
	mov	r5,#0x00
00241$:
	mov	dpl,r4
	mov	dph,r5
	lcall	_putchar
;	life.c:237: printstr("\r\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_printstr
	ljmp	00127$
00109$:
;	life.c:238: } else if (c == (int)'S') break;
	cjne	r6,#0x53,00498$
	cjne	r7,#0x00,00498$
	sjmp	00499$
00498$:
	ljmp	00127$
00499$:
;	life.c:49: gen = 0ul;
	mov	r0,#_gen
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:50: genc2 = 0ul;
	mov	r0,#_genc2
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:51: c2set = 0;
	mov	r0,#_c2set
	mov	@r0,#0x00
;	life.c:243: for (i1 = 0; !i0 && !i1; ) {
	mov	r0,#_i1
	mov	@r0,#0x00
00234$:
	mov	r0,#_i0
	mov	a,@r0
	jz	00500$
	ljmp	00150$
00500$:
	mov	r0,#_i1
	mov	a,@r0
	jz	00501$
	ljmp	00150$
00501$:
;	life.c:244: if (pruni) show(PRCLR | PRHDR | PRUNI, u);
	mov	r0,#_pruni
	mov	a,@r0
	jz	00130$
	mov	a,#_u
	push	acc
	mov	a,#(_u >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x07
	lcall	_show
	dec	sp
	dec	sp
	dec	sp
	sjmp	00131$
00130$:
;	life.c:245: else show(PRHDR, u);
	mov	a,#_u
	push	acc
	mov	a,#(_u >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_show
	dec	sp
	dec	sp
	dec	sp
00131$:
;	life.c:57: gen++;
	mov	r0,#_gen
	inc	@r0
	cjne	@r0,#0x00,00503$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00503$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00503$
	inc	r0
	inc	@r0
00503$:
;	life.c:150: fixed = 0;
	mov	r0,#_fixed
	mov	@r0,#0x00
;	life.c:151: cycle2 = 0;
	mov	r0,#_cycle2
	mov	@r0,#0x00
;	life.c:153: OE76 = OE76_0;
	mov	r0,#_OE76
	mov	@r0,#0x3f
;	life.c:154: flashOE();
	lcall	_flashOE
;	life.c:156: for (y = 0; y < H; y++) {
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00230$:
;	life.c:157: OE76 = OE76_0 | ((y & 0x0003u) << 6);
	mov	r0,#_y
	mov	ar7,@r0
	anl	ar7,#0x03
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r7,a
	mov	r0,#_OE76
	mov	a,#0x3f
	orl	a,r7
	mov	@r0,a
;	life.c:158: flashOE();
	lcall	_flashOE
;	life.c:159: for (x = 0; x < W; x++) {
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00228$:
;	life.c:160: n = -u[A2D(W, y, x)];
	mov	r0,#_y
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0030
	lcall	__mulint
	xch	a,r0
	mov	a,_bp
	add	a,#0x04
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,#_x
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	add	a,#_u
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	r0,_bp
	inc	r0
	clr	c
	clr	a
	subb	a,r3
	mov	@r0,a
;	life.c:165: UPDN(-1, -1);
	mov	r0,#_y
	mov	a,#0xbf
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,#0xc0
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	push	ar2
	push	ar3
	mov	dptr,#0x0030
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	r0,#_x
	mov	a,#0x2f
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	push	ar3
	push	ar2
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
	pop	ar2
	pop	ar3
	mov	a,r4
	add	a,r2
	mov	r6,a
	mov	a,r5
	addc	a,r3
	mov	r7,a
	mov	a,r6
	add	a,#_u
	mov	dpl,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,r7
	add	a,@r0
	mov	@r0,a
;	life.c:166: UPDN(-1, 0);
	mov	r0,#_x
	mov	a,#0x30
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#0x30
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	xch	a,r0
	mov	a,_bp
	add	a,#0x06
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r7,a
	mov	a,r6
	add	a,#_u
	mov	dpl,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,r7
	add	a,@r0
	mov	@r0,a
;	life.c:167: UPDN(-1, 1);
	mov	r0,#_x
	mov	a,#0x31
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	push	ar3
	push	ar2
	mov	a,#0x30
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	a,r2
	add	a,#_u
	mov	dpl,a
	mov	a,r3
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	@r0,a
;	life.c:168: UPDN(0, -1);
	mov	r0,#_y
	mov	a,#0xc0
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0xc0
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	push	ar2
	push	ar3
	mov	dptr,#0x0030
	lcall	__mulint
	xch	a,r0
	mov	a,_bp
	add	a,#0x08
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r2,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r2
	add	a,#_u
	mov	dpl,a
	mov	a,r3
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	@r0,a
;	life.c:169: UPDN(0, 0);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r2
	add	a,#_u
	mov	dpl,a
	mov	a,r3
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	@r0,a
;	life.c:170: UPDN(0, 1);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r2,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r2
	add	a,#_u
	mov	dpl,a
	mov	a,r3
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,r3
	add	a,@r0
	mov	@r1,a
;	life.c:171: UPDN(1, -1);
	mov	r0,#_y
	mov	a,#0xc1
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0xc0
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	push	ar2
	push	ar3
	mov	dptr,#0x0030
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r2
	mov	r4,a
	mov	a,r5
	addc	a,r3
	mov	r5,a
	mov	a,r4
	add	a,#_u
	mov	dpl,a
	mov	a,r5
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,r5
	add	a,@r0
	mov	@r1,a
;	life.c:172: UPDN(1, 0);
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r5,a
	mov	a,r4
	add	a,#_u
	mov	dpl,a
	mov	a,r5
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
;	life.c:173: UPDN(1, 1);
	mov	a,r6
	add	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
	mov	a,r6
	add	a,#_u
	mov	dpl,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,r5
	mov	r7,a
	mov	r0,#_n
	mov	@r0,ar7
;	life.c:176: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	add	a,#_nu
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,#(_nu >> 8)
	mov	r6,a
	cjne	r7,#0x03,00504$
	sjmp	00243$
00504$:
	cjne	r7,#0x02,00242$
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,#_x
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r4
	add	a,#_u
	mov	r4,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	r7,a
	mov	dpl,r4
	mov	dph,r7
	movx	a,@dptr
	jnz	00243$
00242$:
;	assignBit
	clr	b0
	sjmp	00244$
00243$:
;	assignBit
	setb	b0
00244$:
	mov	c,b0
	clr	a
	rlc	a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	life.c:177: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
	mov	r0,#_y
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0030
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	r0,#_x
	mov	a,@r0
	add	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r7,a
	mov	a,r6
	add	a,#_pu
	mov	dpl,a
	mov	a,r7
	addc	a,#(_pu >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,#_nu
	mov	dpl,a
	mov	a,r7
	addc	a,#(_nu >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	xrl	a,r5
	mov	r0,#_cycle2
	orl	a,@r0
	mov	@r0,a
;	life.c:178: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
	mov	a,r6
	add	a,#_u
	mov	dpl,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	xrl	a,r7
	mov	r0,#_fixed
	orl	a,@r0
	mov	@r0,a
;	life.c:159: for (x = 0; x < W; x++) {
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00508$
	inc	r0
	inc	@r0
00508$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00509$
	ljmp	00228$
00509$:
;	life.c:156: for (y = 0; y < H; y++) {
	mov	r0,#_y
	inc	@r0
	cjne	@r0,#0x00,00510$
	inc	r0
	inc	@r0
00510$:
	mov	r0,#_y
	clr	c
	mov	a,@r0
	subb	a,#0xc0
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00511$
	ljmp	00230$
00511$:
;	life.c:182: OE76 = OE76_0;
	mov	r0,#_OE76
	mov	@r0,#0x3f
;	life.c:183: flashOE();
	lcall	_flashOE
;	life.c:185: cycle2 = !cycle2;
	mov	r0,#_cycle2
	mov	a,@r0
	cjne	a,#0x01,00512$
00512$:
	mov	b0,c
	mov	r0,#_cycle2
	clr	a
	rlc	a
	mov	@r0,a
;	life.c:186: fixed = !fixed;
	mov	r0,#_fixed
	mov	a,@r0
	cjne	a,#0x01,00513$
00513$:
	mov	b0,c
	mov	r0,#_fixed
	clr	a
	rlc	a
	mov	@r0,a
;	life.c:188: memcpy(pu, u, sizeof (u));
	clr	a
	push	acc
	mov	a,#0x24
	push	acc
	mov	a,#_u
	push	acc
	mov	a,#(_u >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_pu
	mov	b,#0x00
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	life.c:189: memcpy(u, nu, sizeof (nu));
	clr	a
	push	acc
	mov	a,#0x24
	push	acc
	mov	a,#_nu
	push	acc
	mov	a,#(_nu >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_u
	mov	b,#0x00
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	life.c:248: if (fixed || cycle2) {
	mov	r0,#_fixed
	mov	a,@r0
	jnz	00137$
	mov	r0,#_cycle2
	mov	a,@r0
	jz	00138$
00137$:
;	life.c:249: if (fixed) {
	mov	r0,#_fixed
	mov	a,@r0
	jz	00135$
;	life.c:250: printstr("FIXED\r\n");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_printstr
;	life.c:251: break;
	sjmp	00150$
00135$:
;	life.c:252: } else if (!c2set) {
	mov	r0,#_c2set
	mov	a,@r0
	jnz	00138$
;	life.c:253: genc2 = gen;
	mov	r0,#_gen
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_genc2
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:254: c2set = 1;
	mov	r0,#_c2set
	mov	@r0,#0x01
00138$:
;	life.c:258: c = getchar_poll();
	lcall	_getchar_poll
	mov	r6,dpl
	mov	r7,dph
;	life.c:259: if (c > 0) {
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00518$
	ljmp	00234$
00518$:
;	life.c:260: c = toupper(c);
	mov	dpl,r6
	mov	dph,r7
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
;	life.c:261: if (c == (int)'U') pruni = !pruni;
	cjne	r6,#0x55,00146$
	cjne	r7,#0x00,00146$
	mov	r0,#_pruni
	mov	a,@r0
	cjne	a,#0x01,00521$
00521$:
	mov	b0,c
	mov	r0,#_pruni
	clr	a
	rlc	a
	mov	@r0,a
	ljmp	00234$
00146$:
;	life.c:262: else if (c == (int)'T') i0 = 1;
	cjne	r6,#0x54,00143$
	cjne	r7,#0x00,00143$
	mov	r0,#_i0
	mov	@r0,#0x01
	ljmp	00234$
00143$:
;	life.c:263: else if (c == (int)'B') i1 = 1;
	cjne	r6,#0x42,00524$
	cjne	r7,#0x00,00524$
	sjmp	00525$
00524$:
	ljmp	00234$
00525$:
	mov	r0,#_i1
	mov	@r0,#0x01
	ljmp	00234$
00150$:
;	life.c:267: if (i1) printstr("BREAK\r\n");
	mov	r0,#_i1
	mov	a,@r0
	jz	00237$
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_printstr
00237$:
;	life.c:218: for (i0 = 0; !i0; ) {
	mov	r0,#_i0
	mov	a,@r0
	jnz	00527$
	ljmp	00236$
00527$:
;	life.c:270: term:
00154$:
;	life.c:271: EA = 0;
;	assignBit
	clr	_EA
;	life.c:272: printstr("TERM\r\n");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_printstr
;	life.c:274: PCON |= 2;
	orl	_PCON,#0x02
;	life.c:276: return;
;	life.c:277: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x1b
	.ascii "[2J"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "GEN "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii " CYCLE2 "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x1b
	.ascii "[?25l"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x1b
	.ascii "[?25h"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "LOAD 0 1 ~ # <"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii ">"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "RANDOM"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x1b
	.ascii "[?25h"
	.db 0x1b
	.ascii "[m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "LIFE I L R O P S U B T"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "U"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "FIXED"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "BREAK"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "TERM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
