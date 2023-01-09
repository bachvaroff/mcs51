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
_intr::
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
;	crc16.c:11: int putchar(int c) __naked {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	naked function: no prologue.
;	crc16.c:16: __endasm;
	mov	a, dpl
	ljmp	0x0030
;	crc16.c:17: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	crc16.c:19: int getchar(void) {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	crc16.c:24: __endasm;
	lcall	0x0032
	clr	dph
	mov	dpl, a
;	crc16.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'int0'
;------------------------------------------------------------
;	crc16.c:29: void int0(void) __interrupt 0 __using 1 {
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
;	crc16.c:30: intr = 1;
	mov	dptr,#_intr
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	crc16.c:31: }
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ccrcb_init'
;------------------------------------------------------------
;r                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	crc16.c:33: static void ccrcb_init(unsigned int *r) {
;	-----------------------------------------
;	 function ccrcb_init
;	-----------------------------------------
_ccrcb_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	crc16.c:34: *r = ACC_INITIAL;
	mov	a,#0xff
	lcall	__gptrput
	inc	dptr
;	crc16.c:35: return;
;	crc16.c:36: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'ccrcb'
;------------------------------------------------------------
;oct                       Allocated to stack - _bp -3
;r                         Allocated to registers r5 r6 r7 
;rt                        Allocated to registers r3 r4 
;bitp                      Allocated to stack - _bp +3
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	crc16.c:38: static void ccrcb(unsigned int *r, unsigned char oct) {
;	-----------------------------------------
;	 function ccrcb
;	-----------------------------------------
_ccrcb:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
;	crc16.c:42: for (rt = *r, bitp = 0x80u; bitp; bitp >>= 1)
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x80
00103$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	jz	00101$
;	crc16.c:43: rt = ((rt >> 15) ^ (!!(oct & bitp))) ? ((rt << 1) ^ POLY) : (rt << 1);
	push	ar5
	push	ar6
	push	ar7
	mov	a,r4
	rl	a
	anl	a,#0x01
	mov	r6,a
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r1
	anl	a,@r0
	cjne	a,#0x01,00122$
00122$:
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	r2,a
	mov	r5,#0x00
	xrl	ar6,a
	mov	a,r5
	xrl	ar7,a
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00107$
	push	ar5
	push	ar6
	push	ar7
	mov	a,r3
	add	a,r3
	mov	r2,a
	mov	a,r4
	rlc	a
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x21
	xrl	a,r2
	mov	@r0,a
	mov	a,#0x10
	xrl	a,r7
	inc	r0
	mov	@r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00108$
00107$:
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,r3
	mov	@r0,a
	mov	a,r4
	rlc	a
	inc	r0
	mov	@r0,a
00108$:
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	crc16.c:42: for (rt = *r, bitp = 0x80u; bitp; bitp >>= 1)
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
	sjmp	00103$
00101$:
;	crc16.c:44: *r = rt;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	crc16.c:45: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ccrcb_finish'
;------------------------------------------------------------
;r                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	crc16.c:47: static void ccrcb_finish(unsigned int *r) {
;	-----------------------------------------
;	 function ccrcb_finish
;	-----------------------------------------
_ccrcb_finish:
;	crc16.c:48: *r ^= ACC_FINAL;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
;	crc16.c:49: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'calc_crc'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -4
;base                      Allocated to stack - _bp +1
;off                       Allocated to stack - _bp +4
;crc                       Allocated to stack - _bp +6
;------------------------------------------------------------
;	crc16.c:51: static unsigned int calc_crc(unsigned char *base, unsigned int len) {
;	-----------------------------------------
;	 function calc_crc
;	-----------------------------------------
_calc_crc:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	crc16.c:54: ccrcb_init(&crc);
	mov	a,_bp
	add	a,#0x06
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	r7,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar4
	lcall	_ccrcb_init
	pop	ar4
;	crc16.c:55: for (off = 0u; off < len; off++)
	mov	ar7,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00103$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0xfc
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jnc	00101$
;	crc16.c:56: ccrcb(&crc, base[off]);
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
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
	mov	ar3,r7
	mov	r4,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar4
	push	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	_ccrcb
	dec	sp
	pop	ar4
	pop	ar7
;	crc16.c:55: for (off = 0u; off < len; off++)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00117$
	inc	r0
	inc	@r0
00117$:
	pop	ar4
	sjmp	00103$
00101$:
;	crc16.c:57: ccrcb_finish(&crc);
	mov	r7,#0x00
	mov	r6,#0x40
	mov	dpl,r4
	mov	dph,r7
	mov	b,r6
	lcall	_ccrcb_finish
;	crc16.c:59: return crc;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
;	crc16.c:60: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;base                      Allocated to registers r5 r6 r7 
;len                       Allocated to registers 
;crc                       Allocated to registers 
;------------------------------------------------------------
;	crc16.c:64: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	crc16.c:69: intr = 0;
	mov	dptr,#_intr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	crc16.c:71: IT0 = 1;
;	assignBit
	setb	_IT0
;	crc16.c:72: EX0 = 1;
;	assignBit
	setb	_EX0
;	crc16.c:73: EA = 1;
;	assignBit
	setb	_EA
;	crc16.c:75: for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
;	crc16.c:76: printf("base=0x%04x ", (unsigned int)base);
	mov	ar3,r5
	mov	ar4,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
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
;	crc16.c:77: printf("len=0x%04x ", len);
	clr	a
	push	acc
	mov	a,#0x20
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
	pop	ar5
	pop	ar6
	pop	ar7
;	crc16.c:78: crc = calc_crc(base, len);
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	mov	a,#0x20
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_calc_crc
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
;	crc16.c:79: printf("CRC16=0x%04x\n\r", crc);
	push	ar3
	push	ar4
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
	pop	ar5
	pop	ar6
	pop	ar7
;	crc16.c:81: if (intr) {
	mov	dptr,#_intr
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00105$
;	crc16.c:82: EA = 0;
;	assignBit
	clr	_EA
;	crc16.c:83: printf("interrupted\n");
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
;	crc16.c:84: break;
	sjmp	00103$
00105$:
;	crc16.c:75: for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
	mov	a,#0x10
	add	a,r6
	mov	r6,a
	ljmp	00104$
00103$:
;	crc16.c:91: __endasm;
	ljmp	0
;	crc16.c:96: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "base=0x%04x "
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
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "interrupted"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
