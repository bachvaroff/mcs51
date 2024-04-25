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
      002003 02 65 B0         [24]  376 	ljmp	_main
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
                                    387 ;	calc.c:16: int putchar(int c) __naked {
                                    388 ;	-----------------------------------------
                                    389 ;	 function putchar
                                    390 ;	-----------------------------------------
      002B70                        391 _putchar:
                                    392 ;	naked function: no prologue.
                                    393 ;	calc.c:24: __endasm;
      002B70 C0 E0            [24]  394 	push	acc
      002B72 E5 82            [12]  395 	mov	a, dpl
      002B74 12 00 3C         [24]  396 	lcall	0x003c
      002B77 D0 E0            [24]  397 	pop	acc
      002B79 22               [24]  398 	ret
                                    399 ;	calc.c:25: }
                                    400 ;	naked function: no epilogue.
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'getchar'
                                    403 ;------------------------------------------------------------
                                    404 ;	calc.c:27: int getchar(void) __naked {
                                    405 ;	-----------------------------------------
                                    406 ;	 function getchar
                                    407 ;	-----------------------------------------
      002B7A                        408 _getchar:
                                    409 ;	naked function: no prologue.
                                    410 ;	calc.c:35: __endasm;
      002B7A C0 E0            [24]  411 	push	acc
      002B7C 12 00 36         [24]  412 	lcall	0x0036
      002B7F F5 82            [12]  413 	mov	dpl, a
      002B81 75 83 00         [24]  414 	mov	dph, #0
      002B84 D0 E0            [24]  415 	pop	acc
      002B86 22               [24]  416 	ret
                                    417 ;	calc.c:36: }
                                    418 ;	naked function: no epilogue.
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'getchar_poll'
                                    421 ;------------------------------------------------------------
                                    422 ;	calc.c:38: int getchar_poll(void) __naked {
                                    423 ;	-----------------------------------------
                                    424 ;	 function getchar_poll
                                    425 ;	-----------------------------------------
      002B87                        426 _getchar_poll:
                                    427 ;	naked function: no prologue.
                                    428 ;	calc.c:53: __endasm;
      002B87 C0 E0            [24]  429 	push	acc
      002B89 C0 F0            [24]  430 	push	b
      002B8B 74 FF            [12]  431 	mov	a, #0xff
      002B8D F5 F0            [12]  432 	mov	b, a
      002B8F 12 00 39         [24]  433 	lcall	0x0039
      002B92 40 03            [24]  434 	jc	nochar
      002B94 75 F0 00         [24]  435 	mov	b, #0x00
      002B97                        436 	nochar:
      002B97 F5 82            [12]  437 	mov	dpl, a
      002B99 85 F0 83         [24]  438 	mov	dph, b
      002B9C D0 F0            [24]  439 	pop	b
      002B9E D0 E0            [24]  440 	pop	acc
      002BA0 22               [24]  441 	ret
                                    442 ;	calc.c:54: }
                                    443 ;	naked function: no epilogue.
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'accumulate'
                                    446 ;------------------------------------------------------------
                                    447 ;delta                     Allocated to stack - _bp -5
                                    448 ;_ctx                      Allocated to registers r5 r6 r7 
                                    449 ;ctx                       Allocated to stack - _bp +8
                                    450 ;d                         Allocated to stack - _bp +11
                                    451 ;sloc0                     Allocated to stack - _bp +1
                                    452 ;sloc1                     Allocated to stack - _bp +4
                                    453 ;------------------------------------------------------------
                                    454 ;	calc.c:80: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
                                    455 ;	-----------------------------------------
                                    456 ;	 function accumulate
                                    457 ;	-----------------------------------------
      002BA1                        458 _accumulate:
                           000007   459 	ar7 = 0x07
                           000006   460 	ar6 = 0x06
                           000005   461 	ar5 = 0x05
                           000004   462 	ar4 = 0x04
                           000003   463 	ar3 = 0x03
                           000002   464 	ar2 = 0x02
                           000001   465 	ar1 = 0x01
                           000000   466 	ar0 = 0x00
      002BA1 C0 08            [24]  467 	push	_bp
      002BA3 E5 81            [12]  468 	mov	a,sp
      002BA5 F5 08            [12]  469 	mov	_bp,a
      002BA7 24 0E            [12]  470 	add	a,#0x0e
      002BA9 F5 81            [12]  471 	mov	sp,a
      002BAB AD 82            [24]  472 	mov	r5,dpl
      002BAD AE 83            [24]  473 	mov	r6,dph
      002BAF AF F0            [24]  474 	mov	r7,b
                                    475 ;	calc.c:81: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002BB1 E5 08            [12]  476 	mov	a,_bp
      002BB3 24 08            [12]  477 	add	a,#0x08
      002BB5 F8               [12]  478 	mov	r0,a
      002BB6 A6 05            [24]  479 	mov	@r0,ar5
      002BB8 08               [12]  480 	inc	r0
      002BB9 A6 06            [24]  481 	mov	@r0,ar6
      002BBB 08               [12]  482 	inc	r0
      002BBC A6 07            [24]  483 	mov	@r0,ar7
                                    484 ;	calc.c:86: if (!ctx->acc_valid) {
      002BBE E5 08            [12]  485 	mov	a,_bp
      002BC0 24 08            [12]  486 	add	a,#0x08
      002BC2 F8               [12]  487 	mov	r0,a
      002BC3 74 06            [12]  488 	mov	a,#0x06
      002BC5 26               [12]  489 	add	a,@r0
      002BC6 FA               [12]  490 	mov	r2,a
      002BC7 E4               [12]  491 	clr	a
      002BC8 08               [12]  492 	inc	r0
      002BC9 36               [12]  493 	addc	a,@r0
      002BCA FB               [12]  494 	mov	r3,a
      002BCB 08               [12]  495 	inc	r0
      002BCC 86 04            [24]  496 	mov	ar4,@r0
      002BCE 8A 82            [24]  497 	mov	dpl,r2
      002BD0 8B 83            [24]  498 	mov	dph,r3
      002BD2 8C F0            [24]  499 	mov	b,r4
      002BD4 12 70 E2         [24]  500 	lcall	__gptrget
      002BD7 70 31            [24]  501 	jnz	00102$
                                    502 ;	calc.c:87: ctx->acc_valid = 1;
      002BD9 8A 82            [24]  503 	mov	dpl,r2
      002BDB 8B 83            [24]  504 	mov	dph,r3
      002BDD 8C F0            [24]  505 	mov	b,r4
      002BDF 74 01            [12]  506 	mov	a,#0x01
      002BE1 12 6C 67         [24]  507 	lcall	__gptrput
                                    508 ;	calc.c:88: ctx->acc = 0l;
      002BE4 E5 08            [12]  509 	mov	a,_bp
      002BE6 24 08            [12]  510 	add	a,#0x08
      002BE8 F8               [12]  511 	mov	r0,a
      002BE9 74 02            [12]  512 	mov	a,#0x02
      002BEB 26               [12]  513 	add	a,@r0
      002BEC FA               [12]  514 	mov	r2,a
      002BED E4               [12]  515 	clr	a
      002BEE 08               [12]  516 	inc	r0
      002BEF 36               [12]  517 	addc	a,@r0
      002BF0 FB               [12]  518 	mov	r3,a
      002BF1 08               [12]  519 	inc	r0
      002BF2 86 04            [24]  520 	mov	ar4,@r0
      002BF4 8A 82            [24]  521 	mov	dpl,r2
      002BF6 8B 83            [24]  522 	mov	dph,r3
      002BF8 8C F0            [24]  523 	mov	b,r4
      002BFA E4               [12]  524 	clr	a
      002BFB 12 6C 67         [24]  525 	lcall	__gptrput
      002BFE A3               [24]  526 	inc	dptr
      002BFF 12 6C 67         [24]  527 	lcall	__gptrput
      002C02 A3               [24]  528 	inc	dptr
      002C03 12 6C 67         [24]  529 	lcall	__gptrput
      002C06 A3               [24]  530 	inc	dptr
      002C07 12 6C 67         [24]  531 	lcall	__gptrput
      002C0A                        532 00102$:
                                    533 ;	calc.c:91: d = strtol(ctx->digit, NULL, ctx->base);
      002C0A E5 08            [12]  534 	mov	a,_bp
      002C0C 24 08            [12]  535 	add	a,#0x08
      002C0E F8               [12]  536 	mov	r0,a
      002C0F 86 82            [24]  537 	mov	dpl,@r0
      002C11 08               [12]  538 	inc	r0
      002C12 86 83            [24]  539 	mov	dph,@r0
      002C14 08               [12]  540 	inc	r0
      002C15 86 F0            [24]  541 	mov	b,@r0
      002C17 12 70 E2         [24]  542 	lcall	__gptrget
      002C1A FB               [12]  543 	mov	r3,a
      002C1B A3               [24]  544 	inc	dptr
      002C1C 12 70 E2         [24]  545 	lcall	__gptrget
      002C1F FC               [12]  546 	mov	r4,a
      002C20 E5 08            [12]  547 	mov	a,_bp
      002C22 24 08            [12]  548 	add	a,#0x08
      002C24 F8               [12]  549 	mov	r0,a
      002C25 74 07            [12]  550 	mov	a,#0x07
      002C27 26               [12]  551 	add	a,@r0
      002C28 FA               [12]  552 	mov	r2,a
      002C29 E4               [12]  553 	clr	a
      002C2A 08               [12]  554 	inc	r0
      002C2B 36               [12]  555 	addc	a,@r0
      002C2C FE               [12]  556 	mov	r6,a
      002C2D 08               [12]  557 	inc	r0
      002C2E 86 07            [24]  558 	mov	ar7,@r0
      002C30 C0 03            [24]  559 	push	ar3
      002C32 C0 04            [24]  560 	push	ar4
      002C34 E4               [12]  561 	clr	a
      002C35 C0 E0            [24]  562 	push	acc
      002C37 C0 E0            [24]  563 	push	acc
      002C39 C0 E0            [24]  564 	push	acc
      002C3B 8A 82            [24]  565 	mov	dpl,r2
      002C3D 8E 83            [24]  566 	mov	dph,r6
      002C3F 8F F0            [24]  567 	mov	b,r7
      002C41 12 6A 29         [24]  568 	lcall	_strtol
      002C44 C8               [12]  569 	xch	a,r0
      002C45 E5 08            [12]  570 	mov	a,_bp
      002C47 24 0B            [12]  571 	add	a,#0x0b
      002C49 C8               [12]  572 	xch	a,r0
      002C4A A6 82            [24]  573 	mov	@r0,dpl
      002C4C 08               [12]  574 	inc	r0
      002C4D A6 83            [24]  575 	mov	@r0,dph
      002C4F 08               [12]  576 	inc	r0
      002C50 A6 F0            [24]  577 	mov	@r0,b
      002C52 08               [12]  578 	inc	r0
      002C53 F6               [12]  579 	mov	@r0,a
      002C54 E5 81            [12]  580 	mov	a,sp
      002C56 24 FB            [12]  581 	add	a,#0xfb
      002C58 F5 81            [12]  582 	mov	sp,a
                                    583 ;	calc.c:92: ctx->acc = ctx->acc * (long)ctx->base + d;
      002C5A E5 08            [12]  584 	mov	a,_bp
      002C5C 24 08            [12]  585 	add	a,#0x08
      002C5E F8               [12]  586 	mov	r0,a
      002C5F A9 08            [24]  587 	mov	r1,_bp
      002C61 09               [12]  588 	inc	r1
      002C62 74 02            [12]  589 	mov	a,#0x02
      002C64 26               [12]  590 	add	a,@r0
      002C65 F7               [12]  591 	mov	@r1,a
      002C66 E4               [12]  592 	clr	a
      002C67 08               [12]  593 	inc	r0
      002C68 36               [12]  594 	addc	a,@r0
      002C69 09               [12]  595 	inc	r1
      002C6A F7               [12]  596 	mov	@r1,a
      002C6B 08               [12]  597 	inc	r0
      002C6C 09               [12]  598 	inc	r1
      002C6D E6               [12]  599 	mov	a,@r0
      002C6E F7               [12]  600 	mov	@r1,a
      002C6F A8 08            [24]  601 	mov	r0,_bp
      002C71 08               [12]  602 	inc	r0
      002C72 86 82            [24]  603 	mov	dpl,@r0
      002C74 08               [12]  604 	inc	r0
      002C75 86 83            [24]  605 	mov	dph,@r0
      002C77 08               [12]  606 	inc	r0
      002C78 86 F0            [24]  607 	mov	b,@r0
      002C7A E5 08            [12]  608 	mov	a,_bp
      002C7C 24 04            [12]  609 	add	a,#0x04
      002C7E F9               [12]  610 	mov	r1,a
      002C7F 12 70 E2         [24]  611 	lcall	__gptrget
      002C82 F7               [12]  612 	mov	@r1,a
      002C83 A3               [24]  613 	inc	dptr
      002C84 12 70 E2         [24]  614 	lcall	__gptrget
      002C87 09               [12]  615 	inc	r1
      002C88 F7               [12]  616 	mov	@r1,a
      002C89 A3               [24]  617 	inc	dptr
      002C8A 12 70 E2         [24]  618 	lcall	__gptrget
      002C8D 09               [12]  619 	inc	r1
      002C8E F7               [12]  620 	mov	@r1,a
      002C8F A3               [24]  621 	inc	dptr
      002C90 12 70 E2         [24]  622 	lcall	__gptrget
      002C93 09               [12]  623 	inc	r1
      002C94 F7               [12]  624 	mov	@r1,a
      002C95 E5 08            [12]  625 	mov	a,_bp
      002C97 24 08            [12]  626 	add	a,#0x08
      002C99 F8               [12]  627 	mov	r0,a
      002C9A 86 82            [24]  628 	mov	dpl,@r0
      002C9C 08               [12]  629 	inc	r0
      002C9D 86 83            [24]  630 	mov	dph,@r0
      002C9F 08               [12]  631 	inc	r0
      002CA0 86 F0            [24]  632 	mov	b,@r0
      002CA2 12 70 E2         [24]  633 	lcall	__gptrget
      002CA5 FA               [12]  634 	mov	r2,a
      002CA6 A3               [24]  635 	inc	dptr
      002CA7 12 70 E2         [24]  636 	lcall	__gptrget
      002CAA FB               [12]  637 	mov	r3,a
      002CAB 33               [12]  638 	rlc	a
      002CAC 95 E0            [12]  639 	subb	a,acc
      002CAE FE               [12]  640 	mov	r6,a
      002CAF FF               [12]  641 	mov	r7,a
      002CB0 C0 02            [24]  642 	push	ar2
      002CB2 C0 03            [24]  643 	push	ar3
      002CB4 C0 06            [24]  644 	push	ar6
      002CB6 C0 07            [24]  645 	push	ar7
      002CB8 E5 08            [12]  646 	mov	a,_bp
      002CBA 24 04            [12]  647 	add	a,#0x04
      002CBC F8               [12]  648 	mov	r0,a
      002CBD 86 82            [24]  649 	mov	dpl,@r0
      002CBF 08               [12]  650 	inc	r0
      002CC0 86 83            [24]  651 	mov	dph,@r0
      002CC2 08               [12]  652 	inc	r0
      002CC3 86 F0            [24]  653 	mov	b,@r0
      002CC5 08               [12]  654 	inc	r0
      002CC6 E6               [12]  655 	mov	a,@r0
      002CC7 12 74 DB         [24]  656 	lcall	__mullong
      002CCA AC 82            [24]  657 	mov	r4,dpl
      002CCC AD 83            [24]  658 	mov	r5,dph
      002CCE AE F0            [24]  659 	mov	r6,b
      002CD0 FF               [12]  660 	mov	r7,a
      002CD1 E5 81            [12]  661 	mov	a,sp
      002CD3 24 FC            [12]  662 	add	a,#0xfc
      002CD5 F5 81            [12]  663 	mov	sp,a
      002CD7 E5 08            [12]  664 	mov	a,_bp
      002CD9 24 0B            [12]  665 	add	a,#0x0b
      002CDB F8               [12]  666 	mov	r0,a
      002CDC E6               [12]  667 	mov	a,@r0
      002CDD 2C               [12]  668 	add	a,r4
      002CDE FC               [12]  669 	mov	r4,a
      002CDF 08               [12]  670 	inc	r0
      002CE0 E6               [12]  671 	mov	a,@r0
      002CE1 3D               [12]  672 	addc	a,r5
      002CE2 FD               [12]  673 	mov	r5,a
      002CE3 08               [12]  674 	inc	r0
      002CE4 E6               [12]  675 	mov	a,@r0
      002CE5 3E               [12]  676 	addc	a,r6
      002CE6 FE               [12]  677 	mov	r6,a
      002CE7 08               [12]  678 	inc	r0
      002CE8 E6               [12]  679 	mov	a,@r0
      002CE9 3F               [12]  680 	addc	a,r7
      002CEA FF               [12]  681 	mov	r7,a
      002CEB A8 08            [24]  682 	mov	r0,_bp
      002CED 08               [12]  683 	inc	r0
      002CEE 86 82            [24]  684 	mov	dpl,@r0
      002CF0 08               [12]  685 	inc	r0
      002CF1 86 83            [24]  686 	mov	dph,@r0
      002CF3 08               [12]  687 	inc	r0
      002CF4 86 F0            [24]  688 	mov	b,@r0
      002CF6 EC               [12]  689 	mov	a,r4
      002CF7 12 6C 67         [24]  690 	lcall	__gptrput
      002CFA A3               [24]  691 	inc	dptr
      002CFB ED               [12]  692 	mov	a,r5
      002CFC 12 6C 67         [24]  693 	lcall	__gptrput
      002CFF A3               [24]  694 	inc	dptr
      002D00 EE               [12]  695 	mov	a,r6
      002D01 12 6C 67         [24]  696 	lcall	__gptrput
      002D04 A3               [24]  697 	inc	dptr
      002D05 EF               [12]  698 	mov	a,r7
      002D06 12 6C 67         [24]  699 	lcall	__gptrput
                                    700 ;	calc.c:94: return 1;
      002D09 90 00 01         [24]  701 	mov	dptr,#0x0001
                                    702 ;	calc.c:95: }
      002D0C 85 08 81         [24]  703 	mov	sp,_bp
      002D0F D0 08            [24]  704 	pop	_bp
      002D11 22               [24]  705 	ret
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'dump_pop'
                                    708 ;------------------------------------------------------------
                                    709 ;delta                     Allocated to stack - _bp -5
                                    710 ;_ctx                      Allocated to registers r5 r6 r7 
                                    711 ;ctx                       Allocated to stack - _bp +11
                                    712 ;d                         Allocated to stack - _bp +14
                                    713 ;r                         Allocated to registers r5 r6 
                                    714 ;__1310720003              Allocated to registers 
                                    715 ;s                         Allocated to registers r5 r6 r7 
                                    716 ;__1966080005              Allocated to registers 
                                    717 ;s                         Allocated to registers r4 r5 r6 
                                    718 ;__1966080007              Allocated to registers 
                                    719 ;s                         Allocated to registers r3 r4 r5 
                                    720 ;__1966080009              Allocated to stack - _bp +18
                                    721 ;d                         Allocated to registers r3 r4 r5 r6 
                                    722 ;__1310720001              Allocated to registers 
                                    723 ;d                         Allocated to stack - _bp +22
                                    724 ;mask                      Allocated to stack - _bp +26
                                    725 ;__1966080011              Allocated to registers 
                                    726 ;s                         Allocated to registers r3 r4 r5 
                                    727 ;__1966080013              Allocated to registers 
                                    728 ;s                         Allocated to registers r4 r5 r6 
                                    729 ;__3276800015              Allocated to registers 
                                    730 ;s                         Allocated to registers r5 r3 r2 
                                    731 ;__3276800017              Allocated to stack - _bp +18
                                    732 ;d                         Allocated to registers r2 r3 r4 r7 
                                    733 ;__1310720001              Allocated to registers 
                                    734 ;d                         Allocated to stack - _bp +22
                                    735 ;mask                      Allocated to stack - _bp +26
                                    736 ;__3276800019              Allocated to registers 
                                    737 ;s                         Allocated to registers r5 r3 r2 
                                    738 ;sloc0                     Allocated to stack - _bp +1
                                    739 ;sloc1                     Allocated to stack - _bp +2
                                    740 ;sloc2                     Allocated to stack - _bp +5
                                    741 ;sloc3                     Allocated to stack - _bp +8
                                    742 ;------------------------------------------------------------
                                    743 ;	calc.c:97: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    744 ;	-----------------------------------------
                                    745 ;	 function dump_pop
                                    746 ;	-----------------------------------------
      002D12                        747 _dump_pop:
      002D12 C0 08            [24]  748 	push	_bp
      002D14 E5 81            [12]  749 	mov	a,sp
      002D16 F5 08            [12]  750 	mov	_bp,a
      002D18 24 1D            [12]  751 	add	a,#0x1d
      002D1A F5 81            [12]  752 	mov	sp,a
      002D1C AD 82            [24]  753 	mov	r5,dpl
      002D1E AE 83            [24]  754 	mov	r6,dph
      002D20 AF F0            [24]  755 	mov	r7,b
                                    756 ;	calc.c:98: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002D22 E5 08            [12]  757 	mov	a,_bp
      002D24 24 0B            [12]  758 	add	a,#0x0b
      002D26 F8               [12]  759 	mov	r0,a
      002D27 A6 05            [24]  760 	mov	@r0,ar5
      002D29 08               [12]  761 	inc	r0
      002D2A A6 06            [24]  762 	mov	@r0,ar6
      002D2C 08               [12]  763 	inc	r0
      002D2D A6 07            [24]  764 	mov	@r0,ar7
                                    765 ;	calc.c:102: if (delta->event == EVENT_TERM) printstr("\r\n");
      002D2F E5 08            [12]  766 	mov	a,_bp
      002D31 24 FB            [12]  767 	add	a,#0xfb
      002D33 F8               [12]  768 	mov	r0,a
      002D34 86 02            [24]  769 	mov	ar2,@r0
      002D36 08               [12]  770 	inc	r0
      002D37 86 03            [24]  771 	mov	ar3,@r0
      002D39 08               [12]  772 	inc	r0
      002D3A 86 04            [24]  773 	mov	ar4,@r0
      002D3C E5 08            [12]  774 	mov	a,_bp
      002D3E 24 08            [12]  775 	add	a,#0x08
      002D40 F8               [12]  776 	mov	r0,a
      002D41 74 02            [12]  777 	mov	a,#0x02
      002D43 2A               [12]  778 	add	a,r2
      002D44 F6               [12]  779 	mov	@r0,a
      002D45 E4               [12]  780 	clr	a
      002D46 3B               [12]  781 	addc	a,r3
      002D47 08               [12]  782 	inc	r0
      002D48 F6               [12]  783 	mov	@r0,a
      002D49 08               [12]  784 	inc	r0
      002D4A A6 04            [24]  785 	mov	@r0,ar4
      002D4C E5 08            [12]  786 	mov	a,_bp
      002D4E 24 08            [12]  787 	add	a,#0x08
      002D50 F8               [12]  788 	mov	r0,a
      002D51 86 82            [24]  789 	mov	dpl,@r0
      002D53 08               [12]  790 	inc	r0
      002D54 86 83            [24]  791 	mov	dph,@r0
      002D56 08               [12]  792 	inc	r0
      002D57 86 F0            [24]  793 	mov	b,@r0
      002D59 12 70 E2         [24]  794 	lcall	__gptrget
      002D5C FE               [12]  795 	mov	r6,a
      002D5D A3               [24]  796 	inc	dptr
      002D5E 12 70 E2         [24]  797 	lcall	__gptrget
      002D61 FF               [12]  798 	mov	r7,a
      002D62 BE 08 27         [24]  799 	cjne	r6,#0x08,00102$
      002D65 BF 00 24         [24]  800 	cjne	r7,#0x00,00102$
      002D68 7D 7A            [12]  801 	mov	r5,#___str_3
      002D6A 7E 89            [12]  802 	mov	r6,#(___str_3 >> 8)
      002D6C 7F 80            [12]  803 	mov	r7,#0x80
                                    804 ;	calc.c:59: return;
      002D6E                        805 00135$:
                                    806 ;	calc.c:57: for (; *s; s++) putchar(*s);
      002D6E 8D 82            [24]  807 	mov	dpl,r5
      002D70 8E 83            [24]  808 	mov	dph,r6
      002D72 8F F0            [24]  809 	mov	b,r7
      002D74 12 70 E2         [24]  810 	lcall	__gptrget
      002D77 FC               [12]  811 	mov	r4,a
      002D78 60 12            [24]  812 	jz	00102$
      002D7A 8C 03            [24]  813 	mov	ar3,r4
      002D7C 7C 00            [12]  814 	mov	r4,#0x00
      002D7E 8B 82            [24]  815 	mov	dpl,r3
      002D80 8C 83            [24]  816 	mov	dph,r4
      002D82 12 2B 70         [24]  817 	lcall	_putchar
      002D85 0D               [12]  818 	inc	r5
                                    819 ;	calc.c:102: if (delta->event == EVENT_TERM) printstr("\r\n");
      002D86 BD 00 E5         [24]  820 	cjne	r5,#0x00,00135$
      002D89 0E               [12]  821 	inc	r6
      002D8A 80 E2            [24]  822 	sjmp	00135$
      002D8C                        823 00102$:
                                    824 ;	calc.c:103: r = stack_pop(ctx->ps, &d);
      002D8C E5 08            [12]  825 	mov	a,_bp
      002D8E 24 0E            [12]  826 	add	a,#0x0e
      002D90 FF               [12]  827 	mov	r7,a
      002D91 E5 08            [12]  828 	mov	a,_bp
      002D93 24 05            [12]  829 	add	a,#0x05
      002D95 F8               [12]  830 	mov	r0,a
      002D96 A6 07            [24]  831 	mov	@r0,ar7
      002D98 08               [12]  832 	inc	r0
      002D99 76 00            [12]  833 	mov	@r0,#0x00
      002D9B 08               [12]  834 	inc	r0
      002D9C 76 40            [12]  835 	mov	@r0,#0x40
      002D9E E5 08            [12]  836 	mov	a,_bp
      002DA0 24 0B            [12]  837 	add	a,#0x0b
      002DA2 F8               [12]  838 	mov	r0,a
      002DA3 A9 08            [24]  839 	mov	r1,_bp
      002DA5 09               [12]  840 	inc	r1
      002DA6 09               [12]  841 	inc	r1
      002DA7 74 11            [12]  842 	mov	a,#0x11
      002DA9 26               [12]  843 	add	a,@r0
      002DAA F7               [12]  844 	mov	@r1,a
      002DAB 74 40            [12]  845 	mov	a,#0x40
      002DAD 08               [12]  846 	inc	r0
      002DAE 36               [12]  847 	addc	a,@r0
      002DAF 09               [12]  848 	inc	r1
      002DB0 F7               [12]  849 	mov	@r1,a
      002DB1 08               [12]  850 	inc	r0
      002DB2 09               [12]  851 	inc	r1
      002DB3 E6               [12]  852 	mov	a,@r0
      002DB4 F7               [12]  853 	mov	@r1,a
      002DB5 A8 08            [24]  854 	mov	r0,_bp
      002DB7 08               [12]  855 	inc	r0
      002DB8 08               [12]  856 	inc	r0
      002DB9 86 82            [24]  857 	mov	dpl,@r0
      002DBB 08               [12]  858 	inc	r0
      002DBC 86 83            [24]  859 	mov	dph,@r0
      002DBE 08               [12]  860 	inc	r0
      002DBF 86 F0            [24]  861 	mov	b,@r0
      002DC1 12 70 E2         [24]  862 	lcall	__gptrget
      002DC4 FA               [12]  863 	mov	r2,a
      002DC5 A3               [24]  864 	inc	dptr
      002DC6 12 70 E2         [24]  865 	lcall	__gptrget
      002DC9 FB               [12]  866 	mov	r3,a
      002DCA A3               [24]  867 	inc	dptr
      002DCB 12 70 E2         [24]  868 	lcall	__gptrget
      002DCE FE               [12]  869 	mov	r6,a
      002DCF C0 07            [24]  870 	push	ar7
      002DD1 E5 08            [12]  871 	mov	a,_bp
      002DD3 24 05            [12]  872 	add	a,#0x05
      002DD5 F8               [12]  873 	mov	r0,a
      002DD6 E6               [12]  874 	mov	a,@r0
      002DD7 C0 E0            [24]  875 	push	acc
      002DD9 08               [12]  876 	inc	r0
      002DDA E6               [12]  877 	mov	a,@r0
      002DDB C0 E0            [24]  878 	push	acc
      002DDD 08               [12]  879 	inc	r0
      002DDE E6               [12]  880 	mov	a,@r0
      002DDF C0 E0            [24]  881 	push	acc
      002DE1 8A 82            [24]  882 	mov	dpl,r2
      002DE3 8B 83            [24]  883 	mov	dph,r3
      002DE5 8E F0            [24]  884 	mov	b,r6
      002DE7 12 27 83         [24]  885 	lcall	_stack_pop
      002DEA AE 82            [24]  886 	mov	r6,dpl
      002DEC AD 83            [24]  887 	mov	r5,dph
      002DEE 15 81            [12]  888 	dec	sp
      002DF0 15 81            [12]  889 	dec	sp
      002DF2 15 81            [12]  890 	dec	sp
      002DF4 D0 07            [24]  891 	pop	ar7
                                    892 ;	calc.c:104: if (!r) {
      002DF6 EE               [12]  893 	mov	a,r6
      002DF7 4D               [12]  894 	orl	a,r5
      002DF8 70 44            [24]  895 	jnz	00183$
                                    896 ;	calc.c:105: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002DFA E5 08            [12]  897 	mov	a,_bp
      002DFC 24 08            [12]  898 	add	a,#0x08
      002DFE F8               [12]  899 	mov	r0,a
      002DFF 86 82            [24]  900 	mov	dpl,@r0
      002E01 08               [12]  901 	inc	r0
      002E02 86 83            [24]  902 	mov	dph,@r0
      002E04 08               [12]  903 	inc	r0
      002E05 86 F0            [24]  904 	mov	b,@r0
      002E07 12 70 E2         [24]  905 	lcall	__gptrget
      002E0A FD               [12]  906 	mov	r5,a
      002E0B A3               [24]  907 	inc	dptr
      002E0C 12 70 E2         [24]  908 	lcall	__gptrget
      002E0F FE               [12]  909 	mov	r6,a
      002E10 BD 08 06         [24]  910 	cjne	r5,#0x08,00320$
      002E13 BE 00 03         [24]  911 	cjne	r6,#0x00,00320$
      002E16 02 30 1D         [24]  912 	ljmp	00110$
      002E19                        913 00320$:
      002E19 7C 7D            [12]  914 	mov	r4,#___str_4
      002E1B 7D 89            [12]  915 	mov	r5,#(___str_4 >> 8)
      002E1D 7E 80            [12]  916 	mov	r6,#0x80
                                    917 ;	calc.c:59: return;
      002E1F                        918 00138$:
                                    919 ;	calc.c:57: for (; *s; s++) putchar(*s);
      002E1F 8C 82            [24]  920 	mov	dpl,r4
      002E21 8D 83            [24]  921 	mov	dph,r5
      002E23 8E F0            [24]  922 	mov	b,r6
      002E25 12 70 E2         [24]  923 	lcall	__gptrget
      002E28 FB               [12]  924 	mov	r3,a
      002E29 70 03            [24]  925 	jnz	00321$
      002E2B 02 30 1D         [24]  926 	ljmp	00110$
      002E2E                        927 00321$:
      002E2E 7A 00            [12]  928 	mov	r2,#0x00
      002E30 8B 82            [24]  929 	mov	dpl,r3
      002E32 8A 83            [24]  930 	mov	dph,r2
      002E34 12 2B 70         [24]  931 	lcall	_putchar
      002E37 0C               [12]  932 	inc	r4
                                    933 ;	calc.c:106: } else while (r > 0) {
      002E38 BC 00 E4         [24]  934 	cjne	r4,#0x00,00138$
      002E3B 0D               [12]  935 	inc	r5
      002E3C 80 E1            [24]  936 	sjmp	00138$
      002E3E                        937 00183$:
      002E3E A8 08            [24]  938 	mov	r0,_bp
      002E40 08               [12]  939 	inc	r0
      002E41 A6 07            [24]  940 	mov	@r0,ar7
      002E43                        941 00105$:
      002E43 C3               [12]  942 	clr	c
      002E44 E4               [12]  943 	clr	a
      002E45 9E               [12]  944 	subb	a,r6
      002E46 74 80            [12]  945 	mov	a,#(0x00 ^ 0x80)
      002E48 8D F0            [24]  946 	mov	b,r5
      002E4A 63 F0 80         [24]  947 	xrl	b,#0x80
      002E4D 95 F0            [12]  948 	subb	a,b
      002E4F 40 03            [24]  949 	jc	00323$
      002E51 02 30 1D         [24]  950 	ljmp	00110$
      002E54                        951 00323$:
                                    952 ;	calc.c:107: printstr("PSPA\t");
      002E54 7B 8F            [12]  953 	mov	r3,#___str_5
      002E56 7C 89            [12]  954 	mov	r4,#(___str_5 >> 8)
      002E58 7D 80            [12]  955 	mov	r5,#0x80
                                    956 ;	calc.c:59: return;
      002E5A                        957 00141$:
                                    958 ;	calc.c:57: for (; *s; s++) putchar(*s);
      002E5A 8B 82            [24]  959 	mov	dpl,r3
      002E5C 8C 83            [24]  960 	mov	dph,r4
      002E5E 8D F0            [24]  961 	mov	b,r5
      002E60 12 70 E2         [24]  962 	lcall	__gptrget
      002E63 FA               [12]  963 	mov	r2,a
      002E64 60 10            [24]  964 	jz	00119$
      002E66 7E 00            [12]  965 	mov	r6,#0x00
      002E68 8A 82            [24]  966 	mov	dpl,r2
      002E6A 8E 83            [24]  967 	mov	dph,r6
      002E6C 12 2B 70         [24]  968 	lcall	_putchar
      002E6F 0B               [12]  969 	inc	r3
                                    970 ;	calc.c:107: printstr("PSPA\t");
      002E70 BB 00 E7         [24]  971 	cjne	r3,#0x00,00141$
      002E73 0C               [12]  972 	inc	r4
      002E74 80 E4            [24]  973 	sjmp	00141$
      002E76                        974 00119$:
                                    975 ;	calc.c:108: printall(d);
      002E76 E5 08            [12]  976 	mov	a,_bp
      002E78 24 0E            [12]  977 	add	a,#0x0e
      002E7A F8               [12]  978 	mov	r0,a
      002E7B E5 08            [12]  979 	mov	a,_bp
      002E7D 24 12            [12]  980 	add	a,#0x12
      002E7F F9               [12]  981 	mov	r1,a
      002E80 E6               [12]  982 	mov	a,@r0
      002E81 F7               [12]  983 	mov	@r1,a
      002E82 08               [12]  984 	inc	r0
      002E83 09               [12]  985 	inc	r1
      002E84 E6               [12]  986 	mov	a,@r0
      002E85 F7               [12]  987 	mov	@r1,a
      002E86 08               [12]  988 	inc	r0
      002E87 09               [12]  989 	inc	r1
      002E88 E6               [12]  990 	mov	a,@r0
      002E89 F7               [12]  991 	mov	@r1,a
      002E8A 08               [12]  992 	inc	r0
      002E8B 09               [12]  993 	inc	r1
      002E8C E6               [12]  994 	mov	a,@r0
      002E8D F7               [12]  995 	mov	@r1,a
      002E8E E5 08            [12]  996 	mov	a,_bp
      002E90 24 12            [12]  997 	add	a,#0x12
      002E92 F8               [12]  998 	mov	r0,a
      002E93 86 03            [24]  999 	mov	ar3,@r0
      002E95 08               [12] 1000 	inc	r0
      002E96 86 04            [24] 1001 	mov	ar4,@r0
      002E98 08               [12] 1002 	inc	r0
      002E99 86 05            [24] 1003 	mov	ar5,@r0
      002E9B 08               [12] 1004 	inc	r0
      002E9C 86 06            [24] 1005 	mov	ar6,@r0
                                   1006 ;	calc.c:72: printf("%08lx\t", d);
      002E9E C0 07            [24] 1007 	push	ar7
      002EA0 C0 06            [24] 1008 	push	ar6
      002EA2 C0 05            [24] 1009 	push	ar5
      002EA4 C0 04            [24] 1010 	push	ar4
      002EA6 C0 03            [24] 1011 	push	ar3
      002EA8 E5 08            [12] 1012 	mov	a,_bp
      002EAA 24 12            [12] 1013 	add	a,#0x12
      002EAC F8               [12] 1014 	mov	r0,a
      002EAD E6               [12] 1015 	mov	a,@r0
      002EAE C0 E0            [24] 1016 	push	acc
      002EB0 08               [12] 1017 	inc	r0
      002EB1 E6               [12] 1018 	mov	a,@r0
      002EB2 C0 E0            [24] 1019 	push	acc
      002EB4 08               [12] 1020 	inc	r0
      002EB5 E6               [12] 1021 	mov	a,@r0
      002EB6 C0 E0            [24] 1022 	push	acc
      002EB8 08               [12] 1023 	inc	r0
      002EB9 E6               [12] 1024 	mov	a,@r0
      002EBA C0 E0            [24] 1025 	push	acc
      002EBC 74 63            [12] 1026 	mov	a,#___str_0
      002EBE C0 E0            [24] 1027 	push	acc
      002EC0 74 89            [12] 1028 	mov	a,#(___str_0 >> 8)
      002EC2 C0 E0            [24] 1029 	push	acc
      002EC4 74 80            [12] 1030 	mov	a,#0x80
      002EC6 C0 E0            [24] 1031 	push	acc
      002EC8 12 70 A9         [24] 1032 	lcall	_printf
      002ECB E5 81            [12] 1033 	mov	a,sp
      002ECD 24 F9            [12] 1034 	add	a,#0xf9
      002ECF F5 81            [12] 1035 	mov	sp,a
      002ED1 D0 03            [24] 1036 	pop	ar3
      002ED3 D0 04            [24] 1037 	pop	ar4
      002ED5 D0 05            [24] 1038 	pop	ar5
      002ED7 D0 06            [24] 1039 	pop	ar6
                                   1040 ;	calc.c:73: printf("% 11ld\t", d);
      002ED9 C0 06            [24] 1041 	push	ar6
      002EDB C0 05            [24] 1042 	push	ar5
      002EDD C0 04            [24] 1043 	push	ar4
      002EDF C0 03            [24] 1044 	push	ar3
      002EE1 C0 03            [24] 1045 	push	ar3
      002EE3 C0 04            [24] 1046 	push	ar4
      002EE5 C0 05            [24] 1047 	push	ar5
      002EE7 C0 06            [24] 1048 	push	ar6
      002EE9 74 6A            [12] 1049 	mov	a,#___str_1
      002EEB C0 E0            [24] 1050 	push	acc
      002EED 74 89            [12] 1051 	mov	a,#(___str_1 >> 8)
      002EEF C0 E0            [24] 1052 	push	acc
      002EF1 74 80            [12] 1053 	mov	a,#0x80
      002EF3 C0 E0            [24] 1054 	push	acc
      002EF5 12 70 A9         [24] 1055 	lcall	_printf
      002EF8 E5 81            [12] 1056 	mov	a,sp
      002EFA 24 F9            [12] 1057 	add	a,#0xf9
      002EFC F5 81            [12] 1058 	mov	sp,a
      002EFE D0 03            [24] 1059 	pop	ar3
      002F00 D0 04            [24] 1060 	pop	ar4
      002F02 D0 05            [24] 1061 	pop	ar5
      002F04 D0 06            [24] 1062 	pop	ar6
                                   1063 ;	calc.c:74: printf("%011lo\t", d);
      002F06 C0 06            [24] 1064 	push	ar6
      002F08 C0 05            [24] 1065 	push	ar5
      002F0A C0 04            [24] 1066 	push	ar4
      002F0C C0 03            [24] 1067 	push	ar3
      002F0E C0 03            [24] 1068 	push	ar3
      002F10 C0 04            [24] 1069 	push	ar4
      002F12 C0 05            [24] 1070 	push	ar5
      002F14 C0 06            [24] 1071 	push	ar6
      002F16 74 72            [12] 1072 	mov	a,#___str_2
      002F18 C0 E0            [24] 1073 	push	acc
      002F1A 74 89            [12] 1074 	mov	a,#(___str_2 >> 8)
      002F1C C0 E0            [24] 1075 	push	acc
      002F1E 74 80            [12] 1076 	mov	a,#0x80
      002F20 C0 E0            [24] 1077 	push	acc
      002F22 12 70 A9         [24] 1078 	lcall	_printf
      002F25 E5 81            [12] 1079 	mov	a,sp
      002F27 24 F9            [12] 1080 	add	a,#0xf9
      002F29 F5 81            [12] 1081 	mov	sp,a
      002F2B D0 03            [24] 1082 	pop	ar3
      002F2D D0 04            [24] 1083 	pop	ar4
      002F2F D0 05            [24] 1084 	pop	ar5
      002F31 D0 06            [24] 1085 	pop	ar6
      002F33 D0 07            [24] 1086 	pop	ar7
                                   1087 ;	calc.c:75: printbin(d);
      002F35 E5 08            [12] 1088 	mov	a,_bp
      002F37 24 16            [12] 1089 	add	a,#0x16
      002F39 F8               [12] 1090 	mov	r0,a
      002F3A A6 03            [24] 1091 	mov	@r0,ar3
      002F3C 08               [12] 1092 	inc	r0
      002F3D A6 04            [24] 1093 	mov	@r0,ar4
      002F3F 08               [12] 1094 	inc	r0
      002F40 A6 05            [24] 1095 	mov	@r0,ar5
      002F42 08               [12] 1096 	inc	r0
      002F43 A6 06            [24] 1097 	mov	@r0,ar6
                                   1098 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F45 E5 08            [12] 1099 	mov	a,_bp
      002F47 24 1A            [12] 1100 	add	a,#0x1a
      002F49 F8               [12] 1101 	mov	r0,a
      002F4A E4               [12] 1102 	clr	a
      002F4B F6               [12] 1103 	mov	@r0,a
      002F4C 08               [12] 1104 	inc	r0
      002F4D F6               [12] 1105 	mov	@r0,a
      002F4E 08               [12] 1106 	inc	r0
      002F4F F6               [12] 1107 	mov	@r0,a
      002F50 08               [12] 1108 	inc	r0
      002F51 76 80            [12] 1109 	mov	@r0,#0x80
                                   1110 ;	calc.c:122: return 1;
                                   1111 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F53                       1112 00143$:
                                   1113 ;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002F53 E5 08            [12] 1114 	mov	a,_bp
      002F55 24 16            [12] 1115 	add	a,#0x16
      002F57 F8               [12] 1116 	mov	r0,a
      002F58 86 02            [24] 1117 	mov	ar2,@r0
      002F5A 08               [12] 1118 	inc	r0
      002F5B 86 03            [24] 1119 	mov	ar3,@r0
      002F5D 08               [12] 1120 	inc	r0
      002F5E 86 04            [24] 1121 	mov	ar4,@r0
      002F60 08               [12] 1122 	inc	r0
      002F61 86 05            [24] 1123 	mov	ar5,@r0
      002F63 E5 08            [12] 1124 	mov	a,_bp
      002F65 24 1A            [12] 1125 	add	a,#0x1a
      002F67 F8               [12] 1126 	mov	r0,a
      002F68 E6               [12] 1127 	mov	a,@r0
      002F69 52 02            [12] 1128 	anl	ar2,a
      002F6B 08               [12] 1129 	inc	r0
      002F6C E6               [12] 1130 	mov	a,@r0
      002F6D 52 03            [12] 1131 	anl	ar3,a
      002F6F 08               [12] 1132 	inc	r0
      002F70 E6               [12] 1133 	mov	a,@r0
      002F71 52 04            [12] 1134 	anl	ar4,a
      002F73 08               [12] 1135 	inc	r0
      002F74 E6               [12] 1136 	mov	a,@r0
      002F75 52 05            [12] 1137 	anl	ar5,a
      002F77 EA               [12] 1138 	mov	a,r2
      002F78 4B               [12] 1139 	orl	a,r3
      002F79 4C               [12] 1140 	orl	a,r4
      002F7A 4D               [12] 1141 	orl	a,r5
      002F7B 60 06            [24] 1142 	jz	00164$
      002F7D 7C 31            [12] 1143 	mov	r4,#0x31
      002F7F 7D 00            [12] 1144 	mov	r5,#0x00
      002F81 80 04            [24] 1145 	sjmp	00165$
      002F83                       1146 00164$:
      002F83 7C 30            [12] 1147 	mov	r4,#0x30
      002F85 7D 00            [12] 1148 	mov	r5,#0x00
      002F87                       1149 00165$:
      002F87 8C 82            [24] 1150 	mov	dpl,r4
      002F89 8D 83            [24] 1151 	mov	dph,r5
      002F8B 12 2B 70         [24] 1152 	lcall	_putchar
                                   1153 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F8E E5 08            [12] 1154 	mov	a,_bp
      002F90 24 1A            [12] 1155 	add	a,#0x1a
      002F92 F8               [12] 1156 	mov	r0,a
      002F93 08               [12] 1157 	inc	r0
      002F94 08               [12] 1158 	inc	r0
      002F95 08               [12] 1159 	inc	r0
      002F96 E6               [12] 1160 	mov	a,@r0
      002F97 C3               [12] 1161 	clr	c
      002F98 13               [12] 1162 	rrc	a
      002F99 F6               [12] 1163 	mov	@r0,a
      002F9A 18               [12] 1164 	dec	r0
      002F9B E6               [12] 1165 	mov	a,@r0
      002F9C 13               [12] 1166 	rrc	a
      002F9D F6               [12] 1167 	mov	@r0,a
      002F9E 18               [12] 1168 	dec	r0
      002F9F E6               [12] 1169 	mov	a,@r0
      002FA0 13               [12] 1170 	rrc	a
      002FA1 F6               [12] 1171 	mov	@r0,a
      002FA2 18               [12] 1172 	dec	r0
      002FA3 E6               [12] 1173 	mov	a,@r0
      002FA4 13               [12] 1174 	rrc	a
      002FA5 F6               [12] 1175 	mov	@r0,a
      002FA6 E5 08            [12] 1176 	mov	a,_bp
      002FA8 24 1A            [12] 1177 	add	a,#0x1a
      002FAA F8               [12] 1178 	mov	r0,a
      002FAB E6               [12] 1179 	mov	a,@r0
      002FAC 08               [12] 1180 	inc	r0
      002FAD 46               [12] 1181 	orl	a,@r0
      002FAE 08               [12] 1182 	inc	r0
      002FAF 46               [12] 1183 	orl	a,@r0
      002FB0 08               [12] 1184 	inc	r0
      002FB1 46               [12] 1185 	orl	a,@r0
      002FB2 70 9F            [24] 1186 	jnz	00143$
                                   1187 ;	calc.c:109: printstr("\r\n");
      002FB4 7B 7A            [12] 1188 	mov	r3,#___str_3
      002FB6 7C 89            [12] 1189 	mov	r4,#(___str_3 >> 8)
      002FB8 7D 80            [12] 1190 	mov	r5,#0x80
                                   1191 ;	calc.c:59: return;
      002FBA                       1192 00146$:
                                   1193 ;	calc.c:57: for (; *s; s++) putchar(*s);
      002FBA 8B 82            [24] 1194 	mov	dpl,r3
      002FBC 8C 83            [24] 1195 	mov	dph,r4
      002FBE 8D F0            [24] 1196 	mov	b,r5
      002FC0 12 70 E2         [24] 1197 	lcall	__gptrget
      002FC3 FA               [12] 1198 	mov	r2,a
      002FC4 60 10            [24] 1199 	jz	00124$
      002FC6 7E 00            [12] 1200 	mov	r6,#0x00
      002FC8 8A 82            [24] 1201 	mov	dpl,r2
      002FCA 8E 83            [24] 1202 	mov	dph,r6
      002FCC 12 2B 70         [24] 1203 	lcall	_putchar
      002FCF 0B               [12] 1204 	inc	r3
                                   1205 ;	calc.c:109: printstr("\r\n");
      002FD0 BB 00 E7         [24] 1206 	cjne	r3,#0x00,00146$
      002FD3 0C               [12] 1207 	inc	r4
      002FD4 80 E4            [24] 1208 	sjmp	00146$
      002FD6                       1209 00124$:
                                   1210 ;	calc.c:110: r = stack_pop(ctx->ps, &d);
      002FD6 C0 07            [24] 1211 	push	ar7
      002FD8 A8 08            [24] 1212 	mov	r0,_bp
      002FDA 08               [12] 1213 	inc	r0
      002FDB 86 03            [24] 1214 	mov	ar3,@r0
      002FDD 7C 00            [12] 1215 	mov	r4,#0x00
      002FDF 7D 40            [12] 1216 	mov	r5,#0x40
      002FE1 A8 08            [24] 1217 	mov	r0,_bp
      002FE3 08               [12] 1218 	inc	r0
      002FE4 08               [12] 1219 	inc	r0
      002FE5 86 82            [24] 1220 	mov	dpl,@r0
      002FE7 08               [12] 1221 	inc	r0
      002FE8 86 83            [24] 1222 	mov	dph,@r0
      002FEA 08               [12] 1223 	inc	r0
      002FEB 86 F0            [24] 1224 	mov	b,@r0
      002FED 12 70 E2         [24] 1225 	lcall	__gptrget
      002FF0 FA               [12] 1226 	mov	r2,a
      002FF1 A3               [24] 1227 	inc	dptr
      002FF2 12 70 E2         [24] 1228 	lcall	__gptrget
      002FF5 FE               [12] 1229 	mov	r6,a
      002FF6 A3               [24] 1230 	inc	dptr
      002FF7 12 70 E2         [24] 1231 	lcall	__gptrget
      002FFA FF               [12] 1232 	mov	r7,a
      002FFB C0 07            [24] 1233 	push	ar7
      002FFD C0 03            [24] 1234 	push	ar3
      002FFF C0 04            [24] 1235 	push	ar4
      003001 C0 05            [24] 1236 	push	ar5
      003003 8A 82            [24] 1237 	mov	dpl,r2
      003005 8E 83            [24] 1238 	mov	dph,r6
      003007 8F F0            [24] 1239 	mov	b,r7
      003009 12 27 83         [24] 1240 	lcall	_stack_pop
      00300C AE 82            [24] 1241 	mov	r6,dpl
      00300E AD 83            [24] 1242 	mov	r5,dph
      003010 15 81            [12] 1243 	dec	sp
      003012 15 81            [12] 1244 	dec	sp
      003014 15 81            [12] 1245 	dec	sp
      003016 D0 07            [24] 1246 	pop	ar7
      003018 D0 07            [24] 1247 	pop	ar7
      00301A 02 2E 43         [24] 1248 	ljmp	00105$
      00301D                       1249 00110$:
                                   1250 ;	calc.c:113: if (delta->event == EVENT_TERM) {
      00301D E5 08            [12] 1251 	mov	a,_bp
      00301F 24 08            [12] 1252 	add	a,#0x08
      003021 F8               [12] 1253 	mov	r0,a
      003022 86 82            [24] 1254 	mov	dpl,@r0
      003024 08               [12] 1255 	inc	r0
      003025 86 83            [24] 1256 	mov	dph,@r0
      003027 08               [12] 1257 	inc	r0
      003028 86 F0            [24] 1258 	mov	b,@r0
      00302A 12 70 E2         [24] 1259 	lcall	__gptrget
      00302D FD               [12] 1260 	mov	r5,a
      00302E A3               [24] 1261 	inc	dptr
      00302F 12 70 E2         [24] 1262 	lcall	__gptrget
      003032 FE               [12] 1263 	mov	r6,a
      003033 BD 08 05         [24] 1264 	cjne	r5,#0x08,00330$
      003036 BE 00 02         [24] 1265 	cjne	r6,#0x00,00330$
      003039 80 03            [24] 1266 	sjmp	00331$
      00303B                       1267 00330$:
      00303B 02 32 B1         [24] 1268 	ljmp	00113$
      00303E                       1269 00331$:
                                   1270 ;	calc.c:114: printstr("\r\n");
      00303E 7C 7A            [12] 1271 	mov	r4,#___str_3
      003040 7D 89            [12] 1272 	mov	r5,#(___str_3 >> 8)
      003042 7E 80            [12] 1273 	mov	r6,#0x80
                                   1274 ;	calc.c:59: return;
      003044                       1275 00149$:
                                   1276 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003044 8C 82            [24] 1277 	mov	dpl,r4
      003046 8D 83            [24] 1278 	mov	dph,r5
      003048 8E F0            [24] 1279 	mov	b,r6
      00304A 12 70 E2         [24] 1280 	lcall	__gptrget
      00304D FB               [12] 1281 	mov	r3,a
      00304E 60 10            [24] 1282 	jz	00126$
      003050 7A 00            [12] 1283 	mov	r2,#0x00
      003052 8B 82            [24] 1284 	mov	dpl,r3
      003054 8A 83            [24] 1285 	mov	dph,r2
      003056 12 2B 70         [24] 1286 	lcall	_putchar
      003059 0C               [12] 1287 	inc	r4
                                   1288 ;	calc.c:114: printstr("\r\n");
      00305A BC 00 E7         [24] 1289 	cjne	r4,#0x00,00149$
      00305D 0D               [12] 1290 	inc	r5
      00305E 80 E4            [24] 1291 	sjmp	00149$
      003060                       1292 00126$:
                                   1293 ;	calc.c:115: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      003060 8F 06            [24] 1294 	mov	ar6,r7
      003062 E5 08            [12] 1295 	mov	a,_bp
      003064 24 05            [12] 1296 	add	a,#0x05
      003066 F8               [12] 1297 	mov	r0,a
      003067 A6 06            [24] 1298 	mov	@r0,ar6
      003069 08               [12] 1299 	inc	r0
      00306A 76 00            [12] 1300 	mov	@r0,#0x00
      00306C 08               [12] 1301 	inc	r0
      00306D 76 40            [12] 1302 	mov	@r0,#0x40
      00306F E5 08            [12] 1303 	mov	a,_bp
      003071 24 0B            [12] 1304 	add	a,#0x0b
      003073 F8               [12] 1305 	mov	r0,a
      003074 E5 08            [12] 1306 	mov	a,_bp
      003076 24 08            [12] 1307 	add	a,#0x08
      003078 F9               [12] 1308 	mov	r1,a
      003079 74 14            [12] 1309 	mov	a,#0x14
      00307B 26               [12] 1310 	add	a,@r0
      00307C F7               [12] 1311 	mov	@r1,a
      00307D 74 40            [12] 1312 	mov	a,#0x40
      00307F 08               [12] 1313 	inc	r0
      003080 36               [12] 1314 	addc	a,@r0
      003081 09               [12] 1315 	inc	r1
      003082 F7               [12] 1316 	mov	@r1,a
      003083 08               [12] 1317 	inc	r0
      003084 09               [12] 1318 	inc	r1
      003085 E6               [12] 1319 	mov	a,@r0
      003086 F7               [12] 1320 	mov	@r1,a
      003087 E5 08            [12] 1321 	mov	a,_bp
      003089 24 08            [12] 1322 	add	a,#0x08
      00308B F8               [12] 1323 	mov	r0,a
      00308C 86 82            [24] 1324 	mov	dpl,@r0
      00308E 08               [12] 1325 	inc	r0
      00308F 86 83            [24] 1326 	mov	dph,@r0
      003091 08               [12] 1327 	inc	r0
      003092 86 F0            [24] 1328 	mov	b,@r0
      003094 12 70 E2         [24] 1329 	lcall	__gptrget
      003097 FA               [12] 1330 	mov	r2,a
      003098 A3               [24] 1331 	inc	dptr
      003099 12 70 E2         [24] 1332 	lcall	__gptrget
      00309C FB               [12] 1333 	mov	r3,a
      00309D A3               [24] 1334 	inc	dptr
      00309E 12 70 E2         [24] 1335 	lcall	__gptrget
      0030A1 FE               [12] 1336 	mov	r6,a
      0030A2 C0 07            [24] 1337 	push	ar7
      0030A4 E5 08            [12] 1338 	mov	a,_bp
      0030A6 24 05            [12] 1339 	add	a,#0x05
      0030A8 F8               [12] 1340 	mov	r0,a
      0030A9 E6               [12] 1341 	mov	a,@r0
      0030AA C0 E0            [24] 1342 	push	acc
      0030AC 08               [12] 1343 	inc	r0
      0030AD E6               [12] 1344 	mov	a,@r0
      0030AE C0 E0            [24] 1345 	push	acc
      0030B0 08               [12] 1346 	inc	r0
      0030B1 E6               [12] 1347 	mov	a,@r0
      0030B2 C0 E0            [24] 1348 	push	acc
      0030B4 8A 82            [24] 1349 	mov	dpl,r2
      0030B6 8B 83            [24] 1350 	mov	dph,r3
      0030B8 8E F0            [24] 1351 	mov	b,r6
      0030BA 12 27 83         [24] 1352 	lcall	_stack_pop
      0030BD AD 82            [24] 1353 	mov	r5,dpl
      0030BF AE 83            [24] 1354 	mov	r6,dph
      0030C1 15 81            [12] 1355 	dec	sp
      0030C3 15 81            [12] 1356 	dec	sp
      0030C5 15 81            [12] 1357 	dec	sp
      0030C7 D0 07            [24] 1358 	pop	ar7
      0030C9                       1359 00160$:
      0030C9 C3               [12] 1360 	clr	c
      0030CA E4               [12] 1361 	clr	a
      0030CB 9D               [12] 1362 	subb	a,r5
      0030CC 74 80            [12] 1363 	mov	a,#(0x00 ^ 0x80)
      0030CE 8E F0            [24] 1364 	mov	b,r6
      0030D0 63 F0 80         [24] 1365 	xrl	b,#0x80
      0030D3 95 F0            [12] 1366 	subb	a,b
      0030D5 40 03            [24] 1367 	jc	00334$
      0030D7 02 32 B1         [24] 1368 	ljmp	00113$
      0030DA                       1369 00334$:
                                   1370 ;	calc.c:116: printstr("SSPA\t");
      0030DA 7D 95            [12] 1371 	mov	r5,#___str_6
      0030DC 7B 89            [12] 1372 	mov	r3,#(___str_6 >> 8)
      0030DE 7A 80            [12] 1373 	mov	r2,#0x80
                                   1374 ;	calc.c:59: return;
      0030E0                       1375 00152$:
                                   1376 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0030E0 8D 82            [24] 1377 	mov	dpl,r5
      0030E2 8B 83            [24] 1378 	mov	dph,r3
      0030E4 8A F0            [24] 1379 	mov	b,r2
      0030E6 12 70 E2         [24] 1380 	lcall	__gptrget
      0030E9 FE               [12] 1381 	mov	r6,a
      0030EA 60 16            [24] 1382 	jz	00128$
      0030EC C0 07            [24] 1383 	push	ar7
      0030EE 8E 04            [24] 1384 	mov	ar4,r6
      0030F0 7F 00            [12] 1385 	mov	r7,#0x00
      0030F2 8C 82            [24] 1386 	mov	dpl,r4
      0030F4 8F 83            [24] 1387 	mov	dph,r7
      0030F6 12 2B 70         [24] 1388 	lcall	_putchar
      0030F9 0D               [12] 1389 	inc	r5
      0030FA BD 00 01         [24] 1390 	cjne	r5,#0x00,00336$
      0030FD 0B               [12] 1391 	inc	r3
      0030FE                       1392 00336$:
      0030FE D0 07            [24] 1393 	pop	ar7
                                   1394 ;	calc.c:116: printstr("SSPA\t");
      003100 80 DE            [24] 1395 	sjmp	00152$
      003102                       1396 00128$:
                                   1397 ;	calc.c:117: printall(d);
      003102 C0 07            [24] 1398 	push	ar7
      003104 E5 08            [12] 1399 	mov	a,_bp
      003106 24 0E            [12] 1400 	add	a,#0x0e
      003108 F8               [12] 1401 	mov	r0,a
      003109 E5 08            [12] 1402 	mov	a,_bp
      00310B 24 12            [12] 1403 	add	a,#0x12
      00310D F9               [12] 1404 	mov	r1,a
      00310E E6               [12] 1405 	mov	a,@r0
      00310F F7               [12] 1406 	mov	@r1,a
      003110 08               [12] 1407 	inc	r0
      003111 09               [12] 1408 	inc	r1
      003112 E6               [12] 1409 	mov	a,@r0
      003113 F7               [12] 1410 	mov	@r1,a
      003114 08               [12] 1411 	inc	r0
      003115 09               [12] 1412 	inc	r1
      003116 E6               [12] 1413 	mov	a,@r0
      003117 F7               [12] 1414 	mov	@r1,a
      003118 08               [12] 1415 	inc	r0
      003119 09               [12] 1416 	inc	r1
      00311A E6               [12] 1417 	mov	a,@r0
      00311B F7               [12] 1418 	mov	@r1,a
      00311C E5 08            [12] 1419 	mov	a,_bp
      00311E 24 12            [12] 1420 	add	a,#0x12
      003120 F8               [12] 1421 	mov	r0,a
      003121 86 02            [24] 1422 	mov	ar2,@r0
      003123 08               [12] 1423 	inc	r0
      003124 86 03            [24] 1424 	mov	ar3,@r0
      003126 08               [12] 1425 	inc	r0
      003127 86 04            [24] 1426 	mov	ar4,@r0
      003129 08               [12] 1427 	inc	r0
      00312A 86 07            [24] 1428 	mov	ar7,@r0
                                   1429 ;	calc.c:72: printf("%08lx\t", d);
      00312C C0 07            [24] 1430 	push	ar7
      00312E C0 04            [24] 1431 	push	ar4
      003130 C0 03            [24] 1432 	push	ar3
      003132 C0 02            [24] 1433 	push	ar2
      003134 E5 08            [12] 1434 	mov	a,_bp
      003136 24 12            [12] 1435 	add	a,#0x12
      003138 F8               [12] 1436 	mov	r0,a
      003139 E6               [12] 1437 	mov	a,@r0
      00313A C0 E0            [24] 1438 	push	acc
      00313C 08               [12] 1439 	inc	r0
      00313D E6               [12] 1440 	mov	a,@r0
      00313E C0 E0            [24] 1441 	push	acc
      003140 08               [12] 1442 	inc	r0
      003141 E6               [12] 1443 	mov	a,@r0
      003142 C0 E0            [24] 1444 	push	acc
      003144 08               [12] 1445 	inc	r0
      003145 E6               [12] 1446 	mov	a,@r0
      003146 C0 E0            [24] 1447 	push	acc
      003148 74 63            [12] 1448 	mov	a,#___str_0
      00314A C0 E0            [24] 1449 	push	acc
      00314C 74 89            [12] 1450 	mov	a,#(___str_0 >> 8)
      00314E C0 E0            [24] 1451 	push	acc
      003150 74 80            [12] 1452 	mov	a,#0x80
      003152 C0 E0            [24] 1453 	push	acc
      003154 12 70 A9         [24] 1454 	lcall	_printf
      003157 E5 81            [12] 1455 	mov	a,sp
      003159 24 F9            [12] 1456 	add	a,#0xf9
      00315B F5 81            [12] 1457 	mov	sp,a
      00315D D0 02            [24] 1458 	pop	ar2
      00315F D0 03            [24] 1459 	pop	ar3
      003161 D0 04            [24] 1460 	pop	ar4
      003163 D0 07            [24] 1461 	pop	ar7
                                   1462 ;	calc.c:73: printf("% 11ld\t", d);
      003165 C0 07            [24] 1463 	push	ar7
      003167 C0 04            [24] 1464 	push	ar4
      003169 C0 03            [24] 1465 	push	ar3
      00316B C0 02            [24] 1466 	push	ar2
      00316D C0 02            [24] 1467 	push	ar2
      00316F C0 03            [24] 1468 	push	ar3
      003171 C0 04            [24] 1469 	push	ar4
      003173 C0 07            [24] 1470 	push	ar7
      003175 74 6A            [12] 1471 	mov	a,#___str_1
      003177 C0 E0            [24] 1472 	push	acc
      003179 74 89            [12] 1473 	mov	a,#(___str_1 >> 8)
      00317B C0 E0            [24] 1474 	push	acc
      00317D 74 80            [12] 1475 	mov	a,#0x80
      00317F C0 E0            [24] 1476 	push	acc
      003181 12 70 A9         [24] 1477 	lcall	_printf
      003184 E5 81            [12] 1478 	mov	a,sp
      003186 24 F9            [12] 1479 	add	a,#0xf9
      003188 F5 81            [12] 1480 	mov	sp,a
      00318A D0 02            [24] 1481 	pop	ar2
      00318C D0 03            [24] 1482 	pop	ar3
      00318E D0 04            [24] 1483 	pop	ar4
      003190 D0 07            [24] 1484 	pop	ar7
                                   1485 ;	calc.c:74: printf("%011lo\t", d);
      003192 C0 07            [24] 1486 	push	ar7
      003194 C0 04            [24] 1487 	push	ar4
      003196 C0 03            [24] 1488 	push	ar3
      003198 C0 02            [24] 1489 	push	ar2
      00319A C0 02            [24] 1490 	push	ar2
      00319C C0 03            [24] 1491 	push	ar3
      00319E C0 04            [24] 1492 	push	ar4
      0031A0 C0 07            [24] 1493 	push	ar7
      0031A2 74 72            [12] 1494 	mov	a,#___str_2
      0031A4 C0 E0            [24] 1495 	push	acc
      0031A6 74 89            [12] 1496 	mov	a,#(___str_2 >> 8)
      0031A8 C0 E0            [24] 1497 	push	acc
      0031AA 74 80            [12] 1498 	mov	a,#0x80
      0031AC C0 E0            [24] 1499 	push	acc
      0031AE 12 70 A9         [24] 1500 	lcall	_printf
      0031B1 E5 81            [12] 1501 	mov	a,sp
      0031B3 24 F9            [12] 1502 	add	a,#0xf9
      0031B5 F5 81            [12] 1503 	mov	sp,a
      0031B7 D0 02            [24] 1504 	pop	ar2
      0031B9 D0 03            [24] 1505 	pop	ar3
      0031BB D0 04            [24] 1506 	pop	ar4
      0031BD D0 07            [24] 1507 	pop	ar7
                                   1508 ;	calc.c:75: printbin(d);
      0031BF E5 08            [12] 1509 	mov	a,_bp
      0031C1 24 16            [12] 1510 	add	a,#0x16
      0031C3 F8               [12] 1511 	mov	r0,a
      0031C4 A6 02            [24] 1512 	mov	@r0,ar2
      0031C6 08               [12] 1513 	inc	r0
      0031C7 A6 03            [24] 1514 	mov	@r0,ar3
      0031C9 08               [12] 1515 	inc	r0
      0031CA A6 04            [24] 1516 	mov	@r0,ar4
      0031CC 08               [12] 1517 	inc	r0
      0031CD A6 07            [24] 1518 	mov	@r0,ar7
                                   1519 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031CF E5 08            [12] 1520 	mov	a,_bp
      0031D1 24 1A            [12] 1521 	add	a,#0x1a
      0031D3 F8               [12] 1522 	mov	r0,a
      0031D4 E4               [12] 1523 	clr	a
      0031D5 F6               [12] 1524 	mov	@r0,a
      0031D6 08               [12] 1525 	inc	r0
      0031D7 F6               [12] 1526 	mov	@r0,a
      0031D8 08               [12] 1527 	inc	r0
      0031D9 F6               [12] 1528 	mov	@r0,a
      0031DA 08               [12] 1529 	inc	r0
      0031DB 76 80            [12] 1530 	mov	@r0,#0x80
                                   1531 ;	calc.c:122: return 1;
      0031DD D0 07            [24] 1532 	pop	ar7
                                   1533 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031DF                       1534 00154$:
                                   1535 ;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0031DF C0 07            [24] 1536 	push	ar7
      0031E1 E5 08            [12] 1537 	mov	a,_bp
      0031E3 24 16            [12] 1538 	add	a,#0x16
      0031E5 F8               [12] 1539 	mov	r0,a
      0031E6 86 02            [24] 1540 	mov	ar2,@r0
      0031E8 08               [12] 1541 	inc	r0
      0031E9 86 03            [24] 1542 	mov	ar3,@r0
      0031EB 08               [12] 1543 	inc	r0
      0031EC 86 04            [24] 1544 	mov	ar4,@r0
      0031EE 08               [12] 1545 	inc	r0
      0031EF 86 07            [24] 1546 	mov	ar7,@r0
      0031F1 E5 08            [12] 1547 	mov	a,_bp
      0031F3 24 1A            [12] 1548 	add	a,#0x1a
      0031F5 F8               [12] 1549 	mov	r0,a
      0031F6 E6               [12] 1550 	mov	a,@r0
      0031F7 52 02            [12] 1551 	anl	ar2,a
      0031F9 08               [12] 1552 	inc	r0
      0031FA E6               [12] 1553 	mov	a,@r0
      0031FB 52 03            [12] 1554 	anl	ar3,a
      0031FD 08               [12] 1555 	inc	r0
      0031FE E6               [12] 1556 	mov	a,@r0
      0031FF 52 04            [12] 1557 	anl	ar4,a
      003201 08               [12] 1558 	inc	r0
      003202 E6               [12] 1559 	mov	a,@r0
      003203 52 07            [12] 1560 	anl	ar7,a
      003205 EA               [12] 1561 	mov	a,r2
      003206 4B               [12] 1562 	orl	a,r3
      003207 4C               [12] 1563 	orl	a,r4
      003208 4F               [12] 1564 	orl	a,r7
      003209 D0 07            [24] 1565 	pop	ar7
      00320B 60 06            [24] 1566 	jz	00166$
      00320D 7B 31            [12] 1567 	mov	r3,#0x31
      00320F 7C 00            [12] 1568 	mov	r4,#0x00
      003211 80 04            [24] 1569 	sjmp	00167$
      003213                       1570 00166$:
      003213 7B 30            [12] 1571 	mov	r3,#0x30
      003215 7C 00            [12] 1572 	mov	r4,#0x00
      003217                       1573 00167$:
      003217 8B 82            [24] 1574 	mov	dpl,r3
      003219 8C 83            [24] 1575 	mov	dph,r4
      00321B 12 2B 70         [24] 1576 	lcall	_putchar
                                   1577 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      00321E E5 08            [12] 1578 	mov	a,_bp
      003220 24 1A            [12] 1579 	add	a,#0x1a
      003222 F8               [12] 1580 	mov	r0,a
      003223 08               [12] 1581 	inc	r0
      003224 08               [12] 1582 	inc	r0
      003225 08               [12] 1583 	inc	r0
      003226 E6               [12] 1584 	mov	a,@r0
      003227 C3               [12] 1585 	clr	c
      003228 13               [12] 1586 	rrc	a
      003229 F6               [12] 1587 	mov	@r0,a
      00322A 18               [12] 1588 	dec	r0
      00322B E6               [12] 1589 	mov	a,@r0
      00322C 13               [12] 1590 	rrc	a
      00322D F6               [12] 1591 	mov	@r0,a
      00322E 18               [12] 1592 	dec	r0
      00322F E6               [12] 1593 	mov	a,@r0
      003230 13               [12] 1594 	rrc	a
      003231 F6               [12] 1595 	mov	@r0,a
      003232 18               [12] 1596 	dec	r0
      003233 E6               [12] 1597 	mov	a,@r0
      003234 13               [12] 1598 	rrc	a
      003235 F6               [12] 1599 	mov	@r0,a
      003236 E5 08            [12] 1600 	mov	a,_bp
      003238 24 1A            [12] 1601 	add	a,#0x1a
      00323A F8               [12] 1602 	mov	r0,a
      00323B E6               [12] 1603 	mov	a,@r0
      00323C 08               [12] 1604 	inc	r0
      00323D 46               [12] 1605 	orl	a,@r0
      00323E 08               [12] 1606 	inc	r0
      00323F 46               [12] 1607 	orl	a,@r0
      003240 08               [12] 1608 	inc	r0
      003241 46               [12] 1609 	orl	a,@r0
      003242 70 9B            [24] 1610 	jnz	00154$
                                   1611 ;	calc.c:118: printstr("\r\n");
      003244 7D 7A            [12] 1612 	mov	r5,#___str_3
      003246 7B 89            [12] 1613 	mov	r3,#(___str_3 >> 8)
      003248 7A 80            [12] 1614 	mov	r2,#0x80
                                   1615 ;	calc.c:59: return;
      00324A                       1616 00157$:
                                   1617 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00324A 8D 82            [24] 1618 	mov	dpl,r5
      00324C 8B 83            [24] 1619 	mov	dph,r3
      00324E 8A F0            [24] 1620 	mov	b,r2
      003250 12 70 E2         [24] 1621 	lcall	__gptrget
      003253 FE               [12] 1622 	mov	r6,a
      003254 60 16            [24] 1623 	jz	00133$
      003256 C0 07            [24] 1624 	push	ar7
      003258 8E 04            [24] 1625 	mov	ar4,r6
      00325A 7F 00            [12] 1626 	mov	r7,#0x00
      00325C 8C 82            [24] 1627 	mov	dpl,r4
      00325E 8F 83            [24] 1628 	mov	dph,r7
      003260 12 2B 70         [24] 1629 	lcall	_putchar
      003263 0D               [12] 1630 	inc	r5
      003264 BD 00 01         [24] 1631 	cjne	r5,#0x00,00340$
      003267 0B               [12] 1632 	inc	r3
      003268                       1633 00340$:
      003268 D0 07            [24] 1634 	pop	ar7
                                   1635 ;	calc.c:118: printstr("\r\n");
      00326A 80 DE            [24] 1636 	sjmp	00157$
      00326C                       1637 00133$:
                                   1638 ;	calc.c:115: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      00326C 8F 06            [24] 1639 	mov	ar6,r7
      00326E 7D 00            [12] 1640 	mov	r5,#0x00
      003270 7A 40            [12] 1641 	mov	r2,#0x40
      003272 C0 07            [24] 1642 	push	ar7
      003274 E5 08            [12] 1643 	mov	a,_bp
      003276 24 08            [12] 1644 	add	a,#0x08
      003278 F8               [12] 1645 	mov	r0,a
      003279 86 82            [24] 1646 	mov	dpl,@r0
      00327B 08               [12] 1647 	inc	r0
      00327C 86 83            [24] 1648 	mov	dph,@r0
      00327E 08               [12] 1649 	inc	r0
      00327F 86 F0            [24] 1650 	mov	b,@r0
      003281 12 70 E2         [24] 1651 	lcall	__gptrget
      003284 FB               [12] 1652 	mov	r3,a
      003285 A3               [24] 1653 	inc	dptr
      003286 12 70 E2         [24] 1654 	lcall	__gptrget
      003289 FC               [12] 1655 	mov	r4,a
      00328A A3               [24] 1656 	inc	dptr
      00328B 12 70 E2         [24] 1657 	lcall	__gptrget
      00328E FF               [12] 1658 	mov	r7,a
      00328F C0 06            [24] 1659 	push	ar6
      003291 C0 05            [24] 1660 	push	ar5
      003293 C0 02            [24] 1661 	push	ar2
      003295 8B 82            [24] 1662 	mov	dpl,r3
      003297 8C 83            [24] 1663 	mov	dph,r4
      003299 8F F0            [24] 1664 	mov	b,r7
      00329B 12 27 83         [24] 1665 	lcall	_stack_pop
      00329E AC 82            [24] 1666 	mov	r4,dpl
      0032A0 AF 83            [24] 1667 	mov	r7,dph
      0032A2 15 81            [12] 1668 	dec	sp
      0032A4 15 81            [12] 1669 	dec	sp
      0032A6 15 81            [12] 1670 	dec	sp
      0032A8 8C 05            [24] 1671 	mov	ar5,r4
      0032AA 8F 06            [24] 1672 	mov	ar6,r7
      0032AC D0 07            [24] 1673 	pop	ar7
      0032AE 02 30 C9         [24] 1674 	ljmp	00160$
      0032B1                       1675 00113$:
                                   1676 ;	calc.c:122: return 1;
      0032B1 90 00 01         [24] 1677 	mov	dptr,#0x0001
                                   1678 ;	calc.c:123: }
      0032B4 85 08 81         [24] 1679 	mov	sp,_bp
      0032B7 D0 08            [24] 1680 	pop	_bp
      0032B9 22               [24] 1681 	ret
                                   1682 ;------------------------------------------------------------
                                   1683 ;Allocation info for local variables in function 'dump_peek'
                                   1684 ;------------------------------------------------------------
                                   1685 ;d                         Allocated to stack - _bp -6
                                   1686 ;_ctx                      Allocated to registers 
                                   1687 ;__1310720021              Allocated to registers 
                                   1688 ;s                         Allocated to registers r5 r6 r7 
                                   1689 ;__1310720023              Allocated to registers r4 r5 r6 r7 
                                   1690 ;d                         Allocated to registers 
                                   1691 ;__1310720001              Allocated to registers 
                                   1692 ;d                         Allocated to stack - _bp +1
                                   1693 ;mask                      Allocated to stack - _bp +5
                                   1694 ;__1310720025              Allocated to registers 
                                   1695 ;s                         Allocated to registers r5 r6 r7 
                                   1696 ;------------------------------------------------------------
                                   1697 ;	calc.c:125: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1698 ;	-----------------------------------------
                                   1699 ;	 function dump_peek
                                   1700 ;	-----------------------------------------
      0032BA                       1701 _dump_peek:
      0032BA C0 08            [24] 1702 	push	_bp
      0032BC E5 81            [12] 1703 	mov	a,sp
      0032BE F5 08            [12] 1704 	mov	_bp,a
      0032C0 24 08            [12] 1705 	add	a,#0x08
      0032C2 F5 81            [12] 1706 	mov	sp,a
                                   1707 ;	calc.c:128: printstr("PSVA\t");
      0032C4 7D 9B            [12] 1708 	mov	r5,#___str_7
      0032C6 7E 89            [12] 1709 	mov	r6,#(___str_7 >> 8)
      0032C8 7F 80            [12] 1710 	mov	r7,#0x80
                                   1711 ;	calc.c:59: return;
      0032CA                       1712 00109$:
                                   1713 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0032CA 8D 82            [24] 1714 	mov	dpl,r5
      0032CC 8E 83            [24] 1715 	mov	dph,r6
      0032CE 8F F0            [24] 1716 	mov	b,r7
      0032D0 12 70 E2         [24] 1717 	lcall	__gptrget
      0032D3 FC               [12] 1718 	mov	r4,a
      0032D4 60 10            [24] 1719 	jz	00102$
      0032D6 7B 00            [12] 1720 	mov	r3,#0x00
      0032D8 8C 82            [24] 1721 	mov	dpl,r4
      0032DA 8B 83            [24] 1722 	mov	dph,r3
      0032DC 12 2B 70         [24] 1723 	lcall	_putchar
      0032DF 0D               [12] 1724 	inc	r5
                                   1725 ;	calc.c:128: printstr("PSVA\t");
      0032E0 BD 00 E7         [24] 1726 	cjne	r5,#0x00,00109$
      0032E3 0E               [12] 1727 	inc	r6
      0032E4 80 E4            [24] 1728 	sjmp	00109$
      0032E6                       1729 00102$:
                                   1730 ;	calc.c:129: printall(d);
      0032E6 E5 08            [12] 1731 	mov	a,_bp
      0032E8 24 FA            [12] 1732 	add	a,#0xfa
      0032EA F8               [12] 1733 	mov	r0,a
      0032EB 86 04            [24] 1734 	mov	ar4,@r0
      0032ED 08               [12] 1735 	inc	r0
      0032EE 86 05            [24] 1736 	mov	ar5,@r0
      0032F0 08               [12] 1737 	inc	r0
      0032F1 86 06            [24] 1738 	mov	ar6,@r0
      0032F3 08               [12] 1739 	inc	r0
      0032F4 86 07            [24] 1740 	mov	ar7,@r0
                                   1741 ;	calc.c:72: printf("%08lx\t", d);
      0032F6 C0 07            [24] 1742 	push	ar7
      0032F8 C0 06            [24] 1743 	push	ar6
      0032FA C0 05            [24] 1744 	push	ar5
      0032FC C0 04            [24] 1745 	push	ar4
      0032FE C0 04            [24] 1746 	push	ar4
      003300 C0 05            [24] 1747 	push	ar5
      003302 C0 06            [24] 1748 	push	ar6
      003304 C0 07            [24] 1749 	push	ar7
      003306 74 63            [12] 1750 	mov	a,#___str_0
      003308 C0 E0            [24] 1751 	push	acc
      00330A 74 89            [12] 1752 	mov	a,#(___str_0 >> 8)
      00330C C0 E0            [24] 1753 	push	acc
      00330E 74 80            [12] 1754 	mov	a,#0x80
      003310 C0 E0            [24] 1755 	push	acc
      003312 12 70 A9         [24] 1756 	lcall	_printf
      003315 E5 81            [12] 1757 	mov	a,sp
      003317 24 F9            [12] 1758 	add	a,#0xf9
      003319 F5 81            [12] 1759 	mov	sp,a
      00331B D0 04            [24] 1760 	pop	ar4
      00331D D0 05            [24] 1761 	pop	ar5
      00331F D0 06            [24] 1762 	pop	ar6
      003321 D0 07            [24] 1763 	pop	ar7
                                   1764 ;	calc.c:73: printf("% 11ld\t", d);
      003323 C0 07            [24] 1765 	push	ar7
      003325 C0 06            [24] 1766 	push	ar6
      003327 C0 05            [24] 1767 	push	ar5
      003329 C0 04            [24] 1768 	push	ar4
      00332B C0 04            [24] 1769 	push	ar4
      00332D C0 05            [24] 1770 	push	ar5
      00332F C0 06            [24] 1771 	push	ar6
      003331 C0 07            [24] 1772 	push	ar7
      003333 74 6A            [12] 1773 	mov	a,#___str_1
      003335 C0 E0            [24] 1774 	push	acc
      003337 74 89            [12] 1775 	mov	a,#(___str_1 >> 8)
      003339 C0 E0            [24] 1776 	push	acc
      00333B 74 80            [12] 1777 	mov	a,#0x80
      00333D C0 E0            [24] 1778 	push	acc
      00333F 12 70 A9         [24] 1779 	lcall	_printf
      003342 E5 81            [12] 1780 	mov	a,sp
      003344 24 F9            [12] 1781 	add	a,#0xf9
      003346 F5 81            [12] 1782 	mov	sp,a
      003348 D0 04            [24] 1783 	pop	ar4
      00334A D0 05            [24] 1784 	pop	ar5
      00334C D0 06            [24] 1785 	pop	ar6
      00334E D0 07            [24] 1786 	pop	ar7
                                   1787 ;	calc.c:74: printf("%011lo\t", d);
      003350 C0 07            [24] 1788 	push	ar7
      003352 C0 06            [24] 1789 	push	ar6
      003354 C0 05            [24] 1790 	push	ar5
      003356 C0 04            [24] 1791 	push	ar4
      003358 C0 04            [24] 1792 	push	ar4
      00335A C0 05            [24] 1793 	push	ar5
      00335C C0 06            [24] 1794 	push	ar6
      00335E C0 07            [24] 1795 	push	ar7
      003360 74 72            [12] 1796 	mov	a,#___str_2
      003362 C0 E0            [24] 1797 	push	acc
      003364 74 89            [12] 1798 	mov	a,#(___str_2 >> 8)
      003366 C0 E0            [24] 1799 	push	acc
      003368 74 80            [12] 1800 	mov	a,#0x80
      00336A C0 E0            [24] 1801 	push	acc
      00336C 12 70 A9         [24] 1802 	lcall	_printf
      00336F E5 81            [12] 1803 	mov	a,sp
      003371 24 F9            [12] 1804 	add	a,#0xf9
      003373 F5 81            [12] 1805 	mov	sp,a
      003375 D0 04            [24] 1806 	pop	ar4
      003377 D0 05            [24] 1807 	pop	ar5
      003379 D0 06            [24] 1808 	pop	ar6
      00337B D0 07            [24] 1809 	pop	ar7
                                   1810 ;	calc.c:75: printbin(d);
      00337D A8 08            [24] 1811 	mov	r0,_bp
      00337F 08               [12] 1812 	inc	r0
      003380 A6 04            [24] 1813 	mov	@r0,ar4
      003382 08               [12] 1814 	inc	r0
      003383 A6 05            [24] 1815 	mov	@r0,ar5
      003385 08               [12] 1816 	inc	r0
      003386 A6 06            [24] 1817 	mov	@r0,ar6
      003388 08               [12] 1818 	inc	r0
      003389 A6 07            [24] 1819 	mov	@r0,ar7
                                   1820 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      00338B E5 08            [12] 1821 	mov	a,_bp
      00338D 24 05            [12] 1822 	add	a,#0x05
      00338F F8               [12] 1823 	mov	r0,a
      003390 E4               [12] 1824 	clr	a
      003391 F6               [12] 1825 	mov	@r0,a
      003392 08               [12] 1826 	inc	r0
      003393 F6               [12] 1827 	mov	@r0,a
      003394 08               [12] 1828 	inc	r0
      003395 F6               [12] 1829 	mov	@r0,a
      003396 08               [12] 1830 	inc	r0
      003397 76 80            [12] 1831 	mov	@r0,#0x80
      003399                       1832 00111$:
                                   1833 ;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      003399 A8 08            [24] 1834 	mov	r0,_bp
      00339B 08               [12] 1835 	inc	r0
      00339C 86 04            [24] 1836 	mov	ar4,@r0
      00339E 08               [12] 1837 	inc	r0
      00339F 86 05            [24] 1838 	mov	ar5,@r0
      0033A1 08               [12] 1839 	inc	r0
      0033A2 86 06            [24] 1840 	mov	ar6,@r0
      0033A4 08               [12] 1841 	inc	r0
      0033A5 86 07            [24] 1842 	mov	ar7,@r0
      0033A7 E5 08            [12] 1843 	mov	a,_bp
      0033A9 24 05            [12] 1844 	add	a,#0x05
      0033AB F8               [12] 1845 	mov	r0,a
      0033AC E6               [12] 1846 	mov	a,@r0
      0033AD 52 04            [12] 1847 	anl	ar4,a
      0033AF 08               [12] 1848 	inc	r0
      0033B0 E6               [12] 1849 	mov	a,@r0
      0033B1 52 05            [12] 1850 	anl	ar5,a
      0033B3 08               [12] 1851 	inc	r0
      0033B4 E6               [12] 1852 	mov	a,@r0
      0033B5 52 06            [12] 1853 	anl	ar6,a
      0033B7 08               [12] 1854 	inc	r0
      0033B8 E6               [12] 1855 	mov	a,@r0
      0033B9 52 07            [12] 1856 	anl	ar7,a
      0033BB EC               [12] 1857 	mov	a,r4
      0033BC 4D               [12] 1858 	orl	a,r5
      0033BD 4E               [12] 1859 	orl	a,r6
      0033BE 4F               [12] 1860 	orl	a,r7
      0033BF 60 06            [24] 1861 	jz	00118$
      0033C1 7E 31            [12] 1862 	mov	r6,#0x31
      0033C3 7F 00            [12] 1863 	mov	r7,#0x00
      0033C5 80 04            [24] 1864 	sjmp	00119$
      0033C7                       1865 00118$:
      0033C7 7E 30            [12] 1866 	mov	r6,#0x30
      0033C9 7F 00            [12] 1867 	mov	r7,#0x00
      0033CB                       1868 00119$:
      0033CB 8E 82            [24] 1869 	mov	dpl,r6
      0033CD 8F 83            [24] 1870 	mov	dph,r7
      0033CF 12 2B 70         [24] 1871 	lcall	_putchar
                                   1872 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      0033D2 E5 08            [12] 1873 	mov	a,_bp
      0033D4 24 05            [12] 1874 	add	a,#0x05
      0033D6 F8               [12] 1875 	mov	r0,a
      0033D7 08               [12] 1876 	inc	r0
      0033D8 08               [12] 1877 	inc	r0
      0033D9 08               [12] 1878 	inc	r0
      0033DA E6               [12] 1879 	mov	a,@r0
      0033DB C3               [12] 1880 	clr	c
      0033DC 13               [12] 1881 	rrc	a
      0033DD F6               [12] 1882 	mov	@r0,a
      0033DE 18               [12] 1883 	dec	r0
      0033DF E6               [12] 1884 	mov	a,@r0
      0033E0 13               [12] 1885 	rrc	a
      0033E1 F6               [12] 1886 	mov	@r0,a
      0033E2 18               [12] 1887 	dec	r0
      0033E3 E6               [12] 1888 	mov	a,@r0
      0033E4 13               [12] 1889 	rrc	a
      0033E5 F6               [12] 1890 	mov	@r0,a
      0033E6 18               [12] 1891 	dec	r0
      0033E7 E6               [12] 1892 	mov	a,@r0
      0033E8 13               [12] 1893 	rrc	a
      0033E9 F6               [12] 1894 	mov	@r0,a
      0033EA E5 08            [12] 1895 	mov	a,_bp
      0033EC 24 05            [12] 1896 	add	a,#0x05
      0033EE F8               [12] 1897 	mov	r0,a
      0033EF E6               [12] 1898 	mov	a,@r0
      0033F0 08               [12] 1899 	inc	r0
      0033F1 46               [12] 1900 	orl	a,@r0
      0033F2 08               [12] 1901 	inc	r0
      0033F3 46               [12] 1902 	orl	a,@r0
      0033F4 08               [12] 1903 	inc	r0
      0033F5 46               [12] 1904 	orl	a,@r0
      0033F6 70 A1            [24] 1905 	jnz	00111$
                                   1906 ;	calc.c:130: printstr("\r\n");
      0033F8 7D 7A            [12] 1907 	mov	r5,#___str_3
      0033FA 7E 89            [12] 1908 	mov	r6,#(___str_3 >> 8)
      0033FC 7F 80            [12] 1909 	mov	r7,#0x80
                                   1910 ;	calc.c:59: return;
      0033FE                       1911 00114$:
                                   1912 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0033FE 8D 82            [24] 1913 	mov	dpl,r5
      003400 8E 83            [24] 1914 	mov	dph,r6
      003402 8F F0            [24] 1915 	mov	b,r7
      003404 12 70 E2         [24] 1916 	lcall	__gptrget
      003407 FC               [12] 1917 	mov	r4,a
      003408 60 10            [24] 1918 	jz	00107$
      00340A 7B 00            [12] 1919 	mov	r3,#0x00
      00340C 8C 82            [24] 1920 	mov	dpl,r4
      00340E 8B 83            [24] 1921 	mov	dph,r3
      003410 12 2B 70         [24] 1922 	lcall	_putchar
      003413 0D               [12] 1923 	inc	r5
                                   1924 ;	calc.c:130: printstr("\r\n");
      003414 BD 00 E7         [24] 1925 	cjne	r5,#0x00,00114$
      003417 0E               [12] 1926 	inc	r6
      003418 80 E4            [24] 1927 	sjmp	00114$
      00341A                       1928 00107$:
                                   1929 ;	calc.c:132: return 1;
      00341A 90 00 01         [24] 1930 	mov	dptr,#0x0001
                                   1931 ;	calc.c:133: }
      00341D 85 08 81         [24] 1932 	mov	sp,_bp
      003420 D0 08            [24] 1933 	pop	_bp
      003422 22               [24] 1934 	ret
                                   1935 ;------------------------------------------------------------
                                   1936 ;Allocation info for local variables in function 'operator'
                                   1937 ;------------------------------------------------------------
                                   1938 ;delta                     Allocated to stack - _bp -5
                                   1939 ;_ctx                      Allocated to stack - _bp +1
                                   1940 ;ctx                       Allocated to stack - _bp +18
                                   1941 ;t0                        Allocated to registers r7 r6 r5 
                                   1942 ;d0                        Allocated to stack - _bp +21
                                   1943 ;d1                        Allocated to stack - _bp +25
                                   1944 ;__1966080027              Allocated to registers 
                                   1945 ;s                         Allocated to registers r7 r6 r5 
                                   1946 ;__1966080029              Allocated to registers 
                                   1947 ;s                         Allocated to registers r7 r6 r5 
                                   1948 ;__2621440031              Allocated to registers 
                                   1949 ;s                         Allocated to registers r7 r6 r5 
                                   1950 ;__2621440033              Allocated to registers r7 r6 r5 r4 
                                   1951 ;d                         Allocated to stack - _bp +29
                                   1952 ;__1310720001              Allocated to registers 
                                   1953 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1954 ;mask                      Allocated to stack - _bp +33
                                   1955 ;__2621440035              Allocated to registers 
                                   1956 ;s                         Allocated to registers r7 r6 r5 
                                   1957 ;__1966080037              Allocated to registers 
                                   1958 ;s                         Allocated to registers r7 r6 r5 
                                   1959 ;__1966080039              Allocated to registers 
                                   1960 ;s                         Allocated to registers r7 r6 r5 
                                   1961 ;__1966080041              Allocated to registers 
                                   1962 ;s                         Allocated to registers r7 r6 r5 
                                   1963 ;__1966080043              Allocated to registers 
                                   1964 ;s                         Allocated to registers r7 r6 r5 
                                   1965 ;__2621440045              Allocated to registers 
                                   1966 ;s                         Allocated to registers r7 r6 r5 
                                   1967 ;__2621440047              Allocated to registers r7 r6 r5 r4 
                                   1968 ;d                         Allocated to stack - _bp +29
                                   1969 ;__1310720001              Allocated to registers 
                                   1970 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1971 ;mask                      Allocated to stack - _bp +33
                                   1972 ;__2621440049              Allocated to registers 
                                   1973 ;s                         Allocated to registers r7 r6 r5 
                                   1974 ;__1966080051              Allocated to registers 
                                   1975 ;s                         Allocated to registers r7 r6 r5 
                                   1976 ;__1966080053              Allocated to registers 
                                   1977 ;s                         Allocated to registers r7 r6 r5 
                                   1978 ;__2621440055              Allocated to registers 
                                   1979 ;s                         Allocated to registers r7 r6 r5 
                                   1980 ;__1966080057              Allocated to registers 
                                   1981 ;s                         Allocated to registers r7 r6 r5 
                                   1982 ;__3276800059              Allocated to registers 
                                   1983 ;s                         Allocated to registers r7 r6 r5 
                                   1984 ;__1966080061              Allocated to registers 
                                   1985 ;s                         Allocated to registers r7 r6 r5 
                                   1986 ;__3276800063              Allocated to registers 
                                   1987 ;s                         Allocated to registers r7 r6 r5 
                                   1988 ;__1966080065              Allocated to registers 
                                   1989 ;s                         Allocated to registers r7 r6 r5 
                                   1990 ;__1966080067              Allocated to registers 
                                   1991 ;s                         Allocated to registers r7 r6 r5 
                                   1992 ;__1966080069              Allocated to registers 
                                   1993 ;s                         Allocated to registers r7 r6 r5 
                                   1994 ;__1966080071              Allocated to registers 
                                   1995 ;s                         Allocated to registers r7 r6 r5 
                                   1996 ;__1966080073              Allocated to registers 
                                   1997 ;s                         Allocated to registers r7 r6 r5 
                                   1998 ;__3276800075              Allocated to registers 
                                   1999 ;s                         Allocated to registers r7 r6 r5 
                                   2000 ;__1966080077              Allocated to registers 
                                   2001 ;s                         Allocated to registers r7 r6 r5 
                                   2002 ;__2621440079              Allocated to registers 
                                   2003 ;s                         Allocated to registers r7 r6 r5 
                                   2004 ;__1966080081              Allocated to registers 
                                   2005 ;s                         Allocated to registers r7 r6 r5 
                                   2006 ;__2621440083              Allocated to registers 
                                   2007 ;s                         Allocated to registers r7 r6 r5 
                                   2008 ;__1966080085              Allocated to registers 
                                   2009 ;s                         Allocated to registers r7 r6 r5 
                                   2010 ;__2621440087              Allocated to registers 
                                   2011 ;s                         Allocated to registers r7 r6 r5 
                                   2012 ;__1966080089              Allocated to registers 
                                   2013 ;s                         Allocated to registers r7 r6 r5 
                                   2014 ;__2621440091              Allocated to registers 
                                   2015 ;s                         Allocated to registers r7 r6 r5 
                                   2016 ;__2621440093              Allocated to registers 
                                   2017 ;s                         Allocated to registers r7 r6 r5 
                                   2018 ;__1966080095              Allocated to registers 
                                   2019 ;s                         Allocated to registers r7 r6 r5 
                                   2020 ;__2621440097              Allocated to registers 
                                   2021 ;s                         Allocated to registers r7 r6 r5 
                                   2022 ;__2621440099              Allocated to registers 
                                   2023 ;s                         Allocated to registers r7 r6 r5 
                                   2024 ;__1966080101              Allocated to registers 
                                   2025 ;s                         Allocated to registers r5 r4 r3 
                                   2026 ;__2621440103              Allocated to registers 
                                   2027 ;s                         Allocated to registers r5 r4 r3 
                                   2028 ;__1966080105              Allocated to registers 
                                   2029 ;s                         Allocated to registers r5 r4 r3 
                                   2030 ;__2621440107              Allocated to registers 
                                   2031 ;s                         Allocated to registers r5 r4 r3 
                                   2032 ;__1966080109              Allocated to registers 
                                   2033 ;s                         Allocated to registers r5 r4 r3 
                                   2034 ;__2621440111              Allocated to registers 
                                   2035 ;s                         Allocated to registers r5 r4 r3 
                                   2036 ;__1966080113              Allocated to registers 
                                   2037 ;s                         Allocated to registers r5 r4 r3 
                                   2038 ;__2621440115              Allocated to registers 
                                   2039 ;s                         Allocated to registers r5 r4 r3 
                                   2040 ;__1966080117              Allocated to registers 
                                   2041 ;s                         Allocated to registers r5 r4 r3 
                                   2042 ;__2621440119              Allocated to registers 
                                   2043 ;s                         Allocated to registers r5 r4 r3 
                                   2044 ;__1966080121              Allocated to registers 
                                   2045 ;s                         Allocated to registers r5 r4 r3 
                                   2046 ;__2621440123              Allocated to registers 
                                   2047 ;s                         Allocated to registers r5 r4 r3 
                                   2048 ;__1966080125              Allocated to registers 
                                   2049 ;s                         Allocated to registers r5 r4 r3 
                                   2050 ;sloc0                     Allocated to stack - _bp +346
                                   2051 ;sloc1                     Allocated to stack - _bp +4
                                   2052 ;sloc2                     Allocated to stack - _bp +7
                                   2053 ;sloc3                     Allocated to stack - _bp +11
                                   2054 ;sloc4                     Allocated to stack - _bp +14
                                   2055 ;------------------------------------------------------------
                                   2056 ;	calc.c:135: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   2057 ;	-----------------------------------------
                                   2058 ;	 function operator
                                   2059 ;	-----------------------------------------
      003423                       2060 _operator:
      003423 C0 08            [24] 2061 	push	_bp
      003425 85 81 08         [24] 2062 	mov	_bp,sp
      003428 C0 82            [24] 2063 	push	dpl
      00342A C0 83            [24] 2064 	push	dph
      00342C C0 F0            [24] 2065 	push	b
      00342E E5 81            [12] 2066 	mov	a,sp
      003430 24 21            [12] 2067 	add	a,#0x21
      003432 F5 81            [12] 2068 	mov	sp,a
                                   2069 ;	calc.c:136: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      003434 A8 08            [24] 2070 	mov	r0,_bp
      003436 08               [12] 2071 	inc	r0
      003437 E5 08            [12] 2072 	mov	a,_bp
      003439 24 12            [12] 2073 	add	a,#0x12
      00343B F9               [12] 2074 	mov	r1,a
      00343C E6               [12] 2075 	mov	a,@r0
      00343D F7               [12] 2076 	mov	@r1,a
      00343E 08               [12] 2077 	inc	r0
      00343F 09               [12] 2078 	inc	r1
      003440 E6               [12] 2079 	mov	a,@r0
      003441 F7               [12] 2080 	mov	@r1,a
      003442 08               [12] 2081 	inc	r0
      003443 09               [12] 2082 	inc	r1
      003444 E6               [12] 2083 	mov	a,@r0
      003445 F7               [12] 2084 	mov	@r1,a
                                   2085 ;	calc.c:140: switch (ctx->digit[0]) {
      003446 E5 08            [12] 2086 	mov	a,_bp
      003448 24 12            [12] 2087 	add	a,#0x12
      00344A F8               [12] 2088 	mov	r0,a
      00344B 74 07            [12] 2089 	mov	a,#0x07
      00344D 26               [12] 2090 	add	a,@r0
      00344E FD               [12] 2091 	mov	r5,a
      00344F E4               [12] 2092 	clr	a
      003450 08               [12] 2093 	inc	r0
      003451 36               [12] 2094 	addc	a,@r0
      003452 FE               [12] 2095 	mov	r6,a
      003453 08               [12] 2096 	inc	r0
      003454 86 07            [24] 2097 	mov	ar7,@r0
      003456 8D 82            [24] 2098 	mov	dpl,r5
      003458 8E 83            [24] 2099 	mov	dph,r6
      00345A 8F F0            [24] 2100 	mov	b,r7
      00345C 12 70 E2         [24] 2101 	lcall	__gptrget
      00345F FC               [12] 2102 	mov	r4,a
      003460 BC 23 03         [24] 2103 	cjne	r4,#0x23,01234$
      003463 02 49 92         [24] 2104 	ljmp	00189$
      003466                       2105 01234$:
      003466 BC 25 03         [24] 2106 	cjne	r4,#0x25,01235$
      003469 02 49 92         [24] 2107 	ljmp	00189$
      00346C                       2108 01235$:
      00346C BC 26 03         [24] 2109 	cjne	r4,#0x26,01236$
      00346F 02 4C 78         [24] 2110 	ljmp	00202$
      003472                       2111 01236$:
      003472 BC 2A 03         [24] 2112 	cjne	r4,#0x2a,01237$
      003475 02 45 02         [24] 2113 	ljmp	00167$
      003478                       2114 01237$:
      003478 BC 2B 03         [24] 2115 	cjne	r4,#0x2b,01238$
      00347B 02 42 03         [24] 2116 	ljmp	00153$
      00347E                       2117 01238$:
      00347E BC 2D 03         [24] 2118 	cjne	r4,#0x2d,01239$
      003481 02 43 82         [24] 2119 	ljmp	00160$
      003484                       2120 01239$:
      003484 BC 2E 03         [24] 2121 	cjne	r4,#0x2e,01240$
      003487 02 37 95         [24] 2122 	ljmp	00109$
      00348A                       2123 01240$:
      00348A BC 2F 03         [24] 2124 	cjne	r4,#0x2f,01241$
      00348D 02 46 A8         [24] 2125 	ljmp	00175$
      003490                       2126 01241$:
      003490 BC 3C 03         [24] 2127 	cjne	r4,#0x3c,01242$
      003493 02 54 93         [24] 2128 	ljmp	00237$
      003496                       2129 01242$:
      003496 BC 3E 03         [24] 2130 	cjne	r4,#0x3e,01243$
      003499 02 51 46         [24] 2131 	ljmp	00223$
      00349C                       2132 01243$:
      00349C BC 4D 03         [24] 2133 	cjne	r4,#0x4d,01244$
      00349F 02 3C A9         [24] 2134 	ljmp	00127$
      0034A2                       2135 01244$:
      0034A2 BC 50 03         [24] 2136 	cjne	r4,#0x50,01245$
      0034A5 02 39 8B         [24] 2137 	ljmp	00113$
      0034A8                       2138 01245$:
      0034A8 BC 54 03         [24] 2139 	cjne	r4,#0x54,01246$
      0034AB 02 3F AB         [24] 2140 	ljmp	00145$
      0034AE                       2141 01246$:
      0034AE BC 55 03         [24] 2142 	cjne	r4,#0x55,01247$
      0034B1 02 3E C4         [24] 2143 	ljmp	00139$
      0034B4                       2144 01247$:
      0034B4 BC 56 03         [24] 2145 	cjne	r4,#0x56,01248$
      0034B7 02 36 F4         [24] 2146 	ljmp	00105$
      0034BA                       2147 01248$:
      0034BA BC 58 03         [24] 2148 	cjne	r4,#0x58,01249$
      0034BD 02 41 64         [24] 2149 	ljmp	00152$
      0034C0                       2150 01249$:
      0034C0 BC 5C 03         [24] 2151 	cjne	r4,#0x5c,01250$
      0034C3 02 46 A8         [24] 2152 	ljmp	00175$
      0034C6                       2153 01250$:
      0034C6 BC 5D 03         [24] 2154 	cjne	r4,#0x5d,01251$
      0034C9 02 52 E4         [24] 2155 	ljmp	00230$
      0034CC                       2156 01251$:
      0034CC BC 5E 03         [24] 2157 	cjne	r4,#0x5e,01252$
      0034CF 02 4F AC         [24] 2158 	ljmp	00216$
      0034D2                       2159 01252$:
      0034D2 BC 6D 03         [24] 2160 	cjne	r4,#0x6d,01253$
      0034D5 02 3B 75         [24] 2161 	ljmp	00121$
      0034D8                       2162 01253$:
      0034D8 BC 70 03         [24] 2163 	cjne	r4,#0x70,01254$
      0034DB 02 37 95         [24] 2164 	ljmp	00109$
      0034DE                       2165 01254$:
      0034DE BC 75 03         [24] 2166 	cjne	r4,#0x75,01255$
      0034E1 02 3D DD         [24] 2167 	ljmp	00133$
      0034E4                       2168 01255$:
      0034E4 BC 76 02         [24] 2169 	cjne	r4,#0x76,01256$
      0034E7 80 15            [24] 2170 	sjmp	00101$
      0034E9                       2171 01256$:
      0034E9 BC 78 03         [24] 2172 	cjne	r4,#0x78,01257$
      0034EC 02 39 D4         [24] 2173 	ljmp	00114$
      0034EF                       2174 01257$:
      0034EF BC 7C 03         [24] 2175 	cjne	r4,#0x7c,01258$
      0034F2 02 4E 12         [24] 2176 	ljmp	00209$
      0034F5                       2177 01258$:
      0034F5 BC 7E 03         [24] 2178 	cjne	r4,#0x7e,01259$
      0034F8 02 56 36         [24] 2179 	ljmp	00244$
      0034FB                       2180 01259$:
      0034FB 02 57 0F         [24] 2181 	ljmp	00248$
                                   2182 ;	calc.c:141: case 'v':
      0034FE                       2183 00101$:
                                   2184 ;	calc.c:142: printstr("\r\n");
      0034FE 7F 7A            [12] 2185 	mov	r7,#___str_3
      003500 7E 89            [12] 2186 	mov	r6,#(___str_3 >> 8)
      003502 7D 80            [12] 2187 	mov	r5,#0x80
                                   2188 ;	calc.c:59: return;
      003504                       2189 00353$:
                                   2190 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003504 8F 82            [24] 2191 	mov	dpl,r7
      003506 8E 83            [24] 2192 	mov	dph,r6
      003508 8D F0            [24] 2193 	mov	b,r5
      00350A 12 70 E2         [24] 2194 	lcall	__gptrget
      00350D FC               [12] 2195 	mov	r4,a
      00350E 60 10            [24] 2196 	jz	00251$
      003510 7B 00            [12] 2197 	mov	r3,#0x00
      003512 8C 82            [24] 2198 	mov	dpl,r4
      003514 8B 83            [24] 2199 	mov	dph,r3
      003516 12 2B 70         [24] 2200 	lcall	_putchar
      003519 0F               [12] 2201 	inc	r7
                                   2202 ;	calc.c:142: printstr("\r\n");
      00351A BF 00 E7         [24] 2203 	cjne	r7,#0x00,00353$
      00351D 0E               [12] 2204 	inc	r6
      00351E 80 E4            [24] 2205 	sjmp	00353$
      003520                       2206 00251$:
                                   2207 ;	calc.c:143: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003520 E5 08            [12] 2208 	mov	a,_bp
      003522 24 15            [12] 2209 	add	a,#0x15
      003524 FF               [12] 2210 	mov	r7,a
      003525 7E 00            [12] 2211 	mov	r6,#0x00
      003527 7D 40            [12] 2212 	mov	r5,#0x40
      003529 E5 08            [12] 2213 	mov	a,_bp
      00352B 24 12            [12] 2214 	add	a,#0x12
      00352D F8               [12] 2215 	mov	r0,a
      00352E 74 11            [12] 2216 	mov	a,#0x11
      003530 26               [12] 2217 	add	a,@r0
      003531 FA               [12] 2218 	mov	r2,a
      003532 ED               [12] 2219 	mov	a,r5
      003533 08               [12] 2220 	inc	r0
      003534 36               [12] 2221 	addc	a,@r0
      003535 FB               [12] 2222 	mov	r3,a
      003536 08               [12] 2223 	inc	r0
      003537 86 04            [24] 2224 	mov	ar4,@r0
      003539 8A 82            [24] 2225 	mov	dpl,r2
      00353B 8B 83            [24] 2226 	mov	dph,r3
      00353D 8C F0            [24] 2227 	mov	b,r4
      00353F 12 70 E2         [24] 2228 	lcall	__gptrget
      003542 FA               [12] 2229 	mov	r2,a
      003543 A3               [24] 2230 	inc	dptr
      003544 12 70 E2         [24] 2231 	lcall	__gptrget
      003547 FB               [12] 2232 	mov	r3,a
      003548 A3               [24] 2233 	inc	dptr
      003549 12 70 E2         [24] 2234 	lcall	__gptrget
      00354C FC               [12] 2235 	mov	r4,a
      00354D C0 07            [24] 2236 	push	ar7
      00354F C0 06            [24] 2237 	push	ar6
      003551 C0 05            [24] 2238 	push	ar5
      003553 8A 82            [24] 2239 	mov	dpl,r2
      003555 8B 83            [24] 2240 	mov	dph,r3
      003557 8C F0            [24] 2241 	mov	b,r4
      003559 12 28 5E         [24] 2242 	lcall	_stack_peek
      00355C AB 82            [24] 2243 	mov	r3,dpl
      00355E AC 83            [24] 2244 	mov	r4,dph
      003560 15 81            [12] 2245 	dec	sp
      003562 15 81            [12] 2246 	dec	sp
      003564 15 81            [12] 2247 	dec	sp
      003566 EB               [12] 2248 	mov	a,r3
      003567 4C               [12] 2249 	orl	a,r4
      003568 70 25            [24] 2250 	jnz	00103$
      00356A 7F 7D            [12] 2251 	mov	r7,#___str_4
      00356C 7E 89            [12] 2252 	mov	r6,#(___str_4 >> 8)
      00356E 7D 80            [12] 2253 	mov	r5,#0x80
                                   2254 ;	calc.c:59: return;
      003570                       2255 00356$:
                                   2256 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003570 8F 82            [24] 2257 	mov	dpl,r7
      003572 8E 83            [24] 2258 	mov	dph,r6
      003574 8D F0            [24] 2259 	mov	b,r5
      003576 12 70 E2         [24] 2260 	lcall	__gptrget
      003579 FC               [12] 2261 	mov	r4,a
      00357A 70 03            [24] 2262 	jnz	01263$
      00357C 02 57 14         [24] 2263 	ljmp	00249$
      00357F                       2264 01263$:
      00357F 7B 00            [12] 2265 	mov	r3,#0x00
      003581 8C 82            [24] 2266 	mov	dpl,r4
      003583 8B 83            [24] 2267 	mov	dph,r3
      003585 12 2B 70         [24] 2268 	lcall	_putchar
      003588 0F               [12] 2269 	inc	r7
                                   2270 ;	calc.c:143: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003589 BF 00 E4         [24] 2271 	cjne	r7,#0x00,00356$
      00358C 0E               [12] 2272 	inc	r6
      00358D 80 E1            [24] 2273 	sjmp	00356$
      00358F                       2274 00103$:
                                   2275 ;	calc.c:145: printstr("PSVTOP\t");
      00358F 7F A1            [12] 2276 	mov	r7,#___str_8
      003591 7E 89            [12] 2277 	mov	r6,#(___str_8 >> 8)
      003593 7D 80            [12] 2278 	mov	r5,#0x80
                                   2279 ;	calc.c:59: return;
      003595                       2280 00359$:
                                   2281 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003595 8F 82            [24] 2282 	mov	dpl,r7
      003597 8E 83            [24] 2283 	mov	dph,r6
      003599 8D F0            [24] 2284 	mov	b,r5
      00359B 12 70 E2         [24] 2285 	lcall	__gptrget
      00359E FC               [12] 2286 	mov	r4,a
      00359F 60 10            [24] 2287 	jz	00255$
      0035A1 7B 00            [12] 2288 	mov	r3,#0x00
      0035A3 8C 82            [24] 2289 	mov	dpl,r4
      0035A5 8B 83            [24] 2290 	mov	dph,r3
      0035A7 12 2B 70         [24] 2291 	lcall	_putchar
      0035AA 0F               [12] 2292 	inc	r7
                                   2293 ;	calc.c:145: printstr("PSVTOP\t");
      0035AB BF 00 E7         [24] 2294 	cjne	r7,#0x00,00359$
      0035AE 0E               [12] 2295 	inc	r6
      0035AF 80 E4            [24] 2296 	sjmp	00359$
      0035B1                       2297 00255$:
                                   2298 ;	calc.c:146: printall(d0);
      0035B1 E5 08            [12] 2299 	mov	a,_bp
      0035B3 24 15            [12] 2300 	add	a,#0x15
      0035B5 F8               [12] 2301 	mov	r0,a
      0035B6 86 07            [24] 2302 	mov	ar7,@r0
      0035B8 08               [12] 2303 	inc	r0
      0035B9 86 06            [24] 2304 	mov	ar6,@r0
      0035BB 08               [12] 2305 	inc	r0
      0035BC 86 05            [24] 2306 	mov	ar5,@r0
      0035BE 08               [12] 2307 	inc	r0
      0035BF 86 04            [24] 2308 	mov	ar4,@r0
      0035C1 E5 08            [12] 2309 	mov	a,_bp
      0035C3 24 1D            [12] 2310 	add	a,#0x1d
      0035C5 F8               [12] 2311 	mov	r0,a
      0035C6 A6 07            [24] 2312 	mov	@r0,ar7
      0035C8 08               [12] 2313 	inc	r0
      0035C9 A6 06            [24] 2314 	mov	@r0,ar6
      0035CB 08               [12] 2315 	inc	r0
      0035CC A6 05            [24] 2316 	mov	@r0,ar5
      0035CE 08               [12] 2317 	inc	r0
      0035CF A6 04            [24] 2318 	mov	@r0,ar4
                                   2319 ;	calc.c:72: printf("%08lx\t", d);
      0035D1 C0 07            [24] 2320 	push	ar7
      0035D3 C0 06            [24] 2321 	push	ar6
      0035D5 C0 05            [24] 2322 	push	ar5
      0035D7 C0 04            [24] 2323 	push	ar4
      0035D9 74 63            [12] 2324 	mov	a,#___str_0
      0035DB C0 E0            [24] 2325 	push	acc
      0035DD 74 89            [12] 2326 	mov	a,#(___str_0 >> 8)
      0035DF C0 E0            [24] 2327 	push	acc
      0035E1 74 80            [12] 2328 	mov	a,#0x80
      0035E3 C0 E0            [24] 2329 	push	acc
      0035E5 12 70 A9         [24] 2330 	lcall	_printf
      0035E8 E5 81            [12] 2331 	mov	a,sp
      0035EA 24 F9            [12] 2332 	add	a,#0xf9
      0035EC F5 81            [12] 2333 	mov	sp,a
                                   2334 ;	calc.c:73: printf("% 11ld\t", d);
      0035EE E5 08            [12] 2335 	mov	a,_bp
      0035F0 24 1D            [12] 2336 	add	a,#0x1d
      0035F2 F8               [12] 2337 	mov	r0,a
      0035F3 E6               [12] 2338 	mov	a,@r0
      0035F4 C0 E0            [24] 2339 	push	acc
      0035F6 08               [12] 2340 	inc	r0
      0035F7 E6               [12] 2341 	mov	a,@r0
      0035F8 C0 E0            [24] 2342 	push	acc
      0035FA 08               [12] 2343 	inc	r0
      0035FB E6               [12] 2344 	mov	a,@r0
      0035FC C0 E0            [24] 2345 	push	acc
      0035FE 08               [12] 2346 	inc	r0
      0035FF E6               [12] 2347 	mov	a,@r0
      003600 C0 E0            [24] 2348 	push	acc
      003602 74 6A            [12] 2349 	mov	a,#___str_1
      003604 C0 E0            [24] 2350 	push	acc
      003606 74 89            [12] 2351 	mov	a,#(___str_1 >> 8)
      003608 C0 E0            [24] 2352 	push	acc
      00360A 74 80            [12] 2353 	mov	a,#0x80
      00360C C0 E0            [24] 2354 	push	acc
      00360E 12 70 A9         [24] 2355 	lcall	_printf
      003611 E5 81            [12] 2356 	mov	a,sp
      003613 24 F9            [12] 2357 	add	a,#0xf9
      003615 F5 81            [12] 2358 	mov	sp,a
                                   2359 ;	calc.c:74: printf("%011lo\t", d);
      003617 E5 08            [12] 2360 	mov	a,_bp
      003619 24 1D            [12] 2361 	add	a,#0x1d
      00361B F8               [12] 2362 	mov	r0,a
      00361C E6               [12] 2363 	mov	a,@r0
      00361D C0 E0            [24] 2364 	push	acc
      00361F 08               [12] 2365 	inc	r0
      003620 E6               [12] 2366 	mov	a,@r0
      003621 C0 E0            [24] 2367 	push	acc
      003623 08               [12] 2368 	inc	r0
      003624 E6               [12] 2369 	mov	a,@r0
      003625 C0 E0            [24] 2370 	push	acc
      003627 08               [12] 2371 	inc	r0
      003628 E6               [12] 2372 	mov	a,@r0
      003629 C0 E0            [24] 2373 	push	acc
      00362B 74 72            [12] 2374 	mov	a,#___str_2
      00362D C0 E0            [24] 2375 	push	acc
      00362F 74 89            [12] 2376 	mov	a,#(___str_2 >> 8)
      003631 C0 E0            [24] 2377 	push	acc
      003633 74 80            [12] 2378 	mov	a,#0x80
      003635 C0 E0            [24] 2379 	push	acc
      003637 12 70 A9         [24] 2380 	lcall	_printf
      00363A E5 81            [12] 2381 	mov	a,sp
      00363C 24 F9            [12] 2382 	add	a,#0xf9
      00363E F5 81            [12] 2383 	mov	sp,a
                                   2384 ;	calc.c:75: printbin(d);
      003640 E5 08            [12] 2385 	mov	a,_bp
      003642 24 1D            [12] 2386 	add	a,#0x1d
      003644 F8               [12] 2387 	mov	r0,a
      003645 86 07            [24] 2388 	mov	ar7,@r0
      003647 08               [12] 2389 	inc	r0
      003648 86 06            [24] 2390 	mov	ar6,@r0
      00364A 08               [12] 2391 	inc	r0
      00364B 86 05            [24] 2392 	mov	ar5,@r0
      00364D 08               [12] 2393 	inc	r0
      00364E 86 02            [24] 2394 	mov	ar2,@r0
                                   2395 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      003650 E5 08            [12] 2396 	mov	a,_bp
      003652 24 21            [12] 2397 	add	a,#0x21
      003654 F8               [12] 2398 	mov	r0,a
      003655 E4               [12] 2399 	clr	a
      003656 F6               [12] 2400 	mov	@r0,a
      003657 08               [12] 2401 	inc	r0
      003658 F6               [12] 2402 	mov	@r0,a
      003659 08               [12] 2403 	inc	r0
      00365A F6               [12] 2404 	mov	@r0,a
      00365B 08               [12] 2405 	inc	r0
      00365C 76 80            [12] 2406 	mov	@r0,#0x80
      00365E                       2407 00361$:
                                   2408 ;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00365E E5 08            [12] 2409 	mov	a,_bp
      003660 24 07            [12] 2410 	add	a,#0x07
      003662 F8               [12] 2411 	mov	r0,a
      003663 A6 07            [24] 2412 	mov	@r0,ar7
      003665 08               [12] 2413 	inc	r0
      003666 A6 06            [24] 2414 	mov	@r0,ar6
      003668 08               [12] 2415 	inc	r0
      003669 A6 05            [24] 2416 	mov	@r0,ar5
      00366B 08               [12] 2417 	inc	r0
      00366C A6 02            [24] 2418 	mov	@r0,ar2
      00366E E5 08            [12] 2419 	mov	a,_bp
      003670 24 07            [12] 2420 	add	a,#0x07
      003672 F8               [12] 2421 	mov	r0,a
      003673 E5 08            [12] 2422 	mov	a,_bp
      003675 24 21            [12] 2423 	add	a,#0x21
      003677 F9               [12] 2424 	mov	r1,a
      003678 E7               [12] 2425 	mov	a,@r1
      003679 56               [12] 2426 	anl	a,@r0
      00367A F6               [12] 2427 	mov	@r0,a
      00367B 09               [12] 2428 	inc	r1
      00367C E7               [12] 2429 	mov	a,@r1
      00367D 08               [12] 2430 	inc	r0
      00367E 56               [12] 2431 	anl	a,@r0
      00367F F6               [12] 2432 	mov	@r0,a
      003680 09               [12] 2433 	inc	r1
      003681 E7               [12] 2434 	mov	a,@r1
      003682 08               [12] 2435 	inc	r0
      003683 56               [12] 2436 	anl	a,@r0
      003684 F6               [12] 2437 	mov	@r0,a
      003685 09               [12] 2438 	inc	r1
      003686 E7               [12] 2439 	mov	a,@r1
      003687 08               [12] 2440 	inc	r0
      003688 56               [12] 2441 	anl	a,@r0
      003689 F6               [12] 2442 	mov	@r0,a
      00368A E5 08            [12] 2443 	mov	a,_bp
      00368C 24 07            [12] 2444 	add	a,#0x07
      00368E F8               [12] 2445 	mov	r0,a
      00368F E6               [12] 2446 	mov	a,@r0
      003690 08               [12] 2447 	inc	r0
      003691 46               [12] 2448 	orl	a,@r0
      003692 08               [12] 2449 	inc	r0
      003693 46               [12] 2450 	orl	a,@r0
      003694 08               [12] 2451 	inc	r0
      003695 46               [12] 2452 	orl	a,@r0
      003696 60 06            [24] 2453 	jz	00502$
      003698 7B 31            [12] 2454 	mov	r3,#0x31
      00369A 7C 00            [12] 2455 	mov	r4,#0x00
      00369C 80 04            [24] 2456 	sjmp	00503$
      00369E                       2457 00502$:
      00369E 7B 30            [12] 2458 	mov	r3,#0x30
      0036A0 7C 00            [12] 2459 	mov	r4,#0x00
      0036A2                       2460 00503$:
      0036A2 8B 82            [24] 2461 	mov	dpl,r3
      0036A4 8C 83            [24] 2462 	mov	dph,r4
      0036A6 12 2B 70         [24] 2463 	lcall	_putchar
                                   2464 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      0036A9 E5 08            [12] 2465 	mov	a,_bp
      0036AB 24 21            [12] 2466 	add	a,#0x21
      0036AD F8               [12] 2467 	mov	r0,a
      0036AE 08               [12] 2468 	inc	r0
      0036AF 08               [12] 2469 	inc	r0
      0036B0 08               [12] 2470 	inc	r0
      0036B1 E6               [12] 2471 	mov	a,@r0
      0036B2 C3               [12] 2472 	clr	c
      0036B3 13               [12] 2473 	rrc	a
      0036B4 F6               [12] 2474 	mov	@r0,a
      0036B5 18               [12] 2475 	dec	r0
      0036B6 E6               [12] 2476 	mov	a,@r0
      0036B7 13               [12] 2477 	rrc	a
      0036B8 F6               [12] 2478 	mov	@r0,a
      0036B9 18               [12] 2479 	dec	r0
      0036BA E6               [12] 2480 	mov	a,@r0
      0036BB 13               [12] 2481 	rrc	a
      0036BC F6               [12] 2482 	mov	@r0,a
      0036BD 18               [12] 2483 	dec	r0
      0036BE E6               [12] 2484 	mov	a,@r0
      0036BF 13               [12] 2485 	rrc	a
      0036C0 F6               [12] 2486 	mov	@r0,a
      0036C1 E5 08            [12] 2487 	mov	a,_bp
      0036C3 24 21            [12] 2488 	add	a,#0x21
      0036C5 F8               [12] 2489 	mov	r0,a
      0036C6 E6               [12] 2490 	mov	a,@r0
      0036C7 08               [12] 2491 	inc	r0
      0036C8 46               [12] 2492 	orl	a,@r0
      0036C9 08               [12] 2493 	inc	r0
      0036CA 46               [12] 2494 	orl	a,@r0
      0036CB 08               [12] 2495 	inc	r0
      0036CC 46               [12] 2496 	orl	a,@r0
      0036CD 70 8F            [24] 2497 	jnz	00361$
                                   2498 ;	calc.c:147: printstr("\r\n");
      0036CF 7F 7A            [12] 2499 	mov	r7,#___str_3
      0036D1 7E 89            [12] 2500 	mov	r6,#(___str_3 >> 8)
      0036D3 7D 80            [12] 2501 	mov	r5,#0x80
                                   2502 ;	calc.c:59: return;
      0036D5                       2503 00364$:
                                   2504 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0036D5 8F 82            [24] 2505 	mov	dpl,r7
      0036D7 8E 83            [24] 2506 	mov	dph,r6
      0036D9 8D F0            [24] 2507 	mov	b,r5
      0036DB 12 70 E2         [24] 2508 	lcall	__gptrget
      0036DE FC               [12] 2509 	mov	r4,a
      0036DF 70 03            [24] 2510 	jnz	01269$
      0036E1 02 57 14         [24] 2511 	ljmp	00249$
      0036E4                       2512 01269$:
      0036E4 7B 00            [12] 2513 	mov	r3,#0x00
      0036E6 8C 82            [24] 2514 	mov	dpl,r4
      0036E8 8B 83            [24] 2515 	mov	dph,r3
      0036EA 12 2B 70         [24] 2516 	lcall	_putchar
      0036ED 0F               [12] 2517 	inc	r7
                                   2518 ;	calc.c:150: case 'V':
      0036EE BF 00 E4         [24] 2519 	cjne	r7,#0x00,00364$
      0036F1 0E               [12] 2520 	inc	r6
      0036F2 80 E1            [24] 2521 	sjmp	00364$
      0036F4                       2522 00105$:
                                   2523 ;	calc.c:151: printstr("\r\n");
      0036F4 7F 7A            [12] 2524 	mov	r7,#___str_3
      0036F6 7E 89            [12] 2525 	mov	r6,#(___str_3 >> 8)
      0036F8 7D 80            [12] 2526 	mov	r5,#0x80
                                   2527 ;	calc.c:59: return;
      0036FA                       2528 00367$:
                                   2529 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0036FA 8F 82            [24] 2530 	mov	dpl,r7
      0036FC 8E 83            [24] 2531 	mov	dph,r6
      0036FE 8D F0            [24] 2532 	mov	b,r5
      003700 12 70 E2         [24] 2533 	lcall	__gptrget
      003703 FC               [12] 2534 	mov	r4,a
      003704 60 10            [24] 2535 	jz	00262$
      003706 7B 00            [12] 2536 	mov	r3,#0x00
      003708 8C 82            [24] 2537 	mov	dpl,r4
      00370A 8B 83            [24] 2538 	mov	dph,r3
      00370C 12 2B 70         [24] 2539 	lcall	_putchar
      00370F 0F               [12] 2540 	inc	r7
                                   2541 ;	calc.c:151: printstr("\r\n");
      003710 BF 00 E7         [24] 2542 	cjne	r7,#0x00,00367$
      003713 0E               [12] 2543 	inc	r6
      003714 80 E4            [24] 2544 	sjmp	00367$
      003716                       2545 00262$:
                                   2546 ;	calc.c:152: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      003716 E5 08            [12] 2547 	mov	a,_bp
      003718 24 12            [12] 2548 	add	a,#0x12
      00371A F8               [12] 2549 	mov	r0,a
      00371B 86 07            [24] 2550 	mov	ar7,@r0
      00371D 08               [12] 2551 	inc	r0
      00371E 86 06            [24] 2552 	mov	ar6,@r0
      003720 08               [12] 2553 	inc	r0
      003721 86 05            [24] 2554 	mov	ar5,@r0
      003723 E5 08            [12] 2555 	mov	a,_bp
      003725 24 12            [12] 2556 	add	a,#0x12
      003727 F8               [12] 2557 	mov	r0,a
      003728 74 11            [12] 2558 	mov	a,#0x11
      00372A 26               [12] 2559 	add	a,@r0
      00372B FA               [12] 2560 	mov	r2,a
      00372C 74 40            [12] 2561 	mov	a,#0x40
      00372E 08               [12] 2562 	inc	r0
      00372F 36               [12] 2563 	addc	a,@r0
      003730 FB               [12] 2564 	mov	r3,a
      003731 08               [12] 2565 	inc	r0
      003732 86 04            [24] 2566 	mov	ar4,@r0
      003734 8A 82            [24] 2567 	mov	dpl,r2
      003736 8B 83            [24] 2568 	mov	dph,r3
      003738 8C F0            [24] 2569 	mov	b,r4
      00373A 12 70 E2         [24] 2570 	lcall	__gptrget
      00373D FA               [12] 2571 	mov	r2,a
      00373E A3               [24] 2572 	inc	dptr
      00373F 12 70 E2         [24] 2573 	lcall	__gptrget
      003742 FB               [12] 2574 	mov	r3,a
      003743 A3               [24] 2575 	inc	dptr
      003744 12 70 E2         [24] 2576 	lcall	__gptrget
      003747 FC               [12] 2577 	mov	r4,a
      003748 C0 07            [24] 2578 	push	ar7
      00374A C0 06            [24] 2579 	push	ar6
      00374C C0 05            [24] 2580 	push	ar5
      00374E 74 BA            [12] 2581 	mov	a,#_dump_peek
      003750 C0 E0            [24] 2582 	push	acc
      003752 74 32            [12] 2583 	mov	a,#(_dump_peek >> 8)
      003754 C0 E0            [24] 2584 	push	acc
      003756 8A 82            [24] 2585 	mov	dpl,r2
      003758 8B 83            [24] 2586 	mov	dph,r3
      00375A 8C F0            [24] 2587 	mov	b,r4
      00375C 12 2A 91         [24] 2588 	lcall	_stack_iter_peek
      00375F AB 82            [24] 2589 	mov	r3,dpl
      003761 AC 83            [24] 2590 	mov	r4,dph
      003763 E5 81            [12] 2591 	mov	a,sp
      003765 24 FB            [12] 2592 	add	a,#0xfb
      003767 F5 81            [12] 2593 	mov	sp,a
      003769 EB               [12] 2594 	mov	a,r3
      00376A 4C               [12] 2595 	orl	a,r4
      00376B 60 03            [24] 2596 	jz	01273$
      00376D 02 57 14         [24] 2597 	ljmp	00249$
      003770                       2598 01273$:
      003770 7F 7D            [12] 2599 	mov	r7,#___str_4
      003772 7E 89            [12] 2600 	mov	r6,#(___str_4 >> 8)
      003774 7D 80            [12] 2601 	mov	r5,#0x80
                                   2602 ;	calc.c:59: return;
      003776                       2603 00370$:
                                   2604 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003776 8F 82            [24] 2605 	mov	dpl,r7
      003778 8E 83            [24] 2606 	mov	dph,r6
      00377A 8D F0            [24] 2607 	mov	b,r5
      00377C 12 70 E2         [24] 2608 	lcall	__gptrget
      00377F FC               [12] 2609 	mov	r4,a
      003780 70 03            [24] 2610 	jnz	01274$
      003782 02 57 14         [24] 2611 	ljmp	00249$
      003785                       2612 01274$:
      003785 7B 00            [12] 2613 	mov	r3,#0x00
      003787 8C 82            [24] 2614 	mov	dpl,r4
      003789 8B 83            [24] 2615 	mov	dph,r3
      00378B 12 2B 70         [24] 2616 	lcall	_putchar
      00378E 0F               [12] 2617 	inc	r7
                                   2618 ;	calc.c:155: case 'p':
      00378F BF 00 E4         [24] 2619 	cjne	r7,#0x00,00370$
      003792 0E               [12] 2620 	inc	r6
      003793 80 E1            [24] 2621 	sjmp	00370$
      003795                       2622 00109$:
                                   2623 ;	calc.c:156: printstr("\r\n");
      003795 7F 7A            [12] 2624 	mov	r7,#___str_3
      003797 7E 89            [12] 2625 	mov	r6,#(___str_3 >> 8)
      003799 7D 80            [12] 2626 	mov	r5,#0x80
                                   2627 ;	calc.c:59: return;
      00379B                       2628 00373$:
                                   2629 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00379B 8F 82            [24] 2630 	mov	dpl,r7
      00379D 8E 83            [24] 2631 	mov	dph,r6
      00379F 8D F0            [24] 2632 	mov	b,r5
      0037A1 12 70 E2         [24] 2633 	lcall	__gptrget
      0037A4 FC               [12] 2634 	mov	r4,a
      0037A5 60 10            [24] 2635 	jz	00266$
      0037A7 7B 00            [12] 2636 	mov	r3,#0x00
      0037A9 8C 82            [24] 2637 	mov	dpl,r4
      0037AB 8B 83            [24] 2638 	mov	dph,r3
      0037AD 12 2B 70         [24] 2639 	lcall	_putchar
      0037B0 0F               [12] 2640 	inc	r7
                                   2641 ;	calc.c:156: printstr("\r\n");
      0037B1 BF 00 E7         [24] 2642 	cjne	r7,#0x00,00373$
      0037B4 0E               [12] 2643 	inc	r6
      0037B5 80 E4            [24] 2644 	sjmp	00373$
      0037B7                       2645 00266$:
                                   2646 ;	calc.c:157: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0037B7 E5 08            [12] 2647 	mov	a,_bp
      0037B9 24 15            [12] 2648 	add	a,#0x15
      0037BB FF               [12] 2649 	mov	r7,a
      0037BC 7E 00            [12] 2650 	mov	r6,#0x00
      0037BE 7D 40            [12] 2651 	mov	r5,#0x40
      0037C0 E5 08            [12] 2652 	mov	a,_bp
      0037C2 24 12            [12] 2653 	add	a,#0x12
      0037C4 F8               [12] 2654 	mov	r0,a
      0037C5 74 11            [12] 2655 	mov	a,#0x11
      0037C7 26               [12] 2656 	add	a,@r0
      0037C8 FA               [12] 2657 	mov	r2,a
      0037C9 ED               [12] 2658 	mov	a,r5
      0037CA 08               [12] 2659 	inc	r0
      0037CB 36               [12] 2660 	addc	a,@r0
      0037CC FB               [12] 2661 	mov	r3,a
      0037CD 08               [12] 2662 	inc	r0
      0037CE 86 04            [24] 2663 	mov	ar4,@r0
      0037D0 8A 82            [24] 2664 	mov	dpl,r2
      0037D2 8B 83            [24] 2665 	mov	dph,r3
      0037D4 8C F0            [24] 2666 	mov	b,r4
      0037D6 12 70 E2         [24] 2667 	lcall	__gptrget
      0037D9 FA               [12] 2668 	mov	r2,a
      0037DA A3               [24] 2669 	inc	dptr
      0037DB 12 70 E2         [24] 2670 	lcall	__gptrget
      0037DE FB               [12] 2671 	mov	r3,a
      0037DF A3               [24] 2672 	inc	dptr
      0037E0 12 70 E2         [24] 2673 	lcall	__gptrget
      0037E3 FC               [12] 2674 	mov	r4,a
      0037E4 C0 07            [24] 2675 	push	ar7
      0037E6 C0 06            [24] 2676 	push	ar6
      0037E8 C0 05            [24] 2677 	push	ar5
      0037EA 8A 82            [24] 2678 	mov	dpl,r2
      0037EC 8B 83            [24] 2679 	mov	dph,r3
      0037EE 8C F0            [24] 2680 	mov	b,r4
      0037F0 12 27 83         [24] 2681 	lcall	_stack_pop
      0037F3 AB 82            [24] 2682 	mov	r3,dpl
      0037F5 AC 83            [24] 2683 	mov	r4,dph
      0037F7 15 81            [12] 2684 	dec	sp
      0037F9 15 81            [12] 2685 	dec	sp
      0037FB 15 81            [12] 2686 	dec	sp
      0037FD EB               [12] 2687 	mov	a,r3
      0037FE 4C               [12] 2688 	orl	a,r4
      0037FF 70 25            [24] 2689 	jnz	00111$
      003801 7F 7D            [12] 2690 	mov	r7,#___str_4
      003803 7E 89            [12] 2691 	mov	r6,#(___str_4 >> 8)
      003805 7D 80            [12] 2692 	mov	r5,#0x80
                                   2693 ;	calc.c:59: return;
      003807                       2694 00376$:
                                   2695 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003807 8F 82            [24] 2696 	mov	dpl,r7
      003809 8E 83            [24] 2697 	mov	dph,r6
      00380B 8D F0            [24] 2698 	mov	b,r5
      00380D 12 70 E2         [24] 2699 	lcall	__gptrget
      003810 FC               [12] 2700 	mov	r4,a
      003811 70 03            [24] 2701 	jnz	01279$
      003813 02 57 14         [24] 2702 	ljmp	00249$
      003816                       2703 01279$:
      003816 7B 00            [12] 2704 	mov	r3,#0x00
      003818 8C 82            [24] 2705 	mov	dpl,r4
      00381A 8B 83            [24] 2706 	mov	dph,r3
      00381C 12 2B 70         [24] 2707 	lcall	_putchar
      00381F 0F               [12] 2708 	inc	r7
                                   2709 ;	calc.c:157: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003820 BF 00 E4         [24] 2710 	cjne	r7,#0x00,00376$
      003823 0E               [12] 2711 	inc	r6
      003824 80 E1            [24] 2712 	sjmp	00376$
      003826                       2713 00111$:
                                   2714 ;	calc.c:159: printstr("PSPTOP\t");
      003826 7F A9            [12] 2715 	mov	r7,#___str_9
      003828 7E 89            [12] 2716 	mov	r6,#(___str_9 >> 8)
      00382A 7D 80            [12] 2717 	mov	r5,#0x80
                                   2718 ;	calc.c:59: return;
      00382C                       2719 00379$:
                                   2720 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00382C 8F 82            [24] 2721 	mov	dpl,r7
      00382E 8E 83            [24] 2722 	mov	dph,r6
      003830 8D F0            [24] 2723 	mov	b,r5
      003832 12 70 E2         [24] 2724 	lcall	__gptrget
      003835 FC               [12] 2725 	mov	r4,a
      003836 60 10            [24] 2726 	jz	00270$
      003838 7B 00            [12] 2727 	mov	r3,#0x00
      00383A 8C 82            [24] 2728 	mov	dpl,r4
      00383C 8B 83            [24] 2729 	mov	dph,r3
      00383E 12 2B 70         [24] 2730 	lcall	_putchar
      003841 0F               [12] 2731 	inc	r7
                                   2732 ;	calc.c:159: printstr("PSPTOP\t");
      003842 BF 00 E7         [24] 2733 	cjne	r7,#0x00,00379$
      003845 0E               [12] 2734 	inc	r6
      003846 80 E4            [24] 2735 	sjmp	00379$
      003848                       2736 00270$:
                                   2737 ;	calc.c:160: printall(d0);
      003848 E5 08            [12] 2738 	mov	a,_bp
      00384A 24 15            [12] 2739 	add	a,#0x15
      00384C F8               [12] 2740 	mov	r0,a
      00384D 86 07            [24] 2741 	mov	ar7,@r0
      00384F 08               [12] 2742 	inc	r0
      003850 86 06            [24] 2743 	mov	ar6,@r0
      003852 08               [12] 2744 	inc	r0
      003853 86 05            [24] 2745 	mov	ar5,@r0
      003855 08               [12] 2746 	inc	r0
      003856 86 04            [24] 2747 	mov	ar4,@r0
      003858 E5 08            [12] 2748 	mov	a,_bp
      00385A 24 1D            [12] 2749 	add	a,#0x1d
      00385C F8               [12] 2750 	mov	r0,a
      00385D A6 07            [24] 2751 	mov	@r0,ar7
      00385F 08               [12] 2752 	inc	r0
      003860 A6 06            [24] 2753 	mov	@r0,ar6
      003862 08               [12] 2754 	inc	r0
      003863 A6 05            [24] 2755 	mov	@r0,ar5
      003865 08               [12] 2756 	inc	r0
      003866 A6 04            [24] 2757 	mov	@r0,ar4
                                   2758 ;	calc.c:72: printf("%08lx\t", d);
      003868 C0 07            [24] 2759 	push	ar7
      00386A C0 06            [24] 2760 	push	ar6
      00386C C0 05            [24] 2761 	push	ar5
      00386E C0 04            [24] 2762 	push	ar4
      003870 74 63            [12] 2763 	mov	a,#___str_0
      003872 C0 E0            [24] 2764 	push	acc
      003874 74 89            [12] 2765 	mov	a,#(___str_0 >> 8)
      003876 C0 E0            [24] 2766 	push	acc
      003878 74 80            [12] 2767 	mov	a,#0x80
      00387A C0 E0            [24] 2768 	push	acc
      00387C 12 70 A9         [24] 2769 	lcall	_printf
      00387F E5 81            [12] 2770 	mov	a,sp
      003881 24 F9            [12] 2771 	add	a,#0xf9
      003883 F5 81            [12] 2772 	mov	sp,a
                                   2773 ;	calc.c:73: printf("% 11ld\t", d);
      003885 E5 08            [12] 2774 	mov	a,_bp
      003887 24 1D            [12] 2775 	add	a,#0x1d
      003889 F8               [12] 2776 	mov	r0,a
      00388A E6               [12] 2777 	mov	a,@r0
      00388B C0 E0            [24] 2778 	push	acc
      00388D 08               [12] 2779 	inc	r0
      00388E E6               [12] 2780 	mov	a,@r0
      00388F C0 E0            [24] 2781 	push	acc
      003891 08               [12] 2782 	inc	r0
      003892 E6               [12] 2783 	mov	a,@r0
      003893 C0 E0            [24] 2784 	push	acc
      003895 08               [12] 2785 	inc	r0
      003896 E6               [12] 2786 	mov	a,@r0
      003897 C0 E0            [24] 2787 	push	acc
      003899 74 6A            [12] 2788 	mov	a,#___str_1
      00389B C0 E0            [24] 2789 	push	acc
      00389D 74 89            [12] 2790 	mov	a,#(___str_1 >> 8)
      00389F C0 E0            [24] 2791 	push	acc
      0038A1 74 80            [12] 2792 	mov	a,#0x80
      0038A3 C0 E0            [24] 2793 	push	acc
      0038A5 12 70 A9         [24] 2794 	lcall	_printf
      0038A8 E5 81            [12] 2795 	mov	a,sp
      0038AA 24 F9            [12] 2796 	add	a,#0xf9
      0038AC F5 81            [12] 2797 	mov	sp,a
                                   2798 ;	calc.c:74: printf("%011lo\t", d);
      0038AE E5 08            [12] 2799 	mov	a,_bp
      0038B0 24 1D            [12] 2800 	add	a,#0x1d
      0038B2 F8               [12] 2801 	mov	r0,a
      0038B3 E6               [12] 2802 	mov	a,@r0
      0038B4 C0 E0            [24] 2803 	push	acc
      0038B6 08               [12] 2804 	inc	r0
      0038B7 E6               [12] 2805 	mov	a,@r0
      0038B8 C0 E0            [24] 2806 	push	acc
      0038BA 08               [12] 2807 	inc	r0
      0038BB E6               [12] 2808 	mov	a,@r0
      0038BC C0 E0            [24] 2809 	push	acc
      0038BE 08               [12] 2810 	inc	r0
      0038BF E6               [12] 2811 	mov	a,@r0
      0038C0 C0 E0            [24] 2812 	push	acc
      0038C2 74 72            [12] 2813 	mov	a,#___str_2
      0038C4 C0 E0            [24] 2814 	push	acc
      0038C6 74 89            [12] 2815 	mov	a,#(___str_2 >> 8)
      0038C8 C0 E0            [24] 2816 	push	acc
      0038CA 74 80            [12] 2817 	mov	a,#0x80
      0038CC C0 E0            [24] 2818 	push	acc
      0038CE 12 70 A9         [24] 2819 	lcall	_printf
      0038D1 E5 81            [12] 2820 	mov	a,sp
      0038D3 24 F9            [12] 2821 	add	a,#0xf9
      0038D5 F5 81            [12] 2822 	mov	sp,a
                                   2823 ;	calc.c:75: printbin(d);
      0038D7 E5 08            [12] 2824 	mov	a,_bp
      0038D9 24 1D            [12] 2825 	add	a,#0x1d
      0038DB F8               [12] 2826 	mov	r0,a
      0038DC 86 07            [24] 2827 	mov	ar7,@r0
      0038DE 08               [12] 2828 	inc	r0
      0038DF 86 06            [24] 2829 	mov	ar6,@r0
      0038E1 08               [12] 2830 	inc	r0
      0038E2 86 05            [24] 2831 	mov	ar5,@r0
      0038E4 08               [12] 2832 	inc	r0
      0038E5 86 02            [24] 2833 	mov	ar2,@r0
                                   2834 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      0038E7 E5 08            [12] 2835 	mov	a,_bp
      0038E9 24 21            [12] 2836 	add	a,#0x21
      0038EB F8               [12] 2837 	mov	r0,a
      0038EC E4               [12] 2838 	clr	a
      0038ED F6               [12] 2839 	mov	@r0,a
      0038EE 08               [12] 2840 	inc	r0
      0038EF F6               [12] 2841 	mov	@r0,a
      0038F0 08               [12] 2842 	inc	r0
      0038F1 F6               [12] 2843 	mov	@r0,a
      0038F2 08               [12] 2844 	inc	r0
      0038F3 76 80            [12] 2845 	mov	@r0,#0x80
      0038F5                       2846 00381$:
                                   2847 ;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0038F5 E5 08            [12] 2848 	mov	a,_bp
      0038F7 24 07            [12] 2849 	add	a,#0x07
      0038F9 F8               [12] 2850 	mov	r0,a
      0038FA A6 07            [24] 2851 	mov	@r0,ar7
      0038FC 08               [12] 2852 	inc	r0
      0038FD A6 06            [24] 2853 	mov	@r0,ar6
      0038FF 08               [12] 2854 	inc	r0
      003900 A6 05            [24] 2855 	mov	@r0,ar5
      003902 08               [12] 2856 	inc	r0
      003903 A6 02            [24] 2857 	mov	@r0,ar2
      003905 E5 08            [12] 2858 	mov	a,_bp
      003907 24 07            [12] 2859 	add	a,#0x07
      003909 F8               [12] 2860 	mov	r0,a
      00390A E5 08            [12] 2861 	mov	a,_bp
      00390C 24 21            [12] 2862 	add	a,#0x21
      00390E F9               [12] 2863 	mov	r1,a
      00390F E7               [12] 2864 	mov	a,@r1
      003910 56               [12] 2865 	anl	a,@r0
      003911 F6               [12] 2866 	mov	@r0,a
      003912 09               [12] 2867 	inc	r1
      003913 E7               [12] 2868 	mov	a,@r1
      003914 08               [12] 2869 	inc	r0
      003915 56               [12] 2870 	anl	a,@r0
      003916 F6               [12] 2871 	mov	@r0,a
      003917 09               [12] 2872 	inc	r1
      003918 E7               [12] 2873 	mov	a,@r1
      003919 08               [12] 2874 	inc	r0
      00391A 56               [12] 2875 	anl	a,@r0
      00391B F6               [12] 2876 	mov	@r0,a
      00391C 09               [12] 2877 	inc	r1
      00391D E7               [12] 2878 	mov	a,@r1
      00391E 08               [12] 2879 	inc	r0
      00391F 56               [12] 2880 	anl	a,@r0
      003920 F6               [12] 2881 	mov	@r0,a
      003921 E5 08            [12] 2882 	mov	a,_bp
      003923 24 07            [12] 2883 	add	a,#0x07
      003925 F8               [12] 2884 	mov	r0,a
      003926 E6               [12] 2885 	mov	a,@r0
      003927 08               [12] 2886 	inc	r0
      003928 46               [12] 2887 	orl	a,@r0
      003929 08               [12] 2888 	inc	r0
      00392A 46               [12] 2889 	orl	a,@r0
      00392B 08               [12] 2890 	inc	r0
      00392C 46               [12] 2891 	orl	a,@r0
      00392D 60 06            [24] 2892 	jz	00504$
      00392F 7B 31            [12] 2893 	mov	r3,#0x31
      003931 7C 00            [12] 2894 	mov	r4,#0x00
      003933 80 04            [24] 2895 	sjmp	00505$
      003935                       2896 00504$:
      003935 7B 30            [12] 2897 	mov	r3,#0x30
      003937 7C 00            [12] 2898 	mov	r4,#0x00
      003939                       2899 00505$:
      003939 8B 82            [24] 2900 	mov	dpl,r3
      00393B 8C 83            [24] 2901 	mov	dph,r4
      00393D 12 2B 70         [24] 2902 	lcall	_putchar
                                   2903 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      003940 E5 08            [12] 2904 	mov	a,_bp
      003942 24 21            [12] 2905 	add	a,#0x21
      003944 F8               [12] 2906 	mov	r0,a
      003945 08               [12] 2907 	inc	r0
      003946 08               [12] 2908 	inc	r0
      003947 08               [12] 2909 	inc	r0
      003948 E6               [12] 2910 	mov	a,@r0
      003949 C3               [12] 2911 	clr	c
      00394A 13               [12] 2912 	rrc	a
      00394B F6               [12] 2913 	mov	@r0,a
      00394C 18               [12] 2914 	dec	r0
      00394D E6               [12] 2915 	mov	a,@r0
      00394E 13               [12] 2916 	rrc	a
      00394F F6               [12] 2917 	mov	@r0,a
      003950 18               [12] 2918 	dec	r0
      003951 E6               [12] 2919 	mov	a,@r0
      003952 13               [12] 2920 	rrc	a
      003953 F6               [12] 2921 	mov	@r0,a
      003954 18               [12] 2922 	dec	r0
      003955 E6               [12] 2923 	mov	a,@r0
      003956 13               [12] 2924 	rrc	a
      003957 F6               [12] 2925 	mov	@r0,a
      003958 E5 08            [12] 2926 	mov	a,_bp
      00395A 24 21            [12] 2927 	add	a,#0x21
      00395C F8               [12] 2928 	mov	r0,a
      00395D E6               [12] 2929 	mov	a,@r0
      00395E 08               [12] 2930 	inc	r0
      00395F 46               [12] 2931 	orl	a,@r0
      003960 08               [12] 2932 	inc	r0
      003961 46               [12] 2933 	orl	a,@r0
      003962 08               [12] 2934 	inc	r0
      003963 46               [12] 2935 	orl	a,@r0
      003964 70 8F            [24] 2936 	jnz	00381$
                                   2937 ;	calc.c:161: printstr("\r\n");
      003966 7F 7A            [12] 2938 	mov	r7,#___str_3
      003968 7E 89            [12] 2939 	mov	r6,#(___str_3 >> 8)
      00396A 7D 80            [12] 2940 	mov	r5,#0x80
                                   2941 ;	calc.c:59: return;
      00396C                       2942 00384$:
                                   2943 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00396C 8F 82            [24] 2944 	mov	dpl,r7
      00396E 8E 83            [24] 2945 	mov	dph,r6
      003970 8D F0            [24] 2946 	mov	b,r5
      003972 12 70 E2         [24] 2947 	lcall	__gptrget
      003975 FC               [12] 2948 	mov	r4,a
      003976 70 03            [24] 2949 	jnz	01285$
      003978 02 57 14         [24] 2950 	ljmp	00249$
      00397B                       2951 01285$:
      00397B 7B 00            [12] 2952 	mov	r3,#0x00
      00397D 8C 82            [24] 2953 	mov	dpl,r4
      00397F 8B 83            [24] 2954 	mov	dph,r3
      003981 12 2B 70         [24] 2955 	lcall	_putchar
      003984 0F               [12] 2956 	inc	r7
                                   2957 ;	calc.c:164: case 'P':
      003985 BF 00 E4         [24] 2958 	cjne	r7,#0x00,00384$
      003988 0E               [12] 2959 	inc	r6
      003989 80 E1            [24] 2960 	sjmp	00384$
      00398B                       2961 00113$:
                                   2962 ;	calc.c:165: printstr("\r\n");
      00398B 7F 7A            [12] 2963 	mov	r7,#___str_3
      00398D 7E 89            [12] 2964 	mov	r6,#(___str_3 >> 8)
      00398F 7D 80            [12] 2965 	mov	r5,#0x80
                                   2966 ;	calc.c:59: return;
      003991                       2967 00387$:
                                   2968 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003991 8F 82            [24] 2969 	mov	dpl,r7
      003993 8E 83            [24] 2970 	mov	dph,r6
      003995 8D F0            [24] 2971 	mov	b,r5
      003997 12 70 E2         [24] 2972 	lcall	__gptrget
      00399A FC               [12] 2973 	mov	r4,a
      00399B 60 10            [24] 2974 	jz	00277$
      00399D 7B 00            [12] 2975 	mov	r3,#0x00
      00399F 8C 82            [24] 2976 	mov	dpl,r4
      0039A1 8B 83            [24] 2977 	mov	dph,r3
      0039A3 12 2B 70         [24] 2978 	lcall	_putchar
      0039A6 0F               [12] 2979 	inc	r7
                                   2980 ;	calc.c:165: printstr("\r\n");
      0039A7 BF 00 E7         [24] 2981 	cjne	r7,#0x00,00387$
      0039AA 0E               [12] 2982 	inc	r6
      0039AB 80 E4            [24] 2983 	sjmp	00387$
      0039AD                       2984 00277$:
                                   2985 ;	calc.c:166: (void)dump_pop(_ctx, delta);
      0039AD E5 08            [12] 2986 	mov	a,_bp
      0039AF 24 FB            [12] 2987 	add	a,#0xfb
      0039B1 F8               [12] 2988 	mov	r0,a
      0039B2 E6               [12] 2989 	mov	a,@r0
      0039B3 C0 E0            [24] 2990 	push	acc
      0039B5 08               [12] 2991 	inc	r0
      0039B6 E6               [12] 2992 	mov	a,@r0
      0039B7 C0 E0            [24] 2993 	push	acc
      0039B9 08               [12] 2994 	inc	r0
      0039BA E6               [12] 2995 	mov	a,@r0
      0039BB C0 E0            [24] 2996 	push	acc
      0039BD A8 08            [24] 2997 	mov	r0,_bp
      0039BF 08               [12] 2998 	inc	r0
      0039C0 86 82            [24] 2999 	mov	dpl,@r0
      0039C2 08               [12] 3000 	inc	r0
      0039C3 86 83            [24] 3001 	mov	dph,@r0
      0039C5 08               [12] 3002 	inc	r0
      0039C6 86 F0            [24] 3003 	mov	b,@r0
      0039C8 12 2D 12         [24] 3004 	lcall	_dump_pop
      0039CB 15 81            [12] 3005 	dec	sp
      0039CD 15 81            [12] 3006 	dec	sp
      0039CF 15 81            [12] 3007 	dec	sp
                                   3008 ;	calc.c:167: break;
      0039D1 02 57 14         [24] 3009 	ljmp	00249$
                                   3010 ;	calc.c:168: case 'x':
      0039D4                       3011 00114$:
                                   3012 ;	calc.c:169: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0039D4 E5 08            [12] 3013 	mov	a,_bp
      0039D6 24 15            [12] 3014 	add	a,#0x15
      0039D8 FF               [12] 3015 	mov	r7,a
      0039D9 7E 00            [12] 3016 	mov	r6,#0x00
      0039DB 7D 40            [12] 3017 	mov	r5,#0x40
      0039DD E5 08            [12] 3018 	mov	a,_bp
      0039DF 24 12            [12] 3019 	add	a,#0x12
      0039E1 F8               [12] 3020 	mov	r0,a
      0039E2 E5 08            [12] 3021 	mov	a,_bp
      0039E4 24 07            [12] 3022 	add	a,#0x07
      0039E6 F9               [12] 3023 	mov	r1,a
      0039E7 74 11            [12] 3024 	mov	a,#0x11
      0039E9 26               [12] 3025 	add	a,@r0
      0039EA F7               [12] 3026 	mov	@r1,a
      0039EB 74 40            [12] 3027 	mov	a,#0x40
      0039ED 08               [12] 3028 	inc	r0
      0039EE 36               [12] 3029 	addc	a,@r0
      0039EF 09               [12] 3030 	inc	r1
      0039F0 F7               [12] 3031 	mov	@r1,a
      0039F1 08               [12] 3032 	inc	r0
      0039F2 09               [12] 3033 	inc	r1
      0039F3 E6               [12] 3034 	mov	a,@r0
      0039F4 F7               [12] 3035 	mov	@r1,a
      0039F5 E5 08            [12] 3036 	mov	a,_bp
      0039F7 24 07            [12] 3037 	add	a,#0x07
      0039F9 F8               [12] 3038 	mov	r0,a
      0039FA 86 82            [24] 3039 	mov	dpl,@r0
      0039FC 08               [12] 3040 	inc	r0
      0039FD 86 83            [24] 3041 	mov	dph,@r0
      0039FF 08               [12] 3042 	inc	r0
      003A00 86 F0            [24] 3043 	mov	b,@r0
      003A02 12 70 E2         [24] 3044 	lcall	__gptrget
      003A05 FA               [12] 3045 	mov	r2,a
      003A06 A3               [24] 3046 	inc	dptr
      003A07 12 70 E2         [24] 3047 	lcall	__gptrget
      003A0A FB               [12] 3048 	mov	r3,a
      003A0B A3               [24] 3049 	inc	dptr
      003A0C 12 70 E2         [24] 3050 	lcall	__gptrget
      003A0F FC               [12] 3051 	mov	r4,a
      003A10 C0 07            [24] 3052 	push	ar7
      003A12 C0 06            [24] 3053 	push	ar6
      003A14 C0 05            [24] 3054 	push	ar5
      003A16 8A 82            [24] 3055 	mov	dpl,r2
      003A18 8B 83            [24] 3056 	mov	dph,r3
      003A1A 8C F0            [24] 3057 	mov	b,r4
      003A1C 12 27 83         [24] 3058 	lcall	_stack_pop
      003A1F AB 82            [24] 3059 	mov	r3,dpl
      003A21 AC 83            [24] 3060 	mov	r4,dph
      003A23 15 81            [12] 3061 	dec	sp
      003A25 15 81            [12] 3062 	dec	sp
      003A27 15 81            [12] 3063 	dec	sp
      003A29 EB               [12] 3064 	mov	a,r3
      003A2A 4C               [12] 3065 	orl	a,r4
      003A2B 70 25            [24] 3066 	jnz	00119$
      003A2D 7F B1            [12] 3067 	mov	r7,#___str_10
      003A2F 7E 89            [12] 3068 	mov	r6,#(___str_10 >> 8)
      003A31 7D 80            [12] 3069 	mov	r5,#0x80
                                   3070 ;	calc.c:59: return;
      003A33                       3071 00390$:
                                   3072 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003A33 8F 82            [24] 3073 	mov	dpl,r7
      003A35 8E 83            [24] 3074 	mov	dph,r6
      003A37 8D F0            [24] 3075 	mov	b,r5
      003A39 12 70 E2         [24] 3076 	lcall	__gptrget
      003A3C FC               [12] 3077 	mov	r4,a
      003A3D 70 03            [24] 3078 	jnz	01290$
      003A3F 02 57 14         [24] 3079 	ljmp	00249$
      003A42                       3080 01290$:
      003A42 7B 00            [12] 3081 	mov	r3,#0x00
      003A44 8C 82            [24] 3082 	mov	dpl,r4
      003A46 8B 83            [24] 3083 	mov	dph,r3
      003A48 12 2B 70         [24] 3084 	lcall	_putchar
      003A4B 0F               [12] 3085 	inc	r7
                                   3086 ;	calc.c:169: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003A4C BF 00 E4         [24] 3087 	cjne	r7,#0x00,00390$
      003A4F 0E               [12] 3088 	inc	r6
      003A50 80 E1            [24] 3089 	sjmp	00390$
      003A52                       3090 00119$:
                                   3091 ;	calc.c:170: else if (!stack_pop(ctx->ps, &d1)) {
      003A52 E5 08            [12] 3092 	mov	a,_bp
      003A54 24 19            [12] 3093 	add	a,#0x19
      003A56 FF               [12] 3094 	mov	r7,a
      003A57 7E 00            [12] 3095 	mov	r6,#0x00
      003A59 7D 40            [12] 3096 	mov	r5,#0x40
      003A5B E5 08            [12] 3097 	mov	a,_bp
      003A5D 24 07            [12] 3098 	add	a,#0x07
      003A5F F8               [12] 3099 	mov	r0,a
      003A60 86 82            [24] 3100 	mov	dpl,@r0
      003A62 08               [12] 3101 	inc	r0
      003A63 86 83            [24] 3102 	mov	dph,@r0
      003A65 08               [12] 3103 	inc	r0
      003A66 86 F0            [24] 3104 	mov	b,@r0
      003A68 12 70 E2         [24] 3105 	lcall	__gptrget
      003A6B FA               [12] 3106 	mov	r2,a
      003A6C A3               [24] 3107 	inc	dptr
      003A6D 12 70 E2         [24] 3108 	lcall	__gptrget
      003A70 FB               [12] 3109 	mov	r3,a
      003A71 A3               [24] 3110 	inc	dptr
      003A72 12 70 E2         [24] 3111 	lcall	__gptrget
      003A75 FC               [12] 3112 	mov	r4,a
      003A76 C0 07            [24] 3113 	push	ar7
      003A78 C0 06            [24] 3114 	push	ar6
      003A7A C0 05            [24] 3115 	push	ar5
      003A7C 8A 82            [24] 3116 	mov	dpl,r2
      003A7E 8B 83            [24] 3117 	mov	dph,r3
      003A80 8C F0            [24] 3118 	mov	b,r4
      003A82 12 27 83         [24] 3119 	lcall	_stack_pop
      003A85 AB 82            [24] 3120 	mov	r3,dpl
      003A87 AC 83            [24] 3121 	mov	r4,dph
      003A89 15 81            [12] 3122 	dec	sp
      003A8B 15 81            [12] 3123 	dec	sp
      003A8D 15 81            [12] 3124 	dec	sp
      003A8F EB               [12] 3125 	mov	a,r3
      003A90 4C               [12] 3126 	orl	a,r4
      003A91 70 63            [24] 3127 	jnz	00116$
                                   3128 ;	calc.c:171: (void)stack_push(ctx->ps, d0);
      003A93 E5 08            [12] 3129 	mov	a,_bp
      003A95 24 07            [12] 3130 	add	a,#0x07
      003A97 F8               [12] 3131 	mov	r0,a
      003A98 86 82            [24] 3132 	mov	dpl,@r0
      003A9A 08               [12] 3133 	inc	r0
      003A9B 86 83            [24] 3134 	mov	dph,@r0
      003A9D 08               [12] 3135 	inc	r0
      003A9E 86 F0            [24] 3136 	mov	b,@r0
      003AA0 12 70 E2         [24] 3137 	lcall	__gptrget
      003AA3 FA               [12] 3138 	mov	r2,a
      003AA4 A3               [24] 3139 	inc	dptr
      003AA5 12 70 E2         [24] 3140 	lcall	__gptrget
      003AA8 FB               [12] 3141 	mov	r3,a
      003AA9 A3               [24] 3142 	inc	dptr
      003AAA 12 70 E2         [24] 3143 	lcall	__gptrget
      003AAD FC               [12] 3144 	mov	r4,a
      003AAE E5 08            [12] 3145 	mov	a,_bp
      003AB0 24 15            [12] 3146 	add	a,#0x15
      003AB2 F8               [12] 3147 	mov	r0,a
      003AB3 E6               [12] 3148 	mov	a,@r0
      003AB4 C0 E0            [24] 3149 	push	acc
      003AB6 08               [12] 3150 	inc	r0
      003AB7 E6               [12] 3151 	mov	a,@r0
      003AB8 C0 E0            [24] 3152 	push	acc
      003ABA 08               [12] 3153 	inc	r0
      003ABB E6               [12] 3154 	mov	a,@r0
      003ABC C0 E0            [24] 3155 	push	acc
      003ABE 08               [12] 3156 	inc	r0
      003ABF E6               [12] 3157 	mov	a,@r0
      003AC0 C0 E0            [24] 3158 	push	acc
      003AC2 8A 82            [24] 3159 	mov	dpl,r2
      003AC4 8B 83            [24] 3160 	mov	dph,r3
      003AC6 8C F0            [24] 3161 	mov	b,r4
      003AC8 12 26 B5         [24] 3162 	lcall	_stack_push
      003ACB E5 81            [12] 3163 	mov	a,sp
      003ACD 24 FC            [12] 3164 	add	a,#0xfc
      003ACF F5 81            [12] 3165 	mov	sp,a
                                   3166 ;	calc.c:172: printstr("\r\nstack underflow\r\n");
      003AD1 7F B1            [12] 3167 	mov	r7,#___str_10
      003AD3 7E 89            [12] 3168 	mov	r6,#(___str_10 >> 8)
      003AD5 7D 80            [12] 3169 	mov	r5,#0x80
                                   3170 ;	calc.c:59: return;
      003AD7                       3171 00393$:
                                   3172 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003AD7 8F 82            [24] 3173 	mov	dpl,r7
      003AD9 8E 83            [24] 3174 	mov	dph,r6
      003ADB 8D F0            [24] 3175 	mov	b,r5
      003ADD 12 70 E2         [24] 3176 	lcall	__gptrget
      003AE0 FC               [12] 3177 	mov	r4,a
      003AE1 70 03            [24] 3178 	jnz	01293$
      003AE3 02 57 14         [24] 3179 	ljmp	00249$
      003AE6                       3180 01293$:
      003AE6 7B 00            [12] 3181 	mov	r3,#0x00
      003AE8 8C 82            [24] 3182 	mov	dpl,r4
      003AEA 8B 83            [24] 3183 	mov	dph,r3
      003AEC 12 2B 70         [24] 3184 	lcall	_putchar
      003AEF 0F               [12] 3185 	inc	r7
                                   3186 ;	calc.c:172: printstr("\r\nstack underflow\r\n");
      003AF0 BF 00 E4         [24] 3187 	cjne	r7,#0x00,00393$
      003AF3 0E               [12] 3188 	inc	r6
      003AF4 80 E1            [24] 3189 	sjmp	00393$
      003AF6                       3190 00116$:
                                   3191 ;	calc.c:174: (void)stack_push(ctx->ps, d0);
      003AF6 E5 08            [12] 3192 	mov	a,_bp
      003AF8 24 07            [12] 3193 	add	a,#0x07
      003AFA F8               [12] 3194 	mov	r0,a
      003AFB 86 82            [24] 3195 	mov	dpl,@r0
      003AFD 08               [12] 3196 	inc	r0
      003AFE 86 83            [24] 3197 	mov	dph,@r0
      003B00 08               [12] 3198 	inc	r0
      003B01 86 F0            [24] 3199 	mov	b,@r0
      003B03 12 70 E2         [24] 3200 	lcall	__gptrget
      003B06 FA               [12] 3201 	mov	r2,a
      003B07 A3               [24] 3202 	inc	dptr
      003B08 12 70 E2         [24] 3203 	lcall	__gptrget
      003B0B FB               [12] 3204 	mov	r3,a
      003B0C A3               [24] 3205 	inc	dptr
      003B0D 12 70 E2         [24] 3206 	lcall	__gptrget
      003B10 FC               [12] 3207 	mov	r4,a
      003B11 E5 08            [12] 3208 	mov	a,_bp
      003B13 24 15            [12] 3209 	add	a,#0x15
      003B15 F8               [12] 3210 	mov	r0,a
      003B16 E6               [12] 3211 	mov	a,@r0
      003B17 C0 E0            [24] 3212 	push	acc
      003B19 08               [12] 3213 	inc	r0
      003B1A E6               [12] 3214 	mov	a,@r0
      003B1B C0 E0            [24] 3215 	push	acc
      003B1D 08               [12] 3216 	inc	r0
      003B1E E6               [12] 3217 	mov	a,@r0
      003B1F C0 E0            [24] 3218 	push	acc
      003B21 08               [12] 3219 	inc	r0
      003B22 E6               [12] 3220 	mov	a,@r0
      003B23 C0 E0            [24] 3221 	push	acc
      003B25 8A 82            [24] 3222 	mov	dpl,r2
      003B27 8B 83            [24] 3223 	mov	dph,r3
      003B29 8C F0            [24] 3224 	mov	b,r4
      003B2B 12 26 B5         [24] 3225 	lcall	_stack_push
      003B2E E5 81            [12] 3226 	mov	a,sp
      003B30 24 FC            [12] 3227 	add	a,#0xfc
      003B32 F5 81            [12] 3228 	mov	sp,a
                                   3229 ;	calc.c:175: (void)stack_push(ctx->ps, d1);
      003B34 E5 08            [12] 3230 	mov	a,_bp
      003B36 24 07            [12] 3231 	add	a,#0x07
      003B38 F8               [12] 3232 	mov	r0,a
      003B39 86 82            [24] 3233 	mov	dpl,@r0
      003B3B 08               [12] 3234 	inc	r0
      003B3C 86 83            [24] 3235 	mov	dph,@r0
      003B3E 08               [12] 3236 	inc	r0
      003B3F 86 F0            [24] 3237 	mov	b,@r0
      003B41 12 70 E2         [24] 3238 	lcall	__gptrget
      003B44 FA               [12] 3239 	mov	r2,a
      003B45 A3               [24] 3240 	inc	dptr
      003B46 12 70 E2         [24] 3241 	lcall	__gptrget
      003B49 FB               [12] 3242 	mov	r3,a
      003B4A A3               [24] 3243 	inc	dptr
      003B4B 12 70 E2         [24] 3244 	lcall	__gptrget
      003B4E FC               [12] 3245 	mov	r4,a
      003B4F E5 08            [12] 3246 	mov	a,_bp
      003B51 24 19            [12] 3247 	add	a,#0x19
      003B53 F8               [12] 3248 	mov	r0,a
      003B54 E6               [12] 3249 	mov	a,@r0
      003B55 C0 E0            [24] 3250 	push	acc
      003B57 08               [12] 3251 	inc	r0
      003B58 E6               [12] 3252 	mov	a,@r0
      003B59 C0 E0            [24] 3253 	push	acc
      003B5B 08               [12] 3254 	inc	r0
      003B5C E6               [12] 3255 	mov	a,@r0
      003B5D C0 E0            [24] 3256 	push	acc
      003B5F 08               [12] 3257 	inc	r0
      003B60 E6               [12] 3258 	mov	a,@r0
      003B61 C0 E0            [24] 3259 	push	acc
      003B63 8A 82            [24] 3260 	mov	dpl,r2
      003B65 8B 83            [24] 3261 	mov	dph,r3
      003B67 8C F0            [24] 3262 	mov	b,r4
      003B69 12 26 B5         [24] 3263 	lcall	_stack_push
      003B6C E5 81            [12] 3264 	mov	a,sp
      003B6E 24 FC            [12] 3265 	add	a,#0xfc
      003B70 F5 81            [12] 3266 	mov	sp,a
                                   3267 ;	calc.c:177: break;
      003B72 02 57 14         [24] 3268 	ljmp	00249$
                                   3269 ;	calc.c:178: case 'm':
      003B75                       3270 00121$:
                                   3271 ;	calc.c:179: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003B75 E5 08            [12] 3272 	mov	a,_bp
      003B77 24 15            [12] 3273 	add	a,#0x15
      003B79 FF               [12] 3274 	mov	r7,a
      003B7A 7E 00            [12] 3275 	mov	r6,#0x00
      003B7C 7D 40            [12] 3276 	mov	r5,#0x40
      003B7E E5 08            [12] 3277 	mov	a,_bp
      003B80 24 12            [12] 3278 	add	a,#0x12
      003B82 F8               [12] 3279 	mov	r0,a
      003B83 E5 08            [12] 3280 	mov	a,_bp
      003B85 24 07            [12] 3281 	add	a,#0x07
      003B87 F9               [12] 3282 	mov	r1,a
      003B88 74 11            [12] 3283 	mov	a,#0x11
      003B8A 26               [12] 3284 	add	a,@r0
      003B8B F7               [12] 3285 	mov	@r1,a
      003B8C 74 40            [12] 3286 	mov	a,#0x40
      003B8E 08               [12] 3287 	inc	r0
      003B8F 36               [12] 3288 	addc	a,@r0
      003B90 09               [12] 3289 	inc	r1
      003B91 F7               [12] 3290 	mov	@r1,a
      003B92 08               [12] 3291 	inc	r0
      003B93 09               [12] 3292 	inc	r1
      003B94 E6               [12] 3293 	mov	a,@r0
      003B95 F7               [12] 3294 	mov	@r1,a
      003B96 E5 08            [12] 3295 	mov	a,_bp
      003B98 24 07            [12] 3296 	add	a,#0x07
      003B9A F8               [12] 3297 	mov	r0,a
      003B9B 86 82            [24] 3298 	mov	dpl,@r0
      003B9D 08               [12] 3299 	inc	r0
      003B9E 86 83            [24] 3300 	mov	dph,@r0
      003BA0 08               [12] 3301 	inc	r0
      003BA1 86 F0            [24] 3302 	mov	b,@r0
      003BA3 12 70 E2         [24] 3303 	lcall	__gptrget
      003BA6 FA               [12] 3304 	mov	r2,a
      003BA7 A3               [24] 3305 	inc	dptr
      003BA8 12 70 E2         [24] 3306 	lcall	__gptrget
      003BAB FB               [12] 3307 	mov	r3,a
      003BAC A3               [24] 3308 	inc	dptr
      003BAD 12 70 E2         [24] 3309 	lcall	__gptrget
      003BB0 FC               [12] 3310 	mov	r4,a
      003BB1 C0 07            [24] 3311 	push	ar7
      003BB3 C0 06            [24] 3312 	push	ar6
      003BB5 C0 05            [24] 3313 	push	ar5
      003BB7 8A 82            [24] 3314 	mov	dpl,r2
      003BB9 8B 83            [24] 3315 	mov	dph,r3
      003BBB 8C F0            [24] 3316 	mov	b,r4
      003BBD 12 27 83         [24] 3317 	lcall	_stack_pop
      003BC0 AB 82            [24] 3318 	mov	r3,dpl
      003BC2 AC 83            [24] 3319 	mov	r4,dph
      003BC4 15 81            [12] 3320 	dec	sp
      003BC6 15 81            [12] 3321 	dec	sp
      003BC8 15 81            [12] 3322 	dec	sp
      003BCA EB               [12] 3323 	mov	a,r3
      003BCB 4C               [12] 3324 	orl	a,r4
      003BCC 70 25            [24] 3325 	jnz	00125$
      003BCE 7F B1            [12] 3326 	mov	r7,#___str_10
      003BD0 7E 89            [12] 3327 	mov	r6,#(___str_10 >> 8)
      003BD2 7D 80            [12] 3328 	mov	r5,#0x80
                                   3329 ;	calc.c:59: return;
      003BD4                       3330 00396$:
                                   3331 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003BD4 8F 82            [24] 3332 	mov	dpl,r7
      003BD6 8E 83            [24] 3333 	mov	dph,r6
      003BD8 8D F0            [24] 3334 	mov	b,r5
      003BDA 12 70 E2         [24] 3335 	lcall	__gptrget
      003BDD FC               [12] 3336 	mov	r4,a
      003BDE 70 03            [24] 3337 	jnz	01296$
      003BE0 02 57 14         [24] 3338 	ljmp	00249$
      003BE3                       3339 01296$:
      003BE3 7B 00            [12] 3340 	mov	r3,#0x00
      003BE5 8C 82            [24] 3341 	mov	dpl,r4
      003BE7 8B 83            [24] 3342 	mov	dph,r3
      003BE9 12 2B 70         [24] 3343 	lcall	_putchar
      003BEC 0F               [12] 3344 	inc	r7
                                   3345 ;	calc.c:179: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003BED BF 00 E4         [24] 3346 	cjne	r7,#0x00,00396$
      003BF0 0E               [12] 3347 	inc	r6
      003BF1 80 E1            [24] 3348 	sjmp	00396$
      003BF3                       3349 00125$:
                                   3350 ;	calc.c:181: if (!stack_push(ctx->ss, d0)) {
      003BF3 E5 08            [12] 3351 	mov	a,_bp
      003BF5 24 12            [12] 3352 	add	a,#0x12
      003BF7 F8               [12] 3353 	mov	r0,a
      003BF8 74 14            [12] 3354 	mov	a,#0x14
      003BFA 26               [12] 3355 	add	a,@r0
      003BFB FA               [12] 3356 	mov	r2,a
      003BFC 74 40            [12] 3357 	mov	a,#0x40
      003BFE 08               [12] 3358 	inc	r0
      003BFF 36               [12] 3359 	addc	a,@r0
      003C00 FB               [12] 3360 	mov	r3,a
      003C01 08               [12] 3361 	inc	r0
      003C02 86 04            [24] 3362 	mov	ar4,@r0
      003C04 8A 82            [24] 3363 	mov	dpl,r2
      003C06 8B 83            [24] 3364 	mov	dph,r3
      003C08 8C F0            [24] 3365 	mov	b,r4
      003C0A 12 70 E2         [24] 3366 	lcall	__gptrget
      003C0D FA               [12] 3367 	mov	r2,a
      003C0E A3               [24] 3368 	inc	dptr
      003C0F 12 70 E2         [24] 3369 	lcall	__gptrget
      003C12 FB               [12] 3370 	mov	r3,a
      003C13 A3               [24] 3371 	inc	dptr
      003C14 12 70 E2         [24] 3372 	lcall	__gptrget
      003C17 FC               [12] 3373 	mov	r4,a
      003C18 E5 08            [12] 3374 	mov	a,_bp
      003C1A 24 15            [12] 3375 	add	a,#0x15
      003C1C F8               [12] 3376 	mov	r0,a
      003C1D E6               [12] 3377 	mov	a,@r0
      003C1E C0 E0            [24] 3378 	push	acc
      003C20 08               [12] 3379 	inc	r0
      003C21 E6               [12] 3380 	mov	a,@r0
      003C22 C0 E0            [24] 3381 	push	acc
      003C24 08               [12] 3382 	inc	r0
      003C25 E6               [12] 3383 	mov	a,@r0
      003C26 C0 E0            [24] 3384 	push	acc
      003C28 08               [12] 3385 	inc	r0
      003C29 E6               [12] 3386 	mov	a,@r0
      003C2A C0 E0            [24] 3387 	push	acc
      003C2C 8A 82            [24] 3388 	mov	dpl,r2
      003C2E 8B 83            [24] 3389 	mov	dph,r3
      003C30 8C F0            [24] 3390 	mov	b,r4
      003C32 12 26 B5         [24] 3391 	lcall	_stack_push
      003C35 AB 82            [24] 3392 	mov	r3,dpl
      003C37 AC 83            [24] 3393 	mov	r4,dph
      003C39 E5 81            [12] 3394 	mov	a,sp
      003C3B 24 FC            [12] 3395 	add	a,#0xfc
      003C3D F5 81            [12] 3396 	mov	sp,a
      003C3F EB               [12] 3397 	mov	a,r3
      003C40 4C               [12] 3398 	orl	a,r4
      003C41 60 03            [24] 3399 	jz	01298$
      003C43 02 57 14         [24] 3400 	ljmp	00249$
      003C46                       3401 01298$:
                                   3402 ;	calc.c:182: printstr("\r\nsecondary stack overflow\r\n");
      003C46 7F C5            [12] 3403 	mov	r7,#___str_11
      003C48 7E 89            [12] 3404 	mov	r6,#(___str_11 >> 8)
      003C4A 7D 80            [12] 3405 	mov	r5,#0x80
                                   3406 ;	calc.c:59: return;
      003C4C                       3407 00399$:
                                   3408 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003C4C 8F 82            [24] 3409 	mov	dpl,r7
      003C4E 8E 83            [24] 3410 	mov	dph,r6
      003C50 8D F0            [24] 3411 	mov	b,r5
      003C52 12 70 E2         [24] 3412 	lcall	__gptrget
      003C55 FC               [12] 3413 	mov	r4,a
      003C56 60 10            [24] 3414 	jz	00285$
      003C58 7B 00            [12] 3415 	mov	r3,#0x00
      003C5A 8C 82            [24] 3416 	mov	dpl,r4
      003C5C 8B 83            [24] 3417 	mov	dph,r3
      003C5E 12 2B 70         [24] 3418 	lcall	_putchar
      003C61 0F               [12] 3419 	inc	r7
                                   3420 ;	calc.c:182: printstr("\r\nsecondary stack overflow\r\n");
      003C62 BF 00 E7         [24] 3421 	cjne	r7,#0x00,00399$
      003C65 0E               [12] 3422 	inc	r6
      003C66 80 E4            [24] 3423 	sjmp	00399$
      003C68                       3424 00285$:
                                   3425 ;	calc.c:183: (void)stack_push(ctx->ps, d0);
      003C68 E5 08            [12] 3426 	mov	a,_bp
      003C6A 24 07            [12] 3427 	add	a,#0x07
      003C6C F8               [12] 3428 	mov	r0,a
      003C6D 86 82            [24] 3429 	mov	dpl,@r0
      003C6F 08               [12] 3430 	inc	r0
      003C70 86 83            [24] 3431 	mov	dph,@r0
      003C72 08               [12] 3432 	inc	r0
      003C73 86 F0            [24] 3433 	mov	b,@r0
      003C75 12 70 E2         [24] 3434 	lcall	__gptrget
      003C78 FA               [12] 3435 	mov	r2,a
      003C79 A3               [24] 3436 	inc	dptr
      003C7A 12 70 E2         [24] 3437 	lcall	__gptrget
      003C7D FB               [12] 3438 	mov	r3,a
      003C7E A3               [24] 3439 	inc	dptr
      003C7F 12 70 E2         [24] 3440 	lcall	__gptrget
      003C82 FC               [12] 3441 	mov	r4,a
      003C83 E5 08            [12] 3442 	mov	a,_bp
      003C85 24 15            [12] 3443 	add	a,#0x15
      003C87 F8               [12] 3444 	mov	r0,a
      003C88 E6               [12] 3445 	mov	a,@r0
      003C89 C0 E0            [24] 3446 	push	acc
      003C8B 08               [12] 3447 	inc	r0
      003C8C E6               [12] 3448 	mov	a,@r0
      003C8D C0 E0            [24] 3449 	push	acc
      003C8F 08               [12] 3450 	inc	r0
      003C90 E6               [12] 3451 	mov	a,@r0
      003C91 C0 E0            [24] 3452 	push	acc
      003C93 08               [12] 3453 	inc	r0
      003C94 E6               [12] 3454 	mov	a,@r0
      003C95 C0 E0            [24] 3455 	push	acc
      003C97 8A 82            [24] 3456 	mov	dpl,r2
      003C99 8B 83            [24] 3457 	mov	dph,r3
      003C9B 8C F0            [24] 3458 	mov	b,r4
      003C9D 12 26 B5         [24] 3459 	lcall	_stack_push
      003CA0 E5 81            [12] 3460 	mov	a,sp
      003CA2 24 FC            [12] 3461 	add	a,#0xfc
      003CA4 F5 81            [12] 3462 	mov	sp,a
                                   3463 ;	calc.c:186: break;
      003CA6 02 57 14         [24] 3464 	ljmp	00249$
                                   3465 ;	calc.c:187: case 'M':
      003CA9                       3466 00127$:
                                   3467 ;	calc.c:188: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003CA9 E5 08            [12] 3468 	mov	a,_bp
      003CAB 24 15            [12] 3469 	add	a,#0x15
      003CAD FF               [12] 3470 	mov	r7,a
      003CAE 7E 00            [12] 3471 	mov	r6,#0x00
      003CB0 7D 40            [12] 3472 	mov	r5,#0x40
      003CB2 E5 08            [12] 3473 	mov	a,_bp
      003CB4 24 12            [12] 3474 	add	a,#0x12
      003CB6 F8               [12] 3475 	mov	r0,a
      003CB7 E5 08            [12] 3476 	mov	a,_bp
      003CB9 24 07            [12] 3477 	add	a,#0x07
      003CBB F9               [12] 3478 	mov	r1,a
      003CBC 74 14            [12] 3479 	mov	a,#0x14
      003CBE 26               [12] 3480 	add	a,@r0
      003CBF F7               [12] 3481 	mov	@r1,a
      003CC0 74 40            [12] 3482 	mov	a,#0x40
      003CC2 08               [12] 3483 	inc	r0
      003CC3 36               [12] 3484 	addc	a,@r0
      003CC4 09               [12] 3485 	inc	r1
      003CC5 F7               [12] 3486 	mov	@r1,a
      003CC6 08               [12] 3487 	inc	r0
      003CC7 09               [12] 3488 	inc	r1
      003CC8 E6               [12] 3489 	mov	a,@r0
      003CC9 F7               [12] 3490 	mov	@r1,a
      003CCA E5 08            [12] 3491 	mov	a,_bp
      003CCC 24 07            [12] 3492 	add	a,#0x07
      003CCE F8               [12] 3493 	mov	r0,a
      003CCF 86 82            [24] 3494 	mov	dpl,@r0
      003CD1 08               [12] 3495 	inc	r0
      003CD2 86 83            [24] 3496 	mov	dph,@r0
      003CD4 08               [12] 3497 	inc	r0
      003CD5 86 F0            [24] 3498 	mov	b,@r0
      003CD7 12 70 E2         [24] 3499 	lcall	__gptrget
      003CDA FA               [12] 3500 	mov	r2,a
      003CDB A3               [24] 3501 	inc	dptr
      003CDC 12 70 E2         [24] 3502 	lcall	__gptrget
      003CDF FB               [12] 3503 	mov	r3,a
      003CE0 A3               [24] 3504 	inc	dptr
      003CE1 12 70 E2         [24] 3505 	lcall	__gptrget
      003CE4 FC               [12] 3506 	mov	r4,a
      003CE5 C0 07            [24] 3507 	push	ar7
      003CE7 C0 06            [24] 3508 	push	ar6
      003CE9 C0 05            [24] 3509 	push	ar5
      003CEB 8A 82            [24] 3510 	mov	dpl,r2
      003CED 8B 83            [24] 3511 	mov	dph,r3
      003CEF 8C F0            [24] 3512 	mov	b,r4
      003CF1 12 27 83         [24] 3513 	lcall	_stack_pop
      003CF4 AB 82            [24] 3514 	mov	r3,dpl
      003CF6 AC 83            [24] 3515 	mov	r4,dph
      003CF8 15 81            [12] 3516 	dec	sp
      003CFA 15 81            [12] 3517 	dec	sp
      003CFC 15 81            [12] 3518 	dec	sp
      003CFE EB               [12] 3519 	mov	a,r3
      003CFF 4C               [12] 3520 	orl	a,r4
      003D00 70 25            [24] 3521 	jnz	00131$
      003D02 7F E2            [12] 3522 	mov	r7,#___str_12
      003D04 7E 89            [12] 3523 	mov	r6,#(___str_12 >> 8)
      003D06 7D 80            [12] 3524 	mov	r5,#0x80
                                   3525 ;	calc.c:59: return;
      003D08                       3526 00402$:
                                   3527 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003D08 8F 82            [24] 3528 	mov	dpl,r7
      003D0A 8E 83            [24] 3529 	mov	dph,r6
      003D0C 8D F0            [24] 3530 	mov	b,r5
      003D0E 12 70 E2         [24] 3531 	lcall	__gptrget
      003D11 FC               [12] 3532 	mov	r4,a
      003D12 70 03            [24] 3533 	jnz	01302$
      003D14 02 57 14         [24] 3534 	ljmp	00249$
      003D17                       3535 01302$:
      003D17 7B 00            [12] 3536 	mov	r3,#0x00
      003D19 8C 82            [24] 3537 	mov	dpl,r4
      003D1B 8B 83            [24] 3538 	mov	dph,r3
      003D1D 12 2B 70         [24] 3539 	lcall	_putchar
      003D20 0F               [12] 3540 	inc	r7
                                   3541 ;	calc.c:188: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003D21 BF 00 E4         [24] 3542 	cjne	r7,#0x00,00402$
      003D24 0E               [12] 3543 	inc	r6
      003D25 80 E1            [24] 3544 	sjmp	00402$
      003D27                       3545 00131$:
                                   3546 ;	calc.c:190: if (!stack_push(ctx->ps, d0)) {
      003D27 E5 08            [12] 3547 	mov	a,_bp
      003D29 24 12            [12] 3548 	add	a,#0x12
      003D2B F8               [12] 3549 	mov	r0,a
      003D2C 74 11            [12] 3550 	mov	a,#0x11
      003D2E 26               [12] 3551 	add	a,@r0
      003D2F FA               [12] 3552 	mov	r2,a
      003D30 74 40            [12] 3553 	mov	a,#0x40
      003D32 08               [12] 3554 	inc	r0
      003D33 36               [12] 3555 	addc	a,@r0
      003D34 FB               [12] 3556 	mov	r3,a
      003D35 08               [12] 3557 	inc	r0
      003D36 86 04            [24] 3558 	mov	ar4,@r0
      003D38 8A 82            [24] 3559 	mov	dpl,r2
      003D3A 8B 83            [24] 3560 	mov	dph,r3
      003D3C 8C F0            [24] 3561 	mov	b,r4
      003D3E 12 70 E2         [24] 3562 	lcall	__gptrget
      003D41 FA               [12] 3563 	mov	r2,a
      003D42 A3               [24] 3564 	inc	dptr
      003D43 12 70 E2         [24] 3565 	lcall	__gptrget
      003D46 FB               [12] 3566 	mov	r3,a
      003D47 A3               [24] 3567 	inc	dptr
      003D48 12 70 E2         [24] 3568 	lcall	__gptrget
      003D4B FC               [12] 3569 	mov	r4,a
      003D4C E5 08            [12] 3570 	mov	a,_bp
      003D4E 24 15            [12] 3571 	add	a,#0x15
      003D50 F8               [12] 3572 	mov	r0,a
      003D51 E6               [12] 3573 	mov	a,@r0
      003D52 C0 E0            [24] 3574 	push	acc
      003D54 08               [12] 3575 	inc	r0
      003D55 E6               [12] 3576 	mov	a,@r0
      003D56 C0 E0            [24] 3577 	push	acc
      003D58 08               [12] 3578 	inc	r0
      003D59 E6               [12] 3579 	mov	a,@r0
      003D5A C0 E0            [24] 3580 	push	acc
      003D5C 08               [12] 3581 	inc	r0
      003D5D E6               [12] 3582 	mov	a,@r0
      003D5E C0 E0            [24] 3583 	push	acc
      003D60 8A 82            [24] 3584 	mov	dpl,r2
      003D62 8B 83            [24] 3585 	mov	dph,r3
      003D64 8C F0            [24] 3586 	mov	b,r4
      003D66 12 26 B5         [24] 3587 	lcall	_stack_push
      003D69 AB 82            [24] 3588 	mov	r3,dpl
      003D6B AC 83            [24] 3589 	mov	r4,dph
      003D6D E5 81            [12] 3590 	mov	a,sp
      003D6F 24 FC            [12] 3591 	add	a,#0xfc
      003D71 F5 81            [12] 3592 	mov	sp,a
      003D73 EB               [12] 3593 	mov	a,r3
      003D74 4C               [12] 3594 	orl	a,r4
      003D75 60 03            [24] 3595 	jz	01304$
      003D77 02 57 14         [24] 3596 	ljmp	00249$
      003D7A                       3597 01304$:
                                   3598 ;	calc.c:191: printstr("\r\nstack overflow\r\n");
      003D7A 7F 00            [12] 3599 	mov	r7,#___str_13
      003D7C 7E 8A            [12] 3600 	mov	r6,#(___str_13 >> 8)
      003D7E 7D 80            [12] 3601 	mov	r5,#0x80
                                   3602 ;	calc.c:59: return;
      003D80                       3603 00405$:
                                   3604 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003D80 8F 82            [24] 3605 	mov	dpl,r7
      003D82 8E 83            [24] 3606 	mov	dph,r6
      003D84 8D F0            [24] 3607 	mov	b,r5
      003D86 12 70 E2         [24] 3608 	lcall	__gptrget
      003D89 FC               [12] 3609 	mov	r4,a
      003D8A 60 10            [24] 3610 	jz	00289$
      003D8C 7B 00            [12] 3611 	mov	r3,#0x00
      003D8E 8C 82            [24] 3612 	mov	dpl,r4
      003D90 8B 83            [24] 3613 	mov	dph,r3
      003D92 12 2B 70         [24] 3614 	lcall	_putchar
      003D95 0F               [12] 3615 	inc	r7
                                   3616 ;	calc.c:191: printstr("\r\nstack overflow\r\n");
      003D96 BF 00 E7         [24] 3617 	cjne	r7,#0x00,00405$
      003D99 0E               [12] 3618 	inc	r6
      003D9A 80 E4            [24] 3619 	sjmp	00405$
      003D9C                       3620 00289$:
                                   3621 ;	calc.c:192: (void)stack_push(ctx->ss, d0);
      003D9C E5 08            [12] 3622 	mov	a,_bp
      003D9E 24 07            [12] 3623 	add	a,#0x07
      003DA0 F8               [12] 3624 	mov	r0,a
      003DA1 86 82            [24] 3625 	mov	dpl,@r0
      003DA3 08               [12] 3626 	inc	r0
      003DA4 86 83            [24] 3627 	mov	dph,@r0
      003DA6 08               [12] 3628 	inc	r0
      003DA7 86 F0            [24] 3629 	mov	b,@r0
      003DA9 12 70 E2         [24] 3630 	lcall	__gptrget
      003DAC FA               [12] 3631 	mov	r2,a
      003DAD A3               [24] 3632 	inc	dptr
      003DAE 12 70 E2         [24] 3633 	lcall	__gptrget
      003DB1 FB               [12] 3634 	mov	r3,a
      003DB2 A3               [24] 3635 	inc	dptr
      003DB3 12 70 E2         [24] 3636 	lcall	__gptrget
      003DB6 FC               [12] 3637 	mov	r4,a
      003DB7 E5 08            [12] 3638 	mov	a,_bp
      003DB9 24 15            [12] 3639 	add	a,#0x15
      003DBB F8               [12] 3640 	mov	r0,a
      003DBC E6               [12] 3641 	mov	a,@r0
      003DBD C0 E0            [24] 3642 	push	acc
      003DBF 08               [12] 3643 	inc	r0
      003DC0 E6               [12] 3644 	mov	a,@r0
      003DC1 C0 E0            [24] 3645 	push	acc
      003DC3 08               [12] 3646 	inc	r0
      003DC4 E6               [12] 3647 	mov	a,@r0
      003DC5 C0 E0            [24] 3648 	push	acc
      003DC7 08               [12] 3649 	inc	r0
      003DC8 E6               [12] 3650 	mov	a,@r0
      003DC9 C0 E0            [24] 3651 	push	acc
      003DCB 8A 82            [24] 3652 	mov	dpl,r2
      003DCD 8B 83            [24] 3653 	mov	dph,r3
      003DCF 8C F0            [24] 3654 	mov	b,r4
      003DD1 12 26 B5         [24] 3655 	lcall	_stack_push
      003DD4 E5 81            [12] 3656 	mov	a,sp
      003DD6 24 FC            [12] 3657 	add	a,#0xfc
      003DD8 F5 81            [12] 3658 	mov	sp,a
                                   3659 ;	calc.c:195: break;
      003DDA 02 57 14         [24] 3660 	ljmp	00249$
                                   3661 ;	calc.c:196: case 'u':
      003DDD                       3662 00133$:
                                   3663 ;	calc.c:197: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003DDD E5 08            [12] 3664 	mov	a,_bp
      003DDF 24 15            [12] 3665 	add	a,#0x15
      003DE1 FF               [12] 3666 	mov	r7,a
      003DE2 7E 00            [12] 3667 	mov	r6,#0x00
      003DE4 7D 40            [12] 3668 	mov	r5,#0x40
      003DE6 E5 08            [12] 3669 	mov	a,_bp
      003DE8 24 12            [12] 3670 	add	a,#0x12
      003DEA F8               [12] 3671 	mov	r0,a
      003DEB 74 11            [12] 3672 	mov	a,#0x11
      003DED 26               [12] 3673 	add	a,@r0
      003DEE FA               [12] 3674 	mov	r2,a
      003DEF ED               [12] 3675 	mov	a,r5
      003DF0 08               [12] 3676 	inc	r0
      003DF1 36               [12] 3677 	addc	a,@r0
      003DF2 FB               [12] 3678 	mov	r3,a
      003DF3 08               [12] 3679 	inc	r0
      003DF4 86 04            [24] 3680 	mov	ar4,@r0
      003DF6 8A 82            [24] 3681 	mov	dpl,r2
      003DF8 8B 83            [24] 3682 	mov	dph,r3
      003DFA 8C F0            [24] 3683 	mov	b,r4
      003DFC 12 70 E2         [24] 3684 	lcall	__gptrget
      003DFF FA               [12] 3685 	mov	r2,a
      003E00 A3               [24] 3686 	inc	dptr
      003E01 12 70 E2         [24] 3687 	lcall	__gptrget
      003E04 FB               [12] 3688 	mov	r3,a
      003E05 A3               [24] 3689 	inc	dptr
      003E06 12 70 E2         [24] 3690 	lcall	__gptrget
      003E09 FC               [12] 3691 	mov	r4,a
      003E0A C0 07            [24] 3692 	push	ar7
      003E0C C0 06            [24] 3693 	push	ar6
      003E0E C0 05            [24] 3694 	push	ar5
      003E10 8A 82            [24] 3695 	mov	dpl,r2
      003E12 8B 83            [24] 3696 	mov	dph,r3
      003E14 8C F0            [24] 3697 	mov	b,r4
      003E16 12 28 5E         [24] 3698 	lcall	_stack_peek
      003E19 AB 82            [24] 3699 	mov	r3,dpl
      003E1B AC 83            [24] 3700 	mov	r4,dph
      003E1D 15 81            [12] 3701 	dec	sp
      003E1F 15 81            [12] 3702 	dec	sp
      003E21 15 81            [12] 3703 	dec	sp
      003E23 EB               [12] 3704 	mov	a,r3
      003E24 4C               [12] 3705 	orl	a,r4
      003E25 70 25            [24] 3706 	jnz	00137$
      003E27 7F B1            [12] 3707 	mov	r7,#___str_10
      003E29 7E 89            [12] 3708 	mov	r6,#(___str_10 >> 8)
      003E2B 7D 80            [12] 3709 	mov	r5,#0x80
                                   3710 ;	calc.c:59: return;
      003E2D                       3711 00408$:
                                   3712 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003E2D 8F 82            [24] 3713 	mov	dpl,r7
      003E2F 8E 83            [24] 3714 	mov	dph,r6
      003E31 8D F0            [24] 3715 	mov	b,r5
      003E33 12 70 E2         [24] 3716 	lcall	__gptrget
      003E36 FC               [12] 3717 	mov	r4,a
      003E37 70 03            [24] 3718 	jnz	01308$
      003E39 02 57 14         [24] 3719 	ljmp	00249$
      003E3C                       3720 01308$:
      003E3C 7B 00            [12] 3721 	mov	r3,#0x00
      003E3E 8C 82            [24] 3722 	mov	dpl,r4
      003E40 8B 83            [24] 3723 	mov	dph,r3
      003E42 12 2B 70         [24] 3724 	lcall	_putchar
      003E45 0F               [12] 3725 	inc	r7
                                   3726 ;	calc.c:197: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003E46 BF 00 E4         [24] 3727 	cjne	r7,#0x00,00408$
      003E49 0E               [12] 3728 	inc	r6
      003E4A 80 E1            [24] 3729 	sjmp	00408$
      003E4C                       3730 00137$:
                                   3731 ;	calc.c:198: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      003E4C E5 08            [12] 3732 	mov	a,_bp
      003E4E 24 12            [12] 3733 	add	a,#0x12
      003E50 F8               [12] 3734 	mov	r0,a
      003E51 74 14            [12] 3735 	mov	a,#0x14
      003E53 26               [12] 3736 	add	a,@r0
      003E54 FA               [12] 3737 	mov	r2,a
      003E55 74 40            [12] 3738 	mov	a,#0x40
      003E57 08               [12] 3739 	inc	r0
      003E58 36               [12] 3740 	addc	a,@r0
      003E59 FB               [12] 3741 	mov	r3,a
      003E5A 08               [12] 3742 	inc	r0
      003E5B 86 04            [24] 3743 	mov	ar4,@r0
      003E5D 8A 82            [24] 3744 	mov	dpl,r2
      003E5F 8B 83            [24] 3745 	mov	dph,r3
      003E61 8C F0            [24] 3746 	mov	b,r4
      003E63 12 70 E2         [24] 3747 	lcall	__gptrget
      003E66 FA               [12] 3748 	mov	r2,a
      003E67 A3               [24] 3749 	inc	dptr
      003E68 12 70 E2         [24] 3750 	lcall	__gptrget
      003E6B FB               [12] 3751 	mov	r3,a
      003E6C A3               [24] 3752 	inc	dptr
      003E6D 12 70 E2         [24] 3753 	lcall	__gptrget
      003E70 FC               [12] 3754 	mov	r4,a
      003E71 E5 08            [12] 3755 	mov	a,_bp
      003E73 24 15            [12] 3756 	add	a,#0x15
      003E75 F8               [12] 3757 	mov	r0,a
      003E76 E6               [12] 3758 	mov	a,@r0
      003E77 C0 E0            [24] 3759 	push	acc
      003E79 08               [12] 3760 	inc	r0
      003E7A E6               [12] 3761 	mov	a,@r0
      003E7B C0 E0            [24] 3762 	push	acc
      003E7D 08               [12] 3763 	inc	r0
      003E7E E6               [12] 3764 	mov	a,@r0
      003E7F C0 E0            [24] 3765 	push	acc
      003E81 08               [12] 3766 	inc	r0
      003E82 E6               [12] 3767 	mov	a,@r0
      003E83 C0 E0            [24] 3768 	push	acc
      003E85 8A 82            [24] 3769 	mov	dpl,r2
      003E87 8B 83            [24] 3770 	mov	dph,r3
      003E89 8C F0            [24] 3771 	mov	b,r4
      003E8B 12 26 B5         [24] 3772 	lcall	_stack_push
      003E8E AB 82            [24] 3773 	mov	r3,dpl
      003E90 AC 83            [24] 3774 	mov	r4,dph
      003E92 E5 81            [12] 3775 	mov	a,sp
      003E94 24 FC            [12] 3776 	add	a,#0xfc
      003E96 F5 81            [12] 3777 	mov	sp,a
      003E98 EB               [12] 3778 	mov	a,r3
      003E99 4C               [12] 3779 	orl	a,r4
      003E9A 60 03            [24] 3780 	jz	01310$
      003E9C 02 57 14         [24] 3781 	ljmp	00249$
      003E9F                       3782 01310$:
      003E9F 7F C5            [12] 3783 	mov	r7,#___str_11
      003EA1 7E 89            [12] 3784 	mov	r6,#(___str_11 >> 8)
      003EA3 7D 80            [12] 3785 	mov	r5,#0x80
                                   3786 ;	calc.c:59: return;
      003EA5                       3787 00411$:
                                   3788 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003EA5 8F 82            [24] 3789 	mov	dpl,r7
      003EA7 8E 83            [24] 3790 	mov	dph,r6
      003EA9 8D F0            [24] 3791 	mov	b,r5
      003EAB 12 70 E2         [24] 3792 	lcall	__gptrget
      003EAE FC               [12] 3793 	mov	r4,a
      003EAF 70 03            [24] 3794 	jnz	01311$
      003EB1 02 57 14         [24] 3795 	ljmp	00249$
      003EB4                       3796 01311$:
      003EB4 7B 00            [12] 3797 	mov	r3,#0x00
      003EB6 8C 82            [24] 3798 	mov	dpl,r4
      003EB8 8B 83            [24] 3799 	mov	dph,r3
      003EBA 12 2B 70         [24] 3800 	lcall	_putchar
      003EBD 0F               [12] 3801 	inc	r7
                                   3802 ;	calc.c:200: case 'U':
      003EBE BF 00 E4         [24] 3803 	cjne	r7,#0x00,00411$
      003EC1 0E               [12] 3804 	inc	r6
      003EC2 80 E1            [24] 3805 	sjmp	00411$
      003EC4                       3806 00139$:
                                   3807 ;	calc.c:201: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003EC4 E5 08            [12] 3808 	mov	a,_bp
      003EC6 24 15            [12] 3809 	add	a,#0x15
      003EC8 FF               [12] 3810 	mov	r7,a
      003EC9 7E 00            [12] 3811 	mov	r6,#0x00
      003ECB 7D 40            [12] 3812 	mov	r5,#0x40
      003ECD E5 08            [12] 3813 	mov	a,_bp
      003ECF 24 12            [12] 3814 	add	a,#0x12
      003ED1 F8               [12] 3815 	mov	r0,a
      003ED2 74 14            [12] 3816 	mov	a,#0x14
      003ED4 26               [12] 3817 	add	a,@r0
      003ED5 FA               [12] 3818 	mov	r2,a
      003ED6 ED               [12] 3819 	mov	a,r5
      003ED7 08               [12] 3820 	inc	r0
      003ED8 36               [12] 3821 	addc	a,@r0
      003ED9 FB               [12] 3822 	mov	r3,a
      003EDA 08               [12] 3823 	inc	r0
      003EDB 86 04            [24] 3824 	mov	ar4,@r0
      003EDD 8A 82            [24] 3825 	mov	dpl,r2
      003EDF 8B 83            [24] 3826 	mov	dph,r3
      003EE1 8C F0            [24] 3827 	mov	b,r4
      003EE3 12 70 E2         [24] 3828 	lcall	__gptrget
      003EE6 FA               [12] 3829 	mov	r2,a
      003EE7 A3               [24] 3830 	inc	dptr
      003EE8 12 70 E2         [24] 3831 	lcall	__gptrget
      003EEB FB               [12] 3832 	mov	r3,a
      003EEC A3               [24] 3833 	inc	dptr
      003EED 12 70 E2         [24] 3834 	lcall	__gptrget
      003EF0 FC               [12] 3835 	mov	r4,a
      003EF1 C0 07            [24] 3836 	push	ar7
      003EF3 C0 06            [24] 3837 	push	ar6
      003EF5 C0 05            [24] 3838 	push	ar5
      003EF7 8A 82            [24] 3839 	mov	dpl,r2
      003EF9 8B 83            [24] 3840 	mov	dph,r3
      003EFB 8C F0            [24] 3841 	mov	b,r4
      003EFD 12 28 5E         [24] 3842 	lcall	_stack_peek
      003F00 AB 82            [24] 3843 	mov	r3,dpl
      003F02 AC 83            [24] 3844 	mov	r4,dph
      003F04 15 81            [12] 3845 	dec	sp
      003F06 15 81            [12] 3846 	dec	sp
      003F08 15 81            [12] 3847 	dec	sp
      003F0A EB               [12] 3848 	mov	a,r3
      003F0B 4C               [12] 3849 	orl	a,r4
      003F0C 70 25            [24] 3850 	jnz	00143$
      003F0E 7F E2            [12] 3851 	mov	r7,#___str_12
      003F10 7E 89            [12] 3852 	mov	r6,#(___str_12 >> 8)
      003F12 7D 80            [12] 3853 	mov	r5,#0x80
                                   3854 ;	calc.c:59: return;
      003F14                       3855 00414$:
                                   3856 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003F14 8F 82            [24] 3857 	mov	dpl,r7
      003F16 8E 83            [24] 3858 	mov	dph,r6
      003F18 8D F0            [24] 3859 	mov	b,r5
      003F1A 12 70 E2         [24] 3860 	lcall	__gptrget
      003F1D FC               [12] 3861 	mov	r4,a
      003F1E 70 03            [24] 3862 	jnz	01314$
      003F20 02 57 14         [24] 3863 	ljmp	00249$
      003F23                       3864 01314$:
      003F23 7B 00            [12] 3865 	mov	r3,#0x00
      003F25 8C 82            [24] 3866 	mov	dpl,r4
      003F27 8B 83            [24] 3867 	mov	dph,r3
      003F29 12 2B 70         [24] 3868 	lcall	_putchar
      003F2C 0F               [12] 3869 	inc	r7
                                   3870 ;	calc.c:201: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003F2D BF 00 E4         [24] 3871 	cjne	r7,#0x00,00414$
      003F30 0E               [12] 3872 	inc	r6
      003F31 80 E1            [24] 3873 	sjmp	00414$
      003F33                       3874 00143$:
                                   3875 ;	calc.c:202: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      003F33 E5 08            [12] 3876 	mov	a,_bp
      003F35 24 12            [12] 3877 	add	a,#0x12
      003F37 F8               [12] 3878 	mov	r0,a
      003F38 74 11            [12] 3879 	mov	a,#0x11
      003F3A 26               [12] 3880 	add	a,@r0
      003F3B FA               [12] 3881 	mov	r2,a
      003F3C 74 40            [12] 3882 	mov	a,#0x40
      003F3E 08               [12] 3883 	inc	r0
      003F3F 36               [12] 3884 	addc	a,@r0
      003F40 FB               [12] 3885 	mov	r3,a
      003F41 08               [12] 3886 	inc	r0
      003F42 86 04            [24] 3887 	mov	ar4,@r0
      003F44 8A 82            [24] 3888 	mov	dpl,r2
      003F46 8B 83            [24] 3889 	mov	dph,r3
      003F48 8C F0            [24] 3890 	mov	b,r4
      003F4A 12 70 E2         [24] 3891 	lcall	__gptrget
      003F4D FA               [12] 3892 	mov	r2,a
      003F4E A3               [24] 3893 	inc	dptr
      003F4F 12 70 E2         [24] 3894 	lcall	__gptrget
      003F52 FB               [12] 3895 	mov	r3,a
      003F53 A3               [24] 3896 	inc	dptr
      003F54 12 70 E2         [24] 3897 	lcall	__gptrget
      003F57 FC               [12] 3898 	mov	r4,a
      003F58 E5 08            [12] 3899 	mov	a,_bp
      003F5A 24 15            [12] 3900 	add	a,#0x15
      003F5C F8               [12] 3901 	mov	r0,a
      003F5D E6               [12] 3902 	mov	a,@r0
      003F5E C0 E0            [24] 3903 	push	acc
      003F60 08               [12] 3904 	inc	r0
      003F61 E6               [12] 3905 	mov	a,@r0
      003F62 C0 E0            [24] 3906 	push	acc
      003F64 08               [12] 3907 	inc	r0
      003F65 E6               [12] 3908 	mov	a,@r0
      003F66 C0 E0            [24] 3909 	push	acc
      003F68 08               [12] 3910 	inc	r0
      003F69 E6               [12] 3911 	mov	a,@r0
      003F6A C0 E0            [24] 3912 	push	acc
      003F6C 8A 82            [24] 3913 	mov	dpl,r2
      003F6E 8B 83            [24] 3914 	mov	dph,r3
      003F70 8C F0            [24] 3915 	mov	b,r4
      003F72 12 26 B5         [24] 3916 	lcall	_stack_push
      003F75 AB 82            [24] 3917 	mov	r3,dpl
      003F77 AC 83            [24] 3918 	mov	r4,dph
      003F79 E5 81            [12] 3919 	mov	a,sp
      003F7B 24 FC            [12] 3920 	add	a,#0xfc
      003F7D F5 81            [12] 3921 	mov	sp,a
      003F7F EB               [12] 3922 	mov	a,r3
      003F80 4C               [12] 3923 	orl	a,r4
      003F81 60 03            [24] 3924 	jz	01316$
      003F83 02 57 14         [24] 3925 	ljmp	00249$
      003F86                       3926 01316$:
      003F86 7F 00            [12] 3927 	mov	r7,#___str_13
      003F88 7E 8A            [12] 3928 	mov	r6,#(___str_13 >> 8)
      003F8A 7D 80            [12] 3929 	mov	r5,#0x80
                                   3930 ;	calc.c:59: return;
      003F8C                       3931 00417$:
                                   3932 ;	calc.c:57: for (; *s; s++) putchar(*s);
      003F8C 8F 82            [24] 3933 	mov	dpl,r7
      003F8E 8E 83            [24] 3934 	mov	dph,r6
      003F90 8D F0            [24] 3935 	mov	b,r5
      003F92 12 70 E2         [24] 3936 	lcall	__gptrget
      003F95 FC               [12] 3937 	mov	r4,a
      003F96 70 03            [24] 3938 	jnz	01317$
      003F98 02 57 14         [24] 3939 	ljmp	00249$
      003F9B                       3940 01317$:
      003F9B 7B 00            [12] 3941 	mov	r3,#0x00
      003F9D 8C 82            [24] 3942 	mov	dpl,r4
      003F9F 8B 83            [24] 3943 	mov	dph,r3
      003FA1 12 2B 70         [24] 3944 	lcall	_putchar
      003FA4 0F               [12] 3945 	inc	r7
                                   3946 ;	calc.c:204: case 'T':
      003FA5 BF 00 E4         [24] 3947 	cjne	r7,#0x00,00417$
      003FA8 0E               [12] 3948 	inc	r6
      003FA9 80 E1            [24] 3949 	sjmp	00417$
      003FAB                       3950 00145$:
                                   3951 ;	calc.c:205: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003FAB E5 08            [12] 3952 	mov	a,_bp
      003FAD 24 15            [12] 3953 	add	a,#0x15
      003FAF FF               [12] 3954 	mov	r7,a
      003FB0 7E 00            [12] 3955 	mov	r6,#0x00
      003FB2 7D 40            [12] 3956 	mov	r5,#0x40
      003FB4 E5 08            [12] 3957 	mov	a,_bp
      003FB6 24 12            [12] 3958 	add	a,#0x12
      003FB8 F8               [12] 3959 	mov	r0,a
      003FB9 E5 08            [12] 3960 	mov	a,_bp
      003FBB 24 07            [12] 3961 	add	a,#0x07
      003FBD F9               [12] 3962 	mov	r1,a
      003FBE 74 11            [12] 3963 	mov	a,#0x11
      003FC0 26               [12] 3964 	add	a,@r0
      003FC1 F7               [12] 3965 	mov	@r1,a
      003FC2 74 40            [12] 3966 	mov	a,#0x40
      003FC4 08               [12] 3967 	inc	r0
      003FC5 36               [12] 3968 	addc	a,@r0
      003FC6 09               [12] 3969 	inc	r1
      003FC7 F7               [12] 3970 	mov	@r1,a
      003FC8 08               [12] 3971 	inc	r0
      003FC9 09               [12] 3972 	inc	r1
      003FCA E6               [12] 3973 	mov	a,@r0
      003FCB F7               [12] 3974 	mov	@r1,a
      003FCC E5 08            [12] 3975 	mov	a,_bp
      003FCE 24 07            [12] 3976 	add	a,#0x07
      003FD0 F8               [12] 3977 	mov	r0,a
      003FD1 86 82            [24] 3978 	mov	dpl,@r0
      003FD3 08               [12] 3979 	inc	r0
      003FD4 86 83            [24] 3980 	mov	dph,@r0
      003FD6 08               [12] 3981 	inc	r0
      003FD7 86 F0            [24] 3982 	mov	b,@r0
      003FD9 12 70 E2         [24] 3983 	lcall	__gptrget
      003FDC FA               [12] 3984 	mov	r2,a
      003FDD A3               [24] 3985 	inc	dptr
      003FDE 12 70 E2         [24] 3986 	lcall	__gptrget
      003FE1 FB               [12] 3987 	mov	r3,a
      003FE2 A3               [24] 3988 	inc	dptr
      003FE3 12 70 E2         [24] 3989 	lcall	__gptrget
      003FE6 FC               [12] 3990 	mov	r4,a
      003FE7 C0 07            [24] 3991 	push	ar7
      003FE9 C0 06            [24] 3992 	push	ar6
      003FEB C0 05            [24] 3993 	push	ar5
      003FED 8A 82            [24] 3994 	mov	dpl,r2
      003FEF 8B 83            [24] 3995 	mov	dph,r3
      003FF1 8C F0            [24] 3996 	mov	b,r4
      003FF3 12 27 83         [24] 3997 	lcall	_stack_pop
      003FF6 AB 82            [24] 3998 	mov	r3,dpl
      003FF8 AC 83            [24] 3999 	mov	r4,dph
      003FFA 15 81            [12] 4000 	dec	sp
      003FFC 15 81            [12] 4001 	dec	sp
      003FFE 15 81            [12] 4002 	dec	sp
      004000 EB               [12] 4003 	mov	a,r3
      004001 4C               [12] 4004 	orl	a,r4
      004002 70 25            [24] 4005 	jnz	00150$
      004004 7F B1            [12] 4006 	mov	r7,#___str_10
      004006 7E 89            [12] 4007 	mov	r6,#(___str_10 >> 8)
      004008 7D 80            [12] 4008 	mov	r5,#0x80
                                   4009 ;	calc.c:59: return;
      00400A                       4010 00420$:
                                   4011 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00400A 8F 82            [24] 4012 	mov	dpl,r7
      00400C 8E 83            [24] 4013 	mov	dph,r6
      00400E 8D F0            [24] 4014 	mov	b,r5
      004010 12 70 E2         [24] 4015 	lcall	__gptrget
      004013 FC               [12] 4016 	mov	r4,a
      004014 70 03            [24] 4017 	jnz	01320$
      004016 02 57 14         [24] 4018 	ljmp	00249$
      004019                       4019 01320$:
      004019 7B 00            [12] 4020 	mov	r3,#0x00
      00401B 8C 82            [24] 4021 	mov	dpl,r4
      00401D 8B 83            [24] 4022 	mov	dph,r3
      00401F 12 2B 70         [24] 4023 	lcall	_putchar
      004022 0F               [12] 4024 	inc	r7
                                   4025 ;	calc.c:205: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004023 BF 00 E4         [24] 4026 	cjne	r7,#0x00,00420$
      004026 0E               [12] 4027 	inc	r6
      004027 80 E1            [24] 4028 	sjmp	00420$
      004029                       4029 00150$:
                                   4030 ;	calc.c:207: if (!stack_pop(ctx->ss, &d1)) {
      004029 E5 08            [12] 4031 	mov	a,_bp
      00402B 24 19            [12] 4032 	add	a,#0x19
      00402D FF               [12] 4033 	mov	r7,a
      00402E 7E 00            [12] 4034 	mov	r6,#0x00
      004030 7D 40            [12] 4035 	mov	r5,#0x40
      004032 E5 08            [12] 4036 	mov	a,_bp
      004034 24 12            [12] 4037 	add	a,#0x12
      004036 F8               [12] 4038 	mov	r0,a
      004037 E5 08            [12] 4039 	mov	a,_bp
      004039 24 04            [12] 4040 	add	a,#0x04
      00403B F9               [12] 4041 	mov	r1,a
      00403C 74 14            [12] 4042 	mov	a,#0x14
      00403E 26               [12] 4043 	add	a,@r0
      00403F F7               [12] 4044 	mov	@r1,a
      004040 74 40            [12] 4045 	mov	a,#0x40
      004042 08               [12] 4046 	inc	r0
      004043 36               [12] 4047 	addc	a,@r0
      004044 09               [12] 4048 	inc	r1
      004045 F7               [12] 4049 	mov	@r1,a
      004046 08               [12] 4050 	inc	r0
      004047 09               [12] 4051 	inc	r1
      004048 E6               [12] 4052 	mov	a,@r0
      004049 F7               [12] 4053 	mov	@r1,a
      00404A E5 08            [12] 4054 	mov	a,_bp
      00404C 24 04            [12] 4055 	add	a,#0x04
      00404E F8               [12] 4056 	mov	r0,a
      00404F 86 82            [24] 4057 	mov	dpl,@r0
      004051 08               [12] 4058 	inc	r0
      004052 86 83            [24] 4059 	mov	dph,@r0
      004054 08               [12] 4060 	inc	r0
      004055 86 F0            [24] 4061 	mov	b,@r0
      004057 12 70 E2         [24] 4062 	lcall	__gptrget
      00405A FA               [12] 4063 	mov	r2,a
      00405B A3               [24] 4064 	inc	dptr
      00405C 12 70 E2         [24] 4065 	lcall	__gptrget
      00405F FB               [12] 4066 	mov	r3,a
      004060 A3               [24] 4067 	inc	dptr
      004061 12 70 E2         [24] 4068 	lcall	__gptrget
      004064 FC               [12] 4069 	mov	r4,a
      004065 C0 07            [24] 4070 	push	ar7
      004067 C0 06            [24] 4071 	push	ar6
      004069 C0 05            [24] 4072 	push	ar5
      00406B 8A 82            [24] 4073 	mov	dpl,r2
      00406D 8B 83            [24] 4074 	mov	dph,r3
      00406F 8C F0            [24] 4075 	mov	b,r4
      004071 12 27 83         [24] 4076 	lcall	_stack_pop
      004074 AB 82            [24] 4077 	mov	r3,dpl
      004076 AC 83            [24] 4078 	mov	r4,dph
      004078 15 81            [12] 4079 	dec	sp
      00407A 15 81            [12] 4080 	dec	sp
      00407C 15 81            [12] 4081 	dec	sp
      00407E EB               [12] 4082 	mov	a,r3
      00407F 4C               [12] 4083 	orl	a,r4
      004080 70 63            [24] 4084 	jnz	00147$
                                   4085 ;	calc.c:208: printstr("\r\nsecondary stack underflow\r\n");
      004082 7F E2            [12] 4086 	mov	r7,#___str_12
      004084 7E 89            [12] 4087 	mov	r6,#(___str_12 >> 8)
      004086 7D 80            [12] 4088 	mov	r5,#0x80
                                   4089 ;	calc.c:59: return;
      004088                       4090 00423$:
                                   4091 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004088 8F 82            [24] 4092 	mov	dpl,r7
      00408A 8E 83            [24] 4093 	mov	dph,r6
      00408C 8D F0            [24] 4094 	mov	b,r5
      00408E 12 70 E2         [24] 4095 	lcall	__gptrget
      004091 FC               [12] 4096 	mov	r4,a
      004092 60 10            [24] 4097 	jz	00301$
      004094 7B 00            [12] 4098 	mov	r3,#0x00
      004096 8C 82            [24] 4099 	mov	dpl,r4
      004098 8B 83            [24] 4100 	mov	dph,r3
      00409A 12 2B 70         [24] 4101 	lcall	_putchar
      00409D 0F               [12] 4102 	inc	r7
                                   4103 ;	calc.c:208: printstr("\r\nsecondary stack underflow\r\n");
      00409E BF 00 E7         [24] 4104 	cjne	r7,#0x00,00423$
      0040A1 0E               [12] 4105 	inc	r6
      0040A2 80 E4            [24] 4106 	sjmp	00423$
      0040A4                       4107 00301$:
                                   4108 ;	calc.c:209: (void)stack_push(ctx->ps, d0);
      0040A4 E5 08            [12] 4109 	mov	a,_bp
      0040A6 24 07            [12] 4110 	add	a,#0x07
      0040A8 F8               [12] 4111 	mov	r0,a
      0040A9 86 82            [24] 4112 	mov	dpl,@r0
      0040AB 08               [12] 4113 	inc	r0
      0040AC 86 83            [24] 4114 	mov	dph,@r0
      0040AE 08               [12] 4115 	inc	r0
      0040AF 86 F0            [24] 4116 	mov	b,@r0
      0040B1 12 70 E2         [24] 4117 	lcall	__gptrget
      0040B4 FA               [12] 4118 	mov	r2,a
      0040B5 A3               [24] 4119 	inc	dptr
      0040B6 12 70 E2         [24] 4120 	lcall	__gptrget
      0040B9 FB               [12] 4121 	mov	r3,a
      0040BA A3               [24] 4122 	inc	dptr
      0040BB 12 70 E2         [24] 4123 	lcall	__gptrget
      0040BE FC               [12] 4124 	mov	r4,a
      0040BF E5 08            [12] 4125 	mov	a,_bp
      0040C1 24 15            [12] 4126 	add	a,#0x15
      0040C3 F8               [12] 4127 	mov	r0,a
      0040C4 E6               [12] 4128 	mov	a,@r0
      0040C5 C0 E0            [24] 4129 	push	acc
      0040C7 08               [12] 4130 	inc	r0
      0040C8 E6               [12] 4131 	mov	a,@r0
      0040C9 C0 E0            [24] 4132 	push	acc
      0040CB 08               [12] 4133 	inc	r0
      0040CC E6               [12] 4134 	mov	a,@r0
      0040CD C0 E0            [24] 4135 	push	acc
      0040CF 08               [12] 4136 	inc	r0
      0040D0 E6               [12] 4137 	mov	a,@r0
      0040D1 C0 E0            [24] 4138 	push	acc
      0040D3 8A 82            [24] 4139 	mov	dpl,r2
      0040D5 8B 83            [24] 4140 	mov	dph,r3
      0040D7 8C F0            [24] 4141 	mov	b,r4
      0040D9 12 26 B5         [24] 4142 	lcall	_stack_push
      0040DC E5 81            [12] 4143 	mov	a,sp
      0040DE 24 FC            [12] 4144 	add	a,#0xfc
      0040E0 F5 81            [12] 4145 	mov	sp,a
      0040E2 02 57 14         [24] 4146 	ljmp	00249$
      0040E5                       4147 00147$:
                                   4148 ;	calc.c:211: (void)stack_push(ctx->ps, d1);
      0040E5 E5 08            [12] 4149 	mov	a,_bp
      0040E7 24 07            [12] 4150 	add	a,#0x07
      0040E9 F8               [12] 4151 	mov	r0,a
      0040EA 86 82            [24] 4152 	mov	dpl,@r0
      0040EC 08               [12] 4153 	inc	r0
      0040ED 86 83            [24] 4154 	mov	dph,@r0
      0040EF 08               [12] 4155 	inc	r0
      0040F0 86 F0            [24] 4156 	mov	b,@r0
      0040F2 12 70 E2         [24] 4157 	lcall	__gptrget
      0040F5 FA               [12] 4158 	mov	r2,a
      0040F6 A3               [24] 4159 	inc	dptr
      0040F7 12 70 E2         [24] 4160 	lcall	__gptrget
      0040FA FB               [12] 4161 	mov	r3,a
      0040FB A3               [24] 4162 	inc	dptr
      0040FC 12 70 E2         [24] 4163 	lcall	__gptrget
      0040FF FC               [12] 4164 	mov	r4,a
      004100 E5 08            [12] 4165 	mov	a,_bp
      004102 24 19            [12] 4166 	add	a,#0x19
      004104 F8               [12] 4167 	mov	r0,a
      004105 E6               [12] 4168 	mov	a,@r0
      004106 C0 E0            [24] 4169 	push	acc
      004108 08               [12] 4170 	inc	r0
      004109 E6               [12] 4171 	mov	a,@r0
      00410A C0 E0            [24] 4172 	push	acc
      00410C 08               [12] 4173 	inc	r0
      00410D E6               [12] 4174 	mov	a,@r0
      00410E C0 E0            [24] 4175 	push	acc
      004110 08               [12] 4176 	inc	r0
      004111 E6               [12] 4177 	mov	a,@r0
      004112 C0 E0            [24] 4178 	push	acc
      004114 8A 82            [24] 4179 	mov	dpl,r2
      004116 8B 83            [24] 4180 	mov	dph,r3
      004118 8C F0            [24] 4181 	mov	b,r4
      00411A 12 26 B5         [24] 4182 	lcall	_stack_push
      00411D E5 81            [12] 4183 	mov	a,sp
      00411F 24 FC            [12] 4184 	add	a,#0xfc
      004121 F5 81            [12] 4185 	mov	sp,a
                                   4186 ;	calc.c:212: (void)stack_push(ctx->ss, d0);
      004123 E5 08            [12] 4187 	mov	a,_bp
      004125 24 04            [12] 4188 	add	a,#0x04
      004127 F8               [12] 4189 	mov	r0,a
      004128 86 82            [24] 4190 	mov	dpl,@r0
      00412A 08               [12] 4191 	inc	r0
      00412B 86 83            [24] 4192 	mov	dph,@r0
      00412D 08               [12] 4193 	inc	r0
      00412E 86 F0            [24] 4194 	mov	b,@r0
      004130 12 70 E2         [24] 4195 	lcall	__gptrget
      004133 FA               [12] 4196 	mov	r2,a
      004134 A3               [24] 4197 	inc	dptr
      004135 12 70 E2         [24] 4198 	lcall	__gptrget
      004138 FB               [12] 4199 	mov	r3,a
      004139 A3               [24] 4200 	inc	dptr
      00413A 12 70 E2         [24] 4201 	lcall	__gptrget
      00413D FC               [12] 4202 	mov	r4,a
      00413E E5 08            [12] 4203 	mov	a,_bp
      004140 24 15            [12] 4204 	add	a,#0x15
      004142 F8               [12] 4205 	mov	r0,a
      004143 E6               [12] 4206 	mov	a,@r0
      004144 C0 E0            [24] 4207 	push	acc
      004146 08               [12] 4208 	inc	r0
      004147 E6               [12] 4209 	mov	a,@r0
      004148 C0 E0            [24] 4210 	push	acc
      00414A 08               [12] 4211 	inc	r0
      00414B E6               [12] 4212 	mov	a,@r0
      00414C C0 E0            [24] 4213 	push	acc
      00414E 08               [12] 4214 	inc	r0
      00414F E6               [12] 4215 	mov	a,@r0
      004150 C0 E0            [24] 4216 	push	acc
      004152 8A 82            [24] 4217 	mov	dpl,r2
      004154 8B 83            [24] 4218 	mov	dph,r3
      004156 8C F0            [24] 4219 	mov	b,r4
      004158 12 26 B5         [24] 4220 	lcall	_stack_push
      00415B E5 81            [12] 4221 	mov	a,sp
      00415D 24 FC            [12] 4222 	add	a,#0xfc
      00415F F5 81            [12] 4223 	mov	sp,a
                                   4224 ;	calc.c:215: break;
      004161 02 57 14         [24] 4225 	ljmp	00249$
                                   4226 ;	calc.c:216: case 'X':
      004164                       4227 00152$:
                                   4228 ;	calc.c:217: t0 = ctx->ps;
      004164 E5 08            [12] 4229 	mov	a,_bp
      004166 24 12            [12] 4230 	add	a,#0x12
      004168 F8               [12] 4231 	mov	r0,a
      004169 E5 08            [12] 4232 	mov	a,_bp
      00416B 24 0B            [12] 4233 	add	a,#0x0b
      00416D F9               [12] 4234 	mov	r1,a
      00416E 74 11            [12] 4235 	mov	a,#0x11
      004170 26               [12] 4236 	add	a,@r0
      004171 F7               [12] 4237 	mov	@r1,a
      004172 74 40            [12] 4238 	mov	a,#0x40
      004174 08               [12] 4239 	inc	r0
      004175 36               [12] 4240 	addc	a,@r0
      004176 09               [12] 4241 	inc	r1
      004177 F7               [12] 4242 	mov	@r1,a
      004178 08               [12] 4243 	inc	r0
      004179 09               [12] 4244 	inc	r1
      00417A E6               [12] 4245 	mov	a,@r0
      00417B F7               [12] 4246 	mov	@r1,a
      00417C E5 08            [12] 4247 	mov	a,_bp
      00417E 24 0B            [12] 4248 	add	a,#0x0b
      004180 F8               [12] 4249 	mov	r0,a
      004181 86 82            [24] 4250 	mov	dpl,@r0
      004183 08               [12] 4251 	inc	r0
      004184 86 83            [24] 4252 	mov	dph,@r0
      004186 08               [12] 4253 	inc	r0
      004187 86 F0            [24] 4254 	mov	b,@r0
      004189 12 70 E2         [24] 4255 	lcall	__gptrget
      00418C FF               [12] 4256 	mov	r7,a
      00418D A3               [24] 4257 	inc	dptr
      00418E 12 70 E2         [24] 4258 	lcall	__gptrget
      004191 FE               [12] 4259 	mov	r6,a
      004192 A3               [24] 4260 	inc	dptr
      004193 12 70 E2         [24] 4261 	lcall	__gptrget
      004196 FD               [12] 4262 	mov	r5,a
                                   4263 ;	calc.c:218: ctx->ps = ctx->ss;
      004197 E5 08            [12] 4264 	mov	a,_bp
      004199 24 12            [12] 4265 	add	a,#0x12
      00419B F8               [12] 4266 	mov	r0,a
      00419C E5 08            [12] 4267 	mov	a,_bp
      00419E 24 07            [12] 4268 	add	a,#0x07
      0041A0 F9               [12] 4269 	mov	r1,a
      0041A1 74 14            [12] 4270 	mov	a,#0x14
      0041A3 26               [12] 4271 	add	a,@r0
      0041A4 F7               [12] 4272 	mov	@r1,a
      0041A5 74 40            [12] 4273 	mov	a,#0x40
      0041A7 08               [12] 4274 	inc	r0
      0041A8 36               [12] 4275 	addc	a,@r0
      0041A9 09               [12] 4276 	inc	r1
      0041AA F7               [12] 4277 	mov	@r1,a
      0041AB 08               [12] 4278 	inc	r0
      0041AC 09               [12] 4279 	inc	r1
      0041AD E6               [12] 4280 	mov	a,@r0
      0041AE F7               [12] 4281 	mov	@r1,a
      0041AF E5 08            [12] 4282 	mov	a,_bp
      0041B1 24 07            [12] 4283 	add	a,#0x07
      0041B3 F8               [12] 4284 	mov	r0,a
      0041B4 86 82            [24] 4285 	mov	dpl,@r0
      0041B6 08               [12] 4286 	inc	r0
      0041B7 86 83            [24] 4287 	mov	dph,@r0
      0041B9 08               [12] 4288 	inc	r0
      0041BA 86 F0            [24] 4289 	mov	b,@r0
      0041BC 12 70 E2         [24] 4290 	lcall	__gptrget
      0041BF FA               [12] 4291 	mov	r2,a
      0041C0 A3               [24] 4292 	inc	dptr
      0041C1 12 70 E2         [24] 4293 	lcall	__gptrget
      0041C4 FB               [12] 4294 	mov	r3,a
      0041C5 A3               [24] 4295 	inc	dptr
      0041C6 12 70 E2         [24] 4296 	lcall	__gptrget
      0041C9 FC               [12] 4297 	mov	r4,a
      0041CA E5 08            [12] 4298 	mov	a,_bp
      0041CC 24 0B            [12] 4299 	add	a,#0x0b
      0041CE F8               [12] 4300 	mov	r0,a
      0041CF 86 82            [24] 4301 	mov	dpl,@r0
      0041D1 08               [12] 4302 	inc	r0
      0041D2 86 83            [24] 4303 	mov	dph,@r0
      0041D4 08               [12] 4304 	inc	r0
      0041D5 86 F0            [24] 4305 	mov	b,@r0
      0041D7 EA               [12] 4306 	mov	a,r2
      0041D8 12 6C 67         [24] 4307 	lcall	__gptrput
      0041DB A3               [24] 4308 	inc	dptr
      0041DC EB               [12] 4309 	mov	a,r3
      0041DD 12 6C 67         [24] 4310 	lcall	__gptrput
      0041E0 A3               [24] 4311 	inc	dptr
      0041E1 EC               [12] 4312 	mov	a,r4
      0041E2 12 6C 67         [24] 4313 	lcall	__gptrput
                                   4314 ;	calc.c:219: ctx->ss = t0;
      0041E5 E5 08            [12] 4315 	mov	a,_bp
      0041E7 24 07            [12] 4316 	add	a,#0x07
      0041E9 F8               [12] 4317 	mov	r0,a
      0041EA 86 82            [24] 4318 	mov	dpl,@r0
      0041EC 08               [12] 4319 	inc	r0
      0041ED 86 83            [24] 4320 	mov	dph,@r0
      0041EF 08               [12] 4321 	inc	r0
      0041F0 86 F0            [24] 4322 	mov	b,@r0
      0041F2 EF               [12] 4323 	mov	a,r7
      0041F3 12 6C 67         [24] 4324 	lcall	__gptrput
      0041F6 A3               [24] 4325 	inc	dptr
      0041F7 EE               [12] 4326 	mov	a,r6
      0041F8 12 6C 67         [24] 4327 	lcall	__gptrput
      0041FB A3               [24] 4328 	inc	dptr
      0041FC ED               [12] 4329 	mov	a,r5
      0041FD 12 6C 67         [24] 4330 	lcall	__gptrput
                                   4331 ;	calc.c:220: break;
      004200 02 57 14         [24] 4332 	ljmp	00249$
                                   4333 ;	calc.c:221: case '+':
      004203                       4334 00153$:
                                   4335 ;	calc.c:222: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004203 E5 08            [12] 4336 	mov	a,_bp
      004205 24 15            [12] 4337 	add	a,#0x15
      004207 FF               [12] 4338 	mov	r7,a
      004208 7E 00            [12] 4339 	mov	r6,#0x00
      00420A 7D 40            [12] 4340 	mov	r5,#0x40
      00420C E5 08            [12] 4341 	mov	a,_bp
      00420E 24 12            [12] 4342 	add	a,#0x12
      004210 F8               [12] 4343 	mov	r0,a
      004211 E5 08            [12] 4344 	mov	a,_bp
      004213 24 0B            [12] 4345 	add	a,#0x0b
      004215 F9               [12] 4346 	mov	r1,a
      004216 74 11            [12] 4347 	mov	a,#0x11
      004218 26               [12] 4348 	add	a,@r0
      004219 F7               [12] 4349 	mov	@r1,a
      00421A 74 40            [12] 4350 	mov	a,#0x40
      00421C 08               [12] 4351 	inc	r0
      00421D 36               [12] 4352 	addc	a,@r0
      00421E 09               [12] 4353 	inc	r1
      00421F F7               [12] 4354 	mov	@r1,a
      004220 08               [12] 4355 	inc	r0
      004221 09               [12] 4356 	inc	r1
      004222 E6               [12] 4357 	mov	a,@r0
      004223 F7               [12] 4358 	mov	@r1,a
      004224 E5 08            [12] 4359 	mov	a,_bp
      004226 24 0B            [12] 4360 	add	a,#0x0b
      004228 F8               [12] 4361 	mov	r0,a
      004229 86 82            [24] 4362 	mov	dpl,@r0
      00422B 08               [12] 4363 	inc	r0
      00422C 86 83            [24] 4364 	mov	dph,@r0
      00422E 08               [12] 4365 	inc	r0
      00422F 86 F0            [24] 4366 	mov	b,@r0
      004231 12 70 E2         [24] 4367 	lcall	__gptrget
      004234 FA               [12] 4368 	mov	r2,a
      004235 A3               [24] 4369 	inc	dptr
      004236 12 70 E2         [24] 4370 	lcall	__gptrget
      004239 FB               [12] 4371 	mov	r3,a
      00423A A3               [24] 4372 	inc	dptr
      00423B 12 70 E2         [24] 4373 	lcall	__gptrget
      00423E FC               [12] 4374 	mov	r4,a
      00423F C0 07            [24] 4375 	push	ar7
      004241 C0 06            [24] 4376 	push	ar6
      004243 C0 05            [24] 4377 	push	ar5
      004245 8A 82            [24] 4378 	mov	dpl,r2
      004247 8B 83            [24] 4379 	mov	dph,r3
      004249 8C F0            [24] 4380 	mov	b,r4
      00424B 12 27 83         [24] 4381 	lcall	_stack_pop
      00424E AB 82            [24] 4382 	mov	r3,dpl
      004250 AC 83            [24] 4383 	mov	r4,dph
      004252 15 81            [12] 4384 	dec	sp
      004254 15 81            [12] 4385 	dec	sp
      004256 15 81            [12] 4386 	dec	sp
      004258 EB               [12] 4387 	mov	a,r3
      004259 4C               [12] 4388 	orl	a,r4
      00425A 70 25            [24] 4389 	jnz	00158$
      00425C 7F B1            [12] 4390 	mov	r7,#___str_10
      00425E 7E 89            [12] 4391 	mov	r6,#(___str_10 >> 8)
      004260 7D 80            [12] 4392 	mov	r5,#0x80
                                   4393 ;	calc.c:59: return;
      004262                       4394 00426$:
                                   4395 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004262 8F 82            [24] 4396 	mov	dpl,r7
      004264 8E 83            [24] 4397 	mov	dph,r6
      004266 8D F0            [24] 4398 	mov	b,r5
      004268 12 70 E2         [24] 4399 	lcall	__gptrget
      00426B FC               [12] 4400 	mov	r4,a
      00426C 70 03            [24] 4401 	jnz	01326$
      00426E 02 57 14         [24] 4402 	ljmp	00249$
      004271                       4403 01326$:
      004271 7B 00            [12] 4404 	mov	r3,#0x00
      004273 8C 82            [24] 4405 	mov	dpl,r4
      004275 8B 83            [24] 4406 	mov	dph,r3
      004277 12 2B 70         [24] 4407 	lcall	_putchar
      00427A 0F               [12] 4408 	inc	r7
                                   4409 ;	calc.c:222: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00427B BF 00 E4         [24] 4410 	cjne	r7,#0x00,00426$
      00427E 0E               [12] 4411 	inc	r6
      00427F 80 E1            [24] 4412 	sjmp	00426$
      004281                       4413 00158$:
                                   4414 ;	calc.c:223: else if (!stack_pop(ctx->ps, &d1)) {
      004281 E5 08            [12] 4415 	mov	a,_bp
      004283 24 19            [12] 4416 	add	a,#0x19
      004285 FF               [12] 4417 	mov	r7,a
      004286 7E 00            [12] 4418 	mov	r6,#0x00
      004288 7D 40            [12] 4419 	mov	r5,#0x40
      00428A E5 08            [12] 4420 	mov	a,_bp
      00428C 24 0B            [12] 4421 	add	a,#0x0b
      00428E F8               [12] 4422 	mov	r0,a
      00428F 86 82            [24] 4423 	mov	dpl,@r0
      004291 08               [12] 4424 	inc	r0
      004292 86 83            [24] 4425 	mov	dph,@r0
      004294 08               [12] 4426 	inc	r0
      004295 86 F0            [24] 4427 	mov	b,@r0
      004297 12 70 E2         [24] 4428 	lcall	__gptrget
      00429A FA               [12] 4429 	mov	r2,a
      00429B A3               [24] 4430 	inc	dptr
      00429C 12 70 E2         [24] 4431 	lcall	__gptrget
      00429F FB               [12] 4432 	mov	r3,a
      0042A0 A3               [24] 4433 	inc	dptr
      0042A1 12 70 E2         [24] 4434 	lcall	__gptrget
      0042A4 FC               [12] 4435 	mov	r4,a
      0042A5 C0 07            [24] 4436 	push	ar7
      0042A7 C0 06            [24] 4437 	push	ar6
      0042A9 C0 05            [24] 4438 	push	ar5
      0042AB 8A 82            [24] 4439 	mov	dpl,r2
      0042AD 8B 83            [24] 4440 	mov	dph,r3
      0042AF 8C F0            [24] 4441 	mov	b,r4
      0042B1 12 27 83         [24] 4442 	lcall	_stack_pop
      0042B4 AB 82            [24] 4443 	mov	r3,dpl
      0042B6 AC 83            [24] 4444 	mov	r4,dph
      0042B8 15 81            [12] 4445 	dec	sp
      0042BA 15 81            [12] 4446 	dec	sp
      0042BC 15 81            [12] 4447 	dec	sp
      0042BE EB               [12] 4448 	mov	a,r3
      0042BF 4C               [12] 4449 	orl	a,r4
      0042C0 70 63            [24] 4450 	jnz	00155$
                                   4451 ;	calc.c:224: (void)stack_push(ctx->ps, d0);
      0042C2 E5 08            [12] 4452 	mov	a,_bp
      0042C4 24 0B            [12] 4453 	add	a,#0x0b
      0042C6 F8               [12] 4454 	mov	r0,a
      0042C7 86 82            [24] 4455 	mov	dpl,@r0
      0042C9 08               [12] 4456 	inc	r0
      0042CA 86 83            [24] 4457 	mov	dph,@r0
      0042CC 08               [12] 4458 	inc	r0
      0042CD 86 F0            [24] 4459 	mov	b,@r0
      0042CF 12 70 E2         [24] 4460 	lcall	__gptrget
      0042D2 FA               [12] 4461 	mov	r2,a
      0042D3 A3               [24] 4462 	inc	dptr
      0042D4 12 70 E2         [24] 4463 	lcall	__gptrget
      0042D7 FB               [12] 4464 	mov	r3,a
      0042D8 A3               [24] 4465 	inc	dptr
      0042D9 12 70 E2         [24] 4466 	lcall	__gptrget
      0042DC FC               [12] 4467 	mov	r4,a
      0042DD E5 08            [12] 4468 	mov	a,_bp
      0042DF 24 15            [12] 4469 	add	a,#0x15
      0042E1 F8               [12] 4470 	mov	r0,a
      0042E2 E6               [12] 4471 	mov	a,@r0
      0042E3 C0 E0            [24] 4472 	push	acc
      0042E5 08               [12] 4473 	inc	r0
      0042E6 E6               [12] 4474 	mov	a,@r0
      0042E7 C0 E0            [24] 4475 	push	acc
      0042E9 08               [12] 4476 	inc	r0
      0042EA E6               [12] 4477 	mov	a,@r0
      0042EB C0 E0            [24] 4478 	push	acc
      0042ED 08               [12] 4479 	inc	r0
      0042EE E6               [12] 4480 	mov	a,@r0
      0042EF C0 E0            [24] 4481 	push	acc
      0042F1 8A 82            [24] 4482 	mov	dpl,r2
      0042F3 8B 83            [24] 4483 	mov	dph,r3
      0042F5 8C F0            [24] 4484 	mov	b,r4
      0042F7 12 26 B5         [24] 4485 	lcall	_stack_push
      0042FA E5 81            [12] 4486 	mov	a,sp
      0042FC 24 FC            [12] 4487 	add	a,#0xfc
      0042FE F5 81            [12] 4488 	mov	sp,a
                                   4489 ;	calc.c:225: printstr("\r\nstack underflow\r\n");
      004300 7F B1            [12] 4490 	mov	r7,#___str_10
      004302 7E 89            [12] 4491 	mov	r6,#(___str_10 >> 8)
      004304 7D 80            [12] 4492 	mov	r5,#0x80
                                   4493 ;	calc.c:59: return;
      004306                       4494 00429$:
                                   4495 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004306 8F 82            [24] 4496 	mov	dpl,r7
      004308 8E 83            [24] 4497 	mov	dph,r6
      00430A 8D F0            [24] 4498 	mov	b,r5
      00430C 12 70 E2         [24] 4499 	lcall	__gptrget
      00430F FC               [12] 4500 	mov	r4,a
      004310 70 03            [24] 4501 	jnz	01329$
      004312 02 57 14         [24] 4502 	ljmp	00249$
      004315                       4503 01329$:
      004315 7B 00            [12] 4504 	mov	r3,#0x00
      004317 8C 82            [24] 4505 	mov	dpl,r4
      004319 8B 83            [24] 4506 	mov	dph,r3
      00431B 12 2B 70         [24] 4507 	lcall	_putchar
      00431E 0F               [12] 4508 	inc	r7
                                   4509 ;	calc.c:225: printstr("\r\nstack underflow\r\n");
      00431F BF 00 E4         [24] 4510 	cjne	r7,#0x00,00429$
      004322 0E               [12] 4511 	inc	r6
      004323 80 E1            [24] 4512 	sjmp	00429$
      004325                       4513 00155$:
                                   4514 ;	calc.c:227: d1 += d0;
      004325 E5 08            [12] 4515 	mov	a,_bp
      004327 24 19            [12] 4516 	add	a,#0x19
      004329 F8               [12] 4517 	mov	r0,a
      00432A E5 08            [12] 4518 	mov	a,_bp
      00432C 24 15            [12] 4519 	add	a,#0x15
      00432E F9               [12] 4520 	mov	r1,a
      00432F E7               [12] 4521 	mov	a,@r1
      004330 26               [12] 4522 	add	a,@r0
      004331 F6               [12] 4523 	mov	@r0,a
      004332 09               [12] 4524 	inc	r1
      004333 E7               [12] 4525 	mov	a,@r1
      004334 08               [12] 4526 	inc	r0
      004335 36               [12] 4527 	addc	a,@r0
      004336 F6               [12] 4528 	mov	@r0,a
      004337 09               [12] 4529 	inc	r1
      004338 E7               [12] 4530 	mov	a,@r1
      004339 08               [12] 4531 	inc	r0
      00433A 36               [12] 4532 	addc	a,@r0
      00433B F6               [12] 4533 	mov	@r0,a
      00433C 09               [12] 4534 	inc	r1
      00433D E7               [12] 4535 	mov	a,@r1
      00433E 08               [12] 4536 	inc	r0
      00433F 36               [12] 4537 	addc	a,@r0
      004340 F6               [12] 4538 	mov	@r0,a
                                   4539 ;	calc.c:228: (void)stack_push(ctx->ps, d1);
      004341 E5 08            [12] 4540 	mov	a,_bp
      004343 24 0B            [12] 4541 	add	a,#0x0b
      004345 F8               [12] 4542 	mov	r0,a
      004346 86 82            [24] 4543 	mov	dpl,@r0
      004348 08               [12] 4544 	inc	r0
      004349 86 83            [24] 4545 	mov	dph,@r0
      00434B 08               [12] 4546 	inc	r0
      00434C 86 F0            [24] 4547 	mov	b,@r0
      00434E 12 70 E2         [24] 4548 	lcall	__gptrget
      004351 FA               [12] 4549 	mov	r2,a
      004352 A3               [24] 4550 	inc	dptr
      004353 12 70 E2         [24] 4551 	lcall	__gptrget
      004356 FB               [12] 4552 	mov	r3,a
      004357 A3               [24] 4553 	inc	dptr
      004358 12 70 E2         [24] 4554 	lcall	__gptrget
      00435B FC               [12] 4555 	mov	r4,a
      00435C E5 08            [12] 4556 	mov	a,_bp
      00435E 24 19            [12] 4557 	add	a,#0x19
      004360 F8               [12] 4558 	mov	r0,a
      004361 E6               [12] 4559 	mov	a,@r0
      004362 C0 E0            [24] 4560 	push	acc
      004364 08               [12] 4561 	inc	r0
      004365 E6               [12] 4562 	mov	a,@r0
      004366 C0 E0            [24] 4563 	push	acc
      004368 08               [12] 4564 	inc	r0
      004369 E6               [12] 4565 	mov	a,@r0
      00436A C0 E0            [24] 4566 	push	acc
      00436C 08               [12] 4567 	inc	r0
      00436D E6               [12] 4568 	mov	a,@r0
      00436E C0 E0            [24] 4569 	push	acc
      004370 8A 82            [24] 4570 	mov	dpl,r2
      004372 8B 83            [24] 4571 	mov	dph,r3
      004374 8C F0            [24] 4572 	mov	b,r4
      004376 12 26 B5         [24] 4573 	lcall	_stack_push
      004379 E5 81            [12] 4574 	mov	a,sp
      00437B 24 FC            [12] 4575 	add	a,#0xfc
      00437D F5 81            [12] 4576 	mov	sp,a
                                   4577 ;	calc.c:230: break;
      00437F 02 57 14         [24] 4578 	ljmp	00249$
                                   4579 ;	calc.c:231: case '-':
      004382                       4580 00160$:
                                   4581 ;	calc.c:232: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004382 E5 08            [12] 4582 	mov	a,_bp
      004384 24 15            [12] 4583 	add	a,#0x15
      004386 FF               [12] 4584 	mov	r7,a
      004387 7E 00            [12] 4585 	mov	r6,#0x00
      004389 7D 40            [12] 4586 	mov	r5,#0x40
      00438B E5 08            [12] 4587 	mov	a,_bp
      00438D 24 12            [12] 4588 	add	a,#0x12
      00438F F8               [12] 4589 	mov	r0,a
      004390 E5 08            [12] 4590 	mov	a,_bp
      004392 24 0B            [12] 4591 	add	a,#0x0b
      004394 F9               [12] 4592 	mov	r1,a
      004395 74 11            [12] 4593 	mov	a,#0x11
      004397 26               [12] 4594 	add	a,@r0
      004398 F7               [12] 4595 	mov	@r1,a
      004399 74 40            [12] 4596 	mov	a,#0x40
      00439B 08               [12] 4597 	inc	r0
      00439C 36               [12] 4598 	addc	a,@r0
      00439D 09               [12] 4599 	inc	r1
      00439E F7               [12] 4600 	mov	@r1,a
      00439F 08               [12] 4601 	inc	r0
      0043A0 09               [12] 4602 	inc	r1
      0043A1 E6               [12] 4603 	mov	a,@r0
      0043A2 F7               [12] 4604 	mov	@r1,a
      0043A3 E5 08            [12] 4605 	mov	a,_bp
      0043A5 24 0B            [12] 4606 	add	a,#0x0b
      0043A7 F8               [12] 4607 	mov	r0,a
      0043A8 86 82            [24] 4608 	mov	dpl,@r0
      0043AA 08               [12] 4609 	inc	r0
      0043AB 86 83            [24] 4610 	mov	dph,@r0
      0043AD 08               [12] 4611 	inc	r0
      0043AE 86 F0            [24] 4612 	mov	b,@r0
      0043B0 12 70 E2         [24] 4613 	lcall	__gptrget
      0043B3 FA               [12] 4614 	mov	r2,a
      0043B4 A3               [24] 4615 	inc	dptr
      0043B5 12 70 E2         [24] 4616 	lcall	__gptrget
      0043B8 FB               [12] 4617 	mov	r3,a
      0043B9 A3               [24] 4618 	inc	dptr
      0043BA 12 70 E2         [24] 4619 	lcall	__gptrget
      0043BD FC               [12] 4620 	mov	r4,a
      0043BE C0 07            [24] 4621 	push	ar7
      0043C0 C0 06            [24] 4622 	push	ar6
      0043C2 C0 05            [24] 4623 	push	ar5
      0043C4 8A 82            [24] 4624 	mov	dpl,r2
      0043C6 8B 83            [24] 4625 	mov	dph,r3
      0043C8 8C F0            [24] 4626 	mov	b,r4
      0043CA 12 27 83         [24] 4627 	lcall	_stack_pop
      0043CD AB 82            [24] 4628 	mov	r3,dpl
      0043CF AC 83            [24] 4629 	mov	r4,dph
      0043D1 15 81            [12] 4630 	dec	sp
      0043D3 15 81            [12] 4631 	dec	sp
      0043D5 15 81            [12] 4632 	dec	sp
      0043D7 EB               [12] 4633 	mov	a,r3
      0043D8 4C               [12] 4634 	orl	a,r4
      0043D9 70 25            [24] 4635 	jnz	00165$
      0043DB 7F B1            [12] 4636 	mov	r7,#___str_10
      0043DD 7E 89            [12] 4637 	mov	r6,#(___str_10 >> 8)
      0043DF 7D 80            [12] 4638 	mov	r5,#0x80
                                   4639 ;	calc.c:59: return;
      0043E1                       4640 00432$:
                                   4641 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0043E1 8F 82            [24] 4642 	mov	dpl,r7
      0043E3 8E 83            [24] 4643 	mov	dph,r6
      0043E5 8D F0            [24] 4644 	mov	b,r5
      0043E7 12 70 E2         [24] 4645 	lcall	__gptrget
      0043EA FC               [12] 4646 	mov	r4,a
      0043EB 70 03            [24] 4647 	jnz	01332$
      0043ED 02 57 14         [24] 4648 	ljmp	00249$
      0043F0                       4649 01332$:
      0043F0 7B 00            [12] 4650 	mov	r3,#0x00
      0043F2 8C 82            [24] 4651 	mov	dpl,r4
      0043F4 8B 83            [24] 4652 	mov	dph,r3
      0043F6 12 2B 70         [24] 4653 	lcall	_putchar
      0043F9 0F               [12] 4654 	inc	r7
                                   4655 ;	calc.c:232: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0043FA BF 00 E4         [24] 4656 	cjne	r7,#0x00,00432$
      0043FD 0E               [12] 4657 	inc	r6
      0043FE 80 E1            [24] 4658 	sjmp	00432$
      004400                       4659 00165$:
                                   4660 ;	calc.c:233: else if (!stack_pop(ctx->ps, &d1)) {
      004400 E5 08            [12] 4661 	mov	a,_bp
      004402 24 19            [12] 4662 	add	a,#0x19
      004404 FF               [12] 4663 	mov	r7,a
      004405 7E 00            [12] 4664 	mov	r6,#0x00
      004407 7D 40            [12] 4665 	mov	r5,#0x40
      004409 E5 08            [12] 4666 	mov	a,_bp
      00440B 24 0B            [12] 4667 	add	a,#0x0b
      00440D F8               [12] 4668 	mov	r0,a
      00440E 86 82            [24] 4669 	mov	dpl,@r0
      004410 08               [12] 4670 	inc	r0
      004411 86 83            [24] 4671 	mov	dph,@r0
      004413 08               [12] 4672 	inc	r0
      004414 86 F0            [24] 4673 	mov	b,@r0
      004416 12 70 E2         [24] 4674 	lcall	__gptrget
      004419 FA               [12] 4675 	mov	r2,a
      00441A A3               [24] 4676 	inc	dptr
      00441B 12 70 E2         [24] 4677 	lcall	__gptrget
      00441E FB               [12] 4678 	mov	r3,a
      00441F A3               [24] 4679 	inc	dptr
      004420 12 70 E2         [24] 4680 	lcall	__gptrget
      004423 FC               [12] 4681 	mov	r4,a
      004424 C0 07            [24] 4682 	push	ar7
      004426 C0 06            [24] 4683 	push	ar6
      004428 C0 05            [24] 4684 	push	ar5
      00442A 8A 82            [24] 4685 	mov	dpl,r2
      00442C 8B 83            [24] 4686 	mov	dph,r3
      00442E 8C F0            [24] 4687 	mov	b,r4
      004430 12 27 83         [24] 4688 	lcall	_stack_pop
      004433 AB 82            [24] 4689 	mov	r3,dpl
      004435 AC 83            [24] 4690 	mov	r4,dph
      004437 15 81            [12] 4691 	dec	sp
      004439 15 81            [12] 4692 	dec	sp
      00443B 15 81            [12] 4693 	dec	sp
      00443D EB               [12] 4694 	mov	a,r3
      00443E 4C               [12] 4695 	orl	a,r4
      00443F 70 63            [24] 4696 	jnz	00162$
                                   4697 ;	calc.c:234: (void)stack_push(ctx->ps, d0);
      004441 E5 08            [12] 4698 	mov	a,_bp
      004443 24 0B            [12] 4699 	add	a,#0x0b
      004445 F8               [12] 4700 	mov	r0,a
      004446 86 82            [24] 4701 	mov	dpl,@r0
      004448 08               [12] 4702 	inc	r0
      004449 86 83            [24] 4703 	mov	dph,@r0
      00444B 08               [12] 4704 	inc	r0
      00444C 86 F0            [24] 4705 	mov	b,@r0
      00444E 12 70 E2         [24] 4706 	lcall	__gptrget
      004451 FA               [12] 4707 	mov	r2,a
      004452 A3               [24] 4708 	inc	dptr
      004453 12 70 E2         [24] 4709 	lcall	__gptrget
      004456 FB               [12] 4710 	mov	r3,a
      004457 A3               [24] 4711 	inc	dptr
      004458 12 70 E2         [24] 4712 	lcall	__gptrget
      00445B FC               [12] 4713 	mov	r4,a
      00445C E5 08            [12] 4714 	mov	a,_bp
      00445E 24 15            [12] 4715 	add	a,#0x15
      004460 F8               [12] 4716 	mov	r0,a
      004461 E6               [12] 4717 	mov	a,@r0
      004462 C0 E0            [24] 4718 	push	acc
      004464 08               [12] 4719 	inc	r0
      004465 E6               [12] 4720 	mov	a,@r0
      004466 C0 E0            [24] 4721 	push	acc
      004468 08               [12] 4722 	inc	r0
      004469 E6               [12] 4723 	mov	a,@r0
      00446A C0 E0            [24] 4724 	push	acc
      00446C 08               [12] 4725 	inc	r0
      00446D E6               [12] 4726 	mov	a,@r0
      00446E C0 E0            [24] 4727 	push	acc
      004470 8A 82            [24] 4728 	mov	dpl,r2
      004472 8B 83            [24] 4729 	mov	dph,r3
      004474 8C F0            [24] 4730 	mov	b,r4
      004476 12 26 B5         [24] 4731 	lcall	_stack_push
      004479 E5 81            [12] 4732 	mov	a,sp
      00447B 24 FC            [12] 4733 	add	a,#0xfc
      00447D F5 81            [12] 4734 	mov	sp,a
                                   4735 ;	calc.c:235: printstr("\r\nstack underflow\r\n");
      00447F 7F B1            [12] 4736 	mov	r7,#___str_10
      004481 7E 89            [12] 4737 	mov	r6,#(___str_10 >> 8)
      004483 7D 80            [12] 4738 	mov	r5,#0x80
                                   4739 ;	calc.c:59: return;
      004485                       4740 00435$:
                                   4741 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004485 8F 82            [24] 4742 	mov	dpl,r7
      004487 8E 83            [24] 4743 	mov	dph,r6
      004489 8D F0            [24] 4744 	mov	b,r5
      00448B 12 70 E2         [24] 4745 	lcall	__gptrget
      00448E FC               [12] 4746 	mov	r4,a
      00448F 70 03            [24] 4747 	jnz	01335$
      004491 02 57 14         [24] 4748 	ljmp	00249$
      004494                       4749 01335$:
      004494 7B 00            [12] 4750 	mov	r3,#0x00
      004496 8C 82            [24] 4751 	mov	dpl,r4
      004498 8B 83            [24] 4752 	mov	dph,r3
      00449A 12 2B 70         [24] 4753 	lcall	_putchar
      00449D 0F               [12] 4754 	inc	r7
                                   4755 ;	calc.c:235: printstr("\r\nstack underflow\r\n");
      00449E BF 00 E4         [24] 4756 	cjne	r7,#0x00,00435$
      0044A1 0E               [12] 4757 	inc	r6
      0044A2 80 E1            [24] 4758 	sjmp	00435$
      0044A4                       4759 00162$:
                                   4760 ;	calc.c:237: d1 -= d0;
      0044A4 E5 08            [12] 4761 	mov	a,_bp
      0044A6 24 19            [12] 4762 	add	a,#0x19
      0044A8 F8               [12] 4763 	mov	r0,a
      0044A9 E5 08            [12] 4764 	mov	a,_bp
      0044AB 24 15            [12] 4765 	add	a,#0x15
      0044AD F9               [12] 4766 	mov	r1,a
      0044AE E6               [12] 4767 	mov	a,@r0
      0044AF C3               [12] 4768 	clr	c
      0044B0 97               [12] 4769 	subb	a,@r1
      0044B1 F6               [12] 4770 	mov	@r0,a
      0044B2 08               [12] 4771 	inc	r0
      0044B3 E6               [12] 4772 	mov	a,@r0
      0044B4 09               [12] 4773 	inc	r1
      0044B5 97               [12] 4774 	subb	a,@r1
      0044B6 F6               [12] 4775 	mov	@r0,a
      0044B7 08               [12] 4776 	inc	r0
      0044B8 E6               [12] 4777 	mov	a,@r0
      0044B9 09               [12] 4778 	inc	r1
      0044BA 97               [12] 4779 	subb	a,@r1
      0044BB F6               [12] 4780 	mov	@r0,a
      0044BC 08               [12] 4781 	inc	r0
      0044BD E6               [12] 4782 	mov	a,@r0
      0044BE 09               [12] 4783 	inc	r1
      0044BF 97               [12] 4784 	subb	a,@r1
      0044C0 F6               [12] 4785 	mov	@r0,a
                                   4786 ;	calc.c:238: (void)stack_push(ctx->ps, d1);
      0044C1 E5 08            [12] 4787 	mov	a,_bp
      0044C3 24 0B            [12] 4788 	add	a,#0x0b
      0044C5 F8               [12] 4789 	mov	r0,a
      0044C6 86 82            [24] 4790 	mov	dpl,@r0
      0044C8 08               [12] 4791 	inc	r0
      0044C9 86 83            [24] 4792 	mov	dph,@r0
      0044CB 08               [12] 4793 	inc	r0
      0044CC 86 F0            [24] 4794 	mov	b,@r0
      0044CE 12 70 E2         [24] 4795 	lcall	__gptrget
      0044D1 FA               [12] 4796 	mov	r2,a
      0044D2 A3               [24] 4797 	inc	dptr
      0044D3 12 70 E2         [24] 4798 	lcall	__gptrget
      0044D6 FB               [12] 4799 	mov	r3,a
      0044D7 A3               [24] 4800 	inc	dptr
      0044D8 12 70 E2         [24] 4801 	lcall	__gptrget
      0044DB FC               [12] 4802 	mov	r4,a
      0044DC E5 08            [12] 4803 	mov	a,_bp
      0044DE 24 19            [12] 4804 	add	a,#0x19
      0044E0 F8               [12] 4805 	mov	r0,a
      0044E1 E6               [12] 4806 	mov	a,@r0
      0044E2 C0 E0            [24] 4807 	push	acc
      0044E4 08               [12] 4808 	inc	r0
      0044E5 E6               [12] 4809 	mov	a,@r0
      0044E6 C0 E0            [24] 4810 	push	acc
      0044E8 08               [12] 4811 	inc	r0
      0044E9 E6               [12] 4812 	mov	a,@r0
      0044EA C0 E0            [24] 4813 	push	acc
      0044EC 08               [12] 4814 	inc	r0
      0044ED E6               [12] 4815 	mov	a,@r0
      0044EE C0 E0            [24] 4816 	push	acc
      0044F0 8A 82            [24] 4817 	mov	dpl,r2
      0044F2 8B 83            [24] 4818 	mov	dph,r3
      0044F4 8C F0            [24] 4819 	mov	b,r4
      0044F6 12 26 B5         [24] 4820 	lcall	_stack_push
      0044F9 E5 81            [12] 4821 	mov	a,sp
      0044FB 24 FC            [12] 4822 	add	a,#0xfc
      0044FD F5 81            [12] 4823 	mov	sp,a
                                   4824 ;	calc.c:240: break;
      0044FF 02 57 14         [24] 4825 	ljmp	00249$
                                   4826 ;	calc.c:241: case '*':
      004502                       4827 00167$:
                                   4828 ;	calc.c:242: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004502 E5 08            [12] 4829 	mov	a,_bp
      004504 24 15            [12] 4830 	add	a,#0x15
      004506 FF               [12] 4831 	mov	r7,a
      004507 7E 00            [12] 4832 	mov	r6,#0x00
      004509 7D 40            [12] 4833 	mov	r5,#0x40
      00450B E5 08            [12] 4834 	mov	a,_bp
      00450D 24 12            [12] 4835 	add	a,#0x12
      00450F F8               [12] 4836 	mov	r0,a
      004510 E5 08            [12] 4837 	mov	a,_bp
      004512 24 0B            [12] 4838 	add	a,#0x0b
      004514 F9               [12] 4839 	mov	r1,a
      004515 74 11            [12] 4840 	mov	a,#0x11
      004517 26               [12] 4841 	add	a,@r0
      004518 F7               [12] 4842 	mov	@r1,a
      004519 74 40            [12] 4843 	mov	a,#0x40
      00451B 08               [12] 4844 	inc	r0
      00451C 36               [12] 4845 	addc	a,@r0
      00451D 09               [12] 4846 	inc	r1
      00451E F7               [12] 4847 	mov	@r1,a
      00451F 08               [12] 4848 	inc	r0
      004520 09               [12] 4849 	inc	r1
      004521 E6               [12] 4850 	mov	a,@r0
      004522 F7               [12] 4851 	mov	@r1,a
      004523 E5 08            [12] 4852 	mov	a,_bp
      004525 24 0B            [12] 4853 	add	a,#0x0b
      004527 F8               [12] 4854 	mov	r0,a
      004528 86 82            [24] 4855 	mov	dpl,@r0
      00452A 08               [12] 4856 	inc	r0
      00452B 86 83            [24] 4857 	mov	dph,@r0
      00452D 08               [12] 4858 	inc	r0
      00452E 86 F0            [24] 4859 	mov	b,@r0
      004530 12 70 E2         [24] 4860 	lcall	__gptrget
      004533 FA               [12] 4861 	mov	r2,a
      004534 A3               [24] 4862 	inc	dptr
      004535 12 70 E2         [24] 4863 	lcall	__gptrget
      004538 FB               [12] 4864 	mov	r3,a
      004539 A3               [24] 4865 	inc	dptr
      00453A 12 70 E2         [24] 4866 	lcall	__gptrget
      00453D FC               [12] 4867 	mov	r4,a
      00453E C0 07            [24] 4868 	push	ar7
      004540 C0 06            [24] 4869 	push	ar6
      004542 C0 05            [24] 4870 	push	ar5
      004544 8A 82            [24] 4871 	mov	dpl,r2
      004546 8B 83            [24] 4872 	mov	dph,r3
      004548 8C F0            [24] 4873 	mov	b,r4
      00454A 12 27 83         [24] 4874 	lcall	_stack_pop
      00454D AB 82            [24] 4875 	mov	r3,dpl
      00454F AC 83            [24] 4876 	mov	r4,dph
      004551 15 81            [12] 4877 	dec	sp
      004553 15 81            [12] 4878 	dec	sp
      004555 15 81            [12] 4879 	dec	sp
      004557 EB               [12] 4880 	mov	a,r3
      004558 4C               [12] 4881 	orl	a,r4
      004559 70 25            [24] 4882 	jnz	00172$
      00455B 7F B1            [12] 4883 	mov	r7,#___str_10
      00455D 7E 89            [12] 4884 	mov	r6,#(___str_10 >> 8)
      00455F 7D 80            [12] 4885 	mov	r5,#0x80
                                   4886 ;	calc.c:59: return;
      004561                       4887 00438$:
                                   4888 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004561 8F 82            [24] 4889 	mov	dpl,r7
      004563 8E 83            [24] 4890 	mov	dph,r6
      004565 8D F0            [24] 4891 	mov	b,r5
      004567 12 70 E2         [24] 4892 	lcall	__gptrget
      00456A FC               [12] 4893 	mov	r4,a
      00456B 70 03            [24] 4894 	jnz	01338$
      00456D 02 57 14         [24] 4895 	ljmp	00249$
      004570                       4896 01338$:
      004570 7B 00            [12] 4897 	mov	r3,#0x00
      004572 8C 82            [24] 4898 	mov	dpl,r4
      004574 8B 83            [24] 4899 	mov	dph,r3
      004576 12 2B 70         [24] 4900 	lcall	_putchar
      004579 0F               [12] 4901 	inc	r7
                                   4902 ;	calc.c:242: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00457A BF 00 E4         [24] 4903 	cjne	r7,#0x00,00438$
      00457D 0E               [12] 4904 	inc	r6
      00457E 80 E1            [24] 4905 	sjmp	00438$
      004580                       4906 00172$:
                                   4907 ;	calc.c:243: else if (!stack_pop(ctx->ps, &d1)) {
      004580 E5 08            [12] 4908 	mov	a,_bp
      004582 24 19            [12] 4909 	add	a,#0x19
      004584 FF               [12] 4910 	mov	r7,a
      004585 7E 00            [12] 4911 	mov	r6,#0x00
      004587 7D 40            [12] 4912 	mov	r5,#0x40
      004589 E5 08            [12] 4913 	mov	a,_bp
      00458B 24 0B            [12] 4914 	add	a,#0x0b
      00458D F8               [12] 4915 	mov	r0,a
      00458E 86 82            [24] 4916 	mov	dpl,@r0
      004590 08               [12] 4917 	inc	r0
      004591 86 83            [24] 4918 	mov	dph,@r0
      004593 08               [12] 4919 	inc	r0
      004594 86 F0            [24] 4920 	mov	b,@r0
      004596 12 70 E2         [24] 4921 	lcall	__gptrget
      004599 FA               [12] 4922 	mov	r2,a
      00459A A3               [24] 4923 	inc	dptr
      00459B 12 70 E2         [24] 4924 	lcall	__gptrget
      00459E FB               [12] 4925 	mov	r3,a
      00459F A3               [24] 4926 	inc	dptr
      0045A0 12 70 E2         [24] 4927 	lcall	__gptrget
      0045A3 FC               [12] 4928 	mov	r4,a
      0045A4 C0 07            [24] 4929 	push	ar7
      0045A6 C0 06            [24] 4930 	push	ar6
      0045A8 C0 05            [24] 4931 	push	ar5
      0045AA 8A 82            [24] 4932 	mov	dpl,r2
      0045AC 8B 83            [24] 4933 	mov	dph,r3
      0045AE 8C F0            [24] 4934 	mov	b,r4
      0045B0 12 27 83         [24] 4935 	lcall	_stack_pop
      0045B3 AB 82            [24] 4936 	mov	r3,dpl
      0045B5 AC 83            [24] 4937 	mov	r4,dph
      0045B7 15 81            [12] 4938 	dec	sp
      0045B9 15 81            [12] 4939 	dec	sp
      0045BB 15 81            [12] 4940 	dec	sp
      0045BD EB               [12] 4941 	mov	a,r3
      0045BE 4C               [12] 4942 	orl	a,r4
      0045BF 70 63            [24] 4943 	jnz	00169$
                                   4944 ;	calc.c:244: (void)stack_push(ctx->ps, d0);
      0045C1 E5 08            [12] 4945 	mov	a,_bp
      0045C3 24 0B            [12] 4946 	add	a,#0x0b
      0045C5 F8               [12] 4947 	mov	r0,a
      0045C6 86 82            [24] 4948 	mov	dpl,@r0
      0045C8 08               [12] 4949 	inc	r0
      0045C9 86 83            [24] 4950 	mov	dph,@r0
      0045CB 08               [12] 4951 	inc	r0
      0045CC 86 F0            [24] 4952 	mov	b,@r0
      0045CE 12 70 E2         [24] 4953 	lcall	__gptrget
      0045D1 FA               [12] 4954 	mov	r2,a
      0045D2 A3               [24] 4955 	inc	dptr
      0045D3 12 70 E2         [24] 4956 	lcall	__gptrget
      0045D6 FB               [12] 4957 	mov	r3,a
      0045D7 A3               [24] 4958 	inc	dptr
      0045D8 12 70 E2         [24] 4959 	lcall	__gptrget
      0045DB FC               [12] 4960 	mov	r4,a
      0045DC E5 08            [12] 4961 	mov	a,_bp
      0045DE 24 15            [12] 4962 	add	a,#0x15
      0045E0 F8               [12] 4963 	mov	r0,a
      0045E1 E6               [12] 4964 	mov	a,@r0
      0045E2 C0 E0            [24] 4965 	push	acc
      0045E4 08               [12] 4966 	inc	r0
      0045E5 E6               [12] 4967 	mov	a,@r0
      0045E6 C0 E0            [24] 4968 	push	acc
      0045E8 08               [12] 4969 	inc	r0
      0045E9 E6               [12] 4970 	mov	a,@r0
      0045EA C0 E0            [24] 4971 	push	acc
      0045EC 08               [12] 4972 	inc	r0
      0045ED E6               [12] 4973 	mov	a,@r0
      0045EE C0 E0            [24] 4974 	push	acc
      0045F0 8A 82            [24] 4975 	mov	dpl,r2
      0045F2 8B 83            [24] 4976 	mov	dph,r3
      0045F4 8C F0            [24] 4977 	mov	b,r4
      0045F6 12 26 B5         [24] 4978 	lcall	_stack_push
      0045F9 E5 81            [12] 4979 	mov	a,sp
      0045FB 24 FC            [12] 4980 	add	a,#0xfc
      0045FD F5 81            [12] 4981 	mov	sp,a
                                   4982 ;	calc.c:245: printstr("\r\nstack underflow\r\n");
      0045FF 7F B1            [12] 4983 	mov	r7,#___str_10
      004601 7E 89            [12] 4984 	mov	r6,#(___str_10 >> 8)
      004603 7D 80            [12] 4985 	mov	r5,#0x80
                                   4986 ;	calc.c:59: return;
      004605                       4987 00441$:
                                   4988 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004605 8F 82            [24] 4989 	mov	dpl,r7
      004607 8E 83            [24] 4990 	mov	dph,r6
      004609 8D F0            [24] 4991 	mov	b,r5
      00460B 12 70 E2         [24] 4992 	lcall	__gptrget
      00460E FC               [12] 4993 	mov	r4,a
      00460F 70 03            [24] 4994 	jnz	01341$
      004611 02 57 14         [24] 4995 	ljmp	00249$
      004614                       4996 01341$:
      004614 7B 00            [12] 4997 	mov	r3,#0x00
      004616 8C 82            [24] 4998 	mov	dpl,r4
      004618 8B 83            [24] 4999 	mov	dph,r3
      00461A 12 2B 70         [24] 5000 	lcall	_putchar
      00461D 0F               [12] 5001 	inc	r7
                                   5002 ;	calc.c:245: printstr("\r\nstack underflow\r\n");
      00461E BF 00 E4         [24] 5003 	cjne	r7,#0x00,00441$
      004621 0E               [12] 5004 	inc	r6
      004622 80 E1            [24] 5005 	sjmp	00441$
      004624                       5006 00169$:
                                   5007 ;	calc.c:247: d1 *= d0;
      004624 E5 08            [12] 5008 	mov	a,_bp
      004626 24 15            [12] 5009 	add	a,#0x15
      004628 F8               [12] 5010 	mov	r0,a
      004629 E6               [12] 5011 	mov	a,@r0
      00462A C0 E0            [24] 5012 	push	acc
      00462C 08               [12] 5013 	inc	r0
      00462D E6               [12] 5014 	mov	a,@r0
      00462E C0 E0            [24] 5015 	push	acc
      004630 08               [12] 5016 	inc	r0
      004631 E6               [12] 5017 	mov	a,@r0
      004632 C0 E0            [24] 5018 	push	acc
      004634 08               [12] 5019 	inc	r0
      004635 E6               [12] 5020 	mov	a,@r0
      004636 C0 E0            [24] 5021 	push	acc
      004638 E5 08            [12] 5022 	mov	a,_bp
      00463A 24 19            [12] 5023 	add	a,#0x19
      00463C F8               [12] 5024 	mov	r0,a
      00463D 86 82            [24] 5025 	mov	dpl,@r0
      00463F 08               [12] 5026 	inc	r0
      004640 86 83            [24] 5027 	mov	dph,@r0
      004642 08               [12] 5028 	inc	r0
      004643 86 F0            [24] 5029 	mov	b,@r0
      004645 08               [12] 5030 	inc	r0
      004646 E6               [12] 5031 	mov	a,@r0
      004647 12 74 DB         [24] 5032 	lcall	__mullong
      00464A AF 82            [24] 5033 	mov	r7,dpl
      00464C AE 83            [24] 5034 	mov	r6,dph
      00464E AD F0            [24] 5035 	mov	r5,b
      004650 FC               [12] 5036 	mov	r4,a
      004651 E5 81            [12] 5037 	mov	a,sp
      004653 24 FC            [12] 5038 	add	a,#0xfc
      004655 F5 81            [12] 5039 	mov	sp,a
      004657 E5 08            [12] 5040 	mov	a,_bp
      004659 24 19            [12] 5041 	add	a,#0x19
      00465B F8               [12] 5042 	mov	r0,a
      00465C A6 07            [24] 5043 	mov	@r0,ar7
      00465E 08               [12] 5044 	inc	r0
      00465F A6 06            [24] 5045 	mov	@r0,ar6
      004661 08               [12] 5046 	inc	r0
      004662 A6 05            [24] 5047 	mov	@r0,ar5
      004664 08               [12] 5048 	inc	r0
      004665 A6 04            [24] 5049 	mov	@r0,ar4
                                   5050 ;	calc.c:248: (void)stack_push(ctx->ps, d1);
      004667 E5 08            [12] 5051 	mov	a,_bp
      004669 24 0B            [12] 5052 	add	a,#0x0b
      00466B F8               [12] 5053 	mov	r0,a
      00466C 86 82            [24] 5054 	mov	dpl,@r0
      00466E 08               [12] 5055 	inc	r0
      00466F 86 83            [24] 5056 	mov	dph,@r0
      004671 08               [12] 5057 	inc	r0
      004672 86 F0            [24] 5058 	mov	b,@r0
      004674 12 70 E2         [24] 5059 	lcall	__gptrget
      004677 FA               [12] 5060 	mov	r2,a
      004678 A3               [24] 5061 	inc	dptr
      004679 12 70 E2         [24] 5062 	lcall	__gptrget
      00467C FB               [12] 5063 	mov	r3,a
      00467D A3               [24] 5064 	inc	dptr
      00467E 12 70 E2         [24] 5065 	lcall	__gptrget
      004681 FC               [12] 5066 	mov	r4,a
      004682 E5 08            [12] 5067 	mov	a,_bp
      004684 24 19            [12] 5068 	add	a,#0x19
      004686 F8               [12] 5069 	mov	r0,a
      004687 E6               [12] 5070 	mov	a,@r0
      004688 C0 E0            [24] 5071 	push	acc
      00468A 08               [12] 5072 	inc	r0
      00468B E6               [12] 5073 	mov	a,@r0
      00468C C0 E0            [24] 5074 	push	acc
      00468E 08               [12] 5075 	inc	r0
      00468F E6               [12] 5076 	mov	a,@r0
      004690 C0 E0            [24] 5077 	push	acc
      004692 08               [12] 5078 	inc	r0
      004693 E6               [12] 5079 	mov	a,@r0
      004694 C0 E0            [24] 5080 	push	acc
      004696 8A 82            [24] 5081 	mov	dpl,r2
      004698 8B 83            [24] 5082 	mov	dph,r3
      00469A 8C F0            [24] 5083 	mov	b,r4
      00469C 12 26 B5         [24] 5084 	lcall	_stack_push
      00469F E5 81            [12] 5085 	mov	a,sp
      0046A1 24 FC            [12] 5086 	add	a,#0xfc
      0046A3 F5 81            [12] 5087 	mov	sp,a
                                   5088 ;	calc.c:250: break;
      0046A5 02 57 14         [24] 5089 	ljmp	00249$
                                   5090 ;	calc.c:252: case '\\':
      0046A8                       5091 00175$:
                                   5092 ;	calc.c:253: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0046A8 C0 05            [24] 5093 	push	ar5
      0046AA C0 06            [24] 5094 	push	ar6
      0046AC C0 07            [24] 5095 	push	ar7
      0046AE E5 08            [12] 5096 	mov	a,_bp
      0046B0 24 15            [12] 5097 	add	a,#0x15
      0046B2 FC               [12] 5098 	mov	r4,a
      0046B3 7B 00            [12] 5099 	mov	r3,#0x00
      0046B5 7A 40            [12] 5100 	mov	r2,#0x40
      0046B7 E5 08            [12] 5101 	mov	a,_bp
      0046B9 24 12            [12] 5102 	add	a,#0x12
      0046BB F8               [12] 5103 	mov	r0,a
      0046BC E5 08            [12] 5104 	mov	a,_bp
      0046BE 24 0B            [12] 5105 	add	a,#0x0b
      0046C0 F9               [12] 5106 	mov	r1,a
      0046C1 74 11            [12] 5107 	mov	a,#0x11
      0046C3 26               [12] 5108 	add	a,@r0
      0046C4 F7               [12] 5109 	mov	@r1,a
      0046C5 74 40            [12] 5110 	mov	a,#0x40
      0046C7 08               [12] 5111 	inc	r0
      0046C8 36               [12] 5112 	addc	a,@r0
      0046C9 09               [12] 5113 	inc	r1
      0046CA F7               [12] 5114 	mov	@r1,a
      0046CB 08               [12] 5115 	inc	r0
      0046CC 09               [12] 5116 	inc	r1
      0046CD E6               [12] 5117 	mov	a,@r0
      0046CE F7               [12] 5118 	mov	@r1,a
      0046CF E5 08            [12] 5119 	mov	a,_bp
      0046D1 24 0B            [12] 5120 	add	a,#0x0b
      0046D3 F8               [12] 5121 	mov	r0,a
      0046D4 86 82            [24] 5122 	mov	dpl,@r0
      0046D6 08               [12] 5123 	inc	r0
      0046D7 86 83            [24] 5124 	mov	dph,@r0
      0046D9 08               [12] 5125 	inc	r0
      0046DA 86 F0            [24] 5126 	mov	b,@r0
      0046DC 12 70 E2         [24] 5127 	lcall	__gptrget
      0046DF FD               [12] 5128 	mov	r5,a
      0046E0 A3               [24] 5129 	inc	dptr
      0046E1 12 70 E2         [24] 5130 	lcall	__gptrget
      0046E4 FE               [12] 5131 	mov	r6,a
      0046E5 A3               [24] 5132 	inc	dptr
      0046E6 12 70 E2         [24] 5133 	lcall	__gptrget
      0046E9 FF               [12] 5134 	mov	r7,a
      0046EA C0 05            [24] 5135 	push	ar5
      0046EC C0 04            [24] 5136 	push	ar4
      0046EE C0 03            [24] 5137 	push	ar3
      0046F0 C0 02            [24] 5138 	push	ar2
      0046F2 8D 82            [24] 5139 	mov	dpl,r5
      0046F4 8E 83            [24] 5140 	mov	dph,r6
      0046F6 8F F0            [24] 5141 	mov	b,r7
      0046F8 12 27 83         [24] 5142 	lcall	_stack_pop
      0046FB AE 82            [24] 5143 	mov	r6,dpl
      0046FD AF 83            [24] 5144 	mov	r7,dph
      0046FF 15 81            [12] 5145 	dec	sp
      004701 15 81            [12] 5146 	dec	sp
      004703 15 81            [12] 5147 	dec	sp
      004705 D0 05            [24] 5148 	pop	ar5
      004707 EE               [12] 5149 	mov	a,r6
      004708 4F               [12] 5150 	orl	a,r7
      004709 D0 07            [24] 5151 	pop	ar7
      00470B D0 06            [24] 5152 	pop	ar6
      00470D D0 05            [24] 5153 	pop	ar5
      00470F 70 25            [24] 5154 	jnz	00186$
      004711 7F B1            [12] 5155 	mov	r7,#___str_10
      004713 7E 89            [12] 5156 	mov	r6,#(___str_10 >> 8)
      004715 7D 80            [12] 5157 	mov	r5,#0x80
                                   5158 ;	calc.c:59: return;
      004717                       5159 00444$:
                                   5160 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004717 8F 82            [24] 5161 	mov	dpl,r7
      004719 8E 83            [24] 5162 	mov	dph,r6
      00471B 8D F0            [24] 5163 	mov	b,r5
      00471D 12 70 E2         [24] 5164 	lcall	__gptrget
      004720 FC               [12] 5165 	mov	r4,a
      004721 70 03            [24] 5166 	jnz	01344$
      004723 02 57 14         [24] 5167 	ljmp	00249$
      004726                       5168 01344$:
      004726 7B 00            [12] 5169 	mov	r3,#0x00
      004728 8C 82            [24] 5170 	mov	dpl,r4
      00472A 8B 83            [24] 5171 	mov	dph,r3
      00472C 12 2B 70         [24] 5172 	lcall	_putchar
      00472F 0F               [12] 5173 	inc	r7
                                   5174 ;	calc.c:253: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004730 BF 00 E4         [24] 5175 	cjne	r7,#0x00,00444$
      004733 0E               [12] 5176 	inc	r6
      004734 80 E1            [24] 5177 	sjmp	00444$
      004736                       5178 00186$:
                                   5179 ;	calc.c:254: else if (!stack_pop(ctx->ps, &d1)) {
      004736 C0 05            [24] 5180 	push	ar5
      004738 C0 06            [24] 5181 	push	ar6
      00473A C0 07            [24] 5182 	push	ar7
      00473C E5 08            [12] 5183 	mov	a,_bp
      00473E 24 19            [12] 5184 	add	a,#0x19
      004740 FC               [12] 5185 	mov	r4,a
      004741 7B 00            [12] 5186 	mov	r3,#0x00
      004743 7A 40            [12] 5187 	mov	r2,#0x40
      004745 E5 08            [12] 5188 	mov	a,_bp
      004747 24 0B            [12] 5189 	add	a,#0x0b
      004749 F8               [12] 5190 	mov	r0,a
      00474A 86 82            [24] 5191 	mov	dpl,@r0
      00474C 08               [12] 5192 	inc	r0
      00474D 86 83            [24] 5193 	mov	dph,@r0
      00474F 08               [12] 5194 	inc	r0
      004750 86 F0            [24] 5195 	mov	b,@r0
      004752 12 70 E2         [24] 5196 	lcall	__gptrget
      004755 FD               [12] 5197 	mov	r5,a
      004756 A3               [24] 5198 	inc	dptr
      004757 12 70 E2         [24] 5199 	lcall	__gptrget
      00475A FE               [12] 5200 	mov	r6,a
      00475B A3               [24] 5201 	inc	dptr
      00475C 12 70 E2         [24] 5202 	lcall	__gptrget
      00475F FF               [12] 5203 	mov	r7,a
      004760 C0 05            [24] 5204 	push	ar5
      004762 C0 04            [24] 5205 	push	ar4
      004764 C0 03            [24] 5206 	push	ar3
      004766 C0 02            [24] 5207 	push	ar2
      004768 8D 82            [24] 5208 	mov	dpl,r5
      00476A 8E 83            [24] 5209 	mov	dph,r6
      00476C 8F F0            [24] 5210 	mov	b,r7
      00476E 12 27 83         [24] 5211 	lcall	_stack_pop
      004771 AE 82            [24] 5212 	mov	r6,dpl
      004773 AF 83            [24] 5213 	mov	r7,dph
      004775 15 81            [12] 5214 	dec	sp
      004777 15 81            [12] 5215 	dec	sp
      004779 15 81            [12] 5216 	dec	sp
      00477B D0 05            [24] 5217 	pop	ar5
      00477D EE               [12] 5218 	mov	a,r6
      00477E 4F               [12] 5219 	orl	a,r7
      00477F D0 07            [24] 5220 	pop	ar7
      004781 D0 06            [24] 5221 	pop	ar6
      004783 D0 05            [24] 5222 	pop	ar5
      004785 70 63            [24] 5223 	jnz	00183$
                                   5224 ;	calc.c:255: (void)stack_push(ctx->ps, d0);
      004787 E5 08            [12] 5225 	mov	a,_bp
      004789 24 0B            [12] 5226 	add	a,#0x0b
      00478B F8               [12] 5227 	mov	r0,a
      00478C 86 82            [24] 5228 	mov	dpl,@r0
      00478E 08               [12] 5229 	inc	r0
      00478F 86 83            [24] 5230 	mov	dph,@r0
      004791 08               [12] 5231 	inc	r0
      004792 86 F0            [24] 5232 	mov	b,@r0
      004794 12 70 E2         [24] 5233 	lcall	__gptrget
      004797 FA               [12] 5234 	mov	r2,a
      004798 A3               [24] 5235 	inc	dptr
      004799 12 70 E2         [24] 5236 	lcall	__gptrget
      00479C FB               [12] 5237 	mov	r3,a
      00479D A3               [24] 5238 	inc	dptr
      00479E 12 70 E2         [24] 5239 	lcall	__gptrget
      0047A1 FC               [12] 5240 	mov	r4,a
      0047A2 E5 08            [12] 5241 	mov	a,_bp
      0047A4 24 15            [12] 5242 	add	a,#0x15
      0047A6 F8               [12] 5243 	mov	r0,a
      0047A7 E6               [12] 5244 	mov	a,@r0
      0047A8 C0 E0            [24] 5245 	push	acc
      0047AA 08               [12] 5246 	inc	r0
      0047AB E6               [12] 5247 	mov	a,@r0
      0047AC C0 E0            [24] 5248 	push	acc
      0047AE 08               [12] 5249 	inc	r0
      0047AF E6               [12] 5250 	mov	a,@r0
      0047B0 C0 E0            [24] 5251 	push	acc
      0047B2 08               [12] 5252 	inc	r0
      0047B3 E6               [12] 5253 	mov	a,@r0
      0047B4 C0 E0            [24] 5254 	push	acc
      0047B6 8A 82            [24] 5255 	mov	dpl,r2
      0047B8 8B 83            [24] 5256 	mov	dph,r3
      0047BA 8C F0            [24] 5257 	mov	b,r4
      0047BC 12 26 B5         [24] 5258 	lcall	_stack_push
      0047BF E5 81            [12] 5259 	mov	a,sp
      0047C1 24 FC            [12] 5260 	add	a,#0xfc
      0047C3 F5 81            [12] 5261 	mov	sp,a
                                   5262 ;	calc.c:256: printstr("\r\nstack underflow\r\n");
      0047C5 7F B1            [12] 5263 	mov	r7,#___str_10
      0047C7 7E 89            [12] 5264 	mov	r6,#(___str_10 >> 8)
      0047C9 7D 80            [12] 5265 	mov	r5,#0x80
                                   5266 ;	calc.c:59: return;
      0047CB                       5267 00447$:
                                   5268 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0047CB 8F 82            [24] 5269 	mov	dpl,r7
      0047CD 8E 83            [24] 5270 	mov	dph,r6
      0047CF 8D F0            [24] 5271 	mov	b,r5
      0047D1 12 70 E2         [24] 5272 	lcall	__gptrget
      0047D4 FC               [12] 5273 	mov	r4,a
      0047D5 70 03            [24] 5274 	jnz	01347$
      0047D7 02 57 14         [24] 5275 	ljmp	00249$
      0047DA                       5276 01347$:
      0047DA 7B 00            [12] 5277 	mov	r3,#0x00
      0047DC 8C 82            [24] 5278 	mov	dpl,r4
      0047DE 8B 83            [24] 5279 	mov	dph,r3
      0047E0 12 2B 70         [24] 5280 	lcall	_putchar
      0047E3 0F               [12] 5281 	inc	r7
                                   5282 ;	calc.c:256: printstr("\r\nstack underflow\r\n");
      0047E4 BF 00 E4         [24] 5283 	cjne	r7,#0x00,00447$
      0047E7 0E               [12] 5284 	inc	r6
      0047E8 80 E1            [24] 5285 	sjmp	00447$
      0047EA                       5286 00183$:
                                   5287 ;	calc.c:257: } else if (!d0) {
      0047EA E5 08            [12] 5288 	mov	a,_bp
      0047EC 24 15            [12] 5289 	add	a,#0x15
      0047EE F8               [12] 5290 	mov	r0,a
      0047EF E6               [12] 5291 	mov	a,@r0
      0047F0 08               [12] 5292 	inc	r0
      0047F1 46               [12] 5293 	orl	a,@r0
      0047F2 08               [12] 5294 	inc	r0
      0047F3 46               [12] 5295 	orl	a,@r0
      0047F4 08               [12] 5296 	inc	r0
      0047F5 46               [12] 5297 	orl	a,@r0
      0047F6 60 03            [24] 5298 	jz	01349$
      0047F8 02 48 9C         [24] 5299 	ljmp	00180$
      0047FB                       5300 01349$:
                                   5301 ;	calc.c:258: (void)stack_push(ctx->ps, d1);
      0047FB E5 08            [12] 5302 	mov	a,_bp
      0047FD 24 0B            [12] 5303 	add	a,#0x0b
      0047FF F8               [12] 5304 	mov	r0,a
      004800 86 82            [24] 5305 	mov	dpl,@r0
      004802 08               [12] 5306 	inc	r0
      004803 86 83            [24] 5307 	mov	dph,@r0
      004805 08               [12] 5308 	inc	r0
      004806 86 F0            [24] 5309 	mov	b,@r0
      004808 12 70 E2         [24] 5310 	lcall	__gptrget
      00480B FA               [12] 5311 	mov	r2,a
      00480C A3               [24] 5312 	inc	dptr
      00480D 12 70 E2         [24] 5313 	lcall	__gptrget
      004810 FB               [12] 5314 	mov	r3,a
      004811 A3               [24] 5315 	inc	dptr
      004812 12 70 E2         [24] 5316 	lcall	__gptrget
      004815 FC               [12] 5317 	mov	r4,a
      004816 E5 08            [12] 5318 	mov	a,_bp
      004818 24 19            [12] 5319 	add	a,#0x19
      00481A F8               [12] 5320 	mov	r0,a
      00481B E6               [12] 5321 	mov	a,@r0
      00481C C0 E0            [24] 5322 	push	acc
      00481E 08               [12] 5323 	inc	r0
      00481F E6               [12] 5324 	mov	a,@r0
      004820 C0 E0            [24] 5325 	push	acc
      004822 08               [12] 5326 	inc	r0
      004823 E6               [12] 5327 	mov	a,@r0
      004824 C0 E0            [24] 5328 	push	acc
      004826 08               [12] 5329 	inc	r0
      004827 E6               [12] 5330 	mov	a,@r0
      004828 C0 E0            [24] 5331 	push	acc
      00482A 8A 82            [24] 5332 	mov	dpl,r2
      00482C 8B 83            [24] 5333 	mov	dph,r3
      00482E 8C F0            [24] 5334 	mov	b,r4
      004830 12 26 B5         [24] 5335 	lcall	_stack_push
      004833 E5 81            [12] 5336 	mov	a,sp
      004835 24 FC            [12] 5337 	add	a,#0xfc
      004837 F5 81            [12] 5338 	mov	sp,a
                                   5339 ;	calc.c:259: (void)stack_push(ctx->ps, d0);			
      004839 E5 08            [12] 5340 	mov	a,_bp
      00483B 24 0B            [12] 5341 	add	a,#0x0b
      00483D F8               [12] 5342 	mov	r0,a
      00483E 86 82            [24] 5343 	mov	dpl,@r0
      004840 08               [12] 5344 	inc	r0
      004841 86 83            [24] 5345 	mov	dph,@r0
      004843 08               [12] 5346 	inc	r0
      004844 86 F0            [24] 5347 	mov	b,@r0
      004846 12 70 E2         [24] 5348 	lcall	__gptrget
      004849 FA               [12] 5349 	mov	r2,a
      00484A A3               [24] 5350 	inc	dptr
      00484B 12 70 E2         [24] 5351 	lcall	__gptrget
      00484E FB               [12] 5352 	mov	r3,a
      00484F A3               [24] 5353 	inc	dptr
      004850 12 70 E2         [24] 5354 	lcall	__gptrget
      004853 FC               [12] 5355 	mov	r4,a
      004854 E5 08            [12] 5356 	mov	a,_bp
      004856 24 15            [12] 5357 	add	a,#0x15
      004858 F8               [12] 5358 	mov	r0,a
      004859 E6               [12] 5359 	mov	a,@r0
      00485A C0 E0            [24] 5360 	push	acc
      00485C 08               [12] 5361 	inc	r0
      00485D E6               [12] 5362 	mov	a,@r0
      00485E C0 E0            [24] 5363 	push	acc
      004860 08               [12] 5364 	inc	r0
      004861 E6               [12] 5365 	mov	a,@r0
      004862 C0 E0            [24] 5366 	push	acc
      004864 08               [12] 5367 	inc	r0
      004865 E6               [12] 5368 	mov	a,@r0
      004866 C0 E0            [24] 5369 	push	acc
      004868 8A 82            [24] 5370 	mov	dpl,r2
      00486A 8B 83            [24] 5371 	mov	dph,r3
      00486C 8C F0            [24] 5372 	mov	b,r4
      00486E 12 26 B5         [24] 5373 	lcall	_stack_push
      004871 E5 81            [12] 5374 	mov	a,sp
      004873 24 FC            [12] 5375 	add	a,#0xfc
      004875 F5 81            [12] 5376 	mov	sp,a
                                   5377 ;	calc.c:260: printstr("\r\ndivision by zero\r\n");
      004877 7F 13            [12] 5378 	mov	r7,#___str_14
      004879 7E 8A            [12] 5379 	mov	r6,#(___str_14 >> 8)
      00487B 7D 80            [12] 5380 	mov	r5,#0x80
                                   5381 ;	calc.c:59: return;
      00487D                       5382 00450$:
                                   5383 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00487D 8F 82            [24] 5384 	mov	dpl,r7
      00487F 8E 83            [24] 5385 	mov	dph,r6
      004881 8D F0            [24] 5386 	mov	b,r5
      004883 12 70 E2         [24] 5387 	lcall	__gptrget
      004886 FC               [12] 5388 	mov	r4,a
      004887 70 03            [24] 5389 	jnz	01350$
      004889 02 57 14         [24] 5390 	ljmp	00249$
      00488C                       5391 01350$:
      00488C 7B 00            [12] 5392 	mov	r3,#0x00
      00488E 8C 82            [24] 5393 	mov	dpl,r4
      004890 8B 83            [24] 5394 	mov	dph,r3
      004892 12 2B 70         [24] 5395 	lcall	_putchar
      004895 0F               [12] 5396 	inc	r7
                                   5397 ;	calc.c:260: printstr("\r\ndivision by zero\r\n");
      004896 BF 00 E4         [24] 5398 	cjne	r7,#0x00,00450$
      004899 0E               [12] 5399 	inc	r6
      00489A 80 E1            [24] 5400 	sjmp	00450$
      00489C                       5401 00180$:
                                   5402 ;	calc.c:262: if (ctx->digit[0] == '/') d1 /= d0;
      00489C 8D 82            [24] 5403 	mov	dpl,r5
      00489E 8E 83            [24] 5404 	mov	dph,r6
      0048A0 8F F0            [24] 5405 	mov	b,r7
      0048A2 12 70 E2         [24] 5406 	lcall	__gptrget
      0048A5 FC               [12] 5407 	mov	r4,a
      0048A6 BC 2F 45         [24] 5408 	cjne	r4,#0x2f,00177$
      0048A9 E5 08            [12] 5409 	mov	a,_bp
      0048AB 24 15            [12] 5410 	add	a,#0x15
      0048AD F8               [12] 5411 	mov	r0,a
      0048AE E6               [12] 5412 	mov	a,@r0
      0048AF C0 E0            [24] 5413 	push	acc
      0048B1 08               [12] 5414 	inc	r0
      0048B2 E6               [12] 5415 	mov	a,@r0
      0048B3 C0 E0            [24] 5416 	push	acc
      0048B5 08               [12] 5417 	inc	r0
      0048B6 E6               [12] 5418 	mov	a,@r0
      0048B7 C0 E0            [24] 5419 	push	acc
      0048B9 08               [12] 5420 	inc	r0
      0048BA E6               [12] 5421 	mov	a,@r0
      0048BB C0 E0            [24] 5422 	push	acc
      0048BD E5 08            [12] 5423 	mov	a,_bp
      0048BF 24 19            [12] 5424 	add	a,#0x19
      0048C1 F8               [12] 5425 	mov	r0,a
      0048C2 86 82            [24] 5426 	mov	dpl,@r0
      0048C4 08               [12] 5427 	inc	r0
      0048C5 86 83            [24] 5428 	mov	dph,@r0
      0048C7 08               [12] 5429 	inc	r0
      0048C8 86 F0            [24] 5430 	mov	b,@r0
      0048CA 08               [12] 5431 	inc	r0
      0048CB E6               [12] 5432 	mov	a,@r0
      0048CC 12 6E D9         [24] 5433 	lcall	__divslong
      0048CF AF 82            [24] 5434 	mov	r7,dpl
      0048D1 AE 83            [24] 5435 	mov	r6,dph
      0048D3 AD F0            [24] 5436 	mov	r5,b
      0048D5 FC               [12] 5437 	mov	r4,a
      0048D6 E5 81            [12] 5438 	mov	a,sp
      0048D8 24 FC            [12] 5439 	add	a,#0xfc
      0048DA F5 81            [12] 5440 	mov	sp,a
      0048DC E5 08            [12] 5441 	mov	a,_bp
      0048DE 24 19            [12] 5442 	add	a,#0x19
      0048E0 F8               [12] 5443 	mov	r0,a
      0048E1 A6 07            [24] 5444 	mov	@r0,ar7
      0048E3 08               [12] 5445 	inc	r0
      0048E4 A6 06            [24] 5446 	mov	@r0,ar6
      0048E6 08               [12] 5447 	inc	r0
      0048E7 A6 05            [24] 5448 	mov	@r0,ar5
      0048E9 08               [12] 5449 	inc	r0
      0048EA A6 04            [24] 5450 	mov	@r0,ar4
      0048EC 80 63            [24] 5451 	sjmp	00178$
      0048EE                       5452 00177$:
                                   5453 ;	calc.c:263: else d1 = (unsigned long)d1 / (unsigned long)d0;
      0048EE E5 08            [12] 5454 	mov	a,_bp
      0048F0 24 19            [12] 5455 	add	a,#0x19
      0048F2 F8               [12] 5456 	mov	r0,a
      0048F3 86 07            [24] 5457 	mov	ar7,@r0
      0048F5 08               [12] 5458 	inc	r0
      0048F6 86 06            [24] 5459 	mov	ar6,@r0
      0048F8 08               [12] 5460 	inc	r0
      0048F9 86 05            [24] 5461 	mov	ar5,@r0
      0048FB 08               [12] 5462 	inc	r0
      0048FC 86 04            [24] 5463 	mov	ar4,@r0
      0048FE E5 08            [12] 5464 	mov	a,_bp
      004900 24 15            [12] 5465 	add	a,#0x15
      004902 F8               [12] 5466 	mov	r0,a
      004903 E5 08            [12] 5467 	mov	a,_bp
      004905 24 0E            [12] 5468 	add	a,#0x0e
      004907 F9               [12] 5469 	mov	r1,a
      004908 E6               [12] 5470 	mov	a,@r0
      004909 F7               [12] 5471 	mov	@r1,a
      00490A 08               [12] 5472 	inc	r0
      00490B 09               [12] 5473 	inc	r1
      00490C E6               [12] 5474 	mov	a,@r0
      00490D F7               [12] 5475 	mov	@r1,a
      00490E 08               [12] 5476 	inc	r0
      00490F 09               [12] 5477 	inc	r1
      004910 E6               [12] 5478 	mov	a,@r0
      004911 F7               [12] 5479 	mov	@r1,a
      004912 08               [12] 5480 	inc	r0
      004913 09               [12] 5481 	inc	r1
      004914 E6               [12] 5482 	mov	a,@r0
      004915 F7               [12] 5483 	mov	@r1,a
      004916 E5 08            [12] 5484 	mov	a,_bp
      004918 24 0E            [12] 5485 	add	a,#0x0e
      00491A F8               [12] 5486 	mov	r0,a
      00491B E6               [12] 5487 	mov	a,@r0
      00491C C0 E0            [24] 5488 	push	acc
      00491E 08               [12] 5489 	inc	r0
      00491F E6               [12] 5490 	mov	a,@r0
      004920 C0 E0            [24] 5491 	push	acc
      004922 08               [12] 5492 	inc	r0
      004923 E6               [12] 5493 	mov	a,@r0
      004924 C0 E0            [24] 5494 	push	acc
      004926 08               [12] 5495 	inc	r0
      004927 E6               [12] 5496 	mov	a,@r0
      004928 C0 E0            [24] 5497 	push	acc
      00492A 8F 82            [24] 5498 	mov	dpl,r7
      00492C 8E 83            [24] 5499 	mov	dph,r6
      00492E 8D F0            [24] 5500 	mov	b,r5
      004930 EC               [12] 5501 	mov	a,r4
      004931 12 6F D6         [24] 5502 	lcall	__divulong
      004934 AF 82            [24] 5503 	mov	r7,dpl
      004936 AE 83            [24] 5504 	mov	r6,dph
      004938 AD F0            [24] 5505 	mov	r5,b
      00493A FC               [12] 5506 	mov	r4,a
      00493B E5 81            [12] 5507 	mov	a,sp
      00493D 24 FC            [12] 5508 	add	a,#0xfc
      00493F F5 81            [12] 5509 	mov	sp,a
      004941 E5 08            [12] 5510 	mov	a,_bp
      004943 24 19            [12] 5511 	add	a,#0x19
      004945 F8               [12] 5512 	mov	r0,a
      004946 A6 07            [24] 5513 	mov	@r0,ar7
      004948 08               [12] 5514 	inc	r0
      004949 A6 06            [24] 5515 	mov	@r0,ar6
      00494B 08               [12] 5516 	inc	r0
      00494C A6 05            [24] 5517 	mov	@r0,ar5
      00494E 08               [12] 5518 	inc	r0
      00494F A6 04            [24] 5519 	mov	@r0,ar4
      004951                       5520 00178$:
                                   5521 ;	calc.c:264: (void)stack_push(ctx->ps, d1);
      004951 E5 08            [12] 5522 	mov	a,_bp
      004953 24 0B            [12] 5523 	add	a,#0x0b
      004955 F8               [12] 5524 	mov	r0,a
      004956 86 82            [24] 5525 	mov	dpl,@r0
      004958 08               [12] 5526 	inc	r0
      004959 86 83            [24] 5527 	mov	dph,@r0
      00495B 08               [12] 5528 	inc	r0
      00495C 86 F0            [24] 5529 	mov	b,@r0
      00495E 12 70 E2         [24] 5530 	lcall	__gptrget
      004961 FA               [12] 5531 	mov	r2,a
      004962 A3               [24] 5532 	inc	dptr
      004963 12 70 E2         [24] 5533 	lcall	__gptrget
      004966 FB               [12] 5534 	mov	r3,a
      004967 A3               [24] 5535 	inc	dptr
      004968 12 70 E2         [24] 5536 	lcall	__gptrget
      00496B FC               [12] 5537 	mov	r4,a
      00496C E5 08            [12] 5538 	mov	a,_bp
      00496E 24 19            [12] 5539 	add	a,#0x19
      004970 F8               [12] 5540 	mov	r0,a
      004971 E6               [12] 5541 	mov	a,@r0
      004972 C0 E0            [24] 5542 	push	acc
      004974 08               [12] 5543 	inc	r0
      004975 E6               [12] 5544 	mov	a,@r0
      004976 C0 E0            [24] 5545 	push	acc
      004978 08               [12] 5546 	inc	r0
      004979 E6               [12] 5547 	mov	a,@r0
      00497A C0 E0            [24] 5548 	push	acc
      00497C 08               [12] 5549 	inc	r0
      00497D E6               [12] 5550 	mov	a,@r0
      00497E C0 E0            [24] 5551 	push	acc
      004980 8A 82            [24] 5552 	mov	dpl,r2
      004982 8B 83            [24] 5553 	mov	dph,r3
      004984 8C F0            [24] 5554 	mov	b,r4
      004986 12 26 B5         [24] 5555 	lcall	_stack_push
      004989 E5 81            [12] 5556 	mov	a,sp
      00498B 24 FC            [12] 5557 	add	a,#0xfc
      00498D F5 81            [12] 5558 	mov	sp,a
                                   5559 ;	calc.c:266: break;
      00498F 02 57 14         [24] 5560 	ljmp	00249$
                                   5561 ;	calc.c:268: case '#':
      004992                       5562 00189$:
                                   5563 ;	calc.c:269: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004992 C0 05            [24] 5564 	push	ar5
      004994 C0 06            [24] 5565 	push	ar6
      004996 C0 07            [24] 5566 	push	ar7
      004998 E5 08            [12] 5567 	mov	a,_bp
      00499A 24 15            [12] 5568 	add	a,#0x15
      00499C FC               [12] 5569 	mov	r4,a
      00499D 7B 00            [12] 5570 	mov	r3,#0x00
      00499F 7A 40            [12] 5571 	mov	r2,#0x40
      0049A1 E5 08            [12] 5572 	mov	a,_bp
      0049A3 24 12            [12] 5573 	add	a,#0x12
      0049A5 F8               [12] 5574 	mov	r0,a
      0049A6 E5 08            [12] 5575 	mov	a,_bp
      0049A8 24 0E            [12] 5576 	add	a,#0x0e
      0049AA F9               [12] 5577 	mov	r1,a
      0049AB 74 11            [12] 5578 	mov	a,#0x11
      0049AD 26               [12] 5579 	add	a,@r0
      0049AE F7               [12] 5580 	mov	@r1,a
      0049AF 74 40            [12] 5581 	mov	a,#0x40
      0049B1 08               [12] 5582 	inc	r0
      0049B2 36               [12] 5583 	addc	a,@r0
      0049B3 09               [12] 5584 	inc	r1
      0049B4 F7               [12] 5585 	mov	@r1,a
      0049B5 08               [12] 5586 	inc	r0
      0049B6 09               [12] 5587 	inc	r1
      0049B7 E6               [12] 5588 	mov	a,@r0
      0049B8 F7               [12] 5589 	mov	@r1,a
      0049B9 E5 08            [12] 5590 	mov	a,_bp
      0049BB 24 0E            [12] 5591 	add	a,#0x0e
      0049BD F8               [12] 5592 	mov	r0,a
      0049BE 86 82            [24] 5593 	mov	dpl,@r0
      0049C0 08               [12] 5594 	inc	r0
      0049C1 86 83            [24] 5595 	mov	dph,@r0
      0049C3 08               [12] 5596 	inc	r0
      0049C4 86 F0            [24] 5597 	mov	b,@r0
      0049C6 12 70 E2         [24] 5598 	lcall	__gptrget
      0049C9 FD               [12] 5599 	mov	r5,a
      0049CA A3               [24] 5600 	inc	dptr
      0049CB 12 70 E2         [24] 5601 	lcall	__gptrget
      0049CE FE               [12] 5602 	mov	r6,a
      0049CF A3               [24] 5603 	inc	dptr
      0049D0 12 70 E2         [24] 5604 	lcall	__gptrget
      0049D3 FF               [12] 5605 	mov	r7,a
      0049D4 C0 05            [24] 5606 	push	ar5
      0049D6 C0 04            [24] 5607 	push	ar4
      0049D8 C0 03            [24] 5608 	push	ar3
      0049DA C0 02            [24] 5609 	push	ar2
      0049DC 8D 82            [24] 5610 	mov	dpl,r5
      0049DE 8E 83            [24] 5611 	mov	dph,r6
      0049E0 8F F0            [24] 5612 	mov	b,r7
      0049E2 12 27 83         [24] 5613 	lcall	_stack_pop
      0049E5 AE 82            [24] 5614 	mov	r6,dpl
      0049E7 AF 83            [24] 5615 	mov	r7,dph
      0049E9 15 81            [12] 5616 	dec	sp
      0049EB 15 81            [12] 5617 	dec	sp
      0049ED 15 81            [12] 5618 	dec	sp
      0049EF D0 05            [24] 5619 	pop	ar5
      0049F1 EE               [12] 5620 	mov	a,r6
      0049F2 4F               [12] 5621 	orl	a,r7
      0049F3 D0 07            [24] 5622 	pop	ar7
      0049F5 D0 06            [24] 5623 	pop	ar6
      0049F7 D0 05            [24] 5624 	pop	ar5
      0049F9 70 25            [24] 5625 	jnz	00200$
      0049FB 7F B1            [12] 5626 	mov	r7,#___str_10
      0049FD 7E 89            [12] 5627 	mov	r6,#(___str_10 >> 8)
      0049FF 7D 80            [12] 5628 	mov	r5,#0x80
                                   5629 ;	calc.c:59: return;
      004A01                       5630 00453$:
                                   5631 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004A01 8F 82            [24] 5632 	mov	dpl,r7
      004A03 8E 83            [24] 5633 	mov	dph,r6
      004A05 8D F0            [24] 5634 	mov	b,r5
      004A07 12 70 E2         [24] 5635 	lcall	__gptrget
      004A0A FC               [12] 5636 	mov	r4,a
      004A0B 70 03            [24] 5637 	jnz	01355$
      004A0D 02 57 14         [24] 5638 	ljmp	00249$
      004A10                       5639 01355$:
      004A10 7B 00            [12] 5640 	mov	r3,#0x00
      004A12 8C 82            [24] 5641 	mov	dpl,r4
      004A14 8B 83            [24] 5642 	mov	dph,r3
      004A16 12 2B 70         [24] 5643 	lcall	_putchar
      004A19 0F               [12] 5644 	inc	r7
                                   5645 ;	calc.c:269: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004A1A BF 00 E4         [24] 5646 	cjne	r7,#0x00,00453$
      004A1D 0E               [12] 5647 	inc	r6
      004A1E 80 E1            [24] 5648 	sjmp	00453$
      004A20                       5649 00200$:
                                   5650 ;	calc.c:270: else if (!stack_pop(ctx->ps, &d1)) {
      004A20 C0 05            [24] 5651 	push	ar5
      004A22 C0 06            [24] 5652 	push	ar6
      004A24 C0 07            [24] 5653 	push	ar7
      004A26 E5 08            [12] 5654 	mov	a,_bp
      004A28 24 19            [12] 5655 	add	a,#0x19
      004A2A FC               [12] 5656 	mov	r4,a
      004A2B 7B 00            [12] 5657 	mov	r3,#0x00
      004A2D 7A 40            [12] 5658 	mov	r2,#0x40
      004A2F E5 08            [12] 5659 	mov	a,_bp
      004A31 24 0E            [12] 5660 	add	a,#0x0e
      004A33 F8               [12] 5661 	mov	r0,a
      004A34 86 82            [24] 5662 	mov	dpl,@r0
      004A36 08               [12] 5663 	inc	r0
      004A37 86 83            [24] 5664 	mov	dph,@r0
      004A39 08               [12] 5665 	inc	r0
      004A3A 86 F0            [24] 5666 	mov	b,@r0
      004A3C 12 70 E2         [24] 5667 	lcall	__gptrget
      004A3F FD               [12] 5668 	mov	r5,a
      004A40 A3               [24] 5669 	inc	dptr
      004A41 12 70 E2         [24] 5670 	lcall	__gptrget
      004A44 FE               [12] 5671 	mov	r6,a
      004A45 A3               [24] 5672 	inc	dptr
      004A46 12 70 E2         [24] 5673 	lcall	__gptrget
      004A49 FF               [12] 5674 	mov	r7,a
      004A4A C0 05            [24] 5675 	push	ar5
      004A4C C0 04            [24] 5676 	push	ar4
      004A4E C0 03            [24] 5677 	push	ar3
      004A50 C0 02            [24] 5678 	push	ar2
      004A52 8D 82            [24] 5679 	mov	dpl,r5
      004A54 8E 83            [24] 5680 	mov	dph,r6
      004A56 8F F0            [24] 5681 	mov	b,r7
      004A58 12 27 83         [24] 5682 	lcall	_stack_pop
      004A5B AE 82            [24] 5683 	mov	r6,dpl
      004A5D AF 83            [24] 5684 	mov	r7,dph
      004A5F 15 81            [12] 5685 	dec	sp
      004A61 15 81            [12] 5686 	dec	sp
      004A63 15 81            [12] 5687 	dec	sp
      004A65 D0 05            [24] 5688 	pop	ar5
      004A67 EE               [12] 5689 	mov	a,r6
      004A68 4F               [12] 5690 	orl	a,r7
      004A69 D0 07            [24] 5691 	pop	ar7
      004A6B D0 06            [24] 5692 	pop	ar6
      004A6D D0 05            [24] 5693 	pop	ar5
      004A6F 70 63            [24] 5694 	jnz	00197$
                                   5695 ;	calc.c:271: (void)stack_push(ctx->ps, d0);
      004A71 E5 08            [12] 5696 	mov	a,_bp
      004A73 24 0E            [12] 5697 	add	a,#0x0e
      004A75 F8               [12] 5698 	mov	r0,a
      004A76 86 82            [24] 5699 	mov	dpl,@r0
      004A78 08               [12] 5700 	inc	r0
      004A79 86 83            [24] 5701 	mov	dph,@r0
      004A7B 08               [12] 5702 	inc	r0
      004A7C 86 F0            [24] 5703 	mov	b,@r0
      004A7E 12 70 E2         [24] 5704 	lcall	__gptrget
      004A81 FA               [12] 5705 	mov	r2,a
      004A82 A3               [24] 5706 	inc	dptr
      004A83 12 70 E2         [24] 5707 	lcall	__gptrget
      004A86 FB               [12] 5708 	mov	r3,a
      004A87 A3               [24] 5709 	inc	dptr
      004A88 12 70 E2         [24] 5710 	lcall	__gptrget
      004A8B FC               [12] 5711 	mov	r4,a
      004A8C E5 08            [12] 5712 	mov	a,_bp
      004A8E 24 15            [12] 5713 	add	a,#0x15
      004A90 F8               [12] 5714 	mov	r0,a
      004A91 E6               [12] 5715 	mov	a,@r0
      004A92 C0 E0            [24] 5716 	push	acc
      004A94 08               [12] 5717 	inc	r0
      004A95 E6               [12] 5718 	mov	a,@r0
      004A96 C0 E0            [24] 5719 	push	acc
      004A98 08               [12] 5720 	inc	r0
      004A99 E6               [12] 5721 	mov	a,@r0
      004A9A C0 E0            [24] 5722 	push	acc
      004A9C 08               [12] 5723 	inc	r0
      004A9D E6               [12] 5724 	mov	a,@r0
      004A9E C0 E0            [24] 5725 	push	acc
      004AA0 8A 82            [24] 5726 	mov	dpl,r2
      004AA2 8B 83            [24] 5727 	mov	dph,r3
      004AA4 8C F0            [24] 5728 	mov	b,r4
      004AA6 12 26 B5         [24] 5729 	lcall	_stack_push
      004AA9 E5 81            [12] 5730 	mov	a,sp
      004AAB 24 FC            [12] 5731 	add	a,#0xfc
      004AAD F5 81            [12] 5732 	mov	sp,a
                                   5733 ;	calc.c:272: printstr("\r\nstack underflow\r\n");
      004AAF 7F B1            [12] 5734 	mov	r7,#___str_10
      004AB1 7E 89            [12] 5735 	mov	r6,#(___str_10 >> 8)
      004AB3 7D 80            [12] 5736 	mov	r5,#0x80
                                   5737 ;	calc.c:59: return;
      004AB5                       5738 00456$:
                                   5739 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004AB5 8F 82            [24] 5740 	mov	dpl,r7
      004AB7 8E 83            [24] 5741 	mov	dph,r6
      004AB9 8D F0            [24] 5742 	mov	b,r5
      004ABB 12 70 E2         [24] 5743 	lcall	__gptrget
      004ABE FC               [12] 5744 	mov	r4,a
      004ABF 70 03            [24] 5745 	jnz	01358$
      004AC1 02 57 14         [24] 5746 	ljmp	00249$
      004AC4                       5747 01358$:
      004AC4 7B 00            [12] 5748 	mov	r3,#0x00
      004AC6 8C 82            [24] 5749 	mov	dpl,r4
      004AC8 8B 83            [24] 5750 	mov	dph,r3
      004ACA 12 2B 70         [24] 5751 	lcall	_putchar
      004ACD 0F               [12] 5752 	inc	r7
                                   5753 ;	calc.c:272: printstr("\r\nstack underflow\r\n");
      004ACE BF 00 E4         [24] 5754 	cjne	r7,#0x00,00456$
      004AD1 0E               [12] 5755 	inc	r6
      004AD2 80 E1            [24] 5756 	sjmp	00456$
      004AD4                       5757 00197$:
                                   5758 ;	calc.c:273: } else if (!d0) {
      004AD4 E5 08            [12] 5759 	mov	a,_bp
      004AD6 24 15            [12] 5760 	add	a,#0x15
      004AD8 F8               [12] 5761 	mov	r0,a
      004AD9 E6               [12] 5762 	mov	a,@r0
      004ADA 08               [12] 5763 	inc	r0
      004ADB 46               [12] 5764 	orl	a,@r0
      004ADC 08               [12] 5765 	inc	r0
      004ADD 46               [12] 5766 	orl	a,@r0
      004ADE 08               [12] 5767 	inc	r0
      004ADF 46               [12] 5768 	orl	a,@r0
      004AE0 60 03            [24] 5769 	jz	01360$
      004AE2 02 4B 86         [24] 5770 	ljmp	00194$
      004AE5                       5771 01360$:
                                   5772 ;	calc.c:274: (void)stack_push(ctx->ps, d1);
      004AE5 E5 08            [12] 5773 	mov	a,_bp
      004AE7 24 0E            [12] 5774 	add	a,#0x0e
      004AE9 F8               [12] 5775 	mov	r0,a
      004AEA 86 82            [24] 5776 	mov	dpl,@r0
      004AEC 08               [12] 5777 	inc	r0
      004AED 86 83            [24] 5778 	mov	dph,@r0
      004AEF 08               [12] 5779 	inc	r0
      004AF0 86 F0            [24] 5780 	mov	b,@r0
      004AF2 12 70 E2         [24] 5781 	lcall	__gptrget
      004AF5 FA               [12] 5782 	mov	r2,a
      004AF6 A3               [24] 5783 	inc	dptr
      004AF7 12 70 E2         [24] 5784 	lcall	__gptrget
      004AFA FB               [12] 5785 	mov	r3,a
      004AFB A3               [24] 5786 	inc	dptr
      004AFC 12 70 E2         [24] 5787 	lcall	__gptrget
      004AFF FC               [12] 5788 	mov	r4,a
      004B00 E5 08            [12] 5789 	mov	a,_bp
      004B02 24 19            [12] 5790 	add	a,#0x19
      004B04 F8               [12] 5791 	mov	r0,a
      004B05 E6               [12] 5792 	mov	a,@r0
      004B06 C0 E0            [24] 5793 	push	acc
      004B08 08               [12] 5794 	inc	r0
      004B09 E6               [12] 5795 	mov	a,@r0
      004B0A C0 E0            [24] 5796 	push	acc
      004B0C 08               [12] 5797 	inc	r0
      004B0D E6               [12] 5798 	mov	a,@r0
      004B0E C0 E0            [24] 5799 	push	acc
      004B10 08               [12] 5800 	inc	r0
      004B11 E6               [12] 5801 	mov	a,@r0
      004B12 C0 E0            [24] 5802 	push	acc
      004B14 8A 82            [24] 5803 	mov	dpl,r2
      004B16 8B 83            [24] 5804 	mov	dph,r3
      004B18 8C F0            [24] 5805 	mov	b,r4
      004B1A 12 26 B5         [24] 5806 	lcall	_stack_push
      004B1D E5 81            [12] 5807 	mov	a,sp
      004B1F 24 FC            [12] 5808 	add	a,#0xfc
      004B21 F5 81            [12] 5809 	mov	sp,a
                                   5810 ;	calc.c:275: (void)stack_push(ctx->ps, d0);			
      004B23 E5 08            [12] 5811 	mov	a,_bp
      004B25 24 0E            [12] 5812 	add	a,#0x0e
      004B27 F8               [12] 5813 	mov	r0,a
      004B28 86 82            [24] 5814 	mov	dpl,@r0
      004B2A 08               [12] 5815 	inc	r0
      004B2B 86 83            [24] 5816 	mov	dph,@r0
      004B2D 08               [12] 5817 	inc	r0
      004B2E 86 F0            [24] 5818 	mov	b,@r0
      004B30 12 70 E2         [24] 5819 	lcall	__gptrget
      004B33 FA               [12] 5820 	mov	r2,a
      004B34 A3               [24] 5821 	inc	dptr
      004B35 12 70 E2         [24] 5822 	lcall	__gptrget
      004B38 FB               [12] 5823 	mov	r3,a
      004B39 A3               [24] 5824 	inc	dptr
      004B3A 12 70 E2         [24] 5825 	lcall	__gptrget
      004B3D FC               [12] 5826 	mov	r4,a
      004B3E E5 08            [12] 5827 	mov	a,_bp
      004B40 24 15            [12] 5828 	add	a,#0x15
      004B42 F8               [12] 5829 	mov	r0,a
      004B43 E6               [12] 5830 	mov	a,@r0
      004B44 C0 E0            [24] 5831 	push	acc
      004B46 08               [12] 5832 	inc	r0
      004B47 E6               [12] 5833 	mov	a,@r0
      004B48 C0 E0            [24] 5834 	push	acc
      004B4A 08               [12] 5835 	inc	r0
      004B4B E6               [12] 5836 	mov	a,@r0
      004B4C C0 E0            [24] 5837 	push	acc
      004B4E 08               [12] 5838 	inc	r0
      004B4F E6               [12] 5839 	mov	a,@r0
      004B50 C0 E0            [24] 5840 	push	acc
      004B52 8A 82            [24] 5841 	mov	dpl,r2
      004B54 8B 83            [24] 5842 	mov	dph,r3
      004B56 8C F0            [24] 5843 	mov	b,r4
      004B58 12 26 B5         [24] 5844 	lcall	_stack_push
      004B5B E5 81            [12] 5845 	mov	a,sp
      004B5D 24 FC            [12] 5846 	add	a,#0xfc
      004B5F F5 81            [12] 5847 	mov	sp,a
                                   5848 ;	calc.c:276: printstr("\r\ndivision by zero\r\n");
      004B61 7F 13            [12] 5849 	mov	r7,#___str_14
      004B63 7E 8A            [12] 5850 	mov	r6,#(___str_14 >> 8)
      004B65 7D 80            [12] 5851 	mov	r5,#0x80
                                   5852 ;	calc.c:59: return;
      004B67                       5853 00459$:
                                   5854 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004B67 8F 82            [24] 5855 	mov	dpl,r7
      004B69 8E 83            [24] 5856 	mov	dph,r6
      004B6B 8D F0            [24] 5857 	mov	b,r5
      004B6D 12 70 E2         [24] 5858 	lcall	__gptrget
      004B70 FC               [12] 5859 	mov	r4,a
      004B71 70 03            [24] 5860 	jnz	01361$
      004B73 02 57 14         [24] 5861 	ljmp	00249$
      004B76                       5862 01361$:
      004B76 7B 00            [12] 5863 	mov	r3,#0x00
      004B78 8C 82            [24] 5864 	mov	dpl,r4
      004B7A 8B 83            [24] 5865 	mov	dph,r3
      004B7C 12 2B 70         [24] 5866 	lcall	_putchar
      004B7F 0F               [12] 5867 	inc	r7
                                   5868 ;	calc.c:276: printstr("\r\ndivision by zero\r\n");
      004B80 BF 00 E4         [24] 5869 	cjne	r7,#0x00,00459$
      004B83 0E               [12] 5870 	inc	r6
      004B84 80 E1            [24] 5871 	sjmp	00459$
      004B86                       5872 00194$:
                                   5873 ;	calc.c:278: if (ctx->digit[0] == '%') d1 %= d0;
      004B86 8D 82            [24] 5874 	mov	dpl,r5
      004B88 8E 83            [24] 5875 	mov	dph,r6
      004B8A 8F F0            [24] 5876 	mov	b,r7
      004B8C 12 70 E2         [24] 5877 	lcall	__gptrget
      004B8F FD               [12] 5878 	mov	r5,a
      004B90 BD 25 45         [24] 5879 	cjne	r5,#0x25,00191$
      004B93 E5 08            [12] 5880 	mov	a,_bp
      004B95 24 15            [12] 5881 	add	a,#0x15
      004B97 F8               [12] 5882 	mov	r0,a
      004B98 E6               [12] 5883 	mov	a,@r0
      004B99 C0 E0            [24] 5884 	push	acc
      004B9B 08               [12] 5885 	inc	r0
      004B9C E6               [12] 5886 	mov	a,@r0
      004B9D C0 E0            [24] 5887 	push	acc
      004B9F 08               [12] 5888 	inc	r0
      004BA0 E6               [12] 5889 	mov	a,@r0
      004BA1 C0 E0            [24] 5890 	push	acc
      004BA3 08               [12] 5891 	inc	r0
      004BA4 E6               [12] 5892 	mov	a,@r0
      004BA5 C0 E0            [24] 5893 	push	acc
      004BA7 E5 08            [12] 5894 	mov	a,_bp
      004BA9 24 19            [12] 5895 	add	a,#0x19
      004BAB F8               [12] 5896 	mov	r0,a
      004BAC 86 82            [24] 5897 	mov	dpl,@r0
      004BAE 08               [12] 5898 	inc	r0
      004BAF 86 83            [24] 5899 	mov	dph,@r0
      004BB1 08               [12] 5900 	inc	r0
      004BB2 86 F0            [24] 5901 	mov	b,@r0
      004BB4 08               [12] 5902 	inc	r0
      004BB5 E6               [12] 5903 	mov	a,@r0
      004BB6 12 6D 20         [24] 5904 	lcall	__modslong
      004BB9 AC 82            [24] 5905 	mov	r4,dpl
      004BBB AD 83            [24] 5906 	mov	r5,dph
      004BBD AE F0            [24] 5907 	mov	r6,b
      004BBF FF               [12] 5908 	mov	r7,a
      004BC0 E5 81            [12] 5909 	mov	a,sp
      004BC2 24 FC            [12] 5910 	add	a,#0xfc
      004BC4 F5 81            [12] 5911 	mov	sp,a
      004BC6 E5 08            [12] 5912 	mov	a,_bp
      004BC8 24 19            [12] 5913 	add	a,#0x19
      004BCA F8               [12] 5914 	mov	r0,a
      004BCB A6 04            [24] 5915 	mov	@r0,ar4
      004BCD 08               [12] 5916 	inc	r0
      004BCE A6 05            [24] 5917 	mov	@r0,ar5
      004BD0 08               [12] 5918 	inc	r0
      004BD1 A6 06            [24] 5919 	mov	@r0,ar6
      004BD3 08               [12] 5920 	inc	r0
      004BD4 A6 07            [24] 5921 	mov	@r0,ar7
      004BD6 80 5F            [24] 5922 	sjmp	00192$
      004BD8                       5923 00191$:
                                   5924 ;	calc.c:279: else d1 = (unsigned long)d1 % (unsigned long)d0;
      004BD8 E5 08            [12] 5925 	mov	a,_bp
      004BDA 24 19            [12] 5926 	add	a,#0x19
      004BDC F8               [12] 5927 	mov	r0,a
      004BDD E5 08            [12] 5928 	mov	a,_bp
      004BDF 24 07            [12] 5929 	add	a,#0x07
      004BE1 F9               [12] 5930 	mov	r1,a
      004BE2 E6               [12] 5931 	mov	a,@r0
      004BE3 F7               [12] 5932 	mov	@r1,a
      004BE4 08               [12] 5933 	inc	r0
      004BE5 09               [12] 5934 	inc	r1
      004BE6 E6               [12] 5935 	mov	a,@r0
      004BE7 F7               [12] 5936 	mov	@r1,a
      004BE8 08               [12] 5937 	inc	r0
      004BE9 09               [12] 5938 	inc	r1
      004BEA E6               [12] 5939 	mov	a,@r0
      004BEB F7               [12] 5940 	mov	@r1,a
      004BEC 08               [12] 5941 	inc	r0
      004BED 09               [12] 5942 	inc	r1
      004BEE E6               [12] 5943 	mov	a,@r0
      004BEF F7               [12] 5944 	mov	@r1,a
      004BF0 E5 08            [12] 5945 	mov	a,_bp
      004BF2 24 15            [12] 5946 	add	a,#0x15
      004BF4 F8               [12] 5947 	mov	r0,a
      004BF5 86 02            [24] 5948 	mov	ar2,@r0
      004BF7 08               [12] 5949 	inc	r0
      004BF8 86 03            [24] 5950 	mov	ar3,@r0
      004BFA 08               [12] 5951 	inc	r0
      004BFB 86 06            [24] 5952 	mov	ar6,@r0
      004BFD 08               [12] 5953 	inc	r0
      004BFE 86 07            [24] 5954 	mov	ar7,@r0
      004C00 C0 02            [24] 5955 	push	ar2
      004C02 C0 03            [24] 5956 	push	ar3
      004C04 C0 06            [24] 5957 	push	ar6
      004C06 C0 07            [24] 5958 	push	ar7
      004C08 E5 08            [12] 5959 	mov	a,_bp
      004C0A 24 07            [12] 5960 	add	a,#0x07
      004C0C F8               [12] 5961 	mov	r0,a
      004C0D 86 82            [24] 5962 	mov	dpl,@r0
      004C0F 08               [12] 5963 	inc	r0
      004C10 86 83            [24] 5964 	mov	dph,@r0
      004C12 08               [12] 5965 	inc	r0
      004C13 86 F0            [24] 5966 	mov	b,@r0
      004C15 08               [12] 5967 	inc	r0
      004C16 E6               [12] 5968 	mov	a,@r0
      004C17 12 6E 17         [24] 5969 	lcall	__modulong
      004C1A AC 82            [24] 5970 	mov	r4,dpl
      004C1C AD 83            [24] 5971 	mov	r5,dph
      004C1E AE F0            [24] 5972 	mov	r6,b
      004C20 FF               [12] 5973 	mov	r7,a
      004C21 E5 81            [12] 5974 	mov	a,sp
      004C23 24 FC            [12] 5975 	add	a,#0xfc
      004C25 F5 81            [12] 5976 	mov	sp,a
      004C27 E5 08            [12] 5977 	mov	a,_bp
      004C29 24 19            [12] 5978 	add	a,#0x19
      004C2B F8               [12] 5979 	mov	r0,a
      004C2C A6 04            [24] 5980 	mov	@r0,ar4
      004C2E 08               [12] 5981 	inc	r0
      004C2F A6 05            [24] 5982 	mov	@r0,ar5
      004C31 08               [12] 5983 	inc	r0
      004C32 A6 06            [24] 5984 	mov	@r0,ar6
      004C34 08               [12] 5985 	inc	r0
      004C35 A6 07            [24] 5986 	mov	@r0,ar7
      004C37                       5987 00192$:
                                   5988 ;	calc.c:280: (void)stack_push(ctx->ps, d1);
      004C37 E5 08            [12] 5989 	mov	a,_bp
      004C39 24 0E            [12] 5990 	add	a,#0x0e
      004C3B F8               [12] 5991 	mov	r0,a
      004C3C 86 82            [24] 5992 	mov	dpl,@r0
      004C3E 08               [12] 5993 	inc	r0
      004C3F 86 83            [24] 5994 	mov	dph,@r0
      004C41 08               [12] 5995 	inc	r0
      004C42 86 F0            [24] 5996 	mov	b,@r0
      004C44 12 70 E2         [24] 5997 	lcall	__gptrget
      004C47 FD               [12] 5998 	mov	r5,a
      004C48 A3               [24] 5999 	inc	dptr
      004C49 12 70 E2         [24] 6000 	lcall	__gptrget
      004C4C FE               [12] 6001 	mov	r6,a
      004C4D A3               [24] 6002 	inc	dptr
      004C4E 12 70 E2         [24] 6003 	lcall	__gptrget
      004C51 FF               [12] 6004 	mov	r7,a
      004C52 E5 08            [12] 6005 	mov	a,_bp
      004C54 24 19            [12] 6006 	add	a,#0x19
      004C56 F8               [12] 6007 	mov	r0,a
      004C57 E6               [12] 6008 	mov	a,@r0
      004C58 C0 E0            [24] 6009 	push	acc
      004C5A 08               [12] 6010 	inc	r0
      004C5B E6               [12] 6011 	mov	a,@r0
      004C5C C0 E0            [24] 6012 	push	acc
      004C5E 08               [12] 6013 	inc	r0
      004C5F E6               [12] 6014 	mov	a,@r0
      004C60 C0 E0            [24] 6015 	push	acc
      004C62 08               [12] 6016 	inc	r0
      004C63 E6               [12] 6017 	mov	a,@r0
      004C64 C0 E0            [24] 6018 	push	acc
      004C66 8D 82            [24] 6019 	mov	dpl,r5
      004C68 8E 83            [24] 6020 	mov	dph,r6
      004C6A 8F F0            [24] 6021 	mov	b,r7
      004C6C 12 26 B5         [24] 6022 	lcall	_stack_push
      004C6F E5 81            [12] 6023 	mov	a,sp
      004C71 24 FC            [12] 6024 	add	a,#0xfc
      004C73 F5 81            [12] 6025 	mov	sp,a
                                   6026 ;	calc.c:282: break;
      004C75 02 57 14         [24] 6027 	ljmp	00249$
                                   6028 ;	calc.c:283: case '&':
      004C78                       6029 00202$:
                                   6030 ;	calc.c:284: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004C78 E5 08            [12] 6031 	mov	a,_bp
      004C7A 24 15            [12] 6032 	add	a,#0x15
      004C7C FF               [12] 6033 	mov	r7,a
      004C7D E5 08            [12] 6034 	mov	a,_bp
      004C7F 24 0E            [12] 6035 	add	a,#0x0e
      004C81 F8               [12] 6036 	mov	r0,a
      004C82 A6 07            [24] 6037 	mov	@r0,ar7
      004C84 08               [12] 6038 	inc	r0
      004C85 76 00            [12] 6039 	mov	@r0,#0x00
      004C87 08               [12] 6040 	inc	r0
      004C88 76 40            [12] 6041 	mov	@r0,#0x40
      004C8A E5 08            [12] 6042 	mov	a,_bp
      004C8C 24 12            [12] 6043 	add	a,#0x12
      004C8E F8               [12] 6044 	mov	r0,a
      004C8F 74 11            [12] 6045 	mov	a,#0x11
      004C91 26               [12] 6046 	add	a,@r0
      004C92 FA               [12] 6047 	mov	r2,a
      004C93 74 40            [12] 6048 	mov	a,#0x40
      004C95 08               [12] 6049 	inc	r0
      004C96 36               [12] 6050 	addc	a,@r0
      004C97 FB               [12] 6051 	mov	r3,a
      004C98 08               [12] 6052 	inc	r0
      004C99 86 04            [24] 6053 	mov	ar4,@r0
      004C9B 8A 82            [24] 6054 	mov	dpl,r2
      004C9D 8B 83            [24] 6055 	mov	dph,r3
      004C9F 8C F0            [24] 6056 	mov	b,r4
      004CA1 12 70 E2         [24] 6057 	lcall	__gptrget
      004CA4 FD               [12] 6058 	mov	r5,a
      004CA5 A3               [24] 6059 	inc	dptr
      004CA6 12 70 E2         [24] 6060 	lcall	__gptrget
      004CA9 FE               [12] 6061 	mov	r6,a
      004CAA A3               [24] 6062 	inc	dptr
      004CAB 12 70 E2         [24] 6063 	lcall	__gptrget
      004CAE FF               [12] 6064 	mov	r7,a
      004CAF C0 04            [24] 6065 	push	ar4
      004CB1 C0 03            [24] 6066 	push	ar3
      004CB3 C0 02            [24] 6067 	push	ar2
      004CB5 E5 08            [12] 6068 	mov	a,_bp
      004CB7 24 0E            [12] 6069 	add	a,#0x0e
      004CB9 F8               [12] 6070 	mov	r0,a
      004CBA E6               [12] 6071 	mov	a,@r0
      004CBB C0 E0            [24] 6072 	push	acc
      004CBD 08               [12] 6073 	inc	r0
      004CBE E6               [12] 6074 	mov	a,@r0
      004CBF C0 E0            [24] 6075 	push	acc
      004CC1 08               [12] 6076 	inc	r0
      004CC2 E6               [12] 6077 	mov	a,@r0
      004CC3 C0 E0            [24] 6078 	push	acc
      004CC5 8D 82            [24] 6079 	mov	dpl,r5
      004CC7 8E 83            [24] 6080 	mov	dph,r6
      004CC9 8F F0            [24] 6081 	mov	b,r7
      004CCB 12 27 83         [24] 6082 	lcall	_stack_pop
      004CCE AE 82            [24] 6083 	mov	r6,dpl
      004CD0 AF 83            [24] 6084 	mov	r7,dph
      004CD2 15 81            [12] 6085 	dec	sp
      004CD4 15 81            [12] 6086 	dec	sp
      004CD6 15 81            [12] 6087 	dec	sp
      004CD8 D0 02            [24] 6088 	pop	ar2
      004CDA D0 03            [24] 6089 	pop	ar3
      004CDC D0 04            [24] 6090 	pop	ar4
      004CDE EE               [12] 6091 	mov	a,r6
      004CDF 4F               [12] 6092 	orl	a,r7
      004CE0 70 25            [24] 6093 	jnz	00207$
      004CE2 7D B1            [12] 6094 	mov	r5,#___str_10
      004CE4 7C 89            [12] 6095 	mov	r4,#(___str_10 >> 8)
      004CE6 7B 80            [12] 6096 	mov	r3,#0x80
                                   6097 ;	calc.c:59: return;
      004CE8                       6098 00462$:
                                   6099 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004CE8 8D 82            [24] 6100 	mov	dpl,r5
      004CEA 8C 83            [24] 6101 	mov	dph,r4
      004CEC 8B F0            [24] 6102 	mov	b,r3
      004CEE 12 70 E2         [24] 6103 	lcall	__gptrget
      004CF1 FF               [12] 6104 	mov	r7,a
      004CF2 70 03            [24] 6105 	jnz	01366$
      004CF4 02 57 14         [24] 6106 	ljmp	00249$
      004CF7                       6107 01366$:
      004CF7 7E 00            [12] 6108 	mov	r6,#0x00
      004CF9 8F 82            [24] 6109 	mov	dpl,r7
      004CFB 8E 83            [24] 6110 	mov	dph,r6
      004CFD 12 2B 70         [24] 6111 	lcall	_putchar
      004D00 0D               [12] 6112 	inc	r5
                                   6113 ;	calc.c:284: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004D01 BD 00 E4         [24] 6114 	cjne	r5,#0x00,00462$
      004D04 0C               [12] 6115 	inc	r4
      004D05 80 E1            [24] 6116 	sjmp	00462$
      004D07                       6117 00207$:
                                   6118 ;	calc.c:285: else if (!stack_pop(ctx->ps, &d1)) {
      004D07 E5 08            [12] 6119 	mov	a,_bp
      004D09 24 19            [12] 6120 	add	a,#0x19
      004D0B FF               [12] 6121 	mov	r7,a
      004D0C E5 08            [12] 6122 	mov	a,_bp
      004D0E 24 0E            [12] 6123 	add	a,#0x0e
      004D10 F8               [12] 6124 	mov	r0,a
      004D11 A6 07            [24] 6125 	mov	@r0,ar7
      004D13 08               [12] 6126 	inc	r0
      004D14 76 00            [12] 6127 	mov	@r0,#0x00
      004D16 08               [12] 6128 	inc	r0
      004D17 76 40            [12] 6129 	mov	@r0,#0x40
      004D19 8A 82            [24] 6130 	mov	dpl,r2
      004D1B 8B 83            [24] 6131 	mov	dph,r3
      004D1D 8C F0            [24] 6132 	mov	b,r4
      004D1F 12 70 E2         [24] 6133 	lcall	__gptrget
      004D22 FD               [12] 6134 	mov	r5,a
      004D23 A3               [24] 6135 	inc	dptr
      004D24 12 70 E2         [24] 6136 	lcall	__gptrget
      004D27 FE               [12] 6137 	mov	r6,a
      004D28 A3               [24] 6138 	inc	dptr
      004D29 12 70 E2         [24] 6139 	lcall	__gptrget
      004D2C FF               [12] 6140 	mov	r7,a
      004D2D C0 04            [24] 6141 	push	ar4
      004D2F C0 03            [24] 6142 	push	ar3
      004D31 C0 02            [24] 6143 	push	ar2
      004D33 E5 08            [12] 6144 	mov	a,_bp
      004D35 24 0E            [12] 6145 	add	a,#0x0e
      004D37 F8               [12] 6146 	mov	r0,a
      004D38 E6               [12] 6147 	mov	a,@r0
      004D39 C0 E0            [24] 6148 	push	acc
      004D3B 08               [12] 6149 	inc	r0
      004D3C E6               [12] 6150 	mov	a,@r0
      004D3D C0 E0            [24] 6151 	push	acc
      004D3F 08               [12] 6152 	inc	r0
      004D40 E6               [12] 6153 	mov	a,@r0
      004D41 C0 E0            [24] 6154 	push	acc
      004D43 8D 82            [24] 6155 	mov	dpl,r5
      004D45 8E 83            [24] 6156 	mov	dph,r6
      004D47 8F F0            [24] 6157 	mov	b,r7
      004D49 12 27 83         [24] 6158 	lcall	_stack_pop
      004D4C AE 82            [24] 6159 	mov	r6,dpl
      004D4E AF 83            [24] 6160 	mov	r7,dph
      004D50 15 81            [12] 6161 	dec	sp
      004D52 15 81            [12] 6162 	dec	sp
      004D54 15 81            [12] 6163 	dec	sp
      004D56 D0 02            [24] 6164 	pop	ar2
      004D58 D0 03            [24] 6165 	pop	ar3
      004D5A D0 04            [24] 6166 	pop	ar4
      004D5C EE               [12] 6167 	mov	a,r6
      004D5D 4F               [12] 6168 	orl	a,r7
      004D5E 70 5C            [24] 6169 	jnz	00204$
                                   6170 ;	calc.c:286: (void)stack_push(ctx->ps, d0);
      004D60 8A 82            [24] 6171 	mov	dpl,r2
      004D62 8B 83            [24] 6172 	mov	dph,r3
      004D64 8C F0            [24] 6173 	mov	b,r4
      004D66 12 70 E2         [24] 6174 	lcall	__gptrget
      004D69 FD               [12] 6175 	mov	r5,a
      004D6A A3               [24] 6176 	inc	dptr
      004D6B 12 70 E2         [24] 6177 	lcall	__gptrget
      004D6E FE               [12] 6178 	mov	r6,a
      004D6F A3               [24] 6179 	inc	dptr
      004D70 12 70 E2         [24] 6180 	lcall	__gptrget
      004D73 FF               [12] 6181 	mov	r7,a
      004D74 E5 08            [12] 6182 	mov	a,_bp
      004D76 24 15            [12] 6183 	add	a,#0x15
      004D78 F8               [12] 6184 	mov	r0,a
      004D79 E6               [12] 6185 	mov	a,@r0
      004D7A C0 E0            [24] 6186 	push	acc
      004D7C 08               [12] 6187 	inc	r0
      004D7D E6               [12] 6188 	mov	a,@r0
      004D7E C0 E0            [24] 6189 	push	acc
      004D80 08               [12] 6190 	inc	r0
      004D81 E6               [12] 6191 	mov	a,@r0
      004D82 C0 E0            [24] 6192 	push	acc
      004D84 08               [12] 6193 	inc	r0
      004D85 E6               [12] 6194 	mov	a,@r0
      004D86 C0 E0            [24] 6195 	push	acc
      004D88 8D 82            [24] 6196 	mov	dpl,r5
      004D8A 8E 83            [24] 6197 	mov	dph,r6
      004D8C 8F F0            [24] 6198 	mov	b,r7
      004D8E 12 26 B5         [24] 6199 	lcall	_stack_push
      004D91 E5 81            [12] 6200 	mov	a,sp
      004D93 24 FC            [12] 6201 	add	a,#0xfc
      004D95 F5 81            [12] 6202 	mov	sp,a
                                   6203 ;	calc.c:287: printstr("\r\nstack underflow\r\n");
      004D97 7D B1            [12] 6204 	mov	r5,#___str_10
      004D99 7C 89            [12] 6205 	mov	r4,#(___str_10 >> 8)
      004D9B 7B 80            [12] 6206 	mov	r3,#0x80
                                   6207 ;	calc.c:59: return;
      004D9D                       6208 00465$:
                                   6209 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004D9D 8D 82            [24] 6210 	mov	dpl,r5
      004D9F 8C 83            [24] 6211 	mov	dph,r4
      004DA1 8B F0            [24] 6212 	mov	b,r3
      004DA3 12 70 E2         [24] 6213 	lcall	__gptrget
      004DA6 FF               [12] 6214 	mov	r7,a
      004DA7 70 03            [24] 6215 	jnz	01369$
      004DA9 02 57 14         [24] 6216 	ljmp	00249$
      004DAC                       6217 01369$:
      004DAC 7E 00            [12] 6218 	mov	r6,#0x00
      004DAE 8F 82            [24] 6219 	mov	dpl,r7
      004DB0 8E 83            [24] 6220 	mov	dph,r6
      004DB2 12 2B 70         [24] 6221 	lcall	_putchar
      004DB5 0D               [12] 6222 	inc	r5
                                   6223 ;	calc.c:287: printstr("\r\nstack underflow\r\n");
      004DB6 BD 00 E4         [24] 6224 	cjne	r5,#0x00,00465$
      004DB9 0C               [12] 6225 	inc	r4
      004DBA 80 E1            [24] 6226 	sjmp	00465$
      004DBC                       6227 00204$:
                                   6228 ;	calc.c:289: d1 &= d0;
      004DBC E5 08            [12] 6229 	mov	a,_bp
      004DBE 24 19            [12] 6230 	add	a,#0x19
      004DC0 F8               [12] 6231 	mov	r0,a
      004DC1 E5 08            [12] 6232 	mov	a,_bp
      004DC3 24 15            [12] 6233 	add	a,#0x15
      004DC5 F9               [12] 6234 	mov	r1,a
      004DC6 E7               [12] 6235 	mov	a,@r1
      004DC7 56               [12] 6236 	anl	a,@r0
      004DC8 F6               [12] 6237 	mov	@r0,a
      004DC9 09               [12] 6238 	inc	r1
      004DCA E7               [12] 6239 	mov	a,@r1
      004DCB 08               [12] 6240 	inc	r0
      004DCC 56               [12] 6241 	anl	a,@r0
      004DCD F6               [12] 6242 	mov	@r0,a
      004DCE 09               [12] 6243 	inc	r1
      004DCF E7               [12] 6244 	mov	a,@r1
      004DD0 08               [12] 6245 	inc	r0
      004DD1 56               [12] 6246 	anl	a,@r0
      004DD2 F6               [12] 6247 	mov	@r0,a
      004DD3 09               [12] 6248 	inc	r1
      004DD4 E7               [12] 6249 	mov	a,@r1
      004DD5 08               [12] 6250 	inc	r0
      004DD6 56               [12] 6251 	anl	a,@r0
      004DD7 F6               [12] 6252 	mov	@r0,a
                                   6253 ;	calc.c:290: (void)stack_push(ctx->ps, d1);
      004DD8 8A 82            [24] 6254 	mov	dpl,r2
      004DDA 8B 83            [24] 6255 	mov	dph,r3
      004DDC 8C F0            [24] 6256 	mov	b,r4
      004DDE 12 70 E2         [24] 6257 	lcall	__gptrget
      004DE1 FA               [12] 6258 	mov	r2,a
      004DE2 A3               [24] 6259 	inc	dptr
      004DE3 12 70 E2         [24] 6260 	lcall	__gptrget
      004DE6 FB               [12] 6261 	mov	r3,a
      004DE7 A3               [24] 6262 	inc	dptr
      004DE8 12 70 E2         [24] 6263 	lcall	__gptrget
      004DEB FC               [12] 6264 	mov	r4,a
      004DEC E5 08            [12] 6265 	mov	a,_bp
      004DEE 24 19            [12] 6266 	add	a,#0x19
      004DF0 F8               [12] 6267 	mov	r0,a
      004DF1 E6               [12] 6268 	mov	a,@r0
      004DF2 C0 E0            [24] 6269 	push	acc
      004DF4 08               [12] 6270 	inc	r0
      004DF5 E6               [12] 6271 	mov	a,@r0
      004DF6 C0 E0            [24] 6272 	push	acc
      004DF8 08               [12] 6273 	inc	r0
      004DF9 E6               [12] 6274 	mov	a,@r0
      004DFA C0 E0            [24] 6275 	push	acc
      004DFC 08               [12] 6276 	inc	r0
      004DFD E6               [12] 6277 	mov	a,@r0
      004DFE C0 E0            [24] 6278 	push	acc
      004E00 8A 82            [24] 6279 	mov	dpl,r2
      004E02 8B 83            [24] 6280 	mov	dph,r3
      004E04 8C F0            [24] 6281 	mov	b,r4
      004E06 12 26 B5         [24] 6282 	lcall	_stack_push
      004E09 E5 81            [12] 6283 	mov	a,sp
      004E0B 24 FC            [12] 6284 	add	a,#0xfc
      004E0D F5 81            [12] 6285 	mov	sp,a
                                   6286 ;	calc.c:292: break;
      004E0F 02 57 14         [24] 6287 	ljmp	00249$
                                   6288 ;	calc.c:293: case '|':
      004E12                       6289 00209$:
                                   6290 ;	calc.c:294: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004E12 E5 08            [12] 6291 	mov	a,_bp
      004E14 24 15            [12] 6292 	add	a,#0x15
      004E16 FF               [12] 6293 	mov	r7,a
      004E17 E5 08            [12] 6294 	mov	a,_bp
      004E19 24 0E            [12] 6295 	add	a,#0x0e
      004E1B F8               [12] 6296 	mov	r0,a
      004E1C A6 07            [24] 6297 	mov	@r0,ar7
      004E1E 08               [12] 6298 	inc	r0
      004E1F 76 00            [12] 6299 	mov	@r0,#0x00
      004E21 08               [12] 6300 	inc	r0
      004E22 76 40            [12] 6301 	mov	@r0,#0x40
      004E24 E5 08            [12] 6302 	mov	a,_bp
      004E26 24 12            [12] 6303 	add	a,#0x12
      004E28 F8               [12] 6304 	mov	r0,a
      004E29 74 11            [12] 6305 	mov	a,#0x11
      004E2B 26               [12] 6306 	add	a,@r0
      004E2C FA               [12] 6307 	mov	r2,a
      004E2D 74 40            [12] 6308 	mov	a,#0x40
      004E2F 08               [12] 6309 	inc	r0
      004E30 36               [12] 6310 	addc	a,@r0
      004E31 FB               [12] 6311 	mov	r3,a
      004E32 08               [12] 6312 	inc	r0
      004E33 86 04            [24] 6313 	mov	ar4,@r0
      004E35 8A 82            [24] 6314 	mov	dpl,r2
      004E37 8B 83            [24] 6315 	mov	dph,r3
      004E39 8C F0            [24] 6316 	mov	b,r4
      004E3B 12 70 E2         [24] 6317 	lcall	__gptrget
      004E3E FD               [12] 6318 	mov	r5,a
      004E3F A3               [24] 6319 	inc	dptr
      004E40 12 70 E2         [24] 6320 	lcall	__gptrget
      004E43 FE               [12] 6321 	mov	r6,a
      004E44 A3               [24] 6322 	inc	dptr
      004E45 12 70 E2         [24] 6323 	lcall	__gptrget
      004E48 FF               [12] 6324 	mov	r7,a
      004E49 C0 04            [24] 6325 	push	ar4
      004E4B C0 03            [24] 6326 	push	ar3
      004E4D C0 02            [24] 6327 	push	ar2
      004E4F E5 08            [12] 6328 	mov	a,_bp
      004E51 24 0E            [12] 6329 	add	a,#0x0e
      004E53 F8               [12] 6330 	mov	r0,a
      004E54 E6               [12] 6331 	mov	a,@r0
      004E55 C0 E0            [24] 6332 	push	acc
      004E57 08               [12] 6333 	inc	r0
      004E58 E6               [12] 6334 	mov	a,@r0
      004E59 C0 E0            [24] 6335 	push	acc
      004E5B 08               [12] 6336 	inc	r0
      004E5C E6               [12] 6337 	mov	a,@r0
      004E5D C0 E0            [24] 6338 	push	acc
      004E5F 8D 82            [24] 6339 	mov	dpl,r5
      004E61 8E 83            [24] 6340 	mov	dph,r6
      004E63 8F F0            [24] 6341 	mov	b,r7
      004E65 12 27 83         [24] 6342 	lcall	_stack_pop
      004E68 AE 82            [24] 6343 	mov	r6,dpl
      004E6A AF 83            [24] 6344 	mov	r7,dph
      004E6C 15 81            [12] 6345 	dec	sp
      004E6E 15 81            [12] 6346 	dec	sp
      004E70 15 81            [12] 6347 	dec	sp
      004E72 D0 02            [24] 6348 	pop	ar2
      004E74 D0 03            [24] 6349 	pop	ar3
      004E76 D0 04            [24] 6350 	pop	ar4
      004E78 EE               [12] 6351 	mov	a,r6
      004E79 4F               [12] 6352 	orl	a,r7
      004E7A 70 25            [24] 6353 	jnz	00214$
      004E7C 7D B1            [12] 6354 	mov	r5,#___str_10
      004E7E 7C 89            [12] 6355 	mov	r4,#(___str_10 >> 8)
      004E80 7B 80            [12] 6356 	mov	r3,#0x80
                                   6357 ;	calc.c:59: return;
      004E82                       6358 00468$:
                                   6359 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004E82 8D 82            [24] 6360 	mov	dpl,r5
      004E84 8C 83            [24] 6361 	mov	dph,r4
      004E86 8B F0            [24] 6362 	mov	b,r3
      004E88 12 70 E2         [24] 6363 	lcall	__gptrget
      004E8B FF               [12] 6364 	mov	r7,a
      004E8C 70 03            [24] 6365 	jnz	01372$
      004E8E 02 57 14         [24] 6366 	ljmp	00249$
      004E91                       6367 01372$:
      004E91 7E 00            [12] 6368 	mov	r6,#0x00
      004E93 8F 82            [24] 6369 	mov	dpl,r7
      004E95 8E 83            [24] 6370 	mov	dph,r6
      004E97 12 2B 70         [24] 6371 	lcall	_putchar
      004E9A 0D               [12] 6372 	inc	r5
                                   6373 ;	calc.c:294: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004E9B BD 00 E4         [24] 6374 	cjne	r5,#0x00,00468$
      004E9E 0C               [12] 6375 	inc	r4
      004E9F 80 E1            [24] 6376 	sjmp	00468$
      004EA1                       6377 00214$:
                                   6378 ;	calc.c:295: else if (!stack_pop(ctx->ps, &d1)) {
      004EA1 E5 08            [12] 6379 	mov	a,_bp
      004EA3 24 19            [12] 6380 	add	a,#0x19
      004EA5 FF               [12] 6381 	mov	r7,a
      004EA6 E5 08            [12] 6382 	mov	a,_bp
      004EA8 24 0E            [12] 6383 	add	a,#0x0e
      004EAA F8               [12] 6384 	mov	r0,a
      004EAB A6 07            [24] 6385 	mov	@r0,ar7
      004EAD 08               [12] 6386 	inc	r0
      004EAE 76 00            [12] 6387 	mov	@r0,#0x00
      004EB0 08               [12] 6388 	inc	r0
      004EB1 76 40            [12] 6389 	mov	@r0,#0x40
      004EB3 8A 82            [24] 6390 	mov	dpl,r2
      004EB5 8B 83            [24] 6391 	mov	dph,r3
      004EB7 8C F0            [24] 6392 	mov	b,r4
      004EB9 12 70 E2         [24] 6393 	lcall	__gptrget
      004EBC FD               [12] 6394 	mov	r5,a
      004EBD A3               [24] 6395 	inc	dptr
      004EBE 12 70 E2         [24] 6396 	lcall	__gptrget
      004EC1 FE               [12] 6397 	mov	r6,a
      004EC2 A3               [24] 6398 	inc	dptr
      004EC3 12 70 E2         [24] 6399 	lcall	__gptrget
      004EC6 FF               [12] 6400 	mov	r7,a
      004EC7 C0 04            [24] 6401 	push	ar4
      004EC9 C0 03            [24] 6402 	push	ar3
      004ECB C0 02            [24] 6403 	push	ar2
      004ECD E5 08            [12] 6404 	mov	a,_bp
      004ECF 24 0E            [12] 6405 	add	a,#0x0e
      004ED1 F8               [12] 6406 	mov	r0,a
      004ED2 E6               [12] 6407 	mov	a,@r0
      004ED3 C0 E0            [24] 6408 	push	acc
      004ED5 08               [12] 6409 	inc	r0
      004ED6 E6               [12] 6410 	mov	a,@r0
      004ED7 C0 E0            [24] 6411 	push	acc
      004ED9 08               [12] 6412 	inc	r0
      004EDA E6               [12] 6413 	mov	a,@r0
      004EDB C0 E0            [24] 6414 	push	acc
      004EDD 8D 82            [24] 6415 	mov	dpl,r5
      004EDF 8E 83            [24] 6416 	mov	dph,r6
      004EE1 8F F0            [24] 6417 	mov	b,r7
      004EE3 12 27 83         [24] 6418 	lcall	_stack_pop
      004EE6 AE 82            [24] 6419 	mov	r6,dpl
      004EE8 AF 83            [24] 6420 	mov	r7,dph
      004EEA 15 81            [12] 6421 	dec	sp
      004EEC 15 81            [12] 6422 	dec	sp
      004EEE 15 81            [12] 6423 	dec	sp
      004EF0 D0 02            [24] 6424 	pop	ar2
      004EF2 D0 03            [24] 6425 	pop	ar3
      004EF4 D0 04            [24] 6426 	pop	ar4
      004EF6 EE               [12] 6427 	mov	a,r6
      004EF7 4F               [12] 6428 	orl	a,r7
      004EF8 70 5C            [24] 6429 	jnz	00211$
                                   6430 ;	calc.c:296: (void)stack_push(ctx->ps, d0);
      004EFA 8A 82            [24] 6431 	mov	dpl,r2
      004EFC 8B 83            [24] 6432 	mov	dph,r3
      004EFE 8C F0            [24] 6433 	mov	b,r4
      004F00 12 70 E2         [24] 6434 	lcall	__gptrget
      004F03 FD               [12] 6435 	mov	r5,a
      004F04 A3               [24] 6436 	inc	dptr
      004F05 12 70 E2         [24] 6437 	lcall	__gptrget
      004F08 FE               [12] 6438 	mov	r6,a
      004F09 A3               [24] 6439 	inc	dptr
      004F0A 12 70 E2         [24] 6440 	lcall	__gptrget
      004F0D FF               [12] 6441 	mov	r7,a
      004F0E E5 08            [12] 6442 	mov	a,_bp
      004F10 24 15            [12] 6443 	add	a,#0x15
      004F12 F8               [12] 6444 	mov	r0,a
      004F13 E6               [12] 6445 	mov	a,@r0
      004F14 C0 E0            [24] 6446 	push	acc
      004F16 08               [12] 6447 	inc	r0
      004F17 E6               [12] 6448 	mov	a,@r0
      004F18 C0 E0            [24] 6449 	push	acc
      004F1A 08               [12] 6450 	inc	r0
      004F1B E6               [12] 6451 	mov	a,@r0
      004F1C C0 E0            [24] 6452 	push	acc
      004F1E 08               [12] 6453 	inc	r0
      004F1F E6               [12] 6454 	mov	a,@r0
      004F20 C0 E0            [24] 6455 	push	acc
      004F22 8D 82            [24] 6456 	mov	dpl,r5
      004F24 8E 83            [24] 6457 	mov	dph,r6
      004F26 8F F0            [24] 6458 	mov	b,r7
      004F28 12 26 B5         [24] 6459 	lcall	_stack_push
      004F2B E5 81            [12] 6460 	mov	a,sp
      004F2D 24 FC            [12] 6461 	add	a,#0xfc
      004F2F F5 81            [12] 6462 	mov	sp,a
                                   6463 ;	calc.c:297: printstr("\r\nstack underflow\r\n");
      004F31 7D B1            [12] 6464 	mov	r5,#___str_10
      004F33 7C 89            [12] 6465 	mov	r4,#(___str_10 >> 8)
      004F35 7B 80            [12] 6466 	mov	r3,#0x80
                                   6467 ;	calc.c:59: return;
      004F37                       6468 00471$:
                                   6469 ;	calc.c:57: for (; *s; s++) putchar(*s);
      004F37 8D 82            [24] 6470 	mov	dpl,r5
      004F39 8C 83            [24] 6471 	mov	dph,r4
      004F3B 8B F0            [24] 6472 	mov	b,r3
      004F3D 12 70 E2         [24] 6473 	lcall	__gptrget
      004F40 FF               [12] 6474 	mov	r7,a
      004F41 70 03            [24] 6475 	jnz	01375$
      004F43 02 57 14         [24] 6476 	ljmp	00249$
      004F46                       6477 01375$:
      004F46 7E 00            [12] 6478 	mov	r6,#0x00
      004F48 8F 82            [24] 6479 	mov	dpl,r7
      004F4A 8E 83            [24] 6480 	mov	dph,r6
      004F4C 12 2B 70         [24] 6481 	lcall	_putchar
      004F4F 0D               [12] 6482 	inc	r5
                                   6483 ;	calc.c:297: printstr("\r\nstack underflow\r\n");
      004F50 BD 00 E4         [24] 6484 	cjne	r5,#0x00,00471$
      004F53 0C               [12] 6485 	inc	r4
      004F54 80 E1            [24] 6486 	sjmp	00471$
      004F56                       6487 00211$:
                                   6488 ;	calc.c:299: d1 |= d0;
      004F56 E5 08            [12] 6489 	mov	a,_bp
      004F58 24 19            [12] 6490 	add	a,#0x19
      004F5A F8               [12] 6491 	mov	r0,a
      004F5B E5 08            [12] 6492 	mov	a,_bp
      004F5D 24 15            [12] 6493 	add	a,#0x15
      004F5F F9               [12] 6494 	mov	r1,a
      004F60 E7               [12] 6495 	mov	a,@r1
      004F61 46               [12] 6496 	orl	a,@r0
      004F62 F6               [12] 6497 	mov	@r0,a
      004F63 09               [12] 6498 	inc	r1
      004F64 E7               [12] 6499 	mov	a,@r1
      004F65 08               [12] 6500 	inc	r0
      004F66 46               [12] 6501 	orl	a,@r0
      004F67 F6               [12] 6502 	mov	@r0,a
      004F68 09               [12] 6503 	inc	r1
      004F69 E7               [12] 6504 	mov	a,@r1
      004F6A 08               [12] 6505 	inc	r0
      004F6B 46               [12] 6506 	orl	a,@r0
      004F6C F6               [12] 6507 	mov	@r0,a
      004F6D 09               [12] 6508 	inc	r1
      004F6E E7               [12] 6509 	mov	a,@r1
      004F6F 08               [12] 6510 	inc	r0
      004F70 46               [12] 6511 	orl	a,@r0
      004F71 F6               [12] 6512 	mov	@r0,a
                                   6513 ;	calc.c:300: (void)stack_push(ctx->ps, d1);
      004F72 8A 82            [24] 6514 	mov	dpl,r2
      004F74 8B 83            [24] 6515 	mov	dph,r3
      004F76 8C F0            [24] 6516 	mov	b,r4
      004F78 12 70 E2         [24] 6517 	lcall	__gptrget
      004F7B FA               [12] 6518 	mov	r2,a
      004F7C A3               [24] 6519 	inc	dptr
      004F7D 12 70 E2         [24] 6520 	lcall	__gptrget
      004F80 FB               [12] 6521 	mov	r3,a
      004F81 A3               [24] 6522 	inc	dptr
      004F82 12 70 E2         [24] 6523 	lcall	__gptrget
      004F85 FC               [12] 6524 	mov	r4,a
      004F86 E5 08            [12] 6525 	mov	a,_bp
      004F88 24 19            [12] 6526 	add	a,#0x19
      004F8A F8               [12] 6527 	mov	r0,a
      004F8B E6               [12] 6528 	mov	a,@r0
      004F8C C0 E0            [24] 6529 	push	acc
      004F8E 08               [12] 6530 	inc	r0
      004F8F E6               [12] 6531 	mov	a,@r0
      004F90 C0 E0            [24] 6532 	push	acc
      004F92 08               [12] 6533 	inc	r0
      004F93 E6               [12] 6534 	mov	a,@r0
      004F94 C0 E0            [24] 6535 	push	acc
      004F96 08               [12] 6536 	inc	r0
      004F97 E6               [12] 6537 	mov	a,@r0
      004F98 C0 E0            [24] 6538 	push	acc
      004F9A 8A 82            [24] 6539 	mov	dpl,r2
      004F9C 8B 83            [24] 6540 	mov	dph,r3
      004F9E 8C F0            [24] 6541 	mov	b,r4
      004FA0 12 26 B5         [24] 6542 	lcall	_stack_push
      004FA3 E5 81            [12] 6543 	mov	a,sp
      004FA5 24 FC            [12] 6544 	add	a,#0xfc
      004FA7 F5 81            [12] 6545 	mov	sp,a
                                   6546 ;	calc.c:302: break;
      004FA9 02 57 14         [24] 6547 	ljmp	00249$
                                   6548 ;	calc.c:303: case '^':
      004FAC                       6549 00216$:
                                   6550 ;	calc.c:304: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004FAC E5 08            [12] 6551 	mov	a,_bp
      004FAE 24 15            [12] 6552 	add	a,#0x15
      004FB0 FF               [12] 6553 	mov	r7,a
      004FB1 E5 08            [12] 6554 	mov	a,_bp
      004FB3 24 0E            [12] 6555 	add	a,#0x0e
      004FB5 F8               [12] 6556 	mov	r0,a
      004FB6 A6 07            [24] 6557 	mov	@r0,ar7
      004FB8 08               [12] 6558 	inc	r0
      004FB9 76 00            [12] 6559 	mov	@r0,#0x00
      004FBB 08               [12] 6560 	inc	r0
      004FBC 76 40            [12] 6561 	mov	@r0,#0x40
      004FBE E5 08            [12] 6562 	mov	a,_bp
      004FC0 24 12            [12] 6563 	add	a,#0x12
      004FC2 F8               [12] 6564 	mov	r0,a
      004FC3 74 11            [12] 6565 	mov	a,#0x11
      004FC5 26               [12] 6566 	add	a,@r0
      004FC6 FA               [12] 6567 	mov	r2,a
      004FC7 74 40            [12] 6568 	mov	a,#0x40
      004FC9 08               [12] 6569 	inc	r0
      004FCA 36               [12] 6570 	addc	a,@r0
      004FCB FB               [12] 6571 	mov	r3,a
      004FCC 08               [12] 6572 	inc	r0
      004FCD 86 04            [24] 6573 	mov	ar4,@r0
      004FCF 8A 82            [24] 6574 	mov	dpl,r2
      004FD1 8B 83            [24] 6575 	mov	dph,r3
      004FD3 8C F0            [24] 6576 	mov	b,r4
      004FD5 12 70 E2         [24] 6577 	lcall	__gptrget
      004FD8 FD               [12] 6578 	mov	r5,a
      004FD9 A3               [24] 6579 	inc	dptr
      004FDA 12 70 E2         [24] 6580 	lcall	__gptrget
      004FDD FE               [12] 6581 	mov	r6,a
      004FDE A3               [24] 6582 	inc	dptr
      004FDF 12 70 E2         [24] 6583 	lcall	__gptrget
      004FE2 FF               [12] 6584 	mov	r7,a
      004FE3 C0 04            [24] 6585 	push	ar4
      004FE5 C0 03            [24] 6586 	push	ar3
      004FE7 C0 02            [24] 6587 	push	ar2
      004FE9 E5 08            [12] 6588 	mov	a,_bp
      004FEB 24 0E            [12] 6589 	add	a,#0x0e
      004FED F8               [12] 6590 	mov	r0,a
      004FEE E6               [12] 6591 	mov	a,@r0
      004FEF C0 E0            [24] 6592 	push	acc
      004FF1 08               [12] 6593 	inc	r0
      004FF2 E6               [12] 6594 	mov	a,@r0
      004FF3 C0 E0            [24] 6595 	push	acc
      004FF5 08               [12] 6596 	inc	r0
      004FF6 E6               [12] 6597 	mov	a,@r0
      004FF7 C0 E0            [24] 6598 	push	acc
      004FF9 8D 82            [24] 6599 	mov	dpl,r5
      004FFB 8E 83            [24] 6600 	mov	dph,r6
      004FFD 8F F0            [24] 6601 	mov	b,r7
      004FFF 12 27 83         [24] 6602 	lcall	_stack_pop
      005002 AE 82            [24] 6603 	mov	r6,dpl
      005004 AF 83            [24] 6604 	mov	r7,dph
      005006 15 81            [12] 6605 	dec	sp
      005008 15 81            [12] 6606 	dec	sp
      00500A 15 81            [12] 6607 	dec	sp
      00500C D0 02            [24] 6608 	pop	ar2
      00500E D0 03            [24] 6609 	pop	ar3
      005010 D0 04            [24] 6610 	pop	ar4
      005012 EE               [12] 6611 	mov	a,r6
      005013 4F               [12] 6612 	orl	a,r7
      005014 70 25            [24] 6613 	jnz	00221$
      005016 7D B1            [12] 6614 	mov	r5,#___str_10
      005018 7C 89            [12] 6615 	mov	r4,#(___str_10 >> 8)
      00501A 7B 80            [12] 6616 	mov	r3,#0x80
                                   6617 ;	calc.c:59: return;
      00501C                       6618 00474$:
                                   6619 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00501C 8D 82            [24] 6620 	mov	dpl,r5
      00501E 8C 83            [24] 6621 	mov	dph,r4
      005020 8B F0            [24] 6622 	mov	b,r3
      005022 12 70 E2         [24] 6623 	lcall	__gptrget
      005025 FF               [12] 6624 	mov	r7,a
      005026 70 03            [24] 6625 	jnz	01378$
      005028 02 57 14         [24] 6626 	ljmp	00249$
      00502B                       6627 01378$:
      00502B 7E 00            [12] 6628 	mov	r6,#0x00
      00502D 8F 82            [24] 6629 	mov	dpl,r7
      00502F 8E 83            [24] 6630 	mov	dph,r6
      005031 12 2B 70         [24] 6631 	lcall	_putchar
      005034 0D               [12] 6632 	inc	r5
                                   6633 ;	calc.c:304: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005035 BD 00 E4         [24] 6634 	cjne	r5,#0x00,00474$
      005038 0C               [12] 6635 	inc	r4
      005039 80 E1            [24] 6636 	sjmp	00474$
      00503B                       6637 00221$:
                                   6638 ;	calc.c:305: else if (!stack_pop(ctx->ps, &d1)) {
      00503B E5 08            [12] 6639 	mov	a,_bp
      00503D 24 19            [12] 6640 	add	a,#0x19
      00503F FF               [12] 6641 	mov	r7,a
      005040 E5 08            [12] 6642 	mov	a,_bp
      005042 24 0E            [12] 6643 	add	a,#0x0e
      005044 F8               [12] 6644 	mov	r0,a
      005045 A6 07            [24] 6645 	mov	@r0,ar7
      005047 08               [12] 6646 	inc	r0
      005048 76 00            [12] 6647 	mov	@r0,#0x00
      00504A 08               [12] 6648 	inc	r0
      00504B 76 40            [12] 6649 	mov	@r0,#0x40
      00504D 8A 82            [24] 6650 	mov	dpl,r2
      00504F 8B 83            [24] 6651 	mov	dph,r3
      005051 8C F0            [24] 6652 	mov	b,r4
      005053 12 70 E2         [24] 6653 	lcall	__gptrget
      005056 FD               [12] 6654 	mov	r5,a
      005057 A3               [24] 6655 	inc	dptr
      005058 12 70 E2         [24] 6656 	lcall	__gptrget
      00505B FE               [12] 6657 	mov	r6,a
      00505C A3               [24] 6658 	inc	dptr
      00505D 12 70 E2         [24] 6659 	lcall	__gptrget
      005060 FF               [12] 6660 	mov	r7,a
      005061 C0 04            [24] 6661 	push	ar4
      005063 C0 03            [24] 6662 	push	ar3
      005065 C0 02            [24] 6663 	push	ar2
      005067 E5 08            [12] 6664 	mov	a,_bp
      005069 24 0E            [12] 6665 	add	a,#0x0e
      00506B F8               [12] 6666 	mov	r0,a
      00506C E6               [12] 6667 	mov	a,@r0
      00506D C0 E0            [24] 6668 	push	acc
      00506F 08               [12] 6669 	inc	r0
      005070 E6               [12] 6670 	mov	a,@r0
      005071 C0 E0            [24] 6671 	push	acc
      005073 08               [12] 6672 	inc	r0
      005074 E6               [12] 6673 	mov	a,@r0
      005075 C0 E0            [24] 6674 	push	acc
      005077 8D 82            [24] 6675 	mov	dpl,r5
      005079 8E 83            [24] 6676 	mov	dph,r6
      00507B 8F F0            [24] 6677 	mov	b,r7
      00507D 12 27 83         [24] 6678 	lcall	_stack_pop
      005080 AE 82            [24] 6679 	mov	r6,dpl
      005082 AF 83            [24] 6680 	mov	r7,dph
      005084 15 81            [12] 6681 	dec	sp
      005086 15 81            [12] 6682 	dec	sp
      005088 15 81            [12] 6683 	dec	sp
      00508A D0 02            [24] 6684 	pop	ar2
      00508C D0 03            [24] 6685 	pop	ar3
      00508E D0 04            [24] 6686 	pop	ar4
      005090 EE               [12] 6687 	mov	a,r6
      005091 4F               [12] 6688 	orl	a,r7
      005092 70 5C            [24] 6689 	jnz	00218$
                                   6690 ;	calc.c:306: (void)stack_push(ctx->ps, d0);
      005094 8A 82            [24] 6691 	mov	dpl,r2
      005096 8B 83            [24] 6692 	mov	dph,r3
      005098 8C F0            [24] 6693 	mov	b,r4
      00509A 12 70 E2         [24] 6694 	lcall	__gptrget
      00509D FD               [12] 6695 	mov	r5,a
      00509E A3               [24] 6696 	inc	dptr
      00509F 12 70 E2         [24] 6697 	lcall	__gptrget
      0050A2 FE               [12] 6698 	mov	r6,a
      0050A3 A3               [24] 6699 	inc	dptr
      0050A4 12 70 E2         [24] 6700 	lcall	__gptrget
      0050A7 FF               [12] 6701 	mov	r7,a
      0050A8 E5 08            [12] 6702 	mov	a,_bp
      0050AA 24 15            [12] 6703 	add	a,#0x15
      0050AC F8               [12] 6704 	mov	r0,a
      0050AD E6               [12] 6705 	mov	a,@r0
      0050AE C0 E0            [24] 6706 	push	acc
      0050B0 08               [12] 6707 	inc	r0
      0050B1 E6               [12] 6708 	mov	a,@r0
      0050B2 C0 E0            [24] 6709 	push	acc
      0050B4 08               [12] 6710 	inc	r0
      0050B5 E6               [12] 6711 	mov	a,@r0
      0050B6 C0 E0            [24] 6712 	push	acc
      0050B8 08               [12] 6713 	inc	r0
      0050B9 E6               [12] 6714 	mov	a,@r0
      0050BA C0 E0            [24] 6715 	push	acc
      0050BC 8D 82            [24] 6716 	mov	dpl,r5
      0050BE 8E 83            [24] 6717 	mov	dph,r6
      0050C0 8F F0            [24] 6718 	mov	b,r7
      0050C2 12 26 B5         [24] 6719 	lcall	_stack_push
      0050C5 E5 81            [12] 6720 	mov	a,sp
      0050C7 24 FC            [12] 6721 	add	a,#0xfc
      0050C9 F5 81            [12] 6722 	mov	sp,a
                                   6723 ;	calc.c:307: printstr("\r\nstack underflow\r\n");
      0050CB 7D B1            [12] 6724 	mov	r5,#___str_10
      0050CD 7C 89            [12] 6725 	mov	r4,#(___str_10 >> 8)
      0050CF 7B 80            [12] 6726 	mov	r3,#0x80
                                   6727 ;	calc.c:59: return;
      0050D1                       6728 00477$:
                                   6729 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0050D1 8D 82            [24] 6730 	mov	dpl,r5
      0050D3 8C 83            [24] 6731 	mov	dph,r4
      0050D5 8B F0            [24] 6732 	mov	b,r3
      0050D7 12 70 E2         [24] 6733 	lcall	__gptrget
      0050DA FF               [12] 6734 	mov	r7,a
      0050DB 70 03            [24] 6735 	jnz	01381$
      0050DD 02 57 14         [24] 6736 	ljmp	00249$
      0050E0                       6737 01381$:
      0050E0 7E 00            [12] 6738 	mov	r6,#0x00
      0050E2 8F 82            [24] 6739 	mov	dpl,r7
      0050E4 8E 83            [24] 6740 	mov	dph,r6
      0050E6 12 2B 70         [24] 6741 	lcall	_putchar
      0050E9 0D               [12] 6742 	inc	r5
                                   6743 ;	calc.c:307: printstr("\r\nstack underflow\r\n");
      0050EA BD 00 E4         [24] 6744 	cjne	r5,#0x00,00477$
      0050ED 0C               [12] 6745 	inc	r4
      0050EE 80 E1            [24] 6746 	sjmp	00477$
      0050F0                       6747 00218$:
                                   6748 ;	calc.c:309: d1 ^= d0;
      0050F0 E5 08            [12] 6749 	mov	a,_bp
      0050F2 24 19            [12] 6750 	add	a,#0x19
      0050F4 F8               [12] 6751 	mov	r0,a
      0050F5 E5 08            [12] 6752 	mov	a,_bp
      0050F7 24 15            [12] 6753 	add	a,#0x15
      0050F9 F9               [12] 6754 	mov	r1,a
      0050FA E7               [12] 6755 	mov	a,@r1
      0050FB 66               [12] 6756 	xrl	a,@r0
      0050FC F6               [12] 6757 	mov	@r0,a
      0050FD 09               [12] 6758 	inc	r1
      0050FE E7               [12] 6759 	mov	a,@r1
      0050FF 08               [12] 6760 	inc	r0
      005100 66               [12] 6761 	xrl	a,@r0
      005101 F6               [12] 6762 	mov	@r0,a
      005102 09               [12] 6763 	inc	r1
      005103 E7               [12] 6764 	mov	a,@r1
      005104 08               [12] 6765 	inc	r0
      005105 66               [12] 6766 	xrl	a,@r0
      005106 F6               [12] 6767 	mov	@r0,a
      005107 09               [12] 6768 	inc	r1
      005108 E7               [12] 6769 	mov	a,@r1
      005109 08               [12] 6770 	inc	r0
      00510A 66               [12] 6771 	xrl	a,@r0
      00510B F6               [12] 6772 	mov	@r0,a
                                   6773 ;	calc.c:310: (void)stack_push(ctx->ps, d1);
      00510C 8A 82            [24] 6774 	mov	dpl,r2
      00510E 8B 83            [24] 6775 	mov	dph,r3
      005110 8C F0            [24] 6776 	mov	b,r4
      005112 12 70 E2         [24] 6777 	lcall	__gptrget
      005115 FA               [12] 6778 	mov	r2,a
      005116 A3               [24] 6779 	inc	dptr
      005117 12 70 E2         [24] 6780 	lcall	__gptrget
      00511A FB               [12] 6781 	mov	r3,a
      00511B A3               [24] 6782 	inc	dptr
      00511C 12 70 E2         [24] 6783 	lcall	__gptrget
      00511F FC               [12] 6784 	mov	r4,a
      005120 E5 08            [12] 6785 	mov	a,_bp
      005122 24 19            [12] 6786 	add	a,#0x19
      005124 F8               [12] 6787 	mov	r0,a
      005125 E6               [12] 6788 	mov	a,@r0
      005126 C0 E0            [24] 6789 	push	acc
      005128 08               [12] 6790 	inc	r0
      005129 E6               [12] 6791 	mov	a,@r0
      00512A C0 E0            [24] 6792 	push	acc
      00512C 08               [12] 6793 	inc	r0
      00512D E6               [12] 6794 	mov	a,@r0
      00512E C0 E0            [24] 6795 	push	acc
      005130 08               [12] 6796 	inc	r0
      005131 E6               [12] 6797 	mov	a,@r0
      005132 C0 E0            [24] 6798 	push	acc
      005134 8A 82            [24] 6799 	mov	dpl,r2
      005136 8B 83            [24] 6800 	mov	dph,r3
      005138 8C F0            [24] 6801 	mov	b,r4
      00513A 12 26 B5         [24] 6802 	lcall	_stack_push
      00513D E5 81            [12] 6803 	mov	a,sp
      00513F 24 FC            [12] 6804 	add	a,#0xfc
      005141 F5 81            [12] 6805 	mov	sp,a
                                   6806 ;	calc.c:312: break;
      005143 02 57 14         [24] 6807 	ljmp	00249$
                                   6808 ;	calc.c:313: case '>':
      005146                       6809 00223$:
                                   6810 ;	calc.c:314: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005146 E5 08            [12] 6811 	mov	a,_bp
      005148 24 15            [12] 6812 	add	a,#0x15
      00514A FC               [12] 6813 	mov	r4,a
      00514B 7B 00            [12] 6814 	mov	r3,#0x00
      00514D 7A 40            [12] 6815 	mov	r2,#0x40
      00514F E5 08            [12] 6816 	mov	a,_bp
      005151 24 12            [12] 6817 	add	a,#0x12
      005153 F8               [12] 6818 	mov	r0,a
      005154 E5 08            [12] 6819 	mov	a,_bp
      005156 24 0B            [12] 6820 	add	a,#0x0b
      005158 F9               [12] 6821 	mov	r1,a
      005159 74 11            [12] 6822 	mov	a,#0x11
      00515B 26               [12] 6823 	add	a,@r0
      00515C F7               [12] 6824 	mov	@r1,a
      00515D 74 40            [12] 6825 	mov	a,#0x40
      00515F 08               [12] 6826 	inc	r0
      005160 36               [12] 6827 	addc	a,@r0
      005161 09               [12] 6828 	inc	r1
      005162 F7               [12] 6829 	mov	@r1,a
      005163 08               [12] 6830 	inc	r0
      005164 09               [12] 6831 	inc	r1
      005165 E6               [12] 6832 	mov	a,@r0
      005166 F7               [12] 6833 	mov	@r1,a
      005167 E5 08            [12] 6834 	mov	a,_bp
      005169 24 0B            [12] 6835 	add	a,#0x0b
      00516B F8               [12] 6836 	mov	r0,a
      00516C 86 82            [24] 6837 	mov	dpl,@r0
      00516E 08               [12] 6838 	inc	r0
      00516F 86 83            [24] 6839 	mov	dph,@r0
      005171 08               [12] 6840 	inc	r0
      005172 86 F0            [24] 6841 	mov	b,@r0
      005174 12 70 E2         [24] 6842 	lcall	__gptrget
      005177 FD               [12] 6843 	mov	r5,a
      005178 A3               [24] 6844 	inc	dptr
      005179 12 70 E2         [24] 6845 	lcall	__gptrget
      00517C FE               [12] 6846 	mov	r6,a
      00517D A3               [24] 6847 	inc	dptr
      00517E 12 70 E2         [24] 6848 	lcall	__gptrget
      005181 FF               [12] 6849 	mov	r7,a
      005182 C0 04            [24] 6850 	push	ar4
      005184 C0 03            [24] 6851 	push	ar3
      005186 C0 02            [24] 6852 	push	ar2
      005188 8D 82            [24] 6853 	mov	dpl,r5
      00518A 8E 83            [24] 6854 	mov	dph,r6
      00518C 8F F0            [24] 6855 	mov	b,r7
      00518E 12 27 83         [24] 6856 	lcall	_stack_pop
      005191 AE 82            [24] 6857 	mov	r6,dpl
      005193 AF 83            [24] 6858 	mov	r7,dph
      005195 15 81            [12] 6859 	dec	sp
      005197 15 81            [12] 6860 	dec	sp
      005199 15 81            [12] 6861 	dec	sp
      00519B EE               [12] 6862 	mov	a,r6
      00519C 4F               [12] 6863 	orl	a,r7
      00519D 70 25            [24] 6864 	jnz	00228$
      00519F 7D B1            [12] 6865 	mov	r5,#___str_10
      0051A1 7C 89            [12] 6866 	mov	r4,#(___str_10 >> 8)
      0051A3 7B 80            [12] 6867 	mov	r3,#0x80
                                   6868 ;	calc.c:59: return;
      0051A5                       6869 00480$:
                                   6870 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0051A5 8D 82            [24] 6871 	mov	dpl,r5
      0051A7 8C 83            [24] 6872 	mov	dph,r4
      0051A9 8B F0            [24] 6873 	mov	b,r3
      0051AB 12 70 E2         [24] 6874 	lcall	__gptrget
      0051AE FF               [12] 6875 	mov	r7,a
      0051AF 70 03            [24] 6876 	jnz	01384$
      0051B1 02 57 14         [24] 6877 	ljmp	00249$
      0051B4                       6878 01384$:
      0051B4 7E 00            [12] 6879 	mov	r6,#0x00
      0051B6 8F 82            [24] 6880 	mov	dpl,r7
      0051B8 8E 83            [24] 6881 	mov	dph,r6
      0051BA 12 2B 70         [24] 6882 	lcall	_putchar
      0051BD 0D               [12] 6883 	inc	r5
                                   6884 ;	calc.c:314: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0051BE BD 00 E4         [24] 6885 	cjne	r5,#0x00,00480$
      0051C1 0C               [12] 6886 	inc	r4
      0051C2 80 E1            [24] 6887 	sjmp	00480$
      0051C4                       6888 00228$:
                                   6889 ;	calc.c:315: else if (!stack_pop(ctx->ps, &d1)) {
      0051C4 E5 08            [12] 6890 	mov	a,_bp
      0051C6 24 19            [12] 6891 	add	a,#0x19
      0051C8 FC               [12] 6892 	mov	r4,a
      0051C9 7B 00            [12] 6893 	mov	r3,#0x00
      0051CB 7A 40            [12] 6894 	mov	r2,#0x40
      0051CD E5 08            [12] 6895 	mov	a,_bp
      0051CF 24 0B            [12] 6896 	add	a,#0x0b
      0051D1 F8               [12] 6897 	mov	r0,a
      0051D2 86 82            [24] 6898 	mov	dpl,@r0
      0051D4 08               [12] 6899 	inc	r0
      0051D5 86 83            [24] 6900 	mov	dph,@r0
      0051D7 08               [12] 6901 	inc	r0
      0051D8 86 F0            [24] 6902 	mov	b,@r0
      0051DA 12 70 E2         [24] 6903 	lcall	__gptrget
      0051DD FD               [12] 6904 	mov	r5,a
      0051DE A3               [24] 6905 	inc	dptr
      0051DF 12 70 E2         [24] 6906 	lcall	__gptrget
      0051E2 FE               [12] 6907 	mov	r6,a
      0051E3 A3               [24] 6908 	inc	dptr
      0051E4 12 70 E2         [24] 6909 	lcall	__gptrget
      0051E7 FF               [12] 6910 	mov	r7,a
      0051E8 C0 04            [24] 6911 	push	ar4
      0051EA C0 03            [24] 6912 	push	ar3
      0051EC C0 02            [24] 6913 	push	ar2
      0051EE 8D 82            [24] 6914 	mov	dpl,r5
      0051F0 8E 83            [24] 6915 	mov	dph,r6
      0051F2 8F F0            [24] 6916 	mov	b,r7
      0051F4 12 27 83         [24] 6917 	lcall	_stack_pop
      0051F7 AE 82            [24] 6918 	mov	r6,dpl
      0051F9 AF 83            [24] 6919 	mov	r7,dph
      0051FB 15 81            [12] 6920 	dec	sp
      0051FD 15 81            [12] 6921 	dec	sp
      0051FF 15 81            [12] 6922 	dec	sp
      005201 EE               [12] 6923 	mov	a,r6
      005202 4F               [12] 6924 	orl	a,r7
      005203 70 63            [24] 6925 	jnz	00225$
                                   6926 ;	calc.c:316: (void)stack_push(ctx->ps, d0);
      005205 E5 08            [12] 6927 	mov	a,_bp
      005207 24 0B            [12] 6928 	add	a,#0x0b
      005209 F8               [12] 6929 	mov	r0,a
      00520A 86 82            [24] 6930 	mov	dpl,@r0
      00520C 08               [12] 6931 	inc	r0
      00520D 86 83            [24] 6932 	mov	dph,@r0
      00520F 08               [12] 6933 	inc	r0
      005210 86 F0            [24] 6934 	mov	b,@r0
      005212 12 70 E2         [24] 6935 	lcall	__gptrget
      005215 FD               [12] 6936 	mov	r5,a
      005216 A3               [24] 6937 	inc	dptr
      005217 12 70 E2         [24] 6938 	lcall	__gptrget
      00521A FE               [12] 6939 	mov	r6,a
      00521B A3               [24] 6940 	inc	dptr
      00521C 12 70 E2         [24] 6941 	lcall	__gptrget
      00521F FF               [12] 6942 	mov	r7,a
      005220 E5 08            [12] 6943 	mov	a,_bp
      005222 24 15            [12] 6944 	add	a,#0x15
      005224 F8               [12] 6945 	mov	r0,a
      005225 E6               [12] 6946 	mov	a,@r0
      005226 C0 E0            [24] 6947 	push	acc
      005228 08               [12] 6948 	inc	r0
      005229 E6               [12] 6949 	mov	a,@r0
      00522A C0 E0            [24] 6950 	push	acc
      00522C 08               [12] 6951 	inc	r0
      00522D E6               [12] 6952 	mov	a,@r0
      00522E C0 E0            [24] 6953 	push	acc
      005230 08               [12] 6954 	inc	r0
      005231 E6               [12] 6955 	mov	a,@r0
      005232 C0 E0            [24] 6956 	push	acc
      005234 8D 82            [24] 6957 	mov	dpl,r5
      005236 8E 83            [24] 6958 	mov	dph,r6
      005238 8F F0            [24] 6959 	mov	b,r7
      00523A 12 26 B5         [24] 6960 	lcall	_stack_push
      00523D E5 81            [12] 6961 	mov	a,sp
      00523F 24 FC            [12] 6962 	add	a,#0xfc
      005241 F5 81            [12] 6963 	mov	sp,a
                                   6964 ;	calc.c:317: printstr("\r\nstack underflow\r\n");
      005243 7D B1            [12] 6965 	mov	r5,#___str_10
      005245 7C 89            [12] 6966 	mov	r4,#(___str_10 >> 8)
      005247 7B 80            [12] 6967 	mov	r3,#0x80
                                   6968 ;	calc.c:59: return;
      005249                       6969 00483$:
                                   6970 ;	calc.c:57: for (; *s; s++) putchar(*s);
      005249 8D 82            [24] 6971 	mov	dpl,r5
      00524B 8C 83            [24] 6972 	mov	dph,r4
      00524D 8B F0            [24] 6973 	mov	b,r3
      00524F 12 70 E2         [24] 6974 	lcall	__gptrget
      005252 FF               [12] 6975 	mov	r7,a
      005253 70 03            [24] 6976 	jnz	01387$
      005255 02 57 14         [24] 6977 	ljmp	00249$
      005258                       6978 01387$:
      005258 7E 00            [12] 6979 	mov	r6,#0x00
      00525A 8F 82            [24] 6980 	mov	dpl,r7
      00525C 8E 83            [24] 6981 	mov	dph,r6
      00525E 12 2B 70         [24] 6982 	lcall	_putchar
      005261 0D               [12] 6983 	inc	r5
                                   6984 ;	calc.c:317: printstr("\r\nstack underflow\r\n");
      005262 BD 00 E4         [24] 6985 	cjne	r5,#0x00,00483$
      005265 0C               [12] 6986 	inc	r4
      005266 80 E1            [24] 6987 	sjmp	00483$
      005268                       6988 00225$:
                                   6989 ;	calc.c:319: d1 = (unsigned long)d1 >> d0;
      005268 E5 08            [12] 6990 	mov	a,_bp
      00526A 24 19            [12] 6991 	add	a,#0x19
      00526C F8               [12] 6992 	mov	r0,a
      00526D 86 04            [24] 6993 	mov	ar4,@r0
      00526F 08               [12] 6994 	inc	r0
      005270 86 05            [24] 6995 	mov	ar5,@r0
      005272 08               [12] 6996 	inc	r0
      005273 86 06            [24] 6997 	mov	ar6,@r0
      005275 08               [12] 6998 	inc	r0
      005276 86 07            [24] 6999 	mov	ar7,@r0
      005278 E5 08            [12] 7000 	mov	a,_bp
      00527A 24 15            [12] 7001 	add	a,#0x15
      00527C F8               [12] 7002 	mov	r0,a
      00527D 86 F0            [24] 7003 	mov	b,@r0
      00527F 05 F0            [12] 7004 	inc	b
      005281 80 0D            [24] 7005 	sjmp	01390$
      005283                       7006 01389$:
      005283 C3               [12] 7007 	clr	c
      005284 EF               [12] 7008 	mov	a,r7
      005285 13               [12] 7009 	rrc	a
      005286 FF               [12] 7010 	mov	r7,a
      005287 EE               [12] 7011 	mov	a,r6
      005288 13               [12] 7012 	rrc	a
      005289 FE               [12] 7013 	mov	r6,a
      00528A ED               [12] 7014 	mov	a,r5
      00528B 13               [12] 7015 	rrc	a
      00528C FD               [12] 7016 	mov	r5,a
      00528D EC               [12] 7017 	mov	a,r4
      00528E 13               [12] 7018 	rrc	a
      00528F FC               [12] 7019 	mov	r4,a
      005290                       7020 01390$:
      005290 D5 F0 F0         [24] 7021 	djnz	b,01389$
      005293 E5 08            [12] 7022 	mov	a,_bp
      005295 24 19            [12] 7023 	add	a,#0x19
      005297 F8               [12] 7024 	mov	r0,a
      005298 A6 04            [24] 7025 	mov	@r0,ar4
      00529A 08               [12] 7026 	inc	r0
      00529B A6 05            [24] 7027 	mov	@r0,ar5
      00529D 08               [12] 7028 	inc	r0
      00529E A6 06            [24] 7029 	mov	@r0,ar6
      0052A0 08               [12] 7030 	inc	r0
      0052A1 A6 07            [24] 7031 	mov	@r0,ar7
                                   7032 ;	calc.c:320: (void)stack_push(ctx->ps, d1);
      0052A3 E5 08            [12] 7033 	mov	a,_bp
      0052A5 24 0B            [12] 7034 	add	a,#0x0b
      0052A7 F8               [12] 7035 	mov	r0,a
      0052A8 86 82            [24] 7036 	mov	dpl,@r0
      0052AA 08               [12] 7037 	inc	r0
      0052AB 86 83            [24] 7038 	mov	dph,@r0
      0052AD 08               [12] 7039 	inc	r0
      0052AE 86 F0            [24] 7040 	mov	b,@r0
      0052B0 12 70 E2         [24] 7041 	lcall	__gptrget
      0052B3 FD               [12] 7042 	mov	r5,a
      0052B4 A3               [24] 7043 	inc	dptr
      0052B5 12 70 E2         [24] 7044 	lcall	__gptrget
      0052B8 FE               [12] 7045 	mov	r6,a
      0052B9 A3               [24] 7046 	inc	dptr
      0052BA 12 70 E2         [24] 7047 	lcall	__gptrget
      0052BD FF               [12] 7048 	mov	r7,a
      0052BE E5 08            [12] 7049 	mov	a,_bp
      0052C0 24 19            [12] 7050 	add	a,#0x19
      0052C2 F8               [12] 7051 	mov	r0,a
      0052C3 E6               [12] 7052 	mov	a,@r0
      0052C4 C0 E0            [24] 7053 	push	acc
      0052C6 08               [12] 7054 	inc	r0
      0052C7 E6               [12] 7055 	mov	a,@r0
      0052C8 C0 E0            [24] 7056 	push	acc
      0052CA 08               [12] 7057 	inc	r0
      0052CB E6               [12] 7058 	mov	a,@r0
      0052CC C0 E0            [24] 7059 	push	acc
      0052CE 08               [12] 7060 	inc	r0
      0052CF E6               [12] 7061 	mov	a,@r0
      0052D0 C0 E0            [24] 7062 	push	acc
      0052D2 8D 82            [24] 7063 	mov	dpl,r5
      0052D4 8E 83            [24] 7064 	mov	dph,r6
      0052D6 8F F0            [24] 7065 	mov	b,r7
      0052D8 12 26 B5         [24] 7066 	lcall	_stack_push
      0052DB E5 81            [12] 7067 	mov	a,sp
      0052DD 24 FC            [12] 7068 	add	a,#0xfc
      0052DF F5 81            [12] 7069 	mov	sp,a
                                   7070 ;	calc.c:322: break;
      0052E1 02 57 14         [24] 7071 	ljmp	00249$
                                   7072 ;	calc.c:323: case ']':
      0052E4                       7073 00230$:
                                   7074 ;	calc.c:324: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0052E4 E5 08            [12] 7075 	mov	a,_bp
      0052E6 24 15            [12] 7076 	add	a,#0x15
      0052E8 FF               [12] 7077 	mov	r7,a
      0052E9 E5 08            [12] 7078 	mov	a,_bp
      0052EB 24 0E            [12] 7079 	add	a,#0x0e
      0052ED F8               [12] 7080 	mov	r0,a
      0052EE A6 07            [24] 7081 	mov	@r0,ar7
      0052F0 08               [12] 7082 	inc	r0
      0052F1 76 00            [12] 7083 	mov	@r0,#0x00
      0052F3 08               [12] 7084 	inc	r0
      0052F4 76 40            [12] 7085 	mov	@r0,#0x40
      0052F6 E5 08            [12] 7086 	mov	a,_bp
      0052F8 24 12            [12] 7087 	add	a,#0x12
      0052FA F8               [12] 7088 	mov	r0,a
      0052FB 74 11            [12] 7089 	mov	a,#0x11
      0052FD 26               [12] 7090 	add	a,@r0
      0052FE FA               [12] 7091 	mov	r2,a
      0052FF 74 40            [12] 7092 	mov	a,#0x40
      005301 08               [12] 7093 	inc	r0
      005302 36               [12] 7094 	addc	a,@r0
      005303 FB               [12] 7095 	mov	r3,a
      005304 08               [12] 7096 	inc	r0
      005305 86 04            [24] 7097 	mov	ar4,@r0
      005307 8A 82            [24] 7098 	mov	dpl,r2
      005309 8B 83            [24] 7099 	mov	dph,r3
      00530B 8C F0            [24] 7100 	mov	b,r4
      00530D 12 70 E2         [24] 7101 	lcall	__gptrget
      005310 FD               [12] 7102 	mov	r5,a
      005311 A3               [24] 7103 	inc	dptr
      005312 12 70 E2         [24] 7104 	lcall	__gptrget
      005315 FE               [12] 7105 	mov	r6,a
      005316 A3               [24] 7106 	inc	dptr
      005317 12 70 E2         [24] 7107 	lcall	__gptrget
      00531A FF               [12] 7108 	mov	r7,a
      00531B C0 04            [24] 7109 	push	ar4
      00531D C0 03            [24] 7110 	push	ar3
      00531F C0 02            [24] 7111 	push	ar2
      005321 E5 08            [12] 7112 	mov	a,_bp
      005323 24 0E            [12] 7113 	add	a,#0x0e
      005325 F8               [12] 7114 	mov	r0,a
      005326 E6               [12] 7115 	mov	a,@r0
      005327 C0 E0            [24] 7116 	push	acc
      005329 08               [12] 7117 	inc	r0
      00532A E6               [12] 7118 	mov	a,@r0
      00532B C0 E0            [24] 7119 	push	acc
      00532D 08               [12] 7120 	inc	r0
      00532E E6               [12] 7121 	mov	a,@r0
      00532F C0 E0            [24] 7122 	push	acc
      005331 8D 82            [24] 7123 	mov	dpl,r5
      005333 8E 83            [24] 7124 	mov	dph,r6
      005335 8F F0            [24] 7125 	mov	b,r7
      005337 12 27 83         [24] 7126 	lcall	_stack_pop
      00533A AE 82            [24] 7127 	mov	r6,dpl
      00533C AF 83            [24] 7128 	mov	r7,dph
      00533E 15 81            [12] 7129 	dec	sp
      005340 15 81            [12] 7130 	dec	sp
      005342 15 81            [12] 7131 	dec	sp
      005344 D0 02            [24] 7132 	pop	ar2
      005346 D0 03            [24] 7133 	pop	ar3
      005348 D0 04            [24] 7134 	pop	ar4
      00534A EE               [12] 7135 	mov	a,r6
      00534B 4F               [12] 7136 	orl	a,r7
      00534C 70 25            [24] 7137 	jnz	00235$
      00534E 7D B1            [12] 7138 	mov	r5,#___str_10
      005350 7C 89            [12] 7139 	mov	r4,#(___str_10 >> 8)
      005352 7B 80            [12] 7140 	mov	r3,#0x80
                                   7141 ;	calc.c:59: return;
      005354                       7142 00486$:
                                   7143 ;	calc.c:57: for (; *s; s++) putchar(*s);
      005354 8D 82            [24] 7144 	mov	dpl,r5
      005356 8C 83            [24] 7145 	mov	dph,r4
      005358 8B F0            [24] 7146 	mov	b,r3
      00535A 12 70 E2         [24] 7147 	lcall	__gptrget
      00535D FF               [12] 7148 	mov	r7,a
      00535E 70 03            [24] 7149 	jnz	01392$
      005360 02 57 14         [24] 7150 	ljmp	00249$
      005363                       7151 01392$:
      005363 7E 00            [12] 7152 	mov	r6,#0x00
      005365 8F 82            [24] 7153 	mov	dpl,r7
      005367 8E 83            [24] 7154 	mov	dph,r6
      005369 12 2B 70         [24] 7155 	lcall	_putchar
      00536C 0D               [12] 7156 	inc	r5
                                   7157 ;	calc.c:324: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00536D BD 00 E4         [24] 7158 	cjne	r5,#0x00,00486$
      005370 0C               [12] 7159 	inc	r4
      005371 80 E1            [24] 7160 	sjmp	00486$
      005373                       7161 00235$:
                                   7162 ;	calc.c:325: else if (!stack_pop(ctx->ps, &d1)) {
      005373 E5 08            [12] 7163 	mov	a,_bp
      005375 24 19            [12] 7164 	add	a,#0x19
      005377 FF               [12] 7165 	mov	r7,a
      005378 E5 08            [12] 7166 	mov	a,_bp
      00537A 24 0E            [12] 7167 	add	a,#0x0e
      00537C F8               [12] 7168 	mov	r0,a
      00537D A6 07            [24] 7169 	mov	@r0,ar7
      00537F 08               [12] 7170 	inc	r0
      005380 76 00            [12] 7171 	mov	@r0,#0x00
      005382 08               [12] 7172 	inc	r0
      005383 76 40            [12] 7173 	mov	@r0,#0x40
      005385 8A 82            [24] 7174 	mov	dpl,r2
      005387 8B 83            [24] 7175 	mov	dph,r3
      005389 8C F0            [24] 7176 	mov	b,r4
      00538B 12 70 E2         [24] 7177 	lcall	__gptrget
      00538E FD               [12] 7178 	mov	r5,a
      00538F A3               [24] 7179 	inc	dptr
      005390 12 70 E2         [24] 7180 	lcall	__gptrget
      005393 FE               [12] 7181 	mov	r6,a
      005394 A3               [24] 7182 	inc	dptr
      005395 12 70 E2         [24] 7183 	lcall	__gptrget
      005398 FF               [12] 7184 	mov	r7,a
      005399 C0 04            [24] 7185 	push	ar4
      00539B C0 03            [24] 7186 	push	ar3
      00539D C0 02            [24] 7187 	push	ar2
      00539F E5 08            [12] 7188 	mov	a,_bp
      0053A1 24 0E            [12] 7189 	add	a,#0x0e
      0053A3 F8               [12] 7190 	mov	r0,a
      0053A4 E6               [12] 7191 	mov	a,@r0
      0053A5 C0 E0            [24] 7192 	push	acc
      0053A7 08               [12] 7193 	inc	r0
      0053A8 E6               [12] 7194 	mov	a,@r0
      0053A9 C0 E0            [24] 7195 	push	acc
      0053AB 08               [12] 7196 	inc	r0
      0053AC E6               [12] 7197 	mov	a,@r0
      0053AD C0 E0            [24] 7198 	push	acc
      0053AF 8D 82            [24] 7199 	mov	dpl,r5
      0053B1 8E 83            [24] 7200 	mov	dph,r6
      0053B3 8F F0            [24] 7201 	mov	b,r7
      0053B5 12 27 83         [24] 7202 	lcall	_stack_pop
      0053B8 AE 82            [24] 7203 	mov	r6,dpl
      0053BA AF 83            [24] 7204 	mov	r7,dph
      0053BC 15 81            [12] 7205 	dec	sp
      0053BE 15 81            [12] 7206 	dec	sp
      0053C0 15 81            [12] 7207 	dec	sp
      0053C2 D0 02            [24] 7208 	pop	ar2
      0053C4 D0 03            [24] 7209 	pop	ar3
      0053C6 D0 04            [24] 7210 	pop	ar4
      0053C8 EE               [12] 7211 	mov	a,r6
      0053C9 4F               [12] 7212 	orl	a,r7
      0053CA 70 5C            [24] 7213 	jnz	00232$
                                   7214 ;	calc.c:326: (void)stack_push(ctx->ps, d0);
      0053CC 8A 82            [24] 7215 	mov	dpl,r2
      0053CE 8B 83            [24] 7216 	mov	dph,r3
      0053D0 8C F0            [24] 7217 	mov	b,r4
      0053D2 12 70 E2         [24] 7218 	lcall	__gptrget
      0053D5 FD               [12] 7219 	mov	r5,a
      0053D6 A3               [24] 7220 	inc	dptr
      0053D7 12 70 E2         [24] 7221 	lcall	__gptrget
      0053DA FE               [12] 7222 	mov	r6,a
      0053DB A3               [24] 7223 	inc	dptr
      0053DC 12 70 E2         [24] 7224 	lcall	__gptrget
      0053DF FF               [12] 7225 	mov	r7,a
      0053E0 E5 08            [12] 7226 	mov	a,_bp
      0053E2 24 15            [12] 7227 	add	a,#0x15
      0053E4 F8               [12] 7228 	mov	r0,a
      0053E5 E6               [12] 7229 	mov	a,@r0
      0053E6 C0 E0            [24] 7230 	push	acc
      0053E8 08               [12] 7231 	inc	r0
      0053E9 E6               [12] 7232 	mov	a,@r0
      0053EA C0 E0            [24] 7233 	push	acc
      0053EC 08               [12] 7234 	inc	r0
      0053ED E6               [12] 7235 	mov	a,@r0
      0053EE C0 E0            [24] 7236 	push	acc
      0053F0 08               [12] 7237 	inc	r0
      0053F1 E6               [12] 7238 	mov	a,@r0
      0053F2 C0 E0            [24] 7239 	push	acc
      0053F4 8D 82            [24] 7240 	mov	dpl,r5
      0053F6 8E 83            [24] 7241 	mov	dph,r6
      0053F8 8F F0            [24] 7242 	mov	b,r7
      0053FA 12 26 B5         [24] 7243 	lcall	_stack_push
      0053FD E5 81            [12] 7244 	mov	a,sp
      0053FF 24 FC            [12] 7245 	add	a,#0xfc
      005401 F5 81            [12] 7246 	mov	sp,a
                                   7247 ;	calc.c:327: printstr("\r\nstack underflow\r\n");
      005403 7D B1            [12] 7248 	mov	r5,#___str_10
      005405 7C 89            [12] 7249 	mov	r4,#(___str_10 >> 8)
      005407 7B 80            [12] 7250 	mov	r3,#0x80
                                   7251 ;	calc.c:59: return;
      005409                       7252 00489$:
                                   7253 ;	calc.c:57: for (; *s; s++) putchar(*s);
      005409 8D 82            [24] 7254 	mov	dpl,r5
      00540B 8C 83            [24] 7255 	mov	dph,r4
      00540D 8B F0            [24] 7256 	mov	b,r3
      00540F 12 70 E2         [24] 7257 	lcall	__gptrget
      005412 FF               [12] 7258 	mov	r7,a
      005413 70 03            [24] 7259 	jnz	01395$
      005415 02 57 14         [24] 7260 	ljmp	00249$
      005418                       7261 01395$:
      005418 7E 00            [12] 7262 	mov	r6,#0x00
      00541A 8F 82            [24] 7263 	mov	dpl,r7
      00541C 8E 83            [24] 7264 	mov	dph,r6
      00541E 12 2B 70         [24] 7265 	lcall	_putchar
      005421 0D               [12] 7266 	inc	r5
                                   7267 ;	calc.c:327: printstr("\r\nstack underflow\r\n");
      005422 BD 00 E4         [24] 7268 	cjne	r5,#0x00,00489$
      005425 0C               [12] 7269 	inc	r4
      005426 80 E1            [24] 7270 	sjmp	00489$
      005428                       7271 00232$:
                                   7272 ;	calc.c:329: d1 >>= d0;
      005428 E5 08            [12] 7273 	mov	a,_bp
      00542A 24 15            [12] 7274 	add	a,#0x15
      00542C F8               [12] 7275 	mov	r0,a
      00542D 86 F0            [24] 7276 	mov	b,@r0
      00542F 05 F0            [12] 7277 	inc	b
      005431 E5 08            [12] 7278 	mov	a,_bp
      005433 24 19            [12] 7279 	add	a,#0x19
      005435 F8               [12] 7280 	mov	r0,a
      005436 08               [12] 7281 	inc	r0
      005437 08               [12] 7282 	inc	r0
      005438 08               [12] 7283 	inc	r0
      005439 E6               [12] 7284 	mov	a,@r0
      00543A 33               [12] 7285 	rlc	a
      00543B 92 D2            [24] 7286 	mov	ov,c
      00543D 18               [12] 7287 	dec	r0
      00543E 18               [12] 7288 	dec	r0
      00543F 18               [12] 7289 	dec	r0
      005440 80 14            [24] 7290 	sjmp	01398$
      005442                       7291 01397$:
      005442 A2 D2            [12] 7292 	mov	c,ov
      005444 08               [12] 7293 	inc	r0
      005445 08               [12] 7294 	inc	r0
      005446 08               [12] 7295 	inc	r0
      005447 E6               [12] 7296 	mov	a,@r0
      005448 13               [12] 7297 	rrc	a
      005449 F6               [12] 7298 	mov	@r0,a
      00544A 18               [12] 7299 	dec	r0
      00544B E6               [12] 7300 	mov	a,@r0
      00544C 13               [12] 7301 	rrc	a
      00544D F6               [12] 7302 	mov	@r0,a
      00544E 18               [12] 7303 	dec	r0
      00544F E6               [12] 7304 	mov	a,@r0
      005450 13               [12] 7305 	rrc	a
      005451 F6               [12] 7306 	mov	@r0,a
      005452 18               [12] 7307 	dec	r0
      005453 E6               [12] 7308 	mov	a,@r0
      005454 13               [12] 7309 	rrc	a
      005455 F6               [12] 7310 	mov	@r0,a
      005456                       7311 01398$:
      005456 D5 F0 E9         [24] 7312 	djnz	b,01397$
                                   7313 ;	calc.c:330: (void)stack_push(ctx->ps, d1);
      005459 8A 82            [24] 7314 	mov	dpl,r2
      00545B 8B 83            [24] 7315 	mov	dph,r3
      00545D 8C F0            [24] 7316 	mov	b,r4
      00545F 12 70 E2         [24] 7317 	lcall	__gptrget
      005462 FA               [12] 7318 	mov	r2,a
      005463 A3               [24] 7319 	inc	dptr
      005464 12 70 E2         [24] 7320 	lcall	__gptrget
      005467 FB               [12] 7321 	mov	r3,a
      005468 A3               [24] 7322 	inc	dptr
      005469 12 70 E2         [24] 7323 	lcall	__gptrget
      00546C FC               [12] 7324 	mov	r4,a
      00546D E5 08            [12] 7325 	mov	a,_bp
      00546F 24 19            [12] 7326 	add	a,#0x19
      005471 F8               [12] 7327 	mov	r0,a
      005472 E6               [12] 7328 	mov	a,@r0
      005473 C0 E0            [24] 7329 	push	acc
      005475 08               [12] 7330 	inc	r0
      005476 E6               [12] 7331 	mov	a,@r0
      005477 C0 E0            [24] 7332 	push	acc
      005479 08               [12] 7333 	inc	r0
      00547A E6               [12] 7334 	mov	a,@r0
      00547B C0 E0            [24] 7335 	push	acc
      00547D 08               [12] 7336 	inc	r0
      00547E E6               [12] 7337 	mov	a,@r0
      00547F C0 E0            [24] 7338 	push	acc
      005481 8A 82            [24] 7339 	mov	dpl,r2
      005483 8B 83            [24] 7340 	mov	dph,r3
      005485 8C F0            [24] 7341 	mov	b,r4
      005487 12 26 B5         [24] 7342 	lcall	_stack_push
      00548A E5 81            [12] 7343 	mov	a,sp
      00548C 24 FC            [12] 7344 	add	a,#0xfc
      00548E F5 81            [12] 7345 	mov	sp,a
                                   7346 ;	calc.c:332: break;
      005490 02 57 14         [24] 7347 	ljmp	00249$
                                   7348 ;	calc.c:333: case '<':
      005493                       7349 00237$:
                                   7350 ;	calc.c:334: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005493 E5 08            [12] 7351 	mov	a,_bp
      005495 24 15            [12] 7352 	add	a,#0x15
      005497 FF               [12] 7353 	mov	r7,a
      005498 E5 08            [12] 7354 	mov	a,_bp
      00549A 24 0E            [12] 7355 	add	a,#0x0e
      00549C F8               [12] 7356 	mov	r0,a
      00549D A6 07            [24] 7357 	mov	@r0,ar7
      00549F 08               [12] 7358 	inc	r0
      0054A0 76 00            [12] 7359 	mov	@r0,#0x00
      0054A2 08               [12] 7360 	inc	r0
      0054A3 76 40            [12] 7361 	mov	@r0,#0x40
      0054A5 E5 08            [12] 7362 	mov	a,_bp
      0054A7 24 12            [12] 7363 	add	a,#0x12
      0054A9 F8               [12] 7364 	mov	r0,a
      0054AA 74 11            [12] 7365 	mov	a,#0x11
      0054AC 26               [12] 7366 	add	a,@r0
      0054AD FA               [12] 7367 	mov	r2,a
      0054AE 74 40            [12] 7368 	mov	a,#0x40
      0054B0 08               [12] 7369 	inc	r0
      0054B1 36               [12] 7370 	addc	a,@r0
      0054B2 FB               [12] 7371 	mov	r3,a
      0054B3 08               [12] 7372 	inc	r0
      0054B4 86 04            [24] 7373 	mov	ar4,@r0
      0054B6 8A 82            [24] 7374 	mov	dpl,r2
      0054B8 8B 83            [24] 7375 	mov	dph,r3
      0054BA 8C F0            [24] 7376 	mov	b,r4
      0054BC 12 70 E2         [24] 7377 	lcall	__gptrget
      0054BF FD               [12] 7378 	mov	r5,a
      0054C0 A3               [24] 7379 	inc	dptr
      0054C1 12 70 E2         [24] 7380 	lcall	__gptrget
      0054C4 FE               [12] 7381 	mov	r6,a
      0054C5 A3               [24] 7382 	inc	dptr
      0054C6 12 70 E2         [24] 7383 	lcall	__gptrget
      0054C9 FF               [12] 7384 	mov	r7,a
      0054CA C0 04            [24] 7385 	push	ar4
      0054CC C0 03            [24] 7386 	push	ar3
      0054CE C0 02            [24] 7387 	push	ar2
      0054D0 E5 08            [12] 7388 	mov	a,_bp
      0054D2 24 0E            [12] 7389 	add	a,#0x0e
      0054D4 F8               [12] 7390 	mov	r0,a
      0054D5 E6               [12] 7391 	mov	a,@r0
      0054D6 C0 E0            [24] 7392 	push	acc
      0054D8 08               [12] 7393 	inc	r0
      0054D9 E6               [12] 7394 	mov	a,@r0
      0054DA C0 E0            [24] 7395 	push	acc
      0054DC 08               [12] 7396 	inc	r0
      0054DD E6               [12] 7397 	mov	a,@r0
      0054DE C0 E0            [24] 7398 	push	acc
      0054E0 8D 82            [24] 7399 	mov	dpl,r5
      0054E2 8E 83            [24] 7400 	mov	dph,r6
      0054E4 8F F0            [24] 7401 	mov	b,r7
      0054E6 12 27 83         [24] 7402 	lcall	_stack_pop
      0054E9 AE 82            [24] 7403 	mov	r6,dpl
      0054EB AF 83            [24] 7404 	mov	r7,dph
      0054ED 15 81            [12] 7405 	dec	sp
      0054EF 15 81            [12] 7406 	dec	sp
      0054F1 15 81            [12] 7407 	dec	sp
      0054F3 D0 02            [24] 7408 	pop	ar2
      0054F5 D0 03            [24] 7409 	pop	ar3
      0054F7 D0 04            [24] 7410 	pop	ar4
      0054F9 EE               [12] 7411 	mov	a,r6
      0054FA 4F               [12] 7412 	orl	a,r7
      0054FB 70 25            [24] 7413 	jnz	00242$
      0054FD 7D B1            [12] 7414 	mov	r5,#___str_10
      0054FF 7C 89            [12] 7415 	mov	r4,#(___str_10 >> 8)
      005501 7B 80            [12] 7416 	mov	r3,#0x80
                                   7417 ;	calc.c:59: return;
      005503                       7418 00492$:
                                   7419 ;	calc.c:57: for (; *s; s++) putchar(*s);
      005503 8D 82            [24] 7420 	mov	dpl,r5
      005505 8C 83            [24] 7421 	mov	dph,r4
      005507 8B F0            [24] 7422 	mov	b,r3
      005509 12 70 E2         [24] 7423 	lcall	__gptrget
      00550C FF               [12] 7424 	mov	r7,a
      00550D 70 03            [24] 7425 	jnz	01400$
      00550F 02 57 14         [24] 7426 	ljmp	00249$
      005512                       7427 01400$:
      005512 7E 00            [12] 7428 	mov	r6,#0x00
      005514 8F 82            [24] 7429 	mov	dpl,r7
      005516 8E 83            [24] 7430 	mov	dph,r6
      005518 12 2B 70         [24] 7431 	lcall	_putchar
      00551B 0D               [12] 7432 	inc	r5
                                   7433 ;	calc.c:334: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00551C BD 00 E4         [24] 7434 	cjne	r5,#0x00,00492$
      00551F 0C               [12] 7435 	inc	r4
      005520 80 E1            [24] 7436 	sjmp	00492$
      005522                       7437 00242$:
                                   7438 ;	calc.c:335: else if (!stack_pop(ctx->ps, &d1)) {
      005522 E5 08            [12] 7439 	mov	a,_bp
      005524 24 19            [12] 7440 	add	a,#0x19
      005526 FF               [12] 7441 	mov	r7,a
      005527 E5 08            [12] 7442 	mov	a,_bp
      005529 24 0E            [12] 7443 	add	a,#0x0e
      00552B F8               [12] 7444 	mov	r0,a
      00552C A6 07            [24] 7445 	mov	@r0,ar7
      00552E 08               [12] 7446 	inc	r0
      00552F 76 00            [12] 7447 	mov	@r0,#0x00
      005531 08               [12] 7448 	inc	r0
      005532 76 40            [12] 7449 	mov	@r0,#0x40
      005534 8A 82            [24] 7450 	mov	dpl,r2
      005536 8B 83            [24] 7451 	mov	dph,r3
      005538 8C F0            [24] 7452 	mov	b,r4
      00553A 12 70 E2         [24] 7453 	lcall	__gptrget
      00553D FD               [12] 7454 	mov	r5,a
      00553E A3               [24] 7455 	inc	dptr
      00553F 12 70 E2         [24] 7456 	lcall	__gptrget
      005542 FE               [12] 7457 	mov	r6,a
      005543 A3               [24] 7458 	inc	dptr
      005544 12 70 E2         [24] 7459 	lcall	__gptrget
      005547 FF               [12] 7460 	mov	r7,a
      005548 C0 04            [24] 7461 	push	ar4
      00554A C0 03            [24] 7462 	push	ar3
      00554C C0 02            [24] 7463 	push	ar2
      00554E E5 08            [12] 7464 	mov	a,_bp
      005550 24 0E            [12] 7465 	add	a,#0x0e
      005552 F8               [12] 7466 	mov	r0,a
      005553 E6               [12] 7467 	mov	a,@r0
      005554 C0 E0            [24] 7468 	push	acc
      005556 08               [12] 7469 	inc	r0
      005557 E6               [12] 7470 	mov	a,@r0
      005558 C0 E0            [24] 7471 	push	acc
      00555A 08               [12] 7472 	inc	r0
      00555B E6               [12] 7473 	mov	a,@r0
      00555C C0 E0            [24] 7474 	push	acc
      00555E 8D 82            [24] 7475 	mov	dpl,r5
      005560 8E 83            [24] 7476 	mov	dph,r6
      005562 8F F0            [24] 7477 	mov	b,r7
      005564 12 27 83         [24] 7478 	lcall	_stack_pop
      005567 AE 82            [24] 7479 	mov	r6,dpl
      005569 AF 83            [24] 7480 	mov	r7,dph
      00556B 15 81            [12] 7481 	dec	sp
      00556D 15 81            [12] 7482 	dec	sp
      00556F 15 81            [12] 7483 	dec	sp
      005571 D0 02            [24] 7484 	pop	ar2
      005573 D0 03            [24] 7485 	pop	ar3
      005575 D0 04            [24] 7486 	pop	ar4
      005577 EE               [12] 7487 	mov	a,r6
      005578 4F               [12] 7488 	orl	a,r7
      005579 70 5C            [24] 7489 	jnz	00239$
                                   7490 ;	calc.c:336: (void)stack_push(ctx->ps, d0);
      00557B 8A 82            [24] 7491 	mov	dpl,r2
      00557D 8B 83            [24] 7492 	mov	dph,r3
      00557F 8C F0            [24] 7493 	mov	b,r4
      005581 12 70 E2         [24] 7494 	lcall	__gptrget
      005584 FD               [12] 7495 	mov	r5,a
      005585 A3               [24] 7496 	inc	dptr
      005586 12 70 E2         [24] 7497 	lcall	__gptrget
      005589 FE               [12] 7498 	mov	r6,a
      00558A A3               [24] 7499 	inc	dptr
      00558B 12 70 E2         [24] 7500 	lcall	__gptrget
      00558E FF               [12] 7501 	mov	r7,a
      00558F E5 08            [12] 7502 	mov	a,_bp
      005591 24 15            [12] 7503 	add	a,#0x15
      005593 F8               [12] 7504 	mov	r0,a
      005594 E6               [12] 7505 	mov	a,@r0
      005595 C0 E0            [24] 7506 	push	acc
      005597 08               [12] 7507 	inc	r0
      005598 E6               [12] 7508 	mov	a,@r0
      005599 C0 E0            [24] 7509 	push	acc
      00559B 08               [12] 7510 	inc	r0
      00559C E6               [12] 7511 	mov	a,@r0
      00559D C0 E0            [24] 7512 	push	acc
      00559F 08               [12] 7513 	inc	r0
      0055A0 E6               [12] 7514 	mov	a,@r0
      0055A1 C0 E0            [24] 7515 	push	acc
      0055A3 8D 82            [24] 7516 	mov	dpl,r5
      0055A5 8E 83            [24] 7517 	mov	dph,r6
      0055A7 8F F0            [24] 7518 	mov	b,r7
      0055A9 12 26 B5         [24] 7519 	lcall	_stack_push
      0055AC E5 81            [12] 7520 	mov	a,sp
      0055AE 24 FC            [12] 7521 	add	a,#0xfc
      0055B0 F5 81            [12] 7522 	mov	sp,a
                                   7523 ;	calc.c:337: printstr("\r\nstack underflow\r\n");
      0055B2 7D B1            [12] 7524 	mov	r5,#___str_10
      0055B4 7C 89            [12] 7525 	mov	r4,#(___str_10 >> 8)
      0055B6 7B 80            [12] 7526 	mov	r3,#0x80
                                   7527 ;	calc.c:59: return;
      0055B8                       7528 00495$:
                                   7529 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0055B8 8D 82            [24] 7530 	mov	dpl,r5
      0055BA 8C 83            [24] 7531 	mov	dph,r4
      0055BC 8B F0            [24] 7532 	mov	b,r3
      0055BE 12 70 E2         [24] 7533 	lcall	__gptrget
      0055C1 FF               [12] 7534 	mov	r7,a
      0055C2 70 03            [24] 7535 	jnz	01403$
      0055C4 02 57 14         [24] 7536 	ljmp	00249$
      0055C7                       7537 01403$:
      0055C7 7E 00            [12] 7538 	mov	r6,#0x00
      0055C9 8F 82            [24] 7539 	mov	dpl,r7
      0055CB 8E 83            [24] 7540 	mov	dph,r6
      0055CD 12 2B 70         [24] 7541 	lcall	_putchar
      0055D0 0D               [12] 7542 	inc	r5
                                   7543 ;	calc.c:337: printstr("\r\nstack underflow\r\n");
      0055D1 BD 00 E4         [24] 7544 	cjne	r5,#0x00,00495$
      0055D4 0C               [12] 7545 	inc	r4
      0055D5 80 E1            [24] 7546 	sjmp	00495$
      0055D7                       7547 00239$:
                                   7548 ;	calc.c:339: d1 <<= d0;
      0055D7 E5 08            [12] 7549 	mov	a,_bp
      0055D9 24 15            [12] 7550 	add	a,#0x15
      0055DB F8               [12] 7551 	mov	r0,a
      0055DC 86 F0            [24] 7552 	mov	b,@r0
      0055DE 05 F0            [12] 7553 	inc	b
      0055E0 E5 08            [12] 7554 	mov	a,_bp
      0055E2 24 19            [12] 7555 	add	a,#0x19
      0055E4 F8               [12] 7556 	mov	r0,a
      0055E5 80 12            [24] 7557 	sjmp	01406$
      0055E7                       7558 01405$:
      0055E7 E6               [12] 7559 	mov	a,@r0
      0055E8 26               [12] 7560 	add	a,@r0
      0055E9 F6               [12] 7561 	mov	@r0,a
      0055EA 08               [12] 7562 	inc	r0
      0055EB E6               [12] 7563 	mov	a,@r0
      0055EC 33               [12] 7564 	rlc	a
      0055ED F6               [12] 7565 	mov	@r0,a
      0055EE 08               [12] 7566 	inc	r0
      0055EF E6               [12] 7567 	mov	a,@r0
      0055F0 33               [12] 7568 	rlc	a
      0055F1 F6               [12] 7569 	mov	@r0,a
      0055F2 08               [12] 7570 	inc	r0
      0055F3 E6               [12] 7571 	mov	a,@r0
      0055F4 33               [12] 7572 	rlc	a
      0055F5 F6               [12] 7573 	mov	@r0,a
      0055F6 18               [12] 7574 	dec	r0
      0055F7 18               [12] 7575 	dec	r0
      0055F8 18               [12] 7576 	dec	r0
      0055F9                       7577 01406$:
      0055F9 D5 F0 EB         [24] 7578 	djnz	b,01405$
                                   7579 ;	calc.c:340: (void)stack_push(ctx->ps, d1);
      0055FC 8A 82            [24] 7580 	mov	dpl,r2
      0055FE 8B 83            [24] 7581 	mov	dph,r3
      005600 8C F0            [24] 7582 	mov	b,r4
      005602 12 70 E2         [24] 7583 	lcall	__gptrget
      005605 FA               [12] 7584 	mov	r2,a
      005606 A3               [24] 7585 	inc	dptr
      005607 12 70 E2         [24] 7586 	lcall	__gptrget
      00560A FB               [12] 7587 	mov	r3,a
      00560B A3               [24] 7588 	inc	dptr
      00560C 12 70 E2         [24] 7589 	lcall	__gptrget
      00560F FC               [12] 7590 	mov	r4,a
      005610 E5 08            [12] 7591 	mov	a,_bp
      005612 24 19            [12] 7592 	add	a,#0x19
      005614 F8               [12] 7593 	mov	r0,a
      005615 E6               [12] 7594 	mov	a,@r0
      005616 C0 E0            [24] 7595 	push	acc
      005618 08               [12] 7596 	inc	r0
      005619 E6               [12] 7597 	mov	a,@r0
      00561A C0 E0            [24] 7598 	push	acc
      00561C 08               [12] 7599 	inc	r0
      00561D E6               [12] 7600 	mov	a,@r0
      00561E C0 E0            [24] 7601 	push	acc
      005620 08               [12] 7602 	inc	r0
      005621 E6               [12] 7603 	mov	a,@r0
      005622 C0 E0            [24] 7604 	push	acc
      005624 8A 82            [24] 7605 	mov	dpl,r2
      005626 8B 83            [24] 7606 	mov	dph,r3
      005628 8C F0            [24] 7607 	mov	b,r4
      00562A 12 26 B5         [24] 7608 	lcall	_stack_push
      00562D E5 81            [12] 7609 	mov	a,sp
      00562F 24 FC            [12] 7610 	add	a,#0xfc
      005631 F5 81            [12] 7611 	mov	sp,a
                                   7612 ;	calc.c:342: break;
      005633 02 57 14         [24] 7613 	ljmp	00249$
                                   7614 ;	calc.c:343: case '~':
      005636                       7615 00244$:
                                   7616 ;	calc.c:344: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005636 E5 08            [12] 7617 	mov	a,_bp
      005638 24 15            [12] 7618 	add	a,#0x15
      00563A FF               [12] 7619 	mov	r7,a
      00563B E5 08            [12] 7620 	mov	a,_bp
      00563D 24 0E            [12] 7621 	add	a,#0x0e
      00563F F8               [12] 7622 	mov	r0,a
      005640 A6 07            [24] 7623 	mov	@r0,ar7
      005642 08               [12] 7624 	inc	r0
      005643 76 00            [12] 7625 	mov	@r0,#0x00
      005645 08               [12] 7626 	inc	r0
      005646 76 40            [12] 7627 	mov	@r0,#0x40
      005648 E5 08            [12] 7628 	mov	a,_bp
      00564A 24 12            [12] 7629 	add	a,#0x12
      00564C F8               [12] 7630 	mov	r0,a
      00564D 74 11            [12] 7631 	mov	a,#0x11
      00564F 26               [12] 7632 	add	a,@r0
      005650 FA               [12] 7633 	mov	r2,a
      005651 74 40            [12] 7634 	mov	a,#0x40
      005653 08               [12] 7635 	inc	r0
      005654 36               [12] 7636 	addc	a,@r0
      005655 FB               [12] 7637 	mov	r3,a
      005656 08               [12] 7638 	inc	r0
      005657 86 04            [24] 7639 	mov	ar4,@r0
      005659 8A 82            [24] 7640 	mov	dpl,r2
      00565B 8B 83            [24] 7641 	mov	dph,r3
      00565D 8C F0            [24] 7642 	mov	b,r4
      00565F 12 70 E2         [24] 7643 	lcall	__gptrget
      005662 FD               [12] 7644 	mov	r5,a
      005663 A3               [24] 7645 	inc	dptr
      005664 12 70 E2         [24] 7646 	lcall	__gptrget
      005667 FE               [12] 7647 	mov	r6,a
      005668 A3               [24] 7648 	inc	dptr
      005669 12 70 E2         [24] 7649 	lcall	__gptrget
      00566C FF               [12] 7650 	mov	r7,a
      00566D C0 04            [24] 7651 	push	ar4
      00566F C0 03            [24] 7652 	push	ar3
      005671 C0 02            [24] 7653 	push	ar2
      005673 E5 08            [12] 7654 	mov	a,_bp
      005675 24 0E            [12] 7655 	add	a,#0x0e
      005677 F8               [12] 7656 	mov	r0,a
      005678 E6               [12] 7657 	mov	a,@r0
      005679 C0 E0            [24] 7658 	push	acc
      00567B 08               [12] 7659 	inc	r0
      00567C E6               [12] 7660 	mov	a,@r0
      00567D C0 E0            [24] 7661 	push	acc
      00567F 08               [12] 7662 	inc	r0
      005680 E6               [12] 7663 	mov	a,@r0
      005681 C0 E0            [24] 7664 	push	acc
      005683 8D 82            [24] 7665 	mov	dpl,r5
      005685 8E 83            [24] 7666 	mov	dph,r6
      005687 8F F0            [24] 7667 	mov	b,r7
      005689 12 27 83         [24] 7668 	lcall	_stack_pop
      00568C AE 82            [24] 7669 	mov	r6,dpl
      00568E AF 83            [24] 7670 	mov	r7,dph
      005690 15 81            [12] 7671 	dec	sp
      005692 15 81            [12] 7672 	dec	sp
      005694 15 81            [12] 7673 	dec	sp
      005696 D0 02            [24] 7674 	pop	ar2
      005698 D0 03            [24] 7675 	pop	ar3
      00569A D0 04            [24] 7676 	pop	ar4
      00569C EE               [12] 7677 	mov	a,r6
      00569D 4F               [12] 7678 	orl	a,r7
      00569E 70 22            [24] 7679 	jnz	00246$
      0056A0 7D B1            [12] 7680 	mov	r5,#___str_10
      0056A2 7C 89            [12] 7681 	mov	r4,#(___str_10 >> 8)
      0056A4 7B 80            [12] 7682 	mov	r3,#0x80
                                   7683 ;	calc.c:59: return;
      0056A6                       7684 00498$:
                                   7685 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0056A6 8D 82            [24] 7686 	mov	dpl,r5
      0056A8 8C 83            [24] 7687 	mov	dph,r4
      0056AA 8B F0            [24] 7688 	mov	b,r3
      0056AC 12 70 E2         [24] 7689 	lcall	__gptrget
      0056AF FF               [12] 7690 	mov	r7,a
      0056B0 60 62            [24] 7691 	jz	00249$
      0056B2 7E 00            [12] 7692 	mov	r6,#0x00
      0056B4 8F 82            [24] 7693 	mov	dpl,r7
      0056B6 8E 83            [24] 7694 	mov	dph,r6
      0056B8 12 2B 70         [24] 7695 	lcall	_putchar
      0056BB 0D               [12] 7696 	inc	r5
                                   7697 ;	calc.c:344: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0056BC BD 00 E7         [24] 7698 	cjne	r5,#0x00,00498$
      0056BF 0C               [12] 7699 	inc	r4
      0056C0 80 E4            [24] 7700 	sjmp	00498$
      0056C2                       7701 00246$:
                                   7702 ;	calc.c:346: d0 = ~d0;
      0056C2 E5 08            [12] 7703 	mov	a,_bp
      0056C4 24 15            [12] 7704 	add	a,#0x15
      0056C6 F8               [12] 7705 	mov	r0,a
      0056C7 E6               [12] 7706 	mov	a,@r0
      0056C8 F4               [12] 7707 	cpl	a
      0056C9 F6               [12] 7708 	mov	@r0,a
      0056CA 08               [12] 7709 	inc	r0
      0056CB E6               [12] 7710 	mov	a,@r0
      0056CC F4               [12] 7711 	cpl	a
      0056CD F6               [12] 7712 	mov	@r0,a
      0056CE 08               [12] 7713 	inc	r0
      0056CF E6               [12] 7714 	mov	a,@r0
      0056D0 F4               [12] 7715 	cpl	a
      0056D1 F6               [12] 7716 	mov	@r0,a
      0056D2 08               [12] 7717 	inc	r0
      0056D3 E6               [12] 7718 	mov	a,@r0
      0056D4 F4               [12] 7719 	cpl	a
      0056D5 F6               [12] 7720 	mov	@r0,a
                                   7721 ;	calc.c:347: (void)stack_push(ctx->ps, d0);
      0056D6 8A 82            [24] 7722 	mov	dpl,r2
      0056D8 8B 83            [24] 7723 	mov	dph,r3
      0056DA 8C F0            [24] 7724 	mov	b,r4
      0056DC 12 70 E2         [24] 7725 	lcall	__gptrget
      0056DF FA               [12] 7726 	mov	r2,a
      0056E0 A3               [24] 7727 	inc	dptr
      0056E1 12 70 E2         [24] 7728 	lcall	__gptrget
      0056E4 FB               [12] 7729 	mov	r3,a
      0056E5 A3               [24] 7730 	inc	dptr
      0056E6 12 70 E2         [24] 7731 	lcall	__gptrget
      0056E9 FC               [12] 7732 	mov	r4,a
      0056EA E5 08            [12] 7733 	mov	a,_bp
      0056EC 24 15            [12] 7734 	add	a,#0x15
      0056EE F8               [12] 7735 	mov	r0,a
      0056EF E6               [12] 7736 	mov	a,@r0
      0056F0 C0 E0            [24] 7737 	push	acc
      0056F2 08               [12] 7738 	inc	r0
      0056F3 E6               [12] 7739 	mov	a,@r0
      0056F4 C0 E0            [24] 7740 	push	acc
      0056F6 08               [12] 7741 	inc	r0
      0056F7 E6               [12] 7742 	mov	a,@r0
      0056F8 C0 E0            [24] 7743 	push	acc
      0056FA 08               [12] 7744 	inc	r0
      0056FB E6               [12] 7745 	mov	a,@r0
      0056FC C0 E0            [24] 7746 	push	acc
      0056FE 8A 82            [24] 7747 	mov	dpl,r2
      005700 8B 83            [24] 7748 	mov	dph,r3
      005702 8C F0            [24] 7749 	mov	b,r4
      005704 12 26 B5         [24] 7750 	lcall	_stack_push
      005707 E5 81            [12] 7751 	mov	a,sp
      005709 24 FC            [12] 7752 	add	a,#0xfc
      00570B F5 81            [12] 7753 	mov	sp,a
                                   7754 ;	calc.c:349: break;
                                   7755 ;	calc.c:350: default:
      00570D 80 05            [24] 7756 	sjmp	00249$
      00570F                       7757 00248$:
                                   7758 ;	calc.c:351: return UNDEF;
      00570F 90 80 00         [24] 7759 	mov	dptr,#0x8000
                                   7760 ;	calc.c:352: }
      005712 80 03            [24] 7761 	sjmp	00500$
      005714                       7762 00249$:
                                   7763 ;	calc.c:354: return 1;
      005714 90 00 01         [24] 7764 	mov	dptr,#0x0001
      005717                       7765 00500$:
                                   7766 ;	calc.c:355: }
      005717 85 08 81         [24] 7767 	mov	sp,_bp
      00571A D0 08            [24] 7768 	pop	_bp
      00571C 22               [24] 7769 	ret
                                   7770 ;------------------------------------------------------------
                                   7771 ;Allocation info for local variables in function 'push_acc'
                                   7772 ;------------------------------------------------------------
                                   7773 ;delta                     Allocated to stack - _bp -5
                                   7774 ;_ctx                      Allocated to stack - _bp +5
                                   7775 ;ctx                       Allocated to registers r2 r3 r4 
                                   7776 ;__1310720127              Allocated to registers 
                                   7777 ;s                         Allocated to registers r5 r6 r7 
                                   7778 ;sloc0                     Allocated to stack - _bp +1
                                   7779 ;------------------------------------------------------------
                                   7780 ;	calc.c:357: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7781 ;	-----------------------------------------
                                   7782 ;	 function push_acc
                                   7783 ;	-----------------------------------------
      00571D                       7784 _push_acc:
      00571D C0 08            [24] 7785 	push	_bp
      00571F E5 81            [12] 7786 	mov	a,sp
      005721 F5 08            [12] 7787 	mov	_bp,a
      005723 24 07            [12] 7788 	add	a,#0x07
      005725 F5 81            [12] 7789 	mov	sp,a
      005727 C8               [12] 7790 	xch	a,r0
      005728 E5 08            [12] 7791 	mov	a,_bp
      00572A 24 05            [12] 7792 	add	a,#0x05
      00572C C8               [12] 7793 	xch	a,r0
      00572D A6 82            [24] 7794 	mov	@r0,dpl
      00572F 08               [12] 7795 	inc	r0
      005730 A6 83            [24] 7796 	mov	@r0,dph
      005732 08               [12] 7797 	inc	r0
      005733 A6 F0            [24] 7798 	mov	@r0,b
                                   7799 ;	calc.c:358: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      005735 E5 08            [12] 7800 	mov	a,_bp
      005737 24 05            [12] 7801 	add	a,#0x05
      005739 F8               [12] 7802 	mov	r0,a
      00573A 86 02            [24] 7803 	mov	ar2,@r0
      00573C 08               [12] 7804 	inc	r0
      00573D 86 03            [24] 7805 	mov	ar3,@r0
      00573F 08               [12] 7806 	inc	r0
      005740 86 04            [24] 7807 	mov	ar4,@r0
                                   7808 ;	calc.c:362: ctx->acc_valid = 0;
      005742 74 06            [12] 7809 	mov	a,#0x06
      005744 2A               [12] 7810 	add	a,r2
      005745 FD               [12] 7811 	mov	r5,a
      005746 E4               [12] 7812 	clr	a
      005747 3B               [12] 7813 	addc	a,r3
      005748 FE               [12] 7814 	mov	r6,a
      005749 8C 07            [24] 7815 	mov	ar7,r4
      00574B 8D 82            [24] 7816 	mov	dpl,r5
      00574D 8E 83            [24] 7817 	mov	dph,r6
      00574F 8F F0            [24] 7818 	mov	b,r7
      005751 E4               [12] 7819 	clr	a
      005752 12 6C 67         [24] 7820 	lcall	__gptrput
                                   7821 ;	calc.c:363: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      005755 74 02            [12] 7822 	mov	a,#0x02
      005757 2A               [12] 7823 	add	a,r2
      005758 FF               [12] 7824 	mov	r7,a
      005759 E4               [12] 7825 	clr	a
      00575A 3B               [12] 7826 	addc	a,r3
      00575B FD               [12] 7827 	mov	r5,a
      00575C 8C 06            [24] 7828 	mov	ar6,r4
      00575E 8F 82            [24] 7829 	mov	dpl,r7
      005760 8D 83            [24] 7830 	mov	dph,r5
      005762 8E F0            [24] 7831 	mov	b,r6
      005764 A8 08            [24] 7832 	mov	r0,_bp
      005766 08               [12] 7833 	inc	r0
      005767 12 70 E2         [24] 7834 	lcall	__gptrget
      00576A F6               [12] 7835 	mov	@r0,a
      00576B A3               [24] 7836 	inc	dptr
      00576C 12 70 E2         [24] 7837 	lcall	__gptrget
      00576F 08               [12] 7838 	inc	r0
      005770 F6               [12] 7839 	mov	@r0,a
      005771 A3               [24] 7840 	inc	dptr
      005772 12 70 E2         [24] 7841 	lcall	__gptrget
      005775 08               [12] 7842 	inc	r0
      005776 F6               [12] 7843 	mov	@r0,a
      005777 A3               [24] 7844 	inc	dptr
      005778 12 70 E2         [24] 7845 	lcall	__gptrget
      00577B 08               [12] 7846 	inc	r0
      00577C F6               [12] 7847 	mov	@r0,a
      00577D 74 11            [12] 7848 	mov	a,#0x11
      00577F 2A               [12] 7849 	add	a,r2
      005780 FA               [12] 7850 	mov	r2,a
      005781 74 40            [12] 7851 	mov	a,#0x40
      005783 3B               [12] 7852 	addc	a,r3
      005784 FB               [12] 7853 	mov	r3,a
      005785 8C 07            [24] 7854 	mov	ar7,r4
      005787 8A 82            [24] 7855 	mov	dpl,r2
      005789 8B 83            [24] 7856 	mov	dph,r3
      00578B 8F F0            [24] 7857 	mov	b,r7
      00578D 12 70 E2         [24] 7858 	lcall	__gptrget
      005790 FA               [12] 7859 	mov	r2,a
      005791 A3               [24] 7860 	inc	dptr
      005792 12 70 E2         [24] 7861 	lcall	__gptrget
      005795 FB               [12] 7862 	mov	r3,a
      005796 A3               [24] 7863 	inc	dptr
      005797 12 70 E2         [24] 7864 	lcall	__gptrget
      00579A FF               [12] 7865 	mov	r7,a
      00579B A8 08            [24] 7866 	mov	r0,_bp
      00579D 08               [12] 7867 	inc	r0
      00579E E6               [12] 7868 	mov	a,@r0
      00579F C0 E0            [24] 7869 	push	acc
      0057A1 08               [12] 7870 	inc	r0
      0057A2 E6               [12] 7871 	mov	a,@r0
      0057A3 C0 E0            [24] 7872 	push	acc
      0057A5 08               [12] 7873 	inc	r0
      0057A6 E6               [12] 7874 	mov	a,@r0
      0057A7 C0 E0            [24] 7875 	push	acc
      0057A9 08               [12] 7876 	inc	r0
      0057AA E6               [12] 7877 	mov	a,@r0
      0057AB C0 E0            [24] 7878 	push	acc
      0057AD 8A 82            [24] 7879 	mov	dpl,r2
      0057AF 8B 83            [24] 7880 	mov	dph,r3
      0057B1 8F F0            [24] 7881 	mov	b,r7
      0057B3 12 26 B5         [24] 7882 	lcall	_stack_push
      0057B6 AE 82            [24] 7883 	mov	r6,dpl
      0057B8 AF 83            [24] 7884 	mov	r7,dph
      0057BA E5 81            [12] 7885 	mov	a,sp
      0057BC 24 FC            [12] 7886 	add	a,#0xfc
      0057BE F5 81            [12] 7887 	mov	sp,a
      0057C0 EE               [12] 7888 	mov	a,r6
      0057C1 4F               [12] 7889 	orl	a,r7
      0057C2 70 22            [24] 7890 	jnz	00102$
      0057C4 7D 00            [12] 7891 	mov	r5,#___str_13
      0057C6 7E 8A            [12] 7892 	mov	r6,#(___str_13 >> 8)
      0057C8 7F 80            [12] 7893 	mov	r7,#0x80
                                   7894 ;	calc.c:59: return;
      0057CA                       7895 00109$:
                                   7896 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0057CA 8D 82            [24] 7897 	mov	dpl,r5
      0057CC 8E 83            [24] 7898 	mov	dph,r6
      0057CE 8F F0            [24] 7899 	mov	b,r7
      0057D0 12 70 E2         [24] 7900 	lcall	__gptrget
      0057D3 FC               [12] 7901 	mov	r4,a
      0057D4 60 10            [24] 7902 	jz	00102$
      0057D6 7B 00            [12] 7903 	mov	r3,#0x00
      0057D8 8C 82            [24] 7904 	mov	dpl,r4
      0057DA 8B 83            [24] 7905 	mov	dph,r3
      0057DC 12 2B 70         [24] 7906 	lcall	_putchar
      0057DF 0D               [12] 7907 	inc	r5
                                   7908 ;	calc.c:363: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      0057E0 BD 00 E7         [24] 7909 	cjne	r5,#0x00,00109$
      0057E3 0E               [12] 7910 	inc	r6
      0057E4 80 E4            [24] 7911 	sjmp	00109$
      0057E6                       7912 00102$:
                                   7913 ;	calc.c:365: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      0057E6 E5 08            [12] 7914 	mov	a,_bp
      0057E8 24 FB            [12] 7915 	add	a,#0xfb
      0057EA F8               [12] 7916 	mov	r0,a
      0057EB 86 05            [24] 7917 	mov	ar5,@r0
      0057ED 08               [12] 7918 	inc	r0
      0057EE 86 06            [24] 7919 	mov	ar6,@r0
      0057F0 08               [12] 7920 	inc	r0
      0057F1 86 07            [24] 7921 	mov	ar7,@r0
      0057F3 74 02            [12] 7922 	mov	a,#0x02
      0057F5 2D               [12] 7923 	add	a,r5
      0057F6 FA               [12] 7924 	mov	r2,a
      0057F7 E4               [12] 7925 	clr	a
      0057F8 3E               [12] 7926 	addc	a,r6
      0057F9 FB               [12] 7927 	mov	r3,a
      0057FA 8F 04            [24] 7928 	mov	ar4,r7
      0057FC 8A 82            [24] 7929 	mov	dpl,r2
      0057FE 8B 83            [24] 7930 	mov	dph,r3
      005800 8C F0            [24] 7931 	mov	b,r4
      005802 12 70 E2         [24] 7932 	lcall	__gptrget
      005805 FA               [12] 7933 	mov	r2,a
      005806 A3               [24] 7934 	inc	dptr
      005807 12 70 E2         [24] 7935 	lcall	__gptrget
      00580A FB               [12] 7936 	mov	r3,a
      00580B BA 02 29         [24] 7937 	cjne	r2,#0x02,00104$
      00580E BB 00 26         [24] 7938 	cjne	r3,#0x00,00104$
      005811 C0 05            [24] 7939 	push	ar5
      005813 C0 06            [24] 7940 	push	ar6
      005815 C0 07            [24] 7941 	push	ar7
      005817 E5 08            [12] 7942 	mov	a,_bp
      005819 24 05            [12] 7943 	add	a,#0x05
      00581B F8               [12] 7944 	mov	r0,a
      00581C 86 82            [24] 7945 	mov	dpl,@r0
      00581E 08               [12] 7946 	inc	r0
      00581F 86 83            [24] 7947 	mov	dph,@r0
      005821 08               [12] 7948 	inc	r0
      005822 86 F0            [24] 7949 	mov	b,@r0
      005824 12 34 23         [24] 7950 	lcall	_operator
      005827 AE 82            [24] 7951 	mov	r6,dpl
      005829 AF 83            [24] 7952 	mov	r7,dph
      00582B 15 81            [12] 7953 	dec	sp
      00582D 15 81            [12] 7954 	dec	sp
      00582F 15 81            [12] 7955 	dec	sp
      005831 8E 82            [24] 7956 	mov	dpl,r6
      005833 8F 83            [24] 7957 	mov	dph,r7
      005835 80 03            [24] 7958 	sjmp	00111$
      005837                       7959 00104$:
                                   7960 ;	calc.c:366: else return 1;
      005837 90 00 01         [24] 7961 	mov	dptr,#0x0001
      00583A                       7962 00111$:
                                   7963 ;	calc.c:367: }
      00583A 85 08 81         [24] 7964 	mov	sp,_bp
      00583D D0 08            [24] 7965 	pop	_bp
      00583F 22               [24] 7966 	ret
                                   7967 ;------------------------------------------------------------
                                   7968 ;Allocation info for local variables in function 'reset_acc'
                                   7969 ;------------------------------------------------------------
                                   7970 ;delta                     Allocated to stack - _bp -5
                                   7971 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7972 ;ctx                       Allocated to registers r5 r6 r7 
                                   7973 ;------------------------------------------------------------
                                   7974 ;	calc.c:369: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7975 ;	-----------------------------------------
                                   7976 ;	 function reset_acc
                                   7977 ;	-----------------------------------------
      005840                       7978 _reset_acc:
      005840 C0 08            [24] 7979 	push	_bp
      005842 85 81 08         [24] 7980 	mov	_bp,sp
      005845 AD 82            [24] 7981 	mov	r5,dpl
      005847 AE 83            [24] 7982 	mov	r6,dph
      005849 AF F0            [24] 7983 	mov	r7,b
                                   7984 ;	calc.c:370: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   7985 ;	calc.c:372: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      00584B E5 08            [12] 7986 	mov	a,_bp
      00584D 24 FB            [12] 7987 	add	a,#0xfb
      00584F F8               [12] 7988 	mov	r0,a
      005850 86 02            [24] 7989 	mov	ar2,@r0
      005852 08               [12] 7990 	inc	r0
      005853 86 03            [24] 7991 	mov	ar3,@r0
      005855 08               [12] 7992 	inc	r0
      005856 86 04            [24] 7993 	mov	ar4,@r0
      005858 74 02            [12] 7994 	mov	a,#0x02
      00585A 2A               [12] 7995 	add	a,r2
      00585B FA               [12] 7996 	mov	r2,a
      00585C E4               [12] 7997 	clr	a
      00585D 3B               [12] 7998 	addc	a,r3
      00585E FB               [12] 7999 	mov	r3,a
      00585F 8A 82            [24] 8000 	mov	dpl,r2
      005861 8B 83            [24] 8001 	mov	dph,r3
      005863 8C F0            [24] 8002 	mov	b,r4
      005865 12 70 E2         [24] 8003 	lcall	__gptrget
      005868 FA               [12] 8004 	mov	r2,a
      005869 A3               [24] 8005 	inc	dptr
      00586A 12 70 E2         [24] 8006 	lcall	__gptrget
      00586D FB               [12] 8007 	mov	r3,a
      00586E BA 07 16         [24] 8008 	cjne	r2,#0x07,00102$
      005871 BB 00 13         [24] 8009 	cjne	r3,#0x00,00102$
      005874 74 06            [12] 8010 	mov	a,#0x06
      005876 2D               [12] 8011 	add	a,r5
      005877 FA               [12] 8012 	mov	r2,a
      005878 E4               [12] 8013 	clr	a
      005879 3E               [12] 8014 	addc	a,r6
      00587A FB               [12] 8015 	mov	r3,a
      00587B 8F 04            [24] 8016 	mov	ar4,r7
      00587D 8A 82            [24] 8017 	mov	dpl,r2
      00587F 8B 83            [24] 8018 	mov	dph,r3
      005881 8C F0            [24] 8019 	mov	b,r4
      005883 E4               [12] 8020 	clr	a
      005884 12 6C 67         [24] 8021 	lcall	__gptrput
      005887                       8022 00102$:
                                   8023 ;	calc.c:373: ctx->acc = 0l;
      005887 74 02            [12] 8024 	mov	a,#0x02
      005889 2D               [12] 8025 	add	a,r5
      00588A FD               [12] 8026 	mov	r5,a
      00588B E4               [12] 8027 	clr	a
      00588C 3E               [12] 8028 	addc	a,r6
      00588D FE               [12] 8029 	mov	r6,a
      00588E 8D 82            [24] 8030 	mov	dpl,r5
      005890 8E 83            [24] 8031 	mov	dph,r6
      005892 8F F0            [24] 8032 	mov	b,r7
      005894 E4               [12] 8033 	clr	a
      005895 12 6C 67         [24] 8034 	lcall	__gptrput
      005898 A3               [24] 8035 	inc	dptr
      005899 12 6C 67         [24] 8036 	lcall	__gptrput
      00589C A3               [24] 8037 	inc	dptr
      00589D 12 6C 67         [24] 8038 	lcall	__gptrput
      0058A0 A3               [24] 8039 	inc	dptr
      0058A1 12 6C 67         [24] 8040 	lcall	__gptrput
                                   8041 ;	calc.c:375: return 1;
      0058A4 90 00 01         [24] 8042 	mov	dptr,#0x0001
                                   8043 ;	calc.c:376: }
      0058A7 D0 08            [24] 8044 	pop	_bp
      0058A9 22               [24] 8045 	ret
                                   8046 ;------------------------------------------------------------
                                   8047 ;Allocation info for local variables in function 'reset_base'
                                   8048 ;------------------------------------------------------------
                                   8049 ;delta                     Allocated to stack - _bp -5
                                   8050 ;_ctx                      Allocated to registers r5 r6 r7 
                                   8051 ;ctx                       Allocated to registers r5 r6 r7 
                                   8052 ;------------------------------------------------------------
                                   8053 ;	calc.c:378: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   8054 ;	-----------------------------------------
                                   8055 ;	 function reset_base
                                   8056 ;	-----------------------------------------
      0058AA                       8057 _reset_base:
      0058AA C0 08            [24] 8058 	push	_bp
      0058AC 85 81 08         [24] 8059 	mov	_bp,sp
      0058AF AD 82            [24] 8060 	mov	r5,dpl
      0058B1 AE 83            [24] 8061 	mov	r6,dph
      0058B3 AF F0            [24] 8062 	mov	r7,b
                                   8063 ;	calc.c:379: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   8064 ;	calc.c:383: switch (ctx->digit[0]) {
      0058B5 74 07            [12] 8065 	mov	a,#0x07
      0058B7 2D               [12] 8066 	add	a,r5
      0058B8 FA               [12] 8067 	mov	r2,a
      0058B9 E4               [12] 8068 	clr	a
      0058BA 3E               [12] 8069 	addc	a,r6
      0058BB FB               [12] 8070 	mov	r3,a
      0058BC 8F 04            [24] 8071 	mov	ar4,r7
      0058BE 8A 82            [24] 8072 	mov	dpl,r2
      0058C0 8B 83            [24] 8073 	mov	dph,r3
      0058C2 8C F0            [24] 8074 	mov	b,r4
      0058C4 12 70 E2         [24] 8075 	lcall	__gptrget
      0058C7 FC               [12] 8076 	mov	r4,a
      0058C8 BC 48 02         [24] 8077 	cjne	r4,#0x48,00124$
      0058CB 80 0F            [24] 8078 	sjmp	00101$
      0058CD                       8079 00124$:
      0058CD BC 4F 02         [24] 8080 	cjne	r4,#0x4f,00125$
      0058D0 80 2E            [24] 8081 	sjmp	00103$
      0058D2                       8082 00125$:
      0058D2 BC 68 02         [24] 8083 	cjne	r4,#0x68,00126$
      0058D5 80 17            [24] 8084 	sjmp	00102$
      0058D7                       8085 00126$:
                                   8086 ;	calc.c:384: case 'H':
      0058D7 BC 6F 48         [24] 8087 	cjne	r4,#0x6f,00105$
      0058DA 80 36            [24] 8088 	sjmp	00104$
      0058DC                       8089 00101$:
                                   8090 ;	calc.c:385: ctx->base = 16;
      0058DC 8D 82            [24] 8091 	mov	dpl,r5
      0058DE 8E 83            [24] 8092 	mov	dph,r6
      0058E0 8F F0            [24] 8093 	mov	b,r7
      0058E2 74 10            [12] 8094 	mov	a,#0x10
      0058E4 12 6C 67         [24] 8095 	lcall	__gptrput
      0058E7 A3               [24] 8096 	inc	dptr
      0058E8 E4               [12] 8097 	clr	a
      0058E9 12 6C 67         [24] 8098 	lcall	__gptrput
                                   8099 ;	calc.c:386: break;
                                   8100 ;	calc.c:387: case 'h':
      0058EC 80 34            [24] 8101 	sjmp	00105$
      0058EE                       8102 00102$:
                                   8103 ;	calc.c:388: ctx->base = 10;
      0058EE 8D 82            [24] 8104 	mov	dpl,r5
      0058F0 8E 83            [24] 8105 	mov	dph,r6
      0058F2 8F F0            [24] 8106 	mov	b,r7
      0058F4 74 0A            [12] 8107 	mov	a,#0x0a
      0058F6 12 6C 67         [24] 8108 	lcall	__gptrput
      0058F9 A3               [24] 8109 	inc	dptr
      0058FA E4               [12] 8110 	clr	a
      0058FB 12 6C 67         [24] 8111 	lcall	__gptrput
                                   8112 ;	calc.c:389: break;
                                   8113 ;	calc.c:390: case 'O':
      0058FE 80 22            [24] 8114 	sjmp	00105$
      005900                       8115 00103$:
                                   8116 ;	calc.c:391: ctx->base = 8;
      005900 8D 82            [24] 8117 	mov	dpl,r5
      005902 8E 83            [24] 8118 	mov	dph,r6
      005904 8F F0            [24] 8119 	mov	b,r7
      005906 74 08            [12] 8120 	mov	a,#0x08
      005908 12 6C 67         [24] 8121 	lcall	__gptrput
      00590B A3               [24] 8122 	inc	dptr
      00590C E4               [12] 8123 	clr	a
      00590D 12 6C 67         [24] 8124 	lcall	__gptrput
                                   8125 ;	calc.c:392: break;
                                   8126 ;	calc.c:393: case 'o':
      005910 80 10            [24] 8127 	sjmp	00105$
      005912                       8128 00104$:
                                   8129 ;	calc.c:394: ctx->base = 2;
      005912 8D 82            [24] 8130 	mov	dpl,r5
      005914 8E 83            [24] 8131 	mov	dph,r6
      005916 8F F0            [24] 8132 	mov	b,r7
      005918 74 02            [12] 8133 	mov	a,#0x02
      00591A 12 6C 67         [24] 8134 	lcall	__gptrput
      00591D A3               [24] 8135 	inc	dptr
      00591E E4               [12] 8136 	clr	a
      00591F 12 6C 67         [24] 8137 	lcall	__gptrput
                                   8138 ;	calc.c:396: }
      005922                       8139 00105$:
                                   8140 ;	calc.c:398: return 1;
      005922 90 00 01         [24] 8141 	mov	dptr,#0x0001
                                   8142 ;	calc.c:399: }
      005925 D0 08            [24] 8143 	pop	_bp
      005927 22               [24] 8144 	ret
                                   8145 ;------------------------------------------------------------
                                   8146 ;Allocation info for local variables in function 'status'
                                   8147 ;------------------------------------------------------------
                                   8148 ;delta                     Allocated to stack - _bp -5
                                   8149 ;_ctx                      Allocated to registers r5 r6 r7 
                                   8150 ;ctx                       Allocated to stack - _bp +9
                                   8151 ;vals                      Allocated to stack - _bp +14
                                   8152 ;n                         Allocated to stack - _bp +12
                                   8153 ;__1310720129              Allocated to registers 
                                   8154 ;s                         Allocated to registers r5 r6 r7 
                                   8155 ;__1310720131              Allocated to registers r5 r6 r7 r4 
                                   8156 ;d                         Allocated to registers 
                                   8157 ;__1310720001              Allocated to registers 
                                   8158 ;d                         Allocated to stack - _bp +22
                                   8159 ;mask                      Allocated to stack - _bp +26
                                   8160 ;__1310720133              Allocated to registers 
                                   8161 ;s                         Allocated to registers r3 r4 r5 
                                   8162 ;__1310720135              Allocated to registers r2 r3 r4 r5 
                                   8163 ;d                         Allocated to registers 
                                   8164 ;__1310720001              Allocated to registers 
                                   8165 ;d                         Allocated to stack - _bp +22
                                   8166 ;mask                      Allocated to stack - _bp +26
                                   8167 ;__1310720137              Allocated to registers 
                                   8168 ;s                         Allocated to registers r3 r4 r5 
                                   8169 ;__1310720139              Allocated to registers r4 r5 r6 r7 
                                   8170 ;d                         Allocated to registers 
                                   8171 ;__1310720001              Allocated to registers 
                                   8172 ;d                         Allocated to stack - _bp +22
                                   8173 ;mask                      Allocated to stack - _bp +26
                                   8174 ;__1310720141              Allocated to registers 
                                   8175 ;s                         Allocated to registers r3 r4 r5 
                                   8176 ;__1310720143              Allocated to registers r2 r3 r4 r5 
                                   8177 ;d                         Allocated to registers 
                                   8178 ;__1310720001              Allocated to registers 
                                   8179 ;d                         Allocated to stack - _bp +22
                                   8180 ;mask                      Allocated to stack - _bp +26
                                   8181 ;__1310720145              Allocated to registers 
                                   8182 ;s                         Allocated to registers r5 r6 r7 
                                   8183 ;__1310720147              Allocated to registers r4 r5 r6 r7 
                                   8184 ;d                         Allocated to registers 
                                   8185 ;__1310720001              Allocated to registers 
                                   8186 ;d                         Allocated to stack - _bp +22
                                   8187 ;mask                      Allocated to stack - _bp +26
                                   8188 ;__1310720149              Allocated to registers 
                                   8189 ;s                         Allocated to registers r5 r6 r7 
                                   8190 ;sloc0                     Allocated to stack - _bp +1
                                   8191 ;sloc1                     Allocated to stack - _bp +4
                                   8192 ;sloc2                     Allocated to stack - _bp +7
                                   8193 ;------------------------------------------------------------
                                   8194 ;	calc.c:401: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   8195 ;	-----------------------------------------
                                   8196 ;	 function status
                                   8197 ;	-----------------------------------------
      005928                       8198 _status:
      005928 C0 08            [24] 8199 	push	_bp
      00592A E5 81            [12] 8200 	mov	a,sp
      00592C F5 08            [12] 8201 	mov	_bp,a
      00592E 24 1D            [12] 8202 	add	a,#0x1d
      005930 F5 81            [12] 8203 	mov	sp,a
      005932 AD 82            [24] 8204 	mov	r5,dpl
      005934 AE 83            [24] 8205 	mov	r6,dph
      005936 AF F0            [24] 8206 	mov	r7,b
                                   8207 ;	calc.c:402: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      005938 E5 08            [12] 8208 	mov	a,_bp
      00593A 24 09            [12] 8209 	add	a,#0x09
      00593C F8               [12] 8210 	mov	r0,a
      00593D A6 05            [24] 8211 	mov	@r0,ar5
      00593F 08               [12] 8212 	inc	r0
      005940 A6 06            [24] 8213 	mov	@r0,ar6
      005942 08               [12] 8214 	inc	r0
      005943 A6 07            [24] 8215 	mov	@r0,ar7
                                   8216 ;	calc.c:408: printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
      005945 E5 08            [12] 8217 	mov	a,_bp
      005947 24 09            [12] 8218 	add	a,#0x09
      005949 F8               [12] 8219 	mov	r0,a
      00594A 86 82            [24] 8220 	mov	dpl,@r0
      00594C 08               [12] 8221 	inc	r0
      00594D 86 83            [24] 8222 	mov	dph,@r0
      00594F 08               [12] 8223 	inc	r0
      005950 86 F0            [24] 8224 	mov	b,@r0
      005952 E5 08            [12] 8225 	mov	a,_bp
      005954 24 07            [12] 8226 	add	a,#0x07
      005956 F9               [12] 8227 	mov	r1,a
      005957 12 70 E2         [24] 8228 	lcall	__gptrget
      00595A F7               [12] 8229 	mov	@r1,a
      00595B A3               [24] 8230 	inc	dptr
      00595C 12 70 E2         [24] 8231 	lcall	__gptrget
      00595F 09               [12] 8232 	inc	r1
      005960 F7               [12] 8233 	mov	@r1,a
      005961 E5 08            [12] 8234 	mov	a,_bp
      005963 24 09            [12] 8235 	add	a,#0x09
      005965 F8               [12] 8236 	mov	r0,a
      005966 A9 08            [24] 8237 	mov	r1,_bp
      005968 09               [12] 8238 	inc	r1
      005969 74 14            [12] 8239 	mov	a,#0x14
      00596B 26               [12] 8240 	add	a,@r0
      00596C F7               [12] 8241 	mov	@r1,a
      00596D 74 40            [12] 8242 	mov	a,#0x40
      00596F 08               [12] 8243 	inc	r0
      005970 36               [12] 8244 	addc	a,@r0
      005971 09               [12] 8245 	inc	r1
      005972 F7               [12] 8246 	mov	@r1,a
      005973 08               [12] 8247 	inc	r0
      005974 09               [12] 8248 	inc	r1
      005975 E6               [12] 8249 	mov	a,@r0
      005976 F7               [12] 8250 	mov	@r1,a
      005977 A8 08            [24] 8251 	mov	r0,_bp
      005979 08               [12] 8252 	inc	r0
      00597A 86 82            [24] 8253 	mov	dpl,@r0
      00597C 08               [12] 8254 	inc	r0
      00597D 86 83            [24] 8255 	mov	dph,@r0
      00597F 08               [12] 8256 	inc	r0
      005980 86 F0            [24] 8257 	mov	b,@r0
      005982 12 70 E2         [24] 8258 	lcall	__gptrget
      005985 FA               [12] 8259 	mov	r2,a
      005986 A3               [24] 8260 	inc	dptr
      005987 12 70 E2         [24] 8261 	lcall	__gptrget
      00598A FE               [12] 8262 	mov	r6,a
      00598B A3               [24] 8263 	inc	dptr
      00598C 12 70 E2         [24] 8264 	lcall	__gptrget
      00598F FF               [12] 8265 	mov	r7,a
      005990 E5 08            [12] 8266 	mov	a,_bp
      005992 24 09            [12] 8267 	add	a,#0x09
      005994 F8               [12] 8268 	mov	r0,a
      005995 E5 08            [12] 8269 	mov	a,_bp
      005997 24 04            [12] 8270 	add	a,#0x04
      005999 F9               [12] 8271 	mov	r1,a
      00599A 74 11            [12] 8272 	mov	a,#0x11
      00599C 26               [12] 8273 	add	a,@r0
      00599D F7               [12] 8274 	mov	@r1,a
      00599E 74 40            [12] 8275 	mov	a,#0x40
      0059A0 08               [12] 8276 	inc	r0
      0059A1 36               [12] 8277 	addc	a,@r0
      0059A2 09               [12] 8278 	inc	r1
      0059A3 F7               [12] 8279 	mov	@r1,a
      0059A4 08               [12] 8280 	inc	r0
      0059A5 09               [12] 8281 	inc	r1
      0059A6 E6               [12] 8282 	mov	a,@r0
      0059A7 F7               [12] 8283 	mov	@r1,a
      0059A8 E5 08            [12] 8284 	mov	a,_bp
      0059AA 24 04            [12] 8285 	add	a,#0x04
      0059AC F8               [12] 8286 	mov	r0,a
      0059AD 86 82            [24] 8287 	mov	dpl,@r0
      0059AF 08               [12] 8288 	inc	r0
      0059B0 86 83            [24] 8289 	mov	dph,@r0
      0059B2 08               [12] 8290 	inc	r0
      0059B3 86 F0            [24] 8291 	mov	b,@r0
      0059B5 12 70 E2         [24] 8292 	lcall	__gptrget
      0059B8 FB               [12] 8293 	mov	r3,a
      0059B9 A3               [24] 8294 	inc	dptr
      0059BA 12 70 E2         [24] 8295 	lcall	__gptrget
      0059BD FC               [12] 8296 	mov	r4,a
      0059BE A3               [24] 8297 	inc	dptr
      0059BF 12 70 E2         [24] 8298 	lcall	__gptrget
      0059C2 FD               [12] 8299 	mov	r5,a
      0059C3 E5 08            [12] 8300 	mov	a,_bp
      0059C5 24 07            [12] 8301 	add	a,#0x07
      0059C7 F8               [12] 8302 	mov	r0,a
      0059C8 E6               [12] 8303 	mov	a,@r0
      0059C9 C0 E0            [24] 8304 	push	acc
      0059CB 08               [12] 8305 	inc	r0
      0059CC E6               [12] 8306 	mov	a,@r0
      0059CD C0 E0            [24] 8307 	push	acc
      0059CF C0 02            [24] 8308 	push	ar2
      0059D1 C0 06            [24] 8309 	push	ar6
      0059D3 C0 07            [24] 8310 	push	ar7
      0059D5 C0 03            [24] 8311 	push	ar3
      0059D7 C0 04            [24] 8312 	push	ar4
      0059D9 C0 05            [24] 8313 	push	ar5
      0059DB 74 28            [12] 8314 	mov	a,#___str_15
      0059DD C0 E0            [24] 8315 	push	acc
      0059DF 74 8A            [12] 8316 	mov	a,#(___str_15 >> 8)
      0059E1 C0 E0            [24] 8317 	push	acc
      0059E3 74 80            [12] 8318 	mov	a,#0x80
      0059E5 C0 E0            [24] 8319 	push	acc
      0059E7 12 70 A9         [24] 8320 	lcall	_printf
      0059EA E5 81            [12] 8321 	mov	a,sp
      0059EC 24 F5            [12] 8322 	add	a,#0xf5
      0059EE F5 81            [12] 8323 	mov	sp,a
                                   8324 ;	calc.c:410: printstr("ACC\t");
      0059F0 7D 48            [12] 8325 	mov	r5,#___str_16
      0059F2 7E 8A            [12] 8326 	mov	r6,#(___str_16 >> 8)
      0059F4 7F 80            [12] 8327 	mov	r7,#0x80
                                   8328 ;	calc.c:59: return;
      0059F6                       8329 00139$:
                                   8330 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0059F6 8D 82            [24] 8331 	mov	dpl,r5
      0059F8 8E 83            [24] 8332 	mov	dph,r6
      0059FA 8F F0            [24] 8333 	mov	b,r7
      0059FC 12 70 E2         [24] 8334 	lcall	__gptrget
      0059FF FC               [12] 8335 	mov	r4,a
      005A00 60 10            [24] 8336 	jz	00112$
      005A02 7B 00            [12] 8337 	mov	r3,#0x00
      005A04 8C 82            [24] 8338 	mov	dpl,r4
      005A06 8B 83            [24] 8339 	mov	dph,r3
      005A08 12 2B 70         [24] 8340 	lcall	_putchar
      005A0B 0D               [12] 8341 	inc	r5
                                   8342 ;	calc.c:410: printstr("ACC\t");
      005A0C BD 00 E7         [24] 8343 	cjne	r5,#0x00,00139$
      005A0F 0E               [12] 8344 	inc	r6
      005A10 80 E4            [24] 8345 	sjmp	00139$
      005A12                       8346 00112$:
                                   8347 ;	calc.c:411: if (ctx->acc_valid) printall(ctx->acc);
      005A12 E5 08            [12] 8348 	mov	a,_bp
      005A14 24 09            [12] 8349 	add	a,#0x09
      005A16 F8               [12] 8350 	mov	r0,a
      005A17 74 06            [12] 8351 	mov	a,#0x06
      005A19 26               [12] 8352 	add	a,@r0
      005A1A FD               [12] 8353 	mov	r5,a
      005A1B E4               [12] 8354 	clr	a
      005A1C 08               [12] 8355 	inc	r0
      005A1D 36               [12] 8356 	addc	a,@r0
      005A1E FE               [12] 8357 	mov	r6,a
      005A1F 08               [12] 8358 	inc	r0
      005A20 86 07            [24] 8359 	mov	ar7,@r0
      005A22 8D 82            [24] 8360 	mov	dpl,r5
      005A24 8E 83            [24] 8361 	mov	dph,r6
      005A26 8F F0            [24] 8362 	mov	b,r7
      005A28 12 70 E2         [24] 8363 	lcall	__gptrget
      005A2B 70 03            [24] 8364 	jnz	00321$
      005A2D 02 5B 5F         [24] 8365 	ljmp	00102$
      005A30                       8366 00321$:
      005A30 E5 08            [12] 8367 	mov	a,_bp
      005A32 24 09            [12] 8368 	add	a,#0x09
      005A34 F8               [12] 8369 	mov	r0,a
      005A35 74 02            [12] 8370 	mov	a,#0x02
      005A37 26               [12] 8371 	add	a,@r0
      005A38 FD               [12] 8372 	mov	r5,a
      005A39 E4               [12] 8373 	clr	a
      005A3A 08               [12] 8374 	inc	r0
      005A3B 36               [12] 8375 	addc	a,@r0
      005A3C FE               [12] 8376 	mov	r6,a
      005A3D 08               [12] 8377 	inc	r0
      005A3E 86 07            [24] 8378 	mov	ar7,@r0
      005A40 8D 82            [24] 8379 	mov	dpl,r5
      005A42 8E 83            [24] 8380 	mov	dph,r6
      005A44 8F F0            [24] 8381 	mov	b,r7
      005A46 12 70 E2         [24] 8382 	lcall	__gptrget
      005A49 FD               [12] 8383 	mov	r5,a
      005A4A A3               [24] 8384 	inc	dptr
      005A4B 12 70 E2         [24] 8385 	lcall	__gptrget
      005A4E FE               [12] 8386 	mov	r6,a
      005A4F A3               [24] 8387 	inc	dptr
      005A50 12 70 E2         [24] 8388 	lcall	__gptrget
      005A53 FF               [12] 8389 	mov	r7,a
      005A54 A3               [24] 8390 	inc	dptr
      005A55 12 70 E2         [24] 8391 	lcall	__gptrget
      005A58 FC               [12] 8392 	mov	r4,a
                                   8393 ;	calc.c:72: printf("%08lx\t", d);
      005A59 C0 07            [24] 8394 	push	ar7
      005A5B C0 06            [24] 8395 	push	ar6
      005A5D C0 05            [24] 8396 	push	ar5
      005A5F C0 04            [24] 8397 	push	ar4
      005A61 C0 05            [24] 8398 	push	ar5
      005A63 C0 06            [24] 8399 	push	ar6
      005A65 C0 07            [24] 8400 	push	ar7
      005A67 C0 04            [24] 8401 	push	ar4
      005A69 74 63            [12] 8402 	mov	a,#___str_0
      005A6B C0 E0            [24] 8403 	push	acc
      005A6D 74 89            [12] 8404 	mov	a,#(___str_0 >> 8)
      005A6F C0 E0            [24] 8405 	push	acc
      005A71 74 80            [12] 8406 	mov	a,#0x80
      005A73 C0 E0            [24] 8407 	push	acc
      005A75 12 70 A9         [24] 8408 	lcall	_printf
      005A78 E5 81            [12] 8409 	mov	a,sp
      005A7A 24 F9            [12] 8410 	add	a,#0xf9
      005A7C F5 81            [12] 8411 	mov	sp,a
      005A7E D0 04            [24] 8412 	pop	ar4
      005A80 D0 05            [24] 8413 	pop	ar5
      005A82 D0 06            [24] 8414 	pop	ar6
      005A84 D0 07            [24] 8415 	pop	ar7
                                   8416 ;	calc.c:73: printf("% 11ld\t", d);
      005A86 C0 07            [24] 8417 	push	ar7
      005A88 C0 06            [24] 8418 	push	ar6
      005A8A C0 05            [24] 8419 	push	ar5
      005A8C C0 04            [24] 8420 	push	ar4
      005A8E C0 05            [24] 8421 	push	ar5
      005A90 C0 06            [24] 8422 	push	ar6
      005A92 C0 07            [24] 8423 	push	ar7
      005A94 C0 04            [24] 8424 	push	ar4
      005A96 74 6A            [12] 8425 	mov	a,#___str_1
      005A98 C0 E0            [24] 8426 	push	acc
      005A9A 74 89            [12] 8427 	mov	a,#(___str_1 >> 8)
      005A9C C0 E0            [24] 8428 	push	acc
      005A9E 74 80            [12] 8429 	mov	a,#0x80
      005AA0 C0 E0            [24] 8430 	push	acc
      005AA2 12 70 A9         [24] 8431 	lcall	_printf
      005AA5 E5 81            [12] 8432 	mov	a,sp
      005AA7 24 F9            [12] 8433 	add	a,#0xf9
      005AA9 F5 81            [12] 8434 	mov	sp,a
      005AAB D0 04            [24] 8435 	pop	ar4
      005AAD D0 05            [24] 8436 	pop	ar5
      005AAF D0 06            [24] 8437 	pop	ar6
      005AB1 D0 07            [24] 8438 	pop	ar7
                                   8439 ;	calc.c:74: printf("%011lo\t", d);
      005AB3 C0 07            [24] 8440 	push	ar7
      005AB5 C0 06            [24] 8441 	push	ar6
      005AB7 C0 05            [24] 8442 	push	ar5
      005AB9 C0 04            [24] 8443 	push	ar4
      005ABB C0 05            [24] 8444 	push	ar5
      005ABD C0 06            [24] 8445 	push	ar6
      005ABF C0 07            [24] 8446 	push	ar7
      005AC1 C0 04            [24] 8447 	push	ar4
      005AC3 74 72            [12] 8448 	mov	a,#___str_2
      005AC5 C0 E0            [24] 8449 	push	acc
      005AC7 74 89            [12] 8450 	mov	a,#(___str_2 >> 8)
      005AC9 C0 E0            [24] 8451 	push	acc
      005ACB 74 80            [12] 8452 	mov	a,#0x80
      005ACD C0 E0            [24] 8453 	push	acc
      005ACF 12 70 A9         [24] 8454 	lcall	_printf
      005AD2 E5 81            [12] 8455 	mov	a,sp
      005AD4 24 F9            [12] 8456 	add	a,#0xf9
      005AD6 F5 81            [12] 8457 	mov	sp,a
      005AD8 D0 04            [24] 8458 	pop	ar4
      005ADA D0 05            [24] 8459 	pop	ar5
      005ADC D0 06            [24] 8460 	pop	ar6
      005ADE D0 07            [24] 8461 	pop	ar7
                                   8462 ;	calc.c:75: printbin(d);
      005AE0 E5 08            [12] 8463 	mov	a,_bp
      005AE2 24 16            [12] 8464 	add	a,#0x16
      005AE4 F8               [12] 8465 	mov	r0,a
      005AE5 A6 05            [24] 8466 	mov	@r0,ar5
      005AE7 08               [12] 8467 	inc	r0
      005AE8 A6 06            [24] 8468 	mov	@r0,ar6
      005AEA 08               [12] 8469 	inc	r0
      005AEB A6 07            [24] 8470 	mov	@r0,ar7
      005AED 08               [12] 8471 	inc	r0
      005AEE A6 04            [24] 8472 	mov	@r0,ar4
                                   8473 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      005AF0 E5 08            [12] 8474 	mov	a,_bp
      005AF2 24 1A            [12] 8475 	add	a,#0x1a
      005AF4 F8               [12] 8476 	mov	r0,a
      005AF5 E4               [12] 8477 	clr	a
      005AF6 F6               [12] 8478 	mov	@r0,a
      005AF7 08               [12] 8479 	inc	r0
      005AF8 F6               [12] 8480 	mov	@r0,a
      005AF9 08               [12] 8481 	inc	r0
      005AFA F6               [12] 8482 	mov	@r0,a
      005AFB 08               [12] 8483 	inc	r0
      005AFC 76 80            [12] 8484 	mov	@r0,#0x80
      005AFE                       8485 00141$:
                                   8486 ;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005AFE E5 08            [12] 8487 	mov	a,_bp
      005B00 24 16            [12] 8488 	add	a,#0x16
      005B02 F8               [12] 8489 	mov	r0,a
      005B03 86 04            [24] 8490 	mov	ar4,@r0
      005B05 08               [12] 8491 	inc	r0
      005B06 86 05            [24] 8492 	mov	ar5,@r0
      005B08 08               [12] 8493 	inc	r0
      005B09 86 06            [24] 8494 	mov	ar6,@r0
      005B0B 08               [12] 8495 	inc	r0
      005B0C 86 07            [24] 8496 	mov	ar7,@r0
      005B0E E5 08            [12] 8497 	mov	a,_bp
      005B10 24 1A            [12] 8498 	add	a,#0x1a
      005B12 F8               [12] 8499 	mov	r0,a
      005B13 E6               [12] 8500 	mov	a,@r0
      005B14 52 04            [12] 8501 	anl	ar4,a
      005B16 08               [12] 8502 	inc	r0
      005B17 E6               [12] 8503 	mov	a,@r0
      005B18 52 05            [12] 8504 	anl	ar5,a
      005B1A 08               [12] 8505 	inc	r0
      005B1B E6               [12] 8506 	mov	a,@r0
      005B1C 52 06            [12] 8507 	anl	ar6,a
      005B1E 08               [12] 8508 	inc	r0
      005B1F E6               [12] 8509 	mov	a,@r0
      005B20 52 07            [12] 8510 	anl	ar7,a
      005B22 EC               [12] 8511 	mov	a,r4
      005B23 4D               [12] 8512 	orl	a,r5
      005B24 4E               [12] 8513 	orl	a,r6
      005B25 4F               [12] 8514 	orl	a,r7
      005B26 60 06            [24] 8515 	jz	00168$
      005B28 7E 31            [12] 8516 	mov	r6,#0x31
      005B2A 7F 00            [12] 8517 	mov	r7,#0x00
      005B2C 80 04            [24] 8518 	sjmp	00169$
      005B2E                       8519 00168$:
      005B2E 7E 30            [12] 8520 	mov	r6,#0x30
      005B30 7F 00            [12] 8521 	mov	r7,#0x00
      005B32                       8522 00169$:
      005B32 8E 82            [24] 8523 	mov	dpl,r6
      005B34 8F 83            [24] 8524 	mov	dph,r7
      005B36 12 2B 70         [24] 8525 	lcall	_putchar
                                   8526 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      005B39 E5 08            [12] 8527 	mov	a,_bp
      005B3B 24 1A            [12] 8528 	add	a,#0x1a
      005B3D F8               [12] 8529 	mov	r0,a
      005B3E 08               [12] 8530 	inc	r0
      005B3F 08               [12] 8531 	inc	r0
      005B40 08               [12] 8532 	inc	r0
      005B41 E6               [12] 8533 	mov	a,@r0
      005B42 C3               [12] 8534 	clr	c
      005B43 13               [12] 8535 	rrc	a
      005B44 F6               [12] 8536 	mov	@r0,a
      005B45 18               [12] 8537 	dec	r0
      005B46 E6               [12] 8538 	mov	a,@r0
      005B47 13               [12] 8539 	rrc	a
      005B48 F6               [12] 8540 	mov	@r0,a
      005B49 18               [12] 8541 	dec	r0
      005B4A E6               [12] 8542 	mov	a,@r0
      005B4B 13               [12] 8543 	rrc	a
      005B4C F6               [12] 8544 	mov	@r0,a
      005B4D 18               [12] 8545 	dec	r0
      005B4E E6               [12] 8546 	mov	a,@r0
      005B4F 13               [12] 8547 	rrc	a
      005B50 F6               [12] 8548 	mov	@r0,a
      005B51 E5 08            [12] 8549 	mov	a,_bp
      005B53 24 1A            [12] 8550 	add	a,#0x1a
      005B55 F8               [12] 8551 	mov	r0,a
      005B56 E6               [12] 8552 	mov	a,@r0
      005B57 08               [12] 8553 	inc	r0
      005B58 46               [12] 8554 	orl	a,@r0
      005B59 08               [12] 8555 	inc	r0
      005B5A 46               [12] 8556 	orl	a,@r0
      005B5B 08               [12] 8557 	inc	r0
      005B5C 46               [12] 8558 	orl	a,@r0
      005B5D 70 9F            [24] 8559 	jnz	00141$
                                   8560 ;	calc.c:411: if (ctx->acc_valid) printall(ctx->acc);
      005B5F                       8561 00102$:
                                   8562 ;	calc.c:413: n = stack_peek2(ctx->ps, vals);
      005B5F E5 08            [12] 8563 	mov	a,_bp
      005B61 24 0E            [12] 8564 	add	a,#0x0e
      005B63 F9               [12] 8565 	mov	r1,a
      005B64 FD               [12] 8566 	mov	r5,a
      005B65 7E 00            [12] 8567 	mov	r6,#0x00
      005B67 7F 40            [12] 8568 	mov	r7,#0x40
      005B69 E5 08            [12] 8569 	mov	a,_bp
      005B6B 24 04            [12] 8570 	add	a,#0x04
      005B6D F8               [12] 8571 	mov	r0,a
      005B6E 86 82            [24] 8572 	mov	dpl,@r0
      005B70 08               [12] 8573 	inc	r0
      005B71 86 83            [24] 8574 	mov	dph,@r0
      005B73 08               [12] 8575 	inc	r0
      005B74 86 F0            [24] 8576 	mov	b,@r0
      005B76 12 70 E2         [24] 8577 	lcall	__gptrget
      005B79 FA               [12] 8578 	mov	r2,a
      005B7A A3               [24] 8579 	inc	dptr
      005B7B 12 70 E2         [24] 8580 	lcall	__gptrget
      005B7E FB               [12] 8581 	mov	r3,a
      005B7F A3               [24] 8582 	inc	dptr
      005B80 12 70 E2         [24] 8583 	lcall	__gptrget
      005B83 FC               [12] 8584 	mov	r4,a
      005B84 C0 01            [24] 8585 	push	ar1
      005B86 C0 05            [24] 8586 	push	ar5
      005B88 C0 06            [24] 8587 	push	ar6
      005B8A C0 07            [24] 8588 	push	ar7
      005B8C 8A 82            [24] 8589 	mov	dpl,r2
      005B8E 8B 83            [24] 8590 	mov	dph,r3
      005B90 8C F0            [24] 8591 	mov	b,r4
      005B92 12 28 FF         [24] 8592 	lcall	_stack_peek2
      005B95 AE 82            [24] 8593 	mov	r6,dpl
      005B97 AF 83            [24] 8594 	mov	r7,dph
      005B99 15 81            [12] 8595 	dec	sp
      005B9B 15 81            [12] 8596 	dec	sp
      005B9D 15 81            [12] 8597 	dec	sp
      005B9F D0 01            [24] 8598 	pop	ar1
                                   8599 ;	calc.c:414: printstr("\r\nPSTOP1\t");
      005BA1 7B 4D            [12] 8600 	mov	r3,#___str_17
      005BA3 7C 8A            [12] 8601 	mov	r4,#(___str_17 >> 8)
      005BA5 7D 80            [12] 8602 	mov	r5,#0x80
                                   8603 ;	calc.c:59: return;
      005BA7                       8604 00144$:
                                   8605 ;	calc.c:57: for (; *s; s++) putchar(*s);
      005BA7 8B 82            [24] 8606 	mov	dpl,r3
      005BA9 8C 83            [24] 8607 	mov	dph,r4
      005BAB 8D F0            [24] 8608 	mov	b,r5
      005BAD 12 70 E2         [24] 8609 	lcall	__gptrget
      005BB0 FA               [12] 8610 	mov	r2,a
      005BB1 60 18            [24] 8611 	jz	00117$
      005BB3 C0 06            [24] 8612 	push	ar6
      005BB5 C0 07            [24] 8613 	push	ar7
      005BB7 7F 00            [12] 8614 	mov	r7,#0x00
      005BB9 8A 82            [24] 8615 	mov	dpl,r2
      005BBB 8F 83            [24] 8616 	mov	dph,r7
      005BBD 12 2B 70         [24] 8617 	lcall	_putchar
      005BC0 0B               [12] 8618 	inc	r3
      005BC1 BB 00 01         [24] 8619 	cjne	r3,#0x00,00325$
      005BC4 0C               [12] 8620 	inc	r4
      005BC5                       8621 00325$:
      005BC5 D0 07            [24] 8622 	pop	ar7
      005BC7 D0 06            [24] 8623 	pop	ar6
                                   8624 ;	calc.c:414: printstr("\r\nPSTOP1\t");
      005BC9 80 DC            [24] 8625 	sjmp	00144$
      005BCB                       8626 00117$:
                                   8627 ;	calc.c:415: if (n > 0) printall(vals[1]);
      005BCB C3               [12] 8628 	clr	c
      005BCC E4               [12] 8629 	clr	a
      005BCD 9E               [12] 8630 	subb	a,r6
      005BCE 74 80            [12] 8631 	mov	a,#(0x00 ^ 0x80)
      005BD0 8F F0            [24] 8632 	mov	b,r7
      005BD2 63 F0 80         [24] 8633 	xrl	b,#0x80
      005BD5 95 F0            [12] 8634 	subb	a,b
      005BD7 40 03            [24] 8635 	jc	00326$
      005BD9 02 5D 0D         [24] 8636 	ljmp	00104$
      005BDC                       8637 00326$:
      005BDC 74 04            [12] 8638 	mov	a,#0x04
      005BDE 29               [12] 8639 	add	a,r1
      005BDF F8               [12] 8640 	mov	r0,a
      005BE0 86 02            [24] 8641 	mov	ar2,@r0
      005BE2 08               [12] 8642 	inc	r0
      005BE3 86 03            [24] 8643 	mov	ar3,@r0
      005BE5 08               [12] 8644 	inc	r0
      005BE6 86 04            [24] 8645 	mov	ar4,@r0
      005BE8 08               [12] 8646 	inc	r0
      005BE9 86 05            [24] 8647 	mov	ar5,@r0
                                   8648 ;	calc.c:72: printf("%08lx\t", d);
      005BEB C0 07            [24] 8649 	push	ar7
      005BED C0 06            [24] 8650 	push	ar6
      005BEF C0 05            [24] 8651 	push	ar5
      005BF1 C0 04            [24] 8652 	push	ar4
      005BF3 C0 03            [24] 8653 	push	ar3
      005BF5 C0 02            [24] 8654 	push	ar2
      005BF7 C0 01            [24] 8655 	push	ar1
      005BF9 C0 02            [24] 8656 	push	ar2
      005BFB C0 03            [24] 8657 	push	ar3
      005BFD C0 04            [24] 8658 	push	ar4
      005BFF C0 05            [24] 8659 	push	ar5
      005C01 74 63            [12] 8660 	mov	a,#___str_0
      005C03 C0 E0            [24] 8661 	push	acc
      005C05 74 89            [12] 8662 	mov	a,#(___str_0 >> 8)
      005C07 C0 E0            [24] 8663 	push	acc
      005C09 74 80            [12] 8664 	mov	a,#0x80
      005C0B C0 E0            [24] 8665 	push	acc
      005C0D 12 70 A9         [24] 8666 	lcall	_printf
      005C10 E5 81            [12] 8667 	mov	a,sp
      005C12 24 F9            [12] 8668 	add	a,#0xf9
      005C14 F5 81            [12] 8669 	mov	sp,a
      005C16 D0 01            [24] 8670 	pop	ar1
      005C18 D0 02            [24] 8671 	pop	ar2
      005C1A D0 03            [24] 8672 	pop	ar3
      005C1C D0 04            [24] 8673 	pop	ar4
      005C1E D0 05            [24] 8674 	pop	ar5
                                   8675 ;	calc.c:73: printf("% 11ld\t", d);
      005C20 C0 05            [24] 8676 	push	ar5
      005C22 C0 04            [24] 8677 	push	ar4
      005C24 C0 03            [24] 8678 	push	ar3
      005C26 C0 02            [24] 8679 	push	ar2
      005C28 C0 01            [24] 8680 	push	ar1
      005C2A C0 02            [24] 8681 	push	ar2
      005C2C C0 03            [24] 8682 	push	ar3
      005C2E C0 04            [24] 8683 	push	ar4
      005C30 C0 05            [24] 8684 	push	ar5
      005C32 74 6A            [12] 8685 	mov	a,#___str_1
      005C34 C0 E0            [24] 8686 	push	acc
      005C36 74 89            [12] 8687 	mov	a,#(___str_1 >> 8)
      005C38 C0 E0            [24] 8688 	push	acc
      005C3A 74 80            [12] 8689 	mov	a,#0x80
      005C3C C0 E0            [24] 8690 	push	acc
      005C3E 12 70 A9         [24] 8691 	lcall	_printf
      005C41 E5 81            [12] 8692 	mov	a,sp
      005C43 24 F9            [12] 8693 	add	a,#0xf9
      005C45 F5 81            [12] 8694 	mov	sp,a
      005C47 D0 01            [24] 8695 	pop	ar1
      005C49 D0 02            [24] 8696 	pop	ar2
      005C4B D0 03            [24] 8697 	pop	ar3
      005C4D D0 04            [24] 8698 	pop	ar4
      005C4F D0 05            [24] 8699 	pop	ar5
                                   8700 ;	calc.c:74: printf("%011lo\t", d);
      005C51 C0 05            [24] 8701 	push	ar5
      005C53 C0 04            [24] 8702 	push	ar4
      005C55 C0 03            [24] 8703 	push	ar3
      005C57 C0 02            [24] 8704 	push	ar2
      005C59 C0 01            [24] 8705 	push	ar1
      005C5B C0 02            [24] 8706 	push	ar2
      005C5D C0 03            [24] 8707 	push	ar3
      005C5F C0 04            [24] 8708 	push	ar4
      005C61 C0 05            [24] 8709 	push	ar5
      005C63 74 72            [12] 8710 	mov	a,#___str_2
      005C65 C0 E0            [24] 8711 	push	acc
      005C67 74 89            [12] 8712 	mov	a,#(___str_2 >> 8)
      005C69 C0 E0            [24] 8713 	push	acc
      005C6B 74 80            [12] 8714 	mov	a,#0x80
      005C6D C0 E0            [24] 8715 	push	acc
      005C6F 12 70 A9         [24] 8716 	lcall	_printf
      005C72 E5 81            [12] 8717 	mov	a,sp
      005C74 24 F9            [12] 8718 	add	a,#0xf9
      005C76 F5 81            [12] 8719 	mov	sp,a
      005C78 D0 01            [24] 8720 	pop	ar1
      005C7A D0 02            [24] 8721 	pop	ar2
      005C7C D0 03            [24] 8722 	pop	ar3
      005C7E D0 04            [24] 8723 	pop	ar4
      005C80 D0 05            [24] 8724 	pop	ar5
      005C82 D0 06            [24] 8725 	pop	ar6
      005C84 D0 07            [24] 8726 	pop	ar7
                                   8727 ;	calc.c:75: printbin(d);
      005C86 E5 08            [12] 8728 	mov	a,_bp
      005C88 24 16            [12] 8729 	add	a,#0x16
      005C8A F8               [12] 8730 	mov	r0,a
      005C8B A6 02            [24] 8731 	mov	@r0,ar2
      005C8D 08               [12] 8732 	inc	r0
      005C8E A6 03            [24] 8733 	mov	@r0,ar3
      005C90 08               [12] 8734 	inc	r0
      005C91 A6 04            [24] 8735 	mov	@r0,ar4
      005C93 08               [12] 8736 	inc	r0
      005C94 A6 05            [24] 8737 	mov	@r0,ar5
                                   8738 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      005C96 E5 08            [12] 8739 	mov	a,_bp
      005C98 24 1A            [12] 8740 	add	a,#0x1a
      005C9A F8               [12] 8741 	mov	r0,a
      005C9B E4               [12] 8742 	clr	a
      005C9C F6               [12] 8743 	mov	@r0,a
      005C9D 08               [12] 8744 	inc	r0
      005C9E F6               [12] 8745 	mov	@r0,a
      005C9F 08               [12] 8746 	inc	r0
      005CA0 F6               [12] 8747 	mov	@r0,a
      005CA1 08               [12] 8748 	inc	r0
      005CA2 76 80            [12] 8749 	mov	@r0,#0x80
      005CA4                       8750 00146$:
                                   8751 ;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005CA4 C0 06            [24] 8752 	push	ar6
      005CA6 C0 07            [24] 8753 	push	ar7
      005CA8 E5 08            [12] 8754 	mov	a,_bp
      005CAA 24 16            [12] 8755 	add	a,#0x16
      005CAC F8               [12] 8756 	mov	r0,a
      005CAD 86 04            [24] 8757 	mov	ar4,@r0
      005CAF 08               [12] 8758 	inc	r0
      005CB0 86 05            [24] 8759 	mov	ar5,@r0
      005CB2 08               [12] 8760 	inc	r0
      005CB3 86 06            [24] 8761 	mov	ar6,@r0
      005CB5 08               [12] 8762 	inc	r0
      005CB6 86 07            [24] 8763 	mov	ar7,@r0
      005CB8 E5 08            [12] 8764 	mov	a,_bp
      005CBA 24 1A            [12] 8765 	add	a,#0x1a
      005CBC F8               [12] 8766 	mov	r0,a
      005CBD E6               [12] 8767 	mov	a,@r0
      005CBE 52 04            [12] 8768 	anl	ar4,a
      005CC0 08               [12] 8769 	inc	r0
      005CC1 E6               [12] 8770 	mov	a,@r0
      005CC2 52 05            [12] 8771 	anl	ar5,a
      005CC4 08               [12] 8772 	inc	r0
      005CC5 E6               [12] 8773 	mov	a,@r0
      005CC6 52 06            [12] 8774 	anl	ar6,a
      005CC8 08               [12] 8775 	inc	r0
      005CC9 E6               [12] 8776 	mov	a,@r0
      005CCA 52 07            [12] 8777 	anl	ar7,a
      005CCC EC               [12] 8778 	mov	a,r4
      005CCD 4D               [12] 8779 	orl	a,r5
      005CCE 4E               [12] 8780 	orl	a,r6
      005CCF 4F               [12] 8781 	orl	a,r7
      005CD0 D0 07            [24] 8782 	pop	ar7
      005CD2 D0 06            [24] 8783 	pop	ar6
      005CD4 60 06            [24] 8784 	jz	00170$
      005CD6 7C 31            [12] 8785 	mov	r4,#0x31
      005CD8 7D 00            [12] 8786 	mov	r5,#0x00
      005CDA 80 04            [24] 8787 	sjmp	00171$
      005CDC                       8788 00170$:
      005CDC 7C 30            [12] 8789 	mov	r4,#0x30
      005CDE 7D 00            [12] 8790 	mov	r5,#0x00
      005CE0                       8791 00171$:
      005CE0 8C 82            [24] 8792 	mov	dpl,r4
      005CE2 8D 83            [24] 8793 	mov	dph,r5
      005CE4 12 2B 70         [24] 8794 	lcall	_putchar
                                   8795 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      005CE7 E5 08            [12] 8796 	mov	a,_bp
      005CE9 24 1A            [12] 8797 	add	a,#0x1a
      005CEB F8               [12] 8798 	mov	r0,a
      005CEC 08               [12] 8799 	inc	r0
      005CED 08               [12] 8800 	inc	r0
      005CEE 08               [12] 8801 	inc	r0
      005CEF E6               [12] 8802 	mov	a,@r0
      005CF0 C3               [12] 8803 	clr	c
      005CF1 13               [12] 8804 	rrc	a
      005CF2 F6               [12] 8805 	mov	@r0,a
      005CF3 18               [12] 8806 	dec	r0
      005CF4 E6               [12] 8807 	mov	a,@r0
      005CF5 13               [12] 8808 	rrc	a
      005CF6 F6               [12] 8809 	mov	@r0,a
      005CF7 18               [12] 8810 	dec	r0
      005CF8 E6               [12] 8811 	mov	a,@r0
      005CF9 13               [12] 8812 	rrc	a
      005CFA F6               [12] 8813 	mov	@r0,a
      005CFB 18               [12] 8814 	dec	r0
      005CFC E6               [12] 8815 	mov	a,@r0
      005CFD 13               [12] 8816 	rrc	a
      005CFE F6               [12] 8817 	mov	@r0,a
      005CFF E5 08            [12] 8818 	mov	a,_bp
      005D01 24 1A            [12] 8819 	add	a,#0x1a
      005D03 F8               [12] 8820 	mov	r0,a
      005D04 E6               [12] 8821 	mov	a,@r0
      005D05 08               [12] 8822 	inc	r0
      005D06 46               [12] 8823 	orl	a,@r0
      005D07 08               [12] 8824 	inc	r0
      005D08 46               [12] 8825 	orl	a,@r0
      005D09 08               [12] 8826 	inc	r0
      005D0A 46               [12] 8827 	orl	a,@r0
      005D0B 70 97            [24] 8828 	jnz	00146$
                                   8829 ;	calc.c:415: if (n > 0) printall(vals[1]);
      005D0D                       8830 00104$:
                                   8831 ;	calc.c:416: printstr("\r\nPSTOP0\t");
      005D0D 7B 57            [12] 8832 	mov	r3,#___str_18
      005D0F 7C 8A            [12] 8833 	mov	r4,#(___str_18 >> 8)
      005D11 7D 80            [12] 8834 	mov	r5,#0x80
                                   8835 ;	calc.c:59: return;
      005D13                       8836 00149$:
                                   8837 ;	calc.c:57: for (; *s; s++) putchar(*s);
      005D13 8B 82            [24] 8838 	mov	dpl,r3
      005D15 8C 83            [24] 8839 	mov	dph,r4
      005D17 8D F0            [24] 8840 	mov	b,r5
      005D19 12 70 E2         [24] 8841 	lcall	__gptrget
      005D1C FA               [12] 8842 	mov	r2,a
      005D1D 60 18            [24] 8843 	jz	00122$
      005D1F C0 06            [24] 8844 	push	ar6
      005D21 C0 07            [24] 8845 	push	ar7
      005D23 7F 00            [12] 8846 	mov	r7,#0x00
      005D25 8A 82            [24] 8847 	mov	dpl,r2
      005D27 8F 83            [24] 8848 	mov	dph,r7
      005D29 12 2B 70         [24] 8849 	lcall	_putchar
      005D2C 0B               [12] 8850 	inc	r3
      005D2D BB 00 01         [24] 8851 	cjne	r3,#0x00,00330$
      005D30 0C               [12] 8852 	inc	r4
      005D31                       8853 00330$:
      005D31 D0 07            [24] 8854 	pop	ar7
      005D33 D0 06            [24] 8855 	pop	ar6
                                   8856 ;	calc.c:416: printstr("\r\nPSTOP0\t");
      005D35 80 DC            [24] 8857 	sjmp	00149$
      005D37                       8858 00122$:
                                   8859 ;	calc.c:417: if (n > 1) printall(vals[0]);
      005D37 C3               [12] 8860 	clr	c
      005D38 74 01            [12] 8861 	mov	a,#0x01
      005D3A 9E               [12] 8862 	subb	a,r6
      005D3B 74 80            [12] 8863 	mov	a,#(0x00 ^ 0x80)
      005D3D 8F F0            [24] 8864 	mov	b,r7
      005D3F 63 F0 80         [24] 8865 	xrl	b,#0x80
      005D42 95 F0            [12] 8866 	subb	a,b
      005D44 40 03            [24] 8867 	jc	00331$
      005D46 02 5E 6D         [24] 8868 	ljmp	00106$
      005D49                       8869 00331$:
      005D49 87 04            [24] 8870 	mov	ar4,@r1
      005D4B 09               [12] 8871 	inc	r1
      005D4C 87 05            [24] 8872 	mov	ar5,@r1
      005D4E 09               [12] 8873 	inc	r1
      005D4F 87 06            [24] 8874 	mov	ar6,@r1
      005D51 09               [12] 8875 	inc	r1
      005D52 87 07            [24] 8876 	mov	ar7,@r1
      005D54 19               [12] 8877 	dec	r1
      005D55 19               [12] 8878 	dec	r1
      005D56 19               [12] 8879 	dec	r1
                                   8880 ;	calc.c:72: printf("%08lx\t", d);
      005D57 C0 07            [24] 8881 	push	ar7
      005D59 C0 06            [24] 8882 	push	ar6
      005D5B C0 05            [24] 8883 	push	ar5
      005D5D C0 04            [24] 8884 	push	ar4
      005D5F C0 01            [24] 8885 	push	ar1
      005D61 C0 04            [24] 8886 	push	ar4
      005D63 C0 05            [24] 8887 	push	ar5
      005D65 C0 06            [24] 8888 	push	ar6
      005D67 C0 07            [24] 8889 	push	ar7
      005D69 74 63            [12] 8890 	mov	a,#___str_0
      005D6B C0 E0            [24] 8891 	push	acc
      005D6D 74 89            [12] 8892 	mov	a,#(___str_0 >> 8)
      005D6F C0 E0            [24] 8893 	push	acc
      005D71 74 80            [12] 8894 	mov	a,#0x80
      005D73 C0 E0            [24] 8895 	push	acc
      005D75 12 70 A9         [24] 8896 	lcall	_printf
      005D78 E5 81            [12] 8897 	mov	a,sp
      005D7A 24 F9            [12] 8898 	add	a,#0xf9
      005D7C F5 81            [12] 8899 	mov	sp,a
      005D7E D0 01            [24] 8900 	pop	ar1
      005D80 D0 04            [24] 8901 	pop	ar4
      005D82 D0 05            [24] 8902 	pop	ar5
      005D84 D0 06            [24] 8903 	pop	ar6
      005D86 D0 07            [24] 8904 	pop	ar7
                                   8905 ;	calc.c:73: printf("% 11ld\t", d);
      005D88 C0 07            [24] 8906 	push	ar7
      005D8A C0 06            [24] 8907 	push	ar6
      005D8C C0 05            [24] 8908 	push	ar5
      005D8E C0 04            [24] 8909 	push	ar4
      005D90 C0 01            [24] 8910 	push	ar1
      005D92 C0 04            [24] 8911 	push	ar4
      005D94 C0 05            [24] 8912 	push	ar5
      005D96 C0 06            [24] 8913 	push	ar6
      005D98 C0 07            [24] 8914 	push	ar7
      005D9A 74 6A            [12] 8915 	mov	a,#___str_1
      005D9C C0 E0            [24] 8916 	push	acc
      005D9E 74 89            [12] 8917 	mov	a,#(___str_1 >> 8)
      005DA0 C0 E0            [24] 8918 	push	acc
      005DA2 74 80            [12] 8919 	mov	a,#0x80
      005DA4 C0 E0            [24] 8920 	push	acc
      005DA6 12 70 A9         [24] 8921 	lcall	_printf
      005DA9 E5 81            [12] 8922 	mov	a,sp
      005DAB 24 F9            [12] 8923 	add	a,#0xf9
      005DAD F5 81            [12] 8924 	mov	sp,a
      005DAF D0 01            [24] 8925 	pop	ar1
      005DB1 D0 04            [24] 8926 	pop	ar4
      005DB3 D0 05            [24] 8927 	pop	ar5
      005DB5 D0 06            [24] 8928 	pop	ar6
      005DB7 D0 07            [24] 8929 	pop	ar7
                                   8930 ;	calc.c:74: printf("%011lo\t", d);
      005DB9 C0 07            [24] 8931 	push	ar7
      005DBB C0 06            [24] 8932 	push	ar6
      005DBD C0 05            [24] 8933 	push	ar5
      005DBF C0 04            [24] 8934 	push	ar4
      005DC1 C0 01            [24] 8935 	push	ar1
      005DC3 C0 04            [24] 8936 	push	ar4
      005DC5 C0 05            [24] 8937 	push	ar5
      005DC7 C0 06            [24] 8938 	push	ar6
      005DC9 C0 07            [24] 8939 	push	ar7
      005DCB 74 72            [12] 8940 	mov	a,#___str_2
      005DCD C0 E0            [24] 8941 	push	acc
      005DCF 74 89            [12] 8942 	mov	a,#(___str_2 >> 8)
      005DD1 C0 E0            [24] 8943 	push	acc
      005DD3 74 80            [12] 8944 	mov	a,#0x80
      005DD5 C0 E0            [24] 8945 	push	acc
      005DD7 12 70 A9         [24] 8946 	lcall	_printf
      005DDA E5 81            [12] 8947 	mov	a,sp
      005DDC 24 F9            [12] 8948 	add	a,#0xf9
      005DDE F5 81            [12] 8949 	mov	sp,a
      005DE0 D0 01            [24] 8950 	pop	ar1
      005DE2 D0 04            [24] 8951 	pop	ar4
      005DE4 D0 05            [24] 8952 	pop	ar5
      005DE6 D0 06            [24] 8953 	pop	ar6
      005DE8 D0 07            [24] 8954 	pop	ar7
                                   8955 ;	calc.c:75: printbin(d);
      005DEA E5 08            [12] 8956 	mov	a,_bp
      005DEC 24 16            [12] 8957 	add	a,#0x16
      005DEE F8               [12] 8958 	mov	r0,a
      005DEF A6 04            [24] 8959 	mov	@r0,ar4
      005DF1 08               [12] 8960 	inc	r0
      005DF2 A6 05            [24] 8961 	mov	@r0,ar5
      005DF4 08               [12] 8962 	inc	r0
      005DF5 A6 06            [24] 8963 	mov	@r0,ar6
      005DF7 08               [12] 8964 	inc	r0
      005DF8 A6 07            [24] 8965 	mov	@r0,ar7
                                   8966 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      005DFA E5 08            [12] 8967 	mov	a,_bp
      005DFC 24 1A            [12] 8968 	add	a,#0x1a
      005DFE F8               [12] 8969 	mov	r0,a
      005DFF E4               [12] 8970 	clr	a
      005E00 F6               [12] 8971 	mov	@r0,a
      005E01 08               [12] 8972 	inc	r0
      005E02 F6               [12] 8973 	mov	@r0,a
      005E03 08               [12] 8974 	inc	r0
      005E04 F6               [12] 8975 	mov	@r0,a
      005E05 08               [12] 8976 	inc	r0
      005E06 76 80            [12] 8977 	mov	@r0,#0x80
      005E08                       8978 00151$:
                                   8979 ;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005E08 C0 01            [24] 8980 	push	ar1
      005E0A E5 08            [12] 8981 	mov	a,_bp
      005E0C 24 16            [12] 8982 	add	a,#0x16
      005E0E F8               [12] 8983 	mov	r0,a
      005E0F 86 04            [24] 8984 	mov	ar4,@r0
      005E11 08               [12] 8985 	inc	r0
      005E12 86 05            [24] 8986 	mov	ar5,@r0
      005E14 08               [12] 8987 	inc	r0
      005E15 86 06            [24] 8988 	mov	ar6,@r0
      005E17 08               [12] 8989 	inc	r0
      005E18 86 07            [24] 8990 	mov	ar7,@r0
      005E1A E5 08            [12] 8991 	mov	a,_bp
      005E1C 24 1A            [12] 8992 	add	a,#0x1a
      005E1E F8               [12] 8993 	mov	r0,a
      005E1F E6               [12] 8994 	mov	a,@r0
      005E20 52 04            [12] 8995 	anl	ar4,a
      005E22 08               [12] 8996 	inc	r0
      005E23 E6               [12] 8997 	mov	a,@r0
      005E24 52 05            [12] 8998 	anl	ar5,a
      005E26 08               [12] 8999 	inc	r0
      005E27 E6               [12] 9000 	mov	a,@r0
      005E28 52 06            [12] 9001 	anl	ar6,a
      005E2A 08               [12] 9002 	inc	r0
      005E2B E6               [12] 9003 	mov	a,@r0
      005E2C 52 07            [12] 9004 	anl	ar7,a
      005E2E D0 01            [24] 9005 	pop	ar1
      005E30 EC               [12] 9006 	mov	a,r4
      005E31 4D               [12] 9007 	orl	a,r5
      005E32 4E               [12] 9008 	orl	a,r6
      005E33 4F               [12] 9009 	orl	a,r7
      005E34 60 06            [24] 9010 	jz	00172$
      005E36 7E 31            [12] 9011 	mov	r6,#0x31
      005E38 7F 00            [12] 9012 	mov	r7,#0x00
      005E3A 80 04            [24] 9013 	sjmp	00173$
      005E3C                       9014 00172$:
      005E3C 7E 30            [12] 9015 	mov	r6,#0x30
      005E3E 7F 00            [12] 9016 	mov	r7,#0x00
      005E40                       9017 00173$:
      005E40 8E 82            [24] 9018 	mov	dpl,r6
      005E42 8F 83            [24] 9019 	mov	dph,r7
      005E44 12 2B 70         [24] 9020 	lcall	_putchar
                                   9021 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      005E47 E5 08            [12] 9022 	mov	a,_bp
      005E49 24 1A            [12] 9023 	add	a,#0x1a
      005E4B F8               [12] 9024 	mov	r0,a
      005E4C 08               [12] 9025 	inc	r0
      005E4D 08               [12] 9026 	inc	r0
      005E4E 08               [12] 9027 	inc	r0
      005E4F E6               [12] 9028 	mov	a,@r0
      005E50 C3               [12] 9029 	clr	c
      005E51 13               [12] 9030 	rrc	a
      005E52 F6               [12] 9031 	mov	@r0,a
      005E53 18               [12] 9032 	dec	r0
      005E54 E6               [12] 9033 	mov	a,@r0
      005E55 13               [12] 9034 	rrc	a
      005E56 F6               [12] 9035 	mov	@r0,a
      005E57 18               [12] 9036 	dec	r0
      005E58 E6               [12] 9037 	mov	a,@r0
      005E59 13               [12] 9038 	rrc	a
      005E5A F6               [12] 9039 	mov	@r0,a
      005E5B 18               [12] 9040 	dec	r0
      005E5C E6               [12] 9041 	mov	a,@r0
      005E5D 13               [12] 9042 	rrc	a
      005E5E F6               [12] 9043 	mov	@r0,a
      005E5F E5 08            [12] 9044 	mov	a,_bp
      005E61 24 1A            [12] 9045 	add	a,#0x1a
      005E63 F8               [12] 9046 	mov	r0,a
      005E64 E6               [12] 9047 	mov	a,@r0
      005E65 08               [12] 9048 	inc	r0
      005E66 46               [12] 9049 	orl	a,@r0
      005E67 08               [12] 9050 	inc	r0
      005E68 46               [12] 9051 	orl	a,@r0
      005E69 08               [12] 9052 	inc	r0
      005E6A 46               [12] 9053 	orl	a,@r0
      005E6B 70 9B            [24] 9054 	jnz	00151$
                                   9055 ;	calc.c:417: if (n > 1) printall(vals[0]);
      005E6D                       9056 00106$:
                                   9057 ;	calc.c:419: n = stack_peek2(ctx->ss, vals);
      005E6D 89 07            [24] 9058 	mov	ar7,r1
      005E6F 7E 00            [12] 9059 	mov	r6,#0x00
      005E71 7D 40            [12] 9060 	mov	r5,#0x40
      005E73 A8 08            [24] 9061 	mov	r0,_bp
      005E75 08               [12] 9062 	inc	r0
      005E76 86 82            [24] 9063 	mov	dpl,@r0
      005E78 08               [12] 9064 	inc	r0
      005E79 86 83            [24] 9065 	mov	dph,@r0
      005E7B 08               [12] 9066 	inc	r0
      005E7C 86 F0            [24] 9067 	mov	b,@r0
      005E7E 12 70 E2         [24] 9068 	lcall	__gptrget
      005E81 FA               [12] 9069 	mov	r2,a
      005E82 A3               [24] 9070 	inc	dptr
      005E83 12 70 E2         [24] 9071 	lcall	__gptrget
      005E86 FB               [12] 9072 	mov	r3,a
      005E87 A3               [24] 9073 	inc	dptr
      005E88 12 70 E2         [24] 9074 	lcall	__gptrget
      005E8B FC               [12] 9075 	mov	r4,a
      005E8C C0 01            [24] 9076 	push	ar1
      005E8E C0 07            [24] 9077 	push	ar7
      005E90 C0 06            [24] 9078 	push	ar6
      005E92 C0 05            [24] 9079 	push	ar5
      005E94 8A 82            [24] 9080 	mov	dpl,r2
      005E96 8B 83            [24] 9081 	mov	dph,r3
      005E98 8C F0            [24] 9082 	mov	b,r4
      005E9A 12 28 FF         [24] 9083 	lcall	_stack_peek2
      005E9D AE 82            [24] 9084 	mov	r6,dpl
      005E9F AF 83            [24] 9085 	mov	r7,dph
      005EA1 15 81            [12] 9086 	dec	sp
      005EA3 15 81            [12] 9087 	dec	sp
      005EA5 15 81            [12] 9088 	dec	sp
      005EA7 D0 01            [24] 9089 	pop	ar1
      005EA9 E5 08            [12] 9090 	mov	a,_bp
      005EAB 24 0C            [12] 9091 	add	a,#0x0c
      005EAD F8               [12] 9092 	mov	r0,a
      005EAE A6 06            [24] 9093 	mov	@r0,ar6
      005EB0 08               [12] 9094 	inc	r0
      005EB1 A6 07            [24] 9095 	mov	@r0,ar7
                                   9096 ;	calc.c:420: printstr("\r\nSSTOP1\t");
      005EB3 7B 61            [12] 9097 	mov	r3,#___str_19
      005EB5 7C 8A            [12] 9098 	mov	r4,#(___str_19 >> 8)
      005EB7 7D 80            [12] 9099 	mov	r5,#0x80
                                   9100 ;	calc.c:59: return;
      005EB9                       9101 00154$:
                                   9102 ;	calc.c:57: for (; *s; s++) putchar(*s);
      005EB9 8B 82            [24] 9103 	mov	dpl,r3
      005EBB 8C 83            [24] 9104 	mov	dph,r4
      005EBD 8D F0            [24] 9105 	mov	b,r5
      005EBF 12 70 E2         [24] 9106 	lcall	__gptrget
      005EC2 FA               [12] 9107 	mov	r2,a
      005EC3 60 10            [24] 9108 	jz	00127$
      005EC5 7F 00            [12] 9109 	mov	r7,#0x00
      005EC7 8A 82            [24] 9110 	mov	dpl,r2
      005EC9 8F 83            [24] 9111 	mov	dph,r7
      005ECB 12 2B 70         [24] 9112 	lcall	_putchar
      005ECE 0B               [12] 9113 	inc	r3
                                   9114 ;	calc.c:420: printstr("\r\nSSTOP1\t");
      005ECF BB 00 E7         [24] 9115 	cjne	r3,#0x00,00154$
      005ED2 0C               [12] 9116 	inc	r4
      005ED3 80 E4            [24] 9117 	sjmp	00154$
      005ED5                       9118 00127$:
                                   9119 ;	calc.c:421: if (n > 0) printall(vals[1]);
      005ED5 E5 08            [12] 9120 	mov	a,_bp
      005ED7 24 0C            [12] 9121 	add	a,#0x0c
      005ED9 F8               [12] 9122 	mov	r0,a
      005EDA C3               [12] 9123 	clr	c
      005EDB E4               [12] 9124 	clr	a
      005EDC 96               [12] 9125 	subb	a,@r0
      005EDD 74 80            [12] 9126 	mov	a,#(0x00 ^ 0x80)
      005EDF 08               [12] 9127 	inc	r0
      005EE0 86 F0            [24] 9128 	mov	b,@r0
      005EE2 63 F0 80         [24] 9129 	xrl	b,#0x80
      005EE5 95 F0            [12] 9130 	subb	a,b
      005EE7 40 03            [24] 9131 	jc	00336$
      005EE9 02 60 11         [24] 9132 	ljmp	00108$
      005EEC                       9133 00336$:
      005EEC 74 04            [12] 9134 	mov	a,#0x04
      005EEE 29               [12] 9135 	add	a,r1
      005EEF F8               [12] 9136 	mov	r0,a
      005EF0 86 02            [24] 9137 	mov	ar2,@r0
      005EF2 08               [12] 9138 	inc	r0
      005EF3 86 03            [24] 9139 	mov	ar3,@r0
      005EF5 08               [12] 9140 	inc	r0
      005EF6 86 04            [24] 9141 	mov	ar4,@r0
      005EF8 08               [12] 9142 	inc	r0
      005EF9 86 05            [24] 9143 	mov	ar5,@r0
                                   9144 ;	calc.c:72: printf("%08lx\t", d);
      005EFB C0 05            [24] 9145 	push	ar5
      005EFD C0 04            [24] 9146 	push	ar4
      005EFF C0 03            [24] 9147 	push	ar3
      005F01 C0 02            [24] 9148 	push	ar2
      005F03 C0 01            [24] 9149 	push	ar1
      005F05 C0 02            [24] 9150 	push	ar2
      005F07 C0 03            [24] 9151 	push	ar3
      005F09 C0 04            [24] 9152 	push	ar4
      005F0B C0 05            [24] 9153 	push	ar5
      005F0D 74 63            [12] 9154 	mov	a,#___str_0
      005F0F C0 E0            [24] 9155 	push	acc
      005F11 74 89            [12] 9156 	mov	a,#(___str_0 >> 8)
      005F13 C0 E0            [24] 9157 	push	acc
      005F15 74 80            [12] 9158 	mov	a,#0x80
      005F17 C0 E0            [24] 9159 	push	acc
      005F19 12 70 A9         [24] 9160 	lcall	_printf
      005F1C E5 81            [12] 9161 	mov	a,sp
      005F1E 24 F9            [12] 9162 	add	a,#0xf9
      005F20 F5 81            [12] 9163 	mov	sp,a
      005F22 D0 01            [24] 9164 	pop	ar1
      005F24 D0 02            [24] 9165 	pop	ar2
      005F26 D0 03            [24] 9166 	pop	ar3
      005F28 D0 04            [24] 9167 	pop	ar4
      005F2A D0 05            [24] 9168 	pop	ar5
                                   9169 ;	calc.c:73: printf("% 11ld\t", d);
      005F2C C0 05            [24] 9170 	push	ar5
      005F2E C0 04            [24] 9171 	push	ar4
      005F30 C0 03            [24] 9172 	push	ar3
      005F32 C0 02            [24] 9173 	push	ar2
      005F34 C0 01            [24] 9174 	push	ar1
      005F36 C0 02            [24] 9175 	push	ar2
      005F38 C0 03            [24] 9176 	push	ar3
      005F3A C0 04            [24] 9177 	push	ar4
      005F3C C0 05            [24] 9178 	push	ar5
      005F3E 74 6A            [12] 9179 	mov	a,#___str_1
      005F40 C0 E0            [24] 9180 	push	acc
      005F42 74 89            [12] 9181 	mov	a,#(___str_1 >> 8)
      005F44 C0 E0            [24] 9182 	push	acc
      005F46 74 80            [12] 9183 	mov	a,#0x80
      005F48 C0 E0            [24] 9184 	push	acc
      005F4A 12 70 A9         [24] 9185 	lcall	_printf
      005F4D E5 81            [12] 9186 	mov	a,sp
      005F4F 24 F9            [12] 9187 	add	a,#0xf9
      005F51 F5 81            [12] 9188 	mov	sp,a
      005F53 D0 01            [24] 9189 	pop	ar1
      005F55 D0 02            [24] 9190 	pop	ar2
      005F57 D0 03            [24] 9191 	pop	ar3
      005F59 D0 04            [24] 9192 	pop	ar4
      005F5B D0 05            [24] 9193 	pop	ar5
                                   9194 ;	calc.c:74: printf("%011lo\t", d);
      005F5D C0 05            [24] 9195 	push	ar5
      005F5F C0 04            [24] 9196 	push	ar4
      005F61 C0 03            [24] 9197 	push	ar3
      005F63 C0 02            [24] 9198 	push	ar2
      005F65 C0 01            [24] 9199 	push	ar1
      005F67 C0 02            [24] 9200 	push	ar2
      005F69 C0 03            [24] 9201 	push	ar3
      005F6B C0 04            [24] 9202 	push	ar4
      005F6D C0 05            [24] 9203 	push	ar5
      005F6F 74 72            [12] 9204 	mov	a,#___str_2
      005F71 C0 E0            [24] 9205 	push	acc
      005F73 74 89            [12] 9206 	mov	a,#(___str_2 >> 8)
      005F75 C0 E0            [24] 9207 	push	acc
      005F77 74 80            [12] 9208 	mov	a,#0x80
      005F79 C0 E0            [24] 9209 	push	acc
      005F7B 12 70 A9         [24] 9210 	lcall	_printf
      005F7E E5 81            [12] 9211 	mov	a,sp
      005F80 24 F9            [12] 9212 	add	a,#0xf9
      005F82 F5 81            [12] 9213 	mov	sp,a
      005F84 D0 01            [24] 9214 	pop	ar1
      005F86 D0 02            [24] 9215 	pop	ar2
      005F88 D0 03            [24] 9216 	pop	ar3
      005F8A D0 04            [24] 9217 	pop	ar4
      005F8C D0 05            [24] 9218 	pop	ar5
                                   9219 ;	calc.c:75: printbin(d);
      005F8E E5 08            [12] 9220 	mov	a,_bp
      005F90 24 16            [12] 9221 	add	a,#0x16
      005F92 F8               [12] 9222 	mov	r0,a
      005F93 A6 02            [24] 9223 	mov	@r0,ar2
      005F95 08               [12] 9224 	inc	r0
      005F96 A6 03            [24] 9225 	mov	@r0,ar3
      005F98 08               [12] 9226 	inc	r0
      005F99 A6 04            [24] 9227 	mov	@r0,ar4
      005F9B 08               [12] 9228 	inc	r0
      005F9C A6 05            [24] 9229 	mov	@r0,ar5
                                   9230 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      005F9E E5 08            [12] 9231 	mov	a,_bp
      005FA0 24 1A            [12] 9232 	add	a,#0x1a
      005FA2 F8               [12] 9233 	mov	r0,a
      005FA3 E4               [12] 9234 	clr	a
      005FA4 F6               [12] 9235 	mov	@r0,a
      005FA5 08               [12] 9236 	inc	r0
      005FA6 F6               [12] 9237 	mov	@r0,a
      005FA7 08               [12] 9238 	inc	r0
      005FA8 F6               [12] 9239 	mov	@r0,a
      005FA9 08               [12] 9240 	inc	r0
      005FAA 76 80            [12] 9241 	mov	@r0,#0x80
      005FAC                       9242 00156$:
                                   9243 ;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005FAC C0 01            [24] 9244 	push	ar1
      005FAE E5 08            [12] 9245 	mov	a,_bp
      005FB0 24 16            [12] 9246 	add	a,#0x16
      005FB2 F8               [12] 9247 	mov	r0,a
      005FB3 86 02            [24] 9248 	mov	ar2,@r0
      005FB5 08               [12] 9249 	inc	r0
      005FB6 86 03            [24] 9250 	mov	ar3,@r0
      005FB8 08               [12] 9251 	inc	r0
      005FB9 86 05            [24] 9252 	mov	ar5,@r0
      005FBB 08               [12] 9253 	inc	r0
      005FBC 86 07            [24] 9254 	mov	ar7,@r0
      005FBE E5 08            [12] 9255 	mov	a,_bp
      005FC0 24 1A            [12] 9256 	add	a,#0x1a
      005FC2 F8               [12] 9257 	mov	r0,a
      005FC3 E6               [12] 9258 	mov	a,@r0
      005FC4 52 02            [12] 9259 	anl	ar2,a
      005FC6 08               [12] 9260 	inc	r0
      005FC7 E6               [12] 9261 	mov	a,@r0
      005FC8 52 03            [12] 9262 	anl	ar3,a
      005FCA 08               [12] 9263 	inc	r0
      005FCB E6               [12] 9264 	mov	a,@r0
      005FCC 52 05            [12] 9265 	anl	ar5,a
      005FCE 08               [12] 9266 	inc	r0
      005FCF E6               [12] 9267 	mov	a,@r0
      005FD0 52 07            [12] 9268 	anl	ar7,a
      005FD2 D0 01            [24] 9269 	pop	ar1
      005FD4 EA               [12] 9270 	mov	a,r2
      005FD5 4B               [12] 9271 	orl	a,r3
      005FD6 4D               [12] 9272 	orl	a,r5
      005FD7 4F               [12] 9273 	orl	a,r7
      005FD8 60 06            [24] 9274 	jz	00174$
      005FDA 7E 31            [12] 9275 	mov	r6,#0x31
      005FDC 7F 00            [12] 9276 	mov	r7,#0x00
      005FDE 80 04            [24] 9277 	sjmp	00175$
      005FE0                       9278 00174$:
      005FE0 7E 30            [12] 9279 	mov	r6,#0x30
      005FE2 7F 00            [12] 9280 	mov	r7,#0x00
      005FE4                       9281 00175$:
      005FE4 8E 82            [24] 9282 	mov	dpl,r6
      005FE6 8F 83            [24] 9283 	mov	dph,r7
      005FE8 12 2B 70         [24] 9284 	lcall	_putchar
                                   9285 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      005FEB E5 08            [12] 9286 	mov	a,_bp
      005FED 24 1A            [12] 9287 	add	a,#0x1a
      005FEF F8               [12] 9288 	mov	r0,a
      005FF0 08               [12] 9289 	inc	r0
      005FF1 08               [12] 9290 	inc	r0
      005FF2 08               [12] 9291 	inc	r0
      005FF3 E6               [12] 9292 	mov	a,@r0
      005FF4 C3               [12] 9293 	clr	c
      005FF5 13               [12] 9294 	rrc	a
      005FF6 F6               [12] 9295 	mov	@r0,a
      005FF7 18               [12] 9296 	dec	r0
      005FF8 E6               [12] 9297 	mov	a,@r0
      005FF9 13               [12] 9298 	rrc	a
      005FFA F6               [12] 9299 	mov	@r0,a
      005FFB 18               [12] 9300 	dec	r0
      005FFC E6               [12] 9301 	mov	a,@r0
      005FFD 13               [12] 9302 	rrc	a
      005FFE F6               [12] 9303 	mov	@r0,a
      005FFF 18               [12] 9304 	dec	r0
      006000 E6               [12] 9305 	mov	a,@r0
      006001 13               [12] 9306 	rrc	a
      006002 F6               [12] 9307 	mov	@r0,a
      006003 E5 08            [12] 9308 	mov	a,_bp
      006005 24 1A            [12] 9309 	add	a,#0x1a
      006007 F8               [12] 9310 	mov	r0,a
      006008 E6               [12] 9311 	mov	a,@r0
      006009 08               [12] 9312 	inc	r0
      00600A 46               [12] 9313 	orl	a,@r0
      00600B 08               [12] 9314 	inc	r0
      00600C 46               [12] 9315 	orl	a,@r0
      00600D 08               [12] 9316 	inc	r0
      00600E 46               [12] 9317 	orl	a,@r0
      00600F 70 9B            [24] 9318 	jnz	00156$
                                   9319 ;	calc.c:421: if (n > 0) printall(vals[1]);
      006011                       9320 00108$:
                                   9321 ;	calc.c:422: printstr("\r\nSSTOP0\t");
      006011 7D 6B            [12] 9322 	mov	r5,#___str_20
      006013 7E 8A            [12] 9323 	mov	r6,#(___str_20 >> 8)
      006015 7F 80            [12] 9324 	mov	r7,#0x80
                                   9325 ;	calc.c:59: return;
      006017                       9326 00159$:
                                   9327 ;	calc.c:57: for (; *s; s++) putchar(*s);
      006017 8D 82            [24] 9328 	mov	dpl,r5
      006019 8E 83            [24] 9329 	mov	dph,r6
      00601B 8F F0            [24] 9330 	mov	b,r7
      00601D 12 70 E2         [24] 9331 	lcall	__gptrget
      006020 FC               [12] 9332 	mov	r4,a
      006021 60 10            [24] 9333 	jz	00132$
      006023 7B 00            [12] 9334 	mov	r3,#0x00
      006025 8C 82            [24] 9335 	mov	dpl,r4
      006027 8B 83            [24] 9336 	mov	dph,r3
      006029 12 2B 70         [24] 9337 	lcall	_putchar
      00602C 0D               [12] 9338 	inc	r5
                                   9339 ;	calc.c:422: printstr("\r\nSSTOP0\t");
      00602D BD 00 E7         [24] 9340 	cjne	r5,#0x00,00159$
      006030 0E               [12] 9341 	inc	r6
      006031 80 E4            [24] 9342 	sjmp	00159$
      006033                       9343 00132$:
                                   9344 ;	calc.c:423: if (n > 1) printall(vals[0]);
      006033 E5 08            [12] 9345 	mov	a,_bp
      006035 24 0C            [12] 9346 	add	a,#0x0c
      006037 F8               [12] 9347 	mov	r0,a
      006038 C3               [12] 9348 	clr	c
      006039 74 01            [12] 9349 	mov	a,#0x01
      00603B 96               [12] 9350 	subb	a,@r0
      00603C 74 80            [12] 9351 	mov	a,#(0x00 ^ 0x80)
      00603E 08               [12] 9352 	inc	r0
      00603F 86 F0            [24] 9353 	mov	b,@r0
      006041 63 F0 80         [24] 9354 	xrl	b,#0x80
      006044 95 F0            [12] 9355 	subb	a,b
      006046 40 03            [24] 9356 	jc	00341$
      006048 02 61 5C         [24] 9357 	ljmp	00110$
      00604B                       9358 00341$:
      00604B 87 04            [24] 9359 	mov	ar4,@r1
      00604D 09               [12] 9360 	inc	r1
      00604E 87 05            [24] 9361 	mov	ar5,@r1
      006050 09               [12] 9362 	inc	r1
      006051 87 06            [24] 9363 	mov	ar6,@r1
      006053 09               [12] 9364 	inc	r1
      006054 87 07            [24] 9365 	mov	ar7,@r1
                                   9366 ;	calc.c:72: printf("%08lx\t", d);
      006056 C0 07            [24] 9367 	push	ar7
      006058 C0 06            [24] 9368 	push	ar6
      00605A C0 05            [24] 9369 	push	ar5
      00605C C0 04            [24] 9370 	push	ar4
      00605E C0 04            [24] 9371 	push	ar4
      006060 C0 05            [24] 9372 	push	ar5
      006062 C0 06            [24] 9373 	push	ar6
      006064 C0 07            [24] 9374 	push	ar7
      006066 74 63            [12] 9375 	mov	a,#___str_0
      006068 C0 E0            [24] 9376 	push	acc
      00606A 74 89            [12] 9377 	mov	a,#(___str_0 >> 8)
      00606C C0 E0            [24] 9378 	push	acc
      00606E 74 80            [12] 9379 	mov	a,#0x80
      006070 C0 E0            [24] 9380 	push	acc
      006072 12 70 A9         [24] 9381 	lcall	_printf
      006075 E5 81            [12] 9382 	mov	a,sp
      006077 24 F9            [12] 9383 	add	a,#0xf9
      006079 F5 81            [12] 9384 	mov	sp,a
      00607B D0 04            [24] 9385 	pop	ar4
      00607D D0 05            [24] 9386 	pop	ar5
      00607F D0 06            [24] 9387 	pop	ar6
      006081 D0 07            [24] 9388 	pop	ar7
                                   9389 ;	calc.c:73: printf("% 11ld\t", d);
      006083 C0 07            [24] 9390 	push	ar7
      006085 C0 06            [24] 9391 	push	ar6
      006087 C0 05            [24] 9392 	push	ar5
      006089 C0 04            [24] 9393 	push	ar4
      00608B C0 04            [24] 9394 	push	ar4
      00608D C0 05            [24] 9395 	push	ar5
      00608F C0 06            [24] 9396 	push	ar6
      006091 C0 07            [24] 9397 	push	ar7
      006093 74 6A            [12] 9398 	mov	a,#___str_1
      006095 C0 E0            [24] 9399 	push	acc
      006097 74 89            [12] 9400 	mov	a,#(___str_1 >> 8)
      006099 C0 E0            [24] 9401 	push	acc
      00609B 74 80            [12] 9402 	mov	a,#0x80
      00609D C0 E0            [24] 9403 	push	acc
      00609F 12 70 A9         [24] 9404 	lcall	_printf
      0060A2 E5 81            [12] 9405 	mov	a,sp
      0060A4 24 F9            [12] 9406 	add	a,#0xf9
      0060A6 F5 81            [12] 9407 	mov	sp,a
      0060A8 D0 04            [24] 9408 	pop	ar4
      0060AA D0 05            [24] 9409 	pop	ar5
      0060AC D0 06            [24] 9410 	pop	ar6
      0060AE D0 07            [24] 9411 	pop	ar7
                                   9412 ;	calc.c:74: printf("%011lo\t", d);
      0060B0 C0 07            [24] 9413 	push	ar7
      0060B2 C0 06            [24] 9414 	push	ar6
      0060B4 C0 05            [24] 9415 	push	ar5
      0060B6 C0 04            [24] 9416 	push	ar4
      0060B8 C0 04            [24] 9417 	push	ar4
      0060BA C0 05            [24] 9418 	push	ar5
      0060BC C0 06            [24] 9419 	push	ar6
      0060BE C0 07            [24] 9420 	push	ar7
      0060C0 74 72            [12] 9421 	mov	a,#___str_2
      0060C2 C0 E0            [24] 9422 	push	acc
      0060C4 74 89            [12] 9423 	mov	a,#(___str_2 >> 8)
      0060C6 C0 E0            [24] 9424 	push	acc
      0060C8 74 80            [12] 9425 	mov	a,#0x80
      0060CA C0 E0            [24] 9426 	push	acc
      0060CC 12 70 A9         [24] 9427 	lcall	_printf
      0060CF E5 81            [12] 9428 	mov	a,sp
      0060D1 24 F9            [12] 9429 	add	a,#0xf9
      0060D3 F5 81            [12] 9430 	mov	sp,a
      0060D5 D0 04            [24] 9431 	pop	ar4
      0060D7 D0 05            [24] 9432 	pop	ar5
      0060D9 D0 06            [24] 9433 	pop	ar6
      0060DB D0 07            [24] 9434 	pop	ar7
                                   9435 ;	calc.c:75: printbin(d);
      0060DD E5 08            [12] 9436 	mov	a,_bp
      0060DF 24 16            [12] 9437 	add	a,#0x16
      0060E1 F8               [12] 9438 	mov	r0,a
      0060E2 A6 04            [24] 9439 	mov	@r0,ar4
      0060E4 08               [12] 9440 	inc	r0
      0060E5 A6 05            [24] 9441 	mov	@r0,ar5
      0060E7 08               [12] 9442 	inc	r0
      0060E8 A6 06            [24] 9443 	mov	@r0,ar6
      0060EA 08               [12] 9444 	inc	r0
      0060EB A6 07            [24] 9445 	mov	@r0,ar7
                                   9446 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      0060ED E5 08            [12] 9447 	mov	a,_bp
      0060EF 24 1A            [12] 9448 	add	a,#0x1a
      0060F1 F8               [12] 9449 	mov	r0,a
      0060F2 E4               [12] 9450 	clr	a
      0060F3 F6               [12] 9451 	mov	@r0,a
      0060F4 08               [12] 9452 	inc	r0
      0060F5 F6               [12] 9453 	mov	@r0,a
      0060F6 08               [12] 9454 	inc	r0
      0060F7 F6               [12] 9455 	mov	@r0,a
      0060F8 08               [12] 9456 	inc	r0
      0060F9 76 80            [12] 9457 	mov	@r0,#0x80
      0060FB                       9458 00161$:
                                   9459 ;	calc.c:66: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0060FB E5 08            [12] 9460 	mov	a,_bp
      0060FD 24 16            [12] 9461 	add	a,#0x16
      0060FF F8               [12] 9462 	mov	r0,a
      006100 86 04            [24] 9463 	mov	ar4,@r0
      006102 08               [12] 9464 	inc	r0
      006103 86 05            [24] 9465 	mov	ar5,@r0
      006105 08               [12] 9466 	inc	r0
      006106 86 06            [24] 9467 	mov	ar6,@r0
      006108 08               [12] 9468 	inc	r0
      006109 86 07            [24] 9469 	mov	ar7,@r0
      00610B E5 08            [12] 9470 	mov	a,_bp
      00610D 24 1A            [12] 9471 	add	a,#0x1a
      00610F F8               [12] 9472 	mov	r0,a
      006110 E6               [12] 9473 	mov	a,@r0
      006111 52 04            [12] 9474 	anl	ar4,a
      006113 08               [12] 9475 	inc	r0
      006114 E6               [12] 9476 	mov	a,@r0
      006115 52 05            [12] 9477 	anl	ar5,a
      006117 08               [12] 9478 	inc	r0
      006118 E6               [12] 9479 	mov	a,@r0
      006119 52 06            [12] 9480 	anl	ar6,a
      00611B 08               [12] 9481 	inc	r0
      00611C E6               [12] 9482 	mov	a,@r0
      00611D 52 07            [12] 9483 	anl	ar7,a
      00611F EC               [12] 9484 	mov	a,r4
      006120 4D               [12] 9485 	orl	a,r5
      006121 4E               [12] 9486 	orl	a,r6
      006122 4F               [12] 9487 	orl	a,r7
      006123 60 06            [24] 9488 	jz	00176$
      006125 7E 31            [12] 9489 	mov	r6,#0x31
      006127 7F 00            [12] 9490 	mov	r7,#0x00
      006129 80 04            [24] 9491 	sjmp	00177$
      00612B                       9492 00176$:
      00612B 7E 30            [12] 9493 	mov	r6,#0x30
      00612D 7F 00            [12] 9494 	mov	r7,#0x00
      00612F                       9495 00177$:
      00612F 8E 82            [24] 9496 	mov	dpl,r6
      006131 8F 83            [24] 9497 	mov	dph,r7
      006133 12 2B 70         [24] 9498 	lcall	_putchar
                                   9499 ;	calc.c:65: for (mask = 0x80000000lu; mask; mask >>= 1)
      006136 E5 08            [12] 9500 	mov	a,_bp
      006138 24 1A            [12] 9501 	add	a,#0x1a
      00613A F8               [12] 9502 	mov	r0,a
      00613B 08               [12] 9503 	inc	r0
      00613C 08               [12] 9504 	inc	r0
      00613D 08               [12] 9505 	inc	r0
      00613E E6               [12] 9506 	mov	a,@r0
      00613F C3               [12] 9507 	clr	c
      006140 13               [12] 9508 	rrc	a
      006141 F6               [12] 9509 	mov	@r0,a
      006142 18               [12] 9510 	dec	r0
      006143 E6               [12] 9511 	mov	a,@r0
      006144 13               [12] 9512 	rrc	a
      006145 F6               [12] 9513 	mov	@r0,a
      006146 18               [12] 9514 	dec	r0
      006147 E6               [12] 9515 	mov	a,@r0
      006148 13               [12] 9516 	rrc	a
      006149 F6               [12] 9517 	mov	@r0,a
      00614A 18               [12] 9518 	dec	r0
      00614B E6               [12] 9519 	mov	a,@r0
      00614C 13               [12] 9520 	rrc	a
      00614D F6               [12] 9521 	mov	@r0,a
      00614E E5 08            [12] 9522 	mov	a,_bp
      006150 24 1A            [12] 9523 	add	a,#0x1a
      006152 F8               [12] 9524 	mov	r0,a
      006153 E6               [12] 9525 	mov	a,@r0
      006154 08               [12] 9526 	inc	r0
      006155 46               [12] 9527 	orl	a,@r0
      006156 08               [12] 9528 	inc	r0
      006157 46               [12] 9529 	orl	a,@r0
      006158 08               [12] 9530 	inc	r0
      006159 46               [12] 9531 	orl	a,@r0
      00615A 70 9F            [24] 9532 	jnz	00161$
                                   9533 ;	calc.c:423: if (n > 1) printall(vals[0]);
      00615C                       9534 00110$:
                                   9535 ;	calc.c:424: printstr("\r\n");
      00615C 7D 7A            [12] 9536 	mov	r5,#___str_3
      00615E 7E 89            [12] 9537 	mov	r6,#(___str_3 >> 8)
      006160 7F 80            [12] 9538 	mov	r7,#0x80
                                   9539 ;	calc.c:59: return;
      006162                       9540 00164$:
                                   9541 ;	calc.c:57: for (; *s; s++) putchar(*s);
      006162 8D 82            [24] 9542 	mov	dpl,r5
      006164 8E 83            [24] 9543 	mov	dph,r6
      006166 8F F0            [24] 9544 	mov	b,r7
      006168 12 70 E2         [24] 9545 	lcall	__gptrget
      00616B FC               [12] 9546 	mov	r4,a
      00616C 60 10            [24] 9547 	jz	00137$
      00616E 7B 00            [12] 9548 	mov	r3,#0x00
      006170 8C 82            [24] 9549 	mov	dpl,r4
      006172 8B 83            [24] 9550 	mov	dph,r3
      006174 12 2B 70         [24] 9551 	lcall	_putchar
      006177 0D               [12] 9552 	inc	r5
                                   9553 ;	calc.c:424: printstr("\r\n");
      006178 BD 00 E7         [24] 9554 	cjne	r5,#0x00,00164$
      00617B 0E               [12] 9555 	inc	r6
      00617C 80 E4            [24] 9556 	sjmp	00164$
      00617E                       9557 00137$:
                                   9558 ;	calc.c:426: return 1;
      00617E 90 00 01         [24] 9559 	mov	dptr,#0x0001
                                   9560 ;	calc.c:427: }
      006181 85 08 81         [24] 9561 	mov	sp,_bp
      006184 D0 08            [24] 9562 	pop	_bp
      006186 22               [24] 9563 	ret
                                   9564 ;------------------------------------------------------------
                                   9565 ;Allocation info for local variables in function 'help'
                                   9566 ;------------------------------------------------------------
                                   9567 ;delta                     Allocated to stack - _bp -5
                                   9568 ;_ctx                      Allocated to registers 
                                   9569 ;__1310720151              Allocated to registers 
                                   9570 ;s                         Allocated to registers r5 r6 r7 
                                   9571 ;__1310720153              Allocated to registers 
                                   9572 ;s                         Allocated to registers r5 r6 r7 
                                   9573 ;__1310720155              Allocated to registers 
                                   9574 ;s                         Allocated to registers r5 r6 r7 
                                   9575 ;__1310720157              Allocated to registers 
                                   9576 ;s                         Allocated to registers r5 r6 r7 
                                   9577 ;__1310720159              Allocated to registers 
                                   9578 ;s                         Allocated to registers r5 r6 r7 
                                   9579 ;__1310720161              Allocated to registers 
                                   9580 ;s                         Allocated to registers r5 r6 r7 
                                   9581 ;__1310720163              Allocated to registers 
                                   9582 ;s                         Allocated to registers r5 r6 r7 
                                   9583 ;__1310720165              Allocated to registers 
                                   9584 ;s                         Allocated to registers r5 r6 r7 
                                   9585 ;__1310720167              Allocated to registers 
                                   9586 ;s                         Allocated to registers r5 r6 r7 
                                   9587 ;__1310720169              Allocated to registers 
                                   9588 ;s                         Allocated to registers r5 r6 r7 
                                   9589 ;__1310720171              Allocated to registers 
                                   9590 ;s                         Allocated to registers r5 r6 r7 
                                   9591 ;__1310720173              Allocated to registers 
                                   9592 ;s                         Allocated to registers r5 r6 r7 
                                   9593 ;__1310720175              Allocated to registers 
                                   9594 ;s                         Allocated to registers r5 r6 r7 
                                   9595 ;__1310720177              Allocated to registers 
                                   9596 ;s                         Allocated to registers r5 r6 r7 
                                   9597 ;__1310720179              Allocated to registers 
                                   9598 ;s                         Allocated to registers r5 r6 r7 
                                   9599 ;__1310720181              Allocated to registers 
                                   9600 ;s                         Allocated to registers r5 r6 r7 
                                   9601 ;__1310720183              Allocated to registers 
                                   9602 ;s                         Allocated to registers r5 r6 r7 
                                   9603 ;__1310720185              Allocated to registers 
                                   9604 ;s                         Allocated to registers r5 r6 r7 
                                   9605 ;__1310720187              Allocated to registers 
                                   9606 ;s                         Allocated to registers r5 r6 r7 
                                   9607 ;__1310720189              Allocated to registers 
                                   9608 ;s                         Allocated to registers r5 r6 r7 
                                   9609 ;__1310720191              Allocated to registers 
                                   9610 ;s                         Allocated to registers r5 r6 r7 
                                   9611 ;__1310720193              Allocated to registers 
                                   9612 ;s                         Allocated to registers r5 r6 r7 
                                   9613 ;__1310720195              Allocated to registers 
                                   9614 ;s                         Allocated to registers r5 r6 r7 
                                   9615 ;__1310720197              Allocated to registers 
                                   9616 ;s                         Allocated to registers r5 r6 r7 
                                   9617 ;__1310720199              Allocated to registers 
                                   9618 ;s                         Allocated to registers r5 r6 r7 
                                   9619 ;__1310720201              Allocated to registers 
                                   9620 ;s                         Allocated to registers r5 r6 r7 
                                   9621 ;__1310720203              Allocated to registers 
                                   9622 ;s                         Allocated to registers r5 r6 r7 
                                   9623 ;__1310720205              Allocated to registers 
                                   9624 ;s                         Allocated to registers r5 r6 r7 
                                   9625 ;__1310720207              Allocated to registers 
                                   9626 ;s                         Allocated to registers r5 r6 r7 
                                   9627 ;__1310720209              Allocated to registers 
                                   9628 ;s                         Allocated to registers r5 r6 r7 
                                   9629 ;__1310720211              Allocated to registers 
                                   9630 ;s                         Allocated to registers r5 r6 r7 
                                   9631 ;------------------------------------------------------------
                                   9632 ;	calc.c:429: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   9633 ;	-----------------------------------------
                                   9634 ;	 function help
                                   9635 ;	-----------------------------------------
      006187                       9636 _help:
      006187 C0 08            [24] 9637 	push	_bp
      006189 85 81 08         [24] 9638 	mov	_bp,sp
                                   9639 ;	calc.c:433: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      00618C 7D 75            [12] 9640 	mov	r5,#___str_21
      00618E 7E 8A            [12] 9641 	mov	r6,#(___str_21 >> 8)
      006190 7F 80            [12] 9642 	mov	r7,#0x80
                                   9643 ;	calc.c:59: return;
      006192                       9644 00164$:
                                   9645 ;	calc.c:57: for (; *s; s++) putchar(*s);
      006192 8D 82            [24] 9646 	mov	dpl,r5
      006194 8E 83            [24] 9647 	mov	dph,r6
      006196 8F F0            [24] 9648 	mov	b,r7
      006198 12 70 E2         [24] 9649 	lcall	__gptrget
      00619B FC               [12] 9650 	mov	r4,a
      00619C 60 10            [24] 9651 	jz	00102$
      00619E 7B 00            [12] 9652 	mov	r3,#0x00
      0061A0 8C 82            [24] 9653 	mov	dpl,r4
      0061A2 8B 83            [24] 9654 	mov	dph,r3
      0061A4 12 2B 70         [24] 9655 	lcall	_putchar
      0061A7 0D               [12] 9656 	inc	r5
                                   9657 ;	calc.c:433: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      0061A8 BD 00 E7         [24] 9658 	cjne	r5,#0x00,00164$
      0061AB 0E               [12] 9659 	inc	r6
      0061AC 80 E4            [24] 9660 	sjmp	00164$
      0061AE                       9661 00102$:
                                   9662 ;	calc.c:434: printstr("p.\tpop top\r\n");
      0061AE 7D 8D            [12] 9663 	mov	r5,#___str_22
      0061B0 7E 8A            [12] 9664 	mov	r6,#(___str_22 >> 8)
      0061B2 7F 80            [12] 9665 	mov	r7,#0x80
                                   9666 ;	calc.c:59: return;
      0061B4                       9667 00167$:
                                   9668 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0061B4 8D 82            [24] 9669 	mov	dpl,r5
      0061B6 8E 83            [24] 9670 	mov	dph,r6
      0061B8 8F F0            [24] 9671 	mov	b,r7
      0061BA 12 70 E2         [24] 9672 	lcall	__gptrget
      0061BD FC               [12] 9673 	mov	r4,a
      0061BE 60 10            [24] 9674 	jz	00104$
      0061C0 7B 00            [12] 9675 	mov	r3,#0x00
      0061C2 8C 82            [24] 9676 	mov	dpl,r4
      0061C4 8B 83            [24] 9677 	mov	dph,r3
      0061C6 12 2B 70         [24] 9678 	lcall	_putchar
      0061C9 0D               [12] 9679 	inc	r5
                                   9680 ;	calc.c:434: printstr("p.\tpop top\r\n");
      0061CA BD 00 E7         [24] 9681 	cjne	r5,#0x00,00167$
      0061CD 0E               [12] 9682 	inc	r6
      0061CE 80 E4            [24] 9683 	sjmp	00167$
      0061D0                       9684 00104$:
                                   9685 ;	calc.c:435: printstr("P\tpop stack\r\n");
      0061D0 7D 9A            [12] 9686 	mov	r5,#___str_23
      0061D2 7E 8A            [12] 9687 	mov	r6,#(___str_23 >> 8)
      0061D4 7F 80            [12] 9688 	mov	r7,#0x80
                                   9689 ;	calc.c:59: return;
      0061D6                       9690 00170$:
                                   9691 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0061D6 8D 82            [24] 9692 	mov	dpl,r5
      0061D8 8E 83            [24] 9693 	mov	dph,r6
      0061DA 8F F0            [24] 9694 	mov	b,r7
      0061DC 12 70 E2         [24] 9695 	lcall	__gptrget
      0061DF FC               [12] 9696 	mov	r4,a
      0061E0 60 10            [24] 9697 	jz	00106$
      0061E2 7B 00            [12] 9698 	mov	r3,#0x00
      0061E4 8C 82            [24] 9699 	mov	dpl,r4
      0061E6 8B 83            [24] 9700 	mov	dph,r3
      0061E8 12 2B 70         [24] 9701 	lcall	_putchar
      0061EB 0D               [12] 9702 	inc	r5
                                   9703 ;	calc.c:435: printstr("P\tpop stack\r\n");
      0061EC BD 00 E7         [24] 9704 	cjne	r5,#0x00,00170$
      0061EF 0E               [12] 9705 	inc	r6
      0061F0 80 E4            [24] 9706 	sjmp	00170$
      0061F2                       9707 00106$:
                                   9708 ;	calc.c:436: printstr("v\tpeek top\r\n");
      0061F2 7D A8            [12] 9709 	mov	r5,#___str_24
      0061F4 7E 8A            [12] 9710 	mov	r6,#(___str_24 >> 8)
      0061F6 7F 80            [12] 9711 	mov	r7,#0x80
                                   9712 ;	calc.c:59: return;
      0061F8                       9713 00173$:
                                   9714 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0061F8 8D 82            [24] 9715 	mov	dpl,r5
      0061FA 8E 83            [24] 9716 	mov	dph,r6
      0061FC 8F F0            [24] 9717 	mov	b,r7
      0061FE 12 70 E2         [24] 9718 	lcall	__gptrget
      006201 FC               [12] 9719 	mov	r4,a
      006202 60 10            [24] 9720 	jz	00108$
      006204 7B 00            [12] 9721 	mov	r3,#0x00
      006206 8C 82            [24] 9722 	mov	dpl,r4
      006208 8B 83            [24] 9723 	mov	dph,r3
      00620A 12 2B 70         [24] 9724 	lcall	_putchar
      00620D 0D               [12] 9725 	inc	r5
                                   9726 ;	calc.c:436: printstr("v\tpeek top\r\n");
      00620E BD 00 E7         [24] 9727 	cjne	r5,#0x00,00173$
      006211 0E               [12] 9728 	inc	r6
      006212 80 E4            [24] 9729 	sjmp	00173$
      006214                       9730 00108$:
                                   9731 ;	calc.c:437: printstr("V\tpeek stack\r\n");
      006214 7D B5            [12] 9732 	mov	r5,#___str_25
      006216 7E 8A            [12] 9733 	mov	r6,#(___str_25 >> 8)
      006218 7F 80            [12] 9734 	mov	r7,#0x80
                                   9735 ;	calc.c:59: return;
      00621A                       9736 00176$:
                                   9737 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00621A 8D 82            [24] 9738 	mov	dpl,r5
      00621C 8E 83            [24] 9739 	mov	dph,r6
      00621E 8F F0            [24] 9740 	mov	b,r7
      006220 12 70 E2         [24] 9741 	lcall	__gptrget
      006223 FC               [12] 9742 	mov	r4,a
      006224 60 10            [24] 9743 	jz	00110$
      006226 7B 00            [12] 9744 	mov	r3,#0x00
      006228 8C 82            [24] 9745 	mov	dpl,r4
      00622A 8B 83            [24] 9746 	mov	dph,r3
      00622C 12 2B 70         [24] 9747 	lcall	_putchar
      00622F 0D               [12] 9748 	inc	r5
                                   9749 ;	calc.c:437: printstr("V\tpeek stack\r\n");
      006230 BD 00 E7         [24] 9750 	cjne	r5,#0x00,00176$
      006233 0E               [12] 9751 	inc	r6
      006234 80 E4            [24] 9752 	sjmp	00176$
      006236                       9753 00110$:
                                   9754 ;	calc.c:438: printstr("i\treset acc\r\n");
      006236 7D C4            [12] 9755 	mov	r5,#___str_26
      006238 7E 8A            [12] 9756 	mov	r6,#(___str_26 >> 8)
      00623A 7F 80            [12] 9757 	mov	r7,#0x80
                                   9758 ;	calc.c:59: return;
      00623C                       9759 00179$:
                                   9760 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00623C 8D 82            [24] 9761 	mov	dpl,r5
      00623E 8E 83            [24] 9762 	mov	dph,r6
      006240 8F F0            [24] 9763 	mov	b,r7
      006242 12 70 E2         [24] 9764 	lcall	__gptrget
      006245 FC               [12] 9765 	mov	r4,a
      006246 60 10            [24] 9766 	jz	00112$
      006248 7B 00            [12] 9767 	mov	r3,#0x00
      00624A 8C 82            [24] 9768 	mov	dpl,r4
      00624C 8B 83            [24] 9769 	mov	dph,r3
      00624E 12 2B 70         [24] 9770 	lcall	_putchar
      006251 0D               [12] 9771 	inc	r5
                                   9772 ;	calc.c:438: printstr("i\treset acc\r\n");
      006252 BD 00 E7         [24] 9773 	cjne	r5,#0x00,00179$
      006255 0E               [12] 9774 	inc	r6
      006256 80 E4            [24] 9775 	sjmp	00179$
      006258                       9776 00112$:
                                   9777 ;	calc.c:439: printstr("I\treset and discard acc\r\n");
      006258 7D D2            [12] 9778 	mov	r5,#___str_27
      00625A 7E 8A            [12] 9779 	mov	r6,#(___str_27 >> 8)
      00625C 7F 80            [12] 9780 	mov	r7,#0x80
                                   9781 ;	calc.c:59: return;
      00625E                       9782 00182$:
                                   9783 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00625E 8D 82            [24] 9784 	mov	dpl,r5
      006260 8E 83            [24] 9785 	mov	dph,r6
      006262 8F F0            [24] 9786 	mov	b,r7
      006264 12 70 E2         [24] 9787 	lcall	__gptrget
      006267 FC               [12] 9788 	mov	r4,a
      006268 60 10            [24] 9789 	jz	00114$
      00626A 7B 00            [12] 9790 	mov	r3,#0x00
      00626C 8C 82            [24] 9791 	mov	dpl,r4
      00626E 8B 83            [24] 9792 	mov	dph,r3
      006270 12 2B 70         [24] 9793 	lcall	_putchar
      006273 0D               [12] 9794 	inc	r5
                                   9795 ;	calc.c:439: printstr("I\treset and discard acc\r\n");
      006274 BD 00 E7         [24] 9796 	cjne	r5,#0x00,00182$
      006277 0E               [12] 9797 	inc	r6
      006278 80 E4            [24] 9798 	sjmp	00182$
      00627A                       9799 00114$:
                                   9800 ;	calc.c:440: printstr("x\texchange top 2\r\n");
      00627A 7D EC            [12] 9801 	mov	r5,#___str_28
      00627C 7E 8A            [12] 9802 	mov	r6,#(___str_28 >> 8)
      00627E 7F 80            [12] 9803 	mov	r7,#0x80
                                   9804 ;	calc.c:59: return;
      006280                       9805 00185$:
                                   9806 ;	calc.c:57: for (; *s; s++) putchar(*s);
      006280 8D 82            [24] 9807 	mov	dpl,r5
      006282 8E 83            [24] 9808 	mov	dph,r6
      006284 8F F0            [24] 9809 	mov	b,r7
      006286 12 70 E2         [24] 9810 	lcall	__gptrget
      006289 FC               [12] 9811 	mov	r4,a
      00628A 60 10            [24] 9812 	jz	00116$
      00628C 7B 00            [12] 9813 	mov	r3,#0x00
      00628E 8C 82            [24] 9814 	mov	dpl,r4
      006290 8B 83            [24] 9815 	mov	dph,r3
      006292 12 2B 70         [24] 9816 	lcall	_putchar
      006295 0D               [12] 9817 	inc	r5
                                   9818 ;	calc.c:440: printstr("x\texchange top 2\r\n");
      006296 BD 00 E7         [24] 9819 	cjne	r5,#0x00,00185$
      006299 0E               [12] 9820 	inc	r6
      00629A 80 E4            [24] 9821 	sjmp	00185$
      00629C                       9822 00116$:
                                   9823 ;	calc.c:441: printstr("X\texchange stacks primary <-> secondary\r\n");
      00629C 7D FF            [12] 9824 	mov	r5,#___str_29
      00629E 7E 8A            [12] 9825 	mov	r6,#(___str_29 >> 8)
      0062A0 7F 80            [12] 9826 	mov	r7,#0x80
                                   9827 ;	calc.c:59: return;
      0062A2                       9828 00188$:
                                   9829 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0062A2 8D 82            [24] 9830 	mov	dpl,r5
      0062A4 8E 83            [24] 9831 	mov	dph,r6
      0062A6 8F F0            [24] 9832 	mov	b,r7
      0062A8 12 70 E2         [24] 9833 	lcall	__gptrget
      0062AB FC               [12] 9834 	mov	r4,a
      0062AC 60 10            [24] 9835 	jz	00118$
      0062AE 7B 00            [12] 9836 	mov	r3,#0x00
      0062B0 8C 82            [24] 9837 	mov	dpl,r4
      0062B2 8B 83            [24] 9838 	mov	dph,r3
      0062B4 12 2B 70         [24] 9839 	lcall	_putchar
      0062B7 0D               [12] 9840 	inc	r5
                                   9841 ;	calc.c:441: printstr("X\texchange stacks primary <-> secondary\r\n");
      0062B8 BD 00 E7         [24] 9842 	cjne	r5,#0x00,00188$
      0062BB 0E               [12] 9843 	inc	r6
      0062BC 80 E4            [24] 9844 	sjmp	00188$
      0062BE                       9845 00118$:
                                   9846 ;	calc.c:442: printstr("T\texchange tops primary <-> secondary\r\n");
      0062BE 7D 29            [12] 9847 	mov	r5,#___str_30
      0062C0 7E 8B            [12] 9848 	mov	r6,#(___str_30 >> 8)
      0062C2 7F 80            [12] 9849 	mov	r7,#0x80
                                   9850 ;	calc.c:59: return;
      0062C4                       9851 00191$:
                                   9852 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0062C4 8D 82            [24] 9853 	mov	dpl,r5
      0062C6 8E 83            [24] 9854 	mov	dph,r6
      0062C8 8F F0            [24] 9855 	mov	b,r7
      0062CA 12 70 E2         [24] 9856 	lcall	__gptrget
      0062CD FC               [12] 9857 	mov	r4,a
      0062CE 60 10            [24] 9858 	jz	00120$
      0062D0 7B 00            [12] 9859 	mov	r3,#0x00
      0062D2 8C 82            [24] 9860 	mov	dpl,r4
      0062D4 8B 83            [24] 9861 	mov	dph,r3
      0062D6 12 2B 70         [24] 9862 	lcall	_putchar
      0062D9 0D               [12] 9863 	inc	r5
                                   9864 ;	calc.c:442: printstr("T\texchange tops primary <-> secondary\r\n");
      0062DA BD 00 E7         [24] 9865 	cjne	r5,#0x00,00191$
      0062DD 0E               [12] 9866 	inc	r6
      0062DE 80 E4            [24] 9867 	sjmp	00191$
      0062E0                       9868 00120$:
                                   9869 ;	calc.c:443: printstr("U\tcopy top secondary -> primary\r\n");
      0062E0 7D 51            [12] 9870 	mov	r5,#___str_31
      0062E2 7E 8B            [12] 9871 	mov	r6,#(___str_31 >> 8)
      0062E4 7F 80            [12] 9872 	mov	r7,#0x80
                                   9873 ;	calc.c:59: return;
      0062E6                       9874 00194$:
                                   9875 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0062E6 8D 82            [24] 9876 	mov	dpl,r5
      0062E8 8E 83            [24] 9877 	mov	dph,r6
      0062EA 8F F0            [24] 9878 	mov	b,r7
      0062EC 12 70 E2         [24] 9879 	lcall	__gptrget
      0062EF FC               [12] 9880 	mov	r4,a
      0062F0 60 10            [24] 9881 	jz	00122$
      0062F2 7B 00            [12] 9882 	mov	r3,#0x00
      0062F4 8C 82            [24] 9883 	mov	dpl,r4
      0062F6 8B 83            [24] 9884 	mov	dph,r3
      0062F8 12 2B 70         [24] 9885 	lcall	_putchar
      0062FB 0D               [12] 9886 	inc	r5
                                   9887 ;	calc.c:443: printstr("U\tcopy top secondary -> primary\r\n");
      0062FC BD 00 E7         [24] 9888 	cjne	r5,#0x00,00194$
      0062FF 0E               [12] 9889 	inc	r6
      006300 80 E4            [24] 9890 	sjmp	00194$
      006302                       9891 00122$:
                                   9892 ;	calc.c:444: printstr("u\tcopy top primary -> secondary\r\n");
      006302 7D 73            [12] 9893 	mov	r5,#___str_32
      006304 7E 8B            [12] 9894 	mov	r6,#(___str_32 >> 8)
      006306 7F 80            [12] 9895 	mov	r7,#0x80
                                   9896 ;	calc.c:59: return;
      006308                       9897 00197$:
                                   9898 ;	calc.c:57: for (; *s; s++) putchar(*s);
      006308 8D 82            [24] 9899 	mov	dpl,r5
      00630A 8E 83            [24] 9900 	mov	dph,r6
      00630C 8F F0            [24] 9901 	mov	b,r7
      00630E 12 70 E2         [24] 9902 	lcall	__gptrget
      006311 FC               [12] 9903 	mov	r4,a
      006312 60 10            [24] 9904 	jz	00124$
      006314 7B 00            [12] 9905 	mov	r3,#0x00
      006316 8C 82            [24] 9906 	mov	dpl,r4
      006318 8B 83            [24] 9907 	mov	dph,r3
      00631A 12 2B 70         [24] 9908 	lcall	_putchar
      00631D 0D               [12] 9909 	inc	r5
                                   9910 ;	calc.c:444: printstr("u\tcopy top primary -> secondary\r\n");
      00631E BD 00 E7         [24] 9911 	cjne	r5,#0x00,00197$
      006321 0E               [12] 9912 	inc	r6
      006322 80 E4            [24] 9913 	sjmp	00197$
      006324                       9914 00124$:
                                   9915 ;	calc.c:445: printstr("M\tmove top secondary -> primary\r\n");
      006324 7D 95            [12] 9916 	mov	r5,#___str_33
      006326 7E 8B            [12] 9917 	mov	r6,#(___str_33 >> 8)
      006328 7F 80            [12] 9918 	mov	r7,#0x80
                                   9919 ;	calc.c:59: return;
      00632A                       9920 00200$:
                                   9921 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00632A 8D 82            [24] 9922 	mov	dpl,r5
      00632C 8E 83            [24] 9923 	mov	dph,r6
      00632E 8F F0            [24] 9924 	mov	b,r7
      006330 12 70 E2         [24] 9925 	lcall	__gptrget
      006333 FC               [12] 9926 	mov	r4,a
      006334 60 10            [24] 9927 	jz	00126$
      006336 7B 00            [12] 9928 	mov	r3,#0x00
      006338 8C 82            [24] 9929 	mov	dpl,r4
      00633A 8B 83            [24] 9930 	mov	dph,r3
      00633C 12 2B 70         [24] 9931 	lcall	_putchar
      00633F 0D               [12] 9932 	inc	r5
                                   9933 ;	calc.c:445: printstr("M\tmove top secondary -> primary\r\n");
      006340 BD 00 E7         [24] 9934 	cjne	r5,#0x00,00200$
      006343 0E               [12] 9935 	inc	r6
      006344 80 E4            [24] 9936 	sjmp	00200$
      006346                       9937 00126$:
                                   9938 ;	calc.c:446: printstr("m\tmove top primary -> secondary\r\n");
      006346 7D B7            [12] 9939 	mov	r5,#___str_34
      006348 7E 8B            [12] 9940 	mov	r6,#(___str_34 >> 8)
      00634A 7F 80            [12] 9941 	mov	r7,#0x80
                                   9942 ;	calc.c:59: return;
      00634C                       9943 00203$:
                                   9944 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00634C 8D 82            [24] 9945 	mov	dpl,r5
      00634E 8E 83            [24] 9946 	mov	dph,r6
      006350 8F F0            [24] 9947 	mov	b,r7
      006352 12 70 E2         [24] 9948 	lcall	__gptrget
      006355 FC               [12] 9949 	mov	r4,a
      006356 60 10            [24] 9950 	jz	00128$
      006358 7B 00            [12] 9951 	mov	r3,#0x00
      00635A 8C 82            [24] 9952 	mov	dpl,r4
      00635C 8B 83            [24] 9953 	mov	dph,r3
      00635E 12 2B 70         [24] 9954 	lcall	_putchar
      006361 0D               [12] 9955 	inc	r5
                                   9956 ;	calc.c:446: printstr("m\tmove top primary -> secondary\r\n");
      006362 BD 00 E7         [24] 9957 	cjne	r5,#0x00,00203$
      006365 0E               [12] 9958 	inc	r6
      006366 80 E4            [24] 9959 	sjmp	00203$
      006368                       9960 00128$:
                                   9961 ;	calc.c:447: printstr("+\tadd top 2\r\n");
      006368 7D D9            [12] 9962 	mov	r5,#___str_35
      00636A 7E 8B            [12] 9963 	mov	r6,#(___str_35 >> 8)
      00636C 7F 80            [12] 9964 	mov	r7,#0x80
                                   9965 ;	calc.c:59: return;
      00636E                       9966 00206$:
                                   9967 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00636E 8D 82            [24] 9968 	mov	dpl,r5
      006370 8E 83            [24] 9969 	mov	dph,r6
      006372 8F F0            [24] 9970 	mov	b,r7
      006374 12 70 E2         [24] 9971 	lcall	__gptrget
      006377 FC               [12] 9972 	mov	r4,a
      006378 60 10            [24] 9973 	jz	00130$
      00637A 7B 00            [12] 9974 	mov	r3,#0x00
      00637C 8C 82            [24] 9975 	mov	dpl,r4
      00637E 8B 83            [24] 9976 	mov	dph,r3
      006380 12 2B 70         [24] 9977 	lcall	_putchar
      006383 0D               [12] 9978 	inc	r5
                                   9979 ;	calc.c:447: printstr("+\tadd top 2\r\n");
      006384 BD 00 E7         [24] 9980 	cjne	r5,#0x00,00206$
      006387 0E               [12] 9981 	inc	r6
      006388 80 E4            [24] 9982 	sjmp	00206$
      00638A                       9983 00130$:
                                   9984 ;	calc.c:448: printstr("-\tsubtract top 2\r\n");
      00638A 7D E7            [12] 9985 	mov	r5,#___str_36
      00638C 7E 8B            [12] 9986 	mov	r6,#(___str_36 >> 8)
      00638E 7F 80            [12] 9987 	mov	r7,#0x80
                                   9988 ;	calc.c:59: return;
      006390                       9989 00209$:
                                   9990 ;	calc.c:57: for (; *s; s++) putchar(*s);
      006390 8D 82            [24] 9991 	mov	dpl,r5
      006392 8E 83            [24] 9992 	mov	dph,r6
      006394 8F F0            [24] 9993 	mov	b,r7
      006396 12 70 E2         [24] 9994 	lcall	__gptrget
      006399 FC               [12] 9995 	mov	r4,a
      00639A 60 10            [24] 9996 	jz	00132$
      00639C 7B 00            [12] 9997 	mov	r3,#0x00
      00639E 8C 82            [24] 9998 	mov	dpl,r4
      0063A0 8B 83            [24] 9999 	mov	dph,r3
      0063A2 12 2B 70         [24]10000 	lcall	_putchar
      0063A5 0D               [12]10001 	inc	r5
                                  10002 ;	calc.c:448: printstr("-\tsubtract top 2\r\n");
      0063A6 BD 00 E7         [24]10003 	cjne	r5,#0x00,00209$
      0063A9 0E               [12]10004 	inc	r6
      0063AA 80 E4            [24]10005 	sjmp	00209$
      0063AC                      10006 00132$:
                                  10007 ;	calc.c:449: printstr("*\tmultiply top 2\r\n");
      0063AC 7D FA            [12]10008 	mov	r5,#___str_37
      0063AE 7E 8B            [12]10009 	mov	r6,#(___str_37 >> 8)
      0063B0 7F 80            [12]10010 	mov	r7,#0x80
                                  10011 ;	calc.c:59: return;
      0063B2                      10012 00212$:
                                  10013 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0063B2 8D 82            [24]10014 	mov	dpl,r5
      0063B4 8E 83            [24]10015 	mov	dph,r6
      0063B6 8F F0            [24]10016 	mov	b,r7
      0063B8 12 70 E2         [24]10017 	lcall	__gptrget
      0063BB FC               [12]10018 	mov	r4,a
      0063BC 60 10            [24]10019 	jz	00134$
      0063BE 7B 00            [12]10020 	mov	r3,#0x00
      0063C0 8C 82            [24]10021 	mov	dpl,r4
      0063C2 8B 83            [24]10022 	mov	dph,r3
      0063C4 12 2B 70         [24]10023 	lcall	_putchar
      0063C7 0D               [12]10024 	inc	r5
                                  10025 ;	calc.c:449: printstr("*\tmultiply top 2\r\n");
      0063C8 BD 00 E7         [24]10026 	cjne	r5,#0x00,00212$
      0063CB 0E               [12]10027 	inc	r6
      0063CC 80 E4            [24]10028 	sjmp	00212$
      0063CE                      10029 00134$:
                                  10030 ;	calc.c:450: printstr("/\tdivide top 2\r\n");
      0063CE 7D 0D            [12]10031 	mov	r5,#___str_38
      0063D0 7E 8C            [12]10032 	mov	r6,#(___str_38 >> 8)
      0063D2 7F 80            [12]10033 	mov	r7,#0x80
                                  10034 ;	calc.c:59: return;
      0063D4                      10035 00215$:
                                  10036 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0063D4 8D 82            [24]10037 	mov	dpl,r5
      0063D6 8E 83            [24]10038 	mov	dph,r6
      0063D8 8F F0            [24]10039 	mov	b,r7
      0063DA 12 70 E2         [24]10040 	lcall	__gptrget
      0063DD FC               [12]10041 	mov	r4,a
      0063DE 60 10            [24]10042 	jz	00136$
      0063E0 7B 00            [12]10043 	mov	r3,#0x00
      0063E2 8C 82            [24]10044 	mov	dpl,r4
      0063E4 8B 83            [24]10045 	mov	dph,r3
      0063E6 12 2B 70         [24]10046 	lcall	_putchar
      0063E9 0D               [12]10047 	inc	r5
                                  10048 ;	calc.c:450: printstr("/\tdivide top 2\r\n");
      0063EA BD 00 E7         [24]10049 	cjne	r5,#0x00,00215$
      0063ED 0E               [12]10050 	inc	r6
      0063EE 80 E4            [24]10051 	sjmp	00215$
      0063F0                      10052 00136$:
                                  10053 ;	calc.c:451: printstr("\\\tdivide top 2 unsigned\r\n");	
      0063F0 7D 1E            [12]10054 	mov	r5,#___str_39
      0063F2 7E 8C            [12]10055 	mov	r6,#(___str_39 >> 8)
      0063F4 7F 80            [12]10056 	mov	r7,#0x80
                                  10057 ;	calc.c:59: return;
      0063F6                      10058 00218$:
                                  10059 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0063F6 8D 82            [24]10060 	mov	dpl,r5
      0063F8 8E 83            [24]10061 	mov	dph,r6
      0063FA 8F F0            [24]10062 	mov	b,r7
      0063FC 12 70 E2         [24]10063 	lcall	__gptrget
      0063FF FC               [12]10064 	mov	r4,a
      006400 60 10            [24]10065 	jz	00138$
      006402 7B 00            [12]10066 	mov	r3,#0x00
      006404 8C 82            [24]10067 	mov	dpl,r4
      006406 8B 83            [24]10068 	mov	dph,r3
      006408 12 2B 70         [24]10069 	lcall	_putchar
      00640B 0D               [12]10070 	inc	r5
                                  10071 ;	calc.c:451: printstr("\\\tdivide top 2 unsigned\r\n");	
      00640C BD 00 E7         [24]10072 	cjne	r5,#0x00,00218$
      00640F 0E               [12]10073 	inc	r6
      006410 80 E4            [24]10074 	sjmp	00218$
      006412                      10075 00138$:
                                  10076 ;	calc.c:452: printstr("%\tmodulus top 2\r\n");
      006412 7D 38            [12]10077 	mov	r5,#___str_40
      006414 7E 8C            [12]10078 	mov	r6,#(___str_40 >> 8)
      006416 7F 80            [12]10079 	mov	r7,#0x80
                                  10080 ;	calc.c:59: return;
      006418                      10081 00221$:
                                  10082 ;	calc.c:57: for (; *s; s++) putchar(*s);
      006418 8D 82            [24]10083 	mov	dpl,r5
      00641A 8E 83            [24]10084 	mov	dph,r6
      00641C 8F F0            [24]10085 	mov	b,r7
      00641E 12 70 E2         [24]10086 	lcall	__gptrget
      006421 FC               [12]10087 	mov	r4,a
      006422 60 10            [24]10088 	jz	00140$
      006424 7B 00            [12]10089 	mov	r3,#0x00
      006426 8C 82            [24]10090 	mov	dpl,r4
      006428 8B 83            [24]10091 	mov	dph,r3
      00642A 12 2B 70         [24]10092 	lcall	_putchar
      00642D 0D               [12]10093 	inc	r5
                                  10094 ;	calc.c:452: printstr("%\tmodulus top 2\r\n");
      00642E BD 00 E7         [24]10095 	cjne	r5,#0x00,00221$
      006431 0E               [12]10096 	inc	r6
      006432 80 E4            [24]10097 	sjmp	00221$
      006434                      10098 00140$:
                                  10099 ;	calc.c:453: printstr("#\tmodulus top 2 unsigned\r\n");
      006434 7D 4A            [12]10100 	mov	r5,#___str_41
      006436 7E 8C            [12]10101 	mov	r6,#(___str_41 >> 8)
      006438 7F 80            [12]10102 	mov	r7,#0x80
                                  10103 ;	calc.c:59: return;
      00643A                      10104 00224$:
                                  10105 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00643A 8D 82            [24]10106 	mov	dpl,r5
      00643C 8E 83            [24]10107 	mov	dph,r6
      00643E 8F F0            [24]10108 	mov	b,r7
      006440 12 70 E2         [24]10109 	lcall	__gptrget
      006443 FC               [12]10110 	mov	r4,a
      006444 60 10            [24]10111 	jz	00142$
      006446 7B 00            [12]10112 	mov	r3,#0x00
      006448 8C 82            [24]10113 	mov	dpl,r4
      00644A 8B 83            [24]10114 	mov	dph,r3
      00644C 12 2B 70         [24]10115 	lcall	_putchar
      00644F 0D               [12]10116 	inc	r5
                                  10117 ;	calc.c:453: printstr("#\tmodulus top 2 unsigned\r\n");
      006450 BD 00 E7         [24]10118 	cjne	r5,#0x00,00224$
      006453 0E               [12]10119 	inc	r6
      006454 80 E4            [24]10120 	sjmp	00224$
      006456                      10121 00142$:
                                  10122 ;	calc.c:454: printstr("&\tand top 2\r\n");
      006456 7D 65            [12]10123 	mov	r5,#___str_42
      006458 7E 8C            [12]10124 	mov	r6,#(___str_42 >> 8)
      00645A 7F 80            [12]10125 	mov	r7,#0x80
                                  10126 ;	calc.c:59: return;
      00645C                      10127 00227$:
                                  10128 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00645C 8D 82            [24]10129 	mov	dpl,r5
      00645E 8E 83            [24]10130 	mov	dph,r6
      006460 8F F0            [24]10131 	mov	b,r7
      006462 12 70 E2         [24]10132 	lcall	__gptrget
      006465 FC               [12]10133 	mov	r4,a
      006466 60 10            [24]10134 	jz	00144$
      006468 7B 00            [12]10135 	mov	r3,#0x00
      00646A 8C 82            [24]10136 	mov	dpl,r4
      00646C 8B 83            [24]10137 	mov	dph,r3
      00646E 12 2B 70         [24]10138 	lcall	_putchar
      006471 0D               [12]10139 	inc	r5
                                  10140 ;	calc.c:454: printstr("&\tand top 2\r\n");
      006472 BD 00 E7         [24]10141 	cjne	r5,#0x00,00227$
      006475 0E               [12]10142 	inc	r6
      006476 80 E4            [24]10143 	sjmp	00227$
      006478                      10144 00144$:
                                  10145 ;	calc.c:455: printstr("|\tor top 2\r\n");
      006478 7D 73            [12]10146 	mov	r5,#___str_43
      00647A 7E 8C            [12]10147 	mov	r6,#(___str_43 >> 8)
      00647C 7F 80            [12]10148 	mov	r7,#0x80
                                  10149 ;	calc.c:59: return;
      00647E                      10150 00230$:
                                  10151 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00647E 8D 82            [24]10152 	mov	dpl,r5
      006480 8E 83            [24]10153 	mov	dph,r6
      006482 8F F0            [24]10154 	mov	b,r7
      006484 12 70 E2         [24]10155 	lcall	__gptrget
      006487 FC               [12]10156 	mov	r4,a
      006488 60 10            [24]10157 	jz	00146$
      00648A 7B 00            [12]10158 	mov	r3,#0x00
      00648C 8C 82            [24]10159 	mov	dpl,r4
      00648E 8B 83            [24]10160 	mov	dph,r3
      006490 12 2B 70         [24]10161 	lcall	_putchar
      006493 0D               [12]10162 	inc	r5
                                  10163 ;	calc.c:455: printstr("|\tor top 2\r\n");
      006494 BD 00 E7         [24]10164 	cjne	r5,#0x00,00230$
      006497 0E               [12]10165 	inc	r6
      006498 80 E4            [24]10166 	sjmp	00230$
      00649A                      10167 00146$:
                                  10168 ;	calc.c:456: printstr("^\txor top 2\r\n");
      00649A 7D 80            [12]10169 	mov	r5,#___str_44
      00649C 7E 8C            [12]10170 	mov	r6,#(___str_44 >> 8)
      00649E 7F 80            [12]10171 	mov	r7,#0x80
                                  10172 ;	calc.c:59: return;
      0064A0                      10173 00233$:
                                  10174 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0064A0 8D 82            [24]10175 	mov	dpl,r5
      0064A2 8E 83            [24]10176 	mov	dph,r6
      0064A4 8F F0            [24]10177 	mov	b,r7
      0064A6 12 70 E2         [24]10178 	lcall	__gptrget
      0064A9 FC               [12]10179 	mov	r4,a
      0064AA 60 10            [24]10180 	jz	00148$
      0064AC 7B 00            [12]10181 	mov	r3,#0x00
      0064AE 8C 82            [24]10182 	mov	dpl,r4
      0064B0 8B 83            [24]10183 	mov	dph,r3
      0064B2 12 2B 70         [24]10184 	lcall	_putchar
      0064B5 0D               [12]10185 	inc	r5
                                  10186 ;	calc.c:456: printstr("^\txor top 2\r\n");
      0064B6 BD 00 E7         [24]10187 	cjne	r5,#0x00,00233$
      0064B9 0E               [12]10188 	inc	r6
      0064BA 80 E4            [24]10189 	sjmp	00233$
      0064BC                      10190 00148$:
                                  10191 ;	calc.c:457: printstr(">\tshift right top 2\r\n");
      0064BC 7D 8E            [12]10192 	mov	r5,#___str_45
      0064BE 7E 8C            [12]10193 	mov	r6,#(___str_45 >> 8)
      0064C0 7F 80            [12]10194 	mov	r7,#0x80
                                  10195 ;	calc.c:59: return;
      0064C2                      10196 00236$:
                                  10197 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0064C2 8D 82            [24]10198 	mov	dpl,r5
      0064C4 8E 83            [24]10199 	mov	dph,r6
      0064C6 8F F0            [24]10200 	mov	b,r7
      0064C8 12 70 E2         [24]10201 	lcall	__gptrget
      0064CB FC               [12]10202 	mov	r4,a
      0064CC 60 10            [24]10203 	jz	00150$
      0064CE 7B 00            [12]10204 	mov	r3,#0x00
      0064D0 8C 82            [24]10205 	mov	dpl,r4
      0064D2 8B 83            [24]10206 	mov	dph,r3
      0064D4 12 2B 70         [24]10207 	lcall	_putchar
      0064D7 0D               [12]10208 	inc	r5
                                  10209 ;	calc.c:457: printstr(">\tshift right top 2\r\n");
      0064D8 BD 00 E7         [24]10210 	cjne	r5,#0x00,00236$
      0064DB 0E               [12]10211 	inc	r6
      0064DC 80 E4            [24]10212 	sjmp	00236$
      0064DE                      10213 00150$:
                                  10214 ;	calc.c:458: printstr("]\tarithmetic shift right top 2\r\n");
      0064DE 7D A4            [12]10215 	mov	r5,#___str_46
      0064E0 7E 8C            [12]10216 	mov	r6,#(___str_46 >> 8)
      0064E2 7F 80            [12]10217 	mov	r7,#0x80
                                  10218 ;	calc.c:59: return;
      0064E4                      10219 00239$:
                                  10220 ;	calc.c:57: for (; *s; s++) putchar(*s);
      0064E4 8D 82            [24]10221 	mov	dpl,r5
      0064E6 8E 83            [24]10222 	mov	dph,r6
      0064E8 8F F0            [24]10223 	mov	b,r7
      0064EA 12 70 E2         [24]10224 	lcall	__gptrget
      0064ED FC               [12]10225 	mov	r4,a
      0064EE 60 10            [24]10226 	jz	00152$
      0064F0 7B 00            [12]10227 	mov	r3,#0x00
      0064F2 8C 82            [24]10228 	mov	dpl,r4
      0064F4 8B 83            [24]10229 	mov	dph,r3
      0064F6 12 2B 70         [24]10230 	lcall	_putchar
      0064F9 0D               [12]10231 	inc	r5
                                  10232 ;	calc.c:458: printstr("]\tarithmetic shift right top 2\r\n");
      0064FA BD 00 E7         [24]10233 	cjne	r5,#0x00,00239$
      0064FD 0E               [12]10234 	inc	r6
      0064FE 80 E4            [24]10235 	sjmp	00239$
      006500                      10236 00152$:
                                  10237 ;	calc.c:459: printstr("<\tshift left top 2\r\n");
      006500 7D C5            [12]10238 	mov	r5,#___str_47
      006502 7E 8C            [12]10239 	mov	r6,#(___str_47 >> 8)
      006504 7F 80            [12]10240 	mov	r7,#0x80
                                  10241 ;	calc.c:59: return;
      006506                      10242 00242$:
                                  10243 ;	calc.c:57: for (; *s; s++) putchar(*s);
      006506 8D 82            [24]10244 	mov	dpl,r5
      006508 8E 83            [24]10245 	mov	dph,r6
      00650A 8F F0            [24]10246 	mov	b,r7
      00650C 12 70 E2         [24]10247 	lcall	__gptrget
      00650F FC               [12]10248 	mov	r4,a
      006510 60 10            [24]10249 	jz	00154$
      006512 7B 00            [12]10250 	mov	r3,#0x00
      006514 8C 82            [24]10251 	mov	dpl,r4
      006516 8B 83            [24]10252 	mov	dph,r3
      006518 12 2B 70         [24]10253 	lcall	_putchar
      00651B 0D               [12]10254 	inc	r5
                                  10255 ;	calc.c:459: printstr("<\tshift left top 2\r\n");
      00651C BD 00 E7         [24]10256 	cjne	r5,#0x00,00242$
      00651F 0E               [12]10257 	inc	r6
      006520 80 E4            [24]10258 	sjmp	00242$
      006522                      10259 00154$:
                                  10260 ;	calc.c:460: printstr("~\tbitwise not top\r\n");
      006522 7D DA            [12]10261 	mov	r5,#___str_48
      006524 7E 8C            [12]10262 	mov	r6,#(___str_48 >> 8)
      006526 7F 80            [12]10263 	mov	r7,#0x80
                                  10264 ;	calc.c:59: return;
      006528                      10265 00245$:
                                  10266 ;	calc.c:57: for (; *s; s++) putchar(*s);
      006528 8D 82            [24]10267 	mov	dpl,r5
      00652A 8E 83            [24]10268 	mov	dph,r6
      00652C 8F F0            [24]10269 	mov	b,r7
      00652E 12 70 E2         [24]10270 	lcall	__gptrget
      006531 FC               [12]10271 	mov	r4,a
      006532 60 10            [24]10272 	jz	00156$
      006534 7B 00            [12]10273 	mov	r3,#0x00
      006536 8C 82            [24]10274 	mov	dpl,r4
      006538 8B 83            [24]10275 	mov	dph,r3
      00653A 12 2B 70         [24]10276 	lcall	_putchar
      00653D 0D               [12]10277 	inc	r5
                                  10278 ;	calc.c:460: printstr("~\tbitwise not top\r\n");
      00653E BD 00 E7         [24]10279 	cjne	r5,#0x00,00245$
      006541 0E               [12]10280 	inc	r6
      006542 80 E4            [24]10281 	sjmp	00245$
      006544                      10282 00156$:
                                  10283 ;	calc.c:461: printstr("s\tstatus\r\n");
      006544 7D EE            [12]10284 	mov	r5,#___str_49
      006546 7E 8C            [12]10285 	mov	r6,#(___str_49 >> 8)
      006548 7F 80            [12]10286 	mov	r7,#0x80
                                  10287 ;	calc.c:59: return;
      00654A                      10288 00248$:
                                  10289 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00654A 8D 82            [24]10290 	mov	dpl,r5
      00654C 8E 83            [24]10291 	mov	dph,r6
      00654E 8F F0            [24]10292 	mov	b,r7
      006550 12 70 E2         [24]10293 	lcall	__gptrget
      006553 FC               [12]10294 	mov	r4,a
      006554 60 10            [24]10295 	jz	00158$
      006556 7B 00            [12]10296 	mov	r3,#0x00
      006558 8C 82            [24]10297 	mov	dpl,r4
      00655A 8B 83            [24]10298 	mov	dph,r3
      00655C 12 2B 70         [24]10299 	lcall	_putchar
      00655F 0D               [12]10300 	inc	r5
                                  10301 ;	calc.c:461: printstr("s\tstatus\r\n");
      006560 BD 00 E7         [24]10302 	cjne	r5,#0x00,00248$
      006563 0E               [12]10303 	inc	r6
      006564 80 E4            [24]10304 	sjmp	00248$
      006566                      10305 00158$:
                                  10306 ;	calc.c:462: printstr("?\thelp\r\n");
      006566 7D F9            [12]10307 	mov	r5,#___str_50
      006568 7E 8C            [12]10308 	mov	r6,#(___str_50 >> 8)
      00656A 7F 80            [12]10309 	mov	r7,#0x80
                                  10310 ;	calc.c:59: return;
      00656C                      10311 00251$:
                                  10312 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00656C 8D 82            [24]10313 	mov	dpl,r5
      00656E 8E 83            [24]10314 	mov	dph,r6
      006570 8F F0            [24]10315 	mov	b,r7
      006572 12 70 E2         [24]10316 	lcall	__gptrget
      006575 FC               [12]10317 	mov	r4,a
      006576 60 10            [24]10318 	jz	00160$
      006578 7B 00            [12]10319 	mov	r3,#0x00
      00657A 8C 82            [24]10320 	mov	dpl,r4
      00657C 8B 83            [24]10321 	mov	dph,r3
      00657E 12 2B 70         [24]10322 	lcall	_putchar
      006581 0D               [12]10323 	inc	r5
                                  10324 ;	calc.c:462: printstr("?\thelp\r\n");
      006582 BD 00 E7         [24]10325 	cjne	r5,#0x00,00251$
      006585 0E               [12]10326 	inc	r6
      006586 80 E4            [24]10327 	sjmp	00251$
      006588                      10328 00160$:
                                  10329 ;	calc.c:463: printstr("q\tquit\r\n");
      006588 7D 02            [12]10330 	mov	r5,#___str_51
      00658A 7E 8D            [12]10331 	mov	r6,#(___str_51 >> 8)
      00658C 7F 80            [12]10332 	mov	r7,#0x80
                                  10333 ;	calc.c:59: return;
      00658E                      10334 00254$:
                                  10335 ;	calc.c:57: for (; *s; s++) putchar(*s);
      00658E 8D 82            [24]10336 	mov	dpl,r5
      006590 8E 83            [24]10337 	mov	dph,r6
      006592 8F F0            [24]10338 	mov	b,r7
      006594 12 70 E2         [24]10339 	lcall	__gptrget
      006597 FC               [12]10340 	mov	r4,a
      006598 60 10            [24]10341 	jz	00162$
      00659A 7B 00            [12]10342 	mov	r3,#0x00
      00659C 8C 82            [24]10343 	mov	dpl,r4
      00659E 8B 83            [24]10344 	mov	dph,r3
      0065A0 12 2B 70         [24]10345 	lcall	_putchar
      0065A3 0D               [12]10346 	inc	r5
                                  10347 ;	calc.c:463: printstr("q\tquit\r\n");
      0065A4 BD 00 E7         [24]10348 	cjne	r5,#0x00,00254$
      0065A7 0E               [12]10349 	inc	r6
      0065A8 80 E4            [24]10350 	sjmp	00254$
      0065AA                      10351 00162$:
                                  10352 ;	calc.c:465: return 1;
      0065AA 90 00 01         [24]10353 	mov	dptr,#0x0001
                                  10354 ;	calc.c:466: }
      0065AD D0 08            [24]10355 	pop	_bp
      0065AF 22               [24]10356 	ret
                                  10357 ;------------------------------------------------------------
                                  10358 ;Allocation info for local variables in function 'main'
                                  10359 ;------------------------------------------------------------
                                  10360 ;input                     Allocated to registers r6 r7 
                                  10361 ;__1966080213              Allocated to registers 
                                  10362 ;s                         Allocated to registers r2 r3 r4 
                                  10363 ;__1310720215              Allocated to registers 
                                  10364 ;s                         Allocated to registers r5 r6 r7 
                                  10365 ;sloc0                     Allocated to stack - _bp +1
                                  10366 ;------------------------------------------------------------
                                  10367 ;	calc.c:496: void main(void) {
                                  10368 ;	-----------------------------------------
                                  10369 ;	 function main
                                  10370 ;	-----------------------------------------
      0065B0                      10371 _main:
      0065B0 C0 08            [24]10372 	push	_bp
      0065B2 85 81 08         [24]10373 	mov	_bp,sp
      0065B5 05 81            [12]10374 	inc	sp
                                  10375 ;	calc.c:499: giant = 0;
      0065B7 78 09            [12]10376 	mov	r0,#_giant
      0065B9 76 00            [12]10377 	mov	@r0,#0x00
                                  10378 ;	calc.c:501: c.base = 10;
      0065BB 90 90 0C         [24]10379 	mov	dptr,#_c
      0065BE 74 0A            [12]10380 	mov	a,#0x0a
      0065C0 F0               [24]10381 	movx	@dptr,a
      0065C1 E4               [12]10382 	clr	a
      0065C2 A3               [24]10383 	inc	dptr
      0065C3 F0               [24]10384 	movx	@dptr,a
                                  10385 ;	calc.c:502: c.acc = 0l;
      0065C4 90 90 0E         [24]10386 	mov	dptr,#(_c + 0x0002)
      0065C7 F0               [24]10387 	movx	@dptr,a
      0065C8 A3               [24]10388 	inc	dptr
      0065C9 F0               [24]10389 	movx	@dptr,a
      0065CA A3               [24]10390 	inc	dptr
      0065CB F0               [24]10391 	movx	@dptr,a
      0065CC A3               [24]10392 	inc	dptr
      0065CD F0               [24]10393 	movx	@dptr,a
                                  10394 ;	calc.c:503: c.acc_valid = (char)0;
      0065CE 90 90 12         [24]10395 	mov	dptr,#(_c + 0x0006)
      0065D1 F0               [24]10396 	movx	@dptr,a
                                  10397 ;	calc.c:504: c.digit[0] = c.digit[1] = '\0';
      0065D2 90 90 14         [24]10398 	mov	dptr,#(_c + 0x0008)
      0065D5 F0               [24]10399 	movx	@dptr,a
      0065D6 90 90 13         [24]10400 	mov	dptr,#(_c + 0x0007)
      0065D9 F0               [24]10401 	movx	@dptr,a
                                  10402 ;	calc.c:506: c.ps = &c.s0;
      0065DA 90 D0 1D         [24]10403 	mov	dptr,#(_c + 0x4011)
      0065DD 74 15            [12]10404 	mov	a,#(_c + 0x0009)
      0065DF F0               [24]10405 	movx	@dptr,a
      0065E0 74 90            [12]10406 	mov	a,#((_c + 0x0009) >> 8)
      0065E2 A3               [24]10407 	inc	dptr
      0065E3 F0               [24]10408 	movx	@dptr,a
      0065E4 E4               [12]10409 	clr	a
      0065E5 A3               [24]10410 	inc	dptr
      0065E6 F0               [24]10411 	movx	@dptr,a
                                  10412 ;	calc.c:507: c.ss = &c.s1;
      0065E7 90 D0 20         [24]10413 	mov	dptr,#(_c + 0x4014)
      0065EA 74 19            [12]10414 	mov	a,#(_c + 0x200d)
      0065EC F0               [24]10415 	movx	@dptr,a
      0065ED 74 B0            [12]10416 	mov	a,#((_c + 0x200d) >> 8)
      0065EF A3               [24]10417 	inc	dptr
      0065F0 F0               [24]10418 	movx	@dptr,a
      0065F1 E4               [12]10419 	clr	a
      0065F2 A3               [24]10420 	inc	dptr
      0065F3 F0               [24]10421 	movx	@dptr,a
                                  10422 ;	calc.c:508: stack_init(c.ps);
      0065F4 90 90 15         [24]10423 	mov	dptr,#(_c + 0x0009)
      0065F7 75 F0 00         [24]10424 	mov	b,#0x00
      0065FA 12 26 80         [24]10425 	lcall	_stack_init
                                  10426 ;	calc.c:509: stack_init(c.ss);
      0065FD 90 D0 20         [24]10427 	mov	dptr,#(_c + 0x4014)
      006600 E0               [24]10428 	movx	a,@dptr
      006601 FD               [12]10429 	mov	r5,a
      006602 A3               [24]10430 	inc	dptr
      006603 E0               [24]10431 	movx	a,@dptr
      006604 FE               [12]10432 	mov	r6,a
      006605 A3               [24]10433 	inc	dptr
      006606 E0               [24]10434 	movx	a,@dptr
      006607 FF               [12]10435 	mov	r7,a
      006608 8D 82            [24]10436 	mov	dpl,r5
      00660A 8E 83            [24]10437 	mov	dph,r6
      00660C 8F F0            [24]10438 	mov	b,r7
      00660E 12 26 80         [24]10439 	lcall	_stack_init
                                  10440 ;	calc.c:511: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      006611 74 0C            [12]10441 	mov	a,#_c
      006613 C0 E0            [24]10442 	push	acc
      006615 74 90            [12]10443 	mov	a,#(_c >> 8)
      006617 C0 E0            [24]10444 	push	acc
      006619 E4               [12]10445 	clr	a
      00661A C0 E0            [24]10446 	push	acc
      00661C 74 25            [12]10447 	mov	a,#_deltas
      00661E C0 E0            [24]10448 	push	acc
      006620 74 D0            [12]10449 	mov	a,#(_deltas >> 8)
      006622 C0 E0            [24]10450 	push	acc
      006624 E4               [12]10451 	clr	a
      006625 C0 E0            [24]10452 	push	acc
      006627 C0 E0            [24]10453 	push	acc
      006629 74 80            [12]10454 	mov	a,#0x80
      00662B C0 E0            [24]10455 	push	acc
      00662D 74 03            [12]10456 	mov	a,#0x03
      00662F C0 E0            [24]10457 	push	acc
      006631 E4               [12]10458 	clr	a
      006632 C0 E0            [24]10459 	push	acc
      006634 C0 E0            [24]10460 	push	acc
      006636 C0 E0            [24]10461 	push	acc
      006638 90 90 00         [24]10462 	mov	dptr,#_s
      00663B 75 F0 00         [24]10463 	mov	b,#0x00
      00663E 12 20 90         [24]10464 	lcall	_state_init
      006641 E5 81            [12]10465 	mov	a,sp
      006643 24 F4            [12]10466 	add	a,#0xf4
      006645 F5 81            [12]10467 	mov	sp,a
                                  10468 ;	calc.c:513: (void)status(&c, deltas);
      006647 74 25            [12]10469 	mov	a,#_deltas
      006649 C0 E0            [24]10470 	push	acc
      00664B 74 D0            [12]10471 	mov	a,#(_deltas >> 8)
      00664D C0 E0            [24]10472 	push	acc
      00664F E4               [12]10473 	clr	a
      006650 C0 E0            [24]10474 	push	acc
      006652 90 90 0C         [24]10475 	mov	dptr,#_c
      006655 75 F0 00         [24]10476 	mov	b,#0x00
      006658 12 59 28         [24]10477 	lcall	_status
      00665B 15 81            [12]10478 	dec	sp
      00665D 15 81            [12]10479 	dec	sp
      00665F 15 81            [12]10480 	dec	sp
                                  10481 ;	calc.c:515: while (1) {
      006661                      10482 00192$:
                                  10483 ;	calc.c:516: input = getchar();
      006661 12 2B 7A         [24]10484 	lcall	_getchar
      006664 AE 82            [24]10485 	mov	r6,dpl
      006666 AF 83            [24]10486 	mov	r7,dph
                                  10487 ;	calc.c:517: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      006668 8E 05            [24]10488 	mov	ar5,r6
      00666A BD 0D 02         [24]10489 	cjne	r5,#0x0d,00400$
      00666D 80 03            [24]10490 	sjmp	00101$
      00666F                      10491 00400$:
      00666F BD 0A 36         [24]10492 	cjne	r5,#0x0a,00102$
      006672                      10493 00101$:
      006672 7A 7A            [12]10494 	mov	r2,#___str_3
      006674 7B 89            [12]10495 	mov	r3,#(___str_3 >> 8)
      006676 7C 80            [12]10496 	mov	r4,#0x80
                                  10497 ;	calc.c:59: return;
      006678                      10498 00199$:
                                  10499 ;	calc.c:57: for (; *s; s++) putchar(*s);
      006678 8A 82            [24]10500 	mov	dpl,r2
      00667A 8B 83            [24]10501 	mov	dph,r3
      00667C 8C F0            [24]10502 	mov	b,r4
      00667E A8 08            [24]10503 	mov	r0,_bp
      006680 08               [12]10504 	inc	r0
      006681 12 70 E2         [24]10505 	lcall	__gptrget
      006684 F6               [12]10506 	mov	@r0,a
      006685 A8 08            [24]10507 	mov	r0,_bp
      006687 08               [12]10508 	inc	r0
      006688 E6               [12]10509 	mov	a,@r0
      006689 60 24            [24]10510 	jz	00103$
      00668B C0 06            [24]10511 	push	ar6
      00668D C0 07            [24]10512 	push	ar7
      00668F A8 08            [24]10513 	mov	r0,_bp
      006691 08               [12]10514 	inc	r0
      006692 86 06            [24]10515 	mov	ar6,@r0
      006694 7F 00            [12]10516 	mov	r7,#0x00
      006696 8E 82            [24]10517 	mov	dpl,r6
      006698 8F 83            [24]10518 	mov	dph,r7
      00669A 12 2B 70         [24]10519 	lcall	_putchar
      00669D 0A               [12]10520 	inc	r2
      00669E BA 00 01         [24]10521 	cjne	r2,#0x00,00404$
      0066A1 0B               [12]10522 	inc	r3
      0066A2                      10523 00404$:
      0066A2 D0 07            [24]10524 	pop	ar7
      0066A4 D0 06            [24]10525 	pop	ar6
                                  10526 ;	calc.c:517: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      0066A6 80 D0            [24]10527 	sjmp	00199$
      0066A8                      10528 00102$:
                                  10529 ;	calc.c:518: else (void)putchar(input);
      0066A8 8E 82            [24]10530 	mov	dpl,r6
      0066AA 8F 83            [24]10531 	mov	dph,r7
      0066AC 12 2B 70         [24]10532 	lcall	_putchar
      0066AF                      10533 00103$:
                                  10534 ;	calc.c:519: c.digit[0] = (char)input;
      0066AF 90 90 13         [24]10535 	mov	dptr,#(_c + 0x0007)
      0066B2 ED               [12]10536 	mov	a,r5
      0066B3 F0               [24]10537 	movx	@dptr,a
                                  10538 ;	calc.c:521: if ((char)input == 'q') {
      0066B4 BD 71 29         [24]10539 	cjne	r5,#0x71,00189$
                                  10540 ;	calc.c:522: if (state_exec(&s, EVENT_TERM) <= 0) break;
      0066B7 74 08            [12]10541 	mov	a,#0x08
      0066B9 C0 E0            [24]10542 	push	acc
      0066BB E4               [12]10543 	clr	a
      0066BC C0 E0            [24]10544 	push	acc
      0066BE 90 90 00         [24]10545 	mov	dptr,#_s
      0066C1 75 F0 00         [24]10546 	mov	b,#0x00
      0066C4 12 21 46         [24]10547 	lcall	_state_exec
      0066C7 AB 82            [24]10548 	mov	r3,dpl
      0066C9 AC 83            [24]10549 	mov	r4,dph
      0066CB 15 81            [12]10550 	dec	sp
      0066CD 15 81            [12]10551 	dec	sp
      0066CF C3               [12]10552 	clr	c
      0066D0 E4               [12]10553 	clr	a
      0066D1 9B               [12]10554 	subb	a,r3
      0066D2 74 80            [12]10555 	mov	a,#(0x00 ^ 0x80)
      0066D4 8C F0            [24]10556 	mov	b,r4
      0066D6 63 F0 80         [24]10557 	xrl	b,#0x80
      0066D9 95 F0            [12]10558 	subb	a,b
      0066DB 40 84            [24]10559 	jc	00192$
      0066DD 02 69 8F         [24]10560 	ljmp	00193$
      0066E0                      10561 00189$:
                                  10562 ;	calc.c:523: } else if ((char)input == 's') {
      0066E0 BD 73 2C         [24]10563 	cjne	r5,#0x73,00186$
                                  10564 ;	calc.c:524: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      0066E3 74 03            [12]10565 	mov	a,#0x03
      0066E5 C0 E0            [24]10566 	push	acc
      0066E7 E4               [12]10567 	clr	a
      0066E8 C0 E0            [24]10568 	push	acc
      0066EA 90 90 00         [24]10569 	mov	dptr,#_s
      0066ED 75 F0 00         [24]10570 	mov	b,#0x00
      0066F0 12 21 46         [24]10571 	lcall	_state_exec
      0066F3 AB 82            [24]10572 	mov	r3,dpl
      0066F5 AC 83            [24]10573 	mov	r4,dph
      0066F7 15 81            [12]10574 	dec	sp
      0066F9 15 81            [12]10575 	dec	sp
      0066FB C3               [12]10576 	clr	c
      0066FC E4               [12]10577 	clr	a
      0066FD 9B               [12]10578 	subb	a,r3
      0066FE 74 80            [12]10579 	mov	a,#(0x00 ^ 0x80)
      006700 8C F0            [24]10580 	mov	b,r4
      006702 63 F0 80         [24]10581 	xrl	b,#0x80
      006705 95 F0            [12]10582 	subb	a,b
      006707 50 03            [24]10583 	jnc	00410$
      006709 02 66 61         [24]10584 	ljmp	00192$
      00670C                      10585 00410$:
      00670C 02 69 8F         [24]10586 	ljmp	00193$
      00670F                      10587 00186$:
                                  10588 ;	calc.c:525: } else if ((char)input == '?') {
      00670F BD 3F 2C         [24]10589 	cjne	r5,#0x3f,00183$
                                  10590 ;	calc.c:526: if (state_exec(&s, EVENT_HELP) <= 0) break;
      006712 74 04            [12]10591 	mov	a,#0x04
      006714 C0 E0            [24]10592 	push	acc
      006716 E4               [12]10593 	clr	a
      006717 C0 E0            [24]10594 	push	acc
      006719 90 90 00         [24]10595 	mov	dptr,#_s
      00671C 75 F0 00         [24]10596 	mov	b,#0x00
      00671F 12 21 46         [24]10597 	lcall	_state_exec
      006722 AB 82            [24]10598 	mov	r3,dpl
      006724 AC 83            [24]10599 	mov	r4,dph
      006726 15 81            [12]10600 	dec	sp
      006728 15 81            [12]10601 	dec	sp
      00672A C3               [12]10602 	clr	c
      00672B E4               [12]10603 	clr	a
      00672C 9B               [12]10604 	subb	a,r3
      00672D 74 80            [12]10605 	mov	a,#(0x00 ^ 0x80)
      00672F 8C F0            [24]10606 	mov	b,r4
      006731 63 F0 80         [24]10607 	xrl	b,#0x80
      006734 95 F0            [12]10608 	subb	a,b
      006736 50 03            [24]10609 	jnc	00413$
      006738 02 66 61         [24]10610 	ljmp	00192$
      00673B                      10611 00413$:
      00673B 02 69 8F         [24]10612 	ljmp	00193$
      00673E                      10613 00183$:
                                  10614 ;	calc.c:527: } else if ((char)input == 'i') {
      00673E BD 69 2C         [24]10615 	cjne	r5,#0x69,00180$
                                  10616 ;	calc.c:528: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      006741 74 06            [12]10617 	mov	a,#0x06
      006743 C0 E0            [24]10618 	push	acc
      006745 E4               [12]10619 	clr	a
      006746 C0 E0            [24]10620 	push	acc
      006748 90 90 00         [24]10621 	mov	dptr,#_s
      00674B 75 F0 00         [24]10622 	mov	b,#0x00
      00674E 12 21 46         [24]10623 	lcall	_state_exec
      006751 AB 82            [24]10624 	mov	r3,dpl
      006753 AC 83            [24]10625 	mov	r4,dph
      006755 15 81            [12]10626 	dec	sp
      006757 15 81            [12]10627 	dec	sp
      006759 C3               [12]10628 	clr	c
      00675A E4               [12]10629 	clr	a
      00675B 9B               [12]10630 	subb	a,r3
      00675C 74 80            [12]10631 	mov	a,#(0x00 ^ 0x80)
      00675E 8C F0            [24]10632 	mov	b,r4
      006760 63 F0 80         [24]10633 	xrl	b,#0x80
      006763 95 F0            [12]10634 	subb	a,b
      006765 50 03            [24]10635 	jnc	00416$
      006767 02 66 61         [24]10636 	ljmp	00192$
      00676A                      10637 00416$:
      00676A 02 69 8F         [24]10638 	ljmp	00193$
      00676D                      10639 00180$:
                                  10640 ;	calc.c:529: } else if ((char)input == 'I') {
      00676D BD 49 2C         [24]10641 	cjne	r5,#0x49,00177$
                                  10642 ;	calc.c:530: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      006770 74 07            [12]10643 	mov	a,#0x07
      006772 C0 E0            [24]10644 	push	acc
      006774 E4               [12]10645 	clr	a
      006775 C0 E0            [24]10646 	push	acc
      006777 90 90 00         [24]10647 	mov	dptr,#_s
      00677A 75 F0 00         [24]10648 	mov	b,#0x00
      00677D 12 21 46         [24]10649 	lcall	_state_exec
      006780 AB 82            [24]10650 	mov	r3,dpl
      006782 AC 83            [24]10651 	mov	r4,dph
      006784 15 81            [12]10652 	dec	sp
      006786 15 81            [12]10653 	dec	sp
      006788 C3               [12]10654 	clr	c
      006789 E4               [12]10655 	clr	a
      00678A 9B               [12]10656 	subb	a,r3
      00678B 74 80            [12]10657 	mov	a,#(0x00 ^ 0x80)
      00678D 8C F0            [24]10658 	mov	b,r4
      00678F 63 F0 80         [24]10659 	xrl	b,#0x80
      006792 95 F0            [12]10660 	subb	a,b
      006794 50 03            [24]10661 	jnc	00419$
      006796 02 66 61         [24]10662 	ljmp	00192$
      006799                      10663 00419$:
      006799 02 69 8F         [24]10664 	ljmp	00193$
      00679C                      10665 00177$:
                                  10666 ;	calc.c:532: ((char)input == 'h') || ((char)input == 'H') ||
      00679C BD 68 02         [24]10667 	cjne	r5,#0x68,00420$
      00679F 80 0D            [24]10668 	sjmp	00170$
      0067A1                      10669 00420$:
      0067A1 BD 48 02         [24]10670 	cjne	r5,#0x48,00421$
      0067A4 80 08            [24]10671 	sjmp	00170$
      0067A6                      10672 00421$:
                                  10673 ;	calc.c:533: ((char)input == 'o') || ((char)input == 'O')
      0067A6 BD 6F 02         [24]10674 	cjne	r5,#0x6f,00422$
      0067A9 80 03            [24]10675 	sjmp	00170$
      0067AB                      10676 00422$:
      0067AB BD 4F 2C         [24]10677 	cjne	r5,#0x4f,00171$
      0067AE                      10678 00170$:
                                  10679 ;	calc.c:535: if (state_exec(&s, EVENT_BASE) <= 0) break;
      0067AE 74 05            [12]10680 	mov	a,#0x05
      0067B0 C0 E0            [24]10681 	push	acc
      0067B2 E4               [12]10682 	clr	a
      0067B3 C0 E0            [24]10683 	push	acc
      0067B5 90 90 00         [24]10684 	mov	dptr,#_s
      0067B8 75 F0 00         [24]10685 	mov	b,#0x00
      0067BB 12 21 46         [24]10686 	lcall	_state_exec
      0067BE AB 82            [24]10687 	mov	r3,dpl
      0067C0 AC 83            [24]10688 	mov	r4,dph
      0067C2 15 81            [12]10689 	dec	sp
      0067C4 15 81            [12]10690 	dec	sp
      0067C6 C3               [12]10691 	clr	c
      0067C7 E4               [12]10692 	clr	a
      0067C8 9B               [12]10693 	subb	a,r3
      0067C9 74 80            [12]10694 	mov	a,#(0x00 ^ 0x80)
      0067CB 8C F0            [24]10695 	mov	b,r4
      0067CD 63 F0 80         [24]10696 	xrl	b,#0x80
      0067D0 95 F0            [12]10697 	subb	a,b
      0067D2 50 03            [24]10698 	jnc	00425$
      0067D4 02 66 61         [24]10699 	ljmp	00192$
      0067D7                      10700 00425$:
      0067D7 02 69 8F         [24]10701 	ljmp	00193$
      0067DA                      10702 00171$:
                                  10703 ;	calc.c:536: } else if (isxdigit(input)) {
      0067DA 8E 82            [24]10704 	mov	dpl,r6
      0067DC 8F 83            [24]10705 	mov	dph,r7
      0067DE C0 05            [24]10706 	push	ar5
      0067E0 12 69 B9         [24]10707 	lcall	_isxdigit
      0067E3 E5 82            [12]10708 	mov	a,dpl
      0067E5 85 83 F0         [24]10709 	mov	b,dph
      0067E8 D0 05            [24]10710 	pop	ar5
      0067EA 45 F0            [12]10711 	orl	a,b
      0067EC 60 2C            [24]10712 	jz	00168$
                                  10713 ;	calc.c:537: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      0067EE 74 01            [12]10714 	mov	a,#0x01
      0067F0 C0 E0            [24]10715 	push	acc
      0067F2 E4               [12]10716 	clr	a
      0067F3 C0 E0            [24]10717 	push	acc
      0067F5 90 90 00         [24]10718 	mov	dptr,#_s
      0067F8 75 F0 00         [24]10719 	mov	b,#0x00
      0067FB 12 21 46         [24]10720 	lcall	_state_exec
      0067FE AE 82            [24]10721 	mov	r6,dpl
      006800 AF 83            [24]10722 	mov	r7,dph
      006802 15 81            [12]10723 	dec	sp
      006804 15 81            [12]10724 	dec	sp
      006806 C3               [12]10725 	clr	c
      006807 E4               [12]10726 	clr	a
      006808 9E               [12]10727 	subb	a,r6
      006809 74 80            [12]10728 	mov	a,#(0x00 ^ 0x80)
      00680B 8F F0            [24]10729 	mov	b,r7
      00680D 63 F0 80         [24]10730 	xrl	b,#0x80
      006810 95 F0            [12]10731 	subb	a,b
      006812 50 03            [24]10732 	jnc	00427$
      006814 02 66 61         [24]10733 	ljmp	00192$
      006817                      10734 00427$:
      006817 02 69 8F         [24]10735 	ljmp	00193$
      00681A                      10736 00168$:
                                  10737 ;	calc.c:539: ((char)input == 'p') || ((char)input == 'P') ||
      00681A BD 70 02         [24]10738 	cjne	r5,#0x70,00428$
      00681D 80 17            [24]10739 	sjmp	00159$
      00681F                      10740 00428$:
      00681F BD 50 02         [24]10741 	cjne	r5,#0x50,00429$
      006822 80 12            [24]10742 	sjmp	00159$
      006824                      10743 00429$:
                                  10744 ;	calc.c:540: ((char)input == 'v') || ((char)input == 'V') ||
      006824 BD 76 02         [24]10745 	cjne	r5,#0x76,00430$
      006827 80 0D            [24]10746 	sjmp	00159$
      006829                      10747 00430$:
      006829 BD 56 02         [24]10748 	cjne	r5,#0x56,00431$
      00682C 80 08            [24]10749 	sjmp	00159$
      00682E                      10750 00431$:
                                  10751 ;	calc.c:541: ((char)input == '.') ||
      00682E BD 2E 02         [24]10752 	cjne	r5,#0x2e,00432$
      006831 80 03            [24]10753 	sjmp	00159$
      006833                      10754 00432$:
                                  10755 ;	calc.c:542: ((char)input == 'x')
      006833 BD 78 2C         [24]10756 	cjne	r5,#0x78,00160$
      006836                      10757 00159$:
                                  10758 ;	calc.c:544: if (state_exec(&s, EVENT_OP) <= 0) break;
      006836 74 02            [12]10759 	mov	a,#0x02
      006838 C0 E0            [24]10760 	push	acc
      00683A E4               [12]10761 	clr	a
      00683B C0 E0            [24]10762 	push	acc
      00683D 90 90 00         [24]10763 	mov	dptr,#_s
      006840 75 F0 00         [24]10764 	mov	b,#0x00
      006843 12 21 46         [24]10765 	lcall	_state_exec
      006846 AE 82            [24]10766 	mov	r6,dpl
      006848 AF 83            [24]10767 	mov	r7,dph
      00684A 15 81            [12]10768 	dec	sp
      00684C 15 81            [12]10769 	dec	sp
      00684E C3               [12]10770 	clr	c
      00684F E4               [12]10771 	clr	a
      006850 9E               [12]10772 	subb	a,r6
      006851 74 80            [12]10773 	mov	a,#(0x00 ^ 0x80)
      006853 8F F0            [24]10774 	mov	b,r7
      006855 63 F0 80         [24]10775 	xrl	b,#0x80
      006858 95 F0            [12]10776 	subb	a,b
      00685A 50 03            [24]10777 	jnc	00435$
      00685C 02 66 61         [24]10778 	ljmp	00192$
      00685F                      10779 00435$:
      00685F 02 69 8F         [24]10780 	ljmp	00193$
      006862                      10781 00160$:
                                  10782 ;	calc.c:546: ((char)input == 'X') || ((char)input == 'T') ||
      006862 BD 58 02         [24]10783 	cjne	r5,#0x58,00436$
      006865 80 17            [24]10784 	sjmp	00151$
      006867                      10785 00436$:
      006867 BD 54 02         [24]10786 	cjne	r5,#0x54,00437$
      00686A 80 12            [24]10787 	sjmp	00151$
      00686C                      10788 00437$:
                                  10789 ;	calc.c:547: ((char)input == 'm') || ((char)input == 'M') ||
      00686C BD 6D 02         [24]10790 	cjne	r5,#0x6d,00438$
      00686F 80 0D            [24]10791 	sjmp	00151$
      006871                      10792 00438$:
      006871 BD 4D 02         [24]10793 	cjne	r5,#0x4d,00439$
      006874 80 08            [24]10794 	sjmp	00151$
      006876                      10795 00439$:
                                  10796 ;	calc.c:548: ((char)input == 'u') || ((char)input == 'U')
      006876 BD 75 02         [24]10797 	cjne	r5,#0x75,00440$
      006879 80 03            [24]10798 	sjmp	00151$
      00687B                      10799 00440$:
      00687B BD 55 2C         [24]10800 	cjne	r5,#0x55,00152$
      00687E                      10801 00151$:
                                  10802 ;	calc.c:550: if (state_exec(&s, EVENT_OP) <= 0) break;
      00687E 74 02            [12]10803 	mov	a,#0x02
      006880 C0 E0            [24]10804 	push	acc
      006882 E4               [12]10805 	clr	a
      006883 C0 E0            [24]10806 	push	acc
      006885 90 90 00         [24]10807 	mov	dptr,#_s
      006888 75 F0 00         [24]10808 	mov	b,#0x00
      00688B 12 21 46         [24]10809 	lcall	_state_exec
      00688E AE 82            [24]10810 	mov	r6,dpl
      006890 AF 83            [24]10811 	mov	r7,dph
      006892 15 81            [12]10812 	dec	sp
      006894 15 81            [12]10813 	dec	sp
      006896 C3               [12]10814 	clr	c
      006897 E4               [12]10815 	clr	a
      006898 9E               [12]10816 	subb	a,r6
      006899 74 80            [12]10817 	mov	a,#(0x00 ^ 0x80)
      00689B 8F F0            [24]10818 	mov	b,r7
      00689D 63 F0 80         [24]10819 	xrl	b,#0x80
      0068A0 95 F0            [12]10820 	subb	a,b
      0068A2 50 03            [24]10821 	jnc	00443$
      0068A4 02 66 61         [24]10822 	ljmp	00192$
      0068A7                      10823 00443$:
      0068A7 02 69 8F         [24]10824 	ljmp	00193$
      0068AA                      10825 00152$:
                                  10826 ;	calc.c:552: ((char)input == '+') || ((char)input == '-')
      0068AA BD 2B 02         [24]10827 	cjne	r5,#0x2b,00444$
      0068AD 80 03            [24]10828 	sjmp	00147$
      0068AF                      10829 00444$:
      0068AF BD 2D 2C         [24]10830 	cjne	r5,#0x2d,00148$
      0068B2                      10831 00147$:
                                  10832 ;	calc.c:554: if (state_exec(&s, EVENT_OP) <= 0) break;
      0068B2 74 02            [12]10833 	mov	a,#0x02
      0068B4 C0 E0            [24]10834 	push	acc
      0068B6 E4               [12]10835 	clr	a
      0068B7 C0 E0            [24]10836 	push	acc
      0068B9 90 90 00         [24]10837 	mov	dptr,#_s
      0068BC 75 F0 00         [24]10838 	mov	b,#0x00
      0068BF 12 21 46         [24]10839 	lcall	_state_exec
      0068C2 AE 82            [24]10840 	mov	r6,dpl
      0068C4 AF 83            [24]10841 	mov	r7,dph
      0068C6 15 81            [12]10842 	dec	sp
      0068C8 15 81            [12]10843 	dec	sp
      0068CA C3               [12]10844 	clr	c
      0068CB E4               [12]10845 	clr	a
      0068CC 9E               [12]10846 	subb	a,r6
      0068CD 74 80            [12]10847 	mov	a,#(0x00 ^ 0x80)
      0068CF 8F F0            [24]10848 	mov	b,r7
      0068D1 63 F0 80         [24]10849 	xrl	b,#0x80
      0068D4 95 F0            [12]10850 	subb	a,b
      0068D6 50 03            [24]10851 	jnc	00447$
      0068D8 02 66 61         [24]10852 	ljmp	00192$
      0068DB                      10853 00447$:
      0068DB 02 69 8F         [24]10854 	ljmp	00193$
      0068DE                      10855 00148$:
                                  10856 ;	calc.c:556: ((char)input == '*') ||
      0068DE BD 2A 02         [24]10857 	cjne	r5,#0x2a,00448$
      0068E1 80 12            [24]10858 	sjmp	00140$
      0068E3                      10859 00448$:
                                  10860 ;	calc.c:557: ((char)input == '/') || ((char)input == '\\') ||
      0068E3 BD 2F 02         [24]10861 	cjne	r5,#0x2f,00449$
      0068E6 80 0D            [24]10862 	sjmp	00140$
      0068E8                      10863 00449$:
      0068E8 BD 5C 02         [24]10864 	cjne	r5,#0x5c,00450$
      0068EB 80 08            [24]10865 	sjmp	00140$
      0068ED                      10866 00450$:
                                  10867 ;	calc.c:558: ((char)input == '%') || ((char)input == '#')
      0068ED BD 25 02         [24]10868 	cjne	r5,#0x25,00451$
      0068F0 80 03            [24]10869 	sjmp	00140$
      0068F2                      10870 00451$:
      0068F2 BD 23 29         [24]10871 	cjne	r5,#0x23,00141$
      0068F5                      10872 00140$:
                                  10873 ;	calc.c:560: if (state_exec(&s, EVENT_OP) <= 0) break;
      0068F5 74 02            [12]10874 	mov	a,#0x02
      0068F7 C0 E0            [24]10875 	push	acc
      0068F9 E4               [12]10876 	clr	a
      0068FA C0 E0            [24]10877 	push	acc
      0068FC 90 90 00         [24]10878 	mov	dptr,#_s
      0068FF 75 F0 00         [24]10879 	mov	b,#0x00
      006902 12 21 46         [24]10880 	lcall	_state_exec
      006905 AE 82            [24]10881 	mov	r6,dpl
      006907 AF 83            [24]10882 	mov	r7,dph
      006909 15 81            [12]10883 	dec	sp
      00690B 15 81            [12]10884 	dec	sp
      00690D C3               [12]10885 	clr	c
      00690E E4               [12]10886 	clr	a
      00690F 9E               [12]10887 	subb	a,r6
      006910 74 80            [12]10888 	mov	a,#(0x00 ^ 0x80)
      006912 8F F0            [24]10889 	mov	b,r7
      006914 63 F0 80         [24]10890 	xrl	b,#0x80
      006917 95 F0            [12]10891 	subb	a,b
      006919 50 74            [24]10892 	jnc	00193$
      00691B 02 66 61         [24]10893 	ljmp	00192$
      00691E                      10894 00141$:
                                  10895 ;	calc.c:562: ((char)input == '&') ||
      00691E BD 26 02         [24]10896 	cjne	r5,#0x26,00455$
      006921 80 1C            [24]10897 	sjmp	00131$
      006923                      10898 00455$:
                                  10899 ;	calc.c:563: ((char)input == '|') || ((char)input == '^') ||
      006923 BD 7C 02         [24]10900 	cjne	r5,#0x7c,00456$
      006926 80 17            [24]10901 	sjmp	00131$
      006928                      10902 00456$:
      006928 BD 5E 02         [24]10903 	cjne	r5,#0x5e,00457$
      00692B 80 12            [24]10904 	sjmp	00131$
      00692D                      10905 00457$:
                                  10906 ;	calc.c:564: ((char)input == '~') ||
      00692D BD 7E 02         [24]10907 	cjne	r5,#0x7e,00458$
      006930 80 0D            [24]10908 	sjmp	00131$
      006932                      10909 00458$:
                                  10910 ;	calc.c:565: ((char)input == '>') || ((char)input == ']') ||
      006932 BD 3E 02         [24]10911 	cjne	r5,#0x3e,00459$
      006935 80 08            [24]10912 	sjmp	00131$
      006937                      10913 00459$:
      006937 BD 5D 02         [24]10914 	cjne	r5,#0x5d,00460$
      00693A 80 03            [24]10915 	sjmp	00131$
      00693C                      10916 00460$:
                                  10917 ;	calc.c:566: ((char)input == '<')
      00693C BD 3C 29         [24]10918 	cjne	r5,#0x3c,00132$
      00693F                      10919 00131$:
                                  10920 ;	calc.c:568: if (state_exec(&s, EVENT_OP) <= 0) break;
      00693F 74 02            [12]10921 	mov	a,#0x02
      006941 C0 E0            [24]10922 	push	acc
      006943 E4               [12]10923 	clr	a
      006944 C0 E0            [24]10924 	push	acc
      006946 90 90 00         [24]10925 	mov	dptr,#_s
      006949 75 F0 00         [24]10926 	mov	b,#0x00
      00694C 12 21 46         [24]10927 	lcall	_state_exec
      00694F AE 82            [24]10928 	mov	r6,dpl
      006951 AF 83            [24]10929 	mov	r7,dph
      006953 15 81            [12]10930 	dec	sp
      006955 15 81            [12]10931 	dec	sp
      006957 C3               [12]10932 	clr	c
      006958 E4               [12]10933 	clr	a
      006959 9E               [12]10934 	subb	a,r6
      00695A 74 80            [12]10935 	mov	a,#(0x00 ^ 0x80)
      00695C 8F F0            [24]10936 	mov	b,r7
      00695E 63 F0 80         [24]10937 	xrl	b,#0x80
      006961 95 F0            [12]10938 	subb	a,b
      006963 50 2A            [24]10939 	jnc	00193$
      006965 02 66 61         [24]10940 	ljmp	00192$
      006968                      10941 00132$:
                                  10942 ;	calc.c:570: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      006968 E4               [12]10943 	clr	a
      006969 C0 E0            [24]10944 	push	acc
      00696B C0 E0            [24]10945 	push	acc
      00696D 90 90 00         [24]10946 	mov	dptr,#_s
      006970 75 F0 00         [24]10947 	mov	b,#0x00
      006973 12 21 46         [24]10948 	lcall	_state_exec
      006976 AE 82            [24]10949 	mov	r6,dpl
      006978 AF 83            [24]10950 	mov	r7,dph
      00697A 15 81            [12]10951 	dec	sp
      00697C 15 81            [12]10952 	dec	sp
      00697E C3               [12]10953 	clr	c
      00697F E4               [12]10954 	clr	a
      006980 9E               [12]10955 	subb	a,r6
      006981 74 80            [12]10956 	mov	a,#(0x00 ^ 0x80)
      006983 8F F0            [24]10957 	mov	b,r7
      006985 63 F0 80         [24]10958 	xrl	b,#0x80
      006988 95 F0            [12]10959 	subb	a,b
      00698A 50 03            [24]10960 	jnc	00464$
      00698C 02 66 61         [24]10961 	ljmp	00192$
      00698F                      10962 00464$:
      00698F                      10963 00193$:
                                  10964 ;	calc.c:574: printstr("TERM\r\n");
      00698F 7D 0B            [12]10965 	mov	r5,#___str_52
      006991 7E 8D            [12]10966 	mov	r6,#(___str_52 >> 8)
      006993 7F 80            [12]10967 	mov	r7,#0x80
                                  10968 ;	calc.c:59: return;
      006995                      10969 00202$:
                                  10970 ;	calc.c:57: for (; *s; s++) putchar(*s);
      006995 8D 82            [24]10971 	mov	dpl,r5
      006997 8E 83            [24]10972 	mov	dph,r6
      006999 8F F0            [24]10973 	mov	b,r7
      00699B 12 70 E2         [24]10974 	lcall	__gptrget
      00699E FC               [12]10975 	mov	r4,a
      00699F 60 10            [24]10976 	jz	00197$
      0069A1 7B 00            [12]10977 	mov	r3,#0x00
      0069A3 8C 82            [24]10978 	mov	dpl,r4
      0069A5 8B 83            [24]10979 	mov	dph,r3
      0069A7 12 2B 70         [24]10980 	lcall	_putchar
      0069AA 0D               [12]10981 	inc	r5
                                  10982 ;	calc.c:574: printstr("TERM\r\n");
      0069AB BD 00 E7         [24]10983 	cjne	r5,#0x00,00202$
      0069AE 0E               [12]10984 	inc	r6
      0069AF 80 E4            [24]10985 	sjmp	00202$
      0069B1                      10986 00197$:
                                  10987 ;	calc.c:576: PCON |= 2;
      0069B1 43 87 02         [24]10988 	orl	_PCON,#0x02
                                  10989 ;	calc.c:578: return;
                                  10990 ;	calc.c:579: }
      0069B4 15 81            [12]10991 	dec	sp
      0069B6 D0 08            [24]10992 	pop	_bp
      0069B8 22               [24]10993 	ret
                                  10994 	.area CSEG    (CODE)
                                  10995 	.area CONST   (CODE)
                                  10996 	.area CONST   (CODE)
      008963                      10997 ___str_0:
      008963 25 30 38 6C 78       10998 	.ascii "%08lx"
      008968 09                   10999 	.db 0x09
      008969 00                   11000 	.db 0x00
                                  11001 	.area CSEG    (CODE)
                                  11002 	.area CONST   (CODE)
      00896A                      11003 ___str_1:
      00896A 25 20 31 31 6C 64    11004 	.ascii "% 11ld"
      008970 09                   11005 	.db 0x09
      008971 00                   11006 	.db 0x00
                                  11007 	.area CSEG    (CODE)
                                  11008 	.area CONST   (CODE)
      008972                      11009 ___str_2:
      008972 25 30 31 31 6C 6F    11010 	.ascii "%011lo"
      008978 09                   11011 	.db 0x09
      008979 00                   11012 	.db 0x00
                                  11013 	.area CSEG    (CODE)
                                  11014 	.area CONST   (CODE)
      00897A                      11015 ___str_3:
      00897A 0D                   11016 	.db 0x0d
      00897B 0A                   11017 	.db 0x0a
      00897C 00                   11018 	.db 0x00
                                  11019 	.area CSEG    (CODE)
                                  11020 	.area CONST   (CODE)
      00897D                      11021 ___str_4:
      00897D 73 74 61 63 6B 20 75 11022 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      00898C 0D                   11023 	.db 0x0d
      00898D 0A                   11024 	.db 0x0a
      00898E 00                   11025 	.db 0x00
                                  11026 	.area CSEG    (CODE)
                                  11027 	.area CONST   (CODE)
      00898F                      11028 ___str_5:
      00898F 50 53 50 41          11029 	.ascii "PSPA"
      008993 09                   11030 	.db 0x09
      008994 00                   11031 	.db 0x00
                                  11032 	.area CSEG    (CODE)
                                  11033 	.area CONST   (CODE)
      008995                      11034 ___str_6:
      008995 53 53 50 41          11035 	.ascii "SSPA"
      008999 09                   11036 	.db 0x09
      00899A 00                   11037 	.db 0x00
                                  11038 	.area CSEG    (CODE)
                                  11039 	.area CONST   (CODE)
      00899B                      11040 ___str_7:
      00899B 50 53 56 41          11041 	.ascii "PSVA"
      00899F 09                   11042 	.db 0x09
      0089A0 00                   11043 	.db 0x00
                                  11044 	.area CSEG    (CODE)
                                  11045 	.area CONST   (CODE)
      0089A1                      11046 ___str_8:
      0089A1 50 53 56 54 4F 50    11047 	.ascii "PSVTOP"
      0089A7 09                   11048 	.db 0x09
      0089A8 00                   11049 	.db 0x00
                                  11050 	.area CSEG    (CODE)
                                  11051 	.area CONST   (CODE)
      0089A9                      11052 ___str_9:
      0089A9 50 53 50 54 4F 50    11053 	.ascii "PSPTOP"
      0089AF 09                   11054 	.db 0x09
      0089B0 00                   11055 	.db 0x00
                                  11056 	.area CSEG    (CODE)
                                  11057 	.area CONST   (CODE)
      0089B1                      11058 ___str_10:
      0089B1 0D                   11059 	.db 0x0d
      0089B2 0A                   11060 	.db 0x0a
      0089B3 73 74 61 63 6B 20 75 11061 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      0089C2 0D                   11062 	.db 0x0d
      0089C3 0A                   11063 	.db 0x0a
      0089C4 00                   11064 	.db 0x00
                                  11065 	.area CSEG    (CODE)
                                  11066 	.area CONST   (CODE)
      0089C5                      11067 ___str_11:
      0089C5 0D                   11068 	.db 0x0d
      0089C6 0A                   11069 	.db 0x0a
      0089C7 73 65 63 6F 6E 64 61 11070 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      0089DF 0D                   11071 	.db 0x0d
      0089E0 0A                   11072 	.db 0x0a
      0089E1 00                   11073 	.db 0x00
                                  11074 	.area CSEG    (CODE)
                                  11075 	.area CONST   (CODE)
      0089E2                      11076 ___str_12:
      0089E2 0D                   11077 	.db 0x0d
      0089E3 0A                   11078 	.db 0x0a
      0089E4 73 65 63 6F 6E 64 61 11079 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      0089FD 0D                   11080 	.db 0x0d
      0089FE 0A                   11081 	.db 0x0a
      0089FF 00                   11082 	.db 0x00
                                  11083 	.area CSEG    (CODE)
                                  11084 	.area CONST   (CODE)
      008A00                      11085 ___str_13:
      008A00 0D                   11086 	.db 0x0d
      008A01 0A                   11087 	.db 0x0a
      008A02 73 74 61 63 6B 20 6F 11088 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      008A10 0D                   11089 	.db 0x0d
      008A11 0A                   11090 	.db 0x0a
      008A12 00                   11091 	.db 0x00
                                  11092 	.area CSEG    (CODE)
                                  11093 	.area CONST   (CODE)
      008A13                      11094 ___str_14:
      008A13 0D                   11095 	.db 0x0d
      008A14 0A                   11096 	.db 0x0a
      008A15 64 69 76 69 73 69 6F 11097 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      008A25 0D                   11098 	.db 0x0d
      008A26 0A                   11099 	.db 0x0a
      008A27 00                   11100 	.db 0x00
                                  11101 	.area CSEG    (CODE)
                                  11102 	.area CONST   (CODE)
      008A28                      11103 ___str_15:
      008A28 0D                   11104 	.db 0x0d
      008A29 0A                   11105 	.db 0x0a
      008A2A 50 53 20 3D 20 25 70 11106 	.ascii "PS = %p, SS = %p, base = %d"
             2C 20 53 53 20 3D 20
             25 70 2C 20 62 61 73
             65 20 3D 20 25 64
      008A45 0D                   11107 	.db 0x0d
      008A46 0A                   11108 	.db 0x0a
      008A47 00                   11109 	.db 0x00
                                  11110 	.area CSEG    (CODE)
                                  11111 	.area CONST   (CODE)
      008A48                      11112 ___str_16:
      008A48 41 43 43             11113 	.ascii "ACC"
      008A4B 09                   11114 	.db 0x09
      008A4C 00                   11115 	.db 0x00
                                  11116 	.area CSEG    (CODE)
                                  11117 	.area CONST   (CODE)
      008A4D                      11118 ___str_17:
      008A4D 0D                   11119 	.db 0x0d
      008A4E 0A                   11120 	.db 0x0a
      008A4F 50 53 54 4F 50 31    11121 	.ascii "PSTOP1"
      008A55 09                   11122 	.db 0x09
      008A56 00                   11123 	.db 0x00
                                  11124 	.area CSEG    (CODE)
                                  11125 	.area CONST   (CODE)
      008A57                      11126 ___str_18:
      008A57 0D                   11127 	.db 0x0d
      008A58 0A                   11128 	.db 0x0a
      008A59 50 53 54 4F 50 30    11129 	.ascii "PSTOP0"
      008A5F 09                   11130 	.db 0x09
      008A60 00                   11131 	.db 0x00
                                  11132 	.area CSEG    (CODE)
                                  11133 	.area CONST   (CODE)
      008A61                      11134 ___str_19:
      008A61 0D                   11135 	.db 0x0d
      008A62 0A                   11136 	.db 0x0a
      008A63 53 53 54 4F 50 31    11137 	.ascii "SSTOP1"
      008A69 09                   11138 	.db 0x09
      008A6A 00                   11139 	.db 0x00
                                  11140 	.area CSEG    (CODE)
                                  11141 	.area CONST   (CODE)
      008A6B                      11142 ___str_20:
      008A6B 0D                   11143 	.db 0x0d
      008A6C 0A                   11144 	.db 0x0a
      008A6D 53 53 54 4F 50 30    11145 	.ascii "SSTOP0"
      008A73 09                   11146 	.db 0x09
      008A74 00                   11147 	.db 0x00
                                  11148 	.area CSEG    (CODE)
                                  11149 	.area CONST   (CODE)
      008A75                      11150 ___str_21:
      008A75 0D                   11151 	.db 0x0d
      008A76 0A                   11152 	.db 0x0a
      008A77 48 68 4F 6F          11153 	.ascii "HhOo"
      008A7B 09                   11154 	.db 0x09
      008A7C 62 61 73 65 20 31 36 11155 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      008A8A 0D                   11156 	.db 0x0d
      008A8B 0A                   11157 	.db 0x0a
      008A8C 00                   11158 	.db 0x00
                                  11159 	.area CSEG    (CODE)
                                  11160 	.area CONST   (CODE)
      008A8D                      11161 ___str_22:
      008A8D 70 2E                11162 	.ascii "p."
      008A8F 09                   11163 	.db 0x09
      008A90 70 6F 70 20 74 6F 70 11164 	.ascii "pop top"
      008A97 0D                   11165 	.db 0x0d
      008A98 0A                   11166 	.db 0x0a
      008A99 00                   11167 	.db 0x00
                                  11168 	.area CSEG    (CODE)
                                  11169 	.area CONST   (CODE)
      008A9A                      11170 ___str_23:
      008A9A 50                   11171 	.ascii "P"
      008A9B 09                   11172 	.db 0x09
      008A9C 70 6F 70 20 73 74 61 11173 	.ascii "pop stack"
             63 6B
      008AA5 0D                   11174 	.db 0x0d
      008AA6 0A                   11175 	.db 0x0a
      008AA7 00                   11176 	.db 0x00
                                  11177 	.area CSEG    (CODE)
                                  11178 	.area CONST   (CODE)
      008AA8                      11179 ___str_24:
      008AA8 76                   11180 	.ascii "v"
      008AA9 09                   11181 	.db 0x09
      008AAA 70 65 65 6B 20 74 6F 11182 	.ascii "peek top"
             70
      008AB2 0D                   11183 	.db 0x0d
      008AB3 0A                   11184 	.db 0x0a
      008AB4 00                   11185 	.db 0x00
                                  11186 	.area CSEG    (CODE)
                                  11187 	.area CONST   (CODE)
      008AB5                      11188 ___str_25:
      008AB5 56                   11189 	.ascii "V"
      008AB6 09                   11190 	.db 0x09
      008AB7 70 65 65 6B 20 73 74 11191 	.ascii "peek stack"
             61 63 6B
      008AC1 0D                   11192 	.db 0x0d
      008AC2 0A                   11193 	.db 0x0a
      008AC3 00                   11194 	.db 0x00
                                  11195 	.area CSEG    (CODE)
                                  11196 	.area CONST   (CODE)
      008AC4                      11197 ___str_26:
      008AC4 69                   11198 	.ascii "i"
      008AC5 09                   11199 	.db 0x09
      008AC6 72 65 73 65 74 20 61 11200 	.ascii "reset acc"
             63 63
      008ACF 0D                   11201 	.db 0x0d
      008AD0 0A                   11202 	.db 0x0a
      008AD1 00                   11203 	.db 0x00
                                  11204 	.area CSEG    (CODE)
                                  11205 	.area CONST   (CODE)
      008AD2                      11206 ___str_27:
      008AD2 49                   11207 	.ascii "I"
      008AD3 09                   11208 	.db 0x09
      008AD4 72 65 73 65 74 20 61 11209 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      008AE9 0D                   11210 	.db 0x0d
      008AEA 0A                   11211 	.db 0x0a
      008AEB 00                   11212 	.db 0x00
                                  11213 	.area CSEG    (CODE)
                                  11214 	.area CONST   (CODE)
      008AEC                      11215 ___str_28:
      008AEC 78                   11216 	.ascii "x"
      008AED 09                   11217 	.db 0x09
      008AEE 65 78 63 68 61 6E 67 11218 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      008AFC 0D                   11219 	.db 0x0d
      008AFD 0A                   11220 	.db 0x0a
      008AFE 00                   11221 	.db 0x00
                                  11222 	.area CSEG    (CODE)
                                  11223 	.area CONST   (CODE)
      008AFF                      11224 ___str_29:
      008AFF 58                   11225 	.ascii "X"
      008B00 09                   11226 	.db 0x09
      008B01 65 78 63 68 61 6E 67 11227 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      008B26 0D                   11228 	.db 0x0d
      008B27 0A                   11229 	.db 0x0a
      008B28 00                   11230 	.db 0x00
                                  11231 	.area CSEG    (CODE)
                                  11232 	.area CONST   (CODE)
      008B29                      11233 ___str_30:
      008B29 54                   11234 	.ascii "T"
      008B2A 09                   11235 	.db 0x09
      008B2B 65 78 63 68 61 6E 67 11236 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      008B4E 0D                   11237 	.db 0x0d
      008B4F 0A                   11238 	.db 0x0a
      008B50 00                   11239 	.db 0x00
                                  11240 	.area CSEG    (CODE)
                                  11241 	.area CONST   (CODE)
      008B51                      11242 ___str_31:
      008B51 55                   11243 	.ascii "U"
      008B52 09                   11244 	.db 0x09
      008B53 63 6F 70 79 20 74 6F 11245 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008B70 0D                   11246 	.db 0x0d
      008B71 0A                   11247 	.db 0x0a
      008B72 00                   11248 	.db 0x00
                                  11249 	.area CSEG    (CODE)
                                  11250 	.area CONST   (CODE)
      008B73                      11251 ___str_32:
      008B73 75                   11252 	.ascii "u"
      008B74 09                   11253 	.db 0x09
      008B75 63 6F 70 79 20 74 6F 11254 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008B92 0D                   11255 	.db 0x0d
      008B93 0A                   11256 	.db 0x0a
      008B94 00                   11257 	.db 0x00
                                  11258 	.area CSEG    (CODE)
                                  11259 	.area CONST   (CODE)
      008B95                      11260 ___str_33:
      008B95 4D                   11261 	.ascii "M"
      008B96 09                   11262 	.db 0x09
      008B97 6D 6F 76 65 20 74 6F 11263 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008BB4 0D                   11264 	.db 0x0d
      008BB5 0A                   11265 	.db 0x0a
      008BB6 00                   11266 	.db 0x00
                                  11267 	.area CSEG    (CODE)
                                  11268 	.area CONST   (CODE)
      008BB7                      11269 ___str_34:
      008BB7 6D                   11270 	.ascii "m"
      008BB8 09                   11271 	.db 0x09
      008BB9 6D 6F 76 65 20 74 6F 11272 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008BD6 0D                   11273 	.db 0x0d
      008BD7 0A                   11274 	.db 0x0a
      008BD8 00                   11275 	.db 0x00
                                  11276 	.area CSEG    (CODE)
                                  11277 	.area CONST   (CODE)
      008BD9                      11278 ___str_35:
      008BD9 2B                   11279 	.ascii "+"
      008BDA 09                   11280 	.db 0x09
      008BDB 61 64 64 20 74 6F 70 11281 	.ascii "add top 2"
             20 32
      008BE4 0D                   11282 	.db 0x0d
      008BE5 0A                   11283 	.db 0x0a
      008BE6 00                   11284 	.db 0x00
                                  11285 	.area CSEG    (CODE)
                                  11286 	.area CONST   (CODE)
      008BE7                      11287 ___str_36:
      008BE7 2D                   11288 	.ascii "-"
      008BE8 09                   11289 	.db 0x09
      008BE9 73 75 62 74 72 61 63 11290 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      008BF7 0D                   11291 	.db 0x0d
      008BF8 0A                   11292 	.db 0x0a
      008BF9 00                   11293 	.db 0x00
                                  11294 	.area CSEG    (CODE)
                                  11295 	.area CONST   (CODE)
      008BFA                      11296 ___str_37:
      008BFA 2A                   11297 	.ascii "*"
      008BFB 09                   11298 	.db 0x09
      008BFC 6D 75 6C 74 69 70 6C 11299 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      008C0A 0D                   11300 	.db 0x0d
      008C0B 0A                   11301 	.db 0x0a
      008C0C 00                   11302 	.db 0x00
                                  11303 	.area CSEG    (CODE)
                                  11304 	.area CONST   (CODE)
      008C0D                      11305 ___str_38:
      008C0D 2F                   11306 	.ascii "/"
      008C0E 09                   11307 	.db 0x09
      008C0F 64 69 76 69 64 65 20 11308 	.ascii "divide top 2"
             74 6F 70 20 32
      008C1B 0D                   11309 	.db 0x0d
      008C1C 0A                   11310 	.db 0x0a
      008C1D 00                   11311 	.db 0x00
                                  11312 	.area CSEG    (CODE)
                                  11313 	.area CONST   (CODE)
      008C1E                      11314 ___str_39:
      008C1E 5C                   11315 	.db 0x5c
      008C1F 09                   11316 	.db 0x09
      008C20 64 69 76 69 64 65 20 11317 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      008C35 0D                   11318 	.db 0x0d
      008C36 0A                   11319 	.db 0x0a
      008C37 00                   11320 	.db 0x00
                                  11321 	.area CSEG    (CODE)
                                  11322 	.area CONST   (CODE)
      008C38                      11323 ___str_40:
      008C38 25                   11324 	.ascii "%"
      008C39 09                   11325 	.db 0x09
      008C3A 6D 6F 64 75 6C 75 73 11326 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      008C47 0D                   11327 	.db 0x0d
      008C48 0A                   11328 	.db 0x0a
      008C49 00                   11329 	.db 0x00
                                  11330 	.area CSEG    (CODE)
                                  11331 	.area CONST   (CODE)
      008C4A                      11332 ___str_41:
      008C4A 23                   11333 	.ascii "#"
      008C4B 09                   11334 	.db 0x09
      008C4C 6D 6F 64 75 6C 75 73 11335 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      008C62 0D                   11336 	.db 0x0d
      008C63 0A                   11337 	.db 0x0a
      008C64 00                   11338 	.db 0x00
                                  11339 	.area CSEG    (CODE)
                                  11340 	.area CONST   (CODE)
      008C65                      11341 ___str_42:
      008C65 26                   11342 	.ascii "&"
      008C66 09                   11343 	.db 0x09
      008C67 61 6E 64 20 74 6F 70 11344 	.ascii "and top 2"
             20 32
      008C70 0D                   11345 	.db 0x0d
      008C71 0A                   11346 	.db 0x0a
      008C72 00                   11347 	.db 0x00
                                  11348 	.area CSEG    (CODE)
                                  11349 	.area CONST   (CODE)
      008C73                      11350 ___str_43:
      008C73 7C                   11351 	.ascii "|"
      008C74 09                   11352 	.db 0x09
      008C75 6F 72 20 74 6F 70 20 11353 	.ascii "or top 2"
             32
      008C7D 0D                   11354 	.db 0x0d
      008C7E 0A                   11355 	.db 0x0a
      008C7F 00                   11356 	.db 0x00
                                  11357 	.area CSEG    (CODE)
                                  11358 	.area CONST   (CODE)
      008C80                      11359 ___str_44:
      008C80 5E                   11360 	.ascii "^"
      008C81 09                   11361 	.db 0x09
      008C82 78 6F 72 20 74 6F 70 11362 	.ascii "xor top 2"
             20 32
      008C8B 0D                   11363 	.db 0x0d
      008C8C 0A                   11364 	.db 0x0a
      008C8D 00                   11365 	.db 0x00
                                  11366 	.area CSEG    (CODE)
                                  11367 	.area CONST   (CODE)
      008C8E                      11368 ___str_45:
      008C8E 3E                   11369 	.ascii ">"
      008C8F 09                   11370 	.db 0x09
      008C90 73 68 69 66 74 20 72 11371 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      008CA1 0D                   11372 	.db 0x0d
      008CA2 0A                   11373 	.db 0x0a
      008CA3 00                   11374 	.db 0x00
                                  11375 	.area CSEG    (CODE)
                                  11376 	.area CONST   (CODE)
      008CA4                      11377 ___str_46:
      008CA4 5D                   11378 	.ascii "]"
      008CA5 09                   11379 	.db 0x09
      008CA6 61 72 69 74 68 6D 65 11380 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      008CC2 0D                   11381 	.db 0x0d
      008CC3 0A                   11382 	.db 0x0a
      008CC4 00                   11383 	.db 0x00
                                  11384 	.area CSEG    (CODE)
                                  11385 	.area CONST   (CODE)
      008CC5                      11386 ___str_47:
      008CC5 3C                   11387 	.ascii "<"
      008CC6 09                   11388 	.db 0x09
      008CC7 73 68 69 66 74 20 6C 11389 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      008CD7 0D                   11390 	.db 0x0d
      008CD8 0A                   11391 	.db 0x0a
      008CD9 00                   11392 	.db 0x00
                                  11393 	.area CSEG    (CODE)
                                  11394 	.area CONST   (CODE)
      008CDA                      11395 ___str_48:
      008CDA 7E                   11396 	.ascii "~"
      008CDB 09                   11397 	.db 0x09
      008CDC 62 69 74 77 69 73 65 11398 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      008CEB 0D                   11399 	.db 0x0d
      008CEC 0A                   11400 	.db 0x0a
      008CED 00                   11401 	.db 0x00
                                  11402 	.area CSEG    (CODE)
                                  11403 	.area CONST   (CODE)
      008CEE                      11404 ___str_49:
      008CEE 73                   11405 	.ascii "s"
      008CEF 09                   11406 	.db 0x09
      008CF0 73 74 61 74 75 73    11407 	.ascii "status"
      008CF6 0D                   11408 	.db 0x0d
      008CF7 0A                   11409 	.db 0x0a
      008CF8 00                   11410 	.db 0x00
                                  11411 	.area CSEG    (CODE)
                                  11412 	.area CONST   (CODE)
      008CF9                      11413 ___str_50:
      008CF9 3F                   11414 	.ascii "?"
      008CFA 09                   11415 	.db 0x09
      008CFB 68 65 6C 70          11416 	.ascii "help"
      008CFF 0D                   11417 	.db 0x0d
      008D00 0A                   11418 	.db 0x0a
      008D01 00                   11419 	.db 0x00
                                  11420 	.area CSEG    (CODE)
                                  11421 	.area CONST   (CODE)
      008D02                      11422 ___str_51:
      008D02 71                   11423 	.ascii "q"
      008D03 09                   11424 	.db 0x09
      008D04 71 75 69 74          11425 	.ascii "quit"
      008D08 0D                   11426 	.db 0x0d
      008D09 0A                   11427 	.db 0x0a
      008D0A 00                   11428 	.db 0x00
                                  11429 	.area CSEG    (CODE)
                                  11430 	.area CONST   (CODE)
      008D0B                      11431 ___str_52:
      008D0B 54 45 52 4D          11432 	.ascii "TERM"
      008D0F 0D                   11433 	.db 0x0d
      008D10 0A                   11434 	.db 0x0a
      008D11 00                   11435 	.db 0x00
                                  11436 	.area CSEG    (CODE)
                                  11437 	.area XINIT   (CODE)
      008D23                      11438 __xinit__deltas:
      008D23 00 00                11439 	.byte #0x00, #0x00	;  0
      008D25 00 00                11440 	.byte #0x00, #0x00	;  0
      008D27 00 00                11441 	.byte #0x00, #0x00	;  0
      008D29 00 00                11442 	.byte #0x00,#0x00
      008D2B 00 00                11443 	.byte #0x00,#0x00
      008D2D 00 00                11444 	.byte #0x00, #0x00	;  0
      008D2F 01 00                11445 	.byte #0x01, #0x00	;  1
      008D31 02 00                11446 	.byte #0x02, #0x00	;  2
      008D33 00 00                11447 	.byte #0x00,#0x00
      008D35 A1 2B                11448 	.byte _accumulate, (_accumulate >> 8)
      008D37 00 00                11449 	.byte #0x00, #0x00	;  0
      008D39 02 00                11450 	.byte #0x02, #0x00	;  2
      008D3B 01 00                11451 	.byte #0x01, #0x00	;  1
      008D3D 00 00                11452 	.byte #0x00,#0x00
      008D3F 23 34                11453 	.byte _operator, (_operator >> 8)
      008D41 01 00                11454 	.byte #0x01, #0x00	;  1
      008D43 00 00                11455 	.byte #0x00, #0x00	;  0
      008D45 00 00                11456 	.byte #0x00, #0x00	;  0
      008D47 00 00                11457 	.byte #0x00,#0x00
      008D49 00 00                11458 	.byte #0x00,#0x00
      008D4B 01 00                11459 	.byte #0x01, #0x00	;  1
      008D4D 02 00                11460 	.byte #0x02, #0x00	;  2
      008D4F 01 00                11461 	.byte #0x01, #0x00	;  1
      008D51 00 00                11462 	.byte #0x00,#0x00
      008D53 23 34                11463 	.byte _operator, (_operator >> 8)
      008D55 01 00                11464 	.byte #0x01, #0x00	;  1
      008D57 01 00                11465 	.byte #0x01, #0x00	;  1
      008D59 02 00                11466 	.byte #0x02, #0x00	;  2
      008D5B 00 00                11467 	.byte #0x00,#0x00
      008D5D A1 2B                11468 	.byte _accumulate, (_accumulate >> 8)
      008D5F 02 00                11469 	.byte #0x02, #0x00	;  2
      008D61 00 00                11470 	.byte #0x00, #0x00	;  0
      008D63 00 00                11471 	.byte #0x00, #0x00	;  0
      008D65 00 00                11472 	.byte #0x00,#0x00
      008D67 1D 57                11473 	.byte _push_acc, (_push_acc >> 8)
      008D69 02 00                11474 	.byte #0x02, #0x00	;  2
      008D6B 07 00                11475 	.byte #0x07, #0x00	;  7
      008D6D 00 00                11476 	.byte #0x00, #0x00	;  0
      008D6F 00 00                11477 	.byte #0x00,#0x00
      008D71 40 58                11478 	.byte _reset_acc, (_reset_acc >> 8)
      008D73 02 00                11479 	.byte #0x02, #0x00	;  2
      008D75 01 00                11480 	.byte #0x01, #0x00	;  1
      008D77 02 00                11481 	.byte #0x02, #0x00	;  2
      008D79 00 00                11482 	.byte #0x00,#0x00
      008D7B A1 2B                11483 	.byte _accumulate, (_accumulate >> 8)
      008D7D 02 00                11484 	.byte #0x02, #0x00	;  2
      008D7F 02 00                11485 	.byte #0x02, #0x00	;  2
      008D81 01 00                11486 	.byte #0x01, #0x00	;  1
      008D83 00 00                11487 	.byte #0x00,#0x00
      008D85 1D 57                11488 	.byte _push_acc, (_push_acc >> 8)
      008D87 FF 7F                11489 	.byte #0xff, #0x7f	;  32767
      008D89 06 00                11490 	.byte #0x06, #0x00	;  6
      008D8B FF 7F                11491 	.byte #0xff, #0x7f	;  32767
      008D8D 00 00                11492 	.byte #0x00,#0x00
      008D8F 40 58                11493 	.byte _reset_acc, (_reset_acc >> 8)
      008D91 FF 7F                11494 	.byte #0xff, #0x7f	;  32767
      008D93 07 00                11495 	.byte #0x07, #0x00	;  7
      008D95 FF 7F                11496 	.byte #0xff, #0x7f	;  32767
      008D97 00 00                11497 	.byte #0x00,#0x00
      008D99 00 00                11498 	.byte #0x00,#0x00
      008D9B FF 7F                11499 	.byte #0xff, #0x7f	;  32767
      008D9D 05 00                11500 	.byte #0x05, #0x00	;  5
      008D9F FF 7F                11501 	.byte #0xff, #0x7f	;  32767
      008DA1 00 00                11502 	.byte #0x00,#0x00
      008DA3 AA 58                11503 	.byte _reset_base, (_reset_base >> 8)
      008DA5 FF 7F                11504 	.byte #0xff, #0x7f	;  32767
      008DA7 03 00                11505 	.byte #0x03, #0x00	;  3
      008DA9 FF 7F                11506 	.byte #0xff, #0x7f	;  32767
      008DAB 00 00                11507 	.byte #0x00,#0x00
      008DAD 28 59                11508 	.byte _status, (_status >> 8)
      008DAF FF 7F                11509 	.byte #0xff, #0x7f	;  32767
      008DB1 04 00                11510 	.byte #0x04, #0x00	;  4
      008DB3 FF 7F                11511 	.byte #0xff, #0x7f	;  32767
      008DB5 00 00                11512 	.byte #0x00,#0x00
      008DB7 87 61                11513 	.byte _help, (_help >> 8)
      008DB9 FF 7F                11514 	.byte #0xff, #0x7f	;  32767
      008DBB 08 00                11515 	.byte #0x08, #0x00	;  8
      008DBD 03 00                11516 	.byte #0x03, #0x00	;  3
      008DBF 00 00                11517 	.byte #0x00,#0x00
      008DC1 12 2D                11518 	.byte _dump_pop, (_dump_pop >> 8)
      008DC3 00 80                11519 	.byte #0x00, #0x80	; -32768
      008DC5 00 80                11520 	.byte #0x00, #0x80	; -32768
      008DC7 00 80                11521 	.byte #0x00, #0x80	; -32768
      008DC9 00 00                11522 	.byte #0x00,#0x00
      008DCB 00 00                11523 	.byte #0x00,#0x00
                                  11524 	.area CABS    (ABS,CODE)
