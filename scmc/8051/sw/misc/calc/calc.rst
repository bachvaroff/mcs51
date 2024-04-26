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
                                     20 	.globl _getchar
                                     21 	.globl _putchar
                                     22 	.globl _isxdigit
                                     23 	.globl _printf
                                     24 	.globl _strtol
                                     25 	.globl _CY
                                     26 	.globl _AC
                                     27 	.globl _F0
                                     28 	.globl _RS1
                                     29 	.globl _RS0
                                     30 	.globl _OV
                                     31 	.globl _FL
                                     32 	.globl _P
                                     33 	.globl _TF2
                                     34 	.globl _EXF2
                                     35 	.globl _RCLK
                                     36 	.globl _TCLK
                                     37 	.globl _EXEN2
                                     38 	.globl _TR2
                                     39 	.globl _C_T2
                                     40 	.globl _CP_RL2
                                     41 	.globl _T2CON_7
                                     42 	.globl _T2CON_6
                                     43 	.globl _T2CON_5
                                     44 	.globl _T2CON_4
                                     45 	.globl _T2CON_3
                                     46 	.globl _T2CON_2
                                     47 	.globl _T2CON_1
                                     48 	.globl _T2CON_0
                                     49 	.globl _PT2
                                     50 	.globl _PS
                                     51 	.globl _PT1
                                     52 	.globl _PX1
                                     53 	.globl _PT0
                                     54 	.globl _PX0
                                     55 	.globl _RD
                                     56 	.globl _WR
                                     57 	.globl _T1
                                     58 	.globl _T0
                                     59 	.globl _INT1
                                     60 	.globl _INT0
                                     61 	.globl _TXD
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _EA
                                     72 	.globl _ET2
                                     73 	.globl _ES
                                     74 	.globl _ET1
                                     75 	.globl _EX1
                                     76 	.globl _ET0
                                     77 	.globl _EX0
                                     78 	.globl _P2_7
                                     79 	.globl _P2_6
                                     80 	.globl _P2_5
                                     81 	.globl _P2_4
                                     82 	.globl _P2_3
                                     83 	.globl _P2_2
                                     84 	.globl _P2_1
                                     85 	.globl _P2_0
                                     86 	.globl _SM0
                                     87 	.globl _SM1
                                     88 	.globl _SM2
                                     89 	.globl _REN
                                     90 	.globl _TB8
                                     91 	.globl _RB8
                                     92 	.globl _TI
                                     93 	.globl _RI
                                     94 	.globl _T2EX
                                     95 	.globl _T2
                                     96 	.globl _P1_7
                                     97 	.globl _P1_6
                                     98 	.globl _P1_5
                                     99 	.globl _P1_4
                                    100 	.globl _P1_3
                                    101 	.globl _P1_2
                                    102 	.globl _P1_1
                                    103 	.globl _P1_0
                                    104 	.globl _TF1
                                    105 	.globl _TR1
                                    106 	.globl _TF0
                                    107 	.globl _TR0
                                    108 	.globl _IE1
                                    109 	.globl _IT1
                                    110 	.globl _IE0
                                    111 	.globl _IT0
                                    112 	.globl _P0_7
                                    113 	.globl _P0_6
                                    114 	.globl _P0_5
                                    115 	.globl _P0_4
                                    116 	.globl _P0_3
                                    117 	.globl _P0_2
                                    118 	.globl _P0_1
                                    119 	.globl _P0_0
                                    120 	.globl _B
                                    121 	.globl _A
                                    122 	.globl _ACC
                                    123 	.globl _PSW
                                    124 	.globl _TH2
                                    125 	.globl _TL2
                                    126 	.globl _RCAP2H
                                    127 	.globl _RCAP2L
                                    128 	.globl _T2MOD
                                    129 	.globl _T2CON
                                    130 	.globl _IP
                                    131 	.globl _P3
                                    132 	.globl _IE
                                    133 	.globl _P2
                                    134 	.globl _SBUF
                                    135 	.globl _SCON
                                    136 	.globl _P1
                                    137 	.globl _TH1
                                    138 	.globl _TH0
                                    139 	.globl _TL1
                                    140 	.globl _TL0
                                    141 	.globl _TMOD
                                    142 	.globl _TCON
                                    143 	.globl _PCON
                                    144 	.globl _DPH
                                    145 	.globl _DPL
                                    146 	.globl _SP
                                    147 	.globl _P0
                                    148 	.globl _giant
                                    149 ;--------------------------------------------------------
                                    150 ; special function registers
                                    151 ;--------------------------------------------------------
                                    152 	.area RSEG    (ABS,DATA)
      000000                        153 	.org 0x0000
                           000080   154 _P0	=	0x0080
                           000081   155 _SP	=	0x0081
                           000082   156 _DPL	=	0x0082
                           000083   157 _DPH	=	0x0083
                           000087   158 _PCON	=	0x0087
                           000088   159 _TCON	=	0x0088
                           000089   160 _TMOD	=	0x0089
                           00008A   161 _TL0	=	0x008a
                           00008B   162 _TL1	=	0x008b
                           00008C   163 _TH0	=	0x008c
                           00008D   164 _TH1	=	0x008d
                           000090   165 _P1	=	0x0090
                           000098   166 _SCON	=	0x0098
                           000099   167 _SBUF	=	0x0099
                           0000A0   168 _P2	=	0x00a0
                           0000A8   169 _IE	=	0x00a8
                           0000B0   170 _P3	=	0x00b0
                           0000B8   171 _IP	=	0x00b8
                           0000C8   172 _T2CON	=	0x00c8
                           0000C9   173 _T2MOD	=	0x00c9
                           0000CA   174 _RCAP2L	=	0x00ca
                           0000CB   175 _RCAP2H	=	0x00cb
                           0000CC   176 _TL2	=	0x00cc
                           0000CD   177 _TH2	=	0x00cd
                           0000D0   178 _PSW	=	0x00d0
                           0000E0   179 _ACC	=	0x00e0
                           0000E0   180 _A	=	0x00e0
                           0000F0   181 _B	=	0x00f0
                                    182 ;--------------------------------------------------------
                                    183 ; special function bits
                                    184 ;--------------------------------------------------------
                                    185 	.area RSEG    (ABS,DATA)
      000000                        186 	.org 0x0000
                           000080   187 _P0_0	=	0x0080
                           000081   188 _P0_1	=	0x0081
                           000082   189 _P0_2	=	0x0082
                           000083   190 _P0_3	=	0x0083
                           000084   191 _P0_4	=	0x0084
                           000085   192 _P0_5	=	0x0085
                           000086   193 _P0_6	=	0x0086
                           000087   194 _P0_7	=	0x0087
                           000088   195 _IT0	=	0x0088
                           000089   196 _IE0	=	0x0089
                           00008A   197 _IT1	=	0x008a
                           00008B   198 _IE1	=	0x008b
                           00008C   199 _TR0	=	0x008c
                           00008D   200 _TF0	=	0x008d
                           00008E   201 _TR1	=	0x008e
                           00008F   202 _TF1	=	0x008f
                           000090   203 _P1_0	=	0x0090
                           000091   204 _P1_1	=	0x0091
                           000092   205 _P1_2	=	0x0092
                           000093   206 _P1_3	=	0x0093
                           000094   207 _P1_4	=	0x0094
                           000095   208 _P1_5	=	0x0095
                           000096   209 _P1_6	=	0x0096
                           000097   210 _P1_7	=	0x0097
                           000090   211 _T2	=	0x0090
                           000091   212 _T2EX	=	0x0091
                           000098   213 _RI	=	0x0098
                           000099   214 _TI	=	0x0099
                           00009A   215 _RB8	=	0x009a
                           00009B   216 _TB8	=	0x009b
                           00009C   217 _REN	=	0x009c
                           00009D   218 _SM2	=	0x009d
                           00009E   219 _SM1	=	0x009e
                           00009F   220 _SM0	=	0x009f
                           0000A0   221 _P2_0	=	0x00a0
                           0000A1   222 _P2_1	=	0x00a1
                           0000A2   223 _P2_2	=	0x00a2
                           0000A3   224 _P2_3	=	0x00a3
                           0000A4   225 _P2_4	=	0x00a4
                           0000A5   226 _P2_5	=	0x00a5
                           0000A6   227 _P2_6	=	0x00a6
                           0000A7   228 _P2_7	=	0x00a7
                           0000A8   229 _EX0	=	0x00a8
                           0000A9   230 _ET0	=	0x00a9
                           0000AA   231 _EX1	=	0x00aa
                           0000AB   232 _ET1	=	0x00ab
                           0000AC   233 _ES	=	0x00ac
                           0000AD   234 _ET2	=	0x00ad
                           0000AF   235 _EA	=	0x00af
                           0000B0   236 _P3_0	=	0x00b0
                           0000B1   237 _P3_1	=	0x00b1
                           0000B2   238 _P3_2	=	0x00b2
                           0000B3   239 _P3_3	=	0x00b3
                           0000B4   240 _P3_4	=	0x00b4
                           0000B5   241 _P3_5	=	0x00b5
                           0000B6   242 _P3_6	=	0x00b6
                           0000B7   243 _P3_7	=	0x00b7
                           0000B0   244 _RXD	=	0x00b0
                           0000B1   245 _TXD	=	0x00b1
                           0000B2   246 _INT0	=	0x00b2
                           0000B3   247 _INT1	=	0x00b3
                           0000B4   248 _T0	=	0x00b4
                           0000B5   249 _T1	=	0x00b5
                           0000B6   250 _WR	=	0x00b6
                           0000B7   251 _RD	=	0x00b7
                           0000B8   252 _PX0	=	0x00b8
                           0000B9   253 _PT0	=	0x00b9
                           0000BA   254 _PX1	=	0x00ba
                           0000BB   255 _PT1	=	0x00bb
                           0000BC   256 _PS	=	0x00bc
                           0000BD   257 _PT2	=	0x00bd
                           0000C8   258 _T2CON_0	=	0x00c8
                           0000C9   259 _T2CON_1	=	0x00c9
                           0000CA   260 _T2CON_2	=	0x00ca
                           0000CB   261 _T2CON_3	=	0x00cb
                           0000CC   262 _T2CON_4	=	0x00cc
                           0000CD   263 _T2CON_5	=	0x00cd
                           0000CE   264 _T2CON_6	=	0x00ce
                           0000CF   265 _T2CON_7	=	0x00cf
                           0000C8   266 _CP_RL2	=	0x00c8
                           0000C9   267 _C_T2	=	0x00c9
                           0000CA   268 _TR2	=	0x00ca
                           0000CB   269 _EXEN2	=	0x00cb
                           0000CC   270 _TCLK	=	0x00cc
                           0000CD   271 _RCLK	=	0x00cd
                           0000CE   272 _EXF2	=	0x00ce
                           0000CF   273 _TF2	=	0x00cf
                           0000D0   274 _P	=	0x00d0
                           0000D1   275 _FL	=	0x00d1
                           0000D2   276 _OV	=	0x00d2
                           0000D3   277 _RS0	=	0x00d3
                           0000D4   278 _RS1	=	0x00d4
                           0000D5   279 _F0	=	0x00d5
                           0000D6   280 _AC	=	0x00d6
                           0000D7   281 _CY	=	0x00d7
                                    282 ;--------------------------------------------------------
                                    283 ; overlayable register banks
                                    284 ;--------------------------------------------------------
                                    285 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        286 	.ds 8
                                    287 ;--------------------------------------------------------
                                    288 ; internal ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area DSEG    (DATA)
                                    291 ;--------------------------------------------------------
                                    292 ; overlayable items in internal ram 
                                    293 ;--------------------------------------------------------
                                    294 ;--------------------------------------------------------
                                    295 ; Stack segment in internal ram 
                                    296 ;--------------------------------------------------------
                                    297 	.area	SSEG
      000021                        298 __start__stack:
      000021                        299 	.ds	1
                                    300 
                                    301 ;--------------------------------------------------------
                                    302 ; indirectly addressable internal ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area ISEG    (DATA)
      000009                        305 _giant::
      000009                        306 	.ds 1
                                    307 ;--------------------------------------------------------
                                    308 ; absolute internal ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area IABS    (ABS,DATA)
                                    311 	.area IABS    (ABS,DATA)
                                    312 ;--------------------------------------------------------
                                    313 ; bit data
                                    314 ;--------------------------------------------------------
                                    315 	.area BSEG    (BIT)
                                    316 ;--------------------------------------------------------
                                    317 ; paged external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area PSEG    (PAG,XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; external ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XSEG    (XDATA)
      00A000                        324 _s:
      00A000                        325 	.ds 12
      00A00C                        326 _c:
      00A00C                        327 	.ds 16407
                                    328 ;--------------------------------------------------------
                                    329 ; absolute external ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area XABS    (ABS,XDATA)
                                    332 ;--------------------------------------------------------
                                    333 ; external initialized ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area XISEG   (XDATA)
      00E025                        336 _deltas:
      00E025                        337 	.ds 170
                                    338 	.area HOME    (CODE)
                                    339 	.area GSINIT0 (CODE)
                                    340 	.area GSINIT1 (CODE)
                                    341 	.area GSINIT2 (CODE)
                                    342 	.area GSINIT3 (CODE)
                                    343 	.area GSINIT4 (CODE)
                                    344 	.area GSINIT5 (CODE)
                                    345 	.area GSINIT  (CODE)
                                    346 	.area GSFINAL (CODE)
                                    347 	.area CSEG    (CODE)
                                    348 ;--------------------------------------------------------
                                    349 ; interrupt vector 
                                    350 ;--------------------------------------------------------
                                    351 	.area HOME    (CODE)
      002000                        352 __interrupt_vect:
      002000 02 20 34         [24]  353 	ljmp	__sdcc_gsinit_startup
                                    354 ;--------------------------------------------------------
                                    355 ; global & static initialisations
                                    356 ;--------------------------------------------------------
                                    357 	.area HOME    (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 	.area GSFINAL (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.globl __sdcc_gsinit_startup
                                    362 	.globl __sdcc_program_startup
                                    363 	.globl __start__stack
                                    364 	.globl __mcs51_genXINIT
                                    365 	.globl __mcs51_genXRAMCLEAR
                                    366 	.globl __mcs51_genRAMCLEAR
                                    367 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  368 	ljmp	__sdcc_program_startup
                                    369 ;--------------------------------------------------------
                                    370 ; Home
                                    371 ;--------------------------------------------------------
                                    372 	.area HOME    (CODE)
                                    373 	.area HOME    (CODE)
      002003                        374 __sdcc_program_startup:
      002003 02 6A 6D         [24]  375 	ljmp	_main
                                    376 ;	return from main will return to caller
                                    377 ;--------------------------------------------------------
                                    378 ; code
                                    379 ;--------------------------------------------------------
                                    380 	.area CSEG    (CODE)
                                    381 ;------------------------------------------------------------
                                    382 ;Allocation info for local variables in function 'accumulate'
                                    383 ;------------------------------------------------------------
                                    384 ;delta                     Allocated to stack - _bp -5
                                    385 ;_ctx                      Allocated to registers r5 r6 r7 
                                    386 ;ctx                       Allocated to stack - _bp +8
                                    387 ;d                         Allocated to stack - _bp +11
                                    388 ;sloc0                     Allocated to stack - _bp +1
                                    389 ;sloc1                     Allocated to stack - _bp +4
                                    390 ;------------------------------------------------------------
                                    391 ;	calc.c:41: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
                                    392 ;	-----------------------------------------
                                    393 ;	 function accumulate
                                    394 ;	-----------------------------------------
      002B70                        395 _accumulate:
                           000007   396 	ar7 = 0x07
                           000006   397 	ar6 = 0x06
                           000005   398 	ar5 = 0x05
                           000004   399 	ar4 = 0x04
                           000003   400 	ar3 = 0x03
                           000002   401 	ar2 = 0x02
                           000001   402 	ar1 = 0x01
                           000000   403 	ar0 = 0x00
      002B70 C0 08            [24]  404 	push	_bp
      002B72 E5 81            [12]  405 	mov	a,sp
      002B74 F5 08            [12]  406 	mov	_bp,a
      002B76 24 0E            [12]  407 	add	a,#0x0e
      002B78 F5 81            [12]  408 	mov	sp,a
      002B7A AD 82            [24]  409 	mov	r5,dpl
      002B7C AE 83            [24]  410 	mov	r6,dph
      002B7E AF F0            [24]  411 	mov	r7,b
                                    412 ;	calc.c:42: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002B80 E5 08            [12]  413 	mov	a,_bp
      002B82 24 08            [12]  414 	add	a,#0x08
      002B84 F8               [12]  415 	mov	r0,a
      002B85 A6 05            [24]  416 	mov	@r0,ar5
      002B87 08               [12]  417 	inc	r0
      002B88 A6 06            [24]  418 	mov	@r0,ar6
      002B8A 08               [12]  419 	inc	r0
      002B8B A6 07            [24]  420 	mov	@r0,ar7
                                    421 ;	calc.c:47: if (!ctx->acc_valid) {
      002B8D E5 08            [12]  422 	mov	a,_bp
      002B8F 24 08            [12]  423 	add	a,#0x08
      002B91 F8               [12]  424 	mov	r0,a
      002B92 74 06            [12]  425 	mov	a,#0x06
      002B94 26               [12]  426 	add	a,@r0
      002B95 FA               [12]  427 	mov	r2,a
      002B96 E4               [12]  428 	clr	a
      002B97 08               [12]  429 	inc	r0
      002B98 36               [12]  430 	addc	a,@r0
      002B99 FB               [12]  431 	mov	r3,a
      002B9A 08               [12]  432 	inc	r0
      002B9B 86 04            [24]  433 	mov	ar4,@r0
      002B9D 8A 82            [24]  434 	mov	dpl,r2
      002B9F 8B 83            [24]  435 	mov	dph,r3
      002BA1 8C F0            [24]  436 	mov	b,r4
      002BA3 12 76 03         [24]  437 	lcall	__gptrget
      002BA6 70 31            [24]  438 	jnz	00102$
                                    439 ;	calc.c:48: ctx->acc_valid = 1;
      002BA8 8A 82            [24]  440 	mov	dpl,r2
      002BAA 8B 83            [24]  441 	mov	dph,r3
      002BAC 8C F0            [24]  442 	mov	b,r4
      002BAE 74 01            [12]  443 	mov	a,#0x01
      002BB0 12 71 57         [24]  444 	lcall	__gptrput
                                    445 ;	calc.c:49: ctx->acc = 0l;
      002BB3 E5 08            [12]  446 	mov	a,_bp
      002BB5 24 08            [12]  447 	add	a,#0x08
      002BB7 F8               [12]  448 	mov	r0,a
      002BB8 74 02            [12]  449 	mov	a,#0x02
      002BBA 26               [12]  450 	add	a,@r0
      002BBB FA               [12]  451 	mov	r2,a
      002BBC E4               [12]  452 	clr	a
      002BBD 08               [12]  453 	inc	r0
      002BBE 36               [12]  454 	addc	a,@r0
      002BBF FB               [12]  455 	mov	r3,a
      002BC0 08               [12]  456 	inc	r0
      002BC1 86 04            [24]  457 	mov	ar4,@r0
      002BC3 8A 82            [24]  458 	mov	dpl,r2
      002BC5 8B 83            [24]  459 	mov	dph,r3
      002BC7 8C F0            [24]  460 	mov	b,r4
      002BC9 E4               [12]  461 	clr	a
      002BCA 12 71 57         [24]  462 	lcall	__gptrput
      002BCD A3               [24]  463 	inc	dptr
      002BCE 12 71 57         [24]  464 	lcall	__gptrput
      002BD1 A3               [24]  465 	inc	dptr
      002BD2 12 71 57         [24]  466 	lcall	__gptrput
      002BD5 A3               [24]  467 	inc	dptr
      002BD6 12 71 57         [24]  468 	lcall	__gptrput
      002BD9                        469 00102$:
                                    470 ;	calc.c:52: d = strtol(ctx->digit, NULL, ctx->base);
      002BD9 E5 08            [12]  471 	mov	a,_bp
      002BDB 24 08            [12]  472 	add	a,#0x08
      002BDD F8               [12]  473 	mov	r0,a
      002BDE 86 82            [24]  474 	mov	dpl,@r0
      002BE0 08               [12]  475 	inc	r0
      002BE1 86 83            [24]  476 	mov	dph,@r0
      002BE3 08               [12]  477 	inc	r0
      002BE4 86 F0            [24]  478 	mov	b,@r0
      002BE6 12 76 03         [24]  479 	lcall	__gptrget
      002BE9 FB               [12]  480 	mov	r3,a
      002BEA A3               [24]  481 	inc	dptr
      002BEB 12 76 03         [24]  482 	lcall	__gptrget
      002BEE FC               [12]  483 	mov	r4,a
      002BEF E5 08            [12]  484 	mov	a,_bp
      002BF1 24 08            [12]  485 	add	a,#0x08
      002BF3 F8               [12]  486 	mov	r0,a
      002BF4 74 07            [12]  487 	mov	a,#0x07
      002BF6 26               [12]  488 	add	a,@r0
      002BF7 FA               [12]  489 	mov	r2,a
      002BF8 E4               [12]  490 	clr	a
      002BF9 08               [12]  491 	inc	r0
      002BFA 36               [12]  492 	addc	a,@r0
      002BFB FE               [12]  493 	mov	r6,a
      002BFC 08               [12]  494 	inc	r0
      002BFD 86 07            [24]  495 	mov	ar7,@r0
      002BFF C0 03            [24]  496 	push	ar3
      002C01 C0 04            [24]  497 	push	ar4
      002C03 E4               [12]  498 	clr	a
      002C04 C0 E0            [24]  499 	push	acc
      002C06 C0 E0            [24]  500 	push	acc
      002C08 C0 E0            [24]  501 	push	acc
      002C0A 8A 82            [24]  502 	mov	dpl,r2
      002C0C 8E 83            [24]  503 	mov	dph,r6
      002C0E 8F F0            [24]  504 	mov	b,r7
      002C10 12 6F 19         [24]  505 	lcall	_strtol
      002C13 C8               [12]  506 	xch	a,r0
      002C14 E5 08            [12]  507 	mov	a,_bp
      002C16 24 0B            [12]  508 	add	a,#0x0b
      002C18 C8               [12]  509 	xch	a,r0
      002C19 A6 82            [24]  510 	mov	@r0,dpl
      002C1B 08               [12]  511 	inc	r0
      002C1C A6 83            [24]  512 	mov	@r0,dph
      002C1E 08               [12]  513 	inc	r0
      002C1F A6 F0            [24]  514 	mov	@r0,b
      002C21 08               [12]  515 	inc	r0
      002C22 F6               [12]  516 	mov	@r0,a
      002C23 E5 81            [12]  517 	mov	a,sp
      002C25 24 FB            [12]  518 	add	a,#0xfb
      002C27 F5 81            [12]  519 	mov	sp,a
                                    520 ;	calc.c:53: ctx->acc = ctx->acc * (long)ctx->base + d;
      002C29 E5 08            [12]  521 	mov	a,_bp
      002C2B 24 08            [12]  522 	add	a,#0x08
      002C2D F8               [12]  523 	mov	r0,a
      002C2E A9 08            [24]  524 	mov	r1,_bp
      002C30 09               [12]  525 	inc	r1
      002C31 74 02            [12]  526 	mov	a,#0x02
      002C33 26               [12]  527 	add	a,@r0
      002C34 F7               [12]  528 	mov	@r1,a
      002C35 E4               [12]  529 	clr	a
      002C36 08               [12]  530 	inc	r0
      002C37 36               [12]  531 	addc	a,@r0
      002C38 09               [12]  532 	inc	r1
      002C39 F7               [12]  533 	mov	@r1,a
      002C3A 08               [12]  534 	inc	r0
      002C3B 09               [12]  535 	inc	r1
      002C3C E6               [12]  536 	mov	a,@r0
      002C3D F7               [12]  537 	mov	@r1,a
      002C3E A8 08            [24]  538 	mov	r0,_bp
      002C40 08               [12]  539 	inc	r0
      002C41 86 82            [24]  540 	mov	dpl,@r0
      002C43 08               [12]  541 	inc	r0
      002C44 86 83            [24]  542 	mov	dph,@r0
      002C46 08               [12]  543 	inc	r0
      002C47 86 F0            [24]  544 	mov	b,@r0
      002C49 E5 08            [12]  545 	mov	a,_bp
      002C4B 24 04            [12]  546 	add	a,#0x04
      002C4D F9               [12]  547 	mov	r1,a
      002C4E 12 76 03         [24]  548 	lcall	__gptrget
      002C51 F7               [12]  549 	mov	@r1,a
      002C52 A3               [24]  550 	inc	dptr
      002C53 12 76 03         [24]  551 	lcall	__gptrget
      002C56 09               [12]  552 	inc	r1
      002C57 F7               [12]  553 	mov	@r1,a
      002C58 A3               [24]  554 	inc	dptr
      002C59 12 76 03         [24]  555 	lcall	__gptrget
      002C5C 09               [12]  556 	inc	r1
      002C5D F7               [12]  557 	mov	@r1,a
      002C5E A3               [24]  558 	inc	dptr
      002C5F 12 76 03         [24]  559 	lcall	__gptrget
      002C62 09               [12]  560 	inc	r1
      002C63 F7               [12]  561 	mov	@r1,a
      002C64 E5 08            [12]  562 	mov	a,_bp
      002C66 24 08            [12]  563 	add	a,#0x08
      002C68 F8               [12]  564 	mov	r0,a
      002C69 86 82            [24]  565 	mov	dpl,@r0
      002C6B 08               [12]  566 	inc	r0
      002C6C 86 83            [24]  567 	mov	dph,@r0
      002C6E 08               [12]  568 	inc	r0
      002C6F 86 F0            [24]  569 	mov	b,@r0
      002C71 12 76 03         [24]  570 	lcall	__gptrget
      002C74 FA               [12]  571 	mov	r2,a
      002C75 A3               [24]  572 	inc	dptr
      002C76 12 76 03         [24]  573 	lcall	__gptrget
      002C79 FB               [12]  574 	mov	r3,a
      002C7A 33               [12]  575 	rlc	a
      002C7B 95 E0            [12]  576 	subb	a,acc
      002C7D FE               [12]  577 	mov	r6,a
      002C7E FF               [12]  578 	mov	r7,a
      002C7F C0 02            [24]  579 	push	ar2
      002C81 C0 03            [24]  580 	push	ar3
      002C83 C0 06            [24]  581 	push	ar6
      002C85 C0 07            [24]  582 	push	ar7
      002C87 E5 08            [12]  583 	mov	a,_bp
      002C89 24 04            [12]  584 	add	a,#0x04
      002C8B F8               [12]  585 	mov	r0,a
      002C8C 86 82            [24]  586 	mov	dpl,@r0
      002C8E 08               [12]  587 	inc	r0
      002C8F 86 83            [24]  588 	mov	dph,@r0
      002C91 08               [12]  589 	inc	r0
      002C92 86 F0            [24]  590 	mov	b,@r0
      002C94 08               [12]  591 	inc	r0
      002C95 E6               [12]  592 	mov	a,@r0
      002C96 12 79 FC         [24]  593 	lcall	__mullong
      002C99 AC 82            [24]  594 	mov	r4,dpl
      002C9B AD 83            [24]  595 	mov	r5,dph
      002C9D AE F0            [24]  596 	mov	r6,b
      002C9F FF               [12]  597 	mov	r7,a
      002CA0 E5 81            [12]  598 	mov	a,sp
      002CA2 24 FC            [12]  599 	add	a,#0xfc
      002CA4 F5 81            [12]  600 	mov	sp,a
      002CA6 E5 08            [12]  601 	mov	a,_bp
      002CA8 24 0B            [12]  602 	add	a,#0x0b
      002CAA F8               [12]  603 	mov	r0,a
      002CAB E6               [12]  604 	mov	a,@r0
      002CAC 2C               [12]  605 	add	a,r4
      002CAD FC               [12]  606 	mov	r4,a
      002CAE 08               [12]  607 	inc	r0
      002CAF E6               [12]  608 	mov	a,@r0
      002CB0 3D               [12]  609 	addc	a,r5
      002CB1 FD               [12]  610 	mov	r5,a
      002CB2 08               [12]  611 	inc	r0
      002CB3 E6               [12]  612 	mov	a,@r0
      002CB4 3E               [12]  613 	addc	a,r6
      002CB5 FE               [12]  614 	mov	r6,a
      002CB6 08               [12]  615 	inc	r0
      002CB7 E6               [12]  616 	mov	a,@r0
      002CB8 3F               [12]  617 	addc	a,r7
      002CB9 FF               [12]  618 	mov	r7,a
      002CBA A8 08            [24]  619 	mov	r0,_bp
      002CBC 08               [12]  620 	inc	r0
      002CBD 86 82            [24]  621 	mov	dpl,@r0
      002CBF 08               [12]  622 	inc	r0
      002CC0 86 83            [24]  623 	mov	dph,@r0
      002CC2 08               [12]  624 	inc	r0
      002CC3 86 F0            [24]  625 	mov	b,@r0
      002CC5 EC               [12]  626 	mov	a,r4
      002CC6 12 71 57         [24]  627 	lcall	__gptrput
      002CC9 A3               [24]  628 	inc	dptr
      002CCA ED               [12]  629 	mov	a,r5
      002CCB 12 71 57         [24]  630 	lcall	__gptrput
      002CCE A3               [24]  631 	inc	dptr
      002CCF EE               [12]  632 	mov	a,r6
      002CD0 12 71 57         [24]  633 	lcall	__gptrput
      002CD3 A3               [24]  634 	inc	dptr
      002CD4 EF               [12]  635 	mov	a,r7
      002CD5 12 71 57         [24]  636 	lcall	__gptrput
                                    637 ;	calc.c:55: return 1;
      002CD8 90 00 01         [24]  638 	mov	dptr,#0x0001
                                    639 ;	calc.c:56: }
      002CDB 85 08 81         [24]  640 	mov	sp,_bp
      002CDE D0 08            [24]  641 	pop	_bp
      002CE0 22               [24]  642 	ret
                                    643 ;------------------------------------------------------------
                                    644 ;Allocation info for local variables in function 'dump_pop'
                                    645 ;------------------------------------------------------------
                                    646 ;delta                     Allocated to stack - _bp -5
                                    647 ;_ctx                      Allocated to registers r5 r6 r7 
                                    648 ;ctx                       Allocated to stack - _bp +11
                                    649 ;d                         Allocated to stack - _bp +14
                                    650 ;r                         Allocated to registers r5 r6 
                                    651 ;__1310720003              Allocated to registers 
                                    652 ;s                         Allocated to registers r5 r6 r7 
                                    653 ;__1966080005              Allocated to registers 
                                    654 ;s                         Allocated to registers r4 r5 r6 
                                    655 ;__1966080007              Allocated to registers 
                                    656 ;s                         Allocated to registers r3 r4 r5 
                                    657 ;__1966080009              Allocated to stack - _bp +18
                                    658 ;d                         Allocated to registers r3 r4 r5 r6 
                                    659 ;__1310720001              Allocated to registers 
                                    660 ;d                         Allocated to stack - _bp +22
                                    661 ;mask                      Allocated to stack - _bp +26
                                    662 ;__1966080011              Allocated to registers 
                                    663 ;s                         Allocated to registers r3 r4 r5 
                                    664 ;__1966080013              Allocated to registers 
                                    665 ;s                         Allocated to registers r4 r5 r6 
                                    666 ;__3276800015              Allocated to registers 
                                    667 ;s                         Allocated to registers r5 r3 r2 
                                    668 ;__3276800017              Allocated to stack - _bp +18
                                    669 ;d                         Allocated to registers r2 r3 r4 r7 
                                    670 ;__1310720001              Allocated to registers 
                                    671 ;d                         Allocated to stack - _bp +22
                                    672 ;mask                      Allocated to stack - _bp +26
                                    673 ;__3276800019              Allocated to registers 
                                    674 ;s                         Allocated to registers r5 r3 r2 
                                    675 ;sloc0                     Allocated to stack - _bp +1
                                    676 ;sloc1                     Allocated to stack - _bp +2
                                    677 ;sloc2                     Allocated to stack - _bp +5
                                    678 ;sloc3                     Allocated to stack - _bp +8
                                    679 ;------------------------------------------------------------
                                    680 ;	calc.c:58: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    681 ;	-----------------------------------------
                                    682 ;	 function dump_pop
                                    683 ;	-----------------------------------------
      002CE1                        684 _dump_pop:
      002CE1 C0 08            [24]  685 	push	_bp
      002CE3 E5 81            [12]  686 	mov	a,sp
      002CE5 F5 08            [12]  687 	mov	_bp,a
      002CE7 24 1D            [12]  688 	add	a,#0x1d
      002CE9 F5 81            [12]  689 	mov	sp,a
      002CEB AD 82            [24]  690 	mov	r5,dpl
      002CED AE 83            [24]  691 	mov	r6,dph
      002CEF AF F0            [24]  692 	mov	r7,b
                                    693 ;	calc.c:59: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002CF1 E5 08            [12]  694 	mov	a,_bp
      002CF3 24 0B            [12]  695 	add	a,#0x0b
      002CF5 F8               [12]  696 	mov	r0,a
      002CF6 A6 05            [24]  697 	mov	@r0,ar5
      002CF8 08               [12]  698 	inc	r0
      002CF9 A6 06            [24]  699 	mov	@r0,ar6
      002CFB 08               [12]  700 	inc	r0
      002CFC A6 07            [24]  701 	mov	@r0,ar7
                                    702 ;	calc.c:63: if (delta->event == EVENT_TERM) printstr("\r\n");
      002CFE E5 08            [12]  703 	mov	a,_bp
      002D00 24 FB            [12]  704 	add	a,#0xfb
      002D02 F8               [12]  705 	mov	r0,a
      002D03 86 02            [24]  706 	mov	ar2,@r0
      002D05 08               [12]  707 	inc	r0
      002D06 86 03            [24]  708 	mov	ar3,@r0
      002D08 08               [12]  709 	inc	r0
      002D09 86 04            [24]  710 	mov	ar4,@r0
      002D0B E5 08            [12]  711 	mov	a,_bp
      002D0D 24 08            [12]  712 	add	a,#0x08
      002D0F F8               [12]  713 	mov	r0,a
      002D10 74 02            [12]  714 	mov	a,#0x02
      002D12 2A               [12]  715 	add	a,r2
      002D13 F6               [12]  716 	mov	@r0,a
      002D14 E4               [12]  717 	clr	a
      002D15 3B               [12]  718 	addc	a,r3
      002D16 08               [12]  719 	inc	r0
      002D17 F6               [12]  720 	mov	@r0,a
      002D18 08               [12]  721 	inc	r0
      002D19 A6 04            [24]  722 	mov	@r0,ar4
      002D1B E5 08            [12]  723 	mov	a,_bp
      002D1D 24 08            [12]  724 	add	a,#0x08
      002D1F F8               [12]  725 	mov	r0,a
      002D20 86 82            [24]  726 	mov	dpl,@r0
      002D22 08               [12]  727 	inc	r0
      002D23 86 83            [24]  728 	mov	dph,@r0
      002D25 08               [12]  729 	inc	r0
      002D26 86 F0            [24]  730 	mov	b,@r0
      002D28 12 76 03         [24]  731 	lcall	__gptrget
      002D2B FE               [12]  732 	mov	r6,a
      002D2C A3               [24]  733 	inc	dptr
      002D2D 12 76 03         [24]  734 	lcall	__gptrget
      002D30 FF               [12]  735 	mov	r7,a
      002D31 BE 08 33         [24]  736 	cjne	r6,#0x08,00102$
      002D34 BF 00 30         [24]  737 	cjne	r7,#0x00,00102$
      002D37 7D 9B            [12]  738 	mov	r5,#___str_3
      002D39 7E 8E            [12]  739 	mov	r6,#(___str_3 >> 8)
      002D3B 7F 80            [12]  740 	mov	r7,#0x80
                                    741 ;	calc.c:20: return;
      002D3D                        742 00135$:
                                    743 ;	calc.c:18: for (; *s; s++) putchar(*s);
      002D3D 8D 82            [24]  744 	mov	dpl,r5
      002D3F 8E 83            [24]  745 	mov	dph,r6
      002D41 8F F0            [24]  746 	mov	b,r7
      002D43 12 76 03         [24]  747 	lcall	__gptrget
      002D46 FC               [12]  748 	mov	r4,a
      002D47 60 1E            [24]  749 	jz	00102$
      002D49 8C 03            [24]  750 	mov	ar3,r4
      002D4B 7C 00            [12]  751 	mov	r4,#0x00
      002D4D 8B 82            [24]  752 	mov	dpl,r3
      002D4F 8C 83            [24]  753 	mov	dph,r4
      002D51 C0 07            [24]  754 	push	ar7
      002D53 C0 06            [24]  755 	push	ar6
      002D55 C0 05            [24]  756 	push	ar5
      002D57 12 71 72         [24]  757 	lcall	_putchar
      002D5A D0 05            [24]  758 	pop	ar5
      002D5C D0 06            [24]  759 	pop	ar6
      002D5E D0 07            [24]  760 	pop	ar7
      002D60 0D               [12]  761 	inc	r5
                                    762 ;	calc.c:63: if (delta->event == EVENT_TERM) printstr("\r\n");
      002D61 BD 00 D9         [24]  763 	cjne	r5,#0x00,00135$
      002D64 0E               [12]  764 	inc	r6
      002D65 80 D6            [24]  765 	sjmp	00135$
      002D67                        766 00102$:
                                    767 ;	calc.c:64: r = stack_pop(ctx->ps, &d);
      002D67 E5 08            [12]  768 	mov	a,_bp
      002D69 24 0E            [12]  769 	add	a,#0x0e
      002D6B FF               [12]  770 	mov	r7,a
      002D6C E5 08            [12]  771 	mov	a,_bp
      002D6E 24 05            [12]  772 	add	a,#0x05
      002D70 F8               [12]  773 	mov	r0,a
      002D71 A6 07            [24]  774 	mov	@r0,ar7
      002D73 08               [12]  775 	inc	r0
      002D74 76 00            [12]  776 	mov	@r0,#0x00
      002D76 08               [12]  777 	inc	r0
      002D77 76 40            [12]  778 	mov	@r0,#0x40
      002D79 E5 08            [12]  779 	mov	a,_bp
      002D7B 24 0B            [12]  780 	add	a,#0x0b
      002D7D F8               [12]  781 	mov	r0,a
      002D7E A9 08            [24]  782 	mov	r1,_bp
      002D80 09               [12]  783 	inc	r1
      002D81 09               [12]  784 	inc	r1
      002D82 74 11            [12]  785 	mov	a,#0x11
      002D84 26               [12]  786 	add	a,@r0
      002D85 F7               [12]  787 	mov	@r1,a
      002D86 74 40            [12]  788 	mov	a,#0x40
      002D88 08               [12]  789 	inc	r0
      002D89 36               [12]  790 	addc	a,@r0
      002D8A 09               [12]  791 	inc	r1
      002D8B F7               [12]  792 	mov	@r1,a
      002D8C 08               [12]  793 	inc	r0
      002D8D 09               [12]  794 	inc	r1
      002D8E E6               [12]  795 	mov	a,@r0
      002D8F F7               [12]  796 	mov	@r1,a
      002D90 A8 08            [24]  797 	mov	r0,_bp
      002D92 08               [12]  798 	inc	r0
      002D93 08               [12]  799 	inc	r0
      002D94 86 82            [24]  800 	mov	dpl,@r0
      002D96 08               [12]  801 	inc	r0
      002D97 86 83            [24]  802 	mov	dph,@r0
      002D99 08               [12]  803 	inc	r0
      002D9A 86 F0            [24]  804 	mov	b,@r0
      002D9C 12 76 03         [24]  805 	lcall	__gptrget
      002D9F FA               [12]  806 	mov	r2,a
      002DA0 A3               [24]  807 	inc	dptr
      002DA1 12 76 03         [24]  808 	lcall	__gptrget
      002DA4 FB               [12]  809 	mov	r3,a
      002DA5 A3               [24]  810 	inc	dptr
      002DA6 12 76 03         [24]  811 	lcall	__gptrget
      002DA9 FE               [12]  812 	mov	r6,a
      002DAA C0 07            [24]  813 	push	ar7
      002DAC E5 08            [12]  814 	mov	a,_bp
      002DAE 24 05            [12]  815 	add	a,#0x05
      002DB0 F8               [12]  816 	mov	r0,a
      002DB1 E6               [12]  817 	mov	a,@r0
      002DB2 C0 E0            [24]  818 	push	acc
      002DB4 08               [12]  819 	inc	r0
      002DB5 E6               [12]  820 	mov	a,@r0
      002DB6 C0 E0            [24]  821 	push	acc
      002DB8 08               [12]  822 	inc	r0
      002DB9 E6               [12]  823 	mov	a,@r0
      002DBA C0 E0            [24]  824 	push	acc
      002DBC 8A 82            [24]  825 	mov	dpl,r2
      002DBE 8B 83            [24]  826 	mov	dph,r3
      002DC0 8E F0            [24]  827 	mov	b,r6
      002DC2 12 27 83         [24]  828 	lcall	_stack_pop
      002DC5 AE 82            [24]  829 	mov	r6,dpl
      002DC7 AD 83            [24]  830 	mov	r5,dph
      002DC9 15 81            [12]  831 	dec	sp
      002DCB 15 81            [12]  832 	dec	sp
      002DCD 15 81            [12]  833 	dec	sp
      002DCF D0 07            [24]  834 	pop	ar7
                                    835 ;	calc.c:65: if (!r) {
      002DD1 EE               [12]  836 	mov	a,r6
      002DD2 4D               [12]  837 	orl	a,r5
      002DD3 70 54            [24]  838 	jnz	00183$
                                    839 ;	calc.c:66: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002DD5 E5 08            [12]  840 	mov	a,_bp
      002DD7 24 08            [12]  841 	add	a,#0x08
      002DD9 F8               [12]  842 	mov	r0,a
      002DDA 86 82            [24]  843 	mov	dpl,@r0
      002DDC 08               [12]  844 	inc	r0
      002DDD 86 83            [24]  845 	mov	dph,@r0
      002DDF 08               [12]  846 	inc	r0
      002DE0 86 F0            [24]  847 	mov	b,@r0
      002DE2 12 76 03         [24]  848 	lcall	__gptrget
      002DE5 FD               [12]  849 	mov	r5,a
      002DE6 A3               [24]  850 	inc	dptr
      002DE7 12 76 03         [24]  851 	lcall	__gptrget
      002DEA FE               [12]  852 	mov	r6,a
      002DEB BD 08 06         [24]  853 	cjne	r5,#0x08,00320$
      002DEE BE 00 03         [24]  854 	cjne	r6,#0x00,00320$
      002DF1 02 30 2C         [24]  855 	ljmp	00110$
      002DF4                        856 00320$:
      002DF4 7C 9E            [12]  857 	mov	r4,#___str_4
      002DF6 7D 8E            [12]  858 	mov	r5,#(___str_4 >> 8)
      002DF8 7E 80            [12]  859 	mov	r6,#0x80
                                    860 ;	calc.c:20: return;
      002DFA                        861 00138$:
                                    862 ;	calc.c:18: for (; *s; s++) putchar(*s);
      002DFA 8C 82            [24]  863 	mov	dpl,r4
      002DFC 8D 83            [24]  864 	mov	dph,r5
      002DFE 8E F0            [24]  865 	mov	b,r6
      002E00 12 76 03         [24]  866 	lcall	__gptrget
      002E03 FB               [12]  867 	mov	r3,a
      002E04 70 03            [24]  868 	jnz	00321$
      002E06 02 30 2C         [24]  869 	ljmp	00110$
      002E09                        870 00321$:
      002E09 7A 00            [12]  871 	mov	r2,#0x00
      002E0B 8B 82            [24]  872 	mov	dpl,r3
      002E0D 8A 83            [24]  873 	mov	dph,r2
      002E0F C0 07            [24]  874 	push	ar7
      002E11 C0 06            [24]  875 	push	ar6
      002E13 C0 05            [24]  876 	push	ar5
      002E15 C0 04            [24]  877 	push	ar4
      002E17 12 71 72         [24]  878 	lcall	_putchar
      002E1A D0 04            [24]  879 	pop	ar4
      002E1C D0 05            [24]  880 	pop	ar5
      002E1E D0 06            [24]  881 	pop	ar6
      002E20 D0 07            [24]  882 	pop	ar7
      002E22 0C               [12]  883 	inc	r4
                                    884 ;	calc.c:67: } else while (r > 0) {
      002E23 BC 00 D4         [24]  885 	cjne	r4,#0x00,00138$
      002E26 0D               [12]  886 	inc	r5
      002E27 80 D1            [24]  887 	sjmp	00138$
      002E29                        888 00183$:
      002E29 A8 08            [24]  889 	mov	r0,_bp
      002E2B 08               [12]  890 	inc	r0
      002E2C A6 07            [24]  891 	mov	@r0,ar7
      002E2E                        892 00105$:
      002E2E C3               [12]  893 	clr	c
      002E2F E4               [12]  894 	clr	a
      002E30 9E               [12]  895 	subb	a,r6
      002E31 74 80            [12]  896 	mov	a,#(0x00 ^ 0x80)
      002E33 8D F0            [24]  897 	mov	b,r5
      002E35 63 F0 80         [24]  898 	xrl	b,#0x80
      002E38 95 F0            [12]  899 	subb	a,b
      002E3A 40 03            [24]  900 	jc	00323$
      002E3C 02 30 2C         [24]  901 	ljmp	00110$
      002E3F                        902 00323$:
                                    903 ;	calc.c:68: printstr("PSPA\t");
      002E3F 7B B0            [12]  904 	mov	r3,#___str_5
      002E41 7C 8E            [12]  905 	mov	r4,#(___str_5 >> 8)
      002E43 7D 80            [12]  906 	mov	r5,#0x80
                                    907 ;	calc.c:20: return;
      002E45                        908 00141$:
                                    909 ;	calc.c:18: for (; *s; s++) putchar(*s);
      002E45 8B 82            [24]  910 	mov	dpl,r3
      002E47 8C 83            [24]  911 	mov	dph,r4
      002E49 8D F0            [24]  912 	mov	b,r5
      002E4B 12 76 03         [24]  913 	lcall	__gptrget
      002E4E FA               [12]  914 	mov	r2,a
      002E4F 60 20            [24]  915 	jz	00119$
      002E51 7E 00            [12]  916 	mov	r6,#0x00
      002E53 8A 82            [24]  917 	mov	dpl,r2
      002E55 8E 83            [24]  918 	mov	dph,r6
      002E57 C0 07            [24]  919 	push	ar7
      002E59 C0 05            [24]  920 	push	ar5
      002E5B C0 04            [24]  921 	push	ar4
      002E5D C0 03            [24]  922 	push	ar3
      002E5F 12 71 72         [24]  923 	lcall	_putchar
      002E62 D0 03            [24]  924 	pop	ar3
      002E64 D0 04            [24]  925 	pop	ar4
      002E66 D0 05            [24]  926 	pop	ar5
      002E68 D0 07            [24]  927 	pop	ar7
      002E6A 0B               [12]  928 	inc	r3
                                    929 ;	calc.c:68: printstr("PSPA\t");
      002E6B BB 00 D7         [24]  930 	cjne	r3,#0x00,00141$
      002E6E 0C               [12]  931 	inc	r4
      002E6F 80 D4            [24]  932 	sjmp	00141$
      002E71                        933 00119$:
                                    934 ;	calc.c:69: printall(d);
      002E71 E5 08            [12]  935 	mov	a,_bp
      002E73 24 0E            [12]  936 	add	a,#0x0e
      002E75 F8               [12]  937 	mov	r0,a
      002E76 E5 08            [12]  938 	mov	a,_bp
      002E78 24 12            [12]  939 	add	a,#0x12
      002E7A F9               [12]  940 	mov	r1,a
      002E7B E6               [12]  941 	mov	a,@r0
      002E7C F7               [12]  942 	mov	@r1,a
      002E7D 08               [12]  943 	inc	r0
      002E7E 09               [12]  944 	inc	r1
      002E7F E6               [12]  945 	mov	a,@r0
      002E80 F7               [12]  946 	mov	@r1,a
      002E81 08               [12]  947 	inc	r0
      002E82 09               [12]  948 	inc	r1
      002E83 E6               [12]  949 	mov	a,@r0
      002E84 F7               [12]  950 	mov	@r1,a
      002E85 08               [12]  951 	inc	r0
      002E86 09               [12]  952 	inc	r1
      002E87 E6               [12]  953 	mov	a,@r0
      002E88 F7               [12]  954 	mov	@r1,a
      002E89 E5 08            [12]  955 	mov	a,_bp
      002E8B 24 12            [12]  956 	add	a,#0x12
      002E8D F8               [12]  957 	mov	r0,a
      002E8E 86 03            [24]  958 	mov	ar3,@r0
      002E90 08               [12]  959 	inc	r0
      002E91 86 04            [24]  960 	mov	ar4,@r0
      002E93 08               [12]  961 	inc	r0
      002E94 86 05            [24]  962 	mov	ar5,@r0
      002E96 08               [12]  963 	inc	r0
      002E97 86 06            [24]  964 	mov	ar6,@r0
                                    965 ;	calc.c:33: printf("%08lx\t", d);
      002E99 C0 07            [24]  966 	push	ar7
      002E9B C0 06            [24]  967 	push	ar6
      002E9D C0 05            [24]  968 	push	ar5
      002E9F C0 04            [24]  969 	push	ar4
      002EA1 C0 03            [24]  970 	push	ar3
      002EA3 E5 08            [12]  971 	mov	a,_bp
      002EA5 24 12            [12]  972 	add	a,#0x12
      002EA7 F8               [12]  973 	mov	r0,a
      002EA8 E6               [12]  974 	mov	a,@r0
      002EA9 C0 E0            [24]  975 	push	acc
      002EAB 08               [12]  976 	inc	r0
      002EAC E6               [12]  977 	mov	a,@r0
      002EAD C0 E0            [24]  978 	push	acc
      002EAF 08               [12]  979 	inc	r0
      002EB0 E6               [12]  980 	mov	a,@r0
      002EB1 C0 E0            [24]  981 	push	acc
      002EB3 08               [12]  982 	inc	r0
      002EB4 E6               [12]  983 	mov	a,@r0
      002EB5 C0 E0            [24]  984 	push	acc
      002EB7 74 84            [12]  985 	mov	a,#___str_0
      002EB9 C0 E0            [24]  986 	push	acc
      002EBB 74 8E            [12]  987 	mov	a,#(___str_0 >> 8)
      002EBD C0 E0            [24]  988 	push	acc
      002EBF 74 80            [12]  989 	mov	a,#0x80
      002EC1 C0 E0            [24]  990 	push	acc
      002EC3 12 75 CA         [24]  991 	lcall	_printf
      002EC6 E5 81            [12]  992 	mov	a,sp
      002EC8 24 F9            [12]  993 	add	a,#0xf9
      002ECA F5 81            [12]  994 	mov	sp,a
      002ECC D0 03            [24]  995 	pop	ar3
      002ECE D0 04            [24]  996 	pop	ar4
      002ED0 D0 05            [24]  997 	pop	ar5
      002ED2 D0 06            [24]  998 	pop	ar6
                                    999 ;	calc.c:34: printf("% 11ld\t", d);
      002ED4 C0 06            [24] 1000 	push	ar6
      002ED6 C0 05            [24] 1001 	push	ar5
      002ED8 C0 04            [24] 1002 	push	ar4
      002EDA C0 03            [24] 1003 	push	ar3
      002EDC C0 03            [24] 1004 	push	ar3
      002EDE C0 04            [24] 1005 	push	ar4
      002EE0 C0 05            [24] 1006 	push	ar5
      002EE2 C0 06            [24] 1007 	push	ar6
      002EE4 74 8B            [12] 1008 	mov	a,#___str_1
      002EE6 C0 E0            [24] 1009 	push	acc
      002EE8 74 8E            [12] 1010 	mov	a,#(___str_1 >> 8)
      002EEA C0 E0            [24] 1011 	push	acc
      002EEC 74 80            [12] 1012 	mov	a,#0x80
      002EEE C0 E0            [24] 1013 	push	acc
      002EF0 12 75 CA         [24] 1014 	lcall	_printf
      002EF3 E5 81            [12] 1015 	mov	a,sp
      002EF5 24 F9            [12] 1016 	add	a,#0xf9
      002EF7 F5 81            [12] 1017 	mov	sp,a
      002EF9 D0 03            [24] 1018 	pop	ar3
      002EFB D0 04            [24] 1019 	pop	ar4
      002EFD D0 05            [24] 1020 	pop	ar5
      002EFF D0 06            [24] 1021 	pop	ar6
                                   1022 ;	calc.c:35: printf("%011lo\t", d);
      002F01 C0 06            [24] 1023 	push	ar6
      002F03 C0 05            [24] 1024 	push	ar5
      002F05 C0 04            [24] 1025 	push	ar4
      002F07 C0 03            [24] 1026 	push	ar3
      002F09 C0 03            [24] 1027 	push	ar3
      002F0B C0 04            [24] 1028 	push	ar4
      002F0D C0 05            [24] 1029 	push	ar5
      002F0F C0 06            [24] 1030 	push	ar6
      002F11 74 93            [12] 1031 	mov	a,#___str_2
      002F13 C0 E0            [24] 1032 	push	acc
      002F15 74 8E            [12] 1033 	mov	a,#(___str_2 >> 8)
      002F17 C0 E0            [24] 1034 	push	acc
      002F19 74 80            [12] 1035 	mov	a,#0x80
      002F1B C0 E0            [24] 1036 	push	acc
      002F1D 12 75 CA         [24] 1037 	lcall	_printf
      002F20 E5 81            [12] 1038 	mov	a,sp
      002F22 24 F9            [12] 1039 	add	a,#0xf9
      002F24 F5 81            [12] 1040 	mov	sp,a
      002F26 D0 03            [24] 1041 	pop	ar3
      002F28 D0 04            [24] 1042 	pop	ar4
      002F2A D0 05            [24] 1043 	pop	ar5
      002F2C D0 06            [24] 1044 	pop	ar6
      002F2E D0 07            [24] 1045 	pop	ar7
                                   1046 ;	calc.c:36: printbin(d);
      002F30 E5 08            [12] 1047 	mov	a,_bp
      002F32 24 16            [12] 1048 	add	a,#0x16
      002F34 F8               [12] 1049 	mov	r0,a
      002F35 A6 03            [24] 1050 	mov	@r0,ar3
      002F37 08               [12] 1051 	inc	r0
      002F38 A6 04            [24] 1052 	mov	@r0,ar4
      002F3A 08               [12] 1053 	inc	r0
      002F3B A6 05            [24] 1054 	mov	@r0,ar5
      002F3D 08               [12] 1055 	inc	r0
      002F3E A6 06            [24] 1056 	mov	@r0,ar6
                                   1057 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F40 E5 08            [12] 1058 	mov	a,_bp
      002F42 24 1A            [12] 1059 	add	a,#0x1a
      002F44 F8               [12] 1060 	mov	r0,a
      002F45 E4               [12] 1061 	clr	a
      002F46 F6               [12] 1062 	mov	@r0,a
      002F47 08               [12] 1063 	inc	r0
      002F48 F6               [12] 1064 	mov	@r0,a
      002F49 08               [12] 1065 	inc	r0
      002F4A F6               [12] 1066 	mov	@r0,a
      002F4B 08               [12] 1067 	inc	r0
      002F4C 76 80            [12] 1068 	mov	@r0,#0x80
                                   1069 ;	calc.c:83: return 1;
                                   1070 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F4E                       1071 00143$:
                                   1072 ;	calc.c:27: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002F4E E5 08            [12] 1073 	mov	a,_bp
      002F50 24 16            [12] 1074 	add	a,#0x16
      002F52 F8               [12] 1075 	mov	r0,a
      002F53 86 02            [24] 1076 	mov	ar2,@r0
      002F55 08               [12] 1077 	inc	r0
      002F56 86 03            [24] 1078 	mov	ar3,@r0
      002F58 08               [12] 1079 	inc	r0
      002F59 86 04            [24] 1080 	mov	ar4,@r0
      002F5B 08               [12] 1081 	inc	r0
      002F5C 86 05            [24] 1082 	mov	ar5,@r0
      002F5E E5 08            [12] 1083 	mov	a,_bp
      002F60 24 1A            [12] 1084 	add	a,#0x1a
      002F62 F8               [12] 1085 	mov	r0,a
      002F63 E6               [12] 1086 	mov	a,@r0
      002F64 52 02            [12] 1087 	anl	ar2,a
      002F66 08               [12] 1088 	inc	r0
      002F67 E6               [12] 1089 	mov	a,@r0
      002F68 52 03            [12] 1090 	anl	ar3,a
      002F6A 08               [12] 1091 	inc	r0
      002F6B E6               [12] 1092 	mov	a,@r0
      002F6C 52 04            [12] 1093 	anl	ar4,a
      002F6E 08               [12] 1094 	inc	r0
      002F6F E6               [12] 1095 	mov	a,@r0
      002F70 52 05            [12] 1096 	anl	ar5,a
      002F72 EA               [12] 1097 	mov	a,r2
      002F73 4B               [12] 1098 	orl	a,r3
      002F74 4C               [12] 1099 	orl	a,r4
      002F75 4D               [12] 1100 	orl	a,r5
      002F76 60 06            [24] 1101 	jz	00164$
      002F78 7C 31            [12] 1102 	mov	r4,#0x31
      002F7A 7D 00            [12] 1103 	mov	r5,#0x00
      002F7C 80 04            [24] 1104 	sjmp	00165$
      002F7E                       1105 00164$:
      002F7E 7C 30            [12] 1106 	mov	r4,#0x30
      002F80 7D 00            [12] 1107 	mov	r5,#0x00
      002F82                       1108 00165$:
      002F82 8C 82            [24] 1109 	mov	dpl,r4
      002F84 8D 83            [24] 1110 	mov	dph,r5
      002F86 C0 07            [24] 1111 	push	ar7
      002F88 12 71 72         [24] 1112 	lcall	_putchar
      002F8B D0 07            [24] 1113 	pop	ar7
                                   1114 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F8D E5 08            [12] 1115 	mov	a,_bp
      002F8F 24 1A            [12] 1116 	add	a,#0x1a
      002F91 F8               [12] 1117 	mov	r0,a
      002F92 08               [12] 1118 	inc	r0
      002F93 08               [12] 1119 	inc	r0
      002F94 08               [12] 1120 	inc	r0
      002F95 E6               [12] 1121 	mov	a,@r0
      002F96 C3               [12] 1122 	clr	c
      002F97 13               [12] 1123 	rrc	a
      002F98 F6               [12] 1124 	mov	@r0,a
      002F99 18               [12] 1125 	dec	r0
      002F9A E6               [12] 1126 	mov	a,@r0
      002F9B 13               [12] 1127 	rrc	a
      002F9C F6               [12] 1128 	mov	@r0,a
      002F9D 18               [12] 1129 	dec	r0
      002F9E E6               [12] 1130 	mov	a,@r0
      002F9F 13               [12] 1131 	rrc	a
      002FA0 F6               [12] 1132 	mov	@r0,a
      002FA1 18               [12] 1133 	dec	r0
      002FA2 E6               [12] 1134 	mov	a,@r0
      002FA3 13               [12] 1135 	rrc	a
      002FA4 F6               [12] 1136 	mov	@r0,a
      002FA5 E5 08            [12] 1137 	mov	a,_bp
      002FA7 24 1A            [12] 1138 	add	a,#0x1a
      002FA9 F8               [12] 1139 	mov	r0,a
      002FAA E6               [12] 1140 	mov	a,@r0
      002FAB 08               [12] 1141 	inc	r0
      002FAC 46               [12] 1142 	orl	a,@r0
      002FAD 08               [12] 1143 	inc	r0
      002FAE 46               [12] 1144 	orl	a,@r0
      002FAF 08               [12] 1145 	inc	r0
      002FB0 46               [12] 1146 	orl	a,@r0
      002FB1 70 9B            [24] 1147 	jnz	00143$
                                   1148 ;	calc.c:70: printstr("\r\n");
      002FB3 7B 9B            [12] 1149 	mov	r3,#___str_3
      002FB5 7C 8E            [12] 1150 	mov	r4,#(___str_3 >> 8)
      002FB7 7D 80            [12] 1151 	mov	r5,#0x80
                                   1152 ;	calc.c:20: return;
      002FB9                       1153 00146$:
                                   1154 ;	calc.c:18: for (; *s; s++) putchar(*s);
      002FB9 8B 82            [24] 1155 	mov	dpl,r3
      002FBB 8C 83            [24] 1156 	mov	dph,r4
      002FBD 8D F0            [24] 1157 	mov	b,r5
      002FBF 12 76 03         [24] 1158 	lcall	__gptrget
      002FC2 FA               [12] 1159 	mov	r2,a
      002FC3 60 20            [24] 1160 	jz	00124$
      002FC5 7E 00            [12] 1161 	mov	r6,#0x00
      002FC7 8A 82            [24] 1162 	mov	dpl,r2
      002FC9 8E 83            [24] 1163 	mov	dph,r6
      002FCB C0 07            [24] 1164 	push	ar7
      002FCD C0 05            [24] 1165 	push	ar5
      002FCF C0 04            [24] 1166 	push	ar4
      002FD1 C0 03            [24] 1167 	push	ar3
      002FD3 12 71 72         [24] 1168 	lcall	_putchar
      002FD6 D0 03            [24] 1169 	pop	ar3
      002FD8 D0 04            [24] 1170 	pop	ar4
      002FDA D0 05            [24] 1171 	pop	ar5
      002FDC D0 07            [24] 1172 	pop	ar7
      002FDE 0B               [12] 1173 	inc	r3
                                   1174 ;	calc.c:70: printstr("\r\n");
      002FDF BB 00 D7         [24] 1175 	cjne	r3,#0x00,00146$
      002FE2 0C               [12] 1176 	inc	r4
      002FE3 80 D4            [24] 1177 	sjmp	00146$
      002FE5                       1178 00124$:
                                   1179 ;	calc.c:71: r = stack_pop(ctx->ps, &d);
      002FE5 C0 07            [24] 1180 	push	ar7
      002FE7 A8 08            [24] 1181 	mov	r0,_bp
      002FE9 08               [12] 1182 	inc	r0
      002FEA 86 03            [24] 1183 	mov	ar3,@r0
      002FEC 7C 00            [12] 1184 	mov	r4,#0x00
      002FEE 7D 40            [12] 1185 	mov	r5,#0x40
      002FF0 A8 08            [24] 1186 	mov	r0,_bp
      002FF2 08               [12] 1187 	inc	r0
      002FF3 08               [12] 1188 	inc	r0
      002FF4 86 82            [24] 1189 	mov	dpl,@r0
      002FF6 08               [12] 1190 	inc	r0
      002FF7 86 83            [24] 1191 	mov	dph,@r0
      002FF9 08               [12] 1192 	inc	r0
      002FFA 86 F0            [24] 1193 	mov	b,@r0
      002FFC 12 76 03         [24] 1194 	lcall	__gptrget
      002FFF FA               [12] 1195 	mov	r2,a
      003000 A3               [24] 1196 	inc	dptr
      003001 12 76 03         [24] 1197 	lcall	__gptrget
      003004 FE               [12] 1198 	mov	r6,a
      003005 A3               [24] 1199 	inc	dptr
      003006 12 76 03         [24] 1200 	lcall	__gptrget
      003009 FF               [12] 1201 	mov	r7,a
      00300A C0 07            [24] 1202 	push	ar7
      00300C C0 03            [24] 1203 	push	ar3
      00300E C0 04            [24] 1204 	push	ar4
      003010 C0 05            [24] 1205 	push	ar5
      003012 8A 82            [24] 1206 	mov	dpl,r2
      003014 8E 83            [24] 1207 	mov	dph,r6
      003016 8F F0            [24] 1208 	mov	b,r7
      003018 12 27 83         [24] 1209 	lcall	_stack_pop
      00301B AE 82            [24] 1210 	mov	r6,dpl
      00301D AD 83            [24] 1211 	mov	r5,dph
      00301F 15 81            [12] 1212 	dec	sp
      003021 15 81            [12] 1213 	dec	sp
      003023 15 81            [12] 1214 	dec	sp
      003025 D0 07            [24] 1215 	pop	ar7
      003027 D0 07            [24] 1216 	pop	ar7
      003029 02 2E 2E         [24] 1217 	ljmp	00105$
      00302C                       1218 00110$:
                                   1219 ;	calc.c:74: if (delta->event == EVENT_TERM) {
      00302C E5 08            [12] 1220 	mov	a,_bp
      00302E 24 08            [12] 1221 	add	a,#0x08
      003030 F8               [12] 1222 	mov	r0,a
      003031 86 82            [24] 1223 	mov	dpl,@r0
      003033 08               [12] 1224 	inc	r0
      003034 86 83            [24] 1225 	mov	dph,@r0
      003036 08               [12] 1226 	inc	r0
      003037 86 F0            [24] 1227 	mov	b,@r0
      003039 12 76 03         [24] 1228 	lcall	__gptrget
      00303C FD               [12] 1229 	mov	r5,a
      00303D A3               [24] 1230 	inc	dptr
      00303E 12 76 03         [24] 1231 	lcall	__gptrget
      003041 FE               [12] 1232 	mov	r6,a
      003042 BD 08 05         [24] 1233 	cjne	r5,#0x08,00330$
      003045 BE 00 02         [24] 1234 	cjne	r6,#0x00,00330$
      003048 80 03            [24] 1235 	sjmp	00331$
      00304A                       1236 00330$:
      00304A 02 32 F4         [24] 1237 	ljmp	00113$
      00304D                       1238 00331$:
                                   1239 ;	calc.c:75: printstr("\r\n");
      00304D 7C 9B            [12] 1240 	mov	r4,#___str_3
      00304F 7D 8E            [12] 1241 	mov	r5,#(___str_3 >> 8)
      003051 7E 80            [12] 1242 	mov	r6,#0x80
                                   1243 ;	calc.c:20: return;
      003053                       1244 00149$:
                                   1245 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003053 8C 82            [24] 1246 	mov	dpl,r4
      003055 8D 83            [24] 1247 	mov	dph,r5
      003057 8E F0            [24] 1248 	mov	b,r6
      003059 12 76 03         [24] 1249 	lcall	__gptrget
      00305C FB               [12] 1250 	mov	r3,a
      00305D 60 20            [24] 1251 	jz	00126$
      00305F 7A 00            [12] 1252 	mov	r2,#0x00
      003061 8B 82            [24] 1253 	mov	dpl,r3
      003063 8A 83            [24] 1254 	mov	dph,r2
      003065 C0 07            [24] 1255 	push	ar7
      003067 C0 06            [24] 1256 	push	ar6
      003069 C0 05            [24] 1257 	push	ar5
      00306B C0 04            [24] 1258 	push	ar4
      00306D 12 71 72         [24] 1259 	lcall	_putchar
      003070 D0 04            [24] 1260 	pop	ar4
      003072 D0 05            [24] 1261 	pop	ar5
      003074 D0 06            [24] 1262 	pop	ar6
      003076 D0 07            [24] 1263 	pop	ar7
      003078 0C               [12] 1264 	inc	r4
                                   1265 ;	calc.c:75: printstr("\r\n");
      003079 BC 00 D7         [24] 1266 	cjne	r4,#0x00,00149$
      00307C 0D               [12] 1267 	inc	r5
      00307D 80 D4            [24] 1268 	sjmp	00149$
      00307F                       1269 00126$:
                                   1270 ;	calc.c:76: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      00307F 8F 06            [24] 1271 	mov	ar6,r7
      003081 E5 08            [12] 1272 	mov	a,_bp
      003083 24 05            [12] 1273 	add	a,#0x05
      003085 F8               [12] 1274 	mov	r0,a
      003086 A6 06            [24] 1275 	mov	@r0,ar6
      003088 08               [12] 1276 	inc	r0
      003089 76 00            [12] 1277 	mov	@r0,#0x00
      00308B 08               [12] 1278 	inc	r0
      00308C 76 40            [12] 1279 	mov	@r0,#0x40
      00308E E5 08            [12] 1280 	mov	a,_bp
      003090 24 0B            [12] 1281 	add	a,#0x0b
      003092 F8               [12] 1282 	mov	r0,a
      003093 E5 08            [12] 1283 	mov	a,_bp
      003095 24 08            [12] 1284 	add	a,#0x08
      003097 F9               [12] 1285 	mov	r1,a
      003098 74 14            [12] 1286 	mov	a,#0x14
      00309A 26               [12] 1287 	add	a,@r0
      00309B F7               [12] 1288 	mov	@r1,a
      00309C 74 40            [12] 1289 	mov	a,#0x40
      00309E 08               [12] 1290 	inc	r0
      00309F 36               [12] 1291 	addc	a,@r0
      0030A0 09               [12] 1292 	inc	r1
      0030A1 F7               [12] 1293 	mov	@r1,a
      0030A2 08               [12] 1294 	inc	r0
      0030A3 09               [12] 1295 	inc	r1
      0030A4 E6               [12] 1296 	mov	a,@r0
      0030A5 F7               [12] 1297 	mov	@r1,a
      0030A6 E5 08            [12] 1298 	mov	a,_bp
      0030A8 24 08            [12] 1299 	add	a,#0x08
      0030AA F8               [12] 1300 	mov	r0,a
      0030AB 86 82            [24] 1301 	mov	dpl,@r0
      0030AD 08               [12] 1302 	inc	r0
      0030AE 86 83            [24] 1303 	mov	dph,@r0
      0030B0 08               [12] 1304 	inc	r0
      0030B1 86 F0            [24] 1305 	mov	b,@r0
      0030B3 12 76 03         [24] 1306 	lcall	__gptrget
      0030B6 FA               [12] 1307 	mov	r2,a
      0030B7 A3               [24] 1308 	inc	dptr
      0030B8 12 76 03         [24] 1309 	lcall	__gptrget
      0030BB FB               [12] 1310 	mov	r3,a
      0030BC A3               [24] 1311 	inc	dptr
      0030BD 12 76 03         [24] 1312 	lcall	__gptrget
      0030C0 FE               [12] 1313 	mov	r6,a
      0030C1 C0 07            [24] 1314 	push	ar7
      0030C3 E5 08            [12] 1315 	mov	a,_bp
      0030C5 24 05            [12] 1316 	add	a,#0x05
      0030C7 F8               [12] 1317 	mov	r0,a
      0030C8 E6               [12] 1318 	mov	a,@r0
      0030C9 C0 E0            [24] 1319 	push	acc
      0030CB 08               [12] 1320 	inc	r0
      0030CC E6               [12] 1321 	mov	a,@r0
      0030CD C0 E0            [24] 1322 	push	acc
      0030CF 08               [12] 1323 	inc	r0
      0030D0 E6               [12] 1324 	mov	a,@r0
      0030D1 C0 E0            [24] 1325 	push	acc
      0030D3 8A 82            [24] 1326 	mov	dpl,r2
      0030D5 8B 83            [24] 1327 	mov	dph,r3
      0030D7 8E F0            [24] 1328 	mov	b,r6
      0030D9 12 27 83         [24] 1329 	lcall	_stack_pop
      0030DC AD 82            [24] 1330 	mov	r5,dpl
      0030DE AE 83            [24] 1331 	mov	r6,dph
      0030E0 15 81            [12] 1332 	dec	sp
      0030E2 15 81            [12] 1333 	dec	sp
      0030E4 15 81            [12] 1334 	dec	sp
      0030E6 D0 07            [24] 1335 	pop	ar7
      0030E8                       1336 00160$:
      0030E8 C3               [12] 1337 	clr	c
      0030E9 E4               [12] 1338 	clr	a
      0030EA 9D               [12] 1339 	subb	a,r5
      0030EB 74 80            [12] 1340 	mov	a,#(0x00 ^ 0x80)
      0030ED 8E F0            [24] 1341 	mov	b,r6
      0030EF 63 F0 80         [24] 1342 	xrl	b,#0x80
      0030F2 95 F0            [12] 1343 	subb	a,b
      0030F4 40 03            [24] 1344 	jc	00334$
      0030F6 02 32 F4         [24] 1345 	ljmp	00113$
      0030F9                       1346 00334$:
                                   1347 ;	calc.c:77: printstr("SSPA\t");
      0030F9 7D B6            [12] 1348 	mov	r5,#___str_6
      0030FB 7B 8E            [12] 1349 	mov	r3,#(___str_6 >> 8)
      0030FD 7A 80            [12] 1350 	mov	r2,#0x80
                                   1351 ;	calc.c:20: return;
      0030FF                       1352 00152$:
                                   1353 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0030FF 8D 82            [24] 1354 	mov	dpl,r5
      003101 8B 83            [24] 1355 	mov	dph,r3
      003103 8A F0            [24] 1356 	mov	b,r2
      003105 12 76 03         [24] 1357 	lcall	__gptrget
      003108 FE               [12] 1358 	mov	r6,a
      003109 60 26            [24] 1359 	jz	00128$
      00310B C0 07            [24] 1360 	push	ar7
      00310D 8E 04            [24] 1361 	mov	ar4,r6
      00310F 7F 00            [12] 1362 	mov	r7,#0x00
      003111 8C 82            [24] 1363 	mov	dpl,r4
      003113 8F 83            [24] 1364 	mov	dph,r7
      003115 C0 07            [24] 1365 	push	ar7
      003117 C0 05            [24] 1366 	push	ar5
      003119 C0 03            [24] 1367 	push	ar3
      00311B C0 02            [24] 1368 	push	ar2
      00311D 12 71 72         [24] 1369 	lcall	_putchar
      003120 D0 02            [24] 1370 	pop	ar2
      003122 D0 03            [24] 1371 	pop	ar3
      003124 D0 05            [24] 1372 	pop	ar5
      003126 D0 07            [24] 1373 	pop	ar7
      003128 0D               [12] 1374 	inc	r5
      003129 BD 00 01         [24] 1375 	cjne	r5,#0x00,00336$
      00312C 0B               [12] 1376 	inc	r3
      00312D                       1377 00336$:
      00312D D0 07            [24] 1378 	pop	ar7
                                   1379 ;	calc.c:77: printstr("SSPA\t");
      00312F 80 CE            [24] 1380 	sjmp	00152$
      003131                       1381 00128$:
                                   1382 ;	calc.c:78: printall(d);
      003131 C0 07            [24] 1383 	push	ar7
      003133 E5 08            [12] 1384 	mov	a,_bp
      003135 24 0E            [12] 1385 	add	a,#0x0e
      003137 F8               [12] 1386 	mov	r0,a
      003138 E5 08            [12] 1387 	mov	a,_bp
      00313A 24 12            [12] 1388 	add	a,#0x12
      00313C F9               [12] 1389 	mov	r1,a
      00313D E6               [12] 1390 	mov	a,@r0
      00313E F7               [12] 1391 	mov	@r1,a
      00313F 08               [12] 1392 	inc	r0
      003140 09               [12] 1393 	inc	r1
      003141 E6               [12] 1394 	mov	a,@r0
      003142 F7               [12] 1395 	mov	@r1,a
      003143 08               [12] 1396 	inc	r0
      003144 09               [12] 1397 	inc	r1
      003145 E6               [12] 1398 	mov	a,@r0
      003146 F7               [12] 1399 	mov	@r1,a
      003147 08               [12] 1400 	inc	r0
      003148 09               [12] 1401 	inc	r1
      003149 E6               [12] 1402 	mov	a,@r0
      00314A F7               [12] 1403 	mov	@r1,a
      00314B E5 08            [12] 1404 	mov	a,_bp
      00314D 24 12            [12] 1405 	add	a,#0x12
      00314F F8               [12] 1406 	mov	r0,a
      003150 86 02            [24] 1407 	mov	ar2,@r0
      003152 08               [12] 1408 	inc	r0
      003153 86 03            [24] 1409 	mov	ar3,@r0
      003155 08               [12] 1410 	inc	r0
      003156 86 04            [24] 1411 	mov	ar4,@r0
      003158 08               [12] 1412 	inc	r0
      003159 86 07            [24] 1413 	mov	ar7,@r0
                                   1414 ;	calc.c:33: printf("%08lx\t", d);
      00315B C0 07            [24] 1415 	push	ar7
      00315D C0 04            [24] 1416 	push	ar4
      00315F C0 03            [24] 1417 	push	ar3
      003161 C0 02            [24] 1418 	push	ar2
      003163 E5 08            [12] 1419 	mov	a,_bp
      003165 24 12            [12] 1420 	add	a,#0x12
      003167 F8               [12] 1421 	mov	r0,a
      003168 E6               [12] 1422 	mov	a,@r0
      003169 C0 E0            [24] 1423 	push	acc
      00316B 08               [12] 1424 	inc	r0
      00316C E6               [12] 1425 	mov	a,@r0
      00316D C0 E0            [24] 1426 	push	acc
      00316F 08               [12] 1427 	inc	r0
      003170 E6               [12] 1428 	mov	a,@r0
      003171 C0 E0            [24] 1429 	push	acc
      003173 08               [12] 1430 	inc	r0
      003174 E6               [12] 1431 	mov	a,@r0
      003175 C0 E0            [24] 1432 	push	acc
      003177 74 84            [12] 1433 	mov	a,#___str_0
      003179 C0 E0            [24] 1434 	push	acc
      00317B 74 8E            [12] 1435 	mov	a,#(___str_0 >> 8)
      00317D C0 E0            [24] 1436 	push	acc
      00317F 74 80            [12] 1437 	mov	a,#0x80
      003181 C0 E0            [24] 1438 	push	acc
      003183 12 75 CA         [24] 1439 	lcall	_printf
      003186 E5 81            [12] 1440 	mov	a,sp
      003188 24 F9            [12] 1441 	add	a,#0xf9
      00318A F5 81            [12] 1442 	mov	sp,a
      00318C D0 02            [24] 1443 	pop	ar2
      00318E D0 03            [24] 1444 	pop	ar3
      003190 D0 04            [24] 1445 	pop	ar4
      003192 D0 07            [24] 1446 	pop	ar7
                                   1447 ;	calc.c:34: printf("% 11ld\t", d);
      003194 C0 07            [24] 1448 	push	ar7
      003196 C0 04            [24] 1449 	push	ar4
      003198 C0 03            [24] 1450 	push	ar3
      00319A C0 02            [24] 1451 	push	ar2
      00319C C0 02            [24] 1452 	push	ar2
      00319E C0 03            [24] 1453 	push	ar3
      0031A0 C0 04            [24] 1454 	push	ar4
      0031A2 C0 07            [24] 1455 	push	ar7
      0031A4 74 8B            [12] 1456 	mov	a,#___str_1
      0031A6 C0 E0            [24] 1457 	push	acc
      0031A8 74 8E            [12] 1458 	mov	a,#(___str_1 >> 8)
      0031AA C0 E0            [24] 1459 	push	acc
      0031AC 74 80            [12] 1460 	mov	a,#0x80
      0031AE C0 E0            [24] 1461 	push	acc
      0031B0 12 75 CA         [24] 1462 	lcall	_printf
      0031B3 E5 81            [12] 1463 	mov	a,sp
      0031B5 24 F9            [12] 1464 	add	a,#0xf9
      0031B7 F5 81            [12] 1465 	mov	sp,a
      0031B9 D0 02            [24] 1466 	pop	ar2
      0031BB D0 03            [24] 1467 	pop	ar3
      0031BD D0 04            [24] 1468 	pop	ar4
      0031BF D0 07            [24] 1469 	pop	ar7
                                   1470 ;	calc.c:35: printf("%011lo\t", d);
      0031C1 C0 07            [24] 1471 	push	ar7
      0031C3 C0 04            [24] 1472 	push	ar4
      0031C5 C0 03            [24] 1473 	push	ar3
      0031C7 C0 02            [24] 1474 	push	ar2
      0031C9 C0 02            [24] 1475 	push	ar2
      0031CB C0 03            [24] 1476 	push	ar3
      0031CD C0 04            [24] 1477 	push	ar4
      0031CF C0 07            [24] 1478 	push	ar7
      0031D1 74 93            [12] 1479 	mov	a,#___str_2
      0031D3 C0 E0            [24] 1480 	push	acc
      0031D5 74 8E            [12] 1481 	mov	a,#(___str_2 >> 8)
      0031D7 C0 E0            [24] 1482 	push	acc
      0031D9 74 80            [12] 1483 	mov	a,#0x80
      0031DB C0 E0            [24] 1484 	push	acc
      0031DD 12 75 CA         [24] 1485 	lcall	_printf
      0031E0 E5 81            [12] 1486 	mov	a,sp
      0031E2 24 F9            [12] 1487 	add	a,#0xf9
      0031E4 F5 81            [12] 1488 	mov	sp,a
      0031E6 D0 02            [24] 1489 	pop	ar2
      0031E8 D0 03            [24] 1490 	pop	ar3
      0031EA D0 04            [24] 1491 	pop	ar4
      0031EC D0 07            [24] 1492 	pop	ar7
                                   1493 ;	calc.c:36: printbin(d);
      0031EE E5 08            [12] 1494 	mov	a,_bp
      0031F0 24 16            [12] 1495 	add	a,#0x16
      0031F2 F8               [12] 1496 	mov	r0,a
      0031F3 A6 02            [24] 1497 	mov	@r0,ar2
      0031F5 08               [12] 1498 	inc	r0
      0031F6 A6 03            [24] 1499 	mov	@r0,ar3
      0031F8 08               [12] 1500 	inc	r0
      0031F9 A6 04            [24] 1501 	mov	@r0,ar4
      0031FB 08               [12] 1502 	inc	r0
      0031FC A6 07            [24] 1503 	mov	@r0,ar7
                                   1504 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031FE E5 08            [12] 1505 	mov	a,_bp
      003200 24 1A            [12] 1506 	add	a,#0x1a
      003202 F8               [12] 1507 	mov	r0,a
      003203 E4               [12] 1508 	clr	a
      003204 F6               [12] 1509 	mov	@r0,a
      003205 08               [12] 1510 	inc	r0
      003206 F6               [12] 1511 	mov	@r0,a
      003207 08               [12] 1512 	inc	r0
      003208 F6               [12] 1513 	mov	@r0,a
      003209 08               [12] 1514 	inc	r0
      00320A 76 80            [12] 1515 	mov	@r0,#0x80
                                   1516 ;	calc.c:83: return 1;
      00320C D0 07            [24] 1517 	pop	ar7
                                   1518 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      00320E                       1519 00154$:
                                   1520 ;	calc.c:27: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00320E C0 07            [24] 1521 	push	ar7
      003210 E5 08            [12] 1522 	mov	a,_bp
      003212 24 16            [12] 1523 	add	a,#0x16
      003214 F8               [12] 1524 	mov	r0,a
      003215 86 02            [24] 1525 	mov	ar2,@r0
      003217 08               [12] 1526 	inc	r0
      003218 86 03            [24] 1527 	mov	ar3,@r0
      00321A 08               [12] 1528 	inc	r0
      00321B 86 04            [24] 1529 	mov	ar4,@r0
      00321D 08               [12] 1530 	inc	r0
      00321E 86 07            [24] 1531 	mov	ar7,@r0
      003220 E5 08            [12] 1532 	mov	a,_bp
      003222 24 1A            [12] 1533 	add	a,#0x1a
      003224 F8               [12] 1534 	mov	r0,a
      003225 E6               [12] 1535 	mov	a,@r0
      003226 52 02            [12] 1536 	anl	ar2,a
      003228 08               [12] 1537 	inc	r0
      003229 E6               [12] 1538 	mov	a,@r0
      00322A 52 03            [12] 1539 	anl	ar3,a
      00322C 08               [12] 1540 	inc	r0
      00322D E6               [12] 1541 	mov	a,@r0
      00322E 52 04            [12] 1542 	anl	ar4,a
      003230 08               [12] 1543 	inc	r0
      003231 E6               [12] 1544 	mov	a,@r0
      003232 52 07            [12] 1545 	anl	ar7,a
      003234 EA               [12] 1546 	mov	a,r2
      003235 4B               [12] 1547 	orl	a,r3
      003236 4C               [12] 1548 	orl	a,r4
      003237 4F               [12] 1549 	orl	a,r7
      003238 D0 07            [24] 1550 	pop	ar7
      00323A 60 06            [24] 1551 	jz	00166$
      00323C 7B 31            [12] 1552 	mov	r3,#0x31
      00323E 7C 00            [12] 1553 	mov	r4,#0x00
      003240 80 04            [24] 1554 	sjmp	00167$
      003242                       1555 00166$:
      003242 7B 30            [12] 1556 	mov	r3,#0x30
      003244 7C 00            [12] 1557 	mov	r4,#0x00
      003246                       1558 00167$:
      003246 8B 82            [24] 1559 	mov	dpl,r3
      003248 8C 83            [24] 1560 	mov	dph,r4
      00324A C0 07            [24] 1561 	push	ar7
      00324C 12 71 72         [24] 1562 	lcall	_putchar
      00324F D0 07            [24] 1563 	pop	ar7
                                   1564 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      003251 E5 08            [12] 1565 	mov	a,_bp
      003253 24 1A            [12] 1566 	add	a,#0x1a
      003255 F8               [12] 1567 	mov	r0,a
      003256 08               [12] 1568 	inc	r0
      003257 08               [12] 1569 	inc	r0
      003258 08               [12] 1570 	inc	r0
      003259 E6               [12] 1571 	mov	a,@r0
      00325A C3               [12] 1572 	clr	c
      00325B 13               [12] 1573 	rrc	a
      00325C F6               [12] 1574 	mov	@r0,a
      00325D 18               [12] 1575 	dec	r0
      00325E E6               [12] 1576 	mov	a,@r0
      00325F 13               [12] 1577 	rrc	a
      003260 F6               [12] 1578 	mov	@r0,a
      003261 18               [12] 1579 	dec	r0
      003262 E6               [12] 1580 	mov	a,@r0
      003263 13               [12] 1581 	rrc	a
      003264 F6               [12] 1582 	mov	@r0,a
      003265 18               [12] 1583 	dec	r0
      003266 E6               [12] 1584 	mov	a,@r0
      003267 13               [12] 1585 	rrc	a
      003268 F6               [12] 1586 	mov	@r0,a
      003269 E5 08            [12] 1587 	mov	a,_bp
      00326B 24 1A            [12] 1588 	add	a,#0x1a
      00326D F8               [12] 1589 	mov	r0,a
      00326E E6               [12] 1590 	mov	a,@r0
      00326F 08               [12] 1591 	inc	r0
      003270 46               [12] 1592 	orl	a,@r0
      003271 08               [12] 1593 	inc	r0
      003272 46               [12] 1594 	orl	a,@r0
      003273 08               [12] 1595 	inc	r0
      003274 46               [12] 1596 	orl	a,@r0
      003275 70 97            [24] 1597 	jnz	00154$
                                   1598 ;	calc.c:79: printstr("\r\n");
      003277 7D 9B            [12] 1599 	mov	r5,#___str_3
      003279 7B 8E            [12] 1600 	mov	r3,#(___str_3 >> 8)
      00327B 7A 80            [12] 1601 	mov	r2,#0x80
                                   1602 ;	calc.c:20: return;
      00327D                       1603 00157$:
                                   1604 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00327D 8D 82            [24] 1605 	mov	dpl,r5
      00327F 8B 83            [24] 1606 	mov	dph,r3
      003281 8A F0            [24] 1607 	mov	b,r2
      003283 12 76 03         [24] 1608 	lcall	__gptrget
      003286 FE               [12] 1609 	mov	r6,a
      003287 60 26            [24] 1610 	jz	00133$
      003289 C0 07            [24] 1611 	push	ar7
      00328B 8E 04            [24] 1612 	mov	ar4,r6
      00328D 7F 00            [12] 1613 	mov	r7,#0x00
      00328F 8C 82            [24] 1614 	mov	dpl,r4
      003291 8F 83            [24] 1615 	mov	dph,r7
      003293 C0 07            [24] 1616 	push	ar7
      003295 C0 05            [24] 1617 	push	ar5
      003297 C0 03            [24] 1618 	push	ar3
      003299 C0 02            [24] 1619 	push	ar2
      00329B 12 71 72         [24] 1620 	lcall	_putchar
      00329E D0 02            [24] 1621 	pop	ar2
      0032A0 D0 03            [24] 1622 	pop	ar3
      0032A2 D0 05            [24] 1623 	pop	ar5
      0032A4 D0 07            [24] 1624 	pop	ar7
      0032A6 0D               [12] 1625 	inc	r5
      0032A7 BD 00 01         [24] 1626 	cjne	r5,#0x00,00340$
      0032AA 0B               [12] 1627 	inc	r3
      0032AB                       1628 00340$:
      0032AB D0 07            [24] 1629 	pop	ar7
                                   1630 ;	calc.c:79: printstr("\r\n");
      0032AD 80 CE            [24] 1631 	sjmp	00157$
      0032AF                       1632 00133$:
                                   1633 ;	calc.c:76: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      0032AF 8F 06            [24] 1634 	mov	ar6,r7
      0032B1 7D 00            [12] 1635 	mov	r5,#0x00
      0032B3 7A 40            [12] 1636 	mov	r2,#0x40
      0032B5 C0 07            [24] 1637 	push	ar7
      0032B7 E5 08            [12] 1638 	mov	a,_bp
      0032B9 24 08            [12] 1639 	add	a,#0x08
      0032BB F8               [12] 1640 	mov	r0,a
      0032BC 86 82            [24] 1641 	mov	dpl,@r0
      0032BE 08               [12] 1642 	inc	r0
      0032BF 86 83            [24] 1643 	mov	dph,@r0
      0032C1 08               [12] 1644 	inc	r0
      0032C2 86 F0            [24] 1645 	mov	b,@r0
      0032C4 12 76 03         [24] 1646 	lcall	__gptrget
      0032C7 FB               [12] 1647 	mov	r3,a
      0032C8 A3               [24] 1648 	inc	dptr
      0032C9 12 76 03         [24] 1649 	lcall	__gptrget
      0032CC FC               [12] 1650 	mov	r4,a
      0032CD A3               [24] 1651 	inc	dptr
      0032CE 12 76 03         [24] 1652 	lcall	__gptrget
      0032D1 FF               [12] 1653 	mov	r7,a
      0032D2 C0 06            [24] 1654 	push	ar6
      0032D4 C0 05            [24] 1655 	push	ar5
      0032D6 C0 02            [24] 1656 	push	ar2
      0032D8 8B 82            [24] 1657 	mov	dpl,r3
      0032DA 8C 83            [24] 1658 	mov	dph,r4
      0032DC 8F F0            [24] 1659 	mov	b,r7
      0032DE 12 27 83         [24] 1660 	lcall	_stack_pop
      0032E1 AC 82            [24] 1661 	mov	r4,dpl
      0032E3 AF 83            [24] 1662 	mov	r7,dph
      0032E5 15 81            [12] 1663 	dec	sp
      0032E7 15 81            [12] 1664 	dec	sp
      0032E9 15 81            [12] 1665 	dec	sp
      0032EB 8C 05            [24] 1666 	mov	ar5,r4
      0032ED 8F 06            [24] 1667 	mov	ar6,r7
      0032EF D0 07            [24] 1668 	pop	ar7
      0032F1 02 30 E8         [24] 1669 	ljmp	00160$
      0032F4                       1670 00113$:
                                   1671 ;	calc.c:83: return 1;
      0032F4 90 00 01         [24] 1672 	mov	dptr,#0x0001
                                   1673 ;	calc.c:84: }
      0032F7 85 08 81         [24] 1674 	mov	sp,_bp
      0032FA D0 08            [24] 1675 	pop	_bp
      0032FC 22               [24] 1676 	ret
                                   1677 ;------------------------------------------------------------
                                   1678 ;Allocation info for local variables in function 'dump_peek'
                                   1679 ;------------------------------------------------------------
                                   1680 ;d                         Allocated to stack - _bp -6
                                   1681 ;_ctx                      Allocated to registers 
                                   1682 ;__1310720021              Allocated to registers 
                                   1683 ;s                         Allocated to registers r5 r6 r7 
                                   1684 ;__1310720023              Allocated to registers r4 r5 r6 r7 
                                   1685 ;d                         Allocated to registers 
                                   1686 ;__1310720001              Allocated to registers 
                                   1687 ;d                         Allocated to stack - _bp +1
                                   1688 ;mask                      Allocated to stack - _bp +5
                                   1689 ;__1310720025              Allocated to registers 
                                   1690 ;s                         Allocated to registers r5 r6 r7 
                                   1691 ;------------------------------------------------------------
                                   1692 ;	calc.c:86: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1693 ;	-----------------------------------------
                                   1694 ;	 function dump_peek
                                   1695 ;	-----------------------------------------
      0032FD                       1696 _dump_peek:
      0032FD C0 08            [24] 1697 	push	_bp
      0032FF E5 81            [12] 1698 	mov	a,sp
      003301 F5 08            [12] 1699 	mov	_bp,a
      003303 24 08            [12] 1700 	add	a,#0x08
      003305 F5 81            [12] 1701 	mov	sp,a
                                   1702 ;	calc.c:89: printstr("PSVA\t");
      003307 7D BC            [12] 1703 	mov	r5,#___str_7
      003309 7E 8E            [12] 1704 	mov	r6,#(___str_7 >> 8)
      00330B 7F 80            [12] 1705 	mov	r7,#0x80
                                   1706 ;	calc.c:20: return;
      00330D                       1707 00109$:
                                   1708 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00330D 8D 82            [24] 1709 	mov	dpl,r5
      00330F 8E 83            [24] 1710 	mov	dph,r6
      003311 8F F0            [24] 1711 	mov	b,r7
      003313 12 76 03         [24] 1712 	lcall	__gptrget
      003316 FC               [12] 1713 	mov	r4,a
      003317 60 1C            [24] 1714 	jz	00102$
      003319 7B 00            [12] 1715 	mov	r3,#0x00
      00331B 8C 82            [24] 1716 	mov	dpl,r4
      00331D 8B 83            [24] 1717 	mov	dph,r3
      00331F C0 07            [24] 1718 	push	ar7
      003321 C0 06            [24] 1719 	push	ar6
      003323 C0 05            [24] 1720 	push	ar5
      003325 12 71 72         [24] 1721 	lcall	_putchar
      003328 D0 05            [24] 1722 	pop	ar5
      00332A D0 06            [24] 1723 	pop	ar6
      00332C D0 07            [24] 1724 	pop	ar7
      00332E 0D               [12] 1725 	inc	r5
                                   1726 ;	calc.c:89: printstr("PSVA\t");
      00332F BD 00 DB         [24] 1727 	cjne	r5,#0x00,00109$
      003332 0E               [12] 1728 	inc	r6
      003333 80 D8            [24] 1729 	sjmp	00109$
      003335                       1730 00102$:
                                   1731 ;	calc.c:90: printall(d);
      003335 E5 08            [12] 1732 	mov	a,_bp
      003337 24 FA            [12] 1733 	add	a,#0xfa
      003339 F8               [12] 1734 	mov	r0,a
      00333A 86 04            [24] 1735 	mov	ar4,@r0
      00333C 08               [12] 1736 	inc	r0
      00333D 86 05            [24] 1737 	mov	ar5,@r0
      00333F 08               [12] 1738 	inc	r0
      003340 86 06            [24] 1739 	mov	ar6,@r0
      003342 08               [12] 1740 	inc	r0
      003343 86 07            [24] 1741 	mov	ar7,@r0
                                   1742 ;	calc.c:33: printf("%08lx\t", d);
      003345 C0 07            [24] 1743 	push	ar7
      003347 C0 06            [24] 1744 	push	ar6
      003349 C0 05            [24] 1745 	push	ar5
      00334B C0 04            [24] 1746 	push	ar4
      00334D C0 04            [24] 1747 	push	ar4
      00334F C0 05            [24] 1748 	push	ar5
      003351 C0 06            [24] 1749 	push	ar6
      003353 C0 07            [24] 1750 	push	ar7
      003355 74 84            [12] 1751 	mov	a,#___str_0
      003357 C0 E0            [24] 1752 	push	acc
      003359 74 8E            [12] 1753 	mov	a,#(___str_0 >> 8)
      00335B C0 E0            [24] 1754 	push	acc
      00335D 74 80            [12] 1755 	mov	a,#0x80
      00335F C0 E0            [24] 1756 	push	acc
      003361 12 75 CA         [24] 1757 	lcall	_printf
      003364 E5 81            [12] 1758 	mov	a,sp
      003366 24 F9            [12] 1759 	add	a,#0xf9
      003368 F5 81            [12] 1760 	mov	sp,a
      00336A D0 04            [24] 1761 	pop	ar4
      00336C D0 05            [24] 1762 	pop	ar5
      00336E D0 06            [24] 1763 	pop	ar6
      003370 D0 07            [24] 1764 	pop	ar7
                                   1765 ;	calc.c:34: printf("% 11ld\t", d);
      003372 C0 07            [24] 1766 	push	ar7
      003374 C0 06            [24] 1767 	push	ar6
      003376 C0 05            [24] 1768 	push	ar5
      003378 C0 04            [24] 1769 	push	ar4
      00337A C0 04            [24] 1770 	push	ar4
      00337C C0 05            [24] 1771 	push	ar5
      00337E C0 06            [24] 1772 	push	ar6
      003380 C0 07            [24] 1773 	push	ar7
      003382 74 8B            [12] 1774 	mov	a,#___str_1
      003384 C0 E0            [24] 1775 	push	acc
      003386 74 8E            [12] 1776 	mov	a,#(___str_1 >> 8)
      003388 C0 E0            [24] 1777 	push	acc
      00338A 74 80            [12] 1778 	mov	a,#0x80
      00338C C0 E0            [24] 1779 	push	acc
      00338E 12 75 CA         [24] 1780 	lcall	_printf
      003391 E5 81            [12] 1781 	mov	a,sp
      003393 24 F9            [12] 1782 	add	a,#0xf9
      003395 F5 81            [12] 1783 	mov	sp,a
      003397 D0 04            [24] 1784 	pop	ar4
      003399 D0 05            [24] 1785 	pop	ar5
      00339B D0 06            [24] 1786 	pop	ar6
      00339D D0 07            [24] 1787 	pop	ar7
                                   1788 ;	calc.c:35: printf("%011lo\t", d);
      00339F C0 07            [24] 1789 	push	ar7
      0033A1 C0 06            [24] 1790 	push	ar6
      0033A3 C0 05            [24] 1791 	push	ar5
      0033A5 C0 04            [24] 1792 	push	ar4
      0033A7 C0 04            [24] 1793 	push	ar4
      0033A9 C0 05            [24] 1794 	push	ar5
      0033AB C0 06            [24] 1795 	push	ar6
      0033AD C0 07            [24] 1796 	push	ar7
      0033AF 74 93            [12] 1797 	mov	a,#___str_2
      0033B1 C0 E0            [24] 1798 	push	acc
      0033B3 74 8E            [12] 1799 	mov	a,#(___str_2 >> 8)
      0033B5 C0 E0            [24] 1800 	push	acc
      0033B7 74 80            [12] 1801 	mov	a,#0x80
      0033B9 C0 E0            [24] 1802 	push	acc
      0033BB 12 75 CA         [24] 1803 	lcall	_printf
      0033BE E5 81            [12] 1804 	mov	a,sp
      0033C0 24 F9            [12] 1805 	add	a,#0xf9
      0033C2 F5 81            [12] 1806 	mov	sp,a
      0033C4 D0 04            [24] 1807 	pop	ar4
      0033C6 D0 05            [24] 1808 	pop	ar5
      0033C8 D0 06            [24] 1809 	pop	ar6
      0033CA D0 07            [24] 1810 	pop	ar7
                                   1811 ;	calc.c:36: printbin(d);
      0033CC A8 08            [24] 1812 	mov	r0,_bp
      0033CE 08               [12] 1813 	inc	r0
      0033CF A6 04            [24] 1814 	mov	@r0,ar4
      0033D1 08               [12] 1815 	inc	r0
      0033D2 A6 05            [24] 1816 	mov	@r0,ar5
      0033D4 08               [12] 1817 	inc	r0
      0033D5 A6 06            [24] 1818 	mov	@r0,ar6
      0033D7 08               [12] 1819 	inc	r0
      0033D8 A6 07            [24] 1820 	mov	@r0,ar7
                                   1821 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      0033DA E5 08            [12] 1822 	mov	a,_bp
      0033DC 24 05            [12] 1823 	add	a,#0x05
      0033DE F8               [12] 1824 	mov	r0,a
      0033DF E4               [12] 1825 	clr	a
      0033E0 F6               [12] 1826 	mov	@r0,a
      0033E1 08               [12] 1827 	inc	r0
      0033E2 F6               [12] 1828 	mov	@r0,a
      0033E3 08               [12] 1829 	inc	r0
      0033E4 F6               [12] 1830 	mov	@r0,a
      0033E5 08               [12] 1831 	inc	r0
      0033E6 76 80            [12] 1832 	mov	@r0,#0x80
      0033E8                       1833 00111$:
                                   1834 ;	calc.c:27: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0033E8 A8 08            [24] 1835 	mov	r0,_bp
      0033EA 08               [12] 1836 	inc	r0
      0033EB 86 04            [24] 1837 	mov	ar4,@r0
      0033ED 08               [12] 1838 	inc	r0
      0033EE 86 05            [24] 1839 	mov	ar5,@r0
      0033F0 08               [12] 1840 	inc	r0
      0033F1 86 06            [24] 1841 	mov	ar6,@r0
      0033F3 08               [12] 1842 	inc	r0
      0033F4 86 07            [24] 1843 	mov	ar7,@r0
      0033F6 E5 08            [12] 1844 	mov	a,_bp
      0033F8 24 05            [12] 1845 	add	a,#0x05
      0033FA F8               [12] 1846 	mov	r0,a
      0033FB E6               [12] 1847 	mov	a,@r0
      0033FC 52 04            [12] 1848 	anl	ar4,a
      0033FE 08               [12] 1849 	inc	r0
      0033FF E6               [12] 1850 	mov	a,@r0
      003400 52 05            [12] 1851 	anl	ar5,a
      003402 08               [12] 1852 	inc	r0
      003403 E6               [12] 1853 	mov	a,@r0
      003404 52 06            [12] 1854 	anl	ar6,a
      003406 08               [12] 1855 	inc	r0
      003407 E6               [12] 1856 	mov	a,@r0
      003408 52 07            [12] 1857 	anl	ar7,a
      00340A EC               [12] 1858 	mov	a,r4
      00340B 4D               [12] 1859 	orl	a,r5
      00340C 4E               [12] 1860 	orl	a,r6
      00340D 4F               [12] 1861 	orl	a,r7
      00340E 60 06            [24] 1862 	jz	00118$
      003410 7E 31            [12] 1863 	mov	r6,#0x31
      003412 7F 00            [12] 1864 	mov	r7,#0x00
      003414 80 04            [24] 1865 	sjmp	00119$
      003416                       1866 00118$:
      003416 7E 30            [12] 1867 	mov	r6,#0x30
      003418 7F 00            [12] 1868 	mov	r7,#0x00
      00341A                       1869 00119$:
      00341A 8E 82            [24] 1870 	mov	dpl,r6
      00341C 8F 83            [24] 1871 	mov	dph,r7
      00341E 12 71 72         [24] 1872 	lcall	_putchar
                                   1873 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      003421 E5 08            [12] 1874 	mov	a,_bp
      003423 24 05            [12] 1875 	add	a,#0x05
      003425 F8               [12] 1876 	mov	r0,a
      003426 08               [12] 1877 	inc	r0
      003427 08               [12] 1878 	inc	r0
      003428 08               [12] 1879 	inc	r0
      003429 E6               [12] 1880 	mov	a,@r0
      00342A C3               [12] 1881 	clr	c
      00342B 13               [12] 1882 	rrc	a
      00342C F6               [12] 1883 	mov	@r0,a
      00342D 18               [12] 1884 	dec	r0
      00342E E6               [12] 1885 	mov	a,@r0
      00342F 13               [12] 1886 	rrc	a
      003430 F6               [12] 1887 	mov	@r0,a
      003431 18               [12] 1888 	dec	r0
      003432 E6               [12] 1889 	mov	a,@r0
      003433 13               [12] 1890 	rrc	a
      003434 F6               [12] 1891 	mov	@r0,a
      003435 18               [12] 1892 	dec	r0
      003436 E6               [12] 1893 	mov	a,@r0
      003437 13               [12] 1894 	rrc	a
      003438 F6               [12] 1895 	mov	@r0,a
      003439 E5 08            [12] 1896 	mov	a,_bp
      00343B 24 05            [12] 1897 	add	a,#0x05
      00343D F8               [12] 1898 	mov	r0,a
      00343E E6               [12] 1899 	mov	a,@r0
      00343F 08               [12] 1900 	inc	r0
      003440 46               [12] 1901 	orl	a,@r0
      003441 08               [12] 1902 	inc	r0
      003442 46               [12] 1903 	orl	a,@r0
      003443 08               [12] 1904 	inc	r0
      003444 46               [12] 1905 	orl	a,@r0
      003445 70 A1            [24] 1906 	jnz	00111$
                                   1907 ;	calc.c:91: printstr("\r\n");
      003447 7D 9B            [12] 1908 	mov	r5,#___str_3
      003449 7E 8E            [12] 1909 	mov	r6,#(___str_3 >> 8)
      00344B 7F 80            [12] 1910 	mov	r7,#0x80
                                   1911 ;	calc.c:20: return;
      00344D                       1912 00114$:
                                   1913 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00344D 8D 82            [24] 1914 	mov	dpl,r5
      00344F 8E 83            [24] 1915 	mov	dph,r6
      003451 8F F0            [24] 1916 	mov	b,r7
      003453 12 76 03         [24] 1917 	lcall	__gptrget
      003456 FC               [12] 1918 	mov	r4,a
      003457 60 1C            [24] 1919 	jz	00107$
      003459 7B 00            [12] 1920 	mov	r3,#0x00
      00345B 8C 82            [24] 1921 	mov	dpl,r4
      00345D 8B 83            [24] 1922 	mov	dph,r3
      00345F C0 07            [24] 1923 	push	ar7
      003461 C0 06            [24] 1924 	push	ar6
      003463 C0 05            [24] 1925 	push	ar5
      003465 12 71 72         [24] 1926 	lcall	_putchar
      003468 D0 05            [24] 1927 	pop	ar5
      00346A D0 06            [24] 1928 	pop	ar6
      00346C D0 07            [24] 1929 	pop	ar7
      00346E 0D               [12] 1930 	inc	r5
                                   1931 ;	calc.c:91: printstr("\r\n");
      00346F BD 00 DB         [24] 1932 	cjne	r5,#0x00,00114$
      003472 0E               [12] 1933 	inc	r6
      003473 80 D8            [24] 1934 	sjmp	00114$
      003475                       1935 00107$:
                                   1936 ;	calc.c:93: return 1;
      003475 90 00 01         [24] 1937 	mov	dptr,#0x0001
                                   1938 ;	calc.c:94: }
      003478 85 08 81         [24] 1939 	mov	sp,_bp
      00347B D0 08            [24] 1940 	pop	_bp
      00347D 22               [24] 1941 	ret
                                   1942 ;------------------------------------------------------------
                                   1943 ;Allocation info for local variables in function 'operator'
                                   1944 ;------------------------------------------------------------
                                   1945 ;delta                     Allocated to stack - _bp -5
                                   1946 ;_ctx                      Allocated to stack - _bp +1
                                   1947 ;ctx                       Allocated to stack - _bp +18
                                   1948 ;t0                        Allocated to registers r7 r6 r5 
                                   1949 ;d0                        Allocated to stack - _bp +21
                                   1950 ;d1                        Allocated to stack - _bp +25
                                   1951 ;__1966080027              Allocated to registers 
                                   1952 ;s                         Allocated to registers r7 r6 r5 
                                   1953 ;__1966080029              Allocated to registers 
                                   1954 ;s                         Allocated to registers r7 r6 r5 
                                   1955 ;__2621440031              Allocated to registers 
                                   1956 ;s                         Allocated to registers r7 r6 r5 
                                   1957 ;__2621440033              Allocated to registers r7 r6 r5 r4 
                                   1958 ;d                         Allocated to stack - _bp +29
                                   1959 ;__1310720001              Allocated to registers 
                                   1960 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1961 ;mask                      Allocated to stack - _bp +33
                                   1962 ;__2621440035              Allocated to registers 
                                   1963 ;s                         Allocated to registers r7 r6 r5 
                                   1964 ;__1966080037              Allocated to registers 
                                   1965 ;s                         Allocated to registers r7 r6 r5 
                                   1966 ;__1966080039              Allocated to registers 
                                   1967 ;s                         Allocated to registers r7 r6 r5 
                                   1968 ;__1966080041              Allocated to registers 
                                   1969 ;s                         Allocated to registers r7 r6 r5 
                                   1970 ;__1966080043              Allocated to registers 
                                   1971 ;s                         Allocated to registers r7 r6 r5 
                                   1972 ;__2621440045              Allocated to registers 
                                   1973 ;s                         Allocated to registers r7 r6 r5 
                                   1974 ;__2621440047              Allocated to registers r7 r6 r5 r4 
                                   1975 ;d                         Allocated to stack - _bp +29
                                   1976 ;__1310720001              Allocated to registers 
                                   1977 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1978 ;mask                      Allocated to stack - _bp +33
                                   1979 ;__2621440049              Allocated to registers 
                                   1980 ;s                         Allocated to registers r7 r6 r5 
                                   1981 ;__1966080051              Allocated to registers 
                                   1982 ;s                         Allocated to registers r7 r6 r5 
                                   1983 ;__1966080053              Allocated to registers 
                                   1984 ;s                         Allocated to registers r7 r6 r5 
                                   1985 ;__2621440055              Allocated to registers 
                                   1986 ;s                         Allocated to registers r7 r6 r5 
                                   1987 ;__1966080057              Allocated to registers 
                                   1988 ;s                         Allocated to registers r7 r6 r5 
                                   1989 ;__3276800059              Allocated to registers 
                                   1990 ;s                         Allocated to registers r7 r6 r5 
                                   1991 ;__1966080061              Allocated to registers 
                                   1992 ;s                         Allocated to registers r7 r6 r5 
                                   1993 ;__3276800063              Allocated to registers 
                                   1994 ;s                         Allocated to registers r7 r6 r5 
                                   1995 ;__1966080065              Allocated to registers 
                                   1996 ;s                         Allocated to registers r7 r6 r5 
                                   1997 ;__1966080067              Allocated to registers 
                                   1998 ;s                         Allocated to registers r7 r6 r5 
                                   1999 ;__1966080069              Allocated to registers 
                                   2000 ;s                         Allocated to registers r7 r6 r5 
                                   2001 ;__1966080071              Allocated to registers 
                                   2002 ;s                         Allocated to registers r7 r6 r5 
                                   2003 ;__1966080073              Allocated to registers 
                                   2004 ;s                         Allocated to registers r7 r6 r5 
                                   2005 ;__3276800075              Allocated to registers 
                                   2006 ;s                         Allocated to registers r7 r6 r5 
                                   2007 ;__1966080077              Allocated to registers 
                                   2008 ;s                         Allocated to registers r7 r6 r5 
                                   2009 ;__2621440079              Allocated to registers 
                                   2010 ;s                         Allocated to registers r7 r6 r5 
                                   2011 ;__1966080081              Allocated to registers 
                                   2012 ;s                         Allocated to registers r7 r6 r5 
                                   2013 ;__2621440083              Allocated to registers 
                                   2014 ;s                         Allocated to registers r7 r6 r5 
                                   2015 ;__1966080085              Allocated to registers 
                                   2016 ;s                         Allocated to registers r7 r6 r5 
                                   2017 ;__2621440087              Allocated to registers 
                                   2018 ;s                         Allocated to registers r7 r6 r5 
                                   2019 ;__1966080089              Allocated to registers 
                                   2020 ;s                         Allocated to registers r7 r6 r5 
                                   2021 ;__2621440091              Allocated to registers 
                                   2022 ;s                         Allocated to registers r7 r6 r5 
                                   2023 ;__2621440093              Allocated to registers 
                                   2024 ;s                         Allocated to registers r7 r6 r5 
                                   2025 ;__1966080095              Allocated to registers 
                                   2026 ;s                         Allocated to registers r7 r6 r5 
                                   2027 ;__2621440097              Allocated to registers 
                                   2028 ;s                         Allocated to registers r7 r6 r5 
                                   2029 ;__2621440099              Allocated to registers 
                                   2030 ;s                         Allocated to registers r7 r6 r5 
                                   2031 ;__1966080101              Allocated to registers 
                                   2032 ;s                         Allocated to registers r5 r4 r3 
                                   2033 ;__2621440103              Allocated to registers 
                                   2034 ;s                         Allocated to registers r5 r4 r3 
                                   2035 ;__1966080105              Allocated to registers 
                                   2036 ;s                         Allocated to registers r5 r4 r3 
                                   2037 ;__2621440107              Allocated to registers 
                                   2038 ;s                         Allocated to registers r5 r4 r3 
                                   2039 ;__1966080109              Allocated to registers 
                                   2040 ;s                         Allocated to registers r5 r4 r3 
                                   2041 ;__2621440111              Allocated to registers 
                                   2042 ;s                         Allocated to registers r5 r4 r3 
                                   2043 ;__1966080113              Allocated to registers 
                                   2044 ;s                         Allocated to registers r5 r4 r3 
                                   2045 ;__2621440115              Allocated to registers 
                                   2046 ;s                         Allocated to registers r5 r4 r3 
                                   2047 ;__1966080117              Allocated to registers 
                                   2048 ;s                         Allocated to registers r5 r4 r3 
                                   2049 ;__2621440119              Allocated to registers 
                                   2050 ;s                         Allocated to registers r5 r4 r3 
                                   2051 ;__1966080121              Allocated to registers 
                                   2052 ;s                         Allocated to registers r5 r4 r3 
                                   2053 ;__2621440123              Allocated to registers 
                                   2054 ;s                         Allocated to registers r5 r4 r3 
                                   2055 ;__1966080125              Allocated to registers 
                                   2056 ;s                         Allocated to registers r5 r4 r3 
                                   2057 ;sloc0                     Allocated to stack - _bp +346
                                   2058 ;sloc1                     Allocated to stack - _bp +4
                                   2059 ;sloc2                     Allocated to stack - _bp +7
                                   2060 ;sloc3                     Allocated to stack - _bp +11
                                   2061 ;sloc4                     Allocated to stack - _bp +14
                                   2062 ;------------------------------------------------------------
                                   2063 ;	calc.c:96: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   2064 ;	-----------------------------------------
                                   2065 ;	 function operator
                                   2066 ;	-----------------------------------------
      00347E                       2067 _operator:
      00347E C0 08            [24] 2068 	push	_bp
      003480 85 81 08         [24] 2069 	mov	_bp,sp
      003483 C0 82            [24] 2070 	push	dpl
      003485 C0 83            [24] 2071 	push	dph
      003487 C0 F0            [24] 2072 	push	b
      003489 E5 81            [12] 2073 	mov	a,sp
      00348B 24 21            [12] 2074 	add	a,#0x21
      00348D F5 81            [12] 2075 	mov	sp,a
                                   2076 ;	calc.c:97: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      00348F A8 08            [24] 2077 	mov	r0,_bp
      003491 08               [12] 2078 	inc	r0
      003492 E5 08            [12] 2079 	mov	a,_bp
      003494 24 12            [12] 2080 	add	a,#0x12
      003496 F9               [12] 2081 	mov	r1,a
      003497 E6               [12] 2082 	mov	a,@r0
      003498 F7               [12] 2083 	mov	@r1,a
      003499 08               [12] 2084 	inc	r0
      00349A 09               [12] 2085 	inc	r1
      00349B E6               [12] 2086 	mov	a,@r0
      00349C F7               [12] 2087 	mov	@r1,a
      00349D 08               [12] 2088 	inc	r0
      00349E 09               [12] 2089 	inc	r1
      00349F E6               [12] 2090 	mov	a,@r0
      0034A0 F7               [12] 2091 	mov	@r1,a
                                   2092 ;	calc.c:101: switch (ctx->digit[0]) {
      0034A1 E5 08            [12] 2093 	mov	a,_bp
      0034A3 24 12            [12] 2094 	add	a,#0x12
      0034A5 F8               [12] 2095 	mov	r0,a
      0034A6 74 07            [12] 2096 	mov	a,#0x07
      0034A8 26               [12] 2097 	add	a,@r0
      0034A9 FD               [12] 2098 	mov	r5,a
      0034AA E4               [12] 2099 	clr	a
      0034AB 08               [12] 2100 	inc	r0
      0034AC 36               [12] 2101 	addc	a,@r0
      0034AD FE               [12] 2102 	mov	r6,a
      0034AE 08               [12] 2103 	inc	r0
      0034AF 86 07            [24] 2104 	mov	ar7,@r0
      0034B1 8D 82            [24] 2105 	mov	dpl,r5
      0034B3 8E 83            [24] 2106 	mov	dph,r6
      0034B5 8F F0            [24] 2107 	mov	b,r7
      0034B7 12 76 03         [24] 2108 	lcall	__gptrget
      0034BA FC               [12] 2109 	mov	r4,a
      0034BB BC 23 03         [24] 2110 	cjne	r4,#0x23,01234$
      0034BE 02 4B 93         [24] 2111 	ljmp	00189$
      0034C1                       2112 01234$:
      0034C1 BC 25 03         [24] 2113 	cjne	r4,#0x25,01235$
      0034C4 02 4B 93         [24] 2114 	ljmp	00189$
      0034C7                       2115 01235$:
      0034C7 BC 26 03         [24] 2116 	cjne	r4,#0x26,01236$
      0034CA 02 4E 9D         [24] 2117 	ljmp	00202$
      0034CD                       2118 01236$:
      0034CD BC 2A 03         [24] 2119 	cjne	r4,#0x2a,01237$
      0034D0 02 46 C7         [24] 2120 	ljmp	00167$
      0034D3                       2121 01237$:
      0034D3 BC 2B 03         [24] 2122 	cjne	r4,#0x2b,01238$
      0034D6 02 43 98         [24] 2123 	ljmp	00153$
      0034D9                       2124 01238$:
      0034D9 BC 2D 03         [24] 2125 	cjne	r4,#0x2d,01239$
      0034DC 02 45 2F         [24] 2126 	ljmp	00160$
      0034DF                       2127 01239$:
      0034DF BC 2E 03         [24] 2128 	cjne	r4,#0x2e,01240$
      0034E2 02 38 4B         [24] 2129 	ljmp	00109$
      0034E5                       2130 01240$:
      0034E5 BC 2F 03         [24] 2131 	cjne	r4,#0x2f,01241$
      0034E8 02 48 85         [24] 2132 	ljmp	00175$
      0034EB                       2133 01241$:
      0034EB BC 3C 03         [24] 2134 	cjne	r4,#0x3c,01242$
      0034EE 02 57 30         [24] 2135 	ljmp	00237$
      0034F1                       2136 01242$:
      0034F1 BC 3E 03         [24] 2137 	cjne	r4,#0x3e,01243$
      0034F4 02 53 B3         [24] 2138 	ljmp	00223$
      0034F7                       2139 01243$:
      0034F7 BC 4D 03         [24] 2140 	cjne	r4,#0x4d,01244$
      0034FA 02 3D DE         [24] 2141 	ljmp	00127$
      0034FD                       2142 01244$:
      0034FD BC 50 03         [24] 2143 	cjne	r4,#0x50,01245$
      003500 02 3A 84         [24] 2144 	ljmp	00113$
      003503                       2145 01245$:
      003503 BC 54 03         [24] 2146 	cjne	r4,#0x54,01246$
      003506 02 41 28         [24] 2147 	ljmp	00145$
      003509                       2148 01246$:
      003509 BC 55 03         [24] 2149 	cjne	r4,#0x55,01247$
      00350C 02 40 29         [24] 2150 	ljmp	00139$
      00350F                       2151 01247$:
      00350F BC 56 03         [24] 2152 	cjne	r4,#0x56,01248$
      003512 02 37 92         [24] 2153 	ljmp	00105$
      003515                       2154 01248$:
      003515 BC 58 03         [24] 2155 	cjne	r4,#0x58,01249$
      003518 02 42 F9         [24] 2156 	ljmp	00152$
      00351B                       2157 01249$:
      00351B BC 5C 03         [24] 2158 	cjne	r4,#0x5c,01250$
      00351E 02 48 85         [24] 2159 	ljmp	00175$
      003521                       2160 01250$:
      003521 BC 5D 03         [24] 2161 	cjne	r4,#0x5d,01251$
      003524 02 55 69         [24] 2162 	ljmp	00230$
      003527                       2163 01251$:
      003527 BC 5E 03         [24] 2164 	cjne	r4,#0x5e,01252$
      00352A 02 52 01         [24] 2165 	ljmp	00216$
      00352D                       2166 01252$:
      00352D BC 6D 03         [24] 2167 	cjne	r4,#0x6d,01253$
      003530 02 3C 92         [24] 2168 	ljmp	00121$
      003533                       2169 01253$:
      003533 BC 70 03         [24] 2170 	cjne	r4,#0x70,01254$
      003536 02 38 4B         [24] 2171 	ljmp	00109$
      003539                       2172 01254$:
      003539 BC 75 03         [24] 2173 	cjne	r4,#0x75,01255$
      00353C 02 3F 2A         [24] 2174 	ljmp	00133$
      00353F                       2175 01255$:
      00353F BC 76 02         [24] 2176 	cjne	r4,#0x76,01256$
      003542 80 15            [24] 2177 	sjmp	00101$
      003544                       2178 01256$:
      003544 BC 78 03         [24] 2179 	cjne	r4,#0x78,01257$
      003547 02 3A D9         [24] 2180 	ljmp	00114$
      00354A                       2181 01257$:
      00354A BC 7C 03         [24] 2182 	cjne	r4,#0x7c,01258$
      00354D 02 50 4F         [24] 2183 	ljmp	00209$
      003550                       2184 01258$:
      003550 BC 7E 03         [24] 2185 	cjne	r4,#0x7e,01259$
      003553 02 58 EB         [24] 2186 	ljmp	00244$
      003556                       2187 01259$:
      003556 02 59 D0         [24] 2188 	ljmp	00248$
                                   2189 ;	calc.c:102: case 'v':
      003559                       2190 00101$:
                                   2191 ;	calc.c:103: printstr("\r\n");
      003559 7F 9B            [12] 2192 	mov	r7,#___str_3
      00355B 7E 8E            [12] 2193 	mov	r6,#(___str_3 >> 8)
      00355D 7D 80            [12] 2194 	mov	r5,#0x80
                                   2195 ;	calc.c:20: return;
      00355F                       2196 00353$:
                                   2197 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00355F 8F 82            [24] 2198 	mov	dpl,r7
      003561 8E 83            [24] 2199 	mov	dph,r6
      003563 8D F0            [24] 2200 	mov	b,r5
      003565 12 76 03         [24] 2201 	lcall	__gptrget
      003568 FC               [12] 2202 	mov	r4,a
      003569 60 1C            [24] 2203 	jz	00251$
      00356B 7B 00            [12] 2204 	mov	r3,#0x00
      00356D 8C 82            [24] 2205 	mov	dpl,r4
      00356F 8B 83            [24] 2206 	mov	dph,r3
      003571 C0 07            [24] 2207 	push	ar7
      003573 C0 06            [24] 2208 	push	ar6
      003575 C0 05            [24] 2209 	push	ar5
      003577 12 71 72         [24] 2210 	lcall	_putchar
      00357A D0 05            [24] 2211 	pop	ar5
      00357C D0 06            [24] 2212 	pop	ar6
      00357E D0 07            [24] 2213 	pop	ar7
      003580 0F               [12] 2214 	inc	r7
                                   2215 ;	calc.c:103: printstr("\r\n");
      003581 BF 00 DB         [24] 2216 	cjne	r7,#0x00,00353$
      003584 0E               [12] 2217 	inc	r6
      003585 80 D8            [24] 2218 	sjmp	00353$
      003587                       2219 00251$:
                                   2220 ;	calc.c:104: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003587 E5 08            [12] 2221 	mov	a,_bp
      003589 24 15            [12] 2222 	add	a,#0x15
      00358B FF               [12] 2223 	mov	r7,a
      00358C 7E 00            [12] 2224 	mov	r6,#0x00
      00358E 7D 40            [12] 2225 	mov	r5,#0x40
      003590 E5 08            [12] 2226 	mov	a,_bp
      003592 24 12            [12] 2227 	add	a,#0x12
      003594 F8               [12] 2228 	mov	r0,a
      003595 74 11            [12] 2229 	mov	a,#0x11
      003597 26               [12] 2230 	add	a,@r0
      003598 FA               [12] 2231 	mov	r2,a
      003599 ED               [12] 2232 	mov	a,r5
      00359A 08               [12] 2233 	inc	r0
      00359B 36               [12] 2234 	addc	a,@r0
      00359C FB               [12] 2235 	mov	r3,a
      00359D 08               [12] 2236 	inc	r0
      00359E 86 04            [24] 2237 	mov	ar4,@r0
      0035A0 8A 82            [24] 2238 	mov	dpl,r2
      0035A2 8B 83            [24] 2239 	mov	dph,r3
      0035A4 8C F0            [24] 2240 	mov	b,r4
      0035A6 12 76 03         [24] 2241 	lcall	__gptrget
      0035A9 FA               [12] 2242 	mov	r2,a
      0035AA A3               [24] 2243 	inc	dptr
      0035AB 12 76 03         [24] 2244 	lcall	__gptrget
      0035AE FB               [12] 2245 	mov	r3,a
      0035AF A3               [24] 2246 	inc	dptr
      0035B0 12 76 03         [24] 2247 	lcall	__gptrget
      0035B3 FC               [12] 2248 	mov	r4,a
      0035B4 C0 07            [24] 2249 	push	ar7
      0035B6 C0 06            [24] 2250 	push	ar6
      0035B8 C0 05            [24] 2251 	push	ar5
      0035BA 8A 82            [24] 2252 	mov	dpl,r2
      0035BC 8B 83            [24] 2253 	mov	dph,r3
      0035BE 8C F0            [24] 2254 	mov	b,r4
      0035C0 12 28 5E         [24] 2255 	lcall	_stack_peek
      0035C3 AB 82            [24] 2256 	mov	r3,dpl
      0035C5 AC 83            [24] 2257 	mov	r4,dph
      0035C7 15 81            [12] 2258 	dec	sp
      0035C9 15 81            [12] 2259 	dec	sp
      0035CB 15 81            [12] 2260 	dec	sp
      0035CD EB               [12] 2261 	mov	a,r3
      0035CE 4C               [12] 2262 	orl	a,r4
      0035CF 70 31            [24] 2263 	jnz	00103$
      0035D1 7F 9E            [12] 2264 	mov	r7,#___str_4
      0035D3 7E 8E            [12] 2265 	mov	r6,#(___str_4 >> 8)
      0035D5 7D 80            [12] 2266 	mov	r5,#0x80
                                   2267 ;	calc.c:20: return;
      0035D7                       2268 00356$:
                                   2269 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0035D7 8F 82            [24] 2270 	mov	dpl,r7
      0035D9 8E 83            [24] 2271 	mov	dph,r6
      0035DB 8D F0            [24] 2272 	mov	b,r5
      0035DD 12 76 03         [24] 2273 	lcall	__gptrget
      0035E0 FC               [12] 2274 	mov	r4,a
      0035E1 70 03            [24] 2275 	jnz	01263$
      0035E3 02 59 D5         [24] 2276 	ljmp	00249$
      0035E6                       2277 01263$:
      0035E6 7B 00            [12] 2278 	mov	r3,#0x00
      0035E8 8C 82            [24] 2279 	mov	dpl,r4
      0035EA 8B 83            [24] 2280 	mov	dph,r3
      0035EC C0 07            [24] 2281 	push	ar7
      0035EE C0 06            [24] 2282 	push	ar6
      0035F0 C0 05            [24] 2283 	push	ar5
      0035F2 12 71 72         [24] 2284 	lcall	_putchar
      0035F5 D0 05            [24] 2285 	pop	ar5
      0035F7 D0 06            [24] 2286 	pop	ar6
      0035F9 D0 07            [24] 2287 	pop	ar7
      0035FB 0F               [12] 2288 	inc	r7
                                   2289 ;	calc.c:104: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0035FC BF 00 D8         [24] 2290 	cjne	r7,#0x00,00356$
      0035FF 0E               [12] 2291 	inc	r6
      003600 80 D5            [24] 2292 	sjmp	00356$
      003602                       2293 00103$:
                                   2294 ;	calc.c:106: printstr("PSVTOP\t");
      003602 7F C2            [12] 2295 	mov	r7,#___str_8
      003604 7E 8E            [12] 2296 	mov	r6,#(___str_8 >> 8)
      003606 7D 80            [12] 2297 	mov	r5,#0x80
                                   2298 ;	calc.c:20: return;
      003608                       2299 00359$:
                                   2300 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003608 8F 82            [24] 2301 	mov	dpl,r7
      00360A 8E 83            [24] 2302 	mov	dph,r6
      00360C 8D F0            [24] 2303 	mov	b,r5
      00360E 12 76 03         [24] 2304 	lcall	__gptrget
      003611 FC               [12] 2305 	mov	r4,a
      003612 60 1C            [24] 2306 	jz	00255$
      003614 7B 00            [12] 2307 	mov	r3,#0x00
      003616 8C 82            [24] 2308 	mov	dpl,r4
      003618 8B 83            [24] 2309 	mov	dph,r3
      00361A C0 07            [24] 2310 	push	ar7
      00361C C0 06            [24] 2311 	push	ar6
      00361E C0 05            [24] 2312 	push	ar5
      003620 12 71 72         [24] 2313 	lcall	_putchar
      003623 D0 05            [24] 2314 	pop	ar5
      003625 D0 06            [24] 2315 	pop	ar6
      003627 D0 07            [24] 2316 	pop	ar7
      003629 0F               [12] 2317 	inc	r7
                                   2318 ;	calc.c:106: printstr("PSVTOP\t");
      00362A BF 00 DB         [24] 2319 	cjne	r7,#0x00,00359$
      00362D 0E               [12] 2320 	inc	r6
      00362E 80 D8            [24] 2321 	sjmp	00359$
      003630                       2322 00255$:
                                   2323 ;	calc.c:107: printall(d0);
      003630 E5 08            [12] 2324 	mov	a,_bp
      003632 24 15            [12] 2325 	add	a,#0x15
      003634 F8               [12] 2326 	mov	r0,a
      003635 86 07            [24] 2327 	mov	ar7,@r0
      003637 08               [12] 2328 	inc	r0
      003638 86 06            [24] 2329 	mov	ar6,@r0
      00363A 08               [12] 2330 	inc	r0
      00363B 86 05            [24] 2331 	mov	ar5,@r0
      00363D 08               [12] 2332 	inc	r0
      00363E 86 04            [24] 2333 	mov	ar4,@r0
      003640 E5 08            [12] 2334 	mov	a,_bp
      003642 24 1D            [12] 2335 	add	a,#0x1d
      003644 F8               [12] 2336 	mov	r0,a
      003645 A6 07            [24] 2337 	mov	@r0,ar7
      003647 08               [12] 2338 	inc	r0
      003648 A6 06            [24] 2339 	mov	@r0,ar6
      00364A 08               [12] 2340 	inc	r0
      00364B A6 05            [24] 2341 	mov	@r0,ar5
      00364D 08               [12] 2342 	inc	r0
      00364E A6 04            [24] 2343 	mov	@r0,ar4
                                   2344 ;	calc.c:33: printf("%08lx\t", d);
      003650 C0 07            [24] 2345 	push	ar7
      003652 C0 06            [24] 2346 	push	ar6
      003654 C0 05            [24] 2347 	push	ar5
      003656 C0 04            [24] 2348 	push	ar4
      003658 74 84            [12] 2349 	mov	a,#___str_0
      00365A C0 E0            [24] 2350 	push	acc
      00365C 74 8E            [12] 2351 	mov	a,#(___str_0 >> 8)
      00365E C0 E0            [24] 2352 	push	acc
      003660 74 80            [12] 2353 	mov	a,#0x80
      003662 C0 E0            [24] 2354 	push	acc
      003664 12 75 CA         [24] 2355 	lcall	_printf
      003667 E5 81            [12] 2356 	mov	a,sp
      003669 24 F9            [12] 2357 	add	a,#0xf9
      00366B F5 81            [12] 2358 	mov	sp,a
                                   2359 ;	calc.c:34: printf("% 11ld\t", d);
      00366D E5 08            [12] 2360 	mov	a,_bp
      00366F 24 1D            [12] 2361 	add	a,#0x1d
      003671 F8               [12] 2362 	mov	r0,a
      003672 E6               [12] 2363 	mov	a,@r0
      003673 C0 E0            [24] 2364 	push	acc
      003675 08               [12] 2365 	inc	r0
      003676 E6               [12] 2366 	mov	a,@r0
      003677 C0 E0            [24] 2367 	push	acc
      003679 08               [12] 2368 	inc	r0
      00367A E6               [12] 2369 	mov	a,@r0
      00367B C0 E0            [24] 2370 	push	acc
      00367D 08               [12] 2371 	inc	r0
      00367E E6               [12] 2372 	mov	a,@r0
      00367F C0 E0            [24] 2373 	push	acc
      003681 74 8B            [12] 2374 	mov	a,#___str_1
      003683 C0 E0            [24] 2375 	push	acc
      003685 74 8E            [12] 2376 	mov	a,#(___str_1 >> 8)
      003687 C0 E0            [24] 2377 	push	acc
      003689 74 80            [12] 2378 	mov	a,#0x80
      00368B C0 E0            [24] 2379 	push	acc
      00368D 12 75 CA         [24] 2380 	lcall	_printf
      003690 E5 81            [12] 2381 	mov	a,sp
      003692 24 F9            [12] 2382 	add	a,#0xf9
      003694 F5 81            [12] 2383 	mov	sp,a
                                   2384 ;	calc.c:35: printf("%011lo\t", d);
      003696 E5 08            [12] 2385 	mov	a,_bp
      003698 24 1D            [12] 2386 	add	a,#0x1d
      00369A F8               [12] 2387 	mov	r0,a
      00369B E6               [12] 2388 	mov	a,@r0
      00369C C0 E0            [24] 2389 	push	acc
      00369E 08               [12] 2390 	inc	r0
      00369F E6               [12] 2391 	mov	a,@r0
      0036A0 C0 E0            [24] 2392 	push	acc
      0036A2 08               [12] 2393 	inc	r0
      0036A3 E6               [12] 2394 	mov	a,@r0
      0036A4 C0 E0            [24] 2395 	push	acc
      0036A6 08               [12] 2396 	inc	r0
      0036A7 E6               [12] 2397 	mov	a,@r0
      0036A8 C0 E0            [24] 2398 	push	acc
      0036AA 74 93            [12] 2399 	mov	a,#___str_2
      0036AC C0 E0            [24] 2400 	push	acc
      0036AE 74 8E            [12] 2401 	mov	a,#(___str_2 >> 8)
      0036B0 C0 E0            [24] 2402 	push	acc
      0036B2 74 80            [12] 2403 	mov	a,#0x80
      0036B4 C0 E0            [24] 2404 	push	acc
      0036B6 12 75 CA         [24] 2405 	lcall	_printf
      0036B9 E5 81            [12] 2406 	mov	a,sp
      0036BB 24 F9            [12] 2407 	add	a,#0xf9
      0036BD F5 81            [12] 2408 	mov	sp,a
                                   2409 ;	calc.c:36: printbin(d);
      0036BF E5 08            [12] 2410 	mov	a,_bp
      0036C1 24 1D            [12] 2411 	add	a,#0x1d
      0036C3 F8               [12] 2412 	mov	r0,a
      0036C4 86 07            [24] 2413 	mov	ar7,@r0
      0036C6 08               [12] 2414 	inc	r0
      0036C7 86 06            [24] 2415 	mov	ar6,@r0
      0036C9 08               [12] 2416 	inc	r0
      0036CA 86 05            [24] 2417 	mov	ar5,@r0
      0036CC 08               [12] 2418 	inc	r0
      0036CD 86 02            [24] 2419 	mov	ar2,@r0
                                   2420 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      0036CF E5 08            [12] 2421 	mov	a,_bp
      0036D1 24 21            [12] 2422 	add	a,#0x21
      0036D3 F8               [12] 2423 	mov	r0,a
      0036D4 E4               [12] 2424 	clr	a
      0036D5 F6               [12] 2425 	mov	@r0,a
      0036D6 08               [12] 2426 	inc	r0
      0036D7 F6               [12] 2427 	mov	@r0,a
      0036D8 08               [12] 2428 	inc	r0
      0036D9 F6               [12] 2429 	mov	@r0,a
      0036DA 08               [12] 2430 	inc	r0
      0036DB 76 80            [12] 2431 	mov	@r0,#0x80
      0036DD                       2432 00361$:
                                   2433 ;	calc.c:27: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0036DD E5 08            [12] 2434 	mov	a,_bp
      0036DF 24 07            [12] 2435 	add	a,#0x07
      0036E1 F8               [12] 2436 	mov	r0,a
      0036E2 A6 07            [24] 2437 	mov	@r0,ar7
      0036E4 08               [12] 2438 	inc	r0
      0036E5 A6 06            [24] 2439 	mov	@r0,ar6
      0036E7 08               [12] 2440 	inc	r0
      0036E8 A6 05            [24] 2441 	mov	@r0,ar5
      0036EA 08               [12] 2442 	inc	r0
      0036EB A6 02            [24] 2443 	mov	@r0,ar2
      0036ED E5 08            [12] 2444 	mov	a,_bp
      0036EF 24 07            [12] 2445 	add	a,#0x07
      0036F1 F8               [12] 2446 	mov	r0,a
      0036F2 E5 08            [12] 2447 	mov	a,_bp
      0036F4 24 21            [12] 2448 	add	a,#0x21
      0036F6 F9               [12] 2449 	mov	r1,a
      0036F7 E7               [12] 2450 	mov	a,@r1
      0036F8 56               [12] 2451 	anl	a,@r0
      0036F9 F6               [12] 2452 	mov	@r0,a
      0036FA 09               [12] 2453 	inc	r1
      0036FB E7               [12] 2454 	mov	a,@r1
      0036FC 08               [12] 2455 	inc	r0
      0036FD 56               [12] 2456 	anl	a,@r0
      0036FE F6               [12] 2457 	mov	@r0,a
      0036FF 09               [12] 2458 	inc	r1
      003700 E7               [12] 2459 	mov	a,@r1
      003701 08               [12] 2460 	inc	r0
      003702 56               [12] 2461 	anl	a,@r0
      003703 F6               [12] 2462 	mov	@r0,a
      003704 09               [12] 2463 	inc	r1
      003705 E7               [12] 2464 	mov	a,@r1
      003706 08               [12] 2465 	inc	r0
      003707 56               [12] 2466 	anl	a,@r0
      003708 F6               [12] 2467 	mov	@r0,a
      003709 E5 08            [12] 2468 	mov	a,_bp
      00370B 24 07            [12] 2469 	add	a,#0x07
      00370D F8               [12] 2470 	mov	r0,a
      00370E E6               [12] 2471 	mov	a,@r0
      00370F 08               [12] 2472 	inc	r0
      003710 46               [12] 2473 	orl	a,@r0
      003711 08               [12] 2474 	inc	r0
      003712 46               [12] 2475 	orl	a,@r0
      003713 08               [12] 2476 	inc	r0
      003714 46               [12] 2477 	orl	a,@r0
      003715 60 06            [24] 2478 	jz	00502$
      003717 7B 31            [12] 2479 	mov	r3,#0x31
      003719 7C 00            [12] 2480 	mov	r4,#0x00
      00371B 80 04            [24] 2481 	sjmp	00503$
      00371D                       2482 00502$:
      00371D 7B 30            [12] 2483 	mov	r3,#0x30
      00371F 7C 00            [12] 2484 	mov	r4,#0x00
      003721                       2485 00503$:
      003721 8B 82            [24] 2486 	mov	dpl,r3
      003723 8C 83            [24] 2487 	mov	dph,r4
      003725 C0 07            [24] 2488 	push	ar7
      003727 C0 06            [24] 2489 	push	ar6
      003729 C0 05            [24] 2490 	push	ar5
      00372B C0 02            [24] 2491 	push	ar2
      00372D 12 71 72         [24] 2492 	lcall	_putchar
      003730 D0 02            [24] 2493 	pop	ar2
      003732 D0 05            [24] 2494 	pop	ar5
      003734 D0 06            [24] 2495 	pop	ar6
      003736 D0 07            [24] 2496 	pop	ar7
                                   2497 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      003738 E5 08            [12] 2498 	mov	a,_bp
      00373A 24 21            [12] 2499 	add	a,#0x21
      00373C F8               [12] 2500 	mov	r0,a
      00373D 08               [12] 2501 	inc	r0
      00373E 08               [12] 2502 	inc	r0
      00373F 08               [12] 2503 	inc	r0
      003740 E6               [12] 2504 	mov	a,@r0
      003741 C3               [12] 2505 	clr	c
      003742 13               [12] 2506 	rrc	a
      003743 F6               [12] 2507 	mov	@r0,a
      003744 18               [12] 2508 	dec	r0
      003745 E6               [12] 2509 	mov	a,@r0
      003746 13               [12] 2510 	rrc	a
      003747 F6               [12] 2511 	mov	@r0,a
      003748 18               [12] 2512 	dec	r0
      003749 E6               [12] 2513 	mov	a,@r0
      00374A 13               [12] 2514 	rrc	a
      00374B F6               [12] 2515 	mov	@r0,a
      00374C 18               [12] 2516 	dec	r0
      00374D E6               [12] 2517 	mov	a,@r0
      00374E 13               [12] 2518 	rrc	a
      00374F F6               [12] 2519 	mov	@r0,a
      003750 E5 08            [12] 2520 	mov	a,_bp
      003752 24 21            [12] 2521 	add	a,#0x21
      003754 F8               [12] 2522 	mov	r0,a
      003755 E6               [12] 2523 	mov	a,@r0
      003756 08               [12] 2524 	inc	r0
      003757 46               [12] 2525 	orl	a,@r0
      003758 08               [12] 2526 	inc	r0
      003759 46               [12] 2527 	orl	a,@r0
      00375A 08               [12] 2528 	inc	r0
      00375B 46               [12] 2529 	orl	a,@r0
      00375C 60 03            [24] 2530 	jz	01268$
      00375E 02 36 DD         [24] 2531 	ljmp	00361$
      003761                       2532 01268$:
                                   2533 ;	calc.c:108: printstr("\r\n");
      003761 7F 9B            [12] 2534 	mov	r7,#___str_3
      003763 7E 8E            [12] 2535 	mov	r6,#(___str_3 >> 8)
      003765 7D 80            [12] 2536 	mov	r5,#0x80
                                   2537 ;	calc.c:20: return;
      003767                       2538 00364$:
                                   2539 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003767 8F 82            [24] 2540 	mov	dpl,r7
      003769 8E 83            [24] 2541 	mov	dph,r6
      00376B 8D F0            [24] 2542 	mov	b,r5
      00376D 12 76 03         [24] 2543 	lcall	__gptrget
      003770 FC               [12] 2544 	mov	r4,a
      003771 70 03            [24] 2545 	jnz	01269$
      003773 02 59 D5         [24] 2546 	ljmp	00249$
      003776                       2547 01269$:
      003776 7B 00            [12] 2548 	mov	r3,#0x00
      003778 8C 82            [24] 2549 	mov	dpl,r4
      00377A 8B 83            [24] 2550 	mov	dph,r3
      00377C C0 07            [24] 2551 	push	ar7
      00377E C0 06            [24] 2552 	push	ar6
      003780 C0 05            [24] 2553 	push	ar5
      003782 12 71 72         [24] 2554 	lcall	_putchar
      003785 D0 05            [24] 2555 	pop	ar5
      003787 D0 06            [24] 2556 	pop	ar6
      003789 D0 07            [24] 2557 	pop	ar7
      00378B 0F               [12] 2558 	inc	r7
                                   2559 ;	calc.c:111: case 'V':
      00378C BF 00 D8         [24] 2560 	cjne	r7,#0x00,00364$
      00378F 0E               [12] 2561 	inc	r6
      003790 80 D5            [24] 2562 	sjmp	00364$
      003792                       2563 00105$:
                                   2564 ;	calc.c:112: printstr("\r\n");
      003792 7F 9B            [12] 2565 	mov	r7,#___str_3
      003794 7E 8E            [12] 2566 	mov	r6,#(___str_3 >> 8)
      003796 7D 80            [12] 2567 	mov	r5,#0x80
                                   2568 ;	calc.c:20: return;
      003798                       2569 00367$:
                                   2570 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003798 8F 82            [24] 2571 	mov	dpl,r7
      00379A 8E 83            [24] 2572 	mov	dph,r6
      00379C 8D F0            [24] 2573 	mov	b,r5
      00379E 12 76 03         [24] 2574 	lcall	__gptrget
      0037A1 FC               [12] 2575 	mov	r4,a
      0037A2 60 1C            [24] 2576 	jz	00262$
      0037A4 7B 00            [12] 2577 	mov	r3,#0x00
      0037A6 8C 82            [24] 2578 	mov	dpl,r4
      0037A8 8B 83            [24] 2579 	mov	dph,r3
      0037AA C0 07            [24] 2580 	push	ar7
      0037AC C0 06            [24] 2581 	push	ar6
      0037AE C0 05            [24] 2582 	push	ar5
      0037B0 12 71 72         [24] 2583 	lcall	_putchar
      0037B3 D0 05            [24] 2584 	pop	ar5
      0037B5 D0 06            [24] 2585 	pop	ar6
      0037B7 D0 07            [24] 2586 	pop	ar7
      0037B9 0F               [12] 2587 	inc	r7
                                   2588 ;	calc.c:112: printstr("\r\n");
      0037BA BF 00 DB         [24] 2589 	cjne	r7,#0x00,00367$
      0037BD 0E               [12] 2590 	inc	r6
      0037BE 80 D8            [24] 2591 	sjmp	00367$
      0037C0                       2592 00262$:
                                   2593 ;	calc.c:113: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      0037C0 E5 08            [12] 2594 	mov	a,_bp
      0037C2 24 12            [12] 2595 	add	a,#0x12
      0037C4 F8               [12] 2596 	mov	r0,a
      0037C5 86 07            [24] 2597 	mov	ar7,@r0
      0037C7 08               [12] 2598 	inc	r0
      0037C8 86 06            [24] 2599 	mov	ar6,@r0
      0037CA 08               [12] 2600 	inc	r0
      0037CB 86 05            [24] 2601 	mov	ar5,@r0
      0037CD E5 08            [12] 2602 	mov	a,_bp
      0037CF 24 12            [12] 2603 	add	a,#0x12
      0037D1 F8               [12] 2604 	mov	r0,a
      0037D2 74 11            [12] 2605 	mov	a,#0x11
      0037D4 26               [12] 2606 	add	a,@r0
      0037D5 FA               [12] 2607 	mov	r2,a
      0037D6 74 40            [12] 2608 	mov	a,#0x40
      0037D8 08               [12] 2609 	inc	r0
      0037D9 36               [12] 2610 	addc	a,@r0
      0037DA FB               [12] 2611 	mov	r3,a
      0037DB 08               [12] 2612 	inc	r0
      0037DC 86 04            [24] 2613 	mov	ar4,@r0
      0037DE 8A 82            [24] 2614 	mov	dpl,r2
      0037E0 8B 83            [24] 2615 	mov	dph,r3
      0037E2 8C F0            [24] 2616 	mov	b,r4
      0037E4 12 76 03         [24] 2617 	lcall	__gptrget
      0037E7 FA               [12] 2618 	mov	r2,a
      0037E8 A3               [24] 2619 	inc	dptr
      0037E9 12 76 03         [24] 2620 	lcall	__gptrget
      0037EC FB               [12] 2621 	mov	r3,a
      0037ED A3               [24] 2622 	inc	dptr
      0037EE 12 76 03         [24] 2623 	lcall	__gptrget
      0037F1 FC               [12] 2624 	mov	r4,a
      0037F2 C0 07            [24] 2625 	push	ar7
      0037F4 C0 06            [24] 2626 	push	ar6
      0037F6 C0 05            [24] 2627 	push	ar5
      0037F8 74 FD            [12] 2628 	mov	a,#_dump_peek
      0037FA C0 E0            [24] 2629 	push	acc
      0037FC 74 32            [12] 2630 	mov	a,#(_dump_peek >> 8)
      0037FE C0 E0            [24] 2631 	push	acc
      003800 8A 82            [24] 2632 	mov	dpl,r2
      003802 8B 83            [24] 2633 	mov	dph,r3
      003804 8C F0            [24] 2634 	mov	b,r4
      003806 12 2A 91         [24] 2635 	lcall	_stack_iter_peek
      003809 AB 82            [24] 2636 	mov	r3,dpl
      00380B AC 83            [24] 2637 	mov	r4,dph
      00380D E5 81            [12] 2638 	mov	a,sp
      00380F 24 FB            [12] 2639 	add	a,#0xfb
      003811 F5 81            [12] 2640 	mov	sp,a
      003813 EB               [12] 2641 	mov	a,r3
      003814 4C               [12] 2642 	orl	a,r4
      003815 60 03            [24] 2643 	jz	01273$
      003817 02 59 D5         [24] 2644 	ljmp	00249$
      00381A                       2645 01273$:
      00381A 7F 9E            [12] 2646 	mov	r7,#___str_4
      00381C 7E 8E            [12] 2647 	mov	r6,#(___str_4 >> 8)
      00381E 7D 80            [12] 2648 	mov	r5,#0x80
                                   2649 ;	calc.c:20: return;
      003820                       2650 00370$:
                                   2651 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003820 8F 82            [24] 2652 	mov	dpl,r7
      003822 8E 83            [24] 2653 	mov	dph,r6
      003824 8D F0            [24] 2654 	mov	b,r5
      003826 12 76 03         [24] 2655 	lcall	__gptrget
      003829 FC               [12] 2656 	mov	r4,a
      00382A 70 03            [24] 2657 	jnz	01274$
      00382C 02 59 D5         [24] 2658 	ljmp	00249$
      00382F                       2659 01274$:
      00382F 7B 00            [12] 2660 	mov	r3,#0x00
      003831 8C 82            [24] 2661 	mov	dpl,r4
      003833 8B 83            [24] 2662 	mov	dph,r3
      003835 C0 07            [24] 2663 	push	ar7
      003837 C0 06            [24] 2664 	push	ar6
      003839 C0 05            [24] 2665 	push	ar5
      00383B 12 71 72         [24] 2666 	lcall	_putchar
      00383E D0 05            [24] 2667 	pop	ar5
      003840 D0 06            [24] 2668 	pop	ar6
      003842 D0 07            [24] 2669 	pop	ar7
      003844 0F               [12] 2670 	inc	r7
                                   2671 ;	calc.c:116: case 'p':
      003845 BF 00 D8         [24] 2672 	cjne	r7,#0x00,00370$
      003848 0E               [12] 2673 	inc	r6
      003849 80 D5            [24] 2674 	sjmp	00370$
      00384B                       2675 00109$:
                                   2676 ;	calc.c:117: printstr("\r\n");
      00384B 7F 9B            [12] 2677 	mov	r7,#___str_3
      00384D 7E 8E            [12] 2678 	mov	r6,#(___str_3 >> 8)
      00384F 7D 80            [12] 2679 	mov	r5,#0x80
                                   2680 ;	calc.c:20: return;
      003851                       2681 00373$:
                                   2682 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003851 8F 82            [24] 2683 	mov	dpl,r7
      003853 8E 83            [24] 2684 	mov	dph,r6
      003855 8D F0            [24] 2685 	mov	b,r5
      003857 12 76 03         [24] 2686 	lcall	__gptrget
      00385A FC               [12] 2687 	mov	r4,a
      00385B 60 1C            [24] 2688 	jz	00266$
      00385D 7B 00            [12] 2689 	mov	r3,#0x00
      00385F 8C 82            [24] 2690 	mov	dpl,r4
      003861 8B 83            [24] 2691 	mov	dph,r3
      003863 C0 07            [24] 2692 	push	ar7
      003865 C0 06            [24] 2693 	push	ar6
      003867 C0 05            [24] 2694 	push	ar5
      003869 12 71 72         [24] 2695 	lcall	_putchar
      00386C D0 05            [24] 2696 	pop	ar5
      00386E D0 06            [24] 2697 	pop	ar6
      003870 D0 07            [24] 2698 	pop	ar7
      003872 0F               [12] 2699 	inc	r7
                                   2700 ;	calc.c:117: printstr("\r\n");
      003873 BF 00 DB         [24] 2701 	cjne	r7,#0x00,00373$
      003876 0E               [12] 2702 	inc	r6
      003877 80 D8            [24] 2703 	sjmp	00373$
      003879                       2704 00266$:
                                   2705 ;	calc.c:118: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003879 E5 08            [12] 2706 	mov	a,_bp
      00387B 24 15            [12] 2707 	add	a,#0x15
      00387D FF               [12] 2708 	mov	r7,a
      00387E 7E 00            [12] 2709 	mov	r6,#0x00
      003880 7D 40            [12] 2710 	mov	r5,#0x40
      003882 E5 08            [12] 2711 	mov	a,_bp
      003884 24 12            [12] 2712 	add	a,#0x12
      003886 F8               [12] 2713 	mov	r0,a
      003887 74 11            [12] 2714 	mov	a,#0x11
      003889 26               [12] 2715 	add	a,@r0
      00388A FA               [12] 2716 	mov	r2,a
      00388B ED               [12] 2717 	mov	a,r5
      00388C 08               [12] 2718 	inc	r0
      00388D 36               [12] 2719 	addc	a,@r0
      00388E FB               [12] 2720 	mov	r3,a
      00388F 08               [12] 2721 	inc	r0
      003890 86 04            [24] 2722 	mov	ar4,@r0
      003892 8A 82            [24] 2723 	mov	dpl,r2
      003894 8B 83            [24] 2724 	mov	dph,r3
      003896 8C F0            [24] 2725 	mov	b,r4
      003898 12 76 03         [24] 2726 	lcall	__gptrget
      00389B FA               [12] 2727 	mov	r2,a
      00389C A3               [24] 2728 	inc	dptr
      00389D 12 76 03         [24] 2729 	lcall	__gptrget
      0038A0 FB               [12] 2730 	mov	r3,a
      0038A1 A3               [24] 2731 	inc	dptr
      0038A2 12 76 03         [24] 2732 	lcall	__gptrget
      0038A5 FC               [12] 2733 	mov	r4,a
      0038A6 C0 07            [24] 2734 	push	ar7
      0038A8 C0 06            [24] 2735 	push	ar6
      0038AA C0 05            [24] 2736 	push	ar5
      0038AC 8A 82            [24] 2737 	mov	dpl,r2
      0038AE 8B 83            [24] 2738 	mov	dph,r3
      0038B0 8C F0            [24] 2739 	mov	b,r4
      0038B2 12 27 83         [24] 2740 	lcall	_stack_pop
      0038B5 AB 82            [24] 2741 	mov	r3,dpl
      0038B7 AC 83            [24] 2742 	mov	r4,dph
      0038B9 15 81            [12] 2743 	dec	sp
      0038BB 15 81            [12] 2744 	dec	sp
      0038BD 15 81            [12] 2745 	dec	sp
      0038BF EB               [12] 2746 	mov	a,r3
      0038C0 4C               [12] 2747 	orl	a,r4
      0038C1 70 31            [24] 2748 	jnz	00111$
      0038C3 7F 9E            [12] 2749 	mov	r7,#___str_4
      0038C5 7E 8E            [12] 2750 	mov	r6,#(___str_4 >> 8)
      0038C7 7D 80            [12] 2751 	mov	r5,#0x80
                                   2752 ;	calc.c:20: return;
      0038C9                       2753 00376$:
                                   2754 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0038C9 8F 82            [24] 2755 	mov	dpl,r7
      0038CB 8E 83            [24] 2756 	mov	dph,r6
      0038CD 8D F0            [24] 2757 	mov	b,r5
      0038CF 12 76 03         [24] 2758 	lcall	__gptrget
      0038D2 FC               [12] 2759 	mov	r4,a
      0038D3 70 03            [24] 2760 	jnz	01279$
      0038D5 02 59 D5         [24] 2761 	ljmp	00249$
      0038D8                       2762 01279$:
      0038D8 7B 00            [12] 2763 	mov	r3,#0x00
      0038DA 8C 82            [24] 2764 	mov	dpl,r4
      0038DC 8B 83            [24] 2765 	mov	dph,r3
      0038DE C0 07            [24] 2766 	push	ar7
      0038E0 C0 06            [24] 2767 	push	ar6
      0038E2 C0 05            [24] 2768 	push	ar5
      0038E4 12 71 72         [24] 2769 	lcall	_putchar
      0038E7 D0 05            [24] 2770 	pop	ar5
      0038E9 D0 06            [24] 2771 	pop	ar6
      0038EB D0 07            [24] 2772 	pop	ar7
      0038ED 0F               [12] 2773 	inc	r7
                                   2774 ;	calc.c:118: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0038EE BF 00 D8         [24] 2775 	cjne	r7,#0x00,00376$
      0038F1 0E               [12] 2776 	inc	r6
      0038F2 80 D5            [24] 2777 	sjmp	00376$
      0038F4                       2778 00111$:
                                   2779 ;	calc.c:120: printstr("PSPTOP\t");
      0038F4 7F CA            [12] 2780 	mov	r7,#___str_9
      0038F6 7E 8E            [12] 2781 	mov	r6,#(___str_9 >> 8)
      0038F8 7D 80            [12] 2782 	mov	r5,#0x80
                                   2783 ;	calc.c:20: return;
      0038FA                       2784 00379$:
                                   2785 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0038FA 8F 82            [24] 2786 	mov	dpl,r7
      0038FC 8E 83            [24] 2787 	mov	dph,r6
      0038FE 8D F0            [24] 2788 	mov	b,r5
      003900 12 76 03         [24] 2789 	lcall	__gptrget
      003903 FC               [12] 2790 	mov	r4,a
      003904 60 1C            [24] 2791 	jz	00270$
      003906 7B 00            [12] 2792 	mov	r3,#0x00
      003908 8C 82            [24] 2793 	mov	dpl,r4
      00390A 8B 83            [24] 2794 	mov	dph,r3
      00390C C0 07            [24] 2795 	push	ar7
      00390E C0 06            [24] 2796 	push	ar6
      003910 C0 05            [24] 2797 	push	ar5
      003912 12 71 72         [24] 2798 	lcall	_putchar
      003915 D0 05            [24] 2799 	pop	ar5
      003917 D0 06            [24] 2800 	pop	ar6
      003919 D0 07            [24] 2801 	pop	ar7
      00391B 0F               [12] 2802 	inc	r7
                                   2803 ;	calc.c:120: printstr("PSPTOP\t");
      00391C BF 00 DB         [24] 2804 	cjne	r7,#0x00,00379$
      00391F 0E               [12] 2805 	inc	r6
      003920 80 D8            [24] 2806 	sjmp	00379$
      003922                       2807 00270$:
                                   2808 ;	calc.c:121: printall(d0);
      003922 E5 08            [12] 2809 	mov	a,_bp
      003924 24 15            [12] 2810 	add	a,#0x15
      003926 F8               [12] 2811 	mov	r0,a
      003927 86 07            [24] 2812 	mov	ar7,@r0
      003929 08               [12] 2813 	inc	r0
      00392A 86 06            [24] 2814 	mov	ar6,@r0
      00392C 08               [12] 2815 	inc	r0
      00392D 86 05            [24] 2816 	mov	ar5,@r0
      00392F 08               [12] 2817 	inc	r0
      003930 86 04            [24] 2818 	mov	ar4,@r0
      003932 E5 08            [12] 2819 	mov	a,_bp
      003934 24 1D            [12] 2820 	add	a,#0x1d
      003936 F8               [12] 2821 	mov	r0,a
      003937 A6 07            [24] 2822 	mov	@r0,ar7
      003939 08               [12] 2823 	inc	r0
      00393A A6 06            [24] 2824 	mov	@r0,ar6
      00393C 08               [12] 2825 	inc	r0
      00393D A6 05            [24] 2826 	mov	@r0,ar5
      00393F 08               [12] 2827 	inc	r0
      003940 A6 04            [24] 2828 	mov	@r0,ar4
                                   2829 ;	calc.c:33: printf("%08lx\t", d);
      003942 C0 07            [24] 2830 	push	ar7
      003944 C0 06            [24] 2831 	push	ar6
      003946 C0 05            [24] 2832 	push	ar5
      003948 C0 04            [24] 2833 	push	ar4
      00394A 74 84            [12] 2834 	mov	a,#___str_0
      00394C C0 E0            [24] 2835 	push	acc
      00394E 74 8E            [12] 2836 	mov	a,#(___str_0 >> 8)
      003950 C0 E0            [24] 2837 	push	acc
      003952 74 80            [12] 2838 	mov	a,#0x80
      003954 C0 E0            [24] 2839 	push	acc
      003956 12 75 CA         [24] 2840 	lcall	_printf
      003959 E5 81            [12] 2841 	mov	a,sp
      00395B 24 F9            [12] 2842 	add	a,#0xf9
      00395D F5 81            [12] 2843 	mov	sp,a
                                   2844 ;	calc.c:34: printf("% 11ld\t", d);
      00395F E5 08            [12] 2845 	mov	a,_bp
      003961 24 1D            [12] 2846 	add	a,#0x1d
      003963 F8               [12] 2847 	mov	r0,a
      003964 E6               [12] 2848 	mov	a,@r0
      003965 C0 E0            [24] 2849 	push	acc
      003967 08               [12] 2850 	inc	r0
      003968 E6               [12] 2851 	mov	a,@r0
      003969 C0 E0            [24] 2852 	push	acc
      00396B 08               [12] 2853 	inc	r0
      00396C E6               [12] 2854 	mov	a,@r0
      00396D C0 E0            [24] 2855 	push	acc
      00396F 08               [12] 2856 	inc	r0
      003970 E6               [12] 2857 	mov	a,@r0
      003971 C0 E0            [24] 2858 	push	acc
      003973 74 8B            [12] 2859 	mov	a,#___str_1
      003975 C0 E0            [24] 2860 	push	acc
      003977 74 8E            [12] 2861 	mov	a,#(___str_1 >> 8)
      003979 C0 E0            [24] 2862 	push	acc
      00397B 74 80            [12] 2863 	mov	a,#0x80
      00397D C0 E0            [24] 2864 	push	acc
      00397F 12 75 CA         [24] 2865 	lcall	_printf
      003982 E5 81            [12] 2866 	mov	a,sp
      003984 24 F9            [12] 2867 	add	a,#0xf9
      003986 F5 81            [12] 2868 	mov	sp,a
                                   2869 ;	calc.c:35: printf("%011lo\t", d);
      003988 E5 08            [12] 2870 	mov	a,_bp
      00398A 24 1D            [12] 2871 	add	a,#0x1d
      00398C F8               [12] 2872 	mov	r0,a
      00398D E6               [12] 2873 	mov	a,@r0
      00398E C0 E0            [24] 2874 	push	acc
      003990 08               [12] 2875 	inc	r0
      003991 E6               [12] 2876 	mov	a,@r0
      003992 C0 E0            [24] 2877 	push	acc
      003994 08               [12] 2878 	inc	r0
      003995 E6               [12] 2879 	mov	a,@r0
      003996 C0 E0            [24] 2880 	push	acc
      003998 08               [12] 2881 	inc	r0
      003999 E6               [12] 2882 	mov	a,@r0
      00399A C0 E0            [24] 2883 	push	acc
      00399C 74 93            [12] 2884 	mov	a,#___str_2
      00399E C0 E0            [24] 2885 	push	acc
      0039A0 74 8E            [12] 2886 	mov	a,#(___str_2 >> 8)
      0039A2 C0 E0            [24] 2887 	push	acc
      0039A4 74 80            [12] 2888 	mov	a,#0x80
      0039A6 C0 E0            [24] 2889 	push	acc
      0039A8 12 75 CA         [24] 2890 	lcall	_printf
      0039AB E5 81            [12] 2891 	mov	a,sp
      0039AD 24 F9            [12] 2892 	add	a,#0xf9
      0039AF F5 81            [12] 2893 	mov	sp,a
                                   2894 ;	calc.c:36: printbin(d);
      0039B1 E5 08            [12] 2895 	mov	a,_bp
      0039B3 24 1D            [12] 2896 	add	a,#0x1d
      0039B5 F8               [12] 2897 	mov	r0,a
      0039B6 86 07            [24] 2898 	mov	ar7,@r0
      0039B8 08               [12] 2899 	inc	r0
      0039B9 86 06            [24] 2900 	mov	ar6,@r0
      0039BB 08               [12] 2901 	inc	r0
      0039BC 86 05            [24] 2902 	mov	ar5,@r0
      0039BE 08               [12] 2903 	inc	r0
      0039BF 86 02            [24] 2904 	mov	ar2,@r0
                                   2905 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      0039C1 E5 08            [12] 2906 	mov	a,_bp
      0039C3 24 21            [12] 2907 	add	a,#0x21
      0039C5 F8               [12] 2908 	mov	r0,a
      0039C6 E4               [12] 2909 	clr	a
      0039C7 F6               [12] 2910 	mov	@r0,a
      0039C8 08               [12] 2911 	inc	r0
      0039C9 F6               [12] 2912 	mov	@r0,a
      0039CA 08               [12] 2913 	inc	r0
      0039CB F6               [12] 2914 	mov	@r0,a
      0039CC 08               [12] 2915 	inc	r0
      0039CD 76 80            [12] 2916 	mov	@r0,#0x80
      0039CF                       2917 00381$:
                                   2918 ;	calc.c:27: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0039CF E5 08            [12] 2919 	mov	a,_bp
      0039D1 24 07            [12] 2920 	add	a,#0x07
      0039D3 F8               [12] 2921 	mov	r0,a
      0039D4 A6 07            [24] 2922 	mov	@r0,ar7
      0039D6 08               [12] 2923 	inc	r0
      0039D7 A6 06            [24] 2924 	mov	@r0,ar6
      0039D9 08               [12] 2925 	inc	r0
      0039DA A6 05            [24] 2926 	mov	@r0,ar5
      0039DC 08               [12] 2927 	inc	r0
      0039DD A6 02            [24] 2928 	mov	@r0,ar2
      0039DF E5 08            [12] 2929 	mov	a,_bp
      0039E1 24 07            [12] 2930 	add	a,#0x07
      0039E3 F8               [12] 2931 	mov	r0,a
      0039E4 E5 08            [12] 2932 	mov	a,_bp
      0039E6 24 21            [12] 2933 	add	a,#0x21
      0039E8 F9               [12] 2934 	mov	r1,a
      0039E9 E7               [12] 2935 	mov	a,@r1
      0039EA 56               [12] 2936 	anl	a,@r0
      0039EB F6               [12] 2937 	mov	@r0,a
      0039EC 09               [12] 2938 	inc	r1
      0039ED E7               [12] 2939 	mov	a,@r1
      0039EE 08               [12] 2940 	inc	r0
      0039EF 56               [12] 2941 	anl	a,@r0
      0039F0 F6               [12] 2942 	mov	@r0,a
      0039F1 09               [12] 2943 	inc	r1
      0039F2 E7               [12] 2944 	mov	a,@r1
      0039F3 08               [12] 2945 	inc	r0
      0039F4 56               [12] 2946 	anl	a,@r0
      0039F5 F6               [12] 2947 	mov	@r0,a
      0039F6 09               [12] 2948 	inc	r1
      0039F7 E7               [12] 2949 	mov	a,@r1
      0039F8 08               [12] 2950 	inc	r0
      0039F9 56               [12] 2951 	anl	a,@r0
      0039FA F6               [12] 2952 	mov	@r0,a
      0039FB E5 08            [12] 2953 	mov	a,_bp
      0039FD 24 07            [12] 2954 	add	a,#0x07
      0039FF F8               [12] 2955 	mov	r0,a
      003A00 E6               [12] 2956 	mov	a,@r0
      003A01 08               [12] 2957 	inc	r0
      003A02 46               [12] 2958 	orl	a,@r0
      003A03 08               [12] 2959 	inc	r0
      003A04 46               [12] 2960 	orl	a,@r0
      003A05 08               [12] 2961 	inc	r0
      003A06 46               [12] 2962 	orl	a,@r0
      003A07 60 06            [24] 2963 	jz	00504$
      003A09 7B 31            [12] 2964 	mov	r3,#0x31
      003A0B 7C 00            [12] 2965 	mov	r4,#0x00
      003A0D 80 04            [24] 2966 	sjmp	00505$
      003A0F                       2967 00504$:
      003A0F 7B 30            [12] 2968 	mov	r3,#0x30
      003A11 7C 00            [12] 2969 	mov	r4,#0x00
      003A13                       2970 00505$:
      003A13 8B 82            [24] 2971 	mov	dpl,r3
      003A15 8C 83            [24] 2972 	mov	dph,r4
      003A17 C0 07            [24] 2973 	push	ar7
      003A19 C0 06            [24] 2974 	push	ar6
      003A1B C0 05            [24] 2975 	push	ar5
      003A1D C0 02            [24] 2976 	push	ar2
      003A1F 12 71 72         [24] 2977 	lcall	_putchar
      003A22 D0 02            [24] 2978 	pop	ar2
      003A24 D0 05            [24] 2979 	pop	ar5
      003A26 D0 06            [24] 2980 	pop	ar6
      003A28 D0 07            [24] 2981 	pop	ar7
                                   2982 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      003A2A E5 08            [12] 2983 	mov	a,_bp
      003A2C 24 21            [12] 2984 	add	a,#0x21
      003A2E F8               [12] 2985 	mov	r0,a
      003A2F 08               [12] 2986 	inc	r0
      003A30 08               [12] 2987 	inc	r0
      003A31 08               [12] 2988 	inc	r0
      003A32 E6               [12] 2989 	mov	a,@r0
      003A33 C3               [12] 2990 	clr	c
      003A34 13               [12] 2991 	rrc	a
      003A35 F6               [12] 2992 	mov	@r0,a
      003A36 18               [12] 2993 	dec	r0
      003A37 E6               [12] 2994 	mov	a,@r0
      003A38 13               [12] 2995 	rrc	a
      003A39 F6               [12] 2996 	mov	@r0,a
      003A3A 18               [12] 2997 	dec	r0
      003A3B E6               [12] 2998 	mov	a,@r0
      003A3C 13               [12] 2999 	rrc	a
      003A3D F6               [12] 3000 	mov	@r0,a
      003A3E 18               [12] 3001 	dec	r0
      003A3F E6               [12] 3002 	mov	a,@r0
      003A40 13               [12] 3003 	rrc	a
      003A41 F6               [12] 3004 	mov	@r0,a
      003A42 E5 08            [12] 3005 	mov	a,_bp
      003A44 24 21            [12] 3006 	add	a,#0x21
      003A46 F8               [12] 3007 	mov	r0,a
      003A47 E6               [12] 3008 	mov	a,@r0
      003A48 08               [12] 3009 	inc	r0
      003A49 46               [12] 3010 	orl	a,@r0
      003A4A 08               [12] 3011 	inc	r0
      003A4B 46               [12] 3012 	orl	a,@r0
      003A4C 08               [12] 3013 	inc	r0
      003A4D 46               [12] 3014 	orl	a,@r0
      003A4E 60 03            [24] 3015 	jz	01284$
      003A50 02 39 CF         [24] 3016 	ljmp	00381$
      003A53                       3017 01284$:
                                   3018 ;	calc.c:122: printstr("\r\n");
      003A53 7F 9B            [12] 3019 	mov	r7,#___str_3
      003A55 7E 8E            [12] 3020 	mov	r6,#(___str_3 >> 8)
      003A57 7D 80            [12] 3021 	mov	r5,#0x80
                                   3022 ;	calc.c:20: return;
      003A59                       3023 00384$:
                                   3024 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003A59 8F 82            [24] 3025 	mov	dpl,r7
      003A5B 8E 83            [24] 3026 	mov	dph,r6
      003A5D 8D F0            [24] 3027 	mov	b,r5
      003A5F 12 76 03         [24] 3028 	lcall	__gptrget
      003A62 FC               [12] 3029 	mov	r4,a
      003A63 70 03            [24] 3030 	jnz	01285$
      003A65 02 59 D5         [24] 3031 	ljmp	00249$
      003A68                       3032 01285$:
      003A68 7B 00            [12] 3033 	mov	r3,#0x00
      003A6A 8C 82            [24] 3034 	mov	dpl,r4
      003A6C 8B 83            [24] 3035 	mov	dph,r3
      003A6E C0 07            [24] 3036 	push	ar7
      003A70 C0 06            [24] 3037 	push	ar6
      003A72 C0 05            [24] 3038 	push	ar5
      003A74 12 71 72         [24] 3039 	lcall	_putchar
      003A77 D0 05            [24] 3040 	pop	ar5
      003A79 D0 06            [24] 3041 	pop	ar6
      003A7B D0 07            [24] 3042 	pop	ar7
      003A7D 0F               [12] 3043 	inc	r7
                                   3044 ;	calc.c:125: case 'P':
      003A7E BF 00 D8         [24] 3045 	cjne	r7,#0x00,00384$
      003A81 0E               [12] 3046 	inc	r6
      003A82 80 D5            [24] 3047 	sjmp	00384$
      003A84                       3048 00113$:
                                   3049 ;	calc.c:126: printstr("\r\n");
      003A84 7F 9B            [12] 3050 	mov	r7,#___str_3
      003A86 7E 8E            [12] 3051 	mov	r6,#(___str_3 >> 8)
      003A88 7D 80            [12] 3052 	mov	r5,#0x80
                                   3053 ;	calc.c:20: return;
      003A8A                       3054 00387$:
                                   3055 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003A8A 8F 82            [24] 3056 	mov	dpl,r7
      003A8C 8E 83            [24] 3057 	mov	dph,r6
      003A8E 8D F0            [24] 3058 	mov	b,r5
      003A90 12 76 03         [24] 3059 	lcall	__gptrget
      003A93 FC               [12] 3060 	mov	r4,a
      003A94 60 1C            [24] 3061 	jz	00277$
      003A96 7B 00            [12] 3062 	mov	r3,#0x00
      003A98 8C 82            [24] 3063 	mov	dpl,r4
      003A9A 8B 83            [24] 3064 	mov	dph,r3
      003A9C C0 07            [24] 3065 	push	ar7
      003A9E C0 06            [24] 3066 	push	ar6
      003AA0 C0 05            [24] 3067 	push	ar5
      003AA2 12 71 72         [24] 3068 	lcall	_putchar
      003AA5 D0 05            [24] 3069 	pop	ar5
      003AA7 D0 06            [24] 3070 	pop	ar6
      003AA9 D0 07            [24] 3071 	pop	ar7
      003AAB 0F               [12] 3072 	inc	r7
                                   3073 ;	calc.c:126: printstr("\r\n");
      003AAC BF 00 DB         [24] 3074 	cjne	r7,#0x00,00387$
      003AAF 0E               [12] 3075 	inc	r6
      003AB0 80 D8            [24] 3076 	sjmp	00387$
      003AB2                       3077 00277$:
                                   3078 ;	calc.c:127: (void)dump_pop(_ctx, delta);
      003AB2 E5 08            [12] 3079 	mov	a,_bp
      003AB4 24 FB            [12] 3080 	add	a,#0xfb
      003AB6 F8               [12] 3081 	mov	r0,a
      003AB7 E6               [12] 3082 	mov	a,@r0
      003AB8 C0 E0            [24] 3083 	push	acc
      003ABA 08               [12] 3084 	inc	r0
      003ABB E6               [12] 3085 	mov	a,@r0
      003ABC C0 E0            [24] 3086 	push	acc
      003ABE 08               [12] 3087 	inc	r0
      003ABF E6               [12] 3088 	mov	a,@r0
      003AC0 C0 E0            [24] 3089 	push	acc
      003AC2 A8 08            [24] 3090 	mov	r0,_bp
      003AC4 08               [12] 3091 	inc	r0
      003AC5 86 82            [24] 3092 	mov	dpl,@r0
      003AC7 08               [12] 3093 	inc	r0
      003AC8 86 83            [24] 3094 	mov	dph,@r0
      003ACA 08               [12] 3095 	inc	r0
      003ACB 86 F0            [24] 3096 	mov	b,@r0
      003ACD 12 2C E1         [24] 3097 	lcall	_dump_pop
      003AD0 15 81            [12] 3098 	dec	sp
      003AD2 15 81            [12] 3099 	dec	sp
      003AD4 15 81            [12] 3100 	dec	sp
                                   3101 ;	calc.c:128: break;
      003AD6 02 59 D5         [24] 3102 	ljmp	00249$
                                   3103 ;	calc.c:129: case 'x':
      003AD9                       3104 00114$:
                                   3105 ;	calc.c:130: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003AD9 E5 08            [12] 3106 	mov	a,_bp
      003ADB 24 15            [12] 3107 	add	a,#0x15
      003ADD FF               [12] 3108 	mov	r7,a
      003ADE 7E 00            [12] 3109 	mov	r6,#0x00
      003AE0 7D 40            [12] 3110 	mov	r5,#0x40
      003AE2 E5 08            [12] 3111 	mov	a,_bp
      003AE4 24 12            [12] 3112 	add	a,#0x12
      003AE6 F8               [12] 3113 	mov	r0,a
      003AE7 E5 08            [12] 3114 	mov	a,_bp
      003AE9 24 07            [12] 3115 	add	a,#0x07
      003AEB F9               [12] 3116 	mov	r1,a
      003AEC 74 11            [12] 3117 	mov	a,#0x11
      003AEE 26               [12] 3118 	add	a,@r0
      003AEF F7               [12] 3119 	mov	@r1,a
      003AF0 74 40            [12] 3120 	mov	a,#0x40
      003AF2 08               [12] 3121 	inc	r0
      003AF3 36               [12] 3122 	addc	a,@r0
      003AF4 09               [12] 3123 	inc	r1
      003AF5 F7               [12] 3124 	mov	@r1,a
      003AF6 08               [12] 3125 	inc	r0
      003AF7 09               [12] 3126 	inc	r1
      003AF8 E6               [12] 3127 	mov	a,@r0
      003AF9 F7               [12] 3128 	mov	@r1,a
      003AFA E5 08            [12] 3129 	mov	a,_bp
      003AFC 24 07            [12] 3130 	add	a,#0x07
      003AFE F8               [12] 3131 	mov	r0,a
      003AFF 86 82            [24] 3132 	mov	dpl,@r0
      003B01 08               [12] 3133 	inc	r0
      003B02 86 83            [24] 3134 	mov	dph,@r0
      003B04 08               [12] 3135 	inc	r0
      003B05 86 F0            [24] 3136 	mov	b,@r0
      003B07 12 76 03         [24] 3137 	lcall	__gptrget
      003B0A FA               [12] 3138 	mov	r2,a
      003B0B A3               [24] 3139 	inc	dptr
      003B0C 12 76 03         [24] 3140 	lcall	__gptrget
      003B0F FB               [12] 3141 	mov	r3,a
      003B10 A3               [24] 3142 	inc	dptr
      003B11 12 76 03         [24] 3143 	lcall	__gptrget
      003B14 FC               [12] 3144 	mov	r4,a
      003B15 C0 07            [24] 3145 	push	ar7
      003B17 C0 06            [24] 3146 	push	ar6
      003B19 C0 05            [24] 3147 	push	ar5
      003B1B 8A 82            [24] 3148 	mov	dpl,r2
      003B1D 8B 83            [24] 3149 	mov	dph,r3
      003B1F 8C F0            [24] 3150 	mov	b,r4
      003B21 12 27 83         [24] 3151 	lcall	_stack_pop
      003B24 AB 82            [24] 3152 	mov	r3,dpl
      003B26 AC 83            [24] 3153 	mov	r4,dph
      003B28 15 81            [12] 3154 	dec	sp
      003B2A 15 81            [12] 3155 	dec	sp
      003B2C 15 81            [12] 3156 	dec	sp
      003B2E EB               [12] 3157 	mov	a,r3
      003B2F 4C               [12] 3158 	orl	a,r4
      003B30 70 31            [24] 3159 	jnz	00119$
      003B32 7F D2            [12] 3160 	mov	r7,#___str_10
      003B34 7E 8E            [12] 3161 	mov	r6,#(___str_10 >> 8)
      003B36 7D 80            [12] 3162 	mov	r5,#0x80
                                   3163 ;	calc.c:20: return;
      003B38                       3164 00390$:
                                   3165 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003B38 8F 82            [24] 3166 	mov	dpl,r7
      003B3A 8E 83            [24] 3167 	mov	dph,r6
      003B3C 8D F0            [24] 3168 	mov	b,r5
      003B3E 12 76 03         [24] 3169 	lcall	__gptrget
      003B41 FC               [12] 3170 	mov	r4,a
      003B42 70 03            [24] 3171 	jnz	01290$
      003B44 02 59 D5         [24] 3172 	ljmp	00249$
      003B47                       3173 01290$:
      003B47 7B 00            [12] 3174 	mov	r3,#0x00
      003B49 8C 82            [24] 3175 	mov	dpl,r4
      003B4B 8B 83            [24] 3176 	mov	dph,r3
      003B4D C0 07            [24] 3177 	push	ar7
      003B4F C0 06            [24] 3178 	push	ar6
      003B51 C0 05            [24] 3179 	push	ar5
      003B53 12 71 72         [24] 3180 	lcall	_putchar
      003B56 D0 05            [24] 3181 	pop	ar5
      003B58 D0 06            [24] 3182 	pop	ar6
      003B5A D0 07            [24] 3183 	pop	ar7
      003B5C 0F               [12] 3184 	inc	r7
                                   3185 ;	calc.c:130: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003B5D BF 00 D8         [24] 3186 	cjne	r7,#0x00,00390$
      003B60 0E               [12] 3187 	inc	r6
      003B61 80 D5            [24] 3188 	sjmp	00390$
      003B63                       3189 00119$:
                                   3190 ;	calc.c:131: else if (!stack_pop(ctx->ps, &d1)) {
      003B63 E5 08            [12] 3191 	mov	a,_bp
      003B65 24 19            [12] 3192 	add	a,#0x19
      003B67 FF               [12] 3193 	mov	r7,a
      003B68 7E 00            [12] 3194 	mov	r6,#0x00
      003B6A 7D 40            [12] 3195 	mov	r5,#0x40
      003B6C E5 08            [12] 3196 	mov	a,_bp
      003B6E 24 07            [12] 3197 	add	a,#0x07
      003B70 F8               [12] 3198 	mov	r0,a
      003B71 86 82            [24] 3199 	mov	dpl,@r0
      003B73 08               [12] 3200 	inc	r0
      003B74 86 83            [24] 3201 	mov	dph,@r0
      003B76 08               [12] 3202 	inc	r0
      003B77 86 F0            [24] 3203 	mov	b,@r0
      003B79 12 76 03         [24] 3204 	lcall	__gptrget
      003B7C FA               [12] 3205 	mov	r2,a
      003B7D A3               [24] 3206 	inc	dptr
      003B7E 12 76 03         [24] 3207 	lcall	__gptrget
      003B81 FB               [12] 3208 	mov	r3,a
      003B82 A3               [24] 3209 	inc	dptr
      003B83 12 76 03         [24] 3210 	lcall	__gptrget
      003B86 FC               [12] 3211 	mov	r4,a
      003B87 C0 07            [24] 3212 	push	ar7
      003B89 C0 06            [24] 3213 	push	ar6
      003B8B C0 05            [24] 3214 	push	ar5
      003B8D 8A 82            [24] 3215 	mov	dpl,r2
      003B8F 8B 83            [24] 3216 	mov	dph,r3
      003B91 8C F0            [24] 3217 	mov	b,r4
      003B93 12 27 83         [24] 3218 	lcall	_stack_pop
      003B96 AB 82            [24] 3219 	mov	r3,dpl
      003B98 AC 83            [24] 3220 	mov	r4,dph
      003B9A 15 81            [12] 3221 	dec	sp
      003B9C 15 81            [12] 3222 	dec	sp
      003B9E 15 81            [12] 3223 	dec	sp
      003BA0 EB               [12] 3224 	mov	a,r3
      003BA1 4C               [12] 3225 	orl	a,r4
      003BA2 70 6F            [24] 3226 	jnz	00116$
                                   3227 ;	calc.c:132: (void)stack_push(ctx->ps, d0);
      003BA4 E5 08            [12] 3228 	mov	a,_bp
      003BA6 24 07            [12] 3229 	add	a,#0x07
      003BA8 F8               [12] 3230 	mov	r0,a
      003BA9 86 82            [24] 3231 	mov	dpl,@r0
      003BAB 08               [12] 3232 	inc	r0
      003BAC 86 83            [24] 3233 	mov	dph,@r0
      003BAE 08               [12] 3234 	inc	r0
      003BAF 86 F0            [24] 3235 	mov	b,@r0
      003BB1 12 76 03         [24] 3236 	lcall	__gptrget
      003BB4 FA               [12] 3237 	mov	r2,a
      003BB5 A3               [24] 3238 	inc	dptr
      003BB6 12 76 03         [24] 3239 	lcall	__gptrget
      003BB9 FB               [12] 3240 	mov	r3,a
      003BBA A3               [24] 3241 	inc	dptr
      003BBB 12 76 03         [24] 3242 	lcall	__gptrget
      003BBE FC               [12] 3243 	mov	r4,a
      003BBF E5 08            [12] 3244 	mov	a,_bp
      003BC1 24 15            [12] 3245 	add	a,#0x15
      003BC3 F8               [12] 3246 	mov	r0,a
      003BC4 E6               [12] 3247 	mov	a,@r0
      003BC5 C0 E0            [24] 3248 	push	acc
      003BC7 08               [12] 3249 	inc	r0
      003BC8 E6               [12] 3250 	mov	a,@r0
      003BC9 C0 E0            [24] 3251 	push	acc
      003BCB 08               [12] 3252 	inc	r0
      003BCC E6               [12] 3253 	mov	a,@r0
      003BCD C0 E0            [24] 3254 	push	acc
      003BCF 08               [12] 3255 	inc	r0
      003BD0 E6               [12] 3256 	mov	a,@r0
      003BD1 C0 E0            [24] 3257 	push	acc
      003BD3 8A 82            [24] 3258 	mov	dpl,r2
      003BD5 8B 83            [24] 3259 	mov	dph,r3
      003BD7 8C F0            [24] 3260 	mov	b,r4
      003BD9 12 26 B5         [24] 3261 	lcall	_stack_push
      003BDC E5 81            [12] 3262 	mov	a,sp
      003BDE 24 FC            [12] 3263 	add	a,#0xfc
      003BE0 F5 81            [12] 3264 	mov	sp,a
                                   3265 ;	calc.c:133: printstr("\r\nstack underflow\r\n");
      003BE2 7F D2            [12] 3266 	mov	r7,#___str_10
      003BE4 7E 8E            [12] 3267 	mov	r6,#(___str_10 >> 8)
      003BE6 7D 80            [12] 3268 	mov	r5,#0x80
                                   3269 ;	calc.c:20: return;
      003BE8                       3270 00393$:
                                   3271 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003BE8 8F 82            [24] 3272 	mov	dpl,r7
      003BEA 8E 83            [24] 3273 	mov	dph,r6
      003BEC 8D F0            [24] 3274 	mov	b,r5
      003BEE 12 76 03         [24] 3275 	lcall	__gptrget
      003BF1 FC               [12] 3276 	mov	r4,a
      003BF2 70 03            [24] 3277 	jnz	01293$
      003BF4 02 59 D5         [24] 3278 	ljmp	00249$
      003BF7                       3279 01293$:
      003BF7 7B 00            [12] 3280 	mov	r3,#0x00
      003BF9 8C 82            [24] 3281 	mov	dpl,r4
      003BFB 8B 83            [24] 3282 	mov	dph,r3
      003BFD C0 07            [24] 3283 	push	ar7
      003BFF C0 06            [24] 3284 	push	ar6
      003C01 C0 05            [24] 3285 	push	ar5
      003C03 12 71 72         [24] 3286 	lcall	_putchar
      003C06 D0 05            [24] 3287 	pop	ar5
      003C08 D0 06            [24] 3288 	pop	ar6
      003C0A D0 07            [24] 3289 	pop	ar7
      003C0C 0F               [12] 3290 	inc	r7
                                   3291 ;	calc.c:133: printstr("\r\nstack underflow\r\n");
      003C0D BF 00 D8         [24] 3292 	cjne	r7,#0x00,00393$
      003C10 0E               [12] 3293 	inc	r6
      003C11 80 D5            [24] 3294 	sjmp	00393$
      003C13                       3295 00116$:
                                   3296 ;	calc.c:135: (void)stack_push(ctx->ps, d0);
      003C13 E5 08            [12] 3297 	mov	a,_bp
      003C15 24 07            [12] 3298 	add	a,#0x07
      003C17 F8               [12] 3299 	mov	r0,a
      003C18 86 82            [24] 3300 	mov	dpl,@r0
      003C1A 08               [12] 3301 	inc	r0
      003C1B 86 83            [24] 3302 	mov	dph,@r0
      003C1D 08               [12] 3303 	inc	r0
      003C1E 86 F0            [24] 3304 	mov	b,@r0
      003C20 12 76 03         [24] 3305 	lcall	__gptrget
      003C23 FA               [12] 3306 	mov	r2,a
      003C24 A3               [24] 3307 	inc	dptr
      003C25 12 76 03         [24] 3308 	lcall	__gptrget
      003C28 FB               [12] 3309 	mov	r3,a
      003C29 A3               [24] 3310 	inc	dptr
      003C2A 12 76 03         [24] 3311 	lcall	__gptrget
      003C2D FC               [12] 3312 	mov	r4,a
      003C2E E5 08            [12] 3313 	mov	a,_bp
      003C30 24 15            [12] 3314 	add	a,#0x15
      003C32 F8               [12] 3315 	mov	r0,a
      003C33 E6               [12] 3316 	mov	a,@r0
      003C34 C0 E0            [24] 3317 	push	acc
      003C36 08               [12] 3318 	inc	r0
      003C37 E6               [12] 3319 	mov	a,@r0
      003C38 C0 E0            [24] 3320 	push	acc
      003C3A 08               [12] 3321 	inc	r0
      003C3B E6               [12] 3322 	mov	a,@r0
      003C3C C0 E0            [24] 3323 	push	acc
      003C3E 08               [12] 3324 	inc	r0
      003C3F E6               [12] 3325 	mov	a,@r0
      003C40 C0 E0            [24] 3326 	push	acc
      003C42 8A 82            [24] 3327 	mov	dpl,r2
      003C44 8B 83            [24] 3328 	mov	dph,r3
      003C46 8C F0            [24] 3329 	mov	b,r4
      003C48 12 26 B5         [24] 3330 	lcall	_stack_push
      003C4B E5 81            [12] 3331 	mov	a,sp
      003C4D 24 FC            [12] 3332 	add	a,#0xfc
      003C4F F5 81            [12] 3333 	mov	sp,a
                                   3334 ;	calc.c:136: (void)stack_push(ctx->ps, d1);
      003C51 E5 08            [12] 3335 	mov	a,_bp
      003C53 24 07            [12] 3336 	add	a,#0x07
      003C55 F8               [12] 3337 	mov	r0,a
      003C56 86 82            [24] 3338 	mov	dpl,@r0
      003C58 08               [12] 3339 	inc	r0
      003C59 86 83            [24] 3340 	mov	dph,@r0
      003C5B 08               [12] 3341 	inc	r0
      003C5C 86 F0            [24] 3342 	mov	b,@r0
      003C5E 12 76 03         [24] 3343 	lcall	__gptrget
      003C61 FA               [12] 3344 	mov	r2,a
      003C62 A3               [24] 3345 	inc	dptr
      003C63 12 76 03         [24] 3346 	lcall	__gptrget
      003C66 FB               [12] 3347 	mov	r3,a
      003C67 A3               [24] 3348 	inc	dptr
      003C68 12 76 03         [24] 3349 	lcall	__gptrget
      003C6B FC               [12] 3350 	mov	r4,a
      003C6C E5 08            [12] 3351 	mov	a,_bp
      003C6E 24 19            [12] 3352 	add	a,#0x19
      003C70 F8               [12] 3353 	mov	r0,a
      003C71 E6               [12] 3354 	mov	a,@r0
      003C72 C0 E0            [24] 3355 	push	acc
      003C74 08               [12] 3356 	inc	r0
      003C75 E6               [12] 3357 	mov	a,@r0
      003C76 C0 E0            [24] 3358 	push	acc
      003C78 08               [12] 3359 	inc	r0
      003C79 E6               [12] 3360 	mov	a,@r0
      003C7A C0 E0            [24] 3361 	push	acc
      003C7C 08               [12] 3362 	inc	r0
      003C7D E6               [12] 3363 	mov	a,@r0
      003C7E C0 E0            [24] 3364 	push	acc
      003C80 8A 82            [24] 3365 	mov	dpl,r2
      003C82 8B 83            [24] 3366 	mov	dph,r3
      003C84 8C F0            [24] 3367 	mov	b,r4
      003C86 12 26 B5         [24] 3368 	lcall	_stack_push
      003C89 E5 81            [12] 3369 	mov	a,sp
      003C8B 24 FC            [12] 3370 	add	a,#0xfc
      003C8D F5 81            [12] 3371 	mov	sp,a
                                   3372 ;	calc.c:138: break;
      003C8F 02 59 D5         [24] 3373 	ljmp	00249$
                                   3374 ;	calc.c:139: case 'm':
      003C92                       3375 00121$:
                                   3376 ;	calc.c:140: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003C92 E5 08            [12] 3377 	mov	a,_bp
      003C94 24 15            [12] 3378 	add	a,#0x15
      003C96 FF               [12] 3379 	mov	r7,a
      003C97 7E 00            [12] 3380 	mov	r6,#0x00
      003C99 7D 40            [12] 3381 	mov	r5,#0x40
      003C9B E5 08            [12] 3382 	mov	a,_bp
      003C9D 24 12            [12] 3383 	add	a,#0x12
      003C9F F8               [12] 3384 	mov	r0,a
      003CA0 E5 08            [12] 3385 	mov	a,_bp
      003CA2 24 07            [12] 3386 	add	a,#0x07
      003CA4 F9               [12] 3387 	mov	r1,a
      003CA5 74 11            [12] 3388 	mov	a,#0x11
      003CA7 26               [12] 3389 	add	a,@r0
      003CA8 F7               [12] 3390 	mov	@r1,a
      003CA9 74 40            [12] 3391 	mov	a,#0x40
      003CAB 08               [12] 3392 	inc	r0
      003CAC 36               [12] 3393 	addc	a,@r0
      003CAD 09               [12] 3394 	inc	r1
      003CAE F7               [12] 3395 	mov	@r1,a
      003CAF 08               [12] 3396 	inc	r0
      003CB0 09               [12] 3397 	inc	r1
      003CB1 E6               [12] 3398 	mov	a,@r0
      003CB2 F7               [12] 3399 	mov	@r1,a
      003CB3 E5 08            [12] 3400 	mov	a,_bp
      003CB5 24 07            [12] 3401 	add	a,#0x07
      003CB7 F8               [12] 3402 	mov	r0,a
      003CB8 86 82            [24] 3403 	mov	dpl,@r0
      003CBA 08               [12] 3404 	inc	r0
      003CBB 86 83            [24] 3405 	mov	dph,@r0
      003CBD 08               [12] 3406 	inc	r0
      003CBE 86 F0            [24] 3407 	mov	b,@r0
      003CC0 12 76 03         [24] 3408 	lcall	__gptrget
      003CC3 FA               [12] 3409 	mov	r2,a
      003CC4 A3               [24] 3410 	inc	dptr
      003CC5 12 76 03         [24] 3411 	lcall	__gptrget
      003CC8 FB               [12] 3412 	mov	r3,a
      003CC9 A3               [24] 3413 	inc	dptr
      003CCA 12 76 03         [24] 3414 	lcall	__gptrget
      003CCD FC               [12] 3415 	mov	r4,a
      003CCE C0 07            [24] 3416 	push	ar7
      003CD0 C0 06            [24] 3417 	push	ar6
      003CD2 C0 05            [24] 3418 	push	ar5
      003CD4 8A 82            [24] 3419 	mov	dpl,r2
      003CD6 8B 83            [24] 3420 	mov	dph,r3
      003CD8 8C F0            [24] 3421 	mov	b,r4
      003CDA 12 27 83         [24] 3422 	lcall	_stack_pop
      003CDD AB 82            [24] 3423 	mov	r3,dpl
      003CDF AC 83            [24] 3424 	mov	r4,dph
      003CE1 15 81            [12] 3425 	dec	sp
      003CE3 15 81            [12] 3426 	dec	sp
      003CE5 15 81            [12] 3427 	dec	sp
      003CE7 EB               [12] 3428 	mov	a,r3
      003CE8 4C               [12] 3429 	orl	a,r4
      003CE9 70 31            [24] 3430 	jnz	00125$
      003CEB 7F D2            [12] 3431 	mov	r7,#___str_10
      003CED 7E 8E            [12] 3432 	mov	r6,#(___str_10 >> 8)
      003CEF 7D 80            [12] 3433 	mov	r5,#0x80
                                   3434 ;	calc.c:20: return;
      003CF1                       3435 00396$:
                                   3436 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003CF1 8F 82            [24] 3437 	mov	dpl,r7
      003CF3 8E 83            [24] 3438 	mov	dph,r6
      003CF5 8D F0            [24] 3439 	mov	b,r5
      003CF7 12 76 03         [24] 3440 	lcall	__gptrget
      003CFA FC               [12] 3441 	mov	r4,a
      003CFB 70 03            [24] 3442 	jnz	01296$
      003CFD 02 59 D5         [24] 3443 	ljmp	00249$
      003D00                       3444 01296$:
      003D00 7B 00            [12] 3445 	mov	r3,#0x00
      003D02 8C 82            [24] 3446 	mov	dpl,r4
      003D04 8B 83            [24] 3447 	mov	dph,r3
      003D06 C0 07            [24] 3448 	push	ar7
      003D08 C0 06            [24] 3449 	push	ar6
      003D0A C0 05            [24] 3450 	push	ar5
      003D0C 12 71 72         [24] 3451 	lcall	_putchar
      003D0F D0 05            [24] 3452 	pop	ar5
      003D11 D0 06            [24] 3453 	pop	ar6
      003D13 D0 07            [24] 3454 	pop	ar7
      003D15 0F               [12] 3455 	inc	r7
                                   3456 ;	calc.c:140: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003D16 BF 00 D8         [24] 3457 	cjne	r7,#0x00,00396$
      003D19 0E               [12] 3458 	inc	r6
      003D1A 80 D5            [24] 3459 	sjmp	00396$
      003D1C                       3460 00125$:
                                   3461 ;	calc.c:142: if (!stack_push(ctx->ss, d0)) {
      003D1C E5 08            [12] 3462 	mov	a,_bp
      003D1E 24 12            [12] 3463 	add	a,#0x12
      003D20 F8               [12] 3464 	mov	r0,a
      003D21 74 14            [12] 3465 	mov	a,#0x14
      003D23 26               [12] 3466 	add	a,@r0
      003D24 FA               [12] 3467 	mov	r2,a
      003D25 74 40            [12] 3468 	mov	a,#0x40
      003D27 08               [12] 3469 	inc	r0
      003D28 36               [12] 3470 	addc	a,@r0
      003D29 FB               [12] 3471 	mov	r3,a
      003D2A 08               [12] 3472 	inc	r0
      003D2B 86 04            [24] 3473 	mov	ar4,@r0
      003D2D 8A 82            [24] 3474 	mov	dpl,r2
      003D2F 8B 83            [24] 3475 	mov	dph,r3
      003D31 8C F0            [24] 3476 	mov	b,r4
      003D33 12 76 03         [24] 3477 	lcall	__gptrget
      003D36 FA               [12] 3478 	mov	r2,a
      003D37 A3               [24] 3479 	inc	dptr
      003D38 12 76 03         [24] 3480 	lcall	__gptrget
      003D3B FB               [12] 3481 	mov	r3,a
      003D3C A3               [24] 3482 	inc	dptr
      003D3D 12 76 03         [24] 3483 	lcall	__gptrget
      003D40 FC               [12] 3484 	mov	r4,a
      003D41 E5 08            [12] 3485 	mov	a,_bp
      003D43 24 15            [12] 3486 	add	a,#0x15
      003D45 F8               [12] 3487 	mov	r0,a
      003D46 E6               [12] 3488 	mov	a,@r0
      003D47 C0 E0            [24] 3489 	push	acc
      003D49 08               [12] 3490 	inc	r0
      003D4A E6               [12] 3491 	mov	a,@r0
      003D4B C0 E0            [24] 3492 	push	acc
      003D4D 08               [12] 3493 	inc	r0
      003D4E E6               [12] 3494 	mov	a,@r0
      003D4F C0 E0            [24] 3495 	push	acc
      003D51 08               [12] 3496 	inc	r0
      003D52 E6               [12] 3497 	mov	a,@r0
      003D53 C0 E0            [24] 3498 	push	acc
      003D55 8A 82            [24] 3499 	mov	dpl,r2
      003D57 8B 83            [24] 3500 	mov	dph,r3
      003D59 8C F0            [24] 3501 	mov	b,r4
      003D5B 12 26 B5         [24] 3502 	lcall	_stack_push
      003D5E AB 82            [24] 3503 	mov	r3,dpl
      003D60 AC 83            [24] 3504 	mov	r4,dph
      003D62 E5 81            [12] 3505 	mov	a,sp
      003D64 24 FC            [12] 3506 	add	a,#0xfc
      003D66 F5 81            [12] 3507 	mov	sp,a
      003D68 EB               [12] 3508 	mov	a,r3
      003D69 4C               [12] 3509 	orl	a,r4
      003D6A 60 03            [24] 3510 	jz	01298$
      003D6C 02 59 D5         [24] 3511 	ljmp	00249$
      003D6F                       3512 01298$:
                                   3513 ;	calc.c:143: printstr("\r\nsecondary stack overflow\r\n");
      003D6F 7F E6            [12] 3514 	mov	r7,#___str_11
      003D71 7E 8E            [12] 3515 	mov	r6,#(___str_11 >> 8)
      003D73 7D 80            [12] 3516 	mov	r5,#0x80
                                   3517 ;	calc.c:20: return;
      003D75                       3518 00399$:
                                   3519 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003D75 8F 82            [24] 3520 	mov	dpl,r7
      003D77 8E 83            [24] 3521 	mov	dph,r6
      003D79 8D F0            [24] 3522 	mov	b,r5
      003D7B 12 76 03         [24] 3523 	lcall	__gptrget
      003D7E FC               [12] 3524 	mov	r4,a
      003D7F 60 1C            [24] 3525 	jz	00285$
      003D81 7B 00            [12] 3526 	mov	r3,#0x00
      003D83 8C 82            [24] 3527 	mov	dpl,r4
      003D85 8B 83            [24] 3528 	mov	dph,r3
      003D87 C0 07            [24] 3529 	push	ar7
      003D89 C0 06            [24] 3530 	push	ar6
      003D8B C0 05            [24] 3531 	push	ar5
      003D8D 12 71 72         [24] 3532 	lcall	_putchar
      003D90 D0 05            [24] 3533 	pop	ar5
      003D92 D0 06            [24] 3534 	pop	ar6
      003D94 D0 07            [24] 3535 	pop	ar7
      003D96 0F               [12] 3536 	inc	r7
                                   3537 ;	calc.c:143: printstr("\r\nsecondary stack overflow\r\n");
      003D97 BF 00 DB         [24] 3538 	cjne	r7,#0x00,00399$
      003D9A 0E               [12] 3539 	inc	r6
      003D9B 80 D8            [24] 3540 	sjmp	00399$
      003D9D                       3541 00285$:
                                   3542 ;	calc.c:144: (void)stack_push(ctx->ps, d0);
      003D9D E5 08            [12] 3543 	mov	a,_bp
      003D9F 24 07            [12] 3544 	add	a,#0x07
      003DA1 F8               [12] 3545 	mov	r0,a
      003DA2 86 82            [24] 3546 	mov	dpl,@r0
      003DA4 08               [12] 3547 	inc	r0
      003DA5 86 83            [24] 3548 	mov	dph,@r0
      003DA7 08               [12] 3549 	inc	r0
      003DA8 86 F0            [24] 3550 	mov	b,@r0
      003DAA 12 76 03         [24] 3551 	lcall	__gptrget
      003DAD FA               [12] 3552 	mov	r2,a
      003DAE A3               [24] 3553 	inc	dptr
      003DAF 12 76 03         [24] 3554 	lcall	__gptrget
      003DB2 FB               [12] 3555 	mov	r3,a
      003DB3 A3               [24] 3556 	inc	dptr
      003DB4 12 76 03         [24] 3557 	lcall	__gptrget
      003DB7 FC               [12] 3558 	mov	r4,a
      003DB8 E5 08            [12] 3559 	mov	a,_bp
      003DBA 24 15            [12] 3560 	add	a,#0x15
      003DBC F8               [12] 3561 	mov	r0,a
      003DBD E6               [12] 3562 	mov	a,@r0
      003DBE C0 E0            [24] 3563 	push	acc
      003DC0 08               [12] 3564 	inc	r0
      003DC1 E6               [12] 3565 	mov	a,@r0
      003DC2 C0 E0            [24] 3566 	push	acc
      003DC4 08               [12] 3567 	inc	r0
      003DC5 E6               [12] 3568 	mov	a,@r0
      003DC6 C0 E0            [24] 3569 	push	acc
      003DC8 08               [12] 3570 	inc	r0
      003DC9 E6               [12] 3571 	mov	a,@r0
      003DCA C0 E0            [24] 3572 	push	acc
      003DCC 8A 82            [24] 3573 	mov	dpl,r2
      003DCE 8B 83            [24] 3574 	mov	dph,r3
      003DD0 8C F0            [24] 3575 	mov	b,r4
      003DD2 12 26 B5         [24] 3576 	lcall	_stack_push
      003DD5 E5 81            [12] 3577 	mov	a,sp
      003DD7 24 FC            [12] 3578 	add	a,#0xfc
      003DD9 F5 81            [12] 3579 	mov	sp,a
                                   3580 ;	calc.c:147: break;
      003DDB 02 59 D5         [24] 3581 	ljmp	00249$
                                   3582 ;	calc.c:148: case 'M':
      003DDE                       3583 00127$:
                                   3584 ;	calc.c:149: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003DDE E5 08            [12] 3585 	mov	a,_bp
      003DE0 24 15            [12] 3586 	add	a,#0x15
      003DE2 FF               [12] 3587 	mov	r7,a
      003DE3 7E 00            [12] 3588 	mov	r6,#0x00
      003DE5 7D 40            [12] 3589 	mov	r5,#0x40
      003DE7 E5 08            [12] 3590 	mov	a,_bp
      003DE9 24 12            [12] 3591 	add	a,#0x12
      003DEB F8               [12] 3592 	mov	r0,a
      003DEC E5 08            [12] 3593 	mov	a,_bp
      003DEE 24 07            [12] 3594 	add	a,#0x07
      003DF0 F9               [12] 3595 	mov	r1,a
      003DF1 74 14            [12] 3596 	mov	a,#0x14
      003DF3 26               [12] 3597 	add	a,@r0
      003DF4 F7               [12] 3598 	mov	@r1,a
      003DF5 74 40            [12] 3599 	mov	a,#0x40
      003DF7 08               [12] 3600 	inc	r0
      003DF8 36               [12] 3601 	addc	a,@r0
      003DF9 09               [12] 3602 	inc	r1
      003DFA F7               [12] 3603 	mov	@r1,a
      003DFB 08               [12] 3604 	inc	r0
      003DFC 09               [12] 3605 	inc	r1
      003DFD E6               [12] 3606 	mov	a,@r0
      003DFE F7               [12] 3607 	mov	@r1,a
      003DFF E5 08            [12] 3608 	mov	a,_bp
      003E01 24 07            [12] 3609 	add	a,#0x07
      003E03 F8               [12] 3610 	mov	r0,a
      003E04 86 82            [24] 3611 	mov	dpl,@r0
      003E06 08               [12] 3612 	inc	r0
      003E07 86 83            [24] 3613 	mov	dph,@r0
      003E09 08               [12] 3614 	inc	r0
      003E0A 86 F0            [24] 3615 	mov	b,@r0
      003E0C 12 76 03         [24] 3616 	lcall	__gptrget
      003E0F FA               [12] 3617 	mov	r2,a
      003E10 A3               [24] 3618 	inc	dptr
      003E11 12 76 03         [24] 3619 	lcall	__gptrget
      003E14 FB               [12] 3620 	mov	r3,a
      003E15 A3               [24] 3621 	inc	dptr
      003E16 12 76 03         [24] 3622 	lcall	__gptrget
      003E19 FC               [12] 3623 	mov	r4,a
      003E1A C0 07            [24] 3624 	push	ar7
      003E1C C0 06            [24] 3625 	push	ar6
      003E1E C0 05            [24] 3626 	push	ar5
      003E20 8A 82            [24] 3627 	mov	dpl,r2
      003E22 8B 83            [24] 3628 	mov	dph,r3
      003E24 8C F0            [24] 3629 	mov	b,r4
      003E26 12 27 83         [24] 3630 	lcall	_stack_pop
      003E29 AB 82            [24] 3631 	mov	r3,dpl
      003E2B AC 83            [24] 3632 	mov	r4,dph
      003E2D 15 81            [12] 3633 	dec	sp
      003E2F 15 81            [12] 3634 	dec	sp
      003E31 15 81            [12] 3635 	dec	sp
      003E33 EB               [12] 3636 	mov	a,r3
      003E34 4C               [12] 3637 	orl	a,r4
      003E35 70 31            [24] 3638 	jnz	00131$
      003E37 7F 03            [12] 3639 	mov	r7,#___str_12
      003E39 7E 8F            [12] 3640 	mov	r6,#(___str_12 >> 8)
      003E3B 7D 80            [12] 3641 	mov	r5,#0x80
                                   3642 ;	calc.c:20: return;
      003E3D                       3643 00402$:
                                   3644 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003E3D 8F 82            [24] 3645 	mov	dpl,r7
      003E3F 8E 83            [24] 3646 	mov	dph,r6
      003E41 8D F0            [24] 3647 	mov	b,r5
      003E43 12 76 03         [24] 3648 	lcall	__gptrget
      003E46 FC               [12] 3649 	mov	r4,a
      003E47 70 03            [24] 3650 	jnz	01302$
      003E49 02 59 D5         [24] 3651 	ljmp	00249$
      003E4C                       3652 01302$:
      003E4C 7B 00            [12] 3653 	mov	r3,#0x00
      003E4E 8C 82            [24] 3654 	mov	dpl,r4
      003E50 8B 83            [24] 3655 	mov	dph,r3
      003E52 C0 07            [24] 3656 	push	ar7
      003E54 C0 06            [24] 3657 	push	ar6
      003E56 C0 05            [24] 3658 	push	ar5
      003E58 12 71 72         [24] 3659 	lcall	_putchar
      003E5B D0 05            [24] 3660 	pop	ar5
      003E5D D0 06            [24] 3661 	pop	ar6
      003E5F D0 07            [24] 3662 	pop	ar7
      003E61 0F               [12] 3663 	inc	r7
                                   3664 ;	calc.c:149: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003E62 BF 00 D8         [24] 3665 	cjne	r7,#0x00,00402$
      003E65 0E               [12] 3666 	inc	r6
      003E66 80 D5            [24] 3667 	sjmp	00402$
      003E68                       3668 00131$:
                                   3669 ;	calc.c:151: if (!stack_push(ctx->ps, d0)) {
      003E68 E5 08            [12] 3670 	mov	a,_bp
      003E6A 24 12            [12] 3671 	add	a,#0x12
      003E6C F8               [12] 3672 	mov	r0,a
      003E6D 74 11            [12] 3673 	mov	a,#0x11
      003E6F 26               [12] 3674 	add	a,@r0
      003E70 FA               [12] 3675 	mov	r2,a
      003E71 74 40            [12] 3676 	mov	a,#0x40
      003E73 08               [12] 3677 	inc	r0
      003E74 36               [12] 3678 	addc	a,@r0
      003E75 FB               [12] 3679 	mov	r3,a
      003E76 08               [12] 3680 	inc	r0
      003E77 86 04            [24] 3681 	mov	ar4,@r0
      003E79 8A 82            [24] 3682 	mov	dpl,r2
      003E7B 8B 83            [24] 3683 	mov	dph,r3
      003E7D 8C F0            [24] 3684 	mov	b,r4
      003E7F 12 76 03         [24] 3685 	lcall	__gptrget
      003E82 FA               [12] 3686 	mov	r2,a
      003E83 A3               [24] 3687 	inc	dptr
      003E84 12 76 03         [24] 3688 	lcall	__gptrget
      003E87 FB               [12] 3689 	mov	r3,a
      003E88 A3               [24] 3690 	inc	dptr
      003E89 12 76 03         [24] 3691 	lcall	__gptrget
      003E8C FC               [12] 3692 	mov	r4,a
      003E8D E5 08            [12] 3693 	mov	a,_bp
      003E8F 24 15            [12] 3694 	add	a,#0x15
      003E91 F8               [12] 3695 	mov	r0,a
      003E92 E6               [12] 3696 	mov	a,@r0
      003E93 C0 E0            [24] 3697 	push	acc
      003E95 08               [12] 3698 	inc	r0
      003E96 E6               [12] 3699 	mov	a,@r0
      003E97 C0 E0            [24] 3700 	push	acc
      003E99 08               [12] 3701 	inc	r0
      003E9A E6               [12] 3702 	mov	a,@r0
      003E9B C0 E0            [24] 3703 	push	acc
      003E9D 08               [12] 3704 	inc	r0
      003E9E E6               [12] 3705 	mov	a,@r0
      003E9F C0 E0            [24] 3706 	push	acc
      003EA1 8A 82            [24] 3707 	mov	dpl,r2
      003EA3 8B 83            [24] 3708 	mov	dph,r3
      003EA5 8C F0            [24] 3709 	mov	b,r4
      003EA7 12 26 B5         [24] 3710 	lcall	_stack_push
      003EAA AB 82            [24] 3711 	mov	r3,dpl
      003EAC AC 83            [24] 3712 	mov	r4,dph
      003EAE E5 81            [12] 3713 	mov	a,sp
      003EB0 24 FC            [12] 3714 	add	a,#0xfc
      003EB2 F5 81            [12] 3715 	mov	sp,a
      003EB4 EB               [12] 3716 	mov	a,r3
      003EB5 4C               [12] 3717 	orl	a,r4
      003EB6 60 03            [24] 3718 	jz	01304$
      003EB8 02 59 D5         [24] 3719 	ljmp	00249$
      003EBB                       3720 01304$:
                                   3721 ;	calc.c:152: printstr("\r\nstack overflow\r\n");
      003EBB 7F 21            [12] 3722 	mov	r7,#___str_13
      003EBD 7E 8F            [12] 3723 	mov	r6,#(___str_13 >> 8)
      003EBF 7D 80            [12] 3724 	mov	r5,#0x80
                                   3725 ;	calc.c:20: return;
      003EC1                       3726 00405$:
                                   3727 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003EC1 8F 82            [24] 3728 	mov	dpl,r7
      003EC3 8E 83            [24] 3729 	mov	dph,r6
      003EC5 8D F0            [24] 3730 	mov	b,r5
      003EC7 12 76 03         [24] 3731 	lcall	__gptrget
      003ECA FC               [12] 3732 	mov	r4,a
      003ECB 60 1C            [24] 3733 	jz	00289$
      003ECD 7B 00            [12] 3734 	mov	r3,#0x00
      003ECF 8C 82            [24] 3735 	mov	dpl,r4
      003ED1 8B 83            [24] 3736 	mov	dph,r3
      003ED3 C0 07            [24] 3737 	push	ar7
      003ED5 C0 06            [24] 3738 	push	ar6
      003ED7 C0 05            [24] 3739 	push	ar5
      003ED9 12 71 72         [24] 3740 	lcall	_putchar
      003EDC D0 05            [24] 3741 	pop	ar5
      003EDE D0 06            [24] 3742 	pop	ar6
      003EE0 D0 07            [24] 3743 	pop	ar7
      003EE2 0F               [12] 3744 	inc	r7
                                   3745 ;	calc.c:152: printstr("\r\nstack overflow\r\n");
      003EE3 BF 00 DB         [24] 3746 	cjne	r7,#0x00,00405$
      003EE6 0E               [12] 3747 	inc	r6
      003EE7 80 D8            [24] 3748 	sjmp	00405$
      003EE9                       3749 00289$:
                                   3750 ;	calc.c:153: (void)stack_push(ctx->ss, d0);
      003EE9 E5 08            [12] 3751 	mov	a,_bp
      003EEB 24 07            [12] 3752 	add	a,#0x07
      003EED F8               [12] 3753 	mov	r0,a
      003EEE 86 82            [24] 3754 	mov	dpl,@r0
      003EF0 08               [12] 3755 	inc	r0
      003EF1 86 83            [24] 3756 	mov	dph,@r0
      003EF3 08               [12] 3757 	inc	r0
      003EF4 86 F0            [24] 3758 	mov	b,@r0
      003EF6 12 76 03         [24] 3759 	lcall	__gptrget
      003EF9 FA               [12] 3760 	mov	r2,a
      003EFA A3               [24] 3761 	inc	dptr
      003EFB 12 76 03         [24] 3762 	lcall	__gptrget
      003EFE FB               [12] 3763 	mov	r3,a
      003EFF A3               [24] 3764 	inc	dptr
      003F00 12 76 03         [24] 3765 	lcall	__gptrget
      003F03 FC               [12] 3766 	mov	r4,a
      003F04 E5 08            [12] 3767 	mov	a,_bp
      003F06 24 15            [12] 3768 	add	a,#0x15
      003F08 F8               [12] 3769 	mov	r0,a
      003F09 E6               [12] 3770 	mov	a,@r0
      003F0A C0 E0            [24] 3771 	push	acc
      003F0C 08               [12] 3772 	inc	r0
      003F0D E6               [12] 3773 	mov	a,@r0
      003F0E C0 E0            [24] 3774 	push	acc
      003F10 08               [12] 3775 	inc	r0
      003F11 E6               [12] 3776 	mov	a,@r0
      003F12 C0 E0            [24] 3777 	push	acc
      003F14 08               [12] 3778 	inc	r0
      003F15 E6               [12] 3779 	mov	a,@r0
      003F16 C0 E0            [24] 3780 	push	acc
      003F18 8A 82            [24] 3781 	mov	dpl,r2
      003F1A 8B 83            [24] 3782 	mov	dph,r3
      003F1C 8C F0            [24] 3783 	mov	b,r4
      003F1E 12 26 B5         [24] 3784 	lcall	_stack_push
      003F21 E5 81            [12] 3785 	mov	a,sp
      003F23 24 FC            [12] 3786 	add	a,#0xfc
      003F25 F5 81            [12] 3787 	mov	sp,a
                                   3788 ;	calc.c:156: break;
      003F27 02 59 D5         [24] 3789 	ljmp	00249$
                                   3790 ;	calc.c:157: case 'u':
      003F2A                       3791 00133$:
                                   3792 ;	calc.c:158: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003F2A E5 08            [12] 3793 	mov	a,_bp
      003F2C 24 15            [12] 3794 	add	a,#0x15
      003F2E FF               [12] 3795 	mov	r7,a
      003F2F 7E 00            [12] 3796 	mov	r6,#0x00
      003F31 7D 40            [12] 3797 	mov	r5,#0x40
      003F33 E5 08            [12] 3798 	mov	a,_bp
      003F35 24 12            [12] 3799 	add	a,#0x12
      003F37 F8               [12] 3800 	mov	r0,a
      003F38 74 11            [12] 3801 	mov	a,#0x11
      003F3A 26               [12] 3802 	add	a,@r0
      003F3B FA               [12] 3803 	mov	r2,a
      003F3C ED               [12] 3804 	mov	a,r5
      003F3D 08               [12] 3805 	inc	r0
      003F3E 36               [12] 3806 	addc	a,@r0
      003F3F FB               [12] 3807 	mov	r3,a
      003F40 08               [12] 3808 	inc	r0
      003F41 86 04            [24] 3809 	mov	ar4,@r0
      003F43 8A 82            [24] 3810 	mov	dpl,r2
      003F45 8B 83            [24] 3811 	mov	dph,r3
      003F47 8C F0            [24] 3812 	mov	b,r4
      003F49 12 76 03         [24] 3813 	lcall	__gptrget
      003F4C FA               [12] 3814 	mov	r2,a
      003F4D A3               [24] 3815 	inc	dptr
      003F4E 12 76 03         [24] 3816 	lcall	__gptrget
      003F51 FB               [12] 3817 	mov	r3,a
      003F52 A3               [24] 3818 	inc	dptr
      003F53 12 76 03         [24] 3819 	lcall	__gptrget
      003F56 FC               [12] 3820 	mov	r4,a
      003F57 C0 07            [24] 3821 	push	ar7
      003F59 C0 06            [24] 3822 	push	ar6
      003F5B C0 05            [24] 3823 	push	ar5
      003F5D 8A 82            [24] 3824 	mov	dpl,r2
      003F5F 8B 83            [24] 3825 	mov	dph,r3
      003F61 8C F0            [24] 3826 	mov	b,r4
      003F63 12 28 5E         [24] 3827 	lcall	_stack_peek
      003F66 AB 82            [24] 3828 	mov	r3,dpl
      003F68 AC 83            [24] 3829 	mov	r4,dph
      003F6A 15 81            [12] 3830 	dec	sp
      003F6C 15 81            [12] 3831 	dec	sp
      003F6E 15 81            [12] 3832 	dec	sp
      003F70 EB               [12] 3833 	mov	a,r3
      003F71 4C               [12] 3834 	orl	a,r4
      003F72 70 31            [24] 3835 	jnz	00137$
      003F74 7F D2            [12] 3836 	mov	r7,#___str_10
      003F76 7E 8E            [12] 3837 	mov	r6,#(___str_10 >> 8)
      003F78 7D 80            [12] 3838 	mov	r5,#0x80
                                   3839 ;	calc.c:20: return;
      003F7A                       3840 00408$:
                                   3841 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003F7A 8F 82            [24] 3842 	mov	dpl,r7
      003F7C 8E 83            [24] 3843 	mov	dph,r6
      003F7E 8D F0            [24] 3844 	mov	b,r5
      003F80 12 76 03         [24] 3845 	lcall	__gptrget
      003F83 FC               [12] 3846 	mov	r4,a
      003F84 70 03            [24] 3847 	jnz	01308$
      003F86 02 59 D5         [24] 3848 	ljmp	00249$
      003F89                       3849 01308$:
      003F89 7B 00            [12] 3850 	mov	r3,#0x00
      003F8B 8C 82            [24] 3851 	mov	dpl,r4
      003F8D 8B 83            [24] 3852 	mov	dph,r3
      003F8F C0 07            [24] 3853 	push	ar7
      003F91 C0 06            [24] 3854 	push	ar6
      003F93 C0 05            [24] 3855 	push	ar5
      003F95 12 71 72         [24] 3856 	lcall	_putchar
      003F98 D0 05            [24] 3857 	pop	ar5
      003F9A D0 06            [24] 3858 	pop	ar6
      003F9C D0 07            [24] 3859 	pop	ar7
      003F9E 0F               [12] 3860 	inc	r7
                                   3861 ;	calc.c:158: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003F9F BF 00 D8         [24] 3862 	cjne	r7,#0x00,00408$
      003FA2 0E               [12] 3863 	inc	r6
      003FA3 80 D5            [24] 3864 	sjmp	00408$
      003FA5                       3865 00137$:
                                   3866 ;	calc.c:159: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      003FA5 E5 08            [12] 3867 	mov	a,_bp
      003FA7 24 12            [12] 3868 	add	a,#0x12
      003FA9 F8               [12] 3869 	mov	r0,a
      003FAA 74 14            [12] 3870 	mov	a,#0x14
      003FAC 26               [12] 3871 	add	a,@r0
      003FAD FA               [12] 3872 	mov	r2,a
      003FAE 74 40            [12] 3873 	mov	a,#0x40
      003FB0 08               [12] 3874 	inc	r0
      003FB1 36               [12] 3875 	addc	a,@r0
      003FB2 FB               [12] 3876 	mov	r3,a
      003FB3 08               [12] 3877 	inc	r0
      003FB4 86 04            [24] 3878 	mov	ar4,@r0
      003FB6 8A 82            [24] 3879 	mov	dpl,r2
      003FB8 8B 83            [24] 3880 	mov	dph,r3
      003FBA 8C F0            [24] 3881 	mov	b,r4
      003FBC 12 76 03         [24] 3882 	lcall	__gptrget
      003FBF FA               [12] 3883 	mov	r2,a
      003FC0 A3               [24] 3884 	inc	dptr
      003FC1 12 76 03         [24] 3885 	lcall	__gptrget
      003FC4 FB               [12] 3886 	mov	r3,a
      003FC5 A3               [24] 3887 	inc	dptr
      003FC6 12 76 03         [24] 3888 	lcall	__gptrget
      003FC9 FC               [12] 3889 	mov	r4,a
      003FCA E5 08            [12] 3890 	mov	a,_bp
      003FCC 24 15            [12] 3891 	add	a,#0x15
      003FCE F8               [12] 3892 	mov	r0,a
      003FCF E6               [12] 3893 	mov	a,@r0
      003FD0 C0 E0            [24] 3894 	push	acc
      003FD2 08               [12] 3895 	inc	r0
      003FD3 E6               [12] 3896 	mov	a,@r0
      003FD4 C0 E0            [24] 3897 	push	acc
      003FD6 08               [12] 3898 	inc	r0
      003FD7 E6               [12] 3899 	mov	a,@r0
      003FD8 C0 E0            [24] 3900 	push	acc
      003FDA 08               [12] 3901 	inc	r0
      003FDB E6               [12] 3902 	mov	a,@r0
      003FDC C0 E0            [24] 3903 	push	acc
      003FDE 8A 82            [24] 3904 	mov	dpl,r2
      003FE0 8B 83            [24] 3905 	mov	dph,r3
      003FE2 8C F0            [24] 3906 	mov	b,r4
      003FE4 12 26 B5         [24] 3907 	lcall	_stack_push
      003FE7 AB 82            [24] 3908 	mov	r3,dpl
      003FE9 AC 83            [24] 3909 	mov	r4,dph
      003FEB E5 81            [12] 3910 	mov	a,sp
      003FED 24 FC            [12] 3911 	add	a,#0xfc
      003FEF F5 81            [12] 3912 	mov	sp,a
      003FF1 EB               [12] 3913 	mov	a,r3
      003FF2 4C               [12] 3914 	orl	a,r4
      003FF3 60 03            [24] 3915 	jz	01310$
      003FF5 02 59 D5         [24] 3916 	ljmp	00249$
      003FF8                       3917 01310$:
      003FF8 7F E6            [12] 3918 	mov	r7,#___str_11
      003FFA 7E 8E            [12] 3919 	mov	r6,#(___str_11 >> 8)
      003FFC 7D 80            [12] 3920 	mov	r5,#0x80
                                   3921 ;	calc.c:20: return;
      003FFE                       3922 00411$:
                                   3923 ;	calc.c:18: for (; *s; s++) putchar(*s);
      003FFE 8F 82            [24] 3924 	mov	dpl,r7
      004000 8E 83            [24] 3925 	mov	dph,r6
      004002 8D F0            [24] 3926 	mov	b,r5
      004004 12 76 03         [24] 3927 	lcall	__gptrget
      004007 FC               [12] 3928 	mov	r4,a
      004008 70 03            [24] 3929 	jnz	01311$
      00400A 02 59 D5         [24] 3930 	ljmp	00249$
      00400D                       3931 01311$:
      00400D 7B 00            [12] 3932 	mov	r3,#0x00
      00400F 8C 82            [24] 3933 	mov	dpl,r4
      004011 8B 83            [24] 3934 	mov	dph,r3
      004013 C0 07            [24] 3935 	push	ar7
      004015 C0 06            [24] 3936 	push	ar6
      004017 C0 05            [24] 3937 	push	ar5
      004019 12 71 72         [24] 3938 	lcall	_putchar
      00401C D0 05            [24] 3939 	pop	ar5
      00401E D0 06            [24] 3940 	pop	ar6
      004020 D0 07            [24] 3941 	pop	ar7
      004022 0F               [12] 3942 	inc	r7
                                   3943 ;	calc.c:161: case 'U':
      004023 BF 00 D8         [24] 3944 	cjne	r7,#0x00,00411$
      004026 0E               [12] 3945 	inc	r6
      004027 80 D5            [24] 3946 	sjmp	00411$
      004029                       3947 00139$:
                                   3948 ;	calc.c:162: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      004029 E5 08            [12] 3949 	mov	a,_bp
      00402B 24 15            [12] 3950 	add	a,#0x15
      00402D FF               [12] 3951 	mov	r7,a
      00402E 7E 00            [12] 3952 	mov	r6,#0x00
      004030 7D 40            [12] 3953 	mov	r5,#0x40
      004032 E5 08            [12] 3954 	mov	a,_bp
      004034 24 12            [12] 3955 	add	a,#0x12
      004036 F8               [12] 3956 	mov	r0,a
      004037 74 14            [12] 3957 	mov	a,#0x14
      004039 26               [12] 3958 	add	a,@r0
      00403A FA               [12] 3959 	mov	r2,a
      00403B ED               [12] 3960 	mov	a,r5
      00403C 08               [12] 3961 	inc	r0
      00403D 36               [12] 3962 	addc	a,@r0
      00403E FB               [12] 3963 	mov	r3,a
      00403F 08               [12] 3964 	inc	r0
      004040 86 04            [24] 3965 	mov	ar4,@r0
      004042 8A 82            [24] 3966 	mov	dpl,r2
      004044 8B 83            [24] 3967 	mov	dph,r3
      004046 8C F0            [24] 3968 	mov	b,r4
      004048 12 76 03         [24] 3969 	lcall	__gptrget
      00404B FA               [12] 3970 	mov	r2,a
      00404C A3               [24] 3971 	inc	dptr
      00404D 12 76 03         [24] 3972 	lcall	__gptrget
      004050 FB               [12] 3973 	mov	r3,a
      004051 A3               [24] 3974 	inc	dptr
      004052 12 76 03         [24] 3975 	lcall	__gptrget
      004055 FC               [12] 3976 	mov	r4,a
      004056 C0 07            [24] 3977 	push	ar7
      004058 C0 06            [24] 3978 	push	ar6
      00405A C0 05            [24] 3979 	push	ar5
      00405C 8A 82            [24] 3980 	mov	dpl,r2
      00405E 8B 83            [24] 3981 	mov	dph,r3
      004060 8C F0            [24] 3982 	mov	b,r4
      004062 12 28 5E         [24] 3983 	lcall	_stack_peek
      004065 AB 82            [24] 3984 	mov	r3,dpl
      004067 AC 83            [24] 3985 	mov	r4,dph
      004069 15 81            [12] 3986 	dec	sp
      00406B 15 81            [12] 3987 	dec	sp
      00406D 15 81            [12] 3988 	dec	sp
      00406F EB               [12] 3989 	mov	a,r3
      004070 4C               [12] 3990 	orl	a,r4
      004071 70 31            [24] 3991 	jnz	00143$
      004073 7F 03            [12] 3992 	mov	r7,#___str_12
      004075 7E 8F            [12] 3993 	mov	r6,#(___str_12 >> 8)
      004077 7D 80            [12] 3994 	mov	r5,#0x80
                                   3995 ;	calc.c:20: return;
      004079                       3996 00414$:
                                   3997 ;	calc.c:18: for (; *s; s++) putchar(*s);
      004079 8F 82            [24] 3998 	mov	dpl,r7
      00407B 8E 83            [24] 3999 	mov	dph,r6
      00407D 8D F0            [24] 4000 	mov	b,r5
      00407F 12 76 03         [24] 4001 	lcall	__gptrget
      004082 FC               [12] 4002 	mov	r4,a
      004083 70 03            [24] 4003 	jnz	01314$
      004085 02 59 D5         [24] 4004 	ljmp	00249$
      004088                       4005 01314$:
      004088 7B 00            [12] 4006 	mov	r3,#0x00
      00408A 8C 82            [24] 4007 	mov	dpl,r4
      00408C 8B 83            [24] 4008 	mov	dph,r3
      00408E C0 07            [24] 4009 	push	ar7
      004090 C0 06            [24] 4010 	push	ar6
      004092 C0 05            [24] 4011 	push	ar5
      004094 12 71 72         [24] 4012 	lcall	_putchar
      004097 D0 05            [24] 4013 	pop	ar5
      004099 D0 06            [24] 4014 	pop	ar6
      00409B D0 07            [24] 4015 	pop	ar7
      00409D 0F               [12] 4016 	inc	r7
                                   4017 ;	calc.c:162: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      00409E BF 00 D8         [24] 4018 	cjne	r7,#0x00,00414$
      0040A1 0E               [12] 4019 	inc	r6
      0040A2 80 D5            [24] 4020 	sjmp	00414$
      0040A4                       4021 00143$:
                                   4022 ;	calc.c:163: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      0040A4 E5 08            [12] 4023 	mov	a,_bp
      0040A6 24 12            [12] 4024 	add	a,#0x12
      0040A8 F8               [12] 4025 	mov	r0,a
      0040A9 74 11            [12] 4026 	mov	a,#0x11
      0040AB 26               [12] 4027 	add	a,@r0
      0040AC FA               [12] 4028 	mov	r2,a
      0040AD 74 40            [12] 4029 	mov	a,#0x40
      0040AF 08               [12] 4030 	inc	r0
      0040B0 36               [12] 4031 	addc	a,@r0
      0040B1 FB               [12] 4032 	mov	r3,a
      0040B2 08               [12] 4033 	inc	r0
      0040B3 86 04            [24] 4034 	mov	ar4,@r0
      0040B5 8A 82            [24] 4035 	mov	dpl,r2
      0040B7 8B 83            [24] 4036 	mov	dph,r3
      0040B9 8C F0            [24] 4037 	mov	b,r4
      0040BB 12 76 03         [24] 4038 	lcall	__gptrget
      0040BE FA               [12] 4039 	mov	r2,a
      0040BF A3               [24] 4040 	inc	dptr
      0040C0 12 76 03         [24] 4041 	lcall	__gptrget
      0040C3 FB               [12] 4042 	mov	r3,a
      0040C4 A3               [24] 4043 	inc	dptr
      0040C5 12 76 03         [24] 4044 	lcall	__gptrget
      0040C8 FC               [12] 4045 	mov	r4,a
      0040C9 E5 08            [12] 4046 	mov	a,_bp
      0040CB 24 15            [12] 4047 	add	a,#0x15
      0040CD F8               [12] 4048 	mov	r0,a
      0040CE E6               [12] 4049 	mov	a,@r0
      0040CF C0 E0            [24] 4050 	push	acc
      0040D1 08               [12] 4051 	inc	r0
      0040D2 E6               [12] 4052 	mov	a,@r0
      0040D3 C0 E0            [24] 4053 	push	acc
      0040D5 08               [12] 4054 	inc	r0
      0040D6 E6               [12] 4055 	mov	a,@r0
      0040D7 C0 E0            [24] 4056 	push	acc
      0040D9 08               [12] 4057 	inc	r0
      0040DA E6               [12] 4058 	mov	a,@r0
      0040DB C0 E0            [24] 4059 	push	acc
      0040DD 8A 82            [24] 4060 	mov	dpl,r2
      0040DF 8B 83            [24] 4061 	mov	dph,r3
      0040E1 8C F0            [24] 4062 	mov	b,r4
      0040E3 12 26 B5         [24] 4063 	lcall	_stack_push
      0040E6 AB 82            [24] 4064 	mov	r3,dpl
      0040E8 AC 83            [24] 4065 	mov	r4,dph
      0040EA E5 81            [12] 4066 	mov	a,sp
      0040EC 24 FC            [12] 4067 	add	a,#0xfc
      0040EE F5 81            [12] 4068 	mov	sp,a
      0040F0 EB               [12] 4069 	mov	a,r3
      0040F1 4C               [12] 4070 	orl	a,r4
      0040F2 60 03            [24] 4071 	jz	01316$
      0040F4 02 59 D5         [24] 4072 	ljmp	00249$
      0040F7                       4073 01316$:
      0040F7 7F 21            [12] 4074 	mov	r7,#___str_13
      0040F9 7E 8F            [12] 4075 	mov	r6,#(___str_13 >> 8)
      0040FB 7D 80            [12] 4076 	mov	r5,#0x80
                                   4077 ;	calc.c:20: return;
      0040FD                       4078 00417$:
                                   4079 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0040FD 8F 82            [24] 4080 	mov	dpl,r7
      0040FF 8E 83            [24] 4081 	mov	dph,r6
      004101 8D F0            [24] 4082 	mov	b,r5
      004103 12 76 03         [24] 4083 	lcall	__gptrget
      004106 FC               [12] 4084 	mov	r4,a
      004107 70 03            [24] 4085 	jnz	01317$
      004109 02 59 D5         [24] 4086 	ljmp	00249$
      00410C                       4087 01317$:
      00410C 7B 00            [12] 4088 	mov	r3,#0x00
      00410E 8C 82            [24] 4089 	mov	dpl,r4
      004110 8B 83            [24] 4090 	mov	dph,r3
      004112 C0 07            [24] 4091 	push	ar7
      004114 C0 06            [24] 4092 	push	ar6
      004116 C0 05            [24] 4093 	push	ar5
      004118 12 71 72         [24] 4094 	lcall	_putchar
      00411B D0 05            [24] 4095 	pop	ar5
      00411D D0 06            [24] 4096 	pop	ar6
      00411F D0 07            [24] 4097 	pop	ar7
      004121 0F               [12] 4098 	inc	r7
                                   4099 ;	calc.c:165: case 'T':
      004122 BF 00 D8         [24] 4100 	cjne	r7,#0x00,00417$
      004125 0E               [12] 4101 	inc	r6
      004126 80 D5            [24] 4102 	sjmp	00417$
      004128                       4103 00145$:
                                   4104 ;	calc.c:166: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004128 E5 08            [12] 4105 	mov	a,_bp
      00412A 24 15            [12] 4106 	add	a,#0x15
      00412C FF               [12] 4107 	mov	r7,a
      00412D 7E 00            [12] 4108 	mov	r6,#0x00
      00412F 7D 40            [12] 4109 	mov	r5,#0x40
      004131 E5 08            [12] 4110 	mov	a,_bp
      004133 24 12            [12] 4111 	add	a,#0x12
      004135 F8               [12] 4112 	mov	r0,a
      004136 E5 08            [12] 4113 	mov	a,_bp
      004138 24 07            [12] 4114 	add	a,#0x07
      00413A F9               [12] 4115 	mov	r1,a
      00413B 74 11            [12] 4116 	mov	a,#0x11
      00413D 26               [12] 4117 	add	a,@r0
      00413E F7               [12] 4118 	mov	@r1,a
      00413F 74 40            [12] 4119 	mov	a,#0x40
      004141 08               [12] 4120 	inc	r0
      004142 36               [12] 4121 	addc	a,@r0
      004143 09               [12] 4122 	inc	r1
      004144 F7               [12] 4123 	mov	@r1,a
      004145 08               [12] 4124 	inc	r0
      004146 09               [12] 4125 	inc	r1
      004147 E6               [12] 4126 	mov	a,@r0
      004148 F7               [12] 4127 	mov	@r1,a
      004149 E5 08            [12] 4128 	mov	a,_bp
      00414B 24 07            [12] 4129 	add	a,#0x07
      00414D F8               [12] 4130 	mov	r0,a
      00414E 86 82            [24] 4131 	mov	dpl,@r0
      004150 08               [12] 4132 	inc	r0
      004151 86 83            [24] 4133 	mov	dph,@r0
      004153 08               [12] 4134 	inc	r0
      004154 86 F0            [24] 4135 	mov	b,@r0
      004156 12 76 03         [24] 4136 	lcall	__gptrget
      004159 FA               [12] 4137 	mov	r2,a
      00415A A3               [24] 4138 	inc	dptr
      00415B 12 76 03         [24] 4139 	lcall	__gptrget
      00415E FB               [12] 4140 	mov	r3,a
      00415F A3               [24] 4141 	inc	dptr
      004160 12 76 03         [24] 4142 	lcall	__gptrget
      004163 FC               [12] 4143 	mov	r4,a
      004164 C0 07            [24] 4144 	push	ar7
      004166 C0 06            [24] 4145 	push	ar6
      004168 C0 05            [24] 4146 	push	ar5
      00416A 8A 82            [24] 4147 	mov	dpl,r2
      00416C 8B 83            [24] 4148 	mov	dph,r3
      00416E 8C F0            [24] 4149 	mov	b,r4
      004170 12 27 83         [24] 4150 	lcall	_stack_pop
      004173 AB 82            [24] 4151 	mov	r3,dpl
      004175 AC 83            [24] 4152 	mov	r4,dph
      004177 15 81            [12] 4153 	dec	sp
      004179 15 81            [12] 4154 	dec	sp
      00417B 15 81            [12] 4155 	dec	sp
      00417D EB               [12] 4156 	mov	a,r3
      00417E 4C               [12] 4157 	orl	a,r4
      00417F 70 31            [24] 4158 	jnz	00150$
      004181 7F D2            [12] 4159 	mov	r7,#___str_10
      004183 7E 8E            [12] 4160 	mov	r6,#(___str_10 >> 8)
      004185 7D 80            [12] 4161 	mov	r5,#0x80
                                   4162 ;	calc.c:20: return;
      004187                       4163 00420$:
                                   4164 ;	calc.c:18: for (; *s; s++) putchar(*s);
      004187 8F 82            [24] 4165 	mov	dpl,r7
      004189 8E 83            [24] 4166 	mov	dph,r6
      00418B 8D F0            [24] 4167 	mov	b,r5
      00418D 12 76 03         [24] 4168 	lcall	__gptrget
      004190 FC               [12] 4169 	mov	r4,a
      004191 70 03            [24] 4170 	jnz	01320$
      004193 02 59 D5         [24] 4171 	ljmp	00249$
      004196                       4172 01320$:
      004196 7B 00            [12] 4173 	mov	r3,#0x00
      004198 8C 82            [24] 4174 	mov	dpl,r4
      00419A 8B 83            [24] 4175 	mov	dph,r3
      00419C C0 07            [24] 4176 	push	ar7
      00419E C0 06            [24] 4177 	push	ar6
      0041A0 C0 05            [24] 4178 	push	ar5
      0041A2 12 71 72         [24] 4179 	lcall	_putchar
      0041A5 D0 05            [24] 4180 	pop	ar5
      0041A7 D0 06            [24] 4181 	pop	ar6
      0041A9 D0 07            [24] 4182 	pop	ar7
      0041AB 0F               [12] 4183 	inc	r7
                                   4184 ;	calc.c:166: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0041AC BF 00 D8         [24] 4185 	cjne	r7,#0x00,00420$
      0041AF 0E               [12] 4186 	inc	r6
      0041B0 80 D5            [24] 4187 	sjmp	00420$
      0041B2                       4188 00150$:
                                   4189 ;	calc.c:168: if (!stack_pop(ctx->ss, &d1)) {
      0041B2 E5 08            [12] 4190 	mov	a,_bp
      0041B4 24 19            [12] 4191 	add	a,#0x19
      0041B6 FF               [12] 4192 	mov	r7,a
      0041B7 7E 00            [12] 4193 	mov	r6,#0x00
      0041B9 7D 40            [12] 4194 	mov	r5,#0x40
      0041BB E5 08            [12] 4195 	mov	a,_bp
      0041BD 24 12            [12] 4196 	add	a,#0x12
      0041BF F8               [12] 4197 	mov	r0,a
      0041C0 E5 08            [12] 4198 	mov	a,_bp
      0041C2 24 04            [12] 4199 	add	a,#0x04
      0041C4 F9               [12] 4200 	mov	r1,a
      0041C5 74 14            [12] 4201 	mov	a,#0x14
      0041C7 26               [12] 4202 	add	a,@r0
      0041C8 F7               [12] 4203 	mov	@r1,a
      0041C9 74 40            [12] 4204 	mov	a,#0x40
      0041CB 08               [12] 4205 	inc	r0
      0041CC 36               [12] 4206 	addc	a,@r0
      0041CD 09               [12] 4207 	inc	r1
      0041CE F7               [12] 4208 	mov	@r1,a
      0041CF 08               [12] 4209 	inc	r0
      0041D0 09               [12] 4210 	inc	r1
      0041D1 E6               [12] 4211 	mov	a,@r0
      0041D2 F7               [12] 4212 	mov	@r1,a
      0041D3 E5 08            [12] 4213 	mov	a,_bp
      0041D5 24 04            [12] 4214 	add	a,#0x04
      0041D7 F8               [12] 4215 	mov	r0,a
      0041D8 86 82            [24] 4216 	mov	dpl,@r0
      0041DA 08               [12] 4217 	inc	r0
      0041DB 86 83            [24] 4218 	mov	dph,@r0
      0041DD 08               [12] 4219 	inc	r0
      0041DE 86 F0            [24] 4220 	mov	b,@r0
      0041E0 12 76 03         [24] 4221 	lcall	__gptrget
      0041E3 FA               [12] 4222 	mov	r2,a
      0041E4 A3               [24] 4223 	inc	dptr
      0041E5 12 76 03         [24] 4224 	lcall	__gptrget
      0041E8 FB               [12] 4225 	mov	r3,a
      0041E9 A3               [24] 4226 	inc	dptr
      0041EA 12 76 03         [24] 4227 	lcall	__gptrget
      0041ED FC               [12] 4228 	mov	r4,a
      0041EE C0 07            [24] 4229 	push	ar7
      0041F0 C0 06            [24] 4230 	push	ar6
      0041F2 C0 05            [24] 4231 	push	ar5
      0041F4 8A 82            [24] 4232 	mov	dpl,r2
      0041F6 8B 83            [24] 4233 	mov	dph,r3
      0041F8 8C F0            [24] 4234 	mov	b,r4
      0041FA 12 27 83         [24] 4235 	lcall	_stack_pop
      0041FD AB 82            [24] 4236 	mov	r3,dpl
      0041FF AC 83            [24] 4237 	mov	r4,dph
      004201 15 81            [12] 4238 	dec	sp
      004203 15 81            [12] 4239 	dec	sp
      004205 15 81            [12] 4240 	dec	sp
      004207 EB               [12] 4241 	mov	a,r3
      004208 4C               [12] 4242 	orl	a,r4
      004209 70 6F            [24] 4243 	jnz	00147$
                                   4244 ;	calc.c:169: printstr("\r\nsecondary stack underflow\r\n");
      00420B 7F 03            [12] 4245 	mov	r7,#___str_12
      00420D 7E 8F            [12] 4246 	mov	r6,#(___str_12 >> 8)
      00420F 7D 80            [12] 4247 	mov	r5,#0x80
                                   4248 ;	calc.c:20: return;
      004211                       4249 00423$:
                                   4250 ;	calc.c:18: for (; *s; s++) putchar(*s);
      004211 8F 82            [24] 4251 	mov	dpl,r7
      004213 8E 83            [24] 4252 	mov	dph,r6
      004215 8D F0            [24] 4253 	mov	b,r5
      004217 12 76 03         [24] 4254 	lcall	__gptrget
      00421A FC               [12] 4255 	mov	r4,a
      00421B 60 1C            [24] 4256 	jz	00301$
      00421D 7B 00            [12] 4257 	mov	r3,#0x00
      00421F 8C 82            [24] 4258 	mov	dpl,r4
      004221 8B 83            [24] 4259 	mov	dph,r3
      004223 C0 07            [24] 4260 	push	ar7
      004225 C0 06            [24] 4261 	push	ar6
      004227 C0 05            [24] 4262 	push	ar5
      004229 12 71 72         [24] 4263 	lcall	_putchar
      00422C D0 05            [24] 4264 	pop	ar5
      00422E D0 06            [24] 4265 	pop	ar6
      004230 D0 07            [24] 4266 	pop	ar7
      004232 0F               [12] 4267 	inc	r7
                                   4268 ;	calc.c:169: printstr("\r\nsecondary stack underflow\r\n");
      004233 BF 00 DB         [24] 4269 	cjne	r7,#0x00,00423$
      004236 0E               [12] 4270 	inc	r6
      004237 80 D8            [24] 4271 	sjmp	00423$
      004239                       4272 00301$:
                                   4273 ;	calc.c:170: (void)stack_push(ctx->ps, d0);
      004239 E5 08            [12] 4274 	mov	a,_bp
      00423B 24 07            [12] 4275 	add	a,#0x07
      00423D F8               [12] 4276 	mov	r0,a
      00423E 86 82            [24] 4277 	mov	dpl,@r0
      004240 08               [12] 4278 	inc	r0
      004241 86 83            [24] 4279 	mov	dph,@r0
      004243 08               [12] 4280 	inc	r0
      004244 86 F0            [24] 4281 	mov	b,@r0
      004246 12 76 03         [24] 4282 	lcall	__gptrget
      004249 FA               [12] 4283 	mov	r2,a
      00424A A3               [24] 4284 	inc	dptr
      00424B 12 76 03         [24] 4285 	lcall	__gptrget
      00424E FB               [12] 4286 	mov	r3,a
      00424F A3               [24] 4287 	inc	dptr
      004250 12 76 03         [24] 4288 	lcall	__gptrget
      004253 FC               [12] 4289 	mov	r4,a
      004254 E5 08            [12] 4290 	mov	a,_bp
      004256 24 15            [12] 4291 	add	a,#0x15
      004258 F8               [12] 4292 	mov	r0,a
      004259 E6               [12] 4293 	mov	a,@r0
      00425A C0 E0            [24] 4294 	push	acc
      00425C 08               [12] 4295 	inc	r0
      00425D E6               [12] 4296 	mov	a,@r0
      00425E C0 E0            [24] 4297 	push	acc
      004260 08               [12] 4298 	inc	r0
      004261 E6               [12] 4299 	mov	a,@r0
      004262 C0 E0            [24] 4300 	push	acc
      004264 08               [12] 4301 	inc	r0
      004265 E6               [12] 4302 	mov	a,@r0
      004266 C0 E0            [24] 4303 	push	acc
      004268 8A 82            [24] 4304 	mov	dpl,r2
      00426A 8B 83            [24] 4305 	mov	dph,r3
      00426C 8C F0            [24] 4306 	mov	b,r4
      00426E 12 26 B5         [24] 4307 	lcall	_stack_push
      004271 E5 81            [12] 4308 	mov	a,sp
      004273 24 FC            [12] 4309 	add	a,#0xfc
      004275 F5 81            [12] 4310 	mov	sp,a
      004277 02 59 D5         [24] 4311 	ljmp	00249$
      00427A                       4312 00147$:
                                   4313 ;	calc.c:172: (void)stack_push(ctx->ps, d1);
      00427A E5 08            [12] 4314 	mov	a,_bp
      00427C 24 07            [12] 4315 	add	a,#0x07
      00427E F8               [12] 4316 	mov	r0,a
      00427F 86 82            [24] 4317 	mov	dpl,@r0
      004281 08               [12] 4318 	inc	r0
      004282 86 83            [24] 4319 	mov	dph,@r0
      004284 08               [12] 4320 	inc	r0
      004285 86 F0            [24] 4321 	mov	b,@r0
      004287 12 76 03         [24] 4322 	lcall	__gptrget
      00428A FA               [12] 4323 	mov	r2,a
      00428B A3               [24] 4324 	inc	dptr
      00428C 12 76 03         [24] 4325 	lcall	__gptrget
      00428F FB               [12] 4326 	mov	r3,a
      004290 A3               [24] 4327 	inc	dptr
      004291 12 76 03         [24] 4328 	lcall	__gptrget
      004294 FC               [12] 4329 	mov	r4,a
      004295 E5 08            [12] 4330 	mov	a,_bp
      004297 24 19            [12] 4331 	add	a,#0x19
      004299 F8               [12] 4332 	mov	r0,a
      00429A E6               [12] 4333 	mov	a,@r0
      00429B C0 E0            [24] 4334 	push	acc
      00429D 08               [12] 4335 	inc	r0
      00429E E6               [12] 4336 	mov	a,@r0
      00429F C0 E0            [24] 4337 	push	acc
      0042A1 08               [12] 4338 	inc	r0
      0042A2 E6               [12] 4339 	mov	a,@r0
      0042A3 C0 E0            [24] 4340 	push	acc
      0042A5 08               [12] 4341 	inc	r0
      0042A6 E6               [12] 4342 	mov	a,@r0
      0042A7 C0 E0            [24] 4343 	push	acc
      0042A9 8A 82            [24] 4344 	mov	dpl,r2
      0042AB 8B 83            [24] 4345 	mov	dph,r3
      0042AD 8C F0            [24] 4346 	mov	b,r4
      0042AF 12 26 B5         [24] 4347 	lcall	_stack_push
      0042B2 E5 81            [12] 4348 	mov	a,sp
      0042B4 24 FC            [12] 4349 	add	a,#0xfc
      0042B6 F5 81            [12] 4350 	mov	sp,a
                                   4351 ;	calc.c:173: (void)stack_push(ctx->ss, d0);
      0042B8 E5 08            [12] 4352 	mov	a,_bp
      0042BA 24 04            [12] 4353 	add	a,#0x04
      0042BC F8               [12] 4354 	mov	r0,a
      0042BD 86 82            [24] 4355 	mov	dpl,@r0
      0042BF 08               [12] 4356 	inc	r0
      0042C0 86 83            [24] 4357 	mov	dph,@r0
      0042C2 08               [12] 4358 	inc	r0
      0042C3 86 F0            [24] 4359 	mov	b,@r0
      0042C5 12 76 03         [24] 4360 	lcall	__gptrget
      0042C8 FA               [12] 4361 	mov	r2,a
      0042C9 A3               [24] 4362 	inc	dptr
      0042CA 12 76 03         [24] 4363 	lcall	__gptrget
      0042CD FB               [12] 4364 	mov	r3,a
      0042CE A3               [24] 4365 	inc	dptr
      0042CF 12 76 03         [24] 4366 	lcall	__gptrget
      0042D2 FC               [12] 4367 	mov	r4,a
      0042D3 E5 08            [12] 4368 	mov	a,_bp
      0042D5 24 15            [12] 4369 	add	a,#0x15
      0042D7 F8               [12] 4370 	mov	r0,a
      0042D8 E6               [12] 4371 	mov	a,@r0
      0042D9 C0 E0            [24] 4372 	push	acc
      0042DB 08               [12] 4373 	inc	r0
      0042DC E6               [12] 4374 	mov	a,@r0
      0042DD C0 E0            [24] 4375 	push	acc
      0042DF 08               [12] 4376 	inc	r0
      0042E0 E6               [12] 4377 	mov	a,@r0
      0042E1 C0 E0            [24] 4378 	push	acc
      0042E3 08               [12] 4379 	inc	r0
      0042E4 E6               [12] 4380 	mov	a,@r0
      0042E5 C0 E0            [24] 4381 	push	acc
      0042E7 8A 82            [24] 4382 	mov	dpl,r2
      0042E9 8B 83            [24] 4383 	mov	dph,r3
      0042EB 8C F0            [24] 4384 	mov	b,r4
      0042ED 12 26 B5         [24] 4385 	lcall	_stack_push
      0042F0 E5 81            [12] 4386 	mov	a,sp
      0042F2 24 FC            [12] 4387 	add	a,#0xfc
      0042F4 F5 81            [12] 4388 	mov	sp,a
                                   4389 ;	calc.c:176: break;
      0042F6 02 59 D5         [24] 4390 	ljmp	00249$
                                   4391 ;	calc.c:177: case 'X':
      0042F9                       4392 00152$:
                                   4393 ;	calc.c:178: t0 = ctx->ps;
      0042F9 E5 08            [12] 4394 	mov	a,_bp
      0042FB 24 12            [12] 4395 	add	a,#0x12
      0042FD F8               [12] 4396 	mov	r0,a
      0042FE E5 08            [12] 4397 	mov	a,_bp
      004300 24 0B            [12] 4398 	add	a,#0x0b
      004302 F9               [12] 4399 	mov	r1,a
      004303 74 11            [12] 4400 	mov	a,#0x11
      004305 26               [12] 4401 	add	a,@r0
      004306 F7               [12] 4402 	mov	@r1,a
      004307 74 40            [12] 4403 	mov	a,#0x40
      004309 08               [12] 4404 	inc	r0
      00430A 36               [12] 4405 	addc	a,@r0
      00430B 09               [12] 4406 	inc	r1
      00430C F7               [12] 4407 	mov	@r1,a
      00430D 08               [12] 4408 	inc	r0
      00430E 09               [12] 4409 	inc	r1
      00430F E6               [12] 4410 	mov	a,@r0
      004310 F7               [12] 4411 	mov	@r1,a
      004311 E5 08            [12] 4412 	mov	a,_bp
      004313 24 0B            [12] 4413 	add	a,#0x0b
      004315 F8               [12] 4414 	mov	r0,a
      004316 86 82            [24] 4415 	mov	dpl,@r0
      004318 08               [12] 4416 	inc	r0
      004319 86 83            [24] 4417 	mov	dph,@r0
      00431B 08               [12] 4418 	inc	r0
      00431C 86 F0            [24] 4419 	mov	b,@r0
      00431E 12 76 03         [24] 4420 	lcall	__gptrget
      004321 FF               [12] 4421 	mov	r7,a
      004322 A3               [24] 4422 	inc	dptr
      004323 12 76 03         [24] 4423 	lcall	__gptrget
      004326 FE               [12] 4424 	mov	r6,a
      004327 A3               [24] 4425 	inc	dptr
      004328 12 76 03         [24] 4426 	lcall	__gptrget
      00432B FD               [12] 4427 	mov	r5,a
                                   4428 ;	calc.c:179: ctx->ps = ctx->ss;
      00432C E5 08            [12] 4429 	mov	a,_bp
      00432E 24 12            [12] 4430 	add	a,#0x12
      004330 F8               [12] 4431 	mov	r0,a
      004331 E5 08            [12] 4432 	mov	a,_bp
      004333 24 07            [12] 4433 	add	a,#0x07
      004335 F9               [12] 4434 	mov	r1,a
      004336 74 14            [12] 4435 	mov	a,#0x14
      004338 26               [12] 4436 	add	a,@r0
      004339 F7               [12] 4437 	mov	@r1,a
      00433A 74 40            [12] 4438 	mov	a,#0x40
      00433C 08               [12] 4439 	inc	r0
      00433D 36               [12] 4440 	addc	a,@r0
      00433E 09               [12] 4441 	inc	r1
      00433F F7               [12] 4442 	mov	@r1,a
      004340 08               [12] 4443 	inc	r0
      004341 09               [12] 4444 	inc	r1
      004342 E6               [12] 4445 	mov	a,@r0
      004343 F7               [12] 4446 	mov	@r1,a
      004344 E5 08            [12] 4447 	mov	a,_bp
      004346 24 07            [12] 4448 	add	a,#0x07
      004348 F8               [12] 4449 	mov	r0,a
      004349 86 82            [24] 4450 	mov	dpl,@r0
      00434B 08               [12] 4451 	inc	r0
      00434C 86 83            [24] 4452 	mov	dph,@r0
      00434E 08               [12] 4453 	inc	r0
      00434F 86 F0            [24] 4454 	mov	b,@r0
      004351 12 76 03         [24] 4455 	lcall	__gptrget
      004354 FA               [12] 4456 	mov	r2,a
      004355 A3               [24] 4457 	inc	dptr
      004356 12 76 03         [24] 4458 	lcall	__gptrget
      004359 FB               [12] 4459 	mov	r3,a
      00435A A3               [24] 4460 	inc	dptr
      00435B 12 76 03         [24] 4461 	lcall	__gptrget
      00435E FC               [12] 4462 	mov	r4,a
      00435F E5 08            [12] 4463 	mov	a,_bp
      004361 24 0B            [12] 4464 	add	a,#0x0b
      004363 F8               [12] 4465 	mov	r0,a
      004364 86 82            [24] 4466 	mov	dpl,@r0
      004366 08               [12] 4467 	inc	r0
      004367 86 83            [24] 4468 	mov	dph,@r0
      004369 08               [12] 4469 	inc	r0
      00436A 86 F0            [24] 4470 	mov	b,@r0
      00436C EA               [12] 4471 	mov	a,r2
      00436D 12 71 57         [24] 4472 	lcall	__gptrput
      004370 A3               [24] 4473 	inc	dptr
      004371 EB               [12] 4474 	mov	a,r3
      004372 12 71 57         [24] 4475 	lcall	__gptrput
      004375 A3               [24] 4476 	inc	dptr
      004376 EC               [12] 4477 	mov	a,r4
      004377 12 71 57         [24] 4478 	lcall	__gptrput
                                   4479 ;	calc.c:180: ctx->ss = t0;
      00437A E5 08            [12] 4480 	mov	a,_bp
      00437C 24 07            [12] 4481 	add	a,#0x07
      00437E F8               [12] 4482 	mov	r0,a
      00437F 86 82            [24] 4483 	mov	dpl,@r0
      004381 08               [12] 4484 	inc	r0
      004382 86 83            [24] 4485 	mov	dph,@r0
      004384 08               [12] 4486 	inc	r0
      004385 86 F0            [24] 4487 	mov	b,@r0
      004387 EF               [12] 4488 	mov	a,r7
      004388 12 71 57         [24] 4489 	lcall	__gptrput
      00438B A3               [24] 4490 	inc	dptr
      00438C EE               [12] 4491 	mov	a,r6
      00438D 12 71 57         [24] 4492 	lcall	__gptrput
      004390 A3               [24] 4493 	inc	dptr
      004391 ED               [12] 4494 	mov	a,r5
      004392 12 71 57         [24] 4495 	lcall	__gptrput
                                   4496 ;	calc.c:181: break;
      004395 02 59 D5         [24] 4497 	ljmp	00249$
                                   4498 ;	calc.c:182: case '+':
      004398                       4499 00153$:
                                   4500 ;	calc.c:183: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004398 E5 08            [12] 4501 	mov	a,_bp
      00439A 24 15            [12] 4502 	add	a,#0x15
      00439C FF               [12] 4503 	mov	r7,a
      00439D 7E 00            [12] 4504 	mov	r6,#0x00
      00439F 7D 40            [12] 4505 	mov	r5,#0x40
      0043A1 E5 08            [12] 4506 	mov	a,_bp
      0043A3 24 12            [12] 4507 	add	a,#0x12
      0043A5 F8               [12] 4508 	mov	r0,a
      0043A6 E5 08            [12] 4509 	mov	a,_bp
      0043A8 24 0B            [12] 4510 	add	a,#0x0b
      0043AA F9               [12] 4511 	mov	r1,a
      0043AB 74 11            [12] 4512 	mov	a,#0x11
      0043AD 26               [12] 4513 	add	a,@r0
      0043AE F7               [12] 4514 	mov	@r1,a
      0043AF 74 40            [12] 4515 	mov	a,#0x40
      0043B1 08               [12] 4516 	inc	r0
      0043B2 36               [12] 4517 	addc	a,@r0
      0043B3 09               [12] 4518 	inc	r1
      0043B4 F7               [12] 4519 	mov	@r1,a
      0043B5 08               [12] 4520 	inc	r0
      0043B6 09               [12] 4521 	inc	r1
      0043B7 E6               [12] 4522 	mov	a,@r0
      0043B8 F7               [12] 4523 	mov	@r1,a
      0043B9 E5 08            [12] 4524 	mov	a,_bp
      0043BB 24 0B            [12] 4525 	add	a,#0x0b
      0043BD F8               [12] 4526 	mov	r0,a
      0043BE 86 82            [24] 4527 	mov	dpl,@r0
      0043C0 08               [12] 4528 	inc	r0
      0043C1 86 83            [24] 4529 	mov	dph,@r0
      0043C3 08               [12] 4530 	inc	r0
      0043C4 86 F0            [24] 4531 	mov	b,@r0
      0043C6 12 76 03         [24] 4532 	lcall	__gptrget
      0043C9 FA               [12] 4533 	mov	r2,a
      0043CA A3               [24] 4534 	inc	dptr
      0043CB 12 76 03         [24] 4535 	lcall	__gptrget
      0043CE FB               [12] 4536 	mov	r3,a
      0043CF A3               [24] 4537 	inc	dptr
      0043D0 12 76 03         [24] 4538 	lcall	__gptrget
      0043D3 FC               [12] 4539 	mov	r4,a
      0043D4 C0 07            [24] 4540 	push	ar7
      0043D6 C0 06            [24] 4541 	push	ar6
      0043D8 C0 05            [24] 4542 	push	ar5
      0043DA 8A 82            [24] 4543 	mov	dpl,r2
      0043DC 8B 83            [24] 4544 	mov	dph,r3
      0043DE 8C F0            [24] 4545 	mov	b,r4
      0043E0 12 27 83         [24] 4546 	lcall	_stack_pop
      0043E3 AB 82            [24] 4547 	mov	r3,dpl
      0043E5 AC 83            [24] 4548 	mov	r4,dph
      0043E7 15 81            [12] 4549 	dec	sp
      0043E9 15 81            [12] 4550 	dec	sp
      0043EB 15 81            [12] 4551 	dec	sp
      0043ED EB               [12] 4552 	mov	a,r3
      0043EE 4C               [12] 4553 	orl	a,r4
      0043EF 70 31            [24] 4554 	jnz	00158$
      0043F1 7F D2            [12] 4555 	mov	r7,#___str_10
      0043F3 7E 8E            [12] 4556 	mov	r6,#(___str_10 >> 8)
      0043F5 7D 80            [12] 4557 	mov	r5,#0x80
                                   4558 ;	calc.c:20: return;
      0043F7                       4559 00426$:
                                   4560 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0043F7 8F 82            [24] 4561 	mov	dpl,r7
      0043F9 8E 83            [24] 4562 	mov	dph,r6
      0043FB 8D F0            [24] 4563 	mov	b,r5
      0043FD 12 76 03         [24] 4564 	lcall	__gptrget
      004400 FC               [12] 4565 	mov	r4,a
      004401 70 03            [24] 4566 	jnz	01326$
      004403 02 59 D5         [24] 4567 	ljmp	00249$
      004406                       4568 01326$:
      004406 7B 00            [12] 4569 	mov	r3,#0x00
      004408 8C 82            [24] 4570 	mov	dpl,r4
      00440A 8B 83            [24] 4571 	mov	dph,r3
      00440C C0 07            [24] 4572 	push	ar7
      00440E C0 06            [24] 4573 	push	ar6
      004410 C0 05            [24] 4574 	push	ar5
      004412 12 71 72         [24] 4575 	lcall	_putchar
      004415 D0 05            [24] 4576 	pop	ar5
      004417 D0 06            [24] 4577 	pop	ar6
      004419 D0 07            [24] 4578 	pop	ar7
      00441B 0F               [12] 4579 	inc	r7
                                   4580 ;	calc.c:183: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00441C BF 00 D8         [24] 4581 	cjne	r7,#0x00,00426$
      00441F 0E               [12] 4582 	inc	r6
      004420 80 D5            [24] 4583 	sjmp	00426$
      004422                       4584 00158$:
                                   4585 ;	calc.c:184: else if (!stack_pop(ctx->ps, &d1)) {
      004422 E5 08            [12] 4586 	mov	a,_bp
      004424 24 19            [12] 4587 	add	a,#0x19
      004426 FF               [12] 4588 	mov	r7,a
      004427 7E 00            [12] 4589 	mov	r6,#0x00
      004429 7D 40            [12] 4590 	mov	r5,#0x40
      00442B E5 08            [12] 4591 	mov	a,_bp
      00442D 24 0B            [12] 4592 	add	a,#0x0b
      00442F F8               [12] 4593 	mov	r0,a
      004430 86 82            [24] 4594 	mov	dpl,@r0
      004432 08               [12] 4595 	inc	r0
      004433 86 83            [24] 4596 	mov	dph,@r0
      004435 08               [12] 4597 	inc	r0
      004436 86 F0            [24] 4598 	mov	b,@r0
      004438 12 76 03         [24] 4599 	lcall	__gptrget
      00443B FA               [12] 4600 	mov	r2,a
      00443C A3               [24] 4601 	inc	dptr
      00443D 12 76 03         [24] 4602 	lcall	__gptrget
      004440 FB               [12] 4603 	mov	r3,a
      004441 A3               [24] 4604 	inc	dptr
      004442 12 76 03         [24] 4605 	lcall	__gptrget
      004445 FC               [12] 4606 	mov	r4,a
      004446 C0 07            [24] 4607 	push	ar7
      004448 C0 06            [24] 4608 	push	ar6
      00444A C0 05            [24] 4609 	push	ar5
      00444C 8A 82            [24] 4610 	mov	dpl,r2
      00444E 8B 83            [24] 4611 	mov	dph,r3
      004450 8C F0            [24] 4612 	mov	b,r4
      004452 12 27 83         [24] 4613 	lcall	_stack_pop
      004455 AB 82            [24] 4614 	mov	r3,dpl
      004457 AC 83            [24] 4615 	mov	r4,dph
      004459 15 81            [12] 4616 	dec	sp
      00445B 15 81            [12] 4617 	dec	sp
      00445D 15 81            [12] 4618 	dec	sp
      00445F EB               [12] 4619 	mov	a,r3
      004460 4C               [12] 4620 	orl	a,r4
      004461 70 6F            [24] 4621 	jnz	00155$
                                   4622 ;	calc.c:185: (void)stack_push(ctx->ps, d0);
      004463 E5 08            [12] 4623 	mov	a,_bp
      004465 24 0B            [12] 4624 	add	a,#0x0b
      004467 F8               [12] 4625 	mov	r0,a
      004468 86 82            [24] 4626 	mov	dpl,@r0
      00446A 08               [12] 4627 	inc	r0
      00446B 86 83            [24] 4628 	mov	dph,@r0
      00446D 08               [12] 4629 	inc	r0
      00446E 86 F0            [24] 4630 	mov	b,@r0
      004470 12 76 03         [24] 4631 	lcall	__gptrget
      004473 FA               [12] 4632 	mov	r2,a
      004474 A3               [24] 4633 	inc	dptr
      004475 12 76 03         [24] 4634 	lcall	__gptrget
      004478 FB               [12] 4635 	mov	r3,a
      004479 A3               [24] 4636 	inc	dptr
      00447A 12 76 03         [24] 4637 	lcall	__gptrget
      00447D FC               [12] 4638 	mov	r4,a
      00447E E5 08            [12] 4639 	mov	a,_bp
      004480 24 15            [12] 4640 	add	a,#0x15
      004482 F8               [12] 4641 	mov	r0,a
      004483 E6               [12] 4642 	mov	a,@r0
      004484 C0 E0            [24] 4643 	push	acc
      004486 08               [12] 4644 	inc	r0
      004487 E6               [12] 4645 	mov	a,@r0
      004488 C0 E0            [24] 4646 	push	acc
      00448A 08               [12] 4647 	inc	r0
      00448B E6               [12] 4648 	mov	a,@r0
      00448C C0 E0            [24] 4649 	push	acc
      00448E 08               [12] 4650 	inc	r0
      00448F E6               [12] 4651 	mov	a,@r0
      004490 C0 E0            [24] 4652 	push	acc
      004492 8A 82            [24] 4653 	mov	dpl,r2
      004494 8B 83            [24] 4654 	mov	dph,r3
      004496 8C F0            [24] 4655 	mov	b,r4
      004498 12 26 B5         [24] 4656 	lcall	_stack_push
      00449B E5 81            [12] 4657 	mov	a,sp
      00449D 24 FC            [12] 4658 	add	a,#0xfc
      00449F F5 81            [12] 4659 	mov	sp,a
                                   4660 ;	calc.c:186: printstr("\r\nstack underflow\r\n");
      0044A1 7F D2            [12] 4661 	mov	r7,#___str_10
      0044A3 7E 8E            [12] 4662 	mov	r6,#(___str_10 >> 8)
      0044A5 7D 80            [12] 4663 	mov	r5,#0x80
                                   4664 ;	calc.c:20: return;
      0044A7                       4665 00429$:
                                   4666 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0044A7 8F 82            [24] 4667 	mov	dpl,r7
      0044A9 8E 83            [24] 4668 	mov	dph,r6
      0044AB 8D F0            [24] 4669 	mov	b,r5
      0044AD 12 76 03         [24] 4670 	lcall	__gptrget
      0044B0 FC               [12] 4671 	mov	r4,a
      0044B1 70 03            [24] 4672 	jnz	01329$
      0044B3 02 59 D5         [24] 4673 	ljmp	00249$
      0044B6                       4674 01329$:
      0044B6 7B 00            [12] 4675 	mov	r3,#0x00
      0044B8 8C 82            [24] 4676 	mov	dpl,r4
      0044BA 8B 83            [24] 4677 	mov	dph,r3
      0044BC C0 07            [24] 4678 	push	ar7
      0044BE C0 06            [24] 4679 	push	ar6
      0044C0 C0 05            [24] 4680 	push	ar5
      0044C2 12 71 72         [24] 4681 	lcall	_putchar
      0044C5 D0 05            [24] 4682 	pop	ar5
      0044C7 D0 06            [24] 4683 	pop	ar6
      0044C9 D0 07            [24] 4684 	pop	ar7
      0044CB 0F               [12] 4685 	inc	r7
                                   4686 ;	calc.c:186: printstr("\r\nstack underflow\r\n");
      0044CC BF 00 D8         [24] 4687 	cjne	r7,#0x00,00429$
      0044CF 0E               [12] 4688 	inc	r6
      0044D0 80 D5            [24] 4689 	sjmp	00429$
      0044D2                       4690 00155$:
                                   4691 ;	calc.c:188: d1 += d0;
      0044D2 E5 08            [12] 4692 	mov	a,_bp
      0044D4 24 19            [12] 4693 	add	a,#0x19
      0044D6 F8               [12] 4694 	mov	r0,a
      0044D7 E5 08            [12] 4695 	mov	a,_bp
      0044D9 24 15            [12] 4696 	add	a,#0x15
      0044DB F9               [12] 4697 	mov	r1,a
      0044DC E7               [12] 4698 	mov	a,@r1
      0044DD 26               [12] 4699 	add	a,@r0
      0044DE F6               [12] 4700 	mov	@r0,a
      0044DF 09               [12] 4701 	inc	r1
      0044E0 E7               [12] 4702 	mov	a,@r1
      0044E1 08               [12] 4703 	inc	r0
      0044E2 36               [12] 4704 	addc	a,@r0
      0044E3 F6               [12] 4705 	mov	@r0,a
      0044E4 09               [12] 4706 	inc	r1
      0044E5 E7               [12] 4707 	mov	a,@r1
      0044E6 08               [12] 4708 	inc	r0
      0044E7 36               [12] 4709 	addc	a,@r0
      0044E8 F6               [12] 4710 	mov	@r0,a
      0044E9 09               [12] 4711 	inc	r1
      0044EA E7               [12] 4712 	mov	a,@r1
      0044EB 08               [12] 4713 	inc	r0
      0044EC 36               [12] 4714 	addc	a,@r0
      0044ED F6               [12] 4715 	mov	@r0,a
                                   4716 ;	calc.c:189: (void)stack_push(ctx->ps, d1);
      0044EE E5 08            [12] 4717 	mov	a,_bp
      0044F0 24 0B            [12] 4718 	add	a,#0x0b
      0044F2 F8               [12] 4719 	mov	r0,a
      0044F3 86 82            [24] 4720 	mov	dpl,@r0
      0044F5 08               [12] 4721 	inc	r0
      0044F6 86 83            [24] 4722 	mov	dph,@r0
      0044F8 08               [12] 4723 	inc	r0
      0044F9 86 F0            [24] 4724 	mov	b,@r0
      0044FB 12 76 03         [24] 4725 	lcall	__gptrget
      0044FE FA               [12] 4726 	mov	r2,a
      0044FF A3               [24] 4727 	inc	dptr
      004500 12 76 03         [24] 4728 	lcall	__gptrget
      004503 FB               [12] 4729 	mov	r3,a
      004504 A3               [24] 4730 	inc	dptr
      004505 12 76 03         [24] 4731 	lcall	__gptrget
      004508 FC               [12] 4732 	mov	r4,a
      004509 E5 08            [12] 4733 	mov	a,_bp
      00450B 24 19            [12] 4734 	add	a,#0x19
      00450D F8               [12] 4735 	mov	r0,a
      00450E E6               [12] 4736 	mov	a,@r0
      00450F C0 E0            [24] 4737 	push	acc
      004511 08               [12] 4738 	inc	r0
      004512 E6               [12] 4739 	mov	a,@r0
      004513 C0 E0            [24] 4740 	push	acc
      004515 08               [12] 4741 	inc	r0
      004516 E6               [12] 4742 	mov	a,@r0
      004517 C0 E0            [24] 4743 	push	acc
      004519 08               [12] 4744 	inc	r0
      00451A E6               [12] 4745 	mov	a,@r0
      00451B C0 E0            [24] 4746 	push	acc
      00451D 8A 82            [24] 4747 	mov	dpl,r2
      00451F 8B 83            [24] 4748 	mov	dph,r3
      004521 8C F0            [24] 4749 	mov	b,r4
      004523 12 26 B5         [24] 4750 	lcall	_stack_push
      004526 E5 81            [12] 4751 	mov	a,sp
      004528 24 FC            [12] 4752 	add	a,#0xfc
      00452A F5 81            [12] 4753 	mov	sp,a
                                   4754 ;	calc.c:191: break;
      00452C 02 59 D5         [24] 4755 	ljmp	00249$
                                   4756 ;	calc.c:192: case '-':
      00452F                       4757 00160$:
                                   4758 ;	calc.c:193: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00452F E5 08            [12] 4759 	mov	a,_bp
      004531 24 15            [12] 4760 	add	a,#0x15
      004533 FF               [12] 4761 	mov	r7,a
      004534 7E 00            [12] 4762 	mov	r6,#0x00
      004536 7D 40            [12] 4763 	mov	r5,#0x40
      004538 E5 08            [12] 4764 	mov	a,_bp
      00453A 24 12            [12] 4765 	add	a,#0x12
      00453C F8               [12] 4766 	mov	r0,a
      00453D E5 08            [12] 4767 	mov	a,_bp
      00453F 24 0B            [12] 4768 	add	a,#0x0b
      004541 F9               [12] 4769 	mov	r1,a
      004542 74 11            [12] 4770 	mov	a,#0x11
      004544 26               [12] 4771 	add	a,@r0
      004545 F7               [12] 4772 	mov	@r1,a
      004546 74 40            [12] 4773 	mov	a,#0x40
      004548 08               [12] 4774 	inc	r0
      004549 36               [12] 4775 	addc	a,@r0
      00454A 09               [12] 4776 	inc	r1
      00454B F7               [12] 4777 	mov	@r1,a
      00454C 08               [12] 4778 	inc	r0
      00454D 09               [12] 4779 	inc	r1
      00454E E6               [12] 4780 	mov	a,@r0
      00454F F7               [12] 4781 	mov	@r1,a
      004550 E5 08            [12] 4782 	mov	a,_bp
      004552 24 0B            [12] 4783 	add	a,#0x0b
      004554 F8               [12] 4784 	mov	r0,a
      004555 86 82            [24] 4785 	mov	dpl,@r0
      004557 08               [12] 4786 	inc	r0
      004558 86 83            [24] 4787 	mov	dph,@r0
      00455A 08               [12] 4788 	inc	r0
      00455B 86 F0            [24] 4789 	mov	b,@r0
      00455D 12 76 03         [24] 4790 	lcall	__gptrget
      004560 FA               [12] 4791 	mov	r2,a
      004561 A3               [24] 4792 	inc	dptr
      004562 12 76 03         [24] 4793 	lcall	__gptrget
      004565 FB               [12] 4794 	mov	r3,a
      004566 A3               [24] 4795 	inc	dptr
      004567 12 76 03         [24] 4796 	lcall	__gptrget
      00456A FC               [12] 4797 	mov	r4,a
      00456B C0 07            [24] 4798 	push	ar7
      00456D C0 06            [24] 4799 	push	ar6
      00456F C0 05            [24] 4800 	push	ar5
      004571 8A 82            [24] 4801 	mov	dpl,r2
      004573 8B 83            [24] 4802 	mov	dph,r3
      004575 8C F0            [24] 4803 	mov	b,r4
      004577 12 27 83         [24] 4804 	lcall	_stack_pop
      00457A AB 82            [24] 4805 	mov	r3,dpl
      00457C AC 83            [24] 4806 	mov	r4,dph
      00457E 15 81            [12] 4807 	dec	sp
      004580 15 81            [12] 4808 	dec	sp
      004582 15 81            [12] 4809 	dec	sp
      004584 EB               [12] 4810 	mov	a,r3
      004585 4C               [12] 4811 	orl	a,r4
      004586 70 31            [24] 4812 	jnz	00165$
      004588 7F D2            [12] 4813 	mov	r7,#___str_10
      00458A 7E 8E            [12] 4814 	mov	r6,#(___str_10 >> 8)
      00458C 7D 80            [12] 4815 	mov	r5,#0x80
                                   4816 ;	calc.c:20: return;
      00458E                       4817 00432$:
                                   4818 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00458E 8F 82            [24] 4819 	mov	dpl,r7
      004590 8E 83            [24] 4820 	mov	dph,r6
      004592 8D F0            [24] 4821 	mov	b,r5
      004594 12 76 03         [24] 4822 	lcall	__gptrget
      004597 FC               [12] 4823 	mov	r4,a
      004598 70 03            [24] 4824 	jnz	01332$
      00459A 02 59 D5         [24] 4825 	ljmp	00249$
      00459D                       4826 01332$:
      00459D 7B 00            [12] 4827 	mov	r3,#0x00
      00459F 8C 82            [24] 4828 	mov	dpl,r4
      0045A1 8B 83            [24] 4829 	mov	dph,r3
      0045A3 C0 07            [24] 4830 	push	ar7
      0045A5 C0 06            [24] 4831 	push	ar6
      0045A7 C0 05            [24] 4832 	push	ar5
      0045A9 12 71 72         [24] 4833 	lcall	_putchar
      0045AC D0 05            [24] 4834 	pop	ar5
      0045AE D0 06            [24] 4835 	pop	ar6
      0045B0 D0 07            [24] 4836 	pop	ar7
      0045B2 0F               [12] 4837 	inc	r7
                                   4838 ;	calc.c:193: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0045B3 BF 00 D8         [24] 4839 	cjne	r7,#0x00,00432$
      0045B6 0E               [12] 4840 	inc	r6
      0045B7 80 D5            [24] 4841 	sjmp	00432$
      0045B9                       4842 00165$:
                                   4843 ;	calc.c:194: else if (!stack_pop(ctx->ps, &d1)) {
      0045B9 E5 08            [12] 4844 	mov	a,_bp
      0045BB 24 19            [12] 4845 	add	a,#0x19
      0045BD FF               [12] 4846 	mov	r7,a
      0045BE 7E 00            [12] 4847 	mov	r6,#0x00
      0045C0 7D 40            [12] 4848 	mov	r5,#0x40
      0045C2 E5 08            [12] 4849 	mov	a,_bp
      0045C4 24 0B            [12] 4850 	add	a,#0x0b
      0045C6 F8               [12] 4851 	mov	r0,a
      0045C7 86 82            [24] 4852 	mov	dpl,@r0
      0045C9 08               [12] 4853 	inc	r0
      0045CA 86 83            [24] 4854 	mov	dph,@r0
      0045CC 08               [12] 4855 	inc	r0
      0045CD 86 F0            [24] 4856 	mov	b,@r0
      0045CF 12 76 03         [24] 4857 	lcall	__gptrget
      0045D2 FA               [12] 4858 	mov	r2,a
      0045D3 A3               [24] 4859 	inc	dptr
      0045D4 12 76 03         [24] 4860 	lcall	__gptrget
      0045D7 FB               [12] 4861 	mov	r3,a
      0045D8 A3               [24] 4862 	inc	dptr
      0045D9 12 76 03         [24] 4863 	lcall	__gptrget
      0045DC FC               [12] 4864 	mov	r4,a
      0045DD C0 07            [24] 4865 	push	ar7
      0045DF C0 06            [24] 4866 	push	ar6
      0045E1 C0 05            [24] 4867 	push	ar5
      0045E3 8A 82            [24] 4868 	mov	dpl,r2
      0045E5 8B 83            [24] 4869 	mov	dph,r3
      0045E7 8C F0            [24] 4870 	mov	b,r4
      0045E9 12 27 83         [24] 4871 	lcall	_stack_pop
      0045EC AB 82            [24] 4872 	mov	r3,dpl
      0045EE AC 83            [24] 4873 	mov	r4,dph
      0045F0 15 81            [12] 4874 	dec	sp
      0045F2 15 81            [12] 4875 	dec	sp
      0045F4 15 81            [12] 4876 	dec	sp
      0045F6 EB               [12] 4877 	mov	a,r3
      0045F7 4C               [12] 4878 	orl	a,r4
      0045F8 70 6F            [24] 4879 	jnz	00162$
                                   4880 ;	calc.c:195: (void)stack_push(ctx->ps, d0);
      0045FA E5 08            [12] 4881 	mov	a,_bp
      0045FC 24 0B            [12] 4882 	add	a,#0x0b
      0045FE F8               [12] 4883 	mov	r0,a
      0045FF 86 82            [24] 4884 	mov	dpl,@r0
      004601 08               [12] 4885 	inc	r0
      004602 86 83            [24] 4886 	mov	dph,@r0
      004604 08               [12] 4887 	inc	r0
      004605 86 F0            [24] 4888 	mov	b,@r0
      004607 12 76 03         [24] 4889 	lcall	__gptrget
      00460A FA               [12] 4890 	mov	r2,a
      00460B A3               [24] 4891 	inc	dptr
      00460C 12 76 03         [24] 4892 	lcall	__gptrget
      00460F FB               [12] 4893 	mov	r3,a
      004610 A3               [24] 4894 	inc	dptr
      004611 12 76 03         [24] 4895 	lcall	__gptrget
      004614 FC               [12] 4896 	mov	r4,a
      004615 E5 08            [12] 4897 	mov	a,_bp
      004617 24 15            [12] 4898 	add	a,#0x15
      004619 F8               [12] 4899 	mov	r0,a
      00461A E6               [12] 4900 	mov	a,@r0
      00461B C0 E0            [24] 4901 	push	acc
      00461D 08               [12] 4902 	inc	r0
      00461E E6               [12] 4903 	mov	a,@r0
      00461F C0 E0            [24] 4904 	push	acc
      004621 08               [12] 4905 	inc	r0
      004622 E6               [12] 4906 	mov	a,@r0
      004623 C0 E0            [24] 4907 	push	acc
      004625 08               [12] 4908 	inc	r0
      004626 E6               [12] 4909 	mov	a,@r0
      004627 C0 E0            [24] 4910 	push	acc
      004629 8A 82            [24] 4911 	mov	dpl,r2
      00462B 8B 83            [24] 4912 	mov	dph,r3
      00462D 8C F0            [24] 4913 	mov	b,r4
      00462F 12 26 B5         [24] 4914 	lcall	_stack_push
      004632 E5 81            [12] 4915 	mov	a,sp
      004634 24 FC            [12] 4916 	add	a,#0xfc
      004636 F5 81            [12] 4917 	mov	sp,a
                                   4918 ;	calc.c:196: printstr("\r\nstack underflow\r\n");
      004638 7F D2            [12] 4919 	mov	r7,#___str_10
      00463A 7E 8E            [12] 4920 	mov	r6,#(___str_10 >> 8)
      00463C 7D 80            [12] 4921 	mov	r5,#0x80
                                   4922 ;	calc.c:20: return;
      00463E                       4923 00435$:
                                   4924 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00463E 8F 82            [24] 4925 	mov	dpl,r7
      004640 8E 83            [24] 4926 	mov	dph,r6
      004642 8D F0            [24] 4927 	mov	b,r5
      004644 12 76 03         [24] 4928 	lcall	__gptrget
      004647 FC               [12] 4929 	mov	r4,a
      004648 70 03            [24] 4930 	jnz	01335$
      00464A 02 59 D5         [24] 4931 	ljmp	00249$
      00464D                       4932 01335$:
      00464D 7B 00            [12] 4933 	mov	r3,#0x00
      00464F 8C 82            [24] 4934 	mov	dpl,r4
      004651 8B 83            [24] 4935 	mov	dph,r3
      004653 C0 07            [24] 4936 	push	ar7
      004655 C0 06            [24] 4937 	push	ar6
      004657 C0 05            [24] 4938 	push	ar5
      004659 12 71 72         [24] 4939 	lcall	_putchar
      00465C D0 05            [24] 4940 	pop	ar5
      00465E D0 06            [24] 4941 	pop	ar6
      004660 D0 07            [24] 4942 	pop	ar7
      004662 0F               [12] 4943 	inc	r7
                                   4944 ;	calc.c:196: printstr("\r\nstack underflow\r\n");
      004663 BF 00 D8         [24] 4945 	cjne	r7,#0x00,00435$
      004666 0E               [12] 4946 	inc	r6
      004667 80 D5            [24] 4947 	sjmp	00435$
      004669                       4948 00162$:
                                   4949 ;	calc.c:198: d1 -= d0;
      004669 E5 08            [12] 4950 	mov	a,_bp
      00466B 24 19            [12] 4951 	add	a,#0x19
      00466D F8               [12] 4952 	mov	r0,a
      00466E E5 08            [12] 4953 	mov	a,_bp
      004670 24 15            [12] 4954 	add	a,#0x15
      004672 F9               [12] 4955 	mov	r1,a
      004673 E6               [12] 4956 	mov	a,@r0
      004674 C3               [12] 4957 	clr	c
      004675 97               [12] 4958 	subb	a,@r1
      004676 F6               [12] 4959 	mov	@r0,a
      004677 08               [12] 4960 	inc	r0
      004678 E6               [12] 4961 	mov	a,@r0
      004679 09               [12] 4962 	inc	r1
      00467A 97               [12] 4963 	subb	a,@r1
      00467B F6               [12] 4964 	mov	@r0,a
      00467C 08               [12] 4965 	inc	r0
      00467D E6               [12] 4966 	mov	a,@r0
      00467E 09               [12] 4967 	inc	r1
      00467F 97               [12] 4968 	subb	a,@r1
      004680 F6               [12] 4969 	mov	@r0,a
      004681 08               [12] 4970 	inc	r0
      004682 E6               [12] 4971 	mov	a,@r0
      004683 09               [12] 4972 	inc	r1
      004684 97               [12] 4973 	subb	a,@r1
      004685 F6               [12] 4974 	mov	@r0,a
                                   4975 ;	calc.c:199: (void)stack_push(ctx->ps, d1);
      004686 E5 08            [12] 4976 	mov	a,_bp
      004688 24 0B            [12] 4977 	add	a,#0x0b
      00468A F8               [12] 4978 	mov	r0,a
      00468B 86 82            [24] 4979 	mov	dpl,@r0
      00468D 08               [12] 4980 	inc	r0
      00468E 86 83            [24] 4981 	mov	dph,@r0
      004690 08               [12] 4982 	inc	r0
      004691 86 F0            [24] 4983 	mov	b,@r0
      004693 12 76 03         [24] 4984 	lcall	__gptrget
      004696 FA               [12] 4985 	mov	r2,a
      004697 A3               [24] 4986 	inc	dptr
      004698 12 76 03         [24] 4987 	lcall	__gptrget
      00469B FB               [12] 4988 	mov	r3,a
      00469C A3               [24] 4989 	inc	dptr
      00469D 12 76 03         [24] 4990 	lcall	__gptrget
      0046A0 FC               [12] 4991 	mov	r4,a
      0046A1 E5 08            [12] 4992 	mov	a,_bp
      0046A3 24 19            [12] 4993 	add	a,#0x19
      0046A5 F8               [12] 4994 	mov	r0,a
      0046A6 E6               [12] 4995 	mov	a,@r0
      0046A7 C0 E0            [24] 4996 	push	acc
      0046A9 08               [12] 4997 	inc	r0
      0046AA E6               [12] 4998 	mov	a,@r0
      0046AB C0 E0            [24] 4999 	push	acc
      0046AD 08               [12] 5000 	inc	r0
      0046AE E6               [12] 5001 	mov	a,@r0
      0046AF C0 E0            [24] 5002 	push	acc
      0046B1 08               [12] 5003 	inc	r0
      0046B2 E6               [12] 5004 	mov	a,@r0
      0046B3 C0 E0            [24] 5005 	push	acc
      0046B5 8A 82            [24] 5006 	mov	dpl,r2
      0046B7 8B 83            [24] 5007 	mov	dph,r3
      0046B9 8C F0            [24] 5008 	mov	b,r4
      0046BB 12 26 B5         [24] 5009 	lcall	_stack_push
      0046BE E5 81            [12] 5010 	mov	a,sp
      0046C0 24 FC            [12] 5011 	add	a,#0xfc
      0046C2 F5 81            [12] 5012 	mov	sp,a
                                   5013 ;	calc.c:201: break;
      0046C4 02 59 D5         [24] 5014 	ljmp	00249$
                                   5015 ;	calc.c:202: case '*':
      0046C7                       5016 00167$:
                                   5017 ;	calc.c:203: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0046C7 E5 08            [12] 5018 	mov	a,_bp
      0046C9 24 15            [12] 5019 	add	a,#0x15
      0046CB FF               [12] 5020 	mov	r7,a
      0046CC 7E 00            [12] 5021 	mov	r6,#0x00
      0046CE 7D 40            [12] 5022 	mov	r5,#0x40
      0046D0 E5 08            [12] 5023 	mov	a,_bp
      0046D2 24 12            [12] 5024 	add	a,#0x12
      0046D4 F8               [12] 5025 	mov	r0,a
      0046D5 E5 08            [12] 5026 	mov	a,_bp
      0046D7 24 0B            [12] 5027 	add	a,#0x0b
      0046D9 F9               [12] 5028 	mov	r1,a
      0046DA 74 11            [12] 5029 	mov	a,#0x11
      0046DC 26               [12] 5030 	add	a,@r0
      0046DD F7               [12] 5031 	mov	@r1,a
      0046DE 74 40            [12] 5032 	mov	a,#0x40
      0046E0 08               [12] 5033 	inc	r0
      0046E1 36               [12] 5034 	addc	a,@r0
      0046E2 09               [12] 5035 	inc	r1
      0046E3 F7               [12] 5036 	mov	@r1,a
      0046E4 08               [12] 5037 	inc	r0
      0046E5 09               [12] 5038 	inc	r1
      0046E6 E6               [12] 5039 	mov	a,@r0
      0046E7 F7               [12] 5040 	mov	@r1,a
      0046E8 E5 08            [12] 5041 	mov	a,_bp
      0046EA 24 0B            [12] 5042 	add	a,#0x0b
      0046EC F8               [12] 5043 	mov	r0,a
      0046ED 86 82            [24] 5044 	mov	dpl,@r0
      0046EF 08               [12] 5045 	inc	r0
      0046F0 86 83            [24] 5046 	mov	dph,@r0
      0046F2 08               [12] 5047 	inc	r0
      0046F3 86 F0            [24] 5048 	mov	b,@r0
      0046F5 12 76 03         [24] 5049 	lcall	__gptrget
      0046F8 FA               [12] 5050 	mov	r2,a
      0046F9 A3               [24] 5051 	inc	dptr
      0046FA 12 76 03         [24] 5052 	lcall	__gptrget
      0046FD FB               [12] 5053 	mov	r3,a
      0046FE A3               [24] 5054 	inc	dptr
      0046FF 12 76 03         [24] 5055 	lcall	__gptrget
      004702 FC               [12] 5056 	mov	r4,a
      004703 C0 07            [24] 5057 	push	ar7
      004705 C0 06            [24] 5058 	push	ar6
      004707 C0 05            [24] 5059 	push	ar5
      004709 8A 82            [24] 5060 	mov	dpl,r2
      00470B 8B 83            [24] 5061 	mov	dph,r3
      00470D 8C F0            [24] 5062 	mov	b,r4
      00470F 12 27 83         [24] 5063 	lcall	_stack_pop
      004712 AB 82            [24] 5064 	mov	r3,dpl
      004714 AC 83            [24] 5065 	mov	r4,dph
      004716 15 81            [12] 5066 	dec	sp
      004718 15 81            [12] 5067 	dec	sp
      00471A 15 81            [12] 5068 	dec	sp
      00471C EB               [12] 5069 	mov	a,r3
      00471D 4C               [12] 5070 	orl	a,r4
      00471E 70 31            [24] 5071 	jnz	00172$
      004720 7F D2            [12] 5072 	mov	r7,#___str_10
      004722 7E 8E            [12] 5073 	mov	r6,#(___str_10 >> 8)
      004724 7D 80            [12] 5074 	mov	r5,#0x80
                                   5075 ;	calc.c:20: return;
      004726                       5076 00438$:
                                   5077 ;	calc.c:18: for (; *s; s++) putchar(*s);
      004726 8F 82            [24] 5078 	mov	dpl,r7
      004728 8E 83            [24] 5079 	mov	dph,r6
      00472A 8D F0            [24] 5080 	mov	b,r5
      00472C 12 76 03         [24] 5081 	lcall	__gptrget
      00472F FC               [12] 5082 	mov	r4,a
      004730 70 03            [24] 5083 	jnz	01338$
      004732 02 59 D5         [24] 5084 	ljmp	00249$
      004735                       5085 01338$:
      004735 7B 00            [12] 5086 	mov	r3,#0x00
      004737 8C 82            [24] 5087 	mov	dpl,r4
      004739 8B 83            [24] 5088 	mov	dph,r3
      00473B C0 07            [24] 5089 	push	ar7
      00473D C0 06            [24] 5090 	push	ar6
      00473F C0 05            [24] 5091 	push	ar5
      004741 12 71 72         [24] 5092 	lcall	_putchar
      004744 D0 05            [24] 5093 	pop	ar5
      004746 D0 06            [24] 5094 	pop	ar6
      004748 D0 07            [24] 5095 	pop	ar7
      00474A 0F               [12] 5096 	inc	r7
                                   5097 ;	calc.c:203: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00474B BF 00 D8         [24] 5098 	cjne	r7,#0x00,00438$
      00474E 0E               [12] 5099 	inc	r6
      00474F 80 D5            [24] 5100 	sjmp	00438$
      004751                       5101 00172$:
                                   5102 ;	calc.c:204: else if (!stack_pop(ctx->ps, &d1)) {
      004751 E5 08            [12] 5103 	mov	a,_bp
      004753 24 19            [12] 5104 	add	a,#0x19
      004755 FF               [12] 5105 	mov	r7,a
      004756 7E 00            [12] 5106 	mov	r6,#0x00
      004758 7D 40            [12] 5107 	mov	r5,#0x40
      00475A E5 08            [12] 5108 	mov	a,_bp
      00475C 24 0B            [12] 5109 	add	a,#0x0b
      00475E F8               [12] 5110 	mov	r0,a
      00475F 86 82            [24] 5111 	mov	dpl,@r0
      004761 08               [12] 5112 	inc	r0
      004762 86 83            [24] 5113 	mov	dph,@r0
      004764 08               [12] 5114 	inc	r0
      004765 86 F0            [24] 5115 	mov	b,@r0
      004767 12 76 03         [24] 5116 	lcall	__gptrget
      00476A FA               [12] 5117 	mov	r2,a
      00476B A3               [24] 5118 	inc	dptr
      00476C 12 76 03         [24] 5119 	lcall	__gptrget
      00476F FB               [12] 5120 	mov	r3,a
      004770 A3               [24] 5121 	inc	dptr
      004771 12 76 03         [24] 5122 	lcall	__gptrget
      004774 FC               [12] 5123 	mov	r4,a
      004775 C0 07            [24] 5124 	push	ar7
      004777 C0 06            [24] 5125 	push	ar6
      004779 C0 05            [24] 5126 	push	ar5
      00477B 8A 82            [24] 5127 	mov	dpl,r2
      00477D 8B 83            [24] 5128 	mov	dph,r3
      00477F 8C F0            [24] 5129 	mov	b,r4
      004781 12 27 83         [24] 5130 	lcall	_stack_pop
      004784 AB 82            [24] 5131 	mov	r3,dpl
      004786 AC 83            [24] 5132 	mov	r4,dph
      004788 15 81            [12] 5133 	dec	sp
      00478A 15 81            [12] 5134 	dec	sp
      00478C 15 81            [12] 5135 	dec	sp
      00478E EB               [12] 5136 	mov	a,r3
      00478F 4C               [12] 5137 	orl	a,r4
      004790 70 6F            [24] 5138 	jnz	00169$
                                   5139 ;	calc.c:205: (void)stack_push(ctx->ps, d0);
      004792 E5 08            [12] 5140 	mov	a,_bp
      004794 24 0B            [12] 5141 	add	a,#0x0b
      004796 F8               [12] 5142 	mov	r0,a
      004797 86 82            [24] 5143 	mov	dpl,@r0
      004799 08               [12] 5144 	inc	r0
      00479A 86 83            [24] 5145 	mov	dph,@r0
      00479C 08               [12] 5146 	inc	r0
      00479D 86 F0            [24] 5147 	mov	b,@r0
      00479F 12 76 03         [24] 5148 	lcall	__gptrget
      0047A2 FA               [12] 5149 	mov	r2,a
      0047A3 A3               [24] 5150 	inc	dptr
      0047A4 12 76 03         [24] 5151 	lcall	__gptrget
      0047A7 FB               [12] 5152 	mov	r3,a
      0047A8 A3               [24] 5153 	inc	dptr
      0047A9 12 76 03         [24] 5154 	lcall	__gptrget
      0047AC FC               [12] 5155 	mov	r4,a
      0047AD E5 08            [12] 5156 	mov	a,_bp
      0047AF 24 15            [12] 5157 	add	a,#0x15
      0047B1 F8               [12] 5158 	mov	r0,a
      0047B2 E6               [12] 5159 	mov	a,@r0
      0047B3 C0 E0            [24] 5160 	push	acc
      0047B5 08               [12] 5161 	inc	r0
      0047B6 E6               [12] 5162 	mov	a,@r0
      0047B7 C0 E0            [24] 5163 	push	acc
      0047B9 08               [12] 5164 	inc	r0
      0047BA E6               [12] 5165 	mov	a,@r0
      0047BB C0 E0            [24] 5166 	push	acc
      0047BD 08               [12] 5167 	inc	r0
      0047BE E6               [12] 5168 	mov	a,@r0
      0047BF C0 E0            [24] 5169 	push	acc
      0047C1 8A 82            [24] 5170 	mov	dpl,r2
      0047C3 8B 83            [24] 5171 	mov	dph,r3
      0047C5 8C F0            [24] 5172 	mov	b,r4
      0047C7 12 26 B5         [24] 5173 	lcall	_stack_push
      0047CA E5 81            [12] 5174 	mov	a,sp
      0047CC 24 FC            [12] 5175 	add	a,#0xfc
      0047CE F5 81            [12] 5176 	mov	sp,a
                                   5177 ;	calc.c:206: printstr("\r\nstack underflow\r\n");
      0047D0 7F D2            [12] 5178 	mov	r7,#___str_10
      0047D2 7E 8E            [12] 5179 	mov	r6,#(___str_10 >> 8)
      0047D4 7D 80            [12] 5180 	mov	r5,#0x80
                                   5181 ;	calc.c:20: return;
      0047D6                       5182 00441$:
                                   5183 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0047D6 8F 82            [24] 5184 	mov	dpl,r7
      0047D8 8E 83            [24] 5185 	mov	dph,r6
      0047DA 8D F0            [24] 5186 	mov	b,r5
      0047DC 12 76 03         [24] 5187 	lcall	__gptrget
      0047DF FC               [12] 5188 	mov	r4,a
      0047E0 70 03            [24] 5189 	jnz	01341$
      0047E2 02 59 D5         [24] 5190 	ljmp	00249$
      0047E5                       5191 01341$:
      0047E5 7B 00            [12] 5192 	mov	r3,#0x00
      0047E7 8C 82            [24] 5193 	mov	dpl,r4
      0047E9 8B 83            [24] 5194 	mov	dph,r3
      0047EB C0 07            [24] 5195 	push	ar7
      0047ED C0 06            [24] 5196 	push	ar6
      0047EF C0 05            [24] 5197 	push	ar5
      0047F1 12 71 72         [24] 5198 	lcall	_putchar
      0047F4 D0 05            [24] 5199 	pop	ar5
      0047F6 D0 06            [24] 5200 	pop	ar6
      0047F8 D0 07            [24] 5201 	pop	ar7
      0047FA 0F               [12] 5202 	inc	r7
                                   5203 ;	calc.c:206: printstr("\r\nstack underflow\r\n");
      0047FB BF 00 D8         [24] 5204 	cjne	r7,#0x00,00441$
      0047FE 0E               [12] 5205 	inc	r6
      0047FF 80 D5            [24] 5206 	sjmp	00441$
      004801                       5207 00169$:
                                   5208 ;	calc.c:208: d1 *= d0;
      004801 E5 08            [12] 5209 	mov	a,_bp
      004803 24 15            [12] 5210 	add	a,#0x15
      004805 F8               [12] 5211 	mov	r0,a
      004806 E6               [12] 5212 	mov	a,@r0
      004807 C0 E0            [24] 5213 	push	acc
      004809 08               [12] 5214 	inc	r0
      00480A E6               [12] 5215 	mov	a,@r0
      00480B C0 E0            [24] 5216 	push	acc
      00480D 08               [12] 5217 	inc	r0
      00480E E6               [12] 5218 	mov	a,@r0
      00480F C0 E0            [24] 5219 	push	acc
      004811 08               [12] 5220 	inc	r0
      004812 E6               [12] 5221 	mov	a,@r0
      004813 C0 E0            [24] 5222 	push	acc
      004815 E5 08            [12] 5223 	mov	a,_bp
      004817 24 19            [12] 5224 	add	a,#0x19
      004819 F8               [12] 5225 	mov	r0,a
      00481A 86 82            [24] 5226 	mov	dpl,@r0
      00481C 08               [12] 5227 	inc	r0
      00481D 86 83            [24] 5228 	mov	dph,@r0
      00481F 08               [12] 5229 	inc	r0
      004820 86 F0            [24] 5230 	mov	b,@r0
      004822 08               [12] 5231 	inc	r0
      004823 E6               [12] 5232 	mov	a,@r0
      004824 12 79 FC         [24] 5233 	lcall	__mullong
      004827 AF 82            [24] 5234 	mov	r7,dpl
      004829 AE 83            [24] 5235 	mov	r6,dph
      00482B AD F0            [24] 5236 	mov	r5,b
      00482D FC               [12] 5237 	mov	r4,a
      00482E E5 81            [12] 5238 	mov	a,sp
      004830 24 FC            [12] 5239 	add	a,#0xfc
      004832 F5 81            [12] 5240 	mov	sp,a
      004834 E5 08            [12] 5241 	mov	a,_bp
      004836 24 19            [12] 5242 	add	a,#0x19
      004838 F8               [12] 5243 	mov	r0,a
      004839 A6 07            [24] 5244 	mov	@r0,ar7
      00483B 08               [12] 5245 	inc	r0
      00483C A6 06            [24] 5246 	mov	@r0,ar6
      00483E 08               [12] 5247 	inc	r0
      00483F A6 05            [24] 5248 	mov	@r0,ar5
      004841 08               [12] 5249 	inc	r0
      004842 A6 04            [24] 5250 	mov	@r0,ar4
                                   5251 ;	calc.c:209: (void)stack_push(ctx->ps, d1);
      004844 E5 08            [12] 5252 	mov	a,_bp
      004846 24 0B            [12] 5253 	add	a,#0x0b
      004848 F8               [12] 5254 	mov	r0,a
      004849 86 82            [24] 5255 	mov	dpl,@r0
      00484B 08               [12] 5256 	inc	r0
      00484C 86 83            [24] 5257 	mov	dph,@r0
      00484E 08               [12] 5258 	inc	r0
      00484F 86 F0            [24] 5259 	mov	b,@r0
      004851 12 76 03         [24] 5260 	lcall	__gptrget
      004854 FA               [12] 5261 	mov	r2,a
      004855 A3               [24] 5262 	inc	dptr
      004856 12 76 03         [24] 5263 	lcall	__gptrget
      004859 FB               [12] 5264 	mov	r3,a
      00485A A3               [24] 5265 	inc	dptr
      00485B 12 76 03         [24] 5266 	lcall	__gptrget
      00485E FC               [12] 5267 	mov	r4,a
      00485F E5 08            [12] 5268 	mov	a,_bp
      004861 24 19            [12] 5269 	add	a,#0x19
      004863 F8               [12] 5270 	mov	r0,a
      004864 E6               [12] 5271 	mov	a,@r0
      004865 C0 E0            [24] 5272 	push	acc
      004867 08               [12] 5273 	inc	r0
      004868 E6               [12] 5274 	mov	a,@r0
      004869 C0 E0            [24] 5275 	push	acc
      00486B 08               [12] 5276 	inc	r0
      00486C E6               [12] 5277 	mov	a,@r0
      00486D C0 E0            [24] 5278 	push	acc
      00486F 08               [12] 5279 	inc	r0
      004870 E6               [12] 5280 	mov	a,@r0
      004871 C0 E0            [24] 5281 	push	acc
      004873 8A 82            [24] 5282 	mov	dpl,r2
      004875 8B 83            [24] 5283 	mov	dph,r3
      004877 8C F0            [24] 5284 	mov	b,r4
      004879 12 26 B5         [24] 5285 	lcall	_stack_push
      00487C E5 81            [12] 5286 	mov	a,sp
      00487E 24 FC            [12] 5287 	add	a,#0xfc
      004880 F5 81            [12] 5288 	mov	sp,a
                                   5289 ;	calc.c:211: break;
      004882 02 59 D5         [24] 5290 	ljmp	00249$
                                   5291 ;	calc.c:213: case '\\':
      004885                       5292 00175$:
                                   5293 ;	calc.c:214: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004885 C0 05            [24] 5294 	push	ar5
      004887 C0 06            [24] 5295 	push	ar6
      004889 C0 07            [24] 5296 	push	ar7
      00488B E5 08            [12] 5297 	mov	a,_bp
      00488D 24 15            [12] 5298 	add	a,#0x15
      00488F FC               [12] 5299 	mov	r4,a
      004890 7B 00            [12] 5300 	mov	r3,#0x00
      004892 7A 40            [12] 5301 	mov	r2,#0x40
      004894 E5 08            [12] 5302 	mov	a,_bp
      004896 24 12            [12] 5303 	add	a,#0x12
      004898 F8               [12] 5304 	mov	r0,a
      004899 E5 08            [12] 5305 	mov	a,_bp
      00489B 24 0B            [12] 5306 	add	a,#0x0b
      00489D F9               [12] 5307 	mov	r1,a
      00489E 74 11            [12] 5308 	mov	a,#0x11
      0048A0 26               [12] 5309 	add	a,@r0
      0048A1 F7               [12] 5310 	mov	@r1,a
      0048A2 74 40            [12] 5311 	mov	a,#0x40
      0048A4 08               [12] 5312 	inc	r0
      0048A5 36               [12] 5313 	addc	a,@r0
      0048A6 09               [12] 5314 	inc	r1
      0048A7 F7               [12] 5315 	mov	@r1,a
      0048A8 08               [12] 5316 	inc	r0
      0048A9 09               [12] 5317 	inc	r1
      0048AA E6               [12] 5318 	mov	a,@r0
      0048AB F7               [12] 5319 	mov	@r1,a
      0048AC E5 08            [12] 5320 	mov	a,_bp
      0048AE 24 0B            [12] 5321 	add	a,#0x0b
      0048B0 F8               [12] 5322 	mov	r0,a
      0048B1 86 82            [24] 5323 	mov	dpl,@r0
      0048B3 08               [12] 5324 	inc	r0
      0048B4 86 83            [24] 5325 	mov	dph,@r0
      0048B6 08               [12] 5326 	inc	r0
      0048B7 86 F0            [24] 5327 	mov	b,@r0
      0048B9 12 76 03         [24] 5328 	lcall	__gptrget
      0048BC FD               [12] 5329 	mov	r5,a
      0048BD A3               [24] 5330 	inc	dptr
      0048BE 12 76 03         [24] 5331 	lcall	__gptrget
      0048C1 FE               [12] 5332 	mov	r6,a
      0048C2 A3               [24] 5333 	inc	dptr
      0048C3 12 76 03         [24] 5334 	lcall	__gptrget
      0048C6 FF               [12] 5335 	mov	r7,a
      0048C7 C0 05            [24] 5336 	push	ar5
      0048C9 C0 04            [24] 5337 	push	ar4
      0048CB C0 03            [24] 5338 	push	ar3
      0048CD C0 02            [24] 5339 	push	ar2
      0048CF 8D 82            [24] 5340 	mov	dpl,r5
      0048D1 8E 83            [24] 5341 	mov	dph,r6
      0048D3 8F F0            [24] 5342 	mov	b,r7
      0048D5 12 27 83         [24] 5343 	lcall	_stack_pop
      0048D8 AE 82            [24] 5344 	mov	r6,dpl
      0048DA AF 83            [24] 5345 	mov	r7,dph
      0048DC 15 81            [12] 5346 	dec	sp
      0048DE 15 81            [12] 5347 	dec	sp
      0048E0 15 81            [12] 5348 	dec	sp
      0048E2 D0 05            [24] 5349 	pop	ar5
      0048E4 EE               [12] 5350 	mov	a,r6
      0048E5 4F               [12] 5351 	orl	a,r7
      0048E6 D0 07            [24] 5352 	pop	ar7
      0048E8 D0 06            [24] 5353 	pop	ar6
      0048EA D0 05            [24] 5354 	pop	ar5
      0048EC 70 31            [24] 5355 	jnz	00186$
      0048EE 7F D2            [12] 5356 	mov	r7,#___str_10
      0048F0 7E 8E            [12] 5357 	mov	r6,#(___str_10 >> 8)
      0048F2 7D 80            [12] 5358 	mov	r5,#0x80
                                   5359 ;	calc.c:20: return;
      0048F4                       5360 00444$:
                                   5361 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0048F4 8F 82            [24] 5362 	mov	dpl,r7
      0048F6 8E 83            [24] 5363 	mov	dph,r6
      0048F8 8D F0            [24] 5364 	mov	b,r5
      0048FA 12 76 03         [24] 5365 	lcall	__gptrget
      0048FD FC               [12] 5366 	mov	r4,a
      0048FE 70 03            [24] 5367 	jnz	01344$
      004900 02 59 D5         [24] 5368 	ljmp	00249$
      004903                       5369 01344$:
      004903 7B 00            [12] 5370 	mov	r3,#0x00
      004905 8C 82            [24] 5371 	mov	dpl,r4
      004907 8B 83            [24] 5372 	mov	dph,r3
      004909 C0 07            [24] 5373 	push	ar7
      00490B C0 06            [24] 5374 	push	ar6
      00490D C0 05            [24] 5375 	push	ar5
      00490F 12 71 72         [24] 5376 	lcall	_putchar
      004912 D0 05            [24] 5377 	pop	ar5
      004914 D0 06            [24] 5378 	pop	ar6
      004916 D0 07            [24] 5379 	pop	ar7
      004918 0F               [12] 5380 	inc	r7
                                   5381 ;	calc.c:214: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004919 BF 00 D8         [24] 5382 	cjne	r7,#0x00,00444$
      00491C 0E               [12] 5383 	inc	r6
      00491D 80 D5            [24] 5384 	sjmp	00444$
      00491F                       5385 00186$:
                                   5386 ;	calc.c:215: else if (!stack_pop(ctx->ps, &d1)) {
      00491F C0 05            [24] 5387 	push	ar5
      004921 C0 06            [24] 5388 	push	ar6
      004923 C0 07            [24] 5389 	push	ar7
      004925 E5 08            [12] 5390 	mov	a,_bp
      004927 24 19            [12] 5391 	add	a,#0x19
      004929 FC               [12] 5392 	mov	r4,a
      00492A 7B 00            [12] 5393 	mov	r3,#0x00
      00492C 7A 40            [12] 5394 	mov	r2,#0x40
      00492E E5 08            [12] 5395 	mov	a,_bp
      004930 24 0B            [12] 5396 	add	a,#0x0b
      004932 F8               [12] 5397 	mov	r0,a
      004933 86 82            [24] 5398 	mov	dpl,@r0
      004935 08               [12] 5399 	inc	r0
      004936 86 83            [24] 5400 	mov	dph,@r0
      004938 08               [12] 5401 	inc	r0
      004939 86 F0            [24] 5402 	mov	b,@r0
      00493B 12 76 03         [24] 5403 	lcall	__gptrget
      00493E FD               [12] 5404 	mov	r5,a
      00493F A3               [24] 5405 	inc	dptr
      004940 12 76 03         [24] 5406 	lcall	__gptrget
      004943 FE               [12] 5407 	mov	r6,a
      004944 A3               [24] 5408 	inc	dptr
      004945 12 76 03         [24] 5409 	lcall	__gptrget
      004948 FF               [12] 5410 	mov	r7,a
      004949 C0 05            [24] 5411 	push	ar5
      00494B C0 04            [24] 5412 	push	ar4
      00494D C0 03            [24] 5413 	push	ar3
      00494F C0 02            [24] 5414 	push	ar2
      004951 8D 82            [24] 5415 	mov	dpl,r5
      004953 8E 83            [24] 5416 	mov	dph,r6
      004955 8F F0            [24] 5417 	mov	b,r7
      004957 12 27 83         [24] 5418 	lcall	_stack_pop
      00495A AE 82            [24] 5419 	mov	r6,dpl
      00495C AF 83            [24] 5420 	mov	r7,dph
      00495E 15 81            [12] 5421 	dec	sp
      004960 15 81            [12] 5422 	dec	sp
      004962 15 81            [12] 5423 	dec	sp
      004964 D0 05            [24] 5424 	pop	ar5
      004966 EE               [12] 5425 	mov	a,r6
      004967 4F               [12] 5426 	orl	a,r7
      004968 D0 07            [24] 5427 	pop	ar7
      00496A D0 06            [24] 5428 	pop	ar6
      00496C D0 05            [24] 5429 	pop	ar5
      00496E 70 6F            [24] 5430 	jnz	00183$
                                   5431 ;	calc.c:216: (void)stack_push(ctx->ps, d0);
      004970 E5 08            [12] 5432 	mov	a,_bp
      004972 24 0B            [12] 5433 	add	a,#0x0b
      004974 F8               [12] 5434 	mov	r0,a
      004975 86 82            [24] 5435 	mov	dpl,@r0
      004977 08               [12] 5436 	inc	r0
      004978 86 83            [24] 5437 	mov	dph,@r0
      00497A 08               [12] 5438 	inc	r0
      00497B 86 F0            [24] 5439 	mov	b,@r0
      00497D 12 76 03         [24] 5440 	lcall	__gptrget
      004980 FA               [12] 5441 	mov	r2,a
      004981 A3               [24] 5442 	inc	dptr
      004982 12 76 03         [24] 5443 	lcall	__gptrget
      004985 FB               [12] 5444 	mov	r3,a
      004986 A3               [24] 5445 	inc	dptr
      004987 12 76 03         [24] 5446 	lcall	__gptrget
      00498A FC               [12] 5447 	mov	r4,a
      00498B E5 08            [12] 5448 	mov	a,_bp
      00498D 24 15            [12] 5449 	add	a,#0x15
      00498F F8               [12] 5450 	mov	r0,a
      004990 E6               [12] 5451 	mov	a,@r0
      004991 C0 E0            [24] 5452 	push	acc
      004993 08               [12] 5453 	inc	r0
      004994 E6               [12] 5454 	mov	a,@r0
      004995 C0 E0            [24] 5455 	push	acc
      004997 08               [12] 5456 	inc	r0
      004998 E6               [12] 5457 	mov	a,@r0
      004999 C0 E0            [24] 5458 	push	acc
      00499B 08               [12] 5459 	inc	r0
      00499C E6               [12] 5460 	mov	a,@r0
      00499D C0 E0            [24] 5461 	push	acc
      00499F 8A 82            [24] 5462 	mov	dpl,r2
      0049A1 8B 83            [24] 5463 	mov	dph,r3
      0049A3 8C F0            [24] 5464 	mov	b,r4
      0049A5 12 26 B5         [24] 5465 	lcall	_stack_push
      0049A8 E5 81            [12] 5466 	mov	a,sp
      0049AA 24 FC            [12] 5467 	add	a,#0xfc
      0049AC F5 81            [12] 5468 	mov	sp,a
                                   5469 ;	calc.c:217: printstr("\r\nstack underflow\r\n");
      0049AE 7F D2            [12] 5470 	mov	r7,#___str_10
      0049B0 7E 8E            [12] 5471 	mov	r6,#(___str_10 >> 8)
      0049B2 7D 80            [12] 5472 	mov	r5,#0x80
                                   5473 ;	calc.c:20: return;
      0049B4                       5474 00447$:
                                   5475 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0049B4 8F 82            [24] 5476 	mov	dpl,r7
      0049B6 8E 83            [24] 5477 	mov	dph,r6
      0049B8 8D F0            [24] 5478 	mov	b,r5
      0049BA 12 76 03         [24] 5479 	lcall	__gptrget
      0049BD FC               [12] 5480 	mov	r4,a
      0049BE 70 03            [24] 5481 	jnz	01347$
      0049C0 02 59 D5         [24] 5482 	ljmp	00249$
      0049C3                       5483 01347$:
      0049C3 7B 00            [12] 5484 	mov	r3,#0x00
      0049C5 8C 82            [24] 5485 	mov	dpl,r4
      0049C7 8B 83            [24] 5486 	mov	dph,r3
      0049C9 C0 07            [24] 5487 	push	ar7
      0049CB C0 06            [24] 5488 	push	ar6
      0049CD C0 05            [24] 5489 	push	ar5
      0049CF 12 71 72         [24] 5490 	lcall	_putchar
      0049D2 D0 05            [24] 5491 	pop	ar5
      0049D4 D0 06            [24] 5492 	pop	ar6
      0049D6 D0 07            [24] 5493 	pop	ar7
      0049D8 0F               [12] 5494 	inc	r7
                                   5495 ;	calc.c:217: printstr("\r\nstack underflow\r\n");
      0049D9 BF 00 D8         [24] 5496 	cjne	r7,#0x00,00447$
      0049DC 0E               [12] 5497 	inc	r6
      0049DD 80 D5            [24] 5498 	sjmp	00447$
      0049DF                       5499 00183$:
                                   5500 ;	calc.c:218: } else if (!d0) {
      0049DF E5 08            [12] 5501 	mov	a,_bp
      0049E1 24 15            [12] 5502 	add	a,#0x15
      0049E3 F8               [12] 5503 	mov	r0,a
      0049E4 E6               [12] 5504 	mov	a,@r0
      0049E5 08               [12] 5505 	inc	r0
      0049E6 46               [12] 5506 	orl	a,@r0
      0049E7 08               [12] 5507 	inc	r0
      0049E8 46               [12] 5508 	orl	a,@r0
      0049E9 08               [12] 5509 	inc	r0
      0049EA 46               [12] 5510 	orl	a,@r0
      0049EB 60 03            [24] 5511 	jz	01349$
      0049ED 02 4A 9D         [24] 5512 	ljmp	00180$
      0049F0                       5513 01349$:
                                   5514 ;	calc.c:219: (void)stack_push(ctx->ps, d1);
      0049F0 E5 08            [12] 5515 	mov	a,_bp
      0049F2 24 0B            [12] 5516 	add	a,#0x0b
      0049F4 F8               [12] 5517 	mov	r0,a
      0049F5 86 82            [24] 5518 	mov	dpl,@r0
      0049F7 08               [12] 5519 	inc	r0
      0049F8 86 83            [24] 5520 	mov	dph,@r0
      0049FA 08               [12] 5521 	inc	r0
      0049FB 86 F0            [24] 5522 	mov	b,@r0
      0049FD 12 76 03         [24] 5523 	lcall	__gptrget
      004A00 FA               [12] 5524 	mov	r2,a
      004A01 A3               [24] 5525 	inc	dptr
      004A02 12 76 03         [24] 5526 	lcall	__gptrget
      004A05 FB               [12] 5527 	mov	r3,a
      004A06 A3               [24] 5528 	inc	dptr
      004A07 12 76 03         [24] 5529 	lcall	__gptrget
      004A0A FC               [12] 5530 	mov	r4,a
      004A0B E5 08            [12] 5531 	mov	a,_bp
      004A0D 24 19            [12] 5532 	add	a,#0x19
      004A0F F8               [12] 5533 	mov	r0,a
      004A10 E6               [12] 5534 	mov	a,@r0
      004A11 C0 E0            [24] 5535 	push	acc
      004A13 08               [12] 5536 	inc	r0
      004A14 E6               [12] 5537 	mov	a,@r0
      004A15 C0 E0            [24] 5538 	push	acc
      004A17 08               [12] 5539 	inc	r0
      004A18 E6               [12] 5540 	mov	a,@r0
      004A19 C0 E0            [24] 5541 	push	acc
      004A1B 08               [12] 5542 	inc	r0
      004A1C E6               [12] 5543 	mov	a,@r0
      004A1D C0 E0            [24] 5544 	push	acc
      004A1F 8A 82            [24] 5545 	mov	dpl,r2
      004A21 8B 83            [24] 5546 	mov	dph,r3
      004A23 8C F0            [24] 5547 	mov	b,r4
      004A25 12 26 B5         [24] 5548 	lcall	_stack_push
      004A28 E5 81            [12] 5549 	mov	a,sp
      004A2A 24 FC            [12] 5550 	add	a,#0xfc
      004A2C F5 81            [12] 5551 	mov	sp,a
                                   5552 ;	calc.c:220: (void)stack_push(ctx->ps, d0);			
      004A2E E5 08            [12] 5553 	mov	a,_bp
      004A30 24 0B            [12] 5554 	add	a,#0x0b
      004A32 F8               [12] 5555 	mov	r0,a
      004A33 86 82            [24] 5556 	mov	dpl,@r0
      004A35 08               [12] 5557 	inc	r0
      004A36 86 83            [24] 5558 	mov	dph,@r0
      004A38 08               [12] 5559 	inc	r0
      004A39 86 F0            [24] 5560 	mov	b,@r0
      004A3B 12 76 03         [24] 5561 	lcall	__gptrget
      004A3E FA               [12] 5562 	mov	r2,a
      004A3F A3               [24] 5563 	inc	dptr
      004A40 12 76 03         [24] 5564 	lcall	__gptrget
      004A43 FB               [12] 5565 	mov	r3,a
      004A44 A3               [24] 5566 	inc	dptr
      004A45 12 76 03         [24] 5567 	lcall	__gptrget
      004A48 FC               [12] 5568 	mov	r4,a
      004A49 E5 08            [12] 5569 	mov	a,_bp
      004A4B 24 15            [12] 5570 	add	a,#0x15
      004A4D F8               [12] 5571 	mov	r0,a
      004A4E E6               [12] 5572 	mov	a,@r0
      004A4F C0 E0            [24] 5573 	push	acc
      004A51 08               [12] 5574 	inc	r0
      004A52 E6               [12] 5575 	mov	a,@r0
      004A53 C0 E0            [24] 5576 	push	acc
      004A55 08               [12] 5577 	inc	r0
      004A56 E6               [12] 5578 	mov	a,@r0
      004A57 C0 E0            [24] 5579 	push	acc
      004A59 08               [12] 5580 	inc	r0
      004A5A E6               [12] 5581 	mov	a,@r0
      004A5B C0 E0            [24] 5582 	push	acc
      004A5D 8A 82            [24] 5583 	mov	dpl,r2
      004A5F 8B 83            [24] 5584 	mov	dph,r3
      004A61 8C F0            [24] 5585 	mov	b,r4
      004A63 12 26 B5         [24] 5586 	lcall	_stack_push
      004A66 E5 81            [12] 5587 	mov	a,sp
      004A68 24 FC            [12] 5588 	add	a,#0xfc
      004A6A F5 81            [12] 5589 	mov	sp,a
                                   5590 ;	calc.c:221: printstr("\r\ndivision by zero\r\n");
      004A6C 7F 34            [12] 5591 	mov	r7,#___str_14
      004A6E 7E 8F            [12] 5592 	mov	r6,#(___str_14 >> 8)
      004A70 7D 80            [12] 5593 	mov	r5,#0x80
                                   5594 ;	calc.c:20: return;
      004A72                       5595 00450$:
                                   5596 ;	calc.c:18: for (; *s; s++) putchar(*s);
      004A72 8F 82            [24] 5597 	mov	dpl,r7
      004A74 8E 83            [24] 5598 	mov	dph,r6
      004A76 8D F0            [24] 5599 	mov	b,r5
      004A78 12 76 03         [24] 5600 	lcall	__gptrget
      004A7B FC               [12] 5601 	mov	r4,a
      004A7C 70 03            [24] 5602 	jnz	01350$
      004A7E 02 59 D5         [24] 5603 	ljmp	00249$
      004A81                       5604 01350$:
      004A81 7B 00            [12] 5605 	mov	r3,#0x00
      004A83 8C 82            [24] 5606 	mov	dpl,r4
      004A85 8B 83            [24] 5607 	mov	dph,r3
      004A87 C0 07            [24] 5608 	push	ar7
      004A89 C0 06            [24] 5609 	push	ar6
      004A8B C0 05            [24] 5610 	push	ar5
      004A8D 12 71 72         [24] 5611 	lcall	_putchar
      004A90 D0 05            [24] 5612 	pop	ar5
      004A92 D0 06            [24] 5613 	pop	ar6
      004A94 D0 07            [24] 5614 	pop	ar7
      004A96 0F               [12] 5615 	inc	r7
                                   5616 ;	calc.c:221: printstr("\r\ndivision by zero\r\n");
      004A97 BF 00 D8         [24] 5617 	cjne	r7,#0x00,00450$
      004A9A 0E               [12] 5618 	inc	r6
      004A9B 80 D5            [24] 5619 	sjmp	00450$
      004A9D                       5620 00180$:
                                   5621 ;	calc.c:223: if (ctx->digit[0] == '/') d1 /= d0;
      004A9D 8D 82            [24] 5622 	mov	dpl,r5
      004A9F 8E 83            [24] 5623 	mov	dph,r6
      004AA1 8F F0            [24] 5624 	mov	b,r7
      004AA3 12 76 03         [24] 5625 	lcall	__gptrget
      004AA6 FC               [12] 5626 	mov	r4,a
      004AA7 BC 2F 45         [24] 5627 	cjne	r4,#0x2f,00177$
      004AAA E5 08            [12] 5628 	mov	a,_bp
      004AAC 24 15            [12] 5629 	add	a,#0x15
      004AAE F8               [12] 5630 	mov	r0,a
      004AAF E6               [12] 5631 	mov	a,@r0
      004AB0 C0 E0            [24] 5632 	push	acc
      004AB2 08               [12] 5633 	inc	r0
      004AB3 E6               [12] 5634 	mov	a,@r0
      004AB4 C0 E0            [24] 5635 	push	acc
      004AB6 08               [12] 5636 	inc	r0
      004AB7 E6               [12] 5637 	mov	a,@r0
      004AB8 C0 E0            [24] 5638 	push	acc
      004ABA 08               [12] 5639 	inc	r0
      004ABB E6               [12] 5640 	mov	a,@r0
      004ABC C0 E0            [24] 5641 	push	acc
      004ABE E5 08            [12] 5642 	mov	a,_bp
      004AC0 24 19            [12] 5643 	add	a,#0x19
      004AC2 F8               [12] 5644 	mov	r0,a
      004AC3 86 82            [24] 5645 	mov	dpl,@r0
      004AC5 08               [12] 5646 	inc	r0
      004AC6 86 83            [24] 5647 	mov	dph,@r0
      004AC8 08               [12] 5648 	inc	r0
      004AC9 86 F0            [24] 5649 	mov	b,@r0
      004ACB 08               [12] 5650 	inc	r0
      004ACC E6               [12] 5651 	mov	a,@r0
      004ACD 12 73 FA         [24] 5652 	lcall	__divslong
      004AD0 AF 82            [24] 5653 	mov	r7,dpl
      004AD2 AE 83            [24] 5654 	mov	r6,dph
      004AD4 AD F0            [24] 5655 	mov	r5,b
      004AD6 FC               [12] 5656 	mov	r4,a
      004AD7 E5 81            [12] 5657 	mov	a,sp
      004AD9 24 FC            [12] 5658 	add	a,#0xfc
      004ADB F5 81            [12] 5659 	mov	sp,a
      004ADD E5 08            [12] 5660 	mov	a,_bp
      004ADF 24 19            [12] 5661 	add	a,#0x19
      004AE1 F8               [12] 5662 	mov	r0,a
      004AE2 A6 07            [24] 5663 	mov	@r0,ar7
      004AE4 08               [12] 5664 	inc	r0
      004AE5 A6 06            [24] 5665 	mov	@r0,ar6
      004AE7 08               [12] 5666 	inc	r0
      004AE8 A6 05            [24] 5667 	mov	@r0,ar5
      004AEA 08               [12] 5668 	inc	r0
      004AEB A6 04            [24] 5669 	mov	@r0,ar4
      004AED 80 63            [24] 5670 	sjmp	00178$
      004AEF                       5671 00177$:
                                   5672 ;	calc.c:224: else d1 = (unsigned long)d1 / (unsigned long)d0;
      004AEF E5 08            [12] 5673 	mov	a,_bp
      004AF1 24 19            [12] 5674 	add	a,#0x19
      004AF3 F8               [12] 5675 	mov	r0,a
      004AF4 86 07            [24] 5676 	mov	ar7,@r0
      004AF6 08               [12] 5677 	inc	r0
      004AF7 86 06            [24] 5678 	mov	ar6,@r0
      004AF9 08               [12] 5679 	inc	r0
      004AFA 86 05            [24] 5680 	mov	ar5,@r0
      004AFC 08               [12] 5681 	inc	r0
      004AFD 86 04            [24] 5682 	mov	ar4,@r0
      004AFF E5 08            [12] 5683 	mov	a,_bp
      004B01 24 15            [12] 5684 	add	a,#0x15
      004B03 F8               [12] 5685 	mov	r0,a
      004B04 E5 08            [12] 5686 	mov	a,_bp
      004B06 24 0E            [12] 5687 	add	a,#0x0e
      004B08 F9               [12] 5688 	mov	r1,a
      004B09 E6               [12] 5689 	mov	a,@r0
      004B0A F7               [12] 5690 	mov	@r1,a
      004B0B 08               [12] 5691 	inc	r0
      004B0C 09               [12] 5692 	inc	r1
      004B0D E6               [12] 5693 	mov	a,@r0
      004B0E F7               [12] 5694 	mov	@r1,a
      004B0F 08               [12] 5695 	inc	r0
      004B10 09               [12] 5696 	inc	r1
      004B11 E6               [12] 5697 	mov	a,@r0
      004B12 F7               [12] 5698 	mov	@r1,a
      004B13 08               [12] 5699 	inc	r0
      004B14 09               [12] 5700 	inc	r1
      004B15 E6               [12] 5701 	mov	a,@r0
      004B16 F7               [12] 5702 	mov	@r1,a
      004B17 E5 08            [12] 5703 	mov	a,_bp
      004B19 24 0E            [12] 5704 	add	a,#0x0e
      004B1B F8               [12] 5705 	mov	r0,a
      004B1C E6               [12] 5706 	mov	a,@r0
      004B1D C0 E0            [24] 5707 	push	acc
      004B1F 08               [12] 5708 	inc	r0
      004B20 E6               [12] 5709 	mov	a,@r0
      004B21 C0 E0            [24] 5710 	push	acc
      004B23 08               [12] 5711 	inc	r0
      004B24 E6               [12] 5712 	mov	a,@r0
      004B25 C0 E0            [24] 5713 	push	acc
      004B27 08               [12] 5714 	inc	r0
      004B28 E6               [12] 5715 	mov	a,@r0
      004B29 C0 E0            [24] 5716 	push	acc
      004B2B 8F 82            [24] 5717 	mov	dpl,r7
      004B2D 8E 83            [24] 5718 	mov	dph,r6
      004B2F 8D F0            [24] 5719 	mov	b,r5
      004B31 EC               [12] 5720 	mov	a,r4
      004B32 12 74 F7         [24] 5721 	lcall	__divulong
      004B35 AF 82            [24] 5722 	mov	r7,dpl
      004B37 AE 83            [24] 5723 	mov	r6,dph
      004B39 AD F0            [24] 5724 	mov	r5,b
      004B3B FC               [12] 5725 	mov	r4,a
      004B3C E5 81            [12] 5726 	mov	a,sp
      004B3E 24 FC            [12] 5727 	add	a,#0xfc
      004B40 F5 81            [12] 5728 	mov	sp,a
      004B42 E5 08            [12] 5729 	mov	a,_bp
      004B44 24 19            [12] 5730 	add	a,#0x19
      004B46 F8               [12] 5731 	mov	r0,a
      004B47 A6 07            [24] 5732 	mov	@r0,ar7
      004B49 08               [12] 5733 	inc	r0
      004B4A A6 06            [24] 5734 	mov	@r0,ar6
      004B4C 08               [12] 5735 	inc	r0
      004B4D A6 05            [24] 5736 	mov	@r0,ar5
      004B4F 08               [12] 5737 	inc	r0
      004B50 A6 04            [24] 5738 	mov	@r0,ar4
      004B52                       5739 00178$:
                                   5740 ;	calc.c:225: (void)stack_push(ctx->ps, d1);
      004B52 E5 08            [12] 5741 	mov	a,_bp
      004B54 24 0B            [12] 5742 	add	a,#0x0b
      004B56 F8               [12] 5743 	mov	r0,a
      004B57 86 82            [24] 5744 	mov	dpl,@r0
      004B59 08               [12] 5745 	inc	r0
      004B5A 86 83            [24] 5746 	mov	dph,@r0
      004B5C 08               [12] 5747 	inc	r0
      004B5D 86 F0            [24] 5748 	mov	b,@r0
      004B5F 12 76 03         [24] 5749 	lcall	__gptrget
      004B62 FA               [12] 5750 	mov	r2,a
      004B63 A3               [24] 5751 	inc	dptr
      004B64 12 76 03         [24] 5752 	lcall	__gptrget
      004B67 FB               [12] 5753 	mov	r3,a
      004B68 A3               [24] 5754 	inc	dptr
      004B69 12 76 03         [24] 5755 	lcall	__gptrget
      004B6C FC               [12] 5756 	mov	r4,a
      004B6D E5 08            [12] 5757 	mov	a,_bp
      004B6F 24 19            [12] 5758 	add	a,#0x19
      004B71 F8               [12] 5759 	mov	r0,a
      004B72 E6               [12] 5760 	mov	a,@r0
      004B73 C0 E0            [24] 5761 	push	acc
      004B75 08               [12] 5762 	inc	r0
      004B76 E6               [12] 5763 	mov	a,@r0
      004B77 C0 E0            [24] 5764 	push	acc
      004B79 08               [12] 5765 	inc	r0
      004B7A E6               [12] 5766 	mov	a,@r0
      004B7B C0 E0            [24] 5767 	push	acc
      004B7D 08               [12] 5768 	inc	r0
      004B7E E6               [12] 5769 	mov	a,@r0
      004B7F C0 E0            [24] 5770 	push	acc
      004B81 8A 82            [24] 5771 	mov	dpl,r2
      004B83 8B 83            [24] 5772 	mov	dph,r3
      004B85 8C F0            [24] 5773 	mov	b,r4
      004B87 12 26 B5         [24] 5774 	lcall	_stack_push
      004B8A E5 81            [12] 5775 	mov	a,sp
      004B8C 24 FC            [12] 5776 	add	a,#0xfc
      004B8E F5 81            [12] 5777 	mov	sp,a
                                   5778 ;	calc.c:227: break;
      004B90 02 59 D5         [24] 5779 	ljmp	00249$
                                   5780 ;	calc.c:229: case '#':
      004B93                       5781 00189$:
                                   5782 ;	calc.c:230: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004B93 C0 05            [24] 5783 	push	ar5
      004B95 C0 06            [24] 5784 	push	ar6
      004B97 C0 07            [24] 5785 	push	ar7
      004B99 E5 08            [12] 5786 	mov	a,_bp
      004B9B 24 15            [12] 5787 	add	a,#0x15
      004B9D FC               [12] 5788 	mov	r4,a
      004B9E 7B 00            [12] 5789 	mov	r3,#0x00
      004BA0 7A 40            [12] 5790 	mov	r2,#0x40
      004BA2 E5 08            [12] 5791 	mov	a,_bp
      004BA4 24 12            [12] 5792 	add	a,#0x12
      004BA6 F8               [12] 5793 	mov	r0,a
      004BA7 E5 08            [12] 5794 	mov	a,_bp
      004BA9 24 0E            [12] 5795 	add	a,#0x0e
      004BAB F9               [12] 5796 	mov	r1,a
      004BAC 74 11            [12] 5797 	mov	a,#0x11
      004BAE 26               [12] 5798 	add	a,@r0
      004BAF F7               [12] 5799 	mov	@r1,a
      004BB0 74 40            [12] 5800 	mov	a,#0x40
      004BB2 08               [12] 5801 	inc	r0
      004BB3 36               [12] 5802 	addc	a,@r0
      004BB4 09               [12] 5803 	inc	r1
      004BB5 F7               [12] 5804 	mov	@r1,a
      004BB6 08               [12] 5805 	inc	r0
      004BB7 09               [12] 5806 	inc	r1
      004BB8 E6               [12] 5807 	mov	a,@r0
      004BB9 F7               [12] 5808 	mov	@r1,a
      004BBA E5 08            [12] 5809 	mov	a,_bp
      004BBC 24 0E            [12] 5810 	add	a,#0x0e
      004BBE F8               [12] 5811 	mov	r0,a
      004BBF 86 82            [24] 5812 	mov	dpl,@r0
      004BC1 08               [12] 5813 	inc	r0
      004BC2 86 83            [24] 5814 	mov	dph,@r0
      004BC4 08               [12] 5815 	inc	r0
      004BC5 86 F0            [24] 5816 	mov	b,@r0
      004BC7 12 76 03         [24] 5817 	lcall	__gptrget
      004BCA FD               [12] 5818 	mov	r5,a
      004BCB A3               [24] 5819 	inc	dptr
      004BCC 12 76 03         [24] 5820 	lcall	__gptrget
      004BCF FE               [12] 5821 	mov	r6,a
      004BD0 A3               [24] 5822 	inc	dptr
      004BD1 12 76 03         [24] 5823 	lcall	__gptrget
      004BD4 FF               [12] 5824 	mov	r7,a
      004BD5 C0 05            [24] 5825 	push	ar5
      004BD7 C0 04            [24] 5826 	push	ar4
      004BD9 C0 03            [24] 5827 	push	ar3
      004BDB C0 02            [24] 5828 	push	ar2
      004BDD 8D 82            [24] 5829 	mov	dpl,r5
      004BDF 8E 83            [24] 5830 	mov	dph,r6
      004BE1 8F F0            [24] 5831 	mov	b,r7
      004BE3 12 27 83         [24] 5832 	lcall	_stack_pop
      004BE6 AE 82            [24] 5833 	mov	r6,dpl
      004BE8 AF 83            [24] 5834 	mov	r7,dph
      004BEA 15 81            [12] 5835 	dec	sp
      004BEC 15 81            [12] 5836 	dec	sp
      004BEE 15 81            [12] 5837 	dec	sp
      004BF0 D0 05            [24] 5838 	pop	ar5
      004BF2 EE               [12] 5839 	mov	a,r6
      004BF3 4F               [12] 5840 	orl	a,r7
      004BF4 D0 07            [24] 5841 	pop	ar7
      004BF6 D0 06            [24] 5842 	pop	ar6
      004BF8 D0 05            [24] 5843 	pop	ar5
      004BFA 70 31            [24] 5844 	jnz	00200$
      004BFC 7F D2            [12] 5845 	mov	r7,#___str_10
      004BFE 7E 8E            [12] 5846 	mov	r6,#(___str_10 >> 8)
      004C00 7D 80            [12] 5847 	mov	r5,#0x80
                                   5848 ;	calc.c:20: return;
      004C02                       5849 00453$:
                                   5850 ;	calc.c:18: for (; *s; s++) putchar(*s);
      004C02 8F 82            [24] 5851 	mov	dpl,r7
      004C04 8E 83            [24] 5852 	mov	dph,r6
      004C06 8D F0            [24] 5853 	mov	b,r5
      004C08 12 76 03         [24] 5854 	lcall	__gptrget
      004C0B FC               [12] 5855 	mov	r4,a
      004C0C 70 03            [24] 5856 	jnz	01355$
      004C0E 02 59 D5         [24] 5857 	ljmp	00249$
      004C11                       5858 01355$:
      004C11 7B 00            [12] 5859 	mov	r3,#0x00
      004C13 8C 82            [24] 5860 	mov	dpl,r4
      004C15 8B 83            [24] 5861 	mov	dph,r3
      004C17 C0 07            [24] 5862 	push	ar7
      004C19 C0 06            [24] 5863 	push	ar6
      004C1B C0 05            [24] 5864 	push	ar5
      004C1D 12 71 72         [24] 5865 	lcall	_putchar
      004C20 D0 05            [24] 5866 	pop	ar5
      004C22 D0 06            [24] 5867 	pop	ar6
      004C24 D0 07            [24] 5868 	pop	ar7
      004C26 0F               [12] 5869 	inc	r7
                                   5870 ;	calc.c:230: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004C27 BF 00 D8         [24] 5871 	cjne	r7,#0x00,00453$
      004C2A 0E               [12] 5872 	inc	r6
      004C2B 80 D5            [24] 5873 	sjmp	00453$
      004C2D                       5874 00200$:
                                   5875 ;	calc.c:231: else if (!stack_pop(ctx->ps, &d1)) {
      004C2D C0 05            [24] 5876 	push	ar5
      004C2F C0 06            [24] 5877 	push	ar6
      004C31 C0 07            [24] 5878 	push	ar7
      004C33 E5 08            [12] 5879 	mov	a,_bp
      004C35 24 19            [12] 5880 	add	a,#0x19
      004C37 FC               [12] 5881 	mov	r4,a
      004C38 7B 00            [12] 5882 	mov	r3,#0x00
      004C3A 7A 40            [12] 5883 	mov	r2,#0x40
      004C3C E5 08            [12] 5884 	mov	a,_bp
      004C3E 24 0E            [12] 5885 	add	a,#0x0e
      004C40 F8               [12] 5886 	mov	r0,a
      004C41 86 82            [24] 5887 	mov	dpl,@r0
      004C43 08               [12] 5888 	inc	r0
      004C44 86 83            [24] 5889 	mov	dph,@r0
      004C46 08               [12] 5890 	inc	r0
      004C47 86 F0            [24] 5891 	mov	b,@r0
      004C49 12 76 03         [24] 5892 	lcall	__gptrget
      004C4C FD               [12] 5893 	mov	r5,a
      004C4D A3               [24] 5894 	inc	dptr
      004C4E 12 76 03         [24] 5895 	lcall	__gptrget
      004C51 FE               [12] 5896 	mov	r6,a
      004C52 A3               [24] 5897 	inc	dptr
      004C53 12 76 03         [24] 5898 	lcall	__gptrget
      004C56 FF               [12] 5899 	mov	r7,a
      004C57 C0 05            [24] 5900 	push	ar5
      004C59 C0 04            [24] 5901 	push	ar4
      004C5B C0 03            [24] 5902 	push	ar3
      004C5D C0 02            [24] 5903 	push	ar2
      004C5F 8D 82            [24] 5904 	mov	dpl,r5
      004C61 8E 83            [24] 5905 	mov	dph,r6
      004C63 8F F0            [24] 5906 	mov	b,r7
      004C65 12 27 83         [24] 5907 	lcall	_stack_pop
      004C68 AE 82            [24] 5908 	mov	r6,dpl
      004C6A AF 83            [24] 5909 	mov	r7,dph
      004C6C 15 81            [12] 5910 	dec	sp
      004C6E 15 81            [12] 5911 	dec	sp
      004C70 15 81            [12] 5912 	dec	sp
      004C72 D0 05            [24] 5913 	pop	ar5
      004C74 EE               [12] 5914 	mov	a,r6
      004C75 4F               [12] 5915 	orl	a,r7
      004C76 D0 07            [24] 5916 	pop	ar7
      004C78 D0 06            [24] 5917 	pop	ar6
      004C7A D0 05            [24] 5918 	pop	ar5
      004C7C 70 6F            [24] 5919 	jnz	00197$
                                   5920 ;	calc.c:232: (void)stack_push(ctx->ps, d0);
      004C7E E5 08            [12] 5921 	mov	a,_bp
      004C80 24 0E            [12] 5922 	add	a,#0x0e
      004C82 F8               [12] 5923 	mov	r0,a
      004C83 86 82            [24] 5924 	mov	dpl,@r0
      004C85 08               [12] 5925 	inc	r0
      004C86 86 83            [24] 5926 	mov	dph,@r0
      004C88 08               [12] 5927 	inc	r0
      004C89 86 F0            [24] 5928 	mov	b,@r0
      004C8B 12 76 03         [24] 5929 	lcall	__gptrget
      004C8E FA               [12] 5930 	mov	r2,a
      004C8F A3               [24] 5931 	inc	dptr
      004C90 12 76 03         [24] 5932 	lcall	__gptrget
      004C93 FB               [12] 5933 	mov	r3,a
      004C94 A3               [24] 5934 	inc	dptr
      004C95 12 76 03         [24] 5935 	lcall	__gptrget
      004C98 FC               [12] 5936 	mov	r4,a
      004C99 E5 08            [12] 5937 	mov	a,_bp
      004C9B 24 15            [12] 5938 	add	a,#0x15
      004C9D F8               [12] 5939 	mov	r0,a
      004C9E E6               [12] 5940 	mov	a,@r0
      004C9F C0 E0            [24] 5941 	push	acc
      004CA1 08               [12] 5942 	inc	r0
      004CA2 E6               [12] 5943 	mov	a,@r0
      004CA3 C0 E0            [24] 5944 	push	acc
      004CA5 08               [12] 5945 	inc	r0
      004CA6 E6               [12] 5946 	mov	a,@r0
      004CA7 C0 E0            [24] 5947 	push	acc
      004CA9 08               [12] 5948 	inc	r0
      004CAA E6               [12] 5949 	mov	a,@r0
      004CAB C0 E0            [24] 5950 	push	acc
      004CAD 8A 82            [24] 5951 	mov	dpl,r2
      004CAF 8B 83            [24] 5952 	mov	dph,r3
      004CB1 8C F0            [24] 5953 	mov	b,r4
      004CB3 12 26 B5         [24] 5954 	lcall	_stack_push
      004CB6 E5 81            [12] 5955 	mov	a,sp
      004CB8 24 FC            [12] 5956 	add	a,#0xfc
      004CBA F5 81            [12] 5957 	mov	sp,a
                                   5958 ;	calc.c:233: printstr("\r\nstack underflow\r\n");
      004CBC 7F D2            [12] 5959 	mov	r7,#___str_10
      004CBE 7E 8E            [12] 5960 	mov	r6,#(___str_10 >> 8)
      004CC0 7D 80            [12] 5961 	mov	r5,#0x80
                                   5962 ;	calc.c:20: return;
      004CC2                       5963 00456$:
                                   5964 ;	calc.c:18: for (; *s; s++) putchar(*s);
      004CC2 8F 82            [24] 5965 	mov	dpl,r7
      004CC4 8E 83            [24] 5966 	mov	dph,r6
      004CC6 8D F0            [24] 5967 	mov	b,r5
      004CC8 12 76 03         [24] 5968 	lcall	__gptrget
      004CCB FC               [12] 5969 	mov	r4,a
      004CCC 70 03            [24] 5970 	jnz	01358$
      004CCE 02 59 D5         [24] 5971 	ljmp	00249$
      004CD1                       5972 01358$:
      004CD1 7B 00            [12] 5973 	mov	r3,#0x00
      004CD3 8C 82            [24] 5974 	mov	dpl,r4
      004CD5 8B 83            [24] 5975 	mov	dph,r3
      004CD7 C0 07            [24] 5976 	push	ar7
      004CD9 C0 06            [24] 5977 	push	ar6
      004CDB C0 05            [24] 5978 	push	ar5
      004CDD 12 71 72         [24] 5979 	lcall	_putchar
      004CE0 D0 05            [24] 5980 	pop	ar5
      004CE2 D0 06            [24] 5981 	pop	ar6
      004CE4 D0 07            [24] 5982 	pop	ar7
      004CE6 0F               [12] 5983 	inc	r7
                                   5984 ;	calc.c:233: printstr("\r\nstack underflow\r\n");
      004CE7 BF 00 D8         [24] 5985 	cjne	r7,#0x00,00456$
      004CEA 0E               [12] 5986 	inc	r6
      004CEB 80 D5            [24] 5987 	sjmp	00456$
      004CED                       5988 00197$:
                                   5989 ;	calc.c:234: } else if (!d0) {
      004CED E5 08            [12] 5990 	mov	a,_bp
      004CEF 24 15            [12] 5991 	add	a,#0x15
      004CF1 F8               [12] 5992 	mov	r0,a
      004CF2 E6               [12] 5993 	mov	a,@r0
      004CF3 08               [12] 5994 	inc	r0
      004CF4 46               [12] 5995 	orl	a,@r0
      004CF5 08               [12] 5996 	inc	r0
      004CF6 46               [12] 5997 	orl	a,@r0
      004CF7 08               [12] 5998 	inc	r0
      004CF8 46               [12] 5999 	orl	a,@r0
      004CF9 60 03            [24] 6000 	jz	01360$
      004CFB 02 4D AB         [24] 6001 	ljmp	00194$
      004CFE                       6002 01360$:
                                   6003 ;	calc.c:235: (void)stack_push(ctx->ps, d1);
      004CFE E5 08            [12] 6004 	mov	a,_bp
      004D00 24 0E            [12] 6005 	add	a,#0x0e
      004D02 F8               [12] 6006 	mov	r0,a
      004D03 86 82            [24] 6007 	mov	dpl,@r0
      004D05 08               [12] 6008 	inc	r0
      004D06 86 83            [24] 6009 	mov	dph,@r0
      004D08 08               [12] 6010 	inc	r0
      004D09 86 F0            [24] 6011 	mov	b,@r0
      004D0B 12 76 03         [24] 6012 	lcall	__gptrget
      004D0E FA               [12] 6013 	mov	r2,a
      004D0F A3               [24] 6014 	inc	dptr
      004D10 12 76 03         [24] 6015 	lcall	__gptrget
      004D13 FB               [12] 6016 	mov	r3,a
      004D14 A3               [24] 6017 	inc	dptr
      004D15 12 76 03         [24] 6018 	lcall	__gptrget
      004D18 FC               [12] 6019 	mov	r4,a
      004D19 E5 08            [12] 6020 	mov	a,_bp
      004D1B 24 19            [12] 6021 	add	a,#0x19
      004D1D F8               [12] 6022 	mov	r0,a
      004D1E E6               [12] 6023 	mov	a,@r0
      004D1F C0 E0            [24] 6024 	push	acc
      004D21 08               [12] 6025 	inc	r0
      004D22 E6               [12] 6026 	mov	a,@r0
      004D23 C0 E0            [24] 6027 	push	acc
      004D25 08               [12] 6028 	inc	r0
      004D26 E6               [12] 6029 	mov	a,@r0
      004D27 C0 E0            [24] 6030 	push	acc
      004D29 08               [12] 6031 	inc	r0
      004D2A E6               [12] 6032 	mov	a,@r0
      004D2B C0 E0            [24] 6033 	push	acc
      004D2D 8A 82            [24] 6034 	mov	dpl,r2
      004D2F 8B 83            [24] 6035 	mov	dph,r3
      004D31 8C F0            [24] 6036 	mov	b,r4
      004D33 12 26 B5         [24] 6037 	lcall	_stack_push
      004D36 E5 81            [12] 6038 	mov	a,sp
      004D38 24 FC            [12] 6039 	add	a,#0xfc
      004D3A F5 81            [12] 6040 	mov	sp,a
                                   6041 ;	calc.c:236: (void)stack_push(ctx->ps, d0);			
      004D3C E5 08            [12] 6042 	mov	a,_bp
      004D3E 24 0E            [12] 6043 	add	a,#0x0e
      004D40 F8               [12] 6044 	mov	r0,a
      004D41 86 82            [24] 6045 	mov	dpl,@r0
      004D43 08               [12] 6046 	inc	r0
      004D44 86 83            [24] 6047 	mov	dph,@r0
      004D46 08               [12] 6048 	inc	r0
      004D47 86 F0            [24] 6049 	mov	b,@r0
      004D49 12 76 03         [24] 6050 	lcall	__gptrget
      004D4C FA               [12] 6051 	mov	r2,a
      004D4D A3               [24] 6052 	inc	dptr
      004D4E 12 76 03         [24] 6053 	lcall	__gptrget
      004D51 FB               [12] 6054 	mov	r3,a
      004D52 A3               [24] 6055 	inc	dptr
      004D53 12 76 03         [24] 6056 	lcall	__gptrget
      004D56 FC               [12] 6057 	mov	r4,a
      004D57 E5 08            [12] 6058 	mov	a,_bp
      004D59 24 15            [12] 6059 	add	a,#0x15
      004D5B F8               [12] 6060 	mov	r0,a
      004D5C E6               [12] 6061 	mov	a,@r0
      004D5D C0 E0            [24] 6062 	push	acc
      004D5F 08               [12] 6063 	inc	r0
      004D60 E6               [12] 6064 	mov	a,@r0
      004D61 C0 E0            [24] 6065 	push	acc
      004D63 08               [12] 6066 	inc	r0
      004D64 E6               [12] 6067 	mov	a,@r0
      004D65 C0 E0            [24] 6068 	push	acc
      004D67 08               [12] 6069 	inc	r0
      004D68 E6               [12] 6070 	mov	a,@r0
      004D69 C0 E0            [24] 6071 	push	acc
      004D6B 8A 82            [24] 6072 	mov	dpl,r2
      004D6D 8B 83            [24] 6073 	mov	dph,r3
      004D6F 8C F0            [24] 6074 	mov	b,r4
      004D71 12 26 B5         [24] 6075 	lcall	_stack_push
      004D74 E5 81            [12] 6076 	mov	a,sp
      004D76 24 FC            [12] 6077 	add	a,#0xfc
      004D78 F5 81            [12] 6078 	mov	sp,a
                                   6079 ;	calc.c:237: printstr("\r\ndivision by zero\r\n");
      004D7A 7F 34            [12] 6080 	mov	r7,#___str_14
      004D7C 7E 8F            [12] 6081 	mov	r6,#(___str_14 >> 8)
      004D7E 7D 80            [12] 6082 	mov	r5,#0x80
                                   6083 ;	calc.c:20: return;
      004D80                       6084 00459$:
                                   6085 ;	calc.c:18: for (; *s; s++) putchar(*s);
      004D80 8F 82            [24] 6086 	mov	dpl,r7
      004D82 8E 83            [24] 6087 	mov	dph,r6
      004D84 8D F0            [24] 6088 	mov	b,r5
      004D86 12 76 03         [24] 6089 	lcall	__gptrget
      004D89 FC               [12] 6090 	mov	r4,a
      004D8A 70 03            [24] 6091 	jnz	01361$
      004D8C 02 59 D5         [24] 6092 	ljmp	00249$
      004D8F                       6093 01361$:
      004D8F 7B 00            [12] 6094 	mov	r3,#0x00
      004D91 8C 82            [24] 6095 	mov	dpl,r4
      004D93 8B 83            [24] 6096 	mov	dph,r3
      004D95 C0 07            [24] 6097 	push	ar7
      004D97 C0 06            [24] 6098 	push	ar6
      004D99 C0 05            [24] 6099 	push	ar5
      004D9B 12 71 72         [24] 6100 	lcall	_putchar
      004D9E D0 05            [24] 6101 	pop	ar5
      004DA0 D0 06            [24] 6102 	pop	ar6
      004DA2 D0 07            [24] 6103 	pop	ar7
      004DA4 0F               [12] 6104 	inc	r7
                                   6105 ;	calc.c:237: printstr("\r\ndivision by zero\r\n");
      004DA5 BF 00 D8         [24] 6106 	cjne	r7,#0x00,00459$
      004DA8 0E               [12] 6107 	inc	r6
      004DA9 80 D5            [24] 6108 	sjmp	00459$
      004DAB                       6109 00194$:
                                   6110 ;	calc.c:239: if (ctx->digit[0] == '%') d1 %= d0;
      004DAB 8D 82            [24] 6111 	mov	dpl,r5
      004DAD 8E 83            [24] 6112 	mov	dph,r6
      004DAF 8F F0            [24] 6113 	mov	b,r7
      004DB1 12 76 03         [24] 6114 	lcall	__gptrget
      004DB4 FD               [12] 6115 	mov	r5,a
      004DB5 BD 25 45         [24] 6116 	cjne	r5,#0x25,00191$
      004DB8 E5 08            [12] 6117 	mov	a,_bp
      004DBA 24 15            [12] 6118 	add	a,#0x15
      004DBC F8               [12] 6119 	mov	r0,a
      004DBD E6               [12] 6120 	mov	a,@r0
      004DBE C0 E0            [24] 6121 	push	acc
      004DC0 08               [12] 6122 	inc	r0
      004DC1 E6               [12] 6123 	mov	a,@r0
      004DC2 C0 E0            [24] 6124 	push	acc
      004DC4 08               [12] 6125 	inc	r0
      004DC5 E6               [12] 6126 	mov	a,@r0
      004DC6 C0 E0            [24] 6127 	push	acc
      004DC8 08               [12] 6128 	inc	r0
      004DC9 E6               [12] 6129 	mov	a,@r0
      004DCA C0 E0            [24] 6130 	push	acc
      004DCC E5 08            [12] 6131 	mov	a,_bp
      004DCE 24 19            [12] 6132 	add	a,#0x19
      004DD0 F8               [12] 6133 	mov	r0,a
      004DD1 86 82            [24] 6134 	mov	dpl,@r0
      004DD3 08               [12] 6135 	inc	r0
      004DD4 86 83            [24] 6136 	mov	dph,@r0
      004DD6 08               [12] 6137 	inc	r0
      004DD7 86 F0            [24] 6138 	mov	b,@r0
      004DD9 08               [12] 6139 	inc	r0
      004DDA E6               [12] 6140 	mov	a,@r0
      004DDB 12 72 41         [24] 6141 	lcall	__modslong
      004DDE AC 82            [24] 6142 	mov	r4,dpl
      004DE0 AD 83            [24] 6143 	mov	r5,dph
      004DE2 AE F0            [24] 6144 	mov	r6,b
      004DE4 FF               [12] 6145 	mov	r7,a
      004DE5 E5 81            [12] 6146 	mov	a,sp
      004DE7 24 FC            [12] 6147 	add	a,#0xfc
      004DE9 F5 81            [12] 6148 	mov	sp,a
      004DEB E5 08            [12] 6149 	mov	a,_bp
      004DED 24 19            [12] 6150 	add	a,#0x19
      004DEF F8               [12] 6151 	mov	r0,a
      004DF0 A6 04            [24] 6152 	mov	@r0,ar4
      004DF2 08               [12] 6153 	inc	r0
      004DF3 A6 05            [24] 6154 	mov	@r0,ar5
      004DF5 08               [12] 6155 	inc	r0
      004DF6 A6 06            [24] 6156 	mov	@r0,ar6
      004DF8 08               [12] 6157 	inc	r0
      004DF9 A6 07            [24] 6158 	mov	@r0,ar7
      004DFB 80 5F            [24] 6159 	sjmp	00192$
      004DFD                       6160 00191$:
                                   6161 ;	calc.c:240: else d1 = (unsigned long)d1 % (unsigned long)d0;
      004DFD E5 08            [12] 6162 	mov	a,_bp
      004DFF 24 19            [12] 6163 	add	a,#0x19
      004E01 F8               [12] 6164 	mov	r0,a
      004E02 E5 08            [12] 6165 	mov	a,_bp
      004E04 24 07            [12] 6166 	add	a,#0x07
      004E06 F9               [12] 6167 	mov	r1,a
      004E07 E6               [12] 6168 	mov	a,@r0
      004E08 F7               [12] 6169 	mov	@r1,a
      004E09 08               [12] 6170 	inc	r0
      004E0A 09               [12] 6171 	inc	r1
      004E0B E6               [12] 6172 	mov	a,@r0
      004E0C F7               [12] 6173 	mov	@r1,a
      004E0D 08               [12] 6174 	inc	r0
      004E0E 09               [12] 6175 	inc	r1
      004E0F E6               [12] 6176 	mov	a,@r0
      004E10 F7               [12] 6177 	mov	@r1,a
      004E11 08               [12] 6178 	inc	r0
      004E12 09               [12] 6179 	inc	r1
      004E13 E6               [12] 6180 	mov	a,@r0
      004E14 F7               [12] 6181 	mov	@r1,a
      004E15 E5 08            [12] 6182 	mov	a,_bp
      004E17 24 15            [12] 6183 	add	a,#0x15
      004E19 F8               [12] 6184 	mov	r0,a
      004E1A 86 02            [24] 6185 	mov	ar2,@r0
      004E1C 08               [12] 6186 	inc	r0
      004E1D 86 03            [24] 6187 	mov	ar3,@r0
      004E1F 08               [12] 6188 	inc	r0
      004E20 86 06            [24] 6189 	mov	ar6,@r0
      004E22 08               [12] 6190 	inc	r0
      004E23 86 07            [24] 6191 	mov	ar7,@r0
      004E25 C0 02            [24] 6192 	push	ar2
      004E27 C0 03            [24] 6193 	push	ar3
      004E29 C0 06            [24] 6194 	push	ar6
      004E2B C0 07            [24] 6195 	push	ar7
      004E2D E5 08            [12] 6196 	mov	a,_bp
      004E2F 24 07            [12] 6197 	add	a,#0x07
      004E31 F8               [12] 6198 	mov	r0,a
      004E32 86 82            [24] 6199 	mov	dpl,@r0
      004E34 08               [12] 6200 	inc	r0
      004E35 86 83            [24] 6201 	mov	dph,@r0
      004E37 08               [12] 6202 	inc	r0
      004E38 86 F0            [24] 6203 	mov	b,@r0
      004E3A 08               [12] 6204 	inc	r0
      004E3B E6               [12] 6205 	mov	a,@r0
      004E3C 12 73 38         [24] 6206 	lcall	__modulong
      004E3F AC 82            [24] 6207 	mov	r4,dpl
      004E41 AD 83            [24] 6208 	mov	r5,dph
      004E43 AE F0            [24] 6209 	mov	r6,b
      004E45 FF               [12] 6210 	mov	r7,a
      004E46 E5 81            [12] 6211 	mov	a,sp
      004E48 24 FC            [12] 6212 	add	a,#0xfc
      004E4A F5 81            [12] 6213 	mov	sp,a
      004E4C E5 08            [12] 6214 	mov	a,_bp
      004E4E 24 19            [12] 6215 	add	a,#0x19
      004E50 F8               [12] 6216 	mov	r0,a
      004E51 A6 04            [24] 6217 	mov	@r0,ar4
      004E53 08               [12] 6218 	inc	r0
      004E54 A6 05            [24] 6219 	mov	@r0,ar5
      004E56 08               [12] 6220 	inc	r0
      004E57 A6 06            [24] 6221 	mov	@r0,ar6
      004E59 08               [12] 6222 	inc	r0
      004E5A A6 07            [24] 6223 	mov	@r0,ar7
      004E5C                       6224 00192$:
                                   6225 ;	calc.c:241: (void)stack_push(ctx->ps, d1);
      004E5C E5 08            [12] 6226 	mov	a,_bp
      004E5E 24 0E            [12] 6227 	add	a,#0x0e
      004E60 F8               [12] 6228 	mov	r0,a
      004E61 86 82            [24] 6229 	mov	dpl,@r0
      004E63 08               [12] 6230 	inc	r0
      004E64 86 83            [24] 6231 	mov	dph,@r0
      004E66 08               [12] 6232 	inc	r0
      004E67 86 F0            [24] 6233 	mov	b,@r0
      004E69 12 76 03         [24] 6234 	lcall	__gptrget
      004E6C FD               [12] 6235 	mov	r5,a
      004E6D A3               [24] 6236 	inc	dptr
      004E6E 12 76 03         [24] 6237 	lcall	__gptrget
      004E71 FE               [12] 6238 	mov	r6,a
      004E72 A3               [24] 6239 	inc	dptr
      004E73 12 76 03         [24] 6240 	lcall	__gptrget
      004E76 FF               [12] 6241 	mov	r7,a
      004E77 E5 08            [12] 6242 	mov	a,_bp
      004E79 24 19            [12] 6243 	add	a,#0x19
      004E7B F8               [12] 6244 	mov	r0,a
      004E7C E6               [12] 6245 	mov	a,@r0
      004E7D C0 E0            [24] 6246 	push	acc
      004E7F 08               [12] 6247 	inc	r0
      004E80 E6               [12] 6248 	mov	a,@r0
      004E81 C0 E0            [24] 6249 	push	acc
      004E83 08               [12] 6250 	inc	r0
      004E84 E6               [12] 6251 	mov	a,@r0
      004E85 C0 E0            [24] 6252 	push	acc
      004E87 08               [12] 6253 	inc	r0
      004E88 E6               [12] 6254 	mov	a,@r0
      004E89 C0 E0            [24] 6255 	push	acc
      004E8B 8D 82            [24] 6256 	mov	dpl,r5
      004E8D 8E 83            [24] 6257 	mov	dph,r6
      004E8F 8F F0            [24] 6258 	mov	b,r7
      004E91 12 26 B5         [24] 6259 	lcall	_stack_push
      004E94 E5 81            [12] 6260 	mov	a,sp
      004E96 24 FC            [12] 6261 	add	a,#0xfc
      004E98 F5 81            [12] 6262 	mov	sp,a
                                   6263 ;	calc.c:243: break;
      004E9A 02 59 D5         [24] 6264 	ljmp	00249$
                                   6265 ;	calc.c:244: case '&':
      004E9D                       6266 00202$:
                                   6267 ;	calc.c:245: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004E9D E5 08            [12] 6268 	mov	a,_bp
      004E9F 24 15            [12] 6269 	add	a,#0x15
      004EA1 FF               [12] 6270 	mov	r7,a
      004EA2 E5 08            [12] 6271 	mov	a,_bp
      004EA4 24 0E            [12] 6272 	add	a,#0x0e
      004EA6 F8               [12] 6273 	mov	r0,a
      004EA7 A6 07            [24] 6274 	mov	@r0,ar7
      004EA9 08               [12] 6275 	inc	r0
      004EAA 76 00            [12] 6276 	mov	@r0,#0x00
      004EAC 08               [12] 6277 	inc	r0
      004EAD 76 40            [12] 6278 	mov	@r0,#0x40
      004EAF E5 08            [12] 6279 	mov	a,_bp
      004EB1 24 12            [12] 6280 	add	a,#0x12
      004EB3 F8               [12] 6281 	mov	r0,a
      004EB4 74 11            [12] 6282 	mov	a,#0x11
      004EB6 26               [12] 6283 	add	a,@r0
      004EB7 FA               [12] 6284 	mov	r2,a
      004EB8 74 40            [12] 6285 	mov	a,#0x40
      004EBA 08               [12] 6286 	inc	r0
      004EBB 36               [12] 6287 	addc	a,@r0
      004EBC FB               [12] 6288 	mov	r3,a
      004EBD 08               [12] 6289 	inc	r0
      004EBE 86 04            [24] 6290 	mov	ar4,@r0
      004EC0 8A 82            [24] 6291 	mov	dpl,r2
      004EC2 8B 83            [24] 6292 	mov	dph,r3
      004EC4 8C F0            [24] 6293 	mov	b,r4
      004EC6 12 76 03         [24] 6294 	lcall	__gptrget
      004EC9 FD               [12] 6295 	mov	r5,a
      004ECA A3               [24] 6296 	inc	dptr
      004ECB 12 76 03         [24] 6297 	lcall	__gptrget
      004ECE FE               [12] 6298 	mov	r6,a
      004ECF A3               [24] 6299 	inc	dptr
      004ED0 12 76 03         [24] 6300 	lcall	__gptrget
      004ED3 FF               [12] 6301 	mov	r7,a
      004ED4 C0 04            [24] 6302 	push	ar4
      004ED6 C0 03            [24] 6303 	push	ar3
      004ED8 C0 02            [24] 6304 	push	ar2
      004EDA E5 08            [12] 6305 	mov	a,_bp
      004EDC 24 0E            [12] 6306 	add	a,#0x0e
      004EDE F8               [12] 6307 	mov	r0,a
      004EDF E6               [12] 6308 	mov	a,@r0
      004EE0 C0 E0            [24] 6309 	push	acc
      004EE2 08               [12] 6310 	inc	r0
      004EE3 E6               [12] 6311 	mov	a,@r0
      004EE4 C0 E0            [24] 6312 	push	acc
      004EE6 08               [12] 6313 	inc	r0
      004EE7 E6               [12] 6314 	mov	a,@r0
      004EE8 C0 E0            [24] 6315 	push	acc
      004EEA 8D 82            [24] 6316 	mov	dpl,r5
      004EEC 8E 83            [24] 6317 	mov	dph,r6
      004EEE 8F F0            [24] 6318 	mov	b,r7
      004EF0 12 27 83         [24] 6319 	lcall	_stack_pop
      004EF3 AE 82            [24] 6320 	mov	r6,dpl
      004EF5 AF 83            [24] 6321 	mov	r7,dph
      004EF7 15 81            [12] 6322 	dec	sp
      004EF9 15 81            [12] 6323 	dec	sp
      004EFB 15 81            [12] 6324 	dec	sp
      004EFD D0 02            [24] 6325 	pop	ar2
      004EFF D0 03            [24] 6326 	pop	ar3
      004F01 D0 04            [24] 6327 	pop	ar4
      004F03 EE               [12] 6328 	mov	a,r6
      004F04 4F               [12] 6329 	orl	a,r7
      004F05 70 31            [24] 6330 	jnz	00207$
      004F07 7D D2            [12] 6331 	mov	r5,#___str_10
      004F09 7C 8E            [12] 6332 	mov	r4,#(___str_10 >> 8)
      004F0B 7B 80            [12] 6333 	mov	r3,#0x80
                                   6334 ;	calc.c:20: return;
      004F0D                       6335 00462$:
                                   6336 ;	calc.c:18: for (; *s; s++) putchar(*s);
      004F0D 8D 82            [24] 6337 	mov	dpl,r5
      004F0F 8C 83            [24] 6338 	mov	dph,r4
      004F11 8B F0            [24] 6339 	mov	b,r3
      004F13 12 76 03         [24] 6340 	lcall	__gptrget
      004F16 FF               [12] 6341 	mov	r7,a
      004F17 70 03            [24] 6342 	jnz	01366$
      004F19 02 59 D5         [24] 6343 	ljmp	00249$
      004F1C                       6344 01366$:
      004F1C 7E 00            [12] 6345 	mov	r6,#0x00
      004F1E 8F 82            [24] 6346 	mov	dpl,r7
      004F20 8E 83            [24] 6347 	mov	dph,r6
      004F22 C0 05            [24] 6348 	push	ar5
      004F24 C0 04            [24] 6349 	push	ar4
      004F26 C0 03            [24] 6350 	push	ar3
      004F28 12 71 72         [24] 6351 	lcall	_putchar
      004F2B D0 03            [24] 6352 	pop	ar3
      004F2D D0 04            [24] 6353 	pop	ar4
      004F2F D0 05            [24] 6354 	pop	ar5
      004F31 0D               [12] 6355 	inc	r5
                                   6356 ;	calc.c:245: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004F32 BD 00 D8         [24] 6357 	cjne	r5,#0x00,00462$
      004F35 0C               [12] 6358 	inc	r4
      004F36 80 D5            [24] 6359 	sjmp	00462$
      004F38                       6360 00207$:
                                   6361 ;	calc.c:246: else if (!stack_pop(ctx->ps, &d1)) {
      004F38 E5 08            [12] 6362 	mov	a,_bp
      004F3A 24 19            [12] 6363 	add	a,#0x19
      004F3C FF               [12] 6364 	mov	r7,a
      004F3D E5 08            [12] 6365 	mov	a,_bp
      004F3F 24 0E            [12] 6366 	add	a,#0x0e
      004F41 F8               [12] 6367 	mov	r0,a
      004F42 A6 07            [24] 6368 	mov	@r0,ar7
      004F44 08               [12] 6369 	inc	r0
      004F45 76 00            [12] 6370 	mov	@r0,#0x00
      004F47 08               [12] 6371 	inc	r0
      004F48 76 40            [12] 6372 	mov	@r0,#0x40
      004F4A 8A 82            [24] 6373 	mov	dpl,r2
      004F4C 8B 83            [24] 6374 	mov	dph,r3
      004F4E 8C F0            [24] 6375 	mov	b,r4
      004F50 12 76 03         [24] 6376 	lcall	__gptrget
      004F53 FD               [12] 6377 	mov	r5,a
      004F54 A3               [24] 6378 	inc	dptr
      004F55 12 76 03         [24] 6379 	lcall	__gptrget
      004F58 FE               [12] 6380 	mov	r6,a
      004F59 A3               [24] 6381 	inc	dptr
      004F5A 12 76 03         [24] 6382 	lcall	__gptrget
      004F5D FF               [12] 6383 	mov	r7,a
      004F5E C0 04            [24] 6384 	push	ar4
      004F60 C0 03            [24] 6385 	push	ar3
      004F62 C0 02            [24] 6386 	push	ar2
      004F64 E5 08            [12] 6387 	mov	a,_bp
      004F66 24 0E            [12] 6388 	add	a,#0x0e
      004F68 F8               [12] 6389 	mov	r0,a
      004F69 E6               [12] 6390 	mov	a,@r0
      004F6A C0 E0            [24] 6391 	push	acc
      004F6C 08               [12] 6392 	inc	r0
      004F6D E6               [12] 6393 	mov	a,@r0
      004F6E C0 E0            [24] 6394 	push	acc
      004F70 08               [12] 6395 	inc	r0
      004F71 E6               [12] 6396 	mov	a,@r0
      004F72 C0 E0            [24] 6397 	push	acc
      004F74 8D 82            [24] 6398 	mov	dpl,r5
      004F76 8E 83            [24] 6399 	mov	dph,r6
      004F78 8F F0            [24] 6400 	mov	b,r7
      004F7A 12 27 83         [24] 6401 	lcall	_stack_pop
      004F7D AE 82            [24] 6402 	mov	r6,dpl
      004F7F AF 83            [24] 6403 	mov	r7,dph
      004F81 15 81            [12] 6404 	dec	sp
      004F83 15 81            [12] 6405 	dec	sp
      004F85 15 81            [12] 6406 	dec	sp
      004F87 D0 02            [24] 6407 	pop	ar2
      004F89 D0 03            [24] 6408 	pop	ar3
      004F8B D0 04            [24] 6409 	pop	ar4
      004F8D EE               [12] 6410 	mov	a,r6
      004F8E 4F               [12] 6411 	orl	a,r7
      004F8F 70 68            [24] 6412 	jnz	00204$
                                   6413 ;	calc.c:247: (void)stack_push(ctx->ps, d0);
      004F91 8A 82            [24] 6414 	mov	dpl,r2
      004F93 8B 83            [24] 6415 	mov	dph,r3
      004F95 8C F0            [24] 6416 	mov	b,r4
      004F97 12 76 03         [24] 6417 	lcall	__gptrget
      004F9A FD               [12] 6418 	mov	r5,a
      004F9B A3               [24] 6419 	inc	dptr
      004F9C 12 76 03         [24] 6420 	lcall	__gptrget
      004F9F FE               [12] 6421 	mov	r6,a
      004FA0 A3               [24] 6422 	inc	dptr
      004FA1 12 76 03         [24] 6423 	lcall	__gptrget
      004FA4 FF               [12] 6424 	mov	r7,a
      004FA5 E5 08            [12] 6425 	mov	a,_bp
      004FA7 24 15            [12] 6426 	add	a,#0x15
      004FA9 F8               [12] 6427 	mov	r0,a
      004FAA E6               [12] 6428 	mov	a,@r0
      004FAB C0 E0            [24] 6429 	push	acc
      004FAD 08               [12] 6430 	inc	r0
      004FAE E6               [12] 6431 	mov	a,@r0
      004FAF C0 E0            [24] 6432 	push	acc
      004FB1 08               [12] 6433 	inc	r0
      004FB2 E6               [12] 6434 	mov	a,@r0
      004FB3 C0 E0            [24] 6435 	push	acc
      004FB5 08               [12] 6436 	inc	r0
      004FB6 E6               [12] 6437 	mov	a,@r0
      004FB7 C0 E0            [24] 6438 	push	acc
      004FB9 8D 82            [24] 6439 	mov	dpl,r5
      004FBB 8E 83            [24] 6440 	mov	dph,r6
      004FBD 8F F0            [24] 6441 	mov	b,r7
      004FBF 12 26 B5         [24] 6442 	lcall	_stack_push
      004FC2 E5 81            [12] 6443 	mov	a,sp
      004FC4 24 FC            [12] 6444 	add	a,#0xfc
      004FC6 F5 81            [12] 6445 	mov	sp,a
                                   6446 ;	calc.c:248: printstr("\r\nstack underflow\r\n");
      004FC8 7D D2            [12] 6447 	mov	r5,#___str_10
      004FCA 7C 8E            [12] 6448 	mov	r4,#(___str_10 >> 8)
      004FCC 7B 80            [12] 6449 	mov	r3,#0x80
                                   6450 ;	calc.c:20: return;
      004FCE                       6451 00465$:
                                   6452 ;	calc.c:18: for (; *s; s++) putchar(*s);
      004FCE 8D 82            [24] 6453 	mov	dpl,r5
      004FD0 8C 83            [24] 6454 	mov	dph,r4
      004FD2 8B F0            [24] 6455 	mov	b,r3
      004FD4 12 76 03         [24] 6456 	lcall	__gptrget
      004FD7 FF               [12] 6457 	mov	r7,a
      004FD8 70 03            [24] 6458 	jnz	01369$
      004FDA 02 59 D5         [24] 6459 	ljmp	00249$
      004FDD                       6460 01369$:
      004FDD 7E 00            [12] 6461 	mov	r6,#0x00
      004FDF 8F 82            [24] 6462 	mov	dpl,r7
      004FE1 8E 83            [24] 6463 	mov	dph,r6
      004FE3 C0 05            [24] 6464 	push	ar5
      004FE5 C0 04            [24] 6465 	push	ar4
      004FE7 C0 03            [24] 6466 	push	ar3
      004FE9 12 71 72         [24] 6467 	lcall	_putchar
      004FEC D0 03            [24] 6468 	pop	ar3
      004FEE D0 04            [24] 6469 	pop	ar4
      004FF0 D0 05            [24] 6470 	pop	ar5
      004FF2 0D               [12] 6471 	inc	r5
                                   6472 ;	calc.c:248: printstr("\r\nstack underflow\r\n");
      004FF3 BD 00 D8         [24] 6473 	cjne	r5,#0x00,00465$
      004FF6 0C               [12] 6474 	inc	r4
      004FF7 80 D5            [24] 6475 	sjmp	00465$
      004FF9                       6476 00204$:
                                   6477 ;	calc.c:250: d1 &= d0;
      004FF9 E5 08            [12] 6478 	mov	a,_bp
      004FFB 24 19            [12] 6479 	add	a,#0x19
      004FFD F8               [12] 6480 	mov	r0,a
      004FFE E5 08            [12] 6481 	mov	a,_bp
      005000 24 15            [12] 6482 	add	a,#0x15
      005002 F9               [12] 6483 	mov	r1,a
      005003 E7               [12] 6484 	mov	a,@r1
      005004 56               [12] 6485 	anl	a,@r0
      005005 F6               [12] 6486 	mov	@r0,a
      005006 09               [12] 6487 	inc	r1
      005007 E7               [12] 6488 	mov	a,@r1
      005008 08               [12] 6489 	inc	r0
      005009 56               [12] 6490 	anl	a,@r0
      00500A F6               [12] 6491 	mov	@r0,a
      00500B 09               [12] 6492 	inc	r1
      00500C E7               [12] 6493 	mov	a,@r1
      00500D 08               [12] 6494 	inc	r0
      00500E 56               [12] 6495 	anl	a,@r0
      00500F F6               [12] 6496 	mov	@r0,a
      005010 09               [12] 6497 	inc	r1
      005011 E7               [12] 6498 	mov	a,@r1
      005012 08               [12] 6499 	inc	r0
      005013 56               [12] 6500 	anl	a,@r0
      005014 F6               [12] 6501 	mov	@r0,a
                                   6502 ;	calc.c:251: (void)stack_push(ctx->ps, d1);
      005015 8A 82            [24] 6503 	mov	dpl,r2
      005017 8B 83            [24] 6504 	mov	dph,r3
      005019 8C F0            [24] 6505 	mov	b,r4
      00501B 12 76 03         [24] 6506 	lcall	__gptrget
      00501E FA               [12] 6507 	mov	r2,a
      00501F A3               [24] 6508 	inc	dptr
      005020 12 76 03         [24] 6509 	lcall	__gptrget
      005023 FB               [12] 6510 	mov	r3,a
      005024 A3               [24] 6511 	inc	dptr
      005025 12 76 03         [24] 6512 	lcall	__gptrget
      005028 FC               [12] 6513 	mov	r4,a
      005029 E5 08            [12] 6514 	mov	a,_bp
      00502B 24 19            [12] 6515 	add	a,#0x19
      00502D F8               [12] 6516 	mov	r0,a
      00502E E6               [12] 6517 	mov	a,@r0
      00502F C0 E0            [24] 6518 	push	acc
      005031 08               [12] 6519 	inc	r0
      005032 E6               [12] 6520 	mov	a,@r0
      005033 C0 E0            [24] 6521 	push	acc
      005035 08               [12] 6522 	inc	r0
      005036 E6               [12] 6523 	mov	a,@r0
      005037 C0 E0            [24] 6524 	push	acc
      005039 08               [12] 6525 	inc	r0
      00503A E6               [12] 6526 	mov	a,@r0
      00503B C0 E0            [24] 6527 	push	acc
      00503D 8A 82            [24] 6528 	mov	dpl,r2
      00503F 8B 83            [24] 6529 	mov	dph,r3
      005041 8C F0            [24] 6530 	mov	b,r4
      005043 12 26 B5         [24] 6531 	lcall	_stack_push
      005046 E5 81            [12] 6532 	mov	a,sp
      005048 24 FC            [12] 6533 	add	a,#0xfc
      00504A F5 81            [12] 6534 	mov	sp,a
                                   6535 ;	calc.c:253: break;
      00504C 02 59 D5         [24] 6536 	ljmp	00249$
                                   6537 ;	calc.c:254: case '|':
      00504F                       6538 00209$:
                                   6539 ;	calc.c:255: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00504F E5 08            [12] 6540 	mov	a,_bp
      005051 24 15            [12] 6541 	add	a,#0x15
      005053 FF               [12] 6542 	mov	r7,a
      005054 E5 08            [12] 6543 	mov	a,_bp
      005056 24 0E            [12] 6544 	add	a,#0x0e
      005058 F8               [12] 6545 	mov	r0,a
      005059 A6 07            [24] 6546 	mov	@r0,ar7
      00505B 08               [12] 6547 	inc	r0
      00505C 76 00            [12] 6548 	mov	@r0,#0x00
      00505E 08               [12] 6549 	inc	r0
      00505F 76 40            [12] 6550 	mov	@r0,#0x40
      005061 E5 08            [12] 6551 	mov	a,_bp
      005063 24 12            [12] 6552 	add	a,#0x12
      005065 F8               [12] 6553 	mov	r0,a
      005066 74 11            [12] 6554 	mov	a,#0x11
      005068 26               [12] 6555 	add	a,@r0
      005069 FA               [12] 6556 	mov	r2,a
      00506A 74 40            [12] 6557 	mov	a,#0x40
      00506C 08               [12] 6558 	inc	r0
      00506D 36               [12] 6559 	addc	a,@r0
      00506E FB               [12] 6560 	mov	r3,a
      00506F 08               [12] 6561 	inc	r0
      005070 86 04            [24] 6562 	mov	ar4,@r0
      005072 8A 82            [24] 6563 	mov	dpl,r2
      005074 8B 83            [24] 6564 	mov	dph,r3
      005076 8C F0            [24] 6565 	mov	b,r4
      005078 12 76 03         [24] 6566 	lcall	__gptrget
      00507B FD               [12] 6567 	mov	r5,a
      00507C A3               [24] 6568 	inc	dptr
      00507D 12 76 03         [24] 6569 	lcall	__gptrget
      005080 FE               [12] 6570 	mov	r6,a
      005081 A3               [24] 6571 	inc	dptr
      005082 12 76 03         [24] 6572 	lcall	__gptrget
      005085 FF               [12] 6573 	mov	r7,a
      005086 C0 04            [24] 6574 	push	ar4
      005088 C0 03            [24] 6575 	push	ar3
      00508A C0 02            [24] 6576 	push	ar2
      00508C E5 08            [12] 6577 	mov	a,_bp
      00508E 24 0E            [12] 6578 	add	a,#0x0e
      005090 F8               [12] 6579 	mov	r0,a
      005091 E6               [12] 6580 	mov	a,@r0
      005092 C0 E0            [24] 6581 	push	acc
      005094 08               [12] 6582 	inc	r0
      005095 E6               [12] 6583 	mov	a,@r0
      005096 C0 E0            [24] 6584 	push	acc
      005098 08               [12] 6585 	inc	r0
      005099 E6               [12] 6586 	mov	a,@r0
      00509A C0 E0            [24] 6587 	push	acc
      00509C 8D 82            [24] 6588 	mov	dpl,r5
      00509E 8E 83            [24] 6589 	mov	dph,r6
      0050A0 8F F0            [24] 6590 	mov	b,r7
      0050A2 12 27 83         [24] 6591 	lcall	_stack_pop
      0050A5 AE 82            [24] 6592 	mov	r6,dpl
      0050A7 AF 83            [24] 6593 	mov	r7,dph
      0050A9 15 81            [12] 6594 	dec	sp
      0050AB 15 81            [12] 6595 	dec	sp
      0050AD 15 81            [12] 6596 	dec	sp
      0050AF D0 02            [24] 6597 	pop	ar2
      0050B1 D0 03            [24] 6598 	pop	ar3
      0050B3 D0 04            [24] 6599 	pop	ar4
      0050B5 EE               [12] 6600 	mov	a,r6
      0050B6 4F               [12] 6601 	orl	a,r7
      0050B7 70 31            [24] 6602 	jnz	00214$
      0050B9 7D D2            [12] 6603 	mov	r5,#___str_10
      0050BB 7C 8E            [12] 6604 	mov	r4,#(___str_10 >> 8)
      0050BD 7B 80            [12] 6605 	mov	r3,#0x80
                                   6606 ;	calc.c:20: return;
      0050BF                       6607 00468$:
                                   6608 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0050BF 8D 82            [24] 6609 	mov	dpl,r5
      0050C1 8C 83            [24] 6610 	mov	dph,r4
      0050C3 8B F0            [24] 6611 	mov	b,r3
      0050C5 12 76 03         [24] 6612 	lcall	__gptrget
      0050C8 FF               [12] 6613 	mov	r7,a
      0050C9 70 03            [24] 6614 	jnz	01372$
      0050CB 02 59 D5         [24] 6615 	ljmp	00249$
      0050CE                       6616 01372$:
      0050CE 7E 00            [12] 6617 	mov	r6,#0x00
      0050D0 8F 82            [24] 6618 	mov	dpl,r7
      0050D2 8E 83            [24] 6619 	mov	dph,r6
      0050D4 C0 05            [24] 6620 	push	ar5
      0050D6 C0 04            [24] 6621 	push	ar4
      0050D8 C0 03            [24] 6622 	push	ar3
      0050DA 12 71 72         [24] 6623 	lcall	_putchar
      0050DD D0 03            [24] 6624 	pop	ar3
      0050DF D0 04            [24] 6625 	pop	ar4
      0050E1 D0 05            [24] 6626 	pop	ar5
      0050E3 0D               [12] 6627 	inc	r5
                                   6628 ;	calc.c:255: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0050E4 BD 00 D8         [24] 6629 	cjne	r5,#0x00,00468$
      0050E7 0C               [12] 6630 	inc	r4
      0050E8 80 D5            [24] 6631 	sjmp	00468$
      0050EA                       6632 00214$:
                                   6633 ;	calc.c:256: else if (!stack_pop(ctx->ps, &d1)) {
      0050EA E5 08            [12] 6634 	mov	a,_bp
      0050EC 24 19            [12] 6635 	add	a,#0x19
      0050EE FF               [12] 6636 	mov	r7,a
      0050EF E5 08            [12] 6637 	mov	a,_bp
      0050F1 24 0E            [12] 6638 	add	a,#0x0e
      0050F3 F8               [12] 6639 	mov	r0,a
      0050F4 A6 07            [24] 6640 	mov	@r0,ar7
      0050F6 08               [12] 6641 	inc	r0
      0050F7 76 00            [12] 6642 	mov	@r0,#0x00
      0050F9 08               [12] 6643 	inc	r0
      0050FA 76 40            [12] 6644 	mov	@r0,#0x40
      0050FC 8A 82            [24] 6645 	mov	dpl,r2
      0050FE 8B 83            [24] 6646 	mov	dph,r3
      005100 8C F0            [24] 6647 	mov	b,r4
      005102 12 76 03         [24] 6648 	lcall	__gptrget
      005105 FD               [12] 6649 	mov	r5,a
      005106 A3               [24] 6650 	inc	dptr
      005107 12 76 03         [24] 6651 	lcall	__gptrget
      00510A FE               [12] 6652 	mov	r6,a
      00510B A3               [24] 6653 	inc	dptr
      00510C 12 76 03         [24] 6654 	lcall	__gptrget
      00510F FF               [12] 6655 	mov	r7,a
      005110 C0 04            [24] 6656 	push	ar4
      005112 C0 03            [24] 6657 	push	ar3
      005114 C0 02            [24] 6658 	push	ar2
      005116 E5 08            [12] 6659 	mov	a,_bp
      005118 24 0E            [12] 6660 	add	a,#0x0e
      00511A F8               [12] 6661 	mov	r0,a
      00511B E6               [12] 6662 	mov	a,@r0
      00511C C0 E0            [24] 6663 	push	acc
      00511E 08               [12] 6664 	inc	r0
      00511F E6               [12] 6665 	mov	a,@r0
      005120 C0 E0            [24] 6666 	push	acc
      005122 08               [12] 6667 	inc	r0
      005123 E6               [12] 6668 	mov	a,@r0
      005124 C0 E0            [24] 6669 	push	acc
      005126 8D 82            [24] 6670 	mov	dpl,r5
      005128 8E 83            [24] 6671 	mov	dph,r6
      00512A 8F F0            [24] 6672 	mov	b,r7
      00512C 12 27 83         [24] 6673 	lcall	_stack_pop
      00512F AE 82            [24] 6674 	mov	r6,dpl
      005131 AF 83            [24] 6675 	mov	r7,dph
      005133 15 81            [12] 6676 	dec	sp
      005135 15 81            [12] 6677 	dec	sp
      005137 15 81            [12] 6678 	dec	sp
      005139 D0 02            [24] 6679 	pop	ar2
      00513B D0 03            [24] 6680 	pop	ar3
      00513D D0 04            [24] 6681 	pop	ar4
      00513F EE               [12] 6682 	mov	a,r6
      005140 4F               [12] 6683 	orl	a,r7
      005141 70 68            [24] 6684 	jnz	00211$
                                   6685 ;	calc.c:257: (void)stack_push(ctx->ps, d0);
      005143 8A 82            [24] 6686 	mov	dpl,r2
      005145 8B 83            [24] 6687 	mov	dph,r3
      005147 8C F0            [24] 6688 	mov	b,r4
      005149 12 76 03         [24] 6689 	lcall	__gptrget
      00514C FD               [12] 6690 	mov	r5,a
      00514D A3               [24] 6691 	inc	dptr
      00514E 12 76 03         [24] 6692 	lcall	__gptrget
      005151 FE               [12] 6693 	mov	r6,a
      005152 A3               [24] 6694 	inc	dptr
      005153 12 76 03         [24] 6695 	lcall	__gptrget
      005156 FF               [12] 6696 	mov	r7,a
      005157 E5 08            [12] 6697 	mov	a,_bp
      005159 24 15            [12] 6698 	add	a,#0x15
      00515B F8               [12] 6699 	mov	r0,a
      00515C E6               [12] 6700 	mov	a,@r0
      00515D C0 E0            [24] 6701 	push	acc
      00515F 08               [12] 6702 	inc	r0
      005160 E6               [12] 6703 	mov	a,@r0
      005161 C0 E0            [24] 6704 	push	acc
      005163 08               [12] 6705 	inc	r0
      005164 E6               [12] 6706 	mov	a,@r0
      005165 C0 E0            [24] 6707 	push	acc
      005167 08               [12] 6708 	inc	r0
      005168 E6               [12] 6709 	mov	a,@r0
      005169 C0 E0            [24] 6710 	push	acc
      00516B 8D 82            [24] 6711 	mov	dpl,r5
      00516D 8E 83            [24] 6712 	mov	dph,r6
      00516F 8F F0            [24] 6713 	mov	b,r7
      005171 12 26 B5         [24] 6714 	lcall	_stack_push
      005174 E5 81            [12] 6715 	mov	a,sp
      005176 24 FC            [12] 6716 	add	a,#0xfc
      005178 F5 81            [12] 6717 	mov	sp,a
                                   6718 ;	calc.c:258: printstr("\r\nstack underflow\r\n");
      00517A 7D D2            [12] 6719 	mov	r5,#___str_10
      00517C 7C 8E            [12] 6720 	mov	r4,#(___str_10 >> 8)
      00517E 7B 80            [12] 6721 	mov	r3,#0x80
                                   6722 ;	calc.c:20: return;
      005180                       6723 00471$:
                                   6724 ;	calc.c:18: for (; *s; s++) putchar(*s);
      005180 8D 82            [24] 6725 	mov	dpl,r5
      005182 8C 83            [24] 6726 	mov	dph,r4
      005184 8B F0            [24] 6727 	mov	b,r3
      005186 12 76 03         [24] 6728 	lcall	__gptrget
      005189 FF               [12] 6729 	mov	r7,a
      00518A 70 03            [24] 6730 	jnz	01375$
      00518C 02 59 D5         [24] 6731 	ljmp	00249$
      00518F                       6732 01375$:
      00518F 7E 00            [12] 6733 	mov	r6,#0x00
      005191 8F 82            [24] 6734 	mov	dpl,r7
      005193 8E 83            [24] 6735 	mov	dph,r6
      005195 C0 05            [24] 6736 	push	ar5
      005197 C0 04            [24] 6737 	push	ar4
      005199 C0 03            [24] 6738 	push	ar3
      00519B 12 71 72         [24] 6739 	lcall	_putchar
      00519E D0 03            [24] 6740 	pop	ar3
      0051A0 D0 04            [24] 6741 	pop	ar4
      0051A2 D0 05            [24] 6742 	pop	ar5
      0051A4 0D               [12] 6743 	inc	r5
                                   6744 ;	calc.c:258: printstr("\r\nstack underflow\r\n");
      0051A5 BD 00 D8         [24] 6745 	cjne	r5,#0x00,00471$
      0051A8 0C               [12] 6746 	inc	r4
      0051A9 80 D5            [24] 6747 	sjmp	00471$
      0051AB                       6748 00211$:
                                   6749 ;	calc.c:260: d1 |= d0;
      0051AB E5 08            [12] 6750 	mov	a,_bp
      0051AD 24 19            [12] 6751 	add	a,#0x19
      0051AF F8               [12] 6752 	mov	r0,a
      0051B0 E5 08            [12] 6753 	mov	a,_bp
      0051B2 24 15            [12] 6754 	add	a,#0x15
      0051B4 F9               [12] 6755 	mov	r1,a
      0051B5 E7               [12] 6756 	mov	a,@r1
      0051B6 46               [12] 6757 	orl	a,@r0
      0051B7 F6               [12] 6758 	mov	@r0,a
      0051B8 09               [12] 6759 	inc	r1
      0051B9 E7               [12] 6760 	mov	a,@r1
      0051BA 08               [12] 6761 	inc	r0
      0051BB 46               [12] 6762 	orl	a,@r0
      0051BC F6               [12] 6763 	mov	@r0,a
      0051BD 09               [12] 6764 	inc	r1
      0051BE E7               [12] 6765 	mov	a,@r1
      0051BF 08               [12] 6766 	inc	r0
      0051C0 46               [12] 6767 	orl	a,@r0
      0051C1 F6               [12] 6768 	mov	@r0,a
      0051C2 09               [12] 6769 	inc	r1
      0051C3 E7               [12] 6770 	mov	a,@r1
      0051C4 08               [12] 6771 	inc	r0
      0051C5 46               [12] 6772 	orl	a,@r0
      0051C6 F6               [12] 6773 	mov	@r0,a
                                   6774 ;	calc.c:261: (void)stack_push(ctx->ps, d1);
      0051C7 8A 82            [24] 6775 	mov	dpl,r2
      0051C9 8B 83            [24] 6776 	mov	dph,r3
      0051CB 8C F0            [24] 6777 	mov	b,r4
      0051CD 12 76 03         [24] 6778 	lcall	__gptrget
      0051D0 FA               [12] 6779 	mov	r2,a
      0051D1 A3               [24] 6780 	inc	dptr
      0051D2 12 76 03         [24] 6781 	lcall	__gptrget
      0051D5 FB               [12] 6782 	mov	r3,a
      0051D6 A3               [24] 6783 	inc	dptr
      0051D7 12 76 03         [24] 6784 	lcall	__gptrget
      0051DA FC               [12] 6785 	mov	r4,a
      0051DB E5 08            [12] 6786 	mov	a,_bp
      0051DD 24 19            [12] 6787 	add	a,#0x19
      0051DF F8               [12] 6788 	mov	r0,a
      0051E0 E6               [12] 6789 	mov	a,@r0
      0051E1 C0 E0            [24] 6790 	push	acc
      0051E3 08               [12] 6791 	inc	r0
      0051E4 E6               [12] 6792 	mov	a,@r0
      0051E5 C0 E0            [24] 6793 	push	acc
      0051E7 08               [12] 6794 	inc	r0
      0051E8 E6               [12] 6795 	mov	a,@r0
      0051E9 C0 E0            [24] 6796 	push	acc
      0051EB 08               [12] 6797 	inc	r0
      0051EC E6               [12] 6798 	mov	a,@r0
      0051ED C0 E0            [24] 6799 	push	acc
      0051EF 8A 82            [24] 6800 	mov	dpl,r2
      0051F1 8B 83            [24] 6801 	mov	dph,r3
      0051F3 8C F0            [24] 6802 	mov	b,r4
      0051F5 12 26 B5         [24] 6803 	lcall	_stack_push
      0051F8 E5 81            [12] 6804 	mov	a,sp
      0051FA 24 FC            [12] 6805 	add	a,#0xfc
      0051FC F5 81            [12] 6806 	mov	sp,a
                                   6807 ;	calc.c:263: break;
      0051FE 02 59 D5         [24] 6808 	ljmp	00249$
                                   6809 ;	calc.c:264: case '^':
      005201                       6810 00216$:
                                   6811 ;	calc.c:265: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005201 E5 08            [12] 6812 	mov	a,_bp
      005203 24 15            [12] 6813 	add	a,#0x15
      005205 FF               [12] 6814 	mov	r7,a
      005206 E5 08            [12] 6815 	mov	a,_bp
      005208 24 0E            [12] 6816 	add	a,#0x0e
      00520A F8               [12] 6817 	mov	r0,a
      00520B A6 07            [24] 6818 	mov	@r0,ar7
      00520D 08               [12] 6819 	inc	r0
      00520E 76 00            [12] 6820 	mov	@r0,#0x00
      005210 08               [12] 6821 	inc	r0
      005211 76 40            [12] 6822 	mov	@r0,#0x40
      005213 E5 08            [12] 6823 	mov	a,_bp
      005215 24 12            [12] 6824 	add	a,#0x12
      005217 F8               [12] 6825 	mov	r0,a
      005218 74 11            [12] 6826 	mov	a,#0x11
      00521A 26               [12] 6827 	add	a,@r0
      00521B FA               [12] 6828 	mov	r2,a
      00521C 74 40            [12] 6829 	mov	a,#0x40
      00521E 08               [12] 6830 	inc	r0
      00521F 36               [12] 6831 	addc	a,@r0
      005220 FB               [12] 6832 	mov	r3,a
      005221 08               [12] 6833 	inc	r0
      005222 86 04            [24] 6834 	mov	ar4,@r0
      005224 8A 82            [24] 6835 	mov	dpl,r2
      005226 8B 83            [24] 6836 	mov	dph,r3
      005228 8C F0            [24] 6837 	mov	b,r4
      00522A 12 76 03         [24] 6838 	lcall	__gptrget
      00522D FD               [12] 6839 	mov	r5,a
      00522E A3               [24] 6840 	inc	dptr
      00522F 12 76 03         [24] 6841 	lcall	__gptrget
      005232 FE               [12] 6842 	mov	r6,a
      005233 A3               [24] 6843 	inc	dptr
      005234 12 76 03         [24] 6844 	lcall	__gptrget
      005237 FF               [12] 6845 	mov	r7,a
      005238 C0 04            [24] 6846 	push	ar4
      00523A C0 03            [24] 6847 	push	ar3
      00523C C0 02            [24] 6848 	push	ar2
      00523E E5 08            [12] 6849 	mov	a,_bp
      005240 24 0E            [12] 6850 	add	a,#0x0e
      005242 F8               [12] 6851 	mov	r0,a
      005243 E6               [12] 6852 	mov	a,@r0
      005244 C0 E0            [24] 6853 	push	acc
      005246 08               [12] 6854 	inc	r0
      005247 E6               [12] 6855 	mov	a,@r0
      005248 C0 E0            [24] 6856 	push	acc
      00524A 08               [12] 6857 	inc	r0
      00524B E6               [12] 6858 	mov	a,@r0
      00524C C0 E0            [24] 6859 	push	acc
      00524E 8D 82            [24] 6860 	mov	dpl,r5
      005250 8E 83            [24] 6861 	mov	dph,r6
      005252 8F F0            [24] 6862 	mov	b,r7
      005254 12 27 83         [24] 6863 	lcall	_stack_pop
      005257 AE 82            [24] 6864 	mov	r6,dpl
      005259 AF 83            [24] 6865 	mov	r7,dph
      00525B 15 81            [12] 6866 	dec	sp
      00525D 15 81            [12] 6867 	dec	sp
      00525F 15 81            [12] 6868 	dec	sp
      005261 D0 02            [24] 6869 	pop	ar2
      005263 D0 03            [24] 6870 	pop	ar3
      005265 D0 04            [24] 6871 	pop	ar4
      005267 EE               [12] 6872 	mov	a,r6
      005268 4F               [12] 6873 	orl	a,r7
      005269 70 31            [24] 6874 	jnz	00221$
      00526B 7D D2            [12] 6875 	mov	r5,#___str_10
      00526D 7C 8E            [12] 6876 	mov	r4,#(___str_10 >> 8)
      00526F 7B 80            [12] 6877 	mov	r3,#0x80
                                   6878 ;	calc.c:20: return;
      005271                       6879 00474$:
                                   6880 ;	calc.c:18: for (; *s; s++) putchar(*s);
      005271 8D 82            [24] 6881 	mov	dpl,r5
      005273 8C 83            [24] 6882 	mov	dph,r4
      005275 8B F0            [24] 6883 	mov	b,r3
      005277 12 76 03         [24] 6884 	lcall	__gptrget
      00527A FF               [12] 6885 	mov	r7,a
      00527B 70 03            [24] 6886 	jnz	01378$
      00527D 02 59 D5         [24] 6887 	ljmp	00249$
      005280                       6888 01378$:
      005280 7E 00            [12] 6889 	mov	r6,#0x00
      005282 8F 82            [24] 6890 	mov	dpl,r7
      005284 8E 83            [24] 6891 	mov	dph,r6
      005286 C0 05            [24] 6892 	push	ar5
      005288 C0 04            [24] 6893 	push	ar4
      00528A C0 03            [24] 6894 	push	ar3
      00528C 12 71 72         [24] 6895 	lcall	_putchar
      00528F D0 03            [24] 6896 	pop	ar3
      005291 D0 04            [24] 6897 	pop	ar4
      005293 D0 05            [24] 6898 	pop	ar5
      005295 0D               [12] 6899 	inc	r5
                                   6900 ;	calc.c:265: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005296 BD 00 D8         [24] 6901 	cjne	r5,#0x00,00474$
      005299 0C               [12] 6902 	inc	r4
      00529A 80 D5            [24] 6903 	sjmp	00474$
      00529C                       6904 00221$:
                                   6905 ;	calc.c:266: else if (!stack_pop(ctx->ps, &d1)) {
      00529C E5 08            [12] 6906 	mov	a,_bp
      00529E 24 19            [12] 6907 	add	a,#0x19
      0052A0 FF               [12] 6908 	mov	r7,a
      0052A1 E5 08            [12] 6909 	mov	a,_bp
      0052A3 24 0E            [12] 6910 	add	a,#0x0e
      0052A5 F8               [12] 6911 	mov	r0,a
      0052A6 A6 07            [24] 6912 	mov	@r0,ar7
      0052A8 08               [12] 6913 	inc	r0
      0052A9 76 00            [12] 6914 	mov	@r0,#0x00
      0052AB 08               [12] 6915 	inc	r0
      0052AC 76 40            [12] 6916 	mov	@r0,#0x40
      0052AE 8A 82            [24] 6917 	mov	dpl,r2
      0052B0 8B 83            [24] 6918 	mov	dph,r3
      0052B2 8C F0            [24] 6919 	mov	b,r4
      0052B4 12 76 03         [24] 6920 	lcall	__gptrget
      0052B7 FD               [12] 6921 	mov	r5,a
      0052B8 A3               [24] 6922 	inc	dptr
      0052B9 12 76 03         [24] 6923 	lcall	__gptrget
      0052BC FE               [12] 6924 	mov	r6,a
      0052BD A3               [24] 6925 	inc	dptr
      0052BE 12 76 03         [24] 6926 	lcall	__gptrget
      0052C1 FF               [12] 6927 	mov	r7,a
      0052C2 C0 04            [24] 6928 	push	ar4
      0052C4 C0 03            [24] 6929 	push	ar3
      0052C6 C0 02            [24] 6930 	push	ar2
      0052C8 E5 08            [12] 6931 	mov	a,_bp
      0052CA 24 0E            [12] 6932 	add	a,#0x0e
      0052CC F8               [12] 6933 	mov	r0,a
      0052CD E6               [12] 6934 	mov	a,@r0
      0052CE C0 E0            [24] 6935 	push	acc
      0052D0 08               [12] 6936 	inc	r0
      0052D1 E6               [12] 6937 	mov	a,@r0
      0052D2 C0 E0            [24] 6938 	push	acc
      0052D4 08               [12] 6939 	inc	r0
      0052D5 E6               [12] 6940 	mov	a,@r0
      0052D6 C0 E0            [24] 6941 	push	acc
      0052D8 8D 82            [24] 6942 	mov	dpl,r5
      0052DA 8E 83            [24] 6943 	mov	dph,r6
      0052DC 8F F0            [24] 6944 	mov	b,r7
      0052DE 12 27 83         [24] 6945 	lcall	_stack_pop
      0052E1 AE 82            [24] 6946 	mov	r6,dpl
      0052E3 AF 83            [24] 6947 	mov	r7,dph
      0052E5 15 81            [12] 6948 	dec	sp
      0052E7 15 81            [12] 6949 	dec	sp
      0052E9 15 81            [12] 6950 	dec	sp
      0052EB D0 02            [24] 6951 	pop	ar2
      0052ED D0 03            [24] 6952 	pop	ar3
      0052EF D0 04            [24] 6953 	pop	ar4
      0052F1 EE               [12] 6954 	mov	a,r6
      0052F2 4F               [12] 6955 	orl	a,r7
      0052F3 70 68            [24] 6956 	jnz	00218$
                                   6957 ;	calc.c:267: (void)stack_push(ctx->ps, d0);
      0052F5 8A 82            [24] 6958 	mov	dpl,r2
      0052F7 8B 83            [24] 6959 	mov	dph,r3
      0052F9 8C F0            [24] 6960 	mov	b,r4
      0052FB 12 76 03         [24] 6961 	lcall	__gptrget
      0052FE FD               [12] 6962 	mov	r5,a
      0052FF A3               [24] 6963 	inc	dptr
      005300 12 76 03         [24] 6964 	lcall	__gptrget
      005303 FE               [12] 6965 	mov	r6,a
      005304 A3               [24] 6966 	inc	dptr
      005305 12 76 03         [24] 6967 	lcall	__gptrget
      005308 FF               [12] 6968 	mov	r7,a
      005309 E5 08            [12] 6969 	mov	a,_bp
      00530B 24 15            [12] 6970 	add	a,#0x15
      00530D F8               [12] 6971 	mov	r0,a
      00530E E6               [12] 6972 	mov	a,@r0
      00530F C0 E0            [24] 6973 	push	acc
      005311 08               [12] 6974 	inc	r0
      005312 E6               [12] 6975 	mov	a,@r0
      005313 C0 E0            [24] 6976 	push	acc
      005315 08               [12] 6977 	inc	r0
      005316 E6               [12] 6978 	mov	a,@r0
      005317 C0 E0            [24] 6979 	push	acc
      005319 08               [12] 6980 	inc	r0
      00531A E6               [12] 6981 	mov	a,@r0
      00531B C0 E0            [24] 6982 	push	acc
      00531D 8D 82            [24] 6983 	mov	dpl,r5
      00531F 8E 83            [24] 6984 	mov	dph,r6
      005321 8F F0            [24] 6985 	mov	b,r7
      005323 12 26 B5         [24] 6986 	lcall	_stack_push
      005326 E5 81            [12] 6987 	mov	a,sp
      005328 24 FC            [12] 6988 	add	a,#0xfc
      00532A F5 81            [12] 6989 	mov	sp,a
                                   6990 ;	calc.c:268: printstr("\r\nstack underflow\r\n");
      00532C 7D D2            [12] 6991 	mov	r5,#___str_10
      00532E 7C 8E            [12] 6992 	mov	r4,#(___str_10 >> 8)
      005330 7B 80            [12] 6993 	mov	r3,#0x80
                                   6994 ;	calc.c:20: return;
      005332                       6995 00477$:
                                   6996 ;	calc.c:18: for (; *s; s++) putchar(*s);
      005332 8D 82            [24] 6997 	mov	dpl,r5
      005334 8C 83            [24] 6998 	mov	dph,r4
      005336 8B F0            [24] 6999 	mov	b,r3
      005338 12 76 03         [24] 7000 	lcall	__gptrget
      00533B FF               [12] 7001 	mov	r7,a
      00533C 70 03            [24] 7002 	jnz	01381$
      00533E 02 59 D5         [24] 7003 	ljmp	00249$
      005341                       7004 01381$:
      005341 7E 00            [12] 7005 	mov	r6,#0x00
      005343 8F 82            [24] 7006 	mov	dpl,r7
      005345 8E 83            [24] 7007 	mov	dph,r6
      005347 C0 05            [24] 7008 	push	ar5
      005349 C0 04            [24] 7009 	push	ar4
      00534B C0 03            [24] 7010 	push	ar3
      00534D 12 71 72         [24] 7011 	lcall	_putchar
      005350 D0 03            [24] 7012 	pop	ar3
      005352 D0 04            [24] 7013 	pop	ar4
      005354 D0 05            [24] 7014 	pop	ar5
      005356 0D               [12] 7015 	inc	r5
                                   7016 ;	calc.c:268: printstr("\r\nstack underflow\r\n");
      005357 BD 00 D8         [24] 7017 	cjne	r5,#0x00,00477$
      00535A 0C               [12] 7018 	inc	r4
      00535B 80 D5            [24] 7019 	sjmp	00477$
      00535D                       7020 00218$:
                                   7021 ;	calc.c:270: d1 ^= d0;
      00535D E5 08            [12] 7022 	mov	a,_bp
      00535F 24 19            [12] 7023 	add	a,#0x19
      005361 F8               [12] 7024 	mov	r0,a
      005362 E5 08            [12] 7025 	mov	a,_bp
      005364 24 15            [12] 7026 	add	a,#0x15
      005366 F9               [12] 7027 	mov	r1,a
      005367 E7               [12] 7028 	mov	a,@r1
      005368 66               [12] 7029 	xrl	a,@r0
      005369 F6               [12] 7030 	mov	@r0,a
      00536A 09               [12] 7031 	inc	r1
      00536B E7               [12] 7032 	mov	a,@r1
      00536C 08               [12] 7033 	inc	r0
      00536D 66               [12] 7034 	xrl	a,@r0
      00536E F6               [12] 7035 	mov	@r0,a
      00536F 09               [12] 7036 	inc	r1
      005370 E7               [12] 7037 	mov	a,@r1
      005371 08               [12] 7038 	inc	r0
      005372 66               [12] 7039 	xrl	a,@r0
      005373 F6               [12] 7040 	mov	@r0,a
      005374 09               [12] 7041 	inc	r1
      005375 E7               [12] 7042 	mov	a,@r1
      005376 08               [12] 7043 	inc	r0
      005377 66               [12] 7044 	xrl	a,@r0
      005378 F6               [12] 7045 	mov	@r0,a
                                   7046 ;	calc.c:271: (void)stack_push(ctx->ps, d1);
      005379 8A 82            [24] 7047 	mov	dpl,r2
      00537B 8B 83            [24] 7048 	mov	dph,r3
      00537D 8C F0            [24] 7049 	mov	b,r4
      00537F 12 76 03         [24] 7050 	lcall	__gptrget
      005382 FA               [12] 7051 	mov	r2,a
      005383 A3               [24] 7052 	inc	dptr
      005384 12 76 03         [24] 7053 	lcall	__gptrget
      005387 FB               [12] 7054 	mov	r3,a
      005388 A3               [24] 7055 	inc	dptr
      005389 12 76 03         [24] 7056 	lcall	__gptrget
      00538C FC               [12] 7057 	mov	r4,a
      00538D E5 08            [12] 7058 	mov	a,_bp
      00538F 24 19            [12] 7059 	add	a,#0x19
      005391 F8               [12] 7060 	mov	r0,a
      005392 E6               [12] 7061 	mov	a,@r0
      005393 C0 E0            [24] 7062 	push	acc
      005395 08               [12] 7063 	inc	r0
      005396 E6               [12] 7064 	mov	a,@r0
      005397 C0 E0            [24] 7065 	push	acc
      005399 08               [12] 7066 	inc	r0
      00539A E6               [12] 7067 	mov	a,@r0
      00539B C0 E0            [24] 7068 	push	acc
      00539D 08               [12] 7069 	inc	r0
      00539E E6               [12] 7070 	mov	a,@r0
      00539F C0 E0            [24] 7071 	push	acc
      0053A1 8A 82            [24] 7072 	mov	dpl,r2
      0053A3 8B 83            [24] 7073 	mov	dph,r3
      0053A5 8C F0            [24] 7074 	mov	b,r4
      0053A7 12 26 B5         [24] 7075 	lcall	_stack_push
      0053AA E5 81            [12] 7076 	mov	a,sp
      0053AC 24 FC            [12] 7077 	add	a,#0xfc
      0053AE F5 81            [12] 7078 	mov	sp,a
                                   7079 ;	calc.c:273: break;
      0053B0 02 59 D5         [24] 7080 	ljmp	00249$
                                   7081 ;	calc.c:274: case '>':
      0053B3                       7082 00223$:
                                   7083 ;	calc.c:275: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0053B3 E5 08            [12] 7084 	mov	a,_bp
      0053B5 24 15            [12] 7085 	add	a,#0x15
      0053B7 FC               [12] 7086 	mov	r4,a
      0053B8 7B 00            [12] 7087 	mov	r3,#0x00
      0053BA 7A 40            [12] 7088 	mov	r2,#0x40
      0053BC E5 08            [12] 7089 	mov	a,_bp
      0053BE 24 12            [12] 7090 	add	a,#0x12
      0053C0 F8               [12] 7091 	mov	r0,a
      0053C1 E5 08            [12] 7092 	mov	a,_bp
      0053C3 24 0B            [12] 7093 	add	a,#0x0b
      0053C5 F9               [12] 7094 	mov	r1,a
      0053C6 74 11            [12] 7095 	mov	a,#0x11
      0053C8 26               [12] 7096 	add	a,@r0
      0053C9 F7               [12] 7097 	mov	@r1,a
      0053CA 74 40            [12] 7098 	mov	a,#0x40
      0053CC 08               [12] 7099 	inc	r0
      0053CD 36               [12] 7100 	addc	a,@r0
      0053CE 09               [12] 7101 	inc	r1
      0053CF F7               [12] 7102 	mov	@r1,a
      0053D0 08               [12] 7103 	inc	r0
      0053D1 09               [12] 7104 	inc	r1
      0053D2 E6               [12] 7105 	mov	a,@r0
      0053D3 F7               [12] 7106 	mov	@r1,a
      0053D4 E5 08            [12] 7107 	mov	a,_bp
      0053D6 24 0B            [12] 7108 	add	a,#0x0b
      0053D8 F8               [12] 7109 	mov	r0,a
      0053D9 86 82            [24] 7110 	mov	dpl,@r0
      0053DB 08               [12] 7111 	inc	r0
      0053DC 86 83            [24] 7112 	mov	dph,@r0
      0053DE 08               [12] 7113 	inc	r0
      0053DF 86 F0            [24] 7114 	mov	b,@r0
      0053E1 12 76 03         [24] 7115 	lcall	__gptrget
      0053E4 FD               [12] 7116 	mov	r5,a
      0053E5 A3               [24] 7117 	inc	dptr
      0053E6 12 76 03         [24] 7118 	lcall	__gptrget
      0053E9 FE               [12] 7119 	mov	r6,a
      0053EA A3               [24] 7120 	inc	dptr
      0053EB 12 76 03         [24] 7121 	lcall	__gptrget
      0053EE FF               [12] 7122 	mov	r7,a
      0053EF C0 04            [24] 7123 	push	ar4
      0053F1 C0 03            [24] 7124 	push	ar3
      0053F3 C0 02            [24] 7125 	push	ar2
      0053F5 8D 82            [24] 7126 	mov	dpl,r5
      0053F7 8E 83            [24] 7127 	mov	dph,r6
      0053F9 8F F0            [24] 7128 	mov	b,r7
      0053FB 12 27 83         [24] 7129 	lcall	_stack_pop
      0053FE AE 82            [24] 7130 	mov	r6,dpl
      005400 AF 83            [24] 7131 	mov	r7,dph
      005402 15 81            [12] 7132 	dec	sp
      005404 15 81            [12] 7133 	dec	sp
      005406 15 81            [12] 7134 	dec	sp
      005408 EE               [12] 7135 	mov	a,r6
      005409 4F               [12] 7136 	orl	a,r7
      00540A 70 31            [24] 7137 	jnz	00228$
      00540C 7D D2            [12] 7138 	mov	r5,#___str_10
      00540E 7C 8E            [12] 7139 	mov	r4,#(___str_10 >> 8)
      005410 7B 80            [12] 7140 	mov	r3,#0x80
                                   7141 ;	calc.c:20: return;
      005412                       7142 00480$:
                                   7143 ;	calc.c:18: for (; *s; s++) putchar(*s);
      005412 8D 82            [24] 7144 	mov	dpl,r5
      005414 8C 83            [24] 7145 	mov	dph,r4
      005416 8B F0            [24] 7146 	mov	b,r3
      005418 12 76 03         [24] 7147 	lcall	__gptrget
      00541B FF               [12] 7148 	mov	r7,a
      00541C 70 03            [24] 7149 	jnz	01384$
      00541E 02 59 D5         [24] 7150 	ljmp	00249$
      005421                       7151 01384$:
      005421 7E 00            [12] 7152 	mov	r6,#0x00
      005423 8F 82            [24] 7153 	mov	dpl,r7
      005425 8E 83            [24] 7154 	mov	dph,r6
      005427 C0 05            [24] 7155 	push	ar5
      005429 C0 04            [24] 7156 	push	ar4
      00542B C0 03            [24] 7157 	push	ar3
      00542D 12 71 72         [24] 7158 	lcall	_putchar
      005430 D0 03            [24] 7159 	pop	ar3
      005432 D0 04            [24] 7160 	pop	ar4
      005434 D0 05            [24] 7161 	pop	ar5
      005436 0D               [12] 7162 	inc	r5
                                   7163 ;	calc.c:275: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005437 BD 00 D8         [24] 7164 	cjne	r5,#0x00,00480$
      00543A 0C               [12] 7165 	inc	r4
      00543B 80 D5            [24] 7166 	sjmp	00480$
      00543D                       7167 00228$:
                                   7168 ;	calc.c:276: else if (!stack_pop(ctx->ps, &d1)) {
      00543D E5 08            [12] 7169 	mov	a,_bp
      00543F 24 19            [12] 7170 	add	a,#0x19
      005441 FC               [12] 7171 	mov	r4,a
      005442 7B 00            [12] 7172 	mov	r3,#0x00
      005444 7A 40            [12] 7173 	mov	r2,#0x40
      005446 E5 08            [12] 7174 	mov	a,_bp
      005448 24 0B            [12] 7175 	add	a,#0x0b
      00544A F8               [12] 7176 	mov	r0,a
      00544B 86 82            [24] 7177 	mov	dpl,@r0
      00544D 08               [12] 7178 	inc	r0
      00544E 86 83            [24] 7179 	mov	dph,@r0
      005450 08               [12] 7180 	inc	r0
      005451 86 F0            [24] 7181 	mov	b,@r0
      005453 12 76 03         [24] 7182 	lcall	__gptrget
      005456 FD               [12] 7183 	mov	r5,a
      005457 A3               [24] 7184 	inc	dptr
      005458 12 76 03         [24] 7185 	lcall	__gptrget
      00545B FE               [12] 7186 	mov	r6,a
      00545C A3               [24] 7187 	inc	dptr
      00545D 12 76 03         [24] 7188 	lcall	__gptrget
      005460 FF               [12] 7189 	mov	r7,a
      005461 C0 04            [24] 7190 	push	ar4
      005463 C0 03            [24] 7191 	push	ar3
      005465 C0 02            [24] 7192 	push	ar2
      005467 8D 82            [24] 7193 	mov	dpl,r5
      005469 8E 83            [24] 7194 	mov	dph,r6
      00546B 8F F0            [24] 7195 	mov	b,r7
      00546D 12 27 83         [24] 7196 	lcall	_stack_pop
      005470 AE 82            [24] 7197 	mov	r6,dpl
      005472 AF 83            [24] 7198 	mov	r7,dph
      005474 15 81            [12] 7199 	dec	sp
      005476 15 81            [12] 7200 	dec	sp
      005478 15 81            [12] 7201 	dec	sp
      00547A EE               [12] 7202 	mov	a,r6
      00547B 4F               [12] 7203 	orl	a,r7
      00547C 70 6F            [24] 7204 	jnz	00225$
                                   7205 ;	calc.c:277: (void)stack_push(ctx->ps, d0);
      00547E E5 08            [12] 7206 	mov	a,_bp
      005480 24 0B            [12] 7207 	add	a,#0x0b
      005482 F8               [12] 7208 	mov	r0,a
      005483 86 82            [24] 7209 	mov	dpl,@r0
      005485 08               [12] 7210 	inc	r0
      005486 86 83            [24] 7211 	mov	dph,@r0
      005488 08               [12] 7212 	inc	r0
      005489 86 F0            [24] 7213 	mov	b,@r0
      00548B 12 76 03         [24] 7214 	lcall	__gptrget
      00548E FD               [12] 7215 	mov	r5,a
      00548F A3               [24] 7216 	inc	dptr
      005490 12 76 03         [24] 7217 	lcall	__gptrget
      005493 FE               [12] 7218 	mov	r6,a
      005494 A3               [24] 7219 	inc	dptr
      005495 12 76 03         [24] 7220 	lcall	__gptrget
      005498 FF               [12] 7221 	mov	r7,a
      005499 E5 08            [12] 7222 	mov	a,_bp
      00549B 24 15            [12] 7223 	add	a,#0x15
      00549D F8               [12] 7224 	mov	r0,a
      00549E E6               [12] 7225 	mov	a,@r0
      00549F C0 E0            [24] 7226 	push	acc
      0054A1 08               [12] 7227 	inc	r0
      0054A2 E6               [12] 7228 	mov	a,@r0
      0054A3 C0 E0            [24] 7229 	push	acc
      0054A5 08               [12] 7230 	inc	r0
      0054A6 E6               [12] 7231 	mov	a,@r0
      0054A7 C0 E0            [24] 7232 	push	acc
      0054A9 08               [12] 7233 	inc	r0
      0054AA E6               [12] 7234 	mov	a,@r0
      0054AB C0 E0            [24] 7235 	push	acc
      0054AD 8D 82            [24] 7236 	mov	dpl,r5
      0054AF 8E 83            [24] 7237 	mov	dph,r6
      0054B1 8F F0            [24] 7238 	mov	b,r7
      0054B3 12 26 B5         [24] 7239 	lcall	_stack_push
      0054B6 E5 81            [12] 7240 	mov	a,sp
      0054B8 24 FC            [12] 7241 	add	a,#0xfc
      0054BA F5 81            [12] 7242 	mov	sp,a
                                   7243 ;	calc.c:278: printstr("\r\nstack underflow\r\n");
      0054BC 7D D2            [12] 7244 	mov	r5,#___str_10
      0054BE 7C 8E            [12] 7245 	mov	r4,#(___str_10 >> 8)
      0054C0 7B 80            [12] 7246 	mov	r3,#0x80
                                   7247 ;	calc.c:20: return;
      0054C2                       7248 00483$:
                                   7249 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0054C2 8D 82            [24] 7250 	mov	dpl,r5
      0054C4 8C 83            [24] 7251 	mov	dph,r4
      0054C6 8B F0            [24] 7252 	mov	b,r3
      0054C8 12 76 03         [24] 7253 	lcall	__gptrget
      0054CB FF               [12] 7254 	mov	r7,a
      0054CC 70 03            [24] 7255 	jnz	01387$
      0054CE 02 59 D5         [24] 7256 	ljmp	00249$
      0054D1                       7257 01387$:
      0054D1 7E 00            [12] 7258 	mov	r6,#0x00
      0054D3 8F 82            [24] 7259 	mov	dpl,r7
      0054D5 8E 83            [24] 7260 	mov	dph,r6
      0054D7 C0 05            [24] 7261 	push	ar5
      0054D9 C0 04            [24] 7262 	push	ar4
      0054DB C0 03            [24] 7263 	push	ar3
      0054DD 12 71 72         [24] 7264 	lcall	_putchar
      0054E0 D0 03            [24] 7265 	pop	ar3
      0054E2 D0 04            [24] 7266 	pop	ar4
      0054E4 D0 05            [24] 7267 	pop	ar5
      0054E6 0D               [12] 7268 	inc	r5
                                   7269 ;	calc.c:278: printstr("\r\nstack underflow\r\n");
      0054E7 BD 00 D8         [24] 7270 	cjne	r5,#0x00,00483$
      0054EA 0C               [12] 7271 	inc	r4
      0054EB 80 D5            [24] 7272 	sjmp	00483$
      0054ED                       7273 00225$:
                                   7274 ;	calc.c:280: d1 = (unsigned long)d1 >> d0;
      0054ED E5 08            [12] 7275 	mov	a,_bp
      0054EF 24 19            [12] 7276 	add	a,#0x19
      0054F1 F8               [12] 7277 	mov	r0,a
      0054F2 86 04            [24] 7278 	mov	ar4,@r0
      0054F4 08               [12] 7279 	inc	r0
      0054F5 86 05            [24] 7280 	mov	ar5,@r0
      0054F7 08               [12] 7281 	inc	r0
      0054F8 86 06            [24] 7282 	mov	ar6,@r0
      0054FA 08               [12] 7283 	inc	r0
      0054FB 86 07            [24] 7284 	mov	ar7,@r0
      0054FD E5 08            [12] 7285 	mov	a,_bp
      0054FF 24 15            [12] 7286 	add	a,#0x15
      005501 F8               [12] 7287 	mov	r0,a
      005502 86 F0            [24] 7288 	mov	b,@r0
      005504 05 F0            [12] 7289 	inc	b
      005506 80 0D            [24] 7290 	sjmp	01390$
      005508                       7291 01389$:
      005508 C3               [12] 7292 	clr	c
      005509 EF               [12] 7293 	mov	a,r7
      00550A 13               [12] 7294 	rrc	a
      00550B FF               [12] 7295 	mov	r7,a
      00550C EE               [12] 7296 	mov	a,r6
      00550D 13               [12] 7297 	rrc	a
      00550E FE               [12] 7298 	mov	r6,a
      00550F ED               [12] 7299 	mov	a,r5
      005510 13               [12] 7300 	rrc	a
      005511 FD               [12] 7301 	mov	r5,a
      005512 EC               [12] 7302 	mov	a,r4
      005513 13               [12] 7303 	rrc	a
      005514 FC               [12] 7304 	mov	r4,a
      005515                       7305 01390$:
      005515 D5 F0 F0         [24] 7306 	djnz	b,01389$
      005518 E5 08            [12] 7307 	mov	a,_bp
      00551A 24 19            [12] 7308 	add	a,#0x19
      00551C F8               [12] 7309 	mov	r0,a
      00551D A6 04            [24] 7310 	mov	@r0,ar4
      00551F 08               [12] 7311 	inc	r0
      005520 A6 05            [24] 7312 	mov	@r0,ar5
      005522 08               [12] 7313 	inc	r0
      005523 A6 06            [24] 7314 	mov	@r0,ar6
      005525 08               [12] 7315 	inc	r0
      005526 A6 07            [24] 7316 	mov	@r0,ar7
                                   7317 ;	calc.c:281: (void)stack_push(ctx->ps, d1);
      005528 E5 08            [12] 7318 	mov	a,_bp
      00552A 24 0B            [12] 7319 	add	a,#0x0b
      00552C F8               [12] 7320 	mov	r0,a
      00552D 86 82            [24] 7321 	mov	dpl,@r0
      00552F 08               [12] 7322 	inc	r0
      005530 86 83            [24] 7323 	mov	dph,@r0
      005532 08               [12] 7324 	inc	r0
      005533 86 F0            [24] 7325 	mov	b,@r0
      005535 12 76 03         [24] 7326 	lcall	__gptrget
      005538 FD               [12] 7327 	mov	r5,a
      005539 A3               [24] 7328 	inc	dptr
      00553A 12 76 03         [24] 7329 	lcall	__gptrget
      00553D FE               [12] 7330 	mov	r6,a
      00553E A3               [24] 7331 	inc	dptr
      00553F 12 76 03         [24] 7332 	lcall	__gptrget
      005542 FF               [12] 7333 	mov	r7,a
      005543 E5 08            [12] 7334 	mov	a,_bp
      005545 24 19            [12] 7335 	add	a,#0x19
      005547 F8               [12] 7336 	mov	r0,a
      005548 E6               [12] 7337 	mov	a,@r0
      005549 C0 E0            [24] 7338 	push	acc
      00554B 08               [12] 7339 	inc	r0
      00554C E6               [12] 7340 	mov	a,@r0
      00554D C0 E0            [24] 7341 	push	acc
      00554F 08               [12] 7342 	inc	r0
      005550 E6               [12] 7343 	mov	a,@r0
      005551 C0 E0            [24] 7344 	push	acc
      005553 08               [12] 7345 	inc	r0
      005554 E6               [12] 7346 	mov	a,@r0
      005555 C0 E0            [24] 7347 	push	acc
      005557 8D 82            [24] 7348 	mov	dpl,r5
      005559 8E 83            [24] 7349 	mov	dph,r6
      00555B 8F F0            [24] 7350 	mov	b,r7
      00555D 12 26 B5         [24] 7351 	lcall	_stack_push
      005560 E5 81            [12] 7352 	mov	a,sp
      005562 24 FC            [12] 7353 	add	a,#0xfc
      005564 F5 81            [12] 7354 	mov	sp,a
                                   7355 ;	calc.c:283: break;
      005566 02 59 D5         [24] 7356 	ljmp	00249$
                                   7357 ;	calc.c:284: case ']':
      005569                       7358 00230$:
                                   7359 ;	calc.c:285: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005569 E5 08            [12] 7360 	mov	a,_bp
      00556B 24 15            [12] 7361 	add	a,#0x15
      00556D FF               [12] 7362 	mov	r7,a
      00556E E5 08            [12] 7363 	mov	a,_bp
      005570 24 0E            [12] 7364 	add	a,#0x0e
      005572 F8               [12] 7365 	mov	r0,a
      005573 A6 07            [24] 7366 	mov	@r0,ar7
      005575 08               [12] 7367 	inc	r0
      005576 76 00            [12] 7368 	mov	@r0,#0x00
      005578 08               [12] 7369 	inc	r0
      005579 76 40            [12] 7370 	mov	@r0,#0x40
      00557B E5 08            [12] 7371 	mov	a,_bp
      00557D 24 12            [12] 7372 	add	a,#0x12
      00557F F8               [12] 7373 	mov	r0,a
      005580 74 11            [12] 7374 	mov	a,#0x11
      005582 26               [12] 7375 	add	a,@r0
      005583 FA               [12] 7376 	mov	r2,a
      005584 74 40            [12] 7377 	mov	a,#0x40
      005586 08               [12] 7378 	inc	r0
      005587 36               [12] 7379 	addc	a,@r0
      005588 FB               [12] 7380 	mov	r3,a
      005589 08               [12] 7381 	inc	r0
      00558A 86 04            [24] 7382 	mov	ar4,@r0
      00558C 8A 82            [24] 7383 	mov	dpl,r2
      00558E 8B 83            [24] 7384 	mov	dph,r3
      005590 8C F0            [24] 7385 	mov	b,r4
      005592 12 76 03         [24] 7386 	lcall	__gptrget
      005595 FD               [12] 7387 	mov	r5,a
      005596 A3               [24] 7388 	inc	dptr
      005597 12 76 03         [24] 7389 	lcall	__gptrget
      00559A FE               [12] 7390 	mov	r6,a
      00559B A3               [24] 7391 	inc	dptr
      00559C 12 76 03         [24] 7392 	lcall	__gptrget
      00559F FF               [12] 7393 	mov	r7,a
      0055A0 C0 04            [24] 7394 	push	ar4
      0055A2 C0 03            [24] 7395 	push	ar3
      0055A4 C0 02            [24] 7396 	push	ar2
      0055A6 E5 08            [12] 7397 	mov	a,_bp
      0055A8 24 0E            [12] 7398 	add	a,#0x0e
      0055AA F8               [12] 7399 	mov	r0,a
      0055AB E6               [12] 7400 	mov	a,@r0
      0055AC C0 E0            [24] 7401 	push	acc
      0055AE 08               [12] 7402 	inc	r0
      0055AF E6               [12] 7403 	mov	a,@r0
      0055B0 C0 E0            [24] 7404 	push	acc
      0055B2 08               [12] 7405 	inc	r0
      0055B3 E6               [12] 7406 	mov	a,@r0
      0055B4 C0 E0            [24] 7407 	push	acc
      0055B6 8D 82            [24] 7408 	mov	dpl,r5
      0055B8 8E 83            [24] 7409 	mov	dph,r6
      0055BA 8F F0            [24] 7410 	mov	b,r7
      0055BC 12 27 83         [24] 7411 	lcall	_stack_pop
      0055BF AE 82            [24] 7412 	mov	r6,dpl
      0055C1 AF 83            [24] 7413 	mov	r7,dph
      0055C3 15 81            [12] 7414 	dec	sp
      0055C5 15 81            [12] 7415 	dec	sp
      0055C7 15 81            [12] 7416 	dec	sp
      0055C9 D0 02            [24] 7417 	pop	ar2
      0055CB D0 03            [24] 7418 	pop	ar3
      0055CD D0 04            [24] 7419 	pop	ar4
      0055CF EE               [12] 7420 	mov	a,r6
      0055D0 4F               [12] 7421 	orl	a,r7
      0055D1 70 31            [24] 7422 	jnz	00235$
      0055D3 7D D2            [12] 7423 	mov	r5,#___str_10
      0055D5 7C 8E            [12] 7424 	mov	r4,#(___str_10 >> 8)
      0055D7 7B 80            [12] 7425 	mov	r3,#0x80
                                   7426 ;	calc.c:20: return;
      0055D9                       7427 00486$:
                                   7428 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0055D9 8D 82            [24] 7429 	mov	dpl,r5
      0055DB 8C 83            [24] 7430 	mov	dph,r4
      0055DD 8B F0            [24] 7431 	mov	b,r3
      0055DF 12 76 03         [24] 7432 	lcall	__gptrget
      0055E2 FF               [12] 7433 	mov	r7,a
      0055E3 70 03            [24] 7434 	jnz	01392$
      0055E5 02 59 D5         [24] 7435 	ljmp	00249$
      0055E8                       7436 01392$:
      0055E8 7E 00            [12] 7437 	mov	r6,#0x00
      0055EA 8F 82            [24] 7438 	mov	dpl,r7
      0055EC 8E 83            [24] 7439 	mov	dph,r6
      0055EE C0 05            [24] 7440 	push	ar5
      0055F0 C0 04            [24] 7441 	push	ar4
      0055F2 C0 03            [24] 7442 	push	ar3
      0055F4 12 71 72         [24] 7443 	lcall	_putchar
      0055F7 D0 03            [24] 7444 	pop	ar3
      0055F9 D0 04            [24] 7445 	pop	ar4
      0055FB D0 05            [24] 7446 	pop	ar5
      0055FD 0D               [12] 7447 	inc	r5
                                   7448 ;	calc.c:285: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0055FE BD 00 D8         [24] 7449 	cjne	r5,#0x00,00486$
      005601 0C               [12] 7450 	inc	r4
      005602 80 D5            [24] 7451 	sjmp	00486$
      005604                       7452 00235$:
                                   7453 ;	calc.c:286: else if (!stack_pop(ctx->ps, &d1)) {
      005604 E5 08            [12] 7454 	mov	a,_bp
      005606 24 19            [12] 7455 	add	a,#0x19
      005608 FF               [12] 7456 	mov	r7,a
      005609 E5 08            [12] 7457 	mov	a,_bp
      00560B 24 0E            [12] 7458 	add	a,#0x0e
      00560D F8               [12] 7459 	mov	r0,a
      00560E A6 07            [24] 7460 	mov	@r0,ar7
      005610 08               [12] 7461 	inc	r0
      005611 76 00            [12] 7462 	mov	@r0,#0x00
      005613 08               [12] 7463 	inc	r0
      005614 76 40            [12] 7464 	mov	@r0,#0x40
      005616 8A 82            [24] 7465 	mov	dpl,r2
      005618 8B 83            [24] 7466 	mov	dph,r3
      00561A 8C F0            [24] 7467 	mov	b,r4
      00561C 12 76 03         [24] 7468 	lcall	__gptrget
      00561F FD               [12] 7469 	mov	r5,a
      005620 A3               [24] 7470 	inc	dptr
      005621 12 76 03         [24] 7471 	lcall	__gptrget
      005624 FE               [12] 7472 	mov	r6,a
      005625 A3               [24] 7473 	inc	dptr
      005626 12 76 03         [24] 7474 	lcall	__gptrget
      005629 FF               [12] 7475 	mov	r7,a
      00562A C0 04            [24] 7476 	push	ar4
      00562C C0 03            [24] 7477 	push	ar3
      00562E C0 02            [24] 7478 	push	ar2
      005630 E5 08            [12] 7479 	mov	a,_bp
      005632 24 0E            [12] 7480 	add	a,#0x0e
      005634 F8               [12] 7481 	mov	r0,a
      005635 E6               [12] 7482 	mov	a,@r0
      005636 C0 E0            [24] 7483 	push	acc
      005638 08               [12] 7484 	inc	r0
      005639 E6               [12] 7485 	mov	a,@r0
      00563A C0 E0            [24] 7486 	push	acc
      00563C 08               [12] 7487 	inc	r0
      00563D E6               [12] 7488 	mov	a,@r0
      00563E C0 E0            [24] 7489 	push	acc
      005640 8D 82            [24] 7490 	mov	dpl,r5
      005642 8E 83            [24] 7491 	mov	dph,r6
      005644 8F F0            [24] 7492 	mov	b,r7
      005646 12 27 83         [24] 7493 	lcall	_stack_pop
      005649 AE 82            [24] 7494 	mov	r6,dpl
      00564B AF 83            [24] 7495 	mov	r7,dph
      00564D 15 81            [12] 7496 	dec	sp
      00564F 15 81            [12] 7497 	dec	sp
      005651 15 81            [12] 7498 	dec	sp
      005653 D0 02            [24] 7499 	pop	ar2
      005655 D0 03            [24] 7500 	pop	ar3
      005657 D0 04            [24] 7501 	pop	ar4
      005659 EE               [12] 7502 	mov	a,r6
      00565A 4F               [12] 7503 	orl	a,r7
      00565B 70 68            [24] 7504 	jnz	00232$
                                   7505 ;	calc.c:287: (void)stack_push(ctx->ps, d0);
      00565D 8A 82            [24] 7506 	mov	dpl,r2
      00565F 8B 83            [24] 7507 	mov	dph,r3
      005661 8C F0            [24] 7508 	mov	b,r4
      005663 12 76 03         [24] 7509 	lcall	__gptrget
      005666 FD               [12] 7510 	mov	r5,a
      005667 A3               [24] 7511 	inc	dptr
      005668 12 76 03         [24] 7512 	lcall	__gptrget
      00566B FE               [12] 7513 	mov	r6,a
      00566C A3               [24] 7514 	inc	dptr
      00566D 12 76 03         [24] 7515 	lcall	__gptrget
      005670 FF               [12] 7516 	mov	r7,a
      005671 E5 08            [12] 7517 	mov	a,_bp
      005673 24 15            [12] 7518 	add	a,#0x15
      005675 F8               [12] 7519 	mov	r0,a
      005676 E6               [12] 7520 	mov	a,@r0
      005677 C0 E0            [24] 7521 	push	acc
      005679 08               [12] 7522 	inc	r0
      00567A E6               [12] 7523 	mov	a,@r0
      00567B C0 E0            [24] 7524 	push	acc
      00567D 08               [12] 7525 	inc	r0
      00567E E6               [12] 7526 	mov	a,@r0
      00567F C0 E0            [24] 7527 	push	acc
      005681 08               [12] 7528 	inc	r0
      005682 E6               [12] 7529 	mov	a,@r0
      005683 C0 E0            [24] 7530 	push	acc
      005685 8D 82            [24] 7531 	mov	dpl,r5
      005687 8E 83            [24] 7532 	mov	dph,r6
      005689 8F F0            [24] 7533 	mov	b,r7
      00568B 12 26 B5         [24] 7534 	lcall	_stack_push
      00568E E5 81            [12] 7535 	mov	a,sp
      005690 24 FC            [12] 7536 	add	a,#0xfc
      005692 F5 81            [12] 7537 	mov	sp,a
                                   7538 ;	calc.c:288: printstr("\r\nstack underflow\r\n");
      005694 7D D2            [12] 7539 	mov	r5,#___str_10
      005696 7C 8E            [12] 7540 	mov	r4,#(___str_10 >> 8)
      005698 7B 80            [12] 7541 	mov	r3,#0x80
                                   7542 ;	calc.c:20: return;
      00569A                       7543 00489$:
                                   7544 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00569A 8D 82            [24] 7545 	mov	dpl,r5
      00569C 8C 83            [24] 7546 	mov	dph,r4
      00569E 8B F0            [24] 7547 	mov	b,r3
      0056A0 12 76 03         [24] 7548 	lcall	__gptrget
      0056A3 FF               [12] 7549 	mov	r7,a
      0056A4 70 03            [24] 7550 	jnz	01395$
      0056A6 02 59 D5         [24] 7551 	ljmp	00249$
      0056A9                       7552 01395$:
      0056A9 7E 00            [12] 7553 	mov	r6,#0x00
      0056AB 8F 82            [24] 7554 	mov	dpl,r7
      0056AD 8E 83            [24] 7555 	mov	dph,r6
      0056AF C0 05            [24] 7556 	push	ar5
      0056B1 C0 04            [24] 7557 	push	ar4
      0056B3 C0 03            [24] 7558 	push	ar3
      0056B5 12 71 72         [24] 7559 	lcall	_putchar
      0056B8 D0 03            [24] 7560 	pop	ar3
      0056BA D0 04            [24] 7561 	pop	ar4
      0056BC D0 05            [24] 7562 	pop	ar5
      0056BE 0D               [12] 7563 	inc	r5
                                   7564 ;	calc.c:288: printstr("\r\nstack underflow\r\n");
      0056BF BD 00 D8         [24] 7565 	cjne	r5,#0x00,00489$
      0056C2 0C               [12] 7566 	inc	r4
      0056C3 80 D5            [24] 7567 	sjmp	00489$
      0056C5                       7568 00232$:
                                   7569 ;	calc.c:290: d1 >>= d0;
      0056C5 E5 08            [12] 7570 	mov	a,_bp
      0056C7 24 15            [12] 7571 	add	a,#0x15
      0056C9 F8               [12] 7572 	mov	r0,a
      0056CA 86 F0            [24] 7573 	mov	b,@r0
      0056CC 05 F0            [12] 7574 	inc	b
      0056CE E5 08            [12] 7575 	mov	a,_bp
      0056D0 24 19            [12] 7576 	add	a,#0x19
      0056D2 F8               [12] 7577 	mov	r0,a
      0056D3 08               [12] 7578 	inc	r0
      0056D4 08               [12] 7579 	inc	r0
      0056D5 08               [12] 7580 	inc	r0
      0056D6 E6               [12] 7581 	mov	a,@r0
      0056D7 33               [12] 7582 	rlc	a
      0056D8 92 D2            [24] 7583 	mov	ov,c
      0056DA 18               [12] 7584 	dec	r0
      0056DB 18               [12] 7585 	dec	r0
      0056DC 18               [12] 7586 	dec	r0
      0056DD 80 14            [24] 7587 	sjmp	01398$
      0056DF                       7588 01397$:
      0056DF A2 D2            [12] 7589 	mov	c,ov
      0056E1 08               [12] 7590 	inc	r0
      0056E2 08               [12] 7591 	inc	r0
      0056E3 08               [12] 7592 	inc	r0
      0056E4 E6               [12] 7593 	mov	a,@r0
      0056E5 13               [12] 7594 	rrc	a
      0056E6 F6               [12] 7595 	mov	@r0,a
      0056E7 18               [12] 7596 	dec	r0
      0056E8 E6               [12] 7597 	mov	a,@r0
      0056E9 13               [12] 7598 	rrc	a
      0056EA F6               [12] 7599 	mov	@r0,a
      0056EB 18               [12] 7600 	dec	r0
      0056EC E6               [12] 7601 	mov	a,@r0
      0056ED 13               [12] 7602 	rrc	a
      0056EE F6               [12] 7603 	mov	@r0,a
      0056EF 18               [12] 7604 	dec	r0
      0056F0 E6               [12] 7605 	mov	a,@r0
      0056F1 13               [12] 7606 	rrc	a
      0056F2 F6               [12] 7607 	mov	@r0,a
      0056F3                       7608 01398$:
      0056F3 D5 F0 E9         [24] 7609 	djnz	b,01397$
                                   7610 ;	calc.c:291: (void)stack_push(ctx->ps, d1);
      0056F6 8A 82            [24] 7611 	mov	dpl,r2
      0056F8 8B 83            [24] 7612 	mov	dph,r3
      0056FA 8C F0            [24] 7613 	mov	b,r4
      0056FC 12 76 03         [24] 7614 	lcall	__gptrget
      0056FF FA               [12] 7615 	mov	r2,a
      005700 A3               [24] 7616 	inc	dptr
      005701 12 76 03         [24] 7617 	lcall	__gptrget
      005704 FB               [12] 7618 	mov	r3,a
      005705 A3               [24] 7619 	inc	dptr
      005706 12 76 03         [24] 7620 	lcall	__gptrget
      005709 FC               [12] 7621 	mov	r4,a
      00570A E5 08            [12] 7622 	mov	a,_bp
      00570C 24 19            [12] 7623 	add	a,#0x19
      00570E F8               [12] 7624 	mov	r0,a
      00570F E6               [12] 7625 	mov	a,@r0
      005710 C0 E0            [24] 7626 	push	acc
      005712 08               [12] 7627 	inc	r0
      005713 E6               [12] 7628 	mov	a,@r0
      005714 C0 E0            [24] 7629 	push	acc
      005716 08               [12] 7630 	inc	r0
      005717 E6               [12] 7631 	mov	a,@r0
      005718 C0 E0            [24] 7632 	push	acc
      00571A 08               [12] 7633 	inc	r0
      00571B E6               [12] 7634 	mov	a,@r0
      00571C C0 E0            [24] 7635 	push	acc
      00571E 8A 82            [24] 7636 	mov	dpl,r2
      005720 8B 83            [24] 7637 	mov	dph,r3
      005722 8C F0            [24] 7638 	mov	b,r4
      005724 12 26 B5         [24] 7639 	lcall	_stack_push
      005727 E5 81            [12] 7640 	mov	a,sp
      005729 24 FC            [12] 7641 	add	a,#0xfc
      00572B F5 81            [12] 7642 	mov	sp,a
                                   7643 ;	calc.c:293: break;
      00572D 02 59 D5         [24] 7644 	ljmp	00249$
                                   7645 ;	calc.c:294: case '<':
      005730                       7646 00237$:
                                   7647 ;	calc.c:295: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005730 E5 08            [12] 7648 	mov	a,_bp
      005732 24 15            [12] 7649 	add	a,#0x15
      005734 FF               [12] 7650 	mov	r7,a
      005735 E5 08            [12] 7651 	mov	a,_bp
      005737 24 0E            [12] 7652 	add	a,#0x0e
      005739 F8               [12] 7653 	mov	r0,a
      00573A A6 07            [24] 7654 	mov	@r0,ar7
      00573C 08               [12] 7655 	inc	r0
      00573D 76 00            [12] 7656 	mov	@r0,#0x00
      00573F 08               [12] 7657 	inc	r0
      005740 76 40            [12] 7658 	mov	@r0,#0x40
      005742 E5 08            [12] 7659 	mov	a,_bp
      005744 24 12            [12] 7660 	add	a,#0x12
      005746 F8               [12] 7661 	mov	r0,a
      005747 74 11            [12] 7662 	mov	a,#0x11
      005749 26               [12] 7663 	add	a,@r0
      00574A FA               [12] 7664 	mov	r2,a
      00574B 74 40            [12] 7665 	mov	a,#0x40
      00574D 08               [12] 7666 	inc	r0
      00574E 36               [12] 7667 	addc	a,@r0
      00574F FB               [12] 7668 	mov	r3,a
      005750 08               [12] 7669 	inc	r0
      005751 86 04            [24] 7670 	mov	ar4,@r0
      005753 8A 82            [24] 7671 	mov	dpl,r2
      005755 8B 83            [24] 7672 	mov	dph,r3
      005757 8C F0            [24] 7673 	mov	b,r4
      005759 12 76 03         [24] 7674 	lcall	__gptrget
      00575C FD               [12] 7675 	mov	r5,a
      00575D A3               [24] 7676 	inc	dptr
      00575E 12 76 03         [24] 7677 	lcall	__gptrget
      005761 FE               [12] 7678 	mov	r6,a
      005762 A3               [24] 7679 	inc	dptr
      005763 12 76 03         [24] 7680 	lcall	__gptrget
      005766 FF               [12] 7681 	mov	r7,a
      005767 C0 04            [24] 7682 	push	ar4
      005769 C0 03            [24] 7683 	push	ar3
      00576B C0 02            [24] 7684 	push	ar2
      00576D E5 08            [12] 7685 	mov	a,_bp
      00576F 24 0E            [12] 7686 	add	a,#0x0e
      005771 F8               [12] 7687 	mov	r0,a
      005772 E6               [12] 7688 	mov	a,@r0
      005773 C0 E0            [24] 7689 	push	acc
      005775 08               [12] 7690 	inc	r0
      005776 E6               [12] 7691 	mov	a,@r0
      005777 C0 E0            [24] 7692 	push	acc
      005779 08               [12] 7693 	inc	r0
      00577A E6               [12] 7694 	mov	a,@r0
      00577B C0 E0            [24] 7695 	push	acc
      00577D 8D 82            [24] 7696 	mov	dpl,r5
      00577F 8E 83            [24] 7697 	mov	dph,r6
      005781 8F F0            [24] 7698 	mov	b,r7
      005783 12 27 83         [24] 7699 	lcall	_stack_pop
      005786 AE 82            [24] 7700 	mov	r6,dpl
      005788 AF 83            [24] 7701 	mov	r7,dph
      00578A 15 81            [12] 7702 	dec	sp
      00578C 15 81            [12] 7703 	dec	sp
      00578E 15 81            [12] 7704 	dec	sp
      005790 D0 02            [24] 7705 	pop	ar2
      005792 D0 03            [24] 7706 	pop	ar3
      005794 D0 04            [24] 7707 	pop	ar4
      005796 EE               [12] 7708 	mov	a,r6
      005797 4F               [12] 7709 	orl	a,r7
      005798 70 31            [24] 7710 	jnz	00242$
      00579A 7D D2            [12] 7711 	mov	r5,#___str_10
      00579C 7C 8E            [12] 7712 	mov	r4,#(___str_10 >> 8)
      00579E 7B 80            [12] 7713 	mov	r3,#0x80
                                   7714 ;	calc.c:20: return;
      0057A0                       7715 00492$:
                                   7716 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0057A0 8D 82            [24] 7717 	mov	dpl,r5
      0057A2 8C 83            [24] 7718 	mov	dph,r4
      0057A4 8B F0            [24] 7719 	mov	b,r3
      0057A6 12 76 03         [24] 7720 	lcall	__gptrget
      0057A9 FF               [12] 7721 	mov	r7,a
      0057AA 70 03            [24] 7722 	jnz	01400$
      0057AC 02 59 D5         [24] 7723 	ljmp	00249$
      0057AF                       7724 01400$:
      0057AF 7E 00            [12] 7725 	mov	r6,#0x00
      0057B1 8F 82            [24] 7726 	mov	dpl,r7
      0057B3 8E 83            [24] 7727 	mov	dph,r6
      0057B5 C0 05            [24] 7728 	push	ar5
      0057B7 C0 04            [24] 7729 	push	ar4
      0057B9 C0 03            [24] 7730 	push	ar3
      0057BB 12 71 72         [24] 7731 	lcall	_putchar
      0057BE D0 03            [24] 7732 	pop	ar3
      0057C0 D0 04            [24] 7733 	pop	ar4
      0057C2 D0 05            [24] 7734 	pop	ar5
      0057C4 0D               [12] 7735 	inc	r5
                                   7736 ;	calc.c:295: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0057C5 BD 00 D8         [24] 7737 	cjne	r5,#0x00,00492$
      0057C8 0C               [12] 7738 	inc	r4
      0057C9 80 D5            [24] 7739 	sjmp	00492$
      0057CB                       7740 00242$:
                                   7741 ;	calc.c:296: else if (!stack_pop(ctx->ps, &d1)) {
      0057CB E5 08            [12] 7742 	mov	a,_bp
      0057CD 24 19            [12] 7743 	add	a,#0x19
      0057CF FF               [12] 7744 	mov	r7,a
      0057D0 E5 08            [12] 7745 	mov	a,_bp
      0057D2 24 0E            [12] 7746 	add	a,#0x0e
      0057D4 F8               [12] 7747 	mov	r0,a
      0057D5 A6 07            [24] 7748 	mov	@r0,ar7
      0057D7 08               [12] 7749 	inc	r0
      0057D8 76 00            [12] 7750 	mov	@r0,#0x00
      0057DA 08               [12] 7751 	inc	r0
      0057DB 76 40            [12] 7752 	mov	@r0,#0x40
      0057DD 8A 82            [24] 7753 	mov	dpl,r2
      0057DF 8B 83            [24] 7754 	mov	dph,r3
      0057E1 8C F0            [24] 7755 	mov	b,r4
      0057E3 12 76 03         [24] 7756 	lcall	__gptrget
      0057E6 FD               [12] 7757 	mov	r5,a
      0057E7 A3               [24] 7758 	inc	dptr
      0057E8 12 76 03         [24] 7759 	lcall	__gptrget
      0057EB FE               [12] 7760 	mov	r6,a
      0057EC A3               [24] 7761 	inc	dptr
      0057ED 12 76 03         [24] 7762 	lcall	__gptrget
      0057F0 FF               [12] 7763 	mov	r7,a
      0057F1 C0 04            [24] 7764 	push	ar4
      0057F3 C0 03            [24] 7765 	push	ar3
      0057F5 C0 02            [24] 7766 	push	ar2
      0057F7 E5 08            [12] 7767 	mov	a,_bp
      0057F9 24 0E            [12] 7768 	add	a,#0x0e
      0057FB F8               [12] 7769 	mov	r0,a
      0057FC E6               [12] 7770 	mov	a,@r0
      0057FD C0 E0            [24] 7771 	push	acc
      0057FF 08               [12] 7772 	inc	r0
      005800 E6               [12] 7773 	mov	a,@r0
      005801 C0 E0            [24] 7774 	push	acc
      005803 08               [12] 7775 	inc	r0
      005804 E6               [12] 7776 	mov	a,@r0
      005805 C0 E0            [24] 7777 	push	acc
      005807 8D 82            [24] 7778 	mov	dpl,r5
      005809 8E 83            [24] 7779 	mov	dph,r6
      00580B 8F F0            [24] 7780 	mov	b,r7
      00580D 12 27 83         [24] 7781 	lcall	_stack_pop
      005810 AE 82            [24] 7782 	mov	r6,dpl
      005812 AF 83            [24] 7783 	mov	r7,dph
      005814 15 81            [12] 7784 	dec	sp
      005816 15 81            [12] 7785 	dec	sp
      005818 15 81            [12] 7786 	dec	sp
      00581A D0 02            [24] 7787 	pop	ar2
      00581C D0 03            [24] 7788 	pop	ar3
      00581E D0 04            [24] 7789 	pop	ar4
      005820 EE               [12] 7790 	mov	a,r6
      005821 4F               [12] 7791 	orl	a,r7
      005822 70 68            [24] 7792 	jnz	00239$
                                   7793 ;	calc.c:297: (void)stack_push(ctx->ps, d0);
      005824 8A 82            [24] 7794 	mov	dpl,r2
      005826 8B 83            [24] 7795 	mov	dph,r3
      005828 8C F0            [24] 7796 	mov	b,r4
      00582A 12 76 03         [24] 7797 	lcall	__gptrget
      00582D FD               [12] 7798 	mov	r5,a
      00582E A3               [24] 7799 	inc	dptr
      00582F 12 76 03         [24] 7800 	lcall	__gptrget
      005832 FE               [12] 7801 	mov	r6,a
      005833 A3               [24] 7802 	inc	dptr
      005834 12 76 03         [24] 7803 	lcall	__gptrget
      005837 FF               [12] 7804 	mov	r7,a
      005838 E5 08            [12] 7805 	mov	a,_bp
      00583A 24 15            [12] 7806 	add	a,#0x15
      00583C F8               [12] 7807 	mov	r0,a
      00583D E6               [12] 7808 	mov	a,@r0
      00583E C0 E0            [24] 7809 	push	acc
      005840 08               [12] 7810 	inc	r0
      005841 E6               [12] 7811 	mov	a,@r0
      005842 C0 E0            [24] 7812 	push	acc
      005844 08               [12] 7813 	inc	r0
      005845 E6               [12] 7814 	mov	a,@r0
      005846 C0 E0            [24] 7815 	push	acc
      005848 08               [12] 7816 	inc	r0
      005849 E6               [12] 7817 	mov	a,@r0
      00584A C0 E0            [24] 7818 	push	acc
      00584C 8D 82            [24] 7819 	mov	dpl,r5
      00584E 8E 83            [24] 7820 	mov	dph,r6
      005850 8F F0            [24] 7821 	mov	b,r7
      005852 12 26 B5         [24] 7822 	lcall	_stack_push
      005855 E5 81            [12] 7823 	mov	a,sp
      005857 24 FC            [12] 7824 	add	a,#0xfc
      005859 F5 81            [12] 7825 	mov	sp,a
                                   7826 ;	calc.c:298: printstr("\r\nstack underflow\r\n");
      00585B 7D D2            [12] 7827 	mov	r5,#___str_10
      00585D 7C 8E            [12] 7828 	mov	r4,#(___str_10 >> 8)
      00585F 7B 80            [12] 7829 	mov	r3,#0x80
                                   7830 ;	calc.c:20: return;
      005861                       7831 00495$:
                                   7832 ;	calc.c:18: for (; *s; s++) putchar(*s);
      005861 8D 82            [24] 7833 	mov	dpl,r5
      005863 8C 83            [24] 7834 	mov	dph,r4
      005865 8B F0            [24] 7835 	mov	b,r3
      005867 12 76 03         [24] 7836 	lcall	__gptrget
      00586A FF               [12] 7837 	mov	r7,a
      00586B 70 03            [24] 7838 	jnz	01403$
      00586D 02 59 D5         [24] 7839 	ljmp	00249$
      005870                       7840 01403$:
      005870 7E 00            [12] 7841 	mov	r6,#0x00
      005872 8F 82            [24] 7842 	mov	dpl,r7
      005874 8E 83            [24] 7843 	mov	dph,r6
      005876 C0 05            [24] 7844 	push	ar5
      005878 C0 04            [24] 7845 	push	ar4
      00587A C0 03            [24] 7846 	push	ar3
      00587C 12 71 72         [24] 7847 	lcall	_putchar
      00587F D0 03            [24] 7848 	pop	ar3
      005881 D0 04            [24] 7849 	pop	ar4
      005883 D0 05            [24] 7850 	pop	ar5
      005885 0D               [12] 7851 	inc	r5
                                   7852 ;	calc.c:298: printstr("\r\nstack underflow\r\n");
      005886 BD 00 D8         [24] 7853 	cjne	r5,#0x00,00495$
      005889 0C               [12] 7854 	inc	r4
      00588A 80 D5            [24] 7855 	sjmp	00495$
      00588C                       7856 00239$:
                                   7857 ;	calc.c:300: d1 <<= d0;
      00588C E5 08            [12] 7858 	mov	a,_bp
      00588E 24 15            [12] 7859 	add	a,#0x15
      005890 F8               [12] 7860 	mov	r0,a
      005891 86 F0            [24] 7861 	mov	b,@r0
      005893 05 F0            [12] 7862 	inc	b
      005895 E5 08            [12] 7863 	mov	a,_bp
      005897 24 19            [12] 7864 	add	a,#0x19
      005899 F8               [12] 7865 	mov	r0,a
      00589A 80 12            [24] 7866 	sjmp	01406$
      00589C                       7867 01405$:
      00589C E6               [12] 7868 	mov	a,@r0
      00589D 26               [12] 7869 	add	a,@r0
      00589E F6               [12] 7870 	mov	@r0,a
      00589F 08               [12] 7871 	inc	r0
      0058A0 E6               [12] 7872 	mov	a,@r0
      0058A1 33               [12] 7873 	rlc	a
      0058A2 F6               [12] 7874 	mov	@r0,a
      0058A3 08               [12] 7875 	inc	r0
      0058A4 E6               [12] 7876 	mov	a,@r0
      0058A5 33               [12] 7877 	rlc	a
      0058A6 F6               [12] 7878 	mov	@r0,a
      0058A7 08               [12] 7879 	inc	r0
      0058A8 E6               [12] 7880 	mov	a,@r0
      0058A9 33               [12] 7881 	rlc	a
      0058AA F6               [12] 7882 	mov	@r0,a
      0058AB 18               [12] 7883 	dec	r0
      0058AC 18               [12] 7884 	dec	r0
      0058AD 18               [12] 7885 	dec	r0
      0058AE                       7886 01406$:
      0058AE D5 F0 EB         [24] 7887 	djnz	b,01405$
                                   7888 ;	calc.c:301: (void)stack_push(ctx->ps, d1);
      0058B1 8A 82            [24] 7889 	mov	dpl,r2
      0058B3 8B 83            [24] 7890 	mov	dph,r3
      0058B5 8C F0            [24] 7891 	mov	b,r4
      0058B7 12 76 03         [24] 7892 	lcall	__gptrget
      0058BA FA               [12] 7893 	mov	r2,a
      0058BB A3               [24] 7894 	inc	dptr
      0058BC 12 76 03         [24] 7895 	lcall	__gptrget
      0058BF FB               [12] 7896 	mov	r3,a
      0058C0 A3               [24] 7897 	inc	dptr
      0058C1 12 76 03         [24] 7898 	lcall	__gptrget
      0058C4 FC               [12] 7899 	mov	r4,a
      0058C5 E5 08            [12] 7900 	mov	a,_bp
      0058C7 24 19            [12] 7901 	add	a,#0x19
      0058C9 F8               [12] 7902 	mov	r0,a
      0058CA E6               [12] 7903 	mov	a,@r0
      0058CB C0 E0            [24] 7904 	push	acc
      0058CD 08               [12] 7905 	inc	r0
      0058CE E6               [12] 7906 	mov	a,@r0
      0058CF C0 E0            [24] 7907 	push	acc
      0058D1 08               [12] 7908 	inc	r0
      0058D2 E6               [12] 7909 	mov	a,@r0
      0058D3 C0 E0            [24] 7910 	push	acc
      0058D5 08               [12] 7911 	inc	r0
      0058D6 E6               [12] 7912 	mov	a,@r0
      0058D7 C0 E0            [24] 7913 	push	acc
      0058D9 8A 82            [24] 7914 	mov	dpl,r2
      0058DB 8B 83            [24] 7915 	mov	dph,r3
      0058DD 8C F0            [24] 7916 	mov	b,r4
      0058DF 12 26 B5         [24] 7917 	lcall	_stack_push
      0058E2 E5 81            [12] 7918 	mov	a,sp
      0058E4 24 FC            [12] 7919 	add	a,#0xfc
      0058E6 F5 81            [12] 7920 	mov	sp,a
                                   7921 ;	calc.c:303: break;
      0058E8 02 59 D5         [24] 7922 	ljmp	00249$
                                   7923 ;	calc.c:304: case '~':
      0058EB                       7924 00244$:
                                   7925 ;	calc.c:305: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0058EB E5 08            [12] 7926 	mov	a,_bp
      0058ED 24 15            [12] 7927 	add	a,#0x15
      0058EF FF               [12] 7928 	mov	r7,a
      0058F0 E5 08            [12] 7929 	mov	a,_bp
      0058F2 24 0E            [12] 7930 	add	a,#0x0e
      0058F4 F8               [12] 7931 	mov	r0,a
      0058F5 A6 07            [24] 7932 	mov	@r0,ar7
      0058F7 08               [12] 7933 	inc	r0
      0058F8 76 00            [12] 7934 	mov	@r0,#0x00
      0058FA 08               [12] 7935 	inc	r0
      0058FB 76 40            [12] 7936 	mov	@r0,#0x40
      0058FD E5 08            [12] 7937 	mov	a,_bp
      0058FF 24 12            [12] 7938 	add	a,#0x12
      005901 F8               [12] 7939 	mov	r0,a
      005902 74 11            [12] 7940 	mov	a,#0x11
      005904 26               [12] 7941 	add	a,@r0
      005905 FA               [12] 7942 	mov	r2,a
      005906 74 40            [12] 7943 	mov	a,#0x40
      005908 08               [12] 7944 	inc	r0
      005909 36               [12] 7945 	addc	a,@r0
      00590A FB               [12] 7946 	mov	r3,a
      00590B 08               [12] 7947 	inc	r0
      00590C 86 04            [24] 7948 	mov	ar4,@r0
      00590E 8A 82            [24] 7949 	mov	dpl,r2
      005910 8B 83            [24] 7950 	mov	dph,r3
      005912 8C F0            [24] 7951 	mov	b,r4
      005914 12 76 03         [24] 7952 	lcall	__gptrget
      005917 FD               [12] 7953 	mov	r5,a
      005918 A3               [24] 7954 	inc	dptr
      005919 12 76 03         [24] 7955 	lcall	__gptrget
      00591C FE               [12] 7956 	mov	r6,a
      00591D A3               [24] 7957 	inc	dptr
      00591E 12 76 03         [24] 7958 	lcall	__gptrget
      005921 FF               [12] 7959 	mov	r7,a
      005922 C0 04            [24] 7960 	push	ar4
      005924 C0 03            [24] 7961 	push	ar3
      005926 C0 02            [24] 7962 	push	ar2
      005928 E5 08            [12] 7963 	mov	a,_bp
      00592A 24 0E            [12] 7964 	add	a,#0x0e
      00592C F8               [12] 7965 	mov	r0,a
      00592D E6               [12] 7966 	mov	a,@r0
      00592E C0 E0            [24] 7967 	push	acc
      005930 08               [12] 7968 	inc	r0
      005931 E6               [12] 7969 	mov	a,@r0
      005932 C0 E0            [24] 7970 	push	acc
      005934 08               [12] 7971 	inc	r0
      005935 E6               [12] 7972 	mov	a,@r0
      005936 C0 E0            [24] 7973 	push	acc
      005938 8D 82            [24] 7974 	mov	dpl,r5
      00593A 8E 83            [24] 7975 	mov	dph,r6
      00593C 8F F0            [24] 7976 	mov	b,r7
      00593E 12 27 83         [24] 7977 	lcall	_stack_pop
      005941 AE 82            [24] 7978 	mov	r6,dpl
      005943 AF 83            [24] 7979 	mov	r7,dph
      005945 15 81            [12] 7980 	dec	sp
      005947 15 81            [12] 7981 	dec	sp
      005949 15 81            [12] 7982 	dec	sp
      00594B D0 02            [24] 7983 	pop	ar2
      00594D D0 03            [24] 7984 	pop	ar3
      00594F D0 04            [24] 7985 	pop	ar4
      005951 EE               [12] 7986 	mov	a,r6
      005952 4F               [12] 7987 	orl	a,r7
      005953 70 2E            [24] 7988 	jnz	00246$
      005955 7D D2            [12] 7989 	mov	r5,#___str_10
      005957 7C 8E            [12] 7990 	mov	r4,#(___str_10 >> 8)
      005959 7B 80            [12] 7991 	mov	r3,#0x80
                                   7992 ;	calc.c:20: return;
      00595B                       7993 00498$:
                                   7994 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00595B 8D 82            [24] 7995 	mov	dpl,r5
      00595D 8C 83            [24] 7996 	mov	dph,r4
      00595F 8B F0            [24] 7997 	mov	b,r3
      005961 12 76 03         [24] 7998 	lcall	__gptrget
      005964 FF               [12] 7999 	mov	r7,a
      005965 60 6E            [24] 8000 	jz	00249$
      005967 7E 00            [12] 8001 	mov	r6,#0x00
      005969 8F 82            [24] 8002 	mov	dpl,r7
      00596B 8E 83            [24] 8003 	mov	dph,r6
      00596D C0 05            [24] 8004 	push	ar5
      00596F C0 04            [24] 8005 	push	ar4
      005971 C0 03            [24] 8006 	push	ar3
      005973 12 71 72         [24] 8007 	lcall	_putchar
      005976 D0 03            [24] 8008 	pop	ar3
      005978 D0 04            [24] 8009 	pop	ar4
      00597A D0 05            [24] 8010 	pop	ar5
      00597C 0D               [12] 8011 	inc	r5
                                   8012 ;	calc.c:305: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00597D BD 00 DB         [24] 8013 	cjne	r5,#0x00,00498$
      005980 0C               [12] 8014 	inc	r4
      005981 80 D8            [24] 8015 	sjmp	00498$
      005983                       8016 00246$:
                                   8017 ;	calc.c:307: d0 = ~d0;
      005983 E5 08            [12] 8018 	mov	a,_bp
      005985 24 15            [12] 8019 	add	a,#0x15
      005987 F8               [12] 8020 	mov	r0,a
      005988 E6               [12] 8021 	mov	a,@r0
      005989 F4               [12] 8022 	cpl	a
      00598A F6               [12] 8023 	mov	@r0,a
      00598B 08               [12] 8024 	inc	r0
      00598C E6               [12] 8025 	mov	a,@r0
      00598D F4               [12] 8026 	cpl	a
      00598E F6               [12] 8027 	mov	@r0,a
      00598F 08               [12] 8028 	inc	r0
      005990 E6               [12] 8029 	mov	a,@r0
      005991 F4               [12] 8030 	cpl	a
      005992 F6               [12] 8031 	mov	@r0,a
      005993 08               [12] 8032 	inc	r0
      005994 E6               [12] 8033 	mov	a,@r0
      005995 F4               [12] 8034 	cpl	a
      005996 F6               [12] 8035 	mov	@r0,a
                                   8036 ;	calc.c:308: (void)stack_push(ctx->ps, d0);
      005997 8A 82            [24] 8037 	mov	dpl,r2
      005999 8B 83            [24] 8038 	mov	dph,r3
      00599B 8C F0            [24] 8039 	mov	b,r4
      00599D 12 76 03         [24] 8040 	lcall	__gptrget
      0059A0 FA               [12] 8041 	mov	r2,a
      0059A1 A3               [24] 8042 	inc	dptr
      0059A2 12 76 03         [24] 8043 	lcall	__gptrget
      0059A5 FB               [12] 8044 	mov	r3,a
      0059A6 A3               [24] 8045 	inc	dptr
      0059A7 12 76 03         [24] 8046 	lcall	__gptrget
      0059AA FC               [12] 8047 	mov	r4,a
      0059AB E5 08            [12] 8048 	mov	a,_bp
      0059AD 24 15            [12] 8049 	add	a,#0x15
      0059AF F8               [12] 8050 	mov	r0,a
      0059B0 E6               [12] 8051 	mov	a,@r0
      0059B1 C0 E0            [24] 8052 	push	acc
      0059B3 08               [12] 8053 	inc	r0
      0059B4 E6               [12] 8054 	mov	a,@r0
      0059B5 C0 E0            [24] 8055 	push	acc
      0059B7 08               [12] 8056 	inc	r0
      0059B8 E6               [12] 8057 	mov	a,@r0
      0059B9 C0 E0            [24] 8058 	push	acc
      0059BB 08               [12] 8059 	inc	r0
      0059BC E6               [12] 8060 	mov	a,@r0
      0059BD C0 E0            [24] 8061 	push	acc
      0059BF 8A 82            [24] 8062 	mov	dpl,r2
      0059C1 8B 83            [24] 8063 	mov	dph,r3
      0059C3 8C F0            [24] 8064 	mov	b,r4
      0059C5 12 26 B5         [24] 8065 	lcall	_stack_push
      0059C8 E5 81            [12] 8066 	mov	a,sp
      0059CA 24 FC            [12] 8067 	add	a,#0xfc
      0059CC F5 81            [12] 8068 	mov	sp,a
                                   8069 ;	calc.c:310: break;
                                   8070 ;	calc.c:311: default:
      0059CE 80 05            [24] 8071 	sjmp	00249$
      0059D0                       8072 00248$:
                                   8073 ;	calc.c:312: return UNDEF;
      0059D0 90 80 00         [24] 8074 	mov	dptr,#0x8000
                                   8075 ;	calc.c:313: }
      0059D3 80 03            [24] 8076 	sjmp	00500$
      0059D5                       8077 00249$:
                                   8078 ;	calc.c:315: return 1;
      0059D5 90 00 01         [24] 8079 	mov	dptr,#0x0001
      0059D8                       8080 00500$:
                                   8081 ;	calc.c:316: }
      0059D8 85 08 81         [24] 8082 	mov	sp,_bp
      0059DB D0 08            [24] 8083 	pop	_bp
      0059DD 22               [24] 8084 	ret
                                   8085 ;------------------------------------------------------------
                                   8086 ;Allocation info for local variables in function 'push_acc'
                                   8087 ;------------------------------------------------------------
                                   8088 ;delta                     Allocated to stack - _bp -5
                                   8089 ;_ctx                      Allocated to stack - _bp +5
                                   8090 ;ctx                       Allocated to registers r2 r3 r4 
                                   8091 ;__1310720127              Allocated to registers 
                                   8092 ;s                         Allocated to registers r5 r6 r7 
                                   8093 ;sloc0                     Allocated to stack - _bp +1
                                   8094 ;------------------------------------------------------------
                                   8095 ;	calc.c:318: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   8096 ;	-----------------------------------------
                                   8097 ;	 function push_acc
                                   8098 ;	-----------------------------------------
      0059DE                       8099 _push_acc:
      0059DE C0 08            [24] 8100 	push	_bp
      0059E0 E5 81            [12] 8101 	mov	a,sp
      0059E2 F5 08            [12] 8102 	mov	_bp,a
      0059E4 24 07            [12] 8103 	add	a,#0x07
      0059E6 F5 81            [12] 8104 	mov	sp,a
      0059E8 C8               [12] 8105 	xch	a,r0
      0059E9 E5 08            [12] 8106 	mov	a,_bp
      0059EB 24 05            [12] 8107 	add	a,#0x05
      0059ED C8               [12] 8108 	xch	a,r0
      0059EE A6 82            [24] 8109 	mov	@r0,dpl
      0059F0 08               [12] 8110 	inc	r0
      0059F1 A6 83            [24] 8111 	mov	@r0,dph
      0059F3 08               [12] 8112 	inc	r0
      0059F4 A6 F0            [24] 8113 	mov	@r0,b
                                   8114 ;	calc.c:319: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      0059F6 E5 08            [12] 8115 	mov	a,_bp
      0059F8 24 05            [12] 8116 	add	a,#0x05
      0059FA F8               [12] 8117 	mov	r0,a
      0059FB 86 02            [24] 8118 	mov	ar2,@r0
      0059FD 08               [12] 8119 	inc	r0
      0059FE 86 03            [24] 8120 	mov	ar3,@r0
      005A00 08               [12] 8121 	inc	r0
      005A01 86 04            [24] 8122 	mov	ar4,@r0
                                   8123 ;	calc.c:323: ctx->acc_valid = 0;
      005A03 74 06            [12] 8124 	mov	a,#0x06
      005A05 2A               [12] 8125 	add	a,r2
      005A06 FD               [12] 8126 	mov	r5,a
      005A07 E4               [12] 8127 	clr	a
      005A08 3B               [12] 8128 	addc	a,r3
      005A09 FE               [12] 8129 	mov	r6,a
      005A0A 8C 07            [24] 8130 	mov	ar7,r4
      005A0C 8D 82            [24] 8131 	mov	dpl,r5
      005A0E 8E 83            [24] 8132 	mov	dph,r6
      005A10 8F F0            [24] 8133 	mov	b,r7
      005A12 E4               [12] 8134 	clr	a
      005A13 12 71 57         [24] 8135 	lcall	__gptrput
                                   8136 ;	calc.c:324: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      005A16 74 02            [12] 8137 	mov	a,#0x02
      005A18 2A               [12] 8138 	add	a,r2
      005A19 FF               [12] 8139 	mov	r7,a
      005A1A E4               [12] 8140 	clr	a
      005A1B 3B               [12] 8141 	addc	a,r3
      005A1C FD               [12] 8142 	mov	r5,a
      005A1D 8C 06            [24] 8143 	mov	ar6,r4
      005A1F 8F 82            [24] 8144 	mov	dpl,r7
      005A21 8D 83            [24] 8145 	mov	dph,r5
      005A23 8E F0            [24] 8146 	mov	b,r6
      005A25 A8 08            [24] 8147 	mov	r0,_bp
      005A27 08               [12] 8148 	inc	r0
      005A28 12 76 03         [24] 8149 	lcall	__gptrget
      005A2B F6               [12] 8150 	mov	@r0,a
      005A2C A3               [24] 8151 	inc	dptr
      005A2D 12 76 03         [24] 8152 	lcall	__gptrget
      005A30 08               [12] 8153 	inc	r0
      005A31 F6               [12] 8154 	mov	@r0,a
      005A32 A3               [24] 8155 	inc	dptr
      005A33 12 76 03         [24] 8156 	lcall	__gptrget
      005A36 08               [12] 8157 	inc	r0
      005A37 F6               [12] 8158 	mov	@r0,a
      005A38 A3               [24] 8159 	inc	dptr
      005A39 12 76 03         [24] 8160 	lcall	__gptrget
      005A3C 08               [12] 8161 	inc	r0
      005A3D F6               [12] 8162 	mov	@r0,a
      005A3E 74 11            [12] 8163 	mov	a,#0x11
      005A40 2A               [12] 8164 	add	a,r2
      005A41 FA               [12] 8165 	mov	r2,a
      005A42 74 40            [12] 8166 	mov	a,#0x40
      005A44 3B               [12] 8167 	addc	a,r3
      005A45 FB               [12] 8168 	mov	r3,a
      005A46 8C 07            [24] 8169 	mov	ar7,r4
      005A48 8A 82            [24] 8170 	mov	dpl,r2
      005A4A 8B 83            [24] 8171 	mov	dph,r3
      005A4C 8F F0            [24] 8172 	mov	b,r7
      005A4E 12 76 03         [24] 8173 	lcall	__gptrget
      005A51 FA               [12] 8174 	mov	r2,a
      005A52 A3               [24] 8175 	inc	dptr
      005A53 12 76 03         [24] 8176 	lcall	__gptrget
      005A56 FB               [12] 8177 	mov	r3,a
      005A57 A3               [24] 8178 	inc	dptr
      005A58 12 76 03         [24] 8179 	lcall	__gptrget
      005A5B FF               [12] 8180 	mov	r7,a
      005A5C A8 08            [24] 8181 	mov	r0,_bp
      005A5E 08               [12] 8182 	inc	r0
      005A5F E6               [12] 8183 	mov	a,@r0
      005A60 C0 E0            [24] 8184 	push	acc
      005A62 08               [12] 8185 	inc	r0
      005A63 E6               [12] 8186 	mov	a,@r0
      005A64 C0 E0            [24] 8187 	push	acc
      005A66 08               [12] 8188 	inc	r0
      005A67 E6               [12] 8189 	mov	a,@r0
      005A68 C0 E0            [24] 8190 	push	acc
      005A6A 08               [12] 8191 	inc	r0
      005A6B E6               [12] 8192 	mov	a,@r0
      005A6C C0 E0            [24] 8193 	push	acc
      005A6E 8A 82            [24] 8194 	mov	dpl,r2
      005A70 8B 83            [24] 8195 	mov	dph,r3
      005A72 8F F0            [24] 8196 	mov	b,r7
      005A74 12 26 B5         [24] 8197 	lcall	_stack_push
      005A77 AE 82            [24] 8198 	mov	r6,dpl
      005A79 AF 83            [24] 8199 	mov	r7,dph
      005A7B E5 81            [12] 8200 	mov	a,sp
      005A7D 24 FC            [12] 8201 	add	a,#0xfc
      005A7F F5 81            [12] 8202 	mov	sp,a
      005A81 EE               [12] 8203 	mov	a,r6
      005A82 4F               [12] 8204 	orl	a,r7
      005A83 70 2E            [24] 8205 	jnz	00102$
      005A85 7D 21            [12] 8206 	mov	r5,#___str_13
      005A87 7E 8F            [12] 8207 	mov	r6,#(___str_13 >> 8)
      005A89 7F 80            [12] 8208 	mov	r7,#0x80
                                   8209 ;	calc.c:20: return;
      005A8B                       8210 00109$:
                                   8211 ;	calc.c:18: for (; *s; s++) putchar(*s);
      005A8B 8D 82            [24] 8212 	mov	dpl,r5
      005A8D 8E 83            [24] 8213 	mov	dph,r6
      005A8F 8F F0            [24] 8214 	mov	b,r7
      005A91 12 76 03         [24] 8215 	lcall	__gptrget
      005A94 FC               [12] 8216 	mov	r4,a
      005A95 60 1C            [24] 8217 	jz	00102$
      005A97 7B 00            [12] 8218 	mov	r3,#0x00
      005A99 8C 82            [24] 8219 	mov	dpl,r4
      005A9B 8B 83            [24] 8220 	mov	dph,r3
      005A9D C0 07            [24] 8221 	push	ar7
      005A9F C0 06            [24] 8222 	push	ar6
      005AA1 C0 05            [24] 8223 	push	ar5
      005AA3 12 71 72         [24] 8224 	lcall	_putchar
      005AA6 D0 05            [24] 8225 	pop	ar5
      005AA8 D0 06            [24] 8226 	pop	ar6
      005AAA D0 07            [24] 8227 	pop	ar7
      005AAC 0D               [12] 8228 	inc	r5
                                   8229 ;	calc.c:324: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      005AAD BD 00 DB         [24] 8230 	cjne	r5,#0x00,00109$
      005AB0 0E               [12] 8231 	inc	r6
      005AB1 80 D8            [24] 8232 	sjmp	00109$
      005AB3                       8233 00102$:
                                   8234 ;	calc.c:326: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      005AB3 E5 08            [12] 8235 	mov	a,_bp
      005AB5 24 FB            [12] 8236 	add	a,#0xfb
      005AB7 F8               [12] 8237 	mov	r0,a
      005AB8 86 05            [24] 8238 	mov	ar5,@r0
      005ABA 08               [12] 8239 	inc	r0
      005ABB 86 06            [24] 8240 	mov	ar6,@r0
      005ABD 08               [12] 8241 	inc	r0
      005ABE 86 07            [24] 8242 	mov	ar7,@r0
      005AC0 74 02            [12] 8243 	mov	a,#0x02
      005AC2 2D               [12] 8244 	add	a,r5
      005AC3 FA               [12] 8245 	mov	r2,a
      005AC4 E4               [12] 8246 	clr	a
      005AC5 3E               [12] 8247 	addc	a,r6
      005AC6 FB               [12] 8248 	mov	r3,a
      005AC7 8F 04            [24] 8249 	mov	ar4,r7
      005AC9 8A 82            [24] 8250 	mov	dpl,r2
      005ACB 8B 83            [24] 8251 	mov	dph,r3
      005ACD 8C F0            [24] 8252 	mov	b,r4
      005ACF 12 76 03         [24] 8253 	lcall	__gptrget
      005AD2 FA               [12] 8254 	mov	r2,a
      005AD3 A3               [24] 8255 	inc	dptr
      005AD4 12 76 03         [24] 8256 	lcall	__gptrget
      005AD7 FB               [12] 8257 	mov	r3,a
      005AD8 BA 02 29         [24] 8258 	cjne	r2,#0x02,00104$
      005ADB BB 00 26         [24] 8259 	cjne	r3,#0x00,00104$
      005ADE C0 05            [24] 8260 	push	ar5
      005AE0 C0 06            [24] 8261 	push	ar6
      005AE2 C0 07            [24] 8262 	push	ar7
      005AE4 E5 08            [12] 8263 	mov	a,_bp
      005AE6 24 05            [12] 8264 	add	a,#0x05
      005AE8 F8               [12] 8265 	mov	r0,a
      005AE9 86 82            [24] 8266 	mov	dpl,@r0
      005AEB 08               [12] 8267 	inc	r0
      005AEC 86 83            [24] 8268 	mov	dph,@r0
      005AEE 08               [12] 8269 	inc	r0
      005AEF 86 F0            [24] 8270 	mov	b,@r0
      005AF1 12 34 7E         [24] 8271 	lcall	_operator
      005AF4 AE 82            [24] 8272 	mov	r6,dpl
      005AF6 AF 83            [24] 8273 	mov	r7,dph
      005AF8 15 81            [12] 8274 	dec	sp
      005AFA 15 81            [12] 8275 	dec	sp
      005AFC 15 81            [12] 8276 	dec	sp
      005AFE 8E 82            [24] 8277 	mov	dpl,r6
      005B00 8F 83            [24] 8278 	mov	dph,r7
      005B02 80 03            [24] 8279 	sjmp	00111$
      005B04                       8280 00104$:
                                   8281 ;	calc.c:327: else return 1;
      005B04 90 00 01         [24] 8282 	mov	dptr,#0x0001
      005B07                       8283 00111$:
                                   8284 ;	calc.c:328: }
      005B07 85 08 81         [24] 8285 	mov	sp,_bp
      005B0A D0 08            [24] 8286 	pop	_bp
      005B0C 22               [24] 8287 	ret
                                   8288 ;------------------------------------------------------------
                                   8289 ;Allocation info for local variables in function 'reset_acc'
                                   8290 ;------------------------------------------------------------
                                   8291 ;delta                     Allocated to stack - _bp -5
                                   8292 ;_ctx                      Allocated to registers r5 r6 r7 
                                   8293 ;ctx                       Allocated to registers r5 r6 r7 
                                   8294 ;------------------------------------------------------------
                                   8295 ;	calc.c:330: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   8296 ;	-----------------------------------------
                                   8297 ;	 function reset_acc
                                   8298 ;	-----------------------------------------
      005B0D                       8299 _reset_acc:
      005B0D C0 08            [24] 8300 	push	_bp
      005B0F 85 81 08         [24] 8301 	mov	_bp,sp
      005B12 AD 82            [24] 8302 	mov	r5,dpl
      005B14 AE 83            [24] 8303 	mov	r6,dph
      005B16 AF F0            [24] 8304 	mov	r7,b
                                   8305 ;	calc.c:331: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   8306 ;	calc.c:333: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      005B18 E5 08            [12] 8307 	mov	a,_bp
      005B1A 24 FB            [12] 8308 	add	a,#0xfb
      005B1C F8               [12] 8309 	mov	r0,a
      005B1D 86 02            [24] 8310 	mov	ar2,@r0
      005B1F 08               [12] 8311 	inc	r0
      005B20 86 03            [24] 8312 	mov	ar3,@r0
      005B22 08               [12] 8313 	inc	r0
      005B23 86 04            [24] 8314 	mov	ar4,@r0
      005B25 74 02            [12] 8315 	mov	a,#0x02
      005B27 2A               [12] 8316 	add	a,r2
      005B28 FA               [12] 8317 	mov	r2,a
      005B29 E4               [12] 8318 	clr	a
      005B2A 3B               [12] 8319 	addc	a,r3
      005B2B FB               [12] 8320 	mov	r3,a
      005B2C 8A 82            [24] 8321 	mov	dpl,r2
      005B2E 8B 83            [24] 8322 	mov	dph,r3
      005B30 8C F0            [24] 8323 	mov	b,r4
      005B32 12 76 03         [24] 8324 	lcall	__gptrget
      005B35 FA               [12] 8325 	mov	r2,a
      005B36 A3               [24] 8326 	inc	dptr
      005B37 12 76 03         [24] 8327 	lcall	__gptrget
      005B3A FB               [12] 8328 	mov	r3,a
      005B3B BA 07 16         [24] 8329 	cjne	r2,#0x07,00102$
      005B3E BB 00 13         [24] 8330 	cjne	r3,#0x00,00102$
      005B41 74 06            [12] 8331 	mov	a,#0x06
      005B43 2D               [12] 8332 	add	a,r5
      005B44 FA               [12] 8333 	mov	r2,a
      005B45 E4               [12] 8334 	clr	a
      005B46 3E               [12] 8335 	addc	a,r6
      005B47 FB               [12] 8336 	mov	r3,a
      005B48 8F 04            [24] 8337 	mov	ar4,r7
      005B4A 8A 82            [24] 8338 	mov	dpl,r2
      005B4C 8B 83            [24] 8339 	mov	dph,r3
      005B4E 8C F0            [24] 8340 	mov	b,r4
      005B50 E4               [12] 8341 	clr	a
      005B51 12 71 57         [24] 8342 	lcall	__gptrput
      005B54                       8343 00102$:
                                   8344 ;	calc.c:334: ctx->acc = 0l;
      005B54 74 02            [12] 8345 	mov	a,#0x02
      005B56 2D               [12] 8346 	add	a,r5
      005B57 FD               [12] 8347 	mov	r5,a
      005B58 E4               [12] 8348 	clr	a
      005B59 3E               [12] 8349 	addc	a,r6
      005B5A FE               [12] 8350 	mov	r6,a
      005B5B 8D 82            [24] 8351 	mov	dpl,r5
      005B5D 8E 83            [24] 8352 	mov	dph,r6
      005B5F 8F F0            [24] 8353 	mov	b,r7
      005B61 E4               [12] 8354 	clr	a
      005B62 12 71 57         [24] 8355 	lcall	__gptrput
      005B65 A3               [24] 8356 	inc	dptr
      005B66 12 71 57         [24] 8357 	lcall	__gptrput
      005B69 A3               [24] 8358 	inc	dptr
      005B6A 12 71 57         [24] 8359 	lcall	__gptrput
      005B6D A3               [24] 8360 	inc	dptr
      005B6E 12 71 57         [24] 8361 	lcall	__gptrput
                                   8362 ;	calc.c:336: return 1;
      005B71 90 00 01         [24] 8363 	mov	dptr,#0x0001
                                   8364 ;	calc.c:337: }
      005B74 D0 08            [24] 8365 	pop	_bp
      005B76 22               [24] 8366 	ret
                                   8367 ;------------------------------------------------------------
                                   8368 ;Allocation info for local variables in function 'reset_base'
                                   8369 ;------------------------------------------------------------
                                   8370 ;delta                     Allocated to stack - _bp -5
                                   8371 ;_ctx                      Allocated to registers r5 r6 r7 
                                   8372 ;ctx                       Allocated to registers r5 r6 r7 
                                   8373 ;------------------------------------------------------------
                                   8374 ;	calc.c:339: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   8375 ;	-----------------------------------------
                                   8376 ;	 function reset_base
                                   8377 ;	-----------------------------------------
      005B77                       8378 _reset_base:
      005B77 C0 08            [24] 8379 	push	_bp
      005B79 85 81 08         [24] 8380 	mov	_bp,sp
      005B7C AD 82            [24] 8381 	mov	r5,dpl
      005B7E AE 83            [24] 8382 	mov	r6,dph
      005B80 AF F0            [24] 8383 	mov	r7,b
                                   8384 ;	calc.c:340: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   8385 ;	calc.c:344: switch (ctx->digit[0]) {
      005B82 74 07            [12] 8386 	mov	a,#0x07
      005B84 2D               [12] 8387 	add	a,r5
      005B85 FA               [12] 8388 	mov	r2,a
      005B86 E4               [12] 8389 	clr	a
      005B87 3E               [12] 8390 	addc	a,r6
      005B88 FB               [12] 8391 	mov	r3,a
      005B89 8F 04            [24] 8392 	mov	ar4,r7
      005B8B 8A 82            [24] 8393 	mov	dpl,r2
      005B8D 8B 83            [24] 8394 	mov	dph,r3
      005B8F 8C F0            [24] 8395 	mov	b,r4
      005B91 12 76 03         [24] 8396 	lcall	__gptrget
      005B94 FC               [12] 8397 	mov	r4,a
      005B95 BC 48 02         [24] 8398 	cjne	r4,#0x48,00124$
      005B98 80 0F            [24] 8399 	sjmp	00101$
      005B9A                       8400 00124$:
      005B9A BC 4F 02         [24] 8401 	cjne	r4,#0x4f,00125$
      005B9D 80 2E            [24] 8402 	sjmp	00103$
      005B9F                       8403 00125$:
      005B9F BC 68 02         [24] 8404 	cjne	r4,#0x68,00126$
      005BA2 80 17            [24] 8405 	sjmp	00102$
      005BA4                       8406 00126$:
                                   8407 ;	calc.c:345: case 'H':
      005BA4 BC 6F 48         [24] 8408 	cjne	r4,#0x6f,00105$
      005BA7 80 36            [24] 8409 	sjmp	00104$
      005BA9                       8410 00101$:
                                   8411 ;	calc.c:346: ctx->base = 16;
      005BA9 8D 82            [24] 8412 	mov	dpl,r5
      005BAB 8E 83            [24] 8413 	mov	dph,r6
      005BAD 8F F0            [24] 8414 	mov	b,r7
      005BAF 74 10            [12] 8415 	mov	a,#0x10
      005BB1 12 71 57         [24] 8416 	lcall	__gptrput
      005BB4 A3               [24] 8417 	inc	dptr
      005BB5 E4               [12] 8418 	clr	a
      005BB6 12 71 57         [24] 8419 	lcall	__gptrput
                                   8420 ;	calc.c:347: break;
                                   8421 ;	calc.c:348: case 'h':
      005BB9 80 34            [24] 8422 	sjmp	00105$
      005BBB                       8423 00102$:
                                   8424 ;	calc.c:349: ctx->base = 10;
      005BBB 8D 82            [24] 8425 	mov	dpl,r5
      005BBD 8E 83            [24] 8426 	mov	dph,r6
      005BBF 8F F0            [24] 8427 	mov	b,r7
      005BC1 74 0A            [12] 8428 	mov	a,#0x0a
      005BC3 12 71 57         [24] 8429 	lcall	__gptrput
      005BC6 A3               [24] 8430 	inc	dptr
      005BC7 E4               [12] 8431 	clr	a
      005BC8 12 71 57         [24] 8432 	lcall	__gptrput
                                   8433 ;	calc.c:350: break;
                                   8434 ;	calc.c:351: case 'O':
      005BCB 80 22            [24] 8435 	sjmp	00105$
      005BCD                       8436 00103$:
                                   8437 ;	calc.c:352: ctx->base = 8;
      005BCD 8D 82            [24] 8438 	mov	dpl,r5
      005BCF 8E 83            [24] 8439 	mov	dph,r6
      005BD1 8F F0            [24] 8440 	mov	b,r7
      005BD3 74 08            [12] 8441 	mov	a,#0x08
      005BD5 12 71 57         [24] 8442 	lcall	__gptrput
      005BD8 A3               [24] 8443 	inc	dptr
      005BD9 E4               [12] 8444 	clr	a
      005BDA 12 71 57         [24] 8445 	lcall	__gptrput
                                   8446 ;	calc.c:353: break;
                                   8447 ;	calc.c:354: case 'o':
      005BDD 80 10            [24] 8448 	sjmp	00105$
      005BDF                       8449 00104$:
                                   8450 ;	calc.c:355: ctx->base = 2;
      005BDF 8D 82            [24] 8451 	mov	dpl,r5
      005BE1 8E 83            [24] 8452 	mov	dph,r6
      005BE3 8F F0            [24] 8453 	mov	b,r7
      005BE5 74 02            [12] 8454 	mov	a,#0x02
      005BE7 12 71 57         [24] 8455 	lcall	__gptrput
      005BEA A3               [24] 8456 	inc	dptr
      005BEB E4               [12] 8457 	clr	a
      005BEC 12 71 57         [24] 8458 	lcall	__gptrput
                                   8459 ;	calc.c:357: }
      005BEF                       8460 00105$:
                                   8461 ;	calc.c:359: return 1;
      005BEF 90 00 01         [24] 8462 	mov	dptr,#0x0001
                                   8463 ;	calc.c:360: }
      005BF2 D0 08            [24] 8464 	pop	_bp
      005BF4 22               [24] 8465 	ret
                                   8466 ;------------------------------------------------------------
                                   8467 ;Allocation info for local variables in function 'status'
                                   8468 ;------------------------------------------------------------
                                   8469 ;delta                     Allocated to stack - _bp -5
                                   8470 ;_ctx                      Allocated to registers r5 r6 r7 
                                   8471 ;ctx                       Allocated to stack - _bp +19
                                   8472 ;vals                      Allocated to stack - _bp +11
                                   8473 ;n                         Allocated to stack - _bp +9
                                   8474 ;__1310720129              Allocated to registers 
                                   8475 ;s                         Allocated to registers r5 r6 r7 
                                   8476 ;__1310720131              Allocated to registers r5 r6 r7 r4 
                                   8477 ;d                         Allocated to registers 
                                   8478 ;__1310720001              Allocated to registers 
                                   8479 ;d                         Allocated to stack - _bp +22
                                   8480 ;mask                      Allocated to stack - _bp +26
                                   8481 ;__1310720133              Allocated to registers 
                                   8482 ;s                         Allocated to registers r3 r4 r5 
                                   8483 ;__1310720135              Allocated to registers r2 r3 r4 r5 
                                   8484 ;d                         Allocated to registers 
                                   8485 ;__1310720001              Allocated to registers 
                                   8486 ;d                         Allocated to stack - _bp +22
                                   8487 ;mask                      Allocated to stack - _bp +26
                                   8488 ;__1310720137              Allocated to registers 
                                   8489 ;s                         Allocated to registers r3 r4 r5 
                                   8490 ;__1310720139              Allocated to registers r4 r5 r6 r7 
                                   8491 ;d                         Allocated to registers 
                                   8492 ;__1310720001              Allocated to registers 
                                   8493 ;d                         Allocated to stack - _bp +22
                                   8494 ;mask                      Allocated to stack - _bp +26
                                   8495 ;__1310720141              Allocated to registers 
                                   8496 ;s                         Allocated to registers r3 r4 r5 
                                   8497 ;__1310720143              Allocated to registers r2 r3 r4 r5 
                                   8498 ;d                         Allocated to registers 
                                   8499 ;__1310720001              Allocated to registers 
                                   8500 ;d                         Allocated to stack - _bp +22
                                   8501 ;mask                      Allocated to stack - _bp +26
                                   8502 ;__1310720145              Allocated to registers 
                                   8503 ;s                         Allocated to registers r5 r6 r7 
                                   8504 ;__1310720147              Allocated to registers r4 r5 r6 r7 
                                   8505 ;d                         Allocated to registers 
                                   8506 ;__1310720001              Allocated to registers 
                                   8507 ;d                         Allocated to stack - _bp +22
                                   8508 ;mask                      Allocated to stack - _bp +26
                                   8509 ;__1310720149              Allocated to registers 
                                   8510 ;s                         Allocated to registers r5 r6 r7 
                                   8511 ;sloc0                     Allocated to stack - _bp +1
                                   8512 ;sloc1                     Allocated to stack - _bp +4
                                   8513 ;sloc2                     Allocated to stack - _bp +7
                                   8514 ;------------------------------------------------------------
                                   8515 ;	calc.c:362: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   8516 ;	-----------------------------------------
                                   8517 ;	 function status
                                   8518 ;	-----------------------------------------
      005BF5                       8519 _status:
      005BF5 C0 08            [24] 8520 	push	_bp
      005BF7 E5 81            [12] 8521 	mov	a,sp
      005BF9 F5 08            [12] 8522 	mov	_bp,a
      005BFB 24 1D            [12] 8523 	add	a,#0x1d
      005BFD F5 81            [12] 8524 	mov	sp,a
      005BFF AD 82            [24] 8525 	mov	r5,dpl
      005C01 AE 83            [24] 8526 	mov	r6,dph
      005C03 AF F0            [24] 8527 	mov	r7,b
                                   8528 ;	calc.c:363: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      005C05 E5 08            [12] 8529 	mov	a,_bp
      005C07 24 13            [12] 8530 	add	a,#0x13
      005C09 F8               [12] 8531 	mov	r0,a
      005C0A A6 05            [24] 8532 	mov	@r0,ar5
      005C0C 08               [12] 8533 	inc	r0
      005C0D A6 06            [24] 8534 	mov	@r0,ar6
      005C0F 08               [12] 8535 	inc	r0
      005C10 A6 07            [24] 8536 	mov	@r0,ar7
                                   8537 ;	calc.c:369: printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
      005C12 E5 08            [12] 8538 	mov	a,_bp
      005C14 24 13            [12] 8539 	add	a,#0x13
      005C16 F8               [12] 8540 	mov	r0,a
      005C17 86 82            [24] 8541 	mov	dpl,@r0
      005C19 08               [12] 8542 	inc	r0
      005C1A 86 83            [24] 8543 	mov	dph,@r0
      005C1C 08               [12] 8544 	inc	r0
      005C1D 86 F0            [24] 8545 	mov	b,@r0
      005C1F E5 08            [12] 8546 	mov	a,_bp
      005C21 24 07            [12] 8547 	add	a,#0x07
      005C23 F9               [12] 8548 	mov	r1,a
      005C24 12 76 03         [24] 8549 	lcall	__gptrget
      005C27 F7               [12] 8550 	mov	@r1,a
      005C28 A3               [24] 8551 	inc	dptr
      005C29 12 76 03         [24] 8552 	lcall	__gptrget
      005C2C 09               [12] 8553 	inc	r1
      005C2D F7               [12] 8554 	mov	@r1,a
      005C2E E5 08            [12] 8555 	mov	a,_bp
      005C30 24 13            [12] 8556 	add	a,#0x13
      005C32 F8               [12] 8557 	mov	r0,a
      005C33 A9 08            [24] 8558 	mov	r1,_bp
      005C35 09               [12] 8559 	inc	r1
      005C36 74 14            [12] 8560 	mov	a,#0x14
      005C38 26               [12] 8561 	add	a,@r0
      005C39 F7               [12] 8562 	mov	@r1,a
      005C3A 74 40            [12] 8563 	mov	a,#0x40
      005C3C 08               [12] 8564 	inc	r0
      005C3D 36               [12] 8565 	addc	a,@r0
      005C3E 09               [12] 8566 	inc	r1
      005C3F F7               [12] 8567 	mov	@r1,a
      005C40 08               [12] 8568 	inc	r0
      005C41 09               [12] 8569 	inc	r1
      005C42 E6               [12] 8570 	mov	a,@r0
      005C43 F7               [12] 8571 	mov	@r1,a
      005C44 A8 08            [24] 8572 	mov	r0,_bp
      005C46 08               [12] 8573 	inc	r0
      005C47 86 82            [24] 8574 	mov	dpl,@r0
      005C49 08               [12] 8575 	inc	r0
      005C4A 86 83            [24] 8576 	mov	dph,@r0
      005C4C 08               [12] 8577 	inc	r0
      005C4D 86 F0            [24] 8578 	mov	b,@r0
      005C4F 12 76 03         [24] 8579 	lcall	__gptrget
      005C52 FA               [12] 8580 	mov	r2,a
      005C53 A3               [24] 8581 	inc	dptr
      005C54 12 76 03         [24] 8582 	lcall	__gptrget
      005C57 FE               [12] 8583 	mov	r6,a
      005C58 A3               [24] 8584 	inc	dptr
      005C59 12 76 03         [24] 8585 	lcall	__gptrget
      005C5C FF               [12] 8586 	mov	r7,a
      005C5D E5 08            [12] 8587 	mov	a,_bp
      005C5F 24 13            [12] 8588 	add	a,#0x13
      005C61 F8               [12] 8589 	mov	r0,a
      005C62 E5 08            [12] 8590 	mov	a,_bp
      005C64 24 04            [12] 8591 	add	a,#0x04
      005C66 F9               [12] 8592 	mov	r1,a
      005C67 74 11            [12] 8593 	mov	a,#0x11
      005C69 26               [12] 8594 	add	a,@r0
      005C6A F7               [12] 8595 	mov	@r1,a
      005C6B 74 40            [12] 8596 	mov	a,#0x40
      005C6D 08               [12] 8597 	inc	r0
      005C6E 36               [12] 8598 	addc	a,@r0
      005C6F 09               [12] 8599 	inc	r1
      005C70 F7               [12] 8600 	mov	@r1,a
      005C71 08               [12] 8601 	inc	r0
      005C72 09               [12] 8602 	inc	r1
      005C73 E6               [12] 8603 	mov	a,@r0
      005C74 F7               [12] 8604 	mov	@r1,a
      005C75 E5 08            [12] 8605 	mov	a,_bp
      005C77 24 04            [12] 8606 	add	a,#0x04
      005C79 F8               [12] 8607 	mov	r0,a
      005C7A 86 82            [24] 8608 	mov	dpl,@r0
      005C7C 08               [12] 8609 	inc	r0
      005C7D 86 83            [24] 8610 	mov	dph,@r0
      005C7F 08               [12] 8611 	inc	r0
      005C80 86 F0            [24] 8612 	mov	b,@r0
      005C82 12 76 03         [24] 8613 	lcall	__gptrget
      005C85 FB               [12] 8614 	mov	r3,a
      005C86 A3               [24] 8615 	inc	dptr
      005C87 12 76 03         [24] 8616 	lcall	__gptrget
      005C8A FC               [12] 8617 	mov	r4,a
      005C8B A3               [24] 8618 	inc	dptr
      005C8C 12 76 03         [24] 8619 	lcall	__gptrget
      005C8F FD               [12] 8620 	mov	r5,a
      005C90 E5 08            [12] 8621 	mov	a,_bp
      005C92 24 07            [12] 8622 	add	a,#0x07
      005C94 F8               [12] 8623 	mov	r0,a
      005C95 E6               [12] 8624 	mov	a,@r0
      005C96 C0 E0            [24] 8625 	push	acc
      005C98 08               [12] 8626 	inc	r0
      005C99 E6               [12] 8627 	mov	a,@r0
      005C9A C0 E0            [24] 8628 	push	acc
      005C9C C0 02            [24] 8629 	push	ar2
      005C9E C0 06            [24] 8630 	push	ar6
      005CA0 C0 07            [24] 8631 	push	ar7
      005CA2 C0 03            [24] 8632 	push	ar3
      005CA4 C0 04            [24] 8633 	push	ar4
      005CA6 C0 05            [24] 8634 	push	ar5
      005CA8 74 49            [12] 8635 	mov	a,#___str_15
      005CAA C0 E0            [24] 8636 	push	acc
      005CAC 74 8F            [12] 8637 	mov	a,#(___str_15 >> 8)
      005CAE C0 E0            [24] 8638 	push	acc
      005CB0 74 80            [12] 8639 	mov	a,#0x80
      005CB2 C0 E0            [24] 8640 	push	acc
      005CB4 12 75 CA         [24] 8641 	lcall	_printf
      005CB7 E5 81            [12] 8642 	mov	a,sp
      005CB9 24 F5            [12] 8643 	add	a,#0xf5
      005CBB F5 81            [12] 8644 	mov	sp,a
                                   8645 ;	calc.c:371: printstr("ACC\t");
      005CBD 7D 69            [12] 8646 	mov	r5,#___str_16
      005CBF 7E 8F            [12] 8647 	mov	r6,#(___str_16 >> 8)
      005CC1 7F 80            [12] 8648 	mov	r7,#0x80
                                   8649 ;	calc.c:20: return;
      005CC3                       8650 00139$:
                                   8651 ;	calc.c:18: for (; *s; s++) putchar(*s);
      005CC3 8D 82            [24] 8652 	mov	dpl,r5
      005CC5 8E 83            [24] 8653 	mov	dph,r6
      005CC7 8F F0            [24] 8654 	mov	b,r7
      005CC9 12 76 03         [24] 8655 	lcall	__gptrget
      005CCC FC               [12] 8656 	mov	r4,a
      005CCD 60 1C            [24] 8657 	jz	00112$
      005CCF 7B 00            [12] 8658 	mov	r3,#0x00
      005CD1 8C 82            [24] 8659 	mov	dpl,r4
      005CD3 8B 83            [24] 8660 	mov	dph,r3
      005CD5 C0 07            [24] 8661 	push	ar7
      005CD7 C0 06            [24] 8662 	push	ar6
      005CD9 C0 05            [24] 8663 	push	ar5
      005CDB 12 71 72         [24] 8664 	lcall	_putchar
      005CDE D0 05            [24] 8665 	pop	ar5
      005CE0 D0 06            [24] 8666 	pop	ar6
      005CE2 D0 07            [24] 8667 	pop	ar7
      005CE4 0D               [12] 8668 	inc	r5
                                   8669 ;	calc.c:371: printstr("ACC\t");
      005CE5 BD 00 DB         [24] 8670 	cjne	r5,#0x00,00139$
      005CE8 0E               [12] 8671 	inc	r6
      005CE9 80 D8            [24] 8672 	sjmp	00139$
      005CEB                       8673 00112$:
                                   8674 ;	calc.c:372: if (ctx->acc_valid) printall(ctx->acc);
      005CEB E5 08            [12] 8675 	mov	a,_bp
      005CED 24 13            [12] 8676 	add	a,#0x13
      005CEF F8               [12] 8677 	mov	r0,a
      005CF0 74 06            [12] 8678 	mov	a,#0x06
      005CF2 26               [12] 8679 	add	a,@r0
      005CF3 FD               [12] 8680 	mov	r5,a
      005CF4 E4               [12] 8681 	clr	a
      005CF5 08               [12] 8682 	inc	r0
      005CF6 36               [12] 8683 	addc	a,@r0
      005CF7 FE               [12] 8684 	mov	r6,a
      005CF8 08               [12] 8685 	inc	r0
      005CF9 86 07            [24] 8686 	mov	ar7,@r0
      005CFB 8D 82            [24] 8687 	mov	dpl,r5
      005CFD 8E 83            [24] 8688 	mov	dph,r6
      005CFF 8F F0            [24] 8689 	mov	b,r7
      005D01 12 76 03         [24] 8690 	lcall	__gptrget
      005D04 70 03            [24] 8691 	jnz	00321$
      005D06 02 5E 38         [24] 8692 	ljmp	00102$
      005D09                       8693 00321$:
      005D09 E5 08            [12] 8694 	mov	a,_bp
      005D0B 24 13            [12] 8695 	add	a,#0x13
      005D0D F8               [12] 8696 	mov	r0,a
      005D0E 74 02            [12] 8697 	mov	a,#0x02
      005D10 26               [12] 8698 	add	a,@r0
      005D11 FD               [12] 8699 	mov	r5,a
      005D12 E4               [12] 8700 	clr	a
      005D13 08               [12] 8701 	inc	r0
      005D14 36               [12] 8702 	addc	a,@r0
      005D15 FE               [12] 8703 	mov	r6,a
      005D16 08               [12] 8704 	inc	r0
      005D17 86 07            [24] 8705 	mov	ar7,@r0
      005D19 8D 82            [24] 8706 	mov	dpl,r5
      005D1B 8E 83            [24] 8707 	mov	dph,r6
      005D1D 8F F0            [24] 8708 	mov	b,r7
      005D1F 12 76 03         [24] 8709 	lcall	__gptrget
      005D22 FD               [12] 8710 	mov	r5,a
      005D23 A3               [24] 8711 	inc	dptr
      005D24 12 76 03         [24] 8712 	lcall	__gptrget
      005D27 FE               [12] 8713 	mov	r6,a
      005D28 A3               [24] 8714 	inc	dptr
      005D29 12 76 03         [24] 8715 	lcall	__gptrget
      005D2C FF               [12] 8716 	mov	r7,a
      005D2D A3               [24] 8717 	inc	dptr
      005D2E 12 76 03         [24] 8718 	lcall	__gptrget
      005D31 FC               [12] 8719 	mov	r4,a
                                   8720 ;	calc.c:33: printf("%08lx\t", d);
      005D32 C0 07            [24] 8721 	push	ar7
      005D34 C0 06            [24] 8722 	push	ar6
      005D36 C0 05            [24] 8723 	push	ar5
      005D38 C0 04            [24] 8724 	push	ar4
      005D3A C0 05            [24] 8725 	push	ar5
      005D3C C0 06            [24] 8726 	push	ar6
      005D3E C0 07            [24] 8727 	push	ar7
      005D40 C0 04            [24] 8728 	push	ar4
      005D42 74 84            [12] 8729 	mov	a,#___str_0
      005D44 C0 E0            [24] 8730 	push	acc
      005D46 74 8E            [12] 8731 	mov	a,#(___str_0 >> 8)
      005D48 C0 E0            [24] 8732 	push	acc
      005D4A 74 80            [12] 8733 	mov	a,#0x80
      005D4C C0 E0            [24] 8734 	push	acc
      005D4E 12 75 CA         [24] 8735 	lcall	_printf
      005D51 E5 81            [12] 8736 	mov	a,sp
      005D53 24 F9            [12] 8737 	add	a,#0xf9
      005D55 F5 81            [12] 8738 	mov	sp,a
      005D57 D0 04            [24] 8739 	pop	ar4
      005D59 D0 05            [24] 8740 	pop	ar5
      005D5B D0 06            [24] 8741 	pop	ar6
      005D5D D0 07            [24] 8742 	pop	ar7
                                   8743 ;	calc.c:34: printf("% 11ld\t", d);
      005D5F C0 07            [24] 8744 	push	ar7
      005D61 C0 06            [24] 8745 	push	ar6
      005D63 C0 05            [24] 8746 	push	ar5
      005D65 C0 04            [24] 8747 	push	ar4
      005D67 C0 05            [24] 8748 	push	ar5
      005D69 C0 06            [24] 8749 	push	ar6
      005D6B C0 07            [24] 8750 	push	ar7
      005D6D C0 04            [24] 8751 	push	ar4
      005D6F 74 8B            [12] 8752 	mov	a,#___str_1
      005D71 C0 E0            [24] 8753 	push	acc
      005D73 74 8E            [12] 8754 	mov	a,#(___str_1 >> 8)
      005D75 C0 E0            [24] 8755 	push	acc
      005D77 74 80            [12] 8756 	mov	a,#0x80
      005D79 C0 E0            [24] 8757 	push	acc
      005D7B 12 75 CA         [24] 8758 	lcall	_printf
      005D7E E5 81            [12] 8759 	mov	a,sp
      005D80 24 F9            [12] 8760 	add	a,#0xf9
      005D82 F5 81            [12] 8761 	mov	sp,a
      005D84 D0 04            [24] 8762 	pop	ar4
      005D86 D0 05            [24] 8763 	pop	ar5
      005D88 D0 06            [24] 8764 	pop	ar6
      005D8A D0 07            [24] 8765 	pop	ar7
                                   8766 ;	calc.c:35: printf("%011lo\t", d);
      005D8C C0 07            [24] 8767 	push	ar7
      005D8E C0 06            [24] 8768 	push	ar6
      005D90 C0 05            [24] 8769 	push	ar5
      005D92 C0 04            [24] 8770 	push	ar4
      005D94 C0 05            [24] 8771 	push	ar5
      005D96 C0 06            [24] 8772 	push	ar6
      005D98 C0 07            [24] 8773 	push	ar7
      005D9A C0 04            [24] 8774 	push	ar4
      005D9C 74 93            [12] 8775 	mov	a,#___str_2
      005D9E C0 E0            [24] 8776 	push	acc
      005DA0 74 8E            [12] 8777 	mov	a,#(___str_2 >> 8)
      005DA2 C0 E0            [24] 8778 	push	acc
      005DA4 74 80            [12] 8779 	mov	a,#0x80
      005DA6 C0 E0            [24] 8780 	push	acc
      005DA8 12 75 CA         [24] 8781 	lcall	_printf
      005DAB E5 81            [12] 8782 	mov	a,sp
      005DAD 24 F9            [12] 8783 	add	a,#0xf9
      005DAF F5 81            [12] 8784 	mov	sp,a
      005DB1 D0 04            [24] 8785 	pop	ar4
      005DB3 D0 05            [24] 8786 	pop	ar5
      005DB5 D0 06            [24] 8787 	pop	ar6
      005DB7 D0 07            [24] 8788 	pop	ar7
                                   8789 ;	calc.c:36: printbin(d);
      005DB9 E5 08            [12] 8790 	mov	a,_bp
      005DBB 24 16            [12] 8791 	add	a,#0x16
      005DBD F8               [12] 8792 	mov	r0,a
      005DBE A6 05            [24] 8793 	mov	@r0,ar5
      005DC0 08               [12] 8794 	inc	r0
      005DC1 A6 06            [24] 8795 	mov	@r0,ar6
      005DC3 08               [12] 8796 	inc	r0
      005DC4 A6 07            [24] 8797 	mov	@r0,ar7
      005DC6 08               [12] 8798 	inc	r0
      005DC7 A6 04            [24] 8799 	mov	@r0,ar4
                                   8800 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      005DC9 E5 08            [12] 8801 	mov	a,_bp
      005DCB 24 1A            [12] 8802 	add	a,#0x1a
      005DCD F8               [12] 8803 	mov	r0,a
      005DCE E4               [12] 8804 	clr	a
      005DCF F6               [12] 8805 	mov	@r0,a
      005DD0 08               [12] 8806 	inc	r0
      005DD1 F6               [12] 8807 	mov	@r0,a
      005DD2 08               [12] 8808 	inc	r0
      005DD3 F6               [12] 8809 	mov	@r0,a
      005DD4 08               [12] 8810 	inc	r0
      005DD5 76 80            [12] 8811 	mov	@r0,#0x80
      005DD7                       8812 00141$:
                                   8813 ;	calc.c:27: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005DD7 E5 08            [12] 8814 	mov	a,_bp
      005DD9 24 16            [12] 8815 	add	a,#0x16
      005DDB F8               [12] 8816 	mov	r0,a
      005DDC 86 04            [24] 8817 	mov	ar4,@r0
      005DDE 08               [12] 8818 	inc	r0
      005DDF 86 05            [24] 8819 	mov	ar5,@r0
      005DE1 08               [12] 8820 	inc	r0
      005DE2 86 06            [24] 8821 	mov	ar6,@r0
      005DE4 08               [12] 8822 	inc	r0
      005DE5 86 07            [24] 8823 	mov	ar7,@r0
      005DE7 E5 08            [12] 8824 	mov	a,_bp
      005DE9 24 1A            [12] 8825 	add	a,#0x1a
      005DEB F8               [12] 8826 	mov	r0,a
      005DEC E6               [12] 8827 	mov	a,@r0
      005DED 52 04            [12] 8828 	anl	ar4,a
      005DEF 08               [12] 8829 	inc	r0
      005DF0 E6               [12] 8830 	mov	a,@r0
      005DF1 52 05            [12] 8831 	anl	ar5,a
      005DF3 08               [12] 8832 	inc	r0
      005DF4 E6               [12] 8833 	mov	a,@r0
      005DF5 52 06            [12] 8834 	anl	ar6,a
      005DF7 08               [12] 8835 	inc	r0
      005DF8 E6               [12] 8836 	mov	a,@r0
      005DF9 52 07            [12] 8837 	anl	ar7,a
      005DFB EC               [12] 8838 	mov	a,r4
      005DFC 4D               [12] 8839 	orl	a,r5
      005DFD 4E               [12] 8840 	orl	a,r6
      005DFE 4F               [12] 8841 	orl	a,r7
      005DFF 60 06            [24] 8842 	jz	00168$
      005E01 7E 31            [12] 8843 	mov	r6,#0x31
      005E03 7F 00            [12] 8844 	mov	r7,#0x00
      005E05 80 04            [24] 8845 	sjmp	00169$
      005E07                       8846 00168$:
      005E07 7E 30            [12] 8847 	mov	r6,#0x30
      005E09 7F 00            [12] 8848 	mov	r7,#0x00
      005E0B                       8849 00169$:
      005E0B 8E 82            [24] 8850 	mov	dpl,r6
      005E0D 8F 83            [24] 8851 	mov	dph,r7
      005E0F 12 71 72         [24] 8852 	lcall	_putchar
                                   8853 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      005E12 E5 08            [12] 8854 	mov	a,_bp
      005E14 24 1A            [12] 8855 	add	a,#0x1a
      005E16 F8               [12] 8856 	mov	r0,a
      005E17 08               [12] 8857 	inc	r0
      005E18 08               [12] 8858 	inc	r0
      005E19 08               [12] 8859 	inc	r0
      005E1A E6               [12] 8860 	mov	a,@r0
      005E1B C3               [12] 8861 	clr	c
      005E1C 13               [12] 8862 	rrc	a
      005E1D F6               [12] 8863 	mov	@r0,a
      005E1E 18               [12] 8864 	dec	r0
      005E1F E6               [12] 8865 	mov	a,@r0
      005E20 13               [12] 8866 	rrc	a
      005E21 F6               [12] 8867 	mov	@r0,a
      005E22 18               [12] 8868 	dec	r0
      005E23 E6               [12] 8869 	mov	a,@r0
      005E24 13               [12] 8870 	rrc	a
      005E25 F6               [12] 8871 	mov	@r0,a
      005E26 18               [12] 8872 	dec	r0
      005E27 E6               [12] 8873 	mov	a,@r0
      005E28 13               [12] 8874 	rrc	a
      005E29 F6               [12] 8875 	mov	@r0,a
      005E2A E5 08            [12] 8876 	mov	a,_bp
      005E2C 24 1A            [12] 8877 	add	a,#0x1a
      005E2E F8               [12] 8878 	mov	r0,a
      005E2F E6               [12] 8879 	mov	a,@r0
      005E30 08               [12] 8880 	inc	r0
      005E31 46               [12] 8881 	orl	a,@r0
      005E32 08               [12] 8882 	inc	r0
      005E33 46               [12] 8883 	orl	a,@r0
      005E34 08               [12] 8884 	inc	r0
      005E35 46               [12] 8885 	orl	a,@r0
      005E36 70 9F            [24] 8886 	jnz	00141$
                                   8887 ;	calc.c:372: if (ctx->acc_valid) printall(ctx->acc);
      005E38                       8888 00102$:
                                   8889 ;	calc.c:374: n = stack_peek2(ctx->ps, vals);
      005E38 E5 08            [12] 8890 	mov	a,_bp
      005E3A 24 0B            [12] 8891 	add	a,#0x0b
      005E3C F9               [12] 8892 	mov	r1,a
      005E3D FD               [12] 8893 	mov	r5,a
      005E3E 7E 00            [12] 8894 	mov	r6,#0x00
      005E40 7F 40            [12] 8895 	mov	r7,#0x40
      005E42 E5 08            [12] 8896 	mov	a,_bp
      005E44 24 04            [12] 8897 	add	a,#0x04
      005E46 F8               [12] 8898 	mov	r0,a
      005E47 86 82            [24] 8899 	mov	dpl,@r0
      005E49 08               [12] 8900 	inc	r0
      005E4A 86 83            [24] 8901 	mov	dph,@r0
      005E4C 08               [12] 8902 	inc	r0
      005E4D 86 F0            [24] 8903 	mov	b,@r0
      005E4F 12 76 03         [24] 8904 	lcall	__gptrget
      005E52 FA               [12] 8905 	mov	r2,a
      005E53 A3               [24] 8906 	inc	dptr
      005E54 12 76 03         [24] 8907 	lcall	__gptrget
      005E57 FB               [12] 8908 	mov	r3,a
      005E58 A3               [24] 8909 	inc	dptr
      005E59 12 76 03         [24] 8910 	lcall	__gptrget
      005E5C FC               [12] 8911 	mov	r4,a
      005E5D C0 01            [24] 8912 	push	ar1
      005E5F C0 05            [24] 8913 	push	ar5
      005E61 C0 06            [24] 8914 	push	ar6
      005E63 C0 07            [24] 8915 	push	ar7
      005E65 8A 82            [24] 8916 	mov	dpl,r2
      005E67 8B 83            [24] 8917 	mov	dph,r3
      005E69 8C F0            [24] 8918 	mov	b,r4
      005E6B 12 28 FF         [24] 8919 	lcall	_stack_peek2
      005E6E AE 82            [24] 8920 	mov	r6,dpl
      005E70 AF 83            [24] 8921 	mov	r7,dph
      005E72 15 81            [12] 8922 	dec	sp
      005E74 15 81            [12] 8923 	dec	sp
      005E76 15 81            [12] 8924 	dec	sp
      005E78 D0 01            [24] 8925 	pop	ar1
                                   8926 ;	calc.c:375: printstr("\r\nPSTOP1\t");
      005E7A 7B 6E            [12] 8927 	mov	r3,#___str_17
      005E7C 7C 8F            [12] 8928 	mov	r4,#(___str_17 >> 8)
      005E7E 7D 80            [12] 8929 	mov	r5,#0x80
                                   8930 ;	calc.c:20: return;
      005E80                       8931 00144$:
                                   8932 ;	calc.c:18: for (; *s; s++) putchar(*s);
      005E80 8B 82            [24] 8933 	mov	dpl,r3
      005E82 8C 83            [24] 8934 	mov	dph,r4
      005E84 8D F0            [24] 8935 	mov	b,r5
      005E86 12 76 03         [24] 8936 	lcall	__gptrget
      005E89 FA               [12] 8937 	mov	r2,a
      005E8A 60 30            [24] 8938 	jz	00117$
      005E8C C0 06            [24] 8939 	push	ar6
      005E8E C0 07            [24] 8940 	push	ar7
      005E90 7F 00            [12] 8941 	mov	r7,#0x00
      005E92 8A 82            [24] 8942 	mov	dpl,r2
      005E94 8F 83            [24] 8943 	mov	dph,r7
      005E96 C0 07            [24] 8944 	push	ar7
      005E98 C0 06            [24] 8945 	push	ar6
      005E9A C0 05            [24] 8946 	push	ar5
      005E9C C0 04            [24] 8947 	push	ar4
      005E9E C0 03            [24] 8948 	push	ar3
      005EA0 C0 01            [24] 8949 	push	ar1
      005EA2 12 71 72         [24] 8950 	lcall	_putchar
      005EA5 D0 01            [24] 8951 	pop	ar1
      005EA7 D0 03            [24] 8952 	pop	ar3
      005EA9 D0 04            [24] 8953 	pop	ar4
      005EAB D0 05            [24] 8954 	pop	ar5
      005EAD D0 06            [24] 8955 	pop	ar6
      005EAF D0 07            [24] 8956 	pop	ar7
      005EB1 0B               [12] 8957 	inc	r3
      005EB2 BB 00 01         [24] 8958 	cjne	r3,#0x00,00325$
      005EB5 0C               [12] 8959 	inc	r4
      005EB6                       8960 00325$:
      005EB6 D0 07            [24] 8961 	pop	ar7
      005EB8 D0 06            [24] 8962 	pop	ar6
                                   8963 ;	calc.c:375: printstr("\r\nPSTOP1\t");
      005EBA 80 C4            [24] 8964 	sjmp	00144$
      005EBC                       8965 00117$:
                                   8966 ;	calc.c:376: if (n > 0) printall(vals[1]);
      005EBC C3               [12] 8967 	clr	c
      005EBD E4               [12] 8968 	clr	a
      005EBE 9E               [12] 8969 	subb	a,r6
      005EBF 74 80            [12] 8970 	mov	a,#(0x00 ^ 0x80)
      005EC1 8F F0            [24] 8971 	mov	b,r7
      005EC3 63 F0 80         [24] 8972 	xrl	b,#0x80
      005EC6 95 F0            [12] 8973 	subb	a,b
      005EC8 40 03            [24] 8974 	jc	00326$
      005ECA 02 60 0A         [24] 8975 	ljmp	00104$
      005ECD                       8976 00326$:
      005ECD 74 04            [12] 8977 	mov	a,#0x04
      005ECF 29               [12] 8978 	add	a,r1
      005ED0 F8               [12] 8979 	mov	r0,a
      005ED1 86 02            [24] 8980 	mov	ar2,@r0
      005ED3 08               [12] 8981 	inc	r0
      005ED4 86 03            [24] 8982 	mov	ar3,@r0
      005ED6 08               [12] 8983 	inc	r0
      005ED7 86 04            [24] 8984 	mov	ar4,@r0
      005ED9 08               [12] 8985 	inc	r0
      005EDA 86 05            [24] 8986 	mov	ar5,@r0
                                   8987 ;	calc.c:33: printf("%08lx\t", d);
      005EDC C0 07            [24] 8988 	push	ar7
      005EDE C0 06            [24] 8989 	push	ar6
      005EE0 C0 05            [24] 8990 	push	ar5
      005EE2 C0 04            [24] 8991 	push	ar4
      005EE4 C0 03            [24] 8992 	push	ar3
      005EE6 C0 02            [24] 8993 	push	ar2
      005EE8 C0 01            [24] 8994 	push	ar1
      005EEA C0 02            [24] 8995 	push	ar2
      005EEC C0 03            [24] 8996 	push	ar3
      005EEE C0 04            [24] 8997 	push	ar4
      005EF0 C0 05            [24] 8998 	push	ar5
      005EF2 74 84            [12] 8999 	mov	a,#___str_0
      005EF4 C0 E0            [24] 9000 	push	acc
      005EF6 74 8E            [12] 9001 	mov	a,#(___str_0 >> 8)
      005EF8 C0 E0            [24] 9002 	push	acc
      005EFA 74 80            [12] 9003 	mov	a,#0x80
      005EFC C0 E0            [24] 9004 	push	acc
      005EFE 12 75 CA         [24] 9005 	lcall	_printf
      005F01 E5 81            [12] 9006 	mov	a,sp
      005F03 24 F9            [12] 9007 	add	a,#0xf9
      005F05 F5 81            [12] 9008 	mov	sp,a
      005F07 D0 01            [24] 9009 	pop	ar1
      005F09 D0 02            [24] 9010 	pop	ar2
      005F0B D0 03            [24] 9011 	pop	ar3
      005F0D D0 04            [24] 9012 	pop	ar4
      005F0F D0 05            [24] 9013 	pop	ar5
                                   9014 ;	calc.c:34: printf("% 11ld\t", d);
      005F11 C0 05            [24] 9015 	push	ar5
      005F13 C0 04            [24] 9016 	push	ar4
      005F15 C0 03            [24] 9017 	push	ar3
      005F17 C0 02            [24] 9018 	push	ar2
      005F19 C0 01            [24] 9019 	push	ar1
      005F1B C0 02            [24] 9020 	push	ar2
      005F1D C0 03            [24] 9021 	push	ar3
      005F1F C0 04            [24] 9022 	push	ar4
      005F21 C0 05            [24] 9023 	push	ar5
      005F23 74 8B            [12] 9024 	mov	a,#___str_1
      005F25 C0 E0            [24] 9025 	push	acc
      005F27 74 8E            [12] 9026 	mov	a,#(___str_1 >> 8)
      005F29 C0 E0            [24] 9027 	push	acc
      005F2B 74 80            [12] 9028 	mov	a,#0x80
      005F2D C0 E0            [24] 9029 	push	acc
      005F2F 12 75 CA         [24] 9030 	lcall	_printf
      005F32 E5 81            [12] 9031 	mov	a,sp
      005F34 24 F9            [12] 9032 	add	a,#0xf9
      005F36 F5 81            [12] 9033 	mov	sp,a
      005F38 D0 01            [24] 9034 	pop	ar1
      005F3A D0 02            [24] 9035 	pop	ar2
      005F3C D0 03            [24] 9036 	pop	ar3
      005F3E D0 04            [24] 9037 	pop	ar4
      005F40 D0 05            [24] 9038 	pop	ar5
                                   9039 ;	calc.c:35: printf("%011lo\t", d);
      005F42 C0 05            [24] 9040 	push	ar5
      005F44 C0 04            [24] 9041 	push	ar4
      005F46 C0 03            [24] 9042 	push	ar3
      005F48 C0 02            [24] 9043 	push	ar2
      005F4A C0 01            [24] 9044 	push	ar1
      005F4C C0 02            [24] 9045 	push	ar2
      005F4E C0 03            [24] 9046 	push	ar3
      005F50 C0 04            [24] 9047 	push	ar4
      005F52 C0 05            [24] 9048 	push	ar5
      005F54 74 93            [12] 9049 	mov	a,#___str_2
      005F56 C0 E0            [24] 9050 	push	acc
      005F58 74 8E            [12] 9051 	mov	a,#(___str_2 >> 8)
      005F5A C0 E0            [24] 9052 	push	acc
      005F5C 74 80            [12] 9053 	mov	a,#0x80
      005F5E C0 E0            [24] 9054 	push	acc
      005F60 12 75 CA         [24] 9055 	lcall	_printf
      005F63 E5 81            [12] 9056 	mov	a,sp
      005F65 24 F9            [12] 9057 	add	a,#0xf9
      005F67 F5 81            [12] 9058 	mov	sp,a
      005F69 D0 01            [24] 9059 	pop	ar1
      005F6B D0 02            [24] 9060 	pop	ar2
      005F6D D0 03            [24] 9061 	pop	ar3
      005F6F D0 04            [24] 9062 	pop	ar4
      005F71 D0 05            [24] 9063 	pop	ar5
      005F73 D0 06            [24] 9064 	pop	ar6
      005F75 D0 07            [24] 9065 	pop	ar7
                                   9066 ;	calc.c:36: printbin(d);
      005F77 E5 08            [12] 9067 	mov	a,_bp
      005F79 24 16            [12] 9068 	add	a,#0x16
      005F7B F8               [12] 9069 	mov	r0,a
      005F7C A6 02            [24] 9070 	mov	@r0,ar2
      005F7E 08               [12] 9071 	inc	r0
      005F7F A6 03            [24] 9072 	mov	@r0,ar3
      005F81 08               [12] 9073 	inc	r0
      005F82 A6 04            [24] 9074 	mov	@r0,ar4
      005F84 08               [12] 9075 	inc	r0
      005F85 A6 05            [24] 9076 	mov	@r0,ar5
                                   9077 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      005F87 E5 08            [12] 9078 	mov	a,_bp
      005F89 24 1A            [12] 9079 	add	a,#0x1a
      005F8B F8               [12] 9080 	mov	r0,a
      005F8C E4               [12] 9081 	clr	a
      005F8D F6               [12] 9082 	mov	@r0,a
      005F8E 08               [12] 9083 	inc	r0
      005F8F F6               [12] 9084 	mov	@r0,a
      005F90 08               [12] 9085 	inc	r0
      005F91 F6               [12] 9086 	mov	@r0,a
      005F92 08               [12] 9087 	inc	r0
      005F93 76 80            [12] 9088 	mov	@r0,#0x80
      005F95                       9089 00146$:
                                   9090 ;	calc.c:27: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005F95 C0 06            [24] 9091 	push	ar6
      005F97 C0 07            [24] 9092 	push	ar7
      005F99 E5 08            [12] 9093 	mov	a,_bp
      005F9B 24 16            [12] 9094 	add	a,#0x16
      005F9D F8               [12] 9095 	mov	r0,a
      005F9E 86 04            [24] 9096 	mov	ar4,@r0
      005FA0 08               [12] 9097 	inc	r0
      005FA1 86 05            [24] 9098 	mov	ar5,@r0
      005FA3 08               [12] 9099 	inc	r0
      005FA4 86 06            [24] 9100 	mov	ar6,@r0
      005FA6 08               [12] 9101 	inc	r0
      005FA7 86 07            [24] 9102 	mov	ar7,@r0
      005FA9 E5 08            [12] 9103 	mov	a,_bp
      005FAB 24 1A            [12] 9104 	add	a,#0x1a
      005FAD F8               [12] 9105 	mov	r0,a
      005FAE E6               [12] 9106 	mov	a,@r0
      005FAF 52 04            [12] 9107 	anl	ar4,a
      005FB1 08               [12] 9108 	inc	r0
      005FB2 E6               [12] 9109 	mov	a,@r0
      005FB3 52 05            [12] 9110 	anl	ar5,a
      005FB5 08               [12] 9111 	inc	r0
      005FB6 E6               [12] 9112 	mov	a,@r0
      005FB7 52 06            [12] 9113 	anl	ar6,a
      005FB9 08               [12] 9114 	inc	r0
      005FBA E6               [12] 9115 	mov	a,@r0
      005FBB 52 07            [12] 9116 	anl	ar7,a
      005FBD EC               [12] 9117 	mov	a,r4
      005FBE 4D               [12] 9118 	orl	a,r5
      005FBF 4E               [12] 9119 	orl	a,r6
      005FC0 4F               [12] 9120 	orl	a,r7
      005FC1 D0 07            [24] 9121 	pop	ar7
      005FC3 D0 06            [24] 9122 	pop	ar6
      005FC5 60 06            [24] 9123 	jz	00170$
      005FC7 7C 31            [12] 9124 	mov	r4,#0x31
      005FC9 7D 00            [12] 9125 	mov	r5,#0x00
      005FCB 80 04            [24] 9126 	sjmp	00171$
      005FCD                       9127 00170$:
      005FCD 7C 30            [12] 9128 	mov	r4,#0x30
      005FCF 7D 00            [12] 9129 	mov	r5,#0x00
      005FD1                       9130 00171$:
      005FD1 8C 82            [24] 9131 	mov	dpl,r4
      005FD3 8D 83            [24] 9132 	mov	dph,r5
      005FD5 C0 07            [24] 9133 	push	ar7
      005FD7 C0 06            [24] 9134 	push	ar6
      005FD9 C0 01            [24] 9135 	push	ar1
      005FDB 12 71 72         [24] 9136 	lcall	_putchar
      005FDE D0 01            [24] 9137 	pop	ar1
      005FE0 D0 06            [24] 9138 	pop	ar6
      005FE2 D0 07            [24] 9139 	pop	ar7
                                   9140 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      005FE4 E5 08            [12] 9141 	mov	a,_bp
      005FE6 24 1A            [12] 9142 	add	a,#0x1a
      005FE8 F8               [12] 9143 	mov	r0,a
      005FE9 08               [12] 9144 	inc	r0
      005FEA 08               [12] 9145 	inc	r0
      005FEB 08               [12] 9146 	inc	r0
      005FEC E6               [12] 9147 	mov	a,@r0
      005FED C3               [12] 9148 	clr	c
      005FEE 13               [12] 9149 	rrc	a
      005FEF F6               [12] 9150 	mov	@r0,a
      005FF0 18               [12] 9151 	dec	r0
      005FF1 E6               [12] 9152 	mov	a,@r0
      005FF2 13               [12] 9153 	rrc	a
      005FF3 F6               [12] 9154 	mov	@r0,a
      005FF4 18               [12] 9155 	dec	r0
      005FF5 E6               [12] 9156 	mov	a,@r0
      005FF6 13               [12] 9157 	rrc	a
      005FF7 F6               [12] 9158 	mov	@r0,a
      005FF8 18               [12] 9159 	dec	r0
      005FF9 E6               [12] 9160 	mov	a,@r0
      005FFA 13               [12] 9161 	rrc	a
      005FFB F6               [12] 9162 	mov	@r0,a
      005FFC E5 08            [12] 9163 	mov	a,_bp
      005FFE 24 1A            [12] 9164 	add	a,#0x1a
      006000 F8               [12] 9165 	mov	r0,a
      006001 E6               [12] 9166 	mov	a,@r0
      006002 08               [12] 9167 	inc	r0
      006003 46               [12] 9168 	orl	a,@r0
      006004 08               [12] 9169 	inc	r0
      006005 46               [12] 9170 	orl	a,@r0
      006006 08               [12] 9171 	inc	r0
      006007 46               [12] 9172 	orl	a,@r0
      006008 70 8B            [24] 9173 	jnz	00146$
                                   9174 ;	calc.c:376: if (n > 0) printall(vals[1]);
      00600A                       9175 00104$:
                                   9176 ;	calc.c:377: printstr("\r\nPSTOP0\t");
      00600A 7B 78            [12] 9177 	mov	r3,#___str_18
      00600C 7C 8F            [12] 9178 	mov	r4,#(___str_18 >> 8)
      00600E 7D 80            [12] 9179 	mov	r5,#0x80
                                   9180 ;	calc.c:20: return;
      006010                       9181 00149$:
                                   9182 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006010 8B 82            [24] 9183 	mov	dpl,r3
      006012 8C 83            [24] 9184 	mov	dph,r4
      006014 8D F0            [24] 9185 	mov	b,r5
      006016 12 76 03         [24] 9186 	lcall	__gptrget
      006019 FA               [12] 9187 	mov	r2,a
      00601A 60 30            [24] 9188 	jz	00122$
      00601C C0 06            [24] 9189 	push	ar6
      00601E C0 07            [24] 9190 	push	ar7
      006020 7F 00            [12] 9191 	mov	r7,#0x00
      006022 8A 82            [24] 9192 	mov	dpl,r2
      006024 8F 83            [24] 9193 	mov	dph,r7
      006026 C0 07            [24] 9194 	push	ar7
      006028 C0 06            [24] 9195 	push	ar6
      00602A C0 05            [24] 9196 	push	ar5
      00602C C0 04            [24] 9197 	push	ar4
      00602E C0 03            [24] 9198 	push	ar3
      006030 C0 01            [24] 9199 	push	ar1
      006032 12 71 72         [24] 9200 	lcall	_putchar
      006035 D0 01            [24] 9201 	pop	ar1
      006037 D0 03            [24] 9202 	pop	ar3
      006039 D0 04            [24] 9203 	pop	ar4
      00603B D0 05            [24] 9204 	pop	ar5
      00603D D0 06            [24] 9205 	pop	ar6
      00603F D0 07            [24] 9206 	pop	ar7
      006041 0B               [12] 9207 	inc	r3
      006042 BB 00 01         [24] 9208 	cjne	r3,#0x00,00330$
      006045 0C               [12] 9209 	inc	r4
      006046                       9210 00330$:
      006046 D0 07            [24] 9211 	pop	ar7
      006048 D0 06            [24] 9212 	pop	ar6
                                   9213 ;	calc.c:377: printstr("\r\nPSTOP0\t");
      00604A 80 C4            [24] 9214 	sjmp	00149$
      00604C                       9215 00122$:
                                   9216 ;	calc.c:378: if (n > 1) printall(vals[0]);
      00604C C3               [12] 9217 	clr	c
      00604D 74 01            [12] 9218 	mov	a,#0x01
      00604F 9E               [12] 9219 	subb	a,r6
      006050 74 80            [12] 9220 	mov	a,#(0x00 ^ 0x80)
      006052 8F F0            [24] 9221 	mov	b,r7
      006054 63 F0 80         [24] 9222 	xrl	b,#0x80
      006057 95 F0            [12] 9223 	subb	a,b
      006059 40 03            [24] 9224 	jc	00331$
      00605B 02 61 86         [24] 9225 	ljmp	00106$
      00605E                       9226 00331$:
      00605E 87 04            [24] 9227 	mov	ar4,@r1
      006060 09               [12] 9228 	inc	r1
      006061 87 05            [24] 9229 	mov	ar5,@r1
      006063 09               [12] 9230 	inc	r1
      006064 87 06            [24] 9231 	mov	ar6,@r1
      006066 09               [12] 9232 	inc	r1
      006067 87 07            [24] 9233 	mov	ar7,@r1
      006069 19               [12] 9234 	dec	r1
      00606A 19               [12] 9235 	dec	r1
      00606B 19               [12] 9236 	dec	r1
                                   9237 ;	calc.c:33: printf("%08lx\t", d);
      00606C C0 07            [24] 9238 	push	ar7
      00606E C0 06            [24] 9239 	push	ar6
      006070 C0 05            [24] 9240 	push	ar5
      006072 C0 04            [24] 9241 	push	ar4
      006074 C0 01            [24] 9242 	push	ar1
      006076 C0 04            [24] 9243 	push	ar4
      006078 C0 05            [24] 9244 	push	ar5
      00607A C0 06            [24] 9245 	push	ar6
      00607C C0 07            [24] 9246 	push	ar7
      00607E 74 84            [12] 9247 	mov	a,#___str_0
      006080 C0 E0            [24] 9248 	push	acc
      006082 74 8E            [12] 9249 	mov	a,#(___str_0 >> 8)
      006084 C0 E0            [24] 9250 	push	acc
      006086 74 80            [12] 9251 	mov	a,#0x80
      006088 C0 E0            [24] 9252 	push	acc
      00608A 12 75 CA         [24] 9253 	lcall	_printf
      00608D E5 81            [12] 9254 	mov	a,sp
      00608F 24 F9            [12] 9255 	add	a,#0xf9
      006091 F5 81            [12] 9256 	mov	sp,a
      006093 D0 01            [24] 9257 	pop	ar1
      006095 D0 04            [24] 9258 	pop	ar4
      006097 D0 05            [24] 9259 	pop	ar5
      006099 D0 06            [24] 9260 	pop	ar6
      00609B D0 07            [24] 9261 	pop	ar7
                                   9262 ;	calc.c:34: printf("% 11ld\t", d);
      00609D C0 07            [24] 9263 	push	ar7
      00609F C0 06            [24] 9264 	push	ar6
      0060A1 C0 05            [24] 9265 	push	ar5
      0060A3 C0 04            [24] 9266 	push	ar4
      0060A5 C0 01            [24] 9267 	push	ar1
      0060A7 C0 04            [24] 9268 	push	ar4
      0060A9 C0 05            [24] 9269 	push	ar5
      0060AB C0 06            [24] 9270 	push	ar6
      0060AD C0 07            [24] 9271 	push	ar7
      0060AF 74 8B            [12] 9272 	mov	a,#___str_1
      0060B1 C0 E0            [24] 9273 	push	acc
      0060B3 74 8E            [12] 9274 	mov	a,#(___str_1 >> 8)
      0060B5 C0 E0            [24] 9275 	push	acc
      0060B7 74 80            [12] 9276 	mov	a,#0x80
      0060B9 C0 E0            [24] 9277 	push	acc
      0060BB 12 75 CA         [24] 9278 	lcall	_printf
      0060BE E5 81            [12] 9279 	mov	a,sp
      0060C0 24 F9            [12] 9280 	add	a,#0xf9
      0060C2 F5 81            [12] 9281 	mov	sp,a
      0060C4 D0 01            [24] 9282 	pop	ar1
      0060C6 D0 04            [24] 9283 	pop	ar4
      0060C8 D0 05            [24] 9284 	pop	ar5
      0060CA D0 06            [24] 9285 	pop	ar6
      0060CC D0 07            [24] 9286 	pop	ar7
                                   9287 ;	calc.c:35: printf("%011lo\t", d);
      0060CE C0 07            [24] 9288 	push	ar7
      0060D0 C0 06            [24] 9289 	push	ar6
      0060D2 C0 05            [24] 9290 	push	ar5
      0060D4 C0 04            [24] 9291 	push	ar4
      0060D6 C0 01            [24] 9292 	push	ar1
      0060D8 C0 04            [24] 9293 	push	ar4
      0060DA C0 05            [24] 9294 	push	ar5
      0060DC C0 06            [24] 9295 	push	ar6
      0060DE C0 07            [24] 9296 	push	ar7
      0060E0 74 93            [12] 9297 	mov	a,#___str_2
      0060E2 C0 E0            [24] 9298 	push	acc
      0060E4 74 8E            [12] 9299 	mov	a,#(___str_2 >> 8)
      0060E6 C0 E0            [24] 9300 	push	acc
      0060E8 74 80            [12] 9301 	mov	a,#0x80
      0060EA C0 E0            [24] 9302 	push	acc
      0060EC 12 75 CA         [24] 9303 	lcall	_printf
      0060EF E5 81            [12] 9304 	mov	a,sp
      0060F1 24 F9            [12] 9305 	add	a,#0xf9
      0060F3 F5 81            [12] 9306 	mov	sp,a
      0060F5 D0 01            [24] 9307 	pop	ar1
      0060F7 D0 04            [24] 9308 	pop	ar4
      0060F9 D0 05            [24] 9309 	pop	ar5
      0060FB D0 06            [24] 9310 	pop	ar6
      0060FD D0 07            [24] 9311 	pop	ar7
                                   9312 ;	calc.c:36: printbin(d);
      0060FF E5 08            [12] 9313 	mov	a,_bp
      006101 24 16            [12] 9314 	add	a,#0x16
      006103 F8               [12] 9315 	mov	r0,a
      006104 A6 04            [24] 9316 	mov	@r0,ar4
      006106 08               [12] 9317 	inc	r0
      006107 A6 05            [24] 9318 	mov	@r0,ar5
      006109 08               [12] 9319 	inc	r0
      00610A A6 06            [24] 9320 	mov	@r0,ar6
      00610C 08               [12] 9321 	inc	r0
      00610D A6 07            [24] 9322 	mov	@r0,ar7
                                   9323 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      00610F E5 08            [12] 9324 	mov	a,_bp
      006111 24 1A            [12] 9325 	add	a,#0x1a
      006113 F8               [12] 9326 	mov	r0,a
      006114 E4               [12] 9327 	clr	a
      006115 F6               [12] 9328 	mov	@r0,a
      006116 08               [12] 9329 	inc	r0
      006117 F6               [12] 9330 	mov	@r0,a
      006118 08               [12] 9331 	inc	r0
      006119 F6               [12] 9332 	mov	@r0,a
      00611A 08               [12] 9333 	inc	r0
      00611B 76 80            [12] 9334 	mov	@r0,#0x80
      00611D                       9335 00151$:
                                   9336 ;	calc.c:27: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00611D C0 01            [24] 9337 	push	ar1
      00611F E5 08            [12] 9338 	mov	a,_bp
      006121 24 16            [12] 9339 	add	a,#0x16
      006123 F8               [12] 9340 	mov	r0,a
      006124 86 04            [24] 9341 	mov	ar4,@r0
      006126 08               [12] 9342 	inc	r0
      006127 86 05            [24] 9343 	mov	ar5,@r0
      006129 08               [12] 9344 	inc	r0
      00612A 86 06            [24] 9345 	mov	ar6,@r0
      00612C 08               [12] 9346 	inc	r0
      00612D 86 07            [24] 9347 	mov	ar7,@r0
      00612F E5 08            [12] 9348 	mov	a,_bp
      006131 24 1A            [12] 9349 	add	a,#0x1a
      006133 F8               [12] 9350 	mov	r0,a
      006134 E6               [12] 9351 	mov	a,@r0
      006135 52 04            [12] 9352 	anl	ar4,a
      006137 08               [12] 9353 	inc	r0
      006138 E6               [12] 9354 	mov	a,@r0
      006139 52 05            [12] 9355 	anl	ar5,a
      00613B 08               [12] 9356 	inc	r0
      00613C E6               [12] 9357 	mov	a,@r0
      00613D 52 06            [12] 9358 	anl	ar6,a
      00613F 08               [12] 9359 	inc	r0
      006140 E6               [12] 9360 	mov	a,@r0
      006141 52 07            [12] 9361 	anl	ar7,a
      006143 D0 01            [24] 9362 	pop	ar1
      006145 EC               [12] 9363 	mov	a,r4
      006146 4D               [12] 9364 	orl	a,r5
      006147 4E               [12] 9365 	orl	a,r6
      006148 4F               [12] 9366 	orl	a,r7
      006149 60 06            [24] 9367 	jz	00172$
      00614B 7E 31            [12] 9368 	mov	r6,#0x31
      00614D 7F 00            [12] 9369 	mov	r7,#0x00
      00614F 80 04            [24] 9370 	sjmp	00173$
      006151                       9371 00172$:
      006151 7E 30            [12] 9372 	mov	r6,#0x30
      006153 7F 00            [12] 9373 	mov	r7,#0x00
      006155                       9374 00173$:
      006155 8E 82            [24] 9375 	mov	dpl,r6
      006157 8F 83            [24] 9376 	mov	dph,r7
      006159 C0 01            [24] 9377 	push	ar1
      00615B 12 71 72         [24] 9378 	lcall	_putchar
      00615E D0 01            [24] 9379 	pop	ar1
                                   9380 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      006160 E5 08            [12] 9381 	mov	a,_bp
      006162 24 1A            [12] 9382 	add	a,#0x1a
      006164 F8               [12] 9383 	mov	r0,a
      006165 08               [12] 9384 	inc	r0
      006166 08               [12] 9385 	inc	r0
      006167 08               [12] 9386 	inc	r0
      006168 E6               [12] 9387 	mov	a,@r0
      006169 C3               [12] 9388 	clr	c
      00616A 13               [12] 9389 	rrc	a
      00616B F6               [12] 9390 	mov	@r0,a
      00616C 18               [12] 9391 	dec	r0
      00616D E6               [12] 9392 	mov	a,@r0
      00616E 13               [12] 9393 	rrc	a
      00616F F6               [12] 9394 	mov	@r0,a
      006170 18               [12] 9395 	dec	r0
      006171 E6               [12] 9396 	mov	a,@r0
      006172 13               [12] 9397 	rrc	a
      006173 F6               [12] 9398 	mov	@r0,a
      006174 18               [12] 9399 	dec	r0
      006175 E6               [12] 9400 	mov	a,@r0
      006176 13               [12] 9401 	rrc	a
      006177 F6               [12] 9402 	mov	@r0,a
      006178 E5 08            [12] 9403 	mov	a,_bp
      00617A 24 1A            [12] 9404 	add	a,#0x1a
      00617C F8               [12] 9405 	mov	r0,a
      00617D E6               [12] 9406 	mov	a,@r0
      00617E 08               [12] 9407 	inc	r0
      00617F 46               [12] 9408 	orl	a,@r0
      006180 08               [12] 9409 	inc	r0
      006181 46               [12] 9410 	orl	a,@r0
      006182 08               [12] 9411 	inc	r0
      006183 46               [12] 9412 	orl	a,@r0
      006184 70 97            [24] 9413 	jnz	00151$
                                   9414 ;	calc.c:378: if (n > 1) printall(vals[0]);
      006186                       9415 00106$:
                                   9416 ;	calc.c:380: n = stack_peek2(ctx->ss, vals);
      006186 89 07            [24] 9417 	mov	ar7,r1
      006188 7E 00            [12] 9418 	mov	r6,#0x00
      00618A 7D 40            [12] 9419 	mov	r5,#0x40
      00618C A8 08            [24] 9420 	mov	r0,_bp
      00618E 08               [12] 9421 	inc	r0
      00618F 86 82            [24] 9422 	mov	dpl,@r0
      006191 08               [12] 9423 	inc	r0
      006192 86 83            [24] 9424 	mov	dph,@r0
      006194 08               [12] 9425 	inc	r0
      006195 86 F0            [24] 9426 	mov	b,@r0
      006197 12 76 03         [24] 9427 	lcall	__gptrget
      00619A FA               [12] 9428 	mov	r2,a
      00619B A3               [24] 9429 	inc	dptr
      00619C 12 76 03         [24] 9430 	lcall	__gptrget
      00619F FB               [12] 9431 	mov	r3,a
      0061A0 A3               [24] 9432 	inc	dptr
      0061A1 12 76 03         [24] 9433 	lcall	__gptrget
      0061A4 FC               [12] 9434 	mov	r4,a
      0061A5 C0 01            [24] 9435 	push	ar1
      0061A7 C0 07            [24] 9436 	push	ar7
      0061A9 C0 06            [24] 9437 	push	ar6
      0061AB C0 05            [24] 9438 	push	ar5
      0061AD 8A 82            [24] 9439 	mov	dpl,r2
      0061AF 8B 83            [24] 9440 	mov	dph,r3
      0061B1 8C F0            [24] 9441 	mov	b,r4
      0061B3 12 28 FF         [24] 9442 	lcall	_stack_peek2
      0061B6 AE 82            [24] 9443 	mov	r6,dpl
      0061B8 AF 83            [24] 9444 	mov	r7,dph
      0061BA 15 81            [12] 9445 	dec	sp
      0061BC 15 81            [12] 9446 	dec	sp
      0061BE 15 81            [12] 9447 	dec	sp
      0061C0 D0 01            [24] 9448 	pop	ar1
      0061C2 E5 08            [12] 9449 	mov	a,_bp
      0061C4 24 09            [12] 9450 	add	a,#0x09
      0061C6 F8               [12] 9451 	mov	r0,a
      0061C7 A6 06            [24] 9452 	mov	@r0,ar6
      0061C9 08               [12] 9453 	inc	r0
      0061CA A6 07            [24] 9454 	mov	@r0,ar7
                                   9455 ;	calc.c:381: printstr("\r\nSSTOP1\t");
      0061CC 7B 82            [12] 9456 	mov	r3,#___str_19
      0061CE 7C 8F            [12] 9457 	mov	r4,#(___str_19 >> 8)
      0061D0 7D 80            [12] 9458 	mov	r5,#0x80
                                   9459 ;	calc.c:20: return;
      0061D2                       9460 00154$:
                                   9461 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0061D2 8B 82            [24] 9462 	mov	dpl,r3
      0061D4 8C 83            [24] 9463 	mov	dph,r4
      0061D6 8D F0            [24] 9464 	mov	b,r5
      0061D8 12 76 03         [24] 9465 	lcall	__gptrget
      0061DB FA               [12] 9466 	mov	r2,a
      0061DC 60 20            [24] 9467 	jz	00127$
      0061DE 7F 00            [12] 9468 	mov	r7,#0x00
      0061E0 8A 82            [24] 9469 	mov	dpl,r2
      0061E2 8F 83            [24] 9470 	mov	dph,r7
      0061E4 C0 05            [24] 9471 	push	ar5
      0061E6 C0 04            [24] 9472 	push	ar4
      0061E8 C0 03            [24] 9473 	push	ar3
      0061EA C0 01            [24] 9474 	push	ar1
      0061EC 12 71 72         [24] 9475 	lcall	_putchar
      0061EF D0 01            [24] 9476 	pop	ar1
      0061F1 D0 03            [24] 9477 	pop	ar3
      0061F3 D0 04            [24] 9478 	pop	ar4
      0061F5 D0 05            [24] 9479 	pop	ar5
      0061F7 0B               [12] 9480 	inc	r3
                                   9481 ;	calc.c:381: printstr("\r\nSSTOP1\t");
      0061F8 BB 00 D7         [24] 9482 	cjne	r3,#0x00,00154$
      0061FB 0C               [12] 9483 	inc	r4
      0061FC 80 D4            [24] 9484 	sjmp	00154$
      0061FE                       9485 00127$:
                                   9486 ;	calc.c:382: if (n > 0) printall(vals[1]);
      0061FE E5 08            [12] 9487 	mov	a,_bp
      006200 24 09            [12] 9488 	add	a,#0x09
      006202 F8               [12] 9489 	mov	r0,a
      006203 C3               [12] 9490 	clr	c
      006204 E4               [12] 9491 	clr	a
      006205 96               [12] 9492 	subb	a,@r0
      006206 74 80            [12] 9493 	mov	a,#(0x00 ^ 0x80)
      006208 08               [12] 9494 	inc	r0
      006209 86 F0            [24] 9495 	mov	b,@r0
      00620B 63 F0 80         [24] 9496 	xrl	b,#0x80
      00620E 95 F0            [12] 9497 	subb	a,b
      006210 40 03            [24] 9498 	jc	00336$
      006212 02 63 3E         [24] 9499 	ljmp	00108$
      006215                       9500 00336$:
      006215 74 04            [12] 9501 	mov	a,#0x04
      006217 29               [12] 9502 	add	a,r1
      006218 F8               [12] 9503 	mov	r0,a
      006219 86 02            [24] 9504 	mov	ar2,@r0
      00621B 08               [12] 9505 	inc	r0
      00621C 86 03            [24] 9506 	mov	ar3,@r0
      00621E 08               [12] 9507 	inc	r0
      00621F 86 04            [24] 9508 	mov	ar4,@r0
      006221 08               [12] 9509 	inc	r0
      006222 86 05            [24] 9510 	mov	ar5,@r0
                                   9511 ;	calc.c:33: printf("%08lx\t", d);
      006224 C0 05            [24] 9512 	push	ar5
      006226 C0 04            [24] 9513 	push	ar4
      006228 C0 03            [24] 9514 	push	ar3
      00622A C0 02            [24] 9515 	push	ar2
      00622C C0 01            [24] 9516 	push	ar1
      00622E C0 02            [24] 9517 	push	ar2
      006230 C0 03            [24] 9518 	push	ar3
      006232 C0 04            [24] 9519 	push	ar4
      006234 C0 05            [24] 9520 	push	ar5
      006236 74 84            [12] 9521 	mov	a,#___str_0
      006238 C0 E0            [24] 9522 	push	acc
      00623A 74 8E            [12] 9523 	mov	a,#(___str_0 >> 8)
      00623C C0 E0            [24] 9524 	push	acc
      00623E 74 80            [12] 9525 	mov	a,#0x80
      006240 C0 E0            [24] 9526 	push	acc
      006242 12 75 CA         [24] 9527 	lcall	_printf
      006245 E5 81            [12] 9528 	mov	a,sp
      006247 24 F9            [12] 9529 	add	a,#0xf9
      006249 F5 81            [12] 9530 	mov	sp,a
      00624B D0 01            [24] 9531 	pop	ar1
      00624D D0 02            [24] 9532 	pop	ar2
      00624F D0 03            [24] 9533 	pop	ar3
      006251 D0 04            [24] 9534 	pop	ar4
      006253 D0 05            [24] 9535 	pop	ar5
                                   9536 ;	calc.c:34: printf("% 11ld\t", d);
      006255 C0 05            [24] 9537 	push	ar5
      006257 C0 04            [24] 9538 	push	ar4
      006259 C0 03            [24] 9539 	push	ar3
      00625B C0 02            [24] 9540 	push	ar2
      00625D C0 01            [24] 9541 	push	ar1
      00625F C0 02            [24] 9542 	push	ar2
      006261 C0 03            [24] 9543 	push	ar3
      006263 C0 04            [24] 9544 	push	ar4
      006265 C0 05            [24] 9545 	push	ar5
      006267 74 8B            [12] 9546 	mov	a,#___str_1
      006269 C0 E0            [24] 9547 	push	acc
      00626B 74 8E            [12] 9548 	mov	a,#(___str_1 >> 8)
      00626D C0 E0            [24] 9549 	push	acc
      00626F 74 80            [12] 9550 	mov	a,#0x80
      006271 C0 E0            [24] 9551 	push	acc
      006273 12 75 CA         [24] 9552 	lcall	_printf
      006276 E5 81            [12] 9553 	mov	a,sp
      006278 24 F9            [12] 9554 	add	a,#0xf9
      00627A F5 81            [12] 9555 	mov	sp,a
      00627C D0 01            [24] 9556 	pop	ar1
      00627E D0 02            [24] 9557 	pop	ar2
      006280 D0 03            [24] 9558 	pop	ar3
      006282 D0 04            [24] 9559 	pop	ar4
      006284 D0 05            [24] 9560 	pop	ar5
                                   9561 ;	calc.c:35: printf("%011lo\t", d);
      006286 C0 05            [24] 9562 	push	ar5
      006288 C0 04            [24] 9563 	push	ar4
      00628A C0 03            [24] 9564 	push	ar3
      00628C C0 02            [24] 9565 	push	ar2
      00628E C0 01            [24] 9566 	push	ar1
      006290 C0 02            [24] 9567 	push	ar2
      006292 C0 03            [24] 9568 	push	ar3
      006294 C0 04            [24] 9569 	push	ar4
      006296 C0 05            [24] 9570 	push	ar5
      006298 74 93            [12] 9571 	mov	a,#___str_2
      00629A C0 E0            [24] 9572 	push	acc
      00629C 74 8E            [12] 9573 	mov	a,#(___str_2 >> 8)
      00629E C0 E0            [24] 9574 	push	acc
      0062A0 74 80            [12] 9575 	mov	a,#0x80
      0062A2 C0 E0            [24] 9576 	push	acc
      0062A4 12 75 CA         [24] 9577 	lcall	_printf
      0062A7 E5 81            [12] 9578 	mov	a,sp
      0062A9 24 F9            [12] 9579 	add	a,#0xf9
      0062AB F5 81            [12] 9580 	mov	sp,a
      0062AD D0 01            [24] 9581 	pop	ar1
      0062AF D0 02            [24] 9582 	pop	ar2
      0062B1 D0 03            [24] 9583 	pop	ar3
      0062B3 D0 04            [24] 9584 	pop	ar4
      0062B5 D0 05            [24] 9585 	pop	ar5
                                   9586 ;	calc.c:36: printbin(d);
      0062B7 E5 08            [12] 9587 	mov	a,_bp
      0062B9 24 16            [12] 9588 	add	a,#0x16
      0062BB F8               [12] 9589 	mov	r0,a
      0062BC A6 02            [24] 9590 	mov	@r0,ar2
      0062BE 08               [12] 9591 	inc	r0
      0062BF A6 03            [24] 9592 	mov	@r0,ar3
      0062C1 08               [12] 9593 	inc	r0
      0062C2 A6 04            [24] 9594 	mov	@r0,ar4
      0062C4 08               [12] 9595 	inc	r0
      0062C5 A6 05            [24] 9596 	mov	@r0,ar5
                                   9597 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      0062C7 E5 08            [12] 9598 	mov	a,_bp
      0062C9 24 1A            [12] 9599 	add	a,#0x1a
      0062CB F8               [12] 9600 	mov	r0,a
      0062CC E4               [12] 9601 	clr	a
      0062CD F6               [12] 9602 	mov	@r0,a
      0062CE 08               [12] 9603 	inc	r0
      0062CF F6               [12] 9604 	mov	@r0,a
      0062D0 08               [12] 9605 	inc	r0
      0062D1 F6               [12] 9606 	mov	@r0,a
      0062D2 08               [12] 9607 	inc	r0
      0062D3 76 80            [12] 9608 	mov	@r0,#0x80
      0062D5                       9609 00156$:
                                   9610 ;	calc.c:27: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0062D5 C0 01            [24] 9611 	push	ar1
      0062D7 E5 08            [12] 9612 	mov	a,_bp
      0062D9 24 16            [12] 9613 	add	a,#0x16
      0062DB F8               [12] 9614 	mov	r0,a
      0062DC 86 02            [24] 9615 	mov	ar2,@r0
      0062DE 08               [12] 9616 	inc	r0
      0062DF 86 03            [24] 9617 	mov	ar3,@r0
      0062E1 08               [12] 9618 	inc	r0
      0062E2 86 05            [24] 9619 	mov	ar5,@r0
      0062E4 08               [12] 9620 	inc	r0
      0062E5 86 07            [24] 9621 	mov	ar7,@r0
      0062E7 E5 08            [12] 9622 	mov	a,_bp
      0062E9 24 1A            [12] 9623 	add	a,#0x1a
      0062EB F8               [12] 9624 	mov	r0,a
      0062EC E6               [12] 9625 	mov	a,@r0
      0062ED 52 02            [12] 9626 	anl	ar2,a
      0062EF 08               [12] 9627 	inc	r0
      0062F0 E6               [12] 9628 	mov	a,@r0
      0062F1 52 03            [12] 9629 	anl	ar3,a
      0062F3 08               [12] 9630 	inc	r0
      0062F4 E6               [12] 9631 	mov	a,@r0
      0062F5 52 05            [12] 9632 	anl	ar5,a
      0062F7 08               [12] 9633 	inc	r0
      0062F8 E6               [12] 9634 	mov	a,@r0
      0062F9 52 07            [12] 9635 	anl	ar7,a
      0062FB D0 01            [24] 9636 	pop	ar1
      0062FD EA               [12] 9637 	mov	a,r2
      0062FE 4B               [12] 9638 	orl	a,r3
      0062FF 4D               [12] 9639 	orl	a,r5
      006300 4F               [12] 9640 	orl	a,r7
      006301 60 06            [24] 9641 	jz	00174$
      006303 7E 31            [12] 9642 	mov	r6,#0x31
      006305 7F 00            [12] 9643 	mov	r7,#0x00
      006307 80 04            [24] 9644 	sjmp	00175$
      006309                       9645 00174$:
      006309 7E 30            [12] 9646 	mov	r6,#0x30
      00630B 7F 00            [12] 9647 	mov	r7,#0x00
      00630D                       9648 00175$:
      00630D 8E 82            [24] 9649 	mov	dpl,r6
      00630F 8F 83            [24] 9650 	mov	dph,r7
      006311 C0 01            [24] 9651 	push	ar1
      006313 12 71 72         [24] 9652 	lcall	_putchar
      006316 D0 01            [24] 9653 	pop	ar1
                                   9654 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      006318 E5 08            [12] 9655 	mov	a,_bp
      00631A 24 1A            [12] 9656 	add	a,#0x1a
      00631C F8               [12] 9657 	mov	r0,a
      00631D 08               [12] 9658 	inc	r0
      00631E 08               [12] 9659 	inc	r0
      00631F 08               [12] 9660 	inc	r0
      006320 E6               [12] 9661 	mov	a,@r0
      006321 C3               [12] 9662 	clr	c
      006322 13               [12] 9663 	rrc	a
      006323 F6               [12] 9664 	mov	@r0,a
      006324 18               [12] 9665 	dec	r0
      006325 E6               [12] 9666 	mov	a,@r0
      006326 13               [12] 9667 	rrc	a
      006327 F6               [12] 9668 	mov	@r0,a
      006328 18               [12] 9669 	dec	r0
      006329 E6               [12] 9670 	mov	a,@r0
      00632A 13               [12] 9671 	rrc	a
      00632B F6               [12] 9672 	mov	@r0,a
      00632C 18               [12] 9673 	dec	r0
      00632D E6               [12] 9674 	mov	a,@r0
      00632E 13               [12] 9675 	rrc	a
      00632F F6               [12] 9676 	mov	@r0,a
      006330 E5 08            [12] 9677 	mov	a,_bp
      006332 24 1A            [12] 9678 	add	a,#0x1a
      006334 F8               [12] 9679 	mov	r0,a
      006335 E6               [12] 9680 	mov	a,@r0
      006336 08               [12] 9681 	inc	r0
      006337 46               [12] 9682 	orl	a,@r0
      006338 08               [12] 9683 	inc	r0
      006339 46               [12] 9684 	orl	a,@r0
      00633A 08               [12] 9685 	inc	r0
      00633B 46               [12] 9686 	orl	a,@r0
      00633C 70 97            [24] 9687 	jnz	00156$
                                   9688 ;	calc.c:382: if (n > 0) printall(vals[1]);
      00633E                       9689 00108$:
                                   9690 ;	calc.c:383: printstr("\r\nSSTOP0\t");
      00633E 7D 8C            [12] 9691 	mov	r5,#___str_20
      006340 7E 8F            [12] 9692 	mov	r6,#(___str_20 >> 8)
      006342 7F 80            [12] 9693 	mov	r7,#0x80
                                   9694 ;	calc.c:20: return;
      006344                       9695 00159$:
                                   9696 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006344 8D 82            [24] 9697 	mov	dpl,r5
      006346 8E 83            [24] 9698 	mov	dph,r6
      006348 8F F0            [24] 9699 	mov	b,r7
      00634A 12 76 03         [24] 9700 	lcall	__gptrget
      00634D FC               [12] 9701 	mov	r4,a
      00634E 60 20            [24] 9702 	jz	00132$
      006350 7B 00            [12] 9703 	mov	r3,#0x00
      006352 8C 82            [24] 9704 	mov	dpl,r4
      006354 8B 83            [24] 9705 	mov	dph,r3
      006356 C0 07            [24] 9706 	push	ar7
      006358 C0 06            [24] 9707 	push	ar6
      00635A C0 05            [24] 9708 	push	ar5
      00635C C0 01            [24] 9709 	push	ar1
      00635E 12 71 72         [24] 9710 	lcall	_putchar
      006361 D0 01            [24] 9711 	pop	ar1
      006363 D0 05            [24] 9712 	pop	ar5
      006365 D0 06            [24] 9713 	pop	ar6
      006367 D0 07            [24] 9714 	pop	ar7
      006369 0D               [12] 9715 	inc	r5
                                   9716 ;	calc.c:383: printstr("\r\nSSTOP0\t");
      00636A BD 00 D7         [24] 9717 	cjne	r5,#0x00,00159$
      00636D 0E               [12] 9718 	inc	r6
      00636E 80 D4            [24] 9719 	sjmp	00159$
      006370                       9720 00132$:
                                   9721 ;	calc.c:384: if (n > 1) printall(vals[0]);
      006370 E5 08            [12] 9722 	mov	a,_bp
      006372 24 09            [12] 9723 	add	a,#0x09
      006374 F8               [12] 9724 	mov	r0,a
      006375 C3               [12] 9725 	clr	c
      006376 74 01            [12] 9726 	mov	a,#0x01
      006378 96               [12] 9727 	subb	a,@r0
      006379 74 80            [12] 9728 	mov	a,#(0x00 ^ 0x80)
      00637B 08               [12] 9729 	inc	r0
      00637C 86 F0            [24] 9730 	mov	b,@r0
      00637E 63 F0 80         [24] 9731 	xrl	b,#0x80
      006381 95 F0            [12] 9732 	subb	a,b
      006383 40 03            [24] 9733 	jc	00341$
      006385 02 64 99         [24] 9734 	ljmp	00110$
      006388                       9735 00341$:
      006388 87 04            [24] 9736 	mov	ar4,@r1
      00638A 09               [12] 9737 	inc	r1
      00638B 87 05            [24] 9738 	mov	ar5,@r1
      00638D 09               [12] 9739 	inc	r1
      00638E 87 06            [24] 9740 	mov	ar6,@r1
      006390 09               [12] 9741 	inc	r1
      006391 87 07            [24] 9742 	mov	ar7,@r1
                                   9743 ;	calc.c:33: printf("%08lx\t", d);
      006393 C0 07            [24] 9744 	push	ar7
      006395 C0 06            [24] 9745 	push	ar6
      006397 C0 05            [24] 9746 	push	ar5
      006399 C0 04            [24] 9747 	push	ar4
      00639B C0 04            [24] 9748 	push	ar4
      00639D C0 05            [24] 9749 	push	ar5
      00639F C0 06            [24] 9750 	push	ar6
      0063A1 C0 07            [24] 9751 	push	ar7
      0063A3 74 84            [12] 9752 	mov	a,#___str_0
      0063A5 C0 E0            [24] 9753 	push	acc
      0063A7 74 8E            [12] 9754 	mov	a,#(___str_0 >> 8)
      0063A9 C0 E0            [24] 9755 	push	acc
      0063AB 74 80            [12] 9756 	mov	a,#0x80
      0063AD C0 E0            [24] 9757 	push	acc
      0063AF 12 75 CA         [24] 9758 	lcall	_printf
      0063B2 E5 81            [12] 9759 	mov	a,sp
      0063B4 24 F9            [12] 9760 	add	a,#0xf9
      0063B6 F5 81            [12] 9761 	mov	sp,a
      0063B8 D0 04            [24] 9762 	pop	ar4
      0063BA D0 05            [24] 9763 	pop	ar5
      0063BC D0 06            [24] 9764 	pop	ar6
      0063BE D0 07            [24] 9765 	pop	ar7
                                   9766 ;	calc.c:34: printf("% 11ld\t", d);
      0063C0 C0 07            [24] 9767 	push	ar7
      0063C2 C0 06            [24] 9768 	push	ar6
      0063C4 C0 05            [24] 9769 	push	ar5
      0063C6 C0 04            [24] 9770 	push	ar4
      0063C8 C0 04            [24] 9771 	push	ar4
      0063CA C0 05            [24] 9772 	push	ar5
      0063CC C0 06            [24] 9773 	push	ar6
      0063CE C0 07            [24] 9774 	push	ar7
      0063D0 74 8B            [12] 9775 	mov	a,#___str_1
      0063D2 C0 E0            [24] 9776 	push	acc
      0063D4 74 8E            [12] 9777 	mov	a,#(___str_1 >> 8)
      0063D6 C0 E0            [24] 9778 	push	acc
      0063D8 74 80            [12] 9779 	mov	a,#0x80
      0063DA C0 E0            [24] 9780 	push	acc
      0063DC 12 75 CA         [24] 9781 	lcall	_printf
      0063DF E5 81            [12] 9782 	mov	a,sp
      0063E1 24 F9            [12] 9783 	add	a,#0xf9
      0063E3 F5 81            [12] 9784 	mov	sp,a
      0063E5 D0 04            [24] 9785 	pop	ar4
      0063E7 D0 05            [24] 9786 	pop	ar5
      0063E9 D0 06            [24] 9787 	pop	ar6
      0063EB D0 07            [24] 9788 	pop	ar7
                                   9789 ;	calc.c:35: printf("%011lo\t", d);
      0063ED C0 07            [24] 9790 	push	ar7
      0063EF C0 06            [24] 9791 	push	ar6
      0063F1 C0 05            [24] 9792 	push	ar5
      0063F3 C0 04            [24] 9793 	push	ar4
      0063F5 C0 04            [24] 9794 	push	ar4
      0063F7 C0 05            [24] 9795 	push	ar5
      0063F9 C0 06            [24] 9796 	push	ar6
      0063FB C0 07            [24] 9797 	push	ar7
      0063FD 74 93            [12] 9798 	mov	a,#___str_2
      0063FF C0 E0            [24] 9799 	push	acc
      006401 74 8E            [12] 9800 	mov	a,#(___str_2 >> 8)
      006403 C0 E0            [24] 9801 	push	acc
      006405 74 80            [12] 9802 	mov	a,#0x80
      006407 C0 E0            [24] 9803 	push	acc
      006409 12 75 CA         [24] 9804 	lcall	_printf
      00640C E5 81            [12] 9805 	mov	a,sp
      00640E 24 F9            [12] 9806 	add	a,#0xf9
      006410 F5 81            [12] 9807 	mov	sp,a
      006412 D0 04            [24] 9808 	pop	ar4
      006414 D0 05            [24] 9809 	pop	ar5
      006416 D0 06            [24] 9810 	pop	ar6
      006418 D0 07            [24] 9811 	pop	ar7
                                   9812 ;	calc.c:36: printbin(d);
      00641A E5 08            [12] 9813 	mov	a,_bp
      00641C 24 16            [12] 9814 	add	a,#0x16
      00641E F8               [12] 9815 	mov	r0,a
      00641F A6 04            [24] 9816 	mov	@r0,ar4
      006421 08               [12] 9817 	inc	r0
      006422 A6 05            [24] 9818 	mov	@r0,ar5
      006424 08               [12] 9819 	inc	r0
      006425 A6 06            [24] 9820 	mov	@r0,ar6
      006427 08               [12] 9821 	inc	r0
      006428 A6 07            [24] 9822 	mov	@r0,ar7
                                   9823 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      00642A E5 08            [12] 9824 	mov	a,_bp
      00642C 24 1A            [12] 9825 	add	a,#0x1a
      00642E F8               [12] 9826 	mov	r0,a
      00642F E4               [12] 9827 	clr	a
      006430 F6               [12] 9828 	mov	@r0,a
      006431 08               [12] 9829 	inc	r0
      006432 F6               [12] 9830 	mov	@r0,a
      006433 08               [12] 9831 	inc	r0
      006434 F6               [12] 9832 	mov	@r0,a
      006435 08               [12] 9833 	inc	r0
      006436 76 80            [12] 9834 	mov	@r0,#0x80
      006438                       9835 00161$:
                                   9836 ;	calc.c:27: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      006438 E5 08            [12] 9837 	mov	a,_bp
      00643A 24 16            [12] 9838 	add	a,#0x16
      00643C F8               [12] 9839 	mov	r0,a
      00643D 86 04            [24] 9840 	mov	ar4,@r0
      00643F 08               [12] 9841 	inc	r0
      006440 86 05            [24] 9842 	mov	ar5,@r0
      006442 08               [12] 9843 	inc	r0
      006443 86 06            [24] 9844 	mov	ar6,@r0
      006445 08               [12] 9845 	inc	r0
      006446 86 07            [24] 9846 	mov	ar7,@r0
      006448 E5 08            [12] 9847 	mov	a,_bp
      00644A 24 1A            [12] 9848 	add	a,#0x1a
      00644C F8               [12] 9849 	mov	r0,a
      00644D E6               [12] 9850 	mov	a,@r0
      00644E 52 04            [12] 9851 	anl	ar4,a
      006450 08               [12] 9852 	inc	r0
      006451 E6               [12] 9853 	mov	a,@r0
      006452 52 05            [12] 9854 	anl	ar5,a
      006454 08               [12] 9855 	inc	r0
      006455 E6               [12] 9856 	mov	a,@r0
      006456 52 06            [12] 9857 	anl	ar6,a
      006458 08               [12] 9858 	inc	r0
      006459 E6               [12] 9859 	mov	a,@r0
      00645A 52 07            [12] 9860 	anl	ar7,a
      00645C EC               [12] 9861 	mov	a,r4
      00645D 4D               [12] 9862 	orl	a,r5
      00645E 4E               [12] 9863 	orl	a,r6
      00645F 4F               [12] 9864 	orl	a,r7
      006460 60 06            [24] 9865 	jz	00176$
      006462 7E 31            [12] 9866 	mov	r6,#0x31
      006464 7F 00            [12] 9867 	mov	r7,#0x00
      006466 80 04            [24] 9868 	sjmp	00177$
      006468                       9869 00176$:
      006468 7E 30            [12] 9870 	mov	r6,#0x30
      00646A 7F 00            [12] 9871 	mov	r7,#0x00
      00646C                       9872 00177$:
      00646C 8E 82            [24] 9873 	mov	dpl,r6
      00646E 8F 83            [24] 9874 	mov	dph,r7
      006470 12 71 72         [24] 9875 	lcall	_putchar
                                   9876 ;	calc.c:26: for (mask = 0x80000000lu; mask; mask >>= 1)
      006473 E5 08            [12] 9877 	mov	a,_bp
      006475 24 1A            [12] 9878 	add	a,#0x1a
      006477 F8               [12] 9879 	mov	r0,a
      006478 08               [12] 9880 	inc	r0
      006479 08               [12] 9881 	inc	r0
      00647A 08               [12] 9882 	inc	r0
      00647B E6               [12] 9883 	mov	a,@r0
      00647C C3               [12] 9884 	clr	c
      00647D 13               [12] 9885 	rrc	a
      00647E F6               [12] 9886 	mov	@r0,a
      00647F 18               [12] 9887 	dec	r0
      006480 E6               [12] 9888 	mov	a,@r0
      006481 13               [12] 9889 	rrc	a
      006482 F6               [12] 9890 	mov	@r0,a
      006483 18               [12] 9891 	dec	r0
      006484 E6               [12] 9892 	mov	a,@r0
      006485 13               [12] 9893 	rrc	a
      006486 F6               [12] 9894 	mov	@r0,a
      006487 18               [12] 9895 	dec	r0
      006488 E6               [12] 9896 	mov	a,@r0
      006489 13               [12] 9897 	rrc	a
      00648A F6               [12] 9898 	mov	@r0,a
      00648B E5 08            [12] 9899 	mov	a,_bp
      00648D 24 1A            [12] 9900 	add	a,#0x1a
      00648F F8               [12] 9901 	mov	r0,a
      006490 E6               [12] 9902 	mov	a,@r0
      006491 08               [12] 9903 	inc	r0
      006492 46               [12] 9904 	orl	a,@r0
      006493 08               [12] 9905 	inc	r0
      006494 46               [12] 9906 	orl	a,@r0
      006495 08               [12] 9907 	inc	r0
      006496 46               [12] 9908 	orl	a,@r0
      006497 70 9F            [24] 9909 	jnz	00161$
                                   9910 ;	calc.c:384: if (n > 1) printall(vals[0]);
      006499                       9911 00110$:
                                   9912 ;	calc.c:385: printstr("\r\n");
      006499 7D 9B            [12] 9913 	mov	r5,#___str_3
      00649B 7E 8E            [12] 9914 	mov	r6,#(___str_3 >> 8)
      00649D 7F 80            [12] 9915 	mov	r7,#0x80
                                   9916 ;	calc.c:20: return;
      00649F                       9917 00164$:
                                   9918 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00649F 8D 82            [24] 9919 	mov	dpl,r5
      0064A1 8E 83            [24] 9920 	mov	dph,r6
      0064A3 8F F0            [24] 9921 	mov	b,r7
      0064A5 12 76 03         [24] 9922 	lcall	__gptrget
      0064A8 FC               [12] 9923 	mov	r4,a
      0064A9 60 1C            [24] 9924 	jz	00137$
      0064AB 7B 00            [12] 9925 	mov	r3,#0x00
      0064AD 8C 82            [24] 9926 	mov	dpl,r4
      0064AF 8B 83            [24] 9927 	mov	dph,r3
      0064B1 C0 07            [24] 9928 	push	ar7
      0064B3 C0 06            [24] 9929 	push	ar6
      0064B5 C0 05            [24] 9930 	push	ar5
      0064B7 12 71 72         [24] 9931 	lcall	_putchar
      0064BA D0 05            [24] 9932 	pop	ar5
      0064BC D0 06            [24] 9933 	pop	ar6
      0064BE D0 07            [24] 9934 	pop	ar7
      0064C0 0D               [12] 9935 	inc	r5
                                   9936 ;	calc.c:385: printstr("\r\n");
      0064C1 BD 00 DB         [24] 9937 	cjne	r5,#0x00,00164$
      0064C4 0E               [12] 9938 	inc	r6
      0064C5 80 D8            [24] 9939 	sjmp	00164$
      0064C7                       9940 00137$:
                                   9941 ;	calc.c:387: return 1;
      0064C7 90 00 01         [24] 9942 	mov	dptr,#0x0001
                                   9943 ;	calc.c:388: }
      0064CA 85 08 81         [24] 9944 	mov	sp,_bp
      0064CD D0 08            [24] 9945 	pop	_bp
      0064CF 22               [24] 9946 	ret
                                   9947 ;------------------------------------------------------------
                                   9948 ;Allocation info for local variables in function 'help'
                                   9949 ;------------------------------------------------------------
                                   9950 ;delta                     Allocated to stack - _bp -5
                                   9951 ;_ctx                      Allocated to registers 
                                   9952 ;__1310720151              Allocated to registers 
                                   9953 ;s                         Allocated to registers r5 r6 r7 
                                   9954 ;__1310720153              Allocated to registers 
                                   9955 ;s                         Allocated to registers r5 r6 r7 
                                   9956 ;__1310720155              Allocated to registers 
                                   9957 ;s                         Allocated to registers r5 r6 r7 
                                   9958 ;__1310720157              Allocated to registers 
                                   9959 ;s                         Allocated to registers r5 r6 r7 
                                   9960 ;__1310720159              Allocated to registers 
                                   9961 ;s                         Allocated to registers r5 r6 r7 
                                   9962 ;__1310720161              Allocated to registers 
                                   9963 ;s                         Allocated to registers r5 r6 r7 
                                   9964 ;__1310720163              Allocated to registers 
                                   9965 ;s                         Allocated to registers r5 r6 r7 
                                   9966 ;__1310720165              Allocated to registers 
                                   9967 ;s                         Allocated to registers r5 r6 r7 
                                   9968 ;__1310720167              Allocated to registers 
                                   9969 ;s                         Allocated to registers r5 r6 r7 
                                   9970 ;__1310720169              Allocated to registers 
                                   9971 ;s                         Allocated to registers r5 r6 r7 
                                   9972 ;__1310720171              Allocated to registers 
                                   9973 ;s                         Allocated to registers r5 r6 r7 
                                   9974 ;__1310720173              Allocated to registers 
                                   9975 ;s                         Allocated to registers r5 r6 r7 
                                   9976 ;__1310720175              Allocated to registers 
                                   9977 ;s                         Allocated to registers r5 r6 r7 
                                   9978 ;__1310720177              Allocated to registers 
                                   9979 ;s                         Allocated to registers r5 r6 r7 
                                   9980 ;__1310720179              Allocated to registers 
                                   9981 ;s                         Allocated to registers r5 r6 r7 
                                   9982 ;__1310720181              Allocated to registers 
                                   9983 ;s                         Allocated to registers r5 r6 r7 
                                   9984 ;__1310720183              Allocated to registers 
                                   9985 ;s                         Allocated to registers r5 r6 r7 
                                   9986 ;__1310720185              Allocated to registers 
                                   9987 ;s                         Allocated to registers r5 r6 r7 
                                   9988 ;__1310720187              Allocated to registers 
                                   9989 ;s                         Allocated to registers r5 r6 r7 
                                   9990 ;__1310720189              Allocated to registers 
                                   9991 ;s                         Allocated to registers r5 r6 r7 
                                   9992 ;__1310720191              Allocated to registers 
                                   9993 ;s                         Allocated to registers r5 r6 r7 
                                   9994 ;__1310720193              Allocated to registers 
                                   9995 ;s                         Allocated to registers r5 r6 r7 
                                   9996 ;__1310720195              Allocated to registers 
                                   9997 ;s                         Allocated to registers r5 r6 r7 
                                   9998 ;__1310720197              Allocated to registers 
                                   9999 ;s                         Allocated to registers r5 r6 r7 
                                  10000 ;__1310720199              Allocated to registers 
                                  10001 ;s                         Allocated to registers r5 r6 r7 
                                  10002 ;__1310720201              Allocated to registers 
                                  10003 ;s                         Allocated to registers r5 r6 r7 
                                  10004 ;__1310720203              Allocated to registers 
                                  10005 ;s                         Allocated to registers r5 r6 r7 
                                  10006 ;__1310720205              Allocated to registers 
                                  10007 ;s                         Allocated to registers r5 r6 r7 
                                  10008 ;__1310720207              Allocated to registers 
                                  10009 ;s                         Allocated to registers r5 r6 r7 
                                  10010 ;__1310720209              Allocated to registers 
                                  10011 ;s                         Allocated to registers r5 r6 r7 
                                  10012 ;__1310720211              Allocated to registers 
                                  10013 ;s                         Allocated to registers r5 r6 r7 
                                  10014 ;------------------------------------------------------------
                                  10015 ;	calc.c:390: static int help(void *_ctx, delta_t *delta) __reentrant {
                                  10016 ;	-----------------------------------------
                                  10017 ;	 function help
                                  10018 ;	-----------------------------------------
      0064D0                      10019 _help:
      0064D0 C0 08            [24]10020 	push	_bp
      0064D2 85 81 08         [24]10021 	mov	_bp,sp
                                  10022 ;	calc.c:394: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      0064D5 7D 96            [12]10023 	mov	r5,#___str_21
      0064D7 7E 8F            [12]10024 	mov	r6,#(___str_21 >> 8)
      0064D9 7F 80            [12]10025 	mov	r7,#0x80
                                  10026 ;	calc.c:20: return;
      0064DB                      10027 00164$:
                                  10028 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0064DB 8D 82            [24]10029 	mov	dpl,r5
      0064DD 8E 83            [24]10030 	mov	dph,r6
      0064DF 8F F0            [24]10031 	mov	b,r7
      0064E1 12 76 03         [24]10032 	lcall	__gptrget
      0064E4 FC               [12]10033 	mov	r4,a
      0064E5 60 1C            [24]10034 	jz	00102$
      0064E7 7B 00            [12]10035 	mov	r3,#0x00
      0064E9 8C 82            [24]10036 	mov	dpl,r4
      0064EB 8B 83            [24]10037 	mov	dph,r3
      0064ED C0 07            [24]10038 	push	ar7
      0064EF C0 06            [24]10039 	push	ar6
      0064F1 C0 05            [24]10040 	push	ar5
      0064F3 12 71 72         [24]10041 	lcall	_putchar
      0064F6 D0 05            [24]10042 	pop	ar5
      0064F8 D0 06            [24]10043 	pop	ar6
      0064FA D0 07            [24]10044 	pop	ar7
      0064FC 0D               [12]10045 	inc	r5
                                  10046 ;	calc.c:394: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      0064FD BD 00 DB         [24]10047 	cjne	r5,#0x00,00164$
      006500 0E               [12]10048 	inc	r6
      006501 80 D8            [24]10049 	sjmp	00164$
      006503                      10050 00102$:
                                  10051 ;	calc.c:395: printstr("p.\tpop top\r\n");
      006503 7D AE            [12]10052 	mov	r5,#___str_22
      006505 7E 8F            [12]10053 	mov	r6,#(___str_22 >> 8)
      006507 7F 80            [12]10054 	mov	r7,#0x80
                                  10055 ;	calc.c:20: return;
      006509                      10056 00167$:
                                  10057 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006509 8D 82            [24]10058 	mov	dpl,r5
      00650B 8E 83            [24]10059 	mov	dph,r6
      00650D 8F F0            [24]10060 	mov	b,r7
      00650F 12 76 03         [24]10061 	lcall	__gptrget
      006512 FC               [12]10062 	mov	r4,a
      006513 60 1C            [24]10063 	jz	00104$
      006515 7B 00            [12]10064 	mov	r3,#0x00
      006517 8C 82            [24]10065 	mov	dpl,r4
      006519 8B 83            [24]10066 	mov	dph,r3
      00651B C0 07            [24]10067 	push	ar7
      00651D C0 06            [24]10068 	push	ar6
      00651F C0 05            [24]10069 	push	ar5
      006521 12 71 72         [24]10070 	lcall	_putchar
      006524 D0 05            [24]10071 	pop	ar5
      006526 D0 06            [24]10072 	pop	ar6
      006528 D0 07            [24]10073 	pop	ar7
      00652A 0D               [12]10074 	inc	r5
                                  10075 ;	calc.c:395: printstr("p.\tpop top\r\n");
      00652B BD 00 DB         [24]10076 	cjne	r5,#0x00,00167$
      00652E 0E               [12]10077 	inc	r6
      00652F 80 D8            [24]10078 	sjmp	00167$
      006531                      10079 00104$:
                                  10080 ;	calc.c:396: printstr("P\tpop stack\r\n");
      006531 7D BB            [12]10081 	mov	r5,#___str_23
      006533 7E 8F            [12]10082 	mov	r6,#(___str_23 >> 8)
      006535 7F 80            [12]10083 	mov	r7,#0x80
                                  10084 ;	calc.c:20: return;
      006537                      10085 00170$:
                                  10086 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006537 8D 82            [24]10087 	mov	dpl,r5
      006539 8E 83            [24]10088 	mov	dph,r6
      00653B 8F F0            [24]10089 	mov	b,r7
      00653D 12 76 03         [24]10090 	lcall	__gptrget
      006540 FC               [12]10091 	mov	r4,a
      006541 60 1C            [24]10092 	jz	00106$
      006543 7B 00            [12]10093 	mov	r3,#0x00
      006545 8C 82            [24]10094 	mov	dpl,r4
      006547 8B 83            [24]10095 	mov	dph,r3
      006549 C0 07            [24]10096 	push	ar7
      00654B C0 06            [24]10097 	push	ar6
      00654D C0 05            [24]10098 	push	ar5
      00654F 12 71 72         [24]10099 	lcall	_putchar
      006552 D0 05            [24]10100 	pop	ar5
      006554 D0 06            [24]10101 	pop	ar6
      006556 D0 07            [24]10102 	pop	ar7
      006558 0D               [12]10103 	inc	r5
                                  10104 ;	calc.c:396: printstr("P\tpop stack\r\n");
      006559 BD 00 DB         [24]10105 	cjne	r5,#0x00,00170$
      00655C 0E               [12]10106 	inc	r6
      00655D 80 D8            [24]10107 	sjmp	00170$
      00655F                      10108 00106$:
                                  10109 ;	calc.c:397: printstr("v\tpeek top\r\n");
      00655F 7D C9            [12]10110 	mov	r5,#___str_24
      006561 7E 8F            [12]10111 	mov	r6,#(___str_24 >> 8)
      006563 7F 80            [12]10112 	mov	r7,#0x80
                                  10113 ;	calc.c:20: return;
      006565                      10114 00173$:
                                  10115 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006565 8D 82            [24]10116 	mov	dpl,r5
      006567 8E 83            [24]10117 	mov	dph,r6
      006569 8F F0            [24]10118 	mov	b,r7
      00656B 12 76 03         [24]10119 	lcall	__gptrget
      00656E FC               [12]10120 	mov	r4,a
      00656F 60 1C            [24]10121 	jz	00108$
      006571 7B 00            [12]10122 	mov	r3,#0x00
      006573 8C 82            [24]10123 	mov	dpl,r4
      006575 8B 83            [24]10124 	mov	dph,r3
      006577 C0 07            [24]10125 	push	ar7
      006579 C0 06            [24]10126 	push	ar6
      00657B C0 05            [24]10127 	push	ar5
      00657D 12 71 72         [24]10128 	lcall	_putchar
      006580 D0 05            [24]10129 	pop	ar5
      006582 D0 06            [24]10130 	pop	ar6
      006584 D0 07            [24]10131 	pop	ar7
      006586 0D               [12]10132 	inc	r5
                                  10133 ;	calc.c:397: printstr("v\tpeek top\r\n");
      006587 BD 00 DB         [24]10134 	cjne	r5,#0x00,00173$
      00658A 0E               [12]10135 	inc	r6
      00658B 80 D8            [24]10136 	sjmp	00173$
      00658D                      10137 00108$:
                                  10138 ;	calc.c:398: printstr("V\tpeek stack\r\n");
      00658D 7D D6            [12]10139 	mov	r5,#___str_25
      00658F 7E 8F            [12]10140 	mov	r6,#(___str_25 >> 8)
      006591 7F 80            [12]10141 	mov	r7,#0x80
                                  10142 ;	calc.c:20: return;
      006593                      10143 00176$:
                                  10144 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006593 8D 82            [24]10145 	mov	dpl,r5
      006595 8E 83            [24]10146 	mov	dph,r6
      006597 8F F0            [24]10147 	mov	b,r7
      006599 12 76 03         [24]10148 	lcall	__gptrget
      00659C FC               [12]10149 	mov	r4,a
      00659D 60 1C            [24]10150 	jz	00110$
      00659F 7B 00            [12]10151 	mov	r3,#0x00
      0065A1 8C 82            [24]10152 	mov	dpl,r4
      0065A3 8B 83            [24]10153 	mov	dph,r3
      0065A5 C0 07            [24]10154 	push	ar7
      0065A7 C0 06            [24]10155 	push	ar6
      0065A9 C0 05            [24]10156 	push	ar5
      0065AB 12 71 72         [24]10157 	lcall	_putchar
      0065AE D0 05            [24]10158 	pop	ar5
      0065B0 D0 06            [24]10159 	pop	ar6
      0065B2 D0 07            [24]10160 	pop	ar7
      0065B4 0D               [12]10161 	inc	r5
                                  10162 ;	calc.c:398: printstr("V\tpeek stack\r\n");
      0065B5 BD 00 DB         [24]10163 	cjne	r5,#0x00,00176$
      0065B8 0E               [12]10164 	inc	r6
      0065B9 80 D8            [24]10165 	sjmp	00176$
      0065BB                      10166 00110$:
                                  10167 ;	calc.c:399: printstr("i\treset acc\r\n");
      0065BB 7D E5            [12]10168 	mov	r5,#___str_26
      0065BD 7E 8F            [12]10169 	mov	r6,#(___str_26 >> 8)
      0065BF 7F 80            [12]10170 	mov	r7,#0x80
                                  10171 ;	calc.c:20: return;
      0065C1                      10172 00179$:
                                  10173 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0065C1 8D 82            [24]10174 	mov	dpl,r5
      0065C3 8E 83            [24]10175 	mov	dph,r6
      0065C5 8F F0            [24]10176 	mov	b,r7
      0065C7 12 76 03         [24]10177 	lcall	__gptrget
      0065CA FC               [12]10178 	mov	r4,a
      0065CB 60 1C            [24]10179 	jz	00112$
      0065CD 7B 00            [12]10180 	mov	r3,#0x00
      0065CF 8C 82            [24]10181 	mov	dpl,r4
      0065D1 8B 83            [24]10182 	mov	dph,r3
      0065D3 C0 07            [24]10183 	push	ar7
      0065D5 C0 06            [24]10184 	push	ar6
      0065D7 C0 05            [24]10185 	push	ar5
      0065D9 12 71 72         [24]10186 	lcall	_putchar
      0065DC D0 05            [24]10187 	pop	ar5
      0065DE D0 06            [24]10188 	pop	ar6
      0065E0 D0 07            [24]10189 	pop	ar7
      0065E2 0D               [12]10190 	inc	r5
                                  10191 ;	calc.c:399: printstr("i\treset acc\r\n");
      0065E3 BD 00 DB         [24]10192 	cjne	r5,#0x00,00179$
      0065E6 0E               [12]10193 	inc	r6
      0065E7 80 D8            [24]10194 	sjmp	00179$
      0065E9                      10195 00112$:
                                  10196 ;	calc.c:400: printstr("I\treset and discard acc\r\n");
      0065E9 7D F3            [12]10197 	mov	r5,#___str_27
      0065EB 7E 8F            [12]10198 	mov	r6,#(___str_27 >> 8)
      0065ED 7F 80            [12]10199 	mov	r7,#0x80
                                  10200 ;	calc.c:20: return;
      0065EF                      10201 00182$:
                                  10202 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0065EF 8D 82            [24]10203 	mov	dpl,r5
      0065F1 8E 83            [24]10204 	mov	dph,r6
      0065F3 8F F0            [24]10205 	mov	b,r7
      0065F5 12 76 03         [24]10206 	lcall	__gptrget
      0065F8 FC               [12]10207 	mov	r4,a
      0065F9 60 1C            [24]10208 	jz	00114$
      0065FB 7B 00            [12]10209 	mov	r3,#0x00
      0065FD 8C 82            [24]10210 	mov	dpl,r4
      0065FF 8B 83            [24]10211 	mov	dph,r3
      006601 C0 07            [24]10212 	push	ar7
      006603 C0 06            [24]10213 	push	ar6
      006605 C0 05            [24]10214 	push	ar5
      006607 12 71 72         [24]10215 	lcall	_putchar
      00660A D0 05            [24]10216 	pop	ar5
      00660C D0 06            [24]10217 	pop	ar6
      00660E D0 07            [24]10218 	pop	ar7
      006610 0D               [12]10219 	inc	r5
                                  10220 ;	calc.c:400: printstr("I\treset and discard acc\r\n");
      006611 BD 00 DB         [24]10221 	cjne	r5,#0x00,00182$
      006614 0E               [12]10222 	inc	r6
      006615 80 D8            [24]10223 	sjmp	00182$
      006617                      10224 00114$:
                                  10225 ;	calc.c:401: printstr("x\texchange top 2\r\n");
      006617 7D 0D            [12]10226 	mov	r5,#___str_28
      006619 7E 90            [12]10227 	mov	r6,#(___str_28 >> 8)
      00661B 7F 80            [12]10228 	mov	r7,#0x80
                                  10229 ;	calc.c:20: return;
      00661D                      10230 00185$:
                                  10231 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00661D 8D 82            [24]10232 	mov	dpl,r5
      00661F 8E 83            [24]10233 	mov	dph,r6
      006621 8F F0            [24]10234 	mov	b,r7
      006623 12 76 03         [24]10235 	lcall	__gptrget
      006626 FC               [12]10236 	mov	r4,a
      006627 60 1C            [24]10237 	jz	00116$
      006629 7B 00            [12]10238 	mov	r3,#0x00
      00662B 8C 82            [24]10239 	mov	dpl,r4
      00662D 8B 83            [24]10240 	mov	dph,r3
      00662F C0 07            [24]10241 	push	ar7
      006631 C0 06            [24]10242 	push	ar6
      006633 C0 05            [24]10243 	push	ar5
      006635 12 71 72         [24]10244 	lcall	_putchar
      006638 D0 05            [24]10245 	pop	ar5
      00663A D0 06            [24]10246 	pop	ar6
      00663C D0 07            [24]10247 	pop	ar7
      00663E 0D               [12]10248 	inc	r5
                                  10249 ;	calc.c:401: printstr("x\texchange top 2\r\n");
      00663F BD 00 DB         [24]10250 	cjne	r5,#0x00,00185$
      006642 0E               [12]10251 	inc	r6
      006643 80 D8            [24]10252 	sjmp	00185$
      006645                      10253 00116$:
                                  10254 ;	calc.c:402: printstr("X\texchange stacks primary <-> secondary\r\n");
      006645 7D 20            [12]10255 	mov	r5,#___str_29
      006647 7E 90            [12]10256 	mov	r6,#(___str_29 >> 8)
      006649 7F 80            [12]10257 	mov	r7,#0x80
                                  10258 ;	calc.c:20: return;
      00664B                      10259 00188$:
                                  10260 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00664B 8D 82            [24]10261 	mov	dpl,r5
      00664D 8E 83            [24]10262 	mov	dph,r6
      00664F 8F F0            [24]10263 	mov	b,r7
      006651 12 76 03         [24]10264 	lcall	__gptrget
      006654 FC               [12]10265 	mov	r4,a
      006655 60 1C            [24]10266 	jz	00118$
      006657 7B 00            [12]10267 	mov	r3,#0x00
      006659 8C 82            [24]10268 	mov	dpl,r4
      00665B 8B 83            [24]10269 	mov	dph,r3
      00665D C0 07            [24]10270 	push	ar7
      00665F C0 06            [24]10271 	push	ar6
      006661 C0 05            [24]10272 	push	ar5
      006663 12 71 72         [24]10273 	lcall	_putchar
      006666 D0 05            [24]10274 	pop	ar5
      006668 D0 06            [24]10275 	pop	ar6
      00666A D0 07            [24]10276 	pop	ar7
      00666C 0D               [12]10277 	inc	r5
                                  10278 ;	calc.c:402: printstr("X\texchange stacks primary <-> secondary\r\n");
      00666D BD 00 DB         [24]10279 	cjne	r5,#0x00,00188$
      006670 0E               [12]10280 	inc	r6
      006671 80 D8            [24]10281 	sjmp	00188$
      006673                      10282 00118$:
                                  10283 ;	calc.c:403: printstr("T\texchange tops primary <-> secondary\r\n");
      006673 7D 4A            [12]10284 	mov	r5,#___str_30
      006675 7E 90            [12]10285 	mov	r6,#(___str_30 >> 8)
      006677 7F 80            [12]10286 	mov	r7,#0x80
                                  10287 ;	calc.c:20: return;
      006679                      10288 00191$:
                                  10289 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006679 8D 82            [24]10290 	mov	dpl,r5
      00667B 8E 83            [24]10291 	mov	dph,r6
      00667D 8F F0            [24]10292 	mov	b,r7
      00667F 12 76 03         [24]10293 	lcall	__gptrget
      006682 FC               [12]10294 	mov	r4,a
      006683 60 1C            [24]10295 	jz	00120$
      006685 7B 00            [12]10296 	mov	r3,#0x00
      006687 8C 82            [24]10297 	mov	dpl,r4
      006689 8B 83            [24]10298 	mov	dph,r3
      00668B C0 07            [24]10299 	push	ar7
      00668D C0 06            [24]10300 	push	ar6
      00668F C0 05            [24]10301 	push	ar5
      006691 12 71 72         [24]10302 	lcall	_putchar
      006694 D0 05            [24]10303 	pop	ar5
      006696 D0 06            [24]10304 	pop	ar6
      006698 D0 07            [24]10305 	pop	ar7
      00669A 0D               [12]10306 	inc	r5
                                  10307 ;	calc.c:403: printstr("T\texchange tops primary <-> secondary\r\n");
      00669B BD 00 DB         [24]10308 	cjne	r5,#0x00,00191$
      00669E 0E               [12]10309 	inc	r6
      00669F 80 D8            [24]10310 	sjmp	00191$
      0066A1                      10311 00120$:
                                  10312 ;	calc.c:404: printstr("U\tcopy top secondary -> primary\r\n");
      0066A1 7D 72            [12]10313 	mov	r5,#___str_31
      0066A3 7E 90            [12]10314 	mov	r6,#(___str_31 >> 8)
      0066A5 7F 80            [12]10315 	mov	r7,#0x80
                                  10316 ;	calc.c:20: return;
      0066A7                      10317 00194$:
                                  10318 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0066A7 8D 82            [24]10319 	mov	dpl,r5
      0066A9 8E 83            [24]10320 	mov	dph,r6
      0066AB 8F F0            [24]10321 	mov	b,r7
      0066AD 12 76 03         [24]10322 	lcall	__gptrget
      0066B0 FC               [12]10323 	mov	r4,a
      0066B1 60 1C            [24]10324 	jz	00122$
      0066B3 7B 00            [12]10325 	mov	r3,#0x00
      0066B5 8C 82            [24]10326 	mov	dpl,r4
      0066B7 8B 83            [24]10327 	mov	dph,r3
      0066B9 C0 07            [24]10328 	push	ar7
      0066BB C0 06            [24]10329 	push	ar6
      0066BD C0 05            [24]10330 	push	ar5
      0066BF 12 71 72         [24]10331 	lcall	_putchar
      0066C2 D0 05            [24]10332 	pop	ar5
      0066C4 D0 06            [24]10333 	pop	ar6
      0066C6 D0 07            [24]10334 	pop	ar7
      0066C8 0D               [12]10335 	inc	r5
                                  10336 ;	calc.c:404: printstr("U\tcopy top secondary -> primary\r\n");
      0066C9 BD 00 DB         [24]10337 	cjne	r5,#0x00,00194$
      0066CC 0E               [12]10338 	inc	r6
      0066CD 80 D8            [24]10339 	sjmp	00194$
      0066CF                      10340 00122$:
                                  10341 ;	calc.c:405: printstr("u\tcopy top primary -> secondary\r\n");
      0066CF 7D 94            [12]10342 	mov	r5,#___str_32
      0066D1 7E 90            [12]10343 	mov	r6,#(___str_32 >> 8)
      0066D3 7F 80            [12]10344 	mov	r7,#0x80
                                  10345 ;	calc.c:20: return;
      0066D5                      10346 00197$:
                                  10347 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0066D5 8D 82            [24]10348 	mov	dpl,r5
      0066D7 8E 83            [24]10349 	mov	dph,r6
      0066D9 8F F0            [24]10350 	mov	b,r7
      0066DB 12 76 03         [24]10351 	lcall	__gptrget
      0066DE FC               [12]10352 	mov	r4,a
      0066DF 60 1C            [24]10353 	jz	00124$
      0066E1 7B 00            [12]10354 	mov	r3,#0x00
      0066E3 8C 82            [24]10355 	mov	dpl,r4
      0066E5 8B 83            [24]10356 	mov	dph,r3
      0066E7 C0 07            [24]10357 	push	ar7
      0066E9 C0 06            [24]10358 	push	ar6
      0066EB C0 05            [24]10359 	push	ar5
      0066ED 12 71 72         [24]10360 	lcall	_putchar
      0066F0 D0 05            [24]10361 	pop	ar5
      0066F2 D0 06            [24]10362 	pop	ar6
      0066F4 D0 07            [24]10363 	pop	ar7
      0066F6 0D               [12]10364 	inc	r5
                                  10365 ;	calc.c:405: printstr("u\tcopy top primary -> secondary\r\n");
      0066F7 BD 00 DB         [24]10366 	cjne	r5,#0x00,00197$
      0066FA 0E               [12]10367 	inc	r6
      0066FB 80 D8            [24]10368 	sjmp	00197$
      0066FD                      10369 00124$:
                                  10370 ;	calc.c:406: printstr("M\tmove top secondary -> primary\r\n");
      0066FD 7D B6            [12]10371 	mov	r5,#___str_33
      0066FF 7E 90            [12]10372 	mov	r6,#(___str_33 >> 8)
      006701 7F 80            [12]10373 	mov	r7,#0x80
                                  10374 ;	calc.c:20: return;
      006703                      10375 00200$:
                                  10376 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006703 8D 82            [24]10377 	mov	dpl,r5
      006705 8E 83            [24]10378 	mov	dph,r6
      006707 8F F0            [24]10379 	mov	b,r7
      006709 12 76 03         [24]10380 	lcall	__gptrget
      00670C FC               [12]10381 	mov	r4,a
      00670D 60 1C            [24]10382 	jz	00126$
      00670F 7B 00            [12]10383 	mov	r3,#0x00
      006711 8C 82            [24]10384 	mov	dpl,r4
      006713 8B 83            [24]10385 	mov	dph,r3
      006715 C0 07            [24]10386 	push	ar7
      006717 C0 06            [24]10387 	push	ar6
      006719 C0 05            [24]10388 	push	ar5
      00671B 12 71 72         [24]10389 	lcall	_putchar
      00671E D0 05            [24]10390 	pop	ar5
      006720 D0 06            [24]10391 	pop	ar6
      006722 D0 07            [24]10392 	pop	ar7
      006724 0D               [12]10393 	inc	r5
                                  10394 ;	calc.c:406: printstr("M\tmove top secondary -> primary\r\n");
      006725 BD 00 DB         [24]10395 	cjne	r5,#0x00,00200$
      006728 0E               [12]10396 	inc	r6
      006729 80 D8            [24]10397 	sjmp	00200$
      00672B                      10398 00126$:
                                  10399 ;	calc.c:407: printstr("m\tmove top primary -> secondary\r\n");
      00672B 7D D8            [12]10400 	mov	r5,#___str_34
      00672D 7E 90            [12]10401 	mov	r6,#(___str_34 >> 8)
      00672F 7F 80            [12]10402 	mov	r7,#0x80
                                  10403 ;	calc.c:20: return;
      006731                      10404 00203$:
                                  10405 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006731 8D 82            [24]10406 	mov	dpl,r5
      006733 8E 83            [24]10407 	mov	dph,r6
      006735 8F F0            [24]10408 	mov	b,r7
      006737 12 76 03         [24]10409 	lcall	__gptrget
      00673A FC               [12]10410 	mov	r4,a
      00673B 60 1C            [24]10411 	jz	00128$
      00673D 7B 00            [12]10412 	mov	r3,#0x00
      00673F 8C 82            [24]10413 	mov	dpl,r4
      006741 8B 83            [24]10414 	mov	dph,r3
      006743 C0 07            [24]10415 	push	ar7
      006745 C0 06            [24]10416 	push	ar6
      006747 C0 05            [24]10417 	push	ar5
      006749 12 71 72         [24]10418 	lcall	_putchar
      00674C D0 05            [24]10419 	pop	ar5
      00674E D0 06            [24]10420 	pop	ar6
      006750 D0 07            [24]10421 	pop	ar7
      006752 0D               [12]10422 	inc	r5
                                  10423 ;	calc.c:407: printstr("m\tmove top primary -> secondary\r\n");
      006753 BD 00 DB         [24]10424 	cjne	r5,#0x00,00203$
      006756 0E               [12]10425 	inc	r6
      006757 80 D8            [24]10426 	sjmp	00203$
      006759                      10427 00128$:
                                  10428 ;	calc.c:408: printstr("+\tadd top 2\r\n");
      006759 7D FA            [12]10429 	mov	r5,#___str_35
      00675B 7E 90            [12]10430 	mov	r6,#(___str_35 >> 8)
      00675D 7F 80            [12]10431 	mov	r7,#0x80
                                  10432 ;	calc.c:20: return;
      00675F                      10433 00206$:
                                  10434 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00675F 8D 82            [24]10435 	mov	dpl,r5
      006761 8E 83            [24]10436 	mov	dph,r6
      006763 8F F0            [24]10437 	mov	b,r7
      006765 12 76 03         [24]10438 	lcall	__gptrget
      006768 FC               [12]10439 	mov	r4,a
      006769 60 1C            [24]10440 	jz	00130$
      00676B 7B 00            [12]10441 	mov	r3,#0x00
      00676D 8C 82            [24]10442 	mov	dpl,r4
      00676F 8B 83            [24]10443 	mov	dph,r3
      006771 C0 07            [24]10444 	push	ar7
      006773 C0 06            [24]10445 	push	ar6
      006775 C0 05            [24]10446 	push	ar5
      006777 12 71 72         [24]10447 	lcall	_putchar
      00677A D0 05            [24]10448 	pop	ar5
      00677C D0 06            [24]10449 	pop	ar6
      00677E D0 07            [24]10450 	pop	ar7
      006780 0D               [12]10451 	inc	r5
                                  10452 ;	calc.c:408: printstr("+\tadd top 2\r\n");
      006781 BD 00 DB         [24]10453 	cjne	r5,#0x00,00206$
      006784 0E               [12]10454 	inc	r6
      006785 80 D8            [24]10455 	sjmp	00206$
      006787                      10456 00130$:
                                  10457 ;	calc.c:409: printstr("-\tsubtract top 2\r\n");
      006787 7D 08            [12]10458 	mov	r5,#___str_36
      006789 7E 91            [12]10459 	mov	r6,#(___str_36 >> 8)
      00678B 7F 80            [12]10460 	mov	r7,#0x80
                                  10461 ;	calc.c:20: return;
      00678D                      10462 00209$:
                                  10463 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00678D 8D 82            [24]10464 	mov	dpl,r5
      00678F 8E 83            [24]10465 	mov	dph,r6
      006791 8F F0            [24]10466 	mov	b,r7
      006793 12 76 03         [24]10467 	lcall	__gptrget
      006796 FC               [12]10468 	mov	r4,a
      006797 60 1C            [24]10469 	jz	00132$
      006799 7B 00            [12]10470 	mov	r3,#0x00
      00679B 8C 82            [24]10471 	mov	dpl,r4
      00679D 8B 83            [24]10472 	mov	dph,r3
      00679F C0 07            [24]10473 	push	ar7
      0067A1 C0 06            [24]10474 	push	ar6
      0067A3 C0 05            [24]10475 	push	ar5
      0067A5 12 71 72         [24]10476 	lcall	_putchar
      0067A8 D0 05            [24]10477 	pop	ar5
      0067AA D0 06            [24]10478 	pop	ar6
      0067AC D0 07            [24]10479 	pop	ar7
      0067AE 0D               [12]10480 	inc	r5
                                  10481 ;	calc.c:409: printstr("-\tsubtract top 2\r\n");
      0067AF BD 00 DB         [24]10482 	cjne	r5,#0x00,00209$
      0067B2 0E               [12]10483 	inc	r6
      0067B3 80 D8            [24]10484 	sjmp	00209$
      0067B5                      10485 00132$:
                                  10486 ;	calc.c:410: printstr("*\tmultiply top 2\r\n");
      0067B5 7D 1B            [12]10487 	mov	r5,#___str_37
      0067B7 7E 91            [12]10488 	mov	r6,#(___str_37 >> 8)
      0067B9 7F 80            [12]10489 	mov	r7,#0x80
                                  10490 ;	calc.c:20: return;
      0067BB                      10491 00212$:
                                  10492 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0067BB 8D 82            [24]10493 	mov	dpl,r5
      0067BD 8E 83            [24]10494 	mov	dph,r6
      0067BF 8F F0            [24]10495 	mov	b,r7
      0067C1 12 76 03         [24]10496 	lcall	__gptrget
      0067C4 FC               [12]10497 	mov	r4,a
      0067C5 60 1C            [24]10498 	jz	00134$
      0067C7 7B 00            [12]10499 	mov	r3,#0x00
      0067C9 8C 82            [24]10500 	mov	dpl,r4
      0067CB 8B 83            [24]10501 	mov	dph,r3
      0067CD C0 07            [24]10502 	push	ar7
      0067CF C0 06            [24]10503 	push	ar6
      0067D1 C0 05            [24]10504 	push	ar5
      0067D3 12 71 72         [24]10505 	lcall	_putchar
      0067D6 D0 05            [24]10506 	pop	ar5
      0067D8 D0 06            [24]10507 	pop	ar6
      0067DA D0 07            [24]10508 	pop	ar7
      0067DC 0D               [12]10509 	inc	r5
                                  10510 ;	calc.c:410: printstr("*\tmultiply top 2\r\n");
      0067DD BD 00 DB         [24]10511 	cjne	r5,#0x00,00212$
      0067E0 0E               [12]10512 	inc	r6
      0067E1 80 D8            [24]10513 	sjmp	00212$
      0067E3                      10514 00134$:
                                  10515 ;	calc.c:411: printstr("/\tdivide top 2\r\n");
      0067E3 7D 2E            [12]10516 	mov	r5,#___str_38
      0067E5 7E 91            [12]10517 	mov	r6,#(___str_38 >> 8)
      0067E7 7F 80            [12]10518 	mov	r7,#0x80
                                  10519 ;	calc.c:20: return;
      0067E9                      10520 00215$:
                                  10521 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0067E9 8D 82            [24]10522 	mov	dpl,r5
      0067EB 8E 83            [24]10523 	mov	dph,r6
      0067ED 8F F0            [24]10524 	mov	b,r7
      0067EF 12 76 03         [24]10525 	lcall	__gptrget
      0067F2 FC               [12]10526 	mov	r4,a
      0067F3 60 1C            [24]10527 	jz	00136$
      0067F5 7B 00            [12]10528 	mov	r3,#0x00
      0067F7 8C 82            [24]10529 	mov	dpl,r4
      0067F9 8B 83            [24]10530 	mov	dph,r3
      0067FB C0 07            [24]10531 	push	ar7
      0067FD C0 06            [24]10532 	push	ar6
      0067FF C0 05            [24]10533 	push	ar5
      006801 12 71 72         [24]10534 	lcall	_putchar
      006804 D0 05            [24]10535 	pop	ar5
      006806 D0 06            [24]10536 	pop	ar6
      006808 D0 07            [24]10537 	pop	ar7
      00680A 0D               [12]10538 	inc	r5
                                  10539 ;	calc.c:411: printstr("/\tdivide top 2\r\n");
      00680B BD 00 DB         [24]10540 	cjne	r5,#0x00,00215$
      00680E 0E               [12]10541 	inc	r6
      00680F 80 D8            [24]10542 	sjmp	00215$
      006811                      10543 00136$:
                                  10544 ;	calc.c:412: printstr("\\\tdivide top 2 unsigned\r\n");	
      006811 7D 3F            [12]10545 	mov	r5,#___str_39
      006813 7E 91            [12]10546 	mov	r6,#(___str_39 >> 8)
      006815 7F 80            [12]10547 	mov	r7,#0x80
                                  10548 ;	calc.c:20: return;
      006817                      10549 00218$:
                                  10550 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006817 8D 82            [24]10551 	mov	dpl,r5
      006819 8E 83            [24]10552 	mov	dph,r6
      00681B 8F F0            [24]10553 	mov	b,r7
      00681D 12 76 03         [24]10554 	lcall	__gptrget
      006820 FC               [12]10555 	mov	r4,a
      006821 60 1C            [24]10556 	jz	00138$
      006823 7B 00            [12]10557 	mov	r3,#0x00
      006825 8C 82            [24]10558 	mov	dpl,r4
      006827 8B 83            [24]10559 	mov	dph,r3
      006829 C0 07            [24]10560 	push	ar7
      00682B C0 06            [24]10561 	push	ar6
      00682D C0 05            [24]10562 	push	ar5
      00682F 12 71 72         [24]10563 	lcall	_putchar
      006832 D0 05            [24]10564 	pop	ar5
      006834 D0 06            [24]10565 	pop	ar6
      006836 D0 07            [24]10566 	pop	ar7
      006838 0D               [12]10567 	inc	r5
                                  10568 ;	calc.c:412: printstr("\\\tdivide top 2 unsigned\r\n");	
      006839 BD 00 DB         [24]10569 	cjne	r5,#0x00,00218$
      00683C 0E               [12]10570 	inc	r6
      00683D 80 D8            [24]10571 	sjmp	00218$
      00683F                      10572 00138$:
                                  10573 ;	calc.c:413: printstr("%\tmodulus top 2\r\n");
      00683F 7D 59            [12]10574 	mov	r5,#___str_40
      006841 7E 91            [12]10575 	mov	r6,#(___str_40 >> 8)
      006843 7F 80            [12]10576 	mov	r7,#0x80
                                  10577 ;	calc.c:20: return;
      006845                      10578 00221$:
                                  10579 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006845 8D 82            [24]10580 	mov	dpl,r5
      006847 8E 83            [24]10581 	mov	dph,r6
      006849 8F F0            [24]10582 	mov	b,r7
      00684B 12 76 03         [24]10583 	lcall	__gptrget
      00684E FC               [12]10584 	mov	r4,a
      00684F 60 1C            [24]10585 	jz	00140$
      006851 7B 00            [12]10586 	mov	r3,#0x00
      006853 8C 82            [24]10587 	mov	dpl,r4
      006855 8B 83            [24]10588 	mov	dph,r3
      006857 C0 07            [24]10589 	push	ar7
      006859 C0 06            [24]10590 	push	ar6
      00685B C0 05            [24]10591 	push	ar5
      00685D 12 71 72         [24]10592 	lcall	_putchar
      006860 D0 05            [24]10593 	pop	ar5
      006862 D0 06            [24]10594 	pop	ar6
      006864 D0 07            [24]10595 	pop	ar7
      006866 0D               [12]10596 	inc	r5
                                  10597 ;	calc.c:413: printstr("%\tmodulus top 2\r\n");
      006867 BD 00 DB         [24]10598 	cjne	r5,#0x00,00221$
      00686A 0E               [12]10599 	inc	r6
      00686B 80 D8            [24]10600 	sjmp	00221$
      00686D                      10601 00140$:
                                  10602 ;	calc.c:414: printstr("#\tmodulus top 2 unsigned\r\n");
      00686D 7D 6B            [12]10603 	mov	r5,#___str_41
      00686F 7E 91            [12]10604 	mov	r6,#(___str_41 >> 8)
      006871 7F 80            [12]10605 	mov	r7,#0x80
                                  10606 ;	calc.c:20: return;
      006873                      10607 00224$:
                                  10608 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006873 8D 82            [24]10609 	mov	dpl,r5
      006875 8E 83            [24]10610 	mov	dph,r6
      006877 8F F0            [24]10611 	mov	b,r7
      006879 12 76 03         [24]10612 	lcall	__gptrget
      00687C FC               [12]10613 	mov	r4,a
      00687D 60 1C            [24]10614 	jz	00142$
      00687F 7B 00            [12]10615 	mov	r3,#0x00
      006881 8C 82            [24]10616 	mov	dpl,r4
      006883 8B 83            [24]10617 	mov	dph,r3
      006885 C0 07            [24]10618 	push	ar7
      006887 C0 06            [24]10619 	push	ar6
      006889 C0 05            [24]10620 	push	ar5
      00688B 12 71 72         [24]10621 	lcall	_putchar
      00688E D0 05            [24]10622 	pop	ar5
      006890 D0 06            [24]10623 	pop	ar6
      006892 D0 07            [24]10624 	pop	ar7
      006894 0D               [12]10625 	inc	r5
                                  10626 ;	calc.c:414: printstr("#\tmodulus top 2 unsigned\r\n");
      006895 BD 00 DB         [24]10627 	cjne	r5,#0x00,00224$
      006898 0E               [12]10628 	inc	r6
      006899 80 D8            [24]10629 	sjmp	00224$
      00689B                      10630 00142$:
                                  10631 ;	calc.c:415: printstr("&\tand top 2\r\n");
      00689B 7D 86            [12]10632 	mov	r5,#___str_42
      00689D 7E 91            [12]10633 	mov	r6,#(___str_42 >> 8)
      00689F 7F 80            [12]10634 	mov	r7,#0x80
                                  10635 ;	calc.c:20: return;
      0068A1                      10636 00227$:
                                  10637 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0068A1 8D 82            [24]10638 	mov	dpl,r5
      0068A3 8E 83            [24]10639 	mov	dph,r6
      0068A5 8F F0            [24]10640 	mov	b,r7
      0068A7 12 76 03         [24]10641 	lcall	__gptrget
      0068AA FC               [12]10642 	mov	r4,a
      0068AB 60 1C            [24]10643 	jz	00144$
      0068AD 7B 00            [12]10644 	mov	r3,#0x00
      0068AF 8C 82            [24]10645 	mov	dpl,r4
      0068B1 8B 83            [24]10646 	mov	dph,r3
      0068B3 C0 07            [24]10647 	push	ar7
      0068B5 C0 06            [24]10648 	push	ar6
      0068B7 C0 05            [24]10649 	push	ar5
      0068B9 12 71 72         [24]10650 	lcall	_putchar
      0068BC D0 05            [24]10651 	pop	ar5
      0068BE D0 06            [24]10652 	pop	ar6
      0068C0 D0 07            [24]10653 	pop	ar7
      0068C2 0D               [12]10654 	inc	r5
                                  10655 ;	calc.c:415: printstr("&\tand top 2\r\n");
      0068C3 BD 00 DB         [24]10656 	cjne	r5,#0x00,00227$
      0068C6 0E               [12]10657 	inc	r6
      0068C7 80 D8            [24]10658 	sjmp	00227$
      0068C9                      10659 00144$:
                                  10660 ;	calc.c:416: printstr("|\tor top 2\r\n");
      0068C9 7D 94            [12]10661 	mov	r5,#___str_43
      0068CB 7E 91            [12]10662 	mov	r6,#(___str_43 >> 8)
      0068CD 7F 80            [12]10663 	mov	r7,#0x80
                                  10664 ;	calc.c:20: return;
      0068CF                      10665 00230$:
                                  10666 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0068CF 8D 82            [24]10667 	mov	dpl,r5
      0068D1 8E 83            [24]10668 	mov	dph,r6
      0068D3 8F F0            [24]10669 	mov	b,r7
      0068D5 12 76 03         [24]10670 	lcall	__gptrget
      0068D8 FC               [12]10671 	mov	r4,a
      0068D9 60 1C            [24]10672 	jz	00146$
      0068DB 7B 00            [12]10673 	mov	r3,#0x00
      0068DD 8C 82            [24]10674 	mov	dpl,r4
      0068DF 8B 83            [24]10675 	mov	dph,r3
      0068E1 C0 07            [24]10676 	push	ar7
      0068E3 C0 06            [24]10677 	push	ar6
      0068E5 C0 05            [24]10678 	push	ar5
      0068E7 12 71 72         [24]10679 	lcall	_putchar
      0068EA D0 05            [24]10680 	pop	ar5
      0068EC D0 06            [24]10681 	pop	ar6
      0068EE D0 07            [24]10682 	pop	ar7
      0068F0 0D               [12]10683 	inc	r5
                                  10684 ;	calc.c:416: printstr("|\tor top 2\r\n");
      0068F1 BD 00 DB         [24]10685 	cjne	r5,#0x00,00230$
      0068F4 0E               [12]10686 	inc	r6
      0068F5 80 D8            [24]10687 	sjmp	00230$
      0068F7                      10688 00146$:
                                  10689 ;	calc.c:417: printstr("^\txor top 2\r\n");
      0068F7 7D A1            [12]10690 	mov	r5,#___str_44
      0068F9 7E 91            [12]10691 	mov	r6,#(___str_44 >> 8)
      0068FB 7F 80            [12]10692 	mov	r7,#0x80
                                  10693 ;	calc.c:20: return;
      0068FD                      10694 00233$:
                                  10695 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0068FD 8D 82            [24]10696 	mov	dpl,r5
      0068FF 8E 83            [24]10697 	mov	dph,r6
      006901 8F F0            [24]10698 	mov	b,r7
      006903 12 76 03         [24]10699 	lcall	__gptrget
      006906 FC               [12]10700 	mov	r4,a
      006907 60 1C            [24]10701 	jz	00148$
      006909 7B 00            [12]10702 	mov	r3,#0x00
      00690B 8C 82            [24]10703 	mov	dpl,r4
      00690D 8B 83            [24]10704 	mov	dph,r3
      00690F C0 07            [24]10705 	push	ar7
      006911 C0 06            [24]10706 	push	ar6
      006913 C0 05            [24]10707 	push	ar5
      006915 12 71 72         [24]10708 	lcall	_putchar
      006918 D0 05            [24]10709 	pop	ar5
      00691A D0 06            [24]10710 	pop	ar6
      00691C D0 07            [24]10711 	pop	ar7
      00691E 0D               [12]10712 	inc	r5
                                  10713 ;	calc.c:417: printstr("^\txor top 2\r\n");
      00691F BD 00 DB         [24]10714 	cjne	r5,#0x00,00233$
      006922 0E               [12]10715 	inc	r6
      006923 80 D8            [24]10716 	sjmp	00233$
      006925                      10717 00148$:
                                  10718 ;	calc.c:418: printstr(">\tshift right top 2\r\n");
      006925 7D AF            [12]10719 	mov	r5,#___str_45
      006927 7E 91            [12]10720 	mov	r6,#(___str_45 >> 8)
      006929 7F 80            [12]10721 	mov	r7,#0x80
                                  10722 ;	calc.c:20: return;
      00692B                      10723 00236$:
                                  10724 ;	calc.c:18: for (; *s; s++) putchar(*s);
      00692B 8D 82            [24]10725 	mov	dpl,r5
      00692D 8E 83            [24]10726 	mov	dph,r6
      00692F 8F F0            [24]10727 	mov	b,r7
      006931 12 76 03         [24]10728 	lcall	__gptrget
      006934 FC               [12]10729 	mov	r4,a
      006935 60 1C            [24]10730 	jz	00150$
      006937 7B 00            [12]10731 	mov	r3,#0x00
      006939 8C 82            [24]10732 	mov	dpl,r4
      00693B 8B 83            [24]10733 	mov	dph,r3
      00693D C0 07            [24]10734 	push	ar7
      00693F C0 06            [24]10735 	push	ar6
      006941 C0 05            [24]10736 	push	ar5
      006943 12 71 72         [24]10737 	lcall	_putchar
      006946 D0 05            [24]10738 	pop	ar5
      006948 D0 06            [24]10739 	pop	ar6
      00694A D0 07            [24]10740 	pop	ar7
      00694C 0D               [12]10741 	inc	r5
                                  10742 ;	calc.c:418: printstr(">\tshift right top 2\r\n");
      00694D BD 00 DB         [24]10743 	cjne	r5,#0x00,00236$
      006950 0E               [12]10744 	inc	r6
      006951 80 D8            [24]10745 	sjmp	00236$
      006953                      10746 00150$:
                                  10747 ;	calc.c:419: printstr("]\tarithmetic shift right top 2\r\n");
      006953 7D C5            [12]10748 	mov	r5,#___str_46
      006955 7E 91            [12]10749 	mov	r6,#(___str_46 >> 8)
      006957 7F 80            [12]10750 	mov	r7,#0x80
                                  10751 ;	calc.c:20: return;
      006959                      10752 00239$:
                                  10753 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006959 8D 82            [24]10754 	mov	dpl,r5
      00695B 8E 83            [24]10755 	mov	dph,r6
      00695D 8F F0            [24]10756 	mov	b,r7
      00695F 12 76 03         [24]10757 	lcall	__gptrget
      006962 FC               [12]10758 	mov	r4,a
      006963 60 1C            [24]10759 	jz	00152$
      006965 7B 00            [12]10760 	mov	r3,#0x00
      006967 8C 82            [24]10761 	mov	dpl,r4
      006969 8B 83            [24]10762 	mov	dph,r3
      00696B C0 07            [24]10763 	push	ar7
      00696D C0 06            [24]10764 	push	ar6
      00696F C0 05            [24]10765 	push	ar5
      006971 12 71 72         [24]10766 	lcall	_putchar
      006974 D0 05            [24]10767 	pop	ar5
      006976 D0 06            [24]10768 	pop	ar6
      006978 D0 07            [24]10769 	pop	ar7
      00697A 0D               [12]10770 	inc	r5
                                  10771 ;	calc.c:419: printstr("]\tarithmetic shift right top 2\r\n");
      00697B BD 00 DB         [24]10772 	cjne	r5,#0x00,00239$
      00697E 0E               [12]10773 	inc	r6
      00697F 80 D8            [24]10774 	sjmp	00239$
      006981                      10775 00152$:
                                  10776 ;	calc.c:420: printstr("<\tshift left top 2\r\n");
      006981 7D E6            [12]10777 	mov	r5,#___str_47
      006983 7E 91            [12]10778 	mov	r6,#(___str_47 >> 8)
      006985 7F 80            [12]10779 	mov	r7,#0x80
                                  10780 ;	calc.c:20: return;
      006987                      10781 00242$:
                                  10782 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006987 8D 82            [24]10783 	mov	dpl,r5
      006989 8E 83            [24]10784 	mov	dph,r6
      00698B 8F F0            [24]10785 	mov	b,r7
      00698D 12 76 03         [24]10786 	lcall	__gptrget
      006990 FC               [12]10787 	mov	r4,a
      006991 60 1C            [24]10788 	jz	00154$
      006993 7B 00            [12]10789 	mov	r3,#0x00
      006995 8C 82            [24]10790 	mov	dpl,r4
      006997 8B 83            [24]10791 	mov	dph,r3
      006999 C0 07            [24]10792 	push	ar7
      00699B C0 06            [24]10793 	push	ar6
      00699D C0 05            [24]10794 	push	ar5
      00699F 12 71 72         [24]10795 	lcall	_putchar
      0069A2 D0 05            [24]10796 	pop	ar5
      0069A4 D0 06            [24]10797 	pop	ar6
      0069A6 D0 07            [24]10798 	pop	ar7
      0069A8 0D               [12]10799 	inc	r5
                                  10800 ;	calc.c:420: printstr("<\tshift left top 2\r\n");
      0069A9 BD 00 DB         [24]10801 	cjne	r5,#0x00,00242$
      0069AC 0E               [12]10802 	inc	r6
      0069AD 80 D8            [24]10803 	sjmp	00242$
      0069AF                      10804 00154$:
                                  10805 ;	calc.c:421: printstr("~\tbitwise not top\r\n");
      0069AF 7D FB            [12]10806 	mov	r5,#___str_48
      0069B1 7E 91            [12]10807 	mov	r6,#(___str_48 >> 8)
      0069B3 7F 80            [12]10808 	mov	r7,#0x80
                                  10809 ;	calc.c:20: return;
      0069B5                      10810 00245$:
                                  10811 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0069B5 8D 82            [24]10812 	mov	dpl,r5
      0069B7 8E 83            [24]10813 	mov	dph,r6
      0069B9 8F F0            [24]10814 	mov	b,r7
      0069BB 12 76 03         [24]10815 	lcall	__gptrget
      0069BE FC               [12]10816 	mov	r4,a
      0069BF 60 1C            [24]10817 	jz	00156$
      0069C1 7B 00            [12]10818 	mov	r3,#0x00
      0069C3 8C 82            [24]10819 	mov	dpl,r4
      0069C5 8B 83            [24]10820 	mov	dph,r3
      0069C7 C0 07            [24]10821 	push	ar7
      0069C9 C0 06            [24]10822 	push	ar6
      0069CB C0 05            [24]10823 	push	ar5
      0069CD 12 71 72         [24]10824 	lcall	_putchar
      0069D0 D0 05            [24]10825 	pop	ar5
      0069D2 D0 06            [24]10826 	pop	ar6
      0069D4 D0 07            [24]10827 	pop	ar7
      0069D6 0D               [12]10828 	inc	r5
                                  10829 ;	calc.c:421: printstr("~\tbitwise not top\r\n");
      0069D7 BD 00 DB         [24]10830 	cjne	r5,#0x00,00245$
      0069DA 0E               [12]10831 	inc	r6
      0069DB 80 D8            [24]10832 	sjmp	00245$
      0069DD                      10833 00156$:
                                  10834 ;	calc.c:422: printstr("s\tstatus\r\n");
      0069DD 7D 0F            [12]10835 	mov	r5,#___str_49
      0069DF 7E 92            [12]10836 	mov	r6,#(___str_49 >> 8)
      0069E1 7F 80            [12]10837 	mov	r7,#0x80
                                  10838 ;	calc.c:20: return;
      0069E3                      10839 00248$:
                                  10840 ;	calc.c:18: for (; *s; s++) putchar(*s);
      0069E3 8D 82            [24]10841 	mov	dpl,r5
      0069E5 8E 83            [24]10842 	mov	dph,r6
      0069E7 8F F0            [24]10843 	mov	b,r7
      0069E9 12 76 03         [24]10844 	lcall	__gptrget
      0069EC FC               [12]10845 	mov	r4,a
      0069ED 60 1C            [24]10846 	jz	00158$
      0069EF 7B 00            [12]10847 	mov	r3,#0x00
      0069F1 8C 82            [24]10848 	mov	dpl,r4
      0069F3 8B 83            [24]10849 	mov	dph,r3
      0069F5 C0 07            [24]10850 	push	ar7
      0069F7 C0 06            [24]10851 	push	ar6
      0069F9 C0 05            [24]10852 	push	ar5
      0069FB 12 71 72         [24]10853 	lcall	_putchar
      0069FE D0 05            [24]10854 	pop	ar5
      006A00 D0 06            [24]10855 	pop	ar6
      006A02 D0 07            [24]10856 	pop	ar7
      006A04 0D               [12]10857 	inc	r5
                                  10858 ;	calc.c:422: printstr("s\tstatus\r\n");
      006A05 BD 00 DB         [24]10859 	cjne	r5,#0x00,00248$
      006A08 0E               [12]10860 	inc	r6
      006A09 80 D8            [24]10861 	sjmp	00248$
      006A0B                      10862 00158$:
                                  10863 ;	calc.c:423: printstr("?\thelp\r\n");
      006A0B 7D 1A            [12]10864 	mov	r5,#___str_50
      006A0D 7E 92            [12]10865 	mov	r6,#(___str_50 >> 8)
      006A0F 7F 80            [12]10866 	mov	r7,#0x80
                                  10867 ;	calc.c:20: return;
      006A11                      10868 00251$:
                                  10869 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006A11 8D 82            [24]10870 	mov	dpl,r5
      006A13 8E 83            [24]10871 	mov	dph,r6
      006A15 8F F0            [24]10872 	mov	b,r7
      006A17 12 76 03         [24]10873 	lcall	__gptrget
      006A1A FC               [12]10874 	mov	r4,a
      006A1B 60 1C            [24]10875 	jz	00160$
      006A1D 7B 00            [12]10876 	mov	r3,#0x00
      006A1F 8C 82            [24]10877 	mov	dpl,r4
      006A21 8B 83            [24]10878 	mov	dph,r3
      006A23 C0 07            [24]10879 	push	ar7
      006A25 C0 06            [24]10880 	push	ar6
      006A27 C0 05            [24]10881 	push	ar5
      006A29 12 71 72         [24]10882 	lcall	_putchar
      006A2C D0 05            [24]10883 	pop	ar5
      006A2E D0 06            [24]10884 	pop	ar6
      006A30 D0 07            [24]10885 	pop	ar7
      006A32 0D               [12]10886 	inc	r5
                                  10887 ;	calc.c:423: printstr("?\thelp\r\n");
      006A33 BD 00 DB         [24]10888 	cjne	r5,#0x00,00251$
      006A36 0E               [12]10889 	inc	r6
      006A37 80 D8            [24]10890 	sjmp	00251$
      006A39                      10891 00160$:
                                  10892 ;	calc.c:424: printstr("q\tquit\r\n");
      006A39 7D 23            [12]10893 	mov	r5,#___str_51
      006A3B 7E 92            [12]10894 	mov	r6,#(___str_51 >> 8)
      006A3D 7F 80            [12]10895 	mov	r7,#0x80
                                  10896 ;	calc.c:20: return;
      006A3F                      10897 00254$:
                                  10898 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006A3F 8D 82            [24]10899 	mov	dpl,r5
      006A41 8E 83            [24]10900 	mov	dph,r6
      006A43 8F F0            [24]10901 	mov	b,r7
      006A45 12 76 03         [24]10902 	lcall	__gptrget
      006A48 FC               [12]10903 	mov	r4,a
      006A49 60 1C            [24]10904 	jz	00162$
      006A4B 7B 00            [12]10905 	mov	r3,#0x00
      006A4D 8C 82            [24]10906 	mov	dpl,r4
      006A4F 8B 83            [24]10907 	mov	dph,r3
      006A51 C0 07            [24]10908 	push	ar7
      006A53 C0 06            [24]10909 	push	ar6
      006A55 C0 05            [24]10910 	push	ar5
      006A57 12 71 72         [24]10911 	lcall	_putchar
      006A5A D0 05            [24]10912 	pop	ar5
      006A5C D0 06            [24]10913 	pop	ar6
      006A5E D0 07            [24]10914 	pop	ar7
      006A60 0D               [12]10915 	inc	r5
                                  10916 ;	calc.c:424: printstr("q\tquit\r\n");
      006A61 BD 00 DB         [24]10917 	cjne	r5,#0x00,00254$
      006A64 0E               [12]10918 	inc	r6
      006A65 80 D8            [24]10919 	sjmp	00254$
      006A67                      10920 00162$:
                                  10921 ;	calc.c:426: return 1;
      006A67 90 00 01         [24]10922 	mov	dptr,#0x0001
                                  10923 ;	calc.c:427: }
      006A6A D0 08            [24]10924 	pop	_bp
      006A6C 22               [24]10925 	ret
                                  10926 ;------------------------------------------------------------
                                  10927 ;Allocation info for local variables in function 'main'
                                  10928 ;------------------------------------------------------------
                                  10929 ;input                     Allocated to registers r6 r7 
                                  10930 ;__1966080213              Allocated to registers 
                                  10931 ;s                         Allocated to registers r2 r3 r4 
                                  10932 ;__1310720215              Allocated to registers 
                                  10933 ;s                         Allocated to registers r5 r6 r7 
                                  10934 ;sloc0                     Allocated to stack - _bp +1
                                  10935 ;------------------------------------------------------------
                                  10936 ;	calc.c:457: void main(void) {
                                  10937 ;	-----------------------------------------
                                  10938 ;	 function main
                                  10939 ;	-----------------------------------------
      006A6D                      10940 _main:
      006A6D C0 08            [24]10941 	push	_bp
      006A6F 85 81 08         [24]10942 	mov	_bp,sp
      006A72 05 81            [12]10943 	inc	sp
                                  10944 ;	calc.c:460: giant = 0;
      006A74 78 09            [12]10945 	mov	r0,#_giant
      006A76 76 00            [12]10946 	mov	@r0,#0x00
                                  10947 ;	calc.c:462: c.base = 10;
      006A78 90 A0 0C         [24]10948 	mov	dptr,#_c
      006A7B 74 0A            [12]10949 	mov	a,#0x0a
      006A7D F0               [24]10950 	movx	@dptr,a
      006A7E E4               [12]10951 	clr	a
      006A7F A3               [24]10952 	inc	dptr
      006A80 F0               [24]10953 	movx	@dptr,a
                                  10954 ;	calc.c:463: c.acc = 0l;
      006A81 90 A0 0E         [24]10955 	mov	dptr,#(_c + 0x0002)
      006A84 F0               [24]10956 	movx	@dptr,a
      006A85 A3               [24]10957 	inc	dptr
      006A86 F0               [24]10958 	movx	@dptr,a
      006A87 A3               [24]10959 	inc	dptr
      006A88 F0               [24]10960 	movx	@dptr,a
      006A89 A3               [24]10961 	inc	dptr
      006A8A F0               [24]10962 	movx	@dptr,a
                                  10963 ;	calc.c:464: c.acc_valid = (char)0;
      006A8B 90 A0 12         [24]10964 	mov	dptr,#(_c + 0x0006)
      006A8E F0               [24]10965 	movx	@dptr,a
                                  10966 ;	calc.c:465: c.digit[0] = c.digit[1] = '\0';
      006A8F 90 A0 14         [24]10967 	mov	dptr,#(_c + 0x0008)
      006A92 F0               [24]10968 	movx	@dptr,a
      006A93 90 A0 13         [24]10969 	mov	dptr,#(_c + 0x0007)
      006A96 F0               [24]10970 	movx	@dptr,a
                                  10971 ;	calc.c:467: c.ps = &c.s0;
      006A97 90 E0 1D         [24]10972 	mov	dptr,#(_c + 0x4011)
      006A9A 74 15            [12]10973 	mov	a,#(_c + 0x0009)
      006A9C F0               [24]10974 	movx	@dptr,a
      006A9D 74 A0            [12]10975 	mov	a,#((_c + 0x0009) >> 8)
      006A9F A3               [24]10976 	inc	dptr
      006AA0 F0               [24]10977 	movx	@dptr,a
      006AA1 E4               [12]10978 	clr	a
      006AA2 A3               [24]10979 	inc	dptr
      006AA3 F0               [24]10980 	movx	@dptr,a
                                  10981 ;	calc.c:468: c.ss = &c.s1;
      006AA4 90 E0 20         [24]10982 	mov	dptr,#(_c + 0x4014)
      006AA7 74 19            [12]10983 	mov	a,#(_c + 0x200d)
      006AA9 F0               [24]10984 	movx	@dptr,a
      006AAA 74 C0            [12]10985 	mov	a,#((_c + 0x200d) >> 8)
      006AAC A3               [24]10986 	inc	dptr
      006AAD F0               [24]10987 	movx	@dptr,a
      006AAE E4               [12]10988 	clr	a
      006AAF A3               [24]10989 	inc	dptr
      006AB0 F0               [24]10990 	movx	@dptr,a
                                  10991 ;	calc.c:469: stack_init(c.ps);
      006AB1 90 A0 15         [24]10992 	mov	dptr,#(_c + 0x0009)
      006AB4 75 F0 00         [24]10993 	mov	b,#0x00
      006AB7 12 26 80         [24]10994 	lcall	_stack_init
                                  10995 ;	calc.c:470: stack_init(c.ss);
      006ABA 90 E0 20         [24]10996 	mov	dptr,#(_c + 0x4014)
      006ABD E0               [24]10997 	movx	a,@dptr
      006ABE FD               [12]10998 	mov	r5,a
      006ABF A3               [24]10999 	inc	dptr
      006AC0 E0               [24]11000 	movx	a,@dptr
      006AC1 FE               [12]11001 	mov	r6,a
      006AC2 A3               [24]11002 	inc	dptr
      006AC3 E0               [24]11003 	movx	a,@dptr
      006AC4 FF               [12]11004 	mov	r7,a
      006AC5 8D 82            [24]11005 	mov	dpl,r5
      006AC7 8E 83            [24]11006 	mov	dph,r6
      006AC9 8F F0            [24]11007 	mov	b,r7
      006ACB 12 26 80         [24]11008 	lcall	_stack_init
                                  11009 ;	calc.c:472: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      006ACE 74 0C            [12]11010 	mov	a,#_c
      006AD0 C0 E0            [24]11011 	push	acc
      006AD2 74 A0            [12]11012 	mov	a,#(_c >> 8)
      006AD4 C0 E0            [24]11013 	push	acc
      006AD6 E4               [12]11014 	clr	a
      006AD7 C0 E0            [24]11015 	push	acc
      006AD9 74 25            [12]11016 	mov	a,#_deltas
      006ADB C0 E0            [24]11017 	push	acc
      006ADD 74 E0            [12]11018 	mov	a,#(_deltas >> 8)
      006ADF C0 E0            [24]11019 	push	acc
      006AE1 E4               [12]11020 	clr	a
      006AE2 C0 E0            [24]11021 	push	acc
      006AE4 C0 E0            [24]11022 	push	acc
      006AE6 74 80            [12]11023 	mov	a,#0x80
      006AE8 C0 E0            [24]11024 	push	acc
      006AEA 74 03            [12]11025 	mov	a,#0x03
      006AEC C0 E0            [24]11026 	push	acc
      006AEE E4               [12]11027 	clr	a
      006AEF C0 E0            [24]11028 	push	acc
      006AF1 C0 E0            [24]11029 	push	acc
      006AF3 C0 E0            [24]11030 	push	acc
      006AF5 90 A0 00         [24]11031 	mov	dptr,#_s
      006AF8 75 F0 00         [24]11032 	mov	b,#0x00
      006AFB 12 20 90         [24]11033 	lcall	_state_init
      006AFE E5 81            [12]11034 	mov	a,sp
      006B00 24 F4            [12]11035 	add	a,#0xf4
      006B02 F5 81            [12]11036 	mov	sp,a
                                  11037 ;	calc.c:474: (void)status(&c, deltas);
      006B04 74 25            [12]11038 	mov	a,#_deltas
      006B06 C0 E0            [24]11039 	push	acc
      006B08 74 E0            [12]11040 	mov	a,#(_deltas >> 8)
      006B0A C0 E0            [24]11041 	push	acc
      006B0C E4               [12]11042 	clr	a
      006B0D C0 E0            [24]11043 	push	acc
      006B0F 90 A0 0C         [24]11044 	mov	dptr,#_c
      006B12 75 F0 00         [24]11045 	mov	b,#0x00
      006B15 12 5B F5         [24]11046 	lcall	_status
      006B18 15 81            [12]11047 	dec	sp
      006B1A 15 81            [12]11048 	dec	sp
      006B1C 15 81            [12]11049 	dec	sp
                                  11050 ;	calc.c:476: while (1) {
      006B1E                      11051 00192$:
                                  11052 ;	calc.c:477: input = getchar();
      006B1E 12 71 7C         [24]11053 	lcall	_getchar
      006B21 AE 82            [24]11054 	mov	r6,dpl
      006B23 AF 83            [24]11055 	mov	r7,dph
                                  11056 ;	calc.c:478: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      006B25 8E 05            [24]11057 	mov	ar5,r6
      006B27 BD 0D 02         [24]11058 	cjne	r5,#0x0d,00400$
      006B2A 80 03            [24]11059 	sjmp	00101$
      006B2C                      11060 00400$:
      006B2C BD 0A 4E         [24]11061 	cjne	r5,#0x0a,00102$
      006B2F                      11062 00101$:
      006B2F 7A 9B            [12]11063 	mov	r2,#___str_3
      006B31 7B 8E            [12]11064 	mov	r3,#(___str_3 >> 8)
      006B33 7C 80            [12]11065 	mov	r4,#0x80
                                  11066 ;	calc.c:20: return;
      006B35                      11067 00199$:
                                  11068 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006B35 8A 82            [24]11069 	mov	dpl,r2
      006B37 8B 83            [24]11070 	mov	dph,r3
      006B39 8C F0            [24]11071 	mov	b,r4
      006B3B A8 08            [24]11072 	mov	r0,_bp
      006B3D 08               [12]11073 	inc	r0
      006B3E 12 76 03         [24]11074 	lcall	__gptrget
      006B41 F6               [12]11075 	mov	@r0,a
      006B42 A8 08            [24]11076 	mov	r0,_bp
      006B44 08               [12]11077 	inc	r0
      006B45 E6               [12]11078 	mov	a,@r0
      006B46 60 48            [24]11079 	jz	00103$
      006B48 C0 06            [24]11080 	push	ar6
      006B4A C0 07            [24]11081 	push	ar7
      006B4C A8 08            [24]11082 	mov	r0,_bp
      006B4E 08               [12]11083 	inc	r0
      006B4F 86 06            [24]11084 	mov	ar6,@r0
      006B51 7F 00            [12]11085 	mov	r7,#0x00
      006B53 8E 82            [24]11086 	mov	dpl,r6
      006B55 8F 83            [24]11087 	mov	dph,r7
      006B57 C0 07            [24]11088 	push	ar7
      006B59 C0 06            [24]11089 	push	ar6
      006B5B C0 05            [24]11090 	push	ar5
      006B5D C0 04            [24]11091 	push	ar4
      006B5F C0 03            [24]11092 	push	ar3
      006B61 C0 02            [24]11093 	push	ar2
      006B63 12 71 72         [24]11094 	lcall	_putchar
      006B66 D0 02            [24]11095 	pop	ar2
      006B68 D0 03            [24]11096 	pop	ar3
      006B6A D0 04            [24]11097 	pop	ar4
      006B6C D0 05            [24]11098 	pop	ar5
      006B6E D0 06            [24]11099 	pop	ar6
      006B70 D0 07            [24]11100 	pop	ar7
      006B72 0A               [12]11101 	inc	r2
      006B73 BA 00 01         [24]11102 	cjne	r2,#0x00,00404$
      006B76 0B               [12]11103 	inc	r3
      006B77                      11104 00404$:
      006B77 D0 07            [24]11105 	pop	ar7
      006B79 D0 06            [24]11106 	pop	ar6
                                  11107 ;	calc.c:478: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      006B7B 80 B8            [24]11108 	sjmp	00199$
      006B7D                      11109 00102$:
                                  11110 ;	calc.c:479: else (void)putchar(input);
      006B7D 8E 82            [24]11111 	mov	dpl,r6
      006B7F 8F 83            [24]11112 	mov	dph,r7
      006B81 C0 07            [24]11113 	push	ar7
      006B83 C0 06            [24]11114 	push	ar6
      006B85 C0 05            [24]11115 	push	ar5
      006B87 12 71 72         [24]11116 	lcall	_putchar
      006B8A D0 05            [24]11117 	pop	ar5
      006B8C D0 06            [24]11118 	pop	ar6
      006B8E D0 07            [24]11119 	pop	ar7
      006B90                      11120 00103$:
                                  11121 ;	calc.c:480: c.digit[0] = (char)input;
      006B90 90 A0 13         [24]11122 	mov	dptr,#(_c + 0x0007)
      006B93 ED               [12]11123 	mov	a,r5
      006B94 F0               [24]11124 	movx	@dptr,a
                                  11125 ;	calc.c:482: if ((char)input == 'q') {
      006B95 BD 71 2C         [24]11126 	cjne	r5,#0x71,00189$
                                  11127 ;	calc.c:483: if (state_exec(&s, EVENT_TERM) <= 0) break;
      006B98 74 08            [12]11128 	mov	a,#0x08
      006B9A C0 E0            [24]11129 	push	acc
      006B9C E4               [12]11130 	clr	a
      006B9D C0 E0            [24]11131 	push	acc
      006B9F 90 A0 00         [24]11132 	mov	dptr,#_s
      006BA2 75 F0 00         [24]11133 	mov	b,#0x00
      006BA5 12 21 46         [24]11134 	lcall	_state_exec
      006BA8 AB 82            [24]11135 	mov	r3,dpl
      006BAA AC 83            [24]11136 	mov	r4,dph
      006BAC 15 81            [12]11137 	dec	sp
      006BAE 15 81            [12]11138 	dec	sp
      006BB0 C3               [12]11139 	clr	c
      006BB1 E4               [12]11140 	clr	a
      006BB2 9B               [12]11141 	subb	a,r3
      006BB3 74 80            [12]11142 	mov	a,#(0x00 ^ 0x80)
      006BB5 8C F0            [24]11143 	mov	b,r4
      006BB7 63 F0 80         [24]11144 	xrl	b,#0x80
      006BBA 95 F0            [12]11145 	subb	a,b
      006BBC 50 03            [24]11146 	jnc	00407$
      006BBE 02 6B 1E         [24]11147 	ljmp	00192$
      006BC1                      11148 00407$:
      006BC1 02 6E 73         [24]11149 	ljmp	00193$
      006BC4                      11150 00189$:
                                  11151 ;	calc.c:484: } else if ((char)input == 's') {
      006BC4 BD 73 2C         [24]11152 	cjne	r5,#0x73,00186$
                                  11153 ;	calc.c:485: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      006BC7 74 03            [12]11154 	mov	a,#0x03
      006BC9 C0 E0            [24]11155 	push	acc
      006BCB E4               [12]11156 	clr	a
      006BCC C0 E0            [24]11157 	push	acc
      006BCE 90 A0 00         [24]11158 	mov	dptr,#_s
      006BD1 75 F0 00         [24]11159 	mov	b,#0x00
      006BD4 12 21 46         [24]11160 	lcall	_state_exec
      006BD7 AB 82            [24]11161 	mov	r3,dpl
      006BD9 AC 83            [24]11162 	mov	r4,dph
      006BDB 15 81            [12]11163 	dec	sp
      006BDD 15 81            [12]11164 	dec	sp
      006BDF C3               [12]11165 	clr	c
      006BE0 E4               [12]11166 	clr	a
      006BE1 9B               [12]11167 	subb	a,r3
      006BE2 74 80            [12]11168 	mov	a,#(0x00 ^ 0x80)
      006BE4 8C F0            [24]11169 	mov	b,r4
      006BE6 63 F0 80         [24]11170 	xrl	b,#0x80
      006BE9 95 F0            [12]11171 	subb	a,b
      006BEB 50 03            [24]11172 	jnc	00410$
      006BED 02 6B 1E         [24]11173 	ljmp	00192$
      006BF0                      11174 00410$:
      006BF0 02 6E 73         [24]11175 	ljmp	00193$
      006BF3                      11176 00186$:
                                  11177 ;	calc.c:486: } else if ((char)input == '?') {
      006BF3 BD 3F 2C         [24]11178 	cjne	r5,#0x3f,00183$
                                  11179 ;	calc.c:487: if (state_exec(&s, EVENT_HELP) <= 0) break;
      006BF6 74 04            [12]11180 	mov	a,#0x04
      006BF8 C0 E0            [24]11181 	push	acc
      006BFA E4               [12]11182 	clr	a
      006BFB C0 E0            [24]11183 	push	acc
      006BFD 90 A0 00         [24]11184 	mov	dptr,#_s
      006C00 75 F0 00         [24]11185 	mov	b,#0x00
      006C03 12 21 46         [24]11186 	lcall	_state_exec
      006C06 AB 82            [24]11187 	mov	r3,dpl
      006C08 AC 83            [24]11188 	mov	r4,dph
      006C0A 15 81            [12]11189 	dec	sp
      006C0C 15 81            [12]11190 	dec	sp
      006C0E C3               [12]11191 	clr	c
      006C0F E4               [12]11192 	clr	a
      006C10 9B               [12]11193 	subb	a,r3
      006C11 74 80            [12]11194 	mov	a,#(0x00 ^ 0x80)
      006C13 8C F0            [24]11195 	mov	b,r4
      006C15 63 F0 80         [24]11196 	xrl	b,#0x80
      006C18 95 F0            [12]11197 	subb	a,b
      006C1A 50 03            [24]11198 	jnc	00413$
      006C1C 02 6B 1E         [24]11199 	ljmp	00192$
      006C1F                      11200 00413$:
      006C1F 02 6E 73         [24]11201 	ljmp	00193$
      006C22                      11202 00183$:
                                  11203 ;	calc.c:488: } else if ((char)input == 'i') {
      006C22 BD 69 2C         [24]11204 	cjne	r5,#0x69,00180$
                                  11205 ;	calc.c:489: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      006C25 74 06            [12]11206 	mov	a,#0x06
      006C27 C0 E0            [24]11207 	push	acc
      006C29 E4               [12]11208 	clr	a
      006C2A C0 E0            [24]11209 	push	acc
      006C2C 90 A0 00         [24]11210 	mov	dptr,#_s
      006C2F 75 F0 00         [24]11211 	mov	b,#0x00
      006C32 12 21 46         [24]11212 	lcall	_state_exec
      006C35 AB 82            [24]11213 	mov	r3,dpl
      006C37 AC 83            [24]11214 	mov	r4,dph
      006C39 15 81            [12]11215 	dec	sp
      006C3B 15 81            [12]11216 	dec	sp
      006C3D C3               [12]11217 	clr	c
      006C3E E4               [12]11218 	clr	a
      006C3F 9B               [12]11219 	subb	a,r3
      006C40 74 80            [12]11220 	mov	a,#(0x00 ^ 0x80)
      006C42 8C F0            [24]11221 	mov	b,r4
      006C44 63 F0 80         [24]11222 	xrl	b,#0x80
      006C47 95 F0            [12]11223 	subb	a,b
      006C49 50 03            [24]11224 	jnc	00416$
      006C4B 02 6B 1E         [24]11225 	ljmp	00192$
      006C4E                      11226 00416$:
      006C4E 02 6E 73         [24]11227 	ljmp	00193$
      006C51                      11228 00180$:
                                  11229 ;	calc.c:490: } else if ((char)input == 'I') {
      006C51 BD 49 2C         [24]11230 	cjne	r5,#0x49,00177$
                                  11231 ;	calc.c:491: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      006C54 74 07            [12]11232 	mov	a,#0x07
      006C56 C0 E0            [24]11233 	push	acc
      006C58 E4               [12]11234 	clr	a
      006C59 C0 E0            [24]11235 	push	acc
      006C5B 90 A0 00         [24]11236 	mov	dptr,#_s
      006C5E 75 F0 00         [24]11237 	mov	b,#0x00
      006C61 12 21 46         [24]11238 	lcall	_state_exec
      006C64 AB 82            [24]11239 	mov	r3,dpl
      006C66 AC 83            [24]11240 	mov	r4,dph
      006C68 15 81            [12]11241 	dec	sp
      006C6A 15 81            [12]11242 	dec	sp
      006C6C C3               [12]11243 	clr	c
      006C6D E4               [12]11244 	clr	a
      006C6E 9B               [12]11245 	subb	a,r3
      006C6F 74 80            [12]11246 	mov	a,#(0x00 ^ 0x80)
      006C71 8C F0            [24]11247 	mov	b,r4
      006C73 63 F0 80         [24]11248 	xrl	b,#0x80
      006C76 95 F0            [12]11249 	subb	a,b
      006C78 50 03            [24]11250 	jnc	00419$
      006C7A 02 6B 1E         [24]11251 	ljmp	00192$
      006C7D                      11252 00419$:
      006C7D 02 6E 73         [24]11253 	ljmp	00193$
      006C80                      11254 00177$:
                                  11255 ;	calc.c:493: ((char)input == 'h') || ((char)input == 'H') ||
      006C80 BD 68 02         [24]11256 	cjne	r5,#0x68,00420$
      006C83 80 0D            [24]11257 	sjmp	00170$
      006C85                      11258 00420$:
      006C85 BD 48 02         [24]11259 	cjne	r5,#0x48,00421$
      006C88 80 08            [24]11260 	sjmp	00170$
      006C8A                      11261 00421$:
                                  11262 ;	calc.c:494: ((char)input == 'o') || ((char)input == 'O')
      006C8A BD 6F 02         [24]11263 	cjne	r5,#0x6f,00422$
      006C8D 80 03            [24]11264 	sjmp	00170$
      006C8F                      11265 00422$:
      006C8F BD 4F 2C         [24]11266 	cjne	r5,#0x4f,00171$
      006C92                      11267 00170$:
                                  11268 ;	calc.c:496: if (state_exec(&s, EVENT_BASE) <= 0) break;
      006C92 74 05            [12]11269 	mov	a,#0x05
      006C94 C0 E0            [24]11270 	push	acc
      006C96 E4               [12]11271 	clr	a
      006C97 C0 E0            [24]11272 	push	acc
      006C99 90 A0 00         [24]11273 	mov	dptr,#_s
      006C9C 75 F0 00         [24]11274 	mov	b,#0x00
      006C9F 12 21 46         [24]11275 	lcall	_state_exec
      006CA2 AB 82            [24]11276 	mov	r3,dpl
      006CA4 AC 83            [24]11277 	mov	r4,dph
      006CA6 15 81            [12]11278 	dec	sp
      006CA8 15 81            [12]11279 	dec	sp
      006CAA C3               [12]11280 	clr	c
      006CAB E4               [12]11281 	clr	a
      006CAC 9B               [12]11282 	subb	a,r3
      006CAD 74 80            [12]11283 	mov	a,#(0x00 ^ 0x80)
      006CAF 8C F0            [24]11284 	mov	b,r4
      006CB1 63 F0 80         [24]11285 	xrl	b,#0x80
      006CB4 95 F0            [12]11286 	subb	a,b
      006CB6 50 03            [24]11287 	jnc	00425$
      006CB8 02 6B 1E         [24]11288 	ljmp	00192$
      006CBB                      11289 00425$:
      006CBB 02 6E 73         [24]11290 	ljmp	00193$
      006CBE                      11291 00171$:
                                  11292 ;	calc.c:497: } else if (isxdigit(input)) {
      006CBE 8E 82            [24]11293 	mov	dpl,r6
      006CC0 8F 83            [24]11294 	mov	dph,r7
      006CC2 C0 05            [24]11295 	push	ar5
      006CC4 12 6E A9         [24]11296 	lcall	_isxdigit
      006CC7 E5 82            [12]11297 	mov	a,dpl
      006CC9 85 83 F0         [24]11298 	mov	b,dph
      006CCC D0 05            [24]11299 	pop	ar5
      006CCE 45 F0            [12]11300 	orl	a,b
      006CD0 60 2C            [24]11301 	jz	00168$
                                  11302 ;	calc.c:498: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      006CD2 74 01            [12]11303 	mov	a,#0x01
      006CD4 C0 E0            [24]11304 	push	acc
      006CD6 E4               [12]11305 	clr	a
      006CD7 C0 E0            [24]11306 	push	acc
      006CD9 90 A0 00         [24]11307 	mov	dptr,#_s
      006CDC 75 F0 00         [24]11308 	mov	b,#0x00
      006CDF 12 21 46         [24]11309 	lcall	_state_exec
      006CE2 AE 82            [24]11310 	mov	r6,dpl
      006CE4 AF 83            [24]11311 	mov	r7,dph
      006CE6 15 81            [12]11312 	dec	sp
      006CE8 15 81            [12]11313 	dec	sp
      006CEA C3               [12]11314 	clr	c
      006CEB E4               [12]11315 	clr	a
      006CEC 9E               [12]11316 	subb	a,r6
      006CED 74 80            [12]11317 	mov	a,#(0x00 ^ 0x80)
      006CEF 8F F0            [24]11318 	mov	b,r7
      006CF1 63 F0 80         [24]11319 	xrl	b,#0x80
      006CF4 95 F0            [12]11320 	subb	a,b
      006CF6 50 03            [24]11321 	jnc	00427$
      006CF8 02 6B 1E         [24]11322 	ljmp	00192$
      006CFB                      11323 00427$:
      006CFB 02 6E 73         [24]11324 	ljmp	00193$
      006CFE                      11325 00168$:
                                  11326 ;	calc.c:500: ((char)input == 'p') || ((char)input == 'P') ||
      006CFE BD 70 02         [24]11327 	cjne	r5,#0x70,00428$
      006D01 80 17            [24]11328 	sjmp	00159$
      006D03                      11329 00428$:
      006D03 BD 50 02         [24]11330 	cjne	r5,#0x50,00429$
      006D06 80 12            [24]11331 	sjmp	00159$
      006D08                      11332 00429$:
                                  11333 ;	calc.c:501: ((char)input == 'v') || ((char)input == 'V') ||
      006D08 BD 76 02         [24]11334 	cjne	r5,#0x76,00430$
      006D0B 80 0D            [24]11335 	sjmp	00159$
      006D0D                      11336 00430$:
      006D0D BD 56 02         [24]11337 	cjne	r5,#0x56,00431$
      006D10 80 08            [24]11338 	sjmp	00159$
      006D12                      11339 00431$:
                                  11340 ;	calc.c:502: ((char)input == '.') ||
      006D12 BD 2E 02         [24]11341 	cjne	r5,#0x2e,00432$
      006D15 80 03            [24]11342 	sjmp	00159$
      006D17                      11343 00432$:
                                  11344 ;	calc.c:503: ((char)input == 'x')
      006D17 BD 78 2C         [24]11345 	cjne	r5,#0x78,00160$
      006D1A                      11346 00159$:
                                  11347 ;	calc.c:505: if (state_exec(&s, EVENT_OP) <= 0) break;
      006D1A 74 02            [12]11348 	mov	a,#0x02
      006D1C C0 E0            [24]11349 	push	acc
      006D1E E4               [12]11350 	clr	a
      006D1F C0 E0            [24]11351 	push	acc
      006D21 90 A0 00         [24]11352 	mov	dptr,#_s
      006D24 75 F0 00         [24]11353 	mov	b,#0x00
      006D27 12 21 46         [24]11354 	lcall	_state_exec
      006D2A AE 82            [24]11355 	mov	r6,dpl
      006D2C AF 83            [24]11356 	mov	r7,dph
      006D2E 15 81            [12]11357 	dec	sp
      006D30 15 81            [12]11358 	dec	sp
      006D32 C3               [12]11359 	clr	c
      006D33 E4               [12]11360 	clr	a
      006D34 9E               [12]11361 	subb	a,r6
      006D35 74 80            [12]11362 	mov	a,#(0x00 ^ 0x80)
      006D37 8F F0            [24]11363 	mov	b,r7
      006D39 63 F0 80         [24]11364 	xrl	b,#0x80
      006D3C 95 F0            [12]11365 	subb	a,b
      006D3E 50 03            [24]11366 	jnc	00435$
      006D40 02 6B 1E         [24]11367 	ljmp	00192$
      006D43                      11368 00435$:
      006D43 02 6E 73         [24]11369 	ljmp	00193$
      006D46                      11370 00160$:
                                  11371 ;	calc.c:507: ((char)input == 'X') || ((char)input == 'T') ||
      006D46 BD 58 02         [24]11372 	cjne	r5,#0x58,00436$
      006D49 80 17            [24]11373 	sjmp	00151$
      006D4B                      11374 00436$:
      006D4B BD 54 02         [24]11375 	cjne	r5,#0x54,00437$
      006D4E 80 12            [24]11376 	sjmp	00151$
      006D50                      11377 00437$:
                                  11378 ;	calc.c:508: ((char)input == 'm') || ((char)input == 'M') ||
      006D50 BD 6D 02         [24]11379 	cjne	r5,#0x6d,00438$
      006D53 80 0D            [24]11380 	sjmp	00151$
      006D55                      11381 00438$:
      006D55 BD 4D 02         [24]11382 	cjne	r5,#0x4d,00439$
      006D58 80 08            [24]11383 	sjmp	00151$
      006D5A                      11384 00439$:
                                  11385 ;	calc.c:509: ((char)input == 'u') || ((char)input == 'U')
      006D5A BD 75 02         [24]11386 	cjne	r5,#0x75,00440$
      006D5D 80 03            [24]11387 	sjmp	00151$
      006D5F                      11388 00440$:
      006D5F BD 55 2C         [24]11389 	cjne	r5,#0x55,00152$
      006D62                      11390 00151$:
                                  11391 ;	calc.c:511: if (state_exec(&s, EVENT_OP) <= 0) break;
      006D62 74 02            [12]11392 	mov	a,#0x02
      006D64 C0 E0            [24]11393 	push	acc
      006D66 E4               [12]11394 	clr	a
      006D67 C0 E0            [24]11395 	push	acc
      006D69 90 A0 00         [24]11396 	mov	dptr,#_s
      006D6C 75 F0 00         [24]11397 	mov	b,#0x00
      006D6F 12 21 46         [24]11398 	lcall	_state_exec
      006D72 AE 82            [24]11399 	mov	r6,dpl
      006D74 AF 83            [24]11400 	mov	r7,dph
      006D76 15 81            [12]11401 	dec	sp
      006D78 15 81            [12]11402 	dec	sp
      006D7A C3               [12]11403 	clr	c
      006D7B E4               [12]11404 	clr	a
      006D7C 9E               [12]11405 	subb	a,r6
      006D7D 74 80            [12]11406 	mov	a,#(0x00 ^ 0x80)
      006D7F 8F F0            [24]11407 	mov	b,r7
      006D81 63 F0 80         [24]11408 	xrl	b,#0x80
      006D84 95 F0            [12]11409 	subb	a,b
      006D86 50 03            [24]11410 	jnc	00443$
      006D88 02 6B 1E         [24]11411 	ljmp	00192$
      006D8B                      11412 00443$:
      006D8B 02 6E 73         [24]11413 	ljmp	00193$
      006D8E                      11414 00152$:
                                  11415 ;	calc.c:513: ((char)input == '+') || ((char)input == '-')
      006D8E BD 2B 02         [24]11416 	cjne	r5,#0x2b,00444$
      006D91 80 03            [24]11417 	sjmp	00147$
      006D93                      11418 00444$:
      006D93 BD 2D 2C         [24]11419 	cjne	r5,#0x2d,00148$
      006D96                      11420 00147$:
                                  11421 ;	calc.c:515: if (state_exec(&s, EVENT_OP) <= 0) break;
      006D96 74 02            [12]11422 	mov	a,#0x02
      006D98 C0 E0            [24]11423 	push	acc
      006D9A E4               [12]11424 	clr	a
      006D9B C0 E0            [24]11425 	push	acc
      006D9D 90 A0 00         [24]11426 	mov	dptr,#_s
      006DA0 75 F0 00         [24]11427 	mov	b,#0x00
      006DA3 12 21 46         [24]11428 	lcall	_state_exec
      006DA6 AE 82            [24]11429 	mov	r6,dpl
      006DA8 AF 83            [24]11430 	mov	r7,dph
      006DAA 15 81            [12]11431 	dec	sp
      006DAC 15 81            [12]11432 	dec	sp
      006DAE C3               [12]11433 	clr	c
      006DAF E4               [12]11434 	clr	a
      006DB0 9E               [12]11435 	subb	a,r6
      006DB1 74 80            [12]11436 	mov	a,#(0x00 ^ 0x80)
      006DB3 8F F0            [24]11437 	mov	b,r7
      006DB5 63 F0 80         [24]11438 	xrl	b,#0x80
      006DB8 95 F0            [12]11439 	subb	a,b
      006DBA 50 03            [24]11440 	jnc	00447$
      006DBC 02 6B 1E         [24]11441 	ljmp	00192$
      006DBF                      11442 00447$:
      006DBF 02 6E 73         [24]11443 	ljmp	00193$
      006DC2                      11444 00148$:
                                  11445 ;	calc.c:517: ((char)input == '*') ||
      006DC2 BD 2A 02         [24]11446 	cjne	r5,#0x2a,00448$
      006DC5 80 12            [24]11447 	sjmp	00140$
      006DC7                      11448 00448$:
                                  11449 ;	calc.c:518: ((char)input == '/') || ((char)input == '\\') ||
      006DC7 BD 2F 02         [24]11450 	cjne	r5,#0x2f,00449$
      006DCA 80 0D            [24]11451 	sjmp	00140$
      006DCC                      11452 00449$:
      006DCC BD 5C 02         [24]11453 	cjne	r5,#0x5c,00450$
      006DCF 80 08            [24]11454 	sjmp	00140$
      006DD1                      11455 00450$:
                                  11456 ;	calc.c:519: ((char)input == '%') || ((char)input == '#')
      006DD1 BD 25 02         [24]11457 	cjne	r5,#0x25,00451$
      006DD4 80 03            [24]11458 	sjmp	00140$
      006DD6                      11459 00451$:
      006DD6 BD 23 29         [24]11460 	cjne	r5,#0x23,00141$
      006DD9                      11461 00140$:
                                  11462 ;	calc.c:521: if (state_exec(&s, EVENT_OP) <= 0) break;
      006DD9 74 02            [12]11463 	mov	a,#0x02
      006DDB C0 E0            [24]11464 	push	acc
      006DDD E4               [12]11465 	clr	a
      006DDE C0 E0            [24]11466 	push	acc
      006DE0 90 A0 00         [24]11467 	mov	dptr,#_s
      006DE3 75 F0 00         [24]11468 	mov	b,#0x00
      006DE6 12 21 46         [24]11469 	lcall	_state_exec
      006DE9 AE 82            [24]11470 	mov	r6,dpl
      006DEB AF 83            [24]11471 	mov	r7,dph
      006DED 15 81            [12]11472 	dec	sp
      006DEF 15 81            [12]11473 	dec	sp
      006DF1 C3               [12]11474 	clr	c
      006DF2 E4               [12]11475 	clr	a
      006DF3 9E               [12]11476 	subb	a,r6
      006DF4 74 80            [12]11477 	mov	a,#(0x00 ^ 0x80)
      006DF6 8F F0            [24]11478 	mov	b,r7
      006DF8 63 F0 80         [24]11479 	xrl	b,#0x80
      006DFB 95 F0            [12]11480 	subb	a,b
      006DFD 50 74            [24]11481 	jnc	00193$
      006DFF 02 6B 1E         [24]11482 	ljmp	00192$
      006E02                      11483 00141$:
                                  11484 ;	calc.c:523: ((char)input == '&') ||
      006E02 BD 26 02         [24]11485 	cjne	r5,#0x26,00455$
      006E05 80 1C            [24]11486 	sjmp	00131$
      006E07                      11487 00455$:
                                  11488 ;	calc.c:524: ((char)input == '|') || ((char)input == '^') ||
      006E07 BD 7C 02         [24]11489 	cjne	r5,#0x7c,00456$
      006E0A 80 17            [24]11490 	sjmp	00131$
      006E0C                      11491 00456$:
      006E0C BD 5E 02         [24]11492 	cjne	r5,#0x5e,00457$
      006E0F 80 12            [24]11493 	sjmp	00131$
      006E11                      11494 00457$:
                                  11495 ;	calc.c:525: ((char)input == '~') ||
      006E11 BD 7E 02         [24]11496 	cjne	r5,#0x7e,00458$
      006E14 80 0D            [24]11497 	sjmp	00131$
      006E16                      11498 00458$:
                                  11499 ;	calc.c:526: ((char)input == '>') || ((char)input == ']') ||
      006E16 BD 3E 02         [24]11500 	cjne	r5,#0x3e,00459$
      006E19 80 08            [24]11501 	sjmp	00131$
      006E1B                      11502 00459$:
      006E1B BD 5D 02         [24]11503 	cjne	r5,#0x5d,00460$
      006E1E 80 03            [24]11504 	sjmp	00131$
      006E20                      11505 00460$:
                                  11506 ;	calc.c:527: ((char)input == '<')
      006E20 BD 3C 29         [24]11507 	cjne	r5,#0x3c,00132$
      006E23                      11508 00131$:
                                  11509 ;	calc.c:529: if (state_exec(&s, EVENT_OP) <= 0) break;
      006E23 74 02            [12]11510 	mov	a,#0x02
      006E25 C0 E0            [24]11511 	push	acc
      006E27 E4               [12]11512 	clr	a
      006E28 C0 E0            [24]11513 	push	acc
      006E2A 90 A0 00         [24]11514 	mov	dptr,#_s
      006E2D 75 F0 00         [24]11515 	mov	b,#0x00
      006E30 12 21 46         [24]11516 	lcall	_state_exec
      006E33 AE 82            [24]11517 	mov	r6,dpl
      006E35 AF 83            [24]11518 	mov	r7,dph
      006E37 15 81            [12]11519 	dec	sp
      006E39 15 81            [12]11520 	dec	sp
      006E3B C3               [12]11521 	clr	c
      006E3C E4               [12]11522 	clr	a
      006E3D 9E               [12]11523 	subb	a,r6
      006E3E 74 80            [12]11524 	mov	a,#(0x00 ^ 0x80)
      006E40 8F F0            [24]11525 	mov	b,r7
      006E42 63 F0 80         [24]11526 	xrl	b,#0x80
      006E45 95 F0            [12]11527 	subb	a,b
      006E47 50 2A            [24]11528 	jnc	00193$
      006E49 02 6B 1E         [24]11529 	ljmp	00192$
      006E4C                      11530 00132$:
                                  11531 ;	calc.c:531: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      006E4C E4               [12]11532 	clr	a
      006E4D C0 E0            [24]11533 	push	acc
      006E4F C0 E0            [24]11534 	push	acc
      006E51 90 A0 00         [24]11535 	mov	dptr,#_s
      006E54 75 F0 00         [24]11536 	mov	b,#0x00
      006E57 12 21 46         [24]11537 	lcall	_state_exec
      006E5A AE 82            [24]11538 	mov	r6,dpl
      006E5C AF 83            [24]11539 	mov	r7,dph
      006E5E 15 81            [12]11540 	dec	sp
      006E60 15 81            [12]11541 	dec	sp
      006E62 C3               [12]11542 	clr	c
      006E63 E4               [12]11543 	clr	a
      006E64 9E               [12]11544 	subb	a,r6
      006E65 74 80            [12]11545 	mov	a,#(0x00 ^ 0x80)
      006E67 8F F0            [24]11546 	mov	b,r7
      006E69 63 F0 80         [24]11547 	xrl	b,#0x80
      006E6C 95 F0            [12]11548 	subb	a,b
      006E6E 50 03            [24]11549 	jnc	00464$
      006E70 02 6B 1E         [24]11550 	ljmp	00192$
      006E73                      11551 00464$:
      006E73                      11552 00193$:
                                  11553 ;	calc.c:535: printstr("TERM\r\n");
      006E73 7D 2C            [12]11554 	mov	r5,#___str_52
      006E75 7E 92            [12]11555 	mov	r6,#(___str_52 >> 8)
      006E77 7F 80            [12]11556 	mov	r7,#0x80
                                  11557 ;	calc.c:20: return;
      006E79                      11558 00202$:
                                  11559 ;	calc.c:18: for (; *s; s++) putchar(*s);
      006E79 8D 82            [24]11560 	mov	dpl,r5
      006E7B 8E 83            [24]11561 	mov	dph,r6
      006E7D 8F F0            [24]11562 	mov	b,r7
      006E7F 12 76 03         [24]11563 	lcall	__gptrget
      006E82 FC               [12]11564 	mov	r4,a
      006E83 60 1C            [24]11565 	jz	00197$
      006E85 7B 00            [12]11566 	mov	r3,#0x00
      006E87 8C 82            [24]11567 	mov	dpl,r4
      006E89 8B 83            [24]11568 	mov	dph,r3
      006E8B C0 07            [24]11569 	push	ar7
      006E8D C0 06            [24]11570 	push	ar6
      006E8F C0 05            [24]11571 	push	ar5
      006E91 12 71 72         [24]11572 	lcall	_putchar
      006E94 D0 05            [24]11573 	pop	ar5
      006E96 D0 06            [24]11574 	pop	ar6
      006E98 D0 07            [24]11575 	pop	ar7
      006E9A 0D               [12]11576 	inc	r5
                                  11577 ;	calc.c:535: printstr("TERM\r\n");
      006E9B BD 00 DB         [24]11578 	cjne	r5,#0x00,00202$
      006E9E 0E               [12]11579 	inc	r6
      006E9F 80 D8            [24]11580 	sjmp	00202$
      006EA1                      11581 00197$:
                                  11582 ;	calc.c:537: PCON |= 2;
      006EA1 43 87 02         [24]11583 	orl	_PCON,#0x02
                                  11584 ;	calc.c:539: return;
                                  11585 ;	calc.c:540: }
      006EA4 15 81            [12]11586 	dec	sp
      006EA6 D0 08            [24]11587 	pop	_bp
      006EA8 22               [24]11588 	ret
                                  11589 	.area CSEG    (CODE)
                                  11590 	.area CONST   (CODE)
                                  11591 	.area CONST   (CODE)
      008E84                      11592 ___str_0:
      008E84 25 30 38 6C 78       11593 	.ascii "%08lx"
      008E89 09                   11594 	.db 0x09
      008E8A 00                   11595 	.db 0x00
                                  11596 	.area CSEG    (CODE)
                                  11597 	.area CONST   (CODE)
      008E8B                      11598 ___str_1:
      008E8B 25 20 31 31 6C 64    11599 	.ascii "% 11ld"
      008E91 09                   11600 	.db 0x09
      008E92 00                   11601 	.db 0x00
                                  11602 	.area CSEG    (CODE)
                                  11603 	.area CONST   (CODE)
      008E93                      11604 ___str_2:
      008E93 25 30 31 31 6C 6F    11605 	.ascii "%011lo"
      008E99 09                   11606 	.db 0x09
      008E9A 00                   11607 	.db 0x00
                                  11608 	.area CSEG    (CODE)
                                  11609 	.area CONST   (CODE)
      008E9B                      11610 ___str_3:
      008E9B 0D                   11611 	.db 0x0d
      008E9C 0A                   11612 	.db 0x0a
      008E9D 00                   11613 	.db 0x00
                                  11614 	.area CSEG    (CODE)
                                  11615 	.area CONST   (CODE)
      008E9E                      11616 ___str_4:
      008E9E 73 74 61 63 6B 20 75 11617 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      008EAD 0D                   11618 	.db 0x0d
      008EAE 0A                   11619 	.db 0x0a
      008EAF 00                   11620 	.db 0x00
                                  11621 	.area CSEG    (CODE)
                                  11622 	.area CONST   (CODE)
      008EB0                      11623 ___str_5:
      008EB0 50 53 50 41          11624 	.ascii "PSPA"
      008EB4 09                   11625 	.db 0x09
      008EB5 00                   11626 	.db 0x00
                                  11627 	.area CSEG    (CODE)
                                  11628 	.area CONST   (CODE)
      008EB6                      11629 ___str_6:
      008EB6 53 53 50 41          11630 	.ascii "SSPA"
      008EBA 09                   11631 	.db 0x09
      008EBB 00                   11632 	.db 0x00
                                  11633 	.area CSEG    (CODE)
                                  11634 	.area CONST   (CODE)
      008EBC                      11635 ___str_7:
      008EBC 50 53 56 41          11636 	.ascii "PSVA"
      008EC0 09                   11637 	.db 0x09
      008EC1 00                   11638 	.db 0x00
                                  11639 	.area CSEG    (CODE)
                                  11640 	.area CONST   (CODE)
      008EC2                      11641 ___str_8:
      008EC2 50 53 56 54 4F 50    11642 	.ascii "PSVTOP"
      008EC8 09                   11643 	.db 0x09
      008EC9 00                   11644 	.db 0x00
                                  11645 	.area CSEG    (CODE)
                                  11646 	.area CONST   (CODE)
      008ECA                      11647 ___str_9:
      008ECA 50 53 50 54 4F 50    11648 	.ascii "PSPTOP"
      008ED0 09                   11649 	.db 0x09
      008ED1 00                   11650 	.db 0x00
                                  11651 	.area CSEG    (CODE)
                                  11652 	.area CONST   (CODE)
      008ED2                      11653 ___str_10:
      008ED2 0D                   11654 	.db 0x0d
      008ED3 0A                   11655 	.db 0x0a
      008ED4 73 74 61 63 6B 20 75 11656 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      008EE3 0D                   11657 	.db 0x0d
      008EE4 0A                   11658 	.db 0x0a
      008EE5 00                   11659 	.db 0x00
                                  11660 	.area CSEG    (CODE)
                                  11661 	.area CONST   (CODE)
      008EE6                      11662 ___str_11:
      008EE6 0D                   11663 	.db 0x0d
      008EE7 0A                   11664 	.db 0x0a
      008EE8 73 65 63 6F 6E 64 61 11665 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      008F00 0D                   11666 	.db 0x0d
      008F01 0A                   11667 	.db 0x0a
      008F02 00                   11668 	.db 0x00
                                  11669 	.area CSEG    (CODE)
                                  11670 	.area CONST   (CODE)
      008F03                      11671 ___str_12:
      008F03 0D                   11672 	.db 0x0d
      008F04 0A                   11673 	.db 0x0a
      008F05 73 65 63 6F 6E 64 61 11674 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      008F1E 0D                   11675 	.db 0x0d
      008F1F 0A                   11676 	.db 0x0a
      008F20 00                   11677 	.db 0x00
                                  11678 	.area CSEG    (CODE)
                                  11679 	.area CONST   (CODE)
      008F21                      11680 ___str_13:
      008F21 0D                   11681 	.db 0x0d
      008F22 0A                   11682 	.db 0x0a
      008F23 73 74 61 63 6B 20 6F 11683 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      008F31 0D                   11684 	.db 0x0d
      008F32 0A                   11685 	.db 0x0a
      008F33 00                   11686 	.db 0x00
                                  11687 	.area CSEG    (CODE)
                                  11688 	.area CONST   (CODE)
      008F34                      11689 ___str_14:
      008F34 0D                   11690 	.db 0x0d
      008F35 0A                   11691 	.db 0x0a
      008F36 64 69 76 69 73 69 6F 11692 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      008F46 0D                   11693 	.db 0x0d
      008F47 0A                   11694 	.db 0x0a
      008F48 00                   11695 	.db 0x00
                                  11696 	.area CSEG    (CODE)
                                  11697 	.area CONST   (CODE)
      008F49                      11698 ___str_15:
      008F49 0D                   11699 	.db 0x0d
      008F4A 0A                   11700 	.db 0x0a
      008F4B 50 53 20 3D 20 25 70 11701 	.ascii "PS = %p, SS = %p, base = %d"
             2C 20 53 53 20 3D 20
             25 70 2C 20 62 61 73
             65 20 3D 20 25 64
      008F66 0D                   11702 	.db 0x0d
      008F67 0A                   11703 	.db 0x0a
      008F68 00                   11704 	.db 0x00
                                  11705 	.area CSEG    (CODE)
                                  11706 	.area CONST   (CODE)
      008F69                      11707 ___str_16:
      008F69 41 43 43             11708 	.ascii "ACC"
      008F6C 09                   11709 	.db 0x09
      008F6D 00                   11710 	.db 0x00
                                  11711 	.area CSEG    (CODE)
                                  11712 	.area CONST   (CODE)
      008F6E                      11713 ___str_17:
      008F6E 0D                   11714 	.db 0x0d
      008F6F 0A                   11715 	.db 0x0a
      008F70 50 53 54 4F 50 31    11716 	.ascii "PSTOP1"
      008F76 09                   11717 	.db 0x09
      008F77 00                   11718 	.db 0x00
                                  11719 	.area CSEG    (CODE)
                                  11720 	.area CONST   (CODE)
      008F78                      11721 ___str_18:
      008F78 0D                   11722 	.db 0x0d
      008F79 0A                   11723 	.db 0x0a
      008F7A 50 53 54 4F 50 30    11724 	.ascii "PSTOP0"
      008F80 09                   11725 	.db 0x09
      008F81 00                   11726 	.db 0x00
                                  11727 	.area CSEG    (CODE)
                                  11728 	.area CONST   (CODE)
      008F82                      11729 ___str_19:
      008F82 0D                   11730 	.db 0x0d
      008F83 0A                   11731 	.db 0x0a
      008F84 53 53 54 4F 50 31    11732 	.ascii "SSTOP1"
      008F8A 09                   11733 	.db 0x09
      008F8B 00                   11734 	.db 0x00
                                  11735 	.area CSEG    (CODE)
                                  11736 	.area CONST   (CODE)
      008F8C                      11737 ___str_20:
      008F8C 0D                   11738 	.db 0x0d
      008F8D 0A                   11739 	.db 0x0a
      008F8E 53 53 54 4F 50 30    11740 	.ascii "SSTOP0"
      008F94 09                   11741 	.db 0x09
      008F95 00                   11742 	.db 0x00
                                  11743 	.area CSEG    (CODE)
                                  11744 	.area CONST   (CODE)
      008F96                      11745 ___str_21:
      008F96 0D                   11746 	.db 0x0d
      008F97 0A                   11747 	.db 0x0a
      008F98 48 68 4F 6F          11748 	.ascii "HhOo"
      008F9C 09                   11749 	.db 0x09
      008F9D 62 61 73 65 20 31 36 11750 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      008FAB 0D                   11751 	.db 0x0d
      008FAC 0A                   11752 	.db 0x0a
      008FAD 00                   11753 	.db 0x00
                                  11754 	.area CSEG    (CODE)
                                  11755 	.area CONST   (CODE)
      008FAE                      11756 ___str_22:
      008FAE 70 2E                11757 	.ascii "p."
      008FB0 09                   11758 	.db 0x09
      008FB1 70 6F 70 20 74 6F 70 11759 	.ascii "pop top"
      008FB8 0D                   11760 	.db 0x0d
      008FB9 0A                   11761 	.db 0x0a
      008FBA 00                   11762 	.db 0x00
                                  11763 	.area CSEG    (CODE)
                                  11764 	.area CONST   (CODE)
      008FBB                      11765 ___str_23:
      008FBB 50                   11766 	.ascii "P"
      008FBC 09                   11767 	.db 0x09
      008FBD 70 6F 70 20 73 74 61 11768 	.ascii "pop stack"
             63 6B
      008FC6 0D                   11769 	.db 0x0d
      008FC7 0A                   11770 	.db 0x0a
      008FC8 00                   11771 	.db 0x00
                                  11772 	.area CSEG    (CODE)
                                  11773 	.area CONST   (CODE)
      008FC9                      11774 ___str_24:
      008FC9 76                   11775 	.ascii "v"
      008FCA 09                   11776 	.db 0x09
      008FCB 70 65 65 6B 20 74 6F 11777 	.ascii "peek top"
             70
      008FD3 0D                   11778 	.db 0x0d
      008FD4 0A                   11779 	.db 0x0a
      008FD5 00                   11780 	.db 0x00
                                  11781 	.area CSEG    (CODE)
                                  11782 	.area CONST   (CODE)
      008FD6                      11783 ___str_25:
      008FD6 56                   11784 	.ascii "V"
      008FD7 09                   11785 	.db 0x09
      008FD8 70 65 65 6B 20 73 74 11786 	.ascii "peek stack"
             61 63 6B
      008FE2 0D                   11787 	.db 0x0d
      008FE3 0A                   11788 	.db 0x0a
      008FE4 00                   11789 	.db 0x00
                                  11790 	.area CSEG    (CODE)
                                  11791 	.area CONST   (CODE)
      008FE5                      11792 ___str_26:
      008FE5 69                   11793 	.ascii "i"
      008FE6 09                   11794 	.db 0x09
      008FE7 72 65 73 65 74 20 61 11795 	.ascii "reset acc"
             63 63
      008FF0 0D                   11796 	.db 0x0d
      008FF1 0A                   11797 	.db 0x0a
      008FF2 00                   11798 	.db 0x00
                                  11799 	.area CSEG    (CODE)
                                  11800 	.area CONST   (CODE)
      008FF3                      11801 ___str_27:
      008FF3 49                   11802 	.ascii "I"
      008FF4 09                   11803 	.db 0x09
      008FF5 72 65 73 65 74 20 61 11804 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      00900A 0D                   11805 	.db 0x0d
      00900B 0A                   11806 	.db 0x0a
      00900C 00                   11807 	.db 0x00
                                  11808 	.area CSEG    (CODE)
                                  11809 	.area CONST   (CODE)
      00900D                      11810 ___str_28:
      00900D 78                   11811 	.ascii "x"
      00900E 09                   11812 	.db 0x09
      00900F 65 78 63 68 61 6E 67 11813 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      00901D 0D                   11814 	.db 0x0d
      00901E 0A                   11815 	.db 0x0a
      00901F 00                   11816 	.db 0x00
                                  11817 	.area CSEG    (CODE)
                                  11818 	.area CONST   (CODE)
      009020                      11819 ___str_29:
      009020 58                   11820 	.ascii "X"
      009021 09                   11821 	.db 0x09
      009022 65 78 63 68 61 6E 67 11822 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      009047 0D                   11823 	.db 0x0d
      009048 0A                   11824 	.db 0x0a
      009049 00                   11825 	.db 0x00
                                  11826 	.area CSEG    (CODE)
                                  11827 	.area CONST   (CODE)
      00904A                      11828 ___str_30:
      00904A 54                   11829 	.ascii "T"
      00904B 09                   11830 	.db 0x09
      00904C 65 78 63 68 61 6E 67 11831 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      00906F 0D                   11832 	.db 0x0d
      009070 0A                   11833 	.db 0x0a
      009071 00                   11834 	.db 0x00
                                  11835 	.area CSEG    (CODE)
                                  11836 	.area CONST   (CODE)
      009072                      11837 ___str_31:
      009072 55                   11838 	.ascii "U"
      009073 09                   11839 	.db 0x09
      009074 63 6F 70 79 20 74 6F 11840 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      009091 0D                   11841 	.db 0x0d
      009092 0A                   11842 	.db 0x0a
      009093 00                   11843 	.db 0x00
                                  11844 	.area CSEG    (CODE)
                                  11845 	.area CONST   (CODE)
      009094                      11846 ___str_32:
      009094 75                   11847 	.ascii "u"
      009095 09                   11848 	.db 0x09
      009096 63 6F 70 79 20 74 6F 11849 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      0090B3 0D                   11850 	.db 0x0d
      0090B4 0A                   11851 	.db 0x0a
      0090B5 00                   11852 	.db 0x00
                                  11853 	.area CSEG    (CODE)
                                  11854 	.area CONST   (CODE)
      0090B6                      11855 ___str_33:
      0090B6 4D                   11856 	.ascii "M"
      0090B7 09                   11857 	.db 0x09
      0090B8 6D 6F 76 65 20 74 6F 11858 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      0090D5 0D                   11859 	.db 0x0d
      0090D6 0A                   11860 	.db 0x0a
      0090D7 00                   11861 	.db 0x00
                                  11862 	.area CSEG    (CODE)
                                  11863 	.area CONST   (CODE)
      0090D8                      11864 ___str_34:
      0090D8 6D                   11865 	.ascii "m"
      0090D9 09                   11866 	.db 0x09
      0090DA 6D 6F 76 65 20 74 6F 11867 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      0090F7 0D                   11868 	.db 0x0d
      0090F8 0A                   11869 	.db 0x0a
      0090F9 00                   11870 	.db 0x00
                                  11871 	.area CSEG    (CODE)
                                  11872 	.area CONST   (CODE)
      0090FA                      11873 ___str_35:
      0090FA 2B                   11874 	.ascii "+"
      0090FB 09                   11875 	.db 0x09
      0090FC 61 64 64 20 74 6F 70 11876 	.ascii "add top 2"
             20 32
      009105 0D                   11877 	.db 0x0d
      009106 0A                   11878 	.db 0x0a
      009107 00                   11879 	.db 0x00
                                  11880 	.area CSEG    (CODE)
                                  11881 	.area CONST   (CODE)
      009108                      11882 ___str_36:
      009108 2D                   11883 	.ascii "-"
      009109 09                   11884 	.db 0x09
      00910A 73 75 62 74 72 61 63 11885 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      009118 0D                   11886 	.db 0x0d
      009119 0A                   11887 	.db 0x0a
      00911A 00                   11888 	.db 0x00
                                  11889 	.area CSEG    (CODE)
                                  11890 	.area CONST   (CODE)
      00911B                      11891 ___str_37:
      00911B 2A                   11892 	.ascii "*"
      00911C 09                   11893 	.db 0x09
      00911D 6D 75 6C 74 69 70 6C 11894 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      00912B 0D                   11895 	.db 0x0d
      00912C 0A                   11896 	.db 0x0a
      00912D 00                   11897 	.db 0x00
                                  11898 	.area CSEG    (CODE)
                                  11899 	.area CONST   (CODE)
      00912E                      11900 ___str_38:
      00912E 2F                   11901 	.ascii "/"
      00912F 09                   11902 	.db 0x09
      009130 64 69 76 69 64 65 20 11903 	.ascii "divide top 2"
             74 6F 70 20 32
      00913C 0D                   11904 	.db 0x0d
      00913D 0A                   11905 	.db 0x0a
      00913E 00                   11906 	.db 0x00
                                  11907 	.area CSEG    (CODE)
                                  11908 	.area CONST   (CODE)
      00913F                      11909 ___str_39:
      00913F 5C                   11910 	.db 0x5c
      009140 09                   11911 	.db 0x09
      009141 64 69 76 69 64 65 20 11912 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      009156 0D                   11913 	.db 0x0d
      009157 0A                   11914 	.db 0x0a
      009158 00                   11915 	.db 0x00
                                  11916 	.area CSEG    (CODE)
                                  11917 	.area CONST   (CODE)
      009159                      11918 ___str_40:
      009159 25                   11919 	.ascii "%"
      00915A 09                   11920 	.db 0x09
      00915B 6D 6F 64 75 6C 75 73 11921 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      009168 0D                   11922 	.db 0x0d
      009169 0A                   11923 	.db 0x0a
      00916A 00                   11924 	.db 0x00
                                  11925 	.area CSEG    (CODE)
                                  11926 	.area CONST   (CODE)
      00916B                      11927 ___str_41:
      00916B 23                   11928 	.ascii "#"
      00916C 09                   11929 	.db 0x09
      00916D 6D 6F 64 75 6C 75 73 11930 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      009183 0D                   11931 	.db 0x0d
      009184 0A                   11932 	.db 0x0a
      009185 00                   11933 	.db 0x00
                                  11934 	.area CSEG    (CODE)
                                  11935 	.area CONST   (CODE)
      009186                      11936 ___str_42:
      009186 26                   11937 	.ascii "&"
      009187 09                   11938 	.db 0x09
      009188 61 6E 64 20 74 6F 70 11939 	.ascii "and top 2"
             20 32
      009191 0D                   11940 	.db 0x0d
      009192 0A                   11941 	.db 0x0a
      009193 00                   11942 	.db 0x00
                                  11943 	.area CSEG    (CODE)
                                  11944 	.area CONST   (CODE)
      009194                      11945 ___str_43:
      009194 7C                   11946 	.ascii "|"
      009195 09                   11947 	.db 0x09
      009196 6F 72 20 74 6F 70 20 11948 	.ascii "or top 2"
             32
      00919E 0D                   11949 	.db 0x0d
      00919F 0A                   11950 	.db 0x0a
      0091A0 00                   11951 	.db 0x00
                                  11952 	.area CSEG    (CODE)
                                  11953 	.area CONST   (CODE)
      0091A1                      11954 ___str_44:
      0091A1 5E                   11955 	.ascii "^"
      0091A2 09                   11956 	.db 0x09
      0091A3 78 6F 72 20 74 6F 70 11957 	.ascii "xor top 2"
             20 32
      0091AC 0D                   11958 	.db 0x0d
      0091AD 0A                   11959 	.db 0x0a
      0091AE 00                   11960 	.db 0x00
                                  11961 	.area CSEG    (CODE)
                                  11962 	.area CONST   (CODE)
      0091AF                      11963 ___str_45:
      0091AF 3E                   11964 	.ascii ">"
      0091B0 09                   11965 	.db 0x09
      0091B1 73 68 69 66 74 20 72 11966 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      0091C2 0D                   11967 	.db 0x0d
      0091C3 0A                   11968 	.db 0x0a
      0091C4 00                   11969 	.db 0x00
                                  11970 	.area CSEG    (CODE)
                                  11971 	.area CONST   (CODE)
      0091C5                      11972 ___str_46:
      0091C5 5D                   11973 	.ascii "]"
      0091C6 09                   11974 	.db 0x09
      0091C7 61 72 69 74 68 6D 65 11975 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      0091E3 0D                   11976 	.db 0x0d
      0091E4 0A                   11977 	.db 0x0a
      0091E5 00                   11978 	.db 0x00
                                  11979 	.area CSEG    (CODE)
                                  11980 	.area CONST   (CODE)
      0091E6                      11981 ___str_47:
      0091E6 3C                   11982 	.ascii "<"
      0091E7 09                   11983 	.db 0x09
      0091E8 73 68 69 66 74 20 6C 11984 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      0091F8 0D                   11985 	.db 0x0d
      0091F9 0A                   11986 	.db 0x0a
      0091FA 00                   11987 	.db 0x00
                                  11988 	.area CSEG    (CODE)
                                  11989 	.area CONST   (CODE)
      0091FB                      11990 ___str_48:
      0091FB 7E                   11991 	.ascii "~"
      0091FC 09                   11992 	.db 0x09
      0091FD 62 69 74 77 69 73 65 11993 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      00920C 0D                   11994 	.db 0x0d
      00920D 0A                   11995 	.db 0x0a
      00920E 00                   11996 	.db 0x00
                                  11997 	.area CSEG    (CODE)
                                  11998 	.area CONST   (CODE)
      00920F                      11999 ___str_49:
      00920F 73                   12000 	.ascii "s"
      009210 09                   12001 	.db 0x09
      009211 73 74 61 74 75 73    12002 	.ascii "status"
      009217 0D                   12003 	.db 0x0d
      009218 0A                   12004 	.db 0x0a
      009219 00                   12005 	.db 0x00
                                  12006 	.area CSEG    (CODE)
                                  12007 	.area CONST   (CODE)
      00921A                      12008 ___str_50:
      00921A 3F                   12009 	.ascii "?"
      00921B 09                   12010 	.db 0x09
      00921C 68 65 6C 70          12011 	.ascii "help"
      009220 0D                   12012 	.db 0x0d
      009221 0A                   12013 	.db 0x0a
      009222 00                   12014 	.db 0x00
                                  12015 	.area CSEG    (CODE)
                                  12016 	.area CONST   (CODE)
      009223                      12017 ___str_51:
      009223 71                   12018 	.ascii "q"
      009224 09                   12019 	.db 0x09
      009225 71 75 69 74          12020 	.ascii "quit"
      009229 0D                   12021 	.db 0x0d
      00922A 0A                   12022 	.db 0x0a
      00922B 00                   12023 	.db 0x00
                                  12024 	.area CSEG    (CODE)
                                  12025 	.area CONST   (CODE)
      00922C                      12026 ___str_52:
      00922C 54 45 52 4D          12027 	.ascii "TERM"
      009230 0D                   12028 	.db 0x0d
      009231 0A                   12029 	.db 0x0a
      009232 00                   12030 	.db 0x00
                                  12031 	.area CSEG    (CODE)
                                  12032 	.area XINIT   (CODE)
      009244                      12033 __xinit__deltas:
      009244 00 00                12034 	.byte #0x00, #0x00	;  0
      009246 00 00                12035 	.byte #0x00, #0x00	;  0
      009248 00 00                12036 	.byte #0x00, #0x00	;  0
      00924A 00 00                12037 	.byte #0x00,#0x00
      00924C 00 00                12038 	.byte #0x00,#0x00
      00924E 00 00                12039 	.byte #0x00, #0x00	;  0
      009250 01 00                12040 	.byte #0x01, #0x00	;  1
      009252 02 00                12041 	.byte #0x02, #0x00	;  2
      009254 00 00                12042 	.byte #0x00,#0x00
      009256 70 2B                12043 	.byte _accumulate, (_accumulate >> 8)
      009258 00 00                12044 	.byte #0x00, #0x00	;  0
      00925A 02 00                12045 	.byte #0x02, #0x00	;  2
      00925C 01 00                12046 	.byte #0x01, #0x00	;  1
      00925E 00 00                12047 	.byte #0x00,#0x00
      009260 7E 34                12048 	.byte _operator, (_operator >> 8)
      009262 01 00                12049 	.byte #0x01, #0x00	;  1
      009264 00 00                12050 	.byte #0x00, #0x00	;  0
      009266 00 00                12051 	.byte #0x00, #0x00	;  0
      009268 00 00                12052 	.byte #0x00,#0x00
      00926A 00 00                12053 	.byte #0x00,#0x00
      00926C 01 00                12054 	.byte #0x01, #0x00	;  1
      00926E 02 00                12055 	.byte #0x02, #0x00	;  2
      009270 01 00                12056 	.byte #0x01, #0x00	;  1
      009272 00 00                12057 	.byte #0x00,#0x00
      009274 7E 34                12058 	.byte _operator, (_operator >> 8)
      009276 01 00                12059 	.byte #0x01, #0x00	;  1
      009278 01 00                12060 	.byte #0x01, #0x00	;  1
      00927A 02 00                12061 	.byte #0x02, #0x00	;  2
      00927C 00 00                12062 	.byte #0x00,#0x00
      00927E 70 2B                12063 	.byte _accumulate, (_accumulate >> 8)
      009280 02 00                12064 	.byte #0x02, #0x00	;  2
      009282 00 00                12065 	.byte #0x00, #0x00	;  0
      009284 00 00                12066 	.byte #0x00, #0x00	;  0
      009286 00 00                12067 	.byte #0x00,#0x00
      009288 DE 59                12068 	.byte _push_acc, (_push_acc >> 8)
      00928A 02 00                12069 	.byte #0x02, #0x00	;  2
      00928C 07 00                12070 	.byte #0x07, #0x00	;  7
      00928E 00 00                12071 	.byte #0x00, #0x00	;  0
      009290 00 00                12072 	.byte #0x00,#0x00
      009292 0D 5B                12073 	.byte _reset_acc, (_reset_acc >> 8)
      009294 02 00                12074 	.byte #0x02, #0x00	;  2
      009296 01 00                12075 	.byte #0x01, #0x00	;  1
      009298 02 00                12076 	.byte #0x02, #0x00	;  2
      00929A 00 00                12077 	.byte #0x00,#0x00
      00929C 70 2B                12078 	.byte _accumulate, (_accumulate >> 8)
      00929E 02 00                12079 	.byte #0x02, #0x00	;  2
      0092A0 02 00                12080 	.byte #0x02, #0x00	;  2
      0092A2 01 00                12081 	.byte #0x01, #0x00	;  1
      0092A4 00 00                12082 	.byte #0x00,#0x00
      0092A6 DE 59                12083 	.byte _push_acc, (_push_acc >> 8)
      0092A8 FF 7F                12084 	.byte #0xff, #0x7f	;  32767
      0092AA 06 00                12085 	.byte #0x06, #0x00	;  6
      0092AC FF 7F                12086 	.byte #0xff, #0x7f	;  32767
      0092AE 00 00                12087 	.byte #0x00,#0x00
      0092B0 0D 5B                12088 	.byte _reset_acc, (_reset_acc >> 8)
      0092B2 FF 7F                12089 	.byte #0xff, #0x7f	;  32767
      0092B4 07 00                12090 	.byte #0x07, #0x00	;  7
      0092B6 FF 7F                12091 	.byte #0xff, #0x7f	;  32767
      0092B8 00 00                12092 	.byte #0x00,#0x00
      0092BA 00 00                12093 	.byte #0x00,#0x00
      0092BC FF 7F                12094 	.byte #0xff, #0x7f	;  32767
      0092BE 05 00                12095 	.byte #0x05, #0x00	;  5
      0092C0 FF 7F                12096 	.byte #0xff, #0x7f	;  32767
      0092C2 00 00                12097 	.byte #0x00,#0x00
      0092C4 77 5B                12098 	.byte _reset_base, (_reset_base >> 8)
      0092C6 FF 7F                12099 	.byte #0xff, #0x7f	;  32767
      0092C8 03 00                12100 	.byte #0x03, #0x00	;  3
      0092CA FF 7F                12101 	.byte #0xff, #0x7f	;  32767
      0092CC 00 00                12102 	.byte #0x00,#0x00
      0092CE F5 5B                12103 	.byte _status, (_status >> 8)
      0092D0 FF 7F                12104 	.byte #0xff, #0x7f	;  32767
      0092D2 04 00                12105 	.byte #0x04, #0x00	;  4
      0092D4 FF 7F                12106 	.byte #0xff, #0x7f	;  32767
      0092D6 00 00                12107 	.byte #0x00,#0x00
      0092D8 D0 64                12108 	.byte _help, (_help >> 8)
      0092DA FF 7F                12109 	.byte #0xff, #0x7f	;  32767
      0092DC 08 00                12110 	.byte #0x08, #0x00	;  8
      0092DE 03 00                12111 	.byte #0x03, #0x00	;  3
      0092E0 00 00                12112 	.byte #0x00,#0x00
      0092E2 E1 2C                12113 	.byte _dump_pop, (_dump_pop >> 8)
      0092E4 00 80                12114 	.byte #0x00, #0x80	; -32768
      0092E6 00 80                12115 	.byte #0x00, #0x80	; -32768
      0092E8 00 80                12116 	.byte #0x00, #0x80	; -32768
      0092EA 00 00                12117 	.byte #0x00,#0x00
      0092EC 00 00                12118 	.byte #0x00,#0x00
                                  12119 	.area CABS    (ABS,CODE)
