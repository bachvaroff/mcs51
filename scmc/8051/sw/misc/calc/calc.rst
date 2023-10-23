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
                                     13 	.globl _stack_iter_peek
                                     14 	.globl _stack_peek
                                     15 	.globl _stack_pop
                                     16 	.globl _stack_push
                                     17 	.globl _stack_init
                                     18 	.globl _state_exec
                                     19 	.globl _state_init
                                     20 	.globl _isxdigit
                                     21 	.globl _printf
                                     22 	.globl _strtol
                                     23 	.globl _CY
                                     24 	.globl _AC
                                     25 	.globl _F0
                                     26 	.globl _RS1
                                     27 	.globl _RS0
                                     28 	.globl _OV
                                     29 	.globl _FL
                                     30 	.globl _P
                                     31 	.globl _TF2
                                     32 	.globl _EXF2
                                     33 	.globl _RCLK
                                     34 	.globl _TCLK
                                     35 	.globl _EXEN2
                                     36 	.globl _TR2
                                     37 	.globl _C_T2
                                     38 	.globl _CP_RL2
                                     39 	.globl _T2CON_7
                                     40 	.globl _T2CON_6
                                     41 	.globl _T2CON_5
                                     42 	.globl _T2CON_4
                                     43 	.globl _T2CON_3
                                     44 	.globl _T2CON_2
                                     45 	.globl _T2CON_1
                                     46 	.globl _T2CON_0
                                     47 	.globl _PT2
                                     48 	.globl _PS
                                     49 	.globl _PT1
                                     50 	.globl _PX1
                                     51 	.globl _PT0
                                     52 	.globl _PX0
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD
                                     60 	.globl _RXD
                                     61 	.globl _P3_7
                                     62 	.globl _P3_6
                                     63 	.globl _P3_5
                                     64 	.globl _P3_4
                                     65 	.globl _P3_3
                                     66 	.globl _P3_2
                                     67 	.globl _P3_1
                                     68 	.globl _P3_0
                                     69 	.globl _EA
                                     70 	.globl _ET2
                                     71 	.globl _ES
                                     72 	.globl _ET1
                                     73 	.globl _EX1
                                     74 	.globl _ET0
                                     75 	.globl _EX0
                                     76 	.globl _P2_7
                                     77 	.globl _P2_6
                                     78 	.globl _P2_5
                                     79 	.globl _P2_4
                                     80 	.globl _P2_3
                                     81 	.globl _P2_2
                                     82 	.globl _P2_1
                                     83 	.globl _P2_0
                                     84 	.globl _SM0
                                     85 	.globl _SM1
                                     86 	.globl _SM2
                                     87 	.globl _REN
                                     88 	.globl _TB8
                                     89 	.globl _RB8
                                     90 	.globl _TI
                                     91 	.globl _RI
                                     92 	.globl _T2EX
                                     93 	.globl _T2
                                     94 	.globl _P1_7
                                     95 	.globl _P1_6
                                     96 	.globl _P1_5
                                     97 	.globl _P1_4
                                     98 	.globl _P1_3
                                     99 	.globl _P1_2
                                    100 	.globl _P1_1
                                    101 	.globl _P1_0
                                    102 	.globl _TF1
                                    103 	.globl _TR1
                                    104 	.globl _TF0
                                    105 	.globl _TR0
                                    106 	.globl _IE1
                                    107 	.globl _IT1
                                    108 	.globl _IE0
                                    109 	.globl _IT0
                                    110 	.globl _P0_7
                                    111 	.globl _P0_6
                                    112 	.globl _P0_5
                                    113 	.globl _P0_4
                                    114 	.globl _P0_3
                                    115 	.globl _P0_2
                                    116 	.globl _P0_1
                                    117 	.globl _P0_0
                                    118 	.globl _B
                                    119 	.globl _A
                                    120 	.globl _ACC
                                    121 	.globl _PSW
                                    122 	.globl _TH2
                                    123 	.globl _TL2
                                    124 	.globl _RCAP2H
                                    125 	.globl _RCAP2L
                                    126 	.globl _T2MOD
                                    127 	.globl _T2CON
                                    128 	.globl _IP
                                    129 	.globl _P3
                                    130 	.globl _IE
                                    131 	.globl _P2
                                    132 	.globl _SBUF
                                    133 	.globl _SCON
                                    134 	.globl _P1
                                    135 	.globl _TH1
                                    136 	.globl _TH0
                                    137 	.globl _TL1
                                    138 	.globl _TL0
                                    139 	.globl _TMOD
                                    140 	.globl _TCON
                                    141 	.globl _PCON
                                    142 	.globl _DPH
                                    143 	.globl _DPL
                                    144 	.globl _SP
                                    145 	.globl _P0
                                    146 	.globl _putchar
                                    147 	.globl _getchar
                                    148 ;--------------------------------------------------------
                                    149 ; special function registers
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0	=	0x0080
                           000081   154 _SP	=	0x0081
                           000082   155 _DPL	=	0x0082
                           000083   156 _DPH	=	0x0083
                           000087   157 _PCON	=	0x0087
                           000088   158 _TCON	=	0x0088
                           000089   159 _TMOD	=	0x0089
                           00008A   160 _TL0	=	0x008a
                           00008B   161 _TL1	=	0x008b
                           00008C   162 _TH0	=	0x008c
                           00008D   163 _TH1	=	0x008d
                           000090   164 _P1	=	0x0090
                           000098   165 _SCON	=	0x0098
                           000099   166 _SBUF	=	0x0099
                           0000A0   167 _P2	=	0x00a0
                           0000A8   168 _IE	=	0x00a8
                           0000B0   169 _P3	=	0x00b0
                           0000B8   170 _IP	=	0x00b8
                           0000C8   171 _T2CON	=	0x00c8
                           0000C9   172 _T2MOD	=	0x00c9
                           0000CA   173 _RCAP2L	=	0x00ca
                           0000CB   174 _RCAP2H	=	0x00cb
                           0000CC   175 _TL2	=	0x00cc
                           0000CD   176 _TH2	=	0x00cd
                           0000D0   177 _PSW	=	0x00d0
                           0000E0   178 _ACC	=	0x00e0
                           0000E0   179 _A	=	0x00e0
                           0000F0   180 _B	=	0x00f0
                                    181 ;--------------------------------------------------------
                                    182 ; special function bits
                                    183 ;--------------------------------------------------------
                                    184 	.area RSEG    (ABS,DATA)
      000000                        185 	.org 0x0000
                           000080   186 _P0_0	=	0x0080
                           000081   187 _P0_1	=	0x0081
                           000082   188 _P0_2	=	0x0082
                           000083   189 _P0_3	=	0x0083
                           000084   190 _P0_4	=	0x0084
                           000085   191 _P0_5	=	0x0085
                           000086   192 _P0_6	=	0x0086
                           000087   193 _P0_7	=	0x0087
                           000088   194 _IT0	=	0x0088
                           000089   195 _IE0	=	0x0089
                           00008A   196 _IT1	=	0x008a
                           00008B   197 _IE1	=	0x008b
                           00008C   198 _TR0	=	0x008c
                           00008D   199 _TF0	=	0x008d
                           00008E   200 _TR1	=	0x008e
                           00008F   201 _TF1	=	0x008f
                           000090   202 _P1_0	=	0x0090
                           000091   203 _P1_1	=	0x0091
                           000092   204 _P1_2	=	0x0092
                           000093   205 _P1_3	=	0x0093
                           000094   206 _P1_4	=	0x0094
                           000095   207 _P1_5	=	0x0095
                           000096   208 _P1_6	=	0x0096
                           000097   209 _P1_7	=	0x0097
                           000090   210 _T2	=	0x0090
                           000091   211 _T2EX	=	0x0091
                           000098   212 _RI	=	0x0098
                           000099   213 _TI	=	0x0099
                           00009A   214 _RB8	=	0x009a
                           00009B   215 _TB8	=	0x009b
                           00009C   216 _REN	=	0x009c
                           00009D   217 _SM2	=	0x009d
                           00009E   218 _SM1	=	0x009e
                           00009F   219 _SM0	=	0x009f
                           0000A0   220 _P2_0	=	0x00a0
                           0000A1   221 _P2_1	=	0x00a1
                           0000A2   222 _P2_2	=	0x00a2
                           0000A3   223 _P2_3	=	0x00a3
                           0000A4   224 _P2_4	=	0x00a4
                           0000A5   225 _P2_5	=	0x00a5
                           0000A6   226 _P2_6	=	0x00a6
                           0000A7   227 _P2_7	=	0x00a7
                           0000A8   228 _EX0	=	0x00a8
                           0000A9   229 _ET0	=	0x00a9
                           0000AA   230 _EX1	=	0x00aa
                           0000AB   231 _ET1	=	0x00ab
                           0000AC   232 _ES	=	0x00ac
                           0000AD   233 _ET2	=	0x00ad
                           0000AF   234 _EA	=	0x00af
                           0000B0   235 _P3_0	=	0x00b0
                           0000B1   236 _P3_1	=	0x00b1
                           0000B2   237 _P3_2	=	0x00b2
                           0000B3   238 _P3_3	=	0x00b3
                           0000B4   239 _P3_4	=	0x00b4
                           0000B5   240 _P3_5	=	0x00b5
                           0000B6   241 _P3_6	=	0x00b6
                           0000B7   242 _P3_7	=	0x00b7
                           0000B0   243 _RXD	=	0x00b0
                           0000B1   244 _TXD	=	0x00b1
                           0000B2   245 _INT0	=	0x00b2
                           0000B3   246 _INT1	=	0x00b3
                           0000B4   247 _T0	=	0x00b4
                           0000B5   248 _T1	=	0x00b5
                           0000B6   249 _WR	=	0x00b6
                           0000B7   250 _RD	=	0x00b7
                           0000B8   251 _PX0	=	0x00b8
                           0000B9   252 _PT0	=	0x00b9
                           0000BA   253 _PX1	=	0x00ba
                           0000BB   254 _PT1	=	0x00bb
                           0000BC   255 _PS	=	0x00bc
                           0000BD   256 _PT2	=	0x00bd
                           0000C8   257 _T2CON_0	=	0x00c8
                           0000C9   258 _T2CON_1	=	0x00c9
                           0000CA   259 _T2CON_2	=	0x00ca
                           0000CB   260 _T2CON_3	=	0x00cb
                           0000CC   261 _T2CON_4	=	0x00cc
                           0000CD   262 _T2CON_5	=	0x00cd
                           0000CE   263 _T2CON_6	=	0x00ce
                           0000CF   264 _T2CON_7	=	0x00cf
                           0000C8   265 _CP_RL2	=	0x00c8
                           0000C9   266 _C_T2	=	0x00c9
                           0000CA   267 _TR2	=	0x00ca
                           0000CB   268 _EXEN2	=	0x00cb
                           0000CC   269 _TCLK	=	0x00cc
                           0000CD   270 _RCLK	=	0x00cd
                           0000CE   271 _EXF2	=	0x00ce
                           0000CF   272 _TF2	=	0x00cf
                           0000D0   273 _P	=	0x00d0
                           0000D1   274 _FL	=	0x00d1
                           0000D2   275 _OV	=	0x00d2
                           0000D3   276 _RS0	=	0x00d3
                           0000D4   277 _RS1	=	0x00d4
                           0000D5   278 _F0	=	0x00d5
                           0000D6   279 _AC	=	0x00d6
                           0000D7   280 _CY	=	0x00d7
                                    281 ;--------------------------------------------------------
                                    282 ; overlayable register banks
                                    283 ;--------------------------------------------------------
                                    284 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        285 	.ds 8
                                    286 ;--------------------------------------------------------
                                    287 ; internal ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area DSEG    (DATA)
                                    290 ;--------------------------------------------------------
                                    291 ; overlayable items in internal ram 
                                    292 ;--------------------------------------------------------
                                    293 ;--------------------------------------------------------
                                    294 ; Stack segment in internal ram 
                                    295 ;--------------------------------------------------------
                                    296 	.area	SSEG
      000021                        297 __start__stack:
      000021                        298 	.ds	1
                                    299 
                                    300 ;--------------------------------------------------------
                                    301 ; indirectly addressable internal ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area ISEG    (DATA)
                                    304 ;--------------------------------------------------------
                                    305 ; absolute internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area IABS    (ABS,DATA)
                                    308 	.area IABS    (ABS,DATA)
                                    309 ;--------------------------------------------------------
                                    310 ; bit data
                                    311 ;--------------------------------------------------------
                                    312 	.area BSEG    (BIT)
                                    313 ;--------------------------------------------------------
                                    314 ; paged external ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area PSEG    (PAG,XDATA)
                                    317 ;--------------------------------------------------------
                                    318 ; external ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area XSEG    (XDATA)
      008000                        321 _s:
      008000                        322 	.ds 12
      00800C                        323 _c:
      00800C                        324 	.ds 8205
                                    325 ;--------------------------------------------------------
                                    326 ; absolute external ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area XABS    (ABS,XDATA)
                                    329 ;--------------------------------------------------------
                                    330 ; external initialized ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XISEG   (XDATA)
      00A01B                        333 _hexp:
      00A01B                        334 	.ds 3
      00A01E                        335 _decp:
      00A01E                        336 	.ds 3
      00A021                        337 _hexP:
      00A021                        338 	.ds 3
      00A024                        339 _decP:
      00A024                        340 	.ds 3
      00A027                        341 _hexv:
      00A027                        342 	.ds 3
      00A02A                        343 _decv:
      00A02A                        344 	.ds 3
      00A02D                        345 _hexV:
      00A02D                        346 	.ds 3
      00A030                        347 _decV:
      00A030                        348 	.ds 3
      00A033                        349 _deltas:
      00A033                        350 	.ds 160
                                    351 	.area HOME    (CODE)
                                    352 	.area GSINIT0 (CODE)
                                    353 	.area GSINIT1 (CODE)
                                    354 	.area GSINIT2 (CODE)
                                    355 	.area GSINIT3 (CODE)
                                    356 	.area GSINIT4 (CODE)
                                    357 	.area GSINIT5 (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 	.area GSFINAL (CODE)
                                    360 	.area CSEG    (CODE)
                                    361 ;--------------------------------------------------------
                                    362 ; interrupt vector 
                                    363 ;--------------------------------------------------------
                                    364 	.area HOME    (CODE)
      002000                        365 __interrupt_vect:
      002000 02 20 34         [24]  366 	ljmp	__sdcc_gsinit_startup
                                    367 ;--------------------------------------------------------
                                    368 ; global & static initialisations
                                    369 ;--------------------------------------------------------
                                    370 	.area HOME    (CODE)
                                    371 	.area GSINIT  (CODE)
                                    372 	.area GSFINAL (CODE)
                                    373 	.area GSINIT  (CODE)
                                    374 	.globl __sdcc_gsinit_startup
                                    375 	.globl __sdcc_program_startup
                                    376 	.globl __start__stack
                                    377 	.globl __mcs51_genXINIT
                                    378 	.globl __mcs51_genXRAMCLEAR
                                    379 	.globl __mcs51_genRAMCLEAR
                                    380 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  381 	ljmp	__sdcc_program_startup
                                    382 ;--------------------------------------------------------
                                    383 ; Home
                                    384 ;--------------------------------------------------------
                                    385 	.area HOME    (CODE)
                                    386 	.area HOME    (CODE)
      002003                        387 __sdcc_program_startup:
      002003 02 43 63         [24]  388 	ljmp	_main
                                    389 ;	return from main will return to caller
                                    390 ;--------------------------------------------------------
                                    391 ; code
                                    392 ;--------------------------------------------------------
                                    393 	.area CSEG    (CODE)
                                    394 ;------------------------------------------------------------
                                    395 ;Allocation info for local variables in function 'putchar'
                                    396 ;------------------------------------------------------------
                                    397 ;c                         Allocated to registers 
                                    398 ;------------------------------------------------------------
                                    399 ;	calc.c:15: int putchar(int c) __naked {
                                    400 ;	-----------------------------------------
                                    401 ;	 function putchar
                                    402 ;	-----------------------------------------
      0029C0                        403 _putchar:
                                    404 ;	naked function: no prologue.
                                    405 ;	calc.c:20: __endasm;
      0029C0 E5 82            [12]  406 	mov	a, dpl
      0029C2 02 00 30         [24]  407 	ljmp	0x0030
                                    408 ;	calc.c:21: }
                                    409 ;	naked function: no epilogue.
                                    410 ;------------------------------------------------------------
                                    411 ;Allocation info for local variables in function 'getchar'
                                    412 ;------------------------------------------------------------
                                    413 ;	calc.c:23: int getchar(void) __naked {
                                    414 ;	-----------------------------------------
                                    415 ;	 function getchar
                                    416 ;	-----------------------------------------
      0029C5                        417 _getchar:
                                    418 ;	naked function: no prologue.
                                    419 ;	calc.c:29: __endasm;
      0029C5 12 00 32         [24]  420 	lcall	0x0032
      0029C8 F5 82            [12]  421 	mov	dpl, a
      0029CA 75 83 00         [24]  422 	mov	dph, #0
      0029CD 22               [24]  423 	ret
                                    424 ;	calc.c:30: }
                                    425 ;	naked function: no epilogue.
                                    426 ;------------------------------------------------------------
                                    427 ;Allocation info for local variables in function 'getchar_poll'
                                    428 ;------------------------------------------------------------
                                    429 ;	calc.c:32: int getchar_poll(void) __naked {
                                    430 ;	-----------------------------------------
                                    431 ;	 function getchar_poll
                                    432 ;	-----------------------------------------
      0029CE                        433 _getchar_poll:
                                    434 ;	naked function: no prologue.
                                    435 ;	calc.c:44: __endasm;
      0029CE 74 FF            [12]  436 	mov	a, #0xff
      0029D0 F5 F0            [12]  437 	mov	b, a
      0029D2 30 98 07         [24]  438 	jnb	ri, nochar
      0029D5 C2 98            [12]  439 	clr	ri
      0029D7 E5 99            [12]  440 	mov	a, sbuf
      0029D9 75 F0 00         [24]  441 	mov	b, #0
      0029DC                        442 	nochar:
      0029DC F5 82            [12]  443 	mov	dpl, a
      0029DE 85 F0 83         [24]  444 	mov	dph, b
      0029E1 22               [24]  445 	ret
                                    446 ;	calc.c:45: }
                                    447 ;	naked function: no epilogue.
                                    448 ;------------------------------------------------------------
                                    449 ;Allocation info for local variables in function 'accumulate'
                                    450 ;------------------------------------------------------------
                                    451 ;delta                     Allocated to stack - _bp -5
                                    452 ;_ctx                      Allocated to registers r5 r6 r7 
                                    453 ;ctx                       Allocated to stack - _bp +8
                                    454 ;d                         Allocated to stack - _bp +11
                                    455 ;sloc0                     Allocated to stack - _bp +1
                                    456 ;sloc1                     Allocated to stack - _bp +4
                                    457 ;------------------------------------------------------------
                                    458 ;	calc.c:84: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
                                    459 ;	-----------------------------------------
                                    460 ;	 function accumulate
                                    461 ;	-----------------------------------------
      0029E2                        462 _accumulate:
                           000007   463 	ar7 = 0x07
                           000006   464 	ar6 = 0x06
                           000005   465 	ar5 = 0x05
                           000004   466 	ar4 = 0x04
                           000003   467 	ar3 = 0x03
                           000002   468 	ar2 = 0x02
                           000001   469 	ar1 = 0x01
                           000000   470 	ar0 = 0x00
      0029E2 C0 08            [24]  471 	push	_bp
      0029E4 E5 81            [12]  472 	mov	a,sp
      0029E6 F5 08            [12]  473 	mov	_bp,a
      0029E8 24 0E            [12]  474 	add	a,#0x0e
      0029EA F5 81            [12]  475 	mov	sp,a
      0029EC AD 82            [24]  476 	mov	r5,dpl
      0029EE AE 83            [24]  477 	mov	r6,dph
      0029F0 AF F0            [24]  478 	mov	r7,b
                                    479 ;	calc.c:85: struct ctx *ctx = (struct ctx *)_ctx;
      0029F2 E5 08            [12]  480 	mov	a,_bp
      0029F4 24 08            [12]  481 	add	a,#0x08
      0029F6 F8               [12]  482 	mov	r0,a
      0029F7 A6 05            [24]  483 	mov	@r0,ar5
      0029F9 08               [12]  484 	inc	r0
      0029FA A6 06            [24]  485 	mov	@r0,ar6
      0029FC 08               [12]  486 	inc	r0
      0029FD A6 07            [24]  487 	mov	@r0,ar7
                                    488 ;	calc.c:90: if (!ctx->acc_valid) {
      0029FF E5 08            [12]  489 	mov	a,_bp
      002A01 24 08            [12]  490 	add	a,#0x08
      002A03 F8               [12]  491 	mov	r0,a
      002A04 74 06            [12]  492 	mov	a,#0x06
      002A06 26               [12]  493 	add	a,@r0
      002A07 FA               [12]  494 	mov	r2,a
      002A08 E4               [12]  495 	clr	a
      002A09 08               [12]  496 	inc	r0
      002A0A 36               [12]  497 	addc	a,@r0
      002A0B FB               [12]  498 	mov	r3,a
      002A0C 08               [12]  499 	inc	r0
      002A0D 86 04            [24]  500 	mov	ar4,@r0
      002A0F 8A 82            [24]  501 	mov	dpl,r2
      002A11 8B 83            [24]  502 	mov	dph,r3
      002A13 8C F0            [24]  503 	mov	b,r4
      002A15 12 4C E3         [24]  504 	lcall	__gptrget
      002A18 70 31            [24]  505 	jnz	00102$
                                    506 ;	calc.c:91: ctx->acc_valid = 1;
      002A1A 8A 82            [24]  507 	mov	dpl,r2
      002A1C 8B 83            [24]  508 	mov	dph,r3
      002A1E 8C F0            [24]  509 	mov	b,r4
      002A20 74 01            [12]  510 	mov	a,#0x01
      002A22 12 48 68         [24]  511 	lcall	__gptrput
                                    512 ;	calc.c:92: ctx->acc = 0l;
      002A25 E5 08            [12]  513 	mov	a,_bp
      002A27 24 08            [12]  514 	add	a,#0x08
      002A29 F8               [12]  515 	mov	r0,a
      002A2A 74 02            [12]  516 	mov	a,#0x02
      002A2C 26               [12]  517 	add	a,@r0
      002A2D FA               [12]  518 	mov	r2,a
      002A2E E4               [12]  519 	clr	a
      002A2F 08               [12]  520 	inc	r0
      002A30 36               [12]  521 	addc	a,@r0
      002A31 FB               [12]  522 	mov	r3,a
      002A32 08               [12]  523 	inc	r0
      002A33 86 04            [24]  524 	mov	ar4,@r0
      002A35 8A 82            [24]  525 	mov	dpl,r2
      002A37 8B 83            [24]  526 	mov	dph,r3
      002A39 8C F0            [24]  527 	mov	b,r4
      002A3B E4               [12]  528 	clr	a
      002A3C 12 48 68         [24]  529 	lcall	__gptrput
      002A3F A3               [24]  530 	inc	dptr
      002A40 12 48 68         [24]  531 	lcall	__gptrput
      002A43 A3               [24]  532 	inc	dptr
      002A44 12 48 68         [24]  533 	lcall	__gptrput
      002A47 A3               [24]  534 	inc	dptr
      002A48 12 48 68         [24]  535 	lcall	__gptrput
      002A4B                        536 00102$:
                                    537 ;	calc.c:95: d = strtol(ctx->digit, NULL, ctx->base);
      002A4B E5 08            [12]  538 	mov	a,_bp
      002A4D 24 08            [12]  539 	add	a,#0x08
      002A4F F8               [12]  540 	mov	r0,a
      002A50 86 82            [24]  541 	mov	dpl,@r0
      002A52 08               [12]  542 	inc	r0
      002A53 86 83            [24]  543 	mov	dph,@r0
      002A55 08               [12]  544 	inc	r0
      002A56 86 F0            [24]  545 	mov	b,@r0
      002A58 12 4C E3         [24]  546 	lcall	__gptrget
      002A5B FB               [12]  547 	mov	r3,a
      002A5C A3               [24]  548 	inc	dptr
      002A5D 12 4C E3         [24]  549 	lcall	__gptrget
      002A60 FC               [12]  550 	mov	r4,a
      002A61 E5 08            [12]  551 	mov	a,_bp
      002A63 24 08            [12]  552 	add	a,#0x08
      002A65 F8               [12]  553 	mov	r0,a
      002A66 74 07            [12]  554 	mov	a,#0x07
      002A68 26               [12]  555 	add	a,@r0
      002A69 FA               [12]  556 	mov	r2,a
      002A6A E4               [12]  557 	clr	a
      002A6B 08               [12]  558 	inc	r0
      002A6C 36               [12]  559 	addc	a,@r0
      002A6D FE               [12]  560 	mov	r6,a
      002A6E 08               [12]  561 	inc	r0
      002A6F 86 07            [24]  562 	mov	ar7,@r0
      002A71 C0 03            [24]  563 	push	ar3
      002A73 C0 04            [24]  564 	push	ar4
      002A75 E4               [12]  565 	clr	a
      002A76 C0 E0            [24]  566 	push	acc
      002A78 C0 E0            [24]  567 	push	acc
      002A7A C0 E0            [24]  568 	push	acc
      002A7C 8A 82            [24]  569 	mov	dpl,r2
      002A7E 8E 83            [24]  570 	mov	dph,r6
      002A80 8F F0            [24]  571 	mov	b,r7
      002A82 12 46 2A         [24]  572 	lcall	_strtol
      002A85 C8               [12]  573 	xch	a,r0
      002A86 E5 08            [12]  574 	mov	a,_bp
      002A88 24 0B            [12]  575 	add	a,#0x0b
      002A8A C8               [12]  576 	xch	a,r0
      002A8B A6 82            [24]  577 	mov	@r0,dpl
      002A8D 08               [12]  578 	inc	r0
      002A8E A6 83            [24]  579 	mov	@r0,dph
      002A90 08               [12]  580 	inc	r0
      002A91 A6 F0            [24]  581 	mov	@r0,b
      002A93 08               [12]  582 	inc	r0
      002A94 F6               [12]  583 	mov	@r0,a
      002A95 E5 81            [12]  584 	mov	a,sp
      002A97 24 FB            [12]  585 	add	a,#0xfb
      002A99 F5 81            [12]  586 	mov	sp,a
                                    587 ;	calc.c:96: ctx->acc = ctx->acc * (long)ctx->base + d;
      002A9B E5 08            [12]  588 	mov	a,_bp
      002A9D 24 08            [12]  589 	add	a,#0x08
      002A9F F8               [12]  590 	mov	r0,a
      002AA0 A9 08            [24]  591 	mov	r1,_bp
      002AA2 09               [12]  592 	inc	r1
      002AA3 74 02            [12]  593 	mov	a,#0x02
      002AA5 26               [12]  594 	add	a,@r0
      002AA6 F7               [12]  595 	mov	@r1,a
      002AA7 E4               [12]  596 	clr	a
      002AA8 08               [12]  597 	inc	r0
      002AA9 36               [12]  598 	addc	a,@r0
      002AAA 09               [12]  599 	inc	r1
      002AAB F7               [12]  600 	mov	@r1,a
      002AAC 08               [12]  601 	inc	r0
      002AAD 09               [12]  602 	inc	r1
      002AAE E6               [12]  603 	mov	a,@r0
      002AAF F7               [12]  604 	mov	@r1,a
      002AB0 A8 08            [24]  605 	mov	r0,_bp
      002AB2 08               [12]  606 	inc	r0
      002AB3 86 82            [24]  607 	mov	dpl,@r0
      002AB5 08               [12]  608 	inc	r0
      002AB6 86 83            [24]  609 	mov	dph,@r0
      002AB8 08               [12]  610 	inc	r0
      002AB9 86 F0            [24]  611 	mov	b,@r0
      002ABB E5 08            [12]  612 	mov	a,_bp
      002ABD 24 04            [12]  613 	add	a,#0x04
      002ABF F9               [12]  614 	mov	r1,a
      002AC0 12 4C E3         [24]  615 	lcall	__gptrget
      002AC3 F7               [12]  616 	mov	@r1,a
      002AC4 A3               [24]  617 	inc	dptr
      002AC5 12 4C E3         [24]  618 	lcall	__gptrget
      002AC8 09               [12]  619 	inc	r1
      002AC9 F7               [12]  620 	mov	@r1,a
      002ACA A3               [24]  621 	inc	dptr
      002ACB 12 4C E3         [24]  622 	lcall	__gptrget
      002ACE 09               [12]  623 	inc	r1
      002ACF F7               [12]  624 	mov	@r1,a
      002AD0 A3               [24]  625 	inc	dptr
      002AD1 12 4C E3         [24]  626 	lcall	__gptrget
      002AD4 09               [12]  627 	inc	r1
      002AD5 F7               [12]  628 	mov	@r1,a
      002AD6 E5 08            [12]  629 	mov	a,_bp
      002AD8 24 08            [12]  630 	add	a,#0x08
      002ADA F8               [12]  631 	mov	r0,a
      002ADB 86 82            [24]  632 	mov	dpl,@r0
      002ADD 08               [12]  633 	inc	r0
      002ADE 86 83            [24]  634 	mov	dph,@r0
      002AE0 08               [12]  635 	inc	r0
      002AE1 86 F0            [24]  636 	mov	b,@r0
      002AE3 12 4C E3         [24]  637 	lcall	__gptrget
      002AE6 FA               [12]  638 	mov	r2,a
      002AE7 A3               [24]  639 	inc	dptr
      002AE8 12 4C E3         [24]  640 	lcall	__gptrget
      002AEB FB               [12]  641 	mov	r3,a
      002AEC 33               [12]  642 	rlc	a
      002AED 95 E0            [12]  643 	subb	a,acc
      002AEF FE               [12]  644 	mov	r6,a
      002AF0 FF               [12]  645 	mov	r7,a
      002AF1 C0 02            [24]  646 	push	ar2
      002AF3 C0 03            [24]  647 	push	ar3
      002AF5 C0 06            [24]  648 	push	ar6
      002AF7 C0 07            [24]  649 	push	ar7
      002AF9 E5 08            [12]  650 	mov	a,_bp
      002AFB 24 04            [12]  651 	add	a,#0x04
      002AFD F8               [12]  652 	mov	r0,a
      002AFE 86 82            [24]  653 	mov	dpl,@r0
      002B00 08               [12]  654 	inc	r0
      002B01 86 83            [24]  655 	mov	dph,@r0
      002B03 08               [12]  656 	inc	r0
      002B04 86 F0            [24]  657 	mov	b,@r0
      002B06 08               [12]  658 	inc	r0
      002B07 E6               [12]  659 	mov	a,@r0
      002B08 12 50 DC         [24]  660 	lcall	__mullong
      002B0B AC 82            [24]  661 	mov	r4,dpl
      002B0D AD 83            [24]  662 	mov	r5,dph
      002B0F AE F0            [24]  663 	mov	r6,b
      002B11 FF               [12]  664 	mov	r7,a
      002B12 E5 81            [12]  665 	mov	a,sp
      002B14 24 FC            [12]  666 	add	a,#0xfc
      002B16 F5 81            [12]  667 	mov	sp,a
      002B18 E5 08            [12]  668 	mov	a,_bp
      002B1A 24 0B            [12]  669 	add	a,#0x0b
      002B1C F8               [12]  670 	mov	r0,a
      002B1D E6               [12]  671 	mov	a,@r0
      002B1E 2C               [12]  672 	add	a,r4
      002B1F FC               [12]  673 	mov	r4,a
      002B20 08               [12]  674 	inc	r0
      002B21 E6               [12]  675 	mov	a,@r0
      002B22 3D               [12]  676 	addc	a,r5
      002B23 FD               [12]  677 	mov	r5,a
      002B24 08               [12]  678 	inc	r0
      002B25 E6               [12]  679 	mov	a,@r0
      002B26 3E               [12]  680 	addc	a,r6
      002B27 FE               [12]  681 	mov	r6,a
      002B28 08               [12]  682 	inc	r0
      002B29 E6               [12]  683 	mov	a,@r0
      002B2A 3F               [12]  684 	addc	a,r7
      002B2B FF               [12]  685 	mov	r7,a
      002B2C A8 08            [24]  686 	mov	r0,_bp
      002B2E 08               [12]  687 	inc	r0
      002B2F 86 82            [24]  688 	mov	dpl,@r0
      002B31 08               [12]  689 	inc	r0
      002B32 86 83            [24]  690 	mov	dph,@r0
      002B34 08               [12]  691 	inc	r0
      002B35 86 F0            [24]  692 	mov	b,@r0
      002B37 EC               [12]  693 	mov	a,r4
      002B38 12 48 68         [24]  694 	lcall	__gptrput
      002B3B A3               [24]  695 	inc	dptr
      002B3C ED               [12]  696 	mov	a,r5
      002B3D 12 48 68         [24]  697 	lcall	__gptrput
      002B40 A3               [24]  698 	inc	dptr
      002B41 EE               [12]  699 	mov	a,r6
      002B42 12 48 68         [24]  700 	lcall	__gptrput
      002B45 A3               [24]  701 	inc	dptr
      002B46 EF               [12]  702 	mov	a,r7
      002B47 12 48 68         [24]  703 	lcall	__gptrput
                                    704 ;	calc.c:98: return 1;
      002B4A 90 00 01         [24]  705 	mov	dptr,#0x0001
                                    706 ;	calc.c:99: }
      002B4D 85 08 81         [24]  707 	mov	sp,_bp
      002B50 D0 08            [24]  708 	pop	_bp
      002B52 22               [24]  709 	ret
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'dump_pop'
                                    712 ;------------------------------------------------------------
                                    713 ;delta                     Allocated to stack - _bp -5
                                    714 ;_ctx                      Allocated to registers r5 r6 r7 
                                    715 ;ctx                       Allocated to stack - _bp +5
                                    716 ;d                         Allocated to stack - _bp +8
                                    717 ;r                         Allocated to stack - _bp +2
                                    718 ;__1310720001              Allocated to registers 
                                    719 ;s                         Allocated to registers r5 r6 r7 
                                    720 ;__1966080003              Allocated to registers 
                                    721 ;s                         Allocated to registers r4 r5 r6 
                                    722 ;sloc0                     Allocated to stack - _bp +1
                                    723 ;sloc1                     Allocated to stack - _bp +2
                                    724 ;------------------------------------------------------------
                                    725 ;	calc.c:101: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    726 ;	-----------------------------------------
                                    727 ;	 function dump_pop
                                    728 ;	-----------------------------------------
      002B53                        729 _dump_pop:
      002B53 C0 08            [24]  730 	push	_bp
      002B55 E5 81            [12]  731 	mov	a,sp
      002B57 F5 08            [12]  732 	mov	_bp,a
      002B59 24 0B            [12]  733 	add	a,#0x0b
      002B5B F5 81            [12]  734 	mov	sp,a
      002B5D AD 82            [24]  735 	mov	r5,dpl
      002B5F AE 83            [24]  736 	mov	r6,dph
      002B61 AF F0            [24]  737 	mov	r7,b
                                    738 ;	calc.c:102: struct ctx *ctx = (struct ctx *)_ctx;
      002B63 E5 08            [12]  739 	mov	a,_bp
      002B65 24 05            [12]  740 	add	a,#0x05
      002B67 F8               [12]  741 	mov	r0,a
      002B68 A6 05            [24]  742 	mov	@r0,ar5
      002B6A 08               [12]  743 	inc	r0
      002B6B A6 06            [24]  744 	mov	@r0,ar6
      002B6D 08               [12]  745 	inc	r0
      002B6E A6 07            [24]  746 	mov	@r0,ar7
                                    747 ;	calc.c:106: if (delta->event == EVENT_TERM) printstr("\r\n");
      002B70 E5 08            [12]  748 	mov	a,_bp
      002B72 24 FB            [12]  749 	add	a,#0xfb
      002B74 F8               [12]  750 	mov	r0,a
      002B75 86 02            [24]  751 	mov	ar2,@r0
      002B77 08               [12]  752 	inc	r0
      002B78 86 03            [24]  753 	mov	ar3,@r0
      002B7A 08               [12]  754 	inc	r0
      002B7B 86 04            [24]  755 	mov	ar4,@r0
      002B7D 74 02            [12]  756 	mov	a,#0x02
      002B7F 2A               [12]  757 	add	a,r2
      002B80 FA               [12]  758 	mov	r2,a
      002B81 E4               [12]  759 	clr	a
      002B82 3B               [12]  760 	addc	a,r3
      002B83 FB               [12]  761 	mov	r3,a
      002B84 8A 82            [24]  762 	mov	dpl,r2
      002B86 8B 83            [24]  763 	mov	dph,r3
      002B88 8C F0            [24]  764 	mov	b,r4
      002B8A 12 4C E3         [24]  765 	lcall	__gptrget
      002B8D FE               [12]  766 	mov	r6,a
      002B8E A3               [24]  767 	inc	dptr
      002B8F 12 4C E3         [24]  768 	lcall	__gptrget
      002B92 FF               [12]  769 	mov	r7,a
      002B93 BE 07 3D         [24]  770 	cjne	r6,#0x07,00102$
      002B96 BF 00 3A         [24]  771 	cjne	r7,#0x00,00102$
      002B99 7D 64            [12]  772 	mov	r5,#___str_0
      002B9B 7E 65            [12]  773 	mov	r6,#(___str_0 >> 8)
      002B9D 7F 80            [12]  774 	mov	r7,#0x80
                                    775 ;	calc.c:50: return;
      002B9F                        776 00116$:
                                    777 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002B9F 8D 82            [24]  778 	mov	dpl,r5
      002BA1 8E 83            [24]  779 	mov	dph,r6
      002BA3 8F F0            [24]  780 	mov	b,r7
      002BA5 A8 08            [24]  781 	mov	r0,_bp
      002BA7 08               [12]  782 	inc	r0
      002BA8 12 4C E3         [24]  783 	lcall	__gptrget
      002BAB F6               [12]  784 	mov	@r0,a
      002BAC A8 08            [24]  785 	mov	r0,_bp
      002BAE 08               [12]  786 	inc	r0
      002BAF E6               [12]  787 	mov	a,@r0
      002BB0 60 21            [24]  788 	jz	00102$
      002BB2 C0 02            [24]  789 	push	ar2
      002BB4 C0 03            [24]  790 	push	ar3
      002BB6 C0 04            [24]  791 	push	ar4
      002BB8 A8 08            [24]  792 	mov	r0,_bp
      002BBA 08               [12]  793 	inc	r0
      002BBB 86 03            [24]  794 	mov	ar3,@r0
      002BBD 7C 00            [12]  795 	mov	r4,#0x00
      002BBF 8B 82            [24]  796 	mov	dpl,r3
      002BC1 8C 83            [24]  797 	mov	dph,r4
      002BC3 12 29 C0         [24]  798 	lcall	_putchar
      002BC6 0D               [12]  799 	inc	r5
      002BC7 BD 00 01         [24]  800 	cjne	r5,#0x00,00170$
      002BCA 0E               [12]  801 	inc	r6
      002BCB                        802 00170$:
      002BCB D0 04            [24]  803 	pop	ar4
      002BCD D0 03            [24]  804 	pop	ar3
      002BCF D0 02            [24]  805 	pop	ar2
                                    806 ;	calc.c:106: if (delta->event == EVENT_TERM) printstr("\r\n");
      002BD1 80 CC            [24]  807 	sjmp	00116$
      002BD3                        808 00102$:
                                    809 ;	calc.c:108: r = stack_pop(&ctx->s, &d);
      002BD3 C0 02            [24]  810 	push	ar2
      002BD5 C0 03            [24]  811 	push	ar3
      002BD7 C0 04            [24]  812 	push	ar4
      002BD9 E5 08            [12]  813 	mov	a,_bp
      002BDB 24 08            [12]  814 	add	a,#0x08
      002BDD FF               [12]  815 	mov	r7,a
      002BDE A8 08            [24]  816 	mov	r0,_bp
      002BE0 08               [12]  817 	inc	r0
      002BE1 08               [12]  818 	inc	r0
      002BE2 A6 07            [24]  819 	mov	@r0,ar7
      002BE4 08               [12]  820 	inc	r0
      002BE5 76 00            [12]  821 	mov	@r0,#0x00
      002BE7 08               [12]  822 	inc	r0
      002BE8 76 40            [12]  823 	mov	@r0,#0x40
      002BEA E5 08            [12]  824 	mov	a,_bp
      002BEC 24 05            [12]  825 	add	a,#0x05
      002BEE F8               [12]  826 	mov	r0,a
      002BEF 74 09            [12]  827 	mov	a,#0x09
      002BF1 26               [12]  828 	add	a,@r0
      002BF2 FA               [12]  829 	mov	r2,a
      002BF3 E4               [12]  830 	clr	a
      002BF4 08               [12]  831 	inc	r0
      002BF5 36               [12]  832 	addc	a,@r0
      002BF6 FB               [12]  833 	mov	r3,a
      002BF7 08               [12]  834 	inc	r0
      002BF8 86 06            [24]  835 	mov	ar6,@r0
      002BFA C0 07            [24]  836 	push	ar7
      002BFC C0 04            [24]  837 	push	ar4
      002BFE C0 03            [24]  838 	push	ar3
      002C00 C0 02            [24]  839 	push	ar2
      002C02 A8 08            [24]  840 	mov	r0,_bp
      002C04 08               [12]  841 	inc	r0
      002C05 08               [12]  842 	inc	r0
      002C06 E6               [12]  843 	mov	a,@r0
      002C07 C0 E0            [24]  844 	push	acc
      002C09 08               [12]  845 	inc	r0
      002C0A E6               [12]  846 	mov	a,@r0
      002C0B C0 E0            [24]  847 	push	acc
      002C0D 08               [12]  848 	inc	r0
      002C0E E6               [12]  849 	mov	a,@r0
      002C0F C0 E0            [24]  850 	push	acc
      002C11 8A 82            [24]  851 	mov	dpl,r2
      002C13 8B 83            [24]  852 	mov	dph,r3
      002C15 8E F0            [24]  853 	mov	b,r6
      002C17 12 27 7F         [24]  854 	lcall	_stack_pop
      002C1A AD 82            [24]  855 	mov	r5,dpl
      002C1C AE 83            [24]  856 	mov	r6,dph
      002C1E 15 81            [12]  857 	dec	sp
      002C20 15 81            [12]  858 	dec	sp
      002C22 15 81            [12]  859 	dec	sp
      002C24 D0 02            [24]  860 	pop	ar2
      002C26 D0 03            [24]  861 	pop	ar3
      002C28 D0 04            [24]  862 	pop	ar4
      002C2A D0 07            [24]  863 	pop	ar7
      002C2C A8 08            [24]  864 	mov	r0,_bp
      002C2E 08               [12]  865 	inc	r0
      002C2F 08               [12]  866 	inc	r0
      002C30 A6 05            [24]  867 	mov	@r0,ar5
      002C32 08               [12]  868 	inc	r0
      002C33 A6 06            [24]  869 	mov	@r0,ar6
                                    870 ;	calc.c:109: if (!r) {
      002C35 D0 04            [24]  871 	pop	ar4
      002C37 D0 03            [24]  872 	pop	ar3
      002C39 D0 02            [24]  873 	pop	ar2
      002C3B ED               [12]  874 	mov	a,r5
      002C3C 4E               [12]  875 	orl	a,r6
      002C3D 70 3D            [24]  876 	jnz	00134$
                                    877 ;	calc.c:110: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002C3F 8A 82            [24]  878 	mov	dpl,r2
      002C41 8B 83            [24]  879 	mov	dph,r3
      002C43 8C F0            [24]  880 	mov	b,r4
      002C45 12 4C E3         [24]  881 	lcall	__gptrget
      002C48 FA               [12]  882 	mov	r2,a
      002C49 A3               [24]  883 	inc	dptr
      002C4A 12 4C E3         [24]  884 	lcall	__gptrget
      002C4D FB               [12]  885 	mov	r3,a
      002C4E BA 07 06         [24]  886 	cjne	r2,#0x07,00172$
      002C51 BB 00 03         [24]  887 	cjne	r3,#0x00,00172$
      002C54 02 2D 2C         [24]  888 	ljmp	00110$
      002C57                        889 00172$:
      002C57 7C 67            [12]  890 	mov	r4,#___str_1
      002C59 7D 65            [12]  891 	mov	r5,#(___str_1 >> 8)
      002C5B 7E 80            [12]  892 	mov	r6,#0x80
                                    893 ;	calc.c:50: return;
      002C5D                        894 00119$:
                                    895 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002C5D 8C 82            [24]  896 	mov	dpl,r4
      002C5F 8D 83            [24]  897 	mov	dph,r5
      002C61 8E F0            [24]  898 	mov	b,r6
      002C63 12 4C E3         [24]  899 	lcall	__gptrget
      002C66 FB               [12]  900 	mov	r3,a
      002C67 70 03            [24]  901 	jnz	00173$
      002C69 02 2D 2C         [24]  902 	ljmp	00110$
      002C6C                        903 00173$:
      002C6C 7A 00            [12]  904 	mov	r2,#0x00
      002C6E 8B 82            [24]  905 	mov	dpl,r3
      002C70 8A 83            [24]  906 	mov	dph,r2
      002C72 12 29 C0         [24]  907 	lcall	_putchar
      002C75 0C               [12]  908 	inc	r4
                                    909 ;	calc.c:111: } else while (r > 0) {
      002C76 BC 00 E4         [24]  910 	cjne	r4,#0x00,00119$
      002C79 0D               [12]  911 	inc	r5
      002C7A 80 E1            [24]  912 	sjmp	00119$
      002C7C                        913 00134$:
      002C7C                        914 00105$:
      002C7C A8 08            [24]  915 	mov	r0,_bp
      002C7E 08               [12]  916 	inc	r0
      002C7F 08               [12]  917 	inc	r0
      002C80 C3               [12]  918 	clr	c
      002C81 E4               [12]  919 	clr	a
      002C82 96               [12]  920 	subb	a,@r0
      002C83 74 80            [12]  921 	mov	a,#(0x00 ^ 0x80)
      002C85 08               [12]  922 	inc	r0
      002C86 86 F0            [24]  923 	mov	b,@r0
      002C88 63 F0 80         [24]  924 	xrl	b,#0x80
      002C8B 95 F0            [12]  925 	subb	a,b
      002C8D 40 03            [24]  926 	jc	00175$
      002C8F 02 2D 2C         [24]  927 	ljmp	00110$
      002C92                        928 00175$:
                                    929 ;	calc.c:112: printf((ctx->base == 16l) ? hexV : decV, d);
      002C92 E5 08            [12]  930 	mov	a,_bp
      002C94 24 05            [12]  931 	add	a,#0x05
      002C96 F8               [12]  932 	mov	r0,a
      002C97 86 82            [24]  933 	mov	dpl,@r0
      002C99 08               [12]  934 	inc	r0
      002C9A 86 83            [24]  935 	mov	dph,@r0
      002C9C 08               [12]  936 	inc	r0
      002C9D 86 F0            [24]  937 	mov	b,@r0
      002C9F 12 4C E3         [24]  938 	lcall	__gptrget
      002CA2 FD               [12]  939 	mov	r5,a
      002CA3 A3               [24]  940 	inc	dptr
      002CA4 12 4C E3         [24]  941 	lcall	__gptrget
      002CA7 FE               [12]  942 	mov	r6,a
      002CA8 BD 10 10         [24]  943 	cjne	r5,#0x10,00123$
      002CAB BE 00 0D         [24]  944 	cjne	r6,#0x00,00123$
      002CAE 90 A0 2D         [24]  945 	mov	dptr,#_hexV
      002CB1 E0               [24]  946 	movx	a,@dptr
      002CB2 FC               [12]  947 	mov	r4,a
      002CB3 A3               [24]  948 	inc	dptr
      002CB4 E0               [24]  949 	movx	a,@dptr
      002CB5 FD               [12]  950 	mov	r5,a
      002CB6 A3               [24]  951 	inc	dptr
      002CB7 E0               [24]  952 	movx	a,@dptr
      002CB8 FE               [12]  953 	mov	r6,a
      002CB9 80 0B            [24]  954 	sjmp	00124$
      002CBB                        955 00123$:
      002CBB 90 A0 30         [24]  956 	mov	dptr,#_decV
      002CBE E0               [24]  957 	movx	a,@dptr
      002CBF FC               [12]  958 	mov	r4,a
      002CC0 A3               [24]  959 	inc	dptr
      002CC1 E0               [24]  960 	movx	a,@dptr
      002CC2 FD               [12]  961 	mov	r5,a
      002CC3 A3               [24]  962 	inc	dptr
      002CC4 E0               [24]  963 	movx	a,@dptr
      002CC5 FE               [12]  964 	mov	r6,a
      002CC6                        965 00124$:
      002CC6 C0 07            [24]  966 	push	ar7
      002CC8 E5 08            [12]  967 	mov	a,_bp
      002CCA 24 08            [12]  968 	add	a,#0x08
      002CCC F8               [12]  969 	mov	r0,a
      002CCD E6               [12]  970 	mov	a,@r0
      002CCE C0 E0            [24]  971 	push	acc
      002CD0 08               [12]  972 	inc	r0
      002CD1 E6               [12]  973 	mov	a,@r0
      002CD2 C0 E0            [24]  974 	push	acc
      002CD4 08               [12]  975 	inc	r0
      002CD5 E6               [12]  976 	mov	a,@r0
      002CD6 C0 E0            [24]  977 	push	acc
      002CD8 08               [12]  978 	inc	r0
      002CD9 E6               [12]  979 	mov	a,@r0
      002CDA C0 E0            [24]  980 	push	acc
      002CDC C0 04            [24]  981 	push	ar4
      002CDE C0 05            [24]  982 	push	ar5
      002CE0 C0 06            [24]  983 	push	ar6
      002CE2 12 4C AA         [24]  984 	lcall	_printf
      002CE5 E5 81            [12]  985 	mov	a,sp
      002CE7 24 F9            [12]  986 	add	a,#0xf9
      002CE9 F5 81            [12]  987 	mov	sp,a
      002CEB D0 07            [24]  988 	pop	ar7
                                    989 ;	calc.c:113: r = stack_pop(&ctx->s, &d);
      002CED 8F 04            [24]  990 	mov	ar4,r7
      002CEF 7D 00            [12]  991 	mov	r5,#0x00
      002CF1 7E 40            [12]  992 	mov	r6,#0x40
      002CF3 C0 07            [24]  993 	push	ar7
      002CF5 E5 08            [12]  994 	mov	a,_bp
      002CF7 24 05            [12]  995 	add	a,#0x05
      002CF9 F8               [12]  996 	mov	r0,a
      002CFA 74 09            [12]  997 	mov	a,#0x09
      002CFC 26               [12]  998 	add	a,@r0
      002CFD FA               [12]  999 	mov	r2,a
      002CFE E4               [12] 1000 	clr	a
      002CFF 08               [12] 1001 	inc	r0
      002D00 36               [12] 1002 	addc	a,@r0
      002D01 FB               [12] 1003 	mov	r3,a
      002D02 08               [12] 1004 	inc	r0
      002D03 86 07            [24] 1005 	mov	ar7,@r0
      002D05 C0 04            [24] 1006 	push	ar4
      002D07 C0 05            [24] 1007 	push	ar5
      002D09 C0 06            [24] 1008 	push	ar6
      002D0B 8A 82            [24] 1009 	mov	dpl,r2
      002D0D 8B 83            [24] 1010 	mov	dph,r3
      002D0F 8F F0            [24] 1011 	mov	b,r7
      002D11 12 27 7F         [24] 1012 	lcall	_stack_pop
      002D14 AE 82            [24] 1013 	mov	r6,dpl
      002D16 AF 83            [24] 1014 	mov	r7,dph
      002D18 15 81            [12] 1015 	dec	sp
      002D1A 15 81            [12] 1016 	dec	sp
      002D1C 15 81            [12] 1017 	dec	sp
      002D1E A8 08            [24] 1018 	mov	r0,_bp
      002D20 08               [12] 1019 	inc	r0
      002D21 08               [12] 1020 	inc	r0
      002D22 A6 06            [24] 1021 	mov	@r0,ar6
      002D24 08               [12] 1022 	inc	r0
      002D25 A6 07            [24] 1023 	mov	@r0,ar7
      002D27 D0 07            [24] 1024 	pop	ar7
      002D29 02 2C 7C         [24] 1025 	ljmp	00105$
      002D2C                       1026 00110$:
                                   1027 ;	calc.c:116: return 1;
      002D2C 90 00 01         [24] 1028 	mov	dptr,#0x0001
                                   1029 ;	calc.c:117: }
      002D2F 85 08 81         [24] 1030 	mov	sp,_bp
      002D32 D0 08            [24] 1031 	pop	_bp
      002D34 22               [24] 1032 	ret
                                   1033 ;------------------------------------------------------------
                                   1034 ;Allocation info for local variables in function 'dump_peek'
                                   1035 ;------------------------------------------------------------
                                   1036 ;d                         Allocated to stack - _bp -6
                                   1037 ;_ctx                      Allocated to registers r5 r6 r7 
                                   1038 ;ctx                       Allocated to registers r5 r6 r7 
                                   1039 ;------------------------------------------------------------
                                   1040 ;	calc.c:119: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function dump_peek
                                   1043 ;	-----------------------------------------
      002D35                       1044 _dump_peek:
      002D35 C0 08            [24] 1045 	push	_bp
      002D37 85 81 08         [24] 1046 	mov	_bp,sp
                                   1047 ;	calc.c:120: struct ctx *ctx = (struct ctx *)_ctx;
                                   1048 ;	calc.c:122: printf((ctx->base == 16l) ? hexP : decP, d);
      002D3A 12 4C E3         [24] 1049 	lcall	__gptrget
      002D3D FD               [12] 1050 	mov	r5,a
      002D3E A3               [24] 1051 	inc	dptr
      002D3F 12 4C E3         [24] 1052 	lcall	__gptrget
      002D42 FE               [12] 1053 	mov	r6,a
      002D43 BD 10 10         [24] 1054 	cjne	r5,#0x10,00103$
      002D46 BE 00 0D         [24] 1055 	cjne	r6,#0x00,00103$
      002D49 90 A0 21         [24] 1056 	mov	dptr,#_hexP
      002D4C E0               [24] 1057 	movx	a,@dptr
      002D4D FD               [12] 1058 	mov	r5,a
      002D4E A3               [24] 1059 	inc	dptr
      002D4F E0               [24] 1060 	movx	a,@dptr
      002D50 FE               [12] 1061 	mov	r6,a
      002D51 A3               [24] 1062 	inc	dptr
      002D52 E0               [24] 1063 	movx	a,@dptr
      002D53 FF               [12] 1064 	mov	r7,a
      002D54 80 0B            [24] 1065 	sjmp	00104$
      002D56                       1066 00103$:
      002D56 90 A0 24         [24] 1067 	mov	dptr,#_decP
      002D59 E0               [24] 1068 	movx	a,@dptr
      002D5A FD               [12] 1069 	mov	r5,a
      002D5B A3               [24] 1070 	inc	dptr
      002D5C E0               [24] 1071 	movx	a,@dptr
      002D5D FE               [12] 1072 	mov	r6,a
      002D5E A3               [24] 1073 	inc	dptr
      002D5F E0               [24] 1074 	movx	a,@dptr
      002D60 FF               [12] 1075 	mov	r7,a
      002D61                       1076 00104$:
      002D61 E5 08            [12] 1077 	mov	a,_bp
      002D63 24 FA            [12] 1078 	add	a,#0xfa
      002D65 F8               [12] 1079 	mov	r0,a
      002D66 E6               [12] 1080 	mov	a,@r0
      002D67 C0 E0            [24] 1081 	push	acc
      002D69 08               [12] 1082 	inc	r0
      002D6A E6               [12] 1083 	mov	a,@r0
      002D6B C0 E0            [24] 1084 	push	acc
      002D6D 08               [12] 1085 	inc	r0
      002D6E E6               [12] 1086 	mov	a,@r0
      002D6F C0 E0            [24] 1087 	push	acc
      002D71 08               [12] 1088 	inc	r0
      002D72 E6               [12] 1089 	mov	a,@r0
      002D73 C0 E0            [24] 1090 	push	acc
      002D75 C0 05            [24] 1091 	push	ar5
      002D77 C0 06            [24] 1092 	push	ar6
      002D79 C0 07            [24] 1093 	push	ar7
      002D7B 12 4C AA         [24] 1094 	lcall	_printf
      002D7E E5 81            [12] 1095 	mov	a,sp
      002D80 24 F9            [12] 1096 	add	a,#0xf9
      002D82 F5 81            [12] 1097 	mov	sp,a
                                   1098 ;	calc.c:124: return 1;
      002D84 90 00 01         [24] 1099 	mov	dptr,#0x0001
                                   1100 ;	calc.c:125: }
      002D87 D0 08            [24] 1101 	pop	_bp
      002D89 22               [24] 1102 	ret
                                   1103 ;------------------------------------------------------------
                                   1104 ;Allocation info for local variables in function 'operator'
                                   1105 ;------------------------------------------------------------
                                   1106 ;delta                     Allocated to stack - _bp -5
                                   1107 ;_ctx                      Allocated to stack - _bp +1
                                   1108 ;ctx                       Allocated to stack - _bp +4
                                   1109 ;d0                        Allocated to stack - _bp +7
                                   1110 ;d1                        Allocated to stack - _bp +11
                                   1111 ;__1966080005              Allocated to registers 
                                   1112 ;s                         Allocated to registers r5 r4 r3 
                                   1113 ;__1966080007              Allocated to registers 
                                   1114 ;s                         Allocated to registers r5 r6 r7 
                                   1115 ;__1966080009              Allocated to registers 
                                   1116 ;s                         Allocated to registers r5 r6 r7 
                                   1117 ;__1966080011              Allocated to registers 
                                   1118 ;s                         Allocated to registers r5 r6 r7 
                                   1119 ;__1966080013              Allocated to registers 
                                   1120 ;s                         Allocated to registers r5 r6 r7 
                                   1121 ;__1966080015              Allocated to registers 
                                   1122 ;s                         Allocated to registers r5 r6 r7 
                                   1123 ;__1966080017              Allocated to registers 
                                   1124 ;s                         Allocated to registers r5 r6 r7 
                                   1125 ;__1966080019              Allocated to registers 
                                   1126 ;s                         Allocated to registers r5 r6 r7 
                                   1127 ;__2621440021              Allocated to registers 
                                   1128 ;s                         Allocated to registers r5 r6 r7 
                                   1129 ;__1966080023              Allocated to registers 
                                   1130 ;s                         Allocated to registers r5 r6 r7 
                                   1131 ;__2621440025              Allocated to registers 
                                   1132 ;s                         Allocated to registers r5 r6 r7 
                                   1133 ;__1966080027              Allocated to registers 
                                   1134 ;s                         Allocated to registers r5 r6 r7 
                                   1135 ;__2621440029              Allocated to registers 
                                   1136 ;s                         Allocated to registers r5 r6 r7 
                                   1137 ;__1966080031              Allocated to registers 
                                   1138 ;s                         Allocated to registers r5 r6 r7 
                                   1139 ;__2621440033              Allocated to registers 
                                   1140 ;s                         Allocated to registers r5 r6 r7 
                                   1141 ;__1966080035              Allocated to registers 
                                   1142 ;s                         Allocated to registers r5 r6 r7 
                                   1143 ;__2621440037              Allocated to registers 
                                   1144 ;s                         Allocated to registers r5 r6 r7 
                                   1145 ;__2621440039              Allocated to registers 
                                   1146 ;s                         Allocated to registers r5 r6 r7 
                                   1147 ;__1966080041              Allocated to registers 
                                   1148 ;s                         Allocated to registers r5 r6 r7 
                                   1149 ;__2621440043              Allocated to registers 
                                   1150 ;s                         Allocated to registers r5 r6 r7 
                                   1151 ;__2621440045              Allocated to registers 
                                   1152 ;s                         Allocated to registers r5 r6 r7 
                                   1153 ;__1966080047              Allocated to registers 
                                   1154 ;s                         Allocated to registers r5 r6 r7 
                                   1155 ;__2621440049              Allocated to registers 
                                   1156 ;s                         Allocated to registers r5 r6 r7 
                                   1157 ;__1966080051              Allocated to registers 
                                   1158 ;s                         Allocated to registers r5 r6 r7 
                                   1159 ;__2621440053              Allocated to registers 
                                   1160 ;s                         Allocated to registers r5 r6 r7 
                                   1161 ;__1966080055              Allocated to registers 
                                   1162 ;s                         Allocated to registers r5 r6 r7 
                                   1163 ;__2621440057              Allocated to registers 
                                   1164 ;s                         Allocated to registers r5 r6 r7 
                                   1165 ;__1966080059              Allocated to registers 
                                   1166 ;s                         Allocated to registers r5 r6 r7 
                                   1167 ;------------------------------------------------------------
                                   1168 ;	calc.c:127: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   1169 ;	-----------------------------------------
                                   1170 ;	 function operator
                                   1171 ;	-----------------------------------------
      002D8A                       1172 _operator:
      002D8A C0 08            [24] 1173 	push	_bp
      002D8C 85 81 08         [24] 1174 	mov	_bp,sp
      002D8F C0 82            [24] 1175 	push	dpl
      002D91 C0 83            [24] 1176 	push	dph
      002D93 C0 F0            [24] 1177 	push	b
      002D95 E5 81            [12] 1178 	mov	a,sp
      002D97 24 0B            [12] 1179 	add	a,#0x0b
      002D99 F5 81            [12] 1180 	mov	sp,a
                                   1181 ;	calc.c:128: struct ctx *ctx = (struct ctx *)_ctx;
      002D9B A8 08            [24] 1182 	mov	r0,_bp
      002D9D 08               [12] 1183 	inc	r0
      002D9E E5 08            [12] 1184 	mov	a,_bp
      002DA0 24 04            [12] 1185 	add	a,#0x04
      002DA2 F9               [12] 1186 	mov	r1,a
      002DA3 E6               [12] 1187 	mov	a,@r0
      002DA4 F7               [12] 1188 	mov	@r1,a
      002DA5 08               [12] 1189 	inc	r0
      002DA6 09               [12] 1190 	inc	r1
      002DA7 E6               [12] 1191 	mov	a,@r0
      002DA8 F7               [12] 1192 	mov	@r1,a
      002DA9 08               [12] 1193 	inc	r0
      002DAA 09               [12] 1194 	inc	r1
      002DAB E6               [12] 1195 	mov	a,@r0
      002DAC F7               [12] 1196 	mov	@r1,a
                                   1197 ;	calc.c:131: switch (ctx->digit[0]) {
      002DAD E5 08            [12] 1198 	mov	a,_bp
      002DAF 24 04            [12] 1199 	add	a,#0x04
      002DB1 F8               [12] 1200 	mov	r0,a
      002DB2 74 07            [12] 1201 	mov	a,#0x07
      002DB4 26               [12] 1202 	add	a,@r0
      002DB5 FD               [12] 1203 	mov	r5,a
      002DB6 E4               [12] 1204 	clr	a
      002DB7 08               [12] 1205 	inc	r0
      002DB8 36               [12] 1206 	addc	a,@r0
      002DB9 FE               [12] 1207 	mov	r6,a
      002DBA 08               [12] 1208 	inc	r0
      002DBB 86 07            [24] 1209 	mov	ar7,@r0
      002DBD 8D 82            [24] 1210 	mov	dpl,r5
      002DBF 8E 83            [24] 1211 	mov	dph,r6
      002DC1 8F F0            [24] 1212 	mov	b,r7
      002DC3 12 4C E3         [24] 1213 	lcall	__gptrget
      002DC6 FF               [12] 1214 	mov	r7,a
      002DC7 BF 25 03         [24] 1215 	cjne	r7,#0x25,00751$
      002DCA 02 37 CF         [24] 1216 	ljmp	00152$
      002DCD                       1217 00751$:
      002DCD BF 26 03         [24] 1218 	cjne	r7,#0x26,00752$
      002DD0 02 39 CD         [24] 1219 	ljmp	00162$
      002DD3                       1220 00752$:
      002DD3 BF 2A 03         [24] 1221 	cjne	r7,#0x2a,00753$
      002DD6 02 34 6F         [24] 1222 	ljmp	00135$
      002DD9                       1223 00753$:
      002DD9 BF 2B 03         [24] 1224 	cjne	r7,#0x2b,00754$
      002DDC 02 31 F8         [24] 1225 	ljmp	00121$
      002DDF                       1226 00754$:
      002DDF BF 2D 03         [24] 1227 	cjne	r7,#0x2d,00755$
      002DE2 02 33 33         [24] 1228 	ljmp	00128$
      002DE5                       1229 00755$:
      002DE5 BF 2E 03         [24] 1230 	cjne	r7,#0x2e,00756$
      002DE8 02 2F 86         [24] 1231 	ljmp	00109$
      002DEB                       1232 00756$:
      002DEB BF 2F 03         [24] 1233 	cjne	r7,#0x2f,00757$
      002DEE 02 35 D1         [24] 1234 	ljmp	00142$
      002DF1                       1235 00757$:
      002DF1 BF 50 03         [24] 1236 	cjne	r7,#0x50,00758$
      002DF4 02 2E FA         [24] 1237 	ljmp	00105$
      002DF7                       1238 00758$:
      002DF7 BF 56 03         [24] 1239 	cjne	r7,#0x56,00759$
      002DFA 02 30 5D         [24] 1240 	ljmp	00113$
      002DFD                       1241 00759$:
      002DFD BF 5E 03         [24] 1242 	cjne	r7,#0x5e,00760$
      002E00 02 3C 43         [24] 1243 	ljmp	00176$
      002E03                       1244 00760$:
      002E03 BF 70 02         [24] 1245 	cjne	r7,#0x70,00761$
      002E06 80 1B            [24] 1246 	sjmp	00101$
      002E08                       1247 00761$:
      002E08 BF 76 03         [24] 1248 	cjne	r7,#0x76,00762$
      002E0B 02 2F 86         [24] 1249 	ljmp	00109$
      002E0E                       1250 00762$:
      002E0E BF 78 03         [24] 1251 	cjne	r7,#0x78,00763$
      002E11 02 30 A6         [24] 1252 	ljmp	00114$
      002E14                       1253 00763$:
      002E14 BF 7C 03         [24] 1254 	cjne	r7,#0x7c,00764$
      002E17 02 3B 08         [24] 1255 	ljmp	00169$
      002E1A                       1256 00764$:
      002E1A BF 7E 03         [24] 1257 	cjne	r7,#0x7e,00765$
      002E1D 02 3D 7E         [24] 1258 	ljmp	00183$
      002E20                       1259 00765$:
      002E20 02 3E 1F         [24] 1260 	ljmp	00187$
                                   1261 ;	calc.c:132: case 'p':
      002E23                       1262 00101$:
                                   1263 ;	calc.c:133: printstr("\r\n");
      002E23 7D 64            [12] 1264 	mov	r5,#___str_0
      002E25 7C 65            [12] 1265 	mov	r4,#(___str_0 >> 8)
      002E27 7B 80            [12] 1266 	mov	r3,#0x80
                                   1267 ;	calc.c:50: return;
      002E29                       1268 00246$:
                                   1269 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002E29 8D 82            [24] 1270 	mov	dpl,r5
      002E2B 8C 83            [24] 1271 	mov	dph,r4
      002E2D 8B F0            [24] 1272 	mov	b,r3
      002E2F 12 4C E3         [24] 1273 	lcall	__gptrget
      002E32 FF               [12] 1274 	mov	r7,a
      002E33 60 10            [24] 1275 	jz	00190$
      002E35 7E 00            [12] 1276 	mov	r6,#0x00
      002E37 8F 82            [24] 1277 	mov	dpl,r7
      002E39 8E 83            [24] 1278 	mov	dph,r6
      002E3B 12 29 C0         [24] 1279 	lcall	_putchar
      002E3E 0D               [12] 1280 	inc	r5
                                   1281 ;	calc.c:133: printstr("\r\n");
      002E3F BD 00 E7         [24] 1282 	cjne	r5,#0x00,00246$
      002E42 0C               [12] 1283 	inc	r4
      002E43 80 E4            [24] 1284 	sjmp	00246$
      002E45                       1285 00190$:
                                   1286 ;	calc.c:134: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
      002E45 E5 08            [12] 1287 	mov	a,_bp
      002E47 24 07            [12] 1288 	add	a,#0x07
      002E49 FF               [12] 1289 	mov	r7,a
      002E4A 7E 00            [12] 1290 	mov	r6,#0x00
      002E4C 7D 40            [12] 1291 	mov	r5,#0x40
      002E4E E5 08            [12] 1292 	mov	a,_bp
      002E50 24 04            [12] 1293 	add	a,#0x04
      002E52 F8               [12] 1294 	mov	r0,a
      002E53 74 09            [12] 1295 	mov	a,#0x09
      002E55 26               [12] 1296 	add	a,@r0
      002E56 FA               [12] 1297 	mov	r2,a
      002E57 E4               [12] 1298 	clr	a
      002E58 08               [12] 1299 	inc	r0
      002E59 36               [12] 1300 	addc	a,@r0
      002E5A FB               [12] 1301 	mov	r3,a
      002E5B 08               [12] 1302 	inc	r0
      002E5C 86 04            [24] 1303 	mov	ar4,@r0
      002E5E C0 07            [24] 1304 	push	ar7
      002E60 C0 06            [24] 1305 	push	ar6
      002E62 C0 05            [24] 1306 	push	ar5
      002E64 8A 82            [24] 1307 	mov	dpl,r2
      002E66 8B 83            [24] 1308 	mov	dph,r3
      002E68 8C F0            [24] 1309 	mov	b,r4
      002E6A 12 28 56         [24] 1310 	lcall	_stack_peek
      002E6D AE 82            [24] 1311 	mov	r6,dpl
      002E6F AF 83            [24] 1312 	mov	r7,dph
      002E71 15 81            [12] 1313 	dec	sp
      002E73 15 81            [12] 1314 	dec	sp
      002E75 15 81            [12] 1315 	dec	sp
      002E77 EE               [12] 1316 	mov	a,r6
      002E78 4F               [12] 1317 	orl	a,r7
      002E79 70 25            [24] 1318 	jnz	00103$
      002E7B 7D 67            [12] 1319 	mov	r5,#___str_1
      002E7D 7E 65            [12] 1320 	mov	r6,#(___str_1 >> 8)
      002E7F 7F 80            [12] 1321 	mov	r7,#0x80
                                   1322 ;	calc.c:50: return;
      002E81                       1323 00249$:
                                   1324 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002E81 8D 82            [24] 1325 	mov	dpl,r5
      002E83 8E 83            [24] 1326 	mov	dph,r6
      002E85 8F F0            [24] 1327 	mov	b,r7
      002E87 12 4C E3         [24] 1328 	lcall	__gptrget
      002E8A FC               [12] 1329 	mov	r4,a
      002E8B 70 03            [24] 1330 	jnz	00769$
      002E8D 02 3E 24         [24] 1331 	ljmp	00188$
      002E90                       1332 00769$:
      002E90 7B 00            [12] 1333 	mov	r3,#0x00
      002E92 8C 82            [24] 1334 	mov	dpl,r4
      002E94 8B 83            [24] 1335 	mov	dph,r3
      002E96 12 29 C0         [24] 1336 	lcall	_putchar
      002E99 0D               [12] 1337 	inc	r5
                                   1338 ;	calc.c:134: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
      002E9A BD 00 E4         [24] 1339 	cjne	r5,#0x00,00249$
      002E9D 0E               [12] 1340 	inc	r6
      002E9E 80 E1            [24] 1341 	sjmp	00249$
      002EA0                       1342 00103$:
                                   1343 ;	calc.c:136: printf((ctx->base == 16l) ? hexp : decp, d0);
      002EA0 E5 08            [12] 1344 	mov	a,_bp
      002EA2 24 04            [12] 1345 	add	a,#0x04
      002EA4 F8               [12] 1346 	mov	r0,a
      002EA5 86 82            [24] 1347 	mov	dpl,@r0
      002EA7 08               [12] 1348 	inc	r0
      002EA8 86 83            [24] 1349 	mov	dph,@r0
      002EAA 08               [12] 1350 	inc	r0
      002EAB 86 F0            [24] 1351 	mov	b,@r0
      002EAD 12 4C E3         [24] 1352 	lcall	__gptrget
      002EB0 FE               [12] 1353 	mov	r6,a
      002EB1 A3               [24] 1354 	inc	dptr
      002EB2 12 4C E3         [24] 1355 	lcall	__gptrget
      002EB5 FF               [12] 1356 	mov	r7,a
      002EB6 BE 10 10         [24] 1357 	cjne	r6,#0x10,00331$
      002EB9 BF 00 0D         [24] 1358 	cjne	r7,#0x00,00331$
      002EBC 90 A0 1B         [24] 1359 	mov	dptr,#_hexp
      002EBF E0               [24] 1360 	movx	a,@dptr
      002EC0 FD               [12] 1361 	mov	r5,a
      002EC1 A3               [24] 1362 	inc	dptr
      002EC2 E0               [24] 1363 	movx	a,@dptr
      002EC3 FE               [12] 1364 	mov	r6,a
      002EC4 A3               [24] 1365 	inc	dptr
      002EC5 E0               [24] 1366 	movx	a,@dptr
      002EC6 FF               [12] 1367 	mov	r7,a
      002EC7 80 0B            [24] 1368 	sjmp	00332$
      002EC9                       1369 00331$:
      002EC9 90 A0 1E         [24] 1370 	mov	dptr,#_decp
      002ECC E0               [24] 1371 	movx	a,@dptr
      002ECD FD               [12] 1372 	mov	r5,a
      002ECE A3               [24] 1373 	inc	dptr
      002ECF E0               [24] 1374 	movx	a,@dptr
      002ED0 FE               [12] 1375 	mov	r6,a
      002ED1 A3               [24] 1376 	inc	dptr
      002ED2 E0               [24] 1377 	movx	a,@dptr
      002ED3 FF               [12] 1378 	mov	r7,a
      002ED4                       1379 00332$:
      002ED4 E5 08            [12] 1380 	mov	a,_bp
      002ED6 24 07            [12] 1381 	add	a,#0x07
      002ED8 F8               [12] 1382 	mov	r0,a
      002ED9 E6               [12] 1383 	mov	a,@r0
      002EDA C0 E0            [24] 1384 	push	acc
      002EDC 08               [12] 1385 	inc	r0
      002EDD E6               [12] 1386 	mov	a,@r0
      002EDE C0 E0            [24] 1387 	push	acc
      002EE0 08               [12] 1388 	inc	r0
      002EE1 E6               [12] 1389 	mov	a,@r0
      002EE2 C0 E0            [24] 1390 	push	acc
      002EE4 08               [12] 1391 	inc	r0
      002EE5 E6               [12] 1392 	mov	a,@r0
      002EE6 C0 E0            [24] 1393 	push	acc
      002EE8 C0 05            [24] 1394 	push	ar5
      002EEA C0 06            [24] 1395 	push	ar6
      002EEC C0 07            [24] 1396 	push	ar7
      002EEE 12 4C AA         [24] 1397 	lcall	_printf
      002EF1 E5 81            [12] 1398 	mov	a,sp
      002EF3 24 F9            [12] 1399 	add	a,#0xf9
      002EF5 F5 81            [12] 1400 	mov	sp,a
                                   1401 ;	calc.c:138: break;
      002EF7 02 3E 24         [24] 1402 	ljmp	00188$
                                   1403 ;	calc.c:139: case 'P':
      002EFA                       1404 00105$:
                                   1405 ;	calc.c:140: printstr("\r\n");
      002EFA 7D 64            [12] 1406 	mov	r5,#___str_0
      002EFC 7E 65            [12] 1407 	mov	r6,#(___str_0 >> 8)
      002EFE 7F 80            [12] 1408 	mov	r7,#0x80
                                   1409 ;	calc.c:50: return;
      002F00                       1410 00252$:
                                   1411 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002F00 8D 82            [24] 1412 	mov	dpl,r5
      002F02 8E 83            [24] 1413 	mov	dph,r6
      002F04 8F F0            [24] 1414 	mov	b,r7
      002F06 12 4C E3         [24] 1415 	lcall	__gptrget
      002F09 FC               [12] 1416 	mov	r4,a
      002F0A 60 10            [24] 1417 	jz	00194$
      002F0C 7B 00            [12] 1418 	mov	r3,#0x00
      002F0E 8C 82            [24] 1419 	mov	dpl,r4
      002F10 8B 83            [24] 1420 	mov	dph,r3
      002F12 12 29 C0         [24] 1421 	lcall	_putchar
      002F15 0D               [12] 1422 	inc	r5
                                   1423 ;	calc.c:140: printstr("\r\n");
      002F16 BD 00 E7         [24] 1424 	cjne	r5,#0x00,00252$
      002F19 0E               [12] 1425 	inc	r6
      002F1A 80 E4            [24] 1426 	sjmp	00252$
      002F1C                       1427 00194$:
                                   1428 ;	calc.c:141: if (!stack_iter_peek(&ctx->s, dump_peek, ctx)) printstr("stack underflow\r\n");
      002F1C E5 08            [12] 1429 	mov	a,_bp
      002F1E 24 04            [12] 1430 	add	a,#0x04
      002F20 F8               [12] 1431 	mov	r0,a
      002F21 86 02            [24] 1432 	mov	ar2,@r0
      002F23 08               [12] 1433 	inc	r0
      002F24 86 03            [24] 1434 	mov	ar3,@r0
      002F26 08               [12] 1435 	inc	r0
      002F27 86 04            [24] 1436 	mov	ar4,@r0
      002F29 E5 08            [12] 1437 	mov	a,_bp
      002F2B 24 04            [12] 1438 	add	a,#0x04
      002F2D F8               [12] 1439 	mov	r0,a
      002F2E 74 09            [12] 1440 	mov	a,#0x09
      002F30 26               [12] 1441 	add	a,@r0
      002F31 FD               [12] 1442 	mov	r5,a
      002F32 E4               [12] 1443 	clr	a
      002F33 08               [12] 1444 	inc	r0
      002F34 36               [12] 1445 	addc	a,@r0
      002F35 FE               [12] 1446 	mov	r6,a
      002F36 08               [12] 1447 	inc	r0
      002F37 86 07            [24] 1448 	mov	ar7,@r0
      002F39 C0 02            [24] 1449 	push	ar2
      002F3B C0 03            [24] 1450 	push	ar3
      002F3D C0 04            [24] 1451 	push	ar4
      002F3F 74 35            [12] 1452 	mov	a,#_dump_peek
      002F41 C0 E0            [24] 1453 	push	acc
      002F43 74 2D            [12] 1454 	mov	a,#(_dump_peek >> 8)
      002F45 C0 E0            [24] 1455 	push	acc
      002F47 8D 82            [24] 1456 	mov	dpl,r5
      002F49 8E 83            [24] 1457 	mov	dph,r6
      002F4B 8F F0            [24] 1458 	mov	b,r7
      002F4D 12 28 EC         [24] 1459 	lcall	_stack_iter_peek
      002F50 AE 82            [24] 1460 	mov	r6,dpl
      002F52 AF 83            [24] 1461 	mov	r7,dph
      002F54 E5 81            [12] 1462 	mov	a,sp
      002F56 24 FB            [12] 1463 	add	a,#0xfb
      002F58 F5 81            [12] 1464 	mov	sp,a
      002F5A EE               [12] 1465 	mov	a,r6
      002F5B 4F               [12] 1466 	orl	a,r7
      002F5C 60 03            [24] 1467 	jz	00775$
      002F5E 02 3E 24         [24] 1468 	ljmp	00188$
      002F61                       1469 00775$:
      002F61 7D 67            [12] 1470 	mov	r5,#___str_1
      002F63 7E 65            [12] 1471 	mov	r6,#(___str_1 >> 8)
      002F65 7F 80            [12] 1472 	mov	r7,#0x80
                                   1473 ;	calc.c:50: return;
      002F67                       1474 00255$:
                                   1475 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002F67 8D 82            [24] 1476 	mov	dpl,r5
      002F69 8E 83            [24] 1477 	mov	dph,r6
      002F6B 8F F0            [24] 1478 	mov	b,r7
      002F6D 12 4C E3         [24] 1479 	lcall	__gptrget
      002F70 FC               [12] 1480 	mov	r4,a
      002F71 70 03            [24] 1481 	jnz	00776$
      002F73 02 3E 24         [24] 1482 	ljmp	00188$
      002F76                       1483 00776$:
      002F76 7B 00            [12] 1484 	mov	r3,#0x00
      002F78 8C 82            [24] 1485 	mov	dpl,r4
      002F7A 8B 83            [24] 1486 	mov	dph,r3
      002F7C 12 29 C0         [24] 1487 	lcall	_putchar
      002F7F 0D               [12] 1488 	inc	r5
                                   1489 ;	calc.c:144: case 'v':
      002F80 BD 00 E4         [24] 1490 	cjne	r5,#0x00,00255$
      002F83 0E               [12] 1491 	inc	r6
      002F84 80 E1            [24] 1492 	sjmp	00255$
      002F86                       1493 00109$:
                                   1494 ;	calc.c:145: printstr("\r\n");
      002F86 7D 64            [12] 1495 	mov	r5,#___str_0
      002F88 7E 65            [12] 1496 	mov	r6,#(___str_0 >> 8)
      002F8A 7F 80            [12] 1497 	mov	r7,#0x80
                                   1498 ;	calc.c:50: return;
      002F8C                       1499 00258$:
                                   1500 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002F8C 8D 82            [24] 1501 	mov	dpl,r5
      002F8E 8E 83            [24] 1502 	mov	dph,r6
      002F90 8F F0            [24] 1503 	mov	b,r7
      002F92 12 4C E3         [24] 1504 	lcall	__gptrget
      002F95 FC               [12] 1505 	mov	r4,a
      002F96 60 10            [24] 1506 	jz	00198$
      002F98 7B 00            [12] 1507 	mov	r3,#0x00
      002F9A 8C 82            [24] 1508 	mov	dpl,r4
      002F9C 8B 83            [24] 1509 	mov	dph,r3
      002F9E 12 29 C0         [24] 1510 	lcall	_putchar
      002FA1 0D               [12] 1511 	inc	r5
                                   1512 ;	calc.c:145: printstr("\r\n");
      002FA2 BD 00 E7         [24] 1513 	cjne	r5,#0x00,00258$
      002FA5 0E               [12] 1514 	inc	r6
      002FA6 80 E4            [24] 1515 	sjmp	00258$
      002FA8                       1516 00198$:
                                   1517 ;	calc.c:146: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
      002FA8 E5 08            [12] 1518 	mov	a,_bp
      002FAA 24 07            [12] 1519 	add	a,#0x07
      002FAC FF               [12] 1520 	mov	r7,a
      002FAD 7E 00            [12] 1521 	mov	r6,#0x00
      002FAF 7D 40            [12] 1522 	mov	r5,#0x40
      002FB1 E5 08            [12] 1523 	mov	a,_bp
      002FB3 24 04            [12] 1524 	add	a,#0x04
      002FB5 F8               [12] 1525 	mov	r0,a
      002FB6 74 09            [12] 1526 	mov	a,#0x09
      002FB8 26               [12] 1527 	add	a,@r0
      002FB9 FA               [12] 1528 	mov	r2,a
      002FBA E4               [12] 1529 	clr	a
      002FBB 08               [12] 1530 	inc	r0
      002FBC 36               [12] 1531 	addc	a,@r0
      002FBD FB               [12] 1532 	mov	r3,a
      002FBE 08               [12] 1533 	inc	r0
      002FBF 86 04            [24] 1534 	mov	ar4,@r0
      002FC1 C0 07            [24] 1535 	push	ar7
      002FC3 C0 06            [24] 1536 	push	ar6
      002FC5 C0 05            [24] 1537 	push	ar5
      002FC7 8A 82            [24] 1538 	mov	dpl,r2
      002FC9 8B 83            [24] 1539 	mov	dph,r3
      002FCB 8C F0            [24] 1540 	mov	b,r4
      002FCD 12 27 7F         [24] 1541 	lcall	_stack_pop
      002FD0 AE 82            [24] 1542 	mov	r6,dpl
      002FD2 AF 83            [24] 1543 	mov	r7,dph
      002FD4 15 81            [12] 1544 	dec	sp
      002FD6 15 81            [12] 1545 	dec	sp
      002FD8 15 81            [12] 1546 	dec	sp
      002FDA EE               [12] 1547 	mov	a,r6
      002FDB 4F               [12] 1548 	orl	a,r7
      002FDC 70 25            [24] 1549 	jnz	00111$
      002FDE 7D 67            [12] 1550 	mov	r5,#___str_1
      002FE0 7E 65            [12] 1551 	mov	r6,#(___str_1 >> 8)
      002FE2 7F 80            [12] 1552 	mov	r7,#0x80
                                   1553 ;	calc.c:50: return;
      002FE4                       1554 00261$:
                                   1555 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002FE4 8D 82            [24] 1556 	mov	dpl,r5
      002FE6 8E 83            [24] 1557 	mov	dph,r6
      002FE8 8F F0            [24] 1558 	mov	b,r7
      002FEA 12 4C E3         [24] 1559 	lcall	__gptrget
      002FED FC               [12] 1560 	mov	r4,a
      002FEE 70 03            [24] 1561 	jnz	00781$
      002FF0 02 3E 24         [24] 1562 	ljmp	00188$
      002FF3                       1563 00781$:
      002FF3 7B 00            [12] 1564 	mov	r3,#0x00
      002FF5 8C 82            [24] 1565 	mov	dpl,r4
      002FF7 8B 83            [24] 1566 	mov	dph,r3
      002FF9 12 29 C0         [24] 1567 	lcall	_putchar
      002FFC 0D               [12] 1568 	inc	r5
                                   1569 ;	calc.c:146: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
      002FFD BD 00 E4         [24] 1570 	cjne	r5,#0x00,00261$
      003000 0E               [12] 1571 	inc	r6
      003001 80 E1            [24] 1572 	sjmp	00261$
      003003                       1573 00111$:
                                   1574 ;	calc.c:147: else printf((ctx->base == 16l) ? hexv : decv, d0);
      003003 E5 08            [12] 1575 	mov	a,_bp
      003005 24 04            [12] 1576 	add	a,#0x04
      003007 F8               [12] 1577 	mov	r0,a
      003008 86 82            [24] 1578 	mov	dpl,@r0
      00300A 08               [12] 1579 	inc	r0
      00300B 86 83            [24] 1580 	mov	dph,@r0
      00300D 08               [12] 1581 	inc	r0
      00300E 86 F0            [24] 1582 	mov	b,@r0
      003010 12 4C E3         [24] 1583 	lcall	__gptrget
      003013 FE               [12] 1584 	mov	r6,a
      003014 A3               [24] 1585 	inc	dptr
      003015 12 4C E3         [24] 1586 	lcall	__gptrget
      003018 FF               [12] 1587 	mov	r7,a
      003019 BE 10 10         [24] 1588 	cjne	r6,#0x10,00333$
      00301C BF 00 0D         [24] 1589 	cjne	r7,#0x00,00333$
      00301F 90 A0 27         [24] 1590 	mov	dptr,#_hexv
      003022 E0               [24] 1591 	movx	a,@dptr
      003023 FD               [12] 1592 	mov	r5,a
      003024 A3               [24] 1593 	inc	dptr
      003025 E0               [24] 1594 	movx	a,@dptr
      003026 FE               [12] 1595 	mov	r6,a
      003027 A3               [24] 1596 	inc	dptr
      003028 E0               [24] 1597 	movx	a,@dptr
      003029 FF               [12] 1598 	mov	r7,a
      00302A 80 0B            [24] 1599 	sjmp	00334$
      00302C                       1600 00333$:
      00302C 90 A0 2A         [24] 1601 	mov	dptr,#_decv
      00302F E0               [24] 1602 	movx	a,@dptr
      003030 FD               [12] 1603 	mov	r5,a
      003031 A3               [24] 1604 	inc	dptr
      003032 E0               [24] 1605 	movx	a,@dptr
      003033 FE               [12] 1606 	mov	r6,a
      003034 A3               [24] 1607 	inc	dptr
      003035 E0               [24] 1608 	movx	a,@dptr
      003036 FF               [12] 1609 	mov	r7,a
      003037                       1610 00334$:
      003037 E5 08            [12] 1611 	mov	a,_bp
      003039 24 07            [12] 1612 	add	a,#0x07
      00303B F8               [12] 1613 	mov	r0,a
      00303C E6               [12] 1614 	mov	a,@r0
      00303D C0 E0            [24] 1615 	push	acc
      00303F 08               [12] 1616 	inc	r0
      003040 E6               [12] 1617 	mov	a,@r0
      003041 C0 E0            [24] 1618 	push	acc
      003043 08               [12] 1619 	inc	r0
      003044 E6               [12] 1620 	mov	a,@r0
      003045 C0 E0            [24] 1621 	push	acc
      003047 08               [12] 1622 	inc	r0
      003048 E6               [12] 1623 	mov	a,@r0
      003049 C0 E0            [24] 1624 	push	acc
      00304B C0 05            [24] 1625 	push	ar5
      00304D C0 06            [24] 1626 	push	ar6
      00304F C0 07            [24] 1627 	push	ar7
      003051 12 4C AA         [24] 1628 	lcall	_printf
      003054 E5 81            [12] 1629 	mov	a,sp
      003056 24 F9            [12] 1630 	add	a,#0xf9
      003058 F5 81            [12] 1631 	mov	sp,a
                                   1632 ;	calc.c:148: break;
      00305A 02 3E 24         [24] 1633 	ljmp	00188$
                                   1634 ;	calc.c:149: case 'V':
      00305D                       1635 00113$:
                                   1636 ;	calc.c:150: printstr("\r\n");
      00305D 7D 64            [12] 1637 	mov	r5,#___str_0
      00305F 7E 65            [12] 1638 	mov	r6,#(___str_0 >> 8)
      003061 7F 80            [12] 1639 	mov	r7,#0x80
                                   1640 ;	calc.c:50: return;
      003063                       1641 00264$:
                                   1642 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003063 8D 82            [24] 1643 	mov	dpl,r5
      003065 8E 83            [24] 1644 	mov	dph,r6
      003067 8F F0            [24] 1645 	mov	b,r7
      003069 12 4C E3         [24] 1646 	lcall	__gptrget
      00306C FC               [12] 1647 	mov	r4,a
      00306D 60 10            [24] 1648 	jz	00202$
      00306F 7B 00            [12] 1649 	mov	r3,#0x00
      003071 8C 82            [24] 1650 	mov	dpl,r4
      003073 8B 83            [24] 1651 	mov	dph,r3
      003075 12 29 C0         [24] 1652 	lcall	_putchar
      003078 0D               [12] 1653 	inc	r5
                                   1654 ;	calc.c:150: printstr("\r\n");
      003079 BD 00 E7         [24] 1655 	cjne	r5,#0x00,00264$
      00307C 0E               [12] 1656 	inc	r6
      00307D 80 E4            [24] 1657 	sjmp	00264$
      00307F                       1658 00202$:
                                   1659 ;	calc.c:151: (void)dump_pop(_ctx, delta);
      00307F E5 08            [12] 1660 	mov	a,_bp
      003081 24 FB            [12] 1661 	add	a,#0xfb
      003083 F8               [12] 1662 	mov	r0,a
      003084 E6               [12] 1663 	mov	a,@r0
      003085 C0 E0            [24] 1664 	push	acc
      003087 08               [12] 1665 	inc	r0
      003088 E6               [12] 1666 	mov	a,@r0
      003089 C0 E0            [24] 1667 	push	acc
      00308B 08               [12] 1668 	inc	r0
      00308C E6               [12] 1669 	mov	a,@r0
      00308D C0 E0            [24] 1670 	push	acc
      00308F A8 08            [24] 1671 	mov	r0,_bp
      003091 08               [12] 1672 	inc	r0
      003092 86 82            [24] 1673 	mov	dpl,@r0
      003094 08               [12] 1674 	inc	r0
      003095 86 83            [24] 1675 	mov	dph,@r0
      003097 08               [12] 1676 	inc	r0
      003098 86 F0            [24] 1677 	mov	b,@r0
      00309A 12 2B 53         [24] 1678 	lcall	_dump_pop
      00309D 15 81            [12] 1679 	dec	sp
      00309F 15 81            [12] 1680 	dec	sp
      0030A1 15 81            [12] 1681 	dec	sp
                                   1682 ;	calc.c:152: break;
      0030A3 02 3E 24         [24] 1683 	ljmp	00188$
                                   1684 ;	calc.c:153: case 'x':
      0030A6                       1685 00114$:
                                   1686 ;	calc.c:154: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0030A6 E5 08            [12] 1687 	mov	a,_bp
      0030A8 24 07            [12] 1688 	add	a,#0x07
      0030AA FF               [12] 1689 	mov	r7,a
      0030AB 7E 00            [12] 1690 	mov	r6,#0x00
      0030AD 7D 40            [12] 1691 	mov	r5,#0x40
      0030AF E5 08            [12] 1692 	mov	a,_bp
      0030B1 24 04            [12] 1693 	add	a,#0x04
      0030B3 F8               [12] 1694 	mov	r0,a
      0030B4 74 09            [12] 1695 	mov	a,#0x09
      0030B6 26               [12] 1696 	add	a,@r0
      0030B7 FA               [12] 1697 	mov	r2,a
      0030B8 E4               [12] 1698 	clr	a
      0030B9 08               [12] 1699 	inc	r0
      0030BA 36               [12] 1700 	addc	a,@r0
      0030BB FB               [12] 1701 	mov	r3,a
      0030BC 08               [12] 1702 	inc	r0
      0030BD 86 04            [24] 1703 	mov	ar4,@r0
      0030BF C0 07            [24] 1704 	push	ar7
      0030C1 C0 06            [24] 1705 	push	ar6
      0030C3 C0 05            [24] 1706 	push	ar5
      0030C5 8A 82            [24] 1707 	mov	dpl,r2
      0030C7 8B 83            [24] 1708 	mov	dph,r3
      0030C9 8C F0            [24] 1709 	mov	b,r4
      0030CB 12 27 7F         [24] 1710 	lcall	_stack_pop
      0030CE AE 82            [24] 1711 	mov	r6,dpl
      0030D0 AF 83            [24] 1712 	mov	r7,dph
      0030D2 15 81            [12] 1713 	dec	sp
      0030D4 15 81            [12] 1714 	dec	sp
      0030D6 15 81            [12] 1715 	dec	sp
      0030D8 EE               [12] 1716 	mov	a,r6
      0030D9 4F               [12] 1717 	orl	a,r7
      0030DA 70 25            [24] 1718 	jnz	00119$
      0030DC 7D 79            [12] 1719 	mov	r5,#___str_2
      0030DE 7E 65            [12] 1720 	mov	r6,#(___str_2 >> 8)
      0030E0 7F 80            [12] 1721 	mov	r7,#0x80
                                   1722 ;	calc.c:50: return;
      0030E2                       1723 00267$:
                                   1724 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0030E2 8D 82            [24] 1725 	mov	dpl,r5
      0030E4 8E 83            [24] 1726 	mov	dph,r6
      0030E6 8F F0            [24] 1727 	mov	b,r7
      0030E8 12 4C E3         [24] 1728 	lcall	__gptrget
      0030EB FC               [12] 1729 	mov	r4,a
      0030EC 70 03            [24] 1730 	jnz	00788$
      0030EE 02 3E 24         [24] 1731 	ljmp	00188$
      0030F1                       1732 00788$:
      0030F1 7B 00            [12] 1733 	mov	r3,#0x00
      0030F3 8C 82            [24] 1734 	mov	dpl,r4
      0030F5 8B 83            [24] 1735 	mov	dph,r3
      0030F7 12 29 C0         [24] 1736 	lcall	_putchar
      0030FA 0D               [12] 1737 	inc	r5
                                   1738 ;	calc.c:154: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0030FB BD 00 E4         [24] 1739 	cjne	r5,#0x00,00267$
      0030FE 0E               [12] 1740 	inc	r6
      0030FF 80 E1            [24] 1741 	sjmp	00267$
      003101                       1742 00119$:
                                   1743 ;	calc.c:155: else if (!stack_pop(&ctx->s, &d1)) {
      003101 E5 08            [12] 1744 	mov	a,_bp
      003103 24 0B            [12] 1745 	add	a,#0x0b
      003105 FF               [12] 1746 	mov	r7,a
      003106 7E 00            [12] 1747 	mov	r6,#0x00
      003108 7D 40            [12] 1748 	mov	r5,#0x40
      00310A E5 08            [12] 1749 	mov	a,_bp
      00310C 24 04            [12] 1750 	add	a,#0x04
      00310E F8               [12] 1751 	mov	r0,a
      00310F 74 09            [12] 1752 	mov	a,#0x09
      003111 26               [12] 1753 	add	a,@r0
      003112 FA               [12] 1754 	mov	r2,a
      003113 E4               [12] 1755 	clr	a
      003114 08               [12] 1756 	inc	r0
      003115 36               [12] 1757 	addc	a,@r0
      003116 FB               [12] 1758 	mov	r3,a
      003117 08               [12] 1759 	inc	r0
      003118 86 04            [24] 1760 	mov	ar4,@r0
      00311A C0 07            [24] 1761 	push	ar7
      00311C C0 06            [24] 1762 	push	ar6
      00311E C0 05            [24] 1763 	push	ar5
      003120 8A 82            [24] 1764 	mov	dpl,r2
      003122 8B 83            [24] 1765 	mov	dph,r3
      003124 8C F0            [24] 1766 	mov	b,r4
      003126 12 27 7F         [24] 1767 	lcall	_stack_pop
      003129 AE 82            [24] 1768 	mov	r6,dpl
      00312B AF 83            [24] 1769 	mov	r7,dph
      00312D 15 81            [12] 1770 	dec	sp
      00312F 15 81            [12] 1771 	dec	sp
      003131 15 81            [12] 1772 	dec	sp
      003133 EE               [12] 1773 	mov	a,r6
      003134 4F               [12] 1774 	orl	a,r7
      003135 70 58            [24] 1775 	jnz	00116$
                                   1776 ;	calc.c:156: (void)stack_push(&ctx->s, d0);
      003137 E5 08            [12] 1777 	mov	a,_bp
      003139 24 04            [12] 1778 	add	a,#0x04
      00313B F8               [12] 1779 	mov	r0,a
      00313C 74 09            [12] 1780 	mov	a,#0x09
      00313E 26               [12] 1781 	add	a,@r0
      00313F FD               [12] 1782 	mov	r5,a
      003140 E4               [12] 1783 	clr	a
      003141 08               [12] 1784 	inc	r0
      003142 36               [12] 1785 	addc	a,@r0
      003143 FE               [12] 1786 	mov	r6,a
      003144 08               [12] 1787 	inc	r0
      003145 86 07            [24] 1788 	mov	ar7,@r0
      003147 E5 08            [12] 1789 	mov	a,_bp
      003149 24 07            [12] 1790 	add	a,#0x07
      00314B F8               [12] 1791 	mov	r0,a
      00314C E6               [12] 1792 	mov	a,@r0
      00314D C0 E0            [24] 1793 	push	acc
      00314F 08               [12] 1794 	inc	r0
      003150 E6               [12] 1795 	mov	a,@r0
      003151 C0 E0            [24] 1796 	push	acc
      003153 08               [12] 1797 	inc	r0
      003154 E6               [12] 1798 	mov	a,@r0
      003155 C0 E0            [24] 1799 	push	acc
      003157 08               [12] 1800 	inc	r0
      003158 E6               [12] 1801 	mov	a,@r0
      003159 C0 E0            [24] 1802 	push	acc
      00315B 8D 82            [24] 1803 	mov	dpl,r5
      00315D 8E 83            [24] 1804 	mov	dph,r6
      00315F 8F F0            [24] 1805 	mov	b,r7
      003161 12 26 B5         [24] 1806 	lcall	_stack_push
      003164 E5 81            [12] 1807 	mov	a,sp
      003166 24 FC            [12] 1808 	add	a,#0xfc
      003168 F5 81            [12] 1809 	mov	sp,a
                                   1810 ;	calc.c:157: printstr("\r\nstack underflow\r\n");
      00316A 7D 79            [12] 1811 	mov	r5,#___str_2
      00316C 7E 65            [12] 1812 	mov	r6,#(___str_2 >> 8)
      00316E 7F 80            [12] 1813 	mov	r7,#0x80
                                   1814 ;	calc.c:50: return;
      003170                       1815 00270$:
                                   1816 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003170 8D 82            [24] 1817 	mov	dpl,r5
      003172 8E 83            [24] 1818 	mov	dph,r6
      003174 8F F0            [24] 1819 	mov	b,r7
      003176 12 4C E3         [24] 1820 	lcall	__gptrget
      003179 FC               [12] 1821 	mov	r4,a
      00317A 70 03            [24] 1822 	jnz	00791$
      00317C 02 3E 24         [24] 1823 	ljmp	00188$
      00317F                       1824 00791$:
      00317F 7B 00            [12] 1825 	mov	r3,#0x00
      003181 8C 82            [24] 1826 	mov	dpl,r4
      003183 8B 83            [24] 1827 	mov	dph,r3
      003185 12 29 C0         [24] 1828 	lcall	_putchar
      003188 0D               [12] 1829 	inc	r5
                                   1830 ;	calc.c:157: printstr("\r\nstack underflow\r\n");
      003189 BD 00 E4         [24] 1831 	cjne	r5,#0x00,00270$
      00318C 0E               [12] 1832 	inc	r6
      00318D 80 E1            [24] 1833 	sjmp	00270$
      00318F                       1834 00116$:
                                   1835 ;	calc.c:159: (void)stack_push(&ctx->s, d0);
      00318F E5 08            [12] 1836 	mov	a,_bp
      003191 24 04            [12] 1837 	add	a,#0x04
      003193 F8               [12] 1838 	mov	r0,a
      003194 74 09            [12] 1839 	mov	a,#0x09
      003196 26               [12] 1840 	add	a,@r0
      003197 FD               [12] 1841 	mov	r5,a
      003198 E4               [12] 1842 	clr	a
      003199 08               [12] 1843 	inc	r0
      00319A 36               [12] 1844 	addc	a,@r0
      00319B FE               [12] 1845 	mov	r6,a
      00319C 08               [12] 1846 	inc	r0
      00319D 86 07            [24] 1847 	mov	ar7,@r0
      00319F E5 08            [12] 1848 	mov	a,_bp
      0031A1 24 07            [12] 1849 	add	a,#0x07
      0031A3 F8               [12] 1850 	mov	r0,a
      0031A4 E6               [12] 1851 	mov	a,@r0
      0031A5 C0 E0            [24] 1852 	push	acc
      0031A7 08               [12] 1853 	inc	r0
      0031A8 E6               [12] 1854 	mov	a,@r0
      0031A9 C0 E0            [24] 1855 	push	acc
      0031AB 08               [12] 1856 	inc	r0
      0031AC E6               [12] 1857 	mov	a,@r0
      0031AD C0 E0            [24] 1858 	push	acc
      0031AF 08               [12] 1859 	inc	r0
      0031B0 E6               [12] 1860 	mov	a,@r0
      0031B1 C0 E0            [24] 1861 	push	acc
      0031B3 8D 82            [24] 1862 	mov	dpl,r5
      0031B5 8E 83            [24] 1863 	mov	dph,r6
      0031B7 8F F0            [24] 1864 	mov	b,r7
      0031B9 12 26 B5         [24] 1865 	lcall	_stack_push
      0031BC E5 81            [12] 1866 	mov	a,sp
      0031BE 24 FC            [12] 1867 	add	a,#0xfc
      0031C0 F5 81            [12] 1868 	mov	sp,a
                                   1869 ;	calc.c:160: (void)stack_push(&ctx->s, d1);
      0031C2 E5 08            [12] 1870 	mov	a,_bp
      0031C4 24 04            [12] 1871 	add	a,#0x04
      0031C6 F8               [12] 1872 	mov	r0,a
      0031C7 74 09            [12] 1873 	mov	a,#0x09
      0031C9 26               [12] 1874 	add	a,@r0
      0031CA FD               [12] 1875 	mov	r5,a
      0031CB E4               [12] 1876 	clr	a
      0031CC 08               [12] 1877 	inc	r0
      0031CD 36               [12] 1878 	addc	a,@r0
      0031CE FE               [12] 1879 	mov	r6,a
      0031CF 08               [12] 1880 	inc	r0
      0031D0 86 07            [24] 1881 	mov	ar7,@r0
      0031D2 E5 08            [12] 1882 	mov	a,_bp
      0031D4 24 0B            [12] 1883 	add	a,#0x0b
      0031D6 F8               [12] 1884 	mov	r0,a
      0031D7 E6               [12] 1885 	mov	a,@r0
      0031D8 C0 E0            [24] 1886 	push	acc
      0031DA 08               [12] 1887 	inc	r0
      0031DB E6               [12] 1888 	mov	a,@r0
      0031DC C0 E0            [24] 1889 	push	acc
      0031DE 08               [12] 1890 	inc	r0
      0031DF E6               [12] 1891 	mov	a,@r0
      0031E0 C0 E0            [24] 1892 	push	acc
      0031E2 08               [12] 1893 	inc	r0
      0031E3 E6               [12] 1894 	mov	a,@r0
      0031E4 C0 E0            [24] 1895 	push	acc
      0031E6 8D 82            [24] 1896 	mov	dpl,r5
      0031E8 8E 83            [24] 1897 	mov	dph,r6
      0031EA 8F F0            [24] 1898 	mov	b,r7
      0031EC 12 26 B5         [24] 1899 	lcall	_stack_push
      0031EF E5 81            [12] 1900 	mov	a,sp
      0031F1 24 FC            [12] 1901 	add	a,#0xfc
      0031F3 F5 81            [12] 1902 	mov	sp,a
                                   1903 ;	calc.c:162: break;
      0031F5 02 3E 24         [24] 1904 	ljmp	00188$
                                   1905 ;	calc.c:163: case '+':
      0031F8                       1906 00121$:
                                   1907 ;	calc.c:164: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0031F8 E5 08            [12] 1908 	mov	a,_bp
      0031FA 24 07            [12] 1909 	add	a,#0x07
      0031FC FF               [12] 1910 	mov	r7,a
      0031FD 7E 00            [12] 1911 	mov	r6,#0x00
      0031FF 7D 40            [12] 1912 	mov	r5,#0x40
      003201 E5 08            [12] 1913 	mov	a,_bp
      003203 24 04            [12] 1914 	add	a,#0x04
      003205 F8               [12] 1915 	mov	r0,a
      003206 74 09            [12] 1916 	mov	a,#0x09
      003208 26               [12] 1917 	add	a,@r0
      003209 FA               [12] 1918 	mov	r2,a
      00320A E4               [12] 1919 	clr	a
      00320B 08               [12] 1920 	inc	r0
      00320C 36               [12] 1921 	addc	a,@r0
      00320D FB               [12] 1922 	mov	r3,a
      00320E 08               [12] 1923 	inc	r0
      00320F 86 04            [24] 1924 	mov	ar4,@r0
      003211 C0 07            [24] 1925 	push	ar7
      003213 C0 06            [24] 1926 	push	ar6
      003215 C0 05            [24] 1927 	push	ar5
      003217 8A 82            [24] 1928 	mov	dpl,r2
      003219 8B 83            [24] 1929 	mov	dph,r3
      00321B 8C F0            [24] 1930 	mov	b,r4
      00321D 12 27 7F         [24] 1931 	lcall	_stack_pop
      003220 AE 82            [24] 1932 	mov	r6,dpl
      003222 AF 83            [24] 1933 	mov	r7,dph
      003224 15 81            [12] 1934 	dec	sp
      003226 15 81            [12] 1935 	dec	sp
      003228 15 81            [12] 1936 	dec	sp
      00322A EE               [12] 1937 	mov	a,r6
      00322B 4F               [12] 1938 	orl	a,r7
      00322C 70 25            [24] 1939 	jnz	00126$
      00322E 7D 79            [12] 1940 	mov	r5,#___str_2
      003230 7E 65            [12] 1941 	mov	r6,#(___str_2 >> 8)
      003232 7F 80            [12] 1942 	mov	r7,#0x80
                                   1943 ;	calc.c:50: return;
      003234                       1944 00273$:
                                   1945 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003234 8D 82            [24] 1946 	mov	dpl,r5
      003236 8E 83            [24] 1947 	mov	dph,r6
      003238 8F F0            [24] 1948 	mov	b,r7
      00323A 12 4C E3         [24] 1949 	lcall	__gptrget
      00323D FC               [12] 1950 	mov	r4,a
      00323E 70 03            [24] 1951 	jnz	00794$
      003240 02 3E 24         [24] 1952 	ljmp	00188$
      003243                       1953 00794$:
      003243 7B 00            [12] 1954 	mov	r3,#0x00
      003245 8C 82            [24] 1955 	mov	dpl,r4
      003247 8B 83            [24] 1956 	mov	dph,r3
      003249 12 29 C0         [24] 1957 	lcall	_putchar
      00324C 0D               [12] 1958 	inc	r5
                                   1959 ;	calc.c:164: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00324D BD 00 E4         [24] 1960 	cjne	r5,#0x00,00273$
      003250 0E               [12] 1961 	inc	r6
      003251 80 E1            [24] 1962 	sjmp	00273$
      003253                       1963 00126$:
                                   1964 ;	calc.c:165: else if (!stack_pop(&ctx->s, &d1)) {
      003253 E5 08            [12] 1965 	mov	a,_bp
      003255 24 0B            [12] 1966 	add	a,#0x0b
      003257 FF               [12] 1967 	mov	r7,a
      003258 7E 00            [12] 1968 	mov	r6,#0x00
      00325A 7D 40            [12] 1969 	mov	r5,#0x40
      00325C E5 08            [12] 1970 	mov	a,_bp
      00325E 24 04            [12] 1971 	add	a,#0x04
      003260 F8               [12] 1972 	mov	r0,a
      003261 74 09            [12] 1973 	mov	a,#0x09
      003263 26               [12] 1974 	add	a,@r0
      003264 FA               [12] 1975 	mov	r2,a
      003265 E4               [12] 1976 	clr	a
      003266 08               [12] 1977 	inc	r0
      003267 36               [12] 1978 	addc	a,@r0
      003268 FB               [12] 1979 	mov	r3,a
      003269 08               [12] 1980 	inc	r0
      00326A 86 04            [24] 1981 	mov	ar4,@r0
      00326C C0 07            [24] 1982 	push	ar7
      00326E C0 06            [24] 1983 	push	ar6
      003270 C0 05            [24] 1984 	push	ar5
      003272 8A 82            [24] 1985 	mov	dpl,r2
      003274 8B 83            [24] 1986 	mov	dph,r3
      003276 8C F0            [24] 1987 	mov	b,r4
      003278 12 27 7F         [24] 1988 	lcall	_stack_pop
      00327B AE 82            [24] 1989 	mov	r6,dpl
      00327D AF 83            [24] 1990 	mov	r7,dph
      00327F 15 81            [12] 1991 	dec	sp
      003281 15 81            [12] 1992 	dec	sp
      003283 15 81            [12] 1993 	dec	sp
      003285 EE               [12] 1994 	mov	a,r6
      003286 4F               [12] 1995 	orl	a,r7
      003287 70 58            [24] 1996 	jnz	00123$
                                   1997 ;	calc.c:166: (void)stack_push(&ctx->s, d0);
      003289 E5 08            [12] 1998 	mov	a,_bp
      00328B 24 04            [12] 1999 	add	a,#0x04
      00328D F8               [12] 2000 	mov	r0,a
      00328E 74 09            [12] 2001 	mov	a,#0x09
      003290 26               [12] 2002 	add	a,@r0
      003291 FD               [12] 2003 	mov	r5,a
      003292 E4               [12] 2004 	clr	a
      003293 08               [12] 2005 	inc	r0
      003294 36               [12] 2006 	addc	a,@r0
      003295 FE               [12] 2007 	mov	r6,a
      003296 08               [12] 2008 	inc	r0
      003297 86 07            [24] 2009 	mov	ar7,@r0
      003299 E5 08            [12] 2010 	mov	a,_bp
      00329B 24 07            [12] 2011 	add	a,#0x07
      00329D F8               [12] 2012 	mov	r0,a
      00329E E6               [12] 2013 	mov	a,@r0
      00329F C0 E0            [24] 2014 	push	acc
      0032A1 08               [12] 2015 	inc	r0
      0032A2 E6               [12] 2016 	mov	a,@r0
      0032A3 C0 E0            [24] 2017 	push	acc
      0032A5 08               [12] 2018 	inc	r0
      0032A6 E6               [12] 2019 	mov	a,@r0
      0032A7 C0 E0            [24] 2020 	push	acc
      0032A9 08               [12] 2021 	inc	r0
      0032AA E6               [12] 2022 	mov	a,@r0
      0032AB C0 E0            [24] 2023 	push	acc
      0032AD 8D 82            [24] 2024 	mov	dpl,r5
      0032AF 8E 83            [24] 2025 	mov	dph,r6
      0032B1 8F F0            [24] 2026 	mov	b,r7
      0032B3 12 26 B5         [24] 2027 	lcall	_stack_push
      0032B6 E5 81            [12] 2028 	mov	a,sp
      0032B8 24 FC            [12] 2029 	add	a,#0xfc
      0032BA F5 81            [12] 2030 	mov	sp,a
                                   2031 ;	calc.c:167: printstr("\r\nstack underflow\r\n");
      0032BC 7D 79            [12] 2032 	mov	r5,#___str_2
      0032BE 7E 65            [12] 2033 	mov	r6,#(___str_2 >> 8)
      0032C0 7F 80            [12] 2034 	mov	r7,#0x80
                                   2035 ;	calc.c:50: return;
      0032C2                       2036 00276$:
                                   2037 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0032C2 8D 82            [24] 2038 	mov	dpl,r5
      0032C4 8E 83            [24] 2039 	mov	dph,r6
      0032C6 8F F0            [24] 2040 	mov	b,r7
      0032C8 12 4C E3         [24] 2041 	lcall	__gptrget
      0032CB FC               [12] 2042 	mov	r4,a
      0032CC 70 03            [24] 2043 	jnz	00797$
      0032CE 02 3E 24         [24] 2044 	ljmp	00188$
      0032D1                       2045 00797$:
      0032D1 7B 00            [12] 2046 	mov	r3,#0x00
      0032D3 8C 82            [24] 2047 	mov	dpl,r4
      0032D5 8B 83            [24] 2048 	mov	dph,r3
      0032D7 12 29 C0         [24] 2049 	lcall	_putchar
      0032DA 0D               [12] 2050 	inc	r5
                                   2051 ;	calc.c:167: printstr("\r\nstack underflow\r\n");
      0032DB BD 00 E4         [24] 2052 	cjne	r5,#0x00,00276$
      0032DE 0E               [12] 2053 	inc	r6
      0032DF 80 E1            [24] 2054 	sjmp	00276$
      0032E1                       2055 00123$:
                                   2056 ;	calc.c:169: d1 += d0;
      0032E1 E5 08            [12] 2057 	mov	a,_bp
      0032E3 24 0B            [12] 2058 	add	a,#0x0b
      0032E5 F8               [12] 2059 	mov	r0,a
      0032E6 E5 08            [12] 2060 	mov	a,_bp
      0032E8 24 07            [12] 2061 	add	a,#0x07
      0032EA F9               [12] 2062 	mov	r1,a
      0032EB E7               [12] 2063 	mov	a,@r1
      0032EC 26               [12] 2064 	add	a,@r0
      0032ED F6               [12] 2065 	mov	@r0,a
      0032EE 09               [12] 2066 	inc	r1
      0032EF E7               [12] 2067 	mov	a,@r1
      0032F0 08               [12] 2068 	inc	r0
      0032F1 36               [12] 2069 	addc	a,@r0
      0032F2 F6               [12] 2070 	mov	@r0,a
      0032F3 09               [12] 2071 	inc	r1
      0032F4 E7               [12] 2072 	mov	a,@r1
      0032F5 08               [12] 2073 	inc	r0
      0032F6 36               [12] 2074 	addc	a,@r0
      0032F7 F6               [12] 2075 	mov	@r0,a
      0032F8 09               [12] 2076 	inc	r1
      0032F9 E7               [12] 2077 	mov	a,@r1
      0032FA 08               [12] 2078 	inc	r0
      0032FB 36               [12] 2079 	addc	a,@r0
      0032FC F6               [12] 2080 	mov	@r0,a
                                   2081 ;	calc.c:170: (void)stack_push(&ctx->s, d1);
      0032FD E5 08            [12] 2082 	mov	a,_bp
      0032FF 24 04            [12] 2083 	add	a,#0x04
      003301 F8               [12] 2084 	mov	r0,a
      003302 74 09            [12] 2085 	mov	a,#0x09
      003304 26               [12] 2086 	add	a,@r0
      003305 FD               [12] 2087 	mov	r5,a
      003306 E4               [12] 2088 	clr	a
      003307 08               [12] 2089 	inc	r0
      003308 36               [12] 2090 	addc	a,@r0
      003309 FE               [12] 2091 	mov	r6,a
      00330A 08               [12] 2092 	inc	r0
      00330B 86 07            [24] 2093 	mov	ar7,@r0
      00330D E5 08            [12] 2094 	mov	a,_bp
      00330F 24 0B            [12] 2095 	add	a,#0x0b
      003311 F8               [12] 2096 	mov	r0,a
      003312 E6               [12] 2097 	mov	a,@r0
      003313 C0 E0            [24] 2098 	push	acc
      003315 08               [12] 2099 	inc	r0
      003316 E6               [12] 2100 	mov	a,@r0
      003317 C0 E0            [24] 2101 	push	acc
      003319 08               [12] 2102 	inc	r0
      00331A E6               [12] 2103 	mov	a,@r0
      00331B C0 E0            [24] 2104 	push	acc
      00331D 08               [12] 2105 	inc	r0
      00331E E6               [12] 2106 	mov	a,@r0
      00331F C0 E0            [24] 2107 	push	acc
      003321 8D 82            [24] 2108 	mov	dpl,r5
      003323 8E 83            [24] 2109 	mov	dph,r6
      003325 8F F0            [24] 2110 	mov	b,r7
      003327 12 26 B5         [24] 2111 	lcall	_stack_push
      00332A E5 81            [12] 2112 	mov	a,sp
      00332C 24 FC            [12] 2113 	add	a,#0xfc
      00332E F5 81            [12] 2114 	mov	sp,a
                                   2115 ;	calc.c:172: break;
      003330 02 3E 24         [24] 2116 	ljmp	00188$
                                   2117 ;	calc.c:173: case '-':
      003333                       2118 00128$:
                                   2119 ;	calc.c:174: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003333 E5 08            [12] 2120 	mov	a,_bp
      003335 24 07            [12] 2121 	add	a,#0x07
      003337 FF               [12] 2122 	mov	r7,a
      003338 7E 00            [12] 2123 	mov	r6,#0x00
      00333A 7D 40            [12] 2124 	mov	r5,#0x40
      00333C E5 08            [12] 2125 	mov	a,_bp
      00333E 24 04            [12] 2126 	add	a,#0x04
      003340 F8               [12] 2127 	mov	r0,a
      003341 74 09            [12] 2128 	mov	a,#0x09
      003343 26               [12] 2129 	add	a,@r0
      003344 FA               [12] 2130 	mov	r2,a
      003345 E4               [12] 2131 	clr	a
      003346 08               [12] 2132 	inc	r0
      003347 36               [12] 2133 	addc	a,@r0
      003348 FB               [12] 2134 	mov	r3,a
      003349 08               [12] 2135 	inc	r0
      00334A 86 04            [24] 2136 	mov	ar4,@r0
      00334C C0 07            [24] 2137 	push	ar7
      00334E C0 06            [24] 2138 	push	ar6
      003350 C0 05            [24] 2139 	push	ar5
      003352 8A 82            [24] 2140 	mov	dpl,r2
      003354 8B 83            [24] 2141 	mov	dph,r3
      003356 8C F0            [24] 2142 	mov	b,r4
      003358 12 27 7F         [24] 2143 	lcall	_stack_pop
      00335B AE 82            [24] 2144 	mov	r6,dpl
      00335D AF 83            [24] 2145 	mov	r7,dph
      00335F 15 81            [12] 2146 	dec	sp
      003361 15 81            [12] 2147 	dec	sp
      003363 15 81            [12] 2148 	dec	sp
      003365 EE               [12] 2149 	mov	a,r6
      003366 4F               [12] 2150 	orl	a,r7
      003367 70 25            [24] 2151 	jnz	00133$
      003369 7D 79            [12] 2152 	mov	r5,#___str_2
      00336B 7E 65            [12] 2153 	mov	r6,#(___str_2 >> 8)
      00336D 7F 80            [12] 2154 	mov	r7,#0x80
                                   2155 ;	calc.c:50: return;
      00336F                       2156 00279$:
                                   2157 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00336F 8D 82            [24] 2158 	mov	dpl,r5
      003371 8E 83            [24] 2159 	mov	dph,r6
      003373 8F F0            [24] 2160 	mov	b,r7
      003375 12 4C E3         [24] 2161 	lcall	__gptrget
      003378 FC               [12] 2162 	mov	r4,a
      003379 70 03            [24] 2163 	jnz	00800$
      00337B 02 3E 24         [24] 2164 	ljmp	00188$
      00337E                       2165 00800$:
      00337E 7B 00            [12] 2166 	mov	r3,#0x00
      003380 8C 82            [24] 2167 	mov	dpl,r4
      003382 8B 83            [24] 2168 	mov	dph,r3
      003384 12 29 C0         [24] 2169 	lcall	_putchar
      003387 0D               [12] 2170 	inc	r5
                                   2171 ;	calc.c:174: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003388 BD 00 E4         [24] 2172 	cjne	r5,#0x00,00279$
      00338B 0E               [12] 2173 	inc	r6
      00338C 80 E1            [24] 2174 	sjmp	00279$
      00338E                       2175 00133$:
                                   2176 ;	calc.c:175: else if (!stack_pop(&ctx->s, &d1)) {
      00338E E5 08            [12] 2177 	mov	a,_bp
      003390 24 0B            [12] 2178 	add	a,#0x0b
      003392 FF               [12] 2179 	mov	r7,a
      003393 7E 00            [12] 2180 	mov	r6,#0x00
      003395 7D 40            [12] 2181 	mov	r5,#0x40
      003397 E5 08            [12] 2182 	mov	a,_bp
      003399 24 04            [12] 2183 	add	a,#0x04
      00339B F8               [12] 2184 	mov	r0,a
      00339C 74 09            [12] 2185 	mov	a,#0x09
      00339E 26               [12] 2186 	add	a,@r0
      00339F FA               [12] 2187 	mov	r2,a
      0033A0 E4               [12] 2188 	clr	a
      0033A1 08               [12] 2189 	inc	r0
      0033A2 36               [12] 2190 	addc	a,@r0
      0033A3 FB               [12] 2191 	mov	r3,a
      0033A4 08               [12] 2192 	inc	r0
      0033A5 86 04            [24] 2193 	mov	ar4,@r0
      0033A7 C0 07            [24] 2194 	push	ar7
      0033A9 C0 06            [24] 2195 	push	ar6
      0033AB C0 05            [24] 2196 	push	ar5
      0033AD 8A 82            [24] 2197 	mov	dpl,r2
      0033AF 8B 83            [24] 2198 	mov	dph,r3
      0033B1 8C F0            [24] 2199 	mov	b,r4
      0033B3 12 27 7F         [24] 2200 	lcall	_stack_pop
      0033B6 AE 82            [24] 2201 	mov	r6,dpl
      0033B8 AF 83            [24] 2202 	mov	r7,dph
      0033BA 15 81            [12] 2203 	dec	sp
      0033BC 15 81            [12] 2204 	dec	sp
      0033BE 15 81            [12] 2205 	dec	sp
      0033C0 EE               [12] 2206 	mov	a,r6
      0033C1 4F               [12] 2207 	orl	a,r7
      0033C2 70 58            [24] 2208 	jnz	00130$
                                   2209 ;	calc.c:176: (void)stack_push(&ctx->s, d0);
      0033C4 E5 08            [12] 2210 	mov	a,_bp
      0033C6 24 04            [12] 2211 	add	a,#0x04
      0033C8 F8               [12] 2212 	mov	r0,a
      0033C9 74 09            [12] 2213 	mov	a,#0x09
      0033CB 26               [12] 2214 	add	a,@r0
      0033CC FD               [12] 2215 	mov	r5,a
      0033CD E4               [12] 2216 	clr	a
      0033CE 08               [12] 2217 	inc	r0
      0033CF 36               [12] 2218 	addc	a,@r0
      0033D0 FE               [12] 2219 	mov	r6,a
      0033D1 08               [12] 2220 	inc	r0
      0033D2 86 07            [24] 2221 	mov	ar7,@r0
      0033D4 E5 08            [12] 2222 	mov	a,_bp
      0033D6 24 07            [12] 2223 	add	a,#0x07
      0033D8 F8               [12] 2224 	mov	r0,a
      0033D9 E6               [12] 2225 	mov	a,@r0
      0033DA C0 E0            [24] 2226 	push	acc
      0033DC 08               [12] 2227 	inc	r0
      0033DD E6               [12] 2228 	mov	a,@r0
      0033DE C0 E0            [24] 2229 	push	acc
      0033E0 08               [12] 2230 	inc	r0
      0033E1 E6               [12] 2231 	mov	a,@r0
      0033E2 C0 E0            [24] 2232 	push	acc
      0033E4 08               [12] 2233 	inc	r0
      0033E5 E6               [12] 2234 	mov	a,@r0
      0033E6 C0 E0            [24] 2235 	push	acc
      0033E8 8D 82            [24] 2236 	mov	dpl,r5
      0033EA 8E 83            [24] 2237 	mov	dph,r6
      0033EC 8F F0            [24] 2238 	mov	b,r7
      0033EE 12 26 B5         [24] 2239 	lcall	_stack_push
      0033F1 E5 81            [12] 2240 	mov	a,sp
      0033F3 24 FC            [12] 2241 	add	a,#0xfc
      0033F5 F5 81            [12] 2242 	mov	sp,a
                                   2243 ;	calc.c:177: printstr("\r\nstack underflow\r\n");
      0033F7 7D 79            [12] 2244 	mov	r5,#___str_2
      0033F9 7E 65            [12] 2245 	mov	r6,#(___str_2 >> 8)
      0033FB 7F 80            [12] 2246 	mov	r7,#0x80
                                   2247 ;	calc.c:50: return;
      0033FD                       2248 00282$:
                                   2249 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0033FD 8D 82            [24] 2250 	mov	dpl,r5
      0033FF 8E 83            [24] 2251 	mov	dph,r6
      003401 8F F0            [24] 2252 	mov	b,r7
      003403 12 4C E3         [24] 2253 	lcall	__gptrget
      003406 FC               [12] 2254 	mov	r4,a
      003407 70 03            [24] 2255 	jnz	00803$
      003409 02 3E 24         [24] 2256 	ljmp	00188$
      00340C                       2257 00803$:
      00340C 7B 00            [12] 2258 	mov	r3,#0x00
      00340E 8C 82            [24] 2259 	mov	dpl,r4
      003410 8B 83            [24] 2260 	mov	dph,r3
      003412 12 29 C0         [24] 2261 	lcall	_putchar
      003415 0D               [12] 2262 	inc	r5
                                   2263 ;	calc.c:177: printstr("\r\nstack underflow\r\n");
      003416 BD 00 E4         [24] 2264 	cjne	r5,#0x00,00282$
      003419 0E               [12] 2265 	inc	r6
      00341A 80 E1            [24] 2266 	sjmp	00282$
      00341C                       2267 00130$:
                                   2268 ;	calc.c:179: d1 -= d0;
      00341C E5 08            [12] 2269 	mov	a,_bp
      00341E 24 0B            [12] 2270 	add	a,#0x0b
      003420 F8               [12] 2271 	mov	r0,a
      003421 E5 08            [12] 2272 	mov	a,_bp
      003423 24 07            [12] 2273 	add	a,#0x07
      003425 F9               [12] 2274 	mov	r1,a
      003426 E6               [12] 2275 	mov	a,@r0
      003427 C3               [12] 2276 	clr	c
      003428 97               [12] 2277 	subb	a,@r1
      003429 F6               [12] 2278 	mov	@r0,a
      00342A 08               [12] 2279 	inc	r0
      00342B E6               [12] 2280 	mov	a,@r0
      00342C 09               [12] 2281 	inc	r1
      00342D 97               [12] 2282 	subb	a,@r1
      00342E F6               [12] 2283 	mov	@r0,a
      00342F 08               [12] 2284 	inc	r0
      003430 E6               [12] 2285 	mov	a,@r0
      003431 09               [12] 2286 	inc	r1
      003432 97               [12] 2287 	subb	a,@r1
      003433 F6               [12] 2288 	mov	@r0,a
      003434 08               [12] 2289 	inc	r0
      003435 E6               [12] 2290 	mov	a,@r0
      003436 09               [12] 2291 	inc	r1
      003437 97               [12] 2292 	subb	a,@r1
      003438 F6               [12] 2293 	mov	@r0,a
                                   2294 ;	calc.c:180: (void)stack_push(&ctx->s, d1);
      003439 E5 08            [12] 2295 	mov	a,_bp
      00343B 24 04            [12] 2296 	add	a,#0x04
      00343D F8               [12] 2297 	mov	r0,a
      00343E 74 09            [12] 2298 	mov	a,#0x09
      003440 26               [12] 2299 	add	a,@r0
      003441 FD               [12] 2300 	mov	r5,a
      003442 E4               [12] 2301 	clr	a
      003443 08               [12] 2302 	inc	r0
      003444 36               [12] 2303 	addc	a,@r0
      003445 FE               [12] 2304 	mov	r6,a
      003446 08               [12] 2305 	inc	r0
      003447 86 07            [24] 2306 	mov	ar7,@r0
      003449 E5 08            [12] 2307 	mov	a,_bp
      00344B 24 0B            [12] 2308 	add	a,#0x0b
      00344D F8               [12] 2309 	mov	r0,a
      00344E E6               [12] 2310 	mov	a,@r0
      00344F C0 E0            [24] 2311 	push	acc
      003451 08               [12] 2312 	inc	r0
      003452 E6               [12] 2313 	mov	a,@r0
      003453 C0 E0            [24] 2314 	push	acc
      003455 08               [12] 2315 	inc	r0
      003456 E6               [12] 2316 	mov	a,@r0
      003457 C0 E0            [24] 2317 	push	acc
      003459 08               [12] 2318 	inc	r0
      00345A E6               [12] 2319 	mov	a,@r0
      00345B C0 E0            [24] 2320 	push	acc
      00345D 8D 82            [24] 2321 	mov	dpl,r5
      00345F 8E 83            [24] 2322 	mov	dph,r6
      003461 8F F0            [24] 2323 	mov	b,r7
      003463 12 26 B5         [24] 2324 	lcall	_stack_push
      003466 E5 81            [12] 2325 	mov	a,sp
      003468 24 FC            [12] 2326 	add	a,#0xfc
      00346A F5 81            [12] 2327 	mov	sp,a
                                   2328 ;	calc.c:182: break;
      00346C 02 3E 24         [24] 2329 	ljmp	00188$
                                   2330 ;	calc.c:183: case '*':
      00346F                       2331 00135$:
                                   2332 ;	calc.c:184: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00346F E5 08            [12] 2333 	mov	a,_bp
      003471 24 07            [12] 2334 	add	a,#0x07
      003473 FF               [12] 2335 	mov	r7,a
      003474 7E 00            [12] 2336 	mov	r6,#0x00
      003476 7D 40            [12] 2337 	mov	r5,#0x40
      003478 E5 08            [12] 2338 	mov	a,_bp
      00347A 24 04            [12] 2339 	add	a,#0x04
      00347C F8               [12] 2340 	mov	r0,a
      00347D 74 09            [12] 2341 	mov	a,#0x09
      00347F 26               [12] 2342 	add	a,@r0
      003480 FA               [12] 2343 	mov	r2,a
      003481 E4               [12] 2344 	clr	a
      003482 08               [12] 2345 	inc	r0
      003483 36               [12] 2346 	addc	a,@r0
      003484 FB               [12] 2347 	mov	r3,a
      003485 08               [12] 2348 	inc	r0
      003486 86 04            [24] 2349 	mov	ar4,@r0
      003488 C0 07            [24] 2350 	push	ar7
      00348A C0 06            [24] 2351 	push	ar6
      00348C C0 05            [24] 2352 	push	ar5
      00348E 8A 82            [24] 2353 	mov	dpl,r2
      003490 8B 83            [24] 2354 	mov	dph,r3
      003492 8C F0            [24] 2355 	mov	b,r4
      003494 12 27 7F         [24] 2356 	lcall	_stack_pop
      003497 AE 82            [24] 2357 	mov	r6,dpl
      003499 AF 83            [24] 2358 	mov	r7,dph
      00349B 15 81            [12] 2359 	dec	sp
      00349D 15 81            [12] 2360 	dec	sp
      00349F 15 81            [12] 2361 	dec	sp
      0034A1 EE               [12] 2362 	mov	a,r6
      0034A2 4F               [12] 2363 	orl	a,r7
      0034A3 70 25            [24] 2364 	jnz	00140$
      0034A5 7D 79            [12] 2365 	mov	r5,#___str_2
      0034A7 7E 65            [12] 2366 	mov	r6,#(___str_2 >> 8)
      0034A9 7F 80            [12] 2367 	mov	r7,#0x80
                                   2368 ;	calc.c:50: return;
      0034AB                       2369 00285$:
                                   2370 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0034AB 8D 82            [24] 2371 	mov	dpl,r5
      0034AD 8E 83            [24] 2372 	mov	dph,r6
      0034AF 8F F0            [24] 2373 	mov	b,r7
      0034B1 12 4C E3         [24] 2374 	lcall	__gptrget
      0034B4 FC               [12] 2375 	mov	r4,a
      0034B5 70 03            [24] 2376 	jnz	00806$
      0034B7 02 3E 24         [24] 2377 	ljmp	00188$
      0034BA                       2378 00806$:
      0034BA 7B 00            [12] 2379 	mov	r3,#0x00
      0034BC 8C 82            [24] 2380 	mov	dpl,r4
      0034BE 8B 83            [24] 2381 	mov	dph,r3
      0034C0 12 29 C0         [24] 2382 	lcall	_putchar
      0034C3 0D               [12] 2383 	inc	r5
                                   2384 ;	calc.c:184: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0034C4 BD 00 E4         [24] 2385 	cjne	r5,#0x00,00285$
      0034C7 0E               [12] 2386 	inc	r6
      0034C8 80 E1            [24] 2387 	sjmp	00285$
      0034CA                       2388 00140$:
                                   2389 ;	calc.c:185: else if (!stack_pop(&ctx->s, &d1)) {
      0034CA E5 08            [12] 2390 	mov	a,_bp
      0034CC 24 0B            [12] 2391 	add	a,#0x0b
      0034CE FF               [12] 2392 	mov	r7,a
      0034CF 7E 00            [12] 2393 	mov	r6,#0x00
      0034D1 7D 40            [12] 2394 	mov	r5,#0x40
      0034D3 E5 08            [12] 2395 	mov	a,_bp
      0034D5 24 04            [12] 2396 	add	a,#0x04
      0034D7 F8               [12] 2397 	mov	r0,a
      0034D8 74 09            [12] 2398 	mov	a,#0x09
      0034DA 26               [12] 2399 	add	a,@r0
      0034DB FA               [12] 2400 	mov	r2,a
      0034DC E4               [12] 2401 	clr	a
      0034DD 08               [12] 2402 	inc	r0
      0034DE 36               [12] 2403 	addc	a,@r0
      0034DF FB               [12] 2404 	mov	r3,a
      0034E0 08               [12] 2405 	inc	r0
      0034E1 86 04            [24] 2406 	mov	ar4,@r0
      0034E3 C0 07            [24] 2407 	push	ar7
      0034E5 C0 06            [24] 2408 	push	ar6
      0034E7 C0 05            [24] 2409 	push	ar5
      0034E9 8A 82            [24] 2410 	mov	dpl,r2
      0034EB 8B 83            [24] 2411 	mov	dph,r3
      0034ED 8C F0            [24] 2412 	mov	b,r4
      0034EF 12 27 7F         [24] 2413 	lcall	_stack_pop
      0034F2 AE 82            [24] 2414 	mov	r6,dpl
      0034F4 AF 83            [24] 2415 	mov	r7,dph
      0034F6 15 81            [12] 2416 	dec	sp
      0034F8 15 81            [12] 2417 	dec	sp
      0034FA 15 81            [12] 2418 	dec	sp
      0034FC EE               [12] 2419 	mov	a,r6
      0034FD 4F               [12] 2420 	orl	a,r7
      0034FE 70 58            [24] 2421 	jnz	00137$
                                   2422 ;	calc.c:186: (void)stack_push(&ctx->s, d0);
      003500 E5 08            [12] 2423 	mov	a,_bp
      003502 24 04            [12] 2424 	add	a,#0x04
      003504 F8               [12] 2425 	mov	r0,a
      003505 74 09            [12] 2426 	mov	a,#0x09
      003507 26               [12] 2427 	add	a,@r0
      003508 FD               [12] 2428 	mov	r5,a
      003509 E4               [12] 2429 	clr	a
      00350A 08               [12] 2430 	inc	r0
      00350B 36               [12] 2431 	addc	a,@r0
      00350C FE               [12] 2432 	mov	r6,a
      00350D 08               [12] 2433 	inc	r0
      00350E 86 07            [24] 2434 	mov	ar7,@r0
      003510 E5 08            [12] 2435 	mov	a,_bp
      003512 24 07            [12] 2436 	add	a,#0x07
      003514 F8               [12] 2437 	mov	r0,a
      003515 E6               [12] 2438 	mov	a,@r0
      003516 C0 E0            [24] 2439 	push	acc
      003518 08               [12] 2440 	inc	r0
      003519 E6               [12] 2441 	mov	a,@r0
      00351A C0 E0            [24] 2442 	push	acc
      00351C 08               [12] 2443 	inc	r0
      00351D E6               [12] 2444 	mov	a,@r0
      00351E C0 E0            [24] 2445 	push	acc
      003520 08               [12] 2446 	inc	r0
      003521 E6               [12] 2447 	mov	a,@r0
      003522 C0 E0            [24] 2448 	push	acc
      003524 8D 82            [24] 2449 	mov	dpl,r5
      003526 8E 83            [24] 2450 	mov	dph,r6
      003528 8F F0            [24] 2451 	mov	b,r7
      00352A 12 26 B5         [24] 2452 	lcall	_stack_push
      00352D E5 81            [12] 2453 	mov	a,sp
      00352F 24 FC            [12] 2454 	add	a,#0xfc
      003531 F5 81            [12] 2455 	mov	sp,a
                                   2456 ;	calc.c:187: printstr("\r\nstack underflow\r\n");
      003533 7D 79            [12] 2457 	mov	r5,#___str_2
      003535 7E 65            [12] 2458 	mov	r6,#(___str_2 >> 8)
      003537 7F 80            [12] 2459 	mov	r7,#0x80
                                   2460 ;	calc.c:50: return;
      003539                       2461 00288$:
                                   2462 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003539 8D 82            [24] 2463 	mov	dpl,r5
      00353B 8E 83            [24] 2464 	mov	dph,r6
      00353D 8F F0            [24] 2465 	mov	b,r7
      00353F 12 4C E3         [24] 2466 	lcall	__gptrget
      003542 FC               [12] 2467 	mov	r4,a
      003543 70 03            [24] 2468 	jnz	00809$
      003545 02 3E 24         [24] 2469 	ljmp	00188$
      003548                       2470 00809$:
      003548 7B 00            [12] 2471 	mov	r3,#0x00
      00354A 8C 82            [24] 2472 	mov	dpl,r4
      00354C 8B 83            [24] 2473 	mov	dph,r3
      00354E 12 29 C0         [24] 2474 	lcall	_putchar
      003551 0D               [12] 2475 	inc	r5
                                   2476 ;	calc.c:187: printstr("\r\nstack underflow\r\n");
      003552 BD 00 E4         [24] 2477 	cjne	r5,#0x00,00288$
      003555 0E               [12] 2478 	inc	r6
      003556 80 E1            [24] 2479 	sjmp	00288$
      003558                       2480 00137$:
                                   2481 ;	calc.c:189: d1 *= d0;
      003558 E5 08            [12] 2482 	mov	a,_bp
      00355A 24 07            [12] 2483 	add	a,#0x07
      00355C F8               [12] 2484 	mov	r0,a
      00355D E6               [12] 2485 	mov	a,@r0
      00355E C0 E0            [24] 2486 	push	acc
      003560 08               [12] 2487 	inc	r0
      003561 E6               [12] 2488 	mov	a,@r0
      003562 C0 E0            [24] 2489 	push	acc
      003564 08               [12] 2490 	inc	r0
      003565 E6               [12] 2491 	mov	a,@r0
      003566 C0 E0            [24] 2492 	push	acc
      003568 08               [12] 2493 	inc	r0
      003569 E6               [12] 2494 	mov	a,@r0
      00356A C0 E0            [24] 2495 	push	acc
      00356C E5 08            [12] 2496 	mov	a,_bp
      00356E 24 0B            [12] 2497 	add	a,#0x0b
      003570 F8               [12] 2498 	mov	r0,a
      003571 86 82            [24] 2499 	mov	dpl,@r0
      003573 08               [12] 2500 	inc	r0
      003574 86 83            [24] 2501 	mov	dph,@r0
      003576 08               [12] 2502 	inc	r0
      003577 86 F0            [24] 2503 	mov	b,@r0
      003579 08               [12] 2504 	inc	r0
      00357A E6               [12] 2505 	mov	a,@r0
      00357B 12 50 DC         [24] 2506 	lcall	__mullong
      00357E AC 82            [24] 2507 	mov	r4,dpl
      003580 AD 83            [24] 2508 	mov	r5,dph
      003582 AE F0            [24] 2509 	mov	r6,b
      003584 FF               [12] 2510 	mov	r7,a
      003585 E5 81            [12] 2511 	mov	a,sp
      003587 24 FC            [12] 2512 	add	a,#0xfc
      003589 F5 81            [12] 2513 	mov	sp,a
      00358B E5 08            [12] 2514 	mov	a,_bp
      00358D 24 0B            [12] 2515 	add	a,#0x0b
      00358F F8               [12] 2516 	mov	r0,a
      003590 A6 04            [24] 2517 	mov	@r0,ar4
      003592 08               [12] 2518 	inc	r0
      003593 A6 05            [24] 2519 	mov	@r0,ar5
      003595 08               [12] 2520 	inc	r0
      003596 A6 06            [24] 2521 	mov	@r0,ar6
      003598 08               [12] 2522 	inc	r0
      003599 A6 07            [24] 2523 	mov	@r0,ar7
                                   2524 ;	calc.c:190: (void)stack_push(&ctx->s, d1);
      00359B E5 08            [12] 2525 	mov	a,_bp
      00359D 24 04            [12] 2526 	add	a,#0x04
      00359F F8               [12] 2527 	mov	r0,a
      0035A0 74 09            [12] 2528 	mov	a,#0x09
      0035A2 26               [12] 2529 	add	a,@r0
      0035A3 FD               [12] 2530 	mov	r5,a
      0035A4 E4               [12] 2531 	clr	a
      0035A5 08               [12] 2532 	inc	r0
      0035A6 36               [12] 2533 	addc	a,@r0
      0035A7 FE               [12] 2534 	mov	r6,a
      0035A8 08               [12] 2535 	inc	r0
      0035A9 86 07            [24] 2536 	mov	ar7,@r0
      0035AB E5 08            [12] 2537 	mov	a,_bp
      0035AD 24 0B            [12] 2538 	add	a,#0x0b
      0035AF F8               [12] 2539 	mov	r0,a
      0035B0 E6               [12] 2540 	mov	a,@r0
      0035B1 C0 E0            [24] 2541 	push	acc
      0035B3 08               [12] 2542 	inc	r0
      0035B4 E6               [12] 2543 	mov	a,@r0
      0035B5 C0 E0            [24] 2544 	push	acc
      0035B7 08               [12] 2545 	inc	r0
      0035B8 E6               [12] 2546 	mov	a,@r0
      0035B9 C0 E0            [24] 2547 	push	acc
      0035BB 08               [12] 2548 	inc	r0
      0035BC E6               [12] 2549 	mov	a,@r0
      0035BD C0 E0            [24] 2550 	push	acc
      0035BF 8D 82            [24] 2551 	mov	dpl,r5
      0035C1 8E 83            [24] 2552 	mov	dph,r6
      0035C3 8F F0            [24] 2553 	mov	b,r7
      0035C5 12 26 B5         [24] 2554 	lcall	_stack_push
      0035C8 E5 81            [12] 2555 	mov	a,sp
      0035CA 24 FC            [12] 2556 	add	a,#0xfc
      0035CC F5 81            [12] 2557 	mov	sp,a
                                   2558 ;	calc.c:192: break;
      0035CE 02 3E 24         [24] 2559 	ljmp	00188$
                                   2560 ;	calc.c:193: case '/':
      0035D1                       2561 00142$:
                                   2562 ;	calc.c:194: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0035D1 E5 08            [12] 2563 	mov	a,_bp
      0035D3 24 07            [12] 2564 	add	a,#0x07
      0035D5 FF               [12] 2565 	mov	r7,a
      0035D6 7E 00            [12] 2566 	mov	r6,#0x00
      0035D8 7D 40            [12] 2567 	mov	r5,#0x40
      0035DA E5 08            [12] 2568 	mov	a,_bp
      0035DC 24 04            [12] 2569 	add	a,#0x04
      0035DE F8               [12] 2570 	mov	r0,a
      0035DF 74 09            [12] 2571 	mov	a,#0x09
      0035E1 26               [12] 2572 	add	a,@r0
      0035E2 FA               [12] 2573 	mov	r2,a
      0035E3 E4               [12] 2574 	clr	a
      0035E4 08               [12] 2575 	inc	r0
      0035E5 36               [12] 2576 	addc	a,@r0
      0035E6 FB               [12] 2577 	mov	r3,a
      0035E7 08               [12] 2578 	inc	r0
      0035E8 86 04            [24] 2579 	mov	ar4,@r0
      0035EA C0 07            [24] 2580 	push	ar7
      0035EC C0 06            [24] 2581 	push	ar6
      0035EE C0 05            [24] 2582 	push	ar5
      0035F0 8A 82            [24] 2583 	mov	dpl,r2
      0035F2 8B 83            [24] 2584 	mov	dph,r3
      0035F4 8C F0            [24] 2585 	mov	b,r4
      0035F6 12 27 7F         [24] 2586 	lcall	_stack_pop
      0035F9 AE 82            [24] 2587 	mov	r6,dpl
      0035FB AF 83            [24] 2588 	mov	r7,dph
      0035FD 15 81            [12] 2589 	dec	sp
      0035FF 15 81            [12] 2590 	dec	sp
      003601 15 81            [12] 2591 	dec	sp
      003603 EE               [12] 2592 	mov	a,r6
      003604 4F               [12] 2593 	orl	a,r7
      003605 70 25            [24] 2594 	jnz	00150$
      003607 7D 79            [12] 2595 	mov	r5,#___str_2
      003609 7E 65            [12] 2596 	mov	r6,#(___str_2 >> 8)
      00360B 7F 80            [12] 2597 	mov	r7,#0x80
                                   2598 ;	calc.c:50: return;
      00360D                       2599 00291$:
                                   2600 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00360D 8D 82            [24] 2601 	mov	dpl,r5
      00360F 8E 83            [24] 2602 	mov	dph,r6
      003611 8F F0            [24] 2603 	mov	b,r7
      003613 12 4C E3         [24] 2604 	lcall	__gptrget
      003616 FC               [12] 2605 	mov	r4,a
      003617 70 03            [24] 2606 	jnz	00812$
      003619 02 3E 24         [24] 2607 	ljmp	00188$
      00361C                       2608 00812$:
      00361C 7B 00            [12] 2609 	mov	r3,#0x00
      00361E 8C 82            [24] 2610 	mov	dpl,r4
      003620 8B 83            [24] 2611 	mov	dph,r3
      003622 12 29 C0         [24] 2612 	lcall	_putchar
      003625 0D               [12] 2613 	inc	r5
                                   2614 ;	calc.c:194: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003626 BD 00 E4         [24] 2615 	cjne	r5,#0x00,00291$
      003629 0E               [12] 2616 	inc	r6
      00362A 80 E1            [24] 2617 	sjmp	00291$
      00362C                       2618 00150$:
                                   2619 ;	calc.c:195: else if (!stack_pop(&ctx->s, &d1)) {
      00362C E5 08            [12] 2620 	mov	a,_bp
      00362E 24 0B            [12] 2621 	add	a,#0x0b
      003630 FF               [12] 2622 	mov	r7,a
      003631 7E 00            [12] 2623 	mov	r6,#0x00
      003633 7D 40            [12] 2624 	mov	r5,#0x40
      003635 E5 08            [12] 2625 	mov	a,_bp
      003637 24 04            [12] 2626 	add	a,#0x04
      003639 F8               [12] 2627 	mov	r0,a
      00363A 74 09            [12] 2628 	mov	a,#0x09
      00363C 26               [12] 2629 	add	a,@r0
      00363D FA               [12] 2630 	mov	r2,a
      00363E E4               [12] 2631 	clr	a
      00363F 08               [12] 2632 	inc	r0
      003640 36               [12] 2633 	addc	a,@r0
      003641 FB               [12] 2634 	mov	r3,a
      003642 08               [12] 2635 	inc	r0
      003643 86 04            [24] 2636 	mov	ar4,@r0
      003645 C0 07            [24] 2637 	push	ar7
      003647 C0 06            [24] 2638 	push	ar6
      003649 C0 05            [24] 2639 	push	ar5
      00364B 8A 82            [24] 2640 	mov	dpl,r2
      00364D 8B 83            [24] 2641 	mov	dph,r3
      00364F 8C F0            [24] 2642 	mov	b,r4
      003651 12 27 7F         [24] 2643 	lcall	_stack_pop
      003654 AE 82            [24] 2644 	mov	r6,dpl
      003656 AF 83            [24] 2645 	mov	r7,dph
      003658 15 81            [12] 2646 	dec	sp
      00365A 15 81            [12] 2647 	dec	sp
      00365C 15 81            [12] 2648 	dec	sp
      00365E EE               [12] 2649 	mov	a,r6
      00365F 4F               [12] 2650 	orl	a,r7
      003660 70 58            [24] 2651 	jnz	00147$
                                   2652 ;	calc.c:196: (void)stack_push(&ctx->s, d0);
      003662 E5 08            [12] 2653 	mov	a,_bp
      003664 24 04            [12] 2654 	add	a,#0x04
      003666 F8               [12] 2655 	mov	r0,a
      003667 74 09            [12] 2656 	mov	a,#0x09
      003669 26               [12] 2657 	add	a,@r0
      00366A FD               [12] 2658 	mov	r5,a
      00366B E4               [12] 2659 	clr	a
      00366C 08               [12] 2660 	inc	r0
      00366D 36               [12] 2661 	addc	a,@r0
      00366E FE               [12] 2662 	mov	r6,a
      00366F 08               [12] 2663 	inc	r0
      003670 86 07            [24] 2664 	mov	ar7,@r0
      003672 E5 08            [12] 2665 	mov	a,_bp
      003674 24 07            [12] 2666 	add	a,#0x07
      003676 F8               [12] 2667 	mov	r0,a
      003677 E6               [12] 2668 	mov	a,@r0
      003678 C0 E0            [24] 2669 	push	acc
      00367A 08               [12] 2670 	inc	r0
      00367B E6               [12] 2671 	mov	a,@r0
      00367C C0 E0            [24] 2672 	push	acc
      00367E 08               [12] 2673 	inc	r0
      00367F E6               [12] 2674 	mov	a,@r0
      003680 C0 E0            [24] 2675 	push	acc
      003682 08               [12] 2676 	inc	r0
      003683 E6               [12] 2677 	mov	a,@r0
      003684 C0 E0            [24] 2678 	push	acc
      003686 8D 82            [24] 2679 	mov	dpl,r5
      003688 8E 83            [24] 2680 	mov	dph,r6
      00368A 8F F0            [24] 2681 	mov	b,r7
      00368C 12 26 B5         [24] 2682 	lcall	_stack_push
      00368F E5 81            [12] 2683 	mov	a,sp
      003691 24 FC            [12] 2684 	add	a,#0xfc
      003693 F5 81            [12] 2685 	mov	sp,a
                                   2686 ;	calc.c:197: printstr("\r\nstack underflow\r\n");
      003695 7D 79            [12] 2687 	mov	r5,#___str_2
      003697 7E 65            [12] 2688 	mov	r6,#(___str_2 >> 8)
      003699 7F 80            [12] 2689 	mov	r7,#0x80
                                   2690 ;	calc.c:50: return;
      00369B                       2691 00294$:
                                   2692 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00369B 8D 82            [24] 2693 	mov	dpl,r5
      00369D 8E 83            [24] 2694 	mov	dph,r6
      00369F 8F F0            [24] 2695 	mov	b,r7
      0036A1 12 4C E3         [24] 2696 	lcall	__gptrget
      0036A4 FC               [12] 2697 	mov	r4,a
      0036A5 70 03            [24] 2698 	jnz	00815$
      0036A7 02 3E 24         [24] 2699 	ljmp	00188$
      0036AA                       2700 00815$:
      0036AA 7B 00            [12] 2701 	mov	r3,#0x00
      0036AC 8C 82            [24] 2702 	mov	dpl,r4
      0036AE 8B 83            [24] 2703 	mov	dph,r3
      0036B0 12 29 C0         [24] 2704 	lcall	_putchar
      0036B3 0D               [12] 2705 	inc	r5
                                   2706 ;	calc.c:197: printstr("\r\nstack underflow\r\n");
      0036B4 BD 00 E4         [24] 2707 	cjne	r5,#0x00,00294$
      0036B7 0E               [12] 2708 	inc	r6
      0036B8 80 E1            [24] 2709 	sjmp	00294$
      0036BA                       2710 00147$:
                                   2711 ;	calc.c:198: } else if (!d0) {
      0036BA E5 08            [12] 2712 	mov	a,_bp
      0036BC 24 07            [12] 2713 	add	a,#0x07
      0036BE F8               [12] 2714 	mov	r0,a
      0036BF E6               [12] 2715 	mov	a,@r0
      0036C0 08               [12] 2716 	inc	r0
      0036C1 46               [12] 2717 	orl	a,@r0
      0036C2 08               [12] 2718 	inc	r0
      0036C3 46               [12] 2719 	orl	a,@r0
      0036C4 08               [12] 2720 	inc	r0
      0036C5 46               [12] 2721 	orl	a,@r0
      0036C6 60 03            [24] 2722 	jz	00817$
      0036C8 02 37 56         [24] 2723 	ljmp	00144$
      0036CB                       2724 00817$:
                                   2725 ;	calc.c:199: (void)stack_push(&ctx->s, d1);
      0036CB E5 08            [12] 2726 	mov	a,_bp
      0036CD 24 04            [12] 2727 	add	a,#0x04
      0036CF F8               [12] 2728 	mov	r0,a
      0036D0 74 09            [12] 2729 	mov	a,#0x09
      0036D2 26               [12] 2730 	add	a,@r0
      0036D3 FD               [12] 2731 	mov	r5,a
      0036D4 E4               [12] 2732 	clr	a
      0036D5 08               [12] 2733 	inc	r0
      0036D6 36               [12] 2734 	addc	a,@r0
      0036D7 FE               [12] 2735 	mov	r6,a
      0036D8 08               [12] 2736 	inc	r0
      0036D9 86 07            [24] 2737 	mov	ar7,@r0
      0036DB E5 08            [12] 2738 	mov	a,_bp
      0036DD 24 0B            [12] 2739 	add	a,#0x0b
      0036DF F8               [12] 2740 	mov	r0,a
      0036E0 E6               [12] 2741 	mov	a,@r0
      0036E1 C0 E0            [24] 2742 	push	acc
      0036E3 08               [12] 2743 	inc	r0
      0036E4 E6               [12] 2744 	mov	a,@r0
      0036E5 C0 E0            [24] 2745 	push	acc
      0036E7 08               [12] 2746 	inc	r0
      0036E8 E6               [12] 2747 	mov	a,@r0
      0036E9 C0 E0            [24] 2748 	push	acc
      0036EB 08               [12] 2749 	inc	r0
      0036EC E6               [12] 2750 	mov	a,@r0
      0036ED C0 E0            [24] 2751 	push	acc
      0036EF 8D 82            [24] 2752 	mov	dpl,r5
      0036F1 8E 83            [24] 2753 	mov	dph,r6
      0036F3 8F F0            [24] 2754 	mov	b,r7
      0036F5 12 26 B5         [24] 2755 	lcall	_stack_push
      0036F8 E5 81            [12] 2756 	mov	a,sp
      0036FA 24 FC            [12] 2757 	add	a,#0xfc
      0036FC F5 81            [12] 2758 	mov	sp,a
                                   2759 ;	calc.c:200: (void)stack_push(&ctx->s, d0);			
      0036FE E5 08            [12] 2760 	mov	a,_bp
      003700 24 04            [12] 2761 	add	a,#0x04
      003702 F8               [12] 2762 	mov	r0,a
      003703 74 09            [12] 2763 	mov	a,#0x09
      003705 26               [12] 2764 	add	a,@r0
      003706 FD               [12] 2765 	mov	r5,a
      003707 E4               [12] 2766 	clr	a
      003708 08               [12] 2767 	inc	r0
      003709 36               [12] 2768 	addc	a,@r0
      00370A FE               [12] 2769 	mov	r6,a
      00370B 08               [12] 2770 	inc	r0
      00370C 86 07            [24] 2771 	mov	ar7,@r0
      00370E E5 08            [12] 2772 	mov	a,_bp
      003710 24 07            [12] 2773 	add	a,#0x07
      003712 F8               [12] 2774 	mov	r0,a
      003713 E6               [12] 2775 	mov	a,@r0
      003714 C0 E0            [24] 2776 	push	acc
      003716 08               [12] 2777 	inc	r0
      003717 E6               [12] 2778 	mov	a,@r0
      003718 C0 E0            [24] 2779 	push	acc
      00371A 08               [12] 2780 	inc	r0
      00371B E6               [12] 2781 	mov	a,@r0
      00371C C0 E0            [24] 2782 	push	acc
      00371E 08               [12] 2783 	inc	r0
      00371F E6               [12] 2784 	mov	a,@r0
      003720 C0 E0            [24] 2785 	push	acc
      003722 8D 82            [24] 2786 	mov	dpl,r5
      003724 8E 83            [24] 2787 	mov	dph,r6
      003726 8F F0            [24] 2788 	mov	b,r7
      003728 12 26 B5         [24] 2789 	lcall	_stack_push
      00372B E5 81            [12] 2790 	mov	a,sp
      00372D 24 FC            [12] 2791 	add	a,#0xfc
      00372F F5 81            [12] 2792 	mov	sp,a
                                   2793 ;	calc.c:201: printstr("\r\ndivision by zero\r\n");
      003731 7D 8D            [12] 2794 	mov	r5,#___str_3
      003733 7E 65            [12] 2795 	mov	r6,#(___str_3 >> 8)
      003735 7F 80            [12] 2796 	mov	r7,#0x80
                                   2797 ;	calc.c:50: return;
      003737                       2798 00297$:
                                   2799 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003737 8D 82            [24] 2800 	mov	dpl,r5
      003739 8E 83            [24] 2801 	mov	dph,r6
      00373B 8F F0            [24] 2802 	mov	b,r7
      00373D 12 4C E3         [24] 2803 	lcall	__gptrget
      003740 FC               [12] 2804 	mov	r4,a
      003741 70 03            [24] 2805 	jnz	00818$
      003743 02 3E 24         [24] 2806 	ljmp	00188$
      003746                       2807 00818$:
      003746 7B 00            [12] 2808 	mov	r3,#0x00
      003748 8C 82            [24] 2809 	mov	dpl,r4
      00374A 8B 83            [24] 2810 	mov	dph,r3
      00374C 12 29 C0         [24] 2811 	lcall	_putchar
      00374F 0D               [12] 2812 	inc	r5
                                   2813 ;	calc.c:201: printstr("\r\ndivision by zero\r\n");
      003750 BD 00 E4         [24] 2814 	cjne	r5,#0x00,00297$
      003753 0E               [12] 2815 	inc	r6
      003754 80 E1            [24] 2816 	sjmp	00297$
      003756                       2817 00144$:
                                   2818 ;	calc.c:203: d1 /= d0;
      003756 E5 08            [12] 2819 	mov	a,_bp
      003758 24 07            [12] 2820 	add	a,#0x07
      00375A F8               [12] 2821 	mov	r0,a
      00375B E6               [12] 2822 	mov	a,@r0
      00375C C0 E0            [24] 2823 	push	acc
      00375E 08               [12] 2824 	inc	r0
      00375F E6               [12] 2825 	mov	a,@r0
      003760 C0 E0            [24] 2826 	push	acc
      003762 08               [12] 2827 	inc	r0
      003763 E6               [12] 2828 	mov	a,@r0
      003764 C0 E0            [24] 2829 	push	acc
      003766 08               [12] 2830 	inc	r0
      003767 E6               [12] 2831 	mov	a,@r0
      003768 C0 E0            [24] 2832 	push	acc
      00376A E5 08            [12] 2833 	mov	a,_bp
      00376C 24 0B            [12] 2834 	add	a,#0x0b
      00376E F8               [12] 2835 	mov	r0,a
      00376F 86 82            [24] 2836 	mov	dpl,@r0
      003771 08               [12] 2837 	inc	r0
      003772 86 83            [24] 2838 	mov	dph,@r0
      003774 08               [12] 2839 	inc	r0
      003775 86 F0            [24] 2840 	mov	b,@r0
      003777 08               [12] 2841 	inc	r0
      003778 E6               [12] 2842 	mov	a,@r0
      003779 12 4A DA         [24] 2843 	lcall	__divslong
      00377C AC 82            [24] 2844 	mov	r4,dpl
      00377E AD 83            [24] 2845 	mov	r5,dph
      003780 AE F0            [24] 2846 	mov	r6,b
      003782 FF               [12] 2847 	mov	r7,a
      003783 E5 81            [12] 2848 	mov	a,sp
      003785 24 FC            [12] 2849 	add	a,#0xfc
      003787 F5 81            [12] 2850 	mov	sp,a
      003789 E5 08            [12] 2851 	mov	a,_bp
      00378B 24 0B            [12] 2852 	add	a,#0x0b
      00378D F8               [12] 2853 	mov	r0,a
      00378E A6 04            [24] 2854 	mov	@r0,ar4
      003790 08               [12] 2855 	inc	r0
      003791 A6 05            [24] 2856 	mov	@r0,ar5
      003793 08               [12] 2857 	inc	r0
      003794 A6 06            [24] 2858 	mov	@r0,ar6
      003796 08               [12] 2859 	inc	r0
      003797 A6 07            [24] 2860 	mov	@r0,ar7
                                   2861 ;	calc.c:204: (void)stack_push(&ctx->s, d1);
      003799 E5 08            [12] 2862 	mov	a,_bp
      00379B 24 04            [12] 2863 	add	a,#0x04
      00379D F8               [12] 2864 	mov	r0,a
      00379E 74 09            [12] 2865 	mov	a,#0x09
      0037A0 26               [12] 2866 	add	a,@r0
      0037A1 FD               [12] 2867 	mov	r5,a
      0037A2 E4               [12] 2868 	clr	a
      0037A3 08               [12] 2869 	inc	r0
      0037A4 36               [12] 2870 	addc	a,@r0
      0037A5 FE               [12] 2871 	mov	r6,a
      0037A6 08               [12] 2872 	inc	r0
      0037A7 86 07            [24] 2873 	mov	ar7,@r0
      0037A9 E5 08            [12] 2874 	mov	a,_bp
      0037AB 24 0B            [12] 2875 	add	a,#0x0b
      0037AD F8               [12] 2876 	mov	r0,a
      0037AE E6               [12] 2877 	mov	a,@r0
      0037AF C0 E0            [24] 2878 	push	acc
      0037B1 08               [12] 2879 	inc	r0
      0037B2 E6               [12] 2880 	mov	a,@r0
      0037B3 C0 E0            [24] 2881 	push	acc
      0037B5 08               [12] 2882 	inc	r0
      0037B6 E6               [12] 2883 	mov	a,@r0
      0037B7 C0 E0            [24] 2884 	push	acc
      0037B9 08               [12] 2885 	inc	r0
      0037BA E6               [12] 2886 	mov	a,@r0
      0037BB C0 E0            [24] 2887 	push	acc
      0037BD 8D 82            [24] 2888 	mov	dpl,r5
      0037BF 8E 83            [24] 2889 	mov	dph,r6
      0037C1 8F F0            [24] 2890 	mov	b,r7
      0037C3 12 26 B5         [24] 2891 	lcall	_stack_push
      0037C6 E5 81            [12] 2892 	mov	a,sp
      0037C8 24 FC            [12] 2893 	add	a,#0xfc
      0037CA F5 81            [12] 2894 	mov	sp,a
                                   2895 ;	calc.c:206: break;
      0037CC 02 3E 24         [24] 2896 	ljmp	00188$
                                   2897 ;	calc.c:207: case '%':
      0037CF                       2898 00152$:
                                   2899 ;	calc.c:208: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0037CF E5 08            [12] 2900 	mov	a,_bp
      0037D1 24 07            [12] 2901 	add	a,#0x07
      0037D3 FF               [12] 2902 	mov	r7,a
      0037D4 7E 00            [12] 2903 	mov	r6,#0x00
      0037D6 7D 40            [12] 2904 	mov	r5,#0x40
      0037D8 E5 08            [12] 2905 	mov	a,_bp
      0037DA 24 04            [12] 2906 	add	a,#0x04
      0037DC F8               [12] 2907 	mov	r0,a
      0037DD 74 09            [12] 2908 	mov	a,#0x09
      0037DF 26               [12] 2909 	add	a,@r0
      0037E0 FA               [12] 2910 	mov	r2,a
      0037E1 E4               [12] 2911 	clr	a
      0037E2 08               [12] 2912 	inc	r0
      0037E3 36               [12] 2913 	addc	a,@r0
      0037E4 FB               [12] 2914 	mov	r3,a
      0037E5 08               [12] 2915 	inc	r0
      0037E6 86 04            [24] 2916 	mov	ar4,@r0
      0037E8 C0 07            [24] 2917 	push	ar7
      0037EA C0 06            [24] 2918 	push	ar6
      0037EC C0 05            [24] 2919 	push	ar5
      0037EE 8A 82            [24] 2920 	mov	dpl,r2
      0037F0 8B 83            [24] 2921 	mov	dph,r3
      0037F2 8C F0            [24] 2922 	mov	b,r4
      0037F4 12 27 7F         [24] 2923 	lcall	_stack_pop
      0037F7 AE 82            [24] 2924 	mov	r6,dpl
      0037F9 AF 83            [24] 2925 	mov	r7,dph
      0037FB 15 81            [12] 2926 	dec	sp
      0037FD 15 81            [12] 2927 	dec	sp
      0037FF 15 81            [12] 2928 	dec	sp
      003801 EE               [12] 2929 	mov	a,r6
      003802 4F               [12] 2930 	orl	a,r7
      003803 70 25            [24] 2931 	jnz	00160$
      003805 7D 79            [12] 2932 	mov	r5,#___str_2
      003807 7E 65            [12] 2933 	mov	r6,#(___str_2 >> 8)
      003809 7F 80            [12] 2934 	mov	r7,#0x80
                                   2935 ;	calc.c:50: return;
      00380B                       2936 00300$:
                                   2937 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00380B 8D 82            [24] 2938 	mov	dpl,r5
      00380D 8E 83            [24] 2939 	mov	dph,r6
      00380F 8F F0            [24] 2940 	mov	b,r7
      003811 12 4C E3         [24] 2941 	lcall	__gptrget
      003814 FC               [12] 2942 	mov	r4,a
      003815 70 03            [24] 2943 	jnz	00821$
      003817 02 3E 24         [24] 2944 	ljmp	00188$
      00381A                       2945 00821$:
      00381A 7B 00            [12] 2946 	mov	r3,#0x00
      00381C 8C 82            [24] 2947 	mov	dpl,r4
      00381E 8B 83            [24] 2948 	mov	dph,r3
      003820 12 29 C0         [24] 2949 	lcall	_putchar
      003823 0D               [12] 2950 	inc	r5
                                   2951 ;	calc.c:208: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003824 BD 00 E4         [24] 2952 	cjne	r5,#0x00,00300$
      003827 0E               [12] 2953 	inc	r6
      003828 80 E1            [24] 2954 	sjmp	00300$
      00382A                       2955 00160$:
                                   2956 ;	calc.c:209: else if (!stack_pop(&ctx->s, &d1)) {
      00382A E5 08            [12] 2957 	mov	a,_bp
      00382C 24 0B            [12] 2958 	add	a,#0x0b
      00382E FF               [12] 2959 	mov	r7,a
      00382F 7E 00            [12] 2960 	mov	r6,#0x00
      003831 7D 40            [12] 2961 	mov	r5,#0x40
      003833 E5 08            [12] 2962 	mov	a,_bp
      003835 24 04            [12] 2963 	add	a,#0x04
      003837 F8               [12] 2964 	mov	r0,a
      003838 74 09            [12] 2965 	mov	a,#0x09
      00383A 26               [12] 2966 	add	a,@r0
      00383B FA               [12] 2967 	mov	r2,a
      00383C E4               [12] 2968 	clr	a
      00383D 08               [12] 2969 	inc	r0
      00383E 36               [12] 2970 	addc	a,@r0
      00383F FB               [12] 2971 	mov	r3,a
      003840 08               [12] 2972 	inc	r0
      003841 86 04            [24] 2973 	mov	ar4,@r0
      003843 C0 07            [24] 2974 	push	ar7
      003845 C0 06            [24] 2975 	push	ar6
      003847 C0 05            [24] 2976 	push	ar5
      003849 8A 82            [24] 2977 	mov	dpl,r2
      00384B 8B 83            [24] 2978 	mov	dph,r3
      00384D 8C F0            [24] 2979 	mov	b,r4
      00384F 12 27 7F         [24] 2980 	lcall	_stack_pop
      003852 AE 82            [24] 2981 	mov	r6,dpl
      003854 AF 83            [24] 2982 	mov	r7,dph
      003856 15 81            [12] 2983 	dec	sp
      003858 15 81            [12] 2984 	dec	sp
      00385A 15 81            [12] 2985 	dec	sp
      00385C EE               [12] 2986 	mov	a,r6
      00385D 4F               [12] 2987 	orl	a,r7
      00385E 70 58            [24] 2988 	jnz	00157$
                                   2989 ;	calc.c:210: (void)stack_push(&ctx->s, d0);
      003860 E5 08            [12] 2990 	mov	a,_bp
      003862 24 04            [12] 2991 	add	a,#0x04
      003864 F8               [12] 2992 	mov	r0,a
      003865 74 09            [12] 2993 	mov	a,#0x09
      003867 26               [12] 2994 	add	a,@r0
      003868 FD               [12] 2995 	mov	r5,a
      003869 E4               [12] 2996 	clr	a
      00386A 08               [12] 2997 	inc	r0
      00386B 36               [12] 2998 	addc	a,@r0
      00386C FE               [12] 2999 	mov	r6,a
      00386D 08               [12] 3000 	inc	r0
      00386E 86 07            [24] 3001 	mov	ar7,@r0
      003870 E5 08            [12] 3002 	mov	a,_bp
      003872 24 07            [12] 3003 	add	a,#0x07
      003874 F8               [12] 3004 	mov	r0,a
      003875 E6               [12] 3005 	mov	a,@r0
      003876 C0 E0            [24] 3006 	push	acc
      003878 08               [12] 3007 	inc	r0
      003879 E6               [12] 3008 	mov	a,@r0
      00387A C0 E0            [24] 3009 	push	acc
      00387C 08               [12] 3010 	inc	r0
      00387D E6               [12] 3011 	mov	a,@r0
      00387E C0 E0            [24] 3012 	push	acc
      003880 08               [12] 3013 	inc	r0
      003881 E6               [12] 3014 	mov	a,@r0
      003882 C0 E0            [24] 3015 	push	acc
      003884 8D 82            [24] 3016 	mov	dpl,r5
      003886 8E 83            [24] 3017 	mov	dph,r6
      003888 8F F0            [24] 3018 	mov	b,r7
      00388A 12 26 B5         [24] 3019 	lcall	_stack_push
      00388D E5 81            [12] 3020 	mov	a,sp
      00388F 24 FC            [12] 3021 	add	a,#0xfc
      003891 F5 81            [12] 3022 	mov	sp,a
                                   3023 ;	calc.c:211: printstr("\r\nstack underflow\r\n");
      003893 7D 79            [12] 3024 	mov	r5,#___str_2
      003895 7E 65            [12] 3025 	mov	r6,#(___str_2 >> 8)
      003897 7F 80            [12] 3026 	mov	r7,#0x80
                                   3027 ;	calc.c:50: return;
      003899                       3028 00303$:
                                   3029 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003899 8D 82            [24] 3030 	mov	dpl,r5
      00389B 8E 83            [24] 3031 	mov	dph,r6
      00389D 8F F0            [24] 3032 	mov	b,r7
      00389F 12 4C E3         [24] 3033 	lcall	__gptrget
      0038A2 FC               [12] 3034 	mov	r4,a
      0038A3 70 03            [24] 3035 	jnz	00824$
      0038A5 02 3E 24         [24] 3036 	ljmp	00188$
      0038A8                       3037 00824$:
      0038A8 7B 00            [12] 3038 	mov	r3,#0x00
      0038AA 8C 82            [24] 3039 	mov	dpl,r4
      0038AC 8B 83            [24] 3040 	mov	dph,r3
      0038AE 12 29 C0         [24] 3041 	lcall	_putchar
      0038B1 0D               [12] 3042 	inc	r5
                                   3043 ;	calc.c:211: printstr("\r\nstack underflow\r\n");
      0038B2 BD 00 E4         [24] 3044 	cjne	r5,#0x00,00303$
      0038B5 0E               [12] 3045 	inc	r6
      0038B6 80 E1            [24] 3046 	sjmp	00303$
      0038B8                       3047 00157$:
                                   3048 ;	calc.c:212: } else if (!d0) {
      0038B8 E5 08            [12] 3049 	mov	a,_bp
      0038BA 24 07            [12] 3050 	add	a,#0x07
      0038BC F8               [12] 3051 	mov	r0,a
      0038BD E6               [12] 3052 	mov	a,@r0
      0038BE 08               [12] 3053 	inc	r0
      0038BF 46               [12] 3054 	orl	a,@r0
      0038C0 08               [12] 3055 	inc	r0
      0038C1 46               [12] 3056 	orl	a,@r0
      0038C2 08               [12] 3057 	inc	r0
      0038C3 46               [12] 3058 	orl	a,@r0
      0038C4 60 03            [24] 3059 	jz	00826$
      0038C6 02 39 54         [24] 3060 	ljmp	00154$
      0038C9                       3061 00826$:
                                   3062 ;	calc.c:213: (void)stack_push(&ctx->s, d1);
      0038C9 E5 08            [12] 3063 	mov	a,_bp
      0038CB 24 04            [12] 3064 	add	a,#0x04
      0038CD F8               [12] 3065 	mov	r0,a
      0038CE 74 09            [12] 3066 	mov	a,#0x09
      0038D0 26               [12] 3067 	add	a,@r0
      0038D1 FD               [12] 3068 	mov	r5,a
      0038D2 E4               [12] 3069 	clr	a
      0038D3 08               [12] 3070 	inc	r0
      0038D4 36               [12] 3071 	addc	a,@r0
      0038D5 FE               [12] 3072 	mov	r6,a
      0038D6 08               [12] 3073 	inc	r0
      0038D7 86 07            [24] 3074 	mov	ar7,@r0
      0038D9 E5 08            [12] 3075 	mov	a,_bp
      0038DB 24 0B            [12] 3076 	add	a,#0x0b
      0038DD F8               [12] 3077 	mov	r0,a
      0038DE E6               [12] 3078 	mov	a,@r0
      0038DF C0 E0            [24] 3079 	push	acc
      0038E1 08               [12] 3080 	inc	r0
      0038E2 E6               [12] 3081 	mov	a,@r0
      0038E3 C0 E0            [24] 3082 	push	acc
      0038E5 08               [12] 3083 	inc	r0
      0038E6 E6               [12] 3084 	mov	a,@r0
      0038E7 C0 E0            [24] 3085 	push	acc
      0038E9 08               [12] 3086 	inc	r0
      0038EA E6               [12] 3087 	mov	a,@r0
      0038EB C0 E0            [24] 3088 	push	acc
      0038ED 8D 82            [24] 3089 	mov	dpl,r5
      0038EF 8E 83            [24] 3090 	mov	dph,r6
      0038F1 8F F0            [24] 3091 	mov	b,r7
      0038F3 12 26 B5         [24] 3092 	lcall	_stack_push
      0038F6 E5 81            [12] 3093 	mov	a,sp
      0038F8 24 FC            [12] 3094 	add	a,#0xfc
      0038FA F5 81            [12] 3095 	mov	sp,a
                                   3096 ;	calc.c:214: (void)stack_push(&ctx->s, d0);			
      0038FC E5 08            [12] 3097 	mov	a,_bp
      0038FE 24 04            [12] 3098 	add	a,#0x04
      003900 F8               [12] 3099 	mov	r0,a
      003901 74 09            [12] 3100 	mov	a,#0x09
      003903 26               [12] 3101 	add	a,@r0
      003904 FD               [12] 3102 	mov	r5,a
      003905 E4               [12] 3103 	clr	a
      003906 08               [12] 3104 	inc	r0
      003907 36               [12] 3105 	addc	a,@r0
      003908 FE               [12] 3106 	mov	r6,a
      003909 08               [12] 3107 	inc	r0
      00390A 86 07            [24] 3108 	mov	ar7,@r0
      00390C E5 08            [12] 3109 	mov	a,_bp
      00390E 24 07            [12] 3110 	add	a,#0x07
      003910 F8               [12] 3111 	mov	r0,a
      003911 E6               [12] 3112 	mov	a,@r0
      003912 C0 E0            [24] 3113 	push	acc
      003914 08               [12] 3114 	inc	r0
      003915 E6               [12] 3115 	mov	a,@r0
      003916 C0 E0            [24] 3116 	push	acc
      003918 08               [12] 3117 	inc	r0
      003919 E6               [12] 3118 	mov	a,@r0
      00391A C0 E0            [24] 3119 	push	acc
      00391C 08               [12] 3120 	inc	r0
      00391D E6               [12] 3121 	mov	a,@r0
      00391E C0 E0            [24] 3122 	push	acc
      003920 8D 82            [24] 3123 	mov	dpl,r5
      003922 8E 83            [24] 3124 	mov	dph,r6
      003924 8F F0            [24] 3125 	mov	b,r7
      003926 12 26 B5         [24] 3126 	lcall	_stack_push
      003929 E5 81            [12] 3127 	mov	a,sp
      00392B 24 FC            [12] 3128 	add	a,#0xfc
      00392D F5 81            [12] 3129 	mov	sp,a
                                   3130 ;	calc.c:215: printstr("\r\ndivision by zero\r\n");
      00392F 7D 8D            [12] 3131 	mov	r5,#___str_3
      003931 7E 65            [12] 3132 	mov	r6,#(___str_3 >> 8)
      003933 7F 80            [12] 3133 	mov	r7,#0x80
                                   3134 ;	calc.c:50: return;
      003935                       3135 00306$:
                                   3136 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003935 8D 82            [24] 3137 	mov	dpl,r5
      003937 8E 83            [24] 3138 	mov	dph,r6
      003939 8F F0            [24] 3139 	mov	b,r7
      00393B 12 4C E3         [24] 3140 	lcall	__gptrget
      00393E FC               [12] 3141 	mov	r4,a
      00393F 70 03            [24] 3142 	jnz	00827$
      003941 02 3E 24         [24] 3143 	ljmp	00188$
      003944                       3144 00827$:
      003944 7B 00            [12] 3145 	mov	r3,#0x00
      003946 8C 82            [24] 3146 	mov	dpl,r4
      003948 8B 83            [24] 3147 	mov	dph,r3
      00394A 12 29 C0         [24] 3148 	lcall	_putchar
      00394D 0D               [12] 3149 	inc	r5
                                   3150 ;	calc.c:215: printstr("\r\ndivision by zero\r\n");
      00394E BD 00 E4         [24] 3151 	cjne	r5,#0x00,00306$
      003951 0E               [12] 3152 	inc	r6
      003952 80 E1            [24] 3153 	sjmp	00306$
      003954                       3154 00154$:
                                   3155 ;	calc.c:217: d1 %= d0;
      003954 E5 08            [12] 3156 	mov	a,_bp
      003956 24 07            [12] 3157 	add	a,#0x07
      003958 F8               [12] 3158 	mov	r0,a
      003959 E6               [12] 3159 	mov	a,@r0
      00395A C0 E0            [24] 3160 	push	acc
      00395C 08               [12] 3161 	inc	r0
      00395D E6               [12] 3162 	mov	a,@r0
      00395E C0 E0            [24] 3163 	push	acc
      003960 08               [12] 3164 	inc	r0
      003961 E6               [12] 3165 	mov	a,@r0
      003962 C0 E0            [24] 3166 	push	acc
      003964 08               [12] 3167 	inc	r0
      003965 E6               [12] 3168 	mov	a,@r0
      003966 C0 E0            [24] 3169 	push	acc
      003968 E5 08            [12] 3170 	mov	a,_bp
      00396A 24 0B            [12] 3171 	add	a,#0x0b
      00396C F8               [12] 3172 	mov	r0,a
      00396D 86 82            [24] 3173 	mov	dpl,@r0
      00396F 08               [12] 3174 	inc	r0
      003970 86 83            [24] 3175 	mov	dph,@r0
      003972 08               [12] 3176 	inc	r0
      003973 86 F0            [24] 3177 	mov	b,@r0
      003975 08               [12] 3178 	inc	r0
      003976 E6               [12] 3179 	mov	a,@r0
      003977 12 49 21         [24] 3180 	lcall	__modslong
      00397A AC 82            [24] 3181 	mov	r4,dpl
      00397C AD 83            [24] 3182 	mov	r5,dph
      00397E AE F0            [24] 3183 	mov	r6,b
      003980 FF               [12] 3184 	mov	r7,a
      003981 E5 81            [12] 3185 	mov	a,sp
      003983 24 FC            [12] 3186 	add	a,#0xfc
      003985 F5 81            [12] 3187 	mov	sp,a
      003987 E5 08            [12] 3188 	mov	a,_bp
      003989 24 0B            [12] 3189 	add	a,#0x0b
      00398B F8               [12] 3190 	mov	r0,a
      00398C A6 04            [24] 3191 	mov	@r0,ar4
      00398E 08               [12] 3192 	inc	r0
      00398F A6 05            [24] 3193 	mov	@r0,ar5
      003991 08               [12] 3194 	inc	r0
      003992 A6 06            [24] 3195 	mov	@r0,ar6
      003994 08               [12] 3196 	inc	r0
      003995 A6 07            [24] 3197 	mov	@r0,ar7
                                   3198 ;	calc.c:218: (void)stack_push(&ctx->s, d1);
      003997 E5 08            [12] 3199 	mov	a,_bp
      003999 24 04            [12] 3200 	add	a,#0x04
      00399B F8               [12] 3201 	mov	r0,a
      00399C 74 09            [12] 3202 	mov	a,#0x09
      00399E 26               [12] 3203 	add	a,@r0
      00399F FD               [12] 3204 	mov	r5,a
      0039A0 E4               [12] 3205 	clr	a
      0039A1 08               [12] 3206 	inc	r0
      0039A2 36               [12] 3207 	addc	a,@r0
      0039A3 FE               [12] 3208 	mov	r6,a
      0039A4 08               [12] 3209 	inc	r0
      0039A5 86 07            [24] 3210 	mov	ar7,@r0
      0039A7 E5 08            [12] 3211 	mov	a,_bp
      0039A9 24 0B            [12] 3212 	add	a,#0x0b
      0039AB F8               [12] 3213 	mov	r0,a
      0039AC E6               [12] 3214 	mov	a,@r0
      0039AD C0 E0            [24] 3215 	push	acc
      0039AF 08               [12] 3216 	inc	r0
      0039B0 E6               [12] 3217 	mov	a,@r0
      0039B1 C0 E0            [24] 3218 	push	acc
      0039B3 08               [12] 3219 	inc	r0
      0039B4 E6               [12] 3220 	mov	a,@r0
      0039B5 C0 E0            [24] 3221 	push	acc
      0039B7 08               [12] 3222 	inc	r0
      0039B8 E6               [12] 3223 	mov	a,@r0
      0039B9 C0 E0            [24] 3224 	push	acc
      0039BB 8D 82            [24] 3225 	mov	dpl,r5
      0039BD 8E 83            [24] 3226 	mov	dph,r6
      0039BF 8F F0            [24] 3227 	mov	b,r7
      0039C1 12 26 B5         [24] 3228 	lcall	_stack_push
      0039C4 E5 81            [12] 3229 	mov	a,sp
      0039C6 24 FC            [12] 3230 	add	a,#0xfc
      0039C8 F5 81            [12] 3231 	mov	sp,a
                                   3232 ;	calc.c:220: break;
      0039CA 02 3E 24         [24] 3233 	ljmp	00188$
                                   3234 ;	calc.c:221: case '&':
      0039CD                       3235 00162$:
                                   3236 ;	calc.c:222: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0039CD E5 08            [12] 3237 	mov	a,_bp
      0039CF 24 07            [12] 3238 	add	a,#0x07
      0039D1 FF               [12] 3239 	mov	r7,a
      0039D2 7E 00            [12] 3240 	mov	r6,#0x00
      0039D4 7D 40            [12] 3241 	mov	r5,#0x40
      0039D6 E5 08            [12] 3242 	mov	a,_bp
      0039D8 24 04            [12] 3243 	add	a,#0x04
      0039DA F8               [12] 3244 	mov	r0,a
      0039DB 74 09            [12] 3245 	mov	a,#0x09
      0039DD 26               [12] 3246 	add	a,@r0
      0039DE FA               [12] 3247 	mov	r2,a
      0039DF E4               [12] 3248 	clr	a
      0039E0 08               [12] 3249 	inc	r0
      0039E1 36               [12] 3250 	addc	a,@r0
      0039E2 FB               [12] 3251 	mov	r3,a
      0039E3 08               [12] 3252 	inc	r0
      0039E4 86 04            [24] 3253 	mov	ar4,@r0
      0039E6 C0 07            [24] 3254 	push	ar7
      0039E8 C0 06            [24] 3255 	push	ar6
      0039EA C0 05            [24] 3256 	push	ar5
      0039EC 8A 82            [24] 3257 	mov	dpl,r2
      0039EE 8B 83            [24] 3258 	mov	dph,r3
      0039F0 8C F0            [24] 3259 	mov	b,r4
      0039F2 12 27 7F         [24] 3260 	lcall	_stack_pop
      0039F5 AE 82            [24] 3261 	mov	r6,dpl
      0039F7 AF 83            [24] 3262 	mov	r7,dph
      0039F9 15 81            [12] 3263 	dec	sp
      0039FB 15 81            [12] 3264 	dec	sp
      0039FD 15 81            [12] 3265 	dec	sp
      0039FF EE               [12] 3266 	mov	a,r6
      003A00 4F               [12] 3267 	orl	a,r7
      003A01 70 25            [24] 3268 	jnz	00167$
      003A03 7D 79            [12] 3269 	mov	r5,#___str_2
      003A05 7E 65            [12] 3270 	mov	r6,#(___str_2 >> 8)
      003A07 7F 80            [12] 3271 	mov	r7,#0x80
                                   3272 ;	calc.c:50: return;
      003A09                       3273 00309$:
                                   3274 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003A09 8D 82            [24] 3275 	mov	dpl,r5
      003A0B 8E 83            [24] 3276 	mov	dph,r6
      003A0D 8F F0            [24] 3277 	mov	b,r7
      003A0F 12 4C E3         [24] 3278 	lcall	__gptrget
      003A12 FC               [12] 3279 	mov	r4,a
      003A13 70 03            [24] 3280 	jnz	00830$
      003A15 02 3E 24         [24] 3281 	ljmp	00188$
      003A18                       3282 00830$:
      003A18 7B 00            [12] 3283 	mov	r3,#0x00
      003A1A 8C 82            [24] 3284 	mov	dpl,r4
      003A1C 8B 83            [24] 3285 	mov	dph,r3
      003A1E 12 29 C0         [24] 3286 	lcall	_putchar
      003A21 0D               [12] 3287 	inc	r5
                                   3288 ;	calc.c:222: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003A22 BD 00 E4         [24] 3289 	cjne	r5,#0x00,00309$
      003A25 0E               [12] 3290 	inc	r6
      003A26 80 E1            [24] 3291 	sjmp	00309$
      003A28                       3292 00167$:
                                   3293 ;	calc.c:223: else if (!stack_pop(&ctx->s, &d1)) {
      003A28 E5 08            [12] 3294 	mov	a,_bp
      003A2A 24 0B            [12] 3295 	add	a,#0x0b
      003A2C FF               [12] 3296 	mov	r7,a
      003A2D 7E 00            [12] 3297 	mov	r6,#0x00
      003A2F 7D 40            [12] 3298 	mov	r5,#0x40
      003A31 E5 08            [12] 3299 	mov	a,_bp
      003A33 24 04            [12] 3300 	add	a,#0x04
      003A35 F8               [12] 3301 	mov	r0,a
      003A36 74 09            [12] 3302 	mov	a,#0x09
      003A38 26               [12] 3303 	add	a,@r0
      003A39 FA               [12] 3304 	mov	r2,a
      003A3A E4               [12] 3305 	clr	a
      003A3B 08               [12] 3306 	inc	r0
      003A3C 36               [12] 3307 	addc	a,@r0
      003A3D FB               [12] 3308 	mov	r3,a
      003A3E 08               [12] 3309 	inc	r0
      003A3F 86 04            [24] 3310 	mov	ar4,@r0
      003A41 C0 07            [24] 3311 	push	ar7
      003A43 C0 06            [24] 3312 	push	ar6
      003A45 C0 05            [24] 3313 	push	ar5
      003A47 8A 82            [24] 3314 	mov	dpl,r2
      003A49 8B 83            [24] 3315 	mov	dph,r3
      003A4B 8C F0            [24] 3316 	mov	b,r4
      003A4D 12 27 7F         [24] 3317 	lcall	_stack_pop
      003A50 AE 82            [24] 3318 	mov	r6,dpl
      003A52 AF 83            [24] 3319 	mov	r7,dph
      003A54 15 81            [12] 3320 	dec	sp
      003A56 15 81            [12] 3321 	dec	sp
      003A58 15 81            [12] 3322 	dec	sp
      003A5A EE               [12] 3323 	mov	a,r6
      003A5B 4F               [12] 3324 	orl	a,r7
      003A5C 70 58            [24] 3325 	jnz	00164$
                                   3326 ;	calc.c:224: (void)stack_push(&ctx->s, d0);
      003A5E E5 08            [12] 3327 	mov	a,_bp
      003A60 24 04            [12] 3328 	add	a,#0x04
      003A62 F8               [12] 3329 	mov	r0,a
      003A63 74 09            [12] 3330 	mov	a,#0x09
      003A65 26               [12] 3331 	add	a,@r0
      003A66 FD               [12] 3332 	mov	r5,a
      003A67 E4               [12] 3333 	clr	a
      003A68 08               [12] 3334 	inc	r0
      003A69 36               [12] 3335 	addc	a,@r0
      003A6A FE               [12] 3336 	mov	r6,a
      003A6B 08               [12] 3337 	inc	r0
      003A6C 86 07            [24] 3338 	mov	ar7,@r0
      003A6E E5 08            [12] 3339 	mov	a,_bp
      003A70 24 07            [12] 3340 	add	a,#0x07
      003A72 F8               [12] 3341 	mov	r0,a
      003A73 E6               [12] 3342 	mov	a,@r0
      003A74 C0 E0            [24] 3343 	push	acc
      003A76 08               [12] 3344 	inc	r0
      003A77 E6               [12] 3345 	mov	a,@r0
      003A78 C0 E0            [24] 3346 	push	acc
      003A7A 08               [12] 3347 	inc	r0
      003A7B E6               [12] 3348 	mov	a,@r0
      003A7C C0 E0            [24] 3349 	push	acc
      003A7E 08               [12] 3350 	inc	r0
      003A7F E6               [12] 3351 	mov	a,@r0
      003A80 C0 E0            [24] 3352 	push	acc
      003A82 8D 82            [24] 3353 	mov	dpl,r5
      003A84 8E 83            [24] 3354 	mov	dph,r6
      003A86 8F F0            [24] 3355 	mov	b,r7
      003A88 12 26 B5         [24] 3356 	lcall	_stack_push
      003A8B E5 81            [12] 3357 	mov	a,sp
      003A8D 24 FC            [12] 3358 	add	a,#0xfc
      003A8F F5 81            [12] 3359 	mov	sp,a
                                   3360 ;	calc.c:225: printstr("\r\nstack underflow\r\n");
      003A91 7D 79            [12] 3361 	mov	r5,#___str_2
      003A93 7E 65            [12] 3362 	mov	r6,#(___str_2 >> 8)
      003A95 7F 80            [12] 3363 	mov	r7,#0x80
                                   3364 ;	calc.c:50: return;
      003A97                       3365 00312$:
                                   3366 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003A97 8D 82            [24] 3367 	mov	dpl,r5
      003A99 8E 83            [24] 3368 	mov	dph,r6
      003A9B 8F F0            [24] 3369 	mov	b,r7
      003A9D 12 4C E3         [24] 3370 	lcall	__gptrget
      003AA0 FC               [12] 3371 	mov	r4,a
      003AA1 70 03            [24] 3372 	jnz	00833$
      003AA3 02 3E 24         [24] 3373 	ljmp	00188$
      003AA6                       3374 00833$:
      003AA6 7B 00            [12] 3375 	mov	r3,#0x00
      003AA8 8C 82            [24] 3376 	mov	dpl,r4
      003AAA 8B 83            [24] 3377 	mov	dph,r3
      003AAC 12 29 C0         [24] 3378 	lcall	_putchar
      003AAF 0D               [12] 3379 	inc	r5
                                   3380 ;	calc.c:225: printstr("\r\nstack underflow\r\n");
      003AB0 BD 00 E4         [24] 3381 	cjne	r5,#0x00,00312$
      003AB3 0E               [12] 3382 	inc	r6
      003AB4 80 E1            [24] 3383 	sjmp	00312$
      003AB6                       3384 00164$:
                                   3385 ;	calc.c:227: d1 &= d0;
      003AB6 E5 08            [12] 3386 	mov	a,_bp
      003AB8 24 0B            [12] 3387 	add	a,#0x0b
      003ABA F8               [12] 3388 	mov	r0,a
      003ABB E5 08            [12] 3389 	mov	a,_bp
      003ABD 24 07            [12] 3390 	add	a,#0x07
      003ABF F9               [12] 3391 	mov	r1,a
      003AC0 E7               [12] 3392 	mov	a,@r1
      003AC1 56               [12] 3393 	anl	a,@r0
      003AC2 F6               [12] 3394 	mov	@r0,a
      003AC3 09               [12] 3395 	inc	r1
      003AC4 E7               [12] 3396 	mov	a,@r1
      003AC5 08               [12] 3397 	inc	r0
      003AC6 56               [12] 3398 	anl	a,@r0
      003AC7 F6               [12] 3399 	mov	@r0,a
      003AC8 09               [12] 3400 	inc	r1
      003AC9 E7               [12] 3401 	mov	a,@r1
      003ACA 08               [12] 3402 	inc	r0
      003ACB 56               [12] 3403 	anl	a,@r0
      003ACC F6               [12] 3404 	mov	@r0,a
      003ACD 09               [12] 3405 	inc	r1
      003ACE E7               [12] 3406 	mov	a,@r1
      003ACF 08               [12] 3407 	inc	r0
      003AD0 56               [12] 3408 	anl	a,@r0
      003AD1 F6               [12] 3409 	mov	@r0,a
                                   3410 ;	calc.c:228: (void)stack_push(&ctx->s, d1);
      003AD2 E5 08            [12] 3411 	mov	a,_bp
      003AD4 24 04            [12] 3412 	add	a,#0x04
      003AD6 F8               [12] 3413 	mov	r0,a
      003AD7 74 09            [12] 3414 	mov	a,#0x09
      003AD9 26               [12] 3415 	add	a,@r0
      003ADA FD               [12] 3416 	mov	r5,a
      003ADB E4               [12] 3417 	clr	a
      003ADC 08               [12] 3418 	inc	r0
      003ADD 36               [12] 3419 	addc	a,@r0
      003ADE FE               [12] 3420 	mov	r6,a
      003ADF 08               [12] 3421 	inc	r0
      003AE0 86 07            [24] 3422 	mov	ar7,@r0
      003AE2 E5 08            [12] 3423 	mov	a,_bp
      003AE4 24 0B            [12] 3424 	add	a,#0x0b
      003AE6 F8               [12] 3425 	mov	r0,a
      003AE7 E6               [12] 3426 	mov	a,@r0
      003AE8 C0 E0            [24] 3427 	push	acc
      003AEA 08               [12] 3428 	inc	r0
      003AEB E6               [12] 3429 	mov	a,@r0
      003AEC C0 E0            [24] 3430 	push	acc
      003AEE 08               [12] 3431 	inc	r0
      003AEF E6               [12] 3432 	mov	a,@r0
      003AF0 C0 E0            [24] 3433 	push	acc
      003AF2 08               [12] 3434 	inc	r0
      003AF3 E6               [12] 3435 	mov	a,@r0
      003AF4 C0 E0            [24] 3436 	push	acc
      003AF6 8D 82            [24] 3437 	mov	dpl,r5
      003AF8 8E 83            [24] 3438 	mov	dph,r6
      003AFA 8F F0            [24] 3439 	mov	b,r7
      003AFC 12 26 B5         [24] 3440 	lcall	_stack_push
      003AFF E5 81            [12] 3441 	mov	a,sp
      003B01 24 FC            [12] 3442 	add	a,#0xfc
      003B03 F5 81            [12] 3443 	mov	sp,a
                                   3444 ;	calc.c:230: break;
      003B05 02 3E 24         [24] 3445 	ljmp	00188$
                                   3446 ;	calc.c:231: case '|':
      003B08                       3447 00169$:
                                   3448 ;	calc.c:232: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003B08 E5 08            [12] 3449 	mov	a,_bp
      003B0A 24 07            [12] 3450 	add	a,#0x07
      003B0C FF               [12] 3451 	mov	r7,a
      003B0D 7E 00            [12] 3452 	mov	r6,#0x00
      003B0F 7D 40            [12] 3453 	mov	r5,#0x40
      003B11 E5 08            [12] 3454 	mov	a,_bp
      003B13 24 04            [12] 3455 	add	a,#0x04
      003B15 F8               [12] 3456 	mov	r0,a
      003B16 74 09            [12] 3457 	mov	a,#0x09
      003B18 26               [12] 3458 	add	a,@r0
      003B19 FA               [12] 3459 	mov	r2,a
      003B1A E4               [12] 3460 	clr	a
      003B1B 08               [12] 3461 	inc	r0
      003B1C 36               [12] 3462 	addc	a,@r0
      003B1D FB               [12] 3463 	mov	r3,a
      003B1E 08               [12] 3464 	inc	r0
      003B1F 86 04            [24] 3465 	mov	ar4,@r0
      003B21 C0 07            [24] 3466 	push	ar7
      003B23 C0 06            [24] 3467 	push	ar6
      003B25 C0 05            [24] 3468 	push	ar5
      003B27 8A 82            [24] 3469 	mov	dpl,r2
      003B29 8B 83            [24] 3470 	mov	dph,r3
      003B2B 8C F0            [24] 3471 	mov	b,r4
      003B2D 12 27 7F         [24] 3472 	lcall	_stack_pop
      003B30 AE 82            [24] 3473 	mov	r6,dpl
      003B32 AF 83            [24] 3474 	mov	r7,dph
      003B34 15 81            [12] 3475 	dec	sp
      003B36 15 81            [12] 3476 	dec	sp
      003B38 15 81            [12] 3477 	dec	sp
      003B3A EE               [12] 3478 	mov	a,r6
      003B3B 4F               [12] 3479 	orl	a,r7
      003B3C 70 25            [24] 3480 	jnz	00174$
      003B3E 7D 79            [12] 3481 	mov	r5,#___str_2
      003B40 7E 65            [12] 3482 	mov	r6,#(___str_2 >> 8)
      003B42 7F 80            [12] 3483 	mov	r7,#0x80
                                   3484 ;	calc.c:50: return;
      003B44                       3485 00315$:
                                   3486 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003B44 8D 82            [24] 3487 	mov	dpl,r5
      003B46 8E 83            [24] 3488 	mov	dph,r6
      003B48 8F F0            [24] 3489 	mov	b,r7
      003B4A 12 4C E3         [24] 3490 	lcall	__gptrget
      003B4D FC               [12] 3491 	mov	r4,a
      003B4E 70 03            [24] 3492 	jnz	00836$
      003B50 02 3E 24         [24] 3493 	ljmp	00188$
      003B53                       3494 00836$:
      003B53 7B 00            [12] 3495 	mov	r3,#0x00
      003B55 8C 82            [24] 3496 	mov	dpl,r4
      003B57 8B 83            [24] 3497 	mov	dph,r3
      003B59 12 29 C0         [24] 3498 	lcall	_putchar
      003B5C 0D               [12] 3499 	inc	r5
                                   3500 ;	calc.c:232: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003B5D BD 00 E4         [24] 3501 	cjne	r5,#0x00,00315$
      003B60 0E               [12] 3502 	inc	r6
      003B61 80 E1            [24] 3503 	sjmp	00315$
      003B63                       3504 00174$:
                                   3505 ;	calc.c:233: else if (!stack_pop(&ctx->s, &d1)) {
      003B63 E5 08            [12] 3506 	mov	a,_bp
      003B65 24 0B            [12] 3507 	add	a,#0x0b
      003B67 FF               [12] 3508 	mov	r7,a
      003B68 7E 00            [12] 3509 	mov	r6,#0x00
      003B6A 7D 40            [12] 3510 	mov	r5,#0x40
      003B6C E5 08            [12] 3511 	mov	a,_bp
      003B6E 24 04            [12] 3512 	add	a,#0x04
      003B70 F8               [12] 3513 	mov	r0,a
      003B71 74 09            [12] 3514 	mov	a,#0x09
      003B73 26               [12] 3515 	add	a,@r0
      003B74 FA               [12] 3516 	mov	r2,a
      003B75 E4               [12] 3517 	clr	a
      003B76 08               [12] 3518 	inc	r0
      003B77 36               [12] 3519 	addc	a,@r0
      003B78 FB               [12] 3520 	mov	r3,a
      003B79 08               [12] 3521 	inc	r0
      003B7A 86 04            [24] 3522 	mov	ar4,@r0
      003B7C C0 07            [24] 3523 	push	ar7
      003B7E C0 06            [24] 3524 	push	ar6
      003B80 C0 05            [24] 3525 	push	ar5
      003B82 8A 82            [24] 3526 	mov	dpl,r2
      003B84 8B 83            [24] 3527 	mov	dph,r3
      003B86 8C F0            [24] 3528 	mov	b,r4
      003B88 12 27 7F         [24] 3529 	lcall	_stack_pop
      003B8B AE 82            [24] 3530 	mov	r6,dpl
      003B8D AF 83            [24] 3531 	mov	r7,dph
      003B8F 15 81            [12] 3532 	dec	sp
      003B91 15 81            [12] 3533 	dec	sp
      003B93 15 81            [12] 3534 	dec	sp
      003B95 EE               [12] 3535 	mov	a,r6
      003B96 4F               [12] 3536 	orl	a,r7
      003B97 70 58            [24] 3537 	jnz	00171$
                                   3538 ;	calc.c:234: (void)stack_push(&ctx->s, d0);
      003B99 E5 08            [12] 3539 	mov	a,_bp
      003B9B 24 04            [12] 3540 	add	a,#0x04
      003B9D F8               [12] 3541 	mov	r0,a
      003B9E 74 09            [12] 3542 	mov	a,#0x09
      003BA0 26               [12] 3543 	add	a,@r0
      003BA1 FD               [12] 3544 	mov	r5,a
      003BA2 E4               [12] 3545 	clr	a
      003BA3 08               [12] 3546 	inc	r0
      003BA4 36               [12] 3547 	addc	a,@r0
      003BA5 FE               [12] 3548 	mov	r6,a
      003BA6 08               [12] 3549 	inc	r0
      003BA7 86 07            [24] 3550 	mov	ar7,@r0
      003BA9 E5 08            [12] 3551 	mov	a,_bp
      003BAB 24 07            [12] 3552 	add	a,#0x07
      003BAD F8               [12] 3553 	mov	r0,a
      003BAE E6               [12] 3554 	mov	a,@r0
      003BAF C0 E0            [24] 3555 	push	acc
      003BB1 08               [12] 3556 	inc	r0
      003BB2 E6               [12] 3557 	mov	a,@r0
      003BB3 C0 E0            [24] 3558 	push	acc
      003BB5 08               [12] 3559 	inc	r0
      003BB6 E6               [12] 3560 	mov	a,@r0
      003BB7 C0 E0            [24] 3561 	push	acc
      003BB9 08               [12] 3562 	inc	r0
      003BBA E6               [12] 3563 	mov	a,@r0
      003BBB C0 E0            [24] 3564 	push	acc
      003BBD 8D 82            [24] 3565 	mov	dpl,r5
      003BBF 8E 83            [24] 3566 	mov	dph,r6
      003BC1 8F F0            [24] 3567 	mov	b,r7
      003BC3 12 26 B5         [24] 3568 	lcall	_stack_push
      003BC6 E5 81            [12] 3569 	mov	a,sp
      003BC8 24 FC            [12] 3570 	add	a,#0xfc
      003BCA F5 81            [12] 3571 	mov	sp,a
                                   3572 ;	calc.c:235: printstr("\r\nstack underflow\r\n");
      003BCC 7D 79            [12] 3573 	mov	r5,#___str_2
      003BCE 7E 65            [12] 3574 	mov	r6,#(___str_2 >> 8)
      003BD0 7F 80            [12] 3575 	mov	r7,#0x80
                                   3576 ;	calc.c:50: return;
      003BD2                       3577 00318$:
                                   3578 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003BD2 8D 82            [24] 3579 	mov	dpl,r5
      003BD4 8E 83            [24] 3580 	mov	dph,r6
      003BD6 8F F0            [24] 3581 	mov	b,r7
      003BD8 12 4C E3         [24] 3582 	lcall	__gptrget
      003BDB FC               [12] 3583 	mov	r4,a
      003BDC 70 03            [24] 3584 	jnz	00839$
      003BDE 02 3E 24         [24] 3585 	ljmp	00188$
      003BE1                       3586 00839$:
      003BE1 7B 00            [12] 3587 	mov	r3,#0x00
      003BE3 8C 82            [24] 3588 	mov	dpl,r4
      003BE5 8B 83            [24] 3589 	mov	dph,r3
      003BE7 12 29 C0         [24] 3590 	lcall	_putchar
      003BEA 0D               [12] 3591 	inc	r5
                                   3592 ;	calc.c:235: printstr("\r\nstack underflow\r\n");
      003BEB BD 00 E4         [24] 3593 	cjne	r5,#0x00,00318$
      003BEE 0E               [12] 3594 	inc	r6
      003BEF 80 E1            [24] 3595 	sjmp	00318$
      003BF1                       3596 00171$:
                                   3597 ;	calc.c:237: d1 |= d0;
      003BF1 E5 08            [12] 3598 	mov	a,_bp
      003BF3 24 0B            [12] 3599 	add	a,#0x0b
      003BF5 F8               [12] 3600 	mov	r0,a
      003BF6 E5 08            [12] 3601 	mov	a,_bp
      003BF8 24 07            [12] 3602 	add	a,#0x07
      003BFA F9               [12] 3603 	mov	r1,a
      003BFB E7               [12] 3604 	mov	a,@r1
      003BFC 46               [12] 3605 	orl	a,@r0
      003BFD F6               [12] 3606 	mov	@r0,a
      003BFE 09               [12] 3607 	inc	r1
      003BFF E7               [12] 3608 	mov	a,@r1
      003C00 08               [12] 3609 	inc	r0
      003C01 46               [12] 3610 	orl	a,@r0
      003C02 F6               [12] 3611 	mov	@r0,a
      003C03 09               [12] 3612 	inc	r1
      003C04 E7               [12] 3613 	mov	a,@r1
      003C05 08               [12] 3614 	inc	r0
      003C06 46               [12] 3615 	orl	a,@r0
      003C07 F6               [12] 3616 	mov	@r0,a
      003C08 09               [12] 3617 	inc	r1
      003C09 E7               [12] 3618 	mov	a,@r1
      003C0A 08               [12] 3619 	inc	r0
      003C0B 46               [12] 3620 	orl	a,@r0
      003C0C F6               [12] 3621 	mov	@r0,a
                                   3622 ;	calc.c:238: (void)stack_push(&ctx->s, d1);
      003C0D E5 08            [12] 3623 	mov	a,_bp
      003C0F 24 04            [12] 3624 	add	a,#0x04
      003C11 F8               [12] 3625 	mov	r0,a
      003C12 74 09            [12] 3626 	mov	a,#0x09
      003C14 26               [12] 3627 	add	a,@r0
      003C15 FD               [12] 3628 	mov	r5,a
      003C16 E4               [12] 3629 	clr	a
      003C17 08               [12] 3630 	inc	r0
      003C18 36               [12] 3631 	addc	a,@r0
      003C19 FE               [12] 3632 	mov	r6,a
      003C1A 08               [12] 3633 	inc	r0
      003C1B 86 07            [24] 3634 	mov	ar7,@r0
      003C1D E5 08            [12] 3635 	mov	a,_bp
      003C1F 24 0B            [12] 3636 	add	a,#0x0b
      003C21 F8               [12] 3637 	mov	r0,a
      003C22 E6               [12] 3638 	mov	a,@r0
      003C23 C0 E0            [24] 3639 	push	acc
      003C25 08               [12] 3640 	inc	r0
      003C26 E6               [12] 3641 	mov	a,@r0
      003C27 C0 E0            [24] 3642 	push	acc
      003C29 08               [12] 3643 	inc	r0
      003C2A E6               [12] 3644 	mov	a,@r0
      003C2B C0 E0            [24] 3645 	push	acc
      003C2D 08               [12] 3646 	inc	r0
      003C2E E6               [12] 3647 	mov	a,@r0
      003C2F C0 E0            [24] 3648 	push	acc
      003C31 8D 82            [24] 3649 	mov	dpl,r5
      003C33 8E 83            [24] 3650 	mov	dph,r6
      003C35 8F F0            [24] 3651 	mov	b,r7
      003C37 12 26 B5         [24] 3652 	lcall	_stack_push
      003C3A E5 81            [12] 3653 	mov	a,sp
      003C3C 24 FC            [12] 3654 	add	a,#0xfc
      003C3E F5 81            [12] 3655 	mov	sp,a
                                   3656 ;	calc.c:240: break;
      003C40 02 3E 24         [24] 3657 	ljmp	00188$
                                   3658 ;	calc.c:241: case '^':
      003C43                       3659 00176$:
                                   3660 ;	calc.c:242: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003C43 E5 08            [12] 3661 	mov	a,_bp
      003C45 24 07            [12] 3662 	add	a,#0x07
      003C47 FF               [12] 3663 	mov	r7,a
      003C48 7E 00            [12] 3664 	mov	r6,#0x00
      003C4A 7D 40            [12] 3665 	mov	r5,#0x40
      003C4C E5 08            [12] 3666 	mov	a,_bp
      003C4E 24 04            [12] 3667 	add	a,#0x04
      003C50 F8               [12] 3668 	mov	r0,a
      003C51 74 09            [12] 3669 	mov	a,#0x09
      003C53 26               [12] 3670 	add	a,@r0
      003C54 FA               [12] 3671 	mov	r2,a
      003C55 E4               [12] 3672 	clr	a
      003C56 08               [12] 3673 	inc	r0
      003C57 36               [12] 3674 	addc	a,@r0
      003C58 FB               [12] 3675 	mov	r3,a
      003C59 08               [12] 3676 	inc	r0
      003C5A 86 04            [24] 3677 	mov	ar4,@r0
      003C5C C0 07            [24] 3678 	push	ar7
      003C5E C0 06            [24] 3679 	push	ar6
      003C60 C0 05            [24] 3680 	push	ar5
      003C62 8A 82            [24] 3681 	mov	dpl,r2
      003C64 8B 83            [24] 3682 	mov	dph,r3
      003C66 8C F0            [24] 3683 	mov	b,r4
      003C68 12 27 7F         [24] 3684 	lcall	_stack_pop
      003C6B AE 82            [24] 3685 	mov	r6,dpl
      003C6D AF 83            [24] 3686 	mov	r7,dph
      003C6F 15 81            [12] 3687 	dec	sp
      003C71 15 81            [12] 3688 	dec	sp
      003C73 15 81            [12] 3689 	dec	sp
      003C75 EE               [12] 3690 	mov	a,r6
      003C76 4F               [12] 3691 	orl	a,r7
      003C77 70 25            [24] 3692 	jnz	00181$
      003C79 7D 79            [12] 3693 	mov	r5,#___str_2
      003C7B 7E 65            [12] 3694 	mov	r6,#(___str_2 >> 8)
      003C7D 7F 80            [12] 3695 	mov	r7,#0x80
                                   3696 ;	calc.c:50: return;
      003C7F                       3697 00321$:
                                   3698 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003C7F 8D 82            [24] 3699 	mov	dpl,r5
      003C81 8E 83            [24] 3700 	mov	dph,r6
      003C83 8F F0            [24] 3701 	mov	b,r7
      003C85 12 4C E3         [24] 3702 	lcall	__gptrget
      003C88 FC               [12] 3703 	mov	r4,a
      003C89 70 03            [24] 3704 	jnz	00842$
      003C8B 02 3E 24         [24] 3705 	ljmp	00188$
      003C8E                       3706 00842$:
      003C8E 7B 00            [12] 3707 	mov	r3,#0x00
      003C90 8C 82            [24] 3708 	mov	dpl,r4
      003C92 8B 83            [24] 3709 	mov	dph,r3
      003C94 12 29 C0         [24] 3710 	lcall	_putchar
      003C97 0D               [12] 3711 	inc	r5
                                   3712 ;	calc.c:242: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003C98 BD 00 E4         [24] 3713 	cjne	r5,#0x00,00321$
      003C9B 0E               [12] 3714 	inc	r6
      003C9C 80 E1            [24] 3715 	sjmp	00321$
      003C9E                       3716 00181$:
                                   3717 ;	calc.c:243: else if (!stack_pop(&ctx->s, &d1)) {
      003C9E E5 08            [12] 3718 	mov	a,_bp
      003CA0 24 0B            [12] 3719 	add	a,#0x0b
      003CA2 FF               [12] 3720 	mov	r7,a
      003CA3 7E 00            [12] 3721 	mov	r6,#0x00
      003CA5 7D 40            [12] 3722 	mov	r5,#0x40
      003CA7 E5 08            [12] 3723 	mov	a,_bp
      003CA9 24 04            [12] 3724 	add	a,#0x04
      003CAB F8               [12] 3725 	mov	r0,a
      003CAC 74 09            [12] 3726 	mov	a,#0x09
      003CAE 26               [12] 3727 	add	a,@r0
      003CAF FA               [12] 3728 	mov	r2,a
      003CB0 E4               [12] 3729 	clr	a
      003CB1 08               [12] 3730 	inc	r0
      003CB2 36               [12] 3731 	addc	a,@r0
      003CB3 FB               [12] 3732 	mov	r3,a
      003CB4 08               [12] 3733 	inc	r0
      003CB5 86 04            [24] 3734 	mov	ar4,@r0
      003CB7 C0 07            [24] 3735 	push	ar7
      003CB9 C0 06            [24] 3736 	push	ar6
      003CBB C0 05            [24] 3737 	push	ar5
      003CBD 8A 82            [24] 3738 	mov	dpl,r2
      003CBF 8B 83            [24] 3739 	mov	dph,r3
      003CC1 8C F0            [24] 3740 	mov	b,r4
      003CC3 12 27 7F         [24] 3741 	lcall	_stack_pop
      003CC6 AE 82            [24] 3742 	mov	r6,dpl
      003CC8 AF 83            [24] 3743 	mov	r7,dph
      003CCA 15 81            [12] 3744 	dec	sp
      003CCC 15 81            [12] 3745 	dec	sp
      003CCE 15 81            [12] 3746 	dec	sp
      003CD0 EE               [12] 3747 	mov	a,r6
      003CD1 4F               [12] 3748 	orl	a,r7
      003CD2 70 58            [24] 3749 	jnz	00178$
                                   3750 ;	calc.c:244: (void)stack_push(&ctx->s, d0);
      003CD4 E5 08            [12] 3751 	mov	a,_bp
      003CD6 24 04            [12] 3752 	add	a,#0x04
      003CD8 F8               [12] 3753 	mov	r0,a
      003CD9 74 09            [12] 3754 	mov	a,#0x09
      003CDB 26               [12] 3755 	add	a,@r0
      003CDC FD               [12] 3756 	mov	r5,a
      003CDD E4               [12] 3757 	clr	a
      003CDE 08               [12] 3758 	inc	r0
      003CDF 36               [12] 3759 	addc	a,@r0
      003CE0 FE               [12] 3760 	mov	r6,a
      003CE1 08               [12] 3761 	inc	r0
      003CE2 86 07            [24] 3762 	mov	ar7,@r0
      003CE4 E5 08            [12] 3763 	mov	a,_bp
      003CE6 24 07            [12] 3764 	add	a,#0x07
      003CE8 F8               [12] 3765 	mov	r0,a
      003CE9 E6               [12] 3766 	mov	a,@r0
      003CEA C0 E0            [24] 3767 	push	acc
      003CEC 08               [12] 3768 	inc	r0
      003CED E6               [12] 3769 	mov	a,@r0
      003CEE C0 E0            [24] 3770 	push	acc
      003CF0 08               [12] 3771 	inc	r0
      003CF1 E6               [12] 3772 	mov	a,@r0
      003CF2 C0 E0            [24] 3773 	push	acc
      003CF4 08               [12] 3774 	inc	r0
      003CF5 E6               [12] 3775 	mov	a,@r0
      003CF6 C0 E0            [24] 3776 	push	acc
      003CF8 8D 82            [24] 3777 	mov	dpl,r5
      003CFA 8E 83            [24] 3778 	mov	dph,r6
      003CFC 8F F0            [24] 3779 	mov	b,r7
      003CFE 12 26 B5         [24] 3780 	lcall	_stack_push
      003D01 E5 81            [12] 3781 	mov	a,sp
      003D03 24 FC            [12] 3782 	add	a,#0xfc
      003D05 F5 81            [12] 3783 	mov	sp,a
                                   3784 ;	calc.c:245: printstr("\r\nstack underflow\r\n");
      003D07 7D 79            [12] 3785 	mov	r5,#___str_2
      003D09 7E 65            [12] 3786 	mov	r6,#(___str_2 >> 8)
      003D0B 7F 80            [12] 3787 	mov	r7,#0x80
                                   3788 ;	calc.c:50: return;
      003D0D                       3789 00324$:
                                   3790 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003D0D 8D 82            [24] 3791 	mov	dpl,r5
      003D0F 8E 83            [24] 3792 	mov	dph,r6
      003D11 8F F0            [24] 3793 	mov	b,r7
      003D13 12 4C E3         [24] 3794 	lcall	__gptrget
      003D16 FC               [12] 3795 	mov	r4,a
      003D17 70 03            [24] 3796 	jnz	00845$
      003D19 02 3E 24         [24] 3797 	ljmp	00188$
      003D1C                       3798 00845$:
      003D1C 7B 00            [12] 3799 	mov	r3,#0x00
      003D1E 8C 82            [24] 3800 	mov	dpl,r4
      003D20 8B 83            [24] 3801 	mov	dph,r3
      003D22 12 29 C0         [24] 3802 	lcall	_putchar
      003D25 0D               [12] 3803 	inc	r5
                                   3804 ;	calc.c:245: printstr("\r\nstack underflow\r\n");
      003D26 BD 00 E4         [24] 3805 	cjne	r5,#0x00,00324$
      003D29 0E               [12] 3806 	inc	r6
      003D2A 80 E1            [24] 3807 	sjmp	00324$
      003D2C                       3808 00178$:
                                   3809 ;	calc.c:247: d1 ^= d0;
      003D2C E5 08            [12] 3810 	mov	a,_bp
      003D2E 24 0B            [12] 3811 	add	a,#0x0b
      003D30 F8               [12] 3812 	mov	r0,a
      003D31 E5 08            [12] 3813 	mov	a,_bp
      003D33 24 07            [12] 3814 	add	a,#0x07
      003D35 F9               [12] 3815 	mov	r1,a
      003D36 E7               [12] 3816 	mov	a,@r1
      003D37 66               [12] 3817 	xrl	a,@r0
      003D38 F6               [12] 3818 	mov	@r0,a
      003D39 09               [12] 3819 	inc	r1
      003D3A E7               [12] 3820 	mov	a,@r1
      003D3B 08               [12] 3821 	inc	r0
      003D3C 66               [12] 3822 	xrl	a,@r0
      003D3D F6               [12] 3823 	mov	@r0,a
      003D3E 09               [12] 3824 	inc	r1
      003D3F E7               [12] 3825 	mov	a,@r1
      003D40 08               [12] 3826 	inc	r0
      003D41 66               [12] 3827 	xrl	a,@r0
      003D42 F6               [12] 3828 	mov	@r0,a
      003D43 09               [12] 3829 	inc	r1
      003D44 E7               [12] 3830 	mov	a,@r1
      003D45 08               [12] 3831 	inc	r0
      003D46 66               [12] 3832 	xrl	a,@r0
      003D47 F6               [12] 3833 	mov	@r0,a
                                   3834 ;	calc.c:248: (void)stack_push(&ctx->s, d1);
      003D48 E5 08            [12] 3835 	mov	a,_bp
      003D4A 24 04            [12] 3836 	add	a,#0x04
      003D4C F8               [12] 3837 	mov	r0,a
      003D4D 74 09            [12] 3838 	mov	a,#0x09
      003D4F 26               [12] 3839 	add	a,@r0
      003D50 FD               [12] 3840 	mov	r5,a
      003D51 E4               [12] 3841 	clr	a
      003D52 08               [12] 3842 	inc	r0
      003D53 36               [12] 3843 	addc	a,@r0
      003D54 FE               [12] 3844 	mov	r6,a
      003D55 08               [12] 3845 	inc	r0
      003D56 86 07            [24] 3846 	mov	ar7,@r0
      003D58 E5 08            [12] 3847 	mov	a,_bp
      003D5A 24 0B            [12] 3848 	add	a,#0x0b
      003D5C F8               [12] 3849 	mov	r0,a
      003D5D E6               [12] 3850 	mov	a,@r0
      003D5E C0 E0            [24] 3851 	push	acc
      003D60 08               [12] 3852 	inc	r0
      003D61 E6               [12] 3853 	mov	a,@r0
      003D62 C0 E0            [24] 3854 	push	acc
      003D64 08               [12] 3855 	inc	r0
      003D65 E6               [12] 3856 	mov	a,@r0
      003D66 C0 E0            [24] 3857 	push	acc
      003D68 08               [12] 3858 	inc	r0
      003D69 E6               [12] 3859 	mov	a,@r0
      003D6A C0 E0            [24] 3860 	push	acc
      003D6C 8D 82            [24] 3861 	mov	dpl,r5
      003D6E 8E 83            [24] 3862 	mov	dph,r6
      003D70 8F F0            [24] 3863 	mov	b,r7
      003D72 12 26 B5         [24] 3864 	lcall	_stack_push
      003D75 E5 81            [12] 3865 	mov	a,sp
      003D77 24 FC            [12] 3866 	add	a,#0xfc
      003D79 F5 81            [12] 3867 	mov	sp,a
                                   3868 ;	calc.c:250: break;
      003D7B 02 3E 24         [24] 3869 	ljmp	00188$
                                   3870 ;	calc.c:251: case '~':
      003D7E                       3871 00183$:
                                   3872 ;	calc.c:252: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003D7E E5 08            [12] 3873 	mov	a,_bp
      003D80 24 07            [12] 3874 	add	a,#0x07
      003D82 FF               [12] 3875 	mov	r7,a
      003D83 7E 00            [12] 3876 	mov	r6,#0x00
      003D85 7D 40            [12] 3877 	mov	r5,#0x40
      003D87 E5 08            [12] 3878 	mov	a,_bp
      003D89 24 04            [12] 3879 	add	a,#0x04
      003D8B F8               [12] 3880 	mov	r0,a
      003D8C 74 09            [12] 3881 	mov	a,#0x09
      003D8E 26               [12] 3882 	add	a,@r0
      003D8F FA               [12] 3883 	mov	r2,a
      003D90 E4               [12] 3884 	clr	a
      003D91 08               [12] 3885 	inc	r0
      003D92 36               [12] 3886 	addc	a,@r0
      003D93 FB               [12] 3887 	mov	r3,a
      003D94 08               [12] 3888 	inc	r0
      003D95 86 04            [24] 3889 	mov	ar4,@r0
      003D97 C0 07            [24] 3890 	push	ar7
      003D99 C0 06            [24] 3891 	push	ar6
      003D9B C0 05            [24] 3892 	push	ar5
      003D9D 8A 82            [24] 3893 	mov	dpl,r2
      003D9F 8B 83            [24] 3894 	mov	dph,r3
      003DA1 8C F0            [24] 3895 	mov	b,r4
      003DA3 12 27 7F         [24] 3896 	lcall	_stack_pop
      003DA6 AE 82            [24] 3897 	mov	r6,dpl
      003DA8 AF 83            [24] 3898 	mov	r7,dph
      003DAA 15 81            [12] 3899 	dec	sp
      003DAC 15 81            [12] 3900 	dec	sp
      003DAE 15 81            [12] 3901 	dec	sp
      003DB0 EE               [12] 3902 	mov	a,r6
      003DB1 4F               [12] 3903 	orl	a,r7
      003DB2 70 22            [24] 3904 	jnz	00185$
      003DB4 7D 79            [12] 3905 	mov	r5,#___str_2
      003DB6 7E 65            [12] 3906 	mov	r6,#(___str_2 >> 8)
      003DB8 7F 80            [12] 3907 	mov	r7,#0x80
                                   3908 ;	calc.c:50: return;
      003DBA                       3909 00327$:
                                   3910 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003DBA 8D 82            [24] 3911 	mov	dpl,r5
      003DBC 8E 83            [24] 3912 	mov	dph,r6
      003DBE 8F F0            [24] 3913 	mov	b,r7
      003DC0 12 4C E3         [24] 3914 	lcall	__gptrget
      003DC3 FC               [12] 3915 	mov	r4,a
      003DC4 60 5E            [24] 3916 	jz	00188$
      003DC6 7B 00            [12] 3917 	mov	r3,#0x00
      003DC8 8C 82            [24] 3918 	mov	dpl,r4
      003DCA 8B 83            [24] 3919 	mov	dph,r3
      003DCC 12 29 C0         [24] 3920 	lcall	_putchar
      003DCF 0D               [12] 3921 	inc	r5
                                   3922 ;	calc.c:252: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003DD0 BD 00 E7         [24] 3923 	cjne	r5,#0x00,00327$
      003DD3 0E               [12] 3924 	inc	r6
      003DD4 80 E4            [24] 3925 	sjmp	00327$
      003DD6                       3926 00185$:
                                   3927 ;	calc.c:254: d0 = ~d0;
      003DD6 E5 08            [12] 3928 	mov	a,_bp
      003DD8 24 07            [12] 3929 	add	a,#0x07
      003DDA F8               [12] 3930 	mov	r0,a
      003DDB E6               [12] 3931 	mov	a,@r0
      003DDC F4               [12] 3932 	cpl	a
      003DDD F6               [12] 3933 	mov	@r0,a
      003DDE 08               [12] 3934 	inc	r0
      003DDF E6               [12] 3935 	mov	a,@r0
      003DE0 F4               [12] 3936 	cpl	a
      003DE1 F6               [12] 3937 	mov	@r0,a
      003DE2 08               [12] 3938 	inc	r0
      003DE3 E6               [12] 3939 	mov	a,@r0
      003DE4 F4               [12] 3940 	cpl	a
      003DE5 F6               [12] 3941 	mov	@r0,a
      003DE6 08               [12] 3942 	inc	r0
      003DE7 E6               [12] 3943 	mov	a,@r0
      003DE8 F4               [12] 3944 	cpl	a
      003DE9 F6               [12] 3945 	mov	@r0,a
                                   3946 ;	calc.c:255: (void)stack_push(&ctx->s, d0);
      003DEA E5 08            [12] 3947 	mov	a,_bp
      003DEC 24 04            [12] 3948 	add	a,#0x04
      003DEE F8               [12] 3949 	mov	r0,a
      003DEF 74 09            [12] 3950 	mov	a,#0x09
      003DF1 26               [12] 3951 	add	a,@r0
      003DF2 FD               [12] 3952 	mov	r5,a
      003DF3 E4               [12] 3953 	clr	a
      003DF4 08               [12] 3954 	inc	r0
      003DF5 36               [12] 3955 	addc	a,@r0
      003DF6 FE               [12] 3956 	mov	r6,a
      003DF7 08               [12] 3957 	inc	r0
      003DF8 86 07            [24] 3958 	mov	ar7,@r0
      003DFA E5 08            [12] 3959 	mov	a,_bp
      003DFC 24 07            [12] 3960 	add	a,#0x07
      003DFE F8               [12] 3961 	mov	r0,a
      003DFF E6               [12] 3962 	mov	a,@r0
      003E00 C0 E0            [24] 3963 	push	acc
      003E02 08               [12] 3964 	inc	r0
      003E03 E6               [12] 3965 	mov	a,@r0
      003E04 C0 E0            [24] 3966 	push	acc
      003E06 08               [12] 3967 	inc	r0
      003E07 E6               [12] 3968 	mov	a,@r0
      003E08 C0 E0            [24] 3969 	push	acc
      003E0A 08               [12] 3970 	inc	r0
      003E0B E6               [12] 3971 	mov	a,@r0
      003E0C C0 E0            [24] 3972 	push	acc
      003E0E 8D 82            [24] 3973 	mov	dpl,r5
      003E10 8E 83            [24] 3974 	mov	dph,r6
      003E12 8F F0            [24] 3975 	mov	b,r7
      003E14 12 26 B5         [24] 3976 	lcall	_stack_push
      003E17 E5 81            [12] 3977 	mov	a,sp
      003E19 24 FC            [12] 3978 	add	a,#0xfc
      003E1B F5 81            [12] 3979 	mov	sp,a
                                   3980 ;	calc.c:257: break;
                                   3981 ;	calc.c:258: default:
      003E1D 80 05            [24] 3982 	sjmp	00188$
      003E1F                       3983 00187$:
                                   3984 ;	calc.c:259: return UNDEF;
      003E1F 90 80 00         [24] 3985 	mov	dptr,#0x8000
                                   3986 ;	calc.c:260: }
      003E22 80 03            [24] 3987 	sjmp	00329$
      003E24                       3988 00188$:
                                   3989 ;	calc.c:262: return 1;
      003E24 90 00 01         [24] 3990 	mov	dptr,#0x0001
      003E27                       3991 00329$:
                                   3992 ;	calc.c:263: }
      003E27 85 08 81         [24] 3993 	mov	sp,_bp
      003E2A D0 08            [24] 3994 	pop	_bp
      003E2C 22               [24] 3995 	ret
                                   3996 ;------------------------------------------------------------
                                   3997 ;Allocation info for local variables in function 'push_acc'
                                   3998 ;------------------------------------------------------------
                                   3999 ;delta                     Allocated to stack - _bp -5
                                   4000 ;_ctx                      Allocated to stack - _bp +5
                                   4001 ;ctx                       Allocated to registers r2 r3 r4 
                                   4002 ;__1310720061              Allocated to registers 
                                   4003 ;s                         Allocated to registers r5 r6 r7 
                                   4004 ;sloc0                     Allocated to stack - _bp +1
                                   4005 ;------------------------------------------------------------
                                   4006 ;	calc.c:265: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   4007 ;	-----------------------------------------
                                   4008 ;	 function push_acc
                                   4009 ;	-----------------------------------------
      003E2D                       4010 _push_acc:
      003E2D C0 08            [24] 4011 	push	_bp
      003E2F E5 81            [12] 4012 	mov	a,sp
      003E31 F5 08            [12] 4013 	mov	_bp,a
      003E33 24 07            [12] 4014 	add	a,#0x07
      003E35 F5 81            [12] 4015 	mov	sp,a
      003E37 C8               [12] 4016 	xch	a,r0
      003E38 E5 08            [12] 4017 	mov	a,_bp
      003E3A 24 05            [12] 4018 	add	a,#0x05
      003E3C C8               [12] 4019 	xch	a,r0
      003E3D A6 82            [24] 4020 	mov	@r0,dpl
      003E3F 08               [12] 4021 	inc	r0
      003E40 A6 83            [24] 4022 	mov	@r0,dph
      003E42 08               [12] 4023 	inc	r0
      003E43 A6 F0            [24] 4024 	mov	@r0,b
                                   4025 ;	calc.c:266: struct ctx *ctx = (struct ctx *)_ctx;
      003E45 E5 08            [12] 4026 	mov	a,_bp
      003E47 24 05            [12] 4027 	add	a,#0x05
      003E49 F8               [12] 4028 	mov	r0,a
      003E4A 86 02            [24] 4029 	mov	ar2,@r0
      003E4C 08               [12] 4030 	inc	r0
      003E4D 86 03            [24] 4031 	mov	ar3,@r0
      003E4F 08               [12] 4032 	inc	r0
      003E50 86 04            [24] 4033 	mov	ar4,@r0
                                   4034 ;	calc.c:269: ctx->acc_valid = 0;
      003E52 74 06            [12] 4035 	mov	a,#0x06
      003E54 2A               [12] 4036 	add	a,r2
      003E55 FD               [12] 4037 	mov	r5,a
      003E56 E4               [12] 4038 	clr	a
      003E57 3B               [12] 4039 	addc	a,r3
      003E58 FE               [12] 4040 	mov	r6,a
      003E59 8C 07            [24] 4041 	mov	ar7,r4
      003E5B 8D 82            [24] 4042 	mov	dpl,r5
      003E5D 8E 83            [24] 4043 	mov	dph,r6
      003E5F 8F F0            [24] 4044 	mov	b,r7
      003E61 E4               [12] 4045 	clr	a
      003E62 12 48 68         [24] 4046 	lcall	__gptrput
                                   4047 ;	calc.c:270: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
      003E65 74 02            [12] 4048 	mov	a,#0x02
      003E67 2A               [12] 4049 	add	a,r2
      003E68 FF               [12] 4050 	mov	r7,a
      003E69 E4               [12] 4051 	clr	a
      003E6A 3B               [12] 4052 	addc	a,r3
      003E6B FD               [12] 4053 	mov	r5,a
      003E6C 8C 06            [24] 4054 	mov	ar6,r4
      003E6E 8F 82            [24] 4055 	mov	dpl,r7
      003E70 8D 83            [24] 4056 	mov	dph,r5
      003E72 8E F0            [24] 4057 	mov	b,r6
      003E74 A8 08            [24] 4058 	mov	r0,_bp
      003E76 08               [12] 4059 	inc	r0
      003E77 12 4C E3         [24] 4060 	lcall	__gptrget
      003E7A F6               [12] 4061 	mov	@r0,a
      003E7B A3               [24] 4062 	inc	dptr
      003E7C 12 4C E3         [24] 4063 	lcall	__gptrget
      003E7F 08               [12] 4064 	inc	r0
      003E80 F6               [12] 4065 	mov	@r0,a
      003E81 A3               [24] 4066 	inc	dptr
      003E82 12 4C E3         [24] 4067 	lcall	__gptrget
      003E85 08               [12] 4068 	inc	r0
      003E86 F6               [12] 4069 	mov	@r0,a
      003E87 A3               [24] 4070 	inc	dptr
      003E88 12 4C E3         [24] 4071 	lcall	__gptrget
      003E8B 08               [12] 4072 	inc	r0
      003E8C F6               [12] 4073 	mov	@r0,a
      003E8D 74 09            [12] 4074 	mov	a,#0x09
      003E8F 2A               [12] 4075 	add	a,r2
      003E90 FA               [12] 4076 	mov	r2,a
      003E91 E4               [12] 4077 	clr	a
      003E92 3B               [12] 4078 	addc	a,r3
      003E93 FB               [12] 4079 	mov	r3,a
      003E94 8C 07            [24] 4080 	mov	ar7,r4
      003E96 A8 08            [24] 4081 	mov	r0,_bp
      003E98 08               [12] 4082 	inc	r0
      003E99 E6               [12] 4083 	mov	a,@r0
      003E9A C0 E0            [24] 4084 	push	acc
      003E9C 08               [12] 4085 	inc	r0
      003E9D E6               [12] 4086 	mov	a,@r0
      003E9E C0 E0            [24] 4087 	push	acc
      003EA0 08               [12] 4088 	inc	r0
      003EA1 E6               [12] 4089 	mov	a,@r0
      003EA2 C0 E0            [24] 4090 	push	acc
      003EA4 08               [12] 4091 	inc	r0
      003EA5 E6               [12] 4092 	mov	a,@r0
      003EA6 C0 E0            [24] 4093 	push	acc
      003EA8 8A 82            [24] 4094 	mov	dpl,r2
      003EAA 8B 83            [24] 4095 	mov	dph,r3
      003EAC 8F F0            [24] 4096 	mov	b,r7
      003EAE 12 26 B5         [24] 4097 	lcall	_stack_push
      003EB1 AE 82            [24] 4098 	mov	r6,dpl
      003EB3 AF 83            [24] 4099 	mov	r7,dph
      003EB5 E5 81            [12] 4100 	mov	a,sp
      003EB7 24 FC            [12] 4101 	add	a,#0xfc
      003EB9 F5 81            [12] 4102 	mov	sp,a
      003EBB EE               [12] 4103 	mov	a,r6
      003EBC 4F               [12] 4104 	orl	a,r7
      003EBD 70 22            [24] 4105 	jnz	00102$
      003EBF 7D A2            [12] 4106 	mov	r5,#___str_4
      003EC1 7E 65            [12] 4107 	mov	r6,#(___str_4 >> 8)
      003EC3 7F 80            [12] 4108 	mov	r7,#0x80
                                   4109 ;	calc.c:50: return;
      003EC5                       4110 00109$:
                                   4111 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003EC5 8D 82            [24] 4112 	mov	dpl,r5
      003EC7 8E 83            [24] 4113 	mov	dph,r6
      003EC9 8F F0            [24] 4114 	mov	b,r7
      003ECB 12 4C E3         [24] 4115 	lcall	__gptrget
      003ECE FC               [12] 4116 	mov	r4,a
      003ECF 60 10            [24] 4117 	jz	00102$
      003ED1 7B 00            [12] 4118 	mov	r3,#0x00
      003ED3 8C 82            [24] 4119 	mov	dpl,r4
      003ED5 8B 83            [24] 4120 	mov	dph,r3
      003ED7 12 29 C0         [24] 4121 	lcall	_putchar
      003EDA 0D               [12] 4122 	inc	r5
                                   4123 ;	calc.c:270: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
      003EDB BD 00 E7         [24] 4124 	cjne	r5,#0x00,00109$
      003EDE 0E               [12] 4125 	inc	r6
      003EDF 80 E4            [24] 4126 	sjmp	00109$
      003EE1                       4127 00102$:
                                   4128 ;	calc.c:272: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      003EE1 E5 08            [12] 4129 	mov	a,_bp
      003EE3 24 FB            [12] 4130 	add	a,#0xfb
      003EE5 F8               [12] 4131 	mov	r0,a
      003EE6 86 05            [24] 4132 	mov	ar5,@r0
      003EE8 08               [12] 4133 	inc	r0
      003EE9 86 06            [24] 4134 	mov	ar6,@r0
      003EEB 08               [12] 4135 	inc	r0
      003EEC 86 07            [24] 4136 	mov	ar7,@r0
      003EEE 74 02            [12] 4137 	mov	a,#0x02
      003EF0 2D               [12] 4138 	add	a,r5
      003EF1 FA               [12] 4139 	mov	r2,a
      003EF2 E4               [12] 4140 	clr	a
      003EF3 3E               [12] 4141 	addc	a,r6
      003EF4 FB               [12] 4142 	mov	r3,a
      003EF5 8F 04            [24] 4143 	mov	ar4,r7
      003EF7 8A 82            [24] 4144 	mov	dpl,r2
      003EF9 8B 83            [24] 4145 	mov	dph,r3
      003EFB 8C F0            [24] 4146 	mov	b,r4
      003EFD 12 4C E3         [24] 4147 	lcall	__gptrget
      003F00 FA               [12] 4148 	mov	r2,a
      003F01 A3               [24] 4149 	inc	dptr
      003F02 12 4C E3         [24] 4150 	lcall	__gptrget
      003F05 FB               [12] 4151 	mov	r3,a
      003F06 BA 02 29         [24] 4152 	cjne	r2,#0x02,00104$
      003F09 BB 00 26         [24] 4153 	cjne	r3,#0x00,00104$
      003F0C C0 05            [24] 4154 	push	ar5
      003F0E C0 06            [24] 4155 	push	ar6
      003F10 C0 07            [24] 4156 	push	ar7
      003F12 E5 08            [12] 4157 	mov	a,_bp
      003F14 24 05            [12] 4158 	add	a,#0x05
      003F16 F8               [12] 4159 	mov	r0,a
      003F17 86 82            [24] 4160 	mov	dpl,@r0
      003F19 08               [12] 4161 	inc	r0
      003F1A 86 83            [24] 4162 	mov	dph,@r0
      003F1C 08               [12] 4163 	inc	r0
      003F1D 86 F0            [24] 4164 	mov	b,@r0
      003F1F 12 2D 8A         [24] 4165 	lcall	_operator
      003F22 AE 82            [24] 4166 	mov	r6,dpl
      003F24 AF 83            [24] 4167 	mov	r7,dph
      003F26 15 81            [12] 4168 	dec	sp
      003F28 15 81            [12] 4169 	dec	sp
      003F2A 15 81            [12] 4170 	dec	sp
      003F2C 8E 82            [24] 4171 	mov	dpl,r6
      003F2E 8F 83            [24] 4172 	mov	dph,r7
      003F30 80 03            [24] 4173 	sjmp	00111$
      003F32                       4174 00104$:
                                   4175 ;	calc.c:273: else return 1;
      003F32 90 00 01         [24] 4176 	mov	dptr,#0x0001
      003F35                       4177 00111$:
                                   4178 ;	calc.c:274: }
      003F35 85 08 81         [24] 4179 	mov	sp,_bp
      003F38 D0 08            [24] 4180 	pop	_bp
      003F3A 22               [24] 4181 	ret
                                   4182 ;------------------------------------------------------------
                                   4183 ;Allocation info for local variables in function 'reset_acc'
                                   4184 ;------------------------------------------------------------
                                   4185 ;delta                     Allocated to stack - _bp -5
                                   4186 ;_ctx                      Allocated to registers r5 r6 r7 
                                   4187 ;ctx                       Allocated to registers r5 r6 r7 
                                   4188 ;------------------------------------------------------------
                                   4189 ;	calc.c:276: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   4190 ;	-----------------------------------------
                                   4191 ;	 function reset_acc
                                   4192 ;	-----------------------------------------
      003F3B                       4193 _reset_acc:
      003F3B C0 08            [24] 4194 	push	_bp
      003F3D 85 81 08         [24] 4195 	mov	_bp,sp
      003F40 AD 82            [24] 4196 	mov	r5,dpl
      003F42 AE 83            [24] 4197 	mov	r6,dph
      003F44 AF F0            [24] 4198 	mov	r7,b
                                   4199 ;	calc.c:277: struct ctx *ctx = (struct ctx *)_ctx;
                                   4200 ;	calc.c:279: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      003F46 E5 08            [12] 4201 	mov	a,_bp
      003F48 24 FB            [12] 4202 	add	a,#0xfb
      003F4A F8               [12] 4203 	mov	r0,a
      003F4B 86 02            [24] 4204 	mov	ar2,@r0
      003F4D 08               [12] 4205 	inc	r0
      003F4E 86 03            [24] 4206 	mov	ar3,@r0
      003F50 08               [12] 4207 	inc	r0
      003F51 86 04            [24] 4208 	mov	ar4,@r0
      003F53 74 02            [12] 4209 	mov	a,#0x02
      003F55 2A               [12] 4210 	add	a,r2
      003F56 FA               [12] 4211 	mov	r2,a
      003F57 E4               [12] 4212 	clr	a
      003F58 3B               [12] 4213 	addc	a,r3
      003F59 FB               [12] 4214 	mov	r3,a
      003F5A 8A 82            [24] 4215 	mov	dpl,r2
      003F5C 8B 83            [24] 4216 	mov	dph,r3
      003F5E 8C F0            [24] 4217 	mov	b,r4
      003F60 12 4C E3         [24] 4218 	lcall	__gptrget
      003F63 FA               [12] 4219 	mov	r2,a
      003F64 A3               [24] 4220 	inc	dptr
      003F65 12 4C E3         [24] 4221 	lcall	__gptrget
      003F68 FB               [12] 4222 	mov	r3,a
      003F69 BA 06 16         [24] 4223 	cjne	r2,#0x06,00102$
      003F6C BB 00 13         [24] 4224 	cjne	r3,#0x00,00102$
      003F6F 74 06            [12] 4225 	mov	a,#0x06
      003F71 2D               [12] 4226 	add	a,r5
      003F72 FA               [12] 4227 	mov	r2,a
      003F73 E4               [12] 4228 	clr	a
      003F74 3E               [12] 4229 	addc	a,r6
      003F75 FB               [12] 4230 	mov	r3,a
      003F76 8F 04            [24] 4231 	mov	ar4,r7
      003F78 8A 82            [24] 4232 	mov	dpl,r2
      003F7A 8B 83            [24] 4233 	mov	dph,r3
      003F7C 8C F0            [24] 4234 	mov	b,r4
      003F7E E4               [12] 4235 	clr	a
      003F7F 12 48 68         [24] 4236 	lcall	__gptrput
      003F82                       4237 00102$:
                                   4238 ;	calc.c:280: ctx->acc = 0l;
      003F82 74 02            [12] 4239 	mov	a,#0x02
      003F84 2D               [12] 4240 	add	a,r5
      003F85 FD               [12] 4241 	mov	r5,a
      003F86 E4               [12] 4242 	clr	a
      003F87 3E               [12] 4243 	addc	a,r6
      003F88 FE               [12] 4244 	mov	r6,a
      003F89 8D 82            [24] 4245 	mov	dpl,r5
      003F8B 8E 83            [24] 4246 	mov	dph,r6
      003F8D 8F F0            [24] 4247 	mov	b,r7
      003F8F E4               [12] 4248 	clr	a
      003F90 12 48 68         [24] 4249 	lcall	__gptrput
      003F93 A3               [24] 4250 	inc	dptr
      003F94 12 48 68         [24] 4251 	lcall	__gptrput
      003F97 A3               [24] 4252 	inc	dptr
      003F98 12 48 68         [24] 4253 	lcall	__gptrput
      003F9B A3               [24] 4254 	inc	dptr
      003F9C 12 48 68         [24] 4255 	lcall	__gptrput
                                   4256 ;	calc.c:282: return 1;
      003F9F 90 00 01         [24] 4257 	mov	dptr,#0x0001
                                   4258 ;	calc.c:283: }
      003FA2 D0 08            [24] 4259 	pop	_bp
      003FA4 22               [24] 4260 	ret
                                   4261 ;------------------------------------------------------------
                                   4262 ;Allocation info for local variables in function 'reset_base'
                                   4263 ;------------------------------------------------------------
                                   4264 ;delta                     Allocated to stack - _bp -5
                                   4265 ;_ctx                      Allocated to registers r5 r6 r7 
                                   4266 ;ctx                       Allocated to registers r5 r6 r7 
                                   4267 ;------------------------------------------------------------
                                   4268 ;	calc.c:285: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   4269 ;	-----------------------------------------
                                   4270 ;	 function reset_base
                                   4271 ;	-----------------------------------------
      003FA5                       4272 _reset_base:
      003FA5 C0 08            [24] 4273 	push	_bp
      003FA7 85 81 08         [24] 4274 	mov	_bp,sp
      003FAA AD 82            [24] 4275 	mov	r5,dpl
      003FAC AE 83            [24] 4276 	mov	r6,dph
      003FAE AF F0            [24] 4277 	mov	r7,b
                                   4278 ;	calc.c:286: struct ctx *ctx = (struct ctx *)_ctx;
                                   4279 ;	calc.c:288: switch (ctx->digit[0]) {
      003FB0 74 07            [12] 4280 	mov	a,#0x07
      003FB2 2D               [12] 4281 	add	a,r5
      003FB3 FA               [12] 4282 	mov	r2,a
      003FB4 E4               [12] 4283 	clr	a
      003FB5 3E               [12] 4284 	addc	a,r6
      003FB6 FB               [12] 4285 	mov	r3,a
      003FB7 8F 04            [24] 4286 	mov	ar4,r7
      003FB9 8A 82            [24] 4287 	mov	dpl,r2
      003FBB 8B 83            [24] 4288 	mov	dph,r3
      003FBD 8C F0            [24] 4289 	mov	b,r4
      003FBF 12 4C E3         [24] 4290 	lcall	__gptrget
      003FC2 FC               [12] 4291 	mov	r4,a
      003FC3 BC 48 02         [24] 4292 	cjne	r4,#0x48,00124$
      003FC6 80 0F            [24] 4293 	sjmp	00101$
      003FC8                       4294 00124$:
      003FC8 BC 4F 02         [24] 4295 	cjne	r4,#0x4f,00125$
      003FCB 80 2E            [24] 4296 	sjmp	00103$
      003FCD                       4297 00125$:
      003FCD BC 68 02         [24] 4298 	cjne	r4,#0x68,00126$
      003FD0 80 17            [24] 4299 	sjmp	00102$
      003FD2                       4300 00126$:
                                   4301 ;	calc.c:289: case 'H':
      003FD2 BC 6F 48         [24] 4302 	cjne	r4,#0x6f,00105$
      003FD5 80 36            [24] 4303 	sjmp	00104$
      003FD7                       4304 00101$:
                                   4305 ;	calc.c:290: ctx->base = 16;
      003FD7 8D 82            [24] 4306 	mov	dpl,r5
      003FD9 8E 83            [24] 4307 	mov	dph,r6
      003FDB 8F F0            [24] 4308 	mov	b,r7
      003FDD 74 10            [12] 4309 	mov	a,#0x10
      003FDF 12 48 68         [24] 4310 	lcall	__gptrput
      003FE2 A3               [24] 4311 	inc	dptr
      003FE3 E4               [12] 4312 	clr	a
      003FE4 12 48 68         [24] 4313 	lcall	__gptrput
                                   4314 ;	calc.c:291: break;
                                   4315 ;	calc.c:292: case 'h':
      003FE7 80 34            [24] 4316 	sjmp	00105$
      003FE9                       4317 00102$:
                                   4318 ;	calc.c:293: ctx->base = 10;
      003FE9 8D 82            [24] 4319 	mov	dpl,r5
      003FEB 8E 83            [24] 4320 	mov	dph,r6
      003FED 8F F0            [24] 4321 	mov	b,r7
      003FEF 74 0A            [12] 4322 	mov	a,#0x0a
      003FF1 12 48 68         [24] 4323 	lcall	__gptrput
      003FF4 A3               [24] 4324 	inc	dptr
      003FF5 E4               [12] 4325 	clr	a
      003FF6 12 48 68         [24] 4326 	lcall	__gptrput
                                   4327 ;	calc.c:294: break;
                                   4328 ;	calc.c:295: case 'O':
      003FF9 80 22            [24] 4329 	sjmp	00105$
      003FFB                       4330 00103$:
                                   4331 ;	calc.c:296: ctx->base = 8;
      003FFB 8D 82            [24] 4332 	mov	dpl,r5
      003FFD 8E 83            [24] 4333 	mov	dph,r6
      003FFF 8F F0            [24] 4334 	mov	b,r7
      004001 74 08            [12] 4335 	mov	a,#0x08
      004003 12 48 68         [24] 4336 	lcall	__gptrput
      004006 A3               [24] 4337 	inc	dptr
      004007 E4               [12] 4338 	clr	a
      004008 12 48 68         [24] 4339 	lcall	__gptrput
                                   4340 ;	calc.c:297: break;
                                   4341 ;	calc.c:298: case 'o':
      00400B 80 10            [24] 4342 	sjmp	00105$
      00400D                       4343 00104$:
                                   4344 ;	calc.c:299: ctx->base = 2;
      00400D 8D 82            [24] 4345 	mov	dpl,r5
      00400F 8E 83            [24] 4346 	mov	dph,r6
      004011 8F F0            [24] 4347 	mov	b,r7
      004013 74 02            [12] 4348 	mov	a,#0x02
      004015 12 48 68         [24] 4349 	lcall	__gptrput
      004018 A3               [24] 4350 	inc	dptr
      004019 E4               [12] 4351 	clr	a
      00401A 12 48 68         [24] 4352 	lcall	__gptrput
                                   4353 ;	calc.c:301: }
      00401D                       4354 00105$:
                                   4355 ;	calc.c:303: return 1;
      00401D 90 00 01         [24] 4356 	mov	dptr,#0x0001
                                   4357 ;	calc.c:304: }
      004020 D0 08            [24] 4358 	pop	_bp
      004022 22               [24] 4359 	ret
                                   4360 ;------------------------------------------------------------
                                   4361 ;Allocation info for local variables in function 'help'
                                   4362 ;------------------------------------------------------------
                                   4363 ;delta                     Allocated to stack - _bp -5
                                   4364 ;_ctx                      Allocated to registers r5 r6 r7 
                                   4365 ;ctx                       Allocated to stack - _bp +3
                                   4366 ;__1310720063              Allocated to registers 
                                   4367 ;s                         Allocated to registers r5 r6 r7 
                                   4368 ;__1310720065              Allocated to registers 
                                   4369 ;s                         Allocated to registers r5 r6 r7 
                                   4370 ;__1310720067              Allocated to registers 
                                   4371 ;s                         Allocated to registers r5 r6 r7 
                                   4372 ;__1310720069              Allocated to registers 
                                   4373 ;s                         Allocated to registers r5 r6 r7 
                                   4374 ;__1310720071              Allocated to registers 
                                   4375 ;s                         Allocated to registers r5 r6 r7 
                                   4376 ;__1310720073              Allocated to registers 
                                   4377 ;s                         Allocated to registers r5 r6 r7 
                                   4378 ;__1310720075              Allocated to registers 
                                   4379 ;s                         Allocated to registers r5 r6 r7 
                                   4380 ;__1310720077              Allocated to registers 
                                   4381 ;s                         Allocated to registers r5 r6 r7 
                                   4382 ;__1310720079              Allocated to registers 
                                   4383 ;s                         Allocated to registers r5 r6 r7 
                                   4384 ;__1310720081              Allocated to registers 
                                   4385 ;s                         Allocated to registers r5 r6 r7 
                                   4386 ;__1310720083              Allocated to registers 
                                   4387 ;s                         Allocated to registers r5 r6 r7 
                                   4388 ;__1310720085              Allocated to registers 
                                   4389 ;s                         Allocated to registers r5 r6 r7 
                                   4390 ;__1310720087              Allocated to registers 
                                   4391 ;s                         Allocated to registers r5 r6 r7 
                                   4392 ;__1310720089              Allocated to registers 
                                   4393 ;s                         Allocated to registers r5 r6 r7 
                                   4394 ;__1310720091              Allocated to registers 
                                   4395 ;s                         Allocated to registers r5 r6 r7 
                                   4396 ;__1310720093              Allocated to registers 
                                   4397 ;s                         Allocated to registers r5 r6 r7 
                                   4398 ;__1310720095              Allocated to registers 
                                   4399 ;s                         Allocated to registers r5 r6 r7 
                                   4400 ;__1310720097              Allocated to registers 
                                   4401 ;s                         Allocated to registers r5 r6 r7 
                                   4402 ;__1310720099              Allocated to registers 
                                   4403 ;s                         Allocated to registers r5 r6 r7 
                                   4404 ;sloc0                     Allocated to stack - _bp +1
                                   4405 ;------------------------------------------------------------
                                   4406 ;	calc.c:306: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   4407 ;	-----------------------------------------
                                   4408 ;	 function help
                                   4409 ;	-----------------------------------------
      004023                       4410 _help:
      004023 C0 08            [24] 4411 	push	_bp
      004025 E5 81            [12] 4412 	mov	a,sp
      004027 F5 08            [12] 4413 	mov	_bp,a
      004029 24 05            [12] 4414 	add	a,#0x05
      00402B F5 81            [12] 4415 	mov	sp,a
      00402D AD 82            [24] 4416 	mov	r5,dpl
      00402F AE 83            [24] 4417 	mov	r6,dph
      004031 AF F0            [24] 4418 	mov	r7,b
                                   4419 ;	calc.c:307: struct ctx *ctx = (struct ctx *)_ctx;
      004033 E5 08            [12] 4420 	mov	a,_bp
      004035 24 03            [12] 4421 	add	a,#0x03
      004037 F8               [12] 4422 	mov	r0,a
      004038 A6 05            [24] 4423 	mov	@r0,ar5
      00403A 08               [12] 4424 	inc	r0
      00403B A6 06            [24] 4425 	mov	@r0,ar6
      00403D 08               [12] 4426 	inc	r0
      00403E A6 07            [24] 4427 	mov	@r0,ar7
                                   4428 ;	calc.c:311: ctx->base, ctx->acc, ctx->acc, (int)ctx->acc_valid);
      004040 E5 08            [12] 4429 	mov	a,_bp
      004042 24 03            [12] 4430 	add	a,#0x03
      004044 F8               [12] 4431 	mov	r0,a
      004045 74 06            [12] 4432 	mov	a,#0x06
      004047 26               [12] 4433 	add	a,@r0
      004048 FA               [12] 4434 	mov	r2,a
      004049 E4               [12] 4435 	clr	a
      00404A 08               [12] 4436 	inc	r0
      00404B 36               [12] 4437 	addc	a,@r0
      00404C FB               [12] 4438 	mov	r3,a
      00404D 08               [12] 4439 	inc	r0
      00404E 86 04            [24] 4440 	mov	ar4,@r0
      004050 8A 82            [24] 4441 	mov	dpl,r2
      004052 8B 83            [24] 4442 	mov	dph,r3
      004054 8C F0            [24] 4443 	mov	b,r4
      004056 12 4C E3         [24] 4444 	lcall	__gptrget
      004059 FA               [12] 4445 	mov	r2,a
      00405A A8 08            [24] 4446 	mov	r0,_bp
      00405C 08               [12] 4447 	inc	r0
      00405D A6 02            [24] 4448 	mov	@r0,ar2
      00405F 08               [12] 4449 	inc	r0
      004060 76 00            [12] 4450 	mov	@r0,#0x00
      004062 E5 08            [12] 4451 	mov	a,_bp
      004064 24 03            [12] 4452 	add	a,#0x03
      004066 F8               [12] 4453 	mov	r0,a
      004067 74 02            [12] 4454 	mov	a,#0x02
      004069 26               [12] 4455 	add	a,@r0
      00406A FB               [12] 4456 	mov	r3,a
      00406B E4               [12] 4457 	clr	a
      00406C 08               [12] 4458 	inc	r0
      00406D 36               [12] 4459 	addc	a,@r0
      00406E FE               [12] 4460 	mov	r6,a
      00406F 08               [12] 4461 	inc	r0
      004070 86 07            [24] 4462 	mov	ar7,@r0
      004072 8B 82            [24] 4463 	mov	dpl,r3
      004074 8E 83            [24] 4464 	mov	dph,r6
      004076 8F F0            [24] 4465 	mov	b,r7
      004078 12 4C E3         [24] 4466 	lcall	__gptrget
      00407B FB               [12] 4467 	mov	r3,a
      00407C A3               [24] 4468 	inc	dptr
      00407D 12 4C E3         [24] 4469 	lcall	__gptrget
      004080 FE               [12] 4470 	mov	r6,a
      004081 A3               [24] 4471 	inc	dptr
      004082 12 4C E3         [24] 4472 	lcall	__gptrget
      004085 FF               [12] 4473 	mov	r7,a
      004086 A3               [24] 4474 	inc	dptr
      004087 12 4C E3         [24] 4475 	lcall	__gptrget
      00408A FD               [12] 4476 	mov	r5,a
      00408B E5 08            [12] 4477 	mov	a,_bp
      00408D 24 03            [12] 4478 	add	a,#0x03
      00408F F8               [12] 4479 	mov	r0,a
      004090 86 82            [24] 4480 	mov	dpl,@r0
      004092 08               [12] 4481 	inc	r0
      004093 86 83            [24] 4482 	mov	dph,@r0
      004095 08               [12] 4483 	inc	r0
      004096 86 F0            [24] 4484 	mov	b,@r0
      004098 12 4C E3         [24] 4485 	lcall	__gptrget
      00409B FA               [12] 4486 	mov	r2,a
      00409C A3               [24] 4487 	inc	dptr
      00409D 12 4C E3         [24] 4488 	lcall	__gptrget
      0040A0 FC               [12] 4489 	mov	r4,a
                                   4490 ;	calc.c:310: printf("\r\nbase = %d, acc = %ld / %0.8lx, acc_valid = %d\r\n\r\n",
      0040A1 A8 08            [24] 4491 	mov	r0,_bp
      0040A3 08               [12] 4492 	inc	r0
      0040A4 E6               [12] 4493 	mov	a,@r0
      0040A5 C0 E0            [24] 4494 	push	acc
      0040A7 08               [12] 4495 	inc	r0
      0040A8 E6               [12] 4496 	mov	a,@r0
      0040A9 C0 E0            [24] 4497 	push	acc
      0040AB C0 03            [24] 4498 	push	ar3
      0040AD C0 06            [24] 4499 	push	ar6
      0040AF C0 07            [24] 4500 	push	ar7
      0040B1 C0 05            [24] 4501 	push	ar5
      0040B3 C0 03            [24] 4502 	push	ar3
      0040B5 C0 06            [24] 4503 	push	ar6
      0040B7 C0 07            [24] 4504 	push	ar7
      0040B9 C0 05            [24] 4505 	push	ar5
      0040BB C0 02            [24] 4506 	push	ar2
      0040BD C0 04            [24] 4507 	push	ar4
      0040BF 74 B5            [12] 4508 	mov	a,#___str_5
      0040C1 C0 E0            [24] 4509 	push	acc
      0040C3 74 65            [12] 4510 	mov	a,#(___str_5 >> 8)
      0040C5 C0 E0            [24] 4511 	push	acc
      0040C7 74 80            [12] 4512 	mov	a,#0x80
      0040C9 C0 E0            [24] 4513 	push	acc
      0040CB 12 4C AA         [24] 4514 	lcall	_printf
      0040CE E5 81            [12] 4515 	mov	a,sp
      0040D0 24 F1            [12] 4516 	add	a,#0xf1
      0040D2 F5 81            [12] 4517 	mov	sp,a
                                   4518 ;	calc.c:312: printstr("HhOo\tbase 16 10 8 2\r\n");
      0040D4 7D E9            [12] 4519 	mov	r5,#___str_6
      0040D6 7E 65            [12] 4520 	mov	r6,#(___str_6 >> 8)
      0040D8 7F 80            [12] 4521 	mov	r7,#0x80
                                   4522 ;	calc.c:50: return;
      0040DA                       4523 00140$:
                                   4524 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0040DA 8D 82            [24] 4525 	mov	dpl,r5
      0040DC 8E 83            [24] 4526 	mov	dph,r6
      0040DE 8F F0            [24] 4527 	mov	b,r7
      0040E0 12 4C E3         [24] 4528 	lcall	__gptrget
      0040E3 FC               [12] 4529 	mov	r4,a
      0040E4 60 10            [24] 4530 	jz	00102$
      0040E6 7B 00            [12] 4531 	mov	r3,#0x00
      0040E8 8C 82            [24] 4532 	mov	dpl,r4
      0040EA 8B 83            [24] 4533 	mov	dph,r3
      0040EC 12 29 C0         [24] 4534 	lcall	_putchar
      0040EF 0D               [12] 4535 	inc	r5
                                   4536 ;	calc.c:312: printstr("HhOo\tbase 16 10 8 2\r\n");
      0040F0 BD 00 E7         [24] 4537 	cjne	r5,#0x00,00140$
      0040F3 0E               [12] 4538 	inc	r6
      0040F4 80 E4            [24] 4539 	sjmp	00140$
      0040F6                       4540 00102$:
                                   4541 ;	calc.c:313: printstr("p\tpeek top\r\n");
      0040F6 7D FF            [12] 4542 	mov	r5,#___str_7
      0040F8 7E 65            [12] 4543 	mov	r6,#(___str_7 >> 8)
      0040FA 7F 80            [12] 4544 	mov	r7,#0x80
                                   4545 ;	calc.c:50: return;
      0040FC                       4546 00143$:
                                   4547 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0040FC 8D 82            [24] 4548 	mov	dpl,r5
      0040FE 8E 83            [24] 4549 	mov	dph,r6
      004100 8F F0            [24] 4550 	mov	b,r7
      004102 12 4C E3         [24] 4551 	lcall	__gptrget
      004105 FC               [12] 4552 	mov	r4,a
      004106 60 10            [24] 4553 	jz	00104$
      004108 7B 00            [12] 4554 	mov	r3,#0x00
      00410A 8C 82            [24] 4555 	mov	dpl,r4
      00410C 8B 83            [24] 4556 	mov	dph,r3
      00410E 12 29 C0         [24] 4557 	lcall	_putchar
      004111 0D               [12] 4558 	inc	r5
                                   4559 ;	calc.c:313: printstr("p\tpeek top\r\n");
      004112 BD 00 E7         [24] 4560 	cjne	r5,#0x00,00143$
      004115 0E               [12] 4561 	inc	r6
      004116 80 E4            [24] 4562 	sjmp	00143$
      004118                       4563 00104$:
                                   4564 ;	calc.c:314: printstr("P\tprint stack\r\n");
      004118 7D 0C            [12] 4565 	mov	r5,#___str_8
      00411A 7E 66            [12] 4566 	mov	r6,#(___str_8 >> 8)
      00411C 7F 80            [12] 4567 	mov	r7,#0x80
                                   4568 ;	calc.c:50: return;
      00411E                       4569 00146$:
                                   4570 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00411E 8D 82            [24] 4571 	mov	dpl,r5
      004120 8E 83            [24] 4572 	mov	dph,r6
      004122 8F F0            [24] 4573 	mov	b,r7
      004124 12 4C E3         [24] 4574 	lcall	__gptrget
      004127 FC               [12] 4575 	mov	r4,a
      004128 60 10            [24] 4576 	jz	00106$
      00412A 7B 00            [12] 4577 	mov	r3,#0x00
      00412C 8C 82            [24] 4578 	mov	dpl,r4
      00412E 8B 83            [24] 4579 	mov	dph,r3
      004130 12 29 C0         [24] 4580 	lcall	_putchar
      004133 0D               [12] 4581 	inc	r5
                                   4582 ;	calc.c:314: printstr("P\tprint stack\r\n");
      004134 BD 00 E7         [24] 4583 	cjne	r5,#0x00,00146$
      004137 0E               [12] 4584 	inc	r6
      004138 80 E4            [24] 4585 	sjmp	00146$
      00413A                       4586 00106$:
                                   4587 ;	calc.c:315: printstr("v.\tpop top\r\n");
      00413A 7D 1C            [12] 4588 	mov	r5,#___str_9
      00413C 7E 66            [12] 4589 	mov	r6,#(___str_9 >> 8)
      00413E 7F 80            [12] 4590 	mov	r7,#0x80
                                   4591 ;	calc.c:50: return;
      004140                       4592 00149$:
                                   4593 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004140 8D 82            [24] 4594 	mov	dpl,r5
      004142 8E 83            [24] 4595 	mov	dph,r6
      004144 8F F0            [24] 4596 	mov	b,r7
      004146 12 4C E3         [24] 4597 	lcall	__gptrget
      004149 FC               [12] 4598 	mov	r4,a
      00414A 60 10            [24] 4599 	jz	00108$
      00414C 7B 00            [12] 4600 	mov	r3,#0x00
      00414E 8C 82            [24] 4601 	mov	dpl,r4
      004150 8B 83            [24] 4602 	mov	dph,r3
      004152 12 29 C0         [24] 4603 	lcall	_putchar
      004155 0D               [12] 4604 	inc	r5
                                   4605 ;	calc.c:315: printstr("v.\tpop top\r\n");
      004156 BD 00 E7         [24] 4606 	cjne	r5,#0x00,00149$
      004159 0E               [12] 4607 	inc	r6
      00415A 80 E4            [24] 4608 	sjmp	00149$
      00415C                       4609 00108$:
                                   4610 ;	calc.c:316: printstr("V\tpop all\r\n");
      00415C 7D 29            [12] 4611 	mov	r5,#___str_10
      00415E 7E 66            [12] 4612 	mov	r6,#(___str_10 >> 8)
      004160 7F 80            [12] 4613 	mov	r7,#0x80
                                   4614 ;	calc.c:50: return;
      004162                       4615 00152$:
                                   4616 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004162 8D 82            [24] 4617 	mov	dpl,r5
      004164 8E 83            [24] 4618 	mov	dph,r6
      004166 8F F0            [24] 4619 	mov	b,r7
      004168 12 4C E3         [24] 4620 	lcall	__gptrget
      00416B FC               [12] 4621 	mov	r4,a
      00416C 60 10            [24] 4622 	jz	00110$
      00416E 7B 00            [12] 4623 	mov	r3,#0x00
      004170 8C 82            [24] 4624 	mov	dpl,r4
      004172 8B 83            [24] 4625 	mov	dph,r3
      004174 12 29 C0         [24] 4626 	lcall	_putchar
      004177 0D               [12] 4627 	inc	r5
                                   4628 ;	calc.c:316: printstr("V\tpop all\r\n");
      004178 BD 00 E7         [24] 4629 	cjne	r5,#0x00,00152$
      00417B 0E               [12] 4630 	inc	r6
      00417C 80 E4            [24] 4631 	sjmp	00152$
      00417E                       4632 00110$:
                                   4633 ;	calc.c:317: printstr("i\treset acc\r\n");
      00417E 7D 35            [12] 4634 	mov	r5,#___str_11
      004180 7E 66            [12] 4635 	mov	r6,#(___str_11 >> 8)
      004182 7F 80            [12] 4636 	mov	r7,#0x80
                                   4637 ;	calc.c:50: return;
      004184                       4638 00155$:
                                   4639 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004184 8D 82            [24] 4640 	mov	dpl,r5
      004186 8E 83            [24] 4641 	mov	dph,r6
      004188 8F F0            [24] 4642 	mov	b,r7
      00418A 12 4C E3         [24] 4643 	lcall	__gptrget
      00418D FC               [12] 4644 	mov	r4,a
      00418E 60 10            [24] 4645 	jz	00112$
      004190 7B 00            [12] 4646 	mov	r3,#0x00
      004192 8C 82            [24] 4647 	mov	dpl,r4
      004194 8B 83            [24] 4648 	mov	dph,r3
      004196 12 29 C0         [24] 4649 	lcall	_putchar
      004199 0D               [12] 4650 	inc	r5
                                   4651 ;	calc.c:317: printstr("i\treset acc\r\n");
      00419A BD 00 E7         [24] 4652 	cjne	r5,#0x00,00155$
      00419D 0E               [12] 4653 	inc	r6
      00419E 80 E4            [24] 4654 	sjmp	00155$
      0041A0                       4655 00112$:
                                   4656 ;	calc.c:318: printstr("I\treset and discard acc\r\n");
      0041A0 7D 43            [12] 4657 	mov	r5,#___str_12
      0041A2 7E 66            [12] 4658 	mov	r6,#(___str_12 >> 8)
      0041A4 7F 80            [12] 4659 	mov	r7,#0x80
                                   4660 ;	calc.c:50: return;
      0041A6                       4661 00158$:
                                   4662 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0041A6 8D 82            [24] 4663 	mov	dpl,r5
      0041A8 8E 83            [24] 4664 	mov	dph,r6
      0041AA 8F F0            [24] 4665 	mov	b,r7
      0041AC 12 4C E3         [24] 4666 	lcall	__gptrget
      0041AF FC               [12] 4667 	mov	r4,a
      0041B0 60 10            [24] 4668 	jz	00114$
      0041B2 7B 00            [12] 4669 	mov	r3,#0x00
      0041B4 8C 82            [24] 4670 	mov	dpl,r4
      0041B6 8B 83            [24] 4671 	mov	dph,r3
      0041B8 12 29 C0         [24] 4672 	lcall	_putchar
      0041BB 0D               [12] 4673 	inc	r5
                                   4674 ;	calc.c:318: printstr("I\treset and discard acc\r\n");
      0041BC BD 00 E7         [24] 4675 	cjne	r5,#0x00,00158$
      0041BF 0E               [12] 4676 	inc	r6
      0041C0 80 E4            [24] 4677 	sjmp	00158$
      0041C2                       4678 00114$:
                                   4679 ;	calc.c:319: printstr("x\texchange top 2\r\n");
      0041C2 7D 5D            [12] 4680 	mov	r5,#___str_13
      0041C4 7E 66            [12] 4681 	mov	r6,#(___str_13 >> 8)
      0041C6 7F 80            [12] 4682 	mov	r7,#0x80
                                   4683 ;	calc.c:50: return;
      0041C8                       4684 00161$:
                                   4685 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0041C8 8D 82            [24] 4686 	mov	dpl,r5
      0041CA 8E 83            [24] 4687 	mov	dph,r6
      0041CC 8F F0            [24] 4688 	mov	b,r7
      0041CE 12 4C E3         [24] 4689 	lcall	__gptrget
      0041D1 FC               [12] 4690 	mov	r4,a
      0041D2 60 10            [24] 4691 	jz	00116$
      0041D4 7B 00            [12] 4692 	mov	r3,#0x00
      0041D6 8C 82            [24] 4693 	mov	dpl,r4
      0041D8 8B 83            [24] 4694 	mov	dph,r3
      0041DA 12 29 C0         [24] 4695 	lcall	_putchar
      0041DD 0D               [12] 4696 	inc	r5
                                   4697 ;	calc.c:319: printstr("x\texchange top 2\r\n");
      0041DE BD 00 E7         [24] 4698 	cjne	r5,#0x00,00161$
      0041E1 0E               [12] 4699 	inc	r6
      0041E2 80 E4            [24] 4700 	sjmp	00161$
      0041E4                       4701 00116$:
                                   4702 ;	calc.c:320: printstr("+\tadd top 2\r\n");
      0041E4 7D 70            [12] 4703 	mov	r5,#___str_14
      0041E6 7E 66            [12] 4704 	mov	r6,#(___str_14 >> 8)
      0041E8 7F 80            [12] 4705 	mov	r7,#0x80
                                   4706 ;	calc.c:50: return;
      0041EA                       4707 00164$:
                                   4708 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0041EA 8D 82            [24] 4709 	mov	dpl,r5
      0041EC 8E 83            [24] 4710 	mov	dph,r6
      0041EE 8F F0            [24] 4711 	mov	b,r7
      0041F0 12 4C E3         [24] 4712 	lcall	__gptrget
      0041F3 FC               [12] 4713 	mov	r4,a
      0041F4 60 10            [24] 4714 	jz	00118$
      0041F6 7B 00            [12] 4715 	mov	r3,#0x00
      0041F8 8C 82            [24] 4716 	mov	dpl,r4
      0041FA 8B 83            [24] 4717 	mov	dph,r3
      0041FC 12 29 C0         [24] 4718 	lcall	_putchar
      0041FF 0D               [12] 4719 	inc	r5
                                   4720 ;	calc.c:320: printstr("+\tadd top 2\r\n");
      004200 BD 00 E7         [24] 4721 	cjne	r5,#0x00,00164$
      004203 0E               [12] 4722 	inc	r6
      004204 80 E4            [24] 4723 	sjmp	00164$
      004206                       4724 00118$:
                                   4725 ;	calc.c:321: printstr("-\tsubtract top 2\r\n");
      004206 7D 7E            [12] 4726 	mov	r5,#___str_15
      004208 7E 66            [12] 4727 	mov	r6,#(___str_15 >> 8)
      00420A 7F 80            [12] 4728 	mov	r7,#0x80
                                   4729 ;	calc.c:50: return;
      00420C                       4730 00167$:
                                   4731 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00420C 8D 82            [24] 4732 	mov	dpl,r5
      00420E 8E 83            [24] 4733 	mov	dph,r6
      004210 8F F0            [24] 4734 	mov	b,r7
      004212 12 4C E3         [24] 4735 	lcall	__gptrget
      004215 FC               [12] 4736 	mov	r4,a
      004216 60 10            [24] 4737 	jz	00120$
      004218 7B 00            [12] 4738 	mov	r3,#0x00
      00421A 8C 82            [24] 4739 	mov	dpl,r4
      00421C 8B 83            [24] 4740 	mov	dph,r3
      00421E 12 29 C0         [24] 4741 	lcall	_putchar
      004221 0D               [12] 4742 	inc	r5
                                   4743 ;	calc.c:321: printstr("-\tsubtract top 2\r\n");
      004222 BD 00 E7         [24] 4744 	cjne	r5,#0x00,00167$
      004225 0E               [12] 4745 	inc	r6
      004226 80 E4            [24] 4746 	sjmp	00167$
      004228                       4747 00120$:
                                   4748 ;	calc.c:322: printstr("*\tmultiply top 2\r\n");
      004228 7D 91            [12] 4749 	mov	r5,#___str_16
      00422A 7E 66            [12] 4750 	mov	r6,#(___str_16 >> 8)
      00422C 7F 80            [12] 4751 	mov	r7,#0x80
                                   4752 ;	calc.c:50: return;
      00422E                       4753 00170$:
                                   4754 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00422E 8D 82            [24] 4755 	mov	dpl,r5
      004230 8E 83            [24] 4756 	mov	dph,r6
      004232 8F F0            [24] 4757 	mov	b,r7
      004234 12 4C E3         [24] 4758 	lcall	__gptrget
      004237 FC               [12] 4759 	mov	r4,a
      004238 60 10            [24] 4760 	jz	00122$
      00423A 7B 00            [12] 4761 	mov	r3,#0x00
      00423C 8C 82            [24] 4762 	mov	dpl,r4
      00423E 8B 83            [24] 4763 	mov	dph,r3
      004240 12 29 C0         [24] 4764 	lcall	_putchar
      004243 0D               [12] 4765 	inc	r5
                                   4766 ;	calc.c:322: printstr("*\tmultiply top 2\r\n");
      004244 BD 00 E7         [24] 4767 	cjne	r5,#0x00,00170$
      004247 0E               [12] 4768 	inc	r6
      004248 80 E4            [24] 4769 	sjmp	00170$
      00424A                       4770 00122$:
                                   4771 ;	calc.c:323: printstr("/\tdivide top 2\r\n");
      00424A 7D A4            [12] 4772 	mov	r5,#___str_17
      00424C 7E 66            [12] 4773 	mov	r6,#(___str_17 >> 8)
      00424E 7F 80            [12] 4774 	mov	r7,#0x80
                                   4775 ;	calc.c:50: return;
      004250                       4776 00173$:
                                   4777 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004250 8D 82            [24] 4778 	mov	dpl,r5
      004252 8E 83            [24] 4779 	mov	dph,r6
      004254 8F F0            [24] 4780 	mov	b,r7
      004256 12 4C E3         [24] 4781 	lcall	__gptrget
      004259 FC               [12] 4782 	mov	r4,a
      00425A 60 10            [24] 4783 	jz	00124$
      00425C 7B 00            [12] 4784 	mov	r3,#0x00
      00425E 8C 82            [24] 4785 	mov	dpl,r4
      004260 8B 83            [24] 4786 	mov	dph,r3
      004262 12 29 C0         [24] 4787 	lcall	_putchar
      004265 0D               [12] 4788 	inc	r5
                                   4789 ;	calc.c:323: printstr("/\tdivide top 2\r\n");
      004266 BD 00 E7         [24] 4790 	cjne	r5,#0x00,00173$
      004269 0E               [12] 4791 	inc	r6
      00426A 80 E4            [24] 4792 	sjmp	00173$
      00426C                       4793 00124$:
                                   4794 ;	calc.c:324: printstr("%\tmodulus top 2\r\n");
      00426C 7D B5            [12] 4795 	mov	r5,#___str_18
      00426E 7E 66            [12] 4796 	mov	r6,#(___str_18 >> 8)
      004270 7F 80            [12] 4797 	mov	r7,#0x80
                                   4798 ;	calc.c:50: return;
      004272                       4799 00176$:
                                   4800 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004272 8D 82            [24] 4801 	mov	dpl,r5
      004274 8E 83            [24] 4802 	mov	dph,r6
      004276 8F F0            [24] 4803 	mov	b,r7
      004278 12 4C E3         [24] 4804 	lcall	__gptrget
      00427B FC               [12] 4805 	mov	r4,a
      00427C 60 10            [24] 4806 	jz	00126$
      00427E 7B 00            [12] 4807 	mov	r3,#0x00
      004280 8C 82            [24] 4808 	mov	dpl,r4
      004282 8B 83            [24] 4809 	mov	dph,r3
      004284 12 29 C0         [24] 4810 	lcall	_putchar
      004287 0D               [12] 4811 	inc	r5
                                   4812 ;	calc.c:324: printstr("%\tmodulus top 2\r\n");
      004288 BD 00 E7         [24] 4813 	cjne	r5,#0x00,00176$
      00428B 0E               [12] 4814 	inc	r6
      00428C 80 E4            [24] 4815 	sjmp	00176$
      00428E                       4816 00126$:
                                   4817 ;	calc.c:325: printstr("&\tand top 2\r\n");
      00428E 7D C7            [12] 4818 	mov	r5,#___str_19
      004290 7E 66            [12] 4819 	mov	r6,#(___str_19 >> 8)
      004292 7F 80            [12] 4820 	mov	r7,#0x80
                                   4821 ;	calc.c:50: return;
      004294                       4822 00179$:
                                   4823 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004294 8D 82            [24] 4824 	mov	dpl,r5
      004296 8E 83            [24] 4825 	mov	dph,r6
      004298 8F F0            [24] 4826 	mov	b,r7
      00429A 12 4C E3         [24] 4827 	lcall	__gptrget
      00429D FC               [12] 4828 	mov	r4,a
      00429E 60 10            [24] 4829 	jz	00128$
      0042A0 7B 00            [12] 4830 	mov	r3,#0x00
      0042A2 8C 82            [24] 4831 	mov	dpl,r4
      0042A4 8B 83            [24] 4832 	mov	dph,r3
      0042A6 12 29 C0         [24] 4833 	lcall	_putchar
      0042A9 0D               [12] 4834 	inc	r5
                                   4835 ;	calc.c:325: printstr("&\tand top 2\r\n");
      0042AA BD 00 E7         [24] 4836 	cjne	r5,#0x00,00179$
      0042AD 0E               [12] 4837 	inc	r6
      0042AE 80 E4            [24] 4838 	sjmp	00179$
      0042B0                       4839 00128$:
                                   4840 ;	calc.c:326: printstr("|\tor top 2\r\n");
      0042B0 7D D5            [12] 4841 	mov	r5,#___str_20
      0042B2 7E 66            [12] 4842 	mov	r6,#(___str_20 >> 8)
      0042B4 7F 80            [12] 4843 	mov	r7,#0x80
                                   4844 ;	calc.c:50: return;
      0042B6                       4845 00182$:
                                   4846 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0042B6 8D 82            [24] 4847 	mov	dpl,r5
      0042B8 8E 83            [24] 4848 	mov	dph,r6
      0042BA 8F F0            [24] 4849 	mov	b,r7
      0042BC 12 4C E3         [24] 4850 	lcall	__gptrget
      0042BF FC               [12] 4851 	mov	r4,a
      0042C0 60 10            [24] 4852 	jz	00130$
      0042C2 7B 00            [12] 4853 	mov	r3,#0x00
      0042C4 8C 82            [24] 4854 	mov	dpl,r4
      0042C6 8B 83            [24] 4855 	mov	dph,r3
      0042C8 12 29 C0         [24] 4856 	lcall	_putchar
      0042CB 0D               [12] 4857 	inc	r5
                                   4858 ;	calc.c:326: printstr("|\tor top 2\r\n");
      0042CC BD 00 E7         [24] 4859 	cjne	r5,#0x00,00182$
      0042CF 0E               [12] 4860 	inc	r6
      0042D0 80 E4            [24] 4861 	sjmp	00182$
      0042D2                       4862 00130$:
                                   4863 ;	calc.c:327: printstr("^\txor top 2\r\n");
      0042D2 7D E2            [12] 4864 	mov	r5,#___str_21
      0042D4 7E 66            [12] 4865 	mov	r6,#(___str_21 >> 8)
      0042D6 7F 80            [12] 4866 	mov	r7,#0x80
                                   4867 ;	calc.c:50: return;
      0042D8                       4868 00185$:
                                   4869 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0042D8 8D 82            [24] 4870 	mov	dpl,r5
      0042DA 8E 83            [24] 4871 	mov	dph,r6
      0042DC 8F F0            [24] 4872 	mov	b,r7
      0042DE 12 4C E3         [24] 4873 	lcall	__gptrget
      0042E1 FC               [12] 4874 	mov	r4,a
      0042E2 60 10            [24] 4875 	jz	00132$
      0042E4 7B 00            [12] 4876 	mov	r3,#0x00
      0042E6 8C 82            [24] 4877 	mov	dpl,r4
      0042E8 8B 83            [24] 4878 	mov	dph,r3
      0042EA 12 29 C0         [24] 4879 	lcall	_putchar
      0042ED 0D               [12] 4880 	inc	r5
                                   4881 ;	calc.c:327: printstr("^\txor top 2\r\n");
      0042EE BD 00 E7         [24] 4882 	cjne	r5,#0x00,00185$
      0042F1 0E               [12] 4883 	inc	r6
      0042F2 80 E4            [24] 4884 	sjmp	00185$
      0042F4                       4885 00132$:
                                   4886 ;	calc.c:328: printstr("~\tbitwise not top\r\n");
      0042F4 7D F0            [12] 4887 	mov	r5,#___str_22
      0042F6 7E 66            [12] 4888 	mov	r6,#(___str_22 >> 8)
      0042F8 7F 80            [12] 4889 	mov	r7,#0x80
                                   4890 ;	calc.c:50: return;
      0042FA                       4891 00188$:
                                   4892 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0042FA 8D 82            [24] 4893 	mov	dpl,r5
      0042FC 8E 83            [24] 4894 	mov	dph,r6
      0042FE 8F F0            [24] 4895 	mov	b,r7
      004300 12 4C E3         [24] 4896 	lcall	__gptrget
      004303 FC               [12] 4897 	mov	r4,a
      004304 60 10            [24] 4898 	jz	00134$
      004306 7B 00            [12] 4899 	mov	r3,#0x00
      004308 8C 82            [24] 4900 	mov	dpl,r4
      00430A 8B 83            [24] 4901 	mov	dph,r3
      00430C 12 29 C0         [24] 4902 	lcall	_putchar
      00430F 0D               [12] 4903 	inc	r5
                                   4904 ;	calc.c:328: printstr("~\tbitwise not top\r\n");
      004310 BD 00 E7         [24] 4905 	cjne	r5,#0x00,00188$
      004313 0E               [12] 4906 	inc	r6
      004314 80 E4            [24] 4907 	sjmp	00188$
      004316                       4908 00134$:
                                   4909 ;	calc.c:329: printstr("?\thelp\r\n");
      004316 7D 04            [12] 4910 	mov	r5,#___str_23
      004318 7E 67            [12] 4911 	mov	r6,#(___str_23 >> 8)
      00431A 7F 80            [12] 4912 	mov	r7,#0x80
                                   4913 ;	calc.c:50: return;
      00431C                       4914 00191$:
                                   4915 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00431C 8D 82            [24] 4916 	mov	dpl,r5
      00431E 8E 83            [24] 4917 	mov	dph,r6
      004320 8F F0            [24] 4918 	mov	b,r7
      004322 12 4C E3         [24] 4919 	lcall	__gptrget
      004325 FC               [12] 4920 	mov	r4,a
      004326 60 10            [24] 4921 	jz	00136$
      004328 7B 00            [12] 4922 	mov	r3,#0x00
      00432A 8C 82            [24] 4923 	mov	dpl,r4
      00432C 8B 83            [24] 4924 	mov	dph,r3
      00432E 12 29 C0         [24] 4925 	lcall	_putchar
      004331 0D               [12] 4926 	inc	r5
                                   4927 ;	calc.c:329: printstr("?\thelp\r\n");
      004332 BD 00 E7         [24] 4928 	cjne	r5,#0x00,00191$
      004335 0E               [12] 4929 	inc	r6
      004336 80 E4            [24] 4930 	sjmp	00191$
      004338                       4931 00136$:
                                   4932 ;	calc.c:330: printstr("q\tquit\r\n");
      004338 7D 0D            [12] 4933 	mov	r5,#___str_24
      00433A 7E 67            [12] 4934 	mov	r6,#(___str_24 >> 8)
      00433C 7F 80            [12] 4935 	mov	r7,#0x80
                                   4936 ;	calc.c:50: return;
      00433E                       4937 00194$:
                                   4938 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00433E 8D 82            [24] 4939 	mov	dpl,r5
      004340 8E 83            [24] 4940 	mov	dph,r6
      004342 8F F0            [24] 4941 	mov	b,r7
      004344 12 4C E3         [24] 4942 	lcall	__gptrget
      004347 FC               [12] 4943 	mov	r4,a
      004348 60 10            [24] 4944 	jz	00138$
      00434A 7B 00            [12] 4945 	mov	r3,#0x00
      00434C 8C 82            [24] 4946 	mov	dpl,r4
      00434E 8B 83            [24] 4947 	mov	dph,r3
      004350 12 29 C0         [24] 4948 	lcall	_putchar
      004353 0D               [12] 4949 	inc	r5
                                   4950 ;	calc.c:330: printstr("q\tquit\r\n");
      004354 BD 00 E7         [24] 4951 	cjne	r5,#0x00,00194$
      004357 0E               [12] 4952 	inc	r6
      004358 80 E4            [24] 4953 	sjmp	00194$
      00435A                       4954 00138$:
                                   4955 ;	calc.c:332: return 1;
      00435A 90 00 01         [24] 4956 	mov	dptr,#0x0001
                                   4957 ;	calc.c:333: }
      00435D 85 08 81         [24] 4958 	mov	sp,_bp
      004360 D0 08            [24] 4959 	pop	_bp
      004362 22               [24] 4960 	ret
                                   4961 ;------------------------------------------------------------
                                   4962 ;Allocation info for local variables in function 'main'
                                   4963 ;------------------------------------------------------------
                                   4964 ;input                     Allocated to registers r6 r7 
                                   4965 ;sloc0                     Allocated to stack - _bp +3
                                   4966 ;------------------------------------------------------------
                                   4967 ;	calc.c:362: void main(void) {
                                   4968 ;	-----------------------------------------
                                   4969 ;	 function main
                                   4970 ;	-----------------------------------------
      004363                       4971 _main:
                                   4972 ;	calc.c:365: c.base = 10;
      004363 90 80 0C         [24] 4973 	mov	dptr,#_c
      004366 74 0A            [12] 4974 	mov	a,#0x0a
      004368 F0               [24] 4975 	movx	@dptr,a
      004369 E4               [12] 4976 	clr	a
      00436A A3               [24] 4977 	inc	dptr
      00436B F0               [24] 4978 	movx	@dptr,a
                                   4979 ;	calc.c:366: c.acc = 0l;
      00436C 90 80 0E         [24] 4980 	mov	dptr,#(_c + 0x0002)
      00436F F0               [24] 4981 	movx	@dptr,a
      004370 A3               [24] 4982 	inc	dptr
      004371 F0               [24] 4983 	movx	@dptr,a
      004372 A3               [24] 4984 	inc	dptr
      004373 F0               [24] 4985 	movx	@dptr,a
      004374 A3               [24] 4986 	inc	dptr
      004375 F0               [24] 4987 	movx	@dptr,a
                                   4988 ;	calc.c:367: c.acc_valid = (char)0;
      004376 90 80 12         [24] 4989 	mov	dptr,#(_c + 0x0006)
      004379 F0               [24] 4990 	movx	@dptr,a
                                   4991 ;	calc.c:368: c.digit[0] = c.digit[1] = '\0';
      00437A 90 80 14         [24] 4992 	mov	dptr,#(_c + 0x0008)
      00437D F0               [24] 4993 	movx	@dptr,a
      00437E 90 80 13         [24] 4994 	mov	dptr,#(_c + 0x0007)
      004381 F0               [24] 4995 	movx	@dptr,a
                                   4996 ;	calc.c:369: stack_init(&c.s);	
      004382 90 80 15         [24] 4997 	mov	dptr,#(_c + 0x0009)
      004385 75 F0 00         [24] 4998 	mov	b,#0x00
      004388 12 26 80         [24] 4999 	lcall	_stack_init
                                   5000 ;	calc.c:370: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      00438B 74 0C            [12] 5001 	mov	a,#_c
      00438D C0 E0            [24] 5002 	push	acc
      00438F 74 80            [12] 5003 	mov	a,#(_c >> 8)
      004391 C0 E0            [24] 5004 	push	acc
      004393 E4               [12] 5005 	clr	a
      004394 C0 E0            [24] 5006 	push	acc
      004396 74 33            [12] 5007 	mov	a,#_deltas
      004398 C0 E0            [24] 5008 	push	acc
      00439A 74 A0            [12] 5009 	mov	a,#(_deltas >> 8)
      00439C C0 E0            [24] 5010 	push	acc
      00439E E4               [12] 5011 	clr	a
      00439F C0 E0            [24] 5012 	push	acc
      0043A1 C0 E0            [24] 5013 	push	acc
      0043A3 74 80            [12] 5014 	mov	a,#0x80
      0043A5 C0 E0            [24] 5015 	push	acc
      0043A7 74 03            [12] 5016 	mov	a,#0x03
      0043A9 C0 E0            [24] 5017 	push	acc
      0043AB E4               [12] 5018 	clr	a
      0043AC C0 E0            [24] 5019 	push	acc
      0043AE C0 E0            [24] 5020 	push	acc
      0043B0 C0 E0            [24] 5021 	push	acc
      0043B2 90 80 00         [24] 5022 	mov	dptr,#_s
      0043B5 75 F0 00         [24] 5023 	mov	b,#0x00
      0043B8 12 20 90         [24] 5024 	lcall	_state_init
      0043BB E5 81            [12] 5025 	mov	a,sp
      0043BD 24 F4            [12] 5026 	add	a,#0xf4
      0043BF F5 81            [12] 5027 	mov	sp,a
                                   5028 ;	calc.c:372: while (1) {
      0043C1                       5029 00158$:
                                   5030 ;	calc.c:373: input = getchar();
      0043C1 12 29 C5         [24] 5031 	lcall	_getchar
      0043C4 AE 82            [24] 5032 	mov	r6,dpl
      0043C6 AF 83            [24] 5033 	mov	r7,dph
                                   5034 ;	calc.c:374: c.digit[0] = (char)input;
      0043C8 8E 05            [24] 5035 	mov	ar5,r6
      0043CA 90 80 13         [24] 5036 	mov	dptr,#(_c + 0x0007)
      0043CD ED               [12] 5037 	mov	a,r5
      0043CE F0               [24] 5038 	movx	@dptr,a
                                   5039 ;	calc.c:375: (void)putchar(input);
      0043CF 8E 82            [24] 5040 	mov	dpl,r6
      0043D1 8F 83            [24] 5041 	mov	dph,r7
      0043D3 12 29 C0         [24] 5042 	lcall	_putchar
                                   5043 ;	calc.c:376: if ((char)input == 'q') {
      0043D6 BD 71 29         [24] 5044 	cjne	r5,#0x71,00155$
                                   5045 ;	calc.c:377: if (state_exec(&s, EVENT_TERM) <= 0) break;
      0043D9 74 07            [12] 5046 	mov	a,#0x07
      0043DB C0 E0            [24] 5047 	push	acc
      0043DD E4               [12] 5048 	clr	a
      0043DE C0 E0            [24] 5049 	push	acc
      0043E0 90 80 00         [24] 5050 	mov	dptr,#_s
      0043E3 75 F0 00         [24] 5051 	mov	b,#0x00
      0043E6 12 21 46         [24] 5052 	lcall	_state_exec
      0043E9 AB 82            [24] 5053 	mov	r3,dpl
      0043EB AC 83            [24] 5054 	mov	r4,dph
      0043ED 15 81            [12] 5055 	dec	sp
      0043EF 15 81            [12] 5056 	dec	sp
      0043F1 C3               [12] 5057 	clr	c
      0043F2 E4               [12] 5058 	clr	a
      0043F3 9B               [12] 5059 	subb	a,r3
      0043F4 74 80            [12] 5060 	mov	a,#(0x00 ^ 0x80)
      0043F6 8C F0            [24] 5061 	mov	b,r4
      0043F8 63 F0 80         [24] 5062 	xrl	b,#0x80
      0043FB 95 F0            [12] 5063 	subb	a,b
      0043FD 40 C2            [24] 5064 	jc	00158$
      0043FF 02 45 B6         [24] 5065 	ljmp	00159$
      004402                       5066 00155$:
                                   5067 ;	calc.c:378: } else if ((char)input == '?') {
      004402 BD 3F 29         [24] 5068 	cjne	r5,#0x3f,00152$
                                   5069 ;	calc.c:379: if (state_exec(&s, EVENT_HELP) <= 0) break;
      004405 74 03            [12] 5070 	mov	a,#0x03
      004407 C0 E0            [24] 5071 	push	acc
      004409 E4               [12] 5072 	clr	a
      00440A C0 E0            [24] 5073 	push	acc
      00440C 90 80 00         [24] 5074 	mov	dptr,#_s
      00440F 75 F0 00         [24] 5075 	mov	b,#0x00
      004412 12 21 46         [24] 5076 	lcall	_state_exec
      004415 AB 82            [24] 5077 	mov	r3,dpl
      004417 AC 83            [24] 5078 	mov	r4,dph
      004419 15 81            [12] 5079 	dec	sp
      00441B 15 81            [12] 5080 	dec	sp
      00441D C3               [12] 5081 	clr	c
      00441E E4               [12] 5082 	clr	a
      00441F 9B               [12] 5083 	subb	a,r3
      004420 74 80            [12] 5084 	mov	a,#(0x00 ^ 0x80)
      004422 8C F0            [24] 5085 	mov	b,r4
      004424 63 F0 80         [24] 5086 	xrl	b,#0x80
      004427 95 F0            [12] 5087 	subb	a,b
      004429 40 96            [24] 5088 	jc	00158$
      00442B 02 45 B6         [24] 5089 	ljmp	00159$
      00442E                       5090 00152$:
                                   5091 ;	calc.c:380: } else if ((char)input == 'i') {
      00442E BD 69 2C         [24] 5092 	cjne	r5,#0x69,00149$
                                   5093 ;	calc.c:381: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      004431 74 05            [12] 5094 	mov	a,#0x05
      004433 C0 E0            [24] 5095 	push	acc
      004435 E4               [12] 5096 	clr	a
      004436 C0 E0            [24] 5097 	push	acc
      004438 90 80 00         [24] 5098 	mov	dptr,#_s
      00443B 75 F0 00         [24] 5099 	mov	b,#0x00
      00443E 12 21 46         [24] 5100 	lcall	_state_exec
      004441 AB 82            [24] 5101 	mov	r3,dpl
      004443 AC 83            [24] 5102 	mov	r4,dph
      004445 15 81            [12] 5103 	dec	sp
      004447 15 81            [12] 5104 	dec	sp
      004449 C3               [12] 5105 	clr	c
      00444A E4               [12] 5106 	clr	a
      00444B 9B               [12] 5107 	subb	a,r3
      00444C 74 80            [12] 5108 	mov	a,#(0x00 ^ 0x80)
      00444E 8C F0            [24] 5109 	mov	b,r4
      004450 63 F0 80         [24] 5110 	xrl	b,#0x80
      004453 95 F0            [12] 5111 	subb	a,b
      004455 50 03            [24] 5112 	jnc	00298$
      004457 02 43 C1         [24] 5113 	ljmp	00158$
      00445A                       5114 00298$:
      00445A 02 45 B6         [24] 5115 	ljmp	00159$
      00445D                       5116 00149$:
                                   5117 ;	calc.c:382: } else if ((char)input == 'I') {
      00445D BD 49 2C         [24] 5118 	cjne	r5,#0x49,00146$
                                   5119 ;	calc.c:383: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      004460 74 06            [12] 5120 	mov	a,#0x06
      004462 C0 E0            [24] 5121 	push	acc
      004464 E4               [12] 5122 	clr	a
      004465 C0 E0            [24] 5123 	push	acc
      004467 90 80 00         [24] 5124 	mov	dptr,#_s
      00446A 75 F0 00         [24] 5125 	mov	b,#0x00
      00446D 12 21 46         [24] 5126 	lcall	_state_exec
      004470 AB 82            [24] 5127 	mov	r3,dpl
      004472 AC 83            [24] 5128 	mov	r4,dph
      004474 15 81            [12] 5129 	dec	sp
      004476 15 81            [12] 5130 	dec	sp
      004478 C3               [12] 5131 	clr	c
      004479 E4               [12] 5132 	clr	a
      00447A 9B               [12] 5133 	subb	a,r3
      00447B 74 80            [12] 5134 	mov	a,#(0x00 ^ 0x80)
      00447D 8C F0            [24] 5135 	mov	b,r4
      00447F 63 F0 80         [24] 5136 	xrl	b,#0x80
      004482 95 F0            [12] 5137 	subb	a,b
      004484 50 03            [24] 5138 	jnc	00301$
      004486 02 43 C1         [24] 5139 	ljmp	00158$
      004489                       5140 00301$:
      004489 02 45 B6         [24] 5141 	ljmp	00159$
      00448C                       5142 00146$:
                                   5143 ;	calc.c:384: } else if (((char)input == 'h') || ((char)input == 'H') || ((char)input == 'o') || ((char)input == 'O')) {
      00448C E4               [12] 5144 	clr	a
      00448D BD 68 01         [24] 5145 	cjne	r5,#0x68,00302$
      004490 04               [12] 5146 	inc	a
      004491                       5147 00302$:
      004491 FC               [12] 5148 	mov	r4,a
      004492 70 0F            [24] 5149 	jnz	00139$
      004494 BD 48 01         [24] 5150 	cjne	r5,#0x48,00305$
      004497 04               [12] 5151 	inc	a
      004498                       5152 00305$:
      004498 FB               [12] 5153 	mov	r3,a
      004499 70 08            [24] 5154 	jnz	00139$
      00449B BD 6F 02         [24] 5155 	cjne	r5,#0x6f,00308$
      00449E 80 03            [24] 5156 	sjmp	00139$
      0044A0                       5157 00308$:
      0044A0 BD 4F 2C         [24] 5158 	cjne	r5,#0x4f,00140$
      0044A3                       5159 00139$:
                                   5160 ;	calc.c:385: if (state_exec(&s, EVENT_BASE) <= 0) break;
      0044A3 74 04            [12] 5161 	mov	a,#0x04
      0044A5 C0 E0            [24] 5162 	push	acc
      0044A7 E4               [12] 5163 	clr	a
      0044A8 C0 E0            [24] 5164 	push	acc
      0044AA 90 80 00         [24] 5165 	mov	dptr,#_s
      0044AD 75 F0 00         [24] 5166 	mov	b,#0x00
      0044B0 12 21 46         [24] 5167 	lcall	_state_exec
      0044B3 AF 82            [24] 5168 	mov	r7,dpl
      0044B5 AE 83            [24] 5169 	mov	r6,dph
      0044B7 15 81            [12] 5170 	dec	sp
      0044B9 15 81            [12] 5171 	dec	sp
      0044BB C3               [12] 5172 	clr	c
      0044BC E4               [12] 5173 	clr	a
      0044BD 9F               [12] 5174 	subb	a,r7
      0044BE 74 80            [12] 5175 	mov	a,#(0x00 ^ 0x80)
      0044C0 8E F0            [24] 5176 	mov	b,r6
      0044C2 63 F0 80         [24] 5177 	xrl	b,#0x80
      0044C5 95 F0            [12] 5178 	subb	a,b
      0044C7 50 03            [24] 5179 	jnc	00311$
      0044C9 02 43 C1         [24] 5180 	ljmp	00158$
      0044CC                       5181 00311$:
      0044CC 02 45 B6         [24] 5182 	ljmp	00159$
      0044CF                       5183 00140$:
                                   5184 ;	calc.c:386: } else if (isxdigit(input)) {
      0044CF 8E 82            [24] 5185 	mov	dpl,r6
      0044D1 8F 83            [24] 5186 	mov	dph,r7
      0044D3 C0 05            [24] 5187 	push	ar5
      0044D5 C0 04            [24] 5188 	push	ar4
      0044D7 C0 03            [24] 5189 	push	ar3
      0044D9 12 45 BA         [24] 5190 	lcall	_isxdigit
      0044DC E5 82            [12] 5191 	mov	a,dpl
      0044DE 85 83 F0         [24] 5192 	mov	b,dph
      0044E1 D0 03            [24] 5193 	pop	ar3
      0044E3 D0 04            [24] 5194 	pop	ar4
      0044E5 D0 05            [24] 5195 	pop	ar5
      0044E7 45 F0            [12] 5196 	orl	a,b
      0044E9 60 2C            [24] 5197 	jz	00137$
                                   5198 ;	calc.c:387: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      0044EB 74 01            [12] 5199 	mov	a,#0x01
      0044ED C0 E0            [24] 5200 	push	acc
      0044EF E4               [12] 5201 	clr	a
      0044F0 C0 E0            [24] 5202 	push	acc
      0044F2 90 80 00         [24] 5203 	mov	dptr,#_s
      0044F5 75 F0 00         [24] 5204 	mov	b,#0x00
      0044F8 12 21 46         [24] 5205 	lcall	_state_exec
      0044FB AE 82            [24] 5206 	mov	r6,dpl
      0044FD AF 83            [24] 5207 	mov	r7,dph
      0044FF 15 81            [12] 5208 	dec	sp
      004501 15 81            [12] 5209 	dec	sp
      004503 C3               [12] 5210 	clr	c
      004504 E4               [12] 5211 	clr	a
      004505 9E               [12] 5212 	subb	a,r6
      004506 74 80            [12] 5213 	mov	a,#(0x00 ^ 0x80)
      004508 8F F0            [24] 5214 	mov	b,r7
      00450A 63 F0 80         [24] 5215 	xrl	b,#0x80
      00450D 95 F0            [12] 5216 	subb	a,b
      00450F 50 03            [24] 5217 	jnc	00313$
      004511 02 43 C1         [24] 5218 	ljmp	00158$
      004514                       5219 00313$:
      004514 02 45 B6         [24] 5220 	ljmp	00159$
      004517                       5221 00137$:
                                   5222 ;	calc.c:389: ((char)input == 'h') || ((char)input == 'H') ||
      004517 EC               [12] 5223 	mov	a,r4
      004518 70 4C            [24] 5224 	jnz	00117$
      00451A EB               [12] 5225 	mov	a,r3
      00451B 70 49            [24] 5226 	jnz	00117$
                                   5227 ;	calc.c:390: ((char)input == 'p') || ((char)input == 'P') ||
      00451D BD 70 02         [24] 5228 	cjne	r5,#0x70,00316$
      004520 80 44            [24] 5229 	sjmp	00117$
      004522                       5230 00316$:
      004522 BD 50 02         [24] 5231 	cjne	r5,#0x50,00317$
      004525 80 3F            [24] 5232 	sjmp	00117$
      004527                       5233 00317$:
                                   5234 ;	calc.c:391: ((char)input == '.') || ((char)input == 'v') || ((char)input == 'V') ||
      004527 BD 2E 02         [24] 5235 	cjne	r5,#0x2e,00318$
      00452A 80 3A            [24] 5236 	sjmp	00117$
      00452C                       5237 00318$:
      00452C BD 76 02         [24] 5238 	cjne	r5,#0x76,00319$
      00452F 80 35            [24] 5239 	sjmp	00117$
      004531                       5240 00319$:
      004531 BD 56 02         [24] 5241 	cjne	r5,#0x56,00320$
      004534 80 30            [24] 5242 	sjmp	00117$
      004536                       5243 00320$:
                                   5244 ;	calc.c:392: ((char)input == 'x') ||
      004536 BD 78 02         [24] 5245 	cjne	r5,#0x78,00321$
      004539 80 2B            [24] 5246 	sjmp	00117$
      00453B                       5247 00321$:
                                   5248 ;	calc.c:393: ((char)input == '+') ||
      00453B BD 2B 02         [24] 5249 	cjne	r5,#0x2b,00322$
      00453E 80 26            [24] 5250 	sjmp	00117$
      004540                       5251 00322$:
                                   5252 ;	calc.c:394: ((char)input == '-') ||
      004540 BD 2D 02         [24] 5253 	cjne	r5,#0x2d,00323$
      004543 80 21            [24] 5254 	sjmp	00117$
      004545                       5255 00323$:
                                   5256 ;	calc.c:395: ((char)input == '*') ||
      004545 BD 2A 02         [24] 5257 	cjne	r5,#0x2a,00324$
      004548 80 1C            [24] 5258 	sjmp	00117$
      00454A                       5259 00324$:
                                   5260 ;	calc.c:396: ((char)input == '/') ||
      00454A BD 2F 02         [24] 5261 	cjne	r5,#0x2f,00325$
      00454D 80 17            [24] 5262 	sjmp	00117$
      00454F                       5263 00325$:
                                   5264 ;	calc.c:397: ((char)input == '%') ||
      00454F BD 25 02         [24] 5265 	cjne	r5,#0x25,00326$
      004552 80 12            [24] 5266 	sjmp	00117$
      004554                       5267 00326$:
                                   5268 ;	calc.c:398: ((char)input == '&') ||
      004554 BD 26 02         [24] 5269 	cjne	r5,#0x26,00327$
      004557 80 0D            [24] 5270 	sjmp	00117$
      004559                       5271 00327$:
                                   5272 ;	calc.c:399: ((char)input == '|') ||
      004559 BD 7C 02         [24] 5273 	cjne	r5,#0x7c,00328$
      00455C 80 08            [24] 5274 	sjmp	00117$
      00455E                       5275 00328$:
                                   5276 ;	calc.c:400: ((char)input == '^') ||
      00455E BD 5E 02         [24] 5277 	cjne	r5,#0x5e,00329$
      004561 80 03            [24] 5278 	sjmp	00117$
      004563                       5279 00329$:
                                   5280 ;	calc.c:401: ((char)input == '~')
      004563 BD 7E 29         [24] 5281 	cjne	r5,#0x7e,00118$
      004566                       5282 00117$:
                                   5283 ;	calc.c:403: if (state_exec(&s, EVENT_OP) <= 0) break;
      004566 74 02            [12] 5284 	mov	a,#0x02
      004568 C0 E0            [24] 5285 	push	acc
      00456A E4               [12] 5286 	clr	a
      00456B C0 E0            [24] 5287 	push	acc
      00456D 90 80 00         [24] 5288 	mov	dptr,#_s
      004570 75 F0 00         [24] 5289 	mov	b,#0x00
      004573 12 21 46         [24] 5290 	lcall	_state_exec
      004576 AE 82            [24] 5291 	mov	r6,dpl
      004578 AF 83            [24] 5292 	mov	r7,dph
      00457A 15 81            [12] 5293 	dec	sp
      00457C 15 81            [12] 5294 	dec	sp
      00457E C3               [12] 5295 	clr	c
      00457F E4               [12] 5296 	clr	a
      004580 9E               [12] 5297 	subb	a,r6
      004581 74 80            [12] 5298 	mov	a,#(0x00 ^ 0x80)
      004583 8F F0            [24] 5299 	mov	b,r7
      004585 63 F0 80         [24] 5300 	xrl	b,#0x80
      004588 95 F0            [12] 5301 	subb	a,b
      00458A 50 2A            [24] 5302 	jnc	00159$
      00458C 02 43 C1         [24] 5303 	ljmp	00158$
      00458F                       5304 00118$:
                                   5305 ;	calc.c:405: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      00458F E4               [12] 5306 	clr	a
      004590 C0 E0            [24] 5307 	push	acc
      004592 C0 E0            [24] 5308 	push	acc
      004594 90 80 00         [24] 5309 	mov	dptr,#_s
      004597 75 F0 00         [24] 5310 	mov	b,#0x00
      00459A 12 21 46         [24] 5311 	lcall	_state_exec
      00459D AE 82            [24] 5312 	mov	r6,dpl
      00459F AF 83            [24] 5313 	mov	r7,dph
      0045A1 15 81            [12] 5314 	dec	sp
      0045A3 15 81            [12] 5315 	dec	sp
      0045A5 C3               [12] 5316 	clr	c
      0045A6 E4               [12] 5317 	clr	a
      0045A7 9E               [12] 5318 	subb	a,r6
      0045A8 74 80            [12] 5319 	mov	a,#(0x00 ^ 0x80)
      0045AA 8F F0            [24] 5320 	mov	b,r7
      0045AC 63 F0 80         [24] 5321 	xrl	b,#0x80
      0045AF 95 F0            [12] 5322 	subb	a,b
      0045B1 50 03            [24] 5323 	jnc	00333$
      0045B3 02 43 C1         [24] 5324 	ljmp	00158$
      0045B6                       5325 00333$:
      0045B6                       5326 00159$:
                                   5327 ;	calc.c:411: __endasm;
      0045B6 43 87 02         [24] 5328 	orl	pcon, #2
                                   5329 ;	calc.c:412: }
      0045B9 22               [24] 5330 	ret
                                   5331 	.area CSEG    (CODE)
                                   5332 	.area CONST   (CODE)
                                   5333 	.area CONST   (CODE)
      006564                       5334 ___str_0:
      006564 0D                    5335 	.db 0x0d
      006565 0A                    5336 	.db 0x0a
      006566 00                    5337 	.db 0x00
                                   5338 	.area CSEG    (CODE)
                                   5339 	.area CONST   (CODE)
      006567                       5340 ___str_1:
      006567 73 74 61 63 6B 20 75  5341 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      006576 0D                    5342 	.db 0x0d
      006577 0A                    5343 	.db 0x0a
      006578 00                    5344 	.db 0x00
                                   5345 	.area CSEG    (CODE)
                                   5346 	.area CONST   (CODE)
      006579                       5347 ___str_2:
      006579 0D                    5348 	.db 0x0d
      00657A 0A                    5349 	.db 0x0a
      00657B 73 74 61 63 6B 20 75  5350 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      00658A 0D                    5351 	.db 0x0d
      00658B 0A                    5352 	.db 0x0a
      00658C 00                    5353 	.db 0x00
                                   5354 	.area CSEG    (CODE)
                                   5355 	.area CONST   (CODE)
      00658D                       5356 ___str_3:
      00658D 0D                    5357 	.db 0x0d
      00658E 0A                    5358 	.db 0x0a
      00658F 64 69 76 69 73 69 6F  5359 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      00659F 0D                    5360 	.db 0x0d
      0065A0 0A                    5361 	.db 0x0a
      0065A1 00                    5362 	.db 0x00
                                   5363 	.area CSEG    (CODE)
                                   5364 	.area CONST   (CODE)
      0065A2                       5365 ___str_4:
      0065A2 0D                    5366 	.db 0x0d
      0065A3 0A                    5367 	.db 0x0a
      0065A4 73 74 61 63 6B 20 6F  5368 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      0065B2 0D                    5369 	.db 0x0d
      0065B3 0A                    5370 	.db 0x0a
      0065B4 00                    5371 	.db 0x00
                                   5372 	.area CSEG    (CODE)
                                   5373 	.area CONST   (CODE)
      0065B5                       5374 ___str_5:
      0065B5 0D                    5375 	.db 0x0d
      0065B6 0A                    5376 	.db 0x0a
      0065B7 62 61 73 65 20 3D 20  5377 	.ascii "base = %d, acc = %ld / %0.8lx, acc_valid = %d"
             25 64 2C 20 61 63 63
             20 3D 20 25 6C 64 20
             2F 20 25 30 2E 38 6C
             78 2C 20 61 63 63 5F
             76 61 6C 69 64 20 3D
             20 25 64
      0065E4 0D                    5378 	.db 0x0d
      0065E5 0A                    5379 	.db 0x0a
      0065E6 0D                    5380 	.db 0x0d
      0065E7 0A                    5381 	.db 0x0a
      0065E8 00                    5382 	.db 0x00
                                   5383 	.area CSEG    (CODE)
                                   5384 	.area CONST   (CODE)
      0065E9                       5385 ___str_6:
      0065E9 48 68 4F 6F           5386 	.ascii "HhOo"
      0065ED 09                    5387 	.db 0x09
      0065EE 62 61 73 65 20 31 36  5388 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      0065FC 0D                    5389 	.db 0x0d
      0065FD 0A                    5390 	.db 0x0a
      0065FE 00                    5391 	.db 0x00
                                   5392 	.area CSEG    (CODE)
                                   5393 	.area CONST   (CODE)
      0065FF                       5394 ___str_7:
      0065FF 70                    5395 	.ascii "p"
      006600 09                    5396 	.db 0x09
      006601 70 65 65 6B 20 74 6F  5397 	.ascii "peek top"
             70
      006609 0D                    5398 	.db 0x0d
      00660A 0A                    5399 	.db 0x0a
      00660B 00                    5400 	.db 0x00
                                   5401 	.area CSEG    (CODE)
                                   5402 	.area CONST   (CODE)
      00660C                       5403 ___str_8:
      00660C 50                    5404 	.ascii "P"
      00660D 09                    5405 	.db 0x09
      00660E 70 72 69 6E 74 20 73  5406 	.ascii "print stack"
             74 61 63 6B
      006619 0D                    5407 	.db 0x0d
      00661A 0A                    5408 	.db 0x0a
      00661B 00                    5409 	.db 0x00
                                   5410 	.area CSEG    (CODE)
                                   5411 	.area CONST   (CODE)
      00661C                       5412 ___str_9:
      00661C 76 2E                 5413 	.ascii "v."
      00661E 09                    5414 	.db 0x09
      00661F 70 6F 70 20 74 6F 70  5415 	.ascii "pop top"
      006626 0D                    5416 	.db 0x0d
      006627 0A                    5417 	.db 0x0a
      006628 00                    5418 	.db 0x00
                                   5419 	.area CSEG    (CODE)
                                   5420 	.area CONST   (CODE)
      006629                       5421 ___str_10:
      006629 56                    5422 	.ascii "V"
      00662A 09                    5423 	.db 0x09
      00662B 70 6F 70 20 61 6C 6C  5424 	.ascii "pop all"
      006632 0D                    5425 	.db 0x0d
      006633 0A                    5426 	.db 0x0a
      006634 00                    5427 	.db 0x00
                                   5428 	.area CSEG    (CODE)
                                   5429 	.area CONST   (CODE)
      006635                       5430 ___str_11:
      006635 69                    5431 	.ascii "i"
      006636 09                    5432 	.db 0x09
      006637 72 65 73 65 74 20 61  5433 	.ascii "reset acc"
             63 63
      006640 0D                    5434 	.db 0x0d
      006641 0A                    5435 	.db 0x0a
      006642 00                    5436 	.db 0x00
                                   5437 	.area CSEG    (CODE)
                                   5438 	.area CONST   (CODE)
      006643                       5439 ___str_12:
      006643 49                    5440 	.ascii "I"
      006644 09                    5441 	.db 0x09
      006645 72 65 73 65 74 20 61  5442 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      00665A 0D                    5443 	.db 0x0d
      00665B 0A                    5444 	.db 0x0a
      00665C 00                    5445 	.db 0x00
                                   5446 	.area CSEG    (CODE)
                                   5447 	.area CONST   (CODE)
      00665D                       5448 ___str_13:
      00665D 78                    5449 	.ascii "x"
      00665E 09                    5450 	.db 0x09
      00665F 65 78 63 68 61 6E 67  5451 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      00666D 0D                    5452 	.db 0x0d
      00666E 0A                    5453 	.db 0x0a
      00666F 00                    5454 	.db 0x00
                                   5455 	.area CSEG    (CODE)
                                   5456 	.area CONST   (CODE)
      006670                       5457 ___str_14:
      006670 2B                    5458 	.ascii "+"
      006671 09                    5459 	.db 0x09
      006672 61 64 64 20 74 6F 70  5460 	.ascii "add top 2"
             20 32
      00667B 0D                    5461 	.db 0x0d
      00667C 0A                    5462 	.db 0x0a
      00667D 00                    5463 	.db 0x00
                                   5464 	.area CSEG    (CODE)
                                   5465 	.area CONST   (CODE)
      00667E                       5466 ___str_15:
      00667E 2D                    5467 	.ascii "-"
      00667F 09                    5468 	.db 0x09
      006680 73 75 62 74 72 61 63  5469 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      00668E 0D                    5470 	.db 0x0d
      00668F 0A                    5471 	.db 0x0a
      006690 00                    5472 	.db 0x00
                                   5473 	.area CSEG    (CODE)
                                   5474 	.area CONST   (CODE)
      006691                       5475 ___str_16:
      006691 2A                    5476 	.ascii "*"
      006692 09                    5477 	.db 0x09
      006693 6D 75 6C 74 69 70 6C  5478 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      0066A1 0D                    5479 	.db 0x0d
      0066A2 0A                    5480 	.db 0x0a
      0066A3 00                    5481 	.db 0x00
                                   5482 	.area CSEG    (CODE)
                                   5483 	.area CONST   (CODE)
      0066A4                       5484 ___str_17:
      0066A4 2F                    5485 	.ascii "/"
      0066A5 09                    5486 	.db 0x09
      0066A6 64 69 76 69 64 65 20  5487 	.ascii "divide top 2"
             74 6F 70 20 32
      0066B2 0D                    5488 	.db 0x0d
      0066B3 0A                    5489 	.db 0x0a
      0066B4 00                    5490 	.db 0x00
                                   5491 	.area CSEG    (CODE)
                                   5492 	.area CONST   (CODE)
      0066B5                       5493 ___str_18:
      0066B5 25                    5494 	.ascii "%"
      0066B6 09                    5495 	.db 0x09
      0066B7 6D 6F 64 75 6C 75 73  5496 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      0066C4 0D                    5497 	.db 0x0d
      0066C5 0A                    5498 	.db 0x0a
      0066C6 00                    5499 	.db 0x00
                                   5500 	.area CSEG    (CODE)
                                   5501 	.area CONST   (CODE)
      0066C7                       5502 ___str_19:
      0066C7 26                    5503 	.ascii "&"
      0066C8 09                    5504 	.db 0x09
      0066C9 61 6E 64 20 74 6F 70  5505 	.ascii "and top 2"
             20 32
      0066D2 0D                    5506 	.db 0x0d
      0066D3 0A                    5507 	.db 0x0a
      0066D4 00                    5508 	.db 0x00
                                   5509 	.area CSEG    (CODE)
                                   5510 	.area CONST   (CODE)
      0066D5                       5511 ___str_20:
      0066D5 7C                    5512 	.ascii "|"
      0066D6 09                    5513 	.db 0x09
      0066D7 6F 72 20 74 6F 70 20  5514 	.ascii "or top 2"
             32
      0066DF 0D                    5515 	.db 0x0d
      0066E0 0A                    5516 	.db 0x0a
      0066E1 00                    5517 	.db 0x00
                                   5518 	.area CSEG    (CODE)
                                   5519 	.area CONST   (CODE)
      0066E2                       5520 ___str_21:
      0066E2 5E                    5521 	.ascii "^"
      0066E3 09                    5522 	.db 0x09
      0066E4 78 6F 72 20 74 6F 70  5523 	.ascii "xor top 2"
             20 32
      0066ED 0D                    5524 	.db 0x0d
      0066EE 0A                    5525 	.db 0x0a
      0066EF 00                    5526 	.db 0x00
                                   5527 	.area CSEG    (CODE)
                                   5528 	.area CONST   (CODE)
      0066F0                       5529 ___str_22:
      0066F0 7E                    5530 	.ascii "~"
      0066F1 09                    5531 	.db 0x09
      0066F2 62 69 74 77 69 73 65  5532 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      006701 0D                    5533 	.db 0x0d
      006702 0A                    5534 	.db 0x0a
      006703 00                    5535 	.db 0x00
                                   5536 	.area CSEG    (CODE)
                                   5537 	.area CONST   (CODE)
      006704                       5538 ___str_23:
      006704 3F                    5539 	.ascii "?"
      006705 09                    5540 	.db 0x09
      006706 68 65 6C 70           5541 	.ascii "help"
      00670A 0D                    5542 	.db 0x0d
      00670B 0A                    5543 	.db 0x0a
      00670C 00                    5544 	.db 0x00
                                   5545 	.area CSEG    (CODE)
                                   5546 	.area CONST   (CODE)
      00670D                       5547 ___str_24:
      00670D 71                    5548 	.ascii "q"
      00670E 09                    5549 	.db 0x09
      00670F 71 75 69 74           5550 	.ascii "quit"
      006713 0D                    5551 	.db 0x0d
      006714 0A                    5552 	.db 0x0a
      006715 00                    5553 	.db 0x00
                                   5554 	.area CSEG    (CODE)
                                   5555 	.area CONST   (CODE)
      006716                       5556 ___str_25:
      006716 50 54 20 25 30 2E 38  5557 	.ascii "PT %0.8lx"
             6C 78
      00671F 0D                    5558 	.db 0x0d
      006720 0A                    5559 	.db 0x0a
      006721 00                    5560 	.db 0x00
                                   5561 	.area CSEG    (CODE)
                                   5562 	.area CONST   (CODE)
      006722                       5563 ___str_26:
      006722 50 54 20 25 6C 64     5564 	.ascii "PT %ld"
      006728 0D                    5565 	.db 0x0d
      006729 0A                    5566 	.db 0x0a
      00672A 00                    5567 	.db 0x00
                                   5568 	.area CSEG    (CODE)
                                   5569 	.area CONST   (CODE)
      00672B                       5570 ___str_27:
      00672B 50 41 20 25 30 2E 38  5571 	.ascii "PA %0.8lx"
             6C 78
      006734 0D                    5572 	.db 0x0d
      006735 0A                    5573 	.db 0x0a
      006736 00                    5574 	.db 0x00
                                   5575 	.area CSEG    (CODE)
                                   5576 	.area CONST   (CODE)
      006737                       5577 ___str_28:
      006737 50 41 20 25 6C 64     5578 	.ascii "PA %ld"
      00673D 0D                    5579 	.db 0x0d
      00673E 0A                    5580 	.db 0x0a
      00673F 00                    5581 	.db 0x00
                                   5582 	.area CSEG    (CODE)
                                   5583 	.area CONST   (CODE)
      006740                       5584 ___str_29:
      006740 56 54 20 25 30 2E 38  5585 	.ascii "VT %0.8lx"
             6C 78
      006749 0D                    5586 	.db 0x0d
      00674A 0A                    5587 	.db 0x0a
      00674B 00                    5588 	.db 0x00
                                   5589 	.area CSEG    (CODE)
                                   5590 	.area CONST   (CODE)
      00674C                       5591 ___str_30:
      00674C 56 54 20 25 6C 64     5592 	.ascii "VT %ld"
      006752 0D                    5593 	.db 0x0d
      006753 0A                    5594 	.db 0x0a
      006754 00                    5595 	.db 0x00
                                   5596 	.area CSEG    (CODE)
                                   5597 	.area CONST   (CODE)
      006755                       5598 ___str_31:
      006755 56 41 20 25 30 2E 38  5599 	.ascii "VA %0.8lx"
             6C 78
      00675E 0D                    5600 	.db 0x0d
      00675F 0A                    5601 	.db 0x0a
      006760 00                    5602 	.db 0x00
                                   5603 	.area CSEG    (CODE)
                                   5604 	.area CONST   (CODE)
      006761                       5605 ___str_32:
      006761 56 41 20 25 6C 64     5606 	.ascii "VA %ld"
      006767 0D                    5607 	.db 0x0d
      006768 0A                    5608 	.db 0x0a
      006769 00                    5609 	.db 0x00
                                   5610 	.area CSEG    (CODE)
                                   5611 	.area XINIT   (CODE)
      00677B                       5612 __xinit__hexp:
      00677B 16 67 80              5613 	.byte ___str_25, (___str_25 >> 8),#0x80
      00677E                       5614 __xinit__decp:
      00677E 22 67 80              5615 	.byte ___str_26, (___str_26 >> 8),#0x80
      006781                       5616 __xinit__hexP:
      006781 2B 67 80              5617 	.byte ___str_27, (___str_27 >> 8),#0x80
      006784                       5618 __xinit__decP:
      006784 37 67 80              5619 	.byte ___str_28, (___str_28 >> 8),#0x80
      006787                       5620 __xinit__hexv:
      006787 40 67 80              5621 	.byte ___str_29, (___str_29 >> 8),#0x80
      00678A                       5622 __xinit__decv:
      00678A 4C 67 80              5623 	.byte ___str_30, (___str_30 >> 8),#0x80
      00678D                       5624 __xinit__hexV:
      00678D 55 67 80              5625 	.byte ___str_31, (___str_31 >> 8),#0x80
      006790                       5626 __xinit__decV:
      006790 61 67 80              5627 	.byte ___str_32, (___str_32 >> 8),#0x80
      006793                       5628 __xinit__deltas:
      006793 00 00                 5629 	.byte #0x00, #0x00	;  0
      006795 00 00                 5630 	.byte #0x00, #0x00	;  0
      006797 00 00                 5631 	.byte #0x00, #0x00	;  0
      006799 00 00                 5632 	.byte #0x00,#0x00
      00679B 00 00                 5633 	.byte #0x00,#0x00
      00679D 00 00                 5634 	.byte #0x00, #0x00	;  0
      00679F 01 00                 5635 	.byte #0x01, #0x00	;  1
      0067A1 02 00                 5636 	.byte #0x02, #0x00	;  2
      0067A3 00 00                 5637 	.byte #0x00,#0x00
      0067A5 E2 29                 5638 	.byte _accumulate, (_accumulate >> 8)
      0067A7 00 00                 5639 	.byte #0x00, #0x00	;  0
      0067A9 02 00                 5640 	.byte #0x02, #0x00	;  2
      0067AB 01 00                 5641 	.byte #0x01, #0x00	;  1
      0067AD 00 00                 5642 	.byte #0x00,#0x00
      0067AF 8A 2D                 5643 	.byte _operator, (_operator >> 8)
      0067B1 01 00                 5644 	.byte #0x01, #0x00	;  1
      0067B3 00 00                 5645 	.byte #0x00, #0x00	;  0
      0067B5 00 00                 5646 	.byte #0x00, #0x00	;  0
      0067B7 00 00                 5647 	.byte #0x00,#0x00
      0067B9 00 00                 5648 	.byte #0x00,#0x00
      0067BB 01 00                 5649 	.byte #0x01, #0x00	;  1
      0067BD 02 00                 5650 	.byte #0x02, #0x00	;  2
      0067BF 01 00                 5651 	.byte #0x01, #0x00	;  1
      0067C1 00 00                 5652 	.byte #0x00,#0x00
      0067C3 8A 2D                 5653 	.byte _operator, (_operator >> 8)
      0067C5 01 00                 5654 	.byte #0x01, #0x00	;  1
      0067C7 01 00                 5655 	.byte #0x01, #0x00	;  1
      0067C9 02 00                 5656 	.byte #0x02, #0x00	;  2
      0067CB 00 00                 5657 	.byte #0x00,#0x00
      0067CD E2 29                 5658 	.byte _accumulate, (_accumulate >> 8)
      0067CF 02 00                 5659 	.byte #0x02, #0x00	;  2
      0067D1 00 00                 5660 	.byte #0x00, #0x00	;  0
      0067D3 00 00                 5661 	.byte #0x00, #0x00	;  0
      0067D5 00 00                 5662 	.byte #0x00,#0x00
      0067D7 2D 3E                 5663 	.byte _push_acc, (_push_acc >> 8)
      0067D9 02 00                 5664 	.byte #0x02, #0x00	;  2
      0067DB 06 00                 5665 	.byte #0x06, #0x00	;  6
      0067DD 00 00                 5666 	.byte #0x00, #0x00	;  0
      0067DF 00 00                 5667 	.byte #0x00,#0x00
      0067E1 3B 3F                 5668 	.byte _reset_acc, (_reset_acc >> 8)
      0067E3 02 00                 5669 	.byte #0x02, #0x00	;  2
      0067E5 01 00                 5670 	.byte #0x01, #0x00	;  1
      0067E7 02 00                 5671 	.byte #0x02, #0x00	;  2
      0067E9 00 00                 5672 	.byte #0x00,#0x00
      0067EB E2 29                 5673 	.byte _accumulate, (_accumulate >> 8)
      0067ED 02 00                 5674 	.byte #0x02, #0x00	;  2
      0067EF 02 00                 5675 	.byte #0x02, #0x00	;  2
      0067F1 01 00                 5676 	.byte #0x01, #0x00	;  1
      0067F3 00 00                 5677 	.byte #0x00,#0x00
      0067F5 2D 3E                 5678 	.byte _push_acc, (_push_acc >> 8)
      0067F7 FF 7F                 5679 	.byte #0xff, #0x7f	;  32767
      0067F9 05 00                 5680 	.byte #0x05, #0x00	;  5
      0067FB FF 7F                 5681 	.byte #0xff, #0x7f	;  32767
      0067FD 00 00                 5682 	.byte #0x00,#0x00
      0067FF 3B 3F                 5683 	.byte _reset_acc, (_reset_acc >> 8)
      006801 FF 7F                 5684 	.byte #0xff, #0x7f	;  32767
      006803 06 00                 5685 	.byte #0x06, #0x00	;  6
      006805 FF 7F                 5686 	.byte #0xff, #0x7f	;  32767
      006807 00 00                 5687 	.byte #0x00,#0x00
      006809 00 00                 5688 	.byte #0x00,#0x00
      00680B FF 7F                 5689 	.byte #0xff, #0x7f	;  32767
      00680D 04 00                 5690 	.byte #0x04, #0x00	;  4
      00680F FF 7F                 5691 	.byte #0xff, #0x7f	;  32767
      006811 00 00                 5692 	.byte #0x00,#0x00
      006813 A5 3F                 5693 	.byte _reset_base, (_reset_base >> 8)
      006815 FF 7F                 5694 	.byte #0xff, #0x7f	;  32767
      006817 03 00                 5695 	.byte #0x03, #0x00	;  3
      006819 FF 7F                 5696 	.byte #0xff, #0x7f	;  32767
      00681B 00 00                 5697 	.byte #0x00,#0x00
      00681D 23 40                 5698 	.byte _help, (_help >> 8)
      00681F FF 7F                 5699 	.byte #0xff, #0x7f	;  32767
      006821 07 00                 5700 	.byte #0x07, #0x00	;  7
      006823 03 00                 5701 	.byte #0x03, #0x00	;  3
      006825 00 00                 5702 	.byte #0x00,#0x00
      006827 53 2B                 5703 	.byte _dump_pop, (_dump_pop >> 8)
      006829 00 80                 5704 	.byte #0x00, #0x80	; -32768
      00682B 00 80                 5705 	.byte #0x00, #0x80	; -32768
      00682D 00 80                 5706 	.byte #0x00, #0x80	; -32768
      00682F 00 00                 5707 	.byte #0x00,#0x00
      006831 00 00                 5708 	.byte #0x00,#0x00
                                   5709 	.area CABS    (ABS,CODE)
