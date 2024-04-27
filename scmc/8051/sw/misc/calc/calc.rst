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
      00208D 02 20 03         [24]  370 	ljmp	__sdcc_program_startup
                                    371 ;--------------------------------------------------------
                                    372 ; Home
                                    373 ;--------------------------------------------------------
                                    374 	.area HOME    (CODE)
                                    375 	.area HOME    (CODE)
      002003                        376 __sdcc_program_startup:
      002003 02 58 29         [24]  377 	ljmp	_main
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
      002B70                        397 _accumulate:
                           000007   398 	ar7 = 0x07
                           000006   399 	ar6 = 0x06
                           000005   400 	ar5 = 0x05
                           000004   401 	ar4 = 0x04
                           000003   402 	ar3 = 0x03
                           000002   403 	ar2 = 0x02
                           000001   404 	ar1 = 0x01
                           000000   405 	ar0 = 0x00
      002B70 C0 08            [24]  406 	push	_bp
      002B72 E5 81            [12]  407 	mov	a,sp
      002B74 F5 08            [12]  408 	mov	_bp,a
      002B76 24 0E            [12]  409 	add	a,#0x0e
      002B78 F5 81            [12]  410 	mov	sp,a
      002B7A AD 82            [24]  411 	mov	r5,dpl
      002B7C AE 83            [24]  412 	mov	r6,dph
      002B7E AF F0            [24]  413 	mov	r7,b
                                    414 ;	calc.c:27: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002B80 E5 08            [12]  415 	mov	a,_bp
      002B82 24 08            [12]  416 	add	a,#0x08
      002B84 F8               [12]  417 	mov	r0,a
      002B85 A6 05            [24]  418 	mov	@r0,ar5
      002B87 08               [12]  419 	inc	r0
      002B88 A6 06            [24]  420 	mov	@r0,ar6
      002B8A 08               [12]  421 	inc	r0
      002B8B A6 07            [24]  422 	mov	@r0,ar7
                                    423 ;	calc.c:32: if (!ctx->acc_valid) {
      002B8D E5 08            [12]  424 	mov	a,_bp
      002B8F 24 08            [12]  425 	add	a,#0x08
      002B91 F8               [12]  426 	mov	r0,a
      002B92 74 06            [12]  427 	mov	a,#0x06
      002B94 26               [12]  428 	add	a,@r0
      002B95 FA               [12]  429 	mov	r2,a
      002B96 E4               [12]  430 	clr	a
      002B97 08               [12]  431 	inc	r0
      002B98 36               [12]  432 	addc	a,@r0
      002B99 FB               [12]  433 	mov	r3,a
      002B9A 08               [12]  434 	inc	r0
      002B9B 86 04            [24]  435 	mov	ar4,@r0
      002B9D 8A 82            [24]  436 	mov	dpl,r2
      002B9F 8B 83            [24]  437 	mov	dph,r3
      002BA1 8C F0            [24]  438 	mov	b,r4
      002BA3 12 66 3A         [24]  439 	lcall	__gptrget
      002BA6 70 31            [24]  440 	jnz	00102$
                                    441 ;	calc.c:33: ctx->acc_valid = 1;
      002BA8 8A 82            [24]  442 	mov	dpl,r2
      002BAA 8B 83            [24]  443 	mov	dph,r3
      002BAC 8C F0            [24]  444 	mov	b,r4
      002BAE 74 01            [12]  445 	mov	a,#0x01
      002BB0 12 5E A9         [24]  446 	lcall	__gptrput
                                    447 ;	calc.c:34: ctx->acc = 0l;
      002BB3 E5 08            [12]  448 	mov	a,_bp
      002BB5 24 08            [12]  449 	add	a,#0x08
      002BB7 F8               [12]  450 	mov	r0,a
      002BB8 74 02            [12]  451 	mov	a,#0x02
      002BBA 26               [12]  452 	add	a,@r0
      002BBB FA               [12]  453 	mov	r2,a
      002BBC E4               [12]  454 	clr	a
      002BBD 08               [12]  455 	inc	r0
      002BBE 36               [12]  456 	addc	a,@r0
      002BBF FB               [12]  457 	mov	r3,a
      002BC0 08               [12]  458 	inc	r0
      002BC1 86 04            [24]  459 	mov	ar4,@r0
      002BC3 8A 82            [24]  460 	mov	dpl,r2
      002BC5 8B 83            [24]  461 	mov	dph,r3
      002BC7 8C F0            [24]  462 	mov	b,r4
      002BC9 E4               [12]  463 	clr	a
      002BCA 12 5E A9         [24]  464 	lcall	__gptrput
      002BCD A3               [24]  465 	inc	dptr
      002BCE 12 5E A9         [24]  466 	lcall	__gptrput
      002BD1 A3               [24]  467 	inc	dptr
      002BD2 12 5E A9         [24]  468 	lcall	__gptrput
      002BD5 A3               [24]  469 	inc	dptr
      002BD6 12 5E A9         [24]  470 	lcall	__gptrput
      002BD9                        471 00102$:
                                    472 ;	calc.c:37: d = strtol(ctx->digit, NULL, ctx->base);
      002BD9 E5 08            [12]  473 	mov	a,_bp
      002BDB 24 08            [12]  474 	add	a,#0x08
      002BDD F8               [12]  475 	mov	r0,a
      002BDE 86 82            [24]  476 	mov	dpl,@r0
      002BE0 08               [12]  477 	inc	r0
      002BE1 86 83            [24]  478 	mov	dph,@r0
      002BE3 08               [12]  479 	inc	r0
      002BE4 86 F0            [24]  480 	mov	b,@r0
      002BE6 12 66 3A         [24]  481 	lcall	__gptrget
      002BE9 FB               [12]  482 	mov	r3,a
      002BEA A3               [24]  483 	inc	dptr
      002BEB 12 66 3A         [24]  484 	lcall	__gptrget
      002BEE FC               [12]  485 	mov	r4,a
      002BEF E5 08            [12]  486 	mov	a,_bp
      002BF1 24 08            [12]  487 	add	a,#0x08
      002BF3 F8               [12]  488 	mov	r0,a
      002BF4 74 07            [12]  489 	mov	a,#0x07
      002BF6 26               [12]  490 	add	a,@r0
      002BF7 FA               [12]  491 	mov	r2,a
      002BF8 E4               [12]  492 	clr	a
      002BF9 08               [12]  493 	inc	r0
      002BFA 36               [12]  494 	addc	a,@r0
      002BFB FE               [12]  495 	mov	r6,a
      002BFC 08               [12]  496 	inc	r0
      002BFD 86 07            [24]  497 	mov	ar7,@r0
      002BFF C0 03            [24]  498 	push	ar3
      002C01 C0 04            [24]  499 	push	ar4
      002C03 E4               [12]  500 	clr	a
      002C04 C0 E0            [24]  501 	push	acc
      002C06 C0 E0            [24]  502 	push	acc
      002C08 C0 E0            [24]  503 	push	acc
      002C0A 8A 82            [24]  504 	mov	dpl,r2
      002C0C 8E 83            [24]  505 	mov	dph,r6
      002C0E 8F F0            [24]  506 	mov	b,r7
      002C10 12 5C 6B         [24]  507 	lcall	_strtol
      002C13 C8               [12]  508 	xch	a,r0
      002C14 E5 08            [12]  509 	mov	a,_bp
      002C16 24 0B            [12]  510 	add	a,#0x0b
      002C18 C8               [12]  511 	xch	a,r0
      002C19 A6 82            [24]  512 	mov	@r0,dpl
      002C1B 08               [12]  513 	inc	r0
      002C1C A6 83            [24]  514 	mov	@r0,dph
      002C1E 08               [12]  515 	inc	r0
      002C1F A6 F0            [24]  516 	mov	@r0,b
      002C21 08               [12]  517 	inc	r0
      002C22 F6               [12]  518 	mov	@r0,a
      002C23 E5 81            [12]  519 	mov	a,sp
      002C25 24 FB            [12]  520 	add	a,#0xfb
      002C27 F5 81            [12]  521 	mov	sp,a
                                    522 ;	calc.c:38: ctx->acc = ctx->acc * (long)ctx->base + d;
      002C29 E5 08            [12]  523 	mov	a,_bp
      002C2B 24 08            [12]  524 	add	a,#0x08
      002C2D F8               [12]  525 	mov	r0,a
      002C2E A9 08            [24]  526 	mov	r1,_bp
      002C30 09               [12]  527 	inc	r1
      002C31 74 02            [12]  528 	mov	a,#0x02
      002C33 26               [12]  529 	add	a,@r0
      002C34 F7               [12]  530 	mov	@r1,a
      002C35 E4               [12]  531 	clr	a
      002C36 08               [12]  532 	inc	r0
      002C37 36               [12]  533 	addc	a,@r0
      002C38 09               [12]  534 	inc	r1
      002C39 F7               [12]  535 	mov	@r1,a
      002C3A 08               [12]  536 	inc	r0
      002C3B 09               [12]  537 	inc	r1
      002C3C E6               [12]  538 	mov	a,@r0
      002C3D F7               [12]  539 	mov	@r1,a
      002C3E A8 08            [24]  540 	mov	r0,_bp
      002C40 08               [12]  541 	inc	r0
      002C41 86 82            [24]  542 	mov	dpl,@r0
      002C43 08               [12]  543 	inc	r0
      002C44 86 83            [24]  544 	mov	dph,@r0
      002C46 08               [12]  545 	inc	r0
      002C47 86 F0            [24]  546 	mov	b,@r0
      002C49 E5 08            [12]  547 	mov	a,_bp
      002C4B 24 04            [12]  548 	add	a,#0x04
      002C4D F9               [12]  549 	mov	r1,a
      002C4E 12 66 3A         [24]  550 	lcall	__gptrget
      002C51 F7               [12]  551 	mov	@r1,a
      002C52 A3               [24]  552 	inc	dptr
      002C53 12 66 3A         [24]  553 	lcall	__gptrget
      002C56 09               [12]  554 	inc	r1
      002C57 F7               [12]  555 	mov	@r1,a
      002C58 A3               [24]  556 	inc	dptr
      002C59 12 66 3A         [24]  557 	lcall	__gptrget
      002C5C 09               [12]  558 	inc	r1
      002C5D F7               [12]  559 	mov	@r1,a
      002C5E A3               [24]  560 	inc	dptr
      002C5F 12 66 3A         [24]  561 	lcall	__gptrget
      002C62 09               [12]  562 	inc	r1
      002C63 F7               [12]  563 	mov	@r1,a
      002C64 E5 08            [12]  564 	mov	a,_bp
      002C66 24 08            [12]  565 	add	a,#0x08
      002C68 F8               [12]  566 	mov	r0,a
      002C69 86 82            [24]  567 	mov	dpl,@r0
      002C6B 08               [12]  568 	inc	r0
      002C6C 86 83            [24]  569 	mov	dph,@r0
      002C6E 08               [12]  570 	inc	r0
      002C6F 86 F0            [24]  571 	mov	b,@r0
      002C71 12 66 3A         [24]  572 	lcall	__gptrget
      002C74 FA               [12]  573 	mov	r2,a
      002C75 A3               [24]  574 	inc	dptr
      002C76 12 66 3A         [24]  575 	lcall	__gptrget
      002C79 FB               [12]  576 	mov	r3,a
      002C7A 33               [12]  577 	rlc	a
      002C7B 95 E0            [12]  578 	subb	a,acc
      002C7D FE               [12]  579 	mov	r6,a
      002C7E FF               [12]  580 	mov	r7,a
      002C7F C0 02            [24]  581 	push	ar2
      002C81 C0 03            [24]  582 	push	ar3
      002C83 C0 06            [24]  583 	push	ar6
      002C85 C0 07            [24]  584 	push	ar7
      002C87 E5 08            [12]  585 	mov	a,_bp
      002C89 24 04            [12]  586 	add	a,#0x04
      002C8B F8               [12]  587 	mov	r0,a
      002C8C 86 82            [24]  588 	mov	dpl,@r0
      002C8E 08               [12]  589 	inc	r0
      002C8F 86 83            [24]  590 	mov	dph,@r0
      002C91 08               [12]  591 	inc	r0
      002C92 86 F0            [24]  592 	mov	b,@r0
      002C94 08               [12]  593 	inc	r0
      002C95 E6               [12]  594 	mov	a,@r0
      002C96 12 6A 33         [24]  595 	lcall	__mullong
      002C99 AC 82            [24]  596 	mov	r4,dpl
      002C9B AD 83            [24]  597 	mov	r5,dph
      002C9D AE F0            [24]  598 	mov	r6,b
      002C9F FF               [12]  599 	mov	r7,a
      002CA0 E5 81            [12]  600 	mov	a,sp
      002CA2 24 FC            [12]  601 	add	a,#0xfc
      002CA4 F5 81            [12]  602 	mov	sp,a
      002CA6 E5 08            [12]  603 	mov	a,_bp
      002CA8 24 0B            [12]  604 	add	a,#0x0b
      002CAA F8               [12]  605 	mov	r0,a
      002CAB E6               [12]  606 	mov	a,@r0
      002CAC 2C               [12]  607 	add	a,r4
      002CAD FC               [12]  608 	mov	r4,a
      002CAE 08               [12]  609 	inc	r0
      002CAF E6               [12]  610 	mov	a,@r0
      002CB0 3D               [12]  611 	addc	a,r5
      002CB1 FD               [12]  612 	mov	r5,a
      002CB2 08               [12]  613 	inc	r0
      002CB3 E6               [12]  614 	mov	a,@r0
      002CB4 3E               [12]  615 	addc	a,r6
      002CB5 FE               [12]  616 	mov	r6,a
      002CB6 08               [12]  617 	inc	r0
      002CB7 E6               [12]  618 	mov	a,@r0
      002CB8 3F               [12]  619 	addc	a,r7
      002CB9 FF               [12]  620 	mov	r7,a
      002CBA A8 08            [24]  621 	mov	r0,_bp
      002CBC 08               [12]  622 	inc	r0
      002CBD 86 82            [24]  623 	mov	dpl,@r0
      002CBF 08               [12]  624 	inc	r0
      002CC0 86 83            [24]  625 	mov	dph,@r0
      002CC2 08               [12]  626 	inc	r0
      002CC3 86 F0            [24]  627 	mov	b,@r0
      002CC5 EC               [12]  628 	mov	a,r4
      002CC6 12 5E A9         [24]  629 	lcall	__gptrput
      002CC9 A3               [24]  630 	inc	dptr
      002CCA ED               [12]  631 	mov	a,r5
      002CCB 12 5E A9         [24]  632 	lcall	__gptrput
      002CCE A3               [24]  633 	inc	dptr
      002CCF EE               [12]  634 	mov	a,r6
      002CD0 12 5E A9         [24]  635 	lcall	__gptrput
      002CD3 A3               [24]  636 	inc	dptr
      002CD4 EF               [12]  637 	mov	a,r7
      002CD5 12 5E A9         [24]  638 	lcall	__gptrput
                                    639 ;	calc.c:40: return 1;
      002CD8 90 00 01         [24]  640 	mov	dptr,#0x0001
                                    641 ;	calc.c:41: }
      002CDB 85 08 81         [24]  642 	mov	sp,_bp
      002CDE D0 08            [24]  643 	pop	_bp
      002CE0 22               [24]  644 	ret
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
      002CE1                        666 _dump_pop:
      002CE1 C0 08            [24]  667 	push	_bp
      002CE3 E5 81            [12]  668 	mov	a,sp
      002CE5 F5 08            [12]  669 	mov	_bp,a
      002CE7 24 15            [12]  670 	add	a,#0x15
      002CE9 F5 81            [12]  671 	mov	sp,a
      002CEB AD 82            [24]  672 	mov	r5,dpl
      002CED AE 83            [24]  673 	mov	r6,dph
      002CEF AF F0            [24]  674 	mov	r7,b
                                    675 ;	calc.c:44: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002CF1 E5 08            [12]  676 	mov	a,_bp
      002CF3 24 0B            [12]  677 	add	a,#0x0b
      002CF5 F8               [12]  678 	mov	r0,a
      002CF6 A6 05            [24]  679 	mov	@r0,ar5
      002CF8 08               [12]  680 	inc	r0
      002CF9 A6 06            [24]  681 	mov	@r0,ar6
      002CFB 08               [12]  682 	inc	r0
      002CFC A6 07            [24]  683 	mov	@r0,ar7
                                    684 ;	calc.c:48: if (delta->event == EVENT_TERM) printstr("\r\n");
      002CFE E5 08            [12]  685 	mov	a,_bp
      002D00 24 FB            [12]  686 	add	a,#0xfb
      002D02 F8               [12]  687 	mov	r0,a
      002D03 86 02            [24]  688 	mov	ar2,@r0
      002D05 08               [12]  689 	inc	r0
      002D06 86 03            [24]  690 	mov	ar3,@r0
      002D08 08               [12]  691 	inc	r0
      002D09 86 04            [24]  692 	mov	ar4,@r0
      002D0B 74 02            [12]  693 	mov	a,#0x02
      002D0D 2A               [12]  694 	add	a,r2
      002D0E FA               [12]  695 	mov	r2,a
      002D0F E4               [12]  696 	clr	a
      002D10 3B               [12]  697 	addc	a,r3
      002D11 FB               [12]  698 	mov	r3,a
      002D12 8A 82            [24]  699 	mov	dpl,r2
      002D14 8B 83            [24]  700 	mov	dph,r3
      002D16 8C F0            [24]  701 	mov	b,r4
      002D18 12 66 3A         [24]  702 	lcall	__gptrget
      002D1B FE               [12]  703 	mov	r6,a
      002D1C A3               [24]  704 	inc	dptr
      002D1D 12 66 3A         [24]  705 	lcall	__gptrget
      002D20 FF               [12]  706 	mov	r7,a
      002D21 BE 08 18         [24]  707 	cjne	r6,#0x08,00102$
      002D24 BF 00 15         [24]  708 	cjne	r7,#0x00,00102$
      002D27 90 7E D2         [24]  709 	mov	dptr,#___str_3
      002D2A 75 F0 80         [24]  710 	mov	b,#0x80
      002D2D C0 04            [24]  711 	push	ar4
      002D2F C0 03            [24]  712 	push	ar3
      002D31 C0 02            [24]  713 	push	ar2
      002D33 12 5E F5         [24]  714 	lcall	_printstr
      002D36 D0 02            [24]  715 	pop	ar2
      002D38 D0 03            [24]  716 	pop	ar3
      002D3A D0 04            [24]  717 	pop	ar4
      002D3C                        718 00102$:
                                    719 ;	calc.c:49: r = stack_pop(ctx->ps, &d);
      002D3C C0 02            [24]  720 	push	ar2
      002D3E C0 03            [24]  721 	push	ar3
      002D40 C0 04            [24]  722 	push	ar4
      002D42 E5 08            [12]  723 	mov	a,_bp
      002D44 24 0E            [12]  724 	add	a,#0x0e
      002D46 FF               [12]  725 	mov	r7,a
      002D47 E5 08            [12]  726 	mov	a,_bp
      002D49 24 04            [12]  727 	add	a,#0x04
      002D4B F8               [12]  728 	mov	r0,a
      002D4C A6 07            [24]  729 	mov	@r0,ar7
      002D4E 08               [12]  730 	inc	r0
      002D4F 76 00            [12]  731 	mov	@r0,#0x00
      002D51 08               [12]  732 	inc	r0
      002D52 76 40            [12]  733 	mov	@r0,#0x40
      002D54 E5 08            [12]  734 	mov	a,_bp
      002D56 24 0B            [12]  735 	add	a,#0x0b
      002D58 F8               [12]  736 	mov	r0,a
      002D59 A9 08            [24]  737 	mov	r1,_bp
      002D5B 09               [12]  738 	inc	r1
      002D5C 74 11            [12]  739 	mov	a,#0x11
      002D5E 26               [12]  740 	add	a,@r0
      002D5F F7               [12]  741 	mov	@r1,a
      002D60 74 40            [12]  742 	mov	a,#0x40
      002D62 08               [12]  743 	inc	r0
      002D63 36               [12]  744 	addc	a,@r0
      002D64 09               [12]  745 	inc	r1
      002D65 F7               [12]  746 	mov	@r1,a
      002D66 08               [12]  747 	inc	r0
      002D67 09               [12]  748 	inc	r1
      002D68 E6               [12]  749 	mov	a,@r0
      002D69 F7               [12]  750 	mov	@r1,a
      002D6A A8 08            [24]  751 	mov	r0,_bp
      002D6C 08               [12]  752 	inc	r0
      002D6D 86 82            [24]  753 	mov	dpl,@r0
      002D6F 08               [12]  754 	inc	r0
      002D70 86 83            [24]  755 	mov	dph,@r0
      002D72 08               [12]  756 	inc	r0
      002D73 86 F0            [24]  757 	mov	b,@r0
      002D75 12 66 3A         [24]  758 	lcall	__gptrget
      002D78 FA               [12]  759 	mov	r2,a
      002D79 A3               [24]  760 	inc	dptr
      002D7A 12 66 3A         [24]  761 	lcall	__gptrget
      002D7D FB               [12]  762 	mov	r3,a
      002D7E A3               [24]  763 	inc	dptr
      002D7F 12 66 3A         [24]  764 	lcall	__gptrget
      002D82 FE               [12]  765 	mov	r6,a
      002D83 C0 07            [24]  766 	push	ar7
      002D85 C0 04            [24]  767 	push	ar4
      002D87 C0 03            [24]  768 	push	ar3
      002D89 C0 02            [24]  769 	push	ar2
      002D8B E5 08            [12]  770 	mov	a,_bp
      002D8D 24 04            [12]  771 	add	a,#0x04
      002D8F F8               [12]  772 	mov	r0,a
      002D90 E6               [12]  773 	mov	a,@r0
      002D91 C0 E0            [24]  774 	push	acc
      002D93 08               [12]  775 	inc	r0
      002D94 E6               [12]  776 	mov	a,@r0
      002D95 C0 E0            [24]  777 	push	acc
      002D97 08               [12]  778 	inc	r0
      002D98 E6               [12]  779 	mov	a,@r0
      002D99 C0 E0            [24]  780 	push	acc
      002D9B 8A 82            [24]  781 	mov	dpl,r2
      002D9D 8B 83            [24]  782 	mov	dph,r3
      002D9F 8E F0            [24]  783 	mov	b,r6
      002DA1 12 27 83         [24]  784 	lcall	_stack_pop
      002DA4 AE 82            [24]  785 	mov	r6,dpl
      002DA6 AD 83            [24]  786 	mov	r5,dph
      002DA8 15 81            [12]  787 	dec	sp
      002DAA 15 81            [12]  788 	dec	sp
      002DAC 15 81            [12]  789 	dec	sp
      002DAE D0 02            [24]  790 	pop	ar2
      002DB0 D0 03            [24]  791 	pop	ar3
      002DB2 D0 04            [24]  792 	pop	ar4
      002DB4 D0 07            [24]  793 	pop	ar7
                                    794 ;	calc.c:50: if (!r) {
      002DB6 D0 04            [24]  795 	pop	ar4
      002DB8 D0 03            [24]  796 	pop	ar3
      002DBA D0 02            [24]  797 	pop	ar2
      002DBC EE               [12]  798 	mov	a,r6
      002DBD 4D               [12]  799 	orl	a,r5
      002DBE 70 34            [24]  800 	jnz	00125$
                                    801 ;	calc.c:51: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002DC0 8A 82            [24]  802 	mov	dpl,r2
      002DC2 8B 83            [24]  803 	mov	dph,r3
      002DC4 8C F0            [24]  804 	mov	b,r4
      002DC6 12 66 3A         [24]  805 	lcall	__gptrget
      002DC9 FD               [12]  806 	mov	r5,a
      002DCA A3               [24]  807 	inc	dptr
      002DCB 12 66 3A         [24]  808 	lcall	__gptrget
      002DCE FE               [12]  809 	mov	r6,a
      002DCF BD 08 06         [24]  810 	cjne	r5,#0x08,00164$
      002DD2 BE 00 03         [24]  811 	cjne	r6,#0x00,00164$
      002DD5 02 2F 60         [24]  812 	ljmp	00110$
      002DD8                        813 00164$:
      002DD8 90 7E D5         [24]  814 	mov	dptr,#___str_4
      002DDB 75 F0 80         [24]  815 	mov	b,#0x80
      002DDE C0 07            [24]  816 	push	ar7
      002DE0 C0 04            [24]  817 	push	ar4
      002DE2 C0 03            [24]  818 	push	ar3
      002DE4 C0 02            [24]  819 	push	ar2
      002DE6 12 5E F5         [24]  820 	lcall	_printstr
      002DE9 D0 02            [24]  821 	pop	ar2
      002DEB D0 03            [24]  822 	pop	ar3
      002DED D0 04            [24]  823 	pop	ar4
      002DEF D0 07            [24]  824 	pop	ar7
      002DF1 02 2F 60         [24]  825 	ljmp	00110$
                                    826 ;	calc.c:52: } else while (r > 0) {
      002DF4                        827 00125$:
      002DF4 E5 08            [12]  828 	mov	a,_bp
      002DF6 24 07            [12]  829 	add	a,#0x07
      002DF8 F8               [12]  830 	mov	r0,a
      002DF9 A6 07            [24]  831 	mov	@r0,ar7
      002DFB                        832 00105$:
      002DFB C3               [12]  833 	clr	c
      002DFC E4               [12]  834 	clr	a
      002DFD 9E               [12]  835 	subb	a,r6
      002DFE 74 80            [12]  836 	mov	a,#(0x00 ^ 0x80)
      002E00 8D F0            [24]  837 	mov	b,r5
      002E02 63 F0 80         [24]  838 	xrl	b,#0x80
      002E05 95 F0            [12]  839 	subb	a,b
      002E07 40 03            [24]  840 	jc	00165$
      002E09 02 2F 60         [24]  841 	ljmp	00110$
      002E0C                        842 00165$:
                                    843 ;	calc.c:53: printstr("PSPA\t");
      002E0C C0 02            [24]  844 	push	ar2
      002E0E C0 03            [24]  845 	push	ar3
      002E10 C0 04            [24]  846 	push	ar4
      002E12 90 7E E7         [24]  847 	mov	dptr,#___str_5
      002E15 75 F0 80         [24]  848 	mov	b,#0x80
      002E18 C0 07            [24]  849 	push	ar7
      002E1A C0 04            [24]  850 	push	ar4
      002E1C C0 03            [24]  851 	push	ar3
      002E1E C0 02            [24]  852 	push	ar2
      002E20 12 5E F5         [24]  853 	lcall	_printstr
      002E23 D0 02            [24]  854 	pop	ar2
      002E25 D0 03            [24]  855 	pop	ar3
      002E27 D0 04            [24]  856 	pop	ar4
                                    857 ;	calc.c:54: printall(d);
      002E29 E5 08            [12]  858 	mov	a,_bp
      002E2B 24 0E            [12]  859 	add	a,#0x0e
      002E2D F8               [12]  860 	mov	r0,a
      002E2E E5 08            [12]  861 	mov	a,_bp
      002E30 24 12            [12]  862 	add	a,#0x12
      002E32 F9               [12]  863 	mov	r1,a
      002E33 E6               [12]  864 	mov	a,@r0
      002E34 F7               [12]  865 	mov	@r1,a
      002E35 08               [12]  866 	inc	r0
      002E36 09               [12]  867 	inc	r1
      002E37 E6               [12]  868 	mov	a,@r0
      002E38 F7               [12]  869 	mov	@r1,a
      002E39 08               [12]  870 	inc	r0
      002E3A 09               [12]  871 	inc	r1
      002E3B E6               [12]  872 	mov	a,@r0
      002E3C F7               [12]  873 	mov	@r1,a
      002E3D 08               [12]  874 	inc	r0
      002E3E 09               [12]  875 	inc	r1
      002E3F E6               [12]  876 	mov	a,@r0
      002E40 F7               [12]  877 	mov	@r1,a
      002E41 E5 08            [12]  878 	mov	a,_bp
      002E43 24 12            [12]  879 	add	a,#0x12
      002E45 F8               [12]  880 	mov	r0,a
      002E46 86 02            [24]  881 	mov	ar2,@r0
      002E48 08               [12]  882 	inc	r0
      002E49 86 03            [24]  883 	mov	ar3,@r0
      002E4B 08               [12]  884 	inc	r0
      002E4C 86 04            [24]  885 	mov	ar4,@r0
      002E4E 08               [12]  886 	inc	r0
      002E4F 86 05            [24]  887 	mov	ar5,@r0
                                    888 ;	calc.c:18: printf("%08lx\t", d);
      002E51 C0 05            [24]  889 	push	ar5
      002E53 C0 04            [24]  890 	push	ar4
      002E55 C0 03            [24]  891 	push	ar3
      002E57 C0 02            [24]  892 	push	ar2
      002E59 E5 08            [12]  893 	mov	a,_bp
      002E5B 24 12            [12]  894 	add	a,#0x12
      002E5D F8               [12]  895 	mov	r0,a
      002E5E E6               [12]  896 	mov	a,@r0
      002E5F C0 E0            [24]  897 	push	acc
      002E61 08               [12]  898 	inc	r0
      002E62 E6               [12]  899 	mov	a,@r0
      002E63 C0 E0            [24]  900 	push	acc
      002E65 08               [12]  901 	inc	r0
      002E66 E6               [12]  902 	mov	a,@r0
      002E67 C0 E0            [24]  903 	push	acc
      002E69 08               [12]  904 	inc	r0
      002E6A E6               [12]  905 	mov	a,@r0
      002E6B C0 E0            [24]  906 	push	acc
      002E6D 74 BB            [12]  907 	mov	a,#___str_0
      002E6F C0 E0            [24]  908 	push	acc
      002E71 74 7E            [12]  909 	mov	a,#(___str_0 >> 8)
      002E73 C0 E0            [24]  910 	push	acc
      002E75 74 80            [12]  911 	mov	a,#0x80
      002E77 C0 E0            [24]  912 	push	acc
      002E79 12 66 01         [24]  913 	lcall	_printf
      002E7C E5 81            [12]  914 	mov	a,sp
      002E7E 24 F9            [12]  915 	add	a,#0xf9
      002E80 F5 81            [12]  916 	mov	sp,a
      002E82 D0 02            [24]  917 	pop	ar2
      002E84 D0 03            [24]  918 	pop	ar3
      002E86 D0 04            [24]  919 	pop	ar4
      002E88 D0 05            [24]  920 	pop	ar5
                                    921 ;	calc.c:19: printf("% 11ld\t", d);
      002E8A C0 05            [24]  922 	push	ar5
      002E8C C0 04            [24]  923 	push	ar4
      002E8E C0 03            [24]  924 	push	ar3
      002E90 C0 02            [24]  925 	push	ar2
      002E92 C0 02            [24]  926 	push	ar2
      002E94 C0 03            [24]  927 	push	ar3
      002E96 C0 04            [24]  928 	push	ar4
      002E98 C0 05            [24]  929 	push	ar5
      002E9A 74 C2            [12]  930 	mov	a,#___str_1
      002E9C C0 E0            [24]  931 	push	acc
      002E9E 74 7E            [12]  932 	mov	a,#(___str_1 >> 8)
      002EA0 C0 E0            [24]  933 	push	acc
      002EA2 74 80            [12]  934 	mov	a,#0x80
      002EA4 C0 E0            [24]  935 	push	acc
      002EA6 12 66 01         [24]  936 	lcall	_printf
      002EA9 E5 81            [12]  937 	mov	a,sp
      002EAB 24 F9            [12]  938 	add	a,#0xf9
      002EAD F5 81            [12]  939 	mov	sp,a
      002EAF D0 02            [24]  940 	pop	ar2
      002EB1 D0 03            [24]  941 	pop	ar3
      002EB3 D0 04            [24]  942 	pop	ar4
      002EB5 D0 05            [24]  943 	pop	ar5
                                    944 ;	calc.c:20: printf("%011lo\t", d);
      002EB7 C0 05            [24]  945 	push	ar5
      002EB9 C0 04            [24]  946 	push	ar4
      002EBB C0 03            [24]  947 	push	ar3
      002EBD C0 02            [24]  948 	push	ar2
      002EBF C0 02            [24]  949 	push	ar2
      002EC1 C0 03            [24]  950 	push	ar3
      002EC3 C0 04            [24]  951 	push	ar4
      002EC5 C0 05            [24]  952 	push	ar5
      002EC7 74 CA            [12]  953 	mov	a,#___str_2
      002EC9 C0 E0            [24]  954 	push	acc
      002ECB 74 7E            [12]  955 	mov	a,#(___str_2 >> 8)
      002ECD C0 E0            [24]  956 	push	acc
      002ECF 74 80            [12]  957 	mov	a,#0x80
      002ED1 C0 E0            [24]  958 	push	acc
      002ED3 12 66 01         [24]  959 	lcall	_printf
      002ED6 E5 81            [12]  960 	mov	a,sp
      002ED8 24 F9            [12]  961 	add	a,#0xf9
      002EDA F5 81            [12]  962 	mov	sp,a
      002EDC D0 02            [24]  963 	pop	ar2
      002EDE D0 03            [24]  964 	pop	ar3
      002EE0 D0 04            [24]  965 	pop	ar4
      002EE2 D0 05            [24]  966 	pop	ar5
                                    967 ;	calc.c:21: print32bin(d);
      002EE4 8A 82            [24]  968 	mov	dpl,r2
      002EE6 8B 83            [24]  969 	mov	dph,r3
      002EE8 8C F0            [24]  970 	mov	b,r4
      002EEA ED               [12]  971 	mov	a,r5
      002EEB C0 04            [24]  972 	push	ar4
      002EED C0 03            [24]  973 	push	ar3
      002EEF C0 02            [24]  974 	push	ar2
      002EF1 12 5F 64         [24]  975 	lcall	_print32bin
                                    976 ;	calc.c:55: printstr("\r\n");
      002EF4 90 7E D2         [24]  977 	mov	dptr,#___str_3
      002EF7 75 F0 80         [24]  978 	mov	b,#0x80
      002EFA 12 5E F5         [24]  979 	lcall	_printstr
      002EFD D0 02            [24]  980 	pop	ar2
                                    981 ;	calc.c:56: r = stack_pop(ctx->ps, &d);
      002EFF E5 08            [12]  982 	mov	a,_bp
      002F01 24 07            [12]  983 	add	a,#0x07
      002F03 F8               [12]  984 	mov	r0,a
      002F04 E5 08            [12]  985 	mov	a,_bp
      002F06 24 08            [12]  986 	add	a,#0x08
      002F08 F9               [12]  987 	mov	r1,a
      002F09 E6               [12]  988 	mov	a,@r0
      002F0A F7               [12]  989 	mov	@r1,a
      002F0B 09               [12]  990 	inc	r1
      002F0C 77 00            [12]  991 	mov	@r1,#0x00
      002F0E 09               [12]  992 	inc	r1
      002F0F 77 40            [12]  993 	mov	@r1,#0x40
      002F11 A8 08            [24]  994 	mov	r0,_bp
      002F13 08               [12]  995 	inc	r0
      002F14 86 82            [24]  996 	mov	dpl,@r0
      002F16 08               [12]  997 	inc	r0
      002F17 86 83            [24]  998 	mov	dph,@r0
      002F19 08               [12]  999 	inc	r0
      002F1A 86 F0            [24] 1000 	mov	b,@r0
      002F1C 12 66 3A         [24] 1001 	lcall	__gptrget
      002F1F FA               [12] 1002 	mov	r2,a
      002F20 A3               [24] 1003 	inc	dptr
      002F21 12 66 3A         [24] 1004 	lcall	__gptrget
      002F24 FD               [12] 1005 	mov	r5,a
      002F25 A3               [24] 1006 	inc	dptr
      002F26 12 66 3A         [24] 1007 	lcall	__gptrget
      002F29 FE               [12] 1008 	mov	r6,a
      002F2A C0 02            [24] 1009 	push	ar2
      002F2C E5 08            [12] 1010 	mov	a,_bp
      002F2E 24 08            [12] 1011 	add	a,#0x08
      002F30 F8               [12] 1012 	mov	r0,a
      002F31 E6               [12] 1013 	mov	a,@r0
      002F32 C0 E0            [24] 1014 	push	acc
      002F34 08               [12] 1015 	inc	r0
      002F35 E6               [12] 1016 	mov	a,@r0
      002F36 C0 E0            [24] 1017 	push	acc
      002F38 08               [12] 1018 	inc	r0
      002F39 E6               [12] 1019 	mov	a,@r0
      002F3A C0 E0            [24] 1020 	push	acc
      002F3C 8A 82            [24] 1021 	mov	dpl,r2
      002F3E 8D 83            [24] 1022 	mov	dph,r5
      002F40 8E F0            [24] 1023 	mov	b,r6
      002F42 12 27 83         [24] 1024 	lcall	_stack_pop
      002F45 AE 82            [24] 1025 	mov	r6,dpl
      002F47 AD 83            [24] 1026 	mov	r5,dph
      002F49 15 81            [12] 1027 	dec	sp
      002F4B 15 81            [12] 1028 	dec	sp
      002F4D 15 81            [12] 1029 	dec	sp
      002F4F D0 02            [24] 1030 	pop	ar2
      002F51 D0 03            [24] 1031 	pop	ar3
      002F53 D0 04            [24] 1032 	pop	ar4
      002F55 D0 07            [24] 1033 	pop	ar7
      002F57 D0 04            [24] 1034 	pop	ar4
      002F59 D0 03            [24] 1035 	pop	ar3
      002F5B D0 02            [24] 1036 	pop	ar2
      002F5D 02 2D FB         [24] 1037 	ljmp	00105$
      002F60                       1038 00110$:
                                   1039 ;	calc.c:59: if (delta->event == EVENT_TERM) {
      002F60 8A 82            [24] 1040 	mov	dpl,r2
      002F62 8B 83            [24] 1041 	mov	dph,r3
      002F64 8C F0            [24] 1042 	mov	b,r4
      002F66 12 66 3A         [24] 1043 	lcall	__gptrget
      002F69 FA               [12] 1044 	mov	r2,a
      002F6A A3               [24] 1045 	inc	dptr
      002F6B 12 66 3A         [24] 1046 	lcall	__gptrget
      002F6E FB               [12] 1047 	mov	r3,a
      002F6F BA 08 05         [24] 1048 	cjne	r2,#0x08,00166$
      002F72 BB 00 02         [24] 1049 	cjne	r3,#0x00,00166$
      002F75 80 03            [24] 1050 	sjmp	00167$
      002F77                       1051 00166$:
      002F77 02 31 25         [24] 1052 	ljmp	00113$
      002F7A                       1053 00167$:
                                   1054 ;	calc.c:60: printstr("\r\n");
      002F7A 90 7E D2         [24] 1055 	mov	dptr,#___str_3
      002F7D 75 F0 80         [24] 1056 	mov	b,#0x80
      002F80 C0 07            [24] 1057 	push	ar7
      002F82 12 5E F5         [24] 1058 	lcall	_printstr
      002F85 D0 07            [24] 1059 	pop	ar7
                                   1060 ;	calc.c:61: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      002F87 8F 06            [24] 1061 	mov	ar6,r7
      002F89 E5 08            [12] 1062 	mov	a,_bp
      002F8B 24 04            [12] 1063 	add	a,#0x04
      002F8D F8               [12] 1064 	mov	r0,a
      002F8E A6 06            [24] 1065 	mov	@r0,ar6
      002F90 08               [12] 1066 	inc	r0
      002F91 76 00            [12] 1067 	mov	@r0,#0x00
      002F93 08               [12] 1068 	inc	r0
      002F94 76 40            [12] 1069 	mov	@r0,#0x40
      002F96 E5 08            [12] 1070 	mov	a,_bp
      002F98 24 0B            [12] 1071 	add	a,#0x0b
      002F9A F8               [12] 1072 	mov	r0,a
      002F9B E5 08            [12] 1073 	mov	a,_bp
      002F9D 24 08            [12] 1074 	add	a,#0x08
      002F9F F9               [12] 1075 	mov	r1,a
      002FA0 74 14            [12] 1076 	mov	a,#0x14
      002FA2 26               [12] 1077 	add	a,@r0
      002FA3 F7               [12] 1078 	mov	@r1,a
      002FA4 74 40            [12] 1079 	mov	a,#0x40
      002FA6 08               [12] 1080 	inc	r0
      002FA7 36               [12] 1081 	addc	a,@r0
      002FA8 09               [12] 1082 	inc	r1
      002FA9 F7               [12] 1083 	mov	@r1,a
      002FAA 08               [12] 1084 	inc	r0
      002FAB 09               [12] 1085 	inc	r1
      002FAC E6               [12] 1086 	mov	a,@r0
      002FAD F7               [12] 1087 	mov	@r1,a
      002FAE E5 08            [12] 1088 	mov	a,_bp
      002FB0 24 08            [12] 1089 	add	a,#0x08
      002FB2 F8               [12] 1090 	mov	r0,a
      002FB3 86 82            [24] 1091 	mov	dpl,@r0
      002FB5 08               [12] 1092 	inc	r0
      002FB6 86 83            [24] 1093 	mov	dph,@r0
      002FB8 08               [12] 1094 	inc	r0
      002FB9 86 F0            [24] 1095 	mov	b,@r0
      002FBB 12 66 3A         [24] 1096 	lcall	__gptrget
      002FBE FA               [12] 1097 	mov	r2,a
      002FBF A3               [24] 1098 	inc	dptr
      002FC0 12 66 3A         [24] 1099 	lcall	__gptrget
      002FC3 FB               [12] 1100 	mov	r3,a
      002FC4 A3               [24] 1101 	inc	dptr
      002FC5 12 66 3A         [24] 1102 	lcall	__gptrget
      002FC8 FE               [12] 1103 	mov	r6,a
      002FC9 C0 07            [24] 1104 	push	ar7
      002FCB E5 08            [12] 1105 	mov	a,_bp
      002FCD 24 04            [12] 1106 	add	a,#0x04
      002FCF F8               [12] 1107 	mov	r0,a
      002FD0 E6               [12] 1108 	mov	a,@r0
      002FD1 C0 E0            [24] 1109 	push	acc
      002FD3 08               [12] 1110 	inc	r0
      002FD4 E6               [12] 1111 	mov	a,@r0
      002FD5 C0 E0            [24] 1112 	push	acc
      002FD7 08               [12] 1113 	inc	r0
      002FD8 E6               [12] 1114 	mov	a,@r0
      002FD9 C0 E0            [24] 1115 	push	acc
      002FDB 8A 82            [24] 1116 	mov	dpl,r2
      002FDD 8B 83            [24] 1117 	mov	dph,r3
      002FDF 8E F0            [24] 1118 	mov	b,r6
      002FE1 12 27 83         [24] 1119 	lcall	_stack_pop
      002FE4 AD 82            [24] 1120 	mov	r5,dpl
      002FE6 AE 83            [24] 1121 	mov	r6,dph
      002FE8 15 81            [12] 1122 	dec	sp
      002FEA 15 81            [12] 1123 	dec	sp
      002FEC 15 81            [12] 1124 	dec	sp
      002FEE D0 07            [24] 1125 	pop	ar7
      002FF0 E5 08            [12] 1126 	mov	a,_bp
      002FF2 24 07            [12] 1127 	add	a,#0x07
      002FF4 F8               [12] 1128 	mov	r0,a
      002FF5 A6 07            [24] 1129 	mov	@r0,ar7
      002FF7                       1130 00117$:
      002FF7 C3               [12] 1131 	clr	c
      002FF8 E4               [12] 1132 	clr	a
      002FF9 9D               [12] 1133 	subb	a,r5
      002FFA 74 80            [12] 1134 	mov	a,#(0x00 ^ 0x80)
      002FFC 8E F0            [24] 1135 	mov	b,r6
      002FFE 63 F0 80         [24] 1136 	xrl	b,#0x80
      003001 95 F0            [12] 1137 	subb	a,b
      003003 40 03            [24] 1138 	jc	00168$
      003005 02 31 25         [24] 1139 	ljmp	00113$
      003008                       1140 00168$:
                                   1141 ;	calc.c:62: printstr("SSPA\t");
      003008 90 7E ED         [24] 1142 	mov	dptr,#___str_6
      00300B 75 F0 80         [24] 1143 	mov	b,#0x80
      00300E 12 5E F5         [24] 1144 	lcall	_printstr
                                   1145 ;	calc.c:63: printall(d);
      003011 E5 08            [12] 1146 	mov	a,_bp
      003013 24 0E            [12] 1147 	add	a,#0x0e
      003015 F8               [12] 1148 	mov	r0,a
      003016 E5 08            [12] 1149 	mov	a,_bp
      003018 24 12            [12] 1150 	add	a,#0x12
      00301A F9               [12] 1151 	mov	r1,a
      00301B E6               [12] 1152 	mov	a,@r0
      00301C F7               [12] 1153 	mov	@r1,a
      00301D 08               [12] 1154 	inc	r0
      00301E 09               [12] 1155 	inc	r1
      00301F E6               [12] 1156 	mov	a,@r0
      003020 F7               [12] 1157 	mov	@r1,a
      003021 08               [12] 1158 	inc	r0
      003022 09               [12] 1159 	inc	r1
      003023 E6               [12] 1160 	mov	a,@r0
      003024 F7               [12] 1161 	mov	@r1,a
      003025 08               [12] 1162 	inc	r0
      003026 09               [12] 1163 	inc	r1
      003027 E6               [12] 1164 	mov	a,@r0
      003028 F7               [12] 1165 	mov	@r1,a
      003029 E5 08            [12] 1166 	mov	a,_bp
      00302B 24 12            [12] 1167 	add	a,#0x12
      00302D F8               [12] 1168 	mov	r0,a
      00302E 86 02            [24] 1169 	mov	ar2,@r0
      003030 08               [12] 1170 	inc	r0
      003031 86 03            [24] 1171 	mov	ar3,@r0
      003033 08               [12] 1172 	inc	r0
      003034 86 04            [24] 1173 	mov	ar4,@r0
      003036 08               [12] 1174 	inc	r0
      003037 86 07            [24] 1175 	mov	ar7,@r0
                                   1176 ;	calc.c:18: printf("%08lx\t", d);
      003039 C0 07            [24] 1177 	push	ar7
      00303B C0 04            [24] 1178 	push	ar4
      00303D C0 03            [24] 1179 	push	ar3
      00303F C0 02            [24] 1180 	push	ar2
      003041 E5 08            [12] 1181 	mov	a,_bp
      003043 24 12            [12] 1182 	add	a,#0x12
      003045 F8               [12] 1183 	mov	r0,a
      003046 E6               [12] 1184 	mov	a,@r0
      003047 C0 E0            [24] 1185 	push	acc
      003049 08               [12] 1186 	inc	r0
      00304A E6               [12] 1187 	mov	a,@r0
      00304B C0 E0            [24] 1188 	push	acc
      00304D 08               [12] 1189 	inc	r0
      00304E E6               [12] 1190 	mov	a,@r0
      00304F C0 E0            [24] 1191 	push	acc
      003051 08               [12] 1192 	inc	r0
      003052 E6               [12] 1193 	mov	a,@r0
      003053 C0 E0            [24] 1194 	push	acc
      003055 74 BB            [12] 1195 	mov	a,#___str_0
      003057 C0 E0            [24] 1196 	push	acc
      003059 74 7E            [12] 1197 	mov	a,#(___str_0 >> 8)
      00305B C0 E0            [24] 1198 	push	acc
      00305D 74 80            [12] 1199 	mov	a,#0x80
      00305F C0 E0            [24] 1200 	push	acc
      003061 12 66 01         [24] 1201 	lcall	_printf
      003064 E5 81            [12] 1202 	mov	a,sp
      003066 24 F9            [12] 1203 	add	a,#0xf9
      003068 F5 81            [12] 1204 	mov	sp,a
      00306A D0 02            [24] 1205 	pop	ar2
      00306C D0 03            [24] 1206 	pop	ar3
      00306E D0 04            [24] 1207 	pop	ar4
      003070 D0 07            [24] 1208 	pop	ar7
                                   1209 ;	calc.c:19: printf("% 11ld\t", d);
      003072 C0 07            [24] 1210 	push	ar7
      003074 C0 04            [24] 1211 	push	ar4
      003076 C0 03            [24] 1212 	push	ar3
      003078 C0 02            [24] 1213 	push	ar2
      00307A C0 02            [24] 1214 	push	ar2
      00307C C0 03            [24] 1215 	push	ar3
      00307E C0 04            [24] 1216 	push	ar4
      003080 C0 07            [24] 1217 	push	ar7
      003082 74 C2            [12] 1218 	mov	a,#___str_1
      003084 C0 E0            [24] 1219 	push	acc
      003086 74 7E            [12] 1220 	mov	a,#(___str_1 >> 8)
      003088 C0 E0            [24] 1221 	push	acc
      00308A 74 80            [12] 1222 	mov	a,#0x80
      00308C C0 E0            [24] 1223 	push	acc
      00308E 12 66 01         [24] 1224 	lcall	_printf
      003091 E5 81            [12] 1225 	mov	a,sp
      003093 24 F9            [12] 1226 	add	a,#0xf9
      003095 F5 81            [12] 1227 	mov	sp,a
      003097 D0 02            [24] 1228 	pop	ar2
      003099 D0 03            [24] 1229 	pop	ar3
      00309B D0 04            [24] 1230 	pop	ar4
      00309D D0 07            [24] 1231 	pop	ar7
                                   1232 ;	calc.c:20: printf("%011lo\t", d);
      00309F C0 07            [24] 1233 	push	ar7
      0030A1 C0 04            [24] 1234 	push	ar4
      0030A3 C0 03            [24] 1235 	push	ar3
      0030A5 C0 02            [24] 1236 	push	ar2
      0030A7 C0 02            [24] 1237 	push	ar2
      0030A9 C0 03            [24] 1238 	push	ar3
      0030AB C0 04            [24] 1239 	push	ar4
      0030AD C0 07            [24] 1240 	push	ar7
      0030AF 74 CA            [12] 1241 	mov	a,#___str_2
      0030B1 C0 E0            [24] 1242 	push	acc
      0030B3 74 7E            [12] 1243 	mov	a,#(___str_2 >> 8)
      0030B5 C0 E0            [24] 1244 	push	acc
      0030B7 74 80            [12] 1245 	mov	a,#0x80
      0030B9 C0 E0            [24] 1246 	push	acc
      0030BB 12 66 01         [24] 1247 	lcall	_printf
      0030BE E5 81            [12] 1248 	mov	a,sp
      0030C0 24 F9            [12] 1249 	add	a,#0xf9
      0030C2 F5 81            [12] 1250 	mov	sp,a
      0030C4 D0 02            [24] 1251 	pop	ar2
      0030C6 D0 03            [24] 1252 	pop	ar3
      0030C8 D0 04            [24] 1253 	pop	ar4
      0030CA D0 07            [24] 1254 	pop	ar7
                                   1255 ;	calc.c:21: print32bin(d);
      0030CC 8A 82            [24] 1256 	mov	dpl,r2
      0030CE 8B 83            [24] 1257 	mov	dph,r3
      0030D0 8C F0            [24] 1258 	mov	b,r4
      0030D2 EF               [12] 1259 	mov	a,r7
      0030D3 12 5F 64         [24] 1260 	lcall	_print32bin
                                   1261 ;	calc.c:64: printstr("\r\n");
      0030D6 90 7E D2         [24] 1262 	mov	dptr,#___str_3
      0030D9 75 F0 80         [24] 1263 	mov	b,#0x80
      0030DC 12 5E F5         [24] 1264 	lcall	_printstr
                                   1265 ;	calc.c:61: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      0030DF E5 08            [12] 1266 	mov	a,_bp
      0030E1 24 07            [12] 1267 	add	a,#0x07
      0030E3 F8               [12] 1268 	mov	r0,a
      0030E4 86 06            [24] 1269 	mov	ar6,@r0
      0030E6 7D 00            [12] 1270 	mov	r5,#0x00
      0030E8 7B 40            [12] 1271 	mov	r3,#0x40
      0030EA E5 08            [12] 1272 	mov	a,_bp
      0030EC 24 08            [12] 1273 	add	a,#0x08
      0030EE F8               [12] 1274 	mov	r0,a
      0030EF 86 82            [24] 1275 	mov	dpl,@r0
      0030F1 08               [12] 1276 	inc	r0
      0030F2 86 83            [24] 1277 	mov	dph,@r0
      0030F4 08               [12] 1278 	inc	r0
      0030F5 86 F0            [24] 1279 	mov	b,@r0
      0030F7 12 66 3A         [24] 1280 	lcall	__gptrget
      0030FA FA               [12] 1281 	mov	r2,a
      0030FB A3               [24] 1282 	inc	dptr
      0030FC 12 66 3A         [24] 1283 	lcall	__gptrget
      0030FF FC               [12] 1284 	mov	r4,a
      003100 A3               [24] 1285 	inc	dptr
      003101 12 66 3A         [24] 1286 	lcall	__gptrget
      003104 FF               [12] 1287 	mov	r7,a
      003105 C0 06            [24] 1288 	push	ar6
      003107 C0 05            [24] 1289 	push	ar5
      003109 C0 03            [24] 1290 	push	ar3
      00310B 8A 82            [24] 1291 	mov	dpl,r2
      00310D 8C 83            [24] 1292 	mov	dph,r4
      00310F 8F F0            [24] 1293 	mov	b,r7
      003111 12 27 83         [24] 1294 	lcall	_stack_pop
      003114 AC 82            [24] 1295 	mov	r4,dpl
      003116 AF 83            [24] 1296 	mov	r7,dph
      003118 15 81            [12] 1297 	dec	sp
      00311A 15 81            [12] 1298 	dec	sp
      00311C 15 81            [12] 1299 	dec	sp
      00311E 8C 05            [24] 1300 	mov	ar5,r4
      003120 8F 06            [24] 1301 	mov	ar6,r7
      003122 02 2F F7         [24] 1302 	ljmp	00117$
      003125                       1303 00113$:
                                   1304 ;	calc.c:68: return 1;
      003125 90 00 01         [24] 1305 	mov	dptr,#0x0001
                                   1306 ;	calc.c:69: }
      003128 85 08 81         [24] 1307 	mov	sp,_bp
      00312B D0 08            [24] 1308 	pop	_bp
      00312D 22               [24] 1309 	ret
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
      00312E                       1322 _dump_peek:
      00312E C0 08            [24] 1323 	push	_bp
      003130 85 81 08         [24] 1324 	mov	_bp,sp
                                   1325 ;	calc.c:74: printstr("PSVA\t");
      003133 90 7E F3         [24] 1326 	mov	dptr,#___str_7
      003136 75 F0 80         [24] 1327 	mov	b,#0x80
      003139 12 5E F5         [24] 1328 	lcall	_printstr
                                   1329 ;	calc.c:75: printall(d);
      00313C E5 08            [12] 1330 	mov	a,_bp
      00313E 24 FA            [12] 1331 	add	a,#0xfa
      003140 F8               [12] 1332 	mov	r0,a
      003141 86 04            [24] 1333 	mov	ar4,@r0
      003143 08               [12] 1334 	inc	r0
      003144 86 05            [24] 1335 	mov	ar5,@r0
      003146 08               [12] 1336 	inc	r0
      003147 86 06            [24] 1337 	mov	ar6,@r0
      003149 08               [12] 1338 	inc	r0
      00314A 86 07            [24] 1339 	mov	ar7,@r0
                                   1340 ;	calc.c:18: printf("%08lx\t", d);
      00314C C0 07            [24] 1341 	push	ar7
      00314E C0 06            [24] 1342 	push	ar6
      003150 C0 05            [24] 1343 	push	ar5
      003152 C0 04            [24] 1344 	push	ar4
      003154 C0 04            [24] 1345 	push	ar4
      003156 C0 05            [24] 1346 	push	ar5
      003158 C0 06            [24] 1347 	push	ar6
      00315A C0 07            [24] 1348 	push	ar7
      00315C 74 BB            [12] 1349 	mov	a,#___str_0
      00315E C0 E0            [24] 1350 	push	acc
      003160 74 7E            [12] 1351 	mov	a,#(___str_0 >> 8)
      003162 C0 E0            [24] 1352 	push	acc
      003164 74 80            [12] 1353 	mov	a,#0x80
      003166 C0 E0            [24] 1354 	push	acc
      003168 12 66 01         [24] 1355 	lcall	_printf
      00316B E5 81            [12] 1356 	mov	a,sp
      00316D 24 F9            [12] 1357 	add	a,#0xf9
      00316F F5 81            [12] 1358 	mov	sp,a
      003171 D0 04            [24] 1359 	pop	ar4
      003173 D0 05            [24] 1360 	pop	ar5
      003175 D0 06            [24] 1361 	pop	ar6
      003177 D0 07            [24] 1362 	pop	ar7
                                   1363 ;	calc.c:19: printf("% 11ld\t", d);
      003179 C0 07            [24] 1364 	push	ar7
      00317B C0 06            [24] 1365 	push	ar6
      00317D C0 05            [24] 1366 	push	ar5
      00317F C0 04            [24] 1367 	push	ar4
      003181 C0 04            [24] 1368 	push	ar4
      003183 C0 05            [24] 1369 	push	ar5
      003185 C0 06            [24] 1370 	push	ar6
      003187 C0 07            [24] 1371 	push	ar7
      003189 74 C2            [12] 1372 	mov	a,#___str_1
      00318B C0 E0            [24] 1373 	push	acc
      00318D 74 7E            [12] 1374 	mov	a,#(___str_1 >> 8)
      00318F C0 E0            [24] 1375 	push	acc
      003191 74 80            [12] 1376 	mov	a,#0x80
      003193 C0 E0            [24] 1377 	push	acc
      003195 12 66 01         [24] 1378 	lcall	_printf
      003198 E5 81            [12] 1379 	mov	a,sp
      00319A 24 F9            [12] 1380 	add	a,#0xf9
      00319C F5 81            [12] 1381 	mov	sp,a
      00319E D0 04            [24] 1382 	pop	ar4
      0031A0 D0 05            [24] 1383 	pop	ar5
      0031A2 D0 06            [24] 1384 	pop	ar6
      0031A4 D0 07            [24] 1385 	pop	ar7
                                   1386 ;	calc.c:20: printf("%011lo\t", d);
      0031A6 C0 07            [24] 1387 	push	ar7
      0031A8 C0 06            [24] 1388 	push	ar6
      0031AA C0 05            [24] 1389 	push	ar5
      0031AC C0 04            [24] 1390 	push	ar4
      0031AE C0 04            [24] 1391 	push	ar4
      0031B0 C0 05            [24] 1392 	push	ar5
      0031B2 C0 06            [24] 1393 	push	ar6
      0031B4 C0 07            [24] 1394 	push	ar7
      0031B6 74 CA            [12] 1395 	mov	a,#___str_2
      0031B8 C0 E0            [24] 1396 	push	acc
      0031BA 74 7E            [12] 1397 	mov	a,#(___str_2 >> 8)
      0031BC C0 E0            [24] 1398 	push	acc
      0031BE 74 80            [12] 1399 	mov	a,#0x80
      0031C0 C0 E0            [24] 1400 	push	acc
      0031C2 12 66 01         [24] 1401 	lcall	_printf
      0031C5 E5 81            [12] 1402 	mov	a,sp
      0031C7 24 F9            [12] 1403 	add	a,#0xf9
      0031C9 F5 81            [12] 1404 	mov	sp,a
      0031CB D0 04            [24] 1405 	pop	ar4
      0031CD D0 05            [24] 1406 	pop	ar5
      0031CF D0 06            [24] 1407 	pop	ar6
      0031D1 D0 07            [24] 1408 	pop	ar7
                                   1409 ;	calc.c:21: print32bin(d);
      0031D3 8C 82            [24] 1410 	mov	dpl,r4
      0031D5 8D 83            [24] 1411 	mov	dph,r5
      0031D7 8E F0            [24] 1412 	mov	b,r6
      0031D9 EF               [12] 1413 	mov	a,r7
      0031DA 12 5F 64         [24] 1414 	lcall	_print32bin
                                   1415 ;	calc.c:76: printstr("\r\n");
      0031DD 90 7E D2         [24] 1416 	mov	dptr,#___str_3
      0031E0 75 F0 80         [24] 1417 	mov	b,#0x80
      0031E3 12 5E F5         [24] 1418 	lcall	_printstr
                                   1419 ;	calc.c:78: return 1;
      0031E6 90 00 01         [24] 1420 	mov	dptr,#0x0001
                                   1421 ;	calc.c:79: }
      0031E9 D0 08            [24] 1422 	pop	_bp
      0031EB 22               [24] 1423 	ret
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
      0031EC                       1449 _operator:
      0031EC C0 08            [24] 1450 	push	_bp
      0031EE E5 81            [12] 1451 	mov	a,sp
      0031F0 F5 08            [12] 1452 	mov	_bp,a
      0031F2 24 25            [12] 1453 	add	a,#0x25
      0031F4 F5 81            [12] 1454 	mov	sp,a
      0031F6 AA 82            [24] 1455 	mov	r2,dpl
      0031F8 AB 83            [24] 1456 	mov	r3,dph
      0031FA AC F0            [24] 1457 	mov	r4,b
                                   1458 ;	calc.c:82: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      0031FC E5 08            [12] 1459 	mov	a,_bp
      0031FE 24 17            [12] 1460 	add	a,#0x17
      003200 F8               [12] 1461 	mov	r0,a
      003201 A6 02            [24] 1462 	mov	@r0,ar2
      003203 08               [12] 1463 	inc	r0
      003204 A6 03            [24] 1464 	mov	@r0,ar3
      003206 08               [12] 1465 	inc	r0
      003207 A6 04            [24] 1466 	mov	@r0,ar4
                                   1467 ;	calc.c:86: switch (ctx->digit[0]) {
      003209 E5 08            [12] 1468 	mov	a,_bp
      00320B 24 17            [12] 1469 	add	a,#0x17
      00320D F8               [12] 1470 	mov	r0,a
      00320E 74 07            [12] 1471 	mov	a,#0x07
      003210 26               [12] 1472 	add	a,@r0
      003211 FD               [12] 1473 	mov	r5,a
      003212 E4               [12] 1474 	clr	a
      003213 08               [12] 1475 	inc	r0
      003214 36               [12] 1476 	addc	a,@r0
      003215 FE               [12] 1477 	mov	r6,a
      003216 08               [12] 1478 	inc	r0
      003217 86 07            [24] 1479 	mov	ar7,@r0
      003219 8D 82            [24] 1480 	mov	dpl,r5
      00321B 8E 83            [24] 1481 	mov	dph,r6
      00321D 8F F0            [24] 1482 	mov	b,r7
      00321F A8 08            [24] 1483 	mov	r0,_bp
      003221 08               [12] 1484 	inc	r0
      003222 12 66 3A         [24] 1485 	lcall	__gptrget
      003225 F6               [12] 1486 	mov	@r0,a
      003226 A8 08            [24] 1487 	mov	r0,_bp
      003228 08               [12] 1488 	inc	r0
      003229 B6 23 03         [24] 1489 	cjne	@r0,#0x23,00526$
      00322C 02 43 8A         [24] 1490 	ljmp	00189$
      00322F                       1491 00526$:
      00322F A8 08            [24] 1492 	mov	r0,_bp
      003231 08               [12] 1493 	inc	r0
      003232 B6 25 03         [24] 1494 	cjne	@r0,#0x25,00527$
      003235 02 43 8A         [24] 1495 	ljmp	00189$
      003238                       1496 00527$:
      003238 A8 08            [24] 1497 	mov	r0,_bp
      00323A 08               [12] 1498 	inc	r0
      00323B B6 26 03         [24] 1499 	cjne	@r0,#0x26,00528$
      00323E 02 46 25         [24] 1500 	ljmp	00202$
      003241                       1501 00528$:
      003241 A8 08            [24] 1502 	mov	r0,_bp
      003243 08               [12] 1503 	inc	r0
      003244 B6 2A 03         [24] 1504 	cjne	@r0,#0x2a,00529$
      003247 02 3F 77         [24] 1505 	ljmp	00167$
      00324A                       1506 00529$:
      00324A A8 08            [24] 1507 	mov	r0,_bp
      00324C 08               [12] 1508 	inc	r0
      00324D B6 2B 03         [24] 1509 	cjne	@r0,#0x2b,00530$
      003250 02 3C DC         [24] 1510 	ljmp	00153$
      003253                       1511 00530$:
      003253 A8 08            [24] 1512 	mov	r0,_bp
      003255 08               [12] 1513 	inc	r0
      003256 B6 2D 03         [24] 1514 	cjne	@r0,#0x2d,00531$
      003259 02 3E 29         [24] 1515 	ljmp	00160$
      00325C                       1516 00531$:
      00325C A8 08            [24] 1517 	mov	r0,_bp
      00325E 08               [12] 1518 	inc	r0
      00325F B6 2E 03         [24] 1519 	cjne	@r0,#0x2e,00532$
      003262 02 34 96         [24] 1520 	ljmp	00109$
      003265                       1521 00532$:
      003265 A8 08            [24] 1522 	mov	r0,_bp
      003267 08               [12] 1523 	inc	r0
      003268 B6 2F 03         [24] 1524 	cjne	@r0,#0x2f,00533$
      00326B 02 40 EB         [24] 1525 	ljmp	00175$
      00326E                       1526 00533$:
      00326E A8 08            [24] 1527 	mov	r0,_bp
      003270 08               [12] 1528 	inc	r0
      003271 B6 3C 03         [24] 1529 	cjne	@r0,#0x3c,00534$
      003274 02 4D 46         [24] 1530 	ljmp	00237$
      003277                       1531 00534$:
      003277 A8 08            [24] 1532 	mov	r0,_bp
      003279 08               [12] 1533 	inc	r0
      00327A B6 3E 03         [24] 1534 	cjne	@r0,#0x3e,00535$
      00327D 02 4A 5D         [24] 1535 	ljmp	00223$
      003280                       1536 00535$:
      003280 A8 08            [24] 1537 	mov	r0,_bp
      003282 08               [12] 1538 	inc	r0
      003283 B6 4D 03         [24] 1539 	cjne	@r0,#0x4d,00536$
      003286 02 38 4D         [24] 1540 	ljmp	00127$
      003289                       1541 00536$:
      003289 A8 08            [24] 1542 	mov	r0,_bp
      00328B 08               [12] 1543 	inc	r0
      00328C B6 50 03         [24] 1544 	cjne	@r0,#0x50,00537$
      00328F 02 35 AB         [24] 1545 	ljmp	00113$
      003292                       1546 00537$:
      003292 A8 08            [24] 1547 	mov	r0,_bp
      003294 08               [12] 1548 	inc	r0
      003295 B6 54 03         [24] 1549 	cjne	@r0,#0x54,00538$
      003298 02 3A B9         [24] 1550 	ljmp	00145$
      00329B                       1551 00538$:
      00329B A8 08            [24] 1552 	mov	r0,_bp
      00329D 08               [12] 1553 	inc	r0
      00329E B6 55 03         [24] 1554 	cjne	@r0,#0x55,00539$
      0032A1 02 3A 04         [24] 1555 	ljmp	00139$
      0032A4                       1556 00539$:
      0032A4 A8 08            [24] 1557 	mov	r0,_bp
      0032A6 08               [12] 1558 	inc	r0
      0032A7 B6 56 03         [24] 1559 	cjne	@r0,#0x56,00540$
      0032AA 02 34 27         [24] 1560 	ljmp	00105$
      0032AD                       1561 00540$:
      0032AD A8 08            [24] 1562 	mov	r0,_bp
      0032AF 08               [12] 1563 	inc	r0
      0032B0 B6 58 03         [24] 1564 	cjne	@r0,#0x58,00541$
      0032B3 02 3C 3D         [24] 1565 	ljmp	00152$
      0032B6                       1566 00541$:
      0032B6 A8 08            [24] 1567 	mov	r0,_bp
      0032B8 08               [12] 1568 	inc	r0
      0032B9 B6 5C 03         [24] 1569 	cjne	@r0,#0x5c,00542$
      0032BC 02 40 EB         [24] 1570 	ljmp	00175$
      0032BF                       1571 00542$:
      0032BF A8 08            [24] 1572 	mov	r0,_bp
      0032C1 08               [12] 1573 	inc	r0
      0032C2 B6 5D 03         [24] 1574 	cjne	@r0,#0x5d,00543$
      0032C5 02 4B C9         [24] 1575 	ljmp	00230$
      0032C8                       1576 00543$:
      0032C8 A8 08            [24] 1577 	mov	r0,_bp
      0032CA 08               [12] 1578 	inc	r0
      0032CB B6 5E 03         [24] 1579 	cjne	@r0,#0x5e,00544$
      0032CE 02 48 F5         [24] 1580 	ljmp	00216$
      0032D1                       1581 00544$:
      0032D1 A8 08            [24] 1582 	mov	r0,_bp
      0032D3 08               [12] 1583 	inc	r0
      0032D4 B6 6D 03         [24] 1584 	cjne	@r0,#0x6d,00545$
      0032D7 02 37 4B         [24] 1585 	ljmp	00121$
      0032DA                       1586 00545$:
      0032DA A8 08            [24] 1587 	mov	r0,_bp
      0032DC 08               [12] 1588 	inc	r0
      0032DD B6 70 03         [24] 1589 	cjne	@r0,#0x70,00546$
      0032E0 02 34 96         [24] 1590 	ljmp	00109$
      0032E3                       1591 00546$:
      0032E3 A8 08            [24] 1592 	mov	r0,_bp
      0032E5 08               [12] 1593 	inc	r0
      0032E6 B6 75 03         [24] 1594 	cjne	@r0,#0x75,00547$
      0032E9 02 39 4F         [24] 1595 	ljmp	00133$
      0032EC                       1596 00547$:
      0032EC A8 08            [24] 1597 	mov	r0,_bp
      0032EE 08               [12] 1598 	inc	r0
      0032EF B6 76 02         [24] 1599 	cjne	@r0,#0x76,00548$
      0032F2 80 1E            [24] 1600 	sjmp	00101$
      0032F4                       1601 00548$:
      0032F4 A8 08            [24] 1602 	mov	r0,_bp
      0032F6 08               [12] 1603 	inc	r0
      0032F7 B6 78 03         [24] 1604 	cjne	@r0,#0x78,00549$
      0032FA 02 35 E2         [24] 1605 	ljmp	00114$
      0032FD                       1606 00549$:
      0032FD A8 08            [24] 1607 	mov	r0,_bp
      0032FF 08               [12] 1608 	inc	r0
      003300 B6 7C 03         [24] 1609 	cjne	@r0,#0x7c,00550$
      003303 02 47 8D         [24] 1610 	ljmp	00209$
      003306                       1611 00550$:
      003306 A8 08            [24] 1612 	mov	r0,_bp
      003308 08               [12] 1613 	inc	r0
      003309 B6 7E 03         [24] 1614 	cjne	@r0,#0x7e,00551$
      00330C 02 4E B7         [24] 1615 	ljmp	00244$
      00330F                       1616 00551$:
      00330F 02 4F 79         [24] 1617 	ljmp	00248$
                                   1618 ;	calc.c:87: case 'v':
      003312                       1619 00101$:
                                   1620 ;	calc.c:88: printstr("\r\n");
      003312 90 7E D2         [24] 1621 	mov	dptr,#___str_3
      003315 75 F0 80         [24] 1622 	mov	b,#0x80
      003318 12 5E F5         [24] 1623 	lcall	_printstr
                                   1624 ;	calc.c:89: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      00331B E5 08            [12] 1625 	mov	a,_bp
      00331D 24 1A            [12] 1626 	add	a,#0x1a
      00331F FF               [12] 1627 	mov	r7,a
      003320 7E 00            [12] 1628 	mov	r6,#0x00
      003322 7D 40            [12] 1629 	mov	r5,#0x40
      003324 E5 08            [12] 1630 	mov	a,_bp
      003326 24 17            [12] 1631 	add	a,#0x17
      003328 F8               [12] 1632 	mov	r0,a
      003329 74 11            [12] 1633 	mov	a,#0x11
      00332B 26               [12] 1634 	add	a,@r0
      00332C FA               [12] 1635 	mov	r2,a
      00332D ED               [12] 1636 	mov	a,r5
      00332E 08               [12] 1637 	inc	r0
      00332F 36               [12] 1638 	addc	a,@r0
      003330 FB               [12] 1639 	mov	r3,a
      003331 08               [12] 1640 	inc	r0
      003332 86 04            [24] 1641 	mov	ar4,@r0
      003334 8A 82            [24] 1642 	mov	dpl,r2
      003336 8B 83            [24] 1643 	mov	dph,r3
      003338 8C F0            [24] 1644 	mov	b,r4
      00333A 12 66 3A         [24] 1645 	lcall	__gptrget
      00333D FA               [12] 1646 	mov	r2,a
      00333E A3               [24] 1647 	inc	dptr
      00333F 12 66 3A         [24] 1648 	lcall	__gptrget
      003342 FB               [12] 1649 	mov	r3,a
      003343 A3               [24] 1650 	inc	dptr
      003344 12 66 3A         [24] 1651 	lcall	__gptrget
      003347 FC               [12] 1652 	mov	r4,a
      003348 C0 07            [24] 1653 	push	ar7
      00334A C0 06            [24] 1654 	push	ar6
      00334C C0 05            [24] 1655 	push	ar5
      00334E 8A 82            [24] 1656 	mov	dpl,r2
      003350 8B 83            [24] 1657 	mov	dph,r3
      003352 8C F0            [24] 1658 	mov	b,r4
      003354 12 28 5E         [24] 1659 	lcall	_stack_peek
      003357 AB 82            [24] 1660 	mov	r3,dpl
      003359 AC 83            [24] 1661 	mov	r4,dph
      00335B 15 81            [12] 1662 	dec	sp
      00335D 15 81            [12] 1663 	dec	sp
      00335F 15 81            [12] 1664 	dec	sp
      003361 EB               [12] 1665 	mov	a,r3
      003362 4C               [12] 1666 	orl	a,r4
      003363 70 0C            [24] 1667 	jnz	00103$
      003365 90 7E D5         [24] 1668 	mov	dptr,#___str_4
      003368 75 F0 80         [24] 1669 	mov	b,#0x80
      00336B 12 5E F5         [24] 1670 	lcall	_printstr
      00336E 02 4F 7E         [24] 1671 	ljmp	00249$
      003371                       1672 00103$:
                                   1673 ;	calc.c:91: printstr("PSVTOP\t");
      003371 90 7E F9         [24] 1674 	mov	dptr,#___str_8
      003374 75 F0 80         [24] 1675 	mov	b,#0x80
      003377 12 5E F5         [24] 1676 	lcall	_printstr
                                   1677 ;	calc.c:92: printall(d0);
      00337A E5 08            [12] 1678 	mov	a,_bp
      00337C 24 1A            [12] 1679 	add	a,#0x1a
      00337E F8               [12] 1680 	mov	r0,a
      00337F 86 07            [24] 1681 	mov	ar7,@r0
      003381 08               [12] 1682 	inc	r0
      003382 86 06            [24] 1683 	mov	ar6,@r0
      003384 08               [12] 1684 	inc	r0
      003385 86 05            [24] 1685 	mov	ar5,@r0
      003387 08               [12] 1686 	inc	r0
      003388 86 04            [24] 1687 	mov	ar4,@r0
      00338A E5 08            [12] 1688 	mov	a,_bp
      00338C 24 22            [12] 1689 	add	a,#0x22
      00338E F8               [12] 1690 	mov	r0,a
      00338F A6 07            [24] 1691 	mov	@r0,ar7
      003391 08               [12] 1692 	inc	r0
      003392 A6 06            [24] 1693 	mov	@r0,ar6
      003394 08               [12] 1694 	inc	r0
      003395 A6 05            [24] 1695 	mov	@r0,ar5
      003397 08               [12] 1696 	inc	r0
      003398 A6 04            [24] 1697 	mov	@r0,ar4
                                   1698 ;	calc.c:18: printf("%08lx\t", d);
      00339A C0 07            [24] 1699 	push	ar7
      00339C C0 06            [24] 1700 	push	ar6
      00339E C0 05            [24] 1701 	push	ar5
      0033A0 C0 04            [24] 1702 	push	ar4
      0033A2 74 BB            [12] 1703 	mov	a,#___str_0
      0033A4 C0 E0            [24] 1704 	push	acc
      0033A6 74 7E            [12] 1705 	mov	a,#(___str_0 >> 8)
      0033A8 C0 E0            [24] 1706 	push	acc
      0033AA 74 80            [12] 1707 	mov	a,#0x80
      0033AC C0 E0            [24] 1708 	push	acc
      0033AE 12 66 01         [24] 1709 	lcall	_printf
      0033B1 E5 81            [12] 1710 	mov	a,sp
      0033B3 24 F9            [12] 1711 	add	a,#0xf9
      0033B5 F5 81            [12] 1712 	mov	sp,a
                                   1713 ;	calc.c:19: printf("% 11ld\t", d);
      0033B7 E5 08            [12] 1714 	mov	a,_bp
      0033B9 24 22            [12] 1715 	add	a,#0x22
      0033BB F8               [12] 1716 	mov	r0,a
      0033BC E6               [12] 1717 	mov	a,@r0
      0033BD C0 E0            [24] 1718 	push	acc
      0033BF 08               [12] 1719 	inc	r0
      0033C0 E6               [12] 1720 	mov	a,@r0
      0033C1 C0 E0            [24] 1721 	push	acc
      0033C3 08               [12] 1722 	inc	r0
      0033C4 E6               [12] 1723 	mov	a,@r0
      0033C5 C0 E0            [24] 1724 	push	acc
      0033C7 08               [12] 1725 	inc	r0
      0033C8 E6               [12] 1726 	mov	a,@r0
      0033C9 C0 E0            [24] 1727 	push	acc
      0033CB 74 C2            [12] 1728 	mov	a,#___str_1
      0033CD C0 E0            [24] 1729 	push	acc
      0033CF 74 7E            [12] 1730 	mov	a,#(___str_1 >> 8)
      0033D1 C0 E0            [24] 1731 	push	acc
      0033D3 74 80            [12] 1732 	mov	a,#0x80
      0033D5 C0 E0            [24] 1733 	push	acc
      0033D7 12 66 01         [24] 1734 	lcall	_printf
      0033DA E5 81            [12] 1735 	mov	a,sp
      0033DC 24 F9            [12] 1736 	add	a,#0xf9
      0033DE F5 81            [12] 1737 	mov	sp,a
                                   1738 ;	calc.c:20: printf("%011lo\t", d);
      0033E0 E5 08            [12] 1739 	mov	a,_bp
      0033E2 24 22            [12] 1740 	add	a,#0x22
      0033E4 F8               [12] 1741 	mov	r0,a
      0033E5 E6               [12] 1742 	mov	a,@r0
      0033E6 C0 E0            [24] 1743 	push	acc
      0033E8 08               [12] 1744 	inc	r0
      0033E9 E6               [12] 1745 	mov	a,@r0
      0033EA C0 E0            [24] 1746 	push	acc
      0033EC 08               [12] 1747 	inc	r0
      0033ED E6               [12] 1748 	mov	a,@r0
      0033EE C0 E0            [24] 1749 	push	acc
      0033F0 08               [12] 1750 	inc	r0
      0033F1 E6               [12] 1751 	mov	a,@r0
      0033F2 C0 E0            [24] 1752 	push	acc
      0033F4 74 CA            [12] 1753 	mov	a,#___str_2
      0033F6 C0 E0            [24] 1754 	push	acc
      0033F8 74 7E            [12] 1755 	mov	a,#(___str_2 >> 8)
      0033FA C0 E0            [24] 1756 	push	acc
      0033FC 74 80            [12] 1757 	mov	a,#0x80
      0033FE C0 E0            [24] 1758 	push	acc
      003400 12 66 01         [24] 1759 	lcall	_printf
      003403 E5 81            [12] 1760 	mov	a,sp
      003405 24 F9            [12] 1761 	add	a,#0xf9
      003407 F5 81            [12] 1762 	mov	sp,a
                                   1763 ;	calc.c:21: print32bin(d);
      003409 E5 08            [12] 1764 	mov	a,_bp
      00340B 24 22            [12] 1765 	add	a,#0x22
      00340D F8               [12] 1766 	mov	r0,a
      00340E 86 82            [24] 1767 	mov	dpl,@r0
      003410 08               [12] 1768 	inc	r0
      003411 86 83            [24] 1769 	mov	dph,@r0
      003413 08               [12] 1770 	inc	r0
      003414 86 F0            [24] 1771 	mov	b,@r0
      003416 08               [12] 1772 	inc	r0
      003417 E6               [12] 1773 	mov	a,@r0
      003418 12 5F 64         [24] 1774 	lcall	_print32bin
                                   1775 ;	calc.c:93: printstr("\r\n");
      00341B 90 7E D2         [24] 1776 	mov	dptr,#___str_3
      00341E 75 F0 80         [24] 1777 	mov	b,#0x80
      003421 12 5E F5         [24] 1778 	lcall	_printstr
                                   1779 ;	calc.c:95: break;
      003424 02 4F 7E         [24] 1780 	ljmp	00249$
                                   1781 ;	calc.c:96: case 'V':
      003427                       1782 00105$:
                                   1783 ;	calc.c:97: printstr("\r\n");
      003427 90 7E D2         [24] 1784 	mov	dptr,#___str_3
      00342A 75 F0 80         [24] 1785 	mov	b,#0x80
      00342D 12 5E F5         [24] 1786 	lcall	_printstr
                                   1787 ;	calc.c:98: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      003430 E5 08            [12] 1788 	mov	a,_bp
      003432 24 17            [12] 1789 	add	a,#0x17
      003434 F8               [12] 1790 	mov	r0,a
      003435 86 07            [24] 1791 	mov	ar7,@r0
      003437 08               [12] 1792 	inc	r0
      003438 86 06            [24] 1793 	mov	ar6,@r0
      00343A 08               [12] 1794 	inc	r0
      00343B 86 05            [24] 1795 	mov	ar5,@r0
      00343D E5 08            [12] 1796 	mov	a,_bp
      00343F 24 17            [12] 1797 	add	a,#0x17
      003441 F8               [12] 1798 	mov	r0,a
      003442 74 11            [12] 1799 	mov	a,#0x11
      003444 26               [12] 1800 	add	a,@r0
      003445 FA               [12] 1801 	mov	r2,a
      003446 74 40            [12] 1802 	mov	a,#0x40
      003448 08               [12] 1803 	inc	r0
      003449 36               [12] 1804 	addc	a,@r0
      00344A FB               [12] 1805 	mov	r3,a
      00344B 08               [12] 1806 	inc	r0
      00344C 86 04            [24] 1807 	mov	ar4,@r0
      00344E 8A 82            [24] 1808 	mov	dpl,r2
      003450 8B 83            [24] 1809 	mov	dph,r3
      003452 8C F0            [24] 1810 	mov	b,r4
      003454 12 66 3A         [24] 1811 	lcall	__gptrget
      003457 FA               [12] 1812 	mov	r2,a
      003458 A3               [24] 1813 	inc	dptr
      003459 12 66 3A         [24] 1814 	lcall	__gptrget
      00345C FB               [12] 1815 	mov	r3,a
      00345D A3               [24] 1816 	inc	dptr
      00345E 12 66 3A         [24] 1817 	lcall	__gptrget
      003461 FC               [12] 1818 	mov	r4,a
      003462 C0 07            [24] 1819 	push	ar7
      003464 C0 06            [24] 1820 	push	ar6
      003466 C0 05            [24] 1821 	push	ar5
      003468 74 2E            [12] 1822 	mov	a,#_dump_peek
      00346A C0 E0            [24] 1823 	push	acc
      00346C 74 31            [12] 1824 	mov	a,#(_dump_peek >> 8)
      00346E C0 E0            [24] 1825 	push	acc
      003470 8A 82            [24] 1826 	mov	dpl,r2
      003472 8B 83            [24] 1827 	mov	dph,r3
      003474 8C F0            [24] 1828 	mov	b,r4
      003476 12 2A 91         [24] 1829 	lcall	_stack_iter_peek
      003479 AB 82            [24] 1830 	mov	r3,dpl
      00347B AC 83            [24] 1831 	mov	r4,dph
      00347D E5 81            [12] 1832 	mov	a,sp
      00347F 24 FB            [12] 1833 	add	a,#0xfb
      003481 F5 81            [12] 1834 	mov	sp,a
      003483 EB               [12] 1835 	mov	a,r3
      003484 4C               [12] 1836 	orl	a,r4
      003485 60 03            [24] 1837 	jz	00553$
      003487 02 4F 7E         [24] 1838 	ljmp	00249$
      00348A                       1839 00553$:
      00348A 90 7E D5         [24] 1840 	mov	dptr,#___str_4
      00348D 75 F0 80         [24] 1841 	mov	b,#0x80
      003490 12 5E F5         [24] 1842 	lcall	_printstr
                                   1843 ;	calc.c:99: break;
      003493 02 4F 7E         [24] 1844 	ljmp	00249$
                                   1845 ;	calc.c:101: case 'p':
      003496                       1846 00109$:
                                   1847 ;	calc.c:102: printstr("\r\n");
      003496 90 7E D2         [24] 1848 	mov	dptr,#___str_3
      003499 75 F0 80         [24] 1849 	mov	b,#0x80
      00349C 12 5E F5         [24] 1850 	lcall	_printstr
                                   1851 ;	calc.c:103: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      00349F E5 08            [12] 1852 	mov	a,_bp
      0034A1 24 1A            [12] 1853 	add	a,#0x1a
      0034A3 FF               [12] 1854 	mov	r7,a
      0034A4 7E 00            [12] 1855 	mov	r6,#0x00
      0034A6 7D 40            [12] 1856 	mov	r5,#0x40
      0034A8 E5 08            [12] 1857 	mov	a,_bp
      0034AA 24 17            [12] 1858 	add	a,#0x17
      0034AC F8               [12] 1859 	mov	r0,a
      0034AD 74 11            [12] 1860 	mov	a,#0x11
      0034AF 26               [12] 1861 	add	a,@r0
      0034B0 FA               [12] 1862 	mov	r2,a
      0034B1 ED               [12] 1863 	mov	a,r5
      0034B2 08               [12] 1864 	inc	r0
      0034B3 36               [12] 1865 	addc	a,@r0
      0034B4 FB               [12] 1866 	mov	r3,a
      0034B5 08               [12] 1867 	inc	r0
      0034B6 86 04            [24] 1868 	mov	ar4,@r0
      0034B8 8A 82            [24] 1869 	mov	dpl,r2
      0034BA 8B 83            [24] 1870 	mov	dph,r3
      0034BC 8C F0            [24] 1871 	mov	b,r4
      0034BE 12 66 3A         [24] 1872 	lcall	__gptrget
      0034C1 FA               [12] 1873 	mov	r2,a
      0034C2 A3               [24] 1874 	inc	dptr
      0034C3 12 66 3A         [24] 1875 	lcall	__gptrget
      0034C6 FB               [12] 1876 	mov	r3,a
      0034C7 A3               [24] 1877 	inc	dptr
      0034C8 12 66 3A         [24] 1878 	lcall	__gptrget
      0034CB FC               [12] 1879 	mov	r4,a
      0034CC C0 07            [24] 1880 	push	ar7
      0034CE C0 06            [24] 1881 	push	ar6
      0034D0 C0 05            [24] 1882 	push	ar5
      0034D2 8A 82            [24] 1883 	mov	dpl,r2
      0034D4 8B 83            [24] 1884 	mov	dph,r3
      0034D6 8C F0            [24] 1885 	mov	b,r4
      0034D8 12 27 83         [24] 1886 	lcall	_stack_pop
      0034DB AB 82            [24] 1887 	mov	r3,dpl
      0034DD AC 83            [24] 1888 	mov	r4,dph
      0034DF 15 81            [12] 1889 	dec	sp
      0034E1 15 81            [12] 1890 	dec	sp
      0034E3 15 81            [12] 1891 	dec	sp
      0034E5 EB               [12] 1892 	mov	a,r3
      0034E6 4C               [12] 1893 	orl	a,r4
      0034E7 70 0C            [24] 1894 	jnz	00111$
      0034E9 90 7E D5         [24] 1895 	mov	dptr,#___str_4
      0034EC 75 F0 80         [24] 1896 	mov	b,#0x80
      0034EF 12 5E F5         [24] 1897 	lcall	_printstr
      0034F2 02 4F 7E         [24] 1898 	ljmp	00249$
      0034F5                       1899 00111$:
                                   1900 ;	calc.c:105: printstr("PSPTOP\t");
      0034F5 90 7F 01         [24] 1901 	mov	dptr,#___str_9
      0034F8 75 F0 80         [24] 1902 	mov	b,#0x80
      0034FB 12 5E F5         [24] 1903 	lcall	_printstr
                                   1904 ;	calc.c:106: printall(d0);
      0034FE E5 08            [12] 1905 	mov	a,_bp
      003500 24 1A            [12] 1906 	add	a,#0x1a
      003502 F8               [12] 1907 	mov	r0,a
      003503 86 07            [24] 1908 	mov	ar7,@r0
      003505 08               [12] 1909 	inc	r0
      003506 86 06            [24] 1910 	mov	ar6,@r0
      003508 08               [12] 1911 	inc	r0
      003509 86 05            [24] 1912 	mov	ar5,@r0
      00350B 08               [12] 1913 	inc	r0
      00350C 86 04            [24] 1914 	mov	ar4,@r0
      00350E E5 08            [12] 1915 	mov	a,_bp
      003510 24 22            [12] 1916 	add	a,#0x22
      003512 F8               [12] 1917 	mov	r0,a
      003513 A6 07            [24] 1918 	mov	@r0,ar7
      003515 08               [12] 1919 	inc	r0
      003516 A6 06            [24] 1920 	mov	@r0,ar6
      003518 08               [12] 1921 	inc	r0
      003519 A6 05            [24] 1922 	mov	@r0,ar5
      00351B 08               [12] 1923 	inc	r0
      00351C A6 04            [24] 1924 	mov	@r0,ar4
                                   1925 ;	calc.c:18: printf("%08lx\t", d);
      00351E C0 07            [24] 1926 	push	ar7
      003520 C0 06            [24] 1927 	push	ar6
      003522 C0 05            [24] 1928 	push	ar5
      003524 C0 04            [24] 1929 	push	ar4
      003526 74 BB            [12] 1930 	mov	a,#___str_0
      003528 C0 E0            [24] 1931 	push	acc
      00352A 74 7E            [12] 1932 	mov	a,#(___str_0 >> 8)
      00352C C0 E0            [24] 1933 	push	acc
      00352E 74 80            [12] 1934 	mov	a,#0x80
      003530 C0 E0            [24] 1935 	push	acc
      003532 12 66 01         [24] 1936 	lcall	_printf
      003535 E5 81            [12] 1937 	mov	a,sp
      003537 24 F9            [12] 1938 	add	a,#0xf9
      003539 F5 81            [12] 1939 	mov	sp,a
                                   1940 ;	calc.c:19: printf("% 11ld\t", d);
      00353B E5 08            [12] 1941 	mov	a,_bp
      00353D 24 22            [12] 1942 	add	a,#0x22
      00353F F8               [12] 1943 	mov	r0,a
      003540 E6               [12] 1944 	mov	a,@r0
      003541 C0 E0            [24] 1945 	push	acc
      003543 08               [12] 1946 	inc	r0
      003544 E6               [12] 1947 	mov	a,@r0
      003545 C0 E0            [24] 1948 	push	acc
      003547 08               [12] 1949 	inc	r0
      003548 E6               [12] 1950 	mov	a,@r0
      003549 C0 E0            [24] 1951 	push	acc
      00354B 08               [12] 1952 	inc	r0
      00354C E6               [12] 1953 	mov	a,@r0
      00354D C0 E0            [24] 1954 	push	acc
      00354F 74 C2            [12] 1955 	mov	a,#___str_1
      003551 C0 E0            [24] 1956 	push	acc
      003553 74 7E            [12] 1957 	mov	a,#(___str_1 >> 8)
      003555 C0 E0            [24] 1958 	push	acc
      003557 74 80            [12] 1959 	mov	a,#0x80
      003559 C0 E0            [24] 1960 	push	acc
      00355B 12 66 01         [24] 1961 	lcall	_printf
      00355E E5 81            [12] 1962 	mov	a,sp
      003560 24 F9            [12] 1963 	add	a,#0xf9
      003562 F5 81            [12] 1964 	mov	sp,a
                                   1965 ;	calc.c:20: printf("%011lo\t", d);
      003564 E5 08            [12] 1966 	mov	a,_bp
      003566 24 22            [12] 1967 	add	a,#0x22
      003568 F8               [12] 1968 	mov	r0,a
      003569 E6               [12] 1969 	mov	a,@r0
      00356A C0 E0            [24] 1970 	push	acc
      00356C 08               [12] 1971 	inc	r0
      00356D E6               [12] 1972 	mov	a,@r0
      00356E C0 E0            [24] 1973 	push	acc
      003570 08               [12] 1974 	inc	r0
      003571 E6               [12] 1975 	mov	a,@r0
      003572 C0 E0            [24] 1976 	push	acc
      003574 08               [12] 1977 	inc	r0
      003575 E6               [12] 1978 	mov	a,@r0
      003576 C0 E0            [24] 1979 	push	acc
      003578 74 CA            [12] 1980 	mov	a,#___str_2
      00357A C0 E0            [24] 1981 	push	acc
      00357C 74 7E            [12] 1982 	mov	a,#(___str_2 >> 8)
      00357E C0 E0            [24] 1983 	push	acc
      003580 74 80            [12] 1984 	mov	a,#0x80
      003582 C0 E0            [24] 1985 	push	acc
      003584 12 66 01         [24] 1986 	lcall	_printf
      003587 E5 81            [12] 1987 	mov	a,sp
      003589 24 F9            [12] 1988 	add	a,#0xf9
      00358B F5 81            [12] 1989 	mov	sp,a
                                   1990 ;	calc.c:21: print32bin(d);
      00358D E5 08            [12] 1991 	mov	a,_bp
      00358F 24 22            [12] 1992 	add	a,#0x22
      003591 F8               [12] 1993 	mov	r0,a
      003592 86 82            [24] 1994 	mov	dpl,@r0
      003594 08               [12] 1995 	inc	r0
      003595 86 83            [24] 1996 	mov	dph,@r0
      003597 08               [12] 1997 	inc	r0
      003598 86 F0            [24] 1998 	mov	b,@r0
      00359A 08               [12] 1999 	inc	r0
      00359B E6               [12] 2000 	mov	a,@r0
      00359C 12 5F 64         [24] 2001 	lcall	_print32bin
                                   2002 ;	calc.c:107: printstr("\r\n");
      00359F 90 7E D2         [24] 2003 	mov	dptr,#___str_3
      0035A2 75 F0 80         [24] 2004 	mov	b,#0x80
      0035A5 12 5E F5         [24] 2005 	lcall	_printstr
                                   2006 ;	calc.c:109: break;
      0035A8 02 4F 7E         [24] 2007 	ljmp	00249$
                                   2008 ;	calc.c:110: case 'P':
      0035AB                       2009 00113$:
                                   2010 ;	calc.c:111: printstr("\r\n");
      0035AB 90 7E D2         [24] 2011 	mov	dptr,#___str_3
      0035AE 75 F0 80         [24] 2012 	mov	b,#0x80
      0035B1 C0 04            [24] 2013 	push	ar4
      0035B3 C0 03            [24] 2014 	push	ar3
      0035B5 C0 02            [24] 2015 	push	ar2
      0035B7 12 5E F5         [24] 2016 	lcall	_printstr
      0035BA D0 02            [24] 2017 	pop	ar2
      0035BC D0 03            [24] 2018 	pop	ar3
      0035BE D0 04            [24] 2019 	pop	ar4
                                   2020 ;	calc.c:112: (void)dump_pop(_ctx, delta);
      0035C0 E5 08            [12] 2021 	mov	a,_bp
      0035C2 24 FB            [12] 2022 	add	a,#0xfb
      0035C4 F8               [12] 2023 	mov	r0,a
      0035C5 E6               [12] 2024 	mov	a,@r0
      0035C6 C0 E0            [24] 2025 	push	acc
      0035C8 08               [12] 2026 	inc	r0
      0035C9 E6               [12] 2027 	mov	a,@r0
      0035CA C0 E0            [24] 2028 	push	acc
      0035CC 08               [12] 2029 	inc	r0
      0035CD E6               [12] 2030 	mov	a,@r0
      0035CE C0 E0            [24] 2031 	push	acc
      0035D0 8A 82            [24] 2032 	mov	dpl,r2
      0035D2 8B 83            [24] 2033 	mov	dph,r3
      0035D4 8C F0            [24] 2034 	mov	b,r4
      0035D6 12 2C E1         [24] 2035 	lcall	_dump_pop
      0035D9 15 81            [12] 2036 	dec	sp
      0035DB 15 81            [12] 2037 	dec	sp
      0035DD 15 81            [12] 2038 	dec	sp
                                   2039 ;	calc.c:113: break;
      0035DF 02 4F 7E         [24] 2040 	ljmp	00249$
                                   2041 ;	calc.c:114: case 'x':
      0035E2                       2042 00114$:
                                   2043 ;	calc.c:115: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0035E2 E5 08            [12] 2044 	mov	a,_bp
      0035E4 24 1A            [12] 2045 	add	a,#0x1a
      0035E6 FF               [12] 2046 	mov	r7,a
      0035E7 7E 00            [12] 2047 	mov	r6,#0x00
      0035E9 7D 40            [12] 2048 	mov	r5,#0x40
      0035EB E5 08            [12] 2049 	mov	a,_bp
      0035ED 24 17            [12] 2050 	add	a,#0x17
      0035EF F8               [12] 2051 	mov	r0,a
      0035F0 A9 08            [24] 2052 	mov	r1,_bp
      0035F2 09               [12] 2053 	inc	r1
      0035F3 09               [12] 2054 	inc	r1
      0035F4 74 11            [12] 2055 	mov	a,#0x11
      0035F6 26               [12] 2056 	add	a,@r0
      0035F7 F7               [12] 2057 	mov	@r1,a
      0035F8 74 40            [12] 2058 	mov	a,#0x40
      0035FA 08               [12] 2059 	inc	r0
      0035FB 36               [12] 2060 	addc	a,@r0
      0035FC 09               [12] 2061 	inc	r1
      0035FD F7               [12] 2062 	mov	@r1,a
      0035FE 08               [12] 2063 	inc	r0
      0035FF 09               [12] 2064 	inc	r1
      003600 E6               [12] 2065 	mov	a,@r0
      003601 F7               [12] 2066 	mov	@r1,a
      003602 A8 08            [24] 2067 	mov	r0,_bp
      003604 08               [12] 2068 	inc	r0
      003605 08               [12] 2069 	inc	r0
      003606 86 82            [24] 2070 	mov	dpl,@r0
      003608 08               [12] 2071 	inc	r0
      003609 86 83            [24] 2072 	mov	dph,@r0
      00360B 08               [12] 2073 	inc	r0
      00360C 86 F0            [24] 2074 	mov	b,@r0
      00360E 12 66 3A         [24] 2075 	lcall	__gptrget
      003611 FA               [12] 2076 	mov	r2,a
      003612 A3               [24] 2077 	inc	dptr
      003613 12 66 3A         [24] 2078 	lcall	__gptrget
      003616 FB               [12] 2079 	mov	r3,a
      003617 A3               [24] 2080 	inc	dptr
      003618 12 66 3A         [24] 2081 	lcall	__gptrget
      00361B FC               [12] 2082 	mov	r4,a
      00361C C0 07            [24] 2083 	push	ar7
      00361E C0 06            [24] 2084 	push	ar6
      003620 C0 05            [24] 2085 	push	ar5
      003622 8A 82            [24] 2086 	mov	dpl,r2
      003624 8B 83            [24] 2087 	mov	dph,r3
      003626 8C F0            [24] 2088 	mov	b,r4
      003628 12 27 83         [24] 2089 	lcall	_stack_pop
      00362B AB 82            [24] 2090 	mov	r3,dpl
      00362D AC 83            [24] 2091 	mov	r4,dph
      00362F 15 81            [12] 2092 	dec	sp
      003631 15 81            [12] 2093 	dec	sp
      003633 15 81            [12] 2094 	dec	sp
      003635 EB               [12] 2095 	mov	a,r3
      003636 4C               [12] 2096 	orl	a,r4
      003637 70 0C            [24] 2097 	jnz	00119$
      003639 90 7F 09         [24] 2098 	mov	dptr,#___str_10
      00363C 75 F0 80         [24] 2099 	mov	b,#0x80
      00363F 12 5E F5         [24] 2100 	lcall	_printstr
      003642 02 4F 7E         [24] 2101 	ljmp	00249$
      003645                       2102 00119$:
                                   2103 ;	calc.c:116: else if (!stack_pop(ctx->ps, &d1)) {
      003645 E5 08            [12] 2104 	mov	a,_bp
      003647 24 1E            [12] 2105 	add	a,#0x1e
      003649 FF               [12] 2106 	mov	r7,a
      00364A 7E 00            [12] 2107 	mov	r6,#0x00
      00364C 7D 40            [12] 2108 	mov	r5,#0x40
      00364E A8 08            [24] 2109 	mov	r0,_bp
      003650 08               [12] 2110 	inc	r0
      003651 08               [12] 2111 	inc	r0
      003652 86 82            [24] 2112 	mov	dpl,@r0
      003654 08               [12] 2113 	inc	r0
      003655 86 83            [24] 2114 	mov	dph,@r0
      003657 08               [12] 2115 	inc	r0
      003658 86 F0            [24] 2116 	mov	b,@r0
      00365A 12 66 3A         [24] 2117 	lcall	__gptrget
      00365D FA               [12] 2118 	mov	r2,a
      00365E A3               [24] 2119 	inc	dptr
      00365F 12 66 3A         [24] 2120 	lcall	__gptrget
      003662 FB               [12] 2121 	mov	r3,a
      003663 A3               [24] 2122 	inc	dptr
      003664 12 66 3A         [24] 2123 	lcall	__gptrget
      003667 FC               [12] 2124 	mov	r4,a
      003668 C0 07            [24] 2125 	push	ar7
      00366A C0 06            [24] 2126 	push	ar6
      00366C C0 05            [24] 2127 	push	ar5
      00366E 8A 82            [24] 2128 	mov	dpl,r2
      003670 8B 83            [24] 2129 	mov	dph,r3
      003672 8C F0            [24] 2130 	mov	b,r4
      003674 12 27 83         [24] 2131 	lcall	_stack_pop
      003677 AB 82            [24] 2132 	mov	r3,dpl
      003679 AC 83            [24] 2133 	mov	r4,dph
      00367B 15 81            [12] 2134 	dec	sp
      00367D 15 81            [12] 2135 	dec	sp
      00367F 15 81            [12] 2136 	dec	sp
      003681 EB               [12] 2137 	mov	a,r3
      003682 4C               [12] 2138 	orl	a,r4
      003683 70 49            [24] 2139 	jnz	00116$
                                   2140 ;	calc.c:117: (void)stack_push(ctx->ps, d0);
      003685 A8 08            [24] 2141 	mov	r0,_bp
      003687 08               [12] 2142 	inc	r0
      003688 08               [12] 2143 	inc	r0
      003689 86 82            [24] 2144 	mov	dpl,@r0
      00368B 08               [12] 2145 	inc	r0
      00368C 86 83            [24] 2146 	mov	dph,@r0
      00368E 08               [12] 2147 	inc	r0
      00368F 86 F0            [24] 2148 	mov	b,@r0
      003691 12 66 3A         [24] 2149 	lcall	__gptrget
      003694 FA               [12] 2150 	mov	r2,a
      003695 A3               [24] 2151 	inc	dptr
      003696 12 66 3A         [24] 2152 	lcall	__gptrget
      003699 FB               [12] 2153 	mov	r3,a
      00369A A3               [24] 2154 	inc	dptr
      00369B 12 66 3A         [24] 2155 	lcall	__gptrget
      00369E FC               [12] 2156 	mov	r4,a
      00369F E5 08            [12] 2157 	mov	a,_bp
      0036A1 24 1A            [12] 2158 	add	a,#0x1a
      0036A3 F8               [12] 2159 	mov	r0,a
      0036A4 E6               [12] 2160 	mov	a,@r0
      0036A5 C0 E0            [24] 2161 	push	acc
      0036A7 08               [12] 2162 	inc	r0
      0036A8 E6               [12] 2163 	mov	a,@r0
      0036A9 C0 E0            [24] 2164 	push	acc
      0036AB 08               [12] 2165 	inc	r0
      0036AC E6               [12] 2166 	mov	a,@r0
      0036AD C0 E0            [24] 2167 	push	acc
      0036AF 08               [12] 2168 	inc	r0
      0036B0 E6               [12] 2169 	mov	a,@r0
      0036B1 C0 E0            [24] 2170 	push	acc
      0036B3 8A 82            [24] 2171 	mov	dpl,r2
      0036B5 8B 83            [24] 2172 	mov	dph,r3
      0036B7 8C F0            [24] 2173 	mov	b,r4
      0036B9 12 26 B5         [24] 2174 	lcall	_stack_push
      0036BC E5 81            [12] 2175 	mov	a,sp
      0036BE 24 FC            [12] 2176 	add	a,#0xfc
      0036C0 F5 81            [12] 2177 	mov	sp,a
                                   2178 ;	calc.c:118: printstr("\r\nstack underflow\r\n");
      0036C2 90 7F 09         [24] 2179 	mov	dptr,#___str_10
      0036C5 75 F0 80         [24] 2180 	mov	b,#0x80
      0036C8 12 5E F5         [24] 2181 	lcall	_printstr
      0036CB 02 4F 7E         [24] 2182 	ljmp	00249$
      0036CE                       2183 00116$:
                                   2184 ;	calc.c:120: (void)stack_push(ctx->ps, d0);
      0036CE A8 08            [24] 2185 	mov	r0,_bp
      0036D0 08               [12] 2186 	inc	r0
      0036D1 08               [12] 2187 	inc	r0
      0036D2 86 82            [24] 2188 	mov	dpl,@r0
      0036D4 08               [12] 2189 	inc	r0
      0036D5 86 83            [24] 2190 	mov	dph,@r0
      0036D7 08               [12] 2191 	inc	r0
      0036D8 86 F0            [24] 2192 	mov	b,@r0
      0036DA 12 66 3A         [24] 2193 	lcall	__gptrget
      0036DD FA               [12] 2194 	mov	r2,a
      0036DE A3               [24] 2195 	inc	dptr
      0036DF 12 66 3A         [24] 2196 	lcall	__gptrget
      0036E2 FB               [12] 2197 	mov	r3,a
      0036E3 A3               [24] 2198 	inc	dptr
      0036E4 12 66 3A         [24] 2199 	lcall	__gptrget
      0036E7 FC               [12] 2200 	mov	r4,a
      0036E8 E5 08            [12] 2201 	mov	a,_bp
      0036EA 24 1A            [12] 2202 	add	a,#0x1a
      0036EC F8               [12] 2203 	mov	r0,a
      0036ED E6               [12] 2204 	mov	a,@r0
      0036EE C0 E0            [24] 2205 	push	acc
      0036F0 08               [12] 2206 	inc	r0
      0036F1 E6               [12] 2207 	mov	a,@r0
      0036F2 C0 E0            [24] 2208 	push	acc
      0036F4 08               [12] 2209 	inc	r0
      0036F5 E6               [12] 2210 	mov	a,@r0
      0036F6 C0 E0            [24] 2211 	push	acc
      0036F8 08               [12] 2212 	inc	r0
      0036F9 E6               [12] 2213 	mov	a,@r0
      0036FA C0 E0            [24] 2214 	push	acc
      0036FC 8A 82            [24] 2215 	mov	dpl,r2
      0036FE 8B 83            [24] 2216 	mov	dph,r3
      003700 8C F0            [24] 2217 	mov	b,r4
      003702 12 26 B5         [24] 2218 	lcall	_stack_push
      003705 E5 81            [12] 2219 	mov	a,sp
      003707 24 FC            [12] 2220 	add	a,#0xfc
      003709 F5 81            [12] 2221 	mov	sp,a
                                   2222 ;	calc.c:121: (void)stack_push(ctx->ps, d1);
      00370B A8 08            [24] 2223 	mov	r0,_bp
      00370D 08               [12] 2224 	inc	r0
      00370E 08               [12] 2225 	inc	r0
      00370F 86 82            [24] 2226 	mov	dpl,@r0
      003711 08               [12] 2227 	inc	r0
      003712 86 83            [24] 2228 	mov	dph,@r0
      003714 08               [12] 2229 	inc	r0
      003715 86 F0            [24] 2230 	mov	b,@r0
      003717 12 66 3A         [24] 2231 	lcall	__gptrget
      00371A FA               [12] 2232 	mov	r2,a
      00371B A3               [24] 2233 	inc	dptr
      00371C 12 66 3A         [24] 2234 	lcall	__gptrget
      00371F FB               [12] 2235 	mov	r3,a
      003720 A3               [24] 2236 	inc	dptr
      003721 12 66 3A         [24] 2237 	lcall	__gptrget
      003724 FC               [12] 2238 	mov	r4,a
      003725 E5 08            [12] 2239 	mov	a,_bp
      003727 24 1E            [12] 2240 	add	a,#0x1e
      003729 F8               [12] 2241 	mov	r0,a
      00372A E6               [12] 2242 	mov	a,@r0
      00372B C0 E0            [24] 2243 	push	acc
      00372D 08               [12] 2244 	inc	r0
      00372E E6               [12] 2245 	mov	a,@r0
      00372F C0 E0            [24] 2246 	push	acc
      003731 08               [12] 2247 	inc	r0
      003732 E6               [12] 2248 	mov	a,@r0
      003733 C0 E0            [24] 2249 	push	acc
      003735 08               [12] 2250 	inc	r0
      003736 E6               [12] 2251 	mov	a,@r0
      003737 C0 E0            [24] 2252 	push	acc
      003739 8A 82            [24] 2253 	mov	dpl,r2
      00373B 8B 83            [24] 2254 	mov	dph,r3
      00373D 8C F0            [24] 2255 	mov	b,r4
      00373F 12 26 B5         [24] 2256 	lcall	_stack_push
      003742 E5 81            [12] 2257 	mov	a,sp
      003744 24 FC            [12] 2258 	add	a,#0xfc
      003746 F5 81            [12] 2259 	mov	sp,a
                                   2260 ;	calc.c:123: break;
      003748 02 4F 7E         [24] 2261 	ljmp	00249$
                                   2262 ;	calc.c:124: case 'm':
      00374B                       2263 00121$:
                                   2264 ;	calc.c:125: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00374B E5 08            [12] 2265 	mov	a,_bp
      00374D 24 1A            [12] 2266 	add	a,#0x1a
      00374F FF               [12] 2267 	mov	r7,a
      003750 7E 00            [12] 2268 	mov	r6,#0x00
      003752 7D 40            [12] 2269 	mov	r5,#0x40
      003754 E5 08            [12] 2270 	mov	a,_bp
      003756 24 17            [12] 2271 	add	a,#0x17
      003758 F8               [12] 2272 	mov	r0,a
      003759 E5 08            [12] 2273 	mov	a,_bp
      00375B 24 05            [12] 2274 	add	a,#0x05
      00375D F9               [12] 2275 	mov	r1,a
      00375E 74 11            [12] 2276 	mov	a,#0x11
      003760 26               [12] 2277 	add	a,@r0
      003761 F7               [12] 2278 	mov	@r1,a
      003762 74 40            [12] 2279 	mov	a,#0x40
      003764 08               [12] 2280 	inc	r0
      003765 36               [12] 2281 	addc	a,@r0
      003766 09               [12] 2282 	inc	r1
      003767 F7               [12] 2283 	mov	@r1,a
      003768 08               [12] 2284 	inc	r0
      003769 09               [12] 2285 	inc	r1
      00376A E6               [12] 2286 	mov	a,@r0
      00376B F7               [12] 2287 	mov	@r1,a
      00376C E5 08            [12] 2288 	mov	a,_bp
      00376E 24 05            [12] 2289 	add	a,#0x05
      003770 F8               [12] 2290 	mov	r0,a
      003771 86 82            [24] 2291 	mov	dpl,@r0
      003773 08               [12] 2292 	inc	r0
      003774 86 83            [24] 2293 	mov	dph,@r0
      003776 08               [12] 2294 	inc	r0
      003777 86 F0            [24] 2295 	mov	b,@r0
      003779 12 66 3A         [24] 2296 	lcall	__gptrget
      00377C FA               [12] 2297 	mov	r2,a
      00377D A3               [24] 2298 	inc	dptr
      00377E 12 66 3A         [24] 2299 	lcall	__gptrget
      003781 FB               [12] 2300 	mov	r3,a
      003782 A3               [24] 2301 	inc	dptr
      003783 12 66 3A         [24] 2302 	lcall	__gptrget
      003786 FC               [12] 2303 	mov	r4,a
      003787 C0 07            [24] 2304 	push	ar7
      003789 C0 06            [24] 2305 	push	ar6
      00378B C0 05            [24] 2306 	push	ar5
      00378D 8A 82            [24] 2307 	mov	dpl,r2
      00378F 8B 83            [24] 2308 	mov	dph,r3
      003791 8C F0            [24] 2309 	mov	b,r4
      003793 12 27 83         [24] 2310 	lcall	_stack_pop
      003796 AB 82            [24] 2311 	mov	r3,dpl
      003798 AC 83            [24] 2312 	mov	r4,dph
      00379A 15 81            [12] 2313 	dec	sp
      00379C 15 81            [12] 2314 	dec	sp
      00379E 15 81            [12] 2315 	dec	sp
      0037A0 EB               [12] 2316 	mov	a,r3
      0037A1 4C               [12] 2317 	orl	a,r4
      0037A2 70 0C            [24] 2318 	jnz	00125$
      0037A4 90 7F 09         [24] 2319 	mov	dptr,#___str_10
      0037A7 75 F0 80         [24] 2320 	mov	b,#0x80
      0037AA 12 5E F5         [24] 2321 	lcall	_printstr
      0037AD 02 4F 7E         [24] 2322 	ljmp	00249$
      0037B0                       2323 00125$:
                                   2324 ;	calc.c:127: if (!stack_push(ctx->ss, d0)) {
      0037B0 E5 08            [12] 2325 	mov	a,_bp
      0037B2 24 17            [12] 2326 	add	a,#0x17
      0037B4 F8               [12] 2327 	mov	r0,a
      0037B5 74 14            [12] 2328 	mov	a,#0x14
      0037B7 26               [12] 2329 	add	a,@r0
      0037B8 FA               [12] 2330 	mov	r2,a
      0037B9 74 40            [12] 2331 	mov	a,#0x40
      0037BB 08               [12] 2332 	inc	r0
      0037BC 36               [12] 2333 	addc	a,@r0
      0037BD FB               [12] 2334 	mov	r3,a
      0037BE 08               [12] 2335 	inc	r0
      0037BF 86 04            [24] 2336 	mov	ar4,@r0
      0037C1 8A 82            [24] 2337 	mov	dpl,r2
      0037C3 8B 83            [24] 2338 	mov	dph,r3
      0037C5 8C F0            [24] 2339 	mov	b,r4
      0037C7 12 66 3A         [24] 2340 	lcall	__gptrget
      0037CA FA               [12] 2341 	mov	r2,a
      0037CB A3               [24] 2342 	inc	dptr
      0037CC 12 66 3A         [24] 2343 	lcall	__gptrget
      0037CF FB               [12] 2344 	mov	r3,a
      0037D0 A3               [24] 2345 	inc	dptr
      0037D1 12 66 3A         [24] 2346 	lcall	__gptrget
      0037D4 FC               [12] 2347 	mov	r4,a
      0037D5 E5 08            [12] 2348 	mov	a,_bp
      0037D7 24 1A            [12] 2349 	add	a,#0x1a
      0037D9 F8               [12] 2350 	mov	r0,a
      0037DA E6               [12] 2351 	mov	a,@r0
      0037DB C0 E0            [24] 2352 	push	acc
      0037DD 08               [12] 2353 	inc	r0
      0037DE E6               [12] 2354 	mov	a,@r0
      0037DF C0 E0            [24] 2355 	push	acc
      0037E1 08               [12] 2356 	inc	r0
      0037E2 E6               [12] 2357 	mov	a,@r0
      0037E3 C0 E0            [24] 2358 	push	acc
      0037E5 08               [12] 2359 	inc	r0
      0037E6 E6               [12] 2360 	mov	a,@r0
      0037E7 C0 E0            [24] 2361 	push	acc
      0037E9 8A 82            [24] 2362 	mov	dpl,r2
      0037EB 8B 83            [24] 2363 	mov	dph,r3
      0037ED 8C F0            [24] 2364 	mov	b,r4
      0037EF 12 26 B5         [24] 2365 	lcall	_stack_push
      0037F2 AB 82            [24] 2366 	mov	r3,dpl
      0037F4 AC 83            [24] 2367 	mov	r4,dph
      0037F6 E5 81            [12] 2368 	mov	a,sp
      0037F8 24 FC            [12] 2369 	add	a,#0xfc
      0037FA F5 81            [12] 2370 	mov	sp,a
      0037FC EB               [12] 2371 	mov	a,r3
      0037FD 4C               [12] 2372 	orl	a,r4
      0037FE 60 03            [24] 2373 	jz	00558$
      003800 02 4F 7E         [24] 2374 	ljmp	00249$
      003803                       2375 00558$:
                                   2376 ;	calc.c:128: printstr("\r\nsecondary stack overflow\r\n");
      003803 90 7F 1D         [24] 2377 	mov	dptr,#___str_11
      003806 75 F0 80         [24] 2378 	mov	b,#0x80
      003809 12 5E F5         [24] 2379 	lcall	_printstr
                                   2380 ;	calc.c:129: (void)stack_push(ctx->ps, d0);
      00380C E5 08            [12] 2381 	mov	a,_bp
      00380E 24 05            [12] 2382 	add	a,#0x05
      003810 F8               [12] 2383 	mov	r0,a
      003811 86 82            [24] 2384 	mov	dpl,@r0
      003813 08               [12] 2385 	inc	r0
      003814 86 83            [24] 2386 	mov	dph,@r0
      003816 08               [12] 2387 	inc	r0
      003817 86 F0            [24] 2388 	mov	b,@r0
      003819 12 66 3A         [24] 2389 	lcall	__gptrget
      00381C FA               [12] 2390 	mov	r2,a
      00381D A3               [24] 2391 	inc	dptr
      00381E 12 66 3A         [24] 2392 	lcall	__gptrget
      003821 FB               [12] 2393 	mov	r3,a
      003822 A3               [24] 2394 	inc	dptr
      003823 12 66 3A         [24] 2395 	lcall	__gptrget
      003826 FC               [12] 2396 	mov	r4,a
      003827 E5 08            [12] 2397 	mov	a,_bp
      003829 24 1A            [12] 2398 	add	a,#0x1a
      00382B F8               [12] 2399 	mov	r0,a
      00382C E6               [12] 2400 	mov	a,@r0
      00382D C0 E0            [24] 2401 	push	acc
      00382F 08               [12] 2402 	inc	r0
      003830 E6               [12] 2403 	mov	a,@r0
      003831 C0 E0            [24] 2404 	push	acc
      003833 08               [12] 2405 	inc	r0
      003834 E6               [12] 2406 	mov	a,@r0
      003835 C0 E0            [24] 2407 	push	acc
      003837 08               [12] 2408 	inc	r0
      003838 E6               [12] 2409 	mov	a,@r0
      003839 C0 E0            [24] 2410 	push	acc
      00383B 8A 82            [24] 2411 	mov	dpl,r2
      00383D 8B 83            [24] 2412 	mov	dph,r3
      00383F 8C F0            [24] 2413 	mov	b,r4
      003841 12 26 B5         [24] 2414 	lcall	_stack_push
      003844 E5 81            [12] 2415 	mov	a,sp
      003846 24 FC            [12] 2416 	add	a,#0xfc
      003848 F5 81            [12] 2417 	mov	sp,a
                                   2418 ;	calc.c:132: break;
      00384A 02 4F 7E         [24] 2419 	ljmp	00249$
                                   2420 ;	calc.c:133: case 'M':
      00384D                       2421 00127$:
                                   2422 ;	calc.c:134: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      00384D E5 08            [12] 2423 	mov	a,_bp
      00384F 24 1A            [12] 2424 	add	a,#0x1a
      003851 FF               [12] 2425 	mov	r7,a
      003852 7E 00            [12] 2426 	mov	r6,#0x00
      003854 7D 40            [12] 2427 	mov	r5,#0x40
      003856 E5 08            [12] 2428 	mov	a,_bp
      003858 24 17            [12] 2429 	add	a,#0x17
      00385A F8               [12] 2430 	mov	r0,a
      00385B E5 08            [12] 2431 	mov	a,_bp
      00385D 24 05            [12] 2432 	add	a,#0x05
      00385F F9               [12] 2433 	mov	r1,a
      003860 74 14            [12] 2434 	mov	a,#0x14
      003862 26               [12] 2435 	add	a,@r0
      003863 F7               [12] 2436 	mov	@r1,a
      003864 74 40            [12] 2437 	mov	a,#0x40
      003866 08               [12] 2438 	inc	r0
      003867 36               [12] 2439 	addc	a,@r0
      003868 09               [12] 2440 	inc	r1
      003869 F7               [12] 2441 	mov	@r1,a
      00386A 08               [12] 2442 	inc	r0
      00386B 09               [12] 2443 	inc	r1
      00386C E6               [12] 2444 	mov	a,@r0
      00386D F7               [12] 2445 	mov	@r1,a
      00386E E5 08            [12] 2446 	mov	a,_bp
      003870 24 05            [12] 2447 	add	a,#0x05
      003872 F8               [12] 2448 	mov	r0,a
      003873 86 82            [24] 2449 	mov	dpl,@r0
      003875 08               [12] 2450 	inc	r0
      003876 86 83            [24] 2451 	mov	dph,@r0
      003878 08               [12] 2452 	inc	r0
      003879 86 F0            [24] 2453 	mov	b,@r0
      00387B 12 66 3A         [24] 2454 	lcall	__gptrget
      00387E FA               [12] 2455 	mov	r2,a
      00387F A3               [24] 2456 	inc	dptr
      003880 12 66 3A         [24] 2457 	lcall	__gptrget
      003883 FB               [12] 2458 	mov	r3,a
      003884 A3               [24] 2459 	inc	dptr
      003885 12 66 3A         [24] 2460 	lcall	__gptrget
      003888 FC               [12] 2461 	mov	r4,a
      003889 C0 07            [24] 2462 	push	ar7
      00388B C0 06            [24] 2463 	push	ar6
      00388D C0 05            [24] 2464 	push	ar5
      00388F 8A 82            [24] 2465 	mov	dpl,r2
      003891 8B 83            [24] 2466 	mov	dph,r3
      003893 8C F0            [24] 2467 	mov	b,r4
      003895 12 27 83         [24] 2468 	lcall	_stack_pop
      003898 AB 82            [24] 2469 	mov	r3,dpl
      00389A AC 83            [24] 2470 	mov	r4,dph
      00389C 15 81            [12] 2471 	dec	sp
      00389E 15 81            [12] 2472 	dec	sp
      0038A0 15 81            [12] 2473 	dec	sp
      0038A2 EB               [12] 2474 	mov	a,r3
      0038A3 4C               [12] 2475 	orl	a,r4
      0038A4 70 0C            [24] 2476 	jnz	00131$
      0038A6 90 7F 3A         [24] 2477 	mov	dptr,#___str_12
      0038A9 75 F0 80         [24] 2478 	mov	b,#0x80
      0038AC 12 5E F5         [24] 2479 	lcall	_printstr
      0038AF 02 4F 7E         [24] 2480 	ljmp	00249$
      0038B2                       2481 00131$:
                                   2482 ;	calc.c:136: if (!stack_push(ctx->ps, d0)) {
      0038B2 E5 08            [12] 2483 	mov	a,_bp
      0038B4 24 17            [12] 2484 	add	a,#0x17
      0038B6 F8               [12] 2485 	mov	r0,a
      0038B7 74 11            [12] 2486 	mov	a,#0x11
      0038B9 26               [12] 2487 	add	a,@r0
      0038BA FA               [12] 2488 	mov	r2,a
      0038BB 74 40            [12] 2489 	mov	a,#0x40
      0038BD 08               [12] 2490 	inc	r0
      0038BE 36               [12] 2491 	addc	a,@r0
      0038BF FB               [12] 2492 	mov	r3,a
      0038C0 08               [12] 2493 	inc	r0
      0038C1 86 04            [24] 2494 	mov	ar4,@r0
      0038C3 8A 82            [24] 2495 	mov	dpl,r2
      0038C5 8B 83            [24] 2496 	mov	dph,r3
      0038C7 8C F0            [24] 2497 	mov	b,r4
      0038C9 12 66 3A         [24] 2498 	lcall	__gptrget
      0038CC FA               [12] 2499 	mov	r2,a
      0038CD A3               [24] 2500 	inc	dptr
      0038CE 12 66 3A         [24] 2501 	lcall	__gptrget
      0038D1 FB               [12] 2502 	mov	r3,a
      0038D2 A3               [24] 2503 	inc	dptr
      0038D3 12 66 3A         [24] 2504 	lcall	__gptrget
      0038D6 FC               [12] 2505 	mov	r4,a
      0038D7 E5 08            [12] 2506 	mov	a,_bp
      0038D9 24 1A            [12] 2507 	add	a,#0x1a
      0038DB F8               [12] 2508 	mov	r0,a
      0038DC E6               [12] 2509 	mov	a,@r0
      0038DD C0 E0            [24] 2510 	push	acc
      0038DF 08               [12] 2511 	inc	r0
      0038E0 E6               [12] 2512 	mov	a,@r0
      0038E1 C0 E0            [24] 2513 	push	acc
      0038E3 08               [12] 2514 	inc	r0
      0038E4 E6               [12] 2515 	mov	a,@r0
      0038E5 C0 E0            [24] 2516 	push	acc
      0038E7 08               [12] 2517 	inc	r0
      0038E8 E6               [12] 2518 	mov	a,@r0
      0038E9 C0 E0            [24] 2519 	push	acc
      0038EB 8A 82            [24] 2520 	mov	dpl,r2
      0038ED 8B 83            [24] 2521 	mov	dph,r3
      0038EF 8C F0            [24] 2522 	mov	b,r4
      0038F1 12 26 B5         [24] 2523 	lcall	_stack_push
      0038F4 AB 82            [24] 2524 	mov	r3,dpl
      0038F6 AC 83            [24] 2525 	mov	r4,dph
      0038F8 E5 81            [12] 2526 	mov	a,sp
      0038FA 24 FC            [12] 2527 	add	a,#0xfc
      0038FC F5 81            [12] 2528 	mov	sp,a
      0038FE EB               [12] 2529 	mov	a,r3
      0038FF 4C               [12] 2530 	orl	a,r4
      003900 60 03            [24] 2531 	jz	00560$
      003902 02 4F 7E         [24] 2532 	ljmp	00249$
      003905                       2533 00560$:
                                   2534 ;	calc.c:137: printstr("\r\nstack overflow\r\n");
      003905 90 7F 58         [24] 2535 	mov	dptr,#___str_13
      003908 75 F0 80         [24] 2536 	mov	b,#0x80
      00390B 12 5E F5         [24] 2537 	lcall	_printstr
                                   2538 ;	calc.c:138: (void)stack_push(ctx->ss, d0);
      00390E E5 08            [12] 2539 	mov	a,_bp
      003910 24 05            [12] 2540 	add	a,#0x05
      003912 F8               [12] 2541 	mov	r0,a
      003913 86 82            [24] 2542 	mov	dpl,@r0
      003915 08               [12] 2543 	inc	r0
      003916 86 83            [24] 2544 	mov	dph,@r0
      003918 08               [12] 2545 	inc	r0
      003919 86 F0            [24] 2546 	mov	b,@r0
      00391B 12 66 3A         [24] 2547 	lcall	__gptrget
      00391E FA               [12] 2548 	mov	r2,a
      00391F A3               [24] 2549 	inc	dptr
      003920 12 66 3A         [24] 2550 	lcall	__gptrget
      003923 FB               [12] 2551 	mov	r3,a
      003924 A3               [24] 2552 	inc	dptr
      003925 12 66 3A         [24] 2553 	lcall	__gptrget
      003928 FC               [12] 2554 	mov	r4,a
      003929 E5 08            [12] 2555 	mov	a,_bp
      00392B 24 1A            [12] 2556 	add	a,#0x1a
      00392D F8               [12] 2557 	mov	r0,a
      00392E E6               [12] 2558 	mov	a,@r0
      00392F C0 E0            [24] 2559 	push	acc
      003931 08               [12] 2560 	inc	r0
      003932 E6               [12] 2561 	mov	a,@r0
      003933 C0 E0            [24] 2562 	push	acc
      003935 08               [12] 2563 	inc	r0
      003936 E6               [12] 2564 	mov	a,@r0
      003937 C0 E0            [24] 2565 	push	acc
      003939 08               [12] 2566 	inc	r0
      00393A E6               [12] 2567 	mov	a,@r0
      00393B C0 E0            [24] 2568 	push	acc
      00393D 8A 82            [24] 2569 	mov	dpl,r2
      00393F 8B 83            [24] 2570 	mov	dph,r3
      003941 8C F0            [24] 2571 	mov	b,r4
      003943 12 26 B5         [24] 2572 	lcall	_stack_push
      003946 E5 81            [12] 2573 	mov	a,sp
      003948 24 FC            [12] 2574 	add	a,#0xfc
      00394A F5 81            [12] 2575 	mov	sp,a
                                   2576 ;	calc.c:141: break;
      00394C 02 4F 7E         [24] 2577 	ljmp	00249$
                                   2578 ;	calc.c:142: case 'u':
      00394F                       2579 00133$:
                                   2580 ;	calc.c:143: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00394F E5 08            [12] 2581 	mov	a,_bp
      003951 24 1A            [12] 2582 	add	a,#0x1a
      003953 FF               [12] 2583 	mov	r7,a
      003954 7E 00            [12] 2584 	mov	r6,#0x00
      003956 7D 40            [12] 2585 	mov	r5,#0x40
      003958 E5 08            [12] 2586 	mov	a,_bp
      00395A 24 17            [12] 2587 	add	a,#0x17
      00395C F8               [12] 2588 	mov	r0,a
      00395D 74 11            [12] 2589 	mov	a,#0x11
      00395F 26               [12] 2590 	add	a,@r0
      003960 FA               [12] 2591 	mov	r2,a
      003961 ED               [12] 2592 	mov	a,r5
      003962 08               [12] 2593 	inc	r0
      003963 36               [12] 2594 	addc	a,@r0
      003964 FB               [12] 2595 	mov	r3,a
      003965 08               [12] 2596 	inc	r0
      003966 86 04            [24] 2597 	mov	ar4,@r0
      003968 8A 82            [24] 2598 	mov	dpl,r2
      00396A 8B 83            [24] 2599 	mov	dph,r3
      00396C 8C F0            [24] 2600 	mov	b,r4
      00396E 12 66 3A         [24] 2601 	lcall	__gptrget
      003971 FA               [12] 2602 	mov	r2,a
      003972 A3               [24] 2603 	inc	dptr
      003973 12 66 3A         [24] 2604 	lcall	__gptrget
      003976 FB               [12] 2605 	mov	r3,a
      003977 A3               [24] 2606 	inc	dptr
      003978 12 66 3A         [24] 2607 	lcall	__gptrget
      00397B FC               [12] 2608 	mov	r4,a
      00397C C0 07            [24] 2609 	push	ar7
      00397E C0 06            [24] 2610 	push	ar6
      003980 C0 05            [24] 2611 	push	ar5
      003982 8A 82            [24] 2612 	mov	dpl,r2
      003984 8B 83            [24] 2613 	mov	dph,r3
      003986 8C F0            [24] 2614 	mov	b,r4
      003988 12 28 5E         [24] 2615 	lcall	_stack_peek
      00398B AB 82            [24] 2616 	mov	r3,dpl
      00398D AC 83            [24] 2617 	mov	r4,dph
      00398F 15 81            [12] 2618 	dec	sp
      003991 15 81            [12] 2619 	dec	sp
      003993 15 81            [12] 2620 	dec	sp
      003995 EB               [12] 2621 	mov	a,r3
      003996 4C               [12] 2622 	orl	a,r4
      003997 70 0C            [24] 2623 	jnz	00137$
      003999 90 7F 09         [24] 2624 	mov	dptr,#___str_10
      00399C 75 F0 80         [24] 2625 	mov	b,#0x80
      00399F 12 5E F5         [24] 2626 	lcall	_printstr
      0039A2 02 4F 7E         [24] 2627 	ljmp	00249$
      0039A5                       2628 00137$:
                                   2629 ;	calc.c:144: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      0039A5 E5 08            [12] 2630 	mov	a,_bp
      0039A7 24 17            [12] 2631 	add	a,#0x17
      0039A9 F8               [12] 2632 	mov	r0,a
      0039AA 74 14            [12] 2633 	mov	a,#0x14
      0039AC 26               [12] 2634 	add	a,@r0
      0039AD FA               [12] 2635 	mov	r2,a
      0039AE 74 40            [12] 2636 	mov	a,#0x40
      0039B0 08               [12] 2637 	inc	r0
      0039B1 36               [12] 2638 	addc	a,@r0
      0039B2 FB               [12] 2639 	mov	r3,a
      0039B3 08               [12] 2640 	inc	r0
      0039B4 86 04            [24] 2641 	mov	ar4,@r0
      0039B6 8A 82            [24] 2642 	mov	dpl,r2
      0039B8 8B 83            [24] 2643 	mov	dph,r3
      0039BA 8C F0            [24] 2644 	mov	b,r4
      0039BC 12 66 3A         [24] 2645 	lcall	__gptrget
      0039BF FA               [12] 2646 	mov	r2,a
      0039C0 A3               [24] 2647 	inc	dptr
      0039C1 12 66 3A         [24] 2648 	lcall	__gptrget
      0039C4 FB               [12] 2649 	mov	r3,a
      0039C5 A3               [24] 2650 	inc	dptr
      0039C6 12 66 3A         [24] 2651 	lcall	__gptrget
      0039C9 FC               [12] 2652 	mov	r4,a
      0039CA E5 08            [12] 2653 	mov	a,_bp
      0039CC 24 1A            [12] 2654 	add	a,#0x1a
      0039CE F8               [12] 2655 	mov	r0,a
      0039CF E6               [12] 2656 	mov	a,@r0
      0039D0 C0 E0            [24] 2657 	push	acc
      0039D2 08               [12] 2658 	inc	r0
      0039D3 E6               [12] 2659 	mov	a,@r0
      0039D4 C0 E0            [24] 2660 	push	acc
      0039D6 08               [12] 2661 	inc	r0
      0039D7 E6               [12] 2662 	mov	a,@r0
      0039D8 C0 E0            [24] 2663 	push	acc
      0039DA 08               [12] 2664 	inc	r0
      0039DB E6               [12] 2665 	mov	a,@r0
      0039DC C0 E0            [24] 2666 	push	acc
      0039DE 8A 82            [24] 2667 	mov	dpl,r2
      0039E0 8B 83            [24] 2668 	mov	dph,r3
      0039E2 8C F0            [24] 2669 	mov	b,r4
      0039E4 12 26 B5         [24] 2670 	lcall	_stack_push
      0039E7 AB 82            [24] 2671 	mov	r3,dpl
      0039E9 AC 83            [24] 2672 	mov	r4,dph
      0039EB E5 81            [12] 2673 	mov	a,sp
      0039ED 24 FC            [12] 2674 	add	a,#0xfc
      0039EF F5 81            [12] 2675 	mov	sp,a
      0039F1 EB               [12] 2676 	mov	a,r3
      0039F2 4C               [12] 2677 	orl	a,r4
      0039F3 60 03            [24] 2678 	jz	00562$
      0039F5 02 4F 7E         [24] 2679 	ljmp	00249$
      0039F8                       2680 00562$:
      0039F8 90 7F 1D         [24] 2681 	mov	dptr,#___str_11
      0039FB 75 F0 80         [24] 2682 	mov	b,#0x80
      0039FE 12 5E F5         [24] 2683 	lcall	_printstr
                                   2684 ;	calc.c:145: break;
      003A01 02 4F 7E         [24] 2685 	ljmp	00249$
                                   2686 ;	calc.c:146: case 'U':
      003A04                       2687 00139$:
                                   2688 ;	calc.c:147: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003A04 E5 08            [12] 2689 	mov	a,_bp
      003A06 24 1A            [12] 2690 	add	a,#0x1a
      003A08 FF               [12] 2691 	mov	r7,a
      003A09 7E 00            [12] 2692 	mov	r6,#0x00
      003A0B 7D 40            [12] 2693 	mov	r5,#0x40
      003A0D E5 08            [12] 2694 	mov	a,_bp
      003A0F 24 17            [12] 2695 	add	a,#0x17
      003A11 F8               [12] 2696 	mov	r0,a
      003A12 74 14            [12] 2697 	mov	a,#0x14
      003A14 26               [12] 2698 	add	a,@r0
      003A15 FA               [12] 2699 	mov	r2,a
      003A16 ED               [12] 2700 	mov	a,r5
      003A17 08               [12] 2701 	inc	r0
      003A18 36               [12] 2702 	addc	a,@r0
      003A19 FB               [12] 2703 	mov	r3,a
      003A1A 08               [12] 2704 	inc	r0
      003A1B 86 04            [24] 2705 	mov	ar4,@r0
      003A1D 8A 82            [24] 2706 	mov	dpl,r2
      003A1F 8B 83            [24] 2707 	mov	dph,r3
      003A21 8C F0            [24] 2708 	mov	b,r4
      003A23 12 66 3A         [24] 2709 	lcall	__gptrget
      003A26 FA               [12] 2710 	mov	r2,a
      003A27 A3               [24] 2711 	inc	dptr
      003A28 12 66 3A         [24] 2712 	lcall	__gptrget
      003A2B FB               [12] 2713 	mov	r3,a
      003A2C A3               [24] 2714 	inc	dptr
      003A2D 12 66 3A         [24] 2715 	lcall	__gptrget
      003A30 FC               [12] 2716 	mov	r4,a
      003A31 C0 07            [24] 2717 	push	ar7
      003A33 C0 06            [24] 2718 	push	ar6
      003A35 C0 05            [24] 2719 	push	ar5
      003A37 8A 82            [24] 2720 	mov	dpl,r2
      003A39 8B 83            [24] 2721 	mov	dph,r3
      003A3B 8C F0            [24] 2722 	mov	b,r4
      003A3D 12 28 5E         [24] 2723 	lcall	_stack_peek
      003A40 AB 82            [24] 2724 	mov	r3,dpl
      003A42 AC 83            [24] 2725 	mov	r4,dph
      003A44 15 81            [12] 2726 	dec	sp
      003A46 15 81            [12] 2727 	dec	sp
      003A48 15 81            [12] 2728 	dec	sp
      003A4A EB               [12] 2729 	mov	a,r3
      003A4B 4C               [12] 2730 	orl	a,r4
      003A4C 70 0C            [24] 2731 	jnz	00143$
      003A4E 90 7F 3A         [24] 2732 	mov	dptr,#___str_12
      003A51 75 F0 80         [24] 2733 	mov	b,#0x80
      003A54 12 5E F5         [24] 2734 	lcall	_printstr
      003A57 02 4F 7E         [24] 2735 	ljmp	00249$
      003A5A                       2736 00143$:
                                   2737 ;	calc.c:148: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      003A5A E5 08            [12] 2738 	mov	a,_bp
      003A5C 24 17            [12] 2739 	add	a,#0x17
      003A5E F8               [12] 2740 	mov	r0,a
      003A5F 74 11            [12] 2741 	mov	a,#0x11
      003A61 26               [12] 2742 	add	a,@r0
      003A62 FA               [12] 2743 	mov	r2,a
      003A63 74 40            [12] 2744 	mov	a,#0x40
      003A65 08               [12] 2745 	inc	r0
      003A66 36               [12] 2746 	addc	a,@r0
      003A67 FB               [12] 2747 	mov	r3,a
      003A68 08               [12] 2748 	inc	r0
      003A69 86 04            [24] 2749 	mov	ar4,@r0
      003A6B 8A 82            [24] 2750 	mov	dpl,r2
      003A6D 8B 83            [24] 2751 	mov	dph,r3
      003A6F 8C F0            [24] 2752 	mov	b,r4
      003A71 12 66 3A         [24] 2753 	lcall	__gptrget
      003A74 FA               [12] 2754 	mov	r2,a
      003A75 A3               [24] 2755 	inc	dptr
      003A76 12 66 3A         [24] 2756 	lcall	__gptrget
      003A79 FB               [12] 2757 	mov	r3,a
      003A7A A3               [24] 2758 	inc	dptr
      003A7B 12 66 3A         [24] 2759 	lcall	__gptrget
      003A7E FC               [12] 2760 	mov	r4,a
      003A7F E5 08            [12] 2761 	mov	a,_bp
      003A81 24 1A            [12] 2762 	add	a,#0x1a
      003A83 F8               [12] 2763 	mov	r0,a
      003A84 E6               [12] 2764 	mov	a,@r0
      003A85 C0 E0            [24] 2765 	push	acc
      003A87 08               [12] 2766 	inc	r0
      003A88 E6               [12] 2767 	mov	a,@r0
      003A89 C0 E0            [24] 2768 	push	acc
      003A8B 08               [12] 2769 	inc	r0
      003A8C E6               [12] 2770 	mov	a,@r0
      003A8D C0 E0            [24] 2771 	push	acc
      003A8F 08               [12] 2772 	inc	r0
      003A90 E6               [12] 2773 	mov	a,@r0
      003A91 C0 E0            [24] 2774 	push	acc
      003A93 8A 82            [24] 2775 	mov	dpl,r2
      003A95 8B 83            [24] 2776 	mov	dph,r3
      003A97 8C F0            [24] 2777 	mov	b,r4
      003A99 12 26 B5         [24] 2778 	lcall	_stack_push
      003A9C AB 82            [24] 2779 	mov	r3,dpl
      003A9E AC 83            [24] 2780 	mov	r4,dph
      003AA0 E5 81            [12] 2781 	mov	a,sp
      003AA2 24 FC            [12] 2782 	add	a,#0xfc
      003AA4 F5 81            [12] 2783 	mov	sp,a
      003AA6 EB               [12] 2784 	mov	a,r3
      003AA7 4C               [12] 2785 	orl	a,r4
      003AA8 60 03            [24] 2786 	jz	00564$
      003AAA 02 4F 7E         [24] 2787 	ljmp	00249$
      003AAD                       2788 00564$:
      003AAD 90 7F 58         [24] 2789 	mov	dptr,#___str_13
      003AB0 75 F0 80         [24] 2790 	mov	b,#0x80
      003AB3 12 5E F5         [24] 2791 	lcall	_printstr
                                   2792 ;	calc.c:149: break;
      003AB6 02 4F 7E         [24] 2793 	ljmp	00249$
                                   2794 ;	calc.c:150: case 'T':
      003AB9                       2795 00145$:
                                   2796 ;	calc.c:151: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003AB9 E5 08            [12] 2797 	mov	a,_bp
      003ABB 24 1A            [12] 2798 	add	a,#0x1a
      003ABD FF               [12] 2799 	mov	r7,a
      003ABE 7E 00            [12] 2800 	mov	r6,#0x00
      003AC0 7D 40            [12] 2801 	mov	r5,#0x40
      003AC2 E5 08            [12] 2802 	mov	a,_bp
      003AC4 24 17            [12] 2803 	add	a,#0x17
      003AC6 F8               [12] 2804 	mov	r0,a
      003AC7 E5 08            [12] 2805 	mov	a,_bp
      003AC9 24 05            [12] 2806 	add	a,#0x05
      003ACB F9               [12] 2807 	mov	r1,a
      003ACC 74 11            [12] 2808 	mov	a,#0x11
      003ACE 26               [12] 2809 	add	a,@r0
      003ACF F7               [12] 2810 	mov	@r1,a
      003AD0 74 40            [12] 2811 	mov	a,#0x40
      003AD2 08               [12] 2812 	inc	r0
      003AD3 36               [12] 2813 	addc	a,@r0
      003AD4 09               [12] 2814 	inc	r1
      003AD5 F7               [12] 2815 	mov	@r1,a
      003AD6 08               [12] 2816 	inc	r0
      003AD7 09               [12] 2817 	inc	r1
      003AD8 E6               [12] 2818 	mov	a,@r0
      003AD9 F7               [12] 2819 	mov	@r1,a
      003ADA E5 08            [12] 2820 	mov	a,_bp
      003ADC 24 05            [12] 2821 	add	a,#0x05
      003ADE F8               [12] 2822 	mov	r0,a
      003ADF 86 82            [24] 2823 	mov	dpl,@r0
      003AE1 08               [12] 2824 	inc	r0
      003AE2 86 83            [24] 2825 	mov	dph,@r0
      003AE4 08               [12] 2826 	inc	r0
      003AE5 86 F0            [24] 2827 	mov	b,@r0
      003AE7 12 66 3A         [24] 2828 	lcall	__gptrget
      003AEA FA               [12] 2829 	mov	r2,a
      003AEB A3               [24] 2830 	inc	dptr
      003AEC 12 66 3A         [24] 2831 	lcall	__gptrget
      003AEF FB               [12] 2832 	mov	r3,a
      003AF0 A3               [24] 2833 	inc	dptr
      003AF1 12 66 3A         [24] 2834 	lcall	__gptrget
      003AF4 FC               [12] 2835 	mov	r4,a
      003AF5 C0 07            [24] 2836 	push	ar7
      003AF7 C0 06            [24] 2837 	push	ar6
      003AF9 C0 05            [24] 2838 	push	ar5
      003AFB 8A 82            [24] 2839 	mov	dpl,r2
      003AFD 8B 83            [24] 2840 	mov	dph,r3
      003AFF 8C F0            [24] 2841 	mov	b,r4
      003B01 12 27 83         [24] 2842 	lcall	_stack_pop
      003B04 AB 82            [24] 2843 	mov	r3,dpl
      003B06 AC 83            [24] 2844 	mov	r4,dph
      003B08 15 81            [12] 2845 	dec	sp
      003B0A 15 81            [12] 2846 	dec	sp
      003B0C 15 81            [12] 2847 	dec	sp
      003B0E EB               [12] 2848 	mov	a,r3
      003B0F 4C               [12] 2849 	orl	a,r4
      003B10 70 0C            [24] 2850 	jnz	00150$
      003B12 90 7F 09         [24] 2851 	mov	dptr,#___str_10
      003B15 75 F0 80         [24] 2852 	mov	b,#0x80
      003B18 12 5E F5         [24] 2853 	lcall	_printstr
      003B1B 02 4F 7E         [24] 2854 	ljmp	00249$
      003B1E                       2855 00150$:
                                   2856 ;	calc.c:153: if (!stack_pop(ctx->ss, &d1)) {
      003B1E E5 08            [12] 2857 	mov	a,_bp
      003B20 24 1E            [12] 2858 	add	a,#0x1e
      003B22 FF               [12] 2859 	mov	r7,a
      003B23 7E 00            [12] 2860 	mov	r6,#0x00
      003B25 7D 40            [12] 2861 	mov	r5,#0x40
      003B27 E5 08            [12] 2862 	mov	a,_bp
      003B29 24 17            [12] 2863 	add	a,#0x17
      003B2B F8               [12] 2864 	mov	r0,a
      003B2C A9 08            [24] 2865 	mov	r1,_bp
      003B2E 09               [12] 2866 	inc	r1
      003B2F 09               [12] 2867 	inc	r1
      003B30 74 14            [12] 2868 	mov	a,#0x14
      003B32 26               [12] 2869 	add	a,@r0
      003B33 F7               [12] 2870 	mov	@r1,a
      003B34 74 40            [12] 2871 	mov	a,#0x40
      003B36 08               [12] 2872 	inc	r0
      003B37 36               [12] 2873 	addc	a,@r0
      003B38 09               [12] 2874 	inc	r1
      003B39 F7               [12] 2875 	mov	@r1,a
      003B3A 08               [12] 2876 	inc	r0
      003B3B 09               [12] 2877 	inc	r1
      003B3C E6               [12] 2878 	mov	a,@r0
      003B3D F7               [12] 2879 	mov	@r1,a
      003B3E A8 08            [24] 2880 	mov	r0,_bp
      003B40 08               [12] 2881 	inc	r0
      003B41 08               [12] 2882 	inc	r0
      003B42 86 82            [24] 2883 	mov	dpl,@r0
      003B44 08               [12] 2884 	inc	r0
      003B45 86 83            [24] 2885 	mov	dph,@r0
      003B47 08               [12] 2886 	inc	r0
      003B48 86 F0            [24] 2887 	mov	b,@r0
      003B4A 12 66 3A         [24] 2888 	lcall	__gptrget
      003B4D FA               [12] 2889 	mov	r2,a
      003B4E A3               [24] 2890 	inc	dptr
      003B4F 12 66 3A         [24] 2891 	lcall	__gptrget
      003B52 FB               [12] 2892 	mov	r3,a
      003B53 A3               [24] 2893 	inc	dptr
      003B54 12 66 3A         [24] 2894 	lcall	__gptrget
      003B57 FC               [12] 2895 	mov	r4,a
      003B58 C0 07            [24] 2896 	push	ar7
      003B5A C0 06            [24] 2897 	push	ar6
      003B5C C0 05            [24] 2898 	push	ar5
      003B5E 8A 82            [24] 2899 	mov	dpl,r2
      003B60 8B 83            [24] 2900 	mov	dph,r3
      003B62 8C F0            [24] 2901 	mov	b,r4
      003B64 12 27 83         [24] 2902 	lcall	_stack_pop
      003B67 AB 82            [24] 2903 	mov	r3,dpl
      003B69 AC 83            [24] 2904 	mov	r4,dph
      003B6B 15 81            [12] 2905 	dec	sp
      003B6D 15 81            [12] 2906 	dec	sp
      003B6F 15 81            [12] 2907 	dec	sp
      003B71 EB               [12] 2908 	mov	a,r3
      003B72 4C               [12] 2909 	orl	a,r4
      003B73 70 4A            [24] 2910 	jnz	00147$
                                   2911 ;	calc.c:154: printstr("\r\nsecondary stack underflow\r\n");
      003B75 90 7F 3A         [24] 2912 	mov	dptr,#___str_12
      003B78 75 F0 80         [24] 2913 	mov	b,#0x80
      003B7B 12 5E F5         [24] 2914 	lcall	_printstr
                                   2915 ;	calc.c:155: (void)stack_push(ctx->ps, d0);
      003B7E E5 08            [12] 2916 	mov	a,_bp
      003B80 24 05            [12] 2917 	add	a,#0x05
      003B82 F8               [12] 2918 	mov	r0,a
      003B83 86 82            [24] 2919 	mov	dpl,@r0
      003B85 08               [12] 2920 	inc	r0
      003B86 86 83            [24] 2921 	mov	dph,@r0
      003B88 08               [12] 2922 	inc	r0
      003B89 86 F0            [24] 2923 	mov	b,@r0
      003B8B 12 66 3A         [24] 2924 	lcall	__gptrget
      003B8E FA               [12] 2925 	mov	r2,a
      003B8F A3               [24] 2926 	inc	dptr
      003B90 12 66 3A         [24] 2927 	lcall	__gptrget
      003B93 FB               [12] 2928 	mov	r3,a
      003B94 A3               [24] 2929 	inc	dptr
      003B95 12 66 3A         [24] 2930 	lcall	__gptrget
      003B98 FC               [12] 2931 	mov	r4,a
      003B99 E5 08            [12] 2932 	mov	a,_bp
      003B9B 24 1A            [12] 2933 	add	a,#0x1a
      003B9D F8               [12] 2934 	mov	r0,a
      003B9E E6               [12] 2935 	mov	a,@r0
      003B9F C0 E0            [24] 2936 	push	acc
      003BA1 08               [12] 2937 	inc	r0
      003BA2 E6               [12] 2938 	mov	a,@r0
      003BA3 C0 E0            [24] 2939 	push	acc
      003BA5 08               [12] 2940 	inc	r0
      003BA6 E6               [12] 2941 	mov	a,@r0
      003BA7 C0 E0            [24] 2942 	push	acc
      003BA9 08               [12] 2943 	inc	r0
      003BAA E6               [12] 2944 	mov	a,@r0
      003BAB C0 E0            [24] 2945 	push	acc
      003BAD 8A 82            [24] 2946 	mov	dpl,r2
      003BAF 8B 83            [24] 2947 	mov	dph,r3
      003BB1 8C F0            [24] 2948 	mov	b,r4
      003BB3 12 26 B5         [24] 2949 	lcall	_stack_push
      003BB6 E5 81            [12] 2950 	mov	a,sp
      003BB8 24 FC            [12] 2951 	add	a,#0xfc
      003BBA F5 81            [12] 2952 	mov	sp,a
      003BBC 02 4F 7E         [24] 2953 	ljmp	00249$
      003BBF                       2954 00147$:
                                   2955 ;	calc.c:157: (void)stack_push(ctx->ps, d1);
      003BBF E5 08            [12] 2956 	mov	a,_bp
      003BC1 24 05            [12] 2957 	add	a,#0x05
      003BC3 F8               [12] 2958 	mov	r0,a
      003BC4 86 82            [24] 2959 	mov	dpl,@r0
      003BC6 08               [12] 2960 	inc	r0
      003BC7 86 83            [24] 2961 	mov	dph,@r0
      003BC9 08               [12] 2962 	inc	r0
      003BCA 86 F0            [24] 2963 	mov	b,@r0
      003BCC 12 66 3A         [24] 2964 	lcall	__gptrget
      003BCF FA               [12] 2965 	mov	r2,a
      003BD0 A3               [24] 2966 	inc	dptr
      003BD1 12 66 3A         [24] 2967 	lcall	__gptrget
      003BD4 FB               [12] 2968 	mov	r3,a
      003BD5 A3               [24] 2969 	inc	dptr
      003BD6 12 66 3A         [24] 2970 	lcall	__gptrget
      003BD9 FC               [12] 2971 	mov	r4,a
      003BDA E5 08            [12] 2972 	mov	a,_bp
      003BDC 24 1E            [12] 2973 	add	a,#0x1e
      003BDE F8               [12] 2974 	mov	r0,a
      003BDF E6               [12] 2975 	mov	a,@r0
      003BE0 C0 E0            [24] 2976 	push	acc
      003BE2 08               [12] 2977 	inc	r0
      003BE3 E6               [12] 2978 	mov	a,@r0
      003BE4 C0 E0            [24] 2979 	push	acc
      003BE6 08               [12] 2980 	inc	r0
      003BE7 E6               [12] 2981 	mov	a,@r0
      003BE8 C0 E0            [24] 2982 	push	acc
      003BEA 08               [12] 2983 	inc	r0
      003BEB E6               [12] 2984 	mov	a,@r0
      003BEC C0 E0            [24] 2985 	push	acc
      003BEE 8A 82            [24] 2986 	mov	dpl,r2
      003BF0 8B 83            [24] 2987 	mov	dph,r3
      003BF2 8C F0            [24] 2988 	mov	b,r4
      003BF4 12 26 B5         [24] 2989 	lcall	_stack_push
      003BF7 E5 81            [12] 2990 	mov	a,sp
      003BF9 24 FC            [12] 2991 	add	a,#0xfc
      003BFB F5 81            [12] 2992 	mov	sp,a
                                   2993 ;	calc.c:158: (void)stack_push(ctx->ss, d0);
      003BFD A8 08            [24] 2994 	mov	r0,_bp
      003BFF 08               [12] 2995 	inc	r0
      003C00 08               [12] 2996 	inc	r0
      003C01 86 82            [24] 2997 	mov	dpl,@r0
      003C03 08               [12] 2998 	inc	r0
      003C04 86 83            [24] 2999 	mov	dph,@r0
      003C06 08               [12] 3000 	inc	r0
      003C07 86 F0            [24] 3001 	mov	b,@r0
      003C09 12 66 3A         [24] 3002 	lcall	__gptrget
      003C0C FA               [12] 3003 	mov	r2,a
      003C0D A3               [24] 3004 	inc	dptr
      003C0E 12 66 3A         [24] 3005 	lcall	__gptrget
      003C11 FB               [12] 3006 	mov	r3,a
      003C12 A3               [24] 3007 	inc	dptr
      003C13 12 66 3A         [24] 3008 	lcall	__gptrget
      003C16 FC               [12] 3009 	mov	r4,a
      003C17 E5 08            [12] 3010 	mov	a,_bp
      003C19 24 1A            [12] 3011 	add	a,#0x1a
      003C1B F8               [12] 3012 	mov	r0,a
      003C1C E6               [12] 3013 	mov	a,@r0
      003C1D C0 E0            [24] 3014 	push	acc
      003C1F 08               [12] 3015 	inc	r0
      003C20 E6               [12] 3016 	mov	a,@r0
      003C21 C0 E0            [24] 3017 	push	acc
      003C23 08               [12] 3018 	inc	r0
      003C24 E6               [12] 3019 	mov	a,@r0
      003C25 C0 E0            [24] 3020 	push	acc
      003C27 08               [12] 3021 	inc	r0
      003C28 E6               [12] 3022 	mov	a,@r0
      003C29 C0 E0            [24] 3023 	push	acc
      003C2B 8A 82            [24] 3024 	mov	dpl,r2
      003C2D 8B 83            [24] 3025 	mov	dph,r3
      003C2F 8C F0            [24] 3026 	mov	b,r4
      003C31 12 26 B5         [24] 3027 	lcall	_stack_push
      003C34 E5 81            [12] 3028 	mov	a,sp
      003C36 24 FC            [12] 3029 	add	a,#0xfc
      003C38 F5 81            [12] 3030 	mov	sp,a
                                   3031 ;	calc.c:161: break;
      003C3A 02 4F 7E         [24] 3032 	ljmp	00249$
                                   3033 ;	calc.c:162: case 'X':
      003C3D                       3034 00152$:
                                   3035 ;	calc.c:163: t0 = ctx->ps;
      003C3D E5 08            [12] 3036 	mov	a,_bp
      003C3F 24 17            [12] 3037 	add	a,#0x17
      003C41 F8               [12] 3038 	mov	r0,a
      003C42 E5 08            [12] 3039 	mov	a,_bp
      003C44 24 08            [12] 3040 	add	a,#0x08
      003C46 F9               [12] 3041 	mov	r1,a
      003C47 74 11            [12] 3042 	mov	a,#0x11
      003C49 26               [12] 3043 	add	a,@r0
      003C4A F7               [12] 3044 	mov	@r1,a
      003C4B 74 40            [12] 3045 	mov	a,#0x40
      003C4D 08               [12] 3046 	inc	r0
      003C4E 36               [12] 3047 	addc	a,@r0
      003C4F 09               [12] 3048 	inc	r1
      003C50 F7               [12] 3049 	mov	@r1,a
      003C51 08               [12] 3050 	inc	r0
      003C52 09               [12] 3051 	inc	r1
      003C53 E6               [12] 3052 	mov	a,@r0
      003C54 F7               [12] 3053 	mov	@r1,a
      003C55 E5 08            [12] 3054 	mov	a,_bp
      003C57 24 08            [12] 3055 	add	a,#0x08
      003C59 F8               [12] 3056 	mov	r0,a
      003C5A 86 82            [24] 3057 	mov	dpl,@r0
      003C5C 08               [12] 3058 	inc	r0
      003C5D 86 83            [24] 3059 	mov	dph,@r0
      003C5F 08               [12] 3060 	inc	r0
      003C60 86 F0            [24] 3061 	mov	b,@r0
      003C62 12 66 3A         [24] 3062 	lcall	__gptrget
      003C65 FF               [12] 3063 	mov	r7,a
      003C66 A3               [24] 3064 	inc	dptr
      003C67 12 66 3A         [24] 3065 	lcall	__gptrget
      003C6A FE               [12] 3066 	mov	r6,a
      003C6B A3               [24] 3067 	inc	dptr
      003C6C 12 66 3A         [24] 3068 	lcall	__gptrget
      003C6F FD               [12] 3069 	mov	r5,a
                                   3070 ;	calc.c:164: ctx->ps = ctx->ss;
      003C70 E5 08            [12] 3071 	mov	a,_bp
      003C72 24 17            [12] 3072 	add	a,#0x17
      003C74 F8               [12] 3073 	mov	r0,a
      003C75 E5 08            [12] 3074 	mov	a,_bp
      003C77 24 05            [12] 3075 	add	a,#0x05
      003C79 F9               [12] 3076 	mov	r1,a
      003C7A 74 14            [12] 3077 	mov	a,#0x14
      003C7C 26               [12] 3078 	add	a,@r0
      003C7D F7               [12] 3079 	mov	@r1,a
      003C7E 74 40            [12] 3080 	mov	a,#0x40
      003C80 08               [12] 3081 	inc	r0
      003C81 36               [12] 3082 	addc	a,@r0
      003C82 09               [12] 3083 	inc	r1
      003C83 F7               [12] 3084 	mov	@r1,a
      003C84 08               [12] 3085 	inc	r0
      003C85 09               [12] 3086 	inc	r1
      003C86 E6               [12] 3087 	mov	a,@r0
      003C87 F7               [12] 3088 	mov	@r1,a
      003C88 E5 08            [12] 3089 	mov	a,_bp
      003C8A 24 05            [12] 3090 	add	a,#0x05
      003C8C F8               [12] 3091 	mov	r0,a
      003C8D 86 82            [24] 3092 	mov	dpl,@r0
      003C8F 08               [12] 3093 	inc	r0
      003C90 86 83            [24] 3094 	mov	dph,@r0
      003C92 08               [12] 3095 	inc	r0
      003C93 86 F0            [24] 3096 	mov	b,@r0
      003C95 12 66 3A         [24] 3097 	lcall	__gptrget
      003C98 FA               [12] 3098 	mov	r2,a
      003C99 A3               [24] 3099 	inc	dptr
      003C9A 12 66 3A         [24] 3100 	lcall	__gptrget
      003C9D FB               [12] 3101 	mov	r3,a
      003C9E A3               [24] 3102 	inc	dptr
      003C9F 12 66 3A         [24] 3103 	lcall	__gptrget
      003CA2 FC               [12] 3104 	mov	r4,a
      003CA3 E5 08            [12] 3105 	mov	a,_bp
      003CA5 24 08            [12] 3106 	add	a,#0x08
      003CA7 F8               [12] 3107 	mov	r0,a
      003CA8 86 82            [24] 3108 	mov	dpl,@r0
      003CAA 08               [12] 3109 	inc	r0
      003CAB 86 83            [24] 3110 	mov	dph,@r0
      003CAD 08               [12] 3111 	inc	r0
      003CAE 86 F0            [24] 3112 	mov	b,@r0
      003CB0 EA               [12] 3113 	mov	a,r2
      003CB1 12 5E A9         [24] 3114 	lcall	__gptrput
      003CB4 A3               [24] 3115 	inc	dptr
      003CB5 EB               [12] 3116 	mov	a,r3
      003CB6 12 5E A9         [24] 3117 	lcall	__gptrput
      003CB9 A3               [24] 3118 	inc	dptr
      003CBA EC               [12] 3119 	mov	a,r4
      003CBB 12 5E A9         [24] 3120 	lcall	__gptrput
                                   3121 ;	calc.c:165: ctx->ss = t0;
      003CBE E5 08            [12] 3122 	mov	a,_bp
      003CC0 24 05            [12] 3123 	add	a,#0x05
      003CC2 F8               [12] 3124 	mov	r0,a
      003CC3 86 82            [24] 3125 	mov	dpl,@r0
      003CC5 08               [12] 3126 	inc	r0
      003CC6 86 83            [24] 3127 	mov	dph,@r0
      003CC8 08               [12] 3128 	inc	r0
      003CC9 86 F0            [24] 3129 	mov	b,@r0
      003CCB EF               [12] 3130 	mov	a,r7
      003CCC 12 5E A9         [24] 3131 	lcall	__gptrput
      003CCF A3               [24] 3132 	inc	dptr
      003CD0 EE               [12] 3133 	mov	a,r6
      003CD1 12 5E A9         [24] 3134 	lcall	__gptrput
      003CD4 A3               [24] 3135 	inc	dptr
      003CD5 ED               [12] 3136 	mov	a,r5
      003CD6 12 5E A9         [24] 3137 	lcall	__gptrput
                                   3138 ;	calc.c:166: break;
      003CD9 02 4F 7E         [24] 3139 	ljmp	00249$
                                   3140 ;	calc.c:167: case '+':
      003CDC                       3141 00153$:
                                   3142 ;	calc.c:168: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003CDC E5 08            [12] 3143 	mov	a,_bp
      003CDE 24 1A            [12] 3144 	add	a,#0x1a
      003CE0 FF               [12] 3145 	mov	r7,a
      003CE1 7E 00            [12] 3146 	mov	r6,#0x00
      003CE3 7D 40            [12] 3147 	mov	r5,#0x40
      003CE5 E5 08            [12] 3148 	mov	a,_bp
      003CE7 24 17            [12] 3149 	add	a,#0x17
      003CE9 F8               [12] 3150 	mov	r0,a
      003CEA E5 08            [12] 3151 	mov	a,_bp
      003CEC 24 08            [12] 3152 	add	a,#0x08
      003CEE F9               [12] 3153 	mov	r1,a
      003CEF 74 11            [12] 3154 	mov	a,#0x11
      003CF1 26               [12] 3155 	add	a,@r0
      003CF2 F7               [12] 3156 	mov	@r1,a
      003CF3 74 40            [12] 3157 	mov	a,#0x40
      003CF5 08               [12] 3158 	inc	r0
      003CF6 36               [12] 3159 	addc	a,@r0
      003CF7 09               [12] 3160 	inc	r1
      003CF8 F7               [12] 3161 	mov	@r1,a
      003CF9 08               [12] 3162 	inc	r0
      003CFA 09               [12] 3163 	inc	r1
      003CFB E6               [12] 3164 	mov	a,@r0
      003CFC F7               [12] 3165 	mov	@r1,a
      003CFD E5 08            [12] 3166 	mov	a,_bp
      003CFF 24 08            [12] 3167 	add	a,#0x08
      003D01 F8               [12] 3168 	mov	r0,a
      003D02 86 82            [24] 3169 	mov	dpl,@r0
      003D04 08               [12] 3170 	inc	r0
      003D05 86 83            [24] 3171 	mov	dph,@r0
      003D07 08               [12] 3172 	inc	r0
      003D08 86 F0            [24] 3173 	mov	b,@r0
      003D0A 12 66 3A         [24] 3174 	lcall	__gptrget
      003D0D FA               [12] 3175 	mov	r2,a
      003D0E A3               [24] 3176 	inc	dptr
      003D0F 12 66 3A         [24] 3177 	lcall	__gptrget
      003D12 FB               [12] 3178 	mov	r3,a
      003D13 A3               [24] 3179 	inc	dptr
      003D14 12 66 3A         [24] 3180 	lcall	__gptrget
      003D17 FC               [12] 3181 	mov	r4,a
      003D18 C0 07            [24] 3182 	push	ar7
      003D1A C0 06            [24] 3183 	push	ar6
      003D1C C0 05            [24] 3184 	push	ar5
      003D1E 8A 82            [24] 3185 	mov	dpl,r2
      003D20 8B 83            [24] 3186 	mov	dph,r3
      003D22 8C F0            [24] 3187 	mov	b,r4
      003D24 12 27 83         [24] 3188 	lcall	_stack_pop
      003D27 AB 82            [24] 3189 	mov	r3,dpl
      003D29 AC 83            [24] 3190 	mov	r4,dph
      003D2B 15 81            [12] 3191 	dec	sp
      003D2D 15 81            [12] 3192 	dec	sp
      003D2F 15 81            [12] 3193 	dec	sp
      003D31 EB               [12] 3194 	mov	a,r3
      003D32 4C               [12] 3195 	orl	a,r4
      003D33 70 0C            [24] 3196 	jnz	00158$
      003D35 90 7F 09         [24] 3197 	mov	dptr,#___str_10
      003D38 75 F0 80         [24] 3198 	mov	b,#0x80
      003D3B 12 5E F5         [24] 3199 	lcall	_printstr
      003D3E 02 4F 7E         [24] 3200 	ljmp	00249$
      003D41                       3201 00158$:
                                   3202 ;	calc.c:169: else if (!stack_pop(ctx->ps, &d1)) {
      003D41 E5 08            [12] 3203 	mov	a,_bp
      003D43 24 1E            [12] 3204 	add	a,#0x1e
      003D45 FF               [12] 3205 	mov	r7,a
      003D46 7E 00            [12] 3206 	mov	r6,#0x00
      003D48 7D 40            [12] 3207 	mov	r5,#0x40
      003D4A E5 08            [12] 3208 	mov	a,_bp
      003D4C 24 08            [12] 3209 	add	a,#0x08
      003D4E F8               [12] 3210 	mov	r0,a
      003D4F 86 82            [24] 3211 	mov	dpl,@r0
      003D51 08               [12] 3212 	inc	r0
      003D52 86 83            [24] 3213 	mov	dph,@r0
      003D54 08               [12] 3214 	inc	r0
      003D55 86 F0            [24] 3215 	mov	b,@r0
      003D57 12 66 3A         [24] 3216 	lcall	__gptrget
      003D5A FA               [12] 3217 	mov	r2,a
      003D5B A3               [24] 3218 	inc	dptr
      003D5C 12 66 3A         [24] 3219 	lcall	__gptrget
      003D5F FB               [12] 3220 	mov	r3,a
      003D60 A3               [24] 3221 	inc	dptr
      003D61 12 66 3A         [24] 3222 	lcall	__gptrget
      003D64 FC               [12] 3223 	mov	r4,a
      003D65 C0 07            [24] 3224 	push	ar7
      003D67 C0 06            [24] 3225 	push	ar6
      003D69 C0 05            [24] 3226 	push	ar5
      003D6B 8A 82            [24] 3227 	mov	dpl,r2
      003D6D 8B 83            [24] 3228 	mov	dph,r3
      003D6F 8C F0            [24] 3229 	mov	b,r4
      003D71 12 27 83         [24] 3230 	lcall	_stack_pop
      003D74 AB 82            [24] 3231 	mov	r3,dpl
      003D76 AC 83            [24] 3232 	mov	r4,dph
      003D78 15 81            [12] 3233 	dec	sp
      003D7A 15 81            [12] 3234 	dec	sp
      003D7C 15 81            [12] 3235 	dec	sp
      003D7E EB               [12] 3236 	mov	a,r3
      003D7F 4C               [12] 3237 	orl	a,r4
      003D80 70 4A            [24] 3238 	jnz	00155$
                                   3239 ;	calc.c:170: (void)stack_push(ctx->ps, d0);
      003D82 E5 08            [12] 3240 	mov	a,_bp
      003D84 24 08            [12] 3241 	add	a,#0x08
      003D86 F8               [12] 3242 	mov	r0,a
      003D87 86 82            [24] 3243 	mov	dpl,@r0
      003D89 08               [12] 3244 	inc	r0
      003D8A 86 83            [24] 3245 	mov	dph,@r0
      003D8C 08               [12] 3246 	inc	r0
      003D8D 86 F0            [24] 3247 	mov	b,@r0
      003D8F 12 66 3A         [24] 3248 	lcall	__gptrget
      003D92 FA               [12] 3249 	mov	r2,a
      003D93 A3               [24] 3250 	inc	dptr
      003D94 12 66 3A         [24] 3251 	lcall	__gptrget
      003D97 FB               [12] 3252 	mov	r3,a
      003D98 A3               [24] 3253 	inc	dptr
      003D99 12 66 3A         [24] 3254 	lcall	__gptrget
      003D9C FC               [12] 3255 	mov	r4,a
      003D9D E5 08            [12] 3256 	mov	a,_bp
      003D9F 24 1A            [12] 3257 	add	a,#0x1a
      003DA1 F8               [12] 3258 	mov	r0,a
      003DA2 E6               [12] 3259 	mov	a,@r0
      003DA3 C0 E0            [24] 3260 	push	acc
      003DA5 08               [12] 3261 	inc	r0
      003DA6 E6               [12] 3262 	mov	a,@r0
      003DA7 C0 E0            [24] 3263 	push	acc
      003DA9 08               [12] 3264 	inc	r0
      003DAA E6               [12] 3265 	mov	a,@r0
      003DAB C0 E0            [24] 3266 	push	acc
      003DAD 08               [12] 3267 	inc	r0
      003DAE E6               [12] 3268 	mov	a,@r0
      003DAF C0 E0            [24] 3269 	push	acc
      003DB1 8A 82            [24] 3270 	mov	dpl,r2
      003DB3 8B 83            [24] 3271 	mov	dph,r3
      003DB5 8C F0            [24] 3272 	mov	b,r4
      003DB7 12 26 B5         [24] 3273 	lcall	_stack_push
      003DBA E5 81            [12] 3274 	mov	a,sp
      003DBC 24 FC            [12] 3275 	add	a,#0xfc
      003DBE F5 81            [12] 3276 	mov	sp,a
                                   3277 ;	calc.c:171: printstr("\r\nstack underflow\r\n");
      003DC0 90 7F 09         [24] 3278 	mov	dptr,#___str_10
      003DC3 75 F0 80         [24] 3279 	mov	b,#0x80
      003DC6 12 5E F5         [24] 3280 	lcall	_printstr
      003DC9 02 4F 7E         [24] 3281 	ljmp	00249$
      003DCC                       3282 00155$:
                                   3283 ;	calc.c:173: d1 += d0;
      003DCC E5 08            [12] 3284 	mov	a,_bp
      003DCE 24 1E            [12] 3285 	add	a,#0x1e
      003DD0 F8               [12] 3286 	mov	r0,a
      003DD1 E5 08            [12] 3287 	mov	a,_bp
      003DD3 24 1A            [12] 3288 	add	a,#0x1a
      003DD5 F9               [12] 3289 	mov	r1,a
      003DD6 E7               [12] 3290 	mov	a,@r1
      003DD7 26               [12] 3291 	add	a,@r0
      003DD8 F6               [12] 3292 	mov	@r0,a
      003DD9 09               [12] 3293 	inc	r1
      003DDA E7               [12] 3294 	mov	a,@r1
      003DDB 08               [12] 3295 	inc	r0
      003DDC 36               [12] 3296 	addc	a,@r0
      003DDD F6               [12] 3297 	mov	@r0,a
      003DDE 09               [12] 3298 	inc	r1
      003DDF E7               [12] 3299 	mov	a,@r1
      003DE0 08               [12] 3300 	inc	r0
      003DE1 36               [12] 3301 	addc	a,@r0
      003DE2 F6               [12] 3302 	mov	@r0,a
      003DE3 09               [12] 3303 	inc	r1
      003DE4 E7               [12] 3304 	mov	a,@r1
      003DE5 08               [12] 3305 	inc	r0
      003DE6 36               [12] 3306 	addc	a,@r0
      003DE7 F6               [12] 3307 	mov	@r0,a
                                   3308 ;	calc.c:174: (void)stack_push(ctx->ps, d1);
      003DE8 E5 08            [12] 3309 	mov	a,_bp
      003DEA 24 08            [12] 3310 	add	a,#0x08
      003DEC F8               [12] 3311 	mov	r0,a
      003DED 86 82            [24] 3312 	mov	dpl,@r0
      003DEF 08               [12] 3313 	inc	r0
      003DF0 86 83            [24] 3314 	mov	dph,@r0
      003DF2 08               [12] 3315 	inc	r0
      003DF3 86 F0            [24] 3316 	mov	b,@r0
      003DF5 12 66 3A         [24] 3317 	lcall	__gptrget
      003DF8 FA               [12] 3318 	mov	r2,a
      003DF9 A3               [24] 3319 	inc	dptr
      003DFA 12 66 3A         [24] 3320 	lcall	__gptrget
      003DFD FB               [12] 3321 	mov	r3,a
      003DFE A3               [24] 3322 	inc	dptr
      003DFF 12 66 3A         [24] 3323 	lcall	__gptrget
      003E02 FC               [12] 3324 	mov	r4,a
      003E03 E5 08            [12] 3325 	mov	a,_bp
      003E05 24 1E            [12] 3326 	add	a,#0x1e
      003E07 F8               [12] 3327 	mov	r0,a
      003E08 E6               [12] 3328 	mov	a,@r0
      003E09 C0 E0            [24] 3329 	push	acc
      003E0B 08               [12] 3330 	inc	r0
      003E0C E6               [12] 3331 	mov	a,@r0
      003E0D C0 E0            [24] 3332 	push	acc
      003E0F 08               [12] 3333 	inc	r0
      003E10 E6               [12] 3334 	mov	a,@r0
      003E11 C0 E0            [24] 3335 	push	acc
      003E13 08               [12] 3336 	inc	r0
      003E14 E6               [12] 3337 	mov	a,@r0
      003E15 C0 E0            [24] 3338 	push	acc
      003E17 8A 82            [24] 3339 	mov	dpl,r2
      003E19 8B 83            [24] 3340 	mov	dph,r3
      003E1B 8C F0            [24] 3341 	mov	b,r4
      003E1D 12 26 B5         [24] 3342 	lcall	_stack_push
      003E20 E5 81            [12] 3343 	mov	a,sp
      003E22 24 FC            [12] 3344 	add	a,#0xfc
      003E24 F5 81            [12] 3345 	mov	sp,a
                                   3346 ;	calc.c:176: break;
      003E26 02 4F 7E         [24] 3347 	ljmp	00249$
                                   3348 ;	calc.c:177: case '-':
      003E29                       3349 00160$:
                                   3350 ;	calc.c:178: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003E29 E5 08            [12] 3351 	mov	a,_bp
      003E2B 24 1A            [12] 3352 	add	a,#0x1a
      003E2D FF               [12] 3353 	mov	r7,a
      003E2E 7E 00            [12] 3354 	mov	r6,#0x00
      003E30 7D 40            [12] 3355 	mov	r5,#0x40
      003E32 E5 08            [12] 3356 	mov	a,_bp
      003E34 24 17            [12] 3357 	add	a,#0x17
      003E36 F8               [12] 3358 	mov	r0,a
      003E37 E5 08            [12] 3359 	mov	a,_bp
      003E39 24 08            [12] 3360 	add	a,#0x08
      003E3B F9               [12] 3361 	mov	r1,a
      003E3C 74 11            [12] 3362 	mov	a,#0x11
      003E3E 26               [12] 3363 	add	a,@r0
      003E3F F7               [12] 3364 	mov	@r1,a
      003E40 74 40            [12] 3365 	mov	a,#0x40
      003E42 08               [12] 3366 	inc	r0
      003E43 36               [12] 3367 	addc	a,@r0
      003E44 09               [12] 3368 	inc	r1
      003E45 F7               [12] 3369 	mov	@r1,a
      003E46 08               [12] 3370 	inc	r0
      003E47 09               [12] 3371 	inc	r1
      003E48 E6               [12] 3372 	mov	a,@r0
      003E49 F7               [12] 3373 	mov	@r1,a
      003E4A E5 08            [12] 3374 	mov	a,_bp
      003E4C 24 08            [12] 3375 	add	a,#0x08
      003E4E F8               [12] 3376 	mov	r0,a
      003E4F 86 82            [24] 3377 	mov	dpl,@r0
      003E51 08               [12] 3378 	inc	r0
      003E52 86 83            [24] 3379 	mov	dph,@r0
      003E54 08               [12] 3380 	inc	r0
      003E55 86 F0            [24] 3381 	mov	b,@r0
      003E57 12 66 3A         [24] 3382 	lcall	__gptrget
      003E5A FA               [12] 3383 	mov	r2,a
      003E5B A3               [24] 3384 	inc	dptr
      003E5C 12 66 3A         [24] 3385 	lcall	__gptrget
      003E5F FB               [12] 3386 	mov	r3,a
      003E60 A3               [24] 3387 	inc	dptr
      003E61 12 66 3A         [24] 3388 	lcall	__gptrget
      003E64 FC               [12] 3389 	mov	r4,a
      003E65 C0 07            [24] 3390 	push	ar7
      003E67 C0 06            [24] 3391 	push	ar6
      003E69 C0 05            [24] 3392 	push	ar5
      003E6B 8A 82            [24] 3393 	mov	dpl,r2
      003E6D 8B 83            [24] 3394 	mov	dph,r3
      003E6F 8C F0            [24] 3395 	mov	b,r4
      003E71 12 27 83         [24] 3396 	lcall	_stack_pop
      003E74 AB 82            [24] 3397 	mov	r3,dpl
      003E76 AC 83            [24] 3398 	mov	r4,dph
      003E78 15 81            [12] 3399 	dec	sp
      003E7A 15 81            [12] 3400 	dec	sp
      003E7C 15 81            [12] 3401 	dec	sp
      003E7E EB               [12] 3402 	mov	a,r3
      003E7F 4C               [12] 3403 	orl	a,r4
      003E80 70 0C            [24] 3404 	jnz	00165$
      003E82 90 7F 09         [24] 3405 	mov	dptr,#___str_10
      003E85 75 F0 80         [24] 3406 	mov	b,#0x80
      003E88 12 5E F5         [24] 3407 	lcall	_printstr
      003E8B 02 4F 7E         [24] 3408 	ljmp	00249$
      003E8E                       3409 00165$:
                                   3410 ;	calc.c:179: else if (!stack_pop(ctx->ps, &d1)) {
      003E8E E5 08            [12] 3411 	mov	a,_bp
      003E90 24 1E            [12] 3412 	add	a,#0x1e
      003E92 FF               [12] 3413 	mov	r7,a
      003E93 7E 00            [12] 3414 	mov	r6,#0x00
      003E95 7D 40            [12] 3415 	mov	r5,#0x40
      003E97 E5 08            [12] 3416 	mov	a,_bp
      003E99 24 08            [12] 3417 	add	a,#0x08
      003E9B F8               [12] 3418 	mov	r0,a
      003E9C 86 82            [24] 3419 	mov	dpl,@r0
      003E9E 08               [12] 3420 	inc	r0
      003E9F 86 83            [24] 3421 	mov	dph,@r0
      003EA1 08               [12] 3422 	inc	r0
      003EA2 86 F0            [24] 3423 	mov	b,@r0
      003EA4 12 66 3A         [24] 3424 	lcall	__gptrget
      003EA7 FA               [12] 3425 	mov	r2,a
      003EA8 A3               [24] 3426 	inc	dptr
      003EA9 12 66 3A         [24] 3427 	lcall	__gptrget
      003EAC FB               [12] 3428 	mov	r3,a
      003EAD A3               [24] 3429 	inc	dptr
      003EAE 12 66 3A         [24] 3430 	lcall	__gptrget
      003EB1 FC               [12] 3431 	mov	r4,a
      003EB2 C0 07            [24] 3432 	push	ar7
      003EB4 C0 06            [24] 3433 	push	ar6
      003EB6 C0 05            [24] 3434 	push	ar5
      003EB8 8A 82            [24] 3435 	mov	dpl,r2
      003EBA 8B 83            [24] 3436 	mov	dph,r3
      003EBC 8C F0            [24] 3437 	mov	b,r4
      003EBE 12 27 83         [24] 3438 	lcall	_stack_pop
      003EC1 AB 82            [24] 3439 	mov	r3,dpl
      003EC3 AC 83            [24] 3440 	mov	r4,dph
      003EC5 15 81            [12] 3441 	dec	sp
      003EC7 15 81            [12] 3442 	dec	sp
      003EC9 15 81            [12] 3443 	dec	sp
      003ECB EB               [12] 3444 	mov	a,r3
      003ECC 4C               [12] 3445 	orl	a,r4
      003ECD 70 4A            [24] 3446 	jnz	00162$
                                   3447 ;	calc.c:180: (void)stack_push(ctx->ps, d0);
      003ECF E5 08            [12] 3448 	mov	a,_bp
      003ED1 24 08            [12] 3449 	add	a,#0x08
      003ED3 F8               [12] 3450 	mov	r0,a
      003ED4 86 82            [24] 3451 	mov	dpl,@r0
      003ED6 08               [12] 3452 	inc	r0
      003ED7 86 83            [24] 3453 	mov	dph,@r0
      003ED9 08               [12] 3454 	inc	r0
      003EDA 86 F0            [24] 3455 	mov	b,@r0
      003EDC 12 66 3A         [24] 3456 	lcall	__gptrget
      003EDF FA               [12] 3457 	mov	r2,a
      003EE0 A3               [24] 3458 	inc	dptr
      003EE1 12 66 3A         [24] 3459 	lcall	__gptrget
      003EE4 FB               [12] 3460 	mov	r3,a
      003EE5 A3               [24] 3461 	inc	dptr
      003EE6 12 66 3A         [24] 3462 	lcall	__gptrget
      003EE9 FC               [12] 3463 	mov	r4,a
      003EEA E5 08            [12] 3464 	mov	a,_bp
      003EEC 24 1A            [12] 3465 	add	a,#0x1a
      003EEE F8               [12] 3466 	mov	r0,a
      003EEF E6               [12] 3467 	mov	a,@r0
      003EF0 C0 E0            [24] 3468 	push	acc
      003EF2 08               [12] 3469 	inc	r0
      003EF3 E6               [12] 3470 	mov	a,@r0
      003EF4 C0 E0            [24] 3471 	push	acc
      003EF6 08               [12] 3472 	inc	r0
      003EF7 E6               [12] 3473 	mov	a,@r0
      003EF8 C0 E0            [24] 3474 	push	acc
      003EFA 08               [12] 3475 	inc	r0
      003EFB E6               [12] 3476 	mov	a,@r0
      003EFC C0 E0            [24] 3477 	push	acc
      003EFE 8A 82            [24] 3478 	mov	dpl,r2
      003F00 8B 83            [24] 3479 	mov	dph,r3
      003F02 8C F0            [24] 3480 	mov	b,r4
      003F04 12 26 B5         [24] 3481 	lcall	_stack_push
      003F07 E5 81            [12] 3482 	mov	a,sp
      003F09 24 FC            [12] 3483 	add	a,#0xfc
      003F0B F5 81            [12] 3484 	mov	sp,a
                                   3485 ;	calc.c:181: printstr("\r\nstack underflow\r\n");
      003F0D 90 7F 09         [24] 3486 	mov	dptr,#___str_10
      003F10 75 F0 80         [24] 3487 	mov	b,#0x80
      003F13 12 5E F5         [24] 3488 	lcall	_printstr
      003F16 02 4F 7E         [24] 3489 	ljmp	00249$
      003F19                       3490 00162$:
                                   3491 ;	calc.c:183: d1 -= d0;
      003F19 E5 08            [12] 3492 	mov	a,_bp
      003F1B 24 1E            [12] 3493 	add	a,#0x1e
      003F1D F8               [12] 3494 	mov	r0,a
      003F1E E5 08            [12] 3495 	mov	a,_bp
      003F20 24 1A            [12] 3496 	add	a,#0x1a
      003F22 F9               [12] 3497 	mov	r1,a
      003F23 E6               [12] 3498 	mov	a,@r0
      003F24 C3               [12] 3499 	clr	c
      003F25 97               [12] 3500 	subb	a,@r1
      003F26 F6               [12] 3501 	mov	@r0,a
      003F27 08               [12] 3502 	inc	r0
      003F28 E6               [12] 3503 	mov	a,@r0
      003F29 09               [12] 3504 	inc	r1
      003F2A 97               [12] 3505 	subb	a,@r1
      003F2B F6               [12] 3506 	mov	@r0,a
      003F2C 08               [12] 3507 	inc	r0
      003F2D E6               [12] 3508 	mov	a,@r0
      003F2E 09               [12] 3509 	inc	r1
      003F2F 97               [12] 3510 	subb	a,@r1
      003F30 F6               [12] 3511 	mov	@r0,a
      003F31 08               [12] 3512 	inc	r0
      003F32 E6               [12] 3513 	mov	a,@r0
      003F33 09               [12] 3514 	inc	r1
      003F34 97               [12] 3515 	subb	a,@r1
      003F35 F6               [12] 3516 	mov	@r0,a
                                   3517 ;	calc.c:184: (void)stack_push(ctx->ps, d1);
      003F36 E5 08            [12] 3518 	mov	a,_bp
      003F38 24 08            [12] 3519 	add	a,#0x08
      003F3A F8               [12] 3520 	mov	r0,a
      003F3B 86 82            [24] 3521 	mov	dpl,@r0
      003F3D 08               [12] 3522 	inc	r0
      003F3E 86 83            [24] 3523 	mov	dph,@r0
      003F40 08               [12] 3524 	inc	r0
      003F41 86 F0            [24] 3525 	mov	b,@r0
      003F43 12 66 3A         [24] 3526 	lcall	__gptrget
      003F46 FA               [12] 3527 	mov	r2,a
      003F47 A3               [24] 3528 	inc	dptr
      003F48 12 66 3A         [24] 3529 	lcall	__gptrget
      003F4B FB               [12] 3530 	mov	r3,a
      003F4C A3               [24] 3531 	inc	dptr
      003F4D 12 66 3A         [24] 3532 	lcall	__gptrget
      003F50 FC               [12] 3533 	mov	r4,a
      003F51 E5 08            [12] 3534 	mov	a,_bp
      003F53 24 1E            [12] 3535 	add	a,#0x1e
      003F55 F8               [12] 3536 	mov	r0,a
      003F56 E6               [12] 3537 	mov	a,@r0
      003F57 C0 E0            [24] 3538 	push	acc
      003F59 08               [12] 3539 	inc	r0
      003F5A E6               [12] 3540 	mov	a,@r0
      003F5B C0 E0            [24] 3541 	push	acc
      003F5D 08               [12] 3542 	inc	r0
      003F5E E6               [12] 3543 	mov	a,@r0
      003F5F C0 E0            [24] 3544 	push	acc
      003F61 08               [12] 3545 	inc	r0
      003F62 E6               [12] 3546 	mov	a,@r0
      003F63 C0 E0            [24] 3547 	push	acc
      003F65 8A 82            [24] 3548 	mov	dpl,r2
      003F67 8B 83            [24] 3549 	mov	dph,r3
      003F69 8C F0            [24] 3550 	mov	b,r4
      003F6B 12 26 B5         [24] 3551 	lcall	_stack_push
      003F6E E5 81            [12] 3552 	mov	a,sp
      003F70 24 FC            [12] 3553 	add	a,#0xfc
      003F72 F5 81            [12] 3554 	mov	sp,a
                                   3555 ;	calc.c:186: break;
      003F74 02 4F 7E         [24] 3556 	ljmp	00249$
                                   3557 ;	calc.c:187: case '*':
      003F77                       3558 00167$:
                                   3559 ;	calc.c:188: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003F77 E5 08            [12] 3560 	mov	a,_bp
      003F79 24 1A            [12] 3561 	add	a,#0x1a
      003F7B FF               [12] 3562 	mov	r7,a
      003F7C 7E 00            [12] 3563 	mov	r6,#0x00
      003F7E 7D 40            [12] 3564 	mov	r5,#0x40
      003F80 E5 08            [12] 3565 	mov	a,_bp
      003F82 24 17            [12] 3566 	add	a,#0x17
      003F84 F8               [12] 3567 	mov	r0,a
      003F85 E5 08            [12] 3568 	mov	a,_bp
      003F87 24 08            [12] 3569 	add	a,#0x08
      003F89 F9               [12] 3570 	mov	r1,a
      003F8A 74 11            [12] 3571 	mov	a,#0x11
      003F8C 26               [12] 3572 	add	a,@r0
      003F8D F7               [12] 3573 	mov	@r1,a
      003F8E 74 40            [12] 3574 	mov	a,#0x40
      003F90 08               [12] 3575 	inc	r0
      003F91 36               [12] 3576 	addc	a,@r0
      003F92 09               [12] 3577 	inc	r1
      003F93 F7               [12] 3578 	mov	@r1,a
      003F94 08               [12] 3579 	inc	r0
      003F95 09               [12] 3580 	inc	r1
      003F96 E6               [12] 3581 	mov	a,@r0
      003F97 F7               [12] 3582 	mov	@r1,a
      003F98 E5 08            [12] 3583 	mov	a,_bp
      003F9A 24 08            [12] 3584 	add	a,#0x08
      003F9C F8               [12] 3585 	mov	r0,a
      003F9D 86 82            [24] 3586 	mov	dpl,@r0
      003F9F 08               [12] 3587 	inc	r0
      003FA0 86 83            [24] 3588 	mov	dph,@r0
      003FA2 08               [12] 3589 	inc	r0
      003FA3 86 F0            [24] 3590 	mov	b,@r0
      003FA5 12 66 3A         [24] 3591 	lcall	__gptrget
      003FA8 FA               [12] 3592 	mov	r2,a
      003FA9 A3               [24] 3593 	inc	dptr
      003FAA 12 66 3A         [24] 3594 	lcall	__gptrget
      003FAD FB               [12] 3595 	mov	r3,a
      003FAE A3               [24] 3596 	inc	dptr
      003FAF 12 66 3A         [24] 3597 	lcall	__gptrget
      003FB2 FC               [12] 3598 	mov	r4,a
      003FB3 C0 07            [24] 3599 	push	ar7
      003FB5 C0 06            [24] 3600 	push	ar6
      003FB7 C0 05            [24] 3601 	push	ar5
      003FB9 8A 82            [24] 3602 	mov	dpl,r2
      003FBB 8B 83            [24] 3603 	mov	dph,r3
      003FBD 8C F0            [24] 3604 	mov	b,r4
      003FBF 12 27 83         [24] 3605 	lcall	_stack_pop
      003FC2 AB 82            [24] 3606 	mov	r3,dpl
      003FC4 AC 83            [24] 3607 	mov	r4,dph
      003FC6 15 81            [12] 3608 	dec	sp
      003FC8 15 81            [12] 3609 	dec	sp
      003FCA 15 81            [12] 3610 	dec	sp
      003FCC EB               [12] 3611 	mov	a,r3
      003FCD 4C               [12] 3612 	orl	a,r4
      003FCE 70 0C            [24] 3613 	jnz	00172$
      003FD0 90 7F 09         [24] 3614 	mov	dptr,#___str_10
      003FD3 75 F0 80         [24] 3615 	mov	b,#0x80
      003FD6 12 5E F5         [24] 3616 	lcall	_printstr
      003FD9 02 4F 7E         [24] 3617 	ljmp	00249$
      003FDC                       3618 00172$:
                                   3619 ;	calc.c:189: else if (!stack_pop(ctx->ps, &d1)) {
      003FDC E5 08            [12] 3620 	mov	a,_bp
      003FDE 24 1E            [12] 3621 	add	a,#0x1e
      003FE0 FF               [12] 3622 	mov	r7,a
      003FE1 7E 00            [12] 3623 	mov	r6,#0x00
      003FE3 7D 40            [12] 3624 	mov	r5,#0x40
      003FE5 E5 08            [12] 3625 	mov	a,_bp
      003FE7 24 08            [12] 3626 	add	a,#0x08
      003FE9 F8               [12] 3627 	mov	r0,a
      003FEA 86 82            [24] 3628 	mov	dpl,@r0
      003FEC 08               [12] 3629 	inc	r0
      003FED 86 83            [24] 3630 	mov	dph,@r0
      003FEF 08               [12] 3631 	inc	r0
      003FF0 86 F0            [24] 3632 	mov	b,@r0
      003FF2 12 66 3A         [24] 3633 	lcall	__gptrget
      003FF5 FA               [12] 3634 	mov	r2,a
      003FF6 A3               [24] 3635 	inc	dptr
      003FF7 12 66 3A         [24] 3636 	lcall	__gptrget
      003FFA FB               [12] 3637 	mov	r3,a
      003FFB A3               [24] 3638 	inc	dptr
      003FFC 12 66 3A         [24] 3639 	lcall	__gptrget
      003FFF FC               [12] 3640 	mov	r4,a
      004000 C0 07            [24] 3641 	push	ar7
      004002 C0 06            [24] 3642 	push	ar6
      004004 C0 05            [24] 3643 	push	ar5
      004006 8A 82            [24] 3644 	mov	dpl,r2
      004008 8B 83            [24] 3645 	mov	dph,r3
      00400A 8C F0            [24] 3646 	mov	b,r4
      00400C 12 27 83         [24] 3647 	lcall	_stack_pop
      00400F AB 82            [24] 3648 	mov	r3,dpl
      004011 AC 83            [24] 3649 	mov	r4,dph
      004013 15 81            [12] 3650 	dec	sp
      004015 15 81            [12] 3651 	dec	sp
      004017 15 81            [12] 3652 	dec	sp
      004019 EB               [12] 3653 	mov	a,r3
      00401A 4C               [12] 3654 	orl	a,r4
      00401B 70 4A            [24] 3655 	jnz	00169$
                                   3656 ;	calc.c:190: (void)stack_push(ctx->ps, d0);
      00401D E5 08            [12] 3657 	mov	a,_bp
      00401F 24 08            [12] 3658 	add	a,#0x08
      004021 F8               [12] 3659 	mov	r0,a
      004022 86 82            [24] 3660 	mov	dpl,@r0
      004024 08               [12] 3661 	inc	r0
      004025 86 83            [24] 3662 	mov	dph,@r0
      004027 08               [12] 3663 	inc	r0
      004028 86 F0            [24] 3664 	mov	b,@r0
      00402A 12 66 3A         [24] 3665 	lcall	__gptrget
      00402D FA               [12] 3666 	mov	r2,a
      00402E A3               [24] 3667 	inc	dptr
      00402F 12 66 3A         [24] 3668 	lcall	__gptrget
      004032 FB               [12] 3669 	mov	r3,a
      004033 A3               [24] 3670 	inc	dptr
      004034 12 66 3A         [24] 3671 	lcall	__gptrget
      004037 FC               [12] 3672 	mov	r4,a
      004038 E5 08            [12] 3673 	mov	a,_bp
      00403A 24 1A            [12] 3674 	add	a,#0x1a
      00403C F8               [12] 3675 	mov	r0,a
      00403D E6               [12] 3676 	mov	a,@r0
      00403E C0 E0            [24] 3677 	push	acc
      004040 08               [12] 3678 	inc	r0
      004041 E6               [12] 3679 	mov	a,@r0
      004042 C0 E0            [24] 3680 	push	acc
      004044 08               [12] 3681 	inc	r0
      004045 E6               [12] 3682 	mov	a,@r0
      004046 C0 E0            [24] 3683 	push	acc
      004048 08               [12] 3684 	inc	r0
      004049 E6               [12] 3685 	mov	a,@r0
      00404A C0 E0            [24] 3686 	push	acc
      00404C 8A 82            [24] 3687 	mov	dpl,r2
      00404E 8B 83            [24] 3688 	mov	dph,r3
      004050 8C F0            [24] 3689 	mov	b,r4
      004052 12 26 B5         [24] 3690 	lcall	_stack_push
      004055 E5 81            [12] 3691 	mov	a,sp
      004057 24 FC            [12] 3692 	add	a,#0xfc
      004059 F5 81            [12] 3693 	mov	sp,a
                                   3694 ;	calc.c:191: printstr("\r\nstack underflow\r\n");
      00405B 90 7F 09         [24] 3695 	mov	dptr,#___str_10
      00405E 75 F0 80         [24] 3696 	mov	b,#0x80
      004061 12 5E F5         [24] 3697 	lcall	_printstr
      004064 02 4F 7E         [24] 3698 	ljmp	00249$
      004067                       3699 00169$:
                                   3700 ;	calc.c:193: d1 *= d0;
      004067 E5 08            [12] 3701 	mov	a,_bp
      004069 24 1A            [12] 3702 	add	a,#0x1a
      00406B F8               [12] 3703 	mov	r0,a
      00406C E6               [12] 3704 	mov	a,@r0
      00406D C0 E0            [24] 3705 	push	acc
      00406F 08               [12] 3706 	inc	r0
      004070 E6               [12] 3707 	mov	a,@r0
      004071 C0 E0            [24] 3708 	push	acc
      004073 08               [12] 3709 	inc	r0
      004074 E6               [12] 3710 	mov	a,@r0
      004075 C0 E0            [24] 3711 	push	acc
      004077 08               [12] 3712 	inc	r0
      004078 E6               [12] 3713 	mov	a,@r0
      004079 C0 E0            [24] 3714 	push	acc
      00407B E5 08            [12] 3715 	mov	a,_bp
      00407D 24 1E            [12] 3716 	add	a,#0x1e
      00407F F8               [12] 3717 	mov	r0,a
      004080 86 82            [24] 3718 	mov	dpl,@r0
      004082 08               [12] 3719 	inc	r0
      004083 86 83            [24] 3720 	mov	dph,@r0
      004085 08               [12] 3721 	inc	r0
      004086 86 F0            [24] 3722 	mov	b,@r0
      004088 08               [12] 3723 	inc	r0
      004089 E6               [12] 3724 	mov	a,@r0
      00408A 12 6A 33         [24] 3725 	lcall	__mullong
      00408D AF 82            [24] 3726 	mov	r7,dpl
      00408F AE 83            [24] 3727 	mov	r6,dph
      004091 AD F0            [24] 3728 	mov	r5,b
      004093 FC               [12] 3729 	mov	r4,a
      004094 E5 81            [12] 3730 	mov	a,sp
      004096 24 FC            [12] 3731 	add	a,#0xfc
      004098 F5 81            [12] 3732 	mov	sp,a
      00409A E5 08            [12] 3733 	mov	a,_bp
      00409C 24 1E            [12] 3734 	add	a,#0x1e
      00409E F8               [12] 3735 	mov	r0,a
      00409F A6 07            [24] 3736 	mov	@r0,ar7
      0040A1 08               [12] 3737 	inc	r0
      0040A2 A6 06            [24] 3738 	mov	@r0,ar6
      0040A4 08               [12] 3739 	inc	r0
      0040A5 A6 05            [24] 3740 	mov	@r0,ar5
      0040A7 08               [12] 3741 	inc	r0
      0040A8 A6 04            [24] 3742 	mov	@r0,ar4
                                   3743 ;	calc.c:194: (void)stack_push(ctx->ps, d1);
      0040AA E5 08            [12] 3744 	mov	a,_bp
      0040AC 24 08            [12] 3745 	add	a,#0x08
      0040AE F8               [12] 3746 	mov	r0,a
      0040AF 86 82            [24] 3747 	mov	dpl,@r0
      0040B1 08               [12] 3748 	inc	r0
      0040B2 86 83            [24] 3749 	mov	dph,@r0
      0040B4 08               [12] 3750 	inc	r0
      0040B5 86 F0            [24] 3751 	mov	b,@r0
      0040B7 12 66 3A         [24] 3752 	lcall	__gptrget
      0040BA FA               [12] 3753 	mov	r2,a
      0040BB A3               [24] 3754 	inc	dptr
      0040BC 12 66 3A         [24] 3755 	lcall	__gptrget
      0040BF FB               [12] 3756 	mov	r3,a
      0040C0 A3               [24] 3757 	inc	dptr
      0040C1 12 66 3A         [24] 3758 	lcall	__gptrget
      0040C4 FC               [12] 3759 	mov	r4,a
      0040C5 E5 08            [12] 3760 	mov	a,_bp
      0040C7 24 1E            [12] 3761 	add	a,#0x1e
      0040C9 F8               [12] 3762 	mov	r0,a
      0040CA E6               [12] 3763 	mov	a,@r0
      0040CB C0 E0            [24] 3764 	push	acc
      0040CD 08               [12] 3765 	inc	r0
      0040CE E6               [12] 3766 	mov	a,@r0
      0040CF C0 E0            [24] 3767 	push	acc
      0040D1 08               [12] 3768 	inc	r0
      0040D2 E6               [12] 3769 	mov	a,@r0
      0040D3 C0 E0            [24] 3770 	push	acc
      0040D5 08               [12] 3771 	inc	r0
      0040D6 E6               [12] 3772 	mov	a,@r0
      0040D7 C0 E0            [24] 3773 	push	acc
      0040D9 8A 82            [24] 3774 	mov	dpl,r2
      0040DB 8B 83            [24] 3775 	mov	dph,r3
      0040DD 8C F0            [24] 3776 	mov	b,r4
      0040DF 12 26 B5         [24] 3777 	lcall	_stack_push
      0040E2 E5 81            [12] 3778 	mov	a,sp
      0040E4 24 FC            [12] 3779 	add	a,#0xfc
      0040E6 F5 81            [12] 3780 	mov	sp,a
                                   3781 ;	calc.c:196: break;
      0040E8 02 4F 7E         [24] 3782 	ljmp	00249$
                                   3783 ;	calc.c:198: case '\\':
      0040EB                       3784 00175$:
                                   3785 ;	calc.c:199: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0040EB C0 05            [24] 3786 	push	ar5
      0040ED C0 06            [24] 3787 	push	ar6
      0040EF C0 07            [24] 3788 	push	ar7
      0040F1 E5 08            [12] 3789 	mov	a,_bp
      0040F3 24 1A            [12] 3790 	add	a,#0x1a
      0040F5 FC               [12] 3791 	mov	r4,a
      0040F6 7B 00            [12] 3792 	mov	r3,#0x00
      0040F8 7A 40            [12] 3793 	mov	r2,#0x40
      0040FA E5 08            [12] 3794 	mov	a,_bp
      0040FC 24 17            [12] 3795 	add	a,#0x17
      0040FE F8               [12] 3796 	mov	r0,a
      0040FF E5 08            [12] 3797 	mov	a,_bp
      004101 24 0B            [12] 3798 	add	a,#0x0b
      004103 F9               [12] 3799 	mov	r1,a
      004104 74 11            [12] 3800 	mov	a,#0x11
      004106 26               [12] 3801 	add	a,@r0
      004107 F7               [12] 3802 	mov	@r1,a
      004108 74 40            [12] 3803 	mov	a,#0x40
      00410A 08               [12] 3804 	inc	r0
      00410B 36               [12] 3805 	addc	a,@r0
      00410C 09               [12] 3806 	inc	r1
      00410D F7               [12] 3807 	mov	@r1,a
      00410E 08               [12] 3808 	inc	r0
      00410F 09               [12] 3809 	inc	r1
      004110 E6               [12] 3810 	mov	a,@r0
      004111 F7               [12] 3811 	mov	@r1,a
      004112 E5 08            [12] 3812 	mov	a,_bp
      004114 24 0B            [12] 3813 	add	a,#0x0b
      004116 F8               [12] 3814 	mov	r0,a
      004117 86 82            [24] 3815 	mov	dpl,@r0
      004119 08               [12] 3816 	inc	r0
      00411A 86 83            [24] 3817 	mov	dph,@r0
      00411C 08               [12] 3818 	inc	r0
      00411D 86 F0            [24] 3819 	mov	b,@r0
      00411F 12 66 3A         [24] 3820 	lcall	__gptrget
      004122 FD               [12] 3821 	mov	r5,a
      004123 A3               [24] 3822 	inc	dptr
      004124 12 66 3A         [24] 3823 	lcall	__gptrget
      004127 FE               [12] 3824 	mov	r6,a
      004128 A3               [24] 3825 	inc	dptr
      004129 12 66 3A         [24] 3826 	lcall	__gptrget
      00412C FF               [12] 3827 	mov	r7,a
      00412D C0 05            [24] 3828 	push	ar5
      00412F C0 04            [24] 3829 	push	ar4
      004131 C0 03            [24] 3830 	push	ar3
      004133 C0 02            [24] 3831 	push	ar2
      004135 8D 82            [24] 3832 	mov	dpl,r5
      004137 8E 83            [24] 3833 	mov	dph,r6
      004139 8F F0            [24] 3834 	mov	b,r7
      00413B 12 27 83         [24] 3835 	lcall	_stack_pop
      00413E AE 82            [24] 3836 	mov	r6,dpl
      004140 AF 83            [24] 3837 	mov	r7,dph
      004142 15 81            [12] 3838 	dec	sp
      004144 15 81            [12] 3839 	dec	sp
      004146 15 81            [12] 3840 	dec	sp
      004148 D0 05            [24] 3841 	pop	ar5
      00414A EE               [12] 3842 	mov	a,r6
      00414B 4F               [12] 3843 	orl	a,r7
      00414C D0 07            [24] 3844 	pop	ar7
      00414E D0 06            [24] 3845 	pop	ar6
      004150 D0 05            [24] 3846 	pop	ar5
      004152 70 0C            [24] 3847 	jnz	00186$
      004154 90 7F 09         [24] 3848 	mov	dptr,#___str_10
      004157 75 F0 80         [24] 3849 	mov	b,#0x80
      00415A 12 5E F5         [24] 3850 	lcall	_printstr
      00415D 02 4F 7E         [24] 3851 	ljmp	00249$
      004160                       3852 00186$:
                                   3853 ;	calc.c:200: else if (!stack_pop(ctx->ps, &d1)) {
      004160 C0 05            [24] 3854 	push	ar5
      004162 C0 06            [24] 3855 	push	ar6
      004164 C0 07            [24] 3856 	push	ar7
      004166 E5 08            [12] 3857 	mov	a,_bp
      004168 24 1E            [12] 3858 	add	a,#0x1e
      00416A FC               [12] 3859 	mov	r4,a
      00416B 7B 00            [12] 3860 	mov	r3,#0x00
      00416D 7A 40            [12] 3861 	mov	r2,#0x40
      00416F E5 08            [12] 3862 	mov	a,_bp
      004171 24 0B            [12] 3863 	add	a,#0x0b
      004173 F8               [12] 3864 	mov	r0,a
      004174 86 82            [24] 3865 	mov	dpl,@r0
      004176 08               [12] 3866 	inc	r0
      004177 86 83            [24] 3867 	mov	dph,@r0
      004179 08               [12] 3868 	inc	r0
      00417A 86 F0            [24] 3869 	mov	b,@r0
      00417C 12 66 3A         [24] 3870 	lcall	__gptrget
      00417F FD               [12] 3871 	mov	r5,a
      004180 A3               [24] 3872 	inc	dptr
      004181 12 66 3A         [24] 3873 	lcall	__gptrget
      004184 FE               [12] 3874 	mov	r6,a
      004185 A3               [24] 3875 	inc	dptr
      004186 12 66 3A         [24] 3876 	lcall	__gptrget
      004189 FF               [12] 3877 	mov	r7,a
      00418A C0 05            [24] 3878 	push	ar5
      00418C C0 04            [24] 3879 	push	ar4
      00418E C0 03            [24] 3880 	push	ar3
      004190 C0 02            [24] 3881 	push	ar2
      004192 8D 82            [24] 3882 	mov	dpl,r5
      004194 8E 83            [24] 3883 	mov	dph,r6
      004196 8F F0            [24] 3884 	mov	b,r7
      004198 12 27 83         [24] 3885 	lcall	_stack_pop
      00419B AE 82            [24] 3886 	mov	r6,dpl
      00419D AF 83            [24] 3887 	mov	r7,dph
      00419F 15 81            [12] 3888 	dec	sp
      0041A1 15 81            [12] 3889 	dec	sp
      0041A3 15 81            [12] 3890 	dec	sp
      0041A5 D0 05            [24] 3891 	pop	ar5
      0041A7 EE               [12] 3892 	mov	a,r6
      0041A8 4F               [12] 3893 	orl	a,r7
      0041A9 D0 07            [24] 3894 	pop	ar7
      0041AB D0 06            [24] 3895 	pop	ar6
      0041AD D0 05            [24] 3896 	pop	ar5
      0041AF 70 4A            [24] 3897 	jnz	00183$
                                   3898 ;	calc.c:201: (void)stack_push(ctx->ps, d0);
      0041B1 E5 08            [12] 3899 	mov	a,_bp
      0041B3 24 0B            [12] 3900 	add	a,#0x0b
      0041B5 F8               [12] 3901 	mov	r0,a
      0041B6 86 82            [24] 3902 	mov	dpl,@r0
      0041B8 08               [12] 3903 	inc	r0
      0041B9 86 83            [24] 3904 	mov	dph,@r0
      0041BB 08               [12] 3905 	inc	r0
      0041BC 86 F0            [24] 3906 	mov	b,@r0
      0041BE 12 66 3A         [24] 3907 	lcall	__gptrget
      0041C1 FA               [12] 3908 	mov	r2,a
      0041C2 A3               [24] 3909 	inc	dptr
      0041C3 12 66 3A         [24] 3910 	lcall	__gptrget
      0041C6 FB               [12] 3911 	mov	r3,a
      0041C7 A3               [24] 3912 	inc	dptr
      0041C8 12 66 3A         [24] 3913 	lcall	__gptrget
      0041CB FC               [12] 3914 	mov	r4,a
      0041CC E5 08            [12] 3915 	mov	a,_bp
      0041CE 24 1A            [12] 3916 	add	a,#0x1a
      0041D0 F8               [12] 3917 	mov	r0,a
      0041D1 E6               [12] 3918 	mov	a,@r0
      0041D2 C0 E0            [24] 3919 	push	acc
      0041D4 08               [12] 3920 	inc	r0
      0041D5 E6               [12] 3921 	mov	a,@r0
      0041D6 C0 E0            [24] 3922 	push	acc
      0041D8 08               [12] 3923 	inc	r0
      0041D9 E6               [12] 3924 	mov	a,@r0
      0041DA C0 E0            [24] 3925 	push	acc
      0041DC 08               [12] 3926 	inc	r0
      0041DD E6               [12] 3927 	mov	a,@r0
      0041DE C0 E0            [24] 3928 	push	acc
      0041E0 8A 82            [24] 3929 	mov	dpl,r2
      0041E2 8B 83            [24] 3930 	mov	dph,r3
      0041E4 8C F0            [24] 3931 	mov	b,r4
      0041E6 12 26 B5         [24] 3932 	lcall	_stack_push
      0041E9 E5 81            [12] 3933 	mov	a,sp
      0041EB 24 FC            [12] 3934 	add	a,#0xfc
      0041ED F5 81            [12] 3935 	mov	sp,a
                                   3936 ;	calc.c:202: printstr("\r\nstack underflow\r\n");
      0041EF 90 7F 09         [24] 3937 	mov	dptr,#___str_10
      0041F2 75 F0 80         [24] 3938 	mov	b,#0x80
      0041F5 12 5E F5         [24] 3939 	lcall	_printstr
      0041F8 02 4F 7E         [24] 3940 	ljmp	00249$
      0041FB                       3941 00183$:
                                   3942 ;	calc.c:203: } else if (!d0) {
      0041FB E5 08            [12] 3943 	mov	a,_bp
      0041FD 24 1A            [12] 3944 	add	a,#0x1a
      0041FF F8               [12] 3945 	mov	r0,a
      004200 E6               [12] 3946 	mov	a,@r0
      004201 08               [12] 3947 	inc	r0
      004202 46               [12] 3948 	orl	a,@r0
      004203 08               [12] 3949 	inc	r0
      004204 46               [12] 3950 	orl	a,@r0
      004205 08               [12] 3951 	inc	r0
      004206 46               [12] 3952 	orl	a,@r0
      004207 60 03            [24] 3953 	jz	00575$
      004209 02 42 94         [24] 3954 	ljmp	00180$
      00420C                       3955 00575$:
                                   3956 ;	calc.c:204: (void)stack_push(ctx->ps, d1);
      00420C E5 08            [12] 3957 	mov	a,_bp
      00420E 24 0B            [12] 3958 	add	a,#0x0b
      004210 F8               [12] 3959 	mov	r0,a
      004211 86 82            [24] 3960 	mov	dpl,@r0
      004213 08               [12] 3961 	inc	r0
      004214 86 83            [24] 3962 	mov	dph,@r0
      004216 08               [12] 3963 	inc	r0
      004217 86 F0            [24] 3964 	mov	b,@r0
      004219 12 66 3A         [24] 3965 	lcall	__gptrget
      00421C FA               [12] 3966 	mov	r2,a
      00421D A3               [24] 3967 	inc	dptr
      00421E 12 66 3A         [24] 3968 	lcall	__gptrget
      004221 FB               [12] 3969 	mov	r3,a
      004222 A3               [24] 3970 	inc	dptr
      004223 12 66 3A         [24] 3971 	lcall	__gptrget
      004226 FC               [12] 3972 	mov	r4,a
      004227 E5 08            [12] 3973 	mov	a,_bp
      004229 24 1E            [12] 3974 	add	a,#0x1e
      00422B F8               [12] 3975 	mov	r0,a
      00422C E6               [12] 3976 	mov	a,@r0
      00422D C0 E0            [24] 3977 	push	acc
      00422F 08               [12] 3978 	inc	r0
      004230 E6               [12] 3979 	mov	a,@r0
      004231 C0 E0            [24] 3980 	push	acc
      004233 08               [12] 3981 	inc	r0
      004234 E6               [12] 3982 	mov	a,@r0
      004235 C0 E0            [24] 3983 	push	acc
      004237 08               [12] 3984 	inc	r0
      004238 E6               [12] 3985 	mov	a,@r0
      004239 C0 E0            [24] 3986 	push	acc
      00423B 8A 82            [24] 3987 	mov	dpl,r2
      00423D 8B 83            [24] 3988 	mov	dph,r3
      00423F 8C F0            [24] 3989 	mov	b,r4
      004241 12 26 B5         [24] 3990 	lcall	_stack_push
      004244 E5 81            [12] 3991 	mov	a,sp
      004246 24 FC            [12] 3992 	add	a,#0xfc
      004248 F5 81            [12] 3993 	mov	sp,a
                                   3994 ;	calc.c:205: (void)stack_push(ctx->ps, d0);			
      00424A E5 08            [12] 3995 	mov	a,_bp
      00424C 24 0B            [12] 3996 	add	a,#0x0b
      00424E F8               [12] 3997 	mov	r0,a
      00424F 86 82            [24] 3998 	mov	dpl,@r0
      004251 08               [12] 3999 	inc	r0
      004252 86 83            [24] 4000 	mov	dph,@r0
      004254 08               [12] 4001 	inc	r0
      004255 86 F0            [24] 4002 	mov	b,@r0
      004257 12 66 3A         [24] 4003 	lcall	__gptrget
      00425A FA               [12] 4004 	mov	r2,a
      00425B A3               [24] 4005 	inc	dptr
      00425C 12 66 3A         [24] 4006 	lcall	__gptrget
      00425F FB               [12] 4007 	mov	r3,a
      004260 A3               [24] 4008 	inc	dptr
      004261 12 66 3A         [24] 4009 	lcall	__gptrget
      004264 FC               [12] 4010 	mov	r4,a
      004265 E5 08            [12] 4011 	mov	a,_bp
      004267 24 1A            [12] 4012 	add	a,#0x1a
      004269 F8               [12] 4013 	mov	r0,a
      00426A E6               [12] 4014 	mov	a,@r0
      00426B C0 E0            [24] 4015 	push	acc
      00426D 08               [12] 4016 	inc	r0
      00426E E6               [12] 4017 	mov	a,@r0
      00426F C0 E0            [24] 4018 	push	acc
      004271 08               [12] 4019 	inc	r0
      004272 E6               [12] 4020 	mov	a,@r0
      004273 C0 E0            [24] 4021 	push	acc
      004275 08               [12] 4022 	inc	r0
      004276 E6               [12] 4023 	mov	a,@r0
      004277 C0 E0            [24] 4024 	push	acc
      004279 8A 82            [24] 4025 	mov	dpl,r2
      00427B 8B 83            [24] 4026 	mov	dph,r3
      00427D 8C F0            [24] 4027 	mov	b,r4
      00427F 12 26 B5         [24] 4028 	lcall	_stack_push
      004282 E5 81            [12] 4029 	mov	a,sp
      004284 24 FC            [12] 4030 	add	a,#0xfc
      004286 F5 81            [12] 4031 	mov	sp,a
                                   4032 ;	calc.c:206: printstr("\r\ndivision by zero\r\n");
      004288 90 7F 6B         [24] 4033 	mov	dptr,#___str_14
      00428B 75 F0 80         [24] 4034 	mov	b,#0x80
      00428E 12 5E F5         [24] 4035 	lcall	_printstr
      004291 02 4F 7E         [24] 4036 	ljmp	00249$
      004294                       4037 00180$:
                                   4038 ;	calc.c:208: if (ctx->digit[0] == '/') d1 /= d0;
      004294 8D 82            [24] 4039 	mov	dpl,r5
      004296 8E 83            [24] 4040 	mov	dph,r6
      004298 8F F0            [24] 4041 	mov	b,r7
      00429A 12 66 3A         [24] 4042 	lcall	__gptrget
      00429D FC               [12] 4043 	mov	r4,a
      00429E BC 2F 45         [24] 4044 	cjne	r4,#0x2f,00177$
      0042A1 E5 08            [12] 4045 	mov	a,_bp
      0042A3 24 1A            [12] 4046 	add	a,#0x1a
      0042A5 F8               [12] 4047 	mov	r0,a
      0042A6 E6               [12] 4048 	mov	a,@r0
      0042A7 C0 E0            [24] 4049 	push	acc
      0042A9 08               [12] 4050 	inc	r0
      0042AA E6               [12] 4051 	mov	a,@r0
      0042AB C0 E0            [24] 4052 	push	acc
      0042AD 08               [12] 4053 	inc	r0
      0042AE E6               [12] 4054 	mov	a,@r0
      0042AF C0 E0            [24] 4055 	push	acc
      0042B1 08               [12] 4056 	inc	r0
      0042B2 E6               [12] 4057 	mov	a,@r0
      0042B3 C0 E0            [24] 4058 	push	acc
      0042B5 E5 08            [12] 4059 	mov	a,_bp
      0042B7 24 1E            [12] 4060 	add	a,#0x1e
      0042B9 F8               [12] 4061 	mov	r0,a
      0042BA 86 82            [24] 4062 	mov	dpl,@r0
      0042BC 08               [12] 4063 	inc	r0
      0042BD 86 83            [24] 4064 	mov	dph,@r0
      0042BF 08               [12] 4065 	inc	r0
      0042C0 86 F0            [24] 4066 	mov	b,@r0
      0042C2 08               [12] 4067 	inc	r0
      0042C3 E6               [12] 4068 	mov	a,@r0
      0042C4 12 64 31         [24] 4069 	lcall	__divslong
      0042C7 AF 82            [24] 4070 	mov	r7,dpl
      0042C9 AE 83            [24] 4071 	mov	r6,dph
      0042CB AD F0            [24] 4072 	mov	r5,b
      0042CD FC               [12] 4073 	mov	r4,a
      0042CE E5 81            [12] 4074 	mov	a,sp
      0042D0 24 FC            [12] 4075 	add	a,#0xfc
      0042D2 F5 81            [12] 4076 	mov	sp,a
      0042D4 E5 08            [12] 4077 	mov	a,_bp
      0042D6 24 1E            [12] 4078 	add	a,#0x1e
      0042D8 F8               [12] 4079 	mov	r0,a
      0042D9 A6 07            [24] 4080 	mov	@r0,ar7
      0042DB 08               [12] 4081 	inc	r0
      0042DC A6 06            [24] 4082 	mov	@r0,ar6
      0042DE 08               [12] 4083 	inc	r0
      0042DF A6 05            [24] 4084 	mov	@r0,ar5
      0042E1 08               [12] 4085 	inc	r0
      0042E2 A6 04            [24] 4086 	mov	@r0,ar4
      0042E4 80 63            [24] 4087 	sjmp	00178$
      0042E6                       4088 00177$:
                                   4089 ;	calc.c:209: else d1 = (unsigned long)d1 / (unsigned long)d0;
      0042E6 E5 08            [12] 4090 	mov	a,_bp
      0042E8 24 1E            [12] 4091 	add	a,#0x1e
      0042EA F8               [12] 4092 	mov	r0,a
      0042EB 86 07            [24] 4093 	mov	ar7,@r0
      0042ED 08               [12] 4094 	inc	r0
      0042EE 86 06            [24] 4095 	mov	ar6,@r0
      0042F0 08               [12] 4096 	inc	r0
      0042F1 86 05            [24] 4097 	mov	ar5,@r0
      0042F3 08               [12] 4098 	inc	r0
      0042F4 86 04            [24] 4099 	mov	ar4,@r0
      0042F6 E5 08            [12] 4100 	mov	a,_bp
      0042F8 24 1A            [12] 4101 	add	a,#0x1a
      0042FA F8               [12] 4102 	mov	r0,a
      0042FB E5 08            [12] 4103 	mov	a,_bp
      0042FD 24 13            [12] 4104 	add	a,#0x13
      0042FF F9               [12] 4105 	mov	r1,a
      004300 E6               [12] 4106 	mov	a,@r0
      004301 F7               [12] 4107 	mov	@r1,a
      004302 08               [12] 4108 	inc	r0
      004303 09               [12] 4109 	inc	r1
      004304 E6               [12] 4110 	mov	a,@r0
      004305 F7               [12] 4111 	mov	@r1,a
      004306 08               [12] 4112 	inc	r0
      004307 09               [12] 4113 	inc	r1
      004308 E6               [12] 4114 	mov	a,@r0
      004309 F7               [12] 4115 	mov	@r1,a
      00430A 08               [12] 4116 	inc	r0
      00430B 09               [12] 4117 	inc	r1
      00430C E6               [12] 4118 	mov	a,@r0
      00430D F7               [12] 4119 	mov	@r1,a
      00430E E5 08            [12] 4120 	mov	a,_bp
      004310 24 13            [12] 4121 	add	a,#0x13
      004312 F8               [12] 4122 	mov	r0,a
      004313 E6               [12] 4123 	mov	a,@r0
      004314 C0 E0            [24] 4124 	push	acc
      004316 08               [12] 4125 	inc	r0
      004317 E6               [12] 4126 	mov	a,@r0
      004318 C0 E0            [24] 4127 	push	acc
      00431A 08               [12] 4128 	inc	r0
      00431B E6               [12] 4129 	mov	a,@r0
      00431C C0 E0            [24] 4130 	push	acc
      00431E 08               [12] 4131 	inc	r0
      00431F E6               [12] 4132 	mov	a,@r0
      004320 C0 E0            [24] 4133 	push	acc
      004322 8F 82            [24] 4134 	mov	dpl,r7
      004324 8E 83            [24] 4135 	mov	dph,r6
      004326 8D F0            [24] 4136 	mov	b,r5
      004328 EC               [12] 4137 	mov	a,r4
      004329 12 65 2E         [24] 4138 	lcall	__divulong
      00432C AF 82            [24] 4139 	mov	r7,dpl
      00432E AE 83            [24] 4140 	mov	r6,dph
      004330 AD F0            [24] 4141 	mov	r5,b
      004332 FC               [12] 4142 	mov	r4,a
      004333 E5 81            [12] 4143 	mov	a,sp
      004335 24 FC            [12] 4144 	add	a,#0xfc
      004337 F5 81            [12] 4145 	mov	sp,a
      004339 E5 08            [12] 4146 	mov	a,_bp
      00433B 24 1E            [12] 4147 	add	a,#0x1e
      00433D F8               [12] 4148 	mov	r0,a
      00433E A6 07            [24] 4149 	mov	@r0,ar7
      004340 08               [12] 4150 	inc	r0
      004341 A6 06            [24] 4151 	mov	@r0,ar6
      004343 08               [12] 4152 	inc	r0
      004344 A6 05            [24] 4153 	mov	@r0,ar5
      004346 08               [12] 4154 	inc	r0
      004347 A6 04            [24] 4155 	mov	@r0,ar4
      004349                       4156 00178$:
                                   4157 ;	calc.c:210: (void)stack_push(ctx->ps, d1);
      004349 E5 08            [12] 4158 	mov	a,_bp
      00434B 24 0B            [12] 4159 	add	a,#0x0b
      00434D F8               [12] 4160 	mov	r0,a
      00434E 86 82            [24] 4161 	mov	dpl,@r0
      004350 08               [12] 4162 	inc	r0
      004351 86 83            [24] 4163 	mov	dph,@r0
      004353 08               [12] 4164 	inc	r0
      004354 86 F0            [24] 4165 	mov	b,@r0
      004356 12 66 3A         [24] 4166 	lcall	__gptrget
      004359 FA               [12] 4167 	mov	r2,a
      00435A A3               [24] 4168 	inc	dptr
      00435B 12 66 3A         [24] 4169 	lcall	__gptrget
      00435E FB               [12] 4170 	mov	r3,a
      00435F A3               [24] 4171 	inc	dptr
      004360 12 66 3A         [24] 4172 	lcall	__gptrget
      004363 FC               [12] 4173 	mov	r4,a
      004364 E5 08            [12] 4174 	mov	a,_bp
      004366 24 1E            [12] 4175 	add	a,#0x1e
      004368 F8               [12] 4176 	mov	r0,a
      004369 E6               [12] 4177 	mov	a,@r0
      00436A C0 E0            [24] 4178 	push	acc
      00436C 08               [12] 4179 	inc	r0
      00436D E6               [12] 4180 	mov	a,@r0
      00436E C0 E0            [24] 4181 	push	acc
      004370 08               [12] 4182 	inc	r0
      004371 E6               [12] 4183 	mov	a,@r0
      004372 C0 E0            [24] 4184 	push	acc
      004374 08               [12] 4185 	inc	r0
      004375 E6               [12] 4186 	mov	a,@r0
      004376 C0 E0            [24] 4187 	push	acc
      004378 8A 82            [24] 4188 	mov	dpl,r2
      00437A 8B 83            [24] 4189 	mov	dph,r3
      00437C 8C F0            [24] 4190 	mov	b,r4
      00437E 12 26 B5         [24] 4191 	lcall	_stack_push
      004381 E5 81            [12] 4192 	mov	a,sp
      004383 24 FC            [12] 4193 	add	a,#0xfc
      004385 F5 81            [12] 4194 	mov	sp,a
                                   4195 ;	calc.c:212: break;
      004387 02 4F 7E         [24] 4196 	ljmp	00249$
                                   4197 ;	calc.c:214: case '#':
      00438A                       4198 00189$:
                                   4199 ;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00438A C0 05            [24] 4200 	push	ar5
      00438C C0 06            [24] 4201 	push	ar6
      00438E C0 07            [24] 4202 	push	ar7
      004390 E5 08            [12] 4203 	mov	a,_bp
      004392 24 1A            [12] 4204 	add	a,#0x1a
      004394 FC               [12] 4205 	mov	r4,a
      004395 7B 00            [12] 4206 	mov	r3,#0x00
      004397 7A 40            [12] 4207 	mov	r2,#0x40
      004399 E5 08            [12] 4208 	mov	a,_bp
      00439B 24 17            [12] 4209 	add	a,#0x17
      00439D F8               [12] 4210 	mov	r0,a
      00439E E5 08            [12] 4211 	mov	a,_bp
      0043A0 24 13            [12] 4212 	add	a,#0x13
      0043A2 F9               [12] 4213 	mov	r1,a
      0043A3 74 11            [12] 4214 	mov	a,#0x11
      0043A5 26               [12] 4215 	add	a,@r0
      0043A6 F7               [12] 4216 	mov	@r1,a
      0043A7 74 40            [12] 4217 	mov	a,#0x40
      0043A9 08               [12] 4218 	inc	r0
      0043AA 36               [12] 4219 	addc	a,@r0
      0043AB 09               [12] 4220 	inc	r1
      0043AC F7               [12] 4221 	mov	@r1,a
      0043AD 08               [12] 4222 	inc	r0
      0043AE 09               [12] 4223 	inc	r1
      0043AF E6               [12] 4224 	mov	a,@r0
      0043B0 F7               [12] 4225 	mov	@r1,a
      0043B1 E5 08            [12] 4226 	mov	a,_bp
      0043B3 24 13            [12] 4227 	add	a,#0x13
      0043B5 F8               [12] 4228 	mov	r0,a
      0043B6 86 82            [24] 4229 	mov	dpl,@r0
      0043B8 08               [12] 4230 	inc	r0
      0043B9 86 83            [24] 4231 	mov	dph,@r0
      0043BB 08               [12] 4232 	inc	r0
      0043BC 86 F0            [24] 4233 	mov	b,@r0
      0043BE 12 66 3A         [24] 4234 	lcall	__gptrget
      0043C1 FD               [12] 4235 	mov	r5,a
      0043C2 A3               [24] 4236 	inc	dptr
      0043C3 12 66 3A         [24] 4237 	lcall	__gptrget
      0043C6 FE               [12] 4238 	mov	r6,a
      0043C7 A3               [24] 4239 	inc	dptr
      0043C8 12 66 3A         [24] 4240 	lcall	__gptrget
      0043CB FF               [12] 4241 	mov	r7,a
      0043CC C0 05            [24] 4242 	push	ar5
      0043CE C0 04            [24] 4243 	push	ar4
      0043D0 C0 03            [24] 4244 	push	ar3
      0043D2 C0 02            [24] 4245 	push	ar2
      0043D4 8D 82            [24] 4246 	mov	dpl,r5
      0043D6 8E 83            [24] 4247 	mov	dph,r6
      0043D8 8F F0            [24] 4248 	mov	b,r7
      0043DA 12 27 83         [24] 4249 	lcall	_stack_pop
      0043DD AE 82            [24] 4250 	mov	r6,dpl
      0043DF AF 83            [24] 4251 	mov	r7,dph
      0043E1 15 81            [12] 4252 	dec	sp
      0043E3 15 81            [12] 4253 	dec	sp
      0043E5 15 81            [12] 4254 	dec	sp
      0043E7 D0 05            [24] 4255 	pop	ar5
      0043E9 EE               [12] 4256 	mov	a,r6
      0043EA 4F               [12] 4257 	orl	a,r7
      0043EB D0 07            [24] 4258 	pop	ar7
      0043ED D0 06            [24] 4259 	pop	ar6
      0043EF D0 05            [24] 4260 	pop	ar5
      0043F1 70 0C            [24] 4261 	jnz	00200$
      0043F3 90 7F 09         [24] 4262 	mov	dptr,#___str_10
      0043F6 75 F0 80         [24] 4263 	mov	b,#0x80
      0043F9 12 5E F5         [24] 4264 	lcall	_printstr
      0043FC 02 4F 7E         [24] 4265 	ljmp	00249$
      0043FF                       4266 00200$:
                                   4267 ;	calc.c:216: else if (!stack_pop(ctx->ps, &d1)) {
      0043FF C0 05            [24] 4268 	push	ar5
      004401 C0 06            [24] 4269 	push	ar6
      004403 C0 07            [24] 4270 	push	ar7
      004405 E5 08            [12] 4271 	mov	a,_bp
      004407 24 1E            [12] 4272 	add	a,#0x1e
      004409 FC               [12] 4273 	mov	r4,a
      00440A 7B 00            [12] 4274 	mov	r3,#0x00
      00440C 7A 40            [12] 4275 	mov	r2,#0x40
      00440E E5 08            [12] 4276 	mov	a,_bp
      004410 24 13            [12] 4277 	add	a,#0x13
      004412 F8               [12] 4278 	mov	r0,a
      004413 86 82            [24] 4279 	mov	dpl,@r0
      004415 08               [12] 4280 	inc	r0
      004416 86 83            [24] 4281 	mov	dph,@r0
      004418 08               [12] 4282 	inc	r0
      004419 86 F0            [24] 4283 	mov	b,@r0
      00441B 12 66 3A         [24] 4284 	lcall	__gptrget
      00441E FD               [12] 4285 	mov	r5,a
      00441F A3               [24] 4286 	inc	dptr
      004420 12 66 3A         [24] 4287 	lcall	__gptrget
      004423 FE               [12] 4288 	mov	r6,a
      004424 A3               [24] 4289 	inc	dptr
      004425 12 66 3A         [24] 4290 	lcall	__gptrget
      004428 FF               [12] 4291 	mov	r7,a
      004429 C0 05            [24] 4292 	push	ar5
      00442B C0 04            [24] 4293 	push	ar4
      00442D C0 03            [24] 4294 	push	ar3
      00442F C0 02            [24] 4295 	push	ar2
      004431 8D 82            [24] 4296 	mov	dpl,r5
      004433 8E 83            [24] 4297 	mov	dph,r6
      004435 8F F0            [24] 4298 	mov	b,r7
      004437 12 27 83         [24] 4299 	lcall	_stack_pop
      00443A AE 82            [24] 4300 	mov	r6,dpl
      00443C AF 83            [24] 4301 	mov	r7,dph
      00443E 15 81            [12] 4302 	dec	sp
      004440 15 81            [12] 4303 	dec	sp
      004442 15 81            [12] 4304 	dec	sp
      004444 D0 05            [24] 4305 	pop	ar5
      004446 EE               [12] 4306 	mov	a,r6
      004447 4F               [12] 4307 	orl	a,r7
      004448 D0 07            [24] 4308 	pop	ar7
      00444A D0 06            [24] 4309 	pop	ar6
      00444C D0 05            [24] 4310 	pop	ar5
      00444E 70 4A            [24] 4311 	jnz	00197$
                                   4312 ;	calc.c:217: (void)stack_push(ctx->ps, d0);
      004450 E5 08            [12] 4313 	mov	a,_bp
      004452 24 13            [12] 4314 	add	a,#0x13
      004454 F8               [12] 4315 	mov	r0,a
      004455 86 82            [24] 4316 	mov	dpl,@r0
      004457 08               [12] 4317 	inc	r0
      004458 86 83            [24] 4318 	mov	dph,@r0
      00445A 08               [12] 4319 	inc	r0
      00445B 86 F0            [24] 4320 	mov	b,@r0
      00445D 12 66 3A         [24] 4321 	lcall	__gptrget
      004460 FA               [12] 4322 	mov	r2,a
      004461 A3               [24] 4323 	inc	dptr
      004462 12 66 3A         [24] 4324 	lcall	__gptrget
      004465 FB               [12] 4325 	mov	r3,a
      004466 A3               [24] 4326 	inc	dptr
      004467 12 66 3A         [24] 4327 	lcall	__gptrget
      00446A FC               [12] 4328 	mov	r4,a
      00446B E5 08            [12] 4329 	mov	a,_bp
      00446D 24 1A            [12] 4330 	add	a,#0x1a
      00446F F8               [12] 4331 	mov	r0,a
      004470 E6               [12] 4332 	mov	a,@r0
      004471 C0 E0            [24] 4333 	push	acc
      004473 08               [12] 4334 	inc	r0
      004474 E6               [12] 4335 	mov	a,@r0
      004475 C0 E0            [24] 4336 	push	acc
      004477 08               [12] 4337 	inc	r0
      004478 E6               [12] 4338 	mov	a,@r0
      004479 C0 E0            [24] 4339 	push	acc
      00447B 08               [12] 4340 	inc	r0
      00447C E6               [12] 4341 	mov	a,@r0
      00447D C0 E0            [24] 4342 	push	acc
      00447F 8A 82            [24] 4343 	mov	dpl,r2
      004481 8B 83            [24] 4344 	mov	dph,r3
      004483 8C F0            [24] 4345 	mov	b,r4
      004485 12 26 B5         [24] 4346 	lcall	_stack_push
      004488 E5 81            [12] 4347 	mov	a,sp
      00448A 24 FC            [12] 4348 	add	a,#0xfc
      00448C F5 81            [12] 4349 	mov	sp,a
                                   4350 ;	calc.c:218: printstr("\r\nstack underflow\r\n");
      00448E 90 7F 09         [24] 4351 	mov	dptr,#___str_10
      004491 75 F0 80         [24] 4352 	mov	b,#0x80
      004494 12 5E F5         [24] 4353 	lcall	_printstr
      004497 02 4F 7E         [24] 4354 	ljmp	00249$
      00449A                       4355 00197$:
                                   4356 ;	calc.c:219: } else if (!d0) {
      00449A E5 08            [12] 4357 	mov	a,_bp
      00449C 24 1A            [12] 4358 	add	a,#0x1a
      00449E F8               [12] 4359 	mov	r0,a
      00449F E6               [12] 4360 	mov	a,@r0
      0044A0 08               [12] 4361 	inc	r0
      0044A1 46               [12] 4362 	orl	a,@r0
      0044A2 08               [12] 4363 	inc	r0
      0044A3 46               [12] 4364 	orl	a,@r0
      0044A4 08               [12] 4365 	inc	r0
      0044A5 46               [12] 4366 	orl	a,@r0
      0044A6 60 03            [24] 4367 	jz	00580$
      0044A8 02 45 33         [24] 4368 	ljmp	00194$
      0044AB                       4369 00580$:
                                   4370 ;	calc.c:220: (void)stack_push(ctx->ps, d1);
      0044AB E5 08            [12] 4371 	mov	a,_bp
      0044AD 24 13            [12] 4372 	add	a,#0x13
      0044AF F8               [12] 4373 	mov	r0,a
      0044B0 86 82            [24] 4374 	mov	dpl,@r0
      0044B2 08               [12] 4375 	inc	r0
      0044B3 86 83            [24] 4376 	mov	dph,@r0
      0044B5 08               [12] 4377 	inc	r0
      0044B6 86 F0            [24] 4378 	mov	b,@r0
      0044B8 12 66 3A         [24] 4379 	lcall	__gptrget
      0044BB FA               [12] 4380 	mov	r2,a
      0044BC A3               [24] 4381 	inc	dptr
      0044BD 12 66 3A         [24] 4382 	lcall	__gptrget
      0044C0 FB               [12] 4383 	mov	r3,a
      0044C1 A3               [24] 4384 	inc	dptr
      0044C2 12 66 3A         [24] 4385 	lcall	__gptrget
      0044C5 FC               [12] 4386 	mov	r4,a
      0044C6 E5 08            [12] 4387 	mov	a,_bp
      0044C8 24 1E            [12] 4388 	add	a,#0x1e
      0044CA F8               [12] 4389 	mov	r0,a
      0044CB E6               [12] 4390 	mov	a,@r0
      0044CC C0 E0            [24] 4391 	push	acc
      0044CE 08               [12] 4392 	inc	r0
      0044CF E6               [12] 4393 	mov	a,@r0
      0044D0 C0 E0            [24] 4394 	push	acc
      0044D2 08               [12] 4395 	inc	r0
      0044D3 E6               [12] 4396 	mov	a,@r0
      0044D4 C0 E0            [24] 4397 	push	acc
      0044D6 08               [12] 4398 	inc	r0
      0044D7 E6               [12] 4399 	mov	a,@r0
      0044D8 C0 E0            [24] 4400 	push	acc
      0044DA 8A 82            [24] 4401 	mov	dpl,r2
      0044DC 8B 83            [24] 4402 	mov	dph,r3
      0044DE 8C F0            [24] 4403 	mov	b,r4
      0044E0 12 26 B5         [24] 4404 	lcall	_stack_push
      0044E3 E5 81            [12] 4405 	mov	a,sp
      0044E5 24 FC            [12] 4406 	add	a,#0xfc
      0044E7 F5 81            [12] 4407 	mov	sp,a
                                   4408 ;	calc.c:221: (void)stack_push(ctx->ps, d0);			
      0044E9 E5 08            [12] 4409 	mov	a,_bp
      0044EB 24 13            [12] 4410 	add	a,#0x13
      0044ED F8               [12] 4411 	mov	r0,a
      0044EE 86 82            [24] 4412 	mov	dpl,@r0
      0044F0 08               [12] 4413 	inc	r0
      0044F1 86 83            [24] 4414 	mov	dph,@r0
      0044F3 08               [12] 4415 	inc	r0
      0044F4 86 F0            [24] 4416 	mov	b,@r0
      0044F6 12 66 3A         [24] 4417 	lcall	__gptrget
      0044F9 FA               [12] 4418 	mov	r2,a
      0044FA A3               [24] 4419 	inc	dptr
      0044FB 12 66 3A         [24] 4420 	lcall	__gptrget
      0044FE FB               [12] 4421 	mov	r3,a
      0044FF A3               [24] 4422 	inc	dptr
      004500 12 66 3A         [24] 4423 	lcall	__gptrget
      004503 FC               [12] 4424 	mov	r4,a
      004504 E5 08            [12] 4425 	mov	a,_bp
      004506 24 1A            [12] 4426 	add	a,#0x1a
      004508 F8               [12] 4427 	mov	r0,a
      004509 E6               [12] 4428 	mov	a,@r0
      00450A C0 E0            [24] 4429 	push	acc
      00450C 08               [12] 4430 	inc	r0
      00450D E6               [12] 4431 	mov	a,@r0
      00450E C0 E0            [24] 4432 	push	acc
      004510 08               [12] 4433 	inc	r0
      004511 E6               [12] 4434 	mov	a,@r0
      004512 C0 E0            [24] 4435 	push	acc
      004514 08               [12] 4436 	inc	r0
      004515 E6               [12] 4437 	mov	a,@r0
      004516 C0 E0            [24] 4438 	push	acc
      004518 8A 82            [24] 4439 	mov	dpl,r2
      00451A 8B 83            [24] 4440 	mov	dph,r3
      00451C 8C F0            [24] 4441 	mov	b,r4
      00451E 12 26 B5         [24] 4442 	lcall	_stack_push
      004521 E5 81            [12] 4443 	mov	a,sp
      004523 24 FC            [12] 4444 	add	a,#0xfc
      004525 F5 81            [12] 4445 	mov	sp,a
                                   4446 ;	calc.c:222: printstr("\r\ndivision by zero\r\n");
      004527 90 7F 6B         [24] 4447 	mov	dptr,#___str_14
      00452A 75 F0 80         [24] 4448 	mov	b,#0x80
      00452D 12 5E F5         [24] 4449 	lcall	_printstr
      004530 02 4F 7E         [24] 4450 	ljmp	00249$
      004533                       4451 00194$:
                                   4452 ;	calc.c:224: if (ctx->digit[0] == '%') d1 %= d0;
      004533 8D 82            [24] 4453 	mov	dpl,r5
      004535 8E 83            [24] 4454 	mov	dph,r6
      004537 8F F0            [24] 4455 	mov	b,r7
      004539 12 66 3A         [24] 4456 	lcall	__gptrget
      00453C FD               [12] 4457 	mov	r5,a
      00453D BD 25 45         [24] 4458 	cjne	r5,#0x25,00191$
      004540 E5 08            [12] 4459 	mov	a,_bp
      004542 24 1A            [12] 4460 	add	a,#0x1a
      004544 F8               [12] 4461 	mov	r0,a
      004545 E6               [12] 4462 	mov	a,@r0
      004546 C0 E0            [24] 4463 	push	acc
      004548 08               [12] 4464 	inc	r0
      004549 E6               [12] 4465 	mov	a,@r0
      00454A C0 E0            [24] 4466 	push	acc
      00454C 08               [12] 4467 	inc	r0
      00454D E6               [12] 4468 	mov	a,@r0
      00454E C0 E0            [24] 4469 	push	acc
      004550 08               [12] 4470 	inc	r0
      004551 E6               [12] 4471 	mov	a,@r0
      004552 C0 E0            [24] 4472 	push	acc
      004554 E5 08            [12] 4473 	mov	a,_bp
      004556 24 1E            [12] 4474 	add	a,#0x1e
      004558 F8               [12] 4475 	mov	r0,a
      004559 86 82            [24] 4476 	mov	dpl,@r0
      00455B 08               [12] 4477 	inc	r0
      00455C 86 83            [24] 4478 	mov	dph,@r0
      00455E 08               [12] 4479 	inc	r0
      00455F 86 F0            [24] 4480 	mov	b,@r0
      004561 08               [12] 4481 	inc	r0
      004562 E6               [12] 4482 	mov	a,@r0
      004563 12 62 78         [24] 4483 	lcall	__modslong
      004566 AC 82            [24] 4484 	mov	r4,dpl
      004568 AD 83            [24] 4485 	mov	r5,dph
      00456A AE F0            [24] 4486 	mov	r6,b
      00456C FF               [12] 4487 	mov	r7,a
      00456D E5 81            [12] 4488 	mov	a,sp
      00456F 24 FC            [12] 4489 	add	a,#0xfc
      004571 F5 81            [12] 4490 	mov	sp,a
      004573 E5 08            [12] 4491 	mov	a,_bp
      004575 24 1E            [12] 4492 	add	a,#0x1e
      004577 F8               [12] 4493 	mov	r0,a
      004578 A6 04            [24] 4494 	mov	@r0,ar4
      00457A 08               [12] 4495 	inc	r0
      00457B A6 05            [24] 4496 	mov	@r0,ar5
      00457D 08               [12] 4497 	inc	r0
      00457E A6 06            [24] 4498 	mov	@r0,ar6
      004580 08               [12] 4499 	inc	r0
      004581 A6 07            [24] 4500 	mov	@r0,ar7
      004583 80 5F            [24] 4501 	sjmp	00192$
      004585                       4502 00191$:
                                   4503 ;	calc.c:225: else d1 = (unsigned long)d1 % (unsigned long)d0;
      004585 E5 08            [12] 4504 	mov	a,_bp
      004587 24 1E            [12] 4505 	add	a,#0x1e
      004589 F8               [12] 4506 	mov	r0,a
      00458A E5 08            [12] 4507 	mov	a,_bp
      00458C 24 0F            [12] 4508 	add	a,#0x0f
      00458E F9               [12] 4509 	mov	r1,a
      00458F E6               [12] 4510 	mov	a,@r0
      004590 F7               [12] 4511 	mov	@r1,a
      004591 08               [12] 4512 	inc	r0
      004592 09               [12] 4513 	inc	r1
      004593 E6               [12] 4514 	mov	a,@r0
      004594 F7               [12] 4515 	mov	@r1,a
      004595 08               [12] 4516 	inc	r0
      004596 09               [12] 4517 	inc	r1
      004597 E6               [12] 4518 	mov	a,@r0
      004598 F7               [12] 4519 	mov	@r1,a
      004599 08               [12] 4520 	inc	r0
      00459A 09               [12] 4521 	inc	r1
      00459B E6               [12] 4522 	mov	a,@r0
      00459C F7               [12] 4523 	mov	@r1,a
      00459D E5 08            [12] 4524 	mov	a,_bp
      00459F 24 1A            [12] 4525 	add	a,#0x1a
      0045A1 F8               [12] 4526 	mov	r0,a
      0045A2 86 02            [24] 4527 	mov	ar2,@r0
      0045A4 08               [12] 4528 	inc	r0
      0045A5 86 03            [24] 4529 	mov	ar3,@r0
      0045A7 08               [12] 4530 	inc	r0
      0045A8 86 06            [24] 4531 	mov	ar6,@r0
      0045AA 08               [12] 4532 	inc	r0
      0045AB 86 07            [24] 4533 	mov	ar7,@r0
      0045AD C0 02            [24] 4534 	push	ar2
      0045AF C0 03            [24] 4535 	push	ar3
      0045B1 C0 06            [24] 4536 	push	ar6
      0045B3 C0 07            [24] 4537 	push	ar7
      0045B5 E5 08            [12] 4538 	mov	a,_bp
      0045B7 24 0F            [12] 4539 	add	a,#0x0f
      0045B9 F8               [12] 4540 	mov	r0,a
      0045BA 86 82            [24] 4541 	mov	dpl,@r0
      0045BC 08               [12] 4542 	inc	r0
      0045BD 86 83            [24] 4543 	mov	dph,@r0
      0045BF 08               [12] 4544 	inc	r0
      0045C0 86 F0            [24] 4545 	mov	b,@r0
      0045C2 08               [12] 4546 	inc	r0
      0045C3 E6               [12] 4547 	mov	a,@r0
      0045C4 12 63 6F         [24] 4548 	lcall	__modulong
      0045C7 AC 82            [24] 4549 	mov	r4,dpl
      0045C9 AD 83            [24] 4550 	mov	r5,dph
      0045CB AE F0            [24] 4551 	mov	r6,b
      0045CD FF               [12] 4552 	mov	r7,a
      0045CE E5 81            [12] 4553 	mov	a,sp
      0045D0 24 FC            [12] 4554 	add	a,#0xfc
      0045D2 F5 81            [12] 4555 	mov	sp,a
      0045D4 E5 08            [12] 4556 	mov	a,_bp
      0045D6 24 1E            [12] 4557 	add	a,#0x1e
      0045D8 F8               [12] 4558 	mov	r0,a
      0045D9 A6 04            [24] 4559 	mov	@r0,ar4
      0045DB 08               [12] 4560 	inc	r0
      0045DC A6 05            [24] 4561 	mov	@r0,ar5
      0045DE 08               [12] 4562 	inc	r0
      0045DF A6 06            [24] 4563 	mov	@r0,ar6
      0045E1 08               [12] 4564 	inc	r0
      0045E2 A6 07            [24] 4565 	mov	@r0,ar7
      0045E4                       4566 00192$:
                                   4567 ;	calc.c:226: (void)stack_push(ctx->ps, d1);
      0045E4 E5 08            [12] 4568 	mov	a,_bp
      0045E6 24 13            [12] 4569 	add	a,#0x13
      0045E8 F8               [12] 4570 	mov	r0,a
      0045E9 86 82            [24] 4571 	mov	dpl,@r0
      0045EB 08               [12] 4572 	inc	r0
      0045EC 86 83            [24] 4573 	mov	dph,@r0
      0045EE 08               [12] 4574 	inc	r0
      0045EF 86 F0            [24] 4575 	mov	b,@r0
      0045F1 12 66 3A         [24] 4576 	lcall	__gptrget
      0045F4 FD               [12] 4577 	mov	r5,a
      0045F5 A3               [24] 4578 	inc	dptr
      0045F6 12 66 3A         [24] 4579 	lcall	__gptrget
      0045F9 FE               [12] 4580 	mov	r6,a
      0045FA A3               [24] 4581 	inc	dptr
      0045FB 12 66 3A         [24] 4582 	lcall	__gptrget
      0045FE FF               [12] 4583 	mov	r7,a
      0045FF E5 08            [12] 4584 	mov	a,_bp
      004601 24 1E            [12] 4585 	add	a,#0x1e
      004603 F8               [12] 4586 	mov	r0,a
      004604 E6               [12] 4587 	mov	a,@r0
      004605 C0 E0            [24] 4588 	push	acc
      004607 08               [12] 4589 	inc	r0
      004608 E6               [12] 4590 	mov	a,@r0
      004609 C0 E0            [24] 4591 	push	acc
      00460B 08               [12] 4592 	inc	r0
      00460C E6               [12] 4593 	mov	a,@r0
      00460D C0 E0            [24] 4594 	push	acc
      00460F 08               [12] 4595 	inc	r0
      004610 E6               [12] 4596 	mov	a,@r0
      004611 C0 E0            [24] 4597 	push	acc
      004613 8D 82            [24] 4598 	mov	dpl,r5
      004615 8E 83            [24] 4599 	mov	dph,r6
      004617 8F F0            [24] 4600 	mov	b,r7
      004619 12 26 B5         [24] 4601 	lcall	_stack_push
      00461C E5 81            [12] 4602 	mov	a,sp
      00461E 24 FC            [12] 4603 	add	a,#0xfc
      004620 F5 81            [12] 4604 	mov	sp,a
                                   4605 ;	calc.c:228: break;
      004622 02 4F 7E         [24] 4606 	ljmp	00249$
                                   4607 ;	calc.c:229: case '&':
      004625                       4608 00202$:
                                   4609 ;	calc.c:230: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004625 E5 08            [12] 4610 	mov	a,_bp
      004627 24 1A            [12] 4611 	add	a,#0x1a
      004629 FF               [12] 4612 	mov	r7,a
      00462A E5 08            [12] 4613 	mov	a,_bp
      00462C 24 13            [12] 4614 	add	a,#0x13
      00462E F8               [12] 4615 	mov	r0,a
      00462F A6 07            [24] 4616 	mov	@r0,ar7
      004631 08               [12] 4617 	inc	r0
      004632 76 00            [12] 4618 	mov	@r0,#0x00
      004634 08               [12] 4619 	inc	r0
      004635 76 40            [12] 4620 	mov	@r0,#0x40
      004637 E5 08            [12] 4621 	mov	a,_bp
      004639 24 17            [12] 4622 	add	a,#0x17
      00463B F8               [12] 4623 	mov	r0,a
      00463C 74 11            [12] 4624 	mov	a,#0x11
      00463E 26               [12] 4625 	add	a,@r0
      00463F FA               [12] 4626 	mov	r2,a
      004640 74 40            [12] 4627 	mov	a,#0x40
      004642 08               [12] 4628 	inc	r0
      004643 36               [12] 4629 	addc	a,@r0
      004644 FB               [12] 4630 	mov	r3,a
      004645 08               [12] 4631 	inc	r0
      004646 86 04            [24] 4632 	mov	ar4,@r0
      004648 8A 82            [24] 4633 	mov	dpl,r2
      00464A 8B 83            [24] 4634 	mov	dph,r3
      00464C 8C F0            [24] 4635 	mov	b,r4
      00464E 12 66 3A         [24] 4636 	lcall	__gptrget
      004651 FD               [12] 4637 	mov	r5,a
      004652 A3               [24] 4638 	inc	dptr
      004653 12 66 3A         [24] 4639 	lcall	__gptrget
      004656 FE               [12] 4640 	mov	r6,a
      004657 A3               [24] 4641 	inc	dptr
      004658 12 66 3A         [24] 4642 	lcall	__gptrget
      00465B FF               [12] 4643 	mov	r7,a
      00465C C0 04            [24] 4644 	push	ar4
      00465E C0 03            [24] 4645 	push	ar3
      004660 C0 02            [24] 4646 	push	ar2
      004662 E5 08            [12] 4647 	mov	a,_bp
      004664 24 13            [12] 4648 	add	a,#0x13
      004666 F8               [12] 4649 	mov	r0,a
      004667 E6               [12] 4650 	mov	a,@r0
      004668 C0 E0            [24] 4651 	push	acc
      00466A 08               [12] 4652 	inc	r0
      00466B E6               [12] 4653 	mov	a,@r0
      00466C C0 E0            [24] 4654 	push	acc
      00466E 08               [12] 4655 	inc	r0
      00466F E6               [12] 4656 	mov	a,@r0
      004670 C0 E0            [24] 4657 	push	acc
      004672 8D 82            [24] 4658 	mov	dpl,r5
      004674 8E 83            [24] 4659 	mov	dph,r6
      004676 8F F0            [24] 4660 	mov	b,r7
      004678 12 27 83         [24] 4661 	lcall	_stack_pop
      00467B AE 82            [24] 4662 	mov	r6,dpl
      00467D AF 83            [24] 4663 	mov	r7,dph
      00467F 15 81            [12] 4664 	dec	sp
      004681 15 81            [12] 4665 	dec	sp
      004683 15 81            [12] 4666 	dec	sp
      004685 D0 02            [24] 4667 	pop	ar2
      004687 D0 03            [24] 4668 	pop	ar3
      004689 D0 04            [24] 4669 	pop	ar4
      00468B EE               [12] 4670 	mov	a,r6
      00468C 4F               [12] 4671 	orl	a,r7
      00468D 70 0C            [24] 4672 	jnz	00207$
      00468F 90 7F 09         [24] 4673 	mov	dptr,#___str_10
      004692 75 F0 80         [24] 4674 	mov	b,#0x80
      004695 12 5E F5         [24] 4675 	lcall	_printstr
      004698 02 4F 7E         [24] 4676 	ljmp	00249$
      00469B                       4677 00207$:
                                   4678 ;	calc.c:231: else if (!stack_pop(ctx->ps, &d1)) {
      00469B E5 08            [12] 4679 	mov	a,_bp
      00469D 24 1E            [12] 4680 	add	a,#0x1e
      00469F FF               [12] 4681 	mov	r7,a
      0046A0 E5 08            [12] 4682 	mov	a,_bp
      0046A2 24 13            [12] 4683 	add	a,#0x13
      0046A4 F8               [12] 4684 	mov	r0,a
      0046A5 A6 07            [24] 4685 	mov	@r0,ar7
      0046A7 08               [12] 4686 	inc	r0
      0046A8 76 00            [12] 4687 	mov	@r0,#0x00
      0046AA 08               [12] 4688 	inc	r0
      0046AB 76 40            [12] 4689 	mov	@r0,#0x40
      0046AD 8A 82            [24] 4690 	mov	dpl,r2
      0046AF 8B 83            [24] 4691 	mov	dph,r3
      0046B1 8C F0            [24] 4692 	mov	b,r4
      0046B3 12 66 3A         [24] 4693 	lcall	__gptrget
      0046B6 FD               [12] 4694 	mov	r5,a
      0046B7 A3               [24] 4695 	inc	dptr
      0046B8 12 66 3A         [24] 4696 	lcall	__gptrget
      0046BB FE               [12] 4697 	mov	r6,a
      0046BC A3               [24] 4698 	inc	dptr
      0046BD 12 66 3A         [24] 4699 	lcall	__gptrget
      0046C0 FF               [12] 4700 	mov	r7,a
      0046C1 C0 04            [24] 4701 	push	ar4
      0046C3 C0 03            [24] 4702 	push	ar3
      0046C5 C0 02            [24] 4703 	push	ar2
      0046C7 E5 08            [12] 4704 	mov	a,_bp
      0046C9 24 13            [12] 4705 	add	a,#0x13
      0046CB F8               [12] 4706 	mov	r0,a
      0046CC E6               [12] 4707 	mov	a,@r0
      0046CD C0 E0            [24] 4708 	push	acc
      0046CF 08               [12] 4709 	inc	r0
      0046D0 E6               [12] 4710 	mov	a,@r0
      0046D1 C0 E0            [24] 4711 	push	acc
      0046D3 08               [12] 4712 	inc	r0
      0046D4 E6               [12] 4713 	mov	a,@r0
      0046D5 C0 E0            [24] 4714 	push	acc
      0046D7 8D 82            [24] 4715 	mov	dpl,r5
      0046D9 8E 83            [24] 4716 	mov	dph,r6
      0046DB 8F F0            [24] 4717 	mov	b,r7
      0046DD 12 27 83         [24] 4718 	lcall	_stack_pop
      0046E0 AE 82            [24] 4719 	mov	r6,dpl
      0046E2 AF 83            [24] 4720 	mov	r7,dph
      0046E4 15 81            [12] 4721 	dec	sp
      0046E6 15 81            [12] 4722 	dec	sp
      0046E8 15 81            [12] 4723 	dec	sp
      0046EA D0 02            [24] 4724 	pop	ar2
      0046EC D0 03            [24] 4725 	pop	ar3
      0046EE D0 04            [24] 4726 	pop	ar4
      0046F0 EE               [12] 4727 	mov	a,r6
      0046F1 4F               [12] 4728 	orl	a,r7
      0046F2 70 43            [24] 4729 	jnz	00204$
                                   4730 ;	calc.c:232: (void)stack_push(ctx->ps, d0);
      0046F4 8A 82            [24] 4731 	mov	dpl,r2
      0046F6 8B 83            [24] 4732 	mov	dph,r3
      0046F8 8C F0            [24] 4733 	mov	b,r4
      0046FA 12 66 3A         [24] 4734 	lcall	__gptrget
      0046FD FD               [12] 4735 	mov	r5,a
      0046FE A3               [24] 4736 	inc	dptr
      0046FF 12 66 3A         [24] 4737 	lcall	__gptrget
      004702 FE               [12] 4738 	mov	r6,a
      004703 A3               [24] 4739 	inc	dptr
      004704 12 66 3A         [24] 4740 	lcall	__gptrget
      004707 FF               [12] 4741 	mov	r7,a
      004708 E5 08            [12] 4742 	mov	a,_bp
      00470A 24 1A            [12] 4743 	add	a,#0x1a
      00470C F8               [12] 4744 	mov	r0,a
      00470D E6               [12] 4745 	mov	a,@r0
      00470E C0 E0            [24] 4746 	push	acc
      004710 08               [12] 4747 	inc	r0
      004711 E6               [12] 4748 	mov	a,@r0
      004712 C0 E0            [24] 4749 	push	acc
      004714 08               [12] 4750 	inc	r0
      004715 E6               [12] 4751 	mov	a,@r0
      004716 C0 E0            [24] 4752 	push	acc
      004718 08               [12] 4753 	inc	r0
      004719 E6               [12] 4754 	mov	a,@r0
      00471A C0 E0            [24] 4755 	push	acc
      00471C 8D 82            [24] 4756 	mov	dpl,r5
      00471E 8E 83            [24] 4757 	mov	dph,r6
      004720 8F F0            [24] 4758 	mov	b,r7
      004722 12 26 B5         [24] 4759 	lcall	_stack_push
      004725 E5 81            [12] 4760 	mov	a,sp
      004727 24 FC            [12] 4761 	add	a,#0xfc
      004729 F5 81            [12] 4762 	mov	sp,a
                                   4763 ;	calc.c:233: printstr("\r\nstack underflow\r\n");
      00472B 90 7F 09         [24] 4764 	mov	dptr,#___str_10
      00472E 75 F0 80         [24] 4765 	mov	b,#0x80
      004731 12 5E F5         [24] 4766 	lcall	_printstr
      004734 02 4F 7E         [24] 4767 	ljmp	00249$
      004737                       4768 00204$:
                                   4769 ;	calc.c:235: d1 &= d0;
      004737 E5 08            [12] 4770 	mov	a,_bp
      004739 24 1E            [12] 4771 	add	a,#0x1e
      00473B F8               [12] 4772 	mov	r0,a
      00473C E5 08            [12] 4773 	mov	a,_bp
      00473E 24 1A            [12] 4774 	add	a,#0x1a
      004740 F9               [12] 4775 	mov	r1,a
      004741 E7               [12] 4776 	mov	a,@r1
      004742 56               [12] 4777 	anl	a,@r0
      004743 F6               [12] 4778 	mov	@r0,a
      004744 09               [12] 4779 	inc	r1
      004745 E7               [12] 4780 	mov	a,@r1
      004746 08               [12] 4781 	inc	r0
      004747 56               [12] 4782 	anl	a,@r0
      004748 F6               [12] 4783 	mov	@r0,a
      004749 09               [12] 4784 	inc	r1
      00474A E7               [12] 4785 	mov	a,@r1
      00474B 08               [12] 4786 	inc	r0
      00474C 56               [12] 4787 	anl	a,@r0
      00474D F6               [12] 4788 	mov	@r0,a
      00474E 09               [12] 4789 	inc	r1
      00474F E7               [12] 4790 	mov	a,@r1
      004750 08               [12] 4791 	inc	r0
      004751 56               [12] 4792 	anl	a,@r0
      004752 F6               [12] 4793 	mov	@r0,a
                                   4794 ;	calc.c:236: (void)stack_push(ctx->ps, d1);
      004753 8A 82            [24] 4795 	mov	dpl,r2
      004755 8B 83            [24] 4796 	mov	dph,r3
      004757 8C F0            [24] 4797 	mov	b,r4
      004759 12 66 3A         [24] 4798 	lcall	__gptrget
      00475C FA               [12] 4799 	mov	r2,a
      00475D A3               [24] 4800 	inc	dptr
      00475E 12 66 3A         [24] 4801 	lcall	__gptrget
      004761 FB               [12] 4802 	mov	r3,a
      004762 A3               [24] 4803 	inc	dptr
      004763 12 66 3A         [24] 4804 	lcall	__gptrget
      004766 FC               [12] 4805 	mov	r4,a
      004767 E5 08            [12] 4806 	mov	a,_bp
      004769 24 1E            [12] 4807 	add	a,#0x1e
      00476B F8               [12] 4808 	mov	r0,a
      00476C E6               [12] 4809 	mov	a,@r0
      00476D C0 E0            [24] 4810 	push	acc
      00476F 08               [12] 4811 	inc	r0
      004770 E6               [12] 4812 	mov	a,@r0
      004771 C0 E0            [24] 4813 	push	acc
      004773 08               [12] 4814 	inc	r0
      004774 E6               [12] 4815 	mov	a,@r0
      004775 C0 E0            [24] 4816 	push	acc
      004777 08               [12] 4817 	inc	r0
      004778 E6               [12] 4818 	mov	a,@r0
      004779 C0 E0            [24] 4819 	push	acc
      00477B 8A 82            [24] 4820 	mov	dpl,r2
      00477D 8B 83            [24] 4821 	mov	dph,r3
      00477F 8C F0            [24] 4822 	mov	b,r4
      004781 12 26 B5         [24] 4823 	lcall	_stack_push
      004784 E5 81            [12] 4824 	mov	a,sp
      004786 24 FC            [12] 4825 	add	a,#0xfc
      004788 F5 81            [12] 4826 	mov	sp,a
                                   4827 ;	calc.c:238: break;
      00478A 02 4F 7E         [24] 4828 	ljmp	00249$
                                   4829 ;	calc.c:239: case '|':
      00478D                       4830 00209$:
                                   4831 ;	calc.c:240: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00478D E5 08            [12] 4832 	mov	a,_bp
      00478F 24 1A            [12] 4833 	add	a,#0x1a
      004791 FF               [12] 4834 	mov	r7,a
      004792 E5 08            [12] 4835 	mov	a,_bp
      004794 24 13            [12] 4836 	add	a,#0x13
      004796 F8               [12] 4837 	mov	r0,a
      004797 A6 07            [24] 4838 	mov	@r0,ar7
      004799 08               [12] 4839 	inc	r0
      00479A 76 00            [12] 4840 	mov	@r0,#0x00
      00479C 08               [12] 4841 	inc	r0
      00479D 76 40            [12] 4842 	mov	@r0,#0x40
      00479F E5 08            [12] 4843 	mov	a,_bp
      0047A1 24 17            [12] 4844 	add	a,#0x17
      0047A3 F8               [12] 4845 	mov	r0,a
      0047A4 74 11            [12] 4846 	mov	a,#0x11
      0047A6 26               [12] 4847 	add	a,@r0
      0047A7 FA               [12] 4848 	mov	r2,a
      0047A8 74 40            [12] 4849 	mov	a,#0x40
      0047AA 08               [12] 4850 	inc	r0
      0047AB 36               [12] 4851 	addc	a,@r0
      0047AC FB               [12] 4852 	mov	r3,a
      0047AD 08               [12] 4853 	inc	r0
      0047AE 86 04            [24] 4854 	mov	ar4,@r0
      0047B0 8A 82            [24] 4855 	mov	dpl,r2
      0047B2 8B 83            [24] 4856 	mov	dph,r3
      0047B4 8C F0            [24] 4857 	mov	b,r4
      0047B6 12 66 3A         [24] 4858 	lcall	__gptrget
      0047B9 FD               [12] 4859 	mov	r5,a
      0047BA A3               [24] 4860 	inc	dptr
      0047BB 12 66 3A         [24] 4861 	lcall	__gptrget
      0047BE FE               [12] 4862 	mov	r6,a
      0047BF A3               [24] 4863 	inc	dptr
      0047C0 12 66 3A         [24] 4864 	lcall	__gptrget
      0047C3 FF               [12] 4865 	mov	r7,a
      0047C4 C0 04            [24] 4866 	push	ar4
      0047C6 C0 03            [24] 4867 	push	ar3
      0047C8 C0 02            [24] 4868 	push	ar2
      0047CA E5 08            [12] 4869 	mov	a,_bp
      0047CC 24 13            [12] 4870 	add	a,#0x13
      0047CE F8               [12] 4871 	mov	r0,a
      0047CF E6               [12] 4872 	mov	a,@r0
      0047D0 C0 E0            [24] 4873 	push	acc
      0047D2 08               [12] 4874 	inc	r0
      0047D3 E6               [12] 4875 	mov	a,@r0
      0047D4 C0 E0            [24] 4876 	push	acc
      0047D6 08               [12] 4877 	inc	r0
      0047D7 E6               [12] 4878 	mov	a,@r0
      0047D8 C0 E0            [24] 4879 	push	acc
      0047DA 8D 82            [24] 4880 	mov	dpl,r5
      0047DC 8E 83            [24] 4881 	mov	dph,r6
      0047DE 8F F0            [24] 4882 	mov	b,r7
      0047E0 12 27 83         [24] 4883 	lcall	_stack_pop
      0047E3 AE 82            [24] 4884 	mov	r6,dpl
      0047E5 AF 83            [24] 4885 	mov	r7,dph
      0047E7 15 81            [12] 4886 	dec	sp
      0047E9 15 81            [12] 4887 	dec	sp
      0047EB 15 81            [12] 4888 	dec	sp
      0047ED D0 02            [24] 4889 	pop	ar2
      0047EF D0 03            [24] 4890 	pop	ar3
      0047F1 D0 04            [24] 4891 	pop	ar4
      0047F3 EE               [12] 4892 	mov	a,r6
      0047F4 4F               [12] 4893 	orl	a,r7
      0047F5 70 0C            [24] 4894 	jnz	00214$
      0047F7 90 7F 09         [24] 4895 	mov	dptr,#___str_10
      0047FA 75 F0 80         [24] 4896 	mov	b,#0x80
      0047FD 12 5E F5         [24] 4897 	lcall	_printstr
      004800 02 4F 7E         [24] 4898 	ljmp	00249$
      004803                       4899 00214$:
                                   4900 ;	calc.c:241: else if (!stack_pop(ctx->ps, &d1)) {
      004803 E5 08            [12] 4901 	mov	a,_bp
      004805 24 1E            [12] 4902 	add	a,#0x1e
      004807 FF               [12] 4903 	mov	r7,a
      004808 E5 08            [12] 4904 	mov	a,_bp
      00480A 24 13            [12] 4905 	add	a,#0x13
      00480C F8               [12] 4906 	mov	r0,a
      00480D A6 07            [24] 4907 	mov	@r0,ar7
      00480F 08               [12] 4908 	inc	r0
      004810 76 00            [12] 4909 	mov	@r0,#0x00
      004812 08               [12] 4910 	inc	r0
      004813 76 40            [12] 4911 	mov	@r0,#0x40
      004815 8A 82            [24] 4912 	mov	dpl,r2
      004817 8B 83            [24] 4913 	mov	dph,r3
      004819 8C F0            [24] 4914 	mov	b,r4
      00481B 12 66 3A         [24] 4915 	lcall	__gptrget
      00481E FD               [12] 4916 	mov	r5,a
      00481F A3               [24] 4917 	inc	dptr
      004820 12 66 3A         [24] 4918 	lcall	__gptrget
      004823 FE               [12] 4919 	mov	r6,a
      004824 A3               [24] 4920 	inc	dptr
      004825 12 66 3A         [24] 4921 	lcall	__gptrget
      004828 FF               [12] 4922 	mov	r7,a
      004829 C0 04            [24] 4923 	push	ar4
      00482B C0 03            [24] 4924 	push	ar3
      00482D C0 02            [24] 4925 	push	ar2
      00482F E5 08            [12] 4926 	mov	a,_bp
      004831 24 13            [12] 4927 	add	a,#0x13
      004833 F8               [12] 4928 	mov	r0,a
      004834 E6               [12] 4929 	mov	a,@r0
      004835 C0 E0            [24] 4930 	push	acc
      004837 08               [12] 4931 	inc	r0
      004838 E6               [12] 4932 	mov	a,@r0
      004839 C0 E0            [24] 4933 	push	acc
      00483B 08               [12] 4934 	inc	r0
      00483C E6               [12] 4935 	mov	a,@r0
      00483D C0 E0            [24] 4936 	push	acc
      00483F 8D 82            [24] 4937 	mov	dpl,r5
      004841 8E 83            [24] 4938 	mov	dph,r6
      004843 8F F0            [24] 4939 	mov	b,r7
      004845 12 27 83         [24] 4940 	lcall	_stack_pop
      004848 AE 82            [24] 4941 	mov	r6,dpl
      00484A AF 83            [24] 4942 	mov	r7,dph
      00484C 15 81            [12] 4943 	dec	sp
      00484E 15 81            [12] 4944 	dec	sp
      004850 15 81            [12] 4945 	dec	sp
      004852 D0 02            [24] 4946 	pop	ar2
      004854 D0 03            [24] 4947 	pop	ar3
      004856 D0 04            [24] 4948 	pop	ar4
      004858 EE               [12] 4949 	mov	a,r6
      004859 4F               [12] 4950 	orl	a,r7
      00485A 70 43            [24] 4951 	jnz	00211$
                                   4952 ;	calc.c:242: (void)stack_push(ctx->ps, d0);
      00485C 8A 82            [24] 4953 	mov	dpl,r2
      00485E 8B 83            [24] 4954 	mov	dph,r3
      004860 8C F0            [24] 4955 	mov	b,r4
      004862 12 66 3A         [24] 4956 	lcall	__gptrget
      004865 FD               [12] 4957 	mov	r5,a
      004866 A3               [24] 4958 	inc	dptr
      004867 12 66 3A         [24] 4959 	lcall	__gptrget
      00486A FE               [12] 4960 	mov	r6,a
      00486B A3               [24] 4961 	inc	dptr
      00486C 12 66 3A         [24] 4962 	lcall	__gptrget
      00486F FF               [12] 4963 	mov	r7,a
      004870 E5 08            [12] 4964 	mov	a,_bp
      004872 24 1A            [12] 4965 	add	a,#0x1a
      004874 F8               [12] 4966 	mov	r0,a
      004875 E6               [12] 4967 	mov	a,@r0
      004876 C0 E0            [24] 4968 	push	acc
      004878 08               [12] 4969 	inc	r0
      004879 E6               [12] 4970 	mov	a,@r0
      00487A C0 E0            [24] 4971 	push	acc
      00487C 08               [12] 4972 	inc	r0
      00487D E6               [12] 4973 	mov	a,@r0
      00487E C0 E0            [24] 4974 	push	acc
      004880 08               [12] 4975 	inc	r0
      004881 E6               [12] 4976 	mov	a,@r0
      004882 C0 E0            [24] 4977 	push	acc
      004884 8D 82            [24] 4978 	mov	dpl,r5
      004886 8E 83            [24] 4979 	mov	dph,r6
      004888 8F F0            [24] 4980 	mov	b,r7
      00488A 12 26 B5         [24] 4981 	lcall	_stack_push
      00488D E5 81            [12] 4982 	mov	a,sp
      00488F 24 FC            [12] 4983 	add	a,#0xfc
      004891 F5 81            [12] 4984 	mov	sp,a
                                   4985 ;	calc.c:243: printstr("\r\nstack underflow\r\n");
      004893 90 7F 09         [24] 4986 	mov	dptr,#___str_10
      004896 75 F0 80         [24] 4987 	mov	b,#0x80
      004899 12 5E F5         [24] 4988 	lcall	_printstr
      00489C 02 4F 7E         [24] 4989 	ljmp	00249$
      00489F                       4990 00211$:
                                   4991 ;	calc.c:245: d1 |= d0;
      00489F E5 08            [12] 4992 	mov	a,_bp
      0048A1 24 1E            [12] 4993 	add	a,#0x1e
      0048A3 F8               [12] 4994 	mov	r0,a
      0048A4 E5 08            [12] 4995 	mov	a,_bp
      0048A6 24 1A            [12] 4996 	add	a,#0x1a
      0048A8 F9               [12] 4997 	mov	r1,a
      0048A9 E7               [12] 4998 	mov	a,@r1
      0048AA 46               [12] 4999 	orl	a,@r0
      0048AB F6               [12] 5000 	mov	@r0,a
      0048AC 09               [12] 5001 	inc	r1
      0048AD E7               [12] 5002 	mov	a,@r1
      0048AE 08               [12] 5003 	inc	r0
      0048AF 46               [12] 5004 	orl	a,@r0
      0048B0 F6               [12] 5005 	mov	@r0,a
      0048B1 09               [12] 5006 	inc	r1
      0048B2 E7               [12] 5007 	mov	a,@r1
      0048B3 08               [12] 5008 	inc	r0
      0048B4 46               [12] 5009 	orl	a,@r0
      0048B5 F6               [12] 5010 	mov	@r0,a
      0048B6 09               [12] 5011 	inc	r1
      0048B7 E7               [12] 5012 	mov	a,@r1
      0048B8 08               [12] 5013 	inc	r0
      0048B9 46               [12] 5014 	orl	a,@r0
      0048BA F6               [12] 5015 	mov	@r0,a
                                   5016 ;	calc.c:246: (void)stack_push(ctx->ps, d1);
      0048BB 8A 82            [24] 5017 	mov	dpl,r2
      0048BD 8B 83            [24] 5018 	mov	dph,r3
      0048BF 8C F0            [24] 5019 	mov	b,r4
      0048C1 12 66 3A         [24] 5020 	lcall	__gptrget
      0048C4 FA               [12] 5021 	mov	r2,a
      0048C5 A3               [24] 5022 	inc	dptr
      0048C6 12 66 3A         [24] 5023 	lcall	__gptrget
      0048C9 FB               [12] 5024 	mov	r3,a
      0048CA A3               [24] 5025 	inc	dptr
      0048CB 12 66 3A         [24] 5026 	lcall	__gptrget
      0048CE FC               [12] 5027 	mov	r4,a
      0048CF E5 08            [12] 5028 	mov	a,_bp
      0048D1 24 1E            [12] 5029 	add	a,#0x1e
      0048D3 F8               [12] 5030 	mov	r0,a
      0048D4 E6               [12] 5031 	mov	a,@r0
      0048D5 C0 E0            [24] 5032 	push	acc
      0048D7 08               [12] 5033 	inc	r0
      0048D8 E6               [12] 5034 	mov	a,@r0
      0048D9 C0 E0            [24] 5035 	push	acc
      0048DB 08               [12] 5036 	inc	r0
      0048DC E6               [12] 5037 	mov	a,@r0
      0048DD C0 E0            [24] 5038 	push	acc
      0048DF 08               [12] 5039 	inc	r0
      0048E0 E6               [12] 5040 	mov	a,@r0
      0048E1 C0 E0            [24] 5041 	push	acc
      0048E3 8A 82            [24] 5042 	mov	dpl,r2
      0048E5 8B 83            [24] 5043 	mov	dph,r3
      0048E7 8C F0            [24] 5044 	mov	b,r4
      0048E9 12 26 B5         [24] 5045 	lcall	_stack_push
      0048EC E5 81            [12] 5046 	mov	a,sp
      0048EE 24 FC            [12] 5047 	add	a,#0xfc
      0048F0 F5 81            [12] 5048 	mov	sp,a
                                   5049 ;	calc.c:248: break;
      0048F2 02 4F 7E         [24] 5050 	ljmp	00249$
                                   5051 ;	calc.c:249: case '^':
      0048F5                       5052 00216$:
                                   5053 ;	calc.c:250: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0048F5 E5 08            [12] 5054 	mov	a,_bp
      0048F7 24 1A            [12] 5055 	add	a,#0x1a
      0048F9 FF               [12] 5056 	mov	r7,a
      0048FA E5 08            [12] 5057 	mov	a,_bp
      0048FC 24 13            [12] 5058 	add	a,#0x13
      0048FE F8               [12] 5059 	mov	r0,a
      0048FF A6 07            [24] 5060 	mov	@r0,ar7
      004901 08               [12] 5061 	inc	r0
      004902 76 00            [12] 5062 	mov	@r0,#0x00
      004904 08               [12] 5063 	inc	r0
      004905 76 40            [12] 5064 	mov	@r0,#0x40
      004907 E5 08            [12] 5065 	mov	a,_bp
      004909 24 17            [12] 5066 	add	a,#0x17
      00490B F8               [12] 5067 	mov	r0,a
      00490C 74 11            [12] 5068 	mov	a,#0x11
      00490E 26               [12] 5069 	add	a,@r0
      00490F FA               [12] 5070 	mov	r2,a
      004910 74 40            [12] 5071 	mov	a,#0x40
      004912 08               [12] 5072 	inc	r0
      004913 36               [12] 5073 	addc	a,@r0
      004914 FB               [12] 5074 	mov	r3,a
      004915 08               [12] 5075 	inc	r0
      004916 86 04            [24] 5076 	mov	ar4,@r0
      004918 8A 82            [24] 5077 	mov	dpl,r2
      00491A 8B 83            [24] 5078 	mov	dph,r3
      00491C 8C F0            [24] 5079 	mov	b,r4
      00491E 12 66 3A         [24] 5080 	lcall	__gptrget
      004921 FD               [12] 5081 	mov	r5,a
      004922 A3               [24] 5082 	inc	dptr
      004923 12 66 3A         [24] 5083 	lcall	__gptrget
      004926 FE               [12] 5084 	mov	r6,a
      004927 A3               [24] 5085 	inc	dptr
      004928 12 66 3A         [24] 5086 	lcall	__gptrget
      00492B FF               [12] 5087 	mov	r7,a
      00492C C0 04            [24] 5088 	push	ar4
      00492E C0 03            [24] 5089 	push	ar3
      004930 C0 02            [24] 5090 	push	ar2
      004932 E5 08            [12] 5091 	mov	a,_bp
      004934 24 13            [12] 5092 	add	a,#0x13
      004936 F8               [12] 5093 	mov	r0,a
      004937 E6               [12] 5094 	mov	a,@r0
      004938 C0 E0            [24] 5095 	push	acc
      00493A 08               [12] 5096 	inc	r0
      00493B E6               [12] 5097 	mov	a,@r0
      00493C C0 E0            [24] 5098 	push	acc
      00493E 08               [12] 5099 	inc	r0
      00493F E6               [12] 5100 	mov	a,@r0
      004940 C0 E0            [24] 5101 	push	acc
      004942 8D 82            [24] 5102 	mov	dpl,r5
      004944 8E 83            [24] 5103 	mov	dph,r6
      004946 8F F0            [24] 5104 	mov	b,r7
      004948 12 27 83         [24] 5105 	lcall	_stack_pop
      00494B AE 82            [24] 5106 	mov	r6,dpl
      00494D AF 83            [24] 5107 	mov	r7,dph
      00494F 15 81            [12] 5108 	dec	sp
      004951 15 81            [12] 5109 	dec	sp
      004953 15 81            [12] 5110 	dec	sp
      004955 D0 02            [24] 5111 	pop	ar2
      004957 D0 03            [24] 5112 	pop	ar3
      004959 D0 04            [24] 5113 	pop	ar4
      00495B EE               [12] 5114 	mov	a,r6
      00495C 4F               [12] 5115 	orl	a,r7
      00495D 70 0C            [24] 5116 	jnz	00221$
      00495F 90 7F 09         [24] 5117 	mov	dptr,#___str_10
      004962 75 F0 80         [24] 5118 	mov	b,#0x80
      004965 12 5E F5         [24] 5119 	lcall	_printstr
      004968 02 4F 7E         [24] 5120 	ljmp	00249$
      00496B                       5121 00221$:
                                   5122 ;	calc.c:251: else if (!stack_pop(ctx->ps, &d1)) {
      00496B E5 08            [12] 5123 	mov	a,_bp
      00496D 24 1E            [12] 5124 	add	a,#0x1e
      00496F FF               [12] 5125 	mov	r7,a
      004970 E5 08            [12] 5126 	mov	a,_bp
      004972 24 13            [12] 5127 	add	a,#0x13
      004974 F8               [12] 5128 	mov	r0,a
      004975 A6 07            [24] 5129 	mov	@r0,ar7
      004977 08               [12] 5130 	inc	r0
      004978 76 00            [12] 5131 	mov	@r0,#0x00
      00497A 08               [12] 5132 	inc	r0
      00497B 76 40            [12] 5133 	mov	@r0,#0x40
      00497D 8A 82            [24] 5134 	mov	dpl,r2
      00497F 8B 83            [24] 5135 	mov	dph,r3
      004981 8C F0            [24] 5136 	mov	b,r4
      004983 12 66 3A         [24] 5137 	lcall	__gptrget
      004986 FD               [12] 5138 	mov	r5,a
      004987 A3               [24] 5139 	inc	dptr
      004988 12 66 3A         [24] 5140 	lcall	__gptrget
      00498B FE               [12] 5141 	mov	r6,a
      00498C A3               [24] 5142 	inc	dptr
      00498D 12 66 3A         [24] 5143 	lcall	__gptrget
      004990 FF               [12] 5144 	mov	r7,a
      004991 C0 04            [24] 5145 	push	ar4
      004993 C0 03            [24] 5146 	push	ar3
      004995 C0 02            [24] 5147 	push	ar2
      004997 E5 08            [12] 5148 	mov	a,_bp
      004999 24 13            [12] 5149 	add	a,#0x13
      00499B F8               [12] 5150 	mov	r0,a
      00499C E6               [12] 5151 	mov	a,@r0
      00499D C0 E0            [24] 5152 	push	acc
      00499F 08               [12] 5153 	inc	r0
      0049A0 E6               [12] 5154 	mov	a,@r0
      0049A1 C0 E0            [24] 5155 	push	acc
      0049A3 08               [12] 5156 	inc	r0
      0049A4 E6               [12] 5157 	mov	a,@r0
      0049A5 C0 E0            [24] 5158 	push	acc
      0049A7 8D 82            [24] 5159 	mov	dpl,r5
      0049A9 8E 83            [24] 5160 	mov	dph,r6
      0049AB 8F F0            [24] 5161 	mov	b,r7
      0049AD 12 27 83         [24] 5162 	lcall	_stack_pop
      0049B0 AE 82            [24] 5163 	mov	r6,dpl
      0049B2 AF 83            [24] 5164 	mov	r7,dph
      0049B4 15 81            [12] 5165 	dec	sp
      0049B6 15 81            [12] 5166 	dec	sp
      0049B8 15 81            [12] 5167 	dec	sp
      0049BA D0 02            [24] 5168 	pop	ar2
      0049BC D0 03            [24] 5169 	pop	ar3
      0049BE D0 04            [24] 5170 	pop	ar4
      0049C0 EE               [12] 5171 	mov	a,r6
      0049C1 4F               [12] 5172 	orl	a,r7
      0049C2 70 43            [24] 5173 	jnz	00218$
                                   5174 ;	calc.c:252: (void)stack_push(ctx->ps, d0);
      0049C4 8A 82            [24] 5175 	mov	dpl,r2
      0049C6 8B 83            [24] 5176 	mov	dph,r3
      0049C8 8C F0            [24] 5177 	mov	b,r4
      0049CA 12 66 3A         [24] 5178 	lcall	__gptrget
      0049CD FD               [12] 5179 	mov	r5,a
      0049CE A3               [24] 5180 	inc	dptr
      0049CF 12 66 3A         [24] 5181 	lcall	__gptrget
      0049D2 FE               [12] 5182 	mov	r6,a
      0049D3 A3               [24] 5183 	inc	dptr
      0049D4 12 66 3A         [24] 5184 	lcall	__gptrget
      0049D7 FF               [12] 5185 	mov	r7,a
      0049D8 E5 08            [12] 5186 	mov	a,_bp
      0049DA 24 1A            [12] 5187 	add	a,#0x1a
      0049DC F8               [12] 5188 	mov	r0,a
      0049DD E6               [12] 5189 	mov	a,@r0
      0049DE C0 E0            [24] 5190 	push	acc
      0049E0 08               [12] 5191 	inc	r0
      0049E1 E6               [12] 5192 	mov	a,@r0
      0049E2 C0 E0            [24] 5193 	push	acc
      0049E4 08               [12] 5194 	inc	r0
      0049E5 E6               [12] 5195 	mov	a,@r0
      0049E6 C0 E0            [24] 5196 	push	acc
      0049E8 08               [12] 5197 	inc	r0
      0049E9 E6               [12] 5198 	mov	a,@r0
      0049EA C0 E0            [24] 5199 	push	acc
      0049EC 8D 82            [24] 5200 	mov	dpl,r5
      0049EE 8E 83            [24] 5201 	mov	dph,r6
      0049F0 8F F0            [24] 5202 	mov	b,r7
      0049F2 12 26 B5         [24] 5203 	lcall	_stack_push
      0049F5 E5 81            [12] 5204 	mov	a,sp
      0049F7 24 FC            [12] 5205 	add	a,#0xfc
      0049F9 F5 81            [12] 5206 	mov	sp,a
                                   5207 ;	calc.c:253: printstr("\r\nstack underflow\r\n");
      0049FB 90 7F 09         [24] 5208 	mov	dptr,#___str_10
      0049FE 75 F0 80         [24] 5209 	mov	b,#0x80
      004A01 12 5E F5         [24] 5210 	lcall	_printstr
      004A04 02 4F 7E         [24] 5211 	ljmp	00249$
      004A07                       5212 00218$:
                                   5213 ;	calc.c:255: d1 ^= d0;
      004A07 E5 08            [12] 5214 	mov	a,_bp
      004A09 24 1E            [12] 5215 	add	a,#0x1e
      004A0B F8               [12] 5216 	mov	r0,a
      004A0C E5 08            [12] 5217 	mov	a,_bp
      004A0E 24 1A            [12] 5218 	add	a,#0x1a
      004A10 F9               [12] 5219 	mov	r1,a
      004A11 E7               [12] 5220 	mov	a,@r1
      004A12 66               [12] 5221 	xrl	a,@r0
      004A13 F6               [12] 5222 	mov	@r0,a
      004A14 09               [12] 5223 	inc	r1
      004A15 E7               [12] 5224 	mov	a,@r1
      004A16 08               [12] 5225 	inc	r0
      004A17 66               [12] 5226 	xrl	a,@r0
      004A18 F6               [12] 5227 	mov	@r0,a
      004A19 09               [12] 5228 	inc	r1
      004A1A E7               [12] 5229 	mov	a,@r1
      004A1B 08               [12] 5230 	inc	r0
      004A1C 66               [12] 5231 	xrl	a,@r0
      004A1D F6               [12] 5232 	mov	@r0,a
      004A1E 09               [12] 5233 	inc	r1
      004A1F E7               [12] 5234 	mov	a,@r1
      004A20 08               [12] 5235 	inc	r0
      004A21 66               [12] 5236 	xrl	a,@r0
      004A22 F6               [12] 5237 	mov	@r0,a
                                   5238 ;	calc.c:256: (void)stack_push(ctx->ps, d1);
      004A23 8A 82            [24] 5239 	mov	dpl,r2
      004A25 8B 83            [24] 5240 	mov	dph,r3
      004A27 8C F0            [24] 5241 	mov	b,r4
      004A29 12 66 3A         [24] 5242 	lcall	__gptrget
      004A2C FA               [12] 5243 	mov	r2,a
      004A2D A3               [24] 5244 	inc	dptr
      004A2E 12 66 3A         [24] 5245 	lcall	__gptrget
      004A31 FB               [12] 5246 	mov	r3,a
      004A32 A3               [24] 5247 	inc	dptr
      004A33 12 66 3A         [24] 5248 	lcall	__gptrget
      004A36 FC               [12] 5249 	mov	r4,a
      004A37 E5 08            [12] 5250 	mov	a,_bp
      004A39 24 1E            [12] 5251 	add	a,#0x1e
      004A3B F8               [12] 5252 	mov	r0,a
      004A3C E6               [12] 5253 	mov	a,@r0
      004A3D C0 E0            [24] 5254 	push	acc
      004A3F 08               [12] 5255 	inc	r0
      004A40 E6               [12] 5256 	mov	a,@r0
      004A41 C0 E0            [24] 5257 	push	acc
      004A43 08               [12] 5258 	inc	r0
      004A44 E6               [12] 5259 	mov	a,@r0
      004A45 C0 E0            [24] 5260 	push	acc
      004A47 08               [12] 5261 	inc	r0
      004A48 E6               [12] 5262 	mov	a,@r0
      004A49 C0 E0            [24] 5263 	push	acc
      004A4B 8A 82            [24] 5264 	mov	dpl,r2
      004A4D 8B 83            [24] 5265 	mov	dph,r3
      004A4F 8C F0            [24] 5266 	mov	b,r4
      004A51 12 26 B5         [24] 5267 	lcall	_stack_push
      004A54 E5 81            [12] 5268 	mov	a,sp
      004A56 24 FC            [12] 5269 	add	a,#0xfc
      004A58 F5 81            [12] 5270 	mov	sp,a
                                   5271 ;	calc.c:258: break;
      004A5A 02 4F 7E         [24] 5272 	ljmp	00249$
                                   5273 ;	calc.c:259: case '>':
      004A5D                       5274 00223$:
                                   5275 ;	calc.c:260: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004A5D E5 08            [12] 5276 	mov	a,_bp
      004A5F 24 1A            [12] 5277 	add	a,#0x1a
      004A61 FC               [12] 5278 	mov	r4,a
      004A62 7B 00            [12] 5279 	mov	r3,#0x00
      004A64 7A 40            [12] 5280 	mov	r2,#0x40
      004A66 E5 08            [12] 5281 	mov	a,_bp
      004A68 24 17            [12] 5282 	add	a,#0x17
      004A6A F8               [12] 5283 	mov	r0,a
      004A6B E5 08            [12] 5284 	mov	a,_bp
      004A6D 24 0F            [12] 5285 	add	a,#0x0f
      004A6F F9               [12] 5286 	mov	r1,a
      004A70 74 11            [12] 5287 	mov	a,#0x11
      004A72 26               [12] 5288 	add	a,@r0
      004A73 F7               [12] 5289 	mov	@r1,a
      004A74 74 40            [12] 5290 	mov	a,#0x40
      004A76 08               [12] 5291 	inc	r0
      004A77 36               [12] 5292 	addc	a,@r0
      004A78 09               [12] 5293 	inc	r1
      004A79 F7               [12] 5294 	mov	@r1,a
      004A7A 08               [12] 5295 	inc	r0
      004A7B 09               [12] 5296 	inc	r1
      004A7C E6               [12] 5297 	mov	a,@r0
      004A7D F7               [12] 5298 	mov	@r1,a
      004A7E E5 08            [12] 5299 	mov	a,_bp
      004A80 24 0F            [12] 5300 	add	a,#0x0f
      004A82 F8               [12] 5301 	mov	r0,a
      004A83 86 82            [24] 5302 	mov	dpl,@r0
      004A85 08               [12] 5303 	inc	r0
      004A86 86 83            [24] 5304 	mov	dph,@r0
      004A88 08               [12] 5305 	inc	r0
      004A89 86 F0            [24] 5306 	mov	b,@r0
      004A8B 12 66 3A         [24] 5307 	lcall	__gptrget
      004A8E FD               [12] 5308 	mov	r5,a
      004A8F A3               [24] 5309 	inc	dptr
      004A90 12 66 3A         [24] 5310 	lcall	__gptrget
      004A93 FE               [12] 5311 	mov	r6,a
      004A94 A3               [24] 5312 	inc	dptr
      004A95 12 66 3A         [24] 5313 	lcall	__gptrget
      004A98 FF               [12] 5314 	mov	r7,a
      004A99 C0 04            [24] 5315 	push	ar4
      004A9B C0 03            [24] 5316 	push	ar3
      004A9D C0 02            [24] 5317 	push	ar2
      004A9F 8D 82            [24] 5318 	mov	dpl,r5
      004AA1 8E 83            [24] 5319 	mov	dph,r6
      004AA3 8F F0            [24] 5320 	mov	b,r7
      004AA5 12 27 83         [24] 5321 	lcall	_stack_pop
      004AA8 AE 82            [24] 5322 	mov	r6,dpl
      004AAA AF 83            [24] 5323 	mov	r7,dph
      004AAC 15 81            [12] 5324 	dec	sp
      004AAE 15 81            [12] 5325 	dec	sp
      004AB0 15 81            [12] 5326 	dec	sp
      004AB2 EE               [12] 5327 	mov	a,r6
      004AB3 4F               [12] 5328 	orl	a,r7
      004AB4 70 0C            [24] 5329 	jnz	00228$
      004AB6 90 7F 09         [24] 5330 	mov	dptr,#___str_10
      004AB9 75 F0 80         [24] 5331 	mov	b,#0x80
      004ABC 12 5E F5         [24] 5332 	lcall	_printstr
      004ABF 02 4F 7E         [24] 5333 	ljmp	00249$
      004AC2                       5334 00228$:
                                   5335 ;	calc.c:261: else if (!stack_pop(ctx->ps, &d1)) {
      004AC2 E5 08            [12] 5336 	mov	a,_bp
      004AC4 24 1E            [12] 5337 	add	a,#0x1e
      004AC6 FC               [12] 5338 	mov	r4,a
      004AC7 7B 00            [12] 5339 	mov	r3,#0x00
      004AC9 7A 40            [12] 5340 	mov	r2,#0x40
      004ACB E5 08            [12] 5341 	mov	a,_bp
      004ACD 24 0F            [12] 5342 	add	a,#0x0f
      004ACF F8               [12] 5343 	mov	r0,a
      004AD0 86 82            [24] 5344 	mov	dpl,@r0
      004AD2 08               [12] 5345 	inc	r0
      004AD3 86 83            [24] 5346 	mov	dph,@r0
      004AD5 08               [12] 5347 	inc	r0
      004AD6 86 F0            [24] 5348 	mov	b,@r0
      004AD8 12 66 3A         [24] 5349 	lcall	__gptrget
      004ADB FD               [12] 5350 	mov	r5,a
      004ADC A3               [24] 5351 	inc	dptr
      004ADD 12 66 3A         [24] 5352 	lcall	__gptrget
      004AE0 FE               [12] 5353 	mov	r6,a
      004AE1 A3               [24] 5354 	inc	dptr
      004AE2 12 66 3A         [24] 5355 	lcall	__gptrget
      004AE5 FF               [12] 5356 	mov	r7,a
      004AE6 C0 04            [24] 5357 	push	ar4
      004AE8 C0 03            [24] 5358 	push	ar3
      004AEA C0 02            [24] 5359 	push	ar2
      004AEC 8D 82            [24] 5360 	mov	dpl,r5
      004AEE 8E 83            [24] 5361 	mov	dph,r6
      004AF0 8F F0            [24] 5362 	mov	b,r7
      004AF2 12 27 83         [24] 5363 	lcall	_stack_pop
      004AF5 AE 82            [24] 5364 	mov	r6,dpl
      004AF7 AF 83            [24] 5365 	mov	r7,dph
      004AF9 15 81            [12] 5366 	dec	sp
      004AFB 15 81            [12] 5367 	dec	sp
      004AFD 15 81            [12] 5368 	dec	sp
      004AFF EE               [12] 5369 	mov	a,r6
      004B00 4F               [12] 5370 	orl	a,r7
      004B01 70 4A            [24] 5371 	jnz	00225$
                                   5372 ;	calc.c:262: (void)stack_push(ctx->ps, d0);
      004B03 E5 08            [12] 5373 	mov	a,_bp
      004B05 24 0F            [12] 5374 	add	a,#0x0f
      004B07 F8               [12] 5375 	mov	r0,a
      004B08 86 82            [24] 5376 	mov	dpl,@r0
      004B0A 08               [12] 5377 	inc	r0
      004B0B 86 83            [24] 5378 	mov	dph,@r0
      004B0D 08               [12] 5379 	inc	r0
      004B0E 86 F0            [24] 5380 	mov	b,@r0
      004B10 12 66 3A         [24] 5381 	lcall	__gptrget
      004B13 FD               [12] 5382 	mov	r5,a
      004B14 A3               [24] 5383 	inc	dptr
      004B15 12 66 3A         [24] 5384 	lcall	__gptrget
      004B18 FE               [12] 5385 	mov	r6,a
      004B19 A3               [24] 5386 	inc	dptr
      004B1A 12 66 3A         [24] 5387 	lcall	__gptrget
      004B1D FF               [12] 5388 	mov	r7,a
      004B1E E5 08            [12] 5389 	mov	a,_bp
      004B20 24 1A            [12] 5390 	add	a,#0x1a
      004B22 F8               [12] 5391 	mov	r0,a
      004B23 E6               [12] 5392 	mov	a,@r0
      004B24 C0 E0            [24] 5393 	push	acc
      004B26 08               [12] 5394 	inc	r0
      004B27 E6               [12] 5395 	mov	a,@r0
      004B28 C0 E0            [24] 5396 	push	acc
      004B2A 08               [12] 5397 	inc	r0
      004B2B E6               [12] 5398 	mov	a,@r0
      004B2C C0 E0            [24] 5399 	push	acc
      004B2E 08               [12] 5400 	inc	r0
      004B2F E6               [12] 5401 	mov	a,@r0
      004B30 C0 E0            [24] 5402 	push	acc
      004B32 8D 82            [24] 5403 	mov	dpl,r5
      004B34 8E 83            [24] 5404 	mov	dph,r6
      004B36 8F F0            [24] 5405 	mov	b,r7
      004B38 12 26 B5         [24] 5406 	lcall	_stack_push
      004B3B E5 81            [12] 5407 	mov	a,sp
      004B3D 24 FC            [12] 5408 	add	a,#0xfc
      004B3F F5 81            [12] 5409 	mov	sp,a
                                   5410 ;	calc.c:263: printstr("\r\nstack underflow\r\n");
      004B41 90 7F 09         [24] 5411 	mov	dptr,#___str_10
      004B44 75 F0 80         [24] 5412 	mov	b,#0x80
      004B47 12 5E F5         [24] 5413 	lcall	_printstr
      004B4A 02 4F 7E         [24] 5414 	ljmp	00249$
      004B4D                       5415 00225$:
                                   5416 ;	calc.c:265: d1 = (unsigned long)d1 >> d0;
      004B4D E5 08            [12] 5417 	mov	a,_bp
      004B4F 24 1E            [12] 5418 	add	a,#0x1e
      004B51 F8               [12] 5419 	mov	r0,a
      004B52 86 04            [24] 5420 	mov	ar4,@r0
      004B54 08               [12] 5421 	inc	r0
      004B55 86 05            [24] 5422 	mov	ar5,@r0
      004B57 08               [12] 5423 	inc	r0
      004B58 86 06            [24] 5424 	mov	ar6,@r0
      004B5A 08               [12] 5425 	inc	r0
      004B5B 86 07            [24] 5426 	mov	ar7,@r0
      004B5D E5 08            [12] 5427 	mov	a,_bp
      004B5F 24 1A            [12] 5428 	add	a,#0x1a
      004B61 F8               [12] 5429 	mov	r0,a
      004B62 86 F0            [24] 5430 	mov	b,@r0
      004B64 05 F0            [12] 5431 	inc	b
      004B66 80 0D            [24] 5432 	sjmp	00592$
      004B68                       5433 00591$:
      004B68 C3               [12] 5434 	clr	c
      004B69 EF               [12] 5435 	mov	a,r7
      004B6A 13               [12] 5436 	rrc	a
      004B6B FF               [12] 5437 	mov	r7,a
      004B6C EE               [12] 5438 	mov	a,r6
      004B6D 13               [12] 5439 	rrc	a
      004B6E FE               [12] 5440 	mov	r6,a
      004B6F ED               [12] 5441 	mov	a,r5
      004B70 13               [12] 5442 	rrc	a
      004B71 FD               [12] 5443 	mov	r5,a
      004B72 EC               [12] 5444 	mov	a,r4
      004B73 13               [12] 5445 	rrc	a
      004B74 FC               [12] 5446 	mov	r4,a
      004B75                       5447 00592$:
      004B75 D5 F0 F0         [24] 5448 	djnz	b,00591$
      004B78 E5 08            [12] 5449 	mov	a,_bp
      004B7A 24 1E            [12] 5450 	add	a,#0x1e
      004B7C F8               [12] 5451 	mov	r0,a
      004B7D A6 04            [24] 5452 	mov	@r0,ar4
      004B7F 08               [12] 5453 	inc	r0
      004B80 A6 05            [24] 5454 	mov	@r0,ar5
      004B82 08               [12] 5455 	inc	r0
      004B83 A6 06            [24] 5456 	mov	@r0,ar6
      004B85 08               [12] 5457 	inc	r0
      004B86 A6 07            [24] 5458 	mov	@r0,ar7
                                   5459 ;	calc.c:266: (void)stack_push(ctx->ps, d1);
      004B88 E5 08            [12] 5460 	mov	a,_bp
      004B8A 24 0F            [12] 5461 	add	a,#0x0f
      004B8C F8               [12] 5462 	mov	r0,a
      004B8D 86 82            [24] 5463 	mov	dpl,@r0
      004B8F 08               [12] 5464 	inc	r0
      004B90 86 83            [24] 5465 	mov	dph,@r0
      004B92 08               [12] 5466 	inc	r0
      004B93 86 F0            [24] 5467 	mov	b,@r0
      004B95 12 66 3A         [24] 5468 	lcall	__gptrget
      004B98 FD               [12] 5469 	mov	r5,a
      004B99 A3               [24] 5470 	inc	dptr
      004B9A 12 66 3A         [24] 5471 	lcall	__gptrget
      004B9D FE               [12] 5472 	mov	r6,a
      004B9E A3               [24] 5473 	inc	dptr
      004B9F 12 66 3A         [24] 5474 	lcall	__gptrget
      004BA2 FF               [12] 5475 	mov	r7,a
      004BA3 E5 08            [12] 5476 	mov	a,_bp
      004BA5 24 1E            [12] 5477 	add	a,#0x1e
      004BA7 F8               [12] 5478 	mov	r0,a
      004BA8 E6               [12] 5479 	mov	a,@r0
      004BA9 C0 E0            [24] 5480 	push	acc
      004BAB 08               [12] 5481 	inc	r0
      004BAC E6               [12] 5482 	mov	a,@r0
      004BAD C0 E0            [24] 5483 	push	acc
      004BAF 08               [12] 5484 	inc	r0
      004BB0 E6               [12] 5485 	mov	a,@r0
      004BB1 C0 E0            [24] 5486 	push	acc
      004BB3 08               [12] 5487 	inc	r0
      004BB4 E6               [12] 5488 	mov	a,@r0
      004BB5 C0 E0            [24] 5489 	push	acc
      004BB7 8D 82            [24] 5490 	mov	dpl,r5
      004BB9 8E 83            [24] 5491 	mov	dph,r6
      004BBB 8F F0            [24] 5492 	mov	b,r7
      004BBD 12 26 B5         [24] 5493 	lcall	_stack_push
      004BC0 E5 81            [12] 5494 	mov	a,sp
      004BC2 24 FC            [12] 5495 	add	a,#0xfc
      004BC4 F5 81            [12] 5496 	mov	sp,a
                                   5497 ;	calc.c:268: break;
      004BC6 02 4F 7E         [24] 5498 	ljmp	00249$
                                   5499 ;	calc.c:269: case ']':
      004BC9                       5500 00230$:
                                   5501 ;	calc.c:270: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004BC9 E5 08            [12] 5502 	mov	a,_bp
      004BCB 24 1A            [12] 5503 	add	a,#0x1a
      004BCD FF               [12] 5504 	mov	r7,a
      004BCE E5 08            [12] 5505 	mov	a,_bp
      004BD0 24 13            [12] 5506 	add	a,#0x13
      004BD2 F8               [12] 5507 	mov	r0,a
      004BD3 A6 07            [24] 5508 	mov	@r0,ar7
      004BD5 08               [12] 5509 	inc	r0
      004BD6 76 00            [12] 5510 	mov	@r0,#0x00
      004BD8 08               [12] 5511 	inc	r0
      004BD9 76 40            [12] 5512 	mov	@r0,#0x40
      004BDB E5 08            [12] 5513 	mov	a,_bp
      004BDD 24 17            [12] 5514 	add	a,#0x17
      004BDF F8               [12] 5515 	mov	r0,a
      004BE0 74 11            [12] 5516 	mov	a,#0x11
      004BE2 26               [12] 5517 	add	a,@r0
      004BE3 FA               [12] 5518 	mov	r2,a
      004BE4 74 40            [12] 5519 	mov	a,#0x40
      004BE6 08               [12] 5520 	inc	r0
      004BE7 36               [12] 5521 	addc	a,@r0
      004BE8 FB               [12] 5522 	mov	r3,a
      004BE9 08               [12] 5523 	inc	r0
      004BEA 86 04            [24] 5524 	mov	ar4,@r0
      004BEC 8A 82            [24] 5525 	mov	dpl,r2
      004BEE 8B 83            [24] 5526 	mov	dph,r3
      004BF0 8C F0            [24] 5527 	mov	b,r4
      004BF2 12 66 3A         [24] 5528 	lcall	__gptrget
      004BF5 FD               [12] 5529 	mov	r5,a
      004BF6 A3               [24] 5530 	inc	dptr
      004BF7 12 66 3A         [24] 5531 	lcall	__gptrget
      004BFA FE               [12] 5532 	mov	r6,a
      004BFB A3               [24] 5533 	inc	dptr
      004BFC 12 66 3A         [24] 5534 	lcall	__gptrget
      004BFF FF               [12] 5535 	mov	r7,a
      004C00 C0 04            [24] 5536 	push	ar4
      004C02 C0 03            [24] 5537 	push	ar3
      004C04 C0 02            [24] 5538 	push	ar2
      004C06 E5 08            [12] 5539 	mov	a,_bp
      004C08 24 13            [12] 5540 	add	a,#0x13
      004C0A F8               [12] 5541 	mov	r0,a
      004C0B E6               [12] 5542 	mov	a,@r0
      004C0C C0 E0            [24] 5543 	push	acc
      004C0E 08               [12] 5544 	inc	r0
      004C0F E6               [12] 5545 	mov	a,@r0
      004C10 C0 E0            [24] 5546 	push	acc
      004C12 08               [12] 5547 	inc	r0
      004C13 E6               [12] 5548 	mov	a,@r0
      004C14 C0 E0            [24] 5549 	push	acc
      004C16 8D 82            [24] 5550 	mov	dpl,r5
      004C18 8E 83            [24] 5551 	mov	dph,r6
      004C1A 8F F0            [24] 5552 	mov	b,r7
      004C1C 12 27 83         [24] 5553 	lcall	_stack_pop
      004C1F AE 82            [24] 5554 	mov	r6,dpl
      004C21 AF 83            [24] 5555 	mov	r7,dph
      004C23 15 81            [12] 5556 	dec	sp
      004C25 15 81            [12] 5557 	dec	sp
      004C27 15 81            [12] 5558 	dec	sp
      004C29 D0 02            [24] 5559 	pop	ar2
      004C2B D0 03            [24] 5560 	pop	ar3
      004C2D D0 04            [24] 5561 	pop	ar4
      004C2F EE               [12] 5562 	mov	a,r6
      004C30 4F               [12] 5563 	orl	a,r7
      004C31 70 0C            [24] 5564 	jnz	00235$
      004C33 90 7F 09         [24] 5565 	mov	dptr,#___str_10
      004C36 75 F0 80         [24] 5566 	mov	b,#0x80
      004C39 12 5E F5         [24] 5567 	lcall	_printstr
      004C3C 02 4F 7E         [24] 5568 	ljmp	00249$
      004C3F                       5569 00235$:
                                   5570 ;	calc.c:271: else if (!stack_pop(ctx->ps, &d1)) {
      004C3F E5 08            [12] 5571 	mov	a,_bp
      004C41 24 1E            [12] 5572 	add	a,#0x1e
      004C43 FF               [12] 5573 	mov	r7,a
      004C44 E5 08            [12] 5574 	mov	a,_bp
      004C46 24 13            [12] 5575 	add	a,#0x13
      004C48 F8               [12] 5576 	mov	r0,a
      004C49 A6 07            [24] 5577 	mov	@r0,ar7
      004C4B 08               [12] 5578 	inc	r0
      004C4C 76 00            [12] 5579 	mov	@r0,#0x00
      004C4E 08               [12] 5580 	inc	r0
      004C4F 76 40            [12] 5581 	mov	@r0,#0x40
      004C51 8A 82            [24] 5582 	mov	dpl,r2
      004C53 8B 83            [24] 5583 	mov	dph,r3
      004C55 8C F0            [24] 5584 	mov	b,r4
      004C57 12 66 3A         [24] 5585 	lcall	__gptrget
      004C5A FD               [12] 5586 	mov	r5,a
      004C5B A3               [24] 5587 	inc	dptr
      004C5C 12 66 3A         [24] 5588 	lcall	__gptrget
      004C5F FE               [12] 5589 	mov	r6,a
      004C60 A3               [24] 5590 	inc	dptr
      004C61 12 66 3A         [24] 5591 	lcall	__gptrget
      004C64 FF               [12] 5592 	mov	r7,a
      004C65 C0 04            [24] 5593 	push	ar4
      004C67 C0 03            [24] 5594 	push	ar3
      004C69 C0 02            [24] 5595 	push	ar2
      004C6B E5 08            [12] 5596 	mov	a,_bp
      004C6D 24 13            [12] 5597 	add	a,#0x13
      004C6F F8               [12] 5598 	mov	r0,a
      004C70 E6               [12] 5599 	mov	a,@r0
      004C71 C0 E0            [24] 5600 	push	acc
      004C73 08               [12] 5601 	inc	r0
      004C74 E6               [12] 5602 	mov	a,@r0
      004C75 C0 E0            [24] 5603 	push	acc
      004C77 08               [12] 5604 	inc	r0
      004C78 E6               [12] 5605 	mov	a,@r0
      004C79 C0 E0            [24] 5606 	push	acc
      004C7B 8D 82            [24] 5607 	mov	dpl,r5
      004C7D 8E 83            [24] 5608 	mov	dph,r6
      004C7F 8F F0            [24] 5609 	mov	b,r7
      004C81 12 27 83         [24] 5610 	lcall	_stack_pop
      004C84 AE 82            [24] 5611 	mov	r6,dpl
      004C86 AF 83            [24] 5612 	mov	r7,dph
      004C88 15 81            [12] 5613 	dec	sp
      004C8A 15 81            [12] 5614 	dec	sp
      004C8C 15 81            [12] 5615 	dec	sp
      004C8E D0 02            [24] 5616 	pop	ar2
      004C90 D0 03            [24] 5617 	pop	ar3
      004C92 D0 04            [24] 5618 	pop	ar4
      004C94 EE               [12] 5619 	mov	a,r6
      004C95 4F               [12] 5620 	orl	a,r7
      004C96 70 43            [24] 5621 	jnz	00232$
                                   5622 ;	calc.c:272: (void)stack_push(ctx->ps, d0);
      004C98 8A 82            [24] 5623 	mov	dpl,r2
      004C9A 8B 83            [24] 5624 	mov	dph,r3
      004C9C 8C F0            [24] 5625 	mov	b,r4
      004C9E 12 66 3A         [24] 5626 	lcall	__gptrget
      004CA1 FD               [12] 5627 	mov	r5,a
      004CA2 A3               [24] 5628 	inc	dptr
      004CA3 12 66 3A         [24] 5629 	lcall	__gptrget
      004CA6 FE               [12] 5630 	mov	r6,a
      004CA7 A3               [24] 5631 	inc	dptr
      004CA8 12 66 3A         [24] 5632 	lcall	__gptrget
      004CAB FF               [12] 5633 	mov	r7,a
      004CAC E5 08            [12] 5634 	mov	a,_bp
      004CAE 24 1A            [12] 5635 	add	a,#0x1a
      004CB0 F8               [12] 5636 	mov	r0,a
      004CB1 E6               [12] 5637 	mov	a,@r0
      004CB2 C0 E0            [24] 5638 	push	acc
      004CB4 08               [12] 5639 	inc	r0
      004CB5 E6               [12] 5640 	mov	a,@r0
      004CB6 C0 E0            [24] 5641 	push	acc
      004CB8 08               [12] 5642 	inc	r0
      004CB9 E6               [12] 5643 	mov	a,@r0
      004CBA C0 E0            [24] 5644 	push	acc
      004CBC 08               [12] 5645 	inc	r0
      004CBD E6               [12] 5646 	mov	a,@r0
      004CBE C0 E0            [24] 5647 	push	acc
      004CC0 8D 82            [24] 5648 	mov	dpl,r5
      004CC2 8E 83            [24] 5649 	mov	dph,r6
      004CC4 8F F0            [24] 5650 	mov	b,r7
      004CC6 12 26 B5         [24] 5651 	lcall	_stack_push
      004CC9 E5 81            [12] 5652 	mov	a,sp
      004CCB 24 FC            [12] 5653 	add	a,#0xfc
      004CCD F5 81            [12] 5654 	mov	sp,a
                                   5655 ;	calc.c:273: printstr("\r\nstack underflow\r\n");
      004CCF 90 7F 09         [24] 5656 	mov	dptr,#___str_10
      004CD2 75 F0 80         [24] 5657 	mov	b,#0x80
      004CD5 12 5E F5         [24] 5658 	lcall	_printstr
      004CD8 02 4F 7E         [24] 5659 	ljmp	00249$
      004CDB                       5660 00232$:
                                   5661 ;	calc.c:275: d1 >>= d0;
      004CDB E5 08            [12] 5662 	mov	a,_bp
      004CDD 24 1A            [12] 5663 	add	a,#0x1a
      004CDF F8               [12] 5664 	mov	r0,a
      004CE0 86 F0            [24] 5665 	mov	b,@r0
      004CE2 05 F0            [12] 5666 	inc	b
      004CE4 E5 08            [12] 5667 	mov	a,_bp
      004CE6 24 1E            [12] 5668 	add	a,#0x1e
      004CE8 F8               [12] 5669 	mov	r0,a
      004CE9 08               [12] 5670 	inc	r0
      004CEA 08               [12] 5671 	inc	r0
      004CEB 08               [12] 5672 	inc	r0
      004CEC E6               [12] 5673 	mov	a,@r0
      004CED 33               [12] 5674 	rlc	a
      004CEE 92 D2            [24] 5675 	mov	ov,c
      004CF0 18               [12] 5676 	dec	r0
      004CF1 18               [12] 5677 	dec	r0
      004CF2 18               [12] 5678 	dec	r0
      004CF3 80 14            [24] 5679 	sjmp	00596$
      004CF5                       5680 00595$:
      004CF5 A2 D2            [12] 5681 	mov	c,ov
      004CF7 08               [12] 5682 	inc	r0
      004CF8 08               [12] 5683 	inc	r0
      004CF9 08               [12] 5684 	inc	r0
      004CFA E6               [12] 5685 	mov	a,@r0
      004CFB 13               [12] 5686 	rrc	a
      004CFC F6               [12] 5687 	mov	@r0,a
      004CFD 18               [12] 5688 	dec	r0
      004CFE E6               [12] 5689 	mov	a,@r0
      004CFF 13               [12] 5690 	rrc	a
      004D00 F6               [12] 5691 	mov	@r0,a
      004D01 18               [12] 5692 	dec	r0
      004D02 E6               [12] 5693 	mov	a,@r0
      004D03 13               [12] 5694 	rrc	a
      004D04 F6               [12] 5695 	mov	@r0,a
      004D05 18               [12] 5696 	dec	r0
      004D06 E6               [12] 5697 	mov	a,@r0
      004D07 13               [12] 5698 	rrc	a
      004D08 F6               [12] 5699 	mov	@r0,a
      004D09                       5700 00596$:
      004D09 D5 F0 E9         [24] 5701 	djnz	b,00595$
                                   5702 ;	calc.c:276: (void)stack_push(ctx->ps, d1);
      004D0C 8A 82            [24] 5703 	mov	dpl,r2
      004D0E 8B 83            [24] 5704 	mov	dph,r3
      004D10 8C F0            [24] 5705 	mov	b,r4
      004D12 12 66 3A         [24] 5706 	lcall	__gptrget
      004D15 FA               [12] 5707 	mov	r2,a
      004D16 A3               [24] 5708 	inc	dptr
      004D17 12 66 3A         [24] 5709 	lcall	__gptrget
      004D1A FB               [12] 5710 	mov	r3,a
      004D1B A3               [24] 5711 	inc	dptr
      004D1C 12 66 3A         [24] 5712 	lcall	__gptrget
      004D1F FC               [12] 5713 	mov	r4,a
      004D20 E5 08            [12] 5714 	mov	a,_bp
      004D22 24 1E            [12] 5715 	add	a,#0x1e
      004D24 F8               [12] 5716 	mov	r0,a
      004D25 E6               [12] 5717 	mov	a,@r0
      004D26 C0 E0            [24] 5718 	push	acc
      004D28 08               [12] 5719 	inc	r0
      004D29 E6               [12] 5720 	mov	a,@r0
      004D2A C0 E0            [24] 5721 	push	acc
      004D2C 08               [12] 5722 	inc	r0
      004D2D E6               [12] 5723 	mov	a,@r0
      004D2E C0 E0            [24] 5724 	push	acc
      004D30 08               [12] 5725 	inc	r0
      004D31 E6               [12] 5726 	mov	a,@r0
      004D32 C0 E0            [24] 5727 	push	acc
      004D34 8A 82            [24] 5728 	mov	dpl,r2
      004D36 8B 83            [24] 5729 	mov	dph,r3
      004D38 8C F0            [24] 5730 	mov	b,r4
      004D3A 12 26 B5         [24] 5731 	lcall	_stack_push
      004D3D E5 81            [12] 5732 	mov	a,sp
      004D3F 24 FC            [12] 5733 	add	a,#0xfc
      004D41 F5 81            [12] 5734 	mov	sp,a
                                   5735 ;	calc.c:278: break;
      004D43 02 4F 7E         [24] 5736 	ljmp	00249$
                                   5737 ;	calc.c:279: case '<':
      004D46                       5738 00237$:
                                   5739 ;	calc.c:280: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004D46 E5 08            [12] 5740 	mov	a,_bp
      004D48 24 1A            [12] 5741 	add	a,#0x1a
      004D4A FF               [12] 5742 	mov	r7,a
      004D4B E5 08            [12] 5743 	mov	a,_bp
      004D4D 24 13            [12] 5744 	add	a,#0x13
      004D4F F8               [12] 5745 	mov	r0,a
      004D50 A6 07            [24] 5746 	mov	@r0,ar7
      004D52 08               [12] 5747 	inc	r0
      004D53 76 00            [12] 5748 	mov	@r0,#0x00
      004D55 08               [12] 5749 	inc	r0
      004D56 76 40            [12] 5750 	mov	@r0,#0x40
      004D58 E5 08            [12] 5751 	mov	a,_bp
      004D5A 24 17            [12] 5752 	add	a,#0x17
      004D5C F8               [12] 5753 	mov	r0,a
      004D5D 74 11            [12] 5754 	mov	a,#0x11
      004D5F 26               [12] 5755 	add	a,@r0
      004D60 FA               [12] 5756 	mov	r2,a
      004D61 74 40            [12] 5757 	mov	a,#0x40
      004D63 08               [12] 5758 	inc	r0
      004D64 36               [12] 5759 	addc	a,@r0
      004D65 FB               [12] 5760 	mov	r3,a
      004D66 08               [12] 5761 	inc	r0
      004D67 86 04            [24] 5762 	mov	ar4,@r0
      004D69 8A 82            [24] 5763 	mov	dpl,r2
      004D6B 8B 83            [24] 5764 	mov	dph,r3
      004D6D 8C F0            [24] 5765 	mov	b,r4
      004D6F 12 66 3A         [24] 5766 	lcall	__gptrget
      004D72 FD               [12] 5767 	mov	r5,a
      004D73 A3               [24] 5768 	inc	dptr
      004D74 12 66 3A         [24] 5769 	lcall	__gptrget
      004D77 FE               [12] 5770 	mov	r6,a
      004D78 A3               [24] 5771 	inc	dptr
      004D79 12 66 3A         [24] 5772 	lcall	__gptrget
      004D7C FF               [12] 5773 	mov	r7,a
      004D7D C0 04            [24] 5774 	push	ar4
      004D7F C0 03            [24] 5775 	push	ar3
      004D81 C0 02            [24] 5776 	push	ar2
      004D83 E5 08            [12] 5777 	mov	a,_bp
      004D85 24 13            [12] 5778 	add	a,#0x13
      004D87 F8               [12] 5779 	mov	r0,a
      004D88 E6               [12] 5780 	mov	a,@r0
      004D89 C0 E0            [24] 5781 	push	acc
      004D8B 08               [12] 5782 	inc	r0
      004D8C E6               [12] 5783 	mov	a,@r0
      004D8D C0 E0            [24] 5784 	push	acc
      004D8F 08               [12] 5785 	inc	r0
      004D90 E6               [12] 5786 	mov	a,@r0
      004D91 C0 E0            [24] 5787 	push	acc
      004D93 8D 82            [24] 5788 	mov	dpl,r5
      004D95 8E 83            [24] 5789 	mov	dph,r6
      004D97 8F F0            [24] 5790 	mov	b,r7
      004D99 12 27 83         [24] 5791 	lcall	_stack_pop
      004D9C AE 82            [24] 5792 	mov	r6,dpl
      004D9E AF 83            [24] 5793 	mov	r7,dph
      004DA0 15 81            [12] 5794 	dec	sp
      004DA2 15 81            [12] 5795 	dec	sp
      004DA4 15 81            [12] 5796 	dec	sp
      004DA6 D0 02            [24] 5797 	pop	ar2
      004DA8 D0 03            [24] 5798 	pop	ar3
      004DAA D0 04            [24] 5799 	pop	ar4
      004DAC EE               [12] 5800 	mov	a,r6
      004DAD 4F               [12] 5801 	orl	a,r7
      004DAE 70 0C            [24] 5802 	jnz	00242$
      004DB0 90 7F 09         [24] 5803 	mov	dptr,#___str_10
      004DB3 75 F0 80         [24] 5804 	mov	b,#0x80
      004DB6 12 5E F5         [24] 5805 	lcall	_printstr
      004DB9 02 4F 7E         [24] 5806 	ljmp	00249$
      004DBC                       5807 00242$:
                                   5808 ;	calc.c:281: else if (!stack_pop(ctx->ps, &d1)) {
      004DBC E5 08            [12] 5809 	mov	a,_bp
      004DBE 24 1E            [12] 5810 	add	a,#0x1e
      004DC0 FF               [12] 5811 	mov	r7,a
      004DC1 E5 08            [12] 5812 	mov	a,_bp
      004DC3 24 13            [12] 5813 	add	a,#0x13
      004DC5 F8               [12] 5814 	mov	r0,a
      004DC6 A6 07            [24] 5815 	mov	@r0,ar7
      004DC8 08               [12] 5816 	inc	r0
      004DC9 76 00            [12] 5817 	mov	@r0,#0x00
      004DCB 08               [12] 5818 	inc	r0
      004DCC 76 40            [12] 5819 	mov	@r0,#0x40
      004DCE 8A 82            [24] 5820 	mov	dpl,r2
      004DD0 8B 83            [24] 5821 	mov	dph,r3
      004DD2 8C F0            [24] 5822 	mov	b,r4
      004DD4 12 66 3A         [24] 5823 	lcall	__gptrget
      004DD7 FD               [12] 5824 	mov	r5,a
      004DD8 A3               [24] 5825 	inc	dptr
      004DD9 12 66 3A         [24] 5826 	lcall	__gptrget
      004DDC FE               [12] 5827 	mov	r6,a
      004DDD A3               [24] 5828 	inc	dptr
      004DDE 12 66 3A         [24] 5829 	lcall	__gptrget
      004DE1 FF               [12] 5830 	mov	r7,a
      004DE2 C0 04            [24] 5831 	push	ar4
      004DE4 C0 03            [24] 5832 	push	ar3
      004DE6 C0 02            [24] 5833 	push	ar2
      004DE8 E5 08            [12] 5834 	mov	a,_bp
      004DEA 24 13            [12] 5835 	add	a,#0x13
      004DEC F8               [12] 5836 	mov	r0,a
      004DED E6               [12] 5837 	mov	a,@r0
      004DEE C0 E0            [24] 5838 	push	acc
      004DF0 08               [12] 5839 	inc	r0
      004DF1 E6               [12] 5840 	mov	a,@r0
      004DF2 C0 E0            [24] 5841 	push	acc
      004DF4 08               [12] 5842 	inc	r0
      004DF5 E6               [12] 5843 	mov	a,@r0
      004DF6 C0 E0            [24] 5844 	push	acc
      004DF8 8D 82            [24] 5845 	mov	dpl,r5
      004DFA 8E 83            [24] 5846 	mov	dph,r6
      004DFC 8F F0            [24] 5847 	mov	b,r7
      004DFE 12 27 83         [24] 5848 	lcall	_stack_pop
      004E01 AE 82            [24] 5849 	mov	r6,dpl
      004E03 AF 83            [24] 5850 	mov	r7,dph
      004E05 15 81            [12] 5851 	dec	sp
      004E07 15 81            [12] 5852 	dec	sp
      004E09 15 81            [12] 5853 	dec	sp
      004E0B D0 02            [24] 5854 	pop	ar2
      004E0D D0 03            [24] 5855 	pop	ar3
      004E0F D0 04            [24] 5856 	pop	ar4
      004E11 EE               [12] 5857 	mov	a,r6
      004E12 4F               [12] 5858 	orl	a,r7
      004E13 70 43            [24] 5859 	jnz	00239$
                                   5860 ;	calc.c:282: (void)stack_push(ctx->ps, d0);
      004E15 8A 82            [24] 5861 	mov	dpl,r2
      004E17 8B 83            [24] 5862 	mov	dph,r3
      004E19 8C F0            [24] 5863 	mov	b,r4
      004E1B 12 66 3A         [24] 5864 	lcall	__gptrget
      004E1E FD               [12] 5865 	mov	r5,a
      004E1F A3               [24] 5866 	inc	dptr
      004E20 12 66 3A         [24] 5867 	lcall	__gptrget
      004E23 FE               [12] 5868 	mov	r6,a
      004E24 A3               [24] 5869 	inc	dptr
      004E25 12 66 3A         [24] 5870 	lcall	__gptrget
      004E28 FF               [12] 5871 	mov	r7,a
      004E29 E5 08            [12] 5872 	mov	a,_bp
      004E2B 24 1A            [12] 5873 	add	a,#0x1a
      004E2D F8               [12] 5874 	mov	r0,a
      004E2E E6               [12] 5875 	mov	a,@r0
      004E2F C0 E0            [24] 5876 	push	acc
      004E31 08               [12] 5877 	inc	r0
      004E32 E6               [12] 5878 	mov	a,@r0
      004E33 C0 E0            [24] 5879 	push	acc
      004E35 08               [12] 5880 	inc	r0
      004E36 E6               [12] 5881 	mov	a,@r0
      004E37 C0 E0            [24] 5882 	push	acc
      004E39 08               [12] 5883 	inc	r0
      004E3A E6               [12] 5884 	mov	a,@r0
      004E3B C0 E0            [24] 5885 	push	acc
      004E3D 8D 82            [24] 5886 	mov	dpl,r5
      004E3F 8E 83            [24] 5887 	mov	dph,r6
      004E41 8F F0            [24] 5888 	mov	b,r7
      004E43 12 26 B5         [24] 5889 	lcall	_stack_push
      004E46 E5 81            [12] 5890 	mov	a,sp
      004E48 24 FC            [12] 5891 	add	a,#0xfc
      004E4A F5 81            [12] 5892 	mov	sp,a
                                   5893 ;	calc.c:283: printstr("\r\nstack underflow\r\n");
      004E4C 90 7F 09         [24] 5894 	mov	dptr,#___str_10
      004E4F 75 F0 80         [24] 5895 	mov	b,#0x80
      004E52 12 5E F5         [24] 5896 	lcall	_printstr
      004E55 02 4F 7E         [24] 5897 	ljmp	00249$
      004E58                       5898 00239$:
                                   5899 ;	calc.c:285: d1 <<= d0;
      004E58 E5 08            [12] 5900 	mov	a,_bp
      004E5A 24 1A            [12] 5901 	add	a,#0x1a
      004E5C F8               [12] 5902 	mov	r0,a
      004E5D 86 F0            [24] 5903 	mov	b,@r0
      004E5F 05 F0            [12] 5904 	inc	b
      004E61 E5 08            [12] 5905 	mov	a,_bp
      004E63 24 1E            [12] 5906 	add	a,#0x1e
      004E65 F8               [12] 5907 	mov	r0,a
      004E66 80 12            [24] 5908 	sjmp	00600$
      004E68                       5909 00599$:
      004E68 E6               [12] 5910 	mov	a,@r0
      004E69 26               [12] 5911 	add	a,@r0
      004E6A F6               [12] 5912 	mov	@r0,a
      004E6B 08               [12] 5913 	inc	r0
      004E6C E6               [12] 5914 	mov	a,@r0
      004E6D 33               [12] 5915 	rlc	a
      004E6E F6               [12] 5916 	mov	@r0,a
      004E6F 08               [12] 5917 	inc	r0
      004E70 E6               [12] 5918 	mov	a,@r0
      004E71 33               [12] 5919 	rlc	a
      004E72 F6               [12] 5920 	mov	@r0,a
      004E73 08               [12] 5921 	inc	r0
      004E74 E6               [12] 5922 	mov	a,@r0
      004E75 33               [12] 5923 	rlc	a
      004E76 F6               [12] 5924 	mov	@r0,a
      004E77 18               [12] 5925 	dec	r0
      004E78 18               [12] 5926 	dec	r0
      004E79 18               [12] 5927 	dec	r0
      004E7A                       5928 00600$:
      004E7A D5 F0 EB         [24] 5929 	djnz	b,00599$
                                   5930 ;	calc.c:286: (void)stack_push(ctx->ps, d1);
      004E7D 8A 82            [24] 5931 	mov	dpl,r2
      004E7F 8B 83            [24] 5932 	mov	dph,r3
      004E81 8C F0            [24] 5933 	mov	b,r4
      004E83 12 66 3A         [24] 5934 	lcall	__gptrget
      004E86 FA               [12] 5935 	mov	r2,a
      004E87 A3               [24] 5936 	inc	dptr
      004E88 12 66 3A         [24] 5937 	lcall	__gptrget
      004E8B FB               [12] 5938 	mov	r3,a
      004E8C A3               [24] 5939 	inc	dptr
      004E8D 12 66 3A         [24] 5940 	lcall	__gptrget
      004E90 FC               [12] 5941 	mov	r4,a
      004E91 E5 08            [12] 5942 	mov	a,_bp
      004E93 24 1E            [12] 5943 	add	a,#0x1e
      004E95 F8               [12] 5944 	mov	r0,a
      004E96 E6               [12] 5945 	mov	a,@r0
      004E97 C0 E0            [24] 5946 	push	acc
      004E99 08               [12] 5947 	inc	r0
      004E9A E6               [12] 5948 	mov	a,@r0
      004E9B C0 E0            [24] 5949 	push	acc
      004E9D 08               [12] 5950 	inc	r0
      004E9E E6               [12] 5951 	mov	a,@r0
      004E9F C0 E0            [24] 5952 	push	acc
      004EA1 08               [12] 5953 	inc	r0
      004EA2 E6               [12] 5954 	mov	a,@r0
      004EA3 C0 E0            [24] 5955 	push	acc
      004EA5 8A 82            [24] 5956 	mov	dpl,r2
      004EA7 8B 83            [24] 5957 	mov	dph,r3
      004EA9 8C F0            [24] 5958 	mov	b,r4
      004EAB 12 26 B5         [24] 5959 	lcall	_stack_push
      004EAE E5 81            [12] 5960 	mov	a,sp
      004EB0 24 FC            [12] 5961 	add	a,#0xfc
      004EB2 F5 81            [12] 5962 	mov	sp,a
                                   5963 ;	calc.c:288: break;
      004EB4 02 4F 7E         [24] 5964 	ljmp	00249$
                                   5965 ;	calc.c:289: case '~':
      004EB7                       5966 00244$:
                                   5967 ;	calc.c:290: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004EB7 E5 08            [12] 5968 	mov	a,_bp
      004EB9 24 1A            [12] 5969 	add	a,#0x1a
      004EBB FF               [12] 5970 	mov	r7,a
      004EBC E5 08            [12] 5971 	mov	a,_bp
      004EBE 24 13            [12] 5972 	add	a,#0x13
      004EC0 F8               [12] 5973 	mov	r0,a
      004EC1 A6 07            [24] 5974 	mov	@r0,ar7
      004EC3 08               [12] 5975 	inc	r0
      004EC4 76 00            [12] 5976 	mov	@r0,#0x00
      004EC6 08               [12] 5977 	inc	r0
      004EC7 76 40            [12] 5978 	mov	@r0,#0x40
      004EC9 E5 08            [12] 5979 	mov	a,_bp
      004ECB 24 17            [12] 5980 	add	a,#0x17
      004ECD F8               [12] 5981 	mov	r0,a
      004ECE 74 11            [12] 5982 	mov	a,#0x11
      004ED0 26               [12] 5983 	add	a,@r0
      004ED1 FA               [12] 5984 	mov	r2,a
      004ED2 74 40            [12] 5985 	mov	a,#0x40
      004ED4 08               [12] 5986 	inc	r0
      004ED5 36               [12] 5987 	addc	a,@r0
      004ED6 FB               [12] 5988 	mov	r3,a
      004ED7 08               [12] 5989 	inc	r0
      004ED8 86 04            [24] 5990 	mov	ar4,@r0
      004EDA 8A 82            [24] 5991 	mov	dpl,r2
      004EDC 8B 83            [24] 5992 	mov	dph,r3
      004EDE 8C F0            [24] 5993 	mov	b,r4
      004EE0 12 66 3A         [24] 5994 	lcall	__gptrget
      004EE3 FD               [12] 5995 	mov	r5,a
      004EE4 A3               [24] 5996 	inc	dptr
      004EE5 12 66 3A         [24] 5997 	lcall	__gptrget
      004EE8 FE               [12] 5998 	mov	r6,a
      004EE9 A3               [24] 5999 	inc	dptr
      004EEA 12 66 3A         [24] 6000 	lcall	__gptrget
      004EED FF               [12] 6001 	mov	r7,a
      004EEE C0 04            [24] 6002 	push	ar4
      004EF0 C0 03            [24] 6003 	push	ar3
      004EF2 C0 02            [24] 6004 	push	ar2
      004EF4 E5 08            [12] 6005 	mov	a,_bp
      004EF6 24 13            [12] 6006 	add	a,#0x13
      004EF8 F8               [12] 6007 	mov	r0,a
      004EF9 E6               [12] 6008 	mov	a,@r0
      004EFA C0 E0            [24] 6009 	push	acc
      004EFC 08               [12] 6010 	inc	r0
      004EFD E6               [12] 6011 	mov	a,@r0
      004EFE C0 E0            [24] 6012 	push	acc
      004F00 08               [12] 6013 	inc	r0
      004F01 E6               [12] 6014 	mov	a,@r0
      004F02 C0 E0            [24] 6015 	push	acc
      004F04 8D 82            [24] 6016 	mov	dpl,r5
      004F06 8E 83            [24] 6017 	mov	dph,r6
      004F08 8F F0            [24] 6018 	mov	b,r7
      004F0A 12 27 83         [24] 6019 	lcall	_stack_pop
      004F0D AE 82            [24] 6020 	mov	r6,dpl
      004F0F AF 83            [24] 6021 	mov	r7,dph
      004F11 15 81            [12] 6022 	dec	sp
      004F13 15 81            [12] 6023 	dec	sp
      004F15 15 81            [12] 6024 	dec	sp
      004F17 D0 02            [24] 6025 	pop	ar2
      004F19 D0 03            [24] 6026 	pop	ar3
      004F1B D0 04            [24] 6027 	pop	ar4
      004F1D EE               [12] 6028 	mov	a,r6
      004F1E 4F               [12] 6029 	orl	a,r7
      004F1F 70 0B            [24] 6030 	jnz	00246$
      004F21 90 7F 09         [24] 6031 	mov	dptr,#___str_10
      004F24 75 F0 80         [24] 6032 	mov	b,#0x80
      004F27 12 5E F5         [24] 6033 	lcall	_printstr
      004F2A 80 52            [24] 6034 	sjmp	00249$
      004F2C                       6035 00246$:
                                   6036 ;	calc.c:292: d0 = ~d0;
      004F2C E5 08            [12] 6037 	mov	a,_bp
      004F2E 24 1A            [12] 6038 	add	a,#0x1a
      004F30 F8               [12] 6039 	mov	r0,a
      004F31 E6               [12] 6040 	mov	a,@r0
      004F32 F4               [12] 6041 	cpl	a
      004F33 F6               [12] 6042 	mov	@r0,a
      004F34 08               [12] 6043 	inc	r0
      004F35 E6               [12] 6044 	mov	a,@r0
      004F36 F4               [12] 6045 	cpl	a
      004F37 F6               [12] 6046 	mov	@r0,a
      004F38 08               [12] 6047 	inc	r0
      004F39 E6               [12] 6048 	mov	a,@r0
      004F3A F4               [12] 6049 	cpl	a
      004F3B F6               [12] 6050 	mov	@r0,a
      004F3C 08               [12] 6051 	inc	r0
      004F3D E6               [12] 6052 	mov	a,@r0
      004F3E F4               [12] 6053 	cpl	a
      004F3F F6               [12] 6054 	mov	@r0,a
                                   6055 ;	calc.c:293: (void)stack_push(ctx->ps, d0);
      004F40 8A 82            [24] 6056 	mov	dpl,r2
      004F42 8B 83            [24] 6057 	mov	dph,r3
      004F44 8C F0            [24] 6058 	mov	b,r4
      004F46 12 66 3A         [24] 6059 	lcall	__gptrget
      004F49 FA               [12] 6060 	mov	r2,a
      004F4A A3               [24] 6061 	inc	dptr
      004F4B 12 66 3A         [24] 6062 	lcall	__gptrget
      004F4E FB               [12] 6063 	mov	r3,a
      004F4F A3               [24] 6064 	inc	dptr
      004F50 12 66 3A         [24] 6065 	lcall	__gptrget
      004F53 FC               [12] 6066 	mov	r4,a
      004F54 E5 08            [12] 6067 	mov	a,_bp
      004F56 24 1A            [12] 6068 	add	a,#0x1a
      004F58 F8               [12] 6069 	mov	r0,a
      004F59 E6               [12] 6070 	mov	a,@r0
      004F5A C0 E0            [24] 6071 	push	acc
      004F5C 08               [12] 6072 	inc	r0
      004F5D E6               [12] 6073 	mov	a,@r0
      004F5E C0 E0            [24] 6074 	push	acc
      004F60 08               [12] 6075 	inc	r0
      004F61 E6               [12] 6076 	mov	a,@r0
      004F62 C0 E0            [24] 6077 	push	acc
      004F64 08               [12] 6078 	inc	r0
      004F65 E6               [12] 6079 	mov	a,@r0
      004F66 C0 E0            [24] 6080 	push	acc
      004F68 8A 82            [24] 6081 	mov	dpl,r2
      004F6A 8B 83            [24] 6082 	mov	dph,r3
      004F6C 8C F0            [24] 6083 	mov	b,r4
      004F6E 12 26 B5         [24] 6084 	lcall	_stack_push
      004F71 E5 81            [12] 6085 	mov	a,sp
      004F73 24 FC            [12] 6086 	add	a,#0xfc
      004F75 F5 81            [12] 6087 	mov	sp,a
                                   6088 ;	calc.c:295: break;
                                   6089 ;	calc.c:296: default:
      004F77 80 05            [24] 6090 	sjmp	00249$
      004F79                       6091 00248$:
                                   6092 ;	calc.c:297: return UNDEF;
      004F79 90 80 00         [24] 6093 	mov	dptr,#0x8000
                                   6094 ;	calc.c:298: }
      004F7C 80 03            [24] 6095 	sjmp	00252$
      004F7E                       6096 00249$:
                                   6097 ;	calc.c:300: return 1;
      004F7E 90 00 01         [24] 6098 	mov	dptr,#0x0001
      004F81                       6099 00252$:
                                   6100 ;	calc.c:301: }
      004F81 85 08 81         [24] 6101 	mov	sp,_bp
      004F84 D0 08            [24] 6102 	pop	_bp
      004F86 22               [24] 6103 	ret
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
      004F87                       6116 _push_acc:
      004F87 C0 08            [24] 6117 	push	_bp
      004F89 E5 81            [12] 6118 	mov	a,sp
      004F8B F5 08            [12] 6119 	mov	_bp,a
      004F8D 24 07            [12] 6120 	add	a,#0x07
      004F8F F5 81            [12] 6121 	mov	sp,a
      004F91 C8               [12] 6122 	xch	a,r0
      004F92 E5 08            [12] 6123 	mov	a,_bp
      004F94 24 05            [12] 6124 	add	a,#0x05
      004F96 C8               [12] 6125 	xch	a,r0
      004F97 A6 82            [24] 6126 	mov	@r0,dpl
      004F99 08               [12] 6127 	inc	r0
      004F9A A6 83            [24] 6128 	mov	@r0,dph
      004F9C 08               [12] 6129 	inc	r0
      004F9D A6 F0            [24] 6130 	mov	@r0,b
                                   6131 ;	calc.c:304: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      004F9F E5 08            [12] 6132 	mov	a,_bp
      004FA1 24 05            [12] 6133 	add	a,#0x05
      004FA3 F8               [12] 6134 	mov	r0,a
      004FA4 86 02            [24] 6135 	mov	ar2,@r0
      004FA6 08               [12] 6136 	inc	r0
      004FA7 86 03            [24] 6137 	mov	ar3,@r0
      004FA9 08               [12] 6138 	inc	r0
      004FAA 86 04            [24] 6139 	mov	ar4,@r0
                                   6140 ;	calc.c:308: ctx->acc_valid = 0;
      004FAC 74 06            [12] 6141 	mov	a,#0x06
      004FAE 2A               [12] 6142 	add	a,r2
      004FAF FD               [12] 6143 	mov	r5,a
      004FB0 E4               [12] 6144 	clr	a
      004FB1 3B               [12] 6145 	addc	a,r3
      004FB2 FE               [12] 6146 	mov	r6,a
      004FB3 8C 07            [24] 6147 	mov	ar7,r4
      004FB5 8D 82            [24] 6148 	mov	dpl,r5
      004FB7 8E 83            [24] 6149 	mov	dph,r6
      004FB9 8F F0            [24] 6150 	mov	b,r7
      004FBB E4               [12] 6151 	clr	a
      004FBC 12 5E A9         [24] 6152 	lcall	__gptrput
                                   6153 ;	calc.c:309: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      004FBF 74 02            [12] 6154 	mov	a,#0x02
      004FC1 2A               [12] 6155 	add	a,r2
      004FC2 FF               [12] 6156 	mov	r7,a
      004FC3 E4               [12] 6157 	clr	a
      004FC4 3B               [12] 6158 	addc	a,r3
      004FC5 FD               [12] 6159 	mov	r5,a
      004FC6 8C 06            [24] 6160 	mov	ar6,r4
      004FC8 8F 82            [24] 6161 	mov	dpl,r7
      004FCA 8D 83            [24] 6162 	mov	dph,r5
      004FCC 8E F0            [24] 6163 	mov	b,r6
      004FCE A8 08            [24] 6164 	mov	r0,_bp
      004FD0 08               [12] 6165 	inc	r0
      004FD1 12 66 3A         [24] 6166 	lcall	__gptrget
      004FD4 F6               [12] 6167 	mov	@r0,a
      004FD5 A3               [24] 6168 	inc	dptr
      004FD6 12 66 3A         [24] 6169 	lcall	__gptrget
      004FD9 08               [12] 6170 	inc	r0
      004FDA F6               [12] 6171 	mov	@r0,a
      004FDB A3               [24] 6172 	inc	dptr
      004FDC 12 66 3A         [24] 6173 	lcall	__gptrget
      004FDF 08               [12] 6174 	inc	r0
      004FE0 F6               [12] 6175 	mov	@r0,a
      004FE1 A3               [24] 6176 	inc	dptr
      004FE2 12 66 3A         [24] 6177 	lcall	__gptrget
      004FE5 08               [12] 6178 	inc	r0
      004FE6 F6               [12] 6179 	mov	@r0,a
      004FE7 74 11            [12] 6180 	mov	a,#0x11
      004FE9 2A               [12] 6181 	add	a,r2
      004FEA FA               [12] 6182 	mov	r2,a
      004FEB 74 40            [12] 6183 	mov	a,#0x40
      004FED 3B               [12] 6184 	addc	a,r3
      004FEE FB               [12] 6185 	mov	r3,a
      004FEF 8C 07            [24] 6186 	mov	ar7,r4
      004FF1 8A 82            [24] 6187 	mov	dpl,r2
      004FF3 8B 83            [24] 6188 	mov	dph,r3
      004FF5 8F F0            [24] 6189 	mov	b,r7
      004FF7 12 66 3A         [24] 6190 	lcall	__gptrget
      004FFA FA               [12] 6191 	mov	r2,a
      004FFB A3               [24] 6192 	inc	dptr
      004FFC 12 66 3A         [24] 6193 	lcall	__gptrget
      004FFF FB               [12] 6194 	mov	r3,a
      005000 A3               [24] 6195 	inc	dptr
      005001 12 66 3A         [24] 6196 	lcall	__gptrget
      005004 FF               [12] 6197 	mov	r7,a
      005005 A8 08            [24] 6198 	mov	r0,_bp
      005007 08               [12] 6199 	inc	r0
      005008 E6               [12] 6200 	mov	a,@r0
      005009 C0 E0            [24] 6201 	push	acc
      00500B 08               [12] 6202 	inc	r0
      00500C E6               [12] 6203 	mov	a,@r0
      00500D C0 E0            [24] 6204 	push	acc
      00500F 08               [12] 6205 	inc	r0
      005010 E6               [12] 6206 	mov	a,@r0
      005011 C0 E0            [24] 6207 	push	acc
      005013 08               [12] 6208 	inc	r0
      005014 E6               [12] 6209 	mov	a,@r0
      005015 C0 E0            [24] 6210 	push	acc
      005017 8A 82            [24] 6211 	mov	dpl,r2
      005019 8B 83            [24] 6212 	mov	dph,r3
      00501B 8F F0            [24] 6213 	mov	b,r7
      00501D 12 26 B5         [24] 6214 	lcall	_stack_push
      005020 AE 82            [24] 6215 	mov	r6,dpl
      005022 AF 83            [24] 6216 	mov	r7,dph
      005024 E5 81            [12] 6217 	mov	a,sp
      005026 24 FC            [12] 6218 	add	a,#0xfc
      005028 F5 81            [12] 6219 	mov	sp,a
      00502A EE               [12] 6220 	mov	a,r6
      00502B 4F               [12] 6221 	orl	a,r7
      00502C 70 09            [24] 6222 	jnz	00102$
      00502E 90 7F 58         [24] 6223 	mov	dptr,#___str_13
      005031 75 F0 80         [24] 6224 	mov	b,#0x80
      005034 12 5E F5         [24] 6225 	lcall	_printstr
      005037                       6226 00102$:
                                   6227 ;	calc.c:311: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      005037 E5 08            [12] 6228 	mov	a,_bp
      005039 24 FB            [12] 6229 	add	a,#0xfb
      00503B F8               [12] 6230 	mov	r0,a
      00503C 86 05            [24] 6231 	mov	ar5,@r0
      00503E 08               [12] 6232 	inc	r0
      00503F 86 06            [24] 6233 	mov	ar6,@r0
      005041 08               [12] 6234 	inc	r0
      005042 86 07            [24] 6235 	mov	ar7,@r0
      005044 74 02            [12] 6236 	mov	a,#0x02
      005046 2D               [12] 6237 	add	a,r5
      005047 FA               [12] 6238 	mov	r2,a
      005048 E4               [12] 6239 	clr	a
      005049 3E               [12] 6240 	addc	a,r6
      00504A FB               [12] 6241 	mov	r3,a
      00504B 8F 04            [24] 6242 	mov	ar4,r7
      00504D 8A 82            [24] 6243 	mov	dpl,r2
      00504F 8B 83            [24] 6244 	mov	dph,r3
      005051 8C F0            [24] 6245 	mov	b,r4
      005053 12 66 3A         [24] 6246 	lcall	__gptrget
      005056 FA               [12] 6247 	mov	r2,a
      005057 A3               [24] 6248 	inc	dptr
      005058 12 66 3A         [24] 6249 	lcall	__gptrget
      00505B FB               [12] 6250 	mov	r3,a
      00505C BA 02 29         [24] 6251 	cjne	r2,#0x02,00104$
      00505F BB 00 26         [24] 6252 	cjne	r3,#0x00,00104$
      005062 C0 05            [24] 6253 	push	ar5
      005064 C0 06            [24] 6254 	push	ar6
      005066 C0 07            [24] 6255 	push	ar7
      005068 E5 08            [12] 6256 	mov	a,_bp
      00506A 24 05            [12] 6257 	add	a,#0x05
      00506C F8               [12] 6258 	mov	r0,a
      00506D 86 82            [24] 6259 	mov	dpl,@r0
      00506F 08               [12] 6260 	inc	r0
      005070 86 83            [24] 6261 	mov	dph,@r0
      005072 08               [12] 6262 	inc	r0
      005073 86 F0            [24] 6263 	mov	b,@r0
      005075 12 31 EC         [24] 6264 	lcall	_operator
      005078 AE 82            [24] 6265 	mov	r6,dpl
      00507A AF 83            [24] 6266 	mov	r7,dph
      00507C 15 81            [12] 6267 	dec	sp
      00507E 15 81            [12] 6268 	dec	sp
      005080 15 81            [12] 6269 	dec	sp
      005082 8E 82            [24] 6270 	mov	dpl,r6
      005084 8F 83            [24] 6271 	mov	dph,r7
      005086 80 03            [24] 6272 	sjmp	00106$
      005088                       6273 00104$:
                                   6274 ;	calc.c:312: else return 1;
      005088 90 00 01         [24] 6275 	mov	dptr,#0x0001
      00508B                       6276 00106$:
                                   6277 ;	calc.c:313: }
      00508B 85 08 81         [24] 6278 	mov	sp,_bp
      00508E D0 08            [24] 6279 	pop	_bp
      005090 22               [24] 6280 	ret
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
      005091                       6292 _reset_acc:
      005091 C0 08            [24] 6293 	push	_bp
      005093 85 81 08         [24] 6294 	mov	_bp,sp
      005096 AD 82            [24] 6295 	mov	r5,dpl
      005098 AE 83            [24] 6296 	mov	r6,dph
      00509A AF F0            [24] 6297 	mov	r7,b
                                   6298 ;	calc.c:316: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   6299 ;	calc.c:318: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      00509C E5 08            [12] 6300 	mov	a,_bp
      00509E 24 FB            [12] 6301 	add	a,#0xfb
      0050A0 F8               [12] 6302 	mov	r0,a
      0050A1 86 02            [24] 6303 	mov	ar2,@r0
      0050A3 08               [12] 6304 	inc	r0
      0050A4 86 03            [24] 6305 	mov	ar3,@r0
      0050A6 08               [12] 6306 	inc	r0
      0050A7 86 04            [24] 6307 	mov	ar4,@r0
      0050A9 74 02            [12] 6308 	mov	a,#0x02
      0050AB 2A               [12] 6309 	add	a,r2
      0050AC FA               [12] 6310 	mov	r2,a
      0050AD E4               [12] 6311 	clr	a
      0050AE 3B               [12] 6312 	addc	a,r3
      0050AF FB               [12] 6313 	mov	r3,a
      0050B0 8A 82            [24] 6314 	mov	dpl,r2
      0050B2 8B 83            [24] 6315 	mov	dph,r3
      0050B4 8C F0            [24] 6316 	mov	b,r4
      0050B6 12 66 3A         [24] 6317 	lcall	__gptrget
      0050B9 FA               [12] 6318 	mov	r2,a
      0050BA A3               [24] 6319 	inc	dptr
      0050BB 12 66 3A         [24] 6320 	lcall	__gptrget
      0050BE FB               [12] 6321 	mov	r3,a
      0050BF BA 07 16         [24] 6322 	cjne	r2,#0x07,00102$
      0050C2 BB 00 13         [24] 6323 	cjne	r3,#0x00,00102$
      0050C5 74 06            [12] 6324 	mov	a,#0x06
      0050C7 2D               [12] 6325 	add	a,r5
      0050C8 FA               [12] 6326 	mov	r2,a
      0050C9 E4               [12] 6327 	clr	a
      0050CA 3E               [12] 6328 	addc	a,r6
      0050CB FB               [12] 6329 	mov	r3,a
      0050CC 8F 04            [24] 6330 	mov	ar4,r7
      0050CE 8A 82            [24] 6331 	mov	dpl,r2
      0050D0 8B 83            [24] 6332 	mov	dph,r3
      0050D2 8C F0            [24] 6333 	mov	b,r4
      0050D4 E4               [12] 6334 	clr	a
      0050D5 12 5E A9         [24] 6335 	lcall	__gptrput
      0050D8                       6336 00102$:
                                   6337 ;	calc.c:319: ctx->acc = 0l;
      0050D8 74 02            [12] 6338 	mov	a,#0x02
      0050DA 2D               [12] 6339 	add	a,r5
      0050DB FD               [12] 6340 	mov	r5,a
      0050DC E4               [12] 6341 	clr	a
      0050DD 3E               [12] 6342 	addc	a,r6
      0050DE FE               [12] 6343 	mov	r6,a
      0050DF 8D 82            [24] 6344 	mov	dpl,r5
      0050E1 8E 83            [24] 6345 	mov	dph,r6
      0050E3 8F F0            [24] 6346 	mov	b,r7
      0050E5 E4               [12] 6347 	clr	a
      0050E6 12 5E A9         [24] 6348 	lcall	__gptrput
      0050E9 A3               [24] 6349 	inc	dptr
      0050EA 12 5E A9         [24] 6350 	lcall	__gptrput
      0050ED A3               [24] 6351 	inc	dptr
      0050EE 12 5E A9         [24] 6352 	lcall	__gptrput
      0050F1 A3               [24] 6353 	inc	dptr
      0050F2 12 5E A9         [24] 6354 	lcall	__gptrput
                                   6355 ;	calc.c:321: return 1;
      0050F5 90 00 01         [24] 6356 	mov	dptr,#0x0001
                                   6357 ;	calc.c:322: }
      0050F8 D0 08            [24] 6358 	pop	_bp
      0050FA 22               [24] 6359 	ret
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
      0050FB                       6371 _reset_base:
      0050FB C0 08            [24] 6372 	push	_bp
      0050FD 85 81 08         [24] 6373 	mov	_bp,sp
      005100 AD 82            [24] 6374 	mov	r5,dpl
      005102 AE 83            [24] 6375 	mov	r6,dph
      005104 AF F0            [24] 6376 	mov	r7,b
                                   6377 ;	calc.c:325: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   6378 ;	calc.c:329: switch (ctx->digit[0]) {
      005106 74 07            [12] 6379 	mov	a,#0x07
      005108 2D               [12] 6380 	add	a,r5
      005109 FA               [12] 6381 	mov	r2,a
      00510A E4               [12] 6382 	clr	a
      00510B 3E               [12] 6383 	addc	a,r6
      00510C FB               [12] 6384 	mov	r3,a
      00510D 8F 04            [24] 6385 	mov	ar4,r7
      00510F 8A 82            [24] 6386 	mov	dpl,r2
      005111 8B 83            [24] 6387 	mov	dph,r3
      005113 8C F0            [24] 6388 	mov	b,r4
      005115 12 66 3A         [24] 6389 	lcall	__gptrget
      005118 FC               [12] 6390 	mov	r4,a
      005119 BC 48 02         [24] 6391 	cjne	r4,#0x48,00124$
      00511C 80 0F            [24] 6392 	sjmp	00101$
      00511E                       6393 00124$:
      00511E BC 4F 02         [24] 6394 	cjne	r4,#0x4f,00125$
      005121 80 2E            [24] 6395 	sjmp	00103$
      005123                       6396 00125$:
      005123 BC 68 02         [24] 6397 	cjne	r4,#0x68,00126$
      005126 80 17            [24] 6398 	sjmp	00102$
      005128                       6399 00126$:
                                   6400 ;	calc.c:330: case 'H':
      005128 BC 6F 48         [24] 6401 	cjne	r4,#0x6f,00105$
      00512B 80 36            [24] 6402 	sjmp	00104$
      00512D                       6403 00101$:
                                   6404 ;	calc.c:331: ctx->base = 16;
      00512D 8D 82            [24] 6405 	mov	dpl,r5
      00512F 8E 83            [24] 6406 	mov	dph,r6
      005131 8F F0            [24] 6407 	mov	b,r7
      005133 74 10            [12] 6408 	mov	a,#0x10
      005135 12 5E A9         [24] 6409 	lcall	__gptrput
      005138 A3               [24] 6410 	inc	dptr
      005139 E4               [12] 6411 	clr	a
      00513A 12 5E A9         [24] 6412 	lcall	__gptrput
                                   6413 ;	calc.c:332: break;
                                   6414 ;	calc.c:333: case 'h':
      00513D 80 34            [24] 6415 	sjmp	00105$
      00513F                       6416 00102$:
                                   6417 ;	calc.c:334: ctx->base = 10;
      00513F 8D 82            [24] 6418 	mov	dpl,r5
      005141 8E 83            [24] 6419 	mov	dph,r6
      005143 8F F0            [24] 6420 	mov	b,r7
      005145 74 0A            [12] 6421 	mov	a,#0x0a
      005147 12 5E A9         [24] 6422 	lcall	__gptrput
      00514A A3               [24] 6423 	inc	dptr
      00514B E4               [12] 6424 	clr	a
      00514C 12 5E A9         [24] 6425 	lcall	__gptrput
                                   6426 ;	calc.c:335: break;
                                   6427 ;	calc.c:336: case 'O':
      00514F 80 22            [24] 6428 	sjmp	00105$
      005151                       6429 00103$:
                                   6430 ;	calc.c:337: ctx->base = 8;
      005151 8D 82            [24] 6431 	mov	dpl,r5
      005153 8E 83            [24] 6432 	mov	dph,r6
      005155 8F F0            [24] 6433 	mov	b,r7
      005157 74 08            [12] 6434 	mov	a,#0x08
      005159 12 5E A9         [24] 6435 	lcall	__gptrput
      00515C A3               [24] 6436 	inc	dptr
      00515D E4               [12] 6437 	clr	a
      00515E 12 5E A9         [24] 6438 	lcall	__gptrput
                                   6439 ;	calc.c:338: break;
                                   6440 ;	calc.c:339: case 'o':
      005161 80 10            [24] 6441 	sjmp	00105$
      005163                       6442 00104$:
                                   6443 ;	calc.c:340: ctx->base = 2;
      005163 8D 82            [24] 6444 	mov	dpl,r5
      005165 8E 83            [24] 6445 	mov	dph,r6
      005167 8F F0            [24] 6446 	mov	b,r7
      005169 74 02            [12] 6447 	mov	a,#0x02
      00516B 12 5E A9         [24] 6448 	lcall	__gptrput
      00516E A3               [24] 6449 	inc	dptr
      00516F E4               [12] 6450 	clr	a
      005170 12 5E A9         [24] 6451 	lcall	__gptrput
                                   6452 ;	calc.c:342: }
      005173                       6453 00105$:
                                   6454 ;	calc.c:344: return 1;
      005173 90 00 01         [24] 6455 	mov	dptr,#0x0001
                                   6456 ;	calc.c:345: }
      005176 D0 08            [24] 6457 	pop	_bp
      005178 22               [24] 6458 	ret
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
      005179                       6485 _status:
      005179 C0 08            [24] 6486 	push	_bp
      00517B E5 81            [12] 6487 	mov	a,sp
      00517D F5 08            [12] 6488 	mov	_bp,a
      00517F 24 13            [12] 6489 	add	a,#0x13
      005181 F5 81            [12] 6490 	mov	sp,a
      005183 AD 82            [24] 6491 	mov	r5,dpl
      005185 AE 83            [24] 6492 	mov	r6,dph
      005187 AF F0            [24] 6493 	mov	r7,b
                                   6494 ;	calc.c:348: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      005189 E5 08            [12] 6495 	mov	a,_bp
      00518B 24 09            [12] 6496 	add	a,#0x09
      00518D F8               [12] 6497 	mov	r0,a
      00518E A6 05            [24] 6498 	mov	@r0,ar5
      005190 08               [12] 6499 	inc	r0
      005191 A6 06            [24] 6500 	mov	@r0,ar6
      005193 08               [12] 6501 	inc	r0
      005194 A6 07            [24] 6502 	mov	@r0,ar7
                                   6503 ;	calc.c:354: printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
      005196 E5 08            [12] 6504 	mov	a,_bp
      005198 24 09            [12] 6505 	add	a,#0x09
      00519A F8               [12] 6506 	mov	r0,a
      00519B 86 82            [24] 6507 	mov	dpl,@r0
      00519D 08               [12] 6508 	inc	r0
      00519E 86 83            [24] 6509 	mov	dph,@r0
      0051A0 08               [12] 6510 	inc	r0
      0051A1 86 F0            [24] 6511 	mov	b,@r0
      0051A3 E5 08            [12] 6512 	mov	a,_bp
      0051A5 24 07            [12] 6513 	add	a,#0x07
      0051A7 F9               [12] 6514 	mov	r1,a
      0051A8 12 66 3A         [24] 6515 	lcall	__gptrget
      0051AB F7               [12] 6516 	mov	@r1,a
      0051AC A3               [24] 6517 	inc	dptr
      0051AD 12 66 3A         [24] 6518 	lcall	__gptrget
      0051B0 09               [12] 6519 	inc	r1
      0051B1 F7               [12] 6520 	mov	@r1,a
      0051B2 E5 08            [12] 6521 	mov	a,_bp
      0051B4 24 09            [12] 6522 	add	a,#0x09
      0051B6 F8               [12] 6523 	mov	r0,a
      0051B7 A9 08            [24] 6524 	mov	r1,_bp
      0051B9 09               [12] 6525 	inc	r1
      0051BA 74 14            [12] 6526 	mov	a,#0x14
      0051BC 26               [12] 6527 	add	a,@r0
      0051BD F7               [12] 6528 	mov	@r1,a
      0051BE 74 40            [12] 6529 	mov	a,#0x40
      0051C0 08               [12] 6530 	inc	r0
      0051C1 36               [12] 6531 	addc	a,@r0
      0051C2 09               [12] 6532 	inc	r1
      0051C3 F7               [12] 6533 	mov	@r1,a
      0051C4 08               [12] 6534 	inc	r0
      0051C5 09               [12] 6535 	inc	r1
      0051C6 E6               [12] 6536 	mov	a,@r0
      0051C7 F7               [12] 6537 	mov	@r1,a
      0051C8 A8 08            [24] 6538 	mov	r0,_bp
      0051CA 08               [12] 6539 	inc	r0
      0051CB 86 82            [24] 6540 	mov	dpl,@r0
      0051CD 08               [12] 6541 	inc	r0
      0051CE 86 83            [24] 6542 	mov	dph,@r0
      0051D0 08               [12] 6543 	inc	r0
      0051D1 86 F0            [24] 6544 	mov	b,@r0
      0051D3 12 66 3A         [24] 6545 	lcall	__gptrget
      0051D6 FA               [12] 6546 	mov	r2,a
      0051D7 A3               [24] 6547 	inc	dptr
      0051D8 12 66 3A         [24] 6548 	lcall	__gptrget
      0051DB FE               [12] 6549 	mov	r6,a
      0051DC A3               [24] 6550 	inc	dptr
      0051DD 12 66 3A         [24] 6551 	lcall	__gptrget
      0051E0 FF               [12] 6552 	mov	r7,a
      0051E1 E5 08            [12] 6553 	mov	a,_bp
      0051E3 24 09            [12] 6554 	add	a,#0x09
      0051E5 F8               [12] 6555 	mov	r0,a
      0051E6 E5 08            [12] 6556 	mov	a,_bp
      0051E8 24 04            [12] 6557 	add	a,#0x04
      0051EA F9               [12] 6558 	mov	r1,a
      0051EB 74 11            [12] 6559 	mov	a,#0x11
      0051ED 26               [12] 6560 	add	a,@r0
      0051EE F7               [12] 6561 	mov	@r1,a
      0051EF 74 40            [12] 6562 	mov	a,#0x40
      0051F1 08               [12] 6563 	inc	r0
      0051F2 36               [12] 6564 	addc	a,@r0
      0051F3 09               [12] 6565 	inc	r1
      0051F4 F7               [12] 6566 	mov	@r1,a
      0051F5 08               [12] 6567 	inc	r0
      0051F6 09               [12] 6568 	inc	r1
      0051F7 E6               [12] 6569 	mov	a,@r0
      0051F8 F7               [12] 6570 	mov	@r1,a
      0051F9 E5 08            [12] 6571 	mov	a,_bp
      0051FB 24 04            [12] 6572 	add	a,#0x04
      0051FD F8               [12] 6573 	mov	r0,a
      0051FE 86 82            [24] 6574 	mov	dpl,@r0
      005200 08               [12] 6575 	inc	r0
      005201 86 83            [24] 6576 	mov	dph,@r0
      005203 08               [12] 6577 	inc	r0
      005204 86 F0            [24] 6578 	mov	b,@r0
      005206 12 66 3A         [24] 6579 	lcall	__gptrget
      005209 FB               [12] 6580 	mov	r3,a
      00520A A3               [24] 6581 	inc	dptr
      00520B 12 66 3A         [24] 6582 	lcall	__gptrget
      00520E FC               [12] 6583 	mov	r4,a
      00520F A3               [24] 6584 	inc	dptr
      005210 12 66 3A         [24] 6585 	lcall	__gptrget
      005213 FD               [12] 6586 	mov	r5,a
      005214 E5 08            [12] 6587 	mov	a,_bp
      005216 24 07            [12] 6588 	add	a,#0x07
      005218 F8               [12] 6589 	mov	r0,a
      005219 E6               [12] 6590 	mov	a,@r0
      00521A C0 E0            [24] 6591 	push	acc
      00521C 08               [12] 6592 	inc	r0
      00521D E6               [12] 6593 	mov	a,@r0
      00521E C0 E0            [24] 6594 	push	acc
      005220 C0 02            [24] 6595 	push	ar2
      005222 C0 06            [24] 6596 	push	ar6
      005224 C0 07            [24] 6597 	push	ar7
      005226 C0 03            [24] 6598 	push	ar3
      005228 C0 04            [24] 6599 	push	ar4
      00522A C0 05            [24] 6600 	push	ar5
      00522C 74 80            [12] 6601 	mov	a,#___str_15
      00522E C0 E0            [24] 6602 	push	acc
      005230 74 7F            [12] 6603 	mov	a,#(___str_15 >> 8)
      005232 C0 E0            [24] 6604 	push	acc
      005234 74 80            [12] 6605 	mov	a,#0x80
      005236 C0 E0            [24] 6606 	push	acc
      005238 12 66 01         [24] 6607 	lcall	_printf
      00523B E5 81            [12] 6608 	mov	a,sp
      00523D 24 F5            [12] 6609 	add	a,#0xf5
      00523F F5 81            [12] 6610 	mov	sp,a
                                   6611 ;	calc.c:356: printstr("ACC\t");
      005241 90 7F A0         [24] 6612 	mov	dptr,#___str_16
      005244 75 F0 80         [24] 6613 	mov	b,#0x80
      005247 12 5E F5         [24] 6614 	lcall	_printstr
                                   6615 ;	calc.c:357: if (ctx->acc_valid) printall(ctx->acc);
      00524A E5 08            [12] 6616 	mov	a,_bp
      00524C 24 09            [12] 6617 	add	a,#0x09
      00524E F8               [12] 6618 	mov	r0,a
      00524F 74 06            [12] 6619 	mov	a,#0x06
      005251 26               [12] 6620 	add	a,@r0
      005252 FD               [12] 6621 	mov	r5,a
      005253 E4               [12] 6622 	clr	a
      005254 08               [12] 6623 	inc	r0
      005255 36               [12] 6624 	addc	a,@r0
      005256 FE               [12] 6625 	mov	r6,a
      005257 08               [12] 6626 	inc	r0
      005258 86 07            [24] 6627 	mov	ar7,@r0
      00525A 8D 82            [24] 6628 	mov	dpl,r5
      00525C 8E 83            [24] 6629 	mov	dph,r6
      00525E 8F F0            [24] 6630 	mov	b,r7
      005260 12 66 3A         [24] 6631 	lcall	__gptrget
      005263 70 03            [24] 6632 	jnz	00143$
      005265 02 53 22         [24] 6633 	ljmp	00102$
      005268                       6634 00143$:
      005268 E5 08            [12] 6635 	mov	a,_bp
      00526A 24 09            [12] 6636 	add	a,#0x09
      00526C F8               [12] 6637 	mov	r0,a
      00526D 74 02            [12] 6638 	mov	a,#0x02
      00526F 26               [12] 6639 	add	a,@r0
      005270 FD               [12] 6640 	mov	r5,a
      005271 E4               [12] 6641 	clr	a
      005272 08               [12] 6642 	inc	r0
      005273 36               [12] 6643 	addc	a,@r0
      005274 FE               [12] 6644 	mov	r6,a
      005275 08               [12] 6645 	inc	r0
      005276 86 07            [24] 6646 	mov	ar7,@r0
      005278 8D 82            [24] 6647 	mov	dpl,r5
      00527A 8E 83            [24] 6648 	mov	dph,r6
      00527C 8F F0            [24] 6649 	mov	b,r7
      00527E 12 66 3A         [24] 6650 	lcall	__gptrget
      005281 FD               [12] 6651 	mov	r5,a
      005282 A3               [24] 6652 	inc	dptr
      005283 12 66 3A         [24] 6653 	lcall	__gptrget
      005286 FE               [12] 6654 	mov	r6,a
      005287 A3               [24] 6655 	inc	dptr
      005288 12 66 3A         [24] 6656 	lcall	__gptrget
      00528B FF               [12] 6657 	mov	r7,a
      00528C A3               [24] 6658 	inc	dptr
      00528D 12 66 3A         [24] 6659 	lcall	__gptrget
      005290 FC               [12] 6660 	mov	r4,a
                                   6661 ;	calc.c:18: printf("%08lx\t", d);
      005291 C0 07            [24] 6662 	push	ar7
      005293 C0 06            [24] 6663 	push	ar6
      005295 C0 05            [24] 6664 	push	ar5
      005297 C0 04            [24] 6665 	push	ar4
      005299 C0 05            [24] 6666 	push	ar5
      00529B C0 06            [24] 6667 	push	ar6
      00529D C0 07            [24] 6668 	push	ar7
      00529F C0 04            [24] 6669 	push	ar4
      0052A1 74 BB            [12] 6670 	mov	a,#___str_0
      0052A3 C0 E0            [24] 6671 	push	acc
      0052A5 74 7E            [12] 6672 	mov	a,#(___str_0 >> 8)
      0052A7 C0 E0            [24] 6673 	push	acc
      0052A9 74 80            [12] 6674 	mov	a,#0x80
      0052AB C0 E0            [24] 6675 	push	acc
      0052AD 12 66 01         [24] 6676 	lcall	_printf
      0052B0 E5 81            [12] 6677 	mov	a,sp
      0052B2 24 F9            [12] 6678 	add	a,#0xf9
      0052B4 F5 81            [12] 6679 	mov	sp,a
      0052B6 D0 04            [24] 6680 	pop	ar4
      0052B8 D0 05            [24] 6681 	pop	ar5
      0052BA D0 06            [24] 6682 	pop	ar6
      0052BC D0 07            [24] 6683 	pop	ar7
                                   6684 ;	calc.c:19: printf("% 11ld\t", d);
      0052BE C0 07            [24] 6685 	push	ar7
      0052C0 C0 06            [24] 6686 	push	ar6
      0052C2 C0 05            [24] 6687 	push	ar5
      0052C4 C0 04            [24] 6688 	push	ar4
      0052C6 C0 05            [24] 6689 	push	ar5
      0052C8 C0 06            [24] 6690 	push	ar6
      0052CA C0 07            [24] 6691 	push	ar7
      0052CC C0 04            [24] 6692 	push	ar4
      0052CE 74 C2            [12] 6693 	mov	a,#___str_1
      0052D0 C0 E0            [24] 6694 	push	acc
      0052D2 74 7E            [12] 6695 	mov	a,#(___str_1 >> 8)
      0052D4 C0 E0            [24] 6696 	push	acc
      0052D6 74 80            [12] 6697 	mov	a,#0x80
      0052D8 C0 E0            [24] 6698 	push	acc
      0052DA 12 66 01         [24] 6699 	lcall	_printf
      0052DD E5 81            [12] 6700 	mov	a,sp
      0052DF 24 F9            [12] 6701 	add	a,#0xf9
      0052E1 F5 81            [12] 6702 	mov	sp,a
      0052E3 D0 04            [24] 6703 	pop	ar4
      0052E5 D0 05            [24] 6704 	pop	ar5
      0052E7 D0 06            [24] 6705 	pop	ar6
      0052E9 D0 07            [24] 6706 	pop	ar7
                                   6707 ;	calc.c:20: printf("%011lo\t", d);
      0052EB C0 07            [24] 6708 	push	ar7
      0052ED C0 06            [24] 6709 	push	ar6
      0052EF C0 05            [24] 6710 	push	ar5
      0052F1 C0 04            [24] 6711 	push	ar4
      0052F3 C0 05            [24] 6712 	push	ar5
      0052F5 C0 06            [24] 6713 	push	ar6
      0052F7 C0 07            [24] 6714 	push	ar7
      0052F9 C0 04            [24] 6715 	push	ar4
      0052FB 74 CA            [12] 6716 	mov	a,#___str_2
      0052FD C0 E0            [24] 6717 	push	acc
      0052FF 74 7E            [12] 6718 	mov	a,#(___str_2 >> 8)
      005301 C0 E0            [24] 6719 	push	acc
      005303 74 80            [12] 6720 	mov	a,#0x80
      005305 C0 E0            [24] 6721 	push	acc
      005307 12 66 01         [24] 6722 	lcall	_printf
      00530A E5 81            [12] 6723 	mov	a,sp
      00530C 24 F9            [12] 6724 	add	a,#0xf9
      00530E F5 81            [12] 6725 	mov	sp,a
      005310 D0 04            [24] 6726 	pop	ar4
      005312 D0 05            [24] 6727 	pop	ar5
      005314 D0 06            [24] 6728 	pop	ar6
      005316 D0 07            [24] 6729 	pop	ar7
                                   6730 ;	calc.c:21: print32bin(d);
      005318 8D 82            [24] 6731 	mov	dpl,r5
      00531A 8E 83            [24] 6732 	mov	dph,r6
      00531C 8F F0            [24] 6733 	mov	b,r7
      00531E EC               [12] 6734 	mov	a,r4
      00531F 12 5F 64         [24] 6735 	lcall	_print32bin
                                   6736 ;	calc.c:357: if (ctx->acc_valid) printall(ctx->acc);
      005322                       6737 00102$:
                                   6738 ;	calc.c:359: n = stack_peek2(ctx->ps, vals);
      005322 E5 08            [12] 6739 	mov	a,_bp
      005324 24 0C            [12] 6740 	add	a,#0x0c
      005326 F9               [12] 6741 	mov	r1,a
      005327 FD               [12] 6742 	mov	r5,a
      005328 7E 00            [12] 6743 	mov	r6,#0x00
      00532A 7F 40            [12] 6744 	mov	r7,#0x40
      00532C E5 08            [12] 6745 	mov	a,_bp
      00532E 24 04            [12] 6746 	add	a,#0x04
      005330 F8               [12] 6747 	mov	r0,a
      005331 86 82            [24] 6748 	mov	dpl,@r0
      005333 08               [12] 6749 	inc	r0
      005334 86 83            [24] 6750 	mov	dph,@r0
      005336 08               [12] 6751 	inc	r0
      005337 86 F0            [24] 6752 	mov	b,@r0
      005339 12 66 3A         [24] 6753 	lcall	__gptrget
      00533C FA               [12] 6754 	mov	r2,a
      00533D A3               [24] 6755 	inc	dptr
      00533E 12 66 3A         [24] 6756 	lcall	__gptrget
      005341 FB               [12] 6757 	mov	r3,a
      005342 A3               [24] 6758 	inc	dptr
      005343 12 66 3A         [24] 6759 	lcall	__gptrget
      005346 FC               [12] 6760 	mov	r4,a
      005347 C0 01            [24] 6761 	push	ar1
      005349 C0 05            [24] 6762 	push	ar5
      00534B C0 06            [24] 6763 	push	ar6
      00534D C0 07            [24] 6764 	push	ar7
      00534F 8A 82            [24] 6765 	mov	dpl,r2
      005351 8B 83            [24] 6766 	mov	dph,r3
      005353 8C F0            [24] 6767 	mov	b,r4
      005355 12 28 FF         [24] 6768 	lcall	_stack_peek2
      005358 AE 82            [24] 6769 	mov	r6,dpl
      00535A AF 83            [24] 6770 	mov	r7,dph
      00535C 15 81            [12] 6771 	dec	sp
      00535E 15 81            [12] 6772 	dec	sp
      005360 15 81            [12] 6773 	dec	sp
      005362 D0 01            [24] 6774 	pop	ar1
                                   6775 ;	calc.c:360: printstr("\r\nPSTOP1\t");
      005364 90 7F A5         [24] 6776 	mov	dptr,#___str_17
      005367 75 F0 80         [24] 6777 	mov	b,#0x80
      00536A C0 07            [24] 6778 	push	ar7
      00536C C0 06            [24] 6779 	push	ar6
      00536E C0 01            [24] 6780 	push	ar1
      005370 12 5E F5         [24] 6781 	lcall	_printstr
      005373 D0 01            [24] 6782 	pop	ar1
      005375 D0 06            [24] 6783 	pop	ar6
      005377 D0 07            [24] 6784 	pop	ar7
                                   6785 ;	calc.c:361: if (n > 0) printall(vals[1]);
      005379 C3               [12] 6786 	clr	c
      00537A E4               [12] 6787 	clr	a
      00537B 9E               [12] 6788 	subb	a,r6
      00537C 74 80            [12] 6789 	mov	a,#(0x00 ^ 0x80)
      00537E 8F F0            [24] 6790 	mov	b,r7
      005380 63 F0 80         [24] 6791 	xrl	b,#0x80
      005383 95 F0            [12] 6792 	subb	a,b
      005385 40 03            [24] 6793 	jc	00144$
      005387 02 54 42         [24] 6794 	ljmp	00104$
      00538A                       6795 00144$:
      00538A 74 04            [12] 6796 	mov	a,#0x04
      00538C 29               [12] 6797 	add	a,r1
      00538D F8               [12] 6798 	mov	r0,a
      00538E 86 02            [24] 6799 	mov	ar2,@r0
      005390 08               [12] 6800 	inc	r0
      005391 86 03            [24] 6801 	mov	ar3,@r0
      005393 08               [12] 6802 	inc	r0
      005394 86 04            [24] 6803 	mov	ar4,@r0
      005396 08               [12] 6804 	inc	r0
      005397 86 05            [24] 6805 	mov	ar5,@r0
                                   6806 ;	calc.c:18: printf("%08lx\t", d);
      005399 C0 07            [24] 6807 	push	ar7
      00539B C0 06            [24] 6808 	push	ar6
      00539D C0 05            [24] 6809 	push	ar5
      00539F C0 04            [24] 6810 	push	ar4
      0053A1 C0 03            [24] 6811 	push	ar3
      0053A3 C0 02            [24] 6812 	push	ar2
      0053A5 C0 01            [24] 6813 	push	ar1
      0053A7 C0 02            [24] 6814 	push	ar2
      0053A9 C0 03            [24] 6815 	push	ar3
      0053AB C0 04            [24] 6816 	push	ar4
      0053AD C0 05            [24] 6817 	push	ar5
      0053AF 74 BB            [12] 6818 	mov	a,#___str_0
      0053B1 C0 E0            [24] 6819 	push	acc
      0053B3 74 7E            [12] 6820 	mov	a,#(___str_0 >> 8)
      0053B5 C0 E0            [24] 6821 	push	acc
      0053B7 74 80            [12] 6822 	mov	a,#0x80
      0053B9 C0 E0            [24] 6823 	push	acc
      0053BB 12 66 01         [24] 6824 	lcall	_printf
      0053BE E5 81            [12] 6825 	mov	a,sp
      0053C0 24 F9            [12] 6826 	add	a,#0xf9
      0053C2 F5 81            [12] 6827 	mov	sp,a
      0053C4 D0 01            [24] 6828 	pop	ar1
      0053C6 D0 02            [24] 6829 	pop	ar2
      0053C8 D0 03            [24] 6830 	pop	ar3
      0053CA D0 04            [24] 6831 	pop	ar4
      0053CC D0 05            [24] 6832 	pop	ar5
                                   6833 ;	calc.c:19: printf("% 11ld\t", d);
      0053CE C0 05            [24] 6834 	push	ar5
      0053D0 C0 04            [24] 6835 	push	ar4
      0053D2 C0 03            [24] 6836 	push	ar3
      0053D4 C0 02            [24] 6837 	push	ar2
      0053D6 C0 01            [24] 6838 	push	ar1
      0053D8 C0 02            [24] 6839 	push	ar2
      0053DA C0 03            [24] 6840 	push	ar3
      0053DC C0 04            [24] 6841 	push	ar4
      0053DE C0 05            [24] 6842 	push	ar5
      0053E0 74 C2            [12] 6843 	mov	a,#___str_1
      0053E2 C0 E0            [24] 6844 	push	acc
      0053E4 74 7E            [12] 6845 	mov	a,#(___str_1 >> 8)
      0053E6 C0 E0            [24] 6846 	push	acc
      0053E8 74 80            [12] 6847 	mov	a,#0x80
      0053EA C0 E0            [24] 6848 	push	acc
      0053EC 12 66 01         [24] 6849 	lcall	_printf
      0053EF E5 81            [12] 6850 	mov	a,sp
      0053F1 24 F9            [12] 6851 	add	a,#0xf9
      0053F3 F5 81            [12] 6852 	mov	sp,a
      0053F5 D0 01            [24] 6853 	pop	ar1
      0053F7 D0 02            [24] 6854 	pop	ar2
      0053F9 D0 03            [24] 6855 	pop	ar3
      0053FB D0 04            [24] 6856 	pop	ar4
      0053FD D0 05            [24] 6857 	pop	ar5
                                   6858 ;	calc.c:20: printf("%011lo\t", d);
      0053FF C0 05            [24] 6859 	push	ar5
      005401 C0 04            [24] 6860 	push	ar4
      005403 C0 03            [24] 6861 	push	ar3
      005405 C0 02            [24] 6862 	push	ar2
      005407 C0 01            [24] 6863 	push	ar1
      005409 C0 02            [24] 6864 	push	ar2
      00540B C0 03            [24] 6865 	push	ar3
      00540D C0 04            [24] 6866 	push	ar4
      00540F C0 05            [24] 6867 	push	ar5
      005411 74 CA            [12] 6868 	mov	a,#___str_2
      005413 C0 E0            [24] 6869 	push	acc
      005415 74 7E            [12] 6870 	mov	a,#(___str_2 >> 8)
      005417 C0 E0            [24] 6871 	push	acc
      005419 74 80            [12] 6872 	mov	a,#0x80
      00541B C0 E0            [24] 6873 	push	acc
      00541D 12 66 01         [24] 6874 	lcall	_printf
      005420 E5 81            [12] 6875 	mov	a,sp
      005422 24 F9            [12] 6876 	add	a,#0xf9
      005424 F5 81            [12] 6877 	mov	sp,a
      005426 D0 01            [24] 6878 	pop	ar1
      005428 D0 02            [24] 6879 	pop	ar2
      00542A D0 03            [24] 6880 	pop	ar3
      00542C D0 04            [24] 6881 	pop	ar4
      00542E D0 05            [24] 6882 	pop	ar5
                                   6883 ;	calc.c:21: print32bin(d);
      005430 8A 82            [24] 6884 	mov	dpl,r2
      005432 8B 83            [24] 6885 	mov	dph,r3
      005434 8C F0            [24] 6886 	mov	b,r4
      005436 ED               [12] 6887 	mov	a,r5
      005437 C0 01            [24] 6888 	push	ar1
      005439 12 5F 64         [24] 6889 	lcall	_print32bin
      00543C D0 01            [24] 6890 	pop	ar1
      00543E D0 06            [24] 6891 	pop	ar6
      005440 D0 07            [24] 6892 	pop	ar7
                                   6893 ;	calc.c:361: if (n > 0) printall(vals[1]);
      005442                       6894 00104$:
                                   6895 ;	calc.c:362: printstr("\r\nPSTOP0\t");
      005442 90 7F AF         [24] 6896 	mov	dptr,#___str_18
      005445 75 F0 80         [24] 6897 	mov	b,#0x80
      005448 C0 07            [24] 6898 	push	ar7
      00544A C0 06            [24] 6899 	push	ar6
      00544C C0 01            [24] 6900 	push	ar1
      00544E 12 5E F5         [24] 6901 	lcall	_printstr
      005451 D0 01            [24] 6902 	pop	ar1
      005453 D0 06            [24] 6903 	pop	ar6
      005455 D0 07            [24] 6904 	pop	ar7
                                   6905 ;	calc.c:363: if (n > 1) printall(vals[0]);
      005457 C3               [12] 6906 	clr	c
      005458 74 01            [12] 6907 	mov	a,#0x01
      00545A 9E               [12] 6908 	subb	a,r6
      00545B 74 80            [12] 6909 	mov	a,#(0x00 ^ 0x80)
      00545D 8F F0            [24] 6910 	mov	b,r7
      00545F 63 F0 80         [24] 6911 	xrl	b,#0x80
      005462 95 F0            [12] 6912 	subb	a,b
      005464 40 03            [24] 6913 	jc	00145$
      005466 02 55 18         [24] 6914 	ljmp	00106$
      005469                       6915 00145$:
      005469 87 04            [24] 6916 	mov	ar4,@r1
      00546B 09               [12] 6917 	inc	r1
      00546C 87 05            [24] 6918 	mov	ar5,@r1
      00546E 09               [12] 6919 	inc	r1
      00546F 87 06            [24] 6920 	mov	ar6,@r1
      005471 09               [12] 6921 	inc	r1
      005472 87 07            [24] 6922 	mov	ar7,@r1
      005474 19               [12] 6923 	dec	r1
      005475 19               [12] 6924 	dec	r1
      005476 19               [12] 6925 	dec	r1
                                   6926 ;	calc.c:18: printf("%08lx\t", d);
      005477 C0 07            [24] 6927 	push	ar7
      005479 C0 06            [24] 6928 	push	ar6
      00547B C0 05            [24] 6929 	push	ar5
      00547D C0 04            [24] 6930 	push	ar4
      00547F C0 01            [24] 6931 	push	ar1
      005481 C0 04            [24] 6932 	push	ar4
      005483 C0 05            [24] 6933 	push	ar5
      005485 C0 06            [24] 6934 	push	ar6
      005487 C0 07            [24] 6935 	push	ar7
      005489 74 BB            [12] 6936 	mov	a,#___str_0
      00548B C0 E0            [24] 6937 	push	acc
      00548D 74 7E            [12] 6938 	mov	a,#(___str_0 >> 8)
      00548F C0 E0            [24] 6939 	push	acc
      005491 74 80            [12] 6940 	mov	a,#0x80
      005493 C0 E0            [24] 6941 	push	acc
      005495 12 66 01         [24] 6942 	lcall	_printf
      005498 E5 81            [12] 6943 	mov	a,sp
      00549A 24 F9            [12] 6944 	add	a,#0xf9
      00549C F5 81            [12] 6945 	mov	sp,a
      00549E D0 01            [24] 6946 	pop	ar1
      0054A0 D0 04            [24] 6947 	pop	ar4
      0054A2 D0 05            [24] 6948 	pop	ar5
      0054A4 D0 06            [24] 6949 	pop	ar6
      0054A6 D0 07            [24] 6950 	pop	ar7
                                   6951 ;	calc.c:19: printf("% 11ld\t", d);
      0054A8 C0 07            [24] 6952 	push	ar7
      0054AA C0 06            [24] 6953 	push	ar6
      0054AC C0 05            [24] 6954 	push	ar5
      0054AE C0 04            [24] 6955 	push	ar4
      0054B0 C0 01            [24] 6956 	push	ar1
      0054B2 C0 04            [24] 6957 	push	ar4
      0054B4 C0 05            [24] 6958 	push	ar5
      0054B6 C0 06            [24] 6959 	push	ar6
      0054B8 C0 07            [24] 6960 	push	ar7
      0054BA 74 C2            [12] 6961 	mov	a,#___str_1
      0054BC C0 E0            [24] 6962 	push	acc
      0054BE 74 7E            [12] 6963 	mov	a,#(___str_1 >> 8)
      0054C0 C0 E0            [24] 6964 	push	acc
      0054C2 74 80            [12] 6965 	mov	a,#0x80
      0054C4 C0 E0            [24] 6966 	push	acc
      0054C6 12 66 01         [24] 6967 	lcall	_printf
      0054C9 E5 81            [12] 6968 	mov	a,sp
      0054CB 24 F9            [12] 6969 	add	a,#0xf9
      0054CD F5 81            [12] 6970 	mov	sp,a
      0054CF D0 01            [24] 6971 	pop	ar1
      0054D1 D0 04            [24] 6972 	pop	ar4
      0054D3 D0 05            [24] 6973 	pop	ar5
      0054D5 D0 06            [24] 6974 	pop	ar6
      0054D7 D0 07            [24] 6975 	pop	ar7
                                   6976 ;	calc.c:20: printf("%011lo\t", d);
      0054D9 C0 07            [24] 6977 	push	ar7
      0054DB C0 06            [24] 6978 	push	ar6
      0054DD C0 05            [24] 6979 	push	ar5
      0054DF C0 04            [24] 6980 	push	ar4
      0054E1 C0 01            [24] 6981 	push	ar1
      0054E3 C0 04            [24] 6982 	push	ar4
      0054E5 C0 05            [24] 6983 	push	ar5
      0054E7 C0 06            [24] 6984 	push	ar6
      0054E9 C0 07            [24] 6985 	push	ar7
      0054EB 74 CA            [12] 6986 	mov	a,#___str_2
      0054ED C0 E0            [24] 6987 	push	acc
      0054EF 74 7E            [12] 6988 	mov	a,#(___str_2 >> 8)
      0054F1 C0 E0            [24] 6989 	push	acc
      0054F3 74 80            [12] 6990 	mov	a,#0x80
      0054F5 C0 E0            [24] 6991 	push	acc
      0054F7 12 66 01         [24] 6992 	lcall	_printf
      0054FA E5 81            [12] 6993 	mov	a,sp
      0054FC 24 F9            [12] 6994 	add	a,#0xf9
      0054FE F5 81            [12] 6995 	mov	sp,a
      005500 D0 01            [24] 6996 	pop	ar1
      005502 D0 04            [24] 6997 	pop	ar4
      005504 D0 05            [24] 6998 	pop	ar5
      005506 D0 06            [24] 6999 	pop	ar6
      005508 D0 07            [24] 7000 	pop	ar7
                                   7001 ;	calc.c:21: print32bin(d);
      00550A 8C 82            [24] 7002 	mov	dpl,r4
      00550C 8D 83            [24] 7003 	mov	dph,r5
      00550E 8E F0            [24] 7004 	mov	b,r6
      005510 EF               [12] 7005 	mov	a,r7
      005511 C0 01            [24] 7006 	push	ar1
      005513 12 5F 64         [24] 7007 	lcall	_print32bin
      005516 D0 01            [24] 7008 	pop	ar1
                                   7009 ;	calc.c:363: if (n > 1) printall(vals[0]);
      005518                       7010 00106$:
                                   7011 ;	calc.c:365: n = stack_peek2(ctx->ss, vals);
      005518 89 07            [24] 7012 	mov	ar7,r1
      00551A 7E 00            [12] 7013 	mov	r6,#0x00
      00551C 7D 40            [12] 7014 	mov	r5,#0x40
      00551E A8 08            [24] 7015 	mov	r0,_bp
      005520 08               [12] 7016 	inc	r0
      005521 86 82            [24] 7017 	mov	dpl,@r0
      005523 08               [12] 7018 	inc	r0
      005524 86 83            [24] 7019 	mov	dph,@r0
      005526 08               [12] 7020 	inc	r0
      005527 86 F0            [24] 7021 	mov	b,@r0
      005529 12 66 3A         [24] 7022 	lcall	__gptrget
      00552C FA               [12] 7023 	mov	r2,a
      00552D A3               [24] 7024 	inc	dptr
      00552E 12 66 3A         [24] 7025 	lcall	__gptrget
      005531 FB               [12] 7026 	mov	r3,a
      005532 A3               [24] 7027 	inc	dptr
      005533 12 66 3A         [24] 7028 	lcall	__gptrget
      005536 FC               [12] 7029 	mov	r4,a
      005537 C0 01            [24] 7030 	push	ar1
      005539 C0 07            [24] 7031 	push	ar7
      00553B C0 06            [24] 7032 	push	ar6
      00553D C0 05            [24] 7033 	push	ar5
      00553F 8A 82            [24] 7034 	mov	dpl,r2
      005541 8B 83            [24] 7035 	mov	dph,r3
      005543 8C F0            [24] 7036 	mov	b,r4
      005545 12 28 FF         [24] 7037 	lcall	_stack_peek2
      005548 AE 82            [24] 7038 	mov	r6,dpl
      00554A AF 83            [24] 7039 	mov	r7,dph
      00554C 15 81            [12] 7040 	dec	sp
      00554E 15 81            [12] 7041 	dec	sp
      005550 15 81            [12] 7042 	dec	sp
      005552 D0 01            [24] 7043 	pop	ar1
                                   7044 ;	calc.c:366: printstr("\r\nSSTOP1\t");
      005554 90 7F B9         [24] 7045 	mov	dptr,#___str_19
      005557 75 F0 80         [24] 7046 	mov	b,#0x80
      00555A C0 07            [24] 7047 	push	ar7
      00555C C0 06            [24] 7048 	push	ar6
      00555E C0 01            [24] 7049 	push	ar1
      005560 12 5E F5         [24] 7050 	lcall	_printstr
      005563 D0 01            [24] 7051 	pop	ar1
      005565 D0 06            [24] 7052 	pop	ar6
      005567 D0 07            [24] 7053 	pop	ar7
                                   7054 ;	calc.c:367: if (n > 0) printall(vals[1]);
      005569 C3               [12] 7055 	clr	c
      00556A E4               [12] 7056 	clr	a
      00556B 9E               [12] 7057 	subb	a,r6
      00556C 74 80            [12] 7058 	mov	a,#(0x00 ^ 0x80)
      00556E 8F F0            [24] 7059 	mov	b,r7
      005570 63 F0 80         [24] 7060 	xrl	b,#0x80
      005573 95 F0            [12] 7061 	subb	a,b
      005575 40 03            [24] 7062 	jc	00146$
      005577 02 56 32         [24] 7063 	ljmp	00108$
      00557A                       7064 00146$:
      00557A 74 04            [12] 7065 	mov	a,#0x04
      00557C 29               [12] 7066 	add	a,r1
      00557D F8               [12] 7067 	mov	r0,a
      00557E 86 02            [24] 7068 	mov	ar2,@r0
      005580 08               [12] 7069 	inc	r0
      005581 86 03            [24] 7070 	mov	ar3,@r0
      005583 08               [12] 7071 	inc	r0
      005584 86 04            [24] 7072 	mov	ar4,@r0
      005586 08               [12] 7073 	inc	r0
      005587 86 05            [24] 7074 	mov	ar5,@r0
                                   7075 ;	calc.c:18: printf("%08lx\t", d);
      005589 C0 07            [24] 7076 	push	ar7
      00558B C0 06            [24] 7077 	push	ar6
      00558D C0 05            [24] 7078 	push	ar5
      00558F C0 04            [24] 7079 	push	ar4
      005591 C0 03            [24] 7080 	push	ar3
      005593 C0 02            [24] 7081 	push	ar2
      005595 C0 01            [24] 7082 	push	ar1
      005597 C0 02            [24] 7083 	push	ar2
      005599 C0 03            [24] 7084 	push	ar3
      00559B C0 04            [24] 7085 	push	ar4
      00559D C0 05            [24] 7086 	push	ar5
      00559F 74 BB            [12] 7087 	mov	a,#___str_0
      0055A1 C0 E0            [24] 7088 	push	acc
      0055A3 74 7E            [12] 7089 	mov	a,#(___str_0 >> 8)
      0055A5 C0 E0            [24] 7090 	push	acc
      0055A7 74 80            [12] 7091 	mov	a,#0x80
      0055A9 C0 E0            [24] 7092 	push	acc
      0055AB 12 66 01         [24] 7093 	lcall	_printf
      0055AE E5 81            [12] 7094 	mov	a,sp
      0055B0 24 F9            [12] 7095 	add	a,#0xf9
      0055B2 F5 81            [12] 7096 	mov	sp,a
      0055B4 D0 01            [24] 7097 	pop	ar1
      0055B6 D0 02            [24] 7098 	pop	ar2
      0055B8 D0 03            [24] 7099 	pop	ar3
      0055BA D0 04            [24] 7100 	pop	ar4
      0055BC D0 05            [24] 7101 	pop	ar5
                                   7102 ;	calc.c:19: printf("% 11ld\t", d);
      0055BE C0 05            [24] 7103 	push	ar5
      0055C0 C0 04            [24] 7104 	push	ar4
      0055C2 C0 03            [24] 7105 	push	ar3
      0055C4 C0 02            [24] 7106 	push	ar2
      0055C6 C0 01            [24] 7107 	push	ar1
      0055C8 C0 02            [24] 7108 	push	ar2
      0055CA C0 03            [24] 7109 	push	ar3
      0055CC C0 04            [24] 7110 	push	ar4
      0055CE C0 05            [24] 7111 	push	ar5
      0055D0 74 C2            [12] 7112 	mov	a,#___str_1
      0055D2 C0 E0            [24] 7113 	push	acc
      0055D4 74 7E            [12] 7114 	mov	a,#(___str_1 >> 8)
      0055D6 C0 E0            [24] 7115 	push	acc
      0055D8 74 80            [12] 7116 	mov	a,#0x80
      0055DA C0 E0            [24] 7117 	push	acc
      0055DC 12 66 01         [24] 7118 	lcall	_printf
      0055DF E5 81            [12] 7119 	mov	a,sp
      0055E1 24 F9            [12] 7120 	add	a,#0xf9
      0055E3 F5 81            [12] 7121 	mov	sp,a
      0055E5 D0 01            [24] 7122 	pop	ar1
      0055E7 D0 02            [24] 7123 	pop	ar2
      0055E9 D0 03            [24] 7124 	pop	ar3
      0055EB D0 04            [24] 7125 	pop	ar4
      0055ED D0 05            [24] 7126 	pop	ar5
                                   7127 ;	calc.c:20: printf("%011lo\t", d);
      0055EF C0 05            [24] 7128 	push	ar5
      0055F1 C0 04            [24] 7129 	push	ar4
      0055F3 C0 03            [24] 7130 	push	ar3
      0055F5 C0 02            [24] 7131 	push	ar2
      0055F7 C0 01            [24] 7132 	push	ar1
      0055F9 C0 02            [24] 7133 	push	ar2
      0055FB C0 03            [24] 7134 	push	ar3
      0055FD C0 04            [24] 7135 	push	ar4
      0055FF C0 05            [24] 7136 	push	ar5
      005601 74 CA            [12] 7137 	mov	a,#___str_2
      005603 C0 E0            [24] 7138 	push	acc
      005605 74 7E            [12] 7139 	mov	a,#(___str_2 >> 8)
      005607 C0 E0            [24] 7140 	push	acc
      005609 74 80            [12] 7141 	mov	a,#0x80
      00560B C0 E0            [24] 7142 	push	acc
      00560D 12 66 01         [24] 7143 	lcall	_printf
      005610 E5 81            [12] 7144 	mov	a,sp
      005612 24 F9            [12] 7145 	add	a,#0xf9
      005614 F5 81            [12] 7146 	mov	sp,a
      005616 D0 01            [24] 7147 	pop	ar1
      005618 D0 02            [24] 7148 	pop	ar2
      00561A D0 03            [24] 7149 	pop	ar3
      00561C D0 04            [24] 7150 	pop	ar4
      00561E D0 05            [24] 7151 	pop	ar5
                                   7152 ;	calc.c:21: print32bin(d);
      005620 8A 82            [24] 7153 	mov	dpl,r2
      005622 8B 83            [24] 7154 	mov	dph,r3
      005624 8C F0            [24] 7155 	mov	b,r4
      005626 ED               [12] 7156 	mov	a,r5
      005627 C0 01            [24] 7157 	push	ar1
      005629 12 5F 64         [24] 7158 	lcall	_print32bin
      00562C D0 01            [24] 7159 	pop	ar1
      00562E D0 06            [24] 7160 	pop	ar6
      005630 D0 07            [24] 7161 	pop	ar7
                                   7162 ;	calc.c:367: if (n > 0) printall(vals[1]);
      005632                       7163 00108$:
                                   7164 ;	calc.c:368: printstr("\r\nSSTOP0\t");
      005632 90 7F C3         [24] 7165 	mov	dptr,#___str_20
      005635 75 F0 80         [24] 7166 	mov	b,#0x80
      005638 C0 07            [24] 7167 	push	ar7
      00563A C0 06            [24] 7168 	push	ar6
      00563C C0 01            [24] 7169 	push	ar1
      00563E 12 5E F5         [24] 7170 	lcall	_printstr
      005641 D0 01            [24] 7171 	pop	ar1
      005643 D0 06            [24] 7172 	pop	ar6
      005645 D0 07            [24] 7173 	pop	ar7
                                   7174 ;	calc.c:369: if (n > 1) printall(vals[0]);
      005647 C3               [12] 7175 	clr	c
      005648 74 01            [12] 7176 	mov	a,#0x01
      00564A 9E               [12] 7177 	subb	a,r6
      00564B 74 80            [12] 7178 	mov	a,#(0x00 ^ 0x80)
      00564D 8F F0            [24] 7179 	mov	b,r7
      00564F 63 F0 80         [24] 7180 	xrl	b,#0x80
      005652 95 F0            [12] 7181 	subb	a,b
      005654 40 03            [24] 7182 	jc	00147$
      005656 02 56 F5         [24] 7183 	ljmp	00110$
      005659                       7184 00147$:
      005659 87 04            [24] 7185 	mov	ar4,@r1
      00565B 09               [12] 7186 	inc	r1
      00565C 87 05            [24] 7187 	mov	ar5,@r1
      00565E 09               [12] 7188 	inc	r1
      00565F 87 06            [24] 7189 	mov	ar6,@r1
      005661 09               [12] 7190 	inc	r1
      005662 87 07            [24] 7191 	mov	ar7,@r1
                                   7192 ;	calc.c:18: printf("%08lx\t", d);
      005664 C0 07            [24] 7193 	push	ar7
      005666 C0 06            [24] 7194 	push	ar6
      005668 C0 05            [24] 7195 	push	ar5
      00566A C0 04            [24] 7196 	push	ar4
      00566C C0 04            [24] 7197 	push	ar4
      00566E C0 05            [24] 7198 	push	ar5
      005670 C0 06            [24] 7199 	push	ar6
      005672 C0 07            [24] 7200 	push	ar7
      005674 74 BB            [12] 7201 	mov	a,#___str_0
      005676 C0 E0            [24] 7202 	push	acc
      005678 74 7E            [12] 7203 	mov	a,#(___str_0 >> 8)
      00567A C0 E0            [24] 7204 	push	acc
      00567C 74 80            [12] 7205 	mov	a,#0x80
      00567E C0 E0            [24] 7206 	push	acc
      005680 12 66 01         [24] 7207 	lcall	_printf
      005683 E5 81            [12] 7208 	mov	a,sp
      005685 24 F9            [12] 7209 	add	a,#0xf9
      005687 F5 81            [12] 7210 	mov	sp,a
      005689 D0 04            [24] 7211 	pop	ar4
      00568B D0 05            [24] 7212 	pop	ar5
      00568D D0 06            [24] 7213 	pop	ar6
      00568F D0 07            [24] 7214 	pop	ar7
                                   7215 ;	calc.c:19: printf("% 11ld\t", d);
      005691 C0 07            [24] 7216 	push	ar7
      005693 C0 06            [24] 7217 	push	ar6
      005695 C0 05            [24] 7218 	push	ar5
      005697 C0 04            [24] 7219 	push	ar4
      005699 C0 04            [24] 7220 	push	ar4
      00569B C0 05            [24] 7221 	push	ar5
      00569D C0 06            [24] 7222 	push	ar6
      00569F C0 07            [24] 7223 	push	ar7
      0056A1 74 C2            [12] 7224 	mov	a,#___str_1
      0056A3 C0 E0            [24] 7225 	push	acc
      0056A5 74 7E            [12] 7226 	mov	a,#(___str_1 >> 8)
      0056A7 C0 E0            [24] 7227 	push	acc
      0056A9 74 80            [12] 7228 	mov	a,#0x80
      0056AB C0 E0            [24] 7229 	push	acc
      0056AD 12 66 01         [24] 7230 	lcall	_printf
      0056B0 E5 81            [12] 7231 	mov	a,sp
      0056B2 24 F9            [12] 7232 	add	a,#0xf9
      0056B4 F5 81            [12] 7233 	mov	sp,a
      0056B6 D0 04            [24] 7234 	pop	ar4
      0056B8 D0 05            [24] 7235 	pop	ar5
      0056BA D0 06            [24] 7236 	pop	ar6
      0056BC D0 07            [24] 7237 	pop	ar7
                                   7238 ;	calc.c:20: printf("%011lo\t", d);
      0056BE C0 07            [24] 7239 	push	ar7
      0056C0 C0 06            [24] 7240 	push	ar6
      0056C2 C0 05            [24] 7241 	push	ar5
      0056C4 C0 04            [24] 7242 	push	ar4
      0056C6 C0 04            [24] 7243 	push	ar4
      0056C8 C0 05            [24] 7244 	push	ar5
      0056CA C0 06            [24] 7245 	push	ar6
      0056CC C0 07            [24] 7246 	push	ar7
      0056CE 74 CA            [12] 7247 	mov	a,#___str_2
      0056D0 C0 E0            [24] 7248 	push	acc
      0056D2 74 7E            [12] 7249 	mov	a,#(___str_2 >> 8)
      0056D4 C0 E0            [24] 7250 	push	acc
      0056D6 74 80            [12] 7251 	mov	a,#0x80
      0056D8 C0 E0            [24] 7252 	push	acc
      0056DA 12 66 01         [24] 7253 	lcall	_printf
      0056DD E5 81            [12] 7254 	mov	a,sp
      0056DF 24 F9            [12] 7255 	add	a,#0xf9
      0056E1 F5 81            [12] 7256 	mov	sp,a
      0056E3 D0 04            [24] 7257 	pop	ar4
      0056E5 D0 05            [24] 7258 	pop	ar5
      0056E7 D0 06            [24] 7259 	pop	ar6
      0056E9 D0 07            [24] 7260 	pop	ar7
                                   7261 ;	calc.c:21: print32bin(d);
      0056EB 8C 82            [24] 7262 	mov	dpl,r4
      0056ED 8D 83            [24] 7263 	mov	dph,r5
      0056EF 8E F0            [24] 7264 	mov	b,r6
      0056F1 EF               [12] 7265 	mov	a,r7
      0056F2 12 5F 64         [24] 7266 	lcall	_print32bin
                                   7267 ;	calc.c:369: if (n > 1) printall(vals[0]);
      0056F5                       7268 00110$:
                                   7269 ;	calc.c:370: printstr("\r\n");
      0056F5 90 7E D2         [24] 7270 	mov	dptr,#___str_3
      0056F8 75 F0 80         [24] 7271 	mov	b,#0x80
      0056FB 12 5E F5         [24] 7272 	lcall	_printstr
                                   7273 ;	calc.c:372: return 1;
      0056FE 90 00 01         [24] 7274 	mov	dptr,#0x0001
                                   7275 ;	calc.c:373: }
      005701 85 08 81         [24] 7276 	mov	sp,_bp
      005704 D0 08            [24] 7277 	pop	_bp
      005706 22               [24] 7278 	ret
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
      005707                       7289 _help:
      005707 C0 08            [24] 7290 	push	_bp
      005709 85 81 08         [24] 7291 	mov	_bp,sp
                                   7292 ;	calc.c:379: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      00570C 90 7F CD         [24] 7293 	mov	dptr,#___str_21
      00570F 75 F0 80         [24] 7294 	mov	b,#0x80
      005712 12 5E F5         [24] 7295 	lcall	_printstr
                                   7296 ;	calc.c:380: printstr("p.\tpop top\r\n");
      005715 90 7F E5         [24] 7297 	mov	dptr,#___str_22
      005718 75 F0 80         [24] 7298 	mov	b,#0x80
      00571B 12 5E F5         [24] 7299 	lcall	_printstr
                                   7300 ;	calc.c:381: printstr("P\tpop stack\r\n");
      00571E 90 7F F2         [24] 7301 	mov	dptr,#___str_23
      005721 75 F0 80         [24] 7302 	mov	b,#0x80
      005724 12 5E F5         [24] 7303 	lcall	_printstr
                                   7304 ;	calc.c:382: printstr("v\tpeek top\r\n");
      005727 90 80 00         [24] 7305 	mov	dptr,#___str_24
      00572A 75 F0 80         [24] 7306 	mov	b,#0x80
      00572D 12 5E F5         [24] 7307 	lcall	_printstr
                                   7308 ;	calc.c:383: printstr("V\tpeek stack\r\n");
      005730 90 80 0D         [24] 7309 	mov	dptr,#___str_25
      005733 75 F0 80         [24] 7310 	mov	b,#0x80
      005736 12 5E F5         [24] 7311 	lcall	_printstr
                                   7312 ;	calc.c:384: printstr("i\treset acc\r\n");
      005739 90 80 1C         [24] 7313 	mov	dptr,#___str_26
      00573C 75 F0 80         [24] 7314 	mov	b,#0x80
      00573F 12 5E F5         [24] 7315 	lcall	_printstr
                                   7316 ;	calc.c:385: printstr("I\treset and discard acc\r\n");
      005742 90 80 2A         [24] 7317 	mov	dptr,#___str_27
      005745 75 F0 80         [24] 7318 	mov	b,#0x80
      005748 12 5E F5         [24] 7319 	lcall	_printstr
                                   7320 ;	calc.c:386: printstr("x\texchange top 2\r\n");
      00574B 90 80 44         [24] 7321 	mov	dptr,#___str_28
      00574E 75 F0 80         [24] 7322 	mov	b,#0x80
      005751 12 5E F5         [24] 7323 	lcall	_printstr
                                   7324 ;	calc.c:387: printstr("X\texchange stacks primary <-> secondary\r\n");
      005754 90 80 57         [24] 7325 	mov	dptr,#___str_29
      005757 75 F0 80         [24] 7326 	mov	b,#0x80
      00575A 12 5E F5         [24] 7327 	lcall	_printstr
                                   7328 ;	calc.c:388: printstr("T\texchange tops primary <-> secondary\r\n");
      00575D 90 80 81         [24] 7329 	mov	dptr,#___str_30
      005760 75 F0 80         [24] 7330 	mov	b,#0x80
      005763 12 5E F5         [24] 7331 	lcall	_printstr
                                   7332 ;	calc.c:389: printstr("U\tcopy top secondary -> primary\r\n");
      005766 90 80 A9         [24] 7333 	mov	dptr,#___str_31
      005769 75 F0 80         [24] 7334 	mov	b,#0x80
      00576C 12 5E F5         [24] 7335 	lcall	_printstr
                                   7336 ;	calc.c:390: printstr("u\tcopy top primary -> secondary\r\n");
      00576F 90 80 CB         [24] 7337 	mov	dptr,#___str_32
      005772 75 F0 80         [24] 7338 	mov	b,#0x80
      005775 12 5E F5         [24] 7339 	lcall	_printstr
                                   7340 ;	calc.c:391: printstr("M\tmove top secondary -> primary\r\n");
      005778 90 80 ED         [24] 7341 	mov	dptr,#___str_33
      00577B 75 F0 80         [24] 7342 	mov	b,#0x80
      00577E 12 5E F5         [24] 7343 	lcall	_printstr
                                   7344 ;	calc.c:392: printstr("m\tmove top primary -> secondary\r\n");
      005781 90 81 0F         [24] 7345 	mov	dptr,#___str_34
      005784 75 F0 80         [24] 7346 	mov	b,#0x80
      005787 12 5E F5         [24] 7347 	lcall	_printstr
                                   7348 ;	calc.c:393: printstr("+\tadd top 2\r\n");
      00578A 90 81 31         [24] 7349 	mov	dptr,#___str_35
      00578D 75 F0 80         [24] 7350 	mov	b,#0x80
      005790 12 5E F5         [24] 7351 	lcall	_printstr
                                   7352 ;	calc.c:394: printstr("-\tsubtract top 2\r\n");
      005793 90 81 3F         [24] 7353 	mov	dptr,#___str_36
      005796 75 F0 80         [24] 7354 	mov	b,#0x80
      005799 12 5E F5         [24] 7355 	lcall	_printstr
                                   7356 ;	calc.c:395: printstr("*\tmultiply top 2\r\n");
      00579C 90 81 52         [24] 7357 	mov	dptr,#___str_37
      00579F 75 F0 80         [24] 7358 	mov	b,#0x80
      0057A2 12 5E F5         [24] 7359 	lcall	_printstr
                                   7360 ;	calc.c:396: printstr("/\tdivide top 2\r\n");
      0057A5 90 81 65         [24] 7361 	mov	dptr,#___str_38
      0057A8 75 F0 80         [24] 7362 	mov	b,#0x80
      0057AB 12 5E F5         [24] 7363 	lcall	_printstr
                                   7364 ;	calc.c:397: printstr("\\\tdivide top 2 unsigned\r\n");	
      0057AE 90 81 76         [24] 7365 	mov	dptr,#___str_39
      0057B1 75 F0 80         [24] 7366 	mov	b,#0x80
      0057B4 12 5E F5         [24] 7367 	lcall	_printstr
                                   7368 ;	calc.c:398: printstr("%\tmodulus top 2\r\n");
      0057B7 90 81 90         [24] 7369 	mov	dptr,#___str_40
      0057BA 75 F0 80         [24] 7370 	mov	b,#0x80
      0057BD 12 5E F5         [24] 7371 	lcall	_printstr
                                   7372 ;	calc.c:399: printstr("#\tmodulus top 2 unsigned\r\n");
      0057C0 90 81 A2         [24] 7373 	mov	dptr,#___str_41
      0057C3 75 F0 80         [24] 7374 	mov	b,#0x80
      0057C6 12 5E F5         [24] 7375 	lcall	_printstr
                                   7376 ;	calc.c:400: printstr("&\tand top 2\r\n");
      0057C9 90 81 BD         [24] 7377 	mov	dptr,#___str_42
      0057CC 75 F0 80         [24] 7378 	mov	b,#0x80
      0057CF 12 5E F5         [24] 7379 	lcall	_printstr
                                   7380 ;	calc.c:401: printstr("|\tor top 2\r\n");
      0057D2 90 81 CB         [24] 7381 	mov	dptr,#___str_43
      0057D5 75 F0 80         [24] 7382 	mov	b,#0x80
      0057D8 12 5E F5         [24] 7383 	lcall	_printstr
                                   7384 ;	calc.c:402: printstr("^\txor top 2\r\n");
      0057DB 90 81 D8         [24] 7385 	mov	dptr,#___str_44
      0057DE 75 F0 80         [24] 7386 	mov	b,#0x80
      0057E1 12 5E F5         [24] 7387 	lcall	_printstr
                                   7388 ;	calc.c:403: printstr(">\tshift right top 2\r\n");
      0057E4 90 81 E6         [24] 7389 	mov	dptr,#___str_45
      0057E7 75 F0 80         [24] 7390 	mov	b,#0x80
      0057EA 12 5E F5         [24] 7391 	lcall	_printstr
                                   7392 ;	calc.c:404: printstr("]\tarithmetic shift right top 2\r\n");
      0057ED 90 81 FC         [24] 7393 	mov	dptr,#___str_46
      0057F0 75 F0 80         [24] 7394 	mov	b,#0x80
      0057F3 12 5E F5         [24] 7395 	lcall	_printstr
                                   7396 ;	calc.c:405: printstr("<\tshift left top 2\r\n");
      0057F6 90 82 1D         [24] 7397 	mov	dptr,#___str_47
      0057F9 75 F0 80         [24] 7398 	mov	b,#0x80
      0057FC 12 5E F5         [24] 7399 	lcall	_printstr
                                   7400 ;	calc.c:406: printstr("~\tbitwise not top\r\n");
      0057FF 90 82 32         [24] 7401 	mov	dptr,#___str_48
      005802 75 F0 80         [24] 7402 	mov	b,#0x80
      005805 12 5E F5         [24] 7403 	lcall	_printstr
                                   7404 ;	calc.c:407: printstr("s\tstatus\r\n");
      005808 90 82 46         [24] 7405 	mov	dptr,#___str_49
      00580B 75 F0 80         [24] 7406 	mov	b,#0x80
      00580E 12 5E F5         [24] 7407 	lcall	_printstr
                                   7408 ;	calc.c:408: printstr("?\thelp\r\n");
      005811 90 82 51         [24] 7409 	mov	dptr,#___str_50
      005814 75 F0 80         [24] 7410 	mov	b,#0x80
      005817 12 5E F5         [24] 7411 	lcall	_printstr
                                   7412 ;	calc.c:409: printstr("q\tquit\r\n");
      00581A 90 82 5A         [24] 7413 	mov	dptr,#___str_51
      00581D 75 F0 80         [24] 7414 	mov	b,#0x80
      005820 12 5E F5         [24] 7415 	lcall	_printstr
                                   7416 ;	calc.c:411: return 1;
      005823 90 00 01         [24] 7417 	mov	dptr,#0x0001
                                   7418 ;	calc.c:412: }
      005826 D0 08            [24] 7419 	pop	_bp
      005828 22               [24] 7420 	ret
                                   7421 ;------------------------------------------------------------
                                   7422 ;Allocation info for local variables in function 'main'
                                   7423 ;------------------------------------------------------------
                                   7424 ;input                     Allocated to registers r6 r7 
                                   7425 ;------------------------------------------------------------
                                   7426 ;	calc.c:442: void main(void) {
                                   7427 ;	-----------------------------------------
                                   7428 ;	 function main
                                   7429 ;	-----------------------------------------
      005829                       7430 _main:
                                   7431 ;	calc.c:445: giant = 0;
      005829 78 09            [12] 7432 	mov	r0,#_giant
      00582B 76 00            [12] 7433 	mov	@r0,#0x00
                                   7434 ;	calc.c:447: c.base = 10;
      00582D 90 A0 0C         [24] 7435 	mov	dptr,#_c
      005830 74 0A            [12] 7436 	mov	a,#0x0a
      005832 F0               [24] 7437 	movx	@dptr,a
      005833 E4               [12] 7438 	clr	a
      005834 A3               [24] 7439 	inc	dptr
      005835 F0               [24] 7440 	movx	@dptr,a
                                   7441 ;	calc.c:448: c.acc = 0l;
      005836 90 A0 0E         [24] 7442 	mov	dptr,#(_c + 0x0002)
      005839 F0               [24] 7443 	movx	@dptr,a
      00583A A3               [24] 7444 	inc	dptr
      00583B F0               [24] 7445 	movx	@dptr,a
      00583C A3               [24] 7446 	inc	dptr
      00583D F0               [24] 7447 	movx	@dptr,a
      00583E A3               [24] 7448 	inc	dptr
      00583F F0               [24] 7449 	movx	@dptr,a
                                   7450 ;	calc.c:449: c.acc_valid = (char)0;
      005840 90 A0 12         [24] 7451 	mov	dptr,#(_c + 0x0006)
      005843 F0               [24] 7452 	movx	@dptr,a
                                   7453 ;	calc.c:450: c.digit[0] = c.digit[1] = '\0';
      005844 90 A0 14         [24] 7454 	mov	dptr,#(_c + 0x0008)
      005847 F0               [24] 7455 	movx	@dptr,a
      005848 90 A0 13         [24] 7456 	mov	dptr,#(_c + 0x0007)
      00584B F0               [24] 7457 	movx	@dptr,a
                                   7458 ;	calc.c:452: c.ps = &c.s0;
      00584C 90 E0 1D         [24] 7459 	mov	dptr,#(_c + 0x4011)
      00584F 74 15            [12] 7460 	mov	a,#(_c + 0x0009)
      005851 F0               [24] 7461 	movx	@dptr,a
      005852 74 A0            [12] 7462 	mov	a,#((_c + 0x0009) >> 8)
      005854 A3               [24] 7463 	inc	dptr
      005855 F0               [24] 7464 	movx	@dptr,a
      005856 E4               [12] 7465 	clr	a
      005857 A3               [24] 7466 	inc	dptr
      005858 F0               [24] 7467 	movx	@dptr,a
                                   7468 ;	calc.c:453: c.ss = &c.s1;
      005859 90 E0 20         [24] 7469 	mov	dptr,#(_c + 0x4014)
      00585C 74 19            [12] 7470 	mov	a,#(_c + 0x200d)
      00585E F0               [24] 7471 	movx	@dptr,a
      00585F 74 C0            [12] 7472 	mov	a,#((_c + 0x200d) >> 8)
      005861 A3               [24] 7473 	inc	dptr
      005862 F0               [24] 7474 	movx	@dptr,a
      005863 E4               [12] 7475 	clr	a
      005864 A3               [24] 7476 	inc	dptr
      005865 F0               [24] 7477 	movx	@dptr,a
                                   7478 ;	calc.c:454: stack_init(c.ps);
      005866 90 A0 15         [24] 7479 	mov	dptr,#(_c + 0x0009)
      005869 75 F0 00         [24] 7480 	mov	b,#0x00
      00586C 12 26 80         [24] 7481 	lcall	_stack_init
                                   7482 ;	calc.c:455: stack_init(c.ss);
      00586F 90 E0 20         [24] 7483 	mov	dptr,#(_c + 0x4014)
      005872 E0               [24] 7484 	movx	a,@dptr
      005873 FD               [12] 7485 	mov	r5,a
      005874 A3               [24] 7486 	inc	dptr
      005875 E0               [24] 7487 	movx	a,@dptr
      005876 FE               [12] 7488 	mov	r6,a
      005877 A3               [24] 7489 	inc	dptr
      005878 E0               [24] 7490 	movx	a,@dptr
      005879 FF               [12] 7491 	mov	r7,a
      00587A 8D 82            [24] 7492 	mov	dpl,r5
      00587C 8E 83            [24] 7493 	mov	dph,r6
      00587E 8F F0            [24] 7494 	mov	b,r7
      005880 12 26 80         [24] 7495 	lcall	_stack_init
                                   7496 ;	calc.c:457: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      005883 74 0C            [12] 7497 	mov	a,#_c
      005885 C0 E0            [24] 7498 	push	acc
      005887 74 A0            [12] 7499 	mov	a,#(_c >> 8)
      005889 C0 E0            [24] 7500 	push	acc
      00588B E4               [12] 7501 	clr	a
      00588C C0 E0            [24] 7502 	push	acc
      00588E 74 25            [12] 7503 	mov	a,#_deltas
      005890 C0 E0            [24] 7504 	push	acc
      005892 74 E0            [12] 7505 	mov	a,#(_deltas >> 8)
      005894 C0 E0            [24] 7506 	push	acc
      005896 E4               [12] 7507 	clr	a
      005897 C0 E0            [24] 7508 	push	acc
      005899 C0 E0            [24] 7509 	push	acc
      00589B 74 80            [12] 7510 	mov	a,#0x80
      00589D C0 E0            [24] 7511 	push	acc
      00589F 74 03            [12] 7512 	mov	a,#0x03
      0058A1 C0 E0            [24] 7513 	push	acc
      0058A3 E4               [12] 7514 	clr	a
      0058A4 C0 E0            [24] 7515 	push	acc
      0058A6 C0 E0            [24] 7516 	push	acc
      0058A8 C0 E0            [24] 7517 	push	acc
      0058AA 90 A0 00         [24] 7518 	mov	dptr,#_s
      0058AD 75 F0 00         [24] 7519 	mov	b,#0x00
      0058B0 12 20 90         [24] 7520 	lcall	_state_init
      0058B3 E5 81            [12] 7521 	mov	a,sp
      0058B5 24 F4            [12] 7522 	add	a,#0xf4
      0058B7 F5 81            [12] 7523 	mov	sp,a
                                   7524 ;	calc.c:459: (void)status(&c, deltas);
      0058B9 74 25            [12] 7525 	mov	a,#_deltas
      0058BB C0 E0            [24] 7526 	push	acc
      0058BD 74 E0            [12] 7527 	mov	a,#(_deltas >> 8)
      0058BF C0 E0            [24] 7528 	push	acc
      0058C1 E4               [12] 7529 	clr	a
      0058C2 C0 E0            [24] 7530 	push	acc
      0058C4 90 A0 0C         [24] 7531 	mov	dptr,#_c
      0058C7 75 F0 00         [24] 7532 	mov	b,#0x00
      0058CA 12 51 79         [24] 7533 	lcall	_status
      0058CD 15 81            [12] 7534 	dec	sp
      0058CF 15 81            [12] 7535 	dec	sp
      0058D1 15 81            [12] 7536 	dec	sp
                                   7537 ;	calc.c:461: while (1) {
      0058D3                       7538 00192$:
                                   7539 ;	calc.c:462: input = getchar();
      0058D3 12 5E CE         [24] 7540 	lcall	_getchar
      0058D6 AE 82            [24] 7541 	mov	r6,dpl
      0058D8 AF 83            [24] 7542 	mov	r7,dph
                                   7543 ;	calc.c:463: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      0058DA 8E 05            [24] 7544 	mov	ar5,r6
      0058DC BD 0D 02         [24] 7545 	cjne	r5,#0x0d,00372$
      0058DF 80 03            [24] 7546 	sjmp	00101$
      0058E1                       7547 00372$:
      0058E1 BD 0A 17         [24] 7548 	cjne	r5,#0x0a,00102$
      0058E4                       7549 00101$:
      0058E4 90 7E D2         [24] 7550 	mov	dptr,#___str_3
      0058E7 75 F0 80         [24] 7551 	mov	b,#0x80
      0058EA C0 07            [24] 7552 	push	ar7
      0058EC C0 06            [24] 7553 	push	ar6
      0058EE C0 05            [24] 7554 	push	ar5
      0058F0 12 5E F5         [24] 7555 	lcall	_printstr
      0058F3 D0 05            [24] 7556 	pop	ar5
      0058F5 D0 06            [24] 7557 	pop	ar6
      0058F7 D0 07            [24] 7558 	pop	ar7
      0058F9 80 13            [24] 7559 	sjmp	00103$
      0058FB                       7560 00102$:
                                   7561 ;	calc.c:464: else (void)putchar(input);
      0058FB 8E 82            [24] 7562 	mov	dpl,r6
      0058FD 8F 83            [24] 7563 	mov	dph,r7
      0058FF C0 07            [24] 7564 	push	ar7
      005901 C0 06            [24] 7565 	push	ar6
      005903 C0 05            [24] 7566 	push	ar5
      005905 12 5E C4         [24] 7567 	lcall	_putchar
      005908 D0 05            [24] 7568 	pop	ar5
      00590A D0 06            [24] 7569 	pop	ar6
      00590C D0 07            [24] 7570 	pop	ar7
      00590E                       7571 00103$:
                                   7572 ;	calc.c:465: c.digit[0] = (char)input;
      00590E 90 A0 13         [24] 7573 	mov	dptr,#(_c + 0x0007)
      005911 ED               [12] 7574 	mov	a,r5
      005912 F0               [24] 7575 	movx	@dptr,a
                                   7576 ;	calc.c:467: if ((char)input == 'q') {
      005913 BD 71 29         [24] 7577 	cjne	r5,#0x71,00189$
                                   7578 ;	calc.c:468: if (state_exec(&s, EVENT_TERM) <= 0) break;
      005916 74 08            [12] 7579 	mov	a,#0x08
      005918 C0 E0            [24] 7580 	push	acc
      00591A E4               [12] 7581 	clr	a
      00591B C0 E0            [24] 7582 	push	acc
      00591D 90 A0 00         [24] 7583 	mov	dptr,#_s
      005920 75 F0 00         [24] 7584 	mov	b,#0x00
      005923 12 21 46         [24] 7585 	lcall	_state_exec
      005926 AB 82            [24] 7586 	mov	r3,dpl
      005928 AC 83            [24] 7587 	mov	r4,dph
      00592A 15 81            [12] 7588 	dec	sp
      00592C 15 81            [12] 7589 	dec	sp
      00592E C3               [12] 7590 	clr	c
      00592F E4               [12] 7591 	clr	a
      005930 9B               [12] 7592 	subb	a,r3
      005931 74 80            [12] 7593 	mov	a,#(0x00 ^ 0x80)
      005933 8C F0            [24] 7594 	mov	b,r4
      005935 63 F0 80         [24] 7595 	xrl	b,#0x80
      005938 95 F0            [12] 7596 	subb	a,b
      00593A 40 97            [24] 7597 	jc	00192$
      00593C 02 5B EE         [24] 7598 	ljmp	00193$
      00593F                       7599 00189$:
                                   7600 ;	calc.c:469: } else if ((char)input == 's') {
      00593F BD 73 2C         [24] 7601 	cjne	r5,#0x73,00186$
                                   7602 ;	calc.c:470: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      005942 74 03            [12] 7603 	mov	a,#0x03
      005944 C0 E0            [24] 7604 	push	acc
      005946 E4               [12] 7605 	clr	a
      005947 C0 E0            [24] 7606 	push	acc
      005949 90 A0 00         [24] 7607 	mov	dptr,#_s
      00594C 75 F0 00         [24] 7608 	mov	b,#0x00
      00594F 12 21 46         [24] 7609 	lcall	_state_exec
      005952 AB 82            [24] 7610 	mov	r3,dpl
      005954 AC 83            [24] 7611 	mov	r4,dph
      005956 15 81            [12] 7612 	dec	sp
      005958 15 81            [12] 7613 	dec	sp
      00595A C3               [12] 7614 	clr	c
      00595B E4               [12] 7615 	clr	a
      00595C 9B               [12] 7616 	subb	a,r3
      00595D 74 80            [12] 7617 	mov	a,#(0x00 ^ 0x80)
      00595F 8C F0            [24] 7618 	mov	b,r4
      005961 63 F0 80         [24] 7619 	xrl	b,#0x80
      005964 95 F0            [12] 7620 	subb	a,b
      005966 50 03            [24] 7621 	jnc	00380$
      005968 02 58 D3         [24] 7622 	ljmp	00192$
      00596B                       7623 00380$:
      00596B 02 5B EE         [24] 7624 	ljmp	00193$
      00596E                       7625 00186$:
                                   7626 ;	calc.c:471: } else if ((char)input == '?') {
      00596E BD 3F 2C         [24] 7627 	cjne	r5,#0x3f,00183$
                                   7628 ;	calc.c:472: if (state_exec(&s, EVENT_HELP) <= 0) break;
      005971 74 04            [12] 7629 	mov	a,#0x04
      005973 C0 E0            [24] 7630 	push	acc
      005975 E4               [12] 7631 	clr	a
      005976 C0 E0            [24] 7632 	push	acc
      005978 90 A0 00         [24] 7633 	mov	dptr,#_s
      00597B 75 F0 00         [24] 7634 	mov	b,#0x00
      00597E 12 21 46         [24] 7635 	lcall	_state_exec
      005981 AB 82            [24] 7636 	mov	r3,dpl
      005983 AC 83            [24] 7637 	mov	r4,dph
      005985 15 81            [12] 7638 	dec	sp
      005987 15 81            [12] 7639 	dec	sp
      005989 C3               [12] 7640 	clr	c
      00598A E4               [12] 7641 	clr	a
      00598B 9B               [12] 7642 	subb	a,r3
      00598C 74 80            [12] 7643 	mov	a,#(0x00 ^ 0x80)
      00598E 8C F0            [24] 7644 	mov	b,r4
      005990 63 F0 80         [24] 7645 	xrl	b,#0x80
      005993 95 F0            [12] 7646 	subb	a,b
      005995 50 03            [24] 7647 	jnc	00383$
      005997 02 58 D3         [24] 7648 	ljmp	00192$
      00599A                       7649 00383$:
      00599A 02 5B EE         [24] 7650 	ljmp	00193$
      00599D                       7651 00183$:
                                   7652 ;	calc.c:473: } else if ((char)input == 'i') {
      00599D BD 69 2C         [24] 7653 	cjne	r5,#0x69,00180$
                                   7654 ;	calc.c:474: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      0059A0 74 06            [12] 7655 	mov	a,#0x06
      0059A2 C0 E0            [24] 7656 	push	acc
      0059A4 E4               [12] 7657 	clr	a
      0059A5 C0 E0            [24] 7658 	push	acc
      0059A7 90 A0 00         [24] 7659 	mov	dptr,#_s
      0059AA 75 F0 00         [24] 7660 	mov	b,#0x00
      0059AD 12 21 46         [24] 7661 	lcall	_state_exec
      0059B0 AB 82            [24] 7662 	mov	r3,dpl
      0059B2 AC 83            [24] 7663 	mov	r4,dph
      0059B4 15 81            [12] 7664 	dec	sp
      0059B6 15 81            [12] 7665 	dec	sp
      0059B8 C3               [12] 7666 	clr	c
      0059B9 E4               [12] 7667 	clr	a
      0059BA 9B               [12] 7668 	subb	a,r3
      0059BB 74 80            [12] 7669 	mov	a,#(0x00 ^ 0x80)
      0059BD 8C F0            [24] 7670 	mov	b,r4
      0059BF 63 F0 80         [24] 7671 	xrl	b,#0x80
      0059C2 95 F0            [12] 7672 	subb	a,b
      0059C4 50 03            [24] 7673 	jnc	00386$
      0059C6 02 58 D3         [24] 7674 	ljmp	00192$
      0059C9                       7675 00386$:
      0059C9 02 5B EE         [24] 7676 	ljmp	00193$
      0059CC                       7677 00180$:
                                   7678 ;	calc.c:475: } else if ((char)input == 'I') {
      0059CC BD 49 2C         [24] 7679 	cjne	r5,#0x49,00177$
                                   7680 ;	calc.c:476: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      0059CF 74 07            [12] 7681 	mov	a,#0x07
      0059D1 C0 E0            [24] 7682 	push	acc
      0059D3 E4               [12] 7683 	clr	a
      0059D4 C0 E0            [24] 7684 	push	acc
      0059D6 90 A0 00         [24] 7685 	mov	dptr,#_s
      0059D9 75 F0 00         [24] 7686 	mov	b,#0x00
      0059DC 12 21 46         [24] 7687 	lcall	_state_exec
      0059DF AB 82            [24] 7688 	mov	r3,dpl
      0059E1 AC 83            [24] 7689 	mov	r4,dph
      0059E3 15 81            [12] 7690 	dec	sp
      0059E5 15 81            [12] 7691 	dec	sp
      0059E7 C3               [12] 7692 	clr	c
      0059E8 E4               [12] 7693 	clr	a
      0059E9 9B               [12] 7694 	subb	a,r3
      0059EA 74 80            [12] 7695 	mov	a,#(0x00 ^ 0x80)
      0059EC 8C F0            [24] 7696 	mov	b,r4
      0059EE 63 F0 80         [24] 7697 	xrl	b,#0x80
      0059F1 95 F0            [12] 7698 	subb	a,b
      0059F3 50 03            [24] 7699 	jnc	00389$
      0059F5 02 58 D3         [24] 7700 	ljmp	00192$
      0059F8                       7701 00389$:
      0059F8 02 5B EE         [24] 7702 	ljmp	00193$
      0059FB                       7703 00177$:
                                   7704 ;	calc.c:478: ((char)input == 'h') || ((char)input == 'H') ||
      0059FB BD 68 02         [24] 7705 	cjne	r5,#0x68,00390$
      0059FE 80 0D            [24] 7706 	sjmp	00170$
      005A00                       7707 00390$:
      005A00 BD 48 02         [24] 7708 	cjne	r5,#0x48,00391$
      005A03 80 08            [24] 7709 	sjmp	00170$
      005A05                       7710 00391$:
                                   7711 ;	calc.c:479: ((char)input == 'o') || ((char)input == 'O')
      005A05 BD 6F 02         [24] 7712 	cjne	r5,#0x6f,00392$
      005A08 80 03            [24] 7713 	sjmp	00170$
      005A0A                       7714 00392$:
      005A0A BD 4F 2C         [24] 7715 	cjne	r5,#0x4f,00171$
      005A0D                       7716 00170$:
                                   7717 ;	calc.c:481: if (state_exec(&s, EVENT_BASE) <= 0) break;
      005A0D 74 05            [12] 7718 	mov	a,#0x05
      005A0F C0 E0            [24] 7719 	push	acc
      005A11 E4               [12] 7720 	clr	a
      005A12 C0 E0            [24] 7721 	push	acc
      005A14 90 A0 00         [24] 7722 	mov	dptr,#_s
      005A17 75 F0 00         [24] 7723 	mov	b,#0x00
      005A1A 12 21 46         [24] 7724 	lcall	_state_exec
      005A1D AB 82            [24] 7725 	mov	r3,dpl
      005A1F AC 83            [24] 7726 	mov	r4,dph
      005A21 15 81            [12] 7727 	dec	sp
      005A23 15 81            [12] 7728 	dec	sp
      005A25 C3               [12] 7729 	clr	c
      005A26 E4               [12] 7730 	clr	a
      005A27 9B               [12] 7731 	subb	a,r3
      005A28 74 80            [12] 7732 	mov	a,#(0x00 ^ 0x80)
      005A2A 8C F0            [24] 7733 	mov	b,r4
      005A2C 63 F0 80         [24] 7734 	xrl	b,#0x80
      005A2F 95 F0            [12] 7735 	subb	a,b
      005A31 50 03            [24] 7736 	jnc	00395$
      005A33 02 58 D3         [24] 7737 	ljmp	00192$
      005A36                       7738 00395$:
      005A36 02 5B EE         [24] 7739 	ljmp	00193$
      005A39                       7740 00171$:
                                   7741 ;	calc.c:482: } else if (isxdigit(input)) {
      005A39 8E 82            [24] 7742 	mov	dpl,r6
      005A3B 8F 83            [24] 7743 	mov	dph,r7
      005A3D C0 05            [24] 7744 	push	ar5
      005A3F 12 5B FB         [24] 7745 	lcall	_isxdigit
      005A42 E5 82            [12] 7746 	mov	a,dpl
      005A44 85 83 F0         [24] 7747 	mov	b,dph
      005A47 D0 05            [24] 7748 	pop	ar5
      005A49 45 F0            [12] 7749 	orl	a,b
      005A4B 60 2C            [24] 7750 	jz	00168$
                                   7751 ;	calc.c:483: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      005A4D 74 01            [12] 7752 	mov	a,#0x01
      005A4F C0 E0            [24] 7753 	push	acc
      005A51 E4               [12] 7754 	clr	a
      005A52 C0 E0            [24] 7755 	push	acc
      005A54 90 A0 00         [24] 7756 	mov	dptr,#_s
      005A57 75 F0 00         [24] 7757 	mov	b,#0x00
      005A5A 12 21 46         [24] 7758 	lcall	_state_exec
      005A5D AE 82            [24] 7759 	mov	r6,dpl
      005A5F AF 83            [24] 7760 	mov	r7,dph
      005A61 15 81            [12] 7761 	dec	sp
      005A63 15 81            [12] 7762 	dec	sp
      005A65 C3               [12] 7763 	clr	c
      005A66 E4               [12] 7764 	clr	a
      005A67 9E               [12] 7765 	subb	a,r6
      005A68 74 80            [12] 7766 	mov	a,#(0x00 ^ 0x80)
      005A6A 8F F0            [24] 7767 	mov	b,r7
      005A6C 63 F0 80         [24] 7768 	xrl	b,#0x80
      005A6F 95 F0            [12] 7769 	subb	a,b
      005A71 50 03            [24] 7770 	jnc	00397$
      005A73 02 58 D3         [24] 7771 	ljmp	00192$
      005A76                       7772 00397$:
      005A76 02 5B EE         [24] 7773 	ljmp	00193$
      005A79                       7774 00168$:
                                   7775 ;	calc.c:485: ((char)input == 'p') || ((char)input == 'P') ||
      005A79 BD 70 02         [24] 7776 	cjne	r5,#0x70,00398$
      005A7C 80 17            [24] 7777 	sjmp	00159$
      005A7E                       7778 00398$:
      005A7E BD 50 02         [24] 7779 	cjne	r5,#0x50,00399$
      005A81 80 12            [24] 7780 	sjmp	00159$
      005A83                       7781 00399$:
                                   7782 ;	calc.c:486: ((char)input == 'v') || ((char)input == 'V') ||
      005A83 BD 76 02         [24] 7783 	cjne	r5,#0x76,00400$
      005A86 80 0D            [24] 7784 	sjmp	00159$
      005A88                       7785 00400$:
      005A88 BD 56 02         [24] 7786 	cjne	r5,#0x56,00401$
      005A8B 80 08            [24] 7787 	sjmp	00159$
      005A8D                       7788 00401$:
                                   7789 ;	calc.c:487: ((char)input == '.') ||
      005A8D BD 2E 02         [24] 7790 	cjne	r5,#0x2e,00402$
      005A90 80 03            [24] 7791 	sjmp	00159$
      005A92                       7792 00402$:
                                   7793 ;	calc.c:488: ((char)input == 'x')
      005A92 BD 78 2C         [24] 7794 	cjne	r5,#0x78,00160$
      005A95                       7795 00159$:
                                   7796 ;	calc.c:490: if (state_exec(&s, EVENT_OP) <= 0) break;
      005A95 74 02            [12] 7797 	mov	a,#0x02
      005A97 C0 E0            [24] 7798 	push	acc
      005A99 E4               [12] 7799 	clr	a
      005A9A C0 E0            [24] 7800 	push	acc
      005A9C 90 A0 00         [24] 7801 	mov	dptr,#_s
      005A9F 75 F0 00         [24] 7802 	mov	b,#0x00
      005AA2 12 21 46         [24] 7803 	lcall	_state_exec
      005AA5 AE 82            [24] 7804 	mov	r6,dpl
      005AA7 AF 83            [24] 7805 	mov	r7,dph
      005AA9 15 81            [12] 7806 	dec	sp
      005AAB 15 81            [12] 7807 	dec	sp
      005AAD C3               [12] 7808 	clr	c
      005AAE E4               [12] 7809 	clr	a
      005AAF 9E               [12] 7810 	subb	a,r6
      005AB0 74 80            [12] 7811 	mov	a,#(0x00 ^ 0x80)
      005AB2 8F F0            [24] 7812 	mov	b,r7
      005AB4 63 F0 80         [24] 7813 	xrl	b,#0x80
      005AB7 95 F0            [12] 7814 	subb	a,b
      005AB9 50 03            [24] 7815 	jnc	00405$
      005ABB 02 58 D3         [24] 7816 	ljmp	00192$
      005ABE                       7817 00405$:
      005ABE 02 5B EE         [24] 7818 	ljmp	00193$
      005AC1                       7819 00160$:
                                   7820 ;	calc.c:492: ((char)input == 'X') || ((char)input == 'T') ||
      005AC1 BD 58 02         [24] 7821 	cjne	r5,#0x58,00406$
      005AC4 80 17            [24] 7822 	sjmp	00151$
      005AC6                       7823 00406$:
      005AC6 BD 54 02         [24] 7824 	cjne	r5,#0x54,00407$
      005AC9 80 12            [24] 7825 	sjmp	00151$
      005ACB                       7826 00407$:
                                   7827 ;	calc.c:493: ((char)input == 'm') || ((char)input == 'M') ||
      005ACB BD 6D 02         [24] 7828 	cjne	r5,#0x6d,00408$
      005ACE 80 0D            [24] 7829 	sjmp	00151$
      005AD0                       7830 00408$:
      005AD0 BD 4D 02         [24] 7831 	cjne	r5,#0x4d,00409$
      005AD3 80 08            [24] 7832 	sjmp	00151$
      005AD5                       7833 00409$:
                                   7834 ;	calc.c:494: ((char)input == 'u') || ((char)input == 'U')
      005AD5 BD 75 02         [24] 7835 	cjne	r5,#0x75,00410$
      005AD8 80 03            [24] 7836 	sjmp	00151$
      005ADA                       7837 00410$:
      005ADA BD 55 2C         [24] 7838 	cjne	r5,#0x55,00152$
      005ADD                       7839 00151$:
                                   7840 ;	calc.c:496: if (state_exec(&s, EVENT_OP) <= 0) break;
      005ADD 74 02            [12] 7841 	mov	a,#0x02
      005ADF C0 E0            [24] 7842 	push	acc
      005AE1 E4               [12] 7843 	clr	a
      005AE2 C0 E0            [24] 7844 	push	acc
      005AE4 90 A0 00         [24] 7845 	mov	dptr,#_s
      005AE7 75 F0 00         [24] 7846 	mov	b,#0x00
      005AEA 12 21 46         [24] 7847 	lcall	_state_exec
      005AED AE 82            [24] 7848 	mov	r6,dpl
      005AEF AF 83            [24] 7849 	mov	r7,dph
      005AF1 15 81            [12] 7850 	dec	sp
      005AF3 15 81            [12] 7851 	dec	sp
      005AF5 C3               [12] 7852 	clr	c
      005AF6 E4               [12] 7853 	clr	a
      005AF7 9E               [12] 7854 	subb	a,r6
      005AF8 74 80            [12] 7855 	mov	a,#(0x00 ^ 0x80)
      005AFA 8F F0            [24] 7856 	mov	b,r7
      005AFC 63 F0 80         [24] 7857 	xrl	b,#0x80
      005AFF 95 F0            [12] 7858 	subb	a,b
      005B01 50 03            [24] 7859 	jnc	00413$
      005B03 02 58 D3         [24] 7860 	ljmp	00192$
      005B06                       7861 00413$:
      005B06 02 5B EE         [24] 7862 	ljmp	00193$
      005B09                       7863 00152$:
                                   7864 ;	calc.c:498: ((char)input == '+') || ((char)input == '-')
      005B09 BD 2B 02         [24] 7865 	cjne	r5,#0x2b,00414$
      005B0C 80 03            [24] 7866 	sjmp	00147$
      005B0E                       7867 00414$:
      005B0E BD 2D 2C         [24] 7868 	cjne	r5,#0x2d,00148$
      005B11                       7869 00147$:
                                   7870 ;	calc.c:500: if (state_exec(&s, EVENT_OP) <= 0) break;
      005B11 74 02            [12] 7871 	mov	a,#0x02
      005B13 C0 E0            [24] 7872 	push	acc
      005B15 E4               [12] 7873 	clr	a
      005B16 C0 E0            [24] 7874 	push	acc
      005B18 90 A0 00         [24] 7875 	mov	dptr,#_s
      005B1B 75 F0 00         [24] 7876 	mov	b,#0x00
      005B1E 12 21 46         [24] 7877 	lcall	_state_exec
      005B21 AE 82            [24] 7878 	mov	r6,dpl
      005B23 AF 83            [24] 7879 	mov	r7,dph
      005B25 15 81            [12] 7880 	dec	sp
      005B27 15 81            [12] 7881 	dec	sp
      005B29 C3               [12] 7882 	clr	c
      005B2A E4               [12] 7883 	clr	a
      005B2B 9E               [12] 7884 	subb	a,r6
      005B2C 74 80            [12] 7885 	mov	a,#(0x00 ^ 0x80)
      005B2E 8F F0            [24] 7886 	mov	b,r7
      005B30 63 F0 80         [24] 7887 	xrl	b,#0x80
      005B33 95 F0            [12] 7888 	subb	a,b
      005B35 50 03            [24] 7889 	jnc	00417$
      005B37 02 58 D3         [24] 7890 	ljmp	00192$
      005B3A                       7891 00417$:
      005B3A 02 5B EE         [24] 7892 	ljmp	00193$
      005B3D                       7893 00148$:
                                   7894 ;	calc.c:502: ((char)input == '*') ||
      005B3D BD 2A 02         [24] 7895 	cjne	r5,#0x2a,00418$
      005B40 80 12            [24] 7896 	sjmp	00140$
      005B42                       7897 00418$:
                                   7898 ;	calc.c:503: ((char)input == '/') || ((char)input == '\\') ||
      005B42 BD 2F 02         [24] 7899 	cjne	r5,#0x2f,00419$
      005B45 80 0D            [24] 7900 	sjmp	00140$
      005B47                       7901 00419$:
      005B47 BD 5C 02         [24] 7902 	cjne	r5,#0x5c,00420$
      005B4A 80 08            [24] 7903 	sjmp	00140$
      005B4C                       7904 00420$:
                                   7905 ;	calc.c:504: ((char)input == '%') || ((char)input == '#')
      005B4C BD 25 02         [24] 7906 	cjne	r5,#0x25,00421$
      005B4F 80 03            [24] 7907 	sjmp	00140$
      005B51                       7908 00421$:
      005B51 BD 23 29         [24] 7909 	cjne	r5,#0x23,00141$
      005B54                       7910 00140$:
                                   7911 ;	calc.c:506: if (state_exec(&s, EVENT_OP) <= 0) break;
      005B54 74 02            [12] 7912 	mov	a,#0x02
      005B56 C0 E0            [24] 7913 	push	acc
      005B58 E4               [12] 7914 	clr	a
      005B59 C0 E0            [24] 7915 	push	acc
      005B5B 90 A0 00         [24] 7916 	mov	dptr,#_s
      005B5E 75 F0 00         [24] 7917 	mov	b,#0x00
      005B61 12 21 46         [24] 7918 	lcall	_state_exec
      005B64 AE 82            [24] 7919 	mov	r6,dpl
      005B66 AF 83            [24] 7920 	mov	r7,dph
      005B68 15 81            [12] 7921 	dec	sp
      005B6A 15 81            [12] 7922 	dec	sp
      005B6C C3               [12] 7923 	clr	c
      005B6D E4               [12] 7924 	clr	a
      005B6E 9E               [12] 7925 	subb	a,r6
      005B6F 74 80            [12] 7926 	mov	a,#(0x00 ^ 0x80)
      005B71 8F F0            [24] 7927 	mov	b,r7
      005B73 63 F0 80         [24] 7928 	xrl	b,#0x80
      005B76 95 F0            [12] 7929 	subb	a,b
      005B78 50 74            [24] 7930 	jnc	00193$
      005B7A 02 58 D3         [24] 7931 	ljmp	00192$
      005B7D                       7932 00141$:
                                   7933 ;	calc.c:508: ((char)input == '&') ||
      005B7D BD 26 02         [24] 7934 	cjne	r5,#0x26,00425$
      005B80 80 1C            [24] 7935 	sjmp	00131$
      005B82                       7936 00425$:
                                   7937 ;	calc.c:509: ((char)input == '|') || ((char)input == '^') ||
      005B82 BD 7C 02         [24] 7938 	cjne	r5,#0x7c,00426$
      005B85 80 17            [24] 7939 	sjmp	00131$
      005B87                       7940 00426$:
      005B87 BD 5E 02         [24] 7941 	cjne	r5,#0x5e,00427$
      005B8A 80 12            [24] 7942 	sjmp	00131$
      005B8C                       7943 00427$:
                                   7944 ;	calc.c:510: ((char)input == '~') ||
      005B8C BD 7E 02         [24] 7945 	cjne	r5,#0x7e,00428$
      005B8F 80 0D            [24] 7946 	sjmp	00131$
      005B91                       7947 00428$:
                                   7948 ;	calc.c:511: ((char)input == '>') || ((char)input == ']') ||
      005B91 BD 3E 02         [24] 7949 	cjne	r5,#0x3e,00429$
      005B94 80 08            [24] 7950 	sjmp	00131$
      005B96                       7951 00429$:
      005B96 BD 5D 02         [24] 7952 	cjne	r5,#0x5d,00430$
      005B99 80 03            [24] 7953 	sjmp	00131$
      005B9B                       7954 00430$:
                                   7955 ;	calc.c:512: ((char)input == '<')
      005B9B BD 3C 29         [24] 7956 	cjne	r5,#0x3c,00132$
      005B9E                       7957 00131$:
                                   7958 ;	calc.c:514: if (state_exec(&s, EVENT_OP) <= 0) break;
      005B9E 74 02            [12] 7959 	mov	a,#0x02
      005BA0 C0 E0            [24] 7960 	push	acc
      005BA2 E4               [12] 7961 	clr	a
      005BA3 C0 E0            [24] 7962 	push	acc
      005BA5 90 A0 00         [24] 7963 	mov	dptr,#_s
      005BA8 75 F0 00         [24] 7964 	mov	b,#0x00
      005BAB 12 21 46         [24] 7965 	lcall	_state_exec
      005BAE AE 82            [24] 7966 	mov	r6,dpl
      005BB0 AF 83            [24] 7967 	mov	r7,dph
      005BB2 15 81            [12] 7968 	dec	sp
      005BB4 15 81            [12] 7969 	dec	sp
      005BB6 C3               [12] 7970 	clr	c
      005BB7 E4               [12] 7971 	clr	a
      005BB8 9E               [12] 7972 	subb	a,r6
      005BB9 74 80            [12] 7973 	mov	a,#(0x00 ^ 0x80)
      005BBB 8F F0            [24] 7974 	mov	b,r7
      005BBD 63 F0 80         [24] 7975 	xrl	b,#0x80
      005BC0 95 F0            [12] 7976 	subb	a,b
      005BC2 50 2A            [24] 7977 	jnc	00193$
      005BC4 02 58 D3         [24] 7978 	ljmp	00192$
      005BC7                       7979 00132$:
                                   7980 ;	calc.c:516: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      005BC7 E4               [12] 7981 	clr	a
      005BC8 C0 E0            [24] 7982 	push	acc
      005BCA C0 E0            [24] 7983 	push	acc
      005BCC 90 A0 00         [24] 7984 	mov	dptr,#_s
      005BCF 75 F0 00         [24] 7985 	mov	b,#0x00
      005BD2 12 21 46         [24] 7986 	lcall	_state_exec
      005BD5 AE 82            [24] 7987 	mov	r6,dpl
      005BD7 AF 83            [24] 7988 	mov	r7,dph
      005BD9 15 81            [12] 7989 	dec	sp
      005BDB 15 81            [12] 7990 	dec	sp
      005BDD C3               [12] 7991 	clr	c
      005BDE E4               [12] 7992 	clr	a
      005BDF 9E               [12] 7993 	subb	a,r6
      005BE0 74 80            [12] 7994 	mov	a,#(0x00 ^ 0x80)
      005BE2 8F F0            [24] 7995 	mov	b,r7
      005BE4 63 F0 80         [24] 7996 	xrl	b,#0x80
      005BE7 95 F0            [12] 7997 	subb	a,b
      005BE9 50 03            [24] 7998 	jnc	00434$
      005BEB 02 58 D3         [24] 7999 	ljmp	00192$
      005BEE                       8000 00434$:
      005BEE                       8001 00193$:
                                   8002 ;	calc.c:520: printstr("TERM\r\n");
      005BEE 90 82 63         [24] 8003 	mov	dptr,#___str_52
      005BF1 75 F0 80         [24] 8004 	mov	b,#0x80
      005BF4 12 5E F5         [24] 8005 	lcall	_printstr
                                   8006 ;	calc.c:522: PCON |= 2;
      005BF7 43 87 02         [24] 8007 	orl	_PCON,#0x02
                                   8008 ;	calc.c:524: return;
                                   8009 ;	calc.c:525: }
      005BFA 22               [24] 8010 	ret
                                   8011 	.area CSEG    (CODE)
                                   8012 	.area CONST   (CODE)
                                   8013 	.area CONST   (CODE)
      007EBB                       8014 ___str_0:
      007EBB 25 30 38 6C 78        8015 	.ascii "%08lx"
      007EC0 09                    8016 	.db 0x09
      007EC1 00                    8017 	.db 0x00
                                   8018 	.area CSEG    (CODE)
                                   8019 	.area CONST   (CODE)
      007EC2                       8020 ___str_1:
      007EC2 25 20 31 31 6C 64     8021 	.ascii "% 11ld"
      007EC8 09                    8022 	.db 0x09
      007EC9 00                    8023 	.db 0x00
                                   8024 	.area CSEG    (CODE)
                                   8025 	.area CONST   (CODE)
      007ECA                       8026 ___str_2:
      007ECA 25 30 31 31 6C 6F     8027 	.ascii "%011lo"
      007ED0 09                    8028 	.db 0x09
      007ED1 00                    8029 	.db 0x00
                                   8030 	.area CSEG    (CODE)
                                   8031 	.area CONST   (CODE)
      007ED2                       8032 ___str_3:
      007ED2 0D                    8033 	.db 0x0d
      007ED3 0A                    8034 	.db 0x0a
      007ED4 00                    8035 	.db 0x00
                                   8036 	.area CSEG    (CODE)
                                   8037 	.area CONST   (CODE)
      007ED5                       8038 ___str_4:
      007ED5 73 74 61 63 6B 20 75  8039 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007EE4 0D                    8040 	.db 0x0d
      007EE5 0A                    8041 	.db 0x0a
      007EE6 00                    8042 	.db 0x00
                                   8043 	.area CSEG    (CODE)
                                   8044 	.area CONST   (CODE)
      007EE7                       8045 ___str_5:
      007EE7 50 53 50 41           8046 	.ascii "PSPA"
      007EEB 09                    8047 	.db 0x09
      007EEC 00                    8048 	.db 0x00
                                   8049 	.area CSEG    (CODE)
                                   8050 	.area CONST   (CODE)
      007EED                       8051 ___str_6:
      007EED 53 53 50 41           8052 	.ascii "SSPA"
      007EF1 09                    8053 	.db 0x09
      007EF2 00                    8054 	.db 0x00
                                   8055 	.area CSEG    (CODE)
                                   8056 	.area CONST   (CODE)
      007EF3                       8057 ___str_7:
      007EF3 50 53 56 41           8058 	.ascii "PSVA"
      007EF7 09                    8059 	.db 0x09
      007EF8 00                    8060 	.db 0x00
                                   8061 	.area CSEG    (CODE)
                                   8062 	.area CONST   (CODE)
      007EF9                       8063 ___str_8:
      007EF9 50 53 56 54 4F 50     8064 	.ascii "PSVTOP"
      007EFF 09                    8065 	.db 0x09
      007F00 00                    8066 	.db 0x00
                                   8067 	.area CSEG    (CODE)
                                   8068 	.area CONST   (CODE)
      007F01                       8069 ___str_9:
      007F01 50 53 50 54 4F 50     8070 	.ascii "PSPTOP"
      007F07 09                    8071 	.db 0x09
      007F08 00                    8072 	.db 0x00
                                   8073 	.area CSEG    (CODE)
                                   8074 	.area CONST   (CODE)
      007F09                       8075 ___str_10:
      007F09 0D                    8076 	.db 0x0d
      007F0A 0A                    8077 	.db 0x0a
      007F0B 73 74 61 63 6B 20 75  8078 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007F1A 0D                    8079 	.db 0x0d
      007F1B 0A                    8080 	.db 0x0a
      007F1C 00                    8081 	.db 0x00
                                   8082 	.area CSEG    (CODE)
                                   8083 	.area CONST   (CODE)
      007F1D                       8084 ___str_11:
      007F1D 0D                    8085 	.db 0x0d
      007F1E 0A                    8086 	.db 0x0a
      007F1F 73 65 63 6F 6E 64 61  8087 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      007F37 0D                    8088 	.db 0x0d
      007F38 0A                    8089 	.db 0x0a
      007F39 00                    8090 	.db 0x00
                                   8091 	.area CSEG    (CODE)
                                   8092 	.area CONST   (CODE)
      007F3A                       8093 ___str_12:
      007F3A 0D                    8094 	.db 0x0d
      007F3B 0A                    8095 	.db 0x0a
      007F3C 73 65 63 6F 6E 64 61  8096 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      007F55 0D                    8097 	.db 0x0d
      007F56 0A                    8098 	.db 0x0a
      007F57 00                    8099 	.db 0x00
                                   8100 	.area CSEG    (CODE)
                                   8101 	.area CONST   (CODE)
      007F58                       8102 ___str_13:
      007F58 0D                    8103 	.db 0x0d
      007F59 0A                    8104 	.db 0x0a
      007F5A 73 74 61 63 6B 20 6F  8105 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      007F68 0D                    8106 	.db 0x0d
      007F69 0A                    8107 	.db 0x0a
      007F6A 00                    8108 	.db 0x00
                                   8109 	.area CSEG    (CODE)
                                   8110 	.area CONST   (CODE)
      007F6B                       8111 ___str_14:
      007F6B 0D                    8112 	.db 0x0d
      007F6C 0A                    8113 	.db 0x0a
      007F6D 64 69 76 69 73 69 6F  8114 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      007F7D 0D                    8115 	.db 0x0d
      007F7E 0A                    8116 	.db 0x0a
      007F7F 00                    8117 	.db 0x00
                                   8118 	.area CSEG    (CODE)
                                   8119 	.area CONST   (CODE)
      007F80                       8120 ___str_15:
      007F80 0D                    8121 	.db 0x0d
      007F81 0A                    8122 	.db 0x0a
      007F82 50 53 20 3D 20 25 70  8123 	.ascii "PS = %p, SS = %p, base = %d"
             2C 20 53 53 20 3D 20
             25 70 2C 20 62 61 73
             65 20 3D 20 25 64
      007F9D 0D                    8124 	.db 0x0d
      007F9E 0A                    8125 	.db 0x0a
      007F9F 00                    8126 	.db 0x00
                                   8127 	.area CSEG    (CODE)
                                   8128 	.area CONST   (CODE)
      007FA0                       8129 ___str_16:
      007FA0 41 43 43              8130 	.ascii "ACC"
      007FA3 09                    8131 	.db 0x09
      007FA4 00                    8132 	.db 0x00
                                   8133 	.area CSEG    (CODE)
                                   8134 	.area CONST   (CODE)
      007FA5                       8135 ___str_17:
      007FA5 0D                    8136 	.db 0x0d
      007FA6 0A                    8137 	.db 0x0a
      007FA7 50 53 54 4F 50 31     8138 	.ascii "PSTOP1"
      007FAD 09                    8139 	.db 0x09
      007FAE 00                    8140 	.db 0x00
                                   8141 	.area CSEG    (CODE)
                                   8142 	.area CONST   (CODE)
      007FAF                       8143 ___str_18:
      007FAF 0D                    8144 	.db 0x0d
      007FB0 0A                    8145 	.db 0x0a
      007FB1 50 53 54 4F 50 30     8146 	.ascii "PSTOP0"
      007FB7 09                    8147 	.db 0x09
      007FB8 00                    8148 	.db 0x00
                                   8149 	.area CSEG    (CODE)
                                   8150 	.area CONST   (CODE)
      007FB9                       8151 ___str_19:
      007FB9 0D                    8152 	.db 0x0d
      007FBA 0A                    8153 	.db 0x0a
      007FBB 53 53 54 4F 50 31     8154 	.ascii "SSTOP1"
      007FC1 09                    8155 	.db 0x09
      007FC2 00                    8156 	.db 0x00
                                   8157 	.area CSEG    (CODE)
                                   8158 	.area CONST   (CODE)
      007FC3                       8159 ___str_20:
      007FC3 0D                    8160 	.db 0x0d
      007FC4 0A                    8161 	.db 0x0a
      007FC5 53 53 54 4F 50 30     8162 	.ascii "SSTOP0"
      007FCB 09                    8163 	.db 0x09
      007FCC 00                    8164 	.db 0x00
                                   8165 	.area CSEG    (CODE)
                                   8166 	.area CONST   (CODE)
      007FCD                       8167 ___str_21:
      007FCD 0D                    8168 	.db 0x0d
      007FCE 0A                    8169 	.db 0x0a
      007FCF 48 68 4F 6F           8170 	.ascii "HhOo"
      007FD3 09                    8171 	.db 0x09
      007FD4 62 61 73 65 20 31 36  8172 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      007FE2 0D                    8173 	.db 0x0d
      007FE3 0A                    8174 	.db 0x0a
      007FE4 00                    8175 	.db 0x00
                                   8176 	.area CSEG    (CODE)
                                   8177 	.area CONST   (CODE)
      007FE5                       8178 ___str_22:
      007FE5 70 2E                 8179 	.ascii "p."
      007FE7 09                    8180 	.db 0x09
      007FE8 70 6F 70 20 74 6F 70  8181 	.ascii "pop top"
      007FEF 0D                    8182 	.db 0x0d
      007FF0 0A                    8183 	.db 0x0a
      007FF1 00                    8184 	.db 0x00
                                   8185 	.area CSEG    (CODE)
                                   8186 	.area CONST   (CODE)
      007FF2                       8187 ___str_23:
      007FF2 50                    8188 	.ascii "P"
      007FF3 09                    8189 	.db 0x09
      007FF4 70 6F 70 20 73 74 61  8190 	.ascii "pop stack"
             63 6B
      007FFD 0D                    8191 	.db 0x0d
      007FFE 0A                    8192 	.db 0x0a
      007FFF 00                    8193 	.db 0x00
                                   8194 	.area CSEG    (CODE)
                                   8195 	.area CONST   (CODE)
      008000                       8196 ___str_24:
      008000 76                    8197 	.ascii "v"
      008001 09                    8198 	.db 0x09
      008002 70 65 65 6B 20 74 6F  8199 	.ascii "peek top"
             70
      00800A 0D                    8200 	.db 0x0d
      00800B 0A                    8201 	.db 0x0a
      00800C 00                    8202 	.db 0x00
                                   8203 	.area CSEG    (CODE)
                                   8204 	.area CONST   (CODE)
      00800D                       8205 ___str_25:
      00800D 56                    8206 	.ascii "V"
      00800E 09                    8207 	.db 0x09
      00800F 70 65 65 6B 20 73 74  8208 	.ascii "peek stack"
             61 63 6B
      008019 0D                    8209 	.db 0x0d
      00801A 0A                    8210 	.db 0x0a
      00801B 00                    8211 	.db 0x00
                                   8212 	.area CSEG    (CODE)
                                   8213 	.area CONST   (CODE)
      00801C                       8214 ___str_26:
      00801C 69                    8215 	.ascii "i"
      00801D 09                    8216 	.db 0x09
      00801E 72 65 73 65 74 20 61  8217 	.ascii "reset acc"
             63 63
      008027 0D                    8218 	.db 0x0d
      008028 0A                    8219 	.db 0x0a
      008029 00                    8220 	.db 0x00
                                   8221 	.area CSEG    (CODE)
                                   8222 	.area CONST   (CODE)
      00802A                       8223 ___str_27:
      00802A 49                    8224 	.ascii "I"
      00802B 09                    8225 	.db 0x09
      00802C 72 65 73 65 74 20 61  8226 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      008041 0D                    8227 	.db 0x0d
      008042 0A                    8228 	.db 0x0a
      008043 00                    8229 	.db 0x00
                                   8230 	.area CSEG    (CODE)
                                   8231 	.area CONST   (CODE)
      008044                       8232 ___str_28:
      008044 78                    8233 	.ascii "x"
      008045 09                    8234 	.db 0x09
      008046 65 78 63 68 61 6E 67  8235 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      008054 0D                    8236 	.db 0x0d
      008055 0A                    8237 	.db 0x0a
      008056 00                    8238 	.db 0x00
                                   8239 	.area CSEG    (CODE)
                                   8240 	.area CONST   (CODE)
      008057                       8241 ___str_29:
      008057 58                    8242 	.ascii "X"
      008058 09                    8243 	.db 0x09
      008059 65 78 63 68 61 6E 67  8244 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      00807E 0D                    8245 	.db 0x0d
      00807F 0A                    8246 	.db 0x0a
      008080 00                    8247 	.db 0x00
                                   8248 	.area CSEG    (CODE)
                                   8249 	.area CONST   (CODE)
      008081                       8250 ___str_30:
      008081 54                    8251 	.ascii "T"
      008082 09                    8252 	.db 0x09
      008083 65 78 63 68 61 6E 67  8253 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      0080A6 0D                    8254 	.db 0x0d
      0080A7 0A                    8255 	.db 0x0a
      0080A8 00                    8256 	.db 0x00
                                   8257 	.area CSEG    (CODE)
                                   8258 	.area CONST   (CODE)
      0080A9                       8259 ___str_31:
      0080A9 55                    8260 	.ascii "U"
      0080AA 09                    8261 	.db 0x09
      0080AB 63 6F 70 79 20 74 6F  8262 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      0080C8 0D                    8263 	.db 0x0d
      0080C9 0A                    8264 	.db 0x0a
      0080CA 00                    8265 	.db 0x00
                                   8266 	.area CSEG    (CODE)
                                   8267 	.area CONST   (CODE)
      0080CB                       8268 ___str_32:
      0080CB 75                    8269 	.ascii "u"
      0080CC 09                    8270 	.db 0x09
      0080CD 63 6F 70 79 20 74 6F  8271 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      0080EA 0D                    8272 	.db 0x0d
      0080EB 0A                    8273 	.db 0x0a
      0080EC 00                    8274 	.db 0x00
                                   8275 	.area CSEG    (CODE)
                                   8276 	.area CONST   (CODE)
      0080ED                       8277 ___str_33:
      0080ED 4D                    8278 	.ascii "M"
      0080EE 09                    8279 	.db 0x09
      0080EF 6D 6F 76 65 20 74 6F  8280 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      00810C 0D                    8281 	.db 0x0d
      00810D 0A                    8282 	.db 0x0a
      00810E 00                    8283 	.db 0x00
                                   8284 	.area CSEG    (CODE)
                                   8285 	.area CONST   (CODE)
      00810F                       8286 ___str_34:
      00810F 6D                    8287 	.ascii "m"
      008110 09                    8288 	.db 0x09
      008111 6D 6F 76 65 20 74 6F  8289 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      00812E 0D                    8290 	.db 0x0d
      00812F 0A                    8291 	.db 0x0a
      008130 00                    8292 	.db 0x00
                                   8293 	.area CSEG    (CODE)
                                   8294 	.area CONST   (CODE)
      008131                       8295 ___str_35:
      008131 2B                    8296 	.ascii "+"
      008132 09                    8297 	.db 0x09
      008133 61 64 64 20 74 6F 70  8298 	.ascii "add top 2"
             20 32
      00813C 0D                    8299 	.db 0x0d
      00813D 0A                    8300 	.db 0x0a
      00813E 00                    8301 	.db 0x00
                                   8302 	.area CSEG    (CODE)
                                   8303 	.area CONST   (CODE)
      00813F                       8304 ___str_36:
      00813F 2D                    8305 	.ascii "-"
      008140 09                    8306 	.db 0x09
      008141 73 75 62 74 72 61 63  8307 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      00814F 0D                    8308 	.db 0x0d
      008150 0A                    8309 	.db 0x0a
      008151 00                    8310 	.db 0x00
                                   8311 	.area CSEG    (CODE)
                                   8312 	.area CONST   (CODE)
      008152                       8313 ___str_37:
      008152 2A                    8314 	.ascii "*"
      008153 09                    8315 	.db 0x09
      008154 6D 75 6C 74 69 70 6C  8316 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      008162 0D                    8317 	.db 0x0d
      008163 0A                    8318 	.db 0x0a
      008164 00                    8319 	.db 0x00
                                   8320 	.area CSEG    (CODE)
                                   8321 	.area CONST   (CODE)
      008165                       8322 ___str_38:
      008165 2F                    8323 	.ascii "/"
      008166 09                    8324 	.db 0x09
      008167 64 69 76 69 64 65 20  8325 	.ascii "divide top 2"
             74 6F 70 20 32
      008173 0D                    8326 	.db 0x0d
      008174 0A                    8327 	.db 0x0a
      008175 00                    8328 	.db 0x00
                                   8329 	.area CSEG    (CODE)
                                   8330 	.area CONST   (CODE)
      008176                       8331 ___str_39:
      008176 5C                    8332 	.db 0x5c
      008177 09                    8333 	.db 0x09
      008178 64 69 76 69 64 65 20  8334 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      00818D 0D                    8335 	.db 0x0d
      00818E 0A                    8336 	.db 0x0a
      00818F 00                    8337 	.db 0x00
                                   8338 	.area CSEG    (CODE)
                                   8339 	.area CONST   (CODE)
      008190                       8340 ___str_40:
      008190 25                    8341 	.ascii "%"
      008191 09                    8342 	.db 0x09
      008192 6D 6F 64 75 6C 75 73  8343 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      00819F 0D                    8344 	.db 0x0d
      0081A0 0A                    8345 	.db 0x0a
      0081A1 00                    8346 	.db 0x00
                                   8347 	.area CSEG    (CODE)
                                   8348 	.area CONST   (CODE)
      0081A2                       8349 ___str_41:
      0081A2 23                    8350 	.ascii "#"
      0081A3 09                    8351 	.db 0x09
      0081A4 6D 6F 64 75 6C 75 73  8352 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      0081BA 0D                    8353 	.db 0x0d
      0081BB 0A                    8354 	.db 0x0a
      0081BC 00                    8355 	.db 0x00
                                   8356 	.area CSEG    (CODE)
                                   8357 	.area CONST   (CODE)
      0081BD                       8358 ___str_42:
      0081BD 26                    8359 	.ascii "&"
      0081BE 09                    8360 	.db 0x09
      0081BF 61 6E 64 20 74 6F 70  8361 	.ascii "and top 2"
             20 32
      0081C8 0D                    8362 	.db 0x0d
      0081C9 0A                    8363 	.db 0x0a
      0081CA 00                    8364 	.db 0x00
                                   8365 	.area CSEG    (CODE)
                                   8366 	.area CONST   (CODE)
      0081CB                       8367 ___str_43:
      0081CB 7C                    8368 	.ascii "|"
      0081CC 09                    8369 	.db 0x09
      0081CD 6F 72 20 74 6F 70 20  8370 	.ascii "or top 2"
             32
      0081D5 0D                    8371 	.db 0x0d
      0081D6 0A                    8372 	.db 0x0a
      0081D7 00                    8373 	.db 0x00
                                   8374 	.area CSEG    (CODE)
                                   8375 	.area CONST   (CODE)
      0081D8                       8376 ___str_44:
      0081D8 5E                    8377 	.ascii "^"
      0081D9 09                    8378 	.db 0x09
      0081DA 78 6F 72 20 74 6F 70  8379 	.ascii "xor top 2"
             20 32
      0081E3 0D                    8380 	.db 0x0d
      0081E4 0A                    8381 	.db 0x0a
      0081E5 00                    8382 	.db 0x00
                                   8383 	.area CSEG    (CODE)
                                   8384 	.area CONST   (CODE)
      0081E6                       8385 ___str_45:
      0081E6 3E                    8386 	.ascii ">"
      0081E7 09                    8387 	.db 0x09
      0081E8 73 68 69 66 74 20 72  8388 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      0081F9 0D                    8389 	.db 0x0d
      0081FA 0A                    8390 	.db 0x0a
      0081FB 00                    8391 	.db 0x00
                                   8392 	.area CSEG    (CODE)
                                   8393 	.area CONST   (CODE)
      0081FC                       8394 ___str_46:
      0081FC 5D                    8395 	.ascii "]"
      0081FD 09                    8396 	.db 0x09
      0081FE 61 72 69 74 68 6D 65  8397 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      00821A 0D                    8398 	.db 0x0d
      00821B 0A                    8399 	.db 0x0a
      00821C 00                    8400 	.db 0x00
                                   8401 	.area CSEG    (CODE)
                                   8402 	.area CONST   (CODE)
      00821D                       8403 ___str_47:
      00821D 3C                    8404 	.ascii "<"
      00821E 09                    8405 	.db 0x09
      00821F 73 68 69 66 74 20 6C  8406 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      00822F 0D                    8407 	.db 0x0d
      008230 0A                    8408 	.db 0x0a
      008231 00                    8409 	.db 0x00
                                   8410 	.area CSEG    (CODE)
                                   8411 	.area CONST   (CODE)
      008232                       8412 ___str_48:
      008232 7E                    8413 	.ascii "~"
      008233 09                    8414 	.db 0x09
      008234 62 69 74 77 69 73 65  8415 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      008243 0D                    8416 	.db 0x0d
      008244 0A                    8417 	.db 0x0a
      008245 00                    8418 	.db 0x00
                                   8419 	.area CSEG    (CODE)
                                   8420 	.area CONST   (CODE)
      008246                       8421 ___str_49:
      008246 73                    8422 	.ascii "s"
      008247 09                    8423 	.db 0x09
      008248 73 74 61 74 75 73     8424 	.ascii "status"
      00824E 0D                    8425 	.db 0x0d
      00824F 0A                    8426 	.db 0x0a
      008250 00                    8427 	.db 0x00
                                   8428 	.area CSEG    (CODE)
                                   8429 	.area CONST   (CODE)
      008251                       8430 ___str_50:
      008251 3F                    8431 	.ascii "?"
      008252 09                    8432 	.db 0x09
      008253 68 65 6C 70           8433 	.ascii "help"
      008257 0D                    8434 	.db 0x0d
      008258 0A                    8435 	.db 0x0a
      008259 00                    8436 	.db 0x00
                                   8437 	.area CSEG    (CODE)
                                   8438 	.area CONST   (CODE)
      00825A                       8439 ___str_51:
      00825A 71                    8440 	.ascii "q"
      00825B 09                    8441 	.db 0x09
      00825C 71 75 69 74           8442 	.ascii "quit"
      008260 0D                    8443 	.db 0x0d
      008261 0A                    8444 	.db 0x0a
      008262 00                    8445 	.db 0x00
                                   8446 	.area CSEG    (CODE)
                                   8447 	.area CONST   (CODE)
      008263                       8448 ___str_52:
      008263 54 45 52 4D           8449 	.ascii "TERM"
      008267 0D                    8450 	.db 0x0d
      008268 0A                    8451 	.db 0x0a
      008269 00                    8452 	.db 0x00
                                   8453 	.area CSEG    (CODE)
                                   8454 	.area XINIT   (CODE)
      00828B                       8455 __xinit__deltas:
      00828B 00 00                 8456 	.byte #0x00, #0x00	;  0
      00828D 00 00                 8457 	.byte #0x00, #0x00	;  0
      00828F 00 00                 8458 	.byte #0x00, #0x00	;  0
      008291 00 00                 8459 	.byte #0x00,#0x00
      008293 00 00                 8460 	.byte #0x00,#0x00
      008295 00 00                 8461 	.byte #0x00, #0x00	;  0
      008297 01 00                 8462 	.byte #0x01, #0x00	;  1
      008299 02 00                 8463 	.byte #0x02, #0x00	;  2
      00829B 00 00                 8464 	.byte #0x00,#0x00
      00829D 70 2B                 8465 	.byte _accumulate, (_accumulate >> 8)
      00829F 00 00                 8466 	.byte #0x00, #0x00	;  0
      0082A1 02 00                 8467 	.byte #0x02, #0x00	;  2
      0082A3 01 00                 8468 	.byte #0x01, #0x00	;  1
      0082A5 00 00                 8469 	.byte #0x00,#0x00
      0082A7 EC 31                 8470 	.byte _operator, (_operator >> 8)
      0082A9 01 00                 8471 	.byte #0x01, #0x00	;  1
      0082AB 00 00                 8472 	.byte #0x00, #0x00	;  0
      0082AD 00 00                 8473 	.byte #0x00, #0x00	;  0
      0082AF 00 00                 8474 	.byte #0x00,#0x00
      0082B1 00 00                 8475 	.byte #0x00,#0x00
      0082B3 01 00                 8476 	.byte #0x01, #0x00	;  1
      0082B5 02 00                 8477 	.byte #0x02, #0x00	;  2
      0082B7 01 00                 8478 	.byte #0x01, #0x00	;  1
      0082B9 00 00                 8479 	.byte #0x00,#0x00
      0082BB EC 31                 8480 	.byte _operator, (_operator >> 8)
      0082BD 01 00                 8481 	.byte #0x01, #0x00	;  1
      0082BF 01 00                 8482 	.byte #0x01, #0x00	;  1
      0082C1 02 00                 8483 	.byte #0x02, #0x00	;  2
      0082C3 00 00                 8484 	.byte #0x00,#0x00
      0082C5 70 2B                 8485 	.byte _accumulate, (_accumulate >> 8)
      0082C7 02 00                 8486 	.byte #0x02, #0x00	;  2
      0082C9 00 00                 8487 	.byte #0x00, #0x00	;  0
      0082CB 00 00                 8488 	.byte #0x00, #0x00	;  0
      0082CD 00 00                 8489 	.byte #0x00,#0x00
      0082CF 87 4F                 8490 	.byte _push_acc, (_push_acc >> 8)
      0082D1 02 00                 8491 	.byte #0x02, #0x00	;  2
      0082D3 07 00                 8492 	.byte #0x07, #0x00	;  7
      0082D5 00 00                 8493 	.byte #0x00, #0x00	;  0
      0082D7 00 00                 8494 	.byte #0x00,#0x00
      0082D9 91 50                 8495 	.byte _reset_acc, (_reset_acc >> 8)
      0082DB 02 00                 8496 	.byte #0x02, #0x00	;  2
      0082DD 01 00                 8497 	.byte #0x01, #0x00	;  1
      0082DF 02 00                 8498 	.byte #0x02, #0x00	;  2
      0082E1 00 00                 8499 	.byte #0x00,#0x00
      0082E3 70 2B                 8500 	.byte _accumulate, (_accumulate >> 8)
      0082E5 02 00                 8501 	.byte #0x02, #0x00	;  2
      0082E7 02 00                 8502 	.byte #0x02, #0x00	;  2
      0082E9 01 00                 8503 	.byte #0x01, #0x00	;  1
      0082EB 00 00                 8504 	.byte #0x00,#0x00
      0082ED 87 4F                 8505 	.byte _push_acc, (_push_acc >> 8)
      0082EF FF 7F                 8506 	.byte #0xff, #0x7f	;  32767
      0082F1 06 00                 8507 	.byte #0x06, #0x00	;  6
      0082F3 FF 7F                 8508 	.byte #0xff, #0x7f	;  32767
      0082F5 00 00                 8509 	.byte #0x00,#0x00
      0082F7 91 50                 8510 	.byte _reset_acc, (_reset_acc >> 8)
      0082F9 FF 7F                 8511 	.byte #0xff, #0x7f	;  32767
      0082FB 07 00                 8512 	.byte #0x07, #0x00	;  7
      0082FD FF 7F                 8513 	.byte #0xff, #0x7f	;  32767
      0082FF 00 00                 8514 	.byte #0x00,#0x00
      008301 00 00                 8515 	.byte #0x00,#0x00
      008303 FF 7F                 8516 	.byte #0xff, #0x7f	;  32767
      008305 05 00                 8517 	.byte #0x05, #0x00	;  5
      008307 FF 7F                 8518 	.byte #0xff, #0x7f	;  32767
      008309 00 00                 8519 	.byte #0x00,#0x00
      00830B FB 50                 8520 	.byte _reset_base, (_reset_base >> 8)
      00830D FF 7F                 8521 	.byte #0xff, #0x7f	;  32767
      00830F 03 00                 8522 	.byte #0x03, #0x00	;  3
      008311 FF 7F                 8523 	.byte #0xff, #0x7f	;  32767
      008313 00 00                 8524 	.byte #0x00,#0x00
      008315 79 51                 8525 	.byte _status, (_status >> 8)
      008317 FF 7F                 8526 	.byte #0xff, #0x7f	;  32767
      008319 04 00                 8527 	.byte #0x04, #0x00	;  4
      00831B FF 7F                 8528 	.byte #0xff, #0x7f	;  32767
      00831D 00 00                 8529 	.byte #0x00,#0x00
      00831F 07 57                 8530 	.byte _help, (_help >> 8)
      008321 FF 7F                 8531 	.byte #0xff, #0x7f	;  32767
      008323 08 00                 8532 	.byte #0x08, #0x00	;  8
      008325 03 00                 8533 	.byte #0x03, #0x00	;  3
      008327 00 00                 8534 	.byte #0x00,#0x00
      008329 E1 2C                 8535 	.byte _dump_pop, (_dump_pop >> 8)
      00832B 00 80                 8536 	.byte #0x00, #0x80	; -32768
      00832D 00 80                 8537 	.byte #0x00, #0x80	; -32768
      00832F 00 80                 8538 	.byte #0x00, #0x80	; -32768
      008331 00 00                 8539 	.byte #0x00,#0x00
      008333 00 00                 8540 	.byte #0x00,#0x00
                                   8541 	.area CABS    (ABS,CODE)
