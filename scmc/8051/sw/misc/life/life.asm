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
_j:
	.ds 2
_c:
	.ds 2
_n:
	.ds 1
_fixed:
	.ds 1
_cycle2:
	.ds 1
_dx:
	.ds 2
_dy:
	.ds 2
_generation:
	.ds 4
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
_RND	=	0x8000
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
;	life.c:30: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	life.c:35: __endasm;
	nop
	nop
	nop
;	life.c:36: OEreg = OE76;
	mov	r0,#_OE76
	mov	dptr,#_OEreg
	mov	a,@r0
	movx	@dptr,a
;	life.c:37: P1_7 = 1;
;	assignBit
	setb	_P1_7
;	life.c:42: __endasm;
	nop
	nop
	nop
;	life.c:44: return;
;	life.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'show'
;------------------------------------------------------------
;hdr                       Allocated to registers r7 
;------------------------------------------------------------
;	life.c:81: void show(char hdr) {
;	-----------------------------------------
;	 function show
;	-----------------------------------------
_show:
	mov	r7,dpl
;	life.c:82: printstr("\033[?25l");
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	lcall	_printstr
	pop	ar7
;	life.c:84: if (hdr) {
	mov	a,r7
	jz	00102$
;	life.c:85: printstr("\033[2JGEN ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_printstr
;	life.c:75: print16x(generation[1]);
	mov	r0,#(_generation + 0x0002)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r7
	lcall	_print16x
;	life.c:76: print16x(generation[0]);
	mov	r0,#_generation
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r7
	lcall	_print16x
;	life.c:87: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
;	life.c:68: generation[0]++;
	mov	r0,#_generation
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	inc	r6
	cjne	r6,#0x00,00147$
	inc	r7
00147$:
	mov	r0,#_generation
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:69: if (!generation[0]) generation[1]++;
	mov	a,r6
	orl	a,r7
	jnz	00102$
	mov	r0,#(_generation + 0x0002)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	inc	r6
	cjne	r6,#0x00,00149$
	inc	r7
00149$:
	mov	r0,#(_generation + 0x0002)
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:88: updategen();
00102$:
;	life.c:91: for (x = 0; x < W; x++) {
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00114$:
;	life.c:92: for (y = 0; y < H; y++)
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00112$:
;	life.c:93: if (u[A2D(W, y, x)]) putchar('1');
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
	add	a,#_u
	mov	r6,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jz	00104$
	mov	dptr,#0x0031
	lcall	_putchar
	sjmp	00113$
00104$:
;	life.c:94: else putchar('0');
	mov	dptr,#0x0030
	lcall	_putchar
00113$:
;	life.c:92: for (y = 0; y < H; y++)
	mov	r0,#_y
	inc	@r0
	cjne	@r0,#0x00,00151$
	inc	r0
	inc	@r0
00151$:
	mov	r0,#_y
	clr	c
	mov	a,@r0
	subb	a,#0xc0
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00112$
;	life.c:95: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
;	life.c:91: for (x = 0; x < W; x++) {
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00153$
	inc	r0
	inc	@r0
00153$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00154$
	ljmp	00114$
00154$:
;	life.c:98: printstr("\033[?25h");
	mov	dptr,#___str_3
	mov	b,#0x80
;	life.c:100: return;
;	life.c:101: }
	ljmp	_printstr
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;sloc2                     Allocated to stack - _bp +4
;sloc3                     Allocated to stack - _bp +6
;sloc4                     Allocated to stack - _bp +8
;sloc5                     Allocated to stack - _bp +10
;sloc6                     Allocated to stack - _bp +12
;------------------------------------------------------------
;	life.c:209: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0d
	mov	sp,a
;	life.c:210: IT0 = 1;
;	assignBit
	setb	_IT0
;	life.c:211: IT1 = 1;
;	assignBit
	setb	_IT1
;	life.c:212: EX0 = 1;
;	assignBit
	setb	_EX0
;	life.c:213: EX1 = 1;
;	assignBit
	setb	_EX1
;	life.c:214: EA = 1;	
;	assignBit
	setb	_EA
;	life.c:215: P1_7 = 1;
;	assignBit
	setb	_P1_7
;	life.c:220: __endasm;
	nop
	nop
	nop
;	life.c:222: srand(RND);
	mov	dptr,#_RND
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_srand
;	life.c:224: OE76 = OE76_0;
	mov	r0,#_OE76
	mov	@r0,#0x3f
;	life.c:225: flashOE();
	lcall	_flashOE
;	life.c:227: printstr("\033[?25h\033[m");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_printstr
;	life.c:229: for (i0 = 0; !i0; ) {	
	mov	r0,#_i0
	mov	@r0,#0x00
00227$:
;	life.c:230: printstr("LIFE INIT T L R P\r\n");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_printstr
;	life.c:231: while (1) {
00110$:
;	life.c:232: c = toupper(getchar());
	lcall	_getchar
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_c
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:233: if (i0 || (c == (int)'T')) goto term;
	mov	r0,#_i0
	mov	a,@r0
	jz	00405$
	ljmp	00149$
00405$:
	cjne	r6,#0x54,00406$
	cjne	r7,#0x00,00406$
	ljmp	00149$
00406$:
;	life.c:234: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) break;
	cjne	r6,#0x4c,00407$
	cjne	r7,#0x00,00407$
	sjmp	00257$
00407$:
	cjne	r6,#0x52,00408$
	cjne	r7,#0x00,00408$
	sjmp	00257$
00408$:
	cjne	r6,#0x50,00110$
	cjne	r7,#0x00,00110$
;	life.c:237: reload:
00257$:
00112$:
;	life.c:104: memset(u, 0, sizeof (u));
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
;	life.c:105: memset(pu, 0, sizeof (pu));
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
;	life.c:239: if (c == (int)'L') loadiu();
	mov	r0,#_c
	cjne	@r0,#0x4c,00411$
	inc	r0
	cjne	@r0,#0x00,00411$
	sjmp	00412$
00411$:
	ljmp	00116$
00412$:
;	life.c:111: j = 0;
	mov	r0,#_j
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:113: printstr("LOAD 0 1 ~ # <");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_printstr
;	life.c:115: for (y = 0; y < (H * W); y += W) {
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00213$:
;	life.c:116: for (x = 0; x < W; x++) {
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:117: while (1) {
00163$:
;	life.c:118: c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_c
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:119: if (c == (int)'0') {
	cjne	r6,#0x30,00161$
	cjne	r7,#0x00,00161$
;	life.c:120: iu[y + x] = 0;
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
	mov	dpl,a
	mov	a,r5
	addc	a,#(_iu >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	life.c:121: j++;
	mov	r0,#_j
	inc	@r0
	cjne	@r0,#0x00,00415$
	inc	r0
	inc	@r0
00415$:
;	life.c:122: break;
	sjmp	00166$
00161$:
;	life.c:123: } else if (c == (int)'1') {
	cjne	r6,#0x31,00159$
	cjne	r7,#0x00,00159$
;	life.c:124: iu[y + x] = 1;
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
	mov	dpl,a
	mov	a,r5
	addc	a,#(_iu >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	life.c:125: j++;
	mov	r0,#_j
	inc	@r0
	cjne	@r0,#0x00,00418$
	inc	r0
	inc	@r0
00418$:
;	life.c:126: break;
	sjmp	00166$
00159$:
;	life.c:127: } else if (c == (int)'~') goto br_inner;
	cjne	r6,#0x7e,00419$
	cjne	r7,#0x00,00419$
	sjmp	00214$
00419$:
;	life.c:128: else if (c == (int)'#') goto out;
;	life.c:132: break;
	cjne	r6,#0x23,00163$
	cjne	r7,#0x00,00163$
	sjmp	00176$
00166$:
;	life.c:116: for (x = 0; x < W; x++) {
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00421$
	inc	r0
	inc	@r0
00421$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00422$
	ljmp	00163$
00422$:
00214$:
;	life.c:115: for (y = 0; y < (H * W); y += W) {
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
	jnc	00423$
	ljmp	00213$
00423$:
;	life.c:136: out:
00176$:
;	life.c:137: if (c != (int)'#')
	cjne	r6,#0x23,00424$
	cjne	r7,#0x00,00424$
	sjmp	00175$
00424$:
;	life.c:138: while (1) {
00172$:
;	life.c:139: c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_c
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:140: if (c == (int)'#') break;
	cjne	r6,#0x23,00172$
	cjne	r7,#0x00,00172$
00175$:
;	life.c:142: print16x(j);
	mov	r0,#_j
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16x
;	life.c:143: printstr(">\r\n");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_printstr
;	life.c:239: if (c == (int)'L') loadiu();
	ljmp	00117$
00116$:
;	life.c:240: else if (c == (int)'R') loadriu();
	mov	r0,#_c
	cjne	@r0,#0x52,00427$
	inc	r0
	cjne	@r0,#0x00,00427$
	sjmp	00428$
00427$:
	sjmp	00117$
00428$:
;	life.c:149: j = 0;
	mov	r0,#_j
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:151: printstr("RANDOM");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_printstr
;	life.c:153: for (y = 0; y < (H * W); y += W)
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00217$:
;	life.c:154: for (x = 0; x < W; x++)
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00215$:
;	life.c:155: iu[y + x] = rand() & 1;
	mov	r0,#_y
	mov	r1,#_x
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r6
	add	a,#_iu
	mov	r6,a
	mov	a,r7
	addc	a,#(_iu >> 8)
	mov	r7,a
	push	ar7
	push	ar6
	lcall	_rand
	mov	r4,dpl
	pop	ar6
	pop	ar7
	anl	ar4,#0x01
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
;	life.c:154: for (x = 0; x < W; x++)
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00429$
	inc	r0
	inc	@r0
00429$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00215$
;	life.c:153: for (y = 0; y < (H * W); y += W)
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
	jc	00217$
;	life.c:157: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
;	life.c:240: else if (c == (int)'R') loadriu();
00117$:
;	life.c:241: memcpy(u, iu, sizeof (iu));
	clr	a
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
;	life.c:242: show(0);
	mov	dpl,#0x00
	lcall	_show
;	life.c:244: printstr("READY T L R P S\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
;	life.c:245: while (1) {
00130$:
;	life.c:246: c = toupper(getchar());
	lcall	_getchar
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_c
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:247: if (i0 || (c == (int)'T')) goto term;
	mov	r0,#_i0
	mov	a,@r0
	jz	00432$
	ljmp	00149$
00432$:
	cjne	r6,#0x54,00433$
	cjne	r7,#0x00,00433$
	ljmp	00149$
00433$:
;	life.c:248: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) goto reload;
	cjne	r6,#0x4c,00434$
	cjne	r7,#0x00,00434$
	ljmp	00112$
00434$:
	cjne	r6,#0x52,00435$
	cjne	r7,#0x00,00435$
	ljmp	00112$
00435$:
	cjne	r6,#0x50,00436$
	cjne	r7,#0x00,00436$
	ljmp	00112$
00436$:
;	life.c:249: else if (c == (int)'S') break;
	cjne	r6,#0x53,00130$
	cjne	r7,#0x00,00130$
;	life.c:61: generation[0] = 0u;
	mov	r0,#_generation
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	life.c:62: generation[1] = 0u;
	mov	r0,#(_generation + 0x0002)
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	life.c:254: for (i1 = 0; !i0 && !i1; ) {
	mov	r0,#_i1
	mov	@r0,#0x00
00225$:
	mov	r0,#_i0
	mov	a,@r0
	jz	00439$
	ljmp	00145$
00439$:
	mov	r0,#_i1
	mov	a,@r0
	jz	00440$
	ljmp	00145$
00440$:
;	life.c:255: show(1);
	mov	dpl,#0x01
	lcall	_show
;	life.c:163: fixed = 0;
	mov	r0,#_fixed
	mov	@r0,#0x00
;	life.c:164: cycle2 = 0;
	mov	r0,#_cycle2
	mov	@r0,#0x00
;	life.c:166: OE76 = OE76_0;
	mov	r0,#_OE76
	mov	@r0,#0x3f
;	life.c:167: flashOE();
	lcall	_flashOE
;	life.c:169: for (y = 0; y < H; y++) {
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00221$:
;	life.c:170: OE76 = OE76_0 | ((y & 0x0003u) << 6);
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
;	life.c:171: flashOE();
	lcall	_flashOE
;	life.c:172: for (x = 0; x < W; x++) {
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00219$:
;	life.c:173: n = -u[A2D(W, y, x)];
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
;	life.c:180: UPDN(-1, -1);
	mov	r0,#_y
	mov	a,#0xff
	add	a,@r0
	mov	r2,a
	mov	a,#0xff
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,#0xc0
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
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
	mov	a,#0xff
	add	a,@r0
	mov	r4,a
	mov	a,#0xff
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
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
;	life.c:181: UPDN(-1, 0);
	mov	r0,#_x
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
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
	add	a,#0x08
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x08
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
;	life.c:182: UPDN(-1, 1);
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
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
;	life.c:183: UPDN(0, -1);
	mov	r0,#_y
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
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
	add	a,#0x0c
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
	add	a,#0x0c
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
;	life.c:184: UPDN(0, 0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
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
;	life.c:185: UPDN(0, 1);
	mov	a,_bp
	add	a,#0x0c
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
	add	a,#0x0c
	mov	r1,a
	mov	a,r3
	add	a,@r0
	mov	@r1,a
;	life.c:186: UPDN(1, -1);
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
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
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,r5
	add	a,@r0
	mov	@r1,a
;	life.c:187: UPDN(1, 0);
	mov	a,_bp
	add	a,#0x08
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
	add	a,#0x0c
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
;	life.c:188: UPDN(1, 1);
	mov	r0,#_dy
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
	mov	r0,#_dx
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
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
;	life.c:191: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
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
	cjne	r7,#0x03,00441$
	sjmp	00232$
00441$:
	cjne	r7,#0x02,00231$
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
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
	jnz	00232$
00231$:
;	assignBit
	clr	b0
	sjmp	00233$
00232$:
;	assignBit
	setb	b0
00233$:
	mov	c,b0
	clr	a
	rlc	a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	life.c:192: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
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
;	life.c:193: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
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
;	life.c:172: for (x = 0; x < W; x++) {
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00445$
	inc	r0
	inc	@r0
00445$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00446$
	ljmp	00219$
00446$:
;	life.c:169: for (y = 0; y < H; y++) {
	mov	r0,#_y
	inc	@r0
	cjne	@r0,#0x00,00447$
	inc	r0
	inc	@r0
00447$:
	mov	r0,#_y
	clr	c
	mov	a,@r0
	subb	a,#0xc0
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00448$
	ljmp	00221$
00448$:
;	life.c:197: OE76 = OE76_0;
	mov	r0,#_OE76
	mov	@r0,#0x3f
;	life.c:198: flashOE();
	lcall	_flashOE
;	life.c:200: cycle2 = !cycle2;
	mov	r0,#_cycle2
	mov	a,@r0
	cjne	a,#0x01,00449$
00449$:
	mov	b0,c
	mov	r0,#_cycle2
	clr	a
	rlc	a
	mov	@r0,a
;	life.c:201: fixed = !fixed;
	mov	r0,#_fixed
	mov	a,@r0
	cjne	a,#0x01,00450$
00450$:
	mov	b0,c
	mov	r0,#_fixed
	clr	a
	rlc	a
	mov	@r0,a
;	life.c:203: memcpy(pu, u, sizeof (u));
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
;	life.c:204: memcpy(u, nu, sizeof (nu));
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
;	life.c:258: if (fixed || cycle2) {
	mov	r0,#_fixed
	mov	a,@r0
	jnz	00135$
	mov	r0,#_cycle2
	mov	a,@r0
	jz	00136$
00135$:
;	life.c:259: printstr("DONE ");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_printstr
;	life.c:260: if (fixed) printstr("FIXED\r\n");
	mov	r0,#_fixed
	mov	a,@r0
	jz	00133$
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_printstr
	sjmp	00134$
00133$:
;	life.c:261: else printstr("CYCLE2\r\n");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_printstr
00134$:
;	life.c:262: (void)getchar();
	lcall	_getchar
;	life.c:263: break;
	sjmp	00145$
00136$:
;	life.c:266: c = getchar_poll();
	lcall	_getchar_poll
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_c
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:267: if (c > 0) {
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00454$
	ljmp	00225$
00454$:
;	life.c:268: c = toupper(c);
	mov	dpl,r6
	mov	dph,r7
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_c
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:269: if (c == (int)'T') i0 = 1;
	cjne	r6,#0x54,00141$
	cjne	r7,#0x00,00141$
	mov	r0,#_i0
	mov	@r0,#0x01
	ljmp	00225$
00141$:
;	life.c:270: else if (c == (int)'B') i1 = 1;
	cjne	r6,#0x42,00457$
	cjne	r7,#0x00,00457$
	sjmp	00458$
00457$:
	ljmp	00225$
00458$:
	mov	r0,#_i1
	mov	@r0,#0x01
	ljmp	00225$
00145$:
;	life.c:274: if (i1) {
	mov	r0,#_i1
	mov	a,@r0
	jz	00228$
;	life.c:275: printstr("BREAK\r\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_printstr
;	life.c:276: (void)getchar();
	lcall	_getchar
00228$:
;	life.c:229: for (i0 = 0; !i0; ) {	
	mov	r0,#_i0
	mov	a,@r0
	jnz	00460$
	ljmp	00227$
00460$:
;	life.c:280: term:
00149$:
;	life.c:281: EA = 0;
;	assignBit
	clr	_EA
;	life.c:282: printstr("TERM\r\n");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_printstr
;	life.c:283: (void)getchar();
	lcall	_getchar
;	life.c:285: PCON |= 2;
	orl	_PCON,#0x02
;	life.c:287: return;
;	life.c:288: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x1b
	.ascii "[?25l"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x1b
	.ascii "[2JGEN "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x1b
	.ascii "[?25h"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "LOAD 0 1 ~ # <"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii ">"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "RANDOM"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x1b
	.ascii "[?25h"
	.db 0x1b
	.ascii "[m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "LIFE INIT T L R P"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "READY T L R P S"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "DONE "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "FIXED"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "CYCLE2"
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
