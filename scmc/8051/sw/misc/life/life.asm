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
	.globl _evolveu
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
_gen:
	.ds 4
_genc2:
	.ds 4
_genfx:
	.ds 4
_c2set:
	.ds 1
_fxset:
	.ds 1
_pruni:
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
;Allocation info for local variables in function 'initu'
;------------------------------------------------------------
;	life.c:92: static void initu(void) {
;	-----------------------------------------
;	 function initu
;	-----------------------------------------
_initu:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	life.c:93: memcpy(u, iu, sizeof (iu));
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
;	life.c:43: gen = 0ul;
	mov	r0,#_gen
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:44: genc2 = 0ul;
	mov	r0,#_genc2
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:45: genfx = 0ul;
	mov	r0,#_genfx
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:46: c2set = 0;
	mov	r0,#_c2set
	mov	@r0,#0x00
;	life.c:47: fxset = 0;
	mov	r0,#_fxset
	mov	@r0,#0x00
;	life.c:97: return;
;	life.c:98: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'showu'
;------------------------------------------------------------
;universe                  Allocated to stack - _bp -5
;prflags                   Allocated to registers r7 
;------------------------------------------------------------
;	life.c:105: static void showu(char prflags, char *universe) {
;	-----------------------------------------
;	 function showu
;	-----------------------------------------
_showu:
	push	_bp
	mov	_bp,sp
;	life.c:106: if (prflags & PRCLR) printstr("\033[2J");
	mov	a,dpl
	mov	r7,a
	jnb	acc.0,00102$
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	lcall	_printstr
	pop	ar7
00102$:
;	life.c:107: if (prflags & PRHDR) {
	mov	a,r7
	jnb	acc.1,00108$
;	life.c:108: printstr("GEN ");
	mov	dptr,#___str_1
	mov	b,#0x80
	push	ar7
	lcall	_printstr
;	life.c:109: print32x(gen);
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
;	life.c:110: if (c2set) {
	mov	r0,#_c2set
	mov	a,@r0
	jz	00104$
;	life.c:111: printstr(" CYCLE2 ");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	lcall	_printstr
;	life.c:112: print32x(genc2);
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
;	life.c:114: if (fxset) {
	mov	r0,#_fxset
	mov	a,@r0
	jz	00106$
;	life.c:115: printstr(" FIXED ");
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar7
	lcall	_printstr
;	life.c:116: print32x(genfx);
	mov	r0,#_genfx
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_print32x
	pop	ar7
00106$:
;	life.c:118: printstr("\r\n");
	mov	dptr,#___str_4
	mov	b,#0x80
	push	ar7
	lcall	_printstr
	pop	ar7
00108$:
;	life.c:120: if (prflags & PRUNI) {
	mov	a,r7
	jb	acc.2,00166$
	ljmp	00115$
00166$:
;	life.c:121: printstr("\033[?25l");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_printstr
;	life.c:122: for (x = 0; x < W; x++) {
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00118$:
;	life.c:123: for (y = 0; y < H; y++)
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00116$:
;	life.c:124: if (universe[A2D(W, y, x)]) putchar((int)'1');
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
	jz	00110$
	mov	dptr,#0x0031
	lcall	_putchar
	sjmp	00117$
00110$:
;	life.c:125: else putchar((int)'0');
	mov	dptr,#0x0030
	lcall	_putchar
00117$:
;	life.c:123: for (y = 0; y < H; y++)
	mov	r0,#_y
	inc	@r0
	cjne	@r0,#0x00,00168$
	inc	r0
	inc	@r0
00168$:
	mov	r0,#_y
	clr	c
	mov	a,@r0
	subb	a,#0xc0
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00116$
;	life.c:126: printstr("\r\n");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_printstr
;	life.c:122: for (x = 0; x < W; x++) {
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00170$
	inc	r0
	inc	@r0
00170$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00171$
	ljmp	00118$
00171$:
;	life.c:128: printstr("\033[?25h");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_printstr
00115$:
;	life.c:131: return;
;	life.c:132: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'loadiu'
;------------------------------------------------------------
;nbits                     Allocated to registers r6 r7 
;c                         Allocated to registers r4 r5 
;sloc0                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	life.c:134: static void loadiu(void) {
;	-----------------------------------------
;	 function loadiu
;	-----------------------------------------
_loadiu:
;	life.c:137: memset(iu, 0, sizeof (iu));
	clr	a
	push	acc
	mov	a,#0x24
	push	acc
	clr	a
	push	acc
	mov	dptr,#_iu
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	life.c:139: printstr("LOAD 0 1 ~ # <");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_printstr
;	life.c:141: for (nbits = 0, y = 0; y < (H * W); y += W) {
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00129$:
	mov	r0,#_y
	clr	c
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0xa4
	jc	00173$
	ljmp	00119$
00173$:
;	life.c:142: for (x = 0; x < W; x++) {
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:143: while (1) {
00113$:
;	life.c:144: c = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r3,dpl
	mov	r2,dph
	pop	ar6
	pop	ar7
;	life.c:145: if (c == (int)'0') {
	cjne	r3,#0x30,00110$
	cjne	r2,#0x00,00110$
;	life.c:146: iu[y + x] = 0;
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
;	life.c:147: nbits++;
	inc	r6
;	life.c:148: break;
	cjne	r6,#0x00,00116$
	inc	r7
	sjmp	00116$
00110$:
;	life.c:149: } else if (c == (int)'1') {
	cjne	r3,#0x31,00107$
	cjne	r2,#0x00,00107$
;	life.c:150: iu[y + x] = 1;
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
;	life.c:151: nbits++;
	inc	r6
;	life.c:152: break;
	cjne	r6,#0x00,00116$
	inc	r7
	sjmp	00116$
00107$:
;	life.c:153: } else if (c == (int)'~') goto br_inner;
	cjne	r3,#0x7e,00180$
	cjne	r2,#0x00,00180$
	sjmp	00130$
00180$:
;	life.c:154: else if (c == (int)'#') goto out;
;	life.c:158: break;
	cjne	r3,#0x23,00113$
	cjne	r2,#0x00,00113$
	sjmp	00119$
00116$:
;	life.c:142: for (x = 0; x < W; x++) {
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00182$
	inc	r0
	inc	@r0
00182$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00183$
	ljmp	00113$
00183$:
00130$:
;	life.c:141: for (nbits = 0, y = 0; y < (H * W); y += W) {
	mov	r0,#_y
	mov	a,#0x30
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00129$
;	life.c:162: out:
00119$:
;	life.c:163: if (c != (int)'#')
	cjne	r3,#0x23,00184$
	cjne	r2,#0x00,00184$
	sjmp	00126$
00184$:
;	life.c:164: while (1) {
00123$:
;	life.c:165: c = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	life.c:166: if (c == (int)'#') break;
	cjne	r4,#0x23,00123$
	cjne	r5,#0x00,00123$
00126$:
;	life.c:168: print16x(nbits);
	mov	dpl,r6
	mov	dph,r7
	lcall	_print16x
;	life.c:169: printstr(">\r\n");
	mov	dptr,#___str_8
	mov	b,#0x80
;	life.c:171: return;
;	life.c:172: }
	ljmp	_printstr
;------------------------------------------------------------
;Allocation info for local variables in function 'loadriu'
;------------------------------------------------------------
;	life.c:174: static void loadriu(void) {
;	-----------------------------------------
;	 function loadriu
;	-----------------------------------------
_loadriu:
;	life.c:175: printstr("RANDOM");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
;	life.c:177: for (y = 0; y < (H * W); y += W)
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00105$:
;	life.c:178: for (x = 0; x < W; x++)
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00103$:
;	life.c:179: iu[y + x] = rand() & 1;
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
;	life.c:178: for (x = 0; x < W; x++)
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00125$
	inc	r0
	inc	@r0
00125$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00103$
;	life.c:177: for (y = 0; y < (H * W); y += W)
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
	jc	00105$
;	life.c:181: printstr("\r\n");
	mov	dptr,#___str_4
	mov	b,#0x80
;	life.c:183: return;
;	life.c:184: }
	ljmp	_printstr
;------------------------------------------------------------
;Allocation info for local variables in function 'evolveu'
;------------------------------------------------------------
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;sloc2                     Allocated to stack - _bp +4
;sloc3                     Allocated to stack - _bp +6
;sloc4                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	life.c:186: void evolveu(void) {
;	-----------------------------------------
;	 function evolveu
;	-----------------------------------------
_evolveu:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x09
	mov	sp,a
;	life.c:187: fixed = 0;
	mov	r0,#_fixed
	mov	@r0,#0x00
;	life.c:188: cycle2 = 0;
	mov	r0,#_cycle2
	mov	@r0,#0x00
;	life.c:190: OE76 = OE76_0;
	mov	r0,#_OE76
	mov	@r0,#0x3f
;	life.c:30: OEreg = OE76;
	mov	dptr,#_OEreg
	mov	a,#0x3f
	movx	@dptr,a
;	life.c:193: for (y = 0; y < H; y++) {
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00135$:
;	life.c:194: OE76 = OE76_0 | ((y & 0x0003u) << 6);
	mov	r0,#_y
	mov	ar7,@r0
	anl	ar7,#0x03
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r7,a
	orl	ar7,#0x3f
	mov	r0,#_OE76
	mov	@r0,ar7
;	life.c:30: OEreg = OE76;
	mov	dptr,#_OEreg
	mov	a,r7
	movx	@dptr,a
;	life.c:196: for (x = 0; x < W; x++) {
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00133$:
;	life.c:197: n = -u[A2D(W, y, x)];
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
;	life.c:202: UPDN(-1, -1);
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
;	life.c:203: UPDN(-1, 0);
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
;	life.c:204: UPDN(-1, 1);
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
;	life.c:205: UPDN(0, -1);
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
;	life.c:206: UPDN(0, 0);
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
;	life.c:207: UPDN(0, 1);
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
;	life.c:208: UPDN(1, -1);
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
;	life.c:209: UPDN(1, 0);
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
;	life.c:210: UPDN(1, 1);
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
;	life.c:213: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
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
	cjne	r7,#0x03,00169$
	sjmp	00140$
00169$:
	cjne	r7,#0x02,00139$
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
	jnz	00140$
00139$:
;	assignBit
	clr	b0
	sjmp	00141$
00140$:
;	assignBit
	setb	b0
00141$:
	mov	c,b0
	clr	a
	rlc	a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	life.c:214: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
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
;	life.c:215: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
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
;	life.c:196: for (x = 0; x < W; x++) {
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00173$
	inc	r0
	inc	@r0
00173$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00174$
	ljmp	00133$
00174$:
;	life.c:193: for (y = 0; y < H; y++) {
	mov	r0,#_y
	inc	@r0
	cjne	@r0,#0x00,00175$
	inc	r0
	inc	@r0
00175$:
	mov	r0,#_y
	clr	c
	mov	a,@r0
	subb	a,#0xc0
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00176$
	ljmp	00135$
00176$:
;	life.c:219: OE76 = OE76_0;
	mov	r0,#_OE76
	mov	@r0,#0x3f
;	life.c:30: OEreg = OE76;
	mov	dptr,#_OEreg
	mov	a,#0x3f
	movx	@dptr,a
;	life.c:222: cycle2 = !cycle2;
	mov	r0,#_cycle2
	mov	a,@r0
	cjne	a,#0x01,00177$
00177$:
	mov	b0,c
	mov	r0,#_cycle2
	clr	a
	rlc	a
	mov	@r0,a
;	life.c:223: fixed = !fixed;
	mov	r0,#_fixed
	mov	a,@r0
	cjne	a,#0x01,00178$
00178$:
	mov	b0,c
	mov	r0,#_fixed
	clr	a
	rlc	a
	mov	@r0,a
;	life.c:225: memcpy(pu, u, sizeof (u));
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
;	life.c:226: memcpy(u, nu, sizeof (nu));
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
;	life.c:228: return;
;	life.c:229: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;__3932160007              Allocated to registers 
;__4587520011              Allocated to registers 
;------------------------------------------------------------
;	life.c:231: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	life.c:234: IT0 = 1;
;	assignBit
	setb	_IT0
;	life.c:235: IT1 = 1;
;	assignBit
	setb	_IT1
;	life.c:236: EX0 = 1;
;	assignBit
	setb	_EX0
;	life.c:237: EX1 = 1;
;	assignBit
	setb	_EX1
;	life.c:238: EA = 1;
;	assignBit
	setb	_EA
;	life.c:239: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	life.c:244: __endasm;
	nop
	nop
	nop
;	life.c:246: srand(RND);
	mov	dptr,#_RND
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_srand
;	life.c:248: OE76 = OE76_0;
	mov	r0,#_OE76
	mov	@r0,#0x3f
;	life.c:30: OEreg = OE76;
	mov	dptr,#_OEreg
	mov	a,#0x3f
	movx	@dptr,a
;	life.c:43: gen = 0ul;
	mov	r0,#_gen
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:44: genc2 = 0ul;
	mov	r0,#_genc2
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:45: genfx = 0ul;
	mov	r0,#_genfx
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:46: c2set = 0;
	mov	r0,#_c2set
	mov	@r0,#0x00
;	life.c:47: fxset = 0;
	mov	r0,#_fxset
	mov	@r0,#0x00
;	life.c:252: pruni = 0;
	mov	r0,#_pruni
	mov	@r0,#0x00
;	life.c:254: printstr("\033[?25h\033[m");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_printstr
;	life.c:256: for (i0 = 0; !i0; ) {
	mov	r0,#_i0
	mov	@r0,#0x00
;	life.c:257: while (1) {
00127$:
;	life.c:258: printstr("LIFE I L R O P S U");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_printstr
;	life.c:259: putchar(pruni ? (int)'1' : (int)'0');
	mov	r0,#_pruni
	mov	a,@r0
	jz	00170$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00171$
00170$:
	mov	r6,#0x30
	mov	r7,#0x00
00171$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	life.c:260: printstr(" B T\r\n");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_printstr
;	life.c:261: c = toupper(getchar());
	lcall	_getchar
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
;	life.c:262: if (i0 || (c == (int)'T')) goto term;
	mov	r0,#_i0
	mov	a,@r0
	jz	00298$
	ljmp	00154$
00298$:
	cjne	r6,#0x54,00299$
	cjne	r7,#0x00,00299$
	ljmp	00154$
00299$:
;	life.c:263: else if ((c == (int)'I') || (c == (int)'L') || (c == (int)'R')) {
	cjne	r6,#0x49,00300$
	cjne	r7,#0x00,00300$
	sjmp	00117$
00300$:
	cjne	r6,#0x4c,00301$
	cjne	r7,#0x00,00301$
	sjmp	00117$
00301$:
	cjne	r6,#0x52,00118$
	cjne	r7,#0x00,00118$
00117$:
;	life.c:264: if (c == (int)'L') loadiu();
	cjne	r6,#0x4c,00104$
	cjne	r7,#0x00,00104$
	lcall	_loadiu
	sjmp	00105$
00104$:
;	life.c:265: else if (c == (int)'R') loadriu();
	cjne	r6,#0x52,00105$
	cjne	r7,#0x00,00105$
	lcall	_loadriu
00105$:
;	life.c:266: initu();
	lcall	_initu
;	life.c:267: showu(PRUNI, u);
	mov	a,#_u
	push	acc
	mov	a,#(_u >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x04
	lcall	_showu
	dec	sp
	dec	sp
	dec	sp
	ljmp	00127$
00118$:
;	life.c:268: } else if (c == (int)'O') showu(PRUNI, iu);
	cjne	r6,#0x4f,00115$
	cjne	r7,#0x00,00115$
	mov	a,#_iu
	push	acc
	mov	a,#(_iu >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x04
	lcall	_showu
	dec	sp
	dec	sp
	dec	sp
	ljmp	00127$
00115$:
;	life.c:269: else if (c == (int)'P') showu(PRHDR | PRUNI, u);
	cjne	r6,#0x50,00112$
	cjne	r7,#0x00,00112$
	mov	a,#_u
	push	acc
	mov	a,#(_u >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x06
	lcall	_showu
	dec	sp
	dec	sp
	dec	sp
	ljmp	00127$
00112$:
;	life.c:270: else if (c == (int)'U') pruni = !pruni;
	cjne	r6,#0x55,00109$
	cjne	r7,#0x00,00109$
	mov	r0,#_pruni
	mov	a,@r0
	cjne	a,#0x01,00314$
00314$:
	mov	b0,c
	mov	r0,#_pruni
	clr	a
	rlc	a
	mov	@r0,a
	ljmp	00127$
00109$:
;	life.c:271: else if (c == (int)'S') break;
	cjne	r6,#0x53,00315$
	cjne	r7,#0x00,00315$
	sjmp	00316$
00315$:
	ljmp	00127$
00316$:
;	life.c:274: for (i1 = 0; !i0 && !i1; ) {
	mov	r0,#_i1
	mov	@r0,#0x00
00164$:
	mov	r0,#_i0
	mov	a,@r0
	jz	00317$
	ljmp	00150$
00317$:
	mov	r0,#_i1
	mov	a,@r0
	jz	00318$
	ljmp	00150$
00318$:
;	life.c:275: if (fxu()) {
	mov	r0,#_fxset
	mov	a,@r0
	jz	00130$
;	life.c:276: printstr("FIXED AT ");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_printstr
;	life.c:277: showu(PRHDR, u);
	mov	a,#_u
	push	acc
	mov	a,#(_u >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_showu
	dec	sp
	dec	sp
	dec	sp
;	life.c:278: break;
	ljmp	00150$
00130$:
;	life.c:280: if (pruni) showu(PRCLR | PRHDR | PRUNI, u);
	mov	r0,#_pruni
	mov	a,@r0
	jz	00132$
	mov	a,#_u
	push	acc
	mov	a,#(_u >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x07
	lcall	_showu
	dec	sp
	dec	sp
	dec	sp
	sjmp	00133$
00132$:
;	life.c:281: else showu(PRHDR, u);
	mov	a,#_u
	push	acc
	mov	a,#(_u >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_showu
	dec	sp
	dec	sp
	dec	sp
00133$:
;	life.c:53: gen++;
	mov	r0,#_gen
	inc	@r0
	cjne	@r0,#0x00,00321$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00321$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00321$
	inc	r0
	inc	@r0
00321$:
;	life.c:283: evolveu();
	lcall	_evolveu
;	life.c:284: if (fixed) {
	mov	r0,#_fixed
	mov	a,@r0
	jz	00135$
;	life.c:59: genfx = gen;
	mov	r0,#_gen
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_genfx
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:60: fxset = 1;
	mov	r0,#_fxset
	mov	@r0,#0x01
;	life.c:286: printstr("FIXED AT ");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_printstr
;	life.c:287: showu(PRHDR, u);
	mov	a,#_u
	push	acc
	mov	a,#(_u >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_showu
	dec	sp
	dec	sp
	dec	sp
;	life.c:288: break;
	ljmp	00150$
00135$:
;	life.c:290: if (cycle2) {
	mov	r0,#_cycle2
	mov	a,@r0
	jz	00139$
;	life.c:291: if (!c2u()) updatec2();
	mov	r0,#_c2set
	mov	a,@r0
	jnz	00139$
;	life.c:66: genc2 = gen;
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
;	life.c:67: c2set = 1;
	mov	r0,#_c2set
	mov	@r0,#0x01
;	life.c:291: if (!c2u()) updatec2();
00139$:
;	life.c:294: c = getchar_poll();
	lcall	_getchar_poll
	mov	r6,dpl
	mov	r7,dph
;	life.c:295: if (c > 0) {
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00325$
	ljmp	00164$
00325$:
;	life.c:296: c = toupper(c);
	mov	dpl,r6
	mov	dph,r7
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
;	life.c:297: if (c == (int)'U') pruni = !pruni;
	cjne	r6,#0x55,00146$
	cjne	r7,#0x00,00146$
	mov	r0,#_pruni
	mov	a,@r0
	cjne	a,#0x01,00328$
00328$:
	mov	b0,c
	mov	r0,#_pruni
	clr	a
	rlc	a
	mov	@r0,a
	ljmp	00164$
00146$:
;	life.c:298: else if (c == (int)'T') i0 = 1;
	cjne	r6,#0x54,00143$
	cjne	r7,#0x00,00143$
	mov	r0,#_i0
	mov	@r0,#0x01
	ljmp	00164$
00143$:
;	life.c:299: else if (c == (int)'B') i1 = 1;
	cjne	r6,#0x42,00331$
	cjne	r7,#0x00,00331$
	sjmp	00332$
00331$:
	ljmp	00164$
00332$:
	mov	r0,#_i1
	mov	@r0,#0x01
	ljmp	00164$
00150$:
;	life.c:303: if (i1) {
	mov	r0,#_i1
	mov	a,@r0
	jz	00167$
;	life.c:304: printstr("BREAK AT ");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_printstr
;	life.c:305: showu(PRHDR, u);
	mov	a,#_u
	push	acc
	mov	a,#(_u >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_showu
	dec	sp
	dec	sp
	dec	sp
00167$:
;	life.c:256: for (i0 = 0; !i0; ) {
	mov	r0,#_i0
	mov	a,@r0
	jnz	00334$
	ljmp	00127$
00334$:
;	life.c:309: term:
00154$:
;	life.c:310: EA = 0;
;	assignBit
	clr	_EA
;	life.c:311: printstr("TERM\r\n");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_printstr
;	life.c:313: PCON |= 2;
	orl	_PCON,#0x02
;	life.c:315: return;
;	life.c:316: }
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
	.ascii " FIXED "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x1b
	.ascii "[?25l"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x1b
	.ascii "[?25h"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "LOAD 0 1 ~ # <"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii ">"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "RANDOM"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x1b
	.ascii "[?25h"
	.db 0x1b
	.ascii "[m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "LIFE I L R O P S U"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii " B T"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "FIXED AT "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "BREAK AT "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "TERM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
