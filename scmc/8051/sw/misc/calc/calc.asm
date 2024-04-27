;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module calc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _state_exec
	.globl _state_init
	.globl _stack_iter_peek
	.globl _stack_peek2
	.globl _stack_peek
	.globl _stack_pop
	.globl _stack_push
	.globl _stack_init
	.globl _print32x
	.globl _print32bin
	.globl _printstr
	.globl _getchar
	.globl _putchar
	.globl _isxdigit
	.globl _printf
	.globl _strtol
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
	.globl _giant
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
_giant::
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
_s:
	.ds 12
_c:
	.ds 16407
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_deltas:
	.ds 170
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
;Allocation info for local variables in function 'accumulate'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +8
;d                         Allocated to stack - _bp +11
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	calc.c:26: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function accumulate
;	-----------------------------------------
_accumulate:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0e
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:27: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:32: if (!ctx->acc_valid) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00102$
;	calc.c:33: ctx->acc_valid = 1;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	calc.c:34: ctx->acc = 0l;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00102$:
;	calc.c:37: d = strtol(ctx->digit, NULL, ctx->base);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar3
	push	ar4
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_strtol
	xch	a,r0
	mov	a,_bp
	add	a,#0x0b
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	calc.c:38: ctx->acc = ctx->acc * (long)ctx->base + d;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
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
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	calc.c:40: return 1;
	mov	dptr,#0x0001
;	calc.c:41: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_pop'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +11
;d                         Allocated to stack - _bp +14
;r                         Allocated to registers r5 r6 
;__1966080001              Allocated to stack - _bp +18
;d                         Allocated to registers r2 r3 r4 r5 
;__3276800003              Allocated to stack - _bp +18
;d                         Allocated to registers r2 r3 r4 r7 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +7
;sloc3                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	calc.c:43: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function dump_pop
;	-----------------------------------------
_dump_pop:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x15
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:44: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:48: if (delta->event == EVENT_TERM) printstr("\r\n");
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	cjne	r6,#0x08,00102$
	cjne	r7,#0x00,00102$
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar4
	push	ar3
	push	ar2
	lcall	_printstr
	pop	ar2
	pop	ar3
	pop	ar4
00102$:
;	calc.c:49: r = stack_pop(ctx->ps, &d);
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x0e
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x11
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	_stack_pop
	mov	r6,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
;	calc.c:50: if (!r) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	orl	a,r5
	jnz	00125$
;	calc.c:51: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	cjne	r5,#0x08,00164$
	cjne	r6,#0x00,00164$
	ljmp	00110$
