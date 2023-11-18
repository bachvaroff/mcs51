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
;	calc.c:21: __endasm;
	mov	a, dpl
	ljmp	0x0030
;	calc.c:22: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	calc.c:24: int getchar(void) __naked {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	naked function: no prologue.
;	calc.c:30: __endasm;
	lcall	0x0032
	mov	dpl, a
	mov	dph, #0
	ret
;	calc.c:31: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_poll'
;------------------------------------------------------------
;	calc.c:33: int getchar_poll(void) __naked {
;	-----------------------------------------
;	 function getchar_poll
;	-----------------------------------------
_getchar_poll:
;	naked function: no prologue.
;	calc.c:45: __endasm;
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
;	calc.c:46: }
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
;	calc.c:63: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
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
;	calc.c:64: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:69: if (!ctx->acc_valid) {
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
;	calc.c:70: ctx->acc_valid = 1;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	calc.c:71: ctx->acc = 0l;
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
;	calc.c:74: d = strtol(ctx->digit, NULL, ctx->base);
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
;	calc.c:75: ctx->acc = ctx->acc * (long)ctx->base + d;
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
;	calc.c:77: return 1;
	mov	dptr,#0x0001
;	calc.c:78: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_pop'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +8
;d                         Allocated to stack - _bp +11
;r                         Allocated to stack - _bp +5
;__1310720001              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080003              Allocated to registers 
;s                         Allocated to registers r4 r5 r6 
;__1966080005              Allocated to registers 
;s                         Allocated to registers r4 r5 r6 
;__1966080007              Allocated to registers r3 r4 r5 r6 
;d                         Allocated to stack - _bp +15
;mask                      Allocated to stack - _bp +19
;__1966080009              Allocated to registers 
;s                         Allocated to registers r4 r5 r6 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;sloc2                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	calc.c:80: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function dump_pop
;	-----------------------------------------
_dump_pop:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x16
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:81: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:85: if (delta->event == EVENT_TERM) printstr("\r\n");
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
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00122$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:85: if (delta->event == EVENT_TERM) printstr("\r\n");
	sjmp	00122$
00102$:
;	calc.c:87: r = stack_pop(ctx->ps, &d);
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x0b
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
	add	a,#0x08
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
	push	ar4
	push	ar3
	push	ar2
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	calc.c:88: if (!r) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	orl	a,r6
	jnz	00154$
;	calc.c:89: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x08,00212$
	cjne	r3,#0x00,00212$
	ljmp	00110$
00212$:
	mov	r4,#___str_1
	mov	r5,#(___str_1 >> 8)
	mov	r6,#0x80
;	calc.c:51: return;
00125$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:90: } else while (r > 0) {
	cjne	r4,#0x00,00125$
	inc	r5
	sjmp	00125$
00154$:
00105$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
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
;	calc.c:91: printstr("VA ");
	mov	r4,#___str_2
	mov	r5,#(___str_2 >> 8)
	mov	r6,#0x80
;	calc.c:51: return;
00128$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:91: printstr("VA ");
	cjne	r4,#0x00,00128$
	inc	r5
	sjmp	00128$
00116$:
;	calc.c:92: printf("% 11ld / ", d);
	push	ar7
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
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:93: printf("%08lx / ", d);
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
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar7
;	calc.c:94: printbin(d);
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
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
00130$:
;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	push	ar7
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar3,@r0
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
;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
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
	jnz	00130$
;	calc.c:95: printstr("\r\n");
	mov	r4,#___str_0
	mov	r5,#(___str_0 >> 8)
	mov	r6,#0x80
;	calc.c:51: return;
00133$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:95: printstr("\r\n");
	cjne	r4,#0x00,00133$
	inc	r5
	sjmp	00133$
00120$:
;	calc.c:96: r = stack_pop(ctx->ps, &d);
	mov	ar4,r7
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
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
	mov	r7,a
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
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	pop	ar7
	ljmp	00105$
00110$:
;	calc.c:99: return 1;
	mov	dptr,#0x0001
;	calc.c:100: }
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
;	calc.c:102: static int dump_peek(void *_ctx, long d) __reentrant {
;	-----------------------------------------
;	 function dump_peek
;	-----------------------------------------
_dump_peek:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x08
	mov	sp,a
;	calc.c:105: printstr("PA ");
	mov	r5,#___str_5
	mov	r6,#(___str_5 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00108$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:105: printstr("PA ");
	cjne	r5,#0x00,00108$
	inc	r6
	sjmp	00108$
00102$:
;	calc.c:106: printf("% 11ld / ", d);
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
	add	a,#0xf9
	mov	sp,a
;	calc.c:107: printf("%08lx / ", d);
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
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:108: printbin(d);
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
;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
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
;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
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
;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
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
;	calc.c:109: printstr("\r\n");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00113$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:109: printstr("\r\n");
	cjne	r5,#0x00,00113$
	inc	r6
	sjmp	00113$
00106$:
;	calc.c:111: return 1;
	mov	dptr,#0x0001
;	calc.c:112: }
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
;__1966080017              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080019              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440021              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440023              Allocated to registers r7 r6 r5 r4 
;d                         Allocated to registers r7 r6 r5 r2 
;mask                      Allocated to stack - _bp +29
;__2621440025              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080027              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080029              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080031              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080033              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440035              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440037              Allocated to registers r7 r6 r5 r4 
;d                         Allocated to registers r7 r6 r5 r2 
;mask                      Allocated to stack - _bp +29
;__2621440039              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080041              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080043              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440045              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080047              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__3276800049              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080051              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__3276800053              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080055              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080057              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080059              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080061              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080063              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__3276800065              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080067              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440069              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080071              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440073              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080075              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440077              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080079              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440081              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440083              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080085              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440087              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440089              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080091              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__2621440093              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080095              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__2621440097              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080099              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__2621440101              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080103              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__2621440105              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080107              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__2621440109              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080111              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__2621440113              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;__1966080115              Allocated to registers 
;s                         Allocated to registers r5 r4 r3 
;sloc0                     Allocated to stack - _bp +330
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +7
;sloc3                     Allocated to stack - _bp +11
;sloc4                     Allocated to stack - _bp +14
;------------------------------------------------------------
;	calc.c:114: static int operator(void *_ctx, delta_t *delta) __reentrant {
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
	add	a,#0x1d
	mov	sp,a
;	calc.c:115: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
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
;	calc.c:119: switch (ctx->digit[0]) {
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
	cjne	r4,#0x23,01232$
	ljmp	00189$
01232$:
	cjne	r4,#0x25,01233$
	ljmp	00189$
01233$:
	cjne	r4,#0x26,01234$
	ljmp	00202$
01234$:
	cjne	r4,#0x2a,01235$
	ljmp	00167$
01235$:
	cjne	r4,#0x2b,01236$
	ljmp	00153$
01236$:
	cjne	r4,#0x2d,01237$
	ljmp	00160$
01237$:
	cjne	r4,#0x2e,01238$
	ljmp	00109$
01238$:
	cjne	r4,#0x2f,01239$
	ljmp	00175$
01239$:
	cjne	r4,#0x3c,01240$
	ljmp	00237$
01240$:
	cjne	r4,#0x3e,01241$
	ljmp	00223$
01241$:
	cjne	r4,#0x4d,01242$
	ljmp	00127$
01242$:
	cjne	r4,#0x50,01243$
	ljmp	00105$
01243$:
	cjne	r4,#0x54,01244$
	ljmp	00145$
01244$:
	cjne	r4,#0x55,01245$
	ljmp	00139$
01245$:
	cjne	r4,#0x56,01246$
	ljmp	00113$
01246$:
	cjne	r4,#0x58,01247$
	ljmp	00152$
01247$:
	cjne	r4,#0x5c,01248$
	ljmp	00175$
01248$:
	cjne	r4,#0x5d,01249$
	ljmp	00230$
01249$:
	cjne	r4,#0x5e,01250$
	ljmp	00216$
01250$:
	cjne	r4,#0x6d,01251$
	ljmp	00121$
01251$:
	cjne	r4,#0x70,01252$
	sjmp	00101$
01252$:
	cjne	r4,#0x75,01253$
	ljmp	00133$
01253$:
	cjne	r4,#0x76,01254$
	ljmp	00109$
01254$:
	cjne	r4,#0x78,01255$
	ljmp	00114$
01255$:
	cjne	r4,#0x7c,01256$
	ljmp	00209$
01256$:
	cjne	r4,#0x7e,01257$
	ljmp	00244$
01257$:
	ljmp	00248$
;	calc.c:120: case 'p':
00101$:
;	calc.c:121: printstr("\r\n");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00351$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:121: printstr("\r\n");
	cjne	r7,#0x00,00351$
	inc	r6
	sjmp	00351$
00251$:
;	calc.c:122: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
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
	mov	r7,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00354$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01261$
	ljmp	00249$
01261$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:122: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
	cjne	r7,#0x00,00354$
	inc	r6
	sjmp	00354$
00103$:
;	calc.c:124: printstr("PT ");
	mov	r7,#___str_6
	mov	r6,#(___str_6 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00357$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:124: printstr("PT ");
	cjne	r7,#0x00,00357$
	inc	r6
	sjmp	00357$
00255$:
;	calc.c:125: printf("% 11ld / ", d0);
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
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:126: printf("%08lx / ", d0);
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
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:127: printbin(d0);
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
	mov	ar2,r4
;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00359$:
;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
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
	add	a,#0x1d
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
	jz	00500$
	mov	r3,#0x31
	mov	r4,#0x00
	sjmp	00501$
00500$:
	mov	r3,#0x30
	mov	r4,#0x00
00501$:
	mov	dpl,r3
	mov	dph,r4
	lcall	_putchar
;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1d
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
	add	a,#0x1d
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00359$
;	calc.c:128: printstr("\r\n");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00362$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01267$
	ljmp	00249$
01267$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:131: case 'P':
	cjne	r7,#0x00,00362$
	inc	r6
	sjmp	00362$
00105$:
;	calc.c:132: printstr("\r\n");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00365$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00261$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:132: printstr("\r\n");
	cjne	r7,#0x00,00365$
	inc	r6
	sjmp	00365$
00261$:
;	calc.c:133: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
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
	jz	01271$
	ljmp	00249$
01271$:
	mov	r7,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00368$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01272$
	ljmp	00249$
01272$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:136: case 'v':
	cjne	r7,#0x00,00368$
	inc	r6
	sjmp	00368$
00109$:
;	calc.c:137: printstr("\r\n");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00371$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00265$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:137: printstr("\r\n");
	cjne	r7,#0x00,00371$
	inc	r6
	sjmp	00371$
00265$:
;	calc.c:138: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
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
	mov	r7,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00374$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01277$
	ljmp	00249$
01277$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:138: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
	cjne	r7,#0x00,00374$
	inc	r6
	sjmp	00374$
00111$:
;	calc.c:140: printstr("VT ");
	mov	r7,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00377$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00269$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:140: printstr("VT ");
	cjne	r7,#0x00,00377$
	inc	r6
	sjmp	00377$
00269$:
;	calc.c:141: printf("% 11ld / ", d0);
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
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:142: printf("%08lx / ", d0);
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
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:143: printbin(d0);
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
	mov	ar2,r4
;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1d
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00379$:
;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
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
	add	a,#0x1d
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
;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1d
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
	add	a,#0x1d
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00379$
;	calc.c:144: printstr("\r\n");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00382$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01283$
	ljmp	00249$
01283$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:147: case 'V':
	cjne	r7,#0x00,00382$
	inc	r6
	sjmp	00382$
00113$:
;	calc.c:148: printstr("\r\n");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00385$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00275$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:148: printstr("\r\n");
	cjne	r7,#0x00,00385$
	inc	r6
	sjmp	00385$
00275$:
;	calc.c:149: (void)dump_pop(_ctx, delta);
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
;	calc.c:150: break;
	ljmp	00249$
;	calc.c:151: case 'x':
00114$:
;	calc.c:152: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00388$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01288$
	ljmp	00249$
01288$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:152: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00388$
	inc	r6
	sjmp	00388$
00119$:
;	calc.c:153: else if (!stack_pop(ctx->ps, &d1)) {
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
;	calc.c:154: (void)stack_push(ctx->ps, d0);
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
;	calc.c:155: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00391$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01291$
	ljmp	00249$
01291$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:155: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00391$
	inc	r6
	sjmp	00391$
00116$:
;	calc.c:157: (void)stack_push(ctx->ps, d0);
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
;	calc.c:158: (void)stack_push(ctx->ps, d1);
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
;	calc.c:160: break;
	ljmp	00249$
;	calc.c:161: case 'm':
00121$:
;	calc.c:162: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00394$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01294$
	ljmp	00249$
01294$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:162: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00394$
	inc	r6
	sjmp	00394$
00125$:
;	calc.c:164: if (!stack_push(ctx->ss, d0)) {
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
	jz	01296$
	ljmp	00249$
01296$:
;	calc.c:165: printstr("\r\nsecondary stack overflow\r\n");
	mov	r7,#___str_9
	mov	r6,#(___str_9 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00397$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00283$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:165: printstr("\r\nsecondary stack overflow\r\n");
	cjne	r7,#0x00,00397$
	inc	r6
	sjmp	00397$
00283$:
;	calc.c:166: (void)stack_push(ctx->ps, d0);
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
;	calc.c:169: break;
	ljmp	00249$
;	calc.c:170: case 'M':
00127$:
;	calc.c:171: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
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
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00400$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01300$
	ljmp	00249$
01300$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:171: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
	cjne	r7,#0x00,00400$
	inc	r6
	sjmp	00400$
00131$:
;	calc.c:173: if (!stack_push(ctx->ps, d0)) {
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
	jz	01302$
	ljmp	00249$
01302$:
;	calc.c:174: printstr("\r\nstack overflow\r\n");
	mov	r7,#___str_11
	mov	r6,#(___str_11 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00403$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00287$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:174: printstr("\r\nstack overflow\r\n");
	cjne	r7,#0x00,00403$
	inc	r6
	sjmp	00403$
00287$:
;	calc.c:175: (void)stack_push(ctx->ss, d0);
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
;	calc.c:178: break;
	ljmp	00249$
;	calc.c:179: case 'u':
00133$:
;	calc.c:180: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00406$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01306$
	ljmp	00249$
01306$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:180: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00406$
	inc	r6
	sjmp	00406$
00137$:
;	calc.c:181: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
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
	jz	01308$
	ljmp	00249$
01308$:
	mov	r7,#___str_9
	mov	r6,#(___str_9 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00409$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01309$
	ljmp	00249$
01309$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:183: case 'U':
	cjne	r7,#0x00,00409$
	inc	r6
	sjmp	00409$
00139$:
;	calc.c:184: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
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
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00412$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01312$
	ljmp	00249$
01312$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:184: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
	cjne	r7,#0x00,00412$
	inc	r6
	sjmp	00412$
00143$:
;	calc.c:185: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
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
	jz	01314$
	ljmp	00249$
01314$:
	mov	r7,#___str_11
	mov	r6,#(___str_11 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00415$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01315$
	ljmp	00249$
01315$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:187: case 'T':
	cjne	r7,#0x00,00415$
	inc	r6
	sjmp	00415$
00145$:
;	calc.c:188: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00418$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01318$
	ljmp	00249$
01318$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:188: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00418$
	inc	r6
	sjmp	00418$
00150$:
;	calc.c:190: if (!stack_pop(ctx->ss, &d1)) {
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
;	calc.c:191: printstr("\r\nsecondary stack underflow\r\n");
	mov	r7,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00421$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00299$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:191: printstr("\r\nsecondary stack underflow\r\n");
	cjne	r7,#0x00,00421$
	inc	r6
	sjmp	00421$
00299$:
;	calc.c:192: (void)stack_push(ctx->ps, d0);
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
;	calc.c:194: (void)stack_push(ctx->ps, d1);
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
;	calc.c:195: (void)stack_push(ctx->ss, d0);
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
;	calc.c:198: break;
	ljmp	00249$
;	calc.c:199: case 'X':
00152$:
;	calc.c:200: t0 = ctx->ps;
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
;	calc.c:201: ctx->ps = ctx->ss;
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
;	calc.c:202: ctx->ss = t0;
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
;	calc.c:203: break;
	ljmp	00249$
;	calc.c:204: case '+':
00153$:
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
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00424$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01324$
	ljmp	00249$
01324$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:205: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00424$
	inc	r6
	sjmp	00424$
00158$:
;	calc.c:206: else if (!stack_pop(ctx->ps, &d1)) {
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
;	calc.c:207: (void)stack_push(ctx->ps, d0);
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
;	calc.c:208: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00427$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01327$
	ljmp	00249$
01327$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:208: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00427$
	inc	r6
	sjmp	00427$
00155$:
;	calc.c:210: d1 += d0;
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
;	calc.c:211: (void)stack_push(ctx->ps, d1);
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
;	calc.c:213: break;
	ljmp	00249$
;	calc.c:214: case '-':
00160$:
;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00430$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01330$
	ljmp	00249$
01330$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00430$
	inc	r6
	sjmp	00430$
00165$:
;	calc.c:216: else if (!stack_pop(ctx->ps, &d1)) {
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
;	calc.c:217: (void)stack_push(ctx->ps, d0);
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
;	calc.c:218: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00433$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01333$
	ljmp	00249$
01333$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:218: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00433$
	inc	r6
	sjmp	00433$
00162$:
;	calc.c:220: d1 -= d0;
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
;	calc.c:221: (void)stack_push(ctx->ps, d1);
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
;	calc.c:223: break;
	ljmp	00249$
;	calc.c:224: case '*':
00167$:
;	calc.c:225: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00436$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01336$
	ljmp	00249$
01336$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:225: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00436$
	inc	r6
	sjmp	00436$
00172$:
;	calc.c:226: else if (!stack_pop(ctx->ps, &d1)) {
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
;	calc.c:227: (void)stack_push(ctx->ps, d0);
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
;	calc.c:228: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00439$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01339$
	ljmp	00249$
01339$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:228: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00439$
	inc	r6
	sjmp	00439$
00169$:
;	calc.c:230: d1 *= d0;
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
;	calc.c:231: (void)stack_push(ctx->ps, d1);
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
;	calc.c:233: break;
	ljmp	00249$
;	calc.c:235: case '\\':
00175$:
;	calc.c:236: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00442$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01342$
	ljmp	00249$
01342$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:236: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00442$
	inc	r6
	sjmp	00442$
00186$:
;	calc.c:237: else if (!stack_pop(ctx->ps, &d1)) {
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
;	calc.c:238: (void)stack_push(ctx->ps, d0);
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
;	calc.c:239: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00445$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01345$
	ljmp	00249$
01345$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:239: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00445$
	inc	r6
	sjmp	00445$
00183$:
;	calc.c:240: } else if (!d0) {
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
	jz	01347$
	ljmp	00180$
01347$:
;	calc.c:241: (void)stack_push(ctx->ps, d1);
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
;	calc.c:242: (void)stack_push(ctx->ps, d0);			
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
;	calc.c:243: printstr("\r\ndivision by zero\r\n");
	mov	r7,#___str_12
	mov	r6,#(___str_12 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00448$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01348$
	ljmp	00249$
01348$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:243: printstr("\r\ndivision by zero\r\n");
	cjne	r7,#0x00,00448$
	inc	r6
	sjmp	00448$
00180$:
;	calc.c:245: if (ctx->digit[0] == '/') d1 /= d0;
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
;	calc.c:246: else d1 = (unsigned long)d1 / (unsigned long)d0;
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
;	calc.c:247: (void)stack_push(ctx->ps, d1);
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
;	calc.c:249: break;
	ljmp	00249$
;	calc.c:251: case '#':
00189$:
;	calc.c:252: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00451$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01353$
	ljmp	00249$
01353$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:252: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00451$
	inc	r6
	sjmp	00451$
00200$:
;	calc.c:253: else if (!stack_pop(ctx->ps, &d1)) {
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
;	calc.c:254: (void)stack_push(ctx->ps, d0);
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
;	calc.c:255: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00454$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01356$
	ljmp	00249$
01356$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:255: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00454$
	inc	r6
	sjmp	00454$
00197$:
;	calc.c:256: } else if (!d0) {
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
	jz	01358$
	ljmp	00194$
01358$:
;	calc.c:257: (void)stack_push(ctx->ps, d1);
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
;	calc.c:258: (void)stack_push(ctx->ps, d0);			
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
;	calc.c:259: printstr("\r\ndivision by zero\r\n");
	mov	r7,#___str_12
	mov	r6,#(___str_12 >> 8)
	mov	r5,#0x80
;	calc.c:51: return;
00457$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01359$
	ljmp	00249$
01359$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:259: printstr("\r\ndivision by zero\r\n");
	cjne	r7,#0x00,00457$
	inc	r6
	sjmp	00457$
00194$:
;	calc.c:261: if (ctx->digit[0] == '%') d1 %= d0;
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
;	calc.c:262: else d1 = (unsigned long)d1 % (unsigned long)d0;
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
;	calc.c:263: (void)stack_push(ctx->ps, d1);
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
;	calc.c:265: break;
	ljmp	00249$
;	calc.c:266: case '&':
00202$:
;	calc.c:267: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00460$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01364$
	ljmp	00249$
01364$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:267: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00460$
	inc	r4
	sjmp	00460$
00207$:
;	calc.c:268: else if (!stack_pop(ctx->ps, &d1)) {
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
;	calc.c:269: (void)stack_push(ctx->ps, d0);
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
;	calc.c:270: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00463$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01367$
	ljmp	00249$
01367$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:270: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00463$
	inc	r4
	sjmp	00463$
00204$:
;	calc.c:272: d1 &= d0;
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
;	calc.c:273: (void)stack_push(ctx->ps, d1);
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
;	calc.c:275: break;
	ljmp	00249$
;	calc.c:276: case '|':
00209$:
;	calc.c:277: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00466$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01370$
	ljmp	00249$
01370$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:277: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00466$
	inc	r4
	sjmp	00466$
00214$:
;	calc.c:278: else if (!stack_pop(ctx->ps, &d1)) {
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
;	calc.c:279: (void)stack_push(ctx->ps, d0);
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
;	calc.c:280: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00469$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01373$
	ljmp	00249$
01373$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:280: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00469$
	inc	r4
	sjmp	00469$
00211$:
;	calc.c:282: d1 |= d0;
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
;	calc.c:283: (void)stack_push(ctx->ps, d1);
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
;	calc.c:285: break;
	ljmp	00249$
;	calc.c:286: case '^':
00216$:
;	calc.c:287: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00472$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01376$
	ljmp	00249$
01376$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:287: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00472$
	inc	r4
	sjmp	00472$
00221$:
;	calc.c:288: else if (!stack_pop(ctx->ps, &d1)) {
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
;	calc.c:289: (void)stack_push(ctx->ps, d0);
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
;	calc.c:290: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00475$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01379$
	ljmp	00249$
01379$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:290: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00475$
	inc	r4
	sjmp	00475$
00218$:
;	calc.c:292: d1 ^= d0;
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
;	calc.c:293: (void)stack_push(ctx->ps, d1);
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
;	calc.c:295: break;
	ljmp	00249$
;	calc.c:296: case '>':
00223$:
;	calc.c:297: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00478$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01382$
	ljmp	00249$
01382$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:297: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00478$
	inc	r4
	sjmp	00478$
00228$:
;	calc.c:298: else if (!stack_pop(ctx->ps, &d1)) {
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
;	calc.c:299: (void)stack_push(ctx->ps, d0);
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
;	calc.c:300: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00481$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01385$
	ljmp	00249$
01385$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:300: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00481$
	inc	r4
	sjmp	00481$
00225$:
;	calc.c:302: d1 = (unsigned long)d1 >> ((unsigned long)d0 & 0x0000001flu);
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
	mov	ar3,@r0
	anl	ar3,#0x1f
	mov	b,r3
	inc	b
	sjmp	01388$
01387$:
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
01388$:
	djnz	b,01387$
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
;	calc.c:303: (void)stack_push(ctx->ps, d1);
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
;	calc.c:305: break;
	ljmp	00249$
;	calc.c:306: case ']':
00230$:
;	calc.c:307: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00484$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01390$
	ljmp	00249$
01390$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:307: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00484$
	inc	r4
	sjmp	00484$
00235$:
;	calc.c:308: else if (!stack_pop(ctx->ps, &d1)) {
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
;	calc.c:309: (void)stack_push(ctx->ps, d0);
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
;	calc.c:310: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00487$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01393$
	ljmp	00249$
01393$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:310: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00487$
	inc	r4
	sjmp	00487$
00232$:
;	calc.c:312: d1 >>= ((unsigned long)d0 & 0x0000001flu);
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	ar7,@r0
	anl	ar7,#0x1f
	mov	b,r7
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
	sjmp	01396$
01395$:
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
01396$:
	djnz	b,01395$
;	calc.c:313: (void)stack_push(ctx->ps, d1);
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
;	calc.c:315: break;
	ljmp	00249$
;	calc.c:316: case '<':
00237$:
;	calc.c:317: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	jnz	00242$
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00490$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01398$
	ljmp	00249$
01398$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:317: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00490$
	inc	r4
	sjmp	00490$
00242$:
;	calc.c:318: else if (!stack_pop(ctx->ps, &d1)) {
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
	jnz	00239$
;	calc.c:319: (void)stack_push(ctx->ps, d0);
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
;	calc.c:320: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00493$:
;	calc.c:49: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	jnz	01401$
	ljmp	00249$
01401$:
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
	inc	r5
;	calc.c:320: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00493$
	inc	r4
	sjmp	00493$
00239$:
;	calc.c:322: d1 <<= ((unsigned long)d0 & 0x0000001flu);
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	ar7,@r0
	mov	a,#0x1f
	anl	a,r7
	mov	r3,a
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
	mov	b,r3
	inc	b
	sjmp	01404$
01403$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
01404$:
	djnz	b,01403$
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
;	calc.c:323: (void)stack_push(ctx->ps, d1);
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
;	calc.c:325: break;
	ljmp	00249$
;	calc.c:326: case '~':
00244$:
;	calc.c:327: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
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
	mov	r5,#___str_8
	mov	r4,#(___str_8 >> 8)
	mov	r3,#0x80
;	calc.c:51: return;
00496$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:327: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00496$
	inc	r4
	sjmp	00496$
00246$:
;	calc.c:329: d0 = ~d0;
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
;	calc.c:330: (void)stack_push(ctx->ps, d0);
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
;	calc.c:332: break;
;	calc.c:333: default:
	sjmp	00249$
00248$:
;	calc.c:334: return UNDEF;
	mov	dptr,#0x8000
;	calc.c:335: }
	sjmp	00498$
00249$:
;	calc.c:337: return 1;
	mov	dptr,#0x0001
00498$:
;	calc.c:338: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'push_acc'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to stack - _bp +1
;ctx                       Allocated to registers r2 r3 r4 
;__1310720117              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	calc.c:340: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
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
;	calc.c:341: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	calc.c:345: ctx->acc_valid = 0;
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
;	calc.c:346: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
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
	mov	r5,#___str_11
	mov	r6,#(___str_11 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00109$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:346: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
	cjne	r5,#0x00,00109$
	inc	r6
	sjmp	00109$
00102$:
;	calc.c:348: if (delta->event == EVENT_OP) return operator(_ctx, delta);
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
;	calc.c:349: else return 1;
	mov	dptr,#0x0001
00111$:
;	calc.c:350: }
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
;	calc.c:352: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function reset_acc
;	-----------------------------------------
_reset_acc:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:353: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
;	calc.c:355: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
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
;	calc.c:356: ctx->acc = 0l;
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
;	calc.c:358: return 1;
	mov	dptr,#0x0001
;	calc.c:359: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_base'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:361: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function reset_base
;	-----------------------------------------
_reset_base:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:362: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
;	calc.c:366: switch (ctx->digit[0]) {
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
;	calc.c:367: case 'H':
	cjne	r4,#0x6f,00105$
	sjmp	00104$
00101$:
;	calc.c:368: ctx->base = 16;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x10
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:369: break;
;	calc.c:370: case 'h':
	sjmp	00105$
00102$:
;	calc.c:371: ctx->base = 10;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:372: break;
;	calc.c:373: case 'O':
	sjmp	00105$
00103$:
;	calc.c:374: ctx->base = 8;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:375: break;
;	calc.c:376: case 'o':
	sjmp	00105$
00104$:
;	calc.c:377: ctx->base = 2;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:379: }
00105$:
;	calc.c:381: return 1;
	mov	dptr,#0x0001
;	calc.c:382: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'status'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +4
;__1310720119              Allocated to registers 
;d                         Allocated to stack - _bp +7
;mask                      Allocated to stack - _bp +11
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	calc.c:384: static int status(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function status
;	-----------------------------------------
_status:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0e
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:385: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:389: printf("\r\nbase = %d, ", ctx->base);
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
	push	ar3
	push	ar4
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	calc.c:390: printf("acc = %ld / ", ctx->acc);
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
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:391: printf("%08lx / ", ctx->acc);
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
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:392: printbin(ctx->acc);
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
;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
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
00103$:
;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
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
	jz	00107$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00108$
00107$:
	mov	r6,#0x30
	mov	r7,#0x00
00108$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
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
	jnz	00103$
;	calc.c:393: printf(", acc_valid = %d\r\n", (int)ctx->acc_valid);
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
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	calc.c:394: printf("primary = %p, secondary = %p\r\n", ctx->ps, ctx->ss);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r5,a
	mov	a,#0x40
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
	mov	a,_bp
	add	a,#0x04
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
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	push	ar4
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	calc.c:396: return 1;
	mov	dptr,#0x0001
;	calc.c:397: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'help'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers 
;__1310720121              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720123              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720125              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720127              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720129              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720131              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720133              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720135              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720137              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720139              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720141              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720143              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720145              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720147              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720149              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
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
;------------------------------------------------------------
;	calc.c:399: static int help(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function help
;	-----------------------------------------
_help:
	push	_bp
	mov	_bp,sp
;	calc.c:403: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
	mov	r5,#___str_17
	mov	r6,#(___str_17 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00164$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:403: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
	cjne	r5,#0x00,00164$
	inc	r6
	sjmp	00164$
00102$:
;	calc.c:404: printstr("p\tpeek top\r\n");
	mov	r5,#___str_18
	mov	r6,#(___str_18 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00167$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:404: printstr("p\tpeek top\r\n");
	cjne	r5,#0x00,00167$
	inc	r6
	sjmp	00167$
00104$:
;	calc.c:405: printstr("P\tprint stack\r\n");
	mov	r5,#___str_19
	mov	r6,#(___str_19 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00170$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:405: printstr("P\tprint stack\r\n");
	cjne	r5,#0x00,00170$
	inc	r6
	sjmp	00170$
00106$:
;	calc.c:406: printstr("v.\tpop top\r\n");
	mov	r5,#___str_20
	mov	r6,#(___str_20 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00173$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:406: printstr("v.\tpop top\r\n");
	cjne	r5,#0x00,00173$
	inc	r6
	sjmp	00173$
00108$:
;	calc.c:407: printstr("V\tpop all\r\n");
	mov	r5,#___str_21
	mov	r6,#(___str_21 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00176$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:407: printstr("V\tpop all\r\n");
	cjne	r5,#0x00,00176$
	inc	r6
	sjmp	00176$
00110$:
;	calc.c:408: printstr("i\treset acc\r\n");
	mov	r5,#___str_22
	mov	r6,#(___str_22 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00179$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:408: printstr("i\treset acc\r\n");
	cjne	r5,#0x00,00179$
	inc	r6
	sjmp	00179$
00112$:
;	calc.c:409: printstr("I\treset and discard acc\r\n");
	mov	r5,#___str_23
	mov	r6,#(___str_23 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00182$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:409: printstr("I\treset and discard acc\r\n");
	cjne	r5,#0x00,00182$
	inc	r6
	sjmp	00182$
00114$:
;	calc.c:410: printstr("x\texchange top 2\r\n");
	mov	r5,#___str_24
	mov	r6,#(___str_24 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00185$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:410: printstr("x\texchange top 2\r\n");
	cjne	r5,#0x00,00185$
	inc	r6
	sjmp	00185$
00116$:
;	calc.c:411: printstr("X\texchange stacks primary <-> secondary\r\n");
	mov	r5,#___str_25
	mov	r6,#(___str_25 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00188$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:411: printstr("X\texchange stacks primary <-> secondary\r\n");
	cjne	r5,#0x00,00188$
	inc	r6
	sjmp	00188$
00118$:
;	calc.c:412: printstr("T\texchange tops primary <-> secondary\r\n");
	mov	r5,#___str_26
	mov	r6,#(___str_26 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00191$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:412: printstr("T\texchange tops primary <-> secondary\r\n");
	cjne	r5,#0x00,00191$
	inc	r6
	sjmp	00191$
00120$:
;	calc.c:413: printstr("U\tcopy top secondary -> primary\r\n");
	mov	r5,#___str_27
	mov	r6,#(___str_27 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00194$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:413: printstr("U\tcopy top secondary -> primary\r\n");
	cjne	r5,#0x00,00194$
	inc	r6
	sjmp	00194$
00122$:
;	calc.c:414: printstr("u\tcopy top primary -> secondary\r\n");
	mov	r5,#___str_28
	mov	r6,#(___str_28 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00197$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:414: printstr("u\tcopy top primary -> secondary\r\n");
	cjne	r5,#0x00,00197$
	inc	r6
	sjmp	00197$
00124$:
;	calc.c:415: printstr("M\tmove top secondary -> primary\r\n");
	mov	r5,#___str_29
	mov	r6,#(___str_29 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00200$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:415: printstr("M\tmove top secondary -> primary\r\n");
	cjne	r5,#0x00,00200$
	inc	r6
	sjmp	00200$
00126$:
;	calc.c:416: printstr("m\tmove top primary -> secondary\r\n");
	mov	r5,#___str_30
	mov	r6,#(___str_30 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00203$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:416: printstr("m\tmove top primary -> secondary\r\n");
	cjne	r5,#0x00,00203$
	inc	r6
	sjmp	00203$
00128$:
;	calc.c:417: printstr("+\tadd top 2\r\n");
	mov	r5,#___str_31
	mov	r6,#(___str_31 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00206$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:417: printstr("+\tadd top 2\r\n");
	cjne	r5,#0x00,00206$
	inc	r6
	sjmp	00206$
00130$:
;	calc.c:418: printstr("-\tsubtract top 2\r\n");
	mov	r5,#___str_32
	mov	r6,#(___str_32 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00209$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:418: printstr("-\tsubtract top 2\r\n");
	cjne	r5,#0x00,00209$
	inc	r6
	sjmp	00209$
00132$:
;	calc.c:419: printstr("*\tmultiply top 2\r\n");
	mov	r5,#___str_33
	mov	r6,#(___str_33 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00212$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:419: printstr("*\tmultiply top 2\r\n");
	cjne	r5,#0x00,00212$
	inc	r6
	sjmp	00212$
00134$:
;	calc.c:420: printstr("/\tdivide top 2\r\n");
	mov	r5,#___str_34
	mov	r6,#(___str_34 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00215$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:420: printstr("/\tdivide top 2\r\n");
	cjne	r5,#0x00,00215$
	inc	r6
	sjmp	00215$
00136$:
;	calc.c:421: printstr("\\\tdivide top 2 unsigned\r\n");	
	mov	r5,#___str_35
	mov	r6,#(___str_35 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00218$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:421: printstr("\\\tdivide top 2 unsigned\r\n");	
	cjne	r5,#0x00,00218$
	inc	r6
	sjmp	00218$
00138$:
;	calc.c:422: printstr("%\tmodulus top 2\r\n");
	mov	r5,#___str_36
	mov	r6,#(___str_36 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00221$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:422: printstr("%\tmodulus top 2\r\n");
	cjne	r5,#0x00,00221$
	inc	r6
	sjmp	00221$
00140$:
;	calc.c:423: printstr("#\tmodulus top 2 unsigned\r\n");
	mov	r5,#___str_37
	mov	r6,#(___str_37 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00224$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:423: printstr("#\tmodulus top 2 unsigned\r\n");
	cjne	r5,#0x00,00224$
	inc	r6
	sjmp	00224$
00142$:
;	calc.c:424: printstr("&\tand top 2\r\n");
	mov	r5,#___str_38
	mov	r6,#(___str_38 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00227$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:424: printstr("&\tand top 2\r\n");
	cjne	r5,#0x00,00227$
	inc	r6
	sjmp	00227$
00144$:
;	calc.c:425: printstr("|\tor top 2\r\n");
	mov	r5,#___str_39
	mov	r6,#(___str_39 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00230$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:425: printstr("|\tor top 2\r\n");
	cjne	r5,#0x00,00230$
	inc	r6
	sjmp	00230$
00146$:
;	calc.c:426: printstr("^\txor top 2\r\n");
	mov	r5,#___str_40
	mov	r6,#(___str_40 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00233$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:426: printstr("^\txor top 2\r\n");
	cjne	r5,#0x00,00233$
	inc	r6
	sjmp	00233$
00148$:
;	calc.c:427: printstr(">\tshift right top 2\r\n");
	mov	r5,#___str_41
	mov	r6,#(___str_41 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00236$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:427: printstr(">\tshift right top 2\r\n");
	cjne	r5,#0x00,00236$
	inc	r6
	sjmp	00236$
00150$:
;	calc.c:428: printstr("]\tarithmetic shift right top 2\r\n");
	mov	r5,#___str_42
	mov	r6,#(___str_42 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00239$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:428: printstr("]\tarithmetic shift right top 2\r\n");
	cjne	r5,#0x00,00239$
	inc	r6
	sjmp	00239$
00152$:
;	calc.c:429: printstr("<\tshift left top 2\r\n");
	mov	r5,#___str_43
	mov	r6,#(___str_43 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00242$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:429: printstr("<\tshift left top 2\r\n");
	cjne	r5,#0x00,00242$
	inc	r6
	sjmp	00242$
00154$:
;	calc.c:430: printstr("~\tbitwise not top\r\n");
	mov	r5,#___str_44
	mov	r6,#(___str_44 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00245$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:430: printstr("~\tbitwise not top\r\n");
	cjne	r5,#0x00,00245$
	inc	r6
	sjmp	00245$
00156$:
;	calc.c:431: printstr("s\tstatus\r\n");
	mov	r5,#___str_45
	mov	r6,#(___str_45 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00248$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:431: printstr("s\tstatus\r\n");
	cjne	r5,#0x00,00248$
	inc	r6
	sjmp	00248$
00158$:
;	calc.c:432: printstr("?\thelp\r\n");
	mov	r5,#___str_46
	mov	r6,#(___str_46 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00251$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:432: printstr("?\thelp\r\n");
	cjne	r5,#0x00,00251$
	inc	r6
	sjmp	00251$
00160$:
;	calc.c:433: printstr("q\tquit\r\n");
	mov	r5,#___str_47
	mov	r6,#(___str_47 >> 8)
	mov	r7,#0x80
;	calc.c:51: return;
00254$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
;	calc.c:433: printstr("q\tquit\r\n");
	cjne	r5,#0x00,00254$
	inc	r6
	sjmp	00254$
00162$:
;	calc.c:435: return 1;
	mov	dptr,#0x0001
;	calc.c:436: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;input                     Allocated to registers r6 r7 
;__1966080183              Allocated to registers 
;s                         Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	calc.c:466: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	_bp,sp
	inc	sp
;	calc.c:469: c.base = 10;
	mov	dptr,#_c
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	calc.c:470: c.acc = 0l;
	mov	dptr,#(_c + 0x0002)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	calc.c:471: c.acc_valid = (char)0;
	mov	dptr,#(_c + 0x0006)
	movx	@dptr,a
;	calc.c:472: c.digit[0] = c.digit[1] = '\0';
	mov	dptr,#(_c + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_c + 0x0007)
	movx	@dptr,a
;	calc.c:474: c.ps = &c.s0;
	mov	dptr,#(_c + 0x4011)
	mov	a,#(_c + 0x0009)
	movx	@dptr,a
	mov	a,#((_c + 0x0009) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	calc.c:475: c.ss = &c.s1;
	mov	dptr,#(_c + 0x4014)
	mov	a,#(_c + 0x200d)
	movx	@dptr,a
	mov	a,#((_c + 0x200d) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	calc.c:476: stack_init(c.ps);
	mov	dptr,#(_c + 0x0009)
	mov	b,#0x00
	lcall	_stack_init
;	calc.c:477: stack_init(c.ss);
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
;	calc.c:479: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
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
;	calc.c:481: (void)status(&c, deltas);
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
;	calc.c:483: while (1) {
00192$:
;	calc.c:484: input = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	calc.c:485: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
	mov	ar5,r6
	cjne	r5,#0x0d,00386$
	sjmp	00101$
00386$:
	cjne	r5,#0x0a,00102$
00101$:
	mov	r2,#___str_0
	mov	r3,#(___str_0 >> 8)
	mov	r4,#0x80
;	calc.c:51: return;
00197$:
;	calc.c:49: for (; *s; s++) putchar(*s);
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
	cjne	r2,#0x00,00390$
	inc	r3
00390$:
	pop	ar7
	pop	ar6
;	calc.c:485: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
	sjmp	00197$
00102$:
;	calc.c:486: else (void)putchar(input);
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
00103$:
;	calc.c:487: c.digit[0] = (char)input;
	mov	dptr,#(_c + 0x0007)
	mov	a,r5
	movx	@dptr,a
;	calc.c:489: if ((char)input == 'q') {
	cjne	r5,#0x71,00189$
;	calc.c:490: if (state_exec(&s, EVENT_TERM) <= 0) break;
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
;	calc.c:491: } else if ((char)input == 's') {
	cjne	r5,#0x73,00186$
;	calc.c:492: if (state_exec(&s, EVENT_STATUS) <= 0) break;
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
	jnc	00396$
	ljmp	00192$
00396$:
	ljmp	00193$
00186$:
;	calc.c:493: } else if ((char)input == '?') {
	cjne	r5,#0x3f,00183$
;	calc.c:494: if (state_exec(&s, EVENT_HELP) <= 0) break;
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
	jnc	00399$
	ljmp	00192$
00399$:
	ljmp	00193$
00183$:
;	calc.c:495: } else if ((char)input == 'i') {
	cjne	r5,#0x69,00180$
;	calc.c:496: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
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
	jnc	00402$
	ljmp	00192$
00402$:
	ljmp	00193$
00180$:
;	calc.c:497: } else if ((char)input == 'I') {
	cjne	r5,#0x49,00177$
;	calc.c:498: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
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
	jnc	00405$
	ljmp	00192$
00405$:
	ljmp	00193$
00177$:
;	calc.c:500: ((char)input == 'h') || ((char)input == 'H') ||
	cjne	r5,#0x68,00406$
	sjmp	00170$
00406$:
	cjne	r5,#0x48,00407$
	sjmp	00170$
00407$:
;	calc.c:501: ((char)input == 'o') || ((char)input == 'O')
	cjne	r5,#0x6f,00408$
	sjmp	00170$
00408$:
	cjne	r5,#0x4f,00171$
00170$:
;	calc.c:503: if (state_exec(&s, EVENT_BASE) <= 0) break;
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
	jnc	00411$
	ljmp	00192$
00411$:
	ljmp	00193$
00171$:
;	calc.c:504: } else if (isxdigit(input)) {
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	lcall	_isxdigit
	mov	a,dpl
	mov	b,dph
	pop	ar5
	orl	a,b
	jz	00168$
;	calc.c:505: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
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
	jnc	00413$
	ljmp	00192$
00413$:
	ljmp	00193$
00168$:
;	calc.c:507: ((char)input == 'p') || ((char)input == 'P') ||
	cjne	r5,#0x70,00414$
	sjmp	00159$
00414$:
	cjne	r5,#0x50,00415$
	sjmp	00159$
00415$:
;	calc.c:508: ((char)input == 'v') || ((char)input == 'V') ||
	cjne	r5,#0x76,00416$
	sjmp	00159$
00416$:
	cjne	r5,#0x56,00417$
	sjmp	00159$
00417$:
;	calc.c:509: ((char)input == '.') ||
	cjne	r5,#0x2e,00418$
	sjmp	00159$
00418$:
;	calc.c:510: ((char)input == 'x')
	cjne	r5,#0x78,00160$
00159$:
;	calc.c:512: if (state_exec(&s, EVENT_OP) <= 0) break;
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
	jnc	00421$
	ljmp	00192$
00421$:
	ljmp	00193$
00160$:
;	calc.c:514: ((char)input == 'X') || ((char)input == 'T') ||
	cjne	r5,#0x58,00422$
	sjmp	00151$
00422$:
	cjne	r5,#0x54,00423$
	sjmp	00151$
00423$:
;	calc.c:515: ((char)input == 'm') || ((char)input == 'M') ||
	cjne	r5,#0x6d,00424$
	sjmp	00151$
00424$:
	cjne	r5,#0x4d,00425$
	sjmp	00151$
00425$:
;	calc.c:516: ((char)input == 'u') || ((char)input == 'U')
	cjne	r5,#0x75,00426$
	sjmp	00151$
00426$:
	cjne	r5,#0x55,00152$
00151$:
;	calc.c:518: if (state_exec(&s, EVENT_OP) <= 0) break;
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
	jnc	00429$
	ljmp	00192$
00429$:
	ljmp	00193$
00152$:
;	calc.c:520: ((char)input == '+') || ((char)input == '-')
	cjne	r5,#0x2b,00430$
	sjmp	00147$
00430$:
	cjne	r5,#0x2d,00148$
00147$:
;	calc.c:522: if (state_exec(&s, EVENT_OP) <= 0) break;
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
	jnc	00433$
	ljmp	00192$
00433$:
	ljmp	00193$
00148$:
;	calc.c:524: ((char)input == '*') ||
	cjne	r5,#0x2a,00434$
	sjmp	00140$
00434$:
;	calc.c:525: ((char)input == '/') || ((char)input == '\\') ||
	cjne	r5,#0x2f,00435$
	sjmp	00140$
00435$:
	cjne	r5,#0x5c,00436$
	sjmp	00140$
00436$:
;	calc.c:526: ((char)input == '%') || ((char)input == '#')
	cjne	r5,#0x25,00437$
	sjmp	00140$
00437$:
	cjne	r5,#0x23,00141$
00140$:
;	calc.c:528: if (state_exec(&s, EVENT_OP) <= 0) break;
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
;	calc.c:530: ((char)input == '&') ||
	cjne	r5,#0x26,00441$
	sjmp	00131$
00441$:
;	calc.c:531: ((char)input == '|') || ((char)input == '^') ||
	cjne	r5,#0x7c,00442$
	sjmp	00131$
00442$:
	cjne	r5,#0x5e,00443$
	sjmp	00131$
00443$:
;	calc.c:532: ((char)input == '~') ||
	cjne	r5,#0x7e,00444$
	sjmp	00131$
00444$:
;	calc.c:533: ((char)input == '>') || ((char)input == ']') ||
	cjne	r5,#0x3e,00445$
	sjmp	00131$
00445$:
	cjne	r5,#0x5d,00446$
	sjmp	00131$
00446$:
;	calc.c:534: ((char)input == '<')
	cjne	r5,#0x3c,00132$
00131$:
;	calc.c:536: if (state_exec(&s, EVENT_OP) <= 0) break;
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
;	calc.c:538: if (state_exec(&s, EVENT_DELIM) <= 0) break;
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
	jnc	00450$
	ljmp	00192$
00450$:
00193$:
;	calc.c:542: PCON |= 2;
	orl	_PCON,#0x02
;	calc.c:544: return;
;	calc.c:545: }
	dec	sp
	pop	_bp
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
	.ascii "% 11ld / "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "%08lx / "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "PA "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "PT "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "VT "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0d
	.db 0x0a
	.ascii "stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0d
	.db 0x0a
	.ascii "secondary stack overflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0d
	.db 0x0a
	.ascii "secondary stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0d
	.db 0x0a
	.ascii "stack overflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0d
	.db 0x0a
	.ascii "division by zero"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0d
	.db 0x0a
	.ascii "base = %d, "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "acc = %ld / "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii ", acc_valid = %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "primary = %p, secondary = %p"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
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
___str_18:
	.ascii "p"
	.db 0x09
	.ascii "peek top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "P"
	.db 0x09
	.ascii "print stack"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "v."
	.db 0x09
	.ascii "pop top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "V"
	.db 0x09
	.ascii "pop all"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "i"
	.db 0x09
	.ascii "reset acc"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "I"
	.db 0x09
	.ascii "reset and discard acc"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "x"
	.db 0x09
	.ascii "exchange top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "X"
	.db 0x09
	.ascii "exchange stacks primary <-> secondary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "T"
	.db 0x09
	.ascii "exchange tops primary <-> secondary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "U"
	.db 0x09
	.ascii "copy top secondary -> primary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "u"
	.db 0x09
	.ascii "copy top primary -> secondary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "M"
	.db 0x09
	.ascii "move top secondary -> primary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "m"
	.db 0x09
	.ascii "move top primary -> secondary"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "+"
	.db 0x09
	.ascii "add top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "-"
	.db 0x09
	.ascii "subtract top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "*"
	.db 0x09
	.ascii "multiply top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "/"
	.db 0x09
	.ascii "divide top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x5c
	.db 0x09
	.ascii "divide top 2 unsigned"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "%"
	.db 0x09
	.ascii "modulus top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "#"
	.db 0x09
	.ascii "modulus top 2 unsigned"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "&"
	.db 0x09
	.ascii "and top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "|"
	.db 0x09
	.ascii "or top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.ascii "^"
	.db 0x09
	.ascii "xor top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.ascii ">"
	.db 0x09
	.ascii "shift right top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "]"
	.db 0x09
	.ascii "arithmetic shift right top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii "<"
	.db 0x09
	.ascii "shift left top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.ascii "~"
	.db 0x09
	.ascii "bitwise not top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.ascii "s"
	.db 0x09
	.ascii "status"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.ascii "?"
	.db 0x09
	.ascii "help"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
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
