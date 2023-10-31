;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module disp
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _scroll
	.globl _timer0_intr
	.globl _init_disp
	.globl _init_timer0
	.globl _init_intr
	.globl _clear_gpo
	.globl _init_gpo
	.globl _getchar_poll
	.globl _getchar
	.globl _putchar
	.globl _toupper
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
	.globl _gpo
	.globl _OE
	.globl _column
	.globl _ddata
	.globl _dcol
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
_dcol::
	.ds 8
_ddata::
	.ds 8
_column::
	.ds 1
_OE::
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
_gpo	=	0x0000
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
_font8x8:
	.ds 2048
_buf:
	.ds 257
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
	reti
	.ds	7
	ljmp	_timer0_intr
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
;	disp.c:61: __idata const uint8_t dcol[8] = {
	mov	r0,#_dcol
	mov	@r0,#0x80
	mov	r0,#(_dcol + 0x0001)
	mov	@r0,#0x40
	mov	r0,#(_dcol + 0x0002)
	mov	@r0,#0x20
	mov	r0,#(_dcol + 0x0003)
	mov	@r0,#0x10
	mov	r0,#(_dcol + 0x0004)
	mov	@r0,#0x08
	mov	r0,#(_dcol + 0x0005)
	mov	@r0,#0x04
	mov	r0,#(_dcol + 0x0006)
	mov	@r0,#0x02
	mov	r0,#(_dcol + 0x0007)
	mov	@r0,#0x01
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
;	disp.c:10: int putchar(int c) __naked {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	naked function: no prologue.
;	disp.c:15: __endasm;
	mov	a, dpl
	ljmp	0x0030
;	disp.c:16: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	disp.c:18: int getchar(void) __naked {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	naked function: no prologue.
;	disp.c:24: __endasm;
	lcall	0x0032
	mov	dpl, a
	mov	dph, #0
	ret
;	disp.c:25: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_poll'
;------------------------------------------------------------
;	disp.c:27: int getchar_poll(void) __naked {
;	-----------------------------------------
;	 function getchar_poll
;	-----------------------------------------
_getchar_poll:
;	naked function: no prologue.
;	disp.c:39: __endasm;
	mov	a, #0xff
	mov	b, a
	jnb	ri, nochar
	clr	ri
	mov	a, sbuf
	mov	b, #0
	nochar:
	mov	dpl, a
	mov	dph, b
	ret
;	disp.c:40: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'init_gpo'
;------------------------------------------------------------
;	disp.c:80: void init_gpo(void) {
;	-----------------------------------------
;	 function init_gpo
;	-----------------------------------------
_init_gpo:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	disp.c:81: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	disp.c:83: P2 = GPO_BASE_H;
	mov	_P2,#0xf0
;	disp.c:85: CLEAR_GPO;
	mov	r0,#(_gpo + 0x0006)
	mov	a,#0x3f
	movx	@r0,a
	mov	r0,#_gpo
	clr	a
	movx	@r0,a
	mov	r0,#(_gpo + 0x0001)
	movx	@r0,a
	mov	r0,#(_gpo + 0x0002)
	movx	@r0,a
	mov	r0,#(_gpo + 0x0003)
	movx	@r0,a
	mov	r0,#(_gpo + 0x0004)
	movx	@r0,a
	mov	r0,#(_gpo + 0x0005)
	movx	@r0,a
;	disp.c:87: return;
;	disp.c:88: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_gpo'
;------------------------------------------------------------
;	disp.c:90: void clear_gpo(void) {
;	-----------------------------------------
;	 function clear_gpo
;	-----------------------------------------
_clear_gpo:
;	disp.c:91: CLEAR_GPO;
	mov	r0,#(_gpo + 0x0006)
	mov	a,#0x3f
	movx	@r0,a
	mov	r0,#_gpo
	clr	a
	movx	@r0,a
	mov	r0,#(_gpo + 0x0001)
	movx	@r0,a
	mov	r0,#(_gpo + 0x0002)
	movx	@r0,a
	mov	r0,#(_gpo + 0x0003)
	movx	@r0,a
	mov	r0,#(_gpo + 0x0004)
	movx	@r0,a
	mov	r0,#(_gpo + 0x0005)
	movx	@r0,a
;	disp.c:93: return;
;	disp.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_intr'
;------------------------------------------------------------
;	disp.c:96: void init_intr(void) {
;	-----------------------------------------
;	 function init_intr
;	-----------------------------------------
_init_intr:
;	disp.c:97: TR0 = 0;
;	assignBit
	clr	_TR0
;	disp.c:98: ET0 = 1;
;	assignBit
	setb	_ET0
;	disp.c:99: EA  = 1;
;	assignBit
	setb	_EA
;	disp.c:101: return;
;	disp.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_timer0'
;------------------------------------------------------------
;	disp.c:104: void init_timer0(void) {
;	-----------------------------------------
;	 function init_timer0
;	-----------------------------------------
_init_timer0:
;	disp.c:105: TR0 = 0;
;	assignBit
	clr	_TR0
;	disp.c:106: TMOD = 0x01;
	mov	_TMOD,#0x01
;	disp.c:107: TH0 = 0xf8;
	mov	_TH0,#0xf8
;	disp.c:108: TL0 = 0x00;
	mov	_TL0,#0x00
;	disp.c:110: return;
;	disp.c:111: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_disp'
;------------------------------------------------------------
;	disp.c:113: void init_disp(void) {
;	-----------------------------------------
;	 function init_disp
;	-----------------------------------------
_init_disp:
;	disp.c:114: gpo[DISP_COL] = 0u;
	mov	r0,#(_gpo + 0x0005)
	clr	a
	movx	@r0,a
;	disp.c:115: gpo[DISP_DATA] = 0u;
	mov	r0,#(_gpo + 0x0004)
	movx	@r0,a
;	disp.c:116: OE = 0x0fu; /* 00_001111 */
	mov	r0,#_OE
	mov	@r0,#0x0f
;	disp.c:117: gpo[GPO_OE] = OE; /* 00_001111 */
	mov	r0,#(_gpo + 0x0006)
	mov	a,#0x0f
	movx	@r0,a
;	disp.c:119: for (column = 0u; column < 8u; column++)
	mov	r0,#_column
	mov	@r0,#0x00
00103$:
	mov	r0,#_column
	cjne	@r0,#0x08,00115$
00115$:
	jnc	00101$
;	disp.c:120: ddata[column] = 0u;
	mov	r0,#_column
	mov	a,@r0
	add	a,#_ddata
	mov	r0,a
	mov	@r0,#0x00
;	disp.c:119: for (column = 0u; column < 8u; column++)
	mov	r0,#_column
	mov	a,@r0
	mov	r0,#_column
	inc	a
	mov	@r0,a
	sjmp	00103$
00101$:
;	disp.c:121: column = 0u;
	mov	r0,#_column
	mov	@r0,#0x00
;	disp.c:123: return;
;	disp.c:124: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_intr'
;------------------------------------------------------------
;t                         Allocated to registers r7 
;------------------------------------------------------------
;	disp.c:126: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
;	-----------------------------------------
;	 function timer0_intr
;	-----------------------------------------
_timer0_intr:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	psw
	mov	psw,#0x08
;	disp.c:129: t = column & 7u;
	mov	r0,#_column
	mov	ar7,@r0
	anl	ar7,#0x07
;	disp.c:130: gpo[DISP_COL] = 0u;
	mov	r0,#(_gpo + 0x0005)
	clr	a
	movx	@r0,a
;	disp.c:131: gpo[DISP_DATA] = ddata[t];
	mov	a,r7
	add	a,#_ddata
	mov	r1,a
	mov	ar6,@r1
	mov	r0,#(_gpo + 0x0004)
	mov	a,r6
	movx	@r0,a
;	disp.c:132: gpo[DISP_COL] = dcol[t];
	mov	a,r7
	add	a,#_dcol
	mov	r1,a
	mov	ar7,@r1
	mov	r0,#(_gpo + 0x0005)
	mov	a,r7
	movx	@r0,a
;	disp.c:133: column++;
	mov	r0,#_column
	mov	a,@r0
	mov	r0,#_column
	inc	a
	mov	@r0,a
;	disp.c:135: TR0 = 0;
;	assignBit
	clr	_TR0
;	disp.c:136: TH0 = 0xf8;
	mov	_TH0,#0xf8
;	disp.c:137: TL0 = 0x00;
	mov	_TL0,#0x00
;	disp.c:138: TR0 = 1;
;	assignBit
	setb	_TR0
;	disp.c:140: return;
;	disp.c:141: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'scroll'
;------------------------------------------------------------
;msg                       Allocated to stack - _bp +1
;symbol                    Allocated to stack - _bp +5
;bit                       Allocated to stack - _bp +6
;i                         Allocated to stack - _bp +7
;j                         Allocated to registers r4 
;r                         Allocated to registers r3 r4 
;i                         Allocated to registers r3 
;j                         Allocated to registers r2 
;__3932160002              Allocated to registers 
;s                         Allocated to registers r6 r4 r3 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +20
;sloc2                     Allocated to stack - _bp +21
;------------------------------------------------------------
;	disp.c:170: int scroll(uint8_t *msg) {
;	-----------------------------------------
;	 function scroll
;	-----------------------------------------
_scroll:
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
	add	a,#0x05
	mov	sp,a
;	disp.c:176: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00131$:
;	disp.c:177: if (!bit) {
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	jnz	00104$
;	disp.c:178: symbol = msg[i];
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
;	disp.c:179: if (!symbol) {
	mov	a,r2
	jnz	00102$
;	disp.c:180: i = 0u;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	disp.c:181: symbol = msg[i];
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
00102$:
;	disp.c:183: i++;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00211$
	inc	r0
	inc	@r0
00211$:
;	disp.c:184: OE = 0x8fu;
	mov	r0,#_OE
	mov	@r0,#0x8f
	sjmp	00105$
00104$:
;	disp.c:185: } else OE = 0x0fu;
	mov	r0,#_OE
	mov	@r0,#0x0f
00105$:
;	disp.c:186: gpo[GPO_OE] = OE;
	mov	r0,#(_gpo + 0x0006)
	mov	r1,#_OE
	mov	a,@r1
	movx	@r0,a
;	disp.c:149: do {
	mov	r3,#0x00
;	disp.c:151: do {
00137$:
	mov	r2,#0x00
00117$:
;	disp.c:163: __endasm;
	nop
	nop
	nop
	nop
;	disp.c:164: } while ((++j) ^ 0x80u);
	inc	r2
	mov	ar6,r2
	mov	r7,#0x00
	mov	a,#0x80
	xrl	a,r6
	jnz	00117$
	mov	a,r7
	jnz	00117$
;	disp.c:165: } while ((++i) ^ 0x80u);
	inc	r3
	mov	ar2,r3
	mov	r7,#0x00
	mov	a,#0x80
	xrl	a,r2
	jnz	00137$
	mov	a,r7
	jnz	00137$
;	disp.c:190: for (j = 0u; j < 8u; j++)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	mov	b,#0x08
	mul	ab
	add	a,#_font8x8
	mov	r2,a
	mov	a,#(_font8x8 >> 8)
	addc	a,b
	mov	r3,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x07
	clr	c
	subb	a,@r0
	mov	r5,a
	mov	r4,#0x00
00126$:
;	disp.c:191: ddata[j] = ((font8x8[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
	mov	a,r4
	add	a,#_ddata
	mov	r1,a
	mov	a,r4
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	b,r5
	inc	b
	mov	a,r7
	sjmp	00218$
00216$:
	add	a,acc
00218$:
	djnz	b,00216$
	anl	a,#0x80
	mov	r7,a
	mov	a,r4
	add	a,#_ddata
	mov	r0,a
	mov	a,@r0
	clr	c
	rrc	a
	orl	a,r7
	mov	@r1,a
;	disp.c:190: for (j = 0u; j < 8u; j++)
	inc	r4
	cjne	r4,#0x08,00219$
00219$:
	jc	00126$
;	disp.c:193: if ((r = getchar_poll()) >= 0) {
	lcall	_getchar_poll
	mov	r3,dpl
	mov	r4,dph
	mov	ar7,r3
	mov	a,r4
	mov	r6,a
	jb	acc.7,00132$
;	disp.c:194: r = toupper(r);
	mov	dpl,r7
	mov	dph,r6
	lcall	_toupper
	mov	r3,dpl
	mov	r4,dph
;	disp.c:195: if ((r == (int)'P') || (r == (int)' ')) {
	cjne	r3,#0x50,00222$
	cjne	r4,#0x00,00222$
	sjmp	00110$
00222$:
	cjne	r3,#0x20,00111$
	cjne	r4,#0x00,00111$
00110$:
;	disp.c:196: printstr("PAUSE\r\n");
	mov	r6,#___str_0
	mov	r4,#(___str_0 >> 8)
	mov	r3,#0x80
;	disp.c:45: return;
00129$:
;	disp.c:43: for (; *s; s++) putchar(*s);
	mov	dpl,r6
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r5,a
	jz	00125$
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	lcall	_putchar
	inc	r6
;	disp.c:196: printstr("PAUSE\r\n");
	cjne	r6,#0x00,00129$
	inc	r4
	sjmp	00129$
00125$:
;	disp.c:197: (void)getchar();
	lcall	_getchar
	sjmp	00132$
00111$:
;	disp.c:198: } else if ((r == (int)'L') || (r == (int)'T')) break;
	cjne	r3,#0x4c,00227$
	cjne	r4,#0x00,00227$
	sjmp	00116$
00227$:
	cjne	r3,#0x54,00228$
	cjne	r4,#0x00,00228$
	sjmp	00116$
00228$:
00132$:
;	disp.c:176: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	inc	a
	mov	r7,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x07
	anl	a,r7
	mov	@r0,a
	ljmp	00131$
00116$:
;	disp.c:202: return r;
	mov	dpl,r3
	mov	dph,r4
;	disp.c:203: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;j                         Allocated to stack - _bp +1
;c                         Allocated to registers r7 r6 
;__1966080004              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080006              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080008              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080010              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__3276800012              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__3276800014              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__3276800016              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__3276800018              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__3276800020              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__1310720022              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +65
;------------------------------------------------------------
;	disp.c:205: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	disp.c:209: init_gpo();
	lcall	_init_gpo
;	disp.c:210: clear_gpo();
	lcall	_clear_gpo
;	disp.c:211: init_disp();	
	lcall	_init_disp
;	disp.c:212: init_timer0();
	lcall	_init_timer0
;	disp.c:213: init_intr();
	lcall	_init_intr
;	disp.c:214: TR0 = 1;
;	assignBit
	setb	_TR0
;	disp.c:216: while (1) {
00118$:
;	disp.c:217: printstr("P SP L ENT S T\r\n");
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	disp.c:45: return;
00142$:
;	disp.c:43: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00122$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	disp.c:217: printstr("P SP L ENT S T\r\n");
	cjne	r5,#0x00,00142$
	inc	r6
	sjmp	00142$
00122$:
;	disp.c:218: printstr("START MSG \"");
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	disp.c:45: return;
00145$:
;	disp.c:43: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00124$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	disp.c:218: printstr("START MSG \"");
	cjne	r5,#0x00,00145$
	inc	r6
	sjmp	00145$
00124$:
;	disp.c:219: printstr((char *)buf);
	mov	r5,#_buf
	mov	r6,#(_buf >> 8)
	mov	r7,#0x00
;	disp.c:45: return;
00148$:
;	disp.c:43: for (; *s; s++) putchar(*s);
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
;	disp.c:219: printstr((char *)buf);
	cjne	r5,#0x00,00148$
	inc	r6
	sjmp	00148$
00126$:
;	disp.c:220: printstr("\"\r\n");
	mov	r5,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r7,#0x80
;	disp.c:45: return;
00151$:
;	disp.c:43: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00128$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	disp.c:220: printstr("\"\r\n");
	cjne	r5,#0x00,00151$
	inc	r6
	sjmp	00151$
00128$:
;	disp.c:222: c = scroll(buf);
	mov	dptr,#_buf
	mov	b,#0x00
	lcall	_scroll
	mov	r6,dpl
	mov	r7,dph
;	disp.c:224: while (1) {
00115$:
;	disp.c:225: if (c == (int)'T') goto term;
	cjne	r6,#0x54,00323$
	cjne	r7,#0x00,00323$
	ljmp	00120$
00323$:
;	disp.c:226: else if (c == (int)'L') {
	cjne	r6,#0x4c,00324$
	cjne	r7,#0x00,00324$
	sjmp	00325$
00324$:
	ljmp	00109$
00325$:
;	disp.c:227: printstr("LOAD ");
	mov	r7,#___str_4
	mov	r6,#(___str_4 >> 8)
	mov	r4,#0x80
;	disp.c:45: return;
00154$:
;	disp.c:43: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00130$
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	lcall	_putchar
	inc	r7
;	disp.c:227: printstr("LOAD ");
	cjne	r7,#0x00,00154$
	inc	r6
	sjmp	00154$
00130$:
;	disp.c:228: for (j = 0u; j < 256u; j++) {
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00156$:
;	disp.c:229: c = getchar();
	push	ar4
	push	ar5
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	mov	ar7,r4
	mov	ar6,r5
;	disp.c:230: (void)putchar(c);
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
;	disp.c:231: if ((c == (int)'\r') || (c == (int)'\n')) {
	cjne	r7,#0x0d,00328$
	cjne	r6,#0x00,00328$
	pop	ar5
	pop	ar4
	sjmp	00101$
00328$:
	pop	ar5
	pop	ar4
	cjne	r7,#0x0a,00102$
	cjne	r6,#0x00,00102$
00101$:
;	disp.c:232: buf[j] = 0u;
	mov	a,r4
	add	a,#_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buf >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	disp.c:233: break;
	sjmp	00105$
00102$:
;	disp.c:234: } else buf[j] = c & 0xffu;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_buf
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,#(_buf >> 8)
	mov	r4,a
	mov	ar3,r7
	mov	dpl,r5
	mov	dph,r4
	mov	a,r3
	movx	@dptr,a
;	disp.c:228: for (j = 0u; j < 256u; j++) {
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00331$
	inc	r0
	inc	@r0
00331$:
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	a,#0x100 - 0x01
	add	a,r3
	jnc	00156$
00105$:
;	disp.c:236: buf[j] = 0u;
	mov	a,r4
	add	a,#_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buf >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	disp.c:237: printstr("\r\n");
	mov	r7,#___str_5
	mov	r6,#(___str_5 >> 8)
	mov	r4,#0x80
;	disp.c:45: return;
00159$:
;	disp.c:43: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00132$
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	lcall	_putchar
	inc	r7
;	disp.c:237: printstr("\r\n");
	cjne	r7,#0x00,00159$
	inc	r6
	sjmp	00159$
00132$:
;	disp.c:238: printstr("MSG \"");
	mov	r7,#___str_6
	mov	r6,#(___str_6 >> 8)
	mov	r4,#0x80
;	disp.c:45: return;
00162$:
;	disp.c:43: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00134$
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	lcall	_putchar
	inc	r7
;	disp.c:238: printstr("MSG \"");
	cjne	r7,#0x00,00162$
	inc	r6
	sjmp	00162$
00134$:
;	disp.c:239: printstr((char *)buf);
	mov	r7,#_buf
	mov	r6,#(_buf >> 8)
	mov	r4,#0x00
;	disp.c:45: return;
00165$:
;	disp.c:43: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00136$
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	lcall	_putchar
	inc	r7
;	disp.c:239: printstr((char *)buf);
	cjne	r7,#0x00,00165$
	inc	r6
	sjmp	00165$
00136$:
;	disp.c:240: printstr("\"\r\n");
	mov	r7,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r4,#0x80
;	disp.c:45: return;
00168$:
;	disp.c:43: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00113$
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	lcall	_putchar
	inc	r7
;	disp.c:240: printstr("\"\r\n");
	cjne	r7,#0x00,00168$
	inc	r6
	sjmp	00168$
00109$:
;	disp.c:241: } else if (c == (int)'S') break;
	cjne	r6,#0x53,00341$
	cjne	r7,#0x00,00341$
	ljmp	00118$
00341$:
00113$:
;	disp.c:243: c = toupper(getchar());
	lcall	_getchar
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
	ljmp	00115$
;	disp.c:247: term:	
00120$:
;	disp.c:248: EA = 0;
;	assignBit
	clr	_EA
;	disp.c:249: printstr("TERM\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	disp.c:45: return;
00171$:
;	disp.c:43: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00140$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	disp.c:249: printstr("TERM\r\n");
	cjne	r5,#0x00,00171$
	inc	r6
	sjmp	00171$
00140$:
;	disp.c:250: (void)getchar();
	lcall	_getchar
;	disp.c:254: __endasm;
	orl	pcon, #2
;	disp.c:255: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "PAUSE"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "P SP L ENT S T"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "START MSG "
	.db 0x22
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x22
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "LOAD "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "MSG "
	.db 0x22
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "TERM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__font8x8:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x7f	; 127
	.db #0x36	; 54	'6'
	.db #0x7f	; 127
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x3e	; 62
	.db #0x03	; 3
	.db #0x1e	; 30
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x33	; 51	'3'
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x66	; 102	'f'
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x1c	; 28
	.db #0x6e	; 110	'n'
	.db #0x3b	; 59
	.db #0x33	; 51	'3'
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0xff	; 255
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x3f	; 63
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x63	; 99	'c'
	.db #0x73	; 115	's'
	.db #0x7b	; 123
	.db #0x6f	; 111	'o'
	.db #0x67	; 103	'g'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x30	; 48	'0'
	.db #0x1c	; 28
	.db #0x06	; 6
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x30	; 48	'0'
	.db #0x1c	; 28
	.db #0x30	; 48	'0'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x3c	; 60
	.db #0x36	; 54	'6'
	.db #0x33	; 51	'3'
	.db #0x7f	; 127
	.db #0x30	; 48	'0'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x03	; 3
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x1f	; 31
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x33	; 51	'3'
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3e	; 62
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x63	; 99	'c'
	.db #0x7b	; 123
	.db #0x7b	; 123
	.db #0x7b	; 123
	.db #0x03	; 3
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3e	; 62
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x36	; 54	'6'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x36	; 54	'6'
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x46	; 70	'F'
	.db #0x16	; 22
	.db #0x1e	; 30
	.db #0x16	; 22
	.db #0x46	; 70	'F'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x46	; 70	'F'
	.db #0x16	; 22
	.db #0x1e	; 30
	.db #0x16	; 22
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x73	; 115	's'
	.db #0x66	; 102	'f'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x67	; 103	'g'
	.db #0x66	; 102	'f'
	.db #0x36	; 54	'6'
	.db #0x1e	; 30
	.db #0x36	; 54	'6'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x46	; 70	'F'
	.db #0x66	; 102	'f'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x77	; 119	'w'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x6b	; 107	'k'
	.db #0x63	; 99	'c'
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x67	; 103	'g'
	.db #0x6f	; 111	'o'
	.db #0x7b	; 123
	.db #0x73	; 115	's'
	.db #0x63	; 99	'c'
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x63	; 99	'c'
	.db #0x63	; 99	'c'
	.db #0x63	; 99	'c'
	.db #0x36	; 54	'6'
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3e	; 62
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3b	; 59
	.db #0x1e	; 30
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3e	; 62
	.db #0x36	; 54	'6'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x07	; 7
	.db #0x0e	; 14
	.db #0x38	; 56	'8'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x2d	; 45
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x63	; 99	'c'
	.db #0x63	; 99	'c'
	.db #0x6b	; 107	'k'
	.db #0x7f	; 127
	.db #0x77	; 119	'w'
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x63	; 99	'c'
	.db #0x36	; 54	'6'
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x63	; 99	'c'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x4c	; 76	'L'
	.db #0x66	; 102	'f'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x30	; 48	'0'
	.db #0x3e	; 62
	.db #0x33	; 51	'3'
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3b	; 59
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x03	; 3
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x3e	; 62
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0x03	; 3
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3e	; 62
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x36	; 54	'6'
	.db #0x6e	; 110	'n'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x66	; 102	'f'
	.db #0x36	; 54	'6'
	.db #0x1e	; 30
	.db #0x36	; 54	'6'
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x6b	; 107	'k'
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3b	; 59
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3e	; 62
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3e	; 62
	.db #0x30	; 48	'0'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3b	; 59
	.db #0x6e	; 110	'n'
	.db #0x66	; 102	'f'
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x03	; 3
	.db #0x1e	; 30
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x3e	; 62
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x2c	; 44
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x6b	; 107	'k'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x36	; 54	'6'
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3e	; 62
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x19	; 25
	.db #0x0c	; 12
	.db #0x26	; 38
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x38	; 56	'8'
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x3b	; 59
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x7e	; 126
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x7e	; 126
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x26	; 38
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x67	; 103	'g'
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x3e	; 62
	.db #0x36	; 54	'6'
	.db #0x3e	; 62
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x3f	; 63
	.db #0x0c	; 12
	.db #0x3f	; 63
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0xc6	; 198
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x1c	; 28
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x99	; 153
	.db #0x85	; 133
	.db #0x85	; 133
	.db #0x99	; 153
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xcc	; 204
	.db #0x66	; 102	'f'
	.db #0x33	; 51	'3'
	.db #0x66	; 102	'f'
	.db #0xcc	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x9d	; 157
	.db #0xa5	; 165
	.db #0x9d	; 157
	.db #0xa5	; 165
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x7e	; 126
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3e	; 62
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0xfe	; 254
	.db #0xdb	; 219
	.db #0xdb	; 219
	.db #0xde	; 222
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x1e	; 30
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x66	; 102	'f'
	.db #0xcc	; 204
	.db #0x66	; 102	'f'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x63	; 99	'c'
	.db #0x33	; 51	'3'
	.db #0xbd	; 189
	.db #0xec	; 236
	.db #0xf6	; 246
	.db #0xf3	; 243
	.db #0x03	; 3
	.db #0xc3	; 195
	.db #0x63	; 99	'c'
	.db #0x33	; 51	'3'
	.db #0x7b	; 123
	.db #0xcc	; 204
	.db #0x66	; 102	'f'
	.db #0x33	; 51	'3'
	.db #0xf0	; 240
	.db #0x03	; 3
	.db #0xc4	; 196
	.db #0x63	; 99	'c'
	.db #0xb4	; 180
	.db #0xdb	; 219
	.db #0xac	; 172
	.db #0xe6	; 230
	.db #0x80	; 128
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x63	; 99	'c'
	.db #0x7f	; 127
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x63	; 99	'c'
	.db #0x7f	; 127
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x63	; 99	'c'
	.db #0x7f	; 127
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x3b	; 59
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x63	; 99	'c'
	.db #0x7f	; 127
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x63	; 99	'c'
	.db #0x7f	; 127
	.db #0x63	; 99	'c'
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x36	; 54	'6'
	.db #0x33	; 51	'3'
	.db #0x7f	; 127
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x73	; 115	's'
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x03	; 3
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x1e	; 30
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x1e	; 30
	.db #0x06	; 6
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x1e	; 30
	.db #0x06	; 6
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x1e	; 30
	.db #0x06	; 6
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x1e	; 30
	.db #0x06	; 6
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x66	; 102	'f'
	.db #0x6f	; 111	'o'
	.db #0x6f	; 111	'o'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x37	; 55	'7'
	.db #0x3f	; 63
	.db #0x3b	; 59
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x3b	; 59
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x63	; 99	'c'
	.db #0x63	; 99	'c'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5c	; 92
	.db #0x36	; 54	'6'
	.db #0x73	; 115	's'
	.db #0x7b	; 123
	.db #0x6f	; 111	'o'
	.db #0x36	; 54	'6'
	.db #0x1d	; 29
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x3e	; 62
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x1f	; 31
	.db #0x33	; 51	'3'
	.db #0x1f	; 31
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x30	; 48	'0'
	.db #0x3e	; 62
	.db #0x33	; 51	'3'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x30	; 48	'0'
	.db #0x3e	; 62
	.db #0x33	; 51	'3'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0xc3	; 195
	.db #0x3c	; 60
	.db #0x60	; 96
	.db #0x7c	; 124
	.db #0x66	; 102	'f'
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x3b	; 59
	.db #0x1e	; 30
	.db #0x30	; 48	'0'
	.db #0x3e	; 62
	.db #0x33	; 51	'3'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x30	; 48	'0'
	.db #0x3e	; 62
	.db #0x33	; 51	'3'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x30	; 48	'0'
	.db #0x3e	; 62
	.db #0x33	; 51	'3'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x30	; 48	'0'
	.db #0xfe	; 254
	.db #0x33	; 51	'3'
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x1e	; 30
	.db #0x30	; 48	'0'
	.db #0x1c	; 28
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0x03	; 3
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0x03	; 3
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0xc3	; 195
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x7e	; 126
	.db #0x06	; 6
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0x03	; 3
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x63	; 99	'c'
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1b	; 27
	.db #0x0e	; 14
	.db #0x1b	; 27
	.db #0x30	; 48	'0'
	.db #0x3e	; 62
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x3b	; 59
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x3c	; 60
	.db #0x76	; 118	'v'
	.db #0x7e	; 126
	.db #0x6e	; 110	'n'
	.db #0x3c	; 60
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3e	; 62
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x66	; 102	'f'
	.db #0x3e	; 62
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3e	; 62
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
__xinit__buf:
	.ascii "Go fuck yourselves you sons of bitches! "
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.area CABS    (ABS,CODE)
