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
	.globl _getchar_poll
	.globl _state_exec
	.globl _state_init
	.globl _stack_iter_peek
	.globl _stack_peek2
	.globl _stack_peek
	.globl _stack_pop
	.globl _stack_push
	.globl _stack_init
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
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	calc.c:16: int putchar(int c) __naked {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	naked function: no prologue.
;	calc.c:24: __endasm;
	push	acc
	mov	a, dpl
	lcall	0x003c
	pop	acc
	ret
;	calc.c:25: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	calc.c:27: int getchar(void) __naked {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	naked function: no prologue.
;	calc.c:35: __endasm;
	push	acc
	lcall	0x0036
	mov	dpl, a
	mov	dph, #0
	pop	acc
	ret
;	calc.c:36: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_poll'
;------------------------------------------------------------
;	calc.c:38: int getchar_poll(void) __naked {
;	-----------------------------------------
;	 function getchar_poll
;	-----------------------------------------
_getchar_poll:
;	naked function: no prologue.
;	calc.c:53: __endasm;
	push	acc
	push	b
	mov	a, #0xff
	mov	b, a
	lcall	0x0039
	jc	nochar
	mov	b, #0x00
	nochar:
	mov	dpl, a
	mov	dph, b
	pop	b
	pop	acc
	ret
;	calc.c:54: }
;	naked function: no epilogue.
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
;	calc.c:80: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
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
;	calc.c:81: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:86: if (!ctx->acc_valid) {
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
;	calc.c:87: ctx->acc_valid = 1;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	calc.c:88: ctx->acc = 0l;
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
;	calc.c:91: d = strtol(ctx->digit, NULL, ctx->base);
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
;	calc.c:92: ctx->acc = ctx->acc * (long)ctx->base + d;
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
;	calc.c:94: return 1;
	mov	dptr,#0x0001
;	calc.c:95: }
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
;__1310720003              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080005              Allocated to registers 
;s                         Allocated to registers r4 r5 r6 
;__1966080007              Allocated to registers 
;s                         Allocated to registers r3 r4 r5 
;__1966080009              Allocated to stack - _bp +18
;d                         Allocated to registers r3 r4 r5 r6 
;__1310720001              Allocated to registers 
;d                         Allocated to stack - _bp +22
;mask                      Allocated to stack - _bp +26
;__1966080011              Allocated to registers 
;s                         Allocated to registers r3 r4 r5 
;__1966080013              Allocated to registers 
;s                         Allocated to registers r4 r5 r6 
;__3276800015              Allocated to registers 
;s                         Allocated to registers r5 r3 r2 
;__3276800017              Allocated to stack - _bp +18
;d                         Allocated to registers r2 r3 r4 r7 
;__1310720001              Allocated to registers 
;d                         Allocated to stack - _bp +22
;mask                      Allocated to stack - _bp +26
;__3276800019              Allocated to registers 
;s                         Allocated to registers r5 r3 r2 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;sloc2                     Allocated to stack - _bp +5
;sloc3                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	calc.c:97: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function dump_pop
;	-----------------------------------------
_dump_pop:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x1d
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:98: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:102: if (delta->event == EVENT_TERM) printstr("\r\n");
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	cjne	r6,#0x08,00102$
	cjne	r7,#0x00,00102$
	mov	r5,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00135$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00102$
	mov	ar3,r4
	mov	r4,#0x00
	mov	dpl,r3
	mov	dph,r4
	lcall	_putchar
	inc	r5
;	calc.c:102: if (delta->event == EVENT_TERM) printstr("\r\n");
	cjne	r5,#0x00,00135$
	inc	r6
	sjmp	00135$
00102$:
;	calc.c:103: r = stack_pop(ctx->ps, &d);
	mov	a,_bp
	add	a,#0x0e
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
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
	mov	r6,a
	push	ar7
	mov	a,_bp
	add	a,#0x05
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
	pop	ar7
;	calc.c:104: if (!r) {
	mov	a,r6
	orl	a,r5
	jnz	00183$
;	calc.c:105: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x08
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
	cjne	r5,#0x08,00320$
	cjne	r6,#0x00,00320$
	ljmp	00110$
00320$:
	mov	r4,#___str_4
	mov	r5,#(___str_4 >> 8)
	mov	r6,#0x80
;	calc.c:59: return;
00138$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	jnz	00321$
	ljmp	00110$
00321$:
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
	inc	r4
;	calc.c:106: } else while (r > 0) {
	cjne	r4,#0x00,00138$
	inc	r5
	sjmp	00138$
00183$:
	mov	r0,_bp
	inc	r0
	mov	@r0,ar7
00105$:
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00323$
	ljmp	00110$
00323$:
;	calc.c:107: printstr("PSPA\t");
	mov	r3,#___str_5
	mov	r4,#(___str_5 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00141$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	jz	00119$
	mov	r6,#0x00
	mov	dpl,r2
	mov	dph,r6
	lcall	_putchar
	inc	r3
;	calc.c:107: printstr("PSPA\t");
	cjne	r3,#0x00,00141$
	inc	r4
	sjmp	00141$
00119$:
;	calc.c:108: printall(d);
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
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
;	calc.c:72: printf("%08lx\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	a,_bp
	add	a,#0x12
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
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	calc.c:73: printf("% 11ld\t", d);
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar3
	push	ar4
	push	ar5
	push	ar6
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
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	calc.c:74: printf("%011lo\t", d);
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	calc.c:75: printbin(d);
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
;	calc.c:122: return 1;
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
00143$:
;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	anl	ar2,a
	inc	r0
	mov	a,@r0
	anl	ar3,a
	inc	r0
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jz	00164$
	mov	r4,#0x31
	mov	r5,#0x00
	sjmp	00165$
00164$:
	mov	r4,#0x30
	mov	r5,#0x00
00165$:
	mov	dpl,r4
	mov	dph,r5
	lcall	_putchar
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
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
	jnz	00143$
;	calc.c:109: printstr("\r\n");
	mov	r3,#___str_3
	mov	r4,#(___str_3 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00146$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	jz	00124$
	mov	r6,#0x00
	mov	dpl,r2
	mov	dph,r6
	lcall	_putchar
	inc	r3
;	calc.c:109: printstr("\r\n");
	cjne	r3,#0x00,00146$
	inc	r4
	sjmp	00146$
00124$:
;	calc.c:110: r = stack_pop(ctx->ps, &d);
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	mov	r4,#0x00
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar7
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar7
	ljmp	00105$
00110$:
;	calc.c:113: if (delta->event == EVENT_TERM) {
	mov	a,_bp
	add	a,#0x08
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
	cjne	r5,#0x08,00330$
	cjne	r6,#0x00,00330$
	sjmp	00331$
00330$:
	ljmp	00113$
00331$:
;	calc.c:114: printstr("\r\n");
	mov	r4,#___str_3
	mov	r5,#(___str_3 >> 8)
	mov	r6,#0x80
;	calc.c:59: return;
00149$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	jz	00126$
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
	inc	r4
;	calc.c:114: printstr("\r\n");
	cjne	r4,#0x00,00149$
	inc	r5
	sjmp	00149$
00126$:
;	calc.c:115: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
	mov	ar6,r7
	mov	a,_bp
	add	a,#0x05
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
	add	a,#0x05
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
00160$:
	clr	c
	clr	a
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00334$
	ljmp	00113$
00334$:
;	calc.c:116: printstr("SSPA\t");
	mov	r5,#___str_6
	mov	r3,#(___str_6 >> 8)
	mov	r2,#0x80
;	calc.c:59: return;
00152$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	jz	00128$
	push	ar7
	mov	ar4,r6
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r7
	lcall	_putchar
	inc	r5
	cjne	r5,#0x00,00336$
	inc	r3
00336$:
	pop	ar7
;	calc.c:116: printstr("SSPA\t");
	sjmp	00152$
00128$:
;	calc.c:117: printall(d);
	push	ar7
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
;	calc.c:72: printf("%08lx\t", d);
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x12
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
;	calc.c:73: printf("% 11ld\t", d);
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
;	calc.c:74: printf("%011lo\t", d);
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
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
;	calc.c:75: printbin(d);
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar7
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
;	calc.c:122: return 1;
	pop	ar7
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
00154$:
;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	push	ar7
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	anl	ar2,a
	inc	r0
	mov	a,@r0
	anl	ar3,a
	inc	r0
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r7
	pop	ar7
	jz	00166$
	mov	r3,#0x31
	mov	r4,#0x00
	sjmp	00167$
00166$:
	mov	r3,#0x30
	mov	r4,#0x00
00167$:
	mov	dpl,r3
	mov	dph,r4
	lcall	_putchar
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
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
	jnz	00154$
;	calc.c:118: printstr("\r\n");
	mov	r5,#___str_3
	mov	r3,#(___str_3 >> 8)
	mov	r2,#0x80
;	calc.c:59: return;
00157$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	jz	00133$
	push	ar7
	mov	ar4,r6
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r7
	lcall	_putchar
	inc	r5
	cjne	r5,#0x00,00340$
	inc	r3
00340$:
	pop	ar7
;	calc.c:118: printstr("\r\n");
	sjmp	00157$
00133$:
;	calc.c:115: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
	mov	ar6,r7
	mov	r5,#0x00
	mov	r2,#0x40
	push	ar7
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar6
	push	ar5
	push	ar2
	mov	dpl,r3
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
	pop	ar7
	ljmp	00160$
00113$:
;	calc.c:122: return 1;
	mov	dptr,#0x0001
;	calc.c:123: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_peek'
;------------------------------------------------------------
;d                         Allocated to stack - _bp -6
;_ctx                      Allocated to registers 
;__1310720021              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720023              Allocated to registers r4 r5 r6 r7 
;d                         Allocated to registers 
;__1310720001              Allocated to registers 
;d                         Allocated to stack - _bp +1
;mask                      Allocated to stack - _bp +5
;__1310720025              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:125: static int dump_peek(void *_ctx, long d) __reentrant {
;	-----------------------------------------
;	 function dump_peek
;	-----------------------------------------
_dump_peek:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x08
	mov	sp,a
;	calc.c:128: printstr("PSVA\t");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00109$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00102$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:128: printstr("PSVA\t");
	cjne	r5,#0x00,00109$
	inc	r6
	sjmp	00109$
00102$:
;	calc.c:129: printall(d);
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
;	calc.c:72: printf("%08lx\t", d);
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
;	calc.c:73: printf("% 11ld\t", d);
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
;	calc.c:74: printf("%011lo\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
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
;	calc.c:75: printbin(d);
	mov	r0,_bp
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00111$:
;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00118$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00119$
00118$:
	mov	r6,#0x30
	mov	r7,#0x00
00119$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
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
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00111$
;	calc.c:130: printstr("\r\n");
	mov	r5,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00114$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:130: printstr("\r\n");
	cjne	r5,#0x00,00114$
	inc	r6
	sjmp	00114$
00107$:
;	calc.c:132: return 1;
	mov	dptr,#0x0001
;	calc.c:133: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'operator'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to stack - _bp +1
;ctx                       Allocated to stack - _bp +18
;t0                        Allocated to registers r7 r6 r5 
;d0                        Allocated to stack - _bp +21
;d1                        Allocated to stack - _bp +25
;__1966080027              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080029              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440031              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440033              Allocated to registers r7 r6 r5 r4 
;d                         Allocated to stack - _bp +29
;__1310720001              Allocated to registers 
;d                         Allocated to registers r7 r6 r5 r2 
;mask                      Allocated to stack - _bp +33
;__2621440035              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080037              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080039              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080041              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080043              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440045              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440047              Allocated to registers r7 r6 r5 r4 
;d                         Allocated to stack - _bp +29
;__1310720001              Allocated to registers 
;d                         Allocated to registers r7 r6 r5 r2 
;mask                      Allocated to stack - _bp +33
;__2621440049              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080051              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080053              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440055              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080057              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__3276800059              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080061              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__3276800063              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080065              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080067              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080069              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080071              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080073              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__3276800075              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080077              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440079              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080081              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440083              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080085              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440087              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080089              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440091              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440093              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080095              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440097              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440099              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080101              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__2621440103              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080105              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__2621440107              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080109              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__2621440111              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080113              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__2621440115              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080117              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__2621440119              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080121              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__2621440123              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080125              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;sloc0                     Allocated to stack - _bp +346
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +7
;sloc3                     Allocated to stack - _bp +11
;sloc4                     Allocated to stack - _bp +14
;------------------------------------------------------------
;	calc.c:135: static int operator(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function operator
;	-----------------------------------------
_operator:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x21
	mov	sp,a
;	calc.c:136: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	mov	r0,_bp
	inc	r0
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
;	calc.c:140: switch (ctx->digit[0]) {
	mov	a,_bp
	add	a,#0x12
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
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x23,01234$
	ljmp	00189$
01234$:
	cjne	r4,#0x25,01235$
	ljmp	00189$
01235$:
	cjne	r4,#0x26,01236$
	ljmp	00202$
01236$:
	cjne	r4,#0x2a,01237$
	ljmp	00167$
01237$:
	cjne	r4,#0x2b,01238$
	ljmp	00153$
01238$:
	cjne	r4,#0x2d,01239$
	ljmp	00160$
01239$:
	cjne	r4,#0x2e,01240$
	ljmp	00109$
01240$:
	cjne	r4,#0x2f,01241$
	ljmp	00175$
01241$:
	cjne	r4,#0x3c,01242$
	ljmp	00237$
01242$:
	cjne	r4,#0x3e,01243$
	ljmp	00223$
01243$:
	cjne	r4,#0x4d,01244$
	ljmp	00127$
01244$:
	cjne	r4,#0x50,01245$
	ljmp	00113$
01245$:
	cjne	r4,#0x54,01246$
	ljmp	00145$
01246$:
	cjne	r4,#0x55,01247$
	ljmp	00139$
01247$:
	cjne	r4,#0x56,01248$
	ljmp	00105$
01248$:
	cjne	r4,#0x58,01249$
	ljmp	00152$
01249$:
	cjne	r4,#0x5c,01250$
	ljmp	00175$
01250$:
	cjne	r4,#0x5d,01251$
	ljmp	00230$
01251$:
	cjne	r4,#0x5e,01252$
	ljmp	00216$
01252$:
	cjne	r4,#0x6d,01253$
	ljmp	00121$
01253$:
	cjne	r4,#0x70,01254$
	ljmp	00109$
01254$:
	cjne	r4,#0x75,01255$
	ljmp	00133$
01255$:
	cjne	r4,#0x76,01256$
	sjmp	00101$
01256$:
	cjne	r4,#0x78,01257$
	ljmp	00114$
01257$:
	cjne	r4,#0x7c,01258$
	ljmp	00209$
01258$:
	cjne	r4,#0x7e,01259$
	ljmp	00244$
01259$:
	ljmp	00248$
;	calc.c:141: case 'v':
00101$:
;	calc.c:142: printstr("\r\n");
	mov	r7,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00353$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00251$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:142: printstr("\r\n");
	cjne	r7,#0x00,00353$
	inc	r6
	sjmp	00353$
00251$:
;	calc.c:143: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x12
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
	mov	r7,#___str_4
	mov	r6,#(___str_4 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00356$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01263$
	ljmp	00249$
01263$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:143: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
	cjne	r7,#0x00,00356$
	inc	r6
	sjmp	00356$
00103$:
;	calc.c:145: printstr("PSVTOP\t");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00359$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00255$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:145: printstr("PSVTOP\t");
	cjne	r7,#0x00,00359$
	inc	r6
	sjmp	00359$
00255$:
;	calc.c:146: printall(d0);
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	calc.c:72: printf("%08lx\t", d);
	push	ar7
	push	ar6
	push	ar5
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
;	calc.c:73: printf("% 11ld\t", d);
	mov	a,_bp
	add	a,#0x1d
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
;	calc.c:74: printf("%011lo\t", d);
	mov	a,_bp
	add	a,#0x1d
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
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:75: printbin(d);
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar2,@r0
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00361$:
;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar2
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,_bp
	add	a,#0x21
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	00502$
	mov	r3,#0x31
	mov	r4,#0x00
	sjmp	00503$
00502$:
	mov	r3,#0x30
	mov	r4,#0x00
00503$:
	mov	dpl,r3
	mov	dph,r4
	lcall	_putchar
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
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
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00361$
;	calc.c:147: printstr("\r\n");
	mov	r7,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00364$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01269$
	ljmp	00249$
01269$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:150: case 'V':
	cjne	r7,#0x00,00364$
	inc	r6
	sjmp	00364$
00105$:
;	calc.c:151: printstr("\r\n");
	mov	r7,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00367$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00262$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:151: printstr("\r\n");
	cjne	r7,#0x00,00367$
	inc	r6
	sjmp	00367$
00262$:
;	calc.c:152: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x12
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
	jz	01273$
	ljmp	00249$
01273$:
	mov	r7,#___str_4
	mov	r6,#(___str_4 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00370$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01274$
	ljmp	00249$
01274$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:155: case 'p':
	cjne	r7,#0x00,00370$
	inc	r6
	sjmp	00370$
00109$:
;	calc.c:156: printstr("\r\n");
	mov	r7,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00373$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00266$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:156: printstr("\r\n");
	cjne	r7,#0x00,00373$
	inc	r6
	sjmp	00373$
00266$:
;	calc.c:157: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x12
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
	mov	r7,#___str_4
	mov	r6,#(___str_4 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00376$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01279$
	ljmp	00249$
01279$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:157: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
	cjne	r7,#0x00,00376$
	inc	r6
	sjmp	00376$
00111$:
;	calc.c:159: printstr("PSPTOP\t");
	mov	r7,#___str_9
	mov	r6,#(___str_9 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00379$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00270$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:159: printstr("PSPTOP\t");
	cjne	r7,#0x00,00379$
	inc	r6
	sjmp	00379$
00270$:
;	calc.c:160: printall(d0);
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	calc.c:72: printf("%08lx\t", d);
	push	ar7
	push	ar6
	push	ar5
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
;	calc.c:73: printf("% 11ld\t", d);
	mov	a,_bp
	add	a,#0x1d
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
;	calc.c:74: printf("%011lo\t", d);
	mov	a,_bp
	add	a,#0x1d
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
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:75: printbin(d);
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar2,@r0
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00381$:
;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar2
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,_bp
	add	a,#0x21
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	00504$
	mov	r3,#0x31
	mov	r4,#0x00
	sjmp	00505$
00504$:
	mov	r3,#0x30
	mov	r4,#0x00
00505$:
	mov	dpl,r3
	mov	dph,r4
	lcall	_putchar
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
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
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00381$
;	calc.c:161: printstr("\r\n");
	mov	r7,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00384$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01285$
	ljmp	00249$
01285$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:164: case 'P':
	cjne	r7,#0x00,00384$
	inc	r6
	sjmp	00384$
00113$:
;	calc.c:165: printstr("\r\n");
	mov	r7,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00387$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00277$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:165: printstr("\r\n");
	cjne	r7,#0x00,00387$
	inc	r6
	sjmp	00387$
00277$:
;	calc.c:166: (void)dump_pop(_ctx, delta);
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_dump_pop
	dec	sp
	dec	sp
	dec	sp
;	calc.c:167: break;
	ljmp	00249$
;	calc.c:168: case 'x':
00114$:
;	calc.c:169: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x07
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
	jnz	00119$
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00390$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01290$
	ljmp	00249$
01290$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:169: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00390$
	inc	r6
	sjmp	00390$
00119$:
;	calc.c:170: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x19
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x07
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
	jnz	00116$
;	calc.c:171: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x15
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
;	calc.c:172: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00393$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01293$
	ljmp	00249$
01293$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:172: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00393$
	inc	r6
	sjmp	00393$
00116$:
;	calc.c:174: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x15
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
;	calc.c:175: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x19
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
;	calc.c:177: break;
	ljmp	00249$
;	calc.c:178: case 'm':
00121$:
;	calc.c:179: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x07
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
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00396$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01296$
	ljmp	00249$
01296$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:179: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00396$
	inc	r6
	sjmp	00396$
00125$:
;	calc.c:181: if (!stack_push(ctx->ss, d0)) {
	mov	a,_bp
	add	a,#0x12
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
	add	a,#0x15
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
	jz	01298$
	ljmp	00249$
01298$:
;	calc.c:182: printstr("\r\nsecondary stack overflow\r\n");
	mov	r7,#___str_11
	mov	r6,#(___str_11 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00399$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00285$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:182: printstr("\r\nsecondary stack overflow\r\n");
	cjne	r7,#0x00,00399$
	inc	r6
	sjmp	00399$
00285$:
;	calc.c:183: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x15
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
;	calc.c:187: case 'M':
00127$:
;	calc.c:188: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x07
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
	mov	r7,#___str_12
	mov	r6,#(___str_12 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00402$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01302$
	ljmp	00249$
01302$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:188: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
	cjne	r7,#0x00,00402$
	inc	r6
	sjmp	00402$
00131$:
;	calc.c:190: if (!stack_push(ctx->ps, d0)) {
	mov	a,_bp
	add	a,#0x12
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
	add	a,#0x15
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
	jz	01304$
	ljmp	00249$
01304$:
;	calc.c:191: printstr("\r\nstack overflow\r\n");
	mov	r7,#___str_13
	mov	r6,#(___str_13 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00405$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00289$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:191: printstr("\r\nstack overflow\r\n");
	cjne	r7,#0x00,00405$
	inc	r6
	sjmp	00405$
00289$:
;	calc.c:192: (void)stack_push(ctx->ss, d0);
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x15
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
;	calc.c:195: break;
	ljmp	00249$
;	calc.c:196: case 'u':
00133$:
;	calc.c:197: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x12
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
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00408$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01308$
	ljmp	00249$
01308$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:197: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00408$
	inc	r6
	sjmp	00408$
00137$:
;	calc.c:198: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
	mov	a,_bp
	add	a,#0x12
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
	add	a,#0x15
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
	jz	01310$
	ljmp	00249$
01310$:
	mov	r7,#___str_11
	mov	r6,#(___str_11 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00411$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01311$
	ljmp	00249$
01311$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:200: case 'U':
	cjne	r7,#0x00,00411$
	inc	r6
	sjmp	00411$
00139$:
;	calc.c:201: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x12
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
	mov	r7,#___str_12
	mov	r6,#(___str_12 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00414$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01314$
	ljmp	00249$
01314$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:201: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
	cjne	r7,#0x00,00414$
	inc	r6
	sjmp	00414$
00143$:
;	calc.c:202: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
	mov	a,_bp
	add	a,#0x12
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
	add	a,#0x15
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
	jz	01316$
	ljmp	00249$
01316$:
	mov	r7,#___str_13
	mov	r6,#(___str_13 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00417$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01317$
	ljmp	00249$
01317$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:204: case 'T':
	cjne	r7,#0x00,00417$
	inc	r6
	sjmp	00417$
00145$:
;	calc.c:205: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x07
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
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00420$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01320$
	ljmp	00249$
01320$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:205: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00420$
	inc	r6
	sjmp	00420$
00150$:
;	calc.c:207: if (!stack_pop(ctx->ss, &d1)) {
	mov	a,_bp
	add	a,#0x19
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
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
;	calc.c:208: printstr("\r\nsecondary stack underflow\r\n");
	mov	r7,#___str_12
	mov	r6,#(___str_12 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00423$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00301$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:208: printstr("\r\nsecondary stack underflow\r\n");
	cjne	r7,#0x00,00423$
	inc	r6
	sjmp	00423$
00301$:
;	calc.c:209: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x15
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
;	calc.c:211: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x19
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
;	calc.c:212: (void)stack_push(ctx->ss, d0);
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
	mov	a,_bp
	add	a,#0x15
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
;	calc.c:215: break;
	ljmp	00249$
;	calc.c:216: case 'X':
00152$:
;	calc.c:217: t0 = ctx->ps;
	mov	a,_bp
	add	a,#0x12
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
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	calc.c:218: ctx->ps = ctx->ss;
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x07
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
	add	a,#0x0b
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
;	calc.c:219: ctx->ss = t0;
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:220: break;
	ljmp	00249$
;	calc.c:221: case '+':
00153$:
;	calc.c:222: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x12
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
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00426$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01326$
	ljmp	00249$
01326$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:222: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00426$
	inc	r6
	sjmp	00426$
00158$:
;	calc.c:223: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x19
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
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
;	calc.c:224: (void)stack_push(ctx->ps, d0);
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
	add	a,#0x15
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
;	calc.c:225: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00429$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01329$
	ljmp	00249$
01329$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:225: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00429$
	inc	r6
	sjmp	00429$
00155$:
;	calc.c:227: d1 += d0;
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,_bp
	add	a,#0x15
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
;	calc.c:228: (void)stack_push(ctx->ps, d1);
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
	add	a,#0x19
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
;	calc.c:230: break;
	ljmp	00249$
;	calc.c:231: case '-':
00160$:
;	calc.c:232: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x12
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
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00432$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01332$
	ljmp	00249$
01332$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:232: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00432$
	inc	r6
	sjmp	00432$
00165$:
;	calc.c:233: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x19
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
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
;	calc.c:234: (void)stack_push(ctx->ps, d0);
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
	add	a,#0x15
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
;	calc.c:235: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00435$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01335$
	ljmp	00249$
01335$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:235: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00435$
	inc	r6
	sjmp	00435$
00162$:
;	calc.c:237: d1 -= d0;
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,_bp
	add	a,#0x15
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
;	calc.c:238: (void)stack_push(ctx->ps, d1);
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
	add	a,#0x19
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
;	calc.c:240: break;
	ljmp	00249$
;	calc.c:241: case '*':
00167$:
;	calc.c:242: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x12
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
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00438$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01338$
	ljmp	00249$
01338$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:242: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00438$
	inc	r6
	sjmp	00438$
00172$:
;	calc.c:243: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x19
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
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
;	calc.c:244: (void)stack_push(ctx->ps, d0);
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
	add	a,#0x15
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
;	calc.c:245: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00441$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01341$
	ljmp	00249$
01341$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:245: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00441$
	inc	r6
	sjmp	00441$
00169$:
;	calc.c:247: d1 *= d0;
	mov	a,_bp
	add	a,#0x15
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
	add	a,#0x19
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
	add	a,#0x19
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	calc.c:248: (void)stack_push(ctx->ps, d1);
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
	add	a,#0x19
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
;	calc.c:250: break;
	ljmp	00249$
;	calc.c:252: case '\\':
00175$:
;	calc.c:253: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x15
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x12
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
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00444$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01344$
	ljmp	00249$
01344$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:253: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00444$
	inc	r6
	sjmp	00444$
00186$:
;	calc.c:254: else if (!stack_pop(ctx->ps, &d1)) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x19
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
;	calc.c:255: (void)stack_push(ctx->ps, d0);
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
	add	a,#0x15
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
;	calc.c:256: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00447$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01347$
	ljmp	00249$
01347$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:256: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00447$
	inc	r6
	sjmp	00447$
00183$:
;	calc.c:257: } else if (!d0) {
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	01349$
	ljmp	00180$
01349$:
;	calc.c:258: (void)stack_push(ctx->ps, d1);
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
	add	a,#0x19
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
;	calc.c:259: (void)stack_push(ctx->ps, d0);			
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
	add	a,#0x15
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
;	calc.c:260: printstr("\r\ndivision by zero\r\n");
	mov	r7,#___str_14
	mov	r6,#(___str_14 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00450$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01350$
	ljmp	00249$
01350$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:260: printstr("\r\ndivision by zero\r\n");
	cjne	r7,#0x00,00450$
	inc	r6
	sjmp	00450$
00180$:
;	calc.c:262: if (ctx->digit[0] == '/') d1 /= d0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2f,00177$
	mov	a,_bp
	add	a,#0x15
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
	add	a,#0x19
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
	add	a,#0x19
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
;	calc.c:263: else d1 = (unsigned long)d1 / (unsigned long)d0;
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
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
	add	a,#0x0e
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
	add	a,#0x19
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
00178$:
;	calc.c:264: (void)stack_push(ctx->ps, d1);
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
	add	a,#0x19
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
;	calc.c:266: break;
	ljmp	00249$
;	calc.c:268: case '#':
00189$:
;	calc.c:269: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x15
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
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
	add	a,#0x0e
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
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00453$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01355$
	ljmp	00249$
01355$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:269: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00453$
	inc	r6
	sjmp	00453$
00200$:
;	calc.c:270: else if (!stack_pop(ctx->ps, &d1)) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x19
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x0e
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
;	calc.c:271: (void)stack_push(ctx->ps, d0);
	mov	a,_bp
	add	a,#0x0e
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
	add	a,#0x15
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
;	calc.c:272: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00456$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01358$
	ljmp	00249$
01358$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:272: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00456$
	inc	r6
	sjmp	00456$
00197$:
;	calc.c:273: } else if (!d0) {
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	01360$
	ljmp	00194$
01360$:
;	calc.c:274: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x0e
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
	add	a,#0x19
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
;	calc.c:275: (void)stack_push(ctx->ps, d0);			
	mov	a,_bp
	add	a,#0x0e
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
	add	a,#0x15
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
;	calc.c:276: printstr("\r\ndivision by zero\r\n");
	mov	r7,#___str_14
	mov	r6,#(___str_14 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00459$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01361$
	ljmp	00249$
01361$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:276: printstr("\r\ndivision by zero\r\n");
	cjne	r7,#0x00,00459$
	inc	r6
	sjmp	00459$
00194$:
;	calc.c:278: if (ctx->digit[0] == '%') d1 %= d0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x25,00191$
	mov	a,_bp
	add	a,#0x15
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
	add	a,#0x19
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
	add	a,#0x19
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
;	calc.c:279: else d1 = (unsigned long)d1 % (unsigned long)d0;
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x15
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
	add	a,#0x07
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
	add	a,#0x19
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00192$:
;	calc.c:280: (void)stack_push(ctx->ps, d1);
	mov	a,_bp
	add	a,#0x0e
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
	add	a,#0x19
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
;	calc.c:282: break;
	ljmp	00249$
;	calc.c:283: case '&':
00202$:
;	calc.c:284: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x12
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
	add	a,#0x0e
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
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00462$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01366$
	ljmp	00249$
01366$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:284: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00462$
	inc	r4
	sjmp	00462$
00207$:
;	calc.c:285: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x19
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
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
	add	a,#0x0e
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
;	calc.c:286: (void)stack_push(ctx->ps, d0);
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
	add	a,#0x15
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
;	calc.c:287: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00465$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01369$
	ljmp	00249$
01369$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:287: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00465$
	inc	r4
	sjmp	00465$
00204$:
;	calc.c:289: d1 &= d0;
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,_bp
	add	a,#0x15
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
;	calc.c:290: (void)stack_push(ctx->ps, d1);
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
	add	a,#0x19
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
;	calc.c:292: break;
	ljmp	00249$
;	calc.c:293: case '|':
00209$:
;	calc.c:294: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x12
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
	add	a,#0x0e
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
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00468$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01372$
	ljmp	00249$
01372$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:294: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00468$
	inc	r4
	sjmp	00468$
00214$:
;	calc.c:295: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x19
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
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
	add	a,#0x0e
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
;	calc.c:296: (void)stack_push(ctx->ps, d0);
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
	add	a,#0x15
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
;	calc.c:297: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00471$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01375$
	ljmp	00249$
01375$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:297: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00471$
	inc	r4
	sjmp	00471$
00211$:
;	calc.c:299: d1 |= d0;
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,_bp
	add	a,#0x15
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
;	calc.c:300: (void)stack_push(ctx->ps, d1);
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
	add	a,#0x19
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
;	calc.c:302: break;
	ljmp	00249$
;	calc.c:303: case '^':
00216$:
;	calc.c:304: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x12
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
	add	a,#0x0e
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
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00474$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01378$
	ljmp	00249$
01378$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:304: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00474$
	inc	r4
	sjmp	00474$
00221$:
;	calc.c:305: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x19
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
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
	add	a,#0x0e
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
;	calc.c:306: (void)stack_push(ctx->ps, d0);
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
	add	a,#0x15
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
;	calc.c:307: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00477$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01381$
	ljmp	00249$
01381$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:307: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00477$
	inc	r4
	sjmp	00477$
00218$:
;	calc.c:309: d1 ^= d0;
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,_bp
	add	a,#0x15
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
;	calc.c:310: (void)stack_push(ctx->ps, d1);
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
	add	a,#0x19
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
;	calc.c:312: break;
	ljmp	00249$
;	calc.c:313: case '>':
00223$:
;	calc.c:314: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x12
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
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00480$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01384$
	ljmp	00249$
01384$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:314: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00480$
	inc	r4
	sjmp	00480$
00228$:
;	calc.c:315: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x19
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
;	calc.c:316: (void)stack_push(ctx->ps, d0);
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
	mov	a,_bp
	add	a,#0x15
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
;	calc.c:317: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00483$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01387$
	ljmp	00249$
01387$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:317: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00483$
	inc	r4
	sjmp	00483$
00225$:
;	calc.c:319: d1 = (unsigned long)d1 >> d0;
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	b,@r0
	inc	b
	sjmp	01390$
01389$:
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
01390$:
	djnz	b,01389$
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:320: (void)stack_push(ctx->ps, d1);
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
	mov	a,_bp
	add	a,#0x19
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
;	calc.c:322: break;
	ljmp	00249$
;	calc.c:323: case ']':
00230$:
;	calc.c:324: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x12
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
	add	a,#0x0e
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
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00486$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01392$
	ljmp	00249$
01392$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:324: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00486$
	inc	r4
	sjmp	00486$
00235$:
;	calc.c:325: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x19
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
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
	add	a,#0x0e
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
;	calc.c:326: (void)stack_push(ctx->ps, d0);
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
	add	a,#0x15
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
;	calc.c:327: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00489$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01395$
	ljmp	00249$
01395$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:327: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00489$
	inc	r4
	sjmp	00489$
00232$:
;	calc.c:329: d1 >>= d0;
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,_bp
	add	a,#0x19
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
	sjmp	01398$
01397$:
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
01398$:
	djnz	b,01397$
;	calc.c:330: (void)stack_push(ctx->ps, d1);
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
	add	a,#0x19
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
;	calc.c:332: break;
	ljmp	00249$
;	calc.c:333: case '<':
00237$:
;	calc.c:334: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x12
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
	add	a,#0x0e
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
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00492$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01400$
	ljmp	00249$
01400$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:334: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00492$
	inc	r4
	sjmp	00492$
00242$:
;	calc.c:335: else if (!stack_pop(ctx->ps, &d1)) {
	mov	a,_bp
	add	a,#0x19
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
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
	add	a,#0x0e
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
;	calc.c:336: (void)stack_push(ctx->ps, d0);
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
	add	a,#0x15
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
;	calc.c:337: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00495$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01403$
	ljmp	00249$
01403$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:337: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00495$
	inc	r4
	sjmp	00495$
00239$:
;	calc.c:339: d1 <<= d0;
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	sjmp	01406$
01405$:
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
01406$:
	djnz	b,01405$
;	calc.c:340: (void)stack_push(ctx->ps, d1);
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
	add	a,#0x19
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
;	calc.c:342: break;
	ljmp	00249$
;	calc.c:343: case '~':
00244$:
;	calc.c:344: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x15
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x12
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
	add	a,#0x0e
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
	mov	r5,#___str_10
	mov	r4,#(___str_10 >> 8)
	mov	r3,#0x80
;	calc.c:59: return;
00498$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jz	00249$
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:344: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00498$
	inc	r4
	sjmp	00498$
00246$:
;	calc.c:346: d0 = ~d0;
	mov	a,_bp
	add	a,#0x15
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
;	calc.c:347: (void)stack_push(ctx->ps, d0);
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
	add	a,#0x15
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
;	calc.c:349: break;
;	calc.c:350: default:
	sjmp	00249$
00248$:
;	calc.c:351: return UNDEF;
	mov	dptr,#0x8000
;	calc.c:352: }
	sjmp	00500$
00249$:
;	calc.c:354: return 1;
	mov	dptr,#0x0001
00500$:
;	calc.c:355: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'push_acc'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to stack - _bp +5
;ctx                       Allocated to registers r2 r3 r4 
;__1310720127              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	calc.c:357: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
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
;	calc.c:358: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	calc.c:362: ctx->acc_valid = 0;
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
;	calc.c:363: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
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
	mov	r5,#___str_13
	mov	r6,#(___str_13 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00109$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00102$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:363: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
	cjne	r5,#0x00,00109$
	inc	r6
	sjmp	00109$
00102$:
;	calc.c:365: if (delta->event == EVENT_OP) return operator(_ctx, delta);
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
	sjmp	00111$
00104$:
;	calc.c:366: else return 1;
	mov	dptr,#0x0001
00111$:
;	calc.c:367: }
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
;	calc.c:369: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function reset_acc
;	-----------------------------------------
_reset_acc:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:370: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
;	calc.c:372: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
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
;	calc.c:373: ctx->acc = 0l;
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
;	calc.c:375: return 1;
	mov	dptr,#0x0001
;	calc.c:376: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_base'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:378: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function reset_base
;	-----------------------------------------
_reset_base:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:379: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
;	calc.c:383: switch (ctx->digit[0]) {
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
;	calc.c:384: case 'H':
	cjne	r4,#0x6f,00105$
	sjmp	00104$
00101$:
;	calc.c:385: ctx->base = 16;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x10
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:386: break;
;	calc.c:387: case 'h':
	sjmp	00105$
00102$:
;	calc.c:388: ctx->base = 10;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:389: break;
;	calc.c:390: case 'O':
	sjmp	00105$
00103$:
;	calc.c:391: ctx->base = 8;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:392: break;
;	calc.c:393: case 'o':
	sjmp	00105$
00104$:
;	calc.c:394: ctx->base = 2;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:396: }
00105$:
;	calc.c:398: return 1;
	mov	dptr,#0x0001
;	calc.c:399: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'status'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +9
;vals                      Allocated to stack - _bp +14
;n                         Allocated to stack - _bp +12
;__1310720129              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720131              Allocated to registers r5 r6 r7 r4 
;d                         Allocated to registers 
;__1310720001              Allocated to registers 
;d                         Allocated to stack - _bp +22
;mask                      Allocated to stack - _bp +26
;__1310720133              Allocated to registers 
;s                         Allocated to registers r3 r4 r5 
;__1310720135              Allocated to registers r2 r3 r4 r5 
;d                         Allocated to registers 
;__1310720001              Allocated to registers 
;d                         Allocated to stack - _bp +22
;mask                      Allocated to stack - _bp +26
;__1310720137              Allocated to registers 
;s                         Allocated to registers r3 r4 r5 
;__1310720139              Allocated to registers r4 r5 r6 r7 
;d                         Allocated to registers 
;__1310720001              Allocated to registers 
;d                         Allocated to stack - _bp +22
;mask                      Allocated to stack - _bp +26
;__1310720141              Allocated to registers 
;s                         Allocated to registers r3 r4 r5 
;__1310720143              Allocated to registers r2 r3 r4 r5 
;d                         Allocated to registers 
;__1310720001              Allocated to registers 
;d                         Allocated to stack - _bp +22
;mask                      Allocated to stack - _bp +26
;__1310720145              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720147              Allocated to registers r4 r5 r6 r7 
;d                         Allocated to registers 
;__1310720001              Allocated to registers 
;d                         Allocated to stack - _bp +22
;mask                      Allocated to stack - _bp +26
;__1310720149              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	calc.c:401: static int status(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function status
;	-----------------------------------------
_status:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x1d
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:402: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:408: printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
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
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	calc.c:410: printstr("ACC\t");
	mov	r5,#___str_16
	mov	r6,#(___str_16 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00139$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:410: printstr("ACC\t");
	cjne	r5,#0x00,00139$
	inc	r6
	sjmp	00139$
00112$:
;	calc.c:411: if (ctx->acc_valid) printall(ctx->acc);
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
	jnz	00321$
	ljmp	00102$
00321$:
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
	mov	r4,a
;	calc.c:72: printf("%08lx\t", d);
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
;	calc.c:73: printf("% 11ld\t", d);
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
;	calc.c:74: printf("%011lo\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
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
;	calc.c:75: printbin(d);
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar4
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00141$:
;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,_bp
	add	a,#0x16
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
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00168$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00169$
00168$:
	mov	r6,#0x30
	mov	r7,#0x00
00169$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
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
	jnz	00141$
;	calc.c:411: if (ctx->acc_valid) printall(ctx->acc);
00102$:
;	calc.c:413: n = stack_peek2(ctx->ps, vals);
	mov	a,_bp
	add	a,#0x0e
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
;	calc.c:414: printstr("\r\nPSTOP1\t");
	mov	r3,#___str_17
	mov	r4,#(___str_17 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00144$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	jz	00117$
	push	ar6
	push	ar7
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r7
	lcall	_putchar
	inc	r3
	cjne	r3,#0x00,00325$
	inc	r4
00325$:
	pop	ar7
	pop	ar6
;	calc.c:414: printstr("\r\nPSTOP1\t");
	sjmp	00144$
00117$:
;	calc.c:415: if (n > 0) printall(vals[1]);
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00326$
	ljmp	00104$
00326$:
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
;	calc.c:72: printf("%08lx\t", d);
	push	ar7
	push	ar6
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
;	calc.c:73: printf("% 11ld\t", d);
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
;	calc.c:74: printf("%011lo\t", d);
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
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
	pop	ar6
	pop	ar7
;	calc.c:75: printbin(d);
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00146$:
;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x16
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
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	jz	00170$
	mov	r4,#0x31
	mov	r5,#0x00
	sjmp	00171$
00170$:
	mov	r4,#0x30
	mov	r5,#0x00
00171$:
	mov	dpl,r4
	mov	dph,r5
	lcall	_putchar
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
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
	jnz	00146$
;	calc.c:415: if (n > 0) printall(vals[1]);
00104$:
;	calc.c:416: printstr("\r\nPSTOP0\t");
	mov	r3,#___str_18
	mov	r4,#(___str_18 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00149$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	jz	00122$
	push	ar6
	push	ar7
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r7
	lcall	_putchar
	inc	r3
	cjne	r3,#0x00,00330$
	inc	r4
00330$:
	pop	ar7
	pop	ar6
;	calc.c:416: printstr("\r\nPSTOP0\t");
	sjmp	00149$
00122$:
;	calc.c:417: if (n > 1) printall(vals[0]);
	clr	c
	mov	a,#0x01
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00331$
	ljmp	00106$
00331$:
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
;	calc.c:72: printf("%08lx\t", d);
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
;	calc.c:73: printf("% 11ld\t", d);
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
;	calc.c:74: printf("%011lo\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
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
;	calc.c:75: printbin(d);
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00151$:
;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	push	ar1
	mov	a,_bp
	add	a,#0x16
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
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	pop	ar1
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00172$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00173$
00172$:
	mov	r6,#0x30
	mov	r7,#0x00
00173$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
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
	jnz	00151$
;	calc.c:417: if (n > 1) printall(vals[0]);
00106$:
;	calc.c:419: n = stack_peek2(ctx->ss, vals);
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
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:420: printstr("\r\nSSTOP1\t");
	mov	r3,#___str_19
	mov	r4,#(___str_19 >> 8)
	mov	r5,#0x80
;	calc.c:59: return;
00154$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	jz	00127$
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r7
	lcall	_putchar
	inc	r3
;	calc.c:420: printstr("\r\nSSTOP1\t");
	cjne	r3,#0x00,00154$
	inc	r4
	sjmp	00154$
00127$:
;	calc.c:421: if (n > 0) printall(vals[1]);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	c
	clr	a
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00336$
	ljmp	00108$
00336$:
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
;	calc.c:72: printf("%08lx\t", d);
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
;	calc.c:73: printf("% 11ld\t", d);
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
;	calc.c:74: printf("%011lo\t", d);
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
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
;	calc.c:75: printbin(d);
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00156$:
;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	push	ar1
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	anl	ar2,a
	inc	r0
	mov	a,@r0
	anl	ar3,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	pop	ar1
	mov	a,r2
	orl	a,r3
	orl	a,r5
	orl	a,r7
	jz	00174$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00175$
00174$:
	mov	r6,#0x30
	mov	r7,#0x00
00175$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
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
	jnz	00156$
;	calc.c:421: if (n > 0) printall(vals[1]);
00108$:
;	calc.c:422: printstr("\r\nSSTOP0\t");
	mov	r5,#___str_20
	mov	r6,#(___str_20 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00159$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:422: printstr("\r\nSSTOP0\t");
	cjne	r5,#0x00,00159$
	inc	r6
	sjmp	00159$
00132$:
;	calc.c:423: if (n > 1) printall(vals[0]);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	c
	mov	a,#0x01
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00341$
	ljmp	00110$
00341$:
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
;	calc.c:72: printf("%08lx\t", d);
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
;	calc.c:73: printf("% 11ld\t", d);
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
;	calc.c:74: printf("%011lo\t", d);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
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
;	calc.c:75: printbin(d);
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00161$:
;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,_bp
	add	a,#0x16
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
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00176$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00177$
00176$:
	mov	r6,#0x30
	mov	r7,#0x00
00177$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
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
	jnz	00161$
;	calc.c:423: if (n > 1) printall(vals[0]);
00110$:
;	calc.c:424: printstr("\r\n");
	mov	r5,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00164$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00137$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:424: printstr("\r\n");
	cjne	r5,#0x00,00164$
	inc	r6
	sjmp	00164$
00137$:
;	calc.c:426: return 1;
	mov	dptr,#0x0001
;	calc.c:427: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'help'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers 
;__1310720151              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720153              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720155              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720157              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720159              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720161              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720163              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720165              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720167              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720169              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720171              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720173              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720175              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720177              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720179              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720181              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720183              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720185              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720187              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720189              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720191              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720193              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720195              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720197              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720199              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720201              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720203              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720205              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720207              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720209              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720211              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:429: static int help(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function help
;	-----------------------------------------
_help:
	push	_bp
	mov	_bp,sp
;	calc.c:433: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
	mov	r5,#___str_21
	mov	r6,#(___str_21 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00164$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00102$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:433: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
	cjne	r5,#0x00,00164$
	inc	r6
	sjmp	00164$
00102$:
;	calc.c:434: printstr("p.\tpop top\r\n");
	mov	r5,#___str_22
	mov	r6,#(___str_22 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00167$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:434: printstr("p.\tpop top\r\n");
	cjne	r5,#0x00,00167$
	inc	r6
	sjmp	00167$
00104$:
;	calc.c:435: printstr("P\tpop stack\r\n");
	mov	r5,#___str_23
	mov	r6,#(___str_23 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00170$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00106$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:435: printstr("P\tpop stack\r\n");
	cjne	r5,#0x00,00170$
	inc	r6
	sjmp	00170$
00106$:
;	calc.c:436: printstr("v\tpeek top\r\n");
	mov	r5,#___str_24
	mov	r6,#(___str_24 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00173$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00108$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:436: printstr("v\tpeek top\r\n");
	cjne	r5,#0x00,00173$
	inc	r6
	sjmp	00173$
00108$:
;	calc.c:437: printstr("V\tpeek stack\r\n");
	mov	r5,#___str_25
	mov	r6,#(___str_25 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00176$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:437: printstr("V\tpeek stack\r\n");
	cjne	r5,#0x00,00176$
	inc	r6
	sjmp	00176$
00110$:
;	calc.c:438: printstr("i\treset acc\r\n");
	mov	r5,#___str_26
	mov	r6,#(___str_26 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00179$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:438: printstr("i\treset acc\r\n");
	cjne	r5,#0x00,00179$
	inc	r6
	sjmp	00179$
00112$:
;	calc.c:439: printstr("I\treset and discard acc\r\n");
	mov	r5,#___str_27
	mov	r6,#(___str_27 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00182$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:439: printstr("I\treset and discard acc\r\n");
	cjne	r5,#0x00,00182$
	inc	r6
	sjmp	00182$
00114$:
;	calc.c:440: printstr("x\texchange top 2\r\n");
	mov	r5,#___str_28
	mov	r6,#(___str_28 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00185$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:440: printstr("x\texchange top 2\r\n");
	cjne	r5,#0x00,00185$
	inc	r6
	sjmp	00185$
00116$:
;	calc.c:441: printstr("X\texchange stacks primary <-> secondary\r\n");
	mov	r5,#___str_29
	mov	r6,#(___str_29 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00188$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:441: printstr("X\texchange stacks primary <-> secondary\r\n");
	cjne	r5,#0x00,00188$
	inc	r6
	sjmp	00188$
00118$:
;	calc.c:442: printstr("T\texchange tops primary <-> secondary\r\n");
	mov	r5,#___str_30
	mov	r6,#(___str_30 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00191$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00120$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:442: printstr("T\texchange tops primary <-> secondary\r\n");
	cjne	r5,#0x00,00191$
	inc	r6
	sjmp	00191$
00120$:
;	calc.c:443: printstr("U\tcopy top secondary -> primary\r\n");
	mov	r5,#___str_31
	mov	r6,#(___str_31 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00194$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:443: printstr("U\tcopy top secondary -> primary\r\n");
	cjne	r5,#0x00,00194$
	inc	r6
	sjmp	00194$
00122$:
;	calc.c:444: printstr("u\tcopy top primary -> secondary\r\n");
	mov	r5,#___str_32
	mov	r6,#(___str_32 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00197$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:444: printstr("u\tcopy top primary -> secondary\r\n");
	cjne	r5,#0x00,00197$
	inc	r6
	sjmp	00197$
00124$:
;	calc.c:445: printstr("M\tmove top secondary -> primary\r\n");
	mov	r5,#___str_33
	mov	r6,#(___str_33 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00200$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:445: printstr("M\tmove top secondary -> primary\r\n");
	cjne	r5,#0x00,00200$
	inc	r6
	sjmp	00200$
00126$:
;	calc.c:446: printstr("m\tmove top primary -> secondary\r\n");
	mov	r5,#___str_34
	mov	r6,#(___str_34 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00203$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:446: printstr("m\tmove top primary -> secondary\r\n");
	cjne	r5,#0x00,00203$
	inc	r6
	sjmp	00203$
00128$:
;	calc.c:447: printstr("+\tadd top 2\r\n");
	mov	r5,#___str_35
	mov	r6,#(___str_35 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00206$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00130$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:447: printstr("+\tadd top 2\r\n");
	cjne	r5,#0x00,00206$
	inc	r6
	sjmp	00206$
00130$:
;	calc.c:448: printstr("-\tsubtract top 2\r\n");
	mov	r5,#___str_36
	mov	r6,#(___str_36 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00209$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:448: printstr("-\tsubtract top 2\r\n");
	cjne	r5,#0x00,00209$
	inc	r6
	sjmp	00209$
00132$:
;	calc.c:449: printstr("*\tmultiply top 2\r\n");
	mov	r5,#___str_37
	mov	r6,#(___str_37 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00212$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00134$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:449: printstr("*\tmultiply top 2\r\n");
	cjne	r5,#0x00,00212$
	inc	r6
	sjmp	00212$
00134$:
;	calc.c:450: printstr("/\tdivide top 2\r\n");
	mov	r5,#___str_38
	mov	r6,#(___str_38 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00215$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:450: printstr("/\tdivide top 2\r\n");
	cjne	r5,#0x00,00215$
	inc	r6
	sjmp	00215$
00136$:
;	calc.c:451: printstr("\\\tdivide top 2 unsigned\r\n");	
	mov	r5,#___str_39
	mov	r6,#(___str_39 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00218$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00138$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:451: printstr("\\\tdivide top 2 unsigned\r\n");	
	cjne	r5,#0x00,00218$
	inc	r6
	sjmp	00218$
00138$:
;	calc.c:452: printstr("%\tmodulus top 2\r\n");
	mov	r5,#___str_40
	mov	r6,#(___str_40 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00221$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:452: printstr("%\tmodulus top 2\r\n");
	cjne	r5,#0x00,00221$
	inc	r6
	sjmp	00221$
00140$:
;	calc.c:453: printstr("#\tmodulus top 2 unsigned\r\n");
	mov	r5,#___str_41
	mov	r6,#(___str_41 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00224$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00142$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:453: printstr("#\tmodulus top 2 unsigned\r\n");
	cjne	r5,#0x00,00224$
	inc	r6
	sjmp	00224$
00142$:
;	calc.c:454: printstr("&\tand top 2\r\n");
	mov	r5,#___str_42
	mov	r6,#(___str_42 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00227$:
;	calc.c:57: for (; *s; s++) putchar(*s);
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
;	calc.c:454: printstr("&\tand top 2\r\n");
	cjne	r5,#0x00,00227$
	inc	r6
	sjmp	00227$
00144$:
;	calc.c:455: printstr("|\tor top 2\r\n");
	mov	r5,#___str_43
	mov	r6,#(___str_43 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00230$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00146$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:455: printstr("|\tor top 2\r\n");
	cjne	r5,#0x00,00230$
	inc	r6
	sjmp	00230$
00146$:
;	calc.c:456: printstr("^\txor top 2\r\n");
	mov	r5,#___str_44
	mov	r6,#(___str_44 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00233$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00148$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:456: printstr("^\txor top 2\r\n");
	cjne	r5,#0x00,00233$
	inc	r6
	sjmp	00233$
00148$:
;	calc.c:457: printstr(">\tshift right top 2\r\n");
	mov	r5,#___str_45
	mov	r6,#(___str_45 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00236$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00150$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:457: printstr(">\tshift right top 2\r\n");
	cjne	r5,#0x00,00236$
	inc	r6
	sjmp	00236$
00150$:
;	calc.c:458: printstr("]\tarithmetic shift right top 2\r\n");
	mov	r5,#___str_46
	mov	r6,#(___str_46 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00239$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00152$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:458: printstr("]\tarithmetic shift right top 2\r\n");
	cjne	r5,#0x00,00239$
	inc	r6
	sjmp	00239$
00152$:
;	calc.c:459: printstr("<\tshift left top 2\r\n");
	mov	r5,#___str_47
	mov	r6,#(___str_47 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00242$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00154$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:459: printstr("<\tshift left top 2\r\n");
	cjne	r5,#0x00,00242$
	inc	r6
	sjmp	00242$
00154$:
;	calc.c:460: printstr("~\tbitwise not top\r\n");
	mov	r5,#___str_48
	mov	r6,#(___str_48 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00245$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00156$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:460: printstr("~\tbitwise not top\r\n");
	cjne	r5,#0x00,00245$
	inc	r6
	sjmp	00245$
00156$:
;	calc.c:461: printstr("s\tstatus\r\n");
	mov	r5,#___str_49
	mov	r6,#(___str_49 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00248$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00158$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:461: printstr("s\tstatus\r\n");
	cjne	r5,#0x00,00248$
	inc	r6
	sjmp	00248$
00158$:
;	calc.c:462: printstr("?\thelp\r\n");
	mov	r5,#___str_50
	mov	r6,#(___str_50 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00251$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00160$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:462: printstr("?\thelp\r\n");
	cjne	r5,#0x00,00251$
	inc	r6
	sjmp	00251$
00160$:
;	calc.c:463: printstr("q\tquit\r\n");
	mov	r5,#___str_51
	mov	r6,#(___str_51 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00254$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00162$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:463: printstr("q\tquit\r\n");
	cjne	r5,#0x00,00254$
	inc	r6
	sjmp	00254$
00162$:
;	calc.c:465: return 1;
	mov	dptr,#0x0001
;	calc.c:466: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;input                     Allocated to registers r6 r7 
;__1966080213              Allocated to registers 
;s                         Allocated to registers r2 r3 r4 
;__1310720215              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	calc.c:496: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	_bp,sp
	inc	sp
;	calc.c:499: giant = 0;
	mov	r0,#_giant
	mov	@r0,#0x00
;	calc.c:501: c.base = 10;
	mov	dptr,#_c
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	calc.c:502: c.acc = 0l;
	mov	dptr,#(_c + 0x0002)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	calc.c:503: c.acc_valid = (char)0;
	mov	dptr,#(_c + 0x0006)
	movx	@dptr,a
;	calc.c:504: c.digit[0] = c.digit[1] = '\0';
	mov	dptr,#(_c + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_c + 0x0007)
	movx	@dptr,a
;	calc.c:506: c.ps = &c.s0;
	mov	dptr,#(_c + 0x4011)
	mov	a,#(_c + 0x0009)
	movx	@dptr,a
	mov	a,#((_c + 0x0009) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	calc.c:507: c.ss = &c.s1;
	mov	dptr,#(_c + 0x4014)
	mov	a,#(_c + 0x200d)
	movx	@dptr,a
	mov	a,#((_c + 0x200d) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	calc.c:508: stack_init(c.ps);
	mov	dptr,#(_c + 0x0009)
	mov	b,#0x00
	lcall	_stack_init
;	calc.c:509: stack_init(c.ss);
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
;	calc.c:511: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
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
;	calc.c:513: (void)status(&c, deltas);
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
;	calc.c:515: while (1) {
00192$:
;	calc.c:516: input = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	calc.c:517: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
	mov	ar5,r6
	cjne	r5,#0x0d,00400$
	sjmp	00101$
00400$:
	cjne	r5,#0x0a,00102$
00101$:
	mov	r2,#___str_3
	mov	r3,#(___str_3 >> 8)
	mov	r4,#0x80
;	calc.c:59: return;
00199$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00103$
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
	inc	r2
	cjne	r2,#0x00,00404$
	inc	r3
00404$:
	pop	ar7
	pop	ar6
;	calc.c:517: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
	sjmp	00199$
00102$:
;	calc.c:518: else (void)putchar(input);
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
00103$:
;	calc.c:519: c.digit[0] = (char)input;
	mov	dptr,#(_c + 0x0007)
	mov	a,r5
	movx	@dptr,a
;	calc.c:521: if ((char)input == 'q') {
	cjne	r5,#0x71,00189$
;	calc.c:522: if (state_exec(&s, EVENT_TERM) <= 0) break;
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
;	calc.c:523: } else if ((char)input == 's') {
	cjne	r5,#0x73,00186$
;	calc.c:524: if (state_exec(&s, EVENT_STATUS) <= 0) break;
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
	jnc	00410$
	ljmp	00192$
00410$:
	ljmp	00193$
00186$:
;	calc.c:525: } else if ((char)input == '?') {
	cjne	r5,#0x3f,00183$
;	calc.c:526: if (state_exec(&s, EVENT_HELP) <= 0) break;
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
	jnc	00413$
	ljmp	00192$
00413$:
	ljmp	00193$
00183$:
;	calc.c:527: } else if ((char)input == 'i') {
	cjne	r5,#0x69,00180$
;	calc.c:528: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
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
	jnc	00416$
	ljmp	00192$
00416$:
	ljmp	00193$
00180$:
;	calc.c:529: } else if ((char)input == 'I') {
	cjne	r5,#0x49,00177$
;	calc.c:530: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
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
	jnc	00419$
	ljmp	00192$
00419$:
	ljmp	00193$
00177$:
;	calc.c:532: ((char)input == 'h') || ((char)input == 'H') ||
	cjne	r5,#0x68,00420$
	sjmp	00170$
00420$:
	cjne	r5,#0x48,00421$
	sjmp	00170$
00421$:
;	calc.c:533: ((char)input == 'o') || ((char)input == 'O')
	cjne	r5,#0x6f,00422$
	sjmp	00170$
00422$:
	cjne	r5,#0x4f,00171$
00170$:
;	calc.c:535: if (state_exec(&s, EVENT_BASE) <= 0) break;
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
	jnc	00425$
	ljmp	00192$
00425$:
	ljmp	00193$
00171$:
;	calc.c:536: } else if (isxdigit(input)) {
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	lcall	_isxdigit
	mov	a,dpl
	mov	b,dph
	pop	ar5
	orl	a,b
	jz	00168$
;	calc.c:537: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
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
	jnc	00427$
	ljmp	00192$
00427$:
	ljmp	00193$
00168$:
;	calc.c:539: ((char)input == 'p') || ((char)input == 'P') ||
	cjne	r5,#0x70,00428$
	sjmp	00159$
00428$:
	cjne	r5,#0x50,00429$
	sjmp	00159$
00429$:
;	calc.c:540: ((char)input == 'v') || ((char)input == 'V') ||
	cjne	r5,#0x76,00430$
	sjmp	00159$
00430$:
	cjne	r5,#0x56,00431$
	sjmp	00159$
00431$:
;	calc.c:541: ((char)input == '.') ||
	cjne	r5,#0x2e,00432$
	sjmp	00159$
00432$:
;	calc.c:542: ((char)input == 'x')
	cjne	r5,#0x78,00160$
00159$:
;	calc.c:544: if (state_exec(&s, EVENT_OP) <= 0) break;
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
	jnc	00435$
	ljmp	00192$
00435$:
	ljmp	00193$
00160$:
;	calc.c:546: ((char)input == 'X') || ((char)input == 'T') ||
	cjne	r5,#0x58,00436$
	sjmp	00151$
00436$:
	cjne	r5,#0x54,00437$
	sjmp	00151$
00437$:
;	calc.c:547: ((char)input == 'm') || ((char)input == 'M') ||
	cjne	r5,#0x6d,00438$
	sjmp	00151$
00438$:
	cjne	r5,#0x4d,00439$
	sjmp	00151$
00439$:
;	calc.c:548: ((char)input == 'u') || ((char)input == 'U')
	cjne	r5,#0x75,00440$
	sjmp	00151$
00440$:
	cjne	r5,#0x55,00152$
00151$:
;	calc.c:550: if (state_exec(&s, EVENT_OP) <= 0) break;
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
	jnc	00443$
	ljmp	00192$
00443$:
	ljmp	00193$
00152$:
;	calc.c:552: ((char)input == '+') || ((char)input == '-')
	cjne	r5,#0x2b,00444$
	sjmp	00147$
00444$:
	cjne	r5,#0x2d,00148$
00147$:
;	calc.c:554: if (state_exec(&s, EVENT_OP) <= 0) break;
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
	jnc	00447$
	ljmp	00192$
00447$:
	ljmp	00193$
00148$:
;	calc.c:556: ((char)input == '*') ||
	cjne	r5,#0x2a,00448$
	sjmp	00140$
00448$:
;	calc.c:557: ((char)input == '/') || ((char)input == '\\') ||
	cjne	r5,#0x2f,00449$
	sjmp	00140$
00449$:
	cjne	r5,#0x5c,00450$
	sjmp	00140$
00450$:
;	calc.c:558: ((char)input == '%') || ((char)input == '#')
	cjne	r5,#0x25,00451$
	sjmp	00140$
00451$:
	cjne	r5,#0x23,00141$
00140$:
;	calc.c:560: if (state_exec(&s, EVENT_OP) <= 0) break;
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
;	calc.c:562: ((char)input == '&') ||
	cjne	r5,#0x26,00455$
	sjmp	00131$
00455$:
;	calc.c:563: ((char)input == '|') || ((char)input == '^') ||
	cjne	r5,#0x7c,00456$
	sjmp	00131$
00456$:
	cjne	r5,#0x5e,00457$
	sjmp	00131$
00457$:
;	calc.c:564: ((char)input == '~') ||
	cjne	r5,#0x7e,00458$
	sjmp	00131$
00458$:
;	calc.c:565: ((char)input == '>') || ((char)input == ']') ||
	cjne	r5,#0x3e,00459$
	sjmp	00131$
00459$:
	cjne	r5,#0x5d,00460$
	sjmp	00131$
00460$:
;	calc.c:566: ((char)input == '<')
	cjne	r5,#0x3c,00132$
00131$:
;	calc.c:568: if (state_exec(&s, EVENT_OP) <= 0) break;
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
;	calc.c:570: if (state_exec(&s, EVENT_DELIM) <= 0) break;
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
	jnc	00464$
	ljmp	00192$
00464$:
00193$:
;	calc.c:574: printstr("TERM\r\n");
	mov	r5,#___str_52
	mov	r6,#(___str_52 >> 8)
	mov	r7,#0x80
;	calc.c:59: return;
00202$:
;	calc.c:57: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00197$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:574: printstr("TERM\r\n");
	cjne	r5,#0x00,00202$
	inc	r6
	sjmp	00202$
00197$:
;	calc.c:576: PCON |= 2;
	orl	_PCON,#0x02
;	calc.c:578: return;
;	calc.c:579: }
	dec	sp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "%08lx"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "% 11ld"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "%011lo"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "PSPA"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "SSPA"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "PSVA"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "PSVTOP"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "PSPTOP"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0d
	.db 0x0a
	.ascii "stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0d
	.db 0x0a
	.ascii "secondary stack overflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0d
	.db 0x0a
	.ascii "secondary stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0d
	.db 0x0a
	.ascii "stack overflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0d
	.db 0x0a
	.ascii "division by zero"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0d
	.db 0x0a
	.ascii "PS = %p, SS = %p, base = %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "ACC"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0d
	.db 0x0a
	.ascii "PSTOP1"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0d
	.db 0x0a
	.ascii "PSTOP0"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0d
	.db 0x0a
	.ascii "SSTOP1"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0d
	.db 0x0a
	.ascii "SSTOP0"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
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
___str_22:
	.ascii "p."
	.db 0x09
	.ascii "pop top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "P"
	.db 0x09
	.ascii "pop stack"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "v"
	.db 0x09
	.ascii "peek top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "V"
	.db 0x09
	.ascii "peek stack"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "i"
	.db 0x09
	.ascii "reset acc"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "I"
	.db 0x09
	.ascii "reset and discard acc"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "x"
	.db 0x09
	.ascii "exchange top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "X"
	.db 0x09
	.ascii "exchange stacks primary <-> secondary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "T"
	.db 0x09
	.ascii "exchange tops primary <-> secondary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "U"
	.db 0x09
	.ascii "copy top secondary -> primary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "u"
	.db 0x09
	.ascii "copy top primary -> secondary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "M"
	.db 0x09
	.ascii "move top secondary -> primary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "m"
	.db 0x09
	.ascii "move top primary -> secondary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "+"
	.db 0x09
	.ascii "add top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "-"
	.db 0x09
	.ascii "subtract top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "*"
	.db 0x09
	.ascii "multiply top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "/"
	.db 0x09
	.ascii "divide top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.db 0x5c
	.db 0x09
	.ascii "divide top 2 unsigned"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.ascii "%"
	.db 0x09
	.ascii "modulus top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.ascii "#"
	.db 0x09
	.ascii "modulus top 2 unsigned"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "&"
	.db 0x09
	.ascii "and top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii "|"
	.db 0x09
	.ascii "or top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.ascii "^"
	.db 0x09
	.ascii "xor top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.ascii ">"
	.db 0x09
	.ascii "shift right top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.ascii "]"
	.db 0x09
	.ascii "arithmetic shift right top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.ascii "<"
	.db 0x09
	.ascii "shift left top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.ascii "~"
	.db 0x09
	.ascii "bitwise not top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.ascii "s"
	.db 0x09
	.ascii "status"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii "?"
	.db 0x09
	.ascii "help"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.ascii "q"
	.db 0x09
	.ascii "quit"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
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