00164$:
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	_printstr
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	ljmp	00110$
;	calc.c:52: } else while (r > 0) {
00125$:
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar7
00105$:
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00165$
	ljmp	00110$
00165$:
;	calc.c:53: printstr("PSPA\t");
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#___str_4
	mov	b,#0x80
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	_printstr
	pop	ar2
	pop	ar3
	pop	ar4
;	calc.c:54: printall(d);
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	calc.c:18: print32x(d);
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_print32x
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	calc.c:19: printf("% 11ld\t", d);
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	calc.c:20: printf("%011lo\t", d);
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	calc.c:21: print32bin(d);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar4
	push	ar3
	push	ar2
	lcall	_print32bin
;	calc.c:55: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
	pop	ar2
;	calc.c:56: r = stack_pop(ctx->ps, &d);
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar2
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	_stack_pop
	mov	r6,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00105$
00110$:
;	calc.c:59: if (delta->event == EVENT_TERM) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x08,00166$
	cjne	r3,#0x00,00166$
	sjmp	00167$
00166$:
	ljmp	00113$
00167$:
;	calc.c:60: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	lcall	_printstr
	pop	ar7
;	calc.c:61: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
	mov	ar6,r7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,#0x14
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	_stack_pop
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar7
00117$:
	clr	c
	clr	a
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00168$
	ljmp	00113$
00168$:
;	calc.c:62: printstr("SSPA\t");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_printstr
;	calc.c:63: printall(d);
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar7,@r0
;	calc.c:18: print32x(d);
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	_print32x
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
;	calc.c:19: printf("% 11ld\t", d);
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
;	calc.c:20: printf("%011lo\t", d);
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
;	calc.c:21: print32bin(d);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	_print32bin
;	calc.c:64: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
;	calc.c:61: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar6,@r0
	mov	r5,#0x00
	mov	r3,#0x40
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar6
	push	ar5
	push	ar3
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	_stack_pop
	mov	r4,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	ar5,r4
	mov	ar6,r7
	ljmp	00117$
00113$:
;	calc.c:68: return 1;
	mov	dptr,#0x0001
;	calc.c:69: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_peek'
;------------------------------------------------------------
;d                         Allocated to stack - _bp -6
;_ctx                      Allocated to registers 
;__1310720005              Allocated to registers r4 r5 r6 r7 
;d                         Allocated to registers 
;------------------------------------------------------------
;	calc.c:71: static int dump_peek(void *_ctx, long d) __reentrant {
;	-----------------------------------------
;	 function dump_peek
;	-----------------------------------------
_dump_peek:
	push	_bp
	mov	_bp,sp
;	calc.c:74: printstr("PSVA\t");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_printstr
;	calc.c:75: printall(d);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	calc.c:18: print32x(d);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_print32x
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:19: printf("% 11ld\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
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
	add	a,#0xf9
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:20: printf("%011lo\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:21: print32bin(d);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_print32bin
;	calc.c:76: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
;	calc.c:78: return 1;
	mov	dptr,#0x0001
;	calc.c:79: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'operator'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r2 r3 r4 
;ctx                       Allocated to stack - _bp +23
;t0                        Allocated to registers r7 r6 r5 
;d0                        Allocated to stack - _bp +26
;d1                        Allocated to stack - _bp +30
;__2621440007              Allocated to registers r7 r6 r5 r4 
;d                         Allocated to stack - _bp +34
;__2621440009              Allocated to registers r7 r6 r5 r4 
;d                         Allocated to stack - _bp +34
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;sloc2                     Allocated to stack - _bp +5
;sloc3                     Allocated to stack - _bp +8
;sloc4                     Allocated to stack - _bp +11
;sloc5                     Allocated to stack - _bp +15
;sloc6                     Allocated to stack - _bp +19
;------------------------------------------------------------
;	calc.c:81: static int operator(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function operator
;	-----------------------------------------
_operator:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x25
	mov	sp,a
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	calc.c:82: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	calc.c:86: switch (ctx->digit[0]) {
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x23,00526$
	ljmp	00189$
00526$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x25,00527$
	ljmp	00189$
00527$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x26,00528$
	ljmp	00202$
00528$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x2a,00529$
	ljmp	00167$
00529$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x2b,00530$
	ljmp	00153$
00530$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x2d,00531$
	ljmp	00160$
00531$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x2e,00532$
	ljmp	00109$
00532$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x2f,00533$
	ljmp	00175$
00533$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x3c,00534$
	ljmp	00237$
00534$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x3e,00535$
	ljmp	00223$
00535$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x4d,00536$
	ljmp	00127$
00536$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x50,00537$
	ljmp	00113$
00537$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x54,00538$
	ljmp	00145$
00538$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x55,00539$
	ljmp	00139$
00539$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x56,00540$
	ljmp	00105$
00540$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x58,00541$
	ljmp	00152$
00541$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x5c,00542$
	ljmp	00175$
00542$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x5d,00543$
	ljmp	00230$
00543$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x5e,00544$
	ljmp	00216$
00544$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x6d,00545$
	ljmp	00121$
00545$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x70,00546$
	ljmp	00109$
00546$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x75,00547$
	ljmp	00133$
00547$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x76,00548$
	sjmp	00101$
00548$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x78,00549$
	ljmp	00114$
00549$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x7c,00550$
	ljmp	00209$
00550$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x7e,00551$
	ljmp	00244$
00551$:
	ljmp	00248$
;	calc.c:87: case 'v':
00101$:
;	calc.c:88: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
;	calc.c:89: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,r5
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_peek
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00103$
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00103$:
;	calc.c:91: printstr("PSVTOP\t");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_printstr
;	calc.c:92: printall(d0);
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	calc.c:18: print32x(d);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	_print32x
;	calc.c:19: printf("% 11ld\t", d);
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:20: printf("%011lo\t", d);
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
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
	add	a,#0xf9
	mov	sp,a
;	calc.c:21: print32bin(d);
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_print32bin
;	calc.c:93: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
;	calc.c:95: break;
	ljmp	00249$
;	calc.c:96: case 'V':
00105$:
;	calc.c:97: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
;	calc.c:98: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x40
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_dump_peek
	push	acc
	mov	a,#(_dump_peek >> 8)
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_iter_peek
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r3
	orl	a,r4
	jz	00553$
	ljmp	00249$
00553$:
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_printstr
;	calc.c:99: break;
	ljmp	00249$
;	calc.c:101: case 'p':
00109$:
;	calc.c:102: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
;	calc.c:103: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,r5
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00111$
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00111$:
;	calc.c:105: printstr("PSPTOP\t");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_printstr
;	calc.c:106: printall(d0);
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	calc.c:18: print32x(d);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	_print32x
;	calc.c:19: printf("% 11ld\t", d);
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:20: printf("%011lo\t", d);
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
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
	add	a,#0xf9
	mov	sp,a
;	calc.c:21: print32bin(d);
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_print32bin
;	calc.c:107: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
;	calc.c:109: break;
	ljmp	00249$
;	calc.c:110: case 'P':
00113$:
;	calc.c:111: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar4
	push	ar3
	push	ar2
	lcall	_printstr
	pop	ar2
	pop	ar3
	pop	ar4
;	calc.c:112: (void)dump_pop(_ctx, delta);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_dump_pop
	dec	sp
	dec	sp
	dec	sp
;	calc.c:113: break;
	ljmp	00249$
;	calc.c:114: case 'x':
00114$:
;	calc.c:115: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	mov	a,#0x11
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00119$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00119$:
;	calc.c:116: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x1e
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00116$
;	calc.c:117: (void)stack_push(ctx->ps, d0);
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:118: printstr("\r\nstack underflow\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00116$:
;	calc.c:120: (void)stack_push(ctx->ps, d0);
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:121: (void)stack_push(ctx->ps, d1);
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:123: break;
	ljmp	00249$
;	calc.c:124: case 'm':
00121$:
;	calc.c:125: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,#0x11
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00125$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00125$:
;	calc.c:127: if (!stack_push(ctx->ss, d0)) {
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
	mov	a,#0x40
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	orl	a,r4
	jz	00558$
	ljmp	00249$
00558$:
;	calc.c:128: printstr("\r\nsecondary stack overflow\r\n");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_printstr
;	calc.c:129: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:132: break;
	ljmp	00249$
;	calc.c:133: case 'M':
00127$:
;	calc.c:134: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,#0x14
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00131$
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00131$:
;	calc.c:136: if (!stack_push(ctx->ps, d0)) {
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x40
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	orl	a,r4
	jz	00560$
	ljmp	00249$
00560$:
;	calc.c:137: printstr("\r\nstack overflow\r\n");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_printstr
;	calc.c:138: (void)stack_push(ctx->ss, d0);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:141: break;
	ljmp	00249$
;	calc.c:142: case 'u':
00133$:
;	calc.c:143: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,r5
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_peek
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00137$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00137$:
;	calc.c:144: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
	mov	a,#0x40
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	orl	a,r4
	jz	00562$
	ljmp	00249$
00562$:
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_printstr
;	calc.c:145: break;
	ljmp	00249$
;	calc.c:146: case 'U':
00139$:
;	calc.c:147: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
	mov	a,r5
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_peek
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00143$
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00143$:
;	calc.c:148: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x40
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	orl	a,r4
	jz	00564$
	ljmp	00249$
00564$:
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_printstr
;	calc.c:149: break;
	ljmp	00249$
;	calc.c:150: case 'T':
00145$:
;	calc.c:151: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,#0x11
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00150$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00150$:
;	calc.c:153: if (!stack_pop(ctx->ss, &d1)) {
	mov	a,_bp
	add	a,#0x1e
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	mov	a,#0x14
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00147$
;	calc.c:154: printstr("\r\nsecondary stack underflow\r\n");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_printstr
;	calc.c:155: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00249$
00147$:
;	calc.c:157: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:158: (void)stack_push(ctx->ss, d0);
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:161: break;
	ljmp	00249$
;	calc.c:162: case 'X':
00152$:
;	calc.c:163: t0 = ctx->ps;
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,#0x11
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	calc.c:164: ctx->ps = ctx->ss;
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,#0x14
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	calc.c:165: ctx->ss = t0;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	calc.c:166: break;
	ljmp	00249$
;	calc.c:167: case '+':
00153$:
;	calc.c:168: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,#0x11
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00158$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00158$:
;	calc.c:169: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x1e
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00155$
;	calc.c:170: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:171: printstr("\r\nstack underflow\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00155$:
;	calc.c:173: d1 += d0;
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,_bp
	add	a,#0x1a
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	calc.c:174: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:176: break;
	ljmp	00249$
;	calc.c:177: case '-':
00160$:
;	calc.c:178: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,#0x11
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00165$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00165$:
;	calc.c:179: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x1e
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00162$
;	calc.c:180: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:181: printstr("\r\nstack underflow\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00162$:
;	calc.c:183: d1 -= d0;
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,_bp
	add	a,#0x1a
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
;	calc.c:184: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:186: break;
	ljmp	00249$
;	calc.c:187: case '*':
00167$:
;	calc.c:188: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,#0x11
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00172$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00172$:
;	calc.c:189: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x1e
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00169$
;	calc.c:190: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:191: printstr("\r\nstack underflow\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00169$:
;	calc.c:193: d1 *= d0;
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	calc.c:194: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:196: break;
	ljmp	00249$
;	calc.c:198: case '\\':
00175$:
;	calc.c:199: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,#0x11
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00186$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00186$:
;	calc.c:200: else if (!stack_pop(ctx->ps, &d1)) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x1e
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00183$
;	calc.c:201: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:202: printstr("\r\nstack underflow\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00183$:
;	calc.c:203: } else if (!d0) {
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	00575$
	ljmp	00180$
00575$:
;	calc.c:204: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:205: (void)stack_push(ctx->ps, d0);			
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:206: printstr("\r\ndivision by zero\r\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00180$:
;	calc.c:208: if (ctx->digit[0] == '/') d1 /= d0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2f,00177$
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__divslong
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
	sjmp	00178$
00177$:
;	calc.c:209: else d1 = (unsigned long)d1 / (unsigned long)d0;
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	__divulong
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
00178$:
;	calc.c:210: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:212: break;
	ljmp	00249$
;	calc.c:214: case '#':
00189$:
;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	mov	a,#0x11
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00200$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00200$:
;	calc.c:216: else if (!stack_pop(ctx->ps, &d1)) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x1e
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00197$
;	calc.c:217: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:218: printstr("\r\nstack underflow\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00197$:
;	calc.c:219: } else if (!d0) {
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	00580$
	ljmp	00194$
00580$:
;	calc.c:220: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:221: (void)stack_push(ctx->ps, d0);			
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:222: printstr("\r\ndivision by zero\r\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00194$:
;	calc.c:224: if (ctx->digit[0] == '%') d1 %= d0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x25,00191$
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	sjmp	00192$
00191$:
;	calc.c:225: else d1 = (unsigned long)d1 % (unsigned long)d0;
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00192$:
;	calc.c:226: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:228: break;
	ljmp	00249$
;	calc.c:229: case '&':
00202$:
;	calc.c:230: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jnz	00207$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00207$:
;	calc.c:231: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x1e
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jnz	00204$
;	calc.c:232: (void)stack_push(ctx->ps, d0);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:233: printstr("\r\nstack underflow\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00204$:
;	calc.c:235: d1 &= d0;
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,_bp
	add	a,#0x1a
	mov	r1,a
	mov	a,@r1
	anl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	@r0,a
;	calc.c:236: (void)stack_push(ctx->ps, d1);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:238: break;
	ljmp	00249$
;	calc.c:239: case '|':
00209$:
;	calc.c:240: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jnz	00214$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00214$:
;	calc.c:241: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x1e
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jnz	00211$
;	calc.c:242: (void)stack_push(ctx->ps, d0);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:243: printstr("\r\nstack underflow\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00211$:
;	calc.c:245: d1 |= d0;
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,_bp
	add	a,#0x1a
	mov	r1,a
	mov	a,@r1
	orl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	@r0,a
;	calc.c:246: (void)stack_push(ctx->ps, d1);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:248: break;
	ljmp	00249$
;	calc.c:249: case '^':
00216$:
;	calc.c:250: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jnz	00221$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00221$:
;	calc.c:251: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x1e
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jnz	00218$
;	calc.c:252: (void)stack_push(ctx->ps, d0);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:253: printstr("\r\nstack underflow\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00218$:
;	calc.c:255: d1 ^= d0;
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,_bp
	add	a,#0x1a
	mov	r1,a
	mov	a,@r1
	xrl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	xrl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	xrl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	xrl	a,@r0
	mov	@r0,a
;	calc.c:256: (void)stack_push(ctx->ps, d1);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:258: break;
	ljmp	00249$
;	calc.c:259: case '>':
00223$:
;	calc.c:260: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,#0x11
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00228$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00228$:
;	calc.c:261: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x1e
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00225$
;	calc.c:262: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:263: printstr("\r\nstack underflow\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00225$:
;	calc.c:265: d1 = (unsigned long)d1 >> d0;
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	b,@r0
	inc	b
	sjmp	00592$
00591$:
	clr	c
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00592$:
	djnz	b,00591$
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:266: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:268: break;
	ljmp	00249$
;	calc.c:269: case ']':
00230$:
;	calc.c:270: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jnz	00235$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00235$:
;	calc.c:271: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x1e
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jnz	00232$
;	calc.c:272: (void)stack_push(ctx->ps, d0);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:273: printstr("\r\nstack underflow\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00232$:
;	calc.c:275: d1 >>= d0;
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	rlc	a
	mov	ov,c
	dec	r0
	dec	r0
	dec	r0
	sjmp	00596$
00595$:
	mov	c,ov
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
00596$:
	djnz	b,00595$
;	calc.c:276: (void)stack_push(ctx->ps, d1);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:278: break;
	ljmp	00249$
;	calc.c:279: case '<':
00237$:
;	calc.c:280: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jnz	00242$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00242$:
;	calc.c:281: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x1e
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jnz	00239$
;	calc.c:282: (void)stack_push(ctx->ps, d0);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:283: printstr("\r\nstack underflow\r\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	ljmp	00249$
00239$:
;	calc.c:285: d1 <<= d0;
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	sjmp	00600$
00599$:
	mov	a,@r0
	add	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	dec	r0
	dec	r0
	dec	r0
00600$:
	djnz	b,00599$
;	calc.c:286: (void)stack_push(ctx->ps, d1);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:288: break;
	ljmp	00249$
;	calc.c:289: case '~':
00244$:
;	calc.c:290: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x1a
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jnz	00246$
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_printstr
	sjmp	00249$
00246$:
;	calc.c:292: d0 = ~d0;
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	cpl	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	@r0,a
;	calc.c:293: (void)stack_push(ctx->ps, d0);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:295: break;
;	calc.c:296: default:
	sjmp	00249$
00248$:
;	calc.c:297: return UNDEF;
	mov	dptr,#0x8000
;	calc.c:298: }
	sjmp	00252$
00249$:
;	calc.c:300: return 1;
	mov	dptr,#0x0001
00252$:
;	calc.c:301: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'push_acc'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to stack - _bp +5
;ctx                       Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	calc.c:303: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function push_acc
;	-----------------------------------------
_push_acc:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
	xch	a,r0
	mov	a,_bp
	add	a,#0x05
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
;	calc.c:304: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	calc.c:308: ctx->acc_valid = 0;
	mov	a,#0x06
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	calc.c:309: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
	mov	a,#0x02
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r4
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,#0x11
	add	a,r2
	mov	r2,a
	mov	a,#0x40
	addc	a,r3
	mov	r3,a
	mov	ar7,r4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_stack_push
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r6
	orl	a,r7
	jnz	00102$
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_printstr
00102$:
;	calc.c:311: if (delta->event == EVENT_OP) return operator(_ctx, delta);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x02,00104$
	cjne	r3,#0x00,00104$
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_operator
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r6
	mov	dph,r7
	sjmp	00106$
00104$:
;	calc.c:312: else return 1;
	mov	dptr,#0x0001
00106$:
;	calc.c:313: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_acc'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:315: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function reset_acc
;	-----------------------------------------
_reset_acc:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:316: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
;	calc.c:318: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x07,00102$
	cjne	r3,#0x00,00102$
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
00102$:
;	calc.c:319: ctx->acc = 0l;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	calc.c:321: return 1;
	mov	dptr,#0x0001
;	calc.c:322: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_base'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:324: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function reset_base
;	-----------------------------------------
_reset_base:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:325: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
;	calc.c:329: switch (ctx->digit[0]) {
	mov	a,#0x07
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x48,00124$
	sjmp	00101$
00124$:
	cjne	r4,#0x4f,00125$
	sjmp	00103$
00125$:
	cjne	r4,#0x68,00126$
	sjmp	00102$
00126$:
;	calc.c:330: case 'H':
	cjne	r4,#0x6f,00105$
	sjmp	00104$
00101$:
;	calc.c:331: ctx->base = 16;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x10
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:332: break;
;	calc.c:333: case 'h':
	sjmp	00105$
00102$:
;	calc.c:334: ctx->base = 10;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:335: break;
;	calc.c:336: case 'O':
	sjmp	00105$
00103$:
;	calc.c:337: ctx->base = 8;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:338: break;
;	calc.c:339: case 'o':
	sjmp	00105$
00104$:
;	calc.c:340: ctx->base = 2;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:342: }
00105$:
;	calc.c:344: return 1;
	mov	dptr,#0x0001
;	calc.c:345: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'status'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +9
;vals                      Allocated to stack - _bp +12
;n                         Allocated to registers r6 r7 
;__1310720011              Allocated to registers r5 r6 r7 r4 
;d                         Allocated to registers 
;__1310720013              Allocated to registers r2 r3 r4 r5 
;d                         Allocated to registers 
;__1310720015              Allocated to registers r4 r5 r6 r7 
;d                         Allocated to registers 
;__1310720017              Allocated to registers r2 r3 r4 r5 
;d                         Allocated to registers 
;__1310720019              Allocated to registers r4 r5 r6 r7 
;d                         Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	calc.c:347: static int status(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function status
;	-----------------------------------------
_status:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x13
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:348: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:354: printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x14
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x11
	add	a,@r0
	mov	@r1,a
	mov	a,#0x40
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar6
	push	ar7
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	calc.c:356: printstr("ACC\t");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_printstr
;	calc.c:357: if (ctx->acc_valid) printall(ctx->acc);
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00143$
	ljmp	00102$
00143$:
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
;	calc.c:18: print32x(d);
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_print32x
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:19: printf("% 11ld\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:20: printf("%011lo\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:21: print32bin(d);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	_print32bin
;	calc.c:357: if (ctx->acc_valid) printall(ctx->acc);
00102$:
;	calc.c:359: n = stack_peek2(ctx->ps, vals);
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar1
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_peek2
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
;	calc.c:360: printstr("\r\nPSTOP1\t");
	mov	dptr,#___str_16
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar1
	lcall	_printstr
	pop	ar1
	pop	ar6
	pop	ar7
;	calc.c:361: if (n > 0) printall(vals[1]);
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00144$
	ljmp	00104$
00144$:
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	calc.c:18: print32x(d);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_print32x
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	calc.c:19: printf("% 11ld\t", d);
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	calc.c:20: printf("%011lo\t", d);
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	calc.c:21: print32bin(d);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar1
	lcall	_print32bin
	pop	ar1
	pop	ar6
	pop	ar7
;	calc.c:361: if (n > 0) printall(vals[1]);
00104$:
;	calc.c:362: printstr("\r\nPSTOP0\t");
	mov	dptr,#___str_17
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar1
	lcall	_printstr
	pop	ar1
	pop	ar6
	pop	ar7
;	calc.c:363: if (n > 1) printall(vals[0]);
	clr	c
	mov	a,#0x01
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00145$
	ljmp	00106$
00145$:
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
;	calc.c:18: print32x(d);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	lcall	_print32x
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:19: printf("% 11ld\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar4
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
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:20: printf("%011lo\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:21: print32bin(d);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar1
	lcall	_print32bin
	pop	ar1
;	calc.c:363: if (n > 1) printall(vals[0]);
00106$:
;	calc.c:365: n = stack_peek2(ctx->ss, vals);
	mov	ar7,r1
	mov	r6,#0x00
	mov	r5,#0x40
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar1
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_peek2
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
;	calc.c:366: printstr("\r\nSSTOP1\t");
	mov	dptr,#___str_18
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar1
	lcall	_printstr
	pop	ar1
	pop	ar6
	pop	ar7
;	calc.c:367: if (n > 0) printall(vals[1]);
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00146$
	ljmp	00108$
00146$:
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	calc.c:18: print32x(d);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_print32x
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	calc.c:19: printf("% 11ld\t", d);
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	calc.c:20: printf("%011lo\t", d);
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	calc.c:21: print32bin(d);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar1
	lcall	_print32bin
	pop	ar1
	pop	ar6
	pop	ar7
;	calc.c:367: if (n > 0) printall(vals[1]);
00108$:
;	calc.c:368: printstr("\r\nSSTOP0\t");
	mov	dptr,#___str_19
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar1
	lcall	_printstr
	pop	ar1
	pop	ar6
	pop	ar7
;	calc.c:369: if (n > 1) printall(vals[0]);
	clr	c
	mov	a,#0x01
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00147$
	ljmp	00110$
00147$:
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
;	calc.c:18: print32x(d);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_print32x
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:19: printf("% 11ld\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
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
	add	a,#0xf9
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:20: printf("%011lo\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:21: print32bin(d);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_print32bin
;	calc.c:369: if (n > 1) printall(vals[0]);
00110$:
;	calc.c:370: printstr("\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_printstr
;	calc.c:372: return 1;
	mov	dptr,#0x0001
;	calc.c:373: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'help'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers 
;------------------------------------------------------------
;	calc.c:375: static int help(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function help
;	-----------------------------------------
_help:
	push	_bp
	mov	_bp,sp
;	calc.c:379: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_printstr
;	calc.c:380: printstr("p.\tpop top\r\n");
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_printstr
;	calc.c:381: printstr("P\tpop stack\r\n");
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_printstr
;	calc.c:382: printstr("v\tpeek top\r\n");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_printstr
;	calc.c:383: printstr("V\tpeek stack\r\n");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_printstr
;	calc.c:384: printstr("i\treset acc\r\n");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_printstr
;	calc.c:385: printstr("I\treset and discard acc\r\n");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_printstr
;	calc.c:386: printstr("x\texchange top 2\r\n");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_printstr
;	calc.c:387: printstr("X\texchange stacks primary <-> secondary\r\n");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_printstr
;	calc.c:388: printstr("T\texchange tops primary <-> secondary\r\n");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_printstr
;	calc.c:389: printstr("U\tcopy top secondary -> primary\r\n");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_printstr
;	calc.c:390: printstr("u\tcopy top primary -> secondary\r\n");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_printstr
;	calc.c:391: printstr("M\tmove top secondary -> primary\r\n");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_printstr
;	calc.c:392: printstr("m\tmove top primary -> secondary\r\n");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_printstr
;	calc.c:393: printstr("+\tadd top 2\r\n");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_printstr
;	calc.c:394: printstr("-\tsubtract top 2\r\n");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_printstr
;	calc.c:395: printstr("*\tmultiply top 2\r\n");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_printstr
;	calc.c:396: printstr("/\tdivide top 2\r\n");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_printstr
;	calc.c:397: printstr("\\\tdivide top 2 unsigned\r\n");	
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_printstr
;	calc.c:398: printstr("%\tmodulus top 2\r\n");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_printstr
;	calc.c:399: printstr("#\tmodulus top 2 unsigned\r\n");
	mov	dptr,#___str_40
	mov	b,#0x80
	lcall	_printstr
;	calc.c:400: printstr("&\tand top 2\r\n");
	mov	dptr,#___str_41
	mov	b,#0x80
	lcall	_printstr
;	calc.c:401: printstr("|\tor top 2\r\n");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_printstr
;	calc.c:402: printstr("^\txor top 2\r\n");
	mov	dptr,#___str_43
	mov	b,#0x80
	lcall	_printstr
;	calc.c:403: printstr(">\tshift right top 2\r\n");
	mov	dptr,#___str_44
	mov	b,#0x80
	lcall	_printstr
;	calc.c:404: printstr("]\tarithmetic shift right top 2\r\n");
	mov	dptr,#___str_45
	mov	b,#0x80
	lcall	_printstr
;	calc.c:405: printstr("<\tshift left top 2\r\n");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_printstr
;	calc.c:406: printstr("~\tbitwise not top\r\n");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_printstr
;	calc.c:407: printstr("s\tstatus\r\n");
	mov	dptr,#___str_48
	mov	b,#0x80
	lcall	_printstr
;	calc.c:408: printstr("?\thelp\r\n");
	mov	dptr,#___str_49
	mov	b,#0x80
	lcall	_printstr
;	calc.c:409: printstr("q\tquit\r\n");
	mov	dptr,#___str_50
	mov	b,#0x80
	lcall	_printstr
;	calc.c:411: return 1;
	mov	dptr,#0x0001
;	calc.c:412: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;input                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	calc.c:442: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	calc.c:445: giant = 0;
	mov	r0,#_giant
	mov	@r0,#0x00
;	calc.c:447: c.base = 10;
	mov	dptr,#_c
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	calc.c:448: c.acc = 0l;
	mov	dptr,#(_c + 0x0002)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	calc.c:449: c.acc_valid = (char)0;
	mov	dptr,#(_c + 0x0006)
	movx	@dptr,a
;	calc.c:450: c.digit[0] = c.digit[1] = '\0';
	mov	dptr,#(_c + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_c + 0x0007)
	movx	@dptr,a
;	calc.c:452: c.ps = &c.s0;
	mov	dptr,#(_c + 0x4011)
	mov	a,#(_c + 0x0009)
	movx	@dptr,a
	mov	a,#((_c + 0x0009) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	calc.c:453: c.ss = &c.s1;
	mov	dptr,#(_c + 0x4014)
	mov	a,#(_c + 0x200d)
	movx	@dptr,a
	mov	a,#((_c + 0x200d) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	calc.c:454: stack_init(c.ps);
	mov	dptr,#(_c + 0x0009)
	mov	b,#0x00
	lcall	_stack_init
;	calc.c:455: stack_init(c.ss);
	mov	dptr,#(_c + 0x4014)
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
	lcall	_stack_init
;	calc.c:457: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
	mov	a,#_c
	push	acc
	mov	a,#(_c >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_deltas
	push	acc
	mov	a,#(_deltas >> 8)
	push	acc
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_init
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
;	calc.c:459: (void)status(&c, deltas);
	mov	a,#_deltas
	push	acc
	mov	a,#(_deltas >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_c
	mov	b,#0x00
	lcall	_status
	dec	sp
	dec	sp
	dec	sp
;	calc.c:461: while (1) {
00192$:
;	calc.c:462: input = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	calc.c:463: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
	mov	ar5,r6
	cjne	r5,#0x0d,00372$
	sjmp	00101$
00372$:
	cjne	r5,#0x0a,00102$
00101$:
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_printstr
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00103$
00102$:
;	calc.c:464: else (void)putchar(input);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
00103$:
;	calc.c:465: c.digit[0] = (char)input;
	mov	dptr,#(_c + 0x0007)
	mov	a,r5
	movx	@dptr,a
;	calc.c:467: if ((char)input == 'q') {
	cjne	r5,#0x71,00189$
;	calc.c:468: if (state_exec(&s, EVENT_TERM) <= 0) break;
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00192$
	ljmp	00193$
00189$:
;	calc.c:469: } else if ((char)input == 's') {
	cjne	r5,#0x73,00186$
;	calc.c:470: if (state_exec(&s, EVENT_STATUS) <= 0) break;
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00380$
	ljmp	00192$
00380$:
	ljmp	00193$
00186$:
;	calc.c:471: } else if ((char)input == '?') {
	cjne	r5,#0x3f,00183$
;	calc.c:472: if (state_exec(&s, EVENT_HELP) <= 0) break;
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00383$
	ljmp	00192$
00383$:
	ljmp	00193$
00183$:
;	calc.c:473: } else if ((char)input == 'i') {
	cjne	r5,#0x69,00180$
;	calc.c:474: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00386$
	ljmp	00192$
00386$:
	ljmp	00193$
00180$:
;	calc.c:475: } else if ((char)input == 'I') {
	cjne	r5,#0x49,00177$
;	calc.c:476: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
	mov	a,#0x07
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00389$
	ljmp	00192$
00389$:
	ljmp	00193$
00177$:
;	calc.c:478: ((char)input == 'h') || ((char)input == 'H') ||
	cjne	r5,#0x68,00390$
	sjmp	00170$
00390$:
	cjne	r5,#0x48,00391$
	sjmp	00170$
00391$:
;	calc.c:479: ((char)input == 'o') || ((char)input == 'O')
	cjne	r5,#0x6f,00392$
	sjmp	00170$
00392$:
	cjne	r5,#0x4f,00171$
00170$:
;	calc.c:481: if (state_exec(&s, EVENT_BASE) <= 0) break;
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00395$
	ljmp	00192$
00395$:
	ljmp	00193$
00171$:
;	calc.c:482: } else if (isxdigit(input)) {
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	lcall	_isxdigit
	mov	a,dpl
	mov	b,dph
	pop	ar5
	orl	a,b
	jz	00168$
;	calc.c:483: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00397$
	ljmp	00192$
00397$:
	ljmp	00193$
00168$:
;	calc.c:485: ((char)input == 'p') || ((char)input == 'P') ||
	cjne	r5,#0x70,00398$
	sjmp	00159$
00398$:
	cjne	r5,#0x50,00399$
	sjmp	00159$
00399$:
;	calc.c:486: ((char)input == 'v') || ((char)input == 'V') ||
	cjne	r5,#0x76,00400$
	sjmp	00159$
00400$:
	cjne	r5,#0x56,00401$
	sjmp	00159$
00401$:
;	calc.c:487: ((char)input == '.') ||
	cjne	r5,#0x2e,00402$
	sjmp	00159$
00402$:
;	calc.c:488: ((char)input == 'x')
	cjne	r5,#0x78,00160$
00159$:
;	calc.c:490: if (state_exec(&s, EVENT_OP) <= 0) break;
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00405$
	ljmp	00192$
00405$:
	ljmp	00193$
00160$:
;	calc.c:492: ((char)input == 'X') || ((char)input == 'T') ||
	cjne	r5,#0x58,00406$
	sjmp	00151$
00406$:
	cjne	r5,#0x54,00407$
	sjmp	00151$
00407$:
;	calc.c:493: ((char)input == 'm') || ((char)input == 'M') ||
	cjne	r5,#0x6d,00408$
	sjmp	00151$
00408$:
	cjne	r5,#0x4d,00409$
	sjmp	00151$
00409$:
;	calc.c:494: ((char)input == 'u') || ((char)input == 'U')
	cjne	r5,#0x75,00410$
	sjmp	00151$
00410$:
	cjne	r5,#0x55,00152$
00151$:
;	calc.c:496: if (state_exec(&s, EVENT_OP) <= 0) break;
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00413$
	ljmp	00192$
00413$:
	ljmp	00193$
00152$:
;	calc.c:498: ((char)input == '+') || ((char)input == '-')
	cjne	r5,#0x2b,00414$
	sjmp	00147$
00414$:
	cjne	r5,#0x2d,00148$
00147$:
;	calc.c:500: if (state_exec(&s, EVENT_OP) <= 0) break;
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00417$
	ljmp	00192$
00417$:
	ljmp	00193$
00148$:
;	calc.c:502: ((char)input == '*') ||
	cjne	r5,#0x2a,00418$
	sjmp	00140$
00418$:
;	calc.c:503: ((char)input == '/') || ((char)input == '\\') ||
	cjne	r5,#0x2f,00419$
	sjmp	00140$
00419$:
	cjne	r5,#0x5c,00420$
	sjmp	00140$
00420$:
;	calc.c:504: ((char)input == '%') || ((char)input == '#')
	cjne	r5,#0x25,00421$
	sjmp	00140$
00421$:
	cjne	r5,#0x23,00141$
00140$:
;	calc.c:506: if (state_exec(&s, EVENT_OP) <= 0) break;
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00193$
	ljmp	00192$
00141$:
;	calc.c:508: ((char)input == '&') ||
	cjne	r5,#0x26,00425$
	sjmp	00131$
00425$:
;	calc.c:509: ((char)input == '|') || ((char)input == '^') ||
	cjne	r5,#0x7c,00426$
	sjmp	00131$
00426$:
	cjne	r5,#0x5e,00427$
	sjmp	00131$
00427$:
;	calc.c:510: ((char)input == '~') ||
	cjne	r5,#0x7e,00428$
	sjmp	00131$
00428$:
;	calc.c:511: ((char)input == '>') || ((char)input == ']') ||
	cjne	r5,#0x3e,00429$
	sjmp	00131$
00429$:
	cjne	r5,#0x5d,00430$
	sjmp	00131$
00430$:
;	calc.c:512: ((char)input == '<')
	cjne	r5,#0x3c,00132$
00131$:
;	calc.c:514: if (state_exec(&s, EVENT_OP) <= 0) break;
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00193$
	ljmp	00192$
00132$:
;	calc.c:516: if (state_exec(&s, EVENT_DELIM) <= 0) break;
	clr	a
	push	acc
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00434$
	ljmp	00192$
00434$:
00193$:
;	calc.c:520: printstr("TERM\r\n");
	mov	dptr,#___str_51
	mov	b,#0x80
	lcall	_printstr
;	calc.c:522: PCON |= 2;
	orl	_PCON,#0x02
;	calc.c:524: return;
;	calc.c:525: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "% 11ld"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "%011lo"
	.db 0x09
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
	.ascii "stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "PSPA"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "SSPA"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "PSVA"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "PSVTOP"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "PSPTOP"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0d
	.db 0x0a
	.ascii "stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0d
	.db 0x0a
	.ascii "secondary stack overflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0d
	.db 0x0a
	.ascii "secondary stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0d
	.db 0x0a
	.ascii "stack overflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0d
	.db 0x0a
	.ascii "division by zero"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0d
	.db 0x0a
	.ascii "PS = %p, SS = %p, base = %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "ACC"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0d
	.db 0x0a
	.ascii "PSTOP1"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0d
	.db 0x0a
	.ascii "PSTOP0"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0d
	.db 0x0a
	.ascii "SSTOP1"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0d
	.db 0x0a
	.ascii "SSTOP0"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0d
	.db 0x0a
	.ascii "HhOo"
	.db 0x09
	.ascii "base 16 10 8 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "p."
	.db 0x09
	.ascii "pop top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "P"
	.db 0x09
	.ascii "pop stack"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "v"
	.db 0x09
	.ascii "peek top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "V"
	.db 0x09
	.ascii "peek stack"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "i"
	.db 0x09
	.ascii "reset acc"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "I"
	.db 0x09
	.ascii "reset and discard acc"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "x"
	.db 0x09
	.ascii "exchange top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "X"
	.db 0x09
	.ascii "exchange stacks primary <-> secondary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "T"
	.db 0x09
	.ascii "exchange tops primary <-> secondary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "U"
	.db 0x09
	.ascii "copy top secondary -> primary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "u"
	.db 0x09
	.ascii "copy top primary -> secondary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "M"
	.db 0x09
	.ascii "move top secondary -> primary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "m"
	.db 0x09
	.ascii "move top primary -> secondary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "+"
	.db 0x09
	.ascii "add top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "-"
	.db 0x09
	.ascii "subtract top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "*"
	.db 0x09
	.ascii "multiply top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "/"
	.db 0x09
	.ascii "divide top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x5c
	.db 0x09
	.ascii "divide top 2 unsigned"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "%"
	.db 0x09
	.ascii "modulus top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.ascii "#"
	.db 0x09
	.ascii "modulus top 2 unsigned"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.ascii "&"
	.db 0x09
	.ascii "and top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "|"
	.db 0x09
	.ascii "or top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii "^"
	.db 0x09
	.ascii "xor top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.ascii ">"
	.db 0x09
	.ascii "shift right top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.ascii "]"
	.db 0x09
	.ascii "arithmetic shift right top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.ascii "<"
	.db 0x09
	.ascii "shift left top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.ascii "~"
	.db 0x09
	.ascii "bitwise not top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.ascii "s"
	.db 0x09
	.ascii "status"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.ascii "?"
	.db 0x09
	.ascii "help"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii "q"
	.db 0x09
	.ascii "quit"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.ascii "TERM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__deltas:
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x00, #0x00	;  0
	.byte #0x01, #0x00	;  1
	.byte #0x02, #0x00	;  2
	.byte #0x00,#0x00
	.byte _accumulate, (_accumulate >> 8)
	.byte #0x00, #0x00	;  0
	.byte #0x02, #0x00	;  2
	.byte #0x01, #0x00	;  1
	.byte #0x00,#0x00
	.byte _operator, (_operator >> 8)
	.byte #0x01, #0x00	;  1
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x01, #0x00	;  1
	.byte #0x02, #0x00	;  2
	.byte #0x01, #0x00	;  1
	.byte #0x00,#0x00
	.byte _operator, (_operator >> 8)
	.byte #0x01, #0x00	;  1
	.byte #0x01, #0x00	;  1
	.byte #0x02, #0x00	;  2
	.byte #0x00,#0x00
	.byte _accumulate, (_accumulate >> 8)
	.byte #0x02, #0x00	;  2
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0x00,#0x00
	.byte _push_acc, (_push_acc >> 8)
	.byte #0x02, #0x00	;  2
	.byte #0x07, #0x00	;  7
	.byte #0x00, #0x00	;  0
	.byte #0x00,#0x00
	.byte _reset_acc, (_reset_acc >> 8)
	.byte #0x02, #0x00	;  2
	.byte #0x01, #0x00	;  1
	.byte #0x02, #0x00	;  2
	.byte #0x00,#0x00
	.byte _accumulate, (_accumulate >> 8)
	.byte #0x02, #0x00	;  2
	.byte #0x02, #0x00	;  2
	.byte #0x01, #0x00	;  1
	.byte #0x00,#0x00
	.byte _push_acc, (_push_acc >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x06, #0x00	;  6
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte _reset_acc, (_reset_acc >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x07, #0x00	;  7
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xff, #0x7f	;  32767
	.byte #0x05, #0x00	;  5
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte _reset_base, (_reset_base >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x03, #0x00	;  3
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte _status, (_status >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x04, #0x00	;  4
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte _help, (_help >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x08, #0x00	;  8
	.byte #0x03, #0x00	;  3
	.byte #0x00,#0x00
	.byte _dump_pop, (_dump_pop >> 8)
	.byte #0x00, #0x80	; -32768
	.byte #0x00, #0x80	; -32768
	.byte #0x00, #0x80	; -32768
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.area CABS    (ABS,CODE)
