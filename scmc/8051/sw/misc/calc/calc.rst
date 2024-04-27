                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module calc
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _state_exec
                                     13 	.globl _state_init
                                     14 	.globl _stack_iter_peek
                                     15 	.globl _stack_peek2
                                     16 	.globl _stack_peek
                                     17 	.globl _stack_pop
                                     18 	.globl _stack_push
                                     19 	.globl _stack_init
                                     20 	.globl _print32bin
                                     21 	.globl _printstr
                                     22 	.globl _getchar
                                     23 	.globl _putchar
                                     24 	.globl _isxdigit
                                     25 	.globl _printf
                                     26 	.globl _strtol
                                     27 	.globl _CY
                                     28 	.globl _AC
                                     29 	.globl _F0
                                     30 	.globl _RS1
                                     31 	.globl _RS0
                                     32 	.globl _OV
                                     33 	.globl _FL
                                     34 	.globl _P
                                     35 	.globl _TF2
                                     36 	.globl _EXF2
                                     37 	.globl _RCLK
                                     38 	.globl _TCLK
                                     39 	.globl _EXEN2
                                     40 	.globl _TR2
                                     41 	.globl _C_T2
                                     42 	.globl _CP_RL2
                                     43 	.globl _T2CON_7
                                     44 	.globl _T2CON_6
                                     45 	.globl _T2CON_5
                                     46 	.globl _T2CON_4
                                     47 	.globl _T2CON_3
                                     48 	.globl _T2CON_2
                                     49 	.globl _T2CON_1
                                     50 	.globl _T2CON_0
                                     51 	.globl _PT2
                                     52 	.globl _PS
                                     53 	.globl _PT1
                                     54 	.globl _PX1
                                     55 	.globl _PT0
                                     56 	.globl _PX0
                                     57 	.globl _RD
                                     58 	.globl _WR
                                     59 	.globl _T1
                                     60 	.globl _T0
                                     61 	.globl _INT1
                                     62 	.globl _INT0
                                     63 	.globl _TXD
                                     64 	.globl _RXD
                                     65 	.globl _P3_7
                                     66 	.globl _P3_6
                                     67 	.globl _P3_5
                                     68 	.globl _P3_4
                                     69 	.globl _P3_3
                                     70 	.globl _P3_2
                                     71 	.globl _P3_1
                                     72 	.globl _P3_0
                                     73 	.globl _EA
                                     74 	.globl _ET2
                                     75 	.globl _ES
                                     76 	.globl _ET1
                                     77 	.globl _EX1
                                     78 	.globl _ET0
                                     79 	.globl _EX0
                                     80 	.globl _P2_7
                                     81 	.globl _P2_6
                                     82 	.globl _P2_5
                                     83 	.globl _P2_4
                                     84 	.globl _P2_3
                                     85 	.globl _P2_2
                                     86 	.globl _P2_1
                                     87 	.globl _P2_0
                                     88 	.globl _SM0
                                     89 	.globl _SM1
                                     90 	.globl _SM2
                                     91 	.globl _REN
                                     92 	.globl _TB8
                                     93 	.globl _RB8
                                     94 	.globl _TI
                                     95 	.globl _RI
                                     96 	.globl _T2EX
                                     97 	.globl _T2
                                     98 	.globl _P1_7
                                     99 	.globl _P1_6
                                    100 	.globl _P1_5
                                    101 	.globl _P1_4
                                    102 	.globl _P1_3
                                    103 	.globl _P1_2
                                    104 	.globl _P1_1
                                    105 	.globl _P1_0
                                    106 	.globl _TF1
                                    107 	.globl _TR1
                                    108 	.globl _TF0
                                    109 	.globl _TR0
                                    110 	.globl _IE1
                                    111 	.globl _IT1
                                    112 	.globl _IE0
                                    113 	.globl _IT0
                                    114 	.globl _P0_7
                                    115 	.globl _P0_6
                                    116 	.globl _P0_5
                                    117 	.globl _P0_4
                                    118 	.globl _P0_3
                                    119 	.globl _P0_2
                                    120 	.globl _P0_1
                                    121 	.globl _P0_0
                                    122 	.globl _B
                                    123 	.globl _A
                                    124 	.globl _ACC
                                    125 	.globl _PSW
                                    126 	.globl _TH2
                                    127 	.globl _TL2
                                    128 	.globl _RCAP2H
                                    129 	.globl _RCAP2L
                                    130 	.globl _T2MOD
                                    131 	.globl _T2CON
                                    132 	.globl _IP
                                    133 	.globl _P3
                                    134 	.globl _IE
                                    135 	.globl _P2
                                    136 	.globl _SBUF
                                    137 	.globl _SCON
                                    138 	.globl _P1
                                    139 	.globl _TH1
                                    140 	.globl _TH0
                                    141 	.globl _TL1
                                    142 	.globl _TL0
                                    143 	.globl _TMOD
                                    144 	.globl _TCON
                                    145 	.globl _PCON
                                    146 	.globl _DPH
                                    147 	.globl _DPL
                                    148 	.globl _SP
                                    149 	.globl _P0
                                    150 	.globl _giant
                                    151 ;--------------------------------------------------------
                                    152 ; special function registers
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           000080   156 _P0	=	0x0080
                           000081   157 _SP	=	0x0081
                           000082   158 _DPL	=	0x0082
                           000083   159 _DPH	=	0x0083
                           000087   160 _PCON	=	0x0087
                           000088   161 _TCON	=	0x0088
                           000089   162 _TMOD	=	0x0089
                           00008A   163 _TL0	=	0x008a
                           00008B   164 _TL1	=	0x008b
                           00008C   165 _TH0	=	0x008c
                           00008D   166 _TH1	=	0x008d
                           000090   167 _P1	=	0x0090
                           000098   168 _SCON	=	0x0098
                           000099   169 _SBUF	=	0x0099
                           0000A0   170 _P2	=	0x00a0
                           0000A8   171 _IE	=	0x00a8
                           0000B0   172 _P3	=	0x00b0
                           0000B8   173 _IP	=	0x00b8
                           0000C8   174 _T2CON	=	0x00c8
                           0000C9   175 _T2MOD	=	0x00c9
                           0000CA   176 _RCAP2L	=	0x00ca
                           0000CB   177 _RCAP2H	=	0x00cb
                           0000CC   178 _TL2	=	0x00cc
                           0000CD   179 _TH2	=	0x00cd
                           0000D0   180 _PSW	=	0x00d0
                           0000E0   181 _ACC	=	0x00e0
                           0000E0   182 _A	=	0x00e0
                           0000F0   183 _B	=	0x00f0
                                    184 ;--------------------------------------------------------
                                    185 ; special function bits
                                    186 ;--------------------------------------------------------
                                    187 	.area RSEG    (ABS,DATA)
      000000                        188 	.org 0x0000
                           000080   189 _P0_0	=	0x0080
                           000081   190 _P0_1	=	0x0081
                           000082   191 _P0_2	=	0x0082
                           000083   192 _P0_3	=	0x0083
                           000084   193 _P0_4	=	0x0084
                           000085   194 _P0_5	=	0x0085
                           000086   195 _P0_6	=	0x0086
                           000087   196 _P0_7	=	0x0087
                           000088   197 _IT0	=	0x0088
                           000089   198 _IE0	=	0x0089
                           00008A   199 _IT1	=	0x008a
                           00008B   200 _IE1	=	0x008b
                           00008C   201 _TR0	=	0x008c
                           00008D   202 _TF0	=	0x008d
                           00008E   203 _TR1	=	0x008e
                           00008F   204 _TF1	=	0x008f
                           000090   205 _P1_0	=	0x0090
                           000091   206 _P1_1	=	0x0091
                           000092   207 _P1_2	=	0x0092
                           000093   208 _P1_3	=	0x0093
                           000094   209 _P1_4	=	0x0094
                           000095   210 _P1_5	=	0x0095
                           000096   211 _P1_6	=	0x0096
                           000097   212 _P1_7	=	0x0097
                           000090   213 _T2	=	0x0090
                           000091   214 _T2EX	=	0x0091
                           000098   215 _RI	=	0x0098
                           000099   216 _TI	=	0x0099
                           00009A   217 _RB8	=	0x009a
                           00009B   218 _TB8	=	0x009b
                           00009C   219 _REN	=	0x009c
                           00009D   220 _SM2	=	0x009d
                           00009E   221 _SM1	=	0x009e
                           00009F   222 _SM0	=	0x009f
                           0000A0   223 _P2_0	=	0x00a0
                           0000A1   224 _P2_1	=	0x00a1
                           0000A2   225 _P2_2	=	0x00a2
                           0000A3   226 _P2_3	=	0x00a3
                           0000A4   227 _P2_4	=	0x00a4
                           0000A5   228 _P2_5	=	0x00a5
                           0000A6   229 _P2_6	=	0x00a6
                           0000A7   230 _P2_7	=	0x00a7
                           0000A8   231 _EX0	=	0x00a8
                           0000A9   232 _ET0	=	0x00a9
                           0000AA   233 _EX1	=	0x00aa
                           0000AB   234 _ET1	=	0x00ab
                           0000AC   235 _ES	=	0x00ac
                           0000AD   236 _ET2	=	0x00ad
                           0000AF   237 _EA	=	0x00af
                           0000B0   238 _P3_0	=	0x00b0
                           0000B1   239 _P3_1	=	0x00b1
                           0000B2   240 _P3_2	=	0x00b2
                           0000B3   241 _P3_3	=	0x00b3
                           0000B4   242 _P3_4	=	0x00b4
                           0000B5   243 _P3_5	=	0x00b5
                           0000B6   244 _P3_6	=	0x00b6
                           0000B7   245 _P3_7	=	0x00b7
                           0000B0   246 _RXD	=	0x00b0
                           0000B1   247 _TXD	=	0x00b1
                           0000B2   248 _INT0	=	0x00b2
                           0000B3   249 _INT1	=	0x00b3
                           0000B4   250 _T0	=	0x00b4
                           0000B5   251 _T1	=	0x00b5
                           0000B6   252 _WR	=	0x00b6
                           0000B7   253 _RD	=	0x00b7
                           0000B8   254 _PX0	=	0x00b8
                           0000B9   255 _PT0	=	0x00b9
                           0000BA   256 _PX1	=	0x00ba
                           0000BB   257 _PT1	=	0x00bb
                           0000BC   258 _PS	=	0x00bc
                           0000BD   259 _PT2	=	0x00bd
                           0000C8   260 _T2CON_0	=	0x00c8
                           0000C9   261 _T2CON_1	=	0x00c9
                           0000CA   262 _T2CON_2	=	0x00ca
                           0000CB   263 _T2CON_3	=	0x00cb
                           0000CC   264 _T2CON_4	=	0x00cc
                           0000CD   265 _T2CON_5	=	0x00cd
                           0000CE   266 _T2CON_6	=	0x00ce
                           0000CF   267 _T2CON_7	=	0x00cf
                           0000C8   268 _CP_RL2	=	0x00c8
                           0000C9   269 _C_T2	=	0x00c9
                           0000CA   270 _TR2	=	0x00ca
                           0000CB   271 _EXEN2	=	0x00cb
                           0000CC   272 _TCLK	=	0x00cc
                           0000CD   273 _RCLK	=	0x00cd
                           0000CE   274 _EXF2	=	0x00ce
                           0000CF   275 _TF2	=	0x00cf
                           0000D0   276 _P	=	0x00d0
                           0000D1   277 _FL	=	0x00d1
                           0000D2   278 _OV	=	0x00d2
                           0000D3   279 _RS0	=	0x00d3
                           0000D4   280 _RS1	=	0x00d4
                           0000D5   281 _F0	=	0x00d5
                           0000D6   282 _AC	=	0x00d6
                           0000D7   283 _CY	=	0x00d7
                                    284 ;--------------------------------------------------------
                                    285 ; overlayable register banks
                                    286 ;--------------------------------------------------------
                                    287 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        288 	.ds 8
                                    289 ;--------------------------------------------------------
                                    290 ; internal ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area DSEG    (DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; overlayable items in internal ram 
                                    295 ;--------------------------------------------------------
                                    296 ;--------------------------------------------------------
                                    297 ; Stack segment in internal ram 
                                    298 ;--------------------------------------------------------
                                    299 	.area	SSEG
      000021                        300 __start__stack:
      000021                        301 	.ds	1
                                    302 
                                    303 ;--------------------------------------------------------
                                    304 ; indirectly addressable internal ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area ISEG    (DATA)
      000009                        307 _giant::
      000009                        308 	.ds 1
                                    309 ;--------------------------------------------------------
                                    310 ; absolute internal ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area IABS    (ABS,DATA)
                                    313 	.area IABS    (ABS,DATA)
                                    314 ;--------------------------------------------------------
                                    315 ; bit data
                                    316 ;--------------------------------------------------------
                                    317 	.area BSEG    (BIT)
                                    318 ;--------------------------------------------------------
                                    319 ; paged external ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area PSEG    (PAG,XDATA)
                                    322 ;--------------------------------------------------------
                                    323 ; external ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area XSEG    (XDATA)
      00A000                        326 _s:
      00A000                        327 	.ds 12
      00A00C                        328 _c:
      00A00C                        329 	.ds 16407
                                    330 ;--------------------------------------------------------
                                    331 ; absolute external ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area XABS    (ABS,XDATA)
                                    334 ;--------------------------------------------------------
                                    335 ; external initialized ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area XISEG   (XDATA)
      00E025                        338 _deltas:
      00E025                        339 	.ds 170
                                    340 	.area HOME    (CODE)
                                    341 	.area GSINIT0 (CODE)
                                    342 	.area GSINIT1 (CODE)
                                    343 	.area GSINIT2 (CODE)
                                    344 	.area GSINIT3 (CODE)
                                    345 	.area GSINIT4 (CODE)
                                    346 	.area GSINIT5 (CODE)
                                    347 	.area GSINIT  (CODE)
                                    348 	.area GSFINAL (CODE)
                                    349 	.area CSEG    (CODE)
                                    350 ;--------------------------------------------------------
                                    351 ; interrupt vector 
                                    352 ;--------------------------------------------------------
                                    353 	.area HOME    (CODE)
      002000                        354 __interrupt_vect:
      002000 02 20 34         [24]  355 	ljmp	__sdcc_gsinit_startup
                                    356 ;--------------------------------------------------------
                                    357 ; global & static initialisations
                                    358 ;--------------------------------------------------------
                                    359 	.area HOME    (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.area GSFINAL (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.globl __sdcc_gsinit_startup
                                    364 	.globl __sdcc_program_startup
                                    365 	.globl __start__stack
                                    366 	.globl __mcs51_genXINIT
                                    367 	.globl __mcs51_genXRAMCLEAR
                                    368 	.globl __mcs51_genRAMCLEAR
                                    369 	.area GSFINAL (CODE)
      0020CD 02 20 03         [24]  370 	ljmp	__sdcc_program_startup
                                    371 ;--------------------------------------------------------
                                    372 ; Home
                                    373 ;--------------------------------------------------------
                                    374 	.area HOME    (CODE)
                                    375 	.area HOME    (CODE)
      002003                        376 __sdcc_program_startup:
      002003 02 58 69         [24]  377 	ljmp	_main
                                    378 ;	return from main will return to caller
                                    379 ;--------------------------------------------------------
                                    380 ; code
                                    381 ;--------------------------------------------------------
                                    382 	.area CSEG    (CODE)
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'accumulate'
                                    385 ;------------------------------------------------------------
                                    386 ;delta                     Allocated to stack - _bp -5
                                    387 ;_ctx                      Allocated to registers r5 r6 r7 
                                    388 ;ctx                       Allocated to stack - _bp +8
                                    389 ;d                         Allocated to stack - _bp +11
                                    390 ;sloc0                     Allocated to stack - _bp +1
                                    391 ;sloc1                     Allocated to stack - _bp +4
                                    392 ;------------------------------------------------------------
                                    393 ;	calc.c:26: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
                                    394 ;	-----------------------------------------
                                    395 ;	 function accumulate
                                    396 ;	-----------------------------------------
      002BB0                        397 _accumulate:
                           000007   398 	ar7 = 0x07
                           000006   399 	ar6 = 0x06
                           000005   400 	ar5 = 0x05
                           000004   401 	ar4 = 0x04
                           000003   402 	ar3 = 0x03
                           000002   403 	ar2 = 0x02
                           000001   404 	ar1 = 0x01
                           000000   405 	ar0 = 0x00
      002BB0 C0 08            [24]  406 	push	_bp
      002BB2 E5 81            [12]  407 	mov	a,sp
      002BB4 F5 08            [12]  408 	mov	_bp,a
      002BB6 24 0E            [12]  409 	add	a,#0x0e
      002BB8 F5 81            [12]  410 	mov	sp,a
      002BBA AD 82            [24]  411 	mov	r5,dpl
      002BBC AE 83            [24]  412 	mov	r6,dph
      002BBE AF F0            [24]  413 	mov	r7,b
                                    414 ;	calc.c:27: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002BC0 E5 08            [12]  415 	mov	a,_bp
      002BC2 24 08            [12]  416 	add	a,#0x08
      002BC4 F8               [12]  417 	mov	r0,a
      002BC5 A6 05            [24]  418 	mov	@r0,ar5
      002BC7 08               [12]  419 	inc	r0
      002BC8 A6 06            [24]  420 	mov	@r0,ar6
      002BCA 08               [12]  421 	inc	r0
      002BCB A6 07            [24]  422 	mov	@r0,ar7
                                    423 ;	calc.c:32: if (!ctx->acc_valid) {
      002BCD E5 08            [12]  424 	mov	a,_bp
      002BCF 24 08            [12]  425 	add	a,#0x08
      002BD1 F8               [12]  426 	mov	r0,a
      002BD2 74 06            [12]  427 	mov	a,#0x06
      002BD4 26               [12]  428 	add	a,@r0
      002BD5 FA               [12]  429 	mov	r2,a
      002BD6 E4               [12]  430 	clr	a
      002BD7 08               [12]  431 	inc	r0
      002BD8 36               [12]  432 	addc	a,@r0
      002BD9 FB               [12]  433 	mov	r3,a
      002BDA 08               [12]  434 	inc	r0
      002BDB 86 04            [24]  435 	mov	ar4,@r0
      002BDD 8A 82            [24]  436 	mov	dpl,r2
      002BDF 8B 83            [24]  437 	mov	dph,r3
      002BE1 8C F0            [24]  438 	mov	b,r4
      002BE3 12 66 39         [24]  439 	lcall	__gptrget
      002BE6 70 31            [24]  440 	jnz	00102$
                                    441 ;	calc.c:33: ctx->acc_valid = 1;
      002BE8 8A 82            [24]  442 	mov	dpl,r2
      002BEA 8B 83            [24]  443 	mov	dph,r3
      002BEC 8C F0            [24]  444 	mov	b,r4
      002BEE 74 01            [12]  445 	mov	a,#0x01
      002BF0 12 5E E9         [24]  446 	lcall	__gptrput
                                    447 ;	calc.c:34: ctx->acc = 0l;
      002BF3 E5 08            [12]  448 	mov	a,_bp
      002BF5 24 08            [12]  449 	add	a,#0x08
      002BF7 F8               [12]  450 	mov	r0,a
      002BF8 74 02            [12]  451 	mov	a,#0x02
      002BFA 26               [12]  452 	add	a,@r0
      002BFB FA               [12]  453 	mov	r2,a
      002BFC E4               [12]  454 	clr	a
      002BFD 08               [12]  455 	inc	r0
      002BFE 36               [12]  456 	addc	a,@r0
      002BFF FB               [12]  457 	mov	r3,a
      002C00 08               [12]  458 	inc	r0
      002C01 86 04            [24]  459 	mov	ar4,@r0
      002C03 8A 82            [24]  460 	mov	dpl,r2
      002C05 8B 83            [24]  461 	mov	dph,r3
      002C07 8C F0            [24]  462 	mov	b,r4
      002C09 E4               [12]  463 	clr	a
      002C0A 12 5E E9         [24]  464 	lcall	__gptrput
      002C0D A3               [24]  465 	inc	dptr
      002C0E 12 5E E9         [24]  466 	lcall	__gptrput
      002C11 A3               [24]  467 	inc	dptr
      002C12 12 5E E9         [24]  468 	lcall	__gptrput
      002C15 A3               [24]  469 	inc	dptr
      002C16 12 5E E9         [24]  470 	lcall	__gptrput
      002C19                        471 00102$:
                                    472 ;	calc.c:37: d = strtol(ctx->digit, NULL, ctx->base);
      002C19 E5 08            [12]  473 	mov	a,_bp
      002C1B 24 08            [12]  474 	add	a,#0x08
      002C1D F8               [12]  475 	mov	r0,a
      002C1E 86 82            [24]  476 	mov	dpl,@r0
      002C20 08               [12]  477 	inc	r0
      002C21 86 83            [24]  478 	mov	dph,@r0
      002C23 08               [12]  479 	inc	r0
      002C24 86 F0            [24]  480 	mov	b,@r0
      002C26 12 66 39         [24]  481 	lcall	__gptrget
      002C29 FB               [12]  482 	mov	r3,a
      002C2A A3               [24]  483 	inc	dptr
      002C2B 12 66 39         [24]  484 	lcall	__gptrget
      002C2E FC               [12]  485 	mov	r4,a
      002C2F E5 08            [12]  486 	mov	a,_bp
      002C31 24 08            [12]  487 	add	a,#0x08
      002C33 F8               [12]  488 	mov	r0,a
      002C34 74 07            [12]  489 	mov	a,#0x07
      002C36 26               [12]  490 	add	a,@r0
      002C37 FA               [12]  491 	mov	r2,a
      002C38 E4               [12]  492 	clr	a
      002C39 08               [12]  493 	inc	r0
      002C3A 36               [12]  494 	addc	a,@r0
      002C3B FE               [12]  495 	mov	r6,a
      002C3C 08               [12]  496 	inc	r0
      002C3D 86 07            [24]  497 	mov	ar7,@r0
      002C3F C0 03            [24]  498 	push	ar3
      002C41 C0 04            [24]  499 	push	ar4
      002C43 E4               [12]  500 	clr	a
      002C44 C0 E0            [24]  501 	push	acc
      002C46 C0 E0            [24]  502 	push	acc
      002C48 C0 E0            [24]  503 	push	acc
      002C4A 8A 82            [24]  504 	mov	dpl,r2
      002C4C 8E 83            [24]  505 	mov	dph,r6
      002C4E 8F F0            [24]  506 	mov	b,r7
      002C50 12 5C AB         [24]  507 	lcall	_strtol
      002C53 C8               [12]  508 	xch	a,r0
      002C54 E5 08            [12]  509 	mov	a,_bp
      002C56 24 0B            [12]  510 	add	a,#0x0b
      002C58 C8               [12]  511 	xch	a,r0
      002C59 A6 82            [24]  512 	mov	@r0,dpl
      002C5B 08               [12]  513 	inc	r0
      002C5C A6 83            [24]  514 	mov	@r0,dph
      002C5E 08               [12]  515 	inc	r0
      002C5F A6 F0            [24]  516 	mov	@r0,b
      002C61 08               [12]  517 	inc	r0
      002C62 F6               [12]  518 	mov	@r0,a
      002C63 E5 81            [12]  519 	mov	a,sp
      002C65 24 FB            [12]  520 	add	a,#0xfb
      002C67 F5 81            [12]  521 	mov	sp,a
                                    522 ;	calc.c:38: ctx->acc = ctx->acc * (long)ctx->base + d;
      002C69 E5 08            [12]  523 	mov	a,_bp
      002C6B 24 08            [12]  524 	add	a,#0x08
      002C6D F8               [12]  525 	mov	r0,a
      002C6E A9 08            [24]  526 	mov	r1,_bp
      002C70 09               [12]  527 	inc	r1
      002C71 74 02            [12]  528 	mov	a,#0x02
      002C73 26               [12]  529 	add	a,@r0
      002C74 F7               [12]  530 	mov	@r1,a
      002C75 E4               [12]  531 	clr	a
      002C76 08               [12]  532 	inc	r0
      002C77 36               [12]  533 	addc	a,@r0
      002C78 09               [12]  534 	inc	r1
      002C79 F7               [12]  535 	mov	@r1,a
      002C7A 08               [12]  536 	inc	r0
      002C7B 09               [12]  537 	inc	r1
      002C7C E6               [12]  538 	mov	a,@r0
      002C7D F7               [12]  539 	mov	@r1,a
      002C7E A8 08            [24]  540 	mov	r0,_bp
      002C80 08               [12]  541 	inc	r0
      002C81 86 82            [24]  542 	mov	dpl,@r0
      002C83 08               [12]  543 	inc	r0
      002C84 86 83            [24]  544 	mov	dph,@r0
      002C86 08               [12]  545 	inc	r0
      002C87 86 F0            [24]  546 	mov	b,@r0
      002C89 E5 08            [12]  547 	mov	a,_bp
      002C8B 24 04            [12]  548 	add	a,#0x04
      002C8D F9               [12]  549 	mov	r1,a
      002C8E 12 66 39         [24]  550 	lcall	__gptrget
      002C91 F7               [12]  551 	mov	@r1,a
      002C92 A3               [24]  552 	inc	dptr
      002C93 12 66 39         [24]  553 	lcall	__gptrget
      002C96 09               [12]  554 	inc	r1
      002C97 F7               [12]  555 	mov	@r1,a
      002C98 A3               [24]  556 	inc	dptr
      002C99 12 66 39         [24]  557 	lcall	__gptrget
      002C9C 09               [12]  558 	inc	r1
      002C9D F7               [12]  559 	mov	@r1,a
      002C9E A3               [24]  560 	inc	dptr
      002C9F 12 66 39         [24]  561 	lcall	__gptrget
      002CA2 09               [12]  562 	inc	r1
      002CA3 F7               [12]  563 	mov	@r1,a
      002CA4 E5 08            [12]  564 	mov	a,_bp
      002CA6 24 08            [12]  565 	add	a,#0x08
      002CA8 F8               [12]  566 	mov	r0,a
      002CA9 86 82            [24]  567 	mov	dpl,@r0
      002CAB 08               [12]  568 	inc	r0
      002CAC 86 83            [24]  569 	mov	dph,@r0
      002CAE 08               [12]  570 	inc	r0
      002CAF 86 F0            [24]  571 	mov	b,@r0
      002CB1 12 66 39         [24]  572 	lcall	__gptrget
      002CB4 FA               [12]  573 	mov	r2,a
      002CB5 A3               [24]  574 	inc	dptr
      002CB6 12 66 39         [24]  575 	lcall	__gptrget
      002CB9 FB               [12]  576 	mov	r3,a
      002CBA 33               [12]  577 	rlc	a
      002CBB 95 E0            [12]  578 	subb	a,acc
      002CBD FE               [12]  579 	mov	r6,a
      002CBE FF               [12]  580 	mov	r7,a
      002CBF C0 02            [24]  581 	push	ar2
      002CC1 C0 03            [24]  582 	push	ar3
      002CC3 C0 06            [24]  583 	push	ar6
      002CC5 C0 07            [24]  584 	push	ar7
      002CC7 E5 08            [12]  585 	mov	a,_bp
      002CC9 24 04            [12]  586 	add	a,#0x04
      002CCB F8               [12]  587 	mov	r0,a
      002CCC 86 82            [24]  588 	mov	dpl,@r0
      002CCE 08               [12]  589 	inc	r0
      002CCF 86 83            [24]  590 	mov	dph,@r0
      002CD1 08               [12]  591 	inc	r0
      002CD2 86 F0            [24]  592 	mov	b,@r0
      002CD4 08               [12]  593 	inc	r0
      002CD5 E6               [12]  594 	mov	a,@r0
      002CD6 12 6A 32         [24]  595 	lcall	__mullong
      002CD9 AC 82            [24]  596 	mov	r4,dpl
      002CDB AD 83            [24]  597 	mov	r5,dph
      002CDD AE F0            [24]  598 	mov	r6,b
      002CDF FF               [12]  599 	mov	r7,a
      002CE0 E5 81            [12]  600 	mov	a,sp
      002CE2 24 FC            [12]  601 	add	a,#0xfc
      002CE4 F5 81            [12]  602 	mov	sp,a
      002CE6 E5 08            [12]  603 	mov	a,_bp
      002CE8 24 0B            [12]  604 	add	a,#0x0b
      002CEA F8               [12]  605 	mov	r0,a
      002CEB E6               [12]  606 	mov	a,@r0
      002CEC 2C               [12]  607 	add	a,r4
      002CED FC               [12]  608 	mov	r4,a
      002CEE 08               [12]  609 	inc	r0
      002CEF E6               [12]  610 	mov	a,@r0
      002CF0 3D               [12]  611 	addc	a,r5
      002CF1 FD               [12]  612 	mov	r5,a
      002CF2 08               [12]  613 	inc	r0
      002CF3 E6               [12]  614 	mov	a,@r0
      002CF4 3E               [12]  615 	addc	a,r6
      002CF5 FE               [12]  616 	mov	r6,a
      002CF6 08               [12]  617 	inc	r0
      002CF7 E6               [12]  618 	mov	a,@r0
      002CF8 3F               [12]  619 	addc	a,r7
      002CF9 FF               [12]  620 	mov	r7,a
      002CFA A8 08            [24]  621 	mov	r0,_bp
      002CFC 08               [12]  622 	inc	r0
      002CFD 86 82            [24]  623 	mov	dpl,@r0
      002CFF 08               [12]  624 	inc	r0
      002D00 86 83            [24]  625 	mov	dph,@r0
      002D02 08               [12]  626 	inc	r0
      002D03 86 F0            [24]  627 	mov	b,@r0
      002D05 EC               [12]  628 	mov	a,r4
      002D06 12 5E E9         [24]  629 	lcall	__gptrput
      002D09 A3               [24]  630 	inc	dptr
      002D0A ED               [12]  631 	mov	a,r5
      002D0B 12 5E E9         [24]  632 	lcall	__gptrput
      002D0E A3               [24]  633 	inc	dptr
      002D0F EE               [12]  634 	mov	a,r6
      002D10 12 5E E9         [24]  635 	lcall	__gptrput
      002D13 A3               [24]  636 	inc	dptr
      002D14 EF               [12]  637 	mov	a,r7
      002D15 12 5E E9         [24]  638 	lcall	__gptrput
                                    639 ;	calc.c:40: return 1;
      002D18 90 00 01         [24]  640 	mov	dptr,#0x0001
                                    641 ;	calc.c:41: }
      002D1B 85 08 81         [24]  642 	mov	sp,_bp
      002D1E D0 08            [24]  643 	pop	_bp
      002D20 22               [24]  644 	ret
                                    645 ;------------------------------------------------------------
                                    646 ;Allocation info for local variables in function 'dump_pop'
                                    647 ;------------------------------------------------------------
                                    648 ;delta                     Allocated to stack - _bp -5
                                    649 ;_ctx                      Allocated to registers r5 r6 r7 
                                    650 ;ctx                       Allocated to stack - _bp +11
                                    651 ;d                         Allocated to stack - _bp +14
                                    652 ;r                         Allocated to registers r5 r6 
                                    653 ;__1966080001              Allocated to stack - _bp +18
                                    654 ;d                         Allocated to registers r2 r3 r4 r5 
                                    655 ;__3276800003              Allocated to stack - _bp +18
                                    656 ;d                         Allocated to registers r2 r3 r4 r7 
                                    657 ;sloc0                     Allocated to stack - _bp +1
                                    658 ;sloc1                     Allocated to stack - _bp +4
                                    659 ;sloc2                     Allocated to stack - _bp +7
                                    660 ;sloc3                     Allocated to stack - _bp +8
                                    661 ;------------------------------------------------------------
                                    662 ;	calc.c:43: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    663 ;	-----------------------------------------
                                    664 ;	 function dump_pop
                                    665 ;	-----------------------------------------
      002D21                        666 _dump_pop:
      002D21 C0 08            [24]  667 	push	_bp
      002D23 E5 81            [12]  668 	mov	a,sp
      002D25 F5 08            [12]  669 	mov	_bp,a
      002D27 24 15            [12]  670 	add	a,#0x15
      002D29 F5 81            [12]  671 	mov	sp,a
      002D2B AD 82            [24]  672 	mov	r5,dpl
      002D2D AE 83            [24]  673 	mov	r6,dph
      002D2F AF F0            [24]  674 	mov	r7,b
                                    675 ;	calc.c:44: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002D31 E5 08            [12]  676 	mov	a,_bp
      002D33 24 0B            [12]  677 	add	a,#0x0b
      002D35 F8               [12]  678 	mov	r0,a
      002D36 A6 05            [24]  679 	mov	@r0,ar5
      002D38 08               [12]  680 	inc	r0
      002D39 A6 06            [24]  681 	mov	@r0,ar6
      002D3B 08               [12]  682 	inc	r0
      002D3C A6 07            [24]  683 	mov	@r0,ar7
                                    684 ;	calc.c:48: if (delta->event == EVENT_TERM) printstr("\r\n");
      002D3E E5 08            [12]  685 	mov	a,_bp
      002D40 24 FB            [12]  686 	add	a,#0xfb
      002D42 F8               [12]  687 	mov	r0,a
      002D43 86 02            [24]  688 	mov	ar2,@r0
      002D45 08               [12]  689 	inc	r0
      002D46 86 03            [24]  690 	mov	ar3,@r0
      002D48 08               [12]  691 	inc	r0
      002D49 86 04            [24]  692 	mov	ar4,@r0
      002D4B 74 02            [12]  693 	mov	a,#0x02
      002D4D 2A               [12]  694 	add	a,r2
      002D4E FA               [12]  695 	mov	r2,a
      002D4F E4               [12]  696 	clr	a
      002D50 3B               [12]  697 	addc	a,r3
      002D51 FB               [12]  698 	mov	r3,a
      002D52 8A 82            [24]  699 	mov	dpl,r2
      002D54 8B 83            [24]  700 	mov	dph,r3
      002D56 8C F0            [24]  701 	mov	b,r4
      002D58 12 66 39         [24]  702 	lcall	__gptrget
      002D5B FE               [12]  703 	mov	r6,a
      002D5C A3               [24]  704 	inc	dptr
      002D5D 12 66 39         [24]  705 	lcall	__gptrget
      002D60 FF               [12]  706 	mov	r7,a
      002D61 BE 08 18         [24]  707 	cjne	r6,#0x08,00102$
      002D64 BF 00 15         [24]  708 	cjne	r7,#0x00,00102$
      002D67 90 7E D1         [24]  709 	mov	dptr,#___str_3
      002D6A 75 F0 80         [24]  710 	mov	b,#0x80
      002D6D C0 04            [24]  711 	push	ar4
      002D6F C0 03            [24]  712 	push	ar3
      002D71 C0 02            [24]  713 	push	ar2
      002D73 12 5F 35         [24]  714 	lcall	_printstr
      002D76 D0 02            [24]  715 	pop	ar2
      002D78 D0 03            [24]  716 	pop	ar3
      002D7A D0 04            [24]  717 	pop	ar4
      002D7C                        718 00102$:
                                    719 ;	calc.c:49: r = stack_pop(ctx->ps, &d);
      002D7C C0 02            [24]  720 	push	ar2
      002D7E C0 03            [24]  721 	push	ar3
      002D80 C0 04            [24]  722 	push	ar4
      002D82 E5 08            [12]  723 	mov	a,_bp
      002D84 24 0E            [12]  724 	add	a,#0x0e
      002D86 FF               [12]  725 	mov	r7,a
      002D87 E5 08            [12]  726 	mov	a,_bp
      002D89 24 04            [12]  727 	add	a,#0x04
      002D8B F8               [12]  728 	mov	r0,a
      002D8C A6 07            [24]  729 	mov	@r0,ar7
      002D8E 08               [12]  730 	inc	r0
      002D8F 76 00            [12]  731 	mov	@r0,#0x00
      002D91 08               [12]  732 	inc	r0
      002D92 76 40            [12]  733 	mov	@r0,#0x40
      002D94 E5 08            [12]  734 	mov	a,_bp
      002D96 24 0B            [12]  735 	add	a,#0x0b
      002D98 F8               [12]  736 	mov	r0,a
      002D99 A9 08            [24]  737 	mov	r1,_bp
      002D9B 09               [12]  738 	inc	r1
      002D9C 74 11            [12]  739 	mov	a,#0x11
      002D9E 26               [12]  740 	add	a,@r0
      002D9F F7               [12]  741 	mov	@r1,a
      002DA0 74 40            [12]  742 	mov	a,#0x40
      002DA2 08               [12]  743 	inc	r0
      002DA3 36               [12]  744 	addc	a,@r0
      002DA4 09               [12]  745 	inc	r1
      002DA5 F7               [12]  746 	mov	@r1,a
      002DA6 08               [12]  747 	inc	r0
      002DA7 09               [12]  748 	inc	r1
      002DA8 E6               [12]  749 	mov	a,@r0
      002DA9 F7               [12]  750 	mov	@r1,a
      002DAA A8 08            [24]  751 	mov	r0,_bp
      002DAC 08               [12]  752 	inc	r0
      002DAD 86 82            [24]  753 	mov	dpl,@r0
      002DAF 08               [12]  754 	inc	r0
      002DB0 86 83            [24]  755 	mov	dph,@r0
      002DB2 08               [12]  756 	inc	r0
      002DB3 86 F0            [24]  757 	mov	b,@r0
      002DB5 12 66 39         [24]  758 	lcall	__gptrget
      002DB8 FA               [12]  759 	mov	r2,a
      002DB9 A3               [24]  760 	inc	dptr
      002DBA 12 66 39         [24]  761 	lcall	__gptrget
      002DBD FB               [12]  762 	mov	r3,a
      002DBE A3               [24]  763 	inc	dptr
      002DBF 12 66 39         [24]  764 	lcall	__gptrget
      002DC2 FE               [12]  765 	mov	r6,a
      002DC3 C0 07            [24]  766 	push	ar7
      002DC5 C0 04            [24]  767 	push	ar4
      002DC7 C0 03            [24]  768 	push	ar3
      002DC9 C0 02            [24]  769 	push	ar2
      002DCB E5 08            [12]  770 	mov	a,_bp
      002DCD 24 04            [12]  771 	add	a,#0x04
      002DCF F8               [12]  772 	mov	r0,a
      002DD0 E6               [12]  773 	mov	a,@r0
      002DD1 C0 E0            [24]  774 	push	acc
      002DD3 08               [12]  775 	inc	r0
      002DD4 E6               [12]  776 	mov	a,@r0
      002DD5 C0 E0            [24]  777 	push	acc
      002DD7 08               [12]  778 	inc	r0
      002DD8 E6               [12]  779 	mov	a,@r0
      002DD9 C0 E0            [24]  780 	push	acc
      002DDB 8A 82            [24]  781 	mov	dpl,r2
      002DDD 8B 83            [24]  782 	mov	dph,r3
      002DDF 8E F0            [24]  783 	mov	b,r6
      002DE1 12 27 C3         [24]  784 	lcall	_stack_pop
      002DE4 AE 82            [24]  785 	mov	r6,dpl
      002DE6 AD 83            [24]  786 	mov	r5,dph
      002DE8 15 81            [12]  787 	dec	sp
      002DEA 15 81            [12]  788 	dec	sp
      002DEC 15 81            [12]  789 	dec	sp
      002DEE D0 02            [24]  790 	pop	ar2
      002DF0 D0 03            [24]  791 	pop	ar3
      002DF2 D0 04            [24]  792 	pop	ar4
      002DF4 D0 07            [24]  793 	pop	ar7
                                    794 ;	calc.c:50: if (!r) {
      002DF6 D0 04            [24]  795 	pop	ar4
      002DF8 D0 03            [24]  796 	pop	ar3
      002DFA D0 02            [24]  797 	pop	ar2
      002DFC EE               [12]  798 	mov	a,r6
      002DFD 4D               [12]  799 	orl	a,r5
      002DFE 70 34            [24]  800 	jnz	00125$
                                    801 ;	calc.c:51: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002E00 8A 82            [24]  802 	mov	dpl,r2
      002E02 8B 83            [24]  803 	mov	dph,r3
      002E04 8C F0            [24]  804 	mov	b,r4
      002E06 12 66 39         [24]  805 	lcall	__gptrget
      002E09 FD               [12]  806 	mov	r5,a
      002E0A A3               [24]  807 	inc	dptr
      002E0B 12 66 39         [24]  808 	lcall	__gptrget
      002E0E FE               [12]  809 	mov	r6,a
      002E0F BD 08 06         [24]  810 	cjne	r5,#0x08,00164$
      002E12 BE 00 03         [24]  811 	cjne	r6,#0x00,00164$
      002E15 02 2F A0         [24]  812 	ljmp	00110$
      002E18                        813 00164$:
      002E18 90 7E D4         [24]  814 	mov	dptr,#___str_4
      002E1B 75 F0 80         [24]  815 	mov	b,#0x80
      002E1E C0 07            [24]  816 	push	ar7
      002E20 C0 04            [24]  817 	push	ar4
      002E22 C0 03            [24]  818 	push	ar3
      002E24 C0 02            [24]  819 	push	ar2
      002E26 12 5F 35         [24]  820 	lcall	_printstr
      002E29 D0 02            [24]  821 	pop	ar2
      002E2B D0 03            [24]  822 	pop	ar3
      002E2D D0 04            [24]  823 	pop	ar4
      002E2F D0 07            [24]  824 	pop	ar7
      002E31 02 2F A0         [24]  825 	ljmp	00110$
                                    826 ;	calc.c:52: } else while (r > 0) {
      002E34                        827 00125$:
      002E34 E5 08            [12]  828 	mov	a,_bp
      002E36 24 07            [12]  829 	add	a,#0x07
      002E38 F8               [12]  830 	mov	r0,a
      002E39 A6 07            [24]  831 	mov	@r0,ar7
      002E3B                        832 00105$:
      002E3B C3               [12]  833 	clr	c
      002E3C E4               [12]  834 	clr	a
      002E3D 9E               [12]  835 	subb	a,r6
      002E3E 74 80            [12]  836 	mov	a,#(0x00 ^ 0x80)
      002E40 8D F0            [24]  837 	mov	b,r5
      002E42 63 F0 80         [24]  838 	xrl	b,#0x80
      002E45 95 F0            [12]  839 	subb	a,b
      002E47 40 03            [24]  840 	jc	00165$
      002E49 02 2F A0         [24]  841 	ljmp	00110$
      002E4C                        842 00165$:
                                    843 ;	calc.c:53: printstr("PSPA\t");
      002E4C C0 02            [24]  844 	push	ar2
      002E4E C0 03            [24]  845 	push	ar3
      002E50 C0 04            [24]  846 	push	ar4
      002E52 90 7E E6         [24]  847 	mov	dptr,#___str_5
      002E55 75 F0 80         [24]  848 	mov	b,#0x80
      002E58 C0 07            [24]  849 	push	ar7
      002E5A C0 04            [24]  850 	push	ar4
      002E5C C0 03            [24]  851 	push	ar3
      002E5E C0 02            [24]  852 	push	ar2
      002E60 12 5F 35         [24]  853 	lcall	_printstr
      002E63 D0 02            [24]  854 	pop	ar2
      002E65 D0 03            [24]  855 	pop	ar3
      002E67 D0 04            [24]  856 	pop	ar4
                                    857 ;	calc.c:54: printall(d);
      002E69 E5 08            [12]  858 	mov	a,_bp
      002E6B 24 0E            [12]  859 	add	a,#0x0e
      002E6D F8               [12]  860 	mov	r0,a
      002E6E E5 08            [12]  861 	mov	a,_bp
      002E70 24 12            [12]  862 	add	a,#0x12
      002E72 F9               [12]  863 	mov	r1,a
      002E73 E6               [12]  864 	mov	a,@r0
      002E74 F7               [12]  865 	mov	@r1,a
      002E75 08               [12]  866 	inc	r0
      002E76 09               [12]  867 	inc	r1
      002E77 E6               [12]  868 	mov	a,@r0
      002E78 F7               [12]  869 	mov	@r1,a
      002E79 08               [12]  870 	inc	r0
      002E7A 09               [12]  871 	inc	r1
      002E7B E6               [12]  872 	mov	a,@r0
      002E7C F7               [12]  873 	mov	@r1,a
      002E7D 08               [12]  874 	inc	r0
      002E7E 09               [12]  875 	inc	r1
      002E7F E6               [12]  876 	mov	a,@r0
      002E80 F7               [12]  877 	mov	@r1,a
      002E81 E5 08            [12]  878 	mov	a,_bp
      002E83 24 12            [12]  879 	add	a,#0x12
      002E85 F8               [12]  880 	mov	r0,a
      002E86 86 02            [24]  881 	mov	ar2,@r0
      002E88 08               [12]  882 	inc	r0
      002E89 86 03            [24]  883 	mov	ar3,@r0
      002E8B 08               [12]  884 	inc	r0
      002E8C 86 04            [24]  885 	mov	ar4,@r0
      002E8E 08               [12]  886 	inc	r0
      002E8F 86 05            [24]  887 	mov	ar5,@r0
                                    888 ;	calc.c:18: printf("%08lx\t", d);
      002E91 C0 05            [24]  889 	push	ar5
      002E93 C0 04            [24]  890 	push	ar4
      002E95 C0 03            [24]  891 	push	ar3
      002E97 C0 02            [24]  892 	push	ar2
      002E99 E5 08            [12]  893 	mov	a,_bp
      002E9B 24 12            [12]  894 	add	a,#0x12
      002E9D F8               [12]  895 	mov	r0,a
      002E9E E6               [12]  896 	mov	a,@r0
      002E9F C0 E0            [24]  897 	push	acc
      002EA1 08               [12]  898 	inc	r0
      002EA2 E6               [12]  899 	mov	a,@r0
      002EA3 C0 E0            [24]  900 	push	acc
      002EA5 08               [12]  901 	inc	r0
      002EA6 E6               [12]  902 	mov	a,@r0
      002EA7 C0 E0            [24]  903 	push	acc
      002EA9 08               [12]  904 	inc	r0
      002EAA E6               [12]  905 	mov	a,@r0
      002EAB C0 E0            [24]  906 	push	acc
      002EAD 74 BA            [12]  907 	mov	a,#___str_0
      002EAF C0 E0            [24]  908 	push	acc
      002EB1 74 7E            [12]  909 	mov	a,#(___str_0 >> 8)
      002EB3 C0 E0            [24]  910 	push	acc
      002EB5 74 80            [12]  911 	mov	a,#0x80
      002EB7 C0 E0            [24]  912 	push	acc
      002EB9 12 66 00         [24]  913 	lcall	_printf
      002EBC E5 81            [12]  914 	mov	a,sp
      002EBE 24 F9            [12]  915 	add	a,#0xf9
      002EC0 F5 81            [12]  916 	mov	sp,a
      002EC2 D0 02            [24]  917 	pop	ar2
      002EC4 D0 03            [24]  918 	pop	ar3
      002EC6 D0 04            [24]  919 	pop	ar4
      002EC8 D0 05            [24]  920 	pop	ar5
                                    921 ;	calc.c:19: printf("% 11ld\t", d);
      002ECA C0 05            [24]  922 	push	ar5
      002ECC C0 04            [24]  923 	push	ar4
      002ECE C0 03            [24]  924 	push	ar3
      002ED0 C0 02            [24]  925 	push	ar2
      002ED2 C0 02            [24]  926 	push	ar2
      002ED4 C0 03            [24]  927 	push	ar3
      002ED6 C0 04            [24]  928 	push	ar4
      002ED8 C0 05            [24]  929 	push	ar5
      002EDA 74 C1            [12]  930 	mov	a,#___str_1
      002EDC C0 E0            [24]  931 	push	acc
      002EDE 74 7E            [12]  932 	mov	a,#(___str_1 >> 8)
      002EE0 C0 E0            [24]  933 	push	acc
      002EE2 74 80            [12]  934 	mov	a,#0x80
      002EE4 C0 E0            [24]  935 	push	acc
      002EE6 12 66 00         [24]  936 	lcall	_printf
      002EE9 E5 81            [12]  937 	mov	a,sp
      002EEB 24 F9            [12]  938 	add	a,#0xf9
      002EED F5 81            [12]  939 	mov	sp,a
      002EEF D0 02            [24]  940 	pop	ar2
      002EF1 D0 03            [24]  941 	pop	ar3
      002EF3 D0 04            [24]  942 	pop	ar4
      002EF5 D0 05            [24]  943 	pop	ar5
                                    944 ;	calc.c:20: printf("%011lo\t", d);
      002EF7 C0 05            [24]  945 	push	ar5
      002EF9 C0 04            [24]  946 	push	ar4
      002EFB C0 03            [24]  947 	push	ar3
      002EFD C0 02            [24]  948 	push	ar2
      002EFF C0 02            [24]  949 	push	ar2
      002F01 C0 03            [24]  950 	push	ar3
      002F03 C0 04            [24]  951 	push	ar4
      002F05 C0 05            [24]  952 	push	ar5
      002F07 74 C9            [12]  953 	mov	a,#___str_2
      002F09 C0 E0            [24]  954 	push	acc
      002F0B 74 7E            [12]  955 	mov	a,#(___str_2 >> 8)
      002F0D C0 E0            [24]  956 	push	acc
      002F0F 74 80            [12]  957 	mov	a,#0x80
      002F11 C0 E0            [24]  958 	push	acc
      002F13 12 66 00         [24]  959 	lcall	_printf
      002F16 E5 81            [12]  960 	mov	a,sp
      002F18 24 F9            [12]  961 	add	a,#0xf9
      002F1A F5 81            [12]  962 	mov	sp,a
      002F1C D0 02            [24]  963 	pop	ar2
      002F1E D0 03            [24]  964 	pop	ar3
      002F20 D0 04            [24]  965 	pop	ar4
      002F22 D0 05            [24]  966 	pop	ar5
                                    967 ;	calc.c:21: print32bin(d);
      002F24 8A 82            [24]  968 	mov	dpl,r2
      002F26 8B 83            [24]  969 	mov	dph,r3
      002F28 8C F0            [24]  970 	mov	b,r4
      002F2A ED               [12]  971 	mov	a,r5
      002F2B C0 04            [24]  972 	push	ar4
      002F2D C0 03            [24]  973 	push	ar3
      002F2F C0 02            [24]  974 	push	ar2
      002F31 12 5F A4         [24]  975 	lcall	_print32bin
                                    976 ;	calc.c:55: printstr("\r\n");
      002F34 90 7E D1         [24]  977 	mov	dptr,#___str_3
      002F37 75 F0 80         [24]  978 	mov	b,#0x80
      002F3A 12 5F 35         [24]  979 	lcall	_printstr
      002F3D D0 02            [24]  980 	pop	ar2
                                    981 ;	calc.c:56: r = stack_pop(ctx->ps, &d);
      002F3F E5 08            [12]  982 	mov	a,_bp
      002F41 24 07            [12]  983 	add	a,#0x07
      002F43 F8               [12]  984 	mov	r0,a
      002F44 E5 08            [12]  985 	mov	a,_bp
      002F46 24 08            [12]  986 	add	a,#0x08
      002F48 F9               [12]  987 	mov	r1,a
      002F49 E6               [12]  988 	mov	a,@r0
      002F4A F7               [12]  989 	mov	@r1,a
      002F4B 09               [12]  990 	inc	r1
      002F4C 77 00            [12]  991 	mov	@r1,#0x00
      002F4E 09               [12]  992 	inc	r1
      002F4F 77 40            [12]  993 	mov	@r1,#0x40
      002F51 A8 08            [24]  994 	mov	r0,_bp
      002F53 08               [12]  995 	inc	r0
      002F54 86 82            [24]  996 	mov	dpl,@r0
      002F56 08               [12]  997 	inc	r0
      002F57 86 83            [24]  998 	mov	dph,@r0
      002F59 08               [12]  999 	inc	r0
      002F5A 86 F0            [24] 1000 	mov	b,@r0
      002F5C 12 66 39         [24] 1001 	lcall	__gptrget
      002F5F FA               [12] 1002 	mov	r2,a
      002F60 A3               [24] 1003 	inc	dptr
      002F61 12 66 39         [24] 1004 	lcall	__gptrget
      002F64 FD               [12] 1005 	mov	r5,a
      002F65 A3               [24] 1006 	inc	dptr
      002F66 12 66 39         [24] 1007 	lcall	__gptrget
      002F69 FE               [12] 1008 	mov	r6,a
      002F6A C0 02            [24] 1009 	push	ar2
      002F6C E5 08            [12] 1010 	mov	a,_bp
      002F6E 24 08            [12] 1011 	add	a,#0x08
      002F70 F8               [12] 1012 	mov	r0,a
      002F71 E6               [12] 1013 	mov	a,@r0
      002F72 C0 E0            [24] 1014 	push	acc
      002F74 08               [12] 1015 	inc	r0
      002F75 E6               [12] 1016 	mov	a,@r0
      002F76 C0 E0            [24] 1017 	push	acc
      002F78 08               [12] 1018 	inc	r0
      002F79 E6               [12] 1019 	mov	a,@r0
      002F7A C0 E0            [24] 1020 	push	acc
      002F7C 8A 82            [24] 1021 	mov	dpl,r2
      002F7E 8D 83            [24] 1022 	mov	dph,r5
      002F80 8E F0            [24] 1023 	mov	b,r6
      002F82 12 27 C3         [24] 1024 	lcall	_stack_pop
      002F85 AE 82            [24] 1025 	mov	r6,dpl
      002F87 AD 83            [24] 1026 	mov	r5,dph
      002F89 15 81            [12] 1027 	dec	sp
      002F8B 15 81            [12] 1028 	dec	sp
      002F8D 15 81            [12] 1029 	dec	sp
      002F8F D0 02            [24] 1030 	pop	ar2
      002F91 D0 03            [24] 1031 	pop	ar3
      002F93 D0 04            [24] 1032 	pop	ar4
      002F95 D0 07            [24] 1033 	pop	ar7
      002F97 D0 04            [24] 1034 	pop	ar4
      002F99 D0 03            [24] 1035 	pop	ar3
      002F9B D0 02            [24] 1036 	pop	ar2
      002F9D 02 2E 3B         [24] 1037 	ljmp	00105$
      002FA0                       1038 00110$:
                                   1039 ;	calc.c:59: if (delta->event == EVENT_TERM) {
      002FA0 8A 82            [24] 1040 	mov	dpl,r2
      002FA2 8B 83            [24] 1041 	mov	dph,r3
      002FA4 8C F0            [24] 1042 	mov	b,r4
      002FA6 12 66 39         [24] 1043 	lcall	__gptrget
      002FA9 FA               [12] 1044 	mov	r2,a
      002FAA A3               [24] 1045 	inc	dptr
      002FAB 12 66 39         [24] 1046 	lcall	__gptrget
      002FAE FB               [12] 1047 	mov	r3,a
      002FAF BA 08 05         [24] 1048 	cjne	r2,#0x08,00166$
      002FB2 BB 00 02         [24] 1049 	cjne	r3,#0x00,00166$
      002FB5 80 03            [24] 1050 	sjmp	00167$
      002FB7                       1051 00166$:
      002FB7 02 31 65         [24] 1052 	ljmp	00113$
      002FBA                       1053 00167$:
                                   1054 ;	calc.c:60: printstr("\r\n");
      002FBA 90 7E D1         [24] 1055 	mov	dptr,#___str_3
      002FBD 75 F0 80         [24] 1056 	mov	b,#0x80
      002FC0 C0 07            [24] 1057 	push	ar7
      002FC2 12 5F 35         [24] 1058 	lcall	_printstr
      002FC5 D0 07            [24] 1059 	pop	ar7
                                   1060 ;	calc.c:61: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      002FC7 8F 06            [24] 1061 	mov	ar6,r7
      002FC9 E5 08            [12] 1062 	mov	a,_bp
      002FCB 24 04            [12] 1063 	add	a,#0x04
      002FCD F8               [12] 1064 	mov	r0,a
      002FCE A6 06            [24] 1065 	mov	@r0,ar6
      002FD0 08               [12] 1066 	inc	r0
      002FD1 76 00            [12] 1067 	mov	@r0,#0x00
      002FD3 08               [12] 1068 	inc	r0
      002FD4 76 40            [12] 1069 	mov	@r0,#0x40
      002FD6 E5 08            [12] 1070 	mov	a,_bp
      002FD8 24 0B            [12] 1071 	add	a,#0x0b
      002FDA F8               [12] 1072 	mov	r0,a
      002FDB E5 08            [12] 1073 	mov	a,_bp
      002FDD 24 08            [12] 1074 	add	a,#0x08
      002FDF F9               [12] 1075 	mov	r1,a
      002FE0 74 14            [12] 1076 	mov	a,#0x14
      002FE2 26               [12] 1077 	add	a,@r0
      002FE3 F7               [12] 1078 	mov	@r1,a
      002FE4 74 40            [12] 1079 	mov	a,#0x40
      002FE6 08               [12] 1080 	inc	r0
      002FE7 36               [12] 1081 	addc	a,@r0
      002FE8 09               [12] 1082 	inc	r1
      002FE9 F7               [12] 1083 	mov	@r1,a
      002FEA 08               [12] 1084 	inc	r0
      002FEB 09               [12] 1085 	inc	r1
      002FEC E6               [12] 1086 	mov	a,@r0
      002FED F7               [12] 1087 	mov	@r1,a
      002FEE E5 08            [12] 1088 	mov	a,_bp
      002FF0 24 08            [12] 1089 	add	a,#0x08
      002FF2 F8               [12] 1090 	mov	r0,a
      002FF3 86 82            [24] 1091 	mov	dpl,@r0
      002FF5 08               [12] 1092 	inc	r0
      002FF6 86 83            [24] 1093 	mov	dph,@r0
      002FF8 08               [12] 1094 	inc	r0
      002FF9 86 F0            [24] 1095 	mov	b,@r0
      002FFB 12 66 39         [24] 1096 	lcall	__gptrget
      002FFE FA               [12] 1097 	mov	r2,a
      002FFF A3               [24] 1098 	inc	dptr
      003000 12 66 39         [24] 1099 	lcall	__gptrget
      003003 FB               [12] 1100 	mov	r3,a
      003004 A3               [24] 1101 	inc	dptr
      003005 12 66 39         [24] 1102 	lcall	__gptrget
      003008 FE               [12] 1103 	mov	r6,a
      003009 C0 07            [24] 1104 	push	ar7
      00300B E5 08            [12] 1105 	mov	a,_bp
      00300D 24 04            [12] 1106 	add	a,#0x04
      00300F F8               [12] 1107 	mov	r0,a
      003010 E6               [12] 1108 	mov	a,@r0
      003011 C0 E0            [24] 1109 	push	acc
      003013 08               [12] 1110 	inc	r0
      003014 E6               [12] 1111 	mov	a,@r0
      003015 C0 E0            [24] 1112 	push	acc
      003017 08               [12] 1113 	inc	r0
      003018 E6               [12] 1114 	mov	a,@r0
      003019 C0 E0            [24] 1115 	push	acc
      00301B 8A 82            [24] 1116 	mov	dpl,r2
      00301D 8B 83            [24] 1117 	mov	dph,r3
      00301F 8E F0            [24] 1118 	mov	b,r6
      003021 12 27 C3         [24] 1119 	lcall	_stack_pop
      003024 AD 82            [24] 1120 	mov	r5,dpl
      003026 AE 83            [24] 1121 	mov	r6,dph
      003028 15 81            [12] 1122 	dec	sp
      00302A 15 81            [12] 1123 	dec	sp
      00302C 15 81            [12] 1124 	dec	sp
      00302E D0 07            [24] 1125 	pop	ar7
      003030 E5 08            [12] 1126 	mov	a,_bp
      003032 24 07            [12] 1127 	add	a,#0x07
      003034 F8               [12] 1128 	mov	r0,a
      003035 A6 07            [24] 1129 	mov	@r0,ar7
      003037                       1130 00117$:
      003037 C3               [12] 1131 	clr	c
      003038 E4               [12] 1132 	clr	a
      003039 9D               [12] 1133 	subb	a,r5
      00303A 74 80            [12] 1134 	mov	a,#(0x00 ^ 0x80)
      00303C 8E F0            [24] 1135 	mov	b,r6
      00303E 63 F0 80         [24] 1136 	xrl	b,#0x80
      003041 95 F0            [12] 1137 	subb	a,b
      003043 40 03            [24] 1138 	jc	00168$
      003045 02 31 65         [24] 1139 	ljmp	00113$
      003048                       1140 00168$:
                                   1141 ;	calc.c:62: printstr("SSPA\t");
      003048 90 7E EC         [24] 1142 	mov	dptr,#___str_6
      00304B 75 F0 80         [24] 1143 	mov	b,#0x80
      00304E 12 5F 35         [24] 1144 	lcall	_printstr
                                   1145 ;	calc.c:63: printall(d);
      003051 E5 08            [12] 1146 	mov	a,_bp
      003053 24 0E            [12] 1147 	add	a,#0x0e
      003055 F8               [12] 1148 	mov	r0,a
      003056 E5 08            [12] 1149 	mov	a,_bp
      003058 24 12            [12] 1150 	add	a,#0x12
      00305A F9               [12] 1151 	mov	r1,a
      00305B E6               [12] 1152 	mov	a,@r0
      00305C F7               [12] 1153 	mov	@r1,a
      00305D 08               [12] 1154 	inc	r0
      00305E 09               [12] 1155 	inc	r1
      00305F E6               [12] 1156 	mov	a,@r0
      003060 F7               [12] 1157 	mov	@r1,a
      003061 08               [12] 1158 	inc	r0
      003062 09               [12] 1159 	inc	r1
      003063 E6               [12] 1160 	mov	a,@r0
      003064 F7               [12] 1161 	mov	@r1,a
      003065 08               [12] 1162 	inc	r0
      003066 09               [12] 1163 	inc	r1
      003067 E6               [12] 1164 	mov	a,@r0
      003068 F7               [12] 1165 	mov	@r1,a
      003069 E5 08            [12] 1166 	mov	a,_bp
      00306B 24 12            [12] 1167 	add	a,#0x12
      00306D F8               [12] 1168 	mov	r0,a
      00306E 86 02            [24] 1169 	mov	ar2,@r0
      003070 08               [12] 1170 	inc	r0
      003071 86 03            [24] 1171 	mov	ar3,@r0
      003073 08               [12] 1172 	inc	r0
      003074 86 04            [24] 1173 	mov	ar4,@r0
      003076 08               [12] 1174 	inc	r0
      003077 86 07            [24] 1175 	mov	ar7,@r0
                                   1176 ;	calc.c:18: printf("%08lx\t", d);
      003079 C0 07            [24] 1177 	push	ar7
      00307B C0 04            [24] 1178 	push	ar4
      00307D C0 03            [24] 1179 	push	ar3
      00307F C0 02            [24] 1180 	push	ar2
      003081 E5 08            [12] 1181 	mov	a,_bp
      003083 24 12            [12] 1182 	add	a,#0x12
      003085 F8               [12] 1183 	mov	r0,a
      003086 E6               [12] 1184 	mov	a,@r0
      003087 C0 E0            [24] 1185 	push	acc
      003089 08               [12] 1186 	inc	r0
      00308A E6               [12] 1187 	mov	a,@r0
      00308B C0 E0            [24] 1188 	push	acc
      00308D 08               [12] 1189 	inc	r0
      00308E E6               [12] 1190 	mov	a,@r0
      00308F C0 E0            [24] 1191 	push	acc
      003091 08               [12] 1192 	inc	r0
      003092 E6               [12] 1193 	mov	a,@r0
      003093 C0 E0            [24] 1194 	push	acc
      003095 74 BA            [12] 1195 	mov	a,#___str_0
      003097 C0 E0            [24] 1196 	push	acc
      003099 74 7E            [12] 1197 	mov	a,#(___str_0 >> 8)
      00309B C0 E0            [24] 1198 	push	acc
      00309D 74 80            [12] 1199 	mov	a,#0x80
      00309F C0 E0            [24] 1200 	push	acc
      0030A1 12 66 00         [24] 1201 	lcall	_printf
      0030A4 E5 81            [12] 1202 	mov	a,sp
      0030A6 24 F9            [12] 1203 	add	a,#0xf9
      0030A8 F5 81            [12] 1204 	mov	sp,a
      0030AA D0 02            [24] 1205 	pop	ar2
      0030AC D0 03            [24] 1206 	pop	ar3
      0030AE D0 04            [24] 1207 	pop	ar4
      0030B0 D0 07            [24] 1208 	pop	ar7
                                   1209 ;	calc.c:19: printf("% 11ld\t", d);
      0030B2 C0 07            [24] 1210 	push	ar7
      0030B4 C0 04            [24] 1211 	push	ar4
      0030B6 C0 03            [24] 1212 	push	ar3
      0030B8 C0 02            [24] 1213 	push	ar2
      0030BA C0 02            [24] 1214 	push	ar2
      0030BC C0 03            [24] 1215 	push	ar3
      0030BE C0 04            [24] 1216 	push	ar4
      0030C0 C0 07            [24] 1217 	push	ar7
      0030C2 74 C1            [12] 1218 	mov	a,#___str_1
      0030C4 C0 E0            [24] 1219 	push	acc
      0030C6 74 7E            [12] 1220 	mov	a,#(___str_1 >> 8)
      0030C8 C0 E0            [24] 1221 	push	acc
      0030CA 74 80            [12] 1222 	mov	a,#0x80
      0030CC C0 E0            [24] 1223 	push	acc
      0030CE 12 66 00         [24] 1224 	lcall	_printf
      0030D1 E5 81            [12] 1225 	mov	a,sp
      0030D3 24 F9            [12] 1226 	add	a,#0xf9
      0030D5 F5 81            [12] 1227 	mov	sp,a
      0030D7 D0 02            [24] 1228 	pop	ar2
      0030D9 D0 03            [24] 1229 	pop	ar3
      0030DB D0 04            [24] 1230 	pop	ar4
      0030DD D0 07            [24] 1231 	pop	ar7
                                   1232 ;	calc.c:20: printf("%011lo\t", d);
      0030DF C0 07            [24] 1233 	push	ar7
      0030E1 C0 04            [24] 1234 	push	ar4
      0030E3 C0 03            [24] 1235 	push	ar3
      0030E5 C0 02            [24] 1236 	push	ar2
      0030E7 C0 02            [24] 1237 	push	ar2
      0030E9 C0 03            [24] 1238 	push	ar3
      0030EB C0 04            [24] 1239 	push	ar4
      0030ED C0 07            [24] 1240 	push	ar7
      0030EF 74 C9            [12] 1241 	mov	a,#___str_2
      0030F1 C0 E0            [24] 1242 	push	acc
      0030F3 74 7E            [12] 1243 	mov	a,#(___str_2 >> 8)
      0030F5 C0 E0            [24] 1244 	push	acc
      0030F7 74 80            [12] 1245 	mov	a,#0x80
      0030F9 C0 E0            [24] 1246 	push	acc
      0030FB 12 66 00         [24] 1247 	lcall	_printf
      0030FE E5 81            [12] 1248 	mov	a,sp
      003100 24 F9            [12] 1249 	add	a,#0xf9
      003102 F5 81            [12] 1250 	mov	sp,a
      003104 D0 02            [24] 1251 	pop	ar2
      003106 D0 03            [24] 1252 	pop	ar3
      003108 D0 04            [24] 1253 	pop	ar4
      00310A D0 07            [24] 1254 	pop	ar7
                                   1255 ;	calc.c:21: print32bin(d);
      00310C 8A 82            [24] 1256 	mov	dpl,r2
      00310E 8B 83            [24] 1257 	mov	dph,r3
      003110 8C F0            [24] 1258 	mov	b,r4
      003112 EF               [12] 1259 	mov	a,r7
      003113 12 5F A4         [24] 1260 	lcall	_print32bin
                                   1261 ;	calc.c:64: printstr("\r\n");
      003116 90 7E D1         [24] 1262 	mov	dptr,#___str_3
      003119 75 F0 80         [24] 1263 	mov	b,#0x80
      00311C 12 5F 35         [24] 1264 	lcall	_printstr
                                   1265 ;	calc.c:61: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      00311F E5 08            [12] 1266 	mov	a,_bp
      003121 24 07            [12] 1267 	add	a,#0x07
      003123 F8               [12] 1268 	mov	r0,a
      003124 86 06            [24] 1269 	mov	ar6,@r0
      003126 7D 00            [12] 1270 	mov	r5,#0x00
      003128 7B 40            [12] 1271 	mov	r3,#0x40
      00312A E5 08            [12] 1272 	mov	a,_bp
      00312C 24 08            [12] 1273 	add	a,#0x08
      00312E F8               [12] 1274 	mov	r0,a
      00312F 86 82            [24] 1275 	mov	dpl,@r0
      003131 08               [12] 1276 	inc	r0
      003132 86 83            [24] 1277 	mov	dph,@r0
      003134 08               [12] 1278 	inc	r0
      003135 86 F0            [24] 1279 	mov	b,@r0
      003137 12 66 39         [24] 1280 	lcall	__gptrget
      00313A FA               [12] 1281 	mov	r2,a
      00313B A3               [24] 1282 	inc	dptr
      00313C 12 66 39         [24] 1283 	lcall	__gptrget
      00313F FC               [12] 1284 	mov	r4,a
      003140 A3               [24] 1285 	inc	dptr
      003141 12 66 39         [24] 1286 	lcall	__gptrget
      003144 FF               [12] 1287 	mov	r7,a
      003145 C0 06            [24] 1288 	push	ar6
      003147 C0 05            [24] 1289 	push	ar5
      003149 C0 03            [24] 1290 	push	ar3
      00314B 8A 82            [24] 1291 	mov	dpl,r2
      00314D 8C 83            [24] 1292 	mov	dph,r4
      00314F 8F F0            [24] 1293 	mov	b,r7
      003151 12 27 C3         [24] 1294 	lcall	_stack_pop
      003154 AC 82            [24] 1295 	mov	r4,dpl
      003156 AF 83            [24] 1296 	mov	r7,dph
      003158 15 81            [12] 1297 	dec	sp
      00315A 15 81            [12] 1298 	dec	sp
      00315C 15 81            [12] 1299 	dec	sp
      00315E 8C 05            [24] 1300 	mov	ar5,r4
      003160 8F 06            [24] 1301 	mov	ar6,r7
      003162 02 30 37         [24] 1302 	ljmp	00117$
      003165                       1303 00113$:
                                   1304 ;	calc.c:68: return 1;
      003165 90 00 01         [24] 1305 	mov	dptr,#0x0001
                                   1306 ;	calc.c:69: }
      003168 85 08 81         [24] 1307 	mov	sp,_bp
      00316B D0 08            [24] 1308 	pop	_bp
      00316D 22               [24] 1309 	ret
                                   1310 ;------------------------------------------------------------
                                   1311 ;Allocation info for local variables in function 'dump_peek'
                                   1312 ;------------------------------------------------------------
                                   1313 ;d                         Allocated to stack - _bp -6
                                   1314 ;_ctx                      Allocated to registers 
                                   1315 ;__1310720005              Allocated to registers r4 r5 r6 r7 
                                   1316 ;d                         Allocated to registers 
                                   1317 ;------------------------------------------------------------
                                   1318 ;	calc.c:71: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1319 ;	-----------------------------------------
                                   1320 ;	 function dump_peek
                                   1321 ;	-----------------------------------------
      00316E                       1322 _dump_peek:
      00316E C0 08            [24] 1323 	push	_bp
      003170 85 81 08         [24] 1324 	mov	_bp,sp
                                   1325 ;	calc.c:74: printstr("PSVA\t");
      003173 90 7E F2         [24] 1326 	mov	dptr,#___str_7
      003176 75 F0 80         [24] 1327 	mov	b,#0x80
      003179 12 5F 35         [24] 1328 	lcall	_printstr
                                   1329 ;	calc.c:75: printall(d);
      00317C E5 08            [12] 1330 	mov	a,_bp
      00317E 24 FA            [12] 1331 	add	a,#0xfa
      003180 F8               [12] 1332 	mov	r0,a
      003181 86 04            [24] 1333 	mov	ar4,@r0
      003183 08               [12] 1334 	inc	r0
      003184 86 05            [24] 1335 	mov	ar5,@r0
      003186 08               [12] 1336 	inc	r0
      003187 86 06            [24] 1337 	mov	ar6,@r0
      003189 08               [12] 1338 	inc	r0
      00318A 86 07            [24] 1339 	mov	ar7,@r0
                                   1340 ;	calc.c:18: printf("%08lx\t", d);
      00318C C0 07            [24] 1341 	push	ar7
      00318E C0 06            [24] 1342 	push	ar6
      003190 C0 05            [24] 1343 	push	ar5
      003192 C0 04            [24] 1344 	push	ar4
      003194 C0 04            [24] 1345 	push	ar4
      003196 C0 05            [24] 1346 	push	ar5
      003198 C0 06            [24] 1347 	push	ar6
      00319A C0 07            [24] 1348 	push	ar7
      00319C 74 BA            [12] 1349 	mov	a,#___str_0
      00319E C0 E0            [24] 1350 	push	acc
      0031A0 74 7E            [12] 1351 	mov	a,#(___str_0 >> 8)
      0031A2 C0 E0            [24] 1352 	push	acc
      0031A4 74 80            [12] 1353 	mov	a,#0x80
      0031A6 C0 E0            [24] 1354 	push	acc
      0031A8 12 66 00         [24] 1355 	lcall	_printf
      0031AB E5 81            [12] 1356 	mov	a,sp
      0031AD 24 F9            [12] 1357 	add	a,#0xf9
      0031AF F5 81            [12] 1358 	mov	sp,a
      0031B1 D0 04            [24] 1359 	pop	ar4
      0031B3 D0 05            [24] 1360 	pop	ar5
      0031B5 D0 06            [24] 1361 	pop	ar6
      0031B7 D0 07            [24] 1362 	pop	ar7
                                   1363 ;	calc.c:19: printf("% 11ld\t", d);
      0031B9 C0 07            [24] 1364 	push	ar7
      0031BB C0 06            [24] 1365 	push	ar6
      0031BD C0 05            [24] 1366 	push	ar5
      0031BF C0 04            [24] 1367 	push	ar4
      0031C1 C0 04            [24] 1368 	push	ar4
      0031C3 C0 05            [24] 1369 	push	ar5
      0031C5 C0 06            [24] 1370 	push	ar6
      0031C7 C0 07            [24] 1371 	push	ar7
      0031C9 74 C1            [12] 1372 	mov	a,#___str_1
      0031CB C0 E0            [24] 1373 	push	acc
      0031CD 74 7E            [12] 1374 	mov	a,#(___str_1 >> 8)
      0031CF C0 E0            [24] 1375 	push	acc
      0031D1 74 80            [12] 1376 	mov	a,#0x80
      0031D3 C0 E0            [24] 1377 	push	acc
      0031D5 12 66 00         [24] 1378 	lcall	_printf
      0031D8 E5 81            [12] 1379 	mov	a,sp
      0031DA 24 F9            [12] 1380 	add	a,#0xf9
      0031DC F5 81            [12] 1381 	mov	sp,a
      0031DE D0 04            [24] 1382 	pop	ar4
      0031E0 D0 05            [24] 1383 	pop	ar5
      0031E2 D0 06            [24] 1384 	pop	ar6
      0031E4 D0 07            [24] 1385 	pop	ar7
                                   1386 ;	calc.c:20: printf("%011lo\t", d);
      0031E6 C0 07            [24] 1387 	push	ar7
      0031E8 C0 06            [24] 1388 	push	ar6
      0031EA C0 05            [24] 1389 	push	ar5
      0031EC C0 04            [24] 1390 	push	ar4
      0031EE C0 04            [24] 1391 	push	ar4
      0031F0 C0 05            [24] 1392 	push	ar5
      0031F2 C0 06            [24] 1393 	push	ar6
      0031F4 C0 07            [24] 1394 	push	ar7
      0031F6 74 C9            [12] 1395 	mov	a,#___str_2
      0031F8 C0 E0            [24] 1396 	push	acc
      0031FA 74 7E            [12] 1397 	mov	a,#(___str_2 >> 8)
      0031FC C0 E0            [24] 1398 	push	acc
      0031FE 74 80            [12] 1399 	mov	a,#0x80
      003200 C0 E0            [24] 1400 	push	acc
      003202 12 66 00         [24] 1401 	lcall	_printf
      003205 E5 81            [12] 1402 	mov	a,sp
      003207 24 F9            [12] 1403 	add	a,#0xf9
      003209 F5 81            [12] 1404 	mov	sp,a
      00320B D0 04            [24] 1405 	pop	ar4
      00320D D0 05            [24] 1406 	pop	ar5
      00320F D0 06            [24] 1407 	pop	ar6
      003211 D0 07            [24] 1408 	pop	ar7
                                   1409 ;	calc.c:21: print32bin(d);
      003213 8C 82            [24] 1410 	mov	dpl,r4
      003215 8D 83            [24] 1411 	mov	dph,r5
      003217 8E F0            [24] 1412 	mov	b,r6
      003219 EF               [12] 1413 	mov	a,r7
      00321A 12 5F A4         [24] 1414 	lcall	_print32bin
                                   1415 ;	calc.c:76: printstr("\r\n");
      00321D 90 7E D1         [24] 1416 	mov	dptr,#___str_3
      003220 75 F0 80         [24] 1417 	mov	b,#0x80
      003223 12 5F 35         [24] 1418 	lcall	_printstr
                                   1419 ;	calc.c:78: return 1;
      003226 90 00 01         [24] 1420 	mov	dptr,#0x0001
                                   1421 ;	calc.c:79: }
      003229 D0 08            [24] 1422 	pop	_bp
      00322B 22               [24] 1423 	ret
                                   1424 ;------------------------------------------------------------
                                   1425 ;Allocation info for local variables in function 'operator'
                                   1426 ;------------------------------------------------------------
                                   1427 ;delta                     Allocated to stack - _bp -5
                                   1428 ;_ctx                      Allocated to registers r2 r3 r4 
                                   1429 ;ctx                       Allocated to stack - _bp +23
                                   1430 ;t0                        Allocated to registers r7 r6 r5 
                                   1431 ;d0                        Allocated to stack - _bp +26
                                   1432 ;d1                        Allocated to stack - _bp +30
                                   1433 ;__2621440007              Allocated to registers r7 r6 r5 r4 
                                   1434 ;d                         Allocated to stack - _bp +34
                                   1435 ;__2621440009              Allocated to registers r7 r6 r5 r4 
                                   1436 ;d                         Allocated to stack - _bp +34
                                   1437 ;sloc0                     Allocated to stack - _bp +1
                                   1438 ;sloc1                     Allocated to stack - _bp +2
                                   1439 ;sloc2                     Allocated to stack - _bp +5
                                   1440 ;sloc3                     Allocated to stack - _bp +8
                                   1441 ;sloc4                     Allocated to stack - _bp +11
                                   1442 ;sloc5                     Allocated to stack - _bp +15
                                   1443 ;sloc6                     Allocated to stack - _bp +19
                                   1444 ;------------------------------------------------------------
                                   1445 ;	calc.c:81: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   1446 ;	-----------------------------------------
                                   1447 ;	 function operator
                                   1448 ;	-----------------------------------------
      00322C                       1449 _operator:
      00322C C0 08            [24] 1450 	push	_bp
      00322E E5 81            [12] 1451 	mov	a,sp
      003230 F5 08            [12] 1452 	mov	_bp,a
      003232 24 25            [12] 1453 	add	a,#0x25
      003234 F5 81            [12] 1454 	mov	sp,a
      003236 AA 82            [24] 1455 	mov	r2,dpl
      003238 AB 83            [24] 1456 	mov	r3,dph
      00323A AC F0            [24] 1457 	mov	r4,b
                                   1458 ;	calc.c:82: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      00323C E5 08            [12] 1459 	mov	a,_bp
      00323E 24 17            [12] 1460 	add	a,#0x17
      003240 F8               [12] 1461 	mov	r0,a
      003241 A6 02            [24] 1462 	mov	@r0,ar2
      003243 08               [12] 1463 	inc	r0
      003244 A6 03            [24] 1464 	mov	@r0,ar3
      003246 08               [12] 1465 	inc	r0
      003247 A6 04            [24] 1466 	mov	@r0,ar4
                                   1467 ;	calc.c:86: switch (ctx->digit[0]) {
      003249 E5 08            [12] 1468 	mov	a,_bp
      00324B 24 17            [12] 1469 	add	a,#0x17
      00324D F8               [12] 1470 	mov	r0,a
      00324E 74 07            [12] 1471 	mov	a,#0x07
      003250 26               [12] 1472 	add	a,@r0
      003251 FD               [12] 1473 	mov	r5,a
      003252 E4               [12] 1474 	clr	a
      003253 08               [12] 1475 	inc	r0
      003254 36               [12] 1476 	addc	a,@r0
      003255 FE               [12] 1477 	mov	r6,a
      003256 08               [12] 1478 	inc	r0
      003257 86 07            [24] 1479 	mov	ar7,@r0
      003259 8D 82            [24] 1480 	mov	dpl,r5
      00325B 8E 83            [24] 1481 	mov	dph,r6
      00325D 8F F0            [24] 1482 	mov	b,r7
      00325F A8 08            [24] 1483 	mov	r0,_bp
      003261 08               [12] 1484 	inc	r0
      003262 12 66 39         [24] 1485 	lcall	__gptrget
      003265 F6               [12] 1486 	mov	@r0,a
      003266 A8 08            [24] 1487 	mov	r0,_bp
      003268 08               [12] 1488 	inc	r0
      003269 B6 23 03         [24] 1489 	cjne	@r0,#0x23,00526$
      00326C 02 43 CA         [24] 1490 	ljmp	00189$
      00326F                       1491 00526$:
      00326F A8 08            [24] 1492 	mov	r0,_bp
      003271 08               [12] 1493 	inc	r0
      003272 B6 25 03         [24] 1494 	cjne	@r0,#0x25,00527$
      003275 02 43 CA         [24] 1495 	ljmp	00189$
      003278                       1496 00527$:
      003278 A8 08            [24] 1497 	mov	r0,_bp
      00327A 08               [12] 1498 	inc	r0
      00327B B6 26 03         [24] 1499 	cjne	@r0,#0x26,00528$
      00327E 02 46 65         [24] 1500 	ljmp	00202$
      003281                       1501 00528$:
      003281 A8 08            [24] 1502 	mov	r0,_bp
      003283 08               [12] 1503 	inc	r0
      003284 B6 2A 03         [24] 1504 	cjne	@r0,#0x2a,00529$
      003287 02 3F B7         [24] 1505 	ljmp	00167$
      00328A                       1506 00529$:
      00328A A8 08            [24] 1507 	mov	r0,_bp
      00328C 08               [12] 1508 	inc	r0
      00328D B6 2B 03         [24] 1509 	cjne	@r0,#0x2b,00530$
      003290 02 3D 1C         [24] 1510 	ljmp	00153$
      003293                       1511 00530$:
      003293 A8 08            [24] 1512 	mov	r0,_bp
      003295 08               [12] 1513 	inc	r0
      003296 B6 2D 03         [24] 1514 	cjne	@r0,#0x2d,00531$
      003299 02 3E 69         [24] 1515 	ljmp	00160$
      00329C                       1516 00531$:
      00329C A8 08            [24] 1517 	mov	r0,_bp
      00329E 08               [12] 1518 	inc	r0
      00329F B6 2E 03         [24] 1519 	cjne	@r0,#0x2e,00532$
      0032A2 02 34 D6         [24] 1520 	ljmp	00109$
      0032A5                       1521 00532$:
      0032A5 A8 08            [24] 1522 	mov	r0,_bp
      0032A7 08               [12] 1523 	inc	r0
      0032A8 B6 2F 03         [24] 1524 	cjne	@r0,#0x2f,00533$
      0032AB 02 41 2B         [24] 1525 	ljmp	00175$
      0032AE                       1526 00533$:
      0032AE A8 08            [24] 1527 	mov	r0,_bp
      0032B0 08               [12] 1528 	inc	r0
      0032B1 B6 3C 03         [24] 1529 	cjne	@r0,#0x3c,00534$
      0032B4 02 4D 86         [24] 1530 	ljmp	00237$
      0032B7                       1531 00534$:
      0032B7 A8 08            [24] 1532 	mov	r0,_bp
      0032B9 08               [12] 1533 	inc	r0
      0032BA B6 3E 03         [24] 1534 	cjne	@r0,#0x3e,00535$
      0032BD 02 4A 9D         [24] 1535 	ljmp	00223$
      0032C0                       1536 00535$:
      0032C0 A8 08            [24] 1537 	mov	r0,_bp
      0032C2 08               [12] 1538 	inc	r0
      0032C3 B6 4D 03         [24] 1539 	cjne	@r0,#0x4d,00536$
      0032C6 02 38 8D         [24] 1540 	ljmp	00127$
      0032C9                       1541 00536$:
      0032C9 A8 08            [24] 1542 	mov	r0,_bp
      0032CB 08               [12] 1543 	inc	r0
      0032CC B6 50 03         [24] 1544 	cjne	@r0,#0x50,00537$
      0032CF 02 35 EB         [24] 1545 	ljmp	00113$
      0032D2                       1546 00537$:
      0032D2 A8 08            [24] 1547 	mov	r0,_bp
      0032D4 08               [12] 1548 	inc	r0
      0032D5 B6 54 03         [24] 1549 	cjne	@r0,#0x54,00538$
      0032D8 02 3A F9         [24] 1550 	ljmp	00145$
      0032DB                       1551 00538$:
      0032DB A8 08            [24] 1552 	mov	r0,_bp
      0032DD 08               [12] 1553 	inc	r0
      0032DE B6 55 03         [24] 1554 	cjne	@r0,#0x55,00539$
      0032E1 02 3A 44         [24] 1555 	ljmp	00139$
      0032E4                       1556 00539$:
      0032E4 A8 08            [24] 1557 	mov	r0,_bp
      0032E6 08               [12] 1558 	inc	r0
      0032E7 B6 56 03         [24] 1559 	cjne	@r0,#0x56,00540$
      0032EA 02 34 67         [24] 1560 	ljmp	00105$
      0032ED                       1561 00540$:
      0032ED A8 08            [24] 1562 	mov	r0,_bp
      0032EF 08               [12] 1563 	inc	r0
      0032F0 B6 58 03         [24] 1564 	cjne	@r0,#0x58,00541$
      0032F3 02 3C 7D         [24] 1565 	ljmp	00152$
      0032F6                       1566 00541$:
      0032F6 A8 08            [24] 1567 	mov	r0,_bp
      0032F8 08               [12] 1568 	inc	r0
      0032F9 B6 5C 03         [24] 1569 	cjne	@r0,#0x5c,00542$
      0032FC 02 41 2B         [24] 1570 	ljmp	00175$
      0032FF                       1571 00542$:
      0032FF A8 08            [24] 1572 	mov	r0,_bp
      003301 08               [12] 1573 	inc	r0
      003302 B6 5D 03         [24] 1574 	cjne	@r0,#0x5d,00543$
      003305 02 4C 09         [24] 1575 	ljmp	00230$
      003308                       1576 00543$:
      003308 A8 08            [24] 1577 	mov	r0,_bp
      00330A 08               [12] 1578 	inc	r0
      00330B B6 5E 03         [24] 1579 	cjne	@r0,#0x5e,00544$
      00330E 02 49 35         [24] 1580 	ljmp	00216$
      003311                       1581 00544$:
      003311 A8 08            [24] 1582 	mov	r0,_bp
      003313 08               [12] 1583 	inc	r0
      003314 B6 6D 03         [24] 1584 	cjne	@r0,#0x6d,00545$
      003317 02 37 8B         [24] 1585 	ljmp	00121$
      00331A                       1586 00545$:
      00331A A8 08            [24] 1587 	mov	r0,_bp
      00331C 08               [12] 1588 	inc	r0
      00331D B6 70 03         [24] 1589 	cjne	@r0,#0x70,00546$
      003320 02 34 D6         [24] 1590 	ljmp	00109$
      003323                       1591 00546$:
      003323 A8 08            [24] 1592 	mov	r0,_bp
      003325 08               [12] 1593 	inc	r0
      003326 B6 75 03         [24] 1594 	cjne	@r0,#0x75,00547$
      003329 02 39 8F         [24] 1595 	ljmp	00133$
      00332C                       1596 00547$:
      00332C A8 08            [24] 1597 	mov	r0,_bp
      00332E 08               [12] 1598 	inc	r0
      00332F B6 76 02         [24] 1599 	cjne	@r0,#0x76,00548$
      003332 80 1E            [24] 1600 	sjmp	00101$
      003334                       1601 00548$:
      003334 A8 08            [24] 1602 	mov	r0,_bp
      003336 08               [12] 1603 	inc	r0
      003337 B6 78 03         [24] 1604 	cjne	@r0,#0x78,00549$
      00333A 02 36 22         [24] 1605 	ljmp	00114$
      00333D                       1606 00549$:
      00333D A8 08            [24] 1607 	mov	r0,_bp
      00333F 08               [12] 1608 	inc	r0
      003340 B6 7C 03         [24] 1609 	cjne	@r0,#0x7c,00550$
      003343 02 47 CD         [24] 1610 	ljmp	00209$
      003346                       1611 00550$:
      003346 A8 08            [24] 1612 	mov	r0,_bp
      003348 08               [12] 1613 	inc	r0
      003349 B6 7E 03         [24] 1614 	cjne	@r0,#0x7e,00551$
      00334C 02 4E F7         [24] 1615 	ljmp	00244$
      00334F                       1616 00551$:
      00334F 02 4F B9         [24] 1617 	ljmp	00248$
                                   1618 ;	calc.c:87: case 'v':
      003352                       1619 00101$:
                                   1620 ;	calc.c:88: printstr("\r\n");
      003352 90 7E D1         [24] 1621 	mov	dptr,#___str_3
      003355 75 F0 80         [24] 1622 	mov	b,#0x80
      003358 12 5F 35         [24] 1623 	lcall	_printstr
                                   1624 ;	calc.c:89: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      00335B E5 08            [12] 1625 	mov	a,_bp
      00335D 24 1A            [12] 1626 	add	a,#0x1a
      00335F FF               [12] 1627 	mov	r7,a
      003360 7E 00            [12] 1628 	mov	r6,#0x00
      003362 7D 40            [12] 1629 	mov	r5,#0x40
      003364 E5 08            [12] 1630 	mov	a,_bp
      003366 24 17            [12] 1631 	add	a,#0x17
      003368 F8               [12] 1632 	mov	r0,a
      003369 74 11            [12] 1633 	mov	a,#0x11
      00336B 26               [12] 1634 	add	a,@r0
      00336C FA               [12] 1635 	mov	r2,a
      00336D ED               [12] 1636 	mov	a,r5
      00336E 08               [12] 1637 	inc	r0
      00336F 36               [12] 1638 	addc	a,@r0
      003370 FB               [12] 1639 	mov	r3,a
      003371 08               [12] 1640 	inc	r0
      003372 86 04            [24] 1641 	mov	ar4,@r0
      003374 8A 82            [24] 1642 	mov	dpl,r2
      003376 8B 83            [24] 1643 	mov	dph,r3
      003378 8C F0            [24] 1644 	mov	b,r4
      00337A 12 66 39         [24] 1645 	lcall	__gptrget
      00337D FA               [12] 1646 	mov	r2,a
      00337E A3               [24] 1647 	inc	dptr
      00337F 12 66 39         [24] 1648 	lcall	__gptrget
      003382 FB               [12] 1649 	mov	r3,a
      003383 A3               [24] 1650 	inc	dptr
      003384 12 66 39         [24] 1651 	lcall	__gptrget
      003387 FC               [12] 1652 	mov	r4,a
      003388 C0 07            [24] 1653 	push	ar7
      00338A C0 06            [24] 1654 	push	ar6
      00338C C0 05            [24] 1655 	push	ar5
      00338E 8A 82            [24] 1656 	mov	dpl,r2
      003390 8B 83            [24] 1657 	mov	dph,r3
      003392 8C F0            [24] 1658 	mov	b,r4
      003394 12 28 9E         [24] 1659 	lcall	_stack_peek
      003397 AB 82            [24] 1660 	mov	r3,dpl
      003399 AC 83            [24] 1661 	mov	r4,dph
      00339B 15 81            [12] 1662 	dec	sp
      00339D 15 81            [12] 1663 	dec	sp
      00339F 15 81            [12] 1664 	dec	sp
      0033A1 EB               [12] 1665 	mov	a,r3
      0033A2 4C               [12] 1666 	orl	a,r4
      0033A3 70 0C            [24] 1667 	jnz	00103$
      0033A5 90 7E D4         [24] 1668 	mov	dptr,#___str_4
      0033A8 75 F0 80         [24] 1669 	mov	b,#0x80
      0033AB 12 5F 35         [24] 1670 	lcall	_printstr
      0033AE 02 4F BE         [24] 1671 	ljmp	00249$
      0033B1                       1672 00103$:
                                   1673 ;	calc.c:91: printstr("PSVTOP\t");
      0033B1 90 7E F8         [24] 1674 	mov	dptr,#___str_8
      0033B4 75 F0 80         [24] 1675 	mov	b,#0x80
      0033B7 12 5F 35         [24] 1676 	lcall	_printstr
                                   1677 ;	calc.c:92: printall(d0);
      0033BA E5 08            [12] 1678 	mov	a,_bp
      0033BC 24 1A            [12] 1679 	add	a,#0x1a
      0033BE F8               [12] 1680 	mov	r0,a
      0033BF 86 07            [24] 1681 	mov	ar7,@r0
      0033C1 08               [12] 1682 	inc	r0
      0033C2 86 06            [24] 1683 	mov	ar6,@r0
      0033C4 08               [12] 1684 	inc	r0
      0033C5 86 05            [24] 1685 	mov	ar5,@r0
      0033C7 08               [12] 1686 	inc	r0
      0033C8 86 04            [24] 1687 	mov	ar4,@r0
      0033CA E5 08            [12] 1688 	mov	a,_bp
      0033CC 24 22            [12] 1689 	add	a,#0x22
      0033CE F8               [12] 1690 	mov	r0,a
      0033CF A6 07            [24] 1691 	mov	@r0,ar7
      0033D1 08               [12] 1692 	inc	r0
      0033D2 A6 06            [24] 1693 	mov	@r0,ar6
      0033D4 08               [12] 1694 	inc	r0
      0033D5 A6 05            [24] 1695 	mov	@r0,ar5
      0033D7 08               [12] 1696 	inc	r0
      0033D8 A6 04            [24] 1697 	mov	@r0,ar4
                                   1698 ;	calc.c:18: printf("%08lx\t", d);
      0033DA C0 07            [24] 1699 	push	ar7
      0033DC C0 06            [24] 1700 	push	ar6
      0033DE C0 05            [24] 1701 	push	ar5
      0033E0 C0 04            [24] 1702 	push	ar4
      0033E2 74 BA            [12] 1703 	mov	a,#___str_0
      0033E4 C0 E0            [24] 1704 	push	acc
      0033E6 74 7E            [12] 1705 	mov	a,#(___str_0 >> 8)
      0033E8 C0 E0            [24] 1706 	push	acc
      0033EA 74 80            [12] 1707 	mov	a,#0x80
      0033EC C0 E0            [24] 1708 	push	acc
      0033EE 12 66 00         [24] 1709 	lcall	_printf
      0033F1 E5 81            [12] 1710 	mov	a,sp
      0033F3 24 F9            [12] 1711 	add	a,#0xf9
      0033F5 F5 81            [12] 1712 	mov	sp,a
                                   1713 ;	calc.c:19: printf("% 11ld\t", d);
      0033F7 E5 08            [12] 1714 	mov	a,_bp
      0033F9 24 22            [12] 1715 	add	a,#0x22
      0033FB F8               [12] 1716 	mov	r0,a
      0033FC E6               [12] 1717 	mov	a,@r0
      0033FD C0 E0            [24] 1718 	push	acc
      0033FF 08               [12] 1719 	inc	r0
      003400 E6               [12] 1720 	mov	a,@r0
      003401 C0 E0            [24] 1721 	push	acc
      003403 08               [12] 1722 	inc	r0
      003404 E6               [12] 1723 	mov	a,@r0
      003405 C0 E0            [24] 1724 	push	acc
      003407 08               [12] 1725 	inc	r0
      003408 E6               [12] 1726 	mov	a,@r0
      003409 C0 E0            [24] 1727 	push	acc
      00340B 74 C1            [12] 1728 	mov	a,#___str_1
      00340D C0 E0            [24] 1729 	push	acc
      00340F 74 7E            [12] 1730 	mov	a,#(___str_1 >> 8)
      003411 C0 E0            [24] 1731 	push	acc
      003413 74 80            [12] 1732 	mov	a,#0x80
      003415 C0 E0            [24] 1733 	push	acc
      003417 12 66 00         [24] 1734 	lcall	_printf
      00341A E5 81            [12] 1735 	mov	a,sp
      00341C 24 F9            [12] 1736 	add	a,#0xf9
      00341E F5 81            [12] 1737 	mov	sp,a
                                   1738 ;	calc.c:20: printf("%011lo\t", d);
      003420 E5 08            [12] 1739 	mov	a,_bp
      003422 24 22            [12] 1740 	add	a,#0x22
      003424 F8               [12] 1741 	mov	r0,a
      003425 E6               [12] 1742 	mov	a,@r0
      003426 C0 E0            [24] 1743 	push	acc
      003428 08               [12] 1744 	inc	r0
      003429 E6               [12] 1745 	mov	a,@r0
      00342A C0 E0            [24] 1746 	push	acc
      00342C 08               [12] 1747 	inc	r0
      00342D E6               [12] 1748 	mov	a,@r0
      00342E C0 E0            [24] 1749 	push	acc
      003430 08               [12] 1750 	inc	r0
      003431 E6               [12] 1751 	mov	a,@r0
      003432 C0 E0            [24] 1752 	push	acc
      003434 74 C9            [12] 1753 	mov	a,#___str_2
      003436 C0 E0            [24] 1754 	push	acc
      003438 74 7E            [12] 1755 	mov	a,#(___str_2 >> 8)
      00343A C0 E0            [24] 1756 	push	acc
      00343C 74 80            [12] 1757 	mov	a,#0x80
      00343E C0 E0            [24] 1758 	push	acc
      003440 12 66 00         [24] 1759 	lcall	_printf
      003443 E5 81            [12] 1760 	mov	a,sp
      003445 24 F9            [12] 1761 	add	a,#0xf9
      003447 F5 81            [12] 1762 	mov	sp,a
                                   1763 ;	calc.c:21: print32bin(d);
      003449 E5 08            [12] 1764 	mov	a,_bp
      00344B 24 22            [12] 1765 	add	a,#0x22
      00344D F8               [12] 1766 	mov	r0,a
      00344E 86 82            [24] 1767 	mov	dpl,@r0
      003450 08               [12] 1768 	inc	r0
      003451 86 83            [24] 1769 	mov	dph,@r0
      003453 08               [12] 1770 	inc	r0
      003454 86 F0            [24] 1771 	mov	b,@r0
      003456 08               [12] 1772 	inc	r0
      003457 E6               [12] 1773 	mov	a,@r0
      003458 12 5F A4         [24] 1774 	lcall	_print32bin
                                   1775 ;	calc.c:93: printstr("\r\n");
      00345B 90 7E D1         [24] 1776 	mov	dptr,#___str_3
      00345E 75 F0 80         [24] 1777 	mov	b,#0x80
      003461 12 5F 35         [24] 1778 	lcall	_printstr
                                   1779 ;	calc.c:95: break;
      003464 02 4F BE         [24] 1780 	ljmp	00249$
                                   1781 ;	calc.c:96: case 'V':
      003467                       1782 00105$:
                                   1783 ;	calc.c:97: printstr("\r\n");
      003467 90 7E D1         [24] 1784 	mov	dptr,#___str_3
      00346A 75 F0 80         [24] 1785 	mov	b,#0x80
      00346D 12 5F 35         [24] 1786 	lcall	_printstr
                                   1787 ;	calc.c:98: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      003470 E5 08            [12] 1788 	mov	a,_bp
      003472 24 17            [12] 1789 	add	a,#0x17
      003474 F8               [12] 1790 	mov	r0,a
      003475 86 07            [24] 1791 	mov	ar7,@r0
      003477 08               [12] 1792 	inc	r0
      003478 86 06            [24] 1793 	mov	ar6,@r0
      00347A 08               [12] 1794 	inc	r0
      00347B 86 05            [24] 1795 	mov	ar5,@r0
      00347D E5 08            [12] 1796 	mov	a,_bp
      00347F 24 17            [12] 1797 	add	a,#0x17
      003481 F8               [12] 1798 	mov	r0,a
      003482 74 11            [12] 1799 	mov	a,#0x11
      003484 26               [12] 1800 	add	a,@r0
      003485 FA               [12] 1801 	mov	r2,a
      003486 74 40            [12] 1802 	mov	a,#0x40
      003488 08               [12] 1803 	inc	r0
      003489 36               [12] 1804 	addc	a,@r0
      00348A FB               [12] 1805 	mov	r3,a
      00348B 08               [12] 1806 	inc	r0
      00348C 86 04            [24] 1807 	mov	ar4,@r0
      00348E 8A 82            [24] 1808 	mov	dpl,r2
      003490 8B 83            [24] 1809 	mov	dph,r3
      003492 8C F0            [24] 1810 	mov	b,r4
      003494 12 66 39         [24] 1811 	lcall	__gptrget
      003497 FA               [12] 1812 	mov	r2,a
      003498 A3               [24] 1813 	inc	dptr
      003499 12 66 39         [24] 1814 	lcall	__gptrget
      00349C FB               [12] 1815 	mov	r3,a
      00349D A3               [24] 1816 	inc	dptr
      00349E 12 66 39         [24] 1817 	lcall	__gptrget
      0034A1 FC               [12] 1818 	mov	r4,a
      0034A2 C0 07            [24] 1819 	push	ar7
      0034A4 C0 06            [24] 1820 	push	ar6
      0034A6 C0 05            [24] 1821 	push	ar5
      0034A8 74 6E            [12] 1822 	mov	a,#_dump_peek
      0034AA C0 E0            [24] 1823 	push	acc
      0034AC 74 31            [12] 1824 	mov	a,#(_dump_peek >> 8)
      0034AE C0 E0            [24] 1825 	push	acc
      0034B0 8A 82            [24] 1826 	mov	dpl,r2
      0034B2 8B 83            [24] 1827 	mov	dph,r3
      0034B4 8C F0            [24] 1828 	mov	b,r4
      0034B6 12 2A D1         [24] 1829 	lcall	_stack_iter_peek
      0034B9 AB 82            [24] 1830 	mov	r3,dpl
      0034BB AC 83            [24] 1831 	mov	r4,dph
      0034BD E5 81            [12] 1832 	mov	a,sp
      0034BF 24 FB            [12] 1833 	add	a,#0xfb
      0034C1 F5 81            [12] 1834 	mov	sp,a
      0034C3 EB               [12] 1835 	mov	a,r3
      0034C4 4C               [12] 1836 	orl	a,r4
      0034C5 60 03            [24] 1837 	jz	00553$
      0034C7 02 4F BE         [24] 1838 	ljmp	00249$
      0034CA                       1839 00553$:
      0034CA 90 7E D4         [24] 1840 	mov	dptr,#___str_4
      0034CD 75 F0 80         [24] 1841 	mov	b,#0x80
      0034D0 12 5F 35         [24] 1842 	lcall	_printstr
                                   1843 ;	calc.c:99: break;
      0034D3 02 4F BE         [24] 1844 	ljmp	00249$
                                   1845 ;	calc.c:101: case 'p':
      0034D6                       1846 00109$:
                                   1847 ;	calc.c:102: printstr("\r\n");
      0034D6 90 7E D1         [24] 1848 	mov	dptr,#___str_3
      0034D9 75 F0 80         [24] 1849 	mov	b,#0x80
      0034DC 12 5F 35         [24] 1850 	lcall	_printstr
                                   1851 ;	calc.c:103: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0034DF E5 08            [12] 1852 	mov	a,_bp
      0034E1 24 1A            [12] 1853 	add	a,#0x1a
      0034E3 FF               [12] 1854 	mov	r7,a
      0034E4 7E 00            [12] 1855 	mov	r6,#0x00
      0034E6 7D 40            [12] 1856 	mov	r5,#0x40
      0034E8 E5 08            [12] 1857 	mov	a,_bp
      0034EA 24 17            [12] 1858 	add	a,#0x17
      0034EC F8               [12] 1859 	mov	r0,a
      0034ED 74 11            [12] 1860 	mov	a,#0x11
      0034EF 26               [12] 1861 	add	a,@r0
      0034F0 FA               [12] 1862 	mov	r2,a
      0034F1 ED               [12] 1863 	mov	a,r5
      0034F2 08               [12] 1864 	inc	r0
      0034F3 36               [12] 1865 	addc	a,@r0
      0034F4 FB               [12] 1866 	mov	r3,a
      0034F5 08               [12] 1867 	inc	r0
      0034F6 86 04            [24] 1868 	mov	ar4,@r0
      0034F8 8A 82            [24] 1869 	mov	dpl,r2
      0034FA 8B 83            [24] 1870 	mov	dph,r3
      0034FC 8C F0            [24] 1871 	mov	b,r4
      0034FE 12 66 39         [24] 1872 	lcall	__gptrget
      003501 FA               [12] 1873 	mov	r2,a
      003502 A3               [24] 1874 	inc	dptr
      003503 12 66 39         [24] 1875 	lcall	__gptrget
      003506 FB               [12] 1876 	mov	r3,a
      003507 A3               [24] 1877 	inc	dptr
      003508 12 66 39         [24] 1878 	lcall	__gptrget
      00350B FC               [12] 1879 	mov	r4,a
      00350C C0 07            [24] 1880 	push	ar7
      00350E C0 06            [24] 1881 	push	ar6
      003510 C0 05            [24] 1882 	push	ar5
      003512 8A 82            [24] 1883 	mov	dpl,r2
      003514 8B 83            [24] 1884 	mov	dph,r3
      003516 8C F0            [24] 1885 	mov	b,r4
      003518 12 27 C3         [24] 1886 	lcall	_stack_pop
      00351B AB 82            [24] 1887 	mov	r3,dpl
      00351D AC 83            [24] 1888 	mov	r4,dph
      00351F 15 81            [12] 1889 	dec	sp
      003521 15 81            [12] 1890 	dec	sp
      003523 15 81            [12] 1891 	dec	sp
      003525 EB               [12] 1892 	mov	a,r3
      003526 4C               [12] 1893 	orl	a,r4
      003527 70 0C            [24] 1894 	jnz	00111$
      003529 90 7E D4         [24] 1895 	mov	dptr,#___str_4
      00352C 75 F0 80         [24] 1896 	mov	b,#0x80
      00352F 12 5F 35         [24] 1897 	lcall	_printstr
      003532 02 4F BE         [24] 1898 	ljmp	00249$
      003535                       1899 00111$:
                                   1900 ;	calc.c:105: printstr("PSPTOP\t");
      003535 90 7F 00         [24] 1901 	mov	dptr,#___str_9
      003538 75 F0 80         [24] 1902 	mov	b,#0x80
      00353B 12 5F 35         [24] 1903 	lcall	_printstr
                                   1904 ;	calc.c:106: printall(d0);
      00353E E5 08            [12] 1905 	mov	a,_bp
      003540 24 1A            [12] 1906 	add	a,#0x1a
      003542 F8               [12] 1907 	mov	r0,a
      003543 86 07            [24] 1908 	mov	ar7,@r0
      003545 08               [12] 1909 	inc	r0
      003546 86 06            [24] 1910 	mov	ar6,@r0
      003548 08               [12] 1911 	inc	r0
      003549 86 05            [24] 1912 	mov	ar5,@r0
      00354B 08               [12] 1913 	inc	r0
      00354C 86 04            [24] 1914 	mov	ar4,@r0
      00354E E5 08            [12] 1915 	mov	a,_bp
      003550 24 22            [12] 1916 	add	a,#0x22
      003552 F8               [12] 1917 	mov	r0,a
      003553 A6 07            [24] 1918 	mov	@r0,ar7
      003555 08               [12] 1919 	inc	r0
      003556 A6 06            [24] 1920 	mov	@r0,ar6
      003558 08               [12] 1921 	inc	r0
      003559 A6 05            [24] 1922 	mov	@r0,ar5
      00355B 08               [12] 1923 	inc	r0
      00355C A6 04            [24] 1924 	mov	@r0,ar4
                                   1925 ;	calc.c:18: printf("%08lx\t", d);
      00355E C0 07            [24] 1926 	push	ar7
      003560 C0 06            [24] 1927 	push	ar6
      003562 C0 05            [24] 1928 	push	ar5
      003564 C0 04            [24] 1929 	push	ar4
      003566 74 BA            [12] 1930 	mov	a,#___str_0
      003568 C0 E0            [24] 1931 	push	acc
      00356A 74 7E            [12] 1932 	mov	a,#(___str_0 >> 8)
      00356C C0 E0            [24] 1933 	push	acc
      00356E 74 80            [12] 1934 	mov	a,#0x80
      003570 C0 E0            [24] 1935 	push	acc
      003572 12 66 00         [24] 1936 	lcall	_printf
      003575 E5 81            [12] 1937 	mov	a,sp
      003577 24 F9            [12] 1938 	add	a,#0xf9
      003579 F5 81            [12] 1939 	mov	sp,a
                                   1940 ;	calc.c:19: printf("% 11ld\t", d);
      00357B E5 08            [12] 1941 	mov	a,_bp
      00357D 24 22            [12] 1942 	add	a,#0x22
      00357F F8               [12] 1943 	mov	r0,a
      003580 E6               [12] 1944 	mov	a,@r0
      003581 C0 E0            [24] 1945 	push	acc
      003583 08               [12] 1946 	inc	r0
      003584 E6               [12] 1947 	mov	a,@r0
      003585 C0 E0            [24] 1948 	push	acc
      003587 08               [12] 1949 	inc	r0
      003588 E6               [12] 1950 	mov	a,@r0
      003589 C0 E0            [24] 1951 	push	acc
      00358B 08               [12] 1952 	inc	r0
      00358C E6               [12] 1953 	mov	a,@r0
      00358D C0 E0            [24] 1954 	push	acc
      00358F 74 C1            [12] 1955 	mov	a,#___str_1
      003591 C0 E0            [24] 1956 	push	acc
      003593 74 7E            [12] 1957 	mov	a,#(___str_1 >> 8)
      003595 C0 E0            [24] 1958 	push	acc
      003597 74 80            [12] 1959 	mov	a,#0x80
      003599 C0 E0            [24] 1960 	push	acc
      00359B 12 66 00         [24] 1961 	lcall	_printf
      00359E E5 81            [12] 1962 	mov	a,sp
      0035A0 24 F9            [12] 1963 	add	a,#0xf9
      0035A2 F5 81            [12] 1964 	mov	sp,a
                                   1965 ;	calc.c:20: printf("%011lo\t", d);
      0035A4 E5 08            [12] 1966 	mov	a,_bp
      0035A6 24 22            [12] 1967 	add	a,#0x22
      0035A8 F8               [12] 1968 	mov	r0,a
      0035A9 E6               [12] 1969 	mov	a,@r0
      0035AA C0 E0            [24] 1970 	push	acc
      0035AC 08               [12] 1971 	inc	r0
      0035AD E6               [12] 1972 	mov	a,@r0
      0035AE C0 E0            [24] 1973 	push	acc
      0035B0 08               [12] 1974 	inc	r0
      0035B1 E6               [12] 1975 	mov	a,@r0
      0035B2 C0 E0            [24] 1976 	push	acc
      0035B4 08               [12] 1977 	inc	r0
      0035B5 E6               [12] 1978 	mov	a,@r0
      0035B6 C0 E0            [24] 1979 	push	acc
      0035B8 74 C9            [12] 1980 	mov	a,#___str_2
      0035BA C0 E0            [24] 1981 	push	acc
      0035BC 74 7E            [12] 1982 	mov	a,#(___str_2 >> 8)
      0035BE C0 E0            [24] 1983 	push	acc
      0035C0 74 80            [12] 1984 	mov	a,#0x80
      0035C2 C0 E0            [24] 1985 	push	acc
      0035C4 12 66 00         [24] 1986 	lcall	_printf
      0035C7 E5 81            [12] 1987 	mov	a,sp
      0035C9 24 F9            [12] 1988 	add	a,#0xf9
      0035CB F5 81            [12] 1989 	mov	sp,a
                                   1990 ;	calc.c:21: print32bin(d);
      0035CD E5 08            [12] 1991 	mov	a,_bp
      0035CF 24 22            [12] 1992 	add	a,#0x22
      0035D1 F8               [12] 1993 	mov	r0,a
      0035D2 86 82            [24] 1994 	mov	dpl,@r0
      0035D4 08               [12] 1995 	inc	r0
      0035D5 86 83            [24] 1996 	mov	dph,@r0
      0035D7 08               [12] 1997 	inc	r0
      0035D8 86 F0            [24] 1998 	mov	b,@r0
      0035DA 08               [12] 1999 	inc	r0
      0035DB E6               [12] 2000 	mov	a,@r0
      0035DC 12 5F A4         [24] 2001 	lcall	_print32bin
                                   2002 ;	calc.c:107: printstr("\r\n");
      0035DF 90 7E D1         [24] 2003 	mov	dptr,#___str_3
      0035E2 75 F0 80         [24] 2004 	mov	b,#0x80
      0035E5 12 5F 35         [24] 2005 	lcall	_printstr
                                   2006 ;	calc.c:109: break;
      0035E8 02 4F BE         [24] 2007 	ljmp	00249$
                                   2008 ;	calc.c:110: case 'P':
      0035EB                       2009 00113$:
                                   2010 ;	calc.c:111: printstr("\r\n");
      0035EB 90 7E D1         [24] 2011 	mov	dptr,#___str_3
      0035EE 75 F0 80         [24] 2012 	mov	b,#0x80
      0035F1 C0 04            [24] 2013 	push	ar4
      0035F3 C0 03            [24] 2014 	push	ar3
      0035F5 C0 02            [24] 2015 	push	ar2
      0035F7 12 5F 35         [24] 2016 	lcall	_printstr
      0035FA D0 02            [24] 2017 	pop	ar2
      0035FC D0 03            [24] 2018 	pop	ar3
      0035FE D0 04            [24] 2019 	pop	ar4
                                   2020 ;	calc.c:112: (void)dump_pop(_ctx, delta);
      003600 E5 08            [12] 2021 	mov	a,_bp
      003602 24 FB            [12] 2022 	add	a,#0xfb
      003604 F8               [12] 2023 	mov	r0,a
      003605 E6               [12] 2024 	mov	a,@r0
      003606 C0 E0            [24] 2025 	push	acc
      003608 08               [12] 2026 	inc	r0
      003609 E6               [12] 2027 	mov	a,@r0
      00360A C0 E0            [24] 2028 	push	acc
      00360C 08               [12] 2029 	inc	r0
      00360D E6               [12] 2030 	mov	a,@r0
      00360E C0 E0            [24] 2031 	push	acc
      003610 8A 82            [24] 2032 	mov	dpl,r2
      003612 8B 83            [24] 2033 	mov	dph,r3
      003614 8C F0            [24] 2034 	mov	b,r4
      003616 12 2D 21         [24] 2035 	lcall	_dump_pop
      003619 15 81            [12] 2036 	dec	sp
      00361B 15 81            [12] 2037 	dec	sp
      00361D 15 81            [12] 2038 	dec	sp
                                   2039 ;	calc.c:113: break;
      00361F 02 4F BE         [24] 2040 	ljmp	00249$
                                   2041 ;	calc.c:114: case 'x':
      003622                       2042 00114$:
                                   2043 ;	calc.c:115: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003622 E5 08            [12] 2044 	mov	a,_bp
      003624 24 1A            [12] 2045 	add	a,#0x1a
      003626 FF               [12] 2046 	mov	r7,a
      003627 7E 00            [12] 2047 	mov	r6,#0x00
      003629 7D 40            [12] 2048 	mov	r5,#0x40
      00362B E5 08            [12] 2049 	mov	a,_bp
      00362D 24 17            [12] 2050 	add	a,#0x17
      00362F F8               [12] 2051 	mov	r0,a
      003630 A9 08            [24] 2052 	mov	r1,_bp
      003632 09               [12] 2053 	inc	r1
      003633 09               [12] 2054 	inc	r1
      003634 74 11            [12] 2055 	mov	a,#0x11
      003636 26               [12] 2056 	add	a,@r0
      003637 F7               [12] 2057 	mov	@r1,a
      003638 74 40            [12] 2058 	mov	a,#0x40
      00363A 08               [12] 2059 	inc	r0
      00363B 36               [12] 2060 	addc	a,@r0
      00363C 09               [12] 2061 	inc	r1
      00363D F7               [12] 2062 	mov	@r1,a
      00363E 08               [12] 2063 	inc	r0
      00363F 09               [12] 2064 	inc	r1
      003640 E6               [12] 2065 	mov	a,@r0
      003641 F7               [12] 2066 	mov	@r1,a
      003642 A8 08            [24] 2067 	mov	r0,_bp
      003644 08               [12] 2068 	inc	r0
      003645 08               [12] 2069 	inc	r0
      003646 86 82            [24] 2070 	mov	dpl,@r0
      003648 08               [12] 2071 	inc	r0
      003649 86 83            [24] 2072 	mov	dph,@r0
      00364B 08               [12] 2073 	inc	r0
      00364C 86 F0            [24] 2074 	mov	b,@r0
      00364E 12 66 39         [24] 2075 	lcall	__gptrget
      003651 FA               [12] 2076 	mov	r2,a
      003652 A3               [24] 2077 	inc	dptr
      003653 12 66 39         [24] 2078 	lcall	__gptrget
      003656 FB               [12] 2079 	mov	r3,a
      003657 A3               [24] 2080 	inc	dptr
      003658 12 66 39         [24] 2081 	lcall	__gptrget
      00365B FC               [12] 2082 	mov	r4,a
      00365C C0 07            [24] 2083 	push	ar7
      00365E C0 06            [24] 2084 	push	ar6
      003660 C0 05            [24] 2085 	push	ar5
      003662 8A 82            [24] 2086 	mov	dpl,r2
      003664 8B 83            [24] 2087 	mov	dph,r3
      003666 8C F0            [24] 2088 	mov	b,r4
      003668 12 27 C3         [24] 2089 	lcall	_stack_pop
      00366B AB 82            [24] 2090 	mov	r3,dpl
      00366D AC 83            [24] 2091 	mov	r4,dph
      00366F 15 81            [12] 2092 	dec	sp
      003671 15 81            [12] 2093 	dec	sp
      003673 15 81            [12] 2094 	dec	sp
      003675 EB               [12] 2095 	mov	a,r3
      003676 4C               [12] 2096 	orl	a,r4
      003677 70 0C            [24] 2097 	jnz	00119$
      003679 90 7F 08         [24] 2098 	mov	dptr,#___str_10
      00367C 75 F0 80         [24] 2099 	mov	b,#0x80
      00367F 12 5F 35         [24] 2100 	lcall	_printstr
      003682 02 4F BE         [24] 2101 	ljmp	00249$
      003685                       2102 00119$:
                                   2103 ;	calc.c:116: else if (!stack_pop(ctx->ps, &d1)) {
      003685 E5 08            [12] 2104 	mov	a,_bp
      003687 24 1E            [12] 2105 	add	a,#0x1e
      003689 FF               [12] 2106 	mov	r7,a
      00368A 7E 00            [12] 2107 	mov	r6,#0x00
      00368C 7D 40            [12] 2108 	mov	r5,#0x40
      00368E A8 08            [24] 2109 	mov	r0,_bp
      003690 08               [12] 2110 	inc	r0
      003691 08               [12] 2111 	inc	r0
      003692 86 82            [24] 2112 	mov	dpl,@r0
      003694 08               [12] 2113 	inc	r0
      003695 86 83            [24] 2114 	mov	dph,@r0
      003697 08               [12] 2115 	inc	r0
      003698 86 F0            [24] 2116 	mov	b,@r0
      00369A 12 66 39         [24] 2117 	lcall	__gptrget
      00369D FA               [12] 2118 	mov	r2,a
      00369E A3               [24] 2119 	inc	dptr
      00369F 12 66 39         [24] 2120 	lcall	__gptrget
      0036A2 FB               [12] 2121 	mov	r3,a
      0036A3 A3               [24] 2122 	inc	dptr
      0036A4 12 66 39         [24] 2123 	lcall	__gptrget
      0036A7 FC               [12] 2124 	mov	r4,a
      0036A8 C0 07            [24] 2125 	push	ar7
      0036AA C0 06            [24] 2126 	push	ar6
      0036AC C0 05            [24] 2127 	push	ar5
      0036AE 8A 82            [24] 2128 	mov	dpl,r2
      0036B0 8B 83            [24] 2129 	mov	dph,r3
      0036B2 8C F0            [24] 2130 	mov	b,r4
      0036B4 12 27 C3         [24] 2131 	lcall	_stack_pop
      0036B7 AB 82            [24] 2132 	mov	r3,dpl
      0036B9 AC 83            [24] 2133 	mov	r4,dph
      0036BB 15 81            [12] 2134 	dec	sp
      0036BD 15 81            [12] 2135 	dec	sp
      0036BF 15 81            [12] 2136 	dec	sp
      0036C1 EB               [12] 2137 	mov	a,r3
      0036C2 4C               [12] 2138 	orl	a,r4
      0036C3 70 49            [24] 2139 	jnz	00116$
                                   2140 ;	calc.c:117: (void)stack_push(ctx->ps, d0);
      0036C5 A8 08            [24] 2141 	mov	r0,_bp
      0036C7 08               [12] 2142 	inc	r0
      0036C8 08               [12] 2143 	inc	r0
      0036C9 86 82            [24] 2144 	mov	dpl,@r0
      0036CB 08               [12] 2145 	inc	r0
      0036CC 86 83            [24] 2146 	mov	dph,@r0
      0036CE 08               [12] 2147 	inc	r0
      0036CF 86 F0            [24] 2148 	mov	b,@r0
      0036D1 12 66 39         [24] 2149 	lcall	__gptrget
      0036D4 FA               [12] 2150 	mov	r2,a
      0036D5 A3               [24] 2151 	inc	dptr
      0036D6 12 66 39         [24] 2152 	lcall	__gptrget
      0036D9 FB               [12] 2153 	mov	r3,a
      0036DA A3               [24] 2154 	inc	dptr
      0036DB 12 66 39         [24] 2155 	lcall	__gptrget
      0036DE FC               [12] 2156 	mov	r4,a
      0036DF E5 08            [12] 2157 	mov	a,_bp
      0036E1 24 1A            [12] 2158 	add	a,#0x1a
      0036E3 F8               [12] 2159 	mov	r0,a
      0036E4 E6               [12] 2160 	mov	a,@r0
      0036E5 C0 E0            [24] 2161 	push	acc
      0036E7 08               [12] 2162 	inc	r0
      0036E8 E6               [12] 2163 	mov	a,@r0
      0036E9 C0 E0            [24] 2164 	push	acc
      0036EB 08               [12] 2165 	inc	r0
      0036EC E6               [12] 2166 	mov	a,@r0
      0036ED C0 E0            [24] 2167 	push	acc
      0036EF 08               [12] 2168 	inc	r0
      0036F0 E6               [12] 2169 	mov	a,@r0
      0036F1 C0 E0            [24] 2170 	push	acc
      0036F3 8A 82            [24] 2171 	mov	dpl,r2
      0036F5 8B 83            [24] 2172 	mov	dph,r3
      0036F7 8C F0            [24] 2173 	mov	b,r4
      0036F9 12 26 F5         [24] 2174 	lcall	_stack_push
      0036FC E5 81            [12] 2175 	mov	a,sp
      0036FE 24 FC            [12] 2176 	add	a,#0xfc
      003700 F5 81            [12] 2177 	mov	sp,a
                                   2178 ;	calc.c:118: printstr("\r\nstack underflow\r\n");
      003702 90 7F 08         [24] 2179 	mov	dptr,#___str_10
      003705 75 F0 80         [24] 2180 	mov	b,#0x80
      003708 12 5F 35         [24] 2181 	lcall	_printstr
      00370B 02 4F BE         [24] 2182 	ljmp	00249$
      00370E                       2183 00116$:
                                   2184 ;	calc.c:120: (void)stack_push(ctx->ps, d0);
      00370E A8 08            [24] 2185 	mov	r0,_bp
      003710 08               [12] 2186 	inc	r0
      003711 08               [12] 2187 	inc	r0
      003712 86 82            [24] 2188 	mov	dpl,@r0
      003714 08               [12] 2189 	inc	r0
      003715 86 83            [24] 2190 	mov	dph,@r0
      003717 08               [12] 2191 	inc	r0
      003718 86 F0            [24] 2192 	mov	b,@r0
      00371A 12 66 39         [24] 2193 	lcall	__gptrget
      00371D FA               [12] 2194 	mov	r2,a
      00371E A3               [24] 2195 	inc	dptr
      00371F 12 66 39         [24] 2196 	lcall	__gptrget
      003722 FB               [12] 2197 	mov	r3,a
      003723 A3               [24] 2198 	inc	dptr
      003724 12 66 39         [24] 2199 	lcall	__gptrget
      003727 FC               [12] 2200 	mov	r4,a
      003728 E5 08            [12] 2201 	mov	a,_bp
      00372A 24 1A            [12] 2202 	add	a,#0x1a
      00372C F8               [12] 2203 	mov	r0,a
      00372D E6               [12] 2204 	mov	a,@r0
      00372E C0 E0            [24] 2205 	push	acc
      003730 08               [12] 2206 	inc	r0
      003731 E6               [12] 2207 	mov	a,@r0
      003732 C0 E0            [24] 2208 	push	acc
      003734 08               [12] 2209 	inc	r0
      003735 E6               [12] 2210 	mov	a,@r0
      003736 C0 E0            [24] 2211 	push	acc
      003738 08               [12] 2212 	inc	r0
      003739 E6               [12] 2213 	mov	a,@r0
      00373A C0 E0            [24] 2214 	push	acc
      00373C 8A 82            [24] 2215 	mov	dpl,r2
      00373E 8B 83            [24] 2216 	mov	dph,r3
      003740 8C F0            [24] 2217 	mov	b,r4
      003742 12 26 F5         [24] 2218 	lcall	_stack_push
      003745 E5 81            [12] 2219 	mov	a,sp
      003747 24 FC            [12] 2220 	add	a,#0xfc
      003749 F5 81            [12] 2221 	mov	sp,a
                                   2222 ;	calc.c:121: (void)stack_push(ctx->ps, d1);
      00374B A8 08            [24] 2223 	mov	r0,_bp
      00374D 08               [12] 2224 	inc	r0
      00374E 08               [12] 2225 	inc	r0
      00374F 86 82            [24] 2226 	mov	dpl,@r0
      003751 08               [12] 2227 	inc	r0
      003752 86 83            [24] 2228 	mov	dph,@r0
      003754 08               [12] 2229 	inc	r0
      003755 86 F0            [24] 2230 	mov	b,@r0
      003757 12 66 39         [24] 2231 	lcall	__gptrget
      00375A FA               [12] 2232 	mov	r2,a
      00375B A3               [24] 2233 	inc	dptr
      00375C 12 66 39         [24] 2234 	lcall	__gptrget
      00375F FB               [12] 2235 	mov	r3,a
      003760 A3               [24] 2236 	inc	dptr
      003761 12 66 39         [24] 2237 	lcall	__gptrget
      003764 FC               [12] 2238 	mov	r4,a
      003765 E5 08            [12] 2239 	mov	a,_bp
      003767 24 1E            [12] 2240 	add	a,#0x1e
      003769 F8               [12] 2241 	mov	r0,a
      00376A E6               [12] 2242 	mov	a,@r0
      00376B C0 E0            [24] 2243 	push	acc
      00376D 08               [12] 2244 	inc	r0
      00376E E6               [12] 2245 	mov	a,@r0
      00376F C0 E0            [24] 2246 	push	acc
      003771 08               [12] 2247 	inc	r0
      003772 E6               [12] 2248 	mov	a,@r0
      003773 C0 E0            [24] 2249 	push	acc
      003775 08               [12] 2250 	inc	r0
      003776 E6               [12] 2251 	mov	a,@r0
      003777 C0 E0            [24] 2252 	push	acc
      003779 8A 82            [24] 2253 	mov	dpl,r2
      00377B 8B 83            [24] 2254 	mov	dph,r3
      00377D 8C F0            [24] 2255 	mov	b,r4
      00377F 12 26 F5         [24] 2256 	lcall	_stack_push
      003782 E5 81            [12] 2257 	mov	a,sp
      003784 24 FC            [12] 2258 	add	a,#0xfc
      003786 F5 81            [12] 2259 	mov	sp,a
                                   2260 ;	calc.c:123: break;
      003788 02 4F BE         [24] 2261 	ljmp	00249$
                                   2262 ;	calc.c:124: case 'm':
      00378B                       2263 00121$:
                                   2264 ;	calc.c:125: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00378B E5 08            [12] 2265 	mov	a,_bp
      00378D 24 1A            [12] 2266 	add	a,#0x1a
      00378F FF               [12] 2267 	mov	r7,a
      003790 7E 00            [12] 2268 	mov	r6,#0x00
      003792 7D 40            [12] 2269 	mov	r5,#0x40
      003794 E5 08            [12] 2270 	mov	a,_bp
      003796 24 17            [12] 2271 	add	a,#0x17
      003798 F8               [12] 2272 	mov	r0,a
      003799 E5 08            [12] 2273 	mov	a,_bp
      00379B 24 05            [12] 2274 	add	a,#0x05
      00379D F9               [12] 2275 	mov	r1,a
      00379E 74 11            [12] 2276 	mov	a,#0x11
      0037A0 26               [12] 2277 	add	a,@r0
      0037A1 F7               [12] 2278 	mov	@r1,a
      0037A2 74 40            [12] 2279 	mov	a,#0x40
      0037A4 08               [12] 2280 	inc	r0
      0037A5 36               [12] 2281 	addc	a,@r0
      0037A6 09               [12] 2282 	inc	r1
      0037A7 F7               [12] 2283 	mov	@r1,a
      0037A8 08               [12] 2284 	inc	r0
      0037A9 09               [12] 2285 	inc	r1
      0037AA E6               [12] 2286 	mov	a,@r0
      0037AB F7               [12] 2287 	mov	@r1,a
      0037AC E5 08            [12] 2288 	mov	a,_bp
      0037AE 24 05            [12] 2289 	add	a,#0x05
      0037B0 F8               [12] 2290 	mov	r0,a
      0037B1 86 82            [24] 2291 	mov	dpl,@r0
      0037B3 08               [12] 2292 	inc	r0
      0037B4 86 83            [24] 2293 	mov	dph,@r0
      0037B6 08               [12] 2294 	inc	r0
      0037B7 86 F0            [24] 2295 	mov	b,@r0
      0037B9 12 66 39         [24] 2296 	lcall	__gptrget
      0037BC FA               [12] 2297 	mov	r2,a
      0037BD A3               [24] 2298 	inc	dptr
      0037BE 12 66 39         [24] 2299 	lcall	__gptrget
      0037C1 FB               [12] 2300 	mov	r3,a
      0037C2 A3               [24] 2301 	inc	dptr
      0037C3 12 66 39         [24] 2302 	lcall	__gptrget
      0037C6 FC               [12] 2303 	mov	r4,a
      0037C7 C0 07            [24] 2304 	push	ar7
      0037C9 C0 06            [24] 2305 	push	ar6
      0037CB C0 05            [24] 2306 	push	ar5
      0037CD 8A 82            [24] 2307 	mov	dpl,r2
      0037CF 8B 83            [24] 2308 	mov	dph,r3
      0037D1 8C F0            [24] 2309 	mov	b,r4
      0037D3 12 27 C3         [24] 2310 	lcall	_stack_pop
      0037D6 AB 82            [24] 2311 	mov	r3,dpl
      0037D8 AC 83            [24] 2312 	mov	r4,dph
      0037DA 15 81            [12] 2313 	dec	sp
      0037DC 15 81            [12] 2314 	dec	sp
      0037DE 15 81            [12] 2315 	dec	sp
      0037E0 EB               [12] 2316 	mov	a,r3
      0037E1 4C               [12] 2317 	orl	a,r4
      0037E2 70 0C            [24] 2318 	jnz	00125$
      0037E4 90 7F 08         [24] 2319 	mov	dptr,#___str_10
      0037E7 75 F0 80         [24] 2320 	mov	b,#0x80
      0037EA 12 5F 35         [24] 2321 	lcall	_printstr
      0037ED 02 4F BE         [24] 2322 	ljmp	00249$
      0037F0                       2323 00125$:
                                   2324 ;	calc.c:127: if (!stack_push(ctx->ss, d0)) {
      0037F0 E5 08            [12] 2325 	mov	a,_bp
      0037F2 24 17            [12] 2326 	add	a,#0x17
      0037F4 F8               [12] 2327 	mov	r0,a
      0037F5 74 14            [12] 2328 	mov	a,#0x14
      0037F7 26               [12] 2329 	add	a,@r0
      0037F8 FA               [12] 2330 	mov	r2,a
      0037F9 74 40            [12] 2331 	mov	a,#0x40
      0037FB 08               [12] 2332 	inc	r0
      0037FC 36               [12] 2333 	addc	a,@r0
      0037FD FB               [12] 2334 	mov	r3,a
      0037FE 08               [12] 2335 	inc	r0
      0037FF 86 04            [24] 2336 	mov	ar4,@r0
      003801 8A 82            [24] 2337 	mov	dpl,r2
      003803 8B 83            [24] 2338 	mov	dph,r3
      003805 8C F0            [24] 2339 	mov	b,r4
      003807 12 66 39         [24] 2340 	lcall	__gptrget
      00380A FA               [12] 2341 	mov	r2,a
      00380B A3               [24] 2342 	inc	dptr
      00380C 12 66 39         [24] 2343 	lcall	__gptrget
      00380F FB               [12] 2344 	mov	r3,a
      003810 A3               [24] 2345 	inc	dptr
      003811 12 66 39         [24] 2346 	lcall	__gptrget
      003814 FC               [12] 2347 	mov	r4,a
      003815 E5 08            [12] 2348 	mov	a,_bp
      003817 24 1A            [12] 2349 	add	a,#0x1a
      003819 F8               [12] 2350 	mov	r0,a
      00381A E6               [12] 2351 	mov	a,@r0
      00381B C0 E0            [24] 2352 	push	acc
      00381D 08               [12] 2353 	inc	r0
      00381E E6               [12] 2354 	mov	a,@r0
      00381F C0 E0            [24] 2355 	push	acc
      003821 08               [12] 2356 	inc	r0
      003822 E6               [12] 2357 	mov	a,@r0
      003823 C0 E0            [24] 2358 	push	acc
      003825 08               [12] 2359 	inc	r0
      003826 E6               [12] 2360 	mov	a,@r0
      003827 C0 E0            [24] 2361 	push	acc
      003829 8A 82            [24] 2362 	mov	dpl,r2
      00382B 8B 83            [24] 2363 	mov	dph,r3
      00382D 8C F0            [24] 2364 	mov	b,r4
      00382F 12 26 F5         [24] 2365 	lcall	_stack_push
      003832 AB 82            [24] 2366 	mov	r3,dpl
      003834 AC 83            [24] 2367 	mov	r4,dph
      003836 E5 81            [12] 2368 	mov	a,sp
      003838 24 FC            [12] 2369 	add	a,#0xfc
      00383A F5 81            [12] 2370 	mov	sp,a
      00383C EB               [12] 2371 	mov	a,r3
      00383D 4C               [12] 2372 	orl	a,r4
      00383E 60 03            [24] 2373 	jz	00558$
      003840 02 4F BE         [24] 2374 	ljmp	00249$
      003843                       2375 00558$:
                                   2376 ;	calc.c:128: printstr("\r\nsecondary stack overflow\r\n");
      003843 90 7F 1C         [24] 2377 	mov	dptr,#___str_11
      003846 75 F0 80         [24] 2378 	mov	b,#0x80
      003849 12 5F 35         [24] 2379 	lcall	_printstr
                                   2380 ;	calc.c:129: (void)stack_push(ctx->ps, d0);
      00384C E5 08            [12] 2381 	mov	a,_bp
      00384E 24 05            [12] 2382 	add	a,#0x05
      003850 F8               [12] 2383 	mov	r0,a
      003851 86 82            [24] 2384 	mov	dpl,@r0
      003853 08               [12] 2385 	inc	r0
      003854 86 83            [24] 2386 	mov	dph,@r0
      003856 08               [12] 2387 	inc	r0
      003857 86 F0            [24] 2388 	mov	b,@r0
      003859 12 66 39         [24] 2389 	lcall	__gptrget
      00385C FA               [12] 2390 	mov	r2,a
      00385D A3               [24] 2391 	inc	dptr
      00385E 12 66 39         [24] 2392 	lcall	__gptrget
      003861 FB               [12] 2393 	mov	r3,a
      003862 A3               [24] 2394 	inc	dptr
      003863 12 66 39         [24] 2395 	lcall	__gptrget
      003866 FC               [12] 2396 	mov	r4,a
      003867 E5 08            [12] 2397 	mov	a,_bp
      003869 24 1A            [12] 2398 	add	a,#0x1a
      00386B F8               [12] 2399 	mov	r0,a
      00386C E6               [12] 2400 	mov	a,@r0
      00386D C0 E0            [24] 2401 	push	acc
      00386F 08               [12] 2402 	inc	r0
      003870 E6               [12] 2403 	mov	a,@r0
      003871 C0 E0            [24] 2404 	push	acc
      003873 08               [12] 2405 	inc	r0
      003874 E6               [12] 2406 	mov	a,@r0
      003875 C0 E0            [24] 2407 	push	acc
      003877 08               [12] 2408 	inc	r0
      003878 E6               [12] 2409 	mov	a,@r0
      003879 C0 E0            [24] 2410 	push	acc
      00387B 8A 82            [24] 2411 	mov	dpl,r2
      00387D 8B 83            [24] 2412 	mov	dph,r3
      00387F 8C F0            [24] 2413 	mov	b,r4
      003881 12 26 F5         [24] 2414 	lcall	_stack_push
      003884 E5 81            [12] 2415 	mov	a,sp
      003886 24 FC            [12] 2416 	add	a,#0xfc
      003888 F5 81            [12] 2417 	mov	sp,a
                                   2418 ;	calc.c:132: break;
      00388A 02 4F BE         [24] 2419 	ljmp	00249$
                                   2420 ;	calc.c:133: case 'M':
      00388D                       2421 00127$:
                                   2422 ;	calc.c:134: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      00388D E5 08            [12] 2423 	mov	a,_bp
      00388F 24 1A            [12] 2424 	add	a,#0x1a
      003891 FF               [12] 2425 	mov	r7,a
      003892 7E 00            [12] 2426 	mov	r6,#0x00
      003894 7D 40            [12] 2427 	mov	r5,#0x40
      003896 E5 08            [12] 2428 	mov	a,_bp
      003898 24 17            [12] 2429 	add	a,#0x17
      00389A F8               [12] 2430 	mov	r0,a
      00389B E5 08            [12] 2431 	mov	a,_bp
      00389D 24 05            [12] 2432 	add	a,#0x05
      00389F F9               [12] 2433 	mov	r1,a
      0038A0 74 14            [12] 2434 	mov	a,#0x14
      0038A2 26               [12] 2435 	add	a,@r0
      0038A3 F7               [12] 2436 	mov	@r1,a
      0038A4 74 40            [12] 2437 	mov	a,#0x40
      0038A6 08               [12] 2438 	inc	r0
      0038A7 36               [12] 2439 	addc	a,@r0
      0038A8 09               [12] 2440 	inc	r1
      0038A9 F7               [12] 2441 	mov	@r1,a
      0038AA 08               [12] 2442 	inc	r0
      0038AB 09               [12] 2443 	inc	r1
      0038AC E6               [12] 2444 	mov	a,@r0
      0038AD F7               [12] 2445 	mov	@r1,a
      0038AE E5 08            [12] 2446 	mov	a,_bp
      0038B0 24 05            [12] 2447 	add	a,#0x05
      0038B2 F8               [12] 2448 	mov	r0,a
      0038B3 86 82            [24] 2449 	mov	dpl,@r0
      0038B5 08               [12] 2450 	inc	r0
      0038B6 86 83            [24] 2451 	mov	dph,@r0
      0038B8 08               [12] 2452 	inc	r0
      0038B9 86 F0            [24] 2453 	mov	b,@r0
      0038BB 12 66 39         [24] 2454 	lcall	__gptrget
      0038BE FA               [12] 2455 	mov	r2,a
      0038BF A3               [24] 2456 	inc	dptr
      0038C0 12 66 39         [24] 2457 	lcall	__gptrget
      0038C3 FB               [12] 2458 	mov	r3,a
      0038C4 A3               [24] 2459 	inc	dptr
      0038C5 12 66 39         [24] 2460 	lcall	__gptrget
      0038C8 FC               [12] 2461 	mov	r4,a
      0038C9 C0 07            [24] 2462 	push	ar7
      0038CB C0 06            [24] 2463 	push	ar6
      0038CD C0 05            [24] 2464 	push	ar5
      0038CF 8A 82            [24] 2465 	mov	dpl,r2
      0038D1 8B 83            [24] 2466 	mov	dph,r3
      0038D3 8C F0            [24] 2467 	mov	b,r4
      0038D5 12 27 C3         [24] 2468 	lcall	_stack_pop
      0038D8 AB 82            [24] 2469 	mov	r3,dpl
      0038DA AC 83            [24] 2470 	mov	r4,dph
      0038DC 15 81            [12] 2471 	dec	sp
      0038DE 15 81            [12] 2472 	dec	sp
      0038E0 15 81            [12] 2473 	dec	sp
      0038E2 EB               [12] 2474 	mov	a,r3
      0038E3 4C               [12] 2475 	orl	a,r4
      0038E4 70 0C            [24] 2476 	jnz	00131$
      0038E6 90 7F 39         [24] 2477 	mov	dptr,#___str_12
      0038E9 75 F0 80         [24] 2478 	mov	b,#0x80
      0038EC 12 5F 35         [24] 2479 	lcall	_printstr
      0038EF 02 4F BE         [24] 2480 	ljmp	00249$
      0038F2                       2481 00131$:
                                   2482 ;	calc.c:136: if (!stack_push(ctx->ps, d0)) {
      0038F2 E5 08            [12] 2483 	mov	a,_bp
      0038F4 24 17            [12] 2484 	add	a,#0x17
      0038F6 F8               [12] 2485 	mov	r0,a
      0038F7 74 11            [12] 2486 	mov	a,#0x11
      0038F9 26               [12] 2487 	add	a,@r0
      0038FA FA               [12] 2488 	mov	r2,a
      0038FB 74 40            [12] 2489 	mov	a,#0x40
      0038FD 08               [12] 2490 	inc	r0
      0038FE 36               [12] 2491 	addc	a,@r0
      0038FF FB               [12] 2492 	mov	r3,a
      003900 08               [12] 2493 	inc	r0
      003901 86 04            [24] 2494 	mov	ar4,@r0
      003903 8A 82            [24] 2495 	mov	dpl,r2
      003905 8B 83            [24] 2496 	mov	dph,r3
      003907 8C F0            [24] 2497 	mov	b,r4
      003909 12 66 39         [24] 2498 	lcall	__gptrget
      00390C FA               [12] 2499 	mov	r2,a
      00390D A3               [24] 2500 	inc	dptr
      00390E 12 66 39         [24] 2501 	lcall	__gptrget
      003911 FB               [12] 2502 	mov	r3,a
      003912 A3               [24] 2503 	inc	dptr
      003913 12 66 39         [24] 2504 	lcall	__gptrget
      003916 FC               [12] 2505 	mov	r4,a
      003917 E5 08            [12] 2506 	mov	a,_bp
      003919 24 1A            [12] 2507 	add	a,#0x1a
      00391B F8               [12] 2508 	mov	r0,a
      00391C E6               [12] 2509 	mov	a,@r0
      00391D C0 E0            [24] 2510 	push	acc
      00391F 08               [12] 2511 	inc	r0
      003920 E6               [12] 2512 	mov	a,@r0
      003921 C0 E0            [24] 2513 	push	acc
      003923 08               [12] 2514 	inc	r0
      003924 E6               [12] 2515 	mov	a,@r0
      003925 C0 E0            [24] 2516 	push	acc
      003927 08               [12] 2517 	inc	r0
      003928 E6               [12] 2518 	mov	a,@r0
      003929 C0 E0            [24] 2519 	push	acc
      00392B 8A 82            [24] 2520 	mov	dpl,r2
      00392D 8B 83            [24] 2521 	mov	dph,r3
      00392F 8C F0            [24] 2522 	mov	b,r4
      003931 12 26 F5         [24] 2523 	lcall	_stack_push
      003934 AB 82            [24] 2524 	mov	r3,dpl
      003936 AC 83            [24] 2525 	mov	r4,dph
      003938 E5 81            [12] 2526 	mov	a,sp
      00393A 24 FC            [12] 2527 	add	a,#0xfc
      00393C F5 81            [12] 2528 	mov	sp,a
      00393E EB               [12] 2529 	mov	a,r3
      00393F 4C               [12] 2530 	orl	a,r4
      003940 60 03            [24] 2531 	jz	00560$
      003942 02 4F BE         [24] 2532 	ljmp	00249$
      003945                       2533 00560$:
                                   2534 ;	calc.c:137: printstr("\r\nstack overflow\r\n");
      003945 90 7F 57         [24] 2535 	mov	dptr,#___str_13
      003948 75 F0 80         [24] 2536 	mov	b,#0x80
      00394B 12 5F 35         [24] 2537 	lcall	_printstr
                                   2538 ;	calc.c:138: (void)stack_push(ctx->ss, d0);
      00394E E5 08            [12] 2539 	mov	a,_bp
      003950 24 05            [12] 2540 	add	a,#0x05
      003952 F8               [12] 2541 	mov	r0,a
      003953 86 82            [24] 2542 	mov	dpl,@r0
      003955 08               [12] 2543 	inc	r0
      003956 86 83            [24] 2544 	mov	dph,@r0
      003958 08               [12] 2545 	inc	r0
      003959 86 F0            [24] 2546 	mov	b,@r0
      00395B 12 66 39         [24] 2547 	lcall	__gptrget
      00395E FA               [12] 2548 	mov	r2,a
      00395F A3               [24] 2549 	inc	dptr
      003960 12 66 39         [24] 2550 	lcall	__gptrget
      003963 FB               [12] 2551 	mov	r3,a
      003964 A3               [24] 2552 	inc	dptr
      003965 12 66 39         [24] 2553 	lcall	__gptrget
      003968 FC               [12] 2554 	mov	r4,a
      003969 E5 08            [12] 2555 	mov	a,_bp
      00396B 24 1A            [12] 2556 	add	a,#0x1a
      00396D F8               [12] 2557 	mov	r0,a
      00396E E6               [12] 2558 	mov	a,@r0
      00396F C0 E0            [24] 2559 	push	acc
      003971 08               [12] 2560 	inc	r0
      003972 E6               [12] 2561 	mov	a,@r0
      003973 C0 E0            [24] 2562 	push	acc
      003975 08               [12] 2563 	inc	r0
      003976 E6               [12] 2564 	mov	a,@r0
      003977 C0 E0            [24] 2565 	push	acc
      003979 08               [12] 2566 	inc	r0
      00397A E6               [12] 2567 	mov	a,@r0
      00397B C0 E0            [24] 2568 	push	acc
      00397D 8A 82            [24] 2569 	mov	dpl,r2
      00397F 8B 83            [24] 2570 	mov	dph,r3
      003981 8C F0            [24] 2571 	mov	b,r4
      003983 12 26 F5         [24] 2572 	lcall	_stack_push
      003986 E5 81            [12] 2573 	mov	a,sp
      003988 24 FC            [12] 2574 	add	a,#0xfc
      00398A F5 81            [12] 2575 	mov	sp,a
                                   2576 ;	calc.c:141: break;
      00398C 02 4F BE         [24] 2577 	ljmp	00249$
                                   2578 ;	calc.c:142: case 'u':
      00398F                       2579 00133$:
                                   2580 ;	calc.c:143: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00398F E5 08            [12] 2581 	mov	a,_bp
      003991 24 1A            [12] 2582 	add	a,#0x1a
      003993 FF               [12] 2583 	mov	r7,a
      003994 7E 00            [12] 2584 	mov	r6,#0x00
      003996 7D 40            [12] 2585 	mov	r5,#0x40
      003998 E5 08            [12] 2586 	mov	a,_bp
      00399A 24 17            [12] 2587 	add	a,#0x17
      00399C F8               [12] 2588 	mov	r0,a
      00399D 74 11            [12] 2589 	mov	a,#0x11
      00399F 26               [12] 2590 	add	a,@r0
      0039A0 FA               [12] 2591 	mov	r2,a
      0039A1 ED               [12] 2592 	mov	a,r5
      0039A2 08               [12] 2593 	inc	r0
      0039A3 36               [12] 2594 	addc	a,@r0
      0039A4 FB               [12] 2595 	mov	r3,a
      0039A5 08               [12] 2596 	inc	r0
      0039A6 86 04            [24] 2597 	mov	ar4,@r0
      0039A8 8A 82            [24] 2598 	mov	dpl,r2
      0039AA 8B 83            [24] 2599 	mov	dph,r3
      0039AC 8C F0            [24] 2600 	mov	b,r4
      0039AE 12 66 39         [24] 2601 	lcall	__gptrget
      0039B1 FA               [12] 2602 	mov	r2,a
      0039B2 A3               [24] 2603 	inc	dptr
      0039B3 12 66 39         [24] 2604 	lcall	__gptrget
      0039B6 FB               [12] 2605 	mov	r3,a
      0039B7 A3               [24] 2606 	inc	dptr
      0039B8 12 66 39         [24] 2607 	lcall	__gptrget
      0039BB FC               [12] 2608 	mov	r4,a
      0039BC C0 07            [24] 2609 	push	ar7
      0039BE C0 06            [24] 2610 	push	ar6
      0039C0 C0 05            [24] 2611 	push	ar5
      0039C2 8A 82            [24] 2612 	mov	dpl,r2
      0039C4 8B 83            [24] 2613 	mov	dph,r3
      0039C6 8C F0            [24] 2614 	mov	b,r4
      0039C8 12 28 9E         [24] 2615 	lcall	_stack_peek
      0039CB AB 82            [24] 2616 	mov	r3,dpl
      0039CD AC 83            [24] 2617 	mov	r4,dph
      0039CF 15 81            [12] 2618 	dec	sp
      0039D1 15 81            [12] 2619 	dec	sp
      0039D3 15 81            [12] 2620 	dec	sp
      0039D5 EB               [12] 2621 	mov	a,r3
      0039D6 4C               [12] 2622 	orl	a,r4
      0039D7 70 0C            [24] 2623 	jnz	00137$
      0039D9 90 7F 08         [24] 2624 	mov	dptr,#___str_10
      0039DC 75 F0 80         [24] 2625 	mov	b,#0x80
      0039DF 12 5F 35         [24] 2626 	lcall	_printstr
      0039E2 02 4F BE         [24] 2627 	ljmp	00249$
      0039E5                       2628 00137$:
                                   2629 ;	calc.c:144: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      0039E5 E5 08            [12] 2630 	mov	a,_bp
      0039E7 24 17            [12] 2631 	add	a,#0x17
      0039E9 F8               [12] 2632 	mov	r0,a
      0039EA 74 14            [12] 2633 	mov	a,#0x14
      0039EC 26               [12] 2634 	add	a,@r0
      0039ED FA               [12] 2635 	mov	r2,a
      0039EE 74 40            [12] 2636 	mov	a,#0x40
      0039F0 08               [12] 2637 	inc	r0
      0039F1 36               [12] 2638 	addc	a,@r0
      0039F2 FB               [12] 2639 	mov	r3,a
      0039F3 08               [12] 2640 	inc	r0
      0039F4 86 04            [24] 2641 	mov	ar4,@r0
      0039F6 8A 82            [24] 2642 	mov	dpl,r2
      0039F8 8B 83            [24] 2643 	mov	dph,r3
      0039FA 8C F0            [24] 2644 	mov	b,r4
      0039FC 12 66 39         [24] 2645 	lcall	__gptrget
      0039FF FA               [12] 2646 	mov	r2,a
      003A00 A3               [24] 2647 	inc	dptr
      003A01 12 66 39         [24] 2648 	lcall	__gptrget
      003A04 FB               [12] 2649 	mov	r3,a
      003A05 A3               [24] 2650 	inc	dptr
      003A06 12 66 39         [24] 2651 	lcall	__gptrget
      003A09 FC               [12] 2652 	mov	r4,a
      003A0A E5 08            [12] 2653 	mov	a,_bp
      003A0C 24 1A            [12] 2654 	add	a,#0x1a
      003A0E F8               [12] 2655 	mov	r0,a
      003A0F E6               [12] 2656 	mov	a,@r0
      003A10 C0 E0            [24] 2657 	push	acc
      003A12 08               [12] 2658 	inc	r0
      003A13 E6               [12] 2659 	mov	a,@r0
      003A14 C0 E0            [24] 2660 	push	acc
      003A16 08               [12] 2661 	inc	r0
      003A17 E6               [12] 2662 	mov	a,@r0
      003A18 C0 E0            [24] 2663 	push	acc
      003A1A 08               [12] 2664 	inc	r0
      003A1B E6               [12] 2665 	mov	a,@r0
      003A1C C0 E0            [24] 2666 	push	acc
      003A1E 8A 82            [24] 2667 	mov	dpl,r2
      003A20 8B 83            [24] 2668 	mov	dph,r3
      003A22 8C F0            [24] 2669 	mov	b,r4
      003A24 12 26 F5         [24] 2670 	lcall	_stack_push
      003A27 AB 82            [24] 2671 	mov	r3,dpl
      003A29 AC 83            [24] 2672 	mov	r4,dph
      003A2B E5 81            [12] 2673 	mov	a,sp
      003A2D 24 FC            [12] 2674 	add	a,#0xfc
      003A2F F5 81            [12] 2675 	mov	sp,a
      003A31 EB               [12] 2676 	mov	a,r3
      003A32 4C               [12] 2677 	orl	a,r4
      003A33 60 03            [24] 2678 	jz	00562$
      003A35 02 4F BE         [24] 2679 	ljmp	00249$
      003A38                       2680 00562$:
      003A38 90 7F 1C         [24] 2681 	mov	dptr,#___str_11
      003A3B 75 F0 80         [24] 2682 	mov	b,#0x80
      003A3E 12 5F 35         [24] 2683 	lcall	_printstr
                                   2684 ;	calc.c:145: break;
      003A41 02 4F BE         [24] 2685 	ljmp	00249$
                                   2686 ;	calc.c:146: case 'U':
      003A44                       2687 00139$:
                                   2688 ;	calc.c:147: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003A44 E5 08            [12] 2689 	mov	a,_bp
      003A46 24 1A            [12] 2690 	add	a,#0x1a
      003A48 FF               [12] 2691 	mov	r7,a
      003A49 7E 00            [12] 2692 	mov	r6,#0x00
      003A4B 7D 40            [12] 2693 	mov	r5,#0x40
      003A4D E5 08            [12] 2694 	mov	a,_bp
      003A4F 24 17            [12] 2695 	add	a,#0x17
      003A51 F8               [12] 2696 	mov	r0,a
      003A52 74 14            [12] 2697 	mov	a,#0x14
      003A54 26               [12] 2698 	add	a,@r0
      003A55 FA               [12] 2699 	mov	r2,a
      003A56 ED               [12] 2700 	mov	a,r5
      003A57 08               [12] 2701 	inc	r0
      003A58 36               [12] 2702 	addc	a,@r0
      003A59 FB               [12] 2703 	mov	r3,a
      003A5A 08               [12] 2704 	inc	r0
      003A5B 86 04            [24] 2705 	mov	ar4,@r0
      003A5D 8A 82            [24] 2706 	mov	dpl,r2
      003A5F 8B 83            [24] 2707 	mov	dph,r3
      003A61 8C F0            [24] 2708 	mov	b,r4
      003A63 12 66 39         [24] 2709 	lcall	__gptrget
      003A66 FA               [12] 2710 	mov	r2,a
      003A67 A3               [24] 2711 	inc	dptr
      003A68 12 66 39         [24] 2712 	lcall	__gptrget
      003A6B FB               [12] 2713 	mov	r3,a
      003A6C A3               [24] 2714 	inc	dptr
      003A6D 12 66 39         [24] 2715 	lcall	__gptrget
      003A70 FC               [12] 2716 	mov	r4,a
      003A71 C0 07            [24] 2717 	push	ar7
      003A73 C0 06            [24] 2718 	push	ar6
      003A75 C0 05            [24] 2719 	push	ar5
      003A77 8A 82            [24] 2720 	mov	dpl,r2
      003A79 8B 83            [24] 2721 	mov	dph,r3
      003A7B 8C F0            [24] 2722 	mov	b,r4
      003A7D 12 28 9E         [24] 2723 	lcall	_stack_peek
      003A80 AB 82            [24] 2724 	mov	r3,dpl
      003A82 AC 83            [24] 2725 	mov	r4,dph
      003A84 15 81            [12] 2726 	dec	sp
      003A86 15 81            [12] 2727 	dec	sp
      003A88 15 81            [12] 2728 	dec	sp
      003A8A EB               [12] 2729 	mov	a,r3
      003A8B 4C               [12] 2730 	orl	a,r4
      003A8C 70 0C            [24] 2731 	jnz	00143$
      003A8E 90 7F 39         [24] 2732 	mov	dptr,#___str_12
      003A91 75 F0 80         [24] 2733 	mov	b,#0x80
      003A94 12 5F 35         [24] 2734 	lcall	_printstr
      003A97 02 4F BE         [24] 2735 	ljmp	00249$
      003A9A                       2736 00143$:
                                   2737 ;	calc.c:148: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      003A9A E5 08            [12] 2738 	mov	a,_bp
      003A9C 24 17            [12] 2739 	add	a,#0x17
      003A9E F8               [12] 2740 	mov	r0,a
      003A9F 74 11            [12] 2741 	mov	a,#0x11
      003AA1 26               [12] 2742 	add	a,@r0
      003AA2 FA               [12] 2743 	mov	r2,a
      003AA3 74 40            [12] 2744 	mov	a,#0x40
      003AA5 08               [12] 2745 	inc	r0
      003AA6 36               [12] 2746 	addc	a,@r0
      003AA7 FB               [12] 2747 	mov	r3,a
      003AA8 08               [12] 2748 	inc	r0
      003AA9 86 04            [24] 2749 	mov	ar4,@r0
      003AAB 8A 82            [24] 2750 	mov	dpl,r2
      003AAD 8B 83            [24] 2751 	mov	dph,r3
      003AAF 8C F0            [24] 2752 	mov	b,r4
      003AB1 12 66 39         [24] 2753 	lcall	__gptrget
      003AB4 FA               [12] 2754 	mov	r2,a
      003AB5 A3               [24] 2755 	inc	dptr
      003AB6 12 66 39         [24] 2756 	lcall	__gptrget
      003AB9 FB               [12] 2757 	mov	r3,a
      003ABA A3               [24] 2758 	inc	dptr
      003ABB 12 66 39         [24] 2759 	lcall	__gptrget
      003ABE FC               [12] 2760 	mov	r4,a
      003ABF E5 08            [12] 2761 	mov	a,_bp
      003AC1 24 1A            [12] 2762 	add	a,#0x1a
      003AC3 F8               [12] 2763 	mov	r0,a
      003AC4 E6               [12] 2764 	mov	a,@r0
      003AC5 C0 E0            [24] 2765 	push	acc
      003AC7 08               [12] 2766 	inc	r0
      003AC8 E6               [12] 2767 	mov	a,@r0
      003AC9 C0 E0            [24] 2768 	push	acc
      003ACB 08               [12] 2769 	inc	r0
      003ACC E6               [12] 2770 	mov	a,@r0
      003ACD C0 E0            [24] 2771 	push	acc
      003ACF 08               [12] 2772 	inc	r0
      003AD0 E6               [12] 2773 	mov	a,@r0
      003AD1 C0 E0            [24] 2774 	push	acc
      003AD3 8A 82            [24] 2775 	mov	dpl,r2
      003AD5 8B 83            [24] 2776 	mov	dph,r3
      003AD7 8C F0            [24] 2777 	mov	b,r4
      003AD9 12 26 F5         [24] 2778 	lcall	_stack_push
      003ADC AB 82            [24] 2779 	mov	r3,dpl
      003ADE AC 83            [24] 2780 	mov	r4,dph
      003AE0 E5 81            [12] 2781 	mov	a,sp
      003AE2 24 FC            [12] 2782 	add	a,#0xfc
      003AE4 F5 81            [12] 2783 	mov	sp,a
      003AE6 EB               [12] 2784 	mov	a,r3
      003AE7 4C               [12] 2785 	orl	a,r4
      003AE8 60 03            [24] 2786 	jz	00564$
      003AEA 02 4F BE         [24] 2787 	ljmp	00249$
      003AED                       2788 00564$:
      003AED 90 7F 57         [24] 2789 	mov	dptr,#___str_13
      003AF0 75 F0 80         [24] 2790 	mov	b,#0x80
      003AF3 12 5F 35         [24] 2791 	lcall	_printstr
                                   2792 ;	calc.c:149: break;
      003AF6 02 4F BE         [24] 2793 	ljmp	00249$
                                   2794 ;	calc.c:150: case 'T':
      003AF9                       2795 00145$:
                                   2796 ;	calc.c:151: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003AF9 E5 08            [12] 2797 	mov	a,_bp
      003AFB 24 1A            [12] 2798 	add	a,#0x1a
      003AFD FF               [12] 2799 	mov	r7,a
      003AFE 7E 00            [12] 2800 	mov	r6,#0x00
      003B00 7D 40            [12] 2801 	mov	r5,#0x40
      003B02 E5 08            [12] 2802 	mov	a,_bp
      003B04 24 17            [12] 2803 	add	a,#0x17
      003B06 F8               [12] 2804 	mov	r0,a
      003B07 E5 08            [12] 2805 	mov	a,_bp
      003B09 24 05            [12] 2806 	add	a,#0x05
      003B0B F9               [12] 2807 	mov	r1,a
      003B0C 74 11            [12] 2808 	mov	a,#0x11
      003B0E 26               [12] 2809 	add	a,@r0
      003B0F F7               [12] 2810 	mov	@r1,a
      003B10 74 40            [12] 2811 	mov	a,#0x40
      003B12 08               [12] 2812 	inc	r0
      003B13 36               [12] 2813 	addc	a,@r0
      003B14 09               [12] 2814 	inc	r1
      003B15 F7               [12] 2815 	mov	@r1,a
      003B16 08               [12] 2816 	inc	r0
      003B17 09               [12] 2817 	inc	r1
      003B18 E6               [12] 2818 	mov	a,@r0
      003B19 F7               [12] 2819 	mov	@r1,a
      003B1A E5 08            [12] 2820 	mov	a,_bp
      003B1C 24 05            [12] 2821 	add	a,#0x05
      003B1E F8               [12] 2822 	mov	r0,a
      003B1F 86 82            [24] 2823 	mov	dpl,@r0
      003B21 08               [12] 2824 	inc	r0
      003B22 86 83            [24] 2825 	mov	dph,@r0
      003B24 08               [12] 2826 	inc	r0
      003B25 86 F0            [24] 2827 	mov	b,@r0
      003B27 12 66 39         [24] 2828 	lcall	__gptrget
      003B2A FA               [12] 2829 	mov	r2,a
      003B2B A3               [24] 2830 	inc	dptr
      003B2C 12 66 39         [24] 2831 	lcall	__gptrget
      003B2F FB               [12] 2832 	mov	r3,a
      003B30 A3               [24] 2833 	inc	dptr
      003B31 12 66 39         [24] 2834 	lcall	__gptrget
      003B34 FC               [12] 2835 	mov	r4,a
      003B35 C0 07            [24] 2836 	push	ar7
      003B37 C0 06            [24] 2837 	push	ar6
      003B39 C0 05            [24] 2838 	push	ar5
      003B3B 8A 82            [24] 2839 	mov	dpl,r2
      003B3D 8B 83            [24] 2840 	mov	dph,r3
      003B3F 8C F0            [24] 2841 	mov	b,r4
      003B41 12 27 C3         [24] 2842 	lcall	_stack_pop
      003B44 AB 82            [24] 2843 	mov	r3,dpl
      003B46 AC 83            [24] 2844 	mov	r4,dph
      003B48 15 81            [12] 2845 	dec	sp
      003B4A 15 81            [12] 2846 	dec	sp
      003B4C 15 81            [12] 2847 	dec	sp
      003B4E EB               [12] 2848 	mov	a,r3
      003B4F 4C               [12] 2849 	orl	a,r4
      003B50 70 0C            [24] 2850 	jnz	00150$
      003B52 90 7F 08         [24] 2851 	mov	dptr,#___str_10
      003B55 75 F0 80         [24] 2852 	mov	b,#0x80
      003B58 12 5F 35         [24] 2853 	lcall	_printstr
      003B5B 02 4F BE         [24] 2854 	ljmp	00249$
      003B5E                       2855 00150$:
                                   2856 ;	calc.c:153: if (!stack_pop(ctx->ss, &d1)) {
      003B5E E5 08            [12] 2857 	mov	a,_bp
      003B60 24 1E            [12] 2858 	add	a,#0x1e
      003B62 FF               [12] 2859 	mov	r7,a
      003B63 7E 00            [12] 2860 	mov	r6,#0x00
      003B65 7D 40            [12] 2861 	mov	r5,#0x40
      003B67 E5 08            [12] 2862 	mov	a,_bp
      003B69 24 17            [12] 2863 	add	a,#0x17
      003B6B F8               [12] 2864 	mov	r0,a
      003B6C A9 08            [24] 2865 	mov	r1,_bp
      003B6E 09               [12] 2866 	inc	r1
      003B6F 09               [12] 2867 	inc	r1
      003B70 74 14            [12] 2868 	mov	a,#0x14
      003B72 26               [12] 2869 	add	a,@r0
      003B73 F7               [12] 2870 	mov	@r1,a
      003B74 74 40            [12] 2871 	mov	a,#0x40
      003B76 08               [12] 2872 	inc	r0
      003B77 36               [12] 2873 	addc	a,@r0
      003B78 09               [12] 2874 	inc	r1
      003B79 F7               [12] 2875 	mov	@r1,a
      003B7A 08               [12] 2876 	inc	r0
      003B7B 09               [12] 2877 	inc	r1
      003B7C E6               [12] 2878 	mov	a,@r0
      003B7D F7               [12] 2879 	mov	@r1,a
      003B7E A8 08            [24] 2880 	mov	r0,_bp
      003B80 08               [12] 2881 	inc	r0
      003B81 08               [12] 2882 	inc	r0
      003B82 86 82            [24] 2883 	mov	dpl,@r0
      003B84 08               [12] 2884 	inc	r0
      003B85 86 83            [24] 2885 	mov	dph,@r0
      003B87 08               [12] 2886 	inc	r0
      003B88 86 F0            [24] 2887 	mov	b,@r0
      003B8A 12 66 39         [24] 2888 	lcall	__gptrget
      003B8D FA               [12] 2889 	mov	r2,a
      003B8E A3               [24] 2890 	inc	dptr
      003B8F 12 66 39         [24] 2891 	lcall	__gptrget
      003B92 FB               [12] 2892 	mov	r3,a
      003B93 A3               [24] 2893 	inc	dptr
      003B94 12 66 39         [24] 2894 	lcall	__gptrget
      003B97 FC               [12] 2895 	mov	r4,a
      003B98 C0 07            [24] 2896 	push	ar7
      003B9A C0 06            [24] 2897 	push	ar6
      003B9C C0 05            [24] 2898 	push	ar5
      003B9E 8A 82            [24] 2899 	mov	dpl,r2
      003BA0 8B 83            [24] 2900 	mov	dph,r3
      003BA2 8C F0            [24] 2901 	mov	b,r4
      003BA4 12 27 C3         [24] 2902 	lcall	_stack_pop
      003BA7 AB 82            [24] 2903 	mov	r3,dpl
      003BA9 AC 83            [24] 2904 	mov	r4,dph
      003BAB 15 81            [12] 2905 	dec	sp
      003BAD 15 81            [12] 2906 	dec	sp
      003BAF 15 81            [12] 2907 	dec	sp
      003BB1 EB               [12] 2908 	mov	a,r3
      003BB2 4C               [12] 2909 	orl	a,r4
      003BB3 70 4A            [24] 2910 	jnz	00147$
                                   2911 ;	calc.c:154: printstr("\r\nsecondary stack underflow\r\n");
      003BB5 90 7F 39         [24] 2912 	mov	dptr,#___str_12
      003BB8 75 F0 80         [24] 2913 	mov	b,#0x80
      003BBB 12 5F 35         [24] 2914 	lcall	_printstr
                                   2915 ;	calc.c:155: (void)stack_push(ctx->ps, d0);
      003BBE E5 08            [12] 2916 	mov	a,_bp
      003BC0 24 05            [12] 2917 	add	a,#0x05
      003BC2 F8               [12] 2918 	mov	r0,a
      003BC3 86 82            [24] 2919 	mov	dpl,@r0
      003BC5 08               [12] 2920 	inc	r0
      003BC6 86 83            [24] 2921 	mov	dph,@r0
      003BC8 08               [12] 2922 	inc	r0
      003BC9 86 F0            [24] 2923 	mov	b,@r0
      003BCB 12 66 39         [24] 2924 	lcall	__gptrget
      003BCE FA               [12] 2925 	mov	r2,a
      003BCF A3               [24] 2926 	inc	dptr
      003BD0 12 66 39         [24] 2927 	lcall	__gptrget
      003BD3 FB               [12] 2928 	mov	r3,a
      003BD4 A3               [24] 2929 	inc	dptr
      003BD5 12 66 39         [24] 2930 	lcall	__gptrget
      003BD8 FC               [12] 2931 	mov	r4,a
      003BD9 E5 08            [12] 2932 	mov	a,_bp
      003BDB 24 1A            [12] 2933 	add	a,#0x1a
      003BDD F8               [12] 2934 	mov	r0,a
      003BDE E6               [12] 2935 	mov	a,@r0
      003BDF C0 E0            [24] 2936 	push	acc
      003BE1 08               [12] 2937 	inc	r0
      003BE2 E6               [12] 2938 	mov	a,@r0
      003BE3 C0 E0            [24] 2939 	push	acc
      003BE5 08               [12] 2940 	inc	r0
      003BE6 E6               [12] 2941 	mov	a,@r0
      003BE7 C0 E0            [24] 2942 	push	acc
      003BE9 08               [12] 2943 	inc	r0
      003BEA E6               [12] 2944 	mov	a,@r0
      003BEB C0 E0            [24] 2945 	push	acc
      003BED 8A 82            [24] 2946 	mov	dpl,r2
      003BEF 8B 83            [24] 2947 	mov	dph,r3
      003BF1 8C F0            [24] 2948 	mov	b,r4
      003BF3 12 26 F5         [24] 2949 	lcall	_stack_push
      003BF6 E5 81            [12] 2950 	mov	a,sp
      003BF8 24 FC            [12] 2951 	add	a,#0xfc
      003BFA F5 81            [12] 2952 	mov	sp,a
      003BFC 02 4F BE         [24] 2953 	ljmp	00249$
      003BFF                       2954 00147$:
                                   2955 ;	calc.c:157: (void)stack_push(ctx->ps, d1);
      003BFF E5 08            [12] 2956 	mov	a,_bp
      003C01 24 05            [12] 2957 	add	a,#0x05
      003C03 F8               [12] 2958 	mov	r0,a
      003C04 86 82            [24] 2959 	mov	dpl,@r0
      003C06 08               [12] 2960 	inc	r0
      003C07 86 83            [24] 2961 	mov	dph,@r0
      003C09 08               [12] 2962 	inc	r0
      003C0A 86 F0            [24] 2963 	mov	b,@r0
      003C0C 12 66 39         [24] 2964 	lcall	__gptrget
      003C0F FA               [12] 2965 	mov	r2,a
      003C10 A3               [24] 2966 	inc	dptr
      003C11 12 66 39         [24] 2967 	lcall	__gptrget
      003C14 FB               [12] 2968 	mov	r3,a
      003C15 A3               [24] 2969 	inc	dptr
      003C16 12 66 39         [24] 2970 	lcall	__gptrget
      003C19 FC               [12] 2971 	mov	r4,a
      003C1A E5 08            [12] 2972 	mov	a,_bp
      003C1C 24 1E            [12] 2973 	add	a,#0x1e
      003C1E F8               [12] 2974 	mov	r0,a
      003C1F E6               [12] 2975 	mov	a,@r0
      003C20 C0 E0            [24] 2976 	push	acc
      003C22 08               [12] 2977 	inc	r0
      003C23 E6               [12] 2978 	mov	a,@r0
      003C24 C0 E0            [24] 2979 	push	acc
      003C26 08               [12] 2980 	inc	r0
      003C27 E6               [12] 2981 	mov	a,@r0
      003C28 C0 E0            [24] 2982 	push	acc
      003C2A 08               [12] 2983 	inc	r0
      003C2B E6               [12] 2984 	mov	a,@r0
      003C2C C0 E0            [24] 2985 	push	acc
      003C2E 8A 82            [24] 2986 	mov	dpl,r2
      003C30 8B 83            [24] 2987 	mov	dph,r3
      003C32 8C F0            [24] 2988 	mov	b,r4
      003C34 12 26 F5         [24] 2989 	lcall	_stack_push
      003C37 E5 81            [12] 2990 	mov	a,sp
      003C39 24 FC            [12] 2991 	add	a,#0xfc
      003C3B F5 81            [12] 2992 	mov	sp,a
                                   2993 ;	calc.c:158: (void)stack_push(ctx->ss, d0);
      003C3D A8 08            [24] 2994 	mov	r0,_bp
      003C3F 08               [12] 2995 	inc	r0
      003C40 08               [12] 2996 	inc	r0
      003C41 86 82            [24] 2997 	mov	dpl,@r0
      003C43 08               [12] 2998 	inc	r0
      003C44 86 83            [24] 2999 	mov	dph,@r0
      003C46 08               [12] 3000 	inc	r0
      003C47 86 F0            [24] 3001 	mov	b,@r0
      003C49 12 66 39         [24] 3002 	lcall	__gptrget
      003C4C FA               [12] 3003 	mov	r2,a
      003C4D A3               [24] 3004 	inc	dptr
      003C4E 12 66 39         [24] 3005 	lcall	__gptrget
      003C51 FB               [12] 3006 	mov	r3,a
      003C52 A3               [24] 3007 	inc	dptr
      003C53 12 66 39         [24] 3008 	lcall	__gptrget
      003C56 FC               [12] 3009 	mov	r4,a
      003C57 E5 08            [12] 3010 	mov	a,_bp
      003C59 24 1A            [12] 3011 	add	a,#0x1a
      003C5B F8               [12] 3012 	mov	r0,a
      003C5C E6               [12] 3013 	mov	a,@r0
      003C5D C0 E0            [24] 3014 	push	acc
      003C5F 08               [12] 3015 	inc	r0
      003C60 E6               [12] 3016 	mov	a,@r0
      003C61 C0 E0            [24] 3017 	push	acc
      003C63 08               [12] 3018 	inc	r0
      003C64 E6               [12] 3019 	mov	a,@r0
      003C65 C0 E0            [24] 3020 	push	acc
      003C67 08               [12] 3021 	inc	r0
      003C68 E6               [12] 3022 	mov	a,@r0
      003C69 C0 E0            [24] 3023 	push	acc
      003C6B 8A 82            [24] 3024 	mov	dpl,r2
      003C6D 8B 83            [24] 3025 	mov	dph,r3
      003C6F 8C F0            [24] 3026 	mov	b,r4
      003C71 12 26 F5         [24] 3027 	lcall	_stack_push
      003C74 E5 81            [12] 3028 	mov	a,sp
      003C76 24 FC            [12] 3029 	add	a,#0xfc
      003C78 F5 81            [12] 3030 	mov	sp,a
                                   3031 ;	calc.c:161: break;
      003C7A 02 4F BE         [24] 3032 	ljmp	00249$
                                   3033 ;	calc.c:162: case 'X':
      003C7D                       3034 00152$:
                                   3035 ;	calc.c:163: t0 = ctx->ps;
      003C7D E5 08            [12] 3036 	mov	a,_bp
      003C7F 24 17            [12] 3037 	add	a,#0x17
      003C81 F8               [12] 3038 	mov	r0,a
      003C82 E5 08            [12] 3039 	mov	a,_bp
      003C84 24 08            [12] 3040 	add	a,#0x08
      003C86 F9               [12] 3041 	mov	r1,a
      003C87 74 11            [12] 3042 	mov	a,#0x11
      003C89 26               [12] 3043 	add	a,@r0
      003C8A F7               [12] 3044 	mov	@r1,a
      003C8B 74 40            [12] 3045 	mov	a,#0x40
      003C8D 08               [12] 3046 	inc	r0
      003C8E 36               [12] 3047 	addc	a,@r0
      003C8F 09               [12] 3048 	inc	r1
      003C90 F7               [12] 3049 	mov	@r1,a
      003C91 08               [12] 3050 	inc	r0
      003C92 09               [12] 3051 	inc	r1
      003C93 E6               [12] 3052 	mov	a,@r0
      003C94 F7               [12] 3053 	mov	@r1,a
      003C95 E5 08            [12] 3054 	mov	a,_bp
      003C97 24 08            [12] 3055 	add	a,#0x08
      003C99 F8               [12] 3056 	mov	r0,a
      003C9A 86 82            [24] 3057 	mov	dpl,@r0
      003C9C 08               [12] 3058 	inc	r0
      003C9D 86 83            [24] 3059 	mov	dph,@r0
      003C9F 08               [12] 3060 	inc	r0
      003CA0 86 F0            [24] 3061 	mov	b,@r0
      003CA2 12 66 39         [24] 3062 	lcall	__gptrget
      003CA5 FF               [12] 3063 	mov	r7,a
      003CA6 A3               [24] 3064 	inc	dptr
      003CA7 12 66 39         [24] 3065 	lcall	__gptrget
      003CAA FE               [12] 3066 	mov	r6,a
      003CAB A3               [24] 3067 	inc	dptr
      003CAC 12 66 39         [24] 3068 	lcall	__gptrget
      003CAF FD               [12] 3069 	mov	r5,a
                                   3070 ;	calc.c:164: ctx->ps = ctx->ss;
      003CB0 E5 08            [12] 3071 	mov	a,_bp
      003CB2 24 17            [12] 3072 	add	a,#0x17
      003CB4 F8               [12] 3073 	mov	r0,a
      003CB5 E5 08            [12] 3074 	mov	a,_bp
      003CB7 24 05            [12] 3075 	add	a,#0x05
      003CB9 F9               [12] 3076 	mov	r1,a
      003CBA 74 14            [12] 3077 	mov	a,#0x14
      003CBC 26               [12] 3078 	add	a,@r0
      003CBD F7               [12] 3079 	mov	@r1,a
      003CBE 74 40            [12] 3080 	mov	a,#0x40
      003CC0 08               [12] 3081 	inc	r0
      003CC1 36               [12] 3082 	addc	a,@r0
      003CC2 09               [12] 3083 	inc	r1
      003CC3 F7               [12] 3084 	mov	@r1,a
      003CC4 08               [12] 3085 	inc	r0
      003CC5 09               [12] 3086 	inc	r1
      003CC6 E6               [12] 3087 	mov	a,@r0
      003CC7 F7               [12] 3088 	mov	@r1,a
      003CC8 E5 08            [12] 3089 	mov	a,_bp
      003CCA 24 05            [12] 3090 	add	a,#0x05
      003CCC F8               [12] 3091 	mov	r0,a
      003CCD 86 82            [24] 3092 	mov	dpl,@r0
      003CCF 08               [12] 3093 	inc	r0
      003CD0 86 83            [24] 3094 	mov	dph,@r0
      003CD2 08               [12] 3095 	inc	r0
      003CD3 86 F0            [24] 3096 	mov	b,@r0
      003CD5 12 66 39         [24] 3097 	lcall	__gptrget
      003CD8 FA               [12] 3098 	mov	r2,a
      003CD9 A3               [24] 3099 	inc	dptr
      003CDA 12 66 39         [24] 3100 	lcall	__gptrget
      003CDD FB               [12] 3101 	mov	r3,a
      003CDE A3               [24] 3102 	inc	dptr
      003CDF 12 66 39         [24] 3103 	lcall	__gptrget
      003CE2 FC               [12] 3104 	mov	r4,a
      003CE3 E5 08            [12] 3105 	mov	a,_bp
      003CE5 24 08            [12] 3106 	add	a,#0x08
      003CE7 F8               [12] 3107 	mov	r0,a
      003CE8 86 82            [24] 3108 	mov	dpl,@r0
      003CEA 08               [12] 3109 	inc	r0
      003CEB 86 83            [24] 3110 	mov	dph,@r0
      003CED 08               [12] 3111 	inc	r0
      003CEE 86 F0            [24] 3112 	mov	b,@r0
      003CF0 EA               [12] 3113 	mov	a,r2
      003CF1 12 5E E9         [24] 3114 	lcall	__gptrput
      003CF4 A3               [24] 3115 	inc	dptr
      003CF5 EB               [12] 3116 	mov	a,r3
      003CF6 12 5E E9         [24] 3117 	lcall	__gptrput
      003CF9 A3               [24] 3118 	inc	dptr
      003CFA EC               [12] 3119 	mov	a,r4
      003CFB 12 5E E9         [24] 3120 	lcall	__gptrput
                                   3121 ;	calc.c:165: ctx->ss = t0;
      003CFE E5 08            [12] 3122 	mov	a,_bp
      003D00 24 05            [12] 3123 	add	a,#0x05
      003D02 F8               [12] 3124 	mov	r0,a
      003D03 86 82            [24] 3125 	mov	dpl,@r0
      003D05 08               [12] 3126 	inc	r0
      003D06 86 83            [24] 3127 	mov	dph,@r0
      003D08 08               [12] 3128 	inc	r0
      003D09 86 F0            [24] 3129 	mov	b,@r0
      003D0B EF               [12] 3130 	mov	a,r7
      003D0C 12 5E E9         [24] 3131 	lcall	__gptrput
      003D0F A3               [24] 3132 	inc	dptr
      003D10 EE               [12] 3133 	mov	a,r6
      003D11 12 5E E9         [24] 3134 	lcall	__gptrput
      003D14 A3               [24] 3135 	inc	dptr
      003D15 ED               [12] 3136 	mov	a,r5
      003D16 12 5E E9         [24] 3137 	lcall	__gptrput
                                   3138 ;	calc.c:166: break;
      003D19 02 4F BE         [24] 3139 	ljmp	00249$
                                   3140 ;	calc.c:167: case '+':
      003D1C                       3141 00153$:
                                   3142 ;	calc.c:168: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003D1C E5 08            [12] 3143 	mov	a,_bp
      003D1E 24 1A            [12] 3144 	add	a,#0x1a
      003D20 FF               [12] 3145 	mov	r7,a
      003D21 7E 00            [12] 3146 	mov	r6,#0x00
      003D23 7D 40            [12] 3147 	mov	r5,#0x40
      003D25 E5 08            [12] 3148 	mov	a,_bp
      003D27 24 17            [12] 3149 	add	a,#0x17
      003D29 F8               [12] 3150 	mov	r0,a
      003D2A E5 08            [12] 3151 	mov	a,_bp
      003D2C 24 08            [12] 3152 	add	a,#0x08
      003D2E F9               [12] 3153 	mov	r1,a
      003D2F 74 11            [12] 3154 	mov	a,#0x11
      003D31 26               [12] 3155 	add	a,@r0
      003D32 F7               [12] 3156 	mov	@r1,a
      003D33 74 40            [12] 3157 	mov	a,#0x40
      003D35 08               [12] 3158 	inc	r0
      003D36 36               [12] 3159 	addc	a,@r0
      003D37 09               [12] 3160 	inc	r1
      003D38 F7               [12] 3161 	mov	@r1,a
      003D39 08               [12] 3162 	inc	r0
      003D3A 09               [12] 3163 	inc	r1
      003D3B E6               [12] 3164 	mov	a,@r0
      003D3C F7               [12] 3165 	mov	@r1,a
      003D3D E5 08            [12] 3166 	mov	a,_bp
      003D3F 24 08            [12] 3167 	add	a,#0x08
      003D41 F8               [12] 3168 	mov	r0,a
      003D42 86 82            [24] 3169 	mov	dpl,@r0
      003D44 08               [12] 3170 	inc	r0
      003D45 86 83            [24] 3171 	mov	dph,@r0
      003D47 08               [12] 3172 	inc	r0
      003D48 86 F0            [24] 3173 	mov	b,@r0
      003D4A 12 66 39         [24] 3174 	lcall	__gptrget
      003D4D FA               [12] 3175 	mov	r2,a
      003D4E A3               [24] 3176 	inc	dptr
      003D4F 12 66 39         [24] 3177 	lcall	__gptrget
      003D52 FB               [12] 3178 	mov	r3,a
      003D53 A3               [24] 3179 	inc	dptr
      003D54 12 66 39         [24] 3180 	lcall	__gptrget
      003D57 FC               [12] 3181 	mov	r4,a
      003D58 C0 07            [24] 3182 	push	ar7
      003D5A C0 06            [24] 3183 	push	ar6
      003D5C C0 05            [24] 3184 	push	ar5
      003D5E 8A 82            [24] 3185 	mov	dpl,r2
      003D60 8B 83            [24] 3186 	mov	dph,r3
      003D62 8C F0            [24] 3187 	mov	b,r4
      003D64 12 27 C3         [24] 3188 	lcall	_stack_pop
      003D67 AB 82            [24] 3189 	mov	r3,dpl
      003D69 AC 83            [24] 3190 	mov	r4,dph
      003D6B 15 81            [12] 3191 	dec	sp
      003D6D 15 81            [12] 3192 	dec	sp
      003D6F 15 81            [12] 3193 	dec	sp
      003D71 EB               [12] 3194 	mov	a,r3
      003D72 4C               [12] 3195 	orl	a,r4
      003D73 70 0C            [24] 3196 	jnz	00158$
      003D75 90 7F 08         [24] 3197 	mov	dptr,#___str_10
      003D78 75 F0 80         [24] 3198 	mov	b,#0x80
      003D7B 12 5F 35         [24] 3199 	lcall	_printstr
      003D7E 02 4F BE         [24] 3200 	ljmp	00249$
      003D81                       3201 00158$:
                                   3202 ;	calc.c:169: else if (!stack_pop(ctx->ps, &d1)) {
      003D81 E5 08            [12] 3203 	mov	a,_bp
      003D83 24 1E            [12] 3204 	add	a,#0x1e
      003D85 FF               [12] 3205 	mov	r7,a
      003D86 7E 00            [12] 3206 	mov	r6,#0x00
      003D88 7D 40            [12] 3207 	mov	r5,#0x40
      003D8A E5 08            [12] 3208 	mov	a,_bp
      003D8C 24 08            [12] 3209 	add	a,#0x08
      003D8E F8               [12] 3210 	mov	r0,a
      003D8F 86 82            [24] 3211 	mov	dpl,@r0
      003D91 08               [12] 3212 	inc	r0
      003D92 86 83            [24] 3213 	mov	dph,@r0
      003D94 08               [12] 3214 	inc	r0
      003D95 86 F0            [24] 3215 	mov	b,@r0
      003D97 12 66 39         [24] 3216 	lcall	__gptrget
      003D9A FA               [12] 3217 	mov	r2,a
      003D9B A3               [24] 3218 	inc	dptr
      003D9C 12 66 39         [24] 3219 	lcall	__gptrget
      003D9F FB               [12] 3220 	mov	r3,a
      003DA0 A3               [24] 3221 	inc	dptr
      003DA1 12 66 39         [24] 3222 	lcall	__gptrget
      003DA4 FC               [12] 3223 	mov	r4,a
      003DA5 C0 07            [24] 3224 	push	ar7
      003DA7 C0 06            [24] 3225 	push	ar6
      003DA9 C0 05            [24] 3226 	push	ar5
      003DAB 8A 82            [24] 3227 	mov	dpl,r2
      003DAD 8B 83            [24] 3228 	mov	dph,r3
      003DAF 8C F0            [24] 3229 	mov	b,r4
      003DB1 12 27 C3         [24] 3230 	lcall	_stack_pop
      003DB4 AB 82            [24] 3231 	mov	r3,dpl
      003DB6 AC 83            [24] 3232 	mov	r4,dph
      003DB8 15 81            [12] 3233 	dec	sp
      003DBA 15 81            [12] 3234 	dec	sp
      003DBC 15 81            [12] 3235 	dec	sp
      003DBE EB               [12] 3236 	mov	a,r3
      003DBF 4C               [12] 3237 	orl	a,r4
      003DC0 70 4A            [24] 3238 	jnz	00155$
                                   3239 ;	calc.c:170: (void)stack_push(ctx->ps, d0);
      003DC2 E5 08            [12] 3240 	mov	a,_bp
      003DC4 24 08            [12] 3241 	add	a,#0x08
      003DC6 F8               [12] 3242 	mov	r0,a
      003DC7 86 82            [24] 3243 	mov	dpl,@r0
      003DC9 08               [12] 3244 	inc	r0
      003DCA 86 83            [24] 3245 	mov	dph,@r0
      003DCC 08               [12] 3246 	inc	r0
      003DCD 86 F0            [24] 3247 	mov	b,@r0
      003DCF 12 66 39         [24] 3248 	lcall	__gptrget
      003DD2 FA               [12] 3249 	mov	r2,a
      003DD3 A3               [24] 3250 	inc	dptr
      003DD4 12 66 39         [24] 3251 	lcall	__gptrget
      003DD7 FB               [12] 3252 	mov	r3,a
      003DD8 A3               [24] 3253 	inc	dptr
      003DD9 12 66 39         [24] 3254 	lcall	__gptrget
      003DDC FC               [12] 3255 	mov	r4,a
      003DDD E5 08            [12] 3256 	mov	a,_bp
      003DDF 24 1A            [12] 3257 	add	a,#0x1a
      003DE1 F8               [12] 3258 	mov	r0,a
      003DE2 E6               [12] 3259 	mov	a,@r0
      003DE3 C0 E0            [24] 3260 	push	acc
      003DE5 08               [12] 3261 	inc	r0
      003DE6 E6               [12] 3262 	mov	a,@r0
      003DE7 C0 E0            [24] 3263 	push	acc
      003DE9 08               [12] 3264 	inc	r0
      003DEA E6               [12] 3265 	mov	a,@r0
      003DEB C0 E0            [24] 3266 	push	acc
      003DED 08               [12] 3267 	inc	r0
      003DEE E6               [12] 3268 	mov	a,@r0
      003DEF C0 E0            [24] 3269 	push	acc
      003DF1 8A 82            [24] 3270 	mov	dpl,r2
      003DF3 8B 83            [24] 3271 	mov	dph,r3
      003DF5 8C F0            [24] 3272 	mov	b,r4
      003DF7 12 26 F5         [24] 3273 	lcall	_stack_push
      003DFA E5 81            [12] 3274 	mov	a,sp
      003DFC 24 FC            [12] 3275 	add	a,#0xfc
      003DFE F5 81            [12] 3276 	mov	sp,a
                                   3277 ;	calc.c:171: printstr("\r\nstack underflow\r\n");
      003E00 90 7F 08         [24] 3278 	mov	dptr,#___str_10
      003E03 75 F0 80         [24] 3279 	mov	b,#0x80
      003E06 12 5F 35         [24] 3280 	lcall	_printstr
      003E09 02 4F BE         [24] 3281 	ljmp	00249$
      003E0C                       3282 00155$:
                                   3283 ;	calc.c:173: d1 += d0;
      003E0C E5 08            [12] 3284 	mov	a,_bp
      003E0E 24 1E            [12] 3285 	add	a,#0x1e
      003E10 F8               [12] 3286 	mov	r0,a
      003E11 E5 08            [12] 3287 	mov	a,_bp
      003E13 24 1A            [12] 3288 	add	a,#0x1a
      003E15 F9               [12] 3289 	mov	r1,a
      003E16 E7               [12] 3290 	mov	a,@r1
      003E17 26               [12] 3291 	add	a,@r0
      003E18 F6               [12] 3292 	mov	@r0,a
      003E19 09               [12] 3293 	inc	r1
      003E1A E7               [12] 3294 	mov	a,@r1
      003E1B 08               [12] 3295 	inc	r0
      003E1C 36               [12] 3296 	addc	a,@r0
      003E1D F6               [12] 3297 	mov	@r0,a
      003E1E 09               [12] 3298 	inc	r1
      003E1F E7               [12] 3299 	mov	a,@r1
      003E20 08               [12] 3300 	inc	r0
      003E21 36               [12] 3301 	addc	a,@r0
      003E22 F6               [12] 3302 	mov	@r0,a
      003E23 09               [12] 3303 	inc	r1
      003E24 E7               [12] 3304 	mov	a,@r1
      003E25 08               [12] 3305 	inc	r0
      003E26 36               [12] 3306 	addc	a,@r0
      003E27 F6               [12] 3307 	mov	@r0,a
                                   3308 ;	calc.c:174: (void)stack_push(ctx->ps, d1);
      003E28 E5 08            [12] 3309 	mov	a,_bp
      003E2A 24 08            [12] 3310 	add	a,#0x08
      003E2C F8               [12] 3311 	mov	r0,a
      003E2D 86 82            [24] 3312 	mov	dpl,@r0
      003E2F 08               [12] 3313 	inc	r0
      003E30 86 83            [24] 3314 	mov	dph,@r0
      003E32 08               [12] 3315 	inc	r0
      003E33 86 F0            [24] 3316 	mov	b,@r0
      003E35 12 66 39         [24] 3317 	lcall	__gptrget
      003E38 FA               [12] 3318 	mov	r2,a
      003E39 A3               [24] 3319 	inc	dptr
      003E3A 12 66 39         [24] 3320 	lcall	__gptrget
      003E3D FB               [12] 3321 	mov	r3,a
      003E3E A3               [24] 3322 	inc	dptr
      003E3F 12 66 39         [24] 3323 	lcall	__gptrget
      003E42 FC               [12] 3324 	mov	r4,a
      003E43 E5 08            [12] 3325 	mov	a,_bp
      003E45 24 1E            [12] 3326 	add	a,#0x1e
      003E47 F8               [12] 3327 	mov	r0,a
      003E48 E6               [12] 3328 	mov	a,@r0
      003E49 C0 E0            [24] 3329 	push	acc
      003E4B 08               [12] 3330 	inc	r0
      003E4C E6               [12] 3331 	mov	a,@r0
      003E4D C0 E0            [24] 3332 	push	acc
      003E4F 08               [12] 3333 	inc	r0
      003E50 E6               [12] 3334 	mov	a,@r0
      003E51 C0 E0            [24] 3335 	push	acc
      003E53 08               [12] 3336 	inc	r0
      003E54 E6               [12] 3337 	mov	a,@r0
      003E55 C0 E0            [24] 3338 	push	acc
      003E57 8A 82            [24] 3339 	mov	dpl,r2
      003E59 8B 83            [24] 3340 	mov	dph,r3
      003E5B 8C F0            [24] 3341 	mov	b,r4
      003E5D 12 26 F5         [24] 3342 	lcall	_stack_push
      003E60 E5 81            [12] 3343 	mov	a,sp
      003E62 24 FC            [12] 3344 	add	a,#0xfc
      003E64 F5 81            [12] 3345 	mov	sp,a
                                   3346 ;	calc.c:176: break;
      003E66 02 4F BE         [24] 3347 	ljmp	00249$
                                   3348 ;	calc.c:177: case '-':
      003E69                       3349 00160$:
                                   3350 ;	calc.c:178: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003E69 E5 08            [12] 3351 	mov	a,_bp
      003E6B 24 1A            [12] 3352 	add	a,#0x1a
      003E6D FF               [12] 3353 	mov	r7,a
      003E6E 7E 00            [12] 3354 	mov	r6,#0x00
      003E70 7D 40            [12] 3355 	mov	r5,#0x40
      003E72 E5 08            [12] 3356 	mov	a,_bp
      003E74 24 17            [12] 3357 	add	a,#0x17
      003E76 F8               [12] 3358 	mov	r0,a
      003E77 E5 08            [12] 3359 	mov	a,_bp
      003E79 24 08            [12] 3360 	add	a,#0x08
      003E7B F9               [12] 3361 	mov	r1,a
      003E7C 74 11            [12] 3362 	mov	a,#0x11
      003E7E 26               [12] 3363 	add	a,@r0
      003E7F F7               [12] 3364 	mov	@r1,a
      003E80 74 40            [12] 3365 	mov	a,#0x40
      003E82 08               [12] 3366 	inc	r0
      003E83 36               [12] 3367 	addc	a,@r0
      003E84 09               [12] 3368 	inc	r1
      003E85 F7               [12] 3369 	mov	@r1,a
      003E86 08               [12] 3370 	inc	r0
      003E87 09               [12] 3371 	inc	r1
      003E88 E6               [12] 3372 	mov	a,@r0
      003E89 F7               [12] 3373 	mov	@r1,a
      003E8A E5 08            [12] 3374 	mov	a,_bp
      003E8C 24 08            [12] 3375 	add	a,#0x08
      003E8E F8               [12] 3376 	mov	r0,a
      003E8F 86 82            [24] 3377 	mov	dpl,@r0
      003E91 08               [12] 3378 	inc	r0
      003E92 86 83            [24] 3379 	mov	dph,@r0
      003E94 08               [12] 3380 	inc	r0
      003E95 86 F0            [24] 3381 	mov	b,@r0
      003E97 12 66 39         [24] 3382 	lcall	__gptrget
      003E9A FA               [12] 3383 	mov	r2,a
      003E9B A3               [24] 3384 	inc	dptr
      003E9C 12 66 39         [24] 3385 	lcall	__gptrget
      003E9F FB               [12] 3386 	mov	r3,a
      003EA0 A3               [24] 3387 	inc	dptr
      003EA1 12 66 39         [24] 3388 	lcall	__gptrget
      003EA4 FC               [12] 3389 	mov	r4,a
      003EA5 C0 07            [24] 3390 	push	ar7
      003EA7 C0 06            [24] 3391 	push	ar6
      003EA9 C0 05            [24] 3392 	push	ar5
      003EAB 8A 82            [24] 3393 	mov	dpl,r2
      003EAD 8B 83            [24] 3394 	mov	dph,r3
      003EAF 8C F0            [24] 3395 	mov	b,r4
      003EB1 12 27 C3         [24] 3396 	lcall	_stack_pop
      003EB4 AB 82            [24] 3397 	mov	r3,dpl
      003EB6 AC 83            [24] 3398 	mov	r4,dph
      003EB8 15 81            [12] 3399 	dec	sp
      003EBA 15 81            [12] 3400 	dec	sp
      003EBC 15 81            [12] 3401 	dec	sp
      003EBE EB               [12] 3402 	mov	a,r3
      003EBF 4C               [12] 3403 	orl	a,r4
      003EC0 70 0C            [24] 3404 	jnz	00165$
      003EC2 90 7F 08         [24] 3405 	mov	dptr,#___str_10
      003EC5 75 F0 80         [24] 3406 	mov	b,#0x80
      003EC8 12 5F 35         [24] 3407 	lcall	_printstr
      003ECB 02 4F BE         [24] 3408 	ljmp	00249$
      003ECE                       3409 00165$:
                                   3410 ;	calc.c:179: else if (!stack_pop(ctx->ps, &d1)) {
      003ECE E5 08            [12] 3411 	mov	a,_bp
      003ED0 24 1E            [12] 3412 	add	a,#0x1e
      003ED2 FF               [12] 3413 	mov	r7,a
      003ED3 7E 00            [12] 3414 	mov	r6,#0x00
      003ED5 7D 40            [12] 3415 	mov	r5,#0x40
      003ED7 E5 08            [12] 3416 	mov	a,_bp
      003ED9 24 08            [12] 3417 	add	a,#0x08
      003EDB F8               [12] 3418 	mov	r0,a
      003EDC 86 82            [24] 3419 	mov	dpl,@r0
      003EDE 08               [12] 3420 	inc	r0
      003EDF 86 83            [24] 3421 	mov	dph,@r0
      003EE1 08               [12] 3422 	inc	r0
      003EE2 86 F0            [24] 3423 	mov	b,@r0
      003EE4 12 66 39         [24] 3424 	lcall	__gptrget
      003EE7 FA               [12] 3425 	mov	r2,a
      003EE8 A3               [24] 3426 	inc	dptr
      003EE9 12 66 39         [24] 3427 	lcall	__gptrget
      003EEC FB               [12] 3428 	mov	r3,a
      003EED A3               [24] 3429 	inc	dptr
      003EEE 12 66 39         [24] 3430 	lcall	__gptrget
      003EF1 FC               [12] 3431 	mov	r4,a
      003EF2 C0 07            [24] 3432 	push	ar7
      003EF4 C0 06            [24] 3433 	push	ar6
      003EF6 C0 05            [24] 3434 	push	ar5
      003EF8 8A 82            [24] 3435 	mov	dpl,r2
      003EFA 8B 83            [24] 3436 	mov	dph,r3
      003EFC 8C F0            [24] 3437 	mov	b,r4
      003EFE 12 27 C3         [24] 3438 	lcall	_stack_pop
      003F01 AB 82            [24] 3439 	mov	r3,dpl
      003F03 AC 83            [24] 3440 	mov	r4,dph
      003F05 15 81            [12] 3441 	dec	sp
      003F07 15 81            [12] 3442 	dec	sp
      003F09 15 81            [12] 3443 	dec	sp
      003F0B EB               [12] 3444 	mov	a,r3
      003F0C 4C               [12] 3445 	orl	a,r4
      003F0D 70 4A            [24] 3446 	jnz	00162$
                                   3447 ;	calc.c:180: (void)stack_push(ctx->ps, d0);
      003F0F E5 08            [12] 3448 	mov	a,_bp
      003F11 24 08            [12] 3449 	add	a,#0x08
      003F13 F8               [12] 3450 	mov	r0,a
      003F14 86 82            [24] 3451 	mov	dpl,@r0
      003F16 08               [12] 3452 	inc	r0
      003F17 86 83            [24] 3453 	mov	dph,@r0
      003F19 08               [12] 3454 	inc	r0
      003F1A 86 F0            [24] 3455 	mov	b,@r0
      003F1C 12 66 39         [24] 3456 	lcall	__gptrget
      003F1F FA               [12] 3457 	mov	r2,a
      003F20 A3               [24] 3458 	inc	dptr
      003F21 12 66 39         [24] 3459 	lcall	__gptrget
      003F24 FB               [12] 3460 	mov	r3,a
      003F25 A3               [24] 3461 	inc	dptr
      003F26 12 66 39         [24] 3462 	lcall	__gptrget
      003F29 FC               [12] 3463 	mov	r4,a
      003F2A E5 08            [12] 3464 	mov	a,_bp
      003F2C 24 1A            [12] 3465 	add	a,#0x1a
      003F2E F8               [12] 3466 	mov	r0,a
      003F2F E6               [12] 3467 	mov	a,@r0
      003F30 C0 E0            [24] 3468 	push	acc
      003F32 08               [12] 3469 	inc	r0
      003F33 E6               [12] 3470 	mov	a,@r0
      003F34 C0 E0            [24] 3471 	push	acc
      003F36 08               [12] 3472 	inc	r0
      003F37 E6               [12] 3473 	mov	a,@r0
      003F38 C0 E0            [24] 3474 	push	acc
      003F3A 08               [12] 3475 	inc	r0
      003F3B E6               [12] 3476 	mov	a,@r0
      003F3C C0 E0            [24] 3477 	push	acc
      003F3E 8A 82            [24] 3478 	mov	dpl,r2
      003F40 8B 83            [24] 3479 	mov	dph,r3
      003F42 8C F0            [24] 3480 	mov	b,r4
      003F44 12 26 F5         [24] 3481 	lcall	_stack_push
      003F47 E5 81            [12] 3482 	mov	a,sp
      003F49 24 FC            [12] 3483 	add	a,#0xfc
      003F4B F5 81            [12] 3484 	mov	sp,a
                                   3485 ;	calc.c:181: printstr("\r\nstack underflow\r\n");
      003F4D 90 7F 08         [24] 3486 	mov	dptr,#___str_10
      003F50 75 F0 80         [24] 3487 	mov	b,#0x80
      003F53 12 5F 35         [24] 3488 	lcall	_printstr
      003F56 02 4F BE         [24] 3489 	ljmp	00249$
      003F59                       3490 00162$:
                                   3491 ;	calc.c:183: d1 -= d0;
      003F59 E5 08            [12] 3492 	mov	a,_bp
      003F5B 24 1E            [12] 3493 	add	a,#0x1e
      003F5D F8               [12] 3494 	mov	r0,a
      003F5E E5 08            [12] 3495 	mov	a,_bp
      003F60 24 1A            [12] 3496 	add	a,#0x1a
      003F62 F9               [12] 3497 	mov	r1,a
      003F63 E6               [12] 3498 	mov	a,@r0
      003F64 C3               [12] 3499 	clr	c
      003F65 97               [12] 3500 	subb	a,@r1
      003F66 F6               [12] 3501 	mov	@r0,a
      003F67 08               [12] 3502 	inc	r0
      003F68 E6               [12] 3503 	mov	a,@r0
      003F69 09               [12] 3504 	inc	r1
      003F6A 97               [12] 3505 	subb	a,@r1
      003F6B F6               [12] 3506 	mov	@r0,a
      003F6C 08               [12] 3507 	inc	r0
      003F6D E6               [12] 3508 	mov	a,@r0
      003F6E 09               [12] 3509 	inc	r1
      003F6F 97               [12] 3510 	subb	a,@r1
      003F70 F6               [12] 3511 	mov	@r0,a
      003F71 08               [12] 3512 	inc	r0
      003F72 E6               [12] 3513 	mov	a,@r0
      003F73 09               [12] 3514 	inc	r1
      003F74 97               [12] 3515 	subb	a,@r1
      003F75 F6               [12] 3516 	mov	@r0,a
                                   3517 ;	calc.c:184: (void)stack_push(ctx->ps, d1);
      003F76 E5 08            [12] 3518 	mov	a,_bp
      003F78 24 08            [12] 3519 	add	a,#0x08
      003F7A F8               [12] 3520 	mov	r0,a
      003F7B 86 82            [24] 3521 	mov	dpl,@r0
      003F7D 08               [12] 3522 	inc	r0
      003F7E 86 83            [24] 3523 	mov	dph,@r0
      003F80 08               [12] 3524 	inc	r0
      003F81 86 F0            [24] 3525 	mov	b,@r0
      003F83 12 66 39         [24] 3526 	lcall	__gptrget
      003F86 FA               [12] 3527 	mov	r2,a
      003F87 A3               [24] 3528 	inc	dptr
      003F88 12 66 39         [24] 3529 	lcall	__gptrget
      003F8B FB               [12] 3530 	mov	r3,a
      003F8C A3               [24] 3531 	inc	dptr
      003F8D 12 66 39         [24] 3532 	lcall	__gptrget
      003F90 FC               [12] 3533 	mov	r4,a
      003F91 E5 08            [12] 3534 	mov	a,_bp
      003F93 24 1E            [12] 3535 	add	a,#0x1e
      003F95 F8               [12] 3536 	mov	r0,a
      003F96 E6               [12] 3537 	mov	a,@r0
      003F97 C0 E0            [24] 3538 	push	acc
      003F99 08               [12] 3539 	inc	r0
      003F9A E6               [12] 3540 	mov	a,@r0
      003F9B C0 E0            [24] 3541 	push	acc
      003F9D 08               [12] 3542 	inc	r0
      003F9E E6               [12] 3543 	mov	a,@r0
      003F9F C0 E0            [24] 3544 	push	acc
      003FA1 08               [12] 3545 	inc	r0
      003FA2 E6               [12] 3546 	mov	a,@r0
      003FA3 C0 E0            [24] 3547 	push	acc
      003FA5 8A 82            [24] 3548 	mov	dpl,r2
      003FA7 8B 83            [24] 3549 	mov	dph,r3
      003FA9 8C F0            [24] 3550 	mov	b,r4
      003FAB 12 26 F5         [24] 3551 	lcall	_stack_push
      003FAE E5 81            [12] 3552 	mov	a,sp
      003FB0 24 FC            [12] 3553 	add	a,#0xfc
      003FB2 F5 81            [12] 3554 	mov	sp,a
                                   3555 ;	calc.c:186: break;
      003FB4 02 4F BE         [24] 3556 	ljmp	00249$
                                   3557 ;	calc.c:187: case '*':
      003FB7                       3558 00167$:
                                   3559 ;	calc.c:188: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003FB7 E5 08            [12] 3560 	mov	a,_bp
      003FB9 24 1A            [12] 3561 	add	a,#0x1a
      003FBB FF               [12] 3562 	mov	r7,a
      003FBC 7E 00            [12] 3563 	mov	r6,#0x00
      003FBE 7D 40            [12] 3564 	mov	r5,#0x40
      003FC0 E5 08            [12] 3565 	mov	a,_bp
      003FC2 24 17            [12] 3566 	add	a,#0x17
      003FC4 F8               [12] 3567 	mov	r0,a
      003FC5 E5 08            [12] 3568 	mov	a,_bp
      003FC7 24 08            [12] 3569 	add	a,#0x08
      003FC9 F9               [12] 3570 	mov	r1,a
      003FCA 74 11            [12] 3571 	mov	a,#0x11
      003FCC 26               [12] 3572 	add	a,@r0
      003FCD F7               [12] 3573 	mov	@r1,a
      003FCE 74 40            [12] 3574 	mov	a,#0x40
      003FD0 08               [12] 3575 	inc	r0
      003FD1 36               [12] 3576 	addc	a,@r0
      003FD2 09               [12] 3577 	inc	r1
      003FD3 F7               [12] 3578 	mov	@r1,a
      003FD4 08               [12] 3579 	inc	r0
      003FD5 09               [12] 3580 	inc	r1
      003FD6 E6               [12] 3581 	mov	a,@r0
      003FD7 F7               [12] 3582 	mov	@r1,a
      003FD8 E5 08            [12] 3583 	mov	a,_bp
      003FDA 24 08            [12] 3584 	add	a,#0x08
      003FDC F8               [12] 3585 	mov	r0,a
      003FDD 86 82            [24] 3586 	mov	dpl,@r0
      003FDF 08               [12] 3587 	inc	r0
      003FE0 86 83            [24] 3588 	mov	dph,@r0
      003FE2 08               [12] 3589 	inc	r0
      003FE3 86 F0            [24] 3590 	mov	b,@r0
      003FE5 12 66 39         [24] 3591 	lcall	__gptrget
      003FE8 FA               [12] 3592 	mov	r2,a
      003FE9 A3               [24] 3593 	inc	dptr
      003FEA 12 66 39         [24] 3594 	lcall	__gptrget
      003FED FB               [12] 3595 	mov	r3,a
      003FEE A3               [24] 3596 	inc	dptr
      003FEF 12 66 39         [24] 3597 	lcall	__gptrget
      003FF2 FC               [12] 3598 	mov	r4,a
      003FF3 C0 07            [24] 3599 	push	ar7
      003FF5 C0 06            [24] 3600 	push	ar6
      003FF7 C0 05            [24] 3601 	push	ar5
      003FF9 8A 82            [24] 3602 	mov	dpl,r2
      003FFB 8B 83            [24] 3603 	mov	dph,r3
      003FFD 8C F0            [24] 3604 	mov	b,r4
      003FFF 12 27 C3         [24] 3605 	lcall	_stack_pop
      004002 AB 82            [24] 3606 	mov	r3,dpl
      004004 AC 83            [24] 3607 	mov	r4,dph
      004006 15 81            [12] 3608 	dec	sp
      004008 15 81            [12] 3609 	dec	sp
      00400A 15 81            [12] 3610 	dec	sp
      00400C EB               [12] 3611 	mov	a,r3
      00400D 4C               [12] 3612 	orl	a,r4
      00400E 70 0C            [24] 3613 	jnz	00172$
      004010 90 7F 08         [24] 3614 	mov	dptr,#___str_10
      004013 75 F0 80         [24] 3615 	mov	b,#0x80
      004016 12 5F 35         [24] 3616 	lcall	_printstr
      004019 02 4F BE         [24] 3617 	ljmp	00249$
      00401C                       3618 00172$:
                                   3619 ;	calc.c:189: else if (!stack_pop(ctx->ps, &d1)) {
      00401C E5 08            [12] 3620 	mov	a,_bp
      00401E 24 1E            [12] 3621 	add	a,#0x1e
      004020 FF               [12] 3622 	mov	r7,a
      004021 7E 00            [12] 3623 	mov	r6,#0x00
      004023 7D 40            [12] 3624 	mov	r5,#0x40
      004025 E5 08            [12] 3625 	mov	a,_bp
      004027 24 08            [12] 3626 	add	a,#0x08
      004029 F8               [12] 3627 	mov	r0,a
      00402A 86 82            [24] 3628 	mov	dpl,@r0
      00402C 08               [12] 3629 	inc	r0
      00402D 86 83            [24] 3630 	mov	dph,@r0
      00402F 08               [12] 3631 	inc	r0
      004030 86 F0            [24] 3632 	mov	b,@r0
      004032 12 66 39         [24] 3633 	lcall	__gptrget
      004035 FA               [12] 3634 	mov	r2,a
      004036 A3               [24] 3635 	inc	dptr
      004037 12 66 39         [24] 3636 	lcall	__gptrget
      00403A FB               [12] 3637 	mov	r3,a
      00403B A3               [24] 3638 	inc	dptr
      00403C 12 66 39         [24] 3639 	lcall	__gptrget
      00403F FC               [12] 3640 	mov	r4,a
      004040 C0 07            [24] 3641 	push	ar7
      004042 C0 06            [24] 3642 	push	ar6
      004044 C0 05            [24] 3643 	push	ar5
      004046 8A 82            [24] 3644 	mov	dpl,r2
      004048 8B 83            [24] 3645 	mov	dph,r3
      00404A 8C F0            [24] 3646 	mov	b,r4
      00404C 12 27 C3         [24] 3647 	lcall	_stack_pop
      00404F AB 82            [24] 3648 	mov	r3,dpl
      004051 AC 83            [24] 3649 	mov	r4,dph
      004053 15 81            [12] 3650 	dec	sp
      004055 15 81            [12] 3651 	dec	sp
      004057 15 81            [12] 3652 	dec	sp
      004059 EB               [12] 3653 	mov	a,r3
      00405A 4C               [12] 3654 	orl	a,r4
      00405B 70 4A            [24] 3655 	jnz	00169$
                                   3656 ;	calc.c:190: (void)stack_push(ctx->ps, d0);
      00405D E5 08            [12] 3657 	mov	a,_bp
      00405F 24 08            [12] 3658 	add	a,#0x08
      004061 F8               [12] 3659 	mov	r0,a
      004062 86 82            [24] 3660 	mov	dpl,@r0
      004064 08               [12] 3661 	inc	r0
      004065 86 83            [24] 3662 	mov	dph,@r0
      004067 08               [12] 3663 	inc	r0
      004068 86 F0            [24] 3664 	mov	b,@r0
      00406A 12 66 39         [24] 3665 	lcall	__gptrget
      00406D FA               [12] 3666 	mov	r2,a
      00406E A3               [24] 3667 	inc	dptr
      00406F 12 66 39         [24] 3668 	lcall	__gptrget
      004072 FB               [12] 3669 	mov	r3,a
      004073 A3               [24] 3670 	inc	dptr
      004074 12 66 39         [24] 3671 	lcall	__gptrget
      004077 FC               [12] 3672 	mov	r4,a
      004078 E5 08            [12] 3673 	mov	a,_bp
      00407A 24 1A            [12] 3674 	add	a,#0x1a
      00407C F8               [12] 3675 	mov	r0,a
      00407D E6               [12] 3676 	mov	a,@r0
      00407E C0 E0            [24] 3677 	push	acc
      004080 08               [12] 3678 	inc	r0
      004081 E6               [12] 3679 	mov	a,@r0
      004082 C0 E0            [24] 3680 	push	acc
      004084 08               [12] 3681 	inc	r0
      004085 E6               [12] 3682 	mov	a,@r0
      004086 C0 E0            [24] 3683 	push	acc
      004088 08               [12] 3684 	inc	r0
      004089 E6               [12] 3685 	mov	a,@r0
      00408A C0 E0            [24] 3686 	push	acc
      00408C 8A 82            [24] 3687 	mov	dpl,r2
      00408E 8B 83            [24] 3688 	mov	dph,r3
      004090 8C F0            [24] 3689 	mov	b,r4
      004092 12 26 F5         [24] 3690 	lcall	_stack_push
      004095 E5 81            [12] 3691 	mov	a,sp
      004097 24 FC            [12] 3692 	add	a,#0xfc
      004099 F5 81            [12] 3693 	mov	sp,a
                                   3694 ;	calc.c:191: printstr("\r\nstack underflow\r\n");
      00409B 90 7F 08         [24] 3695 	mov	dptr,#___str_10
      00409E 75 F0 80         [24] 3696 	mov	b,#0x80
      0040A1 12 5F 35         [24] 3697 	lcall	_printstr
      0040A4 02 4F BE         [24] 3698 	ljmp	00249$
      0040A7                       3699 00169$:
                                   3700 ;	calc.c:193: d1 *= d0;
      0040A7 E5 08            [12] 3701 	mov	a,_bp
      0040A9 24 1A            [12] 3702 	add	a,#0x1a
      0040AB F8               [12] 3703 	mov	r0,a
      0040AC E6               [12] 3704 	mov	a,@r0
      0040AD C0 E0            [24] 3705 	push	acc
      0040AF 08               [12] 3706 	inc	r0
      0040B0 E6               [12] 3707 	mov	a,@r0
      0040B1 C0 E0            [24] 3708 	push	acc
      0040B3 08               [12] 3709 	inc	r0
      0040B4 E6               [12] 3710 	mov	a,@r0
      0040B5 C0 E0            [24] 3711 	push	acc
      0040B7 08               [12] 3712 	inc	r0
      0040B8 E6               [12] 3713 	mov	a,@r0
      0040B9 C0 E0            [24] 3714 	push	acc
      0040BB E5 08            [12] 3715 	mov	a,_bp
      0040BD 24 1E            [12] 3716 	add	a,#0x1e
      0040BF F8               [12] 3717 	mov	r0,a
      0040C0 86 82            [24] 3718 	mov	dpl,@r0
      0040C2 08               [12] 3719 	inc	r0
      0040C3 86 83            [24] 3720 	mov	dph,@r0
      0040C5 08               [12] 3721 	inc	r0
      0040C6 86 F0            [24] 3722 	mov	b,@r0
      0040C8 08               [12] 3723 	inc	r0
      0040C9 E6               [12] 3724 	mov	a,@r0
      0040CA 12 6A 32         [24] 3725 	lcall	__mullong
      0040CD AF 82            [24] 3726 	mov	r7,dpl
      0040CF AE 83            [24] 3727 	mov	r6,dph
      0040D1 AD F0            [24] 3728 	mov	r5,b
      0040D3 FC               [12] 3729 	mov	r4,a
      0040D4 E5 81            [12] 3730 	mov	a,sp
      0040D6 24 FC            [12] 3731 	add	a,#0xfc
      0040D8 F5 81            [12] 3732 	mov	sp,a
      0040DA E5 08            [12] 3733 	mov	a,_bp
      0040DC 24 1E            [12] 3734 	add	a,#0x1e
      0040DE F8               [12] 3735 	mov	r0,a
      0040DF A6 07            [24] 3736 	mov	@r0,ar7
      0040E1 08               [12] 3737 	inc	r0
      0040E2 A6 06            [24] 3738 	mov	@r0,ar6
      0040E4 08               [12] 3739 	inc	r0
      0040E5 A6 05            [24] 3740 	mov	@r0,ar5
      0040E7 08               [12] 3741 	inc	r0
      0040E8 A6 04            [24] 3742 	mov	@r0,ar4
                                   3743 ;	calc.c:194: (void)stack_push(ctx->ps, d1);
      0040EA E5 08            [12] 3744 	mov	a,_bp
      0040EC 24 08            [12] 3745 	add	a,#0x08
      0040EE F8               [12] 3746 	mov	r0,a
      0040EF 86 82            [24] 3747 	mov	dpl,@r0
      0040F1 08               [12] 3748 	inc	r0
      0040F2 86 83            [24] 3749 	mov	dph,@r0
      0040F4 08               [12] 3750 	inc	r0
      0040F5 86 F0            [24] 3751 	mov	b,@r0
      0040F7 12 66 39         [24] 3752 	lcall	__gptrget
      0040FA FA               [12] 3753 	mov	r2,a
      0040FB A3               [24] 3754 	inc	dptr
      0040FC 12 66 39         [24] 3755 	lcall	__gptrget
      0040FF FB               [12] 3756 	mov	r3,a
      004100 A3               [24] 3757 	inc	dptr
      004101 12 66 39         [24] 3758 	lcall	__gptrget
      004104 FC               [12] 3759 	mov	r4,a
      004105 E5 08            [12] 3760 	mov	a,_bp
      004107 24 1E            [12] 3761 	add	a,#0x1e
      004109 F8               [12] 3762 	mov	r0,a
      00410A E6               [12] 3763 	mov	a,@r0
      00410B C0 E0            [24] 3764 	push	acc
      00410D 08               [12] 3765 	inc	r0
      00410E E6               [12] 3766 	mov	a,@r0
      00410F C0 E0            [24] 3767 	push	acc
      004111 08               [12] 3768 	inc	r0
      004112 E6               [12] 3769 	mov	a,@r0
      004113 C0 E0            [24] 3770 	push	acc
      004115 08               [12] 3771 	inc	r0
      004116 E6               [12] 3772 	mov	a,@r0
      004117 C0 E0            [24] 3773 	push	acc
      004119 8A 82            [24] 3774 	mov	dpl,r2
      00411B 8B 83            [24] 3775 	mov	dph,r3
      00411D 8C F0            [24] 3776 	mov	b,r4
      00411F 12 26 F5         [24] 3777 	lcall	_stack_push
      004122 E5 81            [12] 3778 	mov	a,sp
      004124 24 FC            [12] 3779 	add	a,#0xfc
      004126 F5 81            [12] 3780 	mov	sp,a
                                   3781 ;	calc.c:196: break;
      004128 02 4F BE         [24] 3782 	ljmp	00249$
                                   3783 ;	calc.c:198: case '\\':
      00412B                       3784 00175$:
                                   3785 ;	calc.c:199: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00412B C0 05            [24] 3786 	push	ar5
      00412D C0 06            [24] 3787 	push	ar6
      00412F C0 07            [24] 3788 	push	ar7
      004131 E5 08            [12] 3789 	mov	a,_bp
      004133 24 1A            [12] 3790 	add	a,#0x1a
      004135 FC               [12] 3791 	mov	r4,a
      004136 7B 00            [12] 3792 	mov	r3,#0x00
      004138 7A 40            [12] 3793 	mov	r2,#0x40
      00413A E5 08            [12] 3794 	mov	a,_bp
      00413C 24 17            [12] 3795 	add	a,#0x17
      00413E F8               [12] 3796 	mov	r0,a
      00413F E5 08            [12] 3797 	mov	a,_bp
      004141 24 0B            [12] 3798 	add	a,#0x0b
      004143 F9               [12] 3799 	mov	r1,a
      004144 74 11            [12] 3800 	mov	a,#0x11
      004146 26               [12] 3801 	add	a,@r0
      004147 F7               [12] 3802 	mov	@r1,a
      004148 74 40            [12] 3803 	mov	a,#0x40
      00414A 08               [12] 3804 	inc	r0
      00414B 36               [12] 3805 	addc	a,@r0
      00414C 09               [12] 3806 	inc	r1
      00414D F7               [12] 3807 	mov	@r1,a
      00414E 08               [12] 3808 	inc	r0
      00414F 09               [12] 3809 	inc	r1
      004150 E6               [12] 3810 	mov	a,@r0
      004151 F7               [12] 3811 	mov	@r1,a
      004152 E5 08            [12] 3812 	mov	a,_bp
      004154 24 0B            [12] 3813 	add	a,#0x0b
      004156 F8               [12] 3814 	mov	r0,a
      004157 86 82            [24] 3815 	mov	dpl,@r0
      004159 08               [12] 3816 	inc	r0
      00415A 86 83            [24] 3817 	mov	dph,@r0
      00415C 08               [12] 3818 	inc	r0
      00415D 86 F0            [24] 3819 	mov	b,@r0
      00415F 12 66 39         [24] 3820 	lcall	__gptrget
      004162 FD               [12] 3821 	mov	r5,a
      004163 A3               [24] 3822 	inc	dptr
      004164 12 66 39         [24] 3823 	lcall	__gptrget
      004167 FE               [12] 3824 	mov	r6,a
      004168 A3               [24] 3825 	inc	dptr
      004169 12 66 39         [24] 3826 	lcall	__gptrget
      00416C FF               [12] 3827 	mov	r7,a
      00416D C0 05            [24] 3828 	push	ar5
      00416F C0 04            [24] 3829 	push	ar4
      004171 C0 03            [24] 3830 	push	ar3
      004173 C0 02            [24] 3831 	push	ar2
      004175 8D 82            [24] 3832 	mov	dpl,r5
      004177 8E 83            [24] 3833 	mov	dph,r6
      004179 8F F0            [24] 3834 	mov	b,r7
      00417B 12 27 C3         [24] 3835 	lcall	_stack_pop
      00417E AE 82            [24] 3836 	mov	r6,dpl
      004180 AF 83            [24] 3837 	mov	r7,dph
      004182 15 81            [12] 3838 	dec	sp
      004184 15 81            [12] 3839 	dec	sp
      004186 15 81            [12] 3840 	dec	sp
      004188 D0 05            [24] 3841 	pop	ar5
      00418A EE               [12] 3842 	mov	a,r6
      00418B 4F               [12] 3843 	orl	a,r7
      00418C D0 07            [24] 3844 	pop	ar7
      00418E D0 06            [24] 3845 	pop	ar6
      004190 D0 05            [24] 3846 	pop	ar5
      004192 70 0C            [24] 3847 	jnz	00186$
      004194 90 7F 08         [24] 3848 	mov	dptr,#___str_10
      004197 75 F0 80         [24] 3849 	mov	b,#0x80
      00419A 12 5F 35         [24] 3850 	lcall	_printstr
      00419D 02 4F BE         [24] 3851 	ljmp	00249$
      0041A0                       3852 00186$:
                                   3853 ;	calc.c:200: else if (!stack_pop(ctx->ps, &d1)) {
      0041A0 C0 05            [24] 3854 	push	ar5
      0041A2 C0 06            [24] 3855 	push	ar6
      0041A4 C0 07            [24] 3856 	push	ar7
      0041A6 E5 08            [12] 3857 	mov	a,_bp
      0041A8 24 1E            [12] 3858 	add	a,#0x1e
      0041AA FC               [12] 3859 	mov	r4,a
      0041AB 7B 00            [12] 3860 	mov	r3,#0x00
      0041AD 7A 40            [12] 3861 	mov	r2,#0x40
      0041AF E5 08            [12] 3862 	mov	a,_bp
      0041B1 24 0B            [12] 3863 	add	a,#0x0b
      0041B3 F8               [12] 3864 	mov	r0,a
      0041B4 86 82            [24] 3865 	mov	dpl,@r0
      0041B6 08               [12] 3866 	inc	r0
      0041B7 86 83            [24] 3867 	mov	dph,@r0
      0041B9 08               [12] 3868 	inc	r0
      0041BA 86 F0            [24] 3869 	mov	b,@r0
      0041BC 12 66 39         [24] 3870 	lcall	__gptrget
      0041BF FD               [12] 3871 	mov	r5,a
      0041C0 A3               [24] 3872 	inc	dptr
      0041C1 12 66 39         [24] 3873 	lcall	__gptrget
      0041C4 FE               [12] 3874 	mov	r6,a
      0041C5 A3               [24] 3875 	inc	dptr
      0041C6 12 66 39         [24] 3876 	lcall	__gptrget
      0041C9 FF               [12] 3877 	mov	r7,a
      0041CA C0 05            [24] 3878 	push	ar5
      0041CC C0 04            [24] 3879 	push	ar4
      0041CE C0 03            [24] 3880 	push	ar3
      0041D0 C0 02            [24] 3881 	push	ar2
      0041D2 8D 82            [24] 3882 	mov	dpl,r5
      0041D4 8E 83            [24] 3883 	mov	dph,r6
      0041D6 8F F0            [24] 3884 	mov	b,r7
      0041D8 12 27 C3         [24] 3885 	lcall	_stack_pop
      0041DB AE 82            [24] 3886 	mov	r6,dpl
      0041DD AF 83            [24] 3887 	mov	r7,dph
      0041DF 15 81            [12] 3888 	dec	sp
      0041E1 15 81            [12] 3889 	dec	sp
      0041E3 15 81            [12] 3890 	dec	sp
      0041E5 D0 05            [24] 3891 	pop	ar5
      0041E7 EE               [12] 3892 	mov	a,r6
      0041E8 4F               [12] 3893 	orl	a,r7
      0041E9 D0 07            [24] 3894 	pop	ar7
      0041EB D0 06            [24] 3895 	pop	ar6
      0041ED D0 05            [24] 3896 	pop	ar5
      0041EF 70 4A            [24] 3897 	jnz	00183$
                                   3898 ;	calc.c:201: (void)stack_push(ctx->ps, d0);
      0041F1 E5 08            [12] 3899 	mov	a,_bp
      0041F3 24 0B            [12] 3900 	add	a,#0x0b
      0041F5 F8               [12] 3901 	mov	r0,a
      0041F6 86 82            [24] 3902 	mov	dpl,@r0
      0041F8 08               [12] 3903 	inc	r0
      0041F9 86 83            [24] 3904 	mov	dph,@r0
      0041FB 08               [12] 3905 	inc	r0
      0041FC 86 F0            [24] 3906 	mov	b,@r0
      0041FE 12 66 39         [24] 3907 	lcall	__gptrget
      004201 FA               [12] 3908 	mov	r2,a
      004202 A3               [24] 3909 	inc	dptr
      004203 12 66 39         [24] 3910 	lcall	__gptrget
      004206 FB               [12] 3911 	mov	r3,a
      004207 A3               [24] 3912 	inc	dptr
      004208 12 66 39         [24] 3913 	lcall	__gptrget
      00420B FC               [12] 3914 	mov	r4,a
      00420C E5 08            [12] 3915 	mov	a,_bp
      00420E 24 1A            [12] 3916 	add	a,#0x1a
      004210 F8               [12] 3917 	mov	r0,a
      004211 E6               [12] 3918 	mov	a,@r0
      004212 C0 E0            [24] 3919 	push	acc
      004214 08               [12] 3920 	inc	r0
      004215 E6               [12] 3921 	mov	a,@r0
      004216 C0 E0            [24] 3922 	push	acc
      004218 08               [12] 3923 	inc	r0
      004219 E6               [12] 3924 	mov	a,@r0
      00421A C0 E0            [24] 3925 	push	acc
      00421C 08               [12] 3926 	inc	r0
      00421D E6               [12] 3927 	mov	a,@r0
      00421E C0 E0            [24] 3928 	push	acc
      004220 8A 82            [24] 3929 	mov	dpl,r2
      004222 8B 83            [24] 3930 	mov	dph,r3
      004224 8C F0            [24] 3931 	mov	b,r4
      004226 12 26 F5         [24] 3932 	lcall	_stack_push
      004229 E5 81            [12] 3933 	mov	a,sp
      00422B 24 FC            [12] 3934 	add	a,#0xfc
      00422D F5 81            [12] 3935 	mov	sp,a
                                   3936 ;	calc.c:202: printstr("\r\nstack underflow\r\n");
      00422F 90 7F 08         [24] 3937 	mov	dptr,#___str_10
      004232 75 F0 80         [24] 3938 	mov	b,#0x80
      004235 12 5F 35         [24] 3939 	lcall	_printstr
      004238 02 4F BE         [24] 3940 	ljmp	00249$
      00423B                       3941 00183$:
                                   3942 ;	calc.c:203: } else if (!d0) {
      00423B E5 08            [12] 3943 	mov	a,_bp
      00423D 24 1A            [12] 3944 	add	a,#0x1a
      00423F F8               [12] 3945 	mov	r0,a
      004240 E6               [12] 3946 	mov	a,@r0
      004241 08               [12] 3947 	inc	r0
      004242 46               [12] 3948 	orl	a,@r0
      004243 08               [12] 3949 	inc	r0
      004244 46               [12] 3950 	orl	a,@r0
      004245 08               [12] 3951 	inc	r0
      004246 46               [12] 3952 	orl	a,@r0
      004247 60 03            [24] 3953 	jz	00575$
      004249 02 42 D4         [24] 3954 	ljmp	00180$
      00424C                       3955 00575$:
                                   3956 ;	calc.c:204: (void)stack_push(ctx->ps, d1);
      00424C E5 08            [12] 3957 	mov	a,_bp
      00424E 24 0B            [12] 3958 	add	a,#0x0b
      004250 F8               [12] 3959 	mov	r0,a
      004251 86 82            [24] 3960 	mov	dpl,@r0
      004253 08               [12] 3961 	inc	r0
      004254 86 83            [24] 3962 	mov	dph,@r0
      004256 08               [12] 3963 	inc	r0
      004257 86 F0            [24] 3964 	mov	b,@r0
      004259 12 66 39         [24] 3965 	lcall	__gptrget
      00425C FA               [12] 3966 	mov	r2,a
      00425D A3               [24] 3967 	inc	dptr
      00425E 12 66 39         [24] 3968 	lcall	__gptrget
      004261 FB               [12] 3969 	mov	r3,a
      004262 A3               [24] 3970 	inc	dptr
      004263 12 66 39         [24] 3971 	lcall	__gptrget
      004266 FC               [12] 3972 	mov	r4,a
      004267 E5 08            [12] 3973 	mov	a,_bp
      004269 24 1E            [12] 3974 	add	a,#0x1e
      00426B F8               [12] 3975 	mov	r0,a
      00426C E6               [12] 3976 	mov	a,@r0
      00426D C0 E0            [24] 3977 	push	acc
      00426F 08               [12] 3978 	inc	r0
      004270 E6               [12] 3979 	mov	a,@r0
      004271 C0 E0            [24] 3980 	push	acc
      004273 08               [12] 3981 	inc	r0
      004274 E6               [12] 3982 	mov	a,@r0
      004275 C0 E0            [24] 3983 	push	acc
      004277 08               [12] 3984 	inc	r0
      004278 E6               [12] 3985 	mov	a,@r0
      004279 C0 E0            [24] 3986 	push	acc
      00427B 8A 82            [24] 3987 	mov	dpl,r2
      00427D 8B 83            [24] 3988 	mov	dph,r3
      00427F 8C F0            [24] 3989 	mov	b,r4
      004281 12 26 F5         [24] 3990 	lcall	_stack_push
      004284 E5 81            [12] 3991 	mov	a,sp
      004286 24 FC            [12] 3992 	add	a,#0xfc
      004288 F5 81            [12] 3993 	mov	sp,a
                                   3994 ;	calc.c:205: (void)stack_push(ctx->ps, d0);			
      00428A E5 08            [12] 3995 	mov	a,_bp
      00428C 24 0B            [12] 3996 	add	a,#0x0b
      00428E F8               [12] 3997 	mov	r0,a
      00428F 86 82            [24] 3998 	mov	dpl,@r0
      004291 08               [12] 3999 	inc	r0
      004292 86 83            [24] 4000 	mov	dph,@r0
      004294 08               [12] 4001 	inc	r0
      004295 86 F0            [24] 4002 	mov	b,@r0
      004297 12 66 39         [24] 4003 	lcall	__gptrget
      00429A FA               [12] 4004 	mov	r2,a
      00429B A3               [24] 4005 	inc	dptr
      00429C 12 66 39         [24] 4006 	lcall	__gptrget
      00429F FB               [12] 4007 	mov	r3,a
      0042A0 A3               [24] 4008 	inc	dptr
      0042A1 12 66 39         [24] 4009 	lcall	__gptrget
      0042A4 FC               [12] 4010 	mov	r4,a
      0042A5 E5 08            [12] 4011 	mov	a,_bp
      0042A7 24 1A            [12] 4012 	add	a,#0x1a
      0042A9 F8               [12] 4013 	mov	r0,a
      0042AA E6               [12] 4014 	mov	a,@r0
      0042AB C0 E0            [24] 4015 	push	acc
      0042AD 08               [12] 4016 	inc	r0
      0042AE E6               [12] 4017 	mov	a,@r0
      0042AF C0 E0            [24] 4018 	push	acc
      0042B1 08               [12] 4019 	inc	r0
      0042B2 E6               [12] 4020 	mov	a,@r0
      0042B3 C0 E0            [24] 4021 	push	acc
      0042B5 08               [12] 4022 	inc	r0
      0042B6 E6               [12] 4023 	mov	a,@r0
      0042B7 C0 E0            [24] 4024 	push	acc
      0042B9 8A 82            [24] 4025 	mov	dpl,r2
      0042BB 8B 83            [24] 4026 	mov	dph,r3
      0042BD 8C F0            [24] 4027 	mov	b,r4
      0042BF 12 26 F5         [24] 4028 	lcall	_stack_push
      0042C2 E5 81            [12] 4029 	mov	a,sp
      0042C4 24 FC            [12] 4030 	add	a,#0xfc
      0042C6 F5 81            [12] 4031 	mov	sp,a
                                   4032 ;	calc.c:206: printstr("\r\ndivision by zero\r\n");
      0042C8 90 7F 6A         [24] 4033 	mov	dptr,#___str_14
      0042CB 75 F0 80         [24] 4034 	mov	b,#0x80
      0042CE 12 5F 35         [24] 4035 	lcall	_printstr
      0042D1 02 4F BE         [24] 4036 	ljmp	00249$
      0042D4                       4037 00180$:
                                   4038 ;	calc.c:208: if (ctx->digit[0] == '/') d1 /= d0;
      0042D4 8D 82            [24] 4039 	mov	dpl,r5
      0042D6 8E 83            [24] 4040 	mov	dph,r6
      0042D8 8F F0            [24] 4041 	mov	b,r7
      0042DA 12 66 39         [24] 4042 	lcall	__gptrget
      0042DD FC               [12] 4043 	mov	r4,a
      0042DE BC 2F 45         [24] 4044 	cjne	r4,#0x2f,00177$
      0042E1 E5 08            [12] 4045 	mov	a,_bp
      0042E3 24 1A            [12] 4046 	add	a,#0x1a
      0042E5 F8               [12] 4047 	mov	r0,a
      0042E6 E6               [12] 4048 	mov	a,@r0
      0042E7 C0 E0            [24] 4049 	push	acc
      0042E9 08               [12] 4050 	inc	r0
      0042EA E6               [12] 4051 	mov	a,@r0
      0042EB C0 E0            [24] 4052 	push	acc
      0042ED 08               [12] 4053 	inc	r0
      0042EE E6               [12] 4054 	mov	a,@r0
      0042EF C0 E0            [24] 4055 	push	acc
      0042F1 08               [12] 4056 	inc	r0
      0042F2 E6               [12] 4057 	mov	a,@r0
      0042F3 C0 E0            [24] 4058 	push	acc
      0042F5 E5 08            [12] 4059 	mov	a,_bp
      0042F7 24 1E            [12] 4060 	add	a,#0x1e
      0042F9 F8               [12] 4061 	mov	r0,a
      0042FA 86 82            [24] 4062 	mov	dpl,@r0
      0042FC 08               [12] 4063 	inc	r0
      0042FD 86 83            [24] 4064 	mov	dph,@r0
      0042FF 08               [12] 4065 	inc	r0
      004300 86 F0            [24] 4066 	mov	b,@r0
      004302 08               [12] 4067 	inc	r0
      004303 E6               [12] 4068 	mov	a,@r0
      004304 12 64 30         [24] 4069 	lcall	__divslong
      004307 AF 82            [24] 4070 	mov	r7,dpl
      004309 AE 83            [24] 4071 	mov	r6,dph
      00430B AD F0            [24] 4072 	mov	r5,b
      00430D FC               [12] 4073 	mov	r4,a
      00430E E5 81            [12] 4074 	mov	a,sp
      004310 24 FC            [12] 4075 	add	a,#0xfc
      004312 F5 81            [12] 4076 	mov	sp,a
      004314 E5 08            [12] 4077 	mov	a,_bp
      004316 24 1E            [12] 4078 	add	a,#0x1e
      004318 F8               [12] 4079 	mov	r0,a
      004319 A6 07            [24] 4080 	mov	@r0,ar7
      00431B 08               [12] 4081 	inc	r0
      00431C A6 06            [24] 4082 	mov	@r0,ar6
      00431E 08               [12] 4083 	inc	r0
      00431F A6 05            [24] 4084 	mov	@r0,ar5
      004321 08               [12] 4085 	inc	r0
      004322 A6 04            [24] 4086 	mov	@r0,ar4
      004324 80 63            [24] 4087 	sjmp	00178$
      004326                       4088 00177$:
                                   4089 ;	calc.c:209: else d1 = (unsigned long)d1 / (unsigned long)d0;
      004326 E5 08            [12] 4090 	mov	a,_bp
      004328 24 1E            [12] 4091 	add	a,#0x1e
      00432A F8               [12] 4092 	mov	r0,a
      00432B 86 07            [24] 4093 	mov	ar7,@r0
      00432D 08               [12] 4094 	inc	r0
      00432E 86 06            [24] 4095 	mov	ar6,@r0
      004330 08               [12] 4096 	inc	r0
      004331 86 05            [24] 4097 	mov	ar5,@r0
      004333 08               [12] 4098 	inc	r0
      004334 86 04            [24] 4099 	mov	ar4,@r0
      004336 E5 08            [12] 4100 	mov	a,_bp
      004338 24 1A            [12] 4101 	add	a,#0x1a
      00433A F8               [12] 4102 	mov	r0,a
      00433B E5 08            [12] 4103 	mov	a,_bp
      00433D 24 13            [12] 4104 	add	a,#0x13
      00433F F9               [12] 4105 	mov	r1,a
      004340 E6               [12] 4106 	mov	a,@r0
      004341 F7               [12] 4107 	mov	@r1,a
      004342 08               [12] 4108 	inc	r0
      004343 09               [12] 4109 	inc	r1
      004344 E6               [12] 4110 	mov	a,@r0
      004345 F7               [12] 4111 	mov	@r1,a
      004346 08               [12] 4112 	inc	r0
      004347 09               [12] 4113 	inc	r1
      004348 E6               [12] 4114 	mov	a,@r0
      004349 F7               [12] 4115 	mov	@r1,a
      00434A 08               [12] 4116 	inc	r0
      00434B 09               [12] 4117 	inc	r1
      00434C E6               [12] 4118 	mov	a,@r0
      00434D F7               [12] 4119 	mov	@r1,a
      00434E E5 08            [12] 4120 	mov	a,_bp
      004350 24 13            [12] 4121 	add	a,#0x13
      004352 F8               [12] 4122 	mov	r0,a
      004353 E6               [12] 4123 	mov	a,@r0
      004354 C0 E0            [24] 4124 	push	acc
      004356 08               [12] 4125 	inc	r0
      004357 E6               [12] 4126 	mov	a,@r0
      004358 C0 E0            [24] 4127 	push	acc
      00435A 08               [12] 4128 	inc	r0
      00435B E6               [12] 4129 	mov	a,@r0
      00435C C0 E0            [24] 4130 	push	acc
      00435E 08               [12] 4131 	inc	r0
      00435F E6               [12] 4132 	mov	a,@r0
      004360 C0 E0            [24] 4133 	push	acc
      004362 8F 82            [24] 4134 	mov	dpl,r7
      004364 8E 83            [24] 4135 	mov	dph,r6
      004366 8D F0            [24] 4136 	mov	b,r5
      004368 EC               [12] 4137 	mov	a,r4
      004369 12 65 2D         [24] 4138 	lcall	__divulong
      00436C AF 82            [24] 4139 	mov	r7,dpl
      00436E AE 83            [24] 4140 	mov	r6,dph
      004370 AD F0            [24] 4141 	mov	r5,b
      004372 FC               [12] 4142 	mov	r4,a
      004373 E5 81            [12] 4143 	mov	a,sp
      004375 24 FC            [12] 4144 	add	a,#0xfc
      004377 F5 81            [12] 4145 	mov	sp,a
      004379 E5 08            [12] 4146 	mov	a,_bp
      00437B 24 1E            [12] 4147 	add	a,#0x1e
      00437D F8               [12] 4148 	mov	r0,a
      00437E A6 07            [24] 4149 	mov	@r0,ar7
      004380 08               [12] 4150 	inc	r0
      004381 A6 06            [24] 4151 	mov	@r0,ar6
      004383 08               [12] 4152 	inc	r0
      004384 A6 05            [24] 4153 	mov	@r0,ar5
      004386 08               [12] 4154 	inc	r0
      004387 A6 04            [24] 4155 	mov	@r0,ar4
      004389                       4156 00178$:
                                   4157 ;	calc.c:210: (void)stack_push(ctx->ps, d1);
      004389 E5 08            [12] 4158 	mov	a,_bp
      00438B 24 0B            [12] 4159 	add	a,#0x0b
      00438D F8               [12] 4160 	mov	r0,a
      00438E 86 82            [24] 4161 	mov	dpl,@r0
      004390 08               [12] 4162 	inc	r0
      004391 86 83            [24] 4163 	mov	dph,@r0
      004393 08               [12] 4164 	inc	r0
      004394 86 F0            [24] 4165 	mov	b,@r0
      004396 12 66 39         [24] 4166 	lcall	__gptrget
      004399 FA               [12] 4167 	mov	r2,a
      00439A A3               [24] 4168 	inc	dptr
      00439B 12 66 39         [24] 4169 	lcall	__gptrget
      00439E FB               [12] 4170 	mov	r3,a
      00439F A3               [24] 4171 	inc	dptr
      0043A0 12 66 39         [24] 4172 	lcall	__gptrget
      0043A3 FC               [12] 4173 	mov	r4,a
      0043A4 E5 08            [12] 4174 	mov	a,_bp
      0043A6 24 1E            [12] 4175 	add	a,#0x1e
      0043A8 F8               [12] 4176 	mov	r0,a
      0043A9 E6               [12] 4177 	mov	a,@r0
      0043AA C0 E0            [24] 4178 	push	acc
      0043AC 08               [12] 4179 	inc	r0
      0043AD E6               [12] 4180 	mov	a,@r0
      0043AE C0 E0            [24] 4181 	push	acc
      0043B0 08               [12] 4182 	inc	r0
      0043B1 E6               [12] 4183 	mov	a,@r0
      0043B2 C0 E0            [24] 4184 	push	acc
      0043B4 08               [12] 4185 	inc	r0
      0043B5 E6               [12] 4186 	mov	a,@r0
      0043B6 C0 E0            [24] 4187 	push	acc
      0043B8 8A 82            [24] 4188 	mov	dpl,r2
      0043BA 8B 83            [24] 4189 	mov	dph,r3
      0043BC 8C F0            [24] 4190 	mov	b,r4
      0043BE 12 26 F5         [24] 4191 	lcall	_stack_push
      0043C1 E5 81            [12] 4192 	mov	a,sp
      0043C3 24 FC            [12] 4193 	add	a,#0xfc
      0043C5 F5 81            [12] 4194 	mov	sp,a
                                   4195 ;	calc.c:212: break;
      0043C7 02 4F BE         [24] 4196 	ljmp	00249$
                                   4197 ;	calc.c:214: case '#':
      0043CA                       4198 00189$:
                                   4199 ;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0043CA C0 05            [24] 4200 	push	ar5
      0043CC C0 06            [24] 4201 	push	ar6
      0043CE C0 07            [24] 4202 	push	ar7
      0043D0 E5 08            [12] 4203 	mov	a,_bp
      0043D2 24 1A            [12] 4204 	add	a,#0x1a
      0043D4 FC               [12] 4205 	mov	r4,a
      0043D5 7B 00            [12] 4206 	mov	r3,#0x00
      0043D7 7A 40            [12] 4207 	mov	r2,#0x40
      0043D9 E5 08            [12] 4208 	mov	a,_bp
      0043DB 24 17            [12] 4209 	add	a,#0x17
      0043DD F8               [12] 4210 	mov	r0,a
      0043DE E5 08            [12] 4211 	mov	a,_bp
      0043E0 24 13            [12] 4212 	add	a,#0x13
      0043E2 F9               [12] 4213 	mov	r1,a
      0043E3 74 11            [12] 4214 	mov	a,#0x11
      0043E5 26               [12] 4215 	add	a,@r0
      0043E6 F7               [12] 4216 	mov	@r1,a
      0043E7 74 40            [12] 4217 	mov	a,#0x40
      0043E9 08               [12] 4218 	inc	r0
      0043EA 36               [12] 4219 	addc	a,@r0
      0043EB 09               [12] 4220 	inc	r1
      0043EC F7               [12] 4221 	mov	@r1,a
      0043ED 08               [12] 4222 	inc	r0
      0043EE 09               [12] 4223 	inc	r1
      0043EF E6               [12] 4224 	mov	a,@r0
      0043F0 F7               [12] 4225 	mov	@r1,a
      0043F1 E5 08            [12] 4226 	mov	a,_bp
      0043F3 24 13            [12] 4227 	add	a,#0x13
      0043F5 F8               [12] 4228 	mov	r0,a
      0043F6 86 82            [24] 4229 	mov	dpl,@r0
      0043F8 08               [12] 4230 	inc	r0
      0043F9 86 83            [24] 4231 	mov	dph,@r0
      0043FB 08               [12] 4232 	inc	r0
      0043FC 86 F0            [24] 4233 	mov	b,@r0
      0043FE 12 66 39         [24] 4234 	lcall	__gptrget
      004401 FD               [12] 4235 	mov	r5,a
      004402 A3               [24] 4236 	inc	dptr
      004403 12 66 39         [24] 4237 	lcall	__gptrget
      004406 FE               [12] 4238 	mov	r6,a
      004407 A3               [24] 4239 	inc	dptr
      004408 12 66 39         [24] 4240 	lcall	__gptrget
      00440B FF               [12] 4241 	mov	r7,a
      00440C C0 05            [24] 4242 	push	ar5
      00440E C0 04            [24] 4243 	push	ar4
      004410 C0 03            [24] 4244 	push	ar3
      004412 C0 02            [24] 4245 	push	ar2
      004414 8D 82            [24] 4246 	mov	dpl,r5
      004416 8E 83            [24] 4247 	mov	dph,r6
      004418 8F F0            [24] 4248 	mov	b,r7
      00441A 12 27 C3         [24] 4249 	lcall	_stack_pop
      00441D AE 82            [24] 4250 	mov	r6,dpl
      00441F AF 83            [24] 4251 	mov	r7,dph
      004421 15 81            [12] 4252 	dec	sp
      004423 15 81            [12] 4253 	dec	sp
      004425 15 81            [12] 4254 	dec	sp
      004427 D0 05            [24] 4255 	pop	ar5
      004429 EE               [12] 4256 	mov	a,r6
      00442A 4F               [12] 4257 	orl	a,r7
      00442B D0 07            [24] 4258 	pop	ar7
      00442D D0 06            [24] 4259 	pop	ar6
      00442F D0 05            [24] 4260 	pop	ar5
      004431 70 0C            [24] 4261 	jnz	00200$
      004433 90 7F 08         [24] 4262 	mov	dptr,#___str_10
      004436 75 F0 80         [24] 4263 	mov	b,#0x80
      004439 12 5F 35         [24] 4264 	lcall	_printstr
      00443C 02 4F BE         [24] 4265 	ljmp	00249$
      00443F                       4266 00200$:
                                   4267 ;	calc.c:216: else if (!stack_pop(ctx->ps, &d1)) {
      00443F C0 05            [24] 4268 	push	ar5
      004441 C0 06            [24] 4269 	push	ar6
      004443 C0 07            [24] 4270 	push	ar7
      004445 E5 08            [12] 4271 	mov	a,_bp
      004447 24 1E            [12] 4272 	add	a,#0x1e
      004449 FC               [12] 4273 	mov	r4,a
      00444A 7B 00            [12] 4274 	mov	r3,#0x00
      00444C 7A 40            [12] 4275 	mov	r2,#0x40
      00444E E5 08            [12] 4276 	mov	a,_bp
      004450 24 13            [12] 4277 	add	a,#0x13
      004452 F8               [12] 4278 	mov	r0,a
      004453 86 82            [24] 4279 	mov	dpl,@r0
      004455 08               [12] 4280 	inc	r0
      004456 86 83            [24] 4281 	mov	dph,@r0
      004458 08               [12] 4282 	inc	r0
      004459 86 F0            [24] 4283 	mov	b,@r0
      00445B 12 66 39         [24] 4284 	lcall	__gptrget
      00445E FD               [12] 4285 	mov	r5,a
      00445F A3               [24] 4286 	inc	dptr
      004460 12 66 39         [24] 4287 	lcall	__gptrget
      004463 FE               [12] 4288 	mov	r6,a
      004464 A3               [24] 4289 	inc	dptr
      004465 12 66 39         [24] 4290 	lcall	__gptrget
      004468 FF               [12] 4291 	mov	r7,a
      004469 C0 05            [24] 4292 	push	ar5
      00446B C0 04            [24] 4293 	push	ar4
      00446D C0 03            [24] 4294 	push	ar3
      00446F C0 02            [24] 4295 	push	ar2
      004471 8D 82            [24] 4296 	mov	dpl,r5
      004473 8E 83            [24] 4297 	mov	dph,r6
      004475 8F F0            [24] 4298 	mov	b,r7
      004477 12 27 C3         [24] 4299 	lcall	_stack_pop
      00447A AE 82            [24] 4300 	mov	r6,dpl
      00447C AF 83            [24] 4301 	mov	r7,dph
      00447E 15 81            [12] 4302 	dec	sp
      004480 15 81            [12] 4303 	dec	sp
      004482 15 81            [12] 4304 	dec	sp
      004484 D0 05            [24] 4305 	pop	ar5
      004486 EE               [12] 4306 	mov	a,r6
      004487 4F               [12] 4307 	orl	a,r7
      004488 D0 07            [24] 4308 	pop	ar7
      00448A D0 06            [24] 4309 	pop	ar6
      00448C D0 05            [24] 4310 	pop	ar5
      00448E 70 4A            [24] 4311 	jnz	00197$
                                   4312 ;	calc.c:217: (void)stack_push(ctx->ps, d0);
      004490 E5 08            [12] 4313 	mov	a,_bp
      004492 24 13            [12] 4314 	add	a,#0x13
      004494 F8               [12] 4315 	mov	r0,a
      004495 86 82            [24] 4316 	mov	dpl,@r0
      004497 08               [12] 4317 	inc	r0
      004498 86 83            [24] 4318 	mov	dph,@r0
      00449A 08               [12] 4319 	inc	r0
      00449B 86 F0            [24] 4320 	mov	b,@r0
      00449D 12 66 39         [24] 4321 	lcall	__gptrget
      0044A0 FA               [12] 4322 	mov	r2,a
      0044A1 A3               [24] 4323 	inc	dptr
      0044A2 12 66 39         [24] 4324 	lcall	__gptrget
      0044A5 FB               [12] 4325 	mov	r3,a
      0044A6 A3               [24] 4326 	inc	dptr
      0044A7 12 66 39         [24] 4327 	lcall	__gptrget
      0044AA FC               [12] 4328 	mov	r4,a
      0044AB E5 08            [12] 4329 	mov	a,_bp
      0044AD 24 1A            [12] 4330 	add	a,#0x1a
      0044AF F8               [12] 4331 	mov	r0,a
      0044B0 E6               [12] 4332 	mov	a,@r0
      0044B1 C0 E0            [24] 4333 	push	acc
      0044B3 08               [12] 4334 	inc	r0
      0044B4 E6               [12] 4335 	mov	a,@r0
      0044B5 C0 E0            [24] 4336 	push	acc
      0044B7 08               [12] 4337 	inc	r0
      0044B8 E6               [12] 4338 	mov	a,@r0
      0044B9 C0 E0            [24] 4339 	push	acc
      0044BB 08               [12] 4340 	inc	r0
      0044BC E6               [12] 4341 	mov	a,@r0
      0044BD C0 E0            [24] 4342 	push	acc
      0044BF 8A 82            [24] 4343 	mov	dpl,r2
      0044C1 8B 83            [24] 4344 	mov	dph,r3
      0044C3 8C F0            [24] 4345 	mov	b,r4
      0044C5 12 26 F5         [24] 4346 	lcall	_stack_push
      0044C8 E5 81            [12] 4347 	mov	a,sp
      0044CA 24 FC            [12] 4348 	add	a,#0xfc
      0044CC F5 81            [12] 4349 	mov	sp,a
                                   4350 ;	calc.c:218: printstr("\r\nstack underflow\r\n");
      0044CE 90 7F 08         [24] 4351 	mov	dptr,#___str_10
      0044D1 75 F0 80         [24] 4352 	mov	b,#0x80
      0044D4 12 5F 35         [24] 4353 	lcall	_printstr
      0044D7 02 4F BE         [24] 4354 	ljmp	00249$
      0044DA                       4355 00197$:
                                   4356 ;	calc.c:219: } else if (!d0) {
      0044DA E5 08            [12] 4357 	mov	a,_bp
      0044DC 24 1A            [12] 4358 	add	a,#0x1a
      0044DE F8               [12] 4359 	mov	r0,a
      0044DF E6               [12] 4360 	mov	a,@r0
      0044E0 08               [12] 4361 	inc	r0
      0044E1 46               [12] 4362 	orl	a,@r0
      0044E2 08               [12] 4363 	inc	r0
      0044E3 46               [12] 4364 	orl	a,@r0
      0044E4 08               [12] 4365 	inc	r0
      0044E5 46               [12] 4366 	orl	a,@r0
      0044E6 60 03            [24] 4367 	jz	00580$
      0044E8 02 45 73         [24] 4368 	ljmp	00194$
      0044EB                       4369 00580$:
                                   4370 ;	calc.c:220: (void)stack_push(ctx->ps, d1);
      0044EB E5 08            [12] 4371 	mov	a,_bp
      0044ED 24 13            [12] 4372 	add	a,#0x13
      0044EF F8               [12] 4373 	mov	r0,a
      0044F0 86 82            [24] 4374 	mov	dpl,@r0
      0044F2 08               [12] 4375 	inc	r0
      0044F3 86 83            [24] 4376 	mov	dph,@r0
      0044F5 08               [12] 4377 	inc	r0
      0044F6 86 F0            [24] 4378 	mov	b,@r0
      0044F8 12 66 39         [24] 4379 	lcall	__gptrget
      0044FB FA               [12] 4380 	mov	r2,a
      0044FC A3               [24] 4381 	inc	dptr
      0044FD 12 66 39         [24] 4382 	lcall	__gptrget
      004500 FB               [12] 4383 	mov	r3,a
      004501 A3               [24] 4384 	inc	dptr
      004502 12 66 39         [24] 4385 	lcall	__gptrget
      004505 FC               [12] 4386 	mov	r4,a
      004506 E5 08            [12] 4387 	mov	a,_bp
      004508 24 1E            [12] 4388 	add	a,#0x1e
      00450A F8               [12] 4389 	mov	r0,a
      00450B E6               [12] 4390 	mov	a,@r0
      00450C C0 E0            [24] 4391 	push	acc
      00450E 08               [12] 4392 	inc	r0
      00450F E6               [12] 4393 	mov	a,@r0
      004510 C0 E0            [24] 4394 	push	acc
      004512 08               [12] 4395 	inc	r0
      004513 E6               [12] 4396 	mov	a,@r0
      004514 C0 E0            [24] 4397 	push	acc
      004516 08               [12] 4398 	inc	r0
      004517 E6               [12] 4399 	mov	a,@r0
      004518 C0 E0            [24] 4400 	push	acc
      00451A 8A 82            [24] 4401 	mov	dpl,r2
      00451C 8B 83            [24] 4402 	mov	dph,r3
      00451E 8C F0            [24] 4403 	mov	b,r4
      004520 12 26 F5         [24] 4404 	lcall	_stack_push
      004523 E5 81            [12] 4405 	mov	a,sp
      004525 24 FC            [12] 4406 	add	a,#0xfc
      004527 F5 81            [12] 4407 	mov	sp,a
                                   4408 ;	calc.c:221: (void)stack_push(ctx->ps, d0);			
      004529 E5 08            [12] 4409 	mov	a,_bp
      00452B 24 13            [12] 4410 	add	a,#0x13
      00452D F8               [12] 4411 	mov	r0,a
      00452E 86 82            [24] 4412 	mov	dpl,@r0
      004530 08               [12] 4413 	inc	r0
      004531 86 83            [24] 4414 	mov	dph,@r0
      004533 08               [12] 4415 	inc	r0
      004534 86 F0            [24] 4416 	mov	b,@r0
      004536 12 66 39         [24] 4417 	lcall	__gptrget
      004539 FA               [12] 4418 	mov	r2,a
      00453A A3               [24] 4419 	inc	dptr
      00453B 12 66 39         [24] 4420 	lcall	__gptrget
      00453E FB               [12] 4421 	mov	r3,a
      00453F A3               [24] 4422 	inc	dptr
      004540 12 66 39         [24] 4423 	lcall	__gptrget
      004543 FC               [12] 4424 	mov	r4,a
      004544 E5 08            [12] 4425 	mov	a,_bp
      004546 24 1A            [12] 4426 	add	a,#0x1a
      004548 F8               [12] 4427 	mov	r0,a
      004549 E6               [12] 4428 	mov	a,@r0
      00454A C0 E0            [24] 4429 	push	acc
      00454C 08               [12] 4430 	inc	r0
      00454D E6               [12] 4431 	mov	a,@r0
      00454E C0 E0            [24] 4432 	push	acc
      004550 08               [12] 4433 	inc	r0
      004551 E6               [12] 4434 	mov	a,@r0
      004552 C0 E0            [24] 4435 	push	acc
      004554 08               [12] 4436 	inc	r0
      004555 E6               [12] 4437 	mov	a,@r0
      004556 C0 E0            [24] 4438 	push	acc
      004558 8A 82            [24] 4439 	mov	dpl,r2
      00455A 8B 83            [24] 4440 	mov	dph,r3
      00455C 8C F0            [24] 4441 	mov	b,r4
      00455E 12 26 F5         [24] 4442 	lcall	_stack_push
      004561 E5 81            [12] 4443 	mov	a,sp
      004563 24 FC            [12] 4444 	add	a,#0xfc
      004565 F5 81            [12] 4445 	mov	sp,a
                                   4446 ;	calc.c:222: printstr("\r\ndivision by zero\r\n");
      004567 90 7F 6A         [24] 4447 	mov	dptr,#___str_14
      00456A 75 F0 80         [24] 4448 	mov	b,#0x80
      00456D 12 5F 35         [24] 4449 	lcall	_printstr
      004570 02 4F BE         [24] 4450 	ljmp	00249$
      004573                       4451 00194$:
                                   4452 ;	calc.c:224: if (ctx->digit[0] == '%') d1 %= d0;
      004573 8D 82            [24] 4453 	mov	dpl,r5
      004575 8E 83            [24] 4454 	mov	dph,r6
      004577 8F F0            [24] 4455 	mov	b,r7
      004579 12 66 39         [24] 4456 	lcall	__gptrget
      00457C FD               [12] 4457 	mov	r5,a
      00457D BD 25 45         [24] 4458 	cjne	r5,#0x25,00191$
      004580 E5 08            [12] 4459 	mov	a,_bp
      004582 24 1A            [12] 4460 	add	a,#0x1a
      004584 F8               [12] 4461 	mov	r0,a
      004585 E6               [12] 4462 	mov	a,@r0
      004586 C0 E0            [24] 4463 	push	acc
      004588 08               [12] 4464 	inc	r0
      004589 E6               [12] 4465 	mov	a,@r0
      00458A C0 E0            [24] 4466 	push	acc
      00458C 08               [12] 4467 	inc	r0
      00458D E6               [12] 4468 	mov	a,@r0
      00458E C0 E0            [24] 4469 	push	acc
      004590 08               [12] 4470 	inc	r0
      004591 E6               [12] 4471 	mov	a,@r0
      004592 C0 E0            [24] 4472 	push	acc
      004594 E5 08            [12] 4473 	mov	a,_bp
      004596 24 1E            [12] 4474 	add	a,#0x1e
      004598 F8               [12] 4475 	mov	r0,a
      004599 86 82            [24] 4476 	mov	dpl,@r0
      00459B 08               [12] 4477 	inc	r0
      00459C 86 83            [24] 4478 	mov	dph,@r0
      00459E 08               [12] 4479 	inc	r0
      00459F 86 F0            [24] 4480 	mov	b,@r0
      0045A1 08               [12] 4481 	inc	r0
      0045A2 E6               [12] 4482 	mov	a,@r0
      0045A3 12 62 77         [24] 4483 	lcall	__modslong
      0045A6 AC 82            [24] 4484 	mov	r4,dpl
      0045A8 AD 83            [24] 4485 	mov	r5,dph
      0045AA AE F0            [24] 4486 	mov	r6,b
      0045AC FF               [12] 4487 	mov	r7,a
      0045AD E5 81            [12] 4488 	mov	a,sp
      0045AF 24 FC            [12] 4489 	add	a,#0xfc
      0045B1 F5 81            [12] 4490 	mov	sp,a
      0045B3 E5 08            [12] 4491 	mov	a,_bp
      0045B5 24 1E            [12] 4492 	add	a,#0x1e
      0045B7 F8               [12] 4493 	mov	r0,a
      0045B8 A6 04            [24] 4494 	mov	@r0,ar4
      0045BA 08               [12] 4495 	inc	r0
      0045BB A6 05            [24] 4496 	mov	@r0,ar5
      0045BD 08               [12] 4497 	inc	r0
      0045BE A6 06            [24] 4498 	mov	@r0,ar6
      0045C0 08               [12] 4499 	inc	r0
      0045C1 A6 07            [24] 4500 	mov	@r0,ar7
      0045C3 80 5F            [24] 4501 	sjmp	00192$
      0045C5                       4502 00191$:
                                   4503 ;	calc.c:225: else d1 = (unsigned long)d1 % (unsigned long)d0;
      0045C5 E5 08            [12] 4504 	mov	a,_bp
      0045C7 24 1E            [12] 4505 	add	a,#0x1e
      0045C9 F8               [12] 4506 	mov	r0,a
      0045CA E5 08            [12] 4507 	mov	a,_bp
      0045CC 24 0F            [12] 4508 	add	a,#0x0f
      0045CE F9               [12] 4509 	mov	r1,a
      0045CF E6               [12] 4510 	mov	a,@r0
      0045D0 F7               [12] 4511 	mov	@r1,a
      0045D1 08               [12] 4512 	inc	r0
      0045D2 09               [12] 4513 	inc	r1
      0045D3 E6               [12] 4514 	mov	a,@r0
      0045D4 F7               [12] 4515 	mov	@r1,a
      0045D5 08               [12] 4516 	inc	r0
      0045D6 09               [12] 4517 	inc	r1
      0045D7 E6               [12] 4518 	mov	a,@r0
      0045D8 F7               [12] 4519 	mov	@r1,a
      0045D9 08               [12] 4520 	inc	r0
      0045DA 09               [12] 4521 	inc	r1
      0045DB E6               [12] 4522 	mov	a,@r0
      0045DC F7               [12] 4523 	mov	@r1,a
      0045DD E5 08            [12] 4524 	mov	a,_bp
      0045DF 24 1A            [12] 4525 	add	a,#0x1a
      0045E1 F8               [12] 4526 	mov	r0,a
      0045E2 86 02            [24] 4527 	mov	ar2,@r0
      0045E4 08               [12] 4528 	inc	r0
      0045E5 86 03            [24] 4529 	mov	ar3,@r0
      0045E7 08               [12] 4530 	inc	r0
      0045E8 86 06            [24] 4531 	mov	ar6,@r0
      0045EA 08               [12] 4532 	inc	r0
      0045EB 86 07            [24] 4533 	mov	ar7,@r0
      0045ED C0 02            [24] 4534 	push	ar2
      0045EF C0 03            [24] 4535 	push	ar3
      0045F1 C0 06            [24] 4536 	push	ar6
      0045F3 C0 07            [24] 4537 	push	ar7
      0045F5 E5 08            [12] 4538 	mov	a,_bp
      0045F7 24 0F            [12] 4539 	add	a,#0x0f
      0045F9 F8               [12] 4540 	mov	r0,a
      0045FA 86 82            [24] 4541 	mov	dpl,@r0
      0045FC 08               [12] 4542 	inc	r0
      0045FD 86 83            [24] 4543 	mov	dph,@r0
      0045FF 08               [12] 4544 	inc	r0
      004600 86 F0            [24] 4545 	mov	b,@r0
      004602 08               [12] 4546 	inc	r0
      004603 E6               [12] 4547 	mov	a,@r0
      004604 12 63 6E         [24] 4548 	lcall	__modulong
      004607 AC 82            [24] 4549 	mov	r4,dpl
      004609 AD 83            [24] 4550 	mov	r5,dph
      00460B AE F0            [24] 4551 	mov	r6,b
      00460D FF               [12] 4552 	mov	r7,a
      00460E E5 81            [12] 4553 	mov	a,sp
      004610 24 FC            [12] 4554 	add	a,#0xfc
      004612 F5 81            [12] 4555 	mov	sp,a
      004614 E5 08            [12] 4556 	mov	a,_bp
      004616 24 1E            [12] 4557 	add	a,#0x1e
      004618 F8               [12] 4558 	mov	r0,a
      004619 A6 04            [24] 4559 	mov	@r0,ar4
      00461B 08               [12] 4560 	inc	r0
      00461C A6 05            [24] 4561 	mov	@r0,ar5
      00461E 08               [12] 4562 	inc	r0
      00461F A6 06            [24] 4563 	mov	@r0,ar6
      004621 08               [12] 4564 	inc	r0
      004622 A6 07            [24] 4565 	mov	@r0,ar7
      004624                       4566 00192$:
                                   4567 ;	calc.c:226: (void)stack_push(ctx->ps, d1);
      004624 E5 08            [12] 4568 	mov	a,_bp
      004626 24 13            [12] 4569 	add	a,#0x13
      004628 F8               [12] 4570 	mov	r0,a
      004629 86 82            [24] 4571 	mov	dpl,@r0
      00462B 08               [12] 4572 	inc	r0
      00462C 86 83            [24] 4573 	mov	dph,@r0
      00462E 08               [12] 4574 	inc	r0
      00462F 86 F0            [24] 4575 	mov	b,@r0
      004631 12 66 39         [24] 4576 	lcall	__gptrget
      004634 FD               [12] 4577 	mov	r5,a
      004635 A3               [24] 4578 	inc	dptr
      004636 12 66 39         [24] 4579 	lcall	__gptrget
      004639 FE               [12] 4580 	mov	r6,a
      00463A A3               [24] 4581 	inc	dptr
      00463B 12 66 39         [24] 4582 	lcall	__gptrget
      00463E FF               [12] 4583 	mov	r7,a
      00463F E5 08            [12] 4584 	mov	a,_bp
      004641 24 1E            [12] 4585 	add	a,#0x1e
      004643 F8               [12] 4586 	mov	r0,a
      004644 E6               [12] 4587 	mov	a,@r0
      004645 C0 E0            [24] 4588 	push	acc
      004647 08               [12] 4589 	inc	r0
      004648 E6               [12] 4590 	mov	a,@r0
      004649 C0 E0            [24] 4591 	push	acc
      00464B 08               [12] 4592 	inc	r0
      00464C E6               [12] 4593 	mov	a,@r0
      00464D C0 E0            [24] 4594 	push	acc
      00464F 08               [12] 4595 	inc	r0
      004650 E6               [12] 4596 	mov	a,@r0
      004651 C0 E0            [24] 4597 	push	acc
      004653 8D 82            [24] 4598 	mov	dpl,r5
      004655 8E 83            [24] 4599 	mov	dph,r6
      004657 8F F0            [24] 4600 	mov	b,r7
      004659 12 26 F5         [24] 4601 	lcall	_stack_push
      00465C E5 81            [12] 4602 	mov	a,sp
      00465E 24 FC            [12] 4603 	add	a,#0xfc
      004660 F5 81            [12] 4604 	mov	sp,a
                                   4605 ;	calc.c:228: break;
      004662 02 4F BE         [24] 4606 	ljmp	00249$
                                   4607 ;	calc.c:229: case '&':
      004665                       4608 00202$:
                                   4609 ;	calc.c:230: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004665 E5 08            [12] 4610 	mov	a,_bp
      004667 24 1A            [12] 4611 	add	a,#0x1a
      004669 FF               [12] 4612 	mov	r7,a
      00466A E5 08            [12] 4613 	mov	a,_bp
      00466C 24 13            [12] 4614 	add	a,#0x13
      00466E F8               [12] 4615 	mov	r0,a
      00466F A6 07            [24] 4616 	mov	@r0,ar7
      004671 08               [12] 4617 	inc	r0
      004672 76 00            [12] 4618 	mov	@r0,#0x00
      004674 08               [12] 4619 	inc	r0
      004675 76 40            [12] 4620 	mov	@r0,#0x40
      004677 E5 08            [12] 4621 	mov	a,_bp
      004679 24 17            [12] 4622 	add	a,#0x17
      00467B F8               [12] 4623 	mov	r0,a
      00467C 74 11            [12] 4624 	mov	a,#0x11
      00467E 26               [12] 4625 	add	a,@r0
      00467F FA               [12] 4626 	mov	r2,a
      004680 74 40            [12] 4627 	mov	a,#0x40
      004682 08               [12] 4628 	inc	r0
      004683 36               [12] 4629 	addc	a,@r0
      004684 FB               [12] 4630 	mov	r3,a
      004685 08               [12] 4631 	inc	r0
      004686 86 04            [24] 4632 	mov	ar4,@r0
      004688 8A 82            [24] 4633 	mov	dpl,r2
      00468A 8B 83            [24] 4634 	mov	dph,r3
      00468C 8C F0            [24] 4635 	mov	b,r4
      00468E 12 66 39         [24] 4636 	lcall	__gptrget
      004691 FD               [12] 4637 	mov	r5,a
      004692 A3               [24] 4638 	inc	dptr
      004693 12 66 39         [24] 4639 	lcall	__gptrget
      004696 FE               [12] 4640 	mov	r6,a
      004697 A3               [24] 4641 	inc	dptr
      004698 12 66 39         [24] 4642 	lcall	__gptrget
      00469B FF               [12] 4643 	mov	r7,a
      00469C C0 04            [24] 4644 	push	ar4
      00469E C0 03            [24] 4645 	push	ar3
      0046A0 C0 02            [24] 4646 	push	ar2
      0046A2 E5 08            [12] 4647 	mov	a,_bp
      0046A4 24 13            [12] 4648 	add	a,#0x13
      0046A6 F8               [12] 4649 	mov	r0,a
      0046A7 E6               [12] 4650 	mov	a,@r0
      0046A8 C0 E0            [24] 4651 	push	acc
      0046AA 08               [12] 4652 	inc	r0
      0046AB E6               [12] 4653 	mov	a,@r0
      0046AC C0 E0            [24] 4654 	push	acc
      0046AE 08               [12] 4655 	inc	r0
      0046AF E6               [12] 4656 	mov	a,@r0
      0046B0 C0 E0            [24] 4657 	push	acc
      0046B2 8D 82            [24] 4658 	mov	dpl,r5
      0046B4 8E 83            [24] 4659 	mov	dph,r6
      0046B6 8F F0            [24] 4660 	mov	b,r7
      0046B8 12 27 C3         [24] 4661 	lcall	_stack_pop
      0046BB AE 82            [24] 4662 	mov	r6,dpl
      0046BD AF 83            [24] 4663 	mov	r7,dph
      0046BF 15 81            [12] 4664 	dec	sp
      0046C1 15 81            [12] 4665 	dec	sp
      0046C3 15 81            [12] 4666 	dec	sp
      0046C5 D0 02            [24] 4667 	pop	ar2
      0046C7 D0 03            [24] 4668 	pop	ar3
      0046C9 D0 04            [24] 4669 	pop	ar4
      0046CB EE               [12] 4670 	mov	a,r6
      0046CC 4F               [12] 4671 	orl	a,r7
      0046CD 70 0C            [24] 4672 	jnz	00207$
      0046CF 90 7F 08         [24] 4673 	mov	dptr,#___str_10
      0046D2 75 F0 80         [24] 4674 	mov	b,#0x80
      0046D5 12 5F 35         [24] 4675 	lcall	_printstr
      0046D8 02 4F BE         [24] 4676 	ljmp	00249$
      0046DB                       4677 00207$:
                                   4678 ;	calc.c:231: else if (!stack_pop(ctx->ps, &d1)) {
      0046DB E5 08            [12] 4679 	mov	a,_bp
      0046DD 24 1E            [12] 4680 	add	a,#0x1e
      0046DF FF               [12] 4681 	mov	r7,a
      0046E0 E5 08            [12] 4682 	mov	a,_bp
      0046E2 24 13            [12] 4683 	add	a,#0x13
      0046E4 F8               [12] 4684 	mov	r0,a
      0046E5 A6 07            [24] 4685 	mov	@r0,ar7
      0046E7 08               [12] 4686 	inc	r0
      0046E8 76 00            [12] 4687 	mov	@r0,#0x00
      0046EA 08               [12] 4688 	inc	r0
      0046EB 76 40            [12] 4689 	mov	@r0,#0x40
      0046ED 8A 82            [24] 4690 	mov	dpl,r2
      0046EF 8B 83            [24] 4691 	mov	dph,r3
      0046F1 8C F0            [24] 4692 	mov	b,r4
      0046F3 12 66 39         [24] 4693 	lcall	__gptrget
      0046F6 FD               [12] 4694 	mov	r5,a
      0046F7 A3               [24] 4695 	inc	dptr
      0046F8 12 66 39         [24] 4696 	lcall	__gptrget
      0046FB FE               [12] 4697 	mov	r6,a
      0046FC A3               [24] 4698 	inc	dptr
      0046FD 12 66 39         [24] 4699 	lcall	__gptrget
      004700 FF               [12] 4700 	mov	r7,a
      004701 C0 04            [24] 4701 	push	ar4
      004703 C0 03            [24] 4702 	push	ar3
      004705 C0 02            [24] 4703 	push	ar2
      004707 E5 08            [12] 4704 	mov	a,_bp
      004709 24 13            [12] 4705 	add	a,#0x13
      00470B F8               [12] 4706 	mov	r0,a
      00470C E6               [12] 4707 	mov	a,@r0
      00470D C0 E0            [24] 4708 	push	acc
      00470F 08               [12] 4709 	inc	r0
      004710 E6               [12] 4710 	mov	a,@r0
      004711 C0 E0            [24] 4711 	push	acc
      004713 08               [12] 4712 	inc	r0
      004714 E6               [12] 4713 	mov	a,@r0
      004715 C0 E0            [24] 4714 	push	acc
      004717 8D 82            [24] 4715 	mov	dpl,r5
      004719 8E 83            [24] 4716 	mov	dph,r6
      00471B 8F F0            [24] 4717 	mov	b,r7
      00471D 12 27 C3         [24] 4718 	lcall	_stack_pop
      004720 AE 82            [24] 4719 	mov	r6,dpl
      004722 AF 83            [24] 4720 	mov	r7,dph
      004724 15 81            [12] 4721 	dec	sp
      004726 15 81            [12] 4722 	dec	sp
      004728 15 81            [12] 4723 	dec	sp
      00472A D0 02            [24] 4724 	pop	ar2
      00472C D0 03            [24] 4725 	pop	ar3
      00472E D0 04            [24] 4726 	pop	ar4
      004730 EE               [12] 4727 	mov	a,r6
      004731 4F               [12] 4728 	orl	a,r7
      004732 70 43            [24] 4729 	jnz	00204$
                                   4730 ;	calc.c:232: (void)stack_push(ctx->ps, d0);
      004734 8A 82            [24] 4731 	mov	dpl,r2
      004736 8B 83            [24] 4732 	mov	dph,r3
      004738 8C F0            [24] 4733 	mov	b,r4
      00473A 12 66 39         [24] 4734 	lcall	__gptrget
      00473D FD               [12] 4735 	mov	r5,a
      00473E A3               [24] 4736 	inc	dptr
      00473F 12 66 39         [24] 4737 	lcall	__gptrget
      004742 FE               [12] 4738 	mov	r6,a
      004743 A3               [24] 4739 	inc	dptr
      004744 12 66 39         [24] 4740 	lcall	__gptrget
      004747 FF               [12] 4741 	mov	r7,a
      004748 E5 08            [12] 4742 	mov	a,_bp
      00474A 24 1A            [12] 4743 	add	a,#0x1a
      00474C F8               [12] 4744 	mov	r0,a
      00474D E6               [12] 4745 	mov	a,@r0
      00474E C0 E0            [24] 4746 	push	acc
      004750 08               [12] 4747 	inc	r0
      004751 E6               [12] 4748 	mov	a,@r0
      004752 C0 E0            [24] 4749 	push	acc
      004754 08               [12] 4750 	inc	r0
      004755 E6               [12] 4751 	mov	a,@r0
      004756 C0 E0            [24] 4752 	push	acc
      004758 08               [12] 4753 	inc	r0
      004759 E6               [12] 4754 	mov	a,@r0
      00475A C0 E0            [24] 4755 	push	acc
      00475C 8D 82            [24] 4756 	mov	dpl,r5
      00475E 8E 83            [24] 4757 	mov	dph,r6
      004760 8F F0            [24] 4758 	mov	b,r7
      004762 12 26 F5         [24] 4759 	lcall	_stack_push
      004765 E5 81            [12] 4760 	mov	a,sp
      004767 24 FC            [12] 4761 	add	a,#0xfc
      004769 F5 81            [12] 4762 	mov	sp,a
                                   4763 ;	calc.c:233: printstr("\r\nstack underflow\r\n");
      00476B 90 7F 08         [24] 4764 	mov	dptr,#___str_10
      00476E 75 F0 80         [24] 4765 	mov	b,#0x80
      004771 12 5F 35         [24] 4766 	lcall	_printstr
      004774 02 4F BE         [24] 4767 	ljmp	00249$
      004777                       4768 00204$:
                                   4769 ;	calc.c:235: d1 &= d0;
      004777 E5 08            [12] 4770 	mov	a,_bp
      004779 24 1E            [12] 4771 	add	a,#0x1e
      00477B F8               [12] 4772 	mov	r0,a
      00477C E5 08            [12] 4773 	mov	a,_bp
      00477E 24 1A            [12] 4774 	add	a,#0x1a
      004780 F9               [12] 4775 	mov	r1,a
      004781 E7               [12] 4776 	mov	a,@r1
      004782 56               [12] 4777 	anl	a,@r0
      004783 F6               [12] 4778 	mov	@r0,a
      004784 09               [12] 4779 	inc	r1
      004785 E7               [12] 4780 	mov	a,@r1
      004786 08               [12] 4781 	inc	r0
      004787 56               [12] 4782 	anl	a,@r0
      004788 F6               [12] 4783 	mov	@r0,a
      004789 09               [12] 4784 	inc	r1
      00478A E7               [12] 4785 	mov	a,@r1
      00478B 08               [12] 4786 	inc	r0
      00478C 56               [12] 4787 	anl	a,@r0
      00478D F6               [12] 4788 	mov	@r0,a
      00478E 09               [12] 4789 	inc	r1
      00478F E7               [12] 4790 	mov	a,@r1
      004790 08               [12] 4791 	inc	r0
      004791 56               [12] 4792 	anl	a,@r0
      004792 F6               [12] 4793 	mov	@r0,a
                                   4794 ;	calc.c:236: (void)stack_push(ctx->ps, d1);
      004793 8A 82            [24] 4795 	mov	dpl,r2
      004795 8B 83            [24] 4796 	mov	dph,r3
      004797 8C F0            [24] 4797 	mov	b,r4
      004799 12 66 39         [24] 4798 	lcall	__gptrget
      00479C FA               [12] 4799 	mov	r2,a
      00479D A3               [24] 4800 	inc	dptr
      00479E 12 66 39         [24] 4801 	lcall	__gptrget
      0047A1 FB               [12] 4802 	mov	r3,a
      0047A2 A3               [24] 4803 	inc	dptr
      0047A3 12 66 39         [24] 4804 	lcall	__gptrget
      0047A6 FC               [12] 4805 	mov	r4,a
      0047A7 E5 08            [12] 4806 	mov	a,_bp
      0047A9 24 1E            [12] 4807 	add	a,#0x1e
      0047AB F8               [12] 4808 	mov	r0,a
      0047AC E6               [12] 4809 	mov	a,@r0
      0047AD C0 E0            [24] 4810 	push	acc
      0047AF 08               [12] 4811 	inc	r0
      0047B0 E6               [12] 4812 	mov	a,@r0
      0047B1 C0 E0            [24] 4813 	push	acc
      0047B3 08               [12] 4814 	inc	r0
      0047B4 E6               [12] 4815 	mov	a,@r0
      0047B5 C0 E0            [24] 4816 	push	acc
      0047B7 08               [12] 4817 	inc	r0
      0047B8 E6               [12] 4818 	mov	a,@r0
      0047B9 C0 E0            [24] 4819 	push	acc
      0047BB 8A 82            [24] 4820 	mov	dpl,r2
      0047BD 8B 83            [24] 4821 	mov	dph,r3
      0047BF 8C F0            [24] 4822 	mov	b,r4
      0047C1 12 26 F5         [24] 4823 	lcall	_stack_push
      0047C4 E5 81            [12] 4824 	mov	a,sp
      0047C6 24 FC            [12] 4825 	add	a,#0xfc
      0047C8 F5 81            [12] 4826 	mov	sp,a
                                   4827 ;	calc.c:238: break;
      0047CA 02 4F BE         [24] 4828 	ljmp	00249$
                                   4829 ;	calc.c:239: case '|':
      0047CD                       4830 00209$:
                                   4831 ;	calc.c:240: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0047CD E5 08            [12] 4832 	mov	a,_bp
      0047CF 24 1A            [12] 4833 	add	a,#0x1a
      0047D1 FF               [12] 4834 	mov	r7,a
      0047D2 E5 08            [12] 4835 	mov	a,_bp
      0047D4 24 13            [12] 4836 	add	a,#0x13
      0047D6 F8               [12] 4837 	mov	r0,a
      0047D7 A6 07            [24] 4838 	mov	@r0,ar7
      0047D9 08               [12] 4839 	inc	r0
      0047DA 76 00            [12] 4840 	mov	@r0,#0x00
      0047DC 08               [12] 4841 	inc	r0
      0047DD 76 40            [12] 4842 	mov	@r0,#0x40
      0047DF E5 08            [12] 4843 	mov	a,_bp
      0047E1 24 17            [12] 4844 	add	a,#0x17
      0047E3 F8               [12] 4845 	mov	r0,a
      0047E4 74 11            [12] 4846 	mov	a,#0x11
      0047E6 26               [12] 4847 	add	a,@r0
      0047E7 FA               [12] 4848 	mov	r2,a
      0047E8 74 40            [12] 4849 	mov	a,#0x40
      0047EA 08               [12] 4850 	inc	r0
      0047EB 36               [12] 4851 	addc	a,@r0
      0047EC FB               [12] 4852 	mov	r3,a
      0047ED 08               [12] 4853 	inc	r0
      0047EE 86 04            [24] 4854 	mov	ar4,@r0
      0047F0 8A 82            [24] 4855 	mov	dpl,r2
      0047F2 8B 83            [24] 4856 	mov	dph,r3
      0047F4 8C F0            [24] 4857 	mov	b,r4
      0047F6 12 66 39         [24] 4858 	lcall	__gptrget
      0047F9 FD               [12] 4859 	mov	r5,a
      0047FA A3               [24] 4860 	inc	dptr
      0047FB 12 66 39         [24] 4861 	lcall	__gptrget
      0047FE FE               [12] 4862 	mov	r6,a
      0047FF A3               [24] 4863 	inc	dptr
      004800 12 66 39         [24] 4864 	lcall	__gptrget
      004803 FF               [12] 4865 	mov	r7,a
      004804 C0 04            [24] 4866 	push	ar4
      004806 C0 03            [24] 4867 	push	ar3
      004808 C0 02            [24] 4868 	push	ar2
      00480A E5 08            [12] 4869 	mov	a,_bp
      00480C 24 13            [12] 4870 	add	a,#0x13
      00480E F8               [12] 4871 	mov	r0,a
      00480F E6               [12] 4872 	mov	a,@r0
      004810 C0 E0            [24] 4873 	push	acc
      004812 08               [12] 4874 	inc	r0
      004813 E6               [12] 4875 	mov	a,@r0
      004814 C0 E0            [24] 4876 	push	acc
      004816 08               [12] 4877 	inc	r0
      004817 E6               [12] 4878 	mov	a,@r0
      004818 C0 E0            [24] 4879 	push	acc
      00481A 8D 82            [24] 4880 	mov	dpl,r5
      00481C 8E 83            [24] 4881 	mov	dph,r6
      00481E 8F F0            [24] 4882 	mov	b,r7
      004820 12 27 C3         [24] 4883 	lcall	_stack_pop
      004823 AE 82            [24] 4884 	mov	r6,dpl
      004825 AF 83            [24] 4885 	mov	r7,dph
      004827 15 81            [12] 4886 	dec	sp
      004829 15 81            [12] 4887 	dec	sp
      00482B 15 81            [12] 4888 	dec	sp
      00482D D0 02            [24] 4889 	pop	ar2
      00482F D0 03            [24] 4890 	pop	ar3
      004831 D0 04            [24] 4891 	pop	ar4
      004833 EE               [12] 4892 	mov	a,r6
      004834 4F               [12] 4893 	orl	a,r7
      004835 70 0C            [24] 4894 	jnz	00214$
      004837 90 7F 08         [24] 4895 	mov	dptr,#___str_10
      00483A 75 F0 80         [24] 4896 	mov	b,#0x80
      00483D 12 5F 35         [24] 4897 	lcall	_printstr
      004840 02 4F BE         [24] 4898 	ljmp	00249$
      004843                       4899 00214$:
                                   4900 ;	calc.c:241: else if (!stack_pop(ctx->ps, &d1)) {
      004843 E5 08            [12] 4901 	mov	a,_bp
      004845 24 1E            [12] 4902 	add	a,#0x1e
      004847 FF               [12] 4903 	mov	r7,a
      004848 E5 08            [12] 4904 	mov	a,_bp
      00484A 24 13            [12] 4905 	add	a,#0x13
      00484C F8               [12] 4906 	mov	r0,a
      00484D A6 07            [24] 4907 	mov	@r0,ar7
      00484F 08               [12] 4908 	inc	r0
      004850 76 00            [12] 4909 	mov	@r0,#0x00
      004852 08               [12] 4910 	inc	r0
      004853 76 40            [12] 4911 	mov	@r0,#0x40
      004855 8A 82            [24] 4912 	mov	dpl,r2
      004857 8B 83            [24] 4913 	mov	dph,r3
      004859 8C F0            [24] 4914 	mov	b,r4
      00485B 12 66 39         [24] 4915 	lcall	__gptrget
      00485E FD               [12] 4916 	mov	r5,a
      00485F A3               [24] 4917 	inc	dptr
      004860 12 66 39         [24] 4918 	lcall	__gptrget
      004863 FE               [12] 4919 	mov	r6,a
      004864 A3               [24] 4920 	inc	dptr
      004865 12 66 39         [24] 4921 	lcall	__gptrget
      004868 FF               [12] 4922 	mov	r7,a
      004869 C0 04            [24] 4923 	push	ar4
      00486B C0 03            [24] 4924 	push	ar3
      00486D C0 02            [24] 4925 	push	ar2
      00486F E5 08            [12] 4926 	mov	a,_bp
      004871 24 13            [12] 4927 	add	a,#0x13
      004873 F8               [12] 4928 	mov	r0,a
      004874 E6               [12] 4929 	mov	a,@r0
      004875 C0 E0            [24] 4930 	push	acc
      004877 08               [12] 4931 	inc	r0
      004878 E6               [12] 4932 	mov	a,@r0
      004879 C0 E0            [24] 4933 	push	acc
      00487B 08               [12] 4934 	inc	r0
      00487C E6               [12] 4935 	mov	a,@r0
      00487D C0 E0            [24] 4936 	push	acc
      00487F 8D 82            [24] 4937 	mov	dpl,r5
      004881 8E 83            [24] 4938 	mov	dph,r6
      004883 8F F0            [24] 4939 	mov	b,r7
      004885 12 27 C3         [24] 4940 	lcall	_stack_pop
      004888 AE 82            [24] 4941 	mov	r6,dpl
      00488A AF 83            [24] 4942 	mov	r7,dph
      00488C 15 81            [12] 4943 	dec	sp
      00488E 15 81            [12] 4944 	dec	sp
      004890 15 81            [12] 4945 	dec	sp
      004892 D0 02            [24] 4946 	pop	ar2
      004894 D0 03            [24] 4947 	pop	ar3
      004896 D0 04            [24] 4948 	pop	ar4
      004898 EE               [12] 4949 	mov	a,r6
      004899 4F               [12] 4950 	orl	a,r7
      00489A 70 43            [24] 4951 	jnz	00211$
                                   4952 ;	calc.c:242: (void)stack_push(ctx->ps, d0);
      00489C 8A 82            [24] 4953 	mov	dpl,r2
      00489E 8B 83            [24] 4954 	mov	dph,r3
      0048A0 8C F0            [24] 4955 	mov	b,r4
      0048A2 12 66 39         [24] 4956 	lcall	__gptrget
      0048A5 FD               [12] 4957 	mov	r5,a
      0048A6 A3               [24] 4958 	inc	dptr
      0048A7 12 66 39         [24] 4959 	lcall	__gptrget
      0048AA FE               [12] 4960 	mov	r6,a
      0048AB A3               [24] 4961 	inc	dptr
      0048AC 12 66 39         [24] 4962 	lcall	__gptrget
      0048AF FF               [12] 4963 	mov	r7,a
      0048B0 E5 08            [12] 4964 	mov	a,_bp
      0048B2 24 1A            [12] 4965 	add	a,#0x1a
      0048B4 F8               [12] 4966 	mov	r0,a
      0048B5 E6               [12] 4967 	mov	a,@r0
      0048B6 C0 E0            [24] 4968 	push	acc
      0048B8 08               [12] 4969 	inc	r0
      0048B9 E6               [12] 4970 	mov	a,@r0
      0048BA C0 E0            [24] 4971 	push	acc
      0048BC 08               [12] 4972 	inc	r0
      0048BD E6               [12] 4973 	mov	a,@r0
      0048BE C0 E0            [24] 4974 	push	acc
      0048C0 08               [12] 4975 	inc	r0
      0048C1 E6               [12] 4976 	mov	a,@r0
      0048C2 C0 E0            [24] 4977 	push	acc
      0048C4 8D 82            [24] 4978 	mov	dpl,r5
      0048C6 8E 83            [24] 4979 	mov	dph,r6
      0048C8 8F F0            [24] 4980 	mov	b,r7
      0048CA 12 26 F5         [24] 4981 	lcall	_stack_push
      0048CD E5 81            [12] 4982 	mov	a,sp
      0048CF 24 FC            [12] 4983 	add	a,#0xfc
      0048D1 F5 81            [12] 4984 	mov	sp,a
                                   4985 ;	calc.c:243: printstr("\r\nstack underflow\r\n");
      0048D3 90 7F 08         [24] 4986 	mov	dptr,#___str_10
      0048D6 75 F0 80         [24] 4987 	mov	b,#0x80
      0048D9 12 5F 35         [24] 4988 	lcall	_printstr
      0048DC 02 4F BE         [24] 4989 	ljmp	00249$
      0048DF                       4990 00211$:
                                   4991 ;	calc.c:245: d1 |= d0;
      0048DF E5 08            [12] 4992 	mov	a,_bp
      0048E1 24 1E            [12] 4993 	add	a,#0x1e
      0048E3 F8               [12] 4994 	mov	r0,a
      0048E4 E5 08            [12] 4995 	mov	a,_bp
      0048E6 24 1A            [12] 4996 	add	a,#0x1a
      0048E8 F9               [12] 4997 	mov	r1,a
      0048E9 E7               [12] 4998 	mov	a,@r1
      0048EA 46               [12] 4999 	orl	a,@r0
      0048EB F6               [12] 5000 	mov	@r0,a
      0048EC 09               [12] 5001 	inc	r1
      0048ED E7               [12] 5002 	mov	a,@r1
      0048EE 08               [12] 5003 	inc	r0
      0048EF 46               [12] 5004 	orl	a,@r0
      0048F0 F6               [12] 5005 	mov	@r0,a
      0048F1 09               [12] 5006 	inc	r1
      0048F2 E7               [12] 5007 	mov	a,@r1
      0048F3 08               [12] 5008 	inc	r0
      0048F4 46               [12] 5009 	orl	a,@r0
      0048F5 F6               [12] 5010 	mov	@r0,a
      0048F6 09               [12] 5011 	inc	r1
      0048F7 E7               [12] 5012 	mov	a,@r1
      0048F8 08               [12] 5013 	inc	r0
      0048F9 46               [12] 5014 	orl	a,@r0
      0048FA F6               [12] 5015 	mov	@r0,a
                                   5016 ;	calc.c:246: (void)stack_push(ctx->ps, d1);
      0048FB 8A 82            [24] 5017 	mov	dpl,r2
      0048FD 8B 83            [24] 5018 	mov	dph,r3
      0048FF 8C F0            [24] 5019 	mov	b,r4
      004901 12 66 39         [24] 5020 	lcall	__gptrget
      004904 FA               [12] 5021 	mov	r2,a
      004905 A3               [24] 5022 	inc	dptr
      004906 12 66 39         [24] 5023 	lcall	__gptrget
      004909 FB               [12] 5024 	mov	r3,a
      00490A A3               [24] 5025 	inc	dptr
      00490B 12 66 39         [24] 5026 	lcall	__gptrget
      00490E FC               [12] 5027 	mov	r4,a
      00490F E5 08            [12] 5028 	mov	a,_bp
      004911 24 1E            [12] 5029 	add	a,#0x1e
      004913 F8               [12] 5030 	mov	r0,a
      004914 E6               [12] 5031 	mov	a,@r0
      004915 C0 E0            [24] 5032 	push	acc
      004917 08               [12] 5033 	inc	r0
      004918 E6               [12] 5034 	mov	a,@r0
      004919 C0 E0            [24] 5035 	push	acc
      00491B 08               [12] 5036 	inc	r0
      00491C E6               [12] 5037 	mov	a,@r0
      00491D C0 E0            [24] 5038 	push	acc
      00491F 08               [12] 5039 	inc	r0
      004920 E6               [12] 5040 	mov	a,@r0
      004921 C0 E0            [24] 5041 	push	acc
      004923 8A 82            [24] 5042 	mov	dpl,r2
      004925 8B 83            [24] 5043 	mov	dph,r3
      004927 8C F0            [24] 5044 	mov	b,r4
      004929 12 26 F5         [24] 5045 	lcall	_stack_push
      00492C E5 81            [12] 5046 	mov	a,sp
      00492E 24 FC            [12] 5047 	add	a,#0xfc
      004930 F5 81            [12] 5048 	mov	sp,a
                                   5049 ;	calc.c:248: break;
      004932 02 4F BE         [24] 5050 	ljmp	00249$
                                   5051 ;	calc.c:249: case '^':
      004935                       5052 00216$:
                                   5053 ;	calc.c:250: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004935 E5 08            [12] 5054 	mov	a,_bp
      004937 24 1A            [12] 5055 	add	a,#0x1a
      004939 FF               [12] 5056 	mov	r7,a
      00493A E5 08            [12] 5057 	mov	a,_bp
      00493C 24 13            [12] 5058 	add	a,#0x13
      00493E F8               [12] 5059 	mov	r0,a
      00493F A6 07            [24] 5060 	mov	@r0,ar7
      004941 08               [12] 5061 	inc	r0
      004942 76 00            [12] 5062 	mov	@r0,#0x00
      004944 08               [12] 5063 	inc	r0
      004945 76 40            [12] 5064 	mov	@r0,#0x40
      004947 E5 08            [12] 5065 	mov	a,_bp
      004949 24 17            [12] 5066 	add	a,#0x17
      00494B F8               [12] 5067 	mov	r0,a
      00494C 74 11            [12] 5068 	mov	a,#0x11
      00494E 26               [12] 5069 	add	a,@r0
      00494F FA               [12] 5070 	mov	r2,a
      004950 74 40            [12] 5071 	mov	a,#0x40
      004952 08               [12] 5072 	inc	r0
      004953 36               [12] 5073 	addc	a,@r0
      004954 FB               [12] 5074 	mov	r3,a
      004955 08               [12] 5075 	inc	r0
      004956 86 04            [24] 5076 	mov	ar4,@r0
      004958 8A 82            [24] 5077 	mov	dpl,r2
      00495A 8B 83            [24] 5078 	mov	dph,r3
      00495C 8C F0            [24] 5079 	mov	b,r4
      00495E 12 66 39         [24] 5080 	lcall	__gptrget
      004961 FD               [12] 5081 	mov	r5,a
      004962 A3               [24] 5082 	inc	dptr
      004963 12 66 39         [24] 5083 	lcall	__gptrget
      004966 FE               [12] 5084 	mov	r6,a
      004967 A3               [24] 5085 	inc	dptr
      004968 12 66 39         [24] 5086 	lcall	__gptrget
      00496B FF               [12] 5087 	mov	r7,a
      00496C C0 04            [24] 5088 	push	ar4
      00496E C0 03            [24] 5089 	push	ar3
      004970 C0 02            [24] 5090 	push	ar2
      004972 E5 08            [12] 5091 	mov	a,_bp
      004974 24 13            [12] 5092 	add	a,#0x13
      004976 F8               [12] 5093 	mov	r0,a
      004977 E6               [12] 5094 	mov	a,@r0
      004978 C0 E0            [24] 5095 	push	acc
      00497A 08               [12] 5096 	inc	r0
      00497B E6               [12] 5097 	mov	a,@r0
      00497C C0 E0            [24] 5098 	push	acc
      00497E 08               [12] 5099 	inc	r0
      00497F E6               [12] 5100 	mov	a,@r0
      004980 C0 E0            [24] 5101 	push	acc
      004982 8D 82            [24] 5102 	mov	dpl,r5
      004984 8E 83            [24] 5103 	mov	dph,r6
      004986 8F F0            [24] 5104 	mov	b,r7
      004988 12 27 C3         [24] 5105 	lcall	_stack_pop
      00498B AE 82            [24] 5106 	mov	r6,dpl
      00498D AF 83            [24] 5107 	mov	r7,dph
      00498F 15 81            [12] 5108 	dec	sp
      004991 15 81            [12] 5109 	dec	sp
      004993 15 81            [12] 5110 	dec	sp
      004995 D0 02            [24] 5111 	pop	ar2
      004997 D0 03            [24] 5112 	pop	ar3
      004999 D0 04            [24] 5113 	pop	ar4
      00499B EE               [12] 5114 	mov	a,r6
      00499C 4F               [12] 5115 	orl	a,r7
      00499D 70 0C            [24] 5116 	jnz	00221$
      00499F 90 7F 08         [24] 5117 	mov	dptr,#___str_10
      0049A2 75 F0 80         [24] 5118 	mov	b,#0x80
      0049A5 12 5F 35         [24] 5119 	lcall	_printstr
      0049A8 02 4F BE         [24] 5120 	ljmp	00249$
      0049AB                       5121 00221$:
                                   5122 ;	calc.c:251: else if (!stack_pop(ctx->ps, &d1)) {
      0049AB E5 08            [12] 5123 	mov	a,_bp
      0049AD 24 1E            [12] 5124 	add	a,#0x1e
      0049AF FF               [12] 5125 	mov	r7,a
      0049B0 E5 08            [12] 5126 	mov	a,_bp
      0049B2 24 13            [12] 5127 	add	a,#0x13
      0049B4 F8               [12] 5128 	mov	r0,a
      0049B5 A6 07            [24] 5129 	mov	@r0,ar7
      0049B7 08               [12] 5130 	inc	r0
      0049B8 76 00            [12] 5131 	mov	@r0,#0x00
      0049BA 08               [12] 5132 	inc	r0
      0049BB 76 40            [12] 5133 	mov	@r0,#0x40
      0049BD 8A 82            [24] 5134 	mov	dpl,r2
      0049BF 8B 83            [24] 5135 	mov	dph,r3
      0049C1 8C F0            [24] 5136 	mov	b,r4
      0049C3 12 66 39         [24] 5137 	lcall	__gptrget
      0049C6 FD               [12] 5138 	mov	r5,a
      0049C7 A3               [24] 5139 	inc	dptr
      0049C8 12 66 39         [24] 5140 	lcall	__gptrget
      0049CB FE               [12] 5141 	mov	r6,a
      0049CC A3               [24] 5142 	inc	dptr
      0049CD 12 66 39         [24] 5143 	lcall	__gptrget
      0049D0 FF               [12] 5144 	mov	r7,a
      0049D1 C0 04            [24] 5145 	push	ar4
      0049D3 C0 03            [24] 5146 	push	ar3
      0049D5 C0 02            [24] 5147 	push	ar2
      0049D7 E5 08            [12] 5148 	mov	a,_bp
      0049D9 24 13            [12] 5149 	add	a,#0x13
      0049DB F8               [12] 5150 	mov	r0,a
      0049DC E6               [12] 5151 	mov	a,@r0
      0049DD C0 E0            [24] 5152 	push	acc
      0049DF 08               [12] 5153 	inc	r0
      0049E0 E6               [12] 5154 	mov	a,@r0
      0049E1 C0 E0            [24] 5155 	push	acc
      0049E3 08               [12] 5156 	inc	r0
      0049E4 E6               [12] 5157 	mov	a,@r0
      0049E5 C0 E0            [24] 5158 	push	acc
      0049E7 8D 82            [24] 5159 	mov	dpl,r5
      0049E9 8E 83            [24] 5160 	mov	dph,r6
      0049EB 8F F0            [24] 5161 	mov	b,r7
      0049ED 12 27 C3         [24] 5162 	lcall	_stack_pop
      0049F0 AE 82            [24] 5163 	mov	r6,dpl
      0049F2 AF 83            [24] 5164 	mov	r7,dph
      0049F4 15 81            [12] 5165 	dec	sp
      0049F6 15 81            [12] 5166 	dec	sp
      0049F8 15 81            [12] 5167 	dec	sp
      0049FA D0 02            [24] 5168 	pop	ar2
      0049FC D0 03            [24] 5169 	pop	ar3
      0049FE D0 04            [24] 5170 	pop	ar4
      004A00 EE               [12] 5171 	mov	a,r6
      004A01 4F               [12] 5172 	orl	a,r7
      004A02 70 43            [24] 5173 	jnz	00218$
                                   5174 ;	calc.c:252: (void)stack_push(ctx->ps, d0);
      004A04 8A 82            [24] 5175 	mov	dpl,r2
      004A06 8B 83            [24] 5176 	mov	dph,r3
      004A08 8C F0            [24] 5177 	mov	b,r4
      004A0A 12 66 39         [24] 5178 	lcall	__gptrget
      004A0D FD               [12] 5179 	mov	r5,a
      004A0E A3               [24] 5180 	inc	dptr
      004A0F 12 66 39         [24] 5181 	lcall	__gptrget
      004A12 FE               [12] 5182 	mov	r6,a
      004A13 A3               [24] 5183 	inc	dptr
      004A14 12 66 39         [24] 5184 	lcall	__gptrget
      004A17 FF               [12] 5185 	mov	r7,a
      004A18 E5 08            [12] 5186 	mov	a,_bp
      004A1A 24 1A            [12] 5187 	add	a,#0x1a
      004A1C F8               [12] 5188 	mov	r0,a
      004A1D E6               [12] 5189 	mov	a,@r0
      004A1E C0 E0            [24] 5190 	push	acc
      004A20 08               [12] 5191 	inc	r0
      004A21 E6               [12] 5192 	mov	a,@r0
      004A22 C0 E0            [24] 5193 	push	acc
      004A24 08               [12] 5194 	inc	r0
      004A25 E6               [12] 5195 	mov	a,@r0
      004A26 C0 E0            [24] 5196 	push	acc
      004A28 08               [12] 5197 	inc	r0
      004A29 E6               [12] 5198 	mov	a,@r0
      004A2A C0 E0            [24] 5199 	push	acc
      004A2C 8D 82            [24] 5200 	mov	dpl,r5
      004A2E 8E 83            [24] 5201 	mov	dph,r6
      004A30 8F F0            [24] 5202 	mov	b,r7
      004A32 12 26 F5         [24] 5203 	lcall	_stack_push
      004A35 E5 81            [12] 5204 	mov	a,sp
      004A37 24 FC            [12] 5205 	add	a,#0xfc
      004A39 F5 81            [12] 5206 	mov	sp,a
                                   5207 ;	calc.c:253: printstr("\r\nstack underflow\r\n");
      004A3B 90 7F 08         [24] 5208 	mov	dptr,#___str_10
      004A3E 75 F0 80         [24] 5209 	mov	b,#0x80
      004A41 12 5F 35         [24] 5210 	lcall	_printstr
      004A44 02 4F BE         [24] 5211 	ljmp	00249$
      004A47                       5212 00218$:
                                   5213 ;	calc.c:255: d1 ^= d0;
      004A47 E5 08            [12] 5214 	mov	a,_bp
      004A49 24 1E            [12] 5215 	add	a,#0x1e
      004A4B F8               [12] 5216 	mov	r0,a
      004A4C E5 08            [12] 5217 	mov	a,_bp
      004A4E 24 1A            [12] 5218 	add	a,#0x1a
      004A50 F9               [12] 5219 	mov	r1,a
      004A51 E7               [12] 5220 	mov	a,@r1
      004A52 66               [12] 5221 	xrl	a,@r0
      004A53 F6               [12] 5222 	mov	@r0,a
      004A54 09               [12] 5223 	inc	r1
      004A55 E7               [12] 5224 	mov	a,@r1
      004A56 08               [12] 5225 	inc	r0
      004A57 66               [12] 5226 	xrl	a,@r0
      004A58 F6               [12] 5227 	mov	@r0,a
      004A59 09               [12] 5228 	inc	r1
      004A5A E7               [12] 5229 	mov	a,@r1
      004A5B 08               [12] 5230 	inc	r0
      004A5C 66               [12] 5231 	xrl	a,@r0
      004A5D F6               [12] 5232 	mov	@r0,a
      004A5E 09               [12] 5233 	inc	r1
      004A5F E7               [12] 5234 	mov	a,@r1
      004A60 08               [12] 5235 	inc	r0
      004A61 66               [12] 5236 	xrl	a,@r0
      004A62 F6               [12] 5237 	mov	@r0,a
                                   5238 ;	calc.c:256: (void)stack_push(ctx->ps, d1);
      004A63 8A 82            [24] 5239 	mov	dpl,r2
      004A65 8B 83            [24] 5240 	mov	dph,r3
      004A67 8C F0            [24] 5241 	mov	b,r4
      004A69 12 66 39         [24] 5242 	lcall	__gptrget
      004A6C FA               [12] 5243 	mov	r2,a
      004A6D A3               [24] 5244 	inc	dptr
      004A6E 12 66 39         [24] 5245 	lcall	__gptrget
      004A71 FB               [12] 5246 	mov	r3,a
      004A72 A3               [24] 5247 	inc	dptr
      004A73 12 66 39         [24] 5248 	lcall	__gptrget
      004A76 FC               [12] 5249 	mov	r4,a
      004A77 E5 08            [12] 5250 	mov	a,_bp
      004A79 24 1E            [12] 5251 	add	a,#0x1e
      004A7B F8               [12] 5252 	mov	r0,a
      004A7C E6               [12] 5253 	mov	a,@r0
      004A7D C0 E0            [24] 5254 	push	acc
      004A7F 08               [12] 5255 	inc	r0
      004A80 E6               [12] 5256 	mov	a,@r0
      004A81 C0 E0            [24] 5257 	push	acc
      004A83 08               [12] 5258 	inc	r0
      004A84 E6               [12] 5259 	mov	a,@r0
      004A85 C0 E0            [24] 5260 	push	acc
      004A87 08               [12] 5261 	inc	r0
      004A88 E6               [12] 5262 	mov	a,@r0
      004A89 C0 E0            [24] 5263 	push	acc
      004A8B 8A 82            [24] 5264 	mov	dpl,r2
      004A8D 8B 83            [24] 5265 	mov	dph,r3
      004A8F 8C F0            [24] 5266 	mov	b,r4
      004A91 12 26 F5         [24] 5267 	lcall	_stack_push
      004A94 E5 81            [12] 5268 	mov	a,sp
      004A96 24 FC            [12] 5269 	add	a,#0xfc
      004A98 F5 81            [12] 5270 	mov	sp,a
                                   5271 ;	calc.c:258: break;
      004A9A 02 4F BE         [24] 5272 	ljmp	00249$
                                   5273 ;	calc.c:259: case '>':
      004A9D                       5274 00223$:
                                   5275 ;	calc.c:260: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004A9D E5 08            [12] 5276 	mov	a,_bp
      004A9F 24 1A            [12] 5277 	add	a,#0x1a
      004AA1 FC               [12] 5278 	mov	r4,a
      004AA2 7B 00            [12] 5279 	mov	r3,#0x00
      004AA4 7A 40            [12] 5280 	mov	r2,#0x40
      004AA6 E5 08            [12] 5281 	mov	a,_bp
      004AA8 24 17            [12] 5282 	add	a,#0x17
      004AAA F8               [12] 5283 	mov	r0,a
      004AAB E5 08            [12] 5284 	mov	a,_bp
      004AAD 24 0F            [12] 5285 	add	a,#0x0f
      004AAF F9               [12] 5286 	mov	r1,a
      004AB0 74 11            [12] 5287 	mov	a,#0x11
      004AB2 26               [12] 5288 	add	a,@r0
      004AB3 F7               [12] 5289 	mov	@r1,a
      004AB4 74 40            [12] 5290 	mov	a,#0x40
      004AB6 08               [12] 5291 	inc	r0
      004AB7 36               [12] 5292 	addc	a,@r0
      004AB8 09               [12] 5293 	inc	r1
      004AB9 F7               [12] 5294 	mov	@r1,a
      004ABA 08               [12] 5295 	inc	r0
      004ABB 09               [12] 5296 	inc	r1
      004ABC E6               [12] 5297 	mov	a,@r0
      004ABD F7               [12] 5298 	mov	@r1,a
      004ABE E5 08            [12] 5299 	mov	a,_bp
      004AC0 24 0F            [12] 5300 	add	a,#0x0f
      004AC2 F8               [12] 5301 	mov	r0,a
      004AC3 86 82            [24] 5302 	mov	dpl,@r0
      004AC5 08               [12] 5303 	inc	r0
      004AC6 86 83            [24] 5304 	mov	dph,@r0
      004AC8 08               [12] 5305 	inc	r0
      004AC9 86 F0            [24] 5306 	mov	b,@r0
      004ACB 12 66 39         [24] 5307 	lcall	__gptrget
      004ACE FD               [12] 5308 	mov	r5,a
      004ACF A3               [24] 5309 	inc	dptr
      004AD0 12 66 39         [24] 5310 	lcall	__gptrget
      004AD3 FE               [12] 5311 	mov	r6,a
      004AD4 A3               [24] 5312 	inc	dptr
      004AD5 12 66 39         [24] 5313 	lcall	__gptrget
      004AD8 FF               [12] 5314 	mov	r7,a
      004AD9 C0 04            [24] 5315 	push	ar4
      004ADB C0 03            [24] 5316 	push	ar3
      004ADD C0 02            [24] 5317 	push	ar2
      004ADF 8D 82            [24] 5318 	mov	dpl,r5
      004AE1 8E 83            [24] 5319 	mov	dph,r6
      004AE3 8F F0            [24] 5320 	mov	b,r7
      004AE5 12 27 C3         [24] 5321 	lcall	_stack_pop
      004AE8 AE 82            [24] 5322 	mov	r6,dpl
      004AEA AF 83            [24] 5323 	mov	r7,dph
      004AEC 15 81            [12] 5324 	dec	sp
      004AEE 15 81            [12] 5325 	dec	sp
      004AF0 15 81            [12] 5326 	dec	sp
      004AF2 EE               [12] 5327 	mov	a,r6
      004AF3 4F               [12] 5328 	orl	a,r7
      004AF4 70 0C            [24] 5329 	jnz	00228$
      004AF6 90 7F 08         [24] 5330 	mov	dptr,#___str_10
      004AF9 75 F0 80         [24] 5331 	mov	b,#0x80
      004AFC 12 5F 35         [24] 5332 	lcall	_printstr
      004AFF 02 4F BE         [24] 5333 	ljmp	00249$
      004B02                       5334 00228$:
                                   5335 ;	calc.c:261: else if (!stack_pop(ctx->ps, &d1)) {
      004B02 E5 08            [12] 5336 	mov	a,_bp
      004B04 24 1E            [12] 5337 	add	a,#0x1e
      004B06 FC               [12] 5338 	mov	r4,a
      004B07 7B 00            [12] 5339 	mov	r3,#0x00
      004B09 7A 40            [12] 5340 	mov	r2,#0x40
      004B0B E5 08            [12] 5341 	mov	a,_bp
      004B0D 24 0F            [12] 5342 	add	a,#0x0f
      004B0F F8               [12] 5343 	mov	r0,a
      004B10 86 82            [24] 5344 	mov	dpl,@r0
      004B12 08               [12] 5345 	inc	r0
      004B13 86 83            [24] 5346 	mov	dph,@r0
      004B15 08               [12] 5347 	inc	r0
      004B16 86 F0            [24] 5348 	mov	b,@r0
      004B18 12 66 39         [24] 5349 	lcall	__gptrget
      004B1B FD               [12] 5350 	mov	r5,a
      004B1C A3               [24] 5351 	inc	dptr
      004B1D 12 66 39         [24] 5352 	lcall	__gptrget
      004B20 FE               [12] 5353 	mov	r6,a
      004B21 A3               [24] 5354 	inc	dptr
      004B22 12 66 39         [24] 5355 	lcall	__gptrget
      004B25 FF               [12] 5356 	mov	r7,a
      004B26 C0 04            [24] 5357 	push	ar4
      004B28 C0 03            [24] 5358 	push	ar3
      004B2A C0 02            [24] 5359 	push	ar2
      004B2C 8D 82            [24] 5360 	mov	dpl,r5
      004B2E 8E 83            [24] 5361 	mov	dph,r6
      004B30 8F F0            [24] 5362 	mov	b,r7
      004B32 12 27 C3         [24] 5363 	lcall	_stack_pop
      004B35 AE 82            [24] 5364 	mov	r6,dpl
      004B37 AF 83            [24] 5365 	mov	r7,dph
      004B39 15 81            [12] 5366 	dec	sp
      004B3B 15 81            [12] 5367 	dec	sp
      004B3D 15 81            [12] 5368 	dec	sp
      004B3F EE               [12] 5369 	mov	a,r6
      004B40 4F               [12] 5370 	orl	a,r7
      004B41 70 4A            [24] 5371 	jnz	00225$
                                   5372 ;	calc.c:262: (void)stack_push(ctx->ps, d0);
      004B43 E5 08            [12] 5373 	mov	a,_bp
      004B45 24 0F            [12] 5374 	add	a,#0x0f
      004B47 F8               [12] 5375 	mov	r0,a
      004B48 86 82            [24] 5376 	mov	dpl,@r0
      004B4A 08               [12] 5377 	inc	r0
      004B4B 86 83            [24] 5378 	mov	dph,@r0
      004B4D 08               [12] 5379 	inc	r0
      004B4E 86 F0            [24] 5380 	mov	b,@r0
      004B50 12 66 39         [24] 5381 	lcall	__gptrget
      004B53 FD               [12] 5382 	mov	r5,a
      004B54 A3               [24] 5383 	inc	dptr
      004B55 12 66 39         [24] 5384 	lcall	__gptrget
      004B58 FE               [12] 5385 	mov	r6,a
      004B59 A3               [24] 5386 	inc	dptr
      004B5A 12 66 39         [24] 5387 	lcall	__gptrget
      004B5D FF               [12] 5388 	mov	r7,a
      004B5E E5 08            [12] 5389 	mov	a,_bp
      004B60 24 1A            [12] 5390 	add	a,#0x1a
      004B62 F8               [12] 5391 	mov	r0,a
      004B63 E6               [12] 5392 	mov	a,@r0
      004B64 C0 E0            [24] 5393 	push	acc
      004B66 08               [12] 5394 	inc	r0
      004B67 E6               [12] 5395 	mov	a,@r0
      004B68 C0 E0            [24] 5396 	push	acc
      004B6A 08               [12] 5397 	inc	r0
      004B6B E6               [12] 5398 	mov	a,@r0
      004B6C C0 E0            [24] 5399 	push	acc
      004B6E 08               [12] 5400 	inc	r0
      004B6F E6               [12] 5401 	mov	a,@r0
      004B70 C0 E0            [24] 5402 	push	acc
      004B72 8D 82            [24] 5403 	mov	dpl,r5
      004B74 8E 83            [24] 5404 	mov	dph,r6
      004B76 8F F0            [24] 5405 	mov	b,r7
      004B78 12 26 F5         [24] 5406 	lcall	_stack_push
      004B7B E5 81            [12] 5407 	mov	a,sp
      004B7D 24 FC            [12] 5408 	add	a,#0xfc
      004B7F F5 81            [12] 5409 	mov	sp,a
                                   5410 ;	calc.c:263: printstr("\r\nstack underflow\r\n");
      004B81 90 7F 08         [24] 5411 	mov	dptr,#___str_10
      004B84 75 F0 80         [24] 5412 	mov	b,#0x80
      004B87 12 5F 35         [24] 5413 	lcall	_printstr
      004B8A 02 4F BE         [24] 5414 	ljmp	00249$
      004B8D                       5415 00225$:
                                   5416 ;	calc.c:265: d1 = (unsigned long)d1 >> d0;
      004B8D E5 08            [12] 5417 	mov	a,_bp
      004B8F 24 1E            [12] 5418 	add	a,#0x1e
      004B91 F8               [12] 5419 	mov	r0,a
      004B92 86 04            [24] 5420 	mov	ar4,@r0
      004B94 08               [12] 5421 	inc	r0
      004B95 86 05            [24] 5422 	mov	ar5,@r0
      004B97 08               [12] 5423 	inc	r0
      004B98 86 06            [24] 5424 	mov	ar6,@r0
      004B9A 08               [12] 5425 	inc	r0
      004B9B 86 07            [24] 5426 	mov	ar7,@r0
      004B9D E5 08            [12] 5427 	mov	a,_bp
      004B9F 24 1A            [12] 5428 	add	a,#0x1a
      004BA1 F8               [12] 5429 	mov	r0,a
      004BA2 86 F0            [24] 5430 	mov	b,@r0
      004BA4 05 F0            [12] 5431 	inc	b
      004BA6 80 0D            [24] 5432 	sjmp	00592$
      004BA8                       5433 00591$:
      004BA8 C3               [12] 5434 	clr	c
      004BA9 EF               [12] 5435 	mov	a,r7
      004BAA 13               [12] 5436 	rrc	a
      004BAB FF               [12] 5437 	mov	r7,a
      004BAC EE               [12] 5438 	mov	a,r6
      004BAD 13               [12] 5439 	rrc	a
      004BAE FE               [12] 5440 	mov	r6,a
      004BAF ED               [12] 5441 	mov	a,r5
      004BB0 13               [12] 5442 	rrc	a
      004BB1 FD               [12] 5443 	mov	r5,a
      004BB2 EC               [12] 5444 	mov	a,r4
      004BB3 13               [12] 5445 	rrc	a
      004BB4 FC               [12] 5446 	mov	r4,a
      004BB5                       5447 00592$:
      004BB5 D5 F0 F0         [24] 5448 	djnz	b,00591$
      004BB8 E5 08            [12] 5449 	mov	a,_bp
      004BBA 24 1E            [12] 5450 	add	a,#0x1e
      004BBC F8               [12] 5451 	mov	r0,a
      004BBD A6 04            [24] 5452 	mov	@r0,ar4
      004BBF 08               [12] 5453 	inc	r0
      004BC0 A6 05            [24] 5454 	mov	@r0,ar5
      004BC2 08               [12] 5455 	inc	r0
      004BC3 A6 06            [24] 5456 	mov	@r0,ar6
      004BC5 08               [12] 5457 	inc	r0
      004BC6 A6 07            [24] 5458 	mov	@r0,ar7
                                   5459 ;	calc.c:266: (void)stack_push(ctx->ps, d1);
      004BC8 E5 08            [12] 5460 	mov	a,_bp
      004BCA 24 0F            [12] 5461 	add	a,#0x0f
      004BCC F8               [12] 5462 	mov	r0,a
      004BCD 86 82            [24] 5463 	mov	dpl,@r0
      004BCF 08               [12] 5464 	inc	r0
      004BD0 86 83            [24] 5465 	mov	dph,@r0
      004BD2 08               [12] 5466 	inc	r0
      004BD3 86 F0            [24] 5467 	mov	b,@r0
      004BD5 12 66 39         [24] 5468 	lcall	__gptrget
      004BD8 FD               [12] 5469 	mov	r5,a
      004BD9 A3               [24] 5470 	inc	dptr
      004BDA 12 66 39         [24] 5471 	lcall	__gptrget
      004BDD FE               [12] 5472 	mov	r6,a
      004BDE A3               [24] 5473 	inc	dptr
      004BDF 12 66 39         [24] 5474 	lcall	__gptrget
      004BE2 FF               [12] 5475 	mov	r7,a
      004BE3 E5 08            [12] 5476 	mov	a,_bp
      004BE5 24 1E            [12] 5477 	add	a,#0x1e
      004BE7 F8               [12] 5478 	mov	r0,a
      004BE8 E6               [12] 5479 	mov	a,@r0
      004BE9 C0 E0            [24] 5480 	push	acc
      004BEB 08               [12] 5481 	inc	r0
      004BEC E6               [12] 5482 	mov	a,@r0
      004BED C0 E0            [24] 5483 	push	acc
      004BEF 08               [12] 5484 	inc	r0
      004BF0 E6               [12] 5485 	mov	a,@r0
      004BF1 C0 E0            [24] 5486 	push	acc
      004BF3 08               [12] 5487 	inc	r0
      004BF4 E6               [12] 5488 	mov	a,@r0
      004BF5 C0 E0            [24] 5489 	push	acc
      004BF7 8D 82            [24] 5490 	mov	dpl,r5
      004BF9 8E 83            [24] 5491 	mov	dph,r6
      004BFB 8F F0            [24] 5492 	mov	b,r7
      004BFD 12 26 F5         [24] 5493 	lcall	_stack_push
      004C00 E5 81            [12] 5494 	mov	a,sp
      004C02 24 FC            [12] 5495 	add	a,#0xfc
      004C04 F5 81            [12] 5496 	mov	sp,a
                                   5497 ;	calc.c:268: break;
      004C06 02 4F BE         [24] 5498 	ljmp	00249$
                                   5499 ;	calc.c:269: case ']':
      004C09                       5500 00230$:
                                   5501 ;	calc.c:270: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004C09 E5 08            [12] 5502 	mov	a,_bp
      004C0B 24 1A            [12] 5503 	add	a,#0x1a
      004C0D FF               [12] 5504 	mov	r7,a
      004C0E E5 08            [12] 5505 	mov	a,_bp
      004C10 24 13            [12] 5506 	add	a,#0x13
      004C12 F8               [12] 5507 	mov	r0,a
      004C13 A6 07            [24] 5508 	mov	@r0,ar7
      004C15 08               [12] 5509 	inc	r0
      004C16 76 00            [12] 5510 	mov	@r0,#0x00
      004C18 08               [12] 5511 	inc	r0
      004C19 76 40            [12] 5512 	mov	@r0,#0x40
      004C1B E5 08            [12] 5513 	mov	a,_bp
      004C1D 24 17            [12] 5514 	add	a,#0x17
      004C1F F8               [12] 5515 	mov	r0,a
      004C20 74 11            [12] 5516 	mov	a,#0x11
      004C22 26               [12] 5517 	add	a,@r0
      004C23 FA               [12] 5518 	mov	r2,a
      004C24 74 40            [12] 5519 	mov	a,#0x40
      004C26 08               [12] 5520 	inc	r0
      004C27 36               [12] 5521 	addc	a,@r0
      004C28 FB               [12] 5522 	mov	r3,a
      004C29 08               [12] 5523 	inc	r0
      004C2A 86 04            [24] 5524 	mov	ar4,@r0
      004C2C 8A 82            [24] 5525 	mov	dpl,r2
      004C2E 8B 83            [24] 5526 	mov	dph,r3
      004C30 8C F0            [24] 5527 	mov	b,r4
      004C32 12 66 39         [24] 5528 	lcall	__gptrget
      004C35 FD               [12] 5529 	mov	r5,a
      004C36 A3               [24] 5530 	inc	dptr
      004C37 12 66 39         [24] 5531 	lcall	__gptrget
      004C3A FE               [12] 5532 	mov	r6,a
      004C3B A3               [24] 5533 	inc	dptr
      004C3C 12 66 39         [24] 5534 	lcall	__gptrget
      004C3F FF               [12] 5535 	mov	r7,a
      004C40 C0 04            [24] 5536 	push	ar4
      004C42 C0 03            [24] 5537 	push	ar3
      004C44 C0 02            [24] 5538 	push	ar2
      004C46 E5 08            [12] 5539 	mov	a,_bp
      004C48 24 13            [12] 5540 	add	a,#0x13
      004C4A F8               [12] 5541 	mov	r0,a
      004C4B E6               [12] 5542 	mov	a,@r0
      004C4C C0 E0            [24] 5543 	push	acc
      004C4E 08               [12] 5544 	inc	r0
      004C4F E6               [12] 5545 	mov	a,@r0
      004C50 C0 E0            [24] 5546 	push	acc
      004C52 08               [12] 5547 	inc	r0
      004C53 E6               [12] 5548 	mov	a,@r0
      004C54 C0 E0            [24] 5549 	push	acc
      004C56 8D 82            [24] 5550 	mov	dpl,r5
      004C58 8E 83            [24] 5551 	mov	dph,r6
      004C5A 8F F0            [24] 5552 	mov	b,r7
      004C5C 12 27 C3         [24] 5553 	lcall	_stack_pop
      004C5F AE 82            [24] 5554 	mov	r6,dpl
      004C61 AF 83            [24] 5555 	mov	r7,dph
      004C63 15 81            [12] 5556 	dec	sp
      004C65 15 81            [12] 5557 	dec	sp
      004C67 15 81            [12] 5558 	dec	sp
      004C69 D0 02            [24] 5559 	pop	ar2
      004C6B D0 03            [24] 5560 	pop	ar3
      004C6D D0 04            [24] 5561 	pop	ar4
      004C6F EE               [12] 5562 	mov	a,r6
      004C70 4F               [12] 5563 	orl	a,r7
      004C71 70 0C            [24] 5564 	jnz	00235$
      004C73 90 7F 08         [24] 5565 	mov	dptr,#___str_10
      004C76 75 F0 80         [24] 5566 	mov	b,#0x80
      004C79 12 5F 35         [24] 5567 	lcall	_printstr
      004C7C 02 4F BE         [24] 5568 	ljmp	00249$
      004C7F                       5569 00235$:
                                   5570 ;	calc.c:271: else if (!stack_pop(ctx->ps, &d1)) {
      004C7F E5 08            [12] 5571 	mov	a,_bp
      004C81 24 1E            [12] 5572 	add	a,#0x1e
      004C83 FF               [12] 5573 	mov	r7,a
      004C84 E5 08            [12] 5574 	mov	a,_bp
      004C86 24 13            [12] 5575 	add	a,#0x13
      004C88 F8               [12] 5576 	mov	r0,a
      004C89 A6 07            [24] 5577 	mov	@r0,ar7
      004C8B 08               [12] 5578 	inc	r0
      004C8C 76 00            [12] 5579 	mov	@r0,#0x00
      004C8E 08               [12] 5580 	inc	r0
      004C8F 76 40            [12] 5581 	mov	@r0,#0x40
      004C91 8A 82            [24] 5582 	mov	dpl,r2
      004C93 8B 83            [24] 5583 	mov	dph,r3
      004C95 8C F0            [24] 5584 	mov	b,r4
      004C97 12 66 39         [24] 5585 	lcall	__gptrget
      004C9A FD               [12] 5586 	mov	r5,a
      004C9B A3               [24] 5587 	inc	dptr
      004C9C 12 66 39         [24] 5588 	lcall	__gptrget
      004C9F FE               [12] 5589 	mov	r6,a
      004CA0 A3               [24] 5590 	inc	dptr
      004CA1 12 66 39         [24] 5591 	lcall	__gptrget
      004CA4 FF               [12] 5592 	mov	r7,a
      004CA5 C0 04            [24] 5593 	push	ar4
      004CA7 C0 03            [24] 5594 	push	ar3
      004CA9 C0 02            [24] 5595 	push	ar2
      004CAB E5 08            [12] 5596 	mov	a,_bp
      004CAD 24 13            [12] 5597 	add	a,#0x13
      004CAF F8               [12] 5598 	mov	r0,a
      004CB0 E6               [12] 5599 	mov	a,@r0
      004CB1 C0 E0            [24] 5600 	push	acc
      004CB3 08               [12] 5601 	inc	r0
      004CB4 E6               [12] 5602 	mov	a,@r0
      004CB5 C0 E0            [24] 5603 	push	acc
      004CB7 08               [12] 5604 	inc	r0
      004CB8 E6               [12] 5605 	mov	a,@r0
      004CB9 C0 E0            [24] 5606 	push	acc
      004CBB 8D 82            [24] 5607 	mov	dpl,r5
      004CBD 8E 83            [24] 5608 	mov	dph,r6
      004CBF 8F F0            [24] 5609 	mov	b,r7
      004CC1 12 27 C3         [24] 5610 	lcall	_stack_pop
      004CC4 AE 82            [24] 5611 	mov	r6,dpl
      004CC6 AF 83            [24] 5612 	mov	r7,dph
      004CC8 15 81            [12] 5613 	dec	sp
      004CCA 15 81            [12] 5614 	dec	sp
      004CCC 15 81            [12] 5615 	dec	sp
      004CCE D0 02            [24] 5616 	pop	ar2
      004CD0 D0 03            [24] 5617 	pop	ar3
      004CD2 D0 04            [24] 5618 	pop	ar4
      004CD4 EE               [12] 5619 	mov	a,r6
      004CD5 4F               [12] 5620 	orl	a,r7
      004CD6 70 43            [24] 5621 	jnz	00232$
                                   5622 ;	calc.c:272: (void)stack_push(ctx->ps, d0);
      004CD8 8A 82            [24] 5623 	mov	dpl,r2
      004CDA 8B 83            [24] 5624 	mov	dph,r3
      004CDC 8C F0            [24] 5625 	mov	b,r4
      004CDE 12 66 39         [24] 5626 	lcall	__gptrget
      004CE1 FD               [12] 5627 	mov	r5,a
      004CE2 A3               [24] 5628 	inc	dptr
      004CE3 12 66 39         [24] 5629 	lcall	__gptrget
      004CE6 FE               [12] 5630 	mov	r6,a
      004CE7 A3               [24] 5631 	inc	dptr
      004CE8 12 66 39         [24] 5632 	lcall	__gptrget
      004CEB FF               [12] 5633 	mov	r7,a
      004CEC E5 08            [12] 5634 	mov	a,_bp
      004CEE 24 1A            [12] 5635 	add	a,#0x1a
      004CF0 F8               [12] 5636 	mov	r0,a
      004CF1 E6               [12] 5637 	mov	a,@r0
      004CF2 C0 E0            [24] 5638 	push	acc
      004CF4 08               [12] 5639 	inc	r0
      004CF5 E6               [12] 5640 	mov	a,@r0
      004CF6 C0 E0            [24] 5641 	push	acc
      004CF8 08               [12] 5642 	inc	r0
      004CF9 E6               [12] 5643 	mov	a,@r0
      004CFA C0 E0            [24] 5644 	push	acc
      004CFC 08               [12] 5645 	inc	r0
      004CFD E6               [12] 5646 	mov	a,@r0
      004CFE C0 E0            [24] 5647 	push	acc
      004D00 8D 82            [24] 5648 	mov	dpl,r5
      004D02 8E 83            [24] 5649 	mov	dph,r6
      004D04 8F F0            [24] 5650 	mov	b,r7
      004D06 12 26 F5         [24] 5651 	lcall	_stack_push
      004D09 E5 81            [12] 5652 	mov	a,sp
      004D0B 24 FC            [12] 5653 	add	a,#0xfc
      004D0D F5 81            [12] 5654 	mov	sp,a
                                   5655 ;	calc.c:273: printstr("\r\nstack underflow\r\n");
      004D0F 90 7F 08         [24] 5656 	mov	dptr,#___str_10
      004D12 75 F0 80         [24] 5657 	mov	b,#0x80
      004D15 12 5F 35         [24] 5658 	lcall	_printstr
      004D18 02 4F BE         [24] 5659 	ljmp	00249$
      004D1B                       5660 00232$:
                                   5661 ;	calc.c:275: d1 >>= d0;
      004D1B E5 08            [12] 5662 	mov	a,_bp
      004D1D 24 1A            [12] 5663 	add	a,#0x1a
      004D1F F8               [12] 5664 	mov	r0,a
      004D20 86 F0            [24] 5665 	mov	b,@r0
      004D22 05 F0            [12] 5666 	inc	b
      004D24 E5 08            [12] 5667 	mov	a,_bp
      004D26 24 1E            [12] 5668 	add	a,#0x1e
      004D28 F8               [12] 5669 	mov	r0,a
      004D29 08               [12] 5670 	inc	r0
      004D2A 08               [12] 5671 	inc	r0
      004D2B 08               [12] 5672 	inc	r0
      004D2C E6               [12] 5673 	mov	a,@r0
      004D2D 33               [12] 5674 	rlc	a
      004D2E 92 D2            [24] 5675 	mov	ov,c
      004D30 18               [12] 5676 	dec	r0
      004D31 18               [12] 5677 	dec	r0
      004D32 18               [12] 5678 	dec	r0
      004D33 80 14            [24] 5679 	sjmp	00596$
      004D35                       5680 00595$:
      004D35 A2 D2            [12] 5681 	mov	c,ov
      004D37 08               [12] 5682 	inc	r0
      004D38 08               [12] 5683 	inc	r0
      004D39 08               [12] 5684 	inc	r0
      004D3A E6               [12] 5685 	mov	a,@r0
      004D3B 13               [12] 5686 	rrc	a
      004D3C F6               [12] 5687 	mov	@r0,a
      004D3D 18               [12] 5688 	dec	r0
      004D3E E6               [12] 5689 	mov	a,@r0
      004D3F 13               [12] 5690 	rrc	a
      004D40 F6               [12] 5691 	mov	@r0,a
      004D41 18               [12] 5692 	dec	r0
      004D42 E6               [12] 5693 	mov	a,@r0
      004D43 13               [12] 5694 	rrc	a
      004D44 F6               [12] 5695 	mov	@r0,a
      004D45 18               [12] 5696 	dec	r0
      004D46 E6               [12] 5697 	mov	a,@r0
      004D47 13               [12] 5698 	rrc	a
      004D48 F6               [12] 5699 	mov	@r0,a
      004D49                       5700 00596$:
      004D49 D5 F0 E9         [24] 5701 	djnz	b,00595$
                                   5702 ;	calc.c:276: (void)stack_push(ctx->ps, d1);
      004D4C 8A 82            [24] 5703 	mov	dpl,r2
      004D4E 8B 83            [24] 5704 	mov	dph,r3
      004D50 8C F0            [24] 5705 	mov	b,r4
      004D52 12 66 39         [24] 5706 	lcall	__gptrget
      004D55 FA               [12] 5707 	mov	r2,a
      004D56 A3               [24] 5708 	inc	dptr
      004D57 12 66 39         [24] 5709 	lcall	__gptrget
      004D5A FB               [12] 5710 	mov	r3,a
      004D5B A3               [24] 5711 	inc	dptr
      004D5C 12 66 39         [24] 5712 	lcall	__gptrget
      004D5F FC               [12] 5713 	mov	r4,a
      004D60 E5 08            [12] 5714 	mov	a,_bp
      004D62 24 1E            [12] 5715 	add	a,#0x1e
      004D64 F8               [12] 5716 	mov	r0,a
      004D65 E6               [12] 5717 	mov	a,@r0
      004D66 C0 E0            [24] 5718 	push	acc
      004D68 08               [12] 5719 	inc	r0
      004D69 E6               [12] 5720 	mov	a,@r0
      004D6A C0 E0            [24] 5721 	push	acc
      004D6C 08               [12] 5722 	inc	r0
      004D6D E6               [12] 5723 	mov	a,@r0
      004D6E C0 E0            [24] 5724 	push	acc
      004D70 08               [12] 5725 	inc	r0
      004D71 E6               [12] 5726 	mov	a,@r0
      004D72 C0 E0            [24] 5727 	push	acc
      004D74 8A 82            [24] 5728 	mov	dpl,r2
      004D76 8B 83            [24] 5729 	mov	dph,r3
      004D78 8C F0            [24] 5730 	mov	b,r4
      004D7A 12 26 F5         [24] 5731 	lcall	_stack_push
      004D7D E5 81            [12] 5732 	mov	a,sp
      004D7F 24 FC            [12] 5733 	add	a,#0xfc
      004D81 F5 81            [12] 5734 	mov	sp,a
                                   5735 ;	calc.c:278: break;
      004D83 02 4F BE         [24] 5736 	ljmp	00249$
                                   5737 ;	calc.c:279: case '<':
      004D86                       5738 00237$:
                                   5739 ;	calc.c:280: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004D86 E5 08            [12] 5740 	mov	a,_bp
      004D88 24 1A            [12] 5741 	add	a,#0x1a
      004D8A FF               [12] 5742 	mov	r7,a
      004D8B E5 08            [12] 5743 	mov	a,_bp
      004D8D 24 13            [12] 5744 	add	a,#0x13
      004D8F F8               [12] 5745 	mov	r0,a
      004D90 A6 07            [24] 5746 	mov	@r0,ar7
      004D92 08               [12] 5747 	inc	r0
      004D93 76 00            [12] 5748 	mov	@r0,#0x00
      004D95 08               [12] 5749 	inc	r0
      004D96 76 40            [12] 5750 	mov	@r0,#0x40
      004D98 E5 08            [12] 5751 	mov	a,_bp
      004D9A 24 17            [12] 5752 	add	a,#0x17
      004D9C F8               [12] 5753 	mov	r0,a
      004D9D 74 11            [12] 5754 	mov	a,#0x11
      004D9F 26               [12] 5755 	add	a,@r0
      004DA0 FA               [12] 5756 	mov	r2,a
      004DA1 74 40            [12] 5757 	mov	a,#0x40
      004DA3 08               [12] 5758 	inc	r0
      004DA4 36               [12] 5759 	addc	a,@r0
      004DA5 FB               [12] 5760 	mov	r3,a
      004DA6 08               [12] 5761 	inc	r0
      004DA7 86 04            [24] 5762 	mov	ar4,@r0
      004DA9 8A 82            [24] 5763 	mov	dpl,r2
      004DAB 8B 83            [24] 5764 	mov	dph,r3
      004DAD 8C F0            [24] 5765 	mov	b,r4
      004DAF 12 66 39         [24] 5766 	lcall	__gptrget
      004DB2 FD               [12] 5767 	mov	r5,a
      004DB3 A3               [24] 5768 	inc	dptr
      004DB4 12 66 39         [24] 5769 	lcall	__gptrget
      004DB7 FE               [12] 5770 	mov	r6,a
      004DB8 A3               [24] 5771 	inc	dptr
      004DB9 12 66 39         [24] 5772 	lcall	__gptrget
      004DBC FF               [12] 5773 	mov	r7,a
      004DBD C0 04            [24] 5774 	push	ar4
      004DBF C0 03            [24] 5775 	push	ar3
      004DC1 C0 02            [24] 5776 	push	ar2
      004DC3 E5 08            [12] 5777 	mov	a,_bp
      004DC5 24 13            [12] 5778 	add	a,#0x13
      004DC7 F8               [12] 5779 	mov	r0,a
      004DC8 E6               [12] 5780 	mov	a,@r0
      004DC9 C0 E0            [24] 5781 	push	acc
      004DCB 08               [12] 5782 	inc	r0
      004DCC E6               [12] 5783 	mov	a,@r0
      004DCD C0 E0            [24] 5784 	push	acc
      004DCF 08               [12] 5785 	inc	r0
      004DD0 E6               [12] 5786 	mov	a,@r0
      004DD1 C0 E0            [24] 5787 	push	acc
      004DD3 8D 82            [24] 5788 	mov	dpl,r5
      004DD5 8E 83            [24] 5789 	mov	dph,r6
      004DD7 8F F0            [24] 5790 	mov	b,r7
      004DD9 12 27 C3         [24] 5791 	lcall	_stack_pop
      004DDC AE 82            [24] 5792 	mov	r6,dpl
      004DDE AF 83            [24] 5793 	mov	r7,dph
      004DE0 15 81            [12] 5794 	dec	sp
      004DE2 15 81            [12] 5795 	dec	sp
      004DE4 15 81            [12] 5796 	dec	sp
      004DE6 D0 02            [24] 5797 	pop	ar2
      004DE8 D0 03            [24] 5798 	pop	ar3
      004DEA D0 04            [24] 5799 	pop	ar4
      004DEC EE               [12] 5800 	mov	a,r6
      004DED 4F               [12] 5801 	orl	a,r7
      004DEE 70 0C            [24] 5802 	jnz	00242$
      004DF0 90 7F 08         [24] 5803 	mov	dptr,#___str_10
      004DF3 75 F0 80         [24] 5804 	mov	b,#0x80
      004DF6 12 5F 35         [24] 5805 	lcall	_printstr
      004DF9 02 4F BE         [24] 5806 	ljmp	00249$
      004DFC                       5807 00242$:
                                   5808 ;	calc.c:281: else if (!stack_pop(ctx->ps, &d1)) {
      004DFC E5 08            [12] 5809 	mov	a,_bp
      004DFE 24 1E            [12] 5810 	add	a,#0x1e
      004E00 FF               [12] 5811 	mov	r7,a
      004E01 E5 08            [12] 5812 	mov	a,_bp
      004E03 24 13            [12] 5813 	add	a,#0x13
      004E05 F8               [12] 5814 	mov	r0,a
      004E06 A6 07            [24] 5815 	mov	@r0,ar7
      004E08 08               [12] 5816 	inc	r0
      004E09 76 00            [12] 5817 	mov	@r0,#0x00
      004E0B 08               [12] 5818 	inc	r0
      004E0C 76 40            [12] 5819 	mov	@r0,#0x40
      004E0E 8A 82            [24] 5820 	mov	dpl,r2
      004E10 8B 83            [24] 5821 	mov	dph,r3
      004E12 8C F0            [24] 5822 	mov	b,r4
      004E14 12 66 39         [24] 5823 	lcall	__gptrget
      004E17 FD               [12] 5824 	mov	r5,a
      004E18 A3               [24] 5825 	inc	dptr
      004E19 12 66 39         [24] 5826 	lcall	__gptrget
      004E1C FE               [12] 5827 	mov	r6,a
      004E1D A3               [24] 5828 	inc	dptr
      004E1E 12 66 39         [24] 5829 	lcall	__gptrget
      004E21 FF               [12] 5830 	mov	r7,a
      004E22 C0 04            [24] 5831 	push	ar4
      004E24 C0 03            [24] 5832 	push	ar3
      004E26 C0 02            [24] 5833 	push	ar2
      004E28 E5 08            [12] 5834 	mov	a,_bp
      004E2A 24 13            [12] 5835 	add	a,#0x13
      004E2C F8               [12] 5836 	mov	r0,a
      004E2D E6               [12] 5837 	mov	a,@r0
      004E2E C0 E0            [24] 5838 	push	acc
      004E30 08               [12] 5839 	inc	r0
      004E31 E6               [12] 5840 	mov	a,@r0
      004E32 C0 E0            [24] 5841 	push	acc
      004E34 08               [12] 5842 	inc	r0
      004E35 E6               [12] 5843 	mov	a,@r0
      004E36 C0 E0            [24] 5844 	push	acc
      004E38 8D 82            [24] 5845 	mov	dpl,r5
      004E3A 8E 83            [24] 5846 	mov	dph,r6
      004E3C 8F F0            [24] 5847 	mov	b,r7
      004E3E 12 27 C3         [24] 5848 	lcall	_stack_pop
      004E41 AE 82            [24] 5849 	mov	r6,dpl
      004E43 AF 83            [24] 5850 	mov	r7,dph
      004E45 15 81            [12] 5851 	dec	sp
      004E47 15 81            [12] 5852 	dec	sp
      004E49 15 81            [12] 5853 	dec	sp
      004E4B D0 02            [24] 5854 	pop	ar2
      004E4D D0 03            [24] 5855 	pop	ar3
      004E4F D0 04            [24] 5856 	pop	ar4
      004E51 EE               [12] 5857 	mov	a,r6
      004E52 4F               [12] 5858 	orl	a,r7
      004E53 70 43            [24] 5859 	jnz	00239$
                                   5860 ;	calc.c:282: (void)stack_push(ctx->ps, d0);
      004E55 8A 82            [24] 5861 	mov	dpl,r2
      004E57 8B 83            [24] 5862 	mov	dph,r3
      004E59 8C F0            [24] 5863 	mov	b,r4
      004E5B 12 66 39         [24] 5864 	lcall	__gptrget
      004E5E FD               [12] 5865 	mov	r5,a
      004E5F A3               [24] 5866 	inc	dptr
      004E60 12 66 39         [24] 5867 	lcall	__gptrget
      004E63 FE               [12] 5868 	mov	r6,a
      004E64 A3               [24] 5869 	inc	dptr
      004E65 12 66 39         [24] 5870 	lcall	__gptrget
      004E68 FF               [12] 5871 	mov	r7,a
      004E69 E5 08            [12] 5872 	mov	a,_bp
      004E6B 24 1A            [12] 5873 	add	a,#0x1a
      004E6D F8               [12] 5874 	mov	r0,a
      004E6E E6               [12] 5875 	mov	a,@r0
      004E6F C0 E0            [24] 5876 	push	acc
      004E71 08               [12] 5877 	inc	r0
      004E72 E6               [12] 5878 	mov	a,@r0
      004E73 C0 E0            [24] 5879 	push	acc
      004E75 08               [12] 5880 	inc	r0
      004E76 E6               [12] 5881 	mov	a,@r0
      004E77 C0 E0            [24] 5882 	push	acc
      004E79 08               [12] 5883 	inc	r0
      004E7A E6               [12] 5884 	mov	a,@r0
      004E7B C0 E0            [24] 5885 	push	acc
      004E7D 8D 82            [24] 5886 	mov	dpl,r5
      004E7F 8E 83            [24] 5887 	mov	dph,r6
      004E81 8F F0            [24] 5888 	mov	b,r7
      004E83 12 26 F5         [24] 5889 	lcall	_stack_push
      004E86 E5 81            [12] 5890 	mov	a,sp
      004E88 24 FC            [12] 5891 	add	a,#0xfc
      004E8A F5 81            [12] 5892 	mov	sp,a
                                   5893 ;	calc.c:283: printstr("\r\nstack underflow\r\n");
      004E8C 90 7F 08         [24] 5894 	mov	dptr,#___str_10
      004E8F 75 F0 80         [24] 5895 	mov	b,#0x80
      004E92 12 5F 35         [24] 5896 	lcall	_printstr
      004E95 02 4F BE         [24] 5897 	ljmp	00249$
      004E98                       5898 00239$:
                                   5899 ;	calc.c:285: d1 <<= d0;
      004E98 E5 08            [12] 5900 	mov	a,_bp
      004E9A 24 1A            [12] 5901 	add	a,#0x1a
      004E9C F8               [12] 5902 	mov	r0,a
      004E9D 86 F0            [24] 5903 	mov	b,@r0
      004E9F 05 F0            [12] 5904 	inc	b
      004EA1 E5 08            [12] 5905 	mov	a,_bp
      004EA3 24 1E            [12] 5906 	add	a,#0x1e
      004EA5 F8               [12] 5907 	mov	r0,a
      004EA6 80 12            [24] 5908 	sjmp	00600$
      004EA8                       5909 00599$:
      004EA8 E6               [12] 5910 	mov	a,@r0
      004EA9 26               [12] 5911 	add	a,@r0
      004EAA F6               [12] 5912 	mov	@r0,a
      004EAB 08               [12] 5913 	inc	r0
      004EAC E6               [12] 5914 	mov	a,@r0
      004EAD 33               [12] 5915 	rlc	a
      004EAE F6               [12] 5916 	mov	@r0,a
      004EAF 08               [12] 5917 	inc	r0
      004EB0 E6               [12] 5918 	mov	a,@r0
      004EB1 33               [12] 5919 	rlc	a
      004EB2 F6               [12] 5920 	mov	@r0,a
      004EB3 08               [12] 5921 	inc	r0
      004EB4 E6               [12] 5922 	mov	a,@r0
      004EB5 33               [12] 5923 	rlc	a
      004EB6 F6               [12] 5924 	mov	@r0,a
      004EB7 18               [12] 5925 	dec	r0
      004EB8 18               [12] 5926 	dec	r0
      004EB9 18               [12] 5927 	dec	r0
      004EBA                       5928 00600$:
      004EBA D5 F0 EB         [24] 5929 	djnz	b,00599$
                                   5930 ;	calc.c:286: (void)stack_push(ctx->ps, d1);
      004EBD 8A 82            [24] 5931 	mov	dpl,r2
      004EBF 8B 83            [24] 5932 	mov	dph,r3
      004EC1 8C F0            [24] 5933 	mov	b,r4
      004EC3 12 66 39         [24] 5934 	lcall	__gptrget
      004EC6 FA               [12] 5935 	mov	r2,a
      004EC7 A3               [24] 5936 	inc	dptr
      004EC8 12 66 39         [24] 5937 	lcall	__gptrget
      004ECB FB               [12] 5938 	mov	r3,a
      004ECC A3               [24] 5939 	inc	dptr
      004ECD 12 66 39         [24] 5940 	lcall	__gptrget
      004ED0 FC               [12] 5941 	mov	r4,a
      004ED1 E5 08            [12] 5942 	mov	a,_bp
      004ED3 24 1E            [12] 5943 	add	a,#0x1e
      004ED5 F8               [12] 5944 	mov	r0,a
      004ED6 E6               [12] 5945 	mov	a,@r0
      004ED7 C0 E0            [24] 5946 	push	acc
      004ED9 08               [12] 5947 	inc	r0
      004EDA E6               [12] 5948 	mov	a,@r0
      004EDB C0 E0            [24] 5949 	push	acc
      004EDD 08               [12] 5950 	inc	r0
      004EDE E6               [12] 5951 	mov	a,@r0
      004EDF C0 E0            [24] 5952 	push	acc
      004EE1 08               [12] 5953 	inc	r0
      004EE2 E6               [12] 5954 	mov	a,@r0
      004EE3 C0 E0            [24] 5955 	push	acc
      004EE5 8A 82            [24] 5956 	mov	dpl,r2
      004EE7 8B 83            [24] 5957 	mov	dph,r3
      004EE9 8C F0            [24] 5958 	mov	b,r4
      004EEB 12 26 F5         [24] 5959 	lcall	_stack_push
      004EEE E5 81            [12] 5960 	mov	a,sp
      004EF0 24 FC            [12] 5961 	add	a,#0xfc
      004EF2 F5 81            [12] 5962 	mov	sp,a
                                   5963 ;	calc.c:288: break;
      004EF4 02 4F BE         [24] 5964 	ljmp	00249$
                                   5965 ;	calc.c:289: case '~':
      004EF7                       5966 00244$:
                                   5967 ;	calc.c:290: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004EF7 E5 08            [12] 5968 	mov	a,_bp
      004EF9 24 1A            [12] 5969 	add	a,#0x1a
      004EFB FF               [12] 5970 	mov	r7,a
      004EFC E5 08            [12] 5971 	mov	a,_bp
      004EFE 24 13            [12] 5972 	add	a,#0x13
      004F00 F8               [12] 5973 	mov	r0,a
      004F01 A6 07            [24] 5974 	mov	@r0,ar7
      004F03 08               [12] 5975 	inc	r0
      004F04 76 00            [12] 5976 	mov	@r0,#0x00
      004F06 08               [12] 5977 	inc	r0
      004F07 76 40            [12] 5978 	mov	@r0,#0x40
      004F09 E5 08            [12] 5979 	mov	a,_bp
      004F0B 24 17            [12] 5980 	add	a,#0x17
      004F0D F8               [12] 5981 	mov	r0,a
      004F0E 74 11            [12] 5982 	mov	a,#0x11
      004F10 26               [12] 5983 	add	a,@r0
      004F11 FA               [12] 5984 	mov	r2,a
      004F12 74 40            [12] 5985 	mov	a,#0x40
      004F14 08               [12] 5986 	inc	r0
      004F15 36               [12] 5987 	addc	a,@r0
      004F16 FB               [12] 5988 	mov	r3,a
      004F17 08               [12] 5989 	inc	r0
      004F18 86 04            [24] 5990 	mov	ar4,@r0
      004F1A 8A 82            [24] 5991 	mov	dpl,r2
      004F1C 8B 83            [24] 5992 	mov	dph,r3
      004F1E 8C F0            [24] 5993 	mov	b,r4
      004F20 12 66 39         [24] 5994 	lcall	__gptrget
      004F23 FD               [12] 5995 	mov	r5,a
      004F24 A3               [24] 5996 	inc	dptr
      004F25 12 66 39         [24] 5997 	lcall	__gptrget
      004F28 FE               [12] 5998 	mov	r6,a
      004F29 A3               [24] 5999 	inc	dptr
      004F2A 12 66 39         [24] 6000 	lcall	__gptrget
      004F2D FF               [12] 6001 	mov	r7,a
      004F2E C0 04            [24] 6002 	push	ar4
      004F30 C0 03            [24] 6003 	push	ar3
      004F32 C0 02            [24] 6004 	push	ar2
      004F34 E5 08            [12] 6005 	mov	a,_bp
      004F36 24 13            [12] 6006 	add	a,#0x13
      004F38 F8               [12] 6007 	mov	r0,a
      004F39 E6               [12] 6008 	mov	a,@r0
      004F3A C0 E0            [24] 6009 	push	acc
      004F3C 08               [12] 6010 	inc	r0
      004F3D E6               [12] 6011 	mov	a,@r0
      004F3E C0 E0            [24] 6012 	push	acc
      004F40 08               [12] 6013 	inc	r0
      004F41 E6               [12] 6014 	mov	a,@r0
      004F42 C0 E0            [24] 6015 	push	acc
      004F44 8D 82            [24] 6016 	mov	dpl,r5
      004F46 8E 83            [24] 6017 	mov	dph,r6
      004F48 8F F0            [24] 6018 	mov	b,r7
      004F4A 12 27 C3         [24] 6019 	lcall	_stack_pop
      004F4D AE 82            [24] 6020 	mov	r6,dpl
      004F4F AF 83            [24] 6021 	mov	r7,dph
      004F51 15 81            [12] 6022 	dec	sp
      004F53 15 81            [12] 6023 	dec	sp
      004F55 15 81            [12] 6024 	dec	sp
      004F57 D0 02            [24] 6025 	pop	ar2
      004F59 D0 03            [24] 6026 	pop	ar3
      004F5B D0 04            [24] 6027 	pop	ar4
      004F5D EE               [12] 6028 	mov	a,r6
      004F5E 4F               [12] 6029 	orl	a,r7
      004F5F 70 0B            [24] 6030 	jnz	00246$
      004F61 90 7F 08         [24] 6031 	mov	dptr,#___str_10
      004F64 75 F0 80         [24] 6032 	mov	b,#0x80
      004F67 12 5F 35         [24] 6033 	lcall	_printstr
      004F6A 80 52            [24] 6034 	sjmp	00249$
      004F6C                       6035 00246$:
                                   6036 ;	calc.c:292: d0 = ~d0;
      004F6C E5 08            [12] 6037 	mov	a,_bp
      004F6E 24 1A            [12] 6038 	add	a,#0x1a
      004F70 F8               [12] 6039 	mov	r0,a
      004F71 E6               [12] 6040 	mov	a,@r0
      004F72 F4               [12] 6041 	cpl	a
      004F73 F6               [12] 6042 	mov	@r0,a
      004F74 08               [12] 6043 	inc	r0
      004F75 E6               [12] 6044 	mov	a,@r0
      004F76 F4               [12] 6045 	cpl	a
      004F77 F6               [12] 6046 	mov	@r0,a
      004F78 08               [12] 6047 	inc	r0
      004F79 E6               [12] 6048 	mov	a,@r0
      004F7A F4               [12] 6049 	cpl	a
      004F7B F6               [12] 6050 	mov	@r0,a
      004F7C 08               [12] 6051 	inc	r0
      004F7D E6               [12] 6052 	mov	a,@r0
      004F7E F4               [12] 6053 	cpl	a
      004F7F F6               [12] 6054 	mov	@r0,a
                                   6055 ;	calc.c:293: (void)stack_push(ctx->ps, d0);
      004F80 8A 82            [24] 6056 	mov	dpl,r2
      004F82 8B 83            [24] 6057 	mov	dph,r3
      004F84 8C F0            [24] 6058 	mov	b,r4
      004F86 12 66 39         [24] 6059 	lcall	__gptrget
      004F89 FA               [12] 6060 	mov	r2,a
      004F8A A3               [24] 6061 	inc	dptr
      004F8B 12 66 39         [24] 6062 	lcall	__gptrget
      004F8E FB               [12] 6063 	mov	r3,a
      004F8F A3               [24] 6064 	inc	dptr
      004F90 12 66 39         [24] 6065 	lcall	__gptrget
      004F93 FC               [12] 6066 	mov	r4,a
      004F94 E5 08            [12] 6067 	mov	a,_bp
      004F96 24 1A            [12] 6068 	add	a,#0x1a
      004F98 F8               [12] 6069 	mov	r0,a
      004F99 E6               [12] 6070 	mov	a,@r0
      004F9A C0 E0            [24] 6071 	push	acc
      004F9C 08               [12] 6072 	inc	r0
      004F9D E6               [12] 6073 	mov	a,@r0
      004F9E C0 E0            [24] 6074 	push	acc
      004FA0 08               [12] 6075 	inc	r0
      004FA1 E6               [12] 6076 	mov	a,@r0
      004FA2 C0 E0            [24] 6077 	push	acc
      004FA4 08               [12] 6078 	inc	r0
      004FA5 E6               [12] 6079 	mov	a,@r0
      004FA6 C0 E0            [24] 6080 	push	acc
      004FA8 8A 82            [24] 6081 	mov	dpl,r2
      004FAA 8B 83            [24] 6082 	mov	dph,r3
      004FAC 8C F0            [24] 6083 	mov	b,r4
      004FAE 12 26 F5         [24] 6084 	lcall	_stack_push
      004FB1 E5 81            [12] 6085 	mov	a,sp
      004FB3 24 FC            [12] 6086 	add	a,#0xfc
      004FB5 F5 81            [12] 6087 	mov	sp,a
                                   6088 ;	calc.c:295: break;
                                   6089 ;	calc.c:296: default:
      004FB7 80 05            [24] 6090 	sjmp	00249$
      004FB9                       6091 00248$:
                                   6092 ;	calc.c:297: return UNDEF;
      004FB9 90 80 00         [24] 6093 	mov	dptr,#0x8000
                                   6094 ;	calc.c:298: }
      004FBC 80 03            [24] 6095 	sjmp	00252$
      004FBE                       6096 00249$:
                                   6097 ;	calc.c:300: return 1;
      004FBE 90 00 01         [24] 6098 	mov	dptr,#0x0001
      004FC1                       6099 00252$:
                                   6100 ;	calc.c:301: }
      004FC1 85 08 81         [24] 6101 	mov	sp,_bp
      004FC4 D0 08            [24] 6102 	pop	_bp
      004FC6 22               [24] 6103 	ret
                                   6104 ;------------------------------------------------------------
                                   6105 ;Allocation info for local variables in function 'push_acc'
                                   6106 ;------------------------------------------------------------
                                   6107 ;delta                     Allocated to stack - _bp -5
                                   6108 ;_ctx                      Allocated to stack - _bp +5
                                   6109 ;ctx                       Allocated to registers r2 r3 r4 
                                   6110 ;sloc0                     Allocated to stack - _bp +1
                                   6111 ;------------------------------------------------------------
                                   6112 ;	calc.c:303: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   6113 ;	-----------------------------------------
                                   6114 ;	 function push_acc
                                   6115 ;	-----------------------------------------
      004FC7                       6116 _push_acc:
      004FC7 C0 08            [24] 6117 	push	_bp
      004FC9 E5 81            [12] 6118 	mov	a,sp
      004FCB F5 08            [12] 6119 	mov	_bp,a
      004FCD 24 07            [12] 6120 	add	a,#0x07
      004FCF F5 81            [12] 6121 	mov	sp,a
      004FD1 C8               [12] 6122 	xch	a,r0
      004FD2 E5 08            [12] 6123 	mov	a,_bp
      004FD4 24 05            [12] 6124 	add	a,#0x05
      004FD6 C8               [12] 6125 	xch	a,r0
      004FD7 A6 82            [24] 6126 	mov	@r0,dpl
      004FD9 08               [12] 6127 	inc	r0
      004FDA A6 83            [24] 6128 	mov	@r0,dph
      004FDC 08               [12] 6129 	inc	r0
      004FDD A6 F0            [24] 6130 	mov	@r0,b
                                   6131 ;	calc.c:304: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      004FDF E5 08            [12] 6132 	mov	a,_bp
      004FE1 24 05            [12] 6133 	add	a,#0x05
      004FE3 F8               [12] 6134 	mov	r0,a
      004FE4 86 02            [24] 6135 	mov	ar2,@r0
      004FE6 08               [12] 6136 	inc	r0
      004FE7 86 03            [24] 6137 	mov	ar3,@r0
      004FE9 08               [12] 6138 	inc	r0
      004FEA 86 04            [24] 6139 	mov	ar4,@r0
                                   6140 ;	calc.c:308: ctx->acc_valid = 0;
      004FEC 74 06            [12] 6141 	mov	a,#0x06
      004FEE 2A               [12] 6142 	add	a,r2
      004FEF FD               [12] 6143 	mov	r5,a
      004FF0 E4               [12] 6144 	clr	a
      004FF1 3B               [12] 6145 	addc	a,r3
      004FF2 FE               [12] 6146 	mov	r6,a
      004FF3 8C 07            [24] 6147 	mov	ar7,r4
      004FF5 8D 82            [24] 6148 	mov	dpl,r5
      004FF7 8E 83            [24] 6149 	mov	dph,r6
      004FF9 8F F0            [24] 6150 	mov	b,r7
      004FFB E4               [12] 6151 	clr	a
      004FFC 12 5E E9         [24] 6152 	lcall	__gptrput
                                   6153 ;	calc.c:309: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      004FFF 74 02            [12] 6154 	mov	a,#0x02
      005001 2A               [12] 6155 	add	a,r2
      005002 FF               [12] 6156 	mov	r7,a
      005003 E4               [12] 6157 	clr	a
      005004 3B               [12] 6158 	addc	a,r3
      005005 FD               [12] 6159 	mov	r5,a
      005006 8C 06            [24] 6160 	mov	ar6,r4
      005008 8F 82            [24] 6161 	mov	dpl,r7
      00500A 8D 83            [24] 6162 	mov	dph,r5
      00500C 8E F0            [24] 6163 	mov	b,r6
      00500E A8 08            [24] 6164 	mov	r0,_bp
      005010 08               [12] 6165 	inc	r0
      005011 12 66 39         [24] 6166 	lcall	__gptrget
      005014 F6               [12] 6167 	mov	@r0,a
      005015 A3               [24] 6168 	inc	dptr
      005016 12 66 39         [24] 6169 	lcall	__gptrget
      005019 08               [12] 6170 	inc	r0
      00501A F6               [12] 6171 	mov	@r0,a
      00501B A3               [24] 6172 	inc	dptr
      00501C 12 66 39         [24] 6173 	lcall	__gptrget
      00501F 08               [12] 6174 	inc	r0
      005020 F6               [12] 6175 	mov	@r0,a
      005021 A3               [24] 6176 	inc	dptr
      005022 12 66 39         [24] 6177 	lcall	__gptrget
      005025 08               [12] 6178 	inc	r0
      005026 F6               [12] 6179 	mov	@r0,a
      005027 74 11            [12] 6180 	mov	a,#0x11
      005029 2A               [12] 6181 	add	a,r2
      00502A FA               [12] 6182 	mov	r2,a
      00502B 74 40            [12] 6183 	mov	a,#0x40
      00502D 3B               [12] 6184 	addc	a,r3
      00502E FB               [12] 6185 	mov	r3,a
      00502F 8C 07            [24] 6186 	mov	ar7,r4
      005031 8A 82            [24] 6187 	mov	dpl,r2
      005033 8B 83            [24] 6188 	mov	dph,r3
      005035 8F F0            [24] 6189 	mov	b,r7
      005037 12 66 39         [24] 6190 	lcall	__gptrget
      00503A FA               [12] 6191 	mov	r2,a
      00503B A3               [24] 6192 	inc	dptr
      00503C 12 66 39         [24] 6193 	lcall	__gptrget
      00503F FB               [12] 6194 	mov	r3,a
      005040 A3               [24] 6195 	inc	dptr
      005041 12 66 39         [24] 6196 	lcall	__gptrget
      005044 FF               [12] 6197 	mov	r7,a
      005045 A8 08            [24] 6198 	mov	r0,_bp
      005047 08               [12] 6199 	inc	r0
      005048 E6               [12] 6200 	mov	a,@r0
      005049 C0 E0            [24] 6201 	push	acc
      00504B 08               [12] 6202 	inc	r0
      00504C E6               [12] 6203 	mov	a,@r0
      00504D C0 E0            [24] 6204 	push	acc
      00504F 08               [12] 6205 	inc	r0
      005050 E6               [12] 6206 	mov	a,@r0
      005051 C0 E0            [24] 6207 	push	acc
      005053 08               [12] 6208 	inc	r0
      005054 E6               [12] 6209 	mov	a,@r0
      005055 C0 E0            [24] 6210 	push	acc
      005057 8A 82            [24] 6211 	mov	dpl,r2
      005059 8B 83            [24] 6212 	mov	dph,r3
      00505B 8F F0            [24] 6213 	mov	b,r7
      00505D 12 26 F5         [24] 6214 	lcall	_stack_push
      005060 AE 82            [24] 6215 	mov	r6,dpl
      005062 AF 83            [24] 6216 	mov	r7,dph
      005064 E5 81            [12] 6217 	mov	a,sp
      005066 24 FC            [12] 6218 	add	a,#0xfc
      005068 F5 81            [12] 6219 	mov	sp,a
      00506A EE               [12] 6220 	mov	a,r6
      00506B 4F               [12] 6221 	orl	a,r7
      00506C 70 09            [24] 6222 	jnz	00102$
      00506E 90 7F 57         [24] 6223 	mov	dptr,#___str_13
      005071 75 F0 80         [24] 6224 	mov	b,#0x80
      005074 12 5F 35         [24] 6225 	lcall	_printstr
      005077                       6226 00102$:
                                   6227 ;	calc.c:311: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      005077 E5 08            [12] 6228 	mov	a,_bp
      005079 24 FB            [12] 6229 	add	a,#0xfb
      00507B F8               [12] 6230 	mov	r0,a
      00507C 86 05            [24] 6231 	mov	ar5,@r0
      00507E 08               [12] 6232 	inc	r0
      00507F 86 06            [24] 6233 	mov	ar6,@r0
      005081 08               [12] 6234 	inc	r0
      005082 86 07            [24] 6235 	mov	ar7,@r0
      005084 74 02            [12] 6236 	mov	a,#0x02
      005086 2D               [12] 6237 	add	a,r5
      005087 FA               [12] 6238 	mov	r2,a
      005088 E4               [12] 6239 	clr	a
      005089 3E               [12] 6240 	addc	a,r6
      00508A FB               [12] 6241 	mov	r3,a
      00508B 8F 04            [24] 6242 	mov	ar4,r7
      00508D 8A 82            [24] 6243 	mov	dpl,r2
      00508F 8B 83            [24] 6244 	mov	dph,r3
      005091 8C F0            [24] 6245 	mov	b,r4
      005093 12 66 39         [24] 6246 	lcall	__gptrget
      005096 FA               [12] 6247 	mov	r2,a
      005097 A3               [24] 6248 	inc	dptr
      005098 12 66 39         [24] 6249 	lcall	__gptrget
      00509B FB               [12] 6250 	mov	r3,a
      00509C BA 02 29         [24] 6251 	cjne	r2,#0x02,00104$
      00509F BB 00 26         [24] 6252 	cjne	r3,#0x00,00104$
      0050A2 C0 05            [24] 6253 	push	ar5
      0050A4 C0 06            [24] 6254 	push	ar6
      0050A6 C0 07            [24] 6255 	push	ar7
      0050A8 E5 08            [12] 6256 	mov	a,_bp
      0050AA 24 05            [12] 6257 	add	a,#0x05
      0050AC F8               [12] 6258 	mov	r0,a
      0050AD 86 82            [24] 6259 	mov	dpl,@r0
      0050AF 08               [12] 6260 	inc	r0
      0050B0 86 83            [24] 6261 	mov	dph,@r0
      0050B2 08               [12] 6262 	inc	r0
      0050B3 86 F0            [24] 6263 	mov	b,@r0
      0050B5 12 32 2C         [24] 6264 	lcall	_operator
      0050B8 AE 82            [24] 6265 	mov	r6,dpl
      0050BA AF 83            [24] 6266 	mov	r7,dph
      0050BC 15 81            [12] 6267 	dec	sp
      0050BE 15 81            [12] 6268 	dec	sp
      0050C0 15 81            [12] 6269 	dec	sp
      0050C2 8E 82            [24] 6270 	mov	dpl,r6
      0050C4 8F 83            [24] 6271 	mov	dph,r7
      0050C6 80 03            [24] 6272 	sjmp	00106$
      0050C8                       6273 00104$:
                                   6274 ;	calc.c:312: else return 1;
      0050C8 90 00 01         [24] 6275 	mov	dptr,#0x0001
      0050CB                       6276 00106$:
                                   6277 ;	calc.c:313: }
      0050CB 85 08 81         [24] 6278 	mov	sp,_bp
      0050CE D0 08            [24] 6279 	pop	_bp
      0050D0 22               [24] 6280 	ret
                                   6281 ;------------------------------------------------------------
                                   6282 ;Allocation info for local variables in function 'reset_acc'
                                   6283 ;------------------------------------------------------------
                                   6284 ;delta                     Allocated to stack - _bp -5
                                   6285 ;_ctx                      Allocated to registers r5 r6 r7 
                                   6286 ;ctx                       Allocated to registers r5 r6 r7 
                                   6287 ;------------------------------------------------------------
                                   6288 ;	calc.c:315: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   6289 ;	-----------------------------------------
                                   6290 ;	 function reset_acc
                                   6291 ;	-----------------------------------------
      0050D1                       6292 _reset_acc:
      0050D1 C0 08            [24] 6293 	push	_bp
      0050D3 85 81 08         [24] 6294 	mov	_bp,sp
      0050D6 AD 82            [24] 6295 	mov	r5,dpl
      0050D8 AE 83            [24] 6296 	mov	r6,dph
      0050DA AF F0            [24] 6297 	mov	r7,b
                                   6298 ;	calc.c:316: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   6299 ;	calc.c:318: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      0050DC E5 08            [12] 6300 	mov	a,_bp
      0050DE 24 FB            [12] 6301 	add	a,#0xfb
      0050E0 F8               [12] 6302 	mov	r0,a
      0050E1 86 02            [24] 6303 	mov	ar2,@r0
      0050E3 08               [12] 6304 	inc	r0
      0050E4 86 03            [24] 6305 	mov	ar3,@r0
      0050E6 08               [12] 6306 	inc	r0
      0050E7 86 04            [24] 6307 	mov	ar4,@r0
      0050E9 74 02            [12] 6308 	mov	a,#0x02
      0050EB 2A               [12] 6309 	add	a,r2
      0050EC FA               [12] 6310 	mov	r2,a
      0050ED E4               [12] 6311 	clr	a
      0050EE 3B               [12] 6312 	addc	a,r3
      0050EF FB               [12] 6313 	mov	r3,a
      0050F0 8A 82            [24] 6314 	mov	dpl,r2
      0050F2 8B 83            [24] 6315 	mov	dph,r3
      0050F4 8C F0            [24] 6316 	mov	b,r4
      0050F6 12 66 39         [24] 6317 	lcall	__gptrget
      0050F9 FA               [12] 6318 	mov	r2,a
      0050FA A3               [24] 6319 	inc	dptr
      0050FB 12 66 39         [24] 6320 	lcall	__gptrget
      0050FE FB               [12] 6321 	mov	r3,a
      0050FF BA 07 16         [24] 6322 	cjne	r2,#0x07,00102$
      005102 BB 00 13         [24] 6323 	cjne	r3,#0x00,00102$
      005105 74 06            [12] 6324 	mov	a,#0x06
      005107 2D               [12] 6325 	add	a,r5
      005108 FA               [12] 6326 	mov	r2,a
      005109 E4               [12] 6327 	clr	a
      00510A 3E               [12] 6328 	addc	a,r6
      00510B FB               [12] 6329 	mov	r3,a
      00510C 8F 04            [24] 6330 	mov	ar4,r7
      00510E 8A 82            [24] 6331 	mov	dpl,r2
      005110 8B 83            [24] 6332 	mov	dph,r3
      005112 8C F0            [24] 6333 	mov	b,r4
      005114 E4               [12] 6334 	clr	a
      005115 12 5E E9         [24] 6335 	lcall	__gptrput
      005118                       6336 00102$:
                                   6337 ;	calc.c:319: ctx->acc = 0l;
      005118 74 02            [12] 6338 	mov	a,#0x02
      00511A 2D               [12] 6339 	add	a,r5
      00511B FD               [12] 6340 	mov	r5,a
      00511C E4               [12] 6341 	clr	a
      00511D 3E               [12] 6342 	addc	a,r6
      00511E FE               [12] 6343 	mov	r6,a
      00511F 8D 82            [24] 6344 	mov	dpl,r5
      005121 8E 83            [24] 6345 	mov	dph,r6
      005123 8F F0            [24] 6346 	mov	b,r7
      005125 E4               [12] 6347 	clr	a
      005126 12 5E E9         [24] 6348 	lcall	__gptrput
      005129 A3               [24] 6349 	inc	dptr
      00512A 12 5E E9         [24] 6350 	lcall	__gptrput
      00512D A3               [24] 6351 	inc	dptr
      00512E 12 5E E9         [24] 6352 	lcall	__gptrput
      005131 A3               [24] 6353 	inc	dptr
      005132 12 5E E9         [24] 6354 	lcall	__gptrput
                                   6355 ;	calc.c:321: return 1;
      005135 90 00 01         [24] 6356 	mov	dptr,#0x0001
                                   6357 ;	calc.c:322: }
      005138 D0 08            [24] 6358 	pop	_bp
      00513A 22               [24] 6359 	ret
                                   6360 ;------------------------------------------------------------
                                   6361 ;Allocation info for local variables in function 'reset_base'
                                   6362 ;------------------------------------------------------------
                                   6363 ;delta                     Allocated to stack - _bp -5
                                   6364 ;_ctx                      Allocated to registers r5 r6 r7 
                                   6365 ;ctx                       Allocated to registers r5 r6 r7 
                                   6366 ;------------------------------------------------------------
                                   6367 ;	calc.c:324: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   6368 ;	-----------------------------------------
                                   6369 ;	 function reset_base
                                   6370 ;	-----------------------------------------
      00513B                       6371 _reset_base:
      00513B C0 08            [24] 6372 	push	_bp
      00513D 85 81 08         [24] 6373 	mov	_bp,sp
      005140 AD 82            [24] 6374 	mov	r5,dpl
      005142 AE 83            [24] 6375 	mov	r6,dph
      005144 AF F0            [24] 6376 	mov	r7,b
                                   6377 ;	calc.c:325: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   6378 ;	calc.c:329: switch (ctx->digit[0]) {
      005146 74 07            [12] 6379 	mov	a,#0x07
      005148 2D               [12] 6380 	add	a,r5
      005149 FA               [12] 6381 	mov	r2,a
      00514A E4               [12] 6382 	clr	a
      00514B 3E               [12] 6383 	addc	a,r6
      00514C FB               [12] 6384 	mov	r3,a
      00514D 8F 04            [24] 6385 	mov	ar4,r7
      00514F 8A 82            [24] 6386 	mov	dpl,r2
      005151 8B 83            [24] 6387 	mov	dph,r3
      005153 8C F0            [24] 6388 	mov	b,r4
      005155 12 66 39         [24] 6389 	lcall	__gptrget
      005158 FC               [12] 6390 	mov	r4,a
      005159 BC 48 02         [24] 6391 	cjne	r4,#0x48,00124$
      00515C 80 0F            [24] 6392 	sjmp	00101$
      00515E                       6393 00124$:
      00515E BC 4F 02         [24] 6394 	cjne	r4,#0x4f,00125$
      005161 80 2E            [24] 6395 	sjmp	00103$
      005163                       6396 00125$:
      005163 BC 68 02         [24] 6397 	cjne	r4,#0x68,00126$
      005166 80 17            [24] 6398 	sjmp	00102$
      005168                       6399 00126$:
                                   6400 ;	calc.c:330: case 'H':
      005168 BC 6F 48         [24] 6401 	cjne	r4,#0x6f,00105$
      00516B 80 36            [24] 6402 	sjmp	00104$
      00516D                       6403 00101$:
                                   6404 ;	calc.c:331: ctx->base = 16;
      00516D 8D 82            [24] 6405 	mov	dpl,r5
      00516F 8E 83            [24] 6406 	mov	dph,r6
      005171 8F F0            [24] 6407 	mov	b,r7
      005173 74 10            [12] 6408 	mov	a,#0x10
      005175 12 5E E9         [24] 6409 	lcall	__gptrput
      005178 A3               [24] 6410 	inc	dptr
      005179 E4               [12] 6411 	clr	a
      00517A 12 5E E9         [24] 6412 	lcall	__gptrput
                                   6413 ;	calc.c:332: break;
                                   6414 ;	calc.c:333: case 'h':
      00517D 80 34            [24] 6415 	sjmp	00105$
      00517F                       6416 00102$:
                                   6417 ;	calc.c:334: ctx->base = 10;
      00517F 8D 82            [24] 6418 	mov	dpl,r5
      005181 8E 83            [24] 6419 	mov	dph,r6
      005183 8F F0            [24] 6420 	mov	b,r7
      005185 74 0A            [12] 6421 	mov	a,#0x0a
      005187 12 5E E9         [24] 6422 	lcall	__gptrput
      00518A A3               [24] 6423 	inc	dptr
      00518B E4               [12] 6424 	clr	a
      00518C 12 5E E9         [24] 6425 	lcall	__gptrput
                                   6426 ;	calc.c:335: break;
                                   6427 ;	calc.c:336: case 'O':
      00518F 80 22            [24] 6428 	sjmp	00105$
      005191                       6429 00103$:
                                   6430 ;	calc.c:337: ctx->base = 8;
      005191 8D 82            [24] 6431 	mov	dpl,r5
      005193 8E 83            [24] 6432 	mov	dph,r6
      005195 8F F0            [24] 6433 	mov	b,r7
      005197 74 08            [12] 6434 	mov	a,#0x08
      005199 12 5E E9         [24] 6435 	lcall	__gptrput
      00519C A3               [24] 6436 	inc	dptr
      00519D E4               [12] 6437 	clr	a
      00519E 12 5E E9         [24] 6438 	lcall	__gptrput
                                   6439 ;	calc.c:338: break;
                                   6440 ;	calc.c:339: case 'o':
      0051A1 80 10            [24] 6441 	sjmp	00105$
      0051A3                       6442 00104$:
                                   6443 ;	calc.c:340: ctx->base = 2;
      0051A3 8D 82            [24] 6444 	mov	dpl,r5
      0051A5 8E 83            [24] 6445 	mov	dph,r6
      0051A7 8F F0            [24] 6446 	mov	b,r7
      0051A9 74 02            [12] 6447 	mov	a,#0x02
      0051AB 12 5E E9         [24] 6448 	lcall	__gptrput
      0051AE A3               [24] 6449 	inc	dptr
      0051AF E4               [12] 6450 	clr	a
      0051B0 12 5E E9         [24] 6451 	lcall	__gptrput
                                   6452 ;	calc.c:342: }
      0051B3                       6453 00105$:
                                   6454 ;	calc.c:344: return 1;
      0051B3 90 00 01         [24] 6455 	mov	dptr,#0x0001
                                   6456 ;	calc.c:345: }
      0051B6 D0 08            [24] 6457 	pop	_bp
      0051B8 22               [24] 6458 	ret
                                   6459 ;------------------------------------------------------------
                                   6460 ;Allocation info for local variables in function 'status'
                                   6461 ;------------------------------------------------------------
                                   6462 ;delta                     Allocated to stack - _bp -5
                                   6463 ;_ctx                      Allocated to registers r5 r6 r7 
                                   6464 ;ctx                       Allocated to stack - _bp +9
                                   6465 ;vals                      Allocated to stack - _bp +12
                                   6466 ;n                         Allocated to registers r6 r7 
                                   6467 ;__1310720011              Allocated to registers r5 r6 r7 r4 
                                   6468 ;d                         Allocated to registers 
                                   6469 ;__1310720013              Allocated to registers r2 r3 r4 r5 
                                   6470 ;d                         Allocated to registers 
                                   6471 ;__1310720015              Allocated to registers r4 r5 r6 r7 
                                   6472 ;d                         Allocated to registers 
                                   6473 ;__1310720017              Allocated to registers r2 r3 r4 r5 
                                   6474 ;d                         Allocated to registers 
                                   6475 ;__1310720019              Allocated to registers r4 r5 r6 r7 
                                   6476 ;d                         Allocated to registers 
                                   6477 ;sloc0                     Allocated to stack - _bp +1
                                   6478 ;sloc1                     Allocated to stack - _bp +4
                                   6479 ;sloc2                     Allocated to stack - _bp +7
                                   6480 ;------------------------------------------------------------
                                   6481 ;	calc.c:347: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   6482 ;	-----------------------------------------
                                   6483 ;	 function status
                                   6484 ;	-----------------------------------------
      0051B9                       6485 _status:
      0051B9 C0 08            [24] 6486 	push	_bp
      0051BB E5 81            [12] 6487 	mov	a,sp
      0051BD F5 08            [12] 6488 	mov	_bp,a
      0051BF 24 13            [12] 6489 	add	a,#0x13
      0051C1 F5 81            [12] 6490 	mov	sp,a
      0051C3 AD 82            [24] 6491 	mov	r5,dpl
      0051C5 AE 83            [24] 6492 	mov	r6,dph
      0051C7 AF F0            [24] 6493 	mov	r7,b
                                   6494 ;	calc.c:348: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      0051C9 E5 08            [12] 6495 	mov	a,_bp
      0051CB 24 09            [12] 6496 	add	a,#0x09
      0051CD F8               [12] 6497 	mov	r0,a
      0051CE A6 05            [24] 6498 	mov	@r0,ar5
      0051D0 08               [12] 6499 	inc	r0
      0051D1 A6 06            [24] 6500 	mov	@r0,ar6
      0051D3 08               [12] 6501 	inc	r0
      0051D4 A6 07            [24] 6502 	mov	@r0,ar7
                                   6503 ;	calc.c:354: printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
      0051D6 E5 08            [12] 6504 	mov	a,_bp
      0051D8 24 09            [12] 6505 	add	a,#0x09
      0051DA F8               [12] 6506 	mov	r0,a
      0051DB 86 82            [24] 6507 	mov	dpl,@r0
      0051DD 08               [12] 6508 	inc	r0
      0051DE 86 83            [24] 6509 	mov	dph,@r0
      0051E0 08               [12] 6510 	inc	r0
      0051E1 86 F0            [24] 6511 	mov	b,@r0
      0051E3 E5 08            [12] 6512 	mov	a,_bp
      0051E5 24 07            [12] 6513 	add	a,#0x07
      0051E7 F9               [12] 6514 	mov	r1,a
      0051E8 12 66 39         [24] 6515 	lcall	__gptrget
      0051EB F7               [12] 6516 	mov	@r1,a
      0051EC A3               [24] 6517 	inc	dptr
      0051ED 12 66 39         [24] 6518 	lcall	__gptrget
      0051F0 09               [12] 6519 	inc	r1
      0051F1 F7               [12] 6520 	mov	@r1,a
      0051F2 E5 08            [12] 6521 	mov	a,_bp
      0051F4 24 09            [12] 6522 	add	a,#0x09
      0051F6 F8               [12] 6523 	mov	r0,a
      0051F7 A9 08            [24] 6524 	mov	r1,_bp
      0051F9 09               [12] 6525 	inc	r1
      0051FA 74 14            [12] 6526 	mov	a,#0x14
      0051FC 26               [12] 6527 	add	a,@r0
      0051FD F7               [12] 6528 	mov	@r1,a
      0051FE 74 40            [12] 6529 	mov	a,#0x40
      005200 08               [12] 6530 	inc	r0
      005201 36               [12] 6531 	addc	a,@r0
      005202 09               [12] 6532 	inc	r1
      005203 F7               [12] 6533 	mov	@r1,a
      005204 08               [12] 6534 	inc	r0
      005205 09               [12] 6535 	inc	r1
      005206 E6               [12] 6536 	mov	a,@r0
      005207 F7               [12] 6537 	mov	@r1,a
      005208 A8 08            [24] 6538 	mov	r0,_bp
      00520A 08               [12] 6539 	inc	r0
      00520B 86 82            [24] 6540 	mov	dpl,@r0
      00520D 08               [12] 6541 	inc	r0
      00520E 86 83            [24] 6542 	mov	dph,@r0
      005210 08               [12] 6543 	inc	r0
      005211 86 F0            [24] 6544 	mov	b,@r0
      005213 12 66 39         [24] 6545 	lcall	__gptrget
      005216 FA               [12] 6546 	mov	r2,a
      005217 A3               [24] 6547 	inc	dptr
      005218 12 66 39         [24] 6548 	lcall	__gptrget
      00521B FE               [12] 6549 	mov	r6,a
      00521C A3               [24] 6550 	inc	dptr
      00521D 12 66 39         [24] 6551 	lcall	__gptrget
      005220 FF               [12] 6552 	mov	r7,a
      005221 E5 08            [12] 6553 	mov	a,_bp
      005223 24 09            [12] 6554 	add	a,#0x09
      005225 F8               [12] 6555 	mov	r0,a
      005226 E5 08            [12] 6556 	mov	a,_bp
      005228 24 04            [12] 6557 	add	a,#0x04
      00522A F9               [12] 6558 	mov	r1,a
      00522B 74 11            [12] 6559 	mov	a,#0x11
      00522D 26               [12] 6560 	add	a,@r0
      00522E F7               [12] 6561 	mov	@r1,a
      00522F 74 40            [12] 6562 	mov	a,#0x40
      005231 08               [12] 6563 	inc	r0
      005232 36               [12] 6564 	addc	a,@r0
      005233 09               [12] 6565 	inc	r1
      005234 F7               [12] 6566 	mov	@r1,a
      005235 08               [12] 6567 	inc	r0
      005236 09               [12] 6568 	inc	r1
      005237 E6               [12] 6569 	mov	a,@r0
      005238 F7               [12] 6570 	mov	@r1,a
      005239 E5 08            [12] 6571 	mov	a,_bp
      00523B 24 04            [12] 6572 	add	a,#0x04
      00523D F8               [12] 6573 	mov	r0,a
      00523E 86 82            [24] 6574 	mov	dpl,@r0
      005240 08               [12] 6575 	inc	r0
      005241 86 83            [24] 6576 	mov	dph,@r0
      005243 08               [12] 6577 	inc	r0
      005244 86 F0            [24] 6578 	mov	b,@r0
      005246 12 66 39         [24] 6579 	lcall	__gptrget
      005249 FB               [12] 6580 	mov	r3,a
      00524A A3               [24] 6581 	inc	dptr
      00524B 12 66 39         [24] 6582 	lcall	__gptrget
      00524E FC               [12] 6583 	mov	r4,a
      00524F A3               [24] 6584 	inc	dptr
      005250 12 66 39         [24] 6585 	lcall	__gptrget
      005253 FD               [12] 6586 	mov	r5,a
      005254 E5 08            [12] 6587 	mov	a,_bp
      005256 24 07            [12] 6588 	add	a,#0x07
      005258 F8               [12] 6589 	mov	r0,a
      005259 E6               [12] 6590 	mov	a,@r0
      00525A C0 E0            [24] 6591 	push	acc
      00525C 08               [12] 6592 	inc	r0
      00525D E6               [12] 6593 	mov	a,@r0
      00525E C0 E0            [24] 6594 	push	acc
      005260 C0 02            [24] 6595 	push	ar2
      005262 C0 06            [24] 6596 	push	ar6
      005264 C0 07            [24] 6597 	push	ar7
      005266 C0 03            [24] 6598 	push	ar3
      005268 C0 04            [24] 6599 	push	ar4
      00526A C0 05            [24] 6600 	push	ar5
      00526C 74 7F            [12] 6601 	mov	a,#___str_15
      00526E C0 E0            [24] 6602 	push	acc
      005270 74 7F            [12] 6603 	mov	a,#(___str_15 >> 8)
      005272 C0 E0            [24] 6604 	push	acc
      005274 74 80            [12] 6605 	mov	a,#0x80
      005276 C0 E0            [24] 6606 	push	acc
      005278 12 66 00         [24] 6607 	lcall	_printf
      00527B E5 81            [12] 6608 	mov	a,sp
      00527D 24 F5            [12] 6609 	add	a,#0xf5
      00527F F5 81            [12] 6610 	mov	sp,a
                                   6611 ;	calc.c:356: printstr("ACC\t");
      005281 90 7F 9F         [24] 6612 	mov	dptr,#___str_16
      005284 75 F0 80         [24] 6613 	mov	b,#0x80
      005287 12 5F 35         [24] 6614 	lcall	_printstr
                                   6615 ;	calc.c:357: if (ctx->acc_valid) printall(ctx->acc);
      00528A E5 08            [12] 6616 	mov	a,_bp
      00528C 24 09            [12] 6617 	add	a,#0x09
      00528E F8               [12] 6618 	mov	r0,a
      00528F 74 06            [12] 6619 	mov	a,#0x06
      005291 26               [12] 6620 	add	a,@r0
      005292 FD               [12] 6621 	mov	r5,a
      005293 E4               [12] 6622 	clr	a
      005294 08               [12] 6623 	inc	r0
      005295 36               [12] 6624 	addc	a,@r0
      005296 FE               [12] 6625 	mov	r6,a
      005297 08               [12] 6626 	inc	r0
      005298 86 07            [24] 6627 	mov	ar7,@r0
      00529A 8D 82            [24] 6628 	mov	dpl,r5
      00529C 8E 83            [24] 6629 	mov	dph,r6
      00529E 8F F0            [24] 6630 	mov	b,r7
      0052A0 12 66 39         [24] 6631 	lcall	__gptrget
      0052A3 70 03            [24] 6632 	jnz	00143$
      0052A5 02 53 62         [24] 6633 	ljmp	00102$
      0052A8                       6634 00143$:
      0052A8 E5 08            [12] 6635 	mov	a,_bp
      0052AA 24 09            [12] 6636 	add	a,#0x09
      0052AC F8               [12] 6637 	mov	r0,a
      0052AD 74 02            [12] 6638 	mov	a,#0x02
      0052AF 26               [12] 6639 	add	a,@r0
      0052B0 FD               [12] 6640 	mov	r5,a
      0052B1 E4               [12] 6641 	clr	a
      0052B2 08               [12] 6642 	inc	r0
      0052B3 36               [12] 6643 	addc	a,@r0
      0052B4 FE               [12] 6644 	mov	r6,a
      0052B5 08               [12] 6645 	inc	r0
      0052B6 86 07            [24] 6646 	mov	ar7,@r0
      0052B8 8D 82            [24] 6647 	mov	dpl,r5
      0052BA 8E 83            [24] 6648 	mov	dph,r6
      0052BC 8F F0            [24] 6649 	mov	b,r7
      0052BE 12 66 39         [24] 6650 	lcall	__gptrget
      0052C1 FD               [12] 6651 	mov	r5,a
      0052C2 A3               [24] 6652 	inc	dptr
      0052C3 12 66 39         [24] 6653 	lcall	__gptrget
      0052C6 FE               [12] 6654 	mov	r6,a
      0052C7 A3               [24] 6655 	inc	dptr
      0052C8 12 66 39         [24] 6656 	lcall	__gptrget
      0052CB FF               [12] 6657 	mov	r7,a
      0052CC A3               [24] 6658 	inc	dptr
      0052CD 12 66 39         [24] 6659 	lcall	__gptrget
      0052D0 FC               [12] 6660 	mov	r4,a
                                   6661 ;	calc.c:18: printf("%08lx\t", d);
      0052D1 C0 07            [24] 6662 	push	ar7
      0052D3 C0 06            [24] 6663 	push	ar6
      0052D5 C0 05            [24] 6664 	push	ar5
      0052D7 C0 04            [24] 6665 	push	ar4
      0052D9 C0 05            [24] 6666 	push	ar5
      0052DB C0 06            [24] 6667 	push	ar6
      0052DD C0 07            [24] 6668 	push	ar7
      0052DF C0 04            [24] 6669 	push	ar4
      0052E1 74 BA            [12] 6670 	mov	a,#___str_0
      0052E3 C0 E0            [24] 6671 	push	acc
      0052E5 74 7E            [12] 6672 	mov	a,#(___str_0 >> 8)
      0052E7 C0 E0            [24] 6673 	push	acc
      0052E9 74 80            [12] 6674 	mov	a,#0x80
      0052EB C0 E0            [24] 6675 	push	acc
      0052ED 12 66 00         [24] 6676 	lcall	_printf
      0052F0 E5 81            [12] 6677 	mov	a,sp
      0052F2 24 F9            [12] 6678 	add	a,#0xf9
      0052F4 F5 81            [12] 6679 	mov	sp,a
      0052F6 D0 04            [24] 6680 	pop	ar4
      0052F8 D0 05            [24] 6681 	pop	ar5
      0052FA D0 06            [24] 6682 	pop	ar6
      0052FC D0 07            [24] 6683 	pop	ar7
                                   6684 ;	calc.c:19: printf("% 11ld\t", d);
      0052FE C0 07            [24] 6685 	push	ar7
      005300 C0 06            [24] 6686 	push	ar6
      005302 C0 05            [24] 6687 	push	ar5
      005304 C0 04            [24] 6688 	push	ar4
      005306 C0 05            [24] 6689 	push	ar5
      005308 C0 06            [24] 6690 	push	ar6
      00530A C0 07            [24] 6691 	push	ar7
      00530C C0 04            [24] 6692 	push	ar4
      00530E 74 C1            [12] 6693 	mov	a,#___str_1
      005310 C0 E0            [24] 6694 	push	acc
      005312 74 7E            [12] 6695 	mov	a,#(___str_1 >> 8)
      005314 C0 E0            [24] 6696 	push	acc
      005316 74 80            [12] 6697 	mov	a,#0x80
      005318 C0 E0            [24] 6698 	push	acc
      00531A 12 66 00         [24] 6699 	lcall	_printf
      00531D E5 81            [12] 6700 	mov	a,sp
      00531F 24 F9            [12] 6701 	add	a,#0xf9
      005321 F5 81            [12] 6702 	mov	sp,a
      005323 D0 04            [24] 6703 	pop	ar4
      005325 D0 05            [24] 6704 	pop	ar5
      005327 D0 06            [24] 6705 	pop	ar6
      005329 D0 07            [24] 6706 	pop	ar7
                                   6707 ;	calc.c:20: printf("%011lo\t", d);
      00532B C0 07            [24] 6708 	push	ar7
      00532D C0 06            [24] 6709 	push	ar6
      00532F C0 05            [24] 6710 	push	ar5
      005331 C0 04            [24] 6711 	push	ar4
      005333 C0 05            [24] 6712 	push	ar5
      005335 C0 06            [24] 6713 	push	ar6
      005337 C0 07            [24] 6714 	push	ar7
      005339 C0 04            [24] 6715 	push	ar4
      00533B 74 C9            [12] 6716 	mov	a,#___str_2
      00533D C0 E0            [24] 6717 	push	acc
      00533F 74 7E            [12] 6718 	mov	a,#(___str_2 >> 8)
      005341 C0 E0            [24] 6719 	push	acc
      005343 74 80            [12] 6720 	mov	a,#0x80
      005345 C0 E0            [24] 6721 	push	acc
      005347 12 66 00         [24] 6722 	lcall	_printf
      00534A E5 81            [12] 6723 	mov	a,sp
      00534C 24 F9            [12] 6724 	add	a,#0xf9
      00534E F5 81            [12] 6725 	mov	sp,a
      005350 D0 04            [24] 6726 	pop	ar4
      005352 D0 05            [24] 6727 	pop	ar5
      005354 D0 06            [24] 6728 	pop	ar6
      005356 D0 07            [24] 6729 	pop	ar7
                                   6730 ;	calc.c:21: print32bin(d);
      005358 8D 82            [24] 6731 	mov	dpl,r5
      00535A 8E 83            [24] 6732 	mov	dph,r6
      00535C 8F F0            [24] 6733 	mov	b,r7
      00535E EC               [12] 6734 	mov	a,r4
      00535F 12 5F A4         [24] 6735 	lcall	_print32bin
                                   6736 ;	calc.c:357: if (ctx->acc_valid) printall(ctx->acc);
      005362                       6737 00102$:
                                   6738 ;	calc.c:359: n = stack_peek2(ctx->ps, vals);
      005362 E5 08            [12] 6739 	mov	a,_bp
      005364 24 0C            [12] 6740 	add	a,#0x0c
      005366 F9               [12] 6741 	mov	r1,a
      005367 FD               [12] 6742 	mov	r5,a
      005368 7E 00            [12] 6743 	mov	r6,#0x00
      00536A 7F 40            [12] 6744 	mov	r7,#0x40
      00536C E5 08            [12] 6745 	mov	a,_bp
      00536E 24 04            [12] 6746 	add	a,#0x04
      005370 F8               [12] 6747 	mov	r0,a
      005371 86 82            [24] 6748 	mov	dpl,@r0
      005373 08               [12] 6749 	inc	r0
      005374 86 83            [24] 6750 	mov	dph,@r0
      005376 08               [12] 6751 	inc	r0
      005377 86 F0            [24] 6752 	mov	b,@r0
      005379 12 66 39         [24] 6753 	lcall	__gptrget
      00537C FA               [12] 6754 	mov	r2,a
      00537D A3               [24] 6755 	inc	dptr
      00537E 12 66 39         [24] 6756 	lcall	__gptrget
      005381 FB               [12] 6757 	mov	r3,a
      005382 A3               [24] 6758 	inc	dptr
      005383 12 66 39         [24] 6759 	lcall	__gptrget
      005386 FC               [12] 6760 	mov	r4,a
      005387 C0 01            [24] 6761 	push	ar1
      005389 C0 05            [24] 6762 	push	ar5
      00538B C0 06            [24] 6763 	push	ar6
      00538D C0 07            [24] 6764 	push	ar7
      00538F 8A 82            [24] 6765 	mov	dpl,r2
      005391 8B 83            [24] 6766 	mov	dph,r3
      005393 8C F0            [24] 6767 	mov	b,r4
      005395 12 29 3F         [24] 6768 	lcall	_stack_peek2
      005398 AE 82            [24] 6769 	mov	r6,dpl
      00539A AF 83            [24] 6770 	mov	r7,dph
      00539C 15 81            [12] 6771 	dec	sp
      00539E 15 81            [12] 6772 	dec	sp
      0053A0 15 81            [12] 6773 	dec	sp
      0053A2 D0 01            [24] 6774 	pop	ar1
                                   6775 ;	calc.c:360: printstr("\r\nPSTOP1\t");
      0053A4 90 7F A4         [24] 6776 	mov	dptr,#___str_17
      0053A7 75 F0 80         [24] 6777 	mov	b,#0x80
      0053AA C0 07            [24] 6778 	push	ar7
      0053AC C0 06            [24] 6779 	push	ar6
      0053AE C0 01            [24] 6780 	push	ar1
      0053B0 12 5F 35         [24] 6781 	lcall	_printstr
      0053B3 D0 01            [24] 6782 	pop	ar1
      0053B5 D0 06            [24] 6783 	pop	ar6
      0053B7 D0 07            [24] 6784 	pop	ar7
                                   6785 ;	calc.c:361: if (n > 0) printall(vals[1]);
      0053B9 C3               [12] 6786 	clr	c
      0053BA E4               [12] 6787 	clr	a
      0053BB 9E               [12] 6788 	subb	a,r6
      0053BC 74 80            [12] 6789 	mov	a,#(0x00 ^ 0x80)
      0053BE 8F F0            [24] 6790 	mov	b,r7
      0053C0 63 F0 80         [24] 6791 	xrl	b,#0x80
      0053C3 95 F0            [12] 6792 	subb	a,b
      0053C5 40 03            [24] 6793 	jc	00144$
      0053C7 02 54 82         [24] 6794 	ljmp	00104$
      0053CA                       6795 00144$:
      0053CA 74 04            [12] 6796 	mov	a,#0x04
      0053CC 29               [12] 6797 	add	a,r1
      0053CD F8               [12] 6798 	mov	r0,a
      0053CE 86 02            [24] 6799 	mov	ar2,@r0
      0053D0 08               [12] 6800 	inc	r0
      0053D1 86 03            [24] 6801 	mov	ar3,@r0
      0053D3 08               [12] 6802 	inc	r0
      0053D4 86 04            [24] 6803 	mov	ar4,@r0
      0053D6 08               [12] 6804 	inc	r0
      0053D7 86 05            [24] 6805 	mov	ar5,@r0
                                   6806 ;	calc.c:18: printf("%08lx\t", d);
      0053D9 C0 07            [24] 6807 	push	ar7
      0053DB C0 06            [24] 6808 	push	ar6
      0053DD C0 05            [24] 6809 	push	ar5
      0053DF C0 04            [24] 6810 	push	ar4
      0053E1 C0 03            [24] 6811 	push	ar3
      0053E3 C0 02            [24] 6812 	push	ar2
      0053E5 C0 01            [24] 6813 	push	ar1
      0053E7 C0 02            [24] 6814 	push	ar2
      0053E9 C0 03            [24] 6815 	push	ar3
      0053EB C0 04            [24] 6816 	push	ar4
      0053ED C0 05            [24] 6817 	push	ar5
      0053EF 74 BA            [12] 6818 	mov	a,#___str_0
      0053F1 C0 E0            [24] 6819 	push	acc
      0053F3 74 7E            [12] 6820 	mov	a,#(___str_0 >> 8)
      0053F5 C0 E0            [24] 6821 	push	acc
      0053F7 74 80            [12] 6822 	mov	a,#0x80
      0053F9 C0 E0            [24] 6823 	push	acc
      0053FB 12 66 00         [24] 6824 	lcall	_printf
      0053FE E5 81            [12] 6825 	mov	a,sp
      005400 24 F9            [12] 6826 	add	a,#0xf9
      005402 F5 81            [12] 6827 	mov	sp,a
      005404 D0 01            [24] 6828 	pop	ar1
      005406 D0 02            [24] 6829 	pop	ar2
      005408 D0 03            [24] 6830 	pop	ar3
      00540A D0 04            [24] 6831 	pop	ar4
      00540C D0 05            [24] 6832 	pop	ar5
                                   6833 ;	calc.c:19: printf("% 11ld\t", d);
      00540E C0 05            [24] 6834 	push	ar5
      005410 C0 04            [24] 6835 	push	ar4
      005412 C0 03            [24] 6836 	push	ar3
      005414 C0 02            [24] 6837 	push	ar2
      005416 C0 01            [24] 6838 	push	ar1
      005418 C0 02            [24] 6839 	push	ar2
      00541A C0 03            [24] 6840 	push	ar3
      00541C C0 04            [24] 6841 	push	ar4
      00541E C0 05            [24] 6842 	push	ar5
      005420 74 C1            [12] 6843 	mov	a,#___str_1
      005422 C0 E0            [24] 6844 	push	acc
      005424 74 7E            [12] 6845 	mov	a,#(___str_1 >> 8)
      005426 C0 E0            [24] 6846 	push	acc
      005428 74 80            [12] 6847 	mov	a,#0x80
      00542A C0 E0            [24] 6848 	push	acc
      00542C 12 66 00         [24] 6849 	lcall	_printf
      00542F E5 81            [12] 6850 	mov	a,sp
      005431 24 F9            [12] 6851 	add	a,#0xf9
      005433 F5 81            [12] 6852 	mov	sp,a
      005435 D0 01            [24] 6853 	pop	ar1
      005437 D0 02            [24] 6854 	pop	ar2
      005439 D0 03            [24] 6855 	pop	ar3
      00543B D0 04            [24] 6856 	pop	ar4
      00543D D0 05            [24] 6857 	pop	ar5
                                   6858 ;	calc.c:20: printf("%011lo\t", d);
      00543F C0 05            [24] 6859 	push	ar5
      005441 C0 04            [24] 6860 	push	ar4
      005443 C0 03            [24] 6861 	push	ar3
      005445 C0 02            [24] 6862 	push	ar2
      005447 C0 01            [24] 6863 	push	ar1
      005449 C0 02            [24] 6864 	push	ar2
      00544B C0 03            [24] 6865 	push	ar3
      00544D C0 04            [24] 6866 	push	ar4
      00544F C0 05            [24] 6867 	push	ar5
      005451 74 C9            [12] 6868 	mov	a,#___str_2
      005453 C0 E0            [24] 6869 	push	acc
      005455 74 7E            [12] 6870 	mov	a,#(___str_2 >> 8)
      005457 C0 E0            [24] 6871 	push	acc
      005459 74 80            [12] 6872 	mov	a,#0x80
      00545B C0 E0            [24] 6873 	push	acc
      00545D 12 66 00         [24] 6874 	lcall	_printf
      005460 E5 81            [12] 6875 	mov	a,sp
      005462 24 F9            [12] 6876 	add	a,#0xf9
      005464 F5 81            [12] 6877 	mov	sp,a
      005466 D0 01            [24] 6878 	pop	ar1
      005468 D0 02            [24] 6879 	pop	ar2
      00546A D0 03            [24] 6880 	pop	ar3
      00546C D0 04            [24] 6881 	pop	ar4
      00546E D0 05            [24] 6882 	pop	ar5
                                   6883 ;	calc.c:21: print32bin(d);
      005470 8A 82            [24] 6884 	mov	dpl,r2
      005472 8B 83            [24] 6885 	mov	dph,r3
      005474 8C F0            [24] 6886 	mov	b,r4
      005476 ED               [12] 6887 	mov	a,r5
      005477 C0 01            [24] 6888 	push	ar1
      005479 12 5F A4         [24] 6889 	lcall	_print32bin
      00547C D0 01            [24] 6890 	pop	ar1
      00547E D0 06            [24] 6891 	pop	ar6
      005480 D0 07            [24] 6892 	pop	ar7
                                   6893 ;	calc.c:361: if (n > 0) printall(vals[1]);
      005482                       6894 00104$:
                                   6895 ;	calc.c:362: printstr("\r\nPSTOP0\t");
      005482 90 7F AE         [24] 6896 	mov	dptr,#___str_18
      005485 75 F0 80         [24] 6897 	mov	b,#0x80
      005488 C0 07            [24] 6898 	push	ar7
      00548A C0 06            [24] 6899 	push	ar6
      00548C C0 01            [24] 6900 	push	ar1
      00548E 12 5F 35         [24] 6901 	lcall	_printstr
      005491 D0 01            [24] 6902 	pop	ar1
      005493 D0 06            [24] 6903 	pop	ar6
      005495 D0 07            [24] 6904 	pop	ar7
                                   6905 ;	calc.c:363: if (n > 1) printall(vals[0]);
      005497 C3               [12] 6906 	clr	c
      005498 74 01            [12] 6907 	mov	a,#0x01
      00549A 9E               [12] 6908 	subb	a,r6
      00549B 74 80            [12] 6909 	mov	a,#(0x00 ^ 0x80)
      00549D 8F F0            [24] 6910 	mov	b,r7
      00549F 63 F0 80         [24] 6911 	xrl	b,#0x80
      0054A2 95 F0            [12] 6912 	subb	a,b
      0054A4 40 03            [24] 6913 	jc	00145$
      0054A6 02 55 58         [24] 6914 	ljmp	00106$
      0054A9                       6915 00145$:
      0054A9 87 04            [24] 6916 	mov	ar4,@r1
      0054AB 09               [12] 6917 	inc	r1
      0054AC 87 05            [24] 6918 	mov	ar5,@r1
      0054AE 09               [12] 6919 	inc	r1
      0054AF 87 06            [24] 6920 	mov	ar6,@r1
      0054B1 09               [12] 6921 	inc	r1
      0054B2 87 07            [24] 6922 	mov	ar7,@r1
      0054B4 19               [12] 6923 	dec	r1
      0054B5 19               [12] 6924 	dec	r1
      0054B6 19               [12] 6925 	dec	r1
                                   6926 ;	calc.c:18: printf("%08lx\t", d);
      0054B7 C0 07            [24] 6927 	push	ar7
      0054B9 C0 06            [24] 6928 	push	ar6
      0054BB C0 05            [24] 6929 	push	ar5
      0054BD C0 04            [24] 6930 	push	ar4
      0054BF C0 01            [24] 6931 	push	ar1
      0054C1 C0 04            [24] 6932 	push	ar4
      0054C3 C0 05            [24] 6933 	push	ar5
      0054C5 C0 06            [24] 6934 	push	ar6
      0054C7 C0 07            [24] 6935 	push	ar7
      0054C9 74 BA            [12] 6936 	mov	a,#___str_0
      0054CB C0 E0            [24] 6937 	push	acc
      0054CD 74 7E            [12] 6938 	mov	a,#(___str_0 >> 8)
      0054CF C0 E0            [24] 6939 	push	acc
      0054D1 74 80            [12] 6940 	mov	a,#0x80
      0054D3 C0 E0            [24] 6941 	push	acc
      0054D5 12 66 00         [24] 6942 	lcall	_printf
      0054D8 E5 81            [12] 6943 	mov	a,sp
      0054DA 24 F9            [12] 6944 	add	a,#0xf9
      0054DC F5 81            [12] 6945 	mov	sp,a
      0054DE D0 01            [24] 6946 	pop	ar1
      0054E0 D0 04            [24] 6947 	pop	ar4
      0054E2 D0 05            [24] 6948 	pop	ar5
      0054E4 D0 06            [24] 6949 	pop	ar6
      0054E6 D0 07            [24] 6950 	pop	ar7
                                   6951 ;	calc.c:19: printf("% 11ld\t", d);
      0054E8 C0 07            [24] 6952 	push	ar7
      0054EA C0 06            [24] 6953 	push	ar6
      0054EC C0 05            [24] 6954 	push	ar5
      0054EE C0 04            [24] 6955 	push	ar4
      0054F0 C0 01            [24] 6956 	push	ar1
      0054F2 C0 04            [24] 6957 	push	ar4
      0054F4 C0 05            [24] 6958 	push	ar5
      0054F6 C0 06            [24] 6959 	push	ar6
      0054F8 C0 07            [24] 6960 	push	ar7
      0054FA 74 C1            [12] 6961 	mov	a,#___str_1
      0054FC C0 E0            [24] 6962 	push	acc
      0054FE 74 7E            [12] 6963 	mov	a,#(___str_1 >> 8)
      005500 C0 E0            [24] 6964 	push	acc
      005502 74 80            [12] 6965 	mov	a,#0x80
      005504 C0 E0            [24] 6966 	push	acc
      005506 12 66 00         [24] 6967 	lcall	_printf
      005509 E5 81            [12] 6968 	mov	a,sp
      00550B 24 F9            [12] 6969 	add	a,#0xf9
      00550D F5 81            [12] 6970 	mov	sp,a
      00550F D0 01            [24] 6971 	pop	ar1
      005511 D0 04            [24] 6972 	pop	ar4
      005513 D0 05            [24] 6973 	pop	ar5
      005515 D0 06            [24] 6974 	pop	ar6
      005517 D0 07            [24] 6975 	pop	ar7
                                   6976 ;	calc.c:20: printf("%011lo\t", d);
      005519 C0 07            [24] 6977 	push	ar7
      00551B C0 06            [24] 6978 	push	ar6
      00551D C0 05            [24] 6979 	push	ar5
      00551F C0 04            [24] 6980 	push	ar4
      005521 C0 01            [24] 6981 	push	ar1
      005523 C0 04            [24] 6982 	push	ar4
      005525 C0 05            [24] 6983 	push	ar5
      005527 C0 06            [24] 6984 	push	ar6
      005529 C0 07            [24] 6985 	push	ar7
      00552B 74 C9            [12] 6986 	mov	a,#___str_2
      00552D C0 E0            [24] 6987 	push	acc
      00552F 74 7E            [12] 6988 	mov	a,#(___str_2 >> 8)
      005531 C0 E0            [24] 6989 	push	acc
      005533 74 80            [12] 6990 	mov	a,#0x80
      005535 C0 E0            [24] 6991 	push	acc
      005537 12 66 00         [24] 6992 	lcall	_printf
      00553A E5 81            [12] 6993 	mov	a,sp
      00553C 24 F9            [12] 6994 	add	a,#0xf9
      00553E F5 81            [12] 6995 	mov	sp,a
      005540 D0 01            [24] 6996 	pop	ar1
      005542 D0 04            [24] 6997 	pop	ar4
      005544 D0 05            [24] 6998 	pop	ar5
      005546 D0 06            [24] 6999 	pop	ar6
      005548 D0 07            [24] 7000 	pop	ar7
                                   7001 ;	calc.c:21: print32bin(d);
      00554A 8C 82            [24] 7002 	mov	dpl,r4
      00554C 8D 83            [24] 7003 	mov	dph,r5
      00554E 8E F0            [24] 7004 	mov	b,r6
      005550 EF               [12] 7005 	mov	a,r7
      005551 C0 01            [24] 7006 	push	ar1
      005553 12 5F A4         [24] 7007 	lcall	_print32bin
      005556 D0 01            [24] 7008 	pop	ar1
                                   7009 ;	calc.c:363: if (n > 1) printall(vals[0]);
      005558                       7010 00106$:
                                   7011 ;	calc.c:365: n = stack_peek2(ctx->ss, vals);
      005558 89 07            [24] 7012 	mov	ar7,r1
      00555A 7E 00            [12] 7013 	mov	r6,#0x00
      00555C 7D 40            [12] 7014 	mov	r5,#0x40
      00555E A8 08            [24] 7015 	mov	r0,_bp
      005560 08               [12] 7016 	inc	r0
      005561 86 82            [24] 7017 	mov	dpl,@r0
      005563 08               [12] 7018 	inc	r0
      005564 86 83            [24] 7019 	mov	dph,@r0
      005566 08               [12] 7020 	inc	r0
      005567 86 F0            [24] 7021 	mov	b,@r0
      005569 12 66 39         [24] 7022 	lcall	__gptrget
      00556C FA               [12] 7023 	mov	r2,a
      00556D A3               [24] 7024 	inc	dptr
      00556E 12 66 39         [24] 7025 	lcall	__gptrget
      005571 FB               [12] 7026 	mov	r3,a
      005572 A3               [24] 7027 	inc	dptr
      005573 12 66 39         [24] 7028 	lcall	__gptrget
      005576 FC               [12] 7029 	mov	r4,a
      005577 C0 01            [24] 7030 	push	ar1
      005579 C0 07            [24] 7031 	push	ar7
      00557B C0 06            [24] 7032 	push	ar6
      00557D C0 05            [24] 7033 	push	ar5
      00557F 8A 82            [24] 7034 	mov	dpl,r2
      005581 8B 83            [24] 7035 	mov	dph,r3
      005583 8C F0            [24] 7036 	mov	b,r4
      005585 12 29 3F         [24] 7037 	lcall	_stack_peek2
      005588 AE 82            [24] 7038 	mov	r6,dpl
      00558A AF 83            [24] 7039 	mov	r7,dph
      00558C 15 81            [12] 7040 	dec	sp
      00558E 15 81            [12] 7041 	dec	sp
      005590 15 81            [12] 7042 	dec	sp
      005592 D0 01            [24] 7043 	pop	ar1
                                   7044 ;	calc.c:366: printstr("\r\nSSTOP1\t");
      005594 90 7F B8         [24] 7045 	mov	dptr,#___str_19
      005597 75 F0 80         [24] 7046 	mov	b,#0x80
      00559A C0 07            [24] 7047 	push	ar7
      00559C C0 06            [24] 7048 	push	ar6
      00559E C0 01            [24] 7049 	push	ar1
      0055A0 12 5F 35         [24] 7050 	lcall	_printstr
      0055A3 D0 01            [24] 7051 	pop	ar1
      0055A5 D0 06            [24] 7052 	pop	ar6
      0055A7 D0 07            [24] 7053 	pop	ar7
                                   7054 ;	calc.c:367: if (n > 0) printall(vals[1]);
      0055A9 C3               [12] 7055 	clr	c
      0055AA E4               [12] 7056 	clr	a
      0055AB 9E               [12] 7057 	subb	a,r6
      0055AC 74 80            [12] 7058 	mov	a,#(0x00 ^ 0x80)
      0055AE 8F F0            [24] 7059 	mov	b,r7
      0055B0 63 F0 80         [24] 7060 	xrl	b,#0x80
      0055B3 95 F0            [12] 7061 	subb	a,b
      0055B5 40 03            [24] 7062 	jc	00146$
      0055B7 02 56 72         [24] 7063 	ljmp	00108$
      0055BA                       7064 00146$:
      0055BA 74 04            [12] 7065 	mov	a,#0x04
      0055BC 29               [12] 7066 	add	a,r1
      0055BD F8               [12] 7067 	mov	r0,a
      0055BE 86 02            [24] 7068 	mov	ar2,@r0
      0055C0 08               [12] 7069 	inc	r0
      0055C1 86 03            [24] 7070 	mov	ar3,@r0
      0055C3 08               [12] 7071 	inc	r0
      0055C4 86 04            [24] 7072 	mov	ar4,@r0
      0055C6 08               [12] 7073 	inc	r0
      0055C7 86 05            [24] 7074 	mov	ar5,@r0
                                   7075 ;	calc.c:18: printf("%08lx\t", d);
      0055C9 C0 07            [24] 7076 	push	ar7
      0055CB C0 06            [24] 7077 	push	ar6
      0055CD C0 05            [24] 7078 	push	ar5
      0055CF C0 04            [24] 7079 	push	ar4
      0055D1 C0 03            [24] 7080 	push	ar3
      0055D3 C0 02            [24] 7081 	push	ar2
      0055D5 C0 01            [24] 7082 	push	ar1
      0055D7 C0 02            [24] 7083 	push	ar2
      0055D9 C0 03            [24] 7084 	push	ar3
      0055DB C0 04            [24] 7085 	push	ar4
      0055DD C0 05            [24] 7086 	push	ar5
      0055DF 74 BA            [12] 7087 	mov	a,#___str_0
      0055E1 C0 E0            [24] 7088 	push	acc
      0055E3 74 7E            [12] 7089 	mov	a,#(___str_0 >> 8)
      0055E5 C0 E0            [24] 7090 	push	acc
      0055E7 74 80            [12] 7091 	mov	a,#0x80
      0055E9 C0 E0            [24] 7092 	push	acc
      0055EB 12 66 00         [24] 7093 	lcall	_printf
      0055EE E5 81            [12] 7094 	mov	a,sp
      0055F0 24 F9            [12] 7095 	add	a,#0xf9
      0055F2 F5 81            [12] 7096 	mov	sp,a
      0055F4 D0 01            [24] 7097 	pop	ar1
      0055F6 D0 02            [24] 7098 	pop	ar2
      0055F8 D0 03            [24] 7099 	pop	ar3
      0055FA D0 04            [24] 7100 	pop	ar4
      0055FC D0 05            [24] 7101 	pop	ar5
                                   7102 ;	calc.c:19: printf("% 11ld\t", d);
      0055FE C0 05            [24] 7103 	push	ar5
      005600 C0 04            [24] 7104 	push	ar4
      005602 C0 03            [24] 7105 	push	ar3
      005604 C0 02            [24] 7106 	push	ar2
      005606 C0 01            [24] 7107 	push	ar1
      005608 C0 02            [24] 7108 	push	ar2
      00560A C0 03            [24] 7109 	push	ar3
      00560C C0 04            [24] 7110 	push	ar4
      00560E C0 05            [24] 7111 	push	ar5
      005610 74 C1            [12] 7112 	mov	a,#___str_1
      005612 C0 E0            [24] 7113 	push	acc
      005614 74 7E            [12] 7114 	mov	a,#(___str_1 >> 8)
      005616 C0 E0            [24] 7115 	push	acc
      005618 74 80            [12] 7116 	mov	a,#0x80
      00561A C0 E0            [24] 7117 	push	acc
      00561C 12 66 00         [24] 7118 	lcall	_printf
      00561F E5 81            [12] 7119 	mov	a,sp
      005621 24 F9            [12] 7120 	add	a,#0xf9
      005623 F5 81            [12] 7121 	mov	sp,a
      005625 D0 01            [24] 7122 	pop	ar1
      005627 D0 02            [24] 7123 	pop	ar2
      005629 D0 03            [24] 7124 	pop	ar3
      00562B D0 04            [24] 7125 	pop	ar4
      00562D D0 05            [24] 7126 	pop	ar5
                                   7127 ;	calc.c:20: printf("%011lo\t", d);
      00562F C0 05            [24] 7128 	push	ar5
      005631 C0 04            [24] 7129 	push	ar4
      005633 C0 03            [24] 7130 	push	ar3
      005635 C0 02            [24] 7131 	push	ar2
      005637 C0 01            [24] 7132 	push	ar1
      005639 C0 02            [24] 7133 	push	ar2
      00563B C0 03            [24] 7134 	push	ar3
      00563D C0 04            [24] 7135 	push	ar4
      00563F C0 05            [24] 7136 	push	ar5
      005641 74 C9            [12] 7137 	mov	a,#___str_2
      005643 C0 E0            [24] 7138 	push	acc
      005645 74 7E            [12] 7139 	mov	a,#(___str_2 >> 8)
      005647 C0 E0            [24] 7140 	push	acc
      005649 74 80            [12] 7141 	mov	a,#0x80
      00564B C0 E0            [24] 7142 	push	acc
      00564D 12 66 00         [24] 7143 	lcall	_printf
      005650 E5 81            [12] 7144 	mov	a,sp
      005652 24 F9            [12] 7145 	add	a,#0xf9
      005654 F5 81            [12] 7146 	mov	sp,a
      005656 D0 01            [24] 7147 	pop	ar1
      005658 D0 02            [24] 7148 	pop	ar2
      00565A D0 03            [24] 7149 	pop	ar3
      00565C D0 04            [24] 7150 	pop	ar4
      00565E D0 05            [24] 7151 	pop	ar5
                                   7152 ;	calc.c:21: print32bin(d);
      005660 8A 82            [24] 7153 	mov	dpl,r2
      005662 8B 83            [24] 7154 	mov	dph,r3
      005664 8C F0            [24] 7155 	mov	b,r4
      005666 ED               [12] 7156 	mov	a,r5
      005667 C0 01            [24] 7157 	push	ar1
      005669 12 5F A4         [24] 7158 	lcall	_print32bin
      00566C D0 01            [24] 7159 	pop	ar1
      00566E D0 06            [24] 7160 	pop	ar6
      005670 D0 07            [24] 7161 	pop	ar7
                                   7162 ;	calc.c:367: if (n > 0) printall(vals[1]);
      005672                       7163 00108$:
                                   7164 ;	calc.c:368: printstr("\r\nSSTOP0\t");
      005672 90 7F C2         [24] 7165 	mov	dptr,#___str_20
      005675 75 F0 80         [24] 7166 	mov	b,#0x80
      005678 C0 07            [24] 7167 	push	ar7
      00567A C0 06            [24] 7168 	push	ar6
      00567C C0 01            [24] 7169 	push	ar1
      00567E 12 5F 35         [24] 7170 	lcall	_printstr
      005681 D0 01            [24] 7171 	pop	ar1
      005683 D0 06            [24] 7172 	pop	ar6
      005685 D0 07            [24] 7173 	pop	ar7
                                   7174 ;	calc.c:369: if (n > 1) printall(vals[0]);
      005687 C3               [12] 7175 	clr	c
      005688 74 01            [12] 7176 	mov	a,#0x01
      00568A 9E               [12] 7177 	subb	a,r6
      00568B 74 80            [12] 7178 	mov	a,#(0x00 ^ 0x80)
      00568D 8F F0            [24] 7179 	mov	b,r7
      00568F 63 F0 80         [24] 7180 	xrl	b,#0x80
      005692 95 F0            [12] 7181 	subb	a,b
      005694 40 03            [24] 7182 	jc	00147$
      005696 02 57 35         [24] 7183 	ljmp	00110$
      005699                       7184 00147$:
      005699 87 04            [24] 7185 	mov	ar4,@r1
      00569B 09               [12] 7186 	inc	r1
      00569C 87 05            [24] 7187 	mov	ar5,@r1
      00569E 09               [12] 7188 	inc	r1
      00569F 87 06            [24] 7189 	mov	ar6,@r1
      0056A1 09               [12] 7190 	inc	r1
      0056A2 87 07            [24] 7191 	mov	ar7,@r1
                                   7192 ;	calc.c:18: printf("%08lx\t", d);
      0056A4 C0 07            [24] 7193 	push	ar7
      0056A6 C0 06            [24] 7194 	push	ar6
      0056A8 C0 05            [24] 7195 	push	ar5
      0056AA C0 04            [24] 7196 	push	ar4
      0056AC C0 04            [24] 7197 	push	ar4
      0056AE C0 05            [24] 7198 	push	ar5
      0056B0 C0 06            [24] 7199 	push	ar6
      0056B2 C0 07            [24] 7200 	push	ar7
      0056B4 74 BA            [12] 7201 	mov	a,#___str_0
      0056B6 C0 E0            [24] 7202 	push	acc
      0056B8 74 7E            [12] 7203 	mov	a,#(___str_0 >> 8)
      0056BA C0 E0            [24] 7204 	push	acc
      0056BC 74 80            [12] 7205 	mov	a,#0x80
      0056BE C0 E0            [24] 7206 	push	acc
      0056C0 12 66 00         [24] 7207 	lcall	_printf
      0056C3 E5 81            [12] 7208 	mov	a,sp
      0056C5 24 F9            [12] 7209 	add	a,#0xf9
      0056C7 F5 81            [12] 7210 	mov	sp,a
      0056C9 D0 04            [24] 7211 	pop	ar4
      0056CB D0 05            [24] 7212 	pop	ar5
      0056CD D0 06            [24] 7213 	pop	ar6
      0056CF D0 07            [24] 7214 	pop	ar7
                                   7215 ;	calc.c:19: printf("% 11ld\t", d);
      0056D1 C0 07            [24] 7216 	push	ar7
      0056D3 C0 06            [24] 7217 	push	ar6
      0056D5 C0 05            [24] 7218 	push	ar5
      0056D7 C0 04            [24] 7219 	push	ar4
      0056D9 C0 04            [24] 7220 	push	ar4
      0056DB C0 05            [24] 7221 	push	ar5
      0056DD C0 06            [24] 7222 	push	ar6
      0056DF C0 07            [24] 7223 	push	ar7
      0056E1 74 C1            [12] 7224 	mov	a,#___str_1
      0056E3 C0 E0            [24] 7225 	push	acc
      0056E5 74 7E            [12] 7226 	mov	a,#(___str_1 >> 8)
      0056E7 C0 E0            [24] 7227 	push	acc
      0056E9 74 80            [12] 7228 	mov	a,#0x80
      0056EB C0 E0            [24] 7229 	push	acc
      0056ED 12 66 00         [24] 7230 	lcall	_printf
      0056F0 E5 81            [12] 7231 	mov	a,sp
      0056F2 24 F9            [12] 7232 	add	a,#0xf9
      0056F4 F5 81            [12] 7233 	mov	sp,a
      0056F6 D0 04            [24] 7234 	pop	ar4
      0056F8 D0 05            [24] 7235 	pop	ar5
      0056FA D0 06            [24] 7236 	pop	ar6
      0056FC D0 07            [24] 7237 	pop	ar7
                                   7238 ;	calc.c:20: printf("%011lo\t", d);
      0056FE C0 07            [24] 7239 	push	ar7
      005700 C0 06            [24] 7240 	push	ar6
      005702 C0 05            [24] 7241 	push	ar5
      005704 C0 04            [24] 7242 	push	ar4
      005706 C0 04            [24] 7243 	push	ar4
      005708 C0 05            [24] 7244 	push	ar5
      00570A C0 06            [24] 7245 	push	ar6
      00570C C0 07            [24] 7246 	push	ar7
      00570E 74 C9            [12] 7247 	mov	a,#___str_2
      005710 C0 E0            [24] 7248 	push	acc
      005712 74 7E            [12] 7249 	mov	a,#(___str_2 >> 8)
      005714 C0 E0            [24] 7250 	push	acc
      005716 74 80            [12] 7251 	mov	a,#0x80
      005718 C0 E0            [24] 7252 	push	acc
      00571A 12 66 00         [24] 7253 	lcall	_printf
      00571D E5 81            [12] 7254 	mov	a,sp
      00571F 24 F9            [12] 7255 	add	a,#0xf9
      005721 F5 81            [12] 7256 	mov	sp,a
      005723 D0 04            [24] 7257 	pop	ar4
      005725 D0 05            [24] 7258 	pop	ar5
      005727 D0 06            [24] 7259 	pop	ar6
      005729 D0 07            [24] 7260 	pop	ar7
                                   7261 ;	calc.c:21: print32bin(d);
      00572B 8C 82            [24] 7262 	mov	dpl,r4
      00572D 8D 83            [24] 7263 	mov	dph,r5
      00572F 8E F0            [24] 7264 	mov	b,r6
      005731 EF               [12] 7265 	mov	a,r7
      005732 12 5F A4         [24] 7266 	lcall	_print32bin
                                   7267 ;	calc.c:369: if (n > 1) printall(vals[0]);
      005735                       7268 00110$:
                                   7269 ;	calc.c:370: printstr("\r\n");
      005735 90 7E D1         [24] 7270 	mov	dptr,#___str_3
      005738 75 F0 80         [24] 7271 	mov	b,#0x80
      00573B 12 5F 35         [24] 7272 	lcall	_printstr
                                   7273 ;	calc.c:372: return 1;
      00573E 90 00 01         [24] 7274 	mov	dptr,#0x0001
                                   7275 ;	calc.c:373: }
      005741 85 08 81         [24] 7276 	mov	sp,_bp
      005744 D0 08            [24] 7277 	pop	_bp
      005746 22               [24] 7278 	ret
                                   7279 ;------------------------------------------------------------
                                   7280 ;Allocation info for local variables in function 'help'
                                   7281 ;------------------------------------------------------------
                                   7282 ;delta                     Allocated to stack - _bp -5
                                   7283 ;_ctx                      Allocated to registers 
                                   7284 ;------------------------------------------------------------
                                   7285 ;	calc.c:375: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   7286 ;	-----------------------------------------
                                   7287 ;	 function help
                                   7288 ;	-----------------------------------------
      005747                       7289 _help:
      005747 C0 08            [24] 7290 	push	_bp
      005749 85 81 08         [24] 7291 	mov	_bp,sp
                                   7292 ;	calc.c:379: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      00574C 90 7F CC         [24] 7293 	mov	dptr,#___str_21
      00574F 75 F0 80         [24] 7294 	mov	b,#0x80
      005752 12 5F 35         [24] 7295 	lcall	_printstr
                                   7296 ;	calc.c:380: printstr("p.\tpop top\r\n");
      005755 90 7F E4         [24] 7297 	mov	dptr,#___str_22
      005758 75 F0 80         [24] 7298 	mov	b,#0x80
      00575B 12 5F 35         [24] 7299 	lcall	_printstr
                                   7300 ;	calc.c:381: printstr("P\tpop stack\r\n");
      00575E 90 7F F1         [24] 7301 	mov	dptr,#___str_23
      005761 75 F0 80         [24] 7302 	mov	b,#0x80
      005764 12 5F 35         [24] 7303 	lcall	_printstr
                                   7304 ;	calc.c:382: printstr("v\tpeek top\r\n");
      005767 90 7F FF         [24] 7305 	mov	dptr,#___str_24
      00576A 75 F0 80         [24] 7306 	mov	b,#0x80
      00576D 12 5F 35         [24] 7307 	lcall	_printstr
                                   7308 ;	calc.c:383: printstr("V\tpeek stack\r\n");
      005770 90 80 0C         [24] 7309 	mov	dptr,#___str_25
      005773 75 F0 80         [24] 7310 	mov	b,#0x80
      005776 12 5F 35         [24] 7311 	lcall	_printstr
                                   7312 ;	calc.c:384: printstr("i\treset acc\r\n");
      005779 90 80 1B         [24] 7313 	mov	dptr,#___str_26
      00577C 75 F0 80         [24] 7314 	mov	b,#0x80
      00577F 12 5F 35         [24] 7315 	lcall	_printstr
                                   7316 ;	calc.c:385: printstr("I\treset and discard acc\r\n");
      005782 90 80 29         [24] 7317 	mov	dptr,#___str_27
      005785 75 F0 80         [24] 7318 	mov	b,#0x80
      005788 12 5F 35         [24] 7319 	lcall	_printstr
                                   7320 ;	calc.c:386: printstr("x\texchange top 2\r\n");
      00578B 90 80 43         [24] 7321 	mov	dptr,#___str_28
      00578E 75 F0 80         [24] 7322 	mov	b,#0x80
      005791 12 5F 35         [24] 7323 	lcall	_printstr
                                   7324 ;	calc.c:387: printstr("X\texchange stacks primary <-> secondary\r\n");
      005794 90 80 56         [24] 7325 	mov	dptr,#___str_29
      005797 75 F0 80         [24] 7326 	mov	b,#0x80
      00579A 12 5F 35         [24] 7327 	lcall	_printstr
                                   7328 ;	calc.c:388: printstr("T\texchange tops primary <-> secondary\r\n");
      00579D 90 80 80         [24] 7329 	mov	dptr,#___str_30
      0057A0 75 F0 80         [24] 7330 	mov	b,#0x80
      0057A3 12 5F 35         [24] 7331 	lcall	_printstr
                                   7332 ;	calc.c:389: printstr("U\tcopy top secondary -> primary\r\n");
      0057A6 90 80 A8         [24] 7333 	mov	dptr,#___str_31
      0057A9 75 F0 80         [24] 7334 	mov	b,#0x80
      0057AC 12 5F 35         [24] 7335 	lcall	_printstr
                                   7336 ;	calc.c:390: printstr("u\tcopy top primary -> secondary\r\n");
      0057AF 90 80 CA         [24] 7337 	mov	dptr,#___str_32
      0057B2 75 F0 80         [24] 7338 	mov	b,#0x80
      0057B5 12 5F 35         [24] 7339 	lcall	_printstr
                                   7340 ;	calc.c:391: printstr("M\tmove top secondary -> primary\r\n");
      0057B8 90 80 EC         [24] 7341 	mov	dptr,#___str_33
      0057BB 75 F0 80         [24] 7342 	mov	b,#0x80
      0057BE 12 5F 35         [24] 7343 	lcall	_printstr
                                   7344 ;	calc.c:392: printstr("m\tmove top primary -> secondary\r\n");
      0057C1 90 81 0E         [24] 7345 	mov	dptr,#___str_34
      0057C4 75 F0 80         [24] 7346 	mov	b,#0x80
      0057C7 12 5F 35         [24] 7347 	lcall	_printstr
                                   7348 ;	calc.c:393: printstr("+\tadd top 2\r\n");
      0057CA 90 81 30         [24] 7349 	mov	dptr,#___str_35
      0057CD 75 F0 80         [24] 7350 	mov	b,#0x80
      0057D0 12 5F 35         [24] 7351 	lcall	_printstr
                                   7352 ;	calc.c:394: printstr("-\tsubtract top 2\r\n");
      0057D3 90 81 3E         [24] 7353 	mov	dptr,#___str_36
      0057D6 75 F0 80         [24] 7354 	mov	b,#0x80
      0057D9 12 5F 35         [24] 7355 	lcall	_printstr
                                   7356 ;	calc.c:395: printstr("*\tmultiply top 2\r\n");
      0057DC 90 81 51         [24] 7357 	mov	dptr,#___str_37
      0057DF 75 F0 80         [24] 7358 	mov	b,#0x80
      0057E2 12 5F 35         [24] 7359 	lcall	_printstr
                                   7360 ;	calc.c:396: printstr("/\tdivide top 2\r\n");
      0057E5 90 81 64         [24] 7361 	mov	dptr,#___str_38
      0057E8 75 F0 80         [24] 7362 	mov	b,#0x80
      0057EB 12 5F 35         [24] 7363 	lcall	_printstr
                                   7364 ;	calc.c:397: printstr("\\\tdivide top 2 unsigned\r\n");	
      0057EE 90 81 75         [24] 7365 	mov	dptr,#___str_39
      0057F1 75 F0 80         [24] 7366 	mov	b,#0x80
      0057F4 12 5F 35         [24] 7367 	lcall	_printstr
                                   7368 ;	calc.c:398: printstr("%\tmodulus top 2\r\n");
      0057F7 90 81 8F         [24] 7369 	mov	dptr,#___str_40
      0057FA 75 F0 80         [24] 7370 	mov	b,#0x80
      0057FD 12 5F 35         [24] 7371 	lcall	_printstr
                                   7372 ;	calc.c:399: printstr("#\tmodulus top 2 unsigned\r\n");
      005800 90 81 A1         [24] 7373 	mov	dptr,#___str_41
      005803 75 F0 80         [24] 7374 	mov	b,#0x80
      005806 12 5F 35         [24] 7375 	lcall	_printstr
                                   7376 ;	calc.c:400: printstr("&\tand top 2\r\n");
      005809 90 81 BC         [24] 7377 	mov	dptr,#___str_42
      00580C 75 F0 80         [24] 7378 	mov	b,#0x80
      00580F 12 5F 35         [24] 7379 	lcall	_printstr
                                   7380 ;	calc.c:401: printstr("|\tor top 2\r\n");
      005812 90 81 CA         [24] 7381 	mov	dptr,#___str_43
      005815 75 F0 80         [24] 7382 	mov	b,#0x80
      005818 12 5F 35         [24] 7383 	lcall	_printstr
                                   7384 ;	calc.c:402: printstr("^\txor top 2\r\n");
      00581B 90 81 D7         [24] 7385 	mov	dptr,#___str_44
      00581E 75 F0 80         [24] 7386 	mov	b,#0x80
      005821 12 5F 35         [24] 7387 	lcall	_printstr
                                   7388 ;	calc.c:403: printstr(">\tshift right top 2\r\n");
      005824 90 81 E5         [24] 7389 	mov	dptr,#___str_45
      005827 75 F0 80         [24] 7390 	mov	b,#0x80
      00582A 12 5F 35         [24] 7391 	lcall	_printstr
                                   7392 ;	calc.c:404: printstr("]\tarithmetic shift right top 2\r\n");
      00582D 90 81 FB         [24] 7393 	mov	dptr,#___str_46
      005830 75 F0 80         [24] 7394 	mov	b,#0x80
      005833 12 5F 35         [24] 7395 	lcall	_printstr
                                   7396 ;	calc.c:405: printstr("<\tshift left top 2\r\n");
      005836 90 82 1C         [24] 7397 	mov	dptr,#___str_47
      005839 75 F0 80         [24] 7398 	mov	b,#0x80
      00583C 12 5F 35         [24] 7399 	lcall	_printstr
                                   7400 ;	calc.c:406: printstr("~\tbitwise not top\r\n");
      00583F 90 82 31         [24] 7401 	mov	dptr,#___str_48
      005842 75 F0 80         [24] 7402 	mov	b,#0x80
      005845 12 5F 35         [24] 7403 	lcall	_printstr
                                   7404 ;	calc.c:407: printstr("s\tstatus\r\n");
      005848 90 82 45         [24] 7405 	mov	dptr,#___str_49
      00584B 75 F0 80         [24] 7406 	mov	b,#0x80
      00584E 12 5F 35         [24] 7407 	lcall	_printstr
                                   7408 ;	calc.c:408: printstr("?\thelp\r\n");
      005851 90 82 50         [24] 7409 	mov	dptr,#___str_50
      005854 75 F0 80         [24] 7410 	mov	b,#0x80
      005857 12 5F 35         [24] 7411 	lcall	_printstr
                                   7412 ;	calc.c:409: printstr("q\tquit\r\n");
      00585A 90 82 59         [24] 7413 	mov	dptr,#___str_51
      00585D 75 F0 80         [24] 7414 	mov	b,#0x80
      005860 12 5F 35         [24] 7415 	lcall	_printstr
                                   7416 ;	calc.c:411: return 1;
      005863 90 00 01         [24] 7417 	mov	dptr,#0x0001
                                   7418 ;	calc.c:412: }
      005866 D0 08            [24] 7419 	pop	_bp
      005868 22               [24] 7420 	ret
                                   7421 ;------------------------------------------------------------
                                   7422 ;Allocation info for local variables in function 'main'
                                   7423 ;------------------------------------------------------------
                                   7424 ;input                     Allocated to registers r6 r7 
                                   7425 ;------------------------------------------------------------
                                   7426 ;	calc.c:442: void main(void) {
                                   7427 ;	-----------------------------------------
                                   7428 ;	 function main
                                   7429 ;	-----------------------------------------
      005869                       7430 _main:
                                   7431 ;	calc.c:445: giant = 0;
      005869 78 09            [12] 7432 	mov	r0,#_giant
      00586B 76 00            [12] 7433 	mov	@r0,#0x00
                                   7434 ;	calc.c:447: c.base = 10;
      00586D 90 A0 0C         [24] 7435 	mov	dptr,#_c
      005870 74 0A            [12] 7436 	mov	a,#0x0a
      005872 F0               [24] 7437 	movx	@dptr,a
      005873 E4               [12] 7438 	clr	a
      005874 A3               [24] 7439 	inc	dptr
      005875 F0               [24] 7440 	movx	@dptr,a
                                   7441 ;	calc.c:448: c.acc = 0l;
      005876 90 A0 0E         [24] 7442 	mov	dptr,#(_c + 0x0002)
      005879 F0               [24] 7443 	movx	@dptr,a
      00587A A3               [24] 7444 	inc	dptr
      00587B F0               [24] 7445 	movx	@dptr,a
      00587C A3               [24] 7446 	inc	dptr
      00587D F0               [24] 7447 	movx	@dptr,a
      00587E A3               [24] 7448 	inc	dptr
      00587F F0               [24] 7449 	movx	@dptr,a
                                   7450 ;	calc.c:449: c.acc_valid = (char)0;
      005880 90 A0 12         [24] 7451 	mov	dptr,#(_c + 0x0006)
      005883 F0               [24] 7452 	movx	@dptr,a
                                   7453 ;	calc.c:450: c.digit[0] = c.digit[1] = '\0';
      005884 90 A0 14         [24] 7454 	mov	dptr,#(_c + 0x0008)
      005887 F0               [24] 7455 	movx	@dptr,a
      005888 90 A0 13         [24] 7456 	mov	dptr,#(_c + 0x0007)
      00588B F0               [24] 7457 	movx	@dptr,a
                                   7458 ;	calc.c:452: c.ps = &c.s0;
      00588C 90 E0 1D         [24] 7459 	mov	dptr,#(_c + 0x4011)
      00588F 74 15            [12] 7460 	mov	a,#(_c + 0x0009)
      005891 F0               [24] 7461 	movx	@dptr,a
      005892 74 A0            [12] 7462 	mov	a,#((_c + 0x0009) >> 8)
      005894 A3               [24] 7463 	inc	dptr
      005895 F0               [24] 7464 	movx	@dptr,a
      005896 E4               [12] 7465 	clr	a
      005897 A3               [24] 7466 	inc	dptr
      005898 F0               [24] 7467 	movx	@dptr,a
                                   7468 ;	calc.c:453: c.ss = &c.s1;
      005899 90 E0 20         [24] 7469 	mov	dptr,#(_c + 0x4014)
      00589C 74 19            [12] 7470 	mov	a,#(_c + 0x200d)
      00589E F0               [24] 7471 	movx	@dptr,a
      00589F 74 C0            [12] 7472 	mov	a,#((_c + 0x200d) >> 8)
      0058A1 A3               [24] 7473 	inc	dptr
      0058A2 F0               [24] 7474 	movx	@dptr,a
      0058A3 E4               [12] 7475 	clr	a
      0058A4 A3               [24] 7476 	inc	dptr
      0058A5 F0               [24] 7477 	movx	@dptr,a
                                   7478 ;	calc.c:454: stack_init(c.ps);
      0058A6 90 A0 15         [24] 7479 	mov	dptr,#(_c + 0x0009)
      0058A9 75 F0 00         [24] 7480 	mov	b,#0x00
      0058AC 12 26 C0         [24] 7481 	lcall	_stack_init
                                   7482 ;	calc.c:455: stack_init(c.ss);
      0058AF 90 E0 20         [24] 7483 	mov	dptr,#(_c + 0x4014)
      0058B2 E0               [24] 7484 	movx	a,@dptr
      0058B3 FD               [12] 7485 	mov	r5,a
      0058B4 A3               [24] 7486 	inc	dptr
      0058B5 E0               [24] 7487 	movx	a,@dptr
      0058B6 FE               [12] 7488 	mov	r6,a
      0058B7 A3               [24] 7489 	inc	dptr
      0058B8 E0               [24] 7490 	movx	a,@dptr
      0058B9 FF               [12] 7491 	mov	r7,a
      0058BA 8D 82            [24] 7492 	mov	dpl,r5
      0058BC 8E 83            [24] 7493 	mov	dph,r6
      0058BE 8F F0            [24] 7494 	mov	b,r7
      0058C0 12 26 C0         [24] 7495 	lcall	_stack_init
                                   7496 ;	calc.c:457: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      0058C3 74 0C            [12] 7497 	mov	a,#_c
      0058C5 C0 E0            [24] 7498 	push	acc
      0058C7 74 A0            [12] 7499 	mov	a,#(_c >> 8)
      0058C9 C0 E0            [24] 7500 	push	acc
      0058CB E4               [12] 7501 	clr	a
      0058CC C0 E0            [24] 7502 	push	acc
      0058CE 74 25            [12] 7503 	mov	a,#_deltas
      0058D0 C0 E0            [24] 7504 	push	acc
      0058D2 74 E0            [12] 7505 	mov	a,#(_deltas >> 8)
      0058D4 C0 E0            [24] 7506 	push	acc
      0058D6 E4               [12] 7507 	clr	a
      0058D7 C0 E0            [24] 7508 	push	acc
      0058D9 C0 E0            [24] 7509 	push	acc
      0058DB 74 80            [12] 7510 	mov	a,#0x80
      0058DD C0 E0            [24] 7511 	push	acc
      0058DF 74 03            [12] 7512 	mov	a,#0x03
      0058E1 C0 E0            [24] 7513 	push	acc
      0058E3 E4               [12] 7514 	clr	a
      0058E4 C0 E0            [24] 7515 	push	acc
      0058E6 C0 E0            [24] 7516 	push	acc
      0058E8 C0 E0            [24] 7517 	push	acc
      0058EA 90 A0 00         [24] 7518 	mov	dptr,#_s
      0058ED 75 F0 00         [24] 7519 	mov	b,#0x00
      0058F0 12 20 D0         [24] 7520 	lcall	_state_init
      0058F3 E5 81            [12] 7521 	mov	a,sp
      0058F5 24 F4            [12] 7522 	add	a,#0xf4
      0058F7 F5 81            [12] 7523 	mov	sp,a
                                   7524 ;	calc.c:459: (void)status(&c, deltas);
      0058F9 74 25            [12] 7525 	mov	a,#_deltas
      0058FB C0 E0            [24] 7526 	push	acc
      0058FD 74 E0            [12] 7527 	mov	a,#(_deltas >> 8)
      0058FF C0 E0            [24] 7528 	push	acc
      005901 E4               [12] 7529 	clr	a
      005902 C0 E0            [24] 7530 	push	acc
      005904 90 A0 0C         [24] 7531 	mov	dptr,#_c
      005907 75 F0 00         [24] 7532 	mov	b,#0x00
      00590A 12 51 B9         [24] 7533 	lcall	_status
      00590D 15 81            [12] 7534 	dec	sp
      00590F 15 81            [12] 7535 	dec	sp
      005911 15 81            [12] 7536 	dec	sp
                                   7537 ;	calc.c:461: while (1) {
      005913                       7538 00192$:
                                   7539 ;	calc.c:462: input = getchar();
      005913 12 5F 0E         [24] 7540 	lcall	_getchar
      005916 AE 82            [24] 7541 	mov	r6,dpl
      005918 AF 83            [24] 7542 	mov	r7,dph
                                   7543 ;	calc.c:463: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      00591A 8E 05            [24] 7544 	mov	ar5,r6
      00591C BD 0D 02         [24] 7545 	cjne	r5,#0x0d,00372$
      00591F 80 03            [24] 7546 	sjmp	00101$
      005921                       7547 00372$:
      005921 BD 0A 17         [24] 7548 	cjne	r5,#0x0a,00102$
      005924                       7549 00101$:
      005924 90 7E D1         [24] 7550 	mov	dptr,#___str_3
      005927 75 F0 80         [24] 7551 	mov	b,#0x80
      00592A C0 07            [24] 7552 	push	ar7
      00592C C0 06            [24] 7553 	push	ar6
      00592E C0 05            [24] 7554 	push	ar5
      005930 12 5F 35         [24] 7555 	lcall	_printstr
      005933 D0 05            [24] 7556 	pop	ar5
      005935 D0 06            [24] 7557 	pop	ar6
      005937 D0 07            [24] 7558 	pop	ar7
      005939 80 13            [24] 7559 	sjmp	00103$
      00593B                       7560 00102$:
                                   7561 ;	calc.c:464: else (void)putchar(input);
      00593B 8E 82            [24] 7562 	mov	dpl,r6
      00593D 8F 83            [24] 7563 	mov	dph,r7
      00593F C0 07            [24] 7564 	push	ar7
      005941 C0 06            [24] 7565 	push	ar6
      005943 C0 05            [24] 7566 	push	ar5
      005945 12 5F 04         [24] 7567 	lcall	_putchar
      005948 D0 05            [24] 7568 	pop	ar5
      00594A D0 06            [24] 7569 	pop	ar6
      00594C D0 07            [24] 7570 	pop	ar7
      00594E                       7571 00103$:
                                   7572 ;	calc.c:465: c.digit[0] = (char)input;
      00594E 90 A0 13         [24] 7573 	mov	dptr,#(_c + 0x0007)
      005951 ED               [12] 7574 	mov	a,r5
      005952 F0               [24] 7575 	movx	@dptr,a
                                   7576 ;	calc.c:467: if ((char)input == 'q') {
      005953 BD 71 29         [24] 7577 	cjne	r5,#0x71,00189$
                                   7578 ;	calc.c:468: if (state_exec(&s, EVENT_TERM) <= 0) break;
      005956 74 08            [12] 7579 	mov	a,#0x08
      005958 C0 E0            [24] 7580 	push	acc
      00595A E4               [12] 7581 	clr	a
      00595B C0 E0            [24] 7582 	push	acc
      00595D 90 A0 00         [24] 7583 	mov	dptr,#_s
      005960 75 F0 00         [24] 7584 	mov	b,#0x00
      005963 12 21 86         [24] 7585 	lcall	_state_exec
      005966 AB 82            [24] 7586 	mov	r3,dpl
      005968 AC 83            [24] 7587 	mov	r4,dph
      00596A 15 81            [12] 7588 	dec	sp
      00596C 15 81            [12] 7589 	dec	sp
      00596E C3               [12] 7590 	clr	c
      00596F E4               [12] 7591 	clr	a
      005970 9B               [12] 7592 	subb	a,r3
      005971 74 80            [12] 7593 	mov	a,#(0x00 ^ 0x80)
      005973 8C F0            [24] 7594 	mov	b,r4
      005975 63 F0 80         [24] 7595 	xrl	b,#0x80
      005978 95 F0            [12] 7596 	subb	a,b
      00597A 40 97            [24] 7597 	jc	00192$
      00597C 02 5C 2E         [24] 7598 	ljmp	00193$
      00597F                       7599 00189$:
                                   7600 ;	calc.c:469: } else if ((char)input == 's') {
      00597F BD 73 2C         [24] 7601 	cjne	r5,#0x73,00186$
                                   7602 ;	calc.c:470: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      005982 74 03            [12] 7603 	mov	a,#0x03
      005984 C0 E0            [24] 7604 	push	acc
      005986 E4               [12] 7605 	clr	a
      005987 C0 E0            [24] 7606 	push	acc
      005989 90 A0 00         [24] 7607 	mov	dptr,#_s
      00598C 75 F0 00         [24] 7608 	mov	b,#0x00
      00598F 12 21 86         [24] 7609 	lcall	_state_exec
      005992 AB 82            [24] 7610 	mov	r3,dpl
      005994 AC 83            [24] 7611 	mov	r4,dph
      005996 15 81            [12] 7612 	dec	sp
      005998 15 81            [12] 7613 	dec	sp
      00599A C3               [12] 7614 	clr	c
      00599B E4               [12] 7615 	clr	a
      00599C 9B               [12] 7616 	subb	a,r3
      00599D 74 80            [12] 7617 	mov	a,#(0x00 ^ 0x80)
      00599F 8C F0            [24] 7618 	mov	b,r4
      0059A1 63 F0 80         [24] 7619 	xrl	b,#0x80
      0059A4 95 F0            [12] 7620 	subb	a,b
      0059A6 50 03            [24] 7621 	jnc	00380$
      0059A8 02 59 13         [24] 7622 	ljmp	00192$
      0059AB                       7623 00380$:
      0059AB 02 5C 2E         [24] 7624 	ljmp	00193$
      0059AE                       7625 00186$:
                                   7626 ;	calc.c:471: } else if ((char)input == '?') {
      0059AE BD 3F 2C         [24] 7627 	cjne	r5,#0x3f,00183$
                                   7628 ;	calc.c:472: if (state_exec(&s, EVENT_HELP) <= 0) break;
      0059B1 74 04            [12] 7629 	mov	a,#0x04
      0059B3 C0 E0            [24] 7630 	push	acc
      0059B5 E4               [12] 7631 	clr	a
      0059B6 C0 E0            [24] 7632 	push	acc
      0059B8 90 A0 00         [24] 7633 	mov	dptr,#_s
      0059BB 75 F0 00         [24] 7634 	mov	b,#0x00
      0059BE 12 21 86         [24] 7635 	lcall	_state_exec
      0059C1 AB 82            [24] 7636 	mov	r3,dpl
      0059C3 AC 83            [24] 7637 	mov	r4,dph
      0059C5 15 81            [12] 7638 	dec	sp
      0059C7 15 81            [12] 7639 	dec	sp
      0059C9 C3               [12] 7640 	clr	c
      0059CA E4               [12] 7641 	clr	a
      0059CB 9B               [12] 7642 	subb	a,r3
      0059CC 74 80            [12] 7643 	mov	a,#(0x00 ^ 0x80)
      0059CE 8C F0            [24] 7644 	mov	b,r4
      0059D0 63 F0 80         [24] 7645 	xrl	b,#0x80
      0059D3 95 F0            [12] 7646 	subb	a,b
      0059D5 50 03            [24] 7647 	jnc	00383$
      0059D7 02 59 13         [24] 7648 	ljmp	00192$
      0059DA                       7649 00383$:
      0059DA 02 5C 2E         [24] 7650 	ljmp	00193$
      0059DD                       7651 00183$:
                                   7652 ;	calc.c:473: } else if ((char)input == 'i') {
      0059DD BD 69 2C         [24] 7653 	cjne	r5,#0x69,00180$
                                   7654 ;	calc.c:474: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      0059E0 74 06            [12] 7655 	mov	a,#0x06
      0059E2 C0 E0            [24] 7656 	push	acc
      0059E4 E4               [12] 7657 	clr	a
      0059E5 C0 E0            [24] 7658 	push	acc
      0059E7 90 A0 00         [24] 7659 	mov	dptr,#_s
      0059EA 75 F0 00         [24] 7660 	mov	b,#0x00
      0059ED 12 21 86         [24] 7661 	lcall	_state_exec
      0059F0 AB 82            [24] 7662 	mov	r3,dpl
      0059F2 AC 83            [24] 7663 	mov	r4,dph
      0059F4 15 81            [12] 7664 	dec	sp
      0059F6 15 81            [12] 7665 	dec	sp
      0059F8 C3               [12] 7666 	clr	c
      0059F9 E4               [12] 7667 	clr	a
      0059FA 9B               [12] 7668 	subb	a,r3
      0059FB 74 80            [12] 7669 	mov	a,#(0x00 ^ 0x80)
      0059FD 8C F0            [24] 7670 	mov	b,r4
      0059FF 63 F0 80         [24] 7671 	xrl	b,#0x80
      005A02 95 F0            [12] 7672 	subb	a,b
      005A04 50 03            [24] 7673 	jnc	00386$
      005A06 02 59 13         [24] 7674 	ljmp	00192$
      005A09                       7675 00386$:
      005A09 02 5C 2E         [24] 7676 	ljmp	00193$
      005A0C                       7677 00180$:
                                   7678 ;	calc.c:475: } else if ((char)input == 'I') {
      005A0C BD 49 2C         [24] 7679 	cjne	r5,#0x49,00177$
                                   7680 ;	calc.c:476: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      005A0F 74 07            [12] 7681 	mov	a,#0x07
      005A11 C0 E0            [24] 7682 	push	acc
      005A13 E4               [12] 7683 	clr	a
      005A14 C0 E0            [24] 7684 	push	acc
      005A16 90 A0 00         [24] 7685 	mov	dptr,#_s
      005A19 75 F0 00         [24] 7686 	mov	b,#0x00
      005A1C 12 21 86         [24] 7687 	lcall	_state_exec
      005A1F AB 82            [24] 7688 	mov	r3,dpl
      005A21 AC 83            [24] 7689 	mov	r4,dph
      005A23 15 81            [12] 7690 	dec	sp
      005A25 15 81            [12] 7691 	dec	sp
      005A27 C3               [12] 7692 	clr	c
      005A28 E4               [12] 7693 	clr	a
      005A29 9B               [12] 7694 	subb	a,r3
      005A2A 74 80            [12] 7695 	mov	a,#(0x00 ^ 0x80)
      005A2C 8C F0            [24] 7696 	mov	b,r4
      005A2E 63 F0 80         [24] 7697 	xrl	b,#0x80
      005A31 95 F0            [12] 7698 	subb	a,b
      005A33 50 03            [24] 7699 	jnc	00389$
      005A35 02 59 13         [24] 7700 	ljmp	00192$
      005A38                       7701 00389$:
      005A38 02 5C 2E         [24] 7702 	ljmp	00193$
      005A3B                       7703 00177$:
                                   7704 ;	calc.c:478: ((char)input == 'h') || ((char)input == 'H') ||
      005A3B BD 68 02         [24] 7705 	cjne	r5,#0x68,00390$
      005A3E 80 0D            [24] 7706 	sjmp	00170$
      005A40                       7707 00390$:
      005A40 BD 48 02         [24] 7708 	cjne	r5,#0x48,00391$
      005A43 80 08            [24] 7709 	sjmp	00170$
      005A45                       7710 00391$:
                                   7711 ;	calc.c:479: ((char)input == 'o') || ((char)input == 'O')
      005A45 BD 6F 02         [24] 7712 	cjne	r5,#0x6f,00392$
      005A48 80 03            [24] 7713 	sjmp	00170$
      005A4A                       7714 00392$:
      005A4A BD 4F 2C         [24] 7715 	cjne	r5,#0x4f,00171$
      005A4D                       7716 00170$:
                                   7717 ;	calc.c:481: if (state_exec(&s, EVENT_BASE) <= 0) break;
      005A4D 74 05            [12] 7718 	mov	a,#0x05
      005A4F C0 E0            [24] 7719 	push	acc
      005A51 E4               [12] 7720 	clr	a
      005A52 C0 E0            [24] 7721 	push	acc
      005A54 90 A0 00         [24] 7722 	mov	dptr,#_s
      005A57 75 F0 00         [24] 7723 	mov	b,#0x00
      005A5A 12 21 86         [24] 7724 	lcall	_state_exec
      005A5D AB 82            [24] 7725 	mov	r3,dpl
      005A5F AC 83            [24] 7726 	mov	r4,dph
      005A61 15 81            [12] 7727 	dec	sp
      005A63 15 81            [12] 7728 	dec	sp
      005A65 C3               [12] 7729 	clr	c
      005A66 E4               [12] 7730 	clr	a
      005A67 9B               [12] 7731 	subb	a,r3
      005A68 74 80            [12] 7732 	mov	a,#(0x00 ^ 0x80)
      005A6A 8C F0            [24] 7733 	mov	b,r4
      005A6C 63 F0 80         [24] 7734 	xrl	b,#0x80
      005A6F 95 F0            [12] 7735 	subb	a,b
      005A71 50 03            [24] 7736 	jnc	00395$
      005A73 02 59 13         [24] 7737 	ljmp	00192$
      005A76                       7738 00395$:
      005A76 02 5C 2E         [24] 7739 	ljmp	00193$
      005A79                       7740 00171$:
                                   7741 ;	calc.c:482: } else if (isxdigit(input)) {
      005A79 8E 82            [24] 7742 	mov	dpl,r6
      005A7B 8F 83            [24] 7743 	mov	dph,r7
      005A7D C0 05            [24] 7744 	push	ar5
      005A7F 12 5C 3B         [24] 7745 	lcall	_isxdigit
      005A82 E5 82            [12] 7746 	mov	a,dpl
      005A84 85 83 F0         [24] 7747 	mov	b,dph
      005A87 D0 05            [24] 7748 	pop	ar5
      005A89 45 F0            [12] 7749 	orl	a,b
      005A8B 60 2C            [24] 7750 	jz	00168$
                                   7751 ;	calc.c:483: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      005A8D 74 01            [12] 7752 	mov	a,#0x01
      005A8F C0 E0            [24] 7753 	push	acc
      005A91 E4               [12] 7754 	clr	a
      005A92 C0 E0            [24] 7755 	push	acc
      005A94 90 A0 00         [24] 7756 	mov	dptr,#_s
      005A97 75 F0 00         [24] 7757 	mov	b,#0x00
      005A9A 12 21 86         [24] 7758 	lcall	_state_exec
      005A9D AE 82            [24] 7759 	mov	r6,dpl
      005A9F AF 83            [24] 7760 	mov	r7,dph
      005AA1 15 81            [12] 7761 	dec	sp
      005AA3 15 81            [12] 7762 	dec	sp
      005AA5 C3               [12] 7763 	clr	c
      005AA6 E4               [12] 7764 	clr	a
      005AA7 9E               [12] 7765 	subb	a,r6
      005AA8 74 80            [12] 7766 	mov	a,#(0x00 ^ 0x80)
      005AAA 8F F0            [24] 7767 	mov	b,r7
      005AAC 63 F0 80         [24] 7768 	xrl	b,#0x80
      005AAF 95 F0            [12] 7769 	subb	a,b
      005AB1 50 03            [24] 7770 	jnc	00397$
      005AB3 02 59 13         [24] 7771 	ljmp	00192$
      005AB6                       7772 00397$:
      005AB6 02 5C 2E         [24] 7773 	ljmp	00193$
      005AB9                       7774 00168$:
                                   7775 ;	calc.c:485: ((char)input == 'p') || ((char)input == 'P') ||
      005AB9 BD 70 02         [24] 7776 	cjne	r5,#0x70,00398$
      005ABC 80 17            [24] 7777 	sjmp	00159$
      005ABE                       7778 00398$:
      005ABE BD 50 02         [24] 7779 	cjne	r5,#0x50,00399$
      005AC1 80 12            [24] 7780 	sjmp	00159$
      005AC3                       7781 00399$:
                                   7782 ;	calc.c:486: ((char)input == 'v') || ((char)input == 'V') ||
      005AC3 BD 76 02         [24] 7783 	cjne	r5,#0x76,00400$
      005AC6 80 0D            [24] 7784 	sjmp	00159$
      005AC8                       7785 00400$:
      005AC8 BD 56 02         [24] 7786 	cjne	r5,#0x56,00401$
      005ACB 80 08            [24] 7787 	sjmp	00159$
      005ACD                       7788 00401$:
                                   7789 ;	calc.c:487: ((char)input == '.') ||
      005ACD BD 2E 02         [24] 7790 	cjne	r5,#0x2e,00402$
      005AD0 80 03            [24] 7791 	sjmp	00159$
      005AD2                       7792 00402$:
                                   7793 ;	calc.c:488: ((char)input == 'x')
      005AD2 BD 78 2C         [24] 7794 	cjne	r5,#0x78,00160$
      005AD5                       7795 00159$:
                                   7796 ;	calc.c:490: if (state_exec(&s, EVENT_OP) <= 0) break;
      005AD5 74 02            [12] 7797 	mov	a,#0x02
      005AD7 C0 E0            [24] 7798 	push	acc
      005AD9 E4               [12] 7799 	clr	a
      005ADA C0 E0            [24] 7800 	push	acc
      005ADC 90 A0 00         [24] 7801 	mov	dptr,#_s
      005ADF 75 F0 00         [24] 7802 	mov	b,#0x00
      005AE2 12 21 86         [24] 7803 	lcall	_state_exec
      005AE5 AE 82            [24] 7804 	mov	r6,dpl
      005AE7 AF 83            [24] 7805 	mov	r7,dph
      005AE9 15 81            [12] 7806 	dec	sp
      005AEB 15 81            [12] 7807 	dec	sp
      005AED C3               [12] 7808 	clr	c
      005AEE E4               [12] 7809 	clr	a
      005AEF 9E               [12] 7810 	subb	a,r6
      005AF0 74 80            [12] 7811 	mov	a,#(0x00 ^ 0x80)
      005AF2 8F F0            [24] 7812 	mov	b,r7
      005AF4 63 F0 80         [24] 7813 	xrl	b,#0x80
      005AF7 95 F0            [12] 7814 	subb	a,b
      005AF9 50 03            [24] 7815 	jnc	00405$
      005AFB 02 59 13         [24] 7816 	ljmp	00192$
      005AFE                       7817 00405$:
      005AFE 02 5C 2E         [24] 7818 	ljmp	00193$
      005B01                       7819 00160$:
                                   7820 ;	calc.c:492: ((char)input == 'X') || ((char)input == 'T') ||
      005B01 BD 58 02         [24] 7821 	cjne	r5,#0x58,00406$
      005B04 80 17            [24] 7822 	sjmp	00151$
      005B06                       7823 00406$:
      005B06 BD 54 02         [24] 7824 	cjne	r5,#0x54,00407$
      005B09 80 12            [24] 7825 	sjmp	00151$
      005B0B                       7826 00407$:
                                   7827 ;	calc.c:493: ((char)input == 'm') || ((char)input == 'M') ||
      005B0B BD 6D 02         [24] 7828 	cjne	r5,#0x6d,00408$
      005B0E 80 0D            [24] 7829 	sjmp	00151$
      005B10                       7830 00408$:
      005B10 BD 4D 02         [24] 7831 	cjne	r5,#0x4d,00409$
      005B13 80 08            [24] 7832 	sjmp	00151$
      005B15                       7833 00409$:
                                   7834 ;	calc.c:494: ((char)input == 'u') || ((char)input == 'U')
      005B15 BD 75 02         [24] 7835 	cjne	r5,#0x75,00410$
      005B18 80 03            [24] 7836 	sjmp	00151$
      005B1A                       7837 00410$:
      005B1A BD 55 2C         [24] 7838 	cjne	r5,#0x55,00152$
      005B1D                       7839 00151$:
                                   7840 ;	calc.c:496: if (state_exec(&s, EVENT_OP) <= 0) break;
      005B1D 74 02            [12] 7841 	mov	a,#0x02
      005B1F C0 E0            [24] 7842 	push	acc
      005B21 E4               [12] 7843 	clr	a
      005B22 C0 E0            [24] 7844 	push	acc
      005B24 90 A0 00         [24] 7845 	mov	dptr,#_s
      005B27 75 F0 00         [24] 7846 	mov	b,#0x00
      005B2A 12 21 86         [24] 7847 	lcall	_state_exec
      005B2D AE 82            [24] 7848 	mov	r6,dpl
      005B2F AF 83            [24] 7849 	mov	r7,dph
      005B31 15 81            [12] 7850 	dec	sp
      005B33 15 81            [12] 7851 	dec	sp
      005B35 C3               [12] 7852 	clr	c
      005B36 E4               [12] 7853 	clr	a
      005B37 9E               [12] 7854 	subb	a,r6
      005B38 74 80            [12] 7855 	mov	a,#(0x00 ^ 0x80)
      005B3A 8F F0            [24] 7856 	mov	b,r7
      005B3C 63 F0 80         [24] 7857 	xrl	b,#0x80
      005B3F 95 F0            [12] 7858 	subb	a,b
      005B41 50 03            [24] 7859 	jnc	00413$
      005B43 02 59 13         [24] 7860 	ljmp	00192$
      005B46                       7861 00413$:
      005B46 02 5C 2E         [24] 7862 	ljmp	00193$
      005B49                       7863 00152$:
                                   7864 ;	calc.c:498: ((char)input == '+') || ((char)input == '-')
      005B49 BD 2B 02         [24] 7865 	cjne	r5,#0x2b,00414$
      005B4C 80 03            [24] 7866 	sjmp	00147$
      005B4E                       7867 00414$:
      005B4E BD 2D 2C         [24] 7868 	cjne	r5,#0x2d,00148$
      005B51                       7869 00147$:
                                   7870 ;	calc.c:500: if (state_exec(&s, EVENT_OP) <= 0) break;
      005B51 74 02            [12] 7871 	mov	a,#0x02
      005B53 C0 E0            [24] 7872 	push	acc
      005B55 E4               [12] 7873 	clr	a
      005B56 C0 E0            [24] 7874 	push	acc
      005B58 90 A0 00         [24] 7875 	mov	dptr,#_s
      005B5B 75 F0 00         [24] 7876 	mov	b,#0x00
      005B5E 12 21 86         [24] 7877 	lcall	_state_exec
      005B61 AE 82            [24] 7878 	mov	r6,dpl
      005B63 AF 83            [24] 7879 	mov	r7,dph
      005B65 15 81            [12] 7880 	dec	sp
      005B67 15 81            [12] 7881 	dec	sp
      005B69 C3               [12] 7882 	clr	c
      005B6A E4               [12] 7883 	clr	a
      005B6B 9E               [12] 7884 	subb	a,r6
      005B6C 74 80            [12] 7885 	mov	a,#(0x00 ^ 0x80)
      005B6E 8F F0            [24] 7886 	mov	b,r7
      005B70 63 F0 80         [24] 7887 	xrl	b,#0x80
      005B73 95 F0            [12] 7888 	subb	a,b
      005B75 50 03            [24] 7889 	jnc	00417$
      005B77 02 59 13         [24] 7890 	ljmp	00192$
      005B7A                       7891 00417$:
      005B7A 02 5C 2E         [24] 7892 	ljmp	00193$
      005B7D                       7893 00148$:
                                   7894 ;	calc.c:502: ((char)input == '*') ||
      005B7D BD 2A 02         [24] 7895 	cjne	r5,#0x2a,00418$
      005B80 80 12            [24] 7896 	sjmp	00140$
      005B82                       7897 00418$:
                                   7898 ;	calc.c:503: ((char)input == '/') || ((char)input == '\\') ||
      005B82 BD 2F 02         [24] 7899 	cjne	r5,#0x2f,00419$
      005B85 80 0D            [24] 7900 	sjmp	00140$
      005B87                       7901 00419$:
      005B87 BD 5C 02         [24] 7902 	cjne	r5,#0x5c,00420$
      005B8A 80 08            [24] 7903 	sjmp	00140$
      005B8C                       7904 00420$:
                                   7905 ;	calc.c:504: ((char)input == '%') || ((char)input == '#')
      005B8C BD 25 02         [24] 7906 	cjne	r5,#0x25,00421$
      005B8F 80 03            [24] 7907 	sjmp	00140$
      005B91                       7908 00421$:
      005B91 BD 23 29         [24] 7909 	cjne	r5,#0x23,00141$
      005B94                       7910 00140$:
                                   7911 ;	calc.c:506: if (state_exec(&s, EVENT_OP) <= 0) break;
      005B94 74 02            [12] 7912 	mov	a,#0x02
      005B96 C0 E0            [24] 7913 	push	acc
      005B98 E4               [12] 7914 	clr	a
      005B99 C0 E0            [24] 7915 	push	acc
      005B9B 90 A0 00         [24] 7916 	mov	dptr,#_s
      005B9E 75 F0 00         [24] 7917 	mov	b,#0x00
      005BA1 12 21 86         [24] 7918 	lcall	_state_exec
      005BA4 AE 82            [24] 7919 	mov	r6,dpl
      005BA6 AF 83            [24] 7920 	mov	r7,dph
      005BA8 15 81            [12] 7921 	dec	sp
      005BAA 15 81            [12] 7922 	dec	sp
      005BAC C3               [12] 7923 	clr	c
      005BAD E4               [12] 7924 	clr	a
      005BAE 9E               [12] 7925 	subb	a,r6
      005BAF 74 80            [12] 7926 	mov	a,#(0x00 ^ 0x80)
      005BB1 8F F0            [24] 7927 	mov	b,r7
      005BB3 63 F0 80         [24] 7928 	xrl	b,#0x80
      005BB6 95 F0            [12] 7929 	subb	a,b
      005BB8 50 74            [24] 7930 	jnc	00193$
      005BBA 02 59 13         [24] 7931 	ljmp	00192$
      005BBD                       7932 00141$:
                                   7933 ;	calc.c:508: ((char)input == '&') ||
      005BBD BD 26 02         [24] 7934 	cjne	r5,#0x26,00425$
      005BC0 80 1C            [24] 7935 	sjmp	00131$
      005BC2                       7936 00425$:
                                   7937 ;	calc.c:509: ((char)input == '|') || ((char)input == '^') ||
      005BC2 BD 7C 02         [24] 7938 	cjne	r5,#0x7c,00426$
      005BC5 80 17            [24] 7939 	sjmp	00131$
      005BC7                       7940 00426$:
      005BC7 BD 5E 02         [24] 7941 	cjne	r5,#0x5e,00427$
      005BCA 80 12            [24] 7942 	sjmp	00131$
      005BCC                       7943 00427$:
                                   7944 ;	calc.c:510: ((char)input == '~') ||
      005BCC BD 7E 02         [24] 7945 	cjne	r5,#0x7e,00428$
      005BCF 80 0D            [24] 7946 	sjmp	00131$
      005BD1                       7947 00428$:
                                   7948 ;	calc.c:511: ((char)input == '>') || ((char)input == ']') ||
      005BD1 BD 3E 02         [24] 7949 	cjne	r5,#0x3e,00429$
      005BD4 80 08            [24] 7950 	sjmp	00131$
      005BD6                       7951 00429$:
      005BD6 BD 5D 02         [24] 7952 	cjne	r5,#0x5d,00430$
      005BD9 80 03            [24] 7953 	sjmp	00131$
      005BDB                       7954 00430$:
                                   7955 ;	calc.c:512: ((char)input == '<')
      005BDB BD 3C 29         [24] 7956 	cjne	r5,#0x3c,00132$
      005BDE                       7957 00131$:
                                   7958 ;	calc.c:514: if (state_exec(&s, EVENT_OP) <= 0) break;
      005BDE 74 02            [12] 7959 	mov	a,#0x02
      005BE0 C0 E0            [24] 7960 	push	acc
      005BE2 E4               [12] 7961 	clr	a
      005BE3 C0 E0            [24] 7962 	push	acc
      005BE5 90 A0 00         [24] 7963 	mov	dptr,#_s
      005BE8 75 F0 00         [24] 7964 	mov	b,#0x00
      005BEB 12 21 86         [24] 7965 	lcall	_state_exec
      005BEE AE 82            [24] 7966 	mov	r6,dpl
      005BF0 AF 83            [24] 7967 	mov	r7,dph
      005BF2 15 81            [12] 7968 	dec	sp
      005BF4 15 81            [12] 7969 	dec	sp
      005BF6 C3               [12] 7970 	clr	c
      005BF7 E4               [12] 7971 	clr	a
      005BF8 9E               [12] 7972 	subb	a,r6
      005BF9 74 80            [12] 7973 	mov	a,#(0x00 ^ 0x80)
      005BFB 8F F0            [24] 7974 	mov	b,r7
      005BFD 63 F0 80         [24] 7975 	xrl	b,#0x80
      005C00 95 F0            [12] 7976 	subb	a,b
      005C02 50 2A            [24] 7977 	jnc	00193$
      005C04 02 59 13         [24] 7978 	ljmp	00192$
      005C07                       7979 00132$:
                                   7980 ;	calc.c:516: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      005C07 E4               [12] 7981 	clr	a
      005C08 C0 E0            [24] 7982 	push	acc
      005C0A C0 E0            [24] 7983 	push	acc
      005C0C 90 A0 00         [24] 7984 	mov	dptr,#_s
      005C0F 75 F0 00         [24] 7985 	mov	b,#0x00
      005C12 12 21 86         [24] 7986 	lcall	_state_exec
      005C15 AE 82            [24] 7987 	mov	r6,dpl
      005C17 AF 83            [24] 7988 	mov	r7,dph
      005C19 15 81            [12] 7989 	dec	sp
      005C1B 15 81            [12] 7990 	dec	sp
      005C1D C3               [12] 7991 	clr	c
      005C1E E4               [12] 7992 	clr	a
      005C1F 9E               [12] 7993 	subb	a,r6
      005C20 74 80            [12] 7994 	mov	a,#(0x00 ^ 0x80)
      005C22 8F F0            [24] 7995 	mov	b,r7
      005C24 63 F0 80         [24] 7996 	xrl	b,#0x80
      005C27 95 F0            [12] 7997 	subb	a,b
      005C29 50 03            [24] 7998 	jnc	00434$
      005C2B 02 59 13         [24] 7999 	ljmp	00192$
      005C2E                       8000 00434$:
      005C2E                       8001 00193$:
                                   8002 ;	calc.c:520: printstr("TERM\r\n");
      005C2E 90 82 62         [24] 8003 	mov	dptr,#___str_52
      005C31 75 F0 80         [24] 8004 	mov	b,#0x80
      005C34 12 5F 35         [24] 8005 	lcall	_printstr
                                   8006 ;	calc.c:522: PCON |= 2;
      005C37 43 87 02         [24] 8007 	orl	_PCON,#0x02
                                   8008 ;	calc.c:524: return;
                                   8009 ;	calc.c:525: }
      005C3A 22               [24] 8010 	ret
                                   8011 	.area CSEG    (CODE)
                                   8012 	.area CONST   (CODE)
                                   8013 	.area CONST   (CODE)
      007EBA                       8014 ___str_0:
      007EBA 25 30 38 6C 78        8015 	.ascii "%08lx"
      007EBF 09                    8016 	.db 0x09
      007EC0 00                    8017 	.db 0x00
                                   8018 	.area CSEG    (CODE)
                                   8019 	.area CONST   (CODE)
      007EC1                       8020 ___str_1:
      007EC1 25 20 31 31 6C 64     8021 	.ascii "% 11ld"
      007EC7 09                    8022 	.db 0x09
      007EC8 00                    8023 	.db 0x00
                                   8024 	.area CSEG    (CODE)
                                   8025 	.area CONST   (CODE)
      007EC9                       8026 ___str_2:
      007EC9 25 30 31 31 6C 6F     8027 	.ascii "%011lo"
      007ECF 09                    8028 	.db 0x09
      007ED0 00                    8029 	.db 0x00
                                   8030 	.area CSEG    (CODE)
                                   8031 	.area CONST   (CODE)
      007ED1                       8032 ___str_3:
      007ED1 0D                    8033 	.db 0x0d
      007ED2 0A                    8034 	.db 0x0a
      007ED3 00                    8035 	.db 0x00
                                   8036 	.area CSEG    (CODE)
                                   8037 	.area CONST   (CODE)
      007ED4                       8038 ___str_4:
      007ED4 73 74 61 63 6B 20 75  8039 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007EE3 0D                    8040 	.db 0x0d
      007EE4 0A                    8041 	.db 0x0a
      007EE5 00                    8042 	.db 0x00
                                   8043 	.area CSEG    (CODE)
                                   8044 	.area CONST   (CODE)
      007EE6                       8045 ___str_5:
      007EE6 50 53 50 41           8046 	.ascii "PSPA"
      007EEA 09                    8047 	.db 0x09
      007EEB 00                    8048 	.db 0x00
                                   8049 	.area CSEG    (CODE)
                                   8050 	.area CONST   (CODE)
      007EEC                       8051 ___str_6:
      007EEC 53 53 50 41           8052 	.ascii "SSPA"
      007EF0 09                    8053 	.db 0x09
      007EF1 00                    8054 	.db 0x00
                                   8055 	.area CSEG    (CODE)
                                   8056 	.area CONST   (CODE)
      007EF2                       8057 ___str_7:
      007EF2 50 53 56 41           8058 	.ascii "PSVA"
      007EF6 09                    8059 	.db 0x09
      007EF7 00                    8060 	.db 0x00
                                   8061 	.area CSEG    (CODE)
                                   8062 	.area CONST   (CODE)
      007EF8                       8063 ___str_8:
      007EF8 50 53 56 54 4F 50     8064 	.ascii "PSVTOP"
      007EFE 09                    8065 	.db 0x09
      007EFF 00                    8066 	.db 0x00
                                   8067 	.area CSEG    (CODE)
                                   8068 	.area CONST   (CODE)
      007F00                       8069 ___str_9:
      007F00 50 53 50 54 4F 50     8070 	.ascii "PSPTOP"
      007F06 09                    8071 	.db 0x09
      007F07 00                    8072 	.db 0x00
                                   8073 	.area CSEG    (CODE)
                                   8074 	.area CONST   (CODE)
      007F08                       8075 ___str_10:
      007F08 0D                    8076 	.db 0x0d
      007F09 0A                    8077 	.db 0x0a
      007F0A 73 74 61 63 6B 20 75  8078 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007F19 0D                    8079 	.db 0x0d
      007F1A 0A                    8080 	.db 0x0a
      007F1B 00                    8081 	.db 0x00
                                   8082 	.area CSEG    (CODE)
                                   8083 	.area CONST   (CODE)
      007F1C                       8084 ___str_11:
      007F1C 0D                    8085 	.db 0x0d
      007F1D 0A                    8086 	.db 0x0a
      007F1E 73 65 63 6F 6E 64 61  8087 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      007F36 0D                    8088 	.db 0x0d
      007F37 0A                    8089 	.db 0x0a
      007F38 00                    8090 	.db 0x00
                                   8091 	.area CSEG    (CODE)
                                   8092 	.area CONST   (CODE)
      007F39                       8093 ___str_12:
      007F39 0D                    8094 	.db 0x0d
      007F3A 0A                    8095 	.db 0x0a
      007F3B 73 65 63 6F 6E 64 61  8096 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      007F54 0D                    8097 	.db 0x0d
      007F55 0A                    8098 	.db 0x0a
      007F56 00                    8099 	.db 0x00
                                   8100 	.area CSEG    (CODE)
                                   8101 	.area CONST   (CODE)
      007F57                       8102 ___str_13:
      007F57 0D                    8103 	.db 0x0d
      007F58 0A                    8104 	.db 0x0a
      007F59 73 74 61 63 6B 20 6F  8105 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      007F67 0D                    8106 	.db 0x0d
      007F68 0A                    8107 	.db 0x0a
      007F69 00                    8108 	.db 0x00
                                   8109 	.area CSEG    (CODE)
                                   8110 	.area CONST   (CODE)
      007F6A                       8111 ___str_14:
      007F6A 0D                    8112 	.db 0x0d
      007F6B 0A                    8113 	.db 0x0a
      007F6C 64 69 76 69 73 69 6F  8114 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      007F7C 0D                    8115 	.db 0x0d
      007F7D 0A                    8116 	.db 0x0a
      007F7E 00                    8117 	.db 0x00
                                   8118 	.area CSEG    (CODE)
                                   8119 	.area CONST   (CODE)
      007F7F                       8120 ___str_15:
      007F7F 0D                    8121 	.db 0x0d
      007F80 0A                    8122 	.db 0x0a
      007F81 50 53 20 3D 20 25 70  8123 	.ascii "PS = %p, SS = %p, base = %d"
             2C 20 53 53 20 3D 20
             25 70 2C 20 62 61 73
             65 20 3D 20 25 64
      007F9C 0D                    8124 	.db 0x0d
      007F9D 0A                    8125 	.db 0x0a
      007F9E 00                    8126 	.db 0x00
                                   8127 	.area CSEG    (CODE)
                                   8128 	.area CONST   (CODE)
      007F9F                       8129 ___str_16:
      007F9F 41 43 43              8130 	.ascii "ACC"
      007FA2 09                    8131 	.db 0x09
      007FA3 00                    8132 	.db 0x00
                                   8133 	.area CSEG    (CODE)
                                   8134 	.area CONST   (CODE)
      007FA4                       8135 ___str_17:
      007FA4 0D                    8136 	.db 0x0d
      007FA5 0A                    8137 	.db 0x0a
      007FA6 50 53 54 4F 50 31     8138 	.ascii "PSTOP1"
      007FAC 09                    8139 	.db 0x09
      007FAD 00                    8140 	.db 0x00
                                   8141 	.area CSEG    (CODE)
                                   8142 	.area CONST   (CODE)
      007FAE                       8143 ___str_18:
      007FAE 0D                    8144 	.db 0x0d
      007FAF 0A                    8145 	.db 0x0a
      007FB0 50 53 54 4F 50 30     8146 	.ascii "PSTOP0"
      007FB6 09                    8147 	.db 0x09
      007FB7 00                    8148 	.db 0x00
                                   8149 	.area CSEG    (CODE)
                                   8150 	.area CONST   (CODE)
      007FB8                       8151 ___str_19:
      007FB8 0D                    8152 	.db 0x0d
      007FB9 0A                    8153 	.db 0x0a
      007FBA 53 53 54 4F 50 31     8154 	.ascii "SSTOP1"
      007FC0 09                    8155 	.db 0x09
      007FC1 00                    8156 	.db 0x00
                                   8157 	.area CSEG    (CODE)
                                   8158 	.area CONST   (CODE)
      007FC2                       8159 ___str_20:
      007FC2 0D                    8160 	.db 0x0d
      007FC3 0A                    8161 	.db 0x0a
      007FC4 53 53 54 4F 50 30     8162 	.ascii "SSTOP0"
      007FCA 09                    8163 	.db 0x09
      007FCB 00                    8164 	.db 0x00
                                   8165 	.area CSEG    (CODE)
                                   8166 	.area CONST   (CODE)
      007FCC                       8167 ___str_21:
      007FCC 0D                    8168 	.db 0x0d
      007FCD 0A                    8169 	.db 0x0a
      007FCE 48 68 4F 6F           8170 	.ascii "HhOo"
      007FD2 09                    8171 	.db 0x09
      007FD3 62 61 73 65 20 31 36  8172 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      007FE1 0D                    8173 	.db 0x0d
      007FE2 0A                    8174 	.db 0x0a
      007FE3 00                    8175 	.db 0x00
                                   8176 	.area CSEG    (CODE)
                                   8177 	.area CONST   (CODE)
      007FE4                       8178 ___str_22:
      007FE4 70 2E                 8179 	.ascii "p."
      007FE6 09                    8180 	.db 0x09
      007FE7 70 6F 70 20 74 6F 70  8181 	.ascii "pop top"
      007FEE 0D                    8182 	.db 0x0d
      007FEF 0A                    8183 	.db 0x0a
      007FF0 00                    8184 	.db 0x00
                                   8185 	.area CSEG    (CODE)
                                   8186 	.area CONST   (CODE)
      007FF1                       8187 ___str_23:
      007FF1 50                    8188 	.ascii "P"
      007FF2 09                    8189 	.db 0x09
      007FF3 70 6F 70 20 73 74 61  8190 	.ascii "pop stack"
             63 6B
      007FFC 0D                    8191 	.db 0x0d
      007FFD 0A                    8192 	.db 0x0a
      007FFE 00                    8193 	.db 0x00
                                   8194 	.area CSEG    (CODE)
                                   8195 	.area CONST   (CODE)
      007FFF                       8196 ___str_24:
      007FFF 76                    8197 	.ascii "v"
      008000 09                    8198 	.db 0x09
      008001 70 65 65 6B 20 74 6F  8199 	.ascii "peek top"
             70
      008009 0D                    8200 	.db 0x0d
      00800A 0A                    8201 	.db 0x0a
      00800B 00                    8202 	.db 0x00
                                   8203 	.area CSEG    (CODE)
                                   8204 	.area CONST   (CODE)
      00800C                       8205 ___str_25:
      00800C 56                    8206 	.ascii "V"
      00800D 09                    8207 	.db 0x09
      00800E 70 65 65 6B 20 73 74  8208 	.ascii "peek stack"
             61 63 6B
      008018 0D                    8209 	.db 0x0d
      008019 0A                    8210 	.db 0x0a
      00801A 00                    8211 	.db 0x00
                                   8212 	.area CSEG    (CODE)
                                   8213 	.area CONST   (CODE)
      00801B                       8214 ___str_26:
      00801B 69                    8215 	.ascii "i"
      00801C 09                    8216 	.db 0x09
      00801D 72 65 73 65 74 20 61  8217 	.ascii "reset acc"
             63 63
      008026 0D                    8218 	.db 0x0d
      008027 0A                    8219 	.db 0x0a
      008028 00                    8220 	.db 0x00
                                   8221 	.area CSEG    (CODE)
                                   8222 	.area CONST   (CODE)
      008029                       8223 ___str_27:
      008029 49                    8224 	.ascii "I"
      00802A 09                    8225 	.db 0x09
      00802B 72 65 73 65 74 20 61  8226 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      008040 0D                    8227 	.db 0x0d
      008041 0A                    8228 	.db 0x0a
      008042 00                    8229 	.db 0x00
                                   8230 	.area CSEG    (CODE)
                                   8231 	.area CONST   (CODE)
      008043                       8232 ___str_28:
      008043 78                    8233 	.ascii "x"
      008044 09                    8234 	.db 0x09
      008045 65 78 63 68 61 6E 67  8235 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      008053 0D                    8236 	.db 0x0d
      008054 0A                    8237 	.db 0x0a
      008055 00                    8238 	.db 0x00
                                   8239 	.area CSEG    (CODE)
                                   8240 	.area CONST   (CODE)
      008056                       8241 ___str_29:
      008056 58                    8242 	.ascii "X"
      008057 09                    8243 	.db 0x09
      008058 65 78 63 68 61 6E 67  8244 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      00807D 0D                    8245 	.db 0x0d
      00807E 0A                    8246 	.db 0x0a
      00807F 00                    8247 	.db 0x00
                                   8248 	.area CSEG    (CODE)
                                   8249 	.area CONST   (CODE)
      008080                       8250 ___str_30:
      008080 54                    8251 	.ascii "T"
      008081 09                    8252 	.db 0x09
      008082 65 78 63 68 61 6E 67  8253 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      0080A5 0D                    8254 	.db 0x0d
      0080A6 0A                    8255 	.db 0x0a
      0080A7 00                    8256 	.db 0x00
                                   8257 	.area CSEG    (CODE)
                                   8258 	.area CONST   (CODE)
      0080A8                       8259 ___str_31:
      0080A8 55                    8260 	.ascii "U"
      0080A9 09                    8261 	.db 0x09
      0080AA 63 6F 70 79 20 74 6F  8262 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      0080C7 0D                    8263 	.db 0x0d
      0080C8 0A                    8264 	.db 0x0a
      0080C9 00                    8265 	.db 0x00
                                   8266 	.area CSEG    (CODE)
                                   8267 	.area CONST   (CODE)
      0080CA                       8268 ___str_32:
      0080CA 75                    8269 	.ascii "u"
      0080CB 09                    8270 	.db 0x09
      0080CC 63 6F 70 79 20 74 6F  8271 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      0080E9 0D                    8272 	.db 0x0d
      0080EA 0A                    8273 	.db 0x0a
      0080EB 00                    8274 	.db 0x00
                                   8275 	.area CSEG    (CODE)
                                   8276 	.area CONST   (CODE)
      0080EC                       8277 ___str_33:
      0080EC 4D                    8278 	.ascii "M"
      0080ED 09                    8279 	.db 0x09
      0080EE 6D 6F 76 65 20 74 6F  8280 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      00810B 0D                    8281 	.db 0x0d
      00810C 0A                    8282 	.db 0x0a
      00810D 00                    8283 	.db 0x00
                                   8284 	.area CSEG    (CODE)
                                   8285 	.area CONST   (CODE)
      00810E                       8286 ___str_34:
      00810E 6D                    8287 	.ascii "m"
      00810F 09                    8288 	.db 0x09
      008110 6D 6F 76 65 20 74 6F  8289 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      00812D 0D                    8290 	.db 0x0d
      00812E 0A                    8291 	.db 0x0a
      00812F 00                    8292 	.db 0x00
                                   8293 	.area CSEG    (CODE)
                                   8294 	.area CONST   (CODE)
      008130                       8295 ___str_35:
      008130 2B                    8296 	.ascii "+"
      008131 09                    8297 	.db 0x09
      008132 61 64 64 20 74 6F 70  8298 	.ascii "add top 2"
             20 32
      00813B 0D                    8299 	.db 0x0d
      00813C 0A                    8300 	.db 0x0a
      00813D 00                    8301 	.db 0x00
                                   8302 	.area CSEG    (CODE)
                                   8303 	.area CONST   (CODE)
      00813E                       8304 ___str_36:
      00813E 2D                    8305 	.ascii "-"
      00813F 09                    8306 	.db 0x09
      008140 73 75 62 74 72 61 63  8307 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      00814E 0D                    8308 	.db 0x0d
      00814F 0A                    8309 	.db 0x0a
      008150 00                    8310 	.db 0x00
                                   8311 	.area CSEG    (CODE)
                                   8312 	.area CONST   (CODE)
      008151                       8313 ___str_37:
      008151 2A                    8314 	.ascii "*"
      008152 09                    8315 	.db 0x09
      008153 6D 75 6C 74 69 70 6C  8316 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      008161 0D                    8317 	.db 0x0d
      008162 0A                    8318 	.db 0x0a
      008163 00                    8319 	.db 0x00
                                   8320 	.area CSEG    (CODE)
                                   8321 	.area CONST   (CODE)
      008164                       8322 ___str_38:
      008164 2F                    8323 	.ascii "/"
      008165 09                    8324 	.db 0x09
      008166 64 69 76 69 64 65 20  8325 	.ascii "divide top 2"
             74 6F 70 20 32
      008172 0D                    8326 	.db 0x0d
      008173 0A                    8327 	.db 0x0a
      008174 00                    8328 	.db 0x00
                                   8329 	.area CSEG    (CODE)
                                   8330 	.area CONST   (CODE)
      008175                       8331 ___str_39:
      008175 5C                    8332 	.db 0x5c
      008176 09                    8333 	.db 0x09
      008177 64 69 76 69 64 65 20  8334 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      00818C 0D                    8335 	.db 0x0d
      00818D 0A                    8336 	.db 0x0a
      00818E 00                    8337 	.db 0x00
                                   8338 	.area CSEG    (CODE)
                                   8339 	.area CONST   (CODE)
      00818F                       8340 ___str_40:
      00818F 25                    8341 	.ascii "%"
      008190 09                    8342 	.db 0x09
      008191 6D 6F 64 75 6C 75 73  8343 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      00819E 0D                    8344 	.db 0x0d
      00819F 0A                    8345 	.db 0x0a
      0081A0 00                    8346 	.db 0x00
                                   8347 	.area CSEG    (CODE)
                                   8348 	.area CONST   (CODE)
      0081A1                       8349 ___str_41:
      0081A1 23                    8350 	.ascii "#"
      0081A2 09                    8351 	.db 0x09
      0081A3 6D 6F 64 75 6C 75 73  8352 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      0081B9 0D                    8353 	.db 0x0d
      0081BA 0A                    8354 	.db 0x0a
      0081BB 00                    8355 	.db 0x00
                                   8356 	.area CSEG    (CODE)
                                   8357 	.area CONST   (CODE)
      0081BC                       8358 ___str_42:
      0081BC 26                    8359 	.ascii "&"
      0081BD 09                    8360 	.db 0x09
      0081BE 61 6E 64 20 74 6F 70  8361 	.ascii "and top 2"
             20 32
      0081C7 0D                    8362 	.db 0x0d
      0081C8 0A                    8363 	.db 0x0a
      0081C9 00                    8364 	.db 0x00
                                   8365 	.area CSEG    (CODE)
                                   8366 	.area CONST   (CODE)
      0081CA                       8367 ___str_43:
      0081CA 7C                    8368 	.ascii "|"
      0081CB 09                    8369 	.db 0x09
      0081CC 6F 72 20 74 6F 70 20  8370 	.ascii "or top 2"
             32
      0081D4 0D                    8371 	.db 0x0d
      0081D5 0A                    8372 	.db 0x0a
      0081D6 00                    8373 	.db 0x00
                                   8374 	.area CSEG    (CODE)
                                   8375 	.area CONST   (CODE)
      0081D7                       8376 ___str_44:
      0081D7 5E                    8377 	.ascii "^"
      0081D8 09                    8378 	.db 0x09
      0081D9 78 6F 72 20 74 6F 70  8379 	.ascii "xor top 2"
             20 32
      0081E2 0D                    8380 	.db 0x0d
      0081E3 0A                    8381 	.db 0x0a
      0081E4 00                    8382 	.db 0x00
                                   8383 	.area CSEG    (CODE)
                                   8384 	.area CONST   (CODE)
      0081E5                       8385 ___str_45:
      0081E5 3E                    8386 	.ascii ">"
      0081E6 09                    8387 	.db 0x09
      0081E7 73 68 69 66 74 20 72  8388 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      0081F8 0D                    8389 	.db 0x0d
      0081F9 0A                    8390 	.db 0x0a
      0081FA 00                    8391 	.db 0x00
                                   8392 	.area CSEG    (CODE)
                                   8393 	.area CONST   (CODE)
      0081FB                       8394 ___str_46:
      0081FB 5D                    8395 	.ascii "]"
      0081FC 09                    8396 	.db 0x09
      0081FD 61 72 69 74 68 6D 65  8397 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      008219 0D                    8398 	.db 0x0d
      00821A 0A                    8399 	.db 0x0a
      00821B 00                    8400 	.db 0x00
                                   8401 	.area CSEG    (CODE)
                                   8402 	.area CONST   (CODE)
      00821C                       8403 ___str_47:
      00821C 3C                    8404 	.ascii "<"
      00821D 09                    8405 	.db 0x09
      00821E 73 68 69 66 74 20 6C  8406 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      00822E 0D                    8407 	.db 0x0d
      00822F 0A                    8408 	.db 0x0a
      008230 00                    8409 	.db 0x00
                                   8410 	.area CSEG    (CODE)
                                   8411 	.area CONST   (CODE)
      008231                       8412 ___str_48:
      008231 7E                    8413 	.ascii "~"
      008232 09                    8414 	.db 0x09
      008233 62 69 74 77 69 73 65  8415 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      008242 0D                    8416 	.db 0x0d
      008243 0A                    8417 	.db 0x0a
      008244 00                    8418 	.db 0x00
                                   8419 	.area CSEG    (CODE)
                                   8420 	.area CONST   (CODE)
      008245                       8421 ___str_49:
      008245 73                    8422 	.ascii "s"
      008246 09                    8423 	.db 0x09
      008247 73 74 61 74 75 73     8424 	.ascii "status"
      00824D 0D                    8425 	.db 0x0d
      00824E 0A                    8426 	.db 0x0a
      00824F 00                    8427 	.db 0x00
                                   8428 	.area CSEG    (CODE)
                                   8429 	.area CONST   (CODE)
      008250                       8430 ___str_50:
      008250 3F                    8431 	.ascii "?"
      008251 09                    8432 	.db 0x09
      008252 68 65 6C 70           8433 	.ascii "help"
      008256 0D                    8434 	.db 0x0d
      008257 0A                    8435 	.db 0x0a
      008258 00                    8436 	.db 0x00
                                   8437 	.area CSEG    (CODE)
                                   8438 	.area CONST   (CODE)
      008259                       8439 ___str_51:
      008259 71                    8440 	.ascii "q"
      00825A 09                    8441 	.db 0x09
      00825B 71 75 69 74           8442 	.ascii "quit"
      00825F 0D                    8443 	.db 0x0d
      008260 0A                    8444 	.db 0x0a
      008261 00                    8445 	.db 0x00
                                   8446 	.area CSEG    (CODE)
                                   8447 	.area CONST   (CODE)
      008262                       8448 ___str_52:
      008262 54 45 52 4D           8449 	.ascii "TERM"
      008266 0D                    8450 	.db 0x0d
      008267 0A                    8451 	.db 0x0a
      008268 00                    8452 	.db 0x00
                                   8453 	.area CSEG    (CODE)
                                   8454 	.area XINIT   (CODE)
      00827A                       8455 __xinit__deltas:
      00827A 00 00                 8456 	.byte #0x00, #0x00	;  0
      00827C 00 00                 8457 	.byte #0x00, #0x00	;  0
      00827E 00 00                 8458 	.byte #0x00, #0x00	;  0
      008280 00 00                 8459 	.byte #0x00,#0x00
      008282 00 00                 8460 	.byte #0x00,#0x00
      008284 00 00                 8461 	.byte #0x00, #0x00	;  0
      008286 01 00                 8462 	.byte #0x01, #0x00	;  1
      008288 02 00                 8463 	.byte #0x02, #0x00	;  2
      00828A 00 00                 8464 	.byte #0x00,#0x00
      00828C B0 2B                 8465 	.byte _accumulate, (_accumulate >> 8)
      00828E 00 00                 8466 	.byte #0x00, #0x00	;  0
      008290 02 00                 8467 	.byte #0x02, #0x00	;  2
      008292 01 00                 8468 	.byte #0x01, #0x00	;  1
      008294 00 00                 8469 	.byte #0x00,#0x00
      008296 2C 32                 8470 	.byte _operator, (_operator >> 8)
      008298 01 00                 8471 	.byte #0x01, #0x00	;  1
      00829A 00 00                 8472 	.byte #0x00, #0x00	;  0
      00829C 00 00                 8473 	.byte #0x00, #0x00	;  0
      00829E 00 00                 8474 	.byte #0x00,#0x00
      0082A0 00 00                 8475 	.byte #0x00,#0x00
      0082A2 01 00                 8476 	.byte #0x01, #0x00	;  1
      0082A4 02 00                 8477 	.byte #0x02, #0x00	;  2
      0082A6 01 00                 8478 	.byte #0x01, #0x00	;  1
      0082A8 00 00                 8479 	.byte #0x00,#0x00
      0082AA 2C 32                 8480 	.byte _operator, (_operator >> 8)
      0082AC 01 00                 8481 	.byte #0x01, #0x00	;  1
      0082AE 01 00                 8482 	.byte #0x01, #0x00	;  1
      0082B0 02 00                 8483 	.byte #0x02, #0x00	;  2
      0082B2 00 00                 8484 	.byte #0x00,#0x00
      0082B4 B0 2B                 8485 	.byte _accumulate, (_accumulate >> 8)
      0082B6 02 00                 8486 	.byte #0x02, #0x00	;  2
      0082B8 00 00                 8487 	.byte #0x00, #0x00	;  0
      0082BA 00 00                 8488 	.byte #0x00, #0x00	;  0
      0082BC 00 00                 8489 	.byte #0x00,#0x00
      0082BE C7 4F                 8490 	.byte _push_acc, (_push_acc >> 8)
      0082C0 02 00                 8491 	.byte #0x02, #0x00	;  2
      0082C2 07 00                 8492 	.byte #0x07, #0x00	;  7
      0082C4 00 00                 8493 	.byte #0x00, #0x00	;  0
      0082C6 00 00                 8494 	.byte #0x00,#0x00
      0082C8 D1 50                 8495 	.byte _reset_acc, (_reset_acc >> 8)
      0082CA 02 00                 8496 	.byte #0x02, #0x00	;  2
      0082CC 01 00                 8497 	.byte #0x01, #0x00	;  1
      0082CE 02 00                 8498 	.byte #0x02, #0x00	;  2
      0082D0 00 00                 8499 	.byte #0x00,#0x00
      0082D2 B0 2B                 8500 	.byte _accumulate, (_accumulate >> 8)
      0082D4 02 00                 8501 	.byte #0x02, #0x00	;  2
      0082D6 02 00                 8502 	.byte #0x02, #0x00	;  2
      0082D8 01 00                 8503 	.byte #0x01, #0x00	;  1
      0082DA 00 00                 8504 	.byte #0x00,#0x00
      0082DC C7 4F                 8505 	.byte _push_acc, (_push_acc >> 8)
      0082DE FF 7F                 8506 	.byte #0xff, #0x7f	;  32767
      0082E0 06 00                 8507 	.byte #0x06, #0x00	;  6
      0082E2 FF 7F                 8508 	.byte #0xff, #0x7f	;  32767
      0082E4 00 00                 8509 	.byte #0x00,#0x00
      0082E6 D1 50                 8510 	.byte _reset_acc, (_reset_acc >> 8)
      0082E8 FF 7F                 8511 	.byte #0xff, #0x7f	;  32767
      0082EA 07 00                 8512 	.byte #0x07, #0x00	;  7
      0082EC FF 7F                 8513 	.byte #0xff, #0x7f	;  32767
      0082EE 00 00                 8514 	.byte #0x00,#0x00
      0082F0 00 00                 8515 	.byte #0x00,#0x00
      0082F2 FF 7F                 8516 	.byte #0xff, #0x7f	;  32767
      0082F4 05 00                 8517 	.byte #0x05, #0x00	;  5
      0082F6 FF 7F                 8518 	.byte #0xff, #0x7f	;  32767
      0082F8 00 00                 8519 	.byte #0x00,#0x00
      0082FA 3B 51                 8520 	.byte _reset_base, (_reset_base >> 8)
      0082FC FF 7F                 8521 	.byte #0xff, #0x7f	;  32767
      0082FE 03 00                 8522 	.byte #0x03, #0x00	;  3
      008300 FF 7F                 8523 	.byte #0xff, #0x7f	;  32767
      008302 00 00                 8524 	.byte #0x00,#0x00
      008304 B9 51                 8525 	.byte _status, (_status >> 8)
      008306 FF 7F                 8526 	.byte #0xff, #0x7f	;  32767
      008308 04 00                 8527 	.byte #0x04, #0x00	;  4
      00830A FF 7F                 8528 	.byte #0xff, #0x7f	;  32767
      00830C 00 00                 8529 	.byte #0x00,#0x00
      00830E 47 57                 8530 	.byte _help, (_help >> 8)
      008310 FF 7F                 8531 	.byte #0xff, #0x7f	;  32767
      008312 08 00                 8532 	.byte #0x08, #0x00	;  8
      008314 03 00                 8533 	.byte #0x03, #0x00	;  3
      008316 00 00                 8534 	.byte #0x00,#0x00
      008318 21 2D                 8535 	.byte _dump_pop, (_dump_pop >> 8)
      00831A 00 80                 8536 	.byte #0x00, #0x80	; -32768
      00831C 00 80                 8537 	.byte #0x00, #0x80	; -32768
      00831E 00 80                 8538 	.byte #0x00, #0x80	; -32768
      008320 00 00                 8539 	.byte #0x00,#0x00
      008322 00 00                 8540 	.byte #0x00,#0x00
                                   8541 	.area CABS    (ABS,CODE)
