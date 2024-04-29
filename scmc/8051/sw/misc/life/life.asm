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
;	life.c:91: static void initu(void) {
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
;	life.c:92: memcpy(u, iu, sizeof (iu));
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
;	life.c:93: memset(pu, 0, sizeof (pu));
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
;	life.c:96: return;
;	life.c:97: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'showu'
;------------------------------------------------------------
;universe                  Allocated to stack - _bp -5
;prflags                   Allocated to registers r7 
;x                         Allocated to stack - _bp +1
;y                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	life.c:104: static void showu(char prflags, char *universe) {
;	-----------------------------------------
;	 function showu
;	-----------------------------------------
_showu:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	life.c:107: if (prflags & PRCLR) printstr("\033[2J");
	mov	a,dpl
	mov	r7,a
	jnb	acc.0,00102$
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	lcall	_printstr
	pop	ar7
00102$:
;	life.c:108: if (prflags & PRHDR) {
	mov	a,r7
	jnb	acc.1,00108$
;	life.c:109: printstr("GEN ");
	mov	dptr,#___str_1
	mov	b,#0x80
	push	ar7
	lcall	_printstr
;	life.c:110: print32x(gen);
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
;	life.c:111: if (c2set) {
	mov	r0,#_c2set
	mov	a,@r0
	jz	00104$
;	life.c:112: printstr(" CYCLE2 ");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	lcall	_printstr
;	life.c:113: print32x(genc2);
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
;	life.c:115: if (fxset) {
	mov	r0,#_fxset
	mov	a,@r0
	jz	00106$
;	life.c:116: printstr(" FIXED ");
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar7
	lcall	_printstr
;	life.c:117: print32x(genfx);
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
;	life.c:119: printstr("\r\n");
	mov	dptr,#___str_4
	mov	b,#0x80
	push	ar7
	lcall	_printstr
	pop	ar7
00108$:
;	life.c:121: if (prflags & PRUNI) {
	mov	a,r7
	jb	acc.2,00168$
	ljmp	00115$
00168$:
;	life.c:122: printstr("\033[?25l");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_printstr
;	life.c:123: for (x = 0; x < W; x++) {
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:124: for (y = 0; y < H; y++)
00128$:
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00116$:
;	life.c:125: if (universe[A2D(W, y, x)]) putchar((int)'1');
	push	ar4
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,r2
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r5,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
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
	lcall	__gptrget
	pop	ar5
	pop	ar4
	jz	00110$
	mov	dptr,#0x0031
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_putchar
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	sjmp	00117$
00110$:
;	life.c:126: else putchar((int)'0');
	mov	dptr,#0x0030
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_putchar
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
00117$:
;	life.c:124: for (y = 0; y < H; y++)
	mov	a,#0x30
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	inc	r4
	cjne	r4,#0x00,00170$
	inc	r5
00170$:
	clr	c
	mov	a,r4
	subb	a,#0xc0
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00116$
;	life.c:127: printstr("\r\n");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_printstr
;	life.c:123: for (x = 0; x < W; x++) {
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00172$
	inc	r0
	inc	@r0
00172$:
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00173$
	ljmp	00128$
00173$:
;	life.c:129: printstr("\033[?25h");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_printstr
00115$:
;	life.c:132: return;
;	life.c:133: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dumpu'
;------------------------------------------------------------
;universe                  Allocated to stack - _bp +1
;x                         Allocated to stack - _bp +4
;y                         Allocated to registers r3 r4 
;sloc0                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	life.c:135: static void dumpu(char *universe) {
;	-----------------------------------------
;	 function dumpu
;	-----------------------------------------
_dumpu:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	life.c:138: for (y = 0; y < (H * W); y += W) {
	mov	r3,#0x00
	mov	r4,#0x00
;	life.c:139: for (x = 0; x < W; x++)
00112$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00103$:
;	life.c:140: putchar(universe[y + x] ? (int)'1' : (int)'0');
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r7,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,r7
	add	a,@r0
	mov	r2,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	jz	00109$
	mov	r5,#0x31
	mov	r6,#0x00
	sjmp	00110$
00109$:
	mov	r5,#0x30
	mov	r6,#0x00
00110$:
	mov	dpl,r5
	mov	dph,r6
	push	ar4
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar4
;	life.c:139: for (x = 0; x < W; x++)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00134$
	inc	r0
	inc	@r0
00134$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00103$
;	life.c:141: printstr("\r\n");
	mov	dptr,#___str_4
	mov	b,#0x80
	push	ar4
	push	ar3
	lcall	_printstr
	pop	ar3
	pop	ar4
;	life.c:138: for (y = 0; y < (H * W); y += W) {
	mov	a,#0x30
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xa4
	jnc	00136$
	ljmp	00112$
00136$:
;	life.c:143: printstr("#\n");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_printstr
;	life.c:145: return;
;	life.c:146: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'loadiu'
;------------------------------------------------------------
;x                         Allocated to registers r2 r3 
;y                         Allocated to registers r4 r5 
;nbits                     Allocated to stack - _bp +3
;c                         Allocated to registers r6 r7 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	life.c:148: static void loadiu(void) {
;	-----------------------------------------
;	 function loadiu
;	-----------------------------------------
_loadiu:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
;	life.c:152: memset(iu, 0, sizeof (iu));
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
;	life.c:154: printstr("LOAD 0 1 ~ # <");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_printstr
;	life.c:156: for (nbits = 0, y = 0; y < (H * W); y += W) {
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r4,#0x00
	mov	r5,#0x00
00129$:
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0xa4
	jc	00174$
	ljmp	00119$
00174$:
;	life.c:158: while (1) {
	mov	r2,#0x00
	mov	r3,#0x00
00113$:
;	life.c:159: c = getchar();
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_getchar
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	life.c:160: if (c == (int)'0') {
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x30,00110$
	inc	r0
	cjne	@r0,#0x00,00110$
;	life.c:161: iu[y + x] = 0;
	mov	a,r2
	add	a,r4
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r7,a
	mov	a,r6
	add	a,#_iu
	mov	dpl,a
	mov	a,r7
	addc	a,#(_iu >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	life.c:162: nbits++;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00177$
	inc	r0
	inc	@r0
00177$:
;	life.c:163: break;
	sjmp	00116$
00110$:
;	life.c:164: } else if (c == (int)'1') {
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x31,00107$
	inc	r0
	cjne	@r0,#0x00,00107$
;	life.c:165: iu[y + x] = 1;
	mov	a,r2
	add	a,r4
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r7,a
	mov	a,r6
	add	a,#_iu
	mov	dpl,a
	mov	a,r7
	addc	a,#(_iu >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	life.c:166: nbits++;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00180$
	inc	r0
	inc	@r0
00180$:
;	life.c:167: break;
	sjmp	00116$
00107$:
;	life.c:168: } else if (c == (int)'~') goto br_inner;
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x7e,00181$
	inc	r0
	cjne	@r0,#0x00,00181$
	sjmp	00130$
00181$:
;	life.c:169: else if (c == (int)'#') goto out;
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x23,00182$
	inc	r0
	cjne	@r0,#0x00,00182$
	sjmp	00119$
00182$:
	ljmp	00113$
;	life.c:173: break;
00116$:
;	life.c:157: for (x = 0; x < W; x++) {
	inc	r2
	cjne	r2,#0x00,00183$
	inc	r3
00183$:
	clr	c
	mov	a,r2
	subb	a,#0x30
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00184$
	ljmp	00113$
00184$:
00130$:
;	life.c:156: for (nbits = 0, y = 0; y < (H * W); y += W) {
	mov	a,#0x30
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	ljmp	00129$
;	life.c:177: out:
00119$:
;	life.c:178: if (c != (int)'#')
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x23,00185$
	inc	r0
	cjne	@r0,#0x00,00185$
	sjmp	00126$
00185$:
;	life.c:179: while (1) {
00123$:
;	life.c:180: c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	life.c:181: if (c == (int)'#') break;
	cjne	r6,#0x23,00123$
	cjne	r7,#0x00,00123$
00126$:
;	life.c:183: print16x(nbits);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16x
;	life.c:184: printstr(">\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
;	life.c:186: return;
;	life.c:187: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'loadriu'
;------------------------------------------------------------
;x                         Allocated to registers r4 r5 
;y                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	life.c:189: static void loadriu(void) {
;	-----------------------------------------
;	 function loadriu
;	-----------------------------------------
_loadriu:
;	life.c:192: printstr("RANDOM");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_printstr
;	life.c:194: for (y = 0; y < (H * W); y += W)
	mov	r6,#0x00
	mov	r7,#0x00
;	life.c:195: for (x = 0; x < W; x++)
00109$:
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
;	life.c:196: iu[y + x] = rand() & 1;
	mov	a,r4
	add	a,r6
	mov	r2,a
	mov	a,r5
	addc	a,r7
	mov	r3,a
	mov	a,r2
	add	a,#_iu
	mov	r2,a
	mov	a,r3
	addc	a,#(_iu >> 8)
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_rand
	mov	r0,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	anl	ar0,#0x01
	mov	dpl,r2
	mov	dph,r3
	mov	a,r0
	movx	@dptr,a
;	life.c:195: for (x = 0; x < W; x++)
	inc	r4
	cjne	r4,#0x00,00127$
	inc	r5
00127$:
	clr	c
	mov	a,r4
	subb	a,#0x30
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00103$
;	life.c:194: for (y = 0; y < (H * W); y += W)
	mov	a,#0x30
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xa4
	jc	00109$
;	life.c:198: printstr("\r\n");
	mov	dptr,#___str_4
	mov	b,#0x80
;	life.c:200: return;
;	life.c:201: }
	ljmp	_printstr
;------------------------------------------------------------
;Allocation info for local variables in function 'evolveu'
;------------------------------------------------------------
;x                         Allocated to stack - _bp +15
;y                         Allocated to stack - _bp +17
;n                         Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +3
;sloc2                     Allocated to stack - _bp +5
;sloc3                     Allocated to stack - _bp +7
;sloc4                     Allocated to stack - _bp +9
;sloc5                     Allocated to stack - _bp +11
;sloc6                     Allocated to stack - _bp +13
;------------------------------------------------------------
;	life.c:203: void evolveu(void) {
;	-----------------------------------------
;	 function evolveu
;	-----------------------------------------
_evolveu:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x12
	mov	sp,a
;	life.c:207: fixed = 0;
	mov	r0,#_fixed
	mov	@r0,#0x00
;	life.c:208: cycle2 = 0;
	mov	r0,#_cycle2
	mov	@r0,#0x00
;	life.c:210: OE76 = OE76_0;
	mov	r0,#_OE76
	mov	@r0,#0x3f
;	life.c:30: OEreg = OE76;
	mov	dptr,#_OEreg
	mov	a,#0x3f
	movx	@dptr,a
;	life.c:213: for (y = 0; y < H; y++) {
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00135$:
;	life.c:214: OE76 = OE76_0 | ((y & 0x0003u) << 6);
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	ar5,@r0
	anl	ar5,#0x03
	mov	a,r5
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r5,a
	orl	ar5,#0x3f
	mov	r0,#_OE76
	mov	@r0,ar5
;	life.c:30: OEreg = OE76;
	mov	dptr,#_OEreg
	mov	a,r5
	movx	@dptr,a
;	life.c:216: for (x = 0; x < W; x++) {
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0xbf
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
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
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	dptr,#0x0030
	lcall	__mulint
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0xc0
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
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
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	dptr,#0x0030
	lcall	__mulint
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0xc1
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
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
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	dptr,#0x0030
	lcall	__mulint
	xch	a,r0
	mov	a,_bp
	add	a,#0x05
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:248: return;
	pop	ar5
	pop	ar4
;	life.c:216: for (x = 0; x < W; x++) {
00133$:
;	life.c:217: n = -u[A2D(W, y, x)];
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
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
	add	a,#0x0a
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	add	a,#_u
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	clr	c
	clr	a
	subb	a,r7
	mov	r3,a
	clr	a
	subb	a,r6
	mov	r2,a
;	life.c:222: UPDN(-1, -1);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x2f
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
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	r0,_bp
	inc	r0
	mov	a,r6
	add	a,@r0
	mov	r4,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r4
	add	a,#_u
	mov	dpl,a
	mov	a,r5
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,r5
	add	a,r3
	mov	@r0,a
	mov	a,r4
	addc	a,r2
	inc	r0
	mov	@r0,a
;	life.c:223: UPDN(-1, 0);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x30
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	push	ar7
	push	ar6
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
	mov	r0,_bp
	inc	r0
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
	mov	r2,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	life.c:224: UPDN(-1, 1);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x31
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	push	ar5
	push	ar4
	mov	a,#0x30
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__modsint
	xch	a,r0
	mov	a,_bp
	add	a,#0x0d
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
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0d
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
	mov	r2,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	life.c:225: UPDN(0, -1);
	mov	a,_bp
	add	a,#0x03
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
	mov	r2,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	life.c:226: UPDN(0, 0);
	mov	a,_bp
	add	a,#0x03
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
	mov	r2,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	life.c:227: UPDN(0, 1);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
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
	mov	r2,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
;	life.c:228: UPDN(1, -1);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r6
	add	a,#_u
	mov	dpl,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,#0x00
	add	a,r3
	mov	r7,a
	mov	a,r6
	addc	a,r2
	mov	r6,a
;	life.c:229: UPDN(1, 0);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r4
	add	a,#_u
	mov	dpl,a
	mov	a,r5
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r4,a
;	life.c:230: UPDN(1, 1);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r6
	add	a,#_u
	mov	dpl,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,#0x00
	add	a,r5
	mov	r7,a
	mov	a,r6
	addc	a,r4
	mov	r6,a
;	life.c:233: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	add	a,#_nu
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,#(_nu >> 8)
	mov	r2,a
	cjne	r7,#0x03,00177$
	cjne	r6,#0x00,00177$
	pop	ar5
	pop	ar4
	sjmp	00140$
00177$:
	pop	ar5
	pop	ar4
	cjne	r7,#0x02,00139$
	cjne	r6,#0x00,00139$
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
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
	mov	dpl,r3
	mov	dph,r2
	movx	@dptr,a
;	life.c:234: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	r7,a
	mov	a,r6
	add	a,#_pu
	mov	dpl,a
	mov	a,r7
	addc	a,#(_pu >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	a,r6
	add	a,#_nu
	mov	dpl,a
	mov	a,r7
	addc	a,#(_nu >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	xrl	a,r3
	mov	r0,#_cycle2
	orl	a,@r0
	mov	@r0,a
;	life.c:235: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
	mov	a,r6
	add	a,#_u
	mov	dpl,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,r2
	xrl	a,r7
	mov	r0,#_fixed
	orl	a,@r0
	mov	@r0,a
;	life.c:216: for (x = 0; x < W; x++) {
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00181$
	inc	r0
	inc	@r0
00181$:
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00182$
	ljmp	00133$
00182$:
;	life.c:213: for (y = 0; y < H; y++) {
	mov	a,#0x30
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x30
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00183$
	inc	r0
	inc	@r0
00183$:
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0xc0
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00184$
	ljmp	00135$
00184$:
;	life.c:239: OE76 = OE76_0;
	mov	r0,#_OE76
	mov	@r0,#0x3f
;	life.c:30: OEreg = OE76;
	mov	dptr,#_OEreg
	mov	a,#0x3f
	movx	@dptr,a
;	life.c:242: cycle2 = !cycle2;
	mov	r0,#_cycle2
	mov	a,@r0
	cjne	a,#0x01,00185$
00185$:
	mov	b0,c
	mov	r0,#_cycle2
	clr	a
	rlc	a
	mov	@r0,a
;	life.c:243: fixed = !fixed;
	mov	r0,#_fixed
	mov	a,@r0
	cjne	a,#0x01,00186$
00186$:
	mov	b0,c
	mov	r0,#_fixed
	clr	a
	rlc	a
	mov	@r0,a
;	life.c:245: memcpy(pu, u, sizeof (u));
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
;	life.c:246: memcpy(u, nu, sizeof (nu));
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
;	life.c:248: return;
;	life.c:249: }
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
;	life.c:251: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	life.c:254: IT0 = 1;
;	assignBit
	setb	_IT0
;	life.c:255: IT1 = 1;
;	assignBit
	setb	_IT1
;	life.c:256: EX0 = 1;
;	assignBit
	setb	_EX0
;	life.c:257: EX1 = 1;
;	assignBit
	setb	_EX1
;	life.c:258: EA = 1;
;	assignBit
	setb	_EA
;	life.c:259: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	life.c:264: __endasm;
	nop
	nop
	nop
;	life.c:266: srand(RND);
	mov	dptr,#_RND
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_srand
;	life.c:268: OE76 = OE76_0;
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
;	life.c:272: pruni = 0;
	mov	r0,#_pruni
	mov	@r0,#0x00
;	life.c:274: printstr("\033[?25h\033[m");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_printstr
;	life.c:276: for (i0 = 0; !i0; ) {
	mov	r0,#_i0
	mov	@r0,#0x00
;	life.c:277: while (1) {
00133$:
;	life.c:278: printstr("LIFE [ I L R ] [ D O Q P ] [ S U");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_printstr
;	life.c:279: putchar(pruni ? (int)'1' : (int)'0');
	mov	r0,#_pruni
	mov	a,@r0
	jz	00176$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00177$
00176$:
	mov	r6,#0x30
	mov	r7,#0x00
00177$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	life.c:280: printstr(" B ] T\r\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_printstr
;	life.c:281: c = toupper(getchar());
	lcall	_getchar
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
;	life.c:282: if (i0 || (c == (int)'T')) goto term;
	mov	r0,#_i0
	mov	a,@r0
	jz	00314$
	ljmp	00160$
00314$:
	cjne	r6,#0x54,00315$
	cjne	r7,#0x00,00315$
	ljmp	00160$
00315$:
;	life.c:283: else if ((c == (int)'I') || (c == (int)'L') || (c == (int)'R')) {
	cjne	r6,#0x49,00316$
	cjne	r7,#0x00,00316$
	sjmp	00123$
00316$:
	cjne	r6,#0x4c,00317$
	cjne	r7,#0x00,00317$
	sjmp	00123$
00317$:
	cjne	r6,#0x52,00124$
	cjne	r7,#0x00,00124$
00123$:
;	life.c:284: if (c == (int)'L') loadiu();
	cjne	r6,#0x4c,00104$
	cjne	r7,#0x00,00104$
	lcall	_loadiu
	sjmp	00105$
00104$:
;	life.c:285: else if (c == (int)'R') loadriu();
	cjne	r6,#0x52,00105$
	cjne	r7,#0x00,00105$
	lcall	_loadriu
00105$:
;	life.c:286: initu();
	lcall	_initu
;	life.c:287: showu(PRUNI, u);
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
	ljmp	00133$
00124$:
;	life.c:288: } else if (c == (int)'D') dumpu(iu);
	cjne	r6,#0x44,00121$
	cjne	r7,#0x00,00121$
	mov	dptr,#_iu
	mov	b,#0x00
	lcall	_dumpu
	ljmp	00133$
00121$:
;	life.c:289: else if (c == (int)'O') showu(PRUNI, iu);
	cjne	r6,#0x4f,00118$
	cjne	r7,#0x00,00118$
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
	ljmp	00133$
00118$:
;	life.c:290: else if (c == (int)'Q') dumpu(u);
	cjne	r6,#0x51,00115$
	cjne	r7,#0x00,00115$
	mov	dptr,#_u
	mov	b,#0x00
	lcall	_dumpu
	ljmp	00133$
00115$:
;	life.c:291: else if (c == (int)'P') showu(PRHDR | PRUNI, u);
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
	ljmp	00133$
00112$:
;	life.c:292: else if (c == (int)'U') pruni = !pruni;
	cjne	r6,#0x55,00109$
	cjne	r7,#0x00,00109$
	mov	r0,#_pruni
	mov	a,@r0
	cjne	a,#0x01,00334$
00334$:
	mov	b0,c
	mov	r0,#_pruni
	clr	a
	rlc	a
	mov	@r0,a
	ljmp	00133$
00109$:
;	life.c:293: else if (c == (int)'S') break;
	cjne	r6,#0x53,00335$
	cjne	r7,#0x00,00335$
	sjmp	00336$
00335$:
	ljmp	00133$
00336$:
;	life.c:296: for (i1 = 0; !i0 && !i1; ) {
	mov	r0,#_i1
	mov	@r0,#0x00
00170$:
	mov	r0,#_i0
	mov	a,@r0
	jz	00337$
	ljmp	00156$
00337$:
	mov	r0,#_i1
	mov	a,@r0
	jz	00338$
	ljmp	00156$
00338$:
;	life.c:297: if (fxu()) {
	mov	r0,#_fxset
	mov	a,@r0
	jz	00136$
;	life.c:298: printstr("FIXED AT ");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_printstr
;	life.c:299: showu(PRHDR, u);
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
;	life.c:300: break;
	ljmp	00156$
00136$:
;	life.c:302: if (pruni) showu(PRCLR | PRHDR | PRUNI, u);
	mov	r0,#_pruni
	mov	a,@r0
	jz	00138$
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
	sjmp	00139$
00138$:
;	life.c:303: else showu(PRHDR, u);
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
00139$:
;	life.c:53: gen++;
	mov	r0,#_gen
	inc	@r0
	cjne	@r0,#0x00,00341$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00341$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00341$
	inc	r0
	inc	@r0
00341$:
;	life.c:305: evolveu();
	lcall	_evolveu
;	life.c:306: if (fixed) {
	mov	r0,#_fixed
	mov	a,@r0
	jz	00141$
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
;	life.c:308: printstr("FIXED AT ");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_printstr
;	life.c:309: showu(PRHDR, u);
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
;	life.c:310: break;
	ljmp	00156$
00141$:
;	life.c:312: if (cycle2) {
	mov	r0,#_cycle2
	mov	a,@r0
	jz	00145$
;	life.c:313: if (!c2u()) updatec2();
	mov	r0,#_c2set
	mov	a,@r0
	jnz	00145$
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
;	life.c:313: if (!c2u()) updatec2();
00145$:
;	life.c:316: c = getchar_poll();
	lcall	_getchar_poll
	mov	r6,dpl
	mov	r7,dph
;	life.c:317: if (c > 0) {
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00345$
	ljmp	00170$
00345$:
;	life.c:318: c = toupper(c);
	mov	dpl,r6
	mov	dph,r7
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
;	life.c:319: if (c == (int)'U') pruni = !pruni;
	cjne	r6,#0x55,00152$
	cjne	r7,#0x00,00152$
	mov	r0,#_pruni
	mov	a,@r0
	cjne	a,#0x01,00348$
00348$:
	mov	b0,c
	mov	r0,#_pruni
	clr	a
	rlc	a
	mov	@r0,a
	ljmp	00170$
00152$:
;	life.c:320: else if (c == (int)'T') i0 = 1;
	cjne	r6,#0x54,00149$
	cjne	r7,#0x00,00149$
	mov	r0,#_i0
	mov	@r0,#0x01
	ljmp	00170$
00149$:
;	life.c:321: else if (c == (int)'B') i1 = 1;
	cjne	r6,#0x42,00351$
	cjne	r7,#0x00,00351$
	sjmp	00352$
00351$:
	ljmp	00170$
00352$:
	mov	r0,#_i1
	mov	@r0,#0x01
	ljmp	00170$
00156$:
;	life.c:325: if (i1) {
	mov	r0,#_i1
	mov	a,@r0
	jz	00173$
;	life.c:326: printstr("BREAK AT ");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_printstr
;	life.c:327: showu(PRHDR, u);
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
00173$:
;	life.c:276: for (i0 = 0; !i0; ) {
	mov	r0,#_i0
	mov	a,@r0
	jnz	00354$
	ljmp	00133$
00354$:
;	life.c:331: term:
00160$:
;	life.c:332: EA = 0;
;	assignBit
	clr	_EA
;	life.c:333: printstr("TERM\r\n");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_printstr
;	life.c:335: PCON |= 2;
	orl	_PCON,#0x02
;	life.c:337: return;
;	life.c:338: }
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
	.ascii "#"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "LOAD 0 1 ~ # <"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii ">"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "RANDOM"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x1b
	.ascii "[?25h"
	.db 0x1b
	.ascii "[m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "LIFE [ I L R ] [ D O Q P ] [ S U"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii " B ] T"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "FIXED AT "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "BREAK AT "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "TERM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
