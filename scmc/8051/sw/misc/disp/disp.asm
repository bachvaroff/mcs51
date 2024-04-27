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
	.globl _init_timer1
	.globl _init_timer0
	.globl _init_intr
	.globl _gpo_clear
	.globl _gpo_init
	.globl _getchar_poll
	.globl _getchar
	.globl _putchar
	.globl _toupper
	.globl _strncpy
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
	.globl _inv
	.globl _OE
	.globl _column
	.globl _ddata
	.globl _sddcol
	.globl _dsdcol
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
_dsdcol::
	.ds 8
_sddcol::
	.ds 8
_ddata::
	.ds 8
_column::
	.ds 1
_OE::
	.ds 1
_inv::
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
_buf:
	.ds 257
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
__ft_font6x8:
	.ds 2048
_initial:
	.ds 3
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
;	disp.c:88: __idata const uint8_t dsdcol[8] = {
	mov	r0,#_dsdcol
	mov	@r0,#0x80
	mov	r0,#(_dsdcol + 0x0001)
	mov	@r0,#0x40
	mov	r0,#(_dsdcol + 0x0002)
	mov	@r0,#0x20
	mov	r0,#(_dsdcol + 0x0003)
	mov	@r0,#0x10
	mov	r0,#(_dsdcol + 0x0004)
	mov	@r0,#0x08
	mov	r0,#(_dsdcol + 0x0005)
	mov	@r0,#0x04
	mov	r0,#(_dsdcol + 0x0006)
	mov	@r0,#0x02
	mov	r0,#(_dsdcol + 0x0007)
	mov	@r0,#0x01
;	disp.c:92: __idata const uint8_t sddcol[8] = {
	mov	r0,#_sddcol
	mov	@r0,#0x01
	mov	r0,#(_sddcol + 0x0001)
	mov	@r0,#0x02
	mov	r0,#(_sddcol + 0x0002)
	mov	@r0,#0x04
	mov	r0,#(_sddcol + 0x0003)
	mov	@r0,#0x08
	mov	r0,#(_sddcol + 0x0004)
	mov	@r0,#0x10
	mov	r0,#(_sddcol + 0x0005)
	mov	@r0,#0x20
	mov	r0,#(_sddcol + 0x0006)
	mov	@r0,#0x40
	mov	r0,#(_sddcol + 0x0007)
	mov	@r0,#0x80
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
;Allocation info for local variables in function 'gpo_init'
;------------------------------------------------------------
;	disp.c:47: void gpo_init(void) {
;	-----------------------------------------
;	 function gpo_init
;	-----------------------------------------
_gpo_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	disp.c:48: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	disp.c:53: __endasm;
	nop
	nop
	nop
;	disp.c:55: P2 = GPO_BASE_H;
	mov	_P2,#0xf0
;	disp.c:57: GPO_CLEAR;
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
;	disp.c:59: return;
;	disp.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpo_clear'
;------------------------------------------------------------
;	disp.c:62: void gpo_clear(void) {
;	-----------------------------------------
;	 function gpo_clear
;	-----------------------------------------
_gpo_clear:
;	disp.c:63: GPO_CLEAR;
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
;	disp.c:65: return;
;	disp.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_intr'
;------------------------------------------------------------
;	disp.c:123: void init_intr(void) {
;	-----------------------------------------
;	 function init_intr
;	-----------------------------------------
_init_intr:
;	disp.c:124: TR0 = 0;
;	assignBit
	clr	_TR0
;	disp.c:125: TR1 = 0;
;	assignBit
	clr	_TR1
;	disp.c:126: ET0 = 1;
;	assignBit
	setb	_ET0
;	disp.c:127: ET1 = 0;
;	assignBit
	clr	_ET1
;	disp.c:128: EA = 1;
;	assignBit
	setb	_EA
;	disp.c:130: return;
;	disp.c:131: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_timer0'
;------------------------------------------------------------
;	disp.c:133: void init_timer0(void) {
;	-----------------------------------------
;	 function init_timer0
;	-----------------------------------------
_init_timer0:
;	disp.c:134: TR0 = 0;
;	assignBit
	clr	_TR0
;	disp.c:135: TMOD |= 0x01;
	orl	_TMOD,#0x01
;	disp.c:136: TH0 = TR0_COUNT >> 8;
	mov	_TH0,#0xf8
;	disp.c:137: TL0 = TR0_COUNT & 0xffu;
	mov	_TL0,#0x00
;	disp.c:139: return;
;	disp.c:140: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_timer1'
;------------------------------------------------------------
;	disp.c:142: void init_timer1(void) {
;	-----------------------------------------
;	 function init_timer1
;	-----------------------------------------
_init_timer1:
;	disp.c:143: TR1 = 0;
;	assignBit
	clr	_TR1
;	disp.c:144: TMOD |= 0x10;
	orl	_TMOD,#0x10
;	disp.c:145: TH1 = TR1_COUNT_0 >> 8;
	mov	_TH1,#0x00
;	disp.c:146: TL1 = TR1_COUNT_0 & 0xffu;
	mov	_TL1,#0x00
;	disp.c:148: return;
;	disp.c:149: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_disp'
;------------------------------------------------------------
;	disp.c:151: void init_disp(void) {
;	-----------------------------------------
;	 function init_disp
;	-----------------------------------------
_init_disp:
;	disp.c:152: GPO_SETREG(DISP_COL, 0u);
	mov	r0,#(_gpo + 0x0005)
	clr	a
	movx	@r0,a
;	disp.c:153: GPO_SETREG(DISP_DATA, 0u);
	mov	r0,#(_gpo + 0x0004)
	movx	@r0,a
;	disp.c:154: OE = 0x0fu; /* 00_001111 */
	mov	r0,#_OE
	mov	@r0,#0x0f
;	disp.c:155: GPO_SETOE(OE);
	mov	r0,#(_gpo + 0x0006)
	mov	a,#0x0f
	movx	@r0,a
;	disp.c:157: for (column = 0u; column < 8u; column++)
	mov	r0,#_column
	mov	@r0,#0x00
00112$:
	mov	r0,#_column
	cjne	@r0,#0x08,00124$
00124$:
	jnc	00110$
;	disp.c:158: ddata[column] = 0u;
	mov	r0,#_column
	mov	a,@r0
	add	a,#_ddata
	mov	r0,a
	mov	@r0,#0x00
;	disp.c:157: for (column = 0u; column < 8u; column++)
	mov	r0,#_column
	mov	a,@r0
	mov	r0,#_column
	inc	a
	mov	@r0,a
	sjmp	00112$
00110$:
;	disp.c:159: column = 0u;
	mov	r0,#_column
	mov	@r0,#0x00
;	disp.c:161: return;
;	disp.c:162: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_intr'
;------------------------------------------------------------
;t                         Allocated to registers r7 
;------------------------------------------------------------
;	disp.c:164: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
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
;	disp.c:167: t = column & 7u;
	mov	r0,#_column
	mov	ar7,@r0
	anl	ar7,#0x07
;	disp.c:168: GPO_SETREG(DISP_COL, 0u);
	mov	r0,#(_gpo + 0x0005)
	clr	a
	movx	@r0,a
;	disp.c:169: GPO_SETREG(DISP_DATA, ddata[t]);
	mov	a,r7
	add	a,#_ddata
	mov	r1,a
	mov	ar6,@r1
	mov	r0,#(_gpo + 0x0004)
	mov	a,r6
	movx	@r0,a
;	disp.c:170: GPO_SETREG(DISP_COL, dsdcol[t]);
	mov	a,r7
	add	a,#_dsdcol
	mov	r1,a
	mov	ar7,@r1
	mov	r0,#(_gpo + 0x0005)
	mov	a,r7
	movx	@r0,a
;	disp.c:171: column++;
	mov	r0,#_column
	mov	a,@r0
	mov	r0,#_column
	inc	a
	mov	@r0,a
;	disp.c:173: TR0 = 0;
;	assignBit
	clr	_TR0
;	disp.c:174: TH0 = TR0_COUNT >> 8;
	mov	_TH0,#0xf8
;	disp.c:175: TL0 = TR0_COUNT & 0xffu;
	mov	_TL0,#0x00
;	disp.c:176: TR0 = 1;
;	assignBit
	setb	_TR0
;	disp.c:178: return;
;	disp.c:179: }
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
;c                         Allocated to registers r3 r4 
;__3932160008              Allocated to registers 
;s                         Allocated to registers r6 r4 r3 
;__3932160010              Allocated to registers 
;s                         Allocated to registers r6 r5 r4 
;__1310720001              Allocated to registers 
;s                         Allocated to registers r6 r5 r4 
;__1310720003              Allocated to registers 
;s                         Allocated to registers r6 r5 r4 
;__1310720005              Allocated to registers 
;s                         Allocated to registers r6 r5 r4 
;__1310720005              Allocated to registers 
;s                         Allocated to registers r6 r5 r4 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +48
;sloc2                     Allocated to stack - _bp +49
;------------------------------------------------------------
;	disp.c:203: int scroll(uint8_t *msg) {
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
;	disp.c:209: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
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
00173$:
;	disp.c:210: if (!bit) {
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	jnz	00105$
;	disp.c:211: symbol = msg[i];
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
;	disp.c:212: if (!symbol) {
	mov	a,r2
	jnz	00102$
;	disp.c:213: i = 0u;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	disp.c:214: symbol = msg[i];
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
;	disp.c:215: OE |= 0x80u;
	mov	r0,#_OE
	mov	a,@r0
	orl	a,#0x80
	mov	@r0,a
	sjmp	00103$
00102$:
;	disp.c:216: } else OE |= 0x40u;
	mov	r0,#_OE
	mov	a,@r0
	orl	a,#0x40
	mov	@r0,a
00103$:
;	disp.c:217: i++;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00328$
	inc	r0
	inc	@r0
00328$:
	sjmp	00107$
00105$:
;	disp.c:218: } else OE &= ~(0x80u | 0x40u);
	mov	r0,#_OE
	mov	a,@r0
	anl	a,#0x3f
	mov	@r0,a
;	disp.c:219: GPO_SETOE(OE);
00107$:
	mov	r0,#(_gpo + 0x0006)
	mov	r1,#_OE
	mov	a,@r1
	movx	@r0,a
;	disp.c:221: if (FONT_SKIP & sddcol[bit]) goto skip_shift;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	add	a,#_sddcol
	mov	r1,a
	mov	a,@r1
	mov	r3,a
	anl	a,#0xc0
	jz	00330$
	sjmp	00113$
00330$:
;	disp.c:182: TR1 = 0;
;	assignBit
	clr	_TR1
;	disp.c:183: TH1 = TR1_COUNT_0 >> 8;
	mov	_TH1,#0x00
;	disp.c:184: TL1 = TR1_COUNT_0 & 0xffu;	
	mov	_TL1,#0x00
;	disp.c:185: TF1 = 0;
;	assignBit
	clr	_TF1
;	disp.c:186: TR1 = 1;
;	assignBit
	setb	_TR1
;	disp.c:187: while (!TF1);
00130$:
;	disp.c:188: TF1 = 0;
;	assignBit
	jbc	_TF1,00331$
	sjmp	00130$
00331$:
;	disp.c:190: TR1 = 0;
;	assignBit
	clr	_TR1
;	disp.c:191: TH1 = TR1_COUNT_1 >> 8;
	mov	_TH1,#0xc0
;	disp.c:192: TL1 = TR1_COUNT_1 & 0xffu;	
	mov	_TL1,#0x00
;	disp.c:193: TF1 = 0;
;	assignBit
	clr	_TF1
;	disp.c:194: TR1 = 1;
;	assignBit
	setb	_TR1
;	disp.c:195: while (!TF1);
00133$:
;	disp.c:196: TF1 = 0;
;	assignBit
	jbc	_TF1,00332$
	sjmp	00133$
00332$:
;	disp.c:198: TR1 = 0;
;	assignBit
	clr	_TR1
;	disp.c:224: for (j = 0u; j < 8u; j++)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	mov	b,#0x08
	mul	ab
	add	a,#__ft_font6x8
	mov	r2,a
	mov	a,#(__ft_font6x8 >> 8)
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
00153$:
;	disp.c:225: ddata[j] = (((FONT_TABLE[symbol][j] ^ inv) << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
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
	mov	r0,#_inv
	mov	a,@r0
	xrl	ar7,a
	mov	b,r5
	inc	b
	mov	a,r7
	sjmp	00335$
00333$:
	add	a,acc
00335$:
	djnz	b,00333$
	anl	a,#0x80
	mov	r7,a
	mov	a,r4
	add	a,#_ddata
	mov	r0,a
	mov	a,@r0
	clr	c
	rrc	a
	mov	r6,a
	orl	a,r7
	mov	@r1,a
;	disp.c:224: for (j = 0u; j < 8u; j++)
	inc	r4
	cjne	r4,#0x08,00336$
00336$:
	jc	00153$
;	disp.c:227: skip_shift:
00113$:
;	disp.c:228: if ((c = getchar_poll()) >= 0) {
	lcall	_getchar_poll
	mov	r3,dpl
	mov	r4,dph
	mov	ar7,r3
	mov	a,r4
	mov	r6,a
	jnb	acc.7,00338$
	ljmp	00174$
00338$:
;	disp.c:229: c = toupper(c);
	mov	dpl,r7
	mov	dph,r6
	lcall	_toupper
	mov	r3,dpl
	mov	r4,dph
;	disp.c:230: if (c == (int)' ') {
	cjne	r3,#0x20,00125$
	cjne	r4,#0x00,00125$
;	disp.c:231: printstr("PAUSE\r\n");
	mov	r6,#___str_2
	mov	r4,#(___str_2 >> 8)
	mov	r3,#0x80
;	disp.c:14: return;
00156$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r6
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r5,a
	jz	00138$
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	push	ar4
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar6
	inc	r6
;	disp.c:231: printstr("PAUSE\r\n");
	cjne	r6,#0x00,00156$
	inc	r4
	sjmp	00156$
00138$:
;	disp.c:232: (void)getchar();
	lcall	_getchar
;	disp.c:233: printstr("RESUME\r\n");
	mov	r6,#___str_3
	mov	r5,#(___str_3 >> 8)
	mov	r4,#0x80
;	disp.c:14: return;
00159$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jnz	00343$
	ljmp	00174$
00343$:
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r7
	push	ar6
	push	ar5
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	inc	r6
;	disp.c:233: printstr("RESUME\r\n");
	cjne	r6,#0x00,00159$
	inc	r5
	sjmp	00159$
00125$:
;	disp.c:234: } else if (c == (int)'P') {
	cjne	r3,#0x50,00345$
	cjne	r4,#0x00,00345$
	sjmp	00346$
00345$:
	ljmp	00122$
00346$:
;	disp.c:110: printstr("MSG \"");
	mov	r6,#___str_0
	mov	r5,#(___str_0 >> 8)
	mov	r4,#0x80
;	disp.c:14: return;
00162$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00142$
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r7
	push	ar6
	push	ar5
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	inc	r6
;	disp.c:110: printstr("MSG \"");
	cjne	r6,#0x00,00162$
	inc	r5
	sjmp	00162$
00142$:
;	disp.c:111: printstr((char *)buf);
	mov	r6,#_buf
	mov	r5,#(_buf >> 8)
	mov	r4,#0x00
;	disp.c:14: return;
00165$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00144$
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r7
	push	ar6
	push	ar5
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	inc	r6
;	disp.c:111: printstr((char *)buf);
	cjne	r6,#0x00,00165$
	inc	r5
	sjmp	00165$
00144$:
;	disp.c:112: putchar((int)'"');
	mov	dptr,#0x0022
	lcall	_putchar
;	disp.c:118: printstr("\r\n");
	mov	r6,#___str_1
	mov	r5,#(___str_1 >> 8)
	mov	r4,#0x80
;	disp.c:14: return;
00168$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jnz	00351$
	ljmp	00174$
00351$:
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r7
	push	ar6
	push	ar5
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	inc	r6
;	disp.c:236: pnl();
	cjne	r6,#0x00,00168$
	inc	r5
	sjmp	00168$
00122$:
;	disp.c:237: } else if (c == (int)'I') {
	cjne	r3,#0x49,00119$
	cjne	r4,#0x00,00119$
;	disp.c:238: inv = ~inv;
	mov	r0,#_inv
	mov	a,@r0
	cpl	a
	mov	@r0,a
;	disp.c:103: putchar((int)'I');
	mov	dptr,#0x0049
	lcall	_putchar
;	disp.c:104: putchar(inv ? (int)'1' : (int)'0');
	mov	r0,#_inv
	mov	a,@r0
	jz	00177$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00178$
00177$:
	mov	r6,#0x30
	mov	r7,#0x00
00178$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	disp.c:118: printstr("\r\n");
	mov	r6,#___str_1
	mov	r5,#(___str_1 >> 8)
	mov	r4,#0x80
;	disp.c:14: return;
00171$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00174$
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r7
	push	ar6
	push	ar5
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	inc	r6
;	disp.c:240: pnl();
	cjne	r6,#0x00,00171$
	inc	r5
	sjmp	00171$
00119$:
;	disp.c:241: } else if ((c == (int)'T') || (c == (int)'R') || (c == (int)'L')) break;
	cjne	r3,#0x54,00358$
	cjne	r4,#0x00,00358$
	sjmp	00129$
00358$:
	cjne	r3,#0x52,00359$
	cjne	r4,#0x00,00359$
	sjmp	00129$
00359$:
	cjne	r3,#0x4c,00360$
	cjne	r4,#0x00,00360$
	sjmp	00129$
00360$:
00174$:
;	disp.c:209: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
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
	ljmp	00173$
00129$:
;	disp.c:245: return c;
	mov	dpl,r3
	mov	dph,r4
;	disp.c:246: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;j                         Allocated to stack - _bp +1
;c                         Allocated to registers r7 r6 
;__1310720016              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720018              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720001              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720003              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720005              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080022              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080025              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720005              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720001              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__1310720003              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__1310720005              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__1310720005              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__3276800032              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__1310720005              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__1310720001              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__1310720003              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__1310720005              Allocated to registers 
;s                         Allocated to registers r7 r6 r4 
;__1310720037              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +113
;------------------------------------------------------------
;	disp.c:248: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	disp.c:252: gpo_init();
	lcall	_gpo_init
;	disp.c:253: gpo_clear();
	lcall	_gpo_clear
;	disp.c:254: init_disp();
	lcall	_init_disp
;	disp.c:255: init_timer0();
	lcall	_init_timer0
;	disp.c:256: init_timer1();
	lcall	_init_timer1
;	disp.c:257: init_intr();
	lcall	_init_intr
;	disp.c:258: TR0 = 1;
;	assignBit
	setb	_TR0
;	disp.c:260: reset:
00101$:
;	disp.c:261: init_disp();
	lcall	_init_disp
;	disp.c:262: printstr("RESET\r\n");
	mov	r5,#___str_4
	mov	r6,#(___str_4 >> 8)
	mov	r7,#0x80
;	disp.c:14: return;
00179$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00132$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
;	disp.c:262: printstr("RESET\r\n");
	cjne	r5,#0x00,00179$
	inc	r6
	sjmp	00179$
00132$:
;	disp.c:263: (void)strncpy(buf, initial, sizeof (buf) - 1u);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dptr,#_initial
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_buf
	mov	b,#0x00
	lcall	_strncpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	disp.c:264: buf[sizeof (buf) - 1u] = 0u;
	mov	dptr,#(_buf + 0x0100)
	clr	a
	movx	@dptr,a
;	disp.c:265: inv = 0u;
	mov	r0,#_inv
	mov	@r0,#0x00
;	disp.c:266: printstr("INITIAL ");
	mov	r5,#___str_5
	mov	r6,#(___str_5 >> 8)
	mov	r7,#0x80
;	disp.c:14: return;
00182$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00128$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
;	disp.c:268: while (1) {
	cjne	r5,#0x00,00182$
	inc	r6
	sjmp	00182$
00128$:
;	disp.c:110: printstr("MSG \"");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	disp.c:14: return;
00185$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00136$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
;	disp.c:110: printstr("MSG \"");
	cjne	r5,#0x00,00185$
	inc	r6
	sjmp	00185$
00136$:
;	disp.c:111: printstr((char *)buf);
	mov	r5,#_buf
	mov	r6,#(_buf >> 8)
	mov	r7,#0x00
;	disp.c:14: return;
00188$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00138$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
;	disp.c:111: printstr((char *)buf);
	cjne	r5,#0x00,00188$
	inc	r6
	sjmp	00188$
00138$:
;	disp.c:112: putchar((int)'"');
	mov	dptr,#0x0022
	lcall	_putchar
;	disp.c:118: printstr("\r\n");
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	disp.c:14: return;
00191$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00141$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
;	disp.c:118: printstr("\r\n");
	cjne	r5,#0x00,00191$
	inc	r6
	sjmp	00191$
00141$:
;	disp.c:271: printstr("P SP ");
	mov	r5,#___str_6
	mov	r6,#(___str_6 >> 8)
	mov	r7,#0x80
;	disp.c:14: return;
00194$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00144$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
;	disp.c:271: printstr("P SP ");
	cjne	r5,#0x00,00194$
	inc	r6
	sjmp	00194$
00144$:
;	disp.c:103: putchar((int)'I');
	mov	dptr,#0x0049
	lcall	_putchar
;	disp.c:104: putchar(inv ? (int)'1' : (int)'0');
	mov	r0,#_inv
	mov	a,@r0
	jz	00236$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00237$
00236$:
	mov	r6,#0x30
	mov	r7,#0x00
00237$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	disp.c:273: printstr(" L S R T");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	disp.c:14: return;
00197$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00147$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
;	disp.c:273: printstr(" L S R T");
	cjne	r5,#0x00,00197$
	inc	r6
	sjmp	00197$
00147$:
;	disp.c:118: printstr("\r\n");
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	disp.c:14: return;
00200$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00149$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
;	disp.c:118: printstr("\r\n");
	cjne	r5,#0x00,00200$
	inc	r6
	sjmp	00200$
00149$:
;	disp.c:276: c = scroll(buf);
	mov	dptr,#_buf
	mov	b,#0x00
	lcall	_scroll
	mov	r6,dpl
	mov	r7,dph
;	disp.c:278: while (1) {
00125$:
;	disp.c:279: if (c == (int)'T') goto term;
	cjne	r6,#0x54,00515$
	cjne	r7,#0x00,00515$
	ljmp	00130$
00515$:
;	disp.c:280: else if (c == (int)'R') goto reset;
	cjne	r6,#0x52,00516$
	cjne	r7,#0x00,00516$
	ljmp	00101$
00516$:
;	disp.c:281: else if (c == (int)'P') {
	cjne	r6,#0x50,00517$
	cjne	r7,#0x00,00517$
	sjmp	00518$
00517$:
	ljmp	00116$
00518$:
;	disp.c:110: printstr("MSG \"");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r4,#0x80
;	disp.c:14: return;
00203$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00152$
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar6
	pop	ar7
	inc	r7
;	disp.c:110: printstr("MSG \"");
	cjne	r7,#0x00,00203$
	inc	r6
	sjmp	00203$
00152$:
;	disp.c:111: printstr((char *)buf);
	mov	r7,#_buf
	mov	r6,#(_buf >> 8)
	mov	r4,#0x00
;	disp.c:14: return;
00206$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00154$
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar6
	pop	ar7
	inc	r7
;	disp.c:111: printstr((char *)buf);
	cjne	r7,#0x00,00206$
	inc	r6
	sjmp	00206$
00154$:
;	disp.c:112: putchar((int)'"');
	mov	dptr,#0x0022
	lcall	_putchar
;	disp.c:118: printstr("\r\n");
	mov	r7,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r4,#0x80
;	disp.c:14: return;
00209$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jnz	00523$
	ljmp	00123$
00523$:
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar6
	pop	ar7
	inc	r7
;	disp.c:283: pnl();
	cjne	r7,#0x00,00209$
	inc	r6
	sjmp	00209$
00116$:
;	disp.c:284: } else if (c == (int)'I') {
	cjne	r6,#0x49,00113$
	cjne	r7,#0x00,00113$
;	disp.c:285: inv = ~inv;
	mov	r0,#_inv
	mov	a,@r0
	cpl	a
	mov	@r0,a
;	disp.c:103: putchar((int)'I');
	mov	dptr,#0x0049
	lcall	_putchar
;	disp.c:104: putchar(inv ? (int)'1' : (int)'0');
	mov	r0,#_inv
	mov	a,@r0
	jz	00238$
	mov	r4,#0x31
	mov	r5,#0x00
	sjmp	00239$
00238$:
	mov	r4,#0x30
	mov	r5,#0x00
00239$:
	mov	dpl,r4
	mov	dph,r5
	lcall	_putchar
;	disp.c:118: printstr("\r\n");
	mov	r7,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r4,#0x80
;	disp.c:14: return;
00212$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jnz	00528$
	ljmp	00123$
00528$:
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar6
	pop	ar7
	inc	r7
;	disp.c:287: pnl();
	cjne	r7,#0x00,00212$
	inc	r6
	sjmp	00212$
00113$:
;	disp.c:288: } else if (c == (int)'L') {
	cjne	r6,#0x4c,00530$
	cjne	r7,#0x00,00530$
	sjmp	00531$
00530$:
	ljmp	00110$
00531$:
;	disp.c:289: init_disp();
	lcall	_init_disp
;	disp.c:290: printstr("LOAD ");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r4,#0x80
;	disp.c:14: return;
00215$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00164$
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar6
	pop	ar7
	inc	r7
;	disp.c:290: printstr("LOAD ");
	cjne	r7,#0x00,00215$
	inc	r6
	sjmp	00215$
00164$:
;	disp.c:291: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00217$:
;	disp.c:292: c = getchar();
	push	ar4
	push	ar5
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	mov	ar7,r4
	mov	ar6,r5
;	disp.c:293: (void)putchar(c);
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	disp.c:294: if ((c == (int)'\r') || (c == (int)'\n')) {
	cjne	r7,#0x0d,00534$
	cjne	r6,#0x00,00534$
	pop	ar5
	pop	ar4
	sjmp	00102$
00534$:
	pop	ar5
	pop	ar4
	cjne	r7,#0x0a,00103$
	cjne	r6,#0x00,00103$
00102$:
;	disp.c:295: buf[j] = 0u;
	mov	a,r4
	add	a,#_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buf >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	disp.c:296: break;
	sjmp	00106$
00103$:
;	disp.c:297: } else buf[j] = c & 0xffu;
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
;	disp.c:291: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00537$
	inc	r0
	inc	@r0
00537$:
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
	jnc	00217$
00106$:
;	disp.c:299: buf[j] = 0u;
	mov	a,r4
	add	a,#_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buf >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	disp.c:118: printstr("\r\n");
	mov	r7,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r4,#0x80
;	disp.c:14: return;
00220$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00166$
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar6
	pop	ar7
	inc	r7
;	disp.c:118: printstr("\r\n");
	cjne	r7,#0x00,00220$
	inc	r6
	sjmp	00220$
00166$:
;	disp.c:110: printstr("MSG \"");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r4,#0x80
;	disp.c:14: return;
00223$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00169$
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar6
	pop	ar7
	inc	r7
;	disp.c:110: printstr("MSG \"");
	cjne	r7,#0x00,00223$
	inc	r6
	sjmp	00223$
00169$:
;	disp.c:111: printstr((char *)buf);
	mov	r7,#_buf
	mov	r6,#(_buf >> 8)
	mov	r4,#0x00
;	disp.c:14: return;
00226$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00171$
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar6
	pop	ar7
	inc	r7
;	disp.c:111: printstr((char *)buf);
	cjne	r7,#0x00,00226$
	inc	r6
	sjmp	00226$
00171$:
;	disp.c:112: putchar((int)'"');
	mov	dptr,#0x0022
	lcall	_putchar
;	disp.c:118: printstr("\r\n");
	mov	r7,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r4,#0x80
;	disp.c:14: return;
00229$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00123$
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar6
	pop	ar7
	inc	r7
;	disp.c:302: pnl();
	cjne	r7,#0x00,00229$
	inc	r6
	sjmp	00229$
00110$:
;	disp.c:303: } else if (c == (int)'S') break;
	cjne	r6,#0x53,00547$
	cjne	r7,#0x00,00547$
	ljmp	00128$
00547$:
00123$:
;	disp.c:305: c = toupper(getchar());
	lcall	_getchar
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
	ljmp	00125$
;	disp.c:309: term:	
00130$:
;	disp.c:310: EA = 0;
;	assignBit
	clr	_EA
;	disp.c:311: init_disp();
	lcall	_init_disp
;	disp.c:312: printstr("TERM\r\n");
	mov	r5,#___str_9
	mov	r6,#(___str_9 >> 8)
	mov	r7,#0x80
;	disp.c:14: return;
00232$:
;	disp.c:12: for (; *s; s++) putchar((int)*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00177$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
;	disp.c:312: printstr("TERM\r\n");
	cjne	r5,#0x00,00232$
	inc	r6
	sjmp	00232$
00177$:
;	disp.c:313: (void)getchar();
	lcall	_getchar
;	disp.c:315: PCON |= 2;
	orl	_PCON,#0x02
;	disp.c:317: return;
;	disp.c:318: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "MSG "
	.db 0x22
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
	.ascii "PAUSE"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "RESUME"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "RESET"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "INITIAL "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "P SP "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii " L S R T"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "LOAD "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "TERM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "CAEDITE EOS : NOVIT ENIM DOMINVS QVI SVNT EIVS : "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit___ft_font6x8:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x36	; 54	'6'
	.db #0x22	; 34
	.db #0x2a	; 42
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x2a	; 42
	.db #0x3e	; 62
	.db #0x22	; 34
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x2d	; 45
	.db #0x2d	; 45
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x2c	; 44
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x28	; 40
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x2c	; 44
	.db #0x34	; 52	'4'
	.db #0x2c	; 44
	.db #0x34	; 52	'4'
	.db #0x36	; 54	'6'
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x1c	; 28
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x1c	; 28
	.db #0x1e	; 30
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2c	; 44
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x0c	; 12
	.db #0x14	; 20
	.db #0x18	; 24
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x3e	; 62
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x3e	; 62
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x3e	; 62
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x3e	; 62
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x3e	; 62
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0x0e	; 14
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x2a	; 42
	.db #0x12	; 18
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
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
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x32	; 50	'2'
	.db #0x2a	; 42
	.db #0x26	; 38
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x3e	; 62
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x1e	; 30
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x3a	; 58
	.db #0x2a	; 42
	.db #0x3a	; 58
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x3e	; 62
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1e	; 30
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x02	; 2
	.db #0x3a	; 58
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x3e	; 62
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x12	; 18
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x0a	; 10
	.db #0x12	; 18
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x36	; 54	'6'
	.db #0x2a	; 42
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x26	; 38
	.db #0x2a	; 42
	.db #0x32	; 50	'2'
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x2a	; 42
	.db #0x12	; 18
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x1e	; 30
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x02	; 2
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1e	; 30
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x1c	; 28
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x0e	; 14
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x12	; 18
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x0a	; 10
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1a	; 26
	.db #0x24	; 36
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x1e	; 30
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1a	; 26
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x2a	; 42
	.db #0x3e	; 62
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1a	; 26
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x14	; 20
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x02	; 2
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x3e	; 62
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x14	; 20
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x22	; 34
	.db #0x3e	; 62
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x02	; 2
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x28	; 40
	.db #0x3e	; 62
	.db #0x0a	; 10
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x3e	; 62
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x3a	; 58
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1a	; 26
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1a	; 26
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x04	; 4
	.db #0x1e	; 30
	.db #0x04	; 4
	.db #0x24	; 36
	.db #0x3a	; 58
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x16	; 22
	.db #0x3a	; 58
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1a	; 26
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x16	; 22
	.db #0x1a	; 26
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x12	; 18
	.db #0x0a	; 10
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x12	; 18
	.db #0x0a	; 10
	.db #0x34	; 52	'4'
	.db #0x2a	; 42
	.db #0x38	; 56	'8'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x12	; 18
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x24	; 36
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x15	; 21
	.db #0x2a	; 42
	.db #0x15	; 21
	.db #0x2a	; 42
	.db #0x15	; 21
	.db #0x2a	; 42
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x3f	; 63
	.db #0x2a	; 42
	.db #0x3f	; 63
	.db #0x15	; 21
	.db #0x3f	; 63
	.db #0x2a	; 42
	.db #0x3f	; 63
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3f	; 63
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x3a	; 58
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x3a	; 58
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x02	; 2
	.db #0x3a	; 58
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x3b	; 59
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3b	; 59
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x3a	; 58
	.db #0x02	; 2
	.db #0x3a	; 58
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x3b	; 59
	.db #0x00	; 0
	.db #0x3b	; 59
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x08	; 8
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x3b	; 59
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x08	; 8
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x12	; 18
	.db #0x0e	; 14
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0e	; 14
	.db #0x02	; 2
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0e	; 14
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x0a	; 10
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x02	; 2
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x12	; 18
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__initial:
	.byte ___str_10, (___str_10 >> 8),#0x80
	.area CABS    (ABS,CODE)
