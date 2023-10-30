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
	.globl _timer0_intr
	.globl _init_disp
	.globl _init_timer0
	.globl _init_intr
	.globl _clear_gpo
	.globl _init_gpo
	.globl _getchar
	.globl _putchar
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
_msg:
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
;	disp.c:39: __idata const uint8_t dcol[8] = {
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
;	disp.c:9: int putchar(int c) __naked {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	naked function: no prologue.
;	disp.c:14: __endasm;
	mov	a, dpl
	ljmp	0x0030
;	disp.c:15: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	disp.c:17: int getchar(void) __naked {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	naked function: no prologue.
;	disp.c:23: __endasm;
	lcall	0x0032
	mov	dpl, a
	mov	dph, #0
	ret
;	disp.c:24: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'init_gpo'
;------------------------------------------------------------
;	disp.c:64: void init_gpo(void) {
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
;	disp.c:65: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	disp.c:67: P2 = GPO_BASE_H;
	mov	_P2,#0xf0
;	disp.c:69: CLEAR_GPO;
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
;	disp.c:71: return;
;	disp.c:72: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_gpo'
;------------------------------------------------------------
;	disp.c:74: void clear_gpo(void) {
;	-----------------------------------------
;	 function clear_gpo
;	-----------------------------------------
_clear_gpo:
;	disp.c:75: CLEAR_GPO;
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
;	disp.c:77: return;
;	disp.c:78: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_intr'
;------------------------------------------------------------
;	disp.c:80: void init_intr(void) {
;	-----------------------------------------
;	 function init_intr
;	-----------------------------------------
_init_intr:
;	disp.c:81: DIS_TR0;
;	assignBit
	clr	_TR0
;	disp.c:82: ET0 = 1;
;	assignBit
	setb	_ET0
;	disp.c:83: EA  = 1;
;	assignBit
	setb	_EA
;	disp.c:85: return;
;	disp.c:86: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_timer0'
;------------------------------------------------------------
;	disp.c:88: void init_timer0(void) {
;	-----------------------------------------
;	 function init_timer0
;	-----------------------------------------
_init_timer0:
;	disp.c:89: DIS_TR0;
;	assignBit
	clr	_TR0
;	disp.c:90: TMOD = 0x01;
	mov	_TMOD,#0x01
;	disp.c:91: TH0 = 0xf8;
	mov	_TH0,#0xf8
;	disp.c:92: TL0 = 0x00;
	mov	_TL0,#0x00
;	disp.c:94: return;
;	disp.c:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_disp'
;------------------------------------------------------------
;	disp.c:97: void init_disp(void) {
;	-----------------------------------------
;	 function init_disp
;	-----------------------------------------
_init_disp:
;	disp.c:98: gpo[DISP_COL] = 0u;
	mov	r0,#(_gpo + 0x0005)
	clr	a
	movx	@r0,a
;	disp.c:99: gpo[DISP_DATA] = 0u;
	mov	r0,#(_gpo + 0x0004)
	movx	@r0,a
;	disp.c:100: OE = 0x0fu; /* 00_001111 */
	mov	r0,#_OE
	mov	@r0,#0x0f
;	disp.c:101: gpo[GPO_OE] = OE; /* 00_001111 */
	mov	r0,#(_gpo + 0x0006)
	mov	a,#0x0f
	movx	@r0,a
;	disp.c:103: for (column = 0u; column < 8u; column++)
	mov	r0,#_column
	mov	@r0,#0x00
00103$:
	mov	r0,#_column
	cjne	@r0,#0x08,00115$
00115$:
	jnc	00101$
;	disp.c:104: ddata[column] = 0u;
	mov	r0,#_column
	mov	a,@r0
	add	a,#_ddata
	mov	r0,a
	mov	@r0,#0x00
;	disp.c:103: for (column = 0u; column < 8u; column++)
	mov	r0,#_column
	mov	a,@r0
	mov	r0,#_column
	inc	a
	mov	@r0,a
	sjmp	00103$
00101$:
;	disp.c:105: column = 0u;
	mov	r0,#_column
	mov	@r0,#0x00
;	disp.c:107: return;
;	disp.c:108: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_intr'
;------------------------------------------------------------
;t                         Allocated to registers r7 
;------------------------------------------------------------
;	disp.c:110: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
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
;	disp.c:113: t = column & 7u;
	mov	r0,#_column
	mov	ar7,@r0
	anl	ar7,#0x07
;	disp.c:114: gpo[DISP_COL] = 0u;
	mov	r0,#(_gpo + 0x0005)
	clr	a
	movx	@r0,a
;	disp.c:115: gpo[DISP_DATA] = ddata[t];
	mov	a,r7
	add	a,#_ddata
	mov	r1,a
	mov	ar6,@r1
	mov	r0,#(_gpo + 0x0004)
	mov	a,r6
	movx	@r0,a
;	disp.c:116: gpo[DISP_COL] = dcol[t];
	mov	a,r7
	add	a,#_dcol
	mov	r1,a
	mov	ar7,@r1
	mov	r0,#(_gpo + 0x0005)
	mov	a,r7
	movx	@r0,a
;	disp.c:117: column++;
	mov	r0,#_column
	mov	a,@r0
	mov	r0,#_column
	inc	a
	mov	@r0,a
;	disp.c:119: DIS_TR0;
;	assignBit
	clr	_TR0
;	disp.c:120: TH0 = 0xf8;
	mov	_TH0,#0xf8
;	disp.c:121: TL0 = 0x00;
	mov	_TL0,#0x00
;	disp.c:122: EN_TR0;
;	assignBit
	setb	_TR0
;	disp.c:124: return;
;	disp.c:125: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;symbol                    Allocated to stack - _bp +2
;counter                   Allocated to registers r7 
;i                         Allocated to stack - _bp +3
;j                         Allocated to registers r3 
;i                         Allocated to registers r6 
;j                         Allocated to registers r5 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	disp.c:154: void main(void) {
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
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
;	disp.c:158: init_gpo();
	lcall	_init_gpo
;	disp.c:159: clear_gpo();
	lcall	_clear_gpo
;	disp.c:160: init_disp();	
	lcall	_init_disp
;	disp.c:161: init_timer0();
	lcall	_init_timer0
;	disp.c:162: init_intr();
	lcall	_init_intr
;	disp.c:163: EN_TR0;
;	assignBit
	setb	_TR0
;	disp.c:165: for (counter = 0u, i = 0u; ; counter = (counter + 1u) & 0x07u) {
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x00
00120$:
;	disp.c:166: if (!counter) {
	mov	a,r7
	jnz	00107$
;	disp.c:167: symbol = msg[i];
	push	ar7
	mov	dptr,#_msg
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
;	disp.c:168: if (!symbol) {
	pop	ar7
	mov	a,r2
	jnz	00105$
;	disp.c:169: i = 0u;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x00
;	disp.c:170: symbol = msg[i];
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
00105$:
;	disp.c:172: i++;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	@r0
;	disp.c:173: OE = 0x8fu;
	mov	r0,#_OE
	mov	@r0,#0x8f
	sjmp	00108$
00107$:
;	disp.c:174: } else OE = 0x0fu;
	mov	r0,#_OE
	mov	@r0,#0x0f
00108$:
;	disp.c:175: gpo[GPO_OE] = OE;
	mov	r0,#(_gpo + 0x0006)
	mov	r1,#_OE
	mov	a,@r1
	movx	@r0,a
;	disp.c:131: do {
	mov	r6,#0x00
;	disp.c:133: do {
00126$:
	mov	r5,#0x00
00111$:
;	disp.c:145: __endasm;
	nop
	nop
	nop
	nop
;	disp.c:146: } while ((++j) ^ 0x80u);
	inc	r5
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,#0x80
	xrl	a,r3
	jnz	00111$
	mov	a,r4
	jnz	00111$
;	disp.c:147: } while ((++i) ^ 0x80u);
	inc	r6
	mov	ar4,r6
	mov	r5,#0x00
	mov	a,#0x80
	xrl	a,r4
	jnz	00126$
	mov	a,r5
	jnz	00126$
;	disp.c:179: for (j = 0u; j < 8u; j++)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	mov	b,#0x08
	mul	ab
	add	a,#_font8x8
	mov	r5,a
	mov	a,#(_font8x8 >> 8)
	addc	a,b
	mov	r6,a
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	r4,a
	mov	r3,#0x00
00118$:
;	disp.c:180: ddata[j] = (ddata[j] >> 1u) | ((font8x8[symbol][j] << (7u - counter)) & 0x80u);
	push	ar7
	mov	a,r3
	add	a,#_ddata
	mov	r1,a
	mov	a,r3
	add	a,#_ddata
	mov	r0,a
	mov	a,@r0
	clr	c
	rrc	a
	mov	r2,a
	mov	a,r3
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	b,r4
	inc	b
	mov	a,r7
	sjmp	00171$
00169$:
	add	a,acc
00171$:
	djnz	b,00169$
	anl	a,#0x80
	orl	a,r2
	mov	@r1,a
;	disp.c:179: for (j = 0u; j < 8u; j++)
	inc	r3
	cjne	r3,#0x08,00172$
00172$:
	pop	ar7
	jc	00118$
;	disp.c:165: for (counter = 0u, i = 0u; ; counter = (counter + 1u) & 0x07u) {
	mov	a,r7
	inc	a
	mov	r6,a
	mov	a,#0x07
	anl	a,r6
	mov	r7,a
	ljmp	00120$
;	disp.c:185: __endasm;
;	disp.c:186: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Go fuck yourselves you sons of bitches! "
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
__xinit__msg:
	.byte ___str_0, (___str_0 >> 8),#0x80
	.area CABS    (ABS,CODE)
