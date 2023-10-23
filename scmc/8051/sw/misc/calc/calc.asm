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
	.globl _stack_iter_peek
	.globl _stack_peek
	.globl _stack_pop
	.globl _stack_push
	.globl _stack_init
	.globl _state_exec
	.globl _state_init
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
_s:
	.ds 12
_c:
	.ds 8205
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_deltas:
	.ds 160
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
;	calc.c:15: int putchar(int c) __naked {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	naked function: no prologue.
;	calc.c:20: __endasm;
	mov	a, dpl
	ljmp	0x0030
;	calc.c:21: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	calc.c:23: int getchar(void) __naked {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	naked function: no prologue.
;	calc.c:29: __endasm;
	lcall	0x0032
	mov	dpl, a
	mov	dph, #0
	ret
;	calc.c:30: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_poll'
;------------------------------------------------------------
;	calc.c:32: int getchar_poll(void) __naked {
;	-----------------------------------------
;	 function getchar_poll
;	-----------------------------------------
_getchar_poll:
;	naked function: no prologue.
;	calc.c:44: __endasm;
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
;	calc.c:45: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'printstr'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	calc.c:47: static inline void printstr(const char *s) {
;	-----------------------------------------
;	 function printstr
;	-----------------------------------------
_printstr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:50: return;
00103$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00101$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00101$:
;	calc.c:50: return;
;	calc.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printbin'
;------------------------------------------------------------
;d                         Allocated to stack - _bp +1
;mask                      Allocated to stack - _bp +5
;------------------------------------------------------------
;	calc.c:53: static inline void printbin(long d) {
;	-----------------------------------------
;	 function printbin
;	-----------------------------------------
_printbin:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
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
00102$:
;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
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
	jz	00106$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00107$
00106$:
	mov	r6,#0x30
	mov	r7,#0x00
00107$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
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
	jnz	00102$
;	calc.c:59: return;
;	calc.c:60: }
	mov	sp,_bp
	pop	_bp
	ret
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
;	calc.c:84: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function accumulate
;	-----------------------------------------
_accumulate:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0e
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:85: struct ctx *ctx = (struct ctx *)_ctx;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:90: if (!ctx->acc_valid) {
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
;	calc.c:91: ctx->acc_valid = 1;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	calc.c:92: ctx->acc = 0l;
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
;	calc.c:95: d = strtol(ctx->digit, NULL, ctx->base);
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
;	calc.c:96: ctx->acc = ctx->acc * (long)ctx->base + d;
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
;	calc.c:98: return 1;
	mov	dptr,#0x0001
;	calc.c:99: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_pop'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +5
;d                         Allocated to stack - _bp +8
;r                         Allocated to stack - _bp +2
;__1310720001              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080003              Allocated to registers 
;s                         Allocated to registers r4 r5 r6 
;__1966080005              Allocated to registers 
;s                         Allocated to registers r4 r5 r6 
;__1966080007              Allocated to registers r3 r4 r5 r6 
;d                         Allocated to stack - _bp +12
;mask                      Allocated to stack - _bp +16
;__1966080009              Allocated to registers 
;s                         Allocated to registers r4 r5 r6 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;------------------------------------------------------------
;	calc.c:101: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function dump_pop
;	-----------------------------------------
_dump_pop:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x13
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:102: struct ctx *ctx = (struct ctx *)_ctx;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:106: if (delta->event == EVENT_TERM) printstr("\r\n");
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
	cjne	r6,#0x07,00102$
	cjne	r7,#0x00,00102$
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00122$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00102$
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	mov	r4,#0x00
	mov	dpl,r3
	mov	dph,r4
	lcall	_putchar
	inc	r5
	cjne	r5,#0x00,00210$
	inc	r6
00210$:
	pop	ar4
	pop	ar3
	pop	ar2
;	calc.c:106: if (delta->event == EVENT_TERM) printstr("\r\n");
	sjmp	00122$
00102$:
;	calc.c:108: r = stack_pop(&ctx->s, &d);
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x08
	mov	r7,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	mov	r0,_bp
	inc	r0
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
	mov	b,r6
	lcall	_stack_pop
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	calc.c:109: if (!r) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	orl	a,r6
	jnz	00154$
;	calc.c:110: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x07,00212$
	cjne	r3,#0x00,00212$
	ljmp	00110$
00212$:
	mov	r4,#___str_1
	mov	r5,#(___str_1 >> 8)
	mov	r6,#0x80
;	calc.c:50: return;
00125$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	jnz	00213$
	ljmp	00110$
00213$:
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
	inc	r4
;	calc.c:111: } else while (r > 0) {
	cjne	r4,#0x00,00125$
	inc	r5
	sjmp	00125$
00154$:
00105$:
	mov	r0,_bp
	inc	r0
	inc	r0
	clr	c
	clr	a
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00215$
	ljmp	00110$
00215$:
;	calc.c:112: printstr("VA ");
	mov	r4,#___str_2
	mov	r5,#(___str_2 >> 8)
	mov	r6,#0x80
;	calc.c:50: return;
00128$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	jz	00116$
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
	inc	r4
;	calc.c:112: printstr("VA ");
	cjne	r4,#0x00,00128$
	inc	r5
	sjmp	00128$
00116$:
;	calc.c:113: printf("% 11ld / %08lx / ", d, d);
	push	ar7
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
	inc	r0
	mov	a,@r0
	push	acc
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
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
	pop	ar7
;	calc.c:114: printbin(d);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00130$:
;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	push	ar7
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	anl	ar3,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	mov	a,r3
	orl	a,r5
	orl	a,r6
	orl	a,r7
	pop	ar7
	jz	00137$
	mov	r5,#0x31
	mov	r6,#0x00
	sjmp	00138$
00137$:
	mov	r5,#0x30
	mov	r6,#0x00
00138$:
	mov	dpl,r5
	mov	dph,r6
	lcall	_putchar
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x10
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
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00130$
;	calc.c:115: printstr("\r\n");
	mov	r4,#___str_0
	mov	r5,#(___str_0 >> 8)
	mov	r6,#0x80
;	calc.c:50: return;
00133$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	jz	00120$
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
	inc	r4
;	calc.c:115: printstr("\r\n");
	cjne	r4,#0x00,00133$
	inc	r5
	sjmp	00133$
00120$:
;	calc.c:116: r = stack_pop(&ctx->s, &d);
	mov	ar4,r7
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	pop	ar7
	ljmp	00105$
00110$:
;	calc.c:119: return 1;
	mov	dptr,#0x0001
;	calc.c:120: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_peek'
;------------------------------------------------------------
;d                         Allocated to stack - _bp -6
;_ctx                      Allocated to registers 
;__1310720011              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720013              Allocated to registers r4 r5 r6 r7 
;d                         Allocated to stack - _bp +1
;mask                      Allocated to stack - _bp +5
;__1310720015              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:122: static int dump_peek(void *_ctx, long d) __reentrant {
;	-----------------------------------------
;	 function dump_peek
;	-----------------------------------------
_dump_peek:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x08
	mov	sp,a
;	calc.c:125: printstr("PA ");
	mov	r5,#___str_4
	mov	r6,#(___str_4 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00108$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:125: printstr("PA ");
	cjne	r5,#0x00,00108$
	inc	r6
	sjmp	00108$
00102$:
;	calc.c:126: printf("% 11ld / %08lx / ", d, d);
	mov	a,_bp
	add	a,#0xfa
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
	add	a,#0xfa
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
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	calc.c:127: printbin(d);
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
	mov	r0,_bp
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
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
00110$:
;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
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
	jz	00117$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00118$
00117$:
	mov	r6,#0x30
	mov	r7,#0x00
00118$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
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
	jnz	00110$
;	calc.c:128: printstr("\r\n");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00113$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:128: printstr("\r\n");
	cjne	r5,#0x00,00113$
	inc	r6
	sjmp	00113$
00106$:
;	calc.c:130: return 1;
	mov	dptr,#0x0001
;	calc.c:131: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'operator'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to stack - _bp +1
;ctx                       Allocated to stack - _bp +4
;d0                        Allocated to stack - _bp +7
;d1                        Allocated to stack - _bp +11
;__1966080017              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080019              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440021              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440023              Allocated to registers r4 r5 r6 r7 
;d                         Allocated to stack - _bp +15
;mask                      Allocated to stack - _bp +19
;__2621440025              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080027              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080029              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080031              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080033              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440035              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440037              Allocated to registers r4 r5 r6 r7 
;d                         Allocated to stack - _bp +15
;mask                      Allocated to stack - _bp +19
;__2621440039              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080041              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080043              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440045              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080047              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440049              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080051              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440053              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080055              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440057              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080059              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440061              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440063              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080065              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440067              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440069              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080071              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440073              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080075              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440077              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080079              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440081              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080083              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:133: static int operator(void *_ctx, delta_t *delta) __reentrant {
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
	add	a,#0x13
	mov	sp,a
;	calc.c:134: struct ctx *ctx = (struct ctx *)_ctx;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
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
;	calc.c:137: switch (ctx->digit[0]) {
	mov	a,_bp
	add	a,#0x04
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
	mov	r7,a
	cjne	r7,#0x25,00831$
	ljmp	00152$
00831$:
	cjne	r7,#0x26,00832$
	ljmp	00162$
00832$:
	cjne	r7,#0x2a,00833$
	ljmp	00135$
00833$:
	cjne	r7,#0x2b,00834$
	ljmp	00121$
00834$:
	cjne	r7,#0x2d,00835$
	ljmp	00128$
00835$:
	cjne	r7,#0x2e,00836$
	ljmp	00109$
00836$:
	cjne	r7,#0x2f,00837$
	ljmp	00142$
00837$:
	cjne	r7,#0x50,00838$
	ljmp	00105$
00838$:
	cjne	r7,#0x56,00839$
	ljmp	00113$
00839$:
	cjne	r7,#0x5e,00840$
	ljmp	00176$
00840$:
	cjne	r7,#0x70,00841$
	sjmp	00101$
00841$:
	cjne	r7,#0x76,00842$
	ljmp	00109$
00842$:
	cjne	r7,#0x78,00843$
	ljmp	00114$
00843$:
	cjne	r7,#0x7c,00844$
	ljmp	00169$
00844$:
	cjne	r7,#0x7e,00845$
	ljmp	00183$
00845$:
	ljmp	00187$
;	calc.c:138: case 'p':
00101$:
;	calc.c:139: printstr("\r\n");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00258$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00190$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:139: printstr("\r\n");
	cjne	r5,#0x00,00258$
	inc	r6
	sjmp	00258$
00190$:
;	calc.c:140: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_peek
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00103$
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00261$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00849$
	ljmp	00188$
00849$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:140: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
	cjne	r5,#0x00,00261$
	inc	r6
	sjmp	00261$
00103$:
;	calc.c:142: printstr("PT ");
	mov	r5,#___str_5
	mov	r6,#(___str_5 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00264$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00194$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:142: printstr("PT ");
	cjne	r5,#0x00,00264$
	inc	r6
	sjmp	00264$
00194$:
;	calc.c:143: printf("% 11ld / %08lx / ", d0, d0);
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x07
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
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	calc.c:144: printbin(d0);
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00266$:
;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x13
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
	jz	00359$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00360$
00359$:
	mov	r6,#0x30
	mov	r7,#0x00
00360$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x13
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
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00266$
;	calc.c:145: printstr("\r\n");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00269$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00855$
	ljmp	00188$
00855$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:148: case 'P':
	cjne	r5,#0x00,00269$
	inc	r6
	sjmp	00269$
00105$:
;	calc.c:149: printstr("\r\n");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00272$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00200$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:149: printstr("\r\n");
	cjne	r5,#0x00,00272$
	inc	r6
	sjmp	00272$
00200$:
;	calc.c:150: if (!stack_iter_peek(&ctx->s, dump_peek, ctx)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar2
	push	ar3
	push	ar4
	mov	a,#_dump_peek
	push	acc
	mov	a,#(_dump_peek >> 8)
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_iter_peek
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r6
	orl	a,r7
	jz	00859$
	ljmp	00188$
00859$:
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00275$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00860$
	ljmp	00188$
00860$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:153: case 'v':
	cjne	r5,#0x00,00275$
	inc	r6
	sjmp	00275$
00109$:
;	calc.c:154: printstr("\r\n");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00278$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00204$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:154: printstr("\r\n");
	cjne	r5,#0x00,00278$
	inc	r6
	sjmp	00278$
00204$:
;	calc.c:155: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00111$
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00281$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00865$
	ljmp	00188$
00865$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:155: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
	cjne	r5,#0x00,00281$
	inc	r6
	sjmp	00281$
00111$:
;	calc.c:157: printstr("VT ");
	mov	r5,#___str_6
	mov	r6,#(___str_6 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00284$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00208$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:157: printstr("VT ");
	cjne	r5,#0x00,00284$
	inc	r6
	sjmp	00284$
00208$:
;	calc.c:158: printf("% 11ld / %08lx / ", d0, d0);
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x07
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
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	calc.c:159: printbin(d0);
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00286$:
;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x13
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
	jz	00361$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00362$
00361$:
	mov	r6,#0x30
	mov	r7,#0x00
00362$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x13
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
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00286$
;	calc.c:160: printstr("\r\n");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00289$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00871$
	ljmp	00188$
00871$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:163: case 'V':
	cjne	r5,#0x00,00289$
	inc	r6
	sjmp	00289$
00113$:
;	calc.c:164: printstr("\r\n");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00292$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00214$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:164: printstr("\r\n");
	cjne	r5,#0x00,00292$
	inc	r6
	sjmp	00292$
00214$:
;	calc.c:165: (void)dump_pop(_ctx, delta);
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
;	calc.c:166: break;
	ljmp	00188$
;	calc.c:167: case 'x':
00114$:
;	calc.c:168: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00119$
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00295$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00876$
	ljmp	00188$
00876$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:168: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00295$
	inc	r6
	sjmp	00295$
00119$:
;	calc.c:169: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00116$
;	calc.c:170: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:171: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00298$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00879$
	ljmp	00188$
00879$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:171: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00298$
	inc	r6
	sjmp	00298$
00116$:
;	calc.c:173: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:174: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
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
;	calc.c:176: break;
	ljmp	00188$
;	calc.c:177: case '+':
00121$:
;	calc.c:178: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00126$
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00301$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00882$
	ljmp	00188$
00882$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:178: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00301$
	inc	r6
	sjmp	00301$
00126$:
;	calc.c:179: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00123$
;	calc.c:180: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:181: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00304$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00885$
	ljmp	00188$
00885$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:181: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00304$
	inc	r6
	sjmp	00304$
00123$:
;	calc.c:183: d1 += d0;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:184: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
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
;	calc.c:186: break;
	ljmp	00188$
;	calc.c:187: case '-':
00128$:
;	calc.c:188: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00133$
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00307$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00888$
	ljmp	00188$
00888$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:188: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00307$
	inc	r6
	sjmp	00307$
00133$:
;	calc.c:189: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00130$
;	calc.c:190: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:191: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00310$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00891$
	ljmp	00188$
00891$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:191: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00310$
	inc	r6
	sjmp	00310$
00130$:
;	calc.c:193: d1 -= d0;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:194: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
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
;	calc.c:196: break;
	ljmp	00188$
;	calc.c:197: case '*':
00135$:
;	calc.c:198: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00140$
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00313$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00894$
	ljmp	00188$
00894$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:198: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00313$
	inc	r6
	sjmp	00313$
00140$:
;	calc.c:199: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00137$
;	calc.c:200: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:201: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00316$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00897$
	ljmp	00188$
00897$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:201: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00316$
	inc	r6
	sjmp	00316$
00137$:
;	calc.c:203: d1 *= d0;
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x0b
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
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:204: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
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
;	calc.c:206: break;
	ljmp	00188$
;	calc.c:207: case '/':
00142$:
;	calc.c:208: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00150$
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00319$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00900$
	ljmp	00188$
00900$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:208: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00319$
	inc	r6
	sjmp	00319$
00150$:
;	calc.c:209: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00147$
;	calc.c:210: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:211: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00322$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00903$
	ljmp	00188$
00903$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:211: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00322$
	inc	r6
	sjmp	00322$
00147$:
;	calc.c:212: } else if (!d0) {
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
	jz	00905$
	ljmp	00144$
00905$:
;	calc.c:213: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
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
;	calc.c:214: (void)stack_push(&ctx->s, d0);			
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:215: printstr("\r\ndivision by zero\r\n");
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00325$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00906$
	ljmp	00188$
00906$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:215: printstr("\r\ndivision by zero\r\n");
	cjne	r5,#0x00,00325$
	inc	r6
	sjmp	00325$
00144$:
;	calc.c:217: d1 /= d0;
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__divslong
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
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:218: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
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
;	calc.c:220: break;
	ljmp	00188$
;	calc.c:221: case '%':
00152$:
;	calc.c:222: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00160$
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00328$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00909$
	ljmp	00188$
00909$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:222: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00328$
	inc	r6
	sjmp	00328$
00160$:
;	calc.c:223: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00157$
;	calc.c:224: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:225: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00331$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00912$
	ljmp	00188$
00912$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:225: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00331$
	inc	r6
	sjmp	00331$
00157$:
;	calc.c:226: } else if (!d0) {
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
	jz	00914$
	ljmp	00154$
00914$:
;	calc.c:227: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
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
;	calc.c:228: (void)stack_push(&ctx->s, d0);			
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:229: printstr("\r\ndivision by zero\r\n");
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00334$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00915$
	ljmp	00188$
00915$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:229: printstr("\r\ndivision by zero\r\n");
	cjne	r5,#0x00,00334$
	inc	r6
	sjmp	00334$
00154$:
;	calc.c:231: d1 %= d0;
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x0b
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
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:232: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
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
;	calc.c:234: break;
	ljmp	00188$
;	calc.c:235: case '&':
00162$:
;	calc.c:236: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00167$
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00337$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00918$
	ljmp	00188$
00918$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:236: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00337$
	inc	r6
	sjmp	00337$
00167$:
;	calc.c:237: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00164$
;	calc.c:238: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:239: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00340$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00921$
	ljmp	00188$
00921$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:239: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00340$
	inc	r6
	sjmp	00340$
00164$:
;	calc.c:241: d1 &= d0;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:242: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
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
;	calc.c:244: break;
	ljmp	00188$
;	calc.c:245: case '|':
00169$:
;	calc.c:246: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00174$
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00343$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00924$
	ljmp	00188$
00924$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:246: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00343$
	inc	r6
	sjmp	00343$
00174$:
;	calc.c:247: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00171$
;	calc.c:248: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:249: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00346$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00927$
	ljmp	00188$
00927$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:249: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00346$
	inc	r6
	sjmp	00346$
00171$:
;	calc.c:251: d1 |= d0;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:252: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
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
;	calc.c:254: break;
	ljmp	00188$
;	calc.c:255: case '^':
00176$:
;	calc.c:256: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00181$
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00349$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00930$
	ljmp	00188$
00930$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:256: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00349$
	inc	r6
	sjmp	00349$
00181$:
;	calc.c:257: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00178$
;	calc.c:258: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:259: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00352$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00933$
	ljmp	00188$
00933$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:259: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00352$
	inc	r6
	sjmp	00352$
00178$:
;	calc.c:261: d1 ^= d0;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:262: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
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
;	calc.c:264: break;
	ljmp	00188$
;	calc.c:265: case '~':
00183$:
;	calc.c:266: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00185$
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00355$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00188$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:266: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00355$
	inc	r6
	sjmp	00355$
00185$:
;	calc.c:268: d0 = ~d0;
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:269: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
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
;	calc.c:271: break;
;	calc.c:272: default:
	sjmp	00188$
00187$:
;	calc.c:273: return UNDEF;
	mov	dptr,#0x8000
;	calc.c:274: }
	sjmp	00357$
00188$:
;	calc.c:276: return 1;
	mov	dptr,#0x0001
00357$:
;	calc.c:277: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'push_acc'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to stack - _bp +5
;ctx                       Allocated to registers r2 r3 r4 
;__1310720085              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	calc.c:279: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
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
;	calc.c:280: struct ctx *ctx = (struct ctx *)_ctx;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	calc.c:284: ctx->acc_valid = 0;
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
;	calc.c:285: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
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
	mov	a,#0x09
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	ar7,r4
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
	mov	r5,#___str_9
	mov	r6,#(___str_9 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00109$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:285: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
	cjne	r5,#0x00,00109$
	inc	r6
	sjmp	00109$
00102$:
;	calc.c:287: if (delta->event == EVENT_OP) return operator(_ctx, delta);
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
;	calc.c:288: else return 1;
	mov	dptr,#0x0001
00111$:
;	calc.c:289: }
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
;	calc.c:291: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function reset_acc
;	-----------------------------------------
_reset_acc:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:292: struct ctx *ctx = (struct ctx *)_ctx;
;	calc.c:294: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
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
	cjne	r2,#0x06,00102$
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
;	calc.c:295: ctx->acc = 0l;
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
;	calc.c:297: return 1;
	mov	dptr,#0x0001
;	calc.c:298: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_base'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:300: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function reset_base
;	-----------------------------------------
_reset_base:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:301: struct ctx *ctx = (struct ctx *)_ctx;
;	calc.c:305: switch (ctx->digit[0]) {
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
;	calc.c:306: case 'H':
	cjne	r4,#0x6f,00105$
	sjmp	00104$
00101$:
;	calc.c:307: ctx->base = 16;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x10
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:308: break;
;	calc.c:309: case 'h':
	sjmp	00105$
00102$:
;	calc.c:310: ctx->base = 10;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:311: break;
;	calc.c:312: case 'O':
	sjmp	00105$
00103$:
;	calc.c:313: ctx->base = 8;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:314: break;
;	calc.c:315: case 'o':
	sjmp	00105$
00104$:
;	calc.c:316: ctx->base = 2;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:318: }
00105$:
;	calc.c:320: return 1;
	mov	dptr,#0x0001
;	calc.c:321: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'help'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +4
;__1310720087              Allocated to registers 
;d                         Allocated to stack - _bp +7
;mask                      Allocated to stack - _bp +11
;__1310720089              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720091              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720093              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720095              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720097              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720099              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720101              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720103              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720105              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720107              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720109              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720111              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720113              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720115              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720117              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720119              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720121              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720123              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720125              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	calc.c:323: static int help(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function help
;	-----------------------------------------
_help:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0e
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:324: struct ctx *ctx = (struct ctx *)_ctx;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:327: printf("\r\nbase = %d, acc = %ld / %08lx / ", ctx->base, ctx->acc, ctx->acc);
	mov	a,_bp
	add	a,#0x04
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
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf3
	mov	sp,a
;	calc.c:328: printbin(ctx->acc);
	mov	r0,_bp
	inc	r0
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
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x0b
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
;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
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
	jz	00202$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00203$
00202$:
	mov	r6,#0x30
	mov	r7,#0x00
00203$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x0b
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
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00141$
;	calc.c:329: printf(", acc_valid = %d\r\n\r\n", (int)ctx->acc_valid);
	mov	a,_bp
	add	a,#0x04
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
	mov	r5,a
	mov	r7,#0x00
	push	ar5
	push	ar7
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	calc.c:330: printstr("HhOo\tbase 16 10 8 2\r\n");
	mov	r5,#___str_12
	mov	r6,#(___str_12 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00144$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:330: printstr("HhOo\tbase 16 10 8 2\r\n");
	cjne	r5,#0x00,00144$
	inc	r6
	sjmp	00144$
00104$:
;	calc.c:331: printstr("p\tpeek top\r\n");
	mov	r5,#___str_13
	mov	r6,#(___str_13 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00147$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:331: printstr("p\tpeek top\r\n");
	cjne	r5,#0x00,00147$
	inc	r6
	sjmp	00147$
00106$:
;	calc.c:332: printstr("P\tprint stack\r\n");
	mov	r5,#___str_14
	mov	r6,#(___str_14 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00150$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:332: printstr("P\tprint stack\r\n");
	cjne	r5,#0x00,00150$
	inc	r6
	sjmp	00150$
00108$:
;	calc.c:333: printstr("v.\tpop top\r\n");
	mov	r5,#___str_15
	mov	r6,#(___str_15 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00153$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:333: printstr("v.\tpop top\r\n");
	cjne	r5,#0x00,00153$
	inc	r6
	sjmp	00153$
00110$:
;	calc.c:334: printstr("V\tpop all\r\n");
	mov	r5,#___str_16
	mov	r6,#(___str_16 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00156$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:334: printstr("V\tpop all\r\n");
	cjne	r5,#0x00,00156$
	inc	r6
	sjmp	00156$
00112$:
;	calc.c:335: printstr("i\treset acc\r\n");
	mov	r5,#___str_17
	mov	r6,#(___str_17 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00159$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:335: printstr("i\treset acc\r\n");
	cjne	r5,#0x00,00159$
	inc	r6
	sjmp	00159$
00114$:
;	calc.c:336: printstr("I\treset and discard acc\r\n");
	mov	r5,#___str_18
	mov	r6,#(___str_18 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00162$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:336: printstr("I\treset and discard acc\r\n");
	cjne	r5,#0x00,00162$
	inc	r6
	sjmp	00162$
00116$:
;	calc.c:337: printstr("x\texchange top 2\r\n");
	mov	r5,#___str_19
	mov	r6,#(___str_19 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00165$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:337: printstr("x\texchange top 2\r\n");
	cjne	r5,#0x00,00165$
	inc	r6
	sjmp	00165$
00118$:
;	calc.c:338: printstr("+\tadd top 2\r\n");
	mov	r5,#___str_20
	mov	r6,#(___str_20 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00168$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:338: printstr("+\tadd top 2\r\n");
	cjne	r5,#0x00,00168$
	inc	r6
	sjmp	00168$
00120$:
;	calc.c:339: printstr("-\tsubtract top 2\r\n");
	mov	r5,#___str_21
	mov	r6,#(___str_21 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00171$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:339: printstr("-\tsubtract top 2\r\n");
	cjne	r5,#0x00,00171$
	inc	r6
	sjmp	00171$
00122$:
;	calc.c:340: printstr("*\tmultiply top 2\r\n");
	mov	r5,#___str_22
	mov	r6,#(___str_22 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00174$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:340: printstr("*\tmultiply top 2\r\n");
	cjne	r5,#0x00,00174$
	inc	r6
	sjmp	00174$
00124$:
;	calc.c:341: printstr("/\tdivide top 2\r\n");
	mov	r5,#___str_23
	mov	r6,#(___str_23 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00177$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:341: printstr("/\tdivide top 2\r\n");
	cjne	r5,#0x00,00177$
	inc	r6
	sjmp	00177$
00126$:
;	calc.c:342: printstr("%\tmodulus top 2\r\n");
	mov	r5,#___str_24
	mov	r6,#(___str_24 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00180$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:342: printstr("%\tmodulus top 2\r\n");
	cjne	r5,#0x00,00180$
	inc	r6
	sjmp	00180$
00128$:
;	calc.c:343: printstr("&\tand top 2\r\n");
	mov	r5,#___str_25
	mov	r6,#(___str_25 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00183$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:343: printstr("&\tand top 2\r\n");
	cjne	r5,#0x00,00183$
	inc	r6
	sjmp	00183$
00130$:
;	calc.c:344: printstr("|\tor top 2\r\n");
	mov	r5,#___str_26
	mov	r6,#(___str_26 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00186$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:344: printstr("|\tor top 2\r\n");
	cjne	r5,#0x00,00186$
	inc	r6
	sjmp	00186$
00132$:
;	calc.c:345: printstr("^\txor top 2\r\n");
	mov	r5,#___str_27
	mov	r6,#(___str_27 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00189$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:345: printstr("^\txor top 2\r\n");
	cjne	r5,#0x00,00189$
	inc	r6
	sjmp	00189$
00134$:
;	calc.c:346: printstr("~\tbitwise not top\r\n");
	mov	r5,#___str_28
	mov	r6,#(___str_28 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00192$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:346: printstr("~\tbitwise not top\r\n");
	cjne	r5,#0x00,00192$
	inc	r6
	sjmp	00192$
00136$:
;	calc.c:347: printstr("?\thelp\r\n");
	mov	r5,#___str_29
	mov	r6,#(___str_29 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00195$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:347: printstr("?\thelp\r\n");
	cjne	r5,#0x00,00195$
	inc	r6
	sjmp	00195$
00138$:
;	calc.c:348: printstr("q\tquit\r\n");
	mov	r5,#___str_30
	mov	r6,#(___str_30 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00198$:
;	calc.c:48: for (; *s; s++) putchar(*s);
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
;	calc.c:348: printstr("q\tquit\r\n");
	cjne	r5,#0x00,00198$
	inc	r6
	sjmp	00198$
00140$:
;	calc.c:350: return 1;
	mov	dptr,#0x0001
;	calc.c:351: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;input                     Allocated to registers r6 r7 
;sloc0                     Allocated to stack - _bp +3
;------------------------------------------------------------
;	calc.c:380: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	calc.c:383: c.base = 10;
	mov	dptr,#_c
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	calc.c:384: c.acc = 0l;
	mov	dptr,#(_c + 0x0002)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	calc.c:385: c.acc_valid = (char)0;
	mov	dptr,#(_c + 0x0006)
	movx	@dptr,a
;	calc.c:386: c.digit[0] = c.digit[1] = '\0';
	mov	dptr,#(_c + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_c + 0x0007)
	movx	@dptr,a
;	calc.c:387: stack_init(&c.s);	
	mov	dptr,#(_c + 0x0009)
	mov	b,#0x00
	lcall	_stack_init
;	calc.c:388: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
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
;	calc.c:390: while (1) {
00158$:
;	calc.c:391: input = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	calc.c:392: c.digit[0] = (char)input;
	mov	ar5,r6
	mov	dptr,#(_c + 0x0007)
	mov	a,r5
	movx	@dptr,a
;	calc.c:393: (void)putchar(input);
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:394: if ((char)input == 'q') {
	cjne	r5,#0x71,00155$
;	calc.c:395: if (state_exec(&s, EVENT_TERM) <= 0) break;
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
	jc	00158$
	ljmp	00159$
00155$:
;	calc.c:396: } else if ((char)input == '?') {
	cjne	r5,#0x3f,00152$
;	calc.c:397: if (state_exec(&s, EVENT_HELP) <= 0) break;
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
	jc	00158$
	ljmp	00159$
00152$:
;	calc.c:398: } else if ((char)input == 'i') {
	cjne	r5,#0x69,00149$
;	calc.c:399: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
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
	jnc	00298$
	ljmp	00158$
00298$:
	ljmp	00159$
00149$:
;	calc.c:400: } else if ((char)input == 'I') {
	cjne	r5,#0x49,00146$
;	calc.c:401: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
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
	jnc	00301$
	ljmp	00158$
00301$:
	ljmp	00159$
00146$:
;	calc.c:402: } else if (((char)input == 'h') || ((char)input == 'H') || ((char)input == 'o') || ((char)input == 'O')) {
	clr	a
	cjne	r5,#0x68,00302$
	inc	a
00302$:
	mov	r4,a
	jnz	00139$
	cjne	r5,#0x48,00305$
	inc	a
00305$:
	mov	r3,a
	jnz	00139$
	cjne	r5,#0x6f,00308$
	sjmp	00139$
00308$:
	cjne	r5,#0x4f,00140$
00139$:
;	calc.c:403: if (state_exec(&s, EVENT_BASE) <= 0) break;
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r7,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r7
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00311$
	ljmp	00158$
00311$:
	ljmp	00159$
00140$:
;	calc.c:404: } else if (isxdigit(input)) {
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	push	ar3
	lcall	_isxdigit
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar4
	pop	ar5
	orl	a,b
	jz	00137$
;	calc.c:405: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
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
	jnc	00313$
	ljmp	00158$
00313$:
	ljmp	00159$
00137$:
;	calc.c:407: ((char)input == 'h') || ((char)input == 'H') ||
	mov	a,r4
	jnz	00117$
	mov	a,r3
	jnz	00117$
;	calc.c:408: ((char)input == 'p') || ((char)input == 'P') ||
	cjne	r5,#0x70,00316$
	sjmp	00117$
00316$:
	cjne	r5,#0x50,00317$
	sjmp	00117$
00317$:
;	calc.c:409: ((char)input == '.') || ((char)input == 'v') || ((char)input == 'V') ||
	cjne	r5,#0x2e,00318$
	sjmp	00117$
00318$:
	cjne	r5,#0x76,00319$
	sjmp	00117$
00319$:
	cjne	r5,#0x56,00320$
	sjmp	00117$
00320$:
;	calc.c:410: ((char)input == 'x') ||
	cjne	r5,#0x78,00321$
	sjmp	00117$
00321$:
;	calc.c:411: ((char)input == '+') ||
	cjne	r5,#0x2b,00322$
	sjmp	00117$
00322$:
;	calc.c:412: ((char)input == '-') ||
	cjne	r5,#0x2d,00323$
	sjmp	00117$
00323$:
;	calc.c:413: ((char)input == '*') ||
	cjne	r5,#0x2a,00324$
	sjmp	00117$
00324$:
;	calc.c:414: ((char)input == '/') ||
	cjne	r5,#0x2f,00325$
	sjmp	00117$
00325$:
;	calc.c:415: ((char)input == '%') ||
	cjne	r5,#0x25,00326$
	sjmp	00117$
00326$:
;	calc.c:416: ((char)input == '&') ||
	cjne	r5,#0x26,00327$
	sjmp	00117$
00327$:
;	calc.c:417: ((char)input == '|') ||
	cjne	r5,#0x7c,00328$
	sjmp	00117$
00328$:
;	calc.c:418: ((char)input == '^') ||
	cjne	r5,#0x5e,00329$
	sjmp	00117$
00329$:
;	calc.c:419: ((char)input == '~')
	cjne	r5,#0x7e,00118$
00117$:
;	calc.c:421: if (state_exec(&s, EVENT_OP) <= 0) break;
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
	jnc	00159$
	ljmp	00158$
00118$:
;	calc.c:423: if (state_exec(&s, EVENT_DELIM) <= 0) break;
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
	jnc	00333$
	ljmp	00158$
00333$:
00159$:
;	calc.c:429: __endasm;
	orl	pcon, #2
;	calc.c:430: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "VA "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "% 11ld / %08lx / "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "PA "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "PT "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "VT "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0d
	.db 0x0a
	.ascii "stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0d
	.db 0x0a
	.ascii "division by zero"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0d
	.db 0x0a
	.ascii "stack overflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0d
	.db 0x0a
	.ascii "base = %d, acc = %ld / %08lx / "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii ", acc_valid = %d"
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "HhOo"
	.db 0x09
	.ascii "base 16 10 8 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "p"
	.db 0x09
	.ascii "peek top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "P"
	.db 0x09
	.ascii "print stack"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "v."
	.db 0x09
	.ascii "pop top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "V"
	.db 0x09
	.ascii "pop all"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "i"
	.db 0x09
	.ascii "reset acc"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "I"
	.db 0x09
	.ascii "reset and discard acc"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "x"
	.db 0x09
	.ascii "exchange top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "+"
	.db 0x09
	.ascii "add top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "-"
	.db 0x09
	.ascii "subtract top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "*"
	.db 0x09
	.ascii "multiply top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "/"
	.db 0x09
	.ascii "divide top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "%"
	.db 0x09
	.ascii "modulus top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "&"
	.db 0x09
	.ascii "and top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "|"
	.db 0x09
	.ascii "or top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "^"
	.db 0x09
	.ascii "xor top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "~"
	.db 0x09
	.ascii "bitwise not top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "?"
	.db 0x09
	.ascii "help"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "q"
	.db 0x09
	.ascii "quit"
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
	.byte #0x06, #0x00	;  6
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
	.byte #0x05, #0x00	;  5
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte _reset_acc, (_reset_acc >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x06, #0x00	;  6
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xff, #0x7f	;  32767
	.byte #0x04, #0x00	;  4
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte _reset_base, (_reset_base >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x03, #0x00	;  3
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte _help, (_help >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x07, #0x00	;  7
	.byte #0x03, #0x00	;  3
	.byte #0x00,#0x00
	.byte _dump_pop, (_dump_pop >> 8)
	.byte #0x00, #0x80	; -32768
	.byte #0x00, #0x80	; -32768
	.byte #0x00, #0x80	; -32768
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.area CABS    (ABS,CODE)
