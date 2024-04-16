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
      002003 02 65 A8         [24]  376 	ljmp	_main
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
                                    393 ;	calc.c:23: __endasm;
      002B70 C0 E0            [24]  394 	push	acc
      002B72 E5 82            [12]  395 	mov	a, dpl
      002B74 12 00 3C         [24]  396 	lcall	0x003c
      002B77 D0 E0            [24]  397 	pop	acc
                                    398 ;	calc.c:24: }
                                    399 ;	naked function: no epilogue.
                                    400 ;------------------------------------------------------------
                                    401 ;Allocation info for local variables in function 'getchar'
                                    402 ;------------------------------------------------------------
                                    403 ;	calc.c:26: int getchar(void) __naked {
                                    404 ;	-----------------------------------------
                                    405 ;	 function getchar
                                    406 ;	-----------------------------------------
      002B79                        407 _getchar:
                                    408 ;	naked function: no prologue.
                                    409 ;	calc.c:34: __endasm;
      002B79 C0 E0            [24]  410 	push	acc
      002B7B 12 00 36         [24]  411 	lcall	0x0036
      002B7E F5 82            [12]  412 	mov	dpl, a
      002B80 75 83 00         [24]  413 	mov	dph, #0
      002B83 D0 E0            [24]  414 	pop	acc
      002B85 22               [24]  415 	ret
                                    416 ;	calc.c:35: }
                                    417 ;	naked function: no epilogue.
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'getchar_poll'
                                    420 ;------------------------------------------------------------
                                    421 ;	calc.c:37: int getchar_poll(void) __naked {
                                    422 ;	-----------------------------------------
                                    423 ;	 function getchar_poll
                                    424 ;	-----------------------------------------
      002B86                        425 _getchar_poll:
                                    426 ;	naked function: no prologue.
                                    427 ;	calc.c:52: __endasm;
      002B86 C0 E0            [24]  428 	push	acc
      002B88 C0 F0            [24]  429 	push	b
      002B8A 74 FF            [12]  430 	mov	a, #0xff
      002B8C F5 F0            [12]  431 	mov	b, a
      002B8E 12 00 39         [24]  432 	lcall	0x0039
      002B91 40 03            [24]  433 	jc	nochar
      002B93 75 F0 00         [24]  434 	mov	b, #0x00
      002B96                        435 	nochar:
      002B96 F5 82            [12]  436 	mov	dpl, a
      002B98 85 F0 83         [24]  437 	mov	dph, b
      002B9B D0 F0            [24]  438 	pop	b
      002B9D D0 E0            [24]  439 	pop	acc
      002B9F 22               [24]  440 	ret
                                    441 ;	calc.c:53: }
                                    442 ;	naked function: no epilogue.
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'accumulate'
                                    445 ;------------------------------------------------------------
                                    446 ;delta                     Allocated to stack - _bp -5
                                    447 ;_ctx                      Allocated to registers r5 r6 r7 
                                    448 ;ctx                       Allocated to stack - _bp +8
                                    449 ;d                         Allocated to stack - _bp +11
                                    450 ;sloc0                     Allocated to stack - _bp +1
                                    451 ;sloc1                     Allocated to stack - _bp +4
                                    452 ;------------------------------------------------------------
                                    453 ;	calc.c:79: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
                                    454 ;	-----------------------------------------
                                    455 ;	 function accumulate
                                    456 ;	-----------------------------------------
      002BA0                        457 _accumulate:
                           000007   458 	ar7 = 0x07
                           000006   459 	ar6 = 0x06
                           000005   460 	ar5 = 0x05
                           000004   461 	ar4 = 0x04
                           000003   462 	ar3 = 0x03
                           000002   463 	ar2 = 0x02
                           000001   464 	ar1 = 0x01
                           000000   465 	ar0 = 0x00
      002BA0 C0 08            [24]  466 	push	_bp
      002BA2 E5 81            [12]  467 	mov	a,sp
      002BA4 F5 08            [12]  468 	mov	_bp,a
      002BA6 24 0E            [12]  469 	add	a,#0x0e
      002BA8 F5 81            [12]  470 	mov	sp,a
      002BAA AD 82            [24]  471 	mov	r5,dpl
      002BAC AE 83            [24]  472 	mov	r6,dph
      002BAE AF F0            [24]  473 	mov	r7,b
                                    474 ;	calc.c:80: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002BB0 E5 08            [12]  475 	mov	a,_bp
      002BB2 24 08            [12]  476 	add	a,#0x08
      002BB4 F8               [12]  477 	mov	r0,a
      002BB5 A6 05            [24]  478 	mov	@r0,ar5
      002BB7 08               [12]  479 	inc	r0
      002BB8 A6 06            [24]  480 	mov	@r0,ar6
      002BBA 08               [12]  481 	inc	r0
      002BBB A6 07            [24]  482 	mov	@r0,ar7
                                    483 ;	calc.c:85: if (!ctx->acc_valid) {
      002BBD E5 08            [12]  484 	mov	a,_bp
      002BBF 24 08            [12]  485 	add	a,#0x08
      002BC1 F8               [12]  486 	mov	r0,a
      002BC2 74 06            [12]  487 	mov	a,#0x06
      002BC4 26               [12]  488 	add	a,@r0
      002BC5 FA               [12]  489 	mov	r2,a
      002BC6 E4               [12]  490 	clr	a
      002BC7 08               [12]  491 	inc	r0
      002BC8 36               [12]  492 	addc	a,@r0
      002BC9 FB               [12]  493 	mov	r3,a
      002BCA 08               [12]  494 	inc	r0
      002BCB 86 04            [24]  495 	mov	ar4,@r0
      002BCD 8A 82            [24]  496 	mov	dpl,r2
      002BCF 8B 83            [24]  497 	mov	dph,r3
      002BD1 8C F0            [24]  498 	mov	b,r4
      002BD3 12 70 DA         [24]  499 	lcall	__gptrget
      002BD6 70 31            [24]  500 	jnz	00102$
                                    501 ;	calc.c:86: ctx->acc_valid = 1;
      002BD8 8A 82            [24]  502 	mov	dpl,r2
      002BDA 8B 83            [24]  503 	mov	dph,r3
      002BDC 8C F0            [24]  504 	mov	b,r4
      002BDE 74 01            [12]  505 	mov	a,#0x01
      002BE0 12 6C 5F         [24]  506 	lcall	__gptrput
                                    507 ;	calc.c:87: ctx->acc = 0l;
      002BE3 E5 08            [12]  508 	mov	a,_bp
      002BE5 24 08            [12]  509 	add	a,#0x08
      002BE7 F8               [12]  510 	mov	r0,a
      002BE8 74 02            [12]  511 	mov	a,#0x02
      002BEA 26               [12]  512 	add	a,@r0
      002BEB FA               [12]  513 	mov	r2,a
      002BEC E4               [12]  514 	clr	a
      002BED 08               [12]  515 	inc	r0
      002BEE 36               [12]  516 	addc	a,@r0
      002BEF FB               [12]  517 	mov	r3,a
      002BF0 08               [12]  518 	inc	r0
      002BF1 86 04            [24]  519 	mov	ar4,@r0
      002BF3 8A 82            [24]  520 	mov	dpl,r2
      002BF5 8B 83            [24]  521 	mov	dph,r3
      002BF7 8C F0            [24]  522 	mov	b,r4
      002BF9 E4               [12]  523 	clr	a
      002BFA 12 6C 5F         [24]  524 	lcall	__gptrput
      002BFD A3               [24]  525 	inc	dptr
      002BFE 12 6C 5F         [24]  526 	lcall	__gptrput
      002C01 A3               [24]  527 	inc	dptr
      002C02 12 6C 5F         [24]  528 	lcall	__gptrput
      002C05 A3               [24]  529 	inc	dptr
      002C06 12 6C 5F         [24]  530 	lcall	__gptrput
      002C09                        531 00102$:
                                    532 ;	calc.c:90: d = strtol(ctx->digit, NULL, ctx->base);
      002C09 E5 08            [12]  533 	mov	a,_bp
      002C0B 24 08            [12]  534 	add	a,#0x08
      002C0D F8               [12]  535 	mov	r0,a
      002C0E 86 82            [24]  536 	mov	dpl,@r0
      002C10 08               [12]  537 	inc	r0
      002C11 86 83            [24]  538 	mov	dph,@r0
      002C13 08               [12]  539 	inc	r0
      002C14 86 F0            [24]  540 	mov	b,@r0
      002C16 12 70 DA         [24]  541 	lcall	__gptrget
      002C19 FB               [12]  542 	mov	r3,a
      002C1A A3               [24]  543 	inc	dptr
      002C1B 12 70 DA         [24]  544 	lcall	__gptrget
      002C1E FC               [12]  545 	mov	r4,a
      002C1F E5 08            [12]  546 	mov	a,_bp
      002C21 24 08            [12]  547 	add	a,#0x08
      002C23 F8               [12]  548 	mov	r0,a
      002C24 74 07            [12]  549 	mov	a,#0x07
      002C26 26               [12]  550 	add	a,@r0
      002C27 FA               [12]  551 	mov	r2,a
      002C28 E4               [12]  552 	clr	a
      002C29 08               [12]  553 	inc	r0
      002C2A 36               [12]  554 	addc	a,@r0
      002C2B FE               [12]  555 	mov	r6,a
      002C2C 08               [12]  556 	inc	r0
      002C2D 86 07            [24]  557 	mov	ar7,@r0
      002C2F C0 03            [24]  558 	push	ar3
      002C31 C0 04            [24]  559 	push	ar4
      002C33 E4               [12]  560 	clr	a
      002C34 C0 E0            [24]  561 	push	acc
      002C36 C0 E0            [24]  562 	push	acc
      002C38 C0 E0            [24]  563 	push	acc
      002C3A 8A 82            [24]  564 	mov	dpl,r2
      002C3C 8E 83            [24]  565 	mov	dph,r6
      002C3E 8F F0            [24]  566 	mov	b,r7
      002C40 12 6A 21         [24]  567 	lcall	_strtol
      002C43 C8               [12]  568 	xch	a,r0
      002C44 E5 08            [12]  569 	mov	a,_bp
      002C46 24 0B            [12]  570 	add	a,#0x0b
      002C48 C8               [12]  571 	xch	a,r0
      002C49 A6 82            [24]  572 	mov	@r0,dpl
      002C4B 08               [12]  573 	inc	r0
      002C4C A6 83            [24]  574 	mov	@r0,dph
      002C4E 08               [12]  575 	inc	r0
      002C4F A6 F0            [24]  576 	mov	@r0,b
      002C51 08               [12]  577 	inc	r0
      002C52 F6               [12]  578 	mov	@r0,a
      002C53 E5 81            [12]  579 	mov	a,sp
      002C55 24 FB            [12]  580 	add	a,#0xfb
      002C57 F5 81            [12]  581 	mov	sp,a
                                    582 ;	calc.c:91: ctx->acc = ctx->acc * (long)ctx->base + d;
      002C59 E5 08            [12]  583 	mov	a,_bp
      002C5B 24 08            [12]  584 	add	a,#0x08
      002C5D F8               [12]  585 	mov	r0,a
      002C5E A9 08            [24]  586 	mov	r1,_bp
      002C60 09               [12]  587 	inc	r1
      002C61 74 02            [12]  588 	mov	a,#0x02
      002C63 26               [12]  589 	add	a,@r0
      002C64 F7               [12]  590 	mov	@r1,a
      002C65 E4               [12]  591 	clr	a
      002C66 08               [12]  592 	inc	r0
      002C67 36               [12]  593 	addc	a,@r0
      002C68 09               [12]  594 	inc	r1
      002C69 F7               [12]  595 	mov	@r1,a
      002C6A 08               [12]  596 	inc	r0
      002C6B 09               [12]  597 	inc	r1
      002C6C E6               [12]  598 	mov	a,@r0
      002C6D F7               [12]  599 	mov	@r1,a
      002C6E A8 08            [24]  600 	mov	r0,_bp
      002C70 08               [12]  601 	inc	r0
      002C71 86 82            [24]  602 	mov	dpl,@r0
      002C73 08               [12]  603 	inc	r0
      002C74 86 83            [24]  604 	mov	dph,@r0
      002C76 08               [12]  605 	inc	r0
      002C77 86 F0            [24]  606 	mov	b,@r0
      002C79 E5 08            [12]  607 	mov	a,_bp
      002C7B 24 04            [12]  608 	add	a,#0x04
      002C7D F9               [12]  609 	mov	r1,a
      002C7E 12 70 DA         [24]  610 	lcall	__gptrget
      002C81 F7               [12]  611 	mov	@r1,a
      002C82 A3               [24]  612 	inc	dptr
      002C83 12 70 DA         [24]  613 	lcall	__gptrget
      002C86 09               [12]  614 	inc	r1
      002C87 F7               [12]  615 	mov	@r1,a
      002C88 A3               [24]  616 	inc	dptr
      002C89 12 70 DA         [24]  617 	lcall	__gptrget
      002C8C 09               [12]  618 	inc	r1
      002C8D F7               [12]  619 	mov	@r1,a
      002C8E A3               [24]  620 	inc	dptr
      002C8F 12 70 DA         [24]  621 	lcall	__gptrget
      002C92 09               [12]  622 	inc	r1
      002C93 F7               [12]  623 	mov	@r1,a
      002C94 E5 08            [12]  624 	mov	a,_bp
      002C96 24 08            [12]  625 	add	a,#0x08
      002C98 F8               [12]  626 	mov	r0,a
      002C99 86 82            [24]  627 	mov	dpl,@r0
      002C9B 08               [12]  628 	inc	r0
      002C9C 86 83            [24]  629 	mov	dph,@r0
      002C9E 08               [12]  630 	inc	r0
      002C9F 86 F0            [24]  631 	mov	b,@r0
      002CA1 12 70 DA         [24]  632 	lcall	__gptrget
      002CA4 FA               [12]  633 	mov	r2,a
      002CA5 A3               [24]  634 	inc	dptr
      002CA6 12 70 DA         [24]  635 	lcall	__gptrget
      002CA9 FB               [12]  636 	mov	r3,a
      002CAA 33               [12]  637 	rlc	a
      002CAB 95 E0            [12]  638 	subb	a,acc
      002CAD FE               [12]  639 	mov	r6,a
      002CAE FF               [12]  640 	mov	r7,a
      002CAF C0 02            [24]  641 	push	ar2
      002CB1 C0 03            [24]  642 	push	ar3
      002CB3 C0 06            [24]  643 	push	ar6
      002CB5 C0 07            [24]  644 	push	ar7
      002CB7 E5 08            [12]  645 	mov	a,_bp
      002CB9 24 04            [12]  646 	add	a,#0x04
      002CBB F8               [12]  647 	mov	r0,a
      002CBC 86 82            [24]  648 	mov	dpl,@r0
      002CBE 08               [12]  649 	inc	r0
      002CBF 86 83            [24]  650 	mov	dph,@r0
      002CC1 08               [12]  651 	inc	r0
      002CC2 86 F0            [24]  652 	mov	b,@r0
      002CC4 08               [12]  653 	inc	r0
      002CC5 E6               [12]  654 	mov	a,@r0
      002CC6 12 74 D3         [24]  655 	lcall	__mullong
      002CC9 AC 82            [24]  656 	mov	r4,dpl
      002CCB AD 83            [24]  657 	mov	r5,dph
      002CCD AE F0            [24]  658 	mov	r6,b
      002CCF FF               [12]  659 	mov	r7,a
      002CD0 E5 81            [12]  660 	mov	a,sp
      002CD2 24 FC            [12]  661 	add	a,#0xfc
      002CD4 F5 81            [12]  662 	mov	sp,a
      002CD6 E5 08            [12]  663 	mov	a,_bp
      002CD8 24 0B            [12]  664 	add	a,#0x0b
      002CDA F8               [12]  665 	mov	r0,a
      002CDB E6               [12]  666 	mov	a,@r0
      002CDC 2C               [12]  667 	add	a,r4
      002CDD FC               [12]  668 	mov	r4,a
      002CDE 08               [12]  669 	inc	r0
      002CDF E6               [12]  670 	mov	a,@r0
      002CE0 3D               [12]  671 	addc	a,r5
      002CE1 FD               [12]  672 	mov	r5,a
      002CE2 08               [12]  673 	inc	r0
      002CE3 E6               [12]  674 	mov	a,@r0
      002CE4 3E               [12]  675 	addc	a,r6
      002CE5 FE               [12]  676 	mov	r6,a
      002CE6 08               [12]  677 	inc	r0
      002CE7 E6               [12]  678 	mov	a,@r0
      002CE8 3F               [12]  679 	addc	a,r7
      002CE9 FF               [12]  680 	mov	r7,a
      002CEA A8 08            [24]  681 	mov	r0,_bp
      002CEC 08               [12]  682 	inc	r0
      002CED 86 82            [24]  683 	mov	dpl,@r0
      002CEF 08               [12]  684 	inc	r0
      002CF0 86 83            [24]  685 	mov	dph,@r0
      002CF2 08               [12]  686 	inc	r0
      002CF3 86 F0            [24]  687 	mov	b,@r0
      002CF5 EC               [12]  688 	mov	a,r4
      002CF6 12 6C 5F         [24]  689 	lcall	__gptrput
      002CF9 A3               [24]  690 	inc	dptr
      002CFA ED               [12]  691 	mov	a,r5
      002CFB 12 6C 5F         [24]  692 	lcall	__gptrput
      002CFE A3               [24]  693 	inc	dptr
      002CFF EE               [12]  694 	mov	a,r6
      002D00 12 6C 5F         [24]  695 	lcall	__gptrput
      002D03 A3               [24]  696 	inc	dptr
      002D04 EF               [12]  697 	mov	a,r7
      002D05 12 6C 5F         [24]  698 	lcall	__gptrput
                                    699 ;	calc.c:93: return 1;
      002D08 90 00 01         [24]  700 	mov	dptr,#0x0001
                                    701 ;	calc.c:94: }
      002D0B 85 08 81         [24]  702 	mov	sp,_bp
      002D0E D0 08            [24]  703 	pop	_bp
      002D10 22               [24]  704 	ret
                                    705 ;------------------------------------------------------------
                                    706 ;Allocation info for local variables in function 'dump_pop'
                                    707 ;------------------------------------------------------------
                                    708 ;delta                     Allocated to stack - _bp -5
                                    709 ;_ctx                      Allocated to registers r5 r6 r7 
                                    710 ;ctx                       Allocated to stack - _bp +11
                                    711 ;d                         Allocated to stack - _bp +14
                                    712 ;r                         Allocated to registers r5 r6 
                                    713 ;__1310720003              Allocated to registers 
                                    714 ;s                         Allocated to registers r5 r6 r7 
                                    715 ;__1966080005              Allocated to registers 
                                    716 ;s                         Allocated to registers r4 r5 r6 
                                    717 ;__1966080007              Allocated to registers 
                                    718 ;s                         Allocated to registers r3 r4 r5 
                                    719 ;__1966080009              Allocated to stack - _bp +18
                                    720 ;d                         Allocated to registers r3 r4 r5 r6 
                                    721 ;__1310720001              Allocated to registers 
                                    722 ;d                         Allocated to stack - _bp +22
                                    723 ;mask                      Allocated to stack - _bp +26
                                    724 ;__1966080011              Allocated to registers 
                                    725 ;s                         Allocated to registers r3 r4 r5 
                                    726 ;__1966080013              Allocated to registers 
                                    727 ;s                         Allocated to registers r4 r5 r6 
                                    728 ;__3276800015              Allocated to registers 
                                    729 ;s                         Allocated to registers r5 r3 r2 
                                    730 ;__3276800017              Allocated to stack - _bp +18
                                    731 ;d                         Allocated to registers r2 r3 r4 r7 
                                    732 ;__1310720001              Allocated to registers 
                                    733 ;d                         Allocated to stack - _bp +22
                                    734 ;mask                      Allocated to stack - _bp +26
                                    735 ;__3276800019              Allocated to registers 
                                    736 ;s                         Allocated to registers r5 r3 r2 
                                    737 ;sloc0                     Allocated to stack - _bp +1
                                    738 ;sloc1                     Allocated to stack - _bp +2
                                    739 ;sloc2                     Allocated to stack - _bp +5
                                    740 ;sloc3                     Allocated to stack - _bp +8
                                    741 ;------------------------------------------------------------
                                    742 ;	calc.c:96: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    743 ;	-----------------------------------------
                                    744 ;	 function dump_pop
                                    745 ;	-----------------------------------------
      002D11                        746 _dump_pop:
      002D11 C0 08            [24]  747 	push	_bp
      002D13 E5 81            [12]  748 	mov	a,sp
      002D15 F5 08            [12]  749 	mov	_bp,a
      002D17 24 1D            [12]  750 	add	a,#0x1d
      002D19 F5 81            [12]  751 	mov	sp,a
      002D1B AD 82            [24]  752 	mov	r5,dpl
      002D1D AE 83            [24]  753 	mov	r6,dph
      002D1F AF F0            [24]  754 	mov	r7,b
                                    755 ;	calc.c:97: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002D21 E5 08            [12]  756 	mov	a,_bp
      002D23 24 0B            [12]  757 	add	a,#0x0b
      002D25 F8               [12]  758 	mov	r0,a
      002D26 A6 05            [24]  759 	mov	@r0,ar5
      002D28 08               [12]  760 	inc	r0
      002D29 A6 06            [24]  761 	mov	@r0,ar6
      002D2B 08               [12]  762 	inc	r0
      002D2C A6 07            [24]  763 	mov	@r0,ar7
                                    764 ;	calc.c:101: if (delta->event == EVENT_TERM) printstr("\r\n");
      002D2E E5 08            [12]  765 	mov	a,_bp
      002D30 24 FB            [12]  766 	add	a,#0xfb
      002D32 F8               [12]  767 	mov	r0,a
      002D33 86 02            [24]  768 	mov	ar2,@r0
      002D35 08               [12]  769 	inc	r0
      002D36 86 03            [24]  770 	mov	ar3,@r0
      002D38 08               [12]  771 	inc	r0
      002D39 86 04            [24]  772 	mov	ar4,@r0
      002D3B E5 08            [12]  773 	mov	a,_bp
      002D3D 24 08            [12]  774 	add	a,#0x08
      002D3F F8               [12]  775 	mov	r0,a
      002D40 74 02            [12]  776 	mov	a,#0x02
      002D42 2A               [12]  777 	add	a,r2
      002D43 F6               [12]  778 	mov	@r0,a
      002D44 E4               [12]  779 	clr	a
      002D45 3B               [12]  780 	addc	a,r3
      002D46 08               [12]  781 	inc	r0
      002D47 F6               [12]  782 	mov	@r0,a
      002D48 08               [12]  783 	inc	r0
      002D49 A6 04            [24]  784 	mov	@r0,ar4
      002D4B E5 08            [12]  785 	mov	a,_bp
      002D4D 24 08            [12]  786 	add	a,#0x08
      002D4F F8               [12]  787 	mov	r0,a
      002D50 86 82            [24]  788 	mov	dpl,@r0
      002D52 08               [12]  789 	inc	r0
      002D53 86 83            [24]  790 	mov	dph,@r0
      002D55 08               [12]  791 	inc	r0
      002D56 86 F0            [24]  792 	mov	b,@r0
      002D58 12 70 DA         [24]  793 	lcall	__gptrget
      002D5B FE               [12]  794 	mov	r6,a
      002D5C A3               [24]  795 	inc	dptr
      002D5D 12 70 DA         [24]  796 	lcall	__gptrget
      002D60 FF               [12]  797 	mov	r7,a
      002D61 BE 08 27         [24]  798 	cjne	r6,#0x08,00102$
      002D64 BF 00 24         [24]  799 	cjne	r7,#0x00,00102$
      002D67 7D 72            [12]  800 	mov	r5,#___str_3
      002D69 7E 89            [12]  801 	mov	r6,#(___str_3 >> 8)
      002D6B 7F 80            [12]  802 	mov	r7,#0x80
                                    803 ;	calc.c:58: return;
      002D6D                        804 00135$:
                                    805 ;	calc.c:56: for (; *s; s++) putchar(*s);
      002D6D 8D 82            [24]  806 	mov	dpl,r5
      002D6F 8E 83            [24]  807 	mov	dph,r6
      002D71 8F F0            [24]  808 	mov	b,r7
      002D73 12 70 DA         [24]  809 	lcall	__gptrget
      002D76 FC               [12]  810 	mov	r4,a
      002D77 60 12            [24]  811 	jz	00102$
      002D79 8C 03            [24]  812 	mov	ar3,r4
      002D7B 7C 00            [12]  813 	mov	r4,#0x00
      002D7D 8B 82            [24]  814 	mov	dpl,r3
      002D7F 8C 83            [24]  815 	mov	dph,r4
      002D81 12 2B 70         [24]  816 	lcall	_putchar
      002D84 0D               [12]  817 	inc	r5
                                    818 ;	calc.c:101: if (delta->event == EVENT_TERM) printstr("\r\n");
      002D85 BD 00 E5         [24]  819 	cjne	r5,#0x00,00135$
      002D88 0E               [12]  820 	inc	r6
      002D89 80 E2            [24]  821 	sjmp	00135$
      002D8B                        822 00102$:
                                    823 ;	calc.c:102: r = stack_pop(ctx->ps, &d);
      002D8B E5 08            [12]  824 	mov	a,_bp
      002D8D 24 0E            [12]  825 	add	a,#0x0e
      002D8F FF               [12]  826 	mov	r7,a
      002D90 E5 08            [12]  827 	mov	a,_bp
      002D92 24 05            [12]  828 	add	a,#0x05
      002D94 F8               [12]  829 	mov	r0,a
      002D95 A6 07            [24]  830 	mov	@r0,ar7
      002D97 08               [12]  831 	inc	r0
      002D98 76 00            [12]  832 	mov	@r0,#0x00
      002D9A 08               [12]  833 	inc	r0
      002D9B 76 40            [12]  834 	mov	@r0,#0x40
      002D9D E5 08            [12]  835 	mov	a,_bp
      002D9F 24 0B            [12]  836 	add	a,#0x0b
      002DA1 F8               [12]  837 	mov	r0,a
      002DA2 A9 08            [24]  838 	mov	r1,_bp
      002DA4 09               [12]  839 	inc	r1
      002DA5 09               [12]  840 	inc	r1
      002DA6 74 11            [12]  841 	mov	a,#0x11
      002DA8 26               [12]  842 	add	a,@r0
      002DA9 F7               [12]  843 	mov	@r1,a
      002DAA 74 40            [12]  844 	mov	a,#0x40
      002DAC 08               [12]  845 	inc	r0
      002DAD 36               [12]  846 	addc	a,@r0
      002DAE 09               [12]  847 	inc	r1
      002DAF F7               [12]  848 	mov	@r1,a
      002DB0 08               [12]  849 	inc	r0
      002DB1 09               [12]  850 	inc	r1
      002DB2 E6               [12]  851 	mov	a,@r0
      002DB3 F7               [12]  852 	mov	@r1,a
      002DB4 A8 08            [24]  853 	mov	r0,_bp
      002DB6 08               [12]  854 	inc	r0
      002DB7 08               [12]  855 	inc	r0
      002DB8 86 82            [24]  856 	mov	dpl,@r0
      002DBA 08               [12]  857 	inc	r0
      002DBB 86 83            [24]  858 	mov	dph,@r0
      002DBD 08               [12]  859 	inc	r0
      002DBE 86 F0            [24]  860 	mov	b,@r0
      002DC0 12 70 DA         [24]  861 	lcall	__gptrget
      002DC3 FA               [12]  862 	mov	r2,a
      002DC4 A3               [24]  863 	inc	dptr
      002DC5 12 70 DA         [24]  864 	lcall	__gptrget
      002DC8 FB               [12]  865 	mov	r3,a
      002DC9 A3               [24]  866 	inc	dptr
      002DCA 12 70 DA         [24]  867 	lcall	__gptrget
      002DCD FE               [12]  868 	mov	r6,a
      002DCE C0 07            [24]  869 	push	ar7
      002DD0 E5 08            [12]  870 	mov	a,_bp
      002DD2 24 05            [12]  871 	add	a,#0x05
      002DD4 F8               [12]  872 	mov	r0,a
      002DD5 E6               [12]  873 	mov	a,@r0
      002DD6 C0 E0            [24]  874 	push	acc
      002DD8 08               [12]  875 	inc	r0
      002DD9 E6               [12]  876 	mov	a,@r0
      002DDA C0 E0            [24]  877 	push	acc
      002DDC 08               [12]  878 	inc	r0
      002DDD E6               [12]  879 	mov	a,@r0
      002DDE C0 E0            [24]  880 	push	acc
      002DE0 8A 82            [24]  881 	mov	dpl,r2
      002DE2 8B 83            [24]  882 	mov	dph,r3
      002DE4 8E F0            [24]  883 	mov	b,r6
      002DE6 12 27 83         [24]  884 	lcall	_stack_pop
      002DE9 AE 82            [24]  885 	mov	r6,dpl
      002DEB AD 83            [24]  886 	mov	r5,dph
      002DED 15 81            [12]  887 	dec	sp
      002DEF 15 81            [12]  888 	dec	sp
      002DF1 15 81            [12]  889 	dec	sp
      002DF3 D0 07            [24]  890 	pop	ar7
                                    891 ;	calc.c:103: if (!r) {
      002DF5 EE               [12]  892 	mov	a,r6
      002DF6 4D               [12]  893 	orl	a,r5
      002DF7 70 44            [24]  894 	jnz	00183$
                                    895 ;	calc.c:104: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002DF9 E5 08            [12]  896 	mov	a,_bp
      002DFB 24 08            [12]  897 	add	a,#0x08
      002DFD F8               [12]  898 	mov	r0,a
      002DFE 86 82            [24]  899 	mov	dpl,@r0
      002E00 08               [12]  900 	inc	r0
      002E01 86 83            [24]  901 	mov	dph,@r0
      002E03 08               [12]  902 	inc	r0
      002E04 86 F0            [24]  903 	mov	b,@r0
      002E06 12 70 DA         [24]  904 	lcall	__gptrget
      002E09 FD               [12]  905 	mov	r5,a
      002E0A A3               [24]  906 	inc	dptr
      002E0B 12 70 DA         [24]  907 	lcall	__gptrget
      002E0E FE               [12]  908 	mov	r6,a
      002E0F BD 08 06         [24]  909 	cjne	r5,#0x08,00320$
      002E12 BE 00 03         [24]  910 	cjne	r6,#0x00,00320$
      002E15 02 30 1C         [24]  911 	ljmp	00110$
      002E18                        912 00320$:
      002E18 7C 75            [12]  913 	mov	r4,#___str_4
      002E1A 7D 89            [12]  914 	mov	r5,#(___str_4 >> 8)
      002E1C 7E 80            [12]  915 	mov	r6,#0x80
                                    916 ;	calc.c:58: return;
      002E1E                        917 00138$:
                                    918 ;	calc.c:56: for (; *s; s++) putchar(*s);
      002E1E 8C 82            [24]  919 	mov	dpl,r4
      002E20 8D 83            [24]  920 	mov	dph,r5
      002E22 8E F0            [24]  921 	mov	b,r6
      002E24 12 70 DA         [24]  922 	lcall	__gptrget
      002E27 FB               [12]  923 	mov	r3,a
      002E28 70 03            [24]  924 	jnz	00321$
      002E2A 02 30 1C         [24]  925 	ljmp	00110$
      002E2D                        926 00321$:
      002E2D 7A 00            [12]  927 	mov	r2,#0x00
      002E2F 8B 82            [24]  928 	mov	dpl,r3
      002E31 8A 83            [24]  929 	mov	dph,r2
      002E33 12 2B 70         [24]  930 	lcall	_putchar
      002E36 0C               [12]  931 	inc	r4
                                    932 ;	calc.c:105: } else while (r > 0) {
      002E37 BC 00 E4         [24]  933 	cjne	r4,#0x00,00138$
      002E3A 0D               [12]  934 	inc	r5
      002E3B 80 E1            [24]  935 	sjmp	00138$
      002E3D                        936 00183$:
      002E3D A8 08            [24]  937 	mov	r0,_bp
      002E3F 08               [12]  938 	inc	r0
      002E40 A6 07            [24]  939 	mov	@r0,ar7
      002E42                        940 00105$:
      002E42 C3               [12]  941 	clr	c
      002E43 E4               [12]  942 	clr	a
      002E44 9E               [12]  943 	subb	a,r6
      002E45 74 80            [12]  944 	mov	a,#(0x00 ^ 0x80)
      002E47 8D F0            [24]  945 	mov	b,r5
      002E49 63 F0 80         [24]  946 	xrl	b,#0x80
      002E4C 95 F0            [12]  947 	subb	a,b
      002E4E 40 03            [24]  948 	jc	00323$
      002E50 02 30 1C         [24]  949 	ljmp	00110$
      002E53                        950 00323$:
                                    951 ;	calc.c:106: printstr("PSPA\t");
      002E53 7B 87            [12]  952 	mov	r3,#___str_5
      002E55 7C 89            [12]  953 	mov	r4,#(___str_5 >> 8)
      002E57 7D 80            [12]  954 	mov	r5,#0x80
                                    955 ;	calc.c:58: return;
      002E59                        956 00141$:
                                    957 ;	calc.c:56: for (; *s; s++) putchar(*s);
      002E59 8B 82            [24]  958 	mov	dpl,r3
      002E5B 8C 83            [24]  959 	mov	dph,r4
      002E5D 8D F0            [24]  960 	mov	b,r5
      002E5F 12 70 DA         [24]  961 	lcall	__gptrget
      002E62 FA               [12]  962 	mov	r2,a
      002E63 60 10            [24]  963 	jz	00119$
      002E65 7E 00            [12]  964 	mov	r6,#0x00
      002E67 8A 82            [24]  965 	mov	dpl,r2
      002E69 8E 83            [24]  966 	mov	dph,r6
      002E6B 12 2B 70         [24]  967 	lcall	_putchar
      002E6E 0B               [12]  968 	inc	r3
                                    969 ;	calc.c:106: printstr("PSPA\t");
      002E6F BB 00 E7         [24]  970 	cjne	r3,#0x00,00141$
      002E72 0C               [12]  971 	inc	r4
      002E73 80 E4            [24]  972 	sjmp	00141$
      002E75                        973 00119$:
                                    974 ;	calc.c:107: printall(d);
      002E75 E5 08            [12]  975 	mov	a,_bp
      002E77 24 0E            [12]  976 	add	a,#0x0e
      002E79 F8               [12]  977 	mov	r0,a
      002E7A E5 08            [12]  978 	mov	a,_bp
      002E7C 24 12            [12]  979 	add	a,#0x12
      002E7E F9               [12]  980 	mov	r1,a
      002E7F E6               [12]  981 	mov	a,@r0
      002E80 F7               [12]  982 	mov	@r1,a
      002E81 08               [12]  983 	inc	r0
      002E82 09               [12]  984 	inc	r1
      002E83 E6               [12]  985 	mov	a,@r0
      002E84 F7               [12]  986 	mov	@r1,a
      002E85 08               [12]  987 	inc	r0
      002E86 09               [12]  988 	inc	r1
      002E87 E6               [12]  989 	mov	a,@r0
      002E88 F7               [12]  990 	mov	@r1,a
      002E89 08               [12]  991 	inc	r0
      002E8A 09               [12]  992 	inc	r1
      002E8B E6               [12]  993 	mov	a,@r0
      002E8C F7               [12]  994 	mov	@r1,a
      002E8D E5 08            [12]  995 	mov	a,_bp
      002E8F 24 12            [12]  996 	add	a,#0x12
      002E91 F8               [12]  997 	mov	r0,a
      002E92 86 03            [24]  998 	mov	ar3,@r0
      002E94 08               [12]  999 	inc	r0
      002E95 86 04            [24] 1000 	mov	ar4,@r0
      002E97 08               [12] 1001 	inc	r0
      002E98 86 05            [24] 1002 	mov	ar5,@r0
      002E9A 08               [12] 1003 	inc	r0
      002E9B 86 06            [24] 1004 	mov	ar6,@r0
                                   1005 ;	calc.c:71: printf("%08lx\t", d);
      002E9D C0 07            [24] 1006 	push	ar7
      002E9F C0 06            [24] 1007 	push	ar6
      002EA1 C0 05            [24] 1008 	push	ar5
      002EA3 C0 04            [24] 1009 	push	ar4
      002EA5 C0 03            [24] 1010 	push	ar3
      002EA7 E5 08            [12] 1011 	mov	a,_bp
      002EA9 24 12            [12] 1012 	add	a,#0x12
      002EAB F8               [12] 1013 	mov	r0,a
      002EAC E6               [12] 1014 	mov	a,@r0
      002EAD C0 E0            [24] 1015 	push	acc
      002EAF 08               [12] 1016 	inc	r0
      002EB0 E6               [12] 1017 	mov	a,@r0
      002EB1 C0 E0            [24] 1018 	push	acc
      002EB3 08               [12] 1019 	inc	r0
      002EB4 E6               [12] 1020 	mov	a,@r0
      002EB5 C0 E0            [24] 1021 	push	acc
      002EB7 08               [12] 1022 	inc	r0
      002EB8 E6               [12] 1023 	mov	a,@r0
      002EB9 C0 E0            [24] 1024 	push	acc
      002EBB 74 5B            [12] 1025 	mov	a,#___str_0
      002EBD C0 E0            [24] 1026 	push	acc
      002EBF 74 89            [12] 1027 	mov	a,#(___str_0 >> 8)
      002EC1 C0 E0            [24] 1028 	push	acc
      002EC3 74 80            [12] 1029 	mov	a,#0x80
      002EC5 C0 E0            [24] 1030 	push	acc
      002EC7 12 70 A1         [24] 1031 	lcall	_printf
      002ECA E5 81            [12] 1032 	mov	a,sp
      002ECC 24 F9            [12] 1033 	add	a,#0xf9
      002ECE F5 81            [12] 1034 	mov	sp,a
      002ED0 D0 03            [24] 1035 	pop	ar3
      002ED2 D0 04            [24] 1036 	pop	ar4
      002ED4 D0 05            [24] 1037 	pop	ar5
      002ED6 D0 06            [24] 1038 	pop	ar6
                                   1039 ;	calc.c:72: printf("% 11ld\t", d);
      002ED8 C0 06            [24] 1040 	push	ar6
      002EDA C0 05            [24] 1041 	push	ar5
      002EDC C0 04            [24] 1042 	push	ar4
      002EDE C0 03            [24] 1043 	push	ar3
      002EE0 C0 03            [24] 1044 	push	ar3
      002EE2 C0 04            [24] 1045 	push	ar4
      002EE4 C0 05            [24] 1046 	push	ar5
      002EE6 C0 06            [24] 1047 	push	ar6
      002EE8 74 62            [12] 1048 	mov	a,#___str_1
      002EEA C0 E0            [24] 1049 	push	acc
      002EEC 74 89            [12] 1050 	mov	a,#(___str_1 >> 8)
      002EEE C0 E0            [24] 1051 	push	acc
      002EF0 74 80            [12] 1052 	mov	a,#0x80
      002EF2 C0 E0            [24] 1053 	push	acc
      002EF4 12 70 A1         [24] 1054 	lcall	_printf
      002EF7 E5 81            [12] 1055 	mov	a,sp
      002EF9 24 F9            [12] 1056 	add	a,#0xf9
      002EFB F5 81            [12] 1057 	mov	sp,a
      002EFD D0 03            [24] 1058 	pop	ar3
      002EFF D0 04            [24] 1059 	pop	ar4
      002F01 D0 05            [24] 1060 	pop	ar5
      002F03 D0 06            [24] 1061 	pop	ar6
                                   1062 ;	calc.c:73: printf("%011lo\t", d);
      002F05 C0 06            [24] 1063 	push	ar6
      002F07 C0 05            [24] 1064 	push	ar5
      002F09 C0 04            [24] 1065 	push	ar4
      002F0B C0 03            [24] 1066 	push	ar3
      002F0D C0 03            [24] 1067 	push	ar3
      002F0F C0 04            [24] 1068 	push	ar4
      002F11 C0 05            [24] 1069 	push	ar5
      002F13 C0 06            [24] 1070 	push	ar6
      002F15 74 6A            [12] 1071 	mov	a,#___str_2
      002F17 C0 E0            [24] 1072 	push	acc
      002F19 74 89            [12] 1073 	mov	a,#(___str_2 >> 8)
      002F1B C0 E0            [24] 1074 	push	acc
      002F1D 74 80            [12] 1075 	mov	a,#0x80
      002F1F C0 E0            [24] 1076 	push	acc
      002F21 12 70 A1         [24] 1077 	lcall	_printf
      002F24 E5 81            [12] 1078 	mov	a,sp
      002F26 24 F9            [12] 1079 	add	a,#0xf9
      002F28 F5 81            [12] 1080 	mov	sp,a
      002F2A D0 03            [24] 1081 	pop	ar3
      002F2C D0 04            [24] 1082 	pop	ar4
      002F2E D0 05            [24] 1083 	pop	ar5
      002F30 D0 06            [24] 1084 	pop	ar6
      002F32 D0 07            [24] 1085 	pop	ar7
                                   1086 ;	calc.c:74: printbin(d);
      002F34 E5 08            [12] 1087 	mov	a,_bp
      002F36 24 16            [12] 1088 	add	a,#0x16
      002F38 F8               [12] 1089 	mov	r0,a
      002F39 A6 03            [24] 1090 	mov	@r0,ar3
      002F3B 08               [12] 1091 	inc	r0
      002F3C A6 04            [24] 1092 	mov	@r0,ar4
      002F3E 08               [12] 1093 	inc	r0
      002F3F A6 05            [24] 1094 	mov	@r0,ar5
      002F41 08               [12] 1095 	inc	r0
      002F42 A6 06            [24] 1096 	mov	@r0,ar6
                                   1097 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F44 E5 08            [12] 1098 	mov	a,_bp
      002F46 24 1A            [12] 1099 	add	a,#0x1a
      002F48 F8               [12] 1100 	mov	r0,a
      002F49 E4               [12] 1101 	clr	a
      002F4A F6               [12] 1102 	mov	@r0,a
      002F4B 08               [12] 1103 	inc	r0
      002F4C F6               [12] 1104 	mov	@r0,a
      002F4D 08               [12] 1105 	inc	r0
      002F4E F6               [12] 1106 	mov	@r0,a
      002F4F 08               [12] 1107 	inc	r0
      002F50 76 80            [12] 1108 	mov	@r0,#0x80
                                   1109 ;	calc.c:121: return 1;
                                   1110 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F52                       1111 00143$:
                                   1112 ;	calc.c:65: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002F52 E5 08            [12] 1113 	mov	a,_bp
      002F54 24 16            [12] 1114 	add	a,#0x16
      002F56 F8               [12] 1115 	mov	r0,a
      002F57 86 02            [24] 1116 	mov	ar2,@r0
      002F59 08               [12] 1117 	inc	r0
      002F5A 86 03            [24] 1118 	mov	ar3,@r0
      002F5C 08               [12] 1119 	inc	r0
      002F5D 86 04            [24] 1120 	mov	ar4,@r0
      002F5F 08               [12] 1121 	inc	r0
      002F60 86 05            [24] 1122 	mov	ar5,@r0
      002F62 E5 08            [12] 1123 	mov	a,_bp
      002F64 24 1A            [12] 1124 	add	a,#0x1a
      002F66 F8               [12] 1125 	mov	r0,a
      002F67 E6               [12] 1126 	mov	a,@r0
      002F68 52 02            [12] 1127 	anl	ar2,a
      002F6A 08               [12] 1128 	inc	r0
      002F6B E6               [12] 1129 	mov	a,@r0
      002F6C 52 03            [12] 1130 	anl	ar3,a
      002F6E 08               [12] 1131 	inc	r0
      002F6F E6               [12] 1132 	mov	a,@r0
      002F70 52 04            [12] 1133 	anl	ar4,a
      002F72 08               [12] 1134 	inc	r0
      002F73 E6               [12] 1135 	mov	a,@r0
      002F74 52 05            [12] 1136 	anl	ar5,a
      002F76 EA               [12] 1137 	mov	a,r2
      002F77 4B               [12] 1138 	orl	a,r3
      002F78 4C               [12] 1139 	orl	a,r4
      002F79 4D               [12] 1140 	orl	a,r5
      002F7A 60 06            [24] 1141 	jz	00164$
      002F7C 7C 31            [12] 1142 	mov	r4,#0x31
      002F7E 7D 00            [12] 1143 	mov	r5,#0x00
      002F80 80 04            [24] 1144 	sjmp	00165$
      002F82                       1145 00164$:
      002F82 7C 30            [12] 1146 	mov	r4,#0x30
      002F84 7D 00            [12] 1147 	mov	r5,#0x00
      002F86                       1148 00165$:
      002F86 8C 82            [24] 1149 	mov	dpl,r4
      002F88 8D 83            [24] 1150 	mov	dph,r5
      002F8A 12 2B 70         [24] 1151 	lcall	_putchar
                                   1152 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F8D E5 08            [12] 1153 	mov	a,_bp
      002F8F 24 1A            [12] 1154 	add	a,#0x1a
      002F91 F8               [12] 1155 	mov	r0,a
      002F92 08               [12] 1156 	inc	r0
      002F93 08               [12] 1157 	inc	r0
      002F94 08               [12] 1158 	inc	r0
      002F95 E6               [12] 1159 	mov	a,@r0
      002F96 C3               [12] 1160 	clr	c
      002F97 13               [12] 1161 	rrc	a
      002F98 F6               [12] 1162 	mov	@r0,a
      002F99 18               [12] 1163 	dec	r0
      002F9A E6               [12] 1164 	mov	a,@r0
      002F9B 13               [12] 1165 	rrc	a
      002F9C F6               [12] 1166 	mov	@r0,a
      002F9D 18               [12] 1167 	dec	r0
      002F9E E6               [12] 1168 	mov	a,@r0
      002F9F 13               [12] 1169 	rrc	a
      002FA0 F6               [12] 1170 	mov	@r0,a
      002FA1 18               [12] 1171 	dec	r0
      002FA2 E6               [12] 1172 	mov	a,@r0
      002FA3 13               [12] 1173 	rrc	a
      002FA4 F6               [12] 1174 	mov	@r0,a
      002FA5 E5 08            [12] 1175 	mov	a,_bp
      002FA7 24 1A            [12] 1176 	add	a,#0x1a
      002FA9 F8               [12] 1177 	mov	r0,a
      002FAA E6               [12] 1178 	mov	a,@r0
      002FAB 08               [12] 1179 	inc	r0
      002FAC 46               [12] 1180 	orl	a,@r0
      002FAD 08               [12] 1181 	inc	r0
      002FAE 46               [12] 1182 	orl	a,@r0
      002FAF 08               [12] 1183 	inc	r0
      002FB0 46               [12] 1184 	orl	a,@r0
      002FB1 70 9F            [24] 1185 	jnz	00143$
                                   1186 ;	calc.c:108: printstr("\r\n");
      002FB3 7B 72            [12] 1187 	mov	r3,#___str_3
      002FB5 7C 89            [12] 1188 	mov	r4,#(___str_3 >> 8)
      002FB7 7D 80            [12] 1189 	mov	r5,#0x80
                                   1190 ;	calc.c:58: return;
      002FB9                       1191 00146$:
                                   1192 ;	calc.c:56: for (; *s; s++) putchar(*s);
      002FB9 8B 82            [24] 1193 	mov	dpl,r3
      002FBB 8C 83            [24] 1194 	mov	dph,r4
      002FBD 8D F0            [24] 1195 	mov	b,r5
      002FBF 12 70 DA         [24] 1196 	lcall	__gptrget
      002FC2 FA               [12] 1197 	mov	r2,a
      002FC3 60 10            [24] 1198 	jz	00124$
      002FC5 7E 00            [12] 1199 	mov	r6,#0x00
      002FC7 8A 82            [24] 1200 	mov	dpl,r2
      002FC9 8E 83            [24] 1201 	mov	dph,r6
      002FCB 12 2B 70         [24] 1202 	lcall	_putchar
      002FCE 0B               [12] 1203 	inc	r3
                                   1204 ;	calc.c:108: printstr("\r\n");
      002FCF BB 00 E7         [24] 1205 	cjne	r3,#0x00,00146$
      002FD2 0C               [12] 1206 	inc	r4
      002FD3 80 E4            [24] 1207 	sjmp	00146$
      002FD5                       1208 00124$:
                                   1209 ;	calc.c:109: r = stack_pop(ctx->ps, &d);
      002FD5 C0 07            [24] 1210 	push	ar7
      002FD7 A8 08            [24] 1211 	mov	r0,_bp
      002FD9 08               [12] 1212 	inc	r0
      002FDA 86 03            [24] 1213 	mov	ar3,@r0
      002FDC 7C 00            [12] 1214 	mov	r4,#0x00
      002FDE 7D 40            [12] 1215 	mov	r5,#0x40
      002FE0 A8 08            [24] 1216 	mov	r0,_bp
      002FE2 08               [12] 1217 	inc	r0
      002FE3 08               [12] 1218 	inc	r0
      002FE4 86 82            [24] 1219 	mov	dpl,@r0
      002FE6 08               [12] 1220 	inc	r0
      002FE7 86 83            [24] 1221 	mov	dph,@r0
      002FE9 08               [12] 1222 	inc	r0
      002FEA 86 F0            [24] 1223 	mov	b,@r0
      002FEC 12 70 DA         [24] 1224 	lcall	__gptrget
      002FEF FA               [12] 1225 	mov	r2,a
      002FF0 A3               [24] 1226 	inc	dptr
      002FF1 12 70 DA         [24] 1227 	lcall	__gptrget
      002FF4 FE               [12] 1228 	mov	r6,a
      002FF5 A3               [24] 1229 	inc	dptr
      002FF6 12 70 DA         [24] 1230 	lcall	__gptrget
      002FF9 FF               [12] 1231 	mov	r7,a
      002FFA C0 07            [24] 1232 	push	ar7
      002FFC C0 03            [24] 1233 	push	ar3
      002FFE C0 04            [24] 1234 	push	ar4
      003000 C0 05            [24] 1235 	push	ar5
      003002 8A 82            [24] 1236 	mov	dpl,r2
      003004 8E 83            [24] 1237 	mov	dph,r6
      003006 8F F0            [24] 1238 	mov	b,r7
      003008 12 27 83         [24] 1239 	lcall	_stack_pop
      00300B AE 82            [24] 1240 	mov	r6,dpl
      00300D AD 83            [24] 1241 	mov	r5,dph
      00300F 15 81            [12] 1242 	dec	sp
      003011 15 81            [12] 1243 	dec	sp
      003013 15 81            [12] 1244 	dec	sp
      003015 D0 07            [24] 1245 	pop	ar7
      003017 D0 07            [24] 1246 	pop	ar7
      003019 02 2E 42         [24] 1247 	ljmp	00105$
      00301C                       1248 00110$:
                                   1249 ;	calc.c:112: if (delta->event == EVENT_TERM) {
      00301C E5 08            [12] 1250 	mov	a,_bp
      00301E 24 08            [12] 1251 	add	a,#0x08
      003020 F8               [12] 1252 	mov	r0,a
      003021 86 82            [24] 1253 	mov	dpl,@r0
      003023 08               [12] 1254 	inc	r0
      003024 86 83            [24] 1255 	mov	dph,@r0
      003026 08               [12] 1256 	inc	r0
      003027 86 F0            [24] 1257 	mov	b,@r0
      003029 12 70 DA         [24] 1258 	lcall	__gptrget
      00302C FD               [12] 1259 	mov	r5,a
      00302D A3               [24] 1260 	inc	dptr
      00302E 12 70 DA         [24] 1261 	lcall	__gptrget
      003031 FE               [12] 1262 	mov	r6,a
      003032 BD 08 05         [24] 1263 	cjne	r5,#0x08,00330$
      003035 BE 00 02         [24] 1264 	cjne	r6,#0x00,00330$
      003038 80 03            [24] 1265 	sjmp	00331$
      00303A                       1266 00330$:
      00303A 02 32 B0         [24] 1267 	ljmp	00113$
      00303D                       1268 00331$:
                                   1269 ;	calc.c:113: printstr("\r\n");
      00303D 7C 72            [12] 1270 	mov	r4,#___str_3
      00303F 7D 89            [12] 1271 	mov	r5,#(___str_3 >> 8)
      003041 7E 80            [12] 1272 	mov	r6,#0x80
                                   1273 ;	calc.c:58: return;
      003043                       1274 00149$:
                                   1275 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003043 8C 82            [24] 1276 	mov	dpl,r4
      003045 8D 83            [24] 1277 	mov	dph,r5
      003047 8E F0            [24] 1278 	mov	b,r6
      003049 12 70 DA         [24] 1279 	lcall	__gptrget
      00304C FB               [12] 1280 	mov	r3,a
      00304D 60 10            [24] 1281 	jz	00126$
      00304F 7A 00            [12] 1282 	mov	r2,#0x00
      003051 8B 82            [24] 1283 	mov	dpl,r3
      003053 8A 83            [24] 1284 	mov	dph,r2
      003055 12 2B 70         [24] 1285 	lcall	_putchar
      003058 0C               [12] 1286 	inc	r4
                                   1287 ;	calc.c:113: printstr("\r\n");
      003059 BC 00 E7         [24] 1288 	cjne	r4,#0x00,00149$
      00305C 0D               [12] 1289 	inc	r5
      00305D 80 E4            [24] 1290 	sjmp	00149$
      00305F                       1291 00126$:
                                   1292 ;	calc.c:114: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      00305F 8F 06            [24] 1293 	mov	ar6,r7
      003061 E5 08            [12] 1294 	mov	a,_bp
      003063 24 05            [12] 1295 	add	a,#0x05
      003065 F8               [12] 1296 	mov	r0,a
      003066 A6 06            [24] 1297 	mov	@r0,ar6
      003068 08               [12] 1298 	inc	r0
      003069 76 00            [12] 1299 	mov	@r0,#0x00
      00306B 08               [12] 1300 	inc	r0
      00306C 76 40            [12] 1301 	mov	@r0,#0x40
      00306E E5 08            [12] 1302 	mov	a,_bp
      003070 24 0B            [12] 1303 	add	a,#0x0b
      003072 F8               [12] 1304 	mov	r0,a
      003073 E5 08            [12] 1305 	mov	a,_bp
      003075 24 08            [12] 1306 	add	a,#0x08
      003077 F9               [12] 1307 	mov	r1,a
      003078 74 14            [12] 1308 	mov	a,#0x14
      00307A 26               [12] 1309 	add	a,@r0
      00307B F7               [12] 1310 	mov	@r1,a
      00307C 74 40            [12] 1311 	mov	a,#0x40
      00307E 08               [12] 1312 	inc	r0
      00307F 36               [12] 1313 	addc	a,@r0
      003080 09               [12] 1314 	inc	r1
      003081 F7               [12] 1315 	mov	@r1,a
      003082 08               [12] 1316 	inc	r0
      003083 09               [12] 1317 	inc	r1
      003084 E6               [12] 1318 	mov	a,@r0
      003085 F7               [12] 1319 	mov	@r1,a
      003086 E5 08            [12] 1320 	mov	a,_bp
      003088 24 08            [12] 1321 	add	a,#0x08
      00308A F8               [12] 1322 	mov	r0,a
      00308B 86 82            [24] 1323 	mov	dpl,@r0
      00308D 08               [12] 1324 	inc	r0
      00308E 86 83            [24] 1325 	mov	dph,@r0
      003090 08               [12] 1326 	inc	r0
      003091 86 F0            [24] 1327 	mov	b,@r0
      003093 12 70 DA         [24] 1328 	lcall	__gptrget
      003096 FA               [12] 1329 	mov	r2,a
      003097 A3               [24] 1330 	inc	dptr
      003098 12 70 DA         [24] 1331 	lcall	__gptrget
      00309B FB               [12] 1332 	mov	r3,a
      00309C A3               [24] 1333 	inc	dptr
      00309D 12 70 DA         [24] 1334 	lcall	__gptrget
      0030A0 FE               [12] 1335 	mov	r6,a
      0030A1 C0 07            [24] 1336 	push	ar7
      0030A3 E5 08            [12] 1337 	mov	a,_bp
      0030A5 24 05            [12] 1338 	add	a,#0x05
      0030A7 F8               [12] 1339 	mov	r0,a
      0030A8 E6               [12] 1340 	mov	a,@r0
      0030A9 C0 E0            [24] 1341 	push	acc
      0030AB 08               [12] 1342 	inc	r0
      0030AC E6               [12] 1343 	mov	a,@r0
      0030AD C0 E0            [24] 1344 	push	acc
      0030AF 08               [12] 1345 	inc	r0
      0030B0 E6               [12] 1346 	mov	a,@r0
      0030B1 C0 E0            [24] 1347 	push	acc
      0030B3 8A 82            [24] 1348 	mov	dpl,r2
      0030B5 8B 83            [24] 1349 	mov	dph,r3
      0030B7 8E F0            [24] 1350 	mov	b,r6
      0030B9 12 27 83         [24] 1351 	lcall	_stack_pop
      0030BC AD 82            [24] 1352 	mov	r5,dpl
      0030BE AE 83            [24] 1353 	mov	r6,dph
      0030C0 15 81            [12] 1354 	dec	sp
      0030C2 15 81            [12] 1355 	dec	sp
      0030C4 15 81            [12] 1356 	dec	sp
      0030C6 D0 07            [24] 1357 	pop	ar7
      0030C8                       1358 00160$:
      0030C8 C3               [12] 1359 	clr	c
      0030C9 E4               [12] 1360 	clr	a
      0030CA 9D               [12] 1361 	subb	a,r5
      0030CB 74 80            [12] 1362 	mov	a,#(0x00 ^ 0x80)
      0030CD 8E F0            [24] 1363 	mov	b,r6
      0030CF 63 F0 80         [24] 1364 	xrl	b,#0x80
      0030D2 95 F0            [12] 1365 	subb	a,b
      0030D4 40 03            [24] 1366 	jc	00334$
      0030D6 02 32 B0         [24] 1367 	ljmp	00113$
      0030D9                       1368 00334$:
                                   1369 ;	calc.c:115: printstr("SSPA\t");
      0030D9 7D 8D            [12] 1370 	mov	r5,#___str_6
      0030DB 7B 89            [12] 1371 	mov	r3,#(___str_6 >> 8)
      0030DD 7A 80            [12] 1372 	mov	r2,#0x80
                                   1373 ;	calc.c:58: return;
      0030DF                       1374 00152$:
                                   1375 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0030DF 8D 82            [24] 1376 	mov	dpl,r5
      0030E1 8B 83            [24] 1377 	mov	dph,r3
      0030E3 8A F0            [24] 1378 	mov	b,r2
      0030E5 12 70 DA         [24] 1379 	lcall	__gptrget
      0030E8 FE               [12] 1380 	mov	r6,a
      0030E9 60 16            [24] 1381 	jz	00128$
      0030EB C0 07            [24] 1382 	push	ar7
      0030ED 8E 04            [24] 1383 	mov	ar4,r6
      0030EF 7F 00            [12] 1384 	mov	r7,#0x00
      0030F1 8C 82            [24] 1385 	mov	dpl,r4
      0030F3 8F 83            [24] 1386 	mov	dph,r7
      0030F5 12 2B 70         [24] 1387 	lcall	_putchar
      0030F8 0D               [12] 1388 	inc	r5
      0030F9 BD 00 01         [24] 1389 	cjne	r5,#0x00,00336$
      0030FC 0B               [12] 1390 	inc	r3
      0030FD                       1391 00336$:
      0030FD D0 07            [24] 1392 	pop	ar7
                                   1393 ;	calc.c:115: printstr("SSPA\t");
      0030FF 80 DE            [24] 1394 	sjmp	00152$
      003101                       1395 00128$:
                                   1396 ;	calc.c:116: printall(d);
      003101 C0 07            [24] 1397 	push	ar7
      003103 E5 08            [12] 1398 	mov	a,_bp
      003105 24 0E            [12] 1399 	add	a,#0x0e
      003107 F8               [12] 1400 	mov	r0,a
      003108 E5 08            [12] 1401 	mov	a,_bp
      00310A 24 12            [12] 1402 	add	a,#0x12
      00310C F9               [12] 1403 	mov	r1,a
      00310D E6               [12] 1404 	mov	a,@r0
      00310E F7               [12] 1405 	mov	@r1,a
      00310F 08               [12] 1406 	inc	r0
      003110 09               [12] 1407 	inc	r1
      003111 E6               [12] 1408 	mov	a,@r0
      003112 F7               [12] 1409 	mov	@r1,a
      003113 08               [12] 1410 	inc	r0
      003114 09               [12] 1411 	inc	r1
      003115 E6               [12] 1412 	mov	a,@r0
      003116 F7               [12] 1413 	mov	@r1,a
      003117 08               [12] 1414 	inc	r0
      003118 09               [12] 1415 	inc	r1
      003119 E6               [12] 1416 	mov	a,@r0
      00311A F7               [12] 1417 	mov	@r1,a
      00311B E5 08            [12] 1418 	mov	a,_bp
      00311D 24 12            [12] 1419 	add	a,#0x12
      00311F F8               [12] 1420 	mov	r0,a
      003120 86 02            [24] 1421 	mov	ar2,@r0
      003122 08               [12] 1422 	inc	r0
      003123 86 03            [24] 1423 	mov	ar3,@r0
      003125 08               [12] 1424 	inc	r0
      003126 86 04            [24] 1425 	mov	ar4,@r0
      003128 08               [12] 1426 	inc	r0
      003129 86 07            [24] 1427 	mov	ar7,@r0
                                   1428 ;	calc.c:71: printf("%08lx\t", d);
      00312B C0 07            [24] 1429 	push	ar7
      00312D C0 04            [24] 1430 	push	ar4
      00312F C0 03            [24] 1431 	push	ar3
      003131 C0 02            [24] 1432 	push	ar2
      003133 E5 08            [12] 1433 	mov	a,_bp
      003135 24 12            [12] 1434 	add	a,#0x12
      003137 F8               [12] 1435 	mov	r0,a
      003138 E6               [12] 1436 	mov	a,@r0
      003139 C0 E0            [24] 1437 	push	acc
      00313B 08               [12] 1438 	inc	r0
      00313C E6               [12] 1439 	mov	a,@r0
      00313D C0 E0            [24] 1440 	push	acc
      00313F 08               [12] 1441 	inc	r0
      003140 E6               [12] 1442 	mov	a,@r0
      003141 C0 E0            [24] 1443 	push	acc
      003143 08               [12] 1444 	inc	r0
      003144 E6               [12] 1445 	mov	a,@r0
      003145 C0 E0            [24] 1446 	push	acc
      003147 74 5B            [12] 1447 	mov	a,#___str_0
      003149 C0 E0            [24] 1448 	push	acc
      00314B 74 89            [12] 1449 	mov	a,#(___str_0 >> 8)
      00314D C0 E0            [24] 1450 	push	acc
      00314F 74 80            [12] 1451 	mov	a,#0x80
      003151 C0 E0            [24] 1452 	push	acc
      003153 12 70 A1         [24] 1453 	lcall	_printf
      003156 E5 81            [12] 1454 	mov	a,sp
      003158 24 F9            [12] 1455 	add	a,#0xf9
      00315A F5 81            [12] 1456 	mov	sp,a
      00315C D0 02            [24] 1457 	pop	ar2
      00315E D0 03            [24] 1458 	pop	ar3
      003160 D0 04            [24] 1459 	pop	ar4
      003162 D0 07            [24] 1460 	pop	ar7
                                   1461 ;	calc.c:72: printf("% 11ld\t", d);
      003164 C0 07            [24] 1462 	push	ar7
      003166 C0 04            [24] 1463 	push	ar4
      003168 C0 03            [24] 1464 	push	ar3
      00316A C0 02            [24] 1465 	push	ar2
      00316C C0 02            [24] 1466 	push	ar2
      00316E C0 03            [24] 1467 	push	ar3
      003170 C0 04            [24] 1468 	push	ar4
      003172 C0 07            [24] 1469 	push	ar7
      003174 74 62            [12] 1470 	mov	a,#___str_1
      003176 C0 E0            [24] 1471 	push	acc
      003178 74 89            [12] 1472 	mov	a,#(___str_1 >> 8)
      00317A C0 E0            [24] 1473 	push	acc
      00317C 74 80            [12] 1474 	mov	a,#0x80
      00317E C0 E0            [24] 1475 	push	acc
      003180 12 70 A1         [24] 1476 	lcall	_printf
      003183 E5 81            [12] 1477 	mov	a,sp
      003185 24 F9            [12] 1478 	add	a,#0xf9
      003187 F5 81            [12] 1479 	mov	sp,a
      003189 D0 02            [24] 1480 	pop	ar2
      00318B D0 03            [24] 1481 	pop	ar3
      00318D D0 04            [24] 1482 	pop	ar4
      00318F D0 07            [24] 1483 	pop	ar7
                                   1484 ;	calc.c:73: printf("%011lo\t", d);
      003191 C0 07            [24] 1485 	push	ar7
      003193 C0 04            [24] 1486 	push	ar4
      003195 C0 03            [24] 1487 	push	ar3
      003197 C0 02            [24] 1488 	push	ar2
      003199 C0 02            [24] 1489 	push	ar2
      00319B C0 03            [24] 1490 	push	ar3
      00319D C0 04            [24] 1491 	push	ar4
      00319F C0 07            [24] 1492 	push	ar7
      0031A1 74 6A            [12] 1493 	mov	a,#___str_2
      0031A3 C0 E0            [24] 1494 	push	acc
      0031A5 74 89            [12] 1495 	mov	a,#(___str_2 >> 8)
      0031A7 C0 E0            [24] 1496 	push	acc
      0031A9 74 80            [12] 1497 	mov	a,#0x80
      0031AB C0 E0            [24] 1498 	push	acc
      0031AD 12 70 A1         [24] 1499 	lcall	_printf
      0031B0 E5 81            [12] 1500 	mov	a,sp
      0031B2 24 F9            [12] 1501 	add	a,#0xf9
      0031B4 F5 81            [12] 1502 	mov	sp,a
      0031B6 D0 02            [24] 1503 	pop	ar2
      0031B8 D0 03            [24] 1504 	pop	ar3
      0031BA D0 04            [24] 1505 	pop	ar4
      0031BC D0 07            [24] 1506 	pop	ar7
                                   1507 ;	calc.c:74: printbin(d);
      0031BE E5 08            [12] 1508 	mov	a,_bp
      0031C0 24 16            [12] 1509 	add	a,#0x16
      0031C2 F8               [12] 1510 	mov	r0,a
      0031C3 A6 02            [24] 1511 	mov	@r0,ar2
      0031C5 08               [12] 1512 	inc	r0
      0031C6 A6 03            [24] 1513 	mov	@r0,ar3
      0031C8 08               [12] 1514 	inc	r0
      0031C9 A6 04            [24] 1515 	mov	@r0,ar4
      0031CB 08               [12] 1516 	inc	r0
      0031CC A6 07            [24] 1517 	mov	@r0,ar7
                                   1518 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031CE E5 08            [12] 1519 	mov	a,_bp
      0031D0 24 1A            [12] 1520 	add	a,#0x1a
      0031D2 F8               [12] 1521 	mov	r0,a
      0031D3 E4               [12] 1522 	clr	a
      0031D4 F6               [12] 1523 	mov	@r0,a
      0031D5 08               [12] 1524 	inc	r0
      0031D6 F6               [12] 1525 	mov	@r0,a
      0031D7 08               [12] 1526 	inc	r0
      0031D8 F6               [12] 1527 	mov	@r0,a
      0031D9 08               [12] 1528 	inc	r0
      0031DA 76 80            [12] 1529 	mov	@r0,#0x80
                                   1530 ;	calc.c:121: return 1;
      0031DC D0 07            [24] 1531 	pop	ar7
                                   1532 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031DE                       1533 00154$:
                                   1534 ;	calc.c:65: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0031DE C0 07            [24] 1535 	push	ar7
      0031E0 E5 08            [12] 1536 	mov	a,_bp
      0031E2 24 16            [12] 1537 	add	a,#0x16
      0031E4 F8               [12] 1538 	mov	r0,a
      0031E5 86 02            [24] 1539 	mov	ar2,@r0
      0031E7 08               [12] 1540 	inc	r0
      0031E8 86 03            [24] 1541 	mov	ar3,@r0
      0031EA 08               [12] 1542 	inc	r0
      0031EB 86 04            [24] 1543 	mov	ar4,@r0
      0031ED 08               [12] 1544 	inc	r0
      0031EE 86 07            [24] 1545 	mov	ar7,@r0
      0031F0 E5 08            [12] 1546 	mov	a,_bp
      0031F2 24 1A            [12] 1547 	add	a,#0x1a
      0031F4 F8               [12] 1548 	mov	r0,a
      0031F5 E6               [12] 1549 	mov	a,@r0
      0031F6 52 02            [12] 1550 	anl	ar2,a
      0031F8 08               [12] 1551 	inc	r0
      0031F9 E6               [12] 1552 	mov	a,@r0
      0031FA 52 03            [12] 1553 	anl	ar3,a
      0031FC 08               [12] 1554 	inc	r0
      0031FD E6               [12] 1555 	mov	a,@r0
      0031FE 52 04            [12] 1556 	anl	ar4,a
      003200 08               [12] 1557 	inc	r0
      003201 E6               [12] 1558 	mov	a,@r0
      003202 52 07            [12] 1559 	anl	ar7,a
      003204 EA               [12] 1560 	mov	a,r2
      003205 4B               [12] 1561 	orl	a,r3
      003206 4C               [12] 1562 	orl	a,r4
      003207 4F               [12] 1563 	orl	a,r7
      003208 D0 07            [24] 1564 	pop	ar7
      00320A 60 06            [24] 1565 	jz	00166$
      00320C 7B 31            [12] 1566 	mov	r3,#0x31
      00320E 7C 00            [12] 1567 	mov	r4,#0x00
      003210 80 04            [24] 1568 	sjmp	00167$
      003212                       1569 00166$:
      003212 7B 30            [12] 1570 	mov	r3,#0x30
      003214 7C 00            [12] 1571 	mov	r4,#0x00
      003216                       1572 00167$:
      003216 8B 82            [24] 1573 	mov	dpl,r3
      003218 8C 83            [24] 1574 	mov	dph,r4
      00321A 12 2B 70         [24] 1575 	lcall	_putchar
                                   1576 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      00321D E5 08            [12] 1577 	mov	a,_bp
      00321F 24 1A            [12] 1578 	add	a,#0x1a
      003221 F8               [12] 1579 	mov	r0,a
      003222 08               [12] 1580 	inc	r0
      003223 08               [12] 1581 	inc	r0
      003224 08               [12] 1582 	inc	r0
      003225 E6               [12] 1583 	mov	a,@r0
      003226 C3               [12] 1584 	clr	c
      003227 13               [12] 1585 	rrc	a
      003228 F6               [12] 1586 	mov	@r0,a
      003229 18               [12] 1587 	dec	r0
      00322A E6               [12] 1588 	mov	a,@r0
      00322B 13               [12] 1589 	rrc	a
      00322C F6               [12] 1590 	mov	@r0,a
      00322D 18               [12] 1591 	dec	r0
      00322E E6               [12] 1592 	mov	a,@r0
      00322F 13               [12] 1593 	rrc	a
      003230 F6               [12] 1594 	mov	@r0,a
      003231 18               [12] 1595 	dec	r0
      003232 E6               [12] 1596 	mov	a,@r0
      003233 13               [12] 1597 	rrc	a
      003234 F6               [12] 1598 	mov	@r0,a
      003235 E5 08            [12] 1599 	mov	a,_bp
      003237 24 1A            [12] 1600 	add	a,#0x1a
      003239 F8               [12] 1601 	mov	r0,a
      00323A E6               [12] 1602 	mov	a,@r0
      00323B 08               [12] 1603 	inc	r0
      00323C 46               [12] 1604 	orl	a,@r0
      00323D 08               [12] 1605 	inc	r0
      00323E 46               [12] 1606 	orl	a,@r0
      00323F 08               [12] 1607 	inc	r0
      003240 46               [12] 1608 	orl	a,@r0
      003241 70 9B            [24] 1609 	jnz	00154$
                                   1610 ;	calc.c:117: printstr("\r\n");
      003243 7D 72            [12] 1611 	mov	r5,#___str_3
      003245 7B 89            [12] 1612 	mov	r3,#(___str_3 >> 8)
      003247 7A 80            [12] 1613 	mov	r2,#0x80
                                   1614 ;	calc.c:58: return;
      003249                       1615 00157$:
                                   1616 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003249 8D 82            [24] 1617 	mov	dpl,r5
      00324B 8B 83            [24] 1618 	mov	dph,r3
      00324D 8A F0            [24] 1619 	mov	b,r2
      00324F 12 70 DA         [24] 1620 	lcall	__gptrget
      003252 FE               [12] 1621 	mov	r6,a
      003253 60 16            [24] 1622 	jz	00133$
      003255 C0 07            [24] 1623 	push	ar7
      003257 8E 04            [24] 1624 	mov	ar4,r6
      003259 7F 00            [12] 1625 	mov	r7,#0x00
      00325B 8C 82            [24] 1626 	mov	dpl,r4
      00325D 8F 83            [24] 1627 	mov	dph,r7
      00325F 12 2B 70         [24] 1628 	lcall	_putchar
      003262 0D               [12] 1629 	inc	r5
      003263 BD 00 01         [24] 1630 	cjne	r5,#0x00,00340$
      003266 0B               [12] 1631 	inc	r3
      003267                       1632 00340$:
      003267 D0 07            [24] 1633 	pop	ar7
                                   1634 ;	calc.c:117: printstr("\r\n");
      003269 80 DE            [24] 1635 	sjmp	00157$
      00326B                       1636 00133$:
                                   1637 ;	calc.c:114: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      00326B 8F 06            [24] 1638 	mov	ar6,r7
      00326D 7D 00            [12] 1639 	mov	r5,#0x00
      00326F 7A 40            [12] 1640 	mov	r2,#0x40
      003271 C0 07            [24] 1641 	push	ar7
      003273 E5 08            [12] 1642 	mov	a,_bp
      003275 24 08            [12] 1643 	add	a,#0x08
      003277 F8               [12] 1644 	mov	r0,a
      003278 86 82            [24] 1645 	mov	dpl,@r0
      00327A 08               [12] 1646 	inc	r0
      00327B 86 83            [24] 1647 	mov	dph,@r0
      00327D 08               [12] 1648 	inc	r0
      00327E 86 F0            [24] 1649 	mov	b,@r0
      003280 12 70 DA         [24] 1650 	lcall	__gptrget
      003283 FB               [12] 1651 	mov	r3,a
      003284 A3               [24] 1652 	inc	dptr
      003285 12 70 DA         [24] 1653 	lcall	__gptrget
      003288 FC               [12] 1654 	mov	r4,a
      003289 A3               [24] 1655 	inc	dptr
      00328A 12 70 DA         [24] 1656 	lcall	__gptrget
      00328D FF               [12] 1657 	mov	r7,a
      00328E C0 06            [24] 1658 	push	ar6
      003290 C0 05            [24] 1659 	push	ar5
      003292 C0 02            [24] 1660 	push	ar2
      003294 8B 82            [24] 1661 	mov	dpl,r3
      003296 8C 83            [24] 1662 	mov	dph,r4
      003298 8F F0            [24] 1663 	mov	b,r7
      00329A 12 27 83         [24] 1664 	lcall	_stack_pop
      00329D AC 82            [24] 1665 	mov	r4,dpl
      00329F AF 83            [24] 1666 	mov	r7,dph
      0032A1 15 81            [12] 1667 	dec	sp
      0032A3 15 81            [12] 1668 	dec	sp
      0032A5 15 81            [12] 1669 	dec	sp
      0032A7 8C 05            [24] 1670 	mov	ar5,r4
      0032A9 8F 06            [24] 1671 	mov	ar6,r7
      0032AB D0 07            [24] 1672 	pop	ar7
      0032AD 02 30 C8         [24] 1673 	ljmp	00160$
      0032B0                       1674 00113$:
                                   1675 ;	calc.c:121: return 1;
      0032B0 90 00 01         [24] 1676 	mov	dptr,#0x0001
                                   1677 ;	calc.c:122: }
      0032B3 85 08 81         [24] 1678 	mov	sp,_bp
      0032B6 D0 08            [24] 1679 	pop	_bp
      0032B8 22               [24] 1680 	ret
                                   1681 ;------------------------------------------------------------
                                   1682 ;Allocation info for local variables in function 'dump_peek'
                                   1683 ;------------------------------------------------------------
                                   1684 ;d                         Allocated to stack - _bp -6
                                   1685 ;_ctx                      Allocated to registers 
                                   1686 ;__1310720021              Allocated to registers 
                                   1687 ;s                         Allocated to registers r5 r6 r7 
                                   1688 ;__1310720023              Allocated to registers r4 r5 r6 r7 
                                   1689 ;d                         Allocated to registers 
                                   1690 ;__1310720001              Allocated to registers 
                                   1691 ;d                         Allocated to stack - _bp +1
                                   1692 ;mask                      Allocated to stack - _bp +5
                                   1693 ;__1310720025              Allocated to registers 
                                   1694 ;s                         Allocated to registers r5 r6 r7 
                                   1695 ;------------------------------------------------------------
                                   1696 ;	calc.c:124: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1697 ;	-----------------------------------------
                                   1698 ;	 function dump_peek
                                   1699 ;	-----------------------------------------
      0032B9                       1700 _dump_peek:
      0032B9 C0 08            [24] 1701 	push	_bp
      0032BB E5 81            [12] 1702 	mov	a,sp
      0032BD F5 08            [12] 1703 	mov	_bp,a
      0032BF 24 08            [12] 1704 	add	a,#0x08
      0032C1 F5 81            [12] 1705 	mov	sp,a
                                   1706 ;	calc.c:127: printstr("PSVA\t");
      0032C3 7D 93            [12] 1707 	mov	r5,#___str_7
      0032C5 7E 89            [12] 1708 	mov	r6,#(___str_7 >> 8)
      0032C7 7F 80            [12] 1709 	mov	r7,#0x80
                                   1710 ;	calc.c:58: return;
      0032C9                       1711 00109$:
                                   1712 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0032C9 8D 82            [24] 1713 	mov	dpl,r5
      0032CB 8E 83            [24] 1714 	mov	dph,r6
      0032CD 8F F0            [24] 1715 	mov	b,r7
      0032CF 12 70 DA         [24] 1716 	lcall	__gptrget
      0032D2 FC               [12] 1717 	mov	r4,a
      0032D3 60 10            [24] 1718 	jz	00102$
      0032D5 7B 00            [12] 1719 	mov	r3,#0x00
      0032D7 8C 82            [24] 1720 	mov	dpl,r4
      0032D9 8B 83            [24] 1721 	mov	dph,r3
      0032DB 12 2B 70         [24] 1722 	lcall	_putchar
      0032DE 0D               [12] 1723 	inc	r5
                                   1724 ;	calc.c:127: printstr("PSVA\t");
      0032DF BD 00 E7         [24] 1725 	cjne	r5,#0x00,00109$
      0032E2 0E               [12] 1726 	inc	r6
      0032E3 80 E4            [24] 1727 	sjmp	00109$
      0032E5                       1728 00102$:
                                   1729 ;	calc.c:128: printall(d);
      0032E5 E5 08            [12] 1730 	mov	a,_bp
      0032E7 24 FA            [12] 1731 	add	a,#0xfa
      0032E9 F8               [12] 1732 	mov	r0,a
      0032EA 86 04            [24] 1733 	mov	ar4,@r0
      0032EC 08               [12] 1734 	inc	r0
      0032ED 86 05            [24] 1735 	mov	ar5,@r0
      0032EF 08               [12] 1736 	inc	r0
      0032F0 86 06            [24] 1737 	mov	ar6,@r0
      0032F2 08               [12] 1738 	inc	r0
      0032F3 86 07            [24] 1739 	mov	ar7,@r0
                                   1740 ;	calc.c:71: printf("%08lx\t", d);
      0032F5 C0 07            [24] 1741 	push	ar7
      0032F7 C0 06            [24] 1742 	push	ar6
      0032F9 C0 05            [24] 1743 	push	ar5
      0032FB C0 04            [24] 1744 	push	ar4
      0032FD C0 04            [24] 1745 	push	ar4
      0032FF C0 05            [24] 1746 	push	ar5
      003301 C0 06            [24] 1747 	push	ar6
      003303 C0 07            [24] 1748 	push	ar7
      003305 74 5B            [12] 1749 	mov	a,#___str_0
      003307 C0 E0            [24] 1750 	push	acc
      003309 74 89            [12] 1751 	mov	a,#(___str_0 >> 8)
      00330B C0 E0            [24] 1752 	push	acc
      00330D 74 80            [12] 1753 	mov	a,#0x80
      00330F C0 E0            [24] 1754 	push	acc
      003311 12 70 A1         [24] 1755 	lcall	_printf
      003314 E5 81            [12] 1756 	mov	a,sp
      003316 24 F9            [12] 1757 	add	a,#0xf9
      003318 F5 81            [12] 1758 	mov	sp,a
      00331A D0 04            [24] 1759 	pop	ar4
      00331C D0 05            [24] 1760 	pop	ar5
      00331E D0 06            [24] 1761 	pop	ar6
      003320 D0 07            [24] 1762 	pop	ar7
                                   1763 ;	calc.c:72: printf("% 11ld\t", d);
      003322 C0 07            [24] 1764 	push	ar7
      003324 C0 06            [24] 1765 	push	ar6
      003326 C0 05            [24] 1766 	push	ar5
      003328 C0 04            [24] 1767 	push	ar4
      00332A C0 04            [24] 1768 	push	ar4
      00332C C0 05            [24] 1769 	push	ar5
      00332E C0 06            [24] 1770 	push	ar6
      003330 C0 07            [24] 1771 	push	ar7
      003332 74 62            [12] 1772 	mov	a,#___str_1
      003334 C0 E0            [24] 1773 	push	acc
      003336 74 89            [12] 1774 	mov	a,#(___str_1 >> 8)
      003338 C0 E0            [24] 1775 	push	acc
      00333A 74 80            [12] 1776 	mov	a,#0x80
      00333C C0 E0            [24] 1777 	push	acc
      00333E 12 70 A1         [24] 1778 	lcall	_printf
      003341 E5 81            [12] 1779 	mov	a,sp
      003343 24 F9            [12] 1780 	add	a,#0xf9
      003345 F5 81            [12] 1781 	mov	sp,a
      003347 D0 04            [24] 1782 	pop	ar4
      003349 D0 05            [24] 1783 	pop	ar5
      00334B D0 06            [24] 1784 	pop	ar6
      00334D D0 07            [24] 1785 	pop	ar7
                                   1786 ;	calc.c:73: printf("%011lo\t", d);
      00334F C0 07            [24] 1787 	push	ar7
      003351 C0 06            [24] 1788 	push	ar6
      003353 C0 05            [24] 1789 	push	ar5
      003355 C0 04            [24] 1790 	push	ar4
      003357 C0 04            [24] 1791 	push	ar4
      003359 C0 05            [24] 1792 	push	ar5
      00335B C0 06            [24] 1793 	push	ar6
      00335D C0 07            [24] 1794 	push	ar7
      00335F 74 6A            [12] 1795 	mov	a,#___str_2
      003361 C0 E0            [24] 1796 	push	acc
      003363 74 89            [12] 1797 	mov	a,#(___str_2 >> 8)
      003365 C0 E0            [24] 1798 	push	acc
      003367 74 80            [12] 1799 	mov	a,#0x80
      003369 C0 E0            [24] 1800 	push	acc
      00336B 12 70 A1         [24] 1801 	lcall	_printf
      00336E E5 81            [12] 1802 	mov	a,sp
      003370 24 F9            [12] 1803 	add	a,#0xf9
      003372 F5 81            [12] 1804 	mov	sp,a
      003374 D0 04            [24] 1805 	pop	ar4
      003376 D0 05            [24] 1806 	pop	ar5
      003378 D0 06            [24] 1807 	pop	ar6
      00337A D0 07            [24] 1808 	pop	ar7
                                   1809 ;	calc.c:74: printbin(d);
      00337C A8 08            [24] 1810 	mov	r0,_bp
      00337E 08               [12] 1811 	inc	r0
      00337F A6 04            [24] 1812 	mov	@r0,ar4
      003381 08               [12] 1813 	inc	r0
      003382 A6 05            [24] 1814 	mov	@r0,ar5
      003384 08               [12] 1815 	inc	r0
      003385 A6 06            [24] 1816 	mov	@r0,ar6
      003387 08               [12] 1817 	inc	r0
      003388 A6 07            [24] 1818 	mov	@r0,ar7
                                   1819 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      00338A E5 08            [12] 1820 	mov	a,_bp
      00338C 24 05            [12] 1821 	add	a,#0x05
      00338E F8               [12] 1822 	mov	r0,a
      00338F E4               [12] 1823 	clr	a
      003390 F6               [12] 1824 	mov	@r0,a
      003391 08               [12] 1825 	inc	r0
      003392 F6               [12] 1826 	mov	@r0,a
      003393 08               [12] 1827 	inc	r0
      003394 F6               [12] 1828 	mov	@r0,a
      003395 08               [12] 1829 	inc	r0
      003396 76 80            [12] 1830 	mov	@r0,#0x80
      003398                       1831 00111$:
                                   1832 ;	calc.c:65: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      003398 A8 08            [24] 1833 	mov	r0,_bp
      00339A 08               [12] 1834 	inc	r0
      00339B 86 04            [24] 1835 	mov	ar4,@r0
      00339D 08               [12] 1836 	inc	r0
      00339E 86 05            [24] 1837 	mov	ar5,@r0
      0033A0 08               [12] 1838 	inc	r0
      0033A1 86 06            [24] 1839 	mov	ar6,@r0
      0033A3 08               [12] 1840 	inc	r0
      0033A4 86 07            [24] 1841 	mov	ar7,@r0
      0033A6 E5 08            [12] 1842 	mov	a,_bp
      0033A8 24 05            [12] 1843 	add	a,#0x05
      0033AA F8               [12] 1844 	mov	r0,a
      0033AB E6               [12] 1845 	mov	a,@r0
      0033AC 52 04            [12] 1846 	anl	ar4,a
      0033AE 08               [12] 1847 	inc	r0
      0033AF E6               [12] 1848 	mov	a,@r0
      0033B0 52 05            [12] 1849 	anl	ar5,a
      0033B2 08               [12] 1850 	inc	r0
      0033B3 E6               [12] 1851 	mov	a,@r0
      0033B4 52 06            [12] 1852 	anl	ar6,a
      0033B6 08               [12] 1853 	inc	r0
      0033B7 E6               [12] 1854 	mov	a,@r0
      0033B8 52 07            [12] 1855 	anl	ar7,a
      0033BA EC               [12] 1856 	mov	a,r4
      0033BB 4D               [12] 1857 	orl	a,r5
      0033BC 4E               [12] 1858 	orl	a,r6
      0033BD 4F               [12] 1859 	orl	a,r7
      0033BE 60 06            [24] 1860 	jz	00118$
      0033C0 7E 31            [12] 1861 	mov	r6,#0x31
      0033C2 7F 00            [12] 1862 	mov	r7,#0x00
      0033C4 80 04            [24] 1863 	sjmp	00119$
      0033C6                       1864 00118$:
      0033C6 7E 30            [12] 1865 	mov	r6,#0x30
      0033C8 7F 00            [12] 1866 	mov	r7,#0x00
      0033CA                       1867 00119$:
      0033CA 8E 82            [24] 1868 	mov	dpl,r6
      0033CC 8F 83            [24] 1869 	mov	dph,r7
      0033CE 12 2B 70         [24] 1870 	lcall	_putchar
                                   1871 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      0033D1 E5 08            [12] 1872 	mov	a,_bp
      0033D3 24 05            [12] 1873 	add	a,#0x05
      0033D5 F8               [12] 1874 	mov	r0,a
      0033D6 08               [12] 1875 	inc	r0
      0033D7 08               [12] 1876 	inc	r0
      0033D8 08               [12] 1877 	inc	r0
      0033D9 E6               [12] 1878 	mov	a,@r0
      0033DA C3               [12] 1879 	clr	c
      0033DB 13               [12] 1880 	rrc	a
      0033DC F6               [12] 1881 	mov	@r0,a
      0033DD 18               [12] 1882 	dec	r0
      0033DE E6               [12] 1883 	mov	a,@r0
      0033DF 13               [12] 1884 	rrc	a
      0033E0 F6               [12] 1885 	mov	@r0,a
      0033E1 18               [12] 1886 	dec	r0
      0033E2 E6               [12] 1887 	mov	a,@r0
      0033E3 13               [12] 1888 	rrc	a
      0033E4 F6               [12] 1889 	mov	@r0,a
      0033E5 18               [12] 1890 	dec	r0
      0033E6 E6               [12] 1891 	mov	a,@r0
      0033E7 13               [12] 1892 	rrc	a
      0033E8 F6               [12] 1893 	mov	@r0,a
      0033E9 E5 08            [12] 1894 	mov	a,_bp
      0033EB 24 05            [12] 1895 	add	a,#0x05
      0033ED F8               [12] 1896 	mov	r0,a
      0033EE E6               [12] 1897 	mov	a,@r0
      0033EF 08               [12] 1898 	inc	r0
      0033F0 46               [12] 1899 	orl	a,@r0
      0033F1 08               [12] 1900 	inc	r0
      0033F2 46               [12] 1901 	orl	a,@r0
      0033F3 08               [12] 1902 	inc	r0
      0033F4 46               [12] 1903 	orl	a,@r0
      0033F5 70 A1            [24] 1904 	jnz	00111$
                                   1905 ;	calc.c:129: printstr("\r\n");
      0033F7 7D 72            [12] 1906 	mov	r5,#___str_3
      0033F9 7E 89            [12] 1907 	mov	r6,#(___str_3 >> 8)
      0033FB 7F 80            [12] 1908 	mov	r7,#0x80
                                   1909 ;	calc.c:58: return;
      0033FD                       1910 00114$:
                                   1911 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0033FD 8D 82            [24] 1912 	mov	dpl,r5
      0033FF 8E 83            [24] 1913 	mov	dph,r6
      003401 8F F0            [24] 1914 	mov	b,r7
      003403 12 70 DA         [24] 1915 	lcall	__gptrget
      003406 FC               [12] 1916 	mov	r4,a
      003407 60 10            [24] 1917 	jz	00107$
      003409 7B 00            [12] 1918 	mov	r3,#0x00
      00340B 8C 82            [24] 1919 	mov	dpl,r4
      00340D 8B 83            [24] 1920 	mov	dph,r3
      00340F 12 2B 70         [24] 1921 	lcall	_putchar
      003412 0D               [12] 1922 	inc	r5
                                   1923 ;	calc.c:129: printstr("\r\n");
      003413 BD 00 E7         [24] 1924 	cjne	r5,#0x00,00114$
      003416 0E               [12] 1925 	inc	r6
      003417 80 E4            [24] 1926 	sjmp	00114$
      003419                       1927 00107$:
                                   1928 ;	calc.c:131: return 1;
      003419 90 00 01         [24] 1929 	mov	dptr,#0x0001
                                   1930 ;	calc.c:132: }
      00341C 85 08 81         [24] 1931 	mov	sp,_bp
      00341F D0 08            [24] 1932 	pop	_bp
      003421 22               [24] 1933 	ret
                                   1934 ;------------------------------------------------------------
                                   1935 ;Allocation info for local variables in function 'operator'
                                   1936 ;------------------------------------------------------------
                                   1937 ;delta                     Allocated to stack - _bp -5
                                   1938 ;_ctx                      Allocated to stack - _bp +1
                                   1939 ;ctx                       Allocated to stack - _bp +18
                                   1940 ;t0                        Allocated to registers r7 r6 r5 
                                   1941 ;d0                        Allocated to stack - _bp +21
                                   1942 ;d1                        Allocated to stack - _bp +25
                                   1943 ;__1966080027              Allocated to registers 
                                   1944 ;s                         Allocated to registers r7 r6 r5 
                                   1945 ;__1966080029              Allocated to registers 
                                   1946 ;s                         Allocated to registers r7 r6 r5 
                                   1947 ;__2621440031              Allocated to registers 
                                   1948 ;s                         Allocated to registers r7 r6 r5 
                                   1949 ;__2621440033              Allocated to registers r7 r6 r5 r4 
                                   1950 ;d                         Allocated to stack - _bp +29
                                   1951 ;__1310720001              Allocated to registers 
                                   1952 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1953 ;mask                      Allocated to stack - _bp +33
                                   1954 ;__2621440035              Allocated to registers 
                                   1955 ;s                         Allocated to registers r7 r6 r5 
                                   1956 ;__1966080037              Allocated to registers 
                                   1957 ;s                         Allocated to registers r7 r6 r5 
                                   1958 ;__1966080039              Allocated to registers 
                                   1959 ;s                         Allocated to registers r7 r6 r5 
                                   1960 ;__1966080041              Allocated to registers 
                                   1961 ;s                         Allocated to registers r7 r6 r5 
                                   1962 ;__1966080043              Allocated to registers 
                                   1963 ;s                         Allocated to registers r7 r6 r5 
                                   1964 ;__2621440045              Allocated to registers 
                                   1965 ;s                         Allocated to registers r7 r6 r5 
                                   1966 ;__2621440047              Allocated to registers r7 r6 r5 r4 
                                   1967 ;d                         Allocated to stack - _bp +29
                                   1968 ;__1310720001              Allocated to registers 
                                   1969 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1970 ;mask                      Allocated to stack - _bp +33
                                   1971 ;__2621440049              Allocated to registers 
                                   1972 ;s                         Allocated to registers r7 r6 r5 
                                   1973 ;__1966080051              Allocated to registers 
                                   1974 ;s                         Allocated to registers r7 r6 r5 
                                   1975 ;__1966080053              Allocated to registers 
                                   1976 ;s                         Allocated to registers r7 r6 r5 
                                   1977 ;__2621440055              Allocated to registers 
                                   1978 ;s                         Allocated to registers r7 r6 r5 
                                   1979 ;__1966080057              Allocated to registers 
                                   1980 ;s                         Allocated to registers r7 r6 r5 
                                   1981 ;__3276800059              Allocated to registers 
                                   1982 ;s                         Allocated to registers r7 r6 r5 
                                   1983 ;__1966080061              Allocated to registers 
                                   1984 ;s                         Allocated to registers r7 r6 r5 
                                   1985 ;__3276800063              Allocated to registers 
                                   1986 ;s                         Allocated to registers r7 r6 r5 
                                   1987 ;__1966080065              Allocated to registers 
                                   1988 ;s                         Allocated to registers r7 r6 r5 
                                   1989 ;__1966080067              Allocated to registers 
                                   1990 ;s                         Allocated to registers r7 r6 r5 
                                   1991 ;__1966080069              Allocated to registers 
                                   1992 ;s                         Allocated to registers r7 r6 r5 
                                   1993 ;__1966080071              Allocated to registers 
                                   1994 ;s                         Allocated to registers r7 r6 r5 
                                   1995 ;__1966080073              Allocated to registers 
                                   1996 ;s                         Allocated to registers r7 r6 r5 
                                   1997 ;__3276800075              Allocated to registers 
                                   1998 ;s                         Allocated to registers r7 r6 r5 
                                   1999 ;__1966080077              Allocated to registers 
                                   2000 ;s                         Allocated to registers r7 r6 r5 
                                   2001 ;__2621440079              Allocated to registers 
                                   2002 ;s                         Allocated to registers r7 r6 r5 
                                   2003 ;__1966080081              Allocated to registers 
                                   2004 ;s                         Allocated to registers r7 r6 r5 
                                   2005 ;__2621440083              Allocated to registers 
                                   2006 ;s                         Allocated to registers r7 r6 r5 
                                   2007 ;__1966080085              Allocated to registers 
                                   2008 ;s                         Allocated to registers r7 r6 r5 
                                   2009 ;__2621440087              Allocated to registers 
                                   2010 ;s                         Allocated to registers r7 r6 r5 
                                   2011 ;__1966080089              Allocated to registers 
                                   2012 ;s                         Allocated to registers r7 r6 r5 
                                   2013 ;__2621440091              Allocated to registers 
                                   2014 ;s                         Allocated to registers r7 r6 r5 
                                   2015 ;__2621440093              Allocated to registers 
                                   2016 ;s                         Allocated to registers r7 r6 r5 
                                   2017 ;__1966080095              Allocated to registers 
                                   2018 ;s                         Allocated to registers r7 r6 r5 
                                   2019 ;__2621440097              Allocated to registers 
                                   2020 ;s                         Allocated to registers r7 r6 r5 
                                   2021 ;__2621440099              Allocated to registers 
                                   2022 ;s                         Allocated to registers r7 r6 r5 
                                   2023 ;__1966080101              Allocated to registers 
                                   2024 ;s                         Allocated to registers r5 r4 r3 
                                   2025 ;__2621440103              Allocated to registers 
                                   2026 ;s                         Allocated to registers r5 r4 r3 
                                   2027 ;__1966080105              Allocated to registers 
                                   2028 ;s                         Allocated to registers r5 r4 r3 
                                   2029 ;__2621440107              Allocated to registers 
                                   2030 ;s                         Allocated to registers r5 r4 r3 
                                   2031 ;__1966080109              Allocated to registers 
                                   2032 ;s                         Allocated to registers r5 r4 r3 
                                   2033 ;__2621440111              Allocated to registers 
                                   2034 ;s                         Allocated to registers r5 r4 r3 
                                   2035 ;__1966080113              Allocated to registers 
                                   2036 ;s                         Allocated to registers r5 r4 r3 
                                   2037 ;__2621440115              Allocated to registers 
                                   2038 ;s                         Allocated to registers r5 r4 r3 
                                   2039 ;__1966080117              Allocated to registers 
                                   2040 ;s                         Allocated to registers r5 r4 r3 
                                   2041 ;__2621440119              Allocated to registers 
                                   2042 ;s                         Allocated to registers r5 r4 r3 
                                   2043 ;__1966080121              Allocated to registers 
                                   2044 ;s                         Allocated to registers r5 r4 r3 
                                   2045 ;__2621440123              Allocated to registers 
                                   2046 ;s                         Allocated to registers r5 r4 r3 
                                   2047 ;__1966080125              Allocated to registers 
                                   2048 ;s                         Allocated to registers r5 r4 r3 
                                   2049 ;sloc0                     Allocated to stack - _bp +346
                                   2050 ;sloc1                     Allocated to stack - _bp +4
                                   2051 ;sloc2                     Allocated to stack - _bp +7
                                   2052 ;sloc3                     Allocated to stack - _bp +11
                                   2053 ;sloc4                     Allocated to stack - _bp +14
                                   2054 ;------------------------------------------------------------
                                   2055 ;	calc.c:134: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   2056 ;	-----------------------------------------
                                   2057 ;	 function operator
                                   2058 ;	-----------------------------------------
      003422                       2059 _operator:
      003422 C0 08            [24] 2060 	push	_bp
      003424 85 81 08         [24] 2061 	mov	_bp,sp
      003427 C0 82            [24] 2062 	push	dpl
      003429 C0 83            [24] 2063 	push	dph
      00342B C0 F0            [24] 2064 	push	b
      00342D E5 81            [12] 2065 	mov	a,sp
      00342F 24 21            [12] 2066 	add	a,#0x21
      003431 F5 81            [12] 2067 	mov	sp,a
                                   2068 ;	calc.c:135: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      003433 A8 08            [24] 2069 	mov	r0,_bp
      003435 08               [12] 2070 	inc	r0
      003436 E5 08            [12] 2071 	mov	a,_bp
      003438 24 12            [12] 2072 	add	a,#0x12
      00343A F9               [12] 2073 	mov	r1,a
      00343B E6               [12] 2074 	mov	a,@r0
      00343C F7               [12] 2075 	mov	@r1,a
      00343D 08               [12] 2076 	inc	r0
      00343E 09               [12] 2077 	inc	r1
      00343F E6               [12] 2078 	mov	a,@r0
      003440 F7               [12] 2079 	mov	@r1,a
      003441 08               [12] 2080 	inc	r0
      003442 09               [12] 2081 	inc	r1
      003443 E6               [12] 2082 	mov	a,@r0
      003444 F7               [12] 2083 	mov	@r1,a
                                   2084 ;	calc.c:139: switch (ctx->digit[0]) {
      003445 E5 08            [12] 2085 	mov	a,_bp
      003447 24 12            [12] 2086 	add	a,#0x12
      003449 F8               [12] 2087 	mov	r0,a
      00344A 74 07            [12] 2088 	mov	a,#0x07
      00344C 26               [12] 2089 	add	a,@r0
      00344D FD               [12] 2090 	mov	r5,a
      00344E E4               [12] 2091 	clr	a
      00344F 08               [12] 2092 	inc	r0
      003450 36               [12] 2093 	addc	a,@r0
      003451 FE               [12] 2094 	mov	r6,a
      003452 08               [12] 2095 	inc	r0
      003453 86 07            [24] 2096 	mov	ar7,@r0
      003455 8D 82            [24] 2097 	mov	dpl,r5
      003457 8E 83            [24] 2098 	mov	dph,r6
      003459 8F F0            [24] 2099 	mov	b,r7
      00345B 12 70 DA         [24] 2100 	lcall	__gptrget
      00345E FC               [12] 2101 	mov	r4,a
      00345F BC 23 03         [24] 2102 	cjne	r4,#0x23,01234$
      003462 02 49 91         [24] 2103 	ljmp	00189$
      003465                       2104 01234$:
      003465 BC 25 03         [24] 2105 	cjne	r4,#0x25,01235$
      003468 02 49 91         [24] 2106 	ljmp	00189$
      00346B                       2107 01235$:
      00346B BC 26 03         [24] 2108 	cjne	r4,#0x26,01236$
      00346E 02 4C 77         [24] 2109 	ljmp	00202$
      003471                       2110 01236$:
      003471 BC 2A 03         [24] 2111 	cjne	r4,#0x2a,01237$
      003474 02 45 01         [24] 2112 	ljmp	00167$
      003477                       2113 01237$:
      003477 BC 2B 03         [24] 2114 	cjne	r4,#0x2b,01238$
      00347A 02 42 02         [24] 2115 	ljmp	00153$
      00347D                       2116 01238$:
      00347D BC 2D 03         [24] 2117 	cjne	r4,#0x2d,01239$
      003480 02 43 81         [24] 2118 	ljmp	00160$
      003483                       2119 01239$:
      003483 BC 2E 03         [24] 2120 	cjne	r4,#0x2e,01240$
      003486 02 37 94         [24] 2121 	ljmp	00109$
      003489                       2122 01240$:
      003489 BC 2F 03         [24] 2123 	cjne	r4,#0x2f,01241$
      00348C 02 46 A7         [24] 2124 	ljmp	00175$
      00348F                       2125 01241$:
      00348F BC 3C 03         [24] 2126 	cjne	r4,#0x3c,01242$
      003492 02 54 92         [24] 2127 	ljmp	00237$
      003495                       2128 01242$:
      003495 BC 3E 03         [24] 2129 	cjne	r4,#0x3e,01243$
      003498 02 51 45         [24] 2130 	ljmp	00223$
      00349B                       2131 01243$:
      00349B BC 4D 03         [24] 2132 	cjne	r4,#0x4d,01244$
      00349E 02 3C A8         [24] 2133 	ljmp	00127$
      0034A1                       2134 01244$:
      0034A1 BC 50 03         [24] 2135 	cjne	r4,#0x50,01245$
      0034A4 02 39 8A         [24] 2136 	ljmp	00113$
      0034A7                       2137 01245$:
      0034A7 BC 54 03         [24] 2138 	cjne	r4,#0x54,01246$
      0034AA 02 3F AA         [24] 2139 	ljmp	00145$
      0034AD                       2140 01246$:
      0034AD BC 55 03         [24] 2141 	cjne	r4,#0x55,01247$
      0034B0 02 3E C3         [24] 2142 	ljmp	00139$
      0034B3                       2143 01247$:
      0034B3 BC 56 03         [24] 2144 	cjne	r4,#0x56,01248$
      0034B6 02 36 F3         [24] 2145 	ljmp	00105$
      0034B9                       2146 01248$:
      0034B9 BC 58 03         [24] 2147 	cjne	r4,#0x58,01249$
      0034BC 02 41 63         [24] 2148 	ljmp	00152$
      0034BF                       2149 01249$:
      0034BF BC 5C 03         [24] 2150 	cjne	r4,#0x5c,01250$
      0034C2 02 46 A7         [24] 2151 	ljmp	00175$
      0034C5                       2152 01250$:
      0034C5 BC 5D 03         [24] 2153 	cjne	r4,#0x5d,01251$
      0034C8 02 52 E3         [24] 2154 	ljmp	00230$
      0034CB                       2155 01251$:
      0034CB BC 5E 03         [24] 2156 	cjne	r4,#0x5e,01252$
      0034CE 02 4F AB         [24] 2157 	ljmp	00216$
      0034D1                       2158 01252$:
      0034D1 BC 6D 03         [24] 2159 	cjne	r4,#0x6d,01253$
      0034D4 02 3B 74         [24] 2160 	ljmp	00121$
      0034D7                       2161 01253$:
      0034D7 BC 70 03         [24] 2162 	cjne	r4,#0x70,01254$
      0034DA 02 37 94         [24] 2163 	ljmp	00109$
      0034DD                       2164 01254$:
      0034DD BC 75 03         [24] 2165 	cjne	r4,#0x75,01255$
      0034E0 02 3D DC         [24] 2166 	ljmp	00133$
      0034E3                       2167 01255$:
      0034E3 BC 76 02         [24] 2168 	cjne	r4,#0x76,01256$
      0034E6 80 15            [24] 2169 	sjmp	00101$
      0034E8                       2170 01256$:
      0034E8 BC 78 03         [24] 2171 	cjne	r4,#0x78,01257$
      0034EB 02 39 D3         [24] 2172 	ljmp	00114$
      0034EE                       2173 01257$:
      0034EE BC 7C 03         [24] 2174 	cjne	r4,#0x7c,01258$
      0034F1 02 4E 11         [24] 2175 	ljmp	00209$
      0034F4                       2176 01258$:
      0034F4 BC 7E 03         [24] 2177 	cjne	r4,#0x7e,01259$
      0034F7 02 56 35         [24] 2178 	ljmp	00244$
      0034FA                       2179 01259$:
      0034FA 02 57 0E         [24] 2180 	ljmp	00248$
                                   2181 ;	calc.c:140: case 'v':
      0034FD                       2182 00101$:
                                   2183 ;	calc.c:141: printstr("\r\n");
      0034FD 7F 72            [12] 2184 	mov	r7,#___str_3
      0034FF 7E 89            [12] 2185 	mov	r6,#(___str_3 >> 8)
      003501 7D 80            [12] 2186 	mov	r5,#0x80
                                   2187 ;	calc.c:58: return;
      003503                       2188 00353$:
                                   2189 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003503 8F 82            [24] 2190 	mov	dpl,r7
      003505 8E 83            [24] 2191 	mov	dph,r6
      003507 8D F0            [24] 2192 	mov	b,r5
      003509 12 70 DA         [24] 2193 	lcall	__gptrget
      00350C FC               [12] 2194 	mov	r4,a
      00350D 60 10            [24] 2195 	jz	00251$
      00350F 7B 00            [12] 2196 	mov	r3,#0x00
      003511 8C 82            [24] 2197 	mov	dpl,r4
      003513 8B 83            [24] 2198 	mov	dph,r3
      003515 12 2B 70         [24] 2199 	lcall	_putchar
      003518 0F               [12] 2200 	inc	r7
                                   2201 ;	calc.c:141: printstr("\r\n");
      003519 BF 00 E7         [24] 2202 	cjne	r7,#0x00,00353$
      00351C 0E               [12] 2203 	inc	r6
      00351D 80 E4            [24] 2204 	sjmp	00353$
      00351F                       2205 00251$:
                                   2206 ;	calc.c:142: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      00351F E5 08            [12] 2207 	mov	a,_bp
      003521 24 15            [12] 2208 	add	a,#0x15
      003523 FF               [12] 2209 	mov	r7,a
      003524 7E 00            [12] 2210 	mov	r6,#0x00
      003526 7D 40            [12] 2211 	mov	r5,#0x40
      003528 E5 08            [12] 2212 	mov	a,_bp
      00352A 24 12            [12] 2213 	add	a,#0x12
      00352C F8               [12] 2214 	mov	r0,a
      00352D 74 11            [12] 2215 	mov	a,#0x11
      00352F 26               [12] 2216 	add	a,@r0
      003530 FA               [12] 2217 	mov	r2,a
      003531 ED               [12] 2218 	mov	a,r5
      003532 08               [12] 2219 	inc	r0
      003533 36               [12] 2220 	addc	a,@r0
      003534 FB               [12] 2221 	mov	r3,a
      003535 08               [12] 2222 	inc	r0
      003536 86 04            [24] 2223 	mov	ar4,@r0
      003538 8A 82            [24] 2224 	mov	dpl,r2
      00353A 8B 83            [24] 2225 	mov	dph,r3
      00353C 8C F0            [24] 2226 	mov	b,r4
      00353E 12 70 DA         [24] 2227 	lcall	__gptrget
      003541 FA               [12] 2228 	mov	r2,a
      003542 A3               [24] 2229 	inc	dptr
      003543 12 70 DA         [24] 2230 	lcall	__gptrget
      003546 FB               [12] 2231 	mov	r3,a
      003547 A3               [24] 2232 	inc	dptr
      003548 12 70 DA         [24] 2233 	lcall	__gptrget
      00354B FC               [12] 2234 	mov	r4,a
      00354C C0 07            [24] 2235 	push	ar7
      00354E C0 06            [24] 2236 	push	ar6
      003550 C0 05            [24] 2237 	push	ar5
      003552 8A 82            [24] 2238 	mov	dpl,r2
      003554 8B 83            [24] 2239 	mov	dph,r3
      003556 8C F0            [24] 2240 	mov	b,r4
      003558 12 28 5E         [24] 2241 	lcall	_stack_peek
      00355B AB 82            [24] 2242 	mov	r3,dpl
      00355D AC 83            [24] 2243 	mov	r4,dph
      00355F 15 81            [12] 2244 	dec	sp
      003561 15 81            [12] 2245 	dec	sp
      003563 15 81            [12] 2246 	dec	sp
      003565 EB               [12] 2247 	mov	a,r3
      003566 4C               [12] 2248 	orl	a,r4
      003567 70 25            [24] 2249 	jnz	00103$
      003569 7F 75            [12] 2250 	mov	r7,#___str_4
      00356B 7E 89            [12] 2251 	mov	r6,#(___str_4 >> 8)
      00356D 7D 80            [12] 2252 	mov	r5,#0x80
                                   2253 ;	calc.c:58: return;
      00356F                       2254 00356$:
                                   2255 ;	calc.c:56: for (; *s; s++) putchar(*s);
      00356F 8F 82            [24] 2256 	mov	dpl,r7
      003571 8E 83            [24] 2257 	mov	dph,r6
      003573 8D F0            [24] 2258 	mov	b,r5
      003575 12 70 DA         [24] 2259 	lcall	__gptrget
      003578 FC               [12] 2260 	mov	r4,a
      003579 70 03            [24] 2261 	jnz	01263$
      00357B 02 57 13         [24] 2262 	ljmp	00249$
      00357E                       2263 01263$:
      00357E 7B 00            [12] 2264 	mov	r3,#0x00
      003580 8C 82            [24] 2265 	mov	dpl,r4
      003582 8B 83            [24] 2266 	mov	dph,r3
      003584 12 2B 70         [24] 2267 	lcall	_putchar
      003587 0F               [12] 2268 	inc	r7
                                   2269 ;	calc.c:142: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003588 BF 00 E4         [24] 2270 	cjne	r7,#0x00,00356$
      00358B 0E               [12] 2271 	inc	r6
      00358C 80 E1            [24] 2272 	sjmp	00356$
      00358E                       2273 00103$:
                                   2274 ;	calc.c:144: printstr("PSVTOP\t");
      00358E 7F 99            [12] 2275 	mov	r7,#___str_8
      003590 7E 89            [12] 2276 	mov	r6,#(___str_8 >> 8)
      003592 7D 80            [12] 2277 	mov	r5,#0x80
                                   2278 ;	calc.c:58: return;
      003594                       2279 00359$:
                                   2280 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003594 8F 82            [24] 2281 	mov	dpl,r7
      003596 8E 83            [24] 2282 	mov	dph,r6
      003598 8D F0            [24] 2283 	mov	b,r5
      00359A 12 70 DA         [24] 2284 	lcall	__gptrget
      00359D FC               [12] 2285 	mov	r4,a
      00359E 60 10            [24] 2286 	jz	00255$
      0035A0 7B 00            [12] 2287 	mov	r3,#0x00
      0035A2 8C 82            [24] 2288 	mov	dpl,r4
      0035A4 8B 83            [24] 2289 	mov	dph,r3
      0035A6 12 2B 70         [24] 2290 	lcall	_putchar
      0035A9 0F               [12] 2291 	inc	r7
                                   2292 ;	calc.c:144: printstr("PSVTOP\t");
      0035AA BF 00 E7         [24] 2293 	cjne	r7,#0x00,00359$
      0035AD 0E               [12] 2294 	inc	r6
      0035AE 80 E4            [24] 2295 	sjmp	00359$
      0035B0                       2296 00255$:
                                   2297 ;	calc.c:145: printall(d0);
      0035B0 E5 08            [12] 2298 	mov	a,_bp
      0035B2 24 15            [12] 2299 	add	a,#0x15
      0035B4 F8               [12] 2300 	mov	r0,a
      0035B5 86 07            [24] 2301 	mov	ar7,@r0
      0035B7 08               [12] 2302 	inc	r0
      0035B8 86 06            [24] 2303 	mov	ar6,@r0
      0035BA 08               [12] 2304 	inc	r0
      0035BB 86 05            [24] 2305 	mov	ar5,@r0
      0035BD 08               [12] 2306 	inc	r0
      0035BE 86 04            [24] 2307 	mov	ar4,@r0
      0035C0 E5 08            [12] 2308 	mov	a,_bp
      0035C2 24 1D            [12] 2309 	add	a,#0x1d
      0035C4 F8               [12] 2310 	mov	r0,a
      0035C5 A6 07            [24] 2311 	mov	@r0,ar7
      0035C7 08               [12] 2312 	inc	r0
      0035C8 A6 06            [24] 2313 	mov	@r0,ar6
      0035CA 08               [12] 2314 	inc	r0
      0035CB A6 05            [24] 2315 	mov	@r0,ar5
      0035CD 08               [12] 2316 	inc	r0
      0035CE A6 04            [24] 2317 	mov	@r0,ar4
                                   2318 ;	calc.c:71: printf("%08lx\t", d);
      0035D0 C0 07            [24] 2319 	push	ar7
      0035D2 C0 06            [24] 2320 	push	ar6
      0035D4 C0 05            [24] 2321 	push	ar5
      0035D6 C0 04            [24] 2322 	push	ar4
      0035D8 74 5B            [12] 2323 	mov	a,#___str_0
      0035DA C0 E0            [24] 2324 	push	acc
      0035DC 74 89            [12] 2325 	mov	a,#(___str_0 >> 8)
      0035DE C0 E0            [24] 2326 	push	acc
      0035E0 74 80            [12] 2327 	mov	a,#0x80
      0035E2 C0 E0            [24] 2328 	push	acc
      0035E4 12 70 A1         [24] 2329 	lcall	_printf
      0035E7 E5 81            [12] 2330 	mov	a,sp
      0035E9 24 F9            [12] 2331 	add	a,#0xf9
      0035EB F5 81            [12] 2332 	mov	sp,a
                                   2333 ;	calc.c:72: printf("% 11ld\t", d);
      0035ED E5 08            [12] 2334 	mov	a,_bp
      0035EF 24 1D            [12] 2335 	add	a,#0x1d
      0035F1 F8               [12] 2336 	mov	r0,a
      0035F2 E6               [12] 2337 	mov	a,@r0
      0035F3 C0 E0            [24] 2338 	push	acc
      0035F5 08               [12] 2339 	inc	r0
      0035F6 E6               [12] 2340 	mov	a,@r0
      0035F7 C0 E0            [24] 2341 	push	acc
      0035F9 08               [12] 2342 	inc	r0
      0035FA E6               [12] 2343 	mov	a,@r0
      0035FB C0 E0            [24] 2344 	push	acc
      0035FD 08               [12] 2345 	inc	r0
      0035FE E6               [12] 2346 	mov	a,@r0
      0035FF C0 E0            [24] 2347 	push	acc
      003601 74 62            [12] 2348 	mov	a,#___str_1
      003603 C0 E0            [24] 2349 	push	acc
      003605 74 89            [12] 2350 	mov	a,#(___str_1 >> 8)
      003607 C0 E0            [24] 2351 	push	acc
      003609 74 80            [12] 2352 	mov	a,#0x80
      00360B C0 E0            [24] 2353 	push	acc
      00360D 12 70 A1         [24] 2354 	lcall	_printf
      003610 E5 81            [12] 2355 	mov	a,sp
      003612 24 F9            [12] 2356 	add	a,#0xf9
      003614 F5 81            [12] 2357 	mov	sp,a
                                   2358 ;	calc.c:73: printf("%011lo\t", d);
      003616 E5 08            [12] 2359 	mov	a,_bp
      003618 24 1D            [12] 2360 	add	a,#0x1d
      00361A F8               [12] 2361 	mov	r0,a
      00361B E6               [12] 2362 	mov	a,@r0
      00361C C0 E0            [24] 2363 	push	acc
      00361E 08               [12] 2364 	inc	r0
      00361F E6               [12] 2365 	mov	a,@r0
      003620 C0 E0            [24] 2366 	push	acc
      003622 08               [12] 2367 	inc	r0
      003623 E6               [12] 2368 	mov	a,@r0
      003624 C0 E0            [24] 2369 	push	acc
      003626 08               [12] 2370 	inc	r0
      003627 E6               [12] 2371 	mov	a,@r0
      003628 C0 E0            [24] 2372 	push	acc
      00362A 74 6A            [12] 2373 	mov	a,#___str_2
      00362C C0 E0            [24] 2374 	push	acc
      00362E 74 89            [12] 2375 	mov	a,#(___str_2 >> 8)
      003630 C0 E0            [24] 2376 	push	acc
      003632 74 80            [12] 2377 	mov	a,#0x80
      003634 C0 E0            [24] 2378 	push	acc
      003636 12 70 A1         [24] 2379 	lcall	_printf
      003639 E5 81            [12] 2380 	mov	a,sp
      00363B 24 F9            [12] 2381 	add	a,#0xf9
      00363D F5 81            [12] 2382 	mov	sp,a
                                   2383 ;	calc.c:74: printbin(d);
      00363F E5 08            [12] 2384 	mov	a,_bp
      003641 24 1D            [12] 2385 	add	a,#0x1d
      003643 F8               [12] 2386 	mov	r0,a
      003644 86 07            [24] 2387 	mov	ar7,@r0
      003646 08               [12] 2388 	inc	r0
      003647 86 06            [24] 2389 	mov	ar6,@r0
      003649 08               [12] 2390 	inc	r0
      00364A 86 05            [24] 2391 	mov	ar5,@r0
      00364C 08               [12] 2392 	inc	r0
      00364D 86 02            [24] 2393 	mov	ar2,@r0
                                   2394 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      00364F E5 08            [12] 2395 	mov	a,_bp
      003651 24 21            [12] 2396 	add	a,#0x21
      003653 F8               [12] 2397 	mov	r0,a
      003654 E4               [12] 2398 	clr	a
      003655 F6               [12] 2399 	mov	@r0,a
      003656 08               [12] 2400 	inc	r0
      003657 F6               [12] 2401 	mov	@r0,a
      003658 08               [12] 2402 	inc	r0
      003659 F6               [12] 2403 	mov	@r0,a
      00365A 08               [12] 2404 	inc	r0
      00365B 76 80            [12] 2405 	mov	@r0,#0x80
      00365D                       2406 00361$:
                                   2407 ;	calc.c:65: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00365D E5 08            [12] 2408 	mov	a,_bp
      00365F 24 07            [12] 2409 	add	a,#0x07
      003661 F8               [12] 2410 	mov	r0,a
      003662 A6 07            [24] 2411 	mov	@r0,ar7
      003664 08               [12] 2412 	inc	r0
      003665 A6 06            [24] 2413 	mov	@r0,ar6
      003667 08               [12] 2414 	inc	r0
      003668 A6 05            [24] 2415 	mov	@r0,ar5
      00366A 08               [12] 2416 	inc	r0
      00366B A6 02            [24] 2417 	mov	@r0,ar2
      00366D E5 08            [12] 2418 	mov	a,_bp
      00366F 24 07            [12] 2419 	add	a,#0x07
      003671 F8               [12] 2420 	mov	r0,a
      003672 E5 08            [12] 2421 	mov	a,_bp
      003674 24 21            [12] 2422 	add	a,#0x21
      003676 F9               [12] 2423 	mov	r1,a
      003677 E7               [12] 2424 	mov	a,@r1
      003678 56               [12] 2425 	anl	a,@r0
      003679 F6               [12] 2426 	mov	@r0,a
      00367A 09               [12] 2427 	inc	r1
      00367B E7               [12] 2428 	mov	a,@r1
      00367C 08               [12] 2429 	inc	r0
      00367D 56               [12] 2430 	anl	a,@r0
      00367E F6               [12] 2431 	mov	@r0,a
      00367F 09               [12] 2432 	inc	r1
      003680 E7               [12] 2433 	mov	a,@r1
      003681 08               [12] 2434 	inc	r0
      003682 56               [12] 2435 	anl	a,@r0
      003683 F6               [12] 2436 	mov	@r0,a
      003684 09               [12] 2437 	inc	r1
      003685 E7               [12] 2438 	mov	a,@r1
      003686 08               [12] 2439 	inc	r0
      003687 56               [12] 2440 	anl	a,@r0
      003688 F6               [12] 2441 	mov	@r0,a
      003689 E5 08            [12] 2442 	mov	a,_bp
      00368B 24 07            [12] 2443 	add	a,#0x07
      00368D F8               [12] 2444 	mov	r0,a
      00368E E6               [12] 2445 	mov	a,@r0
      00368F 08               [12] 2446 	inc	r0
      003690 46               [12] 2447 	orl	a,@r0
      003691 08               [12] 2448 	inc	r0
      003692 46               [12] 2449 	orl	a,@r0
      003693 08               [12] 2450 	inc	r0
      003694 46               [12] 2451 	orl	a,@r0
      003695 60 06            [24] 2452 	jz	00502$
      003697 7B 31            [12] 2453 	mov	r3,#0x31
      003699 7C 00            [12] 2454 	mov	r4,#0x00
      00369B 80 04            [24] 2455 	sjmp	00503$
      00369D                       2456 00502$:
      00369D 7B 30            [12] 2457 	mov	r3,#0x30
      00369F 7C 00            [12] 2458 	mov	r4,#0x00
      0036A1                       2459 00503$:
      0036A1 8B 82            [24] 2460 	mov	dpl,r3
      0036A3 8C 83            [24] 2461 	mov	dph,r4
      0036A5 12 2B 70         [24] 2462 	lcall	_putchar
                                   2463 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      0036A8 E5 08            [12] 2464 	mov	a,_bp
      0036AA 24 21            [12] 2465 	add	a,#0x21
      0036AC F8               [12] 2466 	mov	r0,a
      0036AD 08               [12] 2467 	inc	r0
      0036AE 08               [12] 2468 	inc	r0
      0036AF 08               [12] 2469 	inc	r0
      0036B0 E6               [12] 2470 	mov	a,@r0
      0036B1 C3               [12] 2471 	clr	c
      0036B2 13               [12] 2472 	rrc	a
      0036B3 F6               [12] 2473 	mov	@r0,a
      0036B4 18               [12] 2474 	dec	r0
      0036B5 E6               [12] 2475 	mov	a,@r0
      0036B6 13               [12] 2476 	rrc	a
      0036B7 F6               [12] 2477 	mov	@r0,a
      0036B8 18               [12] 2478 	dec	r0
      0036B9 E6               [12] 2479 	mov	a,@r0
      0036BA 13               [12] 2480 	rrc	a
      0036BB F6               [12] 2481 	mov	@r0,a
      0036BC 18               [12] 2482 	dec	r0
      0036BD E6               [12] 2483 	mov	a,@r0
      0036BE 13               [12] 2484 	rrc	a
      0036BF F6               [12] 2485 	mov	@r0,a
      0036C0 E5 08            [12] 2486 	mov	a,_bp
      0036C2 24 21            [12] 2487 	add	a,#0x21
      0036C4 F8               [12] 2488 	mov	r0,a
      0036C5 E6               [12] 2489 	mov	a,@r0
      0036C6 08               [12] 2490 	inc	r0
      0036C7 46               [12] 2491 	orl	a,@r0
      0036C8 08               [12] 2492 	inc	r0
      0036C9 46               [12] 2493 	orl	a,@r0
      0036CA 08               [12] 2494 	inc	r0
      0036CB 46               [12] 2495 	orl	a,@r0
      0036CC 70 8F            [24] 2496 	jnz	00361$
                                   2497 ;	calc.c:146: printstr("\r\n");
      0036CE 7F 72            [12] 2498 	mov	r7,#___str_3
      0036D0 7E 89            [12] 2499 	mov	r6,#(___str_3 >> 8)
      0036D2 7D 80            [12] 2500 	mov	r5,#0x80
                                   2501 ;	calc.c:58: return;
      0036D4                       2502 00364$:
                                   2503 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0036D4 8F 82            [24] 2504 	mov	dpl,r7
      0036D6 8E 83            [24] 2505 	mov	dph,r6
      0036D8 8D F0            [24] 2506 	mov	b,r5
      0036DA 12 70 DA         [24] 2507 	lcall	__gptrget
      0036DD FC               [12] 2508 	mov	r4,a
      0036DE 70 03            [24] 2509 	jnz	01269$
      0036E0 02 57 13         [24] 2510 	ljmp	00249$
      0036E3                       2511 01269$:
      0036E3 7B 00            [12] 2512 	mov	r3,#0x00
      0036E5 8C 82            [24] 2513 	mov	dpl,r4
      0036E7 8B 83            [24] 2514 	mov	dph,r3
      0036E9 12 2B 70         [24] 2515 	lcall	_putchar
      0036EC 0F               [12] 2516 	inc	r7
                                   2517 ;	calc.c:149: case 'V':
      0036ED BF 00 E4         [24] 2518 	cjne	r7,#0x00,00364$
      0036F0 0E               [12] 2519 	inc	r6
      0036F1 80 E1            [24] 2520 	sjmp	00364$
      0036F3                       2521 00105$:
                                   2522 ;	calc.c:150: printstr("\r\n");
      0036F3 7F 72            [12] 2523 	mov	r7,#___str_3
      0036F5 7E 89            [12] 2524 	mov	r6,#(___str_3 >> 8)
      0036F7 7D 80            [12] 2525 	mov	r5,#0x80
                                   2526 ;	calc.c:58: return;
      0036F9                       2527 00367$:
                                   2528 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0036F9 8F 82            [24] 2529 	mov	dpl,r7
      0036FB 8E 83            [24] 2530 	mov	dph,r6
      0036FD 8D F0            [24] 2531 	mov	b,r5
      0036FF 12 70 DA         [24] 2532 	lcall	__gptrget
      003702 FC               [12] 2533 	mov	r4,a
      003703 60 10            [24] 2534 	jz	00262$
      003705 7B 00            [12] 2535 	mov	r3,#0x00
      003707 8C 82            [24] 2536 	mov	dpl,r4
      003709 8B 83            [24] 2537 	mov	dph,r3
      00370B 12 2B 70         [24] 2538 	lcall	_putchar
      00370E 0F               [12] 2539 	inc	r7
                                   2540 ;	calc.c:150: printstr("\r\n");
      00370F BF 00 E7         [24] 2541 	cjne	r7,#0x00,00367$
      003712 0E               [12] 2542 	inc	r6
      003713 80 E4            [24] 2543 	sjmp	00367$
      003715                       2544 00262$:
                                   2545 ;	calc.c:151: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      003715 E5 08            [12] 2546 	mov	a,_bp
      003717 24 12            [12] 2547 	add	a,#0x12
      003719 F8               [12] 2548 	mov	r0,a
      00371A 86 07            [24] 2549 	mov	ar7,@r0
      00371C 08               [12] 2550 	inc	r0
      00371D 86 06            [24] 2551 	mov	ar6,@r0
      00371F 08               [12] 2552 	inc	r0
      003720 86 05            [24] 2553 	mov	ar5,@r0
      003722 E5 08            [12] 2554 	mov	a,_bp
      003724 24 12            [12] 2555 	add	a,#0x12
      003726 F8               [12] 2556 	mov	r0,a
      003727 74 11            [12] 2557 	mov	a,#0x11
      003729 26               [12] 2558 	add	a,@r0
      00372A FA               [12] 2559 	mov	r2,a
      00372B 74 40            [12] 2560 	mov	a,#0x40
      00372D 08               [12] 2561 	inc	r0
      00372E 36               [12] 2562 	addc	a,@r0
      00372F FB               [12] 2563 	mov	r3,a
      003730 08               [12] 2564 	inc	r0
      003731 86 04            [24] 2565 	mov	ar4,@r0
      003733 8A 82            [24] 2566 	mov	dpl,r2
      003735 8B 83            [24] 2567 	mov	dph,r3
      003737 8C F0            [24] 2568 	mov	b,r4
      003739 12 70 DA         [24] 2569 	lcall	__gptrget
      00373C FA               [12] 2570 	mov	r2,a
      00373D A3               [24] 2571 	inc	dptr
      00373E 12 70 DA         [24] 2572 	lcall	__gptrget
      003741 FB               [12] 2573 	mov	r3,a
      003742 A3               [24] 2574 	inc	dptr
      003743 12 70 DA         [24] 2575 	lcall	__gptrget
      003746 FC               [12] 2576 	mov	r4,a
      003747 C0 07            [24] 2577 	push	ar7
      003749 C0 06            [24] 2578 	push	ar6
      00374B C0 05            [24] 2579 	push	ar5
      00374D 74 B9            [12] 2580 	mov	a,#_dump_peek
      00374F C0 E0            [24] 2581 	push	acc
      003751 74 32            [12] 2582 	mov	a,#(_dump_peek >> 8)
      003753 C0 E0            [24] 2583 	push	acc
      003755 8A 82            [24] 2584 	mov	dpl,r2
      003757 8B 83            [24] 2585 	mov	dph,r3
      003759 8C F0            [24] 2586 	mov	b,r4
      00375B 12 2A 91         [24] 2587 	lcall	_stack_iter_peek
      00375E AB 82            [24] 2588 	mov	r3,dpl
      003760 AC 83            [24] 2589 	mov	r4,dph
      003762 E5 81            [12] 2590 	mov	a,sp
      003764 24 FB            [12] 2591 	add	a,#0xfb
      003766 F5 81            [12] 2592 	mov	sp,a
      003768 EB               [12] 2593 	mov	a,r3
      003769 4C               [12] 2594 	orl	a,r4
      00376A 60 03            [24] 2595 	jz	01273$
      00376C 02 57 13         [24] 2596 	ljmp	00249$
      00376F                       2597 01273$:
      00376F 7F 75            [12] 2598 	mov	r7,#___str_4
      003771 7E 89            [12] 2599 	mov	r6,#(___str_4 >> 8)
      003773 7D 80            [12] 2600 	mov	r5,#0x80
                                   2601 ;	calc.c:58: return;
      003775                       2602 00370$:
                                   2603 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003775 8F 82            [24] 2604 	mov	dpl,r7
      003777 8E 83            [24] 2605 	mov	dph,r6
      003779 8D F0            [24] 2606 	mov	b,r5
      00377B 12 70 DA         [24] 2607 	lcall	__gptrget
      00377E FC               [12] 2608 	mov	r4,a
      00377F 70 03            [24] 2609 	jnz	01274$
      003781 02 57 13         [24] 2610 	ljmp	00249$
      003784                       2611 01274$:
      003784 7B 00            [12] 2612 	mov	r3,#0x00
      003786 8C 82            [24] 2613 	mov	dpl,r4
      003788 8B 83            [24] 2614 	mov	dph,r3
      00378A 12 2B 70         [24] 2615 	lcall	_putchar
      00378D 0F               [12] 2616 	inc	r7
                                   2617 ;	calc.c:154: case 'p':
      00378E BF 00 E4         [24] 2618 	cjne	r7,#0x00,00370$
      003791 0E               [12] 2619 	inc	r6
      003792 80 E1            [24] 2620 	sjmp	00370$
      003794                       2621 00109$:
                                   2622 ;	calc.c:155: printstr("\r\n");
      003794 7F 72            [12] 2623 	mov	r7,#___str_3
      003796 7E 89            [12] 2624 	mov	r6,#(___str_3 >> 8)
      003798 7D 80            [12] 2625 	mov	r5,#0x80
                                   2626 ;	calc.c:58: return;
      00379A                       2627 00373$:
                                   2628 ;	calc.c:56: for (; *s; s++) putchar(*s);
      00379A 8F 82            [24] 2629 	mov	dpl,r7
      00379C 8E 83            [24] 2630 	mov	dph,r6
      00379E 8D F0            [24] 2631 	mov	b,r5
      0037A0 12 70 DA         [24] 2632 	lcall	__gptrget
      0037A3 FC               [12] 2633 	mov	r4,a
      0037A4 60 10            [24] 2634 	jz	00266$
      0037A6 7B 00            [12] 2635 	mov	r3,#0x00
      0037A8 8C 82            [24] 2636 	mov	dpl,r4
      0037AA 8B 83            [24] 2637 	mov	dph,r3
      0037AC 12 2B 70         [24] 2638 	lcall	_putchar
      0037AF 0F               [12] 2639 	inc	r7
                                   2640 ;	calc.c:155: printstr("\r\n");
      0037B0 BF 00 E7         [24] 2641 	cjne	r7,#0x00,00373$
      0037B3 0E               [12] 2642 	inc	r6
      0037B4 80 E4            [24] 2643 	sjmp	00373$
      0037B6                       2644 00266$:
                                   2645 ;	calc.c:156: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0037B6 E5 08            [12] 2646 	mov	a,_bp
      0037B8 24 15            [12] 2647 	add	a,#0x15
      0037BA FF               [12] 2648 	mov	r7,a
      0037BB 7E 00            [12] 2649 	mov	r6,#0x00
      0037BD 7D 40            [12] 2650 	mov	r5,#0x40
      0037BF E5 08            [12] 2651 	mov	a,_bp
      0037C1 24 12            [12] 2652 	add	a,#0x12
      0037C3 F8               [12] 2653 	mov	r0,a
      0037C4 74 11            [12] 2654 	mov	a,#0x11
      0037C6 26               [12] 2655 	add	a,@r0
      0037C7 FA               [12] 2656 	mov	r2,a
      0037C8 ED               [12] 2657 	mov	a,r5
      0037C9 08               [12] 2658 	inc	r0
      0037CA 36               [12] 2659 	addc	a,@r0
      0037CB FB               [12] 2660 	mov	r3,a
      0037CC 08               [12] 2661 	inc	r0
      0037CD 86 04            [24] 2662 	mov	ar4,@r0
      0037CF 8A 82            [24] 2663 	mov	dpl,r2
      0037D1 8B 83            [24] 2664 	mov	dph,r3
      0037D3 8C F0            [24] 2665 	mov	b,r4
      0037D5 12 70 DA         [24] 2666 	lcall	__gptrget
      0037D8 FA               [12] 2667 	mov	r2,a
      0037D9 A3               [24] 2668 	inc	dptr
      0037DA 12 70 DA         [24] 2669 	lcall	__gptrget
      0037DD FB               [12] 2670 	mov	r3,a
      0037DE A3               [24] 2671 	inc	dptr
      0037DF 12 70 DA         [24] 2672 	lcall	__gptrget
      0037E2 FC               [12] 2673 	mov	r4,a
      0037E3 C0 07            [24] 2674 	push	ar7
      0037E5 C0 06            [24] 2675 	push	ar6
      0037E7 C0 05            [24] 2676 	push	ar5
      0037E9 8A 82            [24] 2677 	mov	dpl,r2
      0037EB 8B 83            [24] 2678 	mov	dph,r3
      0037ED 8C F0            [24] 2679 	mov	b,r4
      0037EF 12 27 83         [24] 2680 	lcall	_stack_pop
      0037F2 AB 82            [24] 2681 	mov	r3,dpl
      0037F4 AC 83            [24] 2682 	mov	r4,dph
      0037F6 15 81            [12] 2683 	dec	sp
      0037F8 15 81            [12] 2684 	dec	sp
      0037FA 15 81            [12] 2685 	dec	sp
      0037FC EB               [12] 2686 	mov	a,r3
      0037FD 4C               [12] 2687 	orl	a,r4
      0037FE 70 25            [24] 2688 	jnz	00111$
      003800 7F 75            [12] 2689 	mov	r7,#___str_4
      003802 7E 89            [12] 2690 	mov	r6,#(___str_4 >> 8)
      003804 7D 80            [12] 2691 	mov	r5,#0x80
                                   2692 ;	calc.c:58: return;
      003806                       2693 00376$:
                                   2694 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003806 8F 82            [24] 2695 	mov	dpl,r7
      003808 8E 83            [24] 2696 	mov	dph,r6
      00380A 8D F0            [24] 2697 	mov	b,r5
      00380C 12 70 DA         [24] 2698 	lcall	__gptrget
      00380F FC               [12] 2699 	mov	r4,a
      003810 70 03            [24] 2700 	jnz	01279$
      003812 02 57 13         [24] 2701 	ljmp	00249$
      003815                       2702 01279$:
      003815 7B 00            [12] 2703 	mov	r3,#0x00
      003817 8C 82            [24] 2704 	mov	dpl,r4
      003819 8B 83            [24] 2705 	mov	dph,r3
      00381B 12 2B 70         [24] 2706 	lcall	_putchar
      00381E 0F               [12] 2707 	inc	r7
                                   2708 ;	calc.c:156: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      00381F BF 00 E4         [24] 2709 	cjne	r7,#0x00,00376$
      003822 0E               [12] 2710 	inc	r6
      003823 80 E1            [24] 2711 	sjmp	00376$
      003825                       2712 00111$:
                                   2713 ;	calc.c:158: printstr("PSPTOP\t");
      003825 7F A1            [12] 2714 	mov	r7,#___str_9
      003827 7E 89            [12] 2715 	mov	r6,#(___str_9 >> 8)
      003829 7D 80            [12] 2716 	mov	r5,#0x80
                                   2717 ;	calc.c:58: return;
      00382B                       2718 00379$:
                                   2719 ;	calc.c:56: for (; *s; s++) putchar(*s);
      00382B 8F 82            [24] 2720 	mov	dpl,r7
      00382D 8E 83            [24] 2721 	mov	dph,r6
      00382F 8D F0            [24] 2722 	mov	b,r5
      003831 12 70 DA         [24] 2723 	lcall	__gptrget
      003834 FC               [12] 2724 	mov	r4,a
      003835 60 10            [24] 2725 	jz	00270$
      003837 7B 00            [12] 2726 	mov	r3,#0x00
      003839 8C 82            [24] 2727 	mov	dpl,r4
      00383B 8B 83            [24] 2728 	mov	dph,r3
      00383D 12 2B 70         [24] 2729 	lcall	_putchar
      003840 0F               [12] 2730 	inc	r7
                                   2731 ;	calc.c:158: printstr("PSPTOP\t");
      003841 BF 00 E7         [24] 2732 	cjne	r7,#0x00,00379$
      003844 0E               [12] 2733 	inc	r6
      003845 80 E4            [24] 2734 	sjmp	00379$
      003847                       2735 00270$:
                                   2736 ;	calc.c:159: printall(d0);
      003847 E5 08            [12] 2737 	mov	a,_bp
      003849 24 15            [12] 2738 	add	a,#0x15
      00384B F8               [12] 2739 	mov	r0,a
      00384C 86 07            [24] 2740 	mov	ar7,@r0
      00384E 08               [12] 2741 	inc	r0
      00384F 86 06            [24] 2742 	mov	ar6,@r0
      003851 08               [12] 2743 	inc	r0
      003852 86 05            [24] 2744 	mov	ar5,@r0
      003854 08               [12] 2745 	inc	r0
      003855 86 04            [24] 2746 	mov	ar4,@r0
      003857 E5 08            [12] 2747 	mov	a,_bp
      003859 24 1D            [12] 2748 	add	a,#0x1d
      00385B F8               [12] 2749 	mov	r0,a
      00385C A6 07            [24] 2750 	mov	@r0,ar7
      00385E 08               [12] 2751 	inc	r0
      00385F A6 06            [24] 2752 	mov	@r0,ar6
      003861 08               [12] 2753 	inc	r0
      003862 A6 05            [24] 2754 	mov	@r0,ar5
      003864 08               [12] 2755 	inc	r0
      003865 A6 04            [24] 2756 	mov	@r0,ar4
                                   2757 ;	calc.c:71: printf("%08lx\t", d);
      003867 C0 07            [24] 2758 	push	ar7
      003869 C0 06            [24] 2759 	push	ar6
      00386B C0 05            [24] 2760 	push	ar5
      00386D C0 04            [24] 2761 	push	ar4
      00386F 74 5B            [12] 2762 	mov	a,#___str_0
      003871 C0 E0            [24] 2763 	push	acc
      003873 74 89            [12] 2764 	mov	a,#(___str_0 >> 8)
      003875 C0 E0            [24] 2765 	push	acc
      003877 74 80            [12] 2766 	mov	a,#0x80
      003879 C0 E0            [24] 2767 	push	acc
      00387B 12 70 A1         [24] 2768 	lcall	_printf
      00387E E5 81            [12] 2769 	mov	a,sp
      003880 24 F9            [12] 2770 	add	a,#0xf9
      003882 F5 81            [12] 2771 	mov	sp,a
                                   2772 ;	calc.c:72: printf("% 11ld\t", d);
      003884 E5 08            [12] 2773 	mov	a,_bp
      003886 24 1D            [12] 2774 	add	a,#0x1d
      003888 F8               [12] 2775 	mov	r0,a
      003889 E6               [12] 2776 	mov	a,@r0
      00388A C0 E0            [24] 2777 	push	acc
      00388C 08               [12] 2778 	inc	r0
      00388D E6               [12] 2779 	mov	a,@r0
      00388E C0 E0            [24] 2780 	push	acc
      003890 08               [12] 2781 	inc	r0
      003891 E6               [12] 2782 	mov	a,@r0
      003892 C0 E0            [24] 2783 	push	acc
      003894 08               [12] 2784 	inc	r0
      003895 E6               [12] 2785 	mov	a,@r0
      003896 C0 E0            [24] 2786 	push	acc
      003898 74 62            [12] 2787 	mov	a,#___str_1
      00389A C0 E0            [24] 2788 	push	acc
      00389C 74 89            [12] 2789 	mov	a,#(___str_1 >> 8)
      00389E C0 E0            [24] 2790 	push	acc
      0038A0 74 80            [12] 2791 	mov	a,#0x80
      0038A2 C0 E0            [24] 2792 	push	acc
      0038A4 12 70 A1         [24] 2793 	lcall	_printf
      0038A7 E5 81            [12] 2794 	mov	a,sp
      0038A9 24 F9            [12] 2795 	add	a,#0xf9
      0038AB F5 81            [12] 2796 	mov	sp,a
                                   2797 ;	calc.c:73: printf("%011lo\t", d);
      0038AD E5 08            [12] 2798 	mov	a,_bp
      0038AF 24 1D            [12] 2799 	add	a,#0x1d
      0038B1 F8               [12] 2800 	mov	r0,a
      0038B2 E6               [12] 2801 	mov	a,@r0
      0038B3 C0 E0            [24] 2802 	push	acc
      0038B5 08               [12] 2803 	inc	r0
      0038B6 E6               [12] 2804 	mov	a,@r0
      0038B7 C0 E0            [24] 2805 	push	acc
      0038B9 08               [12] 2806 	inc	r0
      0038BA E6               [12] 2807 	mov	a,@r0
      0038BB C0 E0            [24] 2808 	push	acc
      0038BD 08               [12] 2809 	inc	r0
      0038BE E6               [12] 2810 	mov	a,@r0
      0038BF C0 E0            [24] 2811 	push	acc
      0038C1 74 6A            [12] 2812 	mov	a,#___str_2
      0038C3 C0 E0            [24] 2813 	push	acc
      0038C5 74 89            [12] 2814 	mov	a,#(___str_2 >> 8)
      0038C7 C0 E0            [24] 2815 	push	acc
      0038C9 74 80            [12] 2816 	mov	a,#0x80
      0038CB C0 E0            [24] 2817 	push	acc
      0038CD 12 70 A1         [24] 2818 	lcall	_printf
      0038D0 E5 81            [12] 2819 	mov	a,sp
      0038D2 24 F9            [12] 2820 	add	a,#0xf9
      0038D4 F5 81            [12] 2821 	mov	sp,a
                                   2822 ;	calc.c:74: printbin(d);
      0038D6 E5 08            [12] 2823 	mov	a,_bp
      0038D8 24 1D            [12] 2824 	add	a,#0x1d
      0038DA F8               [12] 2825 	mov	r0,a
      0038DB 86 07            [24] 2826 	mov	ar7,@r0
      0038DD 08               [12] 2827 	inc	r0
      0038DE 86 06            [24] 2828 	mov	ar6,@r0
      0038E0 08               [12] 2829 	inc	r0
      0038E1 86 05            [24] 2830 	mov	ar5,@r0
      0038E3 08               [12] 2831 	inc	r0
      0038E4 86 02            [24] 2832 	mov	ar2,@r0
                                   2833 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      0038E6 E5 08            [12] 2834 	mov	a,_bp
      0038E8 24 21            [12] 2835 	add	a,#0x21
      0038EA F8               [12] 2836 	mov	r0,a
      0038EB E4               [12] 2837 	clr	a
      0038EC F6               [12] 2838 	mov	@r0,a
      0038ED 08               [12] 2839 	inc	r0
      0038EE F6               [12] 2840 	mov	@r0,a
      0038EF 08               [12] 2841 	inc	r0
      0038F0 F6               [12] 2842 	mov	@r0,a
      0038F1 08               [12] 2843 	inc	r0
      0038F2 76 80            [12] 2844 	mov	@r0,#0x80
      0038F4                       2845 00381$:
                                   2846 ;	calc.c:65: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0038F4 E5 08            [12] 2847 	mov	a,_bp
      0038F6 24 07            [12] 2848 	add	a,#0x07
      0038F8 F8               [12] 2849 	mov	r0,a
      0038F9 A6 07            [24] 2850 	mov	@r0,ar7
      0038FB 08               [12] 2851 	inc	r0
      0038FC A6 06            [24] 2852 	mov	@r0,ar6
      0038FE 08               [12] 2853 	inc	r0
      0038FF A6 05            [24] 2854 	mov	@r0,ar5
      003901 08               [12] 2855 	inc	r0
      003902 A6 02            [24] 2856 	mov	@r0,ar2
      003904 E5 08            [12] 2857 	mov	a,_bp
      003906 24 07            [12] 2858 	add	a,#0x07
      003908 F8               [12] 2859 	mov	r0,a
      003909 E5 08            [12] 2860 	mov	a,_bp
      00390B 24 21            [12] 2861 	add	a,#0x21
      00390D F9               [12] 2862 	mov	r1,a
      00390E E7               [12] 2863 	mov	a,@r1
      00390F 56               [12] 2864 	anl	a,@r0
      003910 F6               [12] 2865 	mov	@r0,a
      003911 09               [12] 2866 	inc	r1
      003912 E7               [12] 2867 	mov	a,@r1
      003913 08               [12] 2868 	inc	r0
      003914 56               [12] 2869 	anl	a,@r0
      003915 F6               [12] 2870 	mov	@r0,a
      003916 09               [12] 2871 	inc	r1
      003917 E7               [12] 2872 	mov	a,@r1
      003918 08               [12] 2873 	inc	r0
      003919 56               [12] 2874 	anl	a,@r0
      00391A F6               [12] 2875 	mov	@r0,a
      00391B 09               [12] 2876 	inc	r1
      00391C E7               [12] 2877 	mov	a,@r1
      00391D 08               [12] 2878 	inc	r0
      00391E 56               [12] 2879 	anl	a,@r0
      00391F F6               [12] 2880 	mov	@r0,a
      003920 E5 08            [12] 2881 	mov	a,_bp
      003922 24 07            [12] 2882 	add	a,#0x07
      003924 F8               [12] 2883 	mov	r0,a
      003925 E6               [12] 2884 	mov	a,@r0
      003926 08               [12] 2885 	inc	r0
      003927 46               [12] 2886 	orl	a,@r0
      003928 08               [12] 2887 	inc	r0
      003929 46               [12] 2888 	orl	a,@r0
      00392A 08               [12] 2889 	inc	r0
      00392B 46               [12] 2890 	orl	a,@r0
      00392C 60 06            [24] 2891 	jz	00504$
      00392E 7B 31            [12] 2892 	mov	r3,#0x31
      003930 7C 00            [12] 2893 	mov	r4,#0x00
      003932 80 04            [24] 2894 	sjmp	00505$
      003934                       2895 00504$:
      003934 7B 30            [12] 2896 	mov	r3,#0x30
      003936 7C 00            [12] 2897 	mov	r4,#0x00
      003938                       2898 00505$:
      003938 8B 82            [24] 2899 	mov	dpl,r3
      00393A 8C 83            [24] 2900 	mov	dph,r4
      00393C 12 2B 70         [24] 2901 	lcall	_putchar
                                   2902 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      00393F E5 08            [12] 2903 	mov	a,_bp
      003941 24 21            [12] 2904 	add	a,#0x21
      003943 F8               [12] 2905 	mov	r0,a
      003944 08               [12] 2906 	inc	r0
      003945 08               [12] 2907 	inc	r0
      003946 08               [12] 2908 	inc	r0
      003947 E6               [12] 2909 	mov	a,@r0
      003948 C3               [12] 2910 	clr	c
      003949 13               [12] 2911 	rrc	a
      00394A F6               [12] 2912 	mov	@r0,a
      00394B 18               [12] 2913 	dec	r0
      00394C E6               [12] 2914 	mov	a,@r0
      00394D 13               [12] 2915 	rrc	a
      00394E F6               [12] 2916 	mov	@r0,a
      00394F 18               [12] 2917 	dec	r0
      003950 E6               [12] 2918 	mov	a,@r0
      003951 13               [12] 2919 	rrc	a
      003952 F6               [12] 2920 	mov	@r0,a
      003953 18               [12] 2921 	dec	r0
      003954 E6               [12] 2922 	mov	a,@r0
      003955 13               [12] 2923 	rrc	a
      003956 F6               [12] 2924 	mov	@r0,a
      003957 E5 08            [12] 2925 	mov	a,_bp
      003959 24 21            [12] 2926 	add	a,#0x21
      00395B F8               [12] 2927 	mov	r0,a
      00395C E6               [12] 2928 	mov	a,@r0
      00395D 08               [12] 2929 	inc	r0
      00395E 46               [12] 2930 	orl	a,@r0
      00395F 08               [12] 2931 	inc	r0
      003960 46               [12] 2932 	orl	a,@r0
      003961 08               [12] 2933 	inc	r0
      003962 46               [12] 2934 	orl	a,@r0
      003963 70 8F            [24] 2935 	jnz	00381$
                                   2936 ;	calc.c:160: printstr("\r\n");
      003965 7F 72            [12] 2937 	mov	r7,#___str_3
      003967 7E 89            [12] 2938 	mov	r6,#(___str_3 >> 8)
      003969 7D 80            [12] 2939 	mov	r5,#0x80
                                   2940 ;	calc.c:58: return;
      00396B                       2941 00384$:
                                   2942 ;	calc.c:56: for (; *s; s++) putchar(*s);
      00396B 8F 82            [24] 2943 	mov	dpl,r7
      00396D 8E 83            [24] 2944 	mov	dph,r6
      00396F 8D F0            [24] 2945 	mov	b,r5
      003971 12 70 DA         [24] 2946 	lcall	__gptrget
      003974 FC               [12] 2947 	mov	r4,a
      003975 70 03            [24] 2948 	jnz	01285$
      003977 02 57 13         [24] 2949 	ljmp	00249$
      00397A                       2950 01285$:
      00397A 7B 00            [12] 2951 	mov	r3,#0x00
      00397C 8C 82            [24] 2952 	mov	dpl,r4
      00397E 8B 83            [24] 2953 	mov	dph,r3
      003980 12 2B 70         [24] 2954 	lcall	_putchar
      003983 0F               [12] 2955 	inc	r7
                                   2956 ;	calc.c:163: case 'P':
      003984 BF 00 E4         [24] 2957 	cjne	r7,#0x00,00384$
      003987 0E               [12] 2958 	inc	r6
      003988 80 E1            [24] 2959 	sjmp	00384$
      00398A                       2960 00113$:
                                   2961 ;	calc.c:164: printstr("\r\n");
      00398A 7F 72            [12] 2962 	mov	r7,#___str_3
      00398C 7E 89            [12] 2963 	mov	r6,#(___str_3 >> 8)
      00398E 7D 80            [12] 2964 	mov	r5,#0x80
                                   2965 ;	calc.c:58: return;
      003990                       2966 00387$:
                                   2967 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003990 8F 82            [24] 2968 	mov	dpl,r7
      003992 8E 83            [24] 2969 	mov	dph,r6
      003994 8D F0            [24] 2970 	mov	b,r5
      003996 12 70 DA         [24] 2971 	lcall	__gptrget
      003999 FC               [12] 2972 	mov	r4,a
      00399A 60 10            [24] 2973 	jz	00277$
      00399C 7B 00            [12] 2974 	mov	r3,#0x00
      00399E 8C 82            [24] 2975 	mov	dpl,r4
      0039A0 8B 83            [24] 2976 	mov	dph,r3
      0039A2 12 2B 70         [24] 2977 	lcall	_putchar
      0039A5 0F               [12] 2978 	inc	r7
                                   2979 ;	calc.c:164: printstr("\r\n");
      0039A6 BF 00 E7         [24] 2980 	cjne	r7,#0x00,00387$
      0039A9 0E               [12] 2981 	inc	r6
      0039AA 80 E4            [24] 2982 	sjmp	00387$
      0039AC                       2983 00277$:
                                   2984 ;	calc.c:165: (void)dump_pop(_ctx, delta);
      0039AC E5 08            [12] 2985 	mov	a,_bp
      0039AE 24 FB            [12] 2986 	add	a,#0xfb
      0039B0 F8               [12] 2987 	mov	r0,a
      0039B1 E6               [12] 2988 	mov	a,@r0
      0039B2 C0 E0            [24] 2989 	push	acc
      0039B4 08               [12] 2990 	inc	r0
      0039B5 E6               [12] 2991 	mov	a,@r0
      0039B6 C0 E0            [24] 2992 	push	acc
      0039B8 08               [12] 2993 	inc	r0
      0039B9 E6               [12] 2994 	mov	a,@r0
      0039BA C0 E0            [24] 2995 	push	acc
      0039BC A8 08            [24] 2996 	mov	r0,_bp
      0039BE 08               [12] 2997 	inc	r0
      0039BF 86 82            [24] 2998 	mov	dpl,@r0
      0039C1 08               [12] 2999 	inc	r0
      0039C2 86 83            [24] 3000 	mov	dph,@r0
      0039C4 08               [12] 3001 	inc	r0
      0039C5 86 F0            [24] 3002 	mov	b,@r0
      0039C7 12 2D 11         [24] 3003 	lcall	_dump_pop
      0039CA 15 81            [12] 3004 	dec	sp
      0039CC 15 81            [12] 3005 	dec	sp
      0039CE 15 81            [12] 3006 	dec	sp
                                   3007 ;	calc.c:166: break;
      0039D0 02 57 13         [24] 3008 	ljmp	00249$
                                   3009 ;	calc.c:167: case 'x':
      0039D3                       3010 00114$:
                                   3011 ;	calc.c:168: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0039D3 E5 08            [12] 3012 	mov	a,_bp
      0039D5 24 15            [12] 3013 	add	a,#0x15
      0039D7 FF               [12] 3014 	mov	r7,a
      0039D8 7E 00            [12] 3015 	mov	r6,#0x00
      0039DA 7D 40            [12] 3016 	mov	r5,#0x40
      0039DC E5 08            [12] 3017 	mov	a,_bp
      0039DE 24 12            [12] 3018 	add	a,#0x12
      0039E0 F8               [12] 3019 	mov	r0,a
      0039E1 E5 08            [12] 3020 	mov	a,_bp
      0039E3 24 07            [12] 3021 	add	a,#0x07
      0039E5 F9               [12] 3022 	mov	r1,a
      0039E6 74 11            [12] 3023 	mov	a,#0x11
      0039E8 26               [12] 3024 	add	a,@r0
      0039E9 F7               [12] 3025 	mov	@r1,a
      0039EA 74 40            [12] 3026 	mov	a,#0x40
      0039EC 08               [12] 3027 	inc	r0
      0039ED 36               [12] 3028 	addc	a,@r0
      0039EE 09               [12] 3029 	inc	r1
      0039EF F7               [12] 3030 	mov	@r1,a
      0039F0 08               [12] 3031 	inc	r0
      0039F1 09               [12] 3032 	inc	r1
      0039F2 E6               [12] 3033 	mov	a,@r0
      0039F3 F7               [12] 3034 	mov	@r1,a
      0039F4 E5 08            [12] 3035 	mov	a,_bp
      0039F6 24 07            [12] 3036 	add	a,#0x07
      0039F8 F8               [12] 3037 	mov	r0,a
      0039F9 86 82            [24] 3038 	mov	dpl,@r0
      0039FB 08               [12] 3039 	inc	r0
      0039FC 86 83            [24] 3040 	mov	dph,@r0
      0039FE 08               [12] 3041 	inc	r0
      0039FF 86 F0            [24] 3042 	mov	b,@r0
      003A01 12 70 DA         [24] 3043 	lcall	__gptrget
      003A04 FA               [12] 3044 	mov	r2,a
      003A05 A3               [24] 3045 	inc	dptr
      003A06 12 70 DA         [24] 3046 	lcall	__gptrget
      003A09 FB               [12] 3047 	mov	r3,a
      003A0A A3               [24] 3048 	inc	dptr
      003A0B 12 70 DA         [24] 3049 	lcall	__gptrget
      003A0E FC               [12] 3050 	mov	r4,a
      003A0F C0 07            [24] 3051 	push	ar7
      003A11 C0 06            [24] 3052 	push	ar6
      003A13 C0 05            [24] 3053 	push	ar5
      003A15 8A 82            [24] 3054 	mov	dpl,r2
      003A17 8B 83            [24] 3055 	mov	dph,r3
      003A19 8C F0            [24] 3056 	mov	b,r4
      003A1B 12 27 83         [24] 3057 	lcall	_stack_pop
      003A1E AB 82            [24] 3058 	mov	r3,dpl
      003A20 AC 83            [24] 3059 	mov	r4,dph
      003A22 15 81            [12] 3060 	dec	sp
      003A24 15 81            [12] 3061 	dec	sp
      003A26 15 81            [12] 3062 	dec	sp
      003A28 EB               [12] 3063 	mov	a,r3
      003A29 4C               [12] 3064 	orl	a,r4
      003A2A 70 25            [24] 3065 	jnz	00119$
      003A2C 7F A9            [12] 3066 	mov	r7,#___str_10
      003A2E 7E 89            [12] 3067 	mov	r6,#(___str_10 >> 8)
      003A30 7D 80            [12] 3068 	mov	r5,#0x80
                                   3069 ;	calc.c:58: return;
      003A32                       3070 00390$:
                                   3071 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003A32 8F 82            [24] 3072 	mov	dpl,r7
      003A34 8E 83            [24] 3073 	mov	dph,r6
      003A36 8D F0            [24] 3074 	mov	b,r5
      003A38 12 70 DA         [24] 3075 	lcall	__gptrget
      003A3B FC               [12] 3076 	mov	r4,a
      003A3C 70 03            [24] 3077 	jnz	01290$
      003A3E 02 57 13         [24] 3078 	ljmp	00249$
      003A41                       3079 01290$:
      003A41 7B 00            [12] 3080 	mov	r3,#0x00
      003A43 8C 82            [24] 3081 	mov	dpl,r4
      003A45 8B 83            [24] 3082 	mov	dph,r3
      003A47 12 2B 70         [24] 3083 	lcall	_putchar
      003A4A 0F               [12] 3084 	inc	r7
                                   3085 ;	calc.c:168: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003A4B BF 00 E4         [24] 3086 	cjne	r7,#0x00,00390$
      003A4E 0E               [12] 3087 	inc	r6
      003A4F 80 E1            [24] 3088 	sjmp	00390$
      003A51                       3089 00119$:
                                   3090 ;	calc.c:169: else if (!stack_pop(ctx->ps, &d1)) {
      003A51 E5 08            [12] 3091 	mov	a,_bp
      003A53 24 19            [12] 3092 	add	a,#0x19
      003A55 FF               [12] 3093 	mov	r7,a
      003A56 7E 00            [12] 3094 	mov	r6,#0x00
      003A58 7D 40            [12] 3095 	mov	r5,#0x40
      003A5A E5 08            [12] 3096 	mov	a,_bp
      003A5C 24 07            [12] 3097 	add	a,#0x07
      003A5E F8               [12] 3098 	mov	r0,a
      003A5F 86 82            [24] 3099 	mov	dpl,@r0
      003A61 08               [12] 3100 	inc	r0
      003A62 86 83            [24] 3101 	mov	dph,@r0
      003A64 08               [12] 3102 	inc	r0
      003A65 86 F0            [24] 3103 	mov	b,@r0
      003A67 12 70 DA         [24] 3104 	lcall	__gptrget
      003A6A FA               [12] 3105 	mov	r2,a
      003A6B A3               [24] 3106 	inc	dptr
      003A6C 12 70 DA         [24] 3107 	lcall	__gptrget
      003A6F FB               [12] 3108 	mov	r3,a
      003A70 A3               [24] 3109 	inc	dptr
      003A71 12 70 DA         [24] 3110 	lcall	__gptrget
      003A74 FC               [12] 3111 	mov	r4,a
      003A75 C0 07            [24] 3112 	push	ar7
      003A77 C0 06            [24] 3113 	push	ar6
      003A79 C0 05            [24] 3114 	push	ar5
      003A7B 8A 82            [24] 3115 	mov	dpl,r2
      003A7D 8B 83            [24] 3116 	mov	dph,r3
      003A7F 8C F0            [24] 3117 	mov	b,r4
      003A81 12 27 83         [24] 3118 	lcall	_stack_pop
      003A84 AB 82            [24] 3119 	mov	r3,dpl
      003A86 AC 83            [24] 3120 	mov	r4,dph
      003A88 15 81            [12] 3121 	dec	sp
      003A8A 15 81            [12] 3122 	dec	sp
      003A8C 15 81            [12] 3123 	dec	sp
      003A8E EB               [12] 3124 	mov	a,r3
      003A8F 4C               [12] 3125 	orl	a,r4
      003A90 70 63            [24] 3126 	jnz	00116$
                                   3127 ;	calc.c:170: (void)stack_push(ctx->ps, d0);
      003A92 E5 08            [12] 3128 	mov	a,_bp
      003A94 24 07            [12] 3129 	add	a,#0x07
      003A96 F8               [12] 3130 	mov	r0,a
      003A97 86 82            [24] 3131 	mov	dpl,@r0
      003A99 08               [12] 3132 	inc	r0
      003A9A 86 83            [24] 3133 	mov	dph,@r0
      003A9C 08               [12] 3134 	inc	r0
      003A9D 86 F0            [24] 3135 	mov	b,@r0
      003A9F 12 70 DA         [24] 3136 	lcall	__gptrget
      003AA2 FA               [12] 3137 	mov	r2,a
      003AA3 A3               [24] 3138 	inc	dptr
      003AA4 12 70 DA         [24] 3139 	lcall	__gptrget
      003AA7 FB               [12] 3140 	mov	r3,a
      003AA8 A3               [24] 3141 	inc	dptr
      003AA9 12 70 DA         [24] 3142 	lcall	__gptrget
      003AAC FC               [12] 3143 	mov	r4,a
      003AAD E5 08            [12] 3144 	mov	a,_bp
      003AAF 24 15            [12] 3145 	add	a,#0x15
      003AB1 F8               [12] 3146 	mov	r0,a
      003AB2 E6               [12] 3147 	mov	a,@r0
      003AB3 C0 E0            [24] 3148 	push	acc
      003AB5 08               [12] 3149 	inc	r0
      003AB6 E6               [12] 3150 	mov	a,@r0
      003AB7 C0 E0            [24] 3151 	push	acc
      003AB9 08               [12] 3152 	inc	r0
      003ABA E6               [12] 3153 	mov	a,@r0
      003ABB C0 E0            [24] 3154 	push	acc
      003ABD 08               [12] 3155 	inc	r0
      003ABE E6               [12] 3156 	mov	a,@r0
      003ABF C0 E0            [24] 3157 	push	acc
      003AC1 8A 82            [24] 3158 	mov	dpl,r2
      003AC3 8B 83            [24] 3159 	mov	dph,r3
      003AC5 8C F0            [24] 3160 	mov	b,r4
      003AC7 12 26 B5         [24] 3161 	lcall	_stack_push
      003ACA E5 81            [12] 3162 	mov	a,sp
      003ACC 24 FC            [12] 3163 	add	a,#0xfc
      003ACE F5 81            [12] 3164 	mov	sp,a
                                   3165 ;	calc.c:171: printstr("\r\nstack underflow\r\n");
      003AD0 7F A9            [12] 3166 	mov	r7,#___str_10
      003AD2 7E 89            [12] 3167 	mov	r6,#(___str_10 >> 8)
      003AD4 7D 80            [12] 3168 	mov	r5,#0x80
                                   3169 ;	calc.c:58: return;
      003AD6                       3170 00393$:
                                   3171 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003AD6 8F 82            [24] 3172 	mov	dpl,r7
      003AD8 8E 83            [24] 3173 	mov	dph,r6
      003ADA 8D F0            [24] 3174 	mov	b,r5
      003ADC 12 70 DA         [24] 3175 	lcall	__gptrget
      003ADF FC               [12] 3176 	mov	r4,a
      003AE0 70 03            [24] 3177 	jnz	01293$
      003AE2 02 57 13         [24] 3178 	ljmp	00249$
      003AE5                       3179 01293$:
      003AE5 7B 00            [12] 3180 	mov	r3,#0x00
      003AE7 8C 82            [24] 3181 	mov	dpl,r4
      003AE9 8B 83            [24] 3182 	mov	dph,r3
      003AEB 12 2B 70         [24] 3183 	lcall	_putchar
      003AEE 0F               [12] 3184 	inc	r7
                                   3185 ;	calc.c:171: printstr("\r\nstack underflow\r\n");
      003AEF BF 00 E4         [24] 3186 	cjne	r7,#0x00,00393$
      003AF2 0E               [12] 3187 	inc	r6
      003AF3 80 E1            [24] 3188 	sjmp	00393$
      003AF5                       3189 00116$:
                                   3190 ;	calc.c:173: (void)stack_push(ctx->ps, d0);
      003AF5 E5 08            [12] 3191 	mov	a,_bp
      003AF7 24 07            [12] 3192 	add	a,#0x07
      003AF9 F8               [12] 3193 	mov	r0,a
      003AFA 86 82            [24] 3194 	mov	dpl,@r0
      003AFC 08               [12] 3195 	inc	r0
      003AFD 86 83            [24] 3196 	mov	dph,@r0
      003AFF 08               [12] 3197 	inc	r0
      003B00 86 F0            [24] 3198 	mov	b,@r0
      003B02 12 70 DA         [24] 3199 	lcall	__gptrget
      003B05 FA               [12] 3200 	mov	r2,a
      003B06 A3               [24] 3201 	inc	dptr
      003B07 12 70 DA         [24] 3202 	lcall	__gptrget
      003B0A FB               [12] 3203 	mov	r3,a
      003B0B A3               [24] 3204 	inc	dptr
      003B0C 12 70 DA         [24] 3205 	lcall	__gptrget
      003B0F FC               [12] 3206 	mov	r4,a
      003B10 E5 08            [12] 3207 	mov	a,_bp
      003B12 24 15            [12] 3208 	add	a,#0x15
      003B14 F8               [12] 3209 	mov	r0,a
      003B15 E6               [12] 3210 	mov	a,@r0
      003B16 C0 E0            [24] 3211 	push	acc
      003B18 08               [12] 3212 	inc	r0
      003B19 E6               [12] 3213 	mov	a,@r0
      003B1A C0 E0            [24] 3214 	push	acc
      003B1C 08               [12] 3215 	inc	r0
      003B1D E6               [12] 3216 	mov	a,@r0
      003B1E C0 E0            [24] 3217 	push	acc
      003B20 08               [12] 3218 	inc	r0
      003B21 E6               [12] 3219 	mov	a,@r0
      003B22 C0 E0            [24] 3220 	push	acc
      003B24 8A 82            [24] 3221 	mov	dpl,r2
      003B26 8B 83            [24] 3222 	mov	dph,r3
      003B28 8C F0            [24] 3223 	mov	b,r4
      003B2A 12 26 B5         [24] 3224 	lcall	_stack_push
      003B2D E5 81            [12] 3225 	mov	a,sp
      003B2F 24 FC            [12] 3226 	add	a,#0xfc
      003B31 F5 81            [12] 3227 	mov	sp,a
                                   3228 ;	calc.c:174: (void)stack_push(ctx->ps, d1);
      003B33 E5 08            [12] 3229 	mov	a,_bp
      003B35 24 07            [12] 3230 	add	a,#0x07
      003B37 F8               [12] 3231 	mov	r0,a
      003B38 86 82            [24] 3232 	mov	dpl,@r0
      003B3A 08               [12] 3233 	inc	r0
      003B3B 86 83            [24] 3234 	mov	dph,@r0
      003B3D 08               [12] 3235 	inc	r0
      003B3E 86 F0            [24] 3236 	mov	b,@r0
      003B40 12 70 DA         [24] 3237 	lcall	__gptrget
      003B43 FA               [12] 3238 	mov	r2,a
      003B44 A3               [24] 3239 	inc	dptr
      003B45 12 70 DA         [24] 3240 	lcall	__gptrget
      003B48 FB               [12] 3241 	mov	r3,a
      003B49 A3               [24] 3242 	inc	dptr
      003B4A 12 70 DA         [24] 3243 	lcall	__gptrget
      003B4D FC               [12] 3244 	mov	r4,a
      003B4E E5 08            [12] 3245 	mov	a,_bp
      003B50 24 19            [12] 3246 	add	a,#0x19
      003B52 F8               [12] 3247 	mov	r0,a
      003B53 E6               [12] 3248 	mov	a,@r0
      003B54 C0 E0            [24] 3249 	push	acc
      003B56 08               [12] 3250 	inc	r0
      003B57 E6               [12] 3251 	mov	a,@r0
      003B58 C0 E0            [24] 3252 	push	acc
      003B5A 08               [12] 3253 	inc	r0
      003B5B E6               [12] 3254 	mov	a,@r0
      003B5C C0 E0            [24] 3255 	push	acc
      003B5E 08               [12] 3256 	inc	r0
      003B5F E6               [12] 3257 	mov	a,@r0
      003B60 C0 E0            [24] 3258 	push	acc
      003B62 8A 82            [24] 3259 	mov	dpl,r2
      003B64 8B 83            [24] 3260 	mov	dph,r3
      003B66 8C F0            [24] 3261 	mov	b,r4
      003B68 12 26 B5         [24] 3262 	lcall	_stack_push
      003B6B E5 81            [12] 3263 	mov	a,sp
      003B6D 24 FC            [12] 3264 	add	a,#0xfc
      003B6F F5 81            [12] 3265 	mov	sp,a
                                   3266 ;	calc.c:176: break;
      003B71 02 57 13         [24] 3267 	ljmp	00249$
                                   3268 ;	calc.c:177: case 'm':
      003B74                       3269 00121$:
                                   3270 ;	calc.c:178: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003B74 E5 08            [12] 3271 	mov	a,_bp
      003B76 24 15            [12] 3272 	add	a,#0x15
      003B78 FF               [12] 3273 	mov	r7,a
      003B79 7E 00            [12] 3274 	mov	r6,#0x00
      003B7B 7D 40            [12] 3275 	mov	r5,#0x40
      003B7D E5 08            [12] 3276 	mov	a,_bp
      003B7F 24 12            [12] 3277 	add	a,#0x12
      003B81 F8               [12] 3278 	mov	r0,a
      003B82 E5 08            [12] 3279 	mov	a,_bp
      003B84 24 07            [12] 3280 	add	a,#0x07
      003B86 F9               [12] 3281 	mov	r1,a
      003B87 74 11            [12] 3282 	mov	a,#0x11
      003B89 26               [12] 3283 	add	a,@r0
      003B8A F7               [12] 3284 	mov	@r1,a
      003B8B 74 40            [12] 3285 	mov	a,#0x40
      003B8D 08               [12] 3286 	inc	r0
      003B8E 36               [12] 3287 	addc	a,@r0
      003B8F 09               [12] 3288 	inc	r1
      003B90 F7               [12] 3289 	mov	@r1,a
      003B91 08               [12] 3290 	inc	r0
      003B92 09               [12] 3291 	inc	r1
      003B93 E6               [12] 3292 	mov	a,@r0
      003B94 F7               [12] 3293 	mov	@r1,a
      003B95 E5 08            [12] 3294 	mov	a,_bp
      003B97 24 07            [12] 3295 	add	a,#0x07
      003B99 F8               [12] 3296 	mov	r0,a
      003B9A 86 82            [24] 3297 	mov	dpl,@r0
      003B9C 08               [12] 3298 	inc	r0
      003B9D 86 83            [24] 3299 	mov	dph,@r0
      003B9F 08               [12] 3300 	inc	r0
      003BA0 86 F0            [24] 3301 	mov	b,@r0
      003BA2 12 70 DA         [24] 3302 	lcall	__gptrget
      003BA5 FA               [12] 3303 	mov	r2,a
      003BA6 A3               [24] 3304 	inc	dptr
      003BA7 12 70 DA         [24] 3305 	lcall	__gptrget
      003BAA FB               [12] 3306 	mov	r3,a
      003BAB A3               [24] 3307 	inc	dptr
      003BAC 12 70 DA         [24] 3308 	lcall	__gptrget
      003BAF FC               [12] 3309 	mov	r4,a
      003BB0 C0 07            [24] 3310 	push	ar7
      003BB2 C0 06            [24] 3311 	push	ar6
      003BB4 C0 05            [24] 3312 	push	ar5
      003BB6 8A 82            [24] 3313 	mov	dpl,r2
      003BB8 8B 83            [24] 3314 	mov	dph,r3
      003BBA 8C F0            [24] 3315 	mov	b,r4
      003BBC 12 27 83         [24] 3316 	lcall	_stack_pop
      003BBF AB 82            [24] 3317 	mov	r3,dpl
      003BC1 AC 83            [24] 3318 	mov	r4,dph
      003BC3 15 81            [12] 3319 	dec	sp
      003BC5 15 81            [12] 3320 	dec	sp
      003BC7 15 81            [12] 3321 	dec	sp
      003BC9 EB               [12] 3322 	mov	a,r3
      003BCA 4C               [12] 3323 	orl	a,r4
      003BCB 70 25            [24] 3324 	jnz	00125$
      003BCD 7F A9            [12] 3325 	mov	r7,#___str_10
      003BCF 7E 89            [12] 3326 	mov	r6,#(___str_10 >> 8)
      003BD1 7D 80            [12] 3327 	mov	r5,#0x80
                                   3328 ;	calc.c:58: return;
      003BD3                       3329 00396$:
                                   3330 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003BD3 8F 82            [24] 3331 	mov	dpl,r7
      003BD5 8E 83            [24] 3332 	mov	dph,r6
      003BD7 8D F0            [24] 3333 	mov	b,r5
      003BD9 12 70 DA         [24] 3334 	lcall	__gptrget
      003BDC FC               [12] 3335 	mov	r4,a
      003BDD 70 03            [24] 3336 	jnz	01296$
      003BDF 02 57 13         [24] 3337 	ljmp	00249$
      003BE2                       3338 01296$:
      003BE2 7B 00            [12] 3339 	mov	r3,#0x00
      003BE4 8C 82            [24] 3340 	mov	dpl,r4
      003BE6 8B 83            [24] 3341 	mov	dph,r3
      003BE8 12 2B 70         [24] 3342 	lcall	_putchar
      003BEB 0F               [12] 3343 	inc	r7
                                   3344 ;	calc.c:178: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003BEC BF 00 E4         [24] 3345 	cjne	r7,#0x00,00396$
      003BEF 0E               [12] 3346 	inc	r6
      003BF0 80 E1            [24] 3347 	sjmp	00396$
      003BF2                       3348 00125$:
                                   3349 ;	calc.c:180: if (!stack_push(ctx->ss, d0)) {
      003BF2 E5 08            [12] 3350 	mov	a,_bp
      003BF4 24 12            [12] 3351 	add	a,#0x12
      003BF6 F8               [12] 3352 	mov	r0,a
      003BF7 74 14            [12] 3353 	mov	a,#0x14
      003BF9 26               [12] 3354 	add	a,@r0
      003BFA FA               [12] 3355 	mov	r2,a
      003BFB 74 40            [12] 3356 	mov	a,#0x40
      003BFD 08               [12] 3357 	inc	r0
      003BFE 36               [12] 3358 	addc	a,@r0
      003BFF FB               [12] 3359 	mov	r3,a
      003C00 08               [12] 3360 	inc	r0
      003C01 86 04            [24] 3361 	mov	ar4,@r0
      003C03 8A 82            [24] 3362 	mov	dpl,r2
      003C05 8B 83            [24] 3363 	mov	dph,r3
      003C07 8C F0            [24] 3364 	mov	b,r4
      003C09 12 70 DA         [24] 3365 	lcall	__gptrget
      003C0C FA               [12] 3366 	mov	r2,a
      003C0D A3               [24] 3367 	inc	dptr
      003C0E 12 70 DA         [24] 3368 	lcall	__gptrget
      003C11 FB               [12] 3369 	mov	r3,a
      003C12 A3               [24] 3370 	inc	dptr
      003C13 12 70 DA         [24] 3371 	lcall	__gptrget
      003C16 FC               [12] 3372 	mov	r4,a
      003C17 E5 08            [12] 3373 	mov	a,_bp
      003C19 24 15            [12] 3374 	add	a,#0x15
      003C1B F8               [12] 3375 	mov	r0,a
      003C1C E6               [12] 3376 	mov	a,@r0
      003C1D C0 E0            [24] 3377 	push	acc
      003C1F 08               [12] 3378 	inc	r0
      003C20 E6               [12] 3379 	mov	a,@r0
      003C21 C0 E0            [24] 3380 	push	acc
      003C23 08               [12] 3381 	inc	r0
      003C24 E6               [12] 3382 	mov	a,@r0
      003C25 C0 E0            [24] 3383 	push	acc
      003C27 08               [12] 3384 	inc	r0
      003C28 E6               [12] 3385 	mov	a,@r0
      003C29 C0 E0            [24] 3386 	push	acc
      003C2B 8A 82            [24] 3387 	mov	dpl,r2
      003C2D 8B 83            [24] 3388 	mov	dph,r3
      003C2F 8C F0            [24] 3389 	mov	b,r4
      003C31 12 26 B5         [24] 3390 	lcall	_stack_push
      003C34 AB 82            [24] 3391 	mov	r3,dpl
      003C36 AC 83            [24] 3392 	mov	r4,dph
      003C38 E5 81            [12] 3393 	mov	a,sp
      003C3A 24 FC            [12] 3394 	add	a,#0xfc
      003C3C F5 81            [12] 3395 	mov	sp,a
      003C3E EB               [12] 3396 	mov	a,r3
      003C3F 4C               [12] 3397 	orl	a,r4
      003C40 60 03            [24] 3398 	jz	01298$
      003C42 02 57 13         [24] 3399 	ljmp	00249$
      003C45                       3400 01298$:
                                   3401 ;	calc.c:181: printstr("\r\nsecondary stack overflow\r\n");
      003C45 7F BD            [12] 3402 	mov	r7,#___str_11
      003C47 7E 89            [12] 3403 	mov	r6,#(___str_11 >> 8)
      003C49 7D 80            [12] 3404 	mov	r5,#0x80
                                   3405 ;	calc.c:58: return;
      003C4B                       3406 00399$:
                                   3407 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003C4B 8F 82            [24] 3408 	mov	dpl,r7
      003C4D 8E 83            [24] 3409 	mov	dph,r6
      003C4F 8D F0            [24] 3410 	mov	b,r5
      003C51 12 70 DA         [24] 3411 	lcall	__gptrget
      003C54 FC               [12] 3412 	mov	r4,a
      003C55 60 10            [24] 3413 	jz	00285$
      003C57 7B 00            [12] 3414 	mov	r3,#0x00
      003C59 8C 82            [24] 3415 	mov	dpl,r4
      003C5B 8B 83            [24] 3416 	mov	dph,r3
      003C5D 12 2B 70         [24] 3417 	lcall	_putchar
      003C60 0F               [12] 3418 	inc	r7
                                   3419 ;	calc.c:181: printstr("\r\nsecondary stack overflow\r\n");
      003C61 BF 00 E7         [24] 3420 	cjne	r7,#0x00,00399$
      003C64 0E               [12] 3421 	inc	r6
      003C65 80 E4            [24] 3422 	sjmp	00399$
      003C67                       3423 00285$:
                                   3424 ;	calc.c:182: (void)stack_push(ctx->ps, d0);
      003C67 E5 08            [12] 3425 	mov	a,_bp
      003C69 24 07            [12] 3426 	add	a,#0x07
      003C6B F8               [12] 3427 	mov	r0,a
      003C6C 86 82            [24] 3428 	mov	dpl,@r0
      003C6E 08               [12] 3429 	inc	r0
      003C6F 86 83            [24] 3430 	mov	dph,@r0
      003C71 08               [12] 3431 	inc	r0
      003C72 86 F0            [24] 3432 	mov	b,@r0
      003C74 12 70 DA         [24] 3433 	lcall	__gptrget
      003C77 FA               [12] 3434 	mov	r2,a
      003C78 A3               [24] 3435 	inc	dptr
      003C79 12 70 DA         [24] 3436 	lcall	__gptrget
      003C7C FB               [12] 3437 	mov	r3,a
      003C7D A3               [24] 3438 	inc	dptr
      003C7E 12 70 DA         [24] 3439 	lcall	__gptrget
      003C81 FC               [12] 3440 	mov	r4,a
      003C82 E5 08            [12] 3441 	mov	a,_bp
      003C84 24 15            [12] 3442 	add	a,#0x15
      003C86 F8               [12] 3443 	mov	r0,a
      003C87 E6               [12] 3444 	mov	a,@r0
      003C88 C0 E0            [24] 3445 	push	acc
      003C8A 08               [12] 3446 	inc	r0
      003C8B E6               [12] 3447 	mov	a,@r0
      003C8C C0 E0            [24] 3448 	push	acc
      003C8E 08               [12] 3449 	inc	r0
      003C8F E6               [12] 3450 	mov	a,@r0
      003C90 C0 E0            [24] 3451 	push	acc
      003C92 08               [12] 3452 	inc	r0
      003C93 E6               [12] 3453 	mov	a,@r0
      003C94 C0 E0            [24] 3454 	push	acc
      003C96 8A 82            [24] 3455 	mov	dpl,r2
      003C98 8B 83            [24] 3456 	mov	dph,r3
      003C9A 8C F0            [24] 3457 	mov	b,r4
      003C9C 12 26 B5         [24] 3458 	lcall	_stack_push
      003C9F E5 81            [12] 3459 	mov	a,sp
      003CA1 24 FC            [12] 3460 	add	a,#0xfc
      003CA3 F5 81            [12] 3461 	mov	sp,a
                                   3462 ;	calc.c:185: break;
      003CA5 02 57 13         [24] 3463 	ljmp	00249$
                                   3464 ;	calc.c:186: case 'M':
      003CA8                       3465 00127$:
                                   3466 ;	calc.c:187: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003CA8 E5 08            [12] 3467 	mov	a,_bp
      003CAA 24 15            [12] 3468 	add	a,#0x15
      003CAC FF               [12] 3469 	mov	r7,a
      003CAD 7E 00            [12] 3470 	mov	r6,#0x00
      003CAF 7D 40            [12] 3471 	mov	r5,#0x40
      003CB1 E5 08            [12] 3472 	mov	a,_bp
      003CB3 24 12            [12] 3473 	add	a,#0x12
      003CB5 F8               [12] 3474 	mov	r0,a
      003CB6 E5 08            [12] 3475 	mov	a,_bp
      003CB8 24 07            [12] 3476 	add	a,#0x07
      003CBA F9               [12] 3477 	mov	r1,a
      003CBB 74 14            [12] 3478 	mov	a,#0x14
      003CBD 26               [12] 3479 	add	a,@r0
      003CBE F7               [12] 3480 	mov	@r1,a
      003CBF 74 40            [12] 3481 	mov	a,#0x40
      003CC1 08               [12] 3482 	inc	r0
      003CC2 36               [12] 3483 	addc	a,@r0
      003CC3 09               [12] 3484 	inc	r1
      003CC4 F7               [12] 3485 	mov	@r1,a
      003CC5 08               [12] 3486 	inc	r0
      003CC6 09               [12] 3487 	inc	r1
      003CC7 E6               [12] 3488 	mov	a,@r0
      003CC8 F7               [12] 3489 	mov	@r1,a
      003CC9 E5 08            [12] 3490 	mov	a,_bp
      003CCB 24 07            [12] 3491 	add	a,#0x07
      003CCD F8               [12] 3492 	mov	r0,a
      003CCE 86 82            [24] 3493 	mov	dpl,@r0
      003CD0 08               [12] 3494 	inc	r0
      003CD1 86 83            [24] 3495 	mov	dph,@r0
      003CD3 08               [12] 3496 	inc	r0
      003CD4 86 F0            [24] 3497 	mov	b,@r0
      003CD6 12 70 DA         [24] 3498 	lcall	__gptrget
      003CD9 FA               [12] 3499 	mov	r2,a
      003CDA A3               [24] 3500 	inc	dptr
      003CDB 12 70 DA         [24] 3501 	lcall	__gptrget
      003CDE FB               [12] 3502 	mov	r3,a
      003CDF A3               [24] 3503 	inc	dptr
      003CE0 12 70 DA         [24] 3504 	lcall	__gptrget
      003CE3 FC               [12] 3505 	mov	r4,a
      003CE4 C0 07            [24] 3506 	push	ar7
      003CE6 C0 06            [24] 3507 	push	ar6
      003CE8 C0 05            [24] 3508 	push	ar5
      003CEA 8A 82            [24] 3509 	mov	dpl,r2
      003CEC 8B 83            [24] 3510 	mov	dph,r3
      003CEE 8C F0            [24] 3511 	mov	b,r4
      003CF0 12 27 83         [24] 3512 	lcall	_stack_pop
      003CF3 AB 82            [24] 3513 	mov	r3,dpl
      003CF5 AC 83            [24] 3514 	mov	r4,dph
      003CF7 15 81            [12] 3515 	dec	sp
      003CF9 15 81            [12] 3516 	dec	sp
      003CFB 15 81            [12] 3517 	dec	sp
      003CFD EB               [12] 3518 	mov	a,r3
      003CFE 4C               [12] 3519 	orl	a,r4
      003CFF 70 25            [24] 3520 	jnz	00131$
      003D01 7F DA            [12] 3521 	mov	r7,#___str_12
      003D03 7E 89            [12] 3522 	mov	r6,#(___str_12 >> 8)
      003D05 7D 80            [12] 3523 	mov	r5,#0x80
                                   3524 ;	calc.c:58: return;
      003D07                       3525 00402$:
                                   3526 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003D07 8F 82            [24] 3527 	mov	dpl,r7
      003D09 8E 83            [24] 3528 	mov	dph,r6
      003D0B 8D F0            [24] 3529 	mov	b,r5
      003D0D 12 70 DA         [24] 3530 	lcall	__gptrget
      003D10 FC               [12] 3531 	mov	r4,a
      003D11 70 03            [24] 3532 	jnz	01302$
      003D13 02 57 13         [24] 3533 	ljmp	00249$
      003D16                       3534 01302$:
      003D16 7B 00            [12] 3535 	mov	r3,#0x00
      003D18 8C 82            [24] 3536 	mov	dpl,r4
      003D1A 8B 83            [24] 3537 	mov	dph,r3
      003D1C 12 2B 70         [24] 3538 	lcall	_putchar
      003D1F 0F               [12] 3539 	inc	r7
                                   3540 ;	calc.c:187: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003D20 BF 00 E4         [24] 3541 	cjne	r7,#0x00,00402$
      003D23 0E               [12] 3542 	inc	r6
      003D24 80 E1            [24] 3543 	sjmp	00402$
      003D26                       3544 00131$:
                                   3545 ;	calc.c:189: if (!stack_push(ctx->ps, d0)) {
      003D26 E5 08            [12] 3546 	mov	a,_bp
      003D28 24 12            [12] 3547 	add	a,#0x12
      003D2A F8               [12] 3548 	mov	r0,a
      003D2B 74 11            [12] 3549 	mov	a,#0x11
      003D2D 26               [12] 3550 	add	a,@r0
      003D2E FA               [12] 3551 	mov	r2,a
      003D2F 74 40            [12] 3552 	mov	a,#0x40
      003D31 08               [12] 3553 	inc	r0
      003D32 36               [12] 3554 	addc	a,@r0
      003D33 FB               [12] 3555 	mov	r3,a
      003D34 08               [12] 3556 	inc	r0
      003D35 86 04            [24] 3557 	mov	ar4,@r0
      003D37 8A 82            [24] 3558 	mov	dpl,r2
      003D39 8B 83            [24] 3559 	mov	dph,r3
      003D3B 8C F0            [24] 3560 	mov	b,r4
      003D3D 12 70 DA         [24] 3561 	lcall	__gptrget
      003D40 FA               [12] 3562 	mov	r2,a
      003D41 A3               [24] 3563 	inc	dptr
      003D42 12 70 DA         [24] 3564 	lcall	__gptrget
      003D45 FB               [12] 3565 	mov	r3,a
      003D46 A3               [24] 3566 	inc	dptr
      003D47 12 70 DA         [24] 3567 	lcall	__gptrget
      003D4A FC               [12] 3568 	mov	r4,a
      003D4B E5 08            [12] 3569 	mov	a,_bp
      003D4D 24 15            [12] 3570 	add	a,#0x15
      003D4F F8               [12] 3571 	mov	r0,a
      003D50 E6               [12] 3572 	mov	a,@r0
      003D51 C0 E0            [24] 3573 	push	acc
      003D53 08               [12] 3574 	inc	r0
      003D54 E6               [12] 3575 	mov	a,@r0
      003D55 C0 E0            [24] 3576 	push	acc
      003D57 08               [12] 3577 	inc	r0
      003D58 E6               [12] 3578 	mov	a,@r0
      003D59 C0 E0            [24] 3579 	push	acc
      003D5B 08               [12] 3580 	inc	r0
      003D5C E6               [12] 3581 	mov	a,@r0
      003D5D C0 E0            [24] 3582 	push	acc
      003D5F 8A 82            [24] 3583 	mov	dpl,r2
      003D61 8B 83            [24] 3584 	mov	dph,r3
      003D63 8C F0            [24] 3585 	mov	b,r4
      003D65 12 26 B5         [24] 3586 	lcall	_stack_push
      003D68 AB 82            [24] 3587 	mov	r3,dpl
      003D6A AC 83            [24] 3588 	mov	r4,dph
      003D6C E5 81            [12] 3589 	mov	a,sp
      003D6E 24 FC            [12] 3590 	add	a,#0xfc
      003D70 F5 81            [12] 3591 	mov	sp,a
      003D72 EB               [12] 3592 	mov	a,r3
      003D73 4C               [12] 3593 	orl	a,r4
      003D74 60 03            [24] 3594 	jz	01304$
      003D76 02 57 13         [24] 3595 	ljmp	00249$
      003D79                       3596 01304$:
                                   3597 ;	calc.c:190: printstr("\r\nstack overflow\r\n");
      003D79 7F F8            [12] 3598 	mov	r7,#___str_13
      003D7B 7E 89            [12] 3599 	mov	r6,#(___str_13 >> 8)
      003D7D 7D 80            [12] 3600 	mov	r5,#0x80
                                   3601 ;	calc.c:58: return;
      003D7F                       3602 00405$:
                                   3603 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003D7F 8F 82            [24] 3604 	mov	dpl,r7
      003D81 8E 83            [24] 3605 	mov	dph,r6
      003D83 8D F0            [24] 3606 	mov	b,r5
      003D85 12 70 DA         [24] 3607 	lcall	__gptrget
      003D88 FC               [12] 3608 	mov	r4,a
      003D89 60 10            [24] 3609 	jz	00289$
      003D8B 7B 00            [12] 3610 	mov	r3,#0x00
      003D8D 8C 82            [24] 3611 	mov	dpl,r4
      003D8F 8B 83            [24] 3612 	mov	dph,r3
      003D91 12 2B 70         [24] 3613 	lcall	_putchar
      003D94 0F               [12] 3614 	inc	r7
                                   3615 ;	calc.c:190: printstr("\r\nstack overflow\r\n");
      003D95 BF 00 E7         [24] 3616 	cjne	r7,#0x00,00405$
      003D98 0E               [12] 3617 	inc	r6
      003D99 80 E4            [24] 3618 	sjmp	00405$
      003D9B                       3619 00289$:
                                   3620 ;	calc.c:191: (void)stack_push(ctx->ss, d0);
      003D9B E5 08            [12] 3621 	mov	a,_bp
      003D9D 24 07            [12] 3622 	add	a,#0x07
      003D9F F8               [12] 3623 	mov	r0,a
      003DA0 86 82            [24] 3624 	mov	dpl,@r0
      003DA2 08               [12] 3625 	inc	r0
      003DA3 86 83            [24] 3626 	mov	dph,@r0
      003DA5 08               [12] 3627 	inc	r0
      003DA6 86 F0            [24] 3628 	mov	b,@r0
      003DA8 12 70 DA         [24] 3629 	lcall	__gptrget
      003DAB FA               [12] 3630 	mov	r2,a
      003DAC A3               [24] 3631 	inc	dptr
      003DAD 12 70 DA         [24] 3632 	lcall	__gptrget
      003DB0 FB               [12] 3633 	mov	r3,a
      003DB1 A3               [24] 3634 	inc	dptr
      003DB2 12 70 DA         [24] 3635 	lcall	__gptrget
      003DB5 FC               [12] 3636 	mov	r4,a
      003DB6 E5 08            [12] 3637 	mov	a,_bp
      003DB8 24 15            [12] 3638 	add	a,#0x15
      003DBA F8               [12] 3639 	mov	r0,a
      003DBB E6               [12] 3640 	mov	a,@r0
      003DBC C0 E0            [24] 3641 	push	acc
      003DBE 08               [12] 3642 	inc	r0
      003DBF E6               [12] 3643 	mov	a,@r0
      003DC0 C0 E0            [24] 3644 	push	acc
      003DC2 08               [12] 3645 	inc	r0
      003DC3 E6               [12] 3646 	mov	a,@r0
      003DC4 C0 E0            [24] 3647 	push	acc
      003DC6 08               [12] 3648 	inc	r0
      003DC7 E6               [12] 3649 	mov	a,@r0
      003DC8 C0 E0            [24] 3650 	push	acc
      003DCA 8A 82            [24] 3651 	mov	dpl,r2
      003DCC 8B 83            [24] 3652 	mov	dph,r3
      003DCE 8C F0            [24] 3653 	mov	b,r4
      003DD0 12 26 B5         [24] 3654 	lcall	_stack_push
      003DD3 E5 81            [12] 3655 	mov	a,sp
      003DD5 24 FC            [12] 3656 	add	a,#0xfc
      003DD7 F5 81            [12] 3657 	mov	sp,a
                                   3658 ;	calc.c:194: break;
      003DD9 02 57 13         [24] 3659 	ljmp	00249$
                                   3660 ;	calc.c:195: case 'u':
      003DDC                       3661 00133$:
                                   3662 ;	calc.c:196: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003DDC E5 08            [12] 3663 	mov	a,_bp
      003DDE 24 15            [12] 3664 	add	a,#0x15
      003DE0 FF               [12] 3665 	mov	r7,a
      003DE1 7E 00            [12] 3666 	mov	r6,#0x00
      003DE3 7D 40            [12] 3667 	mov	r5,#0x40
      003DE5 E5 08            [12] 3668 	mov	a,_bp
      003DE7 24 12            [12] 3669 	add	a,#0x12
      003DE9 F8               [12] 3670 	mov	r0,a
      003DEA 74 11            [12] 3671 	mov	a,#0x11
      003DEC 26               [12] 3672 	add	a,@r0
      003DED FA               [12] 3673 	mov	r2,a
      003DEE ED               [12] 3674 	mov	a,r5
      003DEF 08               [12] 3675 	inc	r0
      003DF0 36               [12] 3676 	addc	a,@r0
      003DF1 FB               [12] 3677 	mov	r3,a
      003DF2 08               [12] 3678 	inc	r0
      003DF3 86 04            [24] 3679 	mov	ar4,@r0
      003DF5 8A 82            [24] 3680 	mov	dpl,r2
      003DF7 8B 83            [24] 3681 	mov	dph,r3
      003DF9 8C F0            [24] 3682 	mov	b,r4
      003DFB 12 70 DA         [24] 3683 	lcall	__gptrget
      003DFE FA               [12] 3684 	mov	r2,a
      003DFF A3               [24] 3685 	inc	dptr
      003E00 12 70 DA         [24] 3686 	lcall	__gptrget
      003E03 FB               [12] 3687 	mov	r3,a
      003E04 A3               [24] 3688 	inc	dptr
      003E05 12 70 DA         [24] 3689 	lcall	__gptrget
      003E08 FC               [12] 3690 	mov	r4,a
      003E09 C0 07            [24] 3691 	push	ar7
      003E0B C0 06            [24] 3692 	push	ar6
      003E0D C0 05            [24] 3693 	push	ar5
      003E0F 8A 82            [24] 3694 	mov	dpl,r2
      003E11 8B 83            [24] 3695 	mov	dph,r3
      003E13 8C F0            [24] 3696 	mov	b,r4
      003E15 12 28 5E         [24] 3697 	lcall	_stack_peek
      003E18 AB 82            [24] 3698 	mov	r3,dpl
      003E1A AC 83            [24] 3699 	mov	r4,dph
      003E1C 15 81            [12] 3700 	dec	sp
      003E1E 15 81            [12] 3701 	dec	sp
      003E20 15 81            [12] 3702 	dec	sp
      003E22 EB               [12] 3703 	mov	a,r3
      003E23 4C               [12] 3704 	orl	a,r4
      003E24 70 25            [24] 3705 	jnz	00137$
      003E26 7F A9            [12] 3706 	mov	r7,#___str_10
      003E28 7E 89            [12] 3707 	mov	r6,#(___str_10 >> 8)
      003E2A 7D 80            [12] 3708 	mov	r5,#0x80
                                   3709 ;	calc.c:58: return;
      003E2C                       3710 00408$:
                                   3711 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003E2C 8F 82            [24] 3712 	mov	dpl,r7
      003E2E 8E 83            [24] 3713 	mov	dph,r6
      003E30 8D F0            [24] 3714 	mov	b,r5
      003E32 12 70 DA         [24] 3715 	lcall	__gptrget
      003E35 FC               [12] 3716 	mov	r4,a
      003E36 70 03            [24] 3717 	jnz	01308$
      003E38 02 57 13         [24] 3718 	ljmp	00249$
      003E3B                       3719 01308$:
      003E3B 7B 00            [12] 3720 	mov	r3,#0x00
      003E3D 8C 82            [24] 3721 	mov	dpl,r4
      003E3F 8B 83            [24] 3722 	mov	dph,r3
      003E41 12 2B 70         [24] 3723 	lcall	_putchar
      003E44 0F               [12] 3724 	inc	r7
                                   3725 ;	calc.c:196: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003E45 BF 00 E4         [24] 3726 	cjne	r7,#0x00,00408$
      003E48 0E               [12] 3727 	inc	r6
      003E49 80 E1            [24] 3728 	sjmp	00408$
      003E4B                       3729 00137$:
                                   3730 ;	calc.c:197: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      003E4B E5 08            [12] 3731 	mov	a,_bp
      003E4D 24 12            [12] 3732 	add	a,#0x12
      003E4F F8               [12] 3733 	mov	r0,a
      003E50 74 14            [12] 3734 	mov	a,#0x14
      003E52 26               [12] 3735 	add	a,@r0
      003E53 FA               [12] 3736 	mov	r2,a
      003E54 74 40            [12] 3737 	mov	a,#0x40
      003E56 08               [12] 3738 	inc	r0
      003E57 36               [12] 3739 	addc	a,@r0
      003E58 FB               [12] 3740 	mov	r3,a
      003E59 08               [12] 3741 	inc	r0
      003E5A 86 04            [24] 3742 	mov	ar4,@r0
      003E5C 8A 82            [24] 3743 	mov	dpl,r2
      003E5E 8B 83            [24] 3744 	mov	dph,r3
      003E60 8C F0            [24] 3745 	mov	b,r4
      003E62 12 70 DA         [24] 3746 	lcall	__gptrget
      003E65 FA               [12] 3747 	mov	r2,a
      003E66 A3               [24] 3748 	inc	dptr
      003E67 12 70 DA         [24] 3749 	lcall	__gptrget
      003E6A FB               [12] 3750 	mov	r3,a
      003E6B A3               [24] 3751 	inc	dptr
      003E6C 12 70 DA         [24] 3752 	lcall	__gptrget
      003E6F FC               [12] 3753 	mov	r4,a
      003E70 E5 08            [12] 3754 	mov	a,_bp
      003E72 24 15            [12] 3755 	add	a,#0x15
      003E74 F8               [12] 3756 	mov	r0,a
      003E75 E6               [12] 3757 	mov	a,@r0
      003E76 C0 E0            [24] 3758 	push	acc
      003E78 08               [12] 3759 	inc	r0
      003E79 E6               [12] 3760 	mov	a,@r0
      003E7A C0 E0            [24] 3761 	push	acc
      003E7C 08               [12] 3762 	inc	r0
      003E7D E6               [12] 3763 	mov	a,@r0
      003E7E C0 E0            [24] 3764 	push	acc
      003E80 08               [12] 3765 	inc	r0
      003E81 E6               [12] 3766 	mov	a,@r0
      003E82 C0 E0            [24] 3767 	push	acc
      003E84 8A 82            [24] 3768 	mov	dpl,r2
      003E86 8B 83            [24] 3769 	mov	dph,r3
      003E88 8C F0            [24] 3770 	mov	b,r4
      003E8A 12 26 B5         [24] 3771 	lcall	_stack_push
      003E8D AB 82            [24] 3772 	mov	r3,dpl
      003E8F AC 83            [24] 3773 	mov	r4,dph
      003E91 E5 81            [12] 3774 	mov	a,sp
      003E93 24 FC            [12] 3775 	add	a,#0xfc
      003E95 F5 81            [12] 3776 	mov	sp,a
      003E97 EB               [12] 3777 	mov	a,r3
      003E98 4C               [12] 3778 	orl	a,r4
      003E99 60 03            [24] 3779 	jz	01310$
      003E9B 02 57 13         [24] 3780 	ljmp	00249$
      003E9E                       3781 01310$:
      003E9E 7F BD            [12] 3782 	mov	r7,#___str_11
      003EA0 7E 89            [12] 3783 	mov	r6,#(___str_11 >> 8)
      003EA2 7D 80            [12] 3784 	mov	r5,#0x80
                                   3785 ;	calc.c:58: return;
      003EA4                       3786 00411$:
                                   3787 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003EA4 8F 82            [24] 3788 	mov	dpl,r7
      003EA6 8E 83            [24] 3789 	mov	dph,r6
      003EA8 8D F0            [24] 3790 	mov	b,r5
      003EAA 12 70 DA         [24] 3791 	lcall	__gptrget
      003EAD FC               [12] 3792 	mov	r4,a
      003EAE 70 03            [24] 3793 	jnz	01311$
      003EB0 02 57 13         [24] 3794 	ljmp	00249$
      003EB3                       3795 01311$:
      003EB3 7B 00            [12] 3796 	mov	r3,#0x00
      003EB5 8C 82            [24] 3797 	mov	dpl,r4
      003EB7 8B 83            [24] 3798 	mov	dph,r3
      003EB9 12 2B 70         [24] 3799 	lcall	_putchar
      003EBC 0F               [12] 3800 	inc	r7
                                   3801 ;	calc.c:199: case 'U':
      003EBD BF 00 E4         [24] 3802 	cjne	r7,#0x00,00411$
      003EC0 0E               [12] 3803 	inc	r6
      003EC1 80 E1            [24] 3804 	sjmp	00411$
      003EC3                       3805 00139$:
                                   3806 ;	calc.c:200: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003EC3 E5 08            [12] 3807 	mov	a,_bp
      003EC5 24 15            [12] 3808 	add	a,#0x15
      003EC7 FF               [12] 3809 	mov	r7,a
      003EC8 7E 00            [12] 3810 	mov	r6,#0x00
      003ECA 7D 40            [12] 3811 	mov	r5,#0x40
      003ECC E5 08            [12] 3812 	mov	a,_bp
      003ECE 24 12            [12] 3813 	add	a,#0x12
      003ED0 F8               [12] 3814 	mov	r0,a
      003ED1 74 14            [12] 3815 	mov	a,#0x14
      003ED3 26               [12] 3816 	add	a,@r0
      003ED4 FA               [12] 3817 	mov	r2,a
      003ED5 ED               [12] 3818 	mov	a,r5
      003ED6 08               [12] 3819 	inc	r0
      003ED7 36               [12] 3820 	addc	a,@r0
      003ED8 FB               [12] 3821 	mov	r3,a
      003ED9 08               [12] 3822 	inc	r0
      003EDA 86 04            [24] 3823 	mov	ar4,@r0
      003EDC 8A 82            [24] 3824 	mov	dpl,r2
      003EDE 8B 83            [24] 3825 	mov	dph,r3
      003EE0 8C F0            [24] 3826 	mov	b,r4
      003EE2 12 70 DA         [24] 3827 	lcall	__gptrget
      003EE5 FA               [12] 3828 	mov	r2,a
      003EE6 A3               [24] 3829 	inc	dptr
      003EE7 12 70 DA         [24] 3830 	lcall	__gptrget
      003EEA FB               [12] 3831 	mov	r3,a
      003EEB A3               [24] 3832 	inc	dptr
      003EEC 12 70 DA         [24] 3833 	lcall	__gptrget
      003EEF FC               [12] 3834 	mov	r4,a
      003EF0 C0 07            [24] 3835 	push	ar7
      003EF2 C0 06            [24] 3836 	push	ar6
      003EF4 C0 05            [24] 3837 	push	ar5
      003EF6 8A 82            [24] 3838 	mov	dpl,r2
      003EF8 8B 83            [24] 3839 	mov	dph,r3
      003EFA 8C F0            [24] 3840 	mov	b,r4
      003EFC 12 28 5E         [24] 3841 	lcall	_stack_peek
      003EFF AB 82            [24] 3842 	mov	r3,dpl
      003F01 AC 83            [24] 3843 	mov	r4,dph
      003F03 15 81            [12] 3844 	dec	sp
      003F05 15 81            [12] 3845 	dec	sp
      003F07 15 81            [12] 3846 	dec	sp
      003F09 EB               [12] 3847 	mov	a,r3
      003F0A 4C               [12] 3848 	orl	a,r4
      003F0B 70 25            [24] 3849 	jnz	00143$
      003F0D 7F DA            [12] 3850 	mov	r7,#___str_12
      003F0F 7E 89            [12] 3851 	mov	r6,#(___str_12 >> 8)
      003F11 7D 80            [12] 3852 	mov	r5,#0x80
                                   3853 ;	calc.c:58: return;
      003F13                       3854 00414$:
                                   3855 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003F13 8F 82            [24] 3856 	mov	dpl,r7
      003F15 8E 83            [24] 3857 	mov	dph,r6
      003F17 8D F0            [24] 3858 	mov	b,r5
      003F19 12 70 DA         [24] 3859 	lcall	__gptrget
      003F1C FC               [12] 3860 	mov	r4,a
      003F1D 70 03            [24] 3861 	jnz	01314$
      003F1F 02 57 13         [24] 3862 	ljmp	00249$
      003F22                       3863 01314$:
      003F22 7B 00            [12] 3864 	mov	r3,#0x00
      003F24 8C 82            [24] 3865 	mov	dpl,r4
      003F26 8B 83            [24] 3866 	mov	dph,r3
      003F28 12 2B 70         [24] 3867 	lcall	_putchar
      003F2B 0F               [12] 3868 	inc	r7
                                   3869 ;	calc.c:200: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003F2C BF 00 E4         [24] 3870 	cjne	r7,#0x00,00414$
      003F2F 0E               [12] 3871 	inc	r6
      003F30 80 E1            [24] 3872 	sjmp	00414$
      003F32                       3873 00143$:
                                   3874 ;	calc.c:201: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      003F32 E5 08            [12] 3875 	mov	a,_bp
      003F34 24 12            [12] 3876 	add	a,#0x12
      003F36 F8               [12] 3877 	mov	r0,a
      003F37 74 11            [12] 3878 	mov	a,#0x11
      003F39 26               [12] 3879 	add	a,@r0
      003F3A FA               [12] 3880 	mov	r2,a
      003F3B 74 40            [12] 3881 	mov	a,#0x40
      003F3D 08               [12] 3882 	inc	r0
      003F3E 36               [12] 3883 	addc	a,@r0
      003F3F FB               [12] 3884 	mov	r3,a
      003F40 08               [12] 3885 	inc	r0
      003F41 86 04            [24] 3886 	mov	ar4,@r0
      003F43 8A 82            [24] 3887 	mov	dpl,r2
      003F45 8B 83            [24] 3888 	mov	dph,r3
      003F47 8C F0            [24] 3889 	mov	b,r4
      003F49 12 70 DA         [24] 3890 	lcall	__gptrget
      003F4C FA               [12] 3891 	mov	r2,a
      003F4D A3               [24] 3892 	inc	dptr
      003F4E 12 70 DA         [24] 3893 	lcall	__gptrget
      003F51 FB               [12] 3894 	mov	r3,a
      003F52 A3               [24] 3895 	inc	dptr
      003F53 12 70 DA         [24] 3896 	lcall	__gptrget
      003F56 FC               [12] 3897 	mov	r4,a
      003F57 E5 08            [12] 3898 	mov	a,_bp
      003F59 24 15            [12] 3899 	add	a,#0x15
      003F5B F8               [12] 3900 	mov	r0,a
      003F5C E6               [12] 3901 	mov	a,@r0
      003F5D C0 E0            [24] 3902 	push	acc
      003F5F 08               [12] 3903 	inc	r0
      003F60 E6               [12] 3904 	mov	a,@r0
      003F61 C0 E0            [24] 3905 	push	acc
      003F63 08               [12] 3906 	inc	r0
      003F64 E6               [12] 3907 	mov	a,@r0
      003F65 C0 E0            [24] 3908 	push	acc
      003F67 08               [12] 3909 	inc	r0
      003F68 E6               [12] 3910 	mov	a,@r0
      003F69 C0 E0            [24] 3911 	push	acc
      003F6B 8A 82            [24] 3912 	mov	dpl,r2
      003F6D 8B 83            [24] 3913 	mov	dph,r3
      003F6F 8C F0            [24] 3914 	mov	b,r4
      003F71 12 26 B5         [24] 3915 	lcall	_stack_push
      003F74 AB 82            [24] 3916 	mov	r3,dpl
      003F76 AC 83            [24] 3917 	mov	r4,dph
      003F78 E5 81            [12] 3918 	mov	a,sp
      003F7A 24 FC            [12] 3919 	add	a,#0xfc
      003F7C F5 81            [12] 3920 	mov	sp,a
      003F7E EB               [12] 3921 	mov	a,r3
      003F7F 4C               [12] 3922 	orl	a,r4
      003F80 60 03            [24] 3923 	jz	01316$
      003F82 02 57 13         [24] 3924 	ljmp	00249$
      003F85                       3925 01316$:
      003F85 7F F8            [12] 3926 	mov	r7,#___str_13
      003F87 7E 89            [12] 3927 	mov	r6,#(___str_13 >> 8)
      003F89 7D 80            [12] 3928 	mov	r5,#0x80
                                   3929 ;	calc.c:58: return;
      003F8B                       3930 00417$:
                                   3931 ;	calc.c:56: for (; *s; s++) putchar(*s);
      003F8B 8F 82            [24] 3932 	mov	dpl,r7
      003F8D 8E 83            [24] 3933 	mov	dph,r6
      003F8F 8D F0            [24] 3934 	mov	b,r5
      003F91 12 70 DA         [24] 3935 	lcall	__gptrget
      003F94 FC               [12] 3936 	mov	r4,a
      003F95 70 03            [24] 3937 	jnz	01317$
      003F97 02 57 13         [24] 3938 	ljmp	00249$
      003F9A                       3939 01317$:
      003F9A 7B 00            [12] 3940 	mov	r3,#0x00
      003F9C 8C 82            [24] 3941 	mov	dpl,r4
      003F9E 8B 83            [24] 3942 	mov	dph,r3
      003FA0 12 2B 70         [24] 3943 	lcall	_putchar
      003FA3 0F               [12] 3944 	inc	r7
                                   3945 ;	calc.c:203: case 'T':
      003FA4 BF 00 E4         [24] 3946 	cjne	r7,#0x00,00417$
      003FA7 0E               [12] 3947 	inc	r6
      003FA8 80 E1            [24] 3948 	sjmp	00417$
      003FAA                       3949 00145$:
                                   3950 ;	calc.c:204: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003FAA E5 08            [12] 3951 	mov	a,_bp
      003FAC 24 15            [12] 3952 	add	a,#0x15
      003FAE FF               [12] 3953 	mov	r7,a
      003FAF 7E 00            [12] 3954 	mov	r6,#0x00
      003FB1 7D 40            [12] 3955 	mov	r5,#0x40
      003FB3 E5 08            [12] 3956 	mov	a,_bp
      003FB5 24 12            [12] 3957 	add	a,#0x12
      003FB7 F8               [12] 3958 	mov	r0,a
      003FB8 E5 08            [12] 3959 	mov	a,_bp
      003FBA 24 07            [12] 3960 	add	a,#0x07
      003FBC F9               [12] 3961 	mov	r1,a
      003FBD 74 11            [12] 3962 	mov	a,#0x11
      003FBF 26               [12] 3963 	add	a,@r0
      003FC0 F7               [12] 3964 	mov	@r1,a
      003FC1 74 40            [12] 3965 	mov	a,#0x40
      003FC3 08               [12] 3966 	inc	r0
      003FC4 36               [12] 3967 	addc	a,@r0
      003FC5 09               [12] 3968 	inc	r1
      003FC6 F7               [12] 3969 	mov	@r1,a
      003FC7 08               [12] 3970 	inc	r0
      003FC8 09               [12] 3971 	inc	r1
      003FC9 E6               [12] 3972 	mov	a,@r0
      003FCA F7               [12] 3973 	mov	@r1,a
      003FCB E5 08            [12] 3974 	mov	a,_bp
      003FCD 24 07            [12] 3975 	add	a,#0x07
      003FCF F8               [12] 3976 	mov	r0,a
      003FD0 86 82            [24] 3977 	mov	dpl,@r0
      003FD2 08               [12] 3978 	inc	r0
      003FD3 86 83            [24] 3979 	mov	dph,@r0
      003FD5 08               [12] 3980 	inc	r0
      003FD6 86 F0            [24] 3981 	mov	b,@r0
      003FD8 12 70 DA         [24] 3982 	lcall	__gptrget
      003FDB FA               [12] 3983 	mov	r2,a
      003FDC A3               [24] 3984 	inc	dptr
      003FDD 12 70 DA         [24] 3985 	lcall	__gptrget
      003FE0 FB               [12] 3986 	mov	r3,a
      003FE1 A3               [24] 3987 	inc	dptr
      003FE2 12 70 DA         [24] 3988 	lcall	__gptrget
      003FE5 FC               [12] 3989 	mov	r4,a
      003FE6 C0 07            [24] 3990 	push	ar7
      003FE8 C0 06            [24] 3991 	push	ar6
      003FEA C0 05            [24] 3992 	push	ar5
      003FEC 8A 82            [24] 3993 	mov	dpl,r2
      003FEE 8B 83            [24] 3994 	mov	dph,r3
      003FF0 8C F0            [24] 3995 	mov	b,r4
      003FF2 12 27 83         [24] 3996 	lcall	_stack_pop
      003FF5 AB 82            [24] 3997 	mov	r3,dpl
      003FF7 AC 83            [24] 3998 	mov	r4,dph
      003FF9 15 81            [12] 3999 	dec	sp
      003FFB 15 81            [12] 4000 	dec	sp
      003FFD 15 81            [12] 4001 	dec	sp
      003FFF EB               [12] 4002 	mov	a,r3
      004000 4C               [12] 4003 	orl	a,r4
      004001 70 25            [24] 4004 	jnz	00150$
      004003 7F A9            [12] 4005 	mov	r7,#___str_10
      004005 7E 89            [12] 4006 	mov	r6,#(___str_10 >> 8)
      004007 7D 80            [12] 4007 	mov	r5,#0x80
                                   4008 ;	calc.c:58: return;
      004009                       4009 00420$:
                                   4010 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004009 8F 82            [24] 4011 	mov	dpl,r7
      00400B 8E 83            [24] 4012 	mov	dph,r6
      00400D 8D F0            [24] 4013 	mov	b,r5
      00400F 12 70 DA         [24] 4014 	lcall	__gptrget
      004012 FC               [12] 4015 	mov	r4,a
      004013 70 03            [24] 4016 	jnz	01320$
      004015 02 57 13         [24] 4017 	ljmp	00249$
      004018                       4018 01320$:
      004018 7B 00            [12] 4019 	mov	r3,#0x00
      00401A 8C 82            [24] 4020 	mov	dpl,r4
      00401C 8B 83            [24] 4021 	mov	dph,r3
      00401E 12 2B 70         [24] 4022 	lcall	_putchar
      004021 0F               [12] 4023 	inc	r7
                                   4024 ;	calc.c:204: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004022 BF 00 E4         [24] 4025 	cjne	r7,#0x00,00420$
      004025 0E               [12] 4026 	inc	r6
      004026 80 E1            [24] 4027 	sjmp	00420$
      004028                       4028 00150$:
                                   4029 ;	calc.c:206: if (!stack_pop(ctx->ss, &d1)) {
      004028 E5 08            [12] 4030 	mov	a,_bp
      00402A 24 19            [12] 4031 	add	a,#0x19
      00402C FF               [12] 4032 	mov	r7,a
      00402D 7E 00            [12] 4033 	mov	r6,#0x00
      00402F 7D 40            [12] 4034 	mov	r5,#0x40
      004031 E5 08            [12] 4035 	mov	a,_bp
      004033 24 12            [12] 4036 	add	a,#0x12
      004035 F8               [12] 4037 	mov	r0,a
      004036 E5 08            [12] 4038 	mov	a,_bp
      004038 24 04            [12] 4039 	add	a,#0x04
      00403A F9               [12] 4040 	mov	r1,a
      00403B 74 14            [12] 4041 	mov	a,#0x14
      00403D 26               [12] 4042 	add	a,@r0
      00403E F7               [12] 4043 	mov	@r1,a
      00403F 74 40            [12] 4044 	mov	a,#0x40
      004041 08               [12] 4045 	inc	r0
      004042 36               [12] 4046 	addc	a,@r0
      004043 09               [12] 4047 	inc	r1
      004044 F7               [12] 4048 	mov	@r1,a
      004045 08               [12] 4049 	inc	r0
      004046 09               [12] 4050 	inc	r1
      004047 E6               [12] 4051 	mov	a,@r0
      004048 F7               [12] 4052 	mov	@r1,a
      004049 E5 08            [12] 4053 	mov	a,_bp
      00404B 24 04            [12] 4054 	add	a,#0x04
      00404D F8               [12] 4055 	mov	r0,a
      00404E 86 82            [24] 4056 	mov	dpl,@r0
      004050 08               [12] 4057 	inc	r0
      004051 86 83            [24] 4058 	mov	dph,@r0
      004053 08               [12] 4059 	inc	r0
      004054 86 F0            [24] 4060 	mov	b,@r0
      004056 12 70 DA         [24] 4061 	lcall	__gptrget
      004059 FA               [12] 4062 	mov	r2,a
      00405A A3               [24] 4063 	inc	dptr
      00405B 12 70 DA         [24] 4064 	lcall	__gptrget
      00405E FB               [12] 4065 	mov	r3,a
      00405F A3               [24] 4066 	inc	dptr
      004060 12 70 DA         [24] 4067 	lcall	__gptrget
      004063 FC               [12] 4068 	mov	r4,a
      004064 C0 07            [24] 4069 	push	ar7
      004066 C0 06            [24] 4070 	push	ar6
      004068 C0 05            [24] 4071 	push	ar5
      00406A 8A 82            [24] 4072 	mov	dpl,r2
      00406C 8B 83            [24] 4073 	mov	dph,r3
      00406E 8C F0            [24] 4074 	mov	b,r4
      004070 12 27 83         [24] 4075 	lcall	_stack_pop
      004073 AB 82            [24] 4076 	mov	r3,dpl
      004075 AC 83            [24] 4077 	mov	r4,dph
      004077 15 81            [12] 4078 	dec	sp
      004079 15 81            [12] 4079 	dec	sp
      00407B 15 81            [12] 4080 	dec	sp
      00407D EB               [12] 4081 	mov	a,r3
      00407E 4C               [12] 4082 	orl	a,r4
      00407F 70 63            [24] 4083 	jnz	00147$
                                   4084 ;	calc.c:207: printstr("\r\nsecondary stack underflow\r\n");
      004081 7F DA            [12] 4085 	mov	r7,#___str_12
      004083 7E 89            [12] 4086 	mov	r6,#(___str_12 >> 8)
      004085 7D 80            [12] 4087 	mov	r5,#0x80
                                   4088 ;	calc.c:58: return;
      004087                       4089 00423$:
                                   4090 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004087 8F 82            [24] 4091 	mov	dpl,r7
      004089 8E 83            [24] 4092 	mov	dph,r6
      00408B 8D F0            [24] 4093 	mov	b,r5
      00408D 12 70 DA         [24] 4094 	lcall	__gptrget
      004090 FC               [12] 4095 	mov	r4,a
      004091 60 10            [24] 4096 	jz	00301$
      004093 7B 00            [12] 4097 	mov	r3,#0x00
      004095 8C 82            [24] 4098 	mov	dpl,r4
      004097 8B 83            [24] 4099 	mov	dph,r3
      004099 12 2B 70         [24] 4100 	lcall	_putchar
      00409C 0F               [12] 4101 	inc	r7
                                   4102 ;	calc.c:207: printstr("\r\nsecondary stack underflow\r\n");
      00409D BF 00 E7         [24] 4103 	cjne	r7,#0x00,00423$
      0040A0 0E               [12] 4104 	inc	r6
      0040A1 80 E4            [24] 4105 	sjmp	00423$
      0040A3                       4106 00301$:
                                   4107 ;	calc.c:208: (void)stack_push(ctx->ps, d0);
      0040A3 E5 08            [12] 4108 	mov	a,_bp
      0040A5 24 07            [12] 4109 	add	a,#0x07
      0040A7 F8               [12] 4110 	mov	r0,a
      0040A8 86 82            [24] 4111 	mov	dpl,@r0
      0040AA 08               [12] 4112 	inc	r0
      0040AB 86 83            [24] 4113 	mov	dph,@r0
      0040AD 08               [12] 4114 	inc	r0
      0040AE 86 F0            [24] 4115 	mov	b,@r0
      0040B0 12 70 DA         [24] 4116 	lcall	__gptrget
      0040B3 FA               [12] 4117 	mov	r2,a
      0040B4 A3               [24] 4118 	inc	dptr
      0040B5 12 70 DA         [24] 4119 	lcall	__gptrget
      0040B8 FB               [12] 4120 	mov	r3,a
      0040B9 A3               [24] 4121 	inc	dptr
      0040BA 12 70 DA         [24] 4122 	lcall	__gptrget
      0040BD FC               [12] 4123 	mov	r4,a
      0040BE E5 08            [12] 4124 	mov	a,_bp
      0040C0 24 15            [12] 4125 	add	a,#0x15
      0040C2 F8               [12] 4126 	mov	r0,a
      0040C3 E6               [12] 4127 	mov	a,@r0
      0040C4 C0 E0            [24] 4128 	push	acc
      0040C6 08               [12] 4129 	inc	r0
      0040C7 E6               [12] 4130 	mov	a,@r0
      0040C8 C0 E0            [24] 4131 	push	acc
      0040CA 08               [12] 4132 	inc	r0
      0040CB E6               [12] 4133 	mov	a,@r0
      0040CC C0 E0            [24] 4134 	push	acc
      0040CE 08               [12] 4135 	inc	r0
      0040CF E6               [12] 4136 	mov	a,@r0
      0040D0 C0 E0            [24] 4137 	push	acc
      0040D2 8A 82            [24] 4138 	mov	dpl,r2
      0040D4 8B 83            [24] 4139 	mov	dph,r3
      0040D6 8C F0            [24] 4140 	mov	b,r4
      0040D8 12 26 B5         [24] 4141 	lcall	_stack_push
      0040DB E5 81            [12] 4142 	mov	a,sp
      0040DD 24 FC            [12] 4143 	add	a,#0xfc
      0040DF F5 81            [12] 4144 	mov	sp,a
      0040E1 02 57 13         [24] 4145 	ljmp	00249$
      0040E4                       4146 00147$:
                                   4147 ;	calc.c:210: (void)stack_push(ctx->ps, d1);
      0040E4 E5 08            [12] 4148 	mov	a,_bp
      0040E6 24 07            [12] 4149 	add	a,#0x07
      0040E8 F8               [12] 4150 	mov	r0,a
      0040E9 86 82            [24] 4151 	mov	dpl,@r0
      0040EB 08               [12] 4152 	inc	r0
      0040EC 86 83            [24] 4153 	mov	dph,@r0
      0040EE 08               [12] 4154 	inc	r0
      0040EF 86 F0            [24] 4155 	mov	b,@r0
      0040F1 12 70 DA         [24] 4156 	lcall	__gptrget
      0040F4 FA               [12] 4157 	mov	r2,a
      0040F5 A3               [24] 4158 	inc	dptr
      0040F6 12 70 DA         [24] 4159 	lcall	__gptrget
      0040F9 FB               [12] 4160 	mov	r3,a
      0040FA A3               [24] 4161 	inc	dptr
      0040FB 12 70 DA         [24] 4162 	lcall	__gptrget
      0040FE FC               [12] 4163 	mov	r4,a
      0040FF E5 08            [12] 4164 	mov	a,_bp
      004101 24 19            [12] 4165 	add	a,#0x19
      004103 F8               [12] 4166 	mov	r0,a
      004104 E6               [12] 4167 	mov	a,@r0
      004105 C0 E0            [24] 4168 	push	acc
      004107 08               [12] 4169 	inc	r0
      004108 E6               [12] 4170 	mov	a,@r0
      004109 C0 E0            [24] 4171 	push	acc
      00410B 08               [12] 4172 	inc	r0
      00410C E6               [12] 4173 	mov	a,@r0
      00410D C0 E0            [24] 4174 	push	acc
      00410F 08               [12] 4175 	inc	r0
      004110 E6               [12] 4176 	mov	a,@r0
      004111 C0 E0            [24] 4177 	push	acc
      004113 8A 82            [24] 4178 	mov	dpl,r2
      004115 8B 83            [24] 4179 	mov	dph,r3
      004117 8C F0            [24] 4180 	mov	b,r4
      004119 12 26 B5         [24] 4181 	lcall	_stack_push
      00411C E5 81            [12] 4182 	mov	a,sp
      00411E 24 FC            [12] 4183 	add	a,#0xfc
      004120 F5 81            [12] 4184 	mov	sp,a
                                   4185 ;	calc.c:211: (void)stack_push(ctx->ss, d0);
      004122 E5 08            [12] 4186 	mov	a,_bp
      004124 24 04            [12] 4187 	add	a,#0x04
      004126 F8               [12] 4188 	mov	r0,a
      004127 86 82            [24] 4189 	mov	dpl,@r0
      004129 08               [12] 4190 	inc	r0
      00412A 86 83            [24] 4191 	mov	dph,@r0
      00412C 08               [12] 4192 	inc	r0
      00412D 86 F0            [24] 4193 	mov	b,@r0
      00412F 12 70 DA         [24] 4194 	lcall	__gptrget
      004132 FA               [12] 4195 	mov	r2,a
      004133 A3               [24] 4196 	inc	dptr
      004134 12 70 DA         [24] 4197 	lcall	__gptrget
      004137 FB               [12] 4198 	mov	r3,a
      004138 A3               [24] 4199 	inc	dptr
      004139 12 70 DA         [24] 4200 	lcall	__gptrget
      00413C FC               [12] 4201 	mov	r4,a
      00413D E5 08            [12] 4202 	mov	a,_bp
      00413F 24 15            [12] 4203 	add	a,#0x15
      004141 F8               [12] 4204 	mov	r0,a
      004142 E6               [12] 4205 	mov	a,@r0
      004143 C0 E0            [24] 4206 	push	acc
      004145 08               [12] 4207 	inc	r0
      004146 E6               [12] 4208 	mov	a,@r0
      004147 C0 E0            [24] 4209 	push	acc
      004149 08               [12] 4210 	inc	r0
      00414A E6               [12] 4211 	mov	a,@r0
      00414B C0 E0            [24] 4212 	push	acc
      00414D 08               [12] 4213 	inc	r0
      00414E E6               [12] 4214 	mov	a,@r0
      00414F C0 E0            [24] 4215 	push	acc
      004151 8A 82            [24] 4216 	mov	dpl,r2
      004153 8B 83            [24] 4217 	mov	dph,r3
      004155 8C F0            [24] 4218 	mov	b,r4
      004157 12 26 B5         [24] 4219 	lcall	_stack_push
      00415A E5 81            [12] 4220 	mov	a,sp
      00415C 24 FC            [12] 4221 	add	a,#0xfc
      00415E F5 81            [12] 4222 	mov	sp,a
                                   4223 ;	calc.c:214: break;
      004160 02 57 13         [24] 4224 	ljmp	00249$
                                   4225 ;	calc.c:215: case 'X':
      004163                       4226 00152$:
                                   4227 ;	calc.c:216: t0 = ctx->ps;
      004163 E5 08            [12] 4228 	mov	a,_bp
      004165 24 12            [12] 4229 	add	a,#0x12
      004167 F8               [12] 4230 	mov	r0,a
      004168 E5 08            [12] 4231 	mov	a,_bp
      00416A 24 0B            [12] 4232 	add	a,#0x0b
      00416C F9               [12] 4233 	mov	r1,a
      00416D 74 11            [12] 4234 	mov	a,#0x11
      00416F 26               [12] 4235 	add	a,@r0
      004170 F7               [12] 4236 	mov	@r1,a
      004171 74 40            [12] 4237 	mov	a,#0x40
      004173 08               [12] 4238 	inc	r0
      004174 36               [12] 4239 	addc	a,@r0
      004175 09               [12] 4240 	inc	r1
      004176 F7               [12] 4241 	mov	@r1,a
      004177 08               [12] 4242 	inc	r0
      004178 09               [12] 4243 	inc	r1
      004179 E6               [12] 4244 	mov	a,@r0
      00417A F7               [12] 4245 	mov	@r1,a
      00417B E5 08            [12] 4246 	mov	a,_bp
      00417D 24 0B            [12] 4247 	add	a,#0x0b
      00417F F8               [12] 4248 	mov	r0,a
      004180 86 82            [24] 4249 	mov	dpl,@r0
      004182 08               [12] 4250 	inc	r0
      004183 86 83            [24] 4251 	mov	dph,@r0
      004185 08               [12] 4252 	inc	r0
      004186 86 F0            [24] 4253 	mov	b,@r0
      004188 12 70 DA         [24] 4254 	lcall	__gptrget
      00418B FF               [12] 4255 	mov	r7,a
      00418C A3               [24] 4256 	inc	dptr
      00418D 12 70 DA         [24] 4257 	lcall	__gptrget
      004190 FE               [12] 4258 	mov	r6,a
      004191 A3               [24] 4259 	inc	dptr
      004192 12 70 DA         [24] 4260 	lcall	__gptrget
      004195 FD               [12] 4261 	mov	r5,a
                                   4262 ;	calc.c:217: ctx->ps = ctx->ss;
      004196 E5 08            [12] 4263 	mov	a,_bp
      004198 24 12            [12] 4264 	add	a,#0x12
      00419A F8               [12] 4265 	mov	r0,a
      00419B E5 08            [12] 4266 	mov	a,_bp
      00419D 24 07            [12] 4267 	add	a,#0x07
      00419F F9               [12] 4268 	mov	r1,a
      0041A0 74 14            [12] 4269 	mov	a,#0x14
      0041A2 26               [12] 4270 	add	a,@r0
      0041A3 F7               [12] 4271 	mov	@r1,a
      0041A4 74 40            [12] 4272 	mov	a,#0x40
      0041A6 08               [12] 4273 	inc	r0
      0041A7 36               [12] 4274 	addc	a,@r0
      0041A8 09               [12] 4275 	inc	r1
      0041A9 F7               [12] 4276 	mov	@r1,a
      0041AA 08               [12] 4277 	inc	r0
      0041AB 09               [12] 4278 	inc	r1
      0041AC E6               [12] 4279 	mov	a,@r0
      0041AD F7               [12] 4280 	mov	@r1,a
      0041AE E5 08            [12] 4281 	mov	a,_bp
      0041B0 24 07            [12] 4282 	add	a,#0x07
      0041B2 F8               [12] 4283 	mov	r0,a
      0041B3 86 82            [24] 4284 	mov	dpl,@r0
      0041B5 08               [12] 4285 	inc	r0
      0041B6 86 83            [24] 4286 	mov	dph,@r0
      0041B8 08               [12] 4287 	inc	r0
      0041B9 86 F0            [24] 4288 	mov	b,@r0
      0041BB 12 70 DA         [24] 4289 	lcall	__gptrget
      0041BE FA               [12] 4290 	mov	r2,a
      0041BF A3               [24] 4291 	inc	dptr
      0041C0 12 70 DA         [24] 4292 	lcall	__gptrget
      0041C3 FB               [12] 4293 	mov	r3,a
      0041C4 A3               [24] 4294 	inc	dptr
      0041C5 12 70 DA         [24] 4295 	lcall	__gptrget
      0041C8 FC               [12] 4296 	mov	r4,a
      0041C9 E5 08            [12] 4297 	mov	a,_bp
      0041CB 24 0B            [12] 4298 	add	a,#0x0b
      0041CD F8               [12] 4299 	mov	r0,a
      0041CE 86 82            [24] 4300 	mov	dpl,@r0
      0041D0 08               [12] 4301 	inc	r0
      0041D1 86 83            [24] 4302 	mov	dph,@r0
      0041D3 08               [12] 4303 	inc	r0
      0041D4 86 F0            [24] 4304 	mov	b,@r0
      0041D6 EA               [12] 4305 	mov	a,r2
      0041D7 12 6C 5F         [24] 4306 	lcall	__gptrput
      0041DA A3               [24] 4307 	inc	dptr
      0041DB EB               [12] 4308 	mov	a,r3
      0041DC 12 6C 5F         [24] 4309 	lcall	__gptrput
      0041DF A3               [24] 4310 	inc	dptr
      0041E0 EC               [12] 4311 	mov	a,r4
      0041E1 12 6C 5F         [24] 4312 	lcall	__gptrput
                                   4313 ;	calc.c:218: ctx->ss = t0;
      0041E4 E5 08            [12] 4314 	mov	a,_bp
      0041E6 24 07            [12] 4315 	add	a,#0x07
      0041E8 F8               [12] 4316 	mov	r0,a
      0041E9 86 82            [24] 4317 	mov	dpl,@r0
      0041EB 08               [12] 4318 	inc	r0
      0041EC 86 83            [24] 4319 	mov	dph,@r0
      0041EE 08               [12] 4320 	inc	r0
      0041EF 86 F0            [24] 4321 	mov	b,@r0
      0041F1 EF               [12] 4322 	mov	a,r7
      0041F2 12 6C 5F         [24] 4323 	lcall	__gptrput
      0041F5 A3               [24] 4324 	inc	dptr
      0041F6 EE               [12] 4325 	mov	a,r6
      0041F7 12 6C 5F         [24] 4326 	lcall	__gptrput
      0041FA A3               [24] 4327 	inc	dptr
      0041FB ED               [12] 4328 	mov	a,r5
      0041FC 12 6C 5F         [24] 4329 	lcall	__gptrput
                                   4330 ;	calc.c:219: break;
      0041FF 02 57 13         [24] 4331 	ljmp	00249$
                                   4332 ;	calc.c:220: case '+':
      004202                       4333 00153$:
                                   4334 ;	calc.c:221: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004202 E5 08            [12] 4335 	mov	a,_bp
      004204 24 15            [12] 4336 	add	a,#0x15
      004206 FF               [12] 4337 	mov	r7,a
      004207 7E 00            [12] 4338 	mov	r6,#0x00
      004209 7D 40            [12] 4339 	mov	r5,#0x40
      00420B E5 08            [12] 4340 	mov	a,_bp
      00420D 24 12            [12] 4341 	add	a,#0x12
      00420F F8               [12] 4342 	mov	r0,a
      004210 E5 08            [12] 4343 	mov	a,_bp
      004212 24 0B            [12] 4344 	add	a,#0x0b
      004214 F9               [12] 4345 	mov	r1,a
      004215 74 11            [12] 4346 	mov	a,#0x11
      004217 26               [12] 4347 	add	a,@r0
      004218 F7               [12] 4348 	mov	@r1,a
      004219 74 40            [12] 4349 	mov	a,#0x40
      00421B 08               [12] 4350 	inc	r0
      00421C 36               [12] 4351 	addc	a,@r0
      00421D 09               [12] 4352 	inc	r1
      00421E F7               [12] 4353 	mov	@r1,a
      00421F 08               [12] 4354 	inc	r0
      004220 09               [12] 4355 	inc	r1
      004221 E6               [12] 4356 	mov	a,@r0
      004222 F7               [12] 4357 	mov	@r1,a
      004223 E5 08            [12] 4358 	mov	a,_bp
      004225 24 0B            [12] 4359 	add	a,#0x0b
      004227 F8               [12] 4360 	mov	r0,a
      004228 86 82            [24] 4361 	mov	dpl,@r0
      00422A 08               [12] 4362 	inc	r0
      00422B 86 83            [24] 4363 	mov	dph,@r0
      00422D 08               [12] 4364 	inc	r0
      00422E 86 F0            [24] 4365 	mov	b,@r0
      004230 12 70 DA         [24] 4366 	lcall	__gptrget
      004233 FA               [12] 4367 	mov	r2,a
      004234 A3               [24] 4368 	inc	dptr
      004235 12 70 DA         [24] 4369 	lcall	__gptrget
      004238 FB               [12] 4370 	mov	r3,a
      004239 A3               [24] 4371 	inc	dptr
      00423A 12 70 DA         [24] 4372 	lcall	__gptrget
      00423D FC               [12] 4373 	mov	r4,a
      00423E C0 07            [24] 4374 	push	ar7
      004240 C0 06            [24] 4375 	push	ar6
      004242 C0 05            [24] 4376 	push	ar5
      004244 8A 82            [24] 4377 	mov	dpl,r2
      004246 8B 83            [24] 4378 	mov	dph,r3
      004248 8C F0            [24] 4379 	mov	b,r4
      00424A 12 27 83         [24] 4380 	lcall	_stack_pop
      00424D AB 82            [24] 4381 	mov	r3,dpl
      00424F AC 83            [24] 4382 	mov	r4,dph
      004251 15 81            [12] 4383 	dec	sp
      004253 15 81            [12] 4384 	dec	sp
      004255 15 81            [12] 4385 	dec	sp
      004257 EB               [12] 4386 	mov	a,r3
      004258 4C               [12] 4387 	orl	a,r4
      004259 70 25            [24] 4388 	jnz	00158$
      00425B 7F A9            [12] 4389 	mov	r7,#___str_10
      00425D 7E 89            [12] 4390 	mov	r6,#(___str_10 >> 8)
      00425F 7D 80            [12] 4391 	mov	r5,#0x80
                                   4392 ;	calc.c:58: return;
      004261                       4393 00426$:
                                   4394 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004261 8F 82            [24] 4395 	mov	dpl,r7
      004263 8E 83            [24] 4396 	mov	dph,r6
      004265 8D F0            [24] 4397 	mov	b,r5
      004267 12 70 DA         [24] 4398 	lcall	__gptrget
      00426A FC               [12] 4399 	mov	r4,a
      00426B 70 03            [24] 4400 	jnz	01326$
      00426D 02 57 13         [24] 4401 	ljmp	00249$
      004270                       4402 01326$:
      004270 7B 00            [12] 4403 	mov	r3,#0x00
      004272 8C 82            [24] 4404 	mov	dpl,r4
      004274 8B 83            [24] 4405 	mov	dph,r3
      004276 12 2B 70         [24] 4406 	lcall	_putchar
      004279 0F               [12] 4407 	inc	r7
                                   4408 ;	calc.c:221: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00427A BF 00 E4         [24] 4409 	cjne	r7,#0x00,00426$
      00427D 0E               [12] 4410 	inc	r6
      00427E 80 E1            [24] 4411 	sjmp	00426$
      004280                       4412 00158$:
                                   4413 ;	calc.c:222: else if (!stack_pop(ctx->ps, &d1)) {
      004280 E5 08            [12] 4414 	mov	a,_bp
      004282 24 19            [12] 4415 	add	a,#0x19
      004284 FF               [12] 4416 	mov	r7,a
      004285 7E 00            [12] 4417 	mov	r6,#0x00
      004287 7D 40            [12] 4418 	mov	r5,#0x40
      004289 E5 08            [12] 4419 	mov	a,_bp
      00428B 24 0B            [12] 4420 	add	a,#0x0b
      00428D F8               [12] 4421 	mov	r0,a
      00428E 86 82            [24] 4422 	mov	dpl,@r0
      004290 08               [12] 4423 	inc	r0
      004291 86 83            [24] 4424 	mov	dph,@r0
      004293 08               [12] 4425 	inc	r0
      004294 86 F0            [24] 4426 	mov	b,@r0
      004296 12 70 DA         [24] 4427 	lcall	__gptrget
      004299 FA               [12] 4428 	mov	r2,a
      00429A A3               [24] 4429 	inc	dptr
      00429B 12 70 DA         [24] 4430 	lcall	__gptrget
      00429E FB               [12] 4431 	mov	r3,a
      00429F A3               [24] 4432 	inc	dptr
      0042A0 12 70 DA         [24] 4433 	lcall	__gptrget
      0042A3 FC               [12] 4434 	mov	r4,a
      0042A4 C0 07            [24] 4435 	push	ar7
      0042A6 C0 06            [24] 4436 	push	ar6
      0042A8 C0 05            [24] 4437 	push	ar5
      0042AA 8A 82            [24] 4438 	mov	dpl,r2
      0042AC 8B 83            [24] 4439 	mov	dph,r3
      0042AE 8C F0            [24] 4440 	mov	b,r4
      0042B0 12 27 83         [24] 4441 	lcall	_stack_pop
      0042B3 AB 82            [24] 4442 	mov	r3,dpl
      0042B5 AC 83            [24] 4443 	mov	r4,dph
      0042B7 15 81            [12] 4444 	dec	sp
      0042B9 15 81            [12] 4445 	dec	sp
      0042BB 15 81            [12] 4446 	dec	sp
      0042BD EB               [12] 4447 	mov	a,r3
      0042BE 4C               [12] 4448 	orl	a,r4
      0042BF 70 63            [24] 4449 	jnz	00155$
                                   4450 ;	calc.c:223: (void)stack_push(ctx->ps, d0);
      0042C1 E5 08            [12] 4451 	mov	a,_bp
      0042C3 24 0B            [12] 4452 	add	a,#0x0b
      0042C5 F8               [12] 4453 	mov	r0,a
      0042C6 86 82            [24] 4454 	mov	dpl,@r0
      0042C8 08               [12] 4455 	inc	r0
      0042C9 86 83            [24] 4456 	mov	dph,@r0
      0042CB 08               [12] 4457 	inc	r0
      0042CC 86 F0            [24] 4458 	mov	b,@r0
      0042CE 12 70 DA         [24] 4459 	lcall	__gptrget
      0042D1 FA               [12] 4460 	mov	r2,a
      0042D2 A3               [24] 4461 	inc	dptr
      0042D3 12 70 DA         [24] 4462 	lcall	__gptrget
      0042D6 FB               [12] 4463 	mov	r3,a
      0042D7 A3               [24] 4464 	inc	dptr
      0042D8 12 70 DA         [24] 4465 	lcall	__gptrget
      0042DB FC               [12] 4466 	mov	r4,a
      0042DC E5 08            [12] 4467 	mov	a,_bp
      0042DE 24 15            [12] 4468 	add	a,#0x15
      0042E0 F8               [12] 4469 	mov	r0,a
      0042E1 E6               [12] 4470 	mov	a,@r0
      0042E2 C0 E0            [24] 4471 	push	acc
      0042E4 08               [12] 4472 	inc	r0
      0042E5 E6               [12] 4473 	mov	a,@r0
      0042E6 C0 E0            [24] 4474 	push	acc
      0042E8 08               [12] 4475 	inc	r0
      0042E9 E6               [12] 4476 	mov	a,@r0
      0042EA C0 E0            [24] 4477 	push	acc
      0042EC 08               [12] 4478 	inc	r0
      0042ED E6               [12] 4479 	mov	a,@r0
      0042EE C0 E0            [24] 4480 	push	acc
      0042F0 8A 82            [24] 4481 	mov	dpl,r2
      0042F2 8B 83            [24] 4482 	mov	dph,r3
      0042F4 8C F0            [24] 4483 	mov	b,r4
      0042F6 12 26 B5         [24] 4484 	lcall	_stack_push
      0042F9 E5 81            [12] 4485 	mov	a,sp
      0042FB 24 FC            [12] 4486 	add	a,#0xfc
      0042FD F5 81            [12] 4487 	mov	sp,a
                                   4488 ;	calc.c:224: printstr("\r\nstack underflow\r\n");
      0042FF 7F A9            [12] 4489 	mov	r7,#___str_10
      004301 7E 89            [12] 4490 	mov	r6,#(___str_10 >> 8)
      004303 7D 80            [12] 4491 	mov	r5,#0x80
                                   4492 ;	calc.c:58: return;
      004305                       4493 00429$:
                                   4494 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004305 8F 82            [24] 4495 	mov	dpl,r7
      004307 8E 83            [24] 4496 	mov	dph,r6
      004309 8D F0            [24] 4497 	mov	b,r5
      00430B 12 70 DA         [24] 4498 	lcall	__gptrget
      00430E FC               [12] 4499 	mov	r4,a
      00430F 70 03            [24] 4500 	jnz	01329$
      004311 02 57 13         [24] 4501 	ljmp	00249$
      004314                       4502 01329$:
      004314 7B 00            [12] 4503 	mov	r3,#0x00
      004316 8C 82            [24] 4504 	mov	dpl,r4
      004318 8B 83            [24] 4505 	mov	dph,r3
      00431A 12 2B 70         [24] 4506 	lcall	_putchar
      00431D 0F               [12] 4507 	inc	r7
                                   4508 ;	calc.c:224: printstr("\r\nstack underflow\r\n");
      00431E BF 00 E4         [24] 4509 	cjne	r7,#0x00,00429$
      004321 0E               [12] 4510 	inc	r6
      004322 80 E1            [24] 4511 	sjmp	00429$
      004324                       4512 00155$:
                                   4513 ;	calc.c:226: d1 += d0;
      004324 E5 08            [12] 4514 	mov	a,_bp
      004326 24 19            [12] 4515 	add	a,#0x19
      004328 F8               [12] 4516 	mov	r0,a
      004329 E5 08            [12] 4517 	mov	a,_bp
      00432B 24 15            [12] 4518 	add	a,#0x15
      00432D F9               [12] 4519 	mov	r1,a
      00432E E7               [12] 4520 	mov	a,@r1
      00432F 26               [12] 4521 	add	a,@r0
      004330 F6               [12] 4522 	mov	@r0,a
      004331 09               [12] 4523 	inc	r1
      004332 E7               [12] 4524 	mov	a,@r1
      004333 08               [12] 4525 	inc	r0
      004334 36               [12] 4526 	addc	a,@r0
      004335 F6               [12] 4527 	mov	@r0,a
      004336 09               [12] 4528 	inc	r1
      004337 E7               [12] 4529 	mov	a,@r1
      004338 08               [12] 4530 	inc	r0
      004339 36               [12] 4531 	addc	a,@r0
      00433A F6               [12] 4532 	mov	@r0,a
      00433B 09               [12] 4533 	inc	r1
      00433C E7               [12] 4534 	mov	a,@r1
      00433D 08               [12] 4535 	inc	r0
      00433E 36               [12] 4536 	addc	a,@r0
      00433F F6               [12] 4537 	mov	@r0,a
                                   4538 ;	calc.c:227: (void)stack_push(ctx->ps, d1);
      004340 E5 08            [12] 4539 	mov	a,_bp
      004342 24 0B            [12] 4540 	add	a,#0x0b
      004344 F8               [12] 4541 	mov	r0,a
      004345 86 82            [24] 4542 	mov	dpl,@r0
      004347 08               [12] 4543 	inc	r0
      004348 86 83            [24] 4544 	mov	dph,@r0
      00434A 08               [12] 4545 	inc	r0
      00434B 86 F0            [24] 4546 	mov	b,@r0
      00434D 12 70 DA         [24] 4547 	lcall	__gptrget
      004350 FA               [12] 4548 	mov	r2,a
      004351 A3               [24] 4549 	inc	dptr
      004352 12 70 DA         [24] 4550 	lcall	__gptrget
      004355 FB               [12] 4551 	mov	r3,a
      004356 A3               [24] 4552 	inc	dptr
      004357 12 70 DA         [24] 4553 	lcall	__gptrget
      00435A FC               [12] 4554 	mov	r4,a
      00435B E5 08            [12] 4555 	mov	a,_bp
      00435D 24 19            [12] 4556 	add	a,#0x19
      00435F F8               [12] 4557 	mov	r0,a
      004360 E6               [12] 4558 	mov	a,@r0
      004361 C0 E0            [24] 4559 	push	acc
      004363 08               [12] 4560 	inc	r0
      004364 E6               [12] 4561 	mov	a,@r0
      004365 C0 E0            [24] 4562 	push	acc
      004367 08               [12] 4563 	inc	r0
      004368 E6               [12] 4564 	mov	a,@r0
      004369 C0 E0            [24] 4565 	push	acc
      00436B 08               [12] 4566 	inc	r0
      00436C E6               [12] 4567 	mov	a,@r0
      00436D C0 E0            [24] 4568 	push	acc
      00436F 8A 82            [24] 4569 	mov	dpl,r2
      004371 8B 83            [24] 4570 	mov	dph,r3
      004373 8C F0            [24] 4571 	mov	b,r4
      004375 12 26 B5         [24] 4572 	lcall	_stack_push
      004378 E5 81            [12] 4573 	mov	a,sp
      00437A 24 FC            [12] 4574 	add	a,#0xfc
      00437C F5 81            [12] 4575 	mov	sp,a
                                   4576 ;	calc.c:229: break;
      00437E 02 57 13         [24] 4577 	ljmp	00249$
                                   4578 ;	calc.c:230: case '-':
      004381                       4579 00160$:
                                   4580 ;	calc.c:231: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004381 E5 08            [12] 4581 	mov	a,_bp
      004383 24 15            [12] 4582 	add	a,#0x15
      004385 FF               [12] 4583 	mov	r7,a
      004386 7E 00            [12] 4584 	mov	r6,#0x00
      004388 7D 40            [12] 4585 	mov	r5,#0x40
      00438A E5 08            [12] 4586 	mov	a,_bp
      00438C 24 12            [12] 4587 	add	a,#0x12
      00438E F8               [12] 4588 	mov	r0,a
      00438F E5 08            [12] 4589 	mov	a,_bp
      004391 24 0B            [12] 4590 	add	a,#0x0b
      004393 F9               [12] 4591 	mov	r1,a
      004394 74 11            [12] 4592 	mov	a,#0x11
      004396 26               [12] 4593 	add	a,@r0
      004397 F7               [12] 4594 	mov	@r1,a
      004398 74 40            [12] 4595 	mov	a,#0x40
      00439A 08               [12] 4596 	inc	r0
      00439B 36               [12] 4597 	addc	a,@r0
      00439C 09               [12] 4598 	inc	r1
      00439D F7               [12] 4599 	mov	@r1,a
      00439E 08               [12] 4600 	inc	r0
      00439F 09               [12] 4601 	inc	r1
      0043A0 E6               [12] 4602 	mov	a,@r0
      0043A1 F7               [12] 4603 	mov	@r1,a
      0043A2 E5 08            [12] 4604 	mov	a,_bp
      0043A4 24 0B            [12] 4605 	add	a,#0x0b
      0043A6 F8               [12] 4606 	mov	r0,a
      0043A7 86 82            [24] 4607 	mov	dpl,@r0
      0043A9 08               [12] 4608 	inc	r0
      0043AA 86 83            [24] 4609 	mov	dph,@r0
      0043AC 08               [12] 4610 	inc	r0
      0043AD 86 F0            [24] 4611 	mov	b,@r0
      0043AF 12 70 DA         [24] 4612 	lcall	__gptrget
      0043B2 FA               [12] 4613 	mov	r2,a
      0043B3 A3               [24] 4614 	inc	dptr
      0043B4 12 70 DA         [24] 4615 	lcall	__gptrget
      0043B7 FB               [12] 4616 	mov	r3,a
      0043B8 A3               [24] 4617 	inc	dptr
      0043B9 12 70 DA         [24] 4618 	lcall	__gptrget
      0043BC FC               [12] 4619 	mov	r4,a
      0043BD C0 07            [24] 4620 	push	ar7
      0043BF C0 06            [24] 4621 	push	ar6
      0043C1 C0 05            [24] 4622 	push	ar5
      0043C3 8A 82            [24] 4623 	mov	dpl,r2
      0043C5 8B 83            [24] 4624 	mov	dph,r3
      0043C7 8C F0            [24] 4625 	mov	b,r4
      0043C9 12 27 83         [24] 4626 	lcall	_stack_pop
      0043CC AB 82            [24] 4627 	mov	r3,dpl
      0043CE AC 83            [24] 4628 	mov	r4,dph
      0043D0 15 81            [12] 4629 	dec	sp
      0043D2 15 81            [12] 4630 	dec	sp
      0043D4 15 81            [12] 4631 	dec	sp
      0043D6 EB               [12] 4632 	mov	a,r3
      0043D7 4C               [12] 4633 	orl	a,r4
      0043D8 70 25            [24] 4634 	jnz	00165$
      0043DA 7F A9            [12] 4635 	mov	r7,#___str_10
      0043DC 7E 89            [12] 4636 	mov	r6,#(___str_10 >> 8)
      0043DE 7D 80            [12] 4637 	mov	r5,#0x80
                                   4638 ;	calc.c:58: return;
      0043E0                       4639 00432$:
                                   4640 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0043E0 8F 82            [24] 4641 	mov	dpl,r7
      0043E2 8E 83            [24] 4642 	mov	dph,r6
      0043E4 8D F0            [24] 4643 	mov	b,r5
      0043E6 12 70 DA         [24] 4644 	lcall	__gptrget
      0043E9 FC               [12] 4645 	mov	r4,a
      0043EA 70 03            [24] 4646 	jnz	01332$
      0043EC 02 57 13         [24] 4647 	ljmp	00249$
      0043EF                       4648 01332$:
      0043EF 7B 00            [12] 4649 	mov	r3,#0x00
      0043F1 8C 82            [24] 4650 	mov	dpl,r4
      0043F3 8B 83            [24] 4651 	mov	dph,r3
      0043F5 12 2B 70         [24] 4652 	lcall	_putchar
      0043F8 0F               [12] 4653 	inc	r7
                                   4654 ;	calc.c:231: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0043F9 BF 00 E4         [24] 4655 	cjne	r7,#0x00,00432$
      0043FC 0E               [12] 4656 	inc	r6
      0043FD 80 E1            [24] 4657 	sjmp	00432$
      0043FF                       4658 00165$:
                                   4659 ;	calc.c:232: else if (!stack_pop(ctx->ps, &d1)) {
      0043FF E5 08            [12] 4660 	mov	a,_bp
      004401 24 19            [12] 4661 	add	a,#0x19
      004403 FF               [12] 4662 	mov	r7,a
      004404 7E 00            [12] 4663 	mov	r6,#0x00
      004406 7D 40            [12] 4664 	mov	r5,#0x40
      004408 E5 08            [12] 4665 	mov	a,_bp
      00440A 24 0B            [12] 4666 	add	a,#0x0b
      00440C F8               [12] 4667 	mov	r0,a
      00440D 86 82            [24] 4668 	mov	dpl,@r0
      00440F 08               [12] 4669 	inc	r0
      004410 86 83            [24] 4670 	mov	dph,@r0
      004412 08               [12] 4671 	inc	r0
      004413 86 F0            [24] 4672 	mov	b,@r0
      004415 12 70 DA         [24] 4673 	lcall	__gptrget
      004418 FA               [12] 4674 	mov	r2,a
      004419 A3               [24] 4675 	inc	dptr
      00441A 12 70 DA         [24] 4676 	lcall	__gptrget
      00441D FB               [12] 4677 	mov	r3,a
      00441E A3               [24] 4678 	inc	dptr
      00441F 12 70 DA         [24] 4679 	lcall	__gptrget
      004422 FC               [12] 4680 	mov	r4,a
      004423 C0 07            [24] 4681 	push	ar7
      004425 C0 06            [24] 4682 	push	ar6
      004427 C0 05            [24] 4683 	push	ar5
      004429 8A 82            [24] 4684 	mov	dpl,r2
      00442B 8B 83            [24] 4685 	mov	dph,r3
      00442D 8C F0            [24] 4686 	mov	b,r4
      00442F 12 27 83         [24] 4687 	lcall	_stack_pop
      004432 AB 82            [24] 4688 	mov	r3,dpl
      004434 AC 83            [24] 4689 	mov	r4,dph
      004436 15 81            [12] 4690 	dec	sp
      004438 15 81            [12] 4691 	dec	sp
      00443A 15 81            [12] 4692 	dec	sp
      00443C EB               [12] 4693 	mov	a,r3
      00443D 4C               [12] 4694 	orl	a,r4
      00443E 70 63            [24] 4695 	jnz	00162$
                                   4696 ;	calc.c:233: (void)stack_push(ctx->ps, d0);
      004440 E5 08            [12] 4697 	mov	a,_bp
      004442 24 0B            [12] 4698 	add	a,#0x0b
      004444 F8               [12] 4699 	mov	r0,a
      004445 86 82            [24] 4700 	mov	dpl,@r0
      004447 08               [12] 4701 	inc	r0
      004448 86 83            [24] 4702 	mov	dph,@r0
      00444A 08               [12] 4703 	inc	r0
      00444B 86 F0            [24] 4704 	mov	b,@r0
      00444D 12 70 DA         [24] 4705 	lcall	__gptrget
      004450 FA               [12] 4706 	mov	r2,a
      004451 A3               [24] 4707 	inc	dptr
      004452 12 70 DA         [24] 4708 	lcall	__gptrget
      004455 FB               [12] 4709 	mov	r3,a
      004456 A3               [24] 4710 	inc	dptr
      004457 12 70 DA         [24] 4711 	lcall	__gptrget
      00445A FC               [12] 4712 	mov	r4,a
      00445B E5 08            [12] 4713 	mov	a,_bp
      00445D 24 15            [12] 4714 	add	a,#0x15
      00445F F8               [12] 4715 	mov	r0,a
      004460 E6               [12] 4716 	mov	a,@r0
      004461 C0 E0            [24] 4717 	push	acc
      004463 08               [12] 4718 	inc	r0
      004464 E6               [12] 4719 	mov	a,@r0
      004465 C0 E0            [24] 4720 	push	acc
      004467 08               [12] 4721 	inc	r0
      004468 E6               [12] 4722 	mov	a,@r0
      004469 C0 E0            [24] 4723 	push	acc
      00446B 08               [12] 4724 	inc	r0
      00446C E6               [12] 4725 	mov	a,@r0
      00446D C0 E0            [24] 4726 	push	acc
      00446F 8A 82            [24] 4727 	mov	dpl,r2
      004471 8B 83            [24] 4728 	mov	dph,r3
      004473 8C F0            [24] 4729 	mov	b,r4
      004475 12 26 B5         [24] 4730 	lcall	_stack_push
      004478 E5 81            [12] 4731 	mov	a,sp
      00447A 24 FC            [12] 4732 	add	a,#0xfc
      00447C F5 81            [12] 4733 	mov	sp,a
                                   4734 ;	calc.c:234: printstr("\r\nstack underflow\r\n");
      00447E 7F A9            [12] 4735 	mov	r7,#___str_10
      004480 7E 89            [12] 4736 	mov	r6,#(___str_10 >> 8)
      004482 7D 80            [12] 4737 	mov	r5,#0x80
                                   4738 ;	calc.c:58: return;
      004484                       4739 00435$:
                                   4740 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004484 8F 82            [24] 4741 	mov	dpl,r7
      004486 8E 83            [24] 4742 	mov	dph,r6
      004488 8D F0            [24] 4743 	mov	b,r5
      00448A 12 70 DA         [24] 4744 	lcall	__gptrget
      00448D FC               [12] 4745 	mov	r4,a
      00448E 70 03            [24] 4746 	jnz	01335$
      004490 02 57 13         [24] 4747 	ljmp	00249$
      004493                       4748 01335$:
      004493 7B 00            [12] 4749 	mov	r3,#0x00
      004495 8C 82            [24] 4750 	mov	dpl,r4
      004497 8B 83            [24] 4751 	mov	dph,r3
      004499 12 2B 70         [24] 4752 	lcall	_putchar
      00449C 0F               [12] 4753 	inc	r7
                                   4754 ;	calc.c:234: printstr("\r\nstack underflow\r\n");
      00449D BF 00 E4         [24] 4755 	cjne	r7,#0x00,00435$
      0044A0 0E               [12] 4756 	inc	r6
      0044A1 80 E1            [24] 4757 	sjmp	00435$
      0044A3                       4758 00162$:
                                   4759 ;	calc.c:236: d1 -= d0;
      0044A3 E5 08            [12] 4760 	mov	a,_bp
      0044A5 24 19            [12] 4761 	add	a,#0x19
      0044A7 F8               [12] 4762 	mov	r0,a
      0044A8 E5 08            [12] 4763 	mov	a,_bp
      0044AA 24 15            [12] 4764 	add	a,#0x15
      0044AC F9               [12] 4765 	mov	r1,a
      0044AD E6               [12] 4766 	mov	a,@r0
      0044AE C3               [12] 4767 	clr	c
      0044AF 97               [12] 4768 	subb	a,@r1
      0044B0 F6               [12] 4769 	mov	@r0,a
      0044B1 08               [12] 4770 	inc	r0
      0044B2 E6               [12] 4771 	mov	a,@r0
      0044B3 09               [12] 4772 	inc	r1
      0044B4 97               [12] 4773 	subb	a,@r1
      0044B5 F6               [12] 4774 	mov	@r0,a
      0044B6 08               [12] 4775 	inc	r0
      0044B7 E6               [12] 4776 	mov	a,@r0
      0044B8 09               [12] 4777 	inc	r1
      0044B9 97               [12] 4778 	subb	a,@r1
      0044BA F6               [12] 4779 	mov	@r0,a
      0044BB 08               [12] 4780 	inc	r0
      0044BC E6               [12] 4781 	mov	a,@r0
      0044BD 09               [12] 4782 	inc	r1
      0044BE 97               [12] 4783 	subb	a,@r1
      0044BF F6               [12] 4784 	mov	@r0,a
                                   4785 ;	calc.c:237: (void)stack_push(ctx->ps, d1);
      0044C0 E5 08            [12] 4786 	mov	a,_bp
      0044C2 24 0B            [12] 4787 	add	a,#0x0b
      0044C4 F8               [12] 4788 	mov	r0,a
      0044C5 86 82            [24] 4789 	mov	dpl,@r0
      0044C7 08               [12] 4790 	inc	r0
      0044C8 86 83            [24] 4791 	mov	dph,@r0
      0044CA 08               [12] 4792 	inc	r0
      0044CB 86 F0            [24] 4793 	mov	b,@r0
      0044CD 12 70 DA         [24] 4794 	lcall	__gptrget
      0044D0 FA               [12] 4795 	mov	r2,a
      0044D1 A3               [24] 4796 	inc	dptr
      0044D2 12 70 DA         [24] 4797 	lcall	__gptrget
      0044D5 FB               [12] 4798 	mov	r3,a
      0044D6 A3               [24] 4799 	inc	dptr
      0044D7 12 70 DA         [24] 4800 	lcall	__gptrget
      0044DA FC               [12] 4801 	mov	r4,a
      0044DB E5 08            [12] 4802 	mov	a,_bp
      0044DD 24 19            [12] 4803 	add	a,#0x19
      0044DF F8               [12] 4804 	mov	r0,a
      0044E0 E6               [12] 4805 	mov	a,@r0
      0044E1 C0 E0            [24] 4806 	push	acc
      0044E3 08               [12] 4807 	inc	r0
      0044E4 E6               [12] 4808 	mov	a,@r0
      0044E5 C0 E0            [24] 4809 	push	acc
      0044E7 08               [12] 4810 	inc	r0
      0044E8 E6               [12] 4811 	mov	a,@r0
      0044E9 C0 E0            [24] 4812 	push	acc
      0044EB 08               [12] 4813 	inc	r0
      0044EC E6               [12] 4814 	mov	a,@r0
      0044ED C0 E0            [24] 4815 	push	acc
      0044EF 8A 82            [24] 4816 	mov	dpl,r2
      0044F1 8B 83            [24] 4817 	mov	dph,r3
      0044F3 8C F0            [24] 4818 	mov	b,r4
      0044F5 12 26 B5         [24] 4819 	lcall	_stack_push
      0044F8 E5 81            [12] 4820 	mov	a,sp
      0044FA 24 FC            [12] 4821 	add	a,#0xfc
      0044FC F5 81            [12] 4822 	mov	sp,a
                                   4823 ;	calc.c:239: break;
      0044FE 02 57 13         [24] 4824 	ljmp	00249$
                                   4825 ;	calc.c:240: case '*':
      004501                       4826 00167$:
                                   4827 ;	calc.c:241: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004501 E5 08            [12] 4828 	mov	a,_bp
      004503 24 15            [12] 4829 	add	a,#0x15
      004505 FF               [12] 4830 	mov	r7,a
      004506 7E 00            [12] 4831 	mov	r6,#0x00
      004508 7D 40            [12] 4832 	mov	r5,#0x40
      00450A E5 08            [12] 4833 	mov	a,_bp
      00450C 24 12            [12] 4834 	add	a,#0x12
      00450E F8               [12] 4835 	mov	r0,a
      00450F E5 08            [12] 4836 	mov	a,_bp
      004511 24 0B            [12] 4837 	add	a,#0x0b
      004513 F9               [12] 4838 	mov	r1,a
      004514 74 11            [12] 4839 	mov	a,#0x11
      004516 26               [12] 4840 	add	a,@r0
      004517 F7               [12] 4841 	mov	@r1,a
      004518 74 40            [12] 4842 	mov	a,#0x40
      00451A 08               [12] 4843 	inc	r0
      00451B 36               [12] 4844 	addc	a,@r0
      00451C 09               [12] 4845 	inc	r1
      00451D F7               [12] 4846 	mov	@r1,a
      00451E 08               [12] 4847 	inc	r0
      00451F 09               [12] 4848 	inc	r1
      004520 E6               [12] 4849 	mov	a,@r0
      004521 F7               [12] 4850 	mov	@r1,a
      004522 E5 08            [12] 4851 	mov	a,_bp
      004524 24 0B            [12] 4852 	add	a,#0x0b
      004526 F8               [12] 4853 	mov	r0,a
      004527 86 82            [24] 4854 	mov	dpl,@r0
      004529 08               [12] 4855 	inc	r0
      00452A 86 83            [24] 4856 	mov	dph,@r0
      00452C 08               [12] 4857 	inc	r0
      00452D 86 F0            [24] 4858 	mov	b,@r0
      00452F 12 70 DA         [24] 4859 	lcall	__gptrget
      004532 FA               [12] 4860 	mov	r2,a
      004533 A3               [24] 4861 	inc	dptr
      004534 12 70 DA         [24] 4862 	lcall	__gptrget
      004537 FB               [12] 4863 	mov	r3,a
      004538 A3               [24] 4864 	inc	dptr
      004539 12 70 DA         [24] 4865 	lcall	__gptrget
      00453C FC               [12] 4866 	mov	r4,a
      00453D C0 07            [24] 4867 	push	ar7
      00453F C0 06            [24] 4868 	push	ar6
      004541 C0 05            [24] 4869 	push	ar5
      004543 8A 82            [24] 4870 	mov	dpl,r2
      004545 8B 83            [24] 4871 	mov	dph,r3
      004547 8C F0            [24] 4872 	mov	b,r4
      004549 12 27 83         [24] 4873 	lcall	_stack_pop
      00454C AB 82            [24] 4874 	mov	r3,dpl
      00454E AC 83            [24] 4875 	mov	r4,dph
      004550 15 81            [12] 4876 	dec	sp
      004552 15 81            [12] 4877 	dec	sp
      004554 15 81            [12] 4878 	dec	sp
      004556 EB               [12] 4879 	mov	a,r3
      004557 4C               [12] 4880 	orl	a,r4
      004558 70 25            [24] 4881 	jnz	00172$
      00455A 7F A9            [12] 4882 	mov	r7,#___str_10
      00455C 7E 89            [12] 4883 	mov	r6,#(___str_10 >> 8)
      00455E 7D 80            [12] 4884 	mov	r5,#0x80
                                   4885 ;	calc.c:58: return;
      004560                       4886 00438$:
                                   4887 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004560 8F 82            [24] 4888 	mov	dpl,r7
      004562 8E 83            [24] 4889 	mov	dph,r6
      004564 8D F0            [24] 4890 	mov	b,r5
      004566 12 70 DA         [24] 4891 	lcall	__gptrget
      004569 FC               [12] 4892 	mov	r4,a
      00456A 70 03            [24] 4893 	jnz	01338$
      00456C 02 57 13         [24] 4894 	ljmp	00249$
      00456F                       4895 01338$:
      00456F 7B 00            [12] 4896 	mov	r3,#0x00
      004571 8C 82            [24] 4897 	mov	dpl,r4
      004573 8B 83            [24] 4898 	mov	dph,r3
      004575 12 2B 70         [24] 4899 	lcall	_putchar
      004578 0F               [12] 4900 	inc	r7
                                   4901 ;	calc.c:241: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004579 BF 00 E4         [24] 4902 	cjne	r7,#0x00,00438$
      00457C 0E               [12] 4903 	inc	r6
      00457D 80 E1            [24] 4904 	sjmp	00438$
      00457F                       4905 00172$:
                                   4906 ;	calc.c:242: else if (!stack_pop(ctx->ps, &d1)) {
      00457F E5 08            [12] 4907 	mov	a,_bp
      004581 24 19            [12] 4908 	add	a,#0x19
      004583 FF               [12] 4909 	mov	r7,a
      004584 7E 00            [12] 4910 	mov	r6,#0x00
      004586 7D 40            [12] 4911 	mov	r5,#0x40
      004588 E5 08            [12] 4912 	mov	a,_bp
      00458A 24 0B            [12] 4913 	add	a,#0x0b
      00458C F8               [12] 4914 	mov	r0,a
      00458D 86 82            [24] 4915 	mov	dpl,@r0
      00458F 08               [12] 4916 	inc	r0
      004590 86 83            [24] 4917 	mov	dph,@r0
      004592 08               [12] 4918 	inc	r0
      004593 86 F0            [24] 4919 	mov	b,@r0
      004595 12 70 DA         [24] 4920 	lcall	__gptrget
      004598 FA               [12] 4921 	mov	r2,a
      004599 A3               [24] 4922 	inc	dptr
      00459A 12 70 DA         [24] 4923 	lcall	__gptrget
      00459D FB               [12] 4924 	mov	r3,a
      00459E A3               [24] 4925 	inc	dptr
      00459F 12 70 DA         [24] 4926 	lcall	__gptrget
      0045A2 FC               [12] 4927 	mov	r4,a
      0045A3 C0 07            [24] 4928 	push	ar7
      0045A5 C0 06            [24] 4929 	push	ar6
      0045A7 C0 05            [24] 4930 	push	ar5
      0045A9 8A 82            [24] 4931 	mov	dpl,r2
      0045AB 8B 83            [24] 4932 	mov	dph,r3
      0045AD 8C F0            [24] 4933 	mov	b,r4
      0045AF 12 27 83         [24] 4934 	lcall	_stack_pop
      0045B2 AB 82            [24] 4935 	mov	r3,dpl
      0045B4 AC 83            [24] 4936 	mov	r4,dph
      0045B6 15 81            [12] 4937 	dec	sp
      0045B8 15 81            [12] 4938 	dec	sp
      0045BA 15 81            [12] 4939 	dec	sp
      0045BC EB               [12] 4940 	mov	a,r3
      0045BD 4C               [12] 4941 	orl	a,r4
      0045BE 70 63            [24] 4942 	jnz	00169$
                                   4943 ;	calc.c:243: (void)stack_push(ctx->ps, d0);
      0045C0 E5 08            [12] 4944 	mov	a,_bp
      0045C2 24 0B            [12] 4945 	add	a,#0x0b
      0045C4 F8               [12] 4946 	mov	r0,a
      0045C5 86 82            [24] 4947 	mov	dpl,@r0
      0045C7 08               [12] 4948 	inc	r0
      0045C8 86 83            [24] 4949 	mov	dph,@r0
      0045CA 08               [12] 4950 	inc	r0
      0045CB 86 F0            [24] 4951 	mov	b,@r0
      0045CD 12 70 DA         [24] 4952 	lcall	__gptrget
      0045D0 FA               [12] 4953 	mov	r2,a
      0045D1 A3               [24] 4954 	inc	dptr
      0045D2 12 70 DA         [24] 4955 	lcall	__gptrget
      0045D5 FB               [12] 4956 	mov	r3,a
      0045D6 A3               [24] 4957 	inc	dptr
      0045D7 12 70 DA         [24] 4958 	lcall	__gptrget
      0045DA FC               [12] 4959 	mov	r4,a
      0045DB E5 08            [12] 4960 	mov	a,_bp
      0045DD 24 15            [12] 4961 	add	a,#0x15
      0045DF F8               [12] 4962 	mov	r0,a
      0045E0 E6               [12] 4963 	mov	a,@r0
      0045E1 C0 E0            [24] 4964 	push	acc
      0045E3 08               [12] 4965 	inc	r0
      0045E4 E6               [12] 4966 	mov	a,@r0
      0045E5 C0 E0            [24] 4967 	push	acc
      0045E7 08               [12] 4968 	inc	r0
      0045E8 E6               [12] 4969 	mov	a,@r0
      0045E9 C0 E0            [24] 4970 	push	acc
      0045EB 08               [12] 4971 	inc	r0
      0045EC E6               [12] 4972 	mov	a,@r0
      0045ED C0 E0            [24] 4973 	push	acc
      0045EF 8A 82            [24] 4974 	mov	dpl,r2
      0045F1 8B 83            [24] 4975 	mov	dph,r3
      0045F3 8C F0            [24] 4976 	mov	b,r4
      0045F5 12 26 B5         [24] 4977 	lcall	_stack_push
      0045F8 E5 81            [12] 4978 	mov	a,sp
      0045FA 24 FC            [12] 4979 	add	a,#0xfc
      0045FC F5 81            [12] 4980 	mov	sp,a
                                   4981 ;	calc.c:244: printstr("\r\nstack underflow\r\n");
      0045FE 7F A9            [12] 4982 	mov	r7,#___str_10
      004600 7E 89            [12] 4983 	mov	r6,#(___str_10 >> 8)
      004602 7D 80            [12] 4984 	mov	r5,#0x80
                                   4985 ;	calc.c:58: return;
      004604                       4986 00441$:
                                   4987 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004604 8F 82            [24] 4988 	mov	dpl,r7
      004606 8E 83            [24] 4989 	mov	dph,r6
      004608 8D F0            [24] 4990 	mov	b,r5
      00460A 12 70 DA         [24] 4991 	lcall	__gptrget
      00460D FC               [12] 4992 	mov	r4,a
      00460E 70 03            [24] 4993 	jnz	01341$
      004610 02 57 13         [24] 4994 	ljmp	00249$
      004613                       4995 01341$:
      004613 7B 00            [12] 4996 	mov	r3,#0x00
      004615 8C 82            [24] 4997 	mov	dpl,r4
      004617 8B 83            [24] 4998 	mov	dph,r3
      004619 12 2B 70         [24] 4999 	lcall	_putchar
      00461C 0F               [12] 5000 	inc	r7
                                   5001 ;	calc.c:244: printstr("\r\nstack underflow\r\n");
      00461D BF 00 E4         [24] 5002 	cjne	r7,#0x00,00441$
      004620 0E               [12] 5003 	inc	r6
      004621 80 E1            [24] 5004 	sjmp	00441$
      004623                       5005 00169$:
                                   5006 ;	calc.c:246: d1 *= d0;
      004623 E5 08            [12] 5007 	mov	a,_bp
      004625 24 15            [12] 5008 	add	a,#0x15
      004627 F8               [12] 5009 	mov	r0,a
      004628 E6               [12] 5010 	mov	a,@r0
      004629 C0 E0            [24] 5011 	push	acc
      00462B 08               [12] 5012 	inc	r0
      00462C E6               [12] 5013 	mov	a,@r0
      00462D C0 E0            [24] 5014 	push	acc
      00462F 08               [12] 5015 	inc	r0
      004630 E6               [12] 5016 	mov	a,@r0
      004631 C0 E0            [24] 5017 	push	acc
      004633 08               [12] 5018 	inc	r0
      004634 E6               [12] 5019 	mov	a,@r0
      004635 C0 E0            [24] 5020 	push	acc
      004637 E5 08            [12] 5021 	mov	a,_bp
      004639 24 19            [12] 5022 	add	a,#0x19
      00463B F8               [12] 5023 	mov	r0,a
      00463C 86 82            [24] 5024 	mov	dpl,@r0
      00463E 08               [12] 5025 	inc	r0
      00463F 86 83            [24] 5026 	mov	dph,@r0
      004641 08               [12] 5027 	inc	r0
      004642 86 F0            [24] 5028 	mov	b,@r0
      004644 08               [12] 5029 	inc	r0
      004645 E6               [12] 5030 	mov	a,@r0
      004646 12 74 D3         [24] 5031 	lcall	__mullong
      004649 AF 82            [24] 5032 	mov	r7,dpl
      00464B AE 83            [24] 5033 	mov	r6,dph
      00464D AD F0            [24] 5034 	mov	r5,b
      00464F FC               [12] 5035 	mov	r4,a
      004650 E5 81            [12] 5036 	mov	a,sp
      004652 24 FC            [12] 5037 	add	a,#0xfc
      004654 F5 81            [12] 5038 	mov	sp,a
      004656 E5 08            [12] 5039 	mov	a,_bp
      004658 24 19            [12] 5040 	add	a,#0x19
      00465A F8               [12] 5041 	mov	r0,a
      00465B A6 07            [24] 5042 	mov	@r0,ar7
      00465D 08               [12] 5043 	inc	r0
      00465E A6 06            [24] 5044 	mov	@r0,ar6
      004660 08               [12] 5045 	inc	r0
      004661 A6 05            [24] 5046 	mov	@r0,ar5
      004663 08               [12] 5047 	inc	r0
      004664 A6 04            [24] 5048 	mov	@r0,ar4
                                   5049 ;	calc.c:247: (void)stack_push(ctx->ps, d1);
      004666 E5 08            [12] 5050 	mov	a,_bp
      004668 24 0B            [12] 5051 	add	a,#0x0b
      00466A F8               [12] 5052 	mov	r0,a
      00466B 86 82            [24] 5053 	mov	dpl,@r0
      00466D 08               [12] 5054 	inc	r0
      00466E 86 83            [24] 5055 	mov	dph,@r0
      004670 08               [12] 5056 	inc	r0
      004671 86 F0            [24] 5057 	mov	b,@r0
      004673 12 70 DA         [24] 5058 	lcall	__gptrget
      004676 FA               [12] 5059 	mov	r2,a
      004677 A3               [24] 5060 	inc	dptr
      004678 12 70 DA         [24] 5061 	lcall	__gptrget
      00467B FB               [12] 5062 	mov	r3,a
      00467C A3               [24] 5063 	inc	dptr
      00467D 12 70 DA         [24] 5064 	lcall	__gptrget
      004680 FC               [12] 5065 	mov	r4,a
      004681 E5 08            [12] 5066 	mov	a,_bp
      004683 24 19            [12] 5067 	add	a,#0x19
      004685 F8               [12] 5068 	mov	r0,a
      004686 E6               [12] 5069 	mov	a,@r0
      004687 C0 E0            [24] 5070 	push	acc
      004689 08               [12] 5071 	inc	r0
      00468A E6               [12] 5072 	mov	a,@r0
      00468B C0 E0            [24] 5073 	push	acc
      00468D 08               [12] 5074 	inc	r0
      00468E E6               [12] 5075 	mov	a,@r0
      00468F C0 E0            [24] 5076 	push	acc
      004691 08               [12] 5077 	inc	r0
      004692 E6               [12] 5078 	mov	a,@r0
      004693 C0 E0            [24] 5079 	push	acc
      004695 8A 82            [24] 5080 	mov	dpl,r2
      004697 8B 83            [24] 5081 	mov	dph,r3
      004699 8C F0            [24] 5082 	mov	b,r4
      00469B 12 26 B5         [24] 5083 	lcall	_stack_push
      00469E E5 81            [12] 5084 	mov	a,sp
      0046A0 24 FC            [12] 5085 	add	a,#0xfc
      0046A2 F5 81            [12] 5086 	mov	sp,a
                                   5087 ;	calc.c:249: break;
      0046A4 02 57 13         [24] 5088 	ljmp	00249$
                                   5089 ;	calc.c:251: case '\\':
      0046A7                       5090 00175$:
                                   5091 ;	calc.c:252: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0046A7 C0 05            [24] 5092 	push	ar5
      0046A9 C0 06            [24] 5093 	push	ar6
      0046AB C0 07            [24] 5094 	push	ar7
      0046AD E5 08            [12] 5095 	mov	a,_bp
      0046AF 24 15            [12] 5096 	add	a,#0x15
      0046B1 FC               [12] 5097 	mov	r4,a
      0046B2 7B 00            [12] 5098 	mov	r3,#0x00
      0046B4 7A 40            [12] 5099 	mov	r2,#0x40
      0046B6 E5 08            [12] 5100 	mov	a,_bp
      0046B8 24 12            [12] 5101 	add	a,#0x12
      0046BA F8               [12] 5102 	mov	r0,a
      0046BB E5 08            [12] 5103 	mov	a,_bp
      0046BD 24 0B            [12] 5104 	add	a,#0x0b
      0046BF F9               [12] 5105 	mov	r1,a
      0046C0 74 11            [12] 5106 	mov	a,#0x11
      0046C2 26               [12] 5107 	add	a,@r0
      0046C3 F7               [12] 5108 	mov	@r1,a
      0046C4 74 40            [12] 5109 	mov	a,#0x40
      0046C6 08               [12] 5110 	inc	r0
      0046C7 36               [12] 5111 	addc	a,@r0
      0046C8 09               [12] 5112 	inc	r1
      0046C9 F7               [12] 5113 	mov	@r1,a
      0046CA 08               [12] 5114 	inc	r0
      0046CB 09               [12] 5115 	inc	r1
      0046CC E6               [12] 5116 	mov	a,@r0
      0046CD F7               [12] 5117 	mov	@r1,a
      0046CE E5 08            [12] 5118 	mov	a,_bp
      0046D0 24 0B            [12] 5119 	add	a,#0x0b
      0046D2 F8               [12] 5120 	mov	r0,a
      0046D3 86 82            [24] 5121 	mov	dpl,@r0
      0046D5 08               [12] 5122 	inc	r0
      0046D6 86 83            [24] 5123 	mov	dph,@r0
      0046D8 08               [12] 5124 	inc	r0
      0046D9 86 F0            [24] 5125 	mov	b,@r0
      0046DB 12 70 DA         [24] 5126 	lcall	__gptrget
      0046DE FD               [12] 5127 	mov	r5,a
      0046DF A3               [24] 5128 	inc	dptr
      0046E0 12 70 DA         [24] 5129 	lcall	__gptrget
      0046E3 FE               [12] 5130 	mov	r6,a
      0046E4 A3               [24] 5131 	inc	dptr
      0046E5 12 70 DA         [24] 5132 	lcall	__gptrget
      0046E8 FF               [12] 5133 	mov	r7,a
      0046E9 C0 05            [24] 5134 	push	ar5
      0046EB C0 04            [24] 5135 	push	ar4
      0046ED C0 03            [24] 5136 	push	ar3
      0046EF C0 02            [24] 5137 	push	ar2
      0046F1 8D 82            [24] 5138 	mov	dpl,r5
      0046F3 8E 83            [24] 5139 	mov	dph,r6
      0046F5 8F F0            [24] 5140 	mov	b,r7
      0046F7 12 27 83         [24] 5141 	lcall	_stack_pop
      0046FA AE 82            [24] 5142 	mov	r6,dpl
      0046FC AF 83            [24] 5143 	mov	r7,dph
      0046FE 15 81            [12] 5144 	dec	sp
      004700 15 81            [12] 5145 	dec	sp
      004702 15 81            [12] 5146 	dec	sp
      004704 D0 05            [24] 5147 	pop	ar5
      004706 EE               [12] 5148 	mov	a,r6
      004707 4F               [12] 5149 	orl	a,r7
      004708 D0 07            [24] 5150 	pop	ar7
      00470A D0 06            [24] 5151 	pop	ar6
      00470C D0 05            [24] 5152 	pop	ar5
      00470E 70 25            [24] 5153 	jnz	00186$
      004710 7F A9            [12] 5154 	mov	r7,#___str_10
      004712 7E 89            [12] 5155 	mov	r6,#(___str_10 >> 8)
      004714 7D 80            [12] 5156 	mov	r5,#0x80
                                   5157 ;	calc.c:58: return;
      004716                       5158 00444$:
                                   5159 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004716 8F 82            [24] 5160 	mov	dpl,r7
      004718 8E 83            [24] 5161 	mov	dph,r6
      00471A 8D F0            [24] 5162 	mov	b,r5
      00471C 12 70 DA         [24] 5163 	lcall	__gptrget
      00471F FC               [12] 5164 	mov	r4,a
      004720 70 03            [24] 5165 	jnz	01344$
      004722 02 57 13         [24] 5166 	ljmp	00249$
      004725                       5167 01344$:
      004725 7B 00            [12] 5168 	mov	r3,#0x00
      004727 8C 82            [24] 5169 	mov	dpl,r4
      004729 8B 83            [24] 5170 	mov	dph,r3
      00472B 12 2B 70         [24] 5171 	lcall	_putchar
      00472E 0F               [12] 5172 	inc	r7
                                   5173 ;	calc.c:252: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00472F BF 00 E4         [24] 5174 	cjne	r7,#0x00,00444$
      004732 0E               [12] 5175 	inc	r6
      004733 80 E1            [24] 5176 	sjmp	00444$
      004735                       5177 00186$:
                                   5178 ;	calc.c:253: else if (!stack_pop(ctx->ps, &d1)) {
      004735 C0 05            [24] 5179 	push	ar5
      004737 C0 06            [24] 5180 	push	ar6
      004739 C0 07            [24] 5181 	push	ar7
      00473B E5 08            [12] 5182 	mov	a,_bp
      00473D 24 19            [12] 5183 	add	a,#0x19
      00473F FC               [12] 5184 	mov	r4,a
      004740 7B 00            [12] 5185 	mov	r3,#0x00
      004742 7A 40            [12] 5186 	mov	r2,#0x40
      004744 E5 08            [12] 5187 	mov	a,_bp
      004746 24 0B            [12] 5188 	add	a,#0x0b
      004748 F8               [12] 5189 	mov	r0,a
      004749 86 82            [24] 5190 	mov	dpl,@r0
      00474B 08               [12] 5191 	inc	r0
      00474C 86 83            [24] 5192 	mov	dph,@r0
      00474E 08               [12] 5193 	inc	r0
      00474F 86 F0            [24] 5194 	mov	b,@r0
      004751 12 70 DA         [24] 5195 	lcall	__gptrget
      004754 FD               [12] 5196 	mov	r5,a
      004755 A3               [24] 5197 	inc	dptr
      004756 12 70 DA         [24] 5198 	lcall	__gptrget
      004759 FE               [12] 5199 	mov	r6,a
      00475A A3               [24] 5200 	inc	dptr
      00475B 12 70 DA         [24] 5201 	lcall	__gptrget
      00475E FF               [12] 5202 	mov	r7,a
      00475F C0 05            [24] 5203 	push	ar5
      004761 C0 04            [24] 5204 	push	ar4
      004763 C0 03            [24] 5205 	push	ar3
      004765 C0 02            [24] 5206 	push	ar2
      004767 8D 82            [24] 5207 	mov	dpl,r5
      004769 8E 83            [24] 5208 	mov	dph,r6
      00476B 8F F0            [24] 5209 	mov	b,r7
      00476D 12 27 83         [24] 5210 	lcall	_stack_pop
      004770 AE 82            [24] 5211 	mov	r6,dpl
      004772 AF 83            [24] 5212 	mov	r7,dph
      004774 15 81            [12] 5213 	dec	sp
      004776 15 81            [12] 5214 	dec	sp
      004778 15 81            [12] 5215 	dec	sp
      00477A D0 05            [24] 5216 	pop	ar5
      00477C EE               [12] 5217 	mov	a,r6
      00477D 4F               [12] 5218 	orl	a,r7
      00477E D0 07            [24] 5219 	pop	ar7
      004780 D0 06            [24] 5220 	pop	ar6
      004782 D0 05            [24] 5221 	pop	ar5
      004784 70 63            [24] 5222 	jnz	00183$
                                   5223 ;	calc.c:254: (void)stack_push(ctx->ps, d0);
      004786 E5 08            [12] 5224 	mov	a,_bp
      004788 24 0B            [12] 5225 	add	a,#0x0b
      00478A F8               [12] 5226 	mov	r0,a
      00478B 86 82            [24] 5227 	mov	dpl,@r0
      00478D 08               [12] 5228 	inc	r0
      00478E 86 83            [24] 5229 	mov	dph,@r0
      004790 08               [12] 5230 	inc	r0
      004791 86 F0            [24] 5231 	mov	b,@r0
      004793 12 70 DA         [24] 5232 	lcall	__gptrget
      004796 FA               [12] 5233 	mov	r2,a
      004797 A3               [24] 5234 	inc	dptr
      004798 12 70 DA         [24] 5235 	lcall	__gptrget
      00479B FB               [12] 5236 	mov	r3,a
      00479C A3               [24] 5237 	inc	dptr
      00479D 12 70 DA         [24] 5238 	lcall	__gptrget
      0047A0 FC               [12] 5239 	mov	r4,a
      0047A1 E5 08            [12] 5240 	mov	a,_bp
      0047A3 24 15            [12] 5241 	add	a,#0x15
      0047A5 F8               [12] 5242 	mov	r0,a
      0047A6 E6               [12] 5243 	mov	a,@r0
      0047A7 C0 E0            [24] 5244 	push	acc
      0047A9 08               [12] 5245 	inc	r0
      0047AA E6               [12] 5246 	mov	a,@r0
      0047AB C0 E0            [24] 5247 	push	acc
      0047AD 08               [12] 5248 	inc	r0
      0047AE E6               [12] 5249 	mov	a,@r0
      0047AF C0 E0            [24] 5250 	push	acc
      0047B1 08               [12] 5251 	inc	r0
      0047B2 E6               [12] 5252 	mov	a,@r0
      0047B3 C0 E0            [24] 5253 	push	acc
      0047B5 8A 82            [24] 5254 	mov	dpl,r2
      0047B7 8B 83            [24] 5255 	mov	dph,r3
      0047B9 8C F0            [24] 5256 	mov	b,r4
      0047BB 12 26 B5         [24] 5257 	lcall	_stack_push
      0047BE E5 81            [12] 5258 	mov	a,sp
      0047C0 24 FC            [12] 5259 	add	a,#0xfc
      0047C2 F5 81            [12] 5260 	mov	sp,a
                                   5261 ;	calc.c:255: printstr("\r\nstack underflow\r\n");
      0047C4 7F A9            [12] 5262 	mov	r7,#___str_10
      0047C6 7E 89            [12] 5263 	mov	r6,#(___str_10 >> 8)
      0047C8 7D 80            [12] 5264 	mov	r5,#0x80
                                   5265 ;	calc.c:58: return;
      0047CA                       5266 00447$:
                                   5267 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0047CA 8F 82            [24] 5268 	mov	dpl,r7
      0047CC 8E 83            [24] 5269 	mov	dph,r6
      0047CE 8D F0            [24] 5270 	mov	b,r5
      0047D0 12 70 DA         [24] 5271 	lcall	__gptrget
      0047D3 FC               [12] 5272 	mov	r4,a
      0047D4 70 03            [24] 5273 	jnz	01347$
      0047D6 02 57 13         [24] 5274 	ljmp	00249$
      0047D9                       5275 01347$:
      0047D9 7B 00            [12] 5276 	mov	r3,#0x00
      0047DB 8C 82            [24] 5277 	mov	dpl,r4
      0047DD 8B 83            [24] 5278 	mov	dph,r3
      0047DF 12 2B 70         [24] 5279 	lcall	_putchar
      0047E2 0F               [12] 5280 	inc	r7
                                   5281 ;	calc.c:255: printstr("\r\nstack underflow\r\n");
      0047E3 BF 00 E4         [24] 5282 	cjne	r7,#0x00,00447$
      0047E6 0E               [12] 5283 	inc	r6
      0047E7 80 E1            [24] 5284 	sjmp	00447$
      0047E9                       5285 00183$:
                                   5286 ;	calc.c:256: } else if (!d0) {
      0047E9 E5 08            [12] 5287 	mov	a,_bp
      0047EB 24 15            [12] 5288 	add	a,#0x15
      0047ED F8               [12] 5289 	mov	r0,a
      0047EE E6               [12] 5290 	mov	a,@r0
      0047EF 08               [12] 5291 	inc	r0
      0047F0 46               [12] 5292 	orl	a,@r0
      0047F1 08               [12] 5293 	inc	r0
      0047F2 46               [12] 5294 	orl	a,@r0
      0047F3 08               [12] 5295 	inc	r0
      0047F4 46               [12] 5296 	orl	a,@r0
      0047F5 60 03            [24] 5297 	jz	01349$
      0047F7 02 48 9B         [24] 5298 	ljmp	00180$
      0047FA                       5299 01349$:
                                   5300 ;	calc.c:257: (void)stack_push(ctx->ps, d1);
      0047FA E5 08            [12] 5301 	mov	a,_bp
      0047FC 24 0B            [12] 5302 	add	a,#0x0b
      0047FE F8               [12] 5303 	mov	r0,a
      0047FF 86 82            [24] 5304 	mov	dpl,@r0
      004801 08               [12] 5305 	inc	r0
      004802 86 83            [24] 5306 	mov	dph,@r0
      004804 08               [12] 5307 	inc	r0
      004805 86 F0            [24] 5308 	mov	b,@r0
      004807 12 70 DA         [24] 5309 	lcall	__gptrget
      00480A FA               [12] 5310 	mov	r2,a
      00480B A3               [24] 5311 	inc	dptr
      00480C 12 70 DA         [24] 5312 	lcall	__gptrget
      00480F FB               [12] 5313 	mov	r3,a
      004810 A3               [24] 5314 	inc	dptr
      004811 12 70 DA         [24] 5315 	lcall	__gptrget
      004814 FC               [12] 5316 	mov	r4,a
      004815 E5 08            [12] 5317 	mov	a,_bp
      004817 24 19            [12] 5318 	add	a,#0x19
      004819 F8               [12] 5319 	mov	r0,a
      00481A E6               [12] 5320 	mov	a,@r0
      00481B C0 E0            [24] 5321 	push	acc
      00481D 08               [12] 5322 	inc	r0
      00481E E6               [12] 5323 	mov	a,@r0
      00481F C0 E0            [24] 5324 	push	acc
      004821 08               [12] 5325 	inc	r0
      004822 E6               [12] 5326 	mov	a,@r0
      004823 C0 E0            [24] 5327 	push	acc
      004825 08               [12] 5328 	inc	r0
      004826 E6               [12] 5329 	mov	a,@r0
      004827 C0 E0            [24] 5330 	push	acc
      004829 8A 82            [24] 5331 	mov	dpl,r2
      00482B 8B 83            [24] 5332 	mov	dph,r3
      00482D 8C F0            [24] 5333 	mov	b,r4
      00482F 12 26 B5         [24] 5334 	lcall	_stack_push
      004832 E5 81            [12] 5335 	mov	a,sp
      004834 24 FC            [12] 5336 	add	a,#0xfc
      004836 F5 81            [12] 5337 	mov	sp,a
                                   5338 ;	calc.c:258: (void)stack_push(ctx->ps, d0);			
      004838 E5 08            [12] 5339 	mov	a,_bp
      00483A 24 0B            [12] 5340 	add	a,#0x0b
      00483C F8               [12] 5341 	mov	r0,a
      00483D 86 82            [24] 5342 	mov	dpl,@r0
      00483F 08               [12] 5343 	inc	r0
      004840 86 83            [24] 5344 	mov	dph,@r0
      004842 08               [12] 5345 	inc	r0
      004843 86 F0            [24] 5346 	mov	b,@r0
      004845 12 70 DA         [24] 5347 	lcall	__gptrget
      004848 FA               [12] 5348 	mov	r2,a
      004849 A3               [24] 5349 	inc	dptr
      00484A 12 70 DA         [24] 5350 	lcall	__gptrget
      00484D FB               [12] 5351 	mov	r3,a
      00484E A3               [24] 5352 	inc	dptr
      00484F 12 70 DA         [24] 5353 	lcall	__gptrget
      004852 FC               [12] 5354 	mov	r4,a
      004853 E5 08            [12] 5355 	mov	a,_bp
      004855 24 15            [12] 5356 	add	a,#0x15
      004857 F8               [12] 5357 	mov	r0,a
      004858 E6               [12] 5358 	mov	a,@r0
      004859 C0 E0            [24] 5359 	push	acc
      00485B 08               [12] 5360 	inc	r0
      00485C E6               [12] 5361 	mov	a,@r0
      00485D C0 E0            [24] 5362 	push	acc
      00485F 08               [12] 5363 	inc	r0
      004860 E6               [12] 5364 	mov	a,@r0
      004861 C0 E0            [24] 5365 	push	acc
      004863 08               [12] 5366 	inc	r0
      004864 E6               [12] 5367 	mov	a,@r0
      004865 C0 E0            [24] 5368 	push	acc
      004867 8A 82            [24] 5369 	mov	dpl,r2
      004869 8B 83            [24] 5370 	mov	dph,r3
      00486B 8C F0            [24] 5371 	mov	b,r4
      00486D 12 26 B5         [24] 5372 	lcall	_stack_push
      004870 E5 81            [12] 5373 	mov	a,sp
      004872 24 FC            [12] 5374 	add	a,#0xfc
      004874 F5 81            [12] 5375 	mov	sp,a
                                   5376 ;	calc.c:259: printstr("\r\ndivision by zero\r\n");
      004876 7F 0B            [12] 5377 	mov	r7,#___str_14
      004878 7E 8A            [12] 5378 	mov	r6,#(___str_14 >> 8)
      00487A 7D 80            [12] 5379 	mov	r5,#0x80
                                   5380 ;	calc.c:58: return;
      00487C                       5381 00450$:
                                   5382 ;	calc.c:56: for (; *s; s++) putchar(*s);
      00487C 8F 82            [24] 5383 	mov	dpl,r7
      00487E 8E 83            [24] 5384 	mov	dph,r6
      004880 8D F0            [24] 5385 	mov	b,r5
      004882 12 70 DA         [24] 5386 	lcall	__gptrget
      004885 FC               [12] 5387 	mov	r4,a
      004886 70 03            [24] 5388 	jnz	01350$
      004888 02 57 13         [24] 5389 	ljmp	00249$
      00488B                       5390 01350$:
      00488B 7B 00            [12] 5391 	mov	r3,#0x00
      00488D 8C 82            [24] 5392 	mov	dpl,r4
      00488F 8B 83            [24] 5393 	mov	dph,r3
      004891 12 2B 70         [24] 5394 	lcall	_putchar
      004894 0F               [12] 5395 	inc	r7
                                   5396 ;	calc.c:259: printstr("\r\ndivision by zero\r\n");
      004895 BF 00 E4         [24] 5397 	cjne	r7,#0x00,00450$
      004898 0E               [12] 5398 	inc	r6
      004899 80 E1            [24] 5399 	sjmp	00450$
      00489B                       5400 00180$:
                                   5401 ;	calc.c:261: if (ctx->digit[0] == '/') d1 /= d0;
      00489B 8D 82            [24] 5402 	mov	dpl,r5
      00489D 8E 83            [24] 5403 	mov	dph,r6
      00489F 8F F0            [24] 5404 	mov	b,r7
      0048A1 12 70 DA         [24] 5405 	lcall	__gptrget
      0048A4 FC               [12] 5406 	mov	r4,a
      0048A5 BC 2F 45         [24] 5407 	cjne	r4,#0x2f,00177$
      0048A8 E5 08            [12] 5408 	mov	a,_bp
      0048AA 24 15            [12] 5409 	add	a,#0x15
      0048AC F8               [12] 5410 	mov	r0,a
      0048AD E6               [12] 5411 	mov	a,@r0
      0048AE C0 E0            [24] 5412 	push	acc
      0048B0 08               [12] 5413 	inc	r0
      0048B1 E6               [12] 5414 	mov	a,@r0
      0048B2 C0 E0            [24] 5415 	push	acc
      0048B4 08               [12] 5416 	inc	r0
      0048B5 E6               [12] 5417 	mov	a,@r0
      0048B6 C0 E0            [24] 5418 	push	acc
      0048B8 08               [12] 5419 	inc	r0
      0048B9 E6               [12] 5420 	mov	a,@r0
      0048BA C0 E0            [24] 5421 	push	acc
      0048BC E5 08            [12] 5422 	mov	a,_bp
      0048BE 24 19            [12] 5423 	add	a,#0x19
      0048C0 F8               [12] 5424 	mov	r0,a
      0048C1 86 82            [24] 5425 	mov	dpl,@r0
      0048C3 08               [12] 5426 	inc	r0
      0048C4 86 83            [24] 5427 	mov	dph,@r0
      0048C6 08               [12] 5428 	inc	r0
      0048C7 86 F0            [24] 5429 	mov	b,@r0
      0048C9 08               [12] 5430 	inc	r0
      0048CA E6               [12] 5431 	mov	a,@r0
      0048CB 12 6E D1         [24] 5432 	lcall	__divslong
      0048CE AF 82            [24] 5433 	mov	r7,dpl
      0048D0 AE 83            [24] 5434 	mov	r6,dph
      0048D2 AD F0            [24] 5435 	mov	r5,b
      0048D4 FC               [12] 5436 	mov	r4,a
      0048D5 E5 81            [12] 5437 	mov	a,sp
      0048D7 24 FC            [12] 5438 	add	a,#0xfc
      0048D9 F5 81            [12] 5439 	mov	sp,a
      0048DB E5 08            [12] 5440 	mov	a,_bp
      0048DD 24 19            [12] 5441 	add	a,#0x19
      0048DF F8               [12] 5442 	mov	r0,a
      0048E0 A6 07            [24] 5443 	mov	@r0,ar7
      0048E2 08               [12] 5444 	inc	r0
      0048E3 A6 06            [24] 5445 	mov	@r0,ar6
      0048E5 08               [12] 5446 	inc	r0
      0048E6 A6 05            [24] 5447 	mov	@r0,ar5
      0048E8 08               [12] 5448 	inc	r0
      0048E9 A6 04            [24] 5449 	mov	@r0,ar4
      0048EB 80 63            [24] 5450 	sjmp	00178$
      0048ED                       5451 00177$:
                                   5452 ;	calc.c:262: else d1 = (unsigned long)d1 / (unsigned long)d0;
      0048ED E5 08            [12] 5453 	mov	a,_bp
      0048EF 24 19            [12] 5454 	add	a,#0x19
      0048F1 F8               [12] 5455 	mov	r0,a
      0048F2 86 07            [24] 5456 	mov	ar7,@r0
      0048F4 08               [12] 5457 	inc	r0
      0048F5 86 06            [24] 5458 	mov	ar6,@r0
      0048F7 08               [12] 5459 	inc	r0
      0048F8 86 05            [24] 5460 	mov	ar5,@r0
      0048FA 08               [12] 5461 	inc	r0
      0048FB 86 04            [24] 5462 	mov	ar4,@r0
      0048FD E5 08            [12] 5463 	mov	a,_bp
      0048FF 24 15            [12] 5464 	add	a,#0x15
      004901 F8               [12] 5465 	mov	r0,a
      004902 E5 08            [12] 5466 	mov	a,_bp
      004904 24 0E            [12] 5467 	add	a,#0x0e
      004906 F9               [12] 5468 	mov	r1,a
      004907 E6               [12] 5469 	mov	a,@r0
      004908 F7               [12] 5470 	mov	@r1,a
      004909 08               [12] 5471 	inc	r0
      00490A 09               [12] 5472 	inc	r1
      00490B E6               [12] 5473 	mov	a,@r0
      00490C F7               [12] 5474 	mov	@r1,a
      00490D 08               [12] 5475 	inc	r0
      00490E 09               [12] 5476 	inc	r1
      00490F E6               [12] 5477 	mov	a,@r0
      004910 F7               [12] 5478 	mov	@r1,a
      004911 08               [12] 5479 	inc	r0
      004912 09               [12] 5480 	inc	r1
      004913 E6               [12] 5481 	mov	a,@r0
      004914 F7               [12] 5482 	mov	@r1,a
      004915 E5 08            [12] 5483 	mov	a,_bp
      004917 24 0E            [12] 5484 	add	a,#0x0e
      004919 F8               [12] 5485 	mov	r0,a
      00491A E6               [12] 5486 	mov	a,@r0
      00491B C0 E0            [24] 5487 	push	acc
      00491D 08               [12] 5488 	inc	r0
      00491E E6               [12] 5489 	mov	a,@r0
      00491F C0 E0            [24] 5490 	push	acc
      004921 08               [12] 5491 	inc	r0
      004922 E6               [12] 5492 	mov	a,@r0
      004923 C0 E0            [24] 5493 	push	acc
      004925 08               [12] 5494 	inc	r0
      004926 E6               [12] 5495 	mov	a,@r0
      004927 C0 E0            [24] 5496 	push	acc
      004929 8F 82            [24] 5497 	mov	dpl,r7
      00492B 8E 83            [24] 5498 	mov	dph,r6
      00492D 8D F0            [24] 5499 	mov	b,r5
      00492F EC               [12] 5500 	mov	a,r4
      004930 12 6F CE         [24] 5501 	lcall	__divulong
      004933 AF 82            [24] 5502 	mov	r7,dpl
      004935 AE 83            [24] 5503 	mov	r6,dph
      004937 AD F0            [24] 5504 	mov	r5,b
      004939 FC               [12] 5505 	mov	r4,a
      00493A E5 81            [12] 5506 	mov	a,sp
      00493C 24 FC            [12] 5507 	add	a,#0xfc
      00493E F5 81            [12] 5508 	mov	sp,a
      004940 E5 08            [12] 5509 	mov	a,_bp
      004942 24 19            [12] 5510 	add	a,#0x19
      004944 F8               [12] 5511 	mov	r0,a
      004945 A6 07            [24] 5512 	mov	@r0,ar7
      004947 08               [12] 5513 	inc	r0
      004948 A6 06            [24] 5514 	mov	@r0,ar6
      00494A 08               [12] 5515 	inc	r0
      00494B A6 05            [24] 5516 	mov	@r0,ar5
      00494D 08               [12] 5517 	inc	r0
      00494E A6 04            [24] 5518 	mov	@r0,ar4
      004950                       5519 00178$:
                                   5520 ;	calc.c:263: (void)stack_push(ctx->ps, d1);
      004950 E5 08            [12] 5521 	mov	a,_bp
      004952 24 0B            [12] 5522 	add	a,#0x0b
      004954 F8               [12] 5523 	mov	r0,a
      004955 86 82            [24] 5524 	mov	dpl,@r0
      004957 08               [12] 5525 	inc	r0
      004958 86 83            [24] 5526 	mov	dph,@r0
      00495A 08               [12] 5527 	inc	r0
      00495B 86 F0            [24] 5528 	mov	b,@r0
      00495D 12 70 DA         [24] 5529 	lcall	__gptrget
      004960 FA               [12] 5530 	mov	r2,a
      004961 A3               [24] 5531 	inc	dptr
      004962 12 70 DA         [24] 5532 	lcall	__gptrget
      004965 FB               [12] 5533 	mov	r3,a
      004966 A3               [24] 5534 	inc	dptr
      004967 12 70 DA         [24] 5535 	lcall	__gptrget
      00496A FC               [12] 5536 	mov	r4,a
      00496B E5 08            [12] 5537 	mov	a,_bp
      00496D 24 19            [12] 5538 	add	a,#0x19
      00496F F8               [12] 5539 	mov	r0,a
      004970 E6               [12] 5540 	mov	a,@r0
      004971 C0 E0            [24] 5541 	push	acc
      004973 08               [12] 5542 	inc	r0
      004974 E6               [12] 5543 	mov	a,@r0
      004975 C0 E0            [24] 5544 	push	acc
      004977 08               [12] 5545 	inc	r0
      004978 E6               [12] 5546 	mov	a,@r0
      004979 C0 E0            [24] 5547 	push	acc
      00497B 08               [12] 5548 	inc	r0
      00497C E6               [12] 5549 	mov	a,@r0
      00497D C0 E0            [24] 5550 	push	acc
      00497F 8A 82            [24] 5551 	mov	dpl,r2
      004981 8B 83            [24] 5552 	mov	dph,r3
      004983 8C F0            [24] 5553 	mov	b,r4
      004985 12 26 B5         [24] 5554 	lcall	_stack_push
      004988 E5 81            [12] 5555 	mov	a,sp
      00498A 24 FC            [12] 5556 	add	a,#0xfc
      00498C F5 81            [12] 5557 	mov	sp,a
                                   5558 ;	calc.c:265: break;
      00498E 02 57 13         [24] 5559 	ljmp	00249$
                                   5560 ;	calc.c:267: case '#':
      004991                       5561 00189$:
                                   5562 ;	calc.c:268: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004991 C0 05            [24] 5563 	push	ar5
      004993 C0 06            [24] 5564 	push	ar6
      004995 C0 07            [24] 5565 	push	ar7
      004997 E5 08            [12] 5566 	mov	a,_bp
      004999 24 15            [12] 5567 	add	a,#0x15
      00499B FC               [12] 5568 	mov	r4,a
      00499C 7B 00            [12] 5569 	mov	r3,#0x00
      00499E 7A 40            [12] 5570 	mov	r2,#0x40
      0049A0 E5 08            [12] 5571 	mov	a,_bp
      0049A2 24 12            [12] 5572 	add	a,#0x12
      0049A4 F8               [12] 5573 	mov	r0,a
      0049A5 E5 08            [12] 5574 	mov	a,_bp
      0049A7 24 0E            [12] 5575 	add	a,#0x0e
      0049A9 F9               [12] 5576 	mov	r1,a
      0049AA 74 11            [12] 5577 	mov	a,#0x11
      0049AC 26               [12] 5578 	add	a,@r0
      0049AD F7               [12] 5579 	mov	@r1,a
      0049AE 74 40            [12] 5580 	mov	a,#0x40
      0049B0 08               [12] 5581 	inc	r0
      0049B1 36               [12] 5582 	addc	a,@r0
      0049B2 09               [12] 5583 	inc	r1
      0049B3 F7               [12] 5584 	mov	@r1,a
      0049B4 08               [12] 5585 	inc	r0
      0049B5 09               [12] 5586 	inc	r1
      0049B6 E6               [12] 5587 	mov	a,@r0
      0049B7 F7               [12] 5588 	mov	@r1,a
      0049B8 E5 08            [12] 5589 	mov	a,_bp
      0049BA 24 0E            [12] 5590 	add	a,#0x0e
      0049BC F8               [12] 5591 	mov	r0,a
      0049BD 86 82            [24] 5592 	mov	dpl,@r0
      0049BF 08               [12] 5593 	inc	r0
      0049C0 86 83            [24] 5594 	mov	dph,@r0
      0049C2 08               [12] 5595 	inc	r0
      0049C3 86 F0            [24] 5596 	mov	b,@r0
      0049C5 12 70 DA         [24] 5597 	lcall	__gptrget
      0049C8 FD               [12] 5598 	mov	r5,a
      0049C9 A3               [24] 5599 	inc	dptr
      0049CA 12 70 DA         [24] 5600 	lcall	__gptrget
      0049CD FE               [12] 5601 	mov	r6,a
      0049CE A3               [24] 5602 	inc	dptr
      0049CF 12 70 DA         [24] 5603 	lcall	__gptrget
      0049D2 FF               [12] 5604 	mov	r7,a
      0049D3 C0 05            [24] 5605 	push	ar5
      0049D5 C0 04            [24] 5606 	push	ar4
      0049D7 C0 03            [24] 5607 	push	ar3
      0049D9 C0 02            [24] 5608 	push	ar2
      0049DB 8D 82            [24] 5609 	mov	dpl,r5
      0049DD 8E 83            [24] 5610 	mov	dph,r6
      0049DF 8F F0            [24] 5611 	mov	b,r7
      0049E1 12 27 83         [24] 5612 	lcall	_stack_pop
      0049E4 AE 82            [24] 5613 	mov	r6,dpl
      0049E6 AF 83            [24] 5614 	mov	r7,dph
      0049E8 15 81            [12] 5615 	dec	sp
      0049EA 15 81            [12] 5616 	dec	sp
      0049EC 15 81            [12] 5617 	dec	sp
      0049EE D0 05            [24] 5618 	pop	ar5
      0049F0 EE               [12] 5619 	mov	a,r6
      0049F1 4F               [12] 5620 	orl	a,r7
      0049F2 D0 07            [24] 5621 	pop	ar7
      0049F4 D0 06            [24] 5622 	pop	ar6
      0049F6 D0 05            [24] 5623 	pop	ar5
      0049F8 70 25            [24] 5624 	jnz	00200$
      0049FA 7F A9            [12] 5625 	mov	r7,#___str_10
      0049FC 7E 89            [12] 5626 	mov	r6,#(___str_10 >> 8)
      0049FE 7D 80            [12] 5627 	mov	r5,#0x80
                                   5628 ;	calc.c:58: return;
      004A00                       5629 00453$:
                                   5630 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004A00 8F 82            [24] 5631 	mov	dpl,r7
      004A02 8E 83            [24] 5632 	mov	dph,r6
      004A04 8D F0            [24] 5633 	mov	b,r5
      004A06 12 70 DA         [24] 5634 	lcall	__gptrget
      004A09 FC               [12] 5635 	mov	r4,a
      004A0A 70 03            [24] 5636 	jnz	01355$
      004A0C 02 57 13         [24] 5637 	ljmp	00249$
      004A0F                       5638 01355$:
      004A0F 7B 00            [12] 5639 	mov	r3,#0x00
      004A11 8C 82            [24] 5640 	mov	dpl,r4
      004A13 8B 83            [24] 5641 	mov	dph,r3
      004A15 12 2B 70         [24] 5642 	lcall	_putchar
      004A18 0F               [12] 5643 	inc	r7
                                   5644 ;	calc.c:268: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004A19 BF 00 E4         [24] 5645 	cjne	r7,#0x00,00453$
      004A1C 0E               [12] 5646 	inc	r6
      004A1D 80 E1            [24] 5647 	sjmp	00453$
      004A1F                       5648 00200$:
                                   5649 ;	calc.c:269: else if (!stack_pop(ctx->ps, &d1)) {
      004A1F C0 05            [24] 5650 	push	ar5
      004A21 C0 06            [24] 5651 	push	ar6
      004A23 C0 07            [24] 5652 	push	ar7
      004A25 E5 08            [12] 5653 	mov	a,_bp
      004A27 24 19            [12] 5654 	add	a,#0x19
      004A29 FC               [12] 5655 	mov	r4,a
      004A2A 7B 00            [12] 5656 	mov	r3,#0x00
      004A2C 7A 40            [12] 5657 	mov	r2,#0x40
      004A2E E5 08            [12] 5658 	mov	a,_bp
      004A30 24 0E            [12] 5659 	add	a,#0x0e
      004A32 F8               [12] 5660 	mov	r0,a
      004A33 86 82            [24] 5661 	mov	dpl,@r0
      004A35 08               [12] 5662 	inc	r0
      004A36 86 83            [24] 5663 	mov	dph,@r0
      004A38 08               [12] 5664 	inc	r0
      004A39 86 F0            [24] 5665 	mov	b,@r0
      004A3B 12 70 DA         [24] 5666 	lcall	__gptrget
      004A3E FD               [12] 5667 	mov	r5,a
      004A3F A3               [24] 5668 	inc	dptr
      004A40 12 70 DA         [24] 5669 	lcall	__gptrget
      004A43 FE               [12] 5670 	mov	r6,a
      004A44 A3               [24] 5671 	inc	dptr
      004A45 12 70 DA         [24] 5672 	lcall	__gptrget
      004A48 FF               [12] 5673 	mov	r7,a
      004A49 C0 05            [24] 5674 	push	ar5
      004A4B C0 04            [24] 5675 	push	ar4
      004A4D C0 03            [24] 5676 	push	ar3
      004A4F C0 02            [24] 5677 	push	ar2
      004A51 8D 82            [24] 5678 	mov	dpl,r5
      004A53 8E 83            [24] 5679 	mov	dph,r6
      004A55 8F F0            [24] 5680 	mov	b,r7
      004A57 12 27 83         [24] 5681 	lcall	_stack_pop
      004A5A AE 82            [24] 5682 	mov	r6,dpl
      004A5C AF 83            [24] 5683 	mov	r7,dph
      004A5E 15 81            [12] 5684 	dec	sp
      004A60 15 81            [12] 5685 	dec	sp
      004A62 15 81            [12] 5686 	dec	sp
      004A64 D0 05            [24] 5687 	pop	ar5
      004A66 EE               [12] 5688 	mov	a,r6
      004A67 4F               [12] 5689 	orl	a,r7
      004A68 D0 07            [24] 5690 	pop	ar7
      004A6A D0 06            [24] 5691 	pop	ar6
      004A6C D0 05            [24] 5692 	pop	ar5
      004A6E 70 63            [24] 5693 	jnz	00197$
                                   5694 ;	calc.c:270: (void)stack_push(ctx->ps, d0);
      004A70 E5 08            [12] 5695 	mov	a,_bp
      004A72 24 0E            [12] 5696 	add	a,#0x0e
      004A74 F8               [12] 5697 	mov	r0,a
      004A75 86 82            [24] 5698 	mov	dpl,@r0
      004A77 08               [12] 5699 	inc	r0
      004A78 86 83            [24] 5700 	mov	dph,@r0
      004A7A 08               [12] 5701 	inc	r0
      004A7B 86 F0            [24] 5702 	mov	b,@r0
      004A7D 12 70 DA         [24] 5703 	lcall	__gptrget
      004A80 FA               [12] 5704 	mov	r2,a
      004A81 A3               [24] 5705 	inc	dptr
      004A82 12 70 DA         [24] 5706 	lcall	__gptrget
      004A85 FB               [12] 5707 	mov	r3,a
      004A86 A3               [24] 5708 	inc	dptr
      004A87 12 70 DA         [24] 5709 	lcall	__gptrget
      004A8A FC               [12] 5710 	mov	r4,a
      004A8B E5 08            [12] 5711 	mov	a,_bp
      004A8D 24 15            [12] 5712 	add	a,#0x15
      004A8F F8               [12] 5713 	mov	r0,a
      004A90 E6               [12] 5714 	mov	a,@r0
      004A91 C0 E0            [24] 5715 	push	acc
      004A93 08               [12] 5716 	inc	r0
      004A94 E6               [12] 5717 	mov	a,@r0
      004A95 C0 E0            [24] 5718 	push	acc
      004A97 08               [12] 5719 	inc	r0
      004A98 E6               [12] 5720 	mov	a,@r0
      004A99 C0 E0            [24] 5721 	push	acc
      004A9B 08               [12] 5722 	inc	r0
      004A9C E6               [12] 5723 	mov	a,@r0
      004A9D C0 E0            [24] 5724 	push	acc
      004A9F 8A 82            [24] 5725 	mov	dpl,r2
      004AA1 8B 83            [24] 5726 	mov	dph,r3
      004AA3 8C F0            [24] 5727 	mov	b,r4
      004AA5 12 26 B5         [24] 5728 	lcall	_stack_push
      004AA8 E5 81            [12] 5729 	mov	a,sp
      004AAA 24 FC            [12] 5730 	add	a,#0xfc
      004AAC F5 81            [12] 5731 	mov	sp,a
                                   5732 ;	calc.c:271: printstr("\r\nstack underflow\r\n");
      004AAE 7F A9            [12] 5733 	mov	r7,#___str_10
      004AB0 7E 89            [12] 5734 	mov	r6,#(___str_10 >> 8)
      004AB2 7D 80            [12] 5735 	mov	r5,#0x80
                                   5736 ;	calc.c:58: return;
      004AB4                       5737 00456$:
                                   5738 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004AB4 8F 82            [24] 5739 	mov	dpl,r7
      004AB6 8E 83            [24] 5740 	mov	dph,r6
      004AB8 8D F0            [24] 5741 	mov	b,r5
      004ABA 12 70 DA         [24] 5742 	lcall	__gptrget
      004ABD FC               [12] 5743 	mov	r4,a
      004ABE 70 03            [24] 5744 	jnz	01358$
      004AC0 02 57 13         [24] 5745 	ljmp	00249$
      004AC3                       5746 01358$:
      004AC3 7B 00            [12] 5747 	mov	r3,#0x00
      004AC5 8C 82            [24] 5748 	mov	dpl,r4
      004AC7 8B 83            [24] 5749 	mov	dph,r3
      004AC9 12 2B 70         [24] 5750 	lcall	_putchar
      004ACC 0F               [12] 5751 	inc	r7
                                   5752 ;	calc.c:271: printstr("\r\nstack underflow\r\n");
      004ACD BF 00 E4         [24] 5753 	cjne	r7,#0x00,00456$
      004AD0 0E               [12] 5754 	inc	r6
      004AD1 80 E1            [24] 5755 	sjmp	00456$
      004AD3                       5756 00197$:
                                   5757 ;	calc.c:272: } else if (!d0) {
      004AD3 E5 08            [12] 5758 	mov	a,_bp
      004AD5 24 15            [12] 5759 	add	a,#0x15
      004AD7 F8               [12] 5760 	mov	r0,a
      004AD8 E6               [12] 5761 	mov	a,@r0
      004AD9 08               [12] 5762 	inc	r0
      004ADA 46               [12] 5763 	orl	a,@r0
      004ADB 08               [12] 5764 	inc	r0
      004ADC 46               [12] 5765 	orl	a,@r0
      004ADD 08               [12] 5766 	inc	r0
      004ADE 46               [12] 5767 	orl	a,@r0
      004ADF 60 03            [24] 5768 	jz	01360$
      004AE1 02 4B 85         [24] 5769 	ljmp	00194$
      004AE4                       5770 01360$:
                                   5771 ;	calc.c:273: (void)stack_push(ctx->ps, d1);
      004AE4 E5 08            [12] 5772 	mov	a,_bp
      004AE6 24 0E            [12] 5773 	add	a,#0x0e
      004AE8 F8               [12] 5774 	mov	r0,a
      004AE9 86 82            [24] 5775 	mov	dpl,@r0
      004AEB 08               [12] 5776 	inc	r0
      004AEC 86 83            [24] 5777 	mov	dph,@r0
      004AEE 08               [12] 5778 	inc	r0
      004AEF 86 F0            [24] 5779 	mov	b,@r0
      004AF1 12 70 DA         [24] 5780 	lcall	__gptrget
      004AF4 FA               [12] 5781 	mov	r2,a
      004AF5 A3               [24] 5782 	inc	dptr
      004AF6 12 70 DA         [24] 5783 	lcall	__gptrget
      004AF9 FB               [12] 5784 	mov	r3,a
      004AFA A3               [24] 5785 	inc	dptr
      004AFB 12 70 DA         [24] 5786 	lcall	__gptrget
      004AFE FC               [12] 5787 	mov	r4,a
      004AFF E5 08            [12] 5788 	mov	a,_bp
      004B01 24 19            [12] 5789 	add	a,#0x19
      004B03 F8               [12] 5790 	mov	r0,a
      004B04 E6               [12] 5791 	mov	a,@r0
      004B05 C0 E0            [24] 5792 	push	acc
      004B07 08               [12] 5793 	inc	r0
      004B08 E6               [12] 5794 	mov	a,@r0
      004B09 C0 E0            [24] 5795 	push	acc
      004B0B 08               [12] 5796 	inc	r0
      004B0C E6               [12] 5797 	mov	a,@r0
      004B0D C0 E0            [24] 5798 	push	acc
      004B0F 08               [12] 5799 	inc	r0
      004B10 E6               [12] 5800 	mov	a,@r0
      004B11 C0 E0            [24] 5801 	push	acc
      004B13 8A 82            [24] 5802 	mov	dpl,r2
      004B15 8B 83            [24] 5803 	mov	dph,r3
      004B17 8C F0            [24] 5804 	mov	b,r4
      004B19 12 26 B5         [24] 5805 	lcall	_stack_push
      004B1C E5 81            [12] 5806 	mov	a,sp
      004B1E 24 FC            [12] 5807 	add	a,#0xfc
      004B20 F5 81            [12] 5808 	mov	sp,a
                                   5809 ;	calc.c:274: (void)stack_push(ctx->ps, d0);			
      004B22 E5 08            [12] 5810 	mov	a,_bp
      004B24 24 0E            [12] 5811 	add	a,#0x0e
      004B26 F8               [12] 5812 	mov	r0,a
      004B27 86 82            [24] 5813 	mov	dpl,@r0
      004B29 08               [12] 5814 	inc	r0
      004B2A 86 83            [24] 5815 	mov	dph,@r0
      004B2C 08               [12] 5816 	inc	r0
      004B2D 86 F0            [24] 5817 	mov	b,@r0
      004B2F 12 70 DA         [24] 5818 	lcall	__gptrget
      004B32 FA               [12] 5819 	mov	r2,a
      004B33 A3               [24] 5820 	inc	dptr
      004B34 12 70 DA         [24] 5821 	lcall	__gptrget
      004B37 FB               [12] 5822 	mov	r3,a
      004B38 A3               [24] 5823 	inc	dptr
      004B39 12 70 DA         [24] 5824 	lcall	__gptrget
      004B3C FC               [12] 5825 	mov	r4,a
      004B3D E5 08            [12] 5826 	mov	a,_bp
      004B3F 24 15            [12] 5827 	add	a,#0x15
      004B41 F8               [12] 5828 	mov	r0,a
      004B42 E6               [12] 5829 	mov	a,@r0
      004B43 C0 E0            [24] 5830 	push	acc
      004B45 08               [12] 5831 	inc	r0
      004B46 E6               [12] 5832 	mov	a,@r0
      004B47 C0 E0            [24] 5833 	push	acc
      004B49 08               [12] 5834 	inc	r0
      004B4A E6               [12] 5835 	mov	a,@r0
      004B4B C0 E0            [24] 5836 	push	acc
      004B4D 08               [12] 5837 	inc	r0
      004B4E E6               [12] 5838 	mov	a,@r0
      004B4F C0 E0            [24] 5839 	push	acc
      004B51 8A 82            [24] 5840 	mov	dpl,r2
      004B53 8B 83            [24] 5841 	mov	dph,r3
      004B55 8C F0            [24] 5842 	mov	b,r4
      004B57 12 26 B5         [24] 5843 	lcall	_stack_push
      004B5A E5 81            [12] 5844 	mov	a,sp
      004B5C 24 FC            [12] 5845 	add	a,#0xfc
      004B5E F5 81            [12] 5846 	mov	sp,a
                                   5847 ;	calc.c:275: printstr("\r\ndivision by zero\r\n");
      004B60 7F 0B            [12] 5848 	mov	r7,#___str_14
      004B62 7E 8A            [12] 5849 	mov	r6,#(___str_14 >> 8)
      004B64 7D 80            [12] 5850 	mov	r5,#0x80
                                   5851 ;	calc.c:58: return;
      004B66                       5852 00459$:
                                   5853 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004B66 8F 82            [24] 5854 	mov	dpl,r7
      004B68 8E 83            [24] 5855 	mov	dph,r6
      004B6A 8D F0            [24] 5856 	mov	b,r5
      004B6C 12 70 DA         [24] 5857 	lcall	__gptrget
      004B6F FC               [12] 5858 	mov	r4,a
      004B70 70 03            [24] 5859 	jnz	01361$
      004B72 02 57 13         [24] 5860 	ljmp	00249$
      004B75                       5861 01361$:
      004B75 7B 00            [12] 5862 	mov	r3,#0x00
      004B77 8C 82            [24] 5863 	mov	dpl,r4
      004B79 8B 83            [24] 5864 	mov	dph,r3
      004B7B 12 2B 70         [24] 5865 	lcall	_putchar
      004B7E 0F               [12] 5866 	inc	r7
                                   5867 ;	calc.c:275: printstr("\r\ndivision by zero\r\n");
      004B7F BF 00 E4         [24] 5868 	cjne	r7,#0x00,00459$
      004B82 0E               [12] 5869 	inc	r6
      004B83 80 E1            [24] 5870 	sjmp	00459$
      004B85                       5871 00194$:
                                   5872 ;	calc.c:277: if (ctx->digit[0] == '%') d1 %= d0;
      004B85 8D 82            [24] 5873 	mov	dpl,r5
      004B87 8E 83            [24] 5874 	mov	dph,r6
      004B89 8F F0            [24] 5875 	mov	b,r7
      004B8B 12 70 DA         [24] 5876 	lcall	__gptrget
      004B8E FD               [12] 5877 	mov	r5,a
      004B8F BD 25 45         [24] 5878 	cjne	r5,#0x25,00191$
      004B92 E5 08            [12] 5879 	mov	a,_bp
      004B94 24 15            [12] 5880 	add	a,#0x15
      004B96 F8               [12] 5881 	mov	r0,a
      004B97 E6               [12] 5882 	mov	a,@r0
      004B98 C0 E0            [24] 5883 	push	acc
      004B9A 08               [12] 5884 	inc	r0
      004B9B E6               [12] 5885 	mov	a,@r0
      004B9C C0 E0            [24] 5886 	push	acc
      004B9E 08               [12] 5887 	inc	r0
      004B9F E6               [12] 5888 	mov	a,@r0
      004BA0 C0 E0            [24] 5889 	push	acc
      004BA2 08               [12] 5890 	inc	r0
      004BA3 E6               [12] 5891 	mov	a,@r0
      004BA4 C0 E0            [24] 5892 	push	acc
      004BA6 E5 08            [12] 5893 	mov	a,_bp
      004BA8 24 19            [12] 5894 	add	a,#0x19
      004BAA F8               [12] 5895 	mov	r0,a
      004BAB 86 82            [24] 5896 	mov	dpl,@r0
      004BAD 08               [12] 5897 	inc	r0
      004BAE 86 83            [24] 5898 	mov	dph,@r0
      004BB0 08               [12] 5899 	inc	r0
      004BB1 86 F0            [24] 5900 	mov	b,@r0
      004BB3 08               [12] 5901 	inc	r0
      004BB4 E6               [12] 5902 	mov	a,@r0
      004BB5 12 6D 18         [24] 5903 	lcall	__modslong
      004BB8 AC 82            [24] 5904 	mov	r4,dpl
      004BBA AD 83            [24] 5905 	mov	r5,dph
      004BBC AE F0            [24] 5906 	mov	r6,b
      004BBE FF               [12] 5907 	mov	r7,a
      004BBF E5 81            [12] 5908 	mov	a,sp
      004BC1 24 FC            [12] 5909 	add	a,#0xfc
      004BC3 F5 81            [12] 5910 	mov	sp,a
      004BC5 E5 08            [12] 5911 	mov	a,_bp
      004BC7 24 19            [12] 5912 	add	a,#0x19
      004BC9 F8               [12] 5913 	mov	r0,a
      004BCA A6 04            [24] 5914 	mov	@r0,ar4
      004BCC 08               [12] 5915 	inc	r0
      004BCD A6 05            [24] 5916 	mov	@r0,ar5
      004BCF 08               [12] 5917 	inc	r0
      004BD0 A6 06            [24] 5918 	mov	@r0,ar6
      004BD2 08               [12] 5919 	inc	r0
      004BD3 A6 07            [24] 5920 	mov	@r0,ar7
      004BD5 80 5F            [24] 5921 	sjmp	00192$
      004BD7                       5922 00191$:
                                   5923 ;	calc.c:278: else d1 = (unsigned long)d1 % (unsigned long)d0;
      004BD7 E5 08            [12] 5924 	mov	a,_bp
      004BD9 24 19            [12] 5925 	add	a,#0x19
      004BDB F8               [12] 5926 	mov	r0,a
      004BDC E5 08            [12] 5927 	mov	a,_bp
      004BDE 24 07            [12] 5928 	add	a,#0x07
      004BE0 F9               [12] 5929 	mov	r1,a
      004BE1 E6               [12] 5930 	mov	a,@r0
      004BE2 F7               [12] 5931 	mov	@r1,a
      004BE3 08               [12] 5932 	inc	r0
      004BE4 09               [12] 5933 	inc	r1
      004BE5 E6               [12] 5934 	mov	a,@r0
      004BE6 F7               [12] 5935 	mov	@r1,a
      004BE7 08               [12] 5936 	inc	r0
      004BE8 09               [12] 5937 	inc	r1
      004BE9 E6               [12] 5938 	mov	a,@r0
      004BEA F7               [12] 5939 	mov	@r1,a
      004BEB 08               [12] 5940 	inc	r0
      004BEC 09               [12] 5941 	inc	r1
      004BED E6               [12] 5942 	mov	a,@r0
      004BEE F7               [12] 5943 	mov	@r1,a
      004BEF E5 08            [12] 5944 	mov	a,_bp
      004BF1 24 15            [12] 5945 	add	a,#0x15
      004BF3 F8               [12] 5946 	mov	r0,a
      004BF4 86 02            [24] 5947 	mov	ar2,@r0
      004BF6 08               [12] 5948 	inc	r0
      004BF7 86 03            [24] 5949 	mov	ar3,@r0
      004BF9 08               [12] 5950 	inc	r0
      004BFA 86 06            [24] 5951 	mov	ar6,@r0
      004BFC 08               [12] 5952 	inc	r0
      004BFD 86 07            [24] 5953 	mov	ar7,@r0
      004BFF C0 02            [24] 5954 	push	ar2
      004C01 C0 03            [24] 5955 	push	ar3
      004C03 C0 06            [24] 5956 	push	ar6
      004C05 C0 07            [24] 5957 	push	ar7
      004C07 E5 08            [12] 5958 	mov	a,_bp
      004C09 24 07            [12] 5959 	add	a,#0x07
      004C0B F8               [12] 5960 	mov	r0,a
      004C0C 86 82            [24] 5961 	mov	dpl,@r0
      004C0E 08               [12] 5962 	inc	r0
      004C0F 86 83            [24] 5963 	mov	dph,@r0
      004C11 08               [12] 5964 	inc	r0
      004C12 86 F0            [24] 5965 	mov	b,@r0
      004C14 08               [12] 5966 	inc	r0
      004C15 E6               [12] 5967 	mov	a,@r0
      004C16 12 6E 0F         [24] 5968 	lcall	__modulong
      004C19 AC 82            [24] 5969 	mov	r4,dpl
      004C1B AD 83            [24] 5970 	mov	r5,dph
      004C1D AE F0            [24] 5971 	mov	r6,b
      004C1F FF               [12] 5972 	mov	r7,a
      004C20 E5 81            [12] 5973 	mov	a,sp
      004C22 24 FC            [12] 5974 	add	a,#0xfc
      004C24 F5 81            [12] 5975 	mov	sp,a
      004C26 E5 08            [12] 5976 	mov	a,_bp
      004C28 24 19            [12] 5977 	add	a,#0x19
      004C2A F8               [12] 5978 	mov	r0,a
      004C2B A6 04            [24] 5979 	mov	@r0,ar4
      004C2D 08               [12] 5980 	inc	r0
      004C2E A6 05            [24] 5981 	mov	@r0,ar5
      004C30 08               [12] 5982 	inc	r0
      004C31 A6 06            [24] 5983 	mov	@r0,ar6
      004C33 08               [12] 5984 	inc	r0
      004C34 A6 07            [24] 5985 	mov	@r0,ar7
      004C36                       5986 00192$:
                                   5987 ;	calc.c:279: (void)stack_push(ctx->ps, d1);
      004C36 E5 08            [12] 5988 	mov	a,_bp
      004C38 24 0E            [12] 5989 	add	a,#0x0e
      004C3A F8               [12] 5990 	mov	r0,a
      004C3B 86 82            [24] 5991 	mov	dpl,@r0
      004C3D 08               [12] 5992 	inc	r0
      004C3E 86 83            [24] 5993 	mov	dph,@r0
      004C40 08               [12] 5994 	inc	r0
      004C41 86 F0            [24] 5995 	mov	b,@r0
      004C43 12 70 DA         [24] 5996 	lcall	__gptrget
      004C46 FD               [12] 5997 	mov	r5,a
      004C47 A3               [24] 5998 	inc	dptr
      004C48 12 70 DA         [24] 5999 	lcall	__gptrget
      004C4B FE               [12] 6000 	mov	r6,a
      004C4C A3               [24] 6001 	inc	dptr
      004C4D 12 70 DA         [24] 6002 	lcall	__gptrget
      004C50 FF               [12] 6003 	mov	r7,a
      004C51 E5 08            [12] 6004 	mov	a,_bp
      004C53 24 19            [12] 6005 	add	a,#0x19
      004C55 F8               [12] 6006 	mov	r0,a
      004C56 E6               [12] 6007 	mov	a,@r0
      004C57 C0 E0            [24] 6008 	push	acc
      004C59 08               [12] 6009 	inc	r0
      004C5A E6               [12] 6010 	mov	a,@r0
      004C5B C0 E0            [24] 6011 	push	acc
      004C5D 08               [12] 6012 	inc	r0
      004C5E E6               [12] 6013 	mov	a,@r0
      004C5F C0 E0            [24] 6014 	push	acc
      004C61 08               [12] 6015 	inc	r0
      004C62 E6               [12] 6016 	mov	a,@r0
      004C63 C0 E0            [24] 6017 	push	acc
      004C65 8D 82            [24] 6018 	mov	dpl,r5
      004C67 8E 83            [24] 6019 	mov	dph,r6
      004C69 8F F0            [24] 6020 	mov	b,r7
      004C6B 12 26 B5         [24] 6021 	lcall	_stack_push
      004C6E E5 81            [12] 6022 	mov	a,sp
      004C70 24 FC            [12] 6023 	add	a,#0xfc
      004C72 F5 81            [12] 6024 	mov	sp,a
                                   6025 ;	calc.c:281: break;
      004C74 02 57 13         [24] 6026 	ljmp	00249$
                                   6027 ;	calc.c:282: case '&':
      004C77                       6028 00202$:
                                   6029 ;	calc.c:283: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004C77 E5 08            [12] 6030 	mov	a,_bp
      004C79 24 15            [12] 6031 	add	a,#0x15
      004C7B FF               [12] 6032 	mov	r7,a
      004C7C E5 08            [12] 6033 	mov	a,_bp
      004C7E 24 0E            [12] 6034 	add	a,#0x0e
      004C80 F8               [12] 6035 	mov	r0,a
      004C81 A6 07            [24] 6036 	mov	@r0,ar7
      004C83 08               [12] 6037 	inc	r0
      004C84 76 00            [12] 6038 	mov	@r0,#0x00
      004C86 08               [12] 6039 	inc	r0
      004C87 76 40            [12] 6040 	mov	@r0,#0x40
      004C89 E5 08            [12] 6041 	mov	a,_bp
      004C8B 24 12            [12] 6042 	add	a,#0x12
      004C8D F8               [12] 6043 	mov	r0,a
      004C8E 74 11            [12] 6044 	mov	a,#0x11
      004C90 26               [12] 6045 	add	a,@r0
      004C91 FA               [12] 6046 	mov	r2,a
      004C92 74 40            [12] 6047 	mov	a,#0x40
      004C94 08               [12] 6048 	inc	r0
      004C95 36               [12] 6049 	addc	a,@r0
      004C96 FB               [12] 6050 	mov	r3,a
      004C97 08               [12] 6051 	inc	r0
      004C98 86 04            [24] 6052 	mov	ar4,@r0
      004C9A 8A 82            [24] 6053 	mov	dpl,r2
      004C9C 8B 83            [24] 6054 	mov	dph,r3
      004C9E 8C F0            [24] 6055 	mov	b,r4
      004CA0 12 70 DA         [24] 6056 	lcall	__gptrget
      004CA3 FD               [12] 6057 	mov	r5,a
      004CA4 A3               [24] 6058 	inc	dptr
      004CA5 12 70 DA         [24] 6059 	lcall	__gptrget
      004CA8 FE               [12] 6060 	mov	r6,a
      004CA9 A3               [24] 6061 	inc	dptr
      004CAA 12 70 DA         [24] 6062 	lcall	__gptrget
      004CAD FF               [12] 6063 	mov	r7,a
      004CAE C0 04            [24] 6064 	push	ar4
      004CB0 C0 03            [24] 6065 	push	ar3
      004CB2 C0 02            [24] 6066 	push	ar2
      004CB4 E5 08            [12] 6067 	mov	a,_bp
      004CB6 24 0E            [12] 6068 	add	a,#0x0e
      004CB8 F8               [12] 6069 	mov	r0,a
      004CB9 E6               [12] 6070 	mov	a,@r0
      004CBA C0 E0            [24] 6071 	push	acc
      004CBC 08               [12] 6072 	inc	r0
      004CBD E6               [12] 6073 	mov	a,@r0
      004CBE C0 E0            [24] 6074 	push	acc
      004CC0 08               [12] 6075 	inc	r0
      004CC1 E6               [12] 6076 	mov	a,@r0
      004CC2 C0 E0            [24] 6077 	push	acc
      004CC4 8D 82            [24] 6078 	mov	dpl,r5
      004CC6 8E 83            [24] 6079 	mov	dph,r6
      004CC8 8F F0            [24] 6080 	mov	b,r7
      004CCA 12 27 83         [24] 6081 	lcall	_stack_pop
      004CCD AE 82            [24] 6082 	mov	r6,dpl
      004CCF AF 83            [24] 6083 	mov	r7,dph
      004CD1 15 81            [12] 6084 	dec	sp
      004CD3 15 81            [12] 6085 	dec	sp
      004CD5 15 81            [12] 6086 	dec	sp
      004CD7 D0 02            [24] 6087 	pop	ar2
      004CD9 D0 03            [24] 6088 	pop	ar3
      004CDB D0 04            [24] 6089 	pop	ar4
      004CDD EE               [12] 6090 	mov	a,r6
      004CDE 4F               [12] 6091 	orl	a,r7
      004CDF 70 25            [24] 6092 	jnz	00207$
      004CE1 7D A9            [12] 6093 	mov	r5,#___str_10
      004CE3 7C 89            [12] 6094 	mov	r4,#(___str_10 >> 8)
      004CE5 7B 80            [12] 6095 	mov	r3,#0x80
                                   6096 ;	calc.c:58: return;
      004CE7                       6097 00462$:
                                   6098 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004CE7 8D 82            [24] 6099 	mov	dpl,r5
      004CE9 8C 83            [24] 6100 	mov	dph,r4
      004CEB 8B F0            [24] 6101 	mov	b,r3
      004CED 12 70 DA         [24] 6102 	lcall	__gptrget
      004CF0 FF               [12] 6103 	mov	r7,a
      004CF1 70 03            [24] 6104 	jnz	01366$
      004CF3 02 57 13         [24] 6105 	ljmp	00249$
      004CF6                       6106 01366$:
      004CF6 7E 00            [12] 6107 	mov	r6,#0x00
      004CF8 8F 82            [24] 6108 	mov	dpl,r7
      004CFA 8E 83            [24] 6109 	mov	dph,r6
      004CFC 12 2B 70         [24] 6110 	lcall	_putchar
      004CFF 0D               [12] 6111 	inc	r5
                                   6112 ;	calc.c:283: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004D00 BD 00 E4         [24] 6113 	cjne	r5,#0x00,00462$
      004D03 0C               [12] 6114 	inc	r4
      004D04 80 E1            [24] 6115 	sjmp	00462$
      004D06                       6116 00207$:
                                   6117 ;	calc.c:284: else if (!stack_pop(ctx->ps, &d1)) {
      004D06 E5 08            [12] 6118 	mov	a,_bp
      004D08 24 19            [12] 6119 	add	a,#0x19
      004D0A FF               [12] 6120 	mov	r7,a
      004D0B E5 08            [12] 6121 	mov	a,_bp
      004D0D 24 0E            [12] 6122 	add	a,#0x0e
      004D0F F8               [12] 6123 	mov	r0,a
      004D10 A6 07            [24] 6124 	mov	@r0,ar7
      004D12 08               [12] 6125 	inc	r0
      004D13 76 00            [12] 6126 	mov	@r0,#0x00
      004D15 08               [12] 6127 	inc	r0
      004D16 76 40            [12] 6128 	mov	@r0,#0x40
      004D18 8A 82            [24] 6129 	mov	dpl,r2
      004D1A 8B 83            [24] 6130 	mov	dph,r3
      004D1C 8C F0            [24] 6131 	mov	b,r4
      004D1E 12 70 DA         [24] 6132 	lcall	__gptrget
      004D21 FD               [12] 6133 	mov	r5,a
      004D22 A3               [24] 6134 	inc	dptr
      004D23 12 70 DA         [24] 6135 	lcall	__gptrget
      004D26 FE               [12] 6136 	mov	r6,a
      004D27 A3               [24] 6137 	inc	dptr
      004D28 12 70 DA         [24] 6138 	lcall	__gptrget
      004D2B FF               [12] 6139 	mov	r7,a
      004D2C C0 04            [24] 6140 	push	ar4
      004D2E C0 03            [24] 6141 	push	ar3
      004D30 C0 02            [24] 6142 	push	ar2
      004D32 E5 08            [12] 6143 	mov	a,_bp
      004D34 24 0E            [12] 6144 	add	a,#0x0e
      004D36 F8               [12] 6145 	mov	r0,a
      004D37 E6               [12] 6146 	mov	a,@r0
      004D38 C0 E0            [24] 6147 	push	acc
      004D3A 08               [12] 6148 	inc	r0
      004D3B E6               [12] 6149 	mov	a,@r0
      004D3C C0 E0            [24] 6150 	push	acc
      004D3E 08               [12] 6151 	inc	r0
      004D3F E6               [12] 6152 	mov	a,@r0
      004D40 C0 E0            [24] 6153 	push	acc
      004D42 8D 82            [24] 6154 	mov	dpl,r5
      004D44 8E 83            [24] 6155 	mov	dph,r6
      004D46 8F F0            [24] 6156 	mov	b,r7
      004D48 12 27 83         [24] 6157 	lcall	_stack_pop
      004D4B AE 82            [24] 6158 	mov	r6,dpl
      004D4D AF 83            [24] 6159 	mov	r7,dph
      004D4F 15 81            [12] 6160 	dec	sp
      004D51 15 81            [12] 6161 	dec	sp
      004D53 15 81            [12] 6162 	dec	sp
      004D55 D0 02            [24] 6163 	pop	ar2
      004D57 D0 03            [24] 6164 	pop	ar3
      004D59 D0 04            [24] 6165 	pop	ar4
      004D5B EE               [12] 6166 	mov	a,r6
      004D5C 4F               [12] 6167 	orl	a,r7
      004D5D 70 5C            [24] 6168 	jnz	00204$
                                   6169 ;	calc.c:285: (void)stack_push(ctx->ps, d0);
      004D5F 8A 82            [24] 6170 	mov	dpl,r2
      004D61 8B 83            [24] 6171 	mov	dph,r3
      004D63 8C F0            [24] 6172 	mov	b,r4
      004D65 12 70 DA         [24] 6173 	lcall	__gptrget
      004D68 FD               [12] 6174 	mov	r5,a
      004D69 A3               [24] 6175 	inc	dptr
      004D6A 12 70 DA         [24] 6176 	lcall	__gptrget
      004D6D FE               [12] 6177 	mov	r6,a
      004D6E A3               [24] 6178 	inc	dptr
      004D6F 12 70 DA         [24] 6179 	lcall	__gptrget
      004D72 FF               [12] 6180 	mov	r7,a
      004D73 E5 08            [12] 6181 	mov	a,_bp
      004D75 24 15            [12] 6182 	add	a,#0x15
      004D77 F8               [12] 6183 	mov	r0,a
      004D78 E6               [12] 6184 	mov	a,@r0
      004D79 C0 E0            [24] 6185 	push	acc
      004D7B 08               [12] 6186 	inc	r0
      004D7C E6               [12] 6187 	mov	a,@r0
      004D7D C0 E0            [24] 6188 	push	acc
      004D7F 08               [12] 6189 	inc	r0
      004D80 E6               [12] 6190 	mov	a,@r0
      004D81 C0 E0            [24] 6191 	push	acc
      004D83 08               [12] 6192 	inc	r0
      004D84 E6               [12] 6193 	mov	a,@r0
      004D85 C0 E0            [24] 6194 	push	acc
      004D87 8D 82            [24] 6195 	mov	dpl,r5
      004D89 8E 83            [24] 6196 	mov	dph,r6
      004D8B 8F F0            [24] 6197 	mov	b,r7
      004D8D 12 26 B5         [24] 6198 	lcall	_stack_push
      004D90 E5 81            [12] 6199 	mov	a,sp
      004D92 24 FC            [12] 6200 	add	a,#0xfc
      004D94 F5 81            [12] 6201 	mov	sp,a
                                   6202 ;	calc.c:286: printstr("\r\nstack underflow\r\n");
      004D96 7D A9            [12] 6203 	mov	r5,#___str_10
      004D98 7C 89            [12] 6204 	mov	r4,#(___str_10 >> 8)
      004D9A 7B 80            [12] 6205 	mov	r3,#0x80
                                   6206 ;	calc.c:58: return;
      004D9C                       6207 00465$:
                                   6208 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004D9C 8D 82            [24] 6209 	mov	dpl,r5
      004D9E 8C 83            [24] 6210 	mov	dph,r4
      004DA0 8B F0            [24] 6211 	mov	b,r3
      004DA2 12 70 DA         [24] 6212 	lcall	__gptrget
      004DA5 FF               [12] 6213 	mov	r7,a
      004DA6 70 03            [24] 6214 	jnz	01369$
      004DA8 02 57 13         [24] 6215 	ljmp	00249$
      004DAB                       6216 01369$:
      004DAB 7E 00            [12] 6217 	mov	r6,#0x00
      004DAD 8F 82            [24] 6218 	mov	dpl,r7
      004DAF 8E 83            [24] 6219 	mov	dph,r6
      004DB1 12 2B 70         [24] 6220 	lcall	_putchar
      004DB4 0D               [12] 6221 	inc	r5
                                   6222 ;	calc.c:286: printstr("\r\nstack underflow\r\n");
      004DB5 BD 00 E4         [24] 6223 	cjne	r5,#0x00,00465$
      004DB8 0C               [12] 6224 	inc	r4
      004DB9 80 E1            [24] 6225 	sjmp	00465$
      004DBB                       6226 00204$:
                                   6227 ;	calc.c:288: d1 &= d0;
      004DBB E5 08            [12] 6228 	mov	a,_bp
      004DBD 24 19            [12] 6229 	add	a,#0x19
      004DBF F8               [12] 6230 	mov	r0,a
      004DC0 E5 08            [12] 6231 	mov	a,_bp
      004DC2 24 15            [12] 6232 	add	a,#0x15
      004DC4 F9               [12] 6233 	mov	r1,a
      004DC5 E7               [12] 6234 	mov	a,@r1
      004DC6 56               [12] 6235 	anl	a,@r0
      004DC7 F6               [12] 6236 	mov	@r0,a
      004DC8 09               [12] 6237 	inc	r1
      004DC9 E7               [12] 6238 	mov	a,@r1
      004DCA 08               [12] 6239 	inc	r0
      004DCB 56               [12] 6240 	anl	a,@r0
      004DCC F6               [12] 6241 	mov	@r0,a
      004DCD 09               [12] 6242 	inc	r1
      004DCE E7               [12] 6243 	mov	a,@r1
      004DCF 08               [12] 6244 	inc	r0
      004DD0 56               [12] 6245 	anl	a,@r0
      004DD1 F6               [12] 6246 	mov	@r0,a
      004DD2 09               [12] 6247 	inc	r1
      004DD3 E7               [12] 6248 	mov	a,@r1
      004DD4 08               [12] 6249 	inc	r0
      004DD5 56               [12] 6250 	anl	a,@r0
      004DD6 F6               [12] 6251 	mov	@r0,a
                                   6252 ;	calc.c:289: (void)stack_push(ctx->ps, d1);
      004DD7 8A 82            [24] 6253 	mov	dpl,r2
      004DD9 8B 83            [24] 6254 	mov	dph,r3
      004DDB 8C F0            [24] 6255 	mov	b,r4
      004DDD 12 70 DA         [24] 6256 	lcall	__gptrget
      004DE0 FA               [12] 6257 	mov	r2,a
      004DE1 A3               [24] 6258 	inc	dptr
      004DE2 12 70 DA         [24] 6259 	lcall	__gptrget
      004DE5 FB               [12] 6260 	mov	r3,a
      004DE6 A3               [24] 6261 	inc	dptr
      004DE7 12 70 DA         [24] 6262 	lcall	__gptrget
      004DEA FC               [12] 6263 	mov	r4,a
      004DEB E5 08            [12] 6264 	mov	a,_bp
      004DED 24 19            [12] 6265 	add	a,#0x19
      004DEF F8               [12] 6266 	mov	r0,a
      004DF0 E6               [12] 6267 	mov	a,@r0
      004DF1 C0 E0            [24] 6268 	push	acc
      004DF3 08               [12] 6269 	inc	r0
      004DF4 E6               [12] 6270 	mov	a,@r0
      004DF5 C0 E0            [24] 6271 	push	acc
      004DF7 08               [12] 6272 	inc	r0
      004DF8 E6               [12] 6273 	mov	a,@r0
      004DF9 C0 E0            [24] 6274 	push	acc
      004DFB 08               [12] 6275 	inc	r0
      004DFC E6               [12] 6276 	mov	a,@r0
      004DFD C0 E0            [24] 6277 	push	acc
      004DFF 8A 82            [24] 6278 	mov	dpl,r2
      004E01 8B 83            [24] 6279 	mov	dph,r3
      004E03 8C F0            [24] 6280 	mov	b,r4
      004E05 12 26 B5         [24] 6281 	lcall	_stack_push
      004E08 E5 81            [12] 6282 	mov	a,sp
      004E0A 24 FC            [12] 6283 	add	a,#0xfc
      004E0C F5 81            [12] 6284 	mov	sp,a
                                   6285 ;	calc.c:291: break;
      004E0E 02 57 13         [24] 6286 	ljmp	00249$
                                   6287 ;	calc.c:292: case '|':
      004E11                       6288 00209$:
                                   6289 ;	calc.c:293: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004E11 E5 08            [12] 6290 	mov	a,_bp
      004E13 24 15            [12] 6291 	add	a,#0x15
      004E15 FF               [12] 6292 	mov	r7,a
      004E16 E5 08            [12] 6293 	mov	a,_bp
      004E18 24 0E            [12] 6294 	add	a,#0x0e
      004E1A F8               [12] 6295 	mov	r0,a
      004E1B A6 07            [24] 6296 	mov	@r0,ar7
      004E1D 08               [12] 6297 	inc	r0
      004E1E 76 00            [12] 6298 	mov	@r0,#0x00
      004E20 08               [12] 6299 	inc	r0
      004E21 76 40            [12] 6300 	mov	@r0,#0x40
      004E23 E5 08            [12] 6301 	mov	a,_bp
      004E25 24 12            [12] 6302 	add	a,#0x12
      004E27 F8               [12] 6303 	mov	r0,a
      004E28 74 11            [12] 6304 	mov	a,#0x11
      004E2A 26               [12] 6305 	add	a,@r0
      004E2B FA               [12] 6306 	mov	r2,a
      004E2C 74 40            [12] 6307 	mov	a,#0x40
      004E2E 08               [12] 6308 	inc	r0
      004E2F 36               [12] 6309 	addc	a,@r0
      004E30 FB               [12] 6310 	mov	r3,a
      004E31 08               [12] 6311 	inc	r0
      004E32 86 04            [24] 6312 	mov	ar4,@r0
      004E34 8A 82            [24] 6313 	mov	dpl,r2
      004E36 8B 83            [24] 6314 	mov	dph,r3
      004E38 8C F0            [24] 6315 	mov	b,r4
      004E3A 12 70 DA         [24] 6316 	lcall	__gptrget
      004E3D FD               [12] 6317 	mov	r5,a
      004E3E A3               [24] 6318 	inc	dptr
      004E3F 12 70 DA         [24] 6319 	lcall	__gptrget
      004E42 FE               [12] 6320 	mov	r6,a
      004E43 A3               [24] 6321 	inc	dptr
      004E44 12 70 DA         [24] 6322 	lcall	__gptrget
      004E47 FF               [12] 6323 	mov	r7,a
      004E48 C0 04            [24] 6324 	push	ar4
      004E4A C0 03            [24] 6325 	push	ar3
      004E4C C0 02            [24] 6326 	push	ar2
      004E4E E5 08            [12] 6327 	mov	a,_bp
      004E50 24 0E            [12] 6328 	add	a,#0x0e
      004E52 F8               [12] 6329 	mov	r0,a
      004E53 E6               [12] 6330 	mov	a,@r0
      004E54 C0 E0            [24] 6331 	push	acc
      004E56 08               [12] 6332 	inc	r0
      004E57 E6               [12] 6333 	mov	a,@r0
      004E58 C0 E0            [24] 6334 	push	acc
      004E5A 08               [12] 6335 	inc	r0
      004E5B E6               [12] 6336 	mov	a,@r0
      004E5C C0 E0            [24] 6337 	push	acc
      004E5E 8D 82            [24] 6338 	mov	dpl,r5
      004E60 8E 83            [24] 6339 	mov	dph,r6
      004E62 8F F0            [24] 6340 	mov	b,r7
      004E64 12 27 83         [24] 6341 	lcall	_stack_pop
      004E67 AE 82            [24] 6342 	mov	r6,dpl
      004E69 AF 83            [24] 6343 	mov	r7,dph
      004E6B 15 81            [12] 6344 	dec	sp
      004E6D 15 81            [12] 6345 	dec	sp
      004E6F 15 81            [12] 6346 	dec	sp
      004E71 D0 02            [24] 6347 	pop	ar2
      004E73 D0 03            [24] 6348 	pop	ar3
      004E75 D0 04            [24] 6349 	pop	ar4
      004E77 EE               [12] 6350 	mov	a,r6
      004E78 4F               [12] 6351 	orl	a,r7
      004E79 70 25            [24] 6352 	jnz	00214$
      004E7B 7D A9            [12] 6353 	mov	r5,#___str_10
      004E7D 7C 89            [12] 6354 	mov	r4,#(___str_10 >> 8)
      004E7F 7B 80            [12] 6355 	mov	r3,#0x80
                                   6356 ;	calc.c:58: return;
      004E81                       6357 00468$:
                                   6358 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004E81 8D 82            [24] 6359 	mov	dpl,r5
      004E83 8C 83            [24] 6360 	mov	dph,r4
      004E85 8B F0            [24] 6361 	mov	b,r3
      004E87 12 70 DA         [24] 6362 	lcall	__gptrget
      004E8A FF               [12] 6363 	mov	r7,a
      004E8B 70 03            [24] 6364 	jnz	01372$
      004E8D 02 57 13         [24] 6365 	ljmp	00249$
      004E90                       6366 01372$:
      004E90 7E 00            [12] 6367 	mov	r6,#0x00
      004E92 8F 82            [24] 6368 	mov	dpl,r7
      004E94 8E 83            [24] 6369 	mov	dph,r6
      004E96 12 2B 70         [24] 6370 	lcall	_putchar
      004E99 0D               [12] 6371 	inc	r5
                                   6372 ;	calc.c:293: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004E9A BD 00 E4         [24] 6373 	cjne	r5,#0x00,00468$
      004E9D 0C               [12] 6374 	inc	r4
      004E9E 80 E1            [24] 6375 	sjmp	00468$
      004EA0                       6376 00214$:
                                   6377 ;	calc.c:294: else if (!stack_pop(ctx->ps, &d1)) {
      004EA0 E5 08            [12] 6378 	mov	a,_bp
      004EA2 24 19            [12] 6379 	add	a,#0x19
      004EA4 FF               [12] 6380 	mov	r7,a
      004EA5 E5 08            [12] 6381 	mov	a,_bp
      004EA7 24 0E            [12] 6382 	add	a,#0x0e
      004EA9 F8               [12] 6383 	mov	r0,a
      004EAA A6 07            [24] 6384 	mov	@r0,ar7
      004EAC 08               [12] 6385 	inc	r0
      004EAD 76 00            [12] 6386 	mov	@r0,#0x00
      004EAF 08               [12] 6387 	inc	r0
      004EB0 76 40            [12] 6388 	mov	@r0,#0x40
      004EB2 8A 82            [24] 6389 	mov	dpl,r2
      004EB4 8B 83            [24] 6390 	mov	dph,r3
      004EB6 8C F0            [24] 6391 	mov	b,r4
      004EB8 12 70 DA         [24] 6392 	lcall	__gptrget
      004EBB FD               [12] 6393 	mov	r5,a
      004EBC A3               [24] 6394 	inc	dptr
      004EBD 12 70 DA         [24] 6395 	lcall	__gptrget
      004EC0 FE               [12] 6396 	mov	r6,a
      004EC1 A3               [24] 6397 	inc	dptr
      004EC2 12 70 DA         [24] 6398 	lcall	__gptrget
      004EC5 FF               [12] 6399 	mov	r7,a
      004EC6 C0 04            [24] 6400 	push	ar4
      004EC8 C0 03            [24] 6401 	push	ar3
      004ECA C0 02            [24] 6402 	push	ar2
      004ECC E5 08            [12] 6403 	mov	a,_bp
      004ECE 24 0E            [12] 6404 	add	a,#0x0e
      004ED0 F8               [12] 6405 	mov	r0,a
      004ED1 E6               [12] 6406 	mov	a,@r0
      004ED2 C0 E0            [24] 6407 	push	acc
      004ED4 08               [12] 6408 	inc	r0
      004ED5 E6               [12] 6409 	mov	a,@r0
      004ED6 C0 E0            [24] 6410 	push	acc
      004ED8 08               [12] 6411 	inc	r0
      004ED9 E6               [12] 6412 	mov	a,@r0
      004EDA C0 E0            [24] 6413 	push	acc
      004EDC 8D 82            [24] 6414 	mov	dpl,r5
      004EDE 8E 83            [24] 6415 	mov	dph,r6
      004EE0 8F F0            [24] 6416 	mov	b,r7
      004EE2 12 27 83         [24] 6417 	lcall	_stack_pop
      004EE5 AE 82            [24] 6418 	mov	r6,dpl
      004EE7 AF 83            [24] 6419 	mov	r7,dph
      004EE9 15 81            [12] 6420 	dec	sp
      004EEB 15 81            [12] 6421 	dec	sp
      004EED 15 81            [12] 6422 	dec	sp
      004EEF D0 02            [24] 6423 	pop	ar2
      004EF1 D0 03            [24] 6424 	pop	ar3
      004EF3 D0 04            [24] 6425 	pop	ar4
      004EF5 EE               [12] 6426 	mov	a,r6
      004EF6 4F               [12] 6427 	orl	a,r7
      004EF7 70 5C            [24] 6428 	jnz	00211$
                                   6429 ;	calc.c:295: (void)stack_push(ctx->ps, d0);
      004EF9 8A 82            [24] 6430 	mov	dpl,r2
      004EFB 8B 83            [24] 6431 	mov	dph,r3
      004EFD 8C F0            [24] 6432 	mov	b,r4
      004EFF 12 70 DA         [24] 6433 	lcall	__gptrget
      004F02 FD               [12] 6434 	mov	r5,a
      004F03 A3               [24] 6435 	inc	dptr
      004F04 12 70 DA         [24] 6436 	lcall	__gptrget
      004F07 FE               [12] 6437 	mov	r6,a
      004F08 A3               [24] 6438 	inc	dptr
      004F09 12 70 DA         [24] 6439 	lcall	__gptrget
      004F0C FF               [12] 6440 	mov	r7,a
      004F0D E5 08            [12] 6441 	mov	a,_bp
      004F0F 24 15            [12] 6442 	add	a,#0x15
      004F11 F8               [12] 6443 	mov	r0,a
      004F12 E6               [12] 6444 	mov	a,@r0
      004F13 C0 E0            [24] 6445 	push	acc
      004F15 08               [12] 6446 	inc	r0
      004F16 E6               [12] 6447 	mov	a,@r0
      004F17 C0 E0            [24] 6448 	push	acc
      004F19 08               [12] 6449 	inc	r0
      004F1A E6               [12] 6450 	mov	a,@r0
      004F1B C0 E0            [24] 6451 	push	acc
      004F1D 08               [12] 6452 	inc	r0
      004F1E E6               [12] 6453 	mov	a,@r0
      004F1F C0 E0            [24] 6454 	push	acc
      004F21 8D 82            [24] 6455 	mov	dpl,r5
      004F23 8E 83            [24] 6456 	mov	dph,r6
      004F25 8F F0            [24] 6457 	mov	b,r7
      004F27 12 26 B5         [24] 6458 	lcall	_stack_push
      004F2A E5 81            [12] 6459 	mov	a,sp
      004F2C 24 FC            [12] 6460 	add	a,#0xfc
      004F2E F5 81            [12] 6461 	mov	sp,a
                                   6462 ;	calc.c:296: printstr("\r\nstack underflow\r\n");
      004F30 7D A9            [12] 6463 	mov	r5,#___str_10
      004F32 7C 89            [12] 6464 	mov	r4,#(___str_10 >> 8)
      004F34 7B 80            [12] 6465 	mov	r3,#0x80
                                   6466 ;	calc.c:58: return;
      004F36                       6467 00471$:
                                   6468 ;	calc.c:56: for (; *s; s++) putchar(*s);
      004F36 8D 82            [24] 6469 	mov	dpl,r5
      004F38 8C 83            [24] 6470 	mov	dph,r4
      004F3A 8B F0            [24] 6471 	mov	b,r3
      004F3C 12 70 DA         [24] 6472 	lcall	__gptrget
      004F3F FF               [12] 6473 	mov	r7,a
      004F40 70 03            [24] 6474 	jnz	01375$
      004F42 02 57 13         [24] 6475 	ljmp	00249$
      004F45                       6476 01375$:
      004F45 7E 00            [12] 6477 	mov	r6,#0x00
      004F47 8F 82            [24] 6478 	mov	dpl,r7
      004F49 8E 83            [24] 6479 	mov	dph,r6
      004F4B 12 2B 70         [24] 6480 	lcall	_putchar
      004F4E 0D               [12] 6481 	inc	r5
                                   6482 ;	calc.c:296: printstr("\r\nstack underflow\r\n");
      004F4F BD 00 E4         [24] 6483 	cjne	r5,#0x00,00471$
      004F52 0C               [12] 6484 	inc	r4
      004F53 80 E1            [24] 6485 	sjmp	00471$
      004F55                       6486 00211$:
                                   6487 ;	calc.c:298: d1 |= d0;
      004F55 E5 08            [12] 6488 	mov	a,_bp
      004F57 24 19            [12] 6489 	add	a,#0x19
      004F59 F8               [12] 6490 	mov	r0,a
      004F5A E5 08            [12] 6491 	mov	a,_bp
      004F5C 24 15            [12] 6492 	add	a,#0x15
      004F5E F9               [12] 6493 	mov	r1,a
      004F5F E7               [12] 6494 	mov	a,@r1
      004F60 46               [12] 6495 	orl	a,@r0
      004F61 F6               [12] 6496 	mov	@r0,a
      004F62 09               [12] 6497 	inc	r1
      004F63 E7               [12] 6498 	mov	a,@r1
      004F64 08               [12] 6499 	inc	r0
      004F65 46               [12] 6500 	orl	a,@r0
      004F66 F6               [12] 6501 	mov	@r0,a
      004F67 09               [12] 6502 	inc	r1
      004F68 E7               [12] 6503 	mov	a,@r1
      004F69 08               [12] 6504 	inc	r0
      004F6A 46               [12] 6505 	orl	a,@r0
      004F6B F6               [12] 6506 	mov	@r0,a
      004F6C 09               [12] 6507 	inc	r1
      004F6D E7               [12] 6508 	mov	a,@r1
      004F6E 08               [12] 6509 	inc	r0
      004F6F 46               [12] 6510 	orl	a,@r0
      004F70 F6               [12] 6511 	mov	@r0,a
                                   6512 ;	calc.c:299: (void)stack_push(ctx->ps, d1);
      004F71 8A 82            [24] 6513 	mov	dpl,r2
      004F73 8B 83            [24] 6514 	mov	dph,r3
      004F75 8C F0            [24] 6515 	mov	b,r4
      004F77 12 70 DA         [24] 6516 	lcall	__gptrget
      004F7A FA               [12] 6517 	mov	r2,a
      004F7B A3               [24] 6518 	inc	dptr
      004F7C 12 70 DA         [24] 6519 	lcall	__gptrget
      004F7F FB               [12] 6520 	mov	r3,a
      004F80 A3               [24] 6521 	inc	dptr
      004F81 12 70 DA         [24] 6522 	lcall	__gptrget
      004F84 FC               [12] 6523 	mov	r4,a
      004F85 E5 08            [12] 6524 	mov	a,_bp
      004F87 24 19            [12] 6525 	add	a,#0x19
      004F89 F8               [12] 6526 	mov	r0,a
      004F8A E6               [12] 6527 	mov	a,@r0
      004F8B C0 E0            [24] 6528 	push	acc
      004F8D 08               [12] 6529 	inc	r0
      004F8E E6               [12] 6530 	mov	a,@r0
      004F8F C0 E0            [24] 6531 	push	acc
      004F91 08               [12] 6532 	inc	r0
      004F92 E6               [12] 6533 	mov	a,@r0
      004F93 C0 E0            [24] 6534 	push	acc
      004F95 08               [12] 6535 	inc	r0
      004F96 E6               [12] 6536 	mov	a,@r0
      004F97 C0 E0            [24] 6537 	push	acc
      004F99 8A 82            [24] 6538 	mov	dpl,r2
      004F9B 8B 83            [24] 6539 	mov	dph,r3
      004F9D 8C F0            [24] 6540 	mov	b,r4
      004F9F 12 26 B5         [24] 6541 	lcall	_stack_push
      004FA2 E5 81            [12] 6542 	mov	a,sp
      004FA4 24 FC            [12] 6543 	add	a,#0xfc
      004FA6 F5 81            [12] 6544 	mov	sp,a
                                   6545 ;	calc.c:301: break;
      004FA8 02 57 13         [24] 6546 	ljmp	00249$
                                   6547 ;	calc.c:302: case '^':
      004FAB                       6548 00216$:
                                   6549 ;	calc.c:303: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004FAB E5 08            [12] 6550 	mov	a,_bp
      004FAD 24 15            [12] 6551 	add	a,#0x15
      004FAF FF               [12] 6552 	mov	r7,a
      004FB0 E5 08            [12] 6553 	mov	a,_bp
      004FB2 24 0E            [12] 6554 	add	a,#0x0e
      004FB4 F8               [12] 6555 	mov	r0,a
      004FB5 A6 07            [24] 6556 	mov	@r0,ar7
      004FB7 08               [12] 6557 	inc	r0
      004FB8 76 00            [12] 6558 	mov	@r0,#0x00
      004FBA 08               [12] 6559 	inc	r0
      004FBB 76 40            [12] 6560 	mov	@r0,#0x40
      004FBD E5 08            [12] 6561 	mov	a,_bp
      004FBF 24 12            [12] 6562 	add	a,#0x12
      004FC1 F8               [12] 6563 	mov	r0,a
      004FC2 74 11            [12] 6564 	mov	a,#0x11
      004FC4 26               [12] 6565 	add	a,@r0
      004FC5 FA               [12] 6566 	mov	r2,a
      004FC6 74 40            [12] 6567 	mov	a,#0x40
      004FC8 08               [12] 6568 	inc	r0
      004FC9 36               [12] 6569 	addc	a,@r0
      004FCA FB               [12] 6570 	mov	r3,a
      004FCB 08               [12] 6571 	inc	r0
      004FCC 86 04            [24] 6572 	mov	ar4,@r0
      004FCE 8A 82            [24] 6573 	mov	dpl,r2
      004FD0 8B 83            [24] 6574 	mov	dph,r3
      004FD2 8C F0            [24] 6575 	mov	b,r4
      004FD4 12 70 DA         [24] 6576 	lcall	__gptrget
      004FD7 FD               [12] 6577 	mov	r5,a
      004FD8 A3               [24] 6578 	inc	dptr
      004FD9 12 70 DA         [24] 6579 	lcall	__gptrget
      004FDC FE               [12] 6580 	mov	r6,a
      004FDD A3               [24] 6581 	inc	dptr
      004FDE 12 70 DA         [24] 6582 	lcall	__gptrget
      004FE1 FF               [12] 6583 	mov	r7,a
      004FE2 C0 04            [24] 6584 	push	ar4
      004FE4 C0 03            [24] 6585 	push	ar3
      004FE6 C0 02            [24] 6586 	push	ar2
      004FE8 E5 08            [12] 6587 	mov	a,_bp
      004FEA 24 0E            [12] 6588 	add	a,#0x0e
      004FEC F8               [12] 6589 	mov	r0,a
      004FED E6               [12] 6590 	mov	a,@r0
      004FEE C0 E0            [24] 6591 	push	acc
      004FF0 08               [12] 6592 	inc	r0
      004FF1 E6               [12] 6593 	mov	a,@r0
      004FF2 C0 E0            [24] 6594 	push	acc
      004FF4 08               [12] 6595 	inc	r0
      004FF5 E6               [12] 6596 	mov	a,@r0
      004FF6 C0 E0            [24] 6597 	push	acc
      004FF8 8D 82            [24] 6598 	mov	dpl,r5
      004FFA 8E 83            [24] 6599 	mov	dph,r6
      004FFC 8F F0            [24] 6600 	mov	b,r7
      004FFE 12 27 83         [24] 6601 	lcall	_stack_pop
      005001 AE 82            [24] 6602 	mov	r6,dpl
      005003 AF 83            [24] 6603 	mov	r7,dph
      005005 15 81            [12] 6604 	dec	sp
      005007 15 81            [12] 6605 	dec	sp
      005009 15 81            [12] 6606 	dec	sp
      00500B D0 02            [24] 6607 	pop	ar2
      00500D D0 03            [24] 6608 	pop	ar3
      00500F D0 04            [24] 6609 	pop	ar4
      005011 EE               [12] 6610 	mov	a,r6
      005012 4F               [12] 6611 	orl	a,r7
      005013 70 25            [24] 6612 	jnz	00221$
      005015 7D A9            [12] 6613 	mov	r5,#___str_10
      005017 7C 89            [12] 6614 	mov	r4,#(___str_10 >> 8)
      005019 7B 80            [12] 6615 	mov	r3,#0x80
                                   6616 ;	calc.c:58: return;
      00501B                       6617 00474$:
                                   6618 ;	calc.c:56: for (; *s; s++) putchar(*s);
      00501B 8D 82            [24] 6619 	mov	dpl,r5
      00501D 8C 83            [24] 6620 	mov	dph,r4
      00501F 8B F0            [24] 6621 	mov	b,r3
      005021 12 70 DA         [24] 6622 	lcall	__gptrget
      005024 FF               [12] 6623 	mov	r7,a
      005025 70 03            [24] 6624 	jnz	01378$
      005027 02 57 13         [24] 6625 	ljmp	00249$
      00502A                       6626 01378$:
      00502A 7E 00            [12] 6627 	mov	r6,#0x00
      00502C 8F 82            [24] 6628 	mov	dpl,r7
      00502E 8E 83            [24] 6629 	mov	dph,r6
      005030 12 2B 70         [24] 6630 	lcall	_putchar
      005033 0D               [12] 6631 	inc	r5
                                   6632 ;	calc.c:303: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005034 BD 00 E4         [24] 6633 	cjne	r5,#0x00,00474$
      005037 0C               [12] 6634 	inc	r4
      005038 80 E1            [24] 6635 	sjmp	00474$
      00503A                       6636 00221$:
                                   6637 ;	calc.c:304: else if (!stack_pop(ctx->ps, &d1)) {
      00503A E5 08            [12] 6638 	mov	a,_bp
      00503C 24 19            [12] 6639 	add	a,#0x19
      00503E FF               [12] 6640 	mov	r7,a
      00503F E5 08            [12] 6641 	mov	a,_bp
      005041 24 0E            [12] 6642 	add	a,#0x0e
      005043 F8               [12] 6643 	mov	r0,a
      005044 A6 07            [24] 6644 	mov	@r0,ar7
      005046 08               [12] 6645 	inc	r0
      005047 76 00            [12] 6646 	mov	@r0,#0x00
      005049 08               [12] 6647 	inc	r0
      00504A 76 40            [12] 6648 	mov	@r0,#0x40
      00504C 8A 82            [24] 6649 	mov	dpl,r2
      00504E 8B 83            [24] 6650 	mov	dph,r3
      005050 8C F0            [24] 6651 	mov	b,r4
      005052 12 70 DA         [24] 6652 	lcall	__gptrget
      005055 FD               [12] 6653 	mov	r5,a
      005056 A3               [24] 6654 	inc	dptr
      005057 12 70 DA         [24] 6655 	lcall	__gptrget
      00505A FE               [12] 6656 	mov	r6,a
      00505B A3               [24] 6657 	inc	dptr
      00505C 12 70 DA         [24] 6658 	lcall	__gptrget
      00505F FF               [12] 6659 	mov	r7,a
      005060 C0 04            [24] 6660 	push	ar4
      005062 C0 03            [24] 6661 	push	ar3
      005064 C0 02            [24] 6662 	push	ar2
      005066 E5 08            [12] 6663 	mov	a,_bp
      005068 24 0E            [12] 6664 	add	a,#0x0e
      00506A F8               [12] 6665 	mov	r0,a
      00506B E6               [12] 6666 	mov	a,@r0
      00506C C0 E0            [24] 6667 	push	acc
      00506E 08               [12] 6668 	inc	r0
      00506F E6               [12] 6669 	mov	a,@r0
      005070 C0 E0            [24] 6670 	push	acc
      005072 08               [12] 6671 	inc	r0
      005073 E6               [12] 6672 	mov	a,@r0
      005074 C0 E0            [24] 6673 	push	acc
      005076 8D 82            [24] 6674 	mov	dpl,r5
      005078 8E 83            [24] 6675 	mov	dph,r6
      00507A 8F F0            [24] 6676 	mov	b,r7
      00507C 12 27 83         [24] 6677 	lcall	_stack_pop
      00507F AE 82            [24] 6678 	mov	r6,dpl
      005081 AF 83            [24] 6679 	mov	r7,dph
      005083 15 81            [12] 6680 	dec	sp
      005085 15 81            [12] 6681 	dec	sp
      005087 15 81            [12] 6682 	dec	sp
      005089 D0 02            [24] 6683 	pop	ar2
      00508B D0 03            [24] 6684 	pop	ar3
      00508D D0 04            [24] 6685 	pop	ar4
      00508F EE               [12] 6686 	mov	a,r6
      005090 4F               [12] 6687 	orl	a,r7
      005091 70 5C            [24] 6688 	jnz	00218$
                                   6689 ;	calc.c:305: (void)stack_push(ctx->ps, d0);
      005093 8A 82            [24] 6690 	mov	dpl,r2
      005095 8B 83            [24] 6691 	mov	dph,r3
      005097 8C F0            [24] 6692 	mov	b,r4
      005099 12 70 DA         [24] 6693 	lcall	__gptrget
      00509C FD               [12] 6694 	mov	r5,a
      00509D A3               [24] 6695 	inc	dptr
      00509E 12 70 DA         [24] 6696 	lcall	__gptrget
      0050A1 FE               [12] 6697 	mov	r6,a
      0050A2 A3               [24] 6698 	inc	dptr
      0050A3 12 70 DA         [24] 6699 	lcall	__gptrget
      0050A6 FF               [12] 6700 	mov	r7,a
      0050A7 E5 08            [12] 6701 	mov	a,_bp
      0050A9 24 15            [12] 6702 	add	a,#0x15
      0050AB F8               [12] 6703 	mov	r0,a
      0050AC E6               [12] 6704 	mov	a,@r0
      0050AD C0 E0            [24] 6705 	push	acc
      0050AF 08               [12] 6706 	inc	r0
      0050B0 E6               [12] 6707 	mov	a,@r0
      0050B1 C0 E0            [24] 6708 	push	acc
      0050B3 08               [12] 6709 	inc	r0
      0050B4 E6               [12] 6710 	mov	a,@r0
      0050B5 C0 E0            [24] 6711 	push	acc
      0050B7 08               [12] 6712 	inc	r0
      0050B8 E6               [12] 6713 	mov	a,@r0
      0050B9 C0 E0            [24] 6714 	push	acc
      0050BB 8D 82            [24] 6715 	mov	dpl,r5
      0050BD 8E 83            [24] 6716 	mov	dph,r6
      0050BF 8F F0            [24] 6717 	mov	b,r7
      0050C1 12 26 B5         [24] 6718 	lcall	_stack_push
      0050C4 E5 81            [12] 6719 	mov	a,sp
      0050C6 24 FC            [12] 6720 	add	a,#0xfc
      0050C8 F5 81            [12] 6721 	mov	sp,a
                                   6722 ;	calc.c:306: printstr("\r\nstack underflow\r\n");
      0050CA 7D A9            [12] 6723 	mov	r5,#___str_10
      0050CC 7C 89            [12] 6724 	mov	r4,#(___str_10 >> 8)
      0050CE 7B 80            [12] 6725 	mov	r3,#0x80
                                   6726 ;	calc.c:58: return;
      0050D0                       6727 00477$:
                                   6728 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0050D0 8D 82            [24] 6729 	mov	dpl,r5
      0050D2 8C 83            [24] 6730 	mov	dph,r4
      0050D4 8B F0            [24] 6731 	mov	b,r3
      0050D6 12 70 DA         [24] 6732 	lcall	__gptrget
      0050D9 FF               [12] 6733 	mov	r7,a
      0050DA 70 03            [24] 6734 	jnz	01381$
      0050DC 02 57 13         [24] 6735 	ljmp	00249$
      0050DF                       6736 01381$:
      0050DF 7E 00            [12] 6737 	mov	r6,#0x00
      0050E1 8F 82            [24] 6738 	mov	dpl,r7
      0050E3 8E 83            [24] 6739 	mov	dph,r6
      0050E5 12 2B 70         [24] 6740 	lcall	_putchar
      0050E8 0D               [12] 6741 	inc	r5
                                   6742 ;	calc.c:306: printstr("\r\nstack underflow\r\n");
      0050E9 BD 00 E4         [24] 6743 	cjne	r5,#0x00,00477$
      0050EC 0C               [12] 6744 	inc	r4
      0050ED 80 E1            [24] 6745 	sjmp	00477$
      0050EF                       6746 00218$:
                                   6747 ;	calc.c:308: d1 ^= d0;
      0050EF E5 08            [12] 6748 	mov	a,_bp
      0050F1 24 19            [12] 6749 	add	a,#0x19
      0050F3 F8               [12] 6750 	mov	r0,a
      0050F4 E5 08            [12] 6751 	mov	a,_bp
      0050F6 24 15            [12] 6752 	add	a,#0x15
      0050F8 F9               [12] 6753 	mov	r1,a
      0050F9 E7               [12] 6754 	mov	a,@r1
      0050FA 66               [12] 6755 	xrl	a,@r0
      0050FB F6               [12] 6756 	mov	@r0,a
      0050FC 09               [12] 6757 	inc	r1
      0050FD E7               [12] 6758 	mov	a,@r1
      0050FE 08               [12] 6759 	inc	r0
      0050FF 66               [12] 6760 	xrl	a,@r0
      005100 F6               [12] 6761 	mov	@r0,a
      005101 09               [12] 6762 	inc	r1
      005102 E7               [12] 6763 	mov	a,@r1
      005103 08               [12] 6764 	inc	r0
      005104 66               [12] 6765 	xrl	a,@r0
      005105 F6               [12] 6766 	mov	@r0,a
      005106 09               [12] 6767 	inc	r1
      005107 E7               [12] 6768 	mov	a,@r1
      005108 08               [12] 6769 	inc	r0
      005109 66               [12] 6770 	xrl	a,@r0
      00510A F6               [12] 6771 	mov	@r0,a
                                   6772 ;	calc.c:309: (void)stack_push(ctx->ps, d1);
      00510B 8A 82            [24] 6773 	mov	dpl,r2
      00510D 8B 83            [24] 6774 	mov	dph,r3
      00510F 8C F0            [24] 6775 	mov	b,r4
      005111 12 70 DA         [24] 6776 	lcall	__gptrget
      005114 FA               [12] 6777 	mov	r2,a
      005115 A3               [24] 6778 	inc	dptr
      005116 12 70 DA         [24] 6779 	lcall	__gptrget
      005119 FB               [12] 6780 	mov	r3,a
      00511A A3               [24] 6781 	inc	dptr
      00511B 12 70 DA         [24] 6782 	lcall	__gptrget
      00511E FC               [12] 6783 	mov	r4,a
      00511F E5 08            [12] 6784 	mov	a,_bp
      005121 24 19            [12] 6785 	add	a,#0x19
      005123 F8               [12] 6786 	mov	r0,a
      005124 E6               [12] 6787 	mov	a,@r0
      005125 C0 E0            [24] 6788 	push	acc
      005127 08               [12] 6789 	inc	r0
      005128 E6               [12] 6790 	mov	a,@r0
      005129 C0 E0            [24] 6791 	push	acc
      00512B 08               [12] 6792 	inc	r0
      00512C E6               [12] 6793 	mov	a,@r0
      00512D C0 E0            [24] 6794 	push	acc
      00512F 08               [12] 6795 	inc	r0
      005130 E6               [12] 6796 	mov	a,@r0
      005131 C0 E0            [24] 6797 	push	acc
      005133 8A 82            [24] 6798 	mov	dpl,r2
      005135 8B 83            [24] 6799 	mov	dph,r3
      005137 8C F0            [24] 6800 	mov	b,r4
      005139 12 26 B5         [24] 6801 	lcall	_stack_push
      00513C E5 81            [12] 6802 	mov	a,sp
      00513E 24 FC            [12] 6803 	add	a,#0xfc
      005140 F5 81            [12] 6804 	mov	sp,a
                                   6805 ;	calc.c:311: break;
      005142 02 57 13         [24] 6806 	ljmp	00249$
                                   6807 ;	calc.c:312: case '>':
      005145                       6808 00223$:
                                   6809 ;	calc.c:313: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005145 E5 08            [12] 6810 	mov	a,_bp
      005147 24 15            [12] 6811 	add	a,#0x15
      005149 FC               [12] 6812 	mov	r4,a
      00514A 7B 00            [12] 6813 	mov	r3,#0x00
      00514C 7A 40            [12] 6814 	mov	r2,#0x40
      00514E E5 08            [12] 6815 	mov	a,_bp
      005150 24 12            [12] 6816 	add	a,#0x12
      005152 F8               [12] 6817 	mov	r0,a
      005153 E5 08            [12] 6818 	mov	a,_bp
      005155 24 0B            [12] 6819 	add	a,#0x0b
      005157 F9               [12] 6820 	mov	r1,a
      005158 74 11            [12] 6821 	mov	a,#0x11
      00515A 26               [12] 6822 	add	a,@r0
      00515B F7               [12] 6823 	mov	@r1,a
      00515C 74 40            [12] 6824 	mov	a,#0x40
      00515E 08               [12] 6825 	inc	r0
      00515F 36               [12] 6826 	addc	a,@r0
      005160 09               [12] 6827 	inc	r1
      005161 F7               [12] 6828 	mov	@r1,a
      005162 08               [12] 6829 	inc	r0
      005163 09               [12] 6830 	inc	r1
      005164 E6               [12] 6831 	mov	a,@r0
      005165 F7               [12] 6832 	mov	@r1,a
      005166 E5 08            [12] 6833 	mov	a,_bp
      005168 24 0B            [12] 6834 	add	a,#0x0b
      00516A F8               [12] 6835 	mov	r0,a
      00516B 86 82            [24] 6836 	mov	dpl,@r0
      00516D 08               [12] 6837 	inc	r0
      00516E 86 83            [24] 6838 	mov	dph,@r0
      005170 08               [12] 6839 	inc	r0
      005171 86 F0            [24] 6840 	mov	b,@r0
      005173 12 70 DA         [24] 6841 	lcall	__gptrget
      005176 FD               [12] 6842 	mov	r5,a
      005177 A3               [24] 6843 	inc	dptr
      005178 12 70 DA         [24] 6844 	lcall	__gptrget
      00517B FE               [12] 6845 	mov	r6,a
      00517C A3               [24] 6846 	inc	dptr
      00517D 12 70 DA         [24] 6847 	lcall	__gptrget
      005180 FF               [12] 6848 	mov	r7,a
      005181 C0 04            [24] 6849 	push	ar4
      005183 C0 03            [24] 6850 	push	ar3
      005185 C0 02            [24] 6851 	push	ar2
      005187 8D 82            [24] 6852 	mov	dpl,r5
      005189 8E 83            [24] 6853 	mov	dph,r6
      00518B 8F F0            [24] 6854 	mov	b,r7
      00518D 12 27 83         [24] 6855 	lcall	_stack_pop
      005190 AE 82            [24] 6856 	mov	r6,dpl
      005192 AF 83            [24] 6857 	mov	r7,dph
      005194 15 81            [12] 6858 	dec	sp
      005196 15 81            [12] 6859 	dec	sp
      005198 15 81            [12] 6860 	dec	sp
      00519A EE               [12] 6861 	mov	a,r6
      00519B 4F               [12] 6862 	orl	a,r7
      00519C 70 25            [24] 6863 	jnz	00228$
      00519E 7D A9            [12] 6864 	mov	r5,#___str_10
      0051A0 7C 89            [12] 6865 	mov	r4,#(___str_10 >> 8)
      0051A2 7B 80            [12] 6866 	mov	r3,#0x80
                                   6867 ;	calc.c:58: return;
      0051A4                       6868 00480$:
                                   6869 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0051A4 8D 82            [24] 6870 	mov	dpl,r5
      0051A6 8C 83            [24] 6871 	mov	dph,r4
      0051A8 8B F0            [24] 6872 	mov	b,r3
      0051AA 12 70 DA         [24] 6873 	lcall	__gptrget
      0051AD FF               [12] 6874 	mov	r7,a
      0051AE 70 03            [24] 6875 	jnz	01384$
      0051B0 02 57 13         [24] 6876 	ljmp	00249$
      0051B3                       6877 01384$:
      0051B3 7E 00            [12] 6878 	mov	r6,#0x00
      0051B5 8F 82            [24] 6879 	mov	dpl,r7
      0051B7 8E 83            [24] 6880 	mov	dph,r6
      0051B9 12 2B 70         [24] 6881 	lcall	_putchar
      0051BC 0D               [12] 6882 	inc	r5
                                   6883 ;	calc.c:313: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0051BD BD 00 E4         [24] 6884 	cjne	r5,#0x00,00480$
      0051C0 0C               [12] 6885 	inc	r4
      0051C1 80 E1            [24] 6886 	sjmp	00480$
      0051C3                       6887 00228$:
                                   6888 ;	calc.c:314: else if (!stack_pop(ctx->ps, &d1)) {
      0051C3 E5 08            [12] 6889 	mov	a,_bp
      0051C5 24 19            [12] 6890 	add	a,#0x19
      0051C7 FC               [12] 6891 	mov	r4,a
      0051C8 7B 00            [12] 6892 	mov	r3,#0x00
      0051CA 7A 40            [12] 6893 	mov	r2,#0x40
      0051CC E5 08            [12] 6894 	mov	a,_bp
      0051CE 24 0B            [12] 6895 	add	a,#0x0b
      0051D0 F8               [12] 6896 	mov	r0,a
      0051D1 86 82            [24] 6897 	mov	dpl,@r0
      0051D3 08               [12] 6898 	inc	r0
      0051D4 86 83            [24] 6899 	mov	dph,@r0
      0051D6 08               [12] 6900 	inc	r0
      0051D7 86 F0            [24] 6901 	mov	b,@r0
      0051D9 12 70 DA         [24] 6902 	lcall	__gptrget
      0051DC FD               [12] 6903 	mov	r5,a
      0051DD A3               [24] 6904 	inc	dptr
      0051DE 12 70 DA         [24] 6905 	lcall	__gptrget
      0051E1 FE               [12] 6906 	mov	r6,a
      0051E2 A3               [24] 6907 	inc	dptr
      0051E3 12 70 DA         [24] 6908 	lcall	__gptrget
      0051E6 FF               [12] 6909 	mov	r7,a
      0051E7 C0 04            [24] 6910 	push	ar4
      0051E9 C0 03            [24] 6911 	push	ar3
      0051EB C0 02            [24] 6912 	push	ar2
      0051ED 8D 82            [24] 6913 	mov	dpl,r5
      0051EF 8E 83            [24] 6914 	mov	dph,r6
      0051F1 8F F0            [24] 6915 	mov	b,r7
      0051F3 12 27 83         [24] 6916 	lcall	_stack_pop
      0051F6 AE 82            [24] 6917 	mov	r6,dpl
      0051F8 AF 83            [24] 6918 	mov	r7,dph
      0051FA 15 81            [12] 6919 	dec	sp
      0051FC 15 81            [12] 6920 	dec	sp
      0051FE 15 81            [12] 6921 	dec	sp
      005200 EE               [12] 6922 	mov	a,r6
      005201 4F               [12] 6923 	orl	a,r7
      005202 70 63            [24] 6924 	jnz	00225$
                                   6925 ;	calc.c:315: (void)stack_push(ctx->ps, d0);
      005204 E5 08            [12] 6926 	mov	a,_bp
      005206 24 0B            [12] 6927 	add	a,#0x0b
      005208 F8               [12] 6928 	mov	r0,a
      005209 86 82            [24] 6929 	mov	dpl,@r0
      00520B 08               [12] 6930 	inc	r0
      00520C 86 83            [24] 6931 	mov	dph,@r0
      00520E 08               [12] 6932 	inc	r0
      00520F 86 F0            [24] 6933 	mov	b,@r0
      005211 12 70 DA         [24] 6934 	lcall	__gptrget
      005214 FD               [12] 6935 	mov	r5,a
      005215 A3               [24] 6936 	inc	dptr
      005216 12 70 DA         [24] 6937 	lcall	__gptrget
      005219 FE               [12] 6938 	mov	r6,a
      00521A A3               [24] 6939 	inc	dptr
      00521B 12 70 DA         [24] 6940 	lcall	__gptrget
      00521E FF               [12] 6941 	mov	r7,a
      00521F E5 08            [12] 6942 	mov	a,_bp
      005221 24 15            [12] 6943 	add	a,#0x15
      005223 F8               [12] 6944 	mov	r0,a
      005224 E6               [12] 6945 	mov	a,@r0
      005225 C0 E0            [24] 6946 	push	acc
      005227 08               [12] 6947 	inc	r0
      005228 E6               [12] 6948 	mov	a,@r0
      005229 C0 E0            [24] 6949 	push	acc
      00522B 08               [12] 6950 	inc	r0
      00522C E6               [12] 6951 	mov	a,@r0
      00522D C0 E0            [24] 6952 	push	acc
      00522F 08               [12] 6953 	inc	r0
      005230 E6               [12] 6954 	mov	a,@r0
      005231 C0 E0            [24] 6955 	push	acc
      005233 8D 82            [24] 6956 	mov	dpl,r5
      005235 8E 83            [24] 6957 	mov	dph,r6
      005237 8F F0            [24] 6958 	mov	b,r7
      005239 12 26 B5         [24] 6959 	lcall	_stack_push
      00523C E5 81            [12] 6960 	mov	a,sp
      00523E 24 FC            [12] 6961 	add	a,#0xfc
      005240 F5 81            [12] 6962 	mov	sp,a
                                   6963 ;	calc.c:316: printstr("\r\nstack underflow\r\n");
      005242 7D A9            [12] 6964 	mov	r5,#___str_10
      005244 7C 89            [12] 6965 	mov	r4,#(___str_10 >> 8)
      005246 7B 80            [12] 6966 	mov	r3,#0x80
                                   6967 ;	calc.c:58: return;
      005248                       6968 00483$:
                                   6969 ;	calc.c:56: for (; *s; s++) putchar(*s);
      005248 8D 82            [24] 6970 	mov	dpl,r5
      00524A 8C 83            [24] 6971 	mov	dph,r4
      00524C 8B F0            [24] 6972 	mov	b,r3
      00524E 12 70 DA         [24] 6973 	lcall	__gptrget
      005251 FF               [12] 6974 	mov	r7,a
      005252 70 03            [24] 6975 	jnz	01387$
      005254 02 57 13         [24] 6976 	ljmp	00249$
      005257                       6977 01387$:
      005257 7E 00            [12] 6978 	mov	r6,#0x00
      005259 8F 82            [24] 6979 	mov	dpl,r7
      00525B 8E 83            [24] 6980 	mov	dph,r6
      00525D 12 2B 70         [24] 6981 	lcall	_putchar
      005260 0D               [12] 6982 	inc	r5
                                   6983 ;	calc.c:316: printstr("\r\nstack underflow\r\n");
      005261 BD 00 E4         [24] 6984 	cjne	r5,#0x00,00483$
      005264 0C               [12] 6985 	inc	r4
      005265 80 E1            [24] 6986 	sjmp	00483$
      005267                       6987 00225$:
                                   6988 ;	calc.c:318: d1 = (unsigned long)d1 >> d0;
      005267 E5 08            [12] 6989 	mov	a,_bp
      005269 24 19            [12] 6990 	add	a,#0x19
      00526B F8               [12] 6991 	mov	r0,a
      00526C 86 04            [24] 6992 	mov	ar4,@r0
      00526E 08               [12] 6993 	inc	r0
      00526F 86 05            [24] 6994 	mov	ar5,@r0
      005271 08               [12] 6995 	inc	r0
      005272 86 06            [24] 6996 	mov	ar6,@r0
      005274 08               [12] 6997 	inc	r0
      005275 86 07            [24] 6998 	mov	ar7,@r0
      005277 E5 08            [12] 6999 	mov	a,_bp
      005279 24 15            [12] 7000 	add	a,#0x15
      00527B F8               [12] 7001 	mov	r0,a
      00527C 86 F0            [24] 7002 	mov	b,@r0
      00527E 05 F0            [12] 7003 	inc	b
      005280 80 0D            [24] 7004 	sjmp	01390$
      005282                       7005 01389$:
      005282 C3               [12] 7006 	clr	c
      005283 EF               [12] 7007 	mov	a,r7
      005284 13               [12] 7008 	rrc	a
      005285 FF               [12] 7009 	mov	r7,a
      005286 EE               [12] 7010 	mov	a,r6
      005287 13               [12] 7011 	rrc	a
      005288 FE               [12] 7012 	mov	r6,a
      005289 ED               [12] 7013 	mov	a,r5
      00528A 13               [12] 7014 	rrc	a
      00528B FD               [12] 7015 	mov	r5,a
      00528C EC               [12] 7016 	mov	a,r4
      00528D 13               [12] 7017 	rrc	a
      00528E FC               [12] 7018 	mov	r4,a
      00528F                       7019 01390$:
      00528F D5 F0 F0         [24] 7020 	djnz	b,01389$
      005292 E5 08            [12] 7021 	mov	a,_bp
      005294 24 19            [12] 7022 	add	a,#0x19
      005296 F8               [12] 7023 	mov	r0,a
      005297 A6 04            [24] 7024 	mov	@r0,ar4
      005299 08               [12] 7025 	inc	r0
      00529A A6 05            [24] 7026 	mov	@r0,ar5
      00529C 08               [12] 7027 	inc	r0
      00529D A6 06            [24] 7028 	mov	@r0,ar6
      00529F 08               [12] 7029 	inc	r0
      0052A0 A6 07            [24] 7030 	mov	@r0,ar7
                                   7031 ;	calc.c:319: (void)stack_push(ctx->ps, d1);
      0052A2 E5 08            [12] 7032 	mov	a,_bp
      0052A4 24 0B            [12] 7033 	add	a,#0x0b
      0052A6 F8               [12] 7034 	mov	r0,a
      0052A7 86 82            [24] 7035 	mov	dpl,@r0
      0052A9 08               [12] 7036 	inc	r0
      0052AA 86 83            [24] 7037 	mov	dph,@r0
      0052AC 08               [12] 7038 	inc	r0
      0052AD 86 F0            [24] 7039 	mov	b,@r0
      0052AF 12 70 DA         [24] 7040 	lcall	__gptrget
      0052B2 FD               [12] 7041 	mov	r5,a
      0052B3 A3               [24] 7042 	inc	dptr
      0052B4 12 70 DA         [24] 7043 	lcall	__gptrget
      0052B7 FE               [12] 7044 	mov	r6,a
      0052B8 A3               [24] 7045 	inc	dptr
      0052B9 12 70 DA         [24] 7046 	lcall	__gptrget
      0052BC FF               [12] 7047 	mov	r7,a
      0052BD E5 08            [12] 7048 	mov	a,_bp
      0052BF 24 19            [12] 7049 	add	a,#0x19
      0052C1 F8               [12] 7050 	mov	r0,a
      0052C2 E6               [12] 7051 	mov	a,@r0
      0052C3 C0 E0            [24] 7052 	push	acc
      0052C5 08               [12] 7053 	inc	r0
      0052C6 E6               [12] 7054 	mov	a,@r0
      0052C7 C0 E0            [24] 7055 	push	acc
      0052C9 08               [12] 7056 	inc	r0
      0052CA E6               [12] 7057 	mov	a,@r0
      0052CB C0 E0            [24] 7058 	push	acc
      0052CD 08               [12] 7059 	inc	r0
      0052CE E6               [12] 7060 	mov	a,@r0
      0052CF C0 E0            [24] 7061 	push	acc
      0052D1 8D 82            [24] 7062 	mov	dpl,r5
      0052D3 8E 83            [24] 7063 	mov	dph,r6
      0052D5 8F F0            [24] 7064 	mov	b,r7
      0052D7 12 26 B5         [24] 7065 	lcall	_stack_push
      0052DA E5 81            [12] 7066 	mov	a,sp
      0052DC 24 FC            [12] 7067 	add	a,#0xfc
      0052DE F5 81            [12] 7068 	mov	sp,a
                                   7069 ;	calc.c:321: break;
      0052E0 02 57 13         [24] 7070 	ljmp	00249$
                                   7071 ;	calc.c:322: case ']':
      0052E3                       7072 00230$:
                                   7073 ;	calc.c:323: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0052E3 E5 08            [12] 7074 	mov	a,_bp
      0052E5 24 15            [12] 7075 	add	a,#0x15
      0052E7 FF               [12] 7076 	mov	r7,a
      0052E8 E5 08            [12] 7077 	mov	a,_bp
      0052EA 24 0E            [12] 7078 	add	a,#0x0e
      0052EC F8               [12] 7079 	mov	r0,a
      0052ED A6 07            [24] 7080 	mov	@r0,ar7
      0052EF 08               [12] 7081 	inc	r0
      0052F0 76 00            [12] 7082 	mov	@r0,#0x00
      0052F2 08               [12] 7083 	inc	r0
      0052F3 76 40            [12] 7084 	mov	@r0,#0x40
      0052F5 E5 08            [12] 7085 	mov	a,_bp
      0052F7 24 12            [12] 7086 	add	a,#0x12
      0052F9 F8               [12] 7087 	mov	r0,a
      0052FA 74 11            [12] 7088 	mov	a,#0x11
      0052FC 26               [12] 7089 	add	a,@r0
      0052FD FA               [12] 7090 	mov	r2,a
      0052FE 74 40            [12] 7091 	mov	a,#0x40
      005300 08               [12] 7092 	inc	r0
      005301 36               [12] 7093 	addc	a,@r0
      005302 FB               [12] 7094 	mov	r3,a
      005303 08               [12] 7095 	inc	r0
      005304 86 04            [24] 7096 	mov	ar4,@r0
      005306 8A 82            [24] 7097 	mov	dpl,r2
      005308 8B 83            [24] 7098 	mov	dph,r3
      00530A 8C F0            [24] 7099 	mov	b,r4
      00530C 12 70 DA         [24] 7100 	lcall	__gptrget
      00530F FD               [12] 7101 	mov	r5,a
      005310 A3               [24] 7102 	inc	dptr
      005311 12 70 DA         [24] 7103 	lcall	__gptrget
      005314 FE               [12] 7104 	mov	r6,a
      005315 A3               [24] 7105 	inc	dptr
      005316 12 70 DA         [24] 7106 	lcall	__gptrget
      005319 FF               [12] 7107 	mov	r7,a
      00531A C0 04            [24] 7108 	push	ar4
      00531C C0 03            [24] 7109 	push	ar3
      00531E C0 02            [24] 7110 	push	ar2
      005320 E5 08            [12] 7111 	mov	a,_bp
      005322 24 0E            [12] 7112 	add	a,#0x0e
      005324 F8               [12] 7113 	mov	r0,a
      005325 E6               [12] 7114 	mov	a,@r0
      005326 C0 E0            [24] 7115 	push	acc
      005328 08               [12] 7116 	inc	r0
      005329 E6               [12] 7117 	mov	a,@r0
      00532A C0 E0            [24] 7118 	push	acc
      00532C 08               [12] 7119 	inc	r0
      00532D E6               [12] 7120 	mov	a,@r0
      00532E C0 E0            [24] 7121 	push	acc
      005330 8D 82            [24] 7122 	mov	dpl,r5
      005332 8E 83            [24] 7123 	mov	dph,r6
      005334 8F F0            [24] 7124 	mov	b,r7
      005336 12 27 83         [24] 7125 	lcall	_stack_pop
      005339 AE 82            [24] 7126 	mov	r6,dpl
      00533B AF 83            [24] 7127 	mov	r7,dph
      00533D 15 81            [12] 7128 	dec	sp
      00533F 15 81            [12] 7129 	dec	sp
      005341 15 81            [12] 7130 	dec	sp
      005343 D0 02            [24] 7131 	pop	ar2
      005345 D0 03            [24] 7132 	pop	ar3
      005347 D0 04            [24] 7133 	pop	ar4
      005349 EE               [12] 7134 	mov	a,r6
      00534A 4F               [12] 7135 	orl	a,r7
      00534B 70 25            [24] 7136 	jnz	00235$
      00534D 7D A9            [12] 7137 	mov	r5,#___str_10
      00534F 7C 89            [12] 7138 	mov	r4,#(___str_10 >> 8)
      005351 7B 80            [12] 7139 	mov	r3,#0x80
                                   7140 ;	calc.c:58: return;
      005353                       7141 00486$:
                                   7142 ;	calc.c:56: for (; *s; s++) putchar(*s);
      005353 8D 82            [24] 7143 	mov	dpl,r5
      005355 8C 83            [24] 7144 	mov	dph,r4
      005357 8B F0            [24] 7145 	mov	b,r3
      005359 12 70 DA         [24] 7146 	lcall	__gptrget
      00535C FF               [12] 7147 	mov	r7,a
      00535D 70 03            [24] 7148 	jnz	01392$
      00535F 02 57 13         [24] 7149 	ljmp	00249$
      005362                       7150 01392$:
      005362 7E 00            [12] 7151 	mov	r6,#0x00
      005364 8F 82            [24] 7152 	mov	dpl,r7
      005366 8E 83            [24] 7153 	mov	dph,r6
      005368 12 2B 70         [24] 7154 	lcall	_putchar
      00536B 0D               [12] 7155 	inc	r5
                                   7156 ;	calc.c:323: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00536C BD 00 E4         [24] 7157 	cjne	r5,#0x00,00486$
      00536F 0C               [12] 7158 	inc	r4
      005370 80 E1            [24] 7159 	sjmp	00486$
      005372                       7160 00235$:
                                   7161 ;	calc.c:324: else if (!stack_pop(ctx->ps, &d1)) {
      005372 E5 08            [12] 7162 	mov	a,_bp
      005374 24 19            [12] 7163 	add	a,#0x19
      005376 FF               [12] 7164 	mov	r7,a
      005377 E5 08            [12] 7165 	mov	a,_bp
      005379 24 0E            [12] 7166 	add	a,#0x0e
      00537B F8               [12] 7167 	mov	r0,a
      00537C A6 07            [24] 7168 	mov	@r0,ar7
      00537E 08               [12] 7169 	inc	r0
      00537F 76 00            [12] 7170 	mov	@r0,#0x00
      005381 08               [12] 7171 	inc	r0
      005382 76 40            [12] 7172 	mov	@r0,#0x40
      005384 8A 82            [24] 7173 	mov	dpl,r2
      005386 8B 83            [24] 7174 	mov	dph,r3
      005388 8C F0            [24] 7175 	mov	b,r4
      00538A 12 70 DA         [24] 7176 	lcall	__gptrget
      00538D FD               [12] 7177 	mov	r5,a
      00538E A3               [24] 7178 	inc	dptr
      00538F 12 70 DA         [24] 7179 	lcall	__gptrget
      005392 FE               [12] 7180 	mov	r6,a
      005393 A3               [24] 7181 	inc	dptr
      005394 12 70 DA         [24] 7182 	lcall	__gptrget
      005397 FF               [12] 7183 	mov	r7,a
      005398 C0 04            [24] 7184 	push	ar4
      00539A C0 03            [24] 7185 	push	ar3
      00539C C0 02            [24] 7186 	push	ar2
      00539E E5 08            [12] 7187 	mov	a,_bp
      0053A0 24 0E            [12] 7188 	add	a,#0x0e
      0053A2 F8               [12] 7189 	mov	r0,a
      0053A3 E6               [12] 7190 	mov	a,@r0
      0053A4 C0 E0            [24] 7191 	push	acc
      0053A6 08               [12] 7192 	inc	r0
      0053A7 E6               [12] 7193 	mov	a,@r0
      0053A8 C0 E0            [24] 7194 	push	acc
      0053AA 08               [12] 7195 	inc	r0
      0053AB E6               [12] 7196 	mov	a,@r0
      0053AC C0 E0            [24] 7197 	push	acc
      0053AE 8D 82            [24] 7198 	mov	dpl,r5
      0053B0 8E 83            [24] 7199 	mov	dph,r6
      0053B2 8F F0            [24] 7200 	mov	b,r7
      0053B4 12 27 83         [24] 7201 	lcall	_stack_pop
      0053B7 AE 82            [24] 7202 	mov	r6,dpl
      0053B9 AF 83            [24] 7203 	mov	r7,dph
      0053BB 15 81            [12] 7204 	dec	sp
      0053BD 15 81            [12] 7205 	dec	sp
      0053BF 15 81            [12] 7206 	dec	sp
      0053C1 D0 02            [24] 7207 	pop	ar2
      0053C3 D0 03            [24] 7208 	pop	ar3
      0053C5 D0 04            [24] 7209 	pop	ar4
      0053C7 EE               [12] 7210 	mov	a,r6
      0053C8 4F               [12] 7211 	orl	a,r7
      0053C9 70 5C            [24] 7212 	jnz	00232$
                                   7213 ;	calc.c:325: (void)stack_push(ctx->ps, d0);
      0053CB 8A 82            [24] 7214 	mov	dpl,r2
      0053CD 8B 83            [24] 7215 	mov	dph,r3
      0053CF 8C F0            [24] 7216 	mov	b,r4
      0053D1 12 70 DA         [24] 7217 	lcall	__gptrget
      0053D4 FD               [12] 7218 	mov	r5,a
      0053D5 A3               [24] 7219 	inc	dptr
      0053D6 12 70 DA         [24] 7220 	lcall	__gptrget
      0053D9 FE               [12] 7221 	mov	r6,a
      0053DA A3               [24] 7222 	inc	dptr
      0053DB 12 70 DA         [24] 7223 	lcall	__gptrget
      0053DE FF               [12] 7224 	mov	r7,a
      0053DF E5 08            [12] 7225 	mov	a,_bp
      0053E1 24 15            [12] 7226 	add	a,#0x15
      0053E3 F8               [12] 7227 	mov	r0,a
      0053E4 E6               [12] 7228 	mov	a,@r0
      0053E5 C0 E0            [24] 7229 	push	acc
      0053E7 08               [12] 7230 	inc	r0
      0053E8 E6               [12] 7231 	mov	a,@r0
      0053E9 C0 E0            [24] 7232 	push	acc
      0053EB 08               [12] 7233 	inc	r0
      0053EC E6               [12] 7234 	mov	a,@r0
      0053ED C0 E0            [24] 7235 	push	acc
      0053EF 08               [12] 7236 	inc	r0
      0053F0 E6               [12] 7237 	mov	a,@r0
      0053F1 C0 E0            [24] 7238 	push	acc
      0053F3 8D 82            [24] 7239 	mov	dpl,r5
      0053F5 8E 83            [24] 7240 	mov	dph,r6
      0053F7 8F F0            [24] 7241 	mov	b,r7
      0053F9 12 26 B5         [24] 7242 	lcall	_stack_push
      0053FC E5 81            [12] 7243 	mov	a,sp
      0053FE 24 FC            [12] 7244 	add	a,#0xfc
      005400 F5 81            [12] 7245 	mov	sp,a
                                   7246 ;	calc.c:326: printstr("\r\nstack underflow\r\n");
      005402 7D A9            [12] 7247 	mov	r5,#___str_10
      005404 7C 89            [12] 7248 	mov	r4,#(___str_10 >> 8)
      005406 7B 80            [12] 7249 	mov	r3,#0x80
                                   7250 ;	calc.c:58: return;
      005408                       7251 00489$:
                                   7252 ;	calc.c:56: for (; *s; s++) putchar(*s);
      005408 8D 82            [24] 7253 	mov	dpl,r5
      00540A 8C 83            [24] 7254 	mov	dph,r4
      00540C 8B F0            [24] 7255 	mov	b,r3
      00540E 12 70 DA         [24] 7256 	lcall	__gptrget
      005411 FF               [12] 7257 	mov	r7,a
      005412 70 03            [24] 7258 	jnz	01395$
      005414 02 57 13         [24] 7259 	ljmp	00249$
      005417                       7260 01395$:
      005417 7E 00            [12] 7261 	mov	r6,#0x00
      005419 8F 82            [24] 7262 	mov	dpl,r7
      00541B 8E 83            [24] 7263 	mov	dph,r6
      00541D 12 2B 70         [24] 7264 	lcall	_putchar
      005420 0D               [12] 7265 	inc	r5
                                   7266 ;	calc.c:326: printstr("\r\nstack underflow\r\n");
      005421 BD 00 E4         [24] 7267 	cjne	r5,#0x00,00489$
      005424 0C               [12] 7268 	inc	r4
      005425 80 E1            [24] 7269 	sjmp	00489$
      005427                       7270 00232$:
                                   7271 ;	calc.c:328: d1 >>= d0;
      005427 E5 08            [12] 7272 	mov	a,_bp
      005429 24 15            [12] 7273 	add	a,#0x15
      00542B F8               [12] 7274 	mov	r0,a
      00542C 86 F0            [24] 7275 	mov	b,@r0
      00542E 05 F0            [12] 7276 	inc	b
      005430 E5 08            [12] 7277 	mov	a,_bp
      005432 24 19            [12] 7278 	add	a,#0x19
      005434 F8               [12] 7279 	mov	r0,a
      005435 08               [12] 7280 	inc	r0
      005436 08               [12] 7281 	inc	r0
      005437 08               [12] 7282 	inc	r0
      005438 E6               [12] 7283 	mov	a,@r0
      005439 33               [12] 7284 	rlc	a
      00543A 92 D2            [24] 7285 	mov	ov,c
      00543C 18               [12] 7286 	dec	r0
      00543D 18               [12] 7287 	dec	r0
      00543E 18               [12] 7288 	dec	r0
      00543F 80 14            [24] 7289 	sjmp	01398$
      005441                       7290 01397$:
      005441 A2 D2            [12] 7291 	mov	c,ov
      005443 08               [12] 7292 	inc	r0
      005444 08               [12] 7293 	inc	r0
      005445 08               [12] 7294 	inc	r0
      005446 E6               [12] 7295 	mov	a,@r0
      005447 13               [12] 7296 	rrc	a
      005448 F6               [12] 7297 	mov	@r0,a
      005449 18               [12] 7298 	dec	r0
      00544A E6               [12] 7299 	mov	a,@r0
      00544B 13               [12] 7300 	rrc	a
      00544C F6               [12] 7301 	mov	@r0,a
      00544D 18               [12] 7302 	dec	r0
      00544E E6               [12] 7303 	mov	a,@r0
      00544F 13               [12] 7304 	rrc	a
      005450 F6               [12] 7305 	mov	@r0,a
      005451 18               [12] 7306 	dec	r0
      005452 E6               [12] 7307 	mov	a,@r0
      005453 13               [12] 7308 	rrc	a
      005454 F6               [12] 7309 	mov	@r0,a
      005455                       7310 01398$:
      005455 D5 F0 E9         [24] 7311 	djnz	b,01397$
                                   7312 ;	calc.c:329: (void)stack_push(ctx->ps, d1);
      005458 8A 82            [24] 7313 	mov	dpl,r2
      00545A 8B 83            [24] 7314 	mov	dph,r3
      00545C 8C F0            [24] 7315 	mov	b,r4
      00545E 12 70 DA         [24] 7316 	lcall	__gptrget
      005461 FA               [12] 7317 	mov	r2,a
      005462 A3               [24] 7318 	inc	dptr
      005463 12 70 DA         [24] 7319 	lcall	__gptrget
      005466 FB               [12] 7320 	mov	r3,a
      005467 A3               [24] 7321 	inc	dptr
      005468 12 70 DA         [24] 7322 	lcall	__gptrget
      00546B FC               [12] 7323 	mov	r4,a
      00546C E5 08            [12] 7324 	mov	a,_bp
      00546E 24 19            [12] 7325 	add	a,#0x19
      005470 F8               [12] 7326 	mov	r0,a
      005471 E6               [12] 7327 	mov	a,@r0
      005472 C0 E0            [24] 7328 	push	acc
      005474 08               [12] 7329 	inc	r0
      005475 E6               [12] 7330 	mov	a,@r0
      005476 C0 E0            [24] 7331 	push	acc
      005478 08               [12] 7332 	inc	r0
      005479 E6               [12] 7333 	mov	a,@r0
      00547A C0 E0            [24] 7334 	push	acc
      00547C 08               [12] 7335 	inc	r0
      00547D E6               [12] 7336 	mov	a,@r0
      00547E C0 E0            [24] 7337 	push	acc
      005480 8A 82            [24] 7338 	mov	dpl,r2
      005482 8B 83            [24] 7339 	mov	dph,r3
      005484 8C F0            [24] 7340 	mov	b,r4
      005486 12 26 B5         [24] 7341 	lcall	_stack_push
      005489 E5 81            [12] 7342 	mov	a,sp
      00548B 24 FC            [12] 7343 	add	a,#0xfc
      00548D F5 81            [12] 7344 	mov	sp,a
                                   7345 ;	calc.c:331: break;
      00548F 02 57 13         [24] 7346 	ljmp	00249$
                                   7347 ;	calc.c:332: case '<':
      005492                       7348 00237$:
                                   7349 ;	calc.c:333: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005492 E5 08            [12] 7350 	mov	a,_bp
      005494 24 15            [12] 7351 	add	a,#0x15
      005496 FF               [12] 7352 	mov	r7,a
      005497 E5 08            [12] 7353 	mov	a,_bp
      005499 24 0E            [12] 7354 	add	a,#0x0e
      00549B F8               [12] 7355 	mov	r0,a
      00549C A6 07            [24] 7356 	mov	@r0,ar7
      00549E 08               [12] 7357 	inc	r0
      00549F 76 00            [12] 7358 	mov	@r0,#0x00
      0054A1 08               [12] 7359 	inc	r0
      0054A2 76 40            [12] 7360 	mov	@r0,#0x40
      0054A4 E5 08            [12] 7361 	mov	a,_bp
      0054A6 24 12            [12] 7362 	add	a,#0x12
      0054A8 F8               [12] 7363 	mov	r0,a
      0054A9 74 11            [12] 7364 	mov	a,#0x11
      0054AB 26               [12] 7365 	add	a,@r0
      0054AC FA               [12] 7366 	mov	r2,a
      0054AD 74 40            [12] 7367 	mov	a,#0x40
      0054AF 08               [12] 7368 	inc	r0
      0054B0 36               [12] 7369 	addc	a,@r0
      0054B1 FB               [12] 7370 	mov	r3,a
      0054B2 08               [12] 7371 	inc	r0
      0054B3 86 04            [24] 7372 	mov	ar4,@r0
      0054B5 8A 82            [24] 7373 	mov	dpl,r2
      0054B7 8B 83            [24] 7374 	mov	dph,r3
      0054B9 8C F0            [24] 7375 	mov	b,r4
      0054BB 12 70 DA         [24] 7376 	lcall	__gptrget
      0054BE FD               [12] 7377 	mov	r5,a
      0054BF A3               [24] 7378 	inc	dptr
      0054C0 12 70 DA         [24] 7379 	lcall	__gptrget
      0054C3 FE               [12] 7380 	mov	r6,a
      0054C4 A3               [24] 7381 	inc	dptr
      0054C5 12 70 DA         [24] 7382 	lcall	__gptrget
      0054C8 FF               [12] 7383 	mov	r7,a
      0054C9 C0 04            [24] 7384 	push	ar4
      0054CB C0 03            [24] 7385 	push	ar3
      0054CD C0 02            [24] 7386 	push	ar2
      0054CF E5 08            [12] 7387 	mov	a,_bp
      0054D1 24 0E            [12] 7388 	add	a,#0x0e
      0054D3 F8               [12] 7389 	mov	r0,a
      0054D4 E6               [12] 7390 	mov	a,@r0
      0054D5 C0 E0            [24] 7391 	push	acc
      0054D7 08               [12] 7392 	inc	r0
      0054D8 E6               [12] 7393 	mov	a,@r0
      0054D9 C0 E0            [24] 7394 	push	acc
      0054DB 08               [12] 7395 	inc	r0
      0054DC E6               [12] 7396 	mov	a,@r0
      0054DD C0 E0            [24] 7397 	push	acc
      0054DF 8D 82            [24] 7398 	mov	dpl,r5
      0054E1 8E 83            [24] 7399 	mov	dph,r6
      0054E3 8F F0            [24] 7400 	mov	b,r7
      0054E5 12 27 83         [24] 7401 	lcall	_stack_pop
      0054E8 AE 82            [24] 7402 	mov	r6,dpl
      0054EA AF 83            [24] 7403 	mov	r7,dph
      0054EC 15 81            [12] 7404 	dec	sp
      0054EE 15 81            [12] 7405 	dec	sp
      0054F0 15 81            [12] 7406 	dec	sp
      0054F2 D0 02            [24] 7407 	pop	ar2
      0054F4 D0 03            [24] 7408 	pop	ar3
      0054F6 D0 04            [24] 7409 	pop	ar4
      0054F8 EE               [12] 7410 	mov	a,r6
      0054F9 4F               [12] 7411 	orl	a,r7
      0054FA 70 25            [24] 7412 	jnz	00242$
      0054FC 7D A9            [12] 7413 	mov	r5,#___str_10
      0054FE 7C 89            [12] 7414 	mov	r4,#(___str_10 >> 8)
      005500 7B 80            [12] 7415 	mov	r3,#0x80
                                   7416 ;	calc.c:58: return;
      005502                       7417 00492$:
                                   7418 ;	calc.c:56: for (; *s; s++) putchar(*s);
      005502 8D 82            [24] 7419 	mov	dpl,r5
      005504 8C 83            [24] 7420 	mov	dph,r4
      005506 8B F0            [24] 7421 	mov	b,r3
      005508 12 70 DA         [24] 7422 	lcall	__gptrget
      00550B FF               [12] 7423 	mov	r7,a
      00550C 70 03            [24] 7424 	jnz	01400$
      00550E 02 57 13         [24] 7425 	ljmp	00249$
      005511                       7426 01400$:
      005511 7E 00            [12] 7427 	mov	r6,#0x00
      005513 8F 82            [24] 7428 	mov	dpl,r7
      005515 8E 83            [24] 7429 	mov	dph,r6
      005517 12 2B 70         [24] 7430 	lcall	_putchar
      00551A 0D               [12] 7431 	inc	r5
                                   7432 ;	calc.c:333: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00551B BD 00 E4         [24] 7433 	cjne	r5,#0x00,00492$
      00551E 0C               [12] 7434 	inc	r4
      00551F 80 E1            [24] 7435 	sjmp	00492$
      005521                       7436 00242$:
                                   7437 ;	calc.c:334: else if (!stack_pop(ctx->ps, &d1)) {
      005521 E5 08            [12] 7438 	mov	a,_bp
      005523 24 19            [12] 7439 	add	a,#0x19
      005525 FF               [12] 7440 	mov	r7,a
      005526 E5 08            [12] 7441 	mov	a,_bp
      005528 24 0E            [12] 7442 	add	a,#0x0e
      00552A F8               [12] 7443 	mov	r0,a
      00552B A6 07            [24] 7444 	mov	@r0,ar7
      00552D 08               [12] 7445 	inc	r0
      00552E 76 00            [12] 7446 	mov	@r0,#0x00
      005530 08               [12] 7447 	inc	r0
      005531 76 40            [12] 7448 	mov	@r0,#0x40
      005533 8A 82            [24] 7449 	mov	dpl,r2
      005535 8B 83            [24] 7450 	mov	dph,r3
      005537 8C F0            [24] 7451 	mov	b,r4
      005539 12 70 DA         [24] 7452 	lcall	__gptrget
      00553C FD               [12] 7453 	mov	r5,a
      00553D A3               [24] 7454 	inc	dptr
      00553E 12 70 DA         [24] 7455 	lcall	__gptrget
      005541 FE               [12] 7456 	mov	r6,a
      005542 A3               [24] 7457 	inc	dptr
      005543 12 70 DA         [24] 7458 	lcall	__gptrget
      005546 FF               [12] 7459 	mov	r7,a
      005547 C0 04            [24] 7460 	push	ar4
      005549 C0 03            [24] 7461 	push	ar3
      00554B C0 02            [24] 7462 	push	ar2
      00554D E5 08            [12] 7463 	mov	a,_bp
      00554F 24 0E            [12] 7464 	add	a,#0x0e
      005551 F8               [12] 7465 	mov	r0,a
      005552 E6               [12] 7466 	mov	a,@r0
      005553 C0 E0            [24] 7467 	push	acc
      005555 08               [12] 7468 	inc	r0
      005556 E6               [12] 7469 	mov	a,@r0
      005557 C0 E0            [24] 7470 	push	acc
      005559 08               [12] 7471 	inc	r0
      00555A E6               [12] 7472 	mov	a,@r0
      00555B C0 E0            [24] 7473 	push	acc
      00555D 8D 82            [24] 7474 	mov	dpl,r5
      00555F 8E 83            [24] 7475 	mov	dph,r6
      005561 8F F0            [24] 7476 	mov	b,r7
      005563 12 27 83         [24] 7477 	lcall	_stack_pop
      005566 AE 82            [24] 7478 	mov	r6,dpl
      005568 AF 83            [24] 7479 	mov	r7,dph
      00556A 15 81            [12] 7480 	dec	sp
      00556C 15 81            [12] 7481 	dec	sp
      00556E 15 81            [12] 7482 	dec	sp
      005570 D0 02            [24] 7483 	pop	ar2
      005572 D0 03            [24] 7484 	pop	ar3
      005574 D0 04            [24] 7485 	pop	ar4
      005576 EE               [12] 7486 	mov	a,r6
      005577 4F               [12] 7487 	orl	a,r7
      005578 70 5C            [24] 7488 	jnz	00239$
                                   7489 ;	calc.c:335: (void)stack_push(ctx->ps, d0);
      00557A 8A 82            [24] 7490 	mov	dpl,r2
      00557C 8B 83            [24] 7491 	mov	dph,r3
      00557E 8C F0            [24] 7492 	mov	b,r4
      005580 12 70 DA         [24] 7493 	lcall	__gptrget
      005583 FD               [12] 7494 	mov	r5,a
      005584 A3               [24] 7495 	inc	dptr
      005585 12 70 DA         [24] 7496 	lcall	__gptrget
      005588 FE               [12] 7497 	mov	r6,a
      005589 A3               [24] 7498 	inc	dptr
      00558A 12 70 DA         [24] 7499 	lcall	__gptrget
      00558D FF               [12] 7500 	mov	r7,a
      00558E E5 08            [12] 7501 	mov	a,_bp
      005590 24 15            [12] 7502 	add	a,#0x15
      005592 F8               [12] 7503 	mov	r0,a
      005593 E6               [12] 7504 	mov	a,@r0
      005594 C0 E0            [24] 7505 	push	acc
      005596 08               [12] 7506 	inc	r0
      005597 E6               [12] 7507 	mov	a,@r0
      005598 C0 E0            [24] 7508 	push	acc
      00559A 08               [12] 7509 	inc	r0
      00559B E6               [12] 7510 	mov	a,@r0
      00559C C0 E0            [24] 7511 	push	acc
      00559E 08               [12] 7512 	inc	r0
      00559F E6               [12] 7513 	mov	a,@r0
      0055A0 C0 E0            [24] 7514 	push	acc
      0055A2 8D 82            [24] 7515 	mov	dpl,r5
      0055A4 8E 83            [24] 7516 	mov	dph,r6
      0055A6 8F F0            [24] 7517 	mov	b,r7
      0055A8 12 26 B5         [24] 7518 	lcall	_stack_push
      0055AB E5 81            [12] 7519 	mov	a,sp
      0055AD 24 FC            [12] 7520 	add	a,#0xfc
      0055AF F5 81            [12] 7521 	mov	sp,a
                                   7522 ;	calc.c:336: printstr("\r\nstack underflow\r\n");
      0055B1 7D A9            [12] 7523 	mov	r5,#___str_10
      0055B3 7C 89            [12] 7524 	mov	r4,#(___str_10 >> 8)
      0055B5 7B 80            [12] 7525 	mov	r3,#0x80
                                   7526 ;	calc.c:58: return;
      0055B7                       7527 00495$:
                                   7528 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0055B7 8D 82            [24] 7529 	mov	dpl,r5
      0055B9 8C 83            [24] 7530 	mov	dph,r4
      0055BB 8B F0            [24] 7531 	mov	b,r3
      0055BD 12 70 DA         [24] 7532 	lcall	__gptrget
      0055C0 FF               [12] 7533 	mov	r7,a
      0055C1 70 03            [24] 7534 	jnz	01403$
      0055C3 02 57 13         [24] 7535 	ljmp	00249$
      0055C6                       7536 01403$:
      0055C6 7E 00            [12] 7537 	mov	r6,#0x00
      0055C8 8F 82            [24] 7538 	mov	dpl,r7
      0055CA 8E 83            [24] 7539 	mov	dph,r6
      0055CC 12 2B 70         [24] 7540 	lcall	_putchar
      0055CF 0D               [12] 7541 	inc	r5
                                   7542 ;	calc.c:336: printstr("\r\nstack underflow\r\n");
      0055D0 BD 00 E4         [24] 7543 	cjne	r5,#0x00,00495$
      0055D3 0C               [12] 7544 	inc	r4
      0055D4 80 E1            [24] 7545 	sjmp	00495$
      0055D6                       7546 00239$:
                                   7547 ;	calc.c:338: d1 <<= d0;
      0055D6 E5 08            [12] 7548 	mov	a,_bp
      0055D8 24 15            [12] 7549 	add	a,#0x15
      0055DA F8               [12] 7550 	mov	r0,a
      0055DB 86 F0            [24] 7551 	mov	b,@r0
      0055DD 05 F0            [12] 7552 	inc	b
      0055DF E5 08            [12] 7553 	mov	a,_bp
      0055E1 24 19            [12] 7554 	add	a,#0x19
      0055E3 F8               [12] 7555 	mov	r0,a
      0055E4 80 12            [24] 7556 	sjmp	01406$
      0055E6                       7557 01405$:
      0055E6 E6               [12] 7558 	mov	a,@r0
      0055E7 26               [12] 7559 	add	a,@r0
      0055E8 F6               [12] 7560 	mov	@r0,a
      0055E9 08               [12] 7561 	inc	r0
      0055EA E6               [12] 7562 	mov	a,@r0
      0055EB 33               [12] 7563 	rlc	a
      0055EC F6               [12] 7564 	mov	@r0,a
      0055ED 08               [12] 7565 	inc	r0
      0055EE E6               [12] 7566 	mov	a,@r0
      0055EF 33               [12] 7567 	rlc	a
      0055F0 F6               [12] 7568 	mov	@r0,a
      0055F1 08               [12] 7569 	inc	r0
      0055F2 E6               [12] 7570 	mov	a,@r0
      0055F3 33               [12] 7571 	rlc	a
      0055F4 F6               [12] 7572 	mov	@r0,a
      0055F5 18               [12] 7573 	dec	r0
      0055F6 18               [12] 7574 	dec	r0
      0055F7 18               [12] 7575 	dec	r0
      0055F8                       7576 01406$:
      0055F8 D5 F0 EB         [24] 7577 	djnz	b,01405$
                                   7578 ;	calc.c:339: (void)stack_push(ctx->ps, d1);
      0055FB 8A 82            [24] 7579 	mov	dpl,r2
      0055FD 8B 83            [24] 7580 	mov	dph,r3
      0055FF 8C F0            [24] 7581 	mov	b,r4
      005601 12 70 DA         [24] 7582 	lcall	__gptrget
      005604 FA               [12] 7583 	mov	r2,a
      005605 A3               [24] 7584 	inc	dptr
      005606 12 70 DA         [24] 7585 	lcall	__gptrget
      005609 FB               [12] 7586 	mov	r3,a
      00560A A3               [24] 7587 	inc	dptr
      00560B 12 70 DA         [24] 7588 	lcall	__gptrget
      00560E FC               [12] 7589 	mov	r4,a
      00560F E5 08            [12] 7590 	mov	a,_bp
      005611 24 19            [12] 7591 	add	a,#0x19
      005613 F8               [12] 7592 	mov	r0,a
      005614 E6               [12] 7593 	mov	a,@r0
      005615 C0 E0            [24] 7594 	push	acc
      005617 08               [12] 7595 	inc	r0
      005618 E6               [12] 7596 	mov	a,@r0
      005619 C0 E0            [24] 7597 	push	acc
      00561B 08               [12] 7598 	inc	r0
      00561C E6               [12] 7599 	mov	a,@r0
      00561D C0 E0            [24] 7600 	push	acc
      00561F 08               [12] 7601 	inc	r0
      005620 E6               [12] 7602 	mov	a,@r0
      005621 C0 E0            [24] 7603 	push	acc
      005623 8A 82            [24] 7604 	mov	dpl,r2
      005625 8B 83            [24] 7605 	mov	dph,r3
      005627 8C F0            [24] 7606 	mov	b,r4
      005629 12 26 B5         [24] 7607 	lcall	_stack_push
      00562C E5 81            [12] 7608 	mov	a,sp
      00562E 24 FC            [12] 7609 	add	a,#0xfc
      005630 F5 81            [12] 7610 	mov	sp,a
                                   7611 ;	calc.c:341: break;
      005632 02 57 13         [24] 7612 	ljmp	00249$
                                   7613 ;	calc.c:342: case '~':
      005635                       7614 00244$:
                                   7615 ;	calc.c:343: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005635 E5 08            [12] 7616 	mov	a,_bp
      005637 24 15            [12] 7617 	add	a,#0x15
      005639 FF               [12] 7618 	mov	r7,a
      00563A E5 08            [12] 7619 	mov	a,_bp
      00563C 24 0E            [12] 7620 	add	a,#0x0e
      00563E F8               [12] 7621 	mov	r0,a
      00563F A6 07            [24] 7622 	mov	@r0,ar7
      005641 08               [12] 7623 	inc	r0
      005642 76 00            [12] 7624 	mov	@r0,#0x00
      005644 08               [12] 7625 	inc	r0
      005645 76 40            [12] 7626 	mov	@r0,#0x40
      005647 E5 08            [12] 7627 	mov	a,_bp
      005649 24 12            [12] 7628 	add	a,#0x12
      00564B F8               [12] 7629 	mov	r0,a
      00564C 74 11            [12] 7630 	mov	a,#0x11
      00564E 26               [12] 7631 	add	a,@r0
      00564F FA               [12] 7632 	mov	r2,a
      005650 74 40            [12] 7633 	mov	a,#0x40
      005652 08               [12] 7634 	inc	r0
      005653 36               [12] 7635 	addc	a,@r0
      005654 FB               [12] 7636 	mov	r3,a
      005655 08               [12] 7637 	inc	r0
      005656 86 04            [24] 7638 	mov	ar4,@r0
      005658 8A 82            [24] 7639 	mov	dpl,r2
      00565A 8B 83            [24] 7640 	mov	dph,r3
      00565C 8C F0            [24] 7641 	mov	b,r4
      00565E 12 70 DA         [24] 7642 	lcall	__gptrget
      005661 FD               [12] 7643 	mov	r5,a
      005662 A3               [24] 7644 	inc	dptr
      005663 12 70 DA         [24] 7645 	lcall	__gptrget
      005666 FE               [12] 7646 	mov	r6,a
      005667 A3               [24] 7647 	inc	dptr
      005668 12 70 DA         [24] 7648 	lcall	__gptrget
      00566B FF               [12] 7649 	mov	r7,a
      00566C C0 04            [24] 7650 	push	ar4
      00566E C0 03            [24] 7651 	push	ar3
      005670 C0 02            [24] 7652 	push	ar2
      005672 E5 08            [12] 7653 	mov	a,_bp
      005674 24 0E            [12] 7654 	add	a,#0x0e
      005676 F8               [12] 7655 	mov	r0,a
      005677 E6               [12] 7656 	mov	a,@r0
      005678 C0 E0            [24] 7657 	push	acc
      00567A 08               [12] 7658 	inc	r0
      00567B E6               [12] 7659 	mov	a,@r0
      00567C C0 E0            [24] 7660 	push	acc
      00567E 08               [12] 7661 	inc	r0
      00567F E6               [12] 7662 	mov	a,@r0
      005680 C0 E0            [24] 7663 	push	acc
      005682 8D 82            [24] 7664 	mov	dpl,r5
      005684 8E 83            [24] 7665 	mov	dph,r6
      005686 8F F0            [24] 7666 	mov	b,r7
      005688 12 27 83         [24] 7667 	lcall	_stack_pop
      00568B AE 82            [24] 7668 	mov	r6,dpl
      00568D AF 83            [24] 7669 	mov	r7,dph
      00568F 15 81            [12] 7670 	dec	sp
      005691 15 81            [12] 7671 	dec	sp
      005693 15 81            [12] 7672 	dec	sp
      005695 D0 02            [24] 7673 	pop	ar2
      005697 D0 03            [24] 7674 	pop	ar3
      005699 D0 04            [24] 7675 	pop	ar4
      00569B EE               [12] 7676 	mov	a,r6
      00569C 4F               [12] 7677 	orl	a,r7
      00569D 70 22            [24] 7678 	jnz	00246$
      00569F 7D A9            [12] 7679 	mov	r5,#___str_10
      0056A1 7C 89            [12] 7680 	mov	r4,#(___str_10 >> 8)
      0056A3 7B 80            [12] 7681 	mov	r3,#0x80
                                   7682 ;	calc.c:58: return;
      0056A5                       7683 00498$:
                                   7684 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0056A5 8D 82            [24] 7685 	mov	dpl,r5
      0056A7 8C 83            [24] 7686 	mov	dph,r4
      0056A9 8B F0            [24] 7687 	mov	b,r3
      0056AB 12 70 DA         [24] 7688 	lcall	__gptrget
      0056AE FF               [12] 7689 	mov	r7,a
      0056AF 60 62            [24] 7690 	jz	00249$
      0056B1 7E 00            [12] 7691 	mov	r6,#0x00
      0056B3 8F 82            [24] 7692 	mov	dpl,r7
      0056B5 8E 83            [24] 7693 	mov	dph,r6
      0056B7 12 2B 70         [24] 7694 	lcall	_putchar
      0056BA 0D               [12] 7695 	inc	r5
                                   7696 ;	calc.c:343: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0056BB BD 00 E7         [24] 7697 	cjne	r5,#0x00,00498$
      0056BE 0C               [12] 7698 	inc	r4
      0056BF 80 E4            [24] 7699 	sjmp	00498$
      0056C1                       7700 00246$:
                                   7701 ;	calc.c:345: d0 = ~d0;
      0056C1 E5 08            [12] 7702 	mov	a,_bp
      0056C3 24 15            [12] 7703 	add	a,#0x15
      0056C5 F8               [12] 7704 	mov	r0,a
      0056C6 E6               [12] 7705 	mov	a,@r0
      0056C7 F4               [12] 7706 	cpl	a
      0056C8 F6               [12] 7707 	mov	@r0,a
      0056C9 08               [12] 7708 	inc	r0
      0056CA E6               [12] 7709 	mov	a,@r0
      0056CB F4               [12] 7710 	cpl	a
      0056CC F6               [12] 7711 	mov	@r0,a
      0056CD 08               [12] 7712 	inc	r0
      0056CE E6               [12] 7713 	mov	a,@r0
      0056CF F4               [12] 7714 	cpl	a
      0056D0 F6               [12] 7715 	mov	@r0,a
      0056D1 08               [12] 7716 	inc	r0
      0056D2 E6               [12] 7717 	mov	a,@r0
      0056D3 F4               [12] 7718 	cpl	a
      0056D4 F6               [12] 7719 	mov	@r0,a
                                   7720 ;	calc.c:346: (void)stack_push(ctx->ps, d0);
      0056D5 8A 82            [24] 7721 	mov	dpl,r2
      0056D7 8B 83            [24] 7722 	mov	dph,r3
      0056D9 8C F0            [24] 7723 	mov	b,r4
      0056DB 12 70 DA         [24] 7724 	lcall	__gptrget
      0056DE FA               [12] 7725 	mov	r2,a
      0056DF A3               [24] 7726 	inc	dptr
      0056E0 12 70 DA         [24] 7727 	lcall	__gptrget
      0056E3 FB               [12] 7728 	mov	r3,a
      0056E4 A3               [24] 7729 	inc	dptr
      0056E5 12 70 DA         [24] 7730 	lcall	__gptrget
      0056E8 FC               [12] 7731 	mov	r4,a
      0056E9 E5 08            [12] 7732 	mov	a,_bp
      0056EB 24 15            [12] 7733 	add	a,#0x15
      0056ED F8               [12] 7734 	mov	r0,a
      0056EE E6               [12] 7735 	mov	a,@r0
      0056EF C0 E0            [24] 7736 	push	acc
      0056F1 08               [12] 7737 	inc	r0
      0056F2 E6               [12] 7738 	mov	a,@r0
      0056F3 C0 E0            [24] 7739 	push	acc
      0056F5 08               [12] 7740 	inc	r0
      0056F6 E6               [12] 7741 	mov	a,@r0
      0056F7 C0 E0            [24] 7742 	push	acc
      0056F9 08               [12] 7743 	inc	r0
      0056FA E6               [12] 7744 	mov	a,@r0
      0056FB C0 E0            [24] 7745 	push	acc
      0056FD 8A 82            [24] 7746 	mov	dpl,r2
      0056FF 8B 83            [24] 7747 	mov	dph,r3
      005701 8C F0            [24] 7748 	mov	b,r4
      005703 12 26 B5         [24] 7749 	lcall	_stack_push
      005706 E5 81            [12] 7750 	mov	a,sp
      005708 24 FC            [12] 7751 	add	a,#0xfc
      00570A F5 81            [12] 7752 	mov	sp,a
                                   7753 ;	calc.c:348: break;
                                   7754 ;	calc.c:349: default:
      00570C 80 05            [24] 7755 	sjmp	00249$
      00570E                       7756 00248$:
                                   7757 ;	calc.c:350: return UNDEF;
      00570E 90 80 00         [24] 7758 	mov	dptr,#0x8000
                                   7759 ;	calc.c:351: }
      005711 80 03            [24] 7760 	sjmp	00500$
      005713                       7761 00249$:
                                   7762 ;	calc.c:353: return 1;
      005713 90 00 01         [24] 7763 	mov	dptr,#0x0001
      005716                       7764 00500$:
                                   7765 ;	calc.c:354: }
      005716 85 08 81         [24] 7766 	mov	sp,_bp
      005719 D0 08            [24] 7767 	pop	_bp
      00571B 22               [24] 7768 	ret
                                   7769 ;------------------------------------------------------------
                                   7770 ;Allocation info for local variables in function 'push_acc'
                                   7771 ;------------------------------------------------------------
                                   7772 ;delta                     Allocated to stack - _bp -5
                                   7773 ;_ctx                      Allocated to stack - _bp +1
                                   7774 ;ctx                       Allocated to registers r2 r3 r4 
                                   7775 ;__1310720127              Allocated to registers 
                                   7776 ;s                         Allocated to registers r5 r6 r7 
                                   7777 ;sloc0                     Allocated to stack - _bp +4
                                   7778 ;------------------------------------------------------------
                                   7779 ;	calc.c:356: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7780 ;	-----------------------------------------
                                   7781 ;	 function push_acc
                                   7782 ;	-----------------------------------------
      00571C                       7783 _push_acc:
      00571C C0 08            [24] 7784 	push	_bp
      00571E 85 81 08         [24] 7785 	mov	_bp,sp
      005721 C0 82            [24] 7786 	push	dpl
      005723 C0 83            [24] 7787 	push	dph
      005725 C0 F0            [24] 7788 	push	b
      005727 E5 81            [12] 7789 	mov	a,sp
      005729 24 04            [12] 7790 	add	a,#0x04
      00572B F5 81            [12] 7791 	mov	sp,a
                                   7792 ;	calc.c:357: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      00572D A8 08            [24] 7793 	mov	r0,_bp
      00572F 08               [12] 7794 	inc	r0
      005730 86 02            [24] 7795 	mov	ar2,@r0
      005732 08               [12] 7796 	inc	r0
      005733 86 03            [24] 7797 	mov	ar3,@r0
      005735 08               [12] 7798 	inc	r0
      005736 86 04            [24] 7799 	mov	ar4,@r0
                                   7800 ;	calc.c:361: ctx->acc_valid = 0;
      005738 74 06            [12] 7801 	mov	a,#0x06
      00573A 2A               [12] 7802 	add	a,r2
      00573B FD               [12] 7803 	mov	r5,a
      00573C E4               [12] 7804 	clr	a
      00573D 3B               [12] 7805 	addc	a,r3
      00573E FE               [12] 7806 	mov	r6,a
      00573F 8C 07            [24] 7807 	mov	ar7,r4
      005741 8D 82            [24] 7808 	mov	dpl,r5
      005743 8E 83            [24] 7809 	mov	dph,r6
      005745 8F F0            [24] 7810 	mov	b,r7
      005747 E4               [12] 7811 	clr	a
      005748 12 6C 5F         [24] 7812 	lcall	__gptrput
                                   7813 ;	calc.c:362: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      00574B 74 02            [12] 7814 	mov	a,#0x02
      00574D 2A               [12] 7815 	add	a,r2
      00574E FF               [12] 7816 	mov	r7,a
      00574F E4               [12] 7817 	clr	a
      005750 3B               [12] 7818 	addc	a,r3
      005751 FD               [12] 7819 	mov	r5,a
      005752 8C 06            [24] 7820 	mov	ar6,r4
      005754 8F 82            [24] 7821 	mov	dpl,r7
      005756 8D 83            [24] 7822 	mov	dph,r5
      005758 8E F0            [24] 7823 	mov	b,r6
      00575A E5 08            [12] 7824 	mov	a,_bp
      00575C 24 04            [12] 7825 	add	a,#0x04
      00575E F8               [12] 7826 	mov	r0,a
      00575F 12 70 DA         [24] 7827 	lcall	__gptrget
      005762 F6               [12] 7828 	mov	@r0,a
      005763 A3               [24] 7829 	inc	dptr
      005764 12 70 DA         [24] 7830 	lcall	__gptrget
      005767 08               [12] 7831 	inc	r0
      005768 F6               [12] 7832 	mov	@r0,a
      005769 A3               [24] 7833 	inc	dptr
      00576A 12 70 DA         [24] 7834 	lcall	__gptrget
      00576D 08               [12] 7835 	inc	r0
      00576E F6               [12] 7836 	mov	@r0,a
      00576F A3               [24] 7837 	inc	dptr
      005770 12 70 DA         [24] 7838 	lcall	__gptrget
      005773 08               [12] 7839 	inc	r0
      005774 F6               [12] 7840 	mov	@r0,a
      005775 74 11            [12] 7841 	mov	a,#0x11
      005777 2A               [12] 7842 	add	a,r2
      005778 FA               [12] 7843 	mov	r2,a
      005779 74 40            [12] 7844 	mov	a,#0x40
      00577B 3B               [12] 7845 	addc	a,r3
      00577C FB               [12] 7846 	mov	r3,a
      00577D 8C 07            [24] 7847 	mov	ar7,r4
      00577F 8A 82            [24] 7848 	mov	dpl,r2
      005781 8B 83            [24] 7849 	mov	dph,r3
      005783 8F F0            [24] 7850 	mov	b,r7
      005785 12 70 DA         [24] 7851 	lcall	__gptrget
      005788 FA               [12] 7852 	mov	r2,a
      005789 A3               [24] 7853 	inc	dptr
      00578A 12 70 DA         [24] 7854 	lcall	__gptrget
      00578D FB               [12] 7855 	mov	r3,a
      00578E A3               [24] 7856 	inc	dptr
      00578F 12 70 DA         [24] 7857 	lcall	__gptrget
      005792 FF               [12] 7858 	mov	r7,a
      005793 E5 08            [12] 7859 	mov	a,_bp
      005795 24 04            [12] 7860 	add	a,#0x04
      005797 F8               [12] 7861 	mov	r0,a
      005798 E6               [12] 7862 	mov	a,@r0
      005799 C0 E0            [24] 7863 	push	acc
      00579B 08               [12] 7864 	inc	r0
      00579C E6               [12] 7865 	mov	a,@r0
      00579D C0 E0            [24] 7866 	push	acc
      00579F 08               [12] 7867 	inc	r0
      0057A0 E6               [12] 7868 	mov	a,@r0
      0057A1 C0 E0            [24] 7869 	push	acc
      0057A3 08               [12] 7870 	inc	r0
      0057A4 E6               [12] 7871 	mov	a,@r0
      0057A5 C0 E0            [24] 7872 	push	acc
      0057A7 8A 82            [24] 7873 	mov	dpl,r2
      0057A9 8B 83            [24] 7874 	mov	dph,r3
      0057AB 8F F0            [24] 7875 	mov	b,r7
      0057AD 12 26 B5         [24] 7876 	lcall	_stack_push
      0057B0 AE 82            [24] 7877 	mov	r6,dpl
      0057B2 AF 83            [24] 7878 	mov	r7,dph
      0057B4 E5 81            [12] 7879 	mov	a,sp
      0057B6 24 FC            [12] 7880 	add	a,#0xfc
      0057B8 F5 81            [12] 7881 	mov	sp,a
      0057BA EE               [12] 7882 	mov	a,r6
      0057BB 4F               [12] 7883 	orl	a,r7
      0057BC 70 22            [24] 7884 	jnz	00102$
      0057BE 7D F8            [12] 7885 	mov	r5,#___str_13
      0057C0 7E 89            [12] 7886 	mov	r6,#(___str_13 >> 8)
      0057C2 7F 80            [12] 7887 	mov	r7,#0x80
                                   7888 ;	calc.c:58: return;
      0057C4                       7889 00109$:
                                   7890 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0057C4 8D 82            [24] 7891 	mov	dpl,r5
      0057C6 8E 83            [24] 7892 	mov	dph,r6
      0057C8 8F F0            [24] 7893 	mov	b,r7
      0057CA 12 70 DA         [24] 7894 	lcall	__gptrget
      0057CD FC               [12] 7895 	mov	r4,a
      0057CE 60 10            [24] 7896 	jz	00102$
      0057D0 7B 00            [12] 7897 	mov	r3,#0x00
      0057D2 8C 82            [24] 7898 	mov	dpl,r4
      0057D4 8B 83            [24] 7899 	mov	dph,r3
      0057D6 12 2B 70         [24] 7900 	lcall	_putchar
      0057D9 0D               [12] 7901 	inc	r5
                                   7902 ;	calc.c:362: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      0057DA BD 00 E7         [24] 7903 	cjne	r5,#0x00,00109$
      0057DD 0E               [12] 7904 	inc	r6
      0057DE 80 E4            [24] 7905 	sjmp	00109$
      0057E0                       7906 00102$:
                                   7907 ;	calc.c:364: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      0057E0 E5 08            [12] 7908 	mov	a,_bp
      0057E2 24 FB            [12] 7909 	add	a,#0xfb
      0057E4 F8               [12] 7910 	mov	r0,a
      0057E5 86 05            [24] 7911 	mov	ar5,@r0
      0057E7 08               [12] 7912 	inc	r0
      0057E8 86 06            [24] 7913 	mov	ar6,@r0
      0057EA 08               [12] 7914 	inc	r0
      0057EB 86 07            [24] 7915 	mov	ar7,@r0
      0057ED 74 02            [12] 7916 	mov	a,#0x02
      0057EF 2D               [12] 7917 	add	a,r5
      0057F0 FA               [12] 7918 	mov	r2,a
      0057F1 E4               [12] 7919 	clr	a
      0057F2 3E               [12] 7920 	addc	a,r6
      0057F3 FB               [12] 7921 	mov	r3,a
      0057F4 8F 04            [24] 7922 	mov	ar4,r7
      0057F6 8A 82            [24] 7923 	mov	dpl,r2
      0057F8 8B 83            [24] 7924 	mov	dph,r3
      0057FA 8C F0            [24] 7925 	mov	b,r4
      0057FC 12 70 DA         [24] 7926 	lcall	__gptrget
      0057FF FA               [12] 7927 	mov	r2,a
      005800 A3               [24] 7928 	inc	dptr
      005801 12 70 DA         [24] 7929 	lcall	__gptrget
      005804 FB               [12] 7930 	mov	r3,a
      005805 BA 02 27         [24] 7931 	cjne	r2,#0x02,00104$
      005808 BB 00 24         [24] 7932 	cjne	r3,#0x00,00104$
      00580B C0 05            [24] 7933 	push	ar5
      00580D C0 06            [24] 7934 	push	ar6
      00580F C0 07            [24] 7935 	push	ar7
      005811 A8 08            [24] 7936 	mov	r0,_bp
      005813 08               [12] 7937 	inc	r0
      005814 86 82            [24] 7938 	mov	dpl,@r0
      005816 08               [12] 7939 	inc	r0
      005817 86 83            [24] 7940 	mov	dph,@r0
      005819 08               [12] 7941 	inc	r0
      00581A 86 F0            [24] 7942 	mov	b,@r0
      00581C 12 34 22         [24] 7943 	lcall	_operator
      00581F AE 82            [24] 7944 	mov	r6,dpl
      005821 AF 83            [24] 7945 	mov	r7,dph
      005823 15 81            [12] 7946 	dec	sp
      005825 15 81            [12] 7947 	dec	sp
      005827 15 81            [12] 7948 	dec	sp
      005829 8E 82            [24] 7949 	mov	dpl,r6
      00582B 8F 83            [24] 7950 	mov	dph,r7
      00582D 80 03            [24] 7951 	sjmp	00111$
      00582F                       7952 00104$:
                                   7953 ;	calc.c:365: else return 1;
      00582F 90 00 01         [24] 7954 	mov	dptr,#0x0001
      005832                       7955 00111$:
                                   7956 ;	calc.c:366: }
      005832 85 08 81         [24] 7957 	mov	sp,_bp
      005835 D0 08            [24] 7958 	pop	_bp
      005837 22               [24] 7959 	ret
                                   7960 ;------------------------------------------------------------
                                   7961 ;Allocation info for local variables in function 'reset_acc'
                                   7962 ;------------------------------------------------------------
                                   7963 ;delta                     Allocated to stack - _bp -5
                                   7964 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7965 ;ctx                       Allocated to registers r5 r6 r7 
                                   7966 ;------------------------------------------------------------
                                   7967 ;	calc.c:368: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7968 ;	-----------------------------------------
                                   7969 ;	 function reset_acc
                                   7970 ;	-----------------------------------------
      005838                       7971 _reset_acc:
      005838 C0 08            [24] 7972 	push	_bp
      00583A 85 81 08         [24] 7973 	mov	_bp,sp
      00583D AD 82            [24] 7974 	mov	r5,dpl
      00583F AE 83            [24] 7975 	mov	r6,dph
      005841 AF F0            [24] 7976 	mov	r7,b
                                   7977 ;	calc.c:369: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   7978 ;	calc.c:371: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      005843 E5 08            [12] 7979 	mov	a,_bp
      005845 24 FB            [12] 7980 	add	a,#0xfb
      005847 F8               [12] 7981 	mov	r0,a
      005848 86 02            [24] 7982 	mov	ar2,@r0
      00584A 08               [12] 7983 	inc	r0
      00584B 86 03            [24] 7984 	mov	ar3,@r0
      00584D 08               [12] 7985 	inc	r0
      00584E 86 04            [24] 7986 	mov	ar4,@r0
      005850 74 02            [12] 7987 	mov	a,#0x02
      005852 2A               [12] 7988 	add	a,r2
      005853 FA               [12] 7989 	mov	r2,a
      005854 E4               [12] 7990 	clr	a
      005855 3B               [12] 7991 	addc	a,r3
      005856 FB               [12] 7992 	mov	r3,a
      005857 8A 82            [24] 7993 	mov	dpl,r2
      005859 8B 83            [24] 7994 	mov	dph,r3
      00585B 8C F0            [24] 7995 	mov	b,r4
      00585D 12 70 DA         [24] 7996 	lcall	__gptrget
      005860 FA               [12] 7997 	mov	r2,a
      005861 A3               [24] 7998 	inc	dptr
      005862 12 70 DA         [24] 7999 	lcall	__gptrget
      005865 FB               [12] 8000 	mov	r3,a
      005866 BA 07 16         [24] 8001 	cjne	r2,#0x07,00102$
      005869 BB 00 13         [24] 8002 	cjne	r3,#0x00,00102$
      00586C 74 06            [12] 8003 	mov	a,#0x06
      00586E 2D               [12] 8004 	add	a,r5
      00586F FA               [12] 8005 	mov	r2,a
      005870 E4               [12] 8006 	clr	a
      005871 3E               [12] 8007 	addc	a,r6
      005872 FB               [12] 8008 	mov	r3,a
      005873 8F 04            [24] 8009 	mov	ar4,r7
      005875 8A 82            [24] 8010 	mov	dpl,r2
      005877 8B 83            [24] 8011 	mov	dph,r3
      005879 8C F0            [24] 8012 	mov	b,r4
      00587B E4               [12] 8013 	clr	a
      00587C 12 6C 5F         [24] 8014 	lcall	__gptrput
      00587F                       8015 00102$:
                                   8016 ;	calc.c:372: ctx->acc = 0l;
      00587F 74 02            [12] 8017 	mov	a,#0x02
      005881 2D               [12] 8018 	add	a,r5
      005882 FD               [12] 8019 	mov	r5,a
      005883 E4               [12] 8020 	clr	a
      005884 3E               [12] 8021 	addc	a,r6
      005885 FE               [12] 8022 	mov	r6,a
      005886 8D 82            [24] 8023 	mov	dpl,r5
      005888 8E 83            [24] 8024 	mov	dph,r6
      00588A 8F F0            [24] 8025 	mov	b,r7
      00588C E4               [12] 8026 	clr	a
      00588D 12 6C 5F         [24] 8027 	lcall	__gptrput
      005890 A3               [24] 8028 	inc	dptr
      005891 12 6C 5F         [24] 8029 	lcall	__gptrput
      005894 A3               [24] 8030 	inc	dptr
      005895 12 6C 5F         [24] 8031 	lcall	__gptrput
      005898 A3               [24] 8032 	inc	dptr
      005899 12 6C 5F         [24] 8033 	lcall	__gptrput
                                   8034 ;	calc.c:374: return 1;
      00589C 90 00 01         [24] 8035 	mov	dptr,#0x0001
                                   8036 ;	calc.c:375: }
      00589F D0 08            [24] 8037 	pop	_bp
      0058A1 22               [24] 8038 	ret
                                   8039 ;------------------------------------------------------------
                                   8040 ;Allocation info for local variables in function 'reset_base'
                                   8041 ;------------------------------------------------------------
                                   8042 ;delta                     Allocated to stack - _bp -5
                                   8043 ;_ctx                      Allocated to registers r5 r6 r7 
                                   8044 ;ctx                       Allocated to registers r5 r6 r7 
                                   8045 ;------------------------------------------------------------
                                   8046 ;	calc.c:377: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   8047 ;	-----------------------------------------
                                   8048 ;	 function reset_base
                                   8049 ;	-----------------------------------------
      0058A2                       8050 _reset_base:
      0058A2 C0 08            [24] 8051 	push	_bp
      0058A4 85 81 08         [24] 8052 	mov	_bp,sp
      0058A7 AD 82            [24] 8053 	mov	r5,dpl
      0058A9 AE 83            [24] 8054 	mov	r6,dph
      0058AB AF F0            [24] 8055 	mov	r7,b
                                   8056 ;	calc.c:378: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   8057 ;	calc.c:382: switch (ctx->digit[0]) {
      0058AD 74 07            [12] 8058 	mov	a,#0x07
      0058AF 2D               [12] 8059 	add	a,r5
      0058B0 FA               [12] 8060 	mov	r2,a
      0058B1 E4               [12] 8061 	clr	a
      0058B2 3E               [12] 8062 	addc	a,r6
      0058B3 FB               [12] 8063 	mov	r3,a
      0058B4 8F 04            [24] 8064 	mov	ar4,r7
      0058B6 8A 82            [24] 8065 	mov	dpl,r2
      0058B8 8B 83            [24] 8066 	mov	dph,r3
      0058BA 8C F0            [24] 8067 	mov	b,r4
      0058BC 12 70 DA         [24] 8068 	lcall	__gptrget
      0058BF FC               [12] 8069 	mov	r4,a
      0058C0 BC 48 02         [24] 8070 	cjne	r4,#0x48,00124$
      0058C3 80 0F            [24] 8071 	sjmp	00101$
      0058C5                       8072 00124$:
      0058C5 BC 4F 02         [24] 8073 	cjne	r4,#0x4f,00125$
      0058C8 80 2E            [24] 8074 	sjmp	00103$
      0058CA                       8075 00125$:
      0058CA BC 68 02         [24] 8076 	cjne	r4,#0x68,00126$
      0058CD 80 17            [24] 8077 	sjmp	00102$
      0058CF                       8078 00126$:
                                   8079 ;	calc.c:383: case 'H':
      0058CF BC 6F 48         [24] 8080 	cjne	r4,#0x6f,00105$
      0058D2 80 36            [24] 8081 	sjmp	00104$
      0058D4                       8082 00101$:
                                   8083 ;	calc.c:384: ctx->base = 16;
      0058D4 8D 82            [24] 8084 	mov	dpl,r5
      0058D6 8E 83            [24] 8085 	mov	dph,r6
      0058D8 8F F0            [24] 8086 	mov	b,r7
      0058DA 74 10            [12] 8087 	mov	a,#0x10
      0058DC 12 6C 5F         [24] 8088 	lcall	__gptrput
      0058DF A3               [24] 8089 	inc	dptr
      0058E0 E4               [12] 8090 	clr	a
      0058E1 12 6C 5F         [24] 8091 	lcall	__gptrput
                                   8092 ;	calc.c:385: break;
                                   8093 ;	calc.c:386: case 'h':
      0058E4 80 34            [24] 8094 	sjmp	00105$
      0058E6                       8095 00102$:
                                   8096 ;	calc.c:387: ctx->base = 10;
      0058E6 8D 82            [24] 8097 	mov	dpl,r5
      0058E8 8E 83            [24] 8098 	mov	dph,r6
      0058EA 8F F0            [24] 8099 	mov	b,r7
      0058EC 74 0A            [12] 8100 	mov	a,#0x0a
      0058EE 12 6C 5F         [24] 8101 	lcall	__gptrput
      0058F1 A3               [24] 8102 	inc	dptr
      0058F2 E4               [12] 8103 	clr	a
      0058F3 12 6C 5F         [24] 8104 	lcall	__gptrput
                                   8105 ;	calc.c:388: break;
                                   8106 ;	calc.c:389: case 'O':
      0058F6 80 22            [24] 8107 	sjmp	00105$
      0058F8                       8108 00103$:
                                   8109 ;	calc.c:390: ctx->base = 8;
      0058F8 8D 82            [24] 8110 	mov	dpl,r5
      0058FA 8E 83            [24] 8111 	mov	dph,r6
      0058FC 8F F0            [24] 8112 	mov	b,r7
      0058FE 74 08            [12] 8113 	mov	a,#0x08
      005900 12 6C 5F         [24] 8114 	lcall	__gptrput
      005903 A3               [24] 8115 	inc	dptr
      005904 E4               [12] 8116 	clr	a
      005905 12 6C 5F         [24] 8117 	lcall	__gptrput
                                   8118 ;	calc.c:391: break;
                                   8119 ;	calc.c:392: case 'o':
      005908 80 10            [24] 8120 	sjmp	00105$
      00590A                       8121 00104$:
                                   8122 ;	calc.c:393: ctx->base = 2;
      00590A 8D 82            [24] 8123 	mov	dpl,r5
      00590C 8E 83            [24] 8124 	mov	dph,r6
      00590E 8F F0            [24] 8125 	mov	b,r7
      005910 74 02            [12] 8126 	mov	a,#0x02
      005912 12 6C 5F         [24] 8127 	lcall	__gptrput
      005915 A3               [24] 8128 	inc	dptr
      005916 E4               [12] 8129 	clr	a
      005917 12 6C 5F         [24] 8130 	lcall	__gptrput
                                   8131 ;	calc.c:395: }
      00591A                       8132 00105$:
                                   8133 ;	calc.c:397: return 1;
      00591A 90 00 01         [24] 8134 	mov	dptr,#0x0001
                                   8135 ;	calc.c:398: }
      00591D D0 08            [24] 8136 	pop	_bp
      00591F 22               [24] 8137 	ret
                                   8138 ;------------------------------------------------------------
                                   8139 ;Allocation info for local variables in function 'status'
                                   8140 ;------------------------------------------------------------
                                   8141 ;delta                     Allocated to stack - _bp -5
                                   8142 ;_ctx                      Allocated to registers r5 r6 r7 
                                   8143 ;ctx                       Allocated to stack - _bp +11
                                   8144 ;vals                      Allocated to stack - _bp +14
                                   8145 ;n                         Allocated to stack - _bp +9
                                   8146 ;__1310720129              Allocated to registers 
                                   8147 ;s                         Allocated to registers r5 r6 r7 
                                   8148 ;__1310720131              Allocated to registers r5 r6 r7 r4 
                                   8149 ;d                         Allocated to registers 
                                   8150 ;__1310720001              Allocated to registers 
                                   8151 ;d                         Allocated to stack - _bp +22
                                   8152 ;mask                      Allocated to stack - _bp +26
                                   8153 ;__1310720133              Allocated to registers 
                                   8154 ;s                         Allocated to registers r3 r4 r5 
                                   8155 ;__1310720135              Allocated to registers r2 r3 r4 r5 
                                   8156 ;d                         Allocated to registers 
                                   8157 ;__1310720001              Allocated to registers 
                                   8158 ;d                         Allocated to stack - _bp +22
                                   8159 ;mask                      Allocated to stack - _bp +26
                                   8160 ;__1310720137              Allocated to registers 
                                   8161 ;s                         Allocated to registers r3 r4 r5 
                                   8162 ;__1310720139              Allocated to registers r4 r5 r6 r7 
                                   8163 ;d                         Allocated to registers 
                                   8164 ;__1310720001              Allocated to registers 
                                   8165 ;d                         Allocated to stack - _bp +22
                                   8166 ;mask                      Allocated to stack - _bp +26
                                   8167 ;__1310720141              Allocated to registers 
                                   8168 ;s                         Allocated to registers r3 r4 r5 
                                   8169 ;__1310720143              Allocated to registers r2 r3 r4 r5 
                                   8170 ;d                         Allocated to registers 
                                   8171 ;__1310720001              Allocated to registers 
                                   8172 ;d                         Allocated to stack - _bp +22
                                   8173 ;mask                      Allocated to stack - _bp +26
                                   8174 ;__1310720145              Allocated to registers 
                                   8175 ;s                         Allocated to registers r5 r6 r7 
                                   8176 ;__1310720147              Allocated to registers r4 r5 r6 r7 
                                   8177 ;d                         Allocated to registers 
                                   8178 ;__1310720001              Allocated to registers 
                                   8179 ;d                         Allocated to stack - _bp +22
                                   8180 ;mask                      Allocated to stack - _bp +26
                                   8181 ;__1310720149              Allocated to registers 
                                   8182 ;s                         Allocated to registers r5 r6 r7 
                                   8183 ;sloc0                     Allocated to stack - _bp +1
                                   8184 ;sloc1                     Allocated to stack - _bp +4
                                   8185 ;sloc2                     Allocated to stack - _bp +7
                                   8186 ;------------------------------------------------------------
                                   8187 ;	calc.c:400: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   8188 ;	-----------------------------------------
                                   8189 ;	 function status
                                   8190 ;	-----------------------------------------
      005920                       8191 _status:
      005920 C0 08            [24] 8192 	push	_bp
      005922 E5 81            [12] 8193 	mov	a,sp
      005924 F5 08            [12] 8194 	mov	_bp,a
      005926 24 1D            [12] 8195 	add	a,#0x1d
      005928 F5 81            [12] 8196 	mov	sp,a
      00592A AD 82            [24] 8197 	mov	r5,dpl
      00592C AE 83            [24] 8198 	mov	r6,dph
      00592E AF F0            [24] 8199 	mov	r7,b
                                   8200 ;	calc.c:401: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      005930 E5 08            [12] 8201 	mov	a,_bp
      005932 24 0B            [12] 8202 	add	a,#0x0b
      005934 F8               [12] 8203 	mov	r0,a
      005935 A6 05            [24] 8204 	mov	@r0,ar5
      005937 08               [12] 8205 	inc	r0
      005938 A6 06            [24] 8206 	mov	@r0,ar6
      00593A 08               [12] 8207 	inc	r0
      00593B A6 07            [24] 8208 	mov	@r0,ar7
                                   8209 ;	calc.c:407: printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
      00593D E5 08            [12] 8210 	mov	a,_bp
      00593F 24 0B            [12] 8211 	add	a,#0x0b
      005941 F8               [12] 8212 	mov	r0,a
      005942 86 82            [24] 8213 	mov	dpl,@r0
      005944 08               [12] 8214 	inc	r0
      005945 86 83            [24] 8215 	mov	dph,@r0
      005947 08               [12] 8216 	inc	r0
      005948 86 F0            [24] 8217 	mov	b,@r0
      00594A E5 08            [12] 8218 	mov	a,_bp
      00594C 24 07            [12] 8219 	add	a,#0x07
      00594E F9               [12] 8220 	mov	r1,a
      00594F 12 70 DA         [24] 8221 	lcall	__gptrget
      005952 F7               [12] 8222 	mov	@r1,a
      005953 A3               [24] 8223 	inc	dptr
      005954 12 70 DA         [24] 8224 	lcall	__gptrget
      005957 09               [12] 8225 	inc	r1
      005958 F7               [12] 8226 	mov	@r1,a
      005959 E5 08            [12] 8227 	mov	a,_bp
      00595B 24 0B            [12] 8228 	add	a,#0x0b
      00595D F8               [12] 8229 	mov	r0,a
      00595E A9 08            [24] 8230 	mov	r1,_bp
      005960 09               [12] 8231 	inc	r1
      005961 74 14            [12] 8232 	mov	a,#0x14
      005963 26               [12] 8233 	add	a,@r0
      005964 F7               [12] 8234 	mov	@r1,a
      005965 74 40            [12] 8235 	mov	a,#0x40
      005967 08               [12] 8236 	inc	r0
      005968 36               [12] 8237 	addc	a,@r0
      005969 09               [12] 8238 	inc	r1
      00596A F7               [12] 8239 	mov	@r1,a
      00596B 08               [12] 8240 	inc	r0
      00596C 09               [12] 8241 	inc	r1
      00596D E6               [12] 8242 	mov	a,@r0
      00596E F7               [12] 8243 	mov	@r1,a
      00596F A8 08            [24] 8244 	mov	r0,_bp
      005971 08               [12] 8245 	inc	r0
      005972 86 82            [24] 8246 	mov	dpl,@r0
      005974 08               [12] 8247 	inc	r0
      005975 86 83            [24] 8248 	mov	dph,@r0
      005977 08               [12] 8249 	inc	r0
      005978 86 F0            [24] 8250 	mov	b,@r0
      00597A 12 70 DA         [24] 8251 	lcall	__gptrget
      00597D FA               [12] 8252 	mov	r2,a
      00597E A3               [24] 8253 	inc	dptr
      00597F 12 70 DA         [24] 8254 	lcall	__gptrget
      005982 FE               [12] 8255 	mov	r6,a
      005983 A3               [24] 8256 	inc	dptr
      005984 12 70 DA         [24] 8257 	lcall	__gptrget
      005987 FF               [12] 8258 	mov	r7,a
      005988 E5 08            [12] 8259 	mov	a,_bp
      00598A 24 0B            [12] 8260 	add	a,#0x0b
      00598C F8               [12] 8261 	mov	r0,a
      00598D E5 08            [12] 8262 	mov	a,_bp
      00598F 24 04            [12] 8263 	add	a,#0x04
      005991 F9               [12] 8264 	mov	r1,a
      005992 74 11            [12] 8265 	mov	a,#0x11
      005994 26               [12] 8266 	add	a,@r0
      005995 F7               [12] 8267 	mov	@r1,a
      005996 74 40            [12] 8268 	mov	a,#0x40
      005998 08               [12] 8269 	inc	r0
      005999 36               [12] 8270 	addc	a,@r0
      00599A 09               [12] 8271 	inc	r1
      00599B F7               [12] 8272 	mov	@r1,a
      00599C 08               [12] 8273 	inc	r0
      00599D 09               [12] 8274 	inc	r1
      00599E E6               [12] 8275 	mov	a,@r0
      00599F F7               [12] 8276 	mov	@r1,a
      0059A0 E5 08            [12] 8277 	mov	a,_bp
      0059A2 24 04            [12] 8278 	add	a,#0x04
      0059A4 F8               [12] 8279 	mov	r0,a
      0059A5 86 82            [24] 8280 	mov	dpl,@r0
      0059A7 08               [12] 8281 	inc	r0
      0059A8 86 83            [24] 8282 	mov	dph,@r0
      0059AA 08               [12] 8283 	inc	r0
      0059AB 86 F0            [24] 8284 	mov	b,@r0
      0059AD 12 70 DA         [24] 8285 	lcall	__gptrget
      0059B0 FB               [12] 8286 	mov	r3,a
      0059B1 A3               [24] 8287 	inc	dptr
      0059B2 12 70 DA         [24] 8288 	lcall	__gptrget
      0059B5 FC               [12] 8289 	mov	r4,a
      0059B6 A3               [24] 8290 	inc	dptr
      0059B7 12 70 DA         [24] 8291 	lcall	__gptrget
      0059BA FD               [12] 8292 	mov	r5,a
      0059BB E5 08            [12] 8293 	mov	a,_bp
      0059BD 24 07            [12] 8294 	add	a,#0x07
      0059BF F8               [12] 8295 	mov	r0,a
      0059C0 E6               [12] 8296 	mov	a,@r0
      0059C1 C0 E0            [24] 8297 	push	acc
      0059C3 08               [12] 8298 	inc	r0
      0059C4 E6               [12] 8299 	mov	a,@r0
      0059C5 C0 E0            [24] 8300 	push	acc
      0059C7 C0 02            [24] 8301 	push	ar2
      0059C9 C0 06            [24] 8302 	push	ar6
      0059CB C0 07            [24] 8303 	push	ar7
      0059CD C0 03            [24] 8304 	push	ar3
      0059CF C0 04            [24] 8305 	push	ar4
      0059D1 C0 05            [24] 8306 	push	ar5
      0059D3 74 20            [12] 8307 	mov	a,#___str_15
      0059D5 C0 E0            [24] 8308 	push	acc
      0059D7 74 8A            [12] 8309 	mov	a,#(___str_15 >> 8)
      0059D9 C0 E0            [24] 8310 	push	acc
      0059DB 74 80            [12] 8311 	mov	a,#0x80
      0059DD C0 E0            [24] 8312 	push	acc
      0059DF 12 70 A1         [24] 8313 	lcall	_printf
      0059E2 E5 81            [12] 8314 	mov	a,sp
      0059E4 24 F5            [12] 8315 	add	a,#0xf5
      0059E6 F5 81            [12] 8316 	mov	sp,a
                                   8317 ;	calc.c:409: printstr("ACC\t");
      0059E8 7D 40            [12] 8318 	mov	r5,#___str_16
      0059EA 7E 8A            [12] 8319 	mov	r6,#(___str_16 >> 8)
      0059EC 7F 80            [12] 8320 	mov	r7,#0x80
                                   8321 ;	calc.c:58: return;
      0059EE                       8322 00139$:
                                   8323 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0059EE 8D 82            [24] 8324 	mov	dpl,r5
      0059F0 8E 83            [24] 8325 	mov	dph,r6
      0059F2 8F F0            [24] 8326 	mov	b,r7
      0059F4 12 70 DA         [24] 8327 	lcall	__gptrget
      0059F7 FC               [12] 8328 	mov	r4,a
      0059F8 60 10            [24] 8329 	jz	00112$
      0059FA 7B 00            [12] 8330 	mov	r3,#0x00
      0059FC 8C 82            [24] 8331 	mov	dpl,r4
      0059FE 8B 83            [24] 8332 	mov	dph,r3
      005A00 12 2B 70         [24] 8333 	lcall	_putchar
      005A03 0D               [12] 8334 	inc	r5
                                   8335 ;	calc.c:409: printstr("ACC\t");
      005A04 BD 00 E7         [24] 8336 	cjne	r5,#0x00,00139$
      005A07 0E               [12] 8337 	inc	r6
      005A08 80 E4            [24] 8338 	sjmp	00139$
      005A0A                       8339 00112$:
                                   8340 ;	calc.c:410: if (ctx->acc_valid) printall(ctx->acc);
      005A0A E5 08            [12] 8341 	mov	a,_bp
      005A0C 24 0B            [12] 8342 	add	a,#0x0b
      005A0E F8               [12] 8343 	mov	r0,a
      005A0F 74 06            [12] 8344 	mov	a,#0x06
      005A11 26               [12] 8345 	add	a,@r0
      005A12 FD               [12] 8346 	mov	r5,a
      005A13 E4               [12] 8347 	clr	a
      005A14 08               [12] 8348 	inc	r0
      005A15 36               [12] 8349 	addc	a,@r0
      005A16 FE               [12] 8350 	mov	r6,a
      005A17 08               [12] 8351 	inc	r0
      005A18 86 07            [24] 8352 	mov	ar7,@r0
      005A1A 8D 82            [24] 8353 	mov	dpl,r5
      005A1C 8E 83            [24] 8354 	mov	dph,r6
      005A1E 8F F0            [24] 8355 	mov	b,r7
      005A20 12 70 DA         [24] 8356 	lcall	__gptrget
      005A23 70 03            [24] 8357 	jnz	00321$
      005A25 02 5B 57         [24] 8358 	ljmp	00102$
      005A28                       8359 00321$:
      005A28 E5 08            [12] 8360 	mov	a,_bp
      005A2A 24 0B            [12] 8361 	add	a,#0x0b
      005A2C F8               [12] 8362 	mov	r0,a
      005A2D 74 02            [12] 8363 	mov	a,#0x02
      005A2F 26               [12] 8364 	add	a,@r0
      005A30 FD               [12] 8365 	mov	r5,a
      005A31 E4               [12] 8366 	clr	a
      005A32 08               [12] 8367 	inc	r0
      005A33 36               [12] 8368 	addc	a,@r0
      005A34 FE               [12] 8369 	mov	r6,a
      005A35 08               [12] 8370 	inc	r0
      005A36 86 07            [24] 8371 	mov	ar7,@r0
      005A38 8D 82            [24] 8372 	mov	dpl,r5
      005A3A 8E 83            [24] 8373 	mov	dph,r6
      005A3C 8F F0            [24] 8374 	mov	b,r7
      005A3E 12 70 DA         [24] 8375 	lcall	__gptrget
      005A41 FD               [12] 8376 	mov	r5,a
      005A42 A3               [24] 8377 	inc	dptr
      005A43 12 70 DA         [24] 8378 	lcall	__gptrget
      005A46 FE               [12] 8379 	mov	r6,a
      005A47 A3               [24] 8380 	inc	dptr
      005A48 12 70 DA         [24] 8381 	lcall	__gptrget
      005A4B FF               [12] 8382 	mov	r7,a
      005A4C A3               [24] 8383 	inc	dptr
      005A4D 12 70 DA         [24] 8384 	lcall	__gptrget
      005A50 FC               [12] 8385 	mov	r4,a
                                   8386 ;	calc.c:71: printf("%08lx\t", d);
      005A51 C0 07            [24] 8387 	push	ar7
      005A53 C0 06            [24] 8388 	push	ar6
      005A55 C0 05            [24] 8389 	push	ar5
      005A57 C0 04            [24] 8390 	push	ar4
      005A59 C0 05            [24] 8391 	push	ar5
      005A5B C0 06            [24] 8392 	push	ar6
      005A5D C0 07            [24] 8393 	push	ar7
      005A5F C0 04            [24] 8394 	push	ar4
      005A61 74 5B            [12] 8395 	mov	a,#___str_0
      005A63 C0 E0            [24] 8396 	push	acc
      005A65 74 89            [12] 8397 	mov	a,#(___str_0 >> 8)
      005A67 C0 E0            [24] 8398 	push	acc
      005A69 74 80            [12] 8399 	mov	a,#0x80
      005A6B C0 E0            [24] 8400 	push	acc
      005A6D 12 70 A1         [24] 8401 	lcall	_printf
      005A70 E5 81            [12] 8402 	mov	a,sp
      005A72 24 F9            [12] 8403 	add	a,#0xf9
      005A74 F5 81            [12] 8404 	mov	sp,a
      005A76 D0 04            [24] 8405 	pop	ar4
      005A78 D0 05            [24] 8406 	pop	ar5
      005A7A D0 06            [24] 8407 	pop	ar6
      005A7C D0 07            [24] 8408 	pop	ar7
                                   8409 ;	calc.c:72: printf("% 11ld\t", d);
      005A7E C0 07            [24] 8410 	push	ar7
      005A80 C0 06            [24] 8411 	push	ar6
      005A82 C0 05            [24] 8412 	push	ar5
      005A84 C0 04            [24] 8413 	push	ar4
      005A86 C0 05            [24] 8414 	push	ar5
      005A88 C0 06            [24] 8415 	push	ar6
      005A8A C0 07            [24] 8416 	push	ar7
      005A8C C0 04            [24] 8417 	push	ar4
      005A8E 74 62            [12] 8418 	mov	a,#___str_1
      005A90 C0 E0            [24] 8419 	push	acc
      005A92 74 89            [12] 8420 	mov	a,#(___str_1 >> 8)
      005A94 C0 E0            [24] 8421 	push	acc
      005A96 74 80            [12] 8422 	mov	a,#0x80
      005A98 C0 E0            [24] 8423 	push	acc
      005A9A 12 70 A1         [24] 8424 	lcall	_printf
      005A9D E5 81            [12] 8425 	mov	a,sp
      005A9F 24 F9            [12] 8426 	add	a,#0xf9
      005AA1 F5 81            [12] 8427 	mov	sp,a
      005AA3 D0 04            [24] 8428 	pop	ar4
      005AA5 D0 05            [24] 8429 	pop	ar5
      005AA7 D0 06            [24] 8430 	pop	ar6
      005AA9 D0 07            [24] 8431 	pop	ar7
                                   8432 ;	calc.c:73: printf("%011lo\t", d);
      005AAB C0 07            [24] 8433 	push	ar7
      005AAD C0 06            [24] 8434 	push	ar6
      005AAF C0 05            [24] 8435 	push	ar5
      005AB1 C0 04            [24] 8436 	push	ar4
      005AB3 C0 05            [24] 8437 	push	ar5
      005AB5 C0 06            [24] 8438 	push	ar6
      005AB7 C0 07            [24] 8439 	push	ar7
      005AB9 C0 04            [24] 8440 	push	ar4
      005ABB 74 6A            [12] 8441 	mov	a,#___str_2
      005ABD C0 E0            [24] 8442 	push	acc
      005ABF 74 89            [12] 8443 	mov	a,#(___str_2 >> 8)
      005AC1 C0 E0            [24] 8444 	push	acc
      005AC3 74 80            [12] 8445 	mov	a,#0x80
      005AC5 C0 E0            [24] 8446 	push	acc
      005AC7 12 70 A1         [24] 8447 	lcall	_printf
      005ACA E5 81            [12] 8448 	mov	a,sp
      005ACC 24 F9            [12] 8449 	add	a,#0xf9
      005ACE F5 81            [12] 8450 	mov	sp,a
      005AD0 D0 04            [24] 8451 	pop	ar4
      005AD2 D0 05            [24] 8452 	pop	ar5
      005AD4 D0 06            [24] 8453 	pop	ar6
      005AD6 D0 07            [24] 8454 	pop	ar7
                                   8455 ;	calc.c:74: printbin(d);
      005AD8 E5 08            [12] 8456 	mov	a,_bp
      005ADA 24 16            [12] 8457 	add	a,#0x16
      005ADC F8               [12] 8458 	mov	r0,a
      005ADD A6 05            [24] 8459 	mov	@r0,ar5
      005ADF 08               [12] 8460 	inc	r0
      005AE0 A6 06            [24] 8461 	mov	@r0,ar6
      005AE2 08               [12] 8462 	inc	r0
      005AE3 A6 07            [24] 8463 	mov	@r0,ar7
      005AE5 08               [12] 8464 	inc	r0
      005AE6 A6 04            [24] 8465 	mov	@r0,ar4
                                   8466 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      005AE8 E5 08            [12] 8467 	mov	a,_bp
      005AEA 24 1A            [12] 8468 	add	a,#0x1a
      005AEC F8               [12] 8469 	mov	r0,a
      005AED E4               [12] 8470 	clr	a
      005AEE F6               [12] 8471 	mov	@r0,a
      005AEF 08               [12] 8472 	inc	r0
      005AF0 F6               [12] 8473 	mov	@r0,a
      005AF1 08               [12] 8474 	inc	r0
      005AF2 F6               [12] 8475 	mov	@r0,a
      005AF3 08               [12] 8476 	inc	r0
      005AF4 76 80            [12] 8477 	mov	@r0,#0x80
      005AF6                       8478 00141$:
                                   8479 ;	calc.c:65: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005AF6 E5 08            [12] 8480 	mov	a,_bp
      005AF8 24 16            [12] 8481 	add	a,#0x16
      005AFA F8               [12] 8482 	mov	r0,a
      005AFB 86 04            [24] 8483 	mov	ar4,@r0
      005AFD 08               [12] 8484 	inc	r0
      005AFE 86 05            [24] 8485 	mov	ar5,@r0
      005B00 08               [12] 8486 	inc	r0
      005B01 86 06            [24] 8487 	mov	ar6,@r0
      005B03 08               [12] 8488 	inc	r0
      005B04 86 07            [24] 8489 	mov	ar7,@r0
      005B06 E5 08            [12] 8490 	mov	a,_bp
      005B08 24 1A            [12] 8491 	add	a,#0x1a
      005B0A F8               [12] 8492 	mov	r0,a
      005B0B E6               [12] 8493 	mov	a,@r0
      005B0C 52 04            [12] 8494 	anl	ar4,a
      005B0E 08               [12] 8495 	inc	r0
      005B0F E6               [12] 8496 	mov	a,@r0
      005B10 52 05            [12] 8497 	anl	ar5,a
      005B12 08               [12] 8498 	inc	r0
      005B13 E6               [12] 8499 	mov	a,@r0
      005B14 52 06            [12] 8500 	anl	ar6,a
      005B16 08               [12] 8501 	inc	r0
      005B17 E6               [12] 8502 	mov	a,@r0
      005B18 52 07            [12] 8503 	anl	ar7,a
      005B1A EC               [12] 8504 	mov	a,r4
      005B1B 4D               [12] 8505 	orl	a,r5
      005B1C 4E               [12] 8506 	orl	a,r6
      005B1D 4F               [12] 8507 	orl	a,r7
      005B1E 60 06            [24] 8508 	jz	00168$
      005B20 7E 31            [12] 8509 	mov	r6,#0x31
      005B22 7F 00            [12] 8510 	mov	r7,#0x00
      005B24 80 04            [24] 8511 	sjmp	00169$
      005B26                       8512 00168$:
      005B26 7E 30            [12] 8513 	mov	r6,#0x30
      005B28 7F 00            [12] 8514 	mov	r7,#0x00
      005B2A                       8515 00169$:
      005B2A 8E 82            [24] 8516 	mov	dpl,r6
      005B2C 8F 83            [24] 8517 	mov	dph,r7
      005B2E 12 2B 70         [24] 8518 	lcall	_putchar
                                   8519 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      005B31 E5 08            [12] 8520 	mov	a,_bp
      005B33 24 1A            [12] 8521 	add	a,#0x1a
      005B35 F8               [12] 8522 	mov	r0,a
      005B36 08               [12] 8523 	inc	r0
      005B37 08               [12] 8524 	inc	r0
      005B38 08               [12] 8525 	inc	r0
      005B39 E6               [12] 8526 	mov	a,@r0
      005B3A C3               [12] 8527 	clr	c
      005B3B 13               [12] 8528 	rrc	a
      005B3C F6               [12] 8529 	mov	@r0,a
      005B3D 18               [12] 8530 	dec	r0
      005B3E E6               [12] 8531 	mov	a,@r0
      005B3F 13               [12] 8532 	rrc	a
      005B40 F6               [12] 8533 	mov	@r0,a
      005B41 18               [12] 8534 	dec	r0
      005B42 E6               [12] 8535 	mov	a,@r0
      005B43 13               [12] 8536 	rrc	a
      005B44 F6               [12] 8537 	mov	@r0,a
      005B45 18               [12] 8538 	dec	r0
      005B46 E6               [12] 8539 	mov	a,@r0
      005B47 13               [12] 8540 	rrc	a
      005B48 F6               [12] 8541 	mov	@r0,a
      005B49 E5 08            [12] 8542 	mov	a,_bp
      005B4B 24 1A            [12] 8543 	add	a,#0x1a
      005B4D F8               [12] 8544 	mov	r0,a
      005B4E E6               [12] 8545 	mov	a,@r0
      005B4F 08               [12] 8546 	inc	r0
      005B50 46               [12] 8547 	orl	a,@r0
      005B51 08               [12] 8548 	inc	r0
      005B52 46               [12] 8549 	orl	a,@r0
      005B53 08               [12] 8550 	inc	r0
      005B54 46               [12] 8551 	orl	a,@r0
      005B55 70 9F            [24] 8552 	jnz	00141$
                                   8553 ;	calc.c:410: if (ctx->acc_valid) printall(ctx->acc);
      005B57                       8554 00102$:
                                   8555 ;	calc.c:412: n = stack_peek2(ctx->ps, vals);
      005B57 E5 08            [12] 8556 	mov	a,_bp
      005B59 24 0E            [12] 8557 	add	a,#0x0e
      005B5B F9               [12] 8558 	mov	r1,a
      005B5C FD               [12] 8559 	mov	r5,a
      005B5D 7E 00            [12] 8560 	mov	r6,#0x00
      005B5F 7F 40            [12] 8561 	mov	r7,#0x40
      005B61 E5 08            [12] 8562 	mov	a,_bp
      005B63 24 04            [12] 8563 	add	a,#0x04
      005B65 F8               [12] 8564 	mov	r0,a
      005B66 86 82            [24] 8565 	mov	dpl,@r0
      005B68 08               [12] 8566 	inc	r0
      005B69 86 83            [24] 8567 	mov	dph,@r0
      005B6B 08               [12] 8568 	inc	r0
      005B6C 86 F0            [24] 8569 	mov	b,@r0
      005B6E 12 70 DA         [24] 8570 	lcall	__gptrget
      005B71 FA               [12] 8571 	mov	r2,a
      005B72 A3               [24] 8572 	inc	dptr
      005B73 12 70 DA         [24] 8573 	lcall	__gptrget
      005B76 FB               [12] 8574 	mov	r3,a
      005B77 A3               [24] 8575 	inc	dptr
      005B78 12 70 DA         [24] 8576 	lcall	__gptrget
      005B7B FC               [12] 8577 	mov	r4,a
      005B7C C0 01            [24] 8578 	push	ar1
      005B7E C0 05            [24] 8579 	push	ar5
      005B80 C0 06            [24] 8580 	push	ar6
      005B82 C0 07            [24] 8581 	push	ar7
      005B84 8A 82            [24] 8582 	mov	dpl,r2
      005B86 8B 83            [24] 8583 	mov	dph,r3
      005B88 8C F0            [24] 8584 	mov	b,r4
      005B8A 12 28 FF         [24] 8585 	lcall	_stack_peek2
      005B8D AE 82            [24] 8586 	mov	r6,dpl
      005B8F AF 83            [24] 8587 	mov	r7,dph
      005B91 15 81            [12] 8588 	dec	sp
      005B93 15 81            [12] 8589 	dec	sp
      005B95 15 81            [12] 8590 	dec	sp
      005B97 D0 01            [24] 8591 	pop	ar1
                                   8592 ;	calc.c:413: printstr("\r\nPSTOP1\t");
      005B99 7B 45            [12] 8593 	mov	r3,#___str_17
      005B9B 7C 8A            [12] 8594 	mov	r4,#(___str_17 >> 8)
      005B9D 7D 80            [12] 8595 	mov	r5,#0x80
                                   8596 ;	calc.c:58: return;
      005B9F                       8597 00144$:
                                   8598 ;	calc.c:56: for (; *s; s++) putchar(*s);
      005B9F 8B 82            [24] 8599 	mov	dpl,r3
      005BA1 8C 83            [24] 8600 	mov	dph,r4
      005BA3 8D F0            [24] 8601 	mov	b,r5
      005BA5 12 70 DA         [24] 8602 	lcall	__gptrget
      005BA8 FA               [12] 8603 	mov	r2,a
      005BA9 60 18            [24] 8604 	jz	00117$
      005BAB C0 06            [24] 8605 	push	ar6
      005BAD C0 07            [24] 8606 	push	ar7
      005BAF 7F 00            [12] 8607 	mov	r7,#0x00
      005BB1 8A 82            [24] 8608 	mov	dpl,r2
      005BB3 8F 83            [24] 8609 	mov	dph,r7
      005BB5 12 2B 70         [24] 8610 	lcall	_putchar
      005BB8 0B               [12] 8611 	inc	r3
      005BB9 BB 00 01         [24] 8612 	cjne	r3,#0x00,00325$
      005BBC 0C               [12] 8613 	inc	r4
      005BBD                       8614 00325$:
      005BBD D0 07            [24] 8615 	pop	ar7
      005BBF D0 06            [24] 8616 	pop	ar6
                                   8617 ;	calc.c:413: printstr("\r\nPSTOP1\t");
      005BC1 80 DC            [24] 8618 	sjmp	00144$
      005BC3                       8619 00117$:
                                   8620 ;	calc.c:414: if (n > 0) printall(vals[1]);
      005BC3 C3               [12] 8621 	clr	c
      005BC4 E4               [12] 8622 	clr	a
      005BC5 9E               [12] 8623 	subb	a,r6
      005BC6 74 80            [12] 8624 	mov	a,#(0x00 ^ 0x80)
      005BC8 8F F0            [24] 8625 	mov	b,r7
      005BCA 63 F0 80         [24] 8626 	xrl	b,#0x80
      005BCD 95 F0            [12] 8627 	subb	a,b
      005BCF 40 03            [24] 8628 	jc	00326$
      005BD1 02 5D 05         [24] 8629 	ljmp	00104$
      005BD4                       8630 00326$:
      005BD4 74 04            [12] 8631 	mov	a,#0x04
      005BD6 29               [12] 8632 	add	a,r1
      005BD7 F8               [12] 8633 	mov	r0,a
      005BD8 86 02            [24] 8634 	mov	ar2,@r0
      005BDA 08               [12] 8635 	inc	r0
      005BDB 86 03            [24] 8636 	mov	ar3,@r0
      005BDD 08               [12] 8637 	inc	r0
      005BDE 86 04            [24] 8638 	mov	ar4,@r0
      005BE0 08               [12] 8639 	inc	r0
      005BE1 86 05            [24] 8640 	mov	ar5,@r0
                                   8641 ;	calc.c:71: printf("%08lx\t", d);
      005BE3 C0 07            [24] 8642 	push	ar7
      005BE5 C0 06            [24] 8643 	push	ar6
      005BE7 C0 05            [24] 8644 	push	ar5
      005BE9 C0 04            [24] 8645 	push	ar4
      005BEB C0 03            [24] 8646 	push	ar3
      005BED C0 02            [24] 8647 	push	ar2
      005BEF C0 01            [24] 8648 	push	ar1
      005BF1 C0 02            [24] 8649 	push	ar2
      005BF3 C0 03            [24] 8650 	push	ar3
      005BF5 C0 04            [24] 8651 	push	ar4
      005BF7 C0 05            [24] 8652 	push	ar5
      005BF9 74 5B            [12] 8653 	mov	a,#___str_0
      005BFB C0 E0            [24] 8654 	push	acc
      005BFD 74 89            [12] 8655 	mov	a,#(___str_0 >> 8)
      005BFF C0 E0            [24] 8656 	push	acc
      005C01 74 80            [12] 8657 	mov	a,#0x80
      005C03 C0 E0            [24] 8658 	push	acc
      005C05 12 70 A1         [24] 8659 	lcall	_printf
      005C08 E5 81            [12] 8660 	mov	a,sp
      005C0A 24 F9            [12] 8661 	add	a,#0xf9
      005C0C F5 81            [12] 8662 	mov	sp,a
      005C0E D0 01            [24] 8663 	pop	ar1
      005C10 D0 02            [24] 8664 	pop	ar2
      005C12 D0 03            [24] 8665 	pop	ar3
      005C14 D0 04            [24] 8666 	pop	ar4
      005C16 D0 05            [24] 8667 	pop	ar5
                                   8668 ;	calc.c:72: printf("% 11ld\t", d);
      005C18 C0 05            [24] 8669 	push	ar5
      005C1A C0 04            [24] 8670 	push	ar4
      005C1C C0 03            [24] 8671 	push	ar3
      005C1E C0 02            [24] 8672 	push	ar2
      005C20 C0 01            [24] 8673 	push	ar1
      005C22 C0 02            [24] 8674 	push	ar2
      005C24 C0 03            [24] 8675 	push	ar3
      005C26 C0 04            [24] 8676 	push	ar4
      005C28 C0 05            [24] 8677 	push	ar5
      005C2A 74 62            [12] 8678 	mov	a,#___str_1
      005C2C C0 E0            [24] 8679 	push	acc
      005C2E 74 89            [12] 8680 	mov	a,#(___str_1 >> 8)
      005C30 C0 E0            [24] 8681 	push	acc
      005C32 74 80            [12] 8682 	mov	a,#0x80
      005C34 C0 E0            [24] 8683 	push	acc
      005C36 12 70 A1         [24] 8684 	lcall	_printf
      005C39 E5 81            [12] 8685 	mov	a,sp
      005C3B 24 F9            [12] 8686 	add	a,#0xf9
      005C3D F5 81            [12] 8687 	mov	sp,a
      005C3F D0 01            [24] 8688 	pop	ar1
      005C41 D0 02            [24] 8689 	pop	ar2
      005C43 D0 03            [24] 8690 	pop	ar3
      005C45 D0 04            [24] 8691 	pop	ar4
      005C47 D0 05            [24] 8692 	pop	ar5
                                   8693 ;	calc.c:73: printf("%011lo\t", d);
      005C49 C0 05            [24] 8694 	push	ar5
      005C4B C0 04            [24] 8695 	push	ar4
      005C4D C0 03            [24] 8696 	push	ar3
      005C4F C0 02            [24] 8697 	push	ar2
      005C51 C0 01            [24] 8698 	push	ar1
      005C53 C0 02            [24] 8699 	push	ar2
      005C55 C0 03            [24] 8700 	push	ar3
      005C57 C0 04            [24] 8701 	push	ar4
      005C59 C0 05            [24] 8702 	push	ar5
      005C5B 74 6A            [12] 8703 	mov	a,#___str_2
      005C5D C0 E0            [24] 8704 	push	acc
      005C5F 74 89            [12] 8705 	mov	a,#(___str_2 >> 8)
      005C61 C0 E0            [24] 8706 	push	acc
      005C63 74 80            [12] 8707 	mov	a,#0x80
      005C65 C0 E0            [24] 8708 	push	acc
      005C67 12 70 A1         [24] 8709 	lcall	_printf
      005C6A E5 81            [12] 8710 	mov	a,sp
      005C6C 24 F9            [12] 8711 	add	a,#0xf9
      005C6E F5 81            [12] 8712 	mov	sp,a
      005C70 D0 01            [24] 8713 	pop	ar1
      005C72 D0 02            [24] 8714 	pop	ar2
      005C74 D0 03            [24] 8715 	pop	ar3
      005C76 D0 04            [24] 8716 	pop	ar4
      005C78 D0 05            [24] 8717 	pop	ar5
      005C7A D0 06            [24] 8718 	pop	ar6
      005C7C D0 07            [24] 8719 	pop	ar7
                                   8720 ;	calc.c:74: printbin(d);
      005C7E E5 08            [12] 8721 	mov	a,_bp
      005C80 24 16            [12] 8722 	add	a,#0x16
      005C82 F8               [12] 8723 	mov	r0,a
      005C83 A6 02            [24] 8724 	mov	@r0,ar2
      005C85 08               [12] 8725 	inc	r0
      005C86 A6 03            [24] 8726 	mov	@r0,ar3
      005C88 08               [12] 8727 	inc	r0
      005C89 A6 04            [24] 8728 	mov	@r0,ar4
      005C8B 08               [12] 8729 	inc	r0
      005C8C A6 05            [24] 8730 	mov	@r0,ar5
                                   8731 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      005C8E E5 08            [12] 8732 	mov	a,_bp
      005C90 24 1A            [12] 8733 	add	a,#0x1a
      005C92 F8               [12] 8734 	mov	r0,a
      005C93 E4               [12] 8735 	clr	a
      005C94 F6               [12] 8736 	mov	@r0,a
      005C95 08               [12] 8737 	inc	r0
      005C96 F6               [12] 8738 	mov	@r0,a
      005C97 08               [12] 8739 	inc	r0
      005C98 F6               [12] 8740 	mov	@r0,a
      005C99 08               [12] 8741 	inc	r0
      005C9A 76 80            [12] 8742 	mov	@r0,#0x80
      005C9C                       8743 00146$:
                                   8744 ;	calc.c:65: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005C9C C0 06            [24] 8745 	push	ar6
      005C9E C0 07            [24] 8746 	push	ar7
      005CA0 E5 08            [12] 8747 	mov	a,_bp
      005CA2 24 16            [12] 8748 	add	a,#0x16
      005CA4 F8               [12] 8749 	mov	r0,a
      005CA5 86 04            [24] 8750 	mov	ar4,@r0
      005CA7 08               [12] 8751 	inc	r0
      005CA8 86 05            [24] 8752 	mov	ar5,@r0
      005CAA 08               [12] 8753 	inc	r0
      005CAB 86 06            [24] 8754 	mov	ar6,@r0
      005CAD 08               [12] 8755 	inc	r0
      005CAE 86 07            [24] 8756 	mov	ar7,@r0
      005CB0 E5 08            [12] 8757 	mov	a,_bp
      005CB2 24 1A            [12] 8758 	add	a,#0x1a
      005CB4 F8               [12] 8759 	mov	r0,a
      005CB5 E6               [12] 8760 	mov	a,@r0
      005CB6 52 04            [12] 8761 	anl	ar4,a
      005CB8 08               [12] 8762 	inc	r0
      005CB9 E6               [12] 8763 	mov	a,@r0
      005CBA 52 05            [12] 8764 	anl	ar5,a
      005CBC 08               [12] 8765 	inc	r0
      005CBD E6               [12] 8766 	mov	a,@r0
      005CBE 52 06            [12] 8767 	anl	ar6,a
      005CC0 08               [12] 8768 	inc	r0
      005CC1 E6               [12] 8769 	mov	a,@r0
      005CC2 52 07            [12] 8770 	anl	ar7,a
      005CC4 EC               [12] 8771 	mov	a,r4
      005CC5 4D               [12] 8772 	orl	a,r5
      005CC6 4E               [12] 8773 	orl	a,r6
      005CC7 4F               [12] 8774 	orl	a,r7
      005CC8 D0 07            [24] 8775 	pop	ar7
      005CCA D0 06            [24] 8776 	pop	ar6
      005CCC 60 06            [24] 8777 	jz	00170$
      005CCE 7C 31            [12] 8778 	mov	r4,#0x31
      005CD0 7D 00            [12] 8779 	mov	r5,#0x00
      005CD2 80 04            [24] 8780 	sjmp	00171$
      005CD4                       8781 00170$:
      005CD4 7C 30            [12] 8782 	mov	r4,#0x30
      005CD6 7D 00            [12] 8783 	mov	r5,#0x00
      005CD8                       8784 00171$:
      005CD8 8C 82            [24] 8785 	mov	dpl,r4
      005CDA 8D 83            [24] 8786 	mov	dph,r5
      005CDC 12 2B 70         [24] 8787 	lcall	_putchar
                                   8788 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      005CDF E5 08            [12] 8789 	mov	a,_bp
      005CE1 24 1A            [12] 8790 	add	a,#0x1a
      005CE3 F8               [12] 8791 	mov	r0,a
      005CE4 08               [12] 8792 	inc	r0
      005CE5 08               [12] 8793 	inc	r0
      005CE6 08               [12] 8794 	inc	r0
      005CE7 E6               [12] 8795 	mov	a,@r0
      005CE8 C3               [12] 8796 	clr	c
      005CE9 13               [12] 8797 	rrc	a
      005CEA F6               [12] 8798 	mov	@r0,a
      005CEB 18               [12] 8799 	dec	r0
      005CEC E6               [12] 8800 	mov	a,@r0
      005CED 13               [12] 8801 	rrc	a
      005CEE F6               [12] 8802 	mov	@r0,a
      005CEF 18               [12] 8803 	dec	r0
      005CF0 E6               [12] 8804 	mov	a,@r0
      005CF1 13               [12] 8805 	rrc	a
      005CF2 F6               [12] 8806 	mov	@r0,a
      005CF3 18               [12] 8807 	dec	r0
      005CF4 E6               [12] 8808 	mov	a,@r0
      005CF5 13               [12] 8809 	rrc	a
      005CF6 F6               [12] 8810 	mov	@r0,a
      005CF7 E5 08            [12] 8811 	mov	a,_bp
      005CF9 24 1A            [12] 8812 	add	a,#0x1a
      005CFB F8               [12] 8813 	mov	r0,a
      005CFC E6               [12] 8814 	mov	a,@r0
      005CFD 08               [12] 8815 	inc	r0
      005CFE 46               [12] 8816 	orl	a,@r0
      005CFF 08               [12] 8817 	inc	r0
      005D00 46               [12] 8818 	orl	a,@r0
      005D01 08               [12] 8819 	inc	r0
      005D02 46               [12] 8820 	orl	a,@r0
      005D03 70 97            [24] 8821 	jnz	00146$
                                   8822 ;	calc.c:414: if (n > 0) printall(vals[1]);
      005D05                       8823 00104$:
                                   8824 ;	calc.c:415: printstr("\r\nPSTOP0\t");
      005D05 7B 4F            [12] 8825 	mov	r3,#___str_18
      005D07 7C 8A            [12] 8826 	mov	r4,#(___str_18 >> 8)
      005D09 7D 80            [12] 8827 	mov	r5,#0x80
                                   8828 ;	calc.c:58: return;
      005D0B                       8829 00149$:
                                   8830 ;	calc.c:56: for (; *s; s++) putchar(*s);
      005D0B 8B 82            [24] 8831 	mov	dpl,r3
      005D0D 8C 83            [24] 8832 	mov	dph,r4
      005D0F 8D F0            [24] 8833 	mov	b,r5
      005D11 12 70 DA         [24] 8834 	lcall	__gptrget
      005D14 FA               [12] 8835 	mov	r2,a
      005D15 60 18            [24] 8836 	jz	00122$
      005D17 C0 06            [24] 8837 	push	ar6
      005D19 C0 07            [24] 8838 	push	ar7
      005D1B 7F 00            [12] 8839 	mov	r7,#0x00
      005D1D 8A 82            [24] 8840 	mov	dpl,r2
      005D1F 8F 83            [24] 8841 	mov	dph,r7
      005D21 12 2B 70         [24] 8842 	lcall	_putchar
      005D24 0B               [12] 8843 	inc	r3
      005D25 BB 00 01         [24] 8844 	cjne	r3,#0x00,00330$
      005D28 0C               [12] 8845 	inc	r4
      005D29                       8846 00330$:
      005D29 D0 07            [24] 8847 	pop	ar7
      005D2B D0 06            [24] 8848 	pop	ar6
                                   8849 ;	calc.c:415: printstr("\r\nPSTOP0\t");
      005D2D 80 DC            [24] 8850 	sjmp	00149$
      005D2F                       8851 00122$:
                                   8852 ;	calc.c:416: if (n > 1) printall(vals[0]);
      005D2F C3               [12] 8853 	clr	c
      005D30 74 01            [12] 8854 	mov	a,#0x01
      005D32 9E               [12] 8855 	subb	a,r6
      005D33 74 80            [12] 8856 	mov	a,#(0x00 ^ 0x80)
      005D35 8F F0            [24] 8857 	mov	b,r7
      005D37 63 F0 80         [24] 8858 	xrl	b,#0x80
      005D3A 95 F0            [12] 8859 	subb	a,b
      005D3C 40 03            [24] 8860 	jc	00331$
      005D3E 02 5E 65         [24] 8861 	ljmp	00106$
      005D41                       8862 00331$:
      005D41 87 04            [24] 8863 	mov	ar4,@r1
      005D43 09               [12] 8864 	inc	r1
      005D44 87 05            [24] 8865 	mov	ar5,@r1
      005D46 09               [12] 8866 	inc	r1
      005D47 87 06            [24] 8867 	mov	ar6,@r1
      005D49 09               [12] 8868 	inc	r1
      005D4A 87 07            [24] 8869 	mov	ar7,@r1
      005D4C 19               [12] 8870 	dec	r1
      005D4D 19               [12] 8871 	dec	r1
      005D4E 19               [12] 8872 	dec	r1
                                   8873 ;	calc.c:71: printf("%08lx\t", d);
      005D4F C0 07            [24] 8874 	push	ar7
      005D51 C0 06            [24] 8875 	push	ar6
      005D53 C0 05            [24] 8876 	push	ar5
      005D55 C0 04            [24] 8877 	push	ar4
      005D57 C0 01            [24] 8878 	push	ar1
      005D59 C0 04            [24] 8879 	push	ar4
      005D5B C0 05            [24] 8880 	push	ar5
      005D5D C0 06            [24] 8881 	push	ar6
      005D5F C0 07            [24] 8882 	push	ar7
      005D61 74 5B            [12] 8883 	mov	a,#___str_0
      005D63 C0 E0            [24] 8884 	push	acc
      005D65 74 89            [12] 8885 	mov	a,#(___str_0 >> 8)
      005D67 C0 E0            [24] 8886 	push	acc
      005D69 74 80            [12] 8887 	mov	a,#0x80
      005D6B C0 E0            [24] 8888 	push	acc
      005D6D 12 70 A1         [24] 8889 	lcall	_printf
      005D70 E5 81            [12] 8890 	mov	a,sp
      005D72 24 F9            [12] 8891 	add	a,#0xf9
      005D74 F5 81            [12] 8892 	mov	sp,a
      005D76 D0 01            [24] 8893 	pop	ar1
      005D78 D0 04            [24] 8894 	pop	ar4
      005D7A D0 05            [24] 8895 	pop	ar5
      005D7C D0 06            [24] 8896 	pop	ar6
      005D7E D0 07            [24] 8897 	pop	ar7
                                   8898 ;	calc.c:72: printf("% 11ld\t", d);
      005D80 C0 07            [24] 8899 	push	ar7
      005D82 C0 06            [24] 8900 	push	ar6
      005D84 C0 05            [24] 8901 	push	ar5
      005D86 C0 04            [24] 8902 	push	ar4
      005D88 C0 01            [24] 8903 	push	ar1
      005D8A C0 04            [24] 8904 	push	ar4
      005D8C C0 05            [24] 8905 	push	ar5
      005D8E C0 06            [24] 8906 	push	ar6
      005D90 C0 07            [24] 8907 	push	ar7
      005D92 74 62            [12] 8908 	mov	a,#___str_1
      005D94 C0 E0            [24] 8909 	push	acc
      005D96 74 89            [12] 8910 	mov	a,#(___str_1 >> 8)
      005D98 C0 E0            [24] 8911 	push	acc
      005D9A 74 80            [12] 8912 	mov	a,#0x80
      005D9C C0 E0            [24] 8913 	push	acc
      005D9E 12 70 A1         [24] 8914 	lcall	_printf
      005DA1 E5 81            [12] 8915 	mov	a,sp
      005DA3 24 F9            [12] 8916 	add	a,#0xf9
      005DA5 F5 81            [12] 8917 	mov	sp,a
      005DA7 D0 01            [24] 8918 	pop	ar1
      005DA9 D0 04            [24] 8919 	pop	ar4
      005DAB D0 05            [24] 8920 	pop	ar5
      005DAD D0 06            [24] 8921 	pop	ar6
      005DAF D0 07            [24] 8922 	pop	ar7
                                   8923 ;	calc.c:73: printf("%011lo\t", d);
      005DB1 C0 07            [24] 8924 	push	ar7
      005DB3 C0 06            [24] 8925 	push	ar6
      005DB5 C0 05            [24] 8926 	push	ar5
      005DB7 C0 04            [24] 8927 	push	ar4
      005DB9 C0 01            [24] 8928 	push	ar1
      005DBB C0 04            [24] 8929 	push	ar4
      005DBD C0 05            [24] 8930 	push	ar5
      005DBF C0 06            [24] 8931 	push	ar6
      005DC1 C0 07            [24] 8932 	push	ar7
      005DC3 74 6A            [12] 8933 	mov	a,#___str_2
      005DC5 C0 E0            [24] 8934 	push	acc
      005DC7 74 89            [12] 8935 	mov	a,#(___str_2 >> 8)
      005DC9 C0 E0            [24] 8936 	push	acc
      005DCB 74 80            [12] 8937 	mov	a,#0x80
      005DCD C0 E0            [24] 8938 	push	acc
      005DCF 12 70 A1         [24] 8939 	lcall	_printf
      005DD2 E5 81            [12] 8940 	mov	a,sp
      005DD4 24 F9            [12] 8941 	add	a,#0xf9
      005DD6 F5 81            [12] 8942 	mov	sp,a
      005DD8 D0 01            [24] 8943 	pop	ar1
      005DDA D0 04            [24] 8944 	pop	ar4
      005DDC D0 05            [24] 8945 	pop	ar5
      005DDE D0 06            [24] 8946 	pop	ar6
      005DE0 D0 07            [24] 8947 	pop	ar7
                                   8948 ;	calc.c:74: printbin(d);
      005DE2 E5 08            [12] 8949 	mov	a,_bp
      005DE4 24 16            [12] 8950 	add	a,#0x16
      005DE6 F8               [12] 8951 	mov	r0,a
      005DE7 A6 04            [24] 8952 	mov	@r0,ar4
      005DE9 08               [12] 8953 	inc	r0
      005DEA A6 05            [24] 8954 	mov	@r0,ar5
      005DEC 08               [12] 8955 	inc	r0
      005DED A6 06            [24] 8956 	mov	@r0,ar6
      005DEF 08               [12] 8957 	inc	r0
      005DF0 A6 07            [24] 8958 	mov	@r0,ar7
                                   8959 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      005DF2 E5 08            [12] 8960 	mov	a,_bp
      005DF4 24 1A            [12] 8961 	add	a,#0x1a
      005DF6 F8               [12] 8962 	mov	r0,a
      005DF7 E4               [12] 8963 	clr	a
      005DF8 F6               [12] 8964 	mov	@r0,a
      005DF9 08               [12] 8965 	inc	r0
      005DFA F6               [12] 8966 	mov	@r0,a
      005DFB 08               [12] 8967 	inc	r0
      005DFC F6               [12] 8968 	mov	@r0,a
      005DFD 08               [12] 8969 	inc	r0
      005DFE 76 80            [12] 8970 	mov	@r0,#0x80
      005E00                       8971 00151$:
                                   8972 ;	calc.c:65: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005E00 C0 01            [24] 8973 	push	ar1
      005E02 E5 08            [12] 8974 	mov	a,_bp
      005E04 24 16            [12] 8975 	add	a,#0x16
      005E06 F8               [12] 8976 	mov	r0,a
      005E07 86 04            [24] 8977 	mov	ar4,@r0
      005E09 08               [12] 8978 	inc	r0
      005E0A 86 05            [24] 8979 	mov	ar5,@r0
      005E0C 08               [12] 8980 	inc	r0
      005E0D 86 06            [24] 8981 	mov	ar6,@r0
      005E0F 08               [12] 8982 	inc	r0
      005E10 86 07            [24] 8983 	mov	ar7,@r0
      005E12 E5 08            [12] 8984 	mov	a,_bp
      005E14 24 1A            [12] 8985 	add	a,#0x1a
      005E16 F8               [12] 8986 	mov	r0,a
      005E17 E6               [12] 8987 	mov	a,@r0
      005E18 52 04            [12] 8988 	anl	ar4,a
      005E1A 08               [12] 8989 	inc	r0
      005E1B E6               [12] 8990 	mov	a,@r0
      005E1C 52 05            [12] 8991 	anl	ar5,a
      005E1E 08               [12] 8992 	inc	r0
      005E1F E6               [12] 8993 	mov	a,@r0
      005E20 52 06            [12] 8994 	anl	ar6,a
      005E22 08               [12] 8995 	inc	r0
      005E23 E6               [12] 8996 	mov	a,@r0
      005E24 52 07            [12] 8997 	anl	ar7,a
      005E26 D0 01            [24] 8998 	pop	ar1
      005E28 EC               [12] 8999 	mov	a,r4
      005E29 4D               [12] 9000 	orl	a,r5
      005E2A 4E               [12] 9001 	orl	a,r6
      005E2B 4F               [12] 9002 	orl	a,r7
      005E2C 60 06            [24] 9003 	jz	00172$
      005E2E 7E 31            [12] 9004 	mov	r6,#0x31
      005E30 7F 00            [12] 9005 	mov	r7,#0x00
      005E32 80 04            [24] 9006 	sjmp	00173$
      005E34                       9007 00172$:
      005E34 7E 30            [12] 9008 	mov	r6,#0x30
      005E36 7F 00            [12] 9009 	mov	r7,#0x00
      005E38                       9010 00173$:
      005E38 8E 82            [24] 9011 	mov	dpl,r6
      005E3A 8F 83            [24] 9012 	mov	dph,r7
      005E3C 12 2B 70         [24] 9013 	lcall	_putchar
                                   9014 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      005E3F E5 08            [12] 9015 	mov	a,_bp
      005E41 24 1A            [12] 9016 	add	a,#0x1a
      005E43 F8               [12] 9017 	mov	r0,a
      005E44 08               [12] 9018 	inc	r0
      005E45 08               [12] 9019 	inc	r0
      005E46 08               [12] 9020 	inc	r0
      005E47 E6               [12] 9021 	mov	a,@r0
      005E48 C3               [12] 9022 	clr	c
      005E49 13               [12] 9023 	rrc	a
      005E4A F6               [12] 9024 	mov	@r0,a
      005E4B 18               [12] 9025 	dec	r0
      005E4C E6               [12] 9026 	mov	a,@r0
      005E4D 13               [12] 9027 	rrc	a
      005E4E F6               [12] 9028 	mov	@r0,a
      005E4F 18               [12] 9029 	dec	r0
      005E50 E6               [12] 9030 	mov	a,@r0
      005E51 13               [12] 9031 	rrc	a
      005E52 F6               [12] 9032 	mov	@r0,a
      005E53 18               [12] 9033 	dec	r0
      005E54 E6               [12] 9034 	mov	a,@r0
      005E55 13               [12] 9035 	rrc	a
      005E56 F6               [12] 9036 	mov	@r0,a
      005E57 E5 08            [12] 9037 	mov	a,_bp
      005E59 24 1A            [12] 9038 	add	a,#0x1a
      005E5B F8               [12] 9039 	mov	r0,a
      005E5C E6               [12] 9040 	mov	a,@r0
      005E5D 08               [12] 9041 	inc	r0
      005E5E 46               [12] 9042 	orl	a,@r0
      005E5F 08               [12] 9043 	inc	r0
      005E60 46               [12] 9044 	orl	a,@r0
      005E61 08               [12] 9045 	inc	r0
      005E62 46               [12] 9046 	orl	a,@r0
      005E63 70 9B            [24] 9047 	jnz	00151$
                                   9048 ;	calc.c:416: if (n > 1) printall(vals[0]);
      005E65                       9049 00106$:
                                   9050 ;	calc.c:418: n = stack_peek2(ctx->ss, vals);
      005E65 89 07            [24] 9051 	mov	ar7,r1
      005E67 7E 00            [12] 9052 	mov	r6,#0x00
      005E69 7D 40            [12] 9053 	mov	r5,#0x40
      005E6B A8 08            [24] 9054 	mov	r0,_bp
      005E6D 08               [12] 9055 	inc	r0
      005E6E 86 82            [24] 9056 	mov	dpl,@r0
      005E70 08               [12] 9057 	inc	r0
      005E71 86 83            [24] 9058 	mov	dph,@r0
      005E73 08               [12] 9059 	inc	r0
      005E74 86 F0            [24] 9060 	mov	b,@r0
      005E76 12 70 DA         [24] 9061 	lcall	__gptrget
      005E79 FA               [12] 9062 	mov	r2,a
      005E7A A3               [24] 9063 	inc	dptr
      005E7B 12 70 DA         [24] 9064 	lcall	__gptrget
      005E7E FB               [12] 9065 	mov	r3,a
      005E7F A3               [24] 9066 	inc	dptr
      005E80 12 70 DA         [24] 9067 	lcall	__gptrget
      005E83 FC               [12] 9068 	mov	r4,a
      005E84 C0 01            [24] 9069 	push	ar1
      005E86 C0 07            [24] 9070 	push	ar7
      005E88 C0 06            [24] 9071 	push	ar6
      005E8A C0 05            [24] 9072 	push	ar5
      005E8C 8A 82            [24] 9073 	mov	dpl,r2
      005E8E 8B 83            [24] 9074 	mov	dph,r3
      005E90 8C F0            [24] 9075 	mov	b,r4
      005E92 12 28 FF         [24] 9076 	lcall	_stack_peek2
      005E95 AE 82            [24] 9077 	mov	r6,dpl
      005E97 AF 83            [24] 9078 	mov	r7,dph
      005E99 15 81            [12] 9079 	dec	sp
      005E9B 15 81            [12] 9080 	dec	sp
      005E9D 15 81            [12] 9081 	dec	sp
      005E9F D0 01            [24] 9082 	pop	ar1
      005EA1 E5 08            [12] 9083 	mov	a,_bp
      005EA3 24 09            [12] 9084 	add	a,#0x09
      005EA5 F8               [12] 9085 	mov	r0,a
      005EA6 A6 06            [24] 9086 	mov	@r0,ar6
      005EA8 08               [12] 9087 	inc	r0
      005EA9 A6 07            [24] 9088 	mov	@r0,ar7
                                   9089 ;	calc.c:419: printstr("\r\nSSTOP1\t");
      005EAB 7B 59            [12] 9090 	mov	r3,#___str_19
      005EAD 7C 8A            [12] 9091 	mov	r4,#(___str_19 >> 8)
      005EAF 7D 80            [12] 9092 	mov	r5,#0x80
                                   9093 ;	calc.c:58: return;
      005EB1                       9094 00154$:
                                   9095 ;	calc.c:56: for (; *s; s++) putchar(*s);
      005EB1 8B 82            [24] 9096 	mov	dpl,r3
      005EB3 8C 83            [24] 9097 	mov	dph,r4
      005EB5 8D F0            [24] 9098 	mov	b,r5
      005EB7 12 70 DA         [24] 9099 	lcall	__gptrget
      005EBA FA               [12] 9100 	mov	r2,a
      005EBB 60 10            [24] 9101 	jz	00127$
      005EBD 7F 00            [12] 9102 	mov	r7,#0x00
      005EBF 8A 82            [24] 9103 	mov	dpl,r2
      005EC1 8F 83            [24] 9104 	mov	dph,r7
      005EC3 12 2B 70         [24] 9105 	lcall	_putchar
      005EC6 0B               [12] 9106 	inc	r3
                                   9107 ;	calc.c:419: printstr("\r\nSSTOP1\t");
      005EC7 BB 00 E7         [24] 9108 	cjne	r3,#0x00,00154$
      005ECA 0C               [12] 9109 	inc	r4
      005ECB 80 E4            [24] 9110 	sjmp	00154$
      005ECD                       9111 00127$:
                                   9112 ;	calc.c:420: if (n > 0) printall(vals[1]);
      005ECD E5 08            [12] 9113 	mov	a,_bp
      005ECF 24 09            [12] 9114 	add	a,#0x09
      005ED1 F8               [12] 9115 	mov	r0,a
      005ED2 C3               [12] 9116 	clr	c
      005ED3 E4               [12] 9117 	clr	a
      005ED4 96               [12] 9118 	subb	a,@r0
      005ED5 74 80            [12] 9119 	mov	a,#(0x00 ^ 0x80)
      005ED7 08               [12] 9120 	inc	r0
      005ED8 86 F0            [24] 9121 	mov	b,@r0
      005EDA 63 F0 80         [24] 9122 	xrl	b,#0x80
      005EDD 95 F0            [12] 9123 	subb	a,b
      005EDF 40 03            [24] 9124 	jc	00336$
      005EE1 02 60 09         [24] 9125 	ljmp	00108$
      005EE4                       9126 00336$:
      005EE4 74 04            [12] 9127 	mov	a,#0x04
      005EE6 29               [12] 9128 	add	a,r1
      005EE7 F8               [12] 9129 	mov	r0,a
      005EE8 86 02            [24] 9130 	mov	ar2,@r0
      005EEA 08               [12] 9131 	inc	r0
      005EEB 86 03            [24] 9132 	mov	ar3,@r0
      005EED 08               [12] 9133 	inc	r0
      005EEE 86 04            [24] 9134 	mov	ar4,@r0
      005EF0 08               [12] 9135 	inc	r0
      005EF1 86 05            [24] 9136 	mov	ar5,@r0
                                   9137 ;	calc.c:71: printf("%08lx\t", d);
      005EF3 C0 05            [24] 9138 	push	ar5
      005EF5 C0 04            [24] 9139 	push	ar4
      005EF7 C0 03            [24] 9140 	push	ar3
      005EF9 C0 02            [24] 9141 	push	ar2
      005EFB C0 01            [24] 9142 	push	ar1
      005EFD C0 02            [24] 9143 	push	ar2
      005EFF C0 03            [24] 9144 	push	ar3
      005F01 C0 04            [24] 9145 	push	ar4
      005F03 C0 05            [24] 9146 	push	ar5
      005F05 74 5B            [12] 9147 	mov	a,#___str_0
      005F07 C0 E0            [24] 9148 	push	acc
      005F09 74 89            [12] 9149 	mov	a,#(___str_0 >> 8)
      005F0B C0 E0            [24] 9150 	push	acc
      005F0D 74 80            [12] 9151 	mov	a,#0x80
      005F0F C0 E0            [24] 9152 	push	acc
      005F11 12 70 A1         [24] 9153 	lcall	_printf
      005F14 E5 81            [12] 9154 	mov	a,sp
      005F16 24 F9            [12] 9155 	add	a,#0xf9
      005F18 F5 81            [12] 9156 	mov	sp,a
      005F1A D0 01            [24] 9157 	pop	ar1
      005F1C D0 02            [24] 9158 	pop	ar2
      005F1E D0 03            [24] 9159 	pop	ar3
      005F20 D0 04            [24] 9160 	pop	ar4
      005F22 D0 05            [24] 9161 	pop	ar5
                                   9162 ;	calc.c:72: printf("% 11ld\t", d);
      005F24 C0 05            [24] 9163 	push	ar5
      005F26 C0 04            [24] 9164 	push	ar4
      005F28 C0 03            [24] 9165 	push	ar3
      005F2A C0 02            [24] 9166 	push	ar2
      005F2C C0 01            [24] 9167 	push	ar1
      005F2E C0 02            [24] 9168 	push	ar2
      005F30 C0 03            [24] 9169 	push	ar3
      005F32 C0 04            [24] 9170 	push	ar4
      005F34 C0 05            [24] 9171 	push	ar5
      005F36 74 62            [12] 9172 	mov	a,#___str_1
      005F38 C0 E0            [24] 9173 	push	acc
      005F3A 74 89            [12] 9174 	mov	a,#(___str_1 >> 8)
      005F3C C0 E0            [24] 9175 	push	acc
      005F3E 74 80            [12] 9176 	mov	a,#0x80
      005F40 C0 E0            [24] 9177 	push	acc
      005F42 12 70 A1         [24] 9178 	lcall	_printf
      005F45 E5 81            [12] 9179 	mov	a,sp
      005F47 24 F9            [12] 9180 	add	a,#0xf9
      005F49 F5 81            [12] 9181 	mov	sp,a
      005F4B D0 01            [24] 9182 	pop	ar1
      005F4D D0 02            [24] 9183 	pop	ar2
      005F4F D0 03            [24] 9184 	pop	ar3
      005F51 D0 04            [24] 9185 	pop	ar4
      005F53 D0 05            [24] 9186 	pop	ar5
                                   9187 ;	calc.c:73: printf("%011lo\t", d);
      005F55 C0 05            [24] 9188 	push	ar5
      005F57 C0 04            [24] 9189 	push	ar4
      005F59 C0 03            [24] 9190 	push	ar3
      005F5B C0 02            [24] 9191 	push	ar2
      005F5D C0 01            [24] 9192 	push	ar1
      005F5F C0 02            [24] 9193 	push	ar2
      005F61 C0 03            [24] 9194 	push	ar3
      005F63 C0 04            [24] 9195 	push	ar4
      005F65 C0 05            [24] 9196 	push	ar5
      005F67 74 6A            [12] 9197 	mov	a,#___str_2
      005F69 C0 E0            [24] 9198 	push	acc
      005F6B 74 89            [12] 9199 	mov	a,#(___str_2 >> 8)
      005F6D C0 E0            [24] 9200 	push	acc
      005F6F 74 80            [12] 9201 	mov	a,#0x80
      005F71 C0 E0            [24] 9202 	push	acc
      005F73 12 70 A1         [24] 9203 	lcall	_printf
      005F76 E5 81            [12] 9204 	mov	a,sp
      005F78 24 F9            [12] 9205 	add	a,#0xf9
      005F7A F5 81            [12] 9206 	mov	sp,a
      005F7C D0 01            [24] 9207 	pop	ar1
      005F7E D0 02            [24] 9208 	pop	ar2
      005F80 D0 03            [24] 9209 	pop	ar3
      005F82 D0 04            [24] 9210 	pop	ar4
      005F84 D0 05            [24] 9211 	pop	ar5
                                   9212 ;	calc.c:74: printbin(d);
      005F86 E5 08            [12] 9213 	mov	a,_bp
      005F88 24 16            [12] 9214 	add	a,#0x16
      005F8A F8               [12] 9215 	mov	r0,a
      005F8B A6 02            [24] 9216 	mov	@r0,ar2
      005F8D 08               [12] 9217 	inc	r0
      005F8E A6 03            [24] 9218 	mov	@r0,ar3
      005F90 08               [12] 9219 	inc	r0
      005F91 A6 04            [24] 9220 	mov	@r0,ar4
      005F93 08               [12] 9221 	inc	r0
      005F94 A6 05            [24] 9222 	mov	@r0,ar5
                                   9223 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      005F96 E5 08            [12] 9224 	mov	a,_bp
      005F98 24 1A            [12] 9225 	add	a,#0x1a
      005F9A F8               [12] 9226 	mov	r0,a
      005F9B E4               [12] 9227 	clr	a
      005F9C F6               [12] 9228 	mov	@r0,a
      005F9D 08               [12] 9229 	inc	r0
      005F9E F6               [12] 9230 	mov	@r0,a
      005F9F 08               [12] 9231 	inc	r0
      005FA0 F6               [12] 9232 	mov	@r0,a
      005FA1 08               [12] 9233 	inc	r0
      005FA2 76 80            [12] 9234 	mov	@r0,#0x80
      005FA4                       9235 00156$:
                                   9236 ;	calc.c:65: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005FA4 C0 01            [24] 9237 	push	ar1
      005FA6 E5 08            [12] 9238 	mov	a,_bp
      005FA8 24 16            [12] 9239 	add	a,#0x16
      005FAA F8               [12] 9240 	mov	r0,a
      005FAB 86 02            [24] 9241 	mov	ar2,@r0
      005FAD 08               [12] 9242 	inc	r0
      005FAE 86 03            [24] 9243 	mov	ar3,@r0
      005FB0 08               [12] 9244 	inc	r0
      005FB1 86 05            [24] 9245 	mov	ar5,@r0
      005FB3 08               [12] 9246 	inc	r0
      005FB4 86 07            [24] 9247 	mov	ar7,@r0
      005FB6 E5 08            [12] 9248 	mov	a,_bp
      005FB8 24 1A            [12] 9249 	add	a,#0x1a
      005FBA F8               [12] 9250 	mov	r0,a
      005FBB E6               [12] 9251 	mov	a,@r0
      005FBC 52 02            [12] 9252 	anl	ar2,a
      005FBE 08               [12] 9253 	inc	r0
      005FBF E6               [12] 9254 	mov	a,@r0
      005FC0 52 03            [12] 9255 	anl	ar3,a
      005FC2 08               [12] 9256 	inc	r0
      005FC3 E6               [12] 9257 	mov	a,@r0
      005FC4 52 05            [12] 9258 	anl	ar5,a
      005FC6 08               [12] 9259 	inc	r0
      005FC7 E6               [12] 9260 	mov	a,@r0
      005FC8 52 07            [12] 9261 	anl	ar7,a
      005FCA D0 01            [24] 9262 	pop	ar1
      005FCC EA               [12] 9263 	mov	a,r2
      005FCD 4B               [12] 9264 	orl	a,r3
      005FCE 4D               [12] 9265 	orl	a,r5
      005FCF 4F               [12] 9266 	orl	a,r7
      005FD0 60 06            [24] 9267 	jz	00174$
      005FD2 7E 31            [12] 9268 	mov	r6,#0x31
      005FD4 7F 00            [12] 9269 	mov	r7,#0x00
      005FD6 80 04            [24] 9270 	sjmp	00175$
      005FD8                       9271 00174$:
      005FD8 7E 30            [12] 9272 	mov	r6,#0x30
      005FDA 7F 00            [12] 9273 	mov	r7,#0x00
      005FDC                       9274 00175$:
      005FDC 8E 82            [24] 9275 	mov	dpl,r6
      005FDE 8F 83            [24] 9276 	mov	dph,r7
      005FE0 12 2B 70         [24] 9277 	lcall	_putchar
                                   9278 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      005FE3 E5 08            [12] 9279 	mov	a,_bp
      005FE5 24 1A            [12] 9280 	add	a,#0x1a
      005FE7 F8               [12] 9281 	mov	r0,a
      005FE8 08               [12] 9282 	inc	r0
      005FE9 08               [12] 9283 	inc	r0
      005FEA 08               [12] 9284 	inc	r0
      005FEB E6               [12] 9285 	mov	a,@r0
      005FEC C3               [12] 9286 	clr	c
      005FED 13               [12] 9287 	rrc	a
      005FEE F6               [12] 9288 	mov	@r0,a
      005FEF 18               [12] 9289 	dec	r0
      005FF0 E6               [12] 9290 	mov	a,@r0
      005FF1 13               [12] 9291 	rrc	a
      005FF2 F6               [12] 9292 	mov	@r0,a
      005FF3 18               [12] 9293 	dec	r0
      005FF4 E6               [12] 9294 	mov	a,@r0
      005FF5 13               [12] 9295 	rrc	a
      005FF6 F6               [12] 9296 	mov	@r0,a
      005FF7 18               [12] 9297 	dec	r0
      005FF8 E6               [12] 9298 	mov	a,@r0
      005FF9 13               [12] 9299 	rrc	a
      005FFA F6               [12] 9300 	mov	@r0,a
      005FFB E5 08            [12] 9301 	mov	a,_bp
      005FFD 24 1A            [12] 9302 	add	a,#0x1a
      005FFF F8               [12] 9303 	mov	r0,a
      006000 E6               [12] 9304 	mov	a,@r0
      006001 08               [12] 9305 	inc	r0
      006002 46               [12] 9306 	orl	a,@r0
      006003 08               [12] 9307 	inc	r0
      006004 46               [12] 9308 	orl	a,@r0
      006005 08               [12] 9309 	inc	r0
      006006 46               [12] 9310 	orl	a,@r0
      006007 70 9B            [24] 9311 	jnz	00156$
                                   9312 ;	calc.c:420: if (n > 0) printall(vals[1]);
      006009                       9313 00108$:
                                   9314 ;	calc.c:421: printstr("\r\nSSTOP0\t");
      006009 7D 63            [12] 9315 	mov	r5,#___str_20
      00600B 7E 8A            [12] 9316 	mov	r6,#(___str_20 >> 8)
      00600D 7F 80            [12] 9317 	mov	r7,#0x80
                                   9318 ;	calc.c:58: return;
      00600F                       9319 00159$:
                                   9320 ;	calc.c:56: for (; *s; s++) putchar(*s);
      00600F 8D 82            [24] 9321 	mov	dpl,r5
      006011 8E 83            [24] 9322 	mov	dph,r6
      006013 8F F0            [24] 9323 	mov	b,r7
      006015 12 70 DA         [24] 9324 	lcall	__gptrget
      006018 FC               [12] 9325 	mov	r4,a
      006019 60 10            [24] 9326 	jz	00132$
      00601B 7B 00            [12] 9327 	mov	r3,#0x00
      00601D 8C 82            [24] 9328 	mov	dpl,r4
      00601F 8B 83            [24] 9329 	mov	dph,r3
      006021 12 2B 70         [24] 9330 	lcall	_putchar
      006024 0D               [12] 9331 	inc	r5
                                   9332 ;	calc.c:421: printstr("\r\nSSTOP0\t");
      006025 BD 00 E7         [24] 9333 	cjne	r5,#0x00,00159$
      006028 0E               [12] 9334 	inc	r6
      006029 80 E4            [24] 9335 	sjmp	00159$
      00602B                       9336 00132$:
                                   9337 ;	calc.c:422: if (n > 1) printall(vals[0]);
      00602B E5 08            [12] 9338 	mov	a,_bp
      00602D 24 09            [12] 9339 	add	a,#0x09
      00602F F8               [12] 9340 	mov	r0,a
      006030 C3               [12] 9341 	clr	c
      006031 74 01            [12] 9342 	mov	a,#0x01
      006033 96               [12] 9343 	subb	a,@r0
      006034 74 80            [12] 9344 	mov	a,#(0x00 ^ 0x80)
      006036 08               [12] 9345 	inc	r0
      006037 86 F0            [24] 9346 	mov	b,@r0
      006039 63 F0 80         [24] 9347 	xrl	b,#0x80
      00603C 95 F0            [12] 9348 	subb	a,b
      00603E 40 03            [24] 9349 	jc	00341$
      006040 02 61 54         [24] 9350 	ljmp	00110$
      006043                       9351 00341$:
      006043 87 04            [24] 9352 	mov	ar4,@r1
      006045 09               [12] 9353 	inc	r1
      006046 87 05            [24] 9354 	mov	ar5,@r1
      006048 09               [12] 9355 	inc	r1
      006049 87 06            [24] 9356 	mov	ar6,@r1
      00604B 09               [12] 9357 	inc	r1
      00604C 87 07            [24] 9358 	mov	ar7,@r1
                                   9359 ;	calc.c:71: printf("%08lx\t", d);
      00604E C0 07            [24] 9360 	push	ar7
      006050 C0 06            [24] 9361 	push	ar6
      006052 C0 05            [24] 9362 	push	ar5
      006054 C0 04            [24] 9363 	push	ar4
      006056 C0 04            [24] 9364 	push	ar4
      006058 C0 05            [24] 9365 	push	ar5
      00605A C0 06            [24] 9366 	push	ar6
      00605C C0 07            [24] 9367 	push	ar7
      00605E 74 5B            [12] 9368 	mov	a,#___str_0
      006060 C0 E0            [24] 9369 	push	acc
      006062 74 89            [12] 9370 	mov	a,#(___str_0 >> 8)
      006064 C0 E0            [24] 9371 	push	acc
      006066 74 80            [12] 9372 	mov	a,#0x80
      006068 C0 E0            [24] 9373 	push	acc
      00606A 12 70 A1         [24] 9374 	lcall	_printf
      00606D E5 81            [12] 9375 	mov	a,sp
      00606F 24 F9            [12] 9376 	add	a,#0xf9
      006071 F5 81            [12] 9377 	mov	sp,a
      006073 D0 04            [24] 9378 	pop	ar4
      006075 D0 05            [24] 9379 	pop	ar5
      006077 D0 06            [24] 9380 	pop	ar6
      006079 D0 07            [24] 9381 	pop	ar7
                                   9382 ;	calc.c:72: printf("% 11ld\t", d);
      00607B C0 07            [24] 9383 	push	ar7
      00607D C0 06            [24] 9384 	push	ar6
      00607F C0 05            [24] 9385 	push	ar5
      006081 C0 04            [24] 9386 	push	ar4
      006083 C0 04            [24] 9387 	push	ar4
      006085 C0 05            [24] 9388 	push	ar5
      006087 C0 06            [24] 9389 	push	ar6
      006089 C0 07            [24] 9390 	push	ar7
      00608B 74 62            [12] 9391 	mov	a,#___str_1
      00608D C0 E0            [24] 9392 	push	acc
      00608F 74 89            [12] 9393 	mov	a,#(___str_1 >> 8)
      006091 C0 E0            [24] 9394 	push	acc
      006093 74 80            [12] 9395 	mov	a,#0x80
      006095 C0 E0            [24] 9396 	push	acc
      006097 12 70 A1         [24] 9397 	lcall	_printf
      00609A E5 81            [12] 9398 	mov	a,sp
      00609C 24 F9            [12] 9399 	add	a,#0xf9
      00609E F5 81            [12] 9400 	mov	sp,a
      0060A0 D0 04            [24] 9401 	pop	ar4
      0060A2 D0 05            [24] 9402 	pop	ar5
      0060A4 D0 06            [24] 9403 	pop	ar6
      0060A6 D0 07            [24] 9404 	pop	ar7
                                   9405 ;	calc.c:73: printf("%011lo\t", d);
      0060A8 C0 07            [24] 9406 	push	ar7
      0060AA C0 06            [24] 9407 	push	ar6
      0060AC C0 05            [24] 9408 	push	ar5
      0060AE C0 04            [24] 9409 	push	ar4
      0060B0 C0 04            [24] 9410 	push	ar4
      0060B2 C0 05            [24] 9411 	push	ar5
      0060B4 C0 06            [24] 9412 	push	ar6
      0060B6 C0 07            [24] 9413 	push	ar7
      0060B8 74 6A            [12] 9414 	mov	a,#___str_2
      0060BA C0 E0            [24] 9415 	push	acc
      0060BC 74 89            [12] 9416 	mov	a,#(___str_2 >> 8)
      0060BE C0 E0            [24] 9417 	push	acc
      0060C0 74 80            [12] 9418 	mov	a,#0x80
      0060C2 C0 E0            [24] 9419 	push	acc
      0060C4 12 70 A1         [24] 9420 	lcall	_printf
      0060C7 E5 81            [12] 9421 	mov	a,sp
      0060C9 24 F9            [12] 9422 	add	a,#0xf9
      0060CB F5 81            [12] 9423 	mov	sp,a
      0060CD D0 04            [24] 9424 	pop	ar4
      0060CF D0 05            [24] 9425 	pop	ar5
      0060D1 D0 06            [24] 9426 	pop	ar6
      0060D3 D0 07            [24] 9427 	pop	ar7
                                   9428 ;	calc.c:74: printbin(d);
      0060D5 E5 08            [12] 9429 	mov	a,_bp
      0060D7 24 16            [12] 9430 	add	a,#0x16
      0060D9 F8               [12] 9431 	mov	r0,a
      0060DA A6 04            [24] 9432 	mov	@r0,ar4
      0060DC 08               [12] 9433 	inc	r0
      0060DD A6 05            [24] 9434 	mov	@r0,ar5
      0060DF 08               [12] 9435 	inc	r0
      0060E0 A6 06            [24] 9436 	mov	@r0,ar6
      0060E2 08               [12] 9437 	inc	r0
      0060E3 A6 07            [24] 9438 	mov	@r0,ar7
                                   9439 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      0060E5 E5 08            [12] 9440 	mov	a,_bp
      0060E7 24 1A            [12] 9441 	add	a,#0x1a
      0060E9 F8               [12] 9442 	mov	r0,a
      0060EA E4               [12] 9443 	clr	a
      0060EB F6               [12] 9444 	mov	@r0,a
      0060EC 08               [12] 9445 	inc	r0
      0060ED F6               [12] 9446 	mov	@r0,a
      0060EE 08               [12] 9447 	inc	r0
      0060EF F6               [12] 9448 	mov	@r0,a
      0060F0 08               [12] 9449 	inc	r0
      0060F1 76 80            [12] 9450 	mov	@r0,#0x80
      0060F3                       9451 00161$:
                                   9452 ;	calc.c:65: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0060F3 E5 08            [12] 9453 	mov	a,_bp
      0060F5 24 16            [12] 9454 	add	a,#0x16
      0060F7 F8               [12] 9455 	mov	r0,a
      0060F8 86 04            [24] 9456 	mov	ar4,@r0
      0060FA 08               [12] 9457 	inc	r0
      0060FB 86 05            [24] 9458 	mov	ar5,@r0
      0060FD 08               [12] 9459 	inc	r0
      0060FE 86 06            [24] 9460 	mov	ar6,@r0
      006100 08               [12] 9461 	inc	r0
      006101 86 07            [24] 9462 	mov	ar7,@r0
      006103 E5 08            [12] 9463 	mov	a,_bp
      006105 24 1A            [12] 9464 	add	a,#0x1a
      006107 F8               [12] 9465 	mov	r0,a
      006108 E6               [12] 9466 	mov	a,@r0
      006109 52 04            [12] 9467 	anl	ar4,a
      00610B 08               [12] 9468 	inc	r0
      00610C E6               [12] 9469 	mov	a,@r0
      00610D 52 05            [12] 9470 	anl	ar5,a
      00610F 08               [12] 9471 	inc	r0
      006110 E6               [12] 9472 	mov	a,@r0
      006111 52 06            [12] 9473 	anl	ar6,a
      006113 08               [12] 9474 	inc	r0
      006114 E6               [12] 9475 	mov	a,@r0
      006115 52 07            [12] 9476 	anl	ar7,a
      006117 EC               [12] 9477 	mov	a,r4
      006118 4D               [12] 9478 	orl	a,r5
      006119 4E               [12] 9479 	orl	a,r6
      00611A 4F               [12] 9480 	orl	a,r7
      00611B 60 06            [24] 9481 	jz	00176$
      00611D 7E 31            [12] 9482 	mov	r6,#0x31
      00611F 7F 00            [12] 9483 	mov	r7,#0x00
      006121 80 04            [24] 9484 	sjmp	00177$
      006123                       9485 00176$:
      006123 7E 30            [12] 9486 	mov	r6,#0x30
      006125 7F 00            [12] 9487 	mov	r7,#0x00
      006127                       9488 00177$:
      006127 8E 82            [24] 9489 	mov	dpl,r6
      006129 8F 83            [24] 9490 	mov	dph,r7
      00612B 12 2B 70         [24] 9491 	lcall	_putchar
                                   9492 ;	calc.c:64: for (mask = 0x80000000lu; mask; mask >>= 1)
      00612E E5 08            [12] 9493 	mov	a,_bp
      006130 24 1A            [12] 9494 	add	a,#0x1a
      006132 F8               [12] 9495 	mov	r0,a
      006133 08               [12] 9496 	inc	r0
      006134 08               [12] 9497 	inc	r0
      006135 08               [12] 9498 	inc	r0
      006136 E6               [12] 9499 	mov	a,@r0
      006137 C3               [12] 9500 	clr	c
      006138 13               [12] 9501 	rrc	a
      006139 F6               [12] 9502 	mov	@r0,a
      00613A 18               [12] 9503 	dec	r0
      00613B E6               [12] 9504 	mov	a,@r0
      00613C 13               [12] 9505 	rrc	a
      00613D F6               [12] 9506 	mov	@r0,a
      00613E 18               [12] 9507 	dec	r0
      00613F E6               [12] 9508 	mov	a,@r0
      006140 13               [12] 9509 	rrc	a
      006141 F6               [12] 9510 	mov	@r0,a
      006142 18               [12] 9511 	dec	r0
      006143 E6               [12] 9512 	mov	a,@r0
      006144 13               [12] 9513 	rrc	a
      006145 F6               [12] 9514 	mov	@r0,a
      006146 E5 08            [12] 9515 	mov	a,_bp
      006148 24 1A            [12] 9516 	add	a,#0x1a
      00614A F8               [12] 9517 	mov	r0,a
      00614B E6               [12] 9518 	mov	a,@r0
      00614C 08               [12] 9519 	inc	r0
      00614D 46               [12] 9520 	orl	a,@r0
      00614E 08               [12] 9521 	inc	r0
      00614F 46               [12] 9522 	orl	a,@r0
      006150 08               [12] 9523 	inc	r0
      006151 46               [12] 9524 	orl	a,@r0
      006152 70 9F            [24] 9525 	jnz	00161$
                                   9526 ;	calc.c:422: if (n > 1) printall(vals[0]);
      006154                       9527 00110$:
                                   9528 ;	calc.c:423: printstr("\r\n");
      006154 7D 72            [12] 9529 	mov	r5,#___str_3
      006156 7E 89            [12] 9530 	mov	r6,#(___str_3 >> 8)
      006158 7F 80            [12] 9531 	mov	r7,#0x80
                                   9532 ;	calc.c:58: return;
      00615A                       9533 00164$:
                                   9534 ;	calc.c:56: for (; *s; s++) putchar(*s);
      00615A 8D 82            [24] 9535 	mov	dpl,r5
      00615C 8E 83            [24] 9536 	mov	dph,r6
      00615E 8F F0            [24] 9537 	mov	b,r7
      006160 12 70 DA         [24] 9538 	lcall	__gptrget
      006163 FC               [12] 9539 	mov	r4,a
      006164 60 10            [24] 9540 	jz	00137$
      006166 7B 00            [12] 9541 	mov	r3,#0x00
      006168 8C 82            [24] 9542 	mov	dpl,r4
      00616A 8B 83            [24] 9543 	mov	dph,r3
      00616C 12 2B 70         [24] 9544 	lcall	_putchar
      00616F 0D               [12] 9545 	inc	r5
                                   9546 ;	calc.c:423: printstr("\r\n");
      006170 BD 00 E7         [24] 9547 	cjne	r5,#0x00,00164$
      006173 0E               [12] 9548 	inc	r6
      006174 80 E4            [24] 9549 	sjmp	00164$
      006176                       9550 00137$:
                                   9551 ;	calc.c:425: return 1;
      006176 90 00 01         [24] 9552 	mov	dptr,#0x0001
                                   9553 ;	calc.c:426: }
      006179 85 08 81         [24] 9554 	mov	sp,_bp
      00617C D0 08            [24] 9555 	pop	_bp
      00617E 22               [24] 9556 	ret
                                   9557 ;------------------------------------------------------------
                                   9558 ;Allocation info for local variables in function 'help'
                                   9559 ;------------------------------------------------------------
                                   9560 ;delta                     Allocated to stack - _bp -5
                                   9561 ;_ctx                      Allocated to registers 
                                   9562 ;__1310720151              Allocated to registers 
                                   9563 ;s                         Allocated to registers r5 r6 r7 
                                   9564 ;__1310720153              Allocated to registers 
                                   9565 ;s                         Allocated to registers r5 r6 r7 
                                   9566 ;__1310720155              Allocated to registers 
                                   9567 ;s                         Allocated to registers r5 r6 r7 
                                   9568 ;__1310720157              Allocated to registers 
                                   9569 ;s                         Allocated to registers r5 r6 r7 
                                   9570 ;__1310720159              Allocated to registers 
                                   9571 ;s                         Allocated to registers r5 r6 r7 
                                   9572 ;__1310720161              Allocated to registers 
                                   9573 ;s                         Allocated to registers r5 r6 r7 
                                   9574 ;__1310720163              Allocated to registers 
                                   9575 ;s                         Allocated to registers r5 r6 r7 
                                   9576 ;__1310720165              Allocated to registers 
                                   9577 ;s                         Allocated to registers r5 r6 r7 
                                   9578 ;__1310720167              Allocated to registers 
                                   9579 ;s                         Allocated to registers r5 r6 r7 
                                   9580 ;__1310720169              Allocated to registers 
                                   9581 ;s                         Allocated to registers r5 r6 r7 
                                   9582 ;__1310720171              Allocated to registers 
                                   9583 ;s                         Allocated to registers r5 r6 r7 
                                   9584 ;__1310720173              Allocated to registers 
                                   9585 ;s                         Allocated to registers r5 r6 r7 
                                   9586 ;__1310720175              Allocated to registers 
                                   9587 ;s                         Allocated to registers r5 r6 r7 
                                   9588 ;__1310720177              Allocated to registers 
                                   9589 ;s                         Allocated to registers r5 r6 r7 
                                   9590 ;__1310720179              Allocated to registers 
                                   9591 ;s                         Allocated to registers r5 r6 r7 
                                   9592 ;__1310720181              Allocated to registers 
                                   9593 ;s                         Allocated to registers r5 r6 r7 
                                   9594 ;__1310720183              Allocated to registers 
                                   9595 ;s                         Allocated to registers r5 r6 r7 
                                   9596 ;__1310720185              Allocated to registers 
                                   9597 ;s                         Allocated to registers r5 r6 r7 
                                   9598 ;__1310720187              Allocated to registers 
                                   9599 ;s                         Allocated to registers r5 r6 r7 
                                   9600 ;__1310720189              Allocated to registers 
                                   9601 ;s                         Allocated to registers r5 r6 r7 
                                   9602 ;__1310720191              Allocated to registers 
                                   9603 ;s                         Allocated to registers r5 r6 r7 
                                   9604 ;__1310720193              Allocated to registers 
                                   9605 ;s                         Allocated to registers r5 r6 r7 
                                   9606 ;__1310720195              Allocated to registers 
                                   9607 ;s                         Allocated to registers r5 r6 r7 
                                   9608 ;__1310720197              Allocated to registers 
                                   9609 ;s                         Allocated to registers r5 r6 r7 
                                   9610 ;__1310720199              Allocated to registers 
                                   9611 ;s                         Allocated to registers r5 r6 r7 
                                   9612 ;__1310720201              Allocated to registers 
                                   9613 ;s                         Allocated to registers r5 r6 r7 
                                   9614 ;__1310720203              Allocated to registers 
                                   9615 ;s                         Allocated to registers r5 r6 r7 
                                   9616 ;__1310720205              Allocated to registers 
                                   9617 ;s                         Allocated to registers r5 r6 r7 
                                   9618 ;__1310720207              Allocated to registers 
                                   9619 ;s                         Allocated to registers r5 r6 r7 
                                   9620 ;__1310720209              Allocated to registers 
                                   9621 ;s                         Allocated to registers r5 r6 r7 
                                   9622 ;__1310720211              Allocated to registers 
                                   9623 ;s                         Allocated to registers r5 r6 r7 
                                   9624 ;------------------------------------------------------------
                                   9625 ;	calc.c:428: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   9626 ;	-----------------------------------------
                                   9627 ;	 function help
                                   9628 ;	-----------------------------------------
      00617F                       9629 _help:
      00617F C0 08            [24] 9630 	push	_bp
      006181 85 81 08         [24] 9631 	mov	_bp,sp
                                   9632 ;	calc.c:432: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      006184 7D 6D            [12] 9633 	mov	r5,#___str_21
      006186 7E 8A            [12] 9634 	mov	r6,#(___str_21 >> 8)
      006188 7F 80            [12] 9635 	mov	r7,#0x80
                                   9636 ;	calc.c:58: return;
      00618A                       9637 00164$:
                                   9638 ;	calc.c:56: for (; *s; s++) putchar(*s);
      00618A 8D 82            [24] 9639 	mov	dpl,r5
      00618C 8E 83            [24] 9640 	mov	dph,r6
      00618E 8F F0            [24] 9641 	mov	b,r7
      006190 12 70 DA         [24] 9642 	lcall	__gptrget
      006193 FC               [12] 9643 	mov	r4,a
      006194 60 10            [24] 9644 	jz	00102$
      006196 7B 00            [12] 9645 	mov	r3,#0x00
      006198 8C 82            [24] 9646 	mov	dpl,r4
      00619A 8B 83            [24] 9647 	mov	dph,r3
      00619C 12 2B 70         [24] 9648 	lcall	_putchar
      00619F 0D               [12] 9649 	inc	r5
                                   9650 ;	calc.c:432: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      0061A0 BD 00 E7         [24] 9651 	cjne	r5,#0x00,00164$
      0061A3 0E               [12] 9652 	inc	r6
      0061A4 80 E4            [24] 9653 	sjmp	00164$
      0061A6                       9654 00102$:
                                   9655 ;	calc.c:433: printstr("p.\tpop top\r\n");
      0061A6 7D 85            [12] 9656 	mov	r5,#___str_22
      0061A8 7E 8A            [12] 9657 	mov	r6,#(___str_22 >> 8)
      0061AA 7F 80            [12] 9658 	mov	r7,#0x80
                                   9659 ;	calc.c:58: return;
      0061AC                       9660 00167$:
                                   9661 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0061AC 8D 82            [24] 9662 	mov	dpl,r5
      0061AE 8E 83            [24] 9663 	mov	dph,r6
      0061B0 8F F0            [24] 9664 	mov	b,r7
      0061B2 12 70 DA         [24] 9665 	lcall	__gptrget
      0061B5 FC               [12] 9666 	mov	r4,a
      0061B6 60 10            [24] 9667 	jz	00104$
      0061B8 7B 00            [12] 9668 	mov	r3,#0x00
      0061BA 8C 82            [24] 9669 	mov	dpl,r4
      0061BC 8B 83            [24] 9670 	mov	dph,r3
      0061BE 12 2B 70         [24] 9671 	lcall	_putchar
      0061C1 0D               [12] 9672 	inc	r5
                                   9673 ;	calc.c:433: printstr("p.\tpop top\r\n");
      0061C2 BD 00 E7         [24] 9674 	cjne	r5,#0x00,00167$
      0061C5 0E               [12] 9675 	inc	r6
      0061C6 80 E4            [24] 9676 	sjmp	00167$
      0061C8                       9677 00104$:
                                   9678 ;	calc.c:434: printstr("P\tpop stack\r\n");
      0061C8 7D 92            [12] 9679 	mov	r5,#___str_23
      0061CA 7E 8A            [12] 9680 	mov	r6,#(___str_23 >> 8)
      0061CC 7F 80            [12] 9681 	mov	r7,#0x80
                                   9682 ;	calc.c:58: return;
      0061CE                       9683 00170$:
                                   9684 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0061CE 8D 82            [24] 9685 	mov	dpl,r5
      0061D0 8E 83            [24] 9686 	mov	dph,r6
      0061D2 8F F0            [24] 9687 	mov	b,r7
      0061D4 12 70 DA         [24] 9688 	lcall	__gptrget
      0061D7 FC               [12] 9689 	mov	r4,a
      0061D8 60 10            [24] 9690 	jz	00106$
      0061DA 7B 00            [12] 9691 	mov	r3,#0x00
      0061DC 8C 82            [24] 9692 	mov	dpl,r4
      0061DE 8B 83            [24] 9693 	mov	dph,r3
      0061E0 12 2B 70         [24] 9694 	lcall	_putchar
      0061E3 0D               [12] 9695 	inc	r5
                                   9696 ;	calc.c:434: printstr("P\tpop stack\r\n");
      0061E4 BD 00 E7         [24] 9697 	cjne	r5,#0x00,00170$
      0061E7 0E               [12] 9698 	inc	r6
      0061E8 80 E4            [24] 9699 	sjmp	00170$
      0061EA                       9700 00106$:
                                   9701 ;	calc.c:435: printstr("v\tpeek top\r\n");
      0061EA 7D A0            [12] 9702 	mov	r5,#___str_24
      0061EC 7E 8A            [12] 9703 	mov	r6,#(___str_24 >> 8)
      0061EE 7F 80            [12] 9704 	mov	r7,#0x80
                                   9705 ;	calc.c:58: return;
      0061F0                       9706 00173$:
                                   9707 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0061F0 8D 82            [24] 9708 	mov	dpl,r5
      0061F2 8E 83            [24] 9709 	mov	dph,r6
      0061F4 8F F0            [24] 9710 	mov	b,r7
      0061F6 12 70 DA         [24] 9711 	lcall	__gptrget
      0061F9 FC               [12] 9712 	mov	r4,a
      0061FA 60 10            [24] 9713 	jz	00108$
      0061FC 7B 00            [12] 9714 	mov	r3,#0x00
      0061FE 8C 82            [24] 9715 	mov	dpl,r4
      006200 8B 83            [24] 9716 	mov	dph,r3
      006202 12 2B 70         [24] 9717 	lcall	_putchar
      006205 0D               [12] 9718 	inc	r5
                                   9719 ;	calc.c:435: printstr("v\tpeek top\r\n");
      006206 BD 00 E7         [24] 9720 	cjne	r5,#0x00,00173$
      006209 0E               [12] 9721 	inc	r6
      00620A 80 E4            [24] 9722 	sjmp	00173$
      00620C                       9723 00108$:
                                   9724 ;	calc.c:436: printstr("V\tpeek stack\r\n");
      00620C 7D AD            [12] 9725 	mov	r5,#___str_25
      00620E 7E 8A            [12] 9726 	mov	r6,#(___str_25 >> 8)
      006210 7F 80            [12] 9727 	mov	r7,#0x80
                                   9728 ;	calc.c:58: return;
      006212                       9729 00176$:
                                   9730 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006212 8D 82            [24] 9731 	mov	dpl,r5
      006214 8E 83            [24] 9732 	mov	dph,r6
      006216 8F F0            [24] 9733 	mov	b,r7
      006218 12 70 DA         [24] 9734 	lcall	__gptrget
      00621B FC               [12] 9735 	mov	r4,a
      00621C 60 10            [24] 9736 	jz	00110$
      00621E 7B 00            [12] 9737 	mov	r3,#0x00
      006220 8C 82            [24] 9738 	mov	dpl,r4
      006222 8B 83            [24] 9739 	mov	dph,r3
      006224 12 2B 70         [24] 9740 	lcall	_putchar
      006227 0D               [12] 9741 	inc	r5
                                   9742 ;	calc.c:436: printstr("V\tpeek stack\r\n");
      006228 BD 00 E7         [24] 9743 	cjne	r5,#0x00,00176$
      00622B 0E               [12] 9744 	inc	r6
      00622C 80 E4            [24] 9745 	sjmp	00176$
      00622E                       9746 00110$:
                                   9747 ;	calc.c:437: printstr("i\treset acc\r\n");
      00622E 7D BC            [12] 9748 	mov	r5,#___str_26
      006230 7E 8A            [12] 9749 	mov	r6,#(___str_26 >> 8)
      006232 7F 80            [12] 9750 	mov	r7,#0x80
                                   9751 ;	calc.c:58: return;
      006234                       9752 00179$:
                                   9753 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006234 8D 82            [24] 9754 	mov	dpl,r5
      006236 8E 83            [24] 9755 	mov	dph,r6
      006238 8F F0            [24] 9756 	mov	b,r7
      00623A 12 70 DA         [24] 9757 	lcall	__gptrget
      00623D FC               [12] 9758 	mov	r4,a
      00623E 60 10            [24] 9759 	jz	00112$
      006240 7B 00            [12] 9760 	mov	r3,#0x00
      006242 8C 82            [24] 9761 	mov	dpl,r4
      006244 8B 83            [24] 9762 	mov	dph,r3
      006246 12 2B 70         [24] 9763 	lcall	_putchar
      006249 0D               [12] 9764 	inc	r5
                                   9765 ;	calc.c:437: printstr("i\treset acc\r\n");
      00624A BD 00 E7         [24] 9766 	cjne	r5,#0x00,00179$
      00624D 0E               [12] 9767 	inc	r6
      00624E 80 E4            [24] 9768 	sjmp	00179$
      006250                       9769 00112$:
                                   9770 ;	calc.c:438: printstr("I\treset and discard acc\r\n");
      006250 7D CA            [12] 9771 	mov	r5,#___str_27
      006252 7E 8A            [12] 9772 	mov	r6,#(___str_27 >> 8)
      006254 7F 80            [12] 9773 	mov	r7,#0x80
                                   9774 ;	calc.c:58: return;
      006256                       9775 00182$:
                                   9776 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006256 8D 82            [24] 9777 	mov	dpl,r5
      006258 8E 83            [24] 9778 	mov	dph,r6
      00625A 8F F0            [24] 9779 	mov	b,r7
      00625C 12 70 DA         [24] 9780 	lcall	__gptrget
      00625F FC               [12] 9781 	mov	r4,a
      006260 60 10            [24] 9782 	jz	00114$
      006262 7B 00            [12] 9783 	mov	r3,#0x00
      006264 8C 82            [24] 9784 	mov	dpl,r4
      006266 8B 83            [24] 9785 	mov	dph,r3
      006268 12 2B 70         [24] 9786 	lcall	_putchar
      00626B 0D               [12] 9787 	inc	r5
                                   9788 ;	calc.c:438: printstr("I\treset and discard acc\r\n");
      00626C BD 00 E7         [24] 9789 	cjne	r5,#0x00,00182$
      00626F 0E               [12] 9790 	inc	r6
      006270 80 E4            [24] 9791 	sjmp	00182$
      006272                       9792 00114$:
                                   9793 ;	calc.c:439: printstr("x\texchange top 2\r\n");
      006272 7D E4            [12] 9794 	mov	r5,#___str_28
      006274 7E 8A            [12] 9795 	mov	r6,#(___str_28 >> 8)
      006276 7F 80            [12] 9796 	mov	r7,#0x80
                                   9797 ;	calc.c:58: return;
      006278                       9798 00185$:
                                   9799 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006278 8D 82            [24] 9800 	mov	dpl,r5
      00627A 8E 83            [24] 9801 	mov	dph,r6
      00627C 8F F0            [24] 9802 	mov	b,r7
      00627E 12 70 DA         [24] 9803 	lcall	__gptrget
      006281 FC               [12] 9804 	mov	r4,a
      006282 60 10            [24] 9805 	jz	00116$
      006284 7B 00            [12] 9806 	mov	r3,#0x00
      006286 8C 82            [24] 9807 	mov	dpl,r4
      006288 8B 83            [24] 9808 	mov	dph,r3
      00628A 12 2B 70         [24] 9809 	lcall	_putchar
      00628D 0D               [12] 9810 	inc	r5
                                   9811 ;	calc.c:439: printstr("x\texchange top 2\r\n");
      00628E BD 00 E7         [24] 9812 	cjne	r5,#0x00,00185$
      006291 0E               [12] 9813 	inc	r6
      006292 80 E4            [24] 9814 	sjmp	00185$
      006294                       9815 00116$:
                                   9816 ;	calc.c:440: printstr("X\texchange stacks primary <-> secondary\r\n");
      006294 7D F7            [12] 9817 	mov	r5,#___str_29
      006296 7E 8A            [12] 9818 	mov	r6,#(___str_29 >> 8)
      006298 7F 80            [12] 9819 	mov	r7,#0x80
                                   9820 ;	calc.c:58: return;
      00629A                       9821 00188$:
                                   9822 ;	calc.c:56: for (; *s; s++) putchar(*s);
      00629A 8D 82            [24] 9823 	mov	dpl,r5
      00629C 8E 83            [24] 9824 	mov	dph,r6
      00629E 8F F0            [24] 9825 	mov	b,r7
      0062A0 12 70 DA         [24] 9826 	lcall	__gptrget
      0062A3 FC               [12] 9827 	mov	r4,a
      0062A4 60 10            [24] 9828 	jz	00118$
      0062A6 7B 00            [12] 9829 	mov	r3,#0x00
      0062A8 8C 82            [24] 9830 	mov	dpl,r4
      0062AA 8B 83            [24] 9831 	mov	dph,r3
      0062AC 12 2B 70         [24] 9832 	lcall	_putchar
      0062AF 0D               [12] 9833 	inc	r5
                                   9834 ;	calc.c:440: printstr("X\texchange stacks primary <-> secondary\r\n");
      0062B0 BD 00 E7         [24] 9835 	cjne	r5,#0x00,00188$
      0062B3 0E               [12] 9836 	inc	r6
      0062B4 80 E4            [24] 9837 	sjmp	00188$
      0062B6                       9838 00118$:
                                   9839 ;	calc.c:441: printstr("T\texchange tops primary <-> secondary\r\n");
      0062B6 7D 21            [12] 9840 	mov	r5,#___str_30
      0062B8 7E 8B            [12] 9841 	mov	r6,#(___str_30 >> 8)
      0062BA 7F 80            [12] 9842 	mov	r7,#0x80
                                   9843 ;	calc.c:58: return;
      0062BC                       9844 00191$:
                                   9845 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0062BC 8D 82            [24] 9846 	mov	dpl,r5
      0062BE 8E 83            [24] 9847 	mov	dph,r6
      0062C0 8F F0            [24] 9848 	mov	b,r7
      0062C2 12 70 DA         [24] 9849 	lcall	__gptrget
      0062C5 FC               [12] 9850 	mov	r4,a
      0062C6 60 10            [24] 9851 	jz	00120$
      0062C8 7B 00            [12] 9852 	mov	r3,#0x00
      0062CA 8C 82            [24] 9853 	mov	dpl,r4
      0062CC 8B 83            [24] 9854 	mov	dph,r3
      0062CE 12 2B 70         [24] 9855 	lcall	_putchar
      0062D1 0D               [12] 9856 	inc	r5
                                   9857 ;	calc.c:441: printstr("T\texchange tops primary <-> secondary\r\n");
      0062D2 BD 00 E7         [24] 9858 	cjne	r5,#0x00,00191$
      0062D5 0E               [12] 9859 	inc	r6
      0062D6 80 E4            [24] 9860 	sjmp	00191$
      0062D8                       9861 00120$:
                                   9862 ;	calc.c:442: printstr("U\tcopy top secondary -> primary\r\n");
      0062D8 7D 49            [12] 9863 	mov	r5,#___str_31
      0062DA 7E 8B            [12] 9864 	mov	r6,#(___str_31 >> 8)
      0062DC 7F 80            [12] 9865 	mov	r7,#0x80
                                   9866 ;	calc.c:58: return;
      0062DE                       9867 00194$:
                                   9868 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0062DE 8D 82            [24] 9869 	mov	dpl,r5
      0062E0 8E 83            [24] 9870 	mov	dph,r6
      0062E2 8F F0            [24] 9871 	mov	b,r7
      0062E4 12 70 DA         [24] 9872 	lcall	__gptrget
      0062E7 FC               [12] 9873 	mov	r4,a
      0062E8 60 10            [24] 9874 	jz	00122$
      0062EA 7B 00            [12] 9875 	mov	r3,#0x00
      0062EC 8C 82            [24] 9876 	mov	dpl,r4
      0062EE 8B 83            [24] 9877 	mov	dph,r3
      0062F0 12 2B 70         [24] 9878 	lcall	_putchar
      0062F3 0D               [12] 9879 	inc	r5
                                   9880 ;	calc.c:442: printstr("U\tcopy top secondary -> primary\r\n");
      0062F4 BD 00 E7         [24] 9881 	cjne	r5,#0x00,00194$
      0062F7 0E               [12] 9882 	inc	r6
      0062F8 80 E4            [24] 9883 	sjmp	00194$
      0062FA                       9884 00122$:
                                   9885 ;	calc.c:443: printstr("u\tcopy top primary -> secondary\r\n");
      0062FA 7D 6B            [12] 9886 	mov	r5,#___str_32
      0062FC 7E 8B            [12] 9887 	mov	r6,#(___str_32 >> 8)
      0062FE 7F 80            [12] 9888 	mov	r7,#0x80
                                   9889 ;	calc.c:58: return;
      006300                       9890 00197$:
                                   9891 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006300 8D 82            [24] 9892 	mov	dpl,r5
      006302 8E 83            [24] 9893 	mov	dph,r6
      006304 8F F0            [24] 9894 	mov	b,r7
      006306 12 70 DA         [24] 9895 	lcall	__gptrget
      006309 FC               [12] 9896 	mov	r4,a
      00630A 60 10            [24] 9897 	jz	00124$
      00630C 7B 00            [12] 9898 	mov	r3,#0x00
      00630E 8C 82            [24] 9899 	mov	dpl,r4
      006310 8B 83            [24] 9900 	mov	dph,r3
      006312 12 2B 70         [24] 9901 	lcall	_putchar
      006315 0D               [12] 9902 	inc	r5
                                   9903 ;	calc.c:443: printstr("u\tcopy top primary -> secondary\r\n");
      006316 BD 00 E7         [24] 9904 	cjne	r5,#0x00,00197$
      006319 0E               [12] 9905 	inc	r6
      00631A 80 E4            [24] 9906 	sjmp	00197$
      00631C                       9907 00124$:
                                   9908 ;	calc.c:444: printstr("M\tmove top secondary -> primary\r\n");
      00631C 7D 8D            [12] 9909 	mov	r5,#___str_33
      00631E 7E 8B            [12] 9910 	mov	r6,#(___str_33 >> 8)
      006320 7F 80            [12] 9911 	mov	r7,#0x80
                                   9912 ;	calc.c:58: return;
      006322                       9913 00200$:
                                   9914 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006322 8D 82            [24] 9915 	mov	dpl,r5
      006324 8E 83            [24] 9916 	mov	dph,r6
      006326 8F F0            [24] 9917 	mov	b,r7
      006328 12 70 DA         [24] 9918 	lcall	__gptrget
      00632B FC               [12] 9919 	mov	r4,a
      00632C 60 10            [24] 9920 	jz	00126$
      00632E 7B 00            [12] 9921 	mov	r3,#0x00
      006330 8C 82            [24] 9922 	mov	dpl,r4
      006332 8B 83            [24] 9923 	mov	dph,r3
      006334 12 2B 70         [24] 9924 	lcall	_putchar
      006337 0D               [12] 9925 	inc	r5
                                   9926 ;	calc.c:444: printstr("M\tmove top secondary -> primary\r\n");
      006338 BD 00 E7         [24] 9927 	cjne	r5,#0x00,00200$
      00633B 0E               [12] 9928 	inc	r6
      00633C 80 E4            [24] 9929 	sjmp	00200$
      00633E                       9930 00126$:
                                   9931 ;	calc.c:445: printstr("m\tmove top primary -> secondary\r\n");
      00633E 7D AF            [12] 9932 	mov	r5,#___str_34
      006340 7E 8B            [12] 9933 	mov	r6,#(___str_34 >> 8)
      006342 7F 80            [12] 9934 	mov	r7,#0x80
                                   9935 ;	calc.c:58: return;
      006344                       9936 00203$:
                                   9937 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006344 8D 82            [24] 9938 	mov	dpl,r5
      006346 8E 83            [24] 9939 	mov	dph,r6
      006348 8F F0            [24] 9940 	mov	b,r7
      00634A 12 70 DA         [24] 9941 	lcall	__gptrget
      00634D FC               [12] 9942 	mov	r4,a
      00634E 60 10            [24] 9943 	jz	00128$
      006350 7B 00            [12] 9944 	mov	r3,#0x00
      006352 8C 82            [24] 9945 	mov	dpl,r4
      006354 8B 83            [24] 9946 	mov	dph,r3
      006356 12 2B 70         [24] 9947 	lcall	_putchar
      006359 0D               [12] 9948 	inc	r5
                                   9949 ;	calc.c:445: printstr("m\tmove top primary -> secondary\r\n");
      00635A BD 00 E7         [24] 9950 	cjne	r5,#0x00,00203$
      00635D 0E               [12] 9951 	inc	r6
      00635E 80 E4            [24] 9952 	sjmp	00203$
      006360                       9953 00128$:
                                   9954 ;	calc.c:446: printstr("+\tadd top 2\r\n");
      006360 7D D1            [12] 9955 	mov	r5,#___str_35
      006362 7E 8B            [12] 9956 	mov	r6,#(___str_35 >> 8)
      006364 7F 80            [12] 9957 	mov	r7,#0x80
                                   9958 ;	calc.c:58: return;
      006366                       9959 00206$:
                                   9960 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006366 8D 82            [24] 9961 	mov	dpl,r5
      006368 8E 83            [24] 9962 	mov	dph,r6
      00636A 8F F0            [24] 9963 	mov	b,r7
      00636C 12 70 DA         [24] 9964 	lcall	__gptrget
      00636F FC               [12] 9965 	mov	r4,a
      006370 60 10            [24] 9966 	jz	00130$
      006372 7B 00            [12] 9967 	mov	r3,#0x00
      006374 8C 82            [24] 9968 	mov	dpl,r4
      006376 8B 83            [24] 9969 	mov	dph,r3
      006378 12 2B 70         [24] 9970 	lcall	_putchar
      00637B 0D               [12] 9971 	inc	r5
                                   9972 ;	calc.c:446: printstr("+\tadd top 2\r\n");
      00637C BD 00 E7         [24] 9973 	cjne	r5,#0x00,00206$
      00637F 0E               [12] 9974 	inc	r6
      006380 80 E4            [24] 9975 	sjmp	00206$
      006382                       9976 00130$:
                                   9977 ;	calc.c:447: printstr("-\tsubtract top 2\r\n");
      006382 7D DF            [12] 9978 	mov	r5,#___str_36
      006384 7E 8B            [12] 9979 	mov	r6,#(___str_36 >> 8)
      006386 7F 80            [12] 9980 	mov	r7,#0x80
                                   9981 ;	calc.c:58: return;
      006388                       9982 00209$:
                                   9983 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006388 8D 82            [24] 9984 	mov	dpl,r5
      00638A 8E 83            [24] 9985 	mov	dph,r6
      00638C 8F F0            [24] 9986 	mov	b,r7
      00638E 12 70 DA         [24] 9987 	lcall	__gptrget
      006391 FC               [12] 9988 	mov	r4,a
      006392 60 10            [24] 9989 	jz	00132$
      006394 7B 00            [12] 9990 	mov	r3,#0x00
      006396 8C 82            [24] 9991 	mov	dpl,r4
      006398 8B 83            [24] 9992 	mov	dph,r3
      00639A 12 2B 70         [24] 9993 	lcall	_putchar
      00639D 0D               [12] 9994 	inc	r5
                                   9995 ;	calc.c:447: printstr("-\tsubtract top 2\r\n");
      00639E BD 00 E7         [24] 9996 	cjne	r5,#0x00,00209$
      0063A1 0E               [12] 9997 	inc	r6
      0063A2 80 E4            [24] 9998 	sjmp	00209$
      0063A4                       9999 00132$:
                                  10000 ;	calc.c:448: printstr("*\tmultiply top 2\r\n");
      0063A4 7D F2            [12]10001 	mov	r5,#___str_37
      0063A6 7E 8B            [12]10002 	mov	r6,#(___str_37 >> 8)
      0063A8 7F 80            [12]10003 	mov	r7,#0x80
                                  10004 ;	calc.c:58: return;
      0063AA                      10005 00212$:
                                  10006 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0063AA 8D 82            [24]10007 	mov	dpl,r5
      0063AC 8E 83            [24]10008 	mov	dph,r6
      0063AE 8F F0            [24]10009 	mov	b,r7
      0063B0 12 70 DA         [24]10010 	lcall	__gptrget
      0063B3 FC               [12]10011 	mov	r4,a
      0063B4 60 10            [24]10012 	jz	00134$
      0063B6 7B 00            [12]10013 	mov	r3,#0x00
      0063B8 8C 82            [24]10014 	mov	dpl,r4
      0063BA 8B 83            [24]10015 	mov	dph,r3
      0063BC 12 2B 70         [24]10016 	lcall	_putchar
      0063BF 0D               [12]10017 	inc	r5
                                  10018 ;	calc.c:448: printstr("*\tmultiply top 2\r\n");
      0063C0 BD 00 E7         [24]10019 	cjne	r5,#0x00,00212$
      0063C3 0E               [12]10020 	inc	r6
      0063C4 80 E4            [24]10021 	sjmp	00212$
      0063C6                      10022 00134$:
                                  10023 ;	calc.c:449: printstr("/\tdivide top 2\r\n");
      0063C6 7D 05            [12]10024 	mov	r5,#___str_38
      0063C8 7E 8C            [12]10025 	mov	r6,#(___str_38 >> 8)
      0063CA 7F 80            [12]10026 	mov	r7,#0x80
                                  10027 ;	calc.c:58: return;
      0063CC                      10028 00215$:
                                  10029 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0063CC 8D 82            [24]10030 	mov	dpl,r5
      0063CE 8E 83            [24]10031 	mov	dph,r6
      0063D0 8F F0            [24]10032 	mov	b,r7
      0063D2 12 70 DA         [24]10033 	lcall	__gptrget
      0063D5 FC               [12]10034 	mov	r4,a
      0063D6 60 10            [24]10035 	jz	00136$
      0063D8 7B 00            [12]10036 	mov	r3,#0x00
      0063DA 8C 82            [24]10037 	mov	dpl,r4
      0063DC 8B 83            [24]10038 	mov	dph,r3
      0063DE 12 2B 70         [24]10039 	lcall	_putchar
      0063E1 0D               [12]10040 	inc	r5
                                  10041 ;	calc.c:449: printstr("/\tdivide top 2\r\n");
      0063E2 BD 00 E7         [24]10042 	cjne	r5,#0x00,00215$
      0063E5 0E               [12]10043 	inc	r6
      0063E6 80 E4            [24]10044 	sjmp	00215$
      0063E8                      10045 00136$:
                                  10046 ;	calc.c:450: printstr("\\\tdivide top 2 unsigned\r\n");	
      0063E8 7D 16            [12]10047 	mov	r5,#___str_39
      0063EA 7E 8C            [12]10048 	mov	r6,#(___str_39 >> 8)
      0063EC 7F 80            [12]10049 	mov	r7,#0x80
                                  10050 ;	calc.c:58: return;
      0063EE                      10051 00218$:
                                  10052 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0063EE 8D 82            [24]10053 	mov	dpl,r5
      0063F0 8E 83            [24]10054 	mov	dph,r6
      0063F2 8F F0            [24]10055 	mov	b,r7
      0063F4 12 70 DA         [24]10056 	lcall	__gptrget
      0063F7 FC               [12]10057 	mov	r4,a
      0063F8 60 10            [24]10058 	jz	00138$
      0063FA 7B 00            [12]10059 	mov	r3,#0x00
      0063FC 8C 82            [24]10060 	mov	dpl,r4
      0063FE 8B 83            [24]10061 	mov	dph,r3
      006400 12 2B 70         [24]10062 	lcall	_putchar
      006403 0D               [12]10063 	inc	r5
                                  10064 ;	calc.c:450: printstr("\\\tdivide top 2 unsigned\r\n");	
      006404 BD 00 E7         [24]10065 	cjne	r5,#0x00,00218$
      006407 0E               [12]10066 	inc	r6
      006408 80 E4            [24]10067 	sjmp	00218$
      00640A                      10068 00138$:
                                  10069 ;	calc.c:451: printstr("%\tmodulus top 2\r\n");
      00640A 7D 30            [12]10070 	mov	r5,#___str_40
      00640C 7E 8C            [12]10071 	mov	r6,#(___str_40 >> 8)
      00640E 7F 80            [12]10072 	mov	r7,#0x80
                                  10073 ;	calc.c:58: return;
      006410                      10074 00221$:
                                  10075 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006410 8D 82            [24]10076 	mov	dpl,r5
      006412 8E 83            [24]10077 	mov	dph,r6
      006414 8F F0            [24]10078 	mov	b,r7
      006416 12 70 DA         [24]10079 	lcall	__gptrget
      006419 FC               [12]10080 	mov	r4,a
      00641A 60 10            [24]10081 	jz	00140$
      00641C 7B 00            [12]10082 	mov	r3,#0x00
      00641E 8C 82            [24]10083 	mov	dpl,r4
      006420 8B 83            [24]10084 	mov	dph,r3
      006422 12 2B 70         [24]10085 	lcall	_putchar
      006425 0D               [12]10086 	inc	r5
                                  10087 ;	calc.c:451: printstr("%\tmodulus top 2\r\n");
      006426 BD 00 E7         [24]10088 	cjne	r5,#0x00,00221$
      006429 0E               [12]10089 	inc	r6
      00642A 80 E4            [24]10090 	sjmp	00221$
      00642C                      10091 00140$:
                                  10092 ;	calc.c:452: printstr("#\tmodulus top 2 unsigned\r\n");
      00642C 7D 42            [12]10093 	mov	r5,#___str_41
      00642E 7E 8C            [12]10094 	mov	r6,#(___str_41 >> 8)
      006430 7F 80            [12]10095 	mov	r7,#0x80
                                  10096 ;	calc.c:58: return;
      006432                      10097 00224$:
                                  10098 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006432 8D 82            [24]10099 	mov	dpl,r5
      006434 8E 83            [24]10100 	mov	dph,r6
      006436 8F F0            [24]10101 	mov	b,r7
      006438 12 70 DA         [24]10102 	lcall	__gptrget
      00643B FC               [12]10103 	mov	r4,a
      00643C 60 10            [24]10104 	jz	00142$
      00643E 7B 00            [12]10105 	mov	r3,#0x00
      006440 8C 82            [24]10106 	mov	dpl,r4
      006442 8B 83            [24]10107 	mov	dph,r3
      006444 12 2B 70         [24]10108 	lcall	_putchar
      006447 0D               [12]10109 	inc	r5
                                  10110 ;	calc.c:452: printstr("#\tmodulus top 2 unsigned\r\n");
      006448 BD 00 E7         [24]10111 	cjne	r5,#0x00,00224$
      00644B 0E               [12]10112 	inc	r6
      00644C 80 E4            [24]10113 	sjmp	00224$
      00644E                      10114 00142$:
                                  10115 ;	calc.c:453: printstr("&\tand top 2\r\n");
      00644E 7D 5D            [12]10116 	mov	r5,#___str_42
      006450 7E 8C            [12]10117 	mov	r6,#(___str_42 >> 8)
      006452 7F 80            [12]10118 	mov	r7,#0x80
                                  10119 ;	calc.c:58: return;
      006454                      10120 00227$:
                                  10121 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006454 8D 82            [24]10122 	mov	dpl,r5
      006456 8E 83            [24]10123 	mov	dph,r6
      006458 8F F0            [24]10124 	mov	b,r7
      00645A 12 70 DA         [24]10125 	lcall	__gptrget
      00645D FC               [12]10126 	mov	r4,a
      00645E 60 10            [24]10127 	jz	00144$
      006460 7B 00            [12]10128 	mov	r3,#0x00
      006462 8C 82            [24]10129 	mov	dpl,r4
      006464 8B 83            [24]10130 	mov	dph,r3
      006466 12 2B 70         [24]10131 	lcall	_putchar
      006469 0D               [12]10132 	inc	r5
                                  10133 ;	calc.c:453: printstr("&\tand top 2\r\n");
      00646A BD 00 E7         [24]10134 	cjne	r5,#0x00,00227$
      00646D 0E               [12]10135 	inc	r6
      00646E 80 E4            [24]10136 	sjmp	00227$
      006470                      10137 00144$:
                                  10138 ;	calc.c:454: printstr("|\tor top 2\r\n");
      006470 7D 6B            [12]10139 	mov	r5,#___str_43
      006472 7E 8C            [12]10140 	mov	r6,#(___str_43 >> 8)
      006474 7F 80            [12]10141 	mov	r7,#0x80
                                  10142 ;	calc.c:58: return;
      006476                      10143 00230$:
                                  10144 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006476 8D 82            [24]10145 	mov	dpl,r5
      006478 8E 83            [24]10146 	mov	dph,r6
      00647A 8F F0            [24]10147 	mov	b,r7
      00647C 12 70 DA         [24]10148 	lcall	__gptrget
      00647F FC               [12]10149 	mov	r4,a
      006480 60 10            [24]10150 	jz	00146$
      006482 7B 00            [12]10151 	mov	r3,#0x00
      006484 8C 82            [24]10152 	mov	dpl,r4
      006486 8B 83            [24]10153 	mov	dph,r3
      006488 12 2B 70         [24]10154 	lcall	_putchar
      00648B 0D               [12]10155 	inc	r5
                                  10156 ;	calc.c:454: printstr("|\tor top 2\r\n");
      00648C BD 00 E7         [24]10157 	cjne	r5,#0x00,00230$
      00648F 0E               [12]10158 	inc	r6
      006490 80 E4            [24]10159 	sjmp	00230$
      006492                      10160 00146$:
                                  10161 ;	calc.c:455: printstr("^\txor top 2\r\n");
      006492 7D 78            [12]10162 	mov	r5,#___str_44
      006494 7E 8C            [12]10163 	mov	r6,#(___str_44 >> 8)
      006496 7F 80            [12]10164 	mov	r7,#0x80
                                  10165 ;	calc.c:58: return;
      006498                      10166 00233$:
                                  10167 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006498 8D 82            [24]10168 	mov	dpl,r5
      00649A 8E 83            [24]10169 	mov	dph,r6
      00649C 8F F0            [24]10170 	mov	b,r7
      00649E 12 70 DA         [24]10171 	lcall	__gptrget
      0064A1 FC               [12]10172 	mov	r4,a
      0064A2 60 10            [24]10173 	jz	00148$
      0064A4 7B 00            [12]10174 	mov	r3,#0x00
      0064A6 8C 82            [24]10175 	mov	dpl,r4
      0064A8 8B 83            [24]10176 	mov	dph,r3
      0064AA 12 2B 70         [24]10177 	lcall	_putchar
      0064AD 0D               [12]10178 	inc	r5
                                  10179 ;	calc.c:455: printstr("^\txor top 2\r\n");
      0064AE BD 00 E7         [24]10180 	cjne	r5,#0x00,00233$
      0064B1 0E               [12]10181 	inc	r6
      0064B2 80 E4            [24]10182 	sjmp	00233$
      0064B4                      10183 00148$:
                                  10184 ;	calc.c:456: printstr(">\tshift right top 2\r\n");
      0064B4 7D 86            [12]10185 	mov	r5,#___str_45
      0064B6 7E 8C            [12]10186 	mov	r6,#(___str_45 >> 8)
      0064B8 7F 80            [12]10187 	mov	r7,#0x80
                                  10188 ;	calc.c:58: return;
      0064BA                      10189 00236$:
                                  10190 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0064BA 8D 82            [24]10191 	mov	dpl,r5
      0064BC 8E 83            [24]10192 	mov	dph,r6
      0064BE 8F F0            [24]10193 	mov	b,r7
      0064C0 12 70 DA         [24]10194 	lcall	__gptrget
      0064C3 FC               [12]10195 	mov	r4,a
      0064C4 60 10            [24]10196 	jz	00150$
      0064C6 7B 00            [12]10197 	mov	r3,#0x00
      0064C8 8C 82            [24]10198 	mov	dpl,r4
      0064CA 8B 83            [24]10199 	mov	dph,r3
      0064CC 12 2B 70         [24]10200 	lcall	_putchar
      0064CF 0D               [12]10201 	inc	r5
                                  10202 ;	calc.c:456: printstr(">\tshift right top 2\r\n");
      0064D0 BD 00 E7         [24]10203 	cjne	r5,#0x00,00236$
      0064D3 0E               [12]10204 	inc	r6
      0064D4 80 E4            [24]10205 	sjmp	00236$
      0064D6                      10206 00150$:
                                  10207 ;	calc.c:457: printstr("]\tarithmetic shift right top 2\r\n");
      0064D6 7D 9C            [12]10208 	mov	r5,#___str_46
      0064D8 7E 8C            [12]10209 	mov	r6,#(___str_46 >> 8)
      0064DA 7F 80            [12]10210 	mov	r7,#0x80
                                  10211 ;	calc.c:58: return;
      0064DC                      10212 00239$:
                                  10213 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0064DC 8D 82            [24]10214 	mov	dpl,r5
      0064DE 8E 83            [24]10215 	mov	dph,r6
      0064E0 8F F0            [24]10216 	mov	b,r7
      0064E2 12 70 DA         [24]10217 	lcall	__gptrget
      0064E5 FC               [12]10218 	mov	r4,a
      0064E6 60 10            [24]10219 	jz	00152$
      0064E8 7B 00            [12]10220 	mov	r3,#0x00
      0064EA 8C 82            [24]10221 	mov	dpl,r4
      0064EC 8B 83            [24]10222 	mov	dph,r3
      0064EE 12 2B 70         [24]10223 	lcall	_putchar
      0064F1 0D               [12]10224 	inc	r5
                                  10225 ;	calc.c:457: printstr("]\tarithmetic shift right top 2\r\n");
      0064F2 BD 00 E7         [24]10226 	cjne	r5,#0x00,00239$
      0064F5 0E               [12]10227 	inc	r6
      0064F6 80 E4            [24]10228 	sjmp	00239$
      0064F8                      10229 00152$:
                                  10230 ;	calc.c:458: printstr("<\tshift left top 2\r\n");
      0064F8 7D BD            [12]10231 	mov	r5,#___str_47
      0064FA 7E 8C            [12]10232 	mov	r6,#(___str_47 >> 8)
      0064FC 7F 80            [12]10233 	mov	r7,#0x80
                                  10234 ;	calc.c:58: return;
      0064FE                      10235 00242$:
                                  10236 ;	calc.c:56: for (; *s; s++) putchar(*s);
      0064FE 8D 82            [24]10237 	mov	dpl,r5
      006500 8E 83            [24]10238 	mov	dph,r6
      006502 8F F0            [24]10239 	mov	b,r7
      006504 12 70 DA         [24]10240 	lcall	__gptrget
      006507 FC               [12]10241 	mov	r4,a
      006508 60 10            [24]10242 	jz	00154$
      00650A 7B 00            [12]10243 	mov	r3,#0x00
      00650C 8C 82            [24]10244 	mov	dpl,r4
      00650E 8B 83            [24]10245 	mov	dph,r3
      006510 12 2B 70         [24]10246 	lcall	_putchar
      006513 0D               [12]10247 	inc	r5
                                  10248 ;	calc.c:458: printstr("<\tshift left top 2\r\n");
      006514 BD 00 E7         [24]10249 	cjne	r5,#0x00,00242$
      006517 0E               [12]10250 	inc	r6
      006518 80 E4            [24]10251 	sjmp	00242$
      00651A                      10252 00154$:
                                  10253 ;	calc.c:459: printstr("~\tbitwise not top\r\n");
      00651A 7D D2            [12]10254 	mov	r5,#___str_48
      00651C 7E 8C            [12]10255 	mov	r6,#(___str_48 >> 8)
      00651E 7F 80            [12]10256 	mov	r7,#0x80
                                  10257 ;	calc.c:58: return;
      006520                      10258 00245$:
                                  10259 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006520 8D 82            [24]10260 	mov	dpl,r5
      006522 8E 83            [24]10261 	mov	dph,r6
      006524 8F F0            [24]10262 	mov	b,r7
      006526 12 70 DA         [24]10263 	lcall	__gptrget
      006529 FC               [12]10264 	mov	r4,a
      00652A 60 10            [24]10265 	jz	00156$
      00652C 7B 00            [12]10266 	mov	r3,#0x00
      00652E 8C 82            [24]10267 	mov	dpl,r4
      006530 8B 83            [24]10268 	mov	dph,r3
      006532 12 2B 70         [24]10269 	lcall	_putchar
      006535 0D               [12]10270 	inc	r5
                                  10271 ;	calc.c:459: printstr("~\tbitwise not top\r\n");
      006536 BD 00 E7         [24]10272 	cjne	r5,#0x00,00245$
      006539 0E               [12]10273 	inc	r6
      00653A 80 E4            [24]10274 	sjmp	00245$
      00653C                      10275 00156$:
                                  10276 ;	calc.c:460: printstr("s\tstatus\r\n");
      00653C 7D E6            [12]10277 	mov	r5,#___str_49
      00653E 7E 8C            [12]10278 	mov	r6,#(___str_49 >> 8)
      006540 7F 80            [12]10279 	mov	r7,#0x80
                                  10280 ;	calc.c:58: return;
      006542                      10281 00248$:
                                  10282 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006542 8D 82            [24]10283 	mov	dpl,r5
      006544 8E 83            [24]10284 	mov	dph,r6
      006546 8F F0            [24]10285 	mov	b,r7
      006548 12 70 DA         [24]10286 	lcall	__gptrget
      00654B FC               [12]10287 	mov	r4,a
      00654C 60 10            [24]10288 	jz	00158$
      00654E 7B 00            [12]10289 	mov	r3,#0x00
      006550 8C 82            [24]10290 	mov	dpl,r4
      006552 8B 83            [24]10291 	mov	dph,r3
      006554 12 2B 70         [24]10292 	lcall	_putchar
      006557 0D               [12]10293 	inc	r5
                                  10294 ;	calc.c:460: printstr("s\tstatus\r\n");
      006558 BD 00 E7         [24]10295 	cjne	r5,#0x00,00248$
      00655B 0E               [12]10296 	inc	r6
      00655C 80 E4            [24]10297 	sjmp	00248$
      00655E                      10298 00158$:
                                  10299 ;	calc.c:461: printstr("?\thelp\r\n");
      00655E 7D F1            [12]10300 	mov	r5,#___str_50
      006560 7E 8C            [12]10301 	mov	r6,#(___str_50 >> 8)
      006562 7F 80            [12]10302 	mov	r7,#0x80
                                  10303 ;	calc.c:58: return;
      006564                      10304 00251$:
                                  10305 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006564 8D 82            [24]10306 	mov	dpl,r5
      006566 8E 83            [24]10307 	mov	dph,r6
      006568 8F F0            [24]10308 	mov	b,r7
      00656A 12 70 DA         [24]10309 	lcall	__gptrget
      00656D FC               [12]10310 	mov	r4,a
      00656E 60 10            [24]10311 	jz	00160$
      006570 7B 00            [12]10312 	mov	r3,#0x00
      006572 8C 82            [24]10313 	mov	dpl,r4
      006574 8B 83            [24]10314 	mov	dph,r3
      006576 12 2B 70         [24]10315 	lcall	_putchar
      006579 0D               [12]10316 	inc	r5
                                  10317 ;	calc.c:461: printstr("?\thelp\r\n");
      00657A BD 00 E7         [24]10318 	cjne	r5,#0x00,00251$
      00657D 0E               [12]10319 	inc	r6
      00657E 80 E4            [24]10320 	sjmp	00251$
      006580                      10321 00160$:
                                  10322 ;	calc.c:462: printstr("q\tquit\r\n");
      006580 7D FA            [12]10323 	mov	r5,#___str_51
      006582 7E 8C            [12]10324 	mov	r6,#(___str_51 >> 8)
      006584 7F 80            [12]10325 	mov	r7,#0x80
                                  10326 ;	calc.c:58: return;
      006586                      10327 00254$:
                                  10328 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006586 8D 82            [24]10329 	mov	dpl,r5
      006588 8E 83            [24]10330 	mov	dph,r6
      00658A 8F F0            [24]10331 	mov	b,r7
      00658C 12 70 DA         [24]10332 	lcall	__gptrget
      00658F FC               [12]10333 	mov	r4,a
      006590 60 10            [24]10334 	jz	00162$
      006592 7B 00            [12]10335 	mov	r3,#0x00
      006594 8C 82            [24]10336 	mov	dpl,r4
      006596 8B 83            [24]10337 	mov	dph,r3
      006598 12 2B 70         [24]10338 	lcall	_putchar
      00659B 0D               [12]10339 	inc	r5
                                  10340 ;	calc.c:462: printstr("q\tquit\r\n");
      00659C BD 00 E7         [24]10341 	cjne	r5,#0x00,00254$
      00659F 0E               [12]10342 	inc	r6
      0065A0 80 E4            [24]10343 	sjmp	00254$
      0065A2                      10344 00162$:
                                  10345 ;	calc.c:464: return 1;
      0065A2 90 00 01         [24]10346 	mov	dptr,#0x0001
                                  10347 ;	calc.c:465: }
      0065A5 D0 08            [24]10348 	pop	_bp
      0065A7 22               [24]10349 	ret
                                  10350 ;------------------------------------------------------------
                                  10351 ;Allocation info for local variables in function 'main'
                                  10352 ;------------------------------------------------------------
                                  10353 ;input                     Allocated to registers r6 r7 
                                  10354 ;__1966080213              Allocated to registers 
                                  10355 ;s                         Allocated to registers r2 r3 r4 
                                  10356 ;__1310720215              Allocated to registers 
                                  10357 ;s                         Allocated to registers r5 r6 r7 
                                  10358 ;sloc0                     Allocated to stack - _bp +1
                                  10359 ;------------------------------------------------------------
                                  10360 ;	calc.c:495: void main(void) {
                                  10361 ;	-----------------------------------------
                                  10362 ;	 function main
                                  10363 ;	-----------------------------------------
      0065A8                      10364 _main:
      0065A8 C0 08            [24]10365 	push	_bp
      0065AA 85 81 08         [24]10366 	mov	_bp,sp
      0065AD 05 81            [12]10367 	inc	sp
                                  10368 ;	calc.c:498: giant = 0;
      0065AF 78 09            [12]10369 	mov	r0,#_giant
      0065B1 76 00            [12]10370 	mov	@r0,#0x00
                                  10371 ;	calc.c:500: c.base = 10;
      0065B3 90 90 0C         [24]10372 	mov	dptr,#_c
      0065B6 74 0A            [12]10373 	mov	a,#0x0a
      0065B8 F0               [24]10374 	movx	@dptr,a
      0065B9 E4               [12]10375 	clr	a
      0065BA A3               [24]10376 	inc	dptr
      0065BB F0               [24]10377 	movx	@dptr,a
                                  10378 ;	calc.c:501: c.acc = 0l;
      0065BC 90 90 0E         [24]10379 	mov	dptr,#(_c + 0x0002)
      0065BF F0               [24]10380 	movx	@dptr,a
      0065C0 A3               [24]10381 	inc	dptr
      0065C1 F0               [24]10382 	movx	@dptr,a
      0065C2 A3               [24]10383 	inc	dptr
      0065C3 F0               [24]10384 	movx	@dptr,a
      0065C4 A3               [24]10385 	inc	dptr
      0065C5 F0               [24]10386 	movx	@dptr,a
                                  10387 ;	calc.c:502: c.acc_valid = (char)0;
      0065C6 90 90 12         [24]10388 	mov	dptr,#(_c + 0x0006)
      0065C9 F0               [24]10389 	movx	@dptr,a
                                  10390 ;	calc.c:503: c.digit[0] = c.digit[1] = '\0';
      0065CA 90 90 14         [24]10391 	mov	dptr,#(_c + 0x0008)
      0065CD F0               [24]10392 	movx	@dptr,a
      0065CE 90 90 13         [24]10393 	mov	dptr,#(_c + 0x0007)
      0065D1 F0               [24]10394 	movx	@dptr,a
                                  10395 ;	calc.c:505: c.ps = &c.s0;
      0065D2 90 D0 1D         [24]10396 	mov	dptr,#(_c + 0x4011)
      0065D5 74 15            [12]10397 	mov	a,#(_c + 0x0009)
      0065D7 F0               [24]10398 	movx	@dptr,a
      0065D8 74 90            [12]10399 	mov	a,#((_c + 0x0009) >> 8)
      0065DA A3               [24]10400 	inc	dptr
      0065DB F0               [24]10401 	movx	@dptr,a
      0065DC E4               [12]10402 	clr	a
      0065DD A3               [24]10403 	inc	dptr
      0065DE F0               [24]10404 	movx	@dptr,a
                                  10405 ;	calc.c:506: c.ss = &c.s1;
      0065DF 90 D0 20         [24]10406 	mov	dptr,#(_c + 0x4014)
      0065E2 74 19            [12]10407 	mov	a,#(_c + 0x200d)
      0065E4 F0               [24]10408 	movx	@dptr,a
      0065E5 74 B0            [12]10409 	mov	a,#((_c + 0x200d) >> 8)
      0065E7 A3               [24]10410 	inc	dptr
      0065E8 F0               [24]10411 	movx	@dptr,a
      0065E9 E4               [12]10412 	clr	a
      0065EA A3               [24]10413 	inc	dptr
      0065EB F0               [24]10414 	movx	@dptr,a
                                  10415 ;	calc.c:507: stack_init(c.ps);
      0065EC 90 90 15         [24]10416 	mov	dptr,#(_c + 0x0009)
      0065EF 75 F0 00         [24]10417 	mov	b,#0x00
      0065F2 12 26 80         [24]10418 	lcall	_stack_init
                                  10419 ;	calc.c:508: stack_init(c.ss);
      0065F5 90 D0 20         [24]10420 	mov	dptr,#(_c + 0x4014)
      0065F8 E0               [24]10421 	movx	a,@dptr
      0065F9 FD               [12]10422 	mov	r5,a
      0065FA A3               [24]10423 	inc	dptr
      0065FB E0               [24]10424 	movx	a,@dptr
      0065FC FE               [12]10425 	mov	r6,a
      0065FD A3               [24]10426 	inc	dptr
      0065FE E0               [24]10427 	movx	a,@dptr
      0065FF FF               [12]10428 	mov	r7,a
      006600 8D 82            [24]10429 	mov	dpl,r5
      006602 8E 83            [24]10430 	mov	dph,r6
      006604 8F F0            [24]10431 	mov	b,r7
      006606 12 26 80         [24]10432 	lcall	_stack_init
                                  10433 ;	calc.c:510: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      006609 74 0C            [12]10434 	mov	a,#_c
      00660B C0 E0            [24]10435 	push	acc
      00660D 74 90            [12]10436 	mov	a,#(_c >> 8)
      00660F C0 E0            [24]10437 	push	acc
      006611 E4               [12]10438 	clr	a
      006612 C0 E0            [24]10439 	push	acc
      006614 74 25            [12]10440 	mov	a,#_deltas
      006616 C0 E0            [24]10441 	push	acc
      006618 74 D0            [12]10442 	mov	a,#(_deltas >> 8)
      00661A C0 E0            [24]10443 	push	acc
      00661C E4               [12]10444 	clr	a
      00661D C0 E0            [24]10445 	push	acc
      00661F C0 E0            [24]10446 	push	acc
      006621 74 80            [12]10447 	mov	a,#0x80
      006623 C0 E0            [24]10448 	push	acc
      006625 74 03            [12]10449 	mov	a,#0x03
      006627 C0 E0            [24]10450 	push	acc
      006629 E4               [12]10451 	clr	a
      00662A C0 E0            [24]10452 	push	acc
      00662C C0 E0            [24]10453 	push	acc
      00662E C0 E0            [24]10454 	push	acc
      006630 90 90 00         [24]10455 	mov	dptr,#_s
      006633 75 F0 00         [24]10456 	mov	b,#0x00
      006636 12 20 90         [24]10457 	lcall	_state_init
      006639 E5 81            [12]10458 	mov	a,sp
      00663B 24 F4            [12]10459 	add	a,#0xf4
      00663D F5 81            [12]10460 	mov	sp,a
                                  10461 ;	calc.c:512: (void)status(&c, deltas);
      00663F 74 25            [12]10462 	mov	a,#_deltas
      006641 C0 E0            [24]10463 	push	acc
      006643 74 D0            [12]10464 	mov	a,#(_deltas >> 8)
      006645 C0 E0            [24]10465 	push	acc
      006647 E4               [12]10466 	clr	a
      006648 C0 E0            [24]10467 	push	acc
      00664A 90 90 0C         [24]10468 	mov	dptr,#_c
      00664D 75 F0 00         [24]10469 	mov	b,#0x00
      006650 12 59 20         [24]10470 	lcall	_status
      006653 15 81            [12]10471 	dec	sp
      006655 15 81            [12]10472 	dec	sp
      006657 15 81            [12]10473 	dec	sp
                                  10474 ;	calc.c:514: while (1) {
      006659                      10475 00192$:
                                  10476 ;	calc.c:515: input = getchar();
      006659 12 2B 79         [24]10477 	lcall	_getchar
      00665C AE 82            [24]10478 	mov	r6,dpl
      00665E AF 83            [24]10479 	mov	r7,dph
                                  10480 ;	calc.c:516: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      006660 8E 05            [24]10481 	mov	ar5,r6
      006662 BD 0D 02         [24]10482 	cjne	r5,#0x0d,00400$
      006665 80 03            [24]10483 	sjmp	00101$
      006667                      10484 00400$:
      006667 BD 0A 36         [24]10485 	cjne	r5,#0x0a,00102$
      00666A                      10486 00101$:
      00666A 7A 72            [12]10487 	mov	r2,#___str_3
      00666C 7B 89            [12]10488 	mov	r3,#(___str_3 >> 8)
      00666E 7C 80            [12]10489 	mov	r4,#0x80
                                  10490 ;	calc.c:58: return;
      006670                      10491 00199$:
                                  10492 ;	calc.c:56: for (; *s; s++) putchar(*s);
      006670 8A 82            [24]10493 	mov	dpl,r2
      006672 8B 83            [24]10494 	mov	dph,r3
      006674 8C F0            [24]10495 	mov	b,r4
      006676 A8 08            [24]10496 	mov	r0,_bp
      006678 08               [12]10497 	inc	r0
      006679 12 70 DA         [24]10498 	lcall	__gptrget
      00667C F6               [12]10499 	mov	@r0,a
      00667D A8 08            [24]10500 	mov	r0,_bp
      00667F 08               [12]10501 	inc	r0
      006680 E6               [12]10502 	mov	a,@r0
      006681 60 24            [24]10503 	jz	00103$
      006683 C0 06            [24]10504 	push	ar6
      006685 C0 07            [24]10505 	push	ar7
      006687 A8 08            [24]10506 	mov	r0,_bp
      006689 08               [12]10507 	inc	r0
      00668A 86 06            [24]10508 	mov	ar6,@r0
      00668C 7F 00            [12]10509 	mov	r7,#0x00
      00668E 8E 82            [24]10510 	mov	dpl,r6
      006690 8F 83            [24]10511 	mov	dph,r7
      006692 12 2B 70         [24]10512 	lcall	_putchar
      006695 0A               [12]10513 	inc	r2
      006696 BA 00 01         [24]10514 	cjne	r2,#0x00,00404$
      006699 0B               [12]10515 	inc	r3
      00669A                      10516 00404$:
      00669A D0 07            [24]10517 	pop	ar7
      00669C D0 06            [24]10518 	pop	ar6
                                  10519 ;	calc.c:516: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      00669E 80 D0            [24]10520 	sjmp	00199$
      0066A0                      10521 00102$:
                                  10522 ;	calc.c:517: else (void)putchar(input);
      0066A0 8E 82            [24]10523 	mov	dpl,r6
      0066A2 8F 83            [24]10524 	mov	dph,r7
      0066A4 12 2B 70         [24]10525 	lcall	_putchar
      0066A7                      10526 00103$:
                                  10527 ;	calc.c:518: c.digit[0] = (char)input;
      0066A7 90 90 13         [24]10528 	mov	dptr,#(_c + 0x0007)
      0066AA ED               [12]10529 	mov	a,r5
      0066AB F0               [24]10530 	movx	@dptr,a
                                  10531 ;	calc.c:520: if ((char)input == 'q') {
      0066AC BD 71 29         [24]10532 	cjne	r5,#0x71,00189$
                                  10533 ;	calc.c:521: if (state_exec(&s, EVENT_TERM) <= 0) break;
      0066AF 74 08            [12]10534 	mov	a,#0x08
      0066B1 C0 E0            [24]10535 	push	acc
      0066B3 E4               [12]10536 	clr	a
      0066B4 C0 E0            [24]10537 	push	acc
      0066B6 90 90 00         [24]10538 	mov	dptr,#_s
      0066B9 75 F0 00         [24]10539 	mov	b,#0x00
      0066BC 12 21 46         [24]10540 	lcall	_state_exec
      0066BF AB 82            [24]10541 	mov	r3,dpl
      0066C1 AC 83            [24]10542 	mov	r4,dph
      0066C3 15 81            [12]10543 	dec	sp
      0066C5 15 81            [12]10544 	dec	sp
      0066C7 C3               [12]10545 	clr	c
      0066C8 E4               [12]10546 	clr	a
      0066C9 9B               [12]10547 	subb	a,r3
      0066CA 74 80            [12]10548 	mov	a,#(0x00 ^ 0x80)
      0066CC 8C F0            [24]10549 	mov	b,r4
      0066CE 63 F0 80         [24]10550 	xrl	b,#0x80
      0066D1 95 F0            [12]10551 	subb	a,b
      0066D3 40 84            [24]10552 	jc	00192$
      0066D5 02 69 87         [24]10553 	ljmp	00193$
      0066D8                      10554 00189$:
                                  10555 ;	calc.c:522: } else if ((char)input == 's') {
      0066D8 BD 73 2C         [24]10556 	cjne	r5,#0x73,00186$
                                  10557 ;	calc.c:523: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      0066DB 74 03            [12]10558 	mov	a,#0x03
      0066DD C0 E0            [24]10559 	push	acc
      0066DF E4               [12]10560 	clr	a
      0066E0 C0 E0            [24]10561 	push	acc
      0066E2 90 90 00         [24]10562 	mov	dptr,#_s
      0066E5 75 F0 00         [24]10563 	mov	b,#0x00
      0066E8 12 21 46         [24]10564 	lcall	_state_exec
      0066EB AB 82            [24]10565 	mov	r3,dpl
      0066ED AC 83            [24]10566 	mov	r4,dph
      0066EF 15 81            [12]10567 	dec	sp
      0066F1 15 81            [12]10568 	dec	sp
      0066F3 C3               [12]10569 	clr	c
      0066F4 E4               [12]10570 	clr	a
      0066F5 9B               [12]10571 	subb	a,r3
      0066F6 74 80            [12]10572 	mov	a,#(0x00 ^ 0x80)
      0066F8 8C F0            [24]10573 	mov	b,r4
      0066FA 63 F0 80         [24]10574 	xrl	b,#0x80
      0066FD 95 F0            [12]10575 	subb	a,b
      0066FF 50 03            [24]10576 	jnc	00410$
      006701 02 66 59         [24]10577 	ljmp	00192$
      006704                      10578 00410$:
      006704 02 69 87         [24]10579 	ljmp	00193$
      006707                      10580 00186$:
                                  10581 ;	calc.c:524: } else if ((char)input == '?') {
      006707 BD 3F 2C         [24]10582 	cjne	r5,#0x3f,00183$
                                  10583 ;	calc.c:525: if (state_exec(&s, EVENT_HELP) <= 0) break;
      00670A 74 04            [12]10584 	mov	a,#0x04
      00670C C0 E0            [24]10585 	push	acc
      00670E E4               [12]10586 	clr	a
      00670F C0 E0            [24]10587 	push	acc
      006711 90 90 00         [24]10588 	mov	dptr,#_s
      006714 75 F0 00         [24]10589 	mov	b,#0x00
      006717 12 21 46         [24]10590 	lcall	_state_exec
      00671A AB 82            [24]10591 	mov	r3,dpl
      00671C AC 83            [24]10592 	mov	r4,dph
      00671E 15 81            [12]10593 	dec	sp
      006720 15 81            [12]10594 	dec	sp
      006722 C3               [12]10595 	clr	c
      006723 E4               [12]10596 	clr	a
      006724 9B               [12]10597 	subb	a,r3
      006725 74 80            [12]10598 	mov	a,#(0x00 ^ 0x80)
      006727 8C F0            [24]10599 	mov	b,r4
      006729 63 F0 80         [24]10600 	xrl	b,#0x80
      00672C 95 F0            [12]10601 	subb	a,b
      00672E 50 03            [24]10602 	jnc	00413$
      006730 02 66 59         [24]10603 	ljmp	00192$
      006733                      10604 00413$:
      006733 02 69 87         [24]10605 	ljmp	00193$
      006736                      10606 00183$:
                                  10607 ;	calc.c:526: } else if ((char)input == 'i') {
      006736 BD 69 2C         [24]10608 	cjne	r5,#0x69,00180$
                                  10609 ;	calc.c:527: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      006739 74 06            [12]10610 	mov	a,#0x06
      00673B C0 E0            [24]10611 	push	acc
      00673D E4               [12]10612 	clr	a
      00673E C0 E0            [24]10613 	push	acc
      006740 90 90 00         [24]10614 	mov	dptr,#_s
      006743 75 F0 00         [24]10615 	mov	b,#0x00
      006746 12 21 46         [24]10616 	lcall	_state_exec
      006749 AB 82            [24]10617 	mov	r3,dpl
      00674B AC 83            [24]10618 	mov	r4,dph
      00674D 15 81            [12]10619 	dec	sp
      00674F 15 81            [12]10620 	dec	sp
      006751 C3               [12]10621 	clr	c
      006752 E4               [12]10622 	clr	a
      006753 9B               [12]10623 	subb	a,r3
      006754 74 80            [12]10624 	mov	a,#(0x00 ^ 0x80)
      006756 8C F0            [24]10625 	mov	b,r4
      006758 63 F0 80         [24]10626 	xrl	b,#0x80
      00675B 95 F0            [12]10627 	subb	a,b
      00675D 50 03            [24]10628 	jnc	00416$
      00675F 02 66 59         [24]10629 	ljmp	00192$
      006762                      10630 00416$:
      006762 02 69 87         [24]10631 	ljmp	00193$
      006765                      10632 00180$:
                                  10633 ;	calc.c:528: } else if ((char)input == 'I') {
      006765 BD 49 2C         [24]10634 	cjne	r5,#0x49,00177$
                                  10635 ;	calc.c:529: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      006768 74 07            [12]10636 	mov	a,#0x07
      00676A C0 E0            [24]10637 	push	acc
      00676C E4               [12]10638 	clr	a
      00676D C0 E0            [24]10639 	push	acc
      00676F 90 90 00         [24]10640 	mov	dptr,#_s
      006772 75 F0 00         [24]10641 	mov	b,#0x00
      006775 12 21 46         [24]10642 	lcall	_state_exec
      006778 AB 82            [24]10643 	mov	r3,dpl
      00677A AC 83            [24]10644 	mov	r4,dph
      00677C 15 81            [12]10645 	dec	sp
      00677E 15 81            [12]10646 	dec	sp
      006780 C3               [12]10647 	clr	c
      006781 E4               [12]10648 	clr	a
      006782 9B               [12]10649 	subb	a,r3
      006783 74 80            [12]10650 	mov	a,#(0x00 ^ 0x80)
      006785 8C F0            [24]10651 	mov	b,r4
      006787 63 F0 80         [24]10652 	xrl	b,#0x80
      00678A 95 F0            [12]10653 	subb	a,b
      00678C 50 03            [24]10654 	jnc	00419$
      00678E 02 66 59         [24]10655 	ljmp	00192$
      006791                      10656 00419$:
      006791 02 69 87         [24]10657 	ljmp	00193$
      006794                      10658 00177$:
                                  10659 ;	calc.c:531: ((char)input == 'h') || ((char)input == 'H') ||
      006794 BD 68 02         [24]10660 	cjne	r5,#0x68,00420$
      006797 80 0D            [24]10661 	sjmp	00170$
      006799                      10662 00420$:
      006799 BD 48 02         [24]10663 	cjne	r5,#0x48,00421$
      00679C 80 08            [24]10664 	sjmp	00170$
      00679E                      10665 00421$:
                                  10666 ;	calc.c:532: ((char)input == 'o') || ((char)input == 'O')
      00679E BD 6F 02         [24]10667 	cjne	r5,#0x6f,00422$
      0067A1 80 03            [24]10668 	sjmp	00170$
      0067A3                      10669 00422$:
      0067A3 BD 4F 2C         [24]10670 	cjne	r5,#0x4f,00171$
      0067A6                      10671 00170$:
                                  10672 ;	calc.c:534: if (state_exec(&s, EVENT_BASE) <= 0) break;
      0067A6 74 05            [12]10673 	mov	a,#0x05
      0067A8 C0 E0            [24]10674 	push	acc
      0067AA E4               [12]10675 	clr	a
      0067AB C0 E0            [24]10676 	push	acc
      0067AD 90 90 00         [24]10677 	mov	dptr,#_s
      0067B0 75 F0 00         [24]10678 	mov	b,#0x00
      0067B3 12 21 46         [24]10679 	lcall	_state_exec
      0067B6 AB 82            [24]10680 	mov	r3,dpl
      0067B8 AC 83            [24]10681 	mov	r4,dph
      0067BA 15 81            [12]10682 	dec	sp
      0067BC 15 81            [12]10683 	dec	sp
      0067BE C3               [12]10684 	clr	c
      0067BF E4               [12]10685 	clr	a
      0067C0 9B               [12]10686 	subb	a,r3
      0067C1 74 80            [12]10687 	mov	a,#(0x00 ^ 0x80)
      0067C3 8C F0            [24]10688 	mov	b,r4
      0067C5 63 F0 80         [24]10689 	xrl	b,#0x80
      0067C8 95 F0            [12]10690 	subb	a,b
      0067CA 50 03            [24]10691 	jnc	00425$
      0067CC 02 66 59         [24]10692 	ljmp	00192$
      0067CF                      10693 00425$:
      0067CF 02 69 87         [24]10694 	ljmp	00193$
      0067D2                      10695 00171$:
                                  10696 ;	calc.c:535: } else if (isxdigit(input)) {
      0067D2 8E 82            [24]10697 	mov	dpl,r6
      0067D4 8F 83            [24]10698 	mov	dph,r7
      0067D6 C0 05            [24]10699 	push	ar5
      0067D8 12 69 B1         [24]10700 	lcall	_isxdigit
      0067DB E5 82            [12]10701 	mov	a,dpl
      0067DD 85 83 F0         [24]10702 	mov	b,dph
      0067E0 D0 05            [24]10703 	pop	ar5
      0067E2 45 F0            [12]10704 	orl	a,b
      0067E4 60 2C            [24]10705 	jz	00168$
                                  10706 ;	calc.c:536: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      0067E6 74 01            [12]10707 	mov	a,#0x01
      0067E8 C0 E0            [24]10708 	push	acc
      0067EA E4               [12]10709 	clr	a
      0067EB C0 E0            [24]10710 	push	acc
      0067ED 90 90 00         [24]10711 	mov	dptr,#_s
      0067F0 75 F0 00         [24]10712 	mov	b,#0x00
      0067F3 12 21 46         [24]10713 	lcall	_state_exec
      0067F6 AE 82            [24]10714 	mov	r6,dpl
      0067F8 AF 83            [24]10715 	mov	r7,dph
      0067FA 15 81            [12]10716 	dec	sp
      0067FC 15 81            [12]10717 	dec	sp
      0067FE C3               [12]10718 	clr	c
      0067FF E4               [12]10719 	clr	a
      006800 9E               [12]10720 	subb	a,r6
      006801 74 80            [12]10721 	mov	a,#(0x00 ^ 0x80)
      006803 8F F0            [24]10722 	mov	b,r7
      006805 63 F0 80         [24]10723 	xrl	b,#0x80
      006808 95 F0            [12]10724 	subb	a,b
      00680A 50 03            [24]10725 	jnc	00427$
      00680C 02 66 59         [24]10726 	ljmp	00192$
      00680F                      10727 00427$:
      00680F 02 69 87         [24]10728 	ljmp	00193$
      006812                      10729 00168$:
                                  10730 ;	calc.c:538: ((char)input == 'p') || ((char)input == 'P') ||
      006812 BD 70 02         [24]10731 	cjne	r5,#0x70,00428$
      006815 80 17            [24]10732 	sjmp	00159$
      006817                      10733 00428$:
      006817 BD 50 02         [24]10734 	cjne	r5,#0x50,00429$
      00681A 80 12            [24]10735 	sjmp	00159$
      00681C                      10736 00429$:
                                  10737 ;	calc.c:539: ((char)input == 'v') || ((char)input == 'V') ||
      00681C BD 76 02         [24]10738 	cjne	r5,#0x76,00430$
      00681F 80 0D            [24]10739 	sjmp	00159$
      006821                      10740 00430$:
      006821 BD 56 02         [24]10741 	cjne	r5,#0x56,00431$
      006824 80 08            [24]10742 	sjmp	00159$
      006826                      10743 00431$:
                                  10744 ;	calc.c:540: ((char)input == '.') ||
      006826 BD 2E 02         [24]10745 	cjne	r5,#0x2e,00432$
      006829 80 03            [24]10746 	sjmp	00159$
      00682B                      10747 00432$:
                                  10748 ;	calc.c:541: ((char)input == 'x')
      00682B BD 78 2C         [24]10749 	cjne	r5,#0x78,00160$
      00682E                      10750 00159$:
                                  10751 ;	calc.c:543: if (state_exec(&s, EVENT_OP) <= 0) break;
      00682E 74 02            [12]10752 	mov	a,#0x02
      006830 C0 E0            [24]10753 	push	acc
      006832 E4               [12]10754 	clr	a
      006833 C0 E0            [24]10755 	push	acc
      006835 90 90 00         [24]10756 	mov	dptr,#_s
      006838 75 F0 00         [24]10757 	mov	b,#0x00
      00683B 12 21 46         [24]10758 	lcall	_state_exec
      00683E AE 82            [24]10759 	mov	r6,dpl
      006840 AF 83            [24]10760 	mov	r7,dph
      006842 15 81            [12]10761 	dec	sp
      006844 15 81            [12]10762 	dec	sp
      006846 C3               [12]10763 	clr	c
      006847 E4               [12]10764 	clr	a
      006848 9E               [12]10765 	subb	a,r6
      006849 74 80            [12]10766 	mov	a,#(0x00 ^ 0x80)
      00684B 8F F0            [24]10767 	mov	b,r7
      00684D 63 F0 80         [24]10768 	xrl	b,#0x80
      006850 95 F0            [12]10769 	subb	a,b
      006852 50 03            [24]10770 	jnc	00435$
      006854 02 66 59         [24]10771 	ljmp	00192$
      006857                      10772 00435$:
      006857 02 69 87         [24]10773 	ljmp	00193$
      00685A                      10774 00160$:
                                  10775 ;	calc.c:545: ((char)input == 'X') || ((char)input == 'T') ||
      00685A BD 58 02         [24]10776 	cjne	r5,#0x58,00436$
      00685D 80 17            [24]10777 	sjmp	00151$
      00685F                      10778 00436$:
      00685F BD 54 02         [24]10779 	cjne	r5,#0x54,00437$
      006862 80 12            [24]10780 	sjmp	00151$
      006864                      10781 00437$:
                                  10782 ;	calc.c:546: ((char)input == 'm') || ((char)input == 'M') ||
      006864 BD 6D 02         [24]10783 	cjne	r5,#0x6d,00438$
      006867 80 0D            [24]10784 	sjmp	00151$
      006869                      10785 00438$:
      006869 BD 4D 02         [24]10786 	cjne	r5,#0x4d,00439$
      00686C 80 08            [24]10787 	sjmp	00151$
      00686E                      10788 00439$:
                                  10789 ;	calc.c:547: ((char)input == 'u') || ((char)input == 'U')
      00686E BD 75 02         [24]10790 	cjne	r5,#0x75,00440$
      006871 80 03            [24]10791 	sjmp	00151$
      006873                      10792 00440$:
      006873 BD 55 2C         [24]10793 	cjne	r5,#0x55,00152$
      006876                      10794 00151$:
                                  10795 ;	calc.c:549: if (state_exec(&s, EVENT_OP) <= 0) break;
      006876 74 02            [12]10796 	mov	a,#0x02
      006878 C0 E0            [24]10797 	push	acc
      00687A E4               [12]10798 	clr	a
      00687B C0 E0            [24]10799 	push	acc
      00687D 90 90 00         [24]10800 	mov	dptr,#_s
      006880 75 F0 00         [24]10801 	mov	b,#0x00
      006883 12 21 46         [24]10802 	lcall	_state_exec
      006886 AE 82            [24]10803 	mov	r6,dpl
      006888 AF 83            [24]10804 	mov	r7,dph
      00688A 15 81            [12]10805 	dec	sp
      00688C 15 81            [12]10806 	dec	sp
      00688E C3               [12]10807 	clr	c
      00688F E4               [12]10808 	clr	a
      006890 9E               [12]10809 	subb	a,r6
      006891 74 80            [12]10810 	mov	a,#(0x00 ^ 0x80)
      006893 8F F0            [24]10811 	mov	b,r7
      006895 63 F0 80         [24]10812 	xrl	b,#0x80
      006898 95 F0            [12]10813 	subb	a,b
      00689A 50 03            [24]10814 	jnc	00443$
      00689C 02 66 59         [24]10815 	ljmp	00192$
      00689F                      10816 00443$:
      00689F 02 69 87         [24]10817 	ljmp	00193$
      0068A2                      10818 00152$:
                                  10819 ;	calc.c:551: ((char)input == '+') || ((char)input == '-')
      0068A2 BD 2B 02         [24]10820 	cjne	r5,#0x2b,00444$
      0068A5 80 03            [24]10821 	sjmp	00147$
      0068A7                      10822 00444$:
      0068A7 BD 2D 2C         [24]10823 	cjne	r5,#0x2d,00148$
      0068AA                      10824 00147$:
                                  10825 ;	calc.c:553: if (state_exec(&s, EVENT_OP) <= 0) break;
      0068AA 74 02            [12]10826 	mov	a,#0x02
      0068AC C0 E0            [24]10827 	push	acc
      0068AE E4               [12]10828 	clr	a
      0068AF C0 E0            [24]10829 	push	acc
      0068B1 90 90 00         [24]10830 	mov	dptr,#_s
      0068B4 75 F0 00         [24]10831 	mov	b,#0x00
      0068B7 12 21 46         [24]10832 	lcall	_state_exec
      0068BA AE 82            [24]10833 	mov	r6,dpl
      0068BC AF 83            [24]10834 	mov	r7,dph
      0068BE 15 81            [12]10835 	dec	sp
      0068C0 15 81            [12]10836 	dec	sp
      0068C2 C3               [12]10837 	clr	c
      0068C3 E4               [12]10838 	clr	a
      0068C4 9E               [12]10839 	subb	a,r6
      0068C5 74 80            [12]10840 	mov	a,#(0x00 ^ 0x80)
      0068C7 8F F0            [24]10841 	mov	b,r7
      0068C9 63 F0 80         [24]10842 	xrl	b,#0x80
      0068CC 95 F0            [12]10843 	subb	a,b
      0068CE 50 03            [24]10844 	jnc	00447$
      0068D0 02 66 59         [24]10845 	ljmp	00192$
      0068D3                      10846 00447$:
      0068D3 02 69 87         [24]10847 	ljmp	00193$
      0068D6                      10848 00148$:
                                  10849 ;	calc.c:555: ((char)input == '*') ||
      0068D6 BD 2A 02         [24]10850 	cjne	r5,#0x2a,00448$
      0068D9 80 12            [24]10851 	sjmp	00140$
      0068DB                      10852 00448$:
                                  10853 ;	calc.c:556: ((char)input == '/') || ((char)input == '\\') ||
      0068DB BD 2F 02         [24]10854 	cjne	r5,#0x2f,00449$
      0068DE 80 0D            [24]10855 	sjmp	00140$
      0068E0                      10856 00449$:
      0068E0 BD 5C 02         [24]10857 	cjne	r5,#0x5c,00450$
      0068E3 80 08            [24]10858 	sjmp	00140$
      0068E5                      10859 00450$:
                                  10860 ;	calc.c:557: ((char)input == '%') || ((char)input == '#')
      0068E5 BD 25 02         [24]10861 	cjne	r5,#0x25,00451$
      0068E8 80 03            [24]10862 	sjmp	00140$
      0068EA                      10863 00451$:
      0068EA BD 23 29         [24]10864 	cjne	r5,#0x23,00141$
      0068ED                      10865 00140$:
                                  10866 ;	calc.c:559: if (state_exec(&s, EVENT_OP) <= 0) break;
      0068ED 74 02            [12]10867 	mov	a,#0x02
      0068EF C0 E0            [24]10868 	push	acc
      0068F1 E4               [12]10869 	clr	a
      0068F2 C0 E0            [24]10870 	push	acc
      0068F4 90 90 00         [24]10871 	mov	dptr,#_s
      0068F7 75 F0 00         [24]10872 	mov	b,#0x00
      0068FA 12 21 46         [24]10873 	lcall	_state_exec
      0068FD AE 82            [24]10874 	mov	r6,dpl
      0068FF AF 83            [24]10875 	mov	r7,dph
      006901 15 81            [12]10876 	dec	sp
      006903 15 81            [12]10877 	dec	sp
      006905 C3               [12]10878 	clr	c
      006906 E4               [12]10879 	clr	a
      006907 9E               [12]10880 	subb	a,r6
      006908 74 80            [12]10881 	mov	a,#(0x00 ^ 0x80)
      00690A 8F F0            [24]10882 	mov	b,r7
      00690C 63 F0 80         [24]10883 	xrl	b,#0x80
      00690F 95 F0            [12]10884 	subb	a,b
      006911 50 74            [24]10885 	jnc	00193$
      006913 02 66 59         [24]10886 	ljmp	00192$
      006916                      10887 00141$:
                                  10888 ;	calc.c:561: ((char)input == '&') ||
      006916 BD 26 02         [24]10889 	cjne	r5,#0x26,00455$
      006919 80 1C            [24]10890 	sjmp	00131$
      00691B                      10891 00455$:
                                  10892 ;	calc.c:562: ((char)input == '|') || ((char)input == '^') ||
      00691B BD 7C 02         [24]10893 	cjne	r5,#0x7c,00456$
      00691E 80 17            [24]10894 	sjmp	00131$
      006920                      10895 00456$:
      006920 BD 5E 02         [24]10896 	cjne	r5,#0x5e,00457$
      006923 80 12            [24]10897 	sjmp	00131$
      006925                      10898 00457$:
                                  10899 ;	calc.c:563: ((char)input == '~') ||
      006925 BD 7E 02         [24]10900 	cjne	r5,#0x7e,00458$
      006928 80 0D            [24]10901 	sjmp	00131$
      00692A                      10902 00458$:
                                  10903 ;	calc.c:564: ((char)input == '>') || ((char)input == ']') ||
      00692A BD 3E 02         [24]10904 	cjne	r5,#0x3e,00459$
      00692D 80 08            [24]10905 	sjmp	00131$
      00692F                      10906 00459$:
      00692F BD 5D 02         [24]10907 	cjne	r5,#0x5d,00460$
      006932 80 03            [24]10908 	sjmp	00131$
      006934                      10909 00460$:
                                  10910 ;	calc.c:565: ((char)input == '<')
      006934 BD 3C 29         [24]10911 	cjne	r5,#0x3c,00132$
      006937                      10912 00131$:
                                  10913 ;	calc.c:567: if (state_exec(&s, EVENT_OP) <= 0) break;
      006937 74 02            [12]10914 	mov	a,#0x02
      006939 C0 E0            [24]10915 	push	acc
      00693B E4               [12]10916 	clr	a
      00693C C0 E0            [24]10917 	push	acc
      00693E 90 90 00         [24]10918 	mov	dptr,#_s
      006941 75 F0 00         [24]10919 	mov	b,#0x00
      006944 12 21 46         [24]10920 	lcall	_state_exec
      006947 AE 82            [24]10921 	mov	r6,dpl
      006949 AF 83            [24]10922 	mov	r7,dph
      00694B 15 81            [12]10923 	dec	sp
      00694D 15 81            [12]10924 	dec	sp
      00694F C3               [12]10925 	clr	c
      006950 E4               [12]10926 	clr	a
      006951 9E               [12]10927 	subb	a,r6
      006952 74 80            [12]10928 	mov	a,#(0x00 ^ 0x80)
      006954 8F F0            [24]10929 	mov	b,r7
      006956 63 F0 80         [24]10930 	xrl	b,#0x80
      006959 95 F0            [12]10931 	subb	a,b
      00695B 50 2A            [24]10932 	jnc	00193$
      00695D 02 66 59         [24]10933 	ljmp	00192$
      006960                      10934 00132$:
                                  10935 ;	calc.c:569: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      006960 E4               [12]10936 	clr	a
      006961 C0 E0            [24]10937 	push	acc
      006963 C0 E0            [24]10938 	push	acc
      006965 90 90 00         [24]10939 	mov	dptr,#_s
      006968 75 F0 00         [24]10940 	mov	b,#0x00
      00696B 12 21 46         [24]10941 	lcall	_state_exec
      00696E AE 82            [24]10942 	mov	r6,dpl
      006970 AF 83            [24]10943 	mov	r7,dph
      006972 15 81            [12]10944 	dec	sp
      006974 15 81            [12]10945 	dec	sp
      006976 C3               [12]10946 	clr	c
      006977 E4               [12]10947 	clr	a
      006978 9E               [12]10948 	subb	a,r6
      006979 74 80            [12]10949 	mov	a,#(0x00 ^ 0x80)
      00697B 8F F0            [24]10950 	mov	b,r7
      00697D 63 F0 80         [24]10951 	xrl	b,#0x80
      006980 95 F0            [12]10952 	subb	a,b
      006982 50 03            [24]10953 	jnc	00464$
      006984 02 66 59         [24]10954 	ljmp	00192$
      006987                      10955 00464$:
      006987                      10956 00193$:
                                  10957 ;	calc.c:573: printstr("TERM\r\n");
      006987 7D 03            [12]10958 	mov	r5,#___str_52
      006989 7E 8D            [12]10959 	mov	r6,#(___str_52 >> 8)
      00698B 7F 80            [12]10960 	mov	r7,#0x80
                                  10961 ;	calc.c:58: return;
      00698D                      10962 00202$:
                                  10963 ;	calc.c:56: for (; *s; s++) putchar(*s);
      00698D 8D 82            [24]10964 	mov	dpl,r5
      00698F 8E 83            [24]10965 	mov	dph,r6
      006991 8F F0            [24]10966 	mov	b,r7
      006993 12 70 DA         [24]10967 	lcall	__gptrget
      006996 FC               [12]10968 	mov	r4,a
      006997 60 10            [24]10969 	jz	00197$
      006999 7B 00            [12]10970 	mov	r3,#0x00
      00699B 8C 82            [24]10971 	mov	dpl,r4
      00699D 8B 83            [24]10972 	mov	dph,r3
      00699F 12 2B 70         [24]10973 	lcall	_putchar
      0069A2 0D               [12]10974 	inc	r5
                                  10975 ;	calc.c:573: printstr("TERM\r\n");
      0069A3 BD 00 E7         [24]10976 	cjne	r5,#0x00,00202$
      0069A6 0E               [12]10977 	inc	r6
      0069A7 80 E4            [24]10978 	sjmp	00202$
      0069A9                      10979 00197$:
                                  10980 ;	calc.c:575: PCON |= 2;
      0069A9 43 87 02         [24]10981 	orl	_PCON,#0x02
                                  10982 ;	calc.c:577: return;
                                  10983 ;	calc.c:578: }
      0069AC 15 81            [12]10984 	dec	sp
      0069AE D0 08            [24]10985 	pop	_bp
      0069B0 22               [24]10986 	ret
                                  10987 	.area CSEG    (CODE)
                                  10988 	.area CONST   (CODE)
                                  10989 	.area CONST   (CODE)
      00895B                      10990 ___str_0:
      00895B 25 30 38 6C 78       10991 	.ascii "%08lx"
      008960 09                   10992 	.db 0x09
      008961 00                   10993 	.db 0x00
                                  10994 	.area CSEG    (CODE)
                                  10995 	.area CONST   (CODE)
      008962                      10996 ___str_1:
      008962 25 20 31 31 6C 64    10997 	.ascii "% 11ld"
      008968 09                   10998 	.db 0x09
      008969 00                   10999 	.db 0x00
                                  11000 	.area CSEG    (CODE)
                                  11001 	.area CONST   (CODE)
      00896A                      11002 ___str_2:
      00896A 25 30 31 31 6C 6F    11003 	.ascii "%011lo"
      008970 09                   11004 	.db 0x09
      008971 00                   11005 	.db 0x00
                                  11006 	.area CSEG    (CODE)
                                  11007 	.area CONST   (CODE)
      008972                      11008 ___str_3:
      008972 0D                   11009 	.db 0x0d
      008973 0A                   11010 	.db 0x0a
      008974 00                   11011 	.db 0x00
                                  11012 	.area CSEG    (CODE)
                                  11013 	.area CONST   (CODE)
      008975                      11014 ___str_4:
      008975 73 74 61 63 6B 20 75 11015 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      008984 0D                   11016 	.db 0x0d
      008985 0A                   11017 	.db 0x0a
      008986 00                   11018 	.db 0x00
                                  11019 	.area CSEG    (CODE)
                                  11020 	.area CONST   (CODE)
      008987                      11021 ___str_5:
      008987 50 53 50 41          11022 	.ascii "PSPA"
      00898B 09                   11023 	.db 0x09
      00898C 00                   11024 	.db 0x00
                                  11025 	.area CSEG    (CODE)
                                  11026 	.area CONST   (CODE)
      00898D                      11027 ___str_6:
      00898D 53 53 50 41          11028 	.ascii "SSPA"
      008991 09                   11029 	.db 0x09
      008992 00                   11030 	.db 0x00
                                  11031 	.area CSEG    (CODE)
                                  11032 	.area CONST   (CODE)
      008993                      11033 ___str_7:
      008993 50 53 56 41          11034 	.ascii "PSVA"
      008997 09                   11035 	.db 0x09
      008998 00                   11036 	.db 0x00
                                  11037 	.area CSEG    (CODE)
                                  11038 	.area CONST   (CODE)
      008999                      11039 ___str_8:
      008999 50 53 56 54 4F 50    11040 	.ascii "PSVTOP"
      00899F 09                   11041 	.db 0x09
      0089A0 00                   11042 	.db 0x00
                                  11043 	.area CSEG    (CODE)
                                  11044 	.area CONST   (CODE)
      0089A1                      11045 ___str_9:
      0089A1 50 53 50 54 4F 50    11046 	.ascii "PSPTOP"
      0089A7 09                   11047 	.db 0x09
      0089A8 00                   11048 	.db 0x00
                                  11049 	.area CSEG    (CODE)
                                  11050 	.area CONST   (CODE)
      0089A9                      11051 ___str_10:
      0089A9 0D                   11052 	.db 0x0d
      0089AA 0A                   11053 	.db 0x0a
      0089AB 73 74 61 63 6B 20 75 11054 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      0089BA 0D                   11055 	.db 0x0d
      0089BB 0A                   11056 	.db 0x0a
      0089BC 00                   11057 	.db 0x00
                                  11058 	.area CSEG    (CODE)
                                  11059 	.area CONST   (CODE)
      0089BD                      11060 ___str_11:
      0089BD 0D                   11061 	.db 0x0d
      0089BE 0A                   11062 	.db 0x0a
      0089BF 73 65 63 6F 6E 64 61 11063 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      0089D7 0D                   11064 	.db 0x0d
      0089D8 0A                   11065 	.db 0x0a
      0089D9 00                   11066 	.db 0x00
                                  11067 	.area CSEG    (CODE)
                                  11068 	.area CONST   (CODE)
      0089DA                      11069 ___str_12:
      0089DA 0D                   11070 	.db 0x0d
      0089DB 0A                   11071 	.db 0x0a
      0089DC 73 65 63 6F 6E 64 61 11072 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      0089F5 0D                   11073 	.db 0x0d
      0089F6 0A                   11074 	.db 0x0a
      0089F7 00                   11075 	.db 0x00
                                  11076 	.area CSEG    (CODE)
                                  11077 	.area CONST   (CODE)
      0089F8                      11078 ___str_13:
      0089F8 0D                   11079 	.db 0x0d
      0089F9 0A                   11080 	.db 0x0a
      0089FA 73 74 61 63 6B 20 6F 11081 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      008A08 0D                   11082 	.db 0x0d
      008A09 0A                   11083 	.db 0x0a
      008A0A 00                   11084 	.db 0x00
                                  11085 	.area CSEG    (CODE)
                                  11086 	.area CONST   (CODE)
      008A0B                      11087 ___str_14:
      008A0B 0D                   11088 	.db 0x0d
      008A0C 0A                   11089 	.db 0x0a
      008A0D 64 69 76 69 73 69 6F 11090 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      008A1D 0D                   11091 	.db 0x0d
      008A1E 0A                   11092 	.db 0x0a
      008A1F 00                   11093 	.db 0x00
                                  11094 	.area CSEG    (CODE)
                                  11095 	.area CONST   (CODE)
      008A20                      11096 ___str_15:
      008A20 0D                   11097 	.db 0x0d
      008A21 0A                   11098 	.db 0x0a
      008A22 50 53 20 3D 20 25 70 11099 	.ascii "PS = %p, SS = %p, base = %d"
             2C 20 53 53 20 3D 20
             25 70 2C 20 62 61 73
             65 20 3D 20 25 64
      008A3D 0D                   11100 	.db 0x0d
      008A3E 0A                   11101 	.db 0x0a
      008A3F 00                   11102 	.db 0x00
                                  11103 	.area CSEG    (CODE)
                                  11104 	.area CONST   (CODE)
      008A40                      11105 ___str_16:
      008A40 41 43 43             11106 	.ascii "ACC"
      008A43 09                   11107 	.db 0x09
      008A44 00                   11108 	.db 0x00
                                  11109 	.area CSEG    (CODE)
                                  11110 	.area CONST   (CODE)
      008A45                      11111 ___str_17:
      008A45 0D                   11112 	.db 0x0d
      008A46 0A                   11113 	.db 0x0a
      008A47 50 53 54 4F 50 31    11114 	.ascii "PSTOP1"
      008A4D 09                   11115 	.db 0x09
      008A4E 00                   11116 	.db 0x00
                                  11117 	.area CSEG    (CODE)
                                  11118 	.area CONST   (CODE)
      008A4F                      11119 ___str_18:
      008A4F 0D                   11120 	.db 0x0d
      008A50 0A                   11121 	.db 0x0a
      008A51 50 53 54 4F 50 30    11122 	.ascii "PSTOP0"
      008A57 09                   11123 	.db 0x09
      008A58 00                   11124 	.db 0x00
                                  11125 	.area CSEG    (CODE)
                                  11126 	.area CONST   (CODE)
      008A59                      11127 ___str_19:
      008A59 0D                   11128 	.db 0x0d
      008A5A 0A                   11129 	.db 0x0a
      008A5B 53 53 54 4F 50 31    11130 	.ascii "SSTOP1"
      008A61 09                   11131 	.db 0x09
      008A62 00                   11132 	.db 0x00
                                  11133 	.area CSEG    (CODE)
                                  11134 	.area CONST   (CODE)
      008A63                      11135 ___str_20:
      008A63 0D                   11136 	.db 0x0d
      008A64 0A                   11137 	.db 0x0a
      008A65 53 53 54 4F 50 30    11138 	.ascii "SSTOP0"
      008A6B 09                   11139 	.db 0x09
      008A6C 00                   11140 	.db 0x00
                                  11141 	.area CSEG    (CODE)
                                  11142 	.area CONST   (CODE)
      008A6D                      11143 ___str_21:
      008A6D 0D                   11144 	.db 0x0d
      008A6E 0A                   11145 	.db 0x0a
      008A6F 48 68 4F 6F          11146 	.ascii "HhOo"
      008A73 09                   11147 	.db 0x09
      008A74 62 61 73 65 20 31 36 11148 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      008A82 0D                   11149 	.db 0x0d
      008A83 0A                   11150 	.db 0x0a
      008A84 00                   11151 	.db 0x00
                                  11152 	.area CSEG    (CODE)
                                  11153 	.area CONST   (CODE)
      008A85                      11154 ___str_22:
      008A85 70 2E                11155 	.ascii "p."
      008A87 09                   11156 	.db 0x09
      008A88 70 6F 70 20 74 6F 70 11157 	.ascii "pop top"
      008A8F 0D                   11158 	.db 0x0d
      008A90 0A                   11159 	.db 0x0a
      008A91 00                   11160 	.db 0x00
                                  11161 	.area CSEG    (CODE)
                                  11162 	.area CONST   (CODE)
      008A92                      11163 ___str_23:
      008A92 50                   11164 	.ascii "P"
      008A93 09                   11165 	.db 0x09
      008A94 70 6F 70 20 73 74 61 11166 	.ascii "pop stack"
             63 6B
      008A9D 0D                   11167 	.db 0x0d
      008A9E 0A                   11168 	.db 0x0a
      008A9F 00                   11169 	.db 0x00
                                  11170 	.area CSEG    (CODE)
                                  11171 	.area CONST   (CODE)
      008AA0                      11172 ___str_24:
      008AA0 76                   11173 	.ascii "v"
      008AA1 09                   11174 	.db 0x09
      008AA2 70 65 65 6B 20 74 6F 11175 	.ascii "peek top"
             70
      008AAA 0D                   11176 	.db 0x0d
      008AAB 0A                   11177 	.db 0x0a
      008AAC 00                   11178 	.db 0x00
                                  11179 	.area CSEG    (CODE)
                                  11180 	.area CONST   (CODE)
      008AAD                      11181 ___str_25:
      008AAD 56                   11182 	.ascii "V"
      008AAE 09                   11183 	.db 0x09
      008AAF 70 65 65 6B 20 73 74 11184 	.ascii "peek stack"
             61 63 6B
      008AB9 0D                   11185 	.db 0x0d
      008ABA 0A                   11186 	.db 0x0a
      008ABB 00                   11187 	.db 0x00
                                  11188 	.area CSEG    (CODE)
                                  11189 	.area CONST   (CODE)
      008ABC                      11190 ___str_26:
      008ABC 69                   11191 	.ascii "i"
      008ABD 09                   11192 	.db 0x09
      008ABE 72 65 73 65 74 20 61 11193 	.ascii "reset acc"
             63 63
      008AC7 0D                   11194 	.db 0x0d
      008AC8 0A                   11195 	.db 0x0a
      008AC9 00                   11196 	.db 0x00
                                  11197 	.area CSEG    (CODE)
                                  11198 	.area CONST   (CODE)
      008ACA                      11199 ___str_27:
      008ACA 49                   11200 	.ascii "I"
      008ACB 09                   11201 	.db 0x09
      008ACC 72 65 73 65 74 20 61 11202 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      008AE1 0D                   11203 	.db 0x0d
      008AE2 0A                   11204 	.db 0x0a
      008AE3 00                   11205 	.db 0x00
                                  11206 	.area CSEG    (CODE)
                                  11207 	.area CONST   (CODE)
      008AE4                      11208 ___str_28:
      008AE4 78                   11209 	.ascii "x"
      008AE5 09                   11210 	.db 0x09
      008AE6 65 78 63 68 61 6E 67 11211 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      008AF4 0D                   11212 	.db 0x0d
      008AF5 0A                   11213 	.db 0x0a
      008AF6 00                   11214 	.db 0x00
                                  11215 	.area CSEG    (CODE)
                                  11216 	.area CONST   (CODE)
      008AF7                      11217 ___str_29:
      008AF7 58                   11218 	.ascii "X"
      008AF8 09                   11219 	.db 0x09
      008AF9 65 78 63 68 61 6E 67 11220 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      008B1E 0D                   11221 	.db 0x0d
      008B1F 0A                   11222 	.db 0x0a
      008B20 00                   11223 	.db 0x00
                                  11224 	.area CSEG    (CODE)
                                  11225 	.area CONST   (CODE)
      008B21                      11226 ___str_30:
      008B21 54                   11227 	.ascii "T"
      008B22 09                   11228 	.db 0x09
      008B23 65 78 63 68 61 6E 67 11229 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      008B46 0D                   11230 	.db 0x0d
      008B47 0A                   11231 	.db 0x0a
      008B48 00                   11232 	.db 0x00
                                  11233 	.area CSEG    (CODE)
                                  11234 	.area CONST   (CODE)
      008B49                      11235 ___str_31:
      008B49 55                   11236 	.ascii "U"
      008B4A 09                   11237 	.db 0x09
      008B4B 63 6F 70 79 20 74 6F 11238 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008B68 0D                   11239 	.db 0x0d
      008B69 0A                   11240 	.db 0x0a
      008B6A 00                   11241 	.db 0x00
                                  11242 	.area CSEG    (CODE)
                                  11243 	.area CONST   (CODE)
      008B6B                      11244 ___str_32:
      008B6B 75                   11245 	.ascii "u"
      008B6C 09                   11246 	.db 0x09
      008B6D 63 6F 70 79 20 74 6F 11247 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008B8A 0D                   11248 	.db 0x0d
      008B8B 0A                   11249 	.db 0x0a
      008B8C 00                   11250 	.db 0x00
                                  11251 	.area CSEG    (CODE)
                                  11252 	.area CONST   (CODE)
      008B8D                      11253 ___str_33:
      008B8D 4D                   11254 	.ascii "M"
      008B8E 09                   11255 	.db 0x09
      008B8F 6D 6F 76 65 20 74 6F 11256 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008BAC 0D                   11257 	.db 0x0d
      008BAD 0A                   11258 	.db 0x0a
      008BAE 00                   11259 	.db 0x00
                                  11260 	.area CSEG    (CODE)
                                  11261 	.area CONST   (CODE)
      008BAF                      11262 ___str_34:
      008BAF 6D                   11263 	.ascii "m"
      008BB0 09                   11264 	.db 0x09
      008BB1 6D 6F 76 65 20 74 6F 11265 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008BCE 0D                   11266 	.db 0x0d
      008BCF 0A                   11267 	.db 0x0a
      008BD0 00                   11268 	.db 0x00
                                  11269 	.area CSEG    (CODE)
                                  11270 	.area CONST   (CODE)
      008BD1                      11271 ___str_35:
      008BD1 2B                   11272 	.ascii "+"
      008BD2 09                   11273 	.db 0x09
      008BD3 61 64 64 20 74 6F 70 11274 	.ascii "add top 2"
             20 32
      008BDC 0D                   11275 	.db 0x0d
      008BDD 0A                   11276 	.db 0x0a
      008BDE 00                   11277 	.db 0x00
                                  11278 	.area CSEG    (CODE)
                                  11279 	.area CONST   (CODE)
      008BDF                      11280 ___str_36:
      008BDF 2D                   11281 	.ascii "-"
      008BE0 09                   11282 	.db 0x09
      008BE1 73 75 62 74 72 61 63 11283 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      008BEF 0D                   11284 	.db 0x0d
      008BF0 0A                   11285 	.db 0x0a
      008BF1 00                   11286 	.db 0x00
                                  11287 	.area CSEG    (CODE)
                                  11288 	.area CONST   (CODE)
      008BF2                      11289 ___str_37:
      008BF2 2A                   11290 	.ascii "*"
      008BF3 09                   11291 	.db 0x09
      008BF4 6D 75 6C 74 69 70 6C 11292 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      008C02 0D                   11293 	.db 0x0d
      008C03 0A                   11294 	.db 0x0a
      008C04 00                   11295 	.db 0x00
                                  11296 	.area CSEG    (CODE)
                                  11297 	.area CONST   (CODE)
      008C05                      11298 ___str_38:
      008C05 2F                   11299 	.ascii "/"
      008C06 09                   11300 	.db 0x09
      008C07 64 69 76 69 64 65 20 11301 	.ascii "divide top 2"
             74 6F 70 20 32
      008C13 0D                   11302 	.db 0x0d
      008C14 0A                   11303 	.db 0x0a
      008C15 00                   11304 	.db 0x00
                                  11305 	.area CSEG    (CODE)
                                  11306 	.area CONST   (CODE)
      008C16                      11307 ___str_39:
      008C16 5C                   11308 	.db 0x5c
      008C17 09                   11309 	.db 0x09
      008C18 64 69 76 69 64 65 20 11310 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      008C2D 0D                   11311 	.db 0x0d
      008C2E 0A                   11312 	.db 0x0a
      008C2F 00                   11313 	.db 0x00
                                  11314 	.area CSEG    (CODE)
                                  11315 	.area CONST   (CODE)
      008C30                      11316 ___str_40:
      008C30 25                   11317 	.ascii "%"
      008C31 09                   11318 	.db 0x09
      008C32 6D 6F 64 75 6C 75 73 11319 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      008C3F 0D                   11320 	.db 0x0d
      008C40 0A                   11321 	.db 0x0a
      008C41 00                   11322 	.db 0x00
                                  11323 	.area CSEG    (CODE)
                                  11324 	.area CONST   (CODE)
      008C42                      11325 ___str_41:
      008C42 23                   11326 	.ascii "#"
      008C43 09                   11327 	.db 0x09
      008C44 6D 6F 64 75 6C 75 73 11328 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      008C5A 0D                   11329 	.db 0x0d
      008C5B 0A                   11330 	.db 0x0a
      008C5C 00                   11331 	.db 0x00
                                  11332 	.area CSEG    (CODE)
                                  11333 	.area CONST   (CODE)
      008C5D                      11334 ___str_42:
      008C5D 26                   11335 	.ascii "&"
      008C5E 09                   11336 	.db 0x09
      008C5F 61 6E 64 20 74 6F 70 11337 	.ascii "and top 2"
             20 32
      008C68 0D                   11338 	.db 0x0d
      008C69 0A                   11339 	.db 0x0a
      008C6A 00                   11340 	.db 0x00
                                  11341 	.area CSEG    (CODE)
                                  11342 	.area CONST   (CODE)
      008C6B                      11343 ___str_43:
      008C6B 7C                   11344 	.ascii "|"
      008C6C 09                   11345 	.db 0x09
      008C6D 6F 72 20 74 6F 70 20 11346 	.ascii "or top 2"
             32
      008C75 0D                   11347 	.db 0x0d
      008C76 0A                   11348 	.db 0x0a
      008C77 00                   11349 	.db 0x00
                                  11350 	.area CSEG    (CODE)
                                  11351 	.area CONST   (CODE)
      008C78                      11352 ___str_44:
      008C78 5E                   11353 	.ascii "^"
      008C79 09                   11354 	.db 0x09
      008C7A 78 6F 72 20 74 6F 70 11355 	.ascii "xor top 2"
             20 32
      008C83 0D                   11356 	.db 0x0d
      008C84 0A                   11357 	.db 0x0a
      008C85 00                   11358 	.db 0x00
                                  11359 	.area CSEG    (CODE)
                                  11360 	.area CONST   (CODE)
      008C86                      11361 ___str_45:
      008C86 3E                   11362 	.ascii ">"
      008C87 09                   11363 	.db 0x09
      008C88 73 68 69 66 74 20 72 11364 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      008C99 0D                   11365 	.db 0x0d
      008C9A 0A                   11366 	.db 0x0a
      008C9B 00                   11367 	.db 0x00
                                  11368 	.area CSEG    (CODE)
                                  11369 	.area CONST   (CODE)
      008C9C                      11370 ___str_46:
      008C9C 5D                   11371 	.ascii "]"
      008C9D 09                   11372 	.db 0x09
      008C9E 61 72 69 74 68 6D 65 11373 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      008CBA 0D                   11374 	.db 0x0d
      008CBB 0A                   11375 	.db 0x0a
      008CBC 00                   11376 	.db 0x00
                                  11377 	.area CSEG    (CODE)
                                  11378 	.area CONST   (CODE)
      008CBD                      11379 ___str_47:
      008CBD 3C                   11380 	.ascii "<"
      008CBE 09                   11381 	.db 0x09
      008CBF 73 68 69 66 74 20 6C 11382 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      008CCF 0D                   11383 	.db 0x0d
      008CD0 0A                   11384 	.db 0x0a
      008CD1 00                   11385 	.db 0x00
                                  11386 	.area CSEG    (CODE)
                                  11387 	.area CONST   (CODE)
      008CD2                      11388 ___str_48:
      008CD2 7E                   11389 	.ascii "~"
      008CD3 09                   11390 	.db 0x09
      008CD4 62 69 74 77 69 73 65 11391 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      008CE3 0D                   11392 	.db 0x0d
      008CE4 0A                   11393 	.db 0x0a
      008CE5 00                   11394 	.db 0x00
                                  11395 	.area CSEG    (CODE)
                                  11396 	.area CONST   (CODE)
      008CE6                      11397 ___str_49:
      008CE6 73                   11398 	.ascii "s"
      008CE7 09                   11399 	.db 0x09
      008CE8 73 74 61 74 75 73    11400 	.ascii "status"
      008CEE 0D                   11401 	.db 0x0d
      008CEF 0A                   11402 	.db 0x0a
      008CF0 00                   11403 	.db 0x00
                                  11404 	.area CSEG    (CODE)
                                  11405 	.area CONST   (CODE)
      008CF1                      11406 ___str_50:
      008CF1 3F                   11407 	.ascii "?"
      008CF2 09                   11408 	.db 0x09
      008CF3 68 65 6C 70          11409 	.ascii "help"
      008CF7 0D                   11410 	.db 0x0d
      008CF8 0A                   11411 	.db 0x0a
      008CF9 00                   11412 	.db 0x00
                                  11413 	.area CSEG    (CODE)
                                  11414 	.area CONST   (CODE)
      008CFA                      11415 ___str_51:
      008CFA 71                   11416 	.ascii "q"
      008CFB 09                   11417 	.db 0x09
      008CFC 71 75 69 74          11418 	.ascii "quit"
      008D00 0D                   11419 	.db 0x0d
      008D01 0A                   11420 	.db 0x0a
      008D02 00                   11421 	.db 0x00
                                  11422 	.area CSEG    (CODE)
                                  11423 	.area CONST   (CODE)
      008D03                      11424 ___str_52:
      008D03 54 45 52 4D          11425 	.ascii "TERM"
      008D07 0D                   11426 	.db 0x0d
      008D08 0A                   11427 	.db 0x0a
      008D09 00                   11428 	.db 0x00
                                  11429 	.area CSEG    (CODE)
                                  11430 	.area XINIT   (CODE)
      008D1B                      11431 __xinit__deltas:
      008D1B 00 00                11432 	.byte #0x00, #0x00	;  0
      008D1D 00 00                11433 	.byte #0x00, #0x00	;  0
      008D1F 00 00                11434 	.byte #0x00, #0x00	;  0
      008D21 00 00                11435 	.byte #0x00,#0x00
      008D23 00 00                11436 	.byte #0x00,#0x00
      008D25 00 00                11437 	.byte #0x00, #0x00	;  0
      008D27 01 00                11438 	.byte #0x01, #0x00	;  1
      008D29 02 00                11439 	.byte #0x02, #0x00	;  2
      008D2B 00 00                11440 	.byte #0x00,#0x00
      008D2D A0 2B                11441 	.byte _accumulate, (_accumulate >> 8)
      008D2F 00 00                11442 	.byte #0x00, #0x00	;  0
      008D31 02 00                11443 	.byte #0x02, #0x00	;  2
      008D33 01 00                11444 	.byte #0x01, #0x00	;  1
      008D35 00 00                11445 	.byte #0x00,#0x00
      008D37 22 34                11446 	.byte _operator, (_operator >> 8)
      008D39 01 00                11447 	.byte #0x01, #0x00	;  1
      008D3B 00 00                11448 	.byte #0x00, #0x00	;  0
      008D3D 00 00                11449 	.byte #0x00, #0x00	;  0
      008D3F 00 00                11450 	.byte #0x00,#0x00
      008D41 00 00                11451 	.byte #0x00,#0x00
      008D43 01 00                11452 	.byte #0x01, #0x00	;  1
      008D45 02 00                11453 	.byte #0x02, #0x00	;  2
      008D47 01 00                11454 	.byte #0x01, #0x00	;  1
      008D49 00 00                11455 	.byte #0x00,#0x00
      008D4B 22 34                11456 	.byte _operator, (_operator >> 8)
      008D4D 01 00                11457 	.byte #0x01, #0x00	;  1
      008D4F 01 00                11458 	.byte #0x01, #0x00	;  1
      008D51 02 00                11459 	.byte #0x02, #0x00	;  2
      008D53 00 00                11460 	.byte #0x00,#0x00
      008D55 A0 2B                11461 	.byte _accumulate, (_accumulate >> 8)
      008D57 02 00                11462 	.byte #0x02, #0x00	;  2
      008D59 00 00                11463 	.byte #0x00, #0x00	;  0
      008D5B 00 00                11464 	.byte #0x00, #0x00	;  0
      008D5D 00 00                11465 	.byte #0x00,#0x00
      008D5F 1C 57                11466 	.byte _push_acc, (_push_acc >> 8)
      008D61 02 00                11467 	.byte #0x02, #0x00	;  2
      008D63 07 00                11468 	.byte #0x07, #0x00	;  7
      008D65 00 00                11469 	.byte #0x00, #0x00	;  0
      008D67 00 00                11470 	.byte #0x00,#0x00
      008D69 38 58                11471 	.byte _reset_acc, (_reset_acc >> 8)
      008D6B 02 00                11472 	.byte #0x02, #0x00	;  2
      008D6D 01 00                11473 	.byte #0x01, #0x00	;  1
      008D6F 02 00                11474 	.byte #0x02, #0x00	;  2
      008D71 00 00                11475 	.byte #0x00,#0x00
      008D73 A0 2B                11476 	.byte _accumulate, (_accumulate >> 8)
      008D75 02 00                11477 	.byte #0x02, #0x00	;  2
      008D77 02 00                11478 	.byte #0x02, #0x00	;  2
      008D79 01 00                11479 	.byte #0x01, #0x00	;  1
      008D7B 00 00                11480 	.byte #0x00,#0x00
      008D7D 1C 57                11481 	.byte _push_acc, (_push_acc >> 8)
      008D7F FF 7F                11482 	.byte #0xff, #0x7f	;  32767
      008D81 06 00                11483 	.byte #0x06, #0x00	;  6
      008D83 FF 7F                11484 	.byte #0xff, #0x7f	;  32767
      008D85 00 00                11485 	.byte #0x00,#0x00
      008D87 38 58                11486 	.byte _reset_acc, (_reset_acc >> 8)
      008D89 FF 7F                11487 	.byte #0xff, #0x7f	;  32767
      008D8B 07 00                11488 	.byte #0x07, #0x00	;  7
      008D8D FF 7F                11489 	.byte #0xff, #0x7f	;  32767
      008D8F 00 00                11490 	.byte #0x00,#0x00
      008D91 00 00                11491 	.byte #0x00,#0x00
      008D93 FF 7F                11492 	.byte #0xff, #0x7f	;  32767
      008D95 05 00                11493 	.byte #0x05, #0x00	;  5
      008D97 FF 7F                11494 	.byte #0xff, #0x7f	;  32767
      008D99 00 00                11495 	.byte #0x00,#0x00
      008D9B A2 58                11496 	.byte _reset_base, (_reset_base >> 8)
      008D9D FF 7F                11497 	.byte #0xff, #0x7f	;  32767
      008D9F 03 00                11498 	.byte #0x03, #0x00	;  3
      008DA1 FF 7F                11499 	.byte #0xff, #0x7f	;  32767
      008DA3 00 00                11500 	.byte #0x00,#0x00
      008DA5 20 59                11501 	.byte _status, (_status >> 8)
      008DA7 FF 7F                11502 	.byte #0xff, #0x7f	;  32767
      008DA9 04 00                11503 	.byte #0x04, #0x00	;  4
      008DAB FF 7F                11504 	.byte #0xff, #0x7f	;  32767
      008DAD 00 00                11505 	.byte #0x00,#0x00
      008DAF 7F 61                11506 	.byte _help, (_help >> 8)
      008DB1 FF 7F                11507 	.byte #0xff, #0x7f	;  32767
      008DB3 08 00                11508 	.byte #0x08, #0x00	;  8
      008DB5 03 00                11509 	.byte #0x03, #0x00	;  3
      008DB7 00 00                11510 	.byte #0x00,#0x00
      008DB9 11 2D                11511 	.byte _dump_pop, (_dump_pop >> 8)
      008DBB 00 80                11512 	.byte #0x00, #0x80	; -32768
      008DBD 00 80                11513 	.byte #0x00, #0x80	; -32768
      008DBF 00 80                11514 	.byte #0x00, #0x80	; -32768
      008DC1 00 00                11515 	.byte #0x00,#0x00
      008DC3 00 00                11516 	.byte #0x00,#0x00
                                  11517 	.area CABS    (ABS,CODE)
