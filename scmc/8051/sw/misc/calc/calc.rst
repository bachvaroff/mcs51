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
      00800C                        324 	.ds 8207
                                    325 ;--------------------------------------------------------
                                    326 ; absolute external ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area XABS    (ABS,XDATA)
                                    329 ;--------------------------------------------------------
                                    330 ; external initialized ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XISEG   (XDATA)
      00A01D                        333 _hexp:
      00A01D                        334 	.ds 3
      00A020                        335 _decp:
      00A020                        336 	.ds 3
      00A023                        337 _hexP:
      00A023                        338 	.ds 3
      00A026                        339 _decP:
      00A026                        340 	.ds 3
      00A029                        341 _hexv:
      00A029                        342 	.ds 3
      00A02C                        343 _decv:
      00A02C                        344 	.ds 3
      00A02F                        345 _hexV:
      00A02F                        346 	.ds 3
      00A032                        347 _decV:
      00A032                        348 	.ds 3
      00A035                        349 _deltas:
      00A035                        350 	.ds 150
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
      002003 02 43 C1         [24]  388 	ljmp	_main
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
                                    458 ;	calc.c:83: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
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
                                    479 ;	calc.c:84: struct ctx *ctx = (struct ctx *)_ctx;
      0029F2 E5 08            [12]  480 	mov	a,_bp
      0029F4 24 08            [12]  481 	add	a,#0x08
      0029F6 F8               [12]  482 	mov	r0,a
      0029F7 A6 05            [24]  483 	mov	@r0,ar5
      0029F9 08               [12]  484 	inc	r0
      0029FA A6 06            [24]  485 	mov	@r0,ar6
      0029FC 08               [12]  486 	inc	r0
      0029FD A6 07            [24]  487 	mov	@r0,ar7
                                    488 ;	calc.c:89: if (!ctx->acc_valid) {
      0029FF E5 08            [12]  489 	mov	a,_bp
      002A01 24 08            [12]  490 	add	a,#0x08
      002A03 F8               [12]  491 	mov	r0,a
      002A04 74 08            [12]  492 	mov	a,#0x08
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
      002A15 12 4C FF         [24]  504 	lcall	__gptrget
      002A18 70 31            [24]  505 	jnz	00102$
                                    506 ;	calc.c:90: ctx->acc_valid = 1;
      002A1A 8A 82            [24]  507 	mov	dpl,r2
      002A1C 8B 83            [24]  508 	mov	dph,r3
      002A1E 8C F0            [24]  509 	mov	b,r4
      002A20 74 01            [12]  510 	mov	a,#0x01
      002A22 12 48 84         [24]  511 	lcall	__gptrput
                                    512 ;	calc.c:91: ctx->acc = 0l;
      002A25 E5 08            [12]  513 	mov	a,_bp
      002A27 24 08            [12]  514 	add	a,#0x08
      002A29 F8               [12]  515 	mov	r0,a
      002A2A 74 04            [12]  516 	mov	a,#0x04
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
      002A3C 12 48 84         [24]  529 	lcall	__gptrput
      002A3F A3               [24]  530 	inc	dptr
      002A40 12 48 84         [24]  531 	lcall	__gptrput
      002A43 A3               [24]  532 	inc	dptr
      002A44 12 48 84         [24]  533 	lcall	__gptrput
      002A47 A3               [24]  534 	inc	dptr
      002A48 12 48 84         [24]  535 	lcall	__gptrput
      002A4B                        536 00102$:
                                    537 ;	calc.c:94: d = strtol(ctx->digit, NULL, ctx->base);
      002A4B E5 08            [12]  538 	mov	a,_bp
      002A4D 24 08            [12]  539 	add	a,#0x08
      002A4F F8               [12]  540 	mov	r0,a
      002A50 86 82            [24]  541 	mov	dpl,@r0
      002A52 08               [12]  542 	inc	r0
      002A53 86 83            [24]  543 	mov	dph,@r0
      002A55 08               [12]  544 	inc	r0
      002A56 86 F0            [24]  545 	mov	b,@r0
      002A58 12 4C FF         [24]  546 	lcall	__gptrget
      002A5B FB               [12]  547 	mov	r3,a
      002A5C A3               [24]  548 	inc	dptr
      002A5D 12 4C FF         [24]  549 	lcall	__gptrget
      002A60 FC               [12]  550 	mov	r4,a
      002A61 E5 08            [12]  551 	mov	a,_bp
      002A63 24 08            [12]  552 	add	a,#0x08
      002A65 F8               [12]  553 	mov	r0,a
      002A66 74 09            [12]  554 	mov	a,#0x09
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
      002A82 12 46 46         [24]  572 	lcall	_strtol
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
                                    587 ;	calc.c:95: ctx->acc = ctx->acc * ctx->base + d;
      002A9B E5 08            [12]  588 	mov	a,_bp
      002A9D 24 08            [12]  589 	add	a,#0x08
      002A9F F8               [12]  590 	mov	r0,a
      002AA0 A9 08            [24]  591 	mov	r1,_bp
      002AA2 09               [12]  592 	inc	r1
      002AA3 74 04            [12]  593 	mov	a,#0x04
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
      002AC0 12 4C FF         [24]  615 	lcall	__gptrget
      002AC3 F7               [12]  616 	mov	@r1,a
      002AC4 A3               [24]  617 	inc	dptr
      002AC5 12 4C FF         [24]  618 	lcall	__gptrget
      002AC8 09               [12]  619 	inc	r1
      002AC9 F7               [12]  620 	mov	@r1,a
      002ACA A3               [24]  621 	inc	dptr
      002ACB 12 4C FF         [24]  622 	lcall	__gptrget
      002ACE 09               [12]  623 	inc	r1
      002ACF F7               [12]  624 	mov	@r1,a
      002AD0 A3               [24]  625 	inc	dptr
      002AD1 12 4C FF         [24]  626 	lcall	__gptrget
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
      002AE3 12 4C FF         [24]  637 	lcall	__gptrget
      002AE6 FA               [12]  638 	mov	r2,a
      002AE7 A3               [24]  639 	inc	dptr
      002AE8 12 4C FF         [24]  640 	lcall	__gptrget
      002AEB FB               [12]  641 	mov	r3,a
      002AEC A3               [24]  642 	inc	dptr
      002AED 12 4C FF         [24]  643 	lcall	__gptrget
      002AF0 FE               [12]  644 	mov	r6,a
      002AF1 A3               [24]  645 	inc	dptr
      002AF2 12 4C FF         [24]  646 	lcall	__gptrget
      002AF5 FF               [12]  647 	mov	r7,a
      002AF6 C0 02            [24]  648 	push	ar2
      002AF8 C0 03            [24]  649 	push	ar3
      002AFA C0 06            [24]  650 	push	ar6
      002AFC C0 07            [24]  651 	push	ar7
      002AFE E5 08            [12]  652 	mov	a,_bp
      002B00 24 04            [12]  653 	add	a,#0x04
      002B02 F8               [12]  654 	mov	r0,a
      002B03 86 82            [24]  655 	mov	dpl,@r0
      002B05 08               [12]  656 	inc	r0
      002B06 86 83            [24]  657 	mov	dph,@r0
      002B08 08               [12]  658 	inc	r0
      002B09 86 F0            [24]  659 	mov	b,@r0
      002B0B 08               [12]  660 	inc	r0
      002B0C E6               [12]  661 	mov	a,@r0
      002B0D 12 50 F8         [24]  662 	lcall	__mullong
      002B10 AC 82            [24]  663 	mov	r4,dpl
      002B12 AD 83            [24]  664 	mov	r5,dph
      002B14 AE F0            [24]  665 	mov	r6,b
      002B16 FF               [12]  666 	mov	r7,a
      002B17 E5 81            [12]  667 	mov	a,sp
      002B19 24 FC            [12]  668 	add	a,#0xfc
      002B1B F5 81            [12]  669 	mov	sp,a
      002B1D E5 08            [12]  670 	mov	a,_bp
      002B1F 24 0B            [12]  671 	add	a,#0x0b
      002B21 F8               [12]  672 	mov	r0,a
      002B22 E6               [12]  673 	mov	a,@r0
      002B23 2C               [12]  674 	add	a,r4
      002B24 FC               [12]  675 	mov	r4,a
      002B25 08               [12]  676 	inc	r0
      002B26 E6               [12]  677 	mov	a,@r0
      002B27 3D               [12]  678 	addc	a,r5
      002B28 FD               [12]  679 	mov	r5,a
      002B29 08               [12]  680 	inc	r0
      002B2A E6               [12]  681 	mov	a,@r0
      002B2B 3E               [12]  682 	addc	a,r6
      002B2C FE               [12]  683 	mov	r6,a
      002B2D 08               [12]  684 	inc	r0
      002B2E E6               [12]  685 	mov	a,@r0
      002B2F 3F               [12]  686 	addc	a,r7
      002B30 FF               [12]  687 	mov	r7,a
      002B31 A8 08            [24]  688 	mov	r0,_bp
      002B33 08               [12]  689 	inc	r0
      002B34 86 82            [24]  690 	mov	dpl,@r0
      002B36 08               [12]  691 	inc	r0
      002B37 86 83            [24]  692 	mov	dph,@r0
      002B39 08               [12]  693 	inc	r0
      002B3A 86 F0            [24]  694 	mov	b,@r0
      002B3C EC               [12]  695 	mov	a,r4
      002B3D 12 48 84         [24]  696 	lcall	__gptrput
      002B40 A3               [24]  697 	inc	dptr
      002B41 ED               [12]  698 	mov	a,r5
      002B42 12 48 84         [24]  699 	lcall	__gptrput
      002B45 A3               [24]  700 	inc	dptr
      002B46 EE               [12]  701 	mov	a,r6
      002B47 12 48 84         [24]  702 	lcall	__gptrput
      002B4A A3               [24]  703 	inc	dptr
      002B4B EF               [12]  704 	mov	a,r7
      002B4C 12 48 84         [24]  705 	lcall	__gptrput
                                    706 ;	calc.c:97: return 1;
      002B4F 90 00 01         [24]  707 	mov	dptr,#0x0001
                                    708 ;	calc.c:98: }
      002B52 85 08 81         [24]  709 	mov	sp,_bp
      002B55 D0 08            [24]  710 	pop	_bp
      002B57 22               [24]  711 	ret
                                    712 ;------------------------------------------------------------
                                    713 ;Allocation info for local variables in function 'dump_pop'
                                    714 ;------------------------------------------------------------
                                    715 ;delta                     Allocated to stack - _bp -5
                                    716 ;_ctx                      Allocated to registers r5 r6 r7 
                                    717 ;ctx                       Allocated to stack - _bp +5
                                    718 ;d                         Allocated to stack - _bp +8
                                    719 ;r                         Allocated to stack - _bp +2
                                    720 ;__1310720001              Allocated to registers 
                                    721 ;s                         Allocated to registers r5 r6 r7 
                                    722 ;__1966080003              Allocated to registers 
                                    723 ;s                         Allocated to registers r4 r5 r6 
                                    724 ;sloc0                     Allocated to stack - _bp +1
                                    725 ;sloc1                     Allocated to stack - _bp +2
                                    726 ;------------------------------------------------------------
                                    727 ;	calc.c:100: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    728 ;	-----------------------------------------
                                    729 ;	 function dump_pop
                                    730 ;	-----------------------------------------
      002B58                        731 _dump_pop:
      002B58 C0 08            [24]  732 	push	_bp
      002B5A E5 81            [12]  733 	mov	a,sp
      002B5C F5 08            [12]  734 	mov	_bp,a
      002B5E 24 0B            [12]  735 	add	a,#0x0b
      002B60 F5 81            [12]  736 	mov	sp,a
      002B62 AD 82            [24]  737 	mov	r5,dpl
      002B64 AE 83            [24]  738 	mov	r6,dph
      002B66 AF F0            [24]  739 	mov	r7,b
                                    740 ;	calc.c:101: struct ctx *ctx = (struct ctx *)_ctx;
      002B68 E5 08            [12]  741 	mov	a,_bp
      002B6A 24 05            [12]  742 	add	a,#0x05
      002B6C F8               [12]  743 	mov	r0,a
      002B6D A6 05            [24]  744 	mov	@r0,ar5
      002B6F 08               [12]  745 	inc	r0
      002B70 A6 06            [24]  746 	mov	@r0,ar6
      002B72 08               [12]  747 	inc	r0
      002B73 A6 07            [24]  748 	mov	@r0,ar7
                                    749 ;	calc.c:105: if (delta->event == EVENT_TERM) printstr("\r\n");
      002B75 E5 08            [12]  750 	mov	a,_bp
      002B77 24 FB            [12]  751 	add	a,#0xfb
      002B79 F8               [12]  752 	mov	r0,a
      002B7A 86 02            [24]  753 	mov	ar2,@r0
      002B7C 08               [12]  754 	inc	r0
      002B7D 86 03            [24]  755 	mov	ar3,@r0
      002B7F 08               [12]  756 	inc	r0
      002B80 86 04            [24]  757 	mov	ar4,@r0
      002B82 74 02            [12]  758 	mov	a,#0x02
      002B84 2A               [12]  759 	add	a,r2
      002B85 FA               [12]  760 	mov	r2,a
      002B86 E4               [12]  761 	clr	a
      002B87 3B               [12]  762 	addc	a,r3
      002B88 FB               [12]  763 	mov	r3,a
      002B89 8A 82            [24]  764 	mov	dpl,r2
      002B8B 8B 83            [24]  765 	mov	dph,r3
      002B8D 8C F0            [24]  766 	mov	b,r4
      002B8F 12 4C FF         [24]  767 	lcall	__gptrget
      002B92 FE               [12]  768 	mov	r6,a
      002B93 A3               [24]  769 	inc	dptr
      002B94 12 4C FF         [24]  770 	lcall	__gptrget
      002B97 FF               [12]  771 	mov	r7,a
      002B98 BE 06 3D         [24]  772 	cjne	r6,#0x06,00102$
      002B9B BF 00 3A         [24]  773 	cjne	r7,#0x00,00102$
      002B9E 7D 80            [12]  774 	mov	r5,#___str_0
      002BA0 7E 65            [12]  775 	mov	r6,#(___str_0 >> 8)
      002BA2 7F 80            [12]  776 	mov	r7,#0x80
                                    777 ;	calc.c:50: return;
      002BA4                        778 00116$:
                                    779 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002BA4 8D 82            [24]  780 	mov	dpl,r5
      002BA6 8E 83            [24]  781 	mov	dph,r6
      002BA8 8F F0            [24]  782 	mov	b,r7
      002BAA A8 08            [24]  783 	mov	r0,_bp
      002BAC 08               [12]  784 	inc	r0
      002BAD 12 4C FF         [24]  785 	lcall	__gptrget
      002BB0 F6               [12]  786 	mov	@r0,a
      002BB1 A8 08            [24]  787 	mov	r0,_bp
      002BB3 08               [12]  788 	inc	r0
      002BB4 E6               [12]  789 	mov	a,@r0
      002BB5 60 21            [24]  790 	jz	00102$
      002BB7 C0 02            [24]  791 	push	ar2
      002BB9 C0 03            [24]  792 	push	ar3
      002BBB C0 04            [24]  793 	push	ar4
      002BBD A8 08            [24]  794 	mov	r0,_bp
      002BBF 08               [12]  795 	inc	r0
      002BC0 86 03            [24]  796 	mov	ar3,@r0
      002BC2 7C 00            [12]  797 	mov	r4,#0x00
      002BC4 8B 82            [24]  798 	mov	dpl,r3
      002BC6 8C 83            [24]  799 	mov	dph,r4
      002BC8 12 29 C0         [24]  800 	lcall	_putchar
      002BCB 0D               [12]  801 	inc	r5
      002BCC BD 00 01         [24]  802 	cjne	r5,#0x00,00170$
      002BCF 0E               [12]  803 	inc	r6
      002BD0                        804 00170$:
      002BD0 D0 04            [24]  805 	pop	ar4
      002BD2 D0 03            [24]  806 	pop	ar3
      002BD4 D0 02            [24]  807 	pop	ar2
                                    808 ;	calc.c:105: if (delta->event == EVENT_TERM) printstr("\r\n");
      002BD6 80 CC            [24]  809 	sjmp	00116$
      002BD8                        810 00102$:
                                    811 ;	calc.c:107: r = stack_pop(&ctx->s, &d);
      002BD8 C0 02            [24]  812 	push	ar2
      002BDA C0 03            [24]  813 	push	ar3
      002BDC C0 04            [24]  814 	push	ar4
      002BDE E5 08            [12]  815 	mov	a,_bp
      002BE0 24 08            [12]  816 	add	a,#0x08
      002BE2 FF               [12]  817 	mov	r7,a
      002BE3 A8 08            [24]  818 	mov	r0,_bp
      002BE5 08               [12]  819 	inc	r0
      002BE6 08               [12]  820 	inc	r0
      002BE7 A6 07            [24]  821 	mov	@r0,ar7
      002BE9 08               [12]  822 	inc	r0
      002BEA 76 00            [12]  823 	mov	@r0,#0x00
      002BEC 08               [12]  824 	inc	r0
      002BED 76 40            [12]  825 	mov	@r0,#0x40
      002BEF E5 08            [12]  826 	mov	a,_bp
      002BF1 24 05            [12]  827 	add	a,#0x05
      002BF3 F8               [12]  828 	mov	r0,a
      002BF4 74 0B            [12]  829 	mov	a,#0x0b
      002BF6 26               [12]  830 	add	a,@r0
      002BF7 FA               [12]  831 	mov	r2,a
      002BF8 E4               [12]  832 	clr	a
      002BF9 08               [12]  833 	inc	r0
      002BFA 36               [12]  834 	addc	a,@r0
      002BFB FB               [12]  835 	mov	r3,a
      002BFC 08               [12]  836 	inc	r0
      002BFD 86 06            [24]  837 	mov	ar6,@r0
      002BFF C0 07            [24]  838 	push	ar7
      002C01 C0 04            [24]  839 	push	ar4
      002C03 C0 03            [24]  840 	push	ar3
      002C05 C0 02            [24]  841 	push	ar2
      002C07 A8 08            [24]  842 	mov	r0,_bp
      002C09 08               [12]  843 	inc	r0
      002C0A 08               [12]  844 	inc	r0
      002C0B E6               [12]  845 	mov	a,@r0
      002C0C C0 E0            [24]  846 	push	acc
      002C0E 08               [12]  847 	inc	r0
      002C0F E6               [12]  848 	mov	a,@r0
      002C10 C0 E0            [24]  849 	push	acc
      002C12 08               [12]  850 	inc	r0
      002C13 E6               [12]  851 	mov	a,@r0
      002C14 C0 E0            [24]  852 	push	acc
      002C16 8A 82            [24]  853 	mov	dpl,r2
      002C18 8B 83            [24]  854 	mov	dph,r3
      002C1A 8E F0            [24]  855 	mov	b,r6
      002C1C 12 27 7F         [24]  856 	lcall	_stack_pop
      002C1F AD 82            [24]  857 	mov	r5,dpl
      002C21 AE 83            [24]  858 	mov	r6,dph
      002C23 15 81            [12]  859 	dec	sp
      002C25 15 81            [12]  860 	dec	sp
      002C27 15 81            [12]  861 	dec	sp
      002C29 D0 02            [24]  862 	pop	ar2
      002C2B D0 03            [24]  863 	pop	ar3
      002C2D D0 04            [24]  864 	pop	ar4
      002C2F D0 07            [24]  865 	pop	ar7
      002C31 A8 08            [24]  866 	mov	r0,_bp
      002C33 08               [12]  867 	inc	r0
      002C34 08               [12]  868 	inc	r0
      002C35 A6 05            [24]  869 	mov	@r0,ar5
      002C37 08               [12]  870 	inc	r0
      002C38 A6 06            [24]  871 	mov	@r0,ar6
                                    872 ;	calc.c:108: if (!r) {
      002C3A D0 04            [24]  873 	pop	ar4
      002C3C D0 03            [24]  874 	pop	ar3
      002C3E D0 02            [24]  875 	pop	ar2
      002C40 ED               [12]  876 	mov	a,r5
      002C41 4E               [12]  877 	orl	a,r6
      002C42 70 3D            [24]  878 	jnz	00134$
                                    879 ;	calc.c:109: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002C44 8A 82            [24]  880 	mov	dpl,r2
      002C46 8B 83            [24]  881 	mov	dph,r3
      002C48 8C F0            [24]  882 	mov	b,r4
      002C4A 12 4C FF         [24]  883 	lcall	__gptrget
      002C4D FA               [12]  884 	mov	r2,a
      002C4E A3               [24]  885 	inc	dptr
      002C4F 12 4C FF         [24]  886 	lcall	__gptrget
      002C52 FB               [12]  887 	mov	r3,a
      002C53 BA 06 06         [24]  888 	cjne	r2,#0x06,00172$
      002C56 BB 00 03         [24]  889 	cjne	r3,#0x00,00172$
      002C59 02 2D 41         [24]  890 	ljmp	00110$
      002C5C                        891 00172$:
      002C5C 7C 83            [12]  892 	mov	r4,#___str_1
      002C5E 7D 65            [12]  893 	mov	r5,#(___str_1 >> 8)
      002C60 7E 80            [12]  894 	mov	r6,#0x80
                                    895 ;	calc.c:50: return;
      002C62                        896 00119$:
                                    897 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002C62 8C 82            [24]  898 	mov	dpl,r4
      002C64 8D 83            [24]  899 	mov	dph,r5
      002C66 8E F0            [24]  900 	mov	b,r6
      002C68 12 4C FF         [24]  901 	lcall	__gptrget
      002C6B FB               [12]  902 	mov	r3,a
      002C6C 70 03            [24]  903 	jnz	00173$
      002C6E 02 2D 41         [24]  904 	ljmp	00110$
      002C71                        905 00173$:
      002C71 7A 00            [12]  906 	mov	r2,#0x00
      002C73 8B 82            [24]  907 	mov	dpl,r3
      002C75 8A 83            [24]  908 	mov	dph,r2
      002C77 12 29 C0         [24]  909 	lcall	_putchar
      002C7A 0C               [12]  910 	inc	r4
                                    911 ;	calc.c:110: } else while (r > 0) {
      002C7B BC 00 E4         [24]  912 	cjne	r4,#0x00,00119$
      002C7E 0D               [12]  913 	inc	r5
      002C7F 80 E1            [24]  914 	sjmp	00119$
      002C81                        915 00134$:
      002C81                        916 00105$:
      002C81 A8 08            [24]  917 	mov	r0,_bp
      002C83 08               [12]  918 	inc	r0
      002C84 08               [12]  919 	inc	r0
      002C85 C3               [12]  920 	clr	c
      002C86 E4               [12]  921 	clr	a
      002C87 96               [12]  922 	subb	a,@r0
      002C88 74 80            [12]  923 	mov	a,#(0x00 ^ 0x80)
      002C8A 08               [12]  924 	inc	r0
      002C8B 86 F0            [24]  925 	mov	b,@r0
      002C8D 63 F0 80         [24]  926 	xrl	b,#0x80
      002C90 95 F0            [12]  927 	subb	a,b
      002C92 40 03            [24]  928 	jc	00175$
      002C94 02 2D 41         [24]  929 	ljmp	00110$
      002C97                        930 00175$:
                                    931 ;	calc.c:111: printf((ctx->base == 16l) ? hexV : decV, d);
      002C97 E5 08            [12]  932 	mov	a,_bp
      002C99 24 05            [12]  933 	add	a,#0x05
      002C9B F8               [12]  934 	mov	r0,a
      002C9C 86 82            [24]  935 	mov	dpl,@r0
      002C9E 08               [12]  936 	inc	r0
      002C9F 86 83            [24]  937 	mov	dph,@r0
      002CA1 08               [12]  938 	inc	r0
      002CA2 86 F0            [24]  939 	mov	b,@r0
      002CA4 12 4C FF         [24]  940 	lcall	__gptrget
      002CA7 FB               [12]  941 	mov	r3,a
      002CA8 A3               [24]  942 	inc	dptr
      002CA9 12 4C FF         [24]  943 	lcall	__gptrget
      002CAC FC               [12]  944 	mov	r4,a
      002CAD A3               [24]  945 	inc	dptr
      002CAE 12 4C FF         [24]  946 	lcall	__gptrget
      002CB1 FD               [12]  947 	mov	r5,a
      002CB2 A3               [24]  948 	inc	dptr
      002CB3 12 4C FF         [24]  949 	lcall	__gptrget
      002CB6 FE               [12]  950 	mov	r6,a
      002CB7 BB 10 16         [24]  951 	cjne	r3,#0x10,00123$
      002CBA BC 00 13         [24]  952 	cjne	r4,#0x00,00123$
      002CBD BD 00 10         [24]  953 	cjne	r5,#0x00,00123$
      002CC0 BE 00 0D         [24]  954 	cjne	r6,#0x00,00123$
      002CC3 90 A0 2F         [24]  955 	mov	dptr,#_hexV
      002CC6 E0               [24]  956 	movx	a,@dptr
      002CC7 FC               [12]  957 	mov	r4,a
      002CC8 A3               [24]  958 	inc	dptr
      002CC9 E0               [24]  959 	movx	a,@dptr
      002CCA FD               [12]  960 	mov	r5,a
      002CCB A3               [24]  961 	inc	dptr
      002CCC E0               [24]  962 	movx	a,@dptr
      002CCD FE               [12]  963 	mov	r6,a
      002CCE 80 0B            [24]  964 	sjmp	00124$
      002CD0                        965 00123$:
      002CD0 90 A0 32         [24]  966 	mov	dptr,#_decV
      002CD3 E0               [24]  967 	movx	a,@dptr
      002CD4 FC               [12]  968 	mov	r4,a
      002CD5 A3               [24]  969 	inc	dptr
      002CD6 E0               [24]  970 	movx	a,@dptr
      002CD7 FD               [12]  971 	mov	r5,a
      002CD8 A3               [24]  972 	inc	dptr
      002CD9 E0               [24]  973 	movx	a,@dptr
      002CDA FE               [12]  974 	mov	r6,a
      002CDB                        975 00124$:
      002CDB C0 07            [24]  976 	push	ar7
      002CDD E5 08            [12]  977 	mov	a,_bp
      002CDF 24 08            [12]  978 	add	a,#0x08
      002CE1 F8               [12]  979 	mov	r0,a
      002CE2 E6               [12]  980 	mov	a,@r0
      002CE3 C0 E0            [24]  981 	push	acc
      002CE5 08               [12]  982 	inc	r0
      002CE6 E6               [12]  983 	mov	a,@r0
      002CE7 C0 E0            [24]  984 	push	acc
      002CE9 08               [12]  985 	inc	r0
      002CEA E6               [12]  986 	mov	a,@r0
      002CEB C0 E0            [24]  987 	push	acc
      002CED 08               [12]  988 	inc	r0
      002CEE E6               [12]  989 	mov	a,@r0
      002CEF C0 E0            [24]  990 	push	acc
      002CF1 C0 04            [24]  991 	push	ar4
      002CF3 C0 05            [24]  992 	push	ar5
      002CF5 C0 06            [24]  993 	push	ar6
      002CF7 12 4C C6         [24]  994 	lcall	_printf
      002CFA E5 81            [12]  995 	mov	a,sp
      002CFC 24 F9            [12]  996 	add	a,#0xf9
      002CFE F5 81            [12]  997 	mov	sp,a
      002D00 D0 07            [24]  998 	pop	ar7
                                    999 ;	calc.c:112: r = stack_pop(&ctx->s, &d);
      002D02 8F 04            [24] 1000 	mov	ar4,r7
      002D04 7D 00            [12] 1001 	mov	r5,#0x00
      002D06 7E 40            [12] 1002 	mov	r6,#0x40
      002D08 C0 07            [24] 1003 	push	ar7
      002D0A E5 08            [12] 1004 	mov	a,_bp
      002D0C 24 05            [12] 1005 	add	a,#0x05
      002D0E F8               [12] 1006 	mov	r0,a
      002D0F 74 0B            [12] 1007 	mov	a,#0x0b
      002D11 26               [12] 1008 	add	a,@r0
      002D12 FA               [12] 1009 	mov	r2,a
      002D13 E4               [12] 1010 	clr	a
      002D14 08               [12] 1011 	inc	r0
      002D15 36               [12] 1012 	addc	a,@r0
      002D16 FB               [12] 1013 	mov	r3,a
      002D17 08               [12] 1014 	inc	r0
      002D18 86 07            [24] 1015 	mov	ar7,@r0
      002D1A C0 04            [24] 1016 	push	ar4
      002D1C C0 05            [24] 1017 	push	ar5
      002D1E C0 06            [24] 1018 	push	ar6
      002D20 8A 82            [24] 1019 	mov	dpl,r2
      002D22 8B 83            [24] 1020 	mov	dph,r3
      002D24 8F F0            [24] 1021 	mov	b,r7
      002D26 12 27 7F         [24] 1022 	lcall	_stack_pop
      002D29 AE 82            [24] 1023 	mov	r6,dpl
      002D2B AF 83            [24] 1024 	mov	r7,dph
      002D2D 15 81            [12] 1025 	dec	sp
      002D2F 15 81            [12] 1026 	dec	sp
      002D31 15 81            [12] 1027 	dec	sp
      002D33 A8 08            [24] 1028 	mov	r0,_bp
      002D35 08               [12] 1029 	inc	r0
      002D36 08               [12] 1030 	inc	r0
      002D37 A6 06            [24] 1031 	mov	@r0,ar6
      002D39 08               [12] 1032 	inc	r0
      002D3A A6 07            [24] 1033 	mov	@r0,ar7
      002D3C D0 07            [24] 1034 	pop	ar7
      002D3E 02 2C 81         [24] 1035 	ljmp	00105$
      002D41                       1036 00110$:
                                   1037 ;	calc.c:115: return 1;
      002D41 90 00 01         [24] 1038 	mov	dptr,#0x0001
                                   1039 ;	calc.c:116: }
      002D44 85 08 81         [24] 1040 	mov	sp,_bp
      002D47 D0 08            [24] 1041 	pop	_bp
      002D49 22               [24] 1042 	ret
                                   1043 ;------------------------------------------------------------
                                   1044 ;Allocation info for local variables in function 'dump_peek'
                                   1045 ;------------------------------------------------------------
                                   1046 ;d                         Allocated to stack - _bp -6
                                   1047 ;_ctx                      Allocated to registers r5 r6 r7 
                                   1048 ;ctx                       Allocated to registers r5 r6 r7 
                                   1049 ;------------------------------------------------------------
                                   1050 ;	calc.c:118: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1051 ;	-----------------------------------------
                                   1052 ;	 function dump_peek
                                   1053 ;	-----------------------------------------
      002D4A                       1054 _dump_peek:
      002D4A C0 08            [24] 1055 	push	_bp
      002D4C 85 81 08         [24] 1056 	mov	_bp,sp
                                   1057 ;	calc.c:119: struct ctx *ctx = (struct ctx *)_ctx;
                                   1058 ;	calc.c:121: printf((ctx->base == 16l) ? hexP : decP, d);
      002D4F 12 4C FF         [24] 1059 	lcall	__gptrget
      002D52 FD               [12] 1060 	mov	r5,a
      002D53 A3               [24] 1061 	inc	dptr
      002D54 12 4C FF         [24] 1062 	lcall	__gptrget
      002D57 FE               [12] 1063 	mov	r6,a
      002D58 A3               [24] 1064 	inc	dptr
      002D59 12 4C FF         [24] 1065 	lcall	__gptrget
      002D5C FF               [12] 1066 	mov	r7,a
      002D5D A3               [24] 1067 	inc	dptr
      002D5E 12 4C FF         [24] 1068 	lcall	__gptrget
      002D61 FC               [12] 1069 	mov	r4,a
      002D62 BD 10 16         [24] 1070 	cjne	r5,#0x10,00103$
      002D65 BE 00 13         [24] 1071 	cjne	r6,#0x00,00103$
      002D68 BF 00 10         [24] 1072 	cjne	r7,#0x00,00103$
      002D6B BC 00 0D         [24] 1073 	cjne	r4,#0x00,00103$
      002D6E 90 A0 23         [24] 1074 	mov	dptr,#_hexP
      002D71 E0               [24] 1075 	movx	a,@dptr
      002D72 FD               [12] 1076 	mov	r5,a
      002D73 A3               [24] 1077 	inc	dptr
      002D74 E0               [24] 1078 	movx	a,@dptr
      002D75 FE               [12] 1079 	mov	r6,a
      002D76 A3               [24] 1080 	inc	dptr
      002D77 E0               [24] 1081 	movx	a,@dptr
      002D78 FF               [12] 1082 	mov	r7,a
      002D79 80 0B            [24] 1083 	sjmp	00104$
      002D7B                       1084 00103$:
      002D7B 90 A0 26         [24] 1085 	mov	dptr,#_decP
      002D7E E0               [24] 1086 	movx	a,@dptr
      002D7F FD               [12] 1087 	mov	r5,a
      002D80 A3               [24] 1088 	inc	dptr
      002D81 E0               [24] 1089 	movx	a,@dptr
      002D82 FE               [12] 1090 	mov	r6,a
      002D83 A3               [24] 1091 	inc	dptr
      002D84 E0               [24] 1092 	movx	a,@dptr
      002D85 FF               [12] 1093 	mov	r7,a
      002D86                       1094 00104$:
      002D86 E5 08            [12] 1095 	mov	a,_bp
      002D88 24 FA            [12] 1096 	add	a,#0xfa
      002D8A F8               [12] 1097 	mov	r0,a
      002D8B E6               [12] 1098 	mov	a,@r0
      002D8C C0 E0            [24] 1099 	push	acc
      002D8E 08               [12] 1100 	inc	r0
      002D8F E6               [12] 1101 	mov	a,@r0
      002D90 C0 E0            [24] 1102 	push	acc
      002D92 08               [12] 1103 	inc	r0
      002D93 E6               [12] 1104 	mov	a,@r0
      002D94 C0 E0            [24] 1105 	push	acc
      002D96 08               [12] 1106 	inc	r0
      002D97 E6               [12] 1107 	mov	a,@r0
      002D98 C0 E0            [24] 1108 	push	acc
      002D9A C0 05            [24] 1109 	push	ar5
      002D9C C0 06            [24] 1110 	push	ar6
      002D9E C0 07            [24] 1111 	push	ar7
      002DA0 12 4C C6         [24] 1112 	lcall	_printf
      002DA3 E5 81            [12] 1113 	mov	a,sp
      002DA5 24 F9            [12] 1114 	add	a,#0xf9
      002DA7 F5 81            [12] 1115 	mov	sp,a
                                   1116 ;	calc.c:123: return 1;
      002DA9 90 00 01         [24] 1117 	mov	dptr,#0x0001
                                   1118 ;	calc.c:124: }
      002DAC D0 08            [24] 1119 	pop	_bp
      002DAE 22               [24] 1120 	ret
                                   1121 ;------------------------------------------------------------
                                   1122 ;Allocation info for local variables in function 'operator'
                                   1123 ;------------------------------------------------------------
                                   1124 ;delta                     Allocated to stack - _bp -5
                                   1125 ;_ctx                      Allocated to stack - _bp +1
                                   1126 ;ctx                       Allocated to stack - _bp +4
                                   1127 ;d0                        Allocated to stack - _bp +7
                                   1128 ;d1                        Allocated to stack - _bp +11
                                   1129 ;__1966080005              Allocated to registers 
                                   1130 ;s                         Allocated to registers r5 r4 r3 
                                   1131 ;__1966080007              Allocated to registers 
                                   1132 ;s                         Allocated to registers r5 r6 r7 
                                   1133 ;__1966080009              Allocated to registers 
                                   1134 ;s                         Allocated to registers r5 r6 r7 
                                   1135 ;__1966080011              Allocated to registers 
                                   1136 ;s                         Allocated to registers r5 r6 r7 
                                   1137 ;__1966080013              Allocated to registers 
                                   1138 ;s                         Allocated to registers r5 r6 r7 
                                   1139 ;__1966080015              Allocated to registers 
                                   1140 ;s                         Allocated to registers r5 r6 r7 
                                   1141 ;__1966080017              Allocated to registers 
                                   1142 ;s                         Allocated to registers r5 r6 r7 
                                   1143 ;__1966080019              Allocated to registers 
                                   1144 ;s                         Allocated to registers r5 r6 r7 
                                   1145 ;__2621440021              Allocated to registers 
                                   1146 ;s                         Allocated to registers r5 r6 r7 
                                   1147 ;__1966080023              Allocated to registers 
                                   1148 ;s                         Allocated to registers r5 r6 r7 
                                   1149 ;__2621440025              Allocated to registers 
                                   1150 ;s                         Allocated to registers r5 r6 r7 
                                   1151 ;__1966080027              Allocated to registers 
                                   1152 ;s                         Allocated to registers r5 r6 r7 
                                   1153 ;__2621440029              Allocated to registers 
                                   1154 ;s                         Allocated to registers r5 r6 r7 
                                   1155 ;__1966080031              Allocated to registers 
                                   1156 ;s                         Allocated to registers r5 r6 r7 
                                   1157 ;__2621440033              Allocated to registers 
                                   1158 ;s                         Allocated to registers r5 r6 r7 
                                   1159 ;__1966080035              Allocated to registers 
                                   1160 ;s                         Allocated to registers r5 r6 r7 
                                   1161 ;__2621440037              Allocated to registers 
                                   1162 ;s                         Allocated to registers r5 r6 r7 
                                   1163 ;__2621440039              Allocated to registers 
                                   1164 ;s                         Allocated to registers r5 r6 r7 
                                   1165 ;__1966080041              Allocated to registers 
                                   1166 ;s                         Allocated to registers r5 r6 r7 
                                   1167 ;__2621440043              Allocated to registers 
                                   1168 ;s                         Allocated to registers r5 r6 r7 
                                   1169 ;__2621440045              Allocated to registers 
                                   1170 ;s                         Allocated to registers r5 r6 r7 
                                   1171 ;__1966080047              Allocated to registers 
                                   1172 ;s                         Allocated to registers r5 r6 r7 
                                   1173 ;__2621440049              Allocated to registers 
                                   1174 ;s                         Allocated to registers r5 r6 r7 
                                   1175 ;__1966080051              Allocated to registers 
                                   1176 ;s                         Allocated to registers r5 r6 r7 
                                   1177 ;__2621440053              Allocated to registers 
                                   1178 ;s                         Allocated to registers r5 r6 r7 
                                   1179 ;__1966080055              Allocated to registers 
                                   1180 ;s                         Allocated to registers r5 r6 r7 
                                   1181 ;__2621440057              Allocated to registers 
                                   1182 ;s                         Allocated to registers r5 r6 r7 
                                   1183 ;__1966080059              Allocated to registers 
                                   1184 ;s                         Allocated to registers r5 r6 r7 
                                   1185 ;------------------------------------------------------------
                                   1186 ;	calc.c:126: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function operator
                                   1189 ;	-----------------------------------------
      002DAF                       1190 _operator:
      002DAF C0 08            [24] 1191 	push	_bp
      002DB1 85 81 08         [24] 1192 	mov	_bp,sp
      002DB4 C0 82            [24] 1193 	push	dpl
      002DB6 C0 83            [24] 1194 	push	dph
      002DB8 C0 F0            [24] 1195 	push	b
      002DBA E5 81            [12] 1196 	mov	a,sp
      002DBC 24 0B            [12] 1197 	add	a,#0x0b
      002DBE F5 81            [12] 1198 	mov	sp,a
                                   1199 ;	calc.c:127: struct ctx *ctx = (struct ctx *)_ctx;
      002DC0 A8 08            [24] 1200 	mov	r0,_bp
      002DC2 08               [12] 1201 	inc	r0
      002DC3 E5 08            [12] 1202 	mov	a,_bp
      002DC5 24 04            [12] 1203 	add	a,#0x04
      002DC7 F9               [12] 1204 	mov	r1,a
      002DC8 E6               [12] 1205 	mov	a,@r0
      002DC9 F7               [12] 1206 	mov	@r1,a
      002DCA 08               [12] 1207 	inc	r0
      002DCB 09               [12] 1208 	inc	r1
      002DCC E6               [12] 1209 	mov	a,@r0
      002DCD F7               [12] 1210 	mov	@r1,a
      002DCE 08               [12] 1211 	inc	r0
      002DCF 09               [12] 1212 	inc	r1
      002DD0 E6               [12] 1213 	mov	a,@r0
      002DD1 F7               [12] 1214 	mov	@r1,a
                                   1215 ;	calc.c:130: switch (ctx->digit[0]) {
      002DD2 E5 08            [12] 1216 	mov	a,_bp
      002DD4 24 04            [12] 1217 	add	a,#0x04
      002DD6 F8               [12] 1218 	mov	r0,a
      002DD7 74 09            [12] 1219 	mov	a,#0x09
      002DD9 26               [12] 1220 	add	a,@r0
      002DDA FD               [12] 1221 	mov	r5,a
      002DDB E4               [12] 1222 	clr	a
      002DDC 08               [12] 1223 	inc	r0
      002DDD 36               [12] 1224 	addc	a,@r0
      002DDE FE               [12] 1225 	mov	r6,a
      002DDF 08               [12] 1226 	inc	r0
      002DE0 86 07            [24] 1227 	mov	ar7,@r0
      002DE2 8D 82            [24] 1228 	mov	dpl,r5
      002DE4 8E 83            [24] 1229 	mov	dph,r6
      002DE6 8F F0            [24] 1230 	mov	b,r7
      002DE8 12 4C FF         [24] 1231 	lcall	__gptrget
      002DEB FF               [12] 1232 	mov	r7,a
      002DEC BF 25 03         [24] 1233 	cjne	r7,#0x25,00761$
      002DEF 02 38 62         [24] 1234 	ljmp	00154$
      002DF2                       1235 00761$:
      002DF2 BF 26 03         [24] 1236 	cjne	r7,#0x26,00762$
      002DF5 02 3A 60         [24] 1237 	ljmp	00164$
      002DF8                       1238 00762$:
      002DF8 BF 2A 03         [24] 1239 	cjne	r7,#0x2a,00763$
      002DFB 02 35 02         [24] 1240 	ljmp	00137$
      002DFE                       1241 00763$:
      002DFE BF 2B 03         [24] 1242 	cjne	r7,#0x2b,00764$
      002E01 02 32 8B         [24] 1243 	ljmp	00123$
      002E04                       1244 00764$:
      002E04 BF 2D 03         [24] 1245 	cjne	r7,#0x2d,00765$
      002E07 02 33 C6         [24] 1246 	ljmp	00130$
      002E0A                       1247 00765$:
      002E0A BF 2E 03         [24] 1248 	cjne	r7,#0x2e,00766$
      002E0D 02 30 09         [24] 1249 	ljmp	00111$
      002E10                       1250 00766$:
      002E10 BF 2F 03         [24] 1251 	cjne	r7,#0x2f,00767$
      002E13 02 36 64         [24] 1252 	ljmp	00144$
      002E16                       1253 00767$:
      002E16 BF 48 02         [24] 1254 	cjne	r7,#0x48,00768$
      002E19 80 59            [24] 1255 	sjmp	00102$
      002E1B                       1256 00768$:
      002E1B BF 50 03         [24] 1257 	cjne	r7,#0x50,00769$
      002E1E 02 2F 7D         [24] 1258 	ljmp	00107$
      002E21                       1259 00769$:
      002E21 BF 56 03         [24] 1260 	cjne	r7,#0x56,00770$
      002E24 02 30 F0         [24] 1261 	ljmp	00115$
      002E27                       1262 00770$:
      002E27 BF 5E 03         [24] 1263 	cjne	r7,#0x5e,00771$
      002E2A 02 3C D6         [24] 1264 	ljmp	00178$
      002E2D                       1265 00771$:
      002E2D BF 68 02         [24] 1266 	cjne	r7,#0x68,00772$
      002E30 80 20            [24] 1267 	sjmp	00101$
      002E32                       1268 00772$:
      002E32 BF 70 02         [24] 1269 	cjne	r7,#0x70,00773$
      002E35 80 5F            [24] 1270 	sjmp	00103$
      002E37                       1271 00773$:
      002E37 BF 76 03         [24] 1272 	cjne	r7,#0x76,00774$
      002E3A 02 30 09         [24] 1273 	ljmp	00111$
      002E3D                       1274 00774$:
      002E3D BF 78 03         [24] 1275 	cjne	r7,#0x78,00775$
      002E40 02 31 39         [24] 1276 	ljmp	00116$
      002E43                       1277 00775$:
      002E43 BF 7C 03         [24] 1278 	cjne	r7,#0x7c,00776$
      002E46 02 3B 9B         [24] 1279 	ljmp	00171$
      002E49                       1280 00776$:
      002E49 BF 7E 03         [24] 1281 	cjne	r7,#0x7e,00777$
      002E4C 02 3E 11         [24] 1282 	ljmp	00185$
      002E4F                       1283 00777$:
      002E4F 02 3E B2         [24] 1284 	ljmp	00189$
                                   1285 ;	calc.c:131: case 'h':
      002E52                       1286 00101$:
                                   1287 ;	calc.c:132: ctx->base = 10l;
      002E52 E5 08            [12] 1288 	mov	a,_bp
      002E54 24 04            [12] 1289 	add	a,#0x04
      002E56 F8               [12] 1290 	mov	r0,a
      002E57 86 82            [24] 1291 	mov	dpl,@r0
      002E59 08               [12] 1292 	inc	r0
      002E5A 86 83            [24] 1293 	mov	dph,@r0
      002E5C 08               [12] 1294 	inc	r0
      002E5D 86 F0            [24] 1295 	mov	b,@r0
      002E5F 74 0A            [12] 1296 	mov	a,#0x0a
      002E61 12 48 84         [24] 1297 	lcall	__gptrput
      002E64 A3               [24] 1298 	inc	dptr
      002E65 E4               [12] 1299 	clr	a
      002E66 12 48 84         [24] 1300 	lcall	__gptrput
      002E69 A3               [24] 1301 	inc	dptr
      002E6A 12 48 84         [24] 1302 	lcall	__gptrput
      002E6D A3               [24] 1303 	inc	dptr
      002E6E 12 48 84         [24] 1304 	lcall	__gptrput
                                   1305 ;	calc.c:133: break;
      002E71 02 3E B7         [24] 1306 	ljmp	00190$
                                   1307 ;	calc.c:134: case 'H':
      002E74                       1308 00102$:
                                   1309 ;	calc.c:135: ctx->base = 16l;
      002E74 E5 08            [12] 1310 	mov	a,_bp
      002E76 24 04            [12] 1311 	add	a,#0x04
      002E78 F8               [12] 1312 	mov	r0,a
      002E79 86 82            [24] 1313 	mov	dpl,@r0
      002E7B 08               [12] 1314 	inc	r0
      002E7C 86 83            [24] 1315 	mov	dph,@r0
      002E7E 08               [12] 1316 	inc	r0
      002E7F 86 F0            [24] 1317 	mov	b,@r0
      002E81 74 10            [12] 1318 	mov	a,#0x10
      002E83 12 48 84         [24] 1319 	lcall	__gptrput
      002E86 A3               [24] 1320 	inc	dptr
      002E87 E4               [12] 1321 	clr	a
      002E88 12 48 84         [24] 1322 	lcall	__gptrput
      002E8B A3               [24] 1323 	inc	dptr
      002E8C 12 48 84         [24] 1324 	lcall	__gptrput
      002E8F A3               [24] 1325 	inc	dptr
      002E90 12 48 84         [24] 1326 	lcall	__gptrput
                                   1327 ;	calc.c:136: break;
      002E93 02 3E B7         [24] 1328 	ljmp	00190$
                                   1329 ;	calc.c:137: case 'p':
      002E96                       1330 00103$:
                                   1331 ;	calc.c:138: printstr("\r\n");
      002E96 7D 80            [12] 1332 	mov	r5,#___str_0
      002E98 7C 65            [12] 1333 	mov	r4,#(___str_0 >> 8)
      002E9A 7B 80            [12] 1334 	mov	r3,#0x80
                                   1335 ;	calc.c:50: return;
      002E9C                       1336 00248$:
                                   1337 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002E9C 8D 82            [24] 1338 	mov	dpl,r5
      002E9E 8C 83            [24] 1339 	mov	dph,r4
      002EA0 8B F0            [24] 1340 	mov	b,r3
      002EA2 12 4C FF         [24] 1341 	lcall	__gptrget
      002EA5 FF               [12] 1342 	mov	r7,a
      002EA6 60 10            [24] 1343 	jz	00192$
      002EA8 7E 00            [12] 1344 	mov	r6,#0x00
      002EAA 8F 82            [24] 1345 	mov	dpl,r7
      002EAC 8E 83            [24] 1346 	mov	dph,r6
      002EAE 12 29 C0         [24] 1347 	lcall	_putchar
      002EB1 0D               [12] 1348 	inc	r5
                                   1349 ;	calc.c:138: printstr("\r\n");
      002EB2 BD 00 E7         [24] 1350 	cjne	r5,#0x00,00248$
      002EB5 0C               [12] 1351 	inc	r4
      002EB6 80 E4            [24] 1352 	sjmp	00248$
      002EB8                       1353 00192$:
                                   1354 ;	calc.c:139: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
      002EB8 E5 08            [12] 1355 	mov	a,_bp
      002EBA 24 07            [12] 1356 	add	a,#0x07
      002EBC FF               [12] 1357 	mov	r7,a
      002EBD 7E 00            [12] 1358 	mov	r6,#0x00
      002EBF 7D 40            [12] 1359 	mov	r5,#0x40
      002EC1 E5 08            [12] 1360 	mov	a,_bp
      002EC3 24 04            [12] 1361 	add	a,#0x04
      002EC5 F8               [12] 1362 	mov	r0,a
      002EC6 74 0B            [12] 1363 	mov	a,#0x0b
      002EC8 26               [12] 1364 	add	a,@r0
      002EC9 FA               [12] 1365 	mov	r2,a
      002ECA E4               [12] 1366 	clr	a
      002ECB 08               [12] 1367 	inc	r0
      002ECC 36               [12] 1368 	addc	a,@r0
      002ECD FB               [12] 1369 	mov	r3,a
      002ECE 08               [12] 1370 	inc	r0
      002ECF 86 04            [24] 1371 	mov	ar4,@r0
      002ED1 C0 07            [24] 1372 	push	ar7
      002ED3 C0 06            [24] 1373 	push	ar6
      002ED5 C0 05            [24] 1374 	push	ar5
      002ED7 8A 82            [24] 1375 	mov	dpl,r2
      002ED9 8B 83            [24] 1376 	mov	dph,r3
      002EDB 8C F0            [24] 1377 	mov	b,r4
      002EDD 12 28 56         [24] 1378 	lcall	_stack_peek
      002EE0 AE 82            [24] 1379 	mov	r6,dpl
      002EE2 AF 83            [24] 1380 	mov	r7,dph
      002EE4 15 81            [12] 1381 	dec	sp
      002EE6 15 81            [12] 1382 	dec	sp
      002EE8 15 81            [12] 1383 	dec	sp
      002EEA EE               [12] 1384 	mov	a,r6
      002EEB 4F               [12] 1385 	orl	a,r7
      002EEC 70 25            [24] 1386 	jnz	00105$
      002EEE 7D 83            [12] 1387 	mov	r5,#___str_1
      002EF0 7E 65            [12] 1388 	mov	r6,#(___str_1 >> 8)
      002EF2 7F 80            [12] 1389 	mov	r7,#0x80
                                   1390 ;	calc.c:50: return;
      002EF4                       1391 00251$:
                                   1392 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002EF4 8D 82            [24] 1393 	mov	dpl,r5
      002EF6 8E 83            [24] 1394 	mov	dph,r6
      002EF8 8F F0            [24] 1395 	mov	b,r7
      002EFA 12 4C FF         [24] 1396 	lcall	__gptrget
      002EFD FC               [12] 1397 	mov	r4,a
      002EFE 70 03            [24] 1398 	jnz	00781$
      002F00 02 3E B7         [24] 1399 	ljmp	00190$
      002F03                       1400 00781$:
      002F03 7B 00            [12] 1401 	mov	r3,#0x00
      002F05 8C 82            [24] 1402 	mov	dpl,r4
      002F07 8B 83            [24] 1403 	mov	dph,r3
      002F09 12 29 C0         [24] 1404 	lcall	_putchar
      002F0C 0D               [12] 1405 	inc	r5
                                   1406 ;	calc.c:139: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
      002F0D BD 00 E4         [24] 1407 	cjne	r5,#0x00,00251$
      002F10 0E               [12] 1408 	inc	r6
      002F11 80 E1            [24] 1409 	sjmp	00251$
      002F13                       1410 00105$:
                                   1411 ;	calc.c:141: printf((ctx->base == 16l) ? hexp : decp, d0);
      002F13 E5 08            [12] 1412 	mov	a,_bp
      002F15 24 04            [12] 1413 	add	a,#0x04
      002F17 F8               [12] 1414 	mov	r0,a
      002F18 86 82            [24] 1415 	mov	dpl,@r0
      002F1A 08               [12] 1416 	inc	r0
      002F1B 86 83            [24] 1417 	mov	dph,@r0
      002F1D 08               [12] 1418 	inc	r0
      002F1E 86 F0            [24] 1419 	mov	b,@r0
      002F20 12 4C FF         [24] 1420 	lcall	__gptrget
      002F23 FC               [12] 1421 	mov	r4,a
      002F24 A3               [24] 1422 	inc	dptr
      002F25 12 4C FF         [24] 1423 	lcall	__gptrget
      002F28 FD               [12] 1424 	mov	r5,a
      002F29 A3               [24] 1425 	inc	dptr
      002F2A 12 4C FF         [24] 1426 	lcall	__gptrget
      002F2D FE               [12] 1427 	mov	r6,a
      002F2E A3               [24] 1428 	inc	dptr
      002F2F 12 4C FF         [24] 1429 	lcall	__gptrget
      002F32 FF               [12] 1430 	mov	r7,a
      002F33 BC 10 16         [24] 1431 	cjne	r4,#0x10,00333$
      002F36 BD 00 13         [24] 1432 	cjne	r5,#0x00,00333$
      002F39 BE 00 10         [24] 1433 	cjne	r6,#0x00,00333$
      002F3C BF 00 0D         [24] 1434 	cjne	r7,#0x00,00333$
      002F3F 90 A0 1D         [24] 1435 	mov	dptr,#_hexp
      002F42 E0               [24] 1436 	movx	a,@dptr
      002F43 FD               [12] 1437 	mov	r5,a
      002F44 A3               [24] 1438 	inc	dptr
      002F45 E0               [24] 1439 	movx	a,@dptr
      002F46 FE               [12] 1440 	mov	r6,a
      002F47 A3               [24] 1441 	inc	dptr
      002F48 E0               [24] 1442 	movx	a,@dptr
      002F49 FF               [12] 1443 	mov	r7,a
      002F4A 80 0B            [24] 1444 	sjmp	00334$
      002F4C                       1445 00333$:
      002F4C 90 A0 20         [24] 1446 	mov	dptr,#_decp
      002F4F E0               [24] 1447 	movx	a,@dptr
      002F50 FD               [12] 1448 	mov	r5,a
      002F51 A3               [24] 1449 	inc	dptr
      002F52 E0               [24] 1450 	movx	a,@dptr
      002F53 FE               [12] 1451 	mov	r6,a
      002F54 A3               [24] 1452 	inc	dptr
      002F55 E0               [24] 1453 	movx	a,@dptr
      002F56 FF               [12] 1454 	mov	r7,a
      002F57                       1455 00334$:
      002F57 E5 08            [12] 1456 	mov	a,_bp
      002F59 24 07            [12] 1457 	add	a,#0x07
      002F5B F8               [12] 1458 	mov	r0,a
      002F5C E6               [12] 1459 	mov	a,@r0
      002F5D C0 E0            [24] 1460 	push	acc
      002F5F 08               [12] 1461 	inc	r0
      002F60 E6               [12] 1462 	mov	a,@r0
      002F61 C0 E0            [24] 1463 	push	acc
      002F63 08               [12] 1464 	inc	r0
      002F64 E6               [12] 1465 	mov	a,@r0
      002F65 C0 E0            [24] 1466 	push	acc
      002F67 08               [12] 1467 	inc	r0
      002F68 E6               [12] 1468 	mov	a,@r0
      002F69 C0 E0            [24] 1469 	push	acc
      002F6B C0 05            [24] 1470 	push	ar5
      002F6D C0 06            [24] 1471 	push	ar6
      002F6F C0 07            [24] 1472 	push	ar7
      002F71 12 4C C6         [24] 1473 	lcall	_printf
      002F74 E5 81            [12] 1474 	mov	a,sp
      002F76 24 F9            [12] 1475 	add	a,#0xf9
      002F78 F5 81            [12] 1476 	mov	sp,a
                                   1477 ;	calc.c:143: break;
      002F7A 02 3E B7         [24] 1478 	ljmp	00190$
                                   1479 ;	calc.c:144: case 'P':
      002F7D                       1480 00107$:
                                   1481 ;	calc.c:145: printstr("\r\n");
      002F7D 7D 80            [12] 1482 	mov	r5,#___str_0
      002F7F 7E 65            [12] 1483 	mov	r6,#(___str_0 >> 8)
      002F81 7F 80            [12] 1484 	mov	r7,#0x80
                                   1485 ;	calc.c:50: return;
      002F83                       1486 00254$:
                                   1487 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002F83 8D 82            [24] 1488 	mov	dpl,r5
      002F85 8E 83            [24] 1489 	mov	dph,r6
      002F87 8F F0            [24] 1490 	mov	b,r7
      002F89 12 4C FF         [24] 1491 	lcall	__gptrget
      002F8C FC               [12] 1492 	mov	r4,a
      002F8D 60 10            [24] 1493 	jz	00196$
      002F8F 7B 00            [12] 1494 	mov	r3,#0x00
      002F91 8C 82            [24] 1495 	mov	dpl,r4
      002F93 8B 83            [24] 1496 	mov	dph,r3
      002F95 12 29 C0         [24] 1497 	lcall	_putchar
      002F98 0D               [12] 1498 	inc	r5
                                   1499 ;	calc.c:145: printstr("\r\n");
      002F99 BD 00 E7         [24] 1500 	cjne	r5,#0x00,00254$
      002F9C 0E               [12] 1501 	inc	r6
      002F9D 80 E4            [24] 1502 	sjmp	00254$
      002F9F                       1503 00196$:
                                   1504 ;	calc.c:146: if (!stack_iter_peek(&ctx->s, dump_peek, ctx)) printstr("stack underflow\r\n");
      002F9F E5 08            [12] 1505 	mov	a,_bp
      002FA1 24 04            [12] 1506 	add	a,#0x04
      002FA3 F8               [12] 1507 	mov	r0,a
      002FA4 86 02            [24] 1508 	mov	ar2,@r0
      002FA6 08               [12] 1509 	inc	r0
      002FA7 86 03            [24] 1510 	mov	ar3,@r0
      002FA9 08               [12] 1511 	inc	r0
      002FAA 86 04            [24] 1512 	mov	ar4,@r0
      002FAC E5 08            [12] 1513 	mov	a,_bp
      002FAE 24 04            [12] 1514 	add	a,#0x04
      002FB0 F8               [12] 1515 	mov	r0,a
      002FB1 74 0B            [12] 1516 	mov	a,#0x0b
      002FB3 26               [12] 1517 	add	a,@r0
      002FB4 FD               [12] 1518 	mov	r5,a
      002FB5 E4               [12] 1519 	clr	a
      002FB6 08               [12] 1520 	inc	r0
      002FB7 36               [12] 1521 	addc	a,@r0
      002FB8 FE               [12] 1522 	mov	r6,a
      002FB9 08               [12] 1523 	inc	r0
      002FBA 86 07            [24] 1524 	mov	ar7,@r0
      002FBC C0 02            [24] 1525 	push	ar2
      002FBE C0 03            [24] 1526 	push	ar3
      002FC0 C0 04            [24] 1527 	push	ar4
      002FC2 74 4A            [12] 1528 	mov	a,#_dump_peek
      002FC4 C0 E0            [24] 1529 	push	acc
      002FC6 74 2D            [12] 1530 	mov	a,#(_dump_peek >> 8)
      002FC8 C0 E0            [24] 1531 	push	acc
      002FCA 8D 82            [24] 1532 	mov	dpl,r5
      002FCC 8E 83            [24] 1533 	mov	dph,r6
      002FCE 8F F0            [24] 1534 	mov	b,r7
      002FD0 12 28 EC         [24] 1535 	lcall	_stack_iter_peek
      002FD3 AE 82            [24] 1536 	mov	r6,dpl
      002FD5 AF 83            [24] 1537 	mov	r7,dph
      002FD7 E5 81            [12] 1538 	mov	a,sp
      002FD9 24 FB            [12] 1539 	add	a,#0xfb
      002FDB F5 81            [12] 1540 	mov	sp,a
      002FDD EE               [12] 1541 	mov	a,r6
      002FDE 4F               [12] 1542 	orl	a,r7
      002FDF 60 03            [24] 1543 	jz	00787$
      002FE1 02 3E B7         [24] 1544 	ljmp	00190$
      002FE4                       1545 00787$:
      002FE4 7D 83            [12] 1546 	mov	r5,#___str_1
      002FE6 7E 65            [12] 1547 	mov	r6,#(___str_1 >> 8)
      002FE8 7F 80            [12] 1548 	mov	r7,#0x80
                                   1549 ;	calc.c:50: return;
      002FEA                       1550 00257$:
                                   1551 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002FEA 8D 82            [24] 1552 	mov	dpl,r5
      002FEC 8E 83            [24] 1553 	mov	dph,r6
      002FEE 8F F0            [24] 1554 	mov	b,r7
      002FF0 12 4C FF         [24] 1555 	lcall	__gptrget
      002FF3 FC               [12] 1556 	mov	r4,a
      002FF4 70 03            [24] 1557 	jnz	00788$
      002FF6 02 3E B7         [24] 1558 	ljmp	00190$
      002FF9                       1559 00788$:
      002FF9 7B 00            [12] 1560 	mov	r3,#0x00
      002FFB 8C 82            [24] 1561 	mov	dpl,r4
      002FFD 8B 83            [24] 1562 	mov	dph,r3
      002FFF 12 29 C0         [24] 1563 	lcall	_putchar
      003002 0D               [12] 1564 	inc	r5
                                   1565 ;	calc.c:149: case 'v':
      003003 BD 00 E4         [24] 1566 	cjne	r5,#0x00,00257$
      003006 0E               [12] 1567 	inc	r6
      003007 80 E1            [24] 1568 	sjmp	00257$
      003009                       1569 00111$:
                                   1570 ;	calc.c:150: printstr("\r\n");
      003009 7D 80            [12] 1571 	mov	r5,#___str_0
      00300B 7E 65            [12] 1572 	mov	r6,#(___str_0 >> 8)
      00300D 7F 80            [12] 1573 	mov	r7,#0x80
                                   1574 ;	calc.c:50: return;
      00300F                       1575 00260$:
                                   1576 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00300F 8D 82            [24] 1577 	mov	dpl,r5
      003011 8E 83            [24] 1578 	mov	dph,r6
      003013 8F F0            [24] 1579 	mov	b,r7
      003015 12 4C FF         [24] 1580 	lcall	__gptrget
      003018 FC               [12] 1581 	mov	r4,a
      003019 60 10            [24] 1582 	jz	00200$
      00301B 7B 00            [12] 1583 	mov	r3,#0x00
      00301D 8C 82            [24] 1584 	mov	dpl,r4
      00301F 8B 83            [24] 1585 	mov	dph,r3
      003021 12 29 C0         [24] 1586 	lcall	_putchar
      003024 0D               [12] 1587 	inc	r5
                                   1588 ;	calc.c:150: printstr("\r\n");
      003025 BD 00 E7         [24] 1589 	cjne	r5,#0x00,00260$
      003028 0E               [12] 1590 	inc	r6
      003029 80 E4            [24] 1591 	sjmp	00260$
      00302B                       1592 00200$:
                                   1593 ;	calc.c:151: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
      00302B E5 08            [12] 1594 	mov	a,_bp
      00302D 24 07            [12] 1595 	add	a,#0x07
      00302F FF               [12] 1596 	mov	r7,a
      003030 7E 00            [12] 1597 	mov	r6,#0x00
      003032 7D 40            [12] 1598 	mov	r5,#0x40
      003034 E5 08            [12] 1599 	mov	a,_bp
      003036 24 04            [12] 1600 	add	a,#0x04
      003038 F8               [12] 1601 	mov	r0,a
      003039 74 0B            [12] 1602 	mov	a,#0x0b
      00303B 26               [12] 1603 	add	a,@r0
      00303C FA               [12] 1604 	mov	r2,a
      00303D E4               [12] 1605 	clr	a
      00303E 08               [12] 1606 	inc	r0
      00303F 36               [12] 1607 	addc	a,@r0
      003040 FB               [12] 1608 	mov	r3,a
      003041 08               [12] 1609 	inc	r0
      003042 86 04            [24] 1610 	mov	ar4,@r0
      003044 C0 07            [24] 1611 	push	ar7
      003046 C0 06            [24] 1612 	push	ar6
      003048 C0 05            [24] 1613 	push	ar5
      00304A 8A 82            [24] 1614 	mov	dpl,r2
      00304C 8B 83            [24] 1615 	mov	dph,r3
      00304E 8C F0            [24] 1616 	mov	b,r4
      003050 12 27 7F         [24] 1617 	lcall	_stack_pop
      003053 AE 82            [24] 1618 	mov	r6,dpl
      003055 AF 83            [24] 1619 	mov	r7,dph
      003057 15 81            [12] 1620 	dec	sp
      003059 15 81            [12] 1621 	dec	sp
      00305B 15 81            [12] 1622 	dec	sp
      00305D EE               [12] 1623 	mov	a,r6
      00305E 4F               [12] 1624 	orl	a,r7
      00305F 70 25            [24] 1625 	jnz	00113$
      003061 7D 83            [12] 1626 	mov	r5,#___str_1
      003063 7E 65            [12] 1627 	mov	r6,#(___str_1 >> 8)
      003065 7F 80            [12] 1628 	mov	r7,#0x80
                                   1629 ;	calc.c:50: return;
      003067                       1630 00263$:
                                   1631 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003067 8D 82            [24] 1632 	mov	dpl,r5
      003069 8E 83            [24] 1633 	mov	dph,r6
      00306B 8F F0            [24] 1634 	mov	b,r7
      00306D 12 4C FF         [24] 1635 	lcall	__gptrget
      003070 FC               [12] 1636 	mov	r4,a
      003071 70 03            [24] 1637 	jnz	00793$
      003073 02 3E B7         [24] 1638 	ljmp	00190$
      003076                       1639 00793$:
      003076 7B 00            [12] 1640 	mov	r3,#0x00
      003078 8C 82            [24] 1641 	mov	dpl,r4
      00307A 8B 83            [24] 1642 	mov	dph,r3
      00307C 12 29 C0         [24] 1643 	lcall	_putchar
      00307F 0D               [12] 1644 	inc	r5
                                   1645 ;	calc.c:151: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
      003080 BD 00 E4         [24] 1646 	cjne	r5,#0x00,00263$
      003083 0E               [12] 1647 	inc	r6
      003084 80 E1            [24] 1648 	sjmp	00263$
      003086                       1649 00113$:
                                   1650 ;	calc.c:152: else printf((ctx->base == 16l) ? hexv : decv, d0);
      003086 E5 08            [12] 1651 	mov	a,_bp
      003088 24 04            [12] 1652 	add	a,#0x04
      00308A F8               [12] 1653 	mov	r0,a
      00308B 86 82            [24] 1654 	mov	dpl,@r0
      00308D 08               [12] 1655 	inc	r0
      00308E 86 83            [24] 1656 	mov	dph,@r0
      003090 08               [12] 1657 	inc	r0
      003091 86 F0            [24] 1658 	mov	b,@r0
      003093 12 4C FF         [24] 1659 	lcall	__gptrget
      003096 FC               [12] 1660 	mov	r4,a
      003097 A3               [24] 1661 	inc	dptr
      003098 12 4C FF         [24] 1662 	lcall	__gptrget
      00309B FD               [12] 1663 	mov	r5,a
      00309C A3               [24] 1664 	inc	dptr
      00309D 12 4C FF         [24] 1665 	lcall	__gptrget
      0030A0 FE               [12] 1666 	mov	r6,a
      0030A1 A3               [24] 1667 	inc	dptr
      0030A2 12 4C FF         [24] 1668 	lcall	__gptrget
      0030A5 FF               [12] 1669 	mov	r7,a
      0030A6 BC 10 16         [24] 1670 	cjne	r4,#0x10,00335$
      0030A9 BD 00 13         [24] 1671 	cjne	r5,#0x00,00335$
      0030AC BE 00 10         [24] 1672 	cjne	r6,#0x00,00335$
      0030AF BF 00 0D         [24] 1673 	cjne	r7,#0x00,00335$
      0030B2 90 A0 29         [24] 1674 	mov	dptr,#_hexv
      0030B5 E0               [24] 1675 	movx	a,@dptr
      0030B6 FD               [12] 1676 	mov	r5,a
      0030B7 A3               [24] 1677 	inc	dptr
      0030B8 E0               [24] 1678 	movx	a,@dptr
      0030B9 FE               [12] 1679 	mov	r6,a
      0030BA A3               [24] 1680 	inc	dptr
      0030BB E0               [24] 1681 	movx	a,@dptr
      0030BC FF               [12] 1682 	mov	r7,a
      0030BD 80 0B            [24] 1683 	sjmp	00336$
      0030BF                       1684 00335$:
      0030BF 90 A0 2C         [24] 1685 	mov	dptr,#_decv
      0030C2 E0               [24] 1686 	movx	a,@dptr
      0030C3 FD               [12] 1687 	mov	r5,a
      0030C4 A3               [24] 1688 	inc	dptr
      0030C5 E0               [24] 1689 	movx	a,@dptr
      0030C6 FE               [12] 1690 	mov	r6,a
      0030C7 A3               [24] 1691 	inc	dptr
      0030C8 E0               [24] 1692 	movx	a,@dptr
      0030C9 FF               [12] 1693 	mov	r7,a
      0030CA                       1694 00336$:
      0030CA E5 08            [12] 1695 	mov	a,_bp
      0030CC 24 07            [12] 1696 	add	a,#0x07
      0030CE F8               [12] 1697 	mov	r0,a
      0030CF E6               [12] 1698 	mov	a,@r0
      0030D0 C0 E0            [24] 1699 	push	acc
      0030D2 08               [12] 1700 	inc	r0
      0030D3 E6               [12] 1701 	mov	a,@r0
      0030D4 C0 E0            [24] 1702 	push	acc
      0030D6 08               [12] 1703 	inc	r0
      0030D7 E6               [12] 1704 	mov	a,@r0
      0030D8 C0 E0            [24] 1705 	push	acc
      0030DA 08               [12] 1706 	inc	r0
      0030DB E6               [12] 1707 	mov	a,@r0
      0030DC C0 E0            [24] 1708 	push	acc
      0030DE C0 05            [24] 1709 	push	ar5
      0030E0 C0 06            [24] 1710 	push	ar6
      0030E2 C0 07            [24] 1711 	push	ar7
      0030E4 12 4C C6         [24] 1712 	lcall	_printf
      0030E7 E5 81            [12] 1713 	mov	a,sp
      0030E9 24 F9            [12] 1714 	add	a,#0xf9
      0030EB F5 81            [12] 1715 	mov	sp,a
                                   1716 ;	calc.c:153: break;
      0030ED 02 3E B7         [24] 1717 	ljmp	00190$
                                   1718 ;	calc.c:154: case 'V':
      0030F0                       1719 00115$:
                                   1720 ;	calc.c:155: printstr("\r\n");
      0030F0 7D 80            [12] 1721 	mov	r5,#___str_0
      0030F2 7E 65            [12] 1722 	mov	r6,#(___str_0 >> 8)
      0030F4 7F 80            [12] 1723 	mov	r7,#0x80
                                   1724 ;	calc.c:50: return;
      0030F6                       1725 00266$:
                                   1726 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0030F6 8D 82            [24] 1727 	mov	dpl,r5
      0030F8 8E 83            [24] 1728 	mov	dph,r6
      0030FA 8F F0            [24] 1729 	mov	b,r7
      0030FC 12 4C FF         [24] 1730 	lcall	__gptrget
      0030FF FC               [12] 1731 	mov	r4,a
      003100 60 10            [24] 1732 	jz	00204$
      003102 7B 00            [12] 1733 	mov	r3,#0x00
      003104 8C 82            [24] 1734 	mov	dpl,r4
      003106 8B 83            [24] 1735 	mov	dph,r3
      003108 12 29 C0         [24] 1736 	lcall	_putchar
      00310B 0D               [12] 1737 	inc	r5
                                   1738 ;	calc.c:155: printstr("\r\n");
      00310C BD 00 E7         [24] 1739 	cjne	r5,#0x00,00266$
      00310F 0E               [12] 1740 	inc	r6
      003110 80 E4            [24] 1741 	sjmp	00266$
      003112                       1742 00204$:
                                   1743 ;	calc.c:156: (void)dump_pop(_ctx, delta);
      003112 E5 08            [12] 1744 	mov	a,_bp
      003114 24 FB            [12] 1745 	add	a,#0xfb
      003116 F8               [12] 1746 	mov	r0,a
      003117 E6               [12] 1747 	mov	a,@r0
      003118 C0 E0            [24] 1748 	push	acc
      00311A 08               [12] 1749 	inc	r0
      00311B E6               [12] 1750 	mov	a,@r0
      00311C C0 E0            [24] 1751 	push	acc
      00311E 08               [12] 1752 	inc	r0
      00311F E6               [12] 1753 	mov	a,@r0
      003120 C0 E0            [24] 1754 	push	acc
      003122 A8 08            [24] 1755 	mov	r0,_bp
      003124 08               [12] 1756 	inc	r0
      003125 86 82            [24] 1757 	mov	dpl,@r0
      003127 08               [12] 1758 	inc	r0
      003128 86 83            [24] 1759 	mov	dph,@r0
      00312A 08               [12] 1760 	inc	r0
      00312B 86 F0            [24] 1761 	mov	b,@r0
      00312D 12 2B 58         [24] 1762 	lcall	_dump_pop
      003130 15 81            [12] 1763 	dec	sp
      003132 15 81            [12] 1764 	dec	sp
      003134 15 81            [12] 1765 	dec	sp
                                   1766 ;	calc.c:157: break;
      003136 02 3E B7         [24] 1767 	ljmp	00190$
                                   1768 ;	calc.c:158: case 'x':
      003139                       1769 00116$:
                                   1770 ;	calc.c:159: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003139 E5 08            [12] 1771 	mov	a,_bp
      00313B 24 07            [12] 1772 	add	a,#0x07
      00313D FF               [12] 1773 	mov	r7,a
      00313E 7E 00            [12] 1774 	mov	r6,#0x00
      003140 7D 40            [12] 1775 	mov	r5,#0x40
      003142 E5 08            [12] 1776 	mov	a,_bp
      003144 24 04            [12] 1777 	add	a,#0x04
      003146 F8               [12] 1778 	mov	r0,a
      003147 74 0B            [12] 1779 	mov	a,#0x0b
      003149 26               [12] 1780 	add	a,@r0
      00314A FA               [12] 1781 	mov	r2,a
      00314B E4               [12] 1782 	clr	a
      00314C 08               [12] 1783 	inc	r0
      00314D 36               [12] 1784 	addc	a,@r0
      00314E FB               [12] 1785 	mov	r3,a
      00314F 08               [12] 1786 	inc	r0
      003150 86 04            [24] 1787 	mov	ar4,@r0
      003152 C0 07            [24] 1788 	push	ar7
      003154 C0 06            [24] 1789 	push	ar6
      003156 C0 05            [24] 1790 	push	ar5
      003158 8A 82            [24] 1791 	mov	dpl,r2
      00315A 8B 83            [24] 1792 	mov	dph,r3
      00315C 8C F0            [24] 1793 	mov	b,r4
      00315E 12 27 7F         [24] 1794 	lcall	_stack_pop
      003161 AE 82            [24] 1795 	mov	r6,dpl
      003163 AF 83            [24] 1796 	mov	r7,dph
      003165 15 81            [12] 1797 	dec	sp
      003167 15 81            [12] 1798 	dec	sp
      003169 15 81            [12] 1799 	dec	sp
      00316B EE               [12] 1800 	mov	a,r6
      00316C 4F               [12] 1801 	orl	a,r7
      00316D 70 25            [24] 1802 	jnz	00121$
      00316F 7D 95            [12] 1803 	mov	r5,#___str_2
      003171 7E 65            [12] 1804 	mov	r6,#(___str_2 >> 8)
      003173 7F 80            [12] 1805 	mov	r7,#0x80
                                   1806 ;	calc.c:50: return;
      003175                       1807 00269$:
                                   1808 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003175 8D 82            [24] 1809 	mov	dpl,r5
      003177 8E 83            [24] 1810 	mov	dph,r6
      003179 8F F0            [24] 1811 	mov	b,r7
      00317B 12 4C FF         [24] 1812 	lcall	__gptrget
      00317E FC               [12] 1813 	mov	r4,a
      00317F 70 03            [24] 1814 	jnz	00800$
      003181 02 3E B7         [24] 1815 	ljmp	00190$
      003184                       1816 00800$:
      003184 7B 00            [12] 1817 	mov	r3,#0x00
      003186 8C 82            [24] 1818 	mov	dpl,r4
      003188 8B 83            [24] 1819 	mov	dph,r3
      00318A 12 29 C0         [24] 1820 	lcall	_putchar
      00318D 0D               [12] 1821 	inc	r5
                                   1822 ;	calc.c:159: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00318E BD 00 E4         [24] 1823 	cjne	r5,#0x00,00269$
      003191 0E               [12] 1824 	inc	r6
      003192 80 E1            [24] 1825 	sjmp	00269$
      003194                       1826 00121$:
                                   1827 ;	calc.c:160: else if (!stack_pop(&ctx->s, &d1)) {
      003194 E5 08            [12] 1828 	mov	a,_bp
      003196 24 0B            [12] 1829 	add	a,#0x0b
      003198 FF               [12] 1830 	mov	r7,a
      003199 7E 00            [12] 1831 	mov	r6,#0x00
      00319B 7D 40            [12] 1832 	mov	r5,#0x40
      00319D E5 08            [12] 1833 	mov	a,_bp
      00319F 24 04            [12] 1834 	add	a,#0x04
      0031A1 F8               [12] 1835 	mov	r0,a
      0031A2 74 0B            [12] 1836 	mov	a,#0x0b
      0031A4 26               [12] 1837 	add	a,@r0
      0031A5 FA               [12] 1838 	mov	r2,a
      0031A6 E4               [12] 1839 	clr	a
      0031A7 08               [12] 1840 	inc	r0
      0031A8 36               [12] 1841 	addc	a,@r0
      0031A9 FB               [12] 1842 	mov	r3,a
      0031AA 08               [12] 1843 	inc	r0
      0031AB 86 04            [24] 1844 	mov	ar4,@r0
      0031AD C0 07            [24] 1845 	push	ar7
      0031AF C0 06            [24] 1846 	push	ar6
      0031B1 C0 05            [24] 1847 	push	ar5
      0031B3 8A 82            [24] 1848 	mov	dpl,r2
      0031B5 8B 83            [24] 1849 	mov	dph,r3
      0031B7 8C F0            [24] 1850 	mov	b,r4
      0031B9 12 27 7F         [24] 1851 	lcall	_stack_pop
      0031BC AE 82            [24] 1852 	mov	r6,dpl
      0031BE AF 83            [24] 1853 	mov	r7,dph
      0031C0 15 81            [12] 1854 	dec	sp
      0031C2 15 81            [12] 1855 	dec	sp
      0031C4 15 81            [12] 1856 	dec	sp
      0031C6 EE               [12] 1857 	mov	a,r6
      0031C7 4F               [12] 1858 	orl	a,r7
      0031C8 70 58            [24] 1859 	jnz	00118$
                                   1860 ;	calc.c:161: (void)stack_push(&ctx->s, d0);
      0031CA E5 08            [12] 1861 	mov	a,_bp
      0031CC 24 04            [12] 1862 	add	a,#0x04
      0031CE F8               [12] 1863 	mov	r0,a
      0031CF 74 0B            [12] 1864 	mov	a,#0x0b
      0031D1 26               [12] 1865 	add	a,@r0
      0031D2 FD               [12] 1866 	mov	r5,a
      0031D3 E4               [12] 1867 	clr	a
      0031D4 08               [12] 1868 	inc	r0
      0031D5 36               [12] 1869 	addc	a,@r0
      0031D6 FE               [12] 1870 	mov	r6,a
      0031D7 08               [12] 1871 	inc	r0
      0031D8 86 07            [24] 1872 	mov	ar7,@r0
      0031DA E5 08            [12] 1873 	mov	a,_bp
      0031DC 24 07            [12] 1874 	add	a,#0x07
      0031DE F8               [12] 1875 	mov	r0,a
      0031DF E6               [12] 1876 	mov	a,@r0
      0031E0 C0 E0            [24] 1877 	push	acc
      0031E2 08               [12] 1878 	inc	r0
      0031E3 E6               [12] 1879 	mov	a,@r0
      0031E4 C0 E0            [24] 1880 	push	acc
      0031E6 08               [12] 1881 	inc	r0
      0031E7 E6               [12] 1882 	mov	a,@r0
      0031E8 C0 E0            [24] 1883 	push	acc
      0031EA 08               [12] 1884 	inc	r0
      0031EB E6               [12] 1885 	mov	a,@r0
      0031EC C0 E0            [24] 1886 	push	acc
      0031EE 8D 82            [24] 1887 	mov	dpl,r5
      0031F0 8E 83            [24] 1888 	mov	dph,r6
      0031F2 8F F0            [24] 1889 	mov	b,r7
      0031F4 12 26 B5         [24] 1890 	lcall	_stack_push
      0031F7 E5 81            [12] 1891 	mov	a,sp
      0031F9 24 FC            [12] 1892 	add	a,#0xfc
      0031FB F5 81            [12] 1893 	mov	sp,a
                                   1894 ;	calc.c:162: printstr("\r\nstack underflow\r\n");
      0031FD 7D 95            [12] 1895 	mov	r5,#___str_2
      0031FF 7E 65            [12] 1896 	mov	r6,#(___str_2 >> 8)
      003201 7F 80            [12] 1897 	mov	r7,#0x80
                                   1898 ;	calc.c:50: return;
      003203                       1899 00272$:
                                   1900 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003203 8D 82            [24] 1901 	mov	dpl,r5
      003205 8E 83            [24] 1902 	mov	dph,r6
      003207 8F F0            [24] 1903 	mov	b,r7
      003209 12 4C FF         [24] 1904 	lcall	__gptrget
      00320C FC               [12] 1905 	mov	r4,a
      00320D 70 03            [24] 1906 	jnz	00803$
      00320F 02 3E B7         [24] 1907 	ljmp	00190$
      003212                       1908 00803$:
      003212 7B 00            [12] 1909 	mov	r3,#0x00
      003214 8C 82            [24] 1910 	mov	dpl,r4
      003216 8B 83            [24] 1911 	mov	dph,r3
      003218 12 29 C0         [24] 1912 	lcall	_putchar
      00321B 0D               [12] 1913 	inc	r5
                                   1914 ;	calc.c:162: printstr("\r\nstack underflow\r\n");
      00321C BD 00 E4         [24] 1915 	cjne	r5,#0x00,00272$
      00321F 0E               [12] 1916 	inc	r6
      003220 80 E1            [24] 1917 	sjmp	00272$
      003222                       1918 00118$:
                                   1919 ;	calc.c:164: (void)stack_push(&ctx->s, d0);
      003222 E5 08            [12] 1920 	mov	a,_bp
      003224 24 04            [12] 1921 	add	a,#0x04
      003226 F8               [12] 1922 	mov	r0,a
      003227 74 0B            [12] 1923 	mov	a,#0x0b
      003229 26               [12] 1924 	add	a,@r0
      00322A FD               [12] 1925 	mov	r5,a
      00322B E4               [12] 1926 	clr	a
      00322C 08               [12] 1927 	inc	r0
      00322D 36               [12] 1928 	addc	a,@r0
      00322E FE               [12] 1929 	mov	r6,a
      00322F 08               [12] 1930 	inc	r0
      003230 86 07            [24] 1931 	mov	ar7,@r0
      003232 E5 08            [12] 1932 	mov	a,_bp
      003234 24 07            [12] 1933 	add	a,#0x07
      003236 F8               [12] 1934 	mov	r0,a
      003237 E6               [12] 1935 	mov	a,@r0
      003238 C0 E0            [24] 1936 	push	acc
      00323A 08               [12] 1937 	inc	r0
      00323B E6               [12] 1938 	mov	a,@r0
      00323C C0 E0            [24] 1939 	push	acc
      00323E 08               [12] 1940 	inc	r0
      00323F E6               [12] 1941 	mov	a,@r0
      003240 C0 E0            [24] 1942 	push	acc
      003242 08               [12] 1943 	inc	r0
      003243 E6               [12] 1944 	mov	a,@r0
      003244 C0 E0            [24] 1945 	push	acc
      003246 8D 82            [24] 1946 	mov	dpl,r5
      003248 8E 83            [24] 1947 	mov	dph,r6
      00324A 8F F0            [24] 1948 	mov	b,r7
      00324C 12 26 B5         [24] 1949 	lcall	_stack_push
      00324F E5 81            [12] 1950 	mov	a,sp
      003251 24 FC            [12] 1951 	add	a,#0xfc
      003253 F5 81            [12] 1952 	mov	sp,a
                                   1953 ;	calc.c:165: (void)stack_push(&ctx->s, d1);
      003255 E5 08            [12] 1954 	mov	a,_bp
      003257 24 04            [12] 1955 	add	a,#0x04
      003259 F8               [12] 1956 	mov	r0,a
      00325A 74 0B            [12] 1957 	mov	a,#0x0b
      00325C 26               [12] 1958 	add	a,@r0
      00325D FD               [12] 1959 	mov	r5,a
      00325E E4               [12] 1960 	clr	a
      00325F 08               [12] 1961 	inc	r0
      003260 36               [12] 1962 	addc	a,@r0
      003261 FE               [12] 1963 	mov	r6,a
      003262 08               [12] 1964 	inc	r0
      003263 86 07            [24] 1965 	mov	ar7,@r0
      003265 E5 08            [12] 1966 	mov	a,_bp
      003267 24 0B            [12] 1967 	add	a,#0x0b
      003269 F8               [12] 1968 	mov	r0,a
      00326A E6               [12] 1969 	mov	a,@r0
      00326B C0 E0            [24] 1970 	push	acc
      00326D 08               [12] 1971 	inc	r0
      00326E E6               [12] 1972 	mov	a,@r0
      00326F C0 E0            [24] 1973 	push	acc
      003271 08               [12] 1974 	inc	r0
      003272 E6               [12] 1975 	mov	a,@r0
      003273 C0 E0            [24] 1976 	push	acc
      003275 08               [12] 1977 	inc	r0
      003276 E6               [12] 1978 	mov	a,@r0
      003277 C0 E0            [24] 1979 	push	acc
      003279 8D 82            [24] 1980 	mov	dpl,r5
      00327B 8E 83            [24] 1981 	mov	dph,r6
      00327D 8F F0            [24] 1982 	mov	b,r7
      00327F 12 26 B5         [24] 1983 	lcall	_stack_push
      003282 E5 81            [12] 1984 	mov	a,sp
      003284 24 FC            [12] 1985 	add	a,#0xfc
      003286 F5 81            [12] 1986 	mov	sp,a
                                   1987 ;	calc.c:167: break;
      003288 02 3E B7         [24] 1988 	ljmp	00190$
                                   1989 ;	calc.c:168: case '+':
      00328B                       1990 00123$:
                                   1991 ;	calc.c:169: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00328B E5 08            [12] 1992 	mov	a,_bp
      00328D 24 07            [12] 1993 	add	a,#0x07
      00328F FF               [12] 1994 	mov	r7,a
      003290 7E 00            [12] 1995 	mov	r6,#0x00
      003292 7D 40            [12] 1996 	mov	r5,#0x40
      003294 E5 08            [12] 1997 	mov	a,_bp
      003296 24 04            [12] 1998 	add	a,#0x04
      003298 F8               [12] 1999 	mov	r0,a
      003299 74 0B            [12] 2000 	mov	a,#0x0b
      00329B 26               [12] 2001 	add	a,@r0
      00329C FA               [12] 2002 	mov	r2,a
      00329D E4               [12] 2003 	clr	a
      00329E 08               [12] 2004 	inc	r0
      00329F 36               [12] 2005 	addc	a,@r0
      0032A0 FB               [12] 2006 	mov	r3,a
      0032A1 08               [12] 2007 	inc	r0
      0032A2 86 04            [24] 2008 	mov	ar4,@r0
      0032A4 C0 07            [24] 2009 	push	ar7
      0032A6 C0 06            [24] 2010 	push	ar6
      0032A8 C0 05            [24] 2011 	push	ar5
      0032AA 8A 82            [24] 2012 	mov	dpl,r2
      0032AC 8B 83            [24] 2013 	mov	dph,r3
      0032AE 8C F0            [24] 2014 	mov	b,r4
      0032B0 12 27 7F         [24] 2015 	lcall	_stack_pop
      0032B3 AE 82            [24] 2016 	mov	r6,dpl
      0032B5 AF 83            [24] 2017 	mov	r7,dph
      0032B7 15 81            [12] 2018 	dec	sp
      0032B9 15 81            [12] 2019 	dec	sp
      0032BB 15 81            [12] 2020 	dec	sp
      0032BD EE               [12] 2021 	mov	a,r6
      0032BE 4F               [12] 2022 	orl	a,r7
      0032BF 70 25            [24] 2023 	jnz	00128$
      0032C1 7D 95            [12] 2024 	mov	r5,#___str_2
      0032C3 7E 65            [12] 2025 	mov	r6,#(___str_2 >> 8)
      0032C5 7F 80            [12] 2026 	mov	r7,#0x80
                                   2027 ;	calc.c:50: return;
      0032C7                       2028 00275$:
                                   2029 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0032C7 8D 82            [24] 2030 	mov	dpl,r5
      0032C9 8E 83            [24] 2031 	mov	dph,r6
      0032CB 8F F0            [24] 2032 	mov	b,r7
      0032CD 12 4C FF         [24] 2033 	lcall	__gptrget
      0032D0 FC               [12] 2034 	mov	r4,a
      0032D1 70 03            [24] 2035 	jnz	00806$
      0032D3 02 3E B7         [24] 2036 	ljmp	00190$
      0032D6                       2037 00806$:
      0032D6 7B 00            [12] 2038 	mov	r3,#0x00
      0032D8 8C 82            [24] 2039 	mov	dpl,r4
      0032DA 8B 83            [24] 2040 	mov	dph,r3
      0032DC 12 29 C0         [24] 2041 	lcall	_putchar
      0032DF 0D               [12] 2042 	inc	r5
                                   2043 ;	calc.c:169: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0032E0 BD 00 E4         [24] 2044 	cjne	r5,#0x00,00275$
      0032E3 0E               [12] 2045 	inc	r6
      0032E4 80 E1            [24] 2046 	sjmp	00275$
      0032E6                       2047 00128$:
                                   2048 ;	calc.c:170: else if (!stack_pop(&ctx->s, &d1)) {
      0032E6 E5 08            [12] 2049 	mov	a,_bp
      0032E8 24 0B            [12] 2050 	add	a,#0x0b
      0032EA FF               [12] 2051 	mov	r7,a
      0032EB 7E 00            [12] 2052 	mov	r6,#0x00
      0032ED 7D 40            [12] 2053 	mov	r5,#0x40
      0032EF E5 08            [12] 2054 	mov	a,_bp
      0032F1 24 04            [12] 2055 	add	a,#0x04
      0032F3 F8               [12] 2056 	mov	r0,a
      0032F4 74 0B            [12] 2057 	mov	a,#0x0b
      0032F6 26               [12] 2058 	add	a,@r0
      0032F7 FA               [12] 2059 	mov	r2,a
      0032F8 E4               [12] 2060 	clr	a
      0032F9 08               [12] 2061 	inc	r0
      0032FA 36               [12] 2062 	addc	a,@r0
      0032FB FB               [12] 2063 	mov	r3,a
      0032FC 08               [12] 2064 	inc	r0
      0032FD 86 04            [24] 2065 	mov	ar4,@r0
      0032FF C0 07            [24] 2066 	push	ar7
      003301 C0 06            [24] 2067 	push	ar6
      003303 C0 05            [24] 2068 	push	ar5
      003305 8A 82            [24] 2069 	mov	dpl,r2
      003307 8B 83            [24] 2070 	mov	dph,r3
      003309 8C F0            [24] 2071 	mov	b,r4
      00330B 12 27 7F         [24] 2072 	lcall	_stack_pop
      00330E AE 82            [24] 2073 	mov	r6,dpl
      003310 AF 83            [24] 2074 	mov	r7,dph
      003312 15 81            [12] 2075 	dec	sp
      003314 15 81            [12] 2076 	dec	sp
      003316 15 81            [12] 2077 	dec	sp
      003318 EE               [12] 2078 	mov	a,r6
      003319 4F               [12] 2079 	orl	a,r7
      00331A 70 58            [24] 2080 	jnz	00125$
                                   2081 ;	calc.c:171: (void)stack_push(&ctx->s, d0);
      00331C E5 08            [12] 2082 	mov	a,_bp
      00331E 24 04            [12] 2083 	add	a,#0x04
      003320 F8               [12] 2084 	mov	r0,a
      003321 74 0B            [12] 2085 	mov	a,#0x0b
      003323 26               [12] 2086 	add	a,@r0
      003324 FD               [12] 2087 	mov	r5,a
      003325 E4               [12] 2088 	clr	a
      003326 08               [12] 2089 	inc	r0
      003327 36               [12] 2090 	addc	a,@r0
      003328 FE               [12] 2091 	mov	r6,a
      003329 08               [12] 2092 	inc	r0
      00332A 86 07            [24] 2093 	mov	ar7,@r0
      00332C E5 08            [12] 2094 	mov	a,_bp
      00332E 24 07            [12] 2095 	add	a,#0x07
      003330 F8               [12] 2096 	mov	r0,a
      003331 E6               [12] 2097 	mov	a,@r0
      003332 C0 E0            [24] 2098 	push	acc
      003334 08               [12] 2099 	inc	r0
      003335 E6               [12] 2100 	mov	a,@r0
      003336 C0 E0            [24] 2101 	push	acc
      003338 08               [12] 2102 	inc	r0
      003339 E6               [12] 2103 	mov	a,@r0
      00333A C0 E0            [24] 2104 	push	acc
      00333C 08               [12] 2105 	inc	r0
      00333D E6               [12] 2106 	mov	a,@r0
      00333E C0 E0            [24] 2107 	push	acc
      003340 8D 82            [24] 2108 	mov	dpl,r5
      003342 8E 83            [24] 2109 	mov	dph,r6
      003344 8F F0            [24] 2110 	mov	b,r7
      003346 12 26 B5         [24] 2111 	lcall	_stack_push
      003349 E5 81            [12] 2112 	mov	a,sp
      00334B 24 FC            [12] 2113 	add	a,#0xfc
      00334D F5 81            [12] 2114 	mov	sp,a
                                   2115 ;	calc.c:172: printstr("\r\nstack underflow\r\n");
      00334F 7D 95            [12] 2116 	mov	r5,#___str_2
      003351 7E 65            [12] 2117 	mov	r6,#(___str_2 >> 8)
      003353 7F 80            [12] 2118 	mov	r7,#0x80
                                   2119 ;	calc.c:50: return;
      003355                       2120 00278$:
                                   2121 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003355 8D 82            [24] 2122 	mov	dpl,r5
      003357 8E 83            [24] 2123 	mov	dph,r6
      003359 8F F0            [24] 2124 	mov	b,r7
      00335B 12 4C FF         [24] 2125 	lcall	__gptrget
      00335E FC               [12] 2126 	mov	r4,a
      00335F 70 03            [24] 2127 	jnz	00809$
      003361 02 3E B7         [24] 2128 	ljmp	00190$
      003364                       2129 00809$:
      003364 7B 00            [12] 2130 	mov	r3,#0x00
      003366 8C 82            [24] 2131 	mov	dpl,r4
      003368 8B 83            [24] 2132 	mov	dph,r3
      00336A 12 29 C0         [24] 2133 	lcall	_putchar
      00336D 0D               [12] 2134 	inc	r5
                                   2135 ;	calc.c:172: printstr("\r\nstack underflow\r\n");
      00336E BD 00 E4         [24] 2136 	cjne	r5,#0x00,00278$
      003371 0E               [12] 2137 	inc	r6
      003372 80 E1            [24] 2138 	sjmp	00278$
      003374                       2139 00125$:
                                   2140 ;	calc.c:174: d1 += d0;
      003374 E5 08            [12] 2141 	mov	a,_bp
      003376 24 0B            [12] 2142 	add	a,#0x0b
      003378 F8               [12] 2143 	mov	r0,a
      003379 E5 08            [12] 2144 	mov	a,_bp
      00337B 24 07            [12] 2145 	add	a,#0x07
      00337D F9               [12] 2146 	mov	r1,a
      00337E E7               [12] 2147 	mov	a,@r1
      00337F 26               [12] 2148 	add	a,@r0
      003380 F6               [12] 2149 	mov	@r0,a
      003381 09               [12] 2150 	inc	r1
      003382 E7               [12] 2151 	mov	a,@r1
      003383 08               [12] 2152 	inc	r0
      003384 36               [12] 2153 	addc	a,@r0
      003385 F6               [12] 2154 	mov	@r0,a
      003386 09               [12] 2155 	inc	r1
      003387 E7               [12] 2156 	mov	a,@r1
      003388 08               [12] 2157 	inc	r0
      003389 36               [12] 2158 	addc	a,@r0
      00338A F6               [12] 2159 	mov	@r0,a
      00338B 09               [12] 2160 	inc	r1
      00338C E7               [12] 2161 	mov	a,@r1
      00338D 08               [12] 2162 	inc	r0
      00338E 36               [12] 2163 	addc	a,@r0
      00338F F6               [12] 2164 	mov	@r0,a
                                   2165 ;	calc.c:175: (void)stack_push(&ctx->s, d1);
      003390 E5 08            [12] 2166 	mov	a,_bp
      003392 24 04            [12] 2167 	add	a,#0x04
      003394 F8               [12] 2168 	mov	r0,a
      003395 74 0B            [12] 2169 	mov	a,#0x0b
      003397 26               [12] 2170 	add	a,@r0
      003398 FD               [12] 2171 	mov	r5,a
      003399 E4               [12] 2172 	clr	a
      00339A 08               [12] 2173 	inc	r0
      00339B 36               [12] 2174 	addc	a,@r0
      00339C FE               [12] 2175 	mov	r6,a
      00339D 08               [12] 2176 	inc	r0
      00339E 86 07            [24] 2177 	mov	ar7,@r0
      0033A0 E5 08            [12] 2178 	mov	a,_bp
      0033A2 24 0B            [12] 2179 	add	a,#0x0b
      0033A4 F8               [12] 2180 	mov	r0,a
      0033A5 E6               [12] 2181 	mov	a,@r0
      0033A6 C0 E0            [24] 2182 	push	acc
      0033A8 08               [12] 2183 	inc	r0
      0033A9 E6               [12] 2184 	mov	a,@r0
      0033AA C0 E0            [24] 2185 	push	acc
      0033AC 08               [12] 2186 	inc	r0
      0033AD E6               [12] 2187 	mov	a,@r0
      0033AE C0 E0            [24] 2188 	push	acc
      0033B0 08               [12] 2189 	inc	r0
      0033B1 E6               [12] 2190 	mov	a,@r0
      0033B2 C0 E0            [24] 2191 	push	acc
      0033B4 8D 82            [24] 2192 	mov	dpl,r5
      0033B6 8E 83            [24] 2193 	mov	dph,r6
      0033B8 8F F0            [24] 2194 	mov	b,r7
      0033BA 12 26 B5         [24] 2195 	lcall	_stack_push
      0033BD E5 81            [12] 2196 	mov	a,sp
      0033BF 24 FC            [12] 2197 	add	a,#0xfc
      0033C1 F5 81            [12] 2198 	mov	sp,a
                                   2199 ;	calc.c:177: break;
      0033C3 02 3E B7         [24] 2200 	ljmp	00190$
                                   2201 ;	calc.c:178: case '-':
      0033C6                       2202 00130$:
                                   2203 ;	calc.c:179: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0033C6 E5 08            [12] 2204 	mov	a,_bp
      0033C8 24 07            [12] 2205 	add	a,#0x07
      0033CA FF               [12] 2206 	mov	r7,a
      0033CB 7E 00            [12] 2207 	mov	r6,#0x00
      0033CD 7D 40            [12] 2208 	mov	r5,#0x40
      0033CF E5 08            [12] 2209 	mov	a,_bp
      0033D1 24 04            [12] 2210 	add	a,#0x04
      0033D3 F8               [12] 2211 	mov	r0,a
      0033D4 74 0B            [12] 2212 	mov	a,#0x0b
      0033D6 26               [12] 2213 	add	a,@r0
      0033D7 FA               [12] 2214 	mov	r2,a
      0033D8 E4               [12] 2215 	clr	a
      0033D9 08               [12] 2216 	inc	r0
      0033DA 36               [12] 2217 	addc	a,@r0
      0033DB FB               [12] 2218 	mov	r3,a
      0033DC 08               [12] 2219 	inc	r0
      0033DD 86 04            [24] 2220 	mov	ar4,@r0
      0033DF C0 07            [24] 2221 	push	ar7
      0033E1 C0 06            [24] 2222 	push	ar6
      0033E3 C0 05            [24] 2223 	push	ar5
      0033E5 8A 82            [24] 2224 	mov	dpl,r2
      0033E7 8B 83            [24] 2225 	mov	dph,r3
      0033E9 8C F0            [24] 2226 	mov	b,r4
      0033EB 12 27 7F         [24] 2227 	lcall	_stack_pop
      0033EE AE 82            [24] 2228 	mov	r6,dpl
      0033F0 AF 83            [24] 2229 	mov	r7,dph
      0033F2 15 81            [12] 2230 	dec	sp
      0033F4 15 81            [12] 2231 	dec	sp
      0033F6 15 81            [12] 2232 	dec	sp
      0033F8 EE               [12] 2233 	mov	a,r6
      0033F9 4F               [12] 2234 	orl	a,r7
      0033FA 70 25            [24] 2235 	jnz	00135$
      0033FC 7D 95            [12] 2236 	mov	r5,#___str_2
      0033FE 7E 65            [12] 2237 	mov	r6,#(___str_2 >> 8)
      003400 7F 80            [12] 2238 	mov	r7,#0x80
                                   2239 ;	calc.c:50: return;
      003402                       2240 00281$:
                                   2241 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003402 8D 82            [24] 2242 	mov	dpl,r5
      003404 8E 83            [24] 2243 	mov	dph,r6
      003406 8F F0            [24] 2244 	mov	b,r7
      003408 12 4C FF         [24] 2245 	lcall	__gptrget
      00340B FC               [12] 2246 	mov	r4,a
      00340C 70 03            [24] 2247 	jnz	00812$
      00340E 02 3E B7         [24] 2248 	ljmp	00190$
      003411                       2249 00812$:
      003411 7B 00            [12] 2250 	mov	r3,#0x00
      003413 8C 82            [24] 2251 	mov	dpl,r4
      003415 8B 83            [24] 2252 	mov	dph,r3
      003417 12 29 C0         [24] 2253 	lcall	_putchar
      00341A 0D               [12] 2254 	inc	r5
                                   2255 ;	calc.c:179: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00341B BD 00 E4         [24] 2256 	cjne	r5,#0x00,00281$
      00341E 0E               [12] 2257 	inc	r6
      00341F 80 E1            [24] 2258 	sjmp	00281$
      003421                       2259 00135$:
                                   2260 ;	calc.c:180: else if (!stack_pop(&ctx->s, &d1)) {
      003421 E5 08            [12] 2261 	mov	a,_bp
      003423 24 0B            [12] 2262 	add	a,#0x0b
      003425 FF               [12] 2263 	mov	r7,a
      003426 7E 00            [12] 2264 	mov	r6,#0x00
      003428 7D 40            [12] 2265 	mov	r5,#0x40
      00342A E5 08            [12] 2266 	mov	a,_bp
      00342C 24 04            [12] 2267 	add	a,#0x04
      00342E F8               [12] 2268 	mov	r0,a
      00342F 74 0B            [12] 2269 	mov	a,#0x0b
      003431 26               [12] 2270 	add	a,@r0
      003432 FA               [12] 2271 	mov	r2,a
      003433 E4               [12] 2272 	clr	a
      003434 08               [12] 2273 	inc	r0
      003435 36               [12] 2274 	addc	a,@r0
      003436 FB               [12] 2275 	mov	r3,a
      003437 08               [12] 2276 	inc	r0
      003438 86 04            [24] 2277 	mov	ar4,@r0
      00343A C0 07            [24] 2278 	push	ar7
      00343C C0 06            [24] 2279 	push	ar6
      00343E C0 05            [24] 2280 	push	ar5
      003440 8A 82            [24] 2281 	mov	dpl,r2
      003442 8B 83            [24] 2282 	mov	dph,r3
      003444 8C F0            [24] 2283 	mov	b,r4
      003446 12 27 7F         [24] 2284 	lcall	_stack_pop
      003449 AE 82            [24] 2285 	mov	r6,dpl
      00344B AF 83            [24] 2286 	mov	r7,dph
      00344D 15 81            [12] 2287 	dec	sp
      00344F 15 81            [12] 2288 	dec	sp
      003451 15 81            [12] 2289 	dec	sp
      003453 EE               [12] 2290 	mov	a,r6
      003454 4F               [12] 2291 	orl	a,r7
      003455 70 58            [24] 2292 	jnz	00132$
                                   2293 ;	calc.c:181: (void)stack_push(&ctx->s, d0);
      003457 E5 08            [12] 2294 	mov	a,_bp
      003459 24 04            [12] 2295 	add	a,#0x04
      00345B F8               [12] 2296 	mov	r0,a
      00345C 74 0B            [12] 2297 	mov	a,#0x0b
      00345E 26               [12] 2298 	add	a,@r0
      00345F FD               [12] 2299 	mov	r5,a
      003460 E4               [12] 2300 	clr	a
      003461 08               [12] 2301 	inc	r0
      003462 36               [12] 2302 	addc	a,@r0
      003463 FE               [12] 2303 	mov	r6,a
      003464 08               [12] 2304 	inc	r0
      003465 86 07            [24] 2305 	mov	ar7,@r0
      003467 E5 08            [12] 2306 	mov	a,_bp
      003469 24 07            [12] 2307 	add	a,#0x07
      00346B F8               [12] 2308 	mov	r0,a
      00346C E6               [12] 2309 	mov	a,@r0
      00346D C0 E0            [24] 2310 	push	acc
      00346F 08               [12] 2311 	inc	r0
      003470 E6               [12] 2312 	mov	a,@r0
      003471 C0 E0            [24] 2313 	push	acc
      003473 08               [12] 2314 	inc	r0
      003474 E6               [12] 2315 	mov	a,@r0
      003475 C0 E0            [24] 2316 	push	acc
      003477 08               [12] 2317 	inc	r0
      003478 E6               [12] 2318 	mov	a,@r0
      003479 C0 E0            [24] 2319 	push	acc
      00347B 8D 82            [24] 2320 	mov	dpl,r5
      00347D 8E 83            [24] 2321 	mov	dph,r6
      00347F 8F F0            [24] 2322 	mov	b,r7
      003481 12 26 B5         [24] 2323 	lcall	_stack_push
      003484 E5 81            [12] 2324 	mov	a,sp
      003486 24 FC            [12] 2325 	add	a,#0xfc
      003488 F5 81            [12] 2326 	mov	sp,a
                                   2327 ;	calc.c:182: printstr("\r\nstack underflow\r\n");
      00348A 7D 95            [12] 2328 	mov	r5,#___str_2
      00348C 7E 65            [12] 2329 	mov	r6,#(___str_2 >> 8)
      00348E 7F 80            [12] 2330 	mov	r7,#0x80
                                   2331 ;	calc.c:50: return;
      003490                       2332 00284$:
                                   2333 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003490 8D 82            [24] 2334 	mov	dpl,r5
      003492 8E 83            [24] 2335 	mov	dph,r6
      003494 8F F0            [24] 2336 	mov	b,r7
      003496 12 4C FF         [24] 2337 	lcall	__gptrget
      003499 FC               [12] 2338 	mov	r4,a
      00349A 70 03            [24] 2339 	jnz	00815$
      00349C 02 3E B7         [24] 2340 	ljmp	00190$
      00349F                       2341 00815$:
      00349F 7B 00            [12] 2342 	mov	r3,#0x00
      0034A1 8C 82            [24] 2343 	mov	dpl,r4
      0034A3 8B 83            [24] 2344 	mov	dph,r3
      0034A5 12 29 C0         [24] 2345 	lcall	_putchar
      0034A8 0D               [12] 2346 	inc	r5
                                   2347 ;	calc.c:182: printstr("\r\nstack underflow\r\n");
      0034A9 BD 00 E4         [24] 2348 	cjne	r5,#0x00,00284$
      0034AC 0E               [12] 2349 	inc	r6
      0034AD 80 E1            [24] 2350 	sjmp	00284$
      0034AF                       2351 00132$:
                                   2352 ;	calc.c:184: d1 -= d0;
      0034AF E5 08            [12] 2353 	mov	a,_bp
      0034B1 24 0B            [12] 2354 	add	a,#0x0b
      0034B3 F8               [12] 2355 	mov	r0,a
      0034B4 E5 08            [12] 2356 	mov	a,_bp
      0034B6 24 07            [12] 2357 	add	a,#0x07
      0034B8 F9               [12] 2358 	mov	r1,a
      0034B9 E6               [12] 2359 	mov	a,@r0
      0034BA C3               [12] 2360 	clr	c
      0034BB 97               [12] 2361 	subb	a,@r1
      0034BC F6               [12] 2362 	mov	@r0,a
      0034BD 08               [12] 2363 	inc	r0
      0034BE E6               [12] 2364 	mov	a,@r0
      0034BF 09               [12] 2365 	inc	r1
      0034C0 97               [12] 2366 	subb	a,@r1
      0034C1 F6               [12] 2367 	mov	@r0,a
      0034C2 08               [12] 2368 	inc	r0
      0034C3 E6               [12] 2369 	mov	a,@r0
      0034C4 09               [12] 2370 	inc	r1
      0034C5 97               [12] 2371 	subb	a,@r1
      0034C6 F6               [12] 2372 	mov	@r0,a
      0034C7 08               [12] 2373 	inc	r0
      0034C8 E6               [12] 2374 	mov	a,@r0
      0034C9 09               [12] 2375 	inc	r1
      0034CA 97               [12] 2376 	subb	a,@r1
      0034CB F6               [12] 2377 	mov	@r0,a
                                   2378 ;	calc.c:185: (void)stack_push(&ctx->s, d1);
      0034CC E5 08            [12] 2379 	mov	a,_bp
      0034CE 24 04            [12] 2380 	add	a,#0x04
      0034D0 F8               [12] 2381 	mov	r0,a
      0034D1 74 0B            [12] 2382 	mov	a,#0x0b
      0034D3 26               [12] 2383 	add	a,@r0
      0034D4 FD               [12] 2384 	mov	r5,a
      0034D5 E4               [12] 2385 	clr	a
      0034D6 08               [12] 2386 	inc	r0
      0034D7 36               [12] 2387 	addc	a,@r0
      0034D8 FE               [12] 2388 	mov	r6,a
      0034D9 08               [12] 2389 	inc	r0
      0034DA 86 07            [24] 2390 	mov	ar7,@r0
      0034DC E5 08            [12] 2391 	mov	a,_bp
      0034DE 24 0B            [12] 2392 	add	a,#0x0b
      0034E0 F8               [12] 2393 	mov	r0,a
      0034E1 E6               [12] 2394 	mov	a,@r0
      0034E2 C0 E0            [24] 2395 	push	acc
      0034E4 08               [12] 2396 	inc	r0
      0034E5 E6               [12] 2397 	mov	a,@r0
      0034E6 C0 E0            [24] 2398 	push	acc
      0034E8 08               [12] 2399 	inc	r0
      0034E9 E6               [12] 2400 	mov	a,@r0
      0034EA C0 E0            [24] 2401 	push	acc
      0034EC 08               [12] 2402 	inc	r0
      0034ED E6               [12] 2403 	mov	a,@r0
      0034EE C0 E0            [24] 2404 	push	acc
      0034F0 8D 82            [24] 2405 	mov	dpl,r5
      0034F2 8E 83            [24] 2406 	mov	dph,r6
      0034F4 8F F0            [24] 2407 	mov	b,r7
      0034F6 12 26 B5         [24] 2408 	lcall	_stack_push
      0034F9 E5 81            [12] 2409 	mov	a,sp
      0034FB 24 FC            [12] 2410 	add	a,#0xfc
      0034FD F5 81            [12] 2411 	mov	sp,a
                                   2412 ;	calc.c:187: break;
      0034FF 02 3E B7         [24] 2413 	ljmp	00190$
                                   2414 ;	calc.c:188: case '*':
      003502                       2415 00137$:
                                   2416 ;	calc.c:189: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003502 E5 08            [12] 2417 	mov	a,_bp
      003504 24 07            [12] 2418 	add	a,#0x07
      003506 FF               [12] 2419 	mov	r7,a
      003507 7E 00            [12] 2420 	mov	r6,#0x00
      003509 7D 40            [12] 2421 	mov	r5,#0x40
      00350B E5 08            [12] 2422 	mov	a,_bp
      00350D 24 04            [12] 2423 	add	a,#0x04
      00350F F8               [12] 2424 	mov	r0,a
      003510 74 0B            [12] 2425 	mov	a,#0x0b
      003512 26               [12] 2426 	add	a,@r0
      003513 FA               [12] 2427 	mov	r2,a
      003514 E4               [12] 2428 	clr	a
      003515 08               [12] 2429 	inc	r0
      003516 36               [12] 2430 	addc	a,@r0
      003517 FB               [12] 2431 	mov	r3,a
      003518 08               [12] 2432 	inc	r0
      003519 86 04            [24] 2433 	mov	ar4,@r0
      00351B C0 07            [24] 2434 	push	ar7
      00351D C0 06            [24] 2435 	push	ar6
      00351F C0 05            [24] 2436 	push	ar5
      003521 8A 82            [24] 2437 	mov	dpl,r2
      003523 8B 83            [24] 2438 	mov	dph,r3
      003525 8C F0            [24] 2439 	mov	b,r4
      003527 12 27 7F         [24] 2440 	lcall	_stack_pop
      00352A AE 82            [24] 2441 	mov	r6,dpl
      00352C AF 83            [24] 2442 	mov	r7,dph
      00352E 15 81            [12] 2443 	dec	sp
      003530 15 81            [12] 2444 	dec	sp
      003532 15 81            [12] 2445 	dec	sp
      003534 EE               [12] 2446 	mov	a,r6
      003535 4F               [12] 2447 	orl	a,r7
      003536 70 25            [24] 2448 	jnz	00142$
      003538 7D 95            [12] 2449 	mov	r5,#___str_2
      00353A 7E 65            [12] 2450 	mov	r6,#(___str_2 >> 8)
      00353C 7F 80            [12] 2451 	mov	r7,#0x80
                                   2452 ;	calc.c:50: return;
      00353E                       2453 00287$:
                                   2454 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00353E 8D 82            [24] 2455 	mov	dpl,r5
      003540 8E 83            [24] 2456 	mov	dph,r6
      003542 8F F0            [24] 2457 	mov	b,r7
      003544 12 4C FF         [24] 2458 	lcall	__gptrget
      003547 FC               [12] 2459 	mov	r4,a
      003548 70 03            [24] 2460 	jnz	00818$
      00354A 02 3E B7         [24] 2461 	ljmp	00190$
      00354D                       2462 00818$:
      00354D 7B 00            [12] 2463 	mov	r3,#0x00
      00354F 8C 82            [24] 2464 	mov	dpl,r4
      003551 8B 83            [24] 2465 	mov	dph,r3
      003553 12 29 C0         [24] 2466 	lcall	_putchar
      003556 0D               [12] 2467 	inc	r5
                                   2468 ;	calc.c:189: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003557 BD 00 E4         [24] 2469 	cjne	r5,#0x00,00287$
      00355A 0E               [12] 2470 	inc	r6
      00355B 80 E1            [24] 2471 	sjmp	00287$
      00355D                       2472 00142$:
                                   2473 ;	calc.c:190: else if (!stack_pop(&ctx->s, &d1)) {
      00355D E5 08            [12] 2474 	mov	a,_bp
      00355F 24 0B            [12] 2475 	add	a,#0x0b
      003561 FF               [12] 2476 	mov	r7,a
      003562 7E 00            [12] 2477 	mov	r6,#0x00
      003564 7D 40            [12] 2478 	mov	r5,#0x40
      003566 E5 08            [12] 2479 	mov	a,_bp
      003568 24 04            [12] 2480 	add	a,#0x04
      00356A F8               [12] 2481 	mov	r0,a
      00356B 74 0B            [12] 2482 	mov	a,#0x0b
      00356D 26               [12] 2483 	add	a,@r0
      00356E FA               [12] 2484 	mov	r2,a
      00356F E4               [12] 2485 	clr	a
      003570 08               [12] 2486 	inc	r0
      003571 36               [12] 2487 	addc	a,@r0
      003572 FB               [12] 2488 	mov	r3,a
      003573 08               [12] 2489 	inc	r0
      003574 86 04            [24] 2490 	mov	ar4,@r0
      003576 C0 07            [24] 2491 	push	ar7
      003578 C0 06            [24] 2492 	push	ar6
      00357A C0 05            [24] 2493 	push	ar5
      00357C 8A 82            [24] 2494 	mov	dpl,r2
      00357E 8B 83            [24] 2495 	mov	dph,r3
      003580 8C F0            [24] 2496 	mov	b,r4
      003582 12 27 7F         [24] 2497 	lcall	_stack_pop
      003585 AE 82            [24] 2498 	mov	r6,dpl
      003587 AF 83            [24] 2499 	mov	r7,dph
      003589 15 81            [12] 2500 	dec	sp
      00358B 15 81            [12] 2501 	dec	sp
      00358D 15 81            [12] 2502 	dec	sp
      00358F EE               [12] 2503 	mov	a,r6
      003590 4F               [12] 2504 	orl	a,r7
      003591 70 58            [24] 2505 	jnz	00139$
                                   2506 ;	calc.c:191: (void)stack_push(&ctx->s, d0);
      003593 E5 08            [12] 2507 	mov	a,_bp
      003595 24 04            [12] 2508 	add	a,#0x04
      003597 F8               [12] 2509 	mov	r0,a
      003598 74 0B            [12] 2510 	mov	a,#0x0b
      00359A 26               [12] 2511 	add	a,@r0
      00359B FD               [12] 2512 	mov	r5,a
      00359C E4               [12] 2513 	clr	a
      00359D 08               [12] 2514 	inc	r0
      00359E 36               [12] 2515 	addc	a,@r0
      00359F FE               [12] 2516 	mov	r6,a
      0035A0 08               [12] 2517 	inc	r0
      0035A1 86 07            [24] 2518 	mov	ar7,@r0
      0035A3 E5 08            [12] 2519 	mov	a,_bp
      0035A5 24 07            [12] 2520 	add	a,#0x07
      0035A7 F8               [12] 2521 	mov	r0,a
      0035A8 E6               [12] 2522 	mov	a,@r0
      0035A9 C0 E0            [24] 2523 	push	acc
      0035AB 08               [12] 2524 	inc	r0
      0035AC E6               [12] 2525 	mov	a,@r0
      0035AD C0 E0            [24] 2526 	push	acc
      0035AF 08               [12] 2527 	inc	r0
      0035B0 E6               [12] 2528 	mov	a,@r0
      0035B1 C0 E0            [24] 2529 	push	acc
      0035B3 08               [12] 2530 	inc	r0
      0035B4 E6               [12] 2531 	mov	a,@r0
      0035B5 C0 E0            [24] 2532 	push	acc
      0035B7 8D 82            [24] 2533 	mov	dpl,r5
      0035B9 8E 83            [24] 2534 	mov	dph,r6
      0035BB 8F F0            [24] 2535 	mov	b,r7
      0035BD 12 26 B5         [24] 2536 	lcall	_stack_push
      0035C0 E5 81            [12] 2537 	mov	a,sp
      0035C2 24 FC            [12] 2538 	add	a,#0xfc
      0035C4 F5 81            [12] 2539 	mov	sp,a
                                   2540 ;	calc.c:192: printstr("\r\nstack underflow\r\n");
      0035C6 7D 95            [12] 2541 	mov	r5,#___str_2
      0035C8 7E 65            [12] 2542 	mov	r6,#(___str_2 >> 8)
      0035CA 7F 80            [12] 2543 	mov	r7,#0x80
                                   2544 ;	calc.c:50: return;
      0035CC                       2545 00290$:
                                   2546 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0035CC 8D 82            [24] 2547 	mov	dpl,r5
      0035CE 8E 83            [24] 2548 	mov	dph,r6
      0035D0 8F F0            [24] 2549 	mov	b,r7
      0035D2 12 4C FF         [24] 2550 	lcall	__gptrget
      0035D5 FC               [12] 2551 	mov	r4,a
      0035D6 70 03            [24] 2552 	jnz	00821$
      0035D8 02 3E B7         [24] 2553 	ljmp	00190$
      0035DB                       2554 00821$:
      0035DB 7B 00            [12] 2555 	mov	r3,#0x00
      0035DD 8C 82            [24] 2556 	mov	dpl,r4
      0035DF 8B 83            [24] 2557 	mov	dph,r3
      0035E1 12 29 C0         [24] 2558 	lcall	_putchar
      0035E4 0D               [12] 2559 	inc	r5
                                   2560 ;	calc.c:192: printstr("\r\nstack underflow\r\n");
      0035E5 BD 00 E4         [24] 2561 	cjne	r5,#0x00,00290$
      0035E8 0E               [12] 2562 	inc	r6
      0035E9 80 E1            [24] 2563 	sjmp	00290$
      0035EB                       2564 00139$:
                                   2565 ;	calc.c:194: d1 *= d0;
      0035EB E5 08            [12] 2566 	mov	a,_bp
      0035ED 24 07            [12] 2567 	add	a,#0x07
      0035EF F8               [12] 2568 	mov	r0,a
      0035F0 E6               [12] 2569 	mov	a,@r0
      0035F1 C0 E0            [24] 2570 	push	acc
      0035F3 08               [12] 2571 	inc	r0
      0035F4 E6               [12] 2572 	mov	a,@r0
      0035F5 C0 E0            [24] 2573 	push	acc
      0035F7 08               [12] 2574 	inc	r0
      0035F8 E6               [12] 2575 	mov	a,@r0
      0035F9 C0 E0            [24] 2576 	push	acc
      0035FB 08               [12] 2577 	inc	r0
      0035FC E6               [12] 2578 	mov	a,@r0
      0035FD C0 E0            [24] 2579 	push	acc
      0035FF E5 08            [12] 2580 	mov	a,_bp
      003601 24 0B            [12] 2581 	add	a,#0x0b
      003603 F8               [12] 2582 	mov	r0,a
      003604 86 82            [24] 2583 	mov	dpl,@r0
      003606 08               [12] 2584 	inc	r0
      003607 86 83            [24] 2585 	mov	dph,@r0
      003609 08               [12] 2586 	inc	r0
      00360A 86 F0            [24] 2587 	mov	b,@r0
      00360C 08               [12] 2588 	inc	r0
      00360D E6               [12] 2589 	mov	a,@r0
      00360E 12 50 F8         [24] 2590 	lcall	__mullong
      003611 AC 82            [24] 2591 	mov	r4,dpl
      003613 AD 83            [24] 2592 	mov	r5,dph
      003615 AE F0            [24] 2593 	mov	r6,b
      003617 FF               [12] 2594 	mov	r7,a
      003618 E5 81            [12] 2595 	mov	a,sp
      00361A 24 FC            [12] 2596 	add	a,#0xfc
      00361C F5 81            [12] 2597 	mov	sp,a
      00361E E5 08            [12] 2598 	mov	a,_bp
      003620 24 0B            [12] 2599 	add	a,#0x0b
      003622 F8               [12] 2600 	mov	r0,a
      003623 A6 04            [24] 2601 	mov	@r0,ar4
      003625 08               [12] 2602 	inc	r0
      003626 A6 05            [24] 2603 	mov	@r0,ar5
      003628 08               [12] 2604 	inc	r0
      003629 A6 06            [24] 2605 	mov	@r0,ar6
      00362B 08               [12] 2606 	inc	r0
      00362C A6 07            [24] 2607 	mov	@r0,ar7
                                   2608 ;	calc.c:195: (void)stack_push(&ctx->s, d1);
      00362E E5 08            [12] 2609 	mov	a,_bp
      003630 24 04            [12] 2610 	add	a,#0x04
      003632 F8               [12] 2611 	mov	r0,a
      003633 74 0B            [12] 2612 	mov	a,#0x0b
      003635 26               [12] 2613 	add	a,@r0
      003636 FD               [12] 2614 	mov	r5,a
      003637 E4               [12] 2615 	clr	a
      003638 08               [12] 2616 	inc	r0
      003639 36               [12] 2617 	addc	a,@r0
      00363A FE               [12] 2618 	mov	r6,a
      00363B 08               [12] 2619 	inc	r0
      00363C 86 07            [24] 2620 	mov	ar7,@r0
      00363E E5 08            [12] 2621 	mov	a,_bp
      003640 24 0B            [12] 2622 	add	a,#0x0b
      003642 F8               [12] 2623 	mov	r0,a
      003643 E6               [12] 2624 	mov	a,@r0
      003644 C0 E0            [24] 2625 	push	acc
      003646 08               [12] 2626 	inc	r0
      003647 E6               [12] 2627 	mov	a,@r0
      003648 C0 E0            [24] 2628 	push	acc
      00364A 08               [12] 2629 	inc	r0
      00364B E6               [12] 2630 	mov	a,@r0
      00364C C0 E0            [24] 2631 	push	acc
      00364E 08               [12] 2632 	inc	r0
      00364F E6               [12] 2633 	mov	a,@r0
      003650 C0 E0            [24] 2634 	push	acc
      003652 8D 82            [24] 2635 	mov	dpl,r5
      003654 8E 83            [24] 2636 	mov	dph,r6
      003656 8F F0            [24] 2637 	mov	b,r7
      003658 12 26 B5         [24] 2638 	lcall	_stack_push
      00365B E5 81            [12] 2639 	mov	a,sp
      00365D 24 FC            [12] 2640 	add	a,#0xfc
      00365F F5 81            [12] 2641 	mov	sp,a
                                   2642 ;	calc.c:197: break;
      003661 02 3E B7         [24] 2643 	ljmp	00190$
                                   2644 ;	calc.c:198: case '/':
      003664                       2645 00144$:
                                   2646 ;	calc.c:199: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003664 E5 08            [12] 2647 	mov	a,_bp
      003666 24 07            [12] 2648 	add	a,#0x07
      003668 FF               [12] 2649 	mov	r7,a
      003669 7E 00            [12] 2650 	mov	r6,#0x00
      00366B 7D 40            [12] 2651 	mov	r5,#0x40
      00366D E5 08            [12] 2652 	mov	a,_bp
      00366F 24 04            [12] 2653 	add	a,#0x04
      003671 F8               [12] 2654 	mov	r0,a
      003672 74 0B            [12] 2655 	mov	a,#0x0b
      003674 26               [12] 2656 	add	a,@r0
      003675 FA               [12] 2657 	mov	r2,a
      003676 E4               [12] 2658 	clr	a
      003677 08               [12] 2659 	inc	r0
      003678 36               [12] 2660 	addc	a,@r0
      003679 FB               [12] 2661 	mov	r3,a
      00367A 08               [12] 2662 	inc	r0
      00367B 86 04            [24] 2663 	mov	ar4,@r0
      00367D C0 07            [24] 2664 	push	ar7
      00367F C0 06            [24] 2665 	push	ar6
      003681 C0 05            [24] 2666 	push	ar5
      003683 8A 82            [24] 2667 	mov	dpl,r2
      003685 8B 83            [24] 2668 	mov	dph,r3
      003687 8C F0            [24] 2669 	mov	b,r4
      003689 12 27 7F         [24] 2670 	lcall	_stack_pop
      00368C AE 82            [24] 2671 	mov	r6,dpl
      00368E AF 83            [24] 2672 	mov	r7,dph
      003690 15 81            [12] 2673 	dec	sp
      003692 15 81            [12] 2674 	dec	sp
      003694 15 81            [12] 2675 	dec	sp
      003696 EE               [12] 2676 	mov	a,r6
      003697 4F               [12] 2677 	orl	a,r7
      003698 70 25            [24] 2678 	jnz	00152$
      00369A 7D 95            [12] 2679 	mov	r5,#___str_2
      00369C 7E 65            [12] 2680 	mov	r6,#(___str_2 >> 8)
      00369E 7F 80            [12] 2681 	mov	r7,#0x80
                                   2682 ;	calc.c:50: return;
      0036A0                       2683 00293$:
                                   2684 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0036A0 8D 82            [24] 2685 	mov	dpl,r5
      0036A2 8E 83            [24] 2686 	mov	dph,r6
      0036A4 8F F0            [24] 2687 	mov	b,r7
      0036A6 12 4C FF         [24] 2688 	lcall	__gptrget
      0036A9 FC               [12] 2689 	mov	r4,a
      0036AA 70 03            [24] 2690 	jnz	00824$
      0036AC 02 3E B7         [24] 2691 	ljmp	00190$
      0036AF                       2692 00824$:
      0036AF 7B 00            [12] 2693 	mov	r3,#0x00
      0036B1 8C 82            [24] 2694 	mov	dpl,r4
      0036B3 8B 83            [24] 2695 	mov	dph,r3
      0036B5 12 29 C0         [24] 2696 	lcall	_putchar
      0036B8 0D               [12] 2697 	inc	r5
                                   2698 ;	calc.c:199: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0036B9 BD 00 E4         [24] 2699 	cjne	r5,#0x00,00293$
      0036BC 0E               [12] 2700 	inc	r6
      0036BD 80 E1            [24] 2701 	sjmp	00293$
      0036BF                       2702 00152$:
                                   2703 ;	calc.c:200: else if (!stack_pop(&ctx->s, &d1)) {
      0036BF E5 08            [12] 2704 	mov	a,_bp
      0036C1 24 0B            [12] 2705 	add	a,#0x0b
      0036C3 FF               [12] 2706 	mov	r7,a
      0036C4 7E 00            [12] 2707 	mov	r6,#0x00
      0036C6 7D 40            [12] 2708 	mov	r5,#0x40
      0036C8 E5 08            [12] 2709 	mov	a,_bp
      0036CA 24 04            [12] 2710 	add	a,#0x04
      0036CC F8               [12] 2711 	mov	r0,a
      0036CD 74 0B            [12] 2712 	mov	a,#0x0b
      0036CF 26               [12] 2713 	add	a,@r0
      0036D0 FA               [12] 2714 	mov	r2,a
      0036D1 E4               [12] 2715 	clr	a
      0036D2 08               [12] 2716 	inc	r0
      0036D3 36               [12] 2717 	addc	a,@r0
      0036D4 FB               [12] 2718 	mov	r3,a
      0036D5 08               [12] 2719 	inc	r0
      0036D6 86 04            [24] 2720 	mov	ar4,@r0
      0036D8 C0 07            [24] 2721 	push	ar7
      0036DA C0 06            [24] 2722 	push	ar6
      0036DC C0 05            [24] 2723 	push	ar5
      0036DE 8A 82            [24] 2724 	mov	dpl,r2
      0036E0 8B 83            [24] 2725 	mov	dph,r3
      0036E2 8C F0            [24] 2726 	mov	b,r4
      0036E4 12 27 7F         [24] 2727 	lcall	_stack_pop
      0036E7 AE 82            [24] 2728 	mov	r6,dpl
      0036E9 AF 83            [24] 2729 	mov	r7,dph
      0036EB 15 81            [12] 2730 	dec	sp
      0036ED 15 81            [12] 2731 	dec	sp
      0036EF 15 81            [12] 2732 	dec	sp
      0036F1 EE               [12] 2733 	mov	a,r6
      0036F2 4F               [12] 2734 	orl	a,r7
      0036F3 70 58            [24] 2735 	jnz	00149$
                                   2736 ;	calc.c:201: (void)stack_push(&ctx->s, d0);
      0036F5 E5 08            [12] 2737 	mov	a,_bp
      0036F7 24 04            [12] 2738 	add	a,#0x04
      0036F9 F8               [12] 2739 	mov	r0,a
      0036FA 74 0B            [12] 2740 	mov	a,#0x0b
      0036FC 26               [12] 2741 	add	a,@r0
      0036FD FD               [12] 2742 	mov	r5,a
      0036FE E4               [12] 2743 	clr	a
      0036FF 08               [12] 2744 	inc	r0
      003700 36               [12] 2745 	addc	a,@r0
      003701 FE               [12] 2746 	mov	r6,a
      003702 08               [12] 2747 	inc	r0
      003703 86 07            [24] 2748 	mov	ar7,@r0
      003705 E5 08            [12] 2749 	mov	a,_bp
      003707 24 07            [12] 2750 	add	a,#0x07
      003709 F8               [12] 2751 	mov	r0,a
      00370A E6               [12] 2752 	mov	a,@r0
      00370B C0 E0            [24] 2753 	push	acc
      00370D 08               [12] 2754 	inc	r0
      00370E E6               [12] 2755 	mov	a,@r0
      00370F C0 E0            [24] 2756 	push	acc
      003711 08               [12] 2757 	inc	r0
      003712 E6               [12] 2758 	mov	a,@r0
      003713 C0 E0            [24] 2759 	push	acc
      003715 08               [12] 2760 	inc	r0
      003716 E6               [12] 2761 	mov	a,@r0
      003717 C0 E0            [24] 2762 	push	acc
      003719 8D 82            [24] 2763 	mov	dpl,r5
      00371B 8E 83            [24] 2764 	mov	dph,r6
      00371D 8F F0            [24] 2765 	mov	b,r7
      00371F 12 26 B5         [24] 2766 	lcall	_stack_push
      003722 E5 81            [12] 2767 	mov	a,sp
      003724 24 FC            [12] 2768 	add	a,#0xfc
      003726 F5 81            [12] 2769 	mov	sp,a
                                   2770 ;	calc.c:202: printstr("\r\nstack underflow\r\n");
      003728 7D 95            [12] 2771 	mov	r5,#___str_2
      00372A 7E 65            [12] 2772 	mov	r6,#(___str_2 >> 8)
      00372C 7F 80            [12] 2773 	mov	r7,#0x80
                                   2774 ;	calc.c:50: return;
      00372E                       2775 00296$:
                                   2776 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00372E 8D 82            [24] 2777 	mov	dpl,r5
      003730 8E 83            [24] 2778 	mov	dph,r6
      003732 8F F0            [24] 2779 	mov	b,r7
      003734 12 4C FF         [24] 2780 	lcall	__gptrget
      003737 FC               [12] 2781 	mov	r4,a
      003738 70 03            [24] 2782 	jnz	00827$
      00373A 02 3E B7         [24] 2783 	ljmp	00190$
      00373D                       2784 00827$:
      00373D 7B 00            [12] 2785 	mov	r3,#0x00
      00373F 8C 82            [24] 2786 	mov	dpl,r4
      003741 8B 83            [24] 2787 	mov	dph,r3
      003743 12 29 C0         [24] 2788 	lcall	_putchar
      003746 0D               [12] 2789 	inc	r5
                                   2790 ;	calc.c:202: printstr("\r\nstack underflow\r\n");
      003747 BD 00 E4         [24] 2791 	cjne	r5,#0x00,00296$
      00374A 0E               [12] 2792 	inc	r6
      00374B 80 E1            [24] 2793 	sjmp	00296$
      00374D                       2794 00149$:
                                   2795 ;	calc.c:203: } else if (!d0) {
      00374D E5 08            [12] 2796 	mov	a,_bp
      00374F 24 07            [12] 2797 	add	a,#0x07
      003751 F8               [12] 2798 	mov	r0,a
      003752 E6               [12] 2799 	mov	a,@r0
      003753 08               [12] 2800 	inc	r0
      003754 46               [12] 2801 	orl	a,@r0
      003755 08               [12] 2802 	inc	r0
      003756 46               [12] 2803 	orl	a,@r0
      003757 08               [12] 2804 	inc	r0
      003758 46               [12] 2805 	orl	a,@r0
      003759 60 03            [24] 2806 	jz	00829$
      00375B 02 37 E9         [24] 2807 	ljmp	00146$
      00375E                       2808 00829$:
                                   2809 ;	calc.c:204: (void)stack_push(&ctx->s, d1);
      00375E E5 08            [12] 2810 	mov	a,_bp
      003760 24 04            [12] 2811 	add	a,#0x04
      003762 F8               [12] 2812 	mov	r0,a
      003763 74 0B            [12] 2813 	mov	a,#0x0b
      003765 26               [12] 2814 	add	a,@r0
      003766 FD               [12] 2815 	mov	r5,a
      003767 E4               [12] 2816 	clr	a
      003768 08               [12] 2817 	inc	r0
      003769 36               [12] 2818 	addc	a,@r0
      00376A FE               [12] 2819 	mov	r6,a
      00376B 08               [12] 2820 	inc	r0
      00376C 86 07            [24] 2821 	mov	ar7,@r0
      00376E E5 08            [12] 2822 	mov	a,_bp
      003770 24 0B            [12] 2823 	add	a,#0x0b
      003772 F8               [12] 2824 	mov	r0,a
      003773 E6               [12] 2825 	mov	a,@r0
      003774 C0 E0            [24] 2826 	push	acc
      003776 08               [12] 2827 	inc	r0
      003777 E6               [12] 2828 	mov	a,@r0
      003778 C0 E0            [24] 2829 	push	acc
      00377A 08               [12] 2830 	inc	r0
      00377B E6               [12] 2831 	mov	a,@r0
      00377C C0 E0            [24] 2832 	push	acc
      00377E 08               [12] 2833 	inc	r0
      00377F E6               [12] 2834 	mov	a,@r0
      003780 C0 E0            [24] 2835 	push	acc
      003782 8D 82            [24] 2836 	mov	dpl,r5
      003784 8E 83            [24] 2837 	mov	dph,r6
      003786 8F F0            [24] 2838 	mov	b,r7
      003788 12 26 B5         [24] 2839 	lcall	_stack_push
      00378B E5 81            [12] 2840 	mov	a,sp
      00378D 24 FC            [12] 2841 	add	a,#0xfc
      00378F F5 81            [12] 2842 	mov	sp,a
                                   2843 ;	calc.c:205: (void)stack_push(&ctx->s, d0);			
      003791 E5 08            [12] 2844 	mov	a,_bp
      003793 24 04            [12] 2845 	add	a,#0x04
      003795 F8               [12] 2846 	mov	r0,a
      003796 74 0B            [12] 2847 	mov	a,#0x0b
      003798 26               [12] 2848 	add	a,@r0
      003799 FD               [12] 2849 	mov	r5,a
      00379A E4               [12] 2850 	clr	a
      00379B 08               [12] 2851 	inc	r0
      00379C 36               [12] 2852 	addc	a,@r0
      00379D FE               [12] 2853 	mov	r6,a
      00379E 08               [12] 2854 	inc	r0
      00379F 86 07            [24] 2855 	mov	ar7,@r0
      0037A1 E5 08            [12] 2856 	mov	a,_bp
      0037A3 24 07            [12] 2857 	add	a,#0x07
      0037A5 F8               [12] 2858 	mov	r0,a
      0037A6 E6               [12] 2859 	mov	a,@r0
      0037A7 C0 E0            [24] 2860 	push	acc
      0037A9 08               [12] 2861 	inc	r0
      0037AA E6               [12] 2862 	mov	a,@r0
      0037AB C0 E0            [24] 2863 	push	acc
      0037AD 08               [12] 2864 	inc	r0
      0037AE E6               [12] 2865 	mov	a,@r0
      0037AF C0 E0            [24] 2866 	push	acc
      0037B1 08               [12] 2867 	inc	r0
      0037B2 E6               [12] 2868 	mov	a,@r0
      0037B3 C0 E0            [24] 2869 	push	acc
      0037B5 8D 82            [24] 2870 	mov	dpl,r5
      0037B7 8E 83            [24] 2871 	mov	dph,r6
      0037B9 8F F0            [24] 2872 	mov	b,r7
      0037BB 12 26 B5         [24] 2873 	lcall	_stack_push
      0037BE E5 81            [12] 2874 	mov	a,sp
      0037C0 24 FC            [12] 2875 	add	a,#0xfc
      0037C2 F5 81            [12] 2876 	mov	sp,a
                                   2877 ;	calc.c:206: printstr("\r\ndivision by zero\r\n");
      0037C4 7D A9            [12] 2878 	mov	r5,#___str_3
      0037C6 7E 65            [12] 2879 	mov	r6,#(___str_3 >> 8)
      0037C8 7F 80            [12] 2880 	mov	r7,#0x80
                                   2881 ;	calc.c:50: return;
      0037CA                       2882 00299$:
                                   2883 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0037CA 8D 82            [24] 2884 	mov	dpl,r5
      0037CC 8E 83            [24] 2885 	mov	dph,r6
      0037CE 8F F0            [24] 2886 	mov	b,r7
      0037D0 12 4C FF         [24] 2887 	lcall	__gptrget
      0037D3 FC               [12] 2888 	mov	r4,a
      0037D4 70 03            [24] 2889 	jnz	00830$
      0037D6 02 3E B7         [24] 2890 	ljmp	00190$
      0037D9                       2891 00830$:
      0037D9 7B 00            [12] 2892 	mov	r3,#0x00
      0037DB 8C 82            [24] 2893 	mov	dpl,r4
      0037DD 8B 83            [24] 2894 	mov	dph,r3
      0037DF 12 29 C0         [24] 2895 	lcall	_putchar
      0037E2 0D               [12] 2896 	inc	r5
                                   2897 ;	calc.c:206: printstr("\r\ndivision by zero\r\n");
      0037E3 BD 00 E4         [24] 2898 	cjne	r5,#0x00,00299$
      0037E6 0E               [12] 2899 	inc	r6
      0037E7 80 E1            [24] 2900 	sjmp	00299$
      0037E9                       2901 00146$:
                                   2902 ;	calc.c:208: d1 /= d0;
      0037E9 E5 08            [12] 2903 	mov	a,_bp
      0037EB 24 07            [12] 2904 	add	a,#0x07
      0037ED F8               [12] 2905 	mov	r0,a
      0037EE E6               [12] 2906 	mov	a,@r0
      0037EF C0 E0            [24] 2907 	push	acc
      0037F1 08               [12] 2908 	inc	r0
      0037F2 E6               [12] 2909 	mov	a,@r0
      0037F3 C0 E0            [24] 2910 	push	acc
      0037F5 08               [12] 2911 	inc	r0
      0037F6 E6               [12] 2912 	mov	a,@r0
      0037F7 C0 E0            [24] 2913 	push	acc
      0037F9 08               [12] 2914 	inc	r0
      0037FA E6               [12] 2915 	mov	a,@r0
      0037FB C0 E0            [24] 2916 	push	acc
      0037FD E5 08            [12] 2917 	mov	a,_bp
      0037FF 24 0B            [12] 2918 	add	a,#0x0b
      003801 F8               [12] 2919 	mov	r0,a
      003802 86 82            [24] 2920 	mov	dpl,@r0
      003804 08               [12] 2921 	inc	r0
      003805 86 83            [24] 2922 	mov	dph,@r0
      003807 08               [12] 2923 	inc	r0
      003808 86 F0            [24] 2924 	mov	b,@r0
      00380A 08               [12] 2925 	inc	r0
      00380B E6               [12] 2926 	mov	a,@r0
      00380C 12 4A F6         [24] 2927 	lcall	__divslong
      00380F AC 82            [24] 2928 	mov	r4,dpl
      003811 AD 83            [24] 2929 	mov	r5,dph
      003813 AE F0            [24] 2930 	mov	r6,b
      003815 FF               [12] 2931 	mov	r7,a
      003816 E5 81            [12] 2932 	mov	a,sp
      003818 24 FC            [12] 2933 	add	a,#0xfc
      00381A F5 81            [12] 2934 	mov	sp,a
      00381C E5 08            [12] 2935 	mov	a,_bp
      00381E 24 0B            [12] 2936 	add	a,#0x0b
      003820 F8               [12] 2937 	mov	r0,a
      003821 A6 04            [24] 2938 	mov	@r0,ar4
      003823 08               [12] 2939 	inc	r0
      003824 A6 05            [24] 2940 	mov	@r0,ar5
      003826 08               [12] 2941 	inc	r0
      003827 A6 06            [24] 2942 	mov	@r0,ar6
      003829 08               [12] 2943 	inc	r0
      00382A A6 07            [24] 2944 	mov	@r0,ar7
                                   2945 ;	calc.c:209: (void)stack_push(&ctx->s, d1);
      00382C E5 08            [12] 2946 	mov	a,_bp
      00382E 24 04            [12] 2947 	add	a,#0x04
      003830 F8               [12] 2948 	mov	r0,a
      003831 74 0B            [12] 2949 	mov	a,#0x0b
      003833 26               [12] 2950 	add	a,@r0
      003834 FD               [12] 2951 	mov	r5,a
      003835 E4               [12] 2952 	clr	a
      003836 08               [12] 2953 	inc	r0
      003837 36               [12] 2954 	addc	a,@r0
      003838 FE               [12] 2955 	mov	r6,a
      003839 08               [12] 2956 	inc	r0
      00383A 86 07            [24] 2957 	mov	ar7,@r0
      00383C E5 08            [12] 2958 	mov	a,_bp
      00383E 24 0B            [12] 2959 	add	a,#0x0b
      003840 F8               [12] 2960 	mov	r0,a
      003841 E6               [12] 2961 	mov	a,@r0
      003842 C0 E0            [24] 2962 	push	acc
      003844 08               [12] 2963 	inc	r0
      003845 E6               [12] 2964 	mov	a,@r0
      003846 C0 E0            [24] 2965 	push	acc
      003848 08               [12] 2966 	inc	r0
      003849 E6               [12] 2967 	mov	a,@r0
      00384A C0 E0            [24] 2968 	push	acc
      00384C 08               [12] 2969 	inc	r0
      00384D E6               [12] 2970 	mov	a,@r0
      00384E C0 E0            [24] 2971 	push	acc
      003850 8D 82            [24] 2972 	mov	dpl,r5
      003852 8E 83            [24] 2973 	mov	dph,r6
      003854 8F F0            [24] 2974 	mov	b,r7
      003856 12 26 B5         [24] 2975 	lcall	_stack_push
      003859 E5 81            [12] 2976 	mov	a,sp
      00385B 24 FC            [12] 2977 	add	a,#0xfc
      00385D F5 81            [12] 2978 	mov	sp,a
                                   2979 ;	calc.c:211: break;
      00385F 02 3E B7         [24] 2980 	ljmp	00190$
                                   2981 ;	calc.c:212: case '%':
      003862                       2982 00154$:
                                   2983 ;	calc.c:213: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003862 E5 08            [12] 2984 	mov	a,_bp
      003864 24 07            [12] 2985 	add	a,#0x07
      003866 FF               [12] 2986 	mov	r7,a
      003867 7E 00            [12] 2987 	mov	r6,#0x00
      003869 7D 40            [12] 2988 	mov	r5,#0x40
      00386B E5 08            [12] 2989 	mov	a,_bp
      00386D 24 04            [12] 2990 	add	a,#0x04
      00386F F8               [12] 2991 	mov	r0,a
      003870 74 0B            [12] 2992 	mov	a,#0x0b
      003872 26               [12] 2993 	add	a,@r0
      003873 FA               [12] 2994 	mov	r2,a
      003874 E4               [12] 2995 	clr	a
      003875 08               [12] 2996 	inc	r0
      003876 36               [12] 2997 	addc	a,@r0
      003877 FB               [12] 2998 	mov	r3,a
      003878 08               [12] 2999 	inc	r0
      003879 86 04            [24] 3000 	mov	ar4,@r0
      00387B C0 07            [24] 3001 	push	ar7
      00387D C0 06            [24] 3002 	push	ar6
      00387F C0 05            [24] 3003 	push	ar5
      003881 8A 82            [24] 3004 	mov	dpl,r2
      003883 8B 83            [24] 3005 	mov	dph,r3
      003885 8C F0            [24] 3006 	mov	b,r4
      003887 12 27 7F         [24] 3007 	lcall	_stack_pop
      00388A AE 82            [24] 3008 	mov	r6,dpl
      00388C AF 83            [24] 3009 	mov	r7,dph
      00388E 15 81            [12] 3010 	dec	sp
      003890 15 81            [12] 3011 	dec	sp
      003892 15 81            [12] 3012 	dec	sp
      003894 EE               [12] 3013 	mov	a,r6
      003895 4F               [12] 3014 	orl	a,r7
      003896 70 25            [24] 3015 	jnz	00162$
      003898 7D 95            [12] 3016 	mov	r5,#___str_2
      00389A 7E 65            [12] 3017 	mov	r6,#(___str_2 >> 8)
      00389C 7F 80            [12] 3018 	mov	r7,#0x80
                                   3019 ;	calc.c:50: return;
      00389E                       3020 00302$:
                                   3021 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00389E 8D 82            [24] 3022 	mov	dpl,r5
      0038A0 8E 83            [24] 3023 	mov	dph,r6
      0038A2 8F F0            [24] 3024 	mov	b,r7
      0038A4 12 4C FF         [24] 3025 	lcall	__gptrget
      0038A7 FC               [12] 3026 	mov	r4,a
      0038A8 70 03            [24] 3027 	jnz	00833$
      0038AA 02 3E B7         [24] 3028 	ljmp	00190$
      0038AD                       3029 00833$:
      0038AD 7B 00            [12] 3030 	mov	r3,#0x00
      0038AF 8C 82            [24] 3031 	mov	dpl,r4
      0038B1 8B 83            [24] 3032 	mov	dph,r3
      0038B3 12 29 C0         [24] 3033 	lcall	_putchar
      0038B6 0D               [12] 3034 	inc	r5
                                   3035 ;	calc.c:213: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0038B7 BD 00 E4         [24] 3036 	cjne	r5,#0x00,00302$
      0038BA 0E               [12] 3037 	inc	r6
      0038BB 80 E1            [24] 3038 	sjmp	00302$
      0038BD                       3039 00162$:
                                   3040 ;	calc.c:214: else if (!stack_pop(&ctx->s, &d1)) {
      0038BD E5 08            [12] 3041 	mov	a,_bp
      0038BF 24 0B            [12] 3042 	add	a,#0x0b
      0038C1 FF               [12] 3043 	mov	r7,a
      0038C2 7E 00            [12] 3044 	mov	r6,#0x00
      0038C4 7D 40            [12] 3045 	mov	r5,#0x40
      0038C6 E5 08            [12] 3046 	mov	a,_bp
      0038C8 24 04            [12] 3047 	add	a,#0x04
      0038CA F8               [12] 3048 	mov	r0,a
      0038CB 74 0B            [12] 3049 	mov	a,#0x0b
      0038CD 26               [12] 3050 	add	a,@r0
      0038CE FA               [12] 3051 	mov	r2,a
      0038CF E4               [12] 3052 	clr	a
      0038D0 08               [12] 3053 	inc	r0
      0038D1 36               [12] 3054 	addc	a,@r0
      0038D2 FB               [12] 3055 	mov	r3,a
      0038D3 08               [12] 3056 	inc	r0
      0038D4 86 04            [24] 3057 	mov	ar4,@r0
      0038D6 C0 07            [24] 3058 	push	ar7
      0038D8 C0 06            [24] 3059 	push	ar6
      0038DA C0 05            [24] 3060 	push	ar5
      0038DC 8A 82            [24] 3061 	mov	dpl,r2
      0038DE 8B 83            [24] 3062 	mov	dph,r3
      0038E0 8C F0            [24] 3063 	mov	b,r4
      0038E2 12 27 7F         [24] 3064 	lcall	_stack_pop
      0038E5 AE 82            [24] 3065 	mov	r6,dpl
      0038E7 AF 83            [24] 3066 	mov	r7,dph
      0038E9 15 81            [12] 3067 	dec	sp
      0038EB 15 81            [12] 3068 	dec	sp
      0038ED 15 81            [12] 3069 	dec	sp
      0038EF EE               [12] 3070 	mov	a,r6
      0038F0 4F               [12] 3071 	orl	a,r7
      0038F1 70 58            [24] 3072 	jnz	00159$
                                   3073 ;	calc.c:215: (void)stack_push(&ctx->s, d0);
      0038F3 E5 08            [12] 3074 	mov	a,_bp
      0038F5 24 04            [12] 3075 	add	a,#0x04
      0038F7 F8               [12] 3076 	mov	r0,a
      0038F8 74 0B            [12] 3077 	mov	a,#0x0b
      0038FA 26               [12] 3078 	add	a,@r0
      0038FB FD               [12] 3079 	mov	r5,a
      0038FC E4               [12] 3080 	clr	a
      0038FD 08               [12] 3081 	inc	r0
      0038FE 36               [12] 3082 	addc	a,@r0
      0038FF FE               [12] 3083 	mov	r6,a
      003900 08               [12] 3084 	inc	r0
      003901 86 07            [24] 3085 	mov	ar7,@r0
      003903 E5 08            [12] 3086 	mov	a,_bp
      003905 24 07            [12] 3087 	add	a,#0x07
      003907 F8               [12] 3088 	mov	r0,a
      003908 E6               [12] 3089 	mov	a,@r0
      003909 C0 E0            [24] 3090 	push	acc
      00390B 08               [12] 3091 	inc	r0
      00390C E6               [12] 3092 	mov	a,@r0
      00390D C0 E0            [24] 3093 	push	acc
      00390F 08               [12] 3094 	inc	r0
      003910 E6               [12] 3095 	mov	a,@r0
      003911 C0 E0            [24] 3096 	push	acc
      003913 08               [12] 3097 	inc	r0
      003914 E6               [12] 3098 	mov	a,@r0
      003915 C0 E0            [24] 3099 	push	acc
      003917 8D 82            [24] 3100 	mov	dpl,r5
      003919 8E 83            [24] 3101 	mov	dph,r6
      00391B 8F F0            [24] 3102 	mov	b,r7
      00391D 12 26 B5         [24] 3103 	lcall	_stack_push
      003920 E5 81            [12] 3104 	mov	a,sp
      003922 24 FC            [12] 3105 	add	a,#0xfc
      003924 F5 81            [12] 3106 	mov	sp,a
                                   3107 ;	calc.c:216: printstr("\r\nstack underflow\r\n");
      003926 7D 95            [12] 3108 	mov	r5,#___str_2
      003928 7E 65            [12] 3109 	mov	r6,#(___str_2 >> 8)
      00392A 7F 80            [12] 3110 	mov	r7,#0x80
                                   3111 ;	calc.c:50: return;
      00392C                       3112 00305$:
                                   3113 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00392C 8D 82            [24] 3114 	mov	dpl,r5
      00392E 8E 83            [24] 3115 	mov	dph,r6
      003930 8F F0            [24] 3116 	mov	b,r7
      003932 12 4C FF         [24] 3117 	lcall	__gptrget
      003935 FC               [12] 3118 	mov	r4,a
      003936 70 03            [24] 3119 	jnz	00836$
      003938 02 3E B7         [24] 3120 	ljmp	00190$
      00393B                       3121 00836$:
      00393B 7B 00            [12] 3122 	mov	r3,#0x00
      00393D 8C 82            [24] 3123 	mov	dpl,r4
      00393F 8B 83            [24] 3124 	mov	dph,r3
      003941 12 29 C0         [24] 3125 	lcall	_putchar
      003944 0D               [12] 3126 	inc	r5
                                   3127 ;	calc.c:216: printstr("\r\nstack underflow\r\n");
      003945 BD 00 E4         [24] 3128 	cjne	r5,#0x00,00305$
      003948 0E               [12] 3129 	inc	r6
      003949 80 E1            [24] 3130 	sjmp	00305$
      00394B                       3131 00159$:
                                   3132 ;	calc.c:217: } else if (!d0) {
      00394B E5 08            [12] 3133 	mov	a,_bp
      00394D 24 07            [12] 3134 	add	a,#0x07
      00394F F8               [12] 3135 	mov	r0,a
      003950 E6               [12] 3136 	mov	a,@r0
      003951 08               [12] 3137 	inc	r0
      003952 46               [12] 3138 	orl	a,@r0
      003953 08               [12] 3139 	inc	r0
      003954 46               [12] 3140 	orl	a,@r0
      003955 08               [12] 3141 	inc	r0
      003956 46               [12] 3142 	orl	a,@r0
      003957 60 03            [24] 3143 	jz	00838$
      003959 02 39 E7         [24] 3144 	ljmp	00156$
      00395C                       3145 00838$:
                                   3146 ;	calc.c:218: (void)stack_push(&ctx->s, d1);
      00395C E5 08            [12] 3147 	mov	a,_bp
      00395E 24 04            [12] 3148 	add	a,#0x04
      003960 F8               [12] 3149 	mov	r0,a
      003961 74 0B            [12] 3150 	mov	a,#0x0b
      003963 26               [12] 3151 	add	a,@r0
      003964 FD               [12] 3152 	mov	r5,a
      003965 E4               [12] 3153 	clr	a
      003966 08               [12] 3154 	inc	r0
      003967 36               [12] 3155 	addc	a,@r0
      003968 FE               [12] 3156 	mov	r6,a
      003969 08               [12] 3157 	inc	r0
      00396A 86 07            [24] 3158 	mov	ar7,@r0
      00396C E5 08            [12] 3159 	mov	a,_bp
      00396E 24 0B            [12] 3160 	add	a,#0x0b
      003970 F8               [12] 3161 	mov	r0,a
      003971 E6               [12] 3162 	mov	a,@r0
      003972 C0 E0            [24] 3163 	push	acc
      003974 08               [12] 3164 	inc	r0
      003975 E6               [12] 3165 	mov	a,@r0
      003976 C0 E0            [24] 3166 	push	acc
      003978 08               [12] 3167 	inc	r0
      003979 E6               [12] 3168 	mov	a,@r0
      00397A C0 E0            [24] 3169 	push	acc
      00397C 08               [12] 3170 	inc	r0
      00397D E6               [12] 3171 	mov	a,@r0
      00397E C0 E0            [24] 3172 	push	acc
      003980 8D 82            [24] 3173 	mov	dpl,r5
      003982 8E 83            [24] 3174 	mov	dph,r6
      003984 8F F0            [24] 3175 	mov	b,r7
      003986 12 26 B5         [24] 3176 	lcall	_stack_push
      003989 E5 81            [12] 3177 	mov	a,sp
      00398B 24 FC            [12] 3178 	add	a,#0xfc
      00398D F5 81            [12] 3179 	mov	sp,a
                                   3180 ;	calc.c:219: (void)stack_push(&ctx->s, d0);			
      00398F E5 08            [12] 3181 	mov	a,_bp
      003991 24 04            [12] 3182 	add	a,#0x04
      003993 F8               [12] 3183 	mov	r0,a
      003994 74 0B            [12] 3184 	mov	a,#0x0b
      003996 26               [12] 3185 	add	a,@r0
      003997 FD               [12] 3186 	mov	r5,a
      003998 E4               [12] 3187 	clr	a
      003999 08               [12] 3188 	inc	r0
      00399A 36               [12] 3189 	addc	a,@r0
      00399B FE               [12] 3190 	mov	r6,a
      00399C 08               [12] 3191 	inc	r0
      00399D 86 07            [24] 3192 	mov	ar7,@r0
      00399F E5 08            [12] 3193 	mov	a,_bp
      0039A1 24 07            [12] 3194 	add	a,#0x07
      0039A3 F8               [12] 3195 	mov	r0,a
      0039A4 E6               [12] 3196 	mov	a,@r0
      0039A5 C0 E0            [24] 3197 	push	acc
      0039A7 08               [12] 3198 	inc	r0
      0039A8 E6               [12] 3199 	mov	a,@r0
      0039A9 C0 E0            [24] 3200 	push	acc
      0039AB 08               [12] 3201 	inc	r0
      0039AC E6               [12] 3202 	mov	a,@r0
      0039AD C0 E0            [24] 3203 	push	acc
      0039AF 08               [12] 3204 	inc	r0
      0039B0 E6               [12] 3205 	mov	a,@r0
      0039B1 C0 E0            [24] 3206 	push	acc
      0039B3 8D 82            [24] 3207 	mov	dpl,r5
      0039B5 8E 83            [24] 3208 	mov	dph,r6
      0039B7 8F F0            [24] 3209 	mov	b,r7
      0039B9 12 26 B5         [24] 3210 	lcall	_stack_push
      0039BC E5 81            [12] 3211 	mov	a,sp
      0039BE 24 FC            [12] 3212 	add	a,#0xfc
      0039C0 F5 81            [12] 3213 	mov	sp,a
                                   3214 ;	calc.c:220: printstr("\r\ndivision by zero\r\n");
      0039C2 7D A9            [12] 3215 	mov	r5,#___str_3
      0039C4 7E 65            [12] 3216 	mov	r6,#(___str_3 >> 8)
      0039C6 7F 80            [12] 3217 	mov	r7,#0x80
                                   3218 ;	calc.c:50: return;
      0039C8                       3219 00308$:
                                   3220 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0039C8 8D 82            [24] 3221 	mov	dpl,r5
      0039CA 8E 83            [24] 3222 	mov	dph,r6
      0039CC 8F F0            [24] 3223 	mov	b,r7
      0039CE 12 4C FF         [24] 3224 	lcall	__gptrget
      0039D1 FC               [12] 3225 	mov	r4,a
      0039D2 70 03            [24] 3226 	jnz	00839$
      0039D4 02 3E B7         [24] 3227 	ljmp	00190$
      0039D7                       3228 00839$:
      0039D7 7B 00            [12] 3229 	mov	r3,#0x00
      0039D9 8C 82            [24] 3230 	mov	dpl,r4
      0039DB 8B 83            [24] 3231 	mov	dph,r3
      0039DD 12 29 C0         [24] 3232 	lcall	_putchar
      0039E0 0D               [12] 3233 	inc	r5
                                   3234 ;	calc.c:220: printstr("\r\ndivision by zero\r\n");
      0039E1 BD 00 E4         [24] 3235 	cjne	r5,#0x00,00308$
      0039E4 0E               [12] 3236 	inc	r6
      0039E5 80 E1            [24] 3237 	sjmp	00308$
      0039E7                       3238 00156$:
                                   3239 ;	calc.c:222: d1 %= d0;
      0039E7 E5 08            [12] 3240 	mov	a,_bp
      0039E9 24 07            [12] 3241 	add	a,#0x07
      0039EB F8               [12] 3242 	mov	r0,a
      0039EC E6               [12] 3243 	mov	a,@r0
      0039ED C0 E0            [24] 3244 	push	acc
      0039EF 08               [12] 3245 	inc	r0
      0039F0 E6               [12] 3246 	mov	a,@r0
      0039F1 C0 E0            [24] 3247 	push	acc
      0039F3 08               [12] 3248 	inc	r0
      0039F4 E6               [12] 3249 	mov	a,@r0
      0039F5 C0 E0            [24] 3250 	push	acc
      0039F7 08               [12] 3251 	inc	r0
      0039F8 E6               [12] 3252 	mov	a,@r0
      0039F9 C0 E0            [24] 3253 	push	acc
      0039FB E5 08            [12] 3254 	mov	a,_bp
      0039FD 24 0B            [12] 3255 	add	a,#0x0b
      0039FF F8               [12] 3256 	mov	r0,a
      003A00 86 82            [24] 3257 	mov	dpl,@r0
      003A02 08               [12] 3258 	inc	r0
      003A03 86 83            [24] 3259 	mov	dph,@r0
      003A05 08               [12] 3260 	inc	r0
      003A06 86 F0            [24] 3261 	mov	b,@r0
      003A08 08               [12] 3262 	inc	r0
      003A09 E6               [12] 3263 	mov	a,@r0
      003A0A 12 49 3D         [24] 3264 	lcall	__modslong
      003A0D AC 82            [24] 3265 	mov	r4,dpl
      003A0F AD 83            [24] 3266 	mov	r5,dph
      003A11 AE F0            [24] 3267 	mov	r6,b
      003A13 FF               [12] 3268 	mov	r7,a
      003A14 E5 81            [12] 3269 	mov	a,sp
      003A16 24 FC            [12] 3270 	add	a,#0xfc
      003A18 F5 81            [12] 3271 	mov	sp,a
      003A1A E5 08            [12] 3272 	mov	a,_bp
      003A1C 24 0B            [12] 3273 	add	a,#0x0b
      003A1E F8               [12] 3274 	mov	r0,a
      003A1F A6 04            [24] 3275 	mov	@r0,ar4
      003A21 08               [12] 3276 	inc	r0
      003A22 A6 05            [24] 3277 	mov	@r0,ar5
      003A24 08               [12] 3278 	inc	r0
      003A25 A6 06            [24] 3279 	mov	@r0,ar6
      003A27 08               [12] 3280 	inc	r0
      003A28 A6 07            [24] 3281 	mov	@r0,ar7
                                   3282 ;	calc.c:223: (void)stack_push(&ctx->s, d1);
      003A2A E5 08            [12] 3283 	mov	a,_bp
      003A2C 24 04            [12] 3284 	add	a,#0x04
      003A2E F8               [12] 3285 	mov	r0,a
      003A2F 74 0B            [12] 3286 	mov	a,#0x0b
      003A31 26               [12] 3287 	add	a,@r0
      003A32 FD               [12] 3288 	mov	r5,a
      003A33 E4               [12] 3289 	clr	a
      003A34 08               [12] 3290 	inc	r0
      003A35 36               [12] 3291 	addc	a,@r0
      003A36 FE               [12] 3292 	mov	r6,a
      003A37 08               [12] 3293 	inc	r0
      003A38 86 07            [24] 3294 	mov	ar7,@r0
      003A3A E5 08            [12] 3295 	mov	a,_bp
      003A3C 24 0B            [12] 3296 	add	a,#0x0b
      003A3E F8               [12] 3297 	mov	r0,a
      003A3F E6               [12] 3298 	mov	a,@r0
      003A40 C0 E0            [24] 3299 	push	acc
      003A42 08               [12] 3300 	inc	r0
      003A43 E6               [12] 3301 	mov	a,@r0
      003A44 C0 E0            [24] 3302 	push	acc
      003A46 08               [12] 3303 	inc	r0
      003A47 E6               [12] 3304 	mov	a,@r0
      003A48 C0 E0            [24] 3305 	push	acc
      003A4A 08               [12] 3306 	inc	r0
      003A4B E6               [12] 3307 	mov	a,@r0
      003A4C C0 E0            [24] 3308 	push	acc
      003A4E 8D 82            [24] 3309 	mov	dpl,r5
      003A50 8E 83            [24] 3310 	mov	dph,r6
      003A52 8F F0            [24] 3311 	mov	b,r7
      003A54 12 26 B5         [24] 3312 	lcall	_stack_push
      003A57 E5 81            [12] 3313 	mov	a,sp
      003A59 24 FC            [12] 3314 	add	a,#0xfc
      003A5B F5 81            [12] 3315 	mov	sp,a
                                   3316 ;	calc.c:225: break;
      003A5D 02 3E B7         [24] 3317 	ljmp	00190$
                                   3318 ;	calc.c:226: case '&':
      003A60                       3319 00164$:
                                   3320 ;	calc.c:227: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003A60 E5 08            [12] 3321 	mov	a,_bp
      003A62 24 07            [12] 3322 	add	a,#0x07
      003A64 FF               [12] 3323 	mov	r7,a
      003A65 7E 00            [12] 3324 	mov	r6,#0x00
      003A67 7D 40            [12] 3325 	mov	r5,#0x40
      003A69 E5 08            [12] 3326 	mov	a,_bp
      003A6B 24 04            [12] 3327 	add	a,#0x04
      003A6D F8               [12] 3328 	mov	r0,a
      003A6E 74 0B            [12] 3329 	mov	a,#0x0b
      003A70 26               [12] 3330 	add	a,@r0
      003A71 FA               [12] 3331 	mov	r2,a
      003A72 E4               [12] 3332 	clr	a
      003A73 08               [12] 3333 	inc	r0
      003A74 36               [12] 3334 	addc	a,@r0
      003A75 FB               [12] 3335 	mov	r3,a
      003A76 08               [12] 3336 	inc	r0
      003A77 86 04            [24] 3337 	mov	ar4,@r0
      003A79 C0 07            [24] 3338 	push	ar7
      003A7B C0 06            [24] 3339 	push	ar6
      003A7D C0 05            [24] 3340 	push	ar5
      003A7F 8A 82            [24] 3341 	mov	dpl,r2
      003A81 8B 83            [24] 3342 	mov	dph,r3
      003A83 8C F0            [24] 3343 	mov	b,r4
      003A85 12 27 7F         [24] 3344 	lcall	_stack_pop
      003A88 AE 82            [24] 3345 	mov	r6,dpl
      003A8A AF 83            [24] 3346 	mov	r7,dph
      003A8C 15 81            [12] 3347 	dec	sp
      003A8E 15 81            [12] 3348 	dec	sp
      003A90 15 81            [12] 3349 	dec	sp
      003A92 EE               [12] 3350 	mov	a,r6
      003A93 4F               [12] 3351 	orl	a,r7
      003A94 70 25            [24] 3352 	jnz	00169$
      003A96 7D 95            [12] 3353 	mov	r5,#___str_2
      003A98 7E 65            [12] 3354 	mov	r6,#(___str_2 >> 8)
      003A9A 7F 80            [12] 3355 	mov	r7,#0x80
                                   3356 ;	calc.c:50: return;
      003A9C                       3357 00311$:
                                   3358 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003A9C 8D 82            [24] 3359 	mov	dpl,r5
      003A9E 8E 83            [24] 3360 	mov	dph,r6
      003AA0 8F F0            [24] 3361 	mov	b,r7
      003AA2 12 4C FF         [24] 3362 	lcall	__gptrget
      003AA5 FC               [12] 3363 	mov	r4,a
      003AA6 70 03            [24] 3364 	jnz	00842$
      003AA8 02 3E B7         [24] 3365 	ljmp	00190$
      003AAB                       3366 00842$:
      003AAB 7B 00            [12] 3367 	mov	r3,#0x00
      003AAD 8C 82            [24] 3368 	mov	dpl,r4
      003AAF 8B 83            [24] 3369 	mov	dph,r3
      003AB1 12 29 C0         [24] 3370 	lcall	_putchar
      003AB4 0D               [12] 3371 	inc	r5
                                   3372 ;	calc.c:227: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003AB5 BD 00 E4         [24] 3373 	cjne	r5,#0x00,00311$
      003AB8 0E               [12] 3374 	inc	r6
      003AB9 80 E1            [24] 3375 	sjmp	00311$
      003ABB                       3376 00169$:
                                   3377 ;	calc.c:228: else if (!stack_pop(&ctx->s, &d1)) {
      003ABB E5 08            [12] 3378 	mov	a,_bp
      003ABD 24 0B            [12] 3379 	add	a,#0x0b
      003ABF FF               [12] 3380 	mov	r7,a
      003AC0 7E 00            [12] 3381 	mov	r6,#0x00
      003AC2 7D 40            [12] 3382 	mov	r5,#0x40
      003AC4 E5 08            [12] 3383 	mov	a,_bp
      003AC6 24 04            [12] 3384 	add	a,#0x04
      003AC8 F8               [12] 3385 	mov	r0,a
      003AC9 74 0B            [12] 3386 	mov	a,#0x0b
      003ACB 26               [12] 3387 	add	a,@r0
      003ACC FA               [12] 3388 	mov	r2,a
      003ACD E4               [12] 3389 	clr	a
      003ACE 08               [12] 3390 	inc	r0
      003ACF 36               [12] 3391 	addc	a,@r0
      003AD0 FB               [12] 3392 	mov	r3,a
      003AD1 08               [12] 3393 	inc	r0
      003AD2 86 04            [24] 3394 	mov	ar4,@r0
      003AD4 C0 07            [24] 3395 	push	ar7
      003AD6 C0 06            [24] 3396 	push	ar6
      003AD8 C0 05            [24] 3397 	push	ar5
      003ADA 8A 82            [24] 3398 	mov	dpl,r2
      003ADC 8B 83            [24] 3399 	mov	dph,r3
      003ADE 8C F0            [24] 3400 	mov	b,r4
      003AE0 12 27 7F         [24] 3401 	lcall	_stack_pop
      003AE3 AE 82            [24] 3402 	mov	r6,dpl
      003AE5 AF 83            [24] 3403 	mov	r7,dph
      003AE7 15 81            [12] 3404 	dec	sp
      003AE9 15 81            [12] 3405 	dec	sp
      003AEB 15 81            [12] 3406 	dec	sp
      003AED EE               [12] 3407 	mov	a,r6
      003AEE 4F               [12] 3408 	orl	a,r7
      003AEF 70 58            [24] 3409 	jnz	00166$
                                   3410 ;	calc.c:229: (void)stack_push(&ctx->s, d0);
      003AF1 E5 08            [12] 3411 	mov	a,_bp
      003AF3 24 04            [12] 3412 	add	a,#0x04
      003AF5 F8               [12] 3413 	mov	r0,a
      003AF6 74 0B            [12] 3414 	mov	a,#0x0b
      003AF8 26               [12] 3415 	add	a,@r0
      003AF9 FD               [12] 3416 	mov	r5,a
      003AFA E4               [12] 3417 	clr	a
      003AFB 08               [12] 3418 	inc	r0
      003AFC 36               [12] 3419 	addc	a,@r0
      003AFD FE               [12] 3420 	mov	r6,a
      003AFE 08               [12] 3421 	inc	r0
      003AFF 86 07            [24] 3422 	mov	ar7,@r0
      003B01 E5 08            [12] 3423 	mov	a,_bp
      003B03 24 07            [12] 3424 	add	a,#0x07
      003B05 F8               [12] 3425 	mov	r0,a
      003B06 E6               [12] 3426 	mov	a,@r0
      003B07 C0 E0            [24] 3427 	push	acc
      003B09 08               [12] 3428 	inc	r0
      003B0A E6               [12] 3429 	mov	a,@r0
      003B0B C0 E0            [24] 3430 	push	acc
      003B0D 08               [12] 3431 	inc	r0
      003B0E E6               [12] 3432 	mov	a,@r0
      003B0F C0 E0            [24] 3433 	push	acc
      003B11 08               [12] 3434 	inc	r0
      003B12 E6               [12] 3435 	mov	a,@r0
      003B13 C0 E0            [24] 3436 	push	acc
      003B15 8D 82            [24] 3437 	mov	dpl,r5
      003B17 8E 83            [24] 3438 	mov	dph,r6
      003B19 8F F0            [24] 3439 	mov	b,r7
      003B1B 12 26 B5         [24] 3440 	lcall	_stack_push
      003B1E E5 81            [12] 3441 	mov	a,sp
      003B20 24 FC            [12] 3442 	add	a,#0xfc
      003B22 F5 81            [12] 3443 	mov	sp,a
                                   3444 ;	calc.c:230: printstr("\r\nstack underflow\r\n");
      003B24 7D 95            [12] 3445 	mov	r5,#___str_2
      003B26 7E 65            [12] 3446 	mov	r6,#(___str_2 >> 8)
      003B28 7F 80            [12] 3447 	mov	r7,#0x80
                                   3448 ;	calc.c:50: return;
      003B2A                       3449 00314$:
                                   3450 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003B2A 8D 82            [24] 3451 	mov	dpl,r5
      003B2C 8E 83            [24] 3452 	mov	dph,r6
      003B2E 8F F0            [24] 3453 	mov	b,r7
      003B30 12 4C FF         [24] 3454 	lcall	__gptrget
      003B33 FC               [12] 3455 	mov	r4,a
      003B34 70 03            [24] 3456 	jnz	00845$
      003B36 02 3E B7         [24] 3457 	ljmp	00190$
      003B39                       3458 00845$:
      003B39 7B 00            [12] 3459 	mov	r3,#0x00
      003B3B 8C 82            [24] 3460 	mov	dpl,r4
      003B3D 8B 83            [24] 3461 	mov	dph,r3
      003B3F 12 29 C0         [24] 3462 	lcall	_putchar
      003B42 0D               [12] 3463 	inc	r5
                                   3464 ;	calc.c:230: printstr("\r\nstack underflow\r\n");
      003B43 BD 00 E4         [24] 3465 	cjne	r5,#0x00,00314$
      003B46 0E               [12] 3466 	inc	r6
      003B47 80 E1            [24] 3467 	sjmp	00314$
      003B49                       3468 00166$:
                                   3469 ;	calc.c:232: d1 &= d0;
      003B49 E5 08            [12] 3470 	mov	a,_bp
      003B4B 24 0B            [12] 3471 	add	a,#0x0b
      003B4D F8               [12] 3472 	mov	r0,a
      003B4E E5 08            [12] 3473 	mov	a,_bp
      003B50 24 07            [12] 3474 	add	a,#0x07
      003B52 F9               [12] 3475 	mov	r1,a
      003B53 E7               [12] 3476 	mov	a,@r1
      003B54 56               [12] 3477 	anl	a,@r0
      003B55 F6               [12] 3478 	mov	@r0,a
      003B56 09               [12] 3479 	inc	r1
      003B57 E7               [12] 3480 	mov	a,@r1
      003B58 08               [12] 3481 	inc	r0
      003B59 56               [12] 3482 	anl	a,@r0
      003B5A F6               [12] 3483 	mov	@r0,a
      003B5B 09               [12] 3484 	inc	r1
      003B5C E7               [12] 3485 	mov	a,@r1
      003B5D 08               [12] 3486 	inc	r0
      003B5E 56               [12] 3487 	anl	a,@r0
      003B5F F6               [12] 3488 	mov	@r0,a
      003B60 09               [12] 3489 	inc	r1
      003B61 E7               [12] 3490 	mov	a,@r1
      003B62 08               [12] 3491 	inc	r0
      003B63 56               [12] 3492 	anl	a,@r0
      003B64 F6               [12] 3493 	mov	@r0,a
                                   3494 ;	calc.c:233: (void)stack_push(&ctx->s, d1);
      003B65 E5 08            [12] 3495 	mov	a,_bp
      003B67 24 04            [12] 3496 	add	a,#0x04
      003B69 F8               [12] 3497 	mov	r0,a
      003B6A 74 0B            [12] 3498 	mov	a,#0x0b
      003B6C 26               [12] 3499 	add	a,@r0
      003B6D FD               [12] 3500 	mov	r5,a
      003B6E E4               [12] 3501 	clr	a
      003B6F 08               [12] 3502 	inc	r0
      003B70 36               [12] 3503 	addc	a,@r0
      003B71 FE               [12] 3504 	mov	r6,a
      003B72 08               [12] 3505 	inc	r0
      003B73 86 07            [24] 3506 	mov	ar7,@r0
      003B75 E5 08            [12] 3507 	mov	a,_bp
      003B77 24 0B            [12] 3508 	add	a,#0x0b
      003B79 F8               [12] 3509 	mov	r0,a
      003B7A E6               [12] 3510 	mov	a,@r0
      003B7B C0 E0            [24] 3511 	push	acc
      003B7D 08               [12] 3512 	inc	r0
      003B7E E6               [12] 3513 	mov	a,@r0
      003B7F C0 E0            [24] 3514 	push	acc
      003B81 08               [12] 3515 	inc	r0
      003B82 E6               [12] 3516 	mov	a,@r0
      003B83 C0 E0            [24] 3517 	push	acc
      003B85 08               [12] 3518 	inc	r0
      003B86 E6               [12] 3519 	mov	a,@r0
      003B87 C0 E0            [24] 3520 	push	acc
      003B89 8D 82            [24] 3521 	mov	dpl,r5
      003B8B 8E 83            [24] 3522 	mov	dph,r6
      003B8D 8F F0            [24] 3523 	mov	b,r7
      003B8F 12 26 B5         [24] 3524 	lcall	_stack_push
      003B92 E5 81            [12] 3525 	mov	a,sp
      003B94 24 FC            [12] 3526 	add	a,#0xfc
      003B96 F5 81            [12] 3527 	mov	sp,a
                                   3528 ;	calc.c:235: break;
      003B98 02 3E B7         [24] 3529 	ljmp	00190$
                                   3530 ;	calc.c:236: case '|':
      003B9B                       3531 00171$:
                                   3532 ;	calc.c:237: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003B9B E5 08            [12] 3533 	mov	a,_bp
      003B9D 24 07            [12] 3534 	add	a,#0x07
      003B9F FF               [12] 3535 	mov	r7,a
      003BA0 7E 00            [12] 3536 	mov	r6,#0x00
      003BA2 7D 40            [12] 3537 	mov	r5,#0x40
      003BA4 E5 08            [12] 3538 	mov	a,_bp
      003BA6 24 04            [12] 3539 	add	a,#0x04
      003BA8 F8               [12] 3540 	mov	r0,a
      003BA9 74 0B            [12] 3541 	mov	a,#0x0b
      003BAB 26               [12] 3542 	add	a,@r0
      003BAC FA               [12] 3543 	mov	r2,a
      003BAD E4               [12] 3544 	clr	a
      003BAE 08               [12] 3545 	inc	r0
      003BAF 36               [12] 3546 	addc	a,@r0
      003BB0 FB               [12] 3547 	mov	r3,a
      003BB1 08               [12] 3548 	inc	r0
      003BB2 86 04            [24] 3549 	mov	ar4,@r0
      003BB4 C0 07            [24] 3550 	push	ar7
      003BB6 C0 06            [24] 3551 	push	ar6
      003BB8 C0 05            [24] 3552 	push	ar5
      003BBA 8A 82            [24] 3553 	mov	dpl,r2
      003BBC 8B 83            [24] 3554 	mov	dph,r3
      003BBE 8C F0            [24] 3555 	mov	b,r4
      003BC0 12 27 7F         [24] 3556 	lcall	_stack_pop
      003BC3 AE 82            [24] 3557 	mov	r6,dpl
      003BC5 AF 83            [24] 3558 	mov	r7,dph
      003BC7 15 81            [12] 3559 	dec	sp
      003BC9 15 81            [12] 3560 	dec	sp
      003BCB 15 81            [12] 3561 	dec	sp
      003BCD EE               [12] 3562 	mov	a,r6
      003BCE 4F               [12] 3563 	orl	a,r7
      003BCF 70 25            [24] 3564 	jnz	00176$
      003BD1 7D 95            [12] 3565 	mov	r5,#___str_2
      003BD3 7E 65            [12] 3566 	mov	r6,#(___str_2 >> 8)
      003BD5 7F 80            [12] 3567 	mov	r7,#0x80
                                   3568 ;	calc.c:50: return;
      003BD7                       3569 00317$:
                                   3570 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003BD7 8D 82            [24] 3571 	mov	dpl,r5
      003BD9 8E 83            [24] 3572 	mov	dph,r6
      003BDB 8F F0            [24] 3573 	mov	b,r7
      003BDD 12 4C FF         [24] 3574 	lcall	__gptrget
      003BE0 FC               [12] 3575 	mov	r4,a
      003BE1 70 03            [24] 3576 	jnz	00848$
      003BE3 02 3E B7         [24] 3577 	ljmp	00190$
      003BE6                       3578 00848$:
      003BE6 7B 00            [12] 3579 	mov	r3,#0x00
      003BE8 8C 82            [24] 3580 	mov	dpl,r4
      003BEA 8B 83            [24] 3581 	mov	dph,r3
      003BEC 12 29 C0         [24] 3582 	lcall	_putchar
      003BEF 0D               [12] 3583 	inc	r5
                                   3584 ;	calc.c:237: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003BF0 BD 00 E4         [24] 3585 	cjne	r5,#0x00,00317$
      003BF3 0E               [12] 3586 	inc	r6
      003BF4 80 E1            [24] 3587 	sjmp	00317$
      003BF6                       3588 00176$:
                                   3589 ;	calc.c:238: else if (!stack_pop(&ctx->s, &d1)) {
      003BF6 E5 08            [12] 3590 	mov	a,_bp
      003BF8 24 0B            [12] 3591 	add	a,#0x0b
      003BFA FF               [12] 3592 	mov	r7,a
      003BFB 7E 00            [12] 3593 	mov	r6,#0x00
      003BFD 7D 40            [12] 3594 	mov	r5,#0x40
      003BFF E5 08            [12] 3595 	mov	a,_bp
      003C01 24 04            [12] 3596 	add	a,#0x04
      003C03 F8               [12] 3597 	mov	r0,a
      003C04 74 0B            [12] 3598 	mov	a,#0x0b
      003C06 26               [12] 3599 	add	a,@r0
      003C07 FA               [12] 3600 	mov	r2,a
      003C08 E4               [12] 3601 	clr	a
      003C09 08               [12] 3602 	inc	r0
      003C0A 36               [12] 3603 	addc	a,@r0
      003C0B FB               [12] 3604 	mov	r3,a
      003C0C 08               [12] 3605 	inc	r0
      003C0D 86 04            [24] 3606 	mov	ar4,@r0
      003C0F C0 07            [24] 3607 	push	ar7
      003C11 C0 06            [24] 3608 	push	ar6
      003C13 C0 05            [24] 3609 	push	ar5
      003C15 8A 82            [24] 3610 	mov	dpl,r2
      003C17 8B 83            [24] 3611 	mov	dph,r3
      003C19 8C F0            [24] 3612 	mov	b,r4
      003C1B 12 27 7F         [24] 3613 	lcall	_stack_pop
      003C1E AE 82            [24] 3614 	mov	r6,dpl
      003C20 AF 83            [24] 3615 	mov	r7,dph
      003C22 15 81            [12] 3616 	dec	sp
      003C24 15 81            [12] 3617 	dec	sp
      003C26 15 81            [12] 3618 	dec	sp
      003C28 EE               [12] 3619 	mov	a,r6
      003C29 4F               [12] 3620 	orl	a,r7
      003C2A 70 58            [24] 3621 	jnz	00173$
                                   3622 ;	calc.c:239: (void)stack_push(&ctx->s, d0);
      003C2C E5 08            [12] 3623 	mov	a,_bp
      003C2E 24 04            [12] 3624 	add	a,#0x04
      003C30 F8               [12] 3625 	mov	r0,a
      003C31 74 0B            [12] 3626 	mov	a,#0x0b
      003C33 26               [12] 3627 	add	a,@r0
      003C34 FD               [12] 3628 	mov	r5,a
      003C35 E4               [12] 3629 	clr	a
      003C36 08               [12] 3630 	inc	r0
      003C37 36               [12] 3631 	addc	a,@r0
      003C38 FE               [12] 3632 	mov	r6,a
      003C39 08               [12] 3633 	inc	r0
      003C3A 86 07            [24] 3634 	mov	ar7,@r0
      003C3C E5 08            [12] 3635 	mov	a,_bp
      003C3E 24 07            [12] 3636 	add	a,#0x07
      003C40 F8               [12] 3637 	mov	r0,a
      003C41 E6               [12] 3638 	mov	a,@r0
      003C42 C0 E0            [24] 3639 	push	acc
      003C44 08               [12] 3640 	inc	r0
      003C45 E6               [12] 3641 	mov	a,@r0
      003C46 C0 E0            [24] 3642 	push	acc
      003C48 08               [12] 3643 	inc	r0
      003C49 E6               [12] 3644 	mov	a,@r0
      003C4A C0 E0            [24] 3645 	push	acc
      003C4C 08               [12] 3646 	inc	r0
      003C4D E6               [12] 3647 	mov	a,@r0
      003C4E C0 E0            [24] 3648 	push	acc
      003C50 8D 82            [24] 3649 	mov	dpl,r5
      003C52 8E 83            [24] 3650 	mov	dph,r6
      003C54 8F F0            [24] 3651 	mov	b,r7
      003C56 12 26 B5         [24] 3652 	lcall	_stack_push
      003C59 E5 81            [12] 3653 	mov	a,sp
      003C5B 24 FC            [12] 3654 	add	a,#0xfc
      003C5D F5 81            [12] 3655 	mov	sp,a
                                   3656 ;	calc.c:240: printstr("\r\nstack underflow\r\n");
      003C5F 7D 95            [12] 3657 	mov	r5,#___str_2
      003C61 7E 65            [12] 3658 	mov	r6,#(___str_2 >> 8)
      003C63 7F 80            [12] 3659 	mov	r7,#0x80
                                   3660 ;	calc.c:50: return;
      003C65                       3661 00320$:
                                   3662 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003C65 8D 82            [24] 3663 	mov	dpl,r5
      003C67 8E 83            [24] 3664 	mov	dph,r6
      003C69 8F F0            [24] 3665 	mov	b,r7
      003C6B 12 4C FF         [24] 3666 	lcall	__gptrget
      003C6E FC               [12] 3667 	mov	r4,a
      003C6F 70 03            [24] 3668 	jnz	00851$
      003C71 02 3E B7         [24] 3669 	ljmp	00190$
      003C74                       3670 00851$:
      003C74 7B 00            [12] 3671 	mov	r3,#0x00
      003C76 8C 82            [24] 3672 	mov	dpl,r4
      003C78 8B 83            [24] 3673 	mov	dph,r3
      003C7A 12 29 C0         [24] 3674 	lcall	_putchar
      003C7D 0D               [12] 3675 	inc	r5
                                   3676 ;	calc.c:240: printstr("\r\nstack underflow\r\n");
      003C7E BD 00 E4         [24] 3677 	cjne	r5,#0x00,00320$
      003C81 0E               [12] 3678 	inc	r6
      003C82 80 E1            [24] 3679 	sjmp	00320$
      003C84                       3680 00173$:
                                   3681 ;	calc.c:242: d1 |= d0;
      003C84 E5 08            [12] 3682 	mov	a,_bp
      003C86 24 0B            [12] 3683 	add	a,#0x0b
      003C88 F8               [12] 3684 	mov	r0,a
      003C89 E5 08            [12] 3685 	mov	a,_bp
      003C8B 24 07            [12] 3686 	add	a,#0x07
      003C8D F9               [12] 3687 	mov	r1,a
      003C8E E7               [12] 3688 	mov	a,@r1
      003C8F 46               [12] 3689 	orl	a,@r0
      003C90 F6               [12] 3690 	mov	@r0,a
      003C91 09               [12] 3691 	inc	r1
      003C92 E7               [12] 3692 	mov	a,@r1
      003C93 08               [12] 3693 	inc	r0
      003C94 46               [12] 3694 	orl	a,@r0
      003C95 F6               [12] 3695 	mov	@r0,a
      003C96 09               [12] 3696 	inc	r1
      003C97 E7               [12] 3697 	mov	a,@r1
      003C98 08               [12] 3698 	inc	r0
      003C99 46               [12] 3699 	orl	a,@r0
      003C9A F6               [12] 3700 	mov	@r0,a
      003C9B 09               [12] 3701 	inc	r1
      003C9C E7               [12] 3702 	mov	a,@r1
      003C9D 08               [12] 3703 	inc	r0
      003C9E 46               [12] 3704 	orl	a,@r0
      003C9F F6               [12] 3705 	mov	@r0,a
                                   3706 ;	calc.c:243: (void)stack_push(&ctx->s, d1);
      003CA0 E5 08            [12] 3707 	mov	a,_bp
      003CA2 24 04            [12] 3708 	add	a,#0x04
      003CA4 F8               [12] 3709 	mov	r0,a
      003CA5 74 0B            [12] 3710 	mov	a,#0x0b
      003CA7 26               [12] 3711 	add	a,@r0
      003CA8 FD               [12] 3712 	mov	r5,a
      003CA9 E4               [12] 3713 	clr	a
      003CAA 08               [12] 3714 	inc	r0
      003CAB 36               [12] 3715 	addc	a,@r0
      003CAC FE               [12] 3716 	mov	r6,a
      003CAD 08               [12] 3717 	inc	r0
      003CAE 86 07            [24] 3718 	mov	ar7,@r0
      003CB0 E5 08            [12] 3719 	mov	a,_bp
      003CB2 24 0B            [12] 3720 	add	a,#0x0b
      003CB4 F8               [12] 3721 	mov	r0,a
      003CB5 E6               [12] 3722 	mov	a,@r0
      003CB6 C0 E0            [24] 3723 	push	acc
      003CB8 08               [12] 3724 	inc	r0
      003CB9 E6               [12] 3725 	mov	a,@r0
      003CBA C0 E0            [24] 3726 	push	acc
      003CBC 08               [12] 3727 	inc	r0
      003CBD E6               [12] 3728 	mov	a,@r0
      003CBE C0 E0            [24] 3729 	push	acc
      003CC0 08               [12] 3730 	inc	r0
      003CC1 E6               [12] 3731 	mov	a,@r0
      003CC2 C0 E0            [24] 3732 	push	acc
      003CC4 8D 82            [24] 3733 	mov	dpl,r5
      003CC6 8E 83            [24] 3734 	mov	dph,r6
      003CC8 8F F0            [24] 3735 	mov	b,r7
      003CCA 12 26 B5         [24] 3736 	lcall	_stack_push
      003CCD E5 81            [12] 3737 	mov	a,sp
      003CCF 24 FC            [12] 3738 	add	a,#0xfc
      003CD1 F5 81            [12] 3739 	mov	sp,a
                                   3740 ;	calc.c:245: break;
      003CD3 02 3E B7         [24] 3741 	ljmp	00190$
                                   3742 ;	calc.c:246: case '^':
      003CD6                       3743 00178$:
                                   3744 ;	calc.c:247: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003CD6 E5 08            [12] 3745 	mov	a,_bp
      003CD8 24 07            [12] 3746 	add	a,#0x07
      003CDA FF               [12] 3747 	mov	r7,a
      003CDB 7E 00            [12] 3748 	mov	r6,#0x00
      003CDD 7D 40            [12] 3749 	mov	r5,#0x40
      003CDF E5 08            [12] 3750 	mov	a,_bp
      003CE1 24 04            [12] 3751 	add	a,#0x04
      003CE3 F8               [12] 3752 	mov	r0,a
      003CE4 74 0B            [12] 3753 	mov	a,#0x0b
      003CE6 26               [12] 3754 	add	a,@r0
      003CE7 FA               [12] 3755 	mov	r2,a
      003CE8 E4               [12] 3756 	clr	a
      003CE9 08               [12] 3757 	inc	r0
      003CEA 36               [12] 3758 	addc	a,@r0
      003CEB FB               [12] 3759 	mov	r3,a
      003CEC 08               [12] 3760 	inc	r0
      003CED 86 04            [24] 3761 	mov	ar4,@r0
      003CEF C0 07            [24] 3762 	push	ar7
      003CF1 C0 06            [24] 3763 	push	ar6
      003CF3 C0 05            [24] 3764 	push	ar5
      003CF5 8A 82            [24] 3765 	mov	dpl,r2
      003CF7 8B 83            [24] 3766 	mov	dph,r3
      003CF9 8C F0            [24] 3767 	mov	b,r4
      003CFB 12 27 7F         [24] 3768 	lcall	_stack_pop
      003CFE AE 82            [24] 3769 	mov	r6,dpl
      003D00 AF 83            [24] 3770 	mov	r7,dph
      003D02 15 81            [12] 3771 	dec	sp
      003D04 15 81            [12] 3772 	dec	sp
      003D06 15 81            [12] 3773 	dec	sp
      003D08 EE               [12] 3774 	mov	a,r6
      003D09 4F               [12] 3775 	orl	a,r7
      003D0A 70 25            [24] 3776 	jnz	00183$
      003D0C 7D 95            [12] 3777 	mov	r5,#___str_2
      003D0E 7E 65            [12] 3778 	mov	r6,#(___str_2 >> 8)
      003D10 7F 80            [12] 3779 	mov	r7,#0x80
                                   3780 ;	calc.c:50: return;
      003D12                       3781 00323$:
                                   3782 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003D12 8D 82            [24] 3783 	mov	dpl,r5
      003D14 8E 83            [24] 3784 	mov	dph,r6
      003D16 8F F0            [24] 3785 	mov	b,r7
      003D18 12 4C FF         [24] 3786 	lcall	__gptrget
      003D1B FC               [12] 3787 	mov	r4,a
      003D1C 70 03            [24] 3788 	jnz	00854$
      003D1E 02 3E B7         [24] 3789 	ljmp	00190$
      003D21                       3790 00854$:
      003D21 7B 00            [12] 3791 	mov	r3,#0x00
      003D23 8C 82            [24] 3792 	mov	dpl,r4
      003D25 8B 83            [24] 3793 	mov	dph,r3
      003D27 12 29 C0         [24] 3794 	lcall	_putchar
      003D2A 0D               [12] 3795 	inc	r5
                                   3796 ;	calc.c:247: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003D2B BD 00 E4         [24] 3797 	cjne	r5,#0x00,00323$
      003D2E 0E               [12] 3798 	inc	r6
      003D2F 80 E1            [24] 3799 	sjmp	00323$
      003D31                       3800 00183$:
                                   3801 ;	calc.c:248: else if (!stack_pop(&ctx->s, &d1)) {
      003D31 E5 08            [12] 3802 	mov	a,_bp
      003D33 24 0B            [12] 3803 	add	a,#0x0b
      003D35 FF               [12] 3804 	mov	r7,a
      003D36 7E 00            [12] 3805 	mov	r6,#0x00
      003D38 7D 40            [12] 3806 	mov	r5,#0x40
      003D3A E5 08            [12] 3807 	mov	a,_bp
      003D3C 24 04            [12] 3808 	add	a,#0x04
      003D3E F8               [12] 3809 	mov	r0,a
      003D3F 74 0B            [12] 3810 	mov	a,#0x0b
      003D41 26               [12] 3811 	add	a,@r0
      003D42 FA               [12] 3812 	mov	r2,a
      003D43 E4               [12] 3813 	clr	a
      003D44 08               [12] 3814 	inc	r0
      003D45 36               [12] 3815 	addc	a,@r0
      003D46 FB               [12] 3816 	mov	r3,a
      003D47 08               [12] 3817 	inc	r0
      003D48 86 04            [24] 3818 	mov	ar4,@r0
      003D4A C0 07            [24] 3819 	push	ar7
      003D4C C0 06            [24] 3820 	push	ar6
      003D4E C0 05            [24] 3821 	push	ar5
      003D50 8A 82            [24] 3822 	mov	dpl,r2
      003D52 8B 83            [24] 3823 	mov	dph,r3
      003D54 8C F0            [24] 3824 	mov	b,r4
      003D56 12 27 7F         [24] 3825 	lcall	_stack_pop
      003D59 AE 82            [24] 3826 	mov	r6,dpl
      003D5B AF 83            [24] 3827 	mov	r7,dph
      003D5D 15 81            [12] 3828 	dec	sp
      003D5F 15 81            [12] 3829 	dec	sp
      003D61 15 81            [12] 3830 	dec	sp
      003D63 EE               [12] 3831 	mov	a,r6
      003D64 4F               [12] 3832 	orl	a,r7
      003D65 70 58            [24] 3833 	jnz	00180$
                                   3834 ;	calc.c:249: (void)stack_push(&ctx->s, d0);
      003D67 E5 08            [12] 3835 	mov	a,_bp
      003D69 24 04            [12] 3836 	add	a,#0x04
      003D6B F8               [12] 3837 	mov	r0,a
      003D6C 74 0B            [12] 3838 	mov	a,#0x0b
      003D6E 26               [12] 3839 	add	a,@r0
      003D6F FD               [12] 3840 	mov	r5,a
      003D70 E4               [12] 3841 	clr	a
      003D71 08               [12] 3842 	inc	r0
      003D72 36               [12] 3843 	addc	a,@r0
      003D73 FE               [12] 3844 	mov	r6,a
      003D74 08               [12] 3845 	inc	r0
      003D75 86 07            [24] 3846 	mov	ar7,@r0
      003D77 E5 08            [12] 3847 	mov	a,_bp
      003D79 24 07            [12] 3848 	add	a,#0x07
      003D7B F8               [12] 3849 	mov	r0,a
      003D7C E6               [12] 3850 	mov	a,@r0
      003D7D C0 E0            [24] 3851 	push	acc
      003D7F 08               [12] 3852 	inc	r0
      003D80 E6               [12] 3853 	mov	a,@r0
      003D81 C0 E0            [24] 3854 	push	acc
      003D83 08               [12] 3855 	inc	r0
      003D84 E6               [12] 3856 	mov	a,@r0
      003D85 C0 E0            [24] 3857 	push	acc
      003D87 08               [12] 3858 	inc	r0
      003D88 E6               [12] 3859 	mov	a,@r0
      003D89 C0 E0            [24] 3860 	push	acc
      003D8B 8D 82            [24] 3861 	mov	dpl,r5
      003D8D 8E 83            [24] 3862 	mov	dph,r6
      003D8F 8F F0            [24] 3863 	mov	b,r7
      003D91 12 26 B5         [24] 3864 	lcall	_stack_push
      003D94 E5 81            [12] 3865 	mov	a,sp
      003D96 24 FC            [12] 3866 	add	a,#0xfc
      003D98 F5 81            [12] 3867 	mov	sp,a
                                   3868 ;	calc.c:250: printstr("\r\nstack underflow\r\n");
      003D9A 7D 95            [12] 3869 	mov	r5,#___str_2
      003D9C 7E 65            [12] 3870 	mov	r6,#(___str_2 >> 8)
      003D9E 7F 80            [12] 3871 	mov	r7,#0x80
                                   3872 ;	calc.c:50: return;
      003DA0                       3873 00326$:
                                   3874 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003DA0 8D 82            [24] 3875 	mov	dpl,r5
      003DA2 8E 83            [24] 3876 	mov	dph,r6
      003DA4 8F F0            [24] 3877 	mov	b,r7
      003DA6 12 4C FF         [24] 3878 	lcall	__gptrget
      003DA9 FC               [12] 3879 	mov	r4,a
      003DAA 70 03            [24] 3880 	jnz	00857$
      003DAC 02 3E B7         [24] 3881 	ljmp	00190$
      003DAF                       3882 00857$:
      003DAF 7B 00            [12] 3883 	mov	r3,#0x00
      003DB1 8C 82            [24] 3884 	mov	dpl,r4
      003DB3 8B 83            [24] 3885 	mov	dph,r3
      003DB5 12 29 C0         [24] 3886 	lcall	_putchar
      003DB8 0D               [12] 3887 	inc	r5
                                   3888 ;	calc.c:250: printstr("\r\nstack underflow\r\n");
      003DB9 BD 00 E4         [24] 3889 	cjne	r5,#0x00,00326$
      003DBC 0E               [12] 3890 	inc	r6
      003DBD 80 E1            [24] 3891 	sjmp	00326$
      003DBF                       3892 00180$:
                                   3893 ;	calc.c:252: d1 ^= d0;
      003DBF E5 08            [12] 3894 	mov	a,_bp
      003DC1 24 0B            [12] 3895 	add	a,#0x0b
      003DC3 F8               [12] 3896 	mov	r0,a
      003DC4 E5 08            [12] 3897 	mov	a,_bp
      003DC6 24 07            [12] 3898 	add	a,#0x07
      003DC8 F9               [12] 3899 	mov	r1,a
      003DC9 E7               [12] 3900 	mov	a,@r1
      003DCA 66               [12] 3901 	xrl	a,@r0
      003DCB F6               [12] 3902 	mov	@r0,a
      003DCC 09               [12] 3903 	inc	r1
      003DCD E7               [12] 3904 	mov	a,@r1
      003DCE 08               [12] 3905 	inc	r0
      003DCF 66               [12] 3906 	xrl	a,@r0
      003DD0 F6               [12] 3907 	mov	@r0,a
      003DD1 09               [12] 3908 	inc	r1
      003DD2 E7               [12] 3909 	mov	a,@r1
      003DD3 08               [12] 3910 	inc	r0
      003DD4 66               [12] 3911 	xrl	a,@r0
      003DD5 F6               [12] 3912 	mov	@r0,a
      003DD6 09               [12] 3913 	inc	r1
      003DD7 E7               [12] 3914 	mov	a,@r1
      003DD8 08               [12] 3915 	inc	r0
      003DD9 66               [12] 3916 	xrl	a,@r0
      003DDA F6               [12] 3917 	mov	@r0,a
                                   3918 ;	calc.c:253: (void)stack_push(&ctx->s, d1);
      003DDB E5 08            [12] 3919 	mov	a,_bp
      003DDD 24 04            [12] 3920 	add	a,#0x04
      003DDF F8               [12] 3921 	mov	r0,a
      003DE0 74 0B            [12] 3922 	mov	a,#0x0b
      003DE2 26               [12] 3923 	add	a,@r0
      003DE3 FD               [12] 3924 	mov	r5,a
      003DE4 E4               [12] 3925 	clr	a
      003DE5 08               [12] 3926 	inc	r0
      003DE6 36               [12] 3927 	addc	a,@r0
      003DE7 FE               [12] 3928 	mov	r6,a
      003DE8 08               [12] 3929 	inc	r0
      003DE9 86 07            [24] 3930 	mov	ar7,@r0
      003DEB E5 08            [12] 3931 	mov	a,_bp
      003DED 24 0B            [12] 3932 	add	a,#0x0b
      003DEF F8               [12] 3933 	mov	r0,a
      003DF0 E6               [12] 3934 	mov	a,@r0
      003DF1 C0 E0            [24] 3935 	push	acc
      003DF3 08               [12] 3936 	inc	r0
      003DF4 E6               [12] 3937 	mov	a,@r0
      003DF5 C0 E0            [24] 3938 	push	acc
      003DF7 08               [12] 3939 	inc	r0
      003DF8 E6               [12] 3940 	mov	a,@r0
      003DF9 C0 E0            [24] 3941 	push	acc
      003DFB 08               [12] 3942 	inc	r0
      003DFC E6               [12] 3943 	mov	a,@r0
      003DFD C0 E0            [24] 3944 	push	acc
      003DFF 8D 82            [24] 3945 	mov	dpl,r5
      003E01 8E 83            [24] 3946 	mov	dph,r6
      003E03 8F F0            [24] 3947 	mov	b,r7
      003E05 12 26 B5         [24] 3948 	lcall	_stack_push
      003E08 E5 81            [12] 3949 	mov	a,sp
      003E0A 24 FC            [12] 3950 	add	a,#0xfc
      003E0C F5 81            [12] 3951 	mov	sp,a
                                   3952 ;	calc.c:255: break;
      003E0E 02 3E B7         [24] 3953 	ljmp	00190$
                                   3954 ;	calc.c:256: case '~':
      003E11                       3955 00185$:
                                   3956 ;	calc.c:257: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003E11 E5 08            [12] 3957 	mov	a,_bp
      003E13 24 07            [12] 3958 	add	a,#0x07
      003E15 FF               [12] 3959 	mov	r7,a
      003E16 7E 00            [12] 3960 	mov	r6,#0x00
      003E18 7D 40            [12] 3961 	mov	r5,#0x40
      003E1A E5 08            [12] 3962 	mov	a,_bp
      003E1C 24 04            [12] 3963 	add	a,#0x04
      003E1E F8               [12] 3964 	mov	r0,a
      003E1F 74 0B            [12] 3965 	mov	a,#0x0b
      003E21 26               [12] 3966 	add	a,@r0
      003E22 FA               [12] 3967 	mov	r2,a
      003E23 E4               [12] 3968 	clr	a
      003E24 08               [12] 3969 	inc	r0
      003E25 36               [12] 3970 	addc	a,@r0
      003E26 FB               [12] 3971 	mov	r3,a
      003E27 08               [12] 3972 	inc	r0
      003E28 86 04            [24] 3973 	mov	ar4,@r0
      003E2A C0 07            [24] 3974 	push	ar7
      003E2C C0 06            [24] 3975 	push	ar6
      003E2E C0 05            [24] 3976 	push	ar5
      003E30 8A 82            [24] 3977 	mov	dpl,r2
      003E32 8B 83            [24] 3978 	mov	dph,r3
      003E34 8C F0            [24] 3979 	mov	b,r4
      003E36 12 27 7F         [24] 3980 	lcall	_stack_pop
      003E39 AE 82            [24] 3981 	mov	r6,dpl
      003E3B AF 83            [24] 3982 	mov	r7,dph
      003E3D 15 81            [12] 3983 	dec	sp
      003E3F 15 81            [12] 3984 	dec	sp
      003E41 15 81            [12] 3985 	dec	sp
      003E43 EE               [12] 3986 	mov	a,r6
      003E44 4F               [12] 3987 	orl	a,r7
      003E45 70 22            [24] 3988 	jnz	00187$
      003E47 7D 95            [12] 3989 	mov	r5,#___str_2
      003E49 7E 65            [12] 3990 	mov	r6,#(___str_2 >> 8)
      003E4B 7F 80            [12] 3991 	mov	r7,#0x80
                                   3992 ;	calc.c:50: return;
      003E4D                       3993 00329$:
                                   3994 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003E4D 8D 82            [24] 3995 	mov	dpl,r5
      003E4F 8E 83            [24] 3996 	mov	dph,r6
      003E51 8F F0            [24] 3997 	mov	b,r7
      003E53 12 4C FF         [24] 3998 	lcall	__gptrget
      003E56 FC               [12] 3999 	mov	r4,a
      003E57 60 5E            [24] 4000 	jz	00190$
      003E59 7B 00            [12] 4001 	mov	r3,#0x00
      003E5B 8C 82            [24] 4002 	mov	dpl,r4
      003E5D 8B 83            [24] 4003 	mov	dph,r3
      003E5F 12 29 C0         [24] 4004 	lcall	_putchar
      003E62 0D               [12] 4005 	inc	r5
                                   4006 ;	calc.c:257: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003E63 BD 00 E7         [24] 4007 	cjne	r5,#0x00,00329$
      003E66 0E               [12] 4008 	inc	r6
      003E67 80 E4            [24] 4009 	sjmp	00329$
      003E69                       4010 00187$:
                                   4011 ;	calc.c:259: d0 = ~d0;
      003E69 E5 08            [12] 4012 	mov	a,_bp
      003E6B 24 07            [12] 4013 	add	a,#0x07
      003E6D F8               [12] 4014 	mov	r0,a
      003E6E E6               [12] 4015 	mov	a,@r0
      003E6F F4               [12] 4016 	cpl	a
      003E70 F6               [12] 4017 	mov	@r0,a
      003E71 08               [12] 4018 	inc	r0
      003E72 E6               [12] 4019 	mov	a,@r0
      003E73 F4               [12] 4020 	cpl	a
      003E74 F6               [12] 4021 	mov	@r0,a
      003E75 08               [12] 4022 	inc	r0
      003E76 E6               [12] 4023 	mov	a,@r0
      003E77 F4               [12] 4024 	cpl	a
      003E78 F6               [12] 4025 	mov	@r0,a
      003E79 08               [12] 4026 	inc	r0
      003E7A E6               [12] 4027 	mov	a,@r0
      003E7B F4               [12] 4028 	cpl	a
      003E7C F6               [12] 4029 	mov	@r0,a
                                   4030 ;	calc.c:260: (void)stack_push(&ctx->s, d0);
      003E7D E5 08            [12] 4031 	mov	a,_bp
      003E7F 24 04            [12] 4032 	add	a,#0x04
      003E81 F8               [12] 4033 	mov	r0,a
      003E82 74 0B            [12] 4034 	mov	a,#0x0b
      003E84 26               [12] 4035 	add	a,@r0
      003E85 FD               [12] 4036 	mov	r5,a
      003E86 E4               [12] 4037 	clr	a
      003E87 08               [12] 4038 	inc	r0
      003E88 36               [12] 4039 	addc	a,@r0
      003E89 FE               [12] 4040 	mov	r6,a
      003E8A 08               [12] 4041 	inc	r0
      003E8B 86 07            [24] 4042 	mov	ar7,@r0
      003E8D E5 08            [12] 4043 	mov	a,_bp
      003E8F 24 07            [12] 4044 	add	a,#0x07
      003E91 F8               [12] 4045 	mov	r0,a
      003E92 E6               [12] 4046 	mov	a,@r0
      003E93 C0 E0            [24] 4047 	push	acc
      003E95 08               [12] 4048 	inc	r0
      003E96 E6               [12] 4049 	mov	a,@r0
      003E97 C0 E0            [24] 4050 	push	acc
      003E99 08               [12] 4051 	inc	r0
      003E9A E6               [12] 4052 	mov	a,@r0
      003E9B C0 E0            [24] 4053 	push	acc
      003E9D 08               [12] 4054 	inc	r0
      003E9E E6               [12] 4055 	mov	a,@r0
      003E9F C0 E0            [24] 4056 	push	acc
      003EA1 8D 82            [24] 4057 	mov	dpl,r5
      003EA3 8E 83            [24] 4058 	mov	dph,r6
      003EA5 8F F0            [24] 4059 	mov	b,r7
      003EA7 12 26 B5         [24] 4060 	lcall	_stack_push
      003EAA E5 81            [12] 4061 	mov	a,sp
      003EAC 24 FC            [12] 4062 	add	a,#0xfc
      003EAE F5 81            [12] 4063 	mov	sp,a
                                   4064 ;	calc.c:262: break;
                                   4065 ;	calc.c:263: default:
      003EB0 80 05            [24] 4066 	sjmp	00190$
      003EB2                       4067 00189$:
                                   4068 ;	calc.c:264: return UNDEF;
      003EB2 90 80 00         [24] 4069 	mov	dptr,#0x8000
                                   4070 ;	calc.c:265: }
      003EB5 80 03            [24] 4071 	sjmp	00331$
      003EB7                       4072 00190$:
                                   4073 ;	calc.c:267: return 1;
      003EB7 90 00 01         [24] 4074 	mov	dptr,#0x0001
      003EBA                       4075 00331$:
                                   4076 ;	calc.c:268: }
      003EBA 85 08 81         [24] 4077 	mov	sp,_bp
      003EBD D0 08            [24] 4078 	pop	_bp
      003EBF 22               [24] 4079 	ret
                                   4080 ;------------------------------------------------------------
                                   4081 ;Allocation info for local variables in function 'push_acc'
                                   4082 ;------------------------------------------------------------
                                   4083 ;delta                     Allocated to stack - _bp -5
                                   4084 ;_ctx                      Allocated to stack - _bp +1
                                   4085 ;ctx                       Allocated to registers r2 r3 r4 
                                   4086 ;__1310720061              Allocated to registers 
                                   4087 ;s                         Allocated to registers r5 r6 r7 
                                   4088 ;sloc0                     Allocated to stack - _bp +4
                                   4089 ;------------------------------------------------------------
                                   4090 ;	calc.c:270: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   4091 ;	-----------------------------------------
                                   4092 ;	 function push_acc
                                   4093 ;	-----------------------------------------
      003EC0                       4094 _push_acc:
      003EC0 C0 08            [24] 4095 	push	_bp
      003EC2 85 81 08         [24] 4096 	mov	_bp,sp
      003EC5 C0 82            [24] 4097 	push	dpl
      003EC7 C0 83            [24] 4098 	push	dph
      003EC9 C0 F0            [24] 4099 	push	b
      003ECB E5 81            [12] 4100 	mov	a,sp
      003ECD 24 04            [12] 4101 	add	a,#0x04
      003ECF F5 81            [12] 4102 	mov	sp,a
                                   4103 ;	calc.c:271: struct ctx *ctx = (struct ctx *)_ctx;
      003ED1 A8 08            [24] 4104 	mov	r0,_bp
      003ED3 08               [12] 4105 	inc	r0
      003ED4 86 02            [24] 4106 	mov	ar2,@r0
      003ED6 08               [12] 4107 	inc	r0
      003ED7 86 03            [24] 4108 	mov	ar3,@r0
      003ED9 08               [12] 4109 	inc	r0
      003EDA 86 04            [24] 4110 	mov	ar4,@r0
                                   4111 ;	calc.c:274: ctx->acc_valid = 0;
      003EDC 74 08            [12] 4112 	mov	a,#0x08
      003EDE 2A               [12] 4113 	add	a,r2
      003EDF FD               [12] 4114 	mov	r5,a
      003EE0 E4               [12] 4115 	clr	a
      003EE1 3B               [12] 4116 	addc	a,r3
      003EE2 FE               [12] 4117 	mov	r6,a
      003EE3 8C 07            [24] 4118 	mov	ar7,r4
      003EE5 8D 82            [24] 4119 	mov	dpl,r5
      003EE7 8E 83            [24] 4120 	mov	dph,r6
      003EE9 8F F0            [24] 4121 	mov	b,r7
      003EEB E4               [12] 4122 	clr	a
      003EEC 12 48 84         [24] 4123 	lcall	__gptrput
                                   4124 ;	calc.c:275: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
      003EEF 74 04            [12] 4125 	mov	a,#0x04
      003EF1 2A               [12] 4126 	add	a,r2
      003EF2 FF               [12] 4127 	mov	r7,a
      003EF3 E4               [12] 4128 	clr	a
      003EF4 3B               [12] 4129 	addc	a,r3
      003EF5 FD               [12] 4130 	mov	r5,a
      003EF6 8C 06            [24] 4131 	mov	ar6,r4
      003EF8 8F 82            [24] 4132 	mov	dpl,r7
      003EFA 8D 83            [24] 4133 	mov	dph,r5
      003EFC 8E F0            [24] 4134 	mov	b,r6
      003EFE E5 08            [12] 4135 	mov	a,_bp
      003F00 24 04            [12] 4136 	add	a,#0x04
      003F02 F8               [12] 4137 	mov	r0,a
      003F03 12 4C FF         [24] 4138 	lcall	__gptrget
      003F06 F6               [12] 4139 	mov	@r0,a
      003F07 A3               [24] 4140 	inc	dptr
      003F08 12 4C FF         [24] 4141 	lcall	__gptrget
      003F0B 08               [12] 4142 	inc	r0
      003F0C F6               [12] 4143 	mov	@r0,a
      003F0D A3               [24] 4144 	inc	dptr
      003F0E 12 4C FF         [24] 4145 	lcall	__gptrget
      003F11 08               [12] 4146 	inc	r0
      003F12 F6               [12] 4147 	mov	@r0,a
      003F13 A3               [24] 4148 	inc	dptr
      003F14 12 4C FF         [24] 4149 	lcall	__gptrget
      003F17 08               [12] 4150 	inc	r0
      003F18 F6               [12] 4151 	mov	@r0,a
      003F19 74 0B            [12] 4152 	mov	a,#0x0b
      003F1B 2A               [12] 4153 	add	a,r2
      003F1C FA               [12] 4154 	mov	r2,a
      003F1D E4               [12] 4155 	clr	a
      003F1E 3B               [12] 4156 	addc	a,r3
      003F1F FB               [12] 4157 	mov	r3,a
      003F20 8C 07            [24] 4158 	mov	ar7,r4
      003F22 E5 08            [12] 4159 	mov	a,_bp
      003F24 24 04            [12] 4160 	add	a,#0x04
      003F26 F8               [12] 4161 	mov	r0,a
      003F27 E6               [12] 4162 	mov	a,@r0
      003F28 C0 E0            [24] 4163 	push	acc
      003F2A 08               [12] 4164 	inc	r0
      003F2B E6               [12] 4165 	mov	a,@r0
      003F2C C0 E0            [24] 4166 	push	acc
      003F2E 08               [12] 4167 	inc	r0
      003F2F E6               [12] 4168 	mov	a,@r0
      003F30 C0 E0            [24] 4169 	push	acc
      003F32 08               [12] 4170 	inc	r0
      003F33 E6               [12] 4171 	mov	a,@r0
      003F34 C0 E0            [24] 4172 	push	acc
      003F36 8A 82            [24] 4173 	mov	dpl,r2
      003F38 8B 83            [24] 4174 	mov	dph,r3
      003F3A 8F F0            [24] 4175 	mov	b,r7
      003F3C 12 26 B5         [24] 4176 	lcall	_stack_push
      003F3F AE 82            [24] 4177 	mov	r6,dpl
      003F41 AF 83            [24] 4178 	mov	r7,dph
      003F43 E5 81            [12] 4179 	mov	a,sp
      003F45 24 FC            [12] 4180 	add	a,#0xfc
      003F47 F5 81            [12] 4181 	mov	sp,a
      003F49 EE               [12] 4182 	mov	a,r6
      003F4A 4F               [12] 4183 	orl	a,r7
      003F4B 70 22            [24] 4184 	jnz	00102$
      003F4D 7D BE            [12] 4185 	mov	r5,#___str_4
      003F4F 7E 65            [12] 4186 	mov	r6,#(___str_4 >> 8)
      003F51 7F 80            [12] 4187 	mov	r7,#0x80
                                   4188 ;	calc.c:50: return;
      003F53                       4189 00109$:
                                   4190 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003F53 8D 82            [24] 4191 	mov	dpl,r5
      003F55 8E 83            [24] 4192 	mov	dph,r6
      003F57 8F F0            [24] 4193 	mov	b,r7
      003F59 12 4C FF         [24] 4194 	lcall	__gptrget
      003F5C FC               [12] 4195 	mov	r4,a
      003F5D 60 10            [24] 4196 	jz	00102$
      003F5F 7B 00            [12] 4197 	mov	r3,#0x00
      003F61 8C 82            [24] 4198 	mov	dpl,r4
      003F63 8B 83            [24] 4199 	mov	dph,r3
      003F65 12 29 C0         [24] 4200 	lcall	_putchar
      003F68 0D               [12] 4201 	inc	r5
                                   4202 ;	calc.c:275: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
      003F69 BD 00 E7         [24] 4203 	cjne	r5,#0x00,00109$
      003F6C 0E               [12] 4204 	inc	r6
      003F6D 80 E4            [24] 4205 	sjmp	00109$
      003F6F                       4206 00102$:
                                   4207 ;	calc.c:277: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      003F6F E5 08            [12] 4208 	mov	a,_bp
      003F71 24 FB            [12] 4209 	add	a,#0xfb
      003F73 F8               [12] 4210 	mov	r0,a
      003F74 86 05            [24] 4211 	mov	ar5,@r0
      003F76 08               [12] 4212 	inc	r0
      003F77 86 06            [24] 4213 	mov	ar6,@r0
      003F79 08               [12] 4214 	inc	r0
      003F7A 86 07            [24] 4215 	mov	ar7,@r0
      003F7C 74 02            [12] 4216 	mov	a,#0x02
      003F7E 2D               [12] 4217 	add	a,r5
      003F7F FA               [12] 4218 	mov	r2,a
      003F80 E4               [12] 4219 	clr	a
      003F81 3E               [12] 4220 	addc	a,r6
      003F82 FB               [12] 4221 	mov	r3,a
      003F83 8F 04            [24] 4222 	mov	ar4,r7
      003F85 8A 82            [24] 4223 	mov	dpl,r2
      003F87 8B 83            [24] 4224 	mov	dph,r3
      003F89 8C F0            [24] 4225 	mov	b,r4
      003F8B 12 4C FF         [24] 4226 	lcall	__gptrget
      003F8E FA               [12] 4227 	mov	r2,a
      003F8F A3               [24] 4228 	inc	dptr
      003F90 12 4C FF         [24] 4229 	lcall	__gptrget
      003F93 FB               [12] 4230 	mov	r3,a
      003F94 BA 02 27         [24] 4231 	cjne	r2,#0x02,00104$
      003F97 BB 00 24         [24] 4232 	cjne	r3,#0x00,00104$
      003F9A C0 05            [24] 4233 	push	ar5
      003F9C C0 06            [24] 4234 	push	ar6
      003F9E C0 07            [24] 4235 	push	ar7
      003FA0 A8 08            [24] 4236 	mov	r0,_bp
      003FA2 08               [12] 4237 	inc	r0
      003FA3 86 82            [24] 4238 	mov	dpl,@r0
      003FA5 08               [12] 4239 	inc	r0
      003FA6 86 83            [24] 4240 	mov	dph,@r0
      003FA8 08               [12] 4241 	inc	r0
      003FA9 86 F0            [24] 4242 	mov	b,@r0
      003FAB 12 2D AF         [24] 4243 	lcall	_operator
      003FAE AE 82            [24] 4244 	mov	r6,dpl
      003FB0 AF 83            [24] 4245 	mov	r7,dph
      003FB2 15 81            [12] 4246 	dec	sp
      003FB4 15 81            [12] 4247 	dec	sp
      003FB6 15 81            [12] 4248 	dec	sp
      003FB8 8E 82            [24] 4249 	mov	dpl,r6
      003FBA 8F 83            [24] 4250 	mov	dph,r7
      003FBC 80 03            [24] 4251 	sjmp	00111$
      003FBE                       4252 00104$:
                                   4253 ;	calc.c:278: else return 1;
      003FBE 90 00 01         [24] 4254 	mov	dptr,#0x0001
      003FC1                       4255 00111$:
                                   4256 ;	calc.c:279: }
      003FC1 85 08 81         [24] 4257 	mov	sp,_bp
      003FC4 D0 08            [24] 4258 	pop	_bp
      003FC6 22               [24] 4259 	ret
                                   4260 ;------------------------------------------------------------
                                   4261 ;Allocation info for local variables in function 'reset_acc'
                                   4262 ;------------------------------------------------------------
                                   4263 ;delta                     Allocated to stack - _bp -5
                                   4264 ;_ctx                      Allocated to registers r5 r6 r7 
                                   4265 ;ctx                       Allocated to registers r5 r6 r7 
                                   4266 ;------------------------------------------------------------
                                   4267 ;	calc.c:281: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   4268 ;	-----------------------------------------
                                   4269 ;	 function reset_acc
                                   4270 ;	-----------------------------------------
      003FC7                       4271 _reset_acc:
      003FC7 C0 08            [24] 4272 	push	_bp
      003FC9 85 81 08         [24] 4273 	mov	_bp,sp
      003FCC AD 82            [24] 4274 	mov	r5,dpl
      003FCE AE 83            [24] 4275 	mov	r6,dph
      003FD0 AF F0            [24] 4276 	mov	r7,b
                                   4277 ;	calc.c:282: struct ctx *ctx = (struct ctx *)_ctx;
                                   4278 ;	calc.c:284: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      003FD2 E5 08            [12] 4279 	mov	a,_bp
      003FD4 24 FB            [12] 4280 	add	a,#0xfb
      003FD6 F8               [12] 4281 	mov	r0,a
      003FD7 86 02            [24] 4282 	mov	ar2,@r0
      003FD9 08               [12] 4283 	inc	r0
      003FDA 86 03            [24] 4284 	mov	ar3,@r0
      003FDC 08               [12] 4285 	inc	r0
      003FDD 86 04            [24] 4286 	mov	ar4,@r0
      003FDF 74 02            [12] 4287 	mov	a,#0x02
      003FE1 2A               [12] 4288 	add	a,r2
      003FE2 FA               [12] 4289 	mov	r2,a
      003FE3 E4               [12] 4290 	clr	a
      003FE4 3B               [12] 4291 	addc	a,r3
      003FE5 FB               [12] 4292 	mov	r3,a
      003FE6 8A 82            [24] 4293 	mov	dpl,r2
      003FE8 8B 83            [24] 4294 	mov	dph,r3
      003FEA 8C F0            [24] 4295 	mov	b,r4
      003FEC 12 4C FF         [24] 4296 	lcall	__gptrget
      003FEF FA               [12] 4297 	mov	r2,a
      003FF0 A3               [24] 4298 	inc	dptr
      003FF1 12 4C FF         [24] 4299 	lcall	__gptrget
      003FF4 FB               [12] 4300 	mov	r3,a
      003FF5 BA 05 16         [24] 4301 	cjne	r2,#0x05,00102$
      003FF8 BB 00 13         [24] 4302 	cjne	r3,#0x00,00102$
      003FFB 74 08            [12] 4303 	mov	a,#0x08
      003FFD 2D               [12] 4304 	add	a,r5
      003FFE FA               [12] 4305 	mov	r2,a
      003FFF E4               [12] 4306 	clr	a
      004000 3E               [12] 4307 	addc	a,r6
      004001 FB               [12] 4308 	mov	r3,a
      004002 8F 04            [24] 4309 	mov	ar4,r7
      004004 8A 82            [24] 4310 	mov	dpl,r2
      004006 8B 83            [24] 4311 	mov	dph,r3
      004008 8C F0            [24] 4312 	mov	b,r4
      00400A E4               [12] 4313 	clr	a
      00400B 12 48 84         [24] 4314 	lcall	__gptrput
      00400E                       4315 00102$:
                                   4316 ;	calc.c:285: ctx->acc = 0l;
      00400E 74 04            [12] 4317 	mov	a,#0x04
      004010 2D               [12] 4318 	add	a,r5
      004011 FD               [12] 4319 	mov	r5,a
      004012 E4               [12] 4320 	clr	a
      004013 3E               [12] 4321 	addc	a,r6
      004014 FE               [12] 4322 	mov	r6,a
      004015 8D 82            [24] 4323 	mov	dpl,r5
      004017 8E 83            [24] 4324 	mov	dph,r6
      004019 8F F0            [24] 4325 	mov	b,r7
      00401B E4               [12] 4326 	clr	a
      00401C 12 48 84         [24] 4327 	lcall	__gptrput
      00401F A3               [24] 4328 	inc	dptr
      004020 12 48 84         [24] 4329 	lcall	__gptrput
      004023 A3               [24] 4330 	inc	dptr
      004024 12 48 84         [24] 4331 	lcall	__gptrput
      004027 A3               [24] 4332 	inc	dptr
      004028 12 48 84         [24] 4333 	lcall	__gptrput
                                   4334 ;	calc.c:287: return 1;
      00402B 90 00 01         [24] 4335 	mov	dptr,#0x0001
                                   4336 ;	calc.c:288: }
      00402E D0 08            [24] 4337 	pop	_bp
      004030 22               [24] 4338 	ret
                                   4339 ;------------------------------------------------------------
                                   4340 ;Allocation info for local variables in function 'help'
                                   4341 ;------------------------------------------------------------
                                   4342 ;delta                     Allocated to stack - _bp -5
                                   4343 ;_ctx                      Allocated to registers r5 r6 r7 
                                   4344 ;ctx                       Allocated to stack - _bp +7
                                   4345 ;__1310720063              Allocated to registers 
                                   4346 ;s                         Allocated to registers r5 r6 r7 
                                   4347 ;__1310720065              Allocated to registers 
                                   4348 ;s                         Allocated to registers r5 r6 r7 
                                   4349 ;__1310720067              Allocated to registers 
                                   4350 ;s                         Allocated to registers r5 r6 r7 
                                   4351 ;__1310720069              Allocated to registers 
                                   4352 ;s                         Allocated to registers r5 r6 r7 
                                   4353 ;__1310720071              Allocated to registers 
                                   4354 ;s                         Allocated to registers r5 r6 r7 
                                   4355 ;__1310720073              Allocated to registers 
                                   4356 ;s                         Allocated to registers r5 r6 r7 
                                   4357 ;__1310720075              Allocated to registers 
                                   4358 ;s                         Allocated to registers r5 r6 r7 
                                   4359 ;__1310720077              Allocated to registers 
                                   4360 ;s                         Allocated to registers r5 r6 r7 
                                   4361 ;__1310720079              Allocated to registers 
                                   4362 ;s                         Allocated to registers r5 r6 r7 
                                   4363 ;__1310720081              Allocated to registers 
                                   4364 ;s                         Allocated to registers r5 r6 r7 
                                   4365 ;__1310720083              Allocated to registers 
                                   4366 ;s                         Allocated to registers r5 r6 r7 
                                   4367 ;__1310720085              Allocated to registers 
                                   4368 ;s                         Allocated to registers r5 r6 r7 
                                   4369 ;__1310720087              Allocated to registers 
                                   4370 ;s                         Allocated to registers r5 r6 r7 
                                   4371 ;__1310720089              Allocated to registers 
                                   4372 ;s                         Allocated to registers r5 r6 r7 
                                   4373 ;__1310720091              Allocated to registers 
                                   4374 ;s                         Allocated to registers r5 r6 r7 
                                   4375 ;__1310720093              Allocated to registers 
                                   4376 ;s                         Allocated to registers r5 r6 r7 
                                   4377 ;__1310720095              Allocated to registers 
                                   4378 ;s                         Allocated to registers r5 r6 r7 
                                   4379 ;__1310720097              Allocated to registers 
                                   4380 ;s                         Allocated to registers r5 r6 r7 
                                   4381 ;__1310720099              Allocated to registers 
                                   4382 ;s                         Allocated to registers r5 r6 r7 
                                   4383 ;__1310720101              Allocated to registers 
                                   4384 ;s                         Allocated to registers r5 r6 r7 
                                   4385 ;sloc0                     Allocated to stack - _bp +1
                                   4386 ;sloc1                     Allocated to stack - _bp +3
                                   4387 ;------------------------------------------------------------
                                   4388 ;	calc.c:290: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   4389 ;	-----------------------------------------
                                   4390 ;	 function help
                                   4391 ;	-----------------------------------------
      004031                       4392 _help:
      004031 C0 08            [24] 4393 	push	_bp
      004033 E5 81            [12] 4394 	mov	a,sp
      004035 F5 08            [12] 4395 	mov	_bp,a
      004037 24 09            [12] 4396 	add	a,#0x09
      004039 F5 81            [12] 4397 	mov	sp,a
      00403B AD 82            [24] 4398 	mov	r5,dpl
      00403D AE 83            [24] 4399 	mov	r6,dph
      00403F AF F0            [24] 4400 	mov	r7,b
                                   4401 ;	calc.c:291: struct ctx *ctx = (struct ctx *)_ctx;
      004041 E5 08            [12] 4402 	mov	a,_bp
      004043 24 07            [12] 4403 	add	a,#0x07
      004045 F8               [12] 4404 	mov	r0,a
      004046 A6 05            [24] 4405 	mov	@r0,ar5
      004048 08               [12] 4406 	inc	r0
      004049 A6 06            [24] 4407 	mov	@r0,ar6
      00404B 08               [12] 4408 	inc	r0
      00404C A6 07            [24] 4409 	mov	@r0,ar7
                                   4410 ;	calc.c:295: ctx->base, ctx->acc, ctx->acc, (int)ctx->acc_valid);
      00404E E5 08            [12] 4411 	mov	a,_bp
      004050 24 07            [12] 4412 	add	a,#0x07
      004052 F8               [12] 4413 	mov	r0,a
      004053 74 08            [12] 4414 	mov	a,#0x08
      004055 26               [12] 4415 	add	a,@r0
      004056 FA               [12] 4416 	mov	r2,a
      004057 E4               [12] 4417 	clr	a
      004058 08               [12] 4418 	inc	r0
      004059 36               [12] 4419 	addc	a,@r0
      00405A FB               [12] 4420 	mov	r3,a
      00405B 08               [12] 4421 	inc	r0
      00405C 86 04            [24] 4422 	mov	ar4,@r0
      00405E 8A 82            [24] 4423 	mov	dpl,r2
      004060 8B 83            [24] 4424 	mov	dph,r3
      004062 8C F0            [24] 4425 	mov	b,r4
      004064 12 4C FF         [24] 4426 	lcall	__gptrget
      004067 FA               [12] 4427 	mov	r2,a
      004068 A8 08            [24] 4428 	mov	r0,_bp
      00406A 08               [12] 4429 	inc	r0
      00406B A6 02            [24] 4430 	mov	@r0,ar2
      00406D 08               [12] 4431 	inc	r0
      00406E 76 00            [12] 4432 	mov	@r0,#0x00
      004070 E5 08            [12] 4433 	mov	a,_bp
      004072 24 07            [12] 4434 	add	a,#0x07
      004074 F8               [12] 4435 	mov	r0,a
      004075 74 04            [12] 4436 	mov	a,#0x04
      004077 26               [12] 4437 	add	a,@r0
      004078 FB               [12] 4438 	mov	r3,a
      004079 E4               [12] 4439 	clr	a
      00407A 08               [12] 4440 	inc	r0
      00407B 36               [12] 4441 	addc	a,@r0
      00407C FE               [12] 4442 	mov	r6,a
      00407D 08               [12] 4443 	inc	r0
      00407E 86 07            [24] 4444 	mov	ar7,@r0
      004080 8B 82            [24] 4445 	mov	dpl,r3
      004082 8E 83            [24] 4446 	mov	dph,r6
      004084 8F F0            [24] 4447 	mov	b,r7
      004086 E5 08            [12] 4448 	mov	a,_bp
      004088 24 03            [12] 4449 	add	a,#0x03
      00408A F8               [12] 4450 	mov	r0,a
      00408B 12 4C FF         [24] 4451 	lcall	__gptrget
      00408E F6               [12] 4452 	mov	@r0,a
      00408F A3               [24] 4453 	inc	dptr
      004090 12 4C FF         [24] 4454 	lcall	__gptrget
      004093 08               [12] 4455 	inc	r0
      004094 F6               [12] 4456 	mov	@r0,a
      004095 A3               [24] 4457 	inc	dptr
      004096 12 4C FF         [24] 4458 	lcall	__gptrget
      004099 08               [12] 4459 	inc	r0
      00409A F6               [12] 4460 	mov	@r0,a
      00409B A3               [24] 4461 	inc	dptr
      00409C 12 4C FF         [24] 4462 	lcall	__gptrget
      00409F 08               [12] 4463 	inc	r0
      0040A0 F6               [12] 4464 	mov	@r0,a
      0040A1 E5 08            [12] 4465 	mov	a,_bp
      0040A3 24 07            [12] 4466 	add	a,#0x07
      0040A5 F8               [12] 4467 	mov	r0,a
      0040A6 86 82            [24] 4468 	mov	dpl,@r0
      0040A8 08               [12] 4469 	inc	r0
      0040A9 86 83            [24] 4470 	mov	dph,@r0
      0040AB 08               [12] 4471 	inc	r0
      0040AC 86 F0            [24] 4472 	mov	b,@r0
      0040AE 12 4C FF         [24] 4473 	lcall	__gptrget
      0040B1 FA               [12] 4474 	mov	r2,a
      0040B2 A3               [24] 4475 	inc	dptr
      0040B3 12 4C FF         [24] 4476 	lcall	__gptrget
      0040B6 FC               [12] 4477 	mov	r4,a
      0040B7 A3               [24] 4478 	inc	dptr
      0040B8 12 4C FF         [24] 4479 	lcall	__gptrget
      0040BB FE               [12] 4480 	mov	r6,a
      0040BC A3               [24] 4481 	inc	dptr
      0040BD 12 4C FF         [24] 4482 	lcall	__gptrget
      0040C0 FF               [12] 4483 	mov	r7,a
                                   4484 ;	calc.c:294: printf("\r\nbase = %ld, acc = %ld / %0.8lx, acc_valid = %d\r\n\r\n",
      0040C1 A8 08            [24] 4485 	mov	r0,_bp
      0040C3 08               [12] 4486 	inc	r0
      0040C4 E6               [12] 4487 	mov	a,@r0
      0040C5 C0 E0            [24] 4488 	push	acc
      0040C7 08               [12] 4489 	inc	r0
      0040C8 E6               [12] 4490 	mov	a,@r0
      0040C9 C0 E0            [24] 4491 	push	acc
      0040CB E5 08            [12] 4492 	mov	a,_bp
      0040CD 24 03            [12] 4493 	add	a,#0x03
      0040CF F8               [12] 4494 	mov	r0,a
      0040D0 E6               [12] 4495 	mov	a,@r0
      0040D1 C0 E0            [24] 4496 	push	acc
      0040D3 08               [12] 4497 	inc	r0
      0040D4 E6               [12] 4498 	mov	a,@r0
      0040D5 C0 E0            [24] 4499 	push	acc
      0040D7 08               [12] 4500 	inc	r0
      0040D8 E6               [12] 4501 	mov	a,@r0
      0040D9 C0 E0            [24] 4502 	push	acc
      0040DB 08               [12] 4503 	inc	r0
      0040DC E6               [12] 4504 	mov	a,@r0
      0040DD C0 E0            [24] 4505 	push	acc
      0040DF E5 08            [12] 4506 	mov	a,_bp
      0040E1 24 03            [12] 4507 	add	a,#0x03
      0040E3 F8               [12] 4508 	mov	r0,a
      0040E4 E6               [12] 4509 	mov	a,@r0
      0040E5 C0 E0            [24] 4510 	push	acc
      0040E7 08               [12] 4511 	inc	r0
      0040E8 E6               [12] 4512 	mov	a,@r0
      0040E9 C0 E0            [24] 4513 	push	acc
      0040EB 08               [12] 4514 	inc	r0
      0040EC E6               [12] 4515 	mov	a,@r0
      0040ED C0 E0            [24] 4516 	push	acc
      0040EF 08               [12] 4517 	inc	r0
      0040F0 E6               [12] 4518 	mov	a,@r0
      0040F1 C0 E0            [24] 4519 	push	acc
      0040F3 C0 02            [24] 4520 	push	ar2
      0040F5 C0 04            [24] 4521 	push	ar4
      0040F7 C0 06            [24] 4522 	push	ar6
      0040F9 C0 07            [24] 4523 	push	ar7
      0040FB 74 D1            [12] 4524 	mov	a,#___str_5
      0040FD C0 E0            [24] 4525 	push	acc
      0040FF 74 65            [12] 4526 	mov	a,#(___str_5 >> 8)
      004101 C0 E0            [24] 4527 	push	acc
      004103 74 80            [12] 4528 	mov	a,#0x80
      004105 C0 E0            [24] 4529 	push	acc
      004107 12 4C C6         [24] 4530 	lcall	_printf
      00410A E5 81            [12] 4531 	mov	a,sp
      00410C 24 EF            [12] 4532 	add	a,#0xef
      00410E F5 81            [12] 4533 	mov	sp,a
                                   4534 ;	calc.c:296: printstr("h\tbase 10\r\n");
      004110 7D 06            [12] 4535 	mov	r5,#___str_6
      004112 7E 66            [12] 4536 	mov	r6,#(___str_6 >> 8)
      004114 7F 80            [12] 4537 	mov	r7,#0x80
                                   4538 ;	calc.c:50: return;
      004116                       4539 00142$:
                                   4540 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004116 8D 82            [24] 4541 	mov	dpl,r5
      004118 8E 83            [24] 4542 	mov	dph,r6
      00411A 8F F0            [24] 4543 	mov	b,r7
      00411C 12 4C FF         [24] 4544 	lcall	__gptrget
      00411F FC               [12] 4545 	mov	r4,a
      004120 60 10            [24] 4546 	jz	00102$
      004122 7B 00            [12] 4547 	mov	r3,#0x00
      004124 8C 82            [24] 4548 	mov	dpl,r4
      004126 8B 83            [24] 4549 	mov	dph,r3
      004128 12 29 C0         [24] 4550 	lcall	_putchar
      00412B 0D               [12] 4551 	inc	r5
                                   4552 ;	calc.c:296: printstr("h\tbase 10\r\n");
      00412C BD 00 E7         [24] 4553 	cjne	r5,#0x00,00142$
      00412F 0E               [12] 4554 	inc	r6
      004130 80 E4            [24] 4555 	sjmp	00142$
      004132                       4556 00102$:
                                   4557 ;	calc.c:297: printstr("H\tbase 16\r\n");
      004132 7D 12            [12] 4558 	mov	r5,#___str_7
      004134 7E 66            [12] 4559 	mov	r6,#(___str_7 >> 8)
      004136 7F 80            [12] 4560 	mov	r7,#0x80
                                   4561 ;	calc.c:50: return;
      004138                       4562 00145$:
                                   4563 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004138 8D 82            [24] 4564 	mov	dpl,r5
      00413A 8E 83            [24] 4565 	mov	dph,r6
      00413C 8F F0            [24] 4566 	mov	b,r7
      00413E 12 4C FF         [24] 4567 	lcall	__gptrget
      004141 FC               [12] 4568 	mov	r4,a
      004142 60 10            [24] 4569 	jz	00104$
      004144 7B 00            [12] 4570 	mov	r3,#0x00
      004146 8C 82            [24] 4571 	mov	dpl,r4
      004148 8B 83            [24] 4572 	mov	dph,r3
      00414A 12 29 C0         [24] 4573 	lcall	_putchar
      00414D 0D               [12] 4574 	inc	r5
                                   4575 ;	calc.c:297: printstr("H\tbase 16\r\n");
      00414E BD 00 E7         [24] 4576 	cjne	r5,#0x00,00145$
      004151 0E               [12] 4577 	inc	r6
      004152 80 E4            [24] 4578 	sjmp	00145$
      004154                       4579 00104$:
                                   4580 ;	calc.c:298: printstr("p\tpeek top\r\n");
      004154 7D 1E            [12] 4581 	mov	r5,#___str_8
      004156 7E 66            [12] 4582 	mov	r6,#(___str_8 >> 8)
      004158 7F 80            [12] 4583 	mov	r7,#0x80
                                   4584 ;	calc.c:50: return;
      00415A                       4585 00148$:
                                   4586 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00415A 8D 82            [24] 4587 	mov	dpl,r5
      00415C 8E 83            [24] 4588 	mov	dph,r6
      00415E 8F F0            [24] 4589 	mov	b,r7
      004160 12 4C FF         [24] 4590 	lcall	__gptrget
      004163 FC               [12] 4591 	mov	r4,a
      004164 60 10            [24] 4592 	jz	00106$
      004166 7B 00            [12] 4593 	mov	r3,#0x00
      004168 8C 82            [24] 4594 	mov	dpl,r4
      00416A 8B 83            [24] 4595 	mov	dph,r3
      00416C 12 29 C0         [24] 4596 	lcall	_putchar
      00416F 0D               [12] 4597 	inc	r5
                                   4598 ;	calc.c:298: printstr("p\tpeek top\r\n");
      004170 BD 00 E7         [24] 4599 	cjne	r5,#0x00,00148$
      004173 0E               [12] 4600 	inc	r6
      004174 80 E4            [24] 4601 	sjmp	00148$
      004176                       4602 00106$:
                                   4603 ;	calc.c:299: printstr("P\tprint stack\r\n");
      004176 7D 2B            [12] 4604 	mov	r5,#___str_9
      004178 7E 66            [12] 4605 	mov	r6,#(___str_9 >> 8)
      00417A 7F 80            [12] 4606 	mov	r7,#0x80
                                   4607 ;	calc.c:50: return;
      00417C                       4608 00151$:
                                   4609 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00417C 8D 82            [24] 4610 	mov	dpl,r5
      00417E 8E 83            [24] 4611 	mov	dph,r6
      004180 8F F0            [24] 4612 	mov	b,r7
      004182 12 4C FF         [24] 4613 	lcall	__gptrget
      004185 FC               [12] 4614 	mov	r4,a
      004186 60 10            [24] 4615 	jz	00108$
      004188 7B 00            [12] 4616 	mov	r3,#0x00
      00418A 8C 82            [24] 4617 	mov	dpl,r4
      00418C 8B 83            [24] 4618 	mov	dph,r3
      00418E 12 29 C0         [24] 4619 	lcall	_putchar
      004191 0D               [12] 4620 	inc	r5
                                   4621 ;	calc.c:299: printstr("P\tprint stack\r\n");
      004192 BD 00 E7         [24] 4622 	cjne	r5,#0x00,00151$
      004195 0E               [12] 4623 	inc	r6
      004196 80 E4            [24] 4624 	sjmp	00151$
      004198                       4625 00108$:
                                   4626 ;	calc.c:300: printstr("v .\tpop top\r\n");
      004198 7D 3B            [12] 4627 	mov	r5,#___str_10
      00419A 7E 66            [12] 4628 	mov	r6,#(___str_10 >> 8)
      00419C 7F 80            [12] 4629 	mov	r7,#0x80
                                   4630 ;	calc.c:50: return;
      00419E                       4631 00154$:
                                   4632 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00419E 8D 82            [24] 4633 	mov	dpl,r5
      0041A0 8E 83            [24] 4634 	mov	dph,r6
      0041A2 8F F0            [24] 4635 	mov	b,r7
      0041A4 12 4C FF         [24] 4636 	lcall	__gptrget
      0041A7 FC               [12] 4637 	mov	r4,a
      0041A8 60 10            [24] 4638 	jz	00110$
      0041AA 7B 00            [12] 4639 	mov	r3,#0x00
      0041AC 8C 82            [24] 4640 	mov	dpl,r4
      0041AE 8B 83            [24] 4641 	mov	dph,r3
      0041B0 12 29 C0         [24] 4642 	lcall	_putchar
      0041B3 0D               [12] 4643 	inc	r5
                                   4644 ;	calc.c:300: printstr("v .\tpop top\r\n");
      0041B4 BD 00 E7         [24] 4645 	cjne	r5,#0x00,00154$
      0041B7 0E               [12] 4646 	inc	r6
      0041B8 80 E4            [24] 4647 	sjmp	00154$
      0041BA                       4648 00110$:
                                   4649 ;	calc.c:301: printstr("V\tpop all\r\n");
      0041BA 7D 49            [12] 4650 	mov	r5,#___str_11
      0041BC 7E 66            [12] 4651 	mov	r6,#(___str_11 >> 8)
      0041BE 7F 80            [12] 4652 	mov	r7,#0x80
                                   4653 ;	calc.c:50: return;
      0041C0                       4654 00157$:
                                   4655 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0041C0 8D 82            [24] 4656 	mov	dpl,r5
      0041C2 8E 83            [24] 4657 	mov	dph,r6
      0041C4 8F F0            [24] 4658 	mov	b,r7
      0041C6 12 4C FF         [24] 4659 	lcall	__gptrget
      0041C9 FC               [12] 4660 	mov	r4,a
      0041CA 60 10            [24] 4661 	jz	00112$
      0041CC 7B 00            [12] 4662 	mov	r3,#0x00
      0041CE 8C 82            [24] 4663 	mov	dpl,r4
      0041D0 8B 83            [24] 4664 	mov	dph,r3
      0041D2 12 29 C0         [24] 4665 	lcall	_putchar
      0041D5 0D               [12] 4666 	inc	r5
                                   4667 ;	calc.c:301: printstr("V\tpop all\r\n");
      0041D6 BD 00 E7         [24] 4668 	cjne	r5,#0x00,00157$
      0041D9 0E               [12] 4669 	inc	r6
      0041DA 80 E4            [24] 4670 	sjmp	00157$
      0041DC                       4671 00112$:
                                   4672 ;	calc.c:302: printstr("i\treset acc\r\n");
      0041DC 7D 55            [12] 4673 	mov	r5,#___str_12
      0041DE 7E 66            [12] 4674 	mov	r6,#(___str_12 >> 8)
      0041E0 7F 80            [12] 4675 	mov	r7,#0x80
                                   4676 ;	calc.c:50: return;
      0041E2                       4677 00160$:
                                   4678 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0041E2 8D 82            [24] 4679 	mov	dpl,r5
      0041E4 8E 83            [24] 4680 	mov	dph,r6
      0041E6 8F F0            [24] 4681 	mov	b,r7
      0041E8 12 4C FF         [24] 4682 	lcall	__gptrget
      0041EB FC               [12] 4683 	mov	r4,a
      0041EC 60 10            [24] 4684 	jz	00114$
      0041EE 7B 00            [12] 4685 	mov	r3,#0x00
      0041F0 8C 82            [24] 4686 	mov	dpl,r4
      0041F2 8B 83            [24] 4687 	mov	dph,r3
      0041F4 12 29 C0         [24] 4688 	lcall	_putchar
      0041F7 0D               [12] 4689 	inc	r5
                                   4690 ;	calc.c:302: printstr("i\treset acc\r\n");
      0041F8 BD 00 E7         [24] 4691 	cjne	r5,#0x00,00160$
      0041FB 0E               [12] 4692 	inc	r6
      0041FC 80 E4            [24] 4693 	sjmp	00160$
      0041FE                       4694 00114$:
                                   4695 ;	calc.c:303: printstr("I\treset and discard acc\r\n");
      0041FE 7D 63            [12] 4696 	mov	r5,#___str_13
      004200 7E 66            [12] 4697 	mov	r6,#(___str_13 >> 8)
      004202 7F 80            [12] 4698 	mov	r7,#0x80
                                   4699 ;	calc.c:50: return;
      004204                       4700 00163$:
                                   4701 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004204 8D 82            [24] 4702 	mov	dpl,r5
      004206 8E 83            [24] 4703 	mov	dph,r6
      004208 8F F0            [24] 4704 	mov	b,r7
      00420A 12 4C FF         [24] 4705 	lcall	__gptrget
      00420D FC               [12] 4706 	mov	r4,a
      00420E 60 10            [24] 4707 	jz	00116$
      004210 7B 00            [12] 4708 	mov	r3,#0x00
      004212 8C 82            [24] 4709 	mov	dpl,r4
      004214 8B 83            [24] 4710 	mov	dph,r3
      004216 12 29 C0         [24] 4711 	lcall	_putchar
      004219 0D               [12] 4712 	inc	r5
                                   4713 ;	calc.c:303: printstr("I\treset and discard acc\r\n");
      00421A BD 00 E7         [24] 4714 	cjne	r5,#0x00,00163$
      00421D 0E               [12] 4715 	inc	r6
      00421E 80 E4            [24] 4716 	sjmp	00163$
      004220                       4717 00116$:
                                   4718 ;	calc.c:304: printstr("x\texchange top 2\r\n");
      004220 7D 7D            [12] 4719 	mov	r5,#___str_14
      004222 7E 66            [12] 4720 	mov	r6,#(___str_14 >> 8)
      004224 7F 80            [12] 4721 	mov	r7,#0x80
                                   4722 ;	calc.c:50: return;
      004226                       4723 00166$:
                                   4724 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004226 8D 82            [24] 4725 	mov	dpl,r5
      004228 8E 83            [24] 4726 	mov	dph,r6
      00422A 8F F0            [24] 4727 	mov	b,r7
      00422C 12 4C FF         [24] 4728 	lcall	__gptrget
      00422F FC               [12] 4729 	mov	r4,a
      004230 60 10            [24] 4730 	jz	00118$
      004232 7B 00            [12] 4731 	mov	r3,#0x00
      004234 8C 82            [24] 4732 	mov	dpl,r4
      004236 8B 83            [24] 4733 	mov	dph,r3
      004238 12 29 C0         [24] 4734 	lcall	_putchar
      00423B 0D               [12] 4735 	inc	r5
                                   4736 ;	calc.c:304: printstr("x\texchange top 2\r\n");
      00423C BD 00 E7         [24] 4737 	cjne	r5,#0x00,00166$
      00423F 0E               [12] 4738 	inc	r6
      004240 80 E4            [24] 4739 	sjmp	00166$
      004242                       4740 00118$:
                                   4741 ;	calc.c:305: printstr("+\tadd top 2\r\n");
      004242 7D 90            [12] 4742 	mov	r5,#___str_15
      004244 7E 66            [12] 4743 	mov	r6,#(___str_15 >> 8)
      004246 7F 80            [12] 4744 	mov	r7,#0x80
                                   4745 ;	calc.c:50: return;
      004248                       4746 00169$:
                                   4747 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004248 8D 82            [24] 4748 	mov	dpl,r5
      00424A 8E 83            [24] 4749 	mov	dph,r6
      00424C 8F F0            [24] 4750 	mov	b,r7
      00424E 12 4C FF         [24] 4751 	lcall	__gptrget
      004251 FC               [12] 4752 	mov	r4,a
      004252 60 10            [24] 4753 	jz	00120$
      004254 7B 00            [12] 4754 	mov	r3,#0x00
      004256 8C 82            [24] 4755 	mov	dpl,r4
      004258 8B 83            [24] 4756 	mov	dph,r3
      00425A 12 29 C0         [24] 4757 	lcall	_putchar
      00425D 0D               [12] 4758 	inc	r5
                                   4759 ;	calc.c:305: printstr("+\tadd top 2\r\n");
      00425E BD 00 E7         [24] 4760 	cjne	r5,#0x00,00169$
      004261 0E               [12] 4761 	inc	r6
      004262 80 E4            [24] 4762 	sjmp	00169$
      004264                       4763 00120$:
                                   4764 ;	calc.c:306: printstr("-\tsubtract top 2\r\n");
      004264 7D 9E            [12] 4765 	mov	r5,#___str_16
      004266 7E 66            [12] 4766 	mov	r6,#(___str_16 >> 8)
      004268 7F 80            [12] 4767 	mov	r7,#0x80
                                   4768 ;	calc.c:50: return;
      00426A                       4769 00172$:
                                   4770 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00426A 8D 82            [24] 4771 	mov	dpl,r5
      00426C 8E 83            [24] 4772 	mov	dph,r6
      00426E 8F F0            [24] 4773 	mov	b,r7
      004270 12 4C FF         [24] 4774 	lcall	__gptrget
      004273 FC               [12] 4775 	mov	r4,a
      004274 60 10            [24] 4776 	jz	00122$
      004276 7B 00            [12] 4777 	mov	r3,#0x00
      004278 8C 82            [24] 4778 	mov	dpl,r4
      00427A 8B 83            [24] 4779 	mov	dph,r3
      00427C 12 29 C0         [24] 4780 	lcall	_putchar
      00427F 0D               [12] 4781 	inc	r5
                                   4782 ;	calc.c:306: printstr("-\tsubtract top 2\r\n");
      004280 BD 00 E7         [24] 4783 	cjne	r5,#0x00,00172$
      004283 0E               [12] 4784 	inc	r6
      004284 80 E4            [24] 4785 	sjmp	00172$
      004286                       4786 00122$:
                                   4787 ;	calc.c:307: printstr("*\tmultiply top 2\r\n");
      004286 7D B1            [12] 4788 	mov	r5,#___str_17
      004288 7E 66            [12] 4789 	mov	r6,#(___str_17 >> 8)
      00428A 7F 80            [12] 4790 	mov	r7,#0x80
                                   4791 ;	calc.c:50: return;
      00428C                       4792 00175$:
                                   4793 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00428C 8D 82            [24] 4794 	mov	dpl,r5
      00428E 8E 83            [24] 4795 	mov	dph,r6
      004290 8F F0            [24] 4796 	mov	b,r7
      004292 12 4C FF         [24] 4797 	lcall	__gptrget
      004295 FC               [12] 4798 	mov	r4,a
      004296 60 10            [24] 4799 	jz	00124$
      004298 7B 00            [12] 4800 	mov	r3,#0x00
      00429A 8C 82            [24] 4801 	mov	dpl,r4
      00429C 8B 83            [24] 4802 	mov	dph,r3
      00429E 12 29 C0         [24] 4803 	lcall	_putchar
      0042A1 0D               [12] 4804 	inc	r5
                                   4805 ;	calc.c:307: printstr("*\tmultiply top 2\r\n");
      0042A2 BD 00 E7         [24] 4806 	cjne	r5,#0x00,00175$
      0042A5 0E               [12] 4807 	inc	r6
      0042A6 80 E4            [24] 4808 	sjmp	00175$
      0042A8                       4809 00124$:
                                   4810 ;	calc.c:308: printstr("/\tdivide top 2\r\n");
      0042A8 7D C4            [12] 4811 	mov	r5,#___str_18
      0042AA 7E 66            [12] 4812 	mov	r6,#(___str_18 >> 8)
      0042AC 7F 80            [12] 4813 	mov	r7,#0x80
                                   4814 ;	calc.c:50: return;
      0042AE                       4815 00178$:
                                   4816 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0042AE 8D 82            [24] 4817 	mov	dpl,r5
      0042B0 8E 83            [24] 4818 	mov	dph,r6
      0042B2 8F F0            [24] 4819 	mov	b,r7
      0042B4 12 4C FF         [24] 4820 	lcall	__gptrget
      0042B7 FC               [12] 4821 	mov	r4,a
      0042B8 60 10            [24] 4822 	jz	00126$
      0042BA 7B 00            [12] 4823 	mov	r3,#0x00
      0042BC 8C 82            [24] 4824 	mov	dpl,r4
      0042BE 8B 83            [24] 4825 	mov	dph,r3
      0042C0 12 29 C0         [24] 4826 	lcall	_putchar
      0042C3 0D               [12] 4827 	inc	r5
                                   4828 ;	calc.c:308: printstr("/\tdivide top 2\r\n");
      0042C4 BD 00 E7         [24] 4829 	cjne	r5,#0x00,00178$
      0042C7 0E               [12] 4830 	inc	r6
      0042C8 80 E4            [24] 4831 	sjmp	00178$
      0042CA                       4832 00126$:
                                   4833 ;	calc.c:309: printstr("%\tmodulus top 2\r\n");
      0042CA 7D D5            [12] 4834 	mov	r5,#___str_19
      0042CC 7E 66            [12] 4835 	mov	r6,#(___str_19 >> 8)
      0042CE 7F 80            [12] 4836 	mov	r7,#0x80
                                   4837 ;	calc.c:50: return;
      0042D0                       4838 00181$:
                                   4839 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0042D0 8D 82            [24] 4840 	mov	dpl,r5
      0042D2 8E 83            [24] 4841 	mov	dph,r6
      0042D4 8F F0            [24] 4842 	mov	b,r7
      0042D6 12 4C FF         [24] 4843 	lcall	__gptrget
      0042D9 FC               [12] 4844 	mov	r4,a
      0042DA 60 10            [24] 4845 	jz	00128$
      0042DC 7B 00            [12] 4846 	mov	r3,#0x00
      0042DE 8C 82            [24] 4847 	mov	dpl,r4
      0042E0 8B 83            [24] 4848 	mov	dph,r3
      0042E2 12 29 C0         [24] 4849 	lcall	_putchar
      0042E5 0D               [12] 4850 	inc	r5
                                   4851 ;	calc.c:309: printstr("%\tmodulus top 2\r\n");
      0042E6 BD 00 E7         [24] 4852 	cjne	r5,#0x00,00181$
      0042E9 0E               [12] 4853 	inc	r6
      0042EA 80 E4            [24] 4854 	sjmp	00181$
      0042EC                       4855 00128$:
                                   4856 ;	calc.c:310: printstr("&\tand top 2\r\n");
      0042EC 7D E7            [12] 4857 	mov	r5,#___str_20
      0042EE 7E 66            [12] 4858 	mov	r6,#(___str_20 >> 8)
      0042F0 7F 80            [12] 4859 	mov	r7,#0x80
                                   4860 ;	calc.c:50: return;
      0042F2                       4861 00184$:
                                   4862 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0042F2 8D 82            [24] 4863 	mov	dpl,r5
      0042F4 8E 83            [24] 4864 	mov	dph,r6
      0042F6 8F F0            [24] 4865 	mov	b,r7
      0042F8 12 4C FF         [24] 4866 	lcall	__gptrget
      0042FB FC               [12] 4867 	mov	r4,a
      0042FC 60 10            [24] 4868 	jz	00130$
      0042FE 7B 00            [12] 4869 	mov	r3,#0x00
      004300 8C 82            [24] 4870 	mov	dpl,r4
      004302 8B 83            [24] 4871 	mov	dph,r3
      004304 12 29 C0         [24] 4872 	lcall	_putchar
      004307 0D               [12] 4873 	inc	r5
                                   4874 ;	calc.c:310: printstr("&\tand top 2\r\n");
      004308 BD 00 E7         [24] 4875 	cjne	r5,#0x00,00184$
      00430B 0E               [12] 4876 	inc	r6
      00430C 80 E4            [24] 4877 	sjmp	00184$
      00430E                       4878 00130$:
                                   4879 ;	calc.c:311: printstr("|\tor top 2\r\n");
      00430E 7D F5            [12] 4880 	mov	r5,#___str_21
      004310 7E 66            [12] 4881 	mov	r6,#(___str_21 >> 8)
      004312 7F 80            [12] 4882 	mov	r7,#0x80
                                   4883 ;	calc.c:50: return;
      004314                       4884 00187$:
                                   4885 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004314 8D 82            [24] 4886 	mov	dpl,r5
      004316 8E 83            [24] 4887 	mov	dph,r6
      004318 8F F0            [24] 4888 	mov	b,r7
      00431A 12 4C FF         [24] 4889 	lcall	__gptrget
      00431D FC               [12] 4890 	mov	r4,a
      00431E 60 10            [24] 4891 	jz	00132$
      004320 7B 00            [12] 4892 	mov	r3,#0x00
      004322 8C 82            [24] 4893 	mov	dpl,r4
      004324 8B 83            [24] 4894 	mov	dph,r3
      004326 12 29 C0         [24] 4895 	lcall	_putchar
      004329 0D               [12] 4896 	inc	r5
                                   4897 ;	calc.c:311: printstr("|\tor top 2\r\n");
      00432A BD 00 E7         [24] 4898 	cjne	r5,#0x00,00187$
      00432D 0E               [12] 4899 	inc	r6
      00432E 80 E4            [24] 4900 	sjmp	00187$
      004330                       4901 00132$:
                                   4902 ;	calc.c:312: printstr("^\txor top 2\r\n");
      004330 7D 02            [12] 4903 	mov	r5,#___str_22
      004332 7E 67            [12] 4904 	mov	r6,#(___str_22 >> 8)
      004334 7F 80            [12] 4905 	mov	r7,#0x80
                                   4906 ;	calc.c:50: return;
      004336                       4907 00190$:
                                   4908 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004336 8D 82            [24] 4909 	mov	dpl,r5
      004338 8E 83            [24] 4910 	mov	dph,r6
      00433A 8F F0            [24] 4911 	mov	b,r7
      00433C 12 4C FF         [24] 4912 	lcall	__gptrget
      00433F FC               [12] 4913 	mov	r4,a
      004340 60 10            [24] 4914 	jz	00134$
      004342 7B 00            [12] 4915 	mov	r3,#0x00
      004344 8C 82            [24] 4916 	mov	dpl,r4
      004346 8B 83            [24] 4917 	mov	dph,r3
      004348 12 29 C0         [24] 4918 	lcall	_putchar
      00434B 0D               [12] 4919 	inc	r5
                                   4920 ;	calc.c:312: printstr("^\txor top 2\r\n");
      00434C BD 00 E7         [24] 4921 	cjne	r5,#0x00,00190$
      00434F 0E               [12] 4922 	inc	r6
      004350 80 E4            [24] 4923 	sjmp	00190$
      004352                       4924 00134$:
                                   4925 ;	calc.c:313: printstr("~\tbitwise not top\r\n");
      004352 7D 10            [12] 4926 	mov	r5,#___str_23
      004354 7E 67            [12] 4927 	mov	r6,#(___str_23 >> 8)
      004356 7F 80            [12] 4928 	mov	r7,#0x80
                                   4929 ;	calc.c:50: return;
      004358                       4930 00193$:
                                   4931 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004358 8D 82            [24] 4932 	mov	dpl,r5
      00435A 8E 83            [24] 4933 	mov	dph,r6
      00435C 8F F0            [24] 4934 	mov	b,r7
      00435E 12 4C FF         [24] 4935 	lcall	__gptrget
      004361 FC               [12] 4936 	mov	r4,a
      004362 60 10            [24] 4937 	jz	00136$
      004364 7B 00            [12] 4938 	mov	r3,#0x00
      004366 8C 82            [24] 4939 	mov	dpl,r4
      004368 8B 83            [24] 4940 	mov	dph,r3
      00436A 12 29 C0         [24] 4941 	lcall	_putchar
      00436D 0D               [12] 4942 	inc	r5
                                   4943 ;	calc.c:313: printstr("~\tbitwise not top\r\n");
      00436E BD 00 E7         [24] 4944 	cjne	r5,#0x00,00193$
      004371 0E               [12] 4945 	inc	r6
      004372 80 E4            [24] 4946 	sjmp	00193$
      004374                       4947 00136$:
                                   4948 ;	calc.c:314: printstr("?\thelp\r\n");
      004374 7D 24            [12] 4949 	mov	r5,#___str_24
      004376 7E 67            [12] 4950 	mov	r6,#(___str_24 >> 8)
      004378 7F 80            [12] 4951 	mov	r7,#0x80
                                   4952 ;	calc.c:50: return;
      00437A                       4953 00196$:
                                   4954 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00437A 8D 82            [24] 4955 	mov	dpl,r5
      00437C 8E 83            [24] 4956 	mov	dph,r6
      00437E 8F F0            [24] 4957 	mov	b,r7
      004380 12 4C FF         [24] 4958 	lcall	__gptrget
      004383 FC               [12] 4959 	mov	r4,a
      004384 60 10            [24] 4960 	jz	00138$
      004386 7B 00            [12] 4961 	mov	r3,#0x00
      004388 8C 82            [24] 4962 	mov	dpl,r4
      00438A 8B 83            [24] 4963 	mov	dph,r3
      00438C 12 29 C0         [24] 4964 	lcall	_putchar
      00438F 0D               [12] 4965 	inc	r5
                                   4966 ;	calc.c:314: printstr("?\thelp\r\n");
      004390 BD 00 E7         [24] 4967 	cjne	r5,#0x00,00196$
      004393 0E               [12] 4968 	inc	r6
      004394 80 E4            [24] 4969 	sjmp	00196$
      004396                       4970 00138$:
                                   4971 ;	calc.c:315: printstr("q\tquit\r\n");
      004396 7D 2D            [12] 4972 	mov	r5,#___str_25
      004398 7E 67            [12] 4973 	mov	r6,#(___str_25 >> 8)
      00439A 7F 80            [12] 4974 	mov	r7,#0x80
                                   4975 ;	calc.c:50: return;
      00439C                       4976 00199$:
                                   4977 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00439C 8D 82            [24] 4978 	mov	dpl,r5
      00439E 8E 83            [24] 4979 	mov	dph,r6
      0043A0 8F F0            [24] 4980 	mov	b,r7
      0043A2 12 4C FF         [24] 4981 	lcall	__gptrget
      0043A5 FC               [12] 4982 	mov	r4,a
      0043A6 60 10            [24] 4983 	jz	00140$
      0043A8 7B 00            [12] 4984 	mov	r3,#0x00
      0043AA 8C 82            [24] 4985 	mov	dpl,r4
      0043AC 8B 83            [24] 4986 	mov	dph,r3
      0043AE 12 29 C0         [24] 4987 	lcall	_putchar
      0043B1 0D               [12] 4988 	inc	r5
                                   4989 ;	calc.c:315: printstr("q\tquit\r\n");
      0043B2 BD 00 E7         [24] 4990 	cjne	r5,#0x00,00199$
      0043B5 0E               [12] 4991 	inc	r6
      0043B6 80 E4            [24] 4992 	sjmp	00199$
      0043B8                       4993 00140$:
                                   4994 ;	calc.c:317: return 1;
      0043B8 90 00 01         [24] 4995 	mov	dptr,#0x0001
                                   4996 ;	calc.c:318: }
      0043BB 85 08 81         [24] 4997 	mov	sp,_bp
      0043BE D0 08            [24] 4998 	pop	_bp
      0043C0 22               [24] 4999 	ret
                                   5000 ;------------------------------------------------------------
                                   5001 ;Allocation info for local variables in function 'main'
                                   5002 ;------------------------------------------------------------
                                   5003 ;input                     Allocated to registers r6 r7 
                                   5004 ;------------------------------------------------------------
                                   5005 ;	calc.c:347: void main(void) {
                                   5006 ;	-----------------------------------------
                                   5007 ;	 function main
                                   5008 ;	-----------------------------------------
      0043C1                       5009 _main:
                                   5010 ;	calc.c:350: c.base = 10l;
      0043C1 90 80 0C         [24] 5011 	mov	dptr,#_c
      0043C4 74 0A            [12] 5012 	mov	a,#0x0a
      0043C6 F0               [24] 5013 	movx	@dptr,a
      0043C7 E4               [12] 5014 	clr	a
      0043C8 A3               [24] 5015 	inc	dptr
      0043C9 F0               [24] 5016 	movx	@dptr,a
      0043CA A3               [24] 5017 	inc	dptr
      0043CB F0               [24] 5018 	movx	@dptr,a
      0043CC A3               [24] 5019 	inc	dptr
      0043CD F0               [24] 5020 	movx	@dptr,a
                                   5021 ;	calc.c:351: c.acc = 0l;
      0043CE 90 80 10         [24] 5022 	mov	dptr,#(_c + 0x0004)
      0043D1 F0               [24] 5023 	movx	@dptr,a
      0043D2 A3               [24] 5024 	inc	dptr
      0043D3 F0               [24] 5025 	movx	@dptr,a
      0043D4 A3               [24] 5026 	inc	dptr
      0043D5 F0               [24] 5027 	movx	@dptr,a
      0043D6 A3               [24] 5028 	inc	dptr
      0043D7 F0               [24] 5029 	movx	@dptr,a
                                   5030 ;	calc.c:352: c.acc_valid = (char)0;
      0043D8 90 80 14         [24] 5031 	mov	dptr,#(_c + 0x0008)
      0043DB F0               [24] 5032 	movx	@dptr,a
                                   5033 ;	calc.c:353: c.digit[0] = c.digit[1] = '\0';
      0043DC 90 80 16         [24] 5034 	mov	dptr,#(_c + 0x000a)
      0043DF F0               [24] 5035 	movx	@dptr,a
      0043E0 90 80 15         [24] 5036 	mov	dptr,#(_c + 0x0009)
      0043E3 F0               [24] 5037 	movx	@dptr,a
                                   5038 ;	calc.c:354: stack_init(&c.s);	
      0043E4 90 80 17         [24] 5039 	mov	dptr,#(_c + 0x000b)
      0043E7 75 F0 00         [24] 5040 	mov	b,#0x00
      0043EA 12 26 80         [24] 5041 	lcall	_stack_init
                                   5042 ;	calc.c:355: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      0043ED 74 0C            [12] 5043 	mov	a,#_c
      0043EF C0 E0            [24] 5044 	push	acc
      0043F1 74 80            [12] 5045 	mov	a,#(_c >> 8)
      0043F3 C0 E0            [24] 5046 	push	acc
      0043F5 E4               [12] 5047 	clr	a
      0043F6 C0 E0            [24] 5048 	push	acc
      0043F8 74 35            [12] 5049 	mov	a,#_deltas
      0043FA C0 E0            [24] 5050 	push	acc
      0043FC 74 A0            [12] 5051 	mov	a,#(_deltas >> 8)
      0043FE C0 E0            [24] 5052 	push	acc
      004400 E4               [12] 5053 	clr	a
      004401 C0 E0            [24] 5054 	push	acc
      004403 C0 E0            [24] 5055 	push	acc
      004405 74 80            [12] 5056 	mov	a,#0x80
      004407 C0 E0            [24] 5057 	push	acc
      004409 74 03            [12] 5058 	mov	a,#0x03
      00440B C0 E0            [24] 5059 	push	acc
      00440D E4               [12] 5060 	clr	a
      00440E C0 E0            [24] 5061 	push	acc
      004410 C0 E0            [24] 5062 	push	acc
      004412 C0 E0            [24] 5063 	push	acc
      004414 90 80 00         [24] 5064 	mov	dptr,#_s
      004417 75 F0 00         [24] 5065 	mov	b,#0x00
      00441A 12 20 90         [24] 5066 	lcall	_state_init
      00441D E5 81            [12] 5067 	mov	a,sp
      00441F 24 F4            [12] 5068 	add	a,#0xf4
      004421 F5 81            [12] 5069 	mov	sp,a
                                   5070 ;	calc.c:357: while (1) {
      004423                       5071 00150$:
                                   5072 ;	calc.c:358: input = getchar();
      004423 12 29 C5         [24] 5073 	lcall	_getchar
                                   5074 ;	calc.c:359: (void)putchar(input);
      004426 AE 82            [24] 5075 	mov	r6,dpl
      004428 AF 83            [24] 5076 	mov  r7,dph
      00442A 12 29 C0         [24] 5077 	lcall	_putchar
                                   5078 ;	calc.c:360: if ((char)input == 'q') {
      00442D 8E 05            [24] 5079 	mov	ar5,r6
      00442F BD 71 29         [24] 5080 	cjne	r5,#0x71,00147$
                                   5081 ;	calc.c:361: if (state_exec(&s, EVENT_TERM) <= 0) break;
      004432 74 06            [12] 5082 	mov	a,#0x06
      004434 C0 E0            [24] 5083 	push	acc
      004436 E4               [12] 5084 	clr	a
      004437 C0 E0            [24] 5085 	push	acc
      004439 90 80 00         [24] 5086 	mov	dptr,#_s
      00443C 75 F0 00         [24] 5087 	mov	b,#0x00
      00443F 12 21 46         [24] 5088 	lcall	_state_exec
      004442 AB 82            [24] 5089 	mov	r3,dpl
      004444 AC 83            [24] 5090 	mov	r4,dph
      004446 15 81            [12] 5091 	dec	sp
      004448 15 81            [12] 5092 	dec	sp
      00444A C3               [12] 5093 	clr	c
      00444B E4               [12] 5094 	clr	a
      00444C 9B               [12] 5095 	subb	a,r3
      00444D 74 80            [12] 5096 	mov	a,#(0x00 ^ 0x80)
      00444F 8C F0            [24] 5097 	mov	b,r4
      004451 63 F0 80         [24] 5098 	xrl	b,#0x80
      004454 95 F0            [12] 5099 	subb	a,b
      004456 40 CB            [24] 5100 	jc	00150$
      004458 02 45 D2         [24] 5101 	ljmp	00151$
      00445B                       5102 00147$:
                                   5103 ;	calc.c:362: } else if ((char)input == '?') {
      00445B BD 3F 29         [24] 5104 	cjne	r5,#0x3f,00144$
                                   5105 ;	calc.c:363: if (state_exec(&s, EVENT_HELP) <= 0) break;
      00445E 74 03            [12] 5106 	mov	a,#0x03
      004460 C0 E0            [24] 5107 	push	acc
      004462 E4               [12] 5108 	clr	a
      004463 C0 E0            [24] 5109 	push	acc
      004465 90 80 00         [24] 5110 	mov	dptr,#_s
      004468 75 F0 00         [24] 5111 	mov	b,#0x00
      00446B 12 21 46         [24] 5112 	lcall	_state_exec
      00446E AB 82            [24] 5113 	mov	r3,dpl
      004470 AC 83            [24] 5114 	mov	r4,dph
      004472 15 81            [12] 5115 	dec	sp
      004474 15 81            [12] 5116 	dec	sp
      004476 C3               [12] 5117 	clr	c
      004477 E4               [12] 5118 	clr	a
      004478 9B               [12] 5119 	subb	a,r3
      004479 74 80            [12] 5120 	mov	a,#(0x00 ^ 0x80)
      00447B 8C F0            [24] 5121 	mov	b,r4
      00447D 63 F0 80         [24] 5122 	xrl	b,#0x80
      004480 95 F0            [12] 5123 	subb	a,b
      004482 40 9F            [24] 5124 	jc	00150$
      004484 02 45 D2         [24] 5125 	ljmp	00151$
      004487                       5126 00144$:
                                   5127 ;	calc.c:364: } else if ((char)input == 'i') {
      004487 BD 69 2C         [24] 5128 	cjne	r5,#0x69,00141$
                                   5129 ;	calc.c:365: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      00448A 74 04            [12] 5130 	mov	a,#0x04
      00448C C0 E0            [24] 5131 	push	acc
      00448E E4               [12] 5132 	clr	a
      00448F C0 E0            [24] 5133 	push	acc
      004491 90 80 00         [24] 5134 	mov	dptr,#_s
      004494 75 F0 00         [24] 5135 	mov	b,#0x00
      004497 12 21 46         [24] 5136 	lcall	_state_exec
      00449A AB 82            [24] 5137 	mov	r3,dpl
      00449C AC 83            [24] 5138 	mov	r4,dph
      00449E 15 81            [12] 5139 	dec	sp
      0044A0 15 81            [12] 5140 	dec	sp
      0044A2 C3               [12] 5141 	clr	c
      0044A3 E4               [12] 5142 	clr	a
      0044A4 9B               [12] 5143 	subb	a,r3
      0044A5 74 80            [12] 5144 	mov	a,#(0x00 ^ 0x80)
      0044A7 8C F0            [24] 5145 	mov	b,r4
      0044A9 63 F0 80         [24] 5146 	xrl	b,#0x80
      0044AC 95 F0            [12] 5147 	subb	a,b
      0044AE 50 03            [24] 5148 	jnc	00274$
      0044B0 02 44 23         [24] 5149 	ljmp	00150$
      0044B3                       5150 00274$:
      0044B3 02 45 D2         [24] 5151 	ljmp	00151$
      0044B6                       5152 00141$:
                                   5153 ;	calc.c:366: } else if ((char)input == 'I') {
      0044B6 BD 49 2C         [24] 5154 	cjne	r5,#0x49,00138$
                                   5155 ;	calc.c:367: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      0044B9 74 05            [12] 5156 	mov	a,#0x05
      0044BB C0 E0            [24] 5157 	push	acc
      0044BD E4               [12] 5158 	clr	a
      0044BE C0 E0            [24] 5159 	push	acc
      0044C0 90 80 00         [24] 5160 	mov	dptr,#_s
      0044C3 75 F0 00         [24] 5161 	mov	b,#0x00
      0044C6 12 21 46         [24] 5162 	lcall	_state_exec
      0044C9 AB 82            [24] 5163 	mov	r3,dpl
      0044CB AC 83            [24] 5164 	mov	r4,dph
      0044CD 15 81            [12] 5165 	dec	sp
      0044CF 15 81            [12] 5166 	dec	sp
      0044D1 C3               [12] 5167 	clr	c
      0044D2 E4               [12] 5168 	clr	a
      0044D3 9B               [12] 5169 	subb	a,r3
      0044D4 74 80            [12] 5170 	mov	a,#(0x00 ^ 0x80)
      0044D6 8C F0            [24] 5171 	mov	b,r4
      0044D8 63 F0 80         [24] 5172 	xrl	b,#0x80
      0044DB 95 F0            [12] 5173 	subb	a,b
      0044DD 50 03            [24] 5174 	jnc	00277$
      0044DF 02 44 23         [24] 5175 	ljmp	00150$
      0044E2                       5176 00277$:
      0044E2 02 45 D2         [24] 5177 	ljmp	00151$
      0044E5                       5178 00138$:
                                   5179 ;	calc.c:368: } else if (isxdigit(input)) {
      0044E5 8E 82            [24] 5180 	mov	dpl,r6
      0044E7 8F 83            [24] 5181 	mov	dph,r7
      0044E9 C0 05            [24] 5182 	push	ar5
      0044EB 12 45 D6         [24] 5183 	lcall	_isxdigit
      0044EE E5 82            [12] 5184 	mov	a,dpl
      0044F0 85 83 F0         [24] 5185 	mov	b,dph
      0044F3 D0 05            [24] 5186 	pop	ar5
      0044F5 45 F0            [12] 5187 	orl	a,b
      0044F7 60 31            [24] 5188 	jz	00135$
                                   5189 ;	calc.c:369: c.digit[0] = (char)input;
      0044F9 90 80 15         [24] 5190 	mov	dptr,#(_c + 0x0009)
      0044FC ED               [12] 5191 	mov	a,r5
      0044FD F0               [24] 5192 	movx	@dptr,a
                                   5193 ;	calc.c:370: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      0044FE 74 01            [12] 5194 	mov	a,#0x01
      004500 C0 E0            [24] 5195 	push	acc
      004502 E4               [12] 5196 	clr	a
      004503 C0 E0            [24] 5197 	push	acc
      004505 90 80 00         [24] 5198 	mov	dptr,#_s
      004508 75 F0 00         [24] 5199 	mov	b,#0x00
      00450B 12 21 46         [24] 5200 	lcall	_state_exec
      00450E AE 82            [24] 5201 	mov	r6,dpl
      004510 AF 83            [24] 5202 	mov	r7,dph
      004512 15 81            [12] 5203 	dec	sp
      004514 15 81            [12] 5204 	dec	sp
      004516 C3               [12] 5205 	clr	c
      004517 E4               [12] 5206 	clr	a
      004518 9E               [12] 5207 	subb	a,r6
      004519 74 80            [12] 5208 	mov	a,#(0x00 ^ 0x80)
      00451B 8F F0            [24] 5209 	mov	b,r7
      00451D 63 F0 80         [24] 5210 	xrl	b,#0x80
      004520 95 F0            [12] 5211 	subb	a,b
      004522 50 03            [24] 5212 	jnc	00279$
      004524 02 44 23         [24] 5213 	ljmp	00150$
      004527                       5214 00279$:
      004527 02 45 D2         [24] 5215 	ljmp	00151$
      00452A                       5216 00135$:
                                   5217 ;	calc.c:372: ((char)input == 'h') || ((char)input == 'H') ||
      00452A BD 68 02         [24] 5218 	cjne	r5,#0x68,00280$
      00452D 80 4E            [24] 5219 	sjmp	00115$
      00452F                       5220 00280$:
      00452F BD 48 02         [24] 5221 	cjne	r5,#0x48,00281$
      004532 80 49            [24] 5222 	sjmp	00115$
      004534                       5223 00281$:
                                   5224 ;	calc.c:373: ((char)input == 'p') || ((char)input == 'P') ||
      004534 BD 70 02         [24] 5225 	cjne	r5,#0x70,00282$
      004537 80 44            [24] 5226 	sjmp	00115$
      004539                       5227 00282$:
      004539 BD 50 02         [24] 5228 	cjne	r5,#0x50,00283$
      00453C 80 3F            [24] 5229 	sjmp	00115$
      00453E                       5230 00283$:
                                   5231 ;	calc.c:374: ((char)input == '.') || ((char)input == 'v') || ((char)input == 'V') ||
      00453E BD 2E 02         [24] 5232 	cjne	r5,#0x2e,00284$
      004541 80 3A            [24] 5233 	sjmp	00115$
      004543                       5234 00284$:
      004543 BD 76 02         [24] 5235 	cjne	r5,#0x76,00285$
      004546 80 35            [24] 5236 	sjmp	00115$
      004548                       5237 00285$:
      004548 BD 56 02         [24] 5238 	cjne	r5,#0x56,00286$
      00454B 80 30            [24] 5239 	sjmp	00115$
      00454D                       5240 00286$:
                                   5241 ;	calc.c:375: ((char)input == 'x') ||
      00454D BD 78 02         [24] 5242 	cjne	r5,#0x78,00287$
      004550 80 2B            [24] 5243 	sjmp	00115$
      004552                       5244 00287$:
                                   5245 ;	calc.c:376: ((char)input == '+') ||
      004552 BD 2B 02         [24] 5246 	cjne	r5,#0x2b,00288$
      004555 80 26            [24] 5247 	sjmp	00115$
      004557                       5248 00288$:
                                   5249 ;	calc.c:377: ((char)input == '-') ||
      004557 BD 2D 02         [24] 5250 	cjne	r5,#0x2d,00289$
      00455A 80 21            [24] 5251 	sjmp	00115$
      00455C                       5252 00289$:
                                   5253 ;	calc.c:378: ((char)input == '*') ||
      00455C BD 2A 02         [24] 5254 	cjne	r5,#0x2a,00290$
      00455F 80 1C            [24] 5255 	sjmp	00115$
      004561                       5256 00290$:
                                   5257 ;	calc.c:379: ((char)input == '/') ||
      004561 BD 2F 02         [24] 5258 	cjne	r5,#0x2f,00291$
      004564 80 17            [24] 5259 	sjmp	00115$
      004566                       5260 00291$:
                                   5261 ;	calc.c:380: ((char)input == '%') ||
      004566 BD 25 02         [24] 5262 	cjne	r5,#0x25,00292$
      004569 80 12            [24] 5263 	sjmp	00115$
      00456B                       5264 00292$:
                                   5265 ;	calc.c:381: ((char)input == '&') ||
      00456B BD 26 02         [24] 5266 	cjne	r5,#0x26,00293$
      00456E 80 0D            [24] 5267 	sjmp	00115$
      004570                       5268 00293$:
                                   5269 ;	calc.c:382: ((char)input == '|') ||
      004570 BD 7C 02         [24] 5270 	cjne	r5,#0x7c,00294$
      004573 80 08            [24] 5271 	sjmp	00115$
      004575                       5272 00294$:
                                   5273 ;	calc.c:383: ((char)input == '^') ||
      004575 BD 5E 02         [24] 5274 	cjne	r5,#0x5e,00295$
      004578 80 03            [24] 5275 	sjmp	00115$
      00457A                       5276 00295$:
                                   5277 ;	calc.c:384: ((char)input == '~')
      00457A BD 7E 2E         [24] 5278 	cjne	r5,#0x7e,00116$
      00457D                       5279 00115$:
                                   5280 ;	calc.c:386: c.digit[0] = (char)input;
      00457D 90 80 15         [24] 5281 	mov	dptr,#(_c + 0x0009)
      004580 ED               [12] 5282 	mov	a,r5
      004581 F0               [24] 5283 	movx	@dptr,a
                                   5284 ;	calc.c:387: if (state_exec(&s, EVENT_OP) <= 0) break;
      004582 74 02            [12] 5285 	mov	a,#0x02
      004584 C0 E0            [24] 5286 	push	acc
      004586 E4               [12] 5287 	clr	a
      004587 C0 E0            [24] 5288 	push	acc
      004589 90 80 00         [24] 5289 	mov	dptr,#_s
      00458C 75 F0 00         [24] 5290 	mov	b,#0x00
      00458F 12 21 46         [24] 5291 	lcall	_state_exec
      004592 AE 82            [24] 5292 	mov	r6,dpl
      004594 AF 83            [24] 5293 	mov	r7,dph
      004596 15 81            [12] 5294 	dec	sp
      004598 15 81            [12] 5295 	dec	sp
      00459A C3               [12] 5296 	clr	c
      00459B E4               [12] 5297 	clr	a
      00459C 9E               [12] 5298 	subb	a,r6
      00459D 74 80            [12] 5299 	mov	a,#(0x00 ^ 0x80)
      00459F 8F F0            [24] 5300 	mov	b,r7
      0045A1 63 F0 80         [24] 5301 	xrl	b,#0x80
      0045A4 95 F0            [12] 5302 	subb	a,b
      0045A6 50 2A            [24] 5303 	jnc	00151$
      0045A8 02 44 23         [24] 5304 	ljmp	00150$
      0045AB                       5305 00116$:
                                   5306 ;	calc.c:389: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      0045AB E4               [12] 5307 	clr	a
      0045AC C0 E0            [24] 5308 	push	acc
      0045AE C0 E0            [24] 5309 	push	acc
      0045B0 90 80 00         [24] 5310 	mov	dptr,#_s
      0045B3 75 F0 00         [24] 5311 	mov	b,#0x00
      0045B6 12 21 46         [24] 5312 	lcall	_state_exec
      0045B9 AE 82            [24] 5313 	mov	r6,dpl
      0045BB AF 83            [24] 5314 	mov	r7,dph
      0045BD 15 81            [12] 5315 	dec	sp
      0045BF 15 81            [12] 5316 	dec	sp
      0045C1 C3               [12] 5317 	clr	c
      0045C2 E4               [12] 5318 	clr	a
      0045C3 9E               [12] 5319 	subb	a,r6
      0045C4 74 80            [12] 5320 	mov	a,#(0x00 ^ 0x80)
      0045C6 8F F0            [24] 5321 	mov	b,r7
      0045C8 63 F0 80         [24] 5322 	xrl	b,#0x80
      0045CB 95 F0            [12] 5323 	subb	a,b
      0045CD 50 03            [24] 5324 	jnc	00299$
      0045CF 02 44 23         [24] 5325 	ljmp	00150$
      0045D2                       5326 00299$:
      0045D2                       5327 00151$:
                                   5328 ;	calc.c:395: __endasm;
      0045D2 43 87 02         [24] 5329 	orl	pcon, #2
                                   5330 ;	calc.c:396: }
      0045D5 22               [24] 5331 	ret
                                   5332 	.area CSEG    (CODE)
                                   5333 	.area CONST   (CODE)
                                   5334 	.area CONST   (CODE)
      006580                       5335 ___str_0:
      006580 0D                    5336 	.db 0x0d
      006581 0A                    5337 	.db 0x0a
      006582 00                    5338 	.db 0x00
                                   5339 	.area CSEG    (CODE)
                                   5340 	.area CONST   (CODE)
      006583                       5341 ___str_1:
      006583 73 74 61 63 6B 20 75  5342 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      006592 0D                    5343 	.db 0x0d
      006593 0A                    5344 	.db 0x0a
      006594 00                    5345 	.db 0x00
                                   5346 	.area CSEG    (CODE)
                                   5347 	.area CONST   (CODE)
      006595                       5348 ___str_2:
      006595 0D                    5349 	.db 0x0d
      006596 0A                    5350 	.db 0x0a
      006597 73 74 61 63 6B 20 75  5351 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      0065A6 0D                    5352 	.db 0x0d
      0065A7 0A                    5353 	.db 0x0a
      0065A8 00                    5354 	.db 0x00
                                   5355 	.area CSEG    (CODE)
                                   5356 	.area CONST   (CODE)
      0065A9                       5357 ___str_3:
      0065A9 0D                    5358 	.db 0x0d
      0065AA 0A                    5359 	.db 0x0a
      0065AB 64 69 76 69 73 69 6F  5360 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      0065BB 0D                    5361 	.db 0x0d
      0065BC 0A                    5362 	.db 0x0a
      0065BD 00                    5363 	.db 0x00
                                   5364 	.area CSEG    (CODE)
                                   5365 	.area CONST   (CODE)
      0065BE                       5366 ___str_4:
      0065BE 0D                    5367 	.db 0x0d
      0065BF 0A                    5368 	.db 0x0a
      0065C0 73 74 61 63 6B 20 6F  5369 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      0065CE 0D                    5370 	.db 0x0d
      0065CF 0A                    5371 	.db 0x0a
      0065D0 00                    5372 	.db 0x00
                                   5373 	.area CSEG    (CODE)
                                   5374 	.area CONST   (CODE)
      0065D1                       5375 ___str_5:
      0065D1 0D                    5376 	.db 0x0d
      0065D2 0A                    5377 	.db 0x0a
      0065D3 62 61 73 65 20 3D 20  5378 	.ascii "base = %ld, acc = %ld / %0.8lx, acc_valid = %d"
             25 6C 64 2C 20 61 63
             63 20 3D 20 25 6C 64
             20 2F 20 25 30 2E 38
             6C 78 2C 20 61 63 63
             5F 76 61 6C 69 64 20
             3D 20 25 64
      006601 0D                    5379 	.db 0x0d
      006602 0A                    5380 	.db 0x0a
      006603 0D                    5381 	.db 0x0d
      006604 0A                    5382 	.db 0x0a
      006605 00                    5383 	.db 0x00
                                   5384 	.area CSEG    (CODE)
                                   5385 	.area CONST   (CODE)
      006606                       5386 ___str_6:
      006606 68                    5387 	.ascii "h"
      006607 09                    5388 	.db 0x09
      006608 62 61 73 65 20 31 30  5389 	.ascii "base 10"
      00660F 0D                    5390 	.db 0x0d
      006610 0A                    5391 	.db 0x0a
      006611 00                    5392 	.db 0x00
                                   5393 	.area CSEG    (CODE)
                                   5394 	.area CONST   (CODE)
      006612                       5395 ___str_7:
      006612 48                    5396 	.ascii "H"
      006613 09                    5397 	.db 0x09
      006614 62 61 73 65 20 31 36  5398 	.ascii "base 16"
      00661B 0D                    5399 	.db 0x0d
      00661C 0A                    5400 	.db 0x0a
      00661D 00                    5401 	.db 0x00
                                   5402 	.area CSEG    (CODE)
                                   5403 	.area CONST   (CODE)
      00661E                       5404 ___str_8:
      00661E 70                    5405 	.ascii "p"
      00661F 09                    5406 	.db 0x09
      006620 70 65 65 6B 20 74 6F  5407 	.ascii "peek top"
             70
      006628 0D                    5408 	.db 0x0d
      006629 0A                    5409 	.db 0x0a
      00662A 00                    5410 	.db 0x00
                                   5411 	.area CSEG    (CODE)
                                   5412 	.area CONST   (CODE)
      00662B                       5413 ___str_9:
      00662B 50                    5414 	.ascii "P"
      00662C 09                    5415 	.db 0x09
      00662D 70 72 69 6E 74 20 73  5416 	.ascii "print stack"
             74 61 63 6B
      006638 0D                    5417 	.db 0x0d
      006639 0A                    5418 	.db 0x0a
      00663A 00                    5419 	.db 0x00
                                   5420 	.area CSEG    (CODE)
                                   5421 	.area CONST   (CODE)
      00663B                       5422 ___str_10:
      00663B 76 20 2E              5423 	.ascii "v ."
      00663E 09                    5424 	.db 0x09
      00663F 70 6F 70 20 74 6F 70  5425 	.ascii "pop top"
      006646 0D                    5426 	.db 0x0d
      006647 0A                    5427 	.db 0x0a
      006648 00                    5428 	.db 0x00
                                   5429 	.area CSEG    (CODE)
                                   5430 	.area CONST   (CODE)
      006649                       5431 ___str_11:
      006649 56                    5432 	.ascii "V"
      00664A 09                    5433 	.db 0x09
      00664B 70 6F 70 20 61 6C 6C  5434 	.ascii "pop all"
      006652 0D                    5435 	.db 0x0d
      006653 0A                    5436 	.db 0x0a
      006654 00                    5437 	.db 0x00
                                   5438 	.area CSEG    (CODE)
                                   5439 	.area CONST   (CODE)
      006655                       5440 ___str_12:
      006655 69                    5441 	.ascii "i"
      006656 09                    5442 	.db 0x09
      006657 72 65 73 65 74 20 61  5443 	.ascii "reset acc"
             63 63
      006660 0D                    5444 	.db 0x0d
      006661 0A                    5445 	.db 0x0a
      006662 00                    5446 	.db 0x00
                                   5447 	.area CSEG    (CODE)
                                   5448 	.area CONST   (CODE)
      006663                       5449 ___str_13:
      006663 49                    5450 	.ascii "I"
      006664 09                    5451 	.db 0x09
      006665 72 65 73 65 74 20 61  5452 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      00667A 0D                    5453 	.db 0x0d
      00667B 0A                    5454 	.db 0x0a
      00667C 00                    5455 	.db 0x00
                                   5456 	.area CSEG    (CODE)
                                   5457 	.area CONST   (CODE)
      00667D                       5458 ___str_14:
      00667D 78                    5459 	.ascii "x"
      00667E 09                    5460 	.db 0x09
      00667F 65 78 63 68 61 6E 67  5461 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      00668D 0D                    5462 	.db 0x0d
      00668E 0A                    5463 	.db 0x0a
      00668F 00                    5464 	.db 0x00
                                   5465 	.area CSEG    (CODE)
                                   5466 	.area CONST   (CODE)
      006690                       5467 ___str_15:
      006690 2B                    5468 	.ascii "+"
      006691 09                    5469 	.db 0x09
      006692 61 64 64 20 74 6F 70  5470 	.ascii "add top 2"
             20 32
      00669B 0D                    5471 	.db 0x0d
      00669C 0A                    5472 	.db 0x0a
      00669D 00                    5473 	.db 0x00
                                   5474 	.area CSEG    (CODE)
                                   5475 	.area CONST   (CODE)
      00669E                       5476 ___str_16:
      00669E 2D                    5477 	.ascii "-"
      00669F 09                    5478 	.db 0x09
      0066A0 73 75 62 74 72 61 63  5479 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      0066AE 0D                    5480 	.db 0x0d
      0066AF 0A                    5481 	.db 0x0a
      0066B0 00                    5482 	.db 0x00
                                   5483 	.area CSEG    (CODE)
                                   5484 	.area CONST   (CODE)
      0066B1                       5485 ___str_17:
      0066B1 2A                    5486 	.ascii "*"
      0066B2 09                    5487 	.db 0x09
      0066B3 6D 75 6C 74 69 70 6C  5488 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      0066C1 0D                    5489 	.db 0x0d
      0066C2 0A                    5490 	.db 0x0a
      0066C3 00                    5491 	.db 0x00
                                   5492 	.area CSEG    (CODE)
                                   5493 	.area CONST   (CODE)
      0066C4                       5494 ___str_18:
      0066C4 2F                    5495 	.ascii "/"
      0066C5 09                    5496 	.db 0x09
      0066C6 64 69 76 69 64 65 20  5497 	.ascii "divide top 2"
             74 6F 70 20 32
      0066D2 0D                    5498 	.db 0x0d
      0066D3 0A                    5499 	.db 0x0a
      0066D4 00                    5500 	.db 0x00
                                   5501 	.area CSEG    (CODE)
                                   5502 	.area CONST   (CODE)
      0066D5                       5503 ___str_19:
      0066D5 25                    5504 	.ascii "%"
      0066D6 09                    5505 	.db 0x09
      0066D7 6D 6F 64 75 6C 75 73  5506 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      0066E4 0D                    5507 	.db 0x0d
      0066E5 0A                    5508 	.db 0x0a
      0066E6 00                    5509 	.db 0x00
                                   5510 	.area CSEG    (CODE)
                                   5511 	.area CONST   (CODE)
      0066E7                       5512 ___str_20:
      0066E7 26                    5513 	.ascii "&"
      0066E8 09                    5514 	.db 0x09
      0066E9 61 6E 64 20 74 6F 70  5515 	.ascii "and top 2"
             20 32
      0066F2 0D                    5516 	.db 0x0d
      0066F3 0A                    5517 	.db 0x0a
      0066F4 00                    5518 	.db 0x00
                                   5519 	.area CSEG    (CODE)
                                   5520 	.area CONST   (CODE)
      0066F5                       5521 ___str_21:
      0066F5 7C                    5522 	.ascii "|"
      0066F6 09                    5523 	.db 0x09
      0066F7 6F 72 20 74 6F 70 20  5524 	.ascii "or top 2"
             32
      0066FF 0D                    5525 	.db 0x0d
      006700 0A                    5526 	.db 0x0a
      006701 00                    5527 	.db 0x00
                                   5528 	.area CSEG    (CODE)
                                   5529 	.area CONST   (CODE)
      006702                       5530 ___str_22:
      006702 5E                    5531 	.ascii "^"
      006703 09                    5532 	.db 0x09
      006704 78 6F 72 20 74 6F 70  5533 	.ascii "xor top 2"
             20 32
      00670D 0D                    5534 	.db 0x0d
      00670E 0A                    5535 	.db 0x0a
      00670F 00                    5536 	.db 0x00
                                   5537 	.area CSEG    (CODE)
                                   5538 	.area CONST   (CODE)
      006710                       5539 ___str_23:
      006710 7E                    5540 	.ascii "~"
      006711 09                    5541 	.db 0x09
      006712 62 69 74 77 69 73 65  5542 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      006721 0D                    5543 	.db 0x0d
      006722 0A                    5544 	.db 0x0a
      006723 00                    5545 	.db 0x00
                                   5546 	.area CSEG    (CODE)
                                   5547 	.area CONST   (CODE)
      006724                       5548 ___str_24:
      006724 3F                    5549 	.ascii "?"
      006725 09                    5550 	.db 0x09
      006726 68 65 6C 70           5551 	.ascii "help"
      00672A 0D                    5552 	.db 0x0d
      00672B 0A                    5553 	.db 0x0a
      00672C 00                    5554 	.db 0x00
                                   5555 	.area CSEG    (CODE)
                                   5556 	.area CONST   (CODE)
      00672D                       5557 ___str_25:
      00672D 71                    5558 	.ascii "q"
      00672E 09                    5559 	.db 0x09
      00672F 71 75 69 74           5560 	.ascii "quit"
      006733 0D                    5561 	.db 0x0d
      006734 0A                    5562 	.db 0x0a
      006735 00                    5563 	.db 0x00
                                   5564 	.area CSEG    (CODE)
                                   5565 	.area CONST   (CODE)
      006736                       5566 ___str_26:
      006736 50 54 20 25 30 2E 38  5567 	.ascii "PT %0.8lx"
             6C 78
      00673F 0D                    5568 	.db 0x0d
      006740 0A                    5569 	.db 0x0a
      006741 00                    5570 	.db 0x00
                                   5571 	.area CSEG    (CODE)
                                   5572 	.area CONST   (CODE)
      006742                       5573 ___str_27:
      006742 50 54 20 25 6C 64     5574 	.ascii "PT %ld"
      006748 0D                    5575 	.db 0x0d
      006749 0A                    5576 	.db 0x0a
      00674A 00                    5577 	.db 0x00
                                   5578 	.area CSEG    (CODE)
                                   5579 	.area CONST   (CODE)
      00674B                       5580 ___str_28:
      00674B 50 41 20 25 30 2E 38  5581 	.ascii "PA %0.8lx"
             6C 78
      006754 0D                    5582 	.db 0x0d
      006755 0A                    5583 	.db 0x0a
      006756 00                    5584 	.db 0x00
                                   5585 	.area CSEG    (CODE)
                                   5586 	.area CONST   (CODE)
      006757                       5587 ___str_29:
      006757 50 41 20 25 6C 64     5588 	.ascii "PA %ld"
      00675D 0D                    5589 	.db 0x0d
      00675E 0A                    5590 	.db 0x0a
      00675F 00                    5591 	.db 0x00
                                   5592 	.area CSEG    (CODE)
                                   5593 	.area CONST   (CODE)
      006760                       5594 ___str_30:
      006760 56 54 20 25 30 2E 38  5595 	.ascii "VT %0.8lx"
             6C 78
      006769 0D                    5596 	.db 0x0d
      00676A 0A                    5597 	.db 0x0a
      00676B 00                    5598 	.db 0x00
                                   5599 	.area CSEG    (CODE)
                                   5600 	.area CONST   (CODE)
      00676C                       5601 ___str_31:
      00676C 56 54 20 25 6C 64     5602 	.ascii "VT %ld"
      006772 0D                    5603 	.db 0x0d
      006773 0A                    5604 	.db 0x0a
      006774 00                    5605 	.db 0x00
                                   5606 	.area CSEG    (CODE)
                                   5607 	.area CONST   (CODE)
      006775                       5608 ___str_32:
      006775 56 41 20 25 30 2E 38  5609 	.ascii "VA %0.8lx"
             6C 78
      00677E 0D                    5610 	.db 0x0d
      00677F 0A                    5611 	.db 0x0a
      006780 00                    5612 	.db 0x00
                                   5613 	.area CSEG    (CODE)
                                   5614 	.area CONST   (CODE)
      006781                       5615 ___str_33:
      006781 56 41 20 25 6C 64     5616 	.ascii "VA %ld"
      006787 0D                    5617 	.db 0x0d
      006788 0A                    5618 	.db 0x0a
      006789 00                    5619 	.db 0x00
                                   5620 	.area CSEG    (CODE)
                                   5621 	.area XINIT   (CODE)
      00679B                       5622 __xinit__hexp:
      00679B 36 67 80              5623 	.byte ___str_26, (___str_26 >> 8),#0x80
      00679E                       5624 __xinit__decp:
      00679E 42 67 80              5625 	.byte ___str_27, (___str_27 >> 8),#0x80
      0067A1                       5626 __xinit__hexP:
      0067A1 4B 67 80              5627 	.byte ___str_28, (___str_28 >> 8),#0x80
      0067A4                       5628 __xinit__decP:
      0067A4 57 67 80              5629 	.byte ___str_29, (___str_29 >> 8),#0x80
      0067A7                       5630 __xinit__hexv:
      0067A7 60 67 80              5631 	.byte ___str_30, (___str_30 >> 8),#0x80
      0067AA                       5632 __xinit__decv:
      0067AA 6C 67 80              5633 	.byte ___str_31, (___str_31 >> 8),#0x80
      0067AD                       5634 __xinit__hexV:
      0067AD 75 67 80              5635 	.byte ___str_32, (___str_32 >> 8),#0x80
      0067B0                       5636 __xinit__decV:
      0067B0 81 67 80              5637 	.byte ___str_33, (___str_33 >> 8),#0x80
      0067B3                       5638 __xinit__deltas:
      0067B3 00 00                 5639 	.byte #0x00, #0x00	;  0
      0067B5 00 00                 5640 	.byte #0x00, #0x00	;  0
      0067B7 00 00                 5641 	.byte #0x00, #0x00	;  0
      0067B9 00 00                 5642 	.byte #0x00,#0x00
      0067BB 00 00                 5643 	.byte #0x00,#0x00
      0067BD 00 00                 5644 	.byte #0x00, #0x00	;  0
      0067BF 01 00                 5645 	.byte #0x01, #0x00	;  1
      0067C1 02 00                 5646 	.byte #0x02, #0x00	;  2
      0067C3 00 00                 5647 	.byte #0x00,#0x00
      0067C5 E2 29                 5648 	.byte _accumulate, (_accumulate >> 8)
      0067C7 00 00                 5649 	.byte #0x00, #0x00	;  0
      0067C9 02 00                 5650 	.byte #0x02, #0x00	;  2
      0067CB 01 00                 5651 	.byte #0x01, #0x00	;  1
      0067CD 00 00                 5652 	.byte #0x00,#0x00
      0067CF AF 2D                 5653 	.byte _operator, (_operator >> 8)
      0067D1 01 00                 5654 	.byte #0x01, #0x00	;  1
      0067D3 00 00                 5655 	.byte #0x00, #0x00	;  0
      0067D5 00 00                 5656 	.byte #0x00, #0x00	;  0
      0067D7 00 00                 5657 	.byte #0x00,#0x00
      0067D9 00 00                 5658 	.byte #0x00,#0x00
      0067DB 01 00                 5659 	.byte #0x01, #0x00	;  1
      0067DD 02 00                 5660 	.byte #0x02, #0x00	;  2
      0067DF 01 00                 5661 	.byte #0x01, #0x00	;  1
      0067E1 00 00                 5662 	.byte #0x00,#0x00
      0067E3 AF 2D                 5663 	.byte _operator, (_operator >> 8)
      0067E5 01 00                 5664 	.byte #0x01, #0x00	;  1
      0067E7 01 00                 5665 	.byte #0x01, #0x00	;  1
      0067E9 02 00                 5666 	.byte #0x02, #0x00	;  2
      0067EB 00 00                 5667 	.byte #0x00,#0x00
      0067ED E2 29                 5668 	.byte _accumulate, (_accumulate >> 8)
      0067EF 02 00                 5669 	.byte #0x02, #0x00	;  2
      0067F1 00 00                 5670 	.byte #0x00, #0x00	;  0
      0067F3 00 00                 5671 	.byte #0x00, #0x00	;  0
      0067F5 00 00                 5672 	.byte #0x00,#0x00
      0067F7 C0 3E                 5673 	.byte _push_acc, (_push_acc >> 8)
      0067F9 02 00                 5674 	.byte #0x02, #0x00	;  2
      0067FB 05 00                 5675 	.byte #0x05, #0x00	;  5
      0067FD 00 00                 5676 	.byte #0x00, #0x00	;  0
      0067FF 00 00                 5677 	.byte #0x00,#0x00
      006801 C7 3F                 5678 	.byte _reset_acc, (_reset_acc >> 8)
      006803 02 00                 5679 	.byte #0x02, #0x00	;  2
      006805 01 00                 5680 	.byte #0x01, #0x00	;  1
      006807 02 00                 5681 	.byte #0x02, #0x00	;  2
      006809 00 00                 5682 	.byte #0x00,#0x00
      00680B E2 29                 5683 	.byte _accumulate, (_accumulate >> 8)
      00680D 02 00                 5684 	.byte #0x02, #0x00	;  2
      00680F 02 00                 5685 	.byte #0x02, #0x00	;  2
      006811 01 00                 5686 	.byte #0x01, #0x00	;  1
      006813 00 00                 5687 	.byte #0x00,#0x00
      006815 C0 3E                 5688 	.byte _push_acc, (_push_acc >> 8)
      006817 FF 7F                 5689 	.byte #0xff, #0x7f	;  32767
      006819 04 00                 5690 	.byte #0x04, #0x00	;  4
      00681B FF 7F                 5691 	.byte #0xff, #0x7f	;  32767
      00681D 00 00                 5692 	.byte #0x00,#0x00
      00681F C7 3F                 5693 	.byte _reset_acc, (_reset_acc >> 8)
      006821 FF 7F                 5694 	.byte #0xff, #0x7f	;  32767
      006823 05 00                 5695 	.byte #0x05, #0x00	;  5
      006825 FF 7F                 5696 	.byte #0xff, #0x7f	;  32767
      006827 00 00                 5697 	.byte #0x00,#0x00
      006829 00 00                 5698 	.byte #0x00,#0x00
      00682B FF 7F                 5699 	.byte #0xff, #0x7f	;  32767
      00682D 03 00                 5700 	.byte #0x03, #0x00	;  3
      00682F FF 7F                 5701 	.byte #0xff, #0x7f	;  32767
      006831 00 00                 5702 	.byte #0x00,#0x00
      006833 31 40                 5703 	.byte _help, (_help >> 8)
      006835 FF 7F                 5704 	.byte #0xff, #0x7f	;  32767
      006837 06 00                 5705 	.byte #0x06, #0x00	;  6
      006839 03 00                 5706 	.byte #0x03, #0x00	;  3
      00683B 00 00                 5707 	.byte #0x00,#0x00
      00683D 58 2B                 5708 	.byte _dump_pop, (_dump_pop >> 8)
      00683F 00 80                 5709 	.byte #0x00, #0x80	; -32768
      006841 00 80                 5710 	.byte #0x00, #0x80	; -32768
      006843 00 80                 5711 	.byte #0x00, #0x80	; -32768
      006845 00 00                 5712 	.byte #0x00,#0x00
      006847 00 00                 5713 	.byte #0x00,#0x00
                                   5714 	.area CABS    (ABS,CODE)
