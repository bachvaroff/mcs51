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
	.ds 8207
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_hexp:
	.ds 3
_decp:
	.ds 3
_hexP:
	.ds 3
_decP:
	.ds 3
_hexv:
	.ds 3
_decv:
	.ds 3
_hexV:
	.ds 3
_decV:
	.ds 3
_deltas:
	.ds 150
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
;Allocation info for local variables in function 'accumulate'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +8
;d                         Allocated to stack - _bp +11
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	calc.c:83: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
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
;	calc.c:84: struct ctx *ctx = (struct ctx *)_ctx;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:89: if (!ctx->acc_valid) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x08
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
;	calc.c:90: ctx->acc_valid = 1;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	calc.c:91: ctx->acc = 0l;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x04
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
;	calc.c:94: d = strtol(ctx->digit, NULL, ctx->base);
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
	mov	a,#0x09
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
;	calc.c:95: ctx->acc = ctx->acc * ctx->base + d;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x04
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
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
;	calc.c:97: return 1;
	mov	dptr,#0x0001
;	calc.c:98: }
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
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;------------------------------------------------------------
;	calc.c:100: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function dump_pop
;	-----------------------------------------
_dump_pop:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0b
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:101: struct ctx *ctx = (struct ctx *)_ctx;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:105: if (delta->event == EVENT_TERM) printstr("\r\n");
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
	cjne	r6,#0x06,00102$
	cjne	r7,#0x00,00102$
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00116$:
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
	cjne	r5,#0x00,00170$
	inc	r6
00170$:
	pop	ar4
	pop	ar3
	pop	ar2
;	calc.c:105: if (delta->event == EVENT_TERM) printstr("\r\n");
	sjmp	00116$
00102$:
;	calc.c:107: r = stack_pop(&ctx->s, &d);
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
	mov	a,#0x0b
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
;	calc.c:108: if (!r) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	orl	a,r6
	jnz	00134$
;	calc.c:109: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x06,00172$
	cjne	r3,#0x00,00172$
	ljmp	00110$
00172$:
	mov	r4,#___str_1
	mov	r5,#(___str_1 >> 8)
	mov	r6,#0x80
;	calc.c:50: return;
00119$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	jnz	00173$
	ljmp	00110$
00173$:
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
	inc	r4
