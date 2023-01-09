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
_ccrcb_init_r_65536_18:
	.ds 3
_ccrcb_PARM_2:
	.ds 1
_ccrcb_r_65536_20:
	.ds 3
_ccrcb_rt_65536_21:
	.ds 2
_ccrcb_bitp_65536_21:
	.ds 1
_ccrcb_finish_r_65536_23:
	.ds 3
_calc_crc_PARM_2:
	.ds 2
_calc_crc_base_65536_25:
	.ds 3
_calc_crc_crc_65536_26:
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
;c                         Allocated with name '_putchar_c_65536_14'
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
;Allocation info for local variables in function 'ccrcb_init'
;------------------------------------------------------------
;r                         Allocated with name '_ccrcb_init_r_65536_18'
;------------------------------------------------------------
;	crc16.c:27: static void ccrcb_init(unsigned int *r) {
;	-----------------------------------------
;	 function ccrcb_init
;	-----------------------------------------
_ccrcb_init:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ccrcb_init_r_65536_18
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	crc16.c:28: *r = ACC_INITIAL;
	mov	dptr,#_ccrcb_init_r_65536_18
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
	inc	dptr
;	crc16.c:29: return;
;	crc16.c:30: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'ccrcb'
;------------------------------------------------------------
;oct                       Allocated with name '_ccrcb_PARM_2'
;r                         Allocated with name '_ccrcb_r_65536_20'
;rt                        Allocated with name '_ccrcb_rt_65536_21'
;bitp                      Allocated with name '_ccrcb_bitp_65536_21'
;------------------------------------------------------------
;	crc16.c:32: static void ccrcb(unsigned int *r, unsigned char oct) {
;	-----------------------------------------
;	 function ccrcb
;	-----------------------------------------
_ccrcb:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ccrcb_r_65536_20
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	crc16.c:36: for (rt = *r, bitp = 0x80u; bitp; bitp >>= 1)
	mov	dptr,#_ccrcb_r_65536_20
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_ccrcb_rt_65536_21
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_ccrcb_bitp_65536_21
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#_ccrcb_PARM_2
	movx	a,@dptr
	mov	r7,a
00103$:
	mov	dptr,#_ccrcb_bitp_65536_21
	movx	a,@dptr
	mov	r6,a
	movx	a,@dptr
	jz	00101$
;	crc16.c:37: rt = ((rt >> 15) ^ (!!(oct & bitp))) ? ((rt << 1) ^ POLY) : (rt << 1);
	mov	dptr,#_ccrcb_rt_65536_21
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	rl	a
	anl	a,#0x01
	mov	r2,a
	mov	r3,#0x00
	mov	a,r7
	anl	ar6,a
	mov	a,r6
	cjne	a,#0x01,00122$
00122$:
	cpl	c
	clr	a
	rlc	a
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r1
	xrl	ar2,a
	mov	a,r6
	xrl	ar3,a
	mov	a,r2
	orl	a,r3
	jz	00107$
	mov	a,r4
	add	a,r4
	mov	r3,a
	mov	a,r5
	rlc	a
	mov	r6,a
	xrl	ar3,#0x21
	xrl	ar6,#0x10
	sjmp	00108$
00107$:
	mov	a,r4
	add	a,r4
	mov	r3,a
	mov	a,r5
	rlc	a
	mov	r6,a
00108$:
	mov	dptr,#_ccrcb_rt_65536_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	crc16.c:36: for (rt = *r, bitp = 0x80u; bitp; bitp >>= 1)
	mov	dptr,#_ccrcb_bitp_65536_21
	movx	a,@dptr
	clr	c
	rrc	a
	mov	r6,a
	movx	@dptr,a
	sjmp	00103$
00101$:
;	crc16.c:38: *r = rt;
	mov	dptr,#_ccrcb_r_65536_20
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ccrcb_rt_65536_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
;	crc16.c:39: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'ccrcb_finish'
;------------------------------------------------------------
;r                         Allocated with name '_ccrcb_finish_r_65536_23'
;------------------------------------------------------------
;	crc16.c:41: static void ccrcb_finish(unsigned int *r) {
;	-----------------------------------------
;	 function ccrcb_finish
;	-----------------------------------------
_ccrcb_finish:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ccrcb_finish_r_65536_23
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	crc16.c:42: *r ^= ACC_FINAL;
	mov	dptr,#_ccrcb_finish_r_65536_23
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
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
;	crc16.c:43: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'calc_crc'
;------------------------------------------------------------
;len                       Allocated with name '_calc_crc_PARM_2'
;base                      Allocated with name '_calc_crc_base_65536_25'
;off                       Allocated with name '_calc_crc_off_65536_26'
;crc                       Allocated with name '_calc_crc_crc_65536_26'
;------------------------------------------------------------
;	crc16.c:45: static unsigned int calc_crc(unsigned char *base, unsigned int len) {
;	-----------------------------------------
;	 function calc_crc
;	-----------------------------------------
_calc_crc:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_calc_crc_base_65536_25
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	crc16.c:48: ccrcb_init(&crc);
	mov	dptr,#_calc_crc_crc_65536_26
	mov	b,#0x00
	lcall	_ccrcb_init
;	crc16.c:49: for (off = 0u; off < len; off++)
	mov	dptr,#_calc_crc_base_65536_25
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_calc_crc_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r1,#0x00
	mov	r2,#0x00
00103$:
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	subb	a,r4
	jnc	00101$
;	crc16.c:50: ccrcb(&crc, base[off]);
	push	ar3
	push	ar4
	mov	a,r1
	add	a,r5
	mov	r0,a
	mov	a,r2
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#_ccrcb_PARM_2
	movx	@dptr,a
	mov	dptr,#_calc_crc_crc_65536_26
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_ccrcb
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	crc16.c:49: for (off = 0u; off < len; off++)
	inc	r1
	cjne	r1,#0x00,00117$
	inc	r2
00117$:
	pop	ar4
	pop	ar3
	sjmp	00103$
00101$:
;	crc16.c:51: ccrcb_finish(&crc);
	mov	dptr,#_calc_crc_crc_65536_26
	mov	b,#0x00
	lcall	_ccrcb_finish
;	crc16.c:53: return crc;
	mov	dptr,#_calc_crc_crc_65536_26
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	crc16.c:54: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;base                      Allocated with name '_main_base_65536_29'
;len                       Allocated with name '_main_len_65536_29'
;crc                       Allocated with name '_main_crc_65536_29'
;------------------------------------------------------------
;	crc16.c:58: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	crc16.c:63: for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	crc16.c:64: printf("base=0x%04x ", (unsigned int)base);
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar3
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
;	crc16.c:65: printf("len=0x%04x ", len);
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
;	crc16.c:66: crc = calc_crc(base, len);
	mov	dptr,#_calc_crc_PARM_2
	clr	a
	movx	@dptr,a
	mov	a,#0x20
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_calc_crc
	mov	r3,dpl
	mov	r4,dph
;	crc16.c:67: printf("CRC16=0x%04x\n\r", crc);
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
;	crc16.c:63: for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
	mov	a,#0x10
	add	a,r6
	mov	r6,a
;	crc16.c:72: __endasm;
;	crc16.c:73: }
	ljmp	00102$
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
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
