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
	.globl _c
	.globl _j
	.globl _cycle2
	.globl _fixed
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
_n::
	.ds 1
_generation::
	.ds 8
_fixed::
	.ds 1
_cycle2::
	.ds 1
_j::
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
;	life.c:65: void int0(void) __interrupt 0 __using 1 {
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
;	life.c:70: void int1(void) __interrupt 2 __using 1 {
;	-----------------------------------------
;	 function int1
;	-----------------------------------------
_int1:
	push	acc
	push	dpl
	push	dph
;	life.c:71: i1 = 1;
	mov	dptr,#_i1
	mov	a,#0x01
	movx	@dptr,a
;	life.c:72: }
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
;__1966080003              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440001              Allocated to registers r6 r7 
;a                         Allocated to registers r4 r5 
;__1966080006              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__3276800009              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__3276800011              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440013              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	life.c:99: void show(char hdr) {
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
;	life.c:100: if (hdr) {
	mov	a,dpl
	mov	r7,a
	jnz	00241$
	ljmp	00102$
00241$:
;	life.c:101: printstr("\033[2J\033[m");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00128$:
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
;	life.c:101: printstr("\033[2J\033[m");
	cjne	r5,#0x00,00128$
	inc	r6
	sjmp	00128$
00109$:
;	life.c:91: for (j = 0; j < 4; j++) {
	mov	dptr,#_j
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00130$:
;	life.c:92: print16x(generation[3 - j]);
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
	jnb	acc.7,00244$
	cpl	F0
	cpl	a
	inc	a
00244$:
	mul	ab
	jnb	F0,00245$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00245$:
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
	mov	ar4,r6
;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
	mov	a,r7
	mov	r5,a
	swap	a
	anl	a,#0x0f
	jnb	acc.3,00246$
	orl	a,#0xf0
00246$:
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
	jnb	acc.3,00247$
	orl	a,#0xf0
00247$:
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
;	life.c:93: if (j < 3) putchar(' ');
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
	jnc	00131$
	mov	dptr,#0x0020
	lcall	_putchar
00131$:
;	life.c:91: for (j = 0; j < 4; j++) {
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
	jnc	00249$
	ljmp	00130$
00249$:
;	life.c:103: printstr("\r\n");
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00133$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00116$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:103: printstr("\r\n");
	cjne	r5,#0x00,00133$
	inc	r6
	sjmp	00133$
00116$:
;	life.c:82: for (j = 0; j < 4; j++) {
	mov	dptr,#_j
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00135$:
;	life.c:83: generation[j]++;
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
	cjne	r4,#0x00,00252$
	inc	r5
00252$:
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	life.c:84: if (generation[j]) break;
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
	jnz	00102$
;	life.c:82: for (j = 0; j < 4; j++) {
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
	jc	00135$
;	life.c:104: updategen();
00102$:
;	life.c:107: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00148$:
;	life.c:108: for (y = 0; y < H; y++)
	mov	dptr,#_y
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00143$:
;	life.c:109: if (u[A2D(W, y, x)]) printstr("[]");
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
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00138$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00144$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:109: if (u[A2D(W, y, x)]) printstr("[]");
	cjne	r5,#0x00,00138$
	inc	r6
	sjmp	00138$
00104$:
;	life.c:110: else printstr("##");
	mov	r5,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00141$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00144$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:110: else printstr("##");
	cjne	r5,#0x00,00141$
	inc	r6
	sjmp	00141$
00144$:
;	life.c:108: for (y = 0; y < H; y++)
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
	jnc	00260$
	ljmp	00143$
00260$:
;	life.c:111: printstr("\r\n");
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00146$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00126$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:111: printstr("\r\n");
	cjne	r5,#0x00,00146$
	inc	r6
	sjmp	00146$
00126$:
;	life.c:107: for (x = 0; x < W; x++) {
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
	jnc	00263$
	ljmp	00148$
00263$:
;	life.c:114: return;
;	life.c:115: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__2621440022              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720015              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720017              Allocated to registers r6 r7 
;a                         Allocated to registers r4 r5 
;__1310720019              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440025              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__4587520029              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__3276800031              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720033              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	life.c:177: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	life.c:178: IT0 = 1;
;	assignBit
	setb	_IT0
;	life.c:179: IT1 = 1;
;	assignBit
	setb	_IT1
;	life.c:180: EX0 = 1;
;	assignBit
	setb	_EX0
;	life.c:181: EX1 = 1;
;	assignBit
	setb	_EX1
;	life.c:182: EA = 1;
;	assignBit
	setb	_EA
;	life.c:184: for (i0 = 0; !i0; ) {
	mov	dptr,#_i0
	clr	a
	movx	@dptr,a
	mov	dptr,#_i1
	movx	@dptr,a
00192$:
;	life.c:118: memset(u, 0, sizeof (u));
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
;	life.c:119: memset(pu, 0, sizeof (pu));
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
;	life.c:186: printstr("\033[2J\033[mINIT\r\n");
	mov	r5,#___str_6
	mov	r6,#(___str_6 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00155$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00110$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:186: printstr("\033[2J\033[mINIT\r\n");
	cjne	r5,#0x00,00155$
	inc	r6
	sjmp	00155$
00110$:
;	life.c:187: (void)getchar();
	lcall	_getchar
;	life.c:125: j = 0;
	mov	dptr,#_j
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	life.c:127: printstr("LOAD <");
	mov	r5,#___str_4
	mov	r6,#(___str_4 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00158$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00112$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:127: printstr("LOAD <");
	cjne	r5,#0x00,00158$
	inc	r6
	sjmp	00158$
00112$:
;	life.c:129: for (y = 0; y < H; y++)
	mov	dptr,#_y
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00162$:
;	life.c:130: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00160$:
;	life.c:131: c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_c
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	life.c:132: if (c == (int)'0') {
	cjne	r6,#0x30,00119$
	cjne	r7,#0x00,00119$
;	life.c:133: u[A2D(W, y, x)] = 0;
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
;	life.c:134: j++;
	mov	dptr,#_j
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	00161$
00119$:
;	life.c:135: } else if (c == (int)'1') {
	cjne	r6,#0x31,00117$
	cjne	r7,#0x00,00117$
;	life.c:136: u[A2D(W, y, x)] = 1;
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
;	life.c:137: j++;
	mov	dptr,#_j
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	00161$
00117$:
;	life.c:138: } else if (c == (int)'#') goto out;
	cjne	r6,#0x23,00381$
	cjne	r7,#0x00,00381$
	sjmp	00130$
00381$:
00161$:
;	life.c:130: for (x = 0; x < W; x++) {
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
	jnc	00382$
	ljmp	00160$
00382$:
;	life.c:129: for (y = 0; y < H; y++)
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
	jnc	00383$
	ljmp	00162$
00383$:
;	life.c:141: out:
00130$:
;	life.c:142: if (c != (int)'#')
	mov	dptr,#_c
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x23,00384$
	cjne	r7,#0x00,00384$
	sjmp	00129$
00384$:
;	life.c:143: while (1) {
00126$:
;	life.c:144: c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_c
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	life.c:145: if (c == (int)'#') break;
	cjne	r6,#0x23,00126$
	cjne	r7,#0x00,00126$
00129$:
;	life.c:147: print16x(j);
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
	jnb	acc.3,00387$
	orl	a,#0xf0
00387$:
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
	jnb	acc.3,00388$
	orl	a,#0xf0
00388$:
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
;	life.c:148: printstr(">\r\n");
	mov	r5,#___str_5
	mov	r6,#(___str_5 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00165$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00133$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:148: printstr(">\r\n");
	cjne	r5,#0x00,00165$
	inc	r6
	sjmp	00165$
00133$:
;	life.c:190: show(0);
	mov	dpl,#0x00
	lcall	_show
;	life.c:192: printstr("RDY\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00168$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00136$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:192: printstr("RDY\r\n");
	cjne	r5,#0x00,00168$
	inc	r6
	sjmp	00168$
00136$:
;	life.c:193: (void)getchar();
	lcall	_getchar
;	life.c:75: for (j = 0; j < 4; j++)
	mov	dptr,#_j
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00170$:
;	life.c:76: generation[j] = 0;
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
;	life.c:75: for (j = 0; j < 4; j++)
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
	jc	00170$
;	life.c:197: for (i1 = 0; !i0 && !i1; ) {
00187$:
	mov	dptr,#_i0
	movx	a,@dptr
	jz	00394$
	ljmp	00104$
00394$:
;	life.c:198: show(1);
	mov	dpl,#0x01
	lcall	_show
;	life.c:154: fixed = 1;
	mov	dptr,#_fixed
	mov	a,#0x01
	movx	@dptr,a
;	life.c:155: cycle2 = 1;
	mov	dptr,#_cycle2
	movx	@dptr,a
;	life.c:157: for (y = 0; y < H; y++) {
	mov	dptr,#_y
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00180$:
;	life.c:158: for (x = 0; x < W; x++) {
	mov	dptr,#_x
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00178$:
;	life.c:159: n = -u[A2D(W, y, x)];
	mov	dptr,#_y
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
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
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_n
	clr	c
	clr	a
	subb	a,r5
	movx	@dptr,a
;	life.c:160: for (y1 = y - 1; y1 <= y + 1; y1++)
	dec	r6
	cjne	r6,#0xff,00395$
	dec	r7
00395$:
	mov	dptr,#_y1
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00176$:
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
	jnc	00396$
	ljmp	00140$
00396$:
;	life.c:161: for (x1 = x - 1; x1 <= x + 1; x1++)
	mov	dptr,#_x
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00397$
	dec	r5
00397$:
	mov	dptr,#_x1
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00173$:
	mov	dptr,#_x
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00398$
	inc	r5
00398$:
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
	jnc	00399$
	ljmp	00177$
00399$:
;	life.c:162: n += u[A2D(W, (y1 + H) % H, (x1 + W) % W)];
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
	mov	ar7,r4
	mov	a,r5
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r7
	swap	a
	rl	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xe0
	xch	a,r7
	xrl	a,r7
	mov	r6,a
	mov	a,#0x20
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
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
	mov	a,r4
	add	a,r7
	mov	r4,a
	mov	a,r5
	addc	a,r6
	mov	r5,a
	mov	a,r4
	add	a,#_u
	mov	dpl,a
	mov	a,r5
	addc	a,#(_u >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_n
	movx	a,@dptr
	add	a,r5
	movx	@dptr,a
;	life.c:161: for (x1 = x - 1; x1 <= x + 1; x1++)
	mov	dptr,#_x1
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00173$
00177$:
;	life.c:160: for (y1 = y - 1; y1 <= y + 1; y1++)
	mov	dptr,#_y1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00176$
00140$:
;	life.c:164: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
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
	mov	dptr,#_x
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r2,a
	mov	a,r5
	addc	a,r7
	mov	r3,a
	mov	a,r2
	add	a,#_nu
	mov	r2,a
	mov	a,r3
	addc	a,#(_nu >> 8)
	mov	r3,a
	mov	dptr,#_n
	mov	r0,_bp
	inc	r0
	movx	a,@dptr
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x03,00400$
	sjmp	00200$
00400$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x02,00199$
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
	jnz	00200$
00199$:
;	assignBit
	clr	b0
	sjmp	00201$
00200$:
;	assignBit
	setb	b0
00201$:
	mov	c,b0
	clr	a
	rlc	a
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	life.c:166: if (pu[A2D(W, y, x)] != nu[A2D(W, y, x)]) cycle2 = 0;
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
	cjne	a,ar7,00404$
	sjmp	00142$
00404$:
	mov	dptr,#_cycle2
	clr	a
	movx	@dptr,a
00142$:
;	life.c:167: if (u[A2D(W, y, x)] != nu[A2D(W, y, x)]) fixed = 0;
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
	cjne	a,ar7,00405$
	sjmp	00179$
00405$:
	mov	dptr,#_fixed
	clr	a
	movx	@dptr,a
00179$:
;	life.c:158: for (x = 0; x < W; x++) {
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
	jnc	00406$
	ljmp	00178$
00406$:
;	life.c:157: for (y = 0; y < H; y++) {
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
	jnc	00407$
	ljmp	00180$
00407$:
;	life.c:171: memcpy(pu, u, sizeof (u));
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
;	life.c:172: memcpy(u, nu, sizeof (nu));
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
;	life.c:200: if (fixed || cycle2) {
	mov	dptr,#_fixed
	movx	a,@dptr
	jnz	00101$
	mov	dptr,#_cycle2
	movx	a,@dptr
	jnz	00409$
	ljmp	00187$
00409$:
00101$:
;	life.c:201: printstr("DONE\r\n");
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00183$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00149$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:201: printstr("DONE\r\n");
	cjne	r5,#0x00,00183$
	inc	r6
	sjmp	00183$
00149$:
;	life.c:202: (void)getchar();
	lcall	_getchar
;	life.c:203: break;
00104$:
;	life.c:207: if (i1) {
	mov	dptr,#_i1
	movx	a,@dptr
	jz	00193$
;	life.c:208: printstr("BREAK\r\n");
	mov	r5,#___str_9
	mov	r6,#(___str_9 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00190$:
;	life.c:46: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00151$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	life.c:208: printstr("BREAK\r\n");
	cjne	r5,#0x00,00190$
	inc	r6
	sjmp	00190$
00151$:
;	life.c:209: (void)getchar();
	lcall	_getchar
00193$:
;	life.c:184: for (i0 = 0; !i0; ) {
	mov	dptr,#_i0
	movx	a,@dptr
	jnz	00415$
	ljmp	00192$
00415$:
;	life.c:213: EA = 0;
;	assignBit
	clr	_EA
;	life.c:215: printstr("TERM\r\n");
	mov	r5,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r7,#0x80
;	life.c:48: return;
00195$:
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
;	life.c:215: printstr("TERM\r\n");
	cjne	r5,#0x00,00195$
	inc	r6
	sjmp	00195$
00153$:
;	life.c:216: (void)getchar();
	lcall	_getchar
;	life.c:220: __endasm;
	ljmp	0
;	life.c:221: }
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
	.ascii "[]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "##"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "LOAD <"
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
	.ascii "RDY"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "DONE"
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