;	calc.c:110: } else while (r > 0) {
	cjne	r4,#0x00,00119$
	inc	r5
	sjmp	00119$
00134$:
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
	jc	00175$
	ljmp	00110$
00175$:
;	calc.c:111: printf((ctx->base == 16l) ? hexV : decV, d);
	mov	a,_bp
	add	a,#0x05
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	cjne	r3,#0x10,00123$
	cjne	r4,#0x00,00123$
	cjne	r5,#0x00,00123$
	cjne	r6,#0x00,00123$
	mov	dptr,#_hexV
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	sjmp	00124$
00123$:
	mov	dptr,#_decV
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00124$:
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
	push	ar4
	push	ar5
	push	ar6
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar7
;	calc.c:112: r = stack_pop(&ctx->s, &d);
	mov	ar4,r7
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:115: return 1;
	mov	dptr,#0x0001
;	calc.c:116: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_peek'
;------------------------------------------------------------
;d                         Allocated to stack - _bp -6
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:118: static int dump_peek(void *_ctx, long d) __reentrant {
;	-----------------------------------------
;	 function dump_peek
;	-----------------------------------------
_dump_peek:
	push	_bp
	mov	_bp,sp
;	calc.c:119: struct ctx *ctx = (struct ctx *)_ctx;
;	calc.c:121: printf((ctx->base == 16l) ? hexP : decP, d);
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
	cjne	r5,#0x10,00103$
	cjne	r6,#0x00,00103$
	cjne	r7,#0x00,00103$
	cjne	r4,#0x00,00103$
	mov	dptr,#_hexP
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	sjmp	00104$
00103$:
	mov	dptr,#_decP
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00104$:
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
	push	ar5
	push	ar6
	push	ar7
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:123: return 1;
	mov	dptr,#0x0001
;	calc.c:124: }
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
;__1966080005              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080007              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080009              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080011              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080013              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080015              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080017              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080019              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440021              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080023              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440025              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080027              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440029              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080031              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440033              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080035              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440037              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440039              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080041              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440043              Allocated to registers 
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
;------------------------------------------------------------
;	calc.c:126: static int operator(void *_ctx, delta_t *delta) __reentrant {
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
	add	a,#0x0b
	mov	sp,a
;	calc.c:127: struct ctx *ctx = (struct ctx *)_ctx;
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
;	calc.c:130: switch (ctx->digit[0]) {
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x25,00761$
	ljmp	00154$
00761$:
	cjne	r7,#0x26,00762$
	ljmp	00164$
00762$:
	cjne	r7,#0x2a,00763$
	ljmp	00137$
00763$:
	cjne	r7,#0x2b,00764$
	ljmp	00123$
00764$:
	cjne	r7,#0x2d,00765$
	ljmp	00130$
00765$:
	cjne	r7,#0x2e,00766$
	ljmp	00111$
00766$:
	cjne	r7,#0x2f,00767$
	ljmp	00144$
00767$:
	cjne	r7,#0x48,00768$
	sjmp	00102$
00768$:
	cjne	r7,#0x50,00769$
	ljmp	00107$
00769$:
	cjne	r7,#0x56,00770$
	ljmp	00115$
00770$:
	cjne	r7,#0x5e,00771$
	ljmp	00178$
00771$:
	cjne	r7,#0x68,00772$
	sjmp	00101$
00772$:
	cjne	r7,#0x70,00773$
	sjmp	00103$
00773$:
	cjne	r7,#0x76,00774$
	ljmp	00111$
00774$:
	cjne	r7,#0x78,00775$
	ljmp	00116$
00775$:
	cjne	r7,#0x7c,00776$
	ljmp	00171$
00776$:
	cjne	r7,#0x7e,00777$
	ljmp	00185$
00777$:
	ljmp	00189$
;	calc.c:131: case 'h':
00101$:
;	calc.c:132: ctx->base = 10l;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x0a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	calc.c:133: break;
	ljmp	00190$
;	calc.c:134: case 'H':
00102$:
;	calc.c:135: ctx->base = 16l;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x10
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	calc.c:136: break;
	ljmp	00190$
;	calc.c:137: case 'p':
00103$:
;	calc.c:138: printstr("\r\n");
	mov	r5,#___str_0
	mov	r4,#(___str_0 >> 8)
	mov	r3,#0x80
;	calc.c:50: return;
00248$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jz	00192$
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:138: printstr("\r\n");
	cjne	r5,#0x00,00248$
	inc	r4
	sjmp	00248$
00192$:
;	calc.c:139: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00105$
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00251$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00781$
	ljmp	00190$
00781$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:139: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
	cjne	r5,#0x00,00251$
	inc	r6
	sjmp	00251$
00105$:
;	calc.c:141: printf((ctx->base == 16l) ? hexp : decp, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
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
	cjne	r4,#0x10,00333$
	cjne	r5,#0x00,00333$
	cjne	r6,#0x00,00333$
	cjne	r7,#0x00,00333$
	mov	dptr,#_hexp
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	sjmp	00334$
00333$:
	mov	dptr,#_decp
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00334$:
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
	push	ar5
	push	ar6
	push	ar7
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:143: break;
	ljmp	00190$
;	calc.c:144: case 'P':
00107$:
;	calc.c:145: printstr("\r\n");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00254$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00196$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:145: printstr("\r\n");
	cjne	r5,#0x00,00254$
	inc	r6
	sjmp	00254$
00196$:
;	calc.c:146: if (!stack_iter_peek(&ctx->s, dump_peek, ctx)) printstr("stack underflow\r\n");
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
	mov	a,#0x0b
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
	jz	00787$
	ljmp	00190$
00787$:
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00257$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00788$
	ljmp	00190$
00788$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:149: case 'v':
	cjne	r5,#0x00,00257$
	inc	r6
	sjmp	00257$
00111$:
;	calc.c:150: printstr("\r\n");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00260$:
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
;	calc.c:150: printstr("\r\n");
	cjne	r5,#0x00,00260$
	inc	r6
	sjmp	00260$
00200$:
;	calc.c:151: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00113$
	mov	r5,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00263$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00793$
	ljmp	00190$
00793$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:151: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
	cjne	r5,#0x00,00263$
	inc	r6
	sjmp	00263$
00113$:
;	calc.c:152: else printf((ctx->base == 16l) ? hexv : decv, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
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
	cjne	r4,#0x10,00335$
	cjne	r5,#0x00,00335$
	cjne	r6,#0x00,00335$
	cjne	r7,#0x00,00335$
	mov	dptr,#_hexv
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	sjmp	00336$
00335$:
	mov	dptr,#_decv
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00336$:
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
	push	ar5
	push	ar6
	push	ar7
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:153: break;
	ljmp	00190$
;	calc.c:154: case 'V':
00115$:
;	calc.c:155: printstr("\r\n");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00266$:
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
;	calc.c:155: printstr("\r\n");
	cjne	r5,#0x00,00266$
	inc	r6
	sjmp	00266$
00204$:
;	calc.c:156: (void)dump_pop(_ctx, delta);
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
;	calc.c:157: break;
	ljmp	00190$
;	calc.c:158: case 'x':
00116$:
;	calc.c:159: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00121$
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00269$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00800$
	ljmp	00190$
00800$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:159: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00269$
	inc	r6
	sjmp	00269$
00121$:
;	calc.c:160: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00118$
;	calc.c:161: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:162: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00272$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00803$
	ljmp	00190$
00803$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:162: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00272$
	inc	r6
	sjmp	00272$
00118$:
;	calc.c:164: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:165: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:167: break;
	ljmp	00190$
;	calc.c:168: case '+':
00123$:
;	calc.c:169: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00128$
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00275$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00806$
	ljmp	00190$
00806$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:169: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00275$
	inc	r6
	sjmp	00275$
00128$:
;	calc.c:170: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00125$
;	calc.c:171: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:172: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00278$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00809$
	ljmp	00190$
00809$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:172: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00278$
	inc	r6
	sjmp	00278$
00125$:
;	calc.c:174: d1 += d0;
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
;	calc.c:175: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:177: break;
	ljmp	00190$
;	calc.c:178: case '-':
00130$:
;	calc.c:179: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00135$
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00281$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00812$
	ljmp	00190$
00812$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:179: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00281$
	inc	r6
	sjmp	00281$
00135$:
;	calc.c:180: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00132$
;	calc.c:181: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:182: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00284$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00815$
	ljmp	00190$
00815$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:182: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00284$
	inc	r6
	sjmp	00284$
00132$:
;	calc.c:184: d1 -= d0;
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
;	calc.c:185: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:187: break;
	ljmp	00190$
;	calc.c:188: case '*':
00137$:
;	calc.c:189: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00142$
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00287$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00818$
	ljmp	00190$
00818$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:189: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00287$
	inc	r6
	sjmp	00287$
00142$:
;	calc.c:190: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00139$
;	calc.c:191: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:192: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00290$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00821$
	ljmp	00190$
00821$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:192: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00290$
	inc	r6
	sjmp	00290$
00139$:
;	calc.c:194: d1 *= d0;
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
;	calc.c:195: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:197: break;
	ljmp	00190$
;	calc.c:198: case '/':
00144$:
;	calc.c:199: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00152$
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00293$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00824$
	ljmp	00190$
00824$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:199: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00293$
	inc	r6
	sjmp	00293$
00152$:
;	calc.c:200: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00149$
;	calc.c:201: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:202: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00296$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00827$
	ljmp	00190$
00827$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:202: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00296$
	inc	r6
	sjmp	00296$
00149$:
;	calc.c:203: } else if (!d0) {
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
	jz	00829$
	ljmp	00146$
00829$:
;	calc.c:204: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:205: (void)stack_push(&ctx->s, d0);			
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:206: printstr("\r\ndivision by zero\r\n");
	mov	r5,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00299$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00830$
	ljmp	00190$
00830$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:206: printstr("\r\ndivision by zero\r\n");
	cjne	r5,#0x00,00299$
	inc	r6
	sjmp	00299$
00146$:
;	calc.c:208: d1 /= d0;
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
;	calc.c:209: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:211: break;
	ljmp	00190$
;	calc.c:212: case '%':
00154$:
;	calc.c:213: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00162$
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00302$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00833$
	ljmp	00190$
00833$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:213: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00302$
	inc	r6
	sjmp	00302$
00162$:
;	calc.c:214: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00159$
;	calc.c:215: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:216: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00305$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00836$
	ljmp	00190$
00836$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:216: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00305$
	inc	r6
	sjmp	00305$
00159$:
;	calc.c:217: } else if (!d0) {
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
	jz	00838$
	ljmp	00156$
00838$:
;	calc.c:218: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:219: (void)stack_push(&ctx->s, d0);			
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:220: printstr("\r\ndivision by zero\r\n");
	mov	r5,#___str_3
	mov	r6,#(___str_3 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00308$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00839$
	ljmp	00190$
00839$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:220: printstr("\r\ndivision by zero\r\n");
	cjne	r5,#0x00,00308$
	inc	r6
	sjmp	00308$
00156$:
;	calc.c:222: d1 %= d0;
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
;	calc.c:223: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:225: break;
	ljmp	00190$
;	calc.c:226: case '&':
00164$:
;	calc.c:227: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00169$
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00311$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00842$
	ljmp	00190$
00842$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:227: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00311$
	inc	r6
	sjmp	00311$
00169$:
;	calc.c:228: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00166$
;	calc.c:229: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:230: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00314$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00845$
	ljmp	00190$
00845$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:230: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00314$
	inc	r6
	sjmp	00314$
00166$:
;	calc.c:232: d1 &= d0;
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
;	calc.c:233: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:235: break;
	ljmp	00190$
;	calc.c:236: case '|':
00171$:
;	calc.c:237: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00176$
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00317$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00848$
	ljmp	00190$
00848$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:237: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00317$
	inc	r6
	sjmp	00317$
00176$:
;	calc.c:238: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00173$
;	calc.c:239: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:240: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00320$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00851$
	ljmp	00190$
00851$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:240: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00320$
	inc	r6
	sjmp	00320$
00173$:
;	calc.c:242: d1 |= d0;
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
;	calc.c:243: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:245: break;
	ljmp	00190$
;	calc.c:246: case '^':
00178$:
;	calc.c:247: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00183$
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00323$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00854$
	ljmp	00190$
00854$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:247: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00323$
	inc	r6
	sjmp	00323$
00183$:
;	calc.c:248: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00180$
;	calc.c:249: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:250: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00326$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00857$
	ljmp	00190$
00857$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:250: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00326$
	inc	r6
	sjmp	00326$
00180$:
;	calc.c:252: d1 ^= d0;
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
;	calc.c:253: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:255: break;
	ljmp	00190$
;	calc.c:256: case '~':
00185$:
;	calc.c:257: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
	jnz	00187$
	mov	r5,#___str_2
	mov	r6,#(___str_2 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00329$:
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
;	calc.c:257: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00329$
	inc	r6
	sjmp	00329$
00187$:
;	calc.c:259: d0 = ~d0;
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
;	calc.c:260: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
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
;	calc.c:262: break;
;	calc.c:263: default:
	sjmp	00190$
00189$:
;	calc.c:264: return UNDEF;
	mov	dptr,#0x8000
;	calc.c:265: }
	sjmp	00331$
00190$:
;	calc.c:267: return 1;
	mov	dptr,#0x0001
00331$:
;	calc.c:268: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'push_acc'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to stack - _bp +1
;ctx                       Allocated to registers r2 r3 r4 
;__1310720061              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	calc.c:270: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function push_acc
;	-----------------------------------------
_push_acc:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	calc.c:271: struct ctx *ctx = (struct ctx *)_ctx;
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	calc.c:274: ctx->acc_valid = 0;
	mov	a,#0x08
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
;	calc.c:275: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
	mov	a,#0x04
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r4
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
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
	mov	a,#0x0b
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	ar7,r4
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
	mov	r5,#___str_4
	mov	r6,#(___str_4 >> 8)
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
;	calc.c:275: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
	cjne	r5,#0x00,00109$
	inc	r6
	sjmp	00109$
00102$:
;	calc.c:277: if (delta->event == EVENT_OP) return operator(_ctx, delta);
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
	mov	r0,_bp
	inc	r0
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
;	calc.c:278: else return 1;
	mov	dptr,#0x0001
00111$:
;	calc.c:279: }
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
;	calc.c:281: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function reset_acc
;	-----------------------------------------
_reset_acc:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:282: struct ctx *ctx = (struct ctx *)_ctx;
;	calc.c:284: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
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
	cjne	r2,#0x05,00102$
	cjne	r3,#0x00,00102$
	mov	a,#0x08
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
;	calc.c:285: ctx->acc = 0l;
	mov	a,#0x04
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
;	calc.c:287: return 1;
	mov	dptr,#0x0001
;	calc.c:288: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'help'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +7
;__1310720063              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720065              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720067              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720069              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720071              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720073              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720075              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720077              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720079              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720081              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720083              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720085              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720087              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
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
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +3
;------------------------------------------------------------
;	calc.c:290: static int help(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function help
;	-----------------------------------------
_help:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x09
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:291: struct ctx *ctx = (struct ctx *)_ctx;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:295: ctx->base, ctx->acc, ctx->acc, (int)ctx->acc_valid);
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x08
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
	mov	r2,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
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
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	calc.c:294: printf("\r\nbase = %ld, acc = %ld / %0.8lx, acc_valid = %d\r\n\r\n",
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x03
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
	add	a,#0x03
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
	push	ar2
	push	ar4
	push	ar6
	push	ar7
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xef
	mov	sp,a
;	calc.c:296: printstr("h\tbase 10\r\n");
	mov	r5,#___str_6
	mov	r6,#(___str_6 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00142$:
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
;	calc.c:296: printstr("h\tbase 10\r\n");
	cjne	r5,#0x00,00142$
	inc	r6
	sjmp	00142$
00102$:
;	calc.c:297: printstr("H\tbase 16\r\n");
	mov	r5,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00145$:
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
;	calc.c:297: printstr("H\tbase 16\r\n");
	cjne	r5,#0x00,00145$
	inc	r6
	sjmp	00145$
00104$:
;	calc.c:298: printstr("p\tpeek top\r\n");
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00148$:
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
;	calc.c:298: printstr("p\tpeek top\r\n");
	cjne	r5,#0x00,00148$
	inc	r6
	sjmp	00148$
00106$:
;	calc.c:299: printstr("P\tprint stack\r\n");
	mov	r5,#___str_9
	mov	r6,#(___str_9 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00151$:
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
;	calc.c:299: printstr("P\tprint stack\r\n");
	cjne	r5,#0x00,00151$
	inc	r6
	sjmp	00151$
00108$:
;	calc.c:300: printstr("v .\tpop top\r\n");
	mov	r5,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00154$:
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
;	calc.c:300: printstr("v .\tpop top\r\n");
	cjne	r5,#0x00,00154$
	inc	r6
	sjmp	00154$
00110$:
;	calc.c:301: printstr("V\tpop all\r\n");
	mov	r5,#___str_11
	mov	r6,#(___str_11 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00157$:
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
;	calc.c:301: printstr("V\tpop all\r\n");
	cjne	r5,#0x00,00157$
	inc	r6
	sjmp	00157$
00112$:
;	calc.c:302: printstr("i\treset acc\r\n");
	mov	r5,#___str_12
	mov	r6,#(___str_12 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00160$:
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
;	calc.c:302: printstr("i\treset acc\r\n");
	cjne	r5,#0x00,00160$
	inc	r6
	sjmp	00160$
00114$:
;	calc.c:303: printstr("I\treset and discard acc\r\n");
	mov	r5,#___str_13
	mov	r6,#(___str_13 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00163$:
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
;	calc.c:303: printstr("I\treset and discard acc\r\n");
	cjne	r5,#0x00,00163$
	inc	r6
	sjmp	00163$
00116$:
;	calc.c:304: printstr("x\texchange top 2\r\n");
	mov	r5,#___str_14
	mov	r6,#(___str_14 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00166$:
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
;	calc.c:304: printstr("x\texchange top 2\r\n");
	cjne	r5,#0x00,00166$
	inc	r6
	sjmp	00166$
00118$:
;	calc.c:305: printstr("+\tadd top 2\r\n");
	mov	r5,#___str_15
	mov	r6,#(___str_15 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00169$:
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
;	calc.c:305: printstr("+\tadd top 2\r\n");
	cjne	r5,#0x00,00169$
	inc	r6
	sjmp	00169$
00120$:
;	calc.c:306: printstr("-\tsubtract top 2\r\n");
	mov	r5,#___str_16
	mov	r6,#(___str_16 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00172$:
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
;	calc.c:306: printstr("-\tsubtract top 2\r\n");
	cjne	r5,#0x00,00172$
	inc	r6
	sjmp	00172$
00122$:
;	calc.c:307: printstr("*\tmultiply top 2\r\n");
	mov	r5,#___str_17
	mov	r6,#(___str_17 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00175$:
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
;	calc.c:307: printstr("*\tmultiply top 2\r\n");
	cjne	r5,#0x00,00175$
	inc	r6
	sjmp	00175$
00124$:
;	calc.c:308: printstr("/\tdivide top 2\r\n");
	mov	r5,#___str_18
	mov	r6,#(___str_18 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00178$:
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
;	calc.c:308: printstr("/\tdivide top 2\r\n");
	cjne	r5,#0x00,00178$
	inc	r6
	sjmp	00178$
00126$:
;	calc.c:309: printstr("%\tmodulus top 2\r\n");
	mov	r5,#___str_19
	mov	r6,#(___str_19 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00181$:
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
;	calc.c:309: printstr("%\tmodulus top 2\r\n");
	cjne	r5,#0x00,00181$
	inc	r6
	sjmp	00181$
00128$:
;	calc.c:310: printstr("&\tand top 2\r\n");
	mov	r5,#___str_20
	mov	r6,#(___str_20 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00184$:
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
;	calc.c:310: printstr("&\tand top 2\r\n");
	cjne	r5,#0x00,00184$
	inc	r6
	sjmp	00184$
00130$:
;	calc.c:311: printstr("|\tor top 2\r\n");
	mov	r5,#___str_21
	mov	r6,#(___str_21 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00187$:
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
;	calc.c:311: printstr("|\tor top 2\r\n");
	cjne	r5,#0x00,00187$
	inc	r6
	sjmp	00187$
00132$:
;	calc.c:312: printstr("^\txor top 2\r\n");
	mov	r5,#___str_22
	mov	r6,#(___str_22 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00190$:
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
;	calc.c:312: printstr("^\txor top 2\r\n");
	cjne	r5,#0x00,00190$
	inc	r6
	sjmp	00190$
00134$:
;	calc.c:313: printstr("~\tbitwise not top\r\n");
	mov	r5,#___str_23
	mov	r6,#(___str_23 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00193$:
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
;	calc.c:313: printstr("~\tbitwise not top\r\n");
	cjne	r5,#0x00,00193$
	inc	r6
	sjmp	00193$
00136$:
;	calc.c:314: printstr("?\thelp\r\n");
	mov	r5,#___str_24
	mov	r6,#(___str_24 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00196$:
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
;	calc.c:314: printstr("?\thelp\r\n");
	cjne	r5,#0x00,00196$
	inc	r6
	sjmp	00196$
00138$:
;	calc.c:315: printstr("q\tquit\r\n");
	mov	r5,#___str_25
	mov	r6,#(___str_25 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00199$:
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
;	calc.c:315: printstr("q\tquit\r\n");
	cjne	r5,#0x00,00199$
	inc	r6
	sjmp	00199$
00140$:
;	calc.c:317: return 1;
	mov	dptr,#0x0001
;	calc.c:318: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;input                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	calc.c:347: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	calc.c:350: c.base = 10l;
	mov	dptr,#_c
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	calc.c:351: c.acc = 0l;
	mov	dptr,#(_c + 0x0004)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	calc.c:352: c.acc_valid = (char)0;
	mov	dptr,#(_c + 0x0008)
	movx	@dptr,a
;	calc.c:353: c.digit[0] = c.digit[1] = '\0';
	mov	dptr,#(_c + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_c + 0x0009)
	movx	@dptr,a
;	calc.c:354: stack_init(&c.s);	
	mov	dptr,#(_c + 0x000b)
	mov	b,#0x00
	lcall	_stack_init
;	calc.c:355: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
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
;	calc.c:357: while (1) {
00150$:
;	calc.c:358: input = getchar();
	lcall	_getchar
;	calc.c:359: (void)putchar(input);
	mov	r6,dpl
	mov  r7,dph
	lcall	_putchar
;	calc.c:360: if ((char)input == 'q') {
	mov	ar5,r6
	cjne	r5,#0x71,00147$
;	calc.c:361: if (state_exec(&s, EVENT_TERM) <= 0) break;
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
	jc	00150$
	ljmp	00151$
00147$:
;	calc.c:362: } else if ((char)input == '?') {
	cjne	r5,#0x3f,00144$
;	calc.c:363: if (state_exec(&s, EVENT_HELP) <= 0) break;
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
	jc	00150$
	ljmp	00151$
00144$:
;	calc.c:364: } else if ((char)input == 'i') {
	cjne	r5,#0x69,00141$
;	calc.c:365: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
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
	jnc	00274$
	ljmp	00150$
00274$:
	ljmp	00151$
00141$:
;	calc.c:366: } else if ((char)input == 'I') {
	cjne	r5,#0x49,00138$
;	calc.c:367: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
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
	jnc	00277$
	ljmp	00150$
00277$:
	ljmp	00151$
00138$:
;	calc.c:368: } else if (isxdigit(input)) {
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	lcall	_isxdigit
	mov	a,dpl
	mov	b,dph
	pop	ar5
	orl	a,b
	jz	00135$
;	calc.c:369: c.digit[0] = (char)input;
	mov	dptr,#(_c + 0x0009)
	mov	a,r5
	movx	@dptr,a
;	calc.c:370: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
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
	jnc	00279$
	ljmp	00150$
00279$:
	ljmp	00151$
00135$:
;	calc.c:372: ((char)input == 'h') || ((char)input == 'H') ||
	cjne	r5,#0x68,00280$
	sjmp	00115$
00280$:
	cjne	r5,#0x48,00281$
	sjmp	00115$
00281$:
;	calc.c:373: ((char)input == 'p') || ((char)input == 'P') ||
	cjne	r5,#0x70,00282$
	sjmp	00115$
00282$:
	cjne	r5,#0x50,00283$
	sjmp	00115$
00283$:
;	calc.c:374: ((char)input == '.') || ((char)input == 'v') || ((char)input == 'V') ||
	cjne	r5,#0x2e,00284$
	sjmp	00115$
00284$:
	cjne	r5,#0x76,00285$
	sjmp	00115$
00285$:
	cjne	r5,#0x56,00286$
	sjmp	00115$
00286$:
;	calc.c:375: ((char)input == 'x') ||
	cjne	r5,#0x78,00287$
	sjmp	00115$
00287$:
;	calc.c:376: ((char)input == '+') ||
	cjne	r5,#0x2b,00288$
	sjmp	00115$
00288$:
;	calc.c:377: ((char)input == '-') ||
	cjne	r5,#0x2d,00289$
	sjmp	00115$
00289$:
;	calc.c:378: ((char)input == '*') ||
	cjne	r5,#0x2a,00290$
	sjmp	00115$
00290$:
;	calc.c:379: ((char)input == '/') ||
	cjne	r5,#0x2f,00291$
	sjmp	00115$
00291$:
;	calc.c:380: ((char)input == '%') ||
	cjne	r5,#0x25,00292$
	sjmp	00115$
00292$:
;	calc.c:381: ((char)input == '&') ||
	cjne	r5,#0x26,00293$
	sjmp	00115$
00293$:
;	calc.c:382: ((char)input == '|') ||
	cjne	r5,#0x7c,00294$
	sjmp	00115$
00294$:
;	calc.c:383: ((char)input == '^') ||
	cjne	r5,#0x5e,00295$
	sjmp	00115$
00295$:
;	calc.c:384: ((char)input == '~')
	cjne	r5,#0x7e,00116$
00115$:
;	calc.c:386: c.digit[0] = (char)input;
	mov	dptr,#(_c + 0x0009)
	mov	a,r5
	movx	@dptr,a
;	calc.c:387: if (state_exec(&s, EVENT_OP) <= 0) break;
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
	jnc	00151$
	ljmp	00150$
00116$:
;	calc.c:389: if (state_exec(&s, EVENT_DELIM) <= 0) break;
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
	jnc	00299$
	ljmp	00150$
00299$:
00151$:
;	calc.c:395: __endasm;
	orl	pcon, #2
;	calc.c:396: }
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
	.db 0x0d
	.db 0x0a
	.ascii "stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.ascii "division by zero"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0d
	.db 0x0a
	.ascii "stack overflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0d
	.db 0x0a
	.ascii "base = %ld, acc = %ld / %0.8lx, acc_valid = %d"
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "h"
	.db 0x09
	.ascii "base 10"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "H"
	.db 0x09
	.ascii "base 16"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "p"
	.db 0x09
	.ascii "peek top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "P"
	.db 0x09
	.ascii "print stack"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "v ."
	.db 0x09
	.ascii "pop top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "V"
	.db 0x09
	.ascii "pop all"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "i"
	.db 0x09
	.ascii "reset acc"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "I"
	.db 0x09
	.ascii "reset and discard acc"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "x"
	.db 0x09
	.ascii "exchange top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "+"
	.db 0x09
	.ascii "add top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "-"
	.db 0x09
	.ascii "subtract top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "*"
	.db 0x09
	.ascii "multiply top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "/"
	.db 0x09
	.ascii "divide top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "%"
	.db 0x09
	.ascii "modulus top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "&"
	.db 0x09
	.ascii "and top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "|"
	.db 0x09
	.ascii "or top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "^"
	.db 0x09
	.ascii "xor top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "~"
	.db 0x09
	.ascii "bitwise not top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "?"
	.db 0x09
	.ascii "help"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "q"
	.db 0x09
	.ascii "quit"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "PT %0.8lx"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "PT %ld"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "PA %0.8lx"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "PA %ld"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "VT %0.8lx"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "VT %ld"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "VA %0.8lx"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "VA %ld"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__hexp:
	.byte ___str_26, (___str_26 >> 8),#0x80
__xinit__decp:
	.byte ___str_27, (___str_27 >> 8),#0x80
__xinit__hexP:
	.byte ___str_28, (___str_28 >> 8),#0x80
__xinit__decP:
	.byte ___str_29, (___str_29 >> 8),#0x80
__xinit__hexv:
	.byte ___str_30, (___str_30 >> 8),#0x80
__xinit__decv:
	.byte ___str_31, (___str_31 >> 8),#0x80
__xinit__hexV:
	.byte ___str_32, (___str_32 >> 8),#0x80
__xinit__decV:
	.byte ___str_33, (___str_33 >> 8),#0x80
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
	.byte #0x05, #0x00	;  5
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
	.byte #0x04, #0x00	;  4
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte _reset_acc, (_reset_acc >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x05, #0x00	;  5
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xff, #0x7f	;  32767
	.byte #0x03, #0x00	;  3
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte _help, (_help >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x06, #0x00	;  6
	.byte #0x03, #0x00	;  3
	.byte #0x00,#0x00
	.byte _dump_pop, (_dump_pop >> 8)
	.byte #0x00, #0x80	; -32768
	.byte #0x00, #0x80	; -32768
	.byte #0x00, #0x80	; -32768
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.area CABS    (ABS,CODE)
