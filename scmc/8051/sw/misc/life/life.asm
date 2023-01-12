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
	.globl _int1
	.globl _int0
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
	.globl _c
	.globl _cycle2
	.globl _fixed
	.globl _j
	.globl _generation
	.globl _n
	.globl _y1
	.globl _x1
	.globl _y
	.globl _x
	.globl _nu
	.globl _u
	.globl _pu
	.globl _i1
	.globl _i0
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
_i0::
	.ds 2
_i1::
	.ds 2
_pu::
	.ds 1024
_u::
	.ds 1024
_nu::
	.ds 1024
_x::
	.ds 2
_y::
	.ds 2
_x1::
	.ds 2
_y1::
	.ds 2
_n::
	.ds 2
_generation::
	.ds 8
_j::
	.ds 2
_fixed::
	.ds 2
_cycle2::
	.ds 2
_c::
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
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	life.c:7: int putchar(int c) __naked {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	naked function: no prologue.
;	life.c:12: __endasm;
	mov	a, dpl
	ljmp	0x0030
;	life.c:13: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	life.c:15: int getchar(void) __naked {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	naked function: no prologue.
;	life.c:21: __endasm;
	lcall	0x0032
	mov	dpl, a
	mov	dph, #0
	ret
;	life.c:22: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'int0'
;------------------------------------------------------------
;	life.c:33: void int0(void) __interrupt 0 __using 1 {
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
	push	acc
	push	dpl
	push	dph
;	life.c:34: i0 = 1;
	mov	dptr,#_i0
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	life.c:35: }
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'int1'
;------------------------------------------------------------
;	life.c:38: void int1(void) __interrupt 2 __using 1 {
;	-----------------------------------------
;	 function int1
;	-----------------------------------------
_int1:
	push	acc
	push	dpl
	push	dph
;	life.c:39: i1 = 1;
	mov	dptr,#_i1
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	life.c:40: }
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	life.c:149: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	life.c:150: IT0 = 1;
;	assignBit
	setb	_IT0
;	life.c:151: IT1 = 1;
;	assignBit
	setb	_IT1
;	life.c:152: EX0 = 1;
;	assignBit
	setb	_EX0
;	life.c:153: EX1 = 1;
;	assignBit
	setb	_EX1
;	life.c:154: EA = 1;
;	assignBit
	setb	_EA
;	life.c:156: for (i0 = 0; !i0; ) {
	mov	dptr,#_i0
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_i1
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00197$:
;	life.c:84: for (y = 0; y < H; y++)
	mov	dptr,#_y
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00163$:
;	life.c:85: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00161$:
;	life.c:86: u[y][x] = 0;
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r6
	add	a,#_u
	mov	r6,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	r7,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
;	life.c:87: pu[y][x] = 0;
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r6
	add	a,#_pu
	mov	r6,a
	mov	a,r7
	addc	a,#(_pu >> 8)
	mov	r7,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
;	life.c:85: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00389$
	ljmp	00161$
00389$:
;	life.c:84: for (y = 0; y < H; y++)
	mov	dptr,#_y
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00390$
	ljmp	00163$
00390$:
;	life.c:158: printf("\033[2J\033[mINIT\r\n");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	life.c:159: (void)getchar();
	lcall	_getchar
;	life.c:161: printf("LOAD\r\n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	life.c:162: (void)getchar();
	lcall	_getchar
;	life.c:94: j = 0;
	mov	dptr,#_j
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	life.c:96: putchar('<');
	mov	dptr,#0x003c
	lcall	_putchar
;	life.c:98: for (y = 0; y < H; y++)
	mov	dptr,#_y
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00167$:
;	life.c:99: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00165$:
;	life.c:100: c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_c
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	life.c:101: if (c == (int)'0') {
	cjne	r6,#0x30,00117$
	cjne	r7,#0x00,00117$
;	life.c:102: u[y][x] = 0;
	mov	dptr,#_y
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r4
	add	a,#_u
	mov	r4,a
	mov	a,r5
	addc	a,#(_u >> 8)
	mov	r5,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,r4
	mov	dpl,a
	mov	a,r3
	addc	a,r5
	mov	dph,a
	clr	a
	movx	@dptr,a
;	life.c:103: j++;
	mov	dptr,#_j
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	00166$
00117$:
;	life.c:104: } else if (c == (int)'1') {
	cjne	r6,#0x31,00115$
	cjne	r7,#0x00,00115$
;	life.c:105: u[y][x] = 1;
	mov	dptr,#_y
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r4
	add	a,#_u
	mov	r4,a
	mov	a,r5
	addc	a,#(_u >> 8)
	mov	r5,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,r4
	mov	dpl,a
	mov	a,r3
	addc	a,r5
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	life.c:106: j++;
	mov	dptr,#_j
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	00166$
00115$:
;	life.c:107: } else if (c == (int)'#') goto out;
	cjne	r6,#0x23,00395$
	cjne	r7,#0x00,00395$
	sjmp	00128$
00395$:
00166$:
;	life.c:99: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00396$
	ljmp	00165$
00396$:
;	life.c:98: for (y = 0; y < H; y++)
	mov	dptr,#_y
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00397$
	ljmp	00167$
00397$:
;	life.c:110: out:
00128$:
;	life.c:111: if (c != (int)'#')
	mov	dptr,#_c
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x23,00398$
	cjne	r7,#0x00,00398$
	sjmp	00127$
00398$:
;	life.c:112: while (1) {
00124$:
;	life.c:113: c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_c
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	life.c:114: if (c == (int)'#') break;
	cjne	r6,#0x23,00124$
	cjne	r7,#0x00,00124$
00127$:
;	life.c:116: printf("%d>\r\n", j);
	mov	dptr,#_j
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	life.c:166: printf("RDY\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	life.c:167: (void)getchar();
	lcall	_getchar
;	life.c:43: for (j = 0; j < 4; j++)
	mov	dptr,#_j
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00169$:
;	life.c:44: generation[j] = 0;
	mov	dptr,#_j
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_generation
	mov	dpl,a
	mov	a,r7
	addc	a,#(_generation >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	life.c:43: for (j = 0; j < 4; j++)
	mov	dptr,#_j
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_j
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00169$
;	life.c:171: for (i1 = 0; !i0 && !i1; ) {
00195$:
	mov	dptr,#_i0
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00402$
	ljmp	00104$
00402$:
;	life.c:68: printf("\033[2J\033[m");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	life.c:59: for (j = 0; j < 4; j++) {
	mov	dptr,#_j
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00171$:
;	life.c:60: printf("%04x", generation[3 - j]);
	mov	dptr,#_j
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,#0x03
	clr	c
	subb	a,r6
	mov	r6,a
	clr	F0
	mov	b,#0x02
	mov	a,r6
	jnb	acc.7,00403$
	cpl	F0
	cpl	a
	inc	a
00403$:
	mul	ab
	jnb	F0,00404$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00404$:
	add	a,#_generation
	mov	dpl,a
	mov	a,#(_generation >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	life.c:61: if (j < 3) putchar(' ');
	mov	dptr,#_j
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00172$
	mov	dptr,#0x0020
	lcall	_putchar
00172$:
;	life.c:59: for (j = 0; j < 4; j++) {
	mov	dptr,#_j
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_j
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00406$
	ljmp	00171$
00406$:
;	life.c:70: printf("\r\n");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	life.c:50: for (j = 0; j < 4; j++) {
	mov	dptr,#_j
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00173$:
;	life.c:51: generation[j]++;
	mov	dptr,#_j
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_generation
	mov	r6,a
	mov	a,r7
	addc	a,#(_generation >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00407$
	inc	r5
00407$:
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	life.c:52: if (generation[j]) break;
	mov	dptr,#_j
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_generation
	mov	dpl,a
	mov	a,r5
	addc	a,#(_generation >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	00139$
;	life.c:50: for (j = 0; j < 4; j++) {
	mov	dptr,#_j
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_j
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00173$
;	life.c:71: updategen();
00139$:
;	life.c:73: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00177$:
;	life.c:74: for (y = 0; y < H; y++)
	mov	dptr,#_y
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00175$:
;	life.c:75: if (u[y][x]) printf("\033[01m[]\033[m");
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r6
	add	a,#_u
	mov	r6,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	r7,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jz	00141$
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	00176$
00141$:
;	life.c:76: else printf("--");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00176$:
;	life.c:74: for (y = 0; y < H; y++)
	mov	dptr,#_y
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00411$
	ljmp	00175$
00411$:
;	life.c:77: printf("\r\n");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	life.c:73: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00412$
	ljmp	00177$
00412$:
;	life.c:122: fixed = 1;
	mov	dptr,#_fixed
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	life.c:123: cycle2 = 1;
	mov	dptr,#_cycle2
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	life.c:125: for (y = 0; y < H; y++) {
	mov	dptr,#_y
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00187$:
;	life.c:126: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00185$:
;	life.c:127: n = 0;
	mov	dptr,#_n
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	life.c:128: for (y1 = y - 1; y1 <= y + 1; y1++)
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00413$
	dec	r7
00413$:
	mov	dptr,#_y1
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00183$:
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dptr,#_y1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00414$
	ljmp	00149$
00414$:
;	life.c:129: for (x1 = x - 1; x1 <= x + 1; x1++)
	mov	dptr,#_x
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00415$
	dec	r5
00415$:
	mov	dptr,#_x1
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00180$:
	mov	dptr,#_x
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00416$
	inc	r5
00416$:
	mov	dptr,#_x1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00417$
	ljmp	00184$
00417$:
;	life.c:130: if (u[(y1 + H) % H][(x1 + W) % W])
	mov	dptr,#_y1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r5
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
	mov	a,r4
	add	a,#_u
	mov	r4,a
	mov	a,r5
	addc	a,#(_u >> 8)
	mov	r5,a
	mov	a,#0x20
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	push	ar5
	push	ar4
	mov	a,#0x20
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
	mov	a,r2
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	jz	00181$
;	life.c:131: n++;
	mov	dptr,#_n
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00181$:
;	life.c:129: for (x1 = x - 1; x1 <= x + 1; x1++)
	mov	dptr,#_x1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00180$
00184$:
;	life.c:128: for (y1 = y - 1; y1 <= y + 1; y1++)
	mov	dptr,#_y1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00183$
00149$:
;	life.c:133: if (u[y][x]) n--;
	mov	a,r7
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
	mov	a,r6
	add	a,#_u
	mov	r6,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	r7,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jz	00151$
	mov	dptr,#_n
	movx	a,@dptr
	add	a,#0xff
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_n
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00151$:
;	life.c:134: nu[y][x] = (n == 3 || (n == 2 && u[y][x]));
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r6
	add	a,#_nu
	mov	r4,a
	mov	a,r7
	addc	a,#(_nu >> 8)
	mov	r5,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	dptr,#_n
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	cjne	r0,#0x03,00420$
	cjne	r1,#0x00,00420$
	sjmp	00202$
00420$:
	cjne	r0,#0x02,00201$
	cjne	r1,#0x00,00201$
	mov	a,r6
	add	a,#_u
	mov	r6,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	r7,a
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r3
	addc	a,r7
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	jnz	00202$
00201$:
;	assignBit
	clr	b0
	sjmp	00203$
00202$:
;	assignBit
	setb	b0
00203$:
	mov	c,b0
	clr	a
	rlc	a
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	life.c:126: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00424$
	ljmp	00185$
00424$:
;	life.c:125: for (y = 0; y < H; y++) {
	mov	dptr,#_y
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00425$
	ljmp	00187$
00425$:
;	life.c:138: for (y = 0; y < H; y++)
	mov	dptr,#_y
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00191$:
;	life.c:139: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00189$:
;	life.c:140: if (pu[y][x] != nu[y][x]) cycle2 = 0;
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r6
	add	a,#_pu
	mov	r4,a
	mov	a,r7
	addc	a,#(_pu >> 8)
	mov	r5,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,r4
	mov	dpl,a
	mov	a,r3
	addc	a,r5
	mov	dph,a
	mov	a,r6
	add	a,#_nu
	mov	r6,a
	mov	a,r7
	addc	a,#(_nu >> 8)
	mov	r7,a
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r3
	addc	a,r7
	mov	r3,a
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	mov	a,r7
	cjne	a,ar2,00426$
	sjmp	00155$
00426$:
	mov	dptr,#_cycle2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00155$:
;	life.c:141: if (u[y][x] != nu[y][x]) fixed = 0;
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r6
	add	a,#_u
	mov	r4,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	r5,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,r4
	mov	dpl,a
	mov	a,r3
	addc	a,r5
	mov	dph,a
	mov	a,r6
	add	a,#_nu
	mov	r6,a
	mov	a,r7
	addc	a,#(_nu >> 8)
	mov	r7,a
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r3
	addc	a,r7
	mov	r3,a
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	mov	a,r7
	cjne	a,ar2,00427$
	sjmp	00157$
00427$:
	mov	dptr,#_fixed
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00157$:
;	life.c:142: pu[y][x] = u[y][x];
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r6
	add	a,#_pu
	mov	r4,a
	mov	a,r7
	addc	a,#(_pu >> 8)
	mov	r5,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,r6
	add	a,#_u
	mov	r6,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	r7,a
	mov	a,r2
	add	a,r6
	mov	dpl,a
	mov	a,r3
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	life.c:143: u[y][x] = nu[y][x];
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r6
	add	a,#_u
	mov	r4,a
	mov	a,r7
	addc	a,#(_u >> 8)
	mov	r5,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,r6
	add	a,#_nu
	mov	r6,a
	mov	a,r7
	addc	a,#(_nu >> 8)
	mov	r7,a
	mov	a,r2
	add	a,r6
	mov	dpl,a
	mov	a,r3
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	life.c:139: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_x
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00428$
	ljmp	00189$
00428$:
;	life.c:138: for (y = 0; y < H; y++)
	mov	dptr,#_y
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00429$
	ljmp	00191$
00429$:
;	life.c:174: if (fixed || cycle2) {
	mov	dptr,#_fixed
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00101$
	mov	dptr,#_cycle2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00431$
	ljmp	00195$
00431$:
00101$:
;	life.c:175: printf("DONE\r\n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	life.c:176: (void)getchar();
	lcall	_getchar
;	life.c:177: break;
00104$:
;	life.c:181: if (i1) {
	mov	dptr,#_i1
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00198$
;	life.c:182: printf("BREAK\r\n");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	life.c:183: (void)getchar();
	lcall	_getchar
00198$:
;	life.c:156: for (i0 = 0; !i0; ) {
	mov	dptr,#_i0
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00433$
	ljmp	00197$
00433$:
;	life.c:187: EA = 0;
;	assignBit
	clr	_EA
;	life.c:189: printf("TERM\r\n");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	life.c:190: (void)getchar();
	lcall	_getchar
;	life.c:194: __endasm;
	ljmp	0
;	life.c:195: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "%04x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x1b
	.ascii "[2J"
	.db 0x1b
	.ascii "[m"
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
	.ascii "[01m[]"
	.db 0x1b
	.ascii "[m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "--"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "%d>"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x1b
	.ascii "[2J"
	.db 0x1b
	.ascii "[mINIT"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "LOAD"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "RDY"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "DONE"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "BREAK"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "TERM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
