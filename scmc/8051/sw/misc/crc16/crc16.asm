;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module crc16
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
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
	.globl _bitp
	.globl _crc
	.globl _off
	.globl _len
	.globl _t
	.globl _base
	.globl _intr
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
_intr::
	.ds 1
_base::
	.ds 2
_t::
	.ds 2
_len::
	.ds 2
_off::
	.ds 2
_crc::
	.ds 2
_bitp::
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
;	crc16.c:8: int putchar(int c) __naked {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	naked function: no prologue.
;	crc16.c:13: __endasm;
	mov	a, dpl
	ljmp	0x0030
;	crc16.c:14: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	crc16.c:16: int getchar(void) __naked {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	naked function: no prologue.
;	crc16.c:22: __endasm;
	lcall	0x0032
	mov	dpl, a
	mov	dph, #0
	ret
;	crc16.c:23: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'int0'
;------------------------------------------------------------
;	crc16.c:46: void int0(void) __interrupt IE0_VECTOR __using 1 {
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
;	crc16.c:47: intr = 1u;
	mov	r0,#_intr
	mov	@r0,#0x01
;	crc16.c:48: }
	pop	psw
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	crc16.c:57: void main(void) {
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
;	crc16.c:58: intr = 0u;
	mov	r0,#_intr
	mov	@r0,#0x00
;	crc16.c:60: IT0 = 1;
;	assignBit
	setb	_IT0
;	crc16.c:61: EX0 = 1;	
;	assignBit
	setb	_EX0
;	crc16.c:62: EA = 1;
;	assignBit
	setb	_EA
;	crc16.c:64: while (!intr) {
00131$:
	mov	r0,#_intr
	mov	a,@r0
	jz	00210$
	ljmp	00133$
00210$:
;	crc16.c:65: base = (pxd_uint8_t)0x0u;
	mov	r0,#_base
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	crc16.c:66: len = TLEN;
	mov	r0,#_len
	mov	@r0,#0xff
	inc	r0
	mov	@r0,#0xff
;	crc16.c:67: printf("COMPLETE base=%p ", base);
	mov	r0,#_base
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r7,#0x00
	push	ar5
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
	add	a,#0xfa
	mov	sp,a
;	crc16.c:68: printf("len=0x%04x ", len);
	mov	r0,#_len
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	crc16.c:69: CCRCB_INIT(crc);
	mov	r0,#_crc
	mov	@r0,#0xff
	inc	r0
	mov	@r0,#0xff
;	crc16.c:70: for (off = 0u; off < len; off++)
	mov	r0,#_off
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00137$:
	mov	r0,#_off
	mov	r1,#_len
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jnc	00109$
;	crc16.c:71: CCRCB(crc, base[off], bitp);
	mov	r0,#_bitp
	mov	@r0,#0x80
00134$:
	mov	r0,#(_crc + 1)
	mov	a,@r0
	rl	a
	anl	a,#0x01
	mov	r6,a
	mov	r7,#0x00
	mov	r0,#_base
	mov	r1,#_off
	mov	a,@r1
	add	a,@r0
	mov	dpl,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r0,#_bitp
	mov	a,@r0
	anl	ar5,a
	mov	a,r5
	cjne	a,#0x01,00212$
00212$:
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
	xrl	ar6,a
	mov	a,r5
	xrl	ar7,a
	mov	a,r6
	orl	a,r7
	jz	00146$
	mov	r0,#_crc
	mov	a,@r0
	add	a,acc
	mov	r6,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	r7,a
	xrl	ar6,#0x21
	xrl	ar7,#0x10
	sjmp	00147$
00146$:
	mov	r0,#_crc
	mov	a,@r0
	add	a,acc
	mov	r6,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	r7,a
00147$:
	mov	r0,#_crc
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	r0,#_bitp
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
	mov	r0,#_bitp
	mov	a,@r0
	jnz	00134$
;	crc16.c:70: for (off = 0u; off < len; off++)
	mov	r0,#_off
	inc	@r0
	cjne	@r0,#0x00,00215$
	inc	r0
	inc	@r0
00215$:
;	crc16.c:72: CCRCB_FINISH(crc);
	sjmp	00137$
00109$:
	mov	r0,#_crc
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_crc
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	crc16.c:73: printf("CRC16=0x%04x\r\n", crc);
	mov	r0,#_crc
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	crc16.c:75: len = PLEN;
	mov	r0,#_len
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x20
;	crc16.c:76: while (1) {
00129$:
;	crc16.c:77: printf("PARTIAL base=%p ", base);
	mov	r0,#_base
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r7,#0x00
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	crc16.c:78: printf("len=0x%04x ", len);
	mov	r0,#_len
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	crc16.c:79: CCRCB_INIT(crc);
	mov	r0,#_crc
	mov	@r0,#0xff
	inc	r0
	mov	@r0,#0xff
;	crc16.c:80: for (off = 0u; off < len; off++)
	mov	r0,#_off
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00142$:
	mov	r0,#_off
	mov	r1,#_len
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jnc	00120$
;	crc16.c:81: CCRCB(crc, base[off], bitp);
	mov	r0,#_bitp
	mov	@r0,#0x80
00139$:
	mov	r0,#(_crc + 1)
	mov	a,@r0
	rl	a
	anl	a,#0x01
	mov	r6,a
	mov	r7,#0x00
	mov	r0,#_base
	mov	r1,#_off
	mov	a,@r1
	add	a,@r0
	mov	dpl,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r0,#_bitp
	mov	a,@r0
	anl	ar5,a
	mov	a,r5
	cjne	a,#0x01,00217$
00217$:
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
	xrl	ar6,a
	mov	a,r5
	xrl	ar7,a
	mov	a,r6
	orl	a,r7
	jz	00148$
	mov	r0,#_crc
	mov	a,@r0
	add	a,acc
	mov	r6,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	r7,a
	xrl	ar6,#0x21
	xrl	ar7,#0x10
	sjmp	00149$
00148$:
	mov	r0,#_crc
	mov	a,@r0
	add	a,acc
	mov	r6,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	r7,a
00149$:
	mov	r0,#_crc
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	r0,#_bitp
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
	mov	r0,#_bitp
	mov	a,@r0
	jnz	00139$
;	crc16.c:80: for (off = 0u; off < len; off++)
	mov	r0,#_off
	inc	@r0
	cjne	@r0,#0x00,00220$
	inc	r0
	inc	@r0
00220$:
;	crc16.c:82: CCRCB_FINISH(crc);
	sjmp	00142$
00120$:
	mov	r0,#_crc
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_crc
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	crc16.c:83: printf("CRC16=0x%04x\r\n", crc);
	mov	r0,#_crc
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	crc16.c:85: if (intr) {
	mov	r0,#_intr
	mov	a,@r0
	jz	00124$
;	crc16.c:86: EA = 0;
;	assignBit
	clr	_EA
;	crc16.c:87: printf("interrupted\n");
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
;	crc16.c:88: break;
	ljmp	00131$
00124$:
;	crc16.c:91: t = base + (len >> 1);
	mov	r0,#_len
	mov	ar6,@r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	mov	r0,#_base
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	r0,#_t
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	crc16.c:92: if (t < base) break;
	mov	r0,#_t
	mov	r1,#_base
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jnc	00222$
	ljmp	00131$
00222$:
;	crc16.c:93: else base = t;
	mov	r0,#_t
	mov	r1,#_base
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	ljmp	00129$
00133$:
;	crc16.c:97: PCON |= 2;
	orl	_PCON,#0x02
;	crc16.c:99: return;
;	crc16.c:100: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "COMPLETE base=%p "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "len=0x%04x "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "CRC16=0x%04x"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "PARTIAL base=%p "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "interrupted"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
