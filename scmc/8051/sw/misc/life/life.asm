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
	.globl _getchar
	.globl _putchar
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
	.globl _generation
	.globl _cycle2
	.globl _fixed
	.globl _n
	.globl _bstep
	.globl _c
	.globl _j
	.globl _y1
	.globl _x1
	.globl _y
	.globl _x
	.globl _nu
	.globl _u
	.globl _pu
	.globl _i1
	.globl _i0
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
	.ds 1
_i1::
	.ds 1
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
_j::
	.ds 2
_c::
	.ds 2
_bstep::
	.ds 1
_n::
	.ds 1
_fixed::
	.ds 1
_cycle2::
	.ds 1
_generation::
	.ds 4
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
;	life.c:65: void int0(void) __interrupt IE0_VECTOR __using 1 {
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
;	life.c:66: i0 = 1;
	mov	dptr,#_i0
	mov	a,#0x01
	movx	@dptr,a
;	life.c:67: }
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
;	life.c:69: void int1(void) __interrupt IE1_VECTOR __using 1 {
;	-----------------------------------------
;	 function int1
;	-----------------------------------------
_int1:
	push	acc
	push	dpl
	push	dph
;	life.c:70: i1 = 1;
	mov	dptr,#_i1
	mov	a,#0x01
	movx	@dptr,a
;	life.c:71: }
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'show'
;------------------------------------------------------------
;hdr                       Allocated to registers r7 
;__1966080005              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720001              Allocated to registers r6 r7 
;a                         Allocated to registers 
;__1310720003              Allocated to registers r6 r7 
;a                         Allocated to registers 
;__1966080008              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440011              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	life.c:94: void show(char hdr) {
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
;	life.c:95: if (hdr) {
	mov	a,dpl
	mov	r7,a
	jnz	00190$
	ljmp	00102$
00190$:
;	life.c:96: printstr("\033[2J\033[m");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00121$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00109$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:96: printstr("\033[2J\033[m");
	cjne	r5,#0x00,00121$
	inc	r6
	sjmp	00121$
00109$:
;	life.c:88: print16x(generation[1]);
	mov	dptr,#(_generation + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
	mov	r7,a
	swap	a
	anl	a,#0x0f
	jnb	acc.3,00193$
	orl	a,#0xf0
00193$:
	mov	r4,a
	rlc	a
	subb	a,acc
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
;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
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
;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
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
	jnb	acc.3,00194$
	orl	a,#0xf0
00194$:
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
;	life.c:40: putchar(digits[a & 0xf]);
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
	lcall	_putchar
;	life.c:89: print16x(generation[0]);
	mov	dptr,#_generation
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
	mov	r7,a
	swap	a
	anl	a,#0x0f
	jnb	acc.3,00195$
	orl	a,#0xf0
00195$:
	mov	r4,a
	rlc	a
	subb	a,acc
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
;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
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
;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
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
	jnb	acc.3,00196$
	orl	a,#0xf0
00196$:
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
;	life.c:40: putchar(digits[a & 0xf]);
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
	lcall	_putchar
;	life.c:98: printstr("\r\n");
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00124$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00114$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:98: printstr("\r\n");
	cjne	r5,#0x00,00124$
	inc	r6
	sjmp	00124$
00114$:
;	life.c:81: generation[0]++;
	mov	dptr,#_generation
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00199$
	inc	r7
00199$:
	mov	dptr,#_generation
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	life.c:82: if (!generation[0]) generation[1]++;
	mov	a,r6
	orl	a,r7
	jnz	00102$
	mov	dptr,#(_generation + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00201$
	inc	r7
00201$:
	mov	dptr,#(_generation + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	life.c:99: updategen();
00102$:
;	life.c:102: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00131$:
;	life.c:103: for (y = 0; y < H; y++)
	mov	dptr,#_y
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00126$:
;	life.c:104: if (u[A2D(W, y, x)]) {
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
;	life.c:105: putchar('['); putchar(']');
	mov	dptr,#0x005b
	lcall	_putchar
	mov	dptr,#0x005d
	lcall	_putchar
	sjmp	00127$
00104$:
;	life.c:107: putchar('#'); putchar('#');
	mov	dptr,#0x0023
	lcall	_putchar
	mov	dptr,#0x0023
	lcall	_putchar
00127$:
;	life.c:103: for (y = 0; y < H; y++)
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
	jc	00126$
;	life.c:109: printstr("\r\n");
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00129$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00119$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:109: printstr("\r\n");
	cjne	r5,#0x00,00129$
	inc	r6
	sjmp	00129$
00119$:
;	life.c:102: for (x = 0; x < W; x++) {
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
	jnc	00206$
	ljmp	00131$
00206$:
;	life.c:112: return;
;	life.c:113: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__2621440019              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720013              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720015              Allocated to registers r6 r7 
;a                         Allocated to registers r4 r5 
;__1310720017              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440023              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__4587520027              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__3276800029              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720031              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +3
;sloc2                     Allocated to stack - _bp +5
;sloc3                     Allocated to stack - _bp +6
;sloc4                     Allocated to stack - _bp +8
;sloc5                     Allocated to stack - _bp +10
;sloc6                     Allocated to stack - _bp +12
;sloc7                     Allocated to stack - _bp +14
;------------------------------------------------------------
;	life.c:196: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0f
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
;	life.c:203: for (i0 = 0; !i0; ) {		
	mov	dptr,#_i0
	clr	a
	movx	@dptr,a
00201$:
;	life.c:204: printstr("\033[2J\033[mINIT\r\n");
	mov	r5,#___str_4
	mov	r6,#(___str_4 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00172$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00107$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:205: while (1) {
	cjne	r5,#0x00,00172$
	inc	r6
	sjmp	00172$
00107$:
;	life.c:206: c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_c
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	life.c:207: if (i0 || (c == (int)'T')) goto terminate;
	mov	dptr,#_i0
	movx	a,@dptr
	jz	00398$
	ljmp	00127$
00398$:
	cjne	r6,#0x54,00399$
	cjne	r7,#0x00,00399$
	ljmp	00127$
00399$:
;	life.c:208: if (c == (int)'L') break;
	cjne	r6,#0x4c,00107$
	cjne	r7,#0x00,00107$
;	life.c:211: reload:
00109$:
;	life.c:116: memset(u, 0, sizeof (u));
	clr	a
	push	acc
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	dptr,#_u
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	life.c:117: memset(pu, 0, sizeof (pu));
	clr	a
	push	acc
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	dptr,#_pu
	mov	b,#0x00
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	life.c:123: j = 0;
	mov	dptr,#_j
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	life.c:125: printstr("LOAD <");
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00175$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00132$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:125: printstr("LOAD <");
	cjne	r5,#0x00,00175$
	inc	r6
	sjmp	00175$
00132$:
;	life.c:127: for (y = 0; y < H; y++)
	mov	dptr,#_y
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00179$:
;	life.c:128: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00177$:
;	life.c:129: c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_c
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	life.c:130: if (c == (int)'0') {
	cjne	r6,#0x30,00139$
	cjne	r7,#0x00,00139$
;	life.c:131: u[A2D(W, y, x)] = 0;
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
	mov	a,r4
	add	a,#_u
	mov	dpl,a
	mov	a,r5
	addc	a,#(_u >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	life.c:132: j++;
	mov	dptr,#_j
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	00178$
00139$:
;	life.c:133: } else if (c == (int)'1') {
	cjne	r6,#0x31,00137$
	cjne	r7,#0x00,00137$
;	life.c:134: u[A2D(W, y, x)] = 1;
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
	mov	a,r4
	add	a,#_u
	mov	dpl,a
	mov	a,r5
	addc	a,#(_u >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	life.c:135: j++;
	mov	dptr,#_j
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	00178$
00137$:
;	life.c:136: } else if (c == (int)'#') goto out;
	cjne	r6,#0x23,00408$
	cjne	r7,#0x00,00408$
	sjmp	00150$
00408$:
00178$:
;	life.c:128: for (x = 0; x < W; x++) {
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
	jnc	00409$
	ljmp	00177$
00409$:
;	life.c:127: for (y = 0; y < H; y++)
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
	jnc	00410$
	ljmp	00179$
00410$:
;	life.c:139: out:
00150$:
;	life.c:140: if (c != (int)'#')
	mov	dptr,#_c
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x23,00411$
	cjne	r7,#0x00,00411$
	sjmp	00149$
00411$:
;	life.c:141: while (1) {
00146$:
;	life.c:142: c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_c
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	life.c:143: if (c == (int)'#') break;
	cjne	r6,#0x23,00146$
	cjne	r7,#0x00,00146$
00149$:
;	life.c:145: print16x(j);
	mov	dptr,#_j
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
	mov	ar4,r6
	mov	r5,a
	swap	a
	anl	a,#0x0f
	jnb	acc.3,00414$
	orl	a,#0xf0
00414$:
	mov	r6,a
	rlc	a
	subb	a,acc
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
	lcall	_putchar
;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
	mov	ar7,r5
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
	lcall	_putchar
;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
	mov	ar6,r4
	mov	a,r5
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.3,00415$
	orl	a,#0xf0
00415$:
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
	lcall	_putchar
;	life.c:40: putchar(digits[a & 0xf]);
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
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
;	life.c:146: printstr(">\r\n");
	mov	r5,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00182$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00153$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:146: printstr(">\r\n");
	cjne	r5,#0x00,00182$
	inc	r6
	sjmp	00182$
00153$:
;	life.c:214: show(0);
	mov	dpl,#0x00
	lcall	_show
;	life.c:216: printstr("READY\r\n");
	mov	r5,#___str_5
	mov	r6,#(___str_5 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00185$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00118$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:217: while (1) {
	cjne	r5,#0x00,00185$
	inc	r6
	sjmp	00185$
00118$:
;	life.c:218: c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_c
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	life.c:219: if (i0 || (c == (int)'T')) goto terminate;
	mov	dptr,#_i0
	movx	a,@dptr
	jz	00420$
	ljmp	00127$
00420$:
	cjne	r6,#0x54,00421$
	cjne	r7,#0x00,00421$
	ljmp	00127$
00421$:
;	life.c:220: if (c == (int)'L') goto reload;
	cjne	r6,#0x4c,00422$
	cjne	r7,#0x00,00422$
	ljmp	00109$
00422$:
;	life.c:221: if (c == (int)'S') break;
	cjne	r6,#0x53,00118$
	cjne	r7,#0x00,00118$
;	life.c:74: generation[0] = 0;
	mov	dptr,#_generation
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	life.c:75: generation[1] = 0;
	mov	dptr,#(_generation + 0x0002)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	life.c:226: for (i1 = 0; !i0 && !i1; ) {
	mov	dptr,#_i1
	movx	@dptr,a
00196$:
	mov	dptr,#_i0
	movx	a,@dptr
	jz	00425$
	ljmp	00123$
00425$:
	mov	dptr,#_i1
	movx	a,@dptr
	jz	00426$
	ljmp	00123$
00426$:
;	life.c:227: show(1);
	mov	dpl,#0x01
	lcall	_show
;	life.c:154: fixed = 1;
	mov	dptr,#_fixed
	mov	a,#0x01
	movx	@dptr,a
;	life.c:155: cycle2 = 1;
	mov	dptr,#_cycle2
	movx	@dptr,a
;	life.c:156: bstep = 0;
	mov	dptr,#_bstep
	clr	a
	movx	@dptr,a
;	life.c:158: for (y = 0; y < H; y++) {
	mov	dptr,#_y
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00189$:
;	life.c:159: putchar(busy[bstep]); putchar('\r');
	mov	dptr,#_bstep
	movx	a,@dptr
	mov	dptr,#_busy
	movc	a,@a+dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	mov	dptr,#0x000d
	lcall	_putchar
;	life.c:160: bstep = (bstep + 1) & 3;
	mov	dptr,#_bstep
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	a,#0x03
	anl	a,r7
	movx	@dptr,a
;	life.c:161: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00187$:
;	life.c:162: n = -u[A2D(W, y, x)];
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	mov	a,r7
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
	mov	dptr,#_x
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,r2
	add	a,@r0
	mov	@r1,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	add	a,#_u
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	c
	clr	a
	subb	a,r5
	mov	@r0,a
;	life.c:165: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
	mov	a,#0x1f
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	push	ar7
	push	ar6
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
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar4
	mov	a,r5
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
	mov	a,#0x1f
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
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
	add	a,#0x06
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
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
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	@r0,a
;	life.c:167: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
	mov	a,#0x20
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
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
	xch	a,r0
	mov	a,_bp
	add	a,#0x0a
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
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
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
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	@r0,a
;	life.c:169: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
	mov	a,#0x21
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
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
	xch	a,r0
	mov	a,_bp
	add	a,#0x0c
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
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
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,r5
	add	a,@r0
	mov	@r1,a
;	life.c:171: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
	mov	a,#0x20
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	push	ar7
	push	ar6
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
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar4
	mov	a,r5
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
	add	a,#0x0e
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
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
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,r5
	add	a,@r0
	mov	@r1,a
;	life.c:173: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
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
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,r5
	add	a,@r0
	mov	@r1,a
;	life.c:175: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
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
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,r5
	add	a,@r0
	mov	@r1,a
;	life.c:177: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
	mov	a,#0x21
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
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
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	add	a,r6
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r7
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
	add	a,#0x0e
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,r5
	add	a,@r0
	mov	@r1,a
;	life.c:179: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	add	a,r6
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r7
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
	add	a,#0x0e
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
;	life.c:180: y1 = 1; x1 = 1;
	mov	dptr,#_y1
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_x1
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	life.c:181: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	add	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r7
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
	mov	dptr,#_n
	movx	@dptr,a
;	life.c:183: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	add	a,#_nu
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,#(_nu >> 8)
	mov	r6,a
	cjne	r7,#0x03,00427$
	sjmp	00209$
00427$:
	cjne	r7,#0x02,00208$
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r2
	add	a,#_u
	mov	r2,a
	mov	a,r3
	addc	a,#(_u >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
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
;	life.c:185: if (pu[A2D(W, y, x)] != nu[A2D(W, y, x)]) cycle2 = 0;
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
	mov	r7,a
	mov	a,r5
	cjne	a,ar7,00431$
	sjmp	00159$
00431$:
	mov	dptr,#_cycle2
	clr	a
	movx	@dptr,a
00159$:
;	life.c:186: if (u[A2D(W, y, x)] != nu[A2D(W, y, x)]) fixed = 0;
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
	mov	a,r6
	add	a,#_u
	mov	dpl,a
	mov	a,r7
	addc	a,#(_u >> 8)
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
	mov	r7,a
	mov	a,r5
	cjne	a,ar7,00432$
	sjmp	00188$
00432$:
	mov	dptr,#_fixed
	clr	a
	movx	@dptr,a
00188$:
;	life.c:161: for (x = 0; x < W; x++) {
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
	jnc	00433$
	ljmp	00187$
00433$:
;	life.c:158: for (y = 0; y < H; y++) {
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
	jnc	00434$
	ljmp	00189$
00434$:
;	life.c:190: memcpy(pu, u, sizeof (u));
	clr	a
	push	acc
	mov	a,#0x04
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
;	life.c:191: memcpy(u, nu, sizeof (nu));
	clr	a
	push	acc
	mov	a,#0x04
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
;	life.c:229: if (fixed || cycle2) {
	mov	dptr,#_fixed
	movx	a,@dptr
	jnz	00120$
	mov	dptr,#_cycle2
	movx	a,@dptr
	jnz	00436$
	ljmp	00196$
00436$:
00120$:
;	life.c:230: printstr("DONE\r\n");
	mov	r5,#___str_6
	mov	r6,#(___str_6 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00192$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00166$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:230: printstr("DONE\r\n");
	cjne	r5,#0x00,00192$
	inc	r6
	sjmp	00192$
00166$:
;	life.c:231: (void)getchar();
	lcall	_getchar
;	life.c:232: break;
00123$:
;	life.c:236: if (i1) {
	mov	dptr,#_i1
	movx	a,@dptr
	jz	00202$
;	life.c:237: printstr("BREAK\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00199$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00168$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:237: printstr("BREAK\r\n");
	cjne	r5,#0x00,00199$
	inc	r6
	sjmp	00199$
00168$:
;	life.c:238: (void)getchar();
	lcall	_getchar
00202$:
;	life.c:203: for (i0 = 0; !i0; ) {		
	mov	dptr,#_i0
	movx	a,@dptr
	jnz	00442$
	ljmp	00201$
00442$:
;	life.c:242: terminate:
00127$:
;	life.c:243: EA = 0;
;	assignBit
	clr	_EA
;	life.c:244: printstr("TERM\r\n");
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00204$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00170$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:244: printstr("TERM\r\n");
	cjne	r5,#0x00,00204$
	inc	r6
	sjmp	00204$
00170$:
;	life.c:245: (void)getchar();
	lcall	_getchar
;	life.c:249: __endasm;
	ljmp	0
;	life.c:250: }
	mov	sp,_bp
	pop	_bp
	ret
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
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.db #0x63	; 99	'c'
	.db #0x64	; 100	'd'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.area CONST   (CODE)
___str_0:
	.db 0x1b
	.ascii "[2J"
	.db 0x1b
	.ascii "[m"
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
_busy:
	.db #0x5c	; 92
	.db #0x7c	; 124
	.db #0x2f	; 47
	.db #0x2d	; 45
	.area CONST   (CODE)
___str_4:
	.db 0x1b
	.ascii "[2J"
	.db 0x1b
	.ascii "[mINIT"
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
	.ascii "DONE"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "BREAK"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "TERM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
