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
	.globl _getchar
	.globl _putchar
	.globl _toupper
	.globl ___memcpy
	.globl _memset
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
_x:
	.ds 2
_y:
	.ds 2
_j:
	.ds 2
_c:
	.ds 2
_bstep:
	.ds 1
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
_busy:
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
_pu:
	.ds 2048
_u:
	.ds 2048
_nu:
	.ds 2048
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
;	life.c:117: __idata static const char busy[4] = { '\\', '|', '/', '-' };
	mov	r0,#_busy
	mov	@r0,#0x5c
	mov	r0,#(_busy + 0x0001)
	mov	@r0,#0x7c
	mov	r0,#(_busy + 0x0002)
	mov	@r0,#0x2f
	mov	r0,#(_busy + 0x0003)
	mov	@r0,#0x2d
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
;	life.c:9: void int0(void) __interrupt IE0_VECTOR __using 1 {
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
;	life.c:10: i0 = 1;
	mov	r0,#_i0
	mov	@r0,#0x01
;	life.c:11: }
	pop	psw
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'int1'
;------------------------------------------------------------
;	life.c:13: void int1(void) __interrupt IE1_VECTOR __using 1 {
;	-----------------------------------------
;	 function int1
;	-----------------------------------------
_int1:
	push	psw
	mov	psw,#0x08
;	life.c:14: i1 = 1;
	mov	r0,#_i1
	mov	@r0,#0x01
;	life.c:15: }
	pop	psw
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'show'
;------------------------------------------------------------
;hdr                       Allocated to registers r7 
;------------------------------------------------------------
;	life.c:51: void show(char hdr) {
;	-----------------------------------------
;	 function show
;	-----------------------------------------
_show:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	life.c:52: if (hdr) {
	mov	a,dpl
	mov	r7,a
	jz	00102$
;	life.c:53: printstr("\033[2J\033[mGEN ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_printstr
;	life.c:45: print16x(generation[1]);
	mov	r0,#(_generation + 0x0002)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r7
	lcall	_print16x
;	life.c:46: print16x(generation[0]);
	mov	r0,#_generation
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r7
	lcall	_print16x
;	life.c:55: printstr("\r\n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_printstr
;	life.c:38: generation[0]++;
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
;	life.c:39: if (!generation[0]) generation[1]++;
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
;	life.c:56: updategen();
00102$:
;	life.c:59: for (x = 0; x < W; x++) {
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00114$:
;	life.c:60: for (y = 0; y < H; y++)
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00112$:
;	life.c:61: if (u[A2D(W, y, x)]) {
	mov	r0,#_y
	mov	ar6,@r0
	inc	r0
	mov	a,@r0
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r6
	swap	a
	rl	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xe0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
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
;	life.c:62: putchar('['); putchar(']');
	mov	dptr,#0x005b
	lcall	_putchar
	mov	dptr,#0x005d
	lcall	_putchar
	sjmp	00113$
00104$:
;	life.c:64: putchar('#'); putchar('#');
	mov	dptr,#0x0023
	lcall	_putchar
	mov	dptr,#0x0023
	lcall	_putchar
00113$:
;	life.c:60: for (y = 0; y < H; y++)
	mov	r0,#_y
	inc	@r0
	cjne	@r0,#0x00,00151$
	inc	r0
	inc	@r0
00151$:
	mov	r0,#_y
	clr	c
	mov	a,@r0
	subb	a,#0x40
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00112$
;	life.c:66: printstr("\r\n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_printstr
;	life.c:59: for (x = 0; x < W; x++) {
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00153$
	inc	r0
	inc	@r0
00153$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x20
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00154$
	ljmp	00114$
00154$:
;	life.c:69: return;
;	life.c:70: }
	ret
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
;	life.c:161: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0d
	mov	sp,a
;	life.c:162: IT0 = 1;
;	assignBit
	setb	_IT0
;	life.c:163: IT1 = 1;
;	assignBit
	setb	_IT1
;	life.c:164: EX0 = 1;
;	assignBit
	setb	_EX0
;	life.c:165: EX1 = 1;
;	assignBit
	setb	_EX1
;	life.c:166: EA = 1;
;	assignBit
	setb	_EA
;	life.c:168: for (i0 = 0; !i0; ) {		
	mov	r0,#_i0
	mov	@r0,#0x00
00204$:
;	life.c:169: printstr("\033[2J\033[mLIFE INIT\r\n");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_printstr
;	life.c:170: while (1) {
00108$:
;	life.c:171: c = toupper(getchar());
	lcall	_getchar
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_c
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:172: if (i0 || (c == (int)'T')) goto terminate;
	mov	r0,#_i0
	mov	a,@r0
	jz	00333$
	ljmp	00133$
00333$:
	cjne	r6,#0x54,00334$
	cjne	r7,#0x00,00334$
	ljmp	00133$
00334$:
;	life.c:173: else if (c == (int)'L') break;
	cjne	r6,#0x4c,00108$
	cjne	r7,#0x00,00108$
;	life.c:176: reload:
00110$:
;	life.c:73: memset(u, 0, sizeof (u));
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dptr,#_u
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	life.c:74: memset(pu, 0, sizeof (pu));
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dptr,#_pu
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	life.c:80: j = 0;
	mov	r0,#_j
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:82: printstr("LOAD <");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
;	life.c:84: for (y = 0; y < H; y++) {
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00194$:
;	life.c:85: for (x = 0; x < W; x++) {
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	life.c:86: while (1) {
00147$:
;	life.c:87: c = toupper(getchar());
	lcall	_getchar
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_c
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:88: if (c == (int)'0') {
	cjne	r6,#0x30,00145$
	cjne	r7,#0x00,00145$
;	life.c:89: u[A2D(W, y, x)] = 0;
	mov	r0,#_y
	mov	ar4,@r0
	inc	r0
	mov	a,@r0
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r4
	swap	a
	rl	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xe0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	r0,#_x
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	r5,a
	mov	a,r4
	add	a,#_u
	mov	dpl,a
	mov	a,r5
	addc	a,#(_u >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	life.c:90: j++;
	mov	r0,#_j
	inc	@r0
	cjne	@r0,#0x00,00339$
	inc	r0
	inc	@r0
00339$:
;	life.c:91: break;
	sjmp	00150$
00145$:
;	life.c:92: } else if (c == (int)'1') {
	cjne	r6,#0x31,00143$
	cjne	r7,#0x00,00143$
;	life.c:93: u[A2D(W, y, x)] = 1;
	mov	r0,#_y
	mov	ar4,@r0
	inc	r0
	mov	a,@r0
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r4
	swap	a
	rl	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xe0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	r0,#_x
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	r5,a
	mov	a,r4
	add	a,#_u
	mov	dpl,a
	mov	a,r5
	addc	a,#(_u >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	life.c:94: j++;
	mov	r0,#_j
	inc	@r0
	cjne	@r0,#0x00,00342$
	inc	r0
	inc	@r0
00342$:
;	life.c:95: break;
	sjmp	00150$
00143$:
;	life.c:96: } else if (c == (int)'S') goto br_inner;
	cjne	r6,#0x53,00343$
	cjne	r7,#0x00,00343$
	sjmp	00195$
00343$:
;	life.c:97: else if (c == (int)'#') goto out;
	cjne	r6,#0x23,00344$
	cjne	r7,#0x00,00344$
	sjmp	00160$
00344$:
	ljmp	00147$
;	life.c:101: break;
00150$:
;	life.c:85: for (x = 0; x < W; x++) {
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00345$
	inc	r0
	inc	@r0
00345$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x20
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00346$
	ljmp	00147$
00346$:
00195$:
;	life.c:84: for (y = 0; y < H; y++) {
	mov	r0,#_y
	inc	@r0
	cjne	@r0,#0x00,00347$
	inc	r0
	inc	@r0
00347$:
	mov	r0,#_y
	clr	c
	mov	a,@r0
	subb	a,#0x40
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00348$
	ljmp	00194$
00348$:
;	life.c:105: out:
00160$:
;	life.c:106: if (c != (int)'#')
	cjne	r6,#0x23,00349$
	cjne	r7,#0x00,00349$
	sjmp	00159$
00349$:
;	life.c:107: while (1) {
00156$:
;	life.c:108: c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_c
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:109: if (c == (int)'#') break;
	cjne	r6,#0x23,00156$
	cjne	r7,#0x00,00156$
00159$:
;	life.c:111: print16x(j);
	mov	r0,#_j
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_print16x
;	life.c:112: printstr(">\r\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_printstr
;	life.c:179: show(0);
	mov	dpl,#0x00
	lcall	_show
;	life.c:181: printstr("READY\r\n");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_printstr
;	life.c:182: while (1) {
00121$:
;	life.c:183: c = toupper(getchar());
	lcall	_getchar
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_c
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	life.c:184: if (i0 || (c == (int)'T')) goto terminate;
	mov	r0,#_i0
	mov	a,@r0
	jz	00352$
	ljmp	00133$
00352$:
	cjne	r6,#0x54,00353$
	cjne	r7,#0x00,00353$
	ljmp	00133$
00353$:
;	life.c:185: else if (c == (int)'L') goto reload;
	cjne	r6,#0x4c,00354$
	cjne	r7,#0x00,00354$
	ljmp	00110$
00354$:
;	life.c:186: else if (c == (int)'S') break;
	cjne	r6,#0x53,00121$
	cjne	r7,#0x00,00121$
;	life.c:31: generation[0] = 0;
	mov	r0,#_generation
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	life.c:32: generation[1] = 0;
	mov	r0,#(_generation + 0x0002)
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	life.c:191: for (i1 = 0; !i0 && !i1; ) {
	mov	r0,#_i1
	mov	@r0,#0x00
00202$:
	mov	r0,#_i0
	mov	a,@r0
	jz	00357$
	ljmp	00129$
00357$:
	mov	r0,#_i1
	mov	a,@r0
	jz	00358$
	ljmp	00129$
00358$:
;	life.c:192: show(1);
	mov	dpl,#0x01
	lcall	_show
;	life.c:120: fixed = 0;
	mov	r0,#_fixed
	mov	@r0,#0x00
;	life.c:121: cycle2 = 0;
	mov	r0,#_cycle2
	mov	@r0,#0x00
;	life.c:122: bstep = 0;
	mov	r0,#_bstep
	mov	@r0,#0x00
;	life.c:124: for (y = 0; y < H; y++) {
	mov	r0,#_y
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00198$:
;	life.c:125: putchar(busy[bstep]); putchar('\r');
	mov	r0,#_bstep
	mov	a,@r0
	add	a,#_busy
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	mov	dptr,#0x000d
	lcall	_putchar
;	life.c:126: bstep = (bstep + 1) & 3;
	mov	r0,#_bstep
	mov	ar7,@r0
	inc	r7
	mov	r0,#_bstep
	mov	a,#0x03
	anl	a,r7
	mov	@r0,a
;	life.c:127: for (x = 0; x < W; x++) {
	mov	r0,#_x
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00196$:
;	life.c:128: n = -u[A2D(W, y, x)];
	mov	r0,#_y
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,@r1
	swap	a
	rl	a
	xch	a,@r1
	xrl	a,@r1
	xch	a,@r1
	anl	a,#0xe0
	xch	a,@r1
	xrl	a,@r1
	inc	r1
	mov	@r1,a
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
;	life.c:135: UPDN(-1, -1);
	mov	r0,#_y
	mov	a,#0xff
	add	a,@r0
	mov	r2,a
	mov	a,#0xff
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,#0x40
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,#0x40
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
	mov	a,r3
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r2
	swap	a
	rl	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xe0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	mov	r0,#_x
	mov	a,#0xff
	add	a,@r0
	mov	r4,a
	mov	a,#0xff
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,#0x20
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	push	ar3
	push	ar2
	mov	a,#0x20
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
;	life.c:136: UPDN(-1, 0);
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
	mov	a,#0x20
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
	mov	a,#0x20
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
;	life.c:137: UPDN(-1, 1);
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x21
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	push	ar3
	push	ar2
	mov	a,#0x20
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
;	life.c:138: UPDN(0, -1);
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
	mov	a,#0x40
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
	mov	a,#0x40
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
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar2
	mov	a,r3
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,@r0
	swap	a
	rl	a
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0xe0
	xch	a,@r0
	xrl	a,@r0
	inc	r0
	mov	@r0,a
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
;	life.c:139: UPDN(0, 0);
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
;	life.c:140: UPDN(0, 1);
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
;	life.c:141: UPDN(1, -1);
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x41
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
	mov	a,#0x40
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
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r2
	swap	a
	rl	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xe0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
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
;	life.c:142: UPDN(1, 0);
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
;	life.c:143: UPDN(1, 1);
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
;	life.c:146: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
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
	cjne	r7,#0x03,00359$
	sjmp	00209$
00359$:
	cjne	r7,#0x02,00208$
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
	jnz	00209$
00208$:
;	assignBit
	clr	b0
	sjmp	00210$
00209$:
;	assignBit
	setb	b0
00210$:
	mov	c,b0
	clr	a
	rlc	a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	life.c:147: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
	mov	r0,#_y
	mov	ar6,@r0
	inc	r0
	mov	a,@r0
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r6
	swap	a
	rl	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xe0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
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
;	life.c:148: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
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
;	life.c:127: for (x = 0; x < W; x++) {
	mov	r0,#_x
	inc	@r0
	cjne	@r0,#0x00,00363$
	inc	r0
	inc	@r0
00363$:
	mov	r0,#_x
	clr	c
	mov	a,@r0
	subb	a,#0x20
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00364$
	ljmp	00196$
00364$:
;	life.c:124: for (y = 0; y < H; y++) {
	mov	r0,#_y
	inc	@r0
	cjne	@r0,#0x00,00365$
	inc	r0
	inc	@r0
00365$:
	mov	r0,#_y
	clr	c
	mov	a,@r0
	subb	a,#0x40
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00366$
	ljmp	00198$
00366$:
;	life.c:152: cycle2 = !cycle2;
	mov	r0,#_cycle2
	mov	a,@r0
	cjne	a,#0x01,00367$
00367$:
	mov	b0,c
	mov	r0,#_cycle2
	clr	a
	rlc	a
	mov	@r0,a
;	life.c:153: fixed = !fixed;
	mov	r0,#_fixed
	mov	a,@r0
	cjne	a,#0x01,00368$
00368$:
	mov	b0,c
	mov	r0,#_fixed
	clr	a
	rlc	a
	mov	@r0,a
;	life.c:155: memcpy(pu, u, sizeof (u));
	clr	a
	push	acc
	mov	a,#0x08
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
;	life.c:156: memcpy(u, nu, sizeof (nu));
	clr	a
	push	acc
	mov	a,#0x08
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
;	life.c:194: if (fixed || cycle2) {
	mov	r0,#_fixed
	mov	a,@r0
	jnz	00126$
	mov	r0,#_cycle2
	mov	a,@r0
	jnz	00370$
	ljmp	00202$
00370$:
00126$:
;	life.c:195: printstr("DONE ");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_printstr
;	life.c:196: if (fixed) printstr("FIXED\r\n");
	mov	r0,#_fixed
	mov	a,@r0
	jz	00124$
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_printstr
	sjmp	00125$
00124$:
;	life.c:197: else printstr("CYCLE2\r\n");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_printstr
00125$:
;	life.c:198: (void)getchar();
	lcall	_getchar
;	life.c:199: break;
00129$:
;	life.c:203: if (i1) {
	mov	r0,#_i1
	mov	a,@r0
	jz	00205$
;	life.c:204: printstr("BREAK\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
;	life.c:205: (void)getchar();
	lcall	_getchar
00205$:
;	life.c:168: for (i0 = 0; !i0; ) {		
	mov	r0,#_i0
	mov	a,@r0
	jnz	00373$
	ljmp	00204$
00373$:
;	life.c:209: terminate:
00133$:
;	life.c:210: EA = 0;
;	assignBit
	clr	_EA
;	life.c:211: printstr("TERM\r\n");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_printstr
;	life.c:212: (void)getchar();
	lcall	_getchar
;	life.c:214: PCON |= 2;
	orl	_PCON,#0x02
;	life.c:216: return;
;	life.c:217: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x1b
	.ascii "[2J"
	.db 0x1b
	.ascii "[mGEN "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "LOAD <"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii ">"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x1b
	.ascii "[2J"
	.db 0x1b
	.ascii "[mLIFE INIT"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "READY"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "DONE "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "FIXED"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "CYCLE2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "BREAK"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "TERM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
