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
                                     12 	.globl _getchar_poll
                                     13 	.globl _state_exec
                                     14 	.globl _state_init
                                     15 	.globl _stack_iter_peek
                                     16 	.globl _stack_peek2
                                     17 	.globl _stack_peek
                                     18 	.globl _stack_pop
                                     19 	.globl _stack_push
                                     20 	.globl _stack_init
                                     21 	.globl _isxdigit
                                     22 	.globl _printf
                                     23 	.globl _strtol
                                     24 	.globl _CY
                                     25 	.globl _AC
                                     26 	.globl _F0
                                     27 	.globl _RS1
                                     28 	.globl _RS0
                                     29 	.globl _OV
                                     30 	.globl _FL
                                     31 	.globl _P
                                     32 	.globl _TF2
                                     33 	.globl _EXF2
                                     34 	.globl _RCLK
                                     35 	.globl _TCLK
                                     36 	.globl _EXEN2
                                     37 	.globl _TR2
                                     38 	.globl _C_T2
                                     39 	.globl _CP_RL2
                                     40 	.globl _T2CON_7
                                     41 	.globl _T2CON_6
                                     42 	.globl _T2CON_5
                                     43 	.globl _T2CON_4
                                     44 	.globl _T2CON_3
                                     45 	.globl _T2CON_2
                                     46 	.globl _T2CON_1
                                     47 	.globl _T2CON_0
                                     48 	.globl _PT2
                                     49 	.globl _PS
                                     50 	.globl _PT1
                                     51 	.globl _PX1
                                     52 	.globl _PT0
                                     53 	.globl _PX0
                                     54 	.globl _RD
                                     55 	.globl _WR
                                     56 	.globl _T1
                                     57 	.globl _T0
                                     58 	.globl _INT1
                                     59 	.globl _INT0
                                     60 	.globl _TXD
                                     61 	.globl _RXD
                                     62 	.globl _P3_7
                                     63 	.globl _P3_6
                                     64 	.globl _P3_5
                                     65 	.globl _P3_4
                                     66 	.globl _P3_3
                                     67 	.globl _P3_2
                                     68 	.globl _P3_1
                                     69 	.globl _P3_0
                                     70 	.globl _EA
                                     71 	.globl _ET2
                                     72 	.globl _ES
                                     73 	.globl _ET1
                                     74 	.globl _EX1
                                     75 	.globl _ET0
                                     76 	.globl _EX0
                                     77 	.globl _P2_7
                                     78 	.globl _P2_6
                                     79 	.globl _P2_5
                                     80 	.globl _P2_4
                                     81 	.globl _P2_3
                                     82 	.globl _P2_2
                                     83 	.globl _P2_1
                                     84 	.globl _P2_0
                                     85 	.globl _SM0
                                     86 	.globl _SM1
                                     87 	.globl _SM2
                                     88 	.globl _REN
                                     89 	.globl _TB8
                                     90 	.globl _RB8
                                     91 	.globl _TI
                                     92 	.globl _RI
                                     93 	.globl _T2EX
                                     94 	.globl _T2
                                     95 	.globl _P1_7
                                     96 	.globl _P1_6
                                     97 	.globl _P1_5
                                     98 	.globl _P1_4
                                     99 	.globl _P1_3
                                    100 	.globl _P1_2
                                    101 	.globl _P1_1
                                    102 	.globl _P1_0
                                    103 	.globl _TF1
                                    104 	.globl _TR1
                                    105 	.globl _TF0
                                    106 	.globl _TR0
                                    107 	.globl _IE1
                                    108 	.globl _IT1
                                    109 	.globl _IE0
                                    110 	.globl _IT0
                                    111 	.globl _P0_7
                                    112 	.globl _P0_6
                                    113 	.globl _P0_5
                                    114 	.globl _P0_4
                                    115 	.globl _P0_3
                                    116 	.globl _P0_2
                                    117 	.globl _P0_1
                                    118 	.globl _P0_0
                                    119 	.globl _B
                                    120 	.globl _A
                                    121 	.globl _ACC
                                    122 	.globl _PSW
                                    123 	.globl _TH2
                                    124 	.globl _TL2
                                    125 	.globl _RCAP2H
                                    126 	.globl _RCAP2L
                                    127 	.globl _T2MOD
                                    128 	.globl _T2CON
                                    129 	.globl _IP
                                    130 	.globl _P3
                                    131 	.globl _IE
                                    132 	.globl _P2
                                    133 	.globl _SBUF
                                    134 	.globl _SCON
                                    135 	.globl _P1
                                    136 	.globl _TH1
                                    137 	.globl _TH0
                                    138 	.globl _TL1
                                    139 	.globl _TL0
                                    140 	.globl _TMOD
                                    141 	.globl _TCON
                                    142 	.globl _PCON
                                    143 	.globl _DPH
                                    144 	.globl _DPL
                                    145 	.globl _SP
                                    146 	.globl _P0
                                    147 	.globl _giant
                                    148 	.globl _putchar
                                    149 	.globl _getchar
                                    150 ;--------------------------------------------------------
                                    151 ; special function registers
                                    152 ;--------------------------------------------------------
                                    153 	.area RSEG    (ABS,DATA)
      000000                        154 	.org 0x0000
                           000080   155 _P0	=	0x0080
                           000081   156 _SP	=	0x0081
                           000082   157 _DPL	=	0x0082
                           000083   158 _DPH	=	0x0083
                           000087   159 _PCON	=	0x0087
                           000088   160 _TCON	=	0x0088
                           000089   161 _TMOD	=	0x0089
                           00008A   162 _TL0	=	0x008a
                           00008B   163 _TL1	=	0x008b
                           00008C   164 _TH0	=	0x008c
                           00008D   165 _TH1	=	0x008d
                           000090   166 _P1	=	0x0090
                           000098   167 _SCON	=	0x0098
                           000099   168 _SBUF	=	0x0099
                           0000A0   169 _P2	=	0x00a0
                           0000A8   170 _IE	=	0x00a8
                           0000B0   171 _P3	=	0x00b0
                           0000B8   172 _IP	=	0x00b8
                           0000C8   173 _T2CON	=	0x00c8
                           0000C9   174 _T2MOD	=	0x00c9
                           0000CA   175 _RCAP2L	=	0x00ca
                           0000CB   176 _RCAP2H	=	0x00cb
                           0000CC   177 _TL2	=	0x00cc
                           0000CD   178 _TH2	=	0x00cd
                           0000D0   179 _PSW	=	0x00d0
                           0000E0   180 _ACC	=	0x00e0
                           0000E0   181 _A	=	0x00e0
                           0000F0   182 _B	=	0x00f0
                                    183 ;--------------------------------------------------------
                                    184 ; special function bits
                                    185 ;--------------------------------------------------------
                                    186 	.area RSEG    (ABS,DATA)
      000000                        187 	.org 0x0000
                           000080   188 _P0_0	=	0x0080
                           000081   189 _P0_1	=	0x0081
                           000082   190 _P0_2	=	0x0082
                           000083   191 _P0_3	=	0x0083
                           000084   192 _P0_4	=	0x0084
                           000085   193 _P0_5	=	0x0085
                           000086   194 _P0_6	=	0x0086
                           000087   195 _P0_7	=	0x0087
                           000088   196 _IT0	=	0x0088
                           000089   197 _IE0	=	0x0089
                           00008A   198 _IT1	=	0x008a
                           00008B   199 _IE1	=	0x008b
                           00008C   200 _TR0	=	0x008c
                           00008D   201 _TF0	=	0x008d
                           00008E   202 _TR1	=	0x008e
                           00008F   203 _TF1	=	0x008f
                           000090   204 _P1_0	=	0x0090
                           000091   205 _P1_1	=	0x0091
                           000092   206 _P1_2	=	0x0092
                           000093   207 _P1_3	=	0x0093
                           000094   208 _P1_4	=	0x0094
                           000095   209 _P1_5	=	0x0095
                           000096   210 _P1_6	=	0x0096
                           000097   211 _P1_7	=	0x0097
                           000090   212 _T2	=	0x0090
                           000091   213 _T2EX	=	0x0091
                           000098   214 _RI	=	0x0098
                           000099   215 _TI	=	0x0099
                           00009A   216 _RB8	=	0x009a
                           00009B   217 _TB8	=	0x009b
                           00009C   218 _REN	=	0x009c
                           00009D   219 _SM2	=	0x009d
                           00009E   220 _SM1	=	0x009e
                           00009F   221 _SM0	=	0x009f
                           0000A0   222 _P2_0	=	0x00a0
                           0000A1   223 _P2_1	=	0x00a1
                           0000A2   224 _P2_2	=	0x00a2
                           0000A3   225 _P2_3	=	0x00a3
                           0000A4   226 _P2_4	=	0x00a4
                           0000A5   227 _P2_5	=	0x00a5
                           0000A6   228 _P2_6	=	0x00a6
                           0000A7   229 _P2_7	=	0x00a7
                           0000A8   230 _EX0	=	0x00a8
                           0000A9   231 _ET0	=	0x00a9
                           0000AA   232 _EX1	=	0x00aa
                           0000AB   233 _ET1	=	0x00ab
                           0000AC   234 _ES	=	0x00ac
                           0000AD   235 _ET2	=	0x00ad
                           0000AF   236 _EA	=	0x00af
                           0000B0   237 _P3_0	=	0x00b0
                           0000B1   238 _P3_1	=	0x00b1
                           0000B2   239 _P3_2	=	0x00b2
                           0000B3   240 _P3_3	=	0x00b3
                           0000B4   241 _P3_4	=	0x00b4
                           0000B5   242 _P3_5	=	0x00b5
                           0000B6   243 _P3_6	=	0x00b6
                           0000B7   244 _P3_7	=	0x00b7
                           0000B0   245 _RXD	=	0x00b0
                           0000B1   246 _TXD	=	0x00b1
                           0000B2   247 _INT0	=	0x00b2
                           0000B3   248 _INT1	=	0x00b3
                           0000B4   249 _T0	=	0x00b4
                           0000B5   250 _T1	=	0x00b5
                           0000B6   251 _WR	=	0x00b6
                           0000B7   252 _RD	=	0x00b7
                           0000B8   253 _PX0	=	0x00b8
                           0000B9   254 _PT0	=	0x00b9
                           0000BA   255 _PX1	=	0x00ba
                           0000BB   256 _PT1	=	0x00bb
                           0000BC   257 _PS	=	0x00bc
                           0000BD   258 _PT2	=	0x00bd
                           0000C8   259 _T2CON_0	=	0x00c8
                           0000C9   260 _T2CON_1	=	0x00c9
                           0000CA   261 _T2CON_2	=	0x00ca
                           0000CB   262 _T2CON_3	=	0x00cb
                           0000CC   263 _T2CON_4	=	0x00cc
                           0000CD   264 _T2CON_5	=	0x00cd
                           0000CE   265 _T2CON_6	=	0x00ce
                           0000CF   266 _T2CON_7	=	0x00cf
                           0000C8   267 _CP_RL2	=	0x00c8
                           0000C9   268 _C_T2	=	0x00c9
                           0000CA   269 _TR2	=	0x00ca
                           0000CB   270 _EXEN2	=	0x00cb
                           0000CC   271 _TCLK	=	0x00cc
                           0000CD   272 _RCLK	=	0x00cd
                           0000CE   273 _EXF2	=	0x00ce
                           0000CF   274 _TF2	=	0x00cf
                           0000D0   275 _P	=	0x00d0
                           0000D1   276 _FL	=	0x00d1
                           0000D2   277 _OV	=	0x00d2
                           0000D3   278 _RS0	=	0x00d3
                           0000D4   279 _RS1	=	0x00d4
                           0000D5   280 _F0	=	0x00d5
                           0000D6   281 _AC	=	0x00d6
                           0000D7   282 _CY	=	0x00d7
                                    283 ;--------------------------------------------------------
                                    284 ; overlayable register banks
                                    285 ;--------------------------------------------------------
                                    286 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        287 	.ds 8
                                    288 ;--------------------------------------------------------
                                    289 ; internal ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area DSEG    (DATA)
                                    292 ;--------------------------------------------------------
                                    293 ; overlayable items in internal ram 
                                    294 ;--------------------------------------------------------
                                    295 ;--------------------------------------------------------
                                    296 ; Stack segment in internal ram 
                                    297 ;--------------------------------------------------------
                                    298 	.area	SSEG
      000021                        299 __start__stack:
      000021                        300 	.ds	1
                                    301 
                                    302 ;--------------------------------------------------------
                                    303 ; indirectly addressable internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area ISEG    (DATA)
      000009                        306 _giant::
      000009                        307 	.ds 1
                                    308 ;--------------------------------------------------------
                                    309 ; absolute internal ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area IABS    (ABS,DATA)
                                    312 	.area IABS    (ABS,DATA)
                                    313 ;--------------------------------------------------------
                                    314 ; bit data
                                    315 ;--------------------------------------------------------
                                    316 	.area BSEG    (BIT)
                                    317 ;--------------------------------------------------------
                                    318 ; paged external ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area PSEG    (PAG,XDATA)
                                    321 ;--------------------------------------------------------
                                    322 ; external ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area XSEG    (XDATA)
      009000                        325 _s:
      009000                        326 	.ds 12
      00900C                        327 _c:
      00900C                        328 	.ds 16407
                                    329 ;--------------------------------------------------------
                                    330 ; absolute external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XABS    (ABS,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external initialized ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XISEG   (XDATA)
      00D025                        337 _deltas:
      00D025                        338 	.ds 170
                                    339 	.area HOME    (CODE)
                                    340 	.area GSINIT0 (CODE)
                                    341 	.area GSINIT1 (CODE)
                                    342 	.area GSINIT2 (CODE)
                                    343 	.area GSINIT3 (CODE)
                                    344 	.area GSINIT4 (CODE)
                                    345 	.area GSINIT5 (CODE)
                                    346 	.area GSINIT  (CODE)
                                    347 	.area GSFINAL (CODE)
                                    348 	.area CSEG    (CODE)
                                    349 ;--------------------------------------------------------
                                    350 ; interrupt vector 
                                    351 ;--------------------------------------------------------
                                    352 	.area HOME    (CODE)
      002000                        353 __interrupt_vect:
      002000 02 20 34         [24]  354 	ljmp	__sdcc_gsinit_startup
                                    355 ;--------------------------------------------------------
                                    356 ; global & static initialisations
                                    357 ;--------------------------------------------------------
                                    358 	.area HOME    (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 	.area GSFINAL (CODE)
                                    361 	.area GSINIT  (CODE)
                                    362 	.globl __sdcc_gsinit_startup
                                    363 	.globl __sdcc_program_startup
                                    364 	.globl __start__stack
                                    365 	.globl __mcs51_genXINIT
                                    366 	.globl __mcs51_genXRAMCLEAR
                                    367 	.globl __mcs51_genRAMCLEAR
                                    368 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  369 	ljmp	__sdcc_program_startup
                                    370 ;--------------------------------------------------------
                                    371 ; Home
                                    372 ;--------------------------------------------------------
                                    373 	.area HOME    (CODE)
                                    374 	.area HOME    (CODE)
      002003                        375 __sdcc_program_startup:
      002003 02 65 9A         [24]  376 	ljmp	_main
                                    377 ;	return from main will return to caller
                                    378 ;--------------------------------------------------------
                                    379 ; code
                                    380 ;--------------------------------------------------------
                                    381 	.area CSEG    (CODE)
                                    382 ;------------------------------------------------------------
                                    383 ;Allocation info for local variables in function 'putchar'
                                    384 ;------------------------------------------------------------
                                    385 ;c                         Allocated to registers 
                                    386 ;------------------------------------------------------------
                                    387 ;	calc.c:18: int putchar(int c) __naked {
                                    388 ;	-----------------------------------------
                                    389 ;	 function putchar
                                    390 ;	-----------------------------------------
      002B70                        391 _putchar:
                                    392 ;	naked function: no prologue.
                                    393 ;	calc.c:23: __endasm;
      002B70 E5 82            [12]  394 	mov	a, dpl
      002B72 02 00 30         [24]  395 	ljmp	0x0030
                                    396 ;	calc.c:24: }
                                    397 ;	naked function: no epilogue.
                                    398 ;------------------------------------------------------------
                                    399 ;Allocation info for local variables in function 'getchar'
                                    400 ;------------------------------------------------------------
                                    401 ;	calc.c:26: int getchar(void) __naked {
                                    402 ;	-----------------------------------------
                                    403 ;	 function getchar
                                    404 ;	-----------------------------------------
      002B75                        405 _getchar:
                                    406 ;	naked function: no prologue.
                                    407 ;	calc.c:32: __endasm;
      002B75 12 00 32         [24]  408 	lcall	0x0032
      002B78 F5 82            [12]  409 	mov	dpl, a
      002B7A 75 83 00         [24]  410 	mov	dph, #0
      002B7D 22               [24]  411 	ret
                                    412 ;	calc.c:33: }
                                    413 ;	naked function: no epilogue.
                                    414 ;------------------------------------------------------------
                                    415 ;Allocation info for local variables in function 'getchar_poll'
                                    416 ;------------------------------------------------------------
                                    417 ;	calc.c:35: int getchar_poll(void) __naked {
                                    418 ;	-----------------------------------------
                                    419 ;	 function getchar_poll
                                    420 ;	-----------------------------------------
      002B7E                        421 _getchar_poll:
                                    422 ;	naked function: no prologue.
                                    423 ;	calc.c:47: __endasm;
      002B7E 74 FF            [12]  424 	mov	a, #0xff
      002B80 F5 F0            [12]  425 	mov	b, a
      002B82 30 98 07         [24]  426 	jnb	ri, nochar
      002B85 C2 98            [12]  427 	clr	ri
      002B87 E5 99            [12]  428 	mov	a, sbuf
      002B89 75 F0 00         [24]  429 	mov	b, #0
      002B8C                        430 	nochar:
      002B8C F5 82            [12]  431 	mov	dpl, a
      002B8E 85 F0 83         [24]  432 	mov	dph, b
      002B91 22               [24]  433 	ret
                                    434 ;	calc.c:48: }
                                    435 ;	naked function: no epilogue.
                                    436 ;------------------------------------------------------------
                                    437 ;Allocation info for local variables in function 'accumulate'
                                    438 ;------------------------------------------------------------
                                    439 ;delta                     Allocated to stack - _bp -5
                                    440 ;_ctx                      Allocated to registers r5 r6 r7 
                                    441 ;ctx                       Allocated to stack - _bp +8
                                    442 ;d                         Allocated to stack - _bp +11
                                    443 ;sloc0                     Allocated to stack - _bp +1
                                    444 ;sloc1                     Allocated to stack - _bp +4
                                    445 ;------------------------------------------------------------
                                    446 ;	calc.c:74: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
                                    447 ;	-----------------------------------------
                                    448 ;	 function accumulate
                                    449 ;	-----------------------------------------
      002B92                        450 _accumulate:
                           000007   451 	ar7 = 0x07
                           000006   452 	ar6 = 0x06
                           000005   453 	ar5 = 0x05
                           000004   454 	ar4 = 0x04
                           000003   455 	ar3 = 0x03
                           000002   456 	ar2 = 0x02
                           000001   457 	ar1 = 0x01
                           000000   458 	ar0 = 0x00
      002B92 C0 08            [24]  459 	push	_bp
      002B94 E5 81            [12]  460 	mov	a,sp
      002B96 F5 08            [12]  461 	mov	_bp,a
      002B98 24 0E            [12]  462 	add	a,#0x0e
      002B9A F5 81            [12]  463 	mov	sp,a
      002B9C AD 82            [24]  464 	mov	r5,dpl
      002B9E AE 83            [24]  465 	mov	r6,dph
      002BA0 AF F0            [24]  466 	mov	r7,b
                                    467 ;	calc.c:75: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002BA2 E5 08            [12]  468 	mov	a,_bp
      002BA4 24 08            [12]  469 	add	a,#0x08
      002BA6 F8               [12]  470 	mov	r0,a
      002BA7 A6 05            [24]  471 	mov	@r0,ar5
      002BA9 08               [12]  472 	inc	r0
      002BAA A6 06            [24]  473 	mov	@r0,ar6
      002BAC 08               [12]  474 	inc	r0
      002BAD A6 07            [24]  475 	mov	@r0,ar7
                                    476 ;	calc.c:80: if (!ctx->acc_valid) {
      002BAF E5 08            [12]  477 	mov	a,_bp
      002BB1 24 08            [12]  478 	add	a,#0x08
      002BB3 F8               [12]  479 	mov	r0,a
      002BB4 74 06            [12]  480 	mov	a,#0x06
      002BB6 26               [12]  481 	add	a,@r0
      002BB7 FA               [12]  482 	mov	r2,a
      002BB8 E4               [12]  483 	clr	a
      002BB9 08               [12]  484 	inc	r0
      002BBA 36               [12]  485 	addc	a,@r0
      002BBB FB               [12]  486 	mov	r3,a
      002BBC 08               [12]  487 	inc	r0
      002BBD 86 04            [24]  488 	mov	ar4,@r0
      002BBF 8A 82            [24]  489 	mov	dpl,r2
      002BC1 8B 83            [24]  490 	mov	dph,r3
      002BC3 8C F0            [24]  491 	mov	b,r4
      002BC5 12 70 CC         [24]  492 	lcall	__gptrget
      002BC8 70 31            [24]  493 	jnz	00102$
                                    494 ;	calc.c:81: ctx->acc_valid = 1;
      002BCA 8A 82            [24]  495 	mov	dpl,r2
      002BCC 8B 83            [24]  496 	mov	dph,r3
      002BCE 8C F0            [24]  497 	mov	b,r4
      002BD0 74 01            [12]  498 	mov	a,#0x01
      002BD2 12 6C 51         [24]  499 	lcall	__gptrput
                                    500 ;	calc.c:82: ctx->acc = 0l;
      002BD5 E5 08            [12]  501 	mov	a,_bp
      002BD7 24 08            [12]  502 	add	a,#0x08
      002BD9 F8               [12]  503 	mov	r0,a
      002BDA 74 02            [12]  504 	mov	a,#0x02
      002BDC 26               [12]  505 	add	a,@r0
      002BDD FA               [12]  506 	mov	r2,a
      002BDE E4               [12]  507 	clr	a
      002BDF 08               [12]  508 	inc	r0
      002BE0 36               [12]  509 	addc	a,@r0
      002BE1 FB               [12]  510 	mov	r3,a
      002BE2 08               [12]  511 	inc	r0
      002BE3 86 04            [24]  512 	mov	ar4,@r0
      002BE5 8A 82            [24]  513 	mov	dpl,r2
      002BE7 8B 83            [24]  514 	mov	dph,r3
      002BE9 8C F0            [24]  515 	mov	b,r4
      002BEB E4               [12]  516 	clr	a
      002BEC 12 6C 51         [24]  517 	lcall	__gptrput
      002BEF A3               [24]  518 	inc	dptr
      002BF0 12 6C 51         [24]  519 	lcall	__gptrput
      002BF3 A3               [24]  520 	inc	dptr
      002BF4 12 6C 51         [24]  521 	lcall	__gptrput
      002BF7 A3               [24]  522 	inc	dptr
      002BF8 12 6C 51         [24]  523 	lcall	__gptrput
      002BFB                        524 00102$:
                                    525 ;	calc.c:85: d = strtol(ctx->digit, NULL, ctx->base);
      002BFB E5 08            [12]  526 	mov	a,_bp
      002BFD 24 08            [12]  527 	add	a,#0x08
      002BFF F8               [12]  528 	mov	r0,a
      002C00 86 82            [24]  529 	mov	dpl,@r0
      002C02 08               [12]  530 	inc	r0
      002C03 86 83            [24]  531 	mov	dph,@r0
      002C05 08               [12]  532 	inc	r0
      002C06 86 F0            [24]  533 	mov	b,@r0
      002C08 12 70 CC         [24]  534 	lcall	__gptrget
      002C0B FB               [12]  535 	mov	r3,a
      002C0C A3               [24]  536 	inc	dptr
      002C0D 12 70 CC         [24]  537 	lcall	__gptrget
      002C10 FC               [12]  538 	mov	r4,a
      002C11 E5 08            [12]  539 	mov	a,_bp
      002C13 24 08            [12]  540 	add	a,#0x08
      002C15 F8               [12]  541 	mov	r0,a
      002C16 74 07            [12]  542 	mov	a,#0x07
      002C18 26               [12]  543 	add	a,@r0
      002C19 FA               [12]  544 	mov	r2,a
      002C1A E4               [12]  545 	clr	a
      002C1B 08               [12]  546 	inc	r0
      002C1C 36               [12]  547 	addc	a,@r0
      002C1D FE               [12]  548 	mov	r6,a
      002C1E 08               [12]  549 	inc	r0
      002C1F 86 07            [24]  550 	mov	ar7,@r0
      002C21 C0 03            [24]  551 	push	ar3
      002C23 C0 04            [24]  552 	push	ar4
      002C25 E4               [12]  553 	clr	a
      002C26 C0 E0            [24]  554 	push	acc
      002C28 C0 E0            [24]  555 	push	acc
      002C2A C0 E0            [24]  556 	push	acc
      002C2C 8A 82            [24]  557 	mov	dpl,r2
      002C2E 8E 83            [24]  558 	mov	dph,r6
      002C30 8F F0            [24]  559 	mov	b,r7
      002C32 12 6A 13         [24]  560 	lcall	_strtol
      002C35 C8               [12]  561 	xch	a,r0
      002C36 E5 08            [12]  562 	mov	a,_bp
      002C38 24 0B            [12]  563 	add	a,#0x0b
      002C3A C8               [12]  564 	xch	a,r0
      002C3B A6 82            [24]  565 	mov	@r0,dpl
      002C3D 08               [12]  566 	inc	r0
      002C3E A6 83            [24]  567 	mov	@r0,dph
      002C40 08               [12]  568 	inc	r0
      002C41 A6 F0            [24]  569 	mov	@r0,b
      002C43 08               [12]  570 	inc	r0
      002C44 F6               [12]  571 	mov	@r0,a
      002C45 E5 81            [12]  572 	mov	a,sp
      002C47 24 FB            [12]  573 	add	a,#0xfb
      002C49 F5 81            [12]  574 	mov	sp,a
                                    575 ;	calc.c:86: ctx->acc = ctx->acc * (long)ctx->base + d;
      002C4B E5 08            [12]  576 	mov	a,_bp
      002C4D 24 08            [12]  577 	add	a,#0x08
      002C4F F8               [12]  578 	mov	r0,a
      002C50 A9 08            [24]  579 	mov	r1,_bp
      002C52 09               [12]  580 	inc	r1
      002C53 74 02            [12]  581 	mov	a,#0x02
      002C55 26               [12]  582 	add	a,@r0
      002C56 F7               [12]  583 	mov	@r1,a
      002C57 E4               [12]  584 	clr	a
      002C58 08               [12]  585 	inc	r0
      002C59 36               [12]  586 	addc	a,@r0
      002C5A 09               [12]  587 	inc	r1
      002C5B F7               [12]  588 	mov	@r1,a
      002C5C 08               [12]  589 	inc	r0
      002C5D 09               [12]  590 	inc	r1
      002C5E E6               [12]  591 	mov	a,@r0
      002C5F F7               [12]  592 	mov	@r1,a
      002C60 A8 08            [24]  593 	mov	r0,_bp
      002C62 08               [12]  594 	inc	r0
      002C63 86 82            [24]  595 	mov	dpl,@r0
      002C65 08               [12]  596 	inc	r0
      002C66 86 83            [24]  597 	mov	dph,@r0
      002C68 08               [12]  598 	inc	r0
      002C69 86 F0            [24]  599 	mov	b,@r0
      002C6B E5 08            [12]  600 	mov	a,_bp
      002C6D 24 04            [12]  601 	add	a,#0x04
      002C6F F9               [12]  602 	mov	r1,a
      002C70 12 70 CC         [24]  603 	lcall	__gptrget
      002C73 F7               [12]  604 	mov	@r1,a
      002C74 A3               [24]  605 	inc	dptr
      002C75 12 70 CC         [24]  606 	lcall	__gptrget
      002C78 09               [12]  607 	inc	r1
      002C79 F7               [12]  608 	mov	@r1,a
      002C7A A3               [24]  609 	inc	dptr
      002C7B 12 70 CC         [24]  610 	lcall	__gptrget
      002C7E 09               [12]  611 	inc	r1
      002C7F F7               [12]  612 	mov	@r1,a
      002C80 A3               [24]  613 	inc	dptr
      002C81 12 70 CC         [24]  614 	lcall	__gptrget
      002C84 09               [12]  615 	inc	r1
      002C85 F7               [12]  616 	mov	@r1,a
      002C86 E5 08            [12]  617 	mov	a,_bp
      002C88 24 08            [12]  618 	add	a,#0x08
      002C8A F8               [12]  619 	mov	r0,a
      002C8B 86 82            [24]  620 	mov	dpl,@r0
      002C8D 08               [12]  621 	inc	r0
      002C8E 86 83            [24]  622 	mov	dph,@r0
      002C90 08               [12]  623 	inc	r0
      002C91 86 F0            [24]  624 	mov	b,@r0
      002C93 12 70 CC         [24]  625 	lcall	__gptrget
      002C96 FA               [12]  626 	mov	r2,a
      002C97 A3               [24]  627 	inc	dptr
      002C98 12 70 CC         [24]  628 	lcall	__gptrget
      002C9B FB               [12]  629 	mov	r3,a
      002C9C 33               [12]  630 	rlc	a
      002C9D 95 E0            [12]  631 	subb	a,acc
      002C9F FE               [12]  632 	mov	r6,a
      002CA0 FF               [12]  633 	mov	r7,a
      002CA1 C0 02            [24]  634 	push	ar2
      002CA3 C0 03            [24]  635 	push	ar3
      002CA5 C0 06            [24]  636 	push	ar6
      002CA7 C0 07            [24]  637 	push	ar7
      002CA9 E5 08            [12]  638 	mov	a,_bp
      002CAB 24 04            [12]  639 	add	a,#0x04
      002CAD F8               [12]  640 	mov	r0,a
      002CAE 86 82            [24]  641 	mov	dpl,@r0
      002CB0 08               [12]  642 	inc	r0
      002CB1 86 83            [24]  643 	mov	dph,@r0
      002CB3 08               [12]  644 	inc	r0
      002CB4 86 F0            [24]  645 	mov	b,@r0
      002CB6 08               [12]  646 	inc	r0
      002CB7 E6               [12]  647 	mov	a,@r0
      002CB8 12 74 C5         [24]  648 	lcall	__mullong
      002CBB AC 82            [24]  649 	mov	r4,dpl
      002CBD AD 83            [24]  650 	mov	r5,dph
      002CBF AE F0            [24]  651 	mov	r6,b
      002CC1 FF               [12]  652 	mov	r7,a
      002CC2 E5 81            [12]  653 	mov	a,sp
      002CC4 24 FC            [12]  654 	add	a,#0xfc
      002CC6 F5 81            [12]  655 	mov	sp,a
      002CC8 E5 08            [12]  656 	mov	a,_bp
      002CCA 24 0B            [12]  657 	add	a,#0x0b
      002CCC F8               [12]  658 	mov	r0,a
      002CCD E6               [12]  659 	mov	a,@r0
      002CCE 2C               [12]  660 	add	a,r4
      002CCF FC               [12]  661 	mov	r4,a
      002CD0 08               [12]  662 	inc	r0
      002CD1 E6               [12]  663 	mov	a,@r0
      002CD2 3D               [12]  664 	addc	a,r5
      002CD3 FD               [12]  665 	mov	r5,a
      002CD4 08               [12]  666 	inc	r0
      002CD5 E6               [12]  667 	mov	a,@r0
      002CD6 3E               [12]  668 	addc	a,r6
      002CD7 FE               [12]  669 	mov	r6,a
      002CD8 08               [12]  670 	inc	r0
      002CD9 E6               [12]  671 	mov	a,@r0
      002CDA 3F               [12]  672 	addc	a,r7
      002CDB FF               [12]  673 	mov	r7,a
      002CDC A8 08            [24]  674 	mov	r0,_bp
      002CDE 08               [12]  675 	inc	r0
      002CDF 86 82            [24]  676 	mov	dpl,@r0
      002CE1 08               [12]  677 	inc	r0
      002CE2 86 83            [24]  678 	mov	dph,@r0
      002CE4 08               [12]  679 	inc	r0
      002CE5 86 F0            [24]  680 	mov	b,@r0
      002CE7 EC               [12]  681 	mov	a,r4
      002CE8 12 6C 51         [24]  682 	lcall	__gptrput
      002CEB A3               [24]  683 	inc	dptr
      002CEC ED               [12]  684 	mov	a,r5
      002CED 12 6C 51         [24]  685 	lcall	__gptrput
      002CF0 A3               [24]  686 	inc	dptr
      002CF1 EE               [12]  687 	mov	a,r6
      002CF2 12 6C 51         [24]  688 	lcall	__gptrput
      002CF5 A3               [24]  689 	inc	dptr
      002CF6 EF               [12]  690 	mov	a,r7
      002CF7 12 6C 51         [24]  691 	lcall	__gptrput
                                    692 ;	calc.c:88: return 1;
      002CFA 90 00 01         [24]  693 	mov	dptr,#0x0001
                                    694 ;	calc.c:89: }
      002CFD 85 08 81         [24]  695 	mov	sp,_bp
      002D00 D0 08            [24]  696 	pop	_bp
      002D02 22               [24]  697 	ret
                                    698 ;------------------------------------------------------------
                                    699 ;Allocation info for local variables in function 'dump_pop'
                                    700 ;------------------------------------------------------------
                                    701 ;delta                     Allocated to stack - _bp -5
                                    702 ;_ctx                      Allocated to registers r5 r6 r7 
                                    703 ;ctx                       Allocated to stack - _bp +11
                                    704 ;d                         Allocated to stack - _bp +14
                                    705 ;r                         Allocated to registers r5 r6 
                                    706 ;__1310720003              Allocated to registers 
                                    707 ;s                         Allocated to registers r5 r6 r7 
                                    708 ;__1966080005              Allocated to registers 
                                    709 ;s                         Allocated to registers r4 r5 r6 
                                    710 ;__1966080007              Allocated to registers 
                                    711 ;s                         Allocated to registers r3 r4 r5 
                                    712 ;__1966080009              Allocated to stack - _bp +18
                                    713 ;d                         Allocated to registers r3 r4 r5 r6 
                                    714 ;__1310720001              Allocated to registers 
                                    715 ;d                         Allocated to stack - _bp +22
                                    716 ;mask                      Allocated to stack - _bp +26
                                    717 ;__1966080011              Allocated to registers 
                                    718 ;s                         Allocated to registers r3 r4 r5 
                                    719 ;__1966080013              Allocated to registers 
                                    720 ;s                         Allocated to registers r4 r5 r6 
                                    721 ;__3276800015              Allocated to registers 
                                    722 ;s                         Allocated to registers r5 r3 r2 
                                    723 ;__3276800017              Allocated to stack - _bp +18
                                    724 ;d                         Allocated to registers r2 r3 r4 r7 
                                    725 ;__1310720001              Allocated to registers 
                                    726 ;d                         Allocated to stack - _bp +22
                                    727 ;mask                      Allocated to stack - _bp +26
                                    728 ;__3276800019              Allocated to registers 
                                    729 ;s                         Allocated to registers r5 r3 r2 
                                    730 ;sloc0                     Allocated to stack - _bp +1
                                    731 ;sloc1                     Allocated to stack - _bp +2
                                    732 ;sloc2                     Allocated to stack - _bp +5
                                    733 ;sloc3                     Allocated to stack - _bp +8
                                    734 ;------------------------------------------------------------
                                    735 ;	calc.c:91: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    736 ;	-----------------------------------------
                                    737 ;	 function dump_pop
                                    738 ;	-----------------------------------------
      002D03                        739 _dump_pop:
      002D03 C0 08            [24]  740 	push	_bp
      002D05 E5 81            [12]  741 	mov	a,sp
      002D07 F5 08            [12]  742 	mov	_bp,a
      002D09 24 1D            [12]  743 	add	a,#0x1d
      002D0B F5 81            [12]  744 	mov	sp,a
      002D0D AD 82            [24]  745 	mov	r5,dpl
      002D0F AE 83            [24]  746 	mov	r6,dph
      002D11 AF F0            [24]  747 	mov	r7,b
                                    748 ;	calc.c:92: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002D13 E5 08            [12]  749 	mov	a,_bp
      002D15 24 0B            [12]  750 	add	a,#0x0b
      002D17 F8               [12]  751 	mov	r0,a
      002D18 A6 05            [24]  752 	mov	@r0,ar5
      002D1A 08               [12]  753 	inc	r0
      002D1B A6 06            [24]  754 	mov	@r0,ar6
      002D1D 08               [12]  755 	inc	r0
      002D1E A6 07            [24]  756 	mov	@r0,ar7
                                    757 ;	calc.c:96: if (delta->event == EVENT_TERM) printstr("\r\n");
      002D20 E5 08            [12]  758 	mov	a,_bp
      002D22 24 FB            [12]  759 	add	a,#0xfb
      002D24 F8               [12]  760 	mov	r0,a
      002D25 86 02            [24]  761 	mov	ar2,@r0
      002D27 08               [12]  762 	inc	r0
      002D28 86 03            [24]  763 	mov	ar3,@r0
      002D2A 08               [12]  764 	inc	r0
      002D2B 86 04            [24]  765 	mov	ar4,@r0
      002D2D E5 08            [12]  766 	mov	a,_bp
      002D2F 24 08            [12]  767 	add	a,#0x08
      002D31 F8               [12]  768 	mov	r0,a
      002D32 74 02            [12]  769 	mov	a,#0x02
      002D34 2A               [12]  770 	add	a,r2
      002D35 F6               [12]  771 	mov	@r0,a
      002D36 E4               [12]  772 	clr	a
      002D37 3B               [12]  773 	addc	a,r3
      002D38 08               [12]  774 	inc	r0
      002D39 F6               [12]  775 	mov	@r0,a
      002D3A 08               [12]  776 	inc	r0
      002D3B A6 04            [24]  777 	mov	@r0,ar4
      002D3D E5 08            [12]  778 	mov	a,_bp
      002D3F 24 08            [12]  779 	add	a,#0x08
      002D41 F8               [12]  780 	mov	r0,a
      002D42 86 82            [24]  781 	mov	dpl,@r0
      002D44 08               [12]  782 	inc	r0
      002D45 86 83            [24]  783 	mov	dph,@r0
      002D47 08               [12]  784 	inc	r0
      002D48 86 F0            [24]  785 	mov	b,@r0
      002D4A 12 70 CC         [24]  786 	lcall	__gptrget
      002D4D FE               [12]  787 	mov	r6,a
      002D4E A3               [24]  788 	inc	dptr
      002D4F 12 70 CC         [24]  789 	lcall	__gptrget
      002D52 FF               [12]  790 	mov	r7,a
      002D53 BE 08 27         [24]  791 	cjne	r6,#0x08,00102$
      002D56 BF 00 24         [24]  792 	cjne	r7,#0x00,00102$
      002D59 7D 64            [12]  793 	mov	r5,#___str_3
      002D5B 7E 89            [12]  794 	mov	r6,#(___str_3 >> 8)
      002D5D 7F 80            [12]  795 	mov	r7,#0x80
                                    796 ;	calc.c:53: return;
      002D5F                        797 00135$:
                                    798 ;	calc.c:51: for (; *s; s++) putchar(*s);
      002D5F 8D 82            [24]  799 	mov	dpl,r5
      002D61 8E 83            [24]  800 	mov	dph,r6
      002D63 8F F0            [24]  801 	mov	b,r7
      002D65 12 70 CC         [24]  802 	lcall	__gptrget
      002D68 FC               [12]  803 	mov	r4,a
      002D69 60 12            [24]  804 	jz	00102$
      002D6B 8C 03            [24]  805 	mov	ar3,r4
      002D6D 7C 00            [12]  806 	mov	r4,#0x00
      002D6F 8B 82            [24]  807 	mov	dpl,r3
      002D71 8C 83            [24]  808 	mov	dph,r4
      002D73 12 2B 70         [24]  809 	lcall	_putchar
      002D76 0D               [12]  810 	inc	r5
                                    811 ;	calc.c:96: if (delta->event == EVENT_TERM) printstr("\r\n");
      002D77 BD 00 E5         [24]  812 	cjne	r5,#0x00,00135$
      002D7A 0E               [12]  813 	inc	r6
      002D7B 80 E2            [24]  814 	sjmp	00135$
      002D7D                        815 00102$:
                                    816 ;	calc.c:97: r = stack_pop(ctx->ps, &d);
      002D7D E5 08            [12]  817 	mov	a,_bp
      002D7F 24 0E            [12]  818 	add	a,#0x0e
      002D81 FF               [12]  819 	mov	r7,a
      002D82 E5 08            [12]  820 	mov	a,_bp
      002D84 24 05            [12]  821 	add	a,#0x05
      002D86 F8               [12]  822 	mov	r0,a
      002D87 A6 07            [24]  823 	mov	@r0,ar7
      002D89 08               [12]  824 	inc	r0
      002D8A 76 00            [12]  825 	mov	@r0,#0x00
      002D8C 08               [12]  826 	inc	r0
      002D8D 76 40            [12]  827 	mov	@r0,#0x40
      002D8F E5 08            [12]  828 	mov	a,_bp
      002D91 24 0B            [12]  829 	add	a,#0x0b
      002D93 F8               [12]  830 	mov	r0,a
      002D94 A9 08            [24]  831 	mov	r1,_bp
      002D96 09               [12]  832 	inc	r1
      002D97 09               [12]  833 	inc	r1
      002D98 74 11            [12]  834 	mov	a,#0x11
      002D9A 26               [12]  835 	add	a,@r0
      002D9B F7               [12]  836 	mov	@r1,a
      002D9C 74 40            [12]  837 	mov	a,#0x40
      002D9E 08               [12]  838 	inc	r0
      002D9F 36               [12]  839 	addc	a,@r0
      002DA0 09               [12]  840 	inc	r1
      002DA1 F7               [12]  841 	mov	@r1,a
      002DA2 08               [12]  842 	inc	r0
      002DA3 09               [12]  843 	inc	r1
      002DA4 E6               [12]  844 	mov	a,@r0
      002DA5 F7               [12]  845 	mov	@r1,a
      002DA6 A8 08            [24]  846 	mov	r0,_bp
      002DA8 08               [12]  847 	inc	r0
      002DA9 08               [12]  848 	inc	r0
      002DAA 86 82            [24]  849 	mov	dpl,@r0
      002DAC 08               [12]  850 	inc	r0
      002DAD 86 83            [24]  851 	mov	dph,@r0
      002DAF 08               [12]  852 	inc	r0
      002DB0 86 F0            [24]  853 	mov	b,@r0
      002DB2 12 70 CC         [24]  854 	lcall	__gptrget
      002DB5 FA               [12]  855 	mov	r2,a
      002DB6 A3               [24]  856 	inc	dptr
      002DB7 12 70 CC         [24]  857 	lcall	__gptrget
      002DBA FB               [12]  858 	mov	r3,a
      002DBB A3               [24]  859 	inc	dptr
      002DBC 12 70 CC         [24]  860 	lcall	__gptrget
      002DBF FE               [12]  861 	mov	r6,a
      002DC0 C0 07            [24]  862 	push	ar7
      002DC2 E5 08            [12]  863 	mov	a,_bp
      002DC4 24 05            [12]  864 	add	a,#0x05
      002DC6 F8               [12]  865 	mov	r0,a
      002DC7 E6               [12]  866 	mov	a,@r0
      002DC8 C0 E0            [24]  867 	push	acc
      002DCA 08               [12]  868 	inc	r0
      002DCB E6               [12]  869 	mov	a,@r0
      002DCC C0 E0            [24]  870 	push	acc
      002DCE 08               [12]  871 	inc	r0
      002DCF E6               [12]  872 	mov	a,@r0
      002DD0 C0 E0            [24]  873 	push	acc
      002DD2 8A 82            [24]  874 	mov	dpl,r2
      002DD4 8B 83            [24]  875 	mov	dph,r3
      002DD6 8E F0            [24]  876 	mov	b,r6
      002DD8 12 27 83         [24]  877 	lcall	_stack_pop
      002DDB AE 82            [24]  878 	mov	r6,dpl
      002DDD AD 83            [24]  879 	mov	r5,dph
      002DDF 15 81            [12]  880 	dec	sp
      002DE1 15 81            [12]  881 	dec	sp
      002DE3 15 81            [12]  882 	dec	sp
      002DE5 D0 07            [24]  883 	pop	ar7
                                    884 ;	calc.c:98: if (!r) {
      002DE7 EE               [12]  885 	mov	a,r6
      002DE8 4D               [12]  886 	orl	a,r5
      002DE9 70 44            [24]  887 	jnz	00183$
                                    888 ;	calc.c:99: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002DEB E5 08            [12]  889 	mov	a,_bp
      002DED 24 08            [12]  890 	add	a,#0x08
      002DEF F8               [12]  891 	mov	r0,a
      002DF0 86 82            [24]  892 	mov	dpl,@r0
      002DF2 08               [12]  893 	inc	r0
      002DF3 86 83            [24]  894 	mov	dph,@r0
      002DF5 08               [12]  895 	inc	r0
      002DF6 86 F0            [24]  896 	mov	b,@r0
      002DF8 12 70 CC         [24]  897 	lcall	__gptrget
      002DFB FD               [12]  898 	mov	r5,a
      002DFC A3               [24]  899 	inc	dptr
      002DFD 12 70 CC         [24]  900 	lcall	__gptrget
      002E00 FE               [12]  901 	mov	r6,a
      002E01 BD 08 06         [24]  902 	cjne	r5,#0x08,00320$
      002E04 BE 00 03         [24]  903 	cjne	r6,#0x00,00320$
      002E07 02 30 0E         [24]  904 	ljmp	00110$
      002E0A                        905 00320$:
      002E0A 7C 67            [12]  906 	mov	r4,#___str_4
      002E0C 7D 89            [12]  907 	mov	r5,#(___str_4 >> 8)
      002E0E 7E 80            [12]  908 	mov	r6,#0x80
                                    909 ;	calc.c:53: return;
      002E10                        910 00138$:
                                    911 ;	calc.c:51: for (; *s; s++) putchar(*s);
      002E10 8C 82            [24]  912 	mov	dpl,r4
      002E12 8D 83            [24]  913 	mov	dph,r5
      002E14 8E F0            [24]  914 	mov	b,r6
      002E16 12 70 CC         [24]  915 	lcall	__gptrget
      002E19 FB               [12]  916 	mov	r3,a
      002E1A 70 03            [24]  917 	jnz	00321$
      002E1C 02 30 0E         [24]  918 	ljmp	00110$
      002E1F                        919 00321$:
      002E1F 7A 00            [12]  920 	mov	r2,#0x00
      002E21 8B 82            [24]  921 	mov	dpl,r3
      002E23 8A 83            [24]  922 	mov	dph,r2
      002E25 12 2B 70         [24]  923 	lcall	_putchar
      002E28 0C               [12]  924 	inc	r4
                                    925 ;	calc.c:100: } else while (r > 0) {
      002E29 BC 00 E4         [24]  926 	cjne	r4,#0x00,00138$
      002E2C 0D               [12]  927 	inc	r5
      002E2D 80 E1            [24]  928 	sjmp	00138$
      002E2F                        929 00183$:
      002E2F A8 08            [24]  930 	mov	r0,_bp
      002E31 08               [12]  931 	inc	r0
      002E32 A6 07            [24]  932 	mov	@r0,ar7
      002E34                        933 00105$:
      002E34 C3               [12]  934 	clr	c
      002E35 E4               [12]  935 	clr	a
      002E36 9E               [12]  936 	subb	a,r6
      002E37 74 80            [12]  937 	mov	a,#(0x00 ^ 0x80)
      002E39 8D F0            [24]  938 	mov	b,r5
      002E3B 63 F0 80         [24]  939 	xrl	b,#0x80
      002E3E 95 F0            [12]  940 	subb	a,b
      002E40 40 03            [24]  941 	jc	00323$
      002E42 02 30 0E         [24]  942 	ljmp	00110$
      002E45                        943 00323$:
                                    944 ;	calc.c:101: printstr("PSPA\t");
      002E45 7B 79            [12]  945 	mov	r3,#___str_5
      002E47 7C 89            [12]  946 	mov	r4,#(___str_5 >> 8)
      002E49 7D 80            [12]  947 	mov	r5,#0x80
                                    948 ;	calc.c:53: return;
      002E4B                        949 00141$:
                                    950 ;	calc.c:51: for (; *s; s++) putchar(*s);
      002E4B 8B 82            [24]  951 	mov	dpl,r3
      002E4D 8C 83            [24]  952 	mov	dph,r4
      002E4F 8D F0            [24]  953 	mov	b,r5
      002E51 12 70 CC         [24]  954 	lcall	__gptrget
      002E54 FA               [12]  955 	mov	r2,a
      002E55 60 10            [24]  956 	jz	00119$
      002E57 7E 00            [12]  957 	mov	r6,#0x00
      002E59 8A 82            [24]  958 	mov	dpl,r2
      002E5B 8E 83            [24]  959 	mov	dph,r6
      002E5D 12 2B 70         [24]  960 	lcall	_putchar
      002E60 0B               [12]  961 	inc	r3
                                    962 ;	calc.c:101: printstr("PSPA\t");
      002E61 BB 00 E7         [24]  963 	cjne	r3,#0x00,00141$
      002E64 0C               [12]  964 	inc	r4
      002E65 80 E4            [24]  965 	sjmp	00141$
      002E67                        966 00119$:
                                    967 ;	calc.c:102: printall(d);
      002E67 E5 08            [12]  968 	mov	a,_bp
      002E69 24 0E            [12]  969 	add	a,#0x0e
      002E6B F8               [12]  970 	mov	r0,a
      002E6C E5 08            [12]  971 	mov	a,_bp
      002E6E 24 12            [12]  972 	add	a,#0x12
      002E70 F9               [12]  973 	mov	r1,a
      002E71 E6               [12]  974 	mov	a,@r0
      002E72 F7               [12]  975 	mov	@r1,a
      002E73 08               [12]  976 	inc	r0
      002E74 09               [12]  977 	inc	r1
      002E75 E6               [12]  978 	mov	a,@r0
      002E76 F7               [12]  979 	mov	@r1,a
      002E77 08               [12]  980 	inc	r0
      002E78 09               [12]  981 	inc	r1
      002E79 E6               [12]  982 	mov	a,@r0
      002E7A F7               [12]  983 	mov	@r1,a
      002E7B 08               [12]  984 	inc	r0
      002E7C 09               [12]  985 	inc	r1
      002E7D E6               [12]  986 	mov	a,@r0
      002E7E F7               [12]  987 	mov	@r1,a
      002E7F E5 08            [12]  988 	mov	a,_bp
      002E81 24 12            [12]  989 	add	a,#0x12
      002E83 F8               [12]  990 	mov	r0,a
      002E84 86 03            [24]  991 	mov	ar3,@r0
      002E86 08               [12]  992 	inc	r0
      002E87 86 04            [24]  993 	mov	ar4,@r0
      002E89 08               [12]  994 	inc	r0
      002E8A 86 05            [24]  995 	mov	ar5,@r0
      002E8C 08               [12]  996 	inc	r0
      002E8D 86 06            [24]  997 	mov	ar6,@r0
                                    998 ;	calc.c:66: printf("%08lx\t", d);
      002E8F C0 07            [24]  999 	push	ar7
      002E91 C0 06            [24] 1000 	push	ar6
      002E93 C0 05            [24] 1001 	push	ar5
      002E95 C0 04            [24] 1002 	push	ar4
      002E97 C0 03            [24] 1003 	push	ar3
      002E99 E5 08            [12] 1004 	mov	a,_bp
      002E9B 24 12            [12] 1005 	add	a,#0x12
      002E9D F8               [12] 1006 	mov	r0,a
      002E9E E6               [12] 1007 	mov	a,@r0
      002E9F C0 E0            [24] 1008 	push	acc
      002EA1 08               [12] 1009 	inc	r0
      002EA2 E6               [12] 1010 	mov	a,@r0
      002EA3 C0 E0            [24] 1011 	push	acc
      002EA5 08               [12] 1012 	inc	r0
      002EA6 E6               [12] 1013 	mov	a,@r0
      002EA7 C0 E0            [24] 1014 	push	acc
      002EA9 08               [12] 1015 	inc	r0
      002EAA E6               [12] 1016 	mov	a,@r0
      002EAB C0 E0            [24] 1017 	push	acc
      002EAD 74 4D            [12] 1018 	mov	a,#___str_0
      002EAF C0 E0            [24] 1019 	push	acc
      002EB1 74 89            [12] 1020 	mov	a,#(___str_0 >> 8)
      002EB3 C0 E0            [24] 1021 	push	acc
      002EB5 74 80            [12] 1022 	mov	a,#0x80
      002EB7 C0 E0            [24] 1023 	push	acc
      002EB9 12 70 93         [24] 1024 	lcall	_printf
      002EBC E5 81            [12] 1025 	mov	a,sp
      002EBE 24 F9            [12] 1026 	add	a,#0xf9
      002EC0 F5 81            [12] 1027 	mov	sp,a
      002EC2 D0 03            [24] 1028 	pop	ar3
      002EC4 D0 04            [24] 1029 	pop	ar4
      002EC6 D0 05            [24] 1030 	pop	ar5
      002EC8 D0 06            [24] 1031 	pop	ar6
                                   1032 ;	calc.c:67: printf("% 11ld\t", d);
      002ECA C0 06            [24] 1033 	push	ar6
      002ECC C0 05            [24] 1034 	push	ar5
      002ECE C0 04            [24] 1035 	push	ar4
      002ED0 C0 03            [24] 1036 	push	ar3
      002ED2 C0 03            [24] 1037 	push	ar3
      002ED4 C0 04            [24] 1038 	push	ar4
      002ED6 C0 05            [24] 1039 	push	ar5
      002ED8 C0 06            [24] 1040 	push	ar6
      002EDA 74 54            [12] 1041 	mov	a,#___str_1
      002EDC C0 E0            [24] 1042 	push	acc
      002EDE 74 89            [12] 1043 	mov	a,#(___str_1 >> 8)
      002EE0 C0 E0            [24] 1044 	push	acc
      002EE2 74 80            [12] 1045 	mov	a,#0x80
      002EE4 C0 E0            [24] 1046 	push	acc
      002EE6 12 70 93         [24] 1047 	lcall	_printf
      002EE9 E5 81            [12] 1048 	mov	a,sp
      002EEB 24 F9            [12] 1049 	add	a,#0xf9
      002EED F5 81            [12] 1050 	mov	sp,a
      002EEF D0 03            [24] 1051 	pop	ar3
      002EF1 D0 04            [24] 1052 	pop	ar4
      002EF3 D0 05            [24] 1053 	pop	ar5
      002EF5 D0 06            [24] 1054 	pop	ar6
                                   1055 ;	calc.c:68: printf("%011lo\t", d);
      002EF7 C0 06            [24] 1056 	push	ar6
      002EF9 C0 05            [24] 1057 	push	ar5
      002EFB C0 04            [24] 1058 	push	ar4
      002EFD C0 03            [24] 1059 	push	ar3
      002EFF C0 03            [24] 1060 	push	ar3
      002F01 C0 04            [24] 1061 	push	ar4
      002F03 C0 05            [24] 1062 	push	ar5
      002F05 C0 06            [24] 1063 	push	ar6
      002F07 74 5C            [12] 1064 	mov	a,#___str_2
      002F09 C0 E0            [24] 1065 	push	acc
      002F0B 74 89            [12] 1066 	mov	a,#(___str_2 >> 8)
      002F0D C0 E0            [24] 1067 	push	acc
      002F0F 74 80            [12] 1068 	mov	a,#0x80
      002F11 C0 E0            [24] 1069 	push	acc
      002F13 12 70 93         [24] 1070 	lcall	_printf
      002F16 E5 81            [12] 1071 	mov	a,sp
      002F18 24 F9            [12] 1072 	add	a,#0xf9
      002F1A F5 81            [12] 1073 	mov	sp,a
      002F1C D0 03            [24] 1074 	pop	ar3
      002F1E D0 04            [24] 1075 	pop	ar4
      002F20 D0 05            [24] 1076 	pop	ar5
      002F22 D0 06            [24] 1077 	pop	ar6
      002F24 D0 07            [24] 1078 	pop	ar7
                                   1079 ;	calc.c:69: printbin(d);
      002F26 E5 08            [12] 1080 	mov	a,_bp
      002F28 24 16            [12] 1081 	add	a,#0x16
      002F2A F8               [12] 1082 	mov	r0,a
      002F2B A6 03            [24] 1083 	mov	@r0,ar3
      002F2D 08               [12] 1084 	inc	r0
      002F2E A6 04            [24] 1085 	mov	@r0,ar4
      002F30 08               [12] 1086 	inc	r0
      002F31 A6 05            [24] 1087 	mov	@r0,ar5
      002F33 08               [12] 1088 	inc	r0
      002F34 A6 06            [24] 1089 	mov	@r0,ar6
                                   1090 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F36 E5 08            [12] 1091 	mov	a,_bp
      002F38 24 1A            [12] 1092 	add	a,#0x1a
      002F3A F8               [12] 1093 	mov	r0,a
      002F3B E4               [12] 1094 	clr	a
      002F3C F6               [12] 1095 	mov	@r0,a
      002F3D 08               [12] 1096 	inc	r0
      002F3E F6               [12] 1097 	mov	@r0,a
      002F3F 08               [12] 1098 	inc	r0
      002F40 F6               [12] 1099 	mov	@r0,a
      002F41 08               [12] 1100 	inc	r0
      002F42 76 80            [12] 1101 	mov	@r0,#0x80
                                   1102 ;	calc.c:116: return 1;
                                   1103 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F44                       1104 00143$:
                                   1105 ;	calc.c:60: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002F44 E5 08            [12] 1106 	mov	a,_bp
      002F46 24 16            [12] 1107 	add	a,#0x16
      002F48 F8               [12] 1108 	mov	r0,a
      002F49 86 02            [24] 1109 	mov	ar2,@r0
      002F4B 08               [12] 1110 	inc	r0
      002F4C 86 03            [24] 1111 	mov	ar3,@r0
      002F4E 08               [12] 1112 	inc	r0
      002F4F 86 04            [24] 1113 	mov	ar4,@r0
      002F51 08               [12] 1114 	inc	r0
      002F52 86 05            [24] 1115 	mov	ar5,@r0
      002F54 E5 08            [12] 1116 	mov	a,_bp
      002F56 24 1A            [12] 1117 	add	a,#0x1a
      002F58 F8               [12] 1118 	mov	r0,a
      002F59 E6               [12] 1119 	mov	a,@r0
      002F5A 52 02            [12] 1120 	anl	ar2,a
      002F5C 08               [12] 1121 	inc	r0
      002F5D E6               [12] 1122 	mov	a,@r0
      002F5E 52 03            [12] 1123 	anl	ar3,a
      002F60 08               [12] 1124 	inc	r0
      002F61 E6               [12] 1125 	mov	a,@r0
      002F62 52 04            [12] 1126 	anl	ar4,a
      002F64 08               [12] 1127 	inc	r0
      002F65 E6               [12] 1128 	mov	a,@r0
      002F66 52 05            [12] 1129 	anl	ar5,a
      002F68 EA               [12] 1130 	mov	a,r2
      002F69 4B               [12] 1131 	orl	a,r3
      002F6A 4C               [12] 1132 	orl	a,r4
      002F6B 4D               [12] 1133 	orl	a,r5
      002F6C 60 06            [24] 1134 	jz	00164$
      002F6E 7C 31            [12] 1135 	mov	r4,#0x31
      002F70 7D 00            [12] 1136 	mov	r5,#0x00
      002F72 80 04            [24] 1137 	sjmp	00165$
      002F74                       1138 00164$:
      002F74 7C 30            [12] 1139 	mov	r4,#0x30
      002F76 7D 00            [12] 1140 	mov	r5,#0x00
      002F78                       1141 00165$:
      002F78 8C 82            [24] 1142 	mov	dpl,r4
      002F7A 8D 83            [24] 1143 	mov	dph,r5
      002F7C 12 2B 70         [24] 1144 	lcall	_putchar
                                   1145 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F7F E5 08            [12] 1146 	mov	a,_bp
      002F81 24 1A            [12] 1147 	add	a,#0x1a
      002F83 F8               [12] 1148 	mov	r0,a
      002F84 08               [12] 1149 	inc	r0
      002F85 08               [12] 1150 	inc	r0
      002F86 08               [12] 1151 	inc	r0
      002F87 E6               [12] 1152 	mov	a,@r0
      002F88 C3               [12] 1153 	clr	c
      002F89 13               [12] 1154 	rrc	a
      002F8A F6               [12] 1155 	mov	@r0,a
      002F8B 18               [12] 1156 	dec	r0
      002F8C E6               [12] 1157 	mov	a,@r0
      002F8D 13               [12] 1158 	rrc	a
      002F8E F6               [12] 1159 	mov	@r0,a
      002F8F 18               [12] 1160 	dec	r0
      002F90 E6               [12] 1161 	mov	a,@r0
      002F91 13               [12] 1162 	rrc	a
      002F92 F6               [12] 1163 	mov	@r0,a
      002F93 18               [12] 1164 	dec	r0
      002F94 E6               [12] 1165 	mov	a,@r0
      002F95 13               [12] 1166 	rrc	a
      002F96 F6               [12] 1167 	mov	@r0,a
      002F97 E5 08            [12] 1168 	mov	a,_bp
      002F99 24 1A            [12] 1169 	add	a,#0x1a
      002F9B F8               [12] 1170 	mov	r0,a
      002F9C E6               [12] 1171 	mov	a,@r0
      002F9D 08               [12] 1172 	inc	r0
      002F9E 46               [12] 1173 	orl	a,@r0
      002F9F 08               [12] 1174 	inc	r0
      002FA0 46               [12] 1175 	orl	a,@r0
      002FA1 08               [12] 1176 	inc	r0
      002FA2 46               [12] 1177 	orl	a,@r0
      002FA3 70 9F            [24] 1178 	jnz	00143$
                                   1179 ;	calc.c:103: printstr("\r\n");
      002FA5 7B 64            [12] 1180 	mov	r3,#___str_3
      002FA7 7C 89            [12] 1181 	mov	r4,#(___str_3 >> 8)
      002FA9 7D 80            [12] 1182 	mov	r5,#0x80
                                   1183 ;	calc.c:53: return;
      002FAB                       1184 00146$:
                                   1185 ;	calc.c:51: for (; *s; s++) putchar(*s);
      002FAB 8B 82            [24] 1186 	mov	dpl,r3
      002FAD 8C 83            [24] 1187 	mov	dph,r4
      002FAF 8D F0            [24] 1188 	mov	b,r5
      002FB1 12 70 CC         [24] 1189 	lcall	__gptrget
      002FB4 FA               [12] 1190 	mov	r2,a
      002FB5 60 10            [24] 1191 	jz	00124$
      002FB7 7E 00            [12] 1192 	mov	r6,#0x00
      002FB9 8A 82            [24] 1193 	mov	dpl,r2
      002FBB 8E 83            [24] 1194 	mov	dph,r6
      002FBD 12 2B 70         [24] 1195 	lcall	_putchar
      002FC0 0B               [12] 1196 	inc	r3
                                   1197 ;	calc.c:103: printstr("\r\n");
      002FC1 BB 00 E7         [24] 1198 	cjne	r3,#0x00,00146$
      002FC4 0C               [12] 1199 	inc	r4
      002FC5 80 E4            [24] 1200 	sjmp	00146$
      002FC7                       1201 00124$:
                                   1202 ;	calc.c:104: r = stack_pop(ctx->ps, &d);
      002FC7 C0 07            [24] 1203 	push	ar7
      002FC9 A8 08            [24] 1204 	mov	r0,_bp
      002FCB 08               [12] 1205 	inc	r0
      002FCC 86 03            [24] 1206 	mov	ar3,@r0
      002FCE 7C 00            [12] 1207 	mov	r4,#0x00
      002FD0 7D 40            [12] 1208 	mov	r5,#0x40
      002FD2 A8 08            [24] 1209 	mov	r0,_bp
      002FD4 08               [12] 1210 	inc	r0
      002FD5 08               [12] 1211 	inc	r0
      002FD6 86 82            [24] 1212 	mov	dpl,@r0
      002FD8 08               [12] 1213 	inc	r0
      002FD9 86 83            [24] 1214 	mov	dph,@r0
      002FDB 08               [12] 1215 	inc	r0
      002FDC 86 F0            [24] 1216 	mov	b,@r0
      002FDE 12 70 CC         [24] 1217 	lcall	__gptrget
      002FE1 FA               [12] 1218 	mov	r2,a
      002FE2 A3               [24] 1219 	inc	dptr
      002FE3 12 70 CC         [24] 1220 	lcall	__gptrget
      002FE6 FE               [12] 1221 	mov	r6,a
      002FE7 A3               [24] 1222 	inc	dptr
      002FE8 12 70 CC         [24] 1223 	lcall	__gptrget
      002FEB FF               [12] 1224 	mov	r7,a
      002FEC C0 07            [24] 1225 	push	ar7
      002FEE C0 03            [24] 1226 	push	ar3
      002FF0 C0 04            [24] 1227 	push	ar4
      002FF2 C0 05            [24] 1228 	push	ar5
      002FF4 8A 82            [24] 1229 	mov	dpl,r2
      002FF6 8E 83            [24] 1230 	mov	dph,r6
      002FF8 8F F0            [24] 1231 	mov	b,r7
      002FFA 12 27 83         [24] 1232 	lcall	_stack_pop
      002FFD AE 82            [24] 1233 	mov	r6,dpl
      002FFF AD 83            [24] 1234 	mov	r5,dph
      003001 15 81            [12] 1235 	dec	sp
      003003 15 81            [12] 1236 	dec	sp
      003005 15 81            [12] 1237 	dec	sp
      003007 D0 07            [24] 1238 	pop	ar7
      003009 D0 07            [24] 1239 	pop	ar7
      00300B 02 2E 34         [24] 1240 	ljmp	00105$
      00300E                       1241 00110$:
                                   1242 ;	calc.c:107: if (delta->event == EVENT_TERM) {
      00300E E5 08            [12] 1243 	mov	a,_bp
      003010 24 08            [12] 1244 	add	a,#0x08
      003012 F8               [12] 1245 	mov	r0,a
      003013 86 82            [24] 1246 	mov	dpl,@r0
      003015 08               [12] 1247 	inc	r0
      003016 86 83            [24] 1248 	mov	dph,@r0
      003018 08               [12] 1249 	inc	r0
      003019 86 F0            [24] 1250 	mov	b,@r0
      00301B 12 70 CC         [24] 1251 	lcall	__gptrget
      00301E FD               [12] 1252 	mov	r5,a
      00301F A3               [24] 1253 	inc	dptr
      003020 12 70 CC         [24] 1254 	lcall	__gptrget
      003023 FE               [12] 1255 	mov	r6,a
      003024 BD 08 05         [24] 1256 	cjne	r5,#0x08,00330$
      003027 BE 00 02         [24] 1257 	cjne	r6,#0x00,00330$
      00302A 80 03            [24] 1258 	sjmp	00331$
      00302C                       1259 00330$:
      00302C 02 32 A2         [24] 1260 	ljmp	00113$
      00302F                       1261 00331$:
                                   1262 ;	calc.c:108: printstr("\r\n");
      00302F 7C 64            [12] 1263 	mov	r4,#___str_3
      003031 7D 89            [12] 1264 	mov	r5,#(___str_3 >> 8)
      003033 7E 80            [12] 1265 	mov	r6,#0x80
                                   1266 ;	calc.c:53: return;
      003035                       1267 00149$:
                                   1268 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003035 8C 82            [24] 1269 	mov	dpl,r4
      003037 8D 83            [24] 1270 	mov	dph,r5
      003039 8E F0            [24] 1271 	mov	b,r6
      00303B 12 70 CC         [24] 1272 	lcall	__gptrget
      00303E FB               [12] 1273 	mov	r3,a
      00303F 60 10            [24] 1274 	jz	00126$
      003041 7A 00            [12] 1275 	mov	r2,#0x00
      003043 8B 82            [24] 1276 	mov	dpl,r3
      003045 8A 83            [24] 1277 	mov	dph,r2
      003047 12 2B 70         [24] 1278 	lcall	_putchar
      00304A 0C               [12] 1279 	inc	r4
                                   1280 ;	calc.c:108: printstr("\r\n");
      00304B BC 00 E7         [24] 1281 	cjne	r4,#0x00,00149$
      00304E 0D               [12] 1282 	inc	r5
      00304F 80 E4            [24] 1283 	sjmp	00149$
      003051                       1284 00126$:
                                   1285 ;	calc.c:109: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      003051 8F 06            [24] 1286 	mov	ar6,r7
      003053 E5 08            [12] 1287 	mov	a,_bp
      003055 24 05            [12] 1288 	add	a,#0x05
      003057 F8               [12] 1289 	mov	r0,a
      003058 A6 06            [24] 1290 	mov	@r0,ar6
      00305A 08               [12] 1291 	inc	r0
      00305B 76 00            [12] 1292 	mov	@r0,#0x00
      00305D 08               [12] 1293 	inc	r0
      00305E 76 40            [12] 1294 	mov	@r0,#0x40
      003060 E5 08            [12] 1295 	mov	a,_bp
      003062 24 0B            [12] 1296 	add	a,#0x0b
      003064 F8               [12] 1297 	mov	r0,a
      003065 E5 08            [12] 1298 	mov	a,_bp
      003067 24 08            [12] 1299 	add	a,#0x08
      003069 F9               [12] 1300 	mov	r1,a
      00306A 74 14            [12] 1301 	mov	a,#0x14
      00306C 26               [12] 1302 	add	a,@r0
      00306D F7               [12] 1303 	mov	@r1,a
      00306E 74 40            [12] 1304 	mov	a,#0x40
      003070 08               [12] 1305 	inc	r0
      003071 36               [12] 1306 	addc	a,@r0
      003072 09               [12] 1307 	inc	r1
      003073 F7               [12] 1308 	mov	@r1,a
      003074 08               [12] 1309 	inc	r0
      003075 09               [12] 1310 	inc	r1
      003076 E6               [12] 1311 	mov	a,@r0
      003077 F7               [12] 1312 	mov	@r1,a
      003078 E5 08            [12] 1313 	mov	a,_bp
      00307A 24 08            [12] 1314 	add	a,#0x08
      00307C F8               [12] 1315 	mov	r0,a
      00307D 86 82            [24] 1316 	mov	dpl,@r0
      00307F 08               [12] 1317 	inc	r0
      003080 86 83            [24] 1318 	mov	dph,@r0
      003082 08               [12] 1319 	inc	r0
      003083 86 F0            [24] 1320 	mov	b,@r0
      003085 12 70 CC         [24] 1321 	lcall	__gptrget
      003088 FA               [12] 1322 	mov	r2,a
      003089 A3               [24] 1323 	inc	dptr
      00308A 12 70 CC         [24] 1324 	lcall	__gptrget
      00308D FB               [12] 1325 	mov	r3,a
      00308E A3               [24] 1326 	inc	dptr
      00308F 12 70 CC         [24] 1327 	lcall	__gptrget
      003092 FE               [12] 1328 	mov	r6,a
      003093 C0 07            [24] 1329 	push	ar7
      003095 E5 08            [12] 1330 	mov	a,_bp
      003097 24 05            [12] 1331 	add	a,#0x05
      003099 F8               [12] 1332 	mov	r0,a
      00309A E6               [12] 1333 	mov	a,@r0
      00309B C0 E0            [24] 1334 	push	acc
      00309D 08               [12] 1335 	inc	r0
      00309E E6               [12] 1336 	mov	a,@r0
      00309F C0 E0            [24] 1337 	push	acc
      0030A1 08               [12] 1338 	inc	r0
      0030A2 E6               [12] 1339 	mov	a,@r0
      0030A3 C0 E0            [24] 1340 	push	acc
      0030A5 8A 82            [24] 1341 	mov	dpl,r2
      0030A7 8B 83            [24] 1342 	mov	dph,r3
      0030A9 8E F0            [24] 1343 	mov	b,r6
      0030AB 12 27 83         [24] 1344 	lcall	_stack_pop
      0030AE AD 82            [24] 1345 	mov	r5,dpl
      0030B0 AE 83            [24] 1346 	mov	r6,dph
      0030B2 15 81            [12] 1347 	dec	sp
      0030B4 15 81            [12] 1348 	dec	sp
      0030B6 15 81            [12] 1349 	dec	sp
      0030B8 D0 07            [24] 1350 	pop	ar7
      0030BA                       1351 00160$:
      0030BA C3               [12] 1352 	clr	c
      0030BB E4               [12] 1353 	clr	a
      0030BC 9D               [12] 1354 	subb	a,r5
      0030BD 74 80            [12] 1355 	mov	a,#(0x00 ^ 0x80)
      0030BF 8E F0            [24] 1356 	mov	b,r6
      0030C1 63 F0 80         [24] 1357 	xrl	b,#0x80
      0030C4 95 F0            [12] 1358 	subb	a,b
      0030C6 40 03            [24] 1359 	jc	00334$
      0030C8 02 32 A2         [24] 1360 	ljmp	00113$
      0030CB                       1361 00334$:
                                   1362 ;	calc.c:110: printstr("SSPA\t");
      0030CB 7D 7F            [12] 1363 	mov	r5,#___str_6
      0030CD 7B 89            [12] 1364 	mov	r3,#(___str_6 >> 8)
      0030CF 7A 80            [12] 1365 	mov	r2,#0x80
                                   1366 ;	calc.c:53: return;
      0030D1                       1367 00152$:
                                   1368 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0030D1 8D 82            [24] 1369 	mov	dpl,r5
      0030D3 8B 83            [24] 1370 	mov	dph,r3
      0030D5 8A F0            [24] 1371 	mov	b,r2
      0030D7 12 70 CC         [24] 1372 	lcall	__gptrget
      0030DA FE               [12] 1373 	mov	r6,a
      0030DB 60 16            [24] 1374 	jz	00128$
      0030DD C0 07            [24] 1375 	push	ar7
      0030DF 8E 04            [24] 1376 	mov	ar4,r6
      0030E1 7F 00            [12] 1377 	mov	r7,#0x00
      0030E3 8C 82            [24] 1378 	mov	dpl,r4
      0030E5 8F 83            [24] 1379 	mov	dph,r7
      0030E7 12 2B 70         [24] 1380 	lcall	_putchar
      0030EA 0D               [12] 1381 	inc	r5
      0030EB BD 00 01         [24] 1382 	cjne	r5,#0x00,00336$
      0030EE 0B               [12] 1383 	inc	r3
      0030EF                       1384 00336$:
      0030EF D0 07            [24] 1385 	pop	ar7
                                   1386 ;	calc.c:110: printstr("SSPA\t");
      0030F1 80 DE            [24] 1387 	sjmp	00152$
      0030F3                       1388 00128$:
                                   1389 ;	calc.c:111: printall(d);
      0030F3 C0 07            [24] 1390 	push	ar7
      0030F5 E5 08            [12] 1391 	mov	a,_bp
      0030F7 24 0E            [12] 1392 	add	a,#0x0e
      0030F9 F8               [12] 1393 	mov	r0,a
      0030FA E5 08            [12] 1394 	mov	a,_bp
      0030FC 24 12            [12] 1395 	add	a,#0x12
      0030FE F9               [12] 1396 	mov	r1,a
      0030FF E6               [12] 1397 	mov	a,@r0
      003100 F7               [12] 1398 	mov	@r1,a
      003101 08               [12] 1399 	inc	r0
      003102 09               [12] 1400 	inc	r1
      003103 E6               [12] 1401 	mov	a,@r0
      003104 F7               [12] 1402 	mov	@r1,a
      003105 08               [12] 1403 	inc	r0
      003106 09               [12] 1404 	inc	r1
      003107 E6               [12] 1405 	mov	a,@r0
      003108 F7               [12] 1406 	mov	@r1,a
      003109 08               [12] 1407 	inc	r0
      00310A 09               [12] 1408 	inc	r1
      00310B E6               [12] 1409 	mov	a,@r0
      00310C F7               [12] 1410 	mov	@r1,a
      00310D E5 08            [12] 1411 	mov	a,_bp
      00310F 24 12            [12] 1412 	add	a,#0x12
      003111 F8               [12] 1413 	mov	r0,a
      003112 86 02            [24] 1414 	mov	ar2,@r0
      003114 08               [12] 1415 	inc	r0
      003115 86 03            [24] 1416 	mov	ar3,@r0
      003117 08               [12] 1417 	inc	r0
      003118 86 04            [24] 1418 	mov	ar4,@r0
      00311A 08               [12] 1419 	inc	r0
      00311B 86 07            [24] 1420 	mov	ar7,@r0
                                   1421 ;	calc.c:66: printf("%08lx\t", d);
      00311D C0 07            [24] 1422 	push	ar7
      00311F C0 04            [24] 1423 	push	ar4
      003121 C0 03            [24] 1424 	push	ar3
      003123 C0 02            [24] 1425 	push	ar2
      003125 E5 08            [12] 1426 	mov	a,_bp
      003127 24 12            [12] 1427 	add	a,#0x12
      003129 F8               [12] 1428 	mov	r0,a
      00312A E6               [12] 1429 	mov	a,@r0
      00312B C0 E0            [24] 1430 	push	acc
      00312D 08               [12] 1431 	inc	r0
      00312E E6               [12] 1432 	mov	a,@r0
      00312F C0 E0            [24] 1433 	push	acc
      003131 08               [12] 1434 	inc	r0
      003132 E6               [12] 1435 	mov	a,@r0
      003133 C0 E0            [24] 1436 	push	acc
      003135 08               [12] 1437 	inc	r0
      003136 E6               [12] 1438 	mov	a,@r0
      003137 C0 E0            [24] 1439 	push	acc
      003139 74 4D            [12] 1440 	mov	a,#___str_0
      00313B C0 E0            [24] 1441 	push	acc
      00313D 74 89            [12] 1442 	mov	a,#(___str_0 >> 8)
      00313F C0 E0            [24] 1443 	push	acc
      003141 74 80            [12] 1444 	mov	a,#0x80
      003143 C0 E0            [24] 1445 	push	acc
      003145 12 70 93         [24] 1446 	lcall	_printf
      003148 E5 81            [12] 1447 	mov	a,sp
      00314A 24 F9            [12] 1448 	add	a,#0xf9
      00314C F5 81            [12] 1449 	mov	sp,a
      00314E D0 02            [24] 1450 	pop	ar2
      003150 D0 03            [24] 1451 	pop	ar3
      003152 D0 04            [24] 1452 	pop	ar4
      003154 D0 07            [24] 1453 	pop	ar7
                                   1454 ;	calc.c:67: printf("% 11ld\t", d);
      003156 C0 07            [24] 1455 	push	ar7
      003158 C0 04            [24] 1456 	push	ar4
      00315A C0 03            [24] 1457 	push	ar3
      00315C C0 02            [24] 1458 	push	ar2
      00315E C0 02            [24] 1459 	push	ar2
      003160 C0 03            [24] 1460 	push	ar3
      003162 C0 04            [24] 1461 	push	ar4
      003164 C0 07            [24] 1462 	push	ar7
      003166 74 54            [12] 1463 	mov	a,#___str_1
      003168 C0 E0            [24] 1464 	push	acc
      00316A 74 89            [12] 1465 	mov	a,#(___str_1 >> 8)
      00316C C0 E0            [24] 1466 	push	acc
      00316E 74 80            [12] 1467 	mov	a,#0x80
      003170 C0 E0            [24] 1468 	push	acc
      003172 12 70 93         [24] 1469 	lcall	_printf
      003175 E5 81            [12] 1470 	mov	a,sp
      003177 24 F9            [12] 1471 	add	a,#0xf9
      003179 F5 81            [12] 1472 	mov	sp,a
      00317B D0 02            [24] 1473 	pop	ar2
      00317D D0 03            [24] 1474 	pop	ar3
      00317F D0 04            [24] 1475 	pop	ar4
      003181 D0 07            [24] 1476 	pop	ar7
                                   1477 ;	calc.c:68: printf("%011lo\t", d);
      003183 C0 07            [24] 1478 	push	ar7
      003185 C0 04            [24] 1479 	push	ar4
      003187 C0 03            [24] 1480 	push	ar3
      003189 C0 02            [24] 1481 	push	ar2
      00318B C0 02            [24] 1482 	push	ar2
      00318D C0 03            [24] 1483 	push	ar3
      00318F C0 04            [24] 1484 	push	ar4
      003191 C0 07            [24] 1485 	push	ar7
      003193 74 5C            [12] 1486 	mov	a,#___str_2
      003195 C0 E0            [24] 1487 	push	acc
      003197 74 89            [12] 1488 	mov	a,#(___str_2 >> 8)
      003199 C0 E0            [24] 1489 	push	acc
      00319B 74 80            [12] 1490 	mov	a,#0x80
      00319D C0 E0            [24] 1491 	push	acc
      00319F 12 70 93         [24] 1492 	lcall	_printf
      0031A2 E5 81            [12] 1493 	mov	a,sp
      0031A4 24 F9            [12] 1494 	add	a,#0xf9
      0031A6 F5 81            [12] 1495 	mov	sp,a
      0031A8 D0 02            [24] 1496 	pop	ar2
      0031AA D0 03            [24] 1497 	pop	ar3
      0031AC D0 04            [24] 1498 	pop	ar4
      0031AE D0 07            [24] 1499 	pop	ar7
                                   1500 ;	calc.c:69: printbin(d);
      0031B0 E5 08            [12] 1501 	mov	a,_bp
      0031B2 24 16            [12] 1502 	add	a,#0x16
      0031B4 F8               [12] 1503 	mov	r0,a
      0031B5 A6 02            [24] 1504 	mov	@r0,ar2
      0031B7 08               [12] 1505 	inc	r0
      0031B8 A6 03            [24] 1506 	mov	@r0,ar3
      0031BA 08               [12] 1507 	inc	r0
      0031BB A6 04            [24] 1508 	mov	@r0,ar4
      0031BD 08               [12] 1509 	inc	r0
      0031BE A6 07            [24] 1510 	mov	@r0,ar7
                                   1511 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031C0 E5 08            [12] 1512 	mov	a,_bp
      0031C2 24 1A            [12] 1513 	add	a,#0x1a
      0031C4 F8               [12] 1514 	mov	r0,a
      0031C5 E4               [12] 1515 	clr	a
      0031C6 F6               [12] 1516 	mov	@r0,a
      0031C7 08               [12] 1517 	inc	r0
      0031C8 F6               [12] 1518 	mov	@r0,a
      0031C9 08               [12] 1519 	inc	r0
      0031CA F6               [12] 1520 	mov	@r0,a
      0031CB 08               [12] 1521 	inc	r0
      0031CC 76 80            [12] 1522 	mov	@r0,#0x80
                                   1523 ;	calc.c:116: return 1;
      0031CE D0 07            [24] 1524 	pop	ar7
                                   1525 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031D0                       1526 00154$:
                                   1527 ;	calc.c:60: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0031D0 C0 07            [24] 1528 	push	ar7
      0031D2 E5 08            [12] 1529 	mov	a,_bp
      0031D4 24 16            [12] 1530 	add	a,#0x16
      0031D6 F8               [12] 1531 	mov	r0,a
      0031D7 86 02            [24] 1532 	mov	ar2,@r0
      0031D9 08               [12] 1533 	inc	r0
      0031DA 86 03            [24] 1534 	mov	ar3,@r0
      0031DC 08               [12] 1535 	inc	r0
      0031DD 86 04            [24] 1536 	mov	ar4,@r0
      0031DF 08               [12] 1537 	inc	r0
      0031E0 86 07            [24] 1538 	mov	ar7,@r0
      0031E2 E5 08            [12] 1539 	mov	a,_bp
      0031E4 24 1A            [12] 1540 	add	a,#0x1a
      0031E6 F8               [12] 1541 	mov	r0,a
      0031E7 E6               [12] 1542 	mov	a,@r0
      0031E8 52 02            [12] 1543 	anl	ar2,a
      0031EA 08               [12] 1544 	inc	r0
      0031EB E6               [12] 1545 	mov	a,@r0
      0031EC 52 03            [12] 1546 	anl	ar3,a
      0031EE 08               [12] 1547 	inc	r0
      0031EF E6               [12] 1548 	mov	a,@r0
      0031F0 52 04            [12] 1549 	anl	ar4,a
      0031F2 08               [12] 1550 	inc	r0
      0031F3 E6               [12] 1551 	mov	a,@r0
      0031F4 52 07            [12] 1552 	anl	ar7,a
      0031F6 EA               [12] 1553 	mov	a,r2
      0031F7 4B               [12] 1554 	orl	a,r3
      0031F8 4C               [12] 1555 	orl	a,r4
      0031F9 4F               [12] 1556 	orl	a,r7
      0031FA D0 07            [24] 1557 	pop	ar7
      0031FC 60 06            [24] 1558 	jz	00166$
      0031FE 7B 31            [12] 1559 	mov	r3,#0x31
      003200 7C 00            [12] 1560 	mov	r4,#0x00
      003202 80 04            [24] 1561 	sjmp	00167$
      003204                       1562 00166$:
      003204 7B 30            [12] 1563 	mov	r3,#0x30
      003206 7C 00            [12] 1564 	mov	r4,#0x00
      003208                       1565 00167$:
      003208 8B 82            [24] 1566 	mov	dpl,r3
      00320A 8C 83            [24] 1567 	mov	dph,r4
      00320C 12 2B 70         [24] 1568 	lcall	_putchar
                                   1569 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      00320F E5 08            [12] 1570 	mov	a,_bp
      003211 24 1A            [12] 1571 	add	a,#0x1a
      003213 F8               [12] 1572 	mov	r0,a
      003214 08               [12] 1573 	inc	r0
      003215 08               [12] 1574 	inc	r0
      003216 08               [12] 1575 	inc	r0
      003217 E6               [12] 1576 	mov	a,@r0
      003218 C3               [12] 1577 	clr	c
      003219 13               [12] 1578 	rrc	a
      00321A F6               [12] 1579 	mov	@r0,a
      00321B 18               [12] 1580 	dec	r0
      00321C E6               [12] 1581 	mov	a,@r0
      00321D 13               [12] 1582 	rrc	a
      00321E F6               [12] 1583 	mov	@r0,a
      00321F 18               [12] 1584 	dec	r0
      003220 E6               [12] 1585 	mov	a,@r0
      003221 13               [12] 1586 	rrc	a
      003222 F6               [12] 1587 	mov	@r0,a
      003223 18               [12] 1588 	dec	r0
      003224 E6               [12] 1589 	mov	a,@r0
      003225 13               [12] 1590 	rrc	a
      003226 F6               [12] 1591 	mov	@r0,a
      003227 E5 08            [12] 1592 	mov	a,_bp
      003229 24 1A            [12] 1593 	add	a,#0x1a
      00322B F8               [12] 1594 	mov	r0,a
      00322C E6               [12] 1595 	mov	a,@r0
      00322D 08               [12] 1596 	inc	r0
      00322E 46               [12] 1597 	orl	a,@r0
      00322F 08               [12] 1598 	inc	r0
      003230 46               [12] 1599 	orl	a,@r0
      003231 08               [12] 1600 	inc	r0
      003232 46               [12] 1601 	orl	a,@r0
      003233 70 9B            [24] 1602 	jnz	00154$
                                   1603 ;	calc.c:112: printstr("\r\n");
      003235 7D 64            [12] 1604 	mov	r5,#___str_3
      003237 7B 89            [12] 1605 	mov	r3,#(___str_3 >> 8)
      003239 7A 80            [12] 1606 	mov	r2,#0x80
                                   1607 ;	calc.c:53: return;
      00323B                       1608 00157$:
                                   1609 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00323B 8D 82            [24] 1610 	mov	dpl,r5
      00323D 8B 83            [24] 1611 	mov	dph,r3
      00323F 8A F0            [24] 1612 	mov	b,r2
      003241 12 70 CC         [24] 1613 	lcall	__gptrget
      003244 FE               [12] 1614 	mov	r6,a
      003245 60 16            [24] 1615 	jz	00133$
      003247 C0 07            [24] 1616 	push	ar7
      003249 8E 04            [24] 1617 	mov	ar4,r6
      00324B 7F 00            [12] 1618 	mov	r7,#0x00
      00324D 8C 82            [24] 1619 	mov	dpl,r4
      00324F 8F 83            [24] 1620 	mov	dph,r7
      003251 12 2B 70         [24] 1621 	lcall	_putchar
      003254 0D               [12] 1622 	inc	r5
      003255 BD 00 01         [24] 1623 	cjne	r5,#0x00,00340$
      003258 0B               [12] 1624 	inc	r3
      003259                       1625 00340$:
      003259 D0 07            [24] 1626 	pop	ar7
                                   1627 ;	calc.c:112: printstr("\r\n");
      00325B 80 DE            [24] 1628 	sjmp	00157$
      00325D                       1629 00133$:
                                   1630 ;	calc.c:109: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      00325D 8F 06            [24] 1631 	mov	ar6,r7
      00325F 7D 00            [12] 1632 	mov	r5,#0x00
      003261 7A 40            [12] 1633 	mov	r2,#0x40
      003263 C0 07            [24] 1634 	push	ar7
      003265 E5 08            [12] 1635 	mov	a,_bp
      003267 24 08            [12] 1636 	add	a,#0x08
      003269 F8               [12] 1637 	mov	r0,a
      00326A 86 82            [24] 1638 	mov	dpl,@r0
      00326C 08               [12] 1639 	inc	r0
      00326D 86 83            [24] 1640 	mov	dph,@r0
      00326F 08               [12] 1641 	inc	r0
      003270 86 F0            [24] 1642 	mov	b,@r0
      003272 12 70 CC         [24] 1643 	lcall	__gptrget
      003275 FB               [12] 1644 	mov	r3,a
      003276 A3               [24] 1645 	inc	dptr
      003277 12 70 CC         [24] 1646 	lcall	__gptrget
      00327A FC               [12] 1647 	mov	r4,a
      00327B A3               [24] 1648 	inc	dptr
      00327C 12 70 CC         [24] 1649 	lcall	__gptrget
      00327F FF               [12] 1650 	mov	r7,a
      003280 C0 06            [24] 1651 	push	ar6
      003282 C0 05            [24] 1652 	push	ar5
      003284 C0 02            [24] 1653 	push	ar2
      003286 8B 82            [24] 1654 	mov	dpl,r3
      003288 8C 83            [24] 1655 	mov	dph,r4
      00328A 8F F0            [24] 1656 	mov	b,r7
      00328C 12 27 83         [24] 1657 	lcall	_stack_pop
      00328F AC 82            [24] 1658 	mov	r4,dpl
      003291 AF 83            [24] 1659 	mov	r7,dph
      003293 15 81            [12] 1660 	dec	sp
      003295 15 81            [12] 1661 	dec	sp
      003297 15 81            [12] 1662 	dec	sp
      003299 8C 05            [24] 1663 	mov	ar5,r4
      00329B 8F 06            [24] 1664 	mov	ar6,r7
      00329D D0 07            [24] 1665 	pop	ar7
      00329F 02 30 BA         [24] 1666 	ljmp	00160$
      0032A2                       1667 00113$:
                                   1668 ;	calc.c:116: return 1;
      0032A2 90 00 01         [24] 1669 	mov	dptr,#0x0001
                                   1670 ;	calc.c:117: }
      0032A5 85 08 81         [24] 1671 	mov	sp,_bp
      0032A8 D0 08            [24] 1672 	pop	_bp
      0032AA 22               [24] 1673 	ret
                                   1674 ;------------------------------------------------------------
                                   1675 ;Allocation info for local variables in function 'dump_peek'
                                   1676 ;------------------------------------------------------------
                                   1677 ;d                         Allocated to stack - _bp -6
                                   1678 ;_ctx                      Allocated to registers 
                                   1679 ;__1310720021              Allocated to registers 
                                   1680 ;s                         Allocated to registers r5 r6 r7 
                                   1681 ;__1310720023              Allocated to registers r4 r5 r6 r7 
                                   1682 ;d                         Allocated to registers 
                                   1683 ;__1310720001              Allocated to registers 
                                   1684 ;d                         Allocated to stack - _bp +1
                                   1685 ;mask                      Allocated to stack - _bp +5
                                   1686 ;__1310720025              Allocated to registers 
                                   1687 ;s                         Allocated to registers r5 r6 r7 
                                   1688 ;------------------------------------------------------------
                                   1689 ;	calc.c:119: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1690 ;	-----------------------------------------
                                   1691 ;	 function dump_peek
                                   1692 ;	-----------------------------------------
      0032AB                       1693 _dump_peek:
      0032AB C0 08            [24] 1694 	push	_bp
      0032AD E5 81            [12] 1695 	mov	a,sp
      0032AF F5 08            [12] 1696 	mov	_bp,a
      0032B1 24 08            [12] 1697 	add	a,#0x08
      0032B3 F5 81            [12] 1698 	mov	sp,a
                                   1699 ;	calc.c:122: printstr("PSVA\t");
      0032B5 7D 85            [12] 1700 	mov	r5,#___str_7
      0032B7 7E 89            [12] 1701 	mov	r6,#(___str_7 >> 8)
      0032B9 7F 80            [12] 1702 	mov	r7,#0x80
                                   1703 ;	calc.c:53: return;
      0032BB                       1704 00109$:
                                   1705 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0032BB 8D 82            [24] 1706 	mov	dpl,r5
      0032BD 8E 83            [24] 1707 	mov	dph,r6
      0032BF 8F F0            [24] 1708 	mov	b,r7
      0032C1 12 70 CC         [24] 1709 	lcall	__gptrget
      0032C4 FC               [12] 1710 	mov	r4,a
      0032C5 60 10            [24] 1711 	jz	00102$
      0032C7 7B 00            [12] 1712 	mov	r3,#0x00
      0032C9 8C 82            [24] 1713 	mov	dpl,r4
      0032CB 8B 83            [24] 1714 	mov	dph,r3
      0032CD 12 2B 70         [24] 1715 	lcall	_putchar
      0032D0 0D               [12] 1716 	inc	r5
                                   1717 ;	calc.c:122: printstr("PSVA\t");
      0032D1 BD 00 E7         [24] 1718 	cjne	r5,#0x00,00109$
      0032D4 0E               [12] 1719 	inc	r6
      0032D5 80 E4            [24] 1720 	sjmp	00109$
      0032D7                       1721 00102$:
                                   1722 ;	calc.c:123: printall(d);
      0032D7 E5 08            [12] 1723 	mov	a,_bp
      0032D9 24 FA            [12] 1724 	add	a,#0xfa
      0032DB F8               [12] 1725 	mov	r0,a
      0032DC 86 04            [24] 1726 	mov	ar4,@r0
      0032DE 08               [12] 1727 	inc	r0
      0032DF 86 05            [24] 1728 	mov	ar5,@r0
      0032E1 08               [12] 1729 	inc	r0
      0032E2 86 06            [24] 1730 	mov	ar6,@r0
      0032E4 08               [12] 1731 	inc	r0
      0032E5 86 07            [24] 1732 	mov	ar7,@r0
                                   1733 ;	calc.c:66: printf("%08lx\t", d);
      0032E7 C0 07            [24] 1734 	push	ar7
      0032E9 C0 06            [24] 1735 	push	ar6
      0032EB C0 05            [24] 1736 	push	ar5
      0032ED C0 04            [24] 1737 	push	ar4
      0032EF C0 04            [24] 1738 	push	ar4
      0032F1 C0 05            [24] 1739 	push	ar5
      0032F3 C0 06            [24] 1740 	push	ar6
      0032F5 C0 07            [24] 1741 	push	ar7
      0032F7 74 4D            [12] 1742 	mov	a,#___str_0
      0032F9 C0 E0            [24] 1743 	push	acc
      0032FB 74 89            [12] 1744 	mov	a,#(___str_0 >> 8)
      0032FD C0 E0            [24] 1745 	push	acc
      0032FF 74 80            [12] 1746 	mov	a,#0x80
      003301 C0 E0            [24] 1747 	push	acc
      003303 12 70 93         [24] 1748 	lcall	_printf
      003306 E5 81            [12] 1749 	mov	a,sp
      003308 24 F9            [12] 1750 	add	a,#0xf9
      00330A F5 81            [12] 1751 	mov	sp,a
      00330C D0 04            [24] 1752 	pop	ar4
      00330E D0 05            [24] 1753 	pop	ar5
      003310 D0 06            [24] 1754 	pop	ar6
      003312 D0 07            [24] 1755 	pop	ar7
                                   1756 ;	calc.c:67: printf("% 11ld\t", d);
      003314 C0 07            [24] 1757 	push	ar7
      003316 C0 06            [24] 1758 	push	ar6
      003318 C0 05            [24] 1759 	push	ar5
      00331A C0 04            [24] 1760 	push	ar4
      00331C C0 04            [24] 1761 	push	ar4
      00331E C0 05            [24] 1762 	push	ar5
      003320 C0 06            [24] 1763 	push	ar6
      003322 C0 07            [24] 1764 	push	ar7
      003324 74 54            [12] 1765 	mov	a,#___str_1
      003326 C0 E0            [24] 1766 	push	acc
      003328 74 89            [12] 1767 	mov	a,#(___str_1 >> 8)
      00332A C0 E0            [24] 1768 	push	acc
      00332C 74 80            [12] 1769 	mov	a,#0x80
      00332E C0 E0            [24] 1770 	push	acc
      003330 12 70 93         [24] 1771 	lcall	_printf
      003333 E5 81            [12] 1772 	mov	a,sp
      003335 24 F9            [12] 1773 	add	a,#0xf9
      003337 F5 81            [12] 1774 	mov	sp,a
      003339 D0 04            [24] 1775 	pop	ar4
      00333B D0 05            [24] 1776 	pop	ar5
      00333D D0 06            [24] 1777 	pop	ar6
      00333F D0 07            [24] 1778 	pop	ar7
                                   1779 ;	calc.c:68: printf("%011lo\t", d);
      003341 C0 07            [24] 1780 	push	ar7
      003343 C0 06            [24] 1781 	push	ar6
      003345 C0 05            [24] 1782 	push	ar5
      003347 C0 04            [24] 1783 	push	ar4
      003349 C0 04            [24] 1784 	push	ar4
      00334B C0 05            [24] 1785 	push	ar5
      00334D C0 06            [24] 1786 	push	ar6
      00334F C0 07            [24] 1787 	push	ar7
      003351 74 5C            [12] 1788 	mov	a,#___str_2
      003353 C0 E0            [24] 1789 	push	acc
      003355 74 89            [12] 1790 	mov	a,#(___str_2 >> 8)
      003357 C0 E0            [24] 1791 	push	acc
      003359 74 80            [12] 1792 	mov	a,#0x80
      00335B C0 E0            [24] 1793 	push	acc
      00335D 12 70 93         [24] 1794 	lcall	_printf
      003360 E5 81            [12] 1795 	mov	a,sp
      003362 24 F9            [12] 1796 	add	a,#0xf9
      003364 F5 81            [12] 1797 	mov	sp,a
      003366 D0 04            [24] 1798 	pop	ar4
      003368 D0 05            [24] 1799 	pop	ar5
      00336A D0 06            [24] 1800 	pop	ar6
      00336C D0 07            [24] 1801 	pop	ar7
                                   1802 ;	calc.c:69: printbin(d);
      00336E A8 08            [24] 1803 	mov	r0,_bp
      003370 08               [12] 1804 	inc	r0
      003371 A6 04            [24] 1805 	mov	@r0,ar4
      003373 08               [12] 1806 	inc	r0
      003374 A6 05            [24] 1807 	mov	@r0,ar5
      003376 08               [12] 1808 	inc	r0
      003377 A6 06            [24] 1809 	mov	@r0,ar6
      003379 08               [12] 1810 	inc	r0
      00337A A6 07            [24] 1811 	mov	@r0,ar7
                                   1812 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      00337C E5 08            [12] 1813 	mov	a,_bp
      00337E 24 05            [12] 1814 	add	a,#0x05
      003380 F8               [12] 1815 	mov	r0,a
      003381 E4               [12] 1816 	clr	a
      003382 F6               [12] 1817 	mov	@r0,a
      003383 08               [12] 1818 	inc	r0
      003384 F6               [12] 1819 	mov	@r0,a
      003385 08               [12] 1820 	inc	r0
      003386 F6               [12] 1821 	mov	@r0,a
      003387 08               [12] 1822 	inc	r0
      003388 76 80            [12] 1823 	mov	@r0,#0x80
      00338A                       1824 00111$:
                                   1825 ;	calc.c:60: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00338A A8 08            [24] 1826 	mov	r0,_bp
      00338C 08               [12] 1827 	inc	r0
      00338D 86 04            [24] 1828 	mov	ar4,@r0
      00338F 08               [12] 1829 	inc	r0
      003390 86 05            [24] 1830 	mov	ar5,@r0
      003392 08               [12] 1831 	inc	r0
      003393 86 06            [24] 1832 	mov	ar6,@r0
      003395 08               [12] 1833 	inc	r0
      003396 86 07            [24] 1834 	mov	ar7,@r0
      003398 E5 08            [12] 1835 	mov	a,_bp
      00339A 24 05            [12] 1836 	add	a,#0x05
      00339C F8               [12] 1837 	mov	r0,a
      00339D E6               [12] 1838 	mov	a,@r0
      00339E 52 04            [12] 1839 	anl	ar4,a
      0033A0 08               [12] 1840 	inc	r0
      0033A1 E6               [12] 1841 	mov	a,@r0
      0033A2 52 05            [12] 1842 	anl	ar5,a
      0033A4 08               [12] 1843 	inc	r0
      0033A5 E6               [12] 1844 	mov	a,@r0
      0033A6 52 06            [12] 1845 	anl	ar6,a
      0033A8 08               [12] 1846 	inc	r0
      0033A9 E6               [12] 1847 	mov	a,@r0
      0033AA 52 07            [12] 1848 	anl	ar7,a
      0033AC EC               [12] 1849 	mov	a,r4
      0033AD 4D               [12] 1850 	orl	a,r5
      0033AE 4E               [12] 1851 	orl	a,r6
      0033AF 4F               [12] 1852 	orl	a,r7
      0033B0 60 06            [24] 1853 	jz	00118$
      0033B2 7E 31            [12] 1854 	mov	r6,#0x31
      0033B4 7F 00            [12] 1855 	mov	r7,#0x00
      0033B6 80 04            [24] 1856 	sjmp	00119$
      0033B8                       1857 00118$:
      0033B8 7E 30            [12] 1858 	mov	r6,#0x30
      0033BA 7F 00            [12] 1859 	mov	r7,#0x00
      0033BC                       1860 00119$:
      0033BC 8E 82            [24] 1861 	mov	dpl,r6
      0033BE 8F 83            [24] 1862 	mov	dph,r7
      0033C0 12 2B 70         [24] 1863 	lcall	_putchar
                                   1864 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      0033C3 E5 08            [12] 1865 	mov	a,_bp
      0033C5 24 05            [12] 1866 	add	a,#0x05
      0033C7 F8               [12] 1867 	mov	r0,a
      0033C8 08               [12] 1868 	inc	r0
      0033C9 08               [12] 1869 	inc	r0
      0033CA 08               [12] 1870 	inc	r0
      0033CB E6               [12] 1871 	mov	a,@r0
      0033CC C3               [12] 1872 	clr	c
      0033CD 13               [12] 1873 	rrc	a
      0033CE F6               [12] 1874 	mov	@r0,a
      0033CF 18               [12] 1875 	dec	r0
      0033D0 E6               [12] 1876 	mov	a,@r0
      0033D1 13               [12] 1877 	rrc	a
      0033D2 F6               [12] 1878 	mov	@r0,a
      0033D3 18               [12] 1879 	dec	r0
      0033D4 E6               [12] 1880 	mov	a,@r0
      0033D5 13               [12] 1881 	rrc	a
      0033D6 F6               [12] 1882 	mov	@r0,a
      0033D7 18               [12] 1883 	dec	r0
      0033D8 E6               [12] 1884 	mov	a,@r0
      0033D9 13               [12] 1885 	rrc	a
      0033DA F6               [12] 1886 	mov	@r0,a
      0033DB E5 08            [12] 1887 	mov	a,_bp
      0033DD 24 05            [12] 1888 	add	a,#0x05
      0033DF F8               [12] 1889 	mov	r0,a
      0033E0 E6               [12] 1890 	mov	a,@r0
      0033E1 08               [12] 1891 	inc	r0
      0033E2 46               [12] 1892 	orl	a,@r0
      0033E3 08               [12] 1893 	inc	r0
      0033E4 46               [12] 1894 	orl	a,@r0
      0033E5 08               [12] 1895 	inc	r0
      0033E6 46               [12] 1896 	orl	a,@r0
      0033E7 70 A1            [24] 1897 	jnz	00111$
                                   1898 ;	calc.c:124: printstr("\r\n");
      0033E9 7D 64            [12] 1899 	mov	r5,#___str_3
      0033EB 7E 89            [12] 1900 	mov	r6,#(___str_3 >> 8)
      0033ED 7F 80            [12] 1901 	mov	r7,#0x80
                                   1902 ;	calc.c:53: return;
      0033EF                       1903 00114$:
                                   1904 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0033EF 8D 82            [24] 1905 	mov	dpl,r5
      0033F1 8E 83            [24] 1906 	mov	dph,r6
      0033F3 8F F0            [24] 1907 	mov	b,r7
      0033F5 12 70 CC         [24] 1908 	lcall	__gptrget
      0033F8 FC               [12] 1909 	mov	r4,a
      0033F9 60 10            [24] 1910 	jz	00107$
      0033FB 7B 00            [12] 1911 	mov	r3,#0x00
      0033FD 8C 82            [24] 1912 	mov	dpl,r4
      0033FF 8B 83            [24] 1913 	mov	dph,r3
      003401 12 2B 70         [24] 1914 	lcall	_putchar
      003404 0D               [12] 1915 	inc	r5
                                   1916 ;	calc.c:124: printstr("\r\n");
      003405 BD 00 E7         [24] 1917 	cjne	r5,#0x00,00114$
      003408 0E               [12] 1918 	inc	r6
      003409 80 E4            [24] 1919 	sjmp	00114$
      00340B                       1920 00107$:
                                   1921 ;	calc.c:126: return 1;
      00340B 90 00 01         [24] 1922 	mov	dptr,#0x0001
                                   1923 ;	calc.c:127: }
      00340E 85 08 81         [24] 1924 	mov	sp,_bp
      003411 D0 08            [24] 1925 	pop	_bp
      003413 22               [24] 1926 	ret
                                   1927 ;------------------------------------------------------------
                                   1928 ;Allocation info for local variables in function 'operator'
                                   1929 ;------------------------------------------------------------
                                   1930 ;delta                     Allocated to stack - _bp -5
                                   1931 ;_ctx                      Allocated to stack - _bp +1
                                   1932 ;ctx                       Allocated to stack - _bp +18
                                   1933 ;t0                        Allocated to registers r7 r6 r5 
                                   1934 ;d0                        Allocated to stack - _bp +21
                                   1935 ;d1                        Allocated to stack - _bp +25
                                   1936 ;__1966080027              Allocated to registers 
                                   1937 ;s                         Allocated to registers r7 r6 r5 
                                   1938 ;__1966080029              Allocated to registers 
                                   1939 ;s                         Allocated to registers r7 r6 r5 
                                   1940 ;__2621440031              Allocated to registers 
                                   1941 ;s                         Allocated to registers r7 r6 r5 
                                   1942 ;__2621440033              Allocated to registers r7 r6 r5 r4 
                                   1943 ;d                         Allocated to stack - _bp +29
                                   1944 ;__1310720001              Allocated to registers 
                                   1945 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1946 ;mask                      Allocated to stack - _bp +33
                                   1947 ;__2621440035              Allocated to registers 
                                   1948 ;s                         Allocated to registers r7 r6 r5 
                                   1949 ;__1966080037              Allocated to registers 
                                   1950 ;s                         Allocated to registers r7 r6 r5 
                                   1951 ;__1966080039              Allocated to registers 
                                   1952 ;s                         Allocated to registers r7 r6 r5 
                                   1953 ;__1966080041              Allocated to registers 
                                   1954 ;s                         Allocated to registers r7 r6 r5 
                                   1955 ;__1966080043              Allocated to registers 
                                   1956 ;s                         Allocated to registers r7 r6 r5 
                                   1957 ;__2621440045              Allocated to registers 
                                   1958 ;s                         Allocated to registers r7 r6 r5 
                                   1959 ;__2621440047              Allocated to registers r7 r6 r5 r4 
                                   1960 ;d                         Allocated to stack - _bp +29
                                   1961 ;__1310720001              Allocated to registers 
                                   1962 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1963 ;mask                      Allocated to stack - _bp +33
                                   1964 ;__2621440049              Allocated to registers 
                                   1965 ;s                         Allocated to registers r7 r6 r5 
                                   1966 ;__1966080051              Allocated to registers 
                                   1967 ;s                         Allocated to registers r7 r6 r5 
                                   1968 ;__1966080053              Allocated to registers 
                                   1969 ;s                         Allocated to registers r7 r6 r5 
                                   1970 ;__2621440055              Allocated to registers 
                                   1971 ;s                         Allocated to registers r7 r6 r5 
                                   1972 ;__1966080057              Allocated to registers 
                                   1973 ;s                         Allocated to registers r7 r6 r5 
                                   1974 ;__3276800059              Allocated to registers 
                                   1975 ;s                         Allocated to registers r7 r6 r5 
                                   1976 ;__1966080061              Allocated to registers 
                                   1977 ;s                         Allocated to registers r7 r6 r5 
                                   1978 ;__3276800063              Allocated to registers 
                                   1979 ;s                         Allocated to registers r7 r6 r5 
                                   1980 ;__1966080065              Allocated to registers 
                                   1981 ;s                         Allocated to registers r7 r6 r5 
                                   1982 ;__1966080067              Allocated to registers 
                                   1983 ;s                         Allocated to registers r7 r6 r5 
                                   1984 ;__1966080069              Allocated to registers 
                                   1985 ;s                         Allocated to registers r7 r6 r5 
                                   1986 ;__1966080071              Allocated to registers 
                                   1987 ;s                         Allocated to registers r7 r6 r5 
                                   1988 ;__1966080073              Allocated to registers 
                                   1989 ;s                         Allocated to registers r7 r6 r5 
                                   1990 ;__3276800075              Allocated to registers 
                                   1991 ;s                         Allocated to registers r7 r6 r5 
                                   1992 ;__1966080077              Allocated to registers 
                                   1993 ;s                         Allocated to registers r7 r6 r5 
                                   1994 ;__2621440079              Allocated to registers 
                                   1995 ;s                         Allocated to registers r7 r6 r5 
                                   1996 ;__1966080081              Allocated to registers 
                                   1997 ;s                         Allocated to registers r7 r6 r5 
                                   1998 ;__2621440083              Allocated to registers 
                                   1999 ;s                         Allocated to registers r7 r6 r5 
                                   2000 ;__1966080085              Allocated to registers 
                                   2001 ;s                         Allocated to registers r7 r6 r5 
                                   2002 ;__2621440087              Allocated to registers 
                                   2003 ;s                         Allocated to registers r7 r6 r5 
                                   2004 ;__1966080089              Allocated to registers 
                                   2005 ;s                         Allocated to registers r7 r6 r5 
                                   2006 ;__2621440091              Allocated to registers 
                                   2007 ;s                         Allocated to registers r7 r6 r5 
                                   2008 ;__2621440093              Allocated to registers 
                                   2009 ;s                         Allocated to registers r7 r6 r5 
                                   2010 ;__1966080095              Allocated to registers 
                                   2011 ;s                         Allocated to registers r7 r6 r5 
                                   2012 ;__2621440097              Allocated to registers 
                                   2013 ;s                         Allocated to registers r7 r6 r5 
                                   2014 ;__2621440099              Allocated to registers 
                                   2015 ;s                         Allocated to registers r7 r6 r5 
                                   2016 ;__1966080101              Allocated to registers 
                                   2017 ;s                         Allocated to registers r5 r4 r3 
                                   2018 ;__2621440103              Allocated to registers 
                                   2019 ;s                         Allocated to registers r5 r4 r3 
                                   2020 ;__1966080105              Allocated to registers 
                                   2021 ;s                         Allocated to registers r5 r4 r3 
                                   2022 ;__2621440107              Allocated to registers 
                                   2023 ;s                         Allocated to registers r5 r4 r3 
                                   2024 ;__1966080109              Allocated to registers 
                                   2025 ;s                         Allocated to registers r5 r4 r3 
                                   2026 ;__2621440111              Allocated to registers 
                                   2027 ;s                         Allocated to registers r5 r4 r3 
                                   2028 ;__1966080113              Allocated to registers 
                                   2029 ;s                         Allocated to registers r5 r4 r3 
                                   2030 ;__2621440115              Allocated to registers 
                                   2031 ;s                         Allocated to registers r5 r4 r3 
                                   2032 ;__1966080117              Allocated to registers 
                                   2033 ;s                         Allocated to registers r5 r4 r3 
                                   2034 ;__2621440119              Allocated to registers 
                                   2035 ;s                         Allocated to registers r5 r4 r3 
                                   2036 ;__1966080121              Allocated to registers 
                                   2037 ;s                         Allocated to registers r5 r4 r3 
                                   2038 ;__2621440123              Allocated to registers 
                                   2039 ;s                         Allocated to registers r5 r4 r3 
                                   2040 ;__1966080125              Allocated to registers 
                                   2041 ;s                         Allocated to registers r5 r4 r3 
                                   2042 ;sloc0                     Allocated to stack - _bp +346
                                   2043 ;sloc1                     Allocated to stack - _bp +4
                                   2044 ;sloc2                     Allocated to stack - _bp +7
                                   2045 ;sloc3                     Allocated to stack - _bp +11
                                   2046 ;sloc4                     Allocated to stack - _bp +14
                                   2047 ;------------------------------------------------------------
                                   2048 ;	calc.c:129: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   2049 ;	-----------------------------------------
                                   2050 ;	 function operator
                                   2051 ;	-----------------------------------------
      003414                       2052 _operator:
      003414 C0 08            [24] 2053 	push	_bp
      003416 85 81 08         [24] 2054 	mov	_bp,sp
      003419 C0 82            [24] 2055 	push	dpl
      00341B C0 83            [24] 2056 	push	dph
      00341D C0 F0            [24] 2057 	push	b
      00341F E5 81            [12] 2058 	mov	a,sp
      003421 24 21            [12] 2059 	add	a,#0x21
      003423 F5 81            [12] 2060 	mov	sp,a
                                   2061 ;	calc.c:130: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      003425 A8 08            [24] 2062 	mov	r0,_bp
      003427 08               [12] 2063 	inc	r0
      003428 E5 08            [12] 2064 	mov	a,_bp
      00342A 24 12            [12] 2065 	add	a,#0x12
      00342C F9               [12] 2066 	mov	r1,a
      00342D E6               [12] 2067 	mov	a,@r0
      00342E F7               [12] 2068 	mov	@r1,a
      00342F 08               [12] 2069 	inc	r0
      003430 09               [12] 2070 	inc	r1
      003431 E6               [12] 2071 	mov	a,@r0
      003432 F7               [12] 2072 	mov	@r1,a
      003433 08               [12] 2073 	inc	r0
      003434 09               [12] 2074 	inc	r1
      003435 E6               [12] 2075 	mov	a,@r0
      003436 F7               [12] 2076 	mov	@r1,a
                                   2077 ;	calc.c:134: switch (ctx->digit[0]) {
      003437 E5 08            [12] 2078 	mov	a,_bp
      003439 24 12            [12] 2079 	add	a,#0x12
      00343B F8               [12] 2080 	mov	r0,a
      00343C 74 07            [12] 2081 	mov	a,#0x07
      00343E 26               [12] 2082 	add	a,@r0
      00343F FD               [12] 2083 	mov	r5,a
      003440 E4               [12] 2084 	clr	a
      003441 08               [12] 2085 	inc	r0
      003442 36               [12] 2086 	addc	a,@r0
      003443 FE               [12] 2087 	mov	r6,a
      003444 08               [12] 2088 	inc	r0
      003445 86 07            [24] 2089 	mov	ar7,@r0
      003447 8D 82            [24] 2090 	mov	dpl,r5
      003449 8E 83            [24] 2091 	mov	dph,r6
      00344B 8F F0            [24] 2092 	mov	b,r7
      00344D 12 70 CC         [24] 2093 	lcall	__gptrget
      003450 FC               [12] 2094 	mov	r4,a
      003451 BC 23 03         [24] 2095 	cjne	r4,#0x23,01234$
      003454 02 49 83         [24] 2096 	ljmp	00189$
      003457                       2097 01234$:
      003457 BC 25 03         [24] 2098 	cjne	r4,#0x25,01235$
      00345A 02 49 83         [24] 2099 	ljmp	00189$
      00345D                       2100 01235$:
      00345D BC 26 03         [24] 2101 	cjne	r4,#0x26,01236$
      003460 02 4C 69         [24] 2102 	ljmp	00202$
      003463                       2103 01236$:
      003463 BC 2A 03         [24] 2104 	cjne	r4,#0x2a,01237$
      003466 02 44 F3         [24] 2105 	ljmp	00167$
      003469                       2106 01237$:
      003469 BC 2B 03         [24] 2107 	cjne	r4,#0x2b,01238$
      00346C 02 41 F4         [24] 2108 	ljmp	00153$
      00346F                       2109 01238$:
      00346F BC 2D 03         [24] 2110 	cjne	r4,#0x2d,01239$
      003472 02 43 73         [24] 2111 	ljmp	00160$
      003475                       2112 01239$:
      003475 BC 2E 03         [24] 2113 	cjne	r4,#0x2e,01240$
      003478 02 37 86         [24] 2114 	ljmp	00109$
      00347B                       2115 01240$:
      00347B BC 2F 03         [24] 2116 	cjne	r4,#0x2f,01241$
      00347E 02 46 99         [24] 2117 	ljmp	00175$
      003481                       2118 01241$:
      003481 BC 3C 03         [24] 2119 	cjne	r4,#0x3c,01242$
      003484 02 54 84         [24] 2120 	ljmp	00237$
      003487                       2121 01242$:
      003487 BC 3E 03         [24] 2122 	cjne	r4,#0x3e,01243$
      00348A 02 51 37         [24] 2123 	ljmp	00223$
      00348D                       2124 01243$:
      00348D BC 4D 03         [24] 2125 	cjne	r4,#0x4d,01244$
      003490 02 3C 9A         [24] 2126 	ljmp	00127$
      003493                       2127 01244$:
      003493 BC 50 03         [24] 2128 	cjne	r4,#0x50,01245$
      003496 02 39 7C         [24] 2129 	ljmp	00113$
      003499                       2130 01245$:
      003499 BC 54 03         [24] 2131 	cjne	r4,#0x54,01246$
      00349C 02 3F 9C         [24] 2132 	ljmp	00145$
      00349F                       2133 01246$:
      00349F BC 55 03         [24] 2134 	cjne	r4,#0x55,01247$
      0034A2 02 3E B5         [24] 2135 	ljmp	00139$
      0034A5                       2136 01247$:
      0034A5 BC 56 03         [24] 2137 	cjne	r4,#0x56,01248$
      0034A8 02 36 E5         [24] 2138 	ljmp	00105$
      0034AB                       2139 01248$:
      0034AB BC 58 03         [24] 2140 	cjne	r4,#0x58,01249$
      0034AE 02 41 55         [24] 2141 	ljmp	00152$
      0034B1                       2142 01249$:
      0034B1 BC 5C 03         [24] 2143 	cjne	r4,#0x5c,01250$
      0034B4 02 46 99         [24] 2144 	ljmp	00175$
      0034B7                       2145 01250$:
      0034B7 BC 5D 03         [24] 2146 	cjne	r4,#0x5d,01251$
      0034BA 02 52 D5         [24] 2147 	ljmp	00230$
      0034BD                       2148 01251$:
      0034BD BC 5E 03         [24] 2149 	cjne	r4,#0x5e,01252$
      0034C0 02 4F 9D         [24] 2150 	ljmp	00216$
      0034C3                       2151 01252$:
      0034C3 BC 6D 03         [24] 2152 	cjne	r4,#0x6d,01253$
      0034C6 02 3B 66         [24] 2153 	ljmp	00121$
      0034C9                       2154 01253$:
      0034C9 BC 70 03         [24] 2155 	cjne	r4,#0x70,01254$
      0034CC 02 37 86         [24] 2156 	ljmp	00109$
      0034CF                       2157 01254$:
      0034CF BC 75 03         [24] 2158 	cjne	r4,#0x75,01255$
      0034D2 02 3D CE         [24] 2159 	ljmp	00133$
      0034D5                       2160 01255$:
      0034D5 BC 76 02         [24] 2161 	cjne	r4,#0x76,01256$
      0034D8 80 15            [24] 2162 	sjmp	00101$
      0034DA                       2163 01256$:
      0034DA BC 78 03         [24] 2164 	cjne	r4,#0x78,01257$
      0034DD 02 39 C5         [24] 2165 	ljmp	00114$
      0034E0                       2166 01257$:
      0034E0 BC 7C 03         [24] 2167 	cjne	r4,#0x7c,01258$
      0034E3 02 4E 03         [24] 2168 	ljmp	00209$
      0034E6                       2169 01258$:
      0034E6 BC 7E 03         [24] 2170 	cjne	r4,#0x7e,01259$
      0034E9 02 56 27         [24] 2171 	ljmp	00244$
      0034EC                       2172 01259$:
      0034EC 02 57 00         [24] 2173 	ljmp	00248$
                                   2174 ;	calc.c:135: case 'v':
      0034EF                       2175 00101$:
                                   2176 ;	calc.c:136: printstr("\r\n");
      0034EF 7F 64            [12] 2177 	mov	r7,#___str_3
      0034F1 7E 89            [12] 2178 	mov	r6,#(___str_3 >> 8)
      0034F3 7D 80            [12] 2179 	mov	r5,#0x80
                                   2180 ;	calc.c:53: return;
      0034F5                       2181 00353$:
                                   2182 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0034F5 8F 82            [24] 2183 	mov	dpl,r7
      0034F7 8E 83            [24] 2184 	mov	dph,r6
      0034F9 8D F0            [24] 2185 	mov	b,r5
      0034FB 12 70 CC         [24] 2186 	lcall	__gptrget
      0034FE FC               [12] 2187 	mov	r4,a
      0034FF 60 10            [24] 2188 	jz	00251$
      003501 7B 00            [12] 2189 	mov	r3,#0x00
      003503 8C 82            [24] 2190 	mov	dpl,r4
      003505 8B 83            [24] 2191 	mov	dph,r3
      003507 12 2B 70         [24] 2192 	lcall	_putchar
      00350A 0F               [12] 2193 	inc	r7
                                   2194 ;	calc.c:136: printstr("\r\n");
      00350B BF 00 E7         [24] 2195 	cjne	r7,#0x00,00353$
      00350E 0E               [12] 2196 	inc	r6
      00350F 80 E4            [24] 2197 	sjmp	00353$
      003511                       2198 00251$:
                                   2199 ;	calc.c:137: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003511 E5 08            [12] 2200 	mov	a,_bp
      003513 24 15            [12] 2201 	add	a,#0x15
      003515 FF               [12] 2202 	mov	r7,a
      003516 7E 00            [12] 2203 	mov	r6,#0x00
      003518 7D 40            [12] 2204 	mov	r5,#0x40
      00351A E5 08            [12] 2205 	mov	a,_bp
      00351C 24 12            [12] 2206 	add	a,#0x12
      00351E F8               [12] 2207 	mov	r0,a
      00351F 74 11            [12] 2208 	mov	a,#0x11
      003521 26               [12] 2209 	add	a,@r0
      003522 FA               [12] 2210 	mov	r2,a
      003523 ED               [12] 2211 	mov	a,r5
      003524 08               [12] 2212 	inc	r0
      003525 36               [12] 2213 	addc	a,@r0
      003526 FB               [12] 2214 	mov	r3,a
      003527 08               [12] 2215 	inc	r0
      003528 86 04            [24] 2216 	mov	ar4,@r0
      00352A 8A 82            [24] 2217 	mov	dpl,r2
      00352C 8B 83            [24] 2218 	mov	dph,r3
      00352E 8C F0            [24] 2219 	mov	b,r4
      003530 12 70 CC         [24] 2220 	lcall	__gptrget
      003533 FA               [12] 2221 	mov	r2,a
      003534 A3               [24] 2222 	inc	dptr
      003535 12 70 CC         [24] 2223 	lcall	__gptrget
      003538 FB               [12] 2224 	mov	r3,a
      003539 A3               [24] 2225 	inc	dptr
      00353A 12 70 CC         [24] 2226 	lcall	__gptrget
      00353D FC               [12] 2227 	mov	r4,a
      00353E C0 07            [24] 2228 	push	ar7
      003540 C0 06            [24] 2229 	push	ar6
      003542 C0 05            [24] 2230 	push	ar5
      003544 8A 82            [24] 2231 	mov	dpl,r2
      003546 8B 83            [24] 2232 	mov	dph,r3
      003548 8C F0            [24] 2233 	mov	b,r4
      00354A 12 28 5E         [24] 2234 	lcall	_stack_peek
      00354D AB 82            [24] 2235 	mov	r3,dpl
      00354F AC 83            [24] 2236 	mov	r4,dph
      003551 15 81            [12] 2237 	dec	sp
      003553 15 81            [12] 2238 	dec	sp
      003555 15 81            [12] 2239 	dec	sp
      003557 EB               [12] 2240 	mov	a,r3
      003558 4C               [12] 2241 	orl	a,r4
      003559 70 25            [24] 2242 	jnz	00103$
      00355B 7F 67            [12] 2243 	mov	r7,#___str_4
      00355D 7E 89            [12] 2244 	mov	r6,#(___str_4 >> 8)
      00355F 7D 80            [12] 2245 	mov	r5,#0x80
                                   2246 ;	calc.c:53: return;
      003561                       2247 00356$:
                                   2248 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003561 8F 82            [24] 2249 	mov	dpl,r7
      003563 8E 83            [24] 2250 	mov	dph,r6
      003565 8D F0            [24] 2251 	mov	b,r5
      003567 12 70 CC         [24] 2252 	lcall	__gptrget
      00356A FC               [12] 2253 	mov	r4,a
      00356B 70 03            [24] 2254 	jnz	01263$
      00356D 02 57 05         [24] 2255 	ljmp	00249$
      003570                       2256 01263$:
      003570 7B 00            [12] 2257 	mov	r3,#0x00
      003572 8C 82            [24] 2258 	mov	dpl,r4
      003574 8B 83            [24] 2259 	mov	dph,r3
      003576 12 2B 70         [24] 2260 	lcall	_putchar
      003579 0F               [12] 2261 	inc	r7
                                   2262 ;	calc.c:137: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      00357A BF 00 E4         [24] 2263 	cjne	r7,#0x00,00356$
      00357D 0E               [12] 2264 	inc	r6
      00357E 80 E1            [24] 2265 	sjmp	00356$
      003580                       2266 00103$:
                                   2267 ;	calc.c:139: printstr("PSVTOP\t");
      003580 7F 8B            [12] 2268 	mov	r7,#___str_8
      003582 7E 89            [12] 2269 	mov	r6,#(___str_8 >> 8)
      003584 7D 80            [12] 2270 	mov	r5,#0x80
                                   2271 ;	calc.c:53: return;
      003586                       2272 00359$:
                                   2273 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003586 8F 82            [24] 2274 	mov	dpl,r7
      003588 8E 83            [24] 2275 	mov	dph,r6
      00358A 8D F0            [24] 2276 	mov	b,r5
      00358C 12 70 CC         [24] 2277 	lcall	__gptrget
      00358F FC               [12] 2278 	mov	r4,a
      003590 60 10            [24] 2279 	jz	00255$
      003592 7B 00            [12] 2280 	mov	r3,#0x00
      003594 8C 82            [24] 2281 	mov	dpl,r4
      003596 8B 83            [24] 2282 	mov	dph,r3
      003598 12 2B 70         [24] 2283 	lcall	_putchar
      00359B 0F               [12] 2284 	inc	r7
                                   2285 ;	calc.c:139: printstr("PSVTOP\t");
      00359C BF 00 E7         [24] 2286 	cjne	r7,#0x00,00359$
      00359F 0E               [12] 2287 	inc	r6
      0035A0 80 E4            [24] 2288 	sjmp	00359$
      0035A2                       2289 00255$:
                                   2290 ;	calc.c:140: printall(d0);
      0035A2 E5 08            [12] 2291 	mov	a,_bp
      0035A4 24 15            [12] 2292 	add	a,#0x15
      0035A6 F8               [12] 2293 	mov	r0,a
      0035A7 86 07            [24] 2294 	mov	ar7,@r0
      0035A9 08               [12] 2295 	inc	r0
      0035AA 86 06            [24] 2296 	mov	ar6,@r0
      0035AC 08               [12] 2297 	inc	r0
      0035AD 86 05            [24] 2298 	mov	ar5,@r0
      0035AF 08               [12] 2299 	inc	r0
      0035B0 86 04            [24] 2300 	mov	ar4,@r0
      0035B2 E5 08            [12] 2301 	mov	a,_bp
      0035B4 24 1D            [12] 2302 	add	a,#0x1d
      0035B6 F8               [12] 2303 	mov	r0,a
      0035B7 A6 07            [24] 2304 	mov	@r0,ar7
      0035B9 08               [12] 2305 	inc	r0
      0035BA A6 06            [24] 2306 	mov	@r0,ar6
      0035BC 08               [12] 2307 	inc	r0
      0035BD A6 05            [24] 2308 	mov	@r0,ar5
      0035BF 08               [12] 2309 	inc	r0
      0035C0 A6 04            [24] 2310 	mov	@r0,ar4
                                   2311 ;	calc.c:66: printf("%08lx\t", d);
      0035C2 C0 07            [24] 2312 	push	ar7
      0035C4 C0 06            [24] 2313 	push	ar6
      0035C6 C0 05            [24] 2314 	push	ar5
      0035C8 C0 04            [24] 2315 	push	ar4
      0035CA 74 4D            [12] 2316 	mov	a,#___str_0
      0035CC C0 E0            [24] 2317 	push	acc
      0035CE 74 89            [12] 2318 	mov	a,#(___str_0 >> 8)
      0035D0 C0 E0            [24] 2319 	push	acc
      0035D2 74 80            [12] 2320 	mov	a,#0x80
      0035D4 C0 E0            [24] 2321 	push	acc
      0035D6 12 70 93         [24] 2322 	lcall	_printf
      0035D9 E5 81            [12] 2323 	mov	a,sp
      0035DB 24 F9            [12] 2324 	add	a,#0xf9
      0035DD F5 81            [12] 2325 	mov	sp,a
                                   2326 ;	calc.c:67: printf("% 11ld\t", d);
      0035DF E5 08            [12] 2327 	mov	a,_bp
      0035E1 24 1D            [12] 2328 	add	a,#0x1d
      0035E3 F8               [12] 2329 	mov	r0,a
      0035E4 E6               [12] 2330 	mov	a,@r0
      0035E5 C0 E0            [24] 2331 	push	acc
      0035E7 08               [12] 2332 	inc	r0
      0035E8 E6               [12] 2333 	mov	a,@r0
      0035E9 C0 E0            [24] 2334 	push	acc
      0035EB 08               [12] 2335 	inc	r0
      0035EC E6               [12] 2336 	mov	a,@r0
      0035ED C0 E0            [24] 2337 	push	acc
      0035EF 08               [12] 2338 	inc	r0
      0035F0 E6               [12] 2339 	mov	a,@r0
      0035F1 C0 E0            [24] 2340 	push	acc
      0035F3 74 54            [12] 2341 	mov	a,#___str_1
      0035F5 C0 E0            [24] 2342 	push	acc
      0035F7 74 89            [12] 2343 	mov	a,#(___str_1 >> 8)
      0035F9 C0 E0            [24] 2344 	push	acc
      0035FB 74 80            [12] 2345 	mov	a,#0x80
      0035FD C0 E0            [24] 2346 	push	acc
      0035FF 12 70 93         [24] 2347 	lcall	_printf
      003602 E5 81            [12] 2348 	mov	a,sp
      003604 24 F9            [12] 2349 	add	a,#0xf9
      003606 F5 81            [12] 2350 	mov	sp,a
                                   2351 ;	calc.c:68: printf("%011lo\t", d);
      003608 E5 08            [12] 2352 	mov	a,_bp
      00360A 24 1D            [12] 2353 	add	a,#0x1d
      00360C F8               [12] 2354 	mov	r0,a
      00360D E6               [12] 2355 	mov	a,@r0
      00360E C0 E0            [24] 2356 	push	acc
      003610 08               [12] 2357 	inc	r0
      003611 E6               [12] 2358 	mov	a,@r0
      003612 C0 E0            [24] 2359 	push	acc
      003614 08               [12] 2360 	inc	r0
      003615 E6               [12] 2361 	mov	a,@r0
      003616 C0 E0            [24] 2362 	push	acc
      003618 08               [12] 2363 	inc	r0
      003619 E6               [12] 2364 	mov	a,@r0
      00361A C0 E0            [24] 2365 	push	acc
      00361C 74 5C            [12] 2366 	mov	a,#___str_2
      00361E C0 E0            [24] 2367 	push	acc
      003620 74 89            [12] 2368 	mov	a,#(___str_2 >> 8)
      003622 C0 E0            [24] 2369 	push	acc
      003624 74 80            [12] 2370 	mov	a,#0x80
      003626 C0 E0            [24] 2371 	push	acc
      003628 12 70 93         [24] 2372 	lcall	_printf
      00362B E5 81            [12] 2373 	mov	a,sp
      00362D 24 F9            [12] 2374 	add	a,#0xf9
      00362F F5 81            [12] 2375 	mov	sp,a
                                   2376 ;	calc.c:69: printbin(d);
      003631 E5 08            [12] 2377 	mov	a,_bp
      003633 24 1D            [12] 2378 	add	a,#0x1d
      003635 F8               [12] 2379 	mov	r0,a
      003636 86 07            [24] 2380 	mov	ar7,@r0
      003638 08               [12] 2381 	inc	r0
      003639 86 06            [24] 2382 	mov	ar6,@r0
      00363B 08               [12] 2383 	inc	r0
      00363C 86 05            [24] 2384 	mov	ar5,@r0
      00363E 08               [12] 2385 	inc	r0
      00363F 86 02            [24] 2386 	mov	ar2,@r0
                                   2387 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      003641 E5 08            [12] 2388 	mov	a,_bp
      003643 24 21            [12] 2389 	add	a,#0x21
      003645 F8               [12] 2390 	mov	r0,a
      003646 E4               [12] 2391 	clr	a
      003647 F6               [12] 2392 	mov	@r0,a
      003648 08               [12] 2393 	inc	r0
      003649 F6               [12] 2394 	mov	@r0,a
      00364A 08               [12] 2395 	inc	r0
      00364B F6               [12] 2396 	mov	@r0,a
      00364C 08               [12] 2397 	inc	r0
      00364D 76 80            [12] 2398 	mov	@r0,#0x80
      00364F                       2399 00361$:
                                   2400 ;	calc.c:60: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00364F E5 08            [12] 2401 	mov	a,_bp
      003651 24 07            [12] 2402 	add	a,#0x07
      003653 F8               [12] 2403 	mov	r0,a
      003654 A6 07            [24] 2404 	mov	@r0,ar7
      003656 08               [12] 2405 	inc	r0
      003657 A6 06            [24] 2406 	mov	@r0,ar6
      003659 08               [12] 2407 	inc	r0
      00365A A6 05            [24] 2408 	mov	@r0,ar5
      00365C 08               [12] 2409 	inc	r0
      00365D A6 02            [24] 2410 	mov	@r0,ar2
      00365F E5 08            [12] 2411 	mov	a,_bp
      003661 24 07            [12] 2412 	add	a,#0x07
      003663 F8               [12] 2413 	mov	r0,a
      003664 E5 08            [12] 2414 	mov	a,_bp
      003666 24 21            [12] 2415 	add	a,#0x21
      003668 F9               [12] 2416 	mov	r1,a
      003669 E7               [12] 2417 	mov	a,@r1
      00366A 56               [12] 2418 	anl	a,@r0
      00366B F6               [12] 2419 	mov	@r0,a
      00366C 09               [12] 2420 	inc	r1
      00366D E7               [12] 2421 	mov	a,@r1
      00366E 08               [12] 2422 	inc	r0
      00366F 56               [12] 2423 	anl	a,@r0
      003670 F6               [12] 2424 	mov	@r0,a
      003671 09               [12] 2425 	inc	r1
      003672 E7               [12] 2426 	mov	a,@r1
      003673 08               [12] 2427 	inc	r0
      003674 56               [12] 2428 	anl	a,@r0
      003675 F6               [12] 2429 	mov	@r0,a
      003676 09               [12] 2430 	inc	r1
      003677 E7               [12] 2431 	mov	a,@r1
      003678 08               [12] 2432 	inc	r0
      003679 56               [12] 2433 	anl	a,@r0
      00367A F6               [12] 2434 	mov	@r0,a
      00367B E5 08            [12] 2435 	mov	a,_bp
      00367D 24 07            [12] 2436 	add	a,#0x07
      00367F F8               [12] 2437 	mov	r0,a
      003680 E6               [12] 2438 	mov	a,@r0
      003681 08               [12] 2439 	inc	r0
      003682 46               [12] 2440 	orl	a,@r0
      003683 08               [12] 2441 	inc	r0
      003684 46               [12] 2442 	orl	a,@r0
      003685 08               [12] 2443 	inc	r0
      003686 46               [12] 2444 	orl	a,@r0
      003687 60 06            [24] 2445 	jz	00502$
      003689 7B 31            [12] 2446 	mov	r3,#0x31
      00368B 7C 00            [12] 2447 	mov	r4,#0x00
      00368D 80 04            [24] 2448 	sjmp	00503$
      00368F                       2449 00502$:
      00368F 7B 30            [12] 2450 	mov	r3,#0x30
      003691 7C 00            [12] 2451 	mov	r4,#0x00
      003693                       2452 00503$:
      003693 8B 82            [24] 2453 	mov	dpl,r3
      003695 8C 83            [24] 2454 	mov	dph,r4
      003697 12 2B 70         [24] 2455 	lcall	_putchar
                                   2456 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      00369A E5 08            [12] 2457 	mov	a,_bp
      00369C 24 21            [12] 2458 	add	a,#0x21
      00369E F8               [12] 2459 	mov	r0,a
      00369F 08               [12] 2460 	inc	r0
      0036A0 08               [12] 2461 	inc	r0
      0036A1 08               [12] 2462 	inc	r0
      0036A2 E6               [12] 2463 	mov	a,@r0
      0036A3 C3               [12] 2464 	clr	c
      0036A4 13               [12] 2465 	rrc	a
      0036A5 F6               [12] 2466 	mov	@r0,a
      0036A6 18               [12] 2467 	dec	r0
      0036A7 E6               [12] 2468 	mov	a,@r0
      0036A8 13               [12] 2469 	rrc	a
      0036A9 F6               [12] 2470 	mov	@r0,a
      0036AA 18               [12] 2471 	dec	r0
      0036AB E6               [12] 2472 	mov	a,@r0
      0036AC 13               [12] 2473 	rrc	a
      0036AD F6               [12] 2474 	mov	@r0,a
      0036AE 18               [12] 2475 	dec	r0
      0036AF E6               [12] 2476 	mov	a,@r0
      0036B0 13               [12] 2477 	rrc	a
      0036B1 F6               [12] 2478 	mov	@r0,a
      0036B2 E5 08            [12] 2479 	mov	a,_bp
      0036B4 24 21            [12] 2480 	add	a,#0x21
      0036B6 F8               [12] 2481 	mov	r0,a
      0036B7 E6               [12] 2482 	mov	a,@r0
      0036B8 08               [12] 2483 	inc	r0
      0036B9 46               [12] 2484 	orl	a,@r0
      0036BA 08               [12] 2485 	inc	r0
      0036BB 46               [12] 2486 	orl	a,@r0
      0036BC 08               [12] 2487 	inc	r0
      0036BD 46               [12] 2488 	orl	a,@r0
      0036BE 70 8F            [24] 2489 	jnz	00361$
                                   2490 ;	calc.c:141: printstr("\r\n");
      0036C0 7F 64            [12] 2491 	mov	r7,#___str_3
      0036C2 7E 89            [12] 2492 	mov	r6,#(___str_3 >> 8)
      0036C4 7D 80            [12] 2493 	mov	r5,#0x80
                                   2494 ;	calc.c:53: return;
      0036C6                       2495 00364$:
                                   2496 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0036C6 8F 82            [24] 2497 	mov	dpl,r7
      0036C8 8E 83            [24] 2498 	mov	dph,r6
      0036CA 8D F0            [24] 2499 	mov	b,r5
      0036CC 12 70 CC         [24] 2500 	lcall	__gptrget
      0036CF FC               [12] 2501 	mov	r4,a
      0036D0 70 03            [24] 2502 	jnz	01269$
      0036D2 02 57 05         [24] 2503 	ljmp	00249$
      0036D5                       2504 01269$:
      0036D5 7B 00            [12] 2505 	mov	r3,#0x00
      0036D7 8C 82            [24] 2506 	mov	dpl,r4
      0036D9 8B 83            [24] 2507 	mov	dph,r3
      0036DB 12 2B 70         [24] 2508 	lcall	_putchar
      0036DE 0F               [12] 2509 	inc	r7
                                   2510 ;	calc.c:144: case 'V':
      0036DF BF 00 E4         [24] 2511 	cjne	r7,#0x00,00364$
      0036E2 0E               [12] 2512 	inc	r6
      0036E3 80 E1            [24] 2513 	sjmp	00364$
      0036E5                       2514 00105$:
                                   2515 ;	calc.c:145: printstr("\r\n");
      0036E5 7F 64            [12] 2516 	mov	r7,#___str_3
      0036E7 7E 89            [12] 2517 	mov	r6,#(___str_3 >> 8)
      0036E9 7D 80            [12] 2518 	mov	r5,#0x80
                                   2519 ;	calc.c:53: return;
      0036EB                       2520 00367$:
                                   2521 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0036EB 8F 82            [24] 2522 	mov	dpl,r7
      0036ED 8E 83            [24] 2523 	mov	dph,r6
      0036EF 8D F0            [24] 2524 	mov	b,r5
      0036F1 12 70 CC         [24] 2525 	lcall	__gptrget
      0036F4 FC               [12] 2526 	mov	r4,a
      0036F5 60 10            [24] 2527 	jz	00262$
      0036F7 7B 00            [12] 2528 	mov	r3,#0x00
      0036F9 8C 82            [24] 2529 	mov	dpl,r4
      0036FB 8B 83            [24] 2530 	mov	dph,r3
      0036FD 12 2B 70         [24] 2531 	lcall	_putchar
      003700 0F               [12] 2532 	inc	r7
                                   2533 ;	calc.c:145: printstr("\r\n");
      003701 BF 00 E7         [24] 2534 	cjne	r7,#0x00,00367$
      003704 0E               [12] 2535 	inc	r6
      003705 80 E4            [24] 2536 	sjmp	00367$
      003707                       2537 00262$:
                                   2538 ;	calc.c:146: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      003707 E5 08            [12] 2539 	mov	a,_bp
      003709 24 12            [12] 2540 	add	a,#0x12
      00370B F8               [12] 2541 	mov	r0,a
      00370C 86 07            [24] 2542 	mov	ar7,@r0
      00370E 08               [12] 2543 	inc	r0
      00370F 86 06            [24] 2544 	mov	ar6,@r0
      003711 08               [12] 2545 	inc	r0
      003712 86 05            [24] 2546 	mov	ar5,@r0
      003714 E5 08            [12] 2547 	mov	a,_bp
      003716 24 12            [12] 2548 	add	a,#0x12
      003718 F8               [12] 2549 	mov	r0,a
      003719 74 11            [12] 2550 	mov	a,#0x11
      00371B 26               [12] 2551 	add	a,@r0
      00371C FA               [12] 2552 	mov	r2,a
      00371D 74 40            [12] 2553 	mov	a,#0x40
      00371F 08               [12] 2554 	inc	r0
      003720 36               [12] 2555 	addc	a,@r0
      003721 FB               [12] 2556 	mov	r3,a
      003722 08               [12] 2557 	inc	r0
      003723 86 04            [24] 2558 	mov	ar4,@r0
      003725 8A 82            [24] 2559 	mov	dpl,r2
      003727 8B 83            [24] 2560 	mov	dph,r3
      003729 8C F0            [24] 2561 	mov	b,r4
      00372B 12 70 CC         [24] 2562 	lcall	__gptrget
      00372E FA               [12] 2563 	mov	r2,a
      00372F A3               [24] 2564 	inc	dptr
      003730 12 70 CC         [24] 2565 	lcall	__gptrget
      003733 FB               [12] 2566 	mov	r3,a
      003734 A3               [24] 2567 	inc	dptr
      003735 12 70 CC         [24] 2568 	lcall	__gptrget
      003738 FC               [12] 2569 	mov	r4,a
      003739 C0 07            [24] 2570 	push	ar7
      00373B C0 06            [24] 2571 	push	ar6
      00373D C0 05            [24] 2572 	push	ar5
      00373F 74 AB            [12] 2573 	mov	a,#_dump_peek
      003741 C0 E0            [24] 2574 	push	acc
      003743 74 32            [12] 2575 	mov	a,#(_dump_peek >> 8)
      003745 C0 E0            [24] 2576 	push	acc
      003747 8A 82            [24] 2577 	mov	dpl,r2
      003749 8B 83            [24] 2578 	mov	dph,r3
      00374B 8C F0            [24] 2579 	mov	b,r4
      00374D 12 2A 91         [24] 2580 	lcall	_stack_iter_peek
      003750 AB 82            [24] 2581 	mov	r3,dpl
      003752 AC 83            [24] 2582 	mov	r4,dph
      003754 E5 81            [12] 2583 	mov	a,sp
      003756 24 FB            [12] 2584 	add	a,#0xfb
      003758 F5 81            [12] 2585 	mov	sp,a
      00375A EB               [12] 2586 	mov	a,r3
      00375B 4C               [12] 2587 	orl	a,r4
      00375C 60 03            [24] 2588 	jz	01273$
      00375E 02 57 05         [24] 2589 	ljmp	00249$
      003761                       2590 01273$:
      003761 7F 67            [12] 2591 	mov	r7,#___str_4
      003763 7E 89            [12] 2592 	mov	r6,#(___str_4 >> 8)
      003765 7D 80            [12] 2593 	mov	r5,#0x80
                                   2594 ;	calc.c:53: return;
      003767                       2595 00370$:
                                   2596 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003767 8F 82            [24] 2597 	mov	dpl,r7
      003769 8E 83            [24] 2598 	mov	dph,r6
      00376B 8D F0            [24] 2599 	mov	b,r5
      00376D 12 70 CC         [24] 2600 	lcall	__gptrget
      003770 FC               [12] 2601 	mov	r4,a
      003771 70 03            [24] 2602 	jnz	01274$
      003773 02 57 05         [24] 2603 	ljmp	00249$
      003776                       2604 01274$:
      003776 7B 00            [12] 2605 	mov	r3,#0x00
      003778 8C 82            [24] 2606 	mov	dpl,r4
      00377A 8B 83            [24] 2607 	mov	dph,r3
      00377C 12 2B 70         [24] 2608 	lcall	_putchar
      00377F 0F               [12] 2609 	inc	r7
                                   2610 ;	calc.c:149: case 'p':
      003780 BF 00 E4         [24] 2611 	cjne	r7,#0x00,00370$
      003783 0E               [12] 2612 	inc	r6
      003784 80 E1            [24] 2613 	sjmp	00370$
      003786                       2614 00109$:
                                   2615 ;	calc.c:150: printstr("\r\n");
      003786 7F 64            [12] 2616 	mov	r7,#___str_3
      003788 7E 89            [12] 2617 	mov	r6,#(___str_3 >> 8)
      00378A 7D 80            [12] 2618 	mov	r5,#0x80
                                   2619 ;	calc.c:53: return;
      00378C                       2620 00373$:
                                   2621 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00378C 8F 82            [24] 2622 	mov	dpl,r7
      00378E 8E 83            [24] 2623 	mov	dph,r6
      003790 8D F0            [24] 2624 	mov	b,r5
      003792 12 70 CC         [24] 2625 	lcall	__gptrget
      003795 FC               [12] 2626 	mov	r4,a
      003796 60 10            [24] 2627 	jz	00266$
      003798 7B 00            [12] 2628 	mov	r3,#0x00
      00379A 8C 82            [24] 2629 	mov	dpl,r4
      00379C 8B 83            [24] 2630 	mov	dph,r3
      00379E 12 2B 70         [24] 2631 	lcall	_putchar
      0037A1 0F               [12] 2632 	inc	r7
                                   2633 ;	calc.c:150: printstr("\r\n");
      0037A2 BF 00 E7         [24] 2634 	cjne	r7,#0x00,00373$
      0037A5 0E               [12] 2635 	inc	r6
      0037A6 80 E4            [24] 2636 	sjmp	00373$
      0037A8                       2637 00266$:
                                   2638 ;	calc.c:151: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0037A8 E5 08            [12] 2639 	mov	a,_bp
      0037AA 24 15            [12] 2640 	add	a,#0x15
      0037AC FF               [12] 2641 	mov	r7,a
      0037AD 7E 00            [12] 2642 	mov	r6,#0x00
      0037AF 7D 40            [12] 2643 	mov	r5,#0x40
      0037B1 E5 08            [12] 2644 	mov	a,_bp
      0037B3 24 12            [12] 2645 	add	a,#0x12
      0037B5 F8               [12] 2646 	mov	r0,a
      0037B6 74 11            [12] 2647 	mov	a,#0x11
      0037B8 26               [12] 2648 	add	a,@r0
      0037B9 FA               [12] 2649 	mov	r2,a
      0037BA ED               [12] 2650 	mov	a,r5
      0037BB 08               [12] 2651 	inc	r0
      0037BC 36               [12] 2652 	addc	a,@r0
      0037BD FB               [12] 2653 	mov	r3,a
      0037BE 08               [12] 2654 	inc	r0
      0037BF 86 04            [24] 2655 	mov	ar4,@r0
      0037C1 8A 82            [24] 2656 	mov	dpl,r2
      0037C3 8B 83            [24] 2657 	mov	dph,r3
      0037C5 8C F0            [24] 2658 	mov	b,r4
      0037C7 12 70 CC         [24] 2659 	lcall	__gptrget
      0037CA FA               [12] 2660 	mov	r2,a
      0037CB A3               [24] 2661 	inc	dptr
      0037CC 12 70 CC         [24] 2662 	lcall	__gptrget
      0037CF FB               [12] 2663 	mov	r3,a
      0037D0 A3               [24] 2664 	inc	dptr
      0037D1 12 70 CC         [24] 2665 	lcall	__gptrget
      0037D4 FC               [12] 2666 	mov	r4,a
      0037D5 C0 07            [24] 2667 	push	ar7
      0037D7 C0 06            [24] 2668 	push	ar6
      0037D9 C0 05            [24] 2669 	push	ar5
      0037DB 8A 82            [24] 2670 	mov	dpl,r2
      0037DD 8B 83            [24] 2671 	mov	dph,r3
      0037DF 8C F0            [24] 2672 	mov	b,r4
      0037E1 12 27 83         [24] 2673 	lcall	_stack_pop
      0037E4 AB 82            [24] 2674 	mov	r3,dpl
      0037E6 AC 83            [24] 2675 	mov	r4,dph
      0037E8 15 81            [12] 2676 	dec	sp
      0037EA 15 81            [12] 2677 	dec	sp
      0037EC 15 81            [12] 2678 	dec	sp
      0037EE EB               [12] 2679 	mov	a,r3
      0037EF 4C               [12] 2680 	orl	a,r4
      0037F0 70 25            [24] 2681 	jnz	00111$
      0037F2 7F 67            [12] 2682 	mov	r7,#___str_4
      0037F4 7E 89            [12] 2683 	mov	r6,#(___str_4 >> 8)
      0037F6 7D 80            [12] 2684 	mov	r5,#0x80
                                   2685 ;	calc.c:53: return;
      0037F8                       2686 00376$:
                                   2687 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0037F8 8F 82            [24] 2688 	mov	dpl,r7
      0037FA 8E 83            [24] 2689 	mov	dph,r6
      0037FC 8D F0            [24] 2690 	mov	b,r5
      0037FE 12 70 CC         [24] 2691 	lcall	__gptrget
      003801 FC               [12] 2692 	mov	r4,a
      003802 70 03            [24] 2693 	jnz	01279$
      003804 02 57 05         [24] 2694 	ljmp	00249$
      003807                       2695 01279$:
      003807 7B 00            [12] 2696 	mov	r3,#0x00
      003809 8C 82            [24] 2697 	mov	dpl,r4
      00380B 8B 83            [24] 2698 	mov	dph,r3
      00380D 12 2B 70         [24] 2699 	lcall	_putchar
      003810 0F               [12] 2700 	inc	r7
                                   2701 ;	calc.c:151: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003811 BF 00 E4         [24] 2702 	cjne	r7,#0x00,00376$
      003814 0E               [12] 2703 	inc	r6
      003815 80 E1            [24] 2704 	sjmp	00376$
      003817                       2705 00111$:
                                   2706 ;	calc.c:153: printstr("PSPTOP\t");
      003817 7F 93            [12] 2707 	mov	r7,#___str_9
      003819 7E 89            [12] 2708 	mov	r6,#(___str_9 >> 8)
      00381B 7D 80            [12] 2709 	mov	r5,#0x80
                                   2710 ;	calc.c:53: return;
      00381D                       2711 00379$:
                                   2712 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00381D 8F 82            [24] 2713 	mov	dpl,r7
      00381F 8E 83            [24] 2714 	mov	dph,r6
      003821 8D F0            [24] 2715 	mov	b,r5
      003823 12 70 CC         [24] 2716 	lcall	__gptrget
      003826 FC               [12] 2717 	mov	r4,a
      003827 60 10            [24] 2718 	jz	00270$
      003829 7B 00            [12] 2719 	mov	r3,#0x00
      00382B 8C 82            [24] 2720 	mov	dpl,r4
      00382D 8B 83            [24] 2721 	mov	dph,r3
      00382F 12 2B 70         [24] 2722 	lcall	_putchar
      003832 0F               [12] 2723 	inc	r7
                                   2724 ;	calc.c:153: printstr("PSPTOP\t");
      003833 BF 00 E7         [24] 2725 	cjne	r7,#0x00,00379$
      003836 0E               [12] 2726 	inc	r6
      003837 80 E4            [24] 2727 	sjmp	00379$
      003839                       2728 00270$:
                                   2729 ;	calc.c:154: printall(d0);
      003839 E5 08            [12] 2730 	mov	a,_bp
      00383B 24 15            [12] 2731 	add	a,#0x15
      00383D F8               [12] 2732 	mov	r0,a
      00383E 86 07            [24] 2733 	mov	ar7,@r0
      003840 08               [12] 2734 	inc	r0
      003841 86 06            [24] 2735 	mov	ar6,@r0
      003843 08               [12] 2736 	inc	r0
      003844 86 05            [24] 2737 	mov	ar5,@r0
      003846 08               [12] 2738 	inc	r0
      003847 86 04            [24] 2739 	mov	ar4,@r0
      003849 E5 08            [12] 2740 	mov	a,_bp
      00384B 24 1D            [12] 2741 	add	a,#0x1d
      00384D F8               [12] 2742 	mov	r0,a
      00384E A6 07            [24] 2743 	mov	@r0,ar7
      003850 08               [12] 2744 	inc	r0
      003851 A6 06            [24] 2745 	mov	@r0,ar6
      003853 08               [12] 2746 	inc	r0
      003854 A6 05            [24] 2747 	mov	@r0,ar5
      003856 08               [12] 2748 	inc	r0
      003857 A6 04            [24] 2749 	mov	@r0,ar4
                                   2750 ;	calc.c:66: printf("%08lx\t", d);
      003859 C0 07            [24] 2751 	push	ar7
      00385B C0 06            [24] 2752 	push	ar6
      00385D C0 05            [24] 2753 	push	ar5
      00385F C0 04            [24] 2754 	push	ar4
      003861 74 4D            [12] 2755 	mov	a,#___str_0
      003863 C0 E0            [24] 2756 	push	acc
      003865 74 89            [12] 2757 	mov	a,#(___str_0 >> 8)
      003867 C0 E0            [24] 2758 	push	acc
      003869 74 80            [12] 2759 	mov	a,#0x80
      00386B C0 E0            [24] 2760 	push	acc
      00386D 12 70 93         [24] 2761 	lcall	_printf
      003870 E5 81            [12] 2762 	mov	a,sp
      003872 24 F9            [12] 2763 	add	a,#0xf9
      003874 F5 81            [12] 2764 	mov	sp,a
                                   2765 ;	calc.c:67: printf("% 11ld\t", d);
      003876 E5 08            [12] 2766 	mov	a,_bp
      003878 24 1D            [12] 2767 	add	a,#0x1d
      00387A F8               [12] 2768 	mov	r0,a
      00387B E6               [12] 2769 	mov	a,@r0
      00387C C0 E0            [24] 2770 	push	acc
      00387E 08               [12] 2771 	inc	r0
      00387F E6               [12] 2772 	mov	a,@r0
      003880 C0 E0            [24] 2773 	push	acc
      003882 08               [12] 2774 	inc	r0
      003883 E6               [12] 2775 	mov	a,@r0
      003884 C0 E0            [24] 2776 	push	acc
      003886 08               [12] 2777 	inc	r0
      003887 E6               [12] 2778 	mov	a,@r0
      003888 C0 E0            [24] 2779 	push	acc
      00388A 74 54            [12] 2780 	mov	a,#___str_1
      00388C C0 E0            [24] 2781 	push	acc
      00388E 74 89            [12] 2782 	mov	a,#(___str_1 >> 8)
      003890 C0 E0            [24] 2783 	push	acc
      003892 74 80            [12] 2784 	mov	a,#0x80
      003894 C0 E0            [24] 2785 	push	acc
      003896 12 70 93         [24] 2786 	lcall	_printf
      003899 E5 81            [12] 2787 	mov	a,sp
      00389B 24 F9            [12] 2788 	add	a,#0xf9
      00389D F5 81            [12] 2789 	mov	sp,a
                                   2790 ;	calc.c:68: printf("%011lo\t", d);
      00389F E5 08            [12] 2791 	mov	a,_bp
      0038A1 24 1D            [12] 2792 	add	a,#0x1d
      0038A3 F8               [12] 2793 	mov	r0,a
      0038A4 E6               [12] 2794 	mov	a,@r0
      0038A5 C0 E0            [24] 2795 	push	acc
      0038A7 08               [12] 2796 	inc	r0
      0038A8 E6               [12] 2797 	mov	a,@r0
      0038A9 C0 E0            [24] 2798 	push	acc
      0038AB 08               [12] 2799 	inc	r0
      0038AC E6               [12] 2800 	mov	a,@r0
      0038AD C0 E0            [24] 2801 	push	acc
      0038AF 08               [12] 2802 	inc	r0
      0038B0 E6               [12] 2803 	mov	a,@r0
      0038B1 C0 E0            [24] 2804 	push	acc
      0038B3 74 5C            [12] 2805 	mov	a,#___str_2
      0038B5 C0 E0            [24] 2806 	push	acc
      0038B7 74 89            [12] 2807 	mov	a,#(___str_2 >> 8)
      0038B9 C0 E0            [24] 2808 	push	acc
      0038BB 74 80            [12] 2809 	mov	a,#0x80
      0038BD C0 E0            [24] 2810 	push	acc
      0038BF 12 70 93         [24] 2811 	lcall	_printf
      0038C2 E5 81            [12] 2812 	mov	a,sp
      0038C4 24 F9            [12] 2813 	add	a,#0xf9
      0038C6 F5 81            [12] 2814 	mov	sp,a
                                   2815 ;	calc.c:69: printbin(d);
      0038C8 E5 08            [12] 2816 	mov	a,_bp
      0038CA 24 1D            [12] 2817 	add	a,#0x1d
      0038CC F8               [12] 2818 	mov	r0,a
      0038CD 86 07            [24] 2819 	mov	ar7,@r0
      0038CF 08               [12] 2820 	inc	r0
      0038D0 86 06            [24] 2821 	mov	ar6,@r0
      0038D2 08               [12] 2822 	inc	r0
      0038D3 86 05            [24] 2823 	mov	ar5,@r0
      0038D5 08               [12] 2824 	inc	r0
      0038D6 86 02            [24] 2825 	mov	ar2,@r0
                                   2826 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      0038D8 E5 08            [12] 2827 	mov	a,_bp
      0038DA 24 21            [12] 2828 	add	a,#0x21
      0038DC F8               [12] 2829 	mov	r0,a
      0038DD E4               [12] 2830 	clr	a
      0038DE F6               [12] 2831 	mov	@r0,a
      0038DF 08               [12] 2832 	inc	r0
      0038E0 F6               [12] 2833 	mov	@r0,a
      0038E1 08               [12] 2834 	inc	r0
      0038E2 F6               [12] 2835 	mov	@r0,a
      0038E3 08               [12] 2836 	inc	r0
      0038E4 76 80            [12] 2837 	mov	@r0,#0x80
      0038E6                       2838 00381$:
                                   2839 ;	calc.c:60: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0038E6 E5 08            [12] 2840 	mov	a,_bp
      0038E8 24 07            [12] 2841 	add	a,#0x07
      0038EA F8               [12] 2842 	mov	r0,a
      0038EB A6 07            [24] 2843 	mov	@r0,ar7
      0038ED 08               [12] 2844 	inc	r0
      0038EE A6 06            [24] 2845 	mov	@r0,ar6
      0038F0 08               [12] 2846 	inc	r0
      0038F1 A6 05            [24] 2847 	mov	@r0,ar5
      0038F3 08               [12] 2848 	inc	r0
      0038F4 A6 02            [24] 2849 	mov	@r0,ar2
      0038F6 E5 08            [12] 2850 	mov	a,_bp
      0038F8 24 07            [12] 2851 	add	a,#0x07
      0038FA F8               [12] 2852 	mov	r0,a
      0038FB E5 08            [12] 2853 	mov	a,_bp
      0038FD 24 21            [12] 2854 	add	a,#0x21
      0038FF F9               [12] 2855 	mov	r1,a
      003900 E7               [12] 2856 	mov	a,@r1
      003901 56               [12] 2857 	anl	a,@r0
      003902 F6               [12] 2858 	mov	@r0,a
      003903 09               [12] 2859 	inc	r1
      003904 E7               [12] 2860 	mov	a,@r1
      003905 08               [12] 2861 	inc	r0
      003906 56               [12] 2862 	anl	a,@r0
      003907 F6               [12] 2863 	mov	@r0,a
      003908 09               [12] 2864 	inc	r1
      003909 E7               [12] 2865 	mov	a,@r1
      00390A 08               [12] 2866 	inc	r0
      00390B 56               [12] 2867 	anl	a,@r0
      00390C F6               [12] 2868 	mov	@r0,a
      00390D 09               [12] 2869 	inc	r1
      00390E E7               [12] 2870 	mov	a,@r1
      00390F 08               [12] 2871 	inc	r0
      003910 56               [12] 2872 	anl	a,@r0
      003911 F6               [12] 2873 	mov	@r0,a
      003912 E5 08            [12] 2874 	mov	a,_bp
      003914 24 07            [12] 2875 	add	a,#0x07
      003916 F8               [12] 2876 	mov	r0,a
      003917 E6               [12] 2877 	mov	a,@r0
      003918 08               [12] 2878 	inc	r0
      003919 46               [12] 2879 	orl	a,@r0
      00391A 08               [12] 2880 	inc	r0
      00391B 46               [12] 2881 	orl	a,@r0
      00391C 08               [12] 2882 	inc	r0
      00391D 46               [12] 2883 	orl	a,@r0
      00391E 60 06            [24] 2884 	jz	00504$
      003920 7B 31            [12] 2885 	mov	r3,#0x31
      003922 7C 00            [12] 2886 	mov	r4,#0x00
      003924 80 04            [24] 2887 	sjmp	00505$
      003926                       2888 00504$:
      003926 7B 30            [12] 2889 	mov	r3,#0x30
      003928 7C 00            [12] 2890 	mov	r4,#0x00
      00392A                       2891 00505$:
      00392A 8B 82            [24] 2892 	mov	dpl,r3
      00392C 8C 83            [24] 2893 	mov	dph,r4
      00392E 12 2B 70         [24] 2894 	lcall	_putchar
                                   2895 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      003931 E5 08            [12] 2896 	mov	a,_bp
      003933 24 21            [12] 2897 	add	a,#0x21
      003935 F8               [12] 2898 	mov	r0,a
      003936 08               [12] 2899 	inc	r0
      003937 08               [12] 2900 	inc	r0
      003938 08               [12] 2901 	inc	r0
      003939 E6               [12] 2902 	mov	a,@r0
      00393A C3               [12] 2903 	clr	c
      00393B 13               [12] 2904 	rrc	a
      00393C F6               [12] 2905 	mov	@r0,a
      00393D 18               [12] 2906 	dec	r0
      00393E E6               [12] 2907 	mov	a,@r0
      00393F 13               [12] 2908 	rrc	a
      003940 F6               [12] 2909 	mov	@r0,a
      003941 18               [12] 2910 	dec	r0
      003942 E6               [12] 2911 	mov	a,@r0
      003943 13               [12] 2912 	rrc	a
      003944 F6               [12] 2913 	mov	@r0,a
      003945 18               [12] 2914 	dec	r0
      003946 E6               [12] 2915 	mov	a,@r0
      003947 13               [12] 2916 	rrc	a
      003948 F6               [12] 2917 	mov	@r0,a
      003949 E5 08            [12] 2918 	mov	a,_bp
      00394B 24 21            [12] 2919 	add	a,#0x21
      00394D F8               [12] 2920 	mov	r0,a
      00394E E6               [12] 2921 	mov	a,@r0
      00394F 08               [12] 2922 	inc	r0
      003950 46               [12] 2923 	orl	a,@r0
      003951 08               [12] 2924 	inc	r0
      003952 46               [12] 2925 	orl	a,@r0
      003953 08               [12] 2926 	inc	r0
      003954 46               [12] 2927 	orl	a,@r0
      003955 70 8F            [24] 2928 	jnz	00381$
                                   2929 ;	calc.c:155: printstr("\r\n");
      003957 7F 64            [12] 2930 	mov	r7,#___str_3
      003959 7E 89            [12] 2931 	mov	r6,#(___str_3 >> 8)
      00395B 7D 80            [12] 2932 	mov	r5,#0x80
                                   2933 ;	calc.c:53: return;
      00395D                       2934 00384$:
                                   2935 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00395D 8F 82            [24] 2936 	mov	dpl,r7
      00395F 8E 83            [24] 2937 	mov	dph,r6
      003961 8D F0            [24] 2938 	mov	b,r5
      003963 12 70 CC         [24] 2939 	lcall	__gptrget
      003966 FC               [12] 2940 	mov	r4,a
      003967 70 03            [24] 2941 	jnz	01285$
      003969 02 57 05         [24] 2942 	ljmp	00249$
      00396C                       2943 01285$:
      00396C 7B 00            [12] 2944 	mov	r3,#0x00
      00396E 8C 82            [24] 2945 	mov	dpl,r4
      003970 8B 83            [24] 2946 	mov	dph,r3
      003972 12 2B 70         [24] 2947 	lcall	_putchar
      003975 0F               [12] 2948 	inc	r7
                                   2949 ;	calc.c:158: case 'P':
      003976 BF 00 E4         [24] 2950 	cjne	r7,#0x00,00384$
      003979 0E               [12] 2951 	inc	r6
      00397A 80 E1            [24] 2952 	sjmp	00384$
      00397C                       2953 00113$:
                                   2954 ;	calc.c:159: printstr("\r\n");
      00397C 7F 64            [12] 2955 	mov	r7,#___str_3
      00397E 7E 89            [12] 2956 	mov	r6,#(___str_3 >> 8)
      003980 7D 80            [12] 2957 	mov	r5,#0x80
                                   2958 ;	calc.c:53: return;
      003982                       2959 00387$:
                                   2960 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003982 8F 82            [24] 2961 	mov	dpl,r7
      003984 8E 83            [24] 2962 	mov	dph,r6
      003986 8D F0            [24] 2963 	mov	b,r5
      003988 12 70 CC         [24] 2964 	lcall	__gptrget
      00398B FC               [12] 2965 	mov	r4,a
      00398C 60 10            [24] 2966 	jz	00277$
      00398E 7B 00            [12] 2967 	mov	r3,#0x00
      003990 8C 82            [24] 2968 	mov	dpl,r4
      003992 8B 83            [24] 2969 	mov	dph,r3
      003994 12 2B 70         [24] 2970 	lcall	_putchar
      003997 0F               [12] 2971 	inc	r7
                                   2972 ;	calc.c:159: printstr("\r\n");
      003998 BF 00 E7         [24] 2973 	cjne	r7,#0x00,00387$
      00399B 0E               [12] 2974 	inc	r6
      00399C 80 E4            [24] 2975 	sjmp	00387$
      00399E                       2976 00277$:
                                   2977 ;	calc.c:160: (void)dump_pop(_ctx, delta);
      00399E E5 08            [12] 2978 	mov	a,_bp
      0039A0 24 FB            [12] 2979 	add	a,#0xfb
      0039A2 F8               [12] 2980 	mov	r0,a
      0039A3 E6               [12] 2981 	mov	a,@r0
      0039A4 C0 E0            [24] 2982 	push	acc
      0039A6 08               [12] 2983 	inc	r0
      0039A7 E6               [12] 2984 	mov	a,@r0
      0039A8 C0 E0            [24] 2985 	push	acc
      0039AA 08               [12] 2986 	inc	r0
      0039AB E6               [12] 2987 	mov	a,@r0
      0039AC C0 E0            [24] 2988 	push	acc
      0039AE A8 08            [24] 2989 	mov	r0,_bp
      0039B0 08               [12] 2990 	inc	r0
      0039B1 86 82            [24] 2991 	mov	dpl,@r0
      0039B3 08               [12] 2992 	inc	r0
      0039B4 86 83            [24] 2993 	mov	dph,@r0
      0039B6 08               [12] 2994 	inc	r0
      0039B7 86 F0            [24] 2995 	mov	b,@r0
      0039B9 12 2D 03         [24] 2996 	lcall	_dump_pop
      0039BC 15 81            [12] 2997 	dec	sp
      0039BE 15 81            [12] 2998 	dec	sp
      0039C0 15 81            [12] 2999 	dec	sp
                                   3000 ;	calc.c:161: break;
      0039C2 02 57 05         [24] 3001 	ljmp	00249$
                                   3002 ;	calc.c:162: case 'x':
      0039C5                       3003 00114$:
                                   3004 ;	calc.c:163: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0039C5 E5 08            [12] 3005 	mov	a,_bp
      0039C7 24 15            [12] 3006 	add	a,#0x15
      0039C9 FF               [12] 3007 	mov	r7,a
      0039CA 7E 00            [12] 3008 	mov	r6,#0x00
      0039CC 7D 40            [12] 3009 	mov	r5,#0x40
      0039CE E5 08            [12] 3010 	mov	a,_bp
      0039D0 24 12            [12] 3011 	add	a,#0x12
      0039D2 F8               [12] 3012 	mov	r0,a
      0039D3 E5 08            [12] 3013 	mov	a,_bp
      0039D5 24 07            [12] 3014 	add	a,#0x07
      0039D7 F9               [12] 3015 	mov	r1,a
      0039D8 74 11            [12] 3016 	mov	a,#0x11
      0039DA 26               [12] 3017 	add	a,@r0
      0039DB F7               [12] 3018 	mov	@r1,a
      0039DC 74 40            [12] 3019 	mov	a,#0x40
      0039DE 08               [12] 3020 	inc	r0
      0039DF 36               [12] 3021 	addc	a,@r0
      0039E0 09               [12] 3022 	inc	r1
      0039E1 F7               [12] 3023 	mov	@r1,a
      0039E2 08               [12] 3024 	inc	r0
      0039E3 09               [12] 3025 	inc	r1
      0039E4 E6               [12] 3026 	mov	a,@r0
      0039E5 F7               [12] 3027 	mov	@r1,a
      0039E6 E5 08            [12] 3028 	mov	a,_bp
      0039E8 24 07            [12] 3029 	add	a,#0x07
      0039EA F8               [12] 3030 	mov	r0,a
      0039EB 86 82            [24] 3031 	mov	dpl,@r0
      0039ED 08               [12] 3032 	inc	r0
      0039EE 86 83            [24] 3033 	mov	dph,@r0
      0039F0 08               [12] 3034 	inc	r0
      0039F1 86 F0            [24] 3035 	mov	b,@r0
      0039F3 12 70 CC         [24] 3036 	lcall	__gptrget
      0039F6 FA               [12] 3037 	mov	r2,a
      0039F7 A3               [24] 3038 	inc	dptr
      0039F8 12 70 CC         [24] 3039 	lcall	__gptrget
      0039FB FB               [12] 3040 	mov	r3,a
      0039FC A3               [24] 3041 	inc	dptr
      0039FD 12 70 CC         [24] 3042 	lcall	__gptrget
      003A00 FC               [12] 3043 	mov	r4,a
      003A01 C0 07            [24] 3044 	push	ar7
      003A03 C0 06            [24] 3045 	push	ar6
      003A05 C0 05            [24] 3046 	push	ar5
      003A07 8A 82            [24] 3047 	mov	dpl,r2
      003A09 8B 83            [24] 3048 	mov	dph,r3
      003A0B 8C F0            [24] 3049 	mov	b,r4
      003A0D 12 27 83         [24] 3050 	lcall	_stack_pop
      003A10 AB 82            [24] 3051 	mov	r3,dpl
      003A12 AC 83            [24] 3052 	mov	r4,dph
      003A14 15 81            [12] 3053 	dec	sp
      003A16 15 81            [12] 3054 	dec	sp
      003A18 15 81            [12] 3055 	dec	sp
      003A1A EB               [12] 3056 	mov	a,r3
      003A1B 4C               [12] 3057 	orl	a,r4
      003A1C 70 25            [24] 3058 	jnz	00119$
      003A1E 7F 9B            [12] 3059 	mov	r7,#___str_10
      003A20 7E 89            [12] 3060 	mov	r6,#(___str_10 >> 8)
      003A22 7D 80            [12] 3061 	mov	r5,#0x80
                                   3062 ;	calc.c:53: return;
      003A24                       3063 00390$:
                                   3064 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003A24 8F 82            [24] 3065 	mov	dpl,r7
      003A26 8E 83            [24] 3066 	mov	dph,r6
      003A28 8D F0            [24] 3067 	mov	b,r5
      003A2A 12 70 CC         [24] 3068 	lcall	__gptrget
      003A2D FC               [12] 3069 	mov	r4,a
      003A2E 70 03            [24] 3070 	jnz	01290$
      003A30 02 57 05         [24] 3071 	ljmp	00249$
      003A33                       3072 01290$:
      003A33 7B 00            [12] 3073 	mov	r3,#0x00
      003A35 8C 82            [24] 3074 	mov	dpl,r4
      003A37 8B 83            [24] 3075 	mov	dph,r3
      003A39 12 2B 70         [24] 3076 	lcall	_putchar
      003A3C 0F               [12] 3077 	inc	r7
                                   3078 ;	calc.c:163: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003A3D BF 00 E4         [24] 3079 	cjne	r7,#0x00,00390$
      003A40 0E               [12] 3080 	inc	r6
      003A41 80 E1            [24] 3081 	sjmp	00390$
      003A43                       3082 00119$:
                                   3083 ;	calc.c:164: else if (!stack_pop(ctx->ps, &d1)) {
      003A43 E5 08            [12] 3084 	mov	a,_bp
      003A45 24 19            [12] 3085 	add	a,#0x19
      003A47 FF               [12] 3086 	mov	r7,a
      003A48 7E 00            [12] 3087 	mov	r6,#0x00
      003A4A 7D 40            [12] 3088 	mov	r5,#0x40
      003A4C E5 08            [12] 3089 	mov	a,_bp
      003A4E 24 07            [12] 3090 	add	a,#0x07
      003A50 F8               [12] 3091 	mov	r0,a
      003A51 86 82            [24] 3092 	mov	dpl,@r0
      003A53 08               [12] 3093 	inc	r0
      003A54 86 83            [24] 3094 	mov	dph,@r0
      003A56 08               [12] 3095 	inc	r0
      003A57 86 F0            [24] 3096 	mov	b,@r0
      003A59 12 70 CC         [24] 3097 	lcall	__gptrget
      003A5C FA               [12] 3098 	mov	r2,a
      003A5D A3               [24] 3099 	inc	dptr
      003A5E 12 70 CC         [24] 3100 	lcall	__gptrget
      003A61 FB               [12] 3101 	mov	r3,a
      003A62 A3               [24] 3102 	inc	dptr
      003A63 12 70 CC         [24] 3103 	lcall	__gptrget
      003A66 FC               [12] 3104 	mov	r4,a
      003A67 C0 07            [24] 3105 	push	ar7
      003A69 C0 06            [24] 3106 	push	ar6
      003A6B C0 05            [24] 3107 	push	ar5
      003A6D 8A 82            [24] 3108 	mov	dpl,r2
      003A6F 8B 83            [24] 3109 	mov	dph,r3
      003A71 8C F0            [24] 3110 	mov	b,r4
      003A73 12 27 83         [24] 3111 	lcall	_stack_pop
      003A76 AB 82            [24] 3112 	mov	r3,dpl
      003A78 AC 83            [24] 3113 	mov	r4,dph
      003A7A 15 81            [12] 3114 	dec	sp
      003A7C 15 81            [12] 3115 	dec	sp
      003A7E 15 81            [12] 3116 	dec	sp
      003A80 EB               [12] 3117 	mov	a,r3
      003A81 4C               [12] 3118 	orl	a,r4
      003A82 70 63            [24] 3119 	jnz	00116$
                                   3120 ;	calc.c:165: (void)stack_push(ctx->ps, d0);
      003A84 E5 08            [12] 3121 	mov	a,_bp
      003A86 24 07            [12] 3122 	add	a,#0x07
      003A88 F8               [12] 3123 	mov	r0,a
      003A89 86 82            [24] 3124 	mov	dpl,@r0
      003A8B 08               [12] 3125 	inc	r0
      003A8C 86 83            [24] 3126 	mov	dph,@r0
      003A8E 08               [12] 3127 	inc	r0
      003A8F 86 F0            [24] 3128 	mov	b,@r0
      003A91 12 70 CC         [24] 3129 	lcall	__gptrget
      003A94 FA               [12] 3130 	mov	r2,a
      003A95 A3               [24] 3131 	inc	dptr
      003A96 12 70 CC         [24] 3132 	lcall	__gptrget
      003A99 FB               [12] 3133 	mov	r3,a
      003A9A A3               [24] 3134 	inc	dptr
      003A9B 12 70 CC         [24] 3135 	lcall	__gptrget
      003A9E FC               [12] 3136 	mov	r4,a
      003A9F E5 08            [12] 3137 	mov	a,_bp
      003AA1 24 15            [12] 3138 	add	a,#0x15
      003AA3 F8               [12] 3139 	mov	r0,a
      003AA4 E6               [12] 3140 	mov	a,@r0
      003AA5 C0 E0            [24] 3141 	push	acc
      003AA7 08               [12] 3142 	inc	r0
      003AA8 E6               [12] 3143 	mov	a,@r0
      003AA9 C0 E0            [24] 3144 	push	acc
      003AAB 08               [12] 3145 	inc	r0
      003AAC E6               [12] 3146 	mov	a,@r0
      003AAD C0 E0            [24] 3147 	push	acc
      003AAF 08               [12] 3148 	inc	r0
      003AB0 E6               [12] 3149 	mov	a,@r0
      003AB1 C0 E0            [24] 3150 	push	acc
      003AB3 8A 82            [24] 3151 	mov	dpl,r2
      003AB5 8B 83            [24] 3152 	mov	dph,r3
      003AB7 8C F0            [24] 3153 	mov	b,r4
      003AB9 12 26 B5         [24] 3154 	lcall	_stack_push
      003ABC E5 81            [12] 3155 	mov	a,sp
      003ABE 24 FC            [12] 3156 	add	a,#0xfc
      003AC0 F5 81            [12] 3157 	mov	sp,a
                                   3158 ;	calc.c:166: printstr("\r\nstack underflow\r\n");
      003AC2 7F 9B            [12] 3159 	mov	r7,#___str_10
      003AC4 7E 89            [12] 3160 	mov	r6,#(___str_10 >> 8)
      003AC6 7D 80            [12] 3161 	mov	r5,#0x80
                                   3162 ;	calc.c:53: return;
      003AC8                       3163 00393$:
                                   3164 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003AC8 8F 82            [24] 3165 	mov	dpl,r7
      003ACA 8E 83            [24] 3166 	mov	dph,r6
      003ACC 8D F0            [24] 3167 	mov	b,r5
      003ACE 12 70 CC         [24] 3168 	lcall	__gptrget
      003AD1 FC               [12] 3169 	mov	r4,a
      003AD2 70 03            [24] 3170 	jnz	01293$
      003AD4 02 57 05         [24] 3171 	ljmp	00249$
      003AD7                       3172 01293$:
      003AD7 7B 00            [12] 3173 	mov	r3,#0x00
      003AD9 8C 82            [24] 3174 	mov	dpl,r4
      003ADB 8B 83            [24] 3175 	mov	dph,r3
      003ADD 12 2B 70         [24] 3176 	lcall	_putchar
      003AE0 0F               [12] 3177 	inc	r7
                                   3178 ;	calc.c:166: printstr("\r\nstack underflow\r\n");
      003AE1 BF 00 E4         [24] 3179 	cjne	r7,#0x00,00393$
      003AE4 0E               [12] 3180 	inc	r6
      003AE5 80 E1            [24] 3181 	sjmp	00393$
      003AE7                       3182 00116$:
                                   3183 ;	calc.c:168: (void)stack_push(ctx->ps, d0);
      003AE7 E5 08            [12] 3184 	mov	a,_bp
      003AE9 24 07            [12] 3185 	add	a,#0x07
      003AEB F8               [12] 3186 	mov	r0,a
      003AEC 86 82            [24] 3187 	mov	dpl,@r0
      003AEE 08               [12] 3188 	inc	r0
      003AEF 86 83            [24] 3189 	mov	dph,@r0
      003AF1 08               [12] 3190 	inc	r0
      003AF2 86 F0            [24] 3191 	mov	b,@r0
      003AF4 12 70 CC         [24] 3192 	lcall	__gptrget
      003AF7 FA               [12] 3193 	mov	r2,a
      003AF8 A3               [24] 3194 	inc	dptr
      003AF9 12 70 CC         [24] 3195 	lcall	__gptrget
      003AFC FB               [12] 3196 	mov	r3,a
      003AFD A3               [24] 3197 	inc	dptr
      003AFE 12 70 CC         [24] 3198 	lcall	__gptrget
      003B01 FC               [12] 3199 	mov	r4,a
      003B02 E5 08            [12] 3200 	mov	a,_bp
      003B04 24 15            [12] 3201 	add	a,#0x15
      003B06 F8               [12] 3202 	mov	r0,a
      003B07 E6               [12] 3203 	mov	a,@r0
      003B08 C0 E0            [24] 3204 	push	acc
      003B0A 08               [12] 3205 	inc	r0
      003B0B E6               [12] 3206 	mov	a,@r0
      003B0C C0 E0            [24] 3207 	push	acc
      003B0E 08               [12] 3208 	inc	r0
      003B0F E6               [12] 3209 	mov	a,@r0
      003B10 C0 E0            [24] 3210 	push	acc
      003B12 08               [12] 3211 	inc	r0
      003B13 E6               [12] 3212 	mov	a,@r0
      003B14 C0 E0            [24] 3213 	push	acc
      003B16 8A 82            [24] 3214 	mov	dpl,r2
      003B18 8B 83            [24] 3215 	mov	dph,r3
      003B1A 8C F0            [24] 3216 	mov	b,r4
      003B1C 12 26 B5         [24] 3217 	lcall	_stack_push
      003B1F E5 81            [12] 3218 	mov	a,sp
      003B21 24 FC            [12] 3219 	add	a,#0xfc
      003B23 F5 81            [12] 3220 	mov	sp,a
                                   3221 ;	calc.c:169: (void)stack_push(ctx->ps, d1);
      003B25 E5 08            [12] 3222 	mov	a,_bp
      003B27 24 07            [12] 3223 	add	a,#0x07
      003B29 F8               [12] 3224 	mov	r0,a
      003B2A 86 82            [24] 3225 	mov	dpl,@r0
      003B2C 08               [12] 3226 	inc	r0
      003B2D 86 83            [24] 3227 	mov	dph,@r0
      003B2F 08               [12] 3228 	inc	r0
      003B30 86 F0            [24] 3229 	mov	b,@r0
      003B32 12 70 CC         [24] 3230 	lcall	__gptrget
      003B35 FA               [12] 3231 	mov	r2,a
      003B36 A3               [24] 3232 	inc	dptr
      003B37 12 70 CC         [24] 3233 	lcall	__gptrget
      003B3A FB               [12] 3234 	mov	r3,a
      003B3B A3               [24] 3235 	inc	dptr
      003B3C 12 70 CC         [24] 3236 	lcall	__gptrget
      003B3F FC               [12] 3237 	mov	r4,a
      003B40 E5 08            [12] 3238 	mov	a,_bp
      003B42 24 19            [12] 3239 	add	a,#0x19
      003B44 F8               [12] 3240 	mov	r0,a
      003B45 E6               [12] 3241 	mov	a,@r0
      003B46 C0 E0            [24] 3242 	push	acc
      003B48 08               [12] 3243 	inc	r0
      003B49 E6               [12] 3244 	mov	a,@r0
      003B4A C0 E0            [24] 3245 	push	acc
      003B4C 08               [12] 3246 	inc	r0
      003B4D E6               [12] 3247 	mov	a,@r0
      003B4E C0 E0            [24] 3248 	push	acc
      003B50 08               [12] 3249 	inc	r0
      003B51 E6               [12] 3250 	mov	a,@r0
      003B52 C0 E0            [24] 3251 	push	acc
      003B54 8A 82            [24] 3252 	mov	dpl,r2
      003B56 8B 83            [24] 3253 	mov	dph,r3
      003B58 8C F0            [24] 3254 	mov	b,r4
      003B5A 12 26 B5         [24] 3255 	lcall	_stack_push
      003B5D E5 81            [12] 3256 	mov	a,sp
      003B5F 24 FC            [12] 3257 	add	a,#0xfc
      003B61 F5 81            [12] 3258 	mov	sp,a
                                   3259 ;	calc.c:171: break;
      003B63 02 57 05         [24] 3260 	ljmp	00249$
                                   3261 ;	calc.c:172: case 'm':
      003B66                       3262 00121$:
                                   3263 ;	calc.c:173: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003B66 E5 08            [12] 3264 	mov	a,_bp
      003B68 24 15            [12] 3265 	add	a,#0x15
      003B6A FF               [12] 3266 	mov	r7,a
      003B6B 7E 00            [12] 3267 	mov	r6,#0x00
      003B6D 7D 40            [12] 3268 	mov	r5,#0x40
      003B6F E5 08            [12] 3269 	mov	a,_bp
      003B71 24 12            [12] 3270 	add	a,#0x12
      003B73 F8               [12] 3271 	mov	r0,a
      003B74 E5 08            [12] 3272 	mov	a,_bp
      003B76 24 07            [12] 3273 	add	a,#0x07
      003B78 F9               [12] 3274 	mov	r1,a
      003B79 74 11            [12] 3275 	mov	a,#0x11
      003B7B 26               [12] 3276 	add	a,@r0
      003B7C F7               [12] 3277 	mov	@r1,a
      003B7D 74 40            [12] 3278 	mov	a,#0x40
      003B7F 08               [12] 3279 	inc	r0
      003B80 36               [12] 3280 	addc	a,@r0
      003B81 09               [12] 3281 	inc	r1
      003B82 F7               [12] 3282 	mov	@r1,a
      003B83 08               [12] 3283 	inc	r0
      003B84 09               [12] 3284 	inc	r1
      003B85 E6               [12] 3285 	mov	a,@r0
      003B86 F7               [12] 3286 	mov	@r1,a
      003B87 E5 08            [12] 3287 	mov	a,_bp
      003B89 24 07            [12] 3288 	add	a,#0x07
      003B8B F8               [12] 3289 	mov	r0,a
      003B8C 86 82            [24] 3290 	mov	dpl,@r0
      003B8E 08               [12] 3291 	inc	r0
      003B8F 86 83            [24] 3292 	mov	dph,@r0
      003B91 08               [12] 3293 	inc	r0
      003B92 86 F0            [24] 3294 	mov	b,@r0
      003B94 12 70 CC         [24] 3295 	lcall	__gptrget
      003B97 FA               [12] 3296 	mov	r2,a
      003B98 A3               [24] 3297 	inc	dptr
      003B99 12 70 CC         [24] 3298 	lcall	__gptrget
      003B9C FB               [12] 3299 	mov	r3,a
      003B9D A3               [24] 3300 	inc	dptr
      003B9E 12 70 CC         [24] 3301 	lcall	__gptrget
      003BA1 FC               [12] 3302 	mov	r4,a
      003BA2 C0 07            [24] 3303 	push	ar7
      003BA4 C0 06            [24] 3304 	push	ar6
      003BA6 C0 05            [24] 3305 	push	ar5
      003BA8 8A 82            [24] 3306 	mov	dpl,r2
      003BAA 8B 83            [24] 3307 	mov	dph,r3
      003BAC 8C F0            [24] 3308 	mov	b,r4
      003BAE 12 27 83         [24] 3309 	lcall	_stack_pop
      003BB1 AB 82            [24] 3310 	mov	r3,dpl
      003BB3 AC 83            [24] 3311 	mov	r4,dph
      003BB5 15 81            [12] 3312 	dec	sp
      003BB7 15 81            [12] 3313 	dec	sp
      003BB9 15 81            [12] 3314 	dec	sp
      003BBB EB               [12] 3315 	mov	a,r3
      003BBC 4C               [12] 3316 	orl	a,r4
      003BBD 70 25            [24] 3317 	jnz	00125$
      003BBF 7F 9B            [12] 3318 	mov	r7,#___str_10
      003BC1 7E 89            [12] 3319 	mov	r6,#(___str_10 >> 8)
      003BC3 7D 80            [12] 3320 	mov	r5,#0x80
                                   3321 ;	calc.c:53: return;
      003BC5                       3322 00396$:
                                   3323 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003BC5 8F 82            [24] 3324 	mov	dpl,r7
      003BC7 8E 83            [24] 3325 	mov	dph,r6
      003BC9 8D F0            [24] 3326 	mov	b,r5
      003BCB 12 70 CC         [24] 3327 	lcall	__gptrget
      003BCE FC               [12] 3328 	mov	r4,a
      003BCF 70 03            [24] 3329 	jnz	01296$
      003BD1 02 57 05         [24] 3330 	ljmp	00249$
      003BD4                       3331 01296$:
      003BD4 7B 00            [12] 3332 	mov	r3,#0x00
      003BD6 8C 82            [24] 3333 	mov	dpl,r4
      003BD8 8B 83            [24] 3334 	mov	dph,r3
      003BDA 12 2B 70         [24] 3335 	lcall	_putchar
      003BDD 0F               [12] 3336 	inc	r7
                                   3337 ;	calc.c:173: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003BDE BF 00 E4         [24] 3338 	cjne	r7,#0x00,00396$
      003BE1 0E               [12] 3339 	inc	r6
      003BE2 80 E1            [24] 3340 	sjmp	00396$
      003BE4                       3341 00125$:
                                   3342 ;	calc.c:175: if (!stack_push(ctx->ss, d0)) {
      003BE4 E5 08            [12] 3343 	mov	a,_bp
      003BE6 24 12            [12] 3344 	add	a,#0x12
      003BE8 F8               [12] 3345 	mov	r0,a
      003BE9 74 14            [12] 3346 	mov	a,#0x14
      003BEB 26               [12] 3347 	add	a,@r0
      003BEC FA               [12] 3348 	mov	r2,a
      003BED 74 40            [12] 3349 	mov	a,#0x40
      003BEF 08               [12] 3350 	inc	r0
      003BF0 36               [12] 3351 	addc	a,@r0
      003BF1 FB               [12] 3352 	mov	r3,a
      003BF2 08               [12] 3353 	inc	r0
      003BF3 86 04            [24] 3354 	mov	ar4,@r0
      003BF5 8A 82            [24] 3355 	mov	dpl,r2
      003BF7 8B 83            [24] 3356 	mov	dph,r3
      003BF9 8C F0            [24] 3357 	mov	b,r4
      003BFB 12 70 CC         [24] 3358 	lcall	__gptrget
      003BFE FA               [12] 3359 	mov	r2,a
      003BFF A3               [24] 3360 	inc	dptr
      003C00 12 70 CC         [24] 3361 	lcall	__gptrget
      003C03 FB               [12] 3362 	mov	r3,a
      003C04 A3               [24] 3363 	inc	dptr
      003C05 12 70 CC         [24] 3364 	lcall	__gptrget
      003C08 FC               [12] 3365 	mov	r4,a
      003C09 E5 08            [12] 3366 	mov	a,_bp
      003C0B 24 15            [12] 3367 	add	a,#0x15
      003C0D F8               [12] 3368 	mov	r0,a
      003C0E E6               [12] 3369 	mov	a,@r0
      003C0F C0 E0            [24] 3370 	push	acc
      003C11 08               [12] 3371 	inc	r0
      003C12 E6               [12] 3372 	mov	a,@r0
      003C13 C0 E0            [24] 3373 	push	acc
      003C15 08               [12] 3374 	inc	r0
      003C16 E6               [12] 3375 	mov	a,@r0
      003C17 C0 E0            [24] 3376 	push	acc
      003C19 08               [12] 3377 	inc	r0
      003C1A E6               [12] 3378 	mov	a,@r0
      003C1B C0 E0            [24] 3379 	push	acc
      003C1D 8A 82            [24] 3380 	mov	dpl,r2
      003C1F 8B 83            [24] 3381 	mov	dph,r3
      003C21 8C F0            [24] 3382 	mov	b,r4
      003C23 12 26 B5         [24] 3383 	lcall	_stack_push
      003C26 AB 82            [24] 3384 	mov	r3,dpl
      003C28 AC 83            [24] 3385 	mov	r4,dph
      003C2A E5 81            [12] 3386 	mov	a,sp
      003C2C 24 FC            [12] 3387 	add	a,#0xfc
      003C2E F5 81            [12] 3388 	mov	sp,a
      003C30 EB               [12] 3389 	mov	a,r3
      003C31 4C               [12] 3390 	orl	a,r4
      003C32 60 03            [24] 3391 	jz	01298$
      003C34 02 57 05         [24] 3392 	ljmp	00249$
      003C37                       3393 01298$:
                                   3394 ;	calc.c:176: printstr("\r\nsecondary stack overflow\r\n");
      003C37 7F AF            [12] 3395 	mov	r7,#___str_11
      003C39 7E 89            [12] 3396 	mov	r6,#(___str_11 >> 8)
      003C3B 7D 80            [12] 3397 	mov	r5,#0x80
                                   3398 ;	calc.c:53: return;
      003C3D                       3399 00399$:
                                   3400 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003C3D 8F 82            [24] 3401 	mov	dpl,r7
      003C3F 8E 83            [24] 3402 	mov	dph,r6
      003C41 8D F0            [24] 3403 	mov	b,r5
      003C43 12 70 CC         [24] 3404 	lcall	__gptrget
      003C46 FC               [12] 3405 	mov	r4,a
      003C47 60 10            [24] 3406 	jz	00285$
      003C49 7B 00            [12] 3407 	mov	r3,#0x00
      003C4B 8C 82            [24] 3408 	mov	dpl,r4
      003C4D 8B 83            [24] 3409 	mov	dph,r3
      003C4F 12 2B 70         [24] 3410 	lcall	_putchar
      003C52 0F               [12] 3411 	inc	r7
                                   3412 ;	calc.c:176: printstr("\r\nsecondary stack overflow\r\n");
      003C53 BF 00 E7         [24] 3413 	cjne	r7,#0x00,00399$
      003C56 0E               [12] 3414 	inc	r6
      003C57 80 E4            [24] 3415 	sjmp	00399$
      003C59                       3416 00285$:
                                   3417 ;	calc.c:177: (void)stack_push(ctx->ps, d0);
      003C59 E5 08            [12] 3418 	mov	a,_bp
      003C5B 24 07            [12] 3419 	add	a,#0x07
      003C5D F8               [12] 3420 	mov	r0,a
      003C5E 86 82            [24] 3421 	mov	dpl,@r0
      003C60 08               [12] 3422 	inc	r0
      003C61 86 83            [24] 3423 	mov	dph,@r0
      003C63 08               [12] 3424 	inc	r0
      003C64 86 F0            [24] 3425 	mov	b,@r0
      003C66 12 70 CC         [24] 3426 	lcall	__gptrget
      003C69 FA               [12] 3427 	mov	r2,a
      003C6A A3               [24] 3428 	inc	dptr
      003C6B 12 70 CC         [24] 3429 	lcall	__gptrget
      003C6E FB               [12] 3430 	mov	r3,a
      003C6F A3               [24] 3431 	inc	dptr
      003C70 12 70 CC         [24] 3432 	lcall	__gptrget
      003C73 FC               [12] 3433 	mov	r4,a
      003C74 E5 08            [12] 3434 	mov	a,_bp
      003C76 24 15            [12] 3435 	add	a,#0x15
      003C78 F8               [12] 3436 	mov	r0,a
      003C79 E6               [12] 3437 	mov	a,@r0
      003C7A C0 E0            [24] 3438 	push	acc
      003C7C 08               [12] 3439 	inc	r0
      003C7D E6               [12] 3440 	mov	a,@r0
      003C7E C0 E0            [24] 3441 	push	acc
      003C80 08               [12] 3442 	inc	r0
      003C81 E6               [12] 3443 	mov	a,@r0
      003C82 C0 E0            [24] 3444 	push	acc
      003C84 08               [12] 3445 	inc	r0
      003C85 E6               [12] 3446 	mov	a,@r0
      003C86 C0 E0            [24] 3447 	push	acc
      003C88 8A 82            [24] 3448 	mov	dpl,r2
      003C8A 8B 83            [24] 3449 	mov	dph,r3
      003C8C 8C F0            [24] 3450 	mov	b,r4
      003C8E 12 26 B5         [24] 3451 	lcall	_stack_push
      003C91 E5 81            [12] 3452 	mov	a,sp
      003C93 24 FC            [12] 3453 	add	a,#0xfc
      003C95 F5 81            [12] 3454 	mov	sp,a
                                   3455 ;	calc.c:180: break;
      003C97 02 57 05         [24] 3456 	ljmp	00249$
                                   3457 ;	calc.c:181: case 'M':
      003C9A                       3458 00127$:
                                   3459 ;	calc.c:182: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003C9A E5 08            [12] 3460 	mov	a,_bp
      003C9C 24 15            [12] 3461 	add	a,#0x15
      003C9E FF               [12] 3462 	mov	r7,a
      003C9F 7E 00            [12] 3463 	mov	r6,#0x00
      003CA1 7D 40            [12] 3464 	mov	r5,#0x40
      003CA3 E5 08            [12] 3465 	mov	a,_bp
      003CA5 24 12            [12] 3466 	add	a,#0x12
      003CA7 F8               [12] 3467 	mov	r0,a
      003CA8 E5 08            [12] 3468 	mov	a,_bp
      003CAA 24 07            [12] 3469 	add	a,#0x07
      003CAC F9               [12] 3470 	mov	r1,a
      003CAD 74 14            [12] 3471 	mov	a,#0x14
      003CAF 26               [12] 3472 	add	a,@r0
      003CB0 F7               [12] 3473 	mov	@r1,a
      003CB1 74 40            [12] 3474 	mov	a,#0x40
      003CB3 08               [12] 3475 	inc	r0
      003CB4 36               [12] 3476 	addc	a,@r0
      003CB5 09               [12] 3477 	inc	r1
      003CB6 F7               [12] 3478 	mov	@r1,a
      003CB7 08               [12] 3479 	inc	r0
      003CB8 09               [12] 3480 	inc	r1
      003CB9 E6               [12] 3481 	mov	a,@r0
      003CBA F7               [12] 3482 	mov	@r1,a
      003CBB E5 08            [12] 3483 	mov	a,_bp
      003CBD 24 07            [12] 3484 	add	a,#0x07
      003CBF F8               [12] 3485 	mov	r0,a
      003CC0 86 82            [24] 3486 	mov	dpl,@r0
      003CC2 08               [12] 3487 	inc	r0
      003CC3 86 83            [24] 3488 	mov	dph,@r0
      003CC5 08               [12] 3489 	inc	r0
      003CC6 86 F0            [24] 3490 	mov	b,@r0
      003CC8 12 70 CC         [24] 3491 	lcall	__gptrget
      003CCB FA               [12] 3492 	mov	r2,a
      003CCC A3               [24] 3493 	inc	dptr
      003CCD 12 70 CC         [24] 3494 	lcall	__gptrget
      003CD0 FB               [12] 3495 	mov	r3,a
      003CD1 A3               [24] 3496 	inc	dptr
      003CD2 12 70 CC         [24] 3497 	lcall	__gptrget
      003CD5 FC               [12] 3498 	mov	r4,a
      003CD6 C0 07            [24] 3499 	push	ar7
      003CD8 C0 06            [24] 3500 	push	ar6
      003CDA C0 05            [24] 3501 	push	ar5
      003CDC 8A 82            [24] 3502 	mov	dpl,r2
      003CDE 8B 83            [24] 3503 	mov	dph,r3
      003CE0 8C F0            [24] 3504 	mov	b,r4
      003CE2 12 27 83         [24] 3505 	lcall	_stack_pop
      003CE5 AB 82            [24] 3506 	mov	r3,dpl
      003CE7 AC 83            [24] 3507 	mov	r4,dph
      003CE9 15 81            [12] 3508 	dec	sp
      003CEB 15 81            [12] 3509 	dec	sp
      003CED 15 81            [12] 3510 	dec	sp
      003CEF EB               [12] 3511 	mov	a,r3
      003CF0 4C               [12] 3512 	orl	a,r4
      003CF1 70 25            [24] 3513 	jnz	00131$
      003CF3 7F CC            [12] 3514 	mov	r7,#___str_12
      003CF5 7E 89            [12] 3515 	mov	r6,#(___str_12 >> 8)
      003CF7 7D 80            [12] 3516 	mov	r5,#0x80
                                   3517 ;	calc.c:53: return;
      003CF9                       3518 00402$:
                                   3519 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003CF9 8F 82            [24] 3520 	mov	dpl,r7
      003CFB 8E 83            [24] 3521 	mov	dph,r6
      003CFD 8D F0            [24] 3522 	mov	b,r5
      003CFF 12 70 CC         [24] 3523 	lcall	__gptrget
      003D02 FC               [12] 3524 	mov	r4,a
      003D03 70 03            [24] 3525 	jnz	01302$
      003D05 02 57 05         [24] 3526 	ljmp	00249$
      003D08                       3527 01302$:
      003D08 7B 00            [12] 3528 	mov	r3,#0x00
      003D0A 8C 82            [24] 3529 	mov	dpl,r4
      003D0C 8B 83            [24] 3530 	mov	dph,r3
      003D0E 12 2B 70         [24] 3531 	lcall	_putchar
      003D11 0F               [12] 3532 	inc	r7
                                   3533 ;	calc.c:182: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003D12 BF 00 E4         [24] 3534 	cjne	r7,#0x00,00402$
      003D15 0E               [12] 3535 	inc	r6
      003D16 80 E1            [24] 3536 	sjmp	00402$
      003D18                       3537 00131$:
                                   3538 ;	calc.c:184: if (!stack_push(ctx->ps, d0)) {
      003D18 E5 08            [12] 3539 	mov	a,_bp
      003D1A 24 12            [12] 3540 	add	a,#0x12
      003D1C F8               [12] 3541 	mov	r0,a
      003D1D 74 11            [12] 3542 	mov	a,#0x11
      003D1F 26               [12] 3543 	add	a,@r0
      003D20 FA               [12] 3544 	mov	r2,a
      003D21 74 40            [12] 3545 	mov	a,#0x40
      003D23 08               [12] 3546 	inc	r0
      003D24 36               [12] 3547 	addc	a,@r0
      003D25 FB               [12] 3548 	mov	r3,a
      003D26 08               [12] 3549 	inc	r0
      003D27 86 04            [24] 3550 	mov	ar4,@r0
      003D29 8A 82            [24] 3551 	mov	dpl,r2
      003D2B 8B 83            [24] 3552 	mov	dph,r3
      003D2D 8C F0            [24] 3553 	mov	b,r4
      003D2F 12 70 CC         [24] 3554 	lcall	__gptrget
      003D32 FA               [12] 3555 	mov	r2,a
      003D33 A3               [24] 3556 	inc	dptr
      003D34 12 70 CC         [24] 3557 	lcall	__gptrget
      003D37 FB               [12] 3558 	mov	r3,a
      003D38 A3               [24] 3559 	inc	dptr
      003D39 12 70 CC         [24] 3560 	lcall	__gptrget
      003D3C FC               [12] 3561 	mov	r4,a
      003D3D E5 08            [12] 3562 	mov	a,_bp
      003D3F 24 15            [12] 3563 	add	a,#0x15
      003D41 F8               [12] 3564 	mov	r0,a
      003D42 E6               [12] 3565 	mov	a,@r0
      003D43 C0 E0            [24] 3566 	push	acc
      003D45 08               [12] 3567 	inc	r0
      003D46 E6               [12] 3568 	mov	a,@r0
      003D47 C0 E0            [24] 3569 	push	acc
      003D49 08               [12] 3570 	inc	r0
      003D4A E6               [12] 3571 	mov	a,@r0
      003D4B C0 E0            [24] 3572 	push	acc
      003D4D 08               [12] 3573 	inc	r0
      003D4E E6               [12] 3574 	mov	a,@r0
      003D4F C0 E0            [24] 3575 	push	acc
      003D51 8A 82            [24] 3576 	mov	dpl,r2
      003D53 8B 83            [24] 3577 	mov	dph,r3
      003D55 8C F0            [24] 3578 	mov	b,r4
      003D57 12 26 B5         [24] 3579 	lcall	_stack_push
      003D5A AB 82            [24] 3580 	mov	r3,dpl
      003D5C AC 83            [24] 3581 	mov	r4,dph
      003D5E E5 81            [12] 3582 	mov	a,sp
      003D60 24 FC            [12] 3583 	add	a,#0xfc
      003D62 F5 81            [12] 3584 	mov	sp,a
      003D64 EB               [12] 3585 	mov	a,r3
      003D65 4C               [12] 3586 	orl	a,r4
      003D66 60 03            [24] 3587 	jz	01304$
      003D68 02 57 05         [24] 3588 	ljmp	00249$
      003D6B                       3589 01304$:
                                   3590 ;	calc.c:185: printstr("\r\nstack overflow\r\n");
      003D6B 7F EA            [12] 3591 	mov	r7,#___str_13
      003D6D 7E 89            [12] 3592 	mov	r6,#(___str_13 >> 8)
      003D6F 7D 80            [12] 3593 	mov	r5,#0x80
                                   3594 ;	calc.c:53: return;
      003D71                       3595 00405$:
                                   3596 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003D71 8F 82            [24] 3597 	mov	dpl,r7
      003D73 8E 83            [24] 3598 	mov	dph,r6
      003D75 8D F0            [24] 3599 	mov	b,r5
      003D77 12 70 CC         [24] 3600 	lcall	__gptrget
      003D7A FC               [12] 3601 	mov	r4,a
      003D7B 60 10            [24] 3602 	jz	00289$
      003D7D 7B 00            [12] 3603 	mov	r3,#0x00
      003D7F 8C 82            [24] 3604 	mov	dpl,r4
      003D81 8B 83            [24] 3605 	mov	dph,r3
      003D83 12 2B 70         [24] 3606 	lcall	_putchar
      003D86 0F               [12] 3607 	inc	r7
                                   3608 ;	calc.c:185: printstr("\r\nstack overflow\r\n");
      003D87 BF 00 E7         [24] 3609 	cjne	r7,#0x00,00405$
      003D8A 0E               [12] 3610 	inc	r6
      003D8B 80 E4            [24] 3611 	sjmp	00405$
      003D8D                       3612 00289$:
                                   3613 ;	calc.c:186: (void)stack_push(ctx->ss, d0);
      003D8D E5 08            [12] 3614 	mov	a,_bp
      003D8F 24 07            [12] 3615 	add	a,#0x07
      003D91 F8               [12] 3616 	mov	r0,a
      003D92 86 82            [24] 3617 	mov	dpl,@r0
      003D94 08               [12] 3618 	inc	r0
      003D95 86 83            [24] 3619 	mov	dph,@r0
      003D97 08               [12] 3620 	inc	r0
      003D98 86 F0            [24] 3621 	mov	b,@r0
      003D9A 12 70 CC         [24] 3622 	lcall	__gptrget
      003D9D FA               [12] 3623 	mov	r2,a
      003D9E A3               [24] 3624 	inc	dptr
      003D9F 12 70 CC         [24] 3625 	lcall	__gptrget
      003DA2 FB               [12] 3626 	mov	r3,a
      003DA3 A3               [24] 3627 	inc	dptr
      003DA4 12 70 CC         [24] 3628 	lcall	__gptrget
      003DA7 FC               [12] 3629 	mov	r4,a
      003DA8 E5 08            [12] 3630 	mov	a,_bp
      003DAA 24 15            [12] 3631 	add	a,#0x15
      003DAC F8               [12] 3632 	mov	r0,a
      003DAD E6               [12] 3633 	mov	a,@r0
      003DAE C0 E0            [24] 3634 	push	acc
      003DB0 08               [12] 3635 	inc	r0
      003DB1 E6               [12] 3636 	mov	a,@r0
      003DB2 C0 E0            [24] 3637 	push	acc
      003DB4 08               [12] 3638 	inc	r0
      003DB5 E6               [12] 3639 	mov	a,@r0
      003DB6 C0 E0            [24] 3640 	push	acc
      003DB8 08               [12] 3641 	inc	r0
      003DB9 E6               [12] 3642 	mov	a,@r0
      003DBA C0 E0            [24] 3643 	push	acc
      003DBC 8A 82            [24] 3644 	mov	dpl,r2
      003DBE 8B 83            [24] 3645 	mov	dph,r3
      003DC0 8C F0            [24] 3646 	mov	b,r4
      003DC2 12 26 B5         [24] 3647 	lcall	_stack_push
      003DC5 E5 81            [12] 3648 	mov	a,sp
      003DC7 24 FC            [12] 3649 	add	a,#0xfc
      003DC9 F5 81            [12] 3650 	mov	sp,a
                                   3651 ;	calc.c:189: break;
      003DCB 02 57 05         [24] 3652 	ljmp	00249$
                                   3653 ;	calc.c:190: case 'u':
      003DCE                       3654 00133$:
                                   3655 ;	calc.c:191: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003DCE E5 08            [12] 3656 	mov	a,_bp
      003DD0 24 15            [12] 3657 	add	a,#0x15
      003DD2 FF               [12] 3658 	mov	r7,a
      003DD3 7E 00            [12] 3659 	mov	r6,#0x00
      003DD5 7D 40            [12] 3660 	mov	r5,#0x40
      003DD7 E5 08            [12] 3661 	mov	a,_bp
      003DD9 24 12            [12] 3662 	add	a,#0x12
      003DDB F8               [12] 3663 	mov	r0,a
      003DDC 74 11            [12] 3664 	mov	a,#0x11
      003DDE 26               [12] 3665 	add	a,@r0
      003DDF FA               [12] 3666 	mov	r2,a
      003DE0 ED               [12] 3667 	mov	a,r5
      003DE1 08               [12] 3668 	inc	r0
      003DE2 36               [12] 3669 	addc	a,@r0
      003DE3 FB               [12] 3670 	mov	r3,a
      003DE4 08               [12] 3671 	inc	r0
      003DE5 86 04            [24] 3672 	mov	ar4,@r0
      003DE7 8A 82            [24] 3673 	mov	dpl,r2
      003DE9 8B 83            [24] 3674 	mov	dph,r3
      003DEB 8C F0            [24] 3675 	mov	b,r4
      003DED 12 70 CC         [24] 3676 	lcall	__gptrget
      003DF0 FA               [12] 3677 	mov	r2,a
      003DF1 A3               [24] 3678 	inc	dptr
      003DF2 12 70 CC         [24] 3679 	lcall	__gptrget
      003DF5 FB               [12] 3680 	mov	r3,a
      003DF6 A3               [24] 3681 	inc	dptr
      003DF7 12 70 CC         [24] 3682 	lcall	__gptrget
      003DFA FC               [12] 3683 	mov	r4,a
      003DFB C0 07            [24] 3684 	push	ar7
      003DFD C0 06            [24] 3685 	push	ar6
      003DFF C0 05            [24] 3686 	push	ar5
      003E01 8A 82            [24] 3687 	mov	dpl,r2
      003E03 8B 83            [24] 3688 	mov	dph,r3
      003E05 8C F0            [24] 3689 	mov	b,r4
      003E07 12 28 5E         [24] 3690 	lcall	_stack_peek
      003E0A AB 82            [24] 3691 	mov	r3,dpl
      003E0C AC 83            [24] 3692 	mov	r4,dph
      003E0E 15 81            [12] 3693 	dec	sp
      003E10 15 81            [12] 3694 	dec	sp
      003E12 15 81            [12] 3695 	dec	sp
      003E14 EB               [12] 3696 	mov	a,r3
      003E15 4C               [12] 3697 	orl	a,r4
      003E16 70 25            [24] 3698 	jnz	00137$
      003E18 7F 9B            [12] 3699 	mov	r7,#___str_10
      003E1A 7E 89            [12] 3700 	mov	r6,#(___str_10 >> 8)
      003E1C 7D 80            [12] 3701 	mov	r5,#0x80
                                   3702 ;	calc.c:53: return;
      003E1E                       3703 00408$:
                                   3704 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003E1E 8F 82            [24] 3705 	mov	dpl,r7
      003E20 8E 83            [24] 3706 	mov	dph,r6
      003E22 8D F0            [24] 3707 	mov	b,r5
      003E24 12 70 CC         [24] 3708 	lcall	__gptrget
      003E27 FC               [12] 3709 	mov	r4,a
      003E28 70 03            [24] 3710 	jnz	01308$
      003E2A 02 57 05         [24] 3711 	ljmp	00249$
      003E2D                       3712 01308$:
      003E2D 7B 00            [12] 3713 	mov	r3,#0x00
      003E2F 8C 82            [24] 3714 	mov	dpl,r4
      003E31 8B 83            [24] 3715 	mov	dph,r3
      003E33 12 2B 70         [24] 3716 	lcall	_putchar
      003E36 0F               [12] 3717 	inc	r7
                                   3718 ;	calc.c:191: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003E37 BF 00 E4         [24] 3719 	cjne	r7,#0x00,00408$
      003E3A 0E               [12] 3720 	inc	r6
      003E3B 80 E1            [24] 3721 	sjmp	00408$
      003E3D                       3722 00137$:
                                   3723 ;	calc.c:192: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      003E3D E5 08            [12] 3724 	mov	a,_bp
      003E3F 24 12            [12] 3725 	add	a,#0x12
      003E41 F8               [12] 3726 	mov	r0,a
      003E42 74 14            [12] 3727 	mov	a,#0x14
      003E44 26               [12] 3728 	add	a,@r0
      003E45 FA               [12] 3729 	mov	r2,a
      003E46 74 40            [12] 3730 	mov	a,#0x40
      003E48 08               [12] 3731 	inc	r0
      003E49 36               [12] 3732 	addc	a,@r0
      003E4A FB               [12] 3733 	mov	r3,a
      003E4B 08               [12] 3734 	inc	r0
      003E4C 86 04            [24] 3735 	mov	ar4,@r0
      003E4E 8A 82            [24] 3736 	mov	dpl,r2
      003E50 8B 83            [24] 3737 	mov	dph,r3
      003E52 8C F0            [24] 3738 	mov	b,r4
      003E54 12 70 CC         [24] 3739 	lcall	__gptrget
      003E57 FA               [12] 3740 	mov	r2,a
      003E58 A3               [24] 3741 	inc	dptr
      003E59 12 70 CC         [24] 3742 	lcall	__gptrget
      003E5C FB               [12] 3743 	mov	r3,a
      003E5D A3               [24] 3744 	inc	dptr
      003E5E 12 70 CC         [24] 3745 	lcall	__gptrget
      003E61 FC               [12] 3746 	mov	r4,a
      003E62 E5 08            [12] 3747 	mov	a,_bp
      003E64 24 15            [12] 3748 	add	a,#0x15
      003E66 F8               [12] 3749 	mov	r0,a
      003E67 E6               [12] 3750 	mov	a,@r0
      003E68 C0 E0            [24] 3751 	push	acc
      003E6A 08               [12] 3752 	inc	r0
      003E6B E6               [12] 3753 	mov	a,@r0
      003E6C C0 E0            [24] 3754 	push	acc
      003E6E 08               [12] 3755 	inc	r0
      003E6F E6               [12] 3756 	mov	a,@r0
      003E70 C0 E0            [24] 3757 	push	acc
      003E72 08               [12] 3758 	inc	r0
      003E73 E6               [12] 3759 	mov	a,@r0
      003E74 C0 E0            [24] 3760 	push	acc
      003E76 8A 82            [24] 3761 	mov	dpl,r2
      003E78 8B 83            [24] 3762 	mov	dph,r3
      003E7A 8C F0            [24] 3763 	mov	b,r4
      003E7C 12 26 B5         [24] 3764 	lcall	_stack_push
      003E7F AB 82            [24] 3765 	mov	r3,dpl
      003E81 AC 83            [24] 3766 	mov	r4,dph
      003E83 E5 81            [12] 3767 	mov	a,sp
      003E85 24 FC            [12] 3768 	add	a,#0xfc
      003E87 F5 81            [12] 3769 	mov	sp,a
      003E89 EB               [12] 3770 	mov	a,r3
      003E8A 4C               [12] 3771 	orl	a,r4
      003E8B 60 03            [24] 3772 	jz	01310$
      003E8D 02 57 05         [24] 3773 	ljmp	00249$
      003E90                       3774 01310$:
      003E90 7F AF            [12] 3775 	mov	r7,#___str_11
      003E92 7E 89            [12] 3776 	mov	r6,#(___str_11 >> 8)
      003E94 7D 80            [12] 3777 	mov	r5,#0x80
                                   3778 ;	calc.c:53: return;
      003E96                       3779 00411$:
                                   3780 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003E96 8F 82            [24] 3781 	mov	dpl,r7
      003E98 8E 83            [24] 3782 	mov	dph,r6
      003E9A 8D F0            [24] 3783 	mov	b,r5
      003E9C 12 70 CC         [24] 3784 	lcall	__gptrget
      003E9F FC               [12] 3785 	mov	r4,a
      003EA0 70 03            [24] 3786 	jnz	01311$
      003EA2 02 57 05         [24] 3787 	ljmp	00249$
      003EA5                       3788 01311$:
      003EA5 7B 00            [12] 3789 	mov	r3,#0x00
      003EA7 8C 82            [24] 3790 	mov	dpl,r4
      003EA9 8B 83            [24] 3791 	mov	dph,r3
      003EAB 12 2B 70         [24] 3792 	lcall	_putchar
      003EAE 0F               [12] 3793 	inc	r7
                                   3794 ;	calc.c:194: case 'U':
      003EAF BF 00 E4         [24] 3795 	cjne	r7,#0x00,00411$
      003EB2 0E               [12] 3796 	inc	r6
      003EB3 80 E1            [24] 3797 	sjmp	00411$
      003EB5                       3798 00139$:
                                   3799 ;	calc.c:195: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003EB5 E5 08            [12] 3800 	mov	a,_bp
      003EB7 24 15            [12] 3801 	add	a,#0x15
      003EB9 FF               [12] 3802 	mov	r7,a
      003EBA 7E 00            [12] 3803 	mov	r6,#0x00
      003EBC 7D 40            [12] 3804 	mov	r5,#0x40
      003EBE E5 08            [12] 3805 	mov	a,_bp
      003EC0 24 12            [12] 3806 	add	a,#0x12
      003EC2 F8               [12] 3807 	mov	r0,a
      003EC3 74 14            [12] 3808 	mov	a,#0x14
      003EC5 26               [12] 3809 	add	a,@r0
      003EC6 FA               [12] 3810 	mov	r2,a
      003EC7 ED               [12] 3811 	mov	a,r5
      003EC8 08               [12] 3812 	inc	r0
      003EC9 36               [12] 3813 	addc	a,@r0
      003ECA FB               [12] 3814 	mov	r3,a
      003ECB 08               [12] 3815 	inc	r0
      003ECC 86 04            [24] 3816 	mov	ar4,@r0
      003ECE 8A 82            [24] 3817 	mov	dpl,r2
      003ED0 8B 83            [24] 3818 	mov	dph,r3
      003ED2 8C F0            [24] 3819 	mov	b,r4
      003ED4 12 70 CC         [24] 3820 	lcall	__gptrget
      003ED7 FA               [12] 3821 	mov	r2,a
      003ED8 A3               [24] 3822 	inc	dptr
      003ED9 12 70 CC         [24] 3823 	lcall	__gptrget
      003EDC FB               [12] 3824 	mov	r3,a
      003EDD A3               [24] 3825 	inc	dptr
      003EDE 12 70 CC         [24] 3826 	lcall	__gptrget
      003EE1 FC               [12] 3827 	mov	r4,a
      003EE2 C0 07            [24] 3828 	push	ar7
      003EE4 C0 06            [24] 3829 	push	ar6
      003EE6 C0 05            [24] 3830 	push	ar5
      003EE8 8A 82            [24] 3831 	mov	dpl,r2
      003EEA 8B 83            [24] 3832 	mov	dph,r3
      003EEC 8C F0            [24] 3833 	mov	b,r4
      003EEE 12 28 5E         [24] 3834 	lcall	_stack_peek
      003EF1 AB 82            [24] 3835 	mov	r3,dpl
      003EF3 AC 83            [24] 3836 	mov	r4,dph
      003EF5 15 81            [12] 3837 	dec	sp
      003EF7 15 81            [12] 3838 	dec	sp
      003EF9 15 81            [12] 3839 	dec	sp
      003EFB EB               [12] 3840 	mov	a,r3
      003EFC 4C               [12] 3841 	orl	a,r4
      003EFD 70 25            [24] 3842 	jnz	00143$
      003EFF 7F CC            [12] 3843 	mov	r7,#___str_12
      003F01 7E 89            [12] 3844 	mov	r6,#(___str_12 >> 8)
      003F03 7D 80            [12] 3845 	mov	r5,#0x80
                                   3846 ;	calc.c:53: return;
      003F05                       3847 00414$:
                                   3848 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003F05 8F 82            [24] 3849 	mov	dpl,r7
      003F07 8E 83            [24] 3850 	mov	dph,r6
      003F09 8D F0            [24] 3851 	mov	b,r5
      003F0B 12 70 CC         [24] 3852 	lcall	__gptrget
      003F0E FC               [12] 3853 	mov	r4,a
      003F0F 70 03            [24] 3854 	jnz	01314$
      003F11 02 57 05         [24] 3855 	ljmp	00249$
      003F14                       3856 01314$:
      003F14 7B 00            [12] 3857 	mov	r3,#0x00
      003F16 8C 82            [24] 3858 	mov	dpl,r4
      003F18 8B 83            [24] 3859 	mov	dph,r3
      003F1A 12 2B 70         [24] 3860 	lcall	_putchar
      003F1D 0F               [12] 3861 	inc	r7
                                   3862 ;	calc.c:195: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003F1E BF 00 E4         [24] 3863 	cjne	r7,#0x00,00414$
      003F21 0E               [12] 3864 	inc	r6
      003F22 80 E1            [24] 3865 	sjmp	00414$
      003F24                       3866 00143$:
                                   3867 ;	calc.c:196: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      003F24 E5 08            [12] 3868 	mov	a,_bp
      003F26 24 12            [12] 3869 	add	a,#0x12
      003F28 F8               [12] 3870 	mov	r0,a
      003F29 74 11            [12] 3871 	mov	a,#0x11
      003F2B 26               [12] 3872 	add	a,@r0
      003F2C FA               [12] 3873 	mov	r2,a
      003F2D 74 40            [12] 3874 	mov	a,#0x40
      003F2F 08               [12] 3875 	inc	r0
      003F30 36               [12] 3876 	addc	a,@r0
      003F31 FB               [12] 3877 	mov	r3,a
      003F32 08               [12] 3878 	inc	r0
      003F33 86 04            [24] 3879 	mov	ar4,@r0
      003F35 8A 82            [24] 3880 	mov	dpl,r2
      003F37 8B 83            [24] 3881 	mov	dph,r3
      003F39 8C F0            [24] 3882 	mov	b,r4
      003F3B 12 70 CC         [24] 3883 	lcall	__gptrget
      003F3E FA               [12] 3884 	mov	r2,a
      003F3F A3               [24] 3885 	inc	dptr
      003F40 12 70 CC         [24] 3886 	lcall	__gptrget
      003F43 FB               [12] 3887 	mov	r3,a
      003F44 A3               [24] 3888 	inc	dptr
      003F45 12 70 CC         [24] 3889 	lcall	__gptrget
      003F48 FC               [12] 3890 	mov	r4,a
      003F49 E5 08            [12] 3891 	mov	a,_bp
      003F4B 24 15            [12] 3892 	add	a,#0x15
      003F4D F8               [12] 3893 	mov	r0,a
      003F4E E6               [12] 3894 	mov	a,@r0
      003F4F C0 E0            [24] 3895 	push	acc
      003F51 08               [12] 3896 	inc	r0
      003F52 E6               [12] 3897 	mov	a,@r0
      003F53 C0 E0            [24] 3898 	push	acc
      003F55 08               [12] 3899 	inc	r0
      003F56 E6               [12] 3900 	mov	a,@r0
      003F57 C0 E0            [24] 3901 	push	acc
      003F59 08               [12] 3902 	inc	r0
      003F5A E6               [12] 3903 	mov	a,@r0
      003F5B C0 E0            [24] 3904 	push	acc
      003F5D 8A 82            [24] 3905 	mov	dpl,r2
      003F5F 8B 83            [24] 3906 	mov	dph,r3
      003F61 8C F0            [24] 3907 	mov	b,r4
      003F63 12 26 B5         [24] 3908 	lcall	_stack_push
      003F66 AB 82            [24] 3909 	mov	r3,dpl
      003F68 AC 83            [24] 3910 	mov	r4,dph
      003F6A E5 81            [12] 3911 	mov	a,sp
      003F6C 24 FC            [12] 3912 	add	a,#0xfc
      003F6E F5 81            [12] 3913 	mov	sp,a
      003F70 EB               [12] 3914 	mov	a,r3
      003F71 4C               [12] 3915 	orl	a,r4
      003F72 60 03            [24] 3916 	jz	01316$
      003F74 02 57 05         [24] 3917 	ljmp	00249$
      003F77                       3918 01316$:
      003F77 7F EA            [12] 3919 	mov	r7,#___str_13
      003F79 7E 89            [12] 3920 	mov	r6,#(___str_13 >> 8)
      003F7B 7D 80            [12] 3921 	mov	r5,#0x80
                                   3922 ;	calc.c:53: return;
      003F7D                       3923 00417$:
                                   3924 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003F7D 8F 82            [24] 3925 	mov	dpl,r7
      003F7F 8E 83            [24] 3926 	mov	dph,r6
      003F81 8D F0            [24] 3927 	mov	b,r5
      003F83 12 70 CC         [24] 3928 	lcall	__gptrget
      003F86 FC               [12] 3929 	mov	r4,a
      003F87 70 03            [24] 3930 	jnz	01317$
      003F89 02 57 05         [24] 3931 	ljmp	00249$
      003F8C                       3932 01317$:
      003F8C 7B 00            [12] 3933 	mov	r3,#0x00
      003F8E 8C 82            [24] 3934 	mov	dpl,r4
      003F90 8B 83            [24] 3935 	mov	dph,r3
      003F92 12 2B 70         [24] 3936 	lcall	_putchar
      003F95 0F               [12] 3937 	inc	r7
                                   3938 ;	calc.c:198: case 'T':
      003F96 BF 00 E4         [24] 3939 	cjne	r7,#0x00,00417$
      003F99 0E               [12] 3940 	inc	r6
      003F9A 80 E1            [24] 3941 	sjmp	00417$
      003F9C                       3942 00145$:
                                   3943 ;	calc.c:199: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003F9C E5 08            [12] 3944 	mov	a,_bp
      003F9E 24 15            [12] 3945 	add	a,#0x15
      003FA0 FF               [12] 3946 	mov	r7,a
      003FA1 7E 00            [12] 3947 	mov	r6,#0x00
      003FA3 7D 40            [12] 3948 	mov	r5,#0x40
      003FA5 E5 08            [12] 3949 	mov	a,_bp
      003FA7 24 12            [12] 3950 	add	a,#0x12
      003FA9 F8               [12] 3951 	mov	r0,a
      003FAA E5 08            [12] 3952 	mov	a,_bp
      003FAC 24 07            [12] 3953 	add	a,#0x07
      003FAE F9               [12] 3954 	mov	r1,a
      003FAF 74 11            [12] 3955 	mov	a,#0x11
      003FB1 26               [12] 3956 	add	a,@r0
      003FB2 F7               [12] 3957 	mov	@r1,a
      003FB3 74 40            [12] 3958 	mov	a,#0x40
      003FB5 08               [12] 3959 	inc	r0
      003FB6 36               [12] 3960 	addc	a,@r0
      003FB7 09               [12] 3961 	inc	r1
      003FB8 F7               [12] 3962 	mov	@r1,a
      003FB9 08               [12] 3963 	inc	r0
      003FBA 09               [12] 3964 	inc	r1
      003FBB E6               [12] 3965 	mov	a,@r0
      003FBC F7               [12] 3966 	mov	@r1,a
      003FBD E5 08            [12] 3967 	mov	a,_bp
      003FBF 24 07            [12] 3968 	add	a,#0x07
      003FC1 F8               [12] 3969 	mov	r0,a
      003FC2 86 82            [24] 3970 	mov	dpl,@r0
      003FC4 08               [12] 3971 	inc	r0
      003FC5 86 83            [24] 3972 	mov	dph,@r0
      003FC7 08               [12] 3973 	inc	r0
      003FC8 86 F0            [24] 3974 	mov	b,@r0
      003FCA 12 70 CC         [24] 3975 	lcall	__gptrget
      003FCD FA               [12] 3976 	mov	r2,a
      003FCE A3               [24] 3977 	inc	dptr
      003FCF 12 70 CC         [24] 3978 	lcall	__gptrget
      003FD2 FB               [12] 3979 	mov	r3,a
      003FD3 A3               [24] 3980 	inc	dptr
      003FD4 12 70 CC         [24] 3981 	lcall	__gptrget
      003FD7 FC               [12] 3982 	mov	r4,a
      003FD8 C0 07            [24] 3983 	push	ar7
      003FDA C0 06            [24] 3984 	push	ar6
      003FDC C0 05            [24] 3985 	push	ar5
      003FDE 8A 82            [24] 3986 	mov	dpl,r2
      003FE0 8B 83            [24] 3987 	mov	dph,r3
      003FE2 8C F0            [24] 3988 	mov	b,r4
      003FE4 12 27 83         [24] 3989 	lcall	_stack_pop
      003FE7 AB 82            [24] 3990 	mov	r3,dpl
      003FE9 AC 83            [24] 3991 	mov	r4,dph
      003FEB 15 81            [12] 3992 	dec	sp
      003FED 15 81            [12] 3993 	dec	sp
      003FEF 15 81            [12] 3994 	dec	sp
      003FF1 EB               [12] 3995 	mov	a,r3
      003FF2 4C               [12] 3996 	orl	a,r4
      003FF3 70 25            [24] 3997 	jnz	00150$
      003FF5 7F 9B            [12] 3998 	mov	r7,#___str_10
      003FF7 7E 89            [12] 3999 	mov	r6,#(___str_10 >> 8)
      003FF9 7D 80            [12] 4000 	mov	r5,#0x80
                                   4001 ;	calc.c:53: return;
      003FFB                       4002 00420$:
                                   4003 ;	calc.c:51: for (; *s; s++) putchar(*s);
      003FFB 8F 82            [24] 4004 	mov	dpl,r7
      003FFD 8E 83            [24] 4005 	mov	dph,r6
      003FFF 8D F0            [24] 4006 	mov	b,r5
      004001 12 70 CC         [24] 4007 	lcall	__gptrget
      004004 FC               [12] 4008 	mov	r4,a
      004005 70 03            [24] 4009 	jnz	01320$
      004007 02 57 05         [24] 4010 	ljmp	00249$
      00400A                       4011 01320$:
      00400A 7B 00            [12] 4012 	mov	r3,#0x00
      00400C 8C 82            [24] 4013 	mov	dpl,r4
      00400E 8B 83            [24] 4014 	mov	dph,r3
      004010 12 2B 70         [24] 4015 	lcall	_putchar
      004013 0F               [12] 4016 	inc	r7
                                   4017 ;	calc.c:199: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004014 BF 00 E4         [24] 4018 	cjne	r7,#0x00,00420$
      004017 0E               [12] 4019 	inc	r6
      004018 80 E1            [24] 4020 	sjmp	00420$
      00401A                       4021 00150$:
                                   4022 ;	calc.c:201: if (!stack_pop(ctx->ss, &d1)) {
      00401A E5 08            [12] 4023 	mov	a,_bp
      00401C 24 19            [12] 4024 	add	a,#0x19
      00401E FF               [12] 4025 	mov	r7,a
      00401F 7E 00            [12] 4026 	mov	r6,#0x00
      004021 7D 40            [12] 4027 	mov	r5,#0x40
      004023 E5 08            [12] 4028 	mov	a,_bp
      004025 24 12            [12] 4029 	add	a,#0x12
      004027 F8               [12] 4030 	mov	r0,a
      004028 E5 08            [12] 4031 	mov	a,_bp
      00402A 24 04            [12] 4032 	add	a,#0x04
      00402C F9               [12] 4033 	mov	r1,a
      00402D 74 14            [12] 4034 	mov	a,#0x14
      00402F 26               [12] 4035 	add	a,@r0
      004030 F7               [12] 4036 	mov	@r1,a
      004031 74 40            [12] 4037 	mov	a,#0x40
      004033 08               [12] 4038 	inc	r0
      004034 36               [12] 4039 	addc	a,@r0
      004035 09               [12] 4040 	inc	r1
      004036 F7               [12] 4041 	mov	@r1,a
      004037 08               [12] 4042 	inc	r0
      004038 09               [12] 4043 	inc	r1
      004039 E6               [12] 4044 	mov	a,@r0
      00403A F7               [12] 4045 	mov	@r1,a
      00403B E5 08            [12] 4046 	mov	a,_bp
      00403D 24 04            [12] 4047 	add	a,#0x04
      00403F F8               [12] 4048 	mov	r0,a
      004040 86 82            [24] 4049 	mov	dpl,@r0
      004042 08               [12] 4050 	inc	r0
      004043 86 83            [24] 4051 	mov	dph,@r0
      004045 08               [12] 4052 	inc	r0
      004046 86 F0            [24] 4053 	mov	b,@r0
      004048 12 70 CC         [24] 4054 	lcall	__gptrget
      00404B FA               [12] 4055 	mov	r2,a
      00404C A3               [24] 4056 	inc	dptr
      00404D 12 70 CC         [24] 4057 	lcall	__gptrget
      004050 FB               [12] 4058 	mov	r3,a
      004051 A3               [24] 4059 	inc	dptr
      004052 12 70 CC         [24] 4060 	lcall	__gptrget
      004055 FC               [12] 4061 	mov	r4,a
      004056 C0 07            [24] 4062 	push	ar7
      004058 C0 06            [24] 4063 	push	ar6
      00405A C0 05            [24] 4064 	push	ar5
      00405C 8A 82            [24] 4065 	mov	dpl,r2
      00405E 8B 83            [24] 4066 	mov	dph,r3
      004060 8C F0            [24] 4067 	mov	b,r4
      004062 12 27 83         [24] 4068 	lcall	_stack_pop
      004065 AB 82            [24] 4069 	mov	r3,dpl
      004067 AC 83            [24] 4070 	mov	r4,dph
      004069 15 81            [12] 4071 	dec	sp
      00406B 15 81            [12] 4072 	dec	sp
      00406D 15 81            [12] 4073 	dec	sp
      00406F EB               [12] 4074 	mov	a,r3
      004070 4C               [12] 4075 	orl	a,r4
      004071 70 63            [24] 4076 	jnz	00147$
                                   4077 ;	calc.c:202: printstr("\r\nsecondary stack underflow\r\n");
      004073 7F CC            [12] 4078 	mov	r7,#___str_12
      004075 7E 89            [12] 4079 	mov	r6,#(___str_12 >> 8)
      004077 7D 80            [12] 4080 	mov	r5,#0x80
                                   4081 ;	calc.c:53: return;
      004079                       4082 00423$:
                                   4083 ;	calc.c:51: for (; *s; s++) putchar(*s);
      004079 8F 82            [24] 4084 	mov	dpl,r7
      00407B 8E 83            [24] 4085 	mov	dph,r6
      00407D 8D F0            [24] 4086 	mov	b,r5
      00407F 12 70 CC         [24] 4087 	lcall	__gptrget
      004082 FC               [12] 4088 	mov	r4,a
      004083 60 10            [24] 4089 	jz	00301$
      004085 7B 00            [12] 4090 	mov	r3,#0x00
      004087 8C 82            [24] 4091 	mov	dpl,r4
      004089 8B 83            [24] 4092 	mov	dph,r3
      00408B 12 2B 70         [24] 4093 	lcall	_putchar
      00408E 0F               [12] 4094 	inc	r7
                                   4095 ;	calc.c:202: printstr("\r\nsecondary stack underflow\r\n");
      00408F BF 00 E7         [24] 4096 	cjne	r7,#0x00,00423$
      004092 0E               [12] 4097 	inc	r6
      004093 80 E4            [24] 4098 	sjmp	00423$
      004095                       4099 00301$:
                                   4100 ;	calc.c:203: (void)stack_push(ctx->ps, d0);
      004095 E5 08            [12] 4101 	mov	a,_bp
      004097 24 07            [12] 4102 	add	a,#0x07
      004099 F8               [12] 4103 	mov	r0,a
      00409A 86 82            [24] 4104 	mov	dpl,@r0
      00409C 08               [12] 4105 	inc	r0
      00409D 86 83            [24] 4106 	mov	dph,@r0
      00409F 08               [12] 4107 	inc	r0
      0040A0 86 F0            [24] 4108 	mov	b,@r0
      0040A2 12 70 CC         [24] 4109 	lcall	__gptrget
      0040A5 FA               [12] 4110 	mov	r2,a
      0040A6 A3               [24] 4111 	inc	dptr
      0040A7 12 70 CC         [24] 4112 	lcall	__gptrget
      0040AA FB               [12] 4113 	mov	r3,a
      0040AB A3               [24] 4114 	inc	dptr
      0040AC 12 70 CC         [24] 4115 	lcall	__gptrget
      0040AF FC               [12] 4116 	mov	r4,a
      0040B0 E5 08            [12] 4117 	mov	a,_bp
      0040B2 24 15            [12] 4118 	add	a,#0x15
      0040B4 F8               [12] 4119 	mov	r0,a
      0040B5 E6               [12] 4120 	mov	a,@r0
      0040B6 C0 E0            [24] 4121 	push	acc
      0040B8 08               [12] 4122 	inc	r0
      0040B9 E6               [12] 4123 	mov	a,@r0
      0040BA C0 E0            [24] 4124 	push	acc
      0040BC 08               [12] 4125 	inc	r0
      0040BD E6               [12] 4126 	mov	a,@r0
      0040BE C0 E0            [24] 4127 	push	acc
      0040C0 08               [12] 4128 	inc	r0
      0040C1 E6               [12] 4129 	mov	a,@r0
      0040C2 C0 E0            [24] 4130 	push	acc
      0040C4 8A 82            [24] 4131 	mov	dpl,r2
      0040C6 8B 83            [24] 4132 	mov	dph,r3
      0040C8 8C F0            [24] 4133 	mov	b,r4
      0040CA 12 26 B5         [24] 4134 	lcall	_stack_push
      0040CD E5 81            [12] 4135 	mov	a,sp
      0040CF 24 FC            [12] 4136 	add	a,#0xfc
      0040D1 F5 81            [12] 4137 	mov	sp,a
      0040D3 02 57 05         [24] 4138 	ljmp	00249$
      0040D6                       4139 00147$:
                                   4140 ;	calc.c:205: (void)stack_push(ctx->ps, d1);
      0040D6 E5 08            [12] 4141 	mov	a,_bp
      0040D8 24 07            [12] 4142 	add	a,#0x07
      0040DA F8               [12] 4143 	mov	r0,a
      0040DB 86 82            [24] 4144 	mov	dpl,@r0
      0040DD 08               [12] 4145 	inc	r0
      0040DE 86 83            [24] 4146 	mov	dph,@r0
      0040E0 08               [12] 4147 	inc	r0
      0040E1 86 F0            [24] 4148 	mov	b,@r0
      0040E3 12 70 CC         [24] 4149 	lcall	__gptrget
      0040E6 FA               [12] 4150 	mov	r2,a
      0040E7 A3               [24] 4151 	inc	dptr
      0040E8 12 70 CC         [24] 4152 	lcall	__gptrget
      0040EB FB               [12] 4153 	mov	r3,a
      0040EC A3               [24] 4154 	inc	dptr
      0040ED 12 70 CC         [24] 4155 	lcall	__gptrget
      0040F0 FC               [12] 4156 	mov	r4,a
      0040F1 E5 08            [12] 4157 	mov	a,_bp
      0040F3 24 19            [12] 4158 	add	a,#0x19
      0040F5 F8               [12] 4159 	mov	r0,a
      0040F6 E6               [12] 4160 	mov	a,@r0
      0040F7 C0 E0            [24] 4161 	push	acc
      0040F9 08               [12] 4162 	inc	r0
      0040FA E6               [12] 4163 	mov	a,@r0
      0040FB C0 E0            [24] 4164 	push	acc
      0040FD 08               [12] 4165 	inc	r0
      0040FE E6               [12] 4166 	mov	a,@r0
      0040FF C0 E0            [24] 4167 	push	acc
      004101 08               [12] 4168 	inc	r0
      004102 E6               [12] 4169 	mov	a,@r0
      004103 C0 E0            [24] 4170 	push	acc
      004105 8A 82            [24] 4171 	mov	dpl,r2
      004107 8B 83            [24] 4172 	mov	dph,r3
      004109 8C F0            [24] 4173 	mov	b,r4
      00410B 12 26 B5         [24] 4174 	lcall	_stack_push
      00410E E5 81            [12] 4175 	mov	a,sp
      004110 24 FC            [12] 4176 	add	a,#0xfc
      004112 F5 81            [12] 4177 	mov	sp,a
                                   4178 ;	calc.c:206: (void)stack_push(ctx->ss, d0);
      004114 E5 08            [12] 4179 	mov	a,_bp
      004116 24 04            [12] 4180 	add	a,#0x04
      004118 F8               [12] 4181 	mov	r0,a
      004119 86 82            [24] 4182 	mov	dpl,@r0
      00411B 08               [12] 4183 	inc	r0
      00411C 86 83            [24] 4184 	mov	dph,@r0
      00411E 08               [12] 4185 	inc	r0
      00411F 86 F0            [24] 4186 	mov	b,@r0
      004121 12 70 CC         [24] 4187 	lcall	__gptrget
      004124 FA               [12] 4188 	mov	r2,a
      004125 A3               [24] 4189 	inc	dptr
      004126 12 70 CC         [24] 4190 	lcall	__gptrget
      004129 FB               [12] 4191 	mov	r3,a
      00412A A3               [24] 4192 	inc	dptr
      00412B 12 70 CC         [24] 4193 	lcall	__gptrget
      00412E FC               [12] 4194 	mov	r4,a
      00412F E5 08            [12] 4195 	mov	a,_bp
      004131 24 15            [12] 4196 	add	a,#0x15
      004133 F8               [12] 4197 	mov	r0,a
      004134 E6               [12] 4198 	mov	a,@r0
      004135 C0 E0            [24] 4199 	push	acc
      004137 08               [12] 4200 	inc	r0
      004138 E6               [12] 4201 	mov	a,@r0
      004139 C0 E0            [24] 4202 	push	acc
      00413B 08               [12] 4203 	inc	r0
      00413C E6               [12] 4204 	mov	a,@r0
      00413D C0 E0            [24] 4205 	push	acc
      00413F 08               [12] 4206 	inc	r0
      004140 E6               [12] 4207 	mov	a,@r0
      004141 C0 E0            [24] 4208 	push	acc
      004143 8A 82            [24] 4209 	mov	dpl,r2
      004145 8B 83            [24] 4210 	mov	dph,r3
      004147 8C F0            [24] 4211 	mov	b,r4
      004149 12 26 B5         [24] 4212 	lcall	_stack_push
      00414C E5 81            [12] 4213 	mov	a,sp
      00414E 24 FC            [12] 4214 	add	a,#0xfc
      004150 F5 81            [12] 4215 	mov	sp,a
                                   4216 ;	calc.c:209: break;
      004152 02 57 05         [24] 4217 	ljmp	00249$
                                   4218 ;	calc.c:210: case 'X':
      004155                       4219 00152$:
                                   4220 ;	calc.c:211: t0 = ctx->ps;
      004155 E5 08            [12] 4221 	mov	a,_bp
      004157 24 12            [12] 4222 	add	a,#0x12
      004159 F8               [12] 4223 	mov	r0,a
      00415A E5 08            [12] 4224 	mov	a,_bp
      00415C 24 0B            [12] 4225 	add	a,#0x0b
      00415E F9               [12] 4226 	mov	r1,a
      00415F 74 11            [12] 4227 	mov	a,#0x11
      004161 26               [12] 4228 	add	a,@r0
      004162 F7               [12] 4229 	mov	@r1,a
      004163 74 40            [12] 4230 	mov	a,#0x40
      004165 08               [12] 4231 	inc	r0
      004166 36               [12] 4232 	addc	a,@r0
      004167 09               [12] 4233 	inc	r1
      004168 F7               [12] 4234 	mov	@r1,a
      004169 08               [12] 4235 	inc	r0
      00416A 09               [12] 4236 	inc	r1
      00416B E6               [12] 4237 	mov	a,@r0
      00416C F7               [12] 4238 	mov	@r1,a
      00416D E5 08            [12] 4239 	mov	a,_bp
      00416F 24 0B            [12] 4240 	add	a,#0x0b
      004171 F8               [12] 4241 	mov	r0,a
      004172 86 82            [24] 4242 	mov	dpl,@r0
      004174 08               [12] 4243 	inc	r0
      004175 86 83            [24] 4244 	mov	dph,@r0
      004177 08               [12] 4245 	inc	r0
      004178 86 F0            [24] 4246 	mov	b,@r0
      00417A 12 70 CC         [24] 4247 	lcall	__gptrget
      00417D FF               [12] 4248 	mov	r7,a
      00417E A3               [24] 4249 	inc	dptr
      00417F 12 70 CC         [24] 4250 	lcall	__gptrget
      004182 FE               [12] 4251 	mov	r6,a
      004183 A3               [24] 4252 	inc	dptr
      004184 12 70 CC         [24] 4253 	lcall	__gptrget
      004187 FD               [12] 4254 	mov	r5,a
                                   4255 ;	calc.c:212: ctx->ps = ctx->ss;
      004188 E5 08            [12] 4256 	mov	a,_bp
      00418A 24 12            [12] 4257 	add	a,#0x12
      00418C F8               [12] 4258 	mov	r0,a
      00418D E5 08            [12] 4259 	mov	a,_bp
      00418F 24 07            [12] 4260 	add	a,#0x07
      004191 F9               [12] 4261 	mov	r1,a
      004192 74 14            [12] 4262 	mov	a,#0x14
      004194 26               [12] 4263 	add	a,@r0
      004195 F7               [12] 4264 	mov	@r1,a
      004196 74 40            [12] 4265 	mov	a,#0x40
      004198 08               [12] 4266 	inc	r0
      004199 36               [12] 4267 	addc	a,@r0
      00419A 09               [12] 4268 	inc	r1
      00419B F7               [12] 4269 	mov	@r1,a
      00419C 08               [12] 4270 	inc	r0
      00419D 09               [12] 4271 	inc	r1
      00419E E6               [12] 4272 	mov	a,@r0
      00419F F7               [12] 4273 	mov	@r1,a
      0041A0 E5 08            [12] 4274 	mov	a,_bp
      0041A2 24 07            [12] 4275 	add	a,#0x07
      0041A4 F8               [12] 4276 	mov	r0,a
      0041A5 86 82            [24] 4277 	mov	dpl,@r0
      0041A7 08               [12] 4278 	inc	r0
      0041A8 86 83            [24] 4279 	mov	dph,@r0
      0041AA 08               [12] 4280 	inc	r0
      0041AB 86 F0            [24] 4281 	mov	b,@r0
      0041AD 12 70 CC         [24] 4282 	lcall	__gptrget
      0041B0 FA               [12] 4283 	mov	r2,a
      0041B1 A3               [24] 4284 	inc	dptr
      0041B2 12 70 CC         [24] 4285 	lcall	__gptrget
      0041B5 FB               [12] 4286 	mov	r3,a
      0041B6 A3               [24] 4287 	inc	dptr
      0041B7 12 70 CC         [24] 4288 	lcall	__gptrget
      0041BA FC               [12] 4289 	mov	r4,a
      0041BB E5 08            [12] 4290 	mov	a,_bp
      0041BD 24 0B            [12] 4291 	add	a,#0x0b
      0041BF F8               [12] 4292 	mov	r0,a
      0041C0 86 82            [24] 4293 	mov	dpl,@r0
      0041C2 08               [12] 4294 	inc	r0
      0041C3 86 83            [24] 4295 	mov	dph,@r0
      0041C5 08               [12] 4296 	inc	r0
      0041C6 86 F0            [24] 4297 	mov	b,@r0
      0041C8 EA               [12] 4298 	mov	a,r2
      0041C9 12 6C 51         [24] 4299 	lcall	__gptrput
      0041CC A3               [24] 4300 	inc	dptr
      0041CD EB               [12] 4301 	mov	a,r3
      0041CE 12 6C 51         [24] 4302 	lcall	__gptrput
      0041D1 A3               [24] 4303 	inc	dptr
      0041D2 EC               [12] 4304 	mov	a,r4
      0041D3 12 6C 51         [24] 4305 	lcall	__gptrput
                                   4306 ;	calc.c:213: ctx->ss = t0;
      0041D6 E5 08            [12] 4307 	mov	a,_bp
      0041D8 24 07            [12] 4308 	add	a,#0x07
      0041DA F8               [12] 4309 	mov	r0,a
      0041DB 86 82            [24] 4310 	mov	dpl,@r0
      0041DD 08               [12] 4311 	inc	r0
      0041DE 86 83            [24] 4312 	mov	dph,@r0
      0041E0 08               [12] 4313 	inc	r0
      0041E1 86 F0            [24] 4314 	mov	b,@r0
      0041E3 EF               [12] 4315 	mov	a,r7
      0041E4 12 6C 51         [24] 4316 	lcall	__gptrput
      0041E7 A3               [24] 4317 	inc	dptr
      0041E8 EE               [12] 4318 	mov	a,r6
      0041E9 12 6C 51         [24] 4319 	lcall	__gptrput
      0041EC A3               [24] 4320 	inc	dptr
      0041ED ED               [12] 4321 	mov	a,r5
      0041EE 12 6C 51         [24] 4322 	lcall	__gptrput
                                   4323 ;	calc.c:214: break;
      0041F1 02 57 05         [24] 4324 	ljmp	00249$
                                   4325 ;	calc.c:215: case '+':
      0041F4                       4326 00153$:
                                   4327 ;	calc.c:216: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0041F4 E5 08            [12] 4328 	mov	a,_bp
      0041F6 24 15            [12] 4329 	add	a,#0x15
      0041F8 FF               [12] 4330 	mov	r7,a
      0041F9 7E 00            [12] 4331 	mov	r6,#0x00
      0041FB 7D 40            [12] 4332 	mov	r5,#0x40
      0041FD E5 08            [12] 4333 	mov	a,_bp
      0041FF 24 12            [12] 4334 	add	a,#0x12
      004201 F8               [12] 4335 	mov	r0,a
      004202 E5 08            [12] 4336 	mov	a,_bp
      004204 24 0B            [12] 4337 	add	a,#0x0b
      004206 F9               [12] 4338 	mov	r1,a
      004207 74 11            [12] 4339 	mov	a,#0x11
      004209 26               [12] 4340 	add	a,@r0
      00420A F7               [12] 4341 	mov	@r1,a
      00420B 74 40            [12] 4342 	mov	a,#0x40
      00420D 08               [12] 4343 	inc	r0
      00420E 36               [12] 4344 	addc	a,@r0
      00420F 09               [12] 4345 	inc	r1
      004210 F7               [12] 4346 	mov	@r1,a
      004211 08               [12] 4347 	inc	r0
      004212 09               [12] 4348 	inc	r1
      004213 E6               [12] 4349 	mov	a,@r0
      004214 F7               [12] 4350 	mov	@r1,a
      004215 E5 08            [12] 4351 	mov	a,_bp
      004217 24 0B            [12] 4352 	add	a,#0x0b
      004219 F8               [12] 4353 	mov	r0,a
      00421A 86 82            [24] 4354 	mov	dpl,@r0
      00421C 08               [12] 4355 	inc	r0
      00421D 86 83            [24] 4356 	mov	dph,@r0
      00421F 08               [12] 4357 	inc	r0
      004220 86 F0            [24] 4358 	mov	b,@r0
      004222 12 70 CC         [24] 4359 	lcall	__gptrget
      004225 FA               [12] 4360 	mov	r2,a
      004226 A3               [24] 4361 	inc	dptr
      004227 12 70 CC         [24] 4362 	lcall	__gptrget
      00422A FB               [12] 4363 	mov	r3,a
      00422B A3               [24] 4364 	inc	dptr
      00422C 12 70 CC         [24] 4365 	lcall	__gptrget
      00422F FC               [12] 4366 	mov	r4,a
      004230 C0 07            [24] 4367 	push	ar7
      004232 C0 06            [24] 4368 	push	ar6
      004234 C0 05            [24] 4369 	push	ar5
      004236 8A 82            [24] 4370 	mov	dpl,r2
      004238 8B 83            [24] 4371 	mov	dph,r3
      00423A 8C F0            [24] 4372 	mov	b,r4
      00423C 12 27 83         [24] 4373 	lcall	_stack_pop
      00423F AB 82            [24] 4374 	mov	r3,dpl
      004241 AC 83            [24] 4375 	mov	r4,dph
      004243 15 81            [12] 4376 	dec	sp
      004245 15 81            [12] 4377 	dec	sp
      004247 15 81            [12] 4378 	dec	sp
      004249 EB               [12] 4379 	mov	a,r3
      00424A 4C               [12] 4380 	orl	a,r4
      00424B 70 25            [24] 4381 	jnz	00158$
      00424D 7F 9B            [12] 4382 	mov	r7,#___str_10
      00424F 7E 89            [12] 4383 	mov	r6,#(___str_10 >> 8)
      004251 7D 80            [12] 4384 	mov	r5,#0x80
                                   4385 ;	calc.c:53: return;
      004253                       4386 00426$:
                                   4387 ;	calc.c:51: for (; *s; s++) putchar(*s);
      004253 8F 82            [24] 4388 	mov	dpl,r7
      004255 8E 83            [24] 4389 	mov	dph,r6
      004257 8D F0            [24] 4390 	mov	b,r5
      004259 12 70 CC         [24] 4391 	lcall	__gptrget
      00425C FC               [12] 4392 	mov	r4,a
      00425D 70 03            [24] 4393 	jnz	01326$
      00425F 02 57 05         [24] 4394 	ljmp	00249$
      004262                       4395 01326$:
      004262 7B 00            [12] 4396 	mov	r3,#0x00
      004264 8C 82            [24] 4397 	mov	dpl,r4
      004266 8B 83            [24] 4398 	mov	dph,r3
      004268 12 2B 70         [24] 4399 	lcall	_putchar
      00426B 0F               [12] 4400 	inc	r7
                                   4401 ;	calc.c:216: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00426C BF 00 E4         [24] 4402 	cjne	r7,#0x00,00426$
      00426F 0E               [12] 4403 	inc	r6
      004270 80 E1            [24] 4404 	sjmp	00426$
      004272                       4405 00158$:
                                   4406 ;	calc.c:217: else if (!stack_pop(ctx->ps, &d1)) {
      004272 E5 08            [12] 4407 	mov	a,_bp
      004274 24 19            [12] 4408 	add	a,#0x19
      004276 FF               [12] 4409 	mov	r7,a
      004277 7E 00            [12] 4410 	mov	r6,#0x00
      004279 7D 40            [12] 4411 	mov	r5,#0x40
      00427B E5 08            [12] 4412 	mov	a,_bp
      00427D 24 0B            [12] 4413 	add	a,#0x0b
      00427F F8               [12] 4414 	mov	r0,a
      004280 86 82            [24] 4415 	mov	dpl,@r0
      004282 08               [12] 4416 	inc	r0
      004283 86 83            [24] 4417 	mov	dph,@r0
      004285 08               [12] 4418 	inc	r0
      004286 86 F0            [24] 4419 	mov	b,@r0
      004288 12 70 CC         [24] 4420 	lcall	__gptrget
      00428B FA               [12] 4421 	mov	r2,a
      00428C A3               [24] 4422 	inc	dptr
      00428D 12 70 CC         [24] 4423 	lcall	__gptrget
      004290 FB               [12] 4424 	mov	r3,a
      004291 A3               [24] 4425 	inc	dptr
      004292 12 70 CC         [24] 4426 	lcall	__gptrget
      004295 FC               [12] 4427 	mov	r4,a
      004296 C0 07            [24] 4428 	push	ar7
      004298 C0 06            [24] 4429 	push	ar6
      00429A C0 05            [24] 4430 	push	ar5
      00429C 8A 82            [24] 4431 	mov	dpl,r2
      00429E 8B 83            [24] 4432 	mov	dph,r3
      0042A0 8C F0            [24] 4433 	mov	b,r4
      0042A2 12 27 83         [24] 4434 	lcall	_stack_pop
      0042A5 AB 82            [24] 4435 	mov	r3,dpl
      0042A7 AC 83            [24] 4436 	mov	r4,dph
      0042A9 15 81            [12] 4437 	dec	sp
      0042AB 15 81            [12] 4438 	dec	sp
      0042AD 15 81            [12] 4439 	dec	sp
      0042AF EB               [12] 4440 	mov	a,r3
      0042B0 4C               [12] 4441 	orl	a,r4
      0042B1 70 63            [24] 4442 	jnz	00155$
                                   4443 ;	calc.c:218: (void)stack_push(ctx->ps, d0);
      0042B3 E5 08            [12] 4444 	mov	a,_bp
      0042B5 24 0B            [12] 4445 	add	a,#0x0b
      0042B7 F8               [12] 4446 	mov	r0,a
      0042B8 86 82            [24] 4447 	mov	dpl,@r0
      0042BA 08               [12] 4448 	inc	r0
      0042BB 86 83            [24] 4449 	mov	dph,@r0
      0042BD 08               [12] 4450 	inc	r0
      0042BE 86 F0            [24] 4451 	mov	b,@r0
      0042C0 12 70 CC         [24] 4452 	lcall	__gptrget
      0042C3 FA               [12] 4453 	mov	r2,a
      0042C4 A3               [24] 4454 	inc	dptr
      0042C5 12 70 CC         [24] 4455 	lcall	__gptrget
      0042C8 FB               [12] 4456 	mov	r3,a
      0042C9 A3               [24] 4457 	inc	dptr
      0042CA 12 70 CC         [24] 4458 	lcall	__gptrget
      0042CD FC               [12] 4459 	mov	r4,a
      0042CE E5 08            [12] 4460 	mov	a,_bp
      0042D0 24 15            [12] 4461 	add	a,#0x15
      0042D2 F8               [12] 4462 	mov	r0,a
      0042D3 E6               [12] 4463 	mov	a,@r0
      0042D4 C0 E0            [24] 4464 	push	acc
      0042D6 08               [12] 4465 	inc	r0
      0042D7 E6               [12] 4466 	mov	a,@r0
      0042D8 C0 E0            [24] 4467 	push	acc
      0042DA 08               [12] 4468 	inc	r0
      0042DB E6               [12] 4469 	mov	a,@r0
      0042DC C0 E0            [24] 4470 	push	acc
      0042DE 08               [12] 4471 	inc	r0
      0042DF E6               [12] 4472 	mov	a,@r0
      0042E0 C0 E0            [24] 4473 	push	acc
      0042E2 8A 82            [24] 4474 	mov	dpl,r2
      0042E4 8B 83            [24] 4475 	mov	dph,r3
      0042E6 8C F0            [24] 4476 	mov	b,r4
      0042E8 12 26 B5         [24] 4477 	lcall	_stack_push
      0042EB E5 81            [12] 4478 	mov	a,sp
      0042ED 24 FC            [12] 4479 	add	a,#0xfc
      0042EF F5 81            [12] 4480 	mov	sp,a
                                   4481 ;	calc.c:219: printstr("\r\nstack underflow\r\n");
      0042F1 7F 9B            [12] 4482 	mov	r7,#___str_10
      0042F3 7E 89            [12] 4483 	mov	r6,#(___str_10 >> 8)
      0042F5 7D 80            [12] 4484 	mov	r5,#0x80
                                   4485 ;	calc.c:53: return;
      0042F7                       4486 00429$:
                                   4487 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0042F7 8F 82            [24] 4488 	mov	dpl,r7
      0042F9 8E 83            [24] 4489 	mov	dph,r6
      0042FB 8D F0            [24] 4490 	mov	b,r5
      0042FD 12 70 CC         [24] 4491 	lcall	__gptrget
      004300 FC               [12] 4492 	mov	r4,a
      004301 70 03            [24] 4493 	jnz	01329$
      004303 02 57 05         [24] 4494 	ljmp	00249$
      004306                       4495 01329$:
      004306 7B 00            [12] 4496 	mov	r3,#0x00
      004308 8C 82            [24] 4497 	mov	dpl,r4
      00430A 8B 83            [24] 4498 	mov	dph,r3
      00430C 12 2B 70         [24] 4499 	lcall	_putchar
      00430F 0F               [12] 4500 	inc	r7
                                   4501 ;	calc.c:219: printstr("\r\nstack underflow\r\n");
      004310 BF 00 E4         [24] 4502 	cjne	r7,#0x00,00429$
      004313 0E               [12] 4503 	inc	r6
      004314 80 E1            [24] 4504 	sjmp	00429$
      004316                       4505 00155$:
                                   4506 ;	calc.c:221: d1 += d0;
      004316 E5 08            [12] 4507 	mov	a,_bp
      004318 24 19            [12] 4508 	add	a,#0x19
      00431A F8               [12] 4509 	mov	r0,a
      00431B E5 08            [12] 4510 	mov	a,_bp
      00431D 24 15            [12] 4511 	add	a,#0x15
      00431F F9               [12] 4512 	mov	r1,a
      004320 E7               [12] 4513 	mov	a,@r1
      004321 26               [12] 4514 	add	a,@r0
      004322 F6               [12] 4515 	mov	@r0,a
      004323 09               [12] 4516 	inc	r1
      004324 E7               [12] 4517 	mov	a,@r1
      004325 08               [12] 4518 	inc	r0
      004326 36               [12] 4519 	addc	a,@r0
      004327 F6               [12] 4520 	mov	@r0,a
      004328 09               [12] 4521 	inc	r1
      004329 E7               [12] 4522 	mov	a,@r1
      00432A 08               [12] 4523 	inc	r0
      00432B 36               [12] 4524 	addc	a,@r0
      00432C F6               [12] 4525 	mov	@r0,a
      00432D 09               [12] 4526 	inc	r1
      00432E E7               [12] 4527 	mov	a,@r1
      00432F 08               [12] 4528 	inc	r0
      004330 36               [12] 4529 	addc	a,@r0
      004331 F6               [12] 4530 	mov	@r0,a
                                   4531 ;	calc.c:222: (void)stack_push(ctx->ps, d1);
      004332 E5 08            [12] 4532 	mov	a,_bp
      004334 24 0B            [12] 4533 	add	a,#0x0b
      004336 F8               [12] 4534 	mov	r0,a
      004337 86 82            [24] 4535 	mov	dpl,@r0
      004339 08               [12] 4536 	inc	r0
      00433A 86 83            [24] 4537 	mov	dph,@r0
      00433C 08               [12] 4538 	inc	r0
      00433D 86 F0            [24] 4539 	mov	b,@r0
      00433F 12 70 CC         [24] 4540 	lcall	__gptrget
      004342 FA               [12] 4541 	mov	r2,a
      004343 A3               [24] 4542 	inc	dptr
      004344 12 70 CC         [24] 4543 	lcall	__gptrget
      004347 FB               [12] 4544 	mov	r3,a
      004348 A3               [24] 4545 	inc	dptr
      004349 12 70 CC         [24] 4546 	lcall	__gptrget
      00434C FC               [12] 4547 	mov	r4,a
      00434D E5 08            [12] 4548 	mov	a,_bp
      00434F 24 19            [12] 4549 	add	a,#0x19
      004351 F8               [12] 4550 	mov	r0,a
      004352 E6               [12] 4551 	mov	a,@r0
      004353 C0 E0            [24] 4552 	push	acc
      004355 08               [12] 4553 	inc	r0
      004356 E6               [12] 4554 	mov	a,@r0
      004357 C0 E0            [24] 4555 	push	acc
      004359 08               [12] 4556 	inc	r0
      00435A E6               [12] 4557 	mov	a,@r0
      00435B C0 E0            [24] 4558 	push	acc
      00435D 08               [12] 4559 	inc	r0
      00435E E6               [12] 4560 	mov	a,@r0
      00435F C0 E0            [24] 4561 	push	acc
      004361 8A 82            [24] 4562 	mov	dpl,r2
      004363 8B 83            [24] 4563 	mov	dph,r3
      004365 8C F0            [24] 4564 	mov	b,r4
      004367 12 26 B5         [24] 4565 	lcall	_stack_push
      00436A E5 81            [12] 4566 	mov	a,sp
      00436C 24 FC            [12] 4567 	add	a,#0xfc
      00436E F5 81            [12] 4568 	mov	sp,a
                                   4569 ;	calc.c:224: break;
      004370 02 57 05         [24] 4570 	ljmp	00249$
                                   4571 ;	calc.c:225: case '-':
      004373                       4572 00160$:
                                   4573 ;	calc.c:226: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004373 E5 08            [12] 4574 	mov	a,_bp
      004375 24 15            [12] 4575 	add	a,#0x15
      004377 FF               [12] 4576 	mov	r7,a
      004378 7E 00            [12] 4577 	mov	r6,#0x00
      00437A 7D 40            [12] 4578 	mov	r5,#0x40
      00437C E5 08            [12] 4579 	mov	a,_bp
      00437E 24 12            [12] 4580 	add	a,#0x12
      004380 F8               [12] 4581 	mov	r0,a
      004381 E5 08            [12] 4582 	mov	a,_bp
      004383 24 0B            [12] 4583 	add	a,#0x0b
      004385 F9               [12] 4584 	mov	r1,a
      004386 74 11            [12] 4585 	mov	a,#0x11
      004388 26               [12] 4586 	add	a,@r0
      004389 F7               [12] 4587 	mov	@r1,a
      00438A 74 40            [12] 4588 	mov	a,#0x40
      00438C 08               [12] 4589 	inc	r0
      00438D 36               [12] 4590 	addc	a,@r0
      00438E 09               [12] 4591 	inc	r1
      00438F F7               [12] 4592 	mov	@r1,a
      004390 08               [12] 4593 	inc	r0
      004391 09               [12] 4594 	inc	r1
      004392 E6               [12] 4595 	mov	a,@r0
      004393 F7               [12] 4596 	mov	@r1,a
      004394 E5 08            [12] 4597 	mov	a,_bp
      004396 24 0B            [12] 4598 	add	a,#0x0b
      004398 F8               [12] 4599 	mov	r0,a
      004399 86 82            [24] 4600 	mov	dpl,@r0
      00439B 08               [12] 4601 	inc	r0
      00439C 86 83            [24] 4602 	mov	dph,@r0
      00439E 08               [12] 4603 	inc	r0
      00439F 86 F0            [24] 4604 	mov	b,@r0
      0043A1 12 70 CC         [24] 4605 	lcall	__gptrget
      0043A4 FA               [12] 4606 	mov	r2,a
      0043A5 A3               [24] 4607 	inc	dptr
      0043A6 12 70 CC         [24] 4608 	lcall	__gptrget
      0043A9 FB               [12] 4609 	mov	r3,a
      0043AA A3               [24] 4610 	inc	dptr
      0043AB 12 70 CC         [24] 4611 	lcall	__gptrget
      0043AE FC               [12] 4612 	mov	r4,a
      0043AF C0 07            [24] 4613 	push	ar7
      0043B1 C0 06            [24] 4614 	push	ar6
      0043B3 C0 05            [24] 4615 	push	ar5
      0043B5 8A 82            [24] 4616 	mov	dpl,r2
      0043B7 8B 83            [24] 4617 	mov	dph,r3
      0043B9 8C F0            [24] 4618 	mov	b,r4
      0043BB 12 27 83         [24] 4619 	lcall	_stack_pop
      0043BE AB 82            [24] 4620 	mov	r3,dpl
      0043C0 AC 83            [24] 4621 	mov	r4,dph
      0043C2 15 81            [12] 4622 	dec	sp
      0043C4 15 81            [12] 4623 	dec	sp
      0043C6 15 81            [12] 4624 	dec	sp
      0043C8 EB               [12] 4625 	mov	a,r3
      0043C9 4C               [12] 4626 	orl	a,r4
      0043CA 70 25            [24] 4627 	jnz	00165$
      0043CC 7F 9B            [12] 4628 	mov	r7,#___str_10
      0043CE 7E 89            [12] 4629 	mov	r6,#(___str_10 >> 8)
      0043D0 7D 80            [12] 4630 	mov	r5,#0x80
                                   4631 ;	calc.c:53: return;
      0043D2                       4632 00432$:
                                   4633 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0043D2 8F 82            [24] 4634 	mov	dpl,r7
      0043D4 8E 83            [24] 4635 	mov	dph,r6
      0043D6 8D F0            [24] 4636 	mov	b,r5
      0043D8 12 70 CC         [24] 4637 	lcall	__gptrget
      0043DB FC               [12] 4638 	mov	r4,a
      0043DC 70 03            [24] 4639 	jnz	01332$
      0043DE 02 57 05         [24] 4640 	ljmp	00249$
      0043E1                       4641 01332$:
      0043E1 7B 00            [12] 4642 	mov	r3,#0x00
      0043E3 8C 82            [24] 4643 	mov	dpl,r4
      0043E5 8B 83            [24] 4644 	mov	dph,r3
      0043E7 12 2B 70         [24] 4645 	lcall	_putchar
      0043EA 0F               [12] 4646 	inc	r7
                                   4647 ;	calc.c:226: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0043EB BF 00 E4         [24] 4648 	cjne	r7,#0x00,00432$
      0043EE 0E               [12] 4649 	inc	r6
      0043EF 80 E1            [24] 4650 	sjmp	00432$
      0043F1                       4651 00165$:
                                   4652 ;	calc.c:227: else if (!stack_pop(ctx->ps, &d1)) {
      0043F1 E5 08            [12] 4653 	mov	a,_bp
      0043F3 24 19            [12] 4654 	add	a,#0x19
      0043F5 FF               [12] 4655 	mov	r7,a
      0043F6 7E 00            [12] 4656 	mov	r6,#0x00
      0043F8 7D 40            [12] 4657 	mov	r5,#0x40
      0043FA E5 08            [12] 4658 	mov	a,_bp
      0043FC 24 0B            [12] 4659 	add	a,#0x0b
      0043FE F8               [12] 4660 	mov	r0,a
      0043FF 86 82            [24] 4661 	mov	dpl,@r0
      004401 08               [12] 4662 	inc	r0
      004402 86 83            [24] 4663 	mov	dph,@r0
      004404 08               [12] 4664 	inc	r0
      004405 86 F0            [24] 4665 	mov	b,@r0
      004407 12 70 CC         [24] 4666 	lcall	__gptrget
      00440A FA               [12] 4667 	mov	r2,a
      00440B A3               [24] 4668 	inc	dptr
      00440C 12 70 CC         [24] 4669 	lcall	__gptrget
      00440F FB               [12] 4670 	mov	r3,a
      004410 A3               [24] 4671 	inc	dptr
      004411 12 70 CC         [24] 4672 	lcall	__gptrget
      004414 FC               [12] 4673 	mov	r4,a
      004415 C0 07            [24] 4674 	push	ar7
      004417 C0 06            [24] 4675 	push	ar6
      004419 C0 05            [24] 4676 	push	ar5
      00441B 8A 82            [24] 4677 	mov	dpl,r2
      00441D 8B 83            [24] 4678 	mov	dph,r3
      00441F 8C F0            [24] 4679 	mov	b,r4
      004421 12 27 83         [24] 4680 	lcall	_stack_pop
      004424 AB 82            [24] 4681 	mov	r3,dpl
      004426 AC 83            [24] 4682 	mov	r4,dph
      004428 15 81            [12] 4683 	dec	sp
      00442A 15 81            [12] 4684 	dec	sp
      00442C 15 81            [12] 4685 	dec	sp
      00442E EB               [12] 4686 	mov	a,r3
      00442F 4C               [12] 4687 	orl	a,r4
      004430 70 63            [24] 4688 	jnz	00162$
                                   4689 ;	calc.c:228: (void)stack_push(ctx->ps, d0);
      004432 E5 08            [12] 4690 	mov	a,_bp
      004434 24 0B            [12] 4691 	add	a,#0x0b
      004436 F8               [12] 4692 	mov	r0,a
      004437 86 82            [24] 4693 	mov	dpl,@r0
      004439 08               [12] 4694 	inc	r0
      00443A 86 83            [24] 4695 	mov	dph,@r0
      00443C 08               [12] 4696 	inc	r0
      00443D 86 F0            [24] 4697 	mov	b,@r0
      00443F 12 70 CC         [24] 4698 	lcall	__gptrget
      004442 FA               [12] 4699 	mov	r2,a
      004443 A3               [24] 4700 	inc	dptr
      004444 12 70 CC         [24] 4701 	lcall	__gptrget
      004447 FB               [12] 4702 	mov	r3,a
      004448 A3               [24] 4703 	inc	dptr
      004449 12 70 CC         [24] 4704 	lcall	__gptrget
      00444C FC               [12] 4705 	mov	r4,a
      00444D E5 08            [12] 4706 	mov	a,_bp
      00444F 24 15            [12] 4707 	add	a,#0x15
      004451 F8               [12] 4708 	mov	r0,a
      004452 E6               [12] 4709 	mov	a,@r0
      004453 C0 E0            [24] 4710 	push	acc
      004455 08               [12] 4711 	inc	r0
      004456 E6               [12] 4712 	mov	a,@r0
      004457 C0 E0            [24] 4713 	push	acc
      004459 08               [12] 4714 	inc	r0
      00445A E6               [12] 4715 	mov	a,@r0
      00445B C0 E0            [24] 4716 	push	acc
      00445D 08               [12] 4717 	inc	r0
      00445E E6               [12] 4718 	mov	a,@r0
      00445F C0 E0            [24] 4719 	push	acc
      004461 8A 82            [24] 4720 	mov	dpl,r2
      004463 8B 83            [24] 4721 	mov	dph,r3
      004465 8C F0            [24] 4722 	mov	b,r4
      004467 12 26 B5         [24] 4723 	lcall	_stack_push
      00446A E5 81            [12] 4724 	mov	a,sp
      00446C 24 FC            [12] 4725 	add	a,#0xfc
      00446E F5 81            [12] 4726 	mov	sp,a
                                   4727 ;	calc.c:229: printstr("\r\nstack underflow\r\n");
      004470 7F 9B            [12] 4728 	mov	r7,#___str_10
      004472 7E 89            [12] 4729 	mov	r6,#(___str_10 >> 8)
      004474 7D 80            [12] 4730 	mov	r5,#0x80
                                   4731 ;	calc.c:53: return;
      004476                       4732 00435$:
                                   4733 ;	calc.c:51: for (; *s; s++) putchar(*s);
      004476 8F 82            [24] 4734 	mov	dpl,r7
      004478 8E 83            [24] 4735 	mov	dph,r6
      00447A 8D F0            [24] 4736 	mov	b,r5
      00447C 12 70 CC         [24] 4737 	lcall	__gptrget
      00447F FC               [12] 4738 	mov	r4,a
      004480 70 03            [24] 4739 	jnz	01335$
      004482 02 57 05         [24] 4740 	ljmp	00249$
      004485                       4741 01335$:
      004485 7B 00            [12] 4742 	mov	r3,#0x00
      004487 8C 82            [24] 4743 	mov	dpl,r4
      004489 8B 83            [24] 4744 	mov	dph,r3
      00448B 12 2B 70         [24] 4745 	lcall	_putchar
      00448E 0F               [12] 4746 	inc	r7
                                   4747 ;	calc.c:229: printstr("\r\nstack underflow\r\n");
      00448F BF 00 E4         [24] 4748 	cjne	r7,#0x00,00435$
      004492 0E               [12] 4749 	inc	r6
      004493 80 E1            [24] 4750 	sjmp	00435$
      004495                       4751 00162$:
                                   4752 ;	calc.c:231: d1 -= d0;
      004495 E5 08            [12] 4753 	mov	a,_bp
      004497 24 19            [12] 4754 	add	a,#0x19
      004499 F8               [12] 4755 	mov	r0,a
      00449A E5 08            [12] 4756 	mov	a,_bp
      00449C 24 15            [12] 4757 	add	a,#0x15
      00449E F9               [12] 4758 	mov	r1,a
      00449F E6               [12] 4759 	mov	a,@r0
      0044A0 C3               [12] 4760 	clr	c
      0044A1 97               [12] 4761 	subb	a,@r1
      0044A2 F6               [12] 4762 	mov	@r0,a
      0044A3 08               [12] 4763 	inc	r0
      0044A4 E6               [12] 4764 	mov	a,@r0
      0044A5 09               [12] 4765 	inc	r1
      0044A6 97               [12] 4766 	subb	a,@r1
      0044A7 F6               [12] 4767 	mov	@r0,a
      0044A8 08               [12] 4768 	inc	r0
      0044A9 E6               [12] 4769 	mov	a,@r0
      0044AA 09               [12] 4770 	inc	r1
      0044AB 97               [12] 4771 	subb	a,@r1
      0044AC F6               [12] 4772 	mov	@r0,a
      0044AD 08               [12] 4773 	inc	r0
      0044AE E6               [12] 4774 	mov	a,@r0
      0044AF 09               [12] 4775 	inc	r1
      0044B0 97               [12] 4776 	subb	a,@r1
      0044B1 F6               [12] 4777 	mov	@r0,a
                                   4778 ;	calc.c:232: (void)stack_push(ctx->ps, d1);
      0044B2 E5 08            [12] 4779 	mov	a,_bp
      0044B4 24 0B            [12] 4780 	add	a,#0x0b
      0044B6 F8               [12] 4781 	mov	r0,a
      0044B7 86 82            [24] 4782 	mov	dpl,@r0
      0044B9 08               [12] 4783 	inc	r0
      0044BA 86 83            [24] 4784 	mov	dph,@r0
      0044BC 08               [12] 4785 	inc	r0
      0044BD 86 F0            [24] 4786 	mov	b,@r0
      0044BF 12 70 CC         [24] 4787 	lcall	__gptrget
      0044C2 FA               [12] 4788 	mov	r2,a
      0044C3 A3               [24] 4789 	inc	dptr
      0044C4 12 70 CC         [24] 4790 	lcall	__gptrget
      0044C7 FB               [12] 4791 	mov	r3,a
      0044C8 A3               [24] 4792 	inc	dptr
      0044C9 12 70 CC         [24] 4793 	lcall	__gptrget
      0044CC FC               [12] 4794 	mov	r4,a
      0044CD E5 08            [12] 4795 	mov	a,_bp
      0044CF 24 19            [12] 4796 	add	a,#0x19
      0044D1 F8               [12] 4797 	mov	r0,a
      0044D2 E6               [12] 4798 	mov	a,@r0
      0044D3 C0 E0            [24] 4799 	push	acc
      0044D5 08               [12] 4800 	inc	r0
      0044D6 E6               [12] 4801 	mov	a,@r0
      0044D7 C0 E0            [24] 4802 	push	acc
      0044D9 08               [12] 4803 	inc	r0
      0044DA E6               [12] 4804 	mov	a,@r0
      0044DB C0 E0            [24] 4805 	push	acc
      0044DD 08               [12] 4806 	inc	r0
      0044DE E6               [12] 4807 	mov	a,@r0
      0044DF C0 E0            [24] 4808 	push	acc
      0044E1 8A 82            [24] 4809 	mov	dpl,r2
      0044E3 8B 83            [24] 4810 	mov	dph,r3
      0044E5 8C F0            [24] 4811 	mov	b,r4
      0044E7 12 26 B5         [24] 4812 	lcall	_stack_push
      0044EA E5 81            [12] 4813 	mov	a,sp
      0044EC 24 FC            [12] 4814 	add	a,#0xfc
      0044EE F5 81            [12] 4815 	mov	sp,a
                                   4816 ;	calc.c:234: break;
      0044F0 02 57 05         [24] 4817 	ljmp	00249$
                                   4818 ;	calc.c:235: case '*':
      0044F3                       4819 00167$:
                                   4820 ;	calc.c:236: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0044F3 E5 08            [12] 4821 	mov	a,_bp
      0044F5 24 15            [12] 4822 	add	a,#0x15
      0044F7 FF               [12] 4823 	mov	r7,a
      0044F8 7E 00            [12] 4824 	mov	r6,#0x00
      0044FA 7D 40            [12] 4825 	mov	r5,#0x40
      0044FC E5 08            [12] 4826 	mov	a,_bp
      0044FE 24 12            [12] 4827 	add	a,#0x12
      004500 F8               [12] 4828 	mov	r0,a
      004501 E5 08            [12] 4829 	mov	a,_bp
      004503 24 0B            [12] 4830 	add	a,#0x0b
      004505 F9               [12] 4831 	mov	r1,a
      004506 74 11            [12] 4832 	mov	a,#0x11
      004508 26               [12] 4833 	add	a,@r0
      004509 F7               [12] 4834 	mov	@r1,a
      00450A 74 40            [12] 4835 	mov	a,#0x40
      00450C 08               [12] 4836 	inc	r0
      00450D 36               [12] 4837 	addc	a,@r0
      00450E 09               [12] 4838 	inc	r1
      00450F F7               [12] 4839 	mov	@r1,a
      004510 08               [12] 4840 	inc	r0
      004511 09               [12] 4841 	inc	r1
      004512 E6               [12] 4842 	mov	a,@r0
      004513 F7               [12] 4843 	mov	@r1,a
      004514 E5 08            [12] 4844 	mov	a,_bp
      004516 24 0B            [12] 4845 	add	a,#0x0b
      004518 F8               [12] 4846 	mov	r0,a
      004519 86 82            [24] 4847 	mov	dpl,@r0
      00451B 08               [12] 4848 	inc	r0
      00451C 86 83            [24] 4849 	mov	dph,@r0
      00451E 08               [12] 4850 	inc	r0
      00451F 86 F0            [24] 4851 	mov	b,@r0
      004521 12 70 CC         [24] 4852 	lcall	__gptrget
      004524 FA               [12] 4853 	mov	r2,a
      004525 A3               [24] 4854 	inc	dptr
      004526 12 70 CC         [24] 4855 	lcall	__gptrget
      004529 FB               [12] 4856 	mov	r3,a
      00452A A3               [24] 4857 	inc	dptr
      00452B 12 70 CC         [24] 4858 	lcall	__gptrget
      00452E FC               [12] 4859 	mov	r4,a
      00452F C0 07            [24] 4860 	push	ar7
      004531 C0 06            [24] 4861 	push	ar6
      004533 C0 05            [24] 4862 	push	ar5
      004535 8A 82            [24] 4863 	mov	dpl,r2
      004537 8B 83            [24] 4864 	mov	dph,r3
      004539 8C F0            [24] 4865 	mov	b,r4
      00453B 12 27 83         [24] 4866 	lcall	_stack_pop
      00453E AB 82            [24] 4867 	mov	r3,dpl
      004540 AC 83            [24] 4868 	mov	r4,dph
      004542 15 81            [12] 4869 	dec	sp
      004544 15 81            [12] 4870 	dec	sp
      004546 15 81            [12] 4871 	dec	sp
      004548 EB               [12] 4872 	mov	a,r3
      004549 4C               [12] 4873 	orl	a,r4
      00454A 70 25            [24] 4874 	jnz	00172$
      00454C 7F 9B            [12] 4875 	mov	r7,#___str_10
      00454E 7E 89            [12] 4876 	mov	r6,#(___str_10 >> 8)
      004550 7D 80            [12] 4877 	mov	r5,#0x80
                                   4878 ;	calc.c:53: return;
      004552                       4879 00438$:
                                   4880 ;	calc.c:51: for (; *s; s++) putchar(*s);
      004552 8F 82            [24] 4881 	mov	dpl,r7
      004554 8E 83            [24] 4882 	mov	dph,r6
      004556 8D F0            [24] 4883 	mov	b,r5
      004558 12 70 CC         [24] 4884 	lcall	__gptrget
      00455B FC               [12] 4885 	mov	r4,a
      00455C 70 03            [24] 4886 	jnz	01338$
      00455E 02 57 05         [24] 4887 	ljmp	00249$
      004561                       4888 01338$:
      004561 7B 00            [12] 4889 	mov	r3,#0x00
      004563 8C 82            [24] 4890 	mov	dpl,r4
      004565 8B 83            [24] 4891 	mov	dph,r3
      004567 12 2B 70         [24] 4892 	lcall	_putchar
      00456A 0F               [12] 4893 	inc	r7
                                   4894 ;	calc.c:236: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00456B BF 00 E4         [24] 4895 	cjne	r7,#0x00,00438$
      00456E 0E               [12] 4896 	inc	r6
      00456F 80 E1            [24] 4897 	sjmp	00438$
      004571                       4898 00172$:
                                   4899 ;	calc.c:237: else if (!stack_pop(ctx->ps, &d1)) {
      004571 E5 08            [12] 4900 	mov	a,_bp
      004573 24 19            [12] 4901 	add	a,#0x19
      004575 FF               [12] 4902 	mov	r7,a
      004576 7E 00            [12] 4903 	mov	r6,#0x00
      004578 7D 40            [12] 4904 	mov	r5,#0x40
      00457A E5 08            [12] 4905 	mov	a,_bp
      00457C 24 0B            [12] 4906 	add	a,#0x0b
      00457E F8               [12] 4907 	mov	r0,a
      00457F 86 82            [24] 4908 	mov	dpl,@r0
      004581 08               [12] 4909 	inc	r0
      004582 86 83            [24] 4910 	mov	dph,@r0
      004584 08               [12] 4911 	inc	r0
      004585 86 F0            [24] 4912 	mov	b,@r0
      004587 12 70 CC         [24] 4913 	lcall	__gptrget
      00458A FA               [12] 4914 	mov	r2,a
      00458B A3               [24] 4915 	inc	dptr
      00458C 12 70 CC         [24] 4916 	lcall	__gptrget
      00458F FB               [12] 4917 	mov	r3,a
      004590 A3               [24] 4918 	inc	dptr
      004591 12 70 CC         [24] 4919 	lcall	__gptrget
      004594 FC               [12] 4920 	mov	r4,a
      004595 C0 07            [24] 4921 	push	ar7
      004597 C0 06            [24] 4922 	push	ar6
      004599 C0 05            [24] 4923 	push	ar5
      00459B 8A 82            [24] 4924 	mov	dpl,r2
      00459D 8B 83            [24] 4925 	mov	dph,r3
      00459F 8C F0            [24] 4926 	mov	b,r4
      0045A1 12 27 83         [24] 4927 	lcall	_stack_pop
      0045A4 AB 82            [24] 4928 	mov	r3,dpl
      0045A6 AC 83            [24] 4929 	mov	r4,dph
      0045A8 15 81            [12] 4930 	dec	sp
      0045AA 15 81            [12] 4931 	dec	sp
      0045AC 15 81            [12] 4932 	dec	sp
      0045AE EB               [12] 4933 	mov	a,r3
      0045AF 4C               [12] 4934 	orl	a,r4
      0045B0 70 63            [24] 4935 	jnz	00169$
                                   4936 ;	calc.c:238: (void)stack_push(ctx->ps, d0);
      0045B2 E5 08            [12] 4937 	mov	a,_bp
      0045B4 24 0B            [12] 4938 	add	a,#0x0b
      0045B6 F8               [12] 4939 	mov	r0,a
      0045B7 86 82            [24] 4940 	mov	dpl,@r0
      0045B9 08               [12] 4941 	inc	r0
      0045BA 86 83            [24] 4942 	mov	dph,@r0
      0045BC 08               [12] 4943 	inc	r0
      0045BD 86 F0            [24] 4944 	mov	b,@r0
      0045BF 12 70 CC         [24] 4945 	lcall	__gptrget
      0045C2 FA               [12] 4946 	mov	r2,a
      0045C3 A3               [24] 4947 	inc	dptr
      0045C4 12 70 CC         [24] 4948 	lcall	__gptrget
      0045C7 FB               [12] 4949 	mov	r3,a
      0045C8 A3               [24] 4950 	inc	dptr
      0045C9 12 70 CC         [24] 4951 	lcall	__gptrget
      0045CC FC               [12] 4952 	mov	r4,a
      0045CD E5 08            [12] 4953 	mov	a,_bp
      0045CF 24 15            [12] 4954 	add	a,#0x15
      0045D1 F8               [12] 4955 	mov	r0,a
      0045D2 E6               [12] 4956 	mov	a,@r0
      0045D3 C0 E0            [24] 4957 	push	acc
      0045D5 08               [12] 4958 	inc	r0
      0045D6 E6               [12] 4959 	mov	a,@r0
      0045D7 C0 E0            [24] 4960 	push	acc
      0045D9 08               [12] 4961 	inc	r0
      0045DA E6               [12] 4962 	mov	a,@r0
      0045DB C0 E0            [24] 4963 	push	acc
      0045DD 08               [12] 4964 	inc	r0
      0045DE E6               [12] 4965 	mov	a,@r0
      0045DF C0 E0            [24] 4966 	push	acc
      0045E1 8A 82            [24] 4967 	mov	dpl,r2
      0045E3 8B 83            [24] 4968 	mov	dph,r3
      0045E5 8C F0            [24] 4969 	mov	b,r4
      0045E7 12 26 B5         [24] 4970 	lcall	_stack_push
      0045EA E5 81            [12] 4971 	mov	a,sp
      0045EC 24 FC            [12] 4972 	add	a,#0xfc
      0045EE F5 81            [12] 4973 	mov	sp,a
                                   4974 ;	calc.c:239: printstr("\r\nstack underflow\r\n");
      0045F0 7F 9B            [12] 4975 	mov	r7,#___str_10
      0045F2 7E 89            [12] 4976 	mov	r6,#(___str_10 >> 8)
      0045F4 7D 80            [12] 4977 	mov	r5,#0x80
                                   4978 ;	calc.c:53: return;
      0045F6                       4979 00441$:
                                   4980 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0045F6 8F 82            [24] 4981 	mov	dpl,r7
      0045F8 8E 83            [24] 4982 	mov	dph,r6
      0045FA 8D F0            [24] 4983 	mov	b,r5
      0045FC 12 70 CC         [24] 4984 	lcall	__gptrget
      0045FF FC               [12] 4985 	mov	r4,a
      004600 70 03            [24] 4986 	jnz	01341$
      004602 02 57 05         [24] 4987 	ljmp	00249$
      004605                       4988 01341$:
      004605 7B 00            [12] 4989 	mov	r3,#0x00
      004607 8C 82            [24] 4990 	mov	dpl,r4
      004609 8B 83            [24] 4991 	mov	dph,r3
      00460B 12 2B 70         [24] 4992 	lcall	_putchar
      00460E 0F               [12] 4993 	inc	r7
                                   4994 ;	calc.c:239: printstr("\r\nstack underflow\r\n");
      00460F BF 00 E4         [24] 4995 	cjne	r7,#0x00,00441$
      004612 0E               [12] 4996 	inc	r6
      004613 80 E1            [24] 4997 	sjmp	00441$
      004615                       4998 00169$:
                                   4999 ;	calc.c:241: d1 *= d0;
      004615 E5 08            [12] 5000 	mov	a,_bp
      004617 24 15            [12] 5001 	add	a,#0x15
      004619 F8               [12] 5002 	mov	r0,a
      00461A E6               [12] 5003 	mov	a,@r0
      00461B C0 E0            [24] 5004 	push	acc
      00461D 08               [12] 5005 	inc	r0
      00461E E6               [12] 5006 	mov	a,@r0
      00461F C0 E0            [24] 5007 	push	acc
      004621 08               [12] 5008 	inc	r0
      004622 E6               [12] 5009 	mov	a,@r0
      004623 C0 E0            [24] 5010 	push	acc
      004625 08               [12] 5011 	inc	r0
      004626 E6               [12] 5012 	mov	a,@r0
      004627 C0 E0            [24] 5013 	push	acc
      004629 E5 08            [12] 5014 	mov	a,_bp
      00462B 24 19            [12] 5015 	add	a,#0x19
      00462D F8               [12] 5016 	mov	r0,a
      00462E 86 82            [24] 5017 	mov	dpl,@r0
      004630 08               [12] 5018 	inc	r0
      004631 86 83            [24] 5019 	mov	dph,@r0
      004633 08               [12] 5020 	inc	r0
      004634 86 F0            [24] 5021 	mov	b,@r0
      004636 08               [12] 5022 	inc	r0
      004637 E6               [12] 5023 	mov	a,@r0
      004638 12 74 C5         [24] 5024 	lcall	__mullong
      00463B AF 82            [24] 5025 	mov	r7,dpl
      00463D AE 83            [24] 5026 	mov	r6,dph
      00463F AD F0            [24] 5027 	mov	r5,b
      004641 FC               [12] 5028 	mov	r4,a
      004642 E5 81            [12] 5029 	mov	a,sp
      004644 24 FC            [12] 5030 	add	a,#0xfc
      004646 F5 81            [12] 5031 	mov	sp,a
      004648 E5 08            [12] 5032 	mov	a,_bp
      00464A 24 19            [12] 5033 	add	a,#0x19
      00464C F8               [12] 5034 	mov	r0,a
      00464D A6 07            [24] 5035 	mov	@r0,ar7
      00464F 08               [12] 5036 	inc	r0
      004650 A6 06            [24] 5037 	mov	@r0,ar6
      004652 08               [12] 5038 	inc	r0
      004653 A6 05            [24] 5039 	mov	@r0,ar5
      004655 08               [12] 5040 	inc	r0
      004656 A6 04            [24] 5041 	mov	@r0,ar4
                                   5042 ;	calc.c:242: (void)stack_push(ctx->ps, d1);
      004658 E5 08            [12] 5043 	mov	a,_bp
      00465A 24 0B            [12] 5044 	add	a,#0x0b
      00465C F8               [12] 5045 	mov	r0,a
      00465D 86 82            [24] 5046 	mov	dpl,@r0
      00465F 08               [12] 5047 	inc	r0
      004660 86 83            [24] 5048 	mov	dph,@r0
      004662 08               [12] 5049 	inc	r0
      004663 86 F0            [24] 5050 	mov	b,@r0
      004665 12 70 CC         [24] 5051 	lcall	__gptrget
      004668 FA               [12] 5052 	mov	r2,a
      004669 A3               [24] 5053 	inc	dptr
      00466A 12 70 CC         [24] 5054 	lcall	__gptrget
      00466D FB               [12] 5055 	mov	r3,a
      00466E A3               [24] 5056 	inc	dptr
      00466F 12 70 CC         [24] 5057 	lcall	__gptrget
      004672 FC               [12] 5058 	mov	r4,a
      004673 E5 08            [12] 5059 	mov	a,_bp
      004675 24 19            [12] 5060 	add	a,#0x19
      004677 F8               [12] 5061 	mov	r0,a
      004678 E6               [12] 5062 	mov	a,@r0
      004679 C0 E0            [24] 5063 	push	acc
      00467B 08               [12] 5064 	inc	r0
      00467C E6               [12] 5065 	mov	a,@r0
      00467D C0 E0            [24] 5066 	push	acc
      00467F 08               [12] 5067 	inc	r0
      004680 E6               [12] 5068 	mov	a,@r0
      004681 C0 E0            [24] 5069 	push	acc
      004683 08               [12] 5070 	inc	r0
      004684 E6               [12] 5071 	mov	a,@r0
      004685 C0 E0            [24] 5072 	push	acc
      004687 8A 82            [24] 5073 	mov	dpl,r2
      004689 8B 83            [24] 5074 	mov	dph,r3
      00468B 8C F0            [24] 5075 	mov	b,r4
      00468D 12 26 B5         [24] 5076 	lcall	_stack_push
      004690 E5 81            [12] 5077 	mov	a,sp
      004692 24 FC            [12] 5078 	add	a,#0xfc
      004694 F5 81            [12] 5079 	mov	sp,a
                                   5080 ;	calc.c:244: break;
      004696 02 57 05         [24] 5081 	ljmp	00249$
                                   5082 ;	calc.c:246: case '\\':
      004699                       5083 00175$:
                                   5084 ;	calc.c:247: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004699 C0 05            [24] 5085 	push	ar5
      00469B C0 06            [24] 5086 	push	ar6
      00469D C0 07            [24] 5087 	push	ar7
      00469F E5 08            [12] 5088 	mov	a,_bp
      0046A1 24 15            [12] 5089 	add	a,#0x15
      0046A3 FC               [12] 5090 	mov	r4,a
      0046A4 7B 00            [12] 5091 	mov	r3,#0x00
      0046A6 7A 40            [12] 5092 	mov	r2,#0x40
      0046A8 E5 08            [12] 5093 	mov	a,_bp
      0046AA 24 12            [12] 5094 	add	a,#0x12
      0046AC F8               [12] 5095 	mov	r0,a
      0046AD E5 08            [12] 5096 	mov	a,_bp
      0046AF 24 0B            [12] 5097 	add	a,#0x0b
      0046B1 F9               [12] 5098 	mov	r1,a
      0046B2 74 11            [12] 5099 	mov	a,#0x11
      0046B4 26               [12] 5100 	add	a,@r0
      0046B5 F7               [12] 5101 	mov	@r1,a
      0046B6 74 40            [12] 5102 	mov	a,#0x40
      0046B8 08               [12] 5103 	inc	r0
      0046B9 36               [12] 5104 	addc	a,@r0
      0046BA 09               [12] 5105 	inc	r1
      0046BB F7               [12] 5106 	mov	@r1,a
      0046BC 08               [12] 5107 	inc	r0
      0046BD 09               [12] 5108 	inc	r1
      0046BE E6               [12] 5109 	mov	a,@r0
      0046BF F7               [12] 5110 	mov	@r1,a
      0046C0 E5 08            [12] 5111 	mov	a,_bp
      0046C2 24 0B            [12] 5112 	add	a,#0x0b
      0046C4 F8               [12] 5113 	mov	r0,a
      0046C5 86 82            [24] 5114 	mov	dpl,@r0
      0046C7 08               [12] 5115 	inc	r0
      0046C8 86 83            [24] 5116 	mov	dph,@r0
      0046CA 08               [12] 5117 	inc	r0
      0046CB 86 F0            [24] 5118 	mov	b,@r0
      0046CD 12 70 CC         [24] 5119 	lcall	__gptrget
      0046D0 FD               [12] 5120 	mov	r5,a
      0046D1 A3               [24] 5121 	inc	dptr
      0046D2 12 70 CC         [24] 5122 	lcall	__gptrget
      0046D5 FE               [12] 5123 	mov	r6,a
      0046D6 A3               [24] 5124 	inc	dptr
      0046D7 12 70 CC         [24] 5125 	lcall	__gptrget
      0046DA FF               [12] 5126 	mov	r7,a
      0046DB C0 05            [24] 5127 	push	ar5
      0046DD C0 04            [24] 5128 	push	ar4
      0046DF C0 03            [24] 5129 	push	ar3
      0046E1 C0 02            [24] 5130 	push	ar2
      0046E3 8D 82            [24] 5131 	mov	dpl,r5
      0046E5 8E 83            [24] 5132 	mov	dph,r6
      0046E7 8F F0            [24] 5133 	mov	b,r7
      0046E9 12 27 83         [24] 5134 	lcall	_stack_pop
      0046EC AE 82            [24] 5135 	mov	r6,dpl
      0046EE AF 83            [24] 5136 	mov	r7,dph
      0046F0 15 81            [12] 5137 	dec	sp
      0046F2 15 81            [12] 5138 	dec	sp
      0046F4 15 81            [12] 5139 	dec	sp
      0046F6 D0 05            [24] 5140 	pop	ar5
      0046F8 EE               [12] 5141 	mov	a,r6
      0046F9 4F               [12] 5142 	orl	a,r7
      0046FA D0 07            [24] 5143 	pop	ar7
      0046FC D0 06            [24] 5144 	pop	ar6
      0046FE D0 05            [24] 5145 	pop	ar5
      004700 70 25            [24] 5146 	jnz	00186$
      004702 7F 9B            [12] 5147 	mov	r7,#___str_10
      004704 7E 89            [12] 5148 	mov	r6,#(___str_10 >> 8)
      004706 7D 80            [12] 5149 	mov	r5,#0x80
                                   5150 ;	calc.c:53: return;
      004708                       5151 00444$:
                                   5152 ;	calc.c:51: for (; *s; s++) putchar(*s);
      004708 8F 82            [24] 5153 	mov	dpl,r7
      00470A 8E 83            [24] 5154 	mov	dph,r6
      00470C 8D F0            [24] 5155 	mov	b,r5
      00470E 12 70 CC         [24] 5156 	lcall	__gptrget
      004711 FC               [12] 5157 	mov	r4,a
      004712 70 03            [24] 5158 	jnz	01344$
      004714 02 57 05         [24] 5159 	ljmp	00249$
      004717                       5160 01344$:
      004717 7B 00            [12] 5161 	mov	r3,#0x00
      004719 8C 82            [24] 5162 	mov	dpl,r4
      00471B 8B 83            [24] 5163 	mov	dph,r3
      00471D 12 2B 70         [24] 5164 	lcall	_putchar
      004720 0F               [12] 5165 	inc	r7
                                   5166 ;	calc.c:247: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004721 BF 00 E4         [24] 5167 	cjne	r7,#0x00,00444$
      004724 0E               [12] 5168 	inc	r6
      004725 80 E1            [24] 5169 	sjmp	00444$
      004727                       5170 00186$:
                                   5171 ;	calc.c:248: else if (!stack_pop(ctx->ps, &d1)) {
      004727 C0 05            [24] 5172 	push	ar5
      004729 C0 06            [24] 5173 	push	ar6
      00472B C0 07            [24] 5174 	push	ar7
      00472D E5 08            [12] 5175 	mov	a,_bp
      00472F 24 19            [12] 5176 	add	a,#0x19
      004731 FC               [12] 5177 	mov	r4,a
      004732 7B 00            [12] 5178 	mov	r3,#0x00
      004734 7A 40            [12] 5179 	mov	r2,#0x40
      004736 E5 08            [12] 5180 	mov	a,_bp
      004738 24 0B            [12] 5181 	add	a,#0x0b
      00473A F8               [12] 5182 	mov	r0,a
      00473B 86 82            [24] 5183 	mov	dpl,@r0
      00473D 08               [12] 5184 	inc	r0
      00473E 86 83            [24] 5185 	mov	dph,@r0
      004740 08               [12] 5186 	inc	r0
      004741 86 F0            [24] 5187 	mov	b,@r0
      004743 12 70 CC         [24] 5188 	lcall	__gptrget
      004746 FD               [12] 5189 	mov	r5,a
      004747 A3               [24] 5190 	inc	dptr
      004748 12 70 CC         [24] 5191 	lcall	__gptrget
      00474B FE               [12] 5192 	mov	r6,a
      00474C A3               [24] 5193 	inc	dptr
      00474D 12 70 CC         [24] 5194 	lcall	__gptrget
      004750 FF               [12] 5195 	mov	r7,a
      004751 C0 05            [24] 5196 	push	ar5
      004753 C0 04            [24] 5197 	push	ar4
      004755 C0 03            [24] 5198 	push	ar3
      004757 C0 02            [24] 5199 	push	ar2
      004759 8D 82            [24] 5200 	mov	dpl,r5
      00475B 8E 83            [24] 5201 	mov	dph,r6
      00475D 8F F0            [24] 5202 	mov	b,r7
      00475F 12 27 83         [24] 5203 	lcall	_stack_pop
      004762 AE 82            [24] 5204 	mov	r6,dpl
      004764 AF 83            [24] 5205 	mov	r7,dph
      004766 15 81            [12] 5206 	dec	sp
      004768 15 81            [12] 5207 	dec	sp
      00476A 15 81            [12] 5208 	dec	sp
      00476C D0 05            [24] 5209 	pop	ar5
      00476E EE               [12] 5210 	mov	a,r6
      00476F 4F               [12] 5211 	orl	a,r7
      004770 D0 07            [24] 5212 	pop	ar7
      004772 D0 06            [24] 5213 	pop	ar6
      004774 D0 05            [24] 5214 	pop	ar5
      004776 70 63            [24] 5215 	jnz	00183$
                                   5216 ;	calc.c:249: (void)stack_push(ctx->ps, d0);
      004778 E5 08            [12] 5217 	mov	a,_bp
      00477A 24 0B            [12] 5218 	add	a,#0x0b
      00477C F8               [12] 5219 	mov	r0,a
      00477D 86 82            [24] 5220 	mov	dpl,@r0
      00477F 08               [12] 5221 	inc	r0
      004780 86 83            [24] 5222 	mov	dph,@r0
      004782 08               [12] 5223 	inc	r0
      004783 86 F0            [24] 5224 	mov	b,@r0
      004785 12 70 CC         [24] 5225 	lcall	__gptrget
      004788 FA               [12] 5226 	mov	r2,a
      004789 A3               [24] 5227 	inc	dptr
      00478A 12 70 CC         [24] 5228 	lcall	__gptrget
      00478D FB               [12] 5229 	mov	r3,a
      00478E A3               [24] 5230 	inc	dptr
      00478F 12 70 CC         [24] 5231 	lcall	__gptrget
      004792 FC               [12] 5232 	mov	r4,a
      004793 E5 08            [12] 5233 	mov	a,_bp
      004795 24 15            [12] 5234 	add	a,#0x15
      004797 F8               [12] 5235 	mov	r0,a
      004798 E6               [12] 5236 	mov	a,@r0
      004799 C0 E0            [24] 5237 	push	acc
      00479B 08               [12] 5238 	inc	r0
      00479C E6               [12] 5239 	mov	a,@r0
      00479D C0 E0            [24] 5240 	push	acc
      00479F 08               [12] 5241 	inc	r0
      0047A0 E6               [12] 5242 	mov	a,@r0
      0047A1 C0 E0            [24] 5243 	push	acc
      0047A3 08               [12] 5244 	inc	r0
      0047A4 E6               [12] 5245 	mov	a,@r0
      0047A5 C0 E0            [24] 5246 	push	acc
      0047A7 8A 82            [24] 5247 	mov	dpl,r2
      0047A9 8B 83            [24] 5248 	mov	dph,r3
      0047AB 8C F0            [24] 5249 	mov	b,r4
      0047AD 12 26 B5         [24] 5250 	lcall	_stack_push
      0047B0 E5 81            [12] 5251 	mov	a,sp
      0047B2 24 FC            [12] 5252 	add	a,#0xfc
      0047B4 F5 81            [12] 5253 	mov	sp,a
                                   5254 ;	calc.c:250: printstr("\r\nstack underflow\r\n");
      0047B6 7F 9B            [12] 5255 	mov	r7,#___str_10
      0047B8 7E 89            [12] 5256 	mov	r6,#(___str_10 >> 8)
      0047BA 7D 80            [12] 5257 	mov	r5,#0x80
                                   5258 ;	calc.c:53: return;
      0047BC                       5259 00447$:
                                   5260 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0047BC 8F 82            [24] 5261 	mov	dpl,r7
      0047BE 8E 83            [24] 5262 	mov	dph,r6
      0047C0 8D F0            [24] 5263 	mov	b,r5
      0047C2 12 70 CC         [24] 5264 	lcall	__gptrget
      0047C5 FC               [12] 5265 	mov	r4,a
      0047C6 70 03            [24] 5266 	jnz	01347$
      0047C8 02 57 05         [24] 5267 	ljmp	00249$
      0047CB                       5268 01347$:
      0047CB 7B 00            [12] 5269 	mov	r3,#0x00
      0047CD 8C 82            [24] 5270 	mov	dpl,r4
      0047CF 8B 83            [24] 5271 	mov	dph,r3
      0047D1 12 2B 70         [24] 5272 	lcall	_putchar
      0047D4 0F               [12] 5273 	inc	r7
                                   5274 ;	calc.c:250: printstr("\r\nstack underflow\r\n");
      0047D5 BF 00 E4         [24] 5275 	cjne	r7,#0x00,00447$
      0047D8 0E               [12] 5276 	inc	r6
      0047D9 80 E1            [24] 5277 	sjmp	00447$
      0047DB                       5278 00183$:
                                   5279 ;	calc.c:251: } else if (!d0) {
      0047DB E5 08            [12] 5280 	mov	a,_bp
      0047DD 24 15            [12] 5281 	add	a,#0x15
      0047DF F8               [12] 5282 	mov	r0,a
      0047E0 E6               [12] 5283 	mov	a,@r0
      0047E1 08               [12] 5284 	inc	r0
      0047E2 46               [12] 5285 	orl	a,@r0
      0047E3 08               [12] 5286 	inc	r0
      0047E4 46               [12] 5287 	orl	a,@r0
      0047E5 08               [12] 5288 	inc	r0
      0047E6 46               [12] 5289 	orl	a,@r0
      0047E7 60 03            [24] 5290 	jz	01349$
      0047E9 02 48 8D         [24] 5291 	ljmp	00180$
      0047EC                       5292 01349$:
                                   5293 ;	calc.c:252: (void)stack_push(ctx->ps, d1);
      0047EC E5 08            [12] 5294 	mov	a,_bp
      0047EE 24 0B            [12] 5295 	add	a,#0x0b
      0047F0 F8               [12] 5296 	mov	r0,a
      0047F1 86 82            [24] 5297 	mov	dpl,@r0
      0047F3 08               [12] 5298 	inc	r0
      0047F4 86 83            [24] 5299 	mov	dph,@r0
      0047F6 08               [12] 5300 	inc	r0
      0047F7 86 F0            [24] 5301 	mov	b,@r0
      0047F9 12 70 CC         [24] 5302 	lcall	__gptrget
      0047FC FA               [12] 5303 	mov	r2,a
      0047FD A3               [24] 5304 	inc	dptr
      0047FE 12 70 CC         [24] 5305 	lcall	__gptrget
      004801 FB               [12] 5306 	mov	r3,a
      004802 A3               [24] 5307 	inc	dptr
      004803 12 70 CC         [24] 5308 	lcall	__gptrget
      004806 FC               [12] 5309 	mov	r4,a
      004807 E5 08            [12] 5310 	mov	a,_bp
      004809 24 19            [12] 5311 	add	a,#0x19
      00480B F8               [12] 5312 	mov	r0,a
      00480C E6               [12] 5313 	mov	a,@r0
      00480D C0 E0            [24] 5314 	push	acc
      00480F 08               [12] 5315 	inc	r0
      004810 E6               [12] 5316 	mov	a,@r0
      004811 C0 E0            [24] 5317 	push	acc
      004813 08               [12] 5318 	inc	r0
      004814 E6               [12] 5319 	mov	a,@r0
      004815 C0 E0            [24] 5320 	push	acc
      004817 08               [12] 5321 	inc	r0
      004818 E6               [12] 5322 	mov	a,@r0
      004819 C0 E0            [24] 5323 	push	acc
      00481B 8A 82            [24] 5324 	mov	dpl,r2
      00481D 8B 83            [24] 5325 	mov	dph,r3
      00481F 8C F0            [24] 5326 	mov	b,r4
      004821 12 26 B5         [24] 5327 	lcall	_stack_push
      004824 E5 81            [12] 5328 	mov	a,sp
      004826 24 FC            [12] 5329 	add	a,#0xfc
      004828 F5 81            [12] 5330 	mov	sp,a
                                   5331 ;	calc.c:253: (void)stack_push(ctx->ps, d0);			
      00482A E5 08            [12] 5332 	mov	a,_bp
      00482C 24 0B            [12] 5333 	add	a,#0x0b
      00482E F8               [12] 5334 	mov	r0,a
      00482F 86 82            [24] 5335 	mov	dpl,@r0
      004831 08               [12] 5336 	inc	r0
      004832 86 83            [24] 5337 	mov	dph,@r0
      004834 08               [12] 5338 	inc	r0
      004835 86 F0            [24] 5339 	mov	b,@r0
      004837 12 70 CC         [24] 5340 	lcall	__gptrget
      00483A FA               [12] 5341 	mov	r2,a
      00483B A3               [24] 5342 	inc	dptr
      00483C 12 70 CC         [24] 5343 	lcall	__gptrget
      00483F FB               [12] 5344 	mov	r3,a
      004840 A3               [24] 5345 	inc	dptr
      004841 12 70 CC         [24] 5346 	lcall	__gptrget
      004844 FC               [12] 5347 	mov	r4,a
      004845 E5 08            [12] 5348 	mov	a,_bp
      004847 24 15            [12] 5349 	add	a,#0x15
      004849 F8               [12] 5350 	mov	r0,a
      00484A E6               [12] 5351 	mov	a,@r0
      00484B C0 E0            [24] 5352 	push	acc
      00484D 08               [12] 5353 	inc	r0
      00484E E6               [12] 5354 	mov	a,@r0
      00484F C0 E0            [24] 5355 	push	acc
      004851 08               [12] 5356 	inc	r0
      004852 E6               [12] 5357 	mov	a,@r0
      004853 C0 E0            [24] 5358 	push	acc
      004855 08               [12] 5359 	inc	r0
      004856 E6               [12] 5360 	mov	a,@r0
      004857 C0 E0            [24] 5361 	push	acc
      004859 8A 82            [24] 5362 	mov	dpl,r2
      00485B 8B 83            [24] 5363 	mov	dph,r3
      00485D 8C F0            [24] 5364 	mov	b,r4
      00485F 12 26 B5         [24] 5365 	lcall	_stack_push
      004862 E5 81            [12] 5366 	mov	a,sp
      004864 24 FC            [12] 5367 	add	a,#0xfc
      004866 F5 81            [12] 5368 	mov	sp,a
                                   5369 ;	calc.c:254: printstr("\r\ndivision by zero\r\n");
      004868 7F FD            [12] 5370 	mov	r7,#___str_14
      00486A 7E 89            [12] 5371 	mov	r6,#(___str_14 >> 8)
      00486C 7D 80            [12] 5372 	mov	r5,#0x80
                                   5373 ;	calc.c:53: return;
      00486E                       5374 00450$:
                                   5375 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00486E 8F 82            [24] 5376 	mov	dpl,r7
      004870 8E 83            [24] 5377 	mov	dph,r6
      004872 8D F0            [24] 5378 	mov	b,r5
      004874 12 70 CC         [24] 5379 	lcall	__gptrget
      004877 FC               [12] 5380 	mov	r4,a
      004878 70 03            [24] 5381 	jnz	01350$
      00487A 02 57 05         [24] 5382 	ljmp	00249$
      00487D                       5383 01350$:
      00487D 7B 00            [12] 5384 	mov	r3,#0x00
      00487F 8C 82            [24] 5385 	mov	dpl,r4
      004881 8B 83            [24] 5386 	mov	dph,r3
      004883 12 2B 70         [24] 5387 	lcall	_putchar
      004886 0F               [12] 5388 	inc	r7
                                   5389 ;	calc.c:254: printstr("\r\ndivision by zero\r\n");
      004887 BF 00 E4         [24] 5390 	cjne	r7,#0x00,00450$
      00488A 0E               [12] 5391 	inc	r6
      00488B 80 E1            [24] 5392 	sjmp	00450$
      00488D                       5393 00180$:
                                   5394 ;	calc.c:256: if (ctx->digit[0] == '/') d1 /= d0;
      00488D 8D 82            [24] 5395 	mov	dpl,r5
      00488F 8E 83            [24] 5396 	mov	dph,r6
      004891 8F F0            [24] 5397 	mov	b,r7
      004893 12 70 CC         [24] 5398 	lcall	__gptrget
      004896 FC               [12] 5399 	mov	r4,a
      004897 BC 2F 45         [24] 5400 	cjne	r4,#0x2f,00177$
      00489A E5 08            [12] 5401 	mov	a,_bp
      00489C 24 15            [12] 5402 	add	a,#0x15
      00489E F8               [12] 5403 	mov	r0,a
      00489F E6               [12] 5404 	mov	a,@r0
      0048A0 C0 E0            [24] 5405 	push	acc
      0048A2 08               [12] 5406 	inc	r0
      0048A3 E6               [12] 5407 	mov	a,@r0
      0048A4 C0 E0            [24] 5408 	push	acc
      0048A6 08               [12] 5409 	inc	r0
      0048A7 E6               [12] 5410 	mov	a,@r0
      0048A8 C0 E0            [24] 5411 	push	acc
      0048AA 08               [12] 5412 	inc	r0
      0048AB E6               [12] 5413 	mov	a,@r0
      0048AC C0 E0            [24] 5414 	push	acc
      0048AE E5 08            [12] 5415 	mov	a,_bp
      0048B0 24 19            [12] 5416 	add	a,#0x19
      0048B2 F8               [12] 5417 	mov	r0,a
      0048B3 86 82            [24] 5418 	mov	dpl,@r0
      0048B5 08               [12] 5419 	inc	r0
      0048B6 86 83            [24] 5420 	mov	dph,@r0
      0048B8 08               [12] 5421 	inc	r0
      0048B9 86 F0            [24] 5422 	mov	b,@r0
      0048BB 08               [12] 5423 	inc	r0
      0048BC E6               [12] 5424 	mov	a,@r0
      0048BD 12 6E C3         [24] 5425 	lcall	__divslong
      0048C0 AF 82            [24] 5426 	mov	r7,dpl
      0048C2 AE 83            [24] 5427 	mov	r6,dph
      0048C4 AD F0            [24] 5428 	mov	r5,b
      0048C6 FC               [12] 5429 	mov	r4,a
      0048C7 E5 81            [12] 5430 	mov	a,sp
      0048C9 24 FC            [12] 5431 	add	a,#0xfc
      0048CB F5 81            [12] 5432 	mov	sp,a
      0048CD E5 08            [12] 5433 	mov	a,_bp
      0048CF 24 19            [12] 5434 	add	a,#0x19
      0048D1 F8               [12] 5435 	mov	r0,a
      0048D2 A6 07            [24] 5436 	mov	@r0,ar7
      0048D4 08               [12] 5437 	inc	r0
      0048D5 A6 06            [24] 5438 	mov	@r0,ar6
      0048D7 08               [12] 5439 	inc	r0
      0048D8 A6 05            [24] 5440 	mov	@r0,ar5
      0048DA 08               [12] 5441 	inc	r0
      0048DB A6 04            [24] 5442 	mov	@r0,ar4
      0048DD 80 63            [24] 5443 	sjmp	00178$
      0048DF                       5444 00177$:
                                   5445 ;	calc.c:257: else d1 = (unsigned long)d1 / (unsigned long)d0;
      0048DF E5 08            [12] 5446 	mov	a,_bp
      0048E1 24 19            [12] 5447 	add	a,#0x19
      0048E3 F8               [12] 5448 	mov	r0,a
      0048E4 86 07            [24] 5449 	mov	ar7,@r0
      0048E6 08               [12] 5450 	inc	r0
      0048E7 86 06            [24] 5451 	mov	ar6,@r0
      0048E9 08               [12] 5452 	inc	r0
      0048EA 86 05            [24] 5453 	mov	ar5,@r0
      0048EC 08               [12] 5454 	inc	r0
      0048ED 86 04            [24] 5455 	mov	ar4,@r0
      0048EF E5 08            [12] 5456 	mov	a,_bp
      0048F1 24 15            [12] 5457 	add	a,#0x15
      0048F3 F8               [12] 5458 	mov	r0,a
      0048F4 E5 08            [12] 5459 	mov	a,_bp
      0048F6 24 0E            [12] 5460 	add	a,#0x0e
      0048F8 F9               [12] 5461 	mov	r1,a
      0048F9 E6               [12] 5462 	mov	a,@r0
      0048FA F7               [12] 5463 	mov	@r1,a
      0048FB 08               [12] 5464 	inc	r0
      0048FC 09               [12] 5465 	inc	r1
      0048FD E6               [12] 5466 	mov	a,@r0
      0048FE F7               [12] 5467 	mov	@r1,a
      0048FF 08               [12] 5468 	inc	r0
      004900 09               [12] 5469 	inc	r1
      004901 E6               [12] 5470 	mov	a,@r0
      004902 F7               [12] 5471 	mov	@r1,a
      004903 08               [12] 5472 	inc	r0
      004904 09               [12] 5473 	inc	r1
      004905 E6               [12] 5474 	mov	a,@r0
      004906 F7               [12] 5475 	mov	@r1,a
      004907 E5 08            [12] 5476 	mov	a,_bp
      004909 24 0E            [12] 5477 	add	a,#0x0e
      00490B F8               [12] 5478 	mov	r0,a
      00490C E6               [12] 5479 	mov	a,@r0
      00490D C0 E0            [24] 5480 	push	acc
      00490F 08               [12] 5481 	inc	r0
      004910 E6               [12] 5482 	mov	a,@r0
      004911 C0 E0            [24] 5483 	push	acc
      004913 08               [12] 5484 	inc	r0
      004914 E6               [12] 5485 	mov	a,@r0
      004915 C0 E0            [24] 5486 	push	acc
      004917 08               [12] 5487 	inc	r0
      004918 E6               [12] 5488 	mov	a,@r0
      004919 C0 E0            [24] 5489 	push	acc
      00491B 8F 82            [24] 5490 	mov	dpl,r7
      00491D 8E 83            [24] 5491 	mov	dph,r6
      00491F 8D F0            [24] 5492 	mov	b,r5
      004921 EC               [12] 5493 	mov	a,r4
      004922 12 6F C0         [24] 5494 	lcall	__divulong
      004925 AF 82            [24] 5495 	mov	r7,dpl
      004927 AE 83            [24] 5496 	mov	r6,dph
      004929 AD F0            [24] 5497 	mov	r5,b
      00492B FC               [12] 5498 	mov	r4,a
      00492C E5 81            [12] 5499 	mov	a,sp
      00492E 24 FC            [12] 5500 	add	a,#0xfc
      004930 F5 81            [12] 5501 	mov	sp,a
      004932 E5 08            [12] 5502 	mov	a,_bp
      004934 24 19            [12] 5503 	add	a,#0x19
      004936 F8               [12] 5504 	mov	r0,a
      004937 A6 07            [24] 5505 	mov	@r0,ar7
      004939 08               [12] 5506 	inc	r0
      00493A A6 06            [24] 5507 	mov	@r0,ar6
      00493C 08               [12] 5508 	inc	r0
      00493D A6 05            [24] 5509 	mov	@r0,ar5
      00493F 08               [12] 5510 	inc	r0
      004940 A6 04            [24] 5511 	mov	@r0,ar4
      004942                       5512 00178$:
                                   5513 ;	calc.c:258: (void)stack_push(ctx->ps, d1);
      004942 E5 08            [12] 5514 	mov	a,_bp
      004944 24 0B            [12] 5515 	add	a,#0x0b
      004946 F8               [12] 5516 	mov	r0,a
      004947 86 82            [24] 5517 	mov	dpl,@r0
      004949 08               [12] 5518 	inc	r0
      00494A 86 83            [24] 5519 	mov	dph,@r0
      00494C 08               [12] 5520 	inc	r0
      00494D 86 F0            [24] 5521 	mov	b,@r0
      00494F 12 70 CC         [24] 5522 	lcall	__gptrget
      004952 FA               [12] 5523 	mov	r2,a
      004953 A3               [24] 5524 	inc	dptr
      004954 12 70 CC         [24] 5525 	lcall	__gptrget
      004957 FB               [12] 5526 	mov	r3,a
      004958 A3               [24] 5527 	inc	dptr
      004959 12 70 CC         [24] 5528 	lcall	__gptrget
      00495C FC               [12] 5529 	mov	r4,a
      00495D E5 08            [12] 5530 	mov	a,_bp
      00495F 24 19            [12] 5531 	add	a,#0x19
      004961 F8               [12] 5532 	mov	r0,a
      004962 E6               [12] 5533 	mov	a,@r0
      004963 C0 E0            [24] 5534 	push	acc
      004965 08               [12] 5535 	inc	r0
      004966 E6               [12] 5536 	mov	a,@r0
      004967 C0 E0            [24] 5537 	push	acc
      004969 08               [12] 5538 	inc	r0
      00496A E6               [12] 5539 	mov	a,@r0
      00496B C0 E0            [24] 5540 	push	acc
      00496D 08               [12] 5541 	inc	r0
      00496E E6               [12] 5542 	mov	a,@r0
      00496F C0 E0            [24] 5543 	push	acc
      004971 8A 82            [24] 5544 	mov	dpl,r2
      004973 8B 83            [24] 5545 	mov	dph,r3
      004975 8C F0            [24] 5546 	mov	b,r4
      004977 12 26 B5         [24] 5547 	lcall	_stack_push
      00497A E5 81            [12] 5548 	mov	a,sp
      00497C 24 FC            [12] 5549 	add	a,#0xfc
      00497E F5 81            [12] 5550 	mov	sp,a
                                   5551 ;	calc.c:260: break;
      004980 02 57 05         [24] 5552 	ljmp	00249$
                                   5553 ;	calc.c:262: case '#':
      004983                       5554 00189$:
                                   5555 ;	calc.c:263: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004983 C0 05            [24] 5556 	push	ar5
      004985 C0 06            [24] 5557 	push	ar6
      004987 C0 07            [24] 5558 	push	ar7
      004989 E5 08            [12] 5559 	mov	a,_bp
      00498B 24 15            [12] 5560 	add	a,#0x15
      00498D FC               [12] 5561 	mov	r4,a
      00498E 7B 00            [12] 5562 	mov	r3,#0x00
      004990 7A 40            [12] 5563 	mov	r2,#0x40
      004992 E5 08            [12] 5564 	mov	a,_bp
      004994 24 12            [12] 5565 	add	a,#0x12
      004996 F8               [12] 5566 	mov	r0,a
      004997 E5 08            [12] 5567 	mov	a,_bp
      004999 24 0E            [12] 5568 	add	a,#0x0e
      00499B F9               [12] 5569 	mov	r1,a
      00499C 74 11            [12] 5570 	mov	a,#0x11
      00499E 26               [12] 5571 	add	a,@r0
      00499F F7               [12] 5572 	mov	@r1,a
      0049A0 74 40            [12] 5573 	mov	a,#0x40
      0049A2 08               [12] 5574 	inc	r0
      0049A3 36               [12] 5575 	addc	a,@r0
      0049A4 09               [12] 5576 	inc	r1
      0049A5 F7               [12] 5577 	mov	@r1,a
      0049A6 08               [12] 5578 	inc	r0
      0049A7 09               [12] 5579 	inc	r1
      0049A8 E6               [12] 5580 	mov	a,@r0
      0049A9 F7               [12] 5581 	mov	@r1,a
      0049AA E5 08            [12] 5582 	mov	a,_bp
      0049AC 24 0E            [12] 5583 	add	a,#0x0e
      0049AE F8               [12] 5584 	mov	r0,a
      0049AF 86 82            [24] 5585 	mov	dpl,@r0
      0049B1 08               [12] 5586 	inc	r0
      0049B2 86 83            [24] 5587 	mov	dph,@r0
      0049B4 08               [12] 5588 	inc	r0
      0049B5 86 F0            [24] 5589 	mov	b,@r0
      0049B7 12 70 CC         [24] 5590 	lcall	__gptrget
      0049BA FD               [12] 5591 	mov	r5,a
      0049BB A3               [24] 5592 	inc	dptr
      0049BC 12 70 CC         [24] 5593 	lcall	__gptrget
      0049BF FE               [12] 5594 	mov	r6,a
      0049C0 A3               [24] 5595 	inc	dptr
      0049C1 12 70 CC         [24] 5596 	lcall	__gptrget
      0049C4 FF               [12] 5597 	mov	r7,a
      0049C5 C0 05            [24] 5598 	push	ar5
      0049C7 C0 04            [24] 5599 	push	ar4
      0049C9 C0 03            [24] 5600 	push	ar3
      0049CB C0 02            [24] 5601 	push	ar2
      0049CD 8D 82            [24] 5602 	mov	dpl,r5
      0049CF 8E 83            [24] 5603 	mov	dph,r6
      0049D1 8F F0            [24] 5604 	mov	b,r7
      0049D3 12 27 83         [24] 5605 	lcall	_stack_pop
      0049D6 AE 82            [24] 5606 	mov	r6,dpl
      0049D8 AF 83            [24] 5607 	mov	r7,dph
      0049DA 15 81            [12] 5608 	dec	sp
      0049DC 15 81            [12] 5609 	dec	sp
      0049DE 15 81            [12] 5610 	dec	sp
      0049E0 D0 05            [24] 5611 	pop	ar5
      0049E2 EE               [12] 5612 	mov	a,r6
      0049E3 4F               [12] 5613 	orl	a,r7
      0049E4 D0 07            [24] 5614 	pop	ar7
      0049E6 D0 06            [24] 5615 	pop	ar6
      0049E8 D0 05            [24] 5616 	pop	ar5
      0049EA 70 25            [24] 5617 	jnz	00200$
      0049EC 7F 9B            [12] 5618 	mov	r7,#___str_10
      0049EE 7E 89            [12] 5619 	mov	r6,#(___str_10 >> 8)
      0049F0 7D 80            [12] 5620 	mov	r5,#0x80
                                   5621 ;	calc.c:53: return;
      0049F2                       5622 00453$:
                                   5623 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0049F2 8F 82            [24] 5624 	mov	dpl,r7
      0049F4 8E 83            [24] 5625 	mov	dph,r6
      0049F6 8D F0            [24] 5626 	mov	b,r5
      0049F8 12 70 CC         [24] 5627 	lcall	__gptrget
      0049FB FC               [12] 5628 	mov	r4,a
      0049FC 70 03            [24] 5629 	jnz	01355$
      0049FE 02 57 05         [24] 5630 	ljmp	00249$
      004A01                       5631 01355$:
      004A01 7B 00            [12] 5632 	mov	r3,#0x00
      004A03 8C 82            [24] 5633 	mov	dpl,r4
      004A05 8B 83            [24] 5634 	mov	dph,r3
      004A07 12 2B 70         [24] 5635 	lcall	_putchar
      004A0A 0F               [12] 5636 	inc	r7
                                   5637 ;	calc.c:263: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004A0B BF 00 E4         [24] 5638 	cjne	r7,#0x00,00453$
      004A0E 0E               [12] 5639 	inc	r6
      004A0F 80 E1            [24] 5640 	sjmp	00453$
      004A11                       5641 00200$:
                                   5642 ;	calc.c:264: else if (!stack_pop(ctx->ps, &d1)) {
      004A11 C0 05            [24] 5643 	push	ar5
      004A13 C0 06            [24] 5644 	push	ar6
      004A15 C0 07            [24] 5645 	push	ar7
      004A17 E5 08            [12] 5646 	mov	a,_bp
      004A19 24 19            [12] 5647 	add	a,#0x19
      004A1B FC               [12] 5648 	mov	r4,a
      004A1C 7B 00            [12] 5649 	mov	r3,#0x00
      004A1E 7A 40            [12] 5650 	mov	r2,#0x40
      004A20 E5 08            [12] 5651 	mov	a,_bp
      004A22 24 0E            [12] 5652 	add	a,#0x0e
      004A24 F8               [12] 5653 	mov	r0,a
      004A25 86 82            [24] 5654 	mov	dpl,@r0
      004A27 08               [12] 5655 	inc	r0
      004A28 86 83            [24] 5656 	mov	dph,@r0
      004A2A 08               [12] 5657 	inc	r0
      004A2B 86 F0            [24] 5658 	mov	b,@r0
      004A2D 12 70 CC         [24] 5659 	lcall	__gptrget
      004A30 FD               [12] 5660 	mov	r5,a
      004A31 A3               [24] 5661 	inc	dptr
      004A32 12 70 CC         [24] 5662 	lcall	__gptrget
      004A35 FE               [12] 5663 	mov	r6,a
      004A36 A3               [24] 5664 	inc	dptr
      004A37 12 70 CC         [24] 5665 	lcall	__gptrget
      004A3A FF               [12] 5666 	mov	r7,a
      004A3B C0 05            [24] 5667 	push	ar5
      004A3D C0 04            [24] 5668 	push	ar4
      004A3F C0 03            [24] 5669 	push	ar3
      004A41 C0 02            [24] 5670 	push	ar2
      004A43 8D 82            [24] 5671 	mov	dpl,r5
      004A45 8E 83            [24] 5672 	mov	dph,r6
      004A47 8F F0            [24] 5673 	mov	b,r7
      004A49 12 27 83         [24] 5674 	lcall	_stack_pop
      004A4C AE 82            [24] 5675 	mov	r6,dpl
      004A4E AF 83            [24] 5676 	mov	r7,dph
      004A50 15 81            [12] 5677 	dec	sp
      004A52 15 81            [12] 5678 	dec	sp
      004A54 15 81            [12] 5679 	dec	sp
      004A56 D0 05            [24] 5680 	pop	ar5
      004A58 EE               [12] 5681 	mov	a,r6
      004A59 4F               [12] 5682 	orl	a,r7
      004A5A D0 07            [24] 5683 	pop	ar7
      004A5C D0 06            [24] 5684 	pop	ar6
      004A5E D0 05            [24] 5685 	pop	ar5
      004A60 70 63            [24] 5686 	jnz	00197$
                                   5687 ;	calc.c:265: (void)stack_push(ctx->ps, d0);
      004A62 E5 08            [12] 5688 	mov	a,_bp
      004A64 24 0E            [12] 5689 	add	a,#0x0e
      004A66 F8               [12] 5690 	mov	r0,a
      004A67 86 82            [24] 5691 	mov	dpl,@r0
      004A69 08               [12] 5692 	inc	r0
      004A6A 86 83            [24] 5693 	mov	dph,@r0
      004A6C 08               [12] 5694 	inc	r0
      004A6D 86 F0            [24] 5695 	mov	b,@r0
      004A6F 12 70 CC         [24] 5696 	lcall	__gptrget
      004A72 FA               [12] 5697 	mov	r2,a
      004A73 A3               [24] 5698 	inc	dptr
      004A74 12 70 CC         [24] 5699 	lcall	__gptrget
      004A77 FB               [12] 5700 	mov	r3,a
      004A78 A3               [24] 5701 	inc	dptr
      004A79 12 70 CC         [24] 5702 	lcall	__gptrget
      004A7C FC               [12] 5703 	mov	r4,a
      004A7D E5 08            [12] 5704 	mov	a,_bp
      004A7F 24 15            [12] 5705 	add	a,#0x15
      004A81 F8               [12] 5706 	mov	r0,a
      004A82 E6               [12] 5707 	mov	a,@r0
      004A83 C0 E0            [24] 5708 	push	acc
      004A85 08               [12] 5709 	inc	r0
      004A86 E6               [12] 5710 	mov	a,@r0
      004A87 C0 E0            [24] 5711 	push	acc
      004A89 08               [12] 5712 	inc	r0
      004A8A E6               [12] 5713 	mov	a,@r0
      004A8B C0 E0            [24] 5714 	push	acc
      004A8D 08               [12] 5715 	inc	r0
      004A8E E6               [12] 5716 	mov	a,@r0
      004A8F C0 E0            [24] 5717 	push	acc
      004A91 8A 82            [24] 5718 	mov	dpl,r2
      004A93 8B 83            [24] 5719 	mov	dph,r3
      004A95 8C F0            [24] 5720 	mov	b,r4
      004A97 12 26 B5         [24] 5721 	lcall	_stack_push
      004A9A E5 81            [12] 5722 	mov	a,sp
      004A9C 24 FC            [12] 5723 	add	a,#0xfc
      004A9E F5 81            [12] 5724 	mov	sp,a
                                   5725 ;	calc.c:266: printstr("\r\nstack underflow\r\n");
      004AA0 7F 9B            [12] 5726 	mov	r7,#___str_10
      004AA2 7E 89            [12] 5727 	mov	r6,#(___str_10 >> 8)
      004AA4 7D 80            [12] 5728 	mov	r5,#0x80
                                   5729 ;	calc.c:53: return;
      004AA6                       5730 00456$:
                                   5731 ;	calc.c:51: for (; *s; s++) putchar(*s);
      004AA6 8F 82            [24] 5732 	mov	dpl,r7
      004AA8 8E 83            [24] 5733 	mov	dph,r6
      004AAA 8D F0            [24] 5734 	mov	b,r5
      004AAC 12 70 CC         [24] 5735 	lcall	__gptrget
      004AAF FC               [12] 5736 	mov	r4,a
      004AB0 70 03            [24] 5737 	jnz	01358$
      004AB2 02 57 05         [24] 5738 	ljmp	00249$
      004AB5                       5739 01358$:
      004AB5 7B 00            [12] 5740 	mov	r3,#0x00
      004AB7 8C 82            [24] 5741 	mov	dpl,r4
      004AB9 8B 83            [24] 5742 	mov	dph,r3
      004ABB 12 2B 70         [24] 5743 	lcall	_putchar
      004ABE 0F               [12] 5744 	inc	r7
                                   5745 ;	calc.c:266: printstr("\r\nstack underflow\r\n");
      004ABF BF 00 E4         [24] 5746 	cjne	r7,#0x00,00456$
      004AC2 0E               [12] 5747 	inc	r6
      004AC3 80 E1            [24] 5748 	sjmp	00456$
      004AC5                       5749 00197$:
                                   5750 ;	calc.c:267: } else if (!d0) {
      004AC5 E5 08            [12] 5751 	mov	a,_bp
      004AC7 24 15            [12] 5752 	add	a,#0x15
      004AC9 F8               [12] 5753 	mov	r0,a
      004ACA E6               [12] 5754 	mov	a,@r0
      004ACB 08               [12] 5755 	inc	r0
      004ACC 46               [12] 5756 	orl	a,@r0
      004ACD 08               [12] 5757 	inc	r0
      004ACE 46               [12] 5758 	orl	a,@r0
      004ACF 08               [12] 5759 	inc	r0
      004AD0 46               [12] 5760 	orl	a,@r0
      004AD1 60 03            [24] 5761 	jz	01360$
      004AD3 02 4B 77         [24] 5762 	ljmp	00194$
      004AD6                       5763 01360$:
                                   5764 ;	calc.c:268: (void)stack_push(ctx->ps, d1);
      004AD6 E5 08            [12] 5765 	mov	a,_bp
      004AD8 24 0E            [12] 5766 	add	a,#0x0e
      004ADA F8               [12] 5767 	mov	r0,a
      004ADB 86 82            [24] 5768 	mov	dpl,@r0
      004ADD 08               [12] 5769 	inc	r0
      004ADE 86 83            [24] 5770 	mov	dph,@r0
      004AE0 08               [12] 5771 	inc	r0
      004AE1 86 F0            [24] 5772 	mov	b,@r0
      004AE3 12 70 CC         [24] 5773 	lcall	__gptrget
      004AE6 FA               [12] 5774 	mov	r2,a
      004AE7 A3               [24] 5775 	inc	dptr
      004AE8 12 70 CC         [24] 5776 	lcall	__gptrget
      004AEB FB               [12] 5777 	mov	r3,a
      004AEC A3               [24] 5778 	inc	dptr
      004AED 12 70 CC         [24] 5779 	lcall	__gptrget
      004AF0 FC               [12] 5780 	mov	r4,a
      004AF1 E5 08            [12] 5781 	mov	a,_bp
      004AF3 24 19            [12] 5782 	add	a,#0x19
      004AF5 F8               [12] 5783 	mov	r0,a
      004AF6 E6               [12] 5784 	mov	a,@r0
      004AF7 C0 E0            [24] 5785 	push	acc
      004AF9 08               [12] 5786 	inc	r0
      004AFA E6               [12] 5787 	mov	a,@r0
      004AFB C0 E0            [24] 5788 	push	acc
      004AFD 08               [12] 5789 	inc	r0
      004AFE E6               [12] 5790 	mov	a,@r0
      004AFF C0 E0            [24] 5791 	push	acc
      004B01 08               [12] 5792 	inc	r0
      004B02 E6               [12] 5793 	mov	a,@r0
      004B03 C0 E0            [24] 5794 	push	acc
      004B05 8A 82            [24] 5795 	mov	dpl,r2
      004B07 8B 83            [24] 5796 	mov	dph,r3
      004B09 8C F0            [24] 5797 	mov	b,r4
      004B0B 12 26 B5         [24] 5798 	lcall	_stack_push
      004B0E E5 81            [12] 5799 	mov	a,sp
      004B10 24 FC            [12] 5800 	add	a,#0xfc
      004B12 F5 81            [12] 5801 	mov	sp,a
                                   5802 ;	calc.c:269: (void)stack_push(ctx->ps, d0);			
      004B14 E5 08            [12] 5803 	mov	a,_bp
      004B16 24 0E            [12] 5804 	add	a,#0x0e
      004B18 F8               [12] 5805 	mov	r0,a
      004B19 86 82            [24] 5806 	mov	dpl,@r0
      004B1B 08               [12] 5807 	inc	r0
      004B1C 86 83            [24] 5808 	mov	dph,@r0
      004B1E 08               [12] 5809 	inc	r0
      004B1F 86 F0            [24] 5810 	mov	b,@r0
      004B21 12 70 CC         [24] 5811 	lcall	__gptrget
      004B24 FA               [12] 5812 	mov	r2,a
      004B25 A3               [24] 5813 	inc	dptr
      004B26 12 70 CC         [24] 5814 	lcall	__gptrget
      004B29 FB               [12] 5815 	mov	r3,a
      004B2A A3               [24] 5816 	inc	dptr
      004B2B 12 70 CC         [24] 5817 	lcall	__gptrget
      004B2E FC               [12] 5818 	mov	r4,a
      004B2F E5 08            [12] 5819 	mov	a,_bp
      004B31 24 15            [12] 5820 	add	a,#0x15
      004B33 F8               [12] 5821 	mov	r0,a
      004B34 E6               [12] 5822 	mov	a,@r0
      004B35 C0 E0            [24] 5823 	push	acc
      004B37 08               [12] 5824 	inc	r0
      004B38 E6               [12] 5825 	mov	a,@r0
      004B39 C0 E0            [24] 5826 	push	acc
      004B3B 08               [12] 5827 	inc	r0
      004B3C E6               [12] 5828 	mov	a,@r0
      004B3D C0 E0            [24] 5829 	push	acc
      004B3F 08               [12] 5830 	inc	r0
      004B40 E6               [12] 5831 	mov	a,@r0
      004B41 C0 E0            [24] 5832 	push	acc
      004B43 8A 82            [24] 5833 	mov	dpl,r2
      004B45 8B 83            [24] 5834 	mov	dph,r3
      004B47 8C F0            [24] 5835 	mov	b,r4
      004B49 12 26 B5         [24] 5836 	lcall	_stack_push
      004B4C E5 81            [12] 5837 	mov	a,sp
      004B4E 24 FC            [12] 5838 	add	a,#0xfc
      004B50 F5 81            [12] 5839 	mov	sp,a
                                   5840 ;	calc.c:270: printstr("\r\ndivision by zero\r\n");
      004B52 7F FD            [12] 5841 	mov	r7,#___str_14
      004B54 7E 89            [12] 5842 	mov	r6,#(___str_14 >> 8)
      004B56 7D 80            [12] 5843 	mov	r5,#0x80
                                   5844 ;	calc.c:53: return;
      004B58                       5845 00459$:
                                   5846 ;	calc.c:51: for (; *s; s++) putchar(*s);
      004B58 8F 82            [24] 5847 	mov	dpl,r7
      004B5A 8E 83            [24] 5848 	mov	dph,r6
      004B5C 8D F0            [24] 5849 	mov	b,r5
      004B5E 12 70 CC         [24] 5850 	lcall	__gptrget
      004B61 FC               [12] 5851 	mov	r4,a
      004B62 70 03            [24] 5852 	jnz	01361$
      004B64 02 57 05         [24] 5853 	ljmp	00249$
      004B67                       5854 01361$:
      004B67 7B 00            [12] 5855 	mov	r3,#0x00
      004B69 8C 82            [24] 5856 	mov	dpl,r4
      004B6B 8B 83            [24] 5857 	mov	dph,r3
      004B6D 12 2B 70         [24] 5858 	lcall	_putchar
      004B70 0F               [12] 5859 	inc	r7
                                   5860 ;	calc.c:270: printstr("\r\ndivision by zero\r\n");
      004B71 BF 00 E4         [24] 5861 	cjne	r7,#0x00,00459$
      004B74 0E               [12] 5862 	inc	r6
      004B75 80 E1            [24] 5863 	sjmp	00459$
      004B77                       5864 00194$:
                                   5865 ;	calc.c:272: if (ctx->digit[0] == '%') d1 %= d0;
      004B77 8D 82            [24] 5866 	mov	dpl,r5
      004B79 8E 83            [24] 5867 	mov	dph,r6
      004B7B 8F F0            [24] 5868 	mov	b,r7
      004B7D 12 70 CC         [24] 5869 	lcall	__gptrget
      004B80 FD               [12] 5870 	mov	r5,a
      004B81 BD 25 45         [24] 5871 	cjne	r5,#0x25,00191$
      004B84 E5 08            [12] 5872 	mov	a,_bp
      004B86 24 15            [12] 5873 	add	a,#0x15
      004B88 F8               [12] 5874 	mov	r0,a
      004B89 E6               [12] 5875 	mov	a,@r0
      004B8A C0 E0            [24] 5876 	push	acc
      004B8C 08               [12] 5877 	inc	r0
      004B8D E6               [12] 5878 	mov	a,@r0
      004B8E C0 E0            [24] 5879 	push	acc
      004B90 08               [12] 5880 	inc	r0
      004B91 E6               [12] 5881 	mov	a,@r0
      004B92 C0 E0            [24] 5882 	push	acc
      004B94 08               [12] 5883 	inc	r0
      004B95 E6               [12] 5884 	mov	a,@r0
      004B96 C0 E0            [24] 5885 	push	acc
      004B98 E5 08            [12] 5886 	mov	a,_bp
      004B9A 24 19            [12] 5887 	add	a,#0x19
      004B9C F8               [12] 5888 	mov	r0,a
      004B9D 86 82            [24] 5889 	mov	dpl,@r0
      004B9F 08               [12] 5890 	inc	r0
      004BA0 86 83            [24] 5891 	mov	dph,@r0
      004BA2 08               [12] 5892 	inc	r0
      004BA3 86 F0            [24] 5893 	mov	b,@r0
      004BA5 08               [12] 5894 	inc	r0
      004BA6 E6               [12] 5895 	mov	a,@r0
      004BA7 12 6D 0A         [24] 5896 	lcall	__modslong
      004BAA AC 82            [24] 5897 	mov	r4,dpl
      004BAC AD 83            [24] 5898 	mov	r5,dph
      004BAE AE F0            [24] 5899 	mov	r6,b
      004BB0 FF               [12] 5900 	mov	r7,a
      004BB1 E5 81            [12] 5901 	mov	a,sp
      004BB3 24 FC            [12] 5902 	add	a,#0xfc
      004BB5 F5 81            [12] 5903 	mov	sp,a
      004BB7 E5 08            [12] 5904 	mov	a,_bp
      004BB9 24 19            [12] 5905 	add	a,#0x19
      004BBB F8               [12] 5906 	mov	r0,a
      004BBC A6 04            [24] 5907 	mov	@r0,ar4
      004BBE 08               [12] 5908 	inc	r0
      004BBF A6 05            [24] 5909 	mov	@r0,ar5
      004BC1 08               [12] 5910 	inc	r0
      004BC2 A6 06            [24] 5911 	mov	@r0,ar6
      004BC4 08               [12] 5912 	inc	r0
      004BC5 A6 07            [24] 5913 	mov	@r0,ar7
      004BC7 80 5F            [24] 5914 	sjmp	00192$
      004BC9                       5915 00191$:
                                   5916 ;	calc.c:273: else d1 = (unsigned long)d1 % (unsigned long)d0;
      004BC9 E5 08            [12] 5917 	mov	a,_bp
      004BCB 24 19            [12] 5918 	add	a,#0x19
      004BCD F8               [12] 5919 	mov	r0,a
      004BCE E5 08            [12] 5920 	mov	a,_bp
      004BD0 24 07            [12] 5921 	add	a,#0x07
      004BD2 F9               [12] 5922 	mov	r1,a
      004BD3 E6               [12] 5923 	mov	a,@r0
      004BD4 F7               [12] 5924 	mov	@r1,a
      004BD5 08               [12] 5925 	inc	r0
      004BD6 09               [12] 5926 	inc	r1
      004BD7 E6               [12] 5927 	mov	a,@r0
      004BD8 F7               [12] 5928 	mov	@r1,a
      004BD9 08               [12] 5929 	inc	r0
      004BDA 09               [12] 5930 	inc	r1
      004BDB E6               [12] 5931 	mov	a,@r0
      004BDC F7               [12] 5932 	mov	@r1,a
      004BDD 08               [12] 5933 	inc	r0
      004BDE 09               [12] 5934 	inc	r1
      004BDF E6               [12] 5935 	mov	a,@r0
      004BE0 F7               [12] 5936 	mov	@r1,a
      004BE1 E5 08            [12] 5937 	mov	a,_bp
      004BE3 24 15            [12] 5938 	add	a,#0x15
      004BE5 F8               [12] 5939 	mov	r0,a
      004BE6 86 02            [24] 5940 	mov	ar2,@r0
      004BE8 08               [12] 5941 	inc	r0
      004BE9 86 03            [24] 5942 	mov	ar3,@r0
      004BEB 08               [12] 5943 	inc	r0
      004BEC 86 06            [24] 5944 	mov	ar6,@r0
      004BEE 08               [12] 5945 	inc	r0
      004BEF 86 07            [24] 5946 	mov	ar7,@r0
      004BF1 C0 02            [24] 5947 	push	ar2
      004BF3 C0 03            [24] 5948 	push	ar3
      004BF5 C0 06            [24] 5949 	push	ar6
      004BF7 C0 07            [24] 5950 	push	ar7
      004BF9 E5 08            [12] 5951 	mov	a,_bp
      004BFB 24 07            [12] 5952 	add	a,#0x07
      004BFD F8               [12] 5953 	mov	r0,a
      004BFE 86 82            [24] 5954 	mov	dpl,@r0
      004C00 08               [12] 5955 	inc	r0
      004C01 86 83            [24] 5956 	mov	dph,@r0
      004C03 08               [12] 5957 	inc	r0
      004C04 86 F0            [24] 5958 	mov	b,@r0
      004C06 08               [12] 5959 	inc	r0
      004C07 E6               [12] 5960 	mov	a,@r0
      004C08 12 6E 01         [24] 5961 	lcall	__modulong
      004C0B AC 82            [24] 5962 	mov	r4,dpl
      004C0D AD 83            [24] 5963 	mov	r5,dph
      004C0F AE F0            [24] 5964 	mov	r6,b
      004C11 FF               [12] 5965 	mov	r7,a
      004C12 E5 81            [12] 5966 	mov	a,sp
      004C14 24 FC            [12] 5967 	add	a,#0xfc
      004C16 F5 81            [12] 5968 	mov	sp,a
      004C18 E5 08            [12] 5969 	mov	a,_bp
      004C1A 24 19            [12] 5970 	add	a,#0x19
      004C1C F8               [12] 5971 	mov	r0,a
      004C1D A6 04            [24] 5972 	mov	@r0,ar4
      004C1F 08               [12] 5973 	inc	r0
      004C20 A6 05            [24] 5974 	mov	@r0,ar5
      004C22 08               [12] 5975 	inc	r0
      004C23 A6 06            [24] 5976 	mov	@r0,ar6
      004C25 08               [12] 5977 	inc	r0
      004C26 A6 07            [24] 5978 	mov	@r0,ar7
      004C28                       5979 00192$:
                                   5980 ;	calc.c:274: (void)stack_push(ctx->ps, d1);
      004C28 E5 08            [12] 5981 	mov	a,_bp
      004C2A 24 0E            [12] 5982 	add	a,#0x0e
      004C2C F8               [12] 5983 	mov	r0,a
      004C2D 86 82            [24] 5984 	mov	dpl,@r0
      004C2F 08               [12] 5985 	inc	r0
      004C30 86 83            [24] 5986 	mov	dph,@r0
      004C32 08               [12] 5987 	inc	r0
      004C33 86 F0            [24] 5988 	mov	b,@r0
      004C35 12 70 CC         [24] 5989 	lcall	__gptrget
      004C38 FD               [12] 5990 	mov	r5,a
      004C39 A3               [24] 5991 	inc	dptr
      004C3A 12 70 CC         [24] 5992 	lcall	__gptrget
      004C3D FE               [12] 5993 	mov	r6,a
      004C3E A3               [24] 5994 	inc	dptr
      004C3F 12 70 CC         [24] 5995 	lcall	__gptrget
      004C42 FF               [12] 5996 	mov	r7,a
      004C43 E5 08            [12] 5997 	mov	a,_bp
      004C45 24 19            [12] 5998 	add	a,#0x19
      004C47 F8               [12] 5999 	mov	r0,a
      004C48 E6               [12] 6000 	mov	a,@r0
      004C49 C0 E0            [24] 6001 	push	acc
      004C4B 08               [12] 6002 	inc	r0
      004C4C E6               [12] 6003 	mov	a,@r0
      004C4D C0 E0            [24] 6004 	push	acc
      004C4F 08               [12] 6005 	inc	r0
      004C50 E6               [12] 6006 	mov	a,@r0
      004C51 C0 E0            [24] 6007 	push	acc
      004C53 08               [12] 6008 	inc	r0
      004C54 E6               [12] 6009 	mov	a,@r0
      004C55 C0 E0            [24] 6010 	push	acc
      004C57 8D 82            [24] 6011 	mov	dpl,r5
      004C59 8E 83            [24] 6012 	mov	dph,r6
      004C5B 8F F0            [24] 6013 	mov	b,r7
      004C5D 12 26 B5         [24] 6014 	lcall	_stack_push
      004C60 E5 81            [12] 6015 	mov	a,sp
      004C62 24 FC            [12] 6016 	add	a,#0xfc
      004C64 F5 81            [12] 6017 	mov	sp,a
                                   6018 ;	calc.c:276: break;
      004C66 02 57 05         [24] 6019 	ljmp	00249$
                                   6020 ;	calc.c:277: case '&':
      004C69                       6021 00202$:
                                   6022 ;	calc.c:278: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004C69 E5 08            [12] 6023 	mov	a,_bp
      004C6B 24 15            [12] 6024 	add	a,#0x15
      004C6D FF               [12] 6025 	mov	r7,a
      004C6E E5 08            [12] 6026 	mov	a,_bp
      004C70 24 0E            [12] 6027 	add	a,#0x0e
      004C72 F8               [12] 6028 	mov	r0,a
      004C73 A6 07            [24] 6029 	mov	@r0,ar7
      004C75 08               [12] 6030 	inc	r0
      004C76 76 00            [12] 6031 	mov	@r0,#0x00
      004C78 08               [12] 6032 	inc	r0
      004C79 76 40            [12] 6033 	mov	@r0,#0x40
      004C7B E5 08            [12] 6034 	mov	a,_bp
      004C7D 24 12            [12] 6035 	add	a,#0x12
      004C7F F8               [12] 6036 	mov	r0,a
      004C80 74 11            [12] 6037 	mov	a,#0x11
      004C82 26               [12] 6038 	add	a,@r0
      004C83 FA               [12] 6039 	mov	r2,a
      004C84 74 40            [12] 6040 	mov	a,#0x40
      004C86 08               [12] 6041 	inc	r0
      004C87 36               [12] 6042 	addc	a,@r0
      004C88 FB               [12] 6043 	mov	r3,a
      004C89 08               [12] 6044 	inc	r0
      004C8A 86 04            [24] 6045 	mov	ar4,@r0
      004C8C 8A 82            [24] 6046 	mov	dpl,r2
      004C8E 8B 83            [24] 6047 	mov	dph,r3
      004C90 8C F0            [24] 6048 	mov	b,r4
      004C92 12 70 CC         [24] 6049 	lcall	__gptrget
      004C95 FD               [12] 6050 	mov	r5,a
      004C96 A3               [24] 6051 	inc	dptr
      004C97 12 70 CC         [24] 6052 	lcall	__gptrget
      004C9A FE               [12] 6053 	mov	r6,a
      004C9B A3               [24] 6054 	inc	dptr
      004C9C 12 70 CC         [24] 6055 	lcall	__gptrget
      004C9F FF               [12] 6056 	mov	r7,a
      004CA0 C0 04            [24] 6057 	push	ar4
      004CA2 C0 03            [24] 6058 	push	ar3
      004CA4 C0 02            [24] 6059 	push	ar2
      004CA6 E5 08            [12] 6060 	mov	a,_bp
      004CA8 24 0E            [12] 6061 	add	a,#0x0e
      004CAA F8               [12] 6062 	mov	r0,a
      004CAB E6               [12] 6063 	mov	a,@r0
      004CAC C0 E0            [24] 6064 	push	acc
      004CAE 08               [12] 6065 	inc	r0
      004CAF E6               [12] 6066 	mov	a,@r0
      004CB0 C0 E0            [24] 6067 	push	acc
      004CB2 08               [12] 6068 	inc	r0
      004CB3 E6               [12] 6069 	mov	a,@r0
      004CB4 C0 E0            [24] 6070 	push	acc
      004CB6 8D 82            [24] 6071 	mov	dpl,r5
      004CB8 8E 83            [24] 6072 	mov	dph,r6
      004CBA 8F F0            [24] 6073 	mov	b,r7
      004CBC 12 27 83         [24] 6074 	lcall	_stack_pop
      004CBF AE 82            [24] 6075 	mov	r6,dpl
      004CC1 AF 83            [24] 6076 	mov	r7,dph
      004CC3 15 81            [12] 6077 	dec	sp
      004CC5 15 81            [12] 6078 	dec	sp
      004CC7 15 81            [12] 6079 	dec	sp
      004CC9 D0 02            [24] 6080 	pop	ar2
      004CCB D0 03            [24] 6081 	pop	ar3
      004CCD D0 04            [24] 6082 	pop	ar4
      004CCF EE               [12] 6083 	mov	a,r6
      004CD0 4F               [12] 6084 	orl	a,r7
      004CD1 70 25            [24] 6085 	jnz	00207$
      004CD3 7D 9B            [12] 6086 	mov	r5,#___str_10
      004CD5 7C 89            [12] 6087 	mov	r4,#(___str_10 >> 8)
      004CD7 7B 80            [12] 6088 	mov	r3,#0x80
                                   6089 ;	calc.c:53: return;
      004CD9                       6090 00462$:
                                   6091 ;	calc.c:51: for (; *s; s++) putchar(*s);
      004CD9 8D 82            [24] 6092 	mov	dpl,r5
      004CDB 8C 83            [24] 6093 	mov	dph,r4
      004CDD 8B F0            [24] 6094 	mov	b,r3
      004CDF 12 70 CC         [24] 6095 	lcall	__gptrget
      004CE2 FF               [12] 6096 	mov	r7,a
      004CE3 70 03            [24] 6097 	jnz	01366$
      004CE5 02 57 05         [24] 6098 	ljmp	00249$
      004CE8                       6099 01366$:
      004CE8 7E 00            [12] 6100 	mov	r6,#0x00
      004CEA 8F 82            [24] 6101 	mov	dpl,r7
      004CEC 8E 83            [24] 6102 	mov	dph,r6
      004CEE 12 2B 70         [24] 6103 	lcall	_putchar
      004CF1 0D               [12] 6104 	inc	r5
                                   6105 ;	calc.c:278: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004CF2 BD 00 E4         [24] 6106 	cjne	r5,#0x00,00462$
      004CF5 0C               [12] 6107 	inc	r4
      004CF6 80 E1            [24] 6108 	sjmp	00462$
      004CF8                       6109 00207$:
                                   6110 ;	calc.c:279: else if (!stack_pop(ctx->ps, &d1)) {
      004CF8 E5 08            [12] 6111 	mov	a,_bp
      004CFA 24 19            [12] 6112 	add	a,#0x19
      004CFC FF               [12] 6113 	mov	r7,a
      004CFD E5 08            [12] 6114 	mov	a,_bp
      004CFF 24 0E            [12] 6115 	add	a,#0x0e
      004D01 F8               [12] 6116 	mov	r0,a
      004D02 A6 07            [24] 6117 	mov	@r0,ar7
      004D04 08               [12] 6118 	inc	r0
      004D05 76 00            [12] 6119 	mov	@r0,#0x00
      004D07 08               [12] 6120 	inc	r0
      004D08 76 40            [12] 6121 	mov	@r0,#0x40
      004D0A 8A 82            [24] 6122 	mov	dpl,r2
      004D0C 8B 83            [24] 6123 	mov	dph,r3
      004D0E 8C F0            [24] 6124 	mov	b,r4
      004D10 12 70 CC         [24] 6125 	lcall	__gptrget
      004D13 FD               [12] 6126 	mov	r5,a
      004D14 A3               [24] 6127 	inc	dptr
      004D15 12 70 CC         [24] 6128 	lcall	__gptrget
      004D18 FE               [12] 6129 	mov	r6,a
      004D19 A3               [24] 6130 	inc	dptr
      004D1A 12 70 CC         [24] 6131 	lcall	__gptrget
      004D1D FF               [12] 6132 	mov	r7,a
      004D1E C0 04            [24] 6133 	push	ar4
      004D20 C0 03            [24] 6134 	push	ar3
      004D22 C0 02            [24] 6135 	push	ar2
      004D24 E5 08            [12] 6136 	mov	a,_bp
      004D26 24 0E            [12] 6137 	add	a,#0x0e
      004D28 F8               [12] 6138 	mov	r0,a
      004D29 E6               [12] 6139 	mov	a,@r0
      004D2A C0 E0            [24] 6140 	push	acc
      004D2C 08               [12] 6141 	inc	r0
      004D2D E6               [12] 6142 	mov	a,@r0
      004D2E C0 E0            [24] 6143 	push	acc
      004D30 08               [12] 6144 	inc	r0
      004D31 E6               [12] 6145 	mov	a,@r0
      004D32 C0 E0            [24] 6146 	push	acc
      004D34 8D 82            [24] 6147 	mov	dpl,r5
      004D36 8E 83            [24] 6148 	mov	dph,r6
      004D38 8F F0            [24] 6149 	mov	b,r7
      004D3A 12 27 83         [24] 6150 	lcall	_stack_pop
      004D3D AE 82            [24] 6151 	mov	r6,dpl
      004D3F AF 83            [24] 6152 	mov	r7,dph
      004D41 15 81            [12] 6153 	dec	sp
      004D43 15 81            [12] 6154 	dec	sp
      004D45 15 81            [12] 6155 	dec	sp
      004D47 D0 02            [24] 6156 	pop	ar2
      004D49 D0 03            [24] 6157 	pop	ar3
      004D4B D0 04            [24] 6158 	pop	ar4
      004D4D EE               [12] 6159 	mov	a,r6
      004D4E 4F               [12] 6160 	orl	a,r7
      004D4F 70 5C            [24] 6161 	jnz	00204$
                                   6162 ;	calc.c:280: (void)stack_push(ctx->ps, d0);
      004D51 8A 82            [24] 6163 	mov	dpl,r2
      004D53 8B 83            [24] 6164 	mov	dph,r3
      004D55 8C F0            [24] 6165 	mov	b,r4
      004D57 12 70 CC         [24] 6166 	lcall	__gptrget
      004D5A FD               [12] 6167 	mov	r5,a
      004D5B A3               [24] 6168 	inc	dptr
      004D5C 12 70 CC         [24] 6169 	lcall	__gptrget
      004D5F FE               [12] 6170 	mov	r6,a
      004D60 A3               [24] 6171 	inc	dptr
      004D61 12 70 CC         [24] 6172 	lcall	__gptrget
      004D64 FF               [12] 6173 	mov	r7,a
      004D65 E5 08            [12] 6174 	mov	a,_bp
      004D67 24 15            [12] 6175 	add	a,#0x15
      004D69 F8               [12] 6176 	mov	r0,a
      004D6A E6               [12] 6177 	mov	a,@r0
      004D6B C0 E0            [24] 6178 	push	acc
      004D6D 08               [12] 6179 	inc	r0
      004D6E E6               [12] 6180 	mov	a,@r0
      004D6F C0 E0            [24] 6181 	push	acc
      004D71 08               [12] 6182 	inc	r0
      004D72 E6               [12] 6183 	mov	a,@r0
      004D73 C0 E0            [24] 6184 	push	acc
      004D75 08               [12] 6185 	inc	r0
      004D76 E6               [12] 6186 	mov	a,@r0
      004D77 C0 E0            [24] 6187 	push	acc
      004D79 8D 82            [24] 6188 	mov	dpl,r5
      004D7B 8E 83            [24] 6189 	mov	dph,r6
      004D7D 8F F0            [24] 6190 	mov	b,r7
      004D7F 12 26 B5         [24] 6191 	lcall	_stack_push
      004D82 E5 81            [12] 6192 	mov	a,sp
      004D84 24 FC            [12] 6193 	add	a,#0xfc
      004D86 F5 81            [12] 6194 	mov	sp,a
                                   6195 ;	calc.c:281: printstr("\r\nstack underflow\r\n");
      004D88 7D 9B            [12] 6196 	mov	r5,#___str_10
      004D8A 7C 89            [12] 6197 	mov	r4,#(___str_10 >> 8)
      004D8C 7B 80            [12] 6198 	mov	r3,#0x80
                                   6199 ;	calc.c:53: return;
      004D8E                       6200 00465$:
                                   6201 ;	calc.c:51: for (; *s; s++) putchar(*s);
      004D8E 8D 82            [24] 6202 	mov	dpl,r5
      004D90 8C 83            [24] 6203 	mov	dph,r4
      004D92 8B F0            [24] 6204 	mov	b,r3
      004D94 12 70 CC         [24] 6205 	lcall	__gptrget
      004D97 FF               [12] 6206 	mov	r7,a
      004D98 70 03            [24] 6207 	jnz	01369$
      004D9A 02 57 05         [24] 6208 	ljmp	00249$
      004D9D                       6209 01369$:
      004D9D 7E 00            [12] 6210 	mov	r6,#0x00
      004D9F 8F 82            [24] 6211 	mov	dpl,r7
      004DA1 8E 83            [24] 6212 	mov	dph,r6
      004DA3 12 2B 70         [24] 6213 	lcall	_putchar
      004DA6 0D               [12] 6214 	inc	r5
                                   6215 ;	calc.c:281: printstr("\r\nstack underflow\r\n");
      004DA7 BD 00 E4         [24] 6216 	cjne	r5,#0x00,00465$
      004DAA 0C               [12] 6217 	inc	r4
      004DAB 80 E1            [24] 6218 	sjmp	00465$
      004DAD                       6219 00204$:
                                   6220 ;	calc.c:283: d1 &= d0;
      004DAD E5 08            [12] 6221 	mov	a,_bp
      004DAF 24 19            [12] 6222 	add	a,#0x19
      004DB1 F8               [12] 6223 	mov	r0,a
      004DB2 E5 08            [12] 6224 	mov	a,_bp
      004DB4 24 15            [12] 6225 	add	a,#0x15
      004DB6 F9               [12] 6226 	mov	r1,a
      004DB7 E7               [12] 6227 	mov	a,@r1
      004DB8 56               [12] 6228 	anl	a,@r0
      004DB9 F6               [12] 6229 	mov	@r0,a
      004DBA 09               [12] 6230 	inc	r1
      004DBB E7               [12] 6231 	mov	a,@r1
      004DBC 08               [12] 6232 	inc	r0
      004DBD 56               [12] 6233 	anl	a,@r0
      004DBE F6               [12] 6234 	mov	@r0,a
      004DBF 09               [12] 6235 	inc	r1
      004DC0 E7               [12] 6236 	mov	a,@r1
      004DC1 08               [12] 6237 	inc	r0
      004DC2 56               [12] 6238 	anl	a,@r0
      004DC3 F6               [12] 6239 	mov	@r0,a
      004DC4 09               [12] 6240 	inc	r1
      004DC5 E7               [12] 6241 	mov	a,@r1
      004DC6 08               [12] 6242 	inc	r0
      004DC7 56               [12] 6243 	anl	a,@r0
      004DC8 F6               [12] 6244 	mov	@r0,a
                                   6245 ;	calc.c:284: (void)stack_push(ctx->ps, d1);
      004DC9 8A 82            [24] 6246 	mov	dpl,r2
      004DCB 8B 83            [24] 6247 	mov	dph,r3
      004DCD 8C F0            [24] 6248 	mov	b,r4
      004DCF 12 70 CC         [24] 6249 	lcall	__gptrget
      004DD2 FA               [12] 6250 	mov	r2,a
      004DD3 A3               [24] 6251 	inc	dptr
      004DD4 12 70 CC         [24] 6252 	lcall	__gptrget
      004DD7 FB               [12] 6253 	mov	r3,a
      004DD8 A3               [24] 6254 	inc	dptr
      004DD9 12 70 CC         [24] 6255 	lcall	__gptrget
      004DDC FC               [12] 6256 	mov	r4,a
      004DDD E5 08            [12] 6257 	mov	a,_bp
      004DDF 24 19            [12] 6258 	add	a,#0x19
      004DE1 F8               [12] 6259 	mov	r0,a
      004DE2 E6               [12] 6260 	mov	a,@r0
      004DE3 C0 E0            [24] 6261 	push	acc
      004DE5 08               [12] 6262 	inc	r0
      004DE6 E6               [12] 6263 	mov	a,@r0
      004DE7 C0 E0            [24] 6264 	push	acc
      004DE9 08               [12] 6265 	inc	r0
      004DEA E6               [12] 6266 	mov	a,@r0
      004DEB C0 E0            [24] 6267 	push	acc
      004DED 08               [12] 6268 	inc	r0
      004DEE E6               [12] 6269 	mov	a,@r0
      004DEF C0 E0            [24] 6270 	push	acc
      004DF1 8A 82            [24] 6271 	mov	dpl,r2
      004DF3 8B 83            [24] 6272 	mov	dph,r3
      004DF5 8C F0            [24] 6273 	mov	b,r4
      004DF7 12 26 B5         [24] 6274 	lcall	_stack_push
      004DFA E5 81            [12] 6275 	mov	a,sp
      004DFC 24 FC            [12] 6276 	add	a,#0xfc
      004DFE F5 81            [12] 6277 	mov	sp,a
                                   6278 ;	calc.c:286: break;
      004E00 02 57 05         [24] 6279 	ljmp	00249$
                                   6280 ;	calc.c:287: case '|':
      004E03                       6281 00209$:
                                   6282 ;	calc.c:288: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004E03 E5 08            [12] 6283 	mov	a,_bp
      004E05 24 15            [12] 6284 	add	a,#0x15
      004E07 FF               [12] 6285 	mov	r7,a
      004E08 E5 08            [12] 6286 	mov	a,_bp
      004E0A 24 0E            [12] 6287 	add	a,#0x0e
      004E0C F8               [12] 6288 	mov	r0,a
      004E0D A6 07            [24] 6289 	mov	@r0,ar7
      004E0F 08               [12] 6290 	inc	r0
      004E10 76 00            [12] 6291 	mov	@r0,#0x00
      004E12 08               [12] 6292 	inc	r0
      004E13 76 40            [12] 6293 	mov	@r0,#0x40
      004E15 E5 08            [12] 6294 	mov	a,_bp
      004E17 24 12            [12] 6295 	add	a,#0x12
      004E19 F8               [12] 6296 	mov	r0,a
      004E1A 74 11            [12] 6297 	mov	a,#0x11
      004E1C 26               [12] 6298 	add	a,@r0
      004E1D FA               [12] 6299 	mov	r2,a
      004E1E 74 40            [12] 6300 	mov	a,#0x40
      004E20 08               [12] 6301 	inc	r0
      004E21 36               [12] 6302 	addc	a,@r0
      004E22 FB               [12] 6303 	mov	r3,a
      004E23 08               [12] 6304 	inc	r0
      004E24 86 04            [24] 6305 	mov	ar4,@r0
      004E26 8A 82            [24] 6306 	mov	dpl,r2
      004E28 8B 83            [24] 6307 	mov	dph,r3
      004E2A 8C F0            [24] 6308 	mov	b,r4
      004E2C 12 70 CC         [24] 6309 	lcall	__gptrget
      004E2F FD               [12] 6310 	mov	r5,a
      004E30 A3               [24] 6311 	inc	dptr
      004E31 12 70 CC         [24] 6312 	lcall	__gptrget
      004E34 FE               [12] 6313 	mov	r6,a
      004E35 A3               [24] 6314 	inc	dptr
      004E36 12 70 CC         [24] 6315 	lcall	__gptrget
      004E39 FF               [12] 6316 	mov	r7,a
      004E3A C0 04            [24] 6317 	push	ar4
      004E3C C0 03            [24] 6318 	push	ar3
      004E3E C0 02            [24] 6319 	push	ar2
      004E40 E5 08            [12] 6320 	mov	a,_bp
      004E42 24 0E            [12] 6321 	add	a,#0x0e
      004E44 F8               [12] 6322 	mov	r0,a
      004E45 E6               [12] 6323 	mov	a,@r0
      004E46 C0 E0            [24] 6324 	push	acc
      004E48 08               [12] 6325 	inc	r0
      004E49 E6               [12] 6326 	mov	a,@r0
      004E4A C0 E0            [24] 6327 	push	acc
      004E4C 08               [12] 6328 	inc	r0
      004E4D E6               [12] 6329 	mov	a,@r0
      004E4E C0 E0            [24] 6330 	push	acc
      004E50 8D 82            [24] 6331 	mov	dpl,r5
      004E52 8E 83            [24] 6332 	mov	dph,r6
      004E54 8F F0            [24] 6333 	mov	b,r7
      004E56 12 27 83         [24] 6334 	lcall	_stack_pop
      004E59 AE 82            [24] 6335 	mov	r6,dpl
      004E5B AF 83            [24] 6336 	mov	r7,dph
      004E5D 15 81            [12] 6337 	dec	sp
      004E5F 15 81            [12] 6338 	dec	sp
      004E61 15 81            [12] 6339 	dec	sp
      004E63 D0 02            [24] 6340 	pop	ar2
      004E65 D0 03            [24] 6341 	pop	ar3
      004E67 D0 04            [24] 6342 	pop	ar4
      004E69 EE               [12] 6343 	mov	a,r6
      004E6A 4F               [12] 6344 	orl	a,r7
      004E6B 70 25            [24] 6345 	jnz	00214$
      004E6D 7D 9B            [12] 6346 	mov	r5,#___str_10
      004E6F 7C 89            [12] 6347 	mov	r4,#(___str_10 >> 8)
      004E71 7B 80            [12] 6348 	mov	r3,#0x80
                                   6349 ;	calc.c:53: return;
      004E73                       6350 00468$:
                                   6351 ;	calc.c:51: for (; *s; s++) putchar(*s);
      004E73 8D 82            [24] 6352 	mov	dpl,r5
      004E75 8C 83            [24] 6353 	mov	dph,r4
      004E77 8B F0            [24] 6354 	mov	b,r3
      004E79 12 70 CC         [24] 6355 	lcall	__gptrget
      004E7C FF               [12] 6356 	mov	r7,a
      004E7D 70 03            [24] 6357 	jnz	01372$
      004E7F 02 57 05         [24] 6358 	ljmp	00249$
      004E82                       6359 01372$:
      004E82 7E 00            [12] 6360 	mov	r6,#0x00
      004E84 8F 82            [24] 6361 	mov	dpl,r7
      004E86 8E 83            [24] 6362 	mov	dph,r6
      004E88 12 2B 70         [24] 6363 	lcall	_putchar
      004E8B 0D               [12] 6364 	inc	r5
                                   6365 ;	calc.c:288: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004E8C BD 00 E4         [24] 6366 	cjne	r5,#0x00,00468$
      004E8F 0C               [12] 6367 	inc	r4
      004E90 80 E1            [24] 6368 	sjmp	00468$
      004E92                       6369 00214$:
                                   6370 ;	calc.c:289: else if (!stack_pop(ctx->ps, &d1)) {
      004E92 E5 08            [12] 6371 	mov	a,_bp
      004E94 24 19            [12] 6372 	add	a,#0x19
      004E96 FF               [12] 6373 	mov	r7,a
      004E97 E5 08            [12] 6374 	mov	a,_bp
      004E99 24 0E            [12] 6375 	add	a,#0x0e
      004E9B F8               [12] 6376 	mov	r0,a
      004E9C A6 07            [24] 6377 	mov	@r0,ar7
      004E9E 08               [12] 6378 	inc	r0
      004E9F 76 00            [12] 6379 	mov	@r0,#0x00
      004EA1 08               [12] 6380 	inc	r0
      004EA2 76 40            [12] 6381 	mov	@r0,#0x40
      004EA4 8A 82            [24] 6382 	mov	dpl,r2
      004EA6 8B 83            [24] 6383 	mov	dph,r3
      004EA8 8C F0            [24] 6384 	mov	b,r4
      004EAA 12 70 CC         [24] 6385 	lcall	__gptrget
      004EAD FD               [12] 6386 	mov	r5,a
      004EAE A3               [24] 6387 	inc	dptr
      004EAF 12 70 CC         [24] 6388 	lcall	__gptrget
      004EB2 FE               [12] 6389 	mov	r6,a
      004EB3 A3               [24] 6390 	inc	dptr
      004EB4 12 70 CC         [24] 6391 	lcall	__gptrget
      004EB7 FF               [12] 6392 	mov	r7,a
      004EB8 C0 04            [24] 6393 	push	ar4
      004EBA C0 03            [24] 6394 	push	ar3
      004EBC C0 02            [24] 6395 	push	ar2
      004EBE E5 08            [12] 6396 	mov	a,_bp
      004EC0 24 0E            [12] 6397 	add	a,#0x0e
      004EC2 F8               [12] 6398 	mov	r0,a
      004EC3 E6               [12] 6399 	mov	a,@r0
      004EC4 C0 E0            [24] 6400 	push	acc
      004EC6 08               [12] 6401 	inc	r0
      004EC7 E6               [12] 6402 	mov	a,@r0
      004EC8 C0 E0            [24] 6403 	push	acc
      004ECA 08               [12] 6404 	inc	r0
      004ECB E6               [12] 6405 	mov	a,@r0
      004ECC C0 E0            [24] 6406 	push	acc
      004ECE 8D 82            [24] 6407 	mov	dpl,r5
      004ED0 8E 83            [24] 6408 	mov	dph,r6
      004ED2 8F F0            [24] 6409 	mov	b,r7
      004ED4 12 27 83         [24] 6410 	lcall	_stack_pop
      004ED7 AE 82            [24] 6411 	mov	r6,dpl
      004ED9 AF 83            [24] 6412 	mov	r7,dph
      004EDB 15 81            [12] 6413 	dec	sp
      004EDD 15 81            [12] 6414 	dec	sp
      004EDF 15 81            [12] 6415 	dec	sp
      004EE1 D0 02            [24] 6416 	pop	ar2
      004EE3 D0 03            [24] 6417 	pop	ar3
      004EE5 D0 04            [24] 6418 	pop	ar4
      004EE7 EE               [12] 6419 	mov	a,r6
      004EE8 4F               [12] 6420 	orl	a,r7
      004EE9 70 5C            [24] 6421 	jnz	00211$
                                   6422 ;	calc.c:290: (void)stack_push(ctx->ps, d0);
      004EEB 8A 82            [24] 6423 	mov	dpl,r2
      004EED 8B 83            [24] 6424 	mov	dph,r3
      004EEF 8C F0            [24] 6425 	mov	b,r4
      004EF1 12 70 CC         [24] 6426 	lcall	__gptrget
      004EF4 FD               [12] 6427 	mov	r5,a
      004EF5 A3               [24] 6428 	inc	dptr
      004EF6 12 70 CC         [24] 6429 	lcall	__gptrget
      004EF9 FE               [12] 6430 	mov	r6,a
      004EFA A3               [24] 6431 	inc	dptr
      004EFB 12 70 CC         [24] 6432 	lcall	__gptrget
      004EFE FF               [12] 6433 	mov	r7,a
      004EFF E5 08            [12] 6434 	mov	a,_bp
      004F01 24 15            [12] 6435 	add	a,#0x15
      004F03 F8               [12] 6436 	mov	r0,a
      004F04 E6               [12] 6437 	mov	a,@r0
      004F05 C0 E0            [24] 6438 	push	acc
      004F07 08               [12] 6439 	inc	r0
      004F08 E6               [12] 6440 	mov	a,@r0
      004F09 C0 E0            [24] 6441 	push	acc
      004F0B 08               [12] 6442 	inc	r0
      004F0C E6               [12] 6443 	mov	a,@r0
      004F0D C0 E0            [24] 6444 	push	acc
      004F0F 08               [12] 6445 	inc	r0
      004F10 E6               [12] 6446 	mov	a,@r0
      004F11 C0 E0            [24] 6447 	push	acc
      004F13 8D 82            [24] 6448 	mov	dpl,r5
      004F15 8E 83            [24] 6449 	mov	dph,r6
      004F17 8F F0            [24] 6450 	mov	b,r7
      004F19 12 26 B5         [24] 6451 	lcall	_stack_push
      004F1C E5 81            [12] 6452 	mov	a,sp
      004F1E 24 FC            [12] 6453 	add	a,#0xfc
      004F20 F5 81            [12] 6454 	mov	sp,a
                                   6455 ;	calc.c:291: printstr("\r\nstack underflow\r\n");
      004F22 7D 9B            [12] 6456 	mov	r5,#___str_10
      004F24 7C 89            [12] 6457 	mov	r4,#(___str_10 >> 8)
      004F26 7B 80            [12] 6458 	mov	r3,#0x80
                                   6459 ;	calc.c:53: return;
      004F28                       6460 00471$:
                                   6461 ;	calc.c:51: for (; *s; s++) putchar(*s);
      004F28 8D 82            [24] 6462 	mov	dpl,r5
      004F2A 8C 83            [24] 6463 	mov	dph,r4
      004F2C 8B F0            [24] 6464 	mov	b,r3
      004F2E 12 70 CC         [24] 6465 	lcall	__gptrget
      004F31 FF               [12] 6466 	mov	r7,a
      004F32 70 03            [24] 6467 	jnz	01375$
      004F34 02 57 05         [24] 6468 	ljmp	00249$
      004F37                       6469 01375$:
      004F37 7E 00            [12] 6470 	mov	r6,#0x00
      004F39 8F 82            [24] 6471 	mov	dpl,r7
      004F3B 8E 83            [24] 6472 	mov	dph,r6
      004F3D 12 2B 70         [24] 6473 	lcall	_putchar
      004F40 0D               [12] 6474 	inc	r5
                                   6475 ;	calc.c:291: printstr("\r\nstack underflow\r\n");
      004F41 BD 00 E4         [24] 6476 	cjne	r5,#0x00,00471$
      004F44 0C               [12] 6477 	inc	r4
      004F45 80 E1            [24] 6478 	sjmp	00471$
      004F47                       6479 00211$:
                                   6480 ;	calc.c:293: d1 |= d0;
      004F47 E5 08            [12] 6481 	mov	a,_bp
      004F49 24 19            [12] 6482 	add	a,#0x19
      004F4B F8               [12] 6483 	mov	r0,a
      004F4C E5 08            [12] 6484 	mov	a,_bp
      004F4E 24 15            [12] 6485 	add	a,#0x15
      004F50 F9               [12] 6486 	mov	r1,a
      004F51 E7               [12] 6487 	mov	a,@r1
      004F52 46               [12] 6488 	orl	a,@r0
      004F53 F6               [12] 6489 	mov	@r0,a
      004F54 09               [12] 6490 	inc	r1
      004F55 E7               [12] 6491 	mov	a,@r1
      004F56 08               [12] 6492 	inc	r0
      004F57 46               [12] 6493 	orl	a,@r0
      004F58 F6               [12] 6494 	mov	@r0,a
      004F59 09               [12] 6495 	inc	r1
      004F5A E7               [12] 6496 	mov	a,@r1
      004F5B 08               [12] 6497 	inc	r0
      004F5C 46               [12] 6498 	orl	a,@r0
      004F5D F6               [12] 6499 	mov	@r0,a
      004F5E 09               [12] 6500 	inc	r1
      004F5F E7               [12] 6501 	mov	a,@r1
      004F60 08               [12] 6502 	inc	r0
      004F61 46               [12] 6503 	orl	a,@r0
      004F62 F6               [12] 6504 	mov	@r0,a
                                   6505 ;	calc.c:294: (void)stack_push(ctx->ps, d1);
      004F63 8A 82            [24] 6506 	mov	dpl,r2
      004F65 8B 83            [24] 6507 	mov	dph,r3
      004F67 8C F0            [24] 6508 	mov	b,r4
      004F69 12 70 CC         [24] 6509 	lcall	__gptrget
      004F6C FA               [12] 6510 	mov	r2,a
      004F6D A3               [24] 6511 	inc	dptr
      004F6E 12 70 CC         [24] 6512 	lcall	__gptrget
      004F71 FB               [12] 6513 	mov	r3,a
      004F72 A3               [24] 6514 	inc	dptr
      004F73 12 70 CC         [24] 6515 	lcall	__gptrget
      004F76 FC               [12] 6516 	mov	r4,a
      004F77 E5 08            [12] 6517 	mov	a,_bp
      004F79 24 19            [12] 6518 	add	a,#0x19
      004F7B F8               [12] 6519 	mov	r0,a
      004F7C E6               [12] 6520 	mov	a,@r0
      004F7D C0 E0            [24] 6521 	push	acc
      004F7F 08               [12] 6522 	inc	r0
      004F80 E6               [12] 6523 	mov	a,@r0
      004F81 C0 E0            [24] 6524 	push	acc
      004F83 08               [12] 6525 	inc	r0
      004F84 E6               [12] 6526 	mov	a,@r0
      004F85 C0 E0            [24] 6527 	push	acc
      004F87 08               [12] 6528 	inc	r0
      004F88 E6               [12] 6529 	mov	a,@r0
      004F89 C0 E0            [24] 6530 	push	acc
      004F8B 8A 82            [24] 6531 	mov	dpl,r2
      004F8D 8B 83            [24] 6532 	mov	dph,r3
      004F8F 8C F0            [24] 6533 	mov	b,r4
      004F91 12 26 B5         [24] 6534 	lcall	_stack_push
      004F94 E5 81            [12] 6535 	mov	a,sp
      004F96 24 FC            [12] 6536 	add	a,#0xfc
      004F98 F5 81            [12] 6537 	mov	sp,a
                                   6538 ;	calc.c:296: break;
      004F9A 02 57 05         [24] 6539 	ljmp	00249$
                                   6540 ;	calc.c:297: case '^':
      004F9D                       6541 00216$:
                                   6542 ;	calc.c:298: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004F9D E5 08            [12] 6543 	mov	a,_bp
      004F9F 24 15            [12] 6544 	add	a,#0x15
      004FA1 FF               [12] 6545 	mov	r7,a
      004FA2 E5 08            [12] 6546 	mov	a,_bp
      004FA4 24 0E            [12] 6547 	add	a,#0x0e
      004FA6 F8               [12] 6548 	mov	r0,a
      004FA7 A6 07            [24] 6549 	mov	@r0,ar7
      004FA9 08               [12] 6550 	inc	r0
      004FAA 76 00            [12] 6551 	mov	@r0,#0x00
      004FAC 08               [12] 6552 	inc	r0
      004FAD 76 40            [12] 6553 	mov	@r0,#0x40
      004FAF E5 08            [12] 6554 	mov	a,_bp
      004FB1 24 12            [12] 6555 	add	a,#0x12
      004FB3 F8               [12] 6556 	mov	r0,a
      004FB4 74 11            [12] 6557 	mov	a,#0x11
      004FB6 26               [12] 6558 	add	a,@r0
      004FB7 FA               [12] 6559 	mov	r2,a
      004FB8 74 40            [12] 6560 	mov	a,#0x40
      004FBA 08               [12] 6561 	inc	r0
      004FBB 36               [12] 6562 	addc	a,@r0
      004FBC FB               [12] 6563 	mov	r3,a
      004FBD 08               [12] 6564 	inc	r0
      004FBE 86 04            [24] 6565 	mov	ar4,@r0
      004FC0 8A 82            [24] 6566 	mov	dpl,r2
      004FC2 8B 83            [24] 6567 	mov	dph,r3
      004FC4 8C F0            [24] 6568 	mov	b,r4
      004FC6 12 70 CC         [24] 6569 	lcall	__gptrget
      004FC9 FD               [12] 6570 	mov	r5,a
      004FCA A3               [24] 6571 	inc	dptr
      004FCB 12 70 CC         [24] 6572 	lcall	__gptrget
      004FCE FE               [12] 6573 	mov	r6,a
      004FCF A3               [24] 6574 	inc	dptr
      004FD0 12 70 CC         [24] 6575 	lcall	__gptrget
      004FD3 FF               [12] 6576 	mov	r7,a
      004FD4 C0 04            [24] 6577 	push	ar4
      004FD6 C0 03            [24] 6578 	push	ar3
      004FD8 C0 02            [24] 6579 	push	ar2
      004FDA E5 08            [12] 6580 	mov	a,_bp
      004FDC 24 0E            [12] 6581 	add	a,#0x0e
      004FDE F8               [12] 6582 	mov	r0,a
      004FDF E6               [12] 6583 	mov	a,@r0
      004FE0 C0 E0            [24] 6584 	push	acc
      004FE2 08               [12] 6585 	inc	r0
      004FE3 E6               [12] 6586 	mov	a,@r0
      004FE4 C0 E0            [24] 6587 	push	acc
      004FE6 08               [12] 6588 	inc	r0
      004FE7 E6               [12] 6589 	mov	a,@r0
      004FE8 C0 E0            [24] 6590 	push	acc
      004FEA 8D 82            [24] 6591 	mov	dpl,r5
      004FEC 8E 83            [24] 6592 	mov	dph,r6
      004FEE 8F F0            [24] 6593 	mov	b,r7
      004FF0 12 27 83         [24] 6594 	lcall	_stack_pop
      004FF3 AE 82            [24] 6595 	mov	r6,dpl
      004FF5 AF 83            [24] 6596 	mov	r7,dph
      004FF7 15 81            [12] 6597 	dec	sp
      004FF9 15 81            [12] 6598 	dec	sp
      004FFB 15 81            [12] 6599 	dec	sp
      004FFD D0 02            [24] 6600 	pop	ar2
      004FFF D0 03            [24] 6601 	pop	ar3
      005001 D0 04            [24] 6602 	pop	ar4
      005003 EE               [12] 6603 	mov	a,r6
      005004 4F               [12] 6604 	orl	a,r7
      005005 70 25            [24] 6605 	jnz	00221$
      005007 7D 9B            [12] 6606 	mov	r5,#___str_10
      005009 7C 89            [12] 6607 	mov	r4,#(___str_10 >> 8)
      00500B 7B 80            [12] 6608 	mov	r3,#0x80
                                   6609 ;	calc.c:53: return;
      00500D                       6610 00474$:
                                   6611 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00500D 8D 82            [24] 6612 	mov	dpl,r5
      00500F 8C 83            [24] 6613 	mov	dph,r4
      005011 8B F0            [24] 6614 	mov	b,r3
      005013 12 70 CC         [24] 6615 	lcall	__gptrget
      005016 FF               [12] 6616 	mov	r7,a
      005017 70 03            [24] 6617 	jnz	01378$
      005019 02 57 05         [24] 6618 	ljmp	00249$
      00501C                       6619 01378$:
      00501C 7E 00            [12] 6620 	mov	r6,#0x00
      00501E 8F 82            [24] 6621 	mov	dpl,r7
      005020 8E 83            [24] 6622 	mov	dph,r6
      005022 12 2B 70         [24] 6623 	lcall	_putchar
      005025 0D               [12] 6624 	inc	r5
                                   6625 ;	calc.c:298: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005026 BD 00 E4         [24] 6626 	cjne	r5,#0x00,00474$
      005029 0C               [12] 6627 	inc	r4
      00502A 80 E1            [24] 6628 	sjmp	00474$
      00502C                       6629 00221$:
                                   6630 ;	calc.c:299: else if (!stack_pop(ctx->ps, &d1)) {
      00502C E5 08            [12] 6631 	mov	a,_bp
      00502E 24 19            [12] 6632 	add	a,#0x19
      005030 FF               [12] 6633 	mov	r7,a
      005031 E5 08            [12] 6634 	mov	a,_bp
      005033 24 0E            [12] 6635 	add	a,#0x0e
      005035 F8               [12] 6636 	mov	r0,a
      005036 A6 07            [24] 6637 	mov	@r0,ar7
      005038 08               [12] 6638 	inc	r0
      005039 76 00            [12] 6639 	mov	@r0,#0x00
      00503B 08               [12] 6640 	inc	r0
      00503C 76 40            [12] 6641 	mov	@r0,#0x40
      00503E 8A 82            [24] 6642 	mov	dpl,r2
      005040 8B 83            [24] 6643 	mov	dph,r3
      005042 8C F0            [24] 6644 	mov	b,r4
      005044 12 70 CC         [24] 6645 	lcall	__gptrget
      005047 FD               [12] 6646 	mov	r5,a
      005048 A3               [24] 6647 	inc	dptr
      005049 12 70 CC         [24] 6648 	lcall	__gptrget
      00504C FE               [12] 6649 	mov	r6,a
      00504D A3               [24] 6650 	inc	dptr
      00504E 12 70 CC         [24] 6651 	lcall	__gptrget
      005051 FF               [12] 6652 	mov	r7,a
      005052 C0 04            [24] 6653 	push	ar4
      005054 C0 03            [24] 6654 	push	ar3
      005056 C0 02            [24] 6655 	push	ar2
      005058 E5 08            [12] 6656 	mov	a,_bp
      00505A 24 0E            [12] 6657 	add	a,#0x0e
      00505C F8               [12] 6658 	mov	r0,a
      00505D E6               [12] 6659 	mov	a,@r0
      00505E C0 E0            [24] 6660 	push	acc
      005060 08               [12] 6661 	inc	r0
      005061 E6               [12] 6662 	mov	a,@r0
      005062 C0 E0            [24] 6663 	push	acc
      005064 08               [12] 6664 	inc	r0
      005065 E6               [12] 6665 	mov	a,@r0
      005066 C0 E0            [24] 6666 	push	acc
      005068 8D 82            [24] 6667 	mov	dpl,r5
      00506A 8E 83            [24] 6668 	mov	dph,r6
      00506C 8F F0            [24] 6669 	mov	b,r7
      00506E 12 27 83         [24] 6670 	lcall	_stack_pop
      005071 AE 82            [24] 6671 	mov	r6,dpl
      005073 AF 83            [24] 6672 	mov	r7,dph
      005075 15 81            [12] 6673 	dec	sp
      005077 15 81            [12] 6674 	dec	sp
      005079 15 81            [12] 6675 	dec	sp
      00507B D0 02            [24] 6676 	pop	ar2
      00507D D0 03            [24] 6677 	pop	ar3
      00507F D0 04            [24] 6678 	pop	ar4
      005081 EE               [12] 6679 	mov	a,r6
      005082 4F               [12] 6680 	orl	a,r7
      005083 70 5C            [24] 6681 	jnz	00218$
                                   6682 ;	calc.c:300: (void)stack_push(ctx->ps, d0);
      005085 8A 82            [24] 6683 	mov	dpl,r2
      005087 8B 83            [24] 6684 	mov	dph,r3
      005089 8C F0            [24] 6685 	mov	b,r4
      00508B 12 70 CC         [24] 6686 	lcall	__gptrget
      00508E FD               [12] 6687 	mov	r5,a
      00508F A3               [24] 6688 	inc	dptr
      005090 12 70 CC         [24] 6689 	lcall	__gptrget
      005093 FE               [12] 6690 	mov	r6,a
      005094 A3               [24] 6691 	inc	dptr
      005095 12 70 CC         [24] 6692 	lcall	__gptrget
      005098 FF               [12] 6693 	mov	r7,a
      005099 E5 08            [12] 6694 	mov	a,_bp
      00509B 24 15            [12] 6695 	add	a,#0x15
      00509D F8               [12] 6696 	mov	r0,a
      00509E E6               [12] 6697 	mov	a,@r0
      00509F C0 E0            [24] 6698 	push	acc
      0050A1 08               [12] 6699 	inc	r0
      0050A2 E6               [12] 6700 	mov	a,@r0
      0050A3 C0 E0            [24] 6701 	push	acc
      0050A5 08               [12] 6702 	inc	r0
      0050A6 E6               [12] 6703 	mov	a,@r0
      0050A7 C0 E0            [24] 6704 	push	acc
      0050A9 08               [12] 6705 	inc	r0
      0050AA E6               [12] 6706 	mov	a,@r0
      0050AB C0 E0            [24] 6707 	push	acc
      0050AD 8D 82            [24] 6708 	mov	dpl,r5
      0050AF 8E 83            [24] 6709 	mov	dph,r6
      0050B1 8F F0            [24] 6710 	mov	b,r7
      0050B3 12 26 B5         [24] 6711 	lcall	_stack_push
      0050B6 E5 81            [12] 6712 	mov	a,sp
      0050B8 24 FC            [12] 6713 	add	a,#0xfc
      0050BA F5 81            [12] 6714 	mov	sp,a
                                   6715 ;	calc.c:301: printstr("\r\nstack underflow\r\n");
      0050BC 7D 9B            [12] 6716 	mov	r5,#___str_10
      0050BE 7C 89            [12] 6717 	mov	r4,#(___str_10 >> 8)
      0050C0 7B 80            [12] 6718 	mov	r3,#0x80
                                   6719 ;	calc.c:53: return;
      0050C2                       6720 00477$:
                                   6721 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0050C2 8D 82            [24] 6722 	mov	dpl,r5
      0050C4 8C 83            [24] 6723 	mov	dph,r4
      0050C6 8B F0            [24] 6724 	mov	b,r3
      0050C8 12 70 CC         [24] 6725 	lcall	__gptrget
      0050CB FF               [12] 6726 	mov	r7,a
      0050CC 70 03            [24] 6727 	jnz	01381$
      0050CE 02 57 05         [24] 6728 	ljmp	00249$
      0050D1                       6729 01381$:
      0050D1 7E 00            [12] 6730 	mov	r6,#0x00
      0050D3 8F 82            [24] 6731 	mov	dpl,r7
      0050D5 8E 83            [24] 6732 	mov	dph,r6
      0050D7 12 2B 70         [24] 6733 	lcall	_putchar
      0050DA 0D               [12] 6734 	inc	r5
                                   6735 ;	calc.c:301: printstr("\r\nstack underflow\r\n");
      0050DB BD 00 E4         [24] 6736 	cjne	r5,#0x00,00477$
      0050DE 0C               [12] 6737 	inc	r4
      0050DF 80 E1            [24] 6738 	sjmp	00477$
      0050E1                       6739 00218$:
                                   6740 ;	calc.c:303: d1 ^= d0;
      0050E1 E5 08            [12] 6741 	mov	a,_bp
      0050E3 24 19            [12] 6742 	add	a,#0x19
      0050E5 F8               [12] 6743 	mov	r0,a
      0050E6 E5 08            [12] 6744 	mov	a,_bp
      0050E8 24 15            [12] 6745 	add	a,#0x15
      0050EA F9               [12] 6746 	mov	r1,a
      0050EB E7               [12] 6747 	mov	a,@r1
      0050EC 66               [12] 6748 	xrl	a,@r0
      0050ED F6               [12] 6749 	mov	@r0,a
      0050EE 09               [12] 6750 	inc	r1
      0050EF E7               [12] 6751 	mov	a,@r1
      0050F0 08               [12] 6752 	inc	r0
      0050F1 66               [12] 6753 	xrl	a,@r0
      0050F2 F6               [12] 6754 	mov	@r0,a
      0050F3 09               [12] 6755 	inc	r1
      0050F4 E7               [12] 6756 	mov	a,@r1
      0050F5 08               [12] 6757 	inc	r0
      0050F6 66               [12] 6758 	xrl	a,@r0
      0050F7 F6               [12] 6759 	mov	@r0,a
      0050F8 09               [12] 6760 	inc	r1
      0050F9 E7               [12] 6761 	mov	a,@r1
      0050FA 08               [12] 6762 	inc	r0
      0050FB 66               [12] 6763 	xrl	a,@r0
      0050FC F6               [12] 6764 	mov	@r0,a
                                   6765 ;	calc.c:304: (void)stack_push(ctx->ps, d1);
      0050FD 8A 82            [24] 6766 	mov	dpl,r2
      0050FF 8B 83            [24] 6767 	mov	dph,r3
      005101 8C F0            [24] 6768 	mov	b,r4
      005103 12 70 CC         [24] 6769 	lcall	__gptrget
      005106 FA               [12] 6770 	mov	r2,a
      005107 A3               [24] 6771 	inc	dptr
      005108 12 70 CC         [24] 6772 	lcall	__gptrget
      00510B FB               [12] 6773 	mov	r3,a
      00510C A3               [24] 6774 	inc	dptr
      00510D 12 70 CC         [24] 6775 	lcall	__gptrget
      005110 FC               [12] 6776 	mov	r4,a
      005111 E5 08            [12] 6777 	mov	a,_bp
      005113 24 19            [12] 6778 	add	a,#0x19
      005115 F8               [12] 6779 	mov	r0,a
      005116 E6               [12] 6780 	mov	a,@r0
      005117 C0 E0            [24] 6781 	push	acc
      005119 08               [12] 6782 	inc	r0
      00511A E6               [12] 6783 	mov	a,@r0
      00511B C0 E0            [24] 6784 	push	acc
      00511D 08               [12] 6785 	inc	r0
      00511E E6               [12] 6786 	mov	a,@r0
      00511F C0 E0            [24] 6787 	push	acc
      005121 08               [12] 6788 	inc	r0
      005122 E6               [12] 6789 	mov	a,@r0
      005123 C0 E0            [24] 6790 	push	acc
      005125 8A 82            [24] 6791 	mov	dpl,r2
      005127 8B 83            [24] 6792 	mov	dph,r3
      005129 8C F0            [24] 6793 	mov	b,r4
      00512B 12 26 B5         [24] 6794 	lcall	_stack_push
      00512E E5 81            [12] 6795 	mov	a,sp
      005130 24 FC            [12] 6796 	add	a,#0xfc
      005132 F5 81            [12] 6797 	mov	sp,a
                                   6798 ;	calc.c:306: break;
      005134 02 57 05         [24] 6799 	ljmp	00249$
                                   6800 ;	calc.c:307: case '>':
      005137                       6801 00223$:
                                   6802 ;	calc.c:308: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005137 E5 08            [12] 6803 	mov	a,_bp
      005139 24 15            [12] 6804 	add	a,#0x15
      00513B FC               [12] 6805 	mov	r4,a
      00513C 7B 00            [12] 6806 	mov	r3,#0x00
      00513E 7A 40            [12] 6807 	mov	r2,#0x40
      005140 E5 08            [12] 6808 	mov	a,_bp
      005142 24 12            [12] 6809 	add	a,#0x12
      005144 F8               [12] 6810 	mov	r0,a
      005145 E5 08            [12] 6811 	mov	a,_bp
      005147 24 0B            [12] 6812 	add	a,#0x0b
      005149 F9               [12] 6813 	mov	r1,a
      00514A 74 11            [12] 6814 	mov	a,#0x11
      00514C 26               [12] 6815 	add	a,@r0
      00514D F7               [12] 6816 	mov	@r1,a
      00514E 74 40            [12] 6817 	mov	a,#0x40
      005150 08               [12] 6818 	inc	r0
      005151 36               [12] 6819 	addc	a,@r0
      005152 09               [12] 6820 	inc	r1
      005153 F7               [12] 6821 	mov	@r1,a
      005154 08               [12] 6822 	inc	r0
      005155 09               [12] 6823 	inc	r1
      005156 E6               [12] 6824 	mov	a,@r0
      005157 F7               [12] 6825 	mov	@r1,a
      005158 E5 08            [12] 6826 	mov	a,_bp
      00515A 24 0B            [12] 6827 	add	a,#0x0b
      00515C F8               [12] 6828 	mov	r0,a
      00515D 86 82            [24] 6829 	mov	dpl,@r0
      00515F 08               [12] 6830 	inc	r0
      005160 86 83            [24] 6831 	mov	dph,@r0
      005162 08               [12] 6832 	inc	r0
      005163 86 F0            [24] 6833 	mov	b,@r0
      005165 12 70 CC         [24] 6834 	lcall	__gptrget
      005168 FD               [12] 6835 	mov	r5,a
      005169 A3               [24] 6836 	inc	dptr
      00516A 12 70 CC         [24] 6837 	lcall	__gptrget
      00516D FE               [12] 6838 	mov	r6,a
      00516E A3               [24] 6839 	inc	dptr
      00516F 12 70 CC         [24] 6840 	lcall	__gptrget
      005172 FF               [12] 6841 	mov	r7,a
      005173 C0 04            [24] 6842 	push	ar4
      005175 C0 03            [24] 6843 	push	ar3
      005177 C0 02            [24] 6844 	push	ar2
      005179 8D 82            [24] 6845 	mov	dpl,r5
      00517B 8E 83            [24] 6846 	mov	dph,r6
      00517D 8F F0            [24] 6847 	mov	b,r7
      00517F 12 27 83         [24] 6848 	lcall	_stack_pop
      005182 AE 82            [24] 6849 	mov	r6,dpl
      005184 AF 83            [24] 6850 	mov	r7,dph
      005186 15 81            [12] 6851 	dec	sp
      005188 15 81            [12] 6852 	dec	sp
      00518A 15 81            [12] 6853 	dec	sp
      00518C EE               [12] 6854 	mov	a,r6
      00518D 4F               [12] 6855 	orl	a,r7
      00518E 70 25            [24] 6856 	jnz	00228$
      005190 7D 9B            [12] 6857 	mov	r5,#___str_10
      005192 7C 89            [12] 6858 	mov	r4,#(___str_10 >> 8)
      005194 7B 80            [12] 6859 	mov	r3,#0x80
                                   6860 ;	calc.c:53: return;
      005196                       6861 00480$:
                                   6862 ;	calc.c:51: for (; *s; s++) putchar(*s);
      005196 8D 82            [24] 6863 	mov	dpl,r5
      005198 8C 83            [24] 6864 	mov	dph,r4
      00519A 8B F0            [24] 6865 	mov	b,r3
      00519C 12 70 CC         [24] 6866 	lcall	__gptrget
      00519F FF               [12] 6867 	mov	r7,a
      0051A0 70 03            [24] 6868 	jnz	01384$
      0051A2 02 57 05         [24] 6869 	ljmp	00249$
      0051A5                       6870 01384$:
      0051A5 7E 00            [12] 6871 	mov	r6,#0x00
      0051A7 8F 82            [24] 6872 	mov	dpl,r7
      0051A9 8E 83            [24] 6873 	mov	dph,r6
      0051AB 12 2B 70         [24] 6874 	lcall	_putchar
      0051AE 0D               [12] 6875 	inc	r5
                                   6876 ;	calc.c:308: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0051AF BD 00 E4         [24] 6877 	cjne	r5,#0x00,00480$
      0051B2 0C               [12] 6878 	inc	r4
      0051B3 80 E1            [24] 6879 	sjmp	00480$
      0051B5                       6880 00228$:
                                   6881 ;	calc.c:309: else if (!stack_pop(ctx->ps, &d1)) {
      0051B5 E5 08            [12] 6882 	mov	a,_bp
      0051B7 24 19            [12] 6883 	add	a,#0x19
      0051B9 FC               [12] 6884 	mov	r4,a
      0051BA 7B 00            [12] 6885 	mov	r3,#0x00
      0051BC 7A 40            [12] 6886 	mov	r2,#0x40
      0051BE E5 08            [12] 6887 	mov	a,_bp
      0051C0 24 0B            [12] 6888 	add	a,#0x0b
      0051C2 F8               [12] 6889 	mov	r0,a
      0051C3 86 82            [24] 6890 	mov	dpl,@r0
      0051C5 08               [12] 6891 	inc	r0
      0051C6 86 83            [24] 6892 	mov	dph,@r0
      0051C8 08               [12] 6893 	inc	r0
      0051C9 86 F0            [24] 6894 	mov	b,@r0
      0051CB 12 70 CC         [24] 6895 	lcall	__gptrget
      0051CE FD               [12] 6896 	mov	r5,a
      0051CF A3               [24] 6897 	inc	dptr
      0051D0 12 70 CC         [24] 6898 	lcall	__gptrget
      0051D3 FE               [12] 6899 	mov	r6,a
      0051D4 A3               [24] 6900 	inc	dptr
      0051D5 12 70 CC         [24] 6901 	lcall	__gptrget
      0051D8 FF               [12] 6902 	mov	r7,a
      0051D9 C0 04            [24] 6903 	push	ar4
      0051DB C0 03            [24] 6904 	push	ar3
      0051DD C0 02            [24] 6905 	push	ar2
      0051DF 8D 82            [24] 6906 	mov	dpl,r5
      0051E1 8E 83            [24] 6907 	mov	dph,r6
      0051E3 8F F0            [24] 6908 	mov	b,r7
      0051E5 12 27 83         [24] 6909 	lcall	_stack_pop
      0051E8 AE 82            [24] 6910 	mov	r6,dpl
      0051EA AF 83            [24] 6911 	mov	r7,dph
      0051EC 15 81            [12] 6912 	dec	sp
      0051EE 15 81            [12] 6913 	dec	sp
      0051F0 15 81            [12] 6914 	dec	sp
      0051F2 EE               [12] 6915 	mov	a,r6
      0051F3 4F               [12] 6916 	orl	a,r7
      0051F4 70 63            [24] 6917 	jnz	00225$
                                   6918 ;	calc.c:310: (void)stack_push(ctx->ps, d0);
      0051F6 E5 08            [12] 6919 	mov	a,_bp
      0051F8 24 0B            [12] 6920 	add	a,#0x0b
      0051FA F8               [12] 6921 	mov	r0,a
      0051FB 86 82            [24] 6922 	mov	dpl,@r0
      0051FD 08               [12] 6923 	inc	r0
      0051FE 86 83            [24] 6924 	mov	dph,@r0
      005200 08               [12] 6925 	inc	r0
      005201 86 F0            [24] 6926 	mov	b,@r0
      005203 12 70 CC         [24] 6927 	lcall	__gptrget
      005206 FD               [12] 6928 	mov	r5,a
      005207 A3               [24] 6929 	inc	dptr
      005208 12 70 CC         [24] 6930 	lcall	__gptrget
      00520B FE               [12] 6931 	mov	r6,a
      00520C A3               [24] 6932 	inc	dptr
      00520D 12 70 CC         [24] 6933 	lcall	__gptrget
      005210 FF               [12] 6934 	mov	r7,a
      005211 E5 08            [12] 6935 	mov	a,_bp
      005213 24 15            [12] 6936 	add	a,#0x15
      005215 F8               [12] 6937 	mov	r0,a
      005216 E6               [12] 6938 	mov	a,@r0
      005217 C0 E0            [24] 6939 	push	acc
      005219 08               [12] 6940 	inc	r0
      00521A E6               [12] 6941 	mov	a,@r0
      00521B C0 E0            [24] 6942 	push	acc
      00521D 08               [12] 6943 	inc	r0
      00521E E6               [12] 6944 	mov	a,@r0
      00521F C0 E0            [24] 6945 	push	acc
      005221 08               [12] 6946 	inc	r0
      005222 E6               [12] 6947 	mov	a,@r0
      005223 C0 E0            [24] 6948 	push	acc
      005225 8D 82            [24] 6949 	mov	dpl,r5
      005227 8E 83            [24] 6950 	mov	dph,r6
      005229 8F F0            [24] 6951 	mov	b,r7
      00522B 12 26 B5         [24] 6952 	lcall	_stack_push
      00522E E5 81            [12] 6953 	mov	a,sp
      005230 24 FC            [12] 6954 	add	a,#0xfc
      005232 F5 81            [12] 6955 	mov	sp,a
                                   6956 ;	calc.c:311: printstr("\r\nstack underflow\r\n");
      005234 7D 9B            [12] 6957 	mov	r5,#___str_10
      005236 7C 89            [12] 6958 	mov	r4,#(___str_10 >> 8)
      005238 7B 80            [12] 6959 	mov	r3,#0x80
                                   6960 ;	calc.c:53: return;
      00523A                       6961 00483$:
                                   6962 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00523A 8D 82            [24] 6963 	mov	dpl,r5
      00523C 8C 83            [24] 6964 	mov	dph,r4
      00523E 8B F0            [24] 6965 	mov	b,r3
      005240 12 70 CC         [24] 6966 	lcall	__gptrget
      005243 FF               [12] 6967 	mov	r7,a
      005244 70 03            [24] 6968 	jnz	01387$
      005246 02 57 05         [24] 6969 	ljmp	00249$
      005249                       6970 01387$:
      005249 7E 00            [12] 6971 	mov	r6,#0x00
      00524B 8F 82            [24] 6972 	mov	dpl,r7
      00524D 8E 83            [24] 6973 	mov	dph,r6
      00524F 12 2B 70         [24] 6974 	lcall	_putchar
      005252 0D               [12] 6975 	inc	r5
                                   6976 ;	calc.c:311: printstr("\r\nstack underflow\r\n");
      005253 BD 00 E4         [24] 6977 	cjne	r5,#0x00,00483$
      005256 0C               [12] 6978 	inc	r4
      005257 80 E1            [24] 6979 	sjmp	00483$
      005259                       6980 00225$:
                                   6981 ;	calc.c:313: d1 = (unsigned long)d1 >> d0;
      005259 E5 08            [12] 6982 	mov	a,_bp
      00525B 24 19            [12] 6983 	add	a,#0x19
      00525D F8               [12] 6984 	mov	r0,a
      00525E 86 04            [24] 6985 	mov	ar4,@r0
      005260 08               [12] 6986 	inc	r0
      005261 86 05            [24] 6987 	mov	ar5,@r0
      005263 08               [12] 6988 	inc	r0
      005264 86 06            [24] 6989 	mov	ar6,@r0
      005266 08               [12] 6990 	inc	r0
      005267 86 07            [24] 6991 	mov	ar7,@r0
      005269 E5 08            [12] 6992 	mov	a,_bp
      00526B 24 15            [12] 6993 	add	a,#0x15
      00526D F8               [12] 6994 	mov	r0,a
      00526E 86 F0            [24] 6995 	mov	b,@r0
      005270 05 F0            [12] 6996 	inc	b
      005272 80 0D            [24] 6997 	sjmp	01390$
      005274                       6998 01389$:
      005274 C3               [12] 6999 	clr	c
      005275 EF               [12] 7000 	mov	a,r7
      005276 13               [12] 7001 	rrc	a
      005277 FF               [12] 7002 	mov	r7,a
      005278 EE               [12] 7003 	mov	a,r6
      005279 13               [12] 7004 	rrc	a
      00527A FE               [12] 7005 	mov	r6,a
      00527B ED               [12] 7006 	mov	a,r5
      00527C 13               [12] 7007 	rrc	a
      00527D FD               [12] 7008 	mov	r5,a
      00527E EC               [12] 7009 	mov	a,r4
      00527F 13               [12] 7010 	rrc	a
      005280 FC               [12] 7011 	mov	r4,a
      005281                       7012 01390$:
      005281 D5 F0 F0         [24] 7013 	djnz	b,01389$
      005284 E5 08            [12] 7014 	mov	a,_bp
      005286 24 19            [12] 7015 	add	a,#0x19
      005288 F8               [12] 7016 	mov	r0,a
      005289 A6 04            [24] 7017 	mov	@r0,ar4
      00528B 08               [12] 7018 	inc	r0
      00528C A6 05            [24] 7019 	mov	@r0,ar5
      00528E 08               [12] 7020 	inc	r0
      00528F A6 06            [24] 7021 	mov	@r0,ar6
      005291 08               [12] 7022 	inc	r0
      005292 A6 07            [24] 7023 	mov	@r0,ar7
                                   7024 ;	calc.c:314: (void)stack_push(ctx->ps, d1);
      005294 E5 08            [12] 7025 	mov	a,_bp
      005296 24 0B            [12] 7026 	add	a,#0x0b
      005298 F8               [12] 7027 	mov	r0,a
      005299 86 82            [24] 7028 	mov	dpl,@r0
      00529B 08               [12] 7029 	inc	r0
      00529C 86 83            [24] 7030 	mov	dph,@r0
      00529E 08               [12] 7031 	inc	r0
      00529F 86 F0            [24] 7032 	mov	b,@r0
      0052A1 12 70 CC         [24] 7033 	lcall	__gptrget
      0052A4 FD               [12] 7034 	mov	r5,a
      0052A5 A3               [24] 7035 	inc	dptr
      0052A6 12 70 CC         [24] 7036 	lcall	__gptrget
      0052A9 FE               [12] 7037 	mov	r6,a
      0052AA A3               [24] 7038 	inc	dptr
      0052AB 12 70 CC         [24] 7039 	lcall	__gptrget
      0052AE FF               [12] 7040 	mov	r7,a
      0052AF E5 08            [12] 7041 	mov	a,_bp
      0052B1 24 19            [12] 7042 	add	a,#0x19
      0052B3 F8               [12] 7043 	mov	r0,a
      0052B4 E6               [12] 7044 	mov	a,@r0
      0052B5 C0 E0            [24] 7045 	push	acc
      0052B7 08               [12] 7046 	inc	r0
      0052B8 E6               [12] 7047 	mov	a,@r0
      0052B9 C0 E0            [24] 7048 	push	acc
      0052BB 08               [12] 7049 	inc	r0
      0052BC E6               [12] 7050 	mov	a,@r0
      0052BD C0 E0            [24] 7051 	push	acc
      0052BF 08               [12] 7052 	inc	r0
      0052C0 E6               [12] 7053 	mov	a,@r0
      0052C1 C0 E0            [24] 7054 	push	acc
      0052C3 8D 82            [24] 7055 	mov	dpl,r5
      0052C5 8E 83            [24] 7056 	mov	dph,r6
      0052C7 8F F0            [24] 7057 	mov	b,r7
      0052C9 12 26 B5         [24] 7058 	lcall	_stack_push
      0052CC E5 81            [12] 7059 	mov	a,sp
      0052CE 24 FC            [12] 7060 	add	a,#0xfc
      0052D0 F5 81            [12] 7061 	mov	sp,a
                                   7062 ;	calc.c:316: break;
      0052D2 02 57 05         [24] 7063 	ljmp	00249$
                                   7064 ;	calc.c:317: case ']':
      0052D5                       7065 00230$:
                                   7066 ;	calc.c:318: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0052D5 E5 08            [12] 7067 	mov	a,_bp
      0052D7 24 15            [12] 7068 	add	a,#0x15
      0052D9 FF               [12] 7069 	mov	r7,a
      0052DA E5 08            [12] 7070 	mov	a,_bp
      0052DC 24 0E            [12] 7071 	add	a,#0x0e
      0052DE F8               [12] 7072 	mov	r0,a
      0052DF A6 07            [24] 7073 	mov	@r0,ar7
      0052E1 08               [12] 7074 	inc	r0
      0052E2 76 00            [12] 7075 	mov	@r0,#0x00
      0052E4 08               [12] 7076 	inc	r0
      0052E5 76 40            [12] 7077 	mov	@r0,#0x40
      0052E7 E5 08            [12] 7078 	mov	a,_bp
      0052E9 24 12            [12] 7079 	add	a,#0x12
      0052EB F8               [12] 7080 	mov	r0,a
      0052EC 74 11            [12] 7081 	mov	a,#0x11
      0052EE 26               [12] 7082 	add	a,@r0
      0052EF FA               [12] 7083 	mov	r2,a
      0052F0 74 40            [12] 7084 	mov	a,#0x40
      0052F2 08               [12] 7085 	inc	r0
      0052F3 36               [12] 7086 	addc	a,@r0
      0052F4 FB               [12] 7087 	mov	r3,a
      0052F5 08               [12] 7088 	inc	r0
      0052F6 86 04            [24] 7089 	mov	ar4,@r0
      0052F8 8A 82            [24] 7090 	mov	dpl,r2
      0052FA 8B 83            [24] 7091 	mov	dph,r3
      0052FC 8C F0            [24] 7092 	mov	b,r4
      0052FE 12 70 CC         [24] 7093 	lcall	__gptrget
      005301 FD               [12] 7094 	mov	r5,a
      005302 A3               [24] 7095 	inc	dptr
      005303 12 70 CC         [24] 7096 	lcall	__gptrget
      005306 FE               [12] 7097 	mov	r6,a
      005307 A3               [24] 7098 	inc	dptr
      005308 12 70 CC         [24] 7099 	lcall	__gptrget
      00530B FF               [12] 7100 	mov	r7,a
      00530C C0 04            [24] 7101 	push	ar4
      00530E C0 03            [24] 7102 	push	ar3
      005310 C0 02            [24] 7103 	push	ar2
      005312 E5 08            [12] 7104 	mov	a,_bp
      005314 24 0E            [12] 7105 	add	a,#0x0e
      005316 F8               [12] 7106 	mov	r0,a
      005317 E6               [12] 7107 	mov	a,@r0
      005318 C0 E0            [24] 7108 	push	acc
      00531A 08               [12] 7109 	inc	r0
      00531B E6               [12] 7110 	mov	a,@r0
      00531C C0 E0            [24] 7111 	push	acc
      00531E 08               [12] 7112 	inc	r0
      00531F E6               [12] 7113 	mov	a,@r0
      005320 C0 E0            [24] 7114 	push	acc
      005322 8D 82            [24] 7115 	mov	dpl,r5
      005324 8E 83            [24] 7116 	mov	dph,r6
      005326 8F F0            [24] 7117 	mov	b,r7
      005328 12 27 83         [24] 7118 	lcall	_stack_pop
      00532B AE 82            [24] 7119 	mov	r6,dpl
      00532D AF 83            [24] 7120 	mov	r7,dph
      00532F 15 81            [12] 7121 	dec	sp
      005331 15 81            [12] 7122 	dec	sp
      005333 15 81            [12] 7123 	dec	sp
      005335 D0 02            [24] 7124 	pop	ar2
      005337 D0 03            [24] 7125 	pop	ar3
      005339 D0 04            [24] 7126 	pop	ar4
      00533B EE               [12] 7127 	mov	a,r6
      00533C 4F               [12] 7128 	orl	a,r7
      00533D 70 25            [24] 7129 	jnz	00235$
      00533F 7D 9B            [12] 7130 	mov	r5,#___str_10
      005341 7C 89            [12] 7131 	mov	r4,#(___str_10 >> 8)
      005343 7B 80            [12] 7132 	mov	r3,#0x80
                                   7133 ;	calc.c:53: return;
      005345                       7134 00486$:
                                   7135 ;	calc.c:51: for (; *s; s++) putchar(*s);
      005345 8D 82            [24] 7136 	mov	dpl,r5
      005347 8C 83            [24] 7137 	mov	dph,r4
      005349 8B F0            [24] 7138 	mov	b,r3
      00534B 12 70 CC         [24] 7139 	lcall	__gptrget
      00534E FF               [12] 7140 	mov	r7,a
      00534F 70 03            [24] 7141 	jnz	01392$
      005351 02 57 05         [24] 7142 	ljmp	00249$
      005354                       7143 01392$:
      005354 7E 00            [12] 7144 	mov	r6,#0x00
      005356 8F 82            [24] 7145 	mov	dpl,r7
      005358 8E 83            [24] 7146 	mov	dph,r6
      00535A 12 2B 70         [24] 7147 	lcall	_putchar
      00535D 0D               [12] 7148 	inc	r5
                                   7149 ;	calc.c:318: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00535E BD 00 E4         [24] 7150 	cjne	r5,#0x00,00486$
      005361 0C               [12] 7151 	inc	r4
      005362 80 E1            [24] 7152 	sjmp	00486$
      005364                       7153 00235$:
                                   7154 ;	calc.c:319: else if (!stack_pop(ctx->ps, &d1)) {
      005364 E5 08            [12] 7155 	mov	a,_bp
      005366 24 19            [12] 7156 	add	a,#0x19
      005368 FF               [12] 7157 	mov	r7,a
      005369 E5 08            [12] 7158 	mov	a,_bp
      00536B 24 0E            [12] 7159 	add	a,#0x0e
      00536D F8               [12] 7160 	mov	r0,a
      00536E A6 07            [24] 7161 	mov	@r0,ar7
      005370 08               [12] 7162 	inc	r0
      005371 76 00            [12] 7163 	mov	@r0,#0x00
      005373 08               [12] 7164 	inc	r0
      005374 76 40            [12] 7165 	mov	@r0,#0x40
      005376 8A 82            [24] 7166 	mov	dpl,r2
      005378 8B 83            [24] 7167 	mov	dph,r3
      00537A 8C F0            [24] 7168 	mov	b,r4
      00537C 12 70 CC         [24] 7169 	lcall	__gptrget
      00537F FD               [12] 7170 	mov	r5,a
      005380 A3               [24] 7171 	inc	dptr
      005381 12 70 CC         [24] 7172 	lcall	__gptrget
      005384 FE               [12] 7173 	mov	r6,a
      005385 A3               [24] 7174 	inc	dptr
      005386 12 70 CC         [24] 7175 	lcall	__gptrget
      005389 FF               [12] 7176 	mov	r7,a
      00538A C0 04            [24] 7177 	push	ar4
      00538C C0 03            [24] 7178 	push	ar3
      00538E C0 02            [24] 7179 	push	ar2
      005390 E5 08            [12] 7180 	mov	a,_bp
      005392 24 0E            [12] 7181 	add	a,#0x0e
      005394 F8               [12] 7182 	mov	r0,a
      005395 E6               [12] 7183 	mov	a,@r0
      005396 C0 E0            [24] 7184 	push	acc
      005398 08               [12] 7185 	inc	r0
      005399 E6               [12] 7186 	mov	a,@r0
      00539A C0 E0            [24] 7187 	push	acc
      00539C 08               [12] 7188 	inc	r0
      00539D E6               [12] 7189 	mov	a,@r0
      00539E C0 E0            [24] 7190 	push	acc
      0053A0 8D 82            [24] 7191 	mov	dpl,r5
      0053A2 8E 83            [24] 7192 	mov	dph,r6
      0053A4 8F F0            [24] 7193 	mov	b,r7
      0053A6 12 27 83         [24] 7194 	lcall	_stack_pop
      0053A9 AE 82            [24] 7195 	mov	r6,dpl
      0053AB AF 83            [24] 7196 	mov	r7,dph
      0053AD 15 81            [12] 7197 	dec	sp
      0053AF 15 81            [12] 7198 	dec	sp
      0053B1 15 81            [12] 7199 	dec	sp
      0053B3 D0 02            [24] 7200 	pop	ar2
      0053B5 D0 03            [24] 7201 	pop	ar3
      0053B7 D0 04            [24] 7202 	pop	ar4
      0053B9 EE               [12] 7203 	mov	a,r6
      0053BA 4F               [12] 7204 	orl	a,r7
      0053BB 70 5C            [24] 7205 	jnz	00232$
                                   7206 ;	calc.c:320: (void)stack_push(ctx->ps, d0);
      0053BD 8A 82            [24] 7207 	mov	dpl,r2
      0053BF 8B 83            [24] 7208 	mov	dph,r3
      0053C1 8C F0            [24] 7209 	mov	b,r4
      0053C3 12 70 CC         [24] 7210 	lcall	__gptrget
      0053C6 FD               [12] 7211 	mov	r5,a
      0053C7 A3               [24] 7212 	inc	dptr
      0053C8 12 70 CC         [24] 7213 	lcall	__gptrget
      0053CB FE               [12] 7214 	mov	r6,a
      0053CC A3               [24] 7215 	inc	dptr
      0053CD 12 70 CC         [24] 7216 	lcall	__gptrget
      0053D0 FF               [12] 7217 	mov	r7,a
      0053D1 E5 08            [12] 7218 	mov	a,_bp
      0053D3 24 15            [12] 7219 	add	a,#0x15
      0053D5 F8               [12] 7220 	mov	r0,a
      0053D6 E6               [12] 7221 	mov	a,@r0
      0053D7 C0 E0            [24] 7222 	push	acc
      0053D9 08               [12] 7223 	inc	r0
      0053DA E6               [12] 7224 	mov	a,@r0
      0053DB C0 E0            [24] 7225 	push	acc
      0053DD 08               [12] 7226 	inc	r0
      0053DE E6               [12] 7227 	mov	a,@r0
      0053DF C0 E0            [24] 7228 	push	acc
      0053E1 08               [12] 7229 	inc	r0
      0053E2 E6               [12] 7230 	mov	a,@r0
      0053E3 C0 E0            [24] 7231 	push	acc
      0053E5 8D 82            [24] 7232 	mov	dpl,r5
      0053E7 8E 83            [24] 7233 	mov	dph,r6
      0053E9 8F F0            [24] 7234 	mov	b,r7
      0053EB 12 26 B5         [24] 7235 	lcall	_stack_push
      0053EE E5 81            [12] 7236 	mov	a,sp
      0053F0 24 FC            [12] 7237 	add	a,#0xfc
      0053F2 F5 81            [12] 7238 	mov	sp,a
                                   7239 ;	calc.c:321: printstr("\r\nstack underflow\r\n");
      0053F4 7D 9B            [12] 7240 	mov	r5,#___str_10
      0053F6 7C 89            [12] 7241 	mov	r4,#(___str_10 >> 8)
      0053F8 7B 80            [12] 7242 	mov	r3,#0x80
                                   7243 ;	calc.c:53: return;
      0053FA                       7244 00489$:
                                   7245 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0053FA 8D 82            [24] 7246 	mov	dpl,r5
      0053FC 8C 83            [24] 7247 	mov	dph,r4
      0053FE 8B F0            [24] 7248 	mov	b,r3
      005400 12 70 CC         [24] 7249 	lcall	__gptrget
      005403 FF               [12] 7250 	mov	r7,a
      005404 70 03            [24] 7251 	jnz	01395$
      005406 02 57 05         [24] 7252 	ljmp	00249$
      005409                       7253 01395$:
      005409 7E 00            [12] 7254 	mov	r6,#0x00
      00540B 8F 82            [24] 7255 	mov	dpl,r7
      00540D 8E 83            [24] 7256 	mov	dph,r6
      00540F 12 2B 70         [24] 7257 	lcall	_putchar
      005412 0D               [12] 7258 	inc	r5
                                   7259 ;	calc.c:321: printstr("\r\nstack underflow\r\n");
      005413 BD 00 E4         [24] 7260 	cjne	r5,#0x00,00489$
      005416 0C               [12] 7261 	inc	r4
      005417 80 E1            [24] 7262 	sjmp	00489$
      005419                       7263 00232$:
                                   7264 ;	calc.c:323: d1 >>= d0;
      005419 E5 08            [12] 7265 	mov	a,_bp
      00541B 24 15            [12] 7266 	add	a,#0x15
      00541D F8               [12] 7267 	mov	r0,a
      00541E 86 F0            [24] 7268 	mov	b,@r0
      005420 05 F0            [12] 7269 	inc	b
      005422 E5 08            [12] 7270 	mov	a,_bp
      005424 24 19            [12] 7271 	add	a,#0x19
      005426 F8               [12] 7272 	mov	r0,a
      005427 08               [12] 7273 	inc	r0
      005428 08               [12] 7274 	inc	r0
      005429 08               [12] 7275 	inc	r0
      00542A E6               [12] 7276 	mov	a,@r0
      00542B 33               [12] 7277 	rlc	a
      00542C 92 D2            [24] 7278 	mov	ov,c
      00542E 18               [12] 7279 	dec	r0
      00542F 18               [12] 7280 	dec	r0
      005430 18               [12] 7281 	dec	r0
      005431 80 14            [24] 7282 	sjmp	01398$
      005433                       7283 01397$:
      005433 A2 D2            [12] 7284 	mov	c,ov
      005435 08               [12] 7285 	inc	r0
      005436 08               [12] 7286 	inc	r0
      005437 08               [12] 7287 	inc	r0
      005438 E6               [12] 7288 	mov	a,@r0
      005439 13               [12] 7289 	rrc	a
      00543A F6               [12] 7290 	mov	@r0,a
      00543B 18               [12] 7291 	dec	r0
      00543C E6               [12] 7292 	mov	a,@r0
      00543D 13               [12] 7293 	rrc	a
      00543E F6               [12] 7294 	mov	@r0,a
      00543F 18               [12] 7295 	dec	r0
      005440 E6               [12] 7296 	mov	a,@r0
      005441 13               [12] 7297 	rrc	a
      005442 F6               [12] 7298 	mov	@r0,a
      005443 18               [12] 7299 	dec	r0
      005444 E6               [12] 7300 	mov	a,@r0
      005445 13               [12] 7301 	rrc	a
      005446 F6               [12] 7302 	mov	@r0,a
      005447                       7303 01398$:
      005447 D5 F0 E9         [24] 7304 	djnz	b,01397$
                                   7305 ;	calc.c:324: (void)stack_push(ctx->ps, d1);
      00544A 8A 82            [24] 7306 	mov	dpl,r2
      00544C 8B 83            [24] 7307 	mov	dph,r3
      00544E 8C F0            [24] 7308 	mov	b,r4
      005450 12 70 CC         [24] 7309 	lcall	__gptrget
      005453 FA               [12] 7310 	mov	r2,a
      005454 A3               [24] 7311 	inc	dptr
      005455 12 70 CC         [24] 7312 	lcall	__gptrget
      005458 FB               [12] 7313 	mov	r3,a
      005459 A3               [24] 7314 	inc	dptr
      00545A 12 70 CC         [24] 7315 	lcall	__gptrget
      00545D FC               [12] 7316 	mov	r4,a
      00545E E5 08            [12] 7317 	mov	a,_bp
      005460 24 19            [12] 7318 	add	a,#0x19
      005462 F8               [12] 7319 	mov	r0,a
      005463 E6               [12] 7320 	mov	a,@r0
      005464 C0 E0            [24] 7321 	push	acc
      005466 08               [12] 7322 	inc	r0
      005467 E6               [12] 7323 	mov	a,@r0
      005468 C0 E0            [24] 7324 	push	acc
      00546A 08               [12] 7325 	inc	r0
      00546B E6               [12] 7326 	mov	a,@r0
      00546C C0 E0            [24] 7327 	push	acc
      00546E 08               [12] 7328 	inc	r0
      00546F E6               [12] 7329 	mov	a,@r0
      005470 C0 E0            [24] 7330 	push	acc
      005472 8A 82            [24] 7331 	mov	dpl,r2
      005474 8B 83            [24] 7332 	mov	dph,r3
      005476 8C F0            [24] 7333 	mov	b,r4
      005478 12 26 B5         [24] 7334 	lcall	_stack_push
      00547B E5 81            [12] 7335 	mov	a,sp
      00547D 24 FC            [12] 7336 	add	a,#0xfc
      00547F F5 81            [12] 7337 	mov	sp,a
                                   7338 ;	calc.c:326: break;
      005481 02 57 05         [24] 7339 	ljmp	00249$
                                   7340 ;	calc.c:327: case '<':
      005484                       7341 00237$:
                                   7342 ;	calc.c:328: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005484 E5 08            [12] 7343 	mov	a,_bp
      005486 24 15            [12] 7344 	add	a,#0x15
      005488 FF               [12] 7345 	mov	r7,a
      005489 E5 08            [12] 7346 	mov	a,_bp
      00548B 24 0E            [12] 7347 	add	a,#0x0e
      00548D F8               [12] 7348 	mov	r0,a
      00548E A6 07            [24] 7349 	mov	@r0,ar7
      005490 08               [12] 7350 	inc	r0
      005491 76 00            [12] 7351 	mov	@r0,#0x00
      005493 08               [12] 7352 	inc	r0
      005494 76 40            [12] 7353 	mov	@r0,#0x40
      005496 E5 08            [12] 7354 	mov	a,_bp
      005498 24 12            [12] 7355 	add	a,#0x12
      00549A F8               [12] 7356 	mov	r0,a
      00549B 74 11            [12] 7357 	mov	a,#0x11
      00549D 26               [12] 7358 	add	a,@r0
      00549E FA               [12] 7359 	mov	r2,a
      00549F 74 40            [12] 7360 	mov	a,#0x40
      0054A1 08               [12] 7361 	inc	r0
      0054A2 36               [12] 7362 	addc	a,@r0
      0054A3 FB               [12] 7363 	mov	r3,a
      0054A4 08               [12] 7364 	inc	r0
      0054A5 86 04            [24] 7365 	mov	ar4,@r0
      0054A7 8A 82            [24] 7366 	mov	dpl,r2
      0054A9 8B 83            [24] 7367 	mov	dph,r3
      0054AB 8C F0            [24] 7368 	mov	b,r4
      0054AD 12 70 CC         [24] 7369 	lcall	__gptrget
      0054B0 FD               [12] 7370 	mov	r5,a
      0054B1 A3               [24] 7371 	inc	dptr
      0054B2 12 70 CC         [24] 7372 	lcall	__gptrget
      0054B5 FE               [12] 7373 	mov	r6,a
      0054B6 A3               [24] 7374 	inc	dptr
      0054B7 12 70 CC         [24] 7375 	lcall	__gptrget
      0054BA FF               [12] 7376 	mov	r7,a
      0054BB C0 04            [24] 7377 	push	ar4
      0054BD C0 03            [24] 7378 	push	ar3
      0054BF C0 02            [24] 7379 	push	ar2
      0054C1 E5 08            [12] 7380 	mov	a,_bp
      0054C3 24 0E            [12] 7381 	add	a,#0x0e
      0054C5 F8               [12] 7382 	mov	r0,a
      0054C6 E6               [12] 7383 	mov	a,@r0
      0054C7 C0 E0            [24] 7384 	push	acc
      0054C9 08               [12] 7385 	inc	r0
      0054CA E6               [12] 7386 	mov	a,@r0
      0054CB C0 E0            [24] 7387 	push	acc
      0054CD 08               [12] 7388 	inc	r0
      0054CE E6               [12] 7389 	mov	a,@r0
      0054CF C0 E0            [24] 7390 	push	acc
      0054D1 8D 82            [24] 7391 	mov	dpl,r5
      0054D3 8E 83            [24] 7392 	mov	dph,r6
      0054D5 8F F0            [24] 7393 	mov	b,r7
      0054D7 12 27 83         [24] 7394 	lcall	_stack_pop
      0054DA AE 82            [24] 7395 	mov	r6,dpl
      0054DC AF 83            [24] 7396 	mov	r7,dph
      0054DE 15 81            [12] 7397 	dec	sp
      0054E0 15 81            [12] 7398 	dec	sp
      0054E2 15 81            [12] 7399 	dec	sp
      0054E4 D0 02            [24] 7400 	pop	ar2
      0054E6 D0 03            [24] 7401 	pop	ar3
      0054E8 D0 04            [24] 7402 	pop	ar4
      0054EA EE               [12] 7403 	mov	a,r6
      0054EB 4F               [12] 7404 	orl	a,r7
      0054EC 70 25            [24] 7405 	jnz	00242$
      0054EE 7D 9B            [12] 7406 	mov	r5,#___str_10
      0054F0 7C 89            [12] 7407 	mov	r4,#(___str_10 >> 8)
      0054F2 7B 80            [12] 7408 	mov	r3,#0x80
                                   7409 ;	calc.c:53: return;
      0054F4                       7410 00492$:
                                   7411 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0054F4 8D 82            [24] 7412 	mov	dpl,r5
      0054F6 8C 83            [24] 7413 	mov	dph,r4
      0054F8 8B F0            [24] 7414 	mov	b,r3
      0054FA 12 70 CC         [24] 7415 	lcall	__gptrget
      0054FD FF               [12] 7416 	mov	r7,a
      0054FE 70 03            [24] 7417 	jnz	01400$
      005500 02 57 05         [24] 7418 	ljmp	00249$
      005503                       7419 01400$:
      005503 7E 00            [12] 7420 	mov	r6,#0x00
      005505 8F 82            [24] 7421 	mov	dpl,r7
      005507 8E 83            [24] 7422 	mov	dph,r6
      005509 12 2B 70         [24] 7423 	lcall	_putchar
      00550C 0D               [12] 7424 	inc	r5
                                   7425 ;	calc.c:328: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00550D BD 00 E4         [24] 7426 	cjne	r5,#0x00,00492$
      005510 0C               [12] 7427 	inc	r4
      005511 80 E1            [24] 7428 	sjmp	00492$
      005513                       7429 00242$:
                                   7430 ;	calc.c:329: else if (!stack_pop(ctx->ps, &d1)) {
      005513 E5 08            [12] 7431 	mov	a,_bp
      005515 24 19            [12] 7432 	add	a,#0x19
      005517 FF               [12] 7433 	mov	r7,a
      005518 E5 08            [12] 7434 	mov	a,_bp
      00551A 24 0E            [12] 7435 	add	a,#0x0e
      00551C F8               [12] 7436 	mov	r0,a
      00551D A6 07            [24] 7437 	mov	@r0,ar7
      00551F 08               [12] 7438 	inc	r0
      005520 76 00            [12] 7439 	mov	@r0,#0x00
      005522 08               [12] 7440 	inc	r0
      005523 76 40            [12] 7441 	mov	@r0,#0x40
      005525 8A 82            [24] 7442 	mov	dpl,r2
      005527 8B 83            [24] 7443 	mov	dph,r3
      005529 8C F0            [24] 7444 	mov	b,r4
      00552B 12 70 CC         [24] 7445 	lcall	__gptrget
      00552E FD               [12] 7446 	mov	r5,a
      00552F A3               [24] 7447 	inc	dptr
      005530 12 70 CC         [24] 7448 	lcall	__gptrget
      005533 FE               [12] 7449 	mov	r6,a
      005534 A3               [24] 7450 	inc	dptr
      005535 12 70 CC         [24] 7451 	lcall	__gptrget
      005538 FF               [12] 7452 	mov	r7,a
      005539 C0 04            [24] 7453 	push	ar4
      00553B C0 03            [24] 7454 	push	ar3
      00553D C0 02            [24] 7455 	push	ar2
      00553F E5 08            [12] 7456 	mov	a,_bp
      005541 24 0E            [12] 7457 	add	a,#0x0e
      005543 F8               [12] 7458 	mov	r0,a
      005544 E6               [12] 7459 	mov	a,@r0
      005545 C0 E0            [24] 7460 	push	acc
      005547 08               [12] 7461 	inc	r0
      005548 E6               [12] 7462 	mov	a,@r0
      005549 C0 E0            [24] 7463 	push	acc
      00554B 08               [12] 7464 	inc	r0
      00554C E6               [12] 7465 	mov	a,@r0
      00554D C0 E0            [24] 7466 	push	acc
      00554F 8D 82            [24] 7467 	mov	dpl,r5
      005551 8E 83            [24] 7468 	mov	dph,r6
      005553 8F F0            [24] 7469 	mov	b,r7
      005555 12 27 83         [24] 7470 	lcall	_stack_pop
      005558 AE 82            [24] 7471 	mov	r6,dpl
      00555A AF 83            [24] 7472 	mov	r7,dph
      00555C 15 81            [12] 7473 	dec	sp
      00555E 15 81            [12] 7474 	dec	sp
      005560 15 81            [12] 7475 	dec	sp
      005562 D0 02            [24] 7476 	pop	ar2
      005564 D0 03            [24] 7477 	pop	ar3
      005566 D0 04            [24] 7478 	pop	ar4
      005568 EE               [12] 7479 	mov	a,r6
      005569 4F               [12] 7480 	orl	a,r7
      00556A 70 5C            [24] 7481 	jnz	00239$
                                   7482 ;	calc.c:330: (void)stack_push(ctx->ps, d0);
      00556C 8A 82            [24] 7483 	mov	dpl,r2
      00556E 8B 83            [24] 7484 	mov	dph,r3
      005570 8C F0            [24] 7485 	mov	b,r4
      005572 12 70 CC         [24] 7486 	lcall	__gptrget
      005575 FD               [12] 7487 	mov	r5,a
      005576 A3               [24] 7488 	inc	dptr
      005577 12 70 CC         [24] 7489 	lcall	__gptrget
      00557A FE               [12] 7490 	mov	r6,a
      00557B A3               [24] 7491 	inc	dptr
      00557C 12 70 CC         [24] 7492 	lcall	__gptrget
      00557F FF               [12] 7493 	mov	r7,a
      005580 E5 08            [12] 7494 	mov	a,_bp
      005582 24 15            [12] 7495 	add	a,#0x15
      005584 F8               [12] 7496 	mov	r0,a
      005585 E6               [12] 7497 	mov	a,@r0
      005586 C0 E0            [24] 7498 	push	acc
      005588 08               [12] 7499 	inc	r0
      005589 E6               [12] 7500 	mov	a,@r0
      00558A C0 E0            [24] 7501 	push	acc
      00558C 08               [12] 7502 	inc	r0
      00558D E6               [12] 7503 	mov	a,@r0
      00558E C0 E0            [24] 7504 	push	acc
      005590 08               [12] 7505 	inc	r0
      005591 E6               [12] 7506 	mov	a,@r0
      005592 C0 E0            [24] 7507 	push	acc
      005594 8D 82            [24] 7508 	mov	dpl,r5
      005596 8E 83            [24] 7509 	mov	dph,r6
      005598 8F F0            [24] 7510 	mov	b,r7
      00559A 12 26 B5         [24] 7511 	lcall	_stack_push
      00559D E5 81            [12] 7512 	mov	a,sp
      00559F 24 FC            [12] 7513 	add	a,#0xfc
      0055A1 F5 81            [12] 7514 	mov	sp,a
                                   7515 ;	calc.c:331: printstr("\r\nstack underflow\r\n");
      0055A3 7D 9B            [12] 7516 	mov	r5,#___str_10
      0055A5 7C 89            [12] 7517 	mov	r4,#(___str_10 >> 8)
      0055A7 7B 80            [12] 7518 	mov	r3,#0x80
                                   7519 ;	calc.c:53: return;
      0055A9                       7520 00495$:
                                   7521 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0055A9 8D 82            [24] 7522 	mov	dpl,r5
      0055AB 8C 83            [24] 7523 	mov	dph,r4
      0055AD 8B F0            [24] 7524 	mov	b,r3
      0055AF 12 70 CC         [24] 7525 	lcall	__gptrget
      0055B2 FF               [12] 7526 	mov	r7,a
      0055B3 70 03            [24] 7527 	jnz	01403$
      0055B5 02 57 05         [24] 7528 	ljmp	00249$
      0055B8                       7529 01403$:
      0055B8 7E 00            [12] 7530 	mov	r6,#0x00
      0055BA 8F 82            [24] 7531 	mov	dpl,r7
      0055BC 8E 83            [24] 7532 	mov	dph,r6
      0055BE 12 2B 70         [24] 7533 	lcall	_putchar
      0055C1 0D               [12] 7534 	inc	r5
                                   7535 ;	calc.c:331: printstr("\r\nstack underflow\r\n");
      0055C2 BD 00 E4         [24] 7536 	cjne	r5,#0x00,00495$
      0055C5 0C               [12] 7537 	inc	r4
      0055C6 80 E1            [24] 7538 	sjmp	00495$
      0055C8                       7539 00239$:
                                   7540 ;	calc.c:333: d1 <<= d0;
      0055C8 E5 08            [12] 7541 	mov	a,_bp
      0055CA 24 15            [12] 7542 	add	a,#0x15
      0055CC F8               [12] 7543 	mov	r0,a
      0055CD 86 F0            [24] 7544 	mov	b,@r0
      0055CF 05 F0            [12] 7545 	inc	b
      0055D1 E5 08            [12] 7546 	mov	a,_bp
      0055D3 24 19            [12] 7547 	add	a,#0x19
      0055D5 F8               [12] 7548 	mov	r0,a
      0055D6 80 12            [24] 7549 	sjmp	01406$
      0055D8                       7550 01405$:
      0055D8 E6               [12] 7551 	mov	a,@r0
      0055D9 26               [12] 7552 	add	a,@r0
      0055DA F6               [12] 7553 	mov	@r0,a
      0055DB 08               [12] 7554 	inc	r0
      0055DC E6               [12] 7555 	mov	a,@r0
      0055DD 33               [12] 7556 	rlc	a
      0055DE F6               [12] 7557 	mov	@r0,a
      0055DF 08               [12] 7558 	inc	r0
      0055E0 E6               [12] 7559 	mov	a,@r0
      0055E1 33               [12] 7560 	rlc	a
      0055E2 F6               [12] 7561 	mov	@r0,a
      0055E3 08               [12] 7562 	inc	r0
      0055E4 E6               [12] 7563 	mov	a,@r0
      0055E5 33               [12] 7564 	rlc	a
      0055E6 F6               [12] 7565 	mov	@r0,a
      0055E7 18               [12] 7566 	dec	r0
      0055E8 18               [12] 7567 	dec	r0
      0055E9 18               [12] 7568 	dec	r0
      0055EA                       7569 01406$:
      0055EA D5 F0 EB         [24] 7570 	djnz	b,01405$
                                   7571 ;	calc.c:334: (void)stack_push(ctx->ps, d1);
      0055ED 8A 82            [24] 7572 	mov	dpl,r2
      0055EF 8B 83            [24] 7573 	mov	dph,r3
      0055F1 8C F0            [24] 7574 	mov	b,r4
      0055F3 12 70 CC         [24] 7575 	lcall	__gptrget
      0055F6 FA               [12] 7576 	mov	r2,a
      0055F7 A3               [24] 7577 	inc	dptr
      0055F8 12 70 CC         [24] 7578 	lcall	__gptrget
      0055FB FB               [12] 7579 	mov	r3,a
      0055FC A3               [24] 7580 	inc	dptr
      0055FD 12 70 CC         [24] 7581 	lcall	__gptrget
      005600 FC               [12] 7582 	mov	r4,a
      005601 E5 08            [12] 7583 	mov	a,_bp
      005603 24 19            [12] 7584 	add	a,#0x19
      005605 F8               [12] 7585 	mov	r0,a
      005606 E6               [12] 7586 	mov	a,@r0
      005607 C0 E0            [24] 7587 	push	acc
      005609 08               [12] 7588 	inc	r0
      00560A E6               [12] 7589 	mov	a,@r0
      00560B C0 E0            [24] 7590 	push	acc
      00560D 08               [12] 7591 	inc	r0
      00560E E6               [12] 7592 	mov	a,@r0
      00560F C0 E0            [24] 7593 	push	acc
      005611 08               [12] 7594 	inc	r0
      005612 E6               [12] 7595 	mov	a,@r0
      005613 C0 E0            [24] 7596 	push	acc
      005615 8A 82            [24] 7597 	mov	dpl,r2
      005617 8B 83            [24] 7598 	mov	dph,r3
      005619 8C F0            [24] 7599 	mov	b,r4
      00561B 12 26 B5         [24] 7600 	lcall	_stack_push
      00561E E5 81            [12] 7601 	mov	a,sp
      005620 24 FC            [12] 7602 	add	a,#0xfc
      005622 F5 81            [12] 7603 	mov	sp,a
                                   7604 ;	calc.c:336: break;
      005624 02 57 05         [24] 7605 	ljmp	00249$
                                   7606 ;	calc.c:337: case '~':
      005627                       7607 00244$:
                                   7608 ;	calc.c:338: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005627 E5 08            [12] 7609 	mov	a,_bp
      005629 24 15            [12] 7610 	add	a,#0x15
      00562B FF               [12] 7611 	mov	r7,a
      00562C E5 08            [12] 7612 	mov	a,_bp
      00562E 24 0E            [12] 7613 	add	a,#0x0e
      005630 F8               [12] 7614 	mov	r0,a
      005631 A6 07            [24] 7615 	mov	@r0,ar7
      005633 08               [12] 7616 	inc	r0
      005634 76 00            [12] 7617 	mov	@r0,#0x00
      005636 08               [12] 7618 	inc	r0
      005637 76 40            [12] 7619 	mov	@r0,#0x40
      005639 E5 08            [12] 7620 	mov	a,_bp
      00563B 24 12            [12] 7621 	add	a,#0x12
      00563D F8               [12] 7622 	mov	r0,a
      00563E 74 11            [12] 7623 	mov	a,#0x11
      005640 26               [12] 7624 	add	a,@r0
      005641 FA               [12] 7625 	mov	r2,a
      005642 74 40            [12] 7626 	mov	a,#0x40
      005644 08               [12] 7627 	inc	r0
      005645 36               [12] 7628 	addc	a,@r0
      005646 FB               [12] 7629 	mov	r3,a
      005647 08               [12] 7630 	inc	r0
      005648 86 04            [24] 7631 	mov	ar4,@r0
      00564A 8A 82            [24] 7632 	mov	dpl,r2
      00564C 8B 83            [24] 7633 	mov	dph,r3
      00564E 8C F0            [24] 7634 	mov	b,r4
      005650 12 70 CC         [24] 7635 	lcall	__gptrget
      005653 FD               [12] 7636 	mov	r5,a
      005654 A3               [24] 7637 	inc	dptr
      005655 12 70 CC         [24] 7638 	lcall	__gptrget
      005658 FE               [12] 7639 	mov	r6,a
      005659 A3               [24] 7640 	inc	dptr
      00565A 12 70 CC         [24] 7641 	lcall	__gptrget
      00565D FF               [12] 7642 	mov	r7,a
      00565E C0 04            [24] 7643 	push	ar4
      005660 C0 03            [24] 7644 	push	ar3
      005662 C0 02            [24] 7645 	push	ar2
      005664 E5 08            [12] 7646 	mov	a,_bp
      005666 24 0E            [12] 7647 	add	a,#0x0e
      005668 F8               [12] 7648 	mov	r0,a
      005669 E6               [12] 7649 	mov	a,@r0
      00566A C0 E0            [24] 7650 	push	acc
      00566C 08               [12] 7651 	inc	r0
      00566D E6               [12] 7652 	mov	a,@r0
      00566E C0 E0            [24] 7653 	push	acc
      005670 08               [12] 7654 	inc	r0
      005671 E6               [12] 7655 	mov	a,@r0
      005672 C0 E0            [24] 7656 	push	acc
      005674 8D 82            [24] 7657 	mov	dpl,r5
      005676 8E 83            [24] 7658 	mov	dph,r6
      005678 8F F0            [24] 7659 	mov	b,r7
      00567A 12 27 83         [24] 7660 	lcall	_stack_pop
      00567D AE 82            [24] 7661 	mov	r6,dpl
      00567F AF 83            [24] 7662 	mov	r7,dph
      005681 15 81            [12] 7663 	dec	sp
      005683 15 81            [12] 7664 	dec	sp
      005685 15 81            [12] 7665 	dec	sp
      005687 D0 02            [24] 7666 	pop	ar2
      005689 D0 03            [24] 7667 	pop	ar3
      00568B D0 04            [24] 7668 	pop	ar4
      00568D EE               [12] 7669 	mov	a,r6
      00568E 4F               [12] 7670 	orl	a,r7
      00568F 70 22            [24] 7671 	jnz	00246$
      005691 7D 9B            [12] 7672 	mov	r5,#___str_10
      005693 7C 89            [12] 7673 	mov	r4,#(___str_10 >> 8)
      005695 7B 80            [12] 7674 	mov	r3,#0x80
                                   7675 ;	calc.c:53: return;
      005697                       7676 00498$:
                                   7677 ;	calc.c:51: for (; *s; s++) putchar(*s);
      005697 8D 82            [24] 7678 	mov	dpl,r5
      005699 8C 83            [24] 7679 	mov	dph,r4
      00569B 8B F0            [24] 7680 	mov	b,r3
      00569D 12 70 CC         [24] 7681 	lcall	__gptrget
      0056A0 FF               [12] 7682 	mov	r7,a
      0056A1 60 62            [24] 7683 	jz	00249$
      0056A3 7E 00            [12] 7684 	mov	r6,#0x00
      0056A5 8F 82            [24] 7685 	mov	dpl,r7
      0056A7 8E 83            [24] 7686 	mov	dph,r6
      0056A9 12 2B 70         [24] 7687 	lcall	_putchar
      0056AC 0D               [12] 7688 	inc	r5
                                   7689 ;	calc.c:338: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0056AD BD 00 E7         [24] 7690 	cjne	r5,#0x00,00498$
      0056B0 0C               [12] 7691 	inc	r4
      0056B1 80 E4            [24] 7692 	sjmp	00498$
      0056B3                       7693 00246$:
                                   7694 ;	calc.c:340: d0 = ~d0;
      0056B3 E5 08            [12] 7695 	mov	a,_bp
      0056B5 24 15            [12] 7696 	add	a,#0x15
      0056B7 F8               [12] 7697 	mov	r0,a
      0056B8 E6               [12] 7698 	mov	a,@r0
      0056B9 F4               [12] 7699 	cpl	a
      0056BA F6               [12] 7700 	mov	@r0,a
      0056BB 08               [12] 7701 	inc	r0
      0056BC E6               [12] 7702 	mov	a,@r0
      0056BD F4               [12] 7703 	cpl	a
      0056BE F6               [12] 7704 	mov	@r0,a
      0056BF 08               [12] 7705 	inc	r0
      0056C0 E6               [12] 7706 	mov	a,@r0
      0056C1 F4               [12] 7707 	cpl	a
      0056C2 F6               [12] 7708 	mov	@r0,a
      0056C3 08               [12] 7709 	inc	r0
      0056C4 E6               [12] 7710 	mov	a,@r0
      0056C5 F4               [12] 7711 	cpl	a
      0056C6 F6               [12] 7712 	mov	@r0,a
                                   7713 ;	calc.c:341: (void)stack_push(ctx->ps, d0);
      0056C7 8A 82            [24] 7714 	mov	dpl,r2
      0056C9 8B 83            [24] 7715 	mov	dph,r3
      0056CB 8C F0            [24] 7716 	mov	b,r4
      0056CD 12 70 CC         [24] 7717 	lcall	__gptrget
      0056D0 FA               [12] 7718 	mov	r2,a
      0056D1 A3               [24] 7719 	inc	dptr
      0056D2 12 70 CC         [24] 7720 	lcall	__gptrget
      0056D5 FB               [12] 7721 	mov	r3,a
      0056D6 A3               [24] 7722 	inc	dptr
      0056D7 12 70 CC         [24] 7723 	lcall	__gptrget
      0056DA FC               [12] 7724 	mov	r4,a
      0056DB E5 08            [12] 7725 	mov	a,_bp
      0056DD 24 15            [12] 7726 	add	a,#0x15
      0056DF F8               [12] 7727 	mov	r0,a
      0056E0 E6               [12] 7728 	mov	a,@r0
      0056E1 C0 E0            [24] 7729 	push	acc
      0056E3 08               [12] 7730 	inc	r0
      0056E4 E6               [12] 7731 	mov	a,@r0
      0056E5 C0 E0            [24] 7732 	push	acc
      0056E7 08               [12] 7733 	inc	r0
      0056E8 E6               [12] 7734 	mov	a,@r0
      0056E9 C0 E0            [24] 7735 	push	acc
      0056EB 08               [12] 7736 	inc	r0
      0056EC E6               [12] 7737 	mov	a,@r0
      0056ED C0 E0            [24] 7738 	push	acc
      0056EF 8A 82            [24] 7739 	mov	dpl,r2
      0056F1 8B 83            [24] 7740 	mov	dph,r3
      0056F3 8C F0            [24] 7741 	mov	b,r4
      0056F5 12 26 B5         [24] 7742 	lcall	_stack_push
      0056F8 E5 81            [12] 7743 	mov	a,sp
      0056FA 24 FC            [12] 7744 	add	a,#0xfc
      0056FC F5 81            [12] 7745 	mov	sp,a
                                   7746 ;	calc.c:343: break;
                                   7747 ;	calc.c:344: default:
      0056FE 80 05            [24] 7748 	sjmp	00249$
      005700                       7749 00248$:
                                   7750 ;	calc.c:345: return UNDEF;
      005700 90 80 00         [24] 7751 	mov	dptr,#0x8000
                                   7752 ;	calc.c:346: }
      005703 80 03            [24] 7753 	sjmp	00500$
      005705                       7754 00249$:
                                   7755 ;	calc.c:348: return 1;
      005705 90 00 01         [24] 7756 	mov	dptr,#0x0001
      005708                       7757 00500$:
                                   7758 ;	calc.c:349: }
      005708 85 08 81         [24] 7759 	mov	sp,_bp
      00570B D0 08            [24] 7760 	pop	_bp
      00570D 22               [24] 7761 	ret
                                   7762 ;------------------------------------------------------------
                                   7763 ;Allocation info for local variables in function 'push_acc'
                                   7764 ;------------------------------------------------------------
                                   7765 ;delta                     Allocated to stack - _bp -5
                                   7766 ;_ctx                      Allocated to stack - _bp +1
                                   7767 ;ctx                       Allocated to registers r2 r3 r4 
                                   7768 ;__1310720127              Allocated to registers 
                                   7769 ;s                         Allocated to registers r5 r6 r7 
                                   7770 ;sloc0                     Allocated to stack - _bp +4
                                   7771 ;------------------------------------------------------------
                                   7772 ;	calc.c:351: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7773 ;	-----------------------------------------
                                   7774 ;	 function push_acc
                                   7775 ;	-----------------------------------------
      00570E                       7776 _push_acc:
      00570E C0 08            [24] 7777 	push	_bp
      005710 85 81 08         [24] 7778 	mov	_bp,sp
      005713 C0 82            [24] 7779 	push	dpl
      005715 C0 83            [24] 7780 	push	dph
      005717 C0 F0            [24] 7781 	push	b
      005719 E5 81            [12] 7782 	mov	a,sp
      00571B 24 04            [12] 7783 	add	a,#0x04
      00571D F5 81            [12] 7784 	mov	sp,a
                                   7785 ;	calc.c:352: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      00571F A8 08            [24] 7786 	mov	r0,_bp
      005721 08               [12] 7787 	inc	r0
      005722 86 02            [24] 7788 	mov	ar2,@r0
      005724 08               [12] 7789 	inc	r0
      005725 86 03            [24] 7790 	mov	ar3,@r0
      005727 08               [12] 7791 	inc	r0
      005728 86 04            [24] 7792 	mov	ar4,@r0
                                   7793 ;	calc.c:356: ctx->acc_valid = 0;
      00572A 74 06            [12] 7794 	mov	a,#0x06
      00572C 2A               [12] 7795 	add	a,r2
      00572D FD               [12] 7796 	mov	r5,a
      00572E E4               [12] 7797 	clr	a
      00572F 3B               [12] 7798 	addc	a,r3
      005730 FE               [12] 7799 	mov	r6,a
      005731 8C 07            [24] 7800 	mov	ar7,r4
      005733 8D 82            [24] 7801 	mov	dpl,r5
      005735 8E 83            [24] 7802 	mov	dph,r6
      005737 8F F0            [24] 7803 	mov	b,r7
      005739 E4               [12] 7804 	clr	a
      00573A 12 6C 51         [24] 7805 	lcall	__gptrput
                                   7806 ;	calc.c:357: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      00573D 74 02            [12] 7807 	mov	a,#0x02
      00573F 2A               [12] 7808 	add	a,r2
      005740 FF               [12] 7809 	mov	r7,a
      005741 E4               [12] 7810 	clr	a
      005742 3B               [12] 7811 	addc	a,r3
      005743 FD               [12] 7812 	mov	r5,a
      005744 8C 06            [24] 7813 	mov	ar6,r4
      005746 8F 82            [24] 7814 	mov	dpl,r7
      005748 8D 83            [24] 7815 	mov	dph,r5
      00574A 8E F0            [24] 7816 	mov	b,r6
      00574C E5 08            [12] 7817 	mov	a,_bp
      00574E 24 04            [12] 7818 	add	a,#0x04
      005750 F8               [12] 7819 	mov	r0,a
      005751 12 70 CC         [24] 7820 	lcall	__gptrget
      005754 F6               [12] 7821 	mov	@r0,a
      005755 A3               [24] 7822 	inc	dptr
      005756 12 70 CC         [24] 7823 	lcall	__gptrget
      005759 08               [12] 7824 	inc	r0
      00575A F6               [12] 7825 	mov	@r0,a
      00575B A3               [24] 7826 	inc	dptr
      00575C 12 70 CC         [24] 7827 	lcall	__gptrget
      00575F 08               [12] 7828 	inc	r0
      005760 F6               [12] 7829 	mov	@r0,a
      005761 A3               [24] 7830 	inc	dptr
      005762 12 70 CC         [24] 7831 	lcall	__gptrget
      005765 08               [12] 7832 	inc	r0
      005766 F6               [12] 7833 	mov	@r0,a
      005767 74 11            [12] 7834 	mov	a,#0x11
      005769 2A               [12] 7835 	add	a,r2
      00576A FA               [12] 7836 	mov	r2,a
      00576B 74 40            [12] 7837 	mov	a,#0x40
      00576D 3B               [12] 7838 	addc	a,r3
      00576E FB               [12] 7839 	mov	r3,a
      00576F 8C 07            [24] 7840 	mov	ar7,r4
      005771 8A 82            [24] 7841 	mov	dpl,r2
      005773 8B 83            [24] 7842 	mov	dph,r3
      005775 8F F0            [24] 7843 	mov	b,r7
      005777 12 70 CC         [24] 7844 	lcall	__gptrget
      00577A FA               [12] 7845 	mov	r2,a
      00577B A3               [24] 7846 	inc	dptr
      00577C 12 70 CC         [24] 7847 	lcall	__gptrget
      00577F FB               [12] 7848 	mov	r3,a
      005780 A3               [24] 7849 	inc	dptr
      005781 12 70 CC         [24] 7850 	lcall	__gptrget
      005784 FF               [12] 7851 	mov	r7,a
      005785 E5 08            [12] 7852 	mov	a,_bp
      005787 24 04            [12] 7853 	add	a,#0x04
      005789 F8               [12] 7854 	mov	r0,a
      00578A E6               [12] 7855 	mov	a,@r0
      00578B C0 E0            [24] 7856 	push	acc
      00578D 08               [12] 7857 	inc	r0
      00578E E6               [12] 7858 	mov	a,@r0
      00578F C0 E0            [24] 7859 	push	acc
      005791 08               [12] 7860 	inc	r0
      005792 E6               [12] 7861 	mov	a,@r0
      005793 C0 E0            [24] 7862 	push	acc
      005795 08               [12] 7863 	inc	r0
      005796 E6               [12] 7864 	mov	a,@r0
      005797 C0 E0            [24] 7865 	push	acc
      005799 8A 82            [24] 7866 	mov	dpl,r2
      00579B 8B 83            [24] 7867 	mov	dph,r3
      00579D 8F F0            [24] 7868 	mov	b,r7
      00579F 12 26 B5         [24] 7869 	lcall	_stack_push
      0057A2 AE 82            [24] 7870 	mov	r6,dpl
      0057A4 AF 83            [24] 7871 	mov	r7,dph
      0057A6 E5 81            [12] 7872 	mov	a,sp
      0057A8 24 FC            [12] 7873 	add	a,#0xfc
      0057AA F5 81            [12] 7874 	mov	sp,a
      0057AC EE               [12] 7875 	mov	a,r6
      0057AD 4F               [12] 7876 	orl	a,r7
      0057AE 70 22            [24] 7877 	jnz	00102$
      0057B0 7D EA            [12] 7878 	mov	r5,#___str_13
      0057B2 7E 89            [12] 7879 	mov	r6,#(___str_13 >> 8)
      0057B4 7F 80            [12] 7880 	mov	r7,#0x80
                                   7881 ;	calc.c:53: return;
      0057B6                       7882 00109$:
                                   7883 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0057B6 8D 82            [24] 7884 	mov	dpl,r5
      0057B8 8E 83            [24] 7885 	mov	dph,r6
      0057BA 8F F0            [24] 7886 	mov	b,r7
      0057BC 12 70 CC         [24] 7887 	lcall	__gptrget
      0057BF FC               [12] 7888 	mov	r4,a
      0057C0 60 10            [24] 7889 	jz	00102$
      0057C2 7B 00            [12] 7890 	mov	r3,#0x00
      0057C4 8C 82            [24] 7891 	mov	dpl,r4
      0057C6 8B 83            [24] 7892 	mov	dph,r3
      0057C8 12 2B 70         [24] 7893 	lcall	_putchar
      0057CB 0D               [12] 7894 	inc	r5
                                   7895 ;	calc.c:357: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      0057CC BD 00 E7         [24] 7896 	cjne	r5,#0x00,00109$
      0057CF 0E               [12] 7897 	inc	r6
      0057D0 80 E4            [24] 7898 	sjmp	00109$
      0057D2                       7899 00102$:
                                   7900 ;	calc.c:359: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      0057D2 E5 08            [12] 7901 	mov	a,_bp
      0057D4 24 FB            [12] 7902 	add	a,#0xfb
      0057D6 F8               [12] 7903 	mov	r0,a
      0057D7 86 05            [24] 7904 	mov	ar5,@r0
      0057D9 08               [12] 7905 	inc	r0
      0057DA 86 06            [24] 7906 	mov	ar6,@r0
      0057DC 08               [12] 7907 	inc	r0
      0057DD 86 07            [24] 7908 	mov	ar7,@r0
      0057DF 74 02            [12] 7909 	mov	a,#0x02
      0057E1 2D               [12] 7910 	add	a,r5
      0057E2 FA               [12] 7911 	mov	r2,a
      0057E3 E4               [12] 7912 	clr	a
      0057E4 3E               [12] 7913 	addc	a,r6
      0057E5 FB               [12] 7914 	mov	r3,a
      0057E6 8F 04            [24] 7915 	mov	ar4,r7
      0057E8 8A 82            [24] 7916 	mov	dpl,r2
      0057EA 8B 83            [24] 7917 	mov	dph,r3
      0057EC 8C F0            [24] 7918 	mov	b,r4
      0057EE 12 70 CC         [24] 7919 	lcall	__gptrget
      0057F1 FA               [12] 7920 	mov	r2,a
      0057F2 A3               [24] 7921 	inc	dptr
      0057F3 12 70 CC         [24] 7922 	lcall	__gptrget
      0057F6 FB               [12] 7923 	mov	r3,a
      0057F7 BA 02 27         [24] 7924 	cjne	r2,#0x02,00104$
      0057FA BB 00 24         [24] 7925 	cjne	r3,#0x00,00104$
      0057FD C0 05            [24] 7926 	push	ar5
      0057FF C0 06            [24] 7927 	push	ar6
      005801 C0 07            [24] 7928 	push	ar7
      005803 A8 08            [24] 7929 	mov	r0,_bp
      005805 08               [12] 7930 	inc	r0
      005806 86 82            [24] 7931 	mov	dpl,@r0
      005808 08               [12] 7932 	inc	r0
      005809 86 83            [24] 7933 	mov	dph,@r0
      00580B 08               [12] 7934 	inc	r0
      00580C 86 F0            [24] 7935 	mov	b,@r0
      00580E 12 34 14         [24] 7936 	lcall	_operator
      005811 AE 82            [24] 7937 	mov	r6,dpl
      005813 AF 83            [24] 7938 	mov	r7,dph
      005815 15 81            [12] 7939 	dec	sp
      005817 15 81            [12] 7940 	dec	sp
      005819 15 81            [12] 7941 	dec	sp
      00581B 8E 82            [24] 7942 	mov	dpl,r6
      00581D 8F 83            [24] 7943 	mov	dph,r7
      00581F 80 03            [24] 7944 	sjmp	00111$
      005821                       7945 00104$:
                                   7946 ;	calc.c:360: else return 1;
      005821 90 00 01         [24] 7947 	mov	dptr,#0x0001
      005824                       7948 00111$:
                                   7949 ;	calc.c:361: }
      005824 85 08 81         [24] 7950 	mov	sp,_bp
      005827 D0 08            [24] 7951 	pop	_bp
      005829 22               [24] 7952 	ret
                                   7953 ;------------------------------------------------------------
                                   7954 ;Allocation info for local variables in function 'reset_acc'
                                   7955 ;------------------------------------------------------------
                                   7956 ;delta                     Allocated to stack - _bp -5
                                   7957 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7958 ;ctx                       Allocated to registers r5 r6 r7 
                                   7959 ;------------------------------------------------------------
                                   7960 ;	calc.c:363: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7961 ;	-----------------------------------------
                                   7962 ;	 function reset_acc
                                   7963 ;	-----------------------------------------
      00582A                       7964 _reset_acc:
      00582A C0 08            [24] 7965 	push	_bp
      00582C 85 81 08         [24] 7966 	mov	_bp,sp
      00582F AD 82            [24] 7967 	mov	r5,dpl
      005831 AE 83            [24] 7968 	mov	r6,dph
      005833 AF F0            [24] 7969 	mov	r7,b
                                   7970 ;	calc.c:364: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   7971 ;	calc.c:366: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      005835 E5 08            [12] 7972 	mov	a,_bp
      005837 24 FB            [12] 7973 	add	a,#0xfb
      005839 F8               [12] 7974 	mov	r0,a
      00583A 86 02            [24] 7975 	mov	ar2,@r0
      00583C 08               [12] 7976 	inc	r0
      00583D 86 03            [24] 7977 	mov	ar3,@r0
      00583F 08               [12] 7978 	inc	r0
      005840 86 04            [24] 7979 	mov	ar4,@r0
      005842 74 02            [12] 7980 	mov	a,#0x02
      005844 2A               [12] 7981 	add	a,r2
      005845 FA               [12] 7982 	mov	r2,a
      005846 E4               [12] 7983 	clr	a
      005847 3B               [12] 7984 	addc	a,r3
      005848 FB               [12] 7985 	mov	r3,a
      005849 8A 82            [24] 7986 	mov	dpl,r2
      00584B 8B 83            [24] 7987 	mov	dph,r3
      00584D 8C F0            [24] 7988 	mov	b,r4
      00584F 12 70 CC         [24] 7989 	lcall	__gptrget
      005852 FA               [12] 7990 	mov	r2,a
      005853 A3               [24] 7991 	inc	dptr
      005854 12 70 CC         [24] 7992 	lcall	__gptrget
      005857 FB               [12] 7993 	mov	r3,a
      005858 BA 07 16         [24] 7994 	cjne	r2,#0x07,00102$
      00585B BB 00 13         [24] 7995 	cjne	r3,#0x00,00102$
      00585E 74 06            [12] 7996 	mov	a,#0x06
      005860 2D               [12] 7997 	add	a,r5
      005861 FA               [12] 7998 	mov	r2,a
      005862 E4               [12] 7999 	clr	a
      005863 3E               [12] 8000 	addc	a,r6
      005864 FB               [12] 8001 	mov	r3,a
      005865 8F 04            [24] 8002 	mov	ar4,r7
      005867 8A 82            [24] 8003 	mov	dpl,r2
      005869 8B 83            [24] 8004 	mov	dph,r3
      00586B 8C F0            [24] 8005 	mov	b,r4
      00586D E4               [12] 8006 	clr	a
      00586E 12 6C 51         [24] 8007 	lcall	__gptrput
      005871                       8008 00102$:
                                   8009 ;	calc.c:367: ctx->acc = 0l;
      005871 74 02            [12] 8010 	mov	a,#0x02
      005873 2D               [12] 8011 	add	a,r5
      005874 FD               [12] 8012 	mov	r5,a
      005875 E4               [12] 8013 	clr	a
      005876 3E               [12] 8014 	addc	a,r6
      005877 FE               [12] 8015 	mov	r6,a
      005878 8D 82            [24] 8016 	mov	dpl,r5
      00587A 8E 83            [24] 8017 	mov	dph,r6
      00587C 8F F0            [24] 8018 	mov	b,r7
      00587E E4               [12] 8019 	clr	a
      00587F 12 6C 51         [24] 8020 	lcall	__gptrput
      005882 A3               [24] 8021 	inc	dptr
      005883 12 6C 51         [24] 8022 	lcall	__gptrput
      005886 A3               [24] 8023 	inc	dptr
      005887 12 6C 51         [24] 8024 	lcall	__gptrput
      00588A A3               [24] 8025 	inc	dptr
      00588B 12 6C 51         [24] 8026 	lcall	__gptrput
                                   8027 ;	calc.c:369: return 1;
      00588E 90 00 01         [24] 8028 	mov	dptr,#0x0001
                                   8029 ;	calc.c:370: }
      005891 D0 08            [24] 8030 	pop	_bp
      005893 22               [24] 8031 	ret
                                   8032 ;------------------------------------------------------------
                                   8033 ;Allocation info for local variables in function 'reset_base'
                                   8034 ;------------------------------------------------------------
                                   8035 ;delta                     Allocated to stack - _bp -5
                                   8036 ;_ctx                      Allocated to registers r5 r6 r7 
                                   8037 ;ctx                       Allocated to registers r5 r6 r7 
                                   8038 ;------------------------------------------------------------
                                   8039 ;	calc.c:372: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   8040 ;	-----------------------------------------
                                   8041 ;	 function reset_base
                                   8042 ;	-----------------------------------------
      005894                       8043 _reset_base:
      005894 C0 08            [24] 8044 	push	_bp
      005896 85 81 08         [24] 8045 	mov	_bp,sp
      005899 AD 82            [24] 8046 	mov	r5,dpl
      00589B AE 83            [24] 8047 	mov	r6,dph
      00589D AF F0            [24] 8048 	mov	r7,b
                                   8049 ;	calc.c:373: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   8050 ;	calc.c:377: switch (ctx->digit[0]) {
      00589F 74 07            [12] 8051 	mov	a,#0x07
      0058A1 2D               [12] 8052 	add	a,r5
      0058A2 FA               [12] 8053 	mov	r2,a
      0058A3 E4               [12] 8054 	clr	a
      0058A4 3E               [12] 8055 	addc	a,r6
      0058A5 FB               [12] 8056 	mov	r3,a
      0058A6 8F 04            [24] 8057 	mov	ar4,r7
      0058A8 8A 82            [24] 8058 	mov	dpl,r2
      0058AA 8B 83            [24] 8059 	mov	dph,r3
      0058AC 8C F0            [24] 8060 	mov	b,r4
      0058AE 12 70 CC         [24] 8061 	lcall	__gptrget
      0058B1 FC               [12] 8062 	mov	r4,a
      0058B2 BC 48 02         [24] 8063 	cjne	r4,#0x48,00124$
      0058B5 80 0F            [24] 8064 	sjmp	00101$
      0058B7                       8065 00124$:
      0058B7 BC 4F 02         [24] 8066 	cjne	r4,#0x4f,00125$
      0058BA 80 2E            [24] 8067 	sjmp	00103$
      0058BC                       8068 00125$:
      0058BC BC 68 02         [24] 8069 	cjne	r4,#0x68,00126$
      0058BF 80 17            [24] 8070 	sjmp	00102$
      0058C1                       8071 00126$:
                                   8072 ;	calc.c:378: case 'H':
      0058C1 BC 6F 48         [24] 8073 	cjne	r4,#0x6f,00105$
      0058C4 80 36            [24] 8074 	sjmp	00104$
      0058C6                       8075 00101$:
                                   8076 ;	calc.c:379: ctx->base = 16;
      0058C6 8D 82            [24] 8077 	mov	dpl,r5
      0058C8 8E 83            [24] 8078 	mov	dph,r6
      0058CA 8F F0            [24] 8079 	mov	b,r7
      0058CC 74 10            [12] 8080 	mov	a,#0x10
      0058CE 12 6C 51         [24] 8081 	lcall	__gptrput
      0058D1 A3               [24] 8082 	inc	dptr
      0058D2 E4               [12] 8083 	clr	a
      0058D3 12 6C 51         [24] 8084 	lcall	__gptrput
                                   8085 ;	calc.c:380: break;
                                   8086 ;	calc.c:381: case 'h':
      0058D6 80 34            [24] 8087 	sjmp	00105$
      0058D8                       8088 00102$:
                                   8089 ;	calc.c:382: ctx->base = 10;
      0058D8 8D 82            [24] 8090 	mov	dpl,r5
      0058DA 8E 83            [24] 8091 	mov	dph,r6
      0058DC 8F F0            [24] 8092 	mov	b,r7
      0058DE 74 0A            [12] 8093 	mov	a,#0x0a
      0058E0 12 6C 51         [24] 8094 	lcall	__gptrput
      0058E3 A3               [24] 8095 	inc	dptr
      0058E4 E4               [12] 8096 	clr	a
      0058E5 12 6C 51         [24] 8097 	lcall	__gptrput
                                   8098 ;	calc.c:383: break;
                                   8099 ;	calc.c:384: case 'O':
      0058E8 80 22            [24] 8100 	sjmp	00105$
      0058EA                       8101 00103$:
                                   8102 ;	calc.c:385: ctx->base = 8;
      0058EA 8D 82            [24] 8103 	mov	dpl,r5
      0058EC 8E 83            [24] 8104 	mov	dph,r6
      0058EE 8F F0            [24] 8105 	mov	b,r7
      0058F0 74 08            [12] 8106 	mov	a,#0x08
      0058F2 12 6C 51         [24] 8107 	lcall	__gptrput
      0058F5 A3               [24] 8108 	inc	dptr
      0058F6 E4               [12] 8109 	clr	a
      0058F7 12 6C 51         [24] 8110 	lcall	__gptrput
                                   8111 ;	calc.c:386: break;
                                   8112 ;	calc.c:387: case 'o':
      0058FA 80 10            [24] 8113 	sjmp	00105$
      0058FC                       8114 00104$:
                                   8115 ;	calc.c:388: ctx->base = 2;
      0058FC 8D 82            [24] 8116 	mov	dpl,r5
      0058FE 8E 83            [24] 8117 	mov	dph,r6
      005900 8F F0            [24] 8118 	mov	b,r7
      005902 74 02            [12] 8119 	mov	a,#0x02
      005904 12 6C 51         [24] 8120 	lcall	__gptrput
      005907 A3               [24] 8121 	inc	dptr
      005908 E4               [12] 8122 	clr	a
      005909 12 6C 51         [24] 8123 	lcall	__gptrput
                                   8124 ;	calc.c:390: }
      00590C                       8125 00105$:
                                   8126 ;	calc.c:392: return 1;
      00590C 90 00 01         [24] 8127 	mov	dptr,#0x0001
                                   8128 ;	calc.c:393: }
      00590F D0 08            [24] 8129 	pop	_bp
      005911 22               [24] 8130 	ret
                                   8131 ;------------------------------------------------------------
                                   8132 ;Allocation info for local variables in function 'status'
                                   8133 ;------------------------------------------------------------
                                   8134 ;delta                     Allocated to stack - _bp -5
                                   8135 ;_ctx                      Allocated to registers r5 r6 r7 
                                   8136 ;ctx                       Allocated to stack - _bp +19
                                   8137 ;vals                      Allocated to stack - _bp +11
                                   8138 ;n                         Allocated to stack - _bp +9
                                   8139 ;__1310720129              Allocated to registers 
                                   8140 ;s                         Allocated to registers r5 r6 r7 
                                   8141 ;__1310720131              Allocated to registers r5 r6 r7 r4 
                                   8142 ;d                         Allocated to registers 
                                   8143 ;__1310720001              Allocated to registers 
                                   8144 ;d                         Allocated to stack - _bp +22
                                   8145 ;mask                      Allocated to stack - _bp +26
                                   8146 ;__1310720133              Allocated to registers 
                                   8147 ;s                         Allocated to registers r3 r4 r5 
                                   8148 ;__1310720135              Allocated to registers r2 r3 r4 r5 
                                   8149 ;d                         Allocated to registers 
                                   8150 ;__1310720001              Allocated to registers 
                                   8151 ;d                         Allocated to stack - _bp +22
                                   8152 ;mask                      Allocated to stack - _bp +26
                                   8153 ;__1310720137              Allocated to registers 
                                   8154 ;s                         Allocated to registers r3 r4 r5 
                                   8155 ;__1310720139              Allocated to registers r4 r5 r6 r7 
                                   8156 ;d                         Allocated to registers 
                                   8157 ;__1310720001              Allocated to registers 
                                   8158 ;d                         Allocated to stack - _bp +22
                                   8159 ;mask                      Allocated to stack - _bp +26
                                   8160 ;__1310720141              Allocated to registers 
                                   8161 ;s                         Allocated to registers r3 r4 r5 
                                   8162 ;__1310720143              Allocated to registers r2 r3 r4 r5 
                                   8163 ;d                         Allocated to registers 
                                   8164 ;__1310720001              Allocated to registers 
                                   8165 ;d                         Allocated to stack - _bp +22
                                   8166 ;mask                      Allocated to stack - _bp +26
                                   8167 ;__1310720145              Allocated to registers 
                                   8168 ;s                         Allocated to registers r5 r6 r7 
                                   8169 ;__1310720147              Allocated to registers r4 r5 r6 r7 
                                   8170 ;d                         Allocated to registers 
                                   8171 ;__1310720001              Allocated to registers 
                                   8172 ;d                         Allocated to stack - _bp +22
                                   8173 ;mask                      Allocated to stack - _bp +26
                                   8174 ;__1310720149              Allocated to registers 
                                   8175 ;s                         Allocated to registers r5 r6 r7 
                                   8176 ;sloc0                     Allocated to stack - _bp +1
                                   8177 ;sloc1                     Allocated to stack - _bp +4
                                   8178 ;sloc2                     Allocated to stack - _bp +7
                                   8179 ;------------------------------------------------------------
                                   8180 ;	calc.c:395: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   8181 ;	-----------------------------------------
                                   8182 ;	 function status
                                   8183 ;	-----------------------------------------
      005912                       8184 _status:
      005912 C0 08            [24] 8185 	push	_bp
      005914 E5 81            [12] 8186 	mov	a,sp
      005916 F5 08            [12] 8187 	mov	_bp,a
      005918 24 1D            [12] 8188 	add	a,#0x1d
      00591A F5 81            [12] 8189 	mov	sp,a
      00591C AD 82            [24] 8190 	mov	r5,dpl
      00591E AE 83            [24] 8191 	mov	r6,dph
      005920 AF F0            [24] 8192 	mov	r7,b
                                   8193 ;	calc.c:396: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      005922 E5 08            [12] 8194 	mov	a,_bp
      005924 24 13            [12] 8195 	add	a,#0x13
      005926 F8               [12] 8196 	mov	r0,a
      005927 A6 05            [24] 8197 	mov	@r0,ar5
      005929 08               [12] 8198 	inc	r0
      00592A A6 06            [24] 8199 	mov	@r0,ar6
      00592C 08               [12] 8200 	inc	r0
      00592D A6 07            [24] 8201 	mov	@r0,ar7
                                   8202 ;	calc.c:402: printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
      00592F E5 08            [12] 8203 	mov	a,_bp
      005931 24 13            [12] 8204 	add	a,#0x13
      005933 F8               [12] 8205 	mov	r0,a
      005934 86 82            [24] 8206 	mov	dpl,@r0
      005936 08               [12] 8207 	inc	r0
      005937 86 83            [24] 8208 	mov	dph,@r0
      005939 08               [12] 8209 	inc	r0
      00593A 86 F0            [24] 8210 	mov	b,@r0
      00593C E5 08            [12] 8211 	mov	a,_bp
      00593E 24 07            [12] 8212 	add	a,#0x07
      005940 F9               [12] 8213 	mov	r1,a
      005941 12 70 CC         [24] 8214 	lcall	__gptrget
      005944 F7               [12] 8215 	mov	@r1,a
      005945 A3               [24] 8216 	inc	dptr
      005946 12 70 CC         [24] 8217 	lcall	__gptrget
      005949 09               [12] 8218 	inc	r1
      00594A F7               [12] 8219 	mov	@r1,a
      00594B E5 08            [12] 8220 	mov	a,_bp
      00594D 24 13            [12] 8221 	add	a,#0x13
      00594F F8               [12] 8222 	mov	r0,a
      005950 A9 08            [24] 8223 	mov	r1,_bp
      005952 09               [12] 8224 	inc	r1
      005953 74 14            [12] 8225 	mov	a,#0x14
      005955 26               [12] 8226 	add	a,@r0
      005956 F7               [12] 8227 	mov	@r1,a
      005957 74 40            [12] 8228 	mov	a,#0x40
      005959 08               [12] 8229 	inc	r0
      00595A 36               [12] 8230 	addc	a,@r0
      00595B 09               [12] 8231 	inc	r1
      00595C F7               [12] 8232 	mov	@r1,a
      00595D 08               [12] 8233 	inc	r0
      00595E 09               [12] 8234 	inc	r1
      00595F E6               [12] 8235 	mov	a,@r0
      005960 F7               [12] 8236 	mov	@r1,a
      005961 A8 08            [24] 8237 	mov	r0,_bp
      005963 08               [12] 8238 	inc	r0
      005964 86 82            [24] 8239 	mov	dpl,@r0
      005966 08               [12] 8240 	inc	r0
      005967 86 83            [24] 8241 	mov	dph,@r0
      005969 08               [12] 8242 	inc	r0
      00596A 86 F0            [24] 8243 	mov	b,@r0
      00596C 12 70 CC         [24] 8244 	lcall	__gptrget
      00596F FA               [12] 8245 	mov	r2,a
      005970 A3               [24] 8246 	inc	dptr
      005971 12 70 CC         [24] 8247 	lcall	__gptrget
      005974 FE               [12] 8248 	mov	r6,a
      005975 A3               [24] 8249 	inc	dptr
      005976 12 70 CC         [24] 8250 	lcall	__gptrget
      005979 FF               [12] 8251 	mov	r7,a
      00597A E5 08            [12] 8252 	mov	a,_bp
      00597C 24 13            [12] 8253 	add	a,#0x13
      00597E F8               [12] 8254 	mov	r0,a
      00597F E5 08            [12] 8255 	mov	a,_bp
      005981 24 04            [12] 8256 	add	a,#0x04
      005983 F9               [12] 8257 	mov	r1,a
      005984 74 11            [12] 8258 	mov	a,#0x11
      005986 26               [12] 8259 	add	a,@r0
      005987 F7               [12] 8260 	mov	@r1,a
      005988 74 40            [12] 8261 	mov	a,#0x40
      00598A 08               [12] 8262 	inc	r0
      00598B 36               [12] 8263 	addc	a,@r0
      00598C 09               [12] 8264 	inc	r1
      00598D F7               [12] 8265 	mov	@r1,a
      00598E 08               [12] 8266 	inc	r0
      00598F 09               [12] 8267 	inc	r1
      005990 E6               [12] 8268 	mov	a,@r0
      005991 F7               [12] 8269 	mov	@r1,a
      005992 E5 08            [12] 8270 	mov	a,_bp
      005994 24 04            [12] 8271 	add	a,#0x04
      005996 F8               [12] 8272 	mov	r0,a
      005997 86 82            [24] 8273 	mov	dpl,@r0
      005999 08               [12] 8274 	inc	r0
      00599A 86 83            [24] 8275 	mov	dph,@r0
      00599C 08               [12] 8276 	inc	r0
      00599D 86 F0            [24] 8277 	mov	b,@r0
      00599F 12 70 CC         [24] 8278 	lcall	__gptrget
      0059A2 FB               [12] 8279 	mov	r3,a
      0059A3 A3               [24] 8280 	inc	dptr
      0059A4 12 70 CC         [24] 8281 	lcall	__gptrget
      0059A7 FC               [12] 8282 	mov	r4,a
      0059A8 A3               [24] 8283 	inc	dptr
      0059A9 12 70 CC         [24] 8284 	lcall	__gptrget
      0059AC FD               [12] 8285 	mov	r5,a
      0059AD E5 08            [12] 8286 	mov	a,_bp
      0059AF 24 07            [12] 8287 	add	a,#0x07
      0059B1 F8               [12] 8288 	mov	r0,a
      0059B2 E6               [12] 8289 	mov	a,@r0
      0059B3 C0 E0            [24] 8290 	push	acc
      0059B5 08               [12] 8291 	inc	r0
      0059B6 E6               [12] 8292 	mov	a,@r0
      0059B7 C0 E0            [24] 8293 	push	acc
      0059B9 C0 02            [24] 8294 	push	ar2
      0059BB C0 06            [24] 8295 	push	ar6
      0059BD C0 07            [24] 8296 	push	ar7
      0059BF C0 03            [24] 8297 	push	ar3
      0059C1 C0 04            [24] 8298 	push	ar4
      0059C3 C0 05            [24] 8299 	push	ar5
      0059C5 74 12            [12] 8300 	mov	a,#___str_15
      0059C7 C0 E0            [24] 8301 	push	acc
      0059C9 74 8A            [12] 8302 	mov	a,#(___str_15 >> 8)
      0059CB C0 E0            [24] 8303 	push	acc
      0059CD 74 80            [12] 8304 	mov	a,#0x80
      0059CF C0 E0            [24] 8305 	push	acc
      0059D1 12 70 93         [24] 8306 	lcall	_printf
      0059D4 E5 81            [12] 8307 	mov	a,sp
      0059D6 24 F5            [12] 8308 	add	a,#0xf5
      0059D8 F5 81            [12] 8309 	mov	sp,a
                                   8310 ;	calc.c:404: printstr("ACC\t");
      0059DA 7D 32            [12] 8311 	mov	r5,#___str_16
      0059DC 7E 8A            [12] 8312 	mov	r6,#(___str_16 >> 8)
      0059DE 7F 80            [12] 8313 	mov	r7,#0x80
                                   8314 ;	calc.c:53: return;
      0059E0                       8315 00139$:
                                   8316 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0059E0 8D 82            [24] 8317 	mov	dpl,r5
      0059E2 8E 83            [24] 8318 	mov	dph,r6
      0059E4 8F F0            [24] 8319 	mov	b,r7
      0059E6 12 70 CC         [24] 8320 	lcall	__gptrget
      0059E9 FC               [12] 8321 	mov	r4,a
      0059EA 60 10            [24] 8322 	jz	00112$
      0059EC 7B 00            [12] 8323 	mov	r3,#0x00
      0059EE 8C 82            [24] 8324 	mov	dpl,r4
      0059F0 8B 83            [24] 8325 	mov	dph,r3
      0059F2 12 2B 70         [24] 8326 	lcall	_putchar
      0059F5 0D               [12] 8327 	inc	r5
                                   8328 ;	calc.c:404: printstr("ACC\t");
      0059F6 BD 00 E7         [24] 8329 	cjne	r5,#0x00,00139$
      0059F9 0E               [12] 8330 	inc	r6
      0059FA 80 E4            [24] 8331 	sjmp	00139$
      0059FC                       8332 00112$:
                                   8333 ;	calc.c:405: if (ctx->acc_valid) printall(ctx->acc);
      0059FC E5 08            [12] 8334 	mov	a,_bp
      0059FE 24 13            [12] 8335 	add	a,#0x13
      005A00 F8               [12] 8336 	mov	r0,a
      005A01 74 06            [12] 8337 	mov	a,#0x06
      005A03 26               [12] 8338 	add	a,@r0
      005A04 FD               [12] 8339 	mov	r5,a
      005A05 E4               [12] 8340 	clr	a
      005A06 08               [12] 8341 	inc	r0
      005A07 36               [12] 8342 	addc	a,@r0
      005A08 FE               [12] 8343 	mov	r6,a
      005A09 08               [12] 8344 	inc	r0
      005A0A 86 07            [24] 8345 	mov	ar7,@r0
      005A0C 8D 82            [24] 8346 	mov	dpl,r5
      005A0E 8E 83            [24] 8347 	mov	dph,r6
      005A10 8F F0            [24] 8348 	mov	b,r7
      005A12 12 70 CC         [24] 8349 	lcall	__gptrget
      005A15 70 03            [24] 8350 	jnz	00321$
      005A17 02 5B 49         [24] 8351 	ljmp	00102$
      005A1A                       8352 00321$:
      005A1A E5 08            [12] 8353 	mov	a,_bp
      005A1C 24 13            [12] 8354 	add	a,#0x13
      005A1E F8               [12] 8355 	mov	r0,a
      005A1F 74 02            [12] 8356 	mov	a,#0x02
      005A21 26               [12] 8357 	add	a,@r0
      005A22 FD               [12] 8358 	mov	r5,a
      005A23 E4               [12] 8359 	clr	a
      005A24 08               [12] 8360 	inc	r0
      005A25 36               [12] 8361 	addc	a,@r0
      005A26 FE               [12] 8362 	mov	r6,a
      005A27 08               [12] 8363 	inc	r0
      005A28 86 07            [24] 8364 	mov	ar7,@r0
      005A2A 8D 82            [24] 8365 	mov	dpl,r5
      005A2C 8E 83            [24] 8366 	mov	dph,r6
      005A2E 8F F0            [24] 8367 	mov	b,r7
      005A30 12 70 CC         [24] 8368 	lcall	__gptrget
      005A33 FD               [12] 8369 	mov	r5,a
      005A34 A3               [24] 8370 	inc	dptr
      005A35 12 70 CC         [24] 8371 	lcall	__gptrget
      005A38 FE               [12] 8372 	mov	r6,a
      005A39 A3               [24] 8373 	inc	dptr
      005A3A 12 70 CC         [24] 8374 	lcall	__gptrget
      005A3D FF               [12] 8375 	mov	r7,a
      005A3E A3               [24] 8376 	inc	dptr
      005A3F 12 70 CC         [24] 8377 	lcall	__gptrget
      005A42 FC               [12] 8378 	mov	r4,a
                                   8379 ;	calc.c:66: printf("%08lx\t", d);
      005A43 C0 07            [24] 8380 	push	ar7
      005A45 C0 06            [24] 8381 	push	ar6
      005A47 C0 05            [24] 8382 	push	ar5
      005A49 C0 04            [24] 8383 	push	ar4
      005A4B C0 05            [24] 8384 	push	ar5
      005A4D C0 06            [24] 8385 	push	ar6
      005A4F C0 07            [24] 8386 	push	ar7
      005A51 C0 04            [24] 8387 	push	ar4
      005A53 74 4D            [12] 8388 	mov	a,#___str_0
      005A55 C0 E0            [24] 8389 	push	acc
      005A57 74 89            [12] 8390 	mov	a,#(___str_0 >> 8)
      005A59 C0 E0            [24] 8391 	push	acc
      005A5B 74 80            [12] 8392 	mov	a,#0x80
      005A5D C0 E0            [24] 8393 	push	acc
      005A5F 12 70 93         [24] 8394 	lcall	_printf
      005A62 E5 81            [12] 8395 	mov	a,sp
      005A64 24 F9            [12] 8396 	add	a,#0xf9
      005A66 F5 81            [12] 8397 	mov	sp,a
      005A68 D0 04            [24] 8398 	pop	ar4
      005A6A D0 05            [24] 8399 	pop	ar5
      005A6C D0 06            [24] 8400 	pop	ar6
      005A6E D0 07            [24] 8401 	pop	ar7
                                   8402 ;	calc.c:67: printf("% 11ld\t", d);
      005A70 C0 07            [24] 8403 	push	ar7
      005A72 C0 06            [24] 8404 	push	ar6
      005A74 C0 05            [24] 8405 	push	ar5
      005A76 C0 04            [24] 8406 	push	ar4
      005A78 C0 05            [24] 8407 	push	ar5
      005A7A C0 06            [24] 8408 	push	ar6
      005A7C C0 07            [24] 8409 	push	ar7
      005A7E C0 04            [24] 8410 	push	ar4
      005A80 74 54            [12] 8411 	mov	a,#___str_1
      005A82 C0 E0            [24] 8412 	push	acc
      005A84 74 89            [12] 8413 	mov	a,#(___str_1 >> 8)
      005A86 C0 E0            [24] 8414 	push	acc
      005A88 74 80            [12] 8415 	mov	a,#0x80
      005A8A C0 E0            [24] 8416 	push	acc
      005A8C 12 70 93         [24] 8417 	lcall	_printf
      005A8F E5 81            [12] 8418 	mov	a,sp
      005A91 24 F9            [12] 8419 	add	a,#0xf9
      005A93 F5 81            [12] 8420 	mov	sp,a
      005A95 D0 04            [24] 8421 	pop	ar4
      005A97 D0 05            [24] 8422 	pop	ar5
      005A99 D0 06            [24] 8423 	pop	ar6
      005A9B D0 07            [24] 8424 	pop	ar7
                                   8425 ;	calc.c:68: printf("%011lo\t", d);
      005A9D C0 07            [24] 8426 	push	ar7
      005A9F C0 06            [24] 8427 	push	ar6
      005AA1 C0 05            [24] 8428 	push	ar5
      005AA3 C0 04            [24] 8429 	push	ar4
      005AA5 C0 05            [24] 8430 	push	ar5
      005AA7 C0 06            [24] 8431 	push	ar6
      005AA9 C0 07            [24] 8432 	push	ar7
      005AAB C0 04            [24] 8433 	push	ar4
      005AAD 74 5C            [12] 8434 	mov	a,#___str_2
      005AAF C0 E0            [24] 8435 	push	acc
      005AB1 74 89            [12] 8436 	mov	a,#(___str_2 >> 8)
      005AB3 C0 E0            [24] 8437 	push	acc
      005AB5 74 80            [12] 8438 	mov	a,#0x80
      005AB7 C0 E0            [24] 8439 	push	acc
      005AB9 12 70 93         [24] 8440 	lcall	_printf
      005ABC E5 81            [12] 8441 	mov	a,sp
      005ABE 24 F9            [12] 8442 	add	a,#0xf9
      005AC0 F5 81            [12] 8443 	mov	sp,a
      005AC2 D0 04            [24] 8444 	pop	ar4
      005AC4 D0 05            [24] 8445 	pop	ar5
      005AC6 D0 06            [24] 8446 	pop	ar6
      005AC8 D0 07            [24] 8447 	pop	ar7
                                   8448 ;	calc.c:69: printbin(d);
      005ACA E5 08            [12] 8449 	mov	a,_bp
      005ACC 24 16            [12] 8450 	add	a,#0x16
      005ACE F8               [12] 8451 	mov	r0,a
      005ACF A6 05            [24] 8452 	mov	@r0,ar5
      005AD1 08               [12] 8453 	inc	r0
      005AD2 A6 06            [24] 8454 	mov	@r0,ar6
      005AD4 08               [12] 8455 	inc	r0
      005AD5 A6 07            [24] 8456 	mov	@r0,ar7
      005AD7 08               [12] 8457 	inc	r0
      005AD8 A6 04            [24] 8458 	mov	@r0,ar4
                                   8459 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      005ADA E5 08            [12] 8460 	mov	a,_bp
      005ADC 24 1A            [12] 8461 	add	a,#0x1a
      005ADE F8               [12] 8462 	mov	r0,a
      005ADF E4               [12] 8463 	clr	a
      005AE0 F6               [12] 8464 	mov	@r0,a
      005AE1 08               [12] 8465 	inc	r0
      005AE2 F6               [12] 8466 	mov	@r0,a
      005AE3 08               [12] 8467 	inc	r0
      005AE4 F6               [12] 8468 	mov	@r0,a
      005AE5 08               [12] 8469 	inc	r0
      005AE6 76 80            [12] 8470 	mov	@r0,#0x80
      005AE8                       8471 00141$:
                                   8472 ;	calc.c:60: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005AE8 E5 08            [12] 8473 	mov	a,_bp
      005AEA 24 16            [12] 8474 	add	a,#0x16
      005AEC F8               [12] 8475 	mov	r0,a
      005AED 86 04            [24] 8476 	mov	ar4,@r0
      005AEF 08               [12] 8477 	inc	r0
      005AF0 86 05            [24] 8478 	mov	ar5,@r0
      005AF2 08               [12] 8479 	inc	r0
      005AF3 86 06            [24] 8480 	mov	ar6,@r0
      005AF5 08               [12] 8481 	inc	r0
      005AF6 86 07            [24] 8482 	mov	ar7,@r0
      005AF8 E5 08            [12] 8483 	mov	a,_bp
      005AFA 24 1A            [12] 8484 	add	a,#0x1a
      005AFC F8               [12] 8485 	mov	r0,a
      005AFD E6               [12] 8486 	mov	a,@r0
      005AFE 52 04            [12] 8487 	anl	ar4,a
      005B00 08               [12] 8488 	inc	r0
      005B01 E6               [12] 8489 	mov	a,@r0
      005B02 52 05            [12] 8490 	anl	ar5,a
      005B04 08               [12] 8491 	inc	r0
      005B05 E6               [12] 8492 	mov	a,@r0
      005B06 52 06            [12] 8493 	anl	ar6,a
      005B08 08               [12] 8494 	inc	r0
      005B09 E6               [12] 8495 	mov	a,@r0
      005B0A 52 07            [12] 8496 	anl	ar7,a
      005B0C EC               [12] 8497 	mov	a,r4
      005B0D 4D               [12] 8498 	orl	a,r5
      005B0E 4E               [12] 8499 	orl	a,r6
      005B0F 4F               [12] 8500 	orl	a,r7
      005B10 60 06            [24] 8501 	jz	00168$
      005B12 7E 31            [12] 8502 	mov	r6,#0x31
      005B14 7F 00            [12] 8503 	mov	r7,#0x00
      005B16 80 04            [24] 8504 	sjmp	00169$
      005B18                       8505 00168$:
      005B18 7E 30            [12] 8506 	mov	r6,#0x30
      005B1A 7F 00            [12] 8507 	mov	r7,#0x00
      005B1C                       8508 00169$:
      005B1C 8E 82            [24] 8509 	mov	dpl,r6
      005B1E 8F 83            [24] 8510 	mov	dph,r7
      005B20 12 2B 70         [24] 8511 	lcall	_putchar
                                   8512 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      005B23 E5 08            [12] 8513 	mov	a,_bp
      005B25 24 1A            [12] 8514 	add	a,#0x1a
      005B27 F8               [12] 8515 	mov	r0,a
      005B28 08               [12] 8516 	inc	r0
      005B29 08               [12] 8517 	inc	r0
      005B2A 08               [12] 8518 	inc	r0
      005B2B E6               [12] 8519 	mov	a,@r0
      005B2C C3               [12] 8520 	clr	c
      005B2D 13               [12] 8521 	rrc	a
      005B2E F6               [12] 8522 	mov	@r0,a
      005B2F 18               [12] 8523 	dec	r0
      005B30 E6               [12] 8524 	mov	a,@r0
      005B31 13               [12] 8525 	rrc	a
      005B32 F6               [12] 8526 	mov	@r0,a
      005B33 18               [12] 8527 	dec	r0
      005B34 E6               [12] 8528 	mov	a,@r0
      005B35 13               [12] 8529 	rrc	a
      005B36 F6               [12] 8530 	mov	@r0,a
      005B37 18               [12] 8531 	dec	r0
      005B38 E6               [12] 8532 	mov	a,@r0
      005B39 13               [12] 8533 	rrc	a
      005B3A F6               [12] 8534 	mov	@r0,a
      005B3B E5 08            [12] 8535 	mov	a,_bp
      005B3D 24 1A            [12] 8536 	add	a,#0x1a
      005B3F F8               [12] 8537 	mov	r0,a
      005B40 E6               [12] 8538 	mov	a,@r0
      005B41 08               [12] 8539 	inc	r0
      005B42 46               [12] 8540 	orl	a,@r0
      005B43 08               [12] 8541 	inc	r0
      005B44 46               [12] 8542 	orl	a,@r0
      005B45 08               [12] 8543 	inc	r0
      005B46 46               [12] 8544 	orl	a,@r0
      005B47 70 9F            [24] 8545 	jnz	00141$
                                   8546 ;	calc.c:405: if (ctx->acc_valid) printall(ctx->acc);
      005B49                       8547 00102$:
                                   8548 ;	calc.c:407: n = stack_peek2(ctx->ps, vals);
      005B49 E5 08            [12] 8549 	mov	a,_bp
      005B4B 24 0B            [12] 8550 	add	a,#0x0b
      005B4D F9               [12] 8551 	mov	r1,a
      005B4E FD               [12] 8552 	mov	r5,a
      005B4F 7E 00            [12] 8553 	mov	r6,#0x00
      005B51 7F 40            [12] 8554 	mov	r7,#0x40
      005B53 E5 08            [12] 8555 	mov	a,_bp
      005B55 24 04            [12] 8556 	add	a,#0x04
      005B57 F8               [12] 8557 	mov	r0,a
      005B58 86 82            [24] 8558 	mov	dpl,@r0
      005B5A 08               [12] 8559 	inc	r0
      005B5B 86 83            [24] 8560 	mov	dph,@r0
      005B5D 08               [12] 8561 	inc	r0
      005B5E 86 F0            [24] 8562 	mov	b,@r0
      005B60 12 70 CC         [24] 8563 	lcall	__gptrget
      005B63 FA               [12] 8564 	mov	r2,a
      005B64 A3               [24] 8565 	inc	dptr
      005B65 12 70 CC         [24] 8566 	lcall	__gptrget
      005B68 FB               [12] 8567 	mov	r3,a
      005B69 A3               [24] 8568 	inc	dptr
      005B6A 12 70 CC         [24] 8569 	lcall	__gptrget
      005B6D FC               [12] 8570 	mov	r4,a
      005B6E C0 01            [24] 8571 	push	ar1
      005B70 C0 05            [24] 8572 	push	ar5
      005B72 C0 06            [24] 8573 	push	ar6
      005B74 C0 07            [24] 8574 	push	ar7
      005B76 8A 82            [24] 8575 	mov	dpl,r2
      005B78 8B 83            [24] 8576 	mov	dph,r3
      005B7A 8C F0            [24] 8577 	mov	b,r4
      005B7C 12 28 FF         [24] 8578 	lcall	_stack_peek2
      005B7F AE 82            [24] 8579 	mov	r6,dpl
      005B81 AF 83            [24] 8580 	mov	r7,dph
      005B83 15 81            [12] 8581 	dec	sp
      005B85 15 81            [12] 8582 	dec	sp
      005B87 15 81            [12] 8583 	dec	sp
      005B89 D0 01            [24] 8584 	pop	ar1
                                   8585 ;	calc.c:408: printstr("\r\nPSTOP1\t");
      005B8B 7B 37            [12] 8586 	mov	r3,#___str_17
      005B8D 7C 8A            [12] 8587 	mov	r4,#(___str_17 >> 8)
      005B8F 7D 80            [12] 8588 	mov	r5,#0x80
                                   8589 ;	calc.c:53: return;
      005B91                       8590 00144$:
                                   8591 ;	calc.c:51: for (; *s; s++) putchar(*s);
      005B91 8B 82            [24] 8592 	mov	dpl,r3
      005B93 8C 83            [24] 8593 	mov	dph,r4
      005B95 8D F0            [24] 8594 	mov	b,r5
      005B97 12 70 CC         [24] 8595 	lcall	__gptrget
      005B9A FA               [12] 8596 	mov	r2,a
      005B9B 60 18            [24] 8597 	jz	00117$
      005B9D C0 06            [24] 8598 	push	ar6
      005B9F C0 07            [24] 8599 	push	ar7
      005BA1 7F 00            [12] 8600 	mov	r7,#0x00
      005BA3 8A 82            [24] 8601 	mov	dpl,r2
      005BA5 8F 83            [24] 8602 	mov	dph,r7
      005BA7 12 2B 70         [24] 8603 	lcall	_putchar
      005BAA 0B               [12] 8604 	inc	r3
      005BAB BB 00 01         [24] 8605 	cjne	r3,#0x00,00325$
      005BAE 0C               [12] 8606 	inc	r4
      005BAF                       8607 00325$:
      005BAF D0 07            [24] 8608 	pop	ar7
      005BB1 D0 06            [24] 8609 	pop	ar6
                                   8610 ;	calc.c:408: printstr("\r\nPSTOP1\t");
      005BB3 80 DC            [24] 8611 	sjmp	00144$
      005BB5                       8612 00117$:
                                   8613 ;	calc.c:409: if (n > 0) printall(vals[1]);
      005BB5 C3               [12] 8614 	clr	c
      005BB6 E4               [12] 8615 	clr	a
      005BB7 9E               [12] 8616 	subb	a,r6
      005BB8 74 80            [12] 8617 	mov	a,#(0x00 ^ 0x80)
      005BBA 8F F0            [24] 8618 	mov	b,r7
      005BBC 63 F0 80         [24] 8619 	xrl	b,#0x80
      005BBF 95 F0            [12] 8620 	subb	a,b
      005BC1 40 03            [24] 8621 	jc	00326$
      005BC3 02 5C F7         [24] 8622 	ljmp	00104$
      005BC6                       8623 00326$:
      005BC6 74 04            [12] 8624 	mov	a,#0x04
      005BC8 29               [12] 8625 	add	a,r1
      005BC9 F8               [12] 8626 	mov	r0,a
      005BCA 86 02            [24] 8627 	mov	ar2,@r0
      005BCC 08               [12] 8628 	inc	r0
      005BCD 86 03            [24] 8629 	mov	ar3,@r0
      005BCF 08               [12] 8630 	inc	r0
      005BD0 86 04            [24] 8631 	mov	ar4,@r0
      005BD2 08               [12] 8632 	inc	r0
      005BD3 86 05            [24] 8633 	mov	ar5,@r0
                                   8634 ;	calc.c:66: printf("%08lx\t", d);
      005BD5 C0 07            [24] 8635 	push	ar7
      005BD7 C0 06            [24] 8636 	push	ar6
      005BD9 C0 05            [24] 8637 	push	ar5
      005BDB C0 04            [24] 8638 	push	ar4
      005BDD C0 03            [24] 8639 	push	ar3
      005BDF C0 02            [24] 8640 	push	ar2
      005BE1 C0 01            [24] 8641 	push	ar1
      005BE3 C0 02            [24] 8642 	push	ar2
      005BE5 C0 03            [24] 8643 	push	ar3
      005BE7 C0 04            [24] 8644 	push	ar4
      005BE9 C0 05            [24] 8645 	push	ar5
      005BEB 74 4D            [12] 8646 	mov	a,#___str_0
      005BED C0 E0            [24] 8647 	push	acc
      005BEF 74 89            [12] 8648 	mov	a,#(___str_0 >> 8)
      005BF1 C0 E0            [24] 8649 	push	acc
      005BF3 74 80            [12] 8650 	mov	a,#0x80
      005BF5 C0 E0            [24] 8651 	push	acc
      005BF7 12 70 93         [24] 8652 	lcall	_printf
      005BFA E5 81            [12] 8653 	mov	a,sp
      005BFC 24 F9            [12] 8654 	add	a,#0xf9
      005BFE F5 81            [12] 8655 	mov	sp,a
      005C00 D0 01            [24] 8656 	pop	ar1
      005C02 D0 02            [24] 8657 	pop	ar2
      005C04 D0 03            [24] 8658 	pop	ar3
      005C06 D0 04            [24] 8659 	pop	ar4
      005C08 D0 05            [24] 8660 	pop	ar5
                                   8661 ;	calc.c:67: printf("% 11ld\t", d);
      005C0A C0 05            [24] 8662 	push	ar5
      005C0C C0 04            [24] 8663 	push	ar4
      005C0E C0 03            [24] 8664 	push	ar3
      005C10 C0 02            [24] 8665 	push	ar2
      005C12 C0 01            [24] 8666 	push	ar1
      005C14 C0 02            [24] 8667 	push	ar2
      005C16 C0 03            [24] 8668 	push	ar3
      005C18 C0 04            [24] 8669 	push	ar4
      005C1A C0 05            [24] 8670 	push	ar5
      005C1C 74 54            [12] 8671 	mov	a,#___str_1
      005C1E C0 E0            [24] 8672 	push	acc
      005C20 74 89            [12] 8673 	mov	a,#(___str_1 >> 8)
      005C22 C0 E0            [24] 8674 	push	acc
      005C24 74 80            [12] 8675 	mov	a,#0x80
      005C26 C0 E0            [24] 8676 	push	acc
      005C28 12 70 93         [24] 8677 	lcall	_printf
      005C2B E5 81            [12] 8678 	mov	a,sp
      005C2D 24 F9            [12] 8679 	add	a,#0xf9
      005C2F F5 81            [12] 8680 	mov	sp,a
      005C31 D0 01            [24] 8681 	pop	ar1
      005C33 D0 02            [24] 8682 	pop	ar2
      005C35 D0 03            [24] 8683 	pop	ar3
      005C37 D0 04            [24] 8684 	pop	ar4
      005C39 D0 05            [24] 8685 	pop	ar5
                                   8686 ;	calc.c:68: printf("%011lo\t", d);
      005C3B C0 05            [24] 8687 	push	ar5
      005C3D C0 04            [24] 8688 	push	ar4
      005C3F C0 03            [24] 8689 	push	ar3
      005C41 C0 02            [24] 8690 	push	ar2
      005C43 C0 01            [24] 8691 	push	ar1
      005C45 C0 02            [24] 8692 	push	ar2
      005C47 C0 03            [24] 8693 	push	ar3
      005C49 C0 04            [24] 8694 	push	ar4
      005C4B C0 05            [24] 8695 	push	ar5
      005C4D 74 5C            [12] 8696 	mov	a,#___str_2
      005C4F C0 E0            [24] 8697 	push	acc
      005C51 74 89            [12] 8698 	mov	a,#(___str_2 >> 8)
      005C53 C0 E0            [24] 8699 	push	acc
      005C55 74 80            [12] 8700 	mov	a,#0x80
      005C57 C0 E0            [24] 8701 	push	acc
      005C59 12 70 93         [24] 8702 	lcall	_printf
      005C5C E5 81            [12] 8703 	mov	a,sp
      005C5E 24 F9            [12] 8704 	add	a,#0xf9
      005C60 F5 81            [12] 8705 	mov	sp,a
      005C62 D0 01            [24] 8706 	pop	ar1
      005C64 D0 02            [24] 8707 	pop	ar2
      005C66 D0 03            [24] 8708 	pop	ar3
      005C68 D0 04            [24] 8709 	pop	ar4
      005C6A D0 05            [24] 8710 	pop	ar5
      005C6C D0 06            [24] 8711 	pop	ar6
      005C6E D0 07            [24] 8712 	pop	ar7
                                   8713 ;	calc.c:69: printbin(d);
      005C70 E5 08            [12] 8714 	mov	a,_bp
      005C72 24 16            [12] 8715 	add	a,#0x16
      005C74 F8               [12] 8716 	mov	r0,a
      005C75 A6 02            [24] 8717 	mov	@r0,ar2
      005C77 08               [12] 8718 	inc	r0
      005C78 A6 03            [24] 8719 	mov	@r0,ar3
      005C7A 08               [12] 8720 	inc	r0
      005C7B A6 04            [24] 8721 	mov	@r0,ar4
      005C7D 08               [12] 8722 	inc	r0
      005C7E A6 05            [24] 8723 	mov	@r0,ar5
                                   8724 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      005C80 E5 08            [12] 8725 	mov	a,_bp
      005C82 24 1A            [12] 8726 	add	a,#0x1a
      005C84 F8               [12] 8727 	mov	r0,a
      005C85 E4               [12] 8728 	clr	a
      005C86 F6               [12] 8729 	mov	@r0,a
      005C87 08               [12] 8730 	inc	r0
      005C88 F6               [12] 8731 	mov	@r0,a
      005C89 08               [12] 8732 	inc	r0
      005C8A F6               [12] 8733 	mov	@r0,a
      005C8B 08               [12] 8734 	inc	r0
      005C8C 76 80            [12] 8735 	mov	@r0,#0x80
      005C8E                       8736 00146$:
                                   8737 ;	calc.c:60: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005C8E C0 06            [24] 8738 	push	ar6
      005C90 C0 07            [24] 8739 	push	ar7
      005C92 E5 08            [12] 8740 	mov	a,_bp
      005C94 24 16            [12] 8741 	add	a,#0x16
      005C96 F8               [12] 8742 	mov	r0,a
      005C97 86 04            [24] 8743 	mov	ar4,@r0
      005C99 08               [12] 8744 	inc	r0
      005C9A 86 05            [24] 8745 	mov	ar5,@r0
      005C9C 08               [12] 8746 	inc	r0
      005C9D 86 06            [24] 8747 	mov	ar6,@r0
      005C9F 08               [12] 8748 	inc	r0
      005CA0 86 07            [24] 8749 	mov	ar7,@r0
      005CA2 E5 08            [12] 8750 	mov	a,_bp
      005CA4 24 1A            [12] 8751 	add	a,#0x1a
      005CA6 F8               [12] 8752 	mov	r0,a
      005CA7 E6               [12] 8753 	mov	a,@r0
      005CA8 52 04            [12] 8754 	anl	ar4,a
      005CAA 08               [12] 8755 	inc	r0
      005CAB E6               [12] 8756 	mov	a,@r0
      005CAC 52 05            [12] 8757 	anl	ar5,a
      005CAE 08               [12] 8758 	inc	r0
      005CAF E6               [12] 8759 	mov	a,@r0
      005CB0 52 06            [12] 8760 	anl	ar6,a
      005CB2 08               [12] 8761 	inc	r0
      005CB3 E6               [12] 8762 	mov	a,@r0
      005CB4 52 07            [12] 8763 	anl	ar7,a
      005CB6 EC               [12] 8764 	mov	a,r4
      005CB7 4D               [12] 8765 	orl	a,r5
      005CB8 4E               [12] 8766 	orl	a,r6
      005CB9 4F               [12] 8767 	orl	a,r7
      005CBA D0 07            [24] 8768 	pop	ar7
      005CBC D0 06            [24] 8769 	pop	ar6
      005CBE 60 06            [24] 8770 	jz	00170$
      005CC0 7C 31            [12] 8771 	mov	r4,#0x31
      005CC2 7D 00            [12] 8772 	mov	r5,#0x00
      005CC4 80 04            [24] 8773 	sjmp	00171$
      005CC6                       8774 00170$:
      005CC6 7C 30            [12] 8775 	mov	r4,#0x30
      005CC8 7D 00            [12] 8776 	mov	r5,#0x00
      005CCA                       8777 00171$:
      005CCA 8C 82            [24] 8778 	mov	dpl,r4
      005CCC 8D 83            [24] 8779 	mov	dph,r5
      005CCE 12 2B 70         [24] 8780 	lcall	_putchar
                                   8781 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      005CD1 E5 08            [12] 8782 	mov	a,_bp
      005CD3 24 1A            [12] 8783 	add	a,#0x1a
      005CD5 F8               [12] 8784 	mov	r0,a
      005CD6 08               [12] 8785 	inc	r0
      005CD7 08               [12] 8786 	inc	r0
      005CD8 08               [12] 8787 	inc	r0
      005CD9 E6               [12] 8788 	mov	a,@r0
      005CDA C3               [12] 8789 	clr	c
      005CDB 13               [12] 8790 	rrc	a
      005CDC F6               [12] 8791 	mov	@r0,a
      005CDD 18               [12] 8792 	dec	r0
      005CDE E6               [12] 8793 	mov	a,@r0
      005CDF 13               [12] 8794 	rrc	a
      005CE0 F6               [12] 8795 	mov	@r0,a
      005CE1 18               [12] 8796 	dec	r0
      005CE2 E6               [12] 8797 	mov	a,@r0
      005CE3 13               [12] 8798 	rrc	a
      005CE4 F6               [12] 8799 	mov	@r0,a
      005CE5 18               [12] 8800 	dec	r0
      005CE6 E6               [12] 8801 	mov	a,@r0
      005CE7 13               [12] 8802 	rrc	a
      005CE8 F6               [12] 8803 	mov	@r0,a
      005CE9 E5 08            [12] 8804 	mov	a,_bp
      005CEB 24 1A            [12] 8805 	add	a,#0x1a
      005CED F8               [12] 8806 	mov	r0,a
      005CEE E6               [12] 8807 	mov	a,@r0
      005CEF 08               [12] 8808 	inc	r0
      005CF0 46               [12] 8809 	orl	a,@r0
      005CF1 08               [12] 8810 	inc	r0
      005CF2 46               [12] 8811 	orl	a,@r0
      005CF3 08               [12] 8812 	inc	r0
      005CF4 46               [12] 8813 	orl	a,@r0
      005CF5 70 97            [24] 8814 	jnz	00146$
                                   8815 ;	calc.c:409: if (n > 0) printall(vals[1]);
      005CF7                       8816 00104$:
                                   8817 ;	calc.c:410: printstr("\r\nPSTOP0\t");
      005CF7 7B 41            [12] 8818 	mov	r3,#___str_18
      005CF9 7C 8A            [12] 8819 	mov	r4,#(___str_18 >> 8)
      005CFB 7D 80            [12] 8820 	mov	r5,#0x80
                                   8821 ;	calc.c:53: return;
      005CFD                       8822 00149$:
                                   8823 ;	calc.c:51: for (; *s; s++) putchar(*s);
      005CFD 8B 82            [24] 8824 	mov	dpl,r3
      005CFF 8C 83            [24] 8825 	mov	dph,r4
      005D01 8D F0            [24] 8826 	mov	b,r5
      005D03 12 70 CC         [24] 8827 	lcall	__gptrget
      005D06 FA               [12] 8828 	mov	r2,a
      005D07 60 18            [24] 8829 	jz	00122$
      005D09 C0 06            [24] 8830 	push	ar6
      005D0B C0 07            [24] 8831 	push	ar7
      005D0D 7F 00            [12] 8832 	mov	r7,#0x00
      005D0F 8A 82            [24] 8833 	mov	dpl,r2
      005D11 8F 83            [24] 8834 	mov	dph,r7
      005D13 12 2B 70         [24] 8835 	lcall	_putchar
      005D16 0B               [12] 8836 	inc	r3
      005D17 BB 00 01         [24] 8837 	cjne	r3,#0x00,00330$
      005D1A 0C               [12] 8838 	inc	r4
      005D1B                       8839 00330$:
      005D1B D0 07            [24] 8840 	pop	ar7
      005D1D D0 06            [24] 8841 	pop	ar6
                                   8842 ;	calc.c:410: printstr("\r\nPSTOP0\t");
      005D1F 80 DC            [24] 8843 	sjmp	00149$
      005D21                       8844 00122$:
                                   8845 ;	calc.c:411: if (n > 1) printall(vals[0]);
      005D21 C3               [12] 8846 	clr	c
      005D22 74 01            [12] 8847 	mov	a,#0x01
      005D24 9E               [12] 8848 	subb	a,r6
      005D25 74 80            [12] 8849 	mov	a,#(0x00 ^ 0x80)
      005D27 8F F0            [24] 8850 	mov	b,r7
      005D29 63 F0 80         [24] 8851 	xrl	b,#0x80
      005D2C 95 F0            [12] 8852 	subb	a,b
      005D2E 40 03            [24] 8853 	jc	00331$
      005D30 02 5E 57         [24] 8854 	ljmp	00106$
      005D33                       8855 00331$:
      005D33 87 04            [24] 8856 	mov	ar4,@r1
      005D35 09               [12] 8857 	inc	r1
      005D36 87 05            [24] 8858 	mov	ar5,@r1
      005D38 09               [12] 8859 	inc	r1
      005D39 87 06            [24] 8860 	mov	ar6,@r1
      005D3B 09               [12] 8861 	inc	r1
      005D3C 87 07            [24] 8862 	mov	ar7,@r1
      005D3E 19               [12] 8863 	dec	r1
      005D3F 19               [12] 8864 	dec	r1
      005D40 19               [12] 8865 	dec	r1
                                   8866 ;	calc.c:66: printf("%08lx\t", d);
      005D41 C0 07            [24] 8867 	push	ar7
      005D43 C0 06            [24] 8868 	push	ar6
      005D45 C0 05            [24] 8869 	push	ar5
      005D47 C0 04            [24] 8870 	push	ar4
      005D49 C0 01            [24] 8871 	push	ar1
      005D4B C0 04            [24] 8872 	push	ar4
      005D4D C0 05            [24] 8873 	push	ar5
      005D4F C0 06            [24] 8874 	push	ar6
      005D51 C0 07            [24] 8875 	push	ar7
      005D53 74 4D            [12] 8876 	mov	a,#___str_0
      005D55 C0 E0            [24] 8877 	push	acc
      005D57 74 89            [12] 8878 	mov	a,#(___str_0 >> 8)
      005D59 C0 E0            [24] 8879 	push	acc
      005D5B 74 80            [12] 8880 	mov	a,#0x80
      005D5D C0 E0            [24] 8881 	push	acc
      005D5F 12 70 93         [24] 8882 	lcall	_printf
      005D62 E5 81            [12] 8883 	mov	a,sp
      005D64 24 F9            [12] 8884 	add	a,#0xf9
      005D66 F5 81            [12] 8885 	mov	sp,a
      005D68 D0 01            [24] 8886 	pop	ar1
      005D6A D0 04            [24] 8887 	pop	ar4
      005D6C D0 05            [24] 8888 	pop	ar5
      005D6E D0 06            [24] 8889 	pop	ar6
      005D70 D0 07            [24] 8890 	pop	ar7
                                   8891 ;	calc.c:67: printf("% 11ld\t", d);
      005D72 C0 07            [24] 8892 	push	ar7
      005D74 C0 06            [24] 8893 	push	ar6
      005D76 C0 05            [24] 8894 	push	ar5
      005D78 C0 04            [24] 8895 	push	ar4
      005D7A C0 01            [24] 8896 	push	ar1
      005D7C C0 04            [24] 8897 	push	ar4
      005D7E C0 05            [24] 8898 	push	ar5
      005D80 C0 06            [24] 8899 	push	ar6
      005D82 C0 07            [24] 8900 	push	ar7
      005D84 74 54            [12] 8901 	mov	a,#___str_1
      005D86 C0 E0            [24] 8902 	push	acc
      005D88 74 89            [12] 8903 	mov	a,#(___str_1 >> 8)
      005D8A C0 E0            [24] 8904 	push	acc
      005D8C 74 80            [12] 8905 	mov	a,#0x80
      005D8E C0 E0            [24] 8906 	push	acc
      005D90 12 70 93         [24] 8907 	lcall	_printf
      005D93 E5 81            [12] 8908 	mov	a,sp
      005D95 24 F9            [12] 8909 	add	a,#0xf9
      005D97 F5 81            [12] 8910 	mov	sp,a
      005D99 D0 01            [24] 8911 	pop	ar1
      005D9B D0 04            [24] 8912 	pop	ar4
      005D9D D0 05            [24] 8913 	pop	ar5
      005D9F D0 06            [24] 8914 	pop	ar6
      005DA1 D0 07            [24] 8915 	pop	ar7
                                   8916 ;	calc.c:68: printf("%011lo\t", d);
      005DA3 C0 07            [24] 8917 	push	ar7
      005DA5 C0 06            [24] 8918 	push	ar6
      005DA7 C0 05            [24] 8919 	push	ar5
      005DA9 C0 04            [24] 8920 	push	ar4
      005DAB C0 01            [24] 8921 	push	ar1
      005DAD C0 04            [24] 8922 	push	ar4
      005DAF C0 05            [24] 8923 	push	ar5
      005DB1 C0 06            [24] 8924 	push	ar6
      005DB3 C0 07            [24] 8925 	push	ar7
      005DB5 74 5C            [12] 8926 	mov	a,#___str_2
      005DB7 C0 E0            [24] 8927 	push	acc
      005DB9 74 89            [12] 8928 	mov	a,#(___str_2 >> 8)
      005DBB C0 E0            [24] 8929 	push	acc
      005DBD 74 80            [12] 8930 	mov	a,#0x80
      005DBF C0 E0            [24] 8931 	push	acc
      005DC1 12 70 93         [24] 8932 	lcall	_printf
      005DC4 E5 81            [12] 8933 	mov	a,sp
      005DC6 24 F9            [12] 8934 	add	a,#0xf9
      005DC8 F5 81            [12] 8935 	mov	sp,a
      005DCA D0 01            [24] 8936 	pop	ar1
      005DCC D0 04            [24] 8937 	pop	ar4
      005DCE D0 05            [24] 8938 	pop	ar5
      005DD0 D0 06            [24] 8939 	pop	ar6
      005DD2 D0 07            [24] 8940 	pop	ar7
                                   8941 ;	calc.c:69: printbin(d);
      005DD4 E5 08            [12] 8942 	mov	a,_bp
      005DD6 24 16            [12] 8943 	add	a,#0x16
      005DD8 F8               [12] 8944 	mov	r0,a
      005DD9 A6 04            [24] 8945 	mov	@r0,ar4
      005DDB 08               [12] 8946 	inc	r0
      005DDC A6 05            [24] 8947 	mov	@r0,ar5
      005DDE 08               [12] 8948 	inc	r0
      005DDF A6 06            [24] 8949 	mov	@r0,ar6
      005DE1 08               [12] 8950 	inc	r0
      005DE2 A6 07            [24] 8951 	mov	@r0,ar7
                                   8952 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      005DE4 E5 08            [12] 8953 	mov	a,_bp
      005DE6 24 1A            [12] 8954 	add	a,#0x1a
      005DE8 F8               [12] 8955 	mov	r0,a
      005DE9 E4               [12] 8956 	clr	a
      005DEA F6               [12] 8957 	mov	@r0,a
      005DEB 08               [12] 8958 	inc	r0
      005DEC F6               [12] 8959 	mov	@r0,a
      005DED 08               [12] 8960 	inc	r0
      005DEE F6               [12] 8961 	mov	@r0,a
      005DEF 08               [12] 8962 	inc	r0
      005DF0 76 80            [12] 8963 	mov	@r0,#0x80
      005DF2                       8964 00151$:
                                   8965 ;	calc.c:60: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005DF2 C0 01            [24] 8966 	push	ar1
      005DF4 E5 08            [12] 8967 	mov	a,_bp
      005DF6 24 16            [12] 8968 	add	a,#0x16
      005DF8 F8               [12] 8969 	mov	r0,a
      005DF9 86 04            [24] 8970 	mov	ar4,@r0
      005DFB 08               [12] 8971 	inc	r0
      005DFC 86 05            [24] 8972 	mov	ar5,@r0
      005DFE 08               [12] 8973 	inc	r0
      005DFF 86 06            [24] 8974 	mov	ar6,@r0
      005E01 08               [12] 8975 	inc	r0
      005E02 86 07            [24] 8976 	mov	ar7,@r0
      005E04 E5 08            [12] 8977 	mov	a,_bp
      005E06 24 1A            [12] 8978 	add	a,#0x1a
      005E08 F8               [12] 8979 	mov	r0,a
      005E09 E6               [12] 8980 	mov	a,@r0
      005E0A 52 04            [12] 8981 	anl	ar4,a
      005E0C 08               [12] 8982 	inc	r0
      005E0D E6               [12] 8983 	mov	a,@r0
      005E0E 52 05            [12] 8984 	anl	ar5,a
      005E10 08               [12] 8985 	inc	r0
      005E11 E6               [12] 8986 	mov	a,@r0
      005E12 52 06            [12] 8987 	anl	ar6,a
      005E14 08               [12] 8988 	inc	r0
      005E15 E6               [12] 8989 	mov	a,@r0
      005E16 52 07            [12] 8990 	anl	ar7,a
      005E18 D0 01            [24] 8991 	pop	ar1
      005E1A EC               [12] 8992 	mov	a,r4
      005E1B 4D               [12] 8993 	orl	a,r5
      005E1C 4E               [12] 8994 	orl	a,r6
      005E1D 4F               [12] 8995 	orl	a,r7
      005E1E 60 06            [24] 8996 	jz	00172$
      005E20 7E 31            [12] 8997 	mov	r6,#0x31
      005E22 7F 00            [12] 8998 	mov	r7,#0x00
      005E24 80 04            [24] 8999 	sjmp	00173$
      005E26                       9000 00172$:
      005E26 7E 30            [12] 9001 	mov	r6,#0x30
      005E28 7F 00            [12] 9002 	mov	r7,#0x00
      005E2A                       9003 00173$:
      005E2A 8E 82            [24] 9004 	mov	dpl,r6
      005E2C 8F 83            [24] 9005 	mov	dph,r7
      005E2E 12 2B 70         [24] 9006 	lcall	_putchar
                                   9007 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      005E31 E5 08            [12] 9008 	mov	a,_bp
      005E33 24 1A            [12] 9009 	add	a,#0x1a
      005E35 F8               [12] 9010 	mov	r0,a
      005E36 08               [12] 9011 	inc	r0
      005E37 08               [12] 9012 	inc	r0
      005E38 08               [12] 9013 	inc	r0
      005E39 E6               [12] 9014 	mov	a,@r0
      005E3A C3               [12] 9015 	clr	c
      005E3B 13               [12] 9016 	rrc	a
      005E3C F6               [12] 9017 	mov	@r0,a
      005E3D 18               [12] 9018 	dec	r0
      005E3E E6               [12] 9019 	mov	a,@r0
      005E3F 13               [12] 9020 	rrc	a
      005E40 F6               [12] 9021 	mov	@r0,a
      005E41 18               [12] 9022 	dec	r0
      005E42 E6               [12] 9023 	mov	a,@r0
      005E43 13               [12] 9024 	rrc	a
      005E44 F6               [12] 9025 	mov	@r0,a
      005E45 18               [12] 9026 	dec	r0
      005E46 E6               [12] 9027 	mov	a,@r0
      005E47 13               [12] 9028 	rrc	a
      005E48 F6               [12] 9029 	mov	@r0,a
      005E49 E5 08            [12] 9030 	mov	a,_bp
      005E4B 24 1A            [12] 9031 	add	a,#0x1a
      005E4D F8               [12] 9032 	mov	r0,a
      005E4E E6               [12] 9033 	mov	a,@r0
      005E4F 08               [12] 9034 	inc	r0
      005E50 46               [12] 9035 	orl	a,@r0
      005E51 08               [12] 9036 	inc	r0
      005E52 46               [12] 9037 	orl	a,@r0
      005E53 08               [12] 9038 	inc	r0
      005E54 46               [12] 9039 	orl	a,@r0
      005E55 70 9B            [24] 9040 	jnz	00151$
                                   9041 ;	calc.c:411: if (n > 1) printall(vals[0]);
      005E57                       9042 00106$:
                                   9043 ;	calc.c:413: n = stack_peek2(ctx->ss, vals);
      005E57 89 07            [24] 9044 	mov	ar7,r1
      005E59 7E 00            [12] 9045 	mov	r6,#0x00
      005E5B 7D 40            [12] 9046 	mov	r5,#0x40
      005E5D A8 08            [24] 9047 	mov	r0,_bp
      005E5F 08               [12] 9048 	inc	r0
      005E60 86 82            [24] 9049 	mov	dpl,@r0
      005E62 08               [12] 9050 	inc	r0
      005E63 86 83            [24] 9051 	mov	dph,@r0
      005E65 08               [12] 9052 	inc	r0
      005E66 86 F0            [24] 9053 	mov	b,@r0
      005E68 12 70 CC         [24] 9054 	lcall	__gptrget
      005E6B FA               [12] 9055 	mov	r2,a
      005E6C A3               [24] 9056 	inc	dptr
      005E6D 12 70 CC         [24] 9057 	lcall	__gptrget
      005E70 FB               [12] 9058 	mov	r3,a
      005E71 A3               [24] 9059 	inc	dptr
      005E72 12 70 CC         [24] 9060 	lcall	__gptrget
      005E75 FC               [12] 9061 	mov	r4,a
      005E76 C0 01            [24] 9062 	push	ar1
      005E78 C0 07            [24] 9063 	push	ar7
      005E7A C0 06            [24] 9064 	push	ar6
      005E7C C0 05            [24] 9065 	push	ar5
      005E7E 8A 82            [24] 9066 	mov	dpl,r2
      005E80 8B 83            [24] 9067 	mov	dph,r3
      005E82 8C F0            [24] 9068 	mov	b,r4
      005E84 12 28 FF         [24] 9069 	lcall	_stack_peek2
      005E87 AE 82            [24] 9070 	mov	r6,dpl
      005E89 AF 83            [24] 9071 	mov	r7,dph
      005E8B 15 81            [12] 9072 	dec	sp
      005E8D 15 81            [12] 9073 	dec	sp
      005E8F 15 81            [12] 9074 	dec	sp
      005E91 D0 01            [24] 9075 	pop	ar1
      005E93 E5 08            [12] 9076 	mov	a,_bp
      005E95 24 09            [12] 9077 	add	a,#0x09
      005E97 F8               [12] 9078 	mov	r0,a
      005E98 A6 06            [24] 9079 	mov	@r0,ar6
      005E9A 08               [12] 9080 	inc	r0
      005E9B A6 07            [24] 9081 	mov	@r0,ar7
                                   9082 ;	calc.c:414: printstr("\r\nSSTOP1\t");
      005E9D 7B 4B            [12] 9083 	mov	r3,#___str_19
      005E9F 7C 8A            [12] 9084 	mov	r4,#(___str_19 >> 8)
      005EA1 7D 80            [12] 9085 	mov	r5,#0x80
                                   9086 ;	calc.c:53: return;
      005EA3                       9087 00154$:
                                   9088 ;	calc.c:51: for (; *s; s++) putchar(*s);
      005EA3 8B 82            [24] 9089 	mov	dpl,r3
      005EA5 8C 83            [24] 9090 	mov	dph,r4
      005EA7 8D F0            [24] 9091 	mov	b,r5
      005EA9 12 70 CC         [24] 9092 	lcall	__gptrget
      005EAC FA               [12] 9093 	mov	r2,a
      005EAD 60 10            [24] 9094 	jz	00127$
      005EAF 7F 00            [12] 9095 	mov	r7,#0x00
      005EB1 8A 82            [24] 9096 	mov	dpl,r2
      005EB3 8F 83            [24] 9097 	mov	dph,r7
      005EB5 12 2B 70         [24] 9098 	lcall	_putchar
      005EB8 0B               [12] 9099 	inc	r3
                                   9100 ;	calc.c:414: printstr("\r\nSSTOP1\t");
      005EB9 BB 00 E7         [24] 9101 	cjne	r3,#0x00,00154$
      005EBC 0C               [12] 9102 	inc	r4
      005EBD 80 E4            [24] 9103 	sjmp	00154$
      005EBF                       9104 00127$:
                                   9105 ;	calc.c:415: if (n > 0) printall(vals[1]);
      005EBF E5 08            [12] 9106 	mov	a,_bp
      005EC1 24 09            [12] 9107 	add	a,#0x09
      005EC3 F8               [12] 9108 	mov	r0,a
      005EC4 C3               [12] 9109 	clr	c
      005EC5 E4               [12] 9110 	clr	a
      005EC6 96               [12] 9111 	subb	a,@r0
      005EC7 74 80            [12] 9112 	mov	a,#(0x00 ^ 0x80)
      005EC9 08               [12] 9113 	inc	r0
      005ECA 86 F0            [24] 9114 	mov	b,@r0
      005ECC 63 F0 80         [24] 9115 	xrl	b,#0x80
      005ECF 95 F0            [12] 9116 	subb	a,b
      005ED1 40 03            [24] 9117 	jc	00336$
      005ED3 02 5F FB         [24] 9118 	ljmp	00108$
      005ED6                       9119 00336$:
      005ED6 74 04            [12] 9120 	mov	a,#0x04
      005ED8 29               [12] 9121 	add	a,r1
      005ED9 F8               [12] 9122 	mov	r0,a
      005EDA 86 02            [24] 9123 	mov	ar2,@r0
      005EDC 08               [12] 9124 	inc	r0
      005EDD 86 03            [24] 9125 	mov	ar3,@r0
      005EDF 08               [12] 9126 	inc	r0
      005EE0 86 04            [24] 9127 	mov	ar4,@r0
      005EE2 08               [12] 9128 	inc	r0
      005EE3 86 05            [24] 9129 	mov	ar5,@r0
                                   9130 ;	calc.c:66: printf("%08lx\t", d);
      005EE5 C0 05            [24] 9131 	push	ar5
      005EE7 C0 04            [24] 9132 	push	ar4
      005EE9 C0 03            [24] 9133 	push	ar3
      005EEB C0 02            [24] 9134 	push	ar2
      005EED C0 01            [24] 9135 	push	ar1
      005EEF C0 02            [24] 9136 	push	ar2
      005EF1 C0 03            [24] 9137 	push	ar3
      005EF3 C0 04            [24] 9138 	push	ar4
      005EF5 C0 05            [24] 9139 	push	ar5
      005EF7 74 4D            [12] 9140 	mov	a,#___str_0
      005EF9 C0 E0            [24] 9141 	push	acc
      005EFB 74 89            [12] 9142 	mov	a,#(___str_0 >> 8)
      005EFD C0 E0            [24] 9143 	push	acc
      005EFF 74 80            [12] 9144 	mov	a,#0x80
      005F01 C0 E0            [24] 9145 	push	acc
      005F03 12 70 93         [24] 9146 	lcall	_printf
      005F06 E5 81            [12] 9147 	mov	a,sp
      005F08 24 F9            [12] 9148 	add	a,#0xf9
      005F0A F5 81            [12] 9149 	mov	sp,a
      005F0C D0 01            [24] 9150 	pop	ar1
      005F0E D0 02            [24] 9151 	pop	ar2
      005F10 D0 03            [24] 9152 	pop	ar3
      005F12 D0 04            [24] 9153 	pop	ar4
      005F14 D0 05            [24] 9154 	pop	ar5
                                   9155 ;	calc.c:67: printf("% 11ld\t", d);
      005F16 C0 05            [24] 9156 	push	ar5
      005F18 C0 04            [24] 9157 	push	ar4
      005F1A C0 03            [24] 9158 	push	ar3
      005F1C C0 02            [24] 9159 	push	ar2
      005F1E C0 01            [24] 9160 	push	ar1
      005F20 C0 02            [24] 9161 	push	ar2
      005F22 C0 03            [24] 9162 	push	ar3
      005F24 C0 04            [24] 9163 	push	ar4
      005F26 C0 05            [24] 9164 	push	ar5
      005F28 74 54            [12] 9165 	mov	a,#___str_1
      005F2A C0 E0            [24] 9166 	push	acc
      005F2C 74 89            [12] 9167 	mov	a,#(___str_1 >> 8)
      005F2E C0 E0            [24] 9168 	push	acc
      005F30 74 80            [12] 9169 	mov	a,#0x80
      005F32 C0 E0            [24] 9170 	push	acc
      005F34 12 70 93         [24] 9171 	lcall	_printf
      005F37 E5 81            [12] 9172 	mov	a,sp
      005F39 24 F9            [12] 9173 	add	a,#0xf9
      005F3B F5 81            [12] 9174 	mov	sp,a
      005F3D D0 01            [24] 9175 	pop	ar1
      005F3F D0 02            [24] 9176 	pop	ar2
      005F41 D0 03            [24] 9177 	pop	ar3
      005F43 D0 04            [24] 9178 	pop	ar4
      005F45 D0 05            [24] 9179 	pop	ar5
                                   9180 ;	calc.c:68: printf("%011lo\t", d);
      005F47 C0 05            [24] 9181 	push	ar5
      005F49 C0 04            [24] 9182 	push	ar4
      005F4B C0 03            [24] 9183 	push	ar3
      005F4D C0 02            [24] 9184 	push	ar2
      005F4F C0 01            [24] 9185 	push	ar1
      005F51 C0 02            [24] 9186 	push	ar2
      005F53 C0 03            [24] 9187 	push	ar3
      005F55 C0 04            [24] 9188 	push	ar4
      005F57 C0 05            [24] 9189 	push	ar5
      005F59 74 5C            [12] 9190 	mov	a,#___str_2
      005F5B C0 E0            [24] 9191 	push	acc
      005F5D 74 89            [12] 9192 	mov	a,#(___str_2 >> 8)
      005F5F C0 E0            [24] 9193 	push	acc
      005F61 74 80            [12] 9194 	mov	a,#0x80
      005F63 C0 E0            [24] 9195 	push	acc
      005F65 12 70 93         [24] 9196 	lcall	_printf
      005F68 E5 81            [12] 9197 	mov	a,sp
      005F6A 24 F9            [12] 9198 	add	a,#0xf9
      005F6C F5 81            [12] 9199 	mov	sp,a
      005F6E D0 01            [24] 9200 	pop	ar1
      005F70 D0 02            [24] 9201 	pop	ar2
      005F72 D0 03            [24] 9202 	pop	ar3
      005F74 D0 04            [24] 9203 	pop	ar4
      005F76 D0 05            [24] 9204 	pop	ar5
                                   9205 ;	calc.c:69: printbin(d);
      005F78 E5 08            [12] 9206 	mov	a,_bp
      005F7A 24 16            [12] 9207 	add	a,#0x16
      005F7C F8               [12] 9208 	mov	r0,a
      005F7D A6 02            [24] 9209 	mov	@r0,ar2
      005F7F 08               [12] 9210 	inc	r0
      005F80 A6 03            [24] 9211 	mov	@r0,ar3
      005F82 08               [12] 9212 	inc	r0
      005F83 A6 04            [24] 9213 	mov	@r0,ar4
      005F85 08               [12] 9214 	inc	r0
      005F86 A6 05            [24] 9215 	mov	@r0,ar5
                                   9216 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      005F88 E5 08            [12] 9217 	mov	a,_bp
      005F8A 24 1A            [12] 9218 	add	a,#0x1a
      005F8C F8               [12] 9219 	mov	r0,a
      005F8D E4               [12] 9220 	clr	a
      005F8E F6               [12] 9221 	mov	@r0,a
      005F8F 08               [12] 9222 	inc	r0
      005F90 F6               [12] 9223 	mov	@r0,a
      005F91 08               [12] 9224 	inc	r0
      005F92 F6               [12] 9225 	mov	@r0,a
      005F93 08               [12] 9226 	inc	r0
      005F94 76 80            [12] 9227 	mov	@r0,#0x80
      005F96                       9228 00156$:
                                   9229 ;	calc.c:60: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005F96 C0 01            [24] 9230 	push	ar1
      005F98 E5 08            [12] 9231 	mov	a,_bp
      005F9A 24 16            [12] 9232 	add	a,#0x16
      005F9C F8               [12] 9233 	mov	r0,a
      005F9D 86 02            [24] 9234 	mov	ar2,@r0
      005F9F 08               [12] 9235 	inc	r0
      005FA0 86 03            [24] 9236 	mov	ar3,@r0
      005FA2 08               [12] 9237 	inc	r0
      005FA3 86 05            [24] 9238 	mov	ar5,@r0
      005FA5 08               [12] 9239 	inc	r0
      005FA6 86 07            [24] 9240 	mov	ar7,@r0
      005FA8 E5 08            [12] 9241 	mov	a,_bp
      005FAA 24 1A            [12] 9242 	add	a,#0x1a
      005FAC F8               [12] 9243 	mov	r0,a
      005FAD E6               [12] 9244 	mov	a,@r0
      005FAE 52 02            [12] 9245 	anl	ar2,a
      005FB0 08               [12] 9246 	inc	r0
      005FB1 E6               [12] 9247 	mov	a,@r0
      005FB2 52 03            [12] 9248 	anl	ar3,a
      005FB4 08               [12] 9249 	inc	r0
      005FB5 E6               [12] 9250 	mov	a,@r0
      005FB6 52 05            [12] 9251 	anl	ar5,a
      005FB8 08               [12] 9252 	inc	r0
      005FB9 E6               [12] 9253 	mov	a,@r0
      005FBA 52 07            [12] 9254 	anl	ar7,a
      005FBC D0 01            [24] 9255 	pop	ar1
      005FBE EA               [12] 9256 	mov	a,r2
      005FBF 4B               [12] 9257 	orl	a,r3
      005FC0 4D               [12] 9258 	orl	a,r5
      005FC1 4F               [12] 9259 	orl	a,r7
      005FC2 60 06            [24] 9260 	jz	00174$
      005FC4 7E 31            [12] 9261 	mov	r6,#0x31
      005FC6 7F 00            [12] 9262 	mov	r7,#0x00
      005FC8 80 04            [24] 9263 	sjmp	00175$
      005FCA                       9264 00174$:
      005FCA 7E 30            [12] 9265 	mov	r6,#0x30
      005FCC 7F 00            [12] 9266 	mov	r7,#0x00
      005FCE                       9267 00175$:
      005FCE 8E 82            [24] 9268 	mov	dpl,r6
      005FD0 8F 83            [24] 9269 	mov	dph,r7
      005FD2 12 2B 70         [24] 9270 	lcall	_putchar
                                   9271 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      005FD5 E5 08            [12] 9272 	mov	a,_bp
      005FD7 24 1A            [12] 9273 	add	a,#0x1a
      005FD9 F8               [12] 9274 	mov	r0,a
      005FDA 08               [12] 9275 	inc	r0
      005FDB 08               [12] 9276 	inc	r0
      005FDC 08               [12] 9277 	inc	r0
      005FDD E6               [12] 9278 	mov	a,@r0
      005FDE C3               [12] 9279 	clr	c
      005FDF 13               [12] 9280 	rrc	a
      005FE0 F6               [12] 9281 	mov	@r0,a
      005FE1 18               [12] 9282 	dec	r0
      005FE2 E6               [12] 9283 	mov	a,@r0
      005FE3 13               [12] 9284 	rrc	a
      005FE4 F6               [12] 9285 	mov	@r0,a
      005FE5 18               [12] 9286 	dec	r0
      005FE6 E6               [12] 9287 	mov	a,@r0
      005FE7 13               [12] 9288 	rrc	a
      005FE8 F6               [12] 9289 	mov	@r0,a
      005FE9 18               [12] 9290 	dec	r0
      005FEA E6               [12] 9291 	mov	a,@r0
      005FEB 13               [12] 9292 	rrc	a
      005FEC F6               [12] 9293 	mov	@r0,a
      005FED E5 08            [12] 9294 	mov	a,_bp
      005FEF 24 1A            [12] 9295 	add	a,#0x1a
      005FF1 F8               [12] 9296 	mov	r0,a
      005FF2 E6               [12] 9297 	mov	a,@r0
      005FF3 08               [12] 9298 	inc	r0
      005FF4 46               [12] 9299 	orl	a,@r0
      005FF5 08               [12] 9300 	inc	r0
      005FF6 46               [12] 9301 	orl	a,@r0
      005FF7 08               [12] 9302 	inc	r0
      005FF8 46               [12] 9303 	orl	a,@r0
      005FF9 70 9B            [24] 9304 	jnz	00156$
                                   9305 ;	calc.c:415: if (n > 0) printall(vals[1]);
      005FFB                       9306 00108$:
                                   9307 ;	calc.c:416: printstr("\r\nSSTOP0\t");
      005FFB 7D 55            [12] 9308 	mov	r5,#___str_20
      005FFD 7E 8A            [12] 9309 	mov	r6,#(___str_20 >> 8)
      005FFF 7F 80            [12] 9310 	mov	r7,#0x80
                                   9311 ;	calc.c:53: return;
      006001                       9312 00159$:
                                   9313 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006001 8D 82            [24] 9314 	mov	dpl,r5
      006003 8E 83            [24] 9315 	mov	dph,r6
      006005 8F F0            [24] 9316 	mov	b,r7
      006007 12 70 CC         [24] 9317 	lcall	__gptrget
      00600A FC               [12] 9318 	mov	r4,a
      00600B 60 10            [24] 9319 	jz	00132$
      00600D 7B 00            [12] 9320 	mov	r3,#0x00
      00600F 8C 82            [24] 9321 	mov	dpl,r4
      006011 8B 83            [24] 9322 	mov	dph,r3
      006013 12 2B 70         [24] 9323 	lcall	_putchar
      006016 0D               [12] 9324 	inc	r5
                                   9325 ;	calc.c:416: printstr("\r\nSSTOP0\t");
      006017 BD 00 E7         [24] 9326 	cjne	r5,#0x00,00159$
      00601A 0E               [12] 9327 	inc	r6
      00601B 80 E4            [24] 9328 	sjmp	00159$
      00601D                       9329 00132$:
                                   9330 ;	calc.c:417: if (n > 1) printall(vals[0]);
      00601D E5 08            [12] 9331 	mov	a,_bp
      00601F 24 09            [12] 9332 	add	a,#0x09
      006021 F8               [12] 9333 	mov	r0,a
      006022 C3               [12] 9334 	clr	c
      006023 74 01            [12] 9335 	mov	a,#0x01
      006025 96               [12] 9336 	subb	a,@r0
      006026 74 80            [12] 9337 	mov	a,#(0x00 ^ 0x80)
      006028 08               [12] 9338 	inc	r0
      006029 86 F0            [24] 9339 	mov	b,@r0
      00602B 63 F0 80         [24] 9340 	xrl	b,#0x80
      00602E 95 F0            [12] 9341 	subb	a,b
      006030 40 03            [24] 9342 	jc	00341$
      006032 02 61 46         [24] 9343 	ljmp	00110$
      006035                       9344 00341$:
      006035 87 04            [24] 9345 	mov	ar4,@r1
      006037 09               [12] 9346 	inc	r1
      006038 87 05            [24] 9347 	mov	ar5,@r1
      00603A 09               [12] 9348 	inc	r1
      00603B 87 06            [24] 9349 	mov	ar6,@r1
      00603D 09               [12] 9350 	inc	r1
      00603E 87 07            [24] 9351 	mov	ar7,@r1
                                   9352 ;	calc.c:66: printf("%08lx\t", d);
      006040 C0 07            [24] 9353 	push	ar7
      006042 C0 06            [24] 9354 	push	ar6
      006044 C0 05            [24] 9355 	push	ar5
      006046 C0 04            [24] 9356 	push	ar4
      006048 C0 04            [24] 9357 	push	ar4
      00604A C0 05            [24] 9358 	push	ar5
      00604C C0 06            [24] 9359 	push	ar6
      00604E C0 07            [24] 9360 	push	ar7
      006050 74 4D            [12] 9361 	mov	a,#___str_0
      006052 C0 E0            [24] 9362 	push	acc
      006054 74 89            [12] 9363 	mov	a,#(___str_0 >> 8)
      006056 C0 E0            [24] 9364 	push	acc
      006058 74 80            [12] 9365 	mov	a,#0x80
      00605A C0 E0            [24] 9366 	push	acc
      00605C 12 70 93         [24] 9367 	lcall	_printf
      00605F E5 81            [12] 9368 	mov	a,sp
      006061 24 F9            [12] 9369 	add	a,#0xf9
      006063 F5 81            [12] 9370 	mov	sp,a
      006065 D0 04            [24] 9371 	pop	ar4
      006067 D0 05            [24] 9372 	pop	ar5
      006069 D0 06            [24] 9373 	pop	ar6
      00606B D0 07            [24] 9374 	pop	ar7
                                   9375 ;	calc.c:67: printf("% 11ld\t", d);
      00606D C0 07            [24] 9376 	push	ar7
      00606F C0 06            [24] 9377 	push	ar6
      006071 C0 05            [24] 9378 	push	ar5
      006073 C0 04            [24] 9379 	push	ar4
      006075 C0 04            [24] 9380 	push	ar4
      006077 C0 05            [24] 9381 	push	ar5
      006079 C0 06            [24] 9382 	push	ar6
      00607B C0 07            [24] 9383 	push	ar7
      00607D 74 54            [12] 9384 	mov	a,#___str_1
      00607F C0 E0            [24] 9385 	push	acc
      006081 74 89            [12] 9386 	mov	a,#(___str_1 >> 8)
      006083 C0 E0            [24] 9387 	push	acc
      006085 74 80            [12] 9388 	mov	a,#0x80
      006087 C0 E0            [24] 9389 	push	acc
      006089 12 70 93         [24] 9390 	lcall	_printf
      00608C E5 81            [12] 9391 	mov	a,sp
      00608E 24 F9            [12] 9392 	add	a,#0xf9
      006090 F5 81            [12] 9393 	mov	sp,a
      006092 D0 04            [24] 9394 	pop	ar4
      006094 D0 05            [24] 9395 	pop	ar5
      006096 D0 06            [24] 9396 	pop	ar6
      006098 D0 07            [24] 9397 	pop	ar7
                                   9398 ;	calc.c:68: printf("%011lo\t", d);
      00609A C0 07            [24] 9399 	push	ar7
      00609C C0 06            [24] 9400 	push	ar6
      00609E C0 05            [24] 9401 	push	ar5
      0060A0 C0 04            [24] 9402 	push	ar4
      0060A2 C0 04            [24] 9403 	push	ar4
      0060A4 C0 05            [24] 9404 	push	ar5
      0060A6 C0 06            [24] 9405 	push	ar6
      0060A8 C0 07            [24] 9406 	push	ar7
      0060AA 74 5C            [12] 9407 	mov	a,#___str_2
      0060AC C0 E0            [24] 9408 	push	acc
      0060AE 74 89            [12] 9409 	mov	a,#(___str_2 >> 8)
      0060B0 C0 E0            [24] 9410 	push	acc
      0060B2 74 80            [12] 9411 	mov	a,#0x80
      0060B4 C0 E0            [24] 9412 	push	acc
      0060B6 12 70 93         [24] 9413 	lcall	_printf
      0060B9 E5 81            [12] 9414 	mov	a,sp
      0060BB 24 F9            [12] 9415 	add	a,#0xf9
      0060BD F5 81            [12] 9416 	mov	sp,a
      0060BF D0 04            [24] 9417 	pop	ar4
      0060C1 D0 05            [24] 9418 	pop	ar5
      0060C3 D0 06            [24] 9419 	pop	ar6
      0060C5 D0 07            [24] 9420 	pop	ar7
                                   9421 ;	calc.c:69: printbin(d);
      0060C7 E5 08            [12] 9422 	mov	a,_bp
      0060C9 24 16            [12] 9423 	add	a,#0x16
      0060CB F8               [12] 9424 	mov	r0,a
      0060CC A6 04            [24] 9425 	mov	@r0,ar4
      0060CE 08               [12] 9426 	inc	r0
      0060CF A6 05            [24] 9427 	mov	@r0,ar5
      0060D1 08               [12] 9428 	inc	r0
      0060D2 A6 06            [24] 9429 	mov	@r0,ar6
      0060D4 08               [12] 9430 	inc	r0
      0060D5 A6 07            [24] 9431 	mov	@r0,ar7
                                   9432 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      0060D7 E5 08            [12] 9433 	mov	a,_bp
      0060D9 24 1A            [12] 9434 	add	a,#0x1a
      0060DB F8               [12] 9435 	mov	r0,a
      0060DC E4               [12] 9436 	clr	a
      0060DD F6               [12] 9437 	mov	@r0,a
      0060DE 08               [12] 9438 	inc	r0
      0060DF F6               [12] 9439 	mov	@r0,a
      0060E0 08               [12] 9440 	inc	r0
      0060E1 F6               [12] 9441 	mov	@r0,a
      0060E2 08               [12] 9442 	inc	r0
      0060E3 76 80            [12] 9443 	mov	@r0,#0x80
      0060E5                       9444 00161$:
                                   9445 ;	calc.c:60: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0060E5 E5 08            [12] 9446 	mov	a,_bp
      0060E7 24 16            [12] 9447 	add	a,#0x16
      0060E9 F8               [12] 9448 	mov	r0,a
      0060EA 86 04            [24] 9449 	mov	ar4,@r0
      0060EC 08               [12] 9450 	inc	r0
      0060ED 86 05            [24] 9451 	mov	ar5,@r0
      0060EF 08               [12] 9452 	inc	r0
      0060F0 86 06            [24] 9453 	mov	ar6,@r0
      0060F2 08               [12] 9454 	inc	r0
      0060F3 86 07            [24] 9455 	mov	ar7,@r0
      0060F5 E5 08            [12] 9456 	mov	a,_bp
      0060F7 24 1A            [12] 9457 	add	a,#0x1a
      0060F9 F8               [12] 9458 	mov	r0,a
      0060FA E6               [12] 9459 	mov	a,@r0
      0060FB 52 04            [12] 9460 	anl	ar4,a
      0060FD 08               [12] 9461 	inc	r0
      0060FE E6               [12] 9462 	mov	a,@r0
      0060FF 52 05            [12] 9463 	anl	ar5,a
      006101 08               [12] 9464 	inc	r0
      006102 E6               [12] 9465 	mov	a,@r0
      006103 52 06            [12] 9466 	anl	ar6,a
      006105 08               [12] 9467 	inc	r0
      006106 E6               [12] 9468 	mov	a,@r0
      006107 52 07            [12] 9469 	anl	ar7,a
      006109 EC               [12] 9470 	mov	a,r4
      00610A 4D               [12] 9471 	orl	a,r5
      00610B 4E               [12] 9472 	orl	a,r6
      00610C 4F               [12] 9473 	orl	a,r7
      00610D 60 06            [24] 9474 	jz	00176$
      00610F 7E 31            [12] 9475 	mov	r6,#0x31
      006111 7F 00            [12] 9476 	mov	r7,#0x00
      006113 80 04            [24] 9477 	sjmp	00177$
      006115                       9478 00176$:
      006115 7E 30            [12] 9479 	mov	r6,#0x30
      006117 7F 00            [12] 9480 	mov	r7,#0x00
      006119                       9481 00177$:
      006119 8E 82            [24] 9482 	mov	dpl,r6
      00611B 8F 83            [24] 9483 	mov	dph,r7
      00611D 12 2B 70         [24] 9484 	lcall	_putchar
                                   9485 ;	calc.c:59: for (mask = 0x80000000lu; mask; mask >>= 1)
      006120 E5 08            [12] 9486 	mov	a,_bp
      006122 24 1A            [12] 9487 	add	a,#0x1a
      006124 F8               [12] 9488 	mov	r0,a
      006125 08               [12] 9489 	inc	r0
      006126 08               [12] 9490 	inc	r0
      006127 08               [12] 9491 	inc	r0
      006128 E6               [12] 9492 	mov	a,@r0
      006129 C3               [12] 9493 	clr	c
      00612A 13               [12] 9494 	rrc	a
      00612B F6               [12] 9495 	mov	@r0,a
      00612C 18               [12] 9496 	dec	r0
      00612D E6               [12] 9497 	mov	a,@r0
      00612E 13               [12] 9498 	rrc	a
      00612F F6               [12] 9499 	mov	@r0,a
      006130 18               [12] 9500 	dec	r0
      006131 E6               [12] 9501 	mov	a,@r0
      006132 13               [12] 9502 	rrc	a
      006133 F6               [12] 9503 	mov	@r0,a
      006134 18               [12] 9504 	dec	r0
      006135 E6               [12] 9505 	mov	a,@r0
      006136 13               [12] 9506 	rrc	a
      006137 F6               [12] 9507 	mov	@r0,a
      006138 E5 08            [12] 9508 	mov	a,_bp
      00613A 24 1A            [12] 9509 	add	a,#0x1a
      00613C F8               [12] 9510 	mov	r0,a
      00613D E6               [12] 9511 	mov	a,@r0
      00613E 08               [12] 9512 	inc	r0
      00613F 46               [12] 9513 	orl	a,@r0
      006140 08               [12] 9514 	inc	r0
      006141 46               [12] 9515 	orl	a,@r0
      006142 08               [12] 9516 	inc	r0
      006143 46               [12] 9517 	orl	a,@r0
      006144 70 9F            [24] 9518 	jnz	00161$
                                   9519 ;	calc.c:417: if (n > 1) printall(vals[0]);
      006146                       9520 00110$:
                                   9521 ;	calc.c:418: printstr("\r\n");
      006146 7D 64            [12] 9522 	mov	r5,#___str_3
      006148 7E 89            [12] 9523 	mov	r6,#(___str_3 >> 8)
      00614A 7F 80            [12] 9524 	mov	r7,#0x80
                                   9525 ;	calc.c:53: return;
      00614C                       9526 00164$:
                                   9527 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00614C 8D 82            [24] 9528 	mov	dpl,r5
      00614E 8E 83            [24] 9529 	mov	dph,r6
      006150 8F F0            [24] 9530 	mov	b,r7
      006152 12 70 CC         [24] 9531 	lcall	__gptrget
      006155 FC               [12] 9532 	mov	r4,a
      006156 60 10            [24] 9533 	jz	00137$
      006158 7B 00            [12] 9534 	mov	r3,#0x00
      00615A 8C 82            [24] 9535 	mov	dpl,r4
      00615C 8B 83            [24] 9536 	mov	dph,r3
      00615E 12 2B 70         [24] 9537 	lcall	_putchar
      006161 0D               [12] 9538 	inc	r5
                                   9539 ;	calc.c:418: printstr("\r\n");
      006162 BD 00 E7         [24] 9540 	cjne	r5,#0x00,00164$
      006165 0E               [12] 9541 	inc	r6
      006166 80 E4            [24] 9542 	sjmp	00164$
      006168                       9543 00137$:
                                   9544 ;	calc.c:420: return 1;
      006168 90 00 01         [24] 9545 	mov	dptr,#0x0001
                                   9546 ;	calc.c:421: }
      00616B 85 08 81         [24] 9547 	mov	sp,_bp
      00616E D0 08            [24] 9548 	pop	_bp
      006170 22               [24] 9549 	ret
                                   9550 ;------------------------------------------------------------
                                   9551 ;Allocation info for local variables in function 'help'
                                   9552 ;------------------------------------------------------------
                                   9553 ;delta                     Allocated to stack - _bp -5
                                   9554 ;_ctx                      Allocated to registers 
                                   9555 ;__1310720151              Allocated to registers 
                                   9556 ;s                         Allocated to registers r5 r6 r7 
                                   9557 ;__1310720153              Allocated to registers 
                                   9558 ;s                         Allocated to registers r5 r6 r7 
                                   9559 ;__1310720155              Allocated to registers 
                                   9560 ;s                         Allocated to registers r5 r6 r7 
                                   9561 ;__1310720157              Allocated to registers 
                                   9562 ;s                         Allocated to registers r5 r6 r7 
                                   9563 ;__1310720159              Allocated to registers 
                                   9564 ;s                         Allocated to registers r5 r6 r7 
                                   9565 ;__1310720161              Allocated to registers 
                                   9566 ;s                         Allocated to registers r5 r6 r7 
                                   9567 ;__1310720163              Allocated to registers 
                                   9568 ;s                         Allocated to registers r5 r6 r7 
                                   9569 ;__1310720165              Allocated to registers 
                                   9570 ;s                         Allocated to registers r5 r6 r7 
                                   9571 ;__1310720167              Allocated to registers 
                                   9572 ;s                         Allocated to registers r5 r6 r7 
                                   9573 ;__1310720169              Allocated to registers 
                                   9574 ;s                         Allocated to registers r5 r6 r7 
                                   9575 ;__1310720171              Allocated to registers 
                                   9576 ;s                         Allocated to registers r5 r6 r7 
                                   9577 ;__1310720173              Allocated to registers 
                                   9578 ;s                         Allocated to registers r5 r6 r7 
                                   9579 ;__1310720175              Allocated to registers 
                                   9580 ;s                         Allocated to registers r5 r6 r7 
                                   9581 ;__1310720177              Allocated to registers 
                                   9582 ;s                         Allocated to registers r5 r6 r7 
                                   9583 ;__1310720179              Allocated to registers 
                                   9584 ;s                         Allocated to registers r5 r6 r7 
                                   9585 ;__1310720181              Allocated to registers 
                                   9586 ;s                         Allocated to registers r5 r6 r7 
                                   9587 ;__1310720183              Allocated to registers 
                                   9588 ;s                         Allocated to registers r5 r6 r7 
                                   9589 ;__1310720185              Allocated to registers 
                                   9590 ;s                         Allocated to registers r5 r6 r7 
                                   9591 ;__1310720187              Allocated to registers 
                                   9592 ;s                         Allocated to registers r5 r6 r7 
                                   9593 ;__1310720189              Allocated to registers 
                                   9594 ;s                         Allocated to registers r5 r6 r7 
                                   9595 ;__1310720191              Allocated to registers 
                                   9596 ;s                         Allocated to registers r5 r6 r7 
                                   9597 ;__1310720193              Allocated to registers 
                                   9598 ;s                         Allocated to registers r5 r6 r7 
                                   9599 ;__1310720195              Allocated to registers 
                                   9600 ;s                         Allocated to registers r5 r6 r7 
                                   9601 ;__1310720197              Allocated to registers 
                                   9602 ;s                         Allocated to registers r5 r6 r7 
                                   9603 ;__1310720199              Allocated to registers 
                                   9604 ;s                         Allocated to registers r5 r6 r7 
                                   9605 ;__1310720201              Allocated to registers 
                                   9606 ;s                         Allocated to registers r5 r6 r7 
                                   9607 ;__1310720203              Allocated to registers 
                                   9608 ;s                         Allocated to registers r5 r6 r7 
                                   9609 ;__1310720205              Allocated to registers 
                                   9610 ;s                         Allocated to registers r5 r6 r7 
                                   9611 ;__1310720207              Allocated to registers 
                                   9612 ;s                         Allocated to registers r5 r6 r7 
                                   9613 ;__1310720209              Allocated to registers 
                                   9614 ;s                         Allocated to registers r5 r6 r7 
                                   9615 ;__1310720211              Allocated to registers 
                                   9616 ;s                         Allocated to registers r5 r6 r7 
                                   9617 ;------------------------------------------------------------
                                   9618 ;	calc.c:423: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   9619 ;	-----------------------------------------
                                   9620 ;	 function help
                                   9621 ;	-----------------------------------------
      006171                       9622 _help:
      006171 C0 08            [24] 9623 	push	_bp
      006173 85 81 08         [24] 9624 	mov	_bp,sp
                                   9625 ;	calc.c:427: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      006176 7D 5F            [12] 9626 	mov	r5,#___str_21
      006178 7E 8A            [12] 9627 	mov	r6,#(___str_21 >> 8)
      00617A 7F 80            [12] 9628 	mov	r7,#0x80
                                   9629 ;	calc.c:53: return;
      00617C                       9630 00164$:
                                   9631 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00617C 8D 82            [24] 9632 	mov	dpl,r5
      00617E 8E 83            [24] 9633 	mov	dph,r6
      006180 8F F0            [24] 9634 	mov	b,r7
      006182 12 70 CC         [24] 9635 	lcall	__gptrget
      006185 FC               [12] 9636 	mov	r4,a
      006186 60 10            [24] 9637 	jz	00102$
      006188 7B 00            [12] 9638 	mov	r3,#0x00
      00618A 8C 82            [24] 9639 	mov	dpl,r4
      00618C 8B 83            [24] 9640 	mov	dph,r3
      00618E 12 2B 70         [24] 9641 	lcall	_putchar
      006191 0D               [12] 9642 	inc	r5
                                   9643 ;	calc.c:427: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      006192 BD 00 E7         [24] 9644 	cjne	r5,#0x00,00164$
      006195 0E               [12] 9645 	inc	r6
      006196 80 E4            [24] 9646 	sjmp	00164$
      006198                       9647 00102$:
                                   9648 ;	calc.c:428: printstr("p.\tpop top\r\n");
      006198 7D 77            [12] 9649 	mov	r5,#___str_22
      00619A 7E 8A            [12] 9650 	mov	r6,#(___str_22 >> 8)
      00619C 7F 80            [12] 9651 	mov	r7,#0x80
                                   9652 ;	calc.c:53: return;
      00619E                       9653 00167$:
                                   9654 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00619E 8D 82            [24] 9655 	mov	dpl,r5
      0061A0 8E 83            [24] 9656 	mov	dph,r6
      0061A2 8F F0            [24] 9657 	mov	b,r7
      0061A4 12 70 CC         [24] 9658 	lcall	__gptrget
      0061A7 FC               [12] 9659 	mov	r4,a
      0061A8 60 10            [24] 9660 	jz	00104$
      0061AA 7B 00            [12] 9661 	mov	r3,#0x00
      0061AC 8C 82            [24] 9662 	mov	dpl,r4
      0061AE 8B 83            [24] 9663 	mov	dph,r3
      0061B0 12 2B 70         [24] 9664 	lcall	_putchar
      0061B3 0D               [12] 9665 	inc	r5
                                   9666 ;	calc.c:428: printstr("p.\tpop top\r\n");
      0061B4 BD 00 E7         [24] 9667 	cjne	r5,#0x00,00167$
      0061B7 0E               [12] 9668 	inc	r6
      0061B8 80 E4            [24] 9669 	sjmp	00167$
      0061BA                       9670 00104$:
                                   9671 ;	calc.c:429: printstr("P\tpop stack\r\n");
      0061BA 7D 84            [12] 9672 	mov	r5,#___str_23
      0061BC 7E 8A            [12] 9673 	mov	r6,#(___str_23 >> 8)
      0061BE 7F 80            [12] 9674 	mov	r7,#0x80
                                   9675 ;	calc.c:53: return;
      0061C0                       9676 00170$:
                                   9677 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0061C0 8D 82            [24] 9678 	mov	dpl,r5
      0061C2 8E 83            [24] 9679 	mov	dph,r6
      0061C4 8F F0            [24] 9680 	mov	b,r7
      0061C6 12 70 CC         [24] 9681 	lcall	__gptrget
      0061C9 FC               [12] 9682 	mov	r4,a
      0061CA 60 10            [24] 9683 	jz	00106$
      0061CC 7B 00            [12] 9684 	mov	r3,#0x00
      0061CE 8C 82            [24] 9685 	mov	dpl,r4
      0061D0 8B 83            [24] 9686 	mov	dph,r3
      0061D2 12 2B 70         [24] 9687 	lcall	_putchar
      0061D5 0D               [12] 9688 	inc	r5
                                   9689 ;	calc.c:429: printstr("P\tpop stack\r\n");
      0061D6 BD 00 E7         [24] 9690 	cjne	r5,#0x00,00170$
      0061D9 0E               [12] 9691 	inc	r6
      0061DA 80 E4            [24] 9692 	sjmp	00170$
      0061DC                       9693 00106$:
                                   9694 ;	calc.c:430: printstr("v\tpeek top\r\n");
      0061DC 7D 92            [12] 9695 	mov	r5,#___str_24
      0061DE 7E 8A            [12] 9696 	mov	r6,#(___str_24 >> 8)
      0061E0 7F 80            [12] 9697 	mov	r7,#0x80
                                   9698 ;	calc.c:53: return;
      0061E2                       9699 00173$:
                                   9700 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0061E2 8D 82            [24] 9701 	mov	dpl,r5
      0061E4 8E 83            [24] 9702 	mov	dph,r6
      0061E6 8F F0            [24] 9703 	mov	b,r7
      0061E8 12 70 CC         [24] 9704 	lcall	__gptrget
      0061EB FC               [12] 9705 	mov	r4,a
      0061EC 60 10            [24] 9706 	jz	00108$
      0061EE 7B 00            [12] 9707 	mov	r3,#0x00
      0061F0 8C 82            [24] 9708 	mov	dpl,r4
      0061F2 8B 83            [24] 9709 	mov	dph,r3
      0061F4 12 2B 70         [24] 9710 	lcall	_putchar
      0061F7 0D               [12] 9711 	inc	r5
                                   9712 ;	calc.c:430: printstr("v\tpeek top\r\n");
      0061F8 BD 00 E7         [24] 9713 	cjne	r5,#0x00,00173$
      0061FB 0E               [12] 9714 	inc	r6
      0061FC 80 E4            [24] 9715 	sjmp	00173$
      0061FE                       9716 00108$:
                                   9717 ;	calc.c:431: printstr("V\tpeek stack\r\n");
      0061FE 7D 9F            [12] 9718 	mov	r5,#___str_25
      006200 7E 8A            [12] 9719 	mov	r6,#(___str_25 >> 8)
      006202 7F 80            [12] 9720 	mov	r7,#0x80
                                   9721 ;	calc.c:53: return;
      006204                       9722 00176$:
                                   9723 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006204 8D 82            [24] 9724 	mov	dpl,r5
      006206 8E 83            [24] 9725 	mov	dph,r6
      006208 8F F0            [24] 9726 	mov	b,r7
      00620A 12 70 CC         [24] 9727 	lcall	__gptrget
      00620D FC               [12] 9728 	mov	r4,a
      00620E 60 10            [24] 9729 	jz	00110$
      006210 7B 00            [12] 9730 	mov	r3,#0x00
      006212 8C 82            [24] 9731 	mov	dpl,r4
      006214 8B 83            [24] 9732 	mov	dph,r3
      006216 12 2B 70         [24] 9733 	lcall	_putchar
      006219 0D               [12] 9734 	inc	r5
                                   9735 ;	calc.c:431: printstr("V\tpeek stack\r\n");
      00621A BD 00 E7         [24] 9736 	cjne	r5,#0x00,00176$
      00621D 0E               [12] 9737 	inc	r6
      00621E 80 E4            [24] 9738 	sjmp	00176$
      006220                       9739 00110$:
                                   9740 ;	calc.c:432: printstr("i\treset acc\r\n");
      006220 7D AE            [12] 9741 	mov	r5,#___str_26
      006222 7E 8A            [12] 9742 	mov	r6,#(___str_26 >> 8)
      006224 7F 80            [12] 9743 	mov	r7,#0x80
                                   9744 ;	calc.c:53: return;
      006226                       9745 00179$:
                                   9746 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006226 8D 82            [24] 9747 	mov	dpl,r5
      006228 8E 83            [24] 9748 	mov	dph,r6
      00622A 8F F0            [24] 9749 	mov	b,r7
      00622C 12 70 CC         [24] 9750 	lcall	__gptrget
      00622F FC               [12] 9751 	mov	r4,a
      006230 60 10            [24] 9752 	jz	00112$
      006232 7B 00            [12] 9753 	mov	r3,#0x00
      006234 8C 82            [24] 9754 	mov	dpl,r4
      006236 8B 83            [24] 9755 	mov	dph,r3
      006238 12 2B 70         [24] 9756 	lcall	_putchar
      00623B 0D               [12] 9757 	inc	r5
                                   9758 ;	calc.c:432: printstr("i\treset acc\r\n");
      00623C BD 00 E7         [24] 9759 	cjne	r5,#0x00,00179$
      00623F 0E               [12] 9760 	inc	r6
      006240 80 E4            [24] 9761 	sjmp	00179$
      006242                       9762 00112$:
                                   9763 ;	calc.c:433: printstr("I\treset and discard acc\r\n");
      006242 7D BC            [12] 9764 	mov	r5,#___str_27
      006244 7E 8A            [12] 9765 	mov	r6,#(___str_27 >> 8)
      006246 7F 80            [12] 9766 	mov	r7,#0x80
                                   9767 ;	calc.c:53: return;
      006248                       9768 00182$:
                                   9769 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006248 8D 82            [24] 9770 	mov	dpl,r5
      00624A 8E 83            [24] 9771 	mov	dph,r6
      00624C 8F F0            [24] 9772 	mov	b,r7
      00624E 12 70 CC         [24] 9773 	lcall	__gptrget
      006251 FC               [12] 9774 	mov	r4,a
      006252 60 10            [24] 9775 	jz	00114$
      006254 7B 00            [12] 9776 	mov	r3,#0x00
      006256 8C 82            [24] 9777 	mov	dpl,r4
      006258 8B 83            [24] 9778 	mov	dph,r3
      00625A 12 2B 70         [24] 9779 	lcall	_putchar
      00625D 0D               [12] 9780 	inc	r5
                                   9781 ;	calc.c:433: printstr("I\treset and discard acc\r\n");
      00625E BD 00 E7         [24] 9782 	cjne	r5,#0x00,00182$
      006261 0E               [12] 9783 	inc	r6
      006262 80 E4            [24] 9784 	sjmp	00182$
      006264                       9785 00114$:
                                   9786 ;	calc.c:434: printstr("x\texchange top 2\r\n");
      006264 7D D6            [12] 9787 	mov	r5,#___str_28
      006266 7E 8A            [12] 9788 	mov	r6,#(___str_28 >> 8)
      006268 7F 80            [12] 9789 	mov	r7,#0x80
                                   9790 ;	calc.c:53: return;
      00626A                       9791 00185$:
                                   9792 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00626A 8D 82            [24] 9793 	mov	dpl,r5
      00626C 8E 83            [24] 9794 	mov	dph,r6
      00626E 8F F0            [24] 9795 	mov	b,r7
      006270 12 70 CC         [24] 9796 	lcall	__gptrget
      006273 FC               [12] 9797 	mov	r4,a
      006274 60 10            [24] 9798 	jz	00116$
      006276 7B 00            [12] 9799 	mov	r3,#0x00
      006278 8C 82            [24] 9800 	mov	dpl,r4
      00627A 8B 83            [24] 9801 	mov	dph,r3
      00627C 12 2B 70         [24] 9802 	lcall	_putchar
      00627F 0D               [12] 9803 	inc	r5
                                   9804 ;	calc.c:434: printstr("x\texchange top 2\r\n");
      006280 BD 00 E7         [24] 9805 	cjne	r5,#0x00,00185$
      006283 0E               [12] 9806 	inc	r6
      006284 80 E4            [24] 9807 	sjmp	00185$
      006286                       9808 00116$:
                                   9809 ;	calc.c:435: printstr("X\texchange stacks primary <-> secondary\r\n");
      006286 7D E9            [12] 9810 	mov	r5,#___str_29
      006288 7E 8A            [12] 9811 	mov	r6,#(___str_29 >> 8)
      00628A 7F 80            [12] 9812 	mov	r7,#0x80
                                   9813 ;	calc.c:53: return;
      00628C                       9814 00188$:
                                   9815 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00628C 8D 82            [24] 9816 	mov	dpl,r5
      00628E 8E 83            [24] 9817 	mov	dph,r6
      006290 8F F0            [24] 9818 	mov	b,r7
      006292 12 70 CC         [24] 9819 	lcall	__gptrget
      006295 FC               [12] 9820 	mov	r4,a
      006296 60 10            [24] 9821 	jz	00118$
      006298 7B 00            [12] 9822 	mov	r3,#0x00
      00629A 8C 82            [24] 9823 	mov	dpl,r4
      00629C 8B 83            [24] 9824 	mov	dph,r3
      00629E 12 2B 70         [24] 9825 	lcall	_putchar
      0062A1 0D               [12] 9826 	inc	r5
                                   9827 ;	calc.c:435: printstr("X\texchange stacks primary <-> secondary\r\n");
      0062A2 BD 00 E7         [24] 9828 	cjne	r5,#0x00,00188$
      0062A5 0E               [12] 9829 	inc	r6
      0062A6 80 E4            [24] 9830 	sjmp	00188$
      0062A8                       9831 00118$:
                                   9832 ;	calc.c:436: printstr("T\texchange tops primary <-> secondary\r\n");
      0062A8 7D 13            [12] 9833 	mov	r5,#___str_30
      0062AA 7E 8B            [12] 9834 	mov	r6,#(___str_30 >> 8)
      0062AC 7F 80            [12] 9835 	mov	r7,#0x80
                                   9836 ;	calc.c:53: return;
      0062AE                       9837 00191$:
                                   9838 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0062AE 8D 82            [24] 9839 	mov	dpl,r5
      0062B0 8E 83            [24] 9840 	mov	dph,r6
      0062B2 8F F0            [24] 9841 	mov	b,r7
      0062B4 12 70 CC         [24] 9842 	lcall	__gptrget
      0062B7 FC               [12] 9843 	mov	r4,a
      0062B8 60 10            [24] 9844 	jz	00120$
      0062BA 7B 00            [12] 9845 	mov	r3,#0x00
      0062BC 8C 82            [24] 9846 	mov	dpl,r4
      0062BE 8B 83            [24] 9847 	mov	dph,r3
      0062C0 12 2B 70         [24] 9848 	lcall	_putchar
      0062C3 0D               [12] 9849 	inc	r5
                                   9850 ;	calc.c:436: printstr("T\texchange tops primary <-> secondary\r\n");
      0062C4 BD 00 E7         [24] 9851 	cjne	r5,#0x00,00191$
      0062C7 0E               [12] 9852 	inc	r6
      0062C8 80 E4            [24] 9853 	sjmp	00191$
      0062CA                       9854 00120$:
                                   9855 ;	calc.c:437: printstr("U\tcopy top secondary -> primary\r\n");
      0062CA 7D 3B            [12] 9856 	mov	r5,#___str_31
      0062CC 7E 8B            [12] 9857 	mov	r6,#(___str_31 >> 8)
      0062CE 7F 80            [12] 9858 	mov	r7,#0x80
                                   9859 ;	calc.c:53: return;
      0062D0                       9860 00194$:
                                   9861 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0062D0 8D 82            [24] 9862 	mov	dpl,r5
      0062D2 8E 83            [24] 9863 	mov	dph,r6
      0062D4 8F F0            [24] 9864 	mov	b,r7
      0062D6 12 70 CC         [24] 9865 	lcall	__gptrget
      0062D9 FC               [12] 9866 	mov	r4,a
      0062DA 60 10            [24] 9867 	jz	00122$
      0062DC 7B 00            [12] 9868 	mov	r3,#0x00
      0062DE 8C 82            [24] 9869 	mov	dpl,r4
      0062E0 8B 83            [24] 9870 	mov	dph,r3
      0062E2 12 2B 70         [24] 9871 	lcall	_putchar
      0062E5 0D               [12] 9872 	inc	r5
                                   9873 ;	calc.c:437: printstr("U\tcopy top secondary -> primary\r\n");
      0062E6 BD 00 E7         [24] 9874 	cjne	r5,#0x00,00194$
      0062E9 0E               [12] 9875 	inc	r6
      0062EA 80 E4            [24] 9876 	sjmp	00194$
      0062EC                       9877 00122$:
                                   9878 ;	calc.c:438: printstr("u\tcopy top primary -> secondary\r\n");
      0062EC 7D 5D            [12] 9879 	mov	r5,#___str_32
      0062EE 7E 8B            [12] 9880 	mov	r6,#(___str_32 >> 8)
      0062F0 7F 80            [12] 9881 	mov	r7,#0x80
                                   9882 ;	calc.c:53: return;
      0062F2                       9883 00197$:
                                   9884 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0062F2 8D 82            [24] 9885 	mov	dpl,r5
      0062F4 8E 83            [24] 9886 	mov	dph,r6
      0062F6 8F F0            [24] 9887 	mov	b,r7
      0062F8 12 70 CC         [24] 9888 	lcall	__gptrget
      0062FB FC               [12] 9889 	mov	r4,a
      0062FC 60 10            [24] 9890 	jz	00124$
      0062FE 7B 00            [12] 9891 	mov	r3,#0x00
      006300 8C 82            [24] 9892 	mov	dpl,r4
      006302 8B 83            [24] 9893 	mov	dph,r3
      006304 12 2B 70         [24] 9894 	lcall	_putchar
      006307 0D               [12] 9895 	inc	r5
                                   9896 ;	calc.c:438: printstr("u\tcopy top primary -> secondary\r\n");
      006308 BD 00 E7         [24] 9897 	cjne	r5,#0x00,00197$
      00630B 0E               [12] 9898 	inc	r6
      00630C 80 E4            [24] 9899 	sjmp	00197$
      00630E                       9900 00124$:
                                   9901 ;	calc.c:439: printstr("M\tmove top secondary -> primary\r\n");
      00630E 7D 7F            [12] 9902 	mov	r5,#___str_33
      006310 7E 8B            [12] 9903 	mov	r6,#(___str_33 >> 8)
      006312 7F 80            [12] 9904 	mov	r7,#0x80
                                   9905 ;	calc.c:53: return;
      006314                       9906 00200$:
                                   9907 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006314 8D 82            [24] 9908 	mov	dpl,r5
      006316 8E 83            [24] 9909 	mov	dph,r6
      006318 8F F0            [24] 9910 	mov	b,r7
      00631A 12 70 CC         [24] 9911 	lcall	__gptrget
      00631D FC               [12] 9912 	mov	r4,a
      00631E 60 10            [24] 9913 	jz	00126$
      006320 7B 00            [12] 9914 	mov	r3,#0x00
      006322 8C 82            [24] 9915 	mov	dpl,r4
      006324 8B 83            [24] 9916 	mov	dph,r3
      006326 12 2B 70         [24] 9917 	lcall	_putchar
      006329 0D               [12] 9918 	inc	r5
                                   9919 ;	calc.c:439: printstr("M\tmove top secondary -> primary\r\n");
      00632A BD 00 E7         [24] 9920 	cjne	r5,#0x00,00200$
      00632D 0E               [12] 9921 	inc	r6
      00632E 80 E4            [24] 9922 	sjmp	00200$
      006330                       9923 00126$:
                                   9924 ;	calc.c:440: printstr("m\tmove top primary -> secondary\r\n");
      006330 7D A1            [12] 9925 	mov	r5,#___str_34
      006332 7E 8B            [12] 9926 	mov	r6,#(___str_34 >> 8)
      006334 7F 80            [12] 9927 	mov	r7,#0x80
                                   9928 ;	calc.c:53: return;
      006336                       9929 00203$:
                                   9930 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006336 8D 82            [24] 9931 	mov	dpl,r5
      006338 8E 83            [24] 9932 	mov	dph,r6
      00633A 8F F0            [24] 9933 	mov	b,r7
      00633C 12 70 CC         [24] 9934 	lcall	__gptrget
      00633F FC               [12] 9935 	mov	r4,a
      006340 60 10            [24] 9936 	jz	00128$
      006342 7B 00            [12] 9937 	mov	r3,#0x00
      006344 8C 82            [24] 9938 	mov	dpl,r4
      006346 8B 83            [24] 9939 	mov	dph,r3
      006348 12 2B 70         [24] 9940 	lcall	_putchar
      00634B 0D               [12] 9941 	inc	r5
                                   9942 ;	calc.c:440: printstr("m\tmove top primary -> secondary\r\n");
      00634C BD 00 E7         [24] 9943 	cjne	r5,#0x00,00203$
      00634F 0E               [12] 9944 	inc	r6
      006350 80 E4            [24] 9945 	sjmp	00203$
      006352                       9946 00128$:
                                   9947 ;	calc.c:441: printstr("+\tadd top 2\r\n");
      006352 7D C3            [12] 9948 	mov	r5,#___str_35
      006354 7E 8B            [12] 9949 	mov	r6,#(___str_35 >> 8)
      006356 7F 80            [12] 9950 	mov	r7,#0x80
                                   9951 ;	calc.c:53: return;
      006358                       9952 00206$:
                                   9953 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006358 8D 82            [24] 9954 	mov	dpl,r5
      00635A 8E 83            [24] 9955 	mov	dph,r6
      00635C 8F F0            [24] 9956 	mov	b,r7
      00635E 12 70 CC         [24] 9957 	lcall	__gptrget
      006361 FC               [12] 9958 	mov	r4,a
      006362 60 10            [24] 9959 	jz	00130$
      006364 7B 00            [12] 9960 	mov	r3,#0x00
      006366 8C 82            [24] 9961 	mov	dpl,r4
      006368 8B 83            [24] 9962 	mov	dph,r3
      00636A 12 2B 70         [24] 9963 	lcall	_putchar
      00636D 0D               [12] 9964 	inc	r5
                                   9965 ;	calc.c:441: printstr("+\tadd top 2\r\n");
      00636E BD 00 E7         [24] 9966 	cjne	r5,#0x00,00206$
      006371 0E               [12] 9967 	inc	r6
      006372 80 E4            [24] 9968 	sjmp	00206$
      006374                       9969 00130$:
                                   9970 ;	calc.c:442: printstr("-\tsubtract top 2\r\n");
      006374 7D D1            [12] 9971 	mov	r5,#___str_36
      006376 7E 8B            [12] 9972 	mov	r6,#(___str_36 >> 8)
      006378 7F 80            [12] 9973 	mov	r7,#0x80
                                   9974 ;	calc.c:53: return;
      00637A                       9975 00209$:
                                   9976 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00637A 8D 82            [24] 9977 	mov	dpl,r5
      00637C 8E 83            [24] 9978 	mov	dph,r6
      00637E 8F F0            [24] 9979 	mov	b,r7
      006380 12 70 CC         [24] 9980 	lcall	__gptrget
      006383 FC               [12] 9981 	mov	r4,a
      006384 60 10            [24] 9982 	jz	00132$
      006386 7B 00            [12] 9983 	mov	r3,#0x00
      006388 8C 82            [24] 9984 	mov	dpl,r4
      00638A 8B 83            [24] 9985 	mov	dph,r3
      00638C 12 2B 70         [24] 9986 	lcall	_putchar
      00638F 0D               [12] 9987 	inc	r5
                                   9988 ;	calc.c:442: printstr("-\tsubtract top 2\r\n");
      006390 BD 00 E7         [24] 9989 	cjne	r5,#0x00,00209$
      006393 0E               [12] 9990 	inc	r6
      006394 80 E4            [24] 9991 	sjmp	00209$
      006396                       9992 00132$:
                                   9993 ;	calc.c:443: printstr("*\tmultiply top 2\r\n");
      006396 7D E4            [12] 9994 	mov	r5,#___str_37
      006398 7E 8B            [12] 9995 	mov	r6,#(___str_37 >> 8)
      00639A 7F 80            [12] 9996 	mov	r7,#0x80
                                   9997 ;	calc.c:53: return;
      00639C                       9998 00212$:
                                   9999 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00639C 8D 82            [24]10000 	mov	dpl,r5
      00639E 8E 83            [24]10001 	mov	dph,r6
      0063A0 8F F0            [24]10002 	mov	b,r7
      0063A2 12 70 CC         [24]10003 	lcall	__gptrget
      0063A5 FC               [12]10004 	mov	r4,a
      0063A6 60 10            [24]10005 	jz	00134$
      0063A8 7B 00            [12]10006 	mov	r3,#0x00
      0063AA 8C 82            [24]10007 	mov	dpl,r4
      0063AC 8B 83            [24]10008 	mov	dph,r3
      0063AE 12 2B 70         [24]10009 	lcall	_putchar
      0063B1 0D               [12]10010 	inc	r5
                                  10011 ;	calc.c:443: printstr("*\tmultiply top 2\r\n");
      0063B2 BD 00 E7         [24]10012 	cjne	r5,#0x00,00212$
      0063B5 0E               [12]10013 	inc	r6
      0063B6 80 E4            [24]10014 	sjmp	00212$
      0063B8                      10015 00134$:
                                  10016 ;	calc.c:444: printstr("/\tdivide top 2\r\n");
      0063B8 7D F7            [12]10017 	mov	r5,#___str_38
      0063BA 7E 8B            [12]10018 	mov	r6,#(___str_38 >> 8)
      0063BC 7F 80            [12]10019 	mov	r7,#0x80
                                  10020 ;	calc.c:53: return;
      0063BE                      10021 00215$:
                                  10022 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0063BE 8D 82            [24]10023 	mov	dpl,r5
      0063C0 8E 83            [24]10024 	mov	dph,r6
      0063C2 8F F0            [24]10025 	mov	b,r7
      0063C4 12 70 CC         [24]10026 	lcall	__gptrget
      0063C7 FC               [12]10027 	mov	r4,a
      0063C8 60 10            [24]10028 	jz	00136$
      0063CA 7B 00            [12]10029 	mov	r3,#0x00
      0063CC 8C 82            [24]10030 	mov	dpl,r4
      0063CE 8B 83            [24]10031 	mov	dph,r3
      0063D0 12 2B 70         [24]10032 	lcall	_putchar
      0063D3 0D               [12]10033 	inc	r5
                                  10034 ;	calc.c:444: printstr("/\tdivide top 2\r\n");
      0063D4 BD 00 E7         [24]10035 	cjne	r5,#0x00,00215$
      0063D7 0E               [12]10036 	inc	r6
      0063D8 80 E4            [24]10037 	sjmp	00215$
      0063DA                      10038 00136$:
                                  10039 ;	calc.c:445: printstr("\\\tdivide top 2 unsigned\r\n");	
      0063DA 7D 08            [12]10040 	mov	r5,#___str_39
      0063DC 7E 8C            [12]10041 	mov	r6,#(___str_39 >> 8)
      0063DE 7F 80            [12]10042 	mov	r7,#0x80
                                  10043 ;	calc.c:53: return;
      0063E0                      10044 00218$:
                                  10045 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0063E0 8D 82            [24]10046 	mov	dpl,r5
      0063E2 8E 83            [24]10047 	mov	dph,r6
      0063E4 8F F0            [24]10048 	mov	b,r7
      0063E6 12 70 CC         [24]10049 	lcall	__gptrget
      0063E9 FC               [12]10050 	mov	r4,a
      0063EA 60 10            [24]10051 	jz	00138$
      0063EC 7B 00            [12]10052 	mov	r3,#0x00
      0063EE 8C 82            [24]10053 	mov	dpl,r4
      0063F0 8B 83            [24]10054 	mov	dph,r3
      0063F2 12 2B 70         [24]10055 	lcall	_putchar
      0063F5 0D               [12]10056 	inc	r5
                                  10057 ;	calc.c:445: printstr("\\\tdivide top 2 unsigned\r\n");	
      0063F6 BD 00 E7         [24]10058 	cjne	r5,#0x00,00218$
      0063F9 0E               [12]10059 	inc	r6
      0063FA 80 E4            [24]10060 	sjmp	00218$
      0063FC                      10061 00138$:
                                  10062 ;	calc.c:446: printstr("%\tmodulus top 2\r\n");
      0063FC 7D 22            [12]10063 	mov	r5,#___str_40
      0063FE 7E 8C            [12]10064 	mov	r6,#(___str_40 >> 8)
      006400 7F 80            [12]10065 	mov	r7,#0x80
                                  10066 ;	calc.c:53: return;
      006402                      10067 00221$:
                                  10068 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006402 8D 82            [24]10069 	mov	dpl,r5
      006404 8E 83            [24]10070 	mov	dph,r6
      006406 8F F0            [24]10071 	mov	b,r7
      006408 12 70 CC         [24]10072 	lcall	__gptrget
      00640B FC               [12]10073 	mov	r4,a
      00640C 60 10            [24]10074 	jz	00140$
      00640E 7B 00            [12]10075 	mov	r3,#0x00
      006410 8C 82            [24]10076 	mov	dpl,r4
      006412 8B 83            [24]10077 	mov	dph,r3
      006414 12 2B 70         [24]10078 	lcall	_putchar
      006417 0D               [12]10079 	inc	r5
                                  10080 ;	calc.c:446: printstr("%\tmodulus top 2\r\n");
      006418 BD 00 E7         [24]10081 	cjne	r5,#0x00,00221$
      00641B 0E               [12]10082 	inc	r6
      00641C 80 E4            [24]10083 	sjmp	00221$
      00641E                      10084 00140$:
                                  10085 ;	calc.c:447: printstr("#\tmodulus top 2 unsigned\r\n");
      00641E 7D 34            [12]10086 	mov	r5,#___str_41
      006420 7E 8C            [12]10087 	mov	r6,#(___str_41 >> 8)
      006422 7F 80            [12]10088 	mov	r7,#0x80
                                  10089 ;	calc.c:53: return;
      006424                      10090 00224$:
                                  10091 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006424 8D 82            [24]10092 	mov	dpl,r5
      006426 8E 83            [24]10093 	mov	dph,r6
      006428 8F F0            [24]10094 	mov	b,r7
      00642A 12 70 CC         [24]10095 	lcall	__gptrget
      00642D FC               [12]10096 	mov	r4,a
      00642E 60 10            [24]10097 	jz	00142$
      006430 7B 00            [12]10098 	mov	r3,#0x00
      006432 8C 82            [24]10099 	mov	dpl,r4
      006434 8B 83            [24]10100 	mov	dph,r3
      006436 12 2B 70         [24]10101 	lcall	_putchar
      006439 0D               [12]10102 	inc	r5
                                  10103 ;	calc.c:447: printstr("#\tmodulus top 2 unsigned\r\n");
      00643A BD 00 E7         [24]10104 	cjne	r5,#0x00,00224$
      00643D 0E               [12]10105 	inc	r6
      00643E 80 E4            [24]10106 	sjmp	00224$
      006440                      10107 00142$:
                                  10108 ;	calc.c:448: printstr("&\tand top 2\r\n");
      006440 7D 4F            [12]10109 	mov	r5,#___str_42
      006442 7E 8C            [12]10110 	mov	r6,#(___str_42 >> 8)
      006444 7F 80            [12]10111 	mov	r7,#0x80
                                  10112 ;	calc.c:53: return;
      006446                      10113 00227$:
                                  10114 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006446 8D 82            [24]10115 	mov	dpl,r5
      006448 8E 83            [24]10116 	mov	dph,r6
      00644A 8F F0            [24]10117 	mov	b,r7
      00644C 12 70 CC         [24]10118 	lcall	__gptrget
      00644F FC               [12]10119 	mov	r4,a
      006450 60 10            [24]10120 	jz	00144$
      006452 7B 00            [12]10121 	mov	r3,#0x00
      006454 8C 82            [24]10122 	mov	dpl,r4
      006456 8B 83            [24]10123 	mov	dph,r3
      006458 12 2B 70         [24]10124 	lcall	_putchar
      00645B 0D               [12]10125 	inc	r5
                                  10126 ;	calc.c:448: printstr("&\tand top 2\r\n");
      00645C BD 00 E7         [24]10127 	cjne	r5,#0x00,00227$
      00645F 0E               [12]10128 	inc	r6
      006460 80 E4            [24]10129 	sjmp	00227$
      006462                      10130 00144$:
                                  10131 ;	calc.c:449: printstr("|\tor top 2\r\n");
      006462 7D 5D            [12]10132 	mov	r5,#___str_43
      006464 7E 8C            [12]10133 	mov	r6,#(___str_43 >> 8)
      006466 7F 80            [12]10134 	mov	r7,#0x80
                                  10135 ;	calc.c:53: return;
      006468                      10136 00230$:
                                  10137 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006468 8D 82            [24]10138 	mov	dpl,r5
      00646A 8E 83            [24]10139 	mov	dph,r6
      00646C 8F F0            [24]10140 	mov	b,r7
      00646E 12 70 CC         [24]10141 	lcall	__gptrget
      006471 FC               [12]10142 	mov	r4,a
      006472 60 10            [24]10143 	jz	00146$
      006474 7B 00            [12]10144 	mov	r3,#0x00
      006476 8C 82            [24]10145 	mov	dpl,r4
      006478 8B 83            [24]10146 	mov	dph,r3
      00647A 12 2B 70         [24]10147 	lcall	_putchar
      00647D 0D               [12]10148 	inc	r5
                                  10149 ;	calc.c:449: printstr("|\tor top 2\r\n");
      00647E BD 00 E7         [24]10150 	cjne	r5,#0x00,00230$
      006481 0E               [12]10151 	inc	r6
      006482 80 E4            [24]10152 	sjmp	00230$
      006484                      10153 00146$:
                                  10154 ;	calc.c:450: printstr("^\txor top 2\r\n");
      006484 7D 6A            [12]10155 	mov	r5,#___str_44
      006486 7E 8C            [12]10156 	mov	r6,#(___str_44 >> 8)
      006488 7F 80            [12]10157 	mov	r7,#0x80
                                  10158 ;	calc.c:53: return;
      00648A                      10159 00233$:
                                  10160 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00648A 8D 82            [24]10161 	mov	dpl,r5
      00648C 8E 83            [24]10162 	mov	dph,r6
      00648E 8F F0            [24]10163 	mov	b,r7
      006490 12 70 CC         [24]10164 	lcall	__gptrget
      006493 FC               [12]10165 	mov	r4,a
      006494 60 10            [24]10166 	jz	00148$
      006496 7B 00            [12]10167 	mov	r3,#0x00
      006498 8C 82            [24]10168 	mov	dpl,r4
      00649A 8B 83            [24]10169 	mov	dph,r3
      00649C 12 2B 70         [24]10170 	lcall	_putchar
      00649F 0D               [12]10171 	inc	r5
                                  10172 ;	calc.c:450: printstr("^\txor top 2\r\n");
      0064A0 BD 00 E7         [24]10173 	cjne	r5,#0x00,00233$
      0064A3 0E               [12]10174 	inc	r6
      0064A4 80 E4            [24]10175 	sjmp	00233$
      0064A6                      10176 00148$:
                                  10177 ;	calc.c:451: printstr(">\tshift right top 2\r\n");
      0064A6 7D 78            [12]10178 	mov	r5,#___str_45
      0064A8 7E 8C            [12]10179 	mov	r6,#(___str_45 >> 8)
      0064AA 7F 80            [12]10180 	mov	r7,#0x80
                                  10181 ;	calc.c:53: return;
      0064AC                      10182 00236$:
                                  10183 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0064AC 8D 82            [24]10184 	mov	dpl,r5
      0064AE 8E 83            [24]10185 	mov	dph,r6
      0064B0 8F F0            [24]10186 	mov	b,r7
      0064B2 12 70 CC         [24]10187 	lcall	__gptrget
      0064B5 FC               [12]10188 	mov	r4,a
      0064B6 60 10            [24]10189 	jz	00150$
      0064B8 7B 00            [12]10190 	mov	r3,#0x00
      0064BA 8C 82            [24]10191 	mov	dpl,r4
      0064BC 8B 83            [24]10192 	mov	dph,r3
      0064BE 12 2B 70         [24]10193 	lcall	_putchar
      0064C1 0D               [12]10194 	inc	r5
                                  10195 ;	calc.c:451: printstr(">\tshift right top 2\r\n");
      0064C2 BD 00 E7         [24]10196 	cjne	r5,#0x00,00236$
      0064C5 0E               [12]10197 	inc	r6
      0064C6 80 E4            [24]10198 	sjmp	00236$
      0064C8                      10199 00150$:
                                  10200 ;	calc.c:452: printstr("]\tarithmetic shift right top 2\r\n");
      0064C8 7D 8E            [12]10201 	mov	r5,#___str_46
      0064CA 7E 8C            [12]10202 	mov	r6,#(___str_46 >> 8)
      0064CC 7F 80            [12]10203 	mov	r7,#0x80
                                  10204 ;	calc.c:53: return;
      0064CE                      10205 00239$:
                                  10206 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0064CE 8D 82            [24]10207 	mov	dpl,r5
      0064D0 8E 83            [24]10208 	mov	dph,r6
      0064D2 8F F0            [24]10209 	mov	b,r7
      0064D4 12 70 CC         [24]10210 	lcall	__gptrget
      0064D7 FC               [12]10211 	mov	r4,a
      0064D8 60 10            [24]10212 	jz	00152$
      0064DA 7B 00            [12]10213 	mov	r3,#0x00
      0064DC 8C 82            [24]10214 	mov	dpl,r4
      0064DE 8B 83            [24]10215 	mov	dph,r3
      0064E0 12 2B 70         [24]10216 	lcall	_putchar
      0064E3 0D               [12]10217 	inc	r5
                                  10218 ;	calc.c:452: printstr("]\tarithmetic shift right top 2\r\n");
      0064E4 BD 00 E7         [24]10219 	cjne	r5,#0x00,00239$
      0064E7 0E               [12]10220 	inc	r6
      0064E8 80 E4            [24]10221 	sjmp	00239$
      0064EA                      10222 00152$:
                                  10223 ;	calc.c:453: printstr("<\tshift left top 2\r\n");
      0064EA 7D AF            [12]10224 	mov	r5,#___str_47
      0064EC 7E 8C            [12]10225 	mov	r6,#(___str_47 >> 8)
      0064EE 7F 80            [12]10226 	mov	r7,#0x80
                                  10227 ;	calc.c:53: return;
      0064F0                      10228 00242$:
                                  10229 ;	calc.c:51: for (; *s; s++) putchar(*s);
      0064F0 8D 82            [24]10230 	mov	dpl,r5
      0064F2 8E 83            [24]10231 	mov	dph,r6
      0064F4 8F F0            [24]10232 	mov	b,r7
      0064F6 12 70 CC         [24]10233 	lcall	__gptrget
      0064F9 FC               [12]10234 	mov	r4,a
      0064FA 60 10            [24]10235 	jz	00154$
      0064FC 7B 00            [12]10236 	mov	r3,#0x00
      0064FE 8C 82            [24]10237 	mov	dpl,r4
      006500 8B 83            [24]10238 	mov	dph,r3
      006502 12 2B 70         [24]10239 	lcall	_putchar
      006505 0D               [12]10240 	inc	r5
                                  10241 ;	calc.c:453: printstr("<\tshift left top 2\r\n");
      006506 BD 00 E7         [24]10242 	cjne	r5,#0x00,00242$
      006509 0E               [12]10243 	inc	r6
      00650A 80 E4            [24]10244 	sjmp	00242$
      00650C                      10245 00154$:
                                  10246 ;	calc.c:454: printstr("~\tbitwise not top\r\n");
      00650C 7D C4            [12]10247 	mov	r5,#___str_48
      00650E 7E 8C            [12]10248 	mov	r6,#(___str_48 >> 8)
      006510 7F 80            [12]10249 	mov	r7,#0x80
                                  10250 ;	calc.c:53: return;
      006512                      10251 00245$:
                                  10252 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006512 8D 82            [24]10253 	mov	dpl,r5
      006514 8E 83            [24]10254 	mov	dph,r6
      006516 8F F0            [24]10255 	mov	b,r7
      006518 12 70 CC         [24]10256 	lcall	__gptrget
      00651B FC               [12]10257 	mov	r4,a
      00651C 60 10            [24]10258 	jz	00156$
      00651E 7B 00            [12]10259 	mov	r3,#0x00
      006520 8C 82            [24]10260 	mov	dpl,r4
      006522 8B 83            [24]10261 	mov	dph,r3
      006524 12 2B 70         [24]10262 	lcall	_putchar
      006527 0D               [12]10263 	inc	r5
                                  10264 ;	calc.c:454: printstr("~\tbitwise not top\r\n");
      006528 BD 00 E7         [24]10265 	cjne	r5,#0x00,00245$
      00652B 0E               [12]10266 	inc	r6
      00652C 80 E4            [24]10267 	sjmp	00245$
      00652E                      10268 00156$:
                                  10269 ;	calc.c:455: printstr("s\tstatus\r\n");
      00652E 7D D8            [12]10270 	mov	r5,#___str_49
      006530 7E 8C            [12]10271 	mov	r6,#(___str_49 >> 8)
      006532 7F 80            [12]10272 	mov	r7,#0x80
                                  10273 ;	calc.c:53: return;
      006534                      10274 00248$:
                                  10275 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006534 8D 82            [24]10276 	mov	dpl,r5
      006536 8E 83            [24]10277 	mov	dph,r6
      006538 8F F0            [24]10278 	mov	b,r7
      00653A 12 70 CC         [24]10279 	lcall	__gptrget
      00653D FC               [12]10280 	mov	r4,a
      00653E 60 10            [24]10281 	jz	00158$
      006540 7B 00            [12]10282 	mov	r3,#0x00
      006542 8C 82            [24]10283 	mov	dpl,r4
      006544 8B 83            [24]10284 	mov	dph,r3
      006546 12 2B 70         [24]10285 	lcall	_putchar
      006549 0D               [12]10286 	inc	r5
                                  10287 ;	calc.c:455: printstr("s\tstatus\r\n");
      00654A BD 00 E7         [24]10288 	cjne	r5,#0x00,00248$
      00654D 0E               [12]10289 	inc	r6
      00654E 80 E4            [24]10290 	sjmp	00248$
      006550                      10291 00158$:
                                  10292 ;	calc.c:456: printstr("?\thelp\r\n");
      006550 7D E3            [12]10293 	mov	r5,#___str_50
      006552 7E 8C            [12]10294 	mov	r6,#(___str_50 >> 8)
      006554 7F 80            [12]10295 	mov	r7,#0x80
                                  10296 ;	calc.c:53: return;
      006556                      10297 00251$:
                                  10298 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006556 8D 82            [24]10299 	mov	dpl,r5
      006558 8E 83            [24]10300 	mov	dph,r6
      00655A 8F F0            [24]10301 	mov	b,r7
      00655C 12 70 CC         [24]10302 	lcall	__gptrget
      00655F FC               [12]10303 	mov	r4,a
      006560 60 10            [24]10304 	jz	00160$
      006562 7B 00            [12]10305 	mov	r3,#0x00
      006564 8C 82            [24]10306 	mov	dpl,r4
      006566 8B 83            [24]10307 	mov	dph,r3
      006568 12 2B 70         [24]10308 	lcall	_putchar
      00656B 0D               [12]10309 	inc	r5
                                  10310 ;	calc.c:456: printstr("?\thelp\r\n");
      00656C BD 00 E7         [24]10311 	cjne	r5,#0x00,00251$
      00656F 0E               [12]10312 	inc	r6
      006570 80 E4            [24]10313 	sjmp	00251$
      006572                      10314 00160$:
                                  10315 ;	calc.c:457: printstr("q\tquit\r\n");
      006572 7D EC            [12]10316 	mov	r5,#___str_51
      006574 7E 8C            [12]10317 	mov	r6,#(___str_51 >> 8)
      006576 7F 80            [12]10318 	mov	r7,#0x80
                                  10319 ;	calc.c:53: return;
      006578                      10320 00254$:
                                  10321 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006578 8D 82            [24]10322 	mov	dpl,r5
      00657A 8E 83            [24]10323 	mov	dph,r6
      00657C 8F F0            [24]10324 	mov	b,r7
      00657E 12 70 CC         [24]10325 	lcall	__gptrget
      006581 FC               [12]10326 	mov	r4,a
      006582 60 10            [24]10327 	jz	00162$
      006584 7B 00            [12]10328 	mov	r3,#0x00
      006586 8C 82            [24]10329 	mov	dpl,r4
      006588 8B 83            [24]10330 	mov	dph,r3
      00658A 12 2B 70         [24]10331 	lcall	_putchar
      00658D 0D               [12]10332 	inc	r5
                                  10333 ;	calc.c:457: printstr("q\tquit\r\n");
      00658E BD 00 E7         [24]10334 	cjne	r5,#0x00,00254$
      006591 0E               [12]10335 	inc	r6
      006592 80 E4            [24]10336 	sjmp	00254$
      006594                      10337 00162$:
                                  10338 ;	calc.c:459: return 1;
      006594 90 00 01         [24]10339 	mov	dptr,#0x0001
                                  10340 ;	calc.c:460: }
      006597 D0 08            [24]10341 	pop	_bp
      006599 22               [24]10342 	ret
                                  10343 ;------------------------------------------------------------
                                  10344 ;Allocation info for local variables in function 'main'
                                  10345 ;------------------------------------------------------------
                                  10346 ;input                     Allocated to registers r6 r7 
                                  10347 ;__1966080213              Allocated to registers 
                                  10348 ;s                         Allocated to registers r2 r3 r4 
                                  10349 ;__1310720215              Allocated to registers 
                                  10350 ;s                         Allocated to registers r5 r6 r7 
                                  10351 ;sloc0                     Allocated to stack - _bp +1
                                  10352 ;------------------------------------------------------------
                                  10353 ;	calc.c:490: void main(void) {
                                  10354 ;	-----------------------------------------
                                  10355 ;	 function main
                                  10356 ;	-----------------------------------------
      00659A                      10357 _main:
      00659A C0 08            [24]10358 	push	_bp
      00659C 85 81 08         [24]10359 	mov	_bp,sp
      00659F 05 81            [12]10360 	inc	sp
                                  10361 ;	calc.c:493: giant = 0;
      0065A1 78 09            [12]10362 	mov	r0,#_giant
      0065A3 76 00            [12]10363 	mov	@r0,#0x00
                                  10364 ;	calc.c:495: c.base = 10;
      0065A5 90 90 0C         [24]10365 	mov	dptr,#_c
      0065A8 74 0A            [12]10366 	mov	a,#0x0a
      0065AA F0               [24]10367 	movx	@dptr,a
      0065AB E4               [12]10368 	clr	a
      0065AC A3               [24]10369 	inc	dptr
      0065AD F0               [24]10370 	movx	@dptr,a
                                  10371 ;	calc.c:496: c.acc = 0l;
      0065AE 90 90 0E         [24]10372 	mov	dptr,#(_c + 0x0002)
      0065B1 F0               [24]10373 	movx	@dptr,a
      0065B2 A3               [24]10374 	inc	dptr
      0065B3 F0               [24]10375 	movx	@dptr,a
      0065B4 A3               [24]10376 	inc	dptr
      0065B5 F0               [24]10377 	movx	@dptr,a
      0065B6 A3               [24]10378 	inc	dptr
      0065B7 F0               [24]10379 	movx	@dptr,a
                                  10380 ;	calc.c:497: c.acc_valid = (char)0;
      0065B8 90 90 12         [24]10381 	mov	dptr,#(_c + 0x0006)
      0065BB F0               [24]10382 	movx	@dptr,a
                                  10383 ;	calc.c:498: c.digit[0] = c.digit[1] = '\0';
      0065BC 90 90 14         [24]10384 	mov	dptr,#(_c + 0x0008)
      0065BF F0               [24]10385 	movx	@dptr,a
      0065C0 90 90 13         [24]10386 	mov	dptr,#(_c + 0x0007)
      0065C3 F0               [24]10387 	movx	@dptr,a
                                  10388 ;	calc.c:500: c.ps = &c.s0;
      0065C4 90 D0 1D         [24]10389 	mov	dptr,#(_c + 0x4011)
      0065C7 74 15            [12]10390 	mov	a,#(_c + 0x0009)
      0065C9 F0               [24]10391 	movx	@dptr,a
      0065CA 74 90            [12]10392 	mov	a,#((_c + 0x0009) >> 8)
      0065CC A3               [24]10393 	inc	dptr
      0065CD F0               [24]10394 	movx	@dptr,a
      0065CE E4               [12]10395 	clr	a
      0065CF A3               [24]10396 	inc	dptr
      0065D0 F0               [24]10397 	movx	@dptr,a
                                  10398 ;	calc.c:501: c.ss = &c.s1;
      0065D1 90 D0 20         [24]10399 	mov	dptr,#(_c + 0x4014)
      0065D4 74 19            [12]10400 	mov	a,#(_c + 0x200d)
      0065D6 F0               [24]10401 	movx	@dptr,a
      0065D7 74 B0            [12]10402 	mov	a,#((_c + 0x200d) >> 8)
      0065D9 A3               [24]10403 	inc	dptr
      0065DA F0               [24]10404 	movx	@dptr,a
      0065DB E4               [12]10405 	clr	a
      0065DC A3               [24]10406 	inc	dptr
      0065DD F0               [24]10407 	movx	@dptr,a
                                  10408 ;	calc.c:502: stack_init(c.ps);
      0065DE 90 90 15         [24]10409 	mov	dptr,#(_c + 0x0009)
      0065E1 75 F0 00         [24]10410 	mov	b,#0x00
      0065E4 12 26 80         [24]10411 	lcall	_stack_init
                                  10412 ;	calc.c:503: stack_init(c.ss);
      0065E7 90 D0 20         [24]10413 	mov	dptr,#(_c + 0x4014)
      0065EA E0               [24]10414 	movx	a,@dptr
      0065EB FD               [12]10415 	mov	r5,a
      0065EC A3               [24]10416 	inc	dptr
      0065ED E0               [24]10417 	movx	a,@dptr
      0065EE FE               [12]10418 	mov	r6,a
      0065EF A3               [24]10419 	inc	dptr
      0065F0 E0               [24]10420 	movx	a,@dptr
      0065F1 FF               [12]10421 	mov	r7,a
      0065F2 8D 82            [24]10422 	mov	dpl,r5
      0065F4 8E 83            [24]10423 	mov	dph,r6
      0065F6 8F F0            [24]10424 	mov	b,r7
      0065F8 12 26 80         [24]10425 	lcall	_stack_init
                                  10426 ;	calc.c:505: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      0065FB 74 0C            [12]10427 	mov	a,#_c
      0065FD C0 E0            [24]10428 	push	acc
      0065FF 74 90            [12]10429 	mov	a,#(_c >> 8)
      006601 C0 E0            [24]10430 	push	acc
      006603 E4               [12]10431 	clr	a
      006604 C0 E0            [24]10432 	push	acc
      006606 74 25            [12]10433 	mov	a,#_deltas
      006608 C0 E0            [24]10434 	push	acc
      00660A 74 D0            [12]10435 	mov	a,#(_deltas >> 8)
      00660C C0 E0            [24]10436 	push	acc
      00660E E4               [12]10437 	clr	a
      00660F C0 E0            [24]10438 	push	acc
      006611 C0 E0            [24]10439 	push	acc
      006613 74 80            [12]10440 	mov	a,#0x80
      006615 C0 E0            [24]10441 	push	acc
      006617 74 03            [12]10442 	mov	a,#0x03
      006619 C0 E0            [24]10443 	push	acc
      00661B E4               [12]10444 	clr	a
      00661C C0 E0            [24]10445 	push	acc
      00661E C0 E0            [24]10446 	push	acc
      006620 C0 E0            [24]10447 	push	acc
      006622 90 90 00         [24]10448 	mov	dptr,#_s
      006625 75 F0 00         [24]10449 	mov	b,#0x00
      006628 12 20 90         [24]10450 	lcall	_state_init
      00662B E5 81            [12]10451 	mov	a,sp
      00662D 24 F4            [12]10452 	add	a,#0xf4
      00662F F5 81            [12]10453 	mov	sp,a
                                  10454 ;	calc.c:507: (void)status(&c, deltas);
      006631 74 25            [12]10455 	mov	a,#_deltas
      006633 C0 E0            [24]10456 	push	acc
      006635 74 D0            [12]10457 	mov	a,#(_deltas >> 8)
      006637 C0 E0            [24]10458 	push	acc
      006639 E4               [12]10459 	clr	a
      00663A C0 E0            [24]10460 	push	acc
      00663C 90 90 0C         [24]10461 	mov	dptr,#_c
      00663F 75 F0 00         [24]10462 	mov	b,#0x00
      006642 12 59 12         [24]10463 	lcall	_status
      006645 15 81            [12]10464 	dec	sp
      006647 15 81            [12]10465 	dec	sp
      006649 15 81            [12]10466 	dec	sp
                                  10467 ;	calc.c:509: while (1) {
      00664B                      10468 00192$:
                                  10469 ;	calc.c:510: input = getchar();
      00664B 12 2B 75         [24]10470 	lcall	_getchar
      00664E AE 82            [24]10471 	mov	r6,dpl
      006650 AF 83            [24]10472 	mov	r7,dph
                                  10473 ;	calc.c:511: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      006652 8E 05            [24]10474 	mov	ar5,r6
      006654 BD 0D 02         [24]10475 	cjne	r5,#0x0d,00400$
      006657 80 03            [24]10476 	sjmp	00101$
      006659                      10477 00400$:
      006659 BD 0A 36         [24]10478 	cjne	r5,#0x0a,00102$
      00665C                      10479 00101$:
      00665C 7A 64            [12]10480 	mov	r2,#___str_3
      00665E 7B 89            [12]10481 	mov	r3,#(___str_3 >> 8)
      006660 7C 80            [12]10482 	mov	r4,#0x80
                                  10483 ;	calc.c:53: return;
      006662                      10484 00199$:
                                  10485 ;	calc.c:51: for (; *s; s++) putchar(*s);
      006662 8A 82            [24]10486 	mov	dpl,r2
      006664 8B 83            [24]10487 	mov	dph,r3
      006666 8C F0            [24]10488 	mov	b,r4
      006668 A8 08            [24]10489 	mov	r0,_bp
      00666A 08               [12]10490 	inc	r0
      00666B 12 70 CC         [24]10491 	lcall	__gptrget
      00666E F6               [12]10492 	mov	@r0,a
      00666F A8 08            [24]10493 	mov	r0,_bp
      006671 08               [12]10494 	inc	r0
      006672 E6               [12]10495 	mov	a,@r0
      006673 60 24            [24]10496 	jz	00103$
      006675 C0 06            [24]10497 	push	ar6
      006677 C0 07            [24]10498 	push	ar7
      006679 A8 08            [24]10499 	mov	r0,_bp
      00667B 08               [12]10500 	inc	r0
      00667C 86 06            [24]10501 	mov	ar6,@r0
      00667E 7F 00            [12]10502 	mov	r7,#0x00
      006680 8E 82            [24]10503 	mov	dpl,r6
      006682 8F 83            [24]10504 	mov	dph,r7
      006684 12 2B 70         [24]10505 	lcall	_putchar
      006687 0A               [12]10506 	inc	r2
      006688 BA 00 01         [24]10507 	cjne	r2,#0x00,00404$
      00668B 0B               [12]10508 	inc	r3
      00668C                      10509 00404$:
      00668C D0 07            [24]10510 	pop	ar7
      00668E D0 06            [24]10511 	pop	ar6
                                  10512 ;	calc.c:511: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      006690 80 D0            [24]10513 	sjmp	00199$
      006692                      10514 00102$:
                                  10515 ;	calc.c:512: else (void)putchar(input);
      006692 8E 82            [24]10516 	mov	dpl,r6
      006694 8F 83            [24]10517 	mov	dph,r7
      006696 12 2B 70         [24]10518 	lcall	_putchar
      006699                      10519 00103$:
                                  10520 ;	calc.c:513: c.digit[0] = (char)input;
      006699 90 90 13         [24]10521 	mov	dptr,#(_c + 0x0007)
      00669C ED               [12]10522 	mov	a,r5
      00669D F0               [24]10523 	movx	@dptr,a
                                  10524 ;	calc.c:515: if ((char)input == 'q') {
      00669E BD 71 29         [24]10525 	cjne	r5,#0x71,00189$
                                  10526 ;	calc.c:516: if (state_exec(&s, EVENT_TERM) <= 0) break;
      0066A1 74 08            [12]10527 	mov	a,#0x08
      0066A3 C0 E0            [24]10528 	push	acc
      0066A5 E4               [12]10529 	clr	a
      0066A6 C0 E0            [24]10530 	push	acc
      0066A8 90 90 00         [24]10531 	mov	dptr,#_s
      0066AB 75 F0 00         [24]10532 	mov	b,#0x00
      0066AE 12 21 46         [24]10533 	lcall	_state_exec
      0066B1 AB 82            [24]10534 	mov	r3,dpl
      0066B3 AC 83            [24]10535 	mov	r4,dph
      0066B5 15 81            [12]10536 	dec	sp
      0066B7 15 81            [12]10537 	dec	sp
      0066B9 C3               [12]10538 	clr	c
      0066BA E4               [12]10539 	clr	a
      0066BB 9B               [12]10540 	subb	a,r3
      0066BC 74 80            [12]10541 	mov	a,#(0x00 ^ 0x80)
      0066BE 8C F0            [24]10542 	mov	b,r4
      0066C0 63 F0 80         [24]10543 	xrl	b,#0x80
      0066C3 95 F0            [12]10544 	subb	a,b
      0066C5 40 84            [24]10545 	jc	00192$
      0066C7 02 69 79         [24]10546 	ljmp	00193$
      0066CA                      10547 00189$:
                                  10548 ;	calc.c:517: } else if ((char)input == 's') {
      0066CA BD 73 2C         [24]10549 	cjne	r5,#0x73,00186$
                                  10550 ;	calc.c:518: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      0066CD 74 03            [12]10551 	mov	a,#0x03
      0066CF C0 E0            [24]10552 	push	acc
      0066D1 E4               [12]10553 	clr	a
      0066D2 C0 E0            [24]10554 	push	acc
      0066D4 90 90 00         [24]10555 	mov	dptr,#_s
      0066D7 75 F0 00         [24]10556 	mov	b,#0x00
      0066DA 12 21 46         [24]10557 	lcall	_state_exec
      0066DD AB 82            [24]10558 	mov	r3,dpl
      0066DF AC 83            [24]10559 	mov	r4,dph
      0066E1 15 81            [12]10560 	dec	sp
      0066E3 15 81            [12]10561 	dec	sp
      0066E5 C3               [12]10562 	clr	c
      0066E6 E4               [12]10563 	clr	a
      0066E7 9B               [12]10564 	subb	a,r3
      0066E8 74 80            [12]10565 	mov	a,#(0x00 ^ 0x80)
      0066EA 8C F0            [24]10566 	mov	b,r4
      0066EC 63 F0 80         [24]10567 	xrl	b,#0x80
      0066EF 95 F0            [12]10568 	subb	a,b
      0066F1 50 03            [24]10569 	jnc	00410$
      0066F3 02 66 4B         [24]10570 	ljmp	00192$
      0066F6                      10571 00410$:
      0066F6 02 69 79         [24]10572 	ljmp	00193$
      0066F9                      10573 00186$:
                                  10574 ;	calc.c:519: } else if ((char)input == '?') {
      0066F9 BD 3F 2C         [24]10575 	cjne	r5,#0x3f,00183$
                                  10576 ;	calc.c:520: if (state_exec(&s, EVENT_HELP) <= 0) break;
      0066FC 74 04            [12]10577 	mov	a,#0x04
      0066FE C0 E0            [24]10578 	push	acc
      006700 E4               [12]10579 	clr	a
      006701 C0 E0            [24]10580 	push	acc
      006703 90 90 00         [24]10581 	mov	dptr,#_s
      006706 75 F0 00         [24]10582 	mov	b,#0x00
      006709 12 21 46         [24]10583 	lcall	_state_exec
      00670C AB 82            [24]10584 	mov	r3,dpl
      00670E AC 83            [24]10585 	mov	r4,dph
      006710 15 81            [12]10586 	dec	sp
      006712 15 81            [12]10587 	dec	sp
      006714 C3               [12]10588 	clr	c
      006715 E4               [12]10589 	clr	a
      006716 9B               [12]10590 	subb	a,r3
      006717 74 80            [12]10591 	mov	a,#(0x00 ^ 0x80)
      006719 8C F0            [24]10592 	mov	b,r4
      00671B 63 F0 80         [24]10593 	xrl	b,#0x80
      00671E 95 F0            [12]10594 	subb	a,b
      006720 50 03            [24]10595 	jnc	00413$
      006722 02 66 4B         [24]10596 	ljmp	00192$
      006725                      10597 00413$:
      006725 02 69 79         [24]10598 	ljmp	00193$
      006728                      10599 00183$:
                                  10600 ;	calc.c:521: } else if ((char)input == 'i') {
      006728 BD 69 2C         [24]10601 	cjne	r5,#0x69,00180$
                                  10602 ;	calc.c:522: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      00672B 74 06            [12]10603 	mov	a,#0x06
      00672D C0 E0            [24]10604 	push	acc
      00672F E4               [12]10605 	clr	a
      006730 C0 E0            [24]10606 	push	acc
      006732 90 90 00         [24]10607 	mov	dptr,#_s
      006735 75 F0 00         [24]10608 	mov	b,#0x00
      006738 12 21 46         [24]10609 	lcall	_state_exec
      00673B AB 82            [24]10610 	mov	r3,dpl
      00673D AC 83            [24]10611 	mov	r4,dph
      00673F 15 81            [12]10612 	dec	sp
      006741 15 81            [12]10613 	dec	sp
      006743 C3               [12]10614 	clr	c
      006744 E4               [12]10615 	clr	a
      006745 9B               [12]10616 	subb	a,r3
      006746 74 80            [12]10617 	mov	a,#(0x00 ^ 0x80)
      006748 8C F0            [24]10618 	mov	b,r4
      00674A 63 F0 80         [24]10619 	xrl	b,#0x80
      00674D 95 F0            [12]10620 	subb	a,b
      00674F 50 03            [24]10621 	jnc	00416$
      006751 02 66 4B         [24]10622 	ljmp	00192$
      006754                      10623 00416$:
      006754 02 69 79         [24]10624 	ljmp	00193$
      006757                      10625 00180$:
                                  10626 ;	calc.c:523: } else if ((char)input == 'I') {
      006757 BD 49 2C         [24]10627 	cjne	r5,#0x49,00177$
                                  10628 ;	calc.c:524: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      00675A 74 07            [12]10629 	mov	a,#0x07
      00675C C0 E0            [24]10630 	push	acc
      00675E E4               [12]10631 	clr	a
      00675F C0 E0            [24]10632 	push	acc
      006761 90 90 00         [24]10633 	mov	dptr,#_s
      006764 75 F0 00         [24]10634 	mov	b,#0x00
      006767 12 21 46         [24]10635 	lcall	_state_exec
      00676A AB 82            [24]10636 	mov	r3,dpl
      00676C AC 83            [24]10637 	mov	r4,dph
      00676E 15 81            [12]10638 	dec	sp
      006770 15 81            [12]10639 	dec	sp
      006772 C3               [12]10640 	clr	c
      006773 E4               [12]10641 	clr	a
      006774 9B               [12]10642 	subb	a,r3
      006775 74 80            [12]10643 	mov	a,#(0x00 ^ 0x80)
      006777 8C F0            [24]10644 	mov	b,r4
      006779 63 F0 80         [24]10645 	xrl	b,#0x80
      00677C 95 F0            [12]10646 	subb	a,b
      00677E 50 03            [24]10647 	jnc	00419$
      006780 02 66 4B         [24]10648 	ljmp	00192$
      006783                      10649 00419$:
      006783 02 69 79         [24]10650 	ljmp	00193$
      006786                      10651 00177$:
                                  10652 ;	calc.c:526: ((char)input == 'h') || ((char)input == 'H') ||
      006786 BD 68 02         [24]10653 	cjne	r5,#0x68,00420$
      006789 80 0D            [24]10654 	sjmp	00170$
      00678B                      10655 00420$:
      00678B BD 48 02         [24]10656 	cjne	r5,#0x48,00421$
      00678E 80 08            [24]10657 	sjmp	00170$
      006790                      10658 00421$:
                                  10659 ;	calc.c:527: ((char)input == 'o') || ((char)input == 'O')
      006790 BD 6F 02         [24]10660 	cjne	r5,#0x6f,00422$
      006793 80 03            [24]10661 	sjmp	00170$
      006795                      10662 00422$:
      006795 BD 4F 2C         [24]10663 	cjne	r5,#0x4f,00171$
      006798                      10664 00170$:
                                  10665 ;	calc.c:529: if (state_exec(&s, EVENT_BASE) <= 0) break;
      006798 74 05            [12]10666 	mov	a,#0x05
      00679A C0 E0            [24]10667 	push	acc
      00679C E4               [12]10668 	clr	a
      00679D C0 E0            [24]10669 	push	acc
      00679F 90 90 00         [24]10670 	mov	dptr,#_s
      0067A2 75 F0 00         [24]10671 	mov	b,#0x00
      0067A5 12 21 46         [24]10672 	lcall	_state_exec
      0067A8 AB 82            [24]10673 	mov	r3,dpl
      0067AA AC 83            [24]10674 	mov	r4,dph
      0067AC 15 81            [12]10675 	dec	sp
      0067AE 15 81            [12]10676 	dec	sp
      0067B0 C3               [12]10677 	clr	c
      0067B1 E4               [12]10678 	clr	a
      0067B2 9B               [12]10679 	subb	a,r3
      0067B3 74 80            [12]10680 	mov	a,#(0x00 ^ 0x80)
      0067B5 8C F0            [24]10681 	mov	b,r4
      0067B7 63 F0 80         [24]10682 	xrl	b,#0x80
      0067BA 95 F0            [12]10683 	subb	a,b
      0067BC 50 03            [24]10684 	jnc	00425$
      0067BE 02 66 4B         [24]10685 	ljmp	00192$
      0067C1                      10686 00425$:
      0067C1 02 69 79         [24]10687 	ljmp	00193$
      0067C4                      10688 00171$:
                                  10689 ;	calc.c:530: } else if (isxdigit(input)) {
      0067C4 8E 82            [24]10690 	mov	dpl,r6
      0067C6 8F 83            [24]10691 	mov	dph,r7
      0067C8 C0 05            [24]10692 	push	ar5
      0067CA 12 69 A3         [24]10693 	lcall	_isxdigit
      0067CD E5 82            [12]10694 	mov	a,dpl
      0067CF 85 83 F0         [24]10695 	mov	b,dph
      0067D2 D0 05            [24]10696 	pop	ar5
      0067D4 45 F0            [12]10697 	orl	a,b
      0067D6 60 2C            [24]10698 	jz	00168$
                                  10699 ;	calc.c:531: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      0067D8 74 01            [12]10700 	mov	a,#0x01
      0067DA C0 E0            [24]10701 	push	acc
      0067DC E4               [12]10702 	clr	a
      0067DD C0 E0            [24]10703 	push	acc
      0067DF 90 90 00         [24]10704 	mov	dptr,#_s
      0067E2 75 F0 00         [24]10705 	mov	b,#0x00
      0067E5 12 21 46         [24]10706 	lcall	_state_exec
      0067E8 AE 82            [24]10707 	mov	r6,dpl
      0067EA AF 83            [24]10708 	mov	r7,dph
      0067EC 15 81            [12]10709 	dec	sp
      0067EE 15 81            [12]10710 	dec	sp
      0067F0 C3               [12]10711 	clr	c
      0067F1 E4               [12]10712 	clr	a
      0067F2 9E               [12]10713 	subb	a,r6
      0067F3 74 80            [12]10714 	mov	a,#(0x00 ^ 0x80)
      0067F5 8F F0            [24]10715 	mov	b,r7
      0067F7 63 F0 80         [24]10716 	xrl	b,#0x80
      0067FA 95 F0            [12]10717 	subb	a,b
      0067FC 50 03            [24]10718 	jnc	00427$
      0067FE 02 66 4B         [24]10719 	ljmp	00192$
      006801                      10720 00427$:
      006801 02 69 79         [24]10721 	ljmp	00193$
      006804                      10722 00168$:
                                  10723 ;	calc.c:533: ((char)input == 'p') || ((char)input == 'P') ||
      006804 BD 70 02         [24]10724 	cjne	r5,#0x70,00428$
      006807 80 17            [24]10725 	sjmp	00159$
      006809                      10726 00428$:
      006809 BD 50 02         [24]10727 	cjne	r5,#0x50,00429$
      00680C 80 12            [24]10728 	sjmp	00159$
      00680E                      10729 00429$:
                                  10730 ;	calc.c:534: ((char)input == 'v') || ((char)input == 'V') ||
      00680E BD 76 02         [24]10731 	cjne	r5,#0x76,00430$
      006811 80 0D            [24]10732 	sjmp	00159$
      006813                      10733 00430$:
      006813 BD 56 02         [24]10734 	cjne	r5,#0x56,00431$
      006816 80 08            [24]10735 	sjmp	00159$
      006818                      10736 00431$:
                                  10737 ;	calc.c:535: ((char)input == '.') ||
      006818 BD 2E 02         [24]10738 	cjne	r5,#0x2e,00432$
      00681B 80 03            [24]10739 	sjmp	00159$
      00681D                      10740 00432$:
                                  10741 ;	calc.c:536: ((char)input == 'x')
      00681D BD 78 2C         [24]10742 	cjne	r5,#0x78,00160$
      006820                      10743 00159$:
                                  10744 ;	calc.c:538: if (state_exec(&s, EVENT_OP) <= 0) break;
      006820 74 02            [12]10745 	mov	a,#0x02
      006822 C0 E0            [24]10746 	push	acc
      006824 E4               [12]10747 	clr	a
      006825 C0 E0            [24]10748 	push	acc
      006827 90 90 00         [24]10749 	mov	dptr,#_s
      00682A 75 F0 00         [24]10750 	mov	b,#0x00
      00682D 12 21 46         [24]10751 	lcall	_state_exec
      006830 AE 82            [24]10752 	mov	r6,dpl
      006832 AF 83            [24]10753 	mov	r7,dph
      006834 15 81            [12]10754 	dec	sp
      006836 15 81            [12]10755 	dec	sp
      006838 C3               [12]10756 	clr	c
      006839 E4               [12]10757 	clr	a
      00683A 9E               [12]10758 	subb	a,r6
      00683B 74 80            [12]10759 	mov	a,#(0x00 ^ 0x80)
      00683D 8F F0            [24]10760 	mov	b,r7
      00683F 63 F0 80         [24]10761 	xrl	b,#0x80
      006842 95 F0            [12]10762 	subb	a,b
      006844 50 03            [24]10763 	jnc	00435$
      006846 02 66 4B         [24]10764 	ljmp	00192$
      006849                      10765 00435$:
      006849 02 69 79         [24]10766 	ljmp	00193$
      00684C                      10767 00160$:
                                  10768 ;	calc.c:540: ((char)input == 'X') || ((char)input == 'T') ||
      00684C BD 58 02         [24]10769 	cjne	r5,#0x58,00436$
      00684F 80 17            [24]10770 	sjmp	00151$
      006851                      10771 00436$:
      006851 BD 54 02         [24]10772 	cjne	r5,#0x54,00437$
      006854 80 12            [24]10773 	sjmp	00151$
      006856                      10774 00437$:
                                  10775 ;	calc.c:541: ((char)input == 'm') || ((char)input == 'M') ||
      006856 BD 6D 02         [24]10776 	cjne	r5,#0x6d,00438$
      006859 80 0D            [24]10777 	sjmp	00151$
      00685B                      10778 00438$:
      00685B BD 4D 02         [24]10779 	cjne	r5,#0x4d,00439$
      00685E 80 08            [24]10780 	sjmp	00151$
      006860                      10781 00439$:
                                  10782 ;	calc.c:542: ((char)input == 'u') || ((char)input == 'U')
      006860 BD 75 02         [24]10783 	cjne	r5,#0x75,00440$
      006863 80 03            [24]10784 	sjmp	00151$
      006865                      10785 00440$:
      006865 BD 55 2C         [24]10786 	cjne	r5,#0x55,00152$
      006868                      10787 00151$:
                                  10788 ;	calc.c:544: if (state_exec(&s, EVENT_OP) <= 0) break;
      006868 74 02            [12]10789 	mov	a,#0x02
      00686A C0 E0            [24]10790 	push	acc
      00686C E4               [12]10791 	clr	a
      00686D C0 E0            [24]10792 	push	acc
      00686F 90 90 00         [24]10793 	mov	dptr,#_s
      006872 75 F0 00         [24]10794 	mov	b,#0x00
      006875 12 21 46         [24]10795 	lcall	_state_exec
      006878 AE 82            [24]10796 	mov	r6,dpl
      00687A AF 83            [24]10797 	mov	r7,dph
      00687C 15 81            [12]10798 	dec	sp
      00687E 15 81            [12]10799 	dec	sp
      006880 C3               [12]10800 	clr	c
      006881 E4               [12]10801 	clr	a
      006882 9E               [12]10802 	subb	a,r6
      006883 74 80            [12]10803 	mov	a,#(0x00 ^ 0x80)
      006885 8F F0            [24]10804 	mov	b,r7
      006887 63 F0 80         [24]10805 	xrl	b,#0x80
      00688A 95 F0            [12]10806 	subb	a,b
      00688C 50 03            [24]10807 	jnc	00443$
      00688E 02 66 4B         [24]10808 	ljmp	00192$
      006891                      10809 00443$:
      006891 02 69 79         [24]10810 	ljmp	00193$
      006894                      10811 00152$:
                                  10812 ;	calc.c:546: ((char)input == '+') || ((char)input == '-')
      006894 BD 2B 02         [24]10813 	cjne	r5,#0x2b,00444$
      006897 80 03            [24]10814 	sjmp	00147$
      006899                      10815 00444$:
      006899 BD 2D 2C         [24]10816 	cjne	r5,#0x2d,00148$
      00689C                      10817 00147$:
                                  10818 ;	calc.c:548: if (state_exec(&s, EVENT_OP) <= 0) break;
      00689C 74 02            [12]10819 	mov	a,#0x02
      00689E C0 E0            [24]10820 	push	acc
      0068A0 E4               [12]10821 	clr	a
      0068A1 C0 E0            [24]10822 	push	acc
      0068A3 90 90 00         [24]10823 	mov	dptr,#_s
      0068A6 75 F0 00         [24]10824 	mov	b,#0x00
      0068A9 12 21 46         [24]10825 	lcall	_state_exec
      0068AC AE 82            [24]10826 	mov	r6,dpl
      0068AE AF 83            [24]10827 	mov	r7,dph
      0068B0 15 81            [12]10828 	dec	sp
      0068B2 15 81            [12]10829 	dec	sp
      0068B4 C3               [12]10830 	clr	c
      0068B5 E4               [12]10831 	clr	a
      0068B6 9E               [12]10832 	subb	a,r6
      0068B7 74 80            [12]10833 	mov	a,#(0x00 ^ 0x80)
      0068B9 8F F0            [24]10834 	mov	b,r7
      0068BB 63 F0 80         [24]10835 	xrl	b,#0x80
      0068BE 95 F0            [12]10836 	subb	a,b
      0068C0 50 03            [24]10837 	jnc	00447$
      0068C2 02 66 4B         [24]10838 	ljmp	00192$
      0068C5                      10839 00447$:
      0068C5 02 69 79         [24]10840 	ljmp	00193$
      0068C8                      10841 00148$:
                                  10842 ;	calc.c:550: ((char)input == '*') ||
      0068C8 BD 2A 02         [24]10843 	cjne	r5,#0x2a,00448$
      0068CB 80 12            [24]10844 	sjmp	00140$
      0068CD                      10845 00448$:
                                  10846 ;	calc.c:551: ((char)input == '/') || ((char)input == '\\') ||
      0068CD BD 2F 02         [24]10847 	cjne	r5,#0x2f,00449$
      0068D0 80 0D            [24]10848 	sjmp	00140$
      0068D2                      10849 00449$:
      0068D2 BD 5C 02         [24]10850 	cjne	r5,#0x5c,00450$
      0068D5 80 08            [24]10851 	sjmp	00140$
      0068D7                      10852 00450$:
                                  10853 ;	calc.c:552: ((char)input == '%') || ((char)input == '#')
      0068D7 BD 25 02         [24]10854 	cjne	r5,#0x25,00451$
      0068DA 80 03            [24]10855 	sjmp	00140$
      0068DC                      10856 00451$:
      0068DC BD 23 29         [24]10857 	cjne	r5,#0x23,00141$
      0068DF                      10858 00140$:
                                  10859 ;	calc.c:554: if (state_exec(&s, EVENT_OP) <= 0) break;
      0068DF 74 02            [12]10860 	mov	a,#0x02
      0068E1 C0 E0            [24]10861 	push	acc
      0068E3 E4               [12]10862 	clr	a
      0068E4 C0 E0            [24]10863 	push	acc
      0068E6 90 90 00         [24]10864 	mov	dptr,#_s
      0068E9 75 F0 00         [24]10865 	mov	b,#0x00
      0068EC 12 21 46         [24]10866 	lcall	_state_exec
      0068EF AE 82            [24]10867 	mov	r6,dpl
      0068F1 AF 83            [24]10868 	mov	r7,dph
      0068F3 15 81            [12]10869 	dec	sp
      0068F5 15 81            [12]10870 	dec	sp
      0068F7 C3               [12]10871 	clr	c
      0068F8 E4               [12]10872 	clr	a
      0068F9 9E               [12]10873 	subb	a,r6
      0068FA 74 80            [12]10874 	mov	a,#(0x00 ^ 0x80)
      0068FC 8F F0            [24]10875 	mov	b,r7
      0068FE 63 F0 80         [24]10876 	xrl	b,#0x80
      006901 95 F0            [12]10877 	subb	a,b
      006903 50 74            [24]10878 	jnc	00193$
      006905 02 66 4B         [24]10879 	ljmp	00192$
      006908                      10880 00141$:
                                  10881 ;	calc.c:556: ((char)input == '&') ||
      006908 BD 26 02         [24]10882 	cjne	r5,#0x26,00455$
      00690B 80 1C            [24]10883 	sjmp	00131$
      00690D                      10884 00455$:
                                  10885 ;	calc.c:557: ((char)input == '|') || ((char)input == '^') ||
      00690D BD 7C 02         [24]10886 	cjne	r5,#0x7c,00456$
      006910 80 17            [24]10887 	sjmp	00131$
      006912                      10888 00456$:
      006912 BD 5E 02         [24]10889 	cjne	r5,#0x5e,00457$
      006915 80 12            [24]10890 	sjmp	00131$
      006917                      10891 00457$:
                                  10892 ;	calc.c:558: ((char)input == '~') ||
      006917 BD 7E 02         [24]10893 	cjne	r5,#0x7e,00458$
      00691A 80 0D            [24]10894 	sjmp	00131$
      00691C                      10895 00458$:
                                  10896 ;	calc.c:559: ((char)input == '>') || ((char)input == ']') ||
      00691C BD 3E 02         [24]10897 	cjne	r5,#0x3e,00459$
      00691F 80 08            [24]10898 	sjmp	00131$
      006921                      10899 00459$:
      006921 BD 5D 02         [24]10900 	cjne	r5,#0x5d,00460$
      006924 80 03            [24]10901 	sjmp	00131$
      006926                      10902 00460$:
                                  10903 ;	calc.c:560: ((char)input == '<')
      006926 BD 3C 29         [24]10904 	cjne	r5,#0x3c,00132$
      006929                      10905 00131$:
                                  10906 ;	calc.c:562: if (state_exec(&s, EVENT_OP) <= 0) break;
      006929 74 02            [12]10907 	mov	a,#0x02
      00692B C0 E0            [24]10908 	push	acc
      00692D E4               [12]10909 	clr	a
      00692E C0 E0            [24]10910 	push	acc
      006930 90 90 00         [24]10911 	mov	dptr,#_s
      006933 75 F0 00         [24]10912 	mov	b,#0x00
      006936 12 21 46         [24]10913 	lcall	_state_exec
      006939 AE 82            [24]10914 	mov	r6,dpl
      00693B AF 83            [24]10915 	mov	r7,dph
      00693D 15 81            [12]10916 	dec	sp
      00693F 15 81            [12]10917 	dec	sp
      006941 C3               [12]10918 	clr	c
      006942 E4               [12]10919 	clr	a
      006943 9E               [12]10920 	subb	a,r6
      006944 74 80            [12]10921 	mov	a,#(0x00 ^ 0x80)
      006946 8F F0            [24]10922 	mov	b,r7
      006948 63 F0 80         [24]10923 	xrl	b,#0x80
      00694B 95 F0            [12]10924 	subb	a,b
      00694D 50 2A            [24]10925 	jnc	00193$
      00694F 02 66 4B         [24]10926 	ljmp	00192$
      006952                      10927 00132$:
                                  10928 ;	calc.c:564: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      006952 E4               [12]10929 	clr	a
      006953 C0 E0            [24]10930 	push	acc
      006955 C0 E0            [24]10931 	push	acc
      006957 90 90 00         [24]10932 	mov	dptr,#_s
      00695A 75 F0 00         [24]10933 	mov	b,#0x00
      00695D 12 21 46         [24]10934 	lcall	_state_exec
      006960 AE 82            [24]10935 	mov	r6,dpl
      006962 AF 83            [24]10936 	mov	r7,dph
      006964 15 81            [12]10937 	dec	sp
      006966 15 81            [12]10938 	dec	sp
      006968 C3               [12]10939 	clr	c
      006969 E4               [12]10940 	clr	a
      00696A 9E               [12]10941 	subb	a,r6
      00696B 74 80            [12]10942 	mov	a,#(0x00 ^ 0x80)
      00696D 8F F0            [24]10943 	mov	b,r7
      00696F 63 F0 80         [24]10944 	xrl	b,#0x80
      006972 95 F0            [12]10945 	subb	a,b
      006974 50 03            [24]10946 	jnc	00464$
      006976 02 66 4B         [24]10947 	ljmp	00192$
      006979                      10948 00464$:
      006979                      10949 00193$:
                                  10950 ;	calc.c:568: printstr("TERM\r\n");
      006979 7D F5            [12]10951 	mov	r5,#___str_52
      00697B 7E 8C            [12]10952 	mov	r6,#(___str_52 >> 8)
      00697D 7F 80            [12]10953 	mov	r7,#0x80
                                  10954 ;	calc.c:53: return;
      00697F                      10955 00202$:
                                  10956 ;	calc.c:51: for (; *s; s++) putchar(*s);
      00697F 8D 82            [24]10957 	mov	dpl,r5
      006981 8E 83            [24]10958 	mov	dph,r6
      006983 8F F0            [24]10959 	mov	b,r7
      006985 12 70 CC         [24]10960 	lcall	__gptrget
      006988 FC               [12]10961 	mov	r4,a
      006989 60 10            [24]10962 	jz	00197$
      00698B 7B 00            [12]10963 	mov	r3,#0x00
      00698D 8C 82            [24]10964 	mov	dpl,r4
      00698F 8B 83            [24]10965 	mov	dph,r3
      006991 12 2B 70         [24]10966 	lcall	_putchar
      006994 0D               [12]10967 	inc	r5
                                  10968 ;	calc.c:568: printstr("TERM\r\n");
      006995 BD 00 E7         [24]10969 	cjne	r5,#0x00,00202$
      006998 0E               [12]10970 	inc	r6
      006999 80 E4            [24]10971 	sjmp	00202$
      00699B                      10972 00197$:
                                  10973 ;	calc.c:570: PCON |= 2;
      00699B 43 87 02         [24]10974 	orl	_PCON,#0x02
                                  10975 ;	calc.c:572: return;
                                  10976 ;	calc.c:573: }
      00699E 15 81            [12]10977 	dec	sp
      0069A0 D0 08            [24]10978 	pop	_bp
      0069A2 22               [24]10979 	ret
                                  10980 	.area CSEG    (CODE)
                                  10981 	.area CONST   (CODE)
                                  10982 	.area CONST   (CODE)
      00894D                      10983 ___str_0:
      00894D 25 30 38 6C 78       10984 	.ascii "%08lx"
      008952 09                   10985 	.db 0x09
      008953 00                   10986 	.db 0x00
                                  10987 	.area CSEG    (CODE)
                                  10988 	.area CONST   (CODE)
      008954                      10989 ___str_1:
      008954 25 20 31 31 6C 64    10990 	.ascii "% 11ld"
      00895A 09                   10991 	.db 0x09
      00895B 00                   10992 	.db 0x00
                                  10993 	.area CSEG    (CODE)
                                  10994 	.area CONST   (CODE)
      00895C                      10995 ___str_2:
      00895C 25 30 31 31 6C 6F    10996 	.ascii "%011lo"
      008962 09                   10997 	.db 0x09
      008963 00                   10998 	.db 0x00
                                  10999 	.area CSEG    (CODE)
                                  11000 	.area CONST   (CODE)
      008964                      11001 ___str_3:
      008964 0D                   11002 	.db 0x0d
      008965 0A                   11003 	.db 0x0a
      008966 00                   11004 	.db 0x00
                                  11005 	.area CSEG    (CODE)
                                  11006 	.area CONST   (CODE)
      008967                      11007 ___str_4:
      008967 73 74 61 63 6B 20 75 11008 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      008976 0D                   11009 	.db 0x0d
      008977 0A                   11010 	.db 0x0a
      008978 00                   11011 	.db 0x00
                                  11012 	.area CSEG    (CODE)
                                  11013 	.area CONST   (CODE)
      008979                      11014 ___str_5:
      008979 50 53 50 41          11015 	.ascii "PSPA"
      00897D 09                   11016 	.db 0x09
      00897E 00                   11017 	.db 0x00
                                  11018 	.area CSEG    (CODE)
                                  11019 	.area CONST   (CODE)
      00897F                      11020 ___str_6:
      00897F 53 53 50 41          11021 	.ascii "SSPA"
      008983 09                   11022 	.db 0x09
      008984 00                   11023 	.db 0x00
                                  11024 	.area CSEG    (CODE)
                                  11025 	.area CONST   (CODE)
      008985                      11026 ___str_7:
      008985 50 53 56 41          11027 	.ascii "PSVA"
      008989 09                   11028 	.db 0x09
      00898A 00                   11029 	.db 0x00
                                  11030 	.area CSEG    (CODE)
                                  11031 	.area CONST   (CODE)
      00898B                      11032 ___str_8:
      00898B 50 53 56 54 4F 50    11033 	.ascii "PSVTOP"
      008991 09                   11034 	.db 0x09
      008992 00                   11035 	.db 0x00
                                  11036 	.area CSEG    (CODE)
                                  11037 	.area CONST   (CODE)
      008993                      11038 ___str_9:
      008993 50 53 50 54 4F 50    11039 	.ascii "PSPTOP"
      008999 09                   11040 	.db 0x09
      00899A 00                   11041 	.db 0x00
                                  11042 	.area CSEG    (CODE)
                                  11043 	.area CONST   (CODE)
      00899B                      11044 ___str_10:
      00899B 0D                   11045 	.db 0x0d
      00899C 0A                   11046 	.db 0x0a
      00899D 73 74 61 63 6B 20 75 11047 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      0089AC 0D                   11048 	.db 0x0d
      0089AD 0A                   11049 	.db 0x0a
      0089AE 00                   11050 	.db 0x00
                                  11051 	.area CSEG    (CODE)
                                  11052 	.area CONST   (CODE)
      0089AF                      11053 ___str_11:
      0089AF 0D                   11054 	.db 0x0d
      0089B0 0A                   11055 	.db 0x0a
      0089B1 73 65 63 6F 6E 64 61 11056 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      0089C9 0D                   11057 	.db 0x0d
      0089CA 0A                   11058 	.db 0x0a
      0089CB 00                   11059 	.db 0x00
                                  11060 	.area CSEG    (CODE)
                                  11061 	.area CONST   (CODE)
      0089CC                      11062 ___str_12:
      0089CC 0D                   11063 	.db 0x0d
      0089CD 0A                   11064 	.db 0x0a
      0089CE 73 65 63 6F 6E 64 61 11065 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      0089E7 0D                   11066 	.db 0x0d
      0089E8 0A                   11067 	.db 0x0a
      0089E9 00                   11068 	.db 0x00
                                  11069 	.area CSEG    (CODE)
                                  11070 	.area CONST   (CODE)
      0089EA                      11071 ___str_13:
      0089EA 0D                   11072 	.db 0x0d
      0089EB 0A                   11073 	.db 0x0a
      0089EC 73 74 61 63 6B 20 6F 11074 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      0089FA 0D                   11075 	.db 0x0d
      0089FB 0A                   11076 	.db 0x0a
      0089FC 00                   11077 	.db 0x00
                                  11078 	.area CSEG    (CODE)
                                  11079 	.area CONST   (CODE)
      0089FD                      11080 ___str_14:
      0089FD 0D                   11081 	.db 0x0d
      0089FE 0A                   11082 	.db 0x0a
      0089FF 64 69 76 69 73 69 6F 11083 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      008A0F 0D                   11084 	.db 0x0d
      008A10 0A                   11085 	.db 0x0a
      008A11 00                   11086 	.db 0x00
                                  11087 	.area CSEG    (CODE)
                                  11088 	.area CONST   (CODE)
      008A12                      11089 ___str_15:
      008A12 0D                   11090 	.db 0x0d
      008A13 0A                   11091 	.db 0x0a
      008A14 50 53 20 3D 20 25 70 11092 	.ascii "PS = %p, SS = %p, base = %d"
             2C 20 53 53 20 3D 20
             25 70 2C 20 62 61 73
             65 20 3D 20 25 64
      008A2F 0D                   11093 	.db 0x0d
      008A30 0A                   11094 	.db 0x0a
      008A31 00                   11095 	.db 0x00
                                  11096 	.area CSEG    (CODE)
                                  11097 	.area CONST   (CODE)
      008A32                      11098 ___str_16:
      008A32 41 43 43             11099 	.ascii "ACC"
      008A35 09                   11100 	.db 0x09
      008A36 00                   11101 	.db 0x00
                                  11102 	.area CSEG    (CODE)
                                  11103 	.area CONST   (CODE)
      008A37                      11104 ___str_17:
      008A37 0D                   11105 	.db 0x0d
      008A38 0A                   11106 	.db 0x0a
      008A39 50 53 54 4F 50 31    11107 	.ascii "PSTOP1"
      008A3F 09                   11108 	.db 0x09
      008A40 00                   11109 	.db 0x00
                                  11110 	.area CSEG    (CODE)
                                  11111 	.area CONST   (CODE)
      008A41                      11112 ___str_18:
      008A41 0D                   11113 	.db 0x0d
      008A42 0A                   11114 	.db 0x0a
      008A43 50 53 54 4F 50 30    11115 	.ascii "PSTOP0"
      008A49 09                   11116 	.db 0x09
      008A4A 00                   11117 	.db 0x00
                                  11118 	.area CSEG    (CODE)
                                  11119 	.area CONST   (CODE)
      008A4B                      11120 ___str_19:
      008A4B 0D                   11121 	.db 0x0d
      008A4C 0A                   11122 	.db 0x0a
      008A4D 53 53 54 4F 50 31    11123 	.ascii "SSTOP1"
      008A53 09                   11124 	.db 0x09
      008A54 00                   11125 	.db 0x00
                                  11126 	.area CSEG    (CODE)
                                  11127 	.area CONST   (CODE)
      008A55                      11128 ___str_20:
      008A55 0D                   11129 	.db 0x0d
      008A56 0A                   11130 	.db 0x0a
      008A57 53 53 54 4F 50 30    11131 	.ascii "SSTOP0"
      008A5D 09                   11132 	.db 0x09
      008A5E 00                   11133 	.db 0x00
                                  11134 	.area CSEG    (CODE)
                                  11135 	.area CONST   (CODE)
      008A5F                      11136 ___str_21:
      008A5F 0D                   11137 	.db 0x0d
      008A60 0A                   11138 	.db 0x0a
      008A61 48 68 4F 6F          11139 	.ascii "HhOo"
      008A65 09                   11140 	.db 0x09
      008A66 62 61 73 65 20 31 36 11141 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      008A74 0D                   11142 	.db 0x0d
      008A75 0A                   11143 	.db 0x0a
      008A76 00                   11144 	.db 0x00
                                  11145 	.area CSEG    (CODE)
                                  11146 	.area CONST   (CODE)
      008A77                      11147 ___str_22:
      008A77 70 2E                11148 	.ascii "p."
      008A79 09                   11149 	.db 0x09
      008A7A 70 6F 70 20 74 6F 70 11150 	.ascii "pop top"
      008A81 0D                   11151 	.db 0x0d
      008A82 0A                   11152 	.db 0x0a
      008A83 00                   11153 	.db 0x00
                                  11154 	.area CSEG    (CODE)
                                  11155 	.area CONST   (CODE)
      008A84                      11156 ___str_23:
      008A84 50                   11157 	.ascii "P"
      008A85 09                   11158 	.db 0x09
      008A86 70 6F 70 20 73 74 61 11159 	.ascii "pop stack"
             63 6B
      008A8F 0D                   11160 	.db 0x0d
      008A90 0A                   11161 	.db 0x0a
      008A91 00                   11162 	.db 0x00
                                  11163 	.area CSEG    (CODE)
                                  11164 	.area CONST   (CODE)
      008A92                      11165 ___str_24:
      008A92 76                   11166 	.ascii "v"
      008A93 09                   11167 	.db 0x09
      008A94 70 65 65 6B 20 74 6F 11168 	.ascii "peek top"
             70
      008A9C 0D                   11169 	.db 0x0d
      008A9D 0A                   11170 	.db 0x0a
      008A9E 00                   11171 	.db 0x00
                                  11172 	.area CSEG    (CODE)
                                  11173 	.area CONST   (CODE)
      008A9F                      11174 ___str_25:
      008A9F 56                   11175 	.ascii "V"
      008AA0 09                   11176 	.db 0x09
      008AA1 70 65 65 6B 20 73 74 11177 	.ascii "peek stack"
             61 63 6B
      008AAB 0D                   11178 	.db 0x0d
      008AAC 0A                   11179 	.db 0x0a
      008AAD 00                   11180 	.db 0x00
                                  11181 	.area CSEG    (CODE)
                                  11182 	.area CONST   (CODE)
      008AAE                      11183 ___str_26:
      008AAE 69                   11184 	.ascii "i"
      008AAF 09                   11185 	.db 0x09
      008AB0 72 65 73 65 74 20 61 11186 	.ascii "reset acc"
             63 63
      008AB9 0D                   11187 	.db 0x0d
      008ABA 0A                   11188 	.db 0x0a
      008ABB 00                   11189 	.db 0x00
                                  11190 	.area CSEG    (CODE)
                                  11191 	.area CONST   (CODE)
      008ABC                      11192 ___str_27:
      008ABC 49                   11193 	.ascii "I"
      008ABD 09                   11194 	.db 0x09
      008ABE 72 65 73 65 74 20 61 11195 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      008AD3 0D                   11196 	.db 0x0d
      008AD4 0A                   11197 	.db 0x0a
      008AD5 00                   11198 	.db 0x00
                                  11199 	.area CSEG    (CODE)
                                  11200 	.area CONST   (CODE)
      008AD6                      11201 ___str_28:
      008AD6 78                   11202 	.ascii "x"
      008AD7 09                   11203 	.db 0x09
      008AD8 65 78 63 68 61 6E 67 11204 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      008AE6 0D                   11205 	.db 0x0d
      008AE7 0A                   11206 	.db 0x0a
      008AE8 00                   11207 	.db 0x00
                                  11208 	.area CSEG    (CODE)
                                  11209 	.area CONST   (CODE)
      008AE9                      11210 ___str_29:
      008AE9 58                   11211 	.ascii "X"
      008AEA 09                   11212 	.db 0x09
      008AEB 65 78 63 68 61 6E 67 11213 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      008B10 0D                   11214 	.db 0x0d
      008B11 0A                   11215 	.db 0x0a
      008B12 00                   11216 	.db 0x00
                                  11217 	.area CSEG    (CODE)
                                  11218 	.area CONST   (CODE)
      008B13                      11219 ___str_30:
      008B13 54                   11220 	.ascii "T"
      008B14 09                   11221 	.db 0x09
      008B15 65 78 63 68 61 6E 67 11222 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      008B38 0D                   11223 	.db 0x0d
      008B39 0A                   11224 	.db 0x0a
      008B3A 00                   11225 	.db 0x00
                                  11226 	.area CSEG    (CODE)
                                  11227 	.area CONST   (CODE)
      008B3B                      11228 ___str_31:
      008B3B 55                   11229 	.ascii "U"
      008B3C 09                   11230 	.db 0x09
      008B3D 63 6F 70 79 20 74 6F 11231 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008B5A 0D                   11232 	.db 0x0d
      008B5B 0A                   11233 	.db 0x0a
      008B5C 00                   11234 	.db 0x00
                                  11235 	.area CSEG    (CODE)
                                  11236 	.area CONST   (CODE)
      008B5D                      11237 ___str_32:
      008B5D 75                   11238 	.ascii "u"
      008B5E 09                   11239 	.db 0x09
      008B5F 63 6F 70 79 20 74 6F 11240 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008B7C 0D                   11241 	.db 0x0d
      008B7D 0A                   11242 	.db 0x0a
      008B7E 00                   11243 	.db 0x00
                                  11244 	.area CSEG    (CODE)
                                  11245 	.area CONST   (CODE)
      008B7F                      11246 ___str_33:
      008B7F 4D                   11247 	.ascii "M"
      008B80 09                   11248 	.db 0x09
      008B81 6D 6F 76 65 20 74 6F 11249 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008B9E 0D                   11250 	.db 0x0d
      008B9F 0A                   11251 	.db 0x0a
      008BA0 00                   11252 	.db 0x00
                                  11253 	.area CSEG    (CODE)
                                  11254 	.area CONST   (CODE)
      008BA1                      11255 ___str_34:
      008BA1 6D                   11256 	.ascii "m"
      008BA2 09                   11257 	.db 0x09
      008BA3 6D 6F 76 65 20 74 6F 11258 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008BC0 0D                   11259 	.db 0x0d
      008BC1 0A                   11260 	.db 0x0a
      008BC2 00                   11261 	.db 0x00
                                  11262 	.area CSEG    (CODE)
                                  11263 	.area CONST   (CODE)
      008BC3                      11264 ___str_35:
      008BC3 2B                   11265 	.ascii "+"
      008BC4 09                   11266 	.db 0x09
      008BC5 61 64 64 20 74 6F 70 11267 	.ascii "add top 2"
             20 32
      008BCE 0D                   11268 	.db 0x0d
      008BCF 0A                   11269 	.db 0x0a
      008BD0 00                   11270 	.db 0x00
                                  11271 	.area CSEG    (CODE)
                                  11272 	.area CONST   (CODE)
      008BD1                      11273 ___str_36:
      008BD1 2D                   11274 	.ascii "-"
      008BD2 09                   11275 	.db 0x09
      008BD3 73 75 62 74 72 61 63 11276 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      008BE1 0D                   11277 	.db 0x0d
      008BE2 0A                   11278 	.db 0x0a
      008BE3 00                   11279 	.db 0x00
                                  11280 	.area CSEG    (CODE)
                                  11281 	.area CONST   (CODE)
      008BE4                      11282 ___str_37:
      008BE4 2A                   11283 	.ascii "*"
      008BE5 09                   11284 	.db 0x09
      008BE6 6D 75 6C 74 69 70 6C 11285 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      008BF4 0D                   11286 	.db 0x0d
      008BF5 0A                   11287 	.db 0x0a
      008BF6 00                   11288 	.db 0x00
                                  11289 	.area CSEG    (CODE)
                                  11290 	.area CONST   (CODE)
      008BF7                      11291 ___str_38:
      008BF7 2F                   11292 	.ascii "/"
      008BF8 09                   11293 	.db 0x09
      008BF9 64 69 76 69 64 65 20 11294 	.ascii "divide top 2"
             74 6F 70 20 32
      008C05 0D                   11295 	.db 0x0d
      008C06 0A                   11296 	.db 0x0a
      008C07 00                   11297 	.db 0x00
                                  11298 	.area CSEG    (CODE)
                                  11299 	.area CONST   (CODE)
      008C08                      11300 ___str_39:
      008C08 5C                   11301 	.db 0x5c
      008C09 09                   11302 	.db 0x09
      008C0A 64 69 76 69 64 65 20 11303 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      008C1F 0D                   11304 	.db 0x0d
      008C20 0A                   11305 	.db 0x0a
      008C21 00                   11306 	.db 0x00
                                  11307 	.area CSEG    (CODE)
                                  11308 	.area CONST   (CODE)
      008C22                      11309 ___str_40:
      008C22 25                   11310 	.ascii "%"
      008C23 09                   11311 	.db 0x09
      008C24 6D 6F 64 75 6C 75 73 11312 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      008C31 0D                   11313 	.db 0x0d
      008C32 0A                   11314 	.db 0x0a
      008C33 00                   11315 	.db 0x00
                                  11316 	.area CSEG    (CODE)
                                  11317 	.area CONST   (CODE)
      008C34                      11318 ___str_41:
      008C34 23                   11319 	.ascii "#"
      008C35 09                   11320 	.db 0x09
      008C36 6D 6F 64 75 6C 75 73 11321 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      008C4C 0D                   11322 	.db 0x0d
      008C4D 0A                   11323 	.db 0x0a
      008C4E 00                   11324 	.db 0x00
                                  11325 	.area CSEG    (CODE)
                                  11326 	.area CONST   (CODE)
      008C4F                      11327 ___str_42:
      008C4F 26                   11328 	.ascii "&"
      008C50 09                   11329 	.db 0x09
      008C51 61 6E 64 20 74 6F 70 11330 	.ascii "and top 2"
             20 32
      008C5A 0D                   11331 	.db 0x0d
      008C5B 0A                   11332 	.db 0x0a
      008C5C 00                   11333 	.db 0x00
                                  11334 	.area CSEG    (CODE)
                                  11335 	.area CONST   (CODE)
      008C5D                      11336 ___str_43:
      008C5D 7C                   11337 	.ascii "|"
      008C5E 09                   11338 	.db 0x09
      008C5F 6F 72 20 74 6F 70 20 11339 	.ascii "or top 2"
             32
      008C67 0D                   11340 	.db 0x0d
      008C68 0A                   11341 	.db 0x0a
      008C69 00                   11342 	.db 0x00
                                  11343 	.area CSEG    (CODE)
                                  11344 	.area CONST   (CODE)
      008C6A                      11345 ___str_44:
      008C6A 5E                   11346 	.ascii "^"
      008C6B 09                   11347 	.db 0x09
      008C6C 78 6F 72 20 74 6F 70 11348 	.ascii "xor top 2"
             20 32
      008C75 0D                   11349 	.db 0x0d
      008C76 0A                   11350 	.db 0x0a
      008C77 00                   11351 	.db 0x00
                                  11352 	.area CSEG    (CODE)
                                  11353 	.area CONST   (CODE)
      008C78                      11354 ___str_45:
      008C78 3E                   11355 	.ascii ">"
      008C79 09                   11356 	.db 0x09
      008C7A 73 68 69 66 74 20 72 11357 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      008C8B 0D                   11358 	.db 0x0d
      008C8C 0A                   11359 	.db 0x0a
      008C8D 00                   11360 	.db 0x00
                                  11361 	.area CSEG    (CODE)
                                  11362 	.area CONST   (CODE)
      008C8E                      11363 ___str_46:
      008C8E 5D                   11364 	.ascii "]"
      008C8F 09                   11365 	.db 0x09
      008C90 61 72 69 74 68 6D 65 11366 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      008CAC 0D                   11367 	.db 0x0d
      008CAD 0A                   11368 	.db 0x0a
      008CAE 00                   11369 	.db 0x00
                                  11370 	.area CSEG    (CODE)
                                  11371 	.area CONST   (CODE)
      008CAF                      11372 ___str_47:
      008CAF 3C                   11373 	.ascii "<"
      008CB0 09                   11374 	.db 0x09
      008CB1 73 68 69 66 74 20 6C 11375 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      008CC1 0D                   11376 	.db 0x0d
      008CC2 0A                   11377 	.db 0x0a
      008CC3 00                   11378 	.db 0x00
                                  11379 	.area CSEG    (CODE)
                                  11380 	.area CONST   (CODE)
      008CC4                      11381 ___str_48:
      008CC4 7E                   11382 	.ascii "~"
      008CC5 09                   11383 	.db 0x09
      008CC6 62 69 74 77 69 73 65 11384 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      008CD5 0D                   11385 	.db 0x0d
      008CD6 0A                   11386 	.db 0x0a
      008CD7 00                   11387 	.db 0x00
                                  11388 	.area CSEG    (CODE)
                                  11389 	.area CONST   (CODE)
      008CD8                      11390 ___str_49:
      008CD8 73                   11391 	.ascii "s"
      008CD9 09                   11392 	.db 0x09
      008CDA 73 74 61 74 75 73    11393 	.ascii "status"
      008CE0 0D                   11394 	.db 0x0d
      008CE1 0A                   11395 	.db 0x0a
      008CE2 00                   11396 	.db 0x00
                                  11397 	.area CSEG    (CODE)
                                  11398 	.area CONST   (CODE)
      008CE3                      11399 ___str_50:
      008CE3 3F                   11400 	.ascii "?"
      008CE4 09                   11401 	.db 0x09
      008CE5 68 65 6C 70          11402 	.ascii "help"
      008CE9 0D                   11403 	.db 0x0d
      008CEA 0A                   11404 	.db 0x0a
      008CEB 00                   11405 	.db 0x00
                                  11406 	.area CSEG    (CODE)
                                  11407 	.area CONST   (CODE)
      008CEC                      11408 ___str_51:
      008CEC 71                   11409 	.ascii "q"
      008CED 09                   11410 	.db 0x09
      008CEE 71 75 69 74          11411 	.ascii "quit"
      008CF2 0D                   11412 	.db 0x0d
      008CF3 0A                   11413 	.db 0x0a
      008CF4 00                   11414 	.db 0x00
                                  11415 	.area CSEG    (CODE)
                                  11416 	.area CONST   (CODE)
      008CF5                      11417 ___str_52:
      008CF5 54 45 52 4D          11418 	.ascii "TERM"
      008CF9 0D                   11419 	.db 0x0d
      008CFA 0A                   11420 	.db 0x0a
      008CFB 00                   11421 	.db 0x00
                                  11422 	.area CSEG    (CODE)
                                  11423 	.area XINIT   (CODE)
      008D0D                      11424 __xinit__deltas:
      008D0D 00 00                11425 	.byte #0x00, #0x00	;  0
      008D0F 00 00                11426 	.byte #0x00, #0x00	;  0
      008D11 00 00                11427 	.byte #0x00, #0x00	;  0
      008D13 00 00                11428 	.byte #0x00,#0x00
      008D15 00 00                11429 	.byte #0x00,#0x00
      008D17 00 00                11430 	.byte #0x00, #0x00	;  0
      008D19 01 00                11431 	.byte #0x01, #0x00	;  1
      008D1B 02 00                11432 	.byte #0x02, #0x00	;  2
      008D1D 00 00                11433 	.byte #0x00,#0x00
      008D1F 92 2B                11434 	.byte _accumulate, (_accumulate >> 8)
      008D21 00 00                11435 	.byte #0x00, #0x00	;  0
      008D23 02 00                11436 	.byte #0x02, #0x00	;  2
      008D25 01 00                11437 	.byte #0x01, #0x00	;  1
      008D27 00 00                11438 	.byte #0x00,#0x00
      008D29 14 34                11439 	.byte _operator, (_operator >> 8)
      008D2B 01 00                11440 	.byte #0x01, #0x00	;  1
      008D2D 00 00                11441 	.byte #0x00, #0x00	;  0
      008D2F 00 00                11442 	.byte #0x00, #0x00	;  0
      008D31 00 00                11443 	.byte #0x00,#0x00
      008D33 00 00                11444 	.byte #0x00,#0x00
      008D35 01 00                11445 	.byte #0x01, #0x00	;  1
      008D37 02 00                11446 	.byte #0x02, #0x00	;  2
      008D39 01 00                11447 	.byte #0x01, #0x00	;  1
      008D3B 00 00                11448 	.byte #0x00,#0x00
      008D3D 14 34                11449 	.byte _operator, (_operator >> 8)
      008D3F 01 00                11450 	.byte #0x01, #0x00	;  1
      008D41 01 00                11451 	.byte #0x01, #0x00	;  1
      008D43 02 00                11452 	.byte #0x02, #0x00	;  2
      008D45 00 00                11453 	.byte #0x00,#0x00
      008D47 92 2B                11454 	.byte _accumulate, (_accumulate >> 8)
      008D49 02 00                11455 	.byte #0x02, #0x00	;  2
      008D4B 00 00                11456 	.byte #0x00, #0x00	;  0
      008D4D 00 00                11457 	.byte #0x00, #0x00	;  0
      008D4F 00 00                11458 	.byte #0x00,#0x00
      008D51 0E 57                11459 	.byte _push_acc, (_push_acc >> 8)
      008D53 02 00                11460 	.byte #0x02, #0x00	;  2
      008D55 07 00                11461 	.byte #0x07, #0x00	;  7
      008D57 00 00                11462 	.byte #0x00, #0x00	;  0
      008D59 00 00                11463 	.byte #0x00,#0x00
      008D5B 2A 58                11464 	.byte _reset_acc, (_reset_acc >> 8)
      008D5D 02 00                11465 	.byte #0x02, #0x00	;  2
      008D5F 01 00                11466 	.byte #0x01, #0x00	;  1
      008D61 02 00                11467 	.byte #0x02, #0x00	;  2
      008D63 00 00                11468 	.byte #0x00,#0x00
      008D65 92 2B                11469 	.byte _accumulate, (_accumulate >> 8)
      008D67 02 00                11470 	.byte #0x02, #0x00	;  2
      008D69 02 00                11471 	.byte #0x02, #0x00	;  2
      008D6B 01 00                11472 	.byte #0x01, #0x00	;  1
      008D6D 00 00                11473 	.byte #0x00,#0x00
      008D6F 0E 57                11474 	.byte _push_acc, (_push_acc >> 8)
      008D71 FF 7F                11475 	.byte #0xff, #0x7f	;  32767
      008D73 06 00                11476 	.byte #0x06, #0x00	;  6
      008D75 FF 7F                11477 	.byte #0xff, #0x7f	;  32767
      008D77 00 00                11478 	.byte #0x00,#0x00
      008D79 2A 58                11479 	.byte _reset_acc, (_reset_acc >> 8)
      008D7B FF 7F                11480 	.byte #0xff, #0x7f	;  32767
      008D7D 07 00                11481 	.byte #0x07, #0x00	;  7
      008D7F FF 7F                11482 	.byte #0xff, #0x7f	;  32767
      008D81 00 00                11483 	.byte #0x00,#0x00
      008D83 00 00                11484 	.byte #0x00,#0x00
      008D85 FF 7F                11485 	.byte #0xff, #0x7f	;  32767
      008D87 05 00                11486 	.byte #0x05, #0x00	;  5
      008D89 FF 7F                11487 	.byte #0xff, #0x7f	;  32767
      008D8B 00 00                11488 	.byte #0x00,#0x00
      008D8D 94 58                11489 	.byte _reset_base, (_reset_base >> 8)
      008D8F FF 7F                11490 	.byte #0xff, #0x7f	;  32767
      008D91 03 00                11491 	.byte #0x03, #0x00	;  3
      008D93 FF 7F                11492 	.byte #0xff, #0x7f	;  32767
      008D95 00 00                11493 	.byte #0x00,#0x00
      008D97 12 59                11494 	.byte _status, (_status >> 8)
      008D99 FF 7F                11495 	.byte #0xff, #0x7f	;  32767
      008D9B 04 00                11496 	.byte #0x04, #0x00	;  4
      008D9D FF 7F                11497 	.byte #0xff, #0x7f	;  32767
      008D9F 00 00                11498 	.byte #0x00,#0x00
      008DA1 71 61                11499 	.byte _help, (_help >> 8)
      008DA3 FF 7F                11500 	.byte #0xff, #0x7f	;  32767
      008DA5 08 00                11501 	.byte #0x08, #0x00	;  8
      008DA7 03 00                11502 	.byte #0x03, #0x00	;  3
      008DA9 00 00                11503 	.byte #0x00,#0x00
      008DAB 03 2D                11504 	.byte _dump_pop, (_dump_pop >> 8)
      008DAD 00 80                11505 	.byte #0x00, #0x80	; -32768
      008DAF 00 80                11506 	.byte #0x00, #0x80	; -32768
      008DB1 00 80                11507 	.byte #0x00, #0x80	; -32768
      008DB3 00 00                11508 	.byte #0x00,#0x00
      008DB5 00 00                11509 	.byte #0x00,#0x00
                                  11510 	.area CABS    (ABS,CODE)
