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
      00A01B                        333 _deltas:
      00A01B                        334 	.ds 160
                                    335 	.area HOME    (CODE)
                                    336 	.area GSINIT0 (CODE)
                                    337 	.area GSINIT1 (CODE)
                                    338 	.area GSINIT2 (CODE)
                                    339 	.area GSINIT3 (CODE)
                                    340 	.area GSINIT4 (CODE)
                                    341 	.area GSINIT5 (CODE)
                                    342 	.area GSINIT  (CODE)
                                    343 	.area GSFINAL (CODE)
                                    344 	.area CSEG    (CODE)
                                    345 ;--------------------------------------------------------
                                    346 ; interrupt vector 
                                    347 ;--------------------------------------------------------
                                    348 	.area HOME    (CODE)
      002000                        349 __interrupt_vect:
      002000 02 20 34         [24]  350 	ljmp	__sdcc_gsinit_startup
                                    351 ;--------------------------------------------------------
                                    352 ; global & static initialisations
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
                                    355 	.area GSINIT  (CODE)
                                    356 	.area GSFINAL (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.globl __sdcc_gsinit_startup
                                    359 	.globl __sdcc_program_startup
                                    360 	.globl __start__stack
                                    361 	.globl __mcs51_genXINIT
                                    362 	.globl __mcs51_genXRAMCLEAR
                                    363 	.globl __mcs51_genRAMCLEAR
                                    364 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  365 	ljmp	__sdcc_program_startup
                                    366 ;--------------------------------------------------------
                                    367 ; Home
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
                                    370 	.area HOME    (CODE)
      002003                        371 __sdcc_program_startup:
      002003 02 4D 97         [24]  372 	ljmp	_main
                                    373 ;	return from main will return to caller
                                    374 ;--------------------------------------------------------
                                    375 ; code
                                    376 ;--------------------------------------------------------
                                    377 	.area CSEG    (CODE)
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'putchar'
                                    380 ;------------------------------------------------------------
                                    381 ;c                         Allocated to registers 
                                    382 ;------------------------------------------------------------
                                    383 ;	calc.c:15: int putchar(int c) __naked {
                                    384 ;	-----------------------------------------
                                    385 ;	 function putchar
                                    386 ;	-----------------------------------------
      0029C0                        387 _putchar:
                                    388 ;	naked function: no prologue.
                                    389 ;	calc.c:20: __endasm;
      0029C0 E5 82            [12]  390 	mov	a, dpl
      0029C2 02 00 30         [24]  391 	ljmp	0x0030
                                    392 ;	calc.c:21: }
                                    393 ;	naked function: no epilogue.
                                    394 ;------------------------------------------------------------
                                    395 ;Allocation info for local variables in function 'getchar'
                                    396 ;------------------------------------------------------------
                                    397 ;	calc.c:23: int getchar(void) __naked {
                                    398 ;	-----------------------------------------
                                    399 ;	 function getchar
                                    400 ;	-----------------------------------------
      0029C5                        401 _getchar:
                                    402 ;	naked function: no prologue.
                                    403 ;	calc.c:29: __endasm;
      0029C5 12 00 32         [24]  404 	lcall	0x0032
      0029C8 F5 82            [12]  405 	mov	dpl, a
      0029CA 75 83 00         [24]  406 	mov	dph, #0
      0029CD 22               [24]  407 	ret
                                    408 ;	calc.c:30: }
                                    409 ;	naked function: no epilogue.
                                    410 ;------------------------------------------------------------
                                    411 ;Allocation info for local variables in function 'getchar_poll'
                                    412 ;------------------------------------------------------------
                                    413 ;	calc.c:32: int getchar_poll(void) __naked {
                                    414 ;	-----------------------------------------
                                    415 ;	 function getchar_poll
                                    416 ;	-----------------------------------------
      0029CE                        417 _getchar_poll:
                                    418 ;	naked function: no prologue.
                                    419 ;	calc.c:44: __endasm;
      0029CE 74 FF            [12]  420 	mov	a, #0xff
      0029D0 F5 F0            [12]  421 	mov	b, a
      0029D2 30 98 07         [24]  422 	jnb	ri, nochar
      0029D5 C2 98            [12]  423 	clr	ri
      0029D7 E5 99            [12]  424 	mov	a, sbuf
      0029D9 75 F0 00         [24]  425 	mov	b, #0
      0029DC                        426 	nochar:
      0029DC F5 82            [12]  427 	mov	dpl, a
      0029DE 85 F0 83         [24]  428 	mov	dph, b
      0029E1 22               [24]  429 	ret
                                    430 ;	calc.c:45: }
                                    431 ;	naked function: no epilogue.
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'accumulate'
                                    434 ;------------------------------------------------------------
                                    435 ;delta                     Allocated to stack - _bp -5
                                    436 ;_ctx                      Allocated to registers r5 r6 r7 
                                    437 ;ctx                       Allocated to stack - _bp +8
                                    438 ;d                         Allocated to stack - _bp +11
                                    439 ;sloc0                     Allocated to stack - _bp +1
                                    440 ;sloc1                     Allocated to stack - _bp +4
                                    441 ;------------------------------------------------------------
                                    442 ;	calc.c:84: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
                                    443 ;	-----------------------------------------
                                    444 ;	 function accumulate
                                    445 ;	-----------------------------------------
      0029E2                        446 _accumulate:
                           000007   447 	ar7 = 0x07
                           000006   448 	ar6 = 0x06
                           000005   449 	ar5 = 0x05
                           000004   450 	ar4 = 0x04
                           000003   451 	ar3 = 0x03
                           000002   452 	ar2 = 0x02
                           000001   453 	ar1 = 0x01
                           000000   454 	ar0 = 0x00
      0029E2 C0 08            [24]  455 	push	_bp
      0029E4 E5 81            [12]  456 	mov	a,sp
      0029E6 F5 08            [12]  457 	mov	_bp,a
      0029E8 24 0E            [12]  458 	add	a,#0x0e
      0029EA F5 81            [12]  459 	mov	sp,a
      0029EC AD 82            [24]  460 	mov	r5,dpl
      0029EE AE 83            [24]  461 	mov	r6,dph
      0029F0 AF F0            [24]  462 	mov	r7,b
                                    463 ;	calc.c:85: struct ctx *ctx = (struct ctx *)_ctx;
      0029F2 E5 08            [12]  464 	mov	a,_bp
      0029F4 24 08            [12]  465 	add	a,#0x08
      0029F6 F8               [12]  466 	mov	r0,a
      0029F7 A6 05            [24]  467 	mov	@r0,ar5
      0029F9 08               [12]  468 	inc	r0
      0029FA A6 06            [24]  469 	mov	@r0,ar6
      0029FC 08               [12]  470 	inc	r0
      0029FD A6 07            [24]  471 	mov	@r0,ar7
                                    472 ;	calc.c:90: if (!ctx->acc_valid) {
      0029FF E5 08            [12]  473 	mov	a,_bp
      002A01 24 08            [12]  474 	add	a,#0x08
      002A03 F8               [12]  475 	mov	r0,a
      002A04 74 06            [12]  476 	mov	a,#0x06
      002A06 26               [12]  477 	add	a,@r0
      002A07 FA               [12]  478 	mov	r2,a
      002A08 E4               [12]  479 	clr	a
      002A09 08               [12]  480 	inc	r0
      002A0A 36               [12]  481 	addc	a,@r0
      002A0B FB               [12]  482 	mov	r3,a
      002A0C 08               [12]  483 	inc	r0
      002A0D 86 04            [24]  484 	mov	ar4,@r0
      002A0F 8A 82            [24]  485 	mov	dpl,r2
      002A11 8B 83            [24]  486 	mov	dph,r3
      002A13 8C F0            [24]  487 	mov	b,r4
      002A15 12 57 E4         [24]  488 	lcall	__gptrget
      002A18 70 31            [24]  489 	jnz	00102$
                                    490 ;	calc.c:91: ctx->acc_valid = 1;
      002A1A 8A 82            [24]  491 	mov	dpl,r2
      002A1C 8B 83            [24]  492 	mov	dph,r3
      002A1E 8C F0            [24]  493 	mov	b,r4
      002A20 74 01            [12]  494 	mov	a,#0x01
      002A22 12 53 69         [24]  495 	lcall	__gptrput
                                    496 ;	calc.c:92: ctx->acc = 0l;
      002A25 E5 08            [12]  497 	mov	a,_bp
      002A27 24 08            [12]  498 	add	a,#0x08
      002A29 F8               [12]  499 	mov	r0,a
      002A2A 74 02            [12]  500 	mov	a,#0x02
      002A2C 26               [12]  501 	add	a,@r0
      002A2D FA               [12]  502 	mov	r2,a
      002A2E E4               [12]  503 	clr	a
      002A2F 08               [12]  504 	inc	r0
      002A30 36               [12]  505 	addc	a,@r0
      002A31 FB               [12]  506 	mov	r3,a
      002A32 08               [12]  507 	inc	r0
      002A33 86 04            [24]  508 	mov	ar4,@r0
      002A35 8A 82            [24]  509 	mov	dpl,r2
      002A37 8B 83            [24]  510 	mov	dph,r3
      002A39 8C F0            [24]  511 	mov	b,r4
      002A3B E4               [12]  512 	clr	a
      002A3C 12 53 69         [24]  513 	lcall	__gptrput
      002A3F A3               [24]  514 	inc	dptr
      002A40 12 53 69         [24]  515 	lcall	__gptrput
      002A43 A3               [24]  516 	inc	dptr
      002A44 12 53 69         [24]  517 	lcall	__gptrput
      002A47 A3               [24]  518 	inc	dptr
      002A48 12 53 69         [24]  519 	lcall	__gptrput
      002A4B                        520 00102$:
                                    521 ;	calc.c:95: d = strtol(ctx->digit, NULL, ctx->base);
      002A4B E5 08            [12]  522 	mov	a,_bp
      002A4D 24 08            [12]  523 	add	a,#0x08
      002A4F F8               [12]  524 	mov	r0,a
      002A50 86 82            [24]  525 	mov	dpl,@r0
      002A52 08               [12]  526 	inc	r0
      002A53 86 83            [24]  527 	mov	dph,@r0
      002A55 08               [12]  528 	inc	r0
      002A56 86 F0            [24]  529 	mov	b,@r0
      002A58 12 57 E4         [24]  530 	lcall	__gptrget
      002A5B FB               [12]  531 	mov	r3,a
      002A5C A3               [24]  532 	inc	dptr
      002A5D 12 57 E4         [24]  533 	lcall	__gptrget
      002A60 FC               [12]  534 	mov	r4,a
      002A61 E5 08            [12]  535 	mov	a,_bp
      002A63 24 08            [12]  536 	add	a,#0x08
      002A65 F8               [12]  537 	mov	r0,a
      002A66 74 07            [12]  538 	mov	a,#0x07
      002A68 26               [12]  539 	add	a,@r0
      002A69 FA               [12]  540 	mov	r2,a
      002A6A E4               [12]  541 	clr	a
      002A6B 08               [12]  542 	inc	r0
      002A6C 36               [12]  543 	addc	a,@r0
      002A6D FE               [12]  544 	mov	r6,a
      002A6E 08               [12]  545 	inc	r0
      002A6F 86 07            [24]  546 	mov	ar7,@r0
      002A71 C0 03            [24]  547 	push	ar3
      002A73 C0 04            [24]  548 	push	ar4
      002A75 E4               [12]  549 	clr	a
      002A76 C0 E0            [24]  550 	push	acc
      002A78 C0 E0            [24]  551 	push	acc
      002A7A C0 E0            [24]  552 	push	acc
      002A7C 8A 82            [24]  553 	mov	dpl,r2
      002A7E 8E 83            [24]  554 	mov	dph,r6
      002A80 8F F0            [24]  555 	mov	b,r7
      002A82 12 51 2B         [24]  556 	lcall	_strtol
      002A85 C8               [12]  557 	xch	a,r0
      002A86 E5 08            [12]  558 	mov	a,_bp
      002A88 24 0B            [12]  559 	add	a,#0x0b
      002A8A C8               [12]  560 	xch	a,r0
      002A8B A6 82            [24]  561 	mov	@r0,dpl
      002A8D 08               [12]  562 	inc	r0
      002A8E A6 83            [24]  563 	mov	@r0,dph
      002A90 08               [12]  564 	inc	r0
      002A91 A6 F0            [24]  565 	mov	@r0,b
      002A93 08               [12]  566 	inc	r0
      002A94 F6               [12]  567 	mov	@r0,a
      002A95 E5 81            [12]  568 	mov	a,sp
      002A97 24 FB            [12]  569 	add	a,#0xfb
      002A99 F5 81            [12]  570 	mov	sp,a
                                    571 ;	calc.c:96: ctx->acc = ctx->acc * (long)ctx->base + d;
      002A9B E5 08            [12]  572 	mov	a,_bp
      002A9D 24 08            [12]  573 	add	a,#0x08
      002A9F F8               [12]  574 	mov	r0,a
      002AA0 A9 08            [24]  575 	mov	r1,_bp
      002AA2 09               [12]  576 	inc	r1
      002AA3 74 02            [12]  577 	mov	a,#0x02
      002AA5 26               [12]  578 	add	a,@r0
      002AA6 F7               [12]  579 	mov	@r1,a
      002AA7 E4               [12]  580 	clr	a
      002AA8 08               [12]  581 	inc	r0
      002AA9 36               [12]  582 	addc	a,@r0
      002AAA 09               [12]  583 	inc	r1
      002AAB F7               [12]  584 	mov	@r1,a
      002AAC 08               [12]  585 	inc	r0
      002AAD 09               [12]  586 	inc	r1
      002AAE E6               [12]  587 	mov	a,@r0
      002AAF F7               [12]  588 	mov	@r1,a
      002AB0 A8 08            [24]  589 	mov	r0,_bp
      002AB2 08               [12]  590 	inc	r0
      002AB3 86 82            [24]  591 	mov	dpl,@r0
      002AB5 08               [12]  592 	inc	r0
      002AB6 86 83            [24]  593 	mov	dph,@r0
      002AB8 08               [12]  594 	inc	r0
      002AB9 86 F0            [24]  595 	mov	b,@r0
      002ABB E5 08            [12]  596 	mov	a,_bp
      002ABD 24 04            [12]  597 	add	a,#0x04
      002ABF F9               [12]  598 	mov	r1,a
      002AC0 12 57 E4         [24]  599 	lcall	__gptrget
      002AC3 F7               [12]  600 	mov	@r1,a
      002AC4 A3               [24]  601 	inc	dptr
      002AC5 12 57 E4         [24]  602 	lcall	__gptrget
      002AC8 09               [12]  603 	inc	r1
      002AC9 F7               [12]  604 	mov	@r1,a
      002ACA A3               [24]  605 	inc	dptr
      002ACB 12 57 E4         [24]  606 	lcall	__gptrget
      002ACE 09               [12]  607 	inc	r1
      002ACF F7               [12]  608 	mov	@r1,a
      002AD0 A3               [24]  609 	inc	dptr
      002AD1 12 57 E4         [24]  610 	lcall	__gptrget
      002AD4 09               [12]  611 	inc	r1
      002AD5 F7               [12]  612 	mov	@r1,a
      002AD6 E5 08            [12]  613 	mov	a,_bp
      002AD8 24 08            [12]  614 	add	a,#0x08
      002ADA F8               [12]  615 	mov	r0,a
      002ADB 86 82            [24]  616 	mov	dpl,@r0
      002ADD 08               [12]  617 	inc	r0
      002ADE 86 83            [24]  618 	mov	dph,@r0
      002AE0 08               [12]  619 	inc	r0
      002AE1 86 F0            [24]  620 	mov	b,@r0
      002AE3 12 57 E4         [24]  621 	lcall	__gptrget
      002AE6 FA               [12]  622 	mov	r2,a
      002AE7 A3               [24]  623 	inc	dptr
      002AE8 12 57 E4         [24]  624 	lcall	__gptrget
      002AEB FB               [12]  625 	mov	r3,a
      002AEC 33               [12]  626 	rlc	a
      002AED 95 E0            [12]  627 	subb	a,acc
      002AEF FE               [12]  628 	mov	r6,a
      002AF0 FF               [12]  629 	mov	r7,a
      002AF1 C0 02            [24]  630 	push	ar2
      002AF3 C0 03            [24]  631 	push	ar3
      002AF5 C0 06            [24]  632 	push	ar6
      002AF7 C0 07            [24]  633 	push	ar7
      002AF9 E5 08            [12]  634 	mov	a,_bp
      002AFB 24 04            [12]  635 	add	a,#0x04
      002AFD F8               [12]  636 	mov	r0,a
      002AFE 86 82            [24]  637 	mov	dpl,@r0
      002B00 08               [12]  638 	inc	r0
      002B01 86 83            [24]  639 	mov	dph,@r0
      002B03 08               [12]  640 	inc	r0
      002B04 86 F0            [24]  641 	mov	b,@r0
      002B06 08               [12]  642 	inc	r0
      002B07 E6               [12]  643 	mov	a,@r0
      002B08 12 5B DD         [24]  644 	lcall	__mullong
      002B0B AC 82            [24]  645 	mov	r4,dpl
      002B0D AD 83            [24]  646 	mov	r5,dph
      002B0F AE F0            [24]  647 	mov	r6,b
      002B11 FF               [12]  648 	mov	r7,a
      002B12 E5 81            [12]  649 	mov	a,sp
      002B14 24 FC            [12]  650 	add	a,#0xfc
      002B16 F5 81            [12]  651 	mov	sp,a
      002B18 E5 08            [12]  652 	mov	a,_bp
      002B1A 24 0B            [12]  653 	add	a,#0x0b
      002B1C F8               [12]  654 	mov	r0,a
      002B1D E6               [12]  655 	mov	a,@r0
      002B1E 2C               [12]  656 	add	a,r4
      002B1F FC               [12]  657 	mov	r4,a
      002B20 08               [12]  658 	inc	r0
      002B21 E6               [12]  659 	mov	a,@r0
      002B22 3D               [12]  660 	addc	a,r5
      002B23 FD               [12]  661 	mov	r5,a
      002B24 08               [12]  662 	inc	r0
      002B25 E6               [12]  663 	mov	a,@r0
      002B26 3E               [12]  664 	addc	a,r6
      002B27 FE               [12]  665 	mov	r6,a
      002B28 08               [12]  666 	inc	r0
      002B29 E6               [12]  667 	mov	a,@r0
      002B2A 3F               [12]  668 	addc	a,r7
      002B2B FF               [12]  669 	mov	r7,a
      002B2C A8 08            [24]  670 	mov	r0,_bp
      002B2E 08               [12]  671 	inc	r0
      002B2F 86 82            [24]  672 	mov	dpl,@r0
      002B31 08               [12]  673 	inc	r0
      002B32 86 83            [24]  674 	mov	dph,@r0
      002B34 08               [12]  675 	inc	r0
      002B35 86 F0            [24]  676 	mov	b,@r0
      002B37 EC               [12]  677 	mov	a,r4
      002B38 12 53 69         [24]  678 	lcall	__gptrput
      002B3B A3               [24]  679 	inc	dptr
      002B3C ED               [12]  680 	mov	a,r5
      002B3D 12 53 69         [24]  681 	lcall	__gptrput
      002B40 A3               [24]  682 	inc	dptr
      002B41 EE               [12]  683 	mov	a,r6
      002B42 12 53 69         [24]  684 	lcall	__gptrput
      002B45 A3               [24]  685 	inc	dptr
      002B46 EF               [12]  686 	mov	a,r7
      002B47 12 53 69         [24]  687 	lcall	__gptrput
                                    688 ;	calc.c:98: return 1;
      002B4A 90 00 01         [24]  689 	mov	dptr,#0x0001
                                    690 ;	calc.c:99: }
      002B4D 85 08 81         [24]  691 	mov	sp,_bp
      002B50 D0 08            [24]  692 	pop	_bp
      002B52 22               [24]  693 	ret
                                    694 ;------------------------------------------------------------
                                    695 ;Allocation info for local variables in function 'dump_pop'
                                    696 ;------------------------------------------------------------
                                    697 ;delta                     Allocated to stack - _bp -5
                                    698 ;_ctx                      Allocated to registers r5 r6 r7 
                                    699 ;ctx                       Allocated to stack - _bp +5
                                    700 ;d                         Allocated to stack - _bp +8
                                    701 ;r                         Allocated to stack - _bp +2
                                    702 ;__1310720001              Allocated to registers 
                                    703 ;s                         Allocated to registers r5 r6 r7 
                                    704 ;__1966080003              Allocated to registers 
                                    705 ;s                         Allocated to registers r4 r5 r6 
                                    706 ;__1966080005              Allocated to registers 
                                    707 ;s                         Allocated to registers r4 r5 r6 
                                    708 ;__1966080007              Allocated to registers r3 r4 r5 r6 
                                    709 ;d                         Allocated to stack - _bp +12
                                    710 ;mask                      Allocated to stack - _bp +16
                                    711 ;__1966080009              Allocated to registers 
                                    712 ;s                         Allocated to registers r4 r5 r6 
                                    713 ;sloc0                     Allocated to stack - _bp +1
                                    714 ;sloc1                     Allocated to stack - _bp +2
                                    715 ;------------------------------------------------------------
                                    716 ;	calc.c:101: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    717 ;	-----------------------------------------
                                    718 ;	 function dump_pop
                                    719 ;	-----------------------------------------
      002B53                        720 _dump_pop:
      002B53 C0 08            [24]  721 	push	_bp
      002B55 E5 81            [12]  722 	mov	a,sp
      002B57 F5 08            [12]  723 	mov	_bp,a
      002B59 24 13            [12]  724 	add	a,#0x13
      002B5B F5 81            [12]  725 	mov	sp,a
      002B5D AD 82            [24]  726 	mov	r5,dpl
      002B5F AE 83            [24]  727 	mov	r6,dph
      002B61 AF F0            [24]  728 	mov	r7,b
                                    729 ;	calc.c:102: struct ctx *ctx = (struct ctx *)_ctx;
      002B63 E5 08            [12]  730 	mov	a,_bp
      002B65 24 05            [12]  731 	add	a,#0x05
      002B67 F8               [12]  732 	mov	r0,a
      002B68 A6 05            [24]  733 	mov	@r0,ar5
      002B6A 08               [12]  734 	inc	r0
      002B6B A6 06            [24]  735 	mov	@r0,ar6
      002B6D 08               [12]  736 	inc	r0
      002B6E A6 07            [24]  737 	mov	@r0,ar7
                                    738 ;	calc.c:106: if (delta->event == EVENT_TERM) printstr("\r\n");
      002B70 E5 08            [12]  739 	mov	a,_bp
      002B72 24 FB            [12]  740 	add	a,#0xfb
      002B74 F8               [12]  741 	mov	r0,a
      002B75 86 02            [24]  742 	mov	ar2,@r0
      002B77 08               [12]  743 	inc	r0
      002B78 86 03            [24]  744 	mov	ar3,@r0
      002B7A 08               [12]  745 	inc	r0
      002B7B 86 04            [24]  746 	mov	ar4,@r0
      002B7D 74 02            [12]  747 	mov	a,#0x02
      002B7F 2A               [12]  748 	add	a,r2
      002B80 FA               [12]  749 	mov	r2,a
      002B81 E4               [12]  750 	clr	a
      002B82 3B               [12]  751 	addc	a,r3
      002B83 FB               [12]  752 	mov	r3,a
      002B84 8A 82            [24]  753 	mov	dpl,r2
      002B86 8B 83            [24]  754 	mov	dph,r3
      002B88 8C F0            [24]  755 	mov	b,r4
      002B8A 12 57 E4         [24]  756 	lcall	__gptrget
      002B8D FE               [12]  757 	mov	r6,a
      002B8E A3               [24]  758 	inc	dptr
      002B8F 12 57 E4         [24]  759 	lcall	__gptrget
      002B92 FF               [12]  760 	mov	r7,a
      002B93 BE 07 3D         [24]  761 	cjne	r6,#0x07,00102$
      002B96 BF 00 3A         [24]  762 	cjne	r7,#0x00,00102$
      002B99 7D 65            [12]  763 	mov	r5,#___str_0
      002B9B 7E 70            [12]  764 	mov	r6,#(___str_0 >> 8)
      002B9D 7F 80            [12]  765 	mov	r7,#0x80
                                    766 ;	calc.c:50: return;
      002B9F                        767 00122$:
                                    768 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002B9F 8D 82            [24]  769 	mov	dpl,r5
      002BA1 8E 83            [24]  770 	mov	dph,r6
      002BA3 8F F0            [24]  771 	mov	b,r7
      002BA5 A8 08            [24]  772 	mov	r0,_bp
      002BA7 08               [12]  773 	inc	r0
      002BA8 12 57 E4         [24]  774 	lcall	__gptrget
      002BAB F6               [12]  775 	mov	@r0,a
      002BAC A8 08            [24]  776 	mov	r0,_bp
      002BAE 08               [12]  777 	inc	r0
      002BAF E6               [12]  778 	mov	a,@r0
      002BB0 60 21            [24]  779 	jz	00102$
      002BB2 C0 02            [24]  780 	push	ar2
      002BB4 C0 03            [24]  781 	push	ar3
      002BB6 C0 04            [24]  782 	push	ar4
      002BB8 A8 08            [24]  783 	mov	r0,_bp
      002BBA 08               [12]  784 	inc	r0
      002BBB 86 03            [24]  785 	mov	ar3,@r0
      002BBD 7C 00            [12]  786 	mov	r4,#0x00
      002BBF 8B 82            [24]  787 	mov	dpl,r3
      002BC1 8C 83            [24]  788 	mov	dph,r4
      002BC3 12 29 C0         [24]  789 	lcall	_putchar
      002BC6 0D               [12]  790 	inc	r5
      002BC7 BD 00 01         [24]  791 	cjne	r5,#0x00,00210$
      002BCA 0E               [12]  792 	inc	r6
      002BCB                        793 00210$:
      002BCB D0 04            [24]  794 	pop	ar4
      002BCD D0 03            [24]  795 	pop	ar3
      002BCF D0 02            [24]  796 	pop	ar2
                                    797 ;	calc.c:106: if (delta->event == EVENT_TERM) printstr("\r\n");
      002BD1 80 CC            [24]  798 	sjmp	00122$
      002BD3                        799 00102$:
                                    800 ;	calc.c:108: r = stack_pop(&ctx->s, &d);
      002BD3 C0 02            [24]  801 	push	ar2
      002BD5 C0 03            [24]  802 	push	ar3
      002BD7 C0 04            [24]  803 	push	ar4
      002BD9 E5 08            [12]  804 	mov	a,_bp
      002BDB 24 08            [12]  805 	add	a,#0x08
      002BDD FF               [12]  806 	mov	r7,a
      002BDE A8 08            [24]  807 	mov	r0,_bp
      002BE0 08               [12]  808 	inc	r0
      002BE1 08               [12]  809 	inc	r0
      002BE2 A6 07            [24]  810 	mov	@r0,ar7
      002BE4 08               [12]  811 	inc	r0
      002BE5 76 00            [12]  812 	mov	@r0,#0x00
      002BE7 08               [12]  813 	inc	r0
      002BE8 76 40            [12]  814 	mov	@r0,#0x40
      002BEA E5 08            [12]  815 	mov	a,_bp
      002BEC 24 05            [12]  816 	add	a,#0x05
      002BEE F8               [12]  817 	mov	r0,a
      002BEF 74 09            [12]  818 	mov	a,#0x09
      002BF1 26               [12]  819 	add	a,@r0
      002BF2 FA               [12]  820 	mov	r2,a
      002BF3 E4               [12]  821 	clr	a
      002BF4 08               [12]  822 	inc	r0
      002BF5 36               [12]  823 	addc	a,@r0
      002BF6 FB               [12]  824 	mov	r3,a
      002BF7 08               [12]  825 	inc	r0
      002BF8 86 06            [24]  826 	mov	ar6,@r0
      002BFA C0 07            [24]  827 	push	ar7
      002BFC C0 04            [24]  828 	push	ar4
      002BFE C0 03            [24]  829 	push	ar3
      002C00 C0 02            [24]  830 	push	ar2
      002C02 A8 08            [24]  831 	mov	r0,_bp
      002C04 08               [12]  832 	inc	r0
      002C05 08               [12]  833 	inc	r0
      002C06 E6               [12]  834 	mov	a,@r0
      002C07 C0 E0            [24]  835 	push	acc
      002C09 08               [12]  836 	inc	r0
      002C0A E6               [12]  837 	mov	a,@r0
      002C0B C0 E0            [24]  838 	push	acc
      002C0D 08               [12]  839 	inc	r0
      002C0E E6               [12]  840 	mov	a,@r0
      002C0F C0 E0            [24]  841 	push	acc
      002C11 8A 82            [24]  842 	mov	dpl,r2
      002C13 8B 83            [24]  843 	mov	dph,r3
      002C15 8E F0            [24]  844 	mov	b,r6
      002C17 12 27 7F         [24]  845 	lcall	_stack_pop
      002C1A AD 82            [24]  846 	mov	r5,dpl
      002C1C AE 83            [24]  847 	mov	r6,dph
      002C1E 15 81            [12]  848 	dec	sp
      002C20 15 81            [12]  849 	dec	sp
      002C22 15 81            [12]  850 	dec	sp
      002C24 D0 02            [24]  851 	pop	ar2
      002C26 D0 03            [24]  852 	pop	ar3
      002C28 D0 04            [24]  853 	pop	ar4
      002C2A D0 07            [24]  854 	pop	ar7
      002C2C A8 08            [24]  855 	mov	r0,_bp
      002C2E 08               [12]  856 	inc	r0
      002C2F 08               [12]  857 	inc	r0
      002C30 A6 05            [24]  858 	mov	@r0,ar5
      002C32 08               [12]  859 	inc	r0
      002C33 A6 06            [24]  860 	mov	@r0,ar6
                                    861 ;	calc.c:109: if (!r) {
      002C35 D0 04            [24]  862 	pop	ar4
      002C37 D0 03            [24]  863 	pop	ar3
      002C39 D0 02            [24]  864 	pop	ar2
      002C3B ED               [12]  865 	mov	a,r5
      002C3C 4E               [12]  866 	orl	a,r6
      002C3D 70 3D            [24]  867 	jnz	00154$
                                    868 ;	calc.c:110: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002C3F 8A 82            [24]  869 	mov	dpl,r2
      002C41 8B 83            [24]  870 	mov	dph,r3
      002C43 8C F0            [24]  871 	mov	b,r4
      002C45 12 57 E4         [24]  872 	lcall	__gptrget
      002C48 FA               [12]  873 	mov	r2,a
      002C49 A3               [24]  874 	inc	dptr
      002C4A 12 57 E4         [24]  875 	lcall	__gptrget
      002C4D FB               [12]  876 	mov	r3,a
      002C4E BA 07 06         [24]  877 	cjne	r2,#0x07,00212$
      002C51 BB 00 03         [24]  878 	cjne	r3,#0x00,00212$
      002C54 02 2D FE         [24]  879 	ljmp	00110$
      002C57                        880 00212$:
      002C57 7C 68            [12]  881 	mov	r4,#___str_1
      002C59 7D 70            [12]  882 	mov	r5,#(___str_1 >> 8)
      002C5B 7E 80            [12]  883 	mov	r6,#0x80
                                    884 ;	calc.c:50: return;
      002C5D                        885 00125$:
                                    886 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002C5D 8C 82            [24]  887 	mov	dpl,r4
      002C5F 8D 83            [24]  888 	mov	dph,r5
      002C61 8E F0            [24]  889 	mov	b,r6
      002C63 12 57 E4         [24]  890 	lcall	__gptrget
      002C66 FB               [12]  891 	mov	r3,a
      002C67 70 03            [24]  892 	jnz	00213$
      002C69 02 2D FE         [24]  893 	ljmp	00110$
      002C6C                        894 00213$:
      002C6C 7A 00            [12]  895 	mov	r2,#0x00
      002C6E 8B 82            [24]  896 	mov	dpl,r3
      002C70 8A 83            [24]  897 	mov	dph,r2
      002C72 12 29 C0         [24]  898 	lcall	_putchar
      002C75 0C               [12]  899 	inc	r4
                                    900 ;	calc.c:111: } else while (r > 0) {
      002C76 BC 00 E4         [24]  901 	cjne	r4,#0x00,00125$
      002C79 0D               [12]  902 	inc	r5
      002C7A 80 E1            [24]  903 	sjmp	00125$
      002C7C                        904 00154$:
      002C7C                        905 00105$:
      002C7C A8 08            [24]  906 	mov	r0,_bp
      002C7E 08               [12]  907 	inc	r0
      002C7F 08               [12]  908 	inc	r0
      002C80 C3               [12]  909 	clr	c
      002C81 E4               [12]  910 	clr	a
      002C82 96               [12]  911 	subb	a,@r0
      002C83 74 80            [12]  912 	mov	a,#(0x00 ^ 0x80)
      002C85 08               [12]  913 	inc	r0
      002C86 86 F0            [24]  914 	mov	b,@r0
      002C88 63 F0 80         [24]  915 	xrl	b,#0x80
      002C8B 95 F0            [12]  916 	subb	a,b
      002C8D 40 03            [24]  917 	jc	00215$
      002C8F 02 2D FE         [24]  918 	ljmp	00110$
      002C92                        919 00215$:
                                    920 ;	calc.c:112: printstr("VA ");
      002C92 7C 7A            [12]  921 	mov	r4,#___str_2
      002C94 7D 70            [12]  922 	mov	r5,#(___str_2 >> 8)
      002C96 7E 80            [12]  923 	mov	r6,#0x80
                                    924 ;	calc.c:50: return;
      002C98                        925 00128$:
                                    926 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002C98 8C 82            [24]  927 	mov	dpl,r4
      002C9A 8D 83            [24]  928 	mov	dph,r5
      002C9C 8E F0            [24]  929 	mov	b,r6
      002C9E 12 57 E4         [24]  930 	lcall	__gptrget
      002CA1 FB               [12]  931 	mov	r3,a
      002CA2 60 10            [24]  932 	jz	00116$
      002CA4 7A 00            [12]  933 	mov	r2,#0x00
      002CA6 8B 82            [24]  934 	mov	dpl,r3
      002CA8 8A 83            [24]  935 	mov	dph,r2
      002CAA 12 29 C0         [24]  936 	lcall	_putchar
      002CAD 0C               [12]  937 	inc	r4
                                    938 ;	calc.c:112: printstr("VA ");
      002CAE BC 00 E7         [24]  939 	cjne	r4,#0x00,00128$
      002CB1 0D               [12]  940 	inc	r5
      002CB2 80 E4            [24]  941 	sjmp	00128$
      002CB4                        942 00116$:
                                    943 ;	calc.c:113: printf("% 11ld / ", d);
      002CB4 C0 07            [24]  944 	push	ar7
      002CB6 E5 08            [12]  945 	mov	a,_bp
      002CB8 24 08            [12]  946 	add	a,#0x08
      002CBA F8               [12]  947 	mov	r0,a
      002CBB E6               [12]  948 	mov	a,@r0
      002CBC C0 E0            [24]  949 	push	acc
      002CBE 08               [12]  950 	inc	r0
      002CBF E6               [12]  951 	mov	a,@r0
      002CC0 C0 E0            [24]  952 	push	acc
      002CC2 08               [12]  953 	inc	r0
      002CC3 E6               [12]  954 	mov	a,@r0
      002CC4 C0 E0            [24]  955 	push	acc
      002CC6 08               [12]  956 	inc	r0
      002CC7 E6               [12]  957 	mov	a,@r0
      002CC8 C0 E0            [24]  958 	push	acc
      002CCA 74 7E            [12]  959 	mov	a,#___str_3
      002CCC C0 E0            [24]  960 	push	acc
      002CCE 74 70            [12]  961 	mov	a,#(___str_3 >> 8)
      002CD0 C0 E0            [24]  962 	push	acc
      002CD2 74 80            [12]  963 	mov	a,#0x80
      002CD4 C0 E0            [24]  964 	push	acc
      002CD6 12 57 AB         [24]  965 	lcall	_printf
      002CD9 E5 81            [12]  966 	mov	a,sp
      002CDB 24 F9            [12]  967 	add	a,#0xf9
      002CDD F5 81            [12]  968 	mov	sp,a
                                    969 ;	calc.c:114: printf("%08lx / ", d);
      002CDF E5 08            [12]  970 	mov	a,_bp
      002CE1 24 08            [12]  971 	add	a,#0x08
      002CE3 F8               [12]  972 	mov	r0,a
      002CE4 E6               [12]  973 	mov	a,@r0
      002CE5 C0 E0            [24]  974 	push	acc
      002CE7 08               [12]  975 	inc	r0
      002CE8 E6               [12]  976 	mov	a,@r0
      002CE9 C0 E0            [24]  977 	push	acc
      002CEB 08               [12]  978 	inc	r0
      002CEC E6               [12]  979 	mov	a,@r0
      002CED C0 E0            [24]  980 	push	acc
      002CEF 08               [12]  981 	inc	r0
      002CF0 E6               [12]  982 	mov	a,@r0
      002CF1 C0 E0            [24]  983 	push	acc
      002CF3 74 88            [12]  984 	mov	a,#___str_4
      002CF5 C0 E0            [24]  985 	push	acc
      002CF7 74 70            [12]  986 	mov	a,#(___str_4 >> 8)
      002CF9 C0 E0            [24]  987 	push	acc
      002CFB 74 80            [12]  988 	mov	a,#0x80
      002CFD C0 E0            [24]  989 	push	acc
      002CFF 12 57 AB         [24]  990 	lcall	_printf
      002D02 E5 81            [12]  991 	mov	a,sp
      002D04 24 F9            [12]  992 	add	a,#0xf9
      002D06 F5 81            [12]  993 	mov	sp,a
      002D08 D0 07            [24]  994 	pop	ar7
                                    995 ;	calc.c:115: printbin(d);
      002D0A E5 08            [12]  996 	mov	a,_bp
      002D0C 24 08            [12]  997 	add	a,#0x08
      002D0E F8               [12]  998 	mov	r0,a
      002D0F 86 03            [24]  999 	mov	ar3,@r0
      002D11 08               [12] 1000 	inc	r0
      002D12 86 04            [24] 1001 	mov	ar4,@r0
      002D14 08               [12] 1002 	inc	r0
      002D15 86 05            [24] 1003 	mov	ar5,@r0
      002D17 08               [12] 1004 	inc	r0
      002D18 86 06            [24] 1005 	mov	ar6,@r0
      002D1A E5 08            [12] 1006 	mov	a,_bp
      002D1C 24 0C            [12] 1007 	add	a,#0x0c
      002D1E F8               [12] 1008 	mov	r0,a
      002D1F A6 03            [24] 1009 	mov	@r0,ar3
      002D21 08               [12] 1010 	inc	r0
      002D22 A6 04            [24] 1011 	mov	@r0,ar4
      002D24 08               [12] 1012 	inc	r0
      002D25 A6 05            [24] 1013 	mov	@r0,ar5
      002D27 08               [12] 1014 	inc	r0
      002D28 A6 06            [24] 1015 	mov	@r0,ar6
                                   1016 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      002D2A E5 08            [12] 1017 	mov	a,_bp
      002D2C 24 10            [12] 1018 	add	a,#0x10
      002D2E F8               [12] 1019 	mov	r0,a
      002D2F E4               [12] 1020 	clr	a
      002D30 F6               [12] 1021 	mov	@r0,a
      002D31 08               [12] 1022 	inc	r0
      002D32 F6               [12] 1023 	mov	@r0,a
      002D33 08               [12] 1024 	inc	r0
      002D34 F6               [12] 1025 	mov	@r0,a
      002D35 08               [12] 1026 	inc	r0
      002D36 76 80            [12] 1027 	mov	@r0,#0x80
      002D38                       1028 00130$:
                                   1029 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002D38 C0 07            [24] 1030 	push	ar7
      002D3A E5 08            [12] 1031 	mov	a,_bp
      002D3C 24 0C            [12] 1032 	add	a,#0x0c
      002D3E F8               [12] 1033 	mov	r0,a
      002D3F 86 03            [24] 1034 	mov	ar3,@r0
      002D41 08               [12] 1035 	inc	r0
      002D42 86 05            [24] 1036 	mov	ar5,@r0
      002D44 08               [12] 1037 	inc	r0
      002D45 86 06            [24] 1038 	mov	ar6,@r0
      002D47 08               [12] 1039 	inc	r0
      002D48 86 07            [24] 1040 	mov	ar7,@r0
      002D4A E5 08            [12] 1041 	mov	a,_bp
      002D4C 24 10            [12] 1042 	add	a,#0x10
      002D4E F8               [12] 1043 	mov	r0,a
      002D4F E6               [12] 1044 	mov	a,@r0
      002D50 52 03            [12] 1045 	anl	ar3,a
      002D52 08               [12] 1046 	inc	r0
      002D53 E6               [12] 1047 	mov	a,@r0
      002D54 52 05            [12] 1048 	anl	ar5,a
      002D56 08               [12] 1049 	inc	r0
      002D57 E6               [12] 1050 	mov	a,@r0
      002D58 52 06            [12] 1051 	anl	ar6,a
      002D5A 08               [12] 1052 	inc	r0
      002D5B E6               [12] 1053 	mov	a,@r0
      002D5C 52 07            [12] 1054 	anl	ar7,a
      002D5E EB               [12] 1055 	mov	a,r3
      002D5F 4D               [12] 1056 	orl	a,r5
      002D60 4E               [12] 1057 	orl	a,r6
      002D61 4F               [12] 1058 	orl	a,r7
      002D62 D0 07            [24] 1059 	pop	ar7
      002D64 60 06            [24] 1060 	jz	00137$
      002D66 7D 31            [12] 1061 	mov	r5,#0x31
      002D68 7E 00            [12] 1062 	mov	r6,#0x00
      002D6A 80 04            [24] 1063 	sjmp	00138$
      002D6C                       1064 00137$:
      002D6C 7D 30            [12] 1065 	mov	r5,#0x30
      002D6E 7E 00            [12] 1066 	mov	r6,#0x00
      002D70                       1067 00138$:
      002D70 8D 82            [24] 1068 	mov	dpl,r5
      002D72 8E 83            [24] 1069 	mov	dph,r6
      002D74 12 29 C0         [24] 1070 	lcall	_putchar
                                   1071 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      002D77 E5 08            [12] 1072 	mov	a,_bp
      002D79 24 10            [12] 1073 	add	a,#0x10
      002D7B F8               [12] 1074 	mov	r0,a
      002D7C 08               [12] 1075 	inc	r0
      002D7D 08               [12] 1076 	inc	r0
      002D7E 08               [12] 1077 	inc	r0
      002D7F E6               [12] 1078 	mov	a,@r0
      002D80 C3               [12] 1079 	clr	c
      002D81 13               [12] 1080 	rrc	a
      002D82 F6               [12] 1081 	mov	@r0,a
      002D83 18               [12] 1082 	dec	r0
      002D84 E6               [12] 1083 	mov	a,@r0
      002D85 13               [12] 1084 	rrc	a
      002D86 F6               [12] 1085 	mov	@r0,a
      002D87 18               [12] 1086 	dec	r0
      002D88 E6               [12] 1087 	mov	a,@r0
      002D89 13               [12] 1088 	rrc	a
      002D8A F6               [12] 1089 	mov	@r0,a
      002D8B 18               [12] 1090 	dec	r0
      002D8C E6               [12] 1091 	mov	a,@r0
      002D8D 13               [12] 1092 	rrc	a
      002D8E F6               [12] 1093 	mov	@r0,a
      002D8F E5 08            [12] 1094 	mov	a,_bp
      002D91 24 10            [12] 1095 	add	a,#0x10
      002D93 F8               [12] 1096 	mov	r0,a
      002D94 E6               [12] 1097 	mov	a,@r0
      002D95 08               [12] 1098 	inc	r0
      002D96 46               [12] 1099 	orl	a,@r0
      002D97 08               [12] 1100 	inc	r0
      002D98 46               [12] 1101 	orl	a,@r0
      002D99 08               [12] 1102 	inc	r0
      002D9A 46               [12] 1103 	orl	a,@r0
      002D9B 70 9B            [24] 1104 	jnz	00130$
                                   1105 ;	calc.c:116: printstr("\r\n");
      002D9D 7C 65            [12] 1106 	mov	r4,#___str_0
      002D9F 7D 70            [12] 1107 	mov	r5,#(___str_0 >> 8)
      002DA1 7E 80            [12] 1108 	mov	r6,#0x80
                                   1109 ;	calc.c:50: return;
      002DA3                       1110 00133$:
                                   1111 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002DA3 8C 82            [24] 1112 	mov	dpl,r4
      002DA5 8D 83            [24] 1113 	mov	dph,r5
      002DA7 8E F0            [24] 1114 	mov	b,r6
      002DA9 12 57 E4         [24] 1115 	lcall	__gptrget
      002DAC FB               [12] 1116 	mov	r3,a
      002DAD 60 10            [24] 1117 	jz	00120$
      002DAF 7A 00            [12] 1118 	mov	r2,#0x00
      002DB1 8B 82            [24] 1119 	mov	dpl,r3
      002DB3 8A 83            [24] 1120 	mov	dph,r2
      002DB5 12 29 C0         [24] 1121 	lcall	_putchar
      002DB8 0C               [12] 1122 	inc	r4
                                   1123 ;	calc.c:116: printstr("\r\n");
      002DB9 BC 00 E7         [24] 1124 	cjne	r4,#0x00,00133$
      002DBC 0D               [12] 1125 	inc	r5
      002DBD 80 E4            [24] 1126 	sjmp	00133$
      002DBF                       1127 00120$:
                                   1128 ;	calc.c:117: r = stack_pop(&ctx->s, &d);
      002DBF 8F 04            [24] 1129 	mov	ar4,r7
      002DC1 7D 00            [12] 1130 	mov	r5,#0x00
      002DC3 7E 40            [12] 1131 	mov	r6,#0x40
      002DC5 C0 07            [24] 1132 	push	ar7
      002DC7 E5 08            [12] 1133 	mov	a,_bp
      002DC9 24 05            [12] 1134 	add	a,#0x05
      002DCB F8               [12] 1135 	mov	r0,a
      002DCC 74 09            [12] 1136 	mov	a,#0x09
      002DCE 26               [12] 1137 	add	a,@r0
      002DCF FA               [12] 1138 	mov	r2,a
      002DD0 E4               [12] 1139 	clr	a
      002DD1 08               [12] 1140 	inc	r0
      002DD2 36               [12] 1141 	addc	a,@r0
      002DD3 FB               [12] 1142 	mov	r3,a
      002DD4 08               [12] 1143 	inc	r0
      002DD5 86 07            [24] 1144 	mov	ar7,@r0
      002DD7 C0 04            [24] 1145 	push	ar4
      002DD9 C0 05            [24] 1146 	push	ar5
      002DDB C0 06            [24] 1147 	push	ar6
      002DDD 8A 82            [24] 1148 	mov	dpl,r2
      002DDF 8B 83            [24] 1149 	mov	dph,r3
      002DE1 8F F0            [24] 1150 	mov	b,r7
      002DE3 12 27 7F         [24] 1151 	lcall	_stack_pop
      002DE6 AE 82            [24] 1152 	mov	r6,dpl
      002DE8 AF 83            [24] 1153 	mov	r7,dph
      002DEA 15 81            [12] 1154 	dec	sp
      002DEC 15 81            [12] 1155 	dec	sp
      002DEE 15 81            [12] 1156 	dec	sp
      002DF0 A8 08            [24] 1157 	mov	r0,_bp
      002DF2 08               [12] 1158 	inc	r0
      002DF3 08               [12] 1159 	inc	r0
      002DF4 A6 06            [24] 1160 	mov	@r0,ar6
      002DF6 08               [12] 1161 	inc	r0
      002DF7 A6 07            [24] 1162 	mov	@r0,ar7
      002DF9 D0 07            [24] 1163 	pop	ar7
      002DFB 02 2C 7C         [24] 1164 	ljmp	00105$
      002DFE                       1165 00110$:
                                   1166 ;	calc.c:120: return 1;
      002DFE 90 00 01         [24] 1167 	mov	dptr,#0x0001
                                   1168 ;	calc.c:121: }
      002E01 85 08 81         [24] 1169 	mov	sp,_bp
      002E04 D0 08            [24] 1170 	pop	_bp
      002E06 22               [24] 1171 	ret
                                   1172 ;------------------------------------------------------------
                                   1173 ;Allocation info for local variables in function 'dump_peek'
                                   1174 ;------------------------------------------------------------
                                   1175 ;d                         Allocated to stack - _bp -6
                                   1176 ;_ctx                      Allocated to registers 
                                   1177 ;__1310720011              Allocated to registers 
                                   1178 ;s                         Allocated to registers r5 r6 r7 
                                   1179 ;__1310720013              Allocated to registers r4 r5 r6 r7 
                                   1180 ;d                         Allocated to stack - _bp +1
                                   1181 ;mask                      Allocated to stack - _bp +5
                                   1182 ;__1310720015              Allocated to registers 
                                   1183 ;s                         Allocated to registers r5 r6 r7 
                                   1184 ;------------------------------------------------------------
                                   1185 ;	calc.c:123: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1186 ;	-----------------------------------------
                                   1187 ;	 function dump_peek
                                   1188 ;	-----------------------------------------
      002E07                       1189 _dump_peek:
      002E07 C0 08            [24] 1190 	push	_bp
      002E09 E5 81            [12] 1191 	mov	a,sp
      002E0B F5 08            [12] 1192 	mov	_bp,a
      002E0D 24 08            [12] 1193 	add	a,#0x08
      002E0F F5 81            [12] 1194 	mov	sp,a
                                   1195 ;	calc.c:126: printstr("PA ");
      002E11 7D 91            [12] 1196 	mov	r5,#___str_5
      002E13 7E 70            [12] 1197 	mov	r6,#(___str_5 >> 8)
      002E15 7F 80            [12] 1198 	mov	r7,#0x80
                                   1199 ;	calc.c:50: return;
      002E17                       1200 00108$:
                                   1201 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002E17 8D 82            [24] 1202 	mov	dpl,r5
      002E19 8E 83            [24] 1203 	mov	dph,r6
      002E1B 8F F0            [24] 1204 	mov	b,r7
      002E1D 12 57 E4         [24] 1205 	lcall	__gptrget
      002E20 FC               [12] 1206 	mov	r4,a
      002E21 60 10            [24] 1207 	jz	00102$
      002E23 7B 00            [12] 1208 	mov	r3,#0x00
      002E25 8C 82            [24] 1209 	mov	dpl,r4
      002E27 8B 83            [24] 1210 	mov	dph,r3
      002E29 12 29 C0         [24] 1211 	lcall	_putchar
      002E2C 0D               [12] 1212 	inc	r5
                                   1213 ;	calc.c:126: printstr("PA ");
      002E2D BD 00 E7         [24] 1214 	cjne	r5,#0x00,00108$
      002E30 0E               [12] 1215 	inc	r6
      002E31 80 E4            [24] 1216 	sjmp	00108$
      002E33                       1217 00102$:
                                   1218 ;	calc.c:127: printf("% 11ld / ", d);
      002E33 E5 08            [12] 1219 	mov	a,_bp
      002E35 24 FA            [12] 1220 	add	a,#0xfa
      002E37 F8               [12] 1221 	mov	r0,a
      002E38 E6               [12] 1222 	mov	a,@r0
      002E39 C0 E0            [24] 1223 	push	acc
      002E3B 08               [12] 1224 	inc	r0
      002E3C E6               [12] 1225 	mov	a,@r0
      002E3D C0 E0            [24] 1226 	push	acc
      002E3F 08               [12] 1227 	inc	r0
      002E40 E6               [12] 1228 	mov	a,@r0
      002E41 C0 E0            [24] 1229 	push	acc
      002E43 08               [12] 1230 	inc	r0
      002E44 E6               [12] 1231 	mov	a,@r0
      002E45 C0 E0            [24] 1232 	push	acc
      002E47 74 7E            [12] 1233 	mov	a,#___str_3
      002E49 C0 E0            [24] 1234 	push	acc
      002E4B 74 70            [12] 1235 	mov	a,#(___str_3 >> 8)
      002E4D C0 E0            [24] 1236 	push	acc
      002E4F 74 80            [12] 1237 	mov	a,#0x80
      002E51 C0 E0            [24] 1238 	push	acc
      002E53 12 57 AB         [24] 1239 	lcall	_printf
      002E56 E5 81            [12] 1240 	mov	a,sp
      002E58 24 F9            [12] 1241 	add	a,#0xf9
      002E5A F5 81            [12] 1242 	mov	sp,a
                                   1243 ;	calc.c:128: printf("%08lx / ", d);
      002E5C E5 08            [12] 1244 	mov	a,_bp
      002E5E 24 FA            [12] 1245 	add	a,#0xfa
      002E60 F8               [12] 1246 	mov	r0,a
      002E61 E6               [12] 1247 	mov	a,@r0
      002E62 C0 E0            [24] 1248 	push	acc
      002E64 08               [12] 1249 	inc	r0
      002E65 E6               [12] 1250 	mov	a,@r0
      002E66 C0 E0            [24] 1251 	push	acc
      002E68 08               [12] 1252 	inc	r0
      002E69 E6               [12] 1253 	mov	a,@r0
      002E6A C0 E0            [24] 1254 	push	acc
      002E6C 08               [12] 1255 	inc	r0
      002E6D E6               [12] 1256 	mov	a,@r0
      002E6E C0 E0            [24] 1257 	push	acc
      002E70 74 88            [12] 1258 	mov	a,#___str_4
      002E72 C0 E0            [24] 1259 	push	acc
      002E74 74 70            [12] 1260 	mov	a,#(___str_4 >> 8)
      002E76 C0 E0            [24] 1261 	push	acc
      002E78 74 80            [12] 1262 	mov	a,#0x80
      002E7A C0 E0            [24] 1263 	push	acc
      002E7C 12 57 AB         [24] 1264 	lcall	_printf
      002E7F E5 81            [12] 1265 	mov	a,sp
      002E81 24 F9            [12] 1266 	add	a,#0xf9
      002E83 F5 81            [12] 1267 	mov	sp,a
                                   1268 ;	calc.c:129: printbin(d);
      002E85 E5 08            [12] 1269 	mov	a,_bp
      002E87 24 FA            [12] 1270 	add	a,#0xfa
      002E89 F8               [12] 1271 	mov	r0,a
      002E8A 86 04            [24] 1272 	mov	ar4,@r0
      002E8C 08               [12] 1273 	inc	r0
      002E8D 86 05            [24] 1274 	mov	ar5,@r0
      002E8F 08               [12] 1275 	inc	r0
      002E90 86 06            [24] 1276 	mov	ar6,@r0
      002E92 08               [12] 1277 	inc	r0
      002E93 86 07            [24] 1278 	mov	ar7,@r0
      002E95 A8 08            [24] 1279 	mov	r0,_bp
      002E97 08               [12] 1280 	inc	r0
      002E98 A6 04            [24] 1281 	mov	@r0,ar4
      002E9A 08               [12] 1282 	inc	r0
      002E9B A6 05            [24] 1283 	mov	@r0,ar5
      002E9D 08               [12] 1284 	inc	r0
      002E9E A6 06            [24] 1285 	mov	@r0,ar6
      002EA0 08               [12] 1286 	inc	r0
      002EA1 A6 07            [24] 1287 	mov	@r0,ar7
                                   1288 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      002EA3 E5 08            [12] 1289 	mov	a,_bp
      002EA5 24 05            [12] 1290 	add	a,#0x05
      002EA7 F8               [12] 1291 	mov	r0,a
      002EA8 E4               [12] 1292 	clr	a
      002EA9 F6               [12] 1293 	mov	@r0,a
      002EAA 08               [12] 1294 	inc	r0
      002EAB F6               [12] 1295 	mov	@r0,a
      002EAC 08               [12] 1296 	inc	r0
      002EAD F6               [12] 1297 	mov	@r0,a
      002EAE 08               [12] 1298 	inc	r0
      002EAF 76 80            [12] 1299 	mov	@r0,#0x80
      002EB1                       1300 00110$:
                                   1301 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002EB1 A8 08            [24] 1302 	mov	r0,_bp
      002EB3 08               [12] 1303 	inc	r0
      002EB4 86 04            [24] 1304 	mov	ar4,@r0
      002EB6 08               [12] 1305 	inc	r0
      002EB7 86 05            [24] 1306 	mov	ar5,@r0
      002EB9 08               [12] 1307 	inc	r0
      002EBA 86 06            [24] 1308 	mov	ar6,@r0
      002EBC 08               [12] 1309 	inc	r0
      002EBD 86 07            [24] 1310 	mov	ar7,@r0
      002EBF E5 08            [12] 1311 	mov	a,_bp
      002EC1 24 05            [12] 1312 	add	a,#0x05
      002EC3 F8               [12] 1313 	mov	r0,a
      002EC4 E6               [12] 1314 	mov	a,@r0
      002EC5 52 04            [12] 1315 	anl	ar4,a
      002EC7 08               [12] 1316 	inc	r0
      002EC8 E6               [12] 1317 	mov	a,@r0
      002EC9 52 05            [12] 1318 	anl	ar5,a
      002ECB 08               [12] 1319 	inc	r0
      002ECC E6               [12] 1320 	mov	a,@r0
      002ECD 52 06            [12] 1321 	anl	ar6,a
      002ECF 08               [12] 1322 	inc	r0
      002ED0 E6               [12] 1323 	mov	a,@r0
      002ED1 52 07            [12] 1324 	anl	ar7,a
      002ED3 EC               [12] 1325 	mov	a,r4
      002ED4 4D               [12] 1326 	orl	a,r5
      002ED5 4E               [12] 1327 	orl	a,r6
      002ED6 4F               [12] 1328 	orl	a,r7
      002ED7 60 06            [24] 1329 	jz	00117$
      002ED9 7E 31            [12] 1330 	mov	r6,#0x31
      002EDB 7F 00            [12] 1331 	mov	r7,#0x00
      002EDD 80 04            [24] 1332 	sjmp	00118$
      002EDF                       1333 00117$:
      002EDF 7E 30            [12] 1334 	mov	r6,#0x30
      002EE1 7F 00            [12] 1335 	mov	r7,#0x00
      002EE3                       1336 00118$:
      002EE3 8E 82            [24] 1337 	mov	dpl,r6
      002EE5 8F 83            [24] 1338 	mov	dph,r7
      002EE7 12 29 C0         [24] 1339 	lcall	_putchar
                                   1340 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      002EEA E5 08            [12] 1341 	mov	a,_bp
      002EEC 24 05            [12] 1342 	add	a,#0x05
      002EEE F8               [12] 1343 	mov	r0,a
      002EEF 08               [12] 1344 	inc	r0
      002EF0 08               [12] 1345 	inc	r0
      002EF1 08               [12] 1346 	inc	r0
      002EF2 E6               [12] 1347 	mov	a,@r0
      002EF3 C3               [12] 1348 	clr	c
      002EF4 13               [12] 1349 	rrc	a
      002EF5 F6               [12] 1350 	mov	@r0,a
      002EF6 18               [12] 1351 	dec	r0
      002EF7 E6               [12] 1352 	mov	a,@r0
      002EF8 13               [12] 1353 	rrc	a
      002EF9 F6               [12] 1354 	mov	@r0,a
      002EFA 18               [12] 1355 	dec	r0
      002EFB E6               [12] 1356 	mov	a,@r0
      002EFC 13               [12] 1357 	rrc	a
      002EFD F6               [12] 1358 	mov	@r0,a
      002EFE 18               [12] 1359 	dec	r0
      002EFF E6               [12] 1360 	mov	a,@r0
      002F00 13               [12] 1361 	rrc	a
      002F01 F6               [12] 1362 	mov	@r0,a
      002F02 E5 08            [12] 1363 	mov	a,_bp
      002F04 24 05            [12] 1364 	add	a,#0x05
      002F06 F8               [12] 1365 	mov	r0,a
      002F07 E6               [12] 1366 	mov	a,@r0
      002F08 08               [12] 1367 	inc	r0
      002F09 46               [12] 1368 	orl	a,@r0
      002F0A 08               [12] 1369 	inc	r0
      002F0B 46               [12] 1370 	orl	a,@r0
      002F0C 08               [12] 1371 	inc	r0
      002F0D 46               [12] 1372 	orl	a,@r0
      002F0E 70 A1            [24] 1373 	jnz	00110$
                                   1374 ;	calc.c:130: printstr("\r\n");
      002F10 7D 65            [12] 1375 	mov	r5,#___str_0
      002F12 7E 70            [12] 1376 	mov	r6,#(___str_0 >> 8)
      002F14 7F 80            [12] 1377 	mov	r7,#0x80
                                   1378 ;	calc.c:50: return;
      002F16                       1379 00113$:
                                   1380 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002F16 8D 82            [24] 1381 	mov	dpl,r5
      002F18 8E 83            [24] 1382 	mov	dph,r6
      002F1A 8F F0            [24] 1383 	mov	b,r7
      002F1C 12 57 E4         [24] 1384 	lcall	__gptrget
      002F1F FC               [12] 1385 	mov	r4,a
      002F20 60 10            [24] 1386 	jz	00106$
      002F22 7B 00            [12] 1387 	mov	r3,#0x00
      002F24 8C 82            [24] 1388 	mov	dpl,r4
      002F26 8B 83            [24] 1389 	mov	dph,r3
      002F28 12 29 C0         [24] 1390 	lcall	_putchar
      002F2B 0D               [12] 1391 	inc	r5
                                   1392 ;	calc.c:130: printstr("\r\n");
      002F2C BD 00 E7         [24] 1393 	cjne	r5,#0x00,00113$
      002F2F 0E               [12] 1394 	inc	r6
      002F30 80 E4            [24] 1395 	sjmp	00113$
      002F32                       1396 00106$:
                                   1397 ;	calc.c:132: return 1;
      002F32 90 00 01         [24] 1398 	mov	dptr,#0x0001
                                   1399 ;	calc.c:133: }
      002F35 85 08 81         [24] 1400 	mov	sp,_bp
      002F38 D0 08            [24] 1401 	pop	_bp
      002F3A 22               [24] 1402 	ret
                                   1403 ;------------------------------------------------------------
                                   1404 ;Allocation info for local variables in function 'operator'
                                   1405 ;------------------------------------------------------------
                                   1406 ;delta                     Allocated to stack - _bp -5
                                   1407 ;_ctx                      Allocated to stack - _bp +1
                                   1408 ;ctx                       Allocated to stack - _bp +12
                                   1409 ;d0                        Allocated to stack - _bp +15
                                   1410 ;d1                        Allocated to stack - _bp +19
                                   1411 ;__1966080017              Allocated to registers 
                                   1412 ;s                         Allocated to registers r7 r6 r5 
                                   1413 ;__1966080019              Allocated to registers 
                                   1414 ;s                         Allocated to registers r7 r6 r5 
                                   1415 ;__2621440021              Allocated to registers 
                                   1416 ;s                         Allocated to registers r7 r6 r5 
                                   1417 ;__2621440023              Allocated to registers r7 r6 r5 r4 
                                   1418 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1419 ;mask                      Allocated to stack - _bp +23
                                   1420 ;__2621440025              Allocated to registers 
                                   1421 ;s                         Allocated to registers r7 r6 r5 
                                   1422 ;__1966080027              Allocated to registers 
                                   1423 ;s                         Allocated to registers r7 r6 r5 
                                   1424 ;__1966080029              Allocated to registers 
                                   1425 ;s                         Allocated to registers r7 r6 r5 
                                   1426 ;__1966080031              Allocated to registers 
                                   1427 ;s                         Allocated to registers r7 r6 r5 
                                   1428 ;__1966080033              Allocated to registers 
                                   1429 ;s                         Allocated to registers r7 r6 r5 
                                   1430 ;__2621440035              Allocated to registers 
                                   1431 ;s                         Allocated to registers r7 r6 r5 
                                   1432 ;__2621440037              Allocated to registers r7 r6 r5 r4 
                                   1433 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1434 ;mask                      Allocated to stack - _bp +23
                                   1435 ;__2621440039              Allocated to registers 
                                   1436 ;s                         Allocated to registers r7 r6 r5 
                                   1437 ;__1966080041              Allocated to registers 
                                   1438 ;s                         Allocated to registers r7 r6 r5 
                                   1439 ;__1966080043              Allocated to registers 
                                   1440 ;s                         Allocated to registers r7 r6 r5 
                                   1441 ;__2621440045              Allocated to registers 
                                   1442 ;s                         Allocated to registers r7 r6 r5 
                                   1443 ;__1966080047              Allocated to registers 
                                   1444 ;s                         Allocated to registers r7 r6 r5 
                                   1445 ;__2621440049              Allocated to registers 
                                   1446 ;s                         Allocated to registers r7 r6 r5 
                                   1447 ;__1966080051              Allocated to registers 
                                   1448 ;s                         Allocated to registers r7 r6 r5 
                                   1449 ;__2621440053              Allocated to registers 
                                   1450 ;s                         Allocated to registers r7 r6 r5 
                                   1451 ;__1966080055              Allocated to registers 
                                   1452 ;s                         Allocated to registers r7 r6 r5 
                                   1453 ;__2621440057              Allocated to registers 
                                   1454 ;s                         Allocated to registers r7 r6 r5 
                                   1455 ;__1966080059              Allocated to registers 
                                   1456 ;s                         Allocated to registers r7 r6 r5 
                                   1457 ;__2621440061              Allocated to registers 
                                   1458 ;s                         Allocated to registers r7 r6 r5 
                                   1459 ;__2621440063              Allocated to registers 
                                   1460 ;s                         Allocated to registers r7 r6 r5 
                                   1461 ;__1966080065              Allocated to registers 
                                   1462 ;s                         Allocated to registers r7 r6 r5 
                                   1463 ;__2621440067              Allocated to registers 
                                   1464 ;s                         Allocated to registers r7 r6 r5 
                                   1465 ;__2621440069              Allocated to registers 
                                   1466 ;s                         Allocated to registers r7 r6 r5 
                                   1467 ;__1966080071              Allocated to registers 
                                   1468 ;s                         Allocated to registers r5 r6 r7 
                                   1469 ;__2621440073              Allocated to registers 
                                   1470 ;s                         Allocated to registers r5 r6 r7 
                                   1471 ;__1966080075              Allocated to registers 
                                   1472 ;s                         Allocated to registers r5 r6 r7 
                                   1473 ;__2621440077              Allocated to registers 
                                   1474 ;s                         Allocated to registers r5 r6 r7 
                                   1475 ;__1966080079              Allocated to registers 
                                   1476 ;s                         Allocated to registers r5 r6 r7 
                                   1477 ;__2621440081              Allocated to registers 
                                   1478 ;s                         Allocated to registers r5 r6 r7 
                                   1479 ;__1966080083              Allocated to registers 
                                   1480 ;s                         Allocated to registers r5 r6 r7 
                                   1481 ;__2621440085              Allocated to registers 
                                   1482 ;s                         Allocated to registers r5 r6 r7 
                                   1483 ;__1966080087              Allocated to registers 
                                   1484 ;s                         Allocated to registers r5 r6 r7 
                                   1485 ;__2621440089              Allocated to registers 
                                   1486 ;s                         Allocated to registers r5 r6 r7 
                                   1487 ;__1966080091              Allocated to registers 
                                   1488 ;s                         Allocated to registers r5 r6 r7 
                                   1489 ;__2621440093              Allocated to registers 
                                   1490 ;s                         Allocated to registers r5 r6 r7 
                                   1491 ;__1966080095              Allocated to registers 
                                   1492 ;s                         Allocated to registers r5 r6 r7 
                                   1493 ;sloc0                     Allocated to stack - _bp +267
                                   1494 ;sloc1                     Allocated to stack - _bp +268
                                   1495 ;sloc2                     Allocated to stack - _bp +4
                                   1496 ;sloc3                     Allocated to stack - _bp +8
                                   1497 ;------------------------------------------------------------
                                   1498 ;	calc.c:135: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   1499 ;	-----------------------------------------
                                   1500 ;	 function operator
                                   1501 ;	-----------------------------------------
      002F3B                       1502 _operator:
      002F3B C0 08            [24] 1503 	push	_bp
      002F3D 85 81 08         [24] 1504 	mov	_bp,sp
      002F40 C0 82            [24] 1505 	push	dpl
      002F42 C0 83            [24] 1506 	push	dph
      002F44 C0 F0            [24] 1507 	push	b
      002F46 E5 81            [12] 1508 	mov	a,sp
      002F48 24 17            [12] 1509 	add	a,#0x17
      002F4A F5 81            [12] 1510 	mov	sp,a
                                   1511 ;	calc.c:136: struct ctx *ctx = (struct ctx *)_ctx;
      002F4C A8 08            [24] 1512 	mov	r0,_bp
      002F4E 08               [12] 1513 	inc	r0
      002F4F E5 08            [12] 1514 	mov	a,_bp
      002F51 24 0C            [12] 1515 	add	a,#0x0c
      002F53 F9               [12] 1516 	mov	r1,a
      002F54 E6               [12] 1517 	mov	a,@r0
      002F55 F7               [12] 1518 	mov	@r1,a
      002F56 08               [12] 1519 	inc	r0
      002F57 09               [12] 1520 	inc	r1
      002F58 E6               [12] 1521 	mov	a,@r0
      002F59 F7               [12] 1522 	mov	@r1,a
      002F5A 08               [12] 1523 	inc	r0
      002F5B 09               [12] 1524 	inc	r1
      002F5C E6               [12] 1525 	mov	a,@r0
      002F5D F7               [12] 1526 	mov	@r1,a
                                   1527 ;	calc.c:139: switch (ctx->digit[0]) {
      002F5E E5 08            [12] 1528 	mov	a,_bp
      002F60 24 0C            [12] 1529 	add	a,#0x0c
      002F62 F8               [12] 1530 	mov	r0,a
      002F63 74 07            [12] 1531 	mov	a,#0x07
      002F65 26               [12] 1532 	add	a,@r0
      002F66 FD               [12] 1533 	mov	r5,a
      002F67 E4               [12] 1534 	clr	a
      002F68 08               [12] 1535 	inc	r0
      002F69 36               [12] 1536 	addc	a,@r0
      002F6A FE               [12] 1537 	mov	r6,a
      002F6B 08               [12] 1538 	inc	r0
      002F6C 86 07            [24] 1539 	mov	ar7,@r0
      002F6E 8D 82            [24] 1540 	mov	dpl,r5
      002F70 8E 83            [24] 1541 	mov	dph,r6
      002F72 8F F0            [24] 1542 	mov	b,r7
      002F74 12 57 E4         [24] 1543 	lcall	__gptrget
      002F77 FC               [12] 1544 	mov	r4,a
      002F78 BC 23 03         [24] 1545 	cjne	r4,#0x23,00996$
      002F7B 02 3B D0         [24] 1546 	ljmp	00157$
      002F7E                       1547 00996$:
      002F7E BC 25 03         [24] 1548 	cjne	r4,#0x25,00997$
      002F81 02 3B D0         [24] 1549 	ljmp	00157$
      002F84                       1550 00997$:
      002F84 BC 26 03         [24] 1551 	cjne	r4,#0x26,00998$
      002F87 02 3E 5C         [24] 1552 	ljmp	00170$
      002F8A                       1553 00998$:
      002F8A BC 2A 03         [24] 1554 	cjne	r4,#0x2a,00999$
      002F8D 02 37 DE         [24] 1555 	ljmp	00135$
      002F90                       1556 00999$:
      002F90 BC 2B 03         [24] 1557 	cjne	r4,#0x2b,01000$
      002F93 02 35 67         [24] 1558 	ljmp	00121$
      002F96                       1559 01000$:
      002F96 BC 2D 03         [24] 1560 	cjne	r4,#0x2d,01001$
      002F99 02 36 A2         [24] 1561 	ljmp	00128$
      002F9C                       1562 01001$:
      002F9C BC 2E 03         [24] 1563 	cjne	r4,#0x2e,01002$
      002F9F 02 32 25         [24] 1564 	ljmp	00109$
      002FA2                       1565 01002$:
      002FA2 BC 2F 03         [24] 1566 	cjne	r4,#0x2f,01003$
      002FA5 02 39 40         [24] 1567 	ljmp	00143$
      002FA8                       1568 01003$:
      002FA8 BC 3C 03         [24] 1569 	cjne	r4,#0x3c,01004$
      002FAB 02 44 C1         [24] 1570 	ljmp	00205$
      002FAE                       1571 01004$:
      002FAE BC 3E 03         [24] 1572 	cjne	r4,#0x3e,01005$
      002FB1 02 42 0D         [24] 1573 	ljmp	00191$
      002FB4                       1574 01005$:
      002FB4 BC 50 03         [24] 1575 	cjne	r4,#0x50,01006$
      002FB7 02 31 99         [24] 1576 	ljmp	00105$
      002FBA                       1577 01006$:
      002FBA BC 56 03         [24] 1578 	cjne	r4,#0x56,01007$
      002FBD 02 33 CC         [24] 1579 	ljmp	00113$
      002FC0                       1580 01007$:
      002FC0 BC 5C 03         [24] 1581 	cjne	r4,#0x5c,01008$
      002FC3 02 39 40         [24] 1582 	ljmp	00143$
      002FC6                       1583 01008$:
      002FC6 BC 5D 03         [24] 1584 	cjne	r4,#0x5d,01009$
      002FC9 02 43 6C         [24] 1585 	ljmp	00198$
      002FCC                       1586 01009$:
      002FCC BC 5E 03         [24] 1587 	cjne	r4,#0x5e,01010$
      002FCF 02 40 D2         [24] 1588 	ljmp	00184$
      002FD2                       1589 01010$:
      002FD2 BC 70 02         [24] 1590 	cjne	r4,#0x70,01011$
      002FD5 80 1B            [24] 1591 	sjmp	00101$
      002FD7                       1592 01011$:
      002FD7 BC 76 03         [24] 1593 	cjne	r4,#0x76,01012$
      002FDA 02 32 25         [24] 1594 	ljmp	00109$
      002FDD                       1595 01012$:
      002FDD BC 78 03         [24] 1596 	cjne	r4,#0x78,01013$
      002FE0 02 34 15         [24] 1597 	ljmp	00114$
      002FE3                       1598 01013$:
      002FE3 BC 7C 03         [24] 1599 	cjne	r4,#0x7c,01014$
      002FE6 02 3F 97         [24] 1600 	ljmp	00177$
      002FE9                       1601 01014$:
      002FE9 BC 7E 03         [24] 1602 	cjne	r4,#0x7e,01015$
      002FEC 02 46 1F         [24] 1603 	ljmp	00212$
      002FEF                       1604 01015$:
      002FEF 02 46 C0         [24] 1605 	ljmp	00216$
                                   1606 ;	calc.c:140: case 'p':
      002FF2                       1607 00101$:
                                   1608 ;	calc.c:141: printstr("\r\n");
      002FF2 7F 65            [12] 1609 	mov	r7,#___str_0
      002FF4 7E 70            [12] 1610 	mov	r6,#(___str_0 >> 8)
      002FF6 7D 80            [12] 1611 	mov	r5,#0x80
                                   1612 ;	calc.c:50: return;
      002FF8                       1613 00299$:
                                   1614 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002FF8 8F 82            [24] 1615 	mov	dpl,r7
      002FFA 8E 83            [24] 1616 	mov	dph,r6
      002FFC 8D F0            [24] 1617 	mov	b,r5
      002FFE 12 57 E4         [24] 1618 	lcall	__gptrget
      003001 FC               [12] 1619 	mov	r4,a
      003002 60 10            [24] 1620 	jz	00219$
      003004 7B 00            [12] 1621 	mov	r3,#0x00
      003006 8C 82            [24] 1622 	mov	dpl,r4
      003008 8B 83            [24] 1623 	mov	dph,r3
      00300A 12 29 C0         [24] 1624 	lcall	_putchar
      00300D 0F               [12] 1625 	inc	r7
                                   1626 ;	calc.c:141: printstr("\r\n");
      00300E BF 00 E7         [24] 1627 	cjne	r7,#0x00,00299$
      003011 0E               [12] 1628 	inc	r6
      003012 80 E4            [24] 1629 	sjmp	00299$
      003014                       1630 00219$:
                                   1631 ;	calc.c:142: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
      003014 E5 08            [12] 1632 	mov	a,_bp
      003016 24 0F            [12] 1633 	add	a,#0x0f
      003018 FF               [12] 1634 	mov	r7,a
      003019 7E 00            [12] 1635 	mov	r6,#0x00
      00301B 7D 40            [12] 1636 	mov	r5,#0x40
      00301D E5 08            [12] 1637 	mov	a,_bp
      00301F 24 0C            [12] 1638 	add	a,#0x0c
      003021 F8               [12] 1639 	mov	r0,a
      003022 74 09            [12] 1640 	mov	a,#0x09
      003024 26               [12] 1641 	add	a,@r0
      003025 FA               [12] 1642 	mov	r2,a
      003026 E4               [12] 1643 	clr	a
      003027 08               [12] 1644 	inc	r0
      003028 36               [12] 1645 	addc	a,@r0
      003029 FB               [12] 1646 	mov	r3,a
      00302A 08               [12] 1647 	inc	r0
      00302B 86 04            [24] 1648 	mov	ar4,@r0
      00302D C0 07            [24] 1649 	push	ar7
      00302F C0 06            [24] 1650 	push	ar6
      003031 C0 05            [24] 1651 	push	ar5
      003033 8A 82            [24] 1652 	mov	dpl,r2
      003035 8B 83            [24] 1653 	mov	dph,r3
      003037 8C F0            [24] 1654 	mov	b,r4
      003039 12 28 56         [24] 1655 	lcall	_stack_peek
      00303C AB 82            [24] 1656 	mov	r3,dpl
      00303E AC 83            [24] 1657 	mov	r4,dph
      003040 15 81            [12] 1658 	dec	sp
      003042 15 81            [12] 1659 	dec	sp
      003044 15 81            [12] 1660 	dec	sp
      003046 EB               [12] 1661 	mov	a,r3
      003047 4C               [12] 1662 	orl	a,r4
      003048 70 25            [24] 1663 	jnz	00103$
      00304A 7F 68            [12] 1664 	mov	r7,#___str_1
      00304C 7E 70            [12] 1665 	mov	r6,#(___str_1 >> 8)
      00304E 7D 80            [12] 1666 	mov	r5,#0x80
                                   1667 ;	calc.c:50: return;
      003050                       1668 00302$:
                                   1669 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003050 8F 82            [24] 1670 	mov	dpl,r7
      003052 8E 83            [24] 1671 	mov	dph,r6
      003054 8D F0            [24] 1672 	mov	b,r5
      003056 12 57 E4         [24] 1673 	lcall	__gptrget
      003059 FC               [12] 1674 	mov	r4,a
      00305A 70 03            [24] 1675 	jnz	01019$
      00305C 02 46 C5         [24] 1676 	ljmp	00217$
      00305F                       1677 01019$:
      00305F 7B 00            [12] 1678 	mov	r3,#0x00
      003061 8C 82            [24] 1679 	mov	dpl,r4
      003063 8B 83            [24] 1680 	mov	dph,r3
      003065 12 29 C0         [24] 1681 	lcall	_putchar
      003068 0F               [12] 1682 	inc	r7
                                   1683 ;	calc.c:142: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
      003069 BF 00 E4         [24] 1684 	cjne	r7,#0x00,00302$
      00306C 0E               [12] 1685 	inc	r6
      00306D 80 E1            [24] 1686 	sjmp	00302$
      00306F                       1687 00103$:
                                   1688 ;	calc.c:144: printstr("PT ");
      00306F 7F 95            [12] 1689 	mov	r7,#___str_6
      003071 7E 70            [12] 1690 	mov	r6,#(___str_6 >> 8)
      003073 7D 80            [12] 1691 	mov	r5,#0x80
                                   1692 ;	calc.c:50: return;
      003075                       1693 00305$:
                                   1694 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003075 8F 82            [24] 1695 	mov	dpl,r7
      003077 8E 83            [24] 1696 	mov	dph,r6
      003079 8D F0            [24] 1697 	mov	b,r5
      00307B 12 57 E4         [24] 1698 	lcall	__gptrget
      00307E FC               [12] 1699 	mov	r4,a
      00307F 60 10            [24] 1700 	jz	00223$
      003081 7B 00            [12] 1701 	mov	r3,#0x00
      003083 8C 82            [24] 1702 	mov	dpl,r4
      003085 8B 83            [24] 1703 	mov	dph,r3
      003087 12 29 C0         [24] 1704 	lcall	_putchar
      00308A 0F               [12] 1705 	inc	r7
                                   1706 ;	calc.c:144: printstr("PT ");
      00308B BF 00 E7         [24] 1707 	cjne	r7,#0x00,00305$
      00308E 0E               [12] 1708 	inc	r6
      00308F 80 E4            [24] 1709 	sjmp	00305$
      003091                       1710 00223$:
                                   1711 ;	calc.c:145: printf("% 11ld / ", d0);
      003091 E5 08            [12] 1712 	mov	a,_bp
      003093 24 0F            [12] 1713 	add	a,#0x0f
      003095 F8               [12] 1714 	mov	r0,a
      003096 E6               [12] 1715 	mov	a,@r0
      003097 C0 E0            [24] 1716 	push	acc
      003099 08               [12] 1717 	inc	r0
      00309A E6               [12] 1718 	mov	a,@r0
      00309B C0 E0            [24] 1719 	push	acc
      00309D 08               [12] 1720 	inc	r0
      00309E E6               [12] 1721 	mov	a,@r0
      00309F C0 E0            [24] 1722 	push	acc
      0030A1 08               [12] 1723 	inc	r0
      0030A2 E6               [12] 1724 	mov	a,@r0
      0030A3 C0 E0            [24] 1725 	push	acc
      0030A5 74 7E            [12] 1726 	mov	a,#___str_3
      0030A7 C0 E0            [24] 1727 	push	acc
      0030A9 74 70            [12] 1728 	mov	a,#(___str_3 >> 8)
      0030AB C0 E0            [24] 1729 	push	acc
      0030AD 74 80            [12] 1730 	mov	a,#0x80
      0030AF C0 E0            [24] 1731 	push	acc
      0030B1 12 57 AB         [24] 1732 	lcall	_printf
      0030B4 E5 81            [12] 1733 	mov	a,sp
      0030B6 24 F9            [12] 1734 	add	a,#0xf9
      0030B8 F5 81            [12] 1735 	mov	sp,a
                                   1736 ;	calc.c:146: printf("%08lx / ", d0);
      0030BA E5 08            [12] 1737 	mov	a,_bp
      0030BC 24 0F            [12] 1738 	add	a,#0x0f
      0030BE F8               [12] 1739 	mov	r0,a
      0030BF E6               [12] 1740 	mov	a,@r0
      0030C0 C0 E0            [24] 1741 	push	acc
      0030C2 08               [12] 1742 	inc	r0
      0030C3 E6               [12] 1743 	mov	a,@r0
      0030C4 C0 E0            [24] 1744 	push	acc
      0030C6 08               [12] 1745 	inc	r0
      0030C7 E6               [12] 1746 	mov	a,@r0
      0030C8 C0 E0            [24] 1747 	push	acc
      0030CA 08               [12] 1748 	inc	r0
      0030CB E6               [12] 1749 	mov	a,@r0
      0030CC C0 E0            [24] 1750 	push	acc
      0030CE 74 88            [12] 1751 	mov	a,#___str_4
      0030D0 C0 E0            [24] 1752 	push	acc
      0030D2 74 70            [12] 1753 	mov	a,#(___str_4 >> 8)
      0030D4 C0 E0            [24] 1754 	push	acc
      0030D6 74 80            [12] 1755 	mov	a,#0x80
      0030D8 C0 E0            [24] 1756 	push	acc
      0030DA 12 57 AB         [24] 1757 	lcall	_printf
      0030DD E5 81            [12] 1758 	mov	a,sp
      0030DF 24 F9            [12] 1759 	add	a,#0xf9
      0030E1 F5 81            [12] 1760 	mov	sp,a
                                   1761 ;	calc.c:147: printbin(d0);
      0030E3 E5 08            [12] 1762 	mov	a,_bp
      0030E5 24 0F            [12] 1763 	add	a,#0x0f
      0030E7 F8               [12] 1764 	mov	r0,a
      0030E8 86 07            [24] 1765 	mov	ar7,@r0
      0030EA 08               [12] 1766 	inc	r0
      0030EB 86 06            [24] 1767 	mov	ar6,@r0
      0030ED 08               [12] 1768 	inc	r0
      0030EE 86 05            [24] 1769 	mov	ar5,@r0
      0030F0 08               [12] 1770 	inc	r0
      0030F1 86 04            [24] 1771 	mov	ar4,@r0
      0030F3 8C 02            [24] 1772 	mov	ar2,r4
                                   1773 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      0030F5 E5 08            [12] 1774 	mov	a,_bp
      0030F7 24 17            [12] 1775 	add	a,#0x17
      0030F9 F8               [12] 1776 	mov	r0,a
      0030FA E4               [12] 1777 	clr	a
      0030FB F6               [12] 1778 	mov	@r0,a
      0030FC 08               [12] 1779 	inc	r0
      0030FD F6               [12] 1780 	mov	@r0,a
      0030FE 08               [12] 1781 	inc	r0
      0030FF F6               [12] 1782 	mov	@r0,a
      003100 08               [12] 1783 	inc	r0
      003101 76 80            [12] 1784 	mov	@r0,#0x80
      003103                       1785 00307$:
                                   1786 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      003103 E5 08            [12] 1787 	mov	a,_bp
      003105 24 04            [12] 1788 	add	a,#0x04
      003107 F8               [12] 1789 	mov	r0,a
      003108 A6 07            [24] 1790 	mov	@r0,ar7
      00310A 08               [12] 1791 	inc	r0
      00310B A6 06            [24] 1792 	mov	@r0,ar6
      00310D 08               [12] 1793 	inc	r0
      00310E A6 05            [24] 1794 	mov	@r0,ar5
      003110 08               [12] 1795 	inc	r0
      003111 A6 02            [24] 1796 	mov	@r0,ar2
      003113 E5 08            [12] 1797 	mov	a,_bp
      003115 24 04            [12] 1798 	add	a,#0x04
      003117 F8               [12] 1799 	mov	r0,a
      003118 E5 08            [12] 1800 	mov	a,_bp
      00311A 24 17            [12] 1801 	add	a,#0x17
      00311C F9               [12] 1802 	mov	r1,a
      00311D E7               [12] 1803 	mov	a,@r1
      00311E 56               [12] 1804 	anl	a,@r0
      00311F F6               [12] 1805 	mov	@r0,a
      003120 09               [12] 1806 	inc	r1
      003121 E7               [12] 1807 	mov	a,@r1
      003122 08               [12] 1808 	inc	r0
      003123 56               [12] 1809 	anl	a,@r0
      003124 F6               [12] 1810 	mov	@r0,a
      003125 09               [12] 1811 	inc	r1
      003126 E7               [12] 1812 	mov	a,@r1
      003127 08               [12] 1813 	inc	r0
      003128 56               [12] 1814 	anl	a,@r0
      003129 F6               [12] 1815 	mov	@r0,a
      00312A 09               [12] 1816 	inc	r1
      00312B E7               [12] 1817 	mov	a,@r1
      00312C 08               [12] 1818 	inc	r0
      00312D 56               [12] 1819 	anl	a,@r0
      00312E F6               [12] 1820 	mov	@r0,a
      00312F E5 08            [12] 1821 	mov	a,_bp
      003131 24 04            [12] 1822 	add	a,#0x04
      003133 F8               [12] 1823 	mov	r0,a
      003134 E6               [12] 1824 	mov	a,@r0
      003135 08               [12] 1825 	inc	r0
      003136 46               [12] 1826 	orl	a,@r0
      003137 08               [12] 1827 	inc	r0
      003138 46               [12] 1828 	orl	a,@r0
      003139 08               [12] 1829 	inc	r0
      00313A 46               [12] 1830 	orl	a,@r0
      00313B 60 06            [24] 1831 	jz	00418$
      00313D 7B 31            [12] 1832 	mov	r3,#0x31
      00313F 7C 00            [12] 1833 	mov	r4,#0x00
      003141 80 04            [24] 1834 	sjmp	00419$
      003143                       1835 00418$:
      003143 7B 30            [12] 1836 	mov	r3,#0x30
      003145 7C 00            [12] 1837 	mov	r4,#0x00
      003147                       1838 00419$:
      003147 8B 82            [24] 1839 	mov	dpl,r3
      003149 8C 83            [24] 1840 	mov	dph,r4
      00314B 12 29 C0         [24] 1841 	lcall	_putchar
                                   1842 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      00314E E5 08            [12] 1843 	mov	a,_bp
      003150 24 17            [12] 1844 	add	a,#0x17
      003152 F8               [12] 1845 	mov	r0,a
      003153 08               [12] 1846 	inc	r0
      003154 08               [12] 1847 	inc	r0
      003155 08               [12] 1848 	inc	r0
      003156 E6               [12] 1849 	mov	a,@r0
      003157 C3               [12] 1850 	clr	c
      003158 13               [12] 1851 	rrc	a
      003159 F6               [12] 1852 	mov	@r0,a
      00315A 18               [12] 1853 	dec	r0
      00315B E6               [12] 1854 	mov	a,@r0
      00315C 13               [12] 1855 	rrc	a
      00315D F6               [12] 1856 	mov	@r0,a
      00315E 18               [12] 1857 	dec	r0
      00315F E6               [12] 1858 	mov	a,@r0
      003160 13               [12] 1859 	rrc	a
      003161 F6               [12] 1860 	mov	@r0,a
      003162 18               [12] 1861 	dec	r0
      003163 E6               [12] 1862 	mov	a,@r0
      003164 13               [12] 1863 	rrc	a
      003165 F6               [12] 1864 	mov	@r0,a
      003166 E5 08            [12] 1865 	mov	a,_bp
      003168 24 17            [12] 1866 	add	a,#0x17
      00316A F8               [12] 1867 	mov	r0,a
      00316B E6               [12] 1868 	mov	a,@r0
      00316C 08               [12] 1869 	inc	r0
      00316D 46               [12] 1870 	orl	a,@r0
      00316E 08               [12] 1871 	inc	r0
      00316F 46               [12] 1872 	orl	a,@r0
      003170 08               [12] 1873 	inc	r0
      003171 46               [12] 1874 	orl	a,@r0
      003172 70 8F            [24] 1875 	jnz	00307$
                                   1876 ;	calc.c:148: printstr("\r\n");
      003174 7F 65            [12] 1877 	mov	r7,#___str_0
      003176 7E 70            [12] 1878 	mov	r6,#(___str_0 >> 8)
      003178 7D 80            [12] 1879 	mov	r5,#0x80
                                   1880 ;	calc.c:50: return;
      00317A                       1881 00310$:
                                   1882 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00317A 8F 82            [24] 1883 	mov	dpl,r7
      00317C 8E 83            [24] 1884 	mov	dph,r6
      00317E 8D F0            [24] 1885 	mov	b,r5
      003180 12 57 E4         [24] 1886 	lcall	__gptrget
      003183 FC               [12] 1887 	mov	r4,a
      003184 70 03            [24] 1888 	jnz	01025$
      003186 02 46 C5         [24] 1889 	ljmp	00217$
      003189                       1890 01025$:
      003189 7B 00            [12] 1891 	mov	r3,#0x00
      00318B 8C 82            [24] 1892 	mov	dpl,r4
      00318D 8B 83            [24] 1893 	mov	dph,r3
      00318F 12 29 C0         [24] 1894 	lcall	_putchar
      003192 0F               [12] 1895 	inc	r7
                                   1896 ;	calc.c:151: case 'P':
      003193 BF 00 E4         [24] 1897 	cjne	r7,#0x00,00310$
      003196 0E               [12] 1898 	inc	r6
      003197 80 E1            [24] 1899 	sjmp	00310$
      003199                       1900 00105$:
                                   1901 ;	calc.c:152: printstr("\r\n");
      003199 7F 65            [12] 1902 	mov	r7,#___str_0
      00319B 7E 70            [12] 1903 	mov	r6,#(___str_0 >> 8)
      00319D 7D 80            [12] 1904 	mov	r5,#0x80
                                   1905 ;	calc.c:50: return;
      00319F                       1906 00313$:
                                   1907 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00319F 8F 82            [24] 1908 	mov	dpl,r7
      0031A1 8E 83            [24] 1909 	mov	dph,r6
      0031A3 8D F0            [24] 1910 	mov	b,r5
      0031A5 12 57 E4         [24] 1911 	lcall	__gptrget
      0031A8 FC               [12] 1912 	mov	r4,a
      0031A9 60 10            [24] 1913 	jz	00229$
      0031AB 7B 00            [12] 1914 	mov	r3,#0x00
      0031AD 8C 82            [24] 1915 	mov	dpl,r4
      0031AF 8B 83            [24] 1916 	mov	dph,r3
      0031B1 12 29 C0         [24] 1917 	lcall	_putchar
      0031B4 0F               [12] 1918 	inc	r7
                                   1919 ;	calc.c:152: printstr("\r\n");
      0031B5 BF 00 E7         [24] 1920 	cjne	r7,#0x00,00313$
      0031B8 0E               [12] 1921 	inc	r6
      0031B9 80 E4            [24] 1922 	sjmp	00313$
      0031BB                       1923 00229$:
                                   1924 ;	calc.c:153: if (!stack_iter_peek(&ctx->s, dump_peek, ctx)) printstr("stack underflow\r\n");
      0031BB E5 08            [12] 1925 	mov	a,_bp
      0031BD 24 0C            [12] 1926 	add	a,#0x0c
      0031BF F8               [12] 1927 	mov	r0,a
      0031C0 86 07            [24] 1928 	mov	ar7,@r0
      0031C2 08               [12] 1929 	inc	r0
      0031C3 86 06            [24] 1930 	mov	ar6,@r0
      0031C5 08               [12] 1931 	inc	r0
      0031C6 86 05            [24] 1932 	mov	ar5,@r0
      0031C8 E5 08            [12] 1933 	mov	a,_bp
      0031CA 24 0C            [12] 1934 	add	a,#0x0c
      0031CC F8               [12] 1935 	mov	r0,a
      0031CD 74 09            [12] 1936 	mov	a,#0x09
      0031CF 26               [12] 1937 	add	a,@r0
      0031D0 FA               [12] 1938 	mov	r2,a
      0031D1 E4               [12] 1939 	clr	a
      0031D2 08               [12] 1940 	inc	r0
      0031D3 36               [12] 1941 	addc	a,@r0
      0031D4 FB               [12] 1942 	mov	r3,a
      0031D5 08               [12] 1943 	inc	r0
      0031D6 86 04            [24] 1944 	mov	ar4,@r0
      0031D8 C0 07            [24] 1945 	push	ar7
      0031DA C0 06            [24] 1946 	push	ar6
      0031DC C0 05            [24] 1947 	push	ar5
      0031DE 74 07            [12] 1948 	mov	a,#_dump_peek
      0031E0 C0 E0            [24] 1949 	push	acc
      0031E2 74 2E            [12] 1950 	mov	a,#(_dump_peek >> 8)
      0031E4 C0 E0            [24] 1951 	push	acc
      0031E6 8A 82            [24] 1952 	mov	dpl,r2
      0031E8 8B 83            [24] 1953 	mov	dph,r3
      0031EA 8C F0            [24] 1954 	mov	b,r4
      0031EC 12 28 EC         [24] 1955 	lcall	_stack_iter_peek
      0031EF AB 82            [24] 1956 	mov	r3,dpl
      0031F1 AC 83            [24] 1957 	mov	r4,dph
      0031F3 E5 81            [12] 1958 	mov	a,sp
      0031F5 24 FB            [12] 1959 	add	a,#0xfb
      0031F7 F5 81            [12] 1960 	mov	sp,a
      0031F9 EB               [12] 1961 	mov	a,r3
      0031FA 4C               [12] 1962 	orl	a,r4
      0031FB 60 03            [24] 1963 	jz	01029$
      0031FD 02 46 C5         [24] 1964 	ljmp	00217$
      003200                       1965 01029$:
      003200 7F 68            [12] 1966 	mov	r7,#___str_1
      003202 7E 70            [12] 1967 	mov	r6,#(___str_1 >> 8)
      003204 7D 80            [12] 1968 	mov	r5,#0x80
                                   1969 ;	calc.c:50: return;
      003206                       1970 00316$:
                                   1971 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003206 8F 82            [24] 1972 	mov	dpl,r7
      003208 8E 83            [24] 1973 	mov	dph,r6
      00320A 8D F0            [24] 1974 	mov	b,r5
      00320C 12 57 E4         [24] 1975 	lcall	__gptrget
      00320F FC               [12] 1976 	mov	r4,a
      003210 70 03            [24] 1977 	jnz	01030$
      003212 02 46 C5         [24] 1978 	ljmp	00217$
      003215                       1979 01030$:
      003215 7B 00            [12] 1980 	mov	r3,#0x00
      003217 8C 82            [24] 1981 	mov	dpl,r4
      003219 8B 83            [24] 1982 	mov	dph,r3
      00321B 12 29 C0         [24] 1983 	lcall	_putchar
      00321E 0F               [12] 1984 	inc	r7
                                   1985 ;	calc.c:156: case 'v':
      00321F BF 00 E4         [24] 1986 	cjne	r7,#0x00,00316$
      003222 0E               [12] 1987 	inc	r6
      003223 80 E1            [24] 1988 	sjmp	00316$
      003225                       1989 00109$:
                                   1990 ;	calc.c:157: printstr("\r\n");
      003225 7F 65            [12] 1991 	mov	r7,#___str_0
      003227 7E 70            [12] 1992 	mov	r6,#(___str_0 >> 8)
      003229 7D 80            [12] 1993 	mov	r5,#0x80
                                   1994 ;	calc.c:50: return;
      00322B                       1995 00319$:
                                   1996 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00322B 8F 82            [24] 1997 	mov	dpl,r7
      00322D 8E 83            [24] 1998 	mov	dph,r6
      00322F 8D F0            [24] 1999 	mov	b,r5
      003231 12 57 E4         [24] 2000 	lcall	__gptrget
      003234 FC               [12] 2001 	mov	r4,a
      003235 60 10            [24] 2002 	jz	00233$
      003237 7B 00            [12] 2003 	mov	r3,#0x00
      003239 8C 82            [24] 2004 	mov	dpl,r4
      00323B 8B 83            [24] 2005 	mov	dph,r3
      00323D 12 29 C0         [24] 2006 	lcall	_putchar
      003240 0F               [12] 2007 	inc	r7
                                   2008 ;	calc.c:157: printstr("\r\n");
      003241 BF 00 E7         [24] 2009 	cjne	r7,#0x00,00319$
      003244 0E               [12] 2010 	inc	r6
      003245 80 E4            [24] 2011 	sjmp	00319$
      003247                       2012 00233$:
                                   2013 ;	calc.c:158: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
      003247 E5 08            [12] 2014 	mov	a,_bp
      003249 24 0F            [12] 2015 	add	a,#0x0f
      00324B FF               [12] 2016 	mov	r7,a
      00324C 7E 00            [12] 2017 	mov	r6,#0x00
      00324E 7D 40            [12] 2018 	mov	r5,#0x40
      003250 E5 08            [12] 2019 	mov	a,_bp
      003252 24 0C            [12] 2020 	add	a,#0x0c
      003254 F8               [12] 2021 	mov	r0,a
      003255 74 09            [12] 2022 	mov	a,#0x09
      003257 26               [12] 2023 	add	a,@r0
      003258 FA               [12] 2024 	mov	r2,a
      003259 E4               [12] 2025 	clr	a
      00325A 08               [12] 2026 	inc	r0
      00325B 36               [12] 2027 	addc	a,@r0
      00325C FB               [12] 2028 	mov	r3,a
      00325D 08               [12] 2029 	inc	r0
      00325E 86 04            [24] 2030 	mov	ar4,@r0
      003260 C0 07            [24] 2031 	push	ar7
      003262 C0 06            [24] 2032 	push	ar6
      003264 C0 05            [24] 2033 	push	ar5
      003266 8A 82            [24] 2034 	mov	dpl,r2
      003268 8B 83            [24] 2035 	mov	dph,r3
      00326A 8C F0            [24] 2036 	mov	b,r4
      00326C 12 27 7F         [24] 2037 	lcall	_stack_pop
      00326F AB 82            [24] 2038 	mov	r3,dpl
      003271 AC 83            [24] 2039 	mov	r4,dph
      003273 15 81            [12] 2040 	dec	sp
      003275 15 81            [12] 2041 	dec	sp
      003277 15 81            [12] 2042 	dec	sp
      003279 EB               [12] 2043 	mov	a,r3
      00327A 4C               [12] 2044 	orl	a,r4
      00327B 70 25            [24] 2045 	jnz	00111$
      00327D 7F 68            [12] 2046 	mov	r7,#___str_1
      00327F 7E 70            [12] 2047 	mov	r6,#(___str_1 >> 8)
      003281 7D 80            [12] 2048 	mov	r5,#0x80
                                   2049 ;	calc.c:50: return;
      003283                       2050 00322$:
                                   2051 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003283 8F 82            [24] 2052 	mov	dpl,r7
      003285 8E 83            [24] 2053 	mov	dph,r6
      003287 8D F0            [24] 2054 	mov	b,r5
      003289 12 57 E4         [24] 2055 	lcall	__gptrget
      00328C FC               [12] 2056 	mov	r4,a
      00328D 70 03            [24] 2057 	jnz	01035$
      00328F 02 46 C5         [24] 2058 	ljmp	00217$
      003292                       2059 01035$:
      003292 7B 00            [12] 2060 	mov	r3,#0x00
      003294 8C 82            [24] 2061 	mov	dpl,r4
      003296 8B 83            [24] 2062 	mov	dph,r3
      003298 12 29 C0         [24] 2063 	lcall	_putchar
      00329B 0F               [12] 2064 	inc	r7
                                   2065 ;	calc.c:158: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
      00329C BF 00 E4         [24] 2066 	cjne	r7,#0x00,00322$
      00329F 0E               [12] 2067 	inc	r6
      0032A0 80 E1            [24] 2068 	sjmp	00322$
      0032A2                       2069 00111$:
                                   2070 ;	calc.c:160: printstr("VT ");
      0032A2 7F 99            [12] 2071 	mov	r7,#___str_7
      0032A4 7E 70            [12] 2072 	mov	r6,#(___str_7 >> 8)
      0032A6 7D 80            [12] 2073 	mov	r5,#0x80
                                   2074 ;	calc.c:50: return;
      0032A8                       2075 00325$:
                                   2076 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0032A8 8F 82            [24] 2077 	mov	dpl,r7
      0032AA 8E 83            [24] 2078 	mov	dph,r6
      0032AC 8D F0            [24] 2079 	mov	b,r5
      0032AE 12 57 E4         [24] 2080 	lcall	__gptrget
      0032B1 FC               [12] 2081 	mov	r4,a
      0032B2 60 10            [24] 2082 	jz	00237$
      0032B4 7B 00            [12] 2083 	mov	r3,#0x00
      0032B6 8C 82            [24] 2084 	mov	dpl,r4
      0032B8 8B 83            [24] 2085 	mov	dph,r3
      0032BA 12 29 C0         [24] 2086 	lcall	_putchar
      0032BD 0F               [12] 2087 	inc	r7
                                   2088 ;	calc.c:160: printstr("VT ");
      0032BE BF 00 E7         [24] 2089 	cjne	r7,#0x00,00325$
      0032C1 0E               [12] 2090 	inc	r6
      0032C2 80 E4            [24] 2091 	sjmp	00325$
      0032C4                       2092 00237$:
                                   2093 ;	calc.c:161: printf("% 11ld / ", d0);
      0032C4 E5 08            [12] 2094 	mov	a,_bp
      0032C6 24 0F            [12] 2095 	add	a,#0x0f
      0032C8 F8               [12] 2096 	mov	r0,a
      0032C9 E6               [12] 2097 	mov	a,@r0
      0032CA C0 E0            [24] 2098 	push	acc
      0032CC 08               [12] 2099 	inc	r0
      0032CD E6               [12] 2100 	mov	a,@r0
      0032CE C0 E0            [24] 2101 	push	acc
      0032D0 08               [12] 2102 	inc	r0
      0032D1 E6               [12] 2103 	mov	a,@r0
      0032D2 C0 E0            [24] 2104 	push	acc
      0032D4 08               [12] 2105 	inc	r0
      0032D5 E6               [12] 2106 	mov	a,@r0
      0032D6 C0 E0            [24] 2107 	push	acc
      0032D8 74 7E            [12] 2108 	mov	a,#___str_3
      0032DA C0 E0            [24] 2109 	push	acc
      0032DC 74 70            [12] 2110 	mov	a,#(___str_3 >> 8)
      0032DE C0 E0            [24] 2111 	push	acc
      0032E0 74 80            [12] 2112 	mov	a,#0x80
      0032E2 C0 E0            [24] 2113 	push	acc
      0032E4 12 57 AB         [24] 2114 	lcall	_printf
      0032E7 E5 81            [12] 2115 	mov	a,sp
      0032E9 24 F9            [12] 2116 	add	a,#0xf9
      0032EB F5 81            [12] 2117 	mov	sp,a
                                   2118 ;	calc.c:162: printf("%08lx / ", d0);
      0032ED E5 08            [12] 2119 	mov	a,_bp
      0032EF 24 0F            [12] 2120 	add	a,#0x0f
      0032F1 F8               [12] 2121 	mov	r0,a
      0032F2 E6               [12] 2122 	mov	a,@r0
      0032F3 C0 E0            [24] 2123 	push	acc
      0032F5 08               [12] 2124 	inc	r0
      0032F6 E6               [12] 2125 	mov	a,@r0
      0032F7 C0 E0            [24] 2126 	push	acc
      0032F9 08               [12] 2127 	inc	r0
      0032FA E6               [12] 2128 	mov	a,@r0
      0032FB C0 E0            [24] 2129 	push	acc
      0032FD 08               [12] 2130 	inc	r0
      0032FE E6               [12] 2131 	mov	a,@r0
      0032FF C0 E0            [24] 2132 	push	acc
      003301 74 88            [12] 2133 	mov	a,#___str_4
      003303 C0 E0            [24] 2134 	push	acc
      003305 74 70            [12] 2135 	mov	a,#(___str_4 >> 8)
      003307 C0 E0            [24] 2136 	push	acc
      003309 74 80            [12] 2137 	mov	a,#0x80
      00330B C0 E0            [24] 2138 	push	acc
      00330D 12 57 AB         [24] 2139 	lcall	_printf
      003310 E5 81            [12] 2140 	mov	a,sp
      003312 24 F9            [12] 2141 	add	a,#0xf9
      003314 F5 81            [12] 2142 	mov	sp,a
                                   2143 ;	calc.c:163: printbin(d0);
      003316 E5 08            [12] 2144 	mov	a,_bp
      003318 24 0F            [12] 2145 	add	a,#0x0f
      00331A F8               [12] 2146 	mov	r0,a
      00331B 86 07            [24] 2147 	mov	ar7,@r0
      00331D 08               [12] 2148 	inc	r0
      00331E 86 06            [24] 2149 	mov	ar6,@r0
      003320 08               [12] 2150 	inc	r0
      003321 86 05            [24] 2151 	mov	ar5,@r0
      003323 08               [12] 2152 	inc	r0
      003324 86 04            [24] 2153 	mov	ar4,@r0
      003326 8C 02            [24] 2154 	mov	ar2,r4
                                   2155 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      003328 E5 08            [12] 2156 	mov	a,_bp
      00332A 24 17            [12] 2157 	add	a,#0x17
      00332C F8               [12] 2158 	mov	r0,a
      00332D E4               [12] 2159 	clr	a
      00332E F6               [12] 2160 	mov	@r0,a
      00332F 08               [12] 2161 	inc	r0
      003330 F6               [12] 2162 	mov	@r0,a
      003331 08               [12] 2163 	inc	r0
      003332 F6               [12] 2164 	mov	@r0,a
      003333 08               [12] 2165 	inc	r0
      003334 76 80            [12] 2166 	mov	@r0,#0x80
      003336                       2167 00327$:
                                   2168 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      003336 E5 08            [12] 2169 	mov	a,_bp
      003338 24 04            [12] 2170 	add	a,#0x04
      00333A F8               [12] 2171 	mov	r0,a
      00333B A6 07            [24] 2172 	mov	@r0,ar7
      00333D 08               [12] 2173 	inc	r0
      00333E A6 06            [24] 2174 	mov	@r0,ar6
      003340 08               [12] 2175 	inc	r0
      003341 A6 05            [24] 2176 	mov	@r0,ar5
      003343 08               [12] 2177 	inc	r0
      003344 A6 02            [24] 2178 	mov	@r0,ar2
      003346 E5 08            [12] 2179 	mov	a,_bp
      003348 24 04            [12] 2180 	add	a,#0x04
      00334A F8               [12] 2181 	mov	r0,a
      00334B E5 08            [12] 2182 	mov	a,_bp
      00334D 24 17            [12] 2183 	add	a,#0x17
      00334F F9               [12] 2184 	mov	r1,a
      003350 E7               [12] 2185 	mov	a,@r1
      003351 56               [12] 2186 	anl	a,@r0
      003352 F6               [12] 2187 	mov	@r0,a
      003353 09               [12] 2188 	inc	r1
      003354 E7               [12] 2189 	mov	a,@r1
      003355 08               [12] 2190 	inc	r0
      003356 56               [12] 2191 	anl	a,@r0
      003357 F6               [12] 2192 	mov	@r0,a
      003358 09               [12] 2193 	inc	r1
      003359 E7               [12] 2194 	mov	a,@r1
      00335A 08               [12] 2195 	inc	r0
      00335B 56               [12] 2196 	anl	a,@r0
      00335C F6               [12] 2197 	mov	@r0,a
      00335D 09               [12] 2198 	inc	r1
      00335E E7               [12] 2199 	mov	a,@r1
      00335F 08               [12] 2200 	inc	r0
      003360 56               [12] 2201 	anl	a,@r0
      003361 F6               [12] 2202 	mov	@r0,a
      003362 E5 08            [12] 2203 	mov	a,_bp
      003364 24 04            [12] 2204 	add	a,#0x04
      003366 F8               [12] 2205 	mov	r0,a
      003367 E6               [12] 2206 	mov	a,@r0
      003368 08               [12] 2207 	inc	r0
      003369 46               [12] 2208 	orl	a,@r0
      00336A 08               [12] 2209 	inc	r0
      00336B 46               [12] 2210 	orl	a,@r0
      00336C 08               [12] 2211 	inc	r0
      00336D 46               [12] 2212 	orl	a,@r0
      00336E 60 06            [24] 2213 	jz	00420$
      003370 7B 31            [12] 2214 	mov	r3,#0x31
      003372 7C 00            [12] 2215 	mov	r4,#0x00
      003374 80 04            [24] 2216 	sjmp	00421$
      003376                       2217 00420$:
      003376 7B 30            [12] 2218 	mov	r3,#0x30
      003378 7C 00            [12] 2219 	mov	r4,#0x00
      00337A                       2220 00421$:
      00337A 8B 82            [24] 2221 	mov	dpl,r3
      00337C 8C 83            [24] 2222 	mov	dph,r4
      00337E 12 29 C0         [24] 2223 	lcall	_putchar
                                   2224 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      003381 E5 08            [12] 2225 	mov	a,_bp
      003383 24 17            [12] 2226 	add	a,#0x17
      003385 F8               [12] 2227 	mov	r0,a
      003386 08               [12] 2228 	inc	r0
      003387 08               [12] 2229 	inc	r0
      003388 08               [12] 2230 	inc	r0
      003389 E6               [12] 2231 	mov	a,@r0
      00338A C3               [12] 2232 	clr	c
      00338B 13               [12] 2233 	rrc	a
      00338C F6               [12] 2234 	mov	@r0,a
      00338D 18               [12] 2235 	dec	r0
      00338E E6               [12] 2236 	mov	a,@r0
      00338F 13               [12] 2237 	rrc	a
      003390 F6               [12] 2238 	mov	@r0,a
      003391 18               [12] 2239 	dec	r0
      003392 E6               [12] 2240 	mov	a,@r0
      003393 13               [12] 2241 	rrc	a
      003394 F6               [12] 2242 	mov	@r0,a
      003395 18               [12] 2243 	dec	r0
      003396 E6               [12] 2244 	mov	a,@r0
      003397 13               [12] 2245 	rrc	a
      003398 F6               [12] 2246 	mov	@r0,a
      003399 E5 08            [12] 2247 	mov	a,_bp
      00339B 24 17            [12] 2248 	add	a,#0x17
      00339D F8               [12] 2249 	mov	r0,a
      00339E E6               [12] 2250 	mov	a,@r0
      00339F 08               [12] 2251 	inc	r0
      0033A0 46               [12] 2252 	orl	a,@r0
      0033A1 08               [12] 2253 	inc	r0
      0033A2 46               [12] 2254 	orl	a,@r0
      0033A3 08               [12] 2255 	inc	r0
      0033A4 46               [12] 2256 	orl	a,@r0
      0033A5 70 8F            [24] 2257 	jnz	00327$
                                   2258 ;	calc.c:164: printstr("\r\n");
      0033A7 7F 65            [12] 2259 	mov	r7,#___str_0
      0033A9 7E 70            [12] 2260 	mov	r6,#(___str_0 >> 8)
      0033AB 7D 80            [12] 2261 	mov	r5,#0x80
                                   2262 ;	calc.c:50: return;
      0033AD                       2263 00330$:
                                   2264 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0033AD 8F 82            [24] 2265 	mov	dpl,r7
      0033AF 8E 83            [24] 2266 	mov	dph,r6
      0033B1 8D F0            [24] 2267 	mov	b,r5
      0033B3 12 57 E4         [24] 2268 	lcall	__gptrget
      0033B6 FC               [12] 2269 	mov	r4,a
      0033B7 70 03            [24] 2270 	jnz	01041$
      0033B9 02 46 C5         [24] 2271 	ljmp	00217$
      0033BC                       2272 01041$:
      0033BC 7B 00            [12] 2273 	mov	r3,#0x00
      0033BE 8C 82            [24] 2274 	mov	dpl,r4
      0033C0 8B 83            [24] 2275 	mov	dph,r3
      0033C2 12 29 C0         [24] 2276 	lcall	_putchar
      0033C5 0F               [12] 2277 	inc	r7
                                   2278 ;	calc.c:167: case 'V':
      0033C6 BF 00 E4         [24] 2279 	cjne	r7,#0x00,00330$
      0033C9 0E               [12] 2280 	inc	r6
      0033CA 80 E1            [24] 2281 	sjmp	00330$
      0033CC                       2282 00113$:
                                   2283 ;	calc.c:168: printstr("\r\n");
      0033CC 7F 65            [12] 2284 	mov	r7,#___str_0
      0033CE 7E 70            [12] 2285 	mov	r6,#(___str_0 >> 8)
      0033D0 7D 80            [12] 2286 	mov	r5,#0x80
                                   2287 ;	calc.c:50: return;
      0033D2                       2288 00333$:
                                   2289 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0033D2 8F 82            [24] 2290 	mov	dpl,r7
      0033D4 8E 83            [24] 2291 	mov	dph,r6
      0033D6 8D F0            [24] 2292 	mov	b,r5
      0033D8 12 57 E4         [24] 2293 	lcall	__gptrget
      0033DB FC               [12] 2294 	mov	r4,a
      0033DC 60 10            [24] 2295 	jz	00243$
      0033DE 7B 00            [12] 2296 	mov	r3,#0x00
      0033E0 8C 82            [24] 2297 	mov	dpl,r4
      0033E2 8B 83            [24] 2298 	mov	dph,r3
      0033E4 12 29 C0         [24] 2299 	lcall	_putchar
      0033E7 0F               [12] 2300 	inc	r7
                                   2301 ;	calc.c:168: printstr("\r\n");
      0033E8 BF 00 E7         [24] 2302 	cjne	r7,#0x00,00333$
      0033EB 0E               [12] 2303 	inc	r6
      0033EC 80 E4            [24] 2304 	sjmp	00333$
      0033EE                       2305 00243$:
                                   2306 ;	calc.c:169: (void)dump_pop(_ctx, delta);
      0033EE E5 08            [12] 2307 	mov	a,_bp
      0033F0 24 FB            [12] 2308 	add	a,#0xfb
      0033F2 F8               [12] 2309 	mov	r0,a
      0033F3 E6               [12] 2310 	mov	a,@r0
      0033F4 C0 E0            [24] 2311 	push	acc
      0033F6 08               [12] 2312 	inc	r0
      0033F7 E6               [12] 2313 	mov	a,@r0
      0033F8 C0 E0            [24] 2314 	push	acc
      0033FA 08               [12] 2315 	inc	r0
      0033FB E6               [12] 2316 	mov	a,@r0
      0033FC C0 E0            [24] 2317 	push	acc
      0033FE A8 08            [24] 2318 	mov	r0,_bp
      003400 08               [12] 2319 	inc	r0
      003401 86 82            [24] 2320 	mov	dpl,@r0
      003403 08               [12] 2321 	inc	r0
      003404 86 83            [24] 2322 	mov	dph,@r0
      003406 08               [12] 2323 	inc	r0
      003407 86 F0            [24] 2324 	mov	b,@r0
      003409 12 2B 53         [24] 2325 	lcall	_dump_pop
      00340C 15 81            [12] 2326 	dec	sp
      00340E 15 81            [12] 2327 	dec	sp
      003410 15 81            [12] 2328 	dec	sp
                                   2329 ;	calc.c:170: break;
      003412 02 46 C5         [24] 2330 	ljmp	00217$
                                   2331 ;	calc.c:171: case 'x':
      003415                       2332 00114$:
                                   2333 ;	calc.c:172: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003415 E5 08            [12] 2334 	mov	a,_bp
      003417 24 0F            [12] 2335 	add	a,#0x0f
      003419 FF               [12] 2336 	mov	r7,a
      00341A 7E 00            [12] 2337 	mov	r6,#0x00
      00341C 7D 40            [12] 2338 	mov	r5,#0x40
      00341E E5 08            [12] 2339 	mov	a,_bp
      003420 24 0C            [12] 2340 	add	a,#0x0c
      003422 F8               [12] 2341 	mov	r0,a
      003423 74 09            [12] 2342 	mov	a,#0x09
      003425 26               [12] 2343 	add	a,@r0
      003426 FA               [12] 2344 	mov	r2,a
      003427 E4               [12] 2345 	clr	a
      003428 08               [12] 2346 	inc	r0
      003429 36               [12] 2347 	addc	a,@r0
      00342A FB               [12] 2348 	mov	r3,a
      00342B 08               [12] 2349 	inc	r0
      00342C 86 04            [24] 2350 	mov	ar4,@r0
      00342E C0 07            [24] 2351 	push	ar7
      003430 C0 06            [24] 2352 	push	ar6
      003432 C0 05            [24] 2353 	push	ar5
      003434 8A 82            [24] 2354 	mov	dpl,r2
      003436 8B 83            [24] 2355 	mov	dph,r3
      003438 8C F0            [24] 2356 	mov	b,r4
      00343A 12 27 7F         [24] 2357 	lcall	_stack_pop
      00343D AB 82            [24] 2358 	mov	r3,dpl
      00343F AC 83            [24] 2359 	mov	r4,dph
      003441 15 81            [12] 2360 	dec	sp
      003443 15 81            [12] 2361 	dec	sp
      003445 15 81            [12] 2362 	dec	sp
      003447 EB               [12] 2363 	mov	a,r3
      003448 4C               [12] 2364 	orl	a,r4
      003449 70 25            [24] 2365 	jnz	00119$
      00344B 7F 9D            [12] 2366 	mov	r7,#___str_8
      00344D 7E 70            [12] 2367 	mov	r6,#(___str_8 >> 8)
      00344F 7D 80            [12] 2368 	mov	r5,#0x80
                                   2369 ;	calc.c:50: return;
      003451                       2370 00336$:
                                   2371 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003451 8F 82            [24] 2372 	mov	dpl,r7
      003453 8E 83            [24] 2373 	mov	dph,r6
      003455 8D F0            [24] 2374 	mov	b,r5
      003457 12 57 E4         [24] 2375 	lcall	__gptrget
      00345A FC               [12] 2376 	mov	r4,a
      00345B 70 03            [24] 2377 	jnz	01046$
      00345D 02 46 C5         [24] 2378 	ljmp	00217$
      003460                       2379 01046$:
      003460 7B 00            [12] 2380 	mov	r3,#0x00
      003462 8C 82            [24] 2381 	mov	dpl,r4
      003464 8B 83            [24] 2382 	mov	dph,r3
      003466 12 29 C0         [24] 2383 	lcall	_putchar
      003469 0F               [12] 2384 	inc	r7
                                   2385 ;	calc.c:172: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00346A BF 00 E4         [24] 2386 	cjne	r7,#0x00,00336$
      00346D 0E               [12] 2387 	inc	r6
      00346E 80 E1            [24] 2388 	sjmp	00336$
      003470                       2389 00119$:
                                   2390 ;	calc.c:173: else if (!stack_pop(&ctx->s, &d1)) {
      003470 E5 08            [12] 2391 	mov	a,_bp
      003472 24 13            [12] 2392 	add	a,#0x13
      003474 FF               [12] 2393 	mov	r7,a
      003475 7E 00            [12] 2394 	mov	r6,#0x00
      003477 7D 40            [12] 2395 	mov	r5,#0x40
      003479 E5 08            [12] 2396 	mov	a,_bp
      00347B 24 0C            [12] 2397 	add	a,#0x0c
      00347D F8               [12] 2398 	mov	r0,a
      00347E 74 09            [12] 2399 	mov	a,#0x09
      003480 26               [12] 2400 	add	a,@r0
      003481 FA               [12] 2401 	mov	r2,a
      003482 E4               [12] 2402 	clr	a
      003483 08               [12] 2403 	inc	r0
      003484 36               [12] 2404 	addc	a,@r0
      003485 FB               [12] 2405 	mov	r3,a
      003486 08               [12] 2406 	inc	r0
      003487 86 04            [24] 2407 	mov	ar4,@r0
      003489 C0 07            [24] 2408 	push	ar7
      00348B C0 06            [24] 2409 	push	ar6
      00348D C0 05            [24] 2410 	push	ar5
      00348F 8A 82            [24] 2411 	mov	dpl,r2
      003491 8B 83            [24] 2412 	mov	dph,r3
      003493 8C F0            [24] 2413 	mov	b,r4
      003495 12 27 7F         [24] 2414 	lcall	_stack_pop
      003498 AB 82            [24] 2415 	mov	r3,dpl
      00349A AC 83            [24] 2416 	mov	r4,dph
      00349C 15 81            [12] 2417 	dec	sp
      00349E 15 81            [12] 2418 	dec	sp
      0034A0 15 81            [12] 2419 	dec	sp
      0034A2 EB               [12] 2420 	mov	a,r3
      0034A3 4C               [12] 2421 	orl	a,r4
      0034A4 70 58            [24] 2422 	jnz	00116$
                                   2423 ;	calc.c:174: (void)stack_push(&ctx->s, d0);
      0034A6 E5 08            [12] 2424 	mov	a,_bp
      0034A8 24 0C            [12] 2425 	add	a,#0x0c
      0034AA F8               [12] 2426 	mov	r0,a
      0034AB 74 09            [12] 2427 	mov	a,#0x09
      0034AD 26               [12] 2428 	add	a,@r0
      0034AE FA               [12] 2429 	mov	r2,a
      0034AF E4               [12] 2430 	clr	a
      0034B0 08               [12] 2431 	inc	r0
      0034B1 36               [12] 2432 	addc	a,@r0
      0034B2 FB               [12] 2433 	mov	r3,a
      0034B3 08               [12] 2434 	inc	r0
      0034B4 86 04            [24] 2435 	mov	ar4,@r0
      0034B6 E5 08            [12] 2436 	mov	a,_bp
      0034B8 24 0F            [12] 2437 	add	a,#0x0f
      0034BA F8               [12] 2438 	mov	r0,a
      0034BB E6               [12] 2439 	mov	a,@r0
      0034BC C0 E0            [24] 2440 	push	acc
      0034BE 08               [12] 2441 	inc	r0
      0034BF E6               [12] 2442 	mov	a,@r0
      0034C0 C0 E0            [24] 2443 	push	acc
      0034C2 08               [12] 2444 	inc	r0
      0034C3 E6               [12] 2445 	mov	a,@r0
      0034C4 C0 E0            [24] 2446 	push	acc
      0034C6 08               [12] 2447 	inc	r0
      0034C7 E6               [12] 2448 	mov	a,@r0
      0034C8 C0 E0            [24] 2449 	push	acc
      0034CA 8A 82            [24] 2450 	mov	dpl,r2
      0034CC 8B 83            [24] 2451 	mov	dph,r3
      0034CE 8C F0            [24] 2452 	mov	b,r4
      0034D0 12 26 B5         [24] 2453 	lcall	_stack_push
      0034D3 E5 81            [12] 2454 	mov	a,sp
      0034D5 24 FC            [12] 2455 	add	a,#0xfc
      0034D7 F5 81            [12] 2456 	mov	sp,a
                                   2457 ;	calc.c:175: printstr("\r\nstack underflow\r\n");
      0034D9 7F 9D            [12] 2458 	mov	r7,#___str_8
      0034DB 7E 70            [12] 2459 	mov	r6,#(___str_8 >> 8)
      0034DD 7D 80            [12] 2460 	mov	r5,#0x80
                                   2461 ;	calc.c:50: return;
      0034DF                       2462 00339$:
                                   2463 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0034DF 8F 82            [24] 2464 	mov	dpl,r7
      0034E1 8E 83            [24] 2465 	mov	dph,r6
      0034E3 8D F0            [24] 2466 	mov	b,r5
      0034E5 12 57 E4         [24] 2467 	lcall	__gptrget
      0034E8 FC               [12] 2468 	mov	r4,a
      0034E9 70 03            [24] 2469 	jnz	01049$
      0034EB 02 46 C5         [24] 2470 	ljmp	00217$
      0034EE                       2471 01049$:
      0034EE 7B 00            [12] 2472 	mov	r3,#0x00
      0034F0 8C 82            [24] 2473 	mov	dpl,r4
      0034F2 8B 83            [24] 2474 	mov	dph,r3
      0034F4 12 29 C0         [24] 2475 	lcall	_putchar
      0034F7 0F               [12] 2476 	inc	r7
                                   2477 ;	calc.c:175: printstr("\r\nstack underflow\r\n");
      0034F8 BF 00 E4         [24] 2478 	cjne	r7,#0x00,00339$
      0034FB 0E               [12] 2479 	inc	r6
      0034FC 80 E1            [24] 2480 	sjmp	00339$
      0034FE                       2481 00116$:
                                   2482 ;	calc.c:177: (void)stack_push(&ctx->s, d0);
      0034FE E5 08            [12] 2483 	mov	a,_bp
      003500 24 0C            [12] 2484 	add	a,#0x0c
      003502 F8               [12] 2485 	mov	r0,a
      003503 74 09            [12] 2486 	mov	a,#0x09
      003505 26               [12] 2487 	add	a,@r0
      003506 FA               [12] 2488 	mov	r2,a
      003507 E4               [12] 2489 	clr	a
      003508 08               [12] 2490 	inc	r0
      003509 36               [12] 2491 	addc	a,@r0
      00350A FB               [12] 2492 	mov	r3,a
      00350B 08               [12] 2493 	inc	r0
      00350C 86 04            [24] 2494 	mov	ar4,@r0
      00350E E5 08            [12] 2495 	mov	a,_bp
      003510 24 0F            [12] 2496 	add	a,#0x0f
      003512 F8               [12] 2497 	mov	r0,a
      003513 E6               [12] 2498 	mov	a,@r0
      003514 C0 E0            [24] 2499 	push	acc
      003516 08               [12] 2500 	inc	r0
      003517 E6               [12] 2501 	mov	a,@r0
      003518 C0 E0            [24] 2502 	push	acc
      00351A 08               [12] 2503 	inc	r0
      00351B E6               [12] 2504 	mov	a,@r0
      00351C C0 E0            [24] 2505 	push	acc
      00351E 08               [12] 2506 	inc	r0
      00351F E6               [12] 2507 	mov	a,@r0
      003520 C0 E0            [24] 2508 	push	acc
      003522 8A 82            [24] 2509 	mov	dpl,r2
      003524 8B 83            [24] 2510 	mov	dph,r3
      003526 8C F0            [24] 2511 	mov	b,r4
      003528 12 26 B5         [24] 2512 	lcall	_stack_push
      00352B E5 81            [12] 2513 	mov	a,sp
      00352D 24 FC            [12] 2514 	add	a,#0xfc
      00352F F5 81            [12] 2515 	mov	sp,a
                                   2516 ;	calc.c:178: (void)stack_push(&ctx->s, d1);
      003531 E5 08            [12] 2517 	mov	a,_bp
      003533 24 0C            [12] 2518 	add	a,#0x0c
      003535 F8               [12] 2519 	mov	r0,a
      003536 74 09            [12] 2520 	mov	a,#0x09
      003538 26               [12] 2521 	add	a,@r0
      003539 FA               [12] 2522 	mov	r2,a
      00353A E4               [12] 2523 	clr	a
      00353B 08               [12] 2524 	inc	r0
      00353C 36               [12] 2525 	addc	a,@r0
      00353D FB               [12] 2526 	mov	r3,a
      00353E 08               [12] 2527 	inc	r0
      00353F 86 04            [24] 2528 	mov	ar4,@r0
      003541 E5 08            [12] 2529 	mov	a,_bp
      003543 24 13            [12] 2530 	add	a,#0x13
      003545 F8               [12] 2531 	mov	r0,a
      003546 E6               [12] 2532 	mov	a,@r0
      003547 C0 E0            [24] 2533 	push	acc
      003549 08               [12] 2534 	inc	r0
      00354A E6               [12] 2535 	mov	a,@r0
      00354B C0 E0            [24] 2536 	push	acc
      00354D 08               [12] 2537 	inc	r0
      00354E E6               [12] 2538 	mov	a,@r0
      00354F C0 E0            [24] 2539 	push	acc
      003551 08               [12] 2540 	inc	r0
      003552 E6               [12] 2541 	mov	a,@r0
      003553 C0 E0            [24] 2542 	push	acc
      003555 8A 82            [24] 2543 	mov	dpl,r2
      003557 8B 83            [24] 2544 	mov	dph,r3
      003559 8C F0            [24] 2545 	mov	b,r4
      00355B 12 26 B5         [24] 2546 	lcall	_stack_push
      00355E E5 81            [12] 2547 	mov	a,sp
      003560 24 FC            [12] 2548 	add	a,#0xfc
      003562 F5 81            [12] 2549 	mov	sp,a
                                   2550 ;	calc.c:180: break;
      003564 02 46 C5         [24] 2551 	ljmp	00217$
                                   2552 ;	calc.c:181: case '+':
      003567                       2553 00121$:
                                   2554 ;	calc.c:182: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003567 E5 08            [12] 2555 	mov	a,_bp
      003569 24 0F            [12] 2556 	add	a,#0x0f
      00356B FF               [12] 2557 	mov	r7,a
      00356C 7E 00            [12] 2558 	mov	r6,#0x00
      00356E 7D 40            [12] 2559 	mov	r5,#0x40
      003570 E5 08            [12] 2560 	mov	a,_bp
      003572 24 0C            [12] 2561 	add	a,#0x0c
      003574 F8               [12] 2562 	mov	r0,a
      003575 74 09            [12] 2563 	mov	a,#0x09
      003577 26               [12] 2564 	add	a,@r0
      003578 FA               [12] 2565 	mov	r2,a
      003579 E4               [12] 2566 	clr	a
      00357A 08               [12] 2567 	inc	r0
      00357B 36               [12] 2568 	addc	a,@r0
      00357C FB               [12] 2569 	mov	r3,a
      00357D 08               [12] 2570 	inc	r0
      00357E 86 04            [24] 2571 	mov	ar4,@r0
      003580 C0 07            [24] 2572 	push	ar7
      003582 C0 06            [24] 2573 	push	ar6
      003584 C0 05            [24] 2574 	push	ar5
      003586 8A 82            [24] 2575 	mov	dpl,r2
      003588 8B 83            [24] 2576 	mov	dph,r3
      00358A 8C F0            [24] 2577 	mov	b,r4
      00358C 12 27 7F         [24] 2578 	lcall	_stack_pop
      00358F AB 82            [24] 2579 	mov	r3,dpl
      003591 AC 83            [24] 2580 	mov	r4,dph
      003593 15 81            [12] 2581 	dec	sp
      003595 15 81            [12] 2582 	dec	sp
      003597 15 81            [12] 2583 	dec	sp
      003599 EB               [12] 2584 	mov	a,r3
      00359A 4C               [12] 2585 	orl	a,r4
      00359B 70 25            [24] 2586 	jnz	00126$
      00359D 7F 9D            [12] 2587 	mov	r7,#___str_8
      00359F 7E 70            [12] 2588 	mov	r6,#(___str_8 >> 8)
      0035A1 7D 80            [12] 2589 	mov	r5,#0x80
                                   2590 ;	calc.c:50: return;
      0035A3                       2591 00342$:
                                   2592 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0035A3 8F 82            [24] 2593 	mov	dpl,r7
      0035A5 8E 83            [24] 2594 	mov	dph,r6
      0035A7 8D F0            [24] 2595 	mov	b,r5
      0035A9 12 57 E4         [24] 2596 	lcall	__gptrget
      0035AC FC               [12] 2597 	mov	r4,a
      0035AD 70 03            [24] 2598 	jnz	01052$
      0035AF 02 46 C5         [24] 2599 	ljmp	00217$
      0035B2                       2600 01052$:
      0035B2 7B 00            [12] 2601 	mov	r3,#0x00
      0035B4 8C 82            [24] 2602 	mov	dpl,r4
      0035B6 8B 83            [24] 2603 	mov	dph,r3
      0035B8 12 29 C0         [24] 2604 	lcall	_putchar
      0035BB 0F               [12] 2605 	inc	r7
                                   2606 ;	calc.c:182: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0035BC BF 00 E4         [24] 2607 	cjne	r7,#0x00,00342$
      0035BF 0E               [12] 2608 	inc	r6
      0035C0 80 E1            [24] 2609 	sjmp	00342$
      0035C2                       2610 00126$:
                                   2611 ;	calc.c:183: else if (!stack_pop(&ctx->s, &d1)) {
      0035C2 E5 08            [12] 2612 	mov	a,_bp
      0035C4 24 13            [12] 2613 	add	a,#0x13
      0035C6 FF               [12] 2614 	mov	r7,a
      0035C7 7E 00            [12] 2615 	mov	r6,#0x00
      0035C9 7D 40            [12] 2616 	mov	r5,#0x40
      0035CB E5 08            [12] 2617 	mov	a,_bp
      0035CD 24 0C            [12] 2618 	add	a,#0x0c
      0035CF F8               [12] 2619 	mov	r0,a
      0035D0 74 09            [12] 2620 	mov	a,#0x09
      0035D2 26               [12] 2621 	add	a,@r0
      0035D3 FA               [12] 2622 	mov	r2,a
      0035D4 E4               [12] 2623 	clr	a
      0035D5 08               [12] 2624 	inc	r0
      0035D6 36               [12] 2625 	addc	a,@r0
      0035D7 FB               [12] 2626 	mov	r3,a
      0035D8 08               [12] 2627 	inc	r0
      0035D9 86 04            [24] 2628 	mov	ar4,@r0
      0035DB C0 07            [24] 2629 	push	ar7
      0035DD C0 06            [24] 2630 	push	ar6
      0035DF C0 05            [24] 2631 	push	ar5
      0035E1 8A 82            [24] 2632 	mov	dpl,r2
      0035E3 8B 83            [24] 2633 	mov	dph,r3
      0035E5 8C F0            [24] 2634 	mov	b,r4
      0035E7 12 27 7F         [24] 2635 	lcall	_stack_pop
      0035EA AB 82            [24] 2636 	mov	r3,dpl
      0035EC AC 83            [24] 2637 	mov	r4,dph
      0035EE 15 81            [12] 2638 	dec	sp
      0035F0 15 81            [12] 2639 	dec	sp
      0035F2 15 81            [12] 2640 	dec	sp
      0035F4 EB               [12] 2641 	mov	a,r3
      0035F5 4C               [12] 2642 	orl	a,r4
      0035F6 70 58            [24] 2643 	jnz	00123$
                                   2644 ;	calc.c:184: (void)stack_push(&ctx->s, d0);
      0035F8 E5 08            [12] 2645 	mov	a,_bp
      0035FA 24 0C            [12] 2646 	add	a,#0x0c
      0035FC F8               [12] 2647 	mov	r0,a
      0035FD 74 09            [12] 2648 	mov	a,#0x09
      0035FF 26               [12] 2649 	add	a,@r0
      003600 FA               [12] 2650 	mov	r2,a
      003601 E4               [12] 2651 	clr	a
      003602 08               [12] 2652 	inc	r0
      003603 36               [12] 2653 	addc	a,@r0
      003604 FB               [12] 2654 	mov	r3,a
      003605 08               [12] 2655 	inc	r0
      003606 86 04            [24] 2656 	mov	ar4,@r0
      003608 E5 08            [12] 2657 	mov	a,_bp
      00360A 24 0F            [12] 2658 	add	a,#0x0f
      00360C F8               [12] 2659 	mov	r0,a
      00360D E6               [12] 2660 	mov	a,@r0
      00360E C0 E0            [24] 2661 	push	acc
      003610 08               [12] 2662 	inc	r0
      003611 E6               [12] 2663 	mov	a,@r0
      003612 C0 E0            [24] 2664 	push	acc
      003614 08               [12] 2665 	inc	r0
      003615 E6               [12] 2666 	mov	a,@r0
      003616 C0 E0            [24] 2667 	push	acc
      003618 08               [12] 2668 	inc	r0
      003619 E6               [12] 2669 	mov	a,@r0
      00361A C0 E0            [24] 2670 	push	acc
      00361C 8A 82            [24] 2671 	mov	dpl,r2
      00361E 8B 83            [24] 2672 	mov	dph,r3
      003620 8C F0            [24] 2673 	mov	b,r4
      003622 12 26 B5         [24] 2674 	lcall	_stack_push
      003625 E5 81            [12] 2675 	mov	a,sp
      003627 24 FC            [12] 2676 	add	a,#0xfc
      003629 F5 81            [12] 2677 	mov	sp,a
                                   2678 ;	calc.c:185: printstr("\r\nstack underflow\r\n");
      00362B 7F 9D            [12] 2679 	mov	r7,#___str_8
      00362D 7E 70            [12] 2680 	mov	r6,#(___str_8 >> 8)
      00362F 7D 80            [12] 2681 	mov	r5,#0x80
                                   2682 ;	calc.c:50: return;
      003631                       2683 00345$:
                                   2684 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003631 8F 82            [24] 2685 	mov	dpl,r7
      003633 8E 83            [24] 2686 	mov	dph,r6
      003635 8D F0            [24] 2687 	mov	b,r5
      003637 12 57 E4         [24] 2688 	lcall	__gptrget
      00363A FC               [12] 2689 	mov	r4,a
      00363B 70 03            [24] 2690 	jnz	01055$
      00363D 02 46 C5         [24] 2691 	ljmp	00217$
      003640                       2692 01055$:
      003640 7B 00            [12] 2693 	mov	r3,#0x00
      003642 8C 82            [24] 2694 	mov	dpl,r4
      003644 8B 83            [24] 2695 	mov	dph,r3
      003646 12 29 C0         [24] 2696 	lcall	_putchar
      003649 0F               [12] 2697 	inc	r7
                                   2698 ;	calc.c:185: printstr("\r\nstack underflow\r\n");
      00364A BF 00 E4         [24] 2699 	cjne	r7,#0x00,00345$
      00364D 0E               [12] 2700 	inc	r6
      00364E 80 E1            [24] 2701 	sjmp	00345$
      003650                       2702 00123$:
                                   2703 ;	calc.c:187: d1 += d0;
      003650 E5 08            [12] 2704 	mov	a,_bp
      003652 24 13            [12] 2705 	add	a,#0x13
      003654 F8               [12] 2706 	mov	r0,a
      003655 E5 08            [12] 2707 	mov	a,_bp
      003657 24 0F            [12] 2708 	add	a,#0x0f
      003659 F9               [12] 2709 	mov	r1,a
      00365A E7               [12] 2710 	mov	a,@r1
      00365B 26               [12] 2711 	add	a,@r0
      00365C F6               [12] 2712 	mov	@r0,a
      00365D 09               [12] 2713 	inc	r1
      00365E E7               [12] 2714 	mov	a,@r1
      00365F 08               [12] 2715 	inc	r0
      003660 36               [12] 2716 	addc	a,@r0
      003661 F6               [12] 2717 	mov	@r0,a
      003662 09               [12] 2718 	inc	r1
      003663 E7               [12] 2719 	mov	a,@r1
      003664 08               [12] 2720 	inc	r0
      003665 36               [12] 2721 	addc	a,@r0
      003666 F6               [12] 2722 	mov	@r0,a
      003667 09               [12] 2723 	inc	r1
      003668 E7               [12] 2724 	mov	a,@r1
      003669 08               [12] 2725 	inc	r0
      00366A 36               [12] 2726 	addc	a,@r0
      00366B F6               [12] 2727 	mov	@r0,a
                                   2728 ;	calc.c:188: (void)stack_push(&ctx->s, d1);
      00366C E5 08            [12] 2729 	mov	a,_bp
      00366E 24 0C            [12] 2730 	add	a,#0x0c
      003670 F8               [12] 2731 	mov	r0,a
      003671 74 09            [12] 2732 	mov	a,#0x09
      003673 26               [12] 2733 	add	a,@r0
      003674 FA               [12] 2734 	mov	r2,a
      003675 E4               [12] 2735 	clr	a
      003676 08               [12] 2736 	inc	r0
      003677 36               [12] 2737 	addc	a,@r0
      003678 FB               [12] 2738 	mov	r3,a
      003679 08               [12] 2739 	inc	r0
      00367A 86 04            [24] 2740 	mov	ar4,@r0
      00367C E5 08            [12] 2741 	mov	a,_bp
      00367E 24 13            [12] 2742 	add	a,#0x13
      003680 F8               [12] 2743 	mov	r0,a
      003681 E6               [12] 2744 	mov	a,@r0
      003682 C0 E0            [24] 2745 	push	acc
      003684 08               [12] 2746 	inc	r0
      003685 E6               [12] 2747 	mov	a,@r0
      003686 C0 E0            [24] 2748 	push	acc
      003688 08               [12] 2749 	inc	r0
      003689 E6               [12] 2750 	mov	a,@r0
      00368A C0 E0            [24] 2751 	push	acc
      00368C 08               [12] 2752 	inc	r0
      00368D E6               [12] 2753 	mov	a,@r0
      00368E C0 E0            [24] 2754 	push	acc
      003690 8A 82            [24] 2755 	mov	dpl,r2
      003692 8B 83            [24] 2756 	mov	dph,r3
      003694 8C F0            [24] 2757 	mov	b,r4
      003696 12 26 B5         [24] 2758 	lcall	_stack_push
      003699 E5 81            [12] 2759 	mov	a,sp
      00369B 24 FC            [12] 2760 	add	a,#0xfc
      00369D F5 81            [12] 2761 	mov	sp,a
                                   2762 ;	calc.c:190: break;
      00369F 02 46 C5         [24] 2763 	ljmp	00217$
                                   2764 ;	calc.c:191: case '-':
      0036A2                       2765 00128$:
                                   2766 ;	calc.c:192: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0036A2 E5 08            [12] 2767 	mov	a,_bp
      0036A4 24 0F            [12] 2768 	add	a,#0x0f
      0036A6 FF               [12] 2769 	mov	r7,a
      0036A7 7E 00            [12] 2770 	mov	r6,#0x00
      0036A9 7D 40            [12] 2771 	mov	r5,#0x40
      0036AB E5 08            [12] 2772 	mov	a,_bp
      0036AD 24 0C            [12] 2773 	add	a,#0x0c
      0036AF F8               [12] 2774 	mov	r0,a
      0036B0 74 09            [12] 2775 	mov	a,#0x09
      0036B2 26               [12] 2776 	add	a,@r0
      0036B3 FA               [12] 2777 	mov	r2,a
      0036B4 E4               [12] 2778 	clr	a
      0036B5 08               [12] 2779 	inc	r0
      0036B6 36               [12] 2780 	addc	a,@r0
      0036B7 FB               [12] 2781 	mov	r3,a
      0036B8 08               [12] 2782 	inc	r0
      0036B9 86 04            [24] 2783 	mov	ar4,@r0
      0036BB C0 07            [24] 2784 	push	ar7
      0036BD C0 06            [24] 2785 	push	ar6
      0036BF C0 05            [24] 2786 	push	ar5
      0036C1 8A 82            [24] 2787 	mov	dpl,r2
      0036C3 8B 83            [24] 2788 	mov	dph,r3
      0036C5 8C F0            [24] 2789 	mov	b,r4
      0036C7 12 27 7F         [24] 2790 	lcall	_stack_pop
      0036CA AB 82            [24] 2791 	mov	r3,dpl
      0036CC AC 83            [24] 2792 	mov	r4,dph
      0036CE 15 81            [12] 2793 	dec	sp
      0036D0 15 81            [12] 2794 	dec	sp
      0036D2 15 81            [12] 2795 	dec	sp
      0036D4 EB               [12] 2796 	mov	a,r3
      0036D5 4C               [12] 2797 	orl	a,r4
      0036D6 70 25            [24] 2798 	jnz	00133$
      0036D8 7F 9D            [12] 2799 	mov	r7,#___str_8
      0036DA 7E 70            [12] 2800 	mov	r6,#(___str_8 >> 8)
      0036DC 7D 80            [12] 2801 	mov	r5,#0x80
                                   2802 ;	calc.c:50: return;
      0036DE                       2803 00348$:
                                   2804 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0036DE 8F 82            [24] 2805 	mov	dpl,r7
      0036E0 8E 83            [24] 2806 	mov	dph,r6
      0036E2 8D F0            [24] 2807 	mov	b,r5
      0036E4 12 57 E4         [24] 2808 	lcall	__gptrget
      0036E7 FC               [12] 2809 	mov	r4,a
      0036E8 70 03            [24] 2810 	jnz	01058$
      0036EA 02 46 C5         [24] 2811 	ljmp	00217$
      0036ED                       2812 01058$:
      0036ED 7B 00            [12] 2813 	mov	r3,#0x00
      0036EF 8C 82            [24] 2814 	mov	dpl,r4
      0036F1 8B 83            [24] 2815 	mov	dph,r3
      0036F3 12 29 C0         [24] 2816 	lcall	_putchar
      0036F6 0F               [12] 2817 	inc	r7
                                   2818 ;	calc.c:192: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0036F7 BF 00 E4         [24] 2819 	cjne	r7,#0x00,00348$
      0036FA 0E               [12] 2820 	inc	r6
      0036FB 80 E1            [24] 2821 	sjmp	00348$
      0036FD                       2822 00133$:
                                   2823 ;	calc.c:193: else if (!stack_pop(&ctx->s, &d1)) {
      0036FD E5 08            [12] 2824 	mov	a,_bp
      0036FF 24 13            [12] 2825 	add	a,#0x13
      003701 FF               [12] 2826 	mov	r7,a
      003702 7E 00            [12] 2827 	mov	r6,#0x00
      003704 7D 40            [12] 2828 	mov	r5,#0x40
      003706 E5 08            [12] 2829 	mov	a,_bp
      003708 24 0C            [12] 2830 	add	a,#0x0c
      00370A F8               [12] 2831 	mov	r0,a
      00370B 74 09            [12] 2832 	mov	a,#0x09
      00370D 26               [12] 2833 	add	a,@r0
      00370E FA               [12] 2834 	mov	r2,a
      00370F E4               [12] 2835 	clr	a
      003710 08               [12] 2836 	inc	r0
      003711 36               [12] 2837 	addc	a,@r0
      003712 FB               [12] 2838 	mov	r3,a
      003713 08               [12] 2839 	inc	r0
      003714 86 04            [24] 2840 	mov	ar4,@r0
      003716 C0 07            [24] 2841 	push	ar7
      003718 C0 06            [24] 2842 	push	ar6
      00371A C0 05            [24] 2843 	push	ar5
      00371C 8A 82            [24] 2844 	mov	dpl,r2
      00371E 8B 83            [24] 2845 	mov	dph,r3
      003720 8C F0            [24] 2846 	mov	b,r4
      003722 12 27 7F         [24] 2847 	lcall	_stack_pop
      003725 AB 82            [24] 2848 	mov	r3,dpl
      003727 AC 83            [24] 2849 	mov	r4,dph
      003729 15 81            [12] 2850 	dec	sp
      00372B 15 81            [12] 2851 	dec	sp
      00372D 15 81            [12] 2852 	dec	sp
      00372F EB               [12] 2853 	mov	a,r3
      003730 4C               [12] 2854 	orl	a,r4
      003731 70 58            [24] 2855 	jnz	00130$
                                   2856 ;	calc.c:194: (void)stack_push(&ctx->s, d0);
      003733 E5 08            [12] 2857 	mov	a,_bp
      003735 24 0C            [12] 2858 	add	a,#0x0c
      003737 F8               [12] 2859 	mov	r0,a
      003738 74 09            [12] 2860 	mov	a,#0x09
      00373A 26               [12] 2861 	add	a,@r0
      00373B FA               [12] 2862 	mov	r2,a
      00373C E4               [12] 2863 	clr	a
      00373D 08               [12] 2864 	inc	r0
      00373E 36               [12] 2865 	addc	a,@r0
      00373F FB               [12] 2866 	mov	r3,a
      003740 08               [12] 2867 	inc	r0
      003741 86 04            [24] 2868 	mov	ar4,@r0
      003743 E5 08            [12] 2869 	mov	a,_bp
      003745 24 0F            [12] 2870 	add	a,#0x0f
      003747 F8               [12] 2871 	mov	r0,a
      003748 E6               [12] 2872 	mov	a,@r0
      003749 C0 E0            [24] 2873 	push	acc
      00374B 08               [12] 2874 	inc	r0
      00374C E6               [12] 2875 	mov	a,@r0
      00374D C0 E0            [24] 2876 	push	acc
      00374F 08               [12] 2877 	inc	r0
      003750 E6               [12] 2878 	mov	a,@r0
      003751 C0 E0            [24] 2879 	push	acc
      003753 08               [12] 2880 	inc	r0
      003754 E6               [12] 2881 	mov	a,@r0
      003755 C0 E0            [24] 2882 	push	acc
      003757 8A 82            [24] 2883 	mov	dpl,r2
      003759 8B 83            [24] 2884 	mov	dph,r3
      00375B 8C F0            [24] 2885 	mov	b,r4
      00375D 12 26 B5         [24] 2886 	lcall	_stack_push
      003760 E5 81            [12] 2887 	mov	a,sp
      003762 24 FC            [12] 2888 	add	a,#0xfc
      003764 F5 81            [12] 2889 	mov	sp,a
                                   2890 ;	calc.c:195: printstr("\r\nstack underflow\r\n");
      003766 7F 9D            [12] 2891 	mov	r7,#___str_8
      003768 7E 70            [12] 2892 	mov	r6,#(___str_8 >> 8)
      00376A 7D 80            [12] 2893 	mov	r5,#0x80
                                   2894 ;	calc.c:50: return;
      00376C                       2895 00351$:
                                   2896 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00376C 8F 82            [24] 2897 	mov	dpl,r7
      00376E 8E 83            [24] 2898 	mov	dph,r6
      003770 8D F0            [24] 2899 	mov	b,r5
      003772 12 57 E4         [24] 2900 	lcall	__gptrget
      003775 FC               [12] 2901 	mov	r4,a
      003776 70 03            [24] 2902 	jnz	01061$
      003778 02 46 C5         [24] 2903 	ljmp	00217$
      00377B                       2904 01061$:
      00377B 7B 00            [12] 2905 	mov	r3,#0x00
      00377D 8C 82            [24] 2906 	mov	dpl,r4
      00377F 8B 83            [24] 2907 	mov	dph,r3
      003781 12 29 C0         [24] 2908 	lcall	_putchar
      003784 0F               [12] 2909 	inc	r7
                                   2910 ;	calc.c:195: printstr("\r\nstack underflow\r\n");
      003785 BF 00 E4         [24] 2911 	cjne	r7,#0x00,00351$
      003788 0E               [12] 2912 	inc	r6
      003789 80 E1            [24] 2913 	sjmp	00351$
      00378B                       2914 00130$:
                                   2915 ;	calc.c:197: d1 -= d0;
      00378B E5 08            [12] 2916 	mov	a,_bp
      00378D 24 13            [12] 2917 	add	a,#0x13
      00378F F8               [12] 2918 	mov	r0,a
      003790 E5 08            [12] 2919 	mov	a,_bp
      003792 24 0F            [12] 2920 	add	a,#0x0f
      003794 F9               [12] 2921 	mov	r1,a
      003795 E6               [12] 2922 	mov	a,@r0
      003796 C3               [12] 2923 	clr	c
      003797 97               [12] 2924 	subb	a,@r1
      003798 F6               [12] 2925 	mov	@r0,a
      003799 08               [12] 2926 	inc	r0
      00379A E6               [12] 2927 	mov	a,@r0
      00379B 09               [12] 2928 	inc	r1
      00379C 97               [12] 2929 	subb	a,@r1
      00379D F6               [12] 2930 	mov	@r0,a
      00379E 08               [12] 2931 	inc	r0
      00379F E6               [12] 2932 	mov	a,@r0
      0037A0 09               [12] 2933 	inc	r1
      0037A1 97               [12] 2934 	subb	a,@r1
      0037A2 F6               [12] 2935 	mov	@r0,a
      0037A3 08               [12] 2936 	inc	r0
      0037A4 E6               [12] 2937 	mov	a,@r0
      0037A5 09               [12] 2938 	inc	r1
      0037A6 97               [12] 2939 	subb	a,@r1
      0037A7 F6               [12] 2940 	mov	@r0,a
                                   2941 ;	calc.c:198: (void)stack_push(&ctx->s, d1);
      0037A8 E5 08            [12] 2942 	mov	a,_bp
      0037AA 24 0C            [12] 2943 	add	a,#0x0c
      0037AC F8               [12] 2944 	mov	r0,a
      0037AD 74 09            [12] 2945 	mov	a,#0x09
      0037AF 26               [12] 2946 	add	a,@r0
      0037B0 FA               [12] 2947 	mov	r2,a
      0037B1 E4               [12] 2948 	clr	a
      0037B2 08               [12] 2949 	inc	r0
      0037B3 36               [12] 2950 	addc	a,@r0
      0037B4 FB               [12] 2951 	mov	r3,a
      0037B5 08               [12] 2952 	inc	r0
      0037B6 86 04            [24] 2953 	mov	ar4,@r0
      0037B8 E5 08            [12] 2954 	mov	a,_bp
      0037BA 24 13            [12] 2955 	add	a,#0x13
      0037BC F8               [12] 2956 	mov	r0,a
      0037BD E6               [12] 2957 	mov	a,@r0
      0037BE C0 E0            [24] 2958 	push	acc
      0037C0 08               [12] 2959 	inc	r0
      0037C1 E6               [12] 2960 	mov	a,@r0
      0037C2 C0 E0            [24] 2961 	push	acc
      0037C4 08               [12] 2962 	inc	r0
      0037C5 E6               [12] 2963 	mov	a,@r0
      0037C6 C0 E0            [24] 2964 	push	acc
      0037C8 08               [12] 2965 	inc	r0
      0037C9 E6               [12] 2966 	mov	a,@r0
      0037CA C0 E0            [24] 2967 	push	acc
      0037CC 8A 82            [24] 2968 	mov	dpl,r2
      0037CE 8B 83            [24] 2969 	mov	dph,r3
      0037D0 8C F0            [24] 2970 	mov	b,r4
      0037D2 12 26 B5         [24] 2971 	lcall	_stack_push
      0037D5 E5 81            [12] 2972 	mov	a,sp
      0037D7 24 FC            [12] 2973 	add	a,#0xfc
      0037D9 F5 81            [12] 2974 	mov	sp,a
                                   2975 ;	calc.c:200: break;
      0037DB 02 46 C5         [24] 2976 	ljmp	00217$
                                   2977 ;	calc.c:201: case '*':
      0037DE                       2978 00135$:
                                   2979 ;	calc.c:202: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0037DE E5 08            [12] 2980 	mov	a,_bp
      0037E0 24 0F            [12] 2981 	add	a,#0x0f
      0037E2 FF               [12] 2982 	mov	r7,a
      0037E3 7E 00            [12] 2983 	mov	r6,#0x00
      0037E5 7D 40            [12] 2984 	mov	r5,#0x40
      0037E7 E5 08            [12] 2985 	mov	a,_bp
      0037E9 24 0C            [12] 2986 	add	a,#0x0c
      0037EB F8               [12] 2987 	mov	r0,a
      0037EC 74 09            [12] 2988 	mov	a,#0x09
      0037EE 26               [12] 2989 	add	a,@r0
      0037EF FA               [12] 2990 	mov	r2,a
      0037F0 E4               [12] 2991 	clr	a
      0037F1 08               [12] 2992 	inc	r0
      0037F2 36               [12] 2993 	addc	a,@r0
      0037F3 FB               [12] 2994 	mov	r3,a
      0037F4 08               [12] 2995 	inc	r0
      0037F5 86 04            [24] 2996 	mov	ar4,@r0
      0037F7 C0 07            [24] 2997 	push	ar7
      0037F9 C0 06            [24] 2998 	push	ar6
      0037FB C0 05            [24] 2999 	push	ar5
      0037FD 8A 82            [24] 3000 	mov	dpl,r2
      0037FF 8B 83            [24] 3001 	mov	dph,r3
      003801 8C F0            [24] 3002 	mov	b,r4
      003803 12 27 7F         [24] 3003 	lcall	_stack_pop
      003806 AB 82            [24] 3004 	mov	r3,dpl
      003808 AC 83            [24] 3005 	mov	r4,dph
      00380A 15 81            [12] 3006 	dec	sp
      00380C 15 81            [12] 3007 	dec	sp
      00380E 15 81            [12] 3008 	dec	sp
      003810 EB               [12] 3009 	mov	a,r3
      003811 4C               [12] 3010 	orl	a,r4
      003812 70 25            [24] 3011 	jnz	00140$
      003814 7F 9D            [12] 3012 	mov	r7,#___str_8
      003816 7E 70            [12] 3013 	mov	r6,#(___str_8 >> 8)
      003818 7D 80            [12] 3014 	mov	r5,#0x80
                                   3015 ;	calc.c:50: return;
      00381A                       3016 00354$:
                                   3017 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00381A 8F 82            [24] 3018 	mov	dpl,r7
      00381C 8E 83            [24] 3019 	mov	dph,r6
      00381E 8D F0            [24] 3020 	mov	b,r5
      003820 12 57 E4         [24] 3021 	lcall	__gptrget
      003823 FC               [12] 3022 	mov	r4,a
      003824 70 03            [24] 3023 	jnz	01064$
      003826 02 46 C5         [24] 3024 	ljmp	00217$
      003829                       3025 01064$:
      003829 7B 00            [12] 3026 	mov	r3,#0x00
      00382B 8C 82            [24] 3027 	mov	dpl,r4
      00382D 8B 83            [24] 3028 	mov	dph,r3
      00382F 12 29 C0         [24] 3029 	lcall	_putchar
      003832 0F               [12] 3030 	inc	r7
                                   3031 ;	calc.c:202: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003833 BF 00 E4         [24] 3032 	cjne	r7,#0x00,00354$
      003836 0E               [12] 3033 	inc	r6
      003837 80 E1            [24] 3034 	sjmp	00354$
      003839                       3035 00140$:
                                   3036 ;	calc.c:203: else if (!stack_pop(&ctx->s, &d1)) {
      003839 E5 08            [12] 3037 	mov	a,_bp
      00383B 24 13            [12] 3038 	add	a,#0x13
      00383D FF               [12] 3039 	mov	r7,a
      00383E 7E 00            [12] 3040 	mov	r6,#0x00
      003840 7D 40            [12] 3041 	mov	r5,#0x40
      003842 E5 08            [12] 3042 	mov	a,_bp
      003844 24 0C            [12] 3043 	add	a,#0x0c
      003846 F8               [12] 3044 	mov	r0,a
      003847 74 09            [12] 3045 	mov	a,#0x09
      003849 26               [12] 3046 	add	a,@r0
      00384A FA               [12] 3047 	mov	r2,a
      00384B E4               [12] 3048 	clr	a
      00384C 08               [12] 3049 	inc	r0
      00384D 36               [12] 3050 	addc	a,@r0
      00384E FB               [12] 3051 	mov	r3,a
      00384F 08               [12] 3052 	inc	r0
      003850 86 04            [24] 3053 	mov	ar4,@r0
      003852 C0 07            [24] 3054 	push	ar7
      003854 C0 06            [24] 3055 	push	ar6
      003856 C0 05            [24] 3056 	push	ar5
      003858 8A 82            [24] 3057 	mov	dpl,r2
      00385A 8B 83            [24] 3058 	mov	dph,r3
      00385C 8C F0            [24] 3059 	mov	b,r4
      00385E 12 27 7F         [24] 3060 	lcall	_stack_pop
      003861 AB 82            [24] 3061 	mov	r3,dpl
      003863 AC 83            [24] 3062 	mov	r4,dph
      003865 15 81            [12] 3063 	dec	sp
      003867 15 81            [12] 3064 	dec	sp
      003869 15 81            [12] 3065 	dec	sp
      00386B EB               [12] 3066 	mov	a,r3
      00386C 4C               [12] 3067 	orl	a,r4
      00386D 70 58            [24] 3068 	jnz	00137$
                                   3069 ;	calc.c:204: (void)stack_push(&ctx->s, d0);
      00386F E5 08            [12] 3070 	mov	a,_bp
      003871 24 0C            [12] 3071 	add	a,#0x0c
      003873 F8               [12] 3072 	mov	r0,a
      003874 74 09            [12] 3073 	mov	a,#0x09
      003876 26               [12] 3074 	add	a,@r0
      003877 FA               [12] 3075 	mov	r2,a
      003878 E4               [12] 3076 	clr	a
      003879 08               [12] 3077 	inc	r0
      00387A 36               [12] 3078 	addc	a,@r0
      00387B FB               [12] 3079 	mov	r3,a
      00387C 08               [12] 3080 	inc	r0
      00387D 86 04            [24] 3081 	mov	ar4,@r0
      00387F E5 08            [12] 3082 	mov	a,_bp
      003881 24 0F            [12] 3083 	add	a,#0x0f
      003883 F8               [12] 3084 	mov	r0,a
      003884 E6               [12] 3085 	mov	a,@r0
      003885 C0 E0            [24] 3086 	push	acc
      003887 08               [12] 3087 	inc	r0
      003888 E6               [12] 3088 	mov	a,@r0
      003889 C0 E0            [24] 3089 	push	acc
      00388B 08               [12] 3090 	inc	r0
      00388C E6               [12] 3091 	mov	a,@r0
      00388D C0 E0            [24] 3092 	push	acc
      00388F 08               [12] 3093 	inc	r0
      003890 E6               [12] 3094 	mov	a,@r0
      003891 C0 E0            [24] 3095 	push	acc
      003893 8A 82            [24] 3096 	mov	dpl,r2
      003895 8B 83            [24] 3097 	mov	dph,r3
      003897 8C F0            [24] 3098 	mov	b,r4
      003899 12 26 B5         [24] 3099 	lcall	_stack_push
      00389C E5 81            [12] 3100 	mov	a,sp
      00389E 24 FC            [12] 3101 	add	a,#0xfc
      0038A0 F5 81            [12] 3102 	mov	sp,a
                                   3103 ;	calc.c:205: printstr("\r\nstack underflow\r\n");
      0038A2 7F 9D            [12] 3104 	mov	r7,#___str_8
      0038A4 7E 70            [12] 3105 	mov	r6,#(___str_8 >> 8)
      0038A6 7D 80            [12] 3106 	mov	r5,#0x80
                                   3107 ;	calc.c:50: return;
      0038A8                       3108 00357$:
                                   3109 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0038A8 8F 82            [24] 3110 	mov	dpl,r7
      0038AA 8E 83            [24] 3111 	mov	dph,r6
      0038AC 8D F0            [24] 3112 	mov	b,r5
      0038AE 12 57 E4         [24] 3113 	lcall	__gptrget
      0038B1 FC               [12] 3114 	mov	r4,a
      0038B2 70 03            [24] 3115 	jnz	01067$
      0038B4 02 46 C5         [24] 3116 	ljmp	00217$
      0038B7                       3117 01067$:
      0038B7 7B 00            [12] 3118 	mov	r3,#0x00
      0038B9 8C 82            [24] 3119 	mov	dpl,r4
      0038BB 8B 83            [24] 3120 	mov	dph,r3
      0038BD 12 29 C0         [24] 3121 	lcall	_putchar
      0038C0 0F               [12] 3122 	inc	r7
                                   3123 ;	calc.c:205: printstr("\r\nstack underflow\r\n");
      0038C1 BF 00 E4         [24] 3124 	cjne	r7,#0x00,00357$
      0038C4 0E               [12] 3125 	inc	r6
      0038C5 80 E1            [24] 3126 	sjmp	00357$
      0038C7                       3127 00137$:
                                   3128 ;	calc.c:207: d1 *= d0;
      0038C7 E5 08            [12] 3129 	mov	a,_bp
      0038C9 24 0F            [12] 3130 	add	a,#0x0f
      0038CB F8               [12] 3131 	mov	r0,a
      0038CC E6               [12] 3132 	mov	a,@r0
      0038CD C0 E0            [24] 3133 	push	acc
      0038CF 08               [12] 3134 	inc	r0
      0038D0 E6               [12] 3135 	mov	a,@r0
      0038D1 C0 E0            [24] 3136 	push	acc
      0038D3 08               [12] 3137 	inc	r0
      0038D4 E6               [12] 3138 	mov	a,@r0
      0038D5 C0 E0            [24] 3139 	push	acc
      0038D7 08               [12] 3140 	inc	r0
      0038D8 E6               [12] 3141 	mov	a,@r0
      0038D9 C0 E0            [24] 3142 	push	acc
      0038DB E5 08            [12] 3143 	mov	a,_bp
      0038DD 24 13            [12] 3144 	add	a,#0x13
      0038DF F8               [12] 3145 	mov	r0,a
      0038E0 86 82            [24] 3146 	mov	dpl,@r0
      0038E2 08               [12] 3147 	inc	r0
      0038E3 86 83            [24] 3148 	mov	dph,@r0
      0038E5 08               [12] 3149 	inc	r0
      0038E6 86 F0            [24] 3150 	mov	b,@r0
      0038E8 08               [12] 3151 	inc	r0
      0038E9 E6               [12] 3152 	mov	a,@r0
      0038EA 12 5B DD         [24] 3153 	lcall	__mullong
      0038ED AF 82            [24] 3154 	mov	r7,dpl
      0038EF AE 83            [24] 3155 	mov	r6,dph
      0038F1 AD F0            [24] 3156 	mov	r5,b
      0038F3 FC               [12] 3157 	mov	r4,a
      0038F4 E5 81            [12] 3158 	mov	a,sp
      0038F6 24 FC            [12] 3159 	add	a,#0xfc
      0038F8 F5 81            [12] 3160 	mov	sp,a
      0038FA E5 08            [12] 3161 	mov	a,_bp
      0038FC 24 13            [12] 3162 	add	a,#0x13
      0038FE F8               [12] 3163 	mov	r0,a
      0038FF A6 07            [24] 3164 	mov	@r0,ar7
      003901 08               [12] 3165 	inc	r0
      003902 A6 06            [24] 3166 	mov	@r0,ar6
      003904 08               [12] 3167 	inc	r0
      003905 A6 05            [24] 3168 	mov	@r0,ar5
      003907 08               [12] 3169 	inc	r0
      003908 A6 04            [24] 3170 	mov	@r0,ar4
                                   3171 ;	calc.c:208: (void)stack_push(&ctx->s, d1);
      00390A E5 08            [12] 3172 	mov	a,_bp
      00390C 24 0C            [12] 3173 	add	a,#0x0c
      00390E F8               [12] 3174 	mov	r0,a
      00390F 74 09            [12] 3175 	mov	a,#0x09
      003911 26               [12] 3176 	add	a,@r0
      003912 FA               [12] 3177 	mov	r2,a
      003913 E4               [12] 3178 	clr	a
      003914 08               [12] 3179 	inc	r0
      003915 36               [12] 3180 	addc	a,@r0
      003916 FB               [12] 3181 	mov	r3,a
      003917 08               [12] 3182 	inc	r0
      003918 86 04            [24] 3183 	mov	ar4,@r0
      00391A E5 08            [12] 3184 	mov	a,_bp
      00391C 24 13            [12] 3185 	add	a,#0x13
      00391E F8               [12] 3186 	mov	r0,a
      00391F E6               [12] 3187 	mov	a,@r0
      003920 C0 E0            [24] 3188 	push	acc
      003922 08               [12] 3189 	inc	r0
      003923 E6               [12] 3190 	mov	a,@r0
      003924 C0 E0            [24] 3191 	push	acc
      003926 08               [12] 3192 	inc	r0
      003927 E6               [12] 3193 	mov	a,@r0
      003928 C0 E0            [24] 3194 	push	acc
      00392A 08               [12] 3195 	inc	r0
      00392B E6               [12] 3196 	mov	a,@r0
      00392C C0 E0            [24] 3197 	push	acc
      00392E 8A 82            [24] 3198 	mov	dpl,r2
      003930 8B 83            [24] 3199 	mov	dph,r3
      003932 8C F0            [24] 3200 	mov	b,r4
      003934 12 26 B5         [24] 3201 	lcall	_stack_push
      003937 E5 81            [12] 3202 	mov	a,sp
      003939 24 FC            [12] 3203 	add	a,#0xfc
      00393B F5 81            [12] 3204 	mov	sp,a
                                   3205 ;	calc.c:210: break;
      00393D 02 46 C5         [24] 3206 	ljmp	00217$
                                   3207 ;	calc.c:212: case '\\':
      003940                       3208 00143$:
                                   3209 ;	calc.c:213: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003940 C0 05            [24] 3210 	push	ar5
      003942 C0 06            [24] 3211 	push	ar6
      003944 C0 07            [24] 3212 	push	ar7
      003946 E5 08            [12] 3213 	mov	a,_bp
      003948 24 0F            [12] 3214 	add	a,#0x0f
      00394A FC               [12] 3215 	mov	r4,a
      00394B 7B 00            [12] 3216 	mov	r3,#0x00
      00394D 7A 40            [12] 3217 	mov	r2,#0x40
      00394F E5 08            [12] 3218 	mov	a,_bp
      003951 24 0C            [12] 3219 	add	a,#0x0c
      003953 F8               [12] 3220 	mov	r0,a
      003954 74 09            [12] 3221 	mov	a,#0x09
      003956 26               [12] 3222 	add	a,@r0
      003957 FD               [12] 3223 	mov	r5,a
      003958 E4               [12] 3224 	clr	a
      003959 08               [12] 3225 	inc	r0
      00395A 36               [12] 3226 	addc	a,@r0
      00395B FE               [12] 3227 	mov	r6,a
      00395C 08               [12] 3228 	inc	r0
      00395D 86 07            [24] 3229 	mov	ar7,@r0
      00395F C0 05            [24] 3230 	push	ar5
      003961 C0 04            [24] 3231 	push	ar4
      003963 C0 03            [24] 3232 	push	ar3
      003965 C0 02            [24] 3233 	push	ar2
      003967 8D 82            [24] 3234 	mov	dpl,r5
      003969 8E 83            [24] 3235 	mov	dph,r6
      00396B 8F F0            [24] 3236 	mov	b,r7
      00396D 12 27 7F         [24] 3237 	lcall	_stack_pop
      003970 AE 82            [24] 3238 	mov	r6,dpl
      003972 AF 83            [24] 3239 	mov	r7,dph
      003974 15 81            [12] 3240 	dec	sp
      003976 15 81            [12] 3241 	dec	sp
      003978 15 81            [12] 3242 	dec	sp
      00397A D0 05            [24] 3243 	pop	ar5
      00397C EE               [12] 3244 	mov	a,r6
      00397D 4F               [12] 3245 	orl	a,r7
      00397E D0 07            [24] 3246 	pop	ar7
      003980 D0 06            [24] 3247 	pop	ar6
      003982 D0 05            [24] 3248 	pop	ar5
      003984 70 25            [24] 3249 	jnz	00154$
      003986 7F 9D            [12] 3250 	mov	r7,#___str_8
      003988 7E 70            [12] 3251 	mov	r6,#(___str_8 >> 8)
      00398A 7D 80            [12] 3252 	mov	r5,#0x80
                                   3253 ;	calc.c:50: return;
      00398C                       3254 00360$:
                                   3255 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00398C 8F 82            [24] 3256 	mov	dpl,r7
      00398E 8E 83            [24] 3257 	mov	dph,r6
      003990 8D F0            [24] 3258 	mov	b,r5
      003992 12 57 E4         [24] 3259 	lcall	__gptrget
      003995 FC               [12] 3260 	mov	r4,a
      003996 70 03            [24] 3261 	jnz	01070$
      003998 02 46 C5         [24] 3262 	ljmp	00217$
      00399B                       3263 01070$:
      00399B 7B 00            [12] 3264 	mov	r3,#0x00
      00399D 8C 82            [24] 3265 	mov	dpl,r4
      00399F 8B 83            [24] 3266 	mov	dph,r3
      0039A1 12 29 C0         [24] 3267 	lcall	_putchar
      0039A4 0F               [12] 3268 	inc	r7
                                   3269 ;	calc.c:213: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0039A5 BF 00 E4         [24] 3270 	cjne	r7,#0x00,00360$
      0039A8 0E               [12] 3271 	inc	r6
      0039A9 80 E1            [24] 3272 	sjmp	00360$
      0039AB                       3273 00154$:
                                   3274 ;	calc.c:214: else if (!stack_pop(&ctx->s, &d1)) {
      0039AB C0 05            [24] 3275 	push	ar5
      0039AD C0 06            [24] 3276 	push	ar6
      0039AF C0 07            [24] 3277 	push	ar7
      0039B1 E5 08            [12] 3278 	mov	a,_bp
      0039B3 24 13            [12] 3279 	add	a,#0x13
      0039B5 FC               [12] 3280 	mov	r4,a
      0039B6 7B 00            [12] 3281 	mov	r3,#0x00
      0039B8 7A 40            [12] 3282 	mov	r2,#0x40
      0039BA E5 08            [12] 3283 	mov	a,_bp
      0039BC 24 0C            [12] 3284 	add	a,#0x0c
      0039BE F8               [12] 3285 	mov	r0,a
      0039BF 74 09            [12] 3286 	mov	a,#0x09
      0039C1 26               [12] 3287 	add	a,@r0
      0039C2 FD               [12] 3288 	mov	r5,a
      0039C3 E4               [12] 3289 	clr	a
      0039C4 08               [12] 3290 	inc	r0
      0039C5 36               [12] 3291 	addc	a,@r0
      0039C6 FE               [12] 3292 	mov	r6,a
      0039C7 08               [12] 3293 	inc	r0
      0039C8 86 07            [24] 3294 	mov	ar7,@r0
      0039CA C0 05            [24] 3295 	push	ar5
      0039CC C0 04            [24] 3296 	push	ar4
      0039CE C0 03            [24] 3297 	push	ar3
      0039D0 C0 02            [24] 3298 	push	ar2
      0039D2 8D 82            [24] 3299 	mov	dpl,r5
      0039D4 8E 83            [24] 3300 	mov	dph,r6
      0039D6 8F F0            [24] 3301 	mov	b,r7
      0039D8 12 27 7F         [24] 3302 	lcall	_stack_pop
      0039DB AE 82            [24] 3303 	mov	r6,dpl
      0039DD AF 83            [24] 3304 	mov	r7,dph
      0039DF 15 81            [12] 3305 	dec	sp
      0039E1 15 81            [12] 3306 	dec	sp
      0039E3 15 81            [12] 3307 	dec	sp
      0039E5 D0 05            [24] 3308 	pop	ar5
      0039E7 EE               [12] 3309 	mov	a,r6
      0039E8 4F               [12] 3310 	orl	a,r7
      0039E9 D0 07            [24] 3311 	pop	ar7
      0039EB D0 06            [24] 3312 	pop	ar6
      0039ED D0 05            [24] 3313 	pop	ar5
      0039EF 70 58            [24] 3314 	jnz	00151$
                                   3315 ;	calc.c:215: (void)stack_push(&ctx->s, d0);
      0039F1 E5 08            [12] 3316 	mov	a,_bp
      0039F3 24 0C            [12] 3317 	add	a,#0x0c
      0039F5 F8               [12] 3318 	mov	r0,a
      0039F6 74 09            [12] 3319 	mov	a,#0x09
      0039F8 26               [12] 3320 	add	a,@r0
      0039F9 FA               [12] 3321 	mov	r2,a
      0039FA E4               [12] 3322 	clr	a
      0039FB 08               [12] 3323 	inc	r0
      0039FC 36               [12] 3324 	addc	a,@r0
      0039FD FB               [12] 3325 	mov	r3,a
      0039FE 08               [12] 3326 	inc	r0
      0039FF 86 04            [24] 3327 	mov	ar4,@r0
      003A01 E5 08            [12] 3328 	mov	a,_bp
      003A03 24 0F            [12] 3329 	add	a,#0x0f
      003A05 F8               [12] 3330 	mov	r0,a
      003A06 E6               [12] 3331 	mov	a,@r0
      003A07 C0 E0            [24] 3332 	push	acc
      003A09 08               [12] 3333 	inc	r0
      003A0A E6               [12] 3334 	mov	a,@r0
      003A0B C0 E0            [24] 3335 	push	acc
      003A0D 08               [12] 3336 	inc	r0
      003A0E E6               [12] 3337 	mov	a,@r0
      003A0F C0 E0            [24] 3338 	push	acc
      003A11 08               [12] 3339 	inc	r0
      003A12 E6               [12] 3340 	mov	a,@r0
      003A13 C0 E0            [24] 3341 	push	acc
      003A15 8A 82            [24] 3342 	mov	dpl,r2
      003A17 8B 83            [24] 3343 	mov	dph,r3
      003A19 8C F0            [24] 3344 	mov	b,r4
      003A1B 12 26 B5         [24] 3345 	lcall	_stack_push
      003A1E E5 81            [12] 3346 	mov	a,sp
      003A20 24 FC            [12] 3347 	add	a,#0xfc
      003A22 F5 81            [12] 3348 	mov	sp,a
                                   3349 ;	calc.c:216: printstr("\r\nstack underflow\r\n");
      003A24 7F 9D            [12] 3350 	mov	r7,#___str_8
      003A26 7E 70            [12] 3351 	mov	r6,#(___str_8 >> 8)
      003A28 7D 80            [12] 3352 	mov	r5,#0x80
                                   3353 ;	calc.c:50: return;
      003A2A                       3354 00363$:
                                   3355 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003A2A 8F 82            [24] 3356 	mov	dpl,r7
      003A2C 8E 83            [24] 3357 	mov	dph,r6
      003A2E 8D F0            [24] 3358 	mov	b,r5
      003A30 12 57 E4         [24] 3359 	lcall	__gptrget
      003A33 FC               [12] 3360 	mov	r4,a
      003A34 70 03            [24] 3361 	jnz	01073$
      003A36 02 46 C5         [24] 3362 	ljmp	00217$
      003A39                       3363 01073$:
      003A39 7B 00            [12] 3364 	mov	r3,#0x00
      003A3B 8C 82            [24] 3365 	mov	dpl,r4
      003A3D 8B 83            [24] 3366 	mov	dph,r3
      003A3F 12 29 C0         [24] 3367 	lcall	_putchar
      003A42 0F               [12] 3368 	inc	r7
                                   3369 ;	calc.c:216: printstr("\r\nstack underflow\r\n");
      003A43 BF 00 E4         [24] 3370 	cjne	r7,#0x00,00363$
      003A46 0E               [12] 3371 	inc	r6
      003A47 80 E1            [24] 3372 	sjmp	00363$
      003A49                       3373 00151$:
                                   3374 ;	calc.c:217: } else if (!d0) {
      003A49 E5 08            [12] 3375 	mov	a,_bp
      003A4B 24 0F            [12] 3376 	add	a,#0x0f
      003A4D F8               [12] 3377 	mov	r0,a
      003A4E E6               [12] 3378 	mov	a,@r0
      003A4F 08               [12] 3379 	inc	r0
      003A50 46               [12] 3380 	orl	a,@r0
      003A51 08               [12] 3381 	inc	r0
      003A52 46               [12] 3382 	orl	a,@r0
      003A53 08               [12] 3383 	inc	r0
      003A54 46               [12] 3384 	orl	a,@r0
      003A55 60 03            [24] 3385 	jz	01075$
      003A57 02 3A E5         [24] 3386 	ljmp	00148$
      003A5A                       3387 01075$:
                                   3388 ;	calc.c:218: (void)stack_push(&ctx->s, d1);
      003A5A E5 08            [12] 3389 	mov	a,_bp
      003A5C 24 0C            [12] 3390 	add	a,#0x0c
      003A5E F8               [12] 3391 	mov	r0,a
      003A5F 74 09            [12] 3392 	mov	a,#0x09
      003A61 26               [12] 3393 	add	a,@r0
      003A62 FA               [12] 3394 	mov	r2,a
      003A63 E4               [12] 3395 	clr	a
      003A64 08               [12] 3396 	inc	r0
      003A65 36               [12] 3397 	addc	a,@r0
      003A66 FB               [12] 3398 	mov	r3,a
      003A67 08               [12] 3399 	inc	r0
      003A68 86 04            [24] 3400 	mov	ar4,@r0
      003A6A E5 08            [12] 3401 	mov	a,_bp
      003A6C 24 13            [12] 3402 	add	a,#0x13
      003A6E F8               [12] 3403 	mov	r0,a
      003A6F E6               [12] 3404 	mov	a,@r0
      003A70 C0 E0            [24] 3405 	push	acc
      003A72 08               [12] 3406 	inc	r0
      003A73 E6               [12] 3407 	mov	a,@r0
      003A74 C0 E0            [24] 3408 	push	acc
      003A76 08               [12] 3409 	inc	r0
      003A77 E6               [12] 3410 	mov	a,@r0
      003A78 C0 E0            [24] 3411 	push	acc
      003A7A 08               [12] 3412 	inc	r0
      003A7B E6               [12] 3413 	mov	a,@r0
      003A7C C0 E0            [24] 3414 	push	acc
      003A7E 8A 82            [24] 3415 	mov	dpl,r2
      003A80 8B 83            [24] 3416 	mov	dph,r3
      003A82 8C F0            [24] 3417 	mov	b,r4
      003A84 12 26 B5         [24] 3418 	lcall	_stack_push
      003A87 E5 81            [12] 3419 	mov	a,sp
      003A89 24 FC            [12] 3420 	add	a,#0xfc
      003A8B F5 81            [12] 3421 	mov	sp,a
                                   3422 ;	calc.c:219: (void)stack_push(&ctx->s, d0);			
      003A8D E5 08            [12] 3423 	mov	a,_bp
      003A8F 24 0C            [12] 3424 	add	a,#0x0c
      003A91 F8               [12] 3425 	mov	r0,a
      003A92 74 09            [12] 3426 	mov	a,#0x09
      003A94 26               [12] 3427 	add	a,@r0
      003A95 FA               [12] 3428 	mov	r2,a
      003A96 E4               [12] 3429 	clr	a
      003A97 08               [12] 3430 	inc	r0
      003A98 36               [12] 3431 	addc	a,@r0
      003A99 FB               [12] 3432 	mov	r3,a
      003A9A 08               [12] 3433 	inc	r0
      003A9B 86 04            [24] 3434 	mov	ar4,@r0
      003A9D E5 08            [12] 3435 	mov	a,_bp
      003A9F 24 0F            [12] 3436 	add	a,#0x0f
      003AA1 F8               [12] 3437 	mov	r0,a
      003AA2 E6               [12] 3438 	mov	a,@r0
      003AA3 C0 E0            [24] 3439 	push	acc
      003AA5 08               [12] 3440 	inc	r0
      003AA6 E6               [12] 3441 	mov	a,@r0
      003AA7 C0 E0            [24] 3442 	push	acc
      003AA9 08               [12] 3443 	inc	r0
      003AAA E6               [12] 3444 	mov	a,@r0
      003AAB C0 E0            [24] 3445 	push	acc
      003AAD 08               [12] 3446 	inc	r0
      003AAE E6               [12] 3447 	mov	a,@r0
      003AAF C0 E0            [24] 3448 	push	acc
      003AB1 8A 82            [24] 3449 	mov	dpl,r2
      003AB3 8B 83            [24] 3450 	mov	dph,r3
      003AB5 8C F0            [24] 3451 	mov	b,r4
      003AB7 12 26 B5         [24] 3452 	lcall	_stack_push
      003ABA E5 81            [12] 3453 	mov	a,sp
      003ABC 24 FC            [12] 3454 	add	a,#0xfc
      003ABE F5 81            [12] 3455 	mov	sp,a
                                   3456 ;	calc.c:220: printstr("\r\ndivision by zero\r\n");
      003AC0 7F B1            [12] 3457 	mov	r7,#___str_9
      003AC2 7E 70            [12] 3458 	mov	r6,#(___str_9 >> 8)
      003AC4 7D 80            [12] 3459 	mov	r5,#0x80
                                   3460 ;	calc.c:50: return;
      003AC6                       3461 00366$:
                                   3462 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003AC6 8F 82            [24] 3463 	mov	dpl,r7
      003AC8 8E 83            [24] 3464 	mov	dph,r6
      003ACA 8D F0            [24] 3465 	mov	b,r5
      003ACC 12 57 E4         [24] 3466 	lcall	__gptrget
      003ACF FC               [12] 3467 	mov	r4,a
      003AD0 70 03            [24] 3468 	jnz	01076$
      003AD2 02 46 C5         [24] 3469 	ljmp	00217$
      003AD5                       3470 01076$:
      003AD5 7B 00            [12] 3471 	mov	r3,#0x00
      003AD7 8C 82            [24] 3472 	mov	dpl,r4
      003AD9 8B 83            [24] 3473 	mov	dph,r3
      003ADB 12 29 C0         [24] 3474 	lcall	_putchar
      003ADE 0F               [12] 3475 	inc	r7
                                   3476 ;	calc.c:220: printstr("\r\ndivision by zero\r\n");
      003ADF BF 00 E4         [24] 3477 	cjne	r7,#0x00,00366$
      003AE2 0E               [12] 3478 	inc	r6
      003AE3 80 E1            [24] 3479 	sjmp	00366$
      003AE5                       3480 00148$:
                                   3481 ;	calc.c:222: if (ctx->digit[0] == '/') d1 /= d0;
      003AE5 8D 82            [24] 3482 	mov	dpl,r5
      003AE7 8E 83            [24] 3483 	mov	dph,r6
      003AE9 8F F0            [24] 3484 	mov	b,r7
      003AEB 12 57 E4         [24] 3485 	lcall	__gptrget
      003AEE FC               [12] 3486 	mov	r4,a
      003AEF BC 2F 45         [24] 3487 	cjne	r4,#0x2f,00145$
      003AF2 E5 08            [12] 3488 	mov	a,_bp
      003AF4 24 0F            [12] 3489 	add	a,#0x0f
      003AF6 F8               [12] 3490 	mov	r0,a
      003AF7 E6               [12] 3491 	mov	a,@r0
      003AF8 C0 E0            [24] 3492 	push	acc
      003AFA 08               [12] 3493 	inc	r0
      003AFB E6               [12] 3494 	mov	a,@r0
      003AFC C0 E0            [24] 3495 	push	acc
      003AFE 08               [12] 3496 	inc	r0
      003AFF E6               [12] 3497 	mov	a,@r0
      003B00 C0 E0            [24] 3498 	push	acc
      003B02 08               [12] 3499 	inc	r0
      003B03 E6               [12] 3500 	mov	a,@r0
      003B04 C0 E0            [24] 3501 	push	acc
      003B06 E5 08            [12] 3502 	mov	a,_bp
      003B08 24 13            [12] 3503 	add	a,#0x13
      003B0A F8               [12] 3504 	mov	r0,a
      003B0B 86 82            [24] 3505 	mov	dpl,@r0
      003B0D 08               [12] 3506 	inc	r0
      003B0E 86 83            [24] 3507 	mov	dph,@r0
      003B10 08               [12] 3508 	inc	r0
      003B11 86 F0            [24] 3509 	mov	b,@r0
      003B13 08               [12] 3510 	inc	r0
      003B14 E6               [12] 3511 	mov	a,@r0
      003B15 12 55 DB         [24] 3512 	lcall	__divslong
      003B18 AF 82            [24] 3513 	mov	r7,dpl
      003B1A AE 83            [24] 3514 	mov	r6,dph
      003B1C AD F0            [24] 3515 	mov	r5,b
      003B1E FC               [12] 3516 	mov	r4,a
      003B1F E5 81            [12] 3517 	mov	a,sp
      003B21 24 FC            [12] 3518 	add	a,#0xfc
      003B23 F5 81            [12] 3519 	mov	sp,a
      003B25 E5 08            [12] 3520 	mov	a,_bp
      003B27 24 13            [12] 3521 	add	a,#0x13
      003B29 F8               [12] 3522 	mov	r0,a
      003B2A A6 07            [24] 3523 	mov	@r0,ar7
      003B2C 08               [12] 3524 	inc	r0
      003B2D A6 06            [24] 3525 	mov	@r0,ar6
      003B2F 08               [12] 3526 	inc	r0
      003B30 A6 05            [24] 3527 	mov	@r0,ar5
      003B32 08               [12] 3528 	inc	r0
      003B33 A6 04            [24] 3529 	mov	@r0,ar4
      003B35 80 63            [24] 3530 	sjmp	00146$
      003B37                       3531 00145$:
                                   3532 ;	calc.c:223: else d1 = (unsigned long)d1 / (unsigned long)d0;
      003B37 E5 08            [12] 3533 	mov	a,_bp
      003B39 24 13            [12] 3534 	add	a,#0x13
      003B3B F8               [12] 3535 	mov	r0,a
      003B3C 86 07            [24] 3536 	mov	ar7,@r0
      003B3E 08               [12] 3537 	inc	r0
      003B3F 86 06            [24] 3538 	mov	ar6,@r0
      003B41 08               [12] 3539 	inc	r0
      003B42 86 05            [24] 3540 	mov	ar5,@r0
      003B44 08               [12] 3541 	inc	r0
      003B45 86 04            [24] 3542 	mov	ar4,@r0
      003B47 E5 08            [12] 3543 	mov	a,_bp
      003B49 24 0F            [12] 3544 	add	a,#0x0f
      003B4B F8               [12] 3545 	mov	r0,a
      003B4C E5 08            [12] 3546 	mov	a,_bp
      003B4E 24 08            [12] 3547 	add	a,#0x08
      003B50 F9               [12] 3548 	mov	r1,a
      003B51 E6               [12] 3549 	mov	a,@r0
      003B52 F7               [12] 3550 	mov	@r1,a
      003B53 08               [12] 3551 	inc	r0
      003B54 09               [12] 3552 	inc	r1
      003B55 E6               [12] 3553 	mov	a,@r0
      003B56 F7               [12] 3554 	mov	@r1,a
      003B57 08               [12] 3555 	inc	r0
      003B58 09               [12] 3556 	inc	r1
      003B59 E6               [12] 3557 	mov	a,@r0
      003B5A F7               [12] 3558 	mov	@r1,a
      003B5B 08               [12] 3559 	inc	r0
      003B5C 09               [12] 3560 	inc	r1
      003B5D E6               [12] 3561 	mov	a,@r0
      003B5E F7               [12] 3562 	mov	@r1,a
      003B5F E5 08            [12] 3563 	mov	a,_bp
      003B61 24 08            [12] 3564 	add	a,#0x08
      003B63 F8               [12] 3565 	mov	r0,a
      003B64 E6               [12] 3566 	mov	a,@r0
      003B65 C0 E0            [24] 3567 	push	acc
      003B67 08               [12] 3568 	inc	r0
      003B68 E6               [12] 3569 	mov	a,@r0
      003B69 C0 E0            [24] 3570 	push	acc
      003B6B 08               [12] 3571 	inc	r0
      003B6C E6               [12] 3572 	mov	a,@r0
      003B6D C0 E0            [24] 3573 	push	acc
      003B6F 08               [12] 3574 	inc	r0
      003B70 E6               [12] 3575 	mov	a,@r0
      003B71 C0 E0            [24] 3576 	push	acc
      003B73 8F 82            [24] 3577 	mov	dpl,r7
      003B75 8E 83            [24] 3578 	mov	dph,r6
      003B77 8D F0            [24] 3579 	mov	b,r5
      003B79 EC               [12] 3580 	mov	a,r4
      003B7A 12 56 D8         [24] 3581 	lcall	__divulong
      003B7D AF 82            [24] 3582 	mov	r7,dpl
      003B7F AE 83            [24] 3583 	mov	r6,dph
      003B81 AD F0            [24] 3584 	mov	r5,b
      003B83 FC               [12] 3585 	mov	r4,a
      003B84 E5 81            [12] 3586 	mov	a,sp
      003B86 24 FC            [12] 3587 	add	a,#0xfc
      003B88 F5 81            [12] 3588 	mov	sp,a
      003B8A E5 08            [12] 3589 	mov	a,_bp
      003B8C 24 13            [12] 3590 	add	a,#0x13
      003B8E F8               [12] 3591 	mov	r0,a
      003B8F A6 07            [24] 3592 	mov	@r0,ar7
      003B91 08               [12] 3593 	inc	r0
      003B92 A6 06            [24] 3594 	mov	@r0,ar6
      003B94 08               [12] 3595 	inc	r0
      003B95 A6 05            [24] 3596 	mov	@r0,ar5
      003B97 08               [12] 3597 	inc	r0
      003B98 A6 04            [24] 3598 	mov	@r0,ar4
      003B9A                       3599 00146$:
                                   3600 ;	calc.c:224: (void)stack_push(&ctx->s, d1);
      003B9A E5 08            [12] 3601 	mov	a,_bp
      003B9C 24 0C            [12] 3602 	add	a,#0x0c
      003B9E F8               [12] 3603 	mov	r0,a
      003B9F 74 09            [12] 3604 	mov	a,#0x09
      003BA1 26               [12] 3605 	add	a,@r0
      003BA2 FA               [12] 3606 	mov	r2,a
      003BA3 E4               [12] 3607 	clr	a
      003BA4 08               [12] 3608 	inc	r0
      003BA5 36               [12] 3609 	addc	a,@r0
      003BA6 FB               [12] 3610 	mov	r3,a
      003BA7 08               [12] 3611 	inc	r0
      003BA8 86 04            [24] 3612 	mov	ar4,@r0
      003BAA E5 08            [12] 3613 	mov	a,_bp
      003BAC 24 13            [12] 3614 	add	a,#0x13
      003BAE F8               [12] 3615 	mov	r0,a
      003BAF E6               [12] 3616 	mov	a,@r0
      003BB0 C0 E0            [24] 3617 	push	acc
      003BB2 08               [12] 3618 	inc	r0
      003BB3 E6               [12] 3619 	mov	a,@r0
      003BB4 C0 E0            [24] 3620 	push	acc
      003BB6 08               [12] 3621 	inc	r0
      003BB7 E6               [12] 3622 	mov	a,@r0
      003BB8 C0 E0            [24] 3623 	push	acc
      003BBA 08               [12] 3624 	inc	r0
      003BBB E6               [12] 3625 	mov	a,@r0
      003BBC C0 E0            [24] 3626 	push	acc
      003BBE 8A 82            [24] 3627 	mov	dpl,r2
      003BC0 8B 83            [24] 3628 	mov	dph,r3
      003BC2 8C F0            [24] 3629 	mov	b,r4
      003BC4 12 26 B5         [24] 3630 	lcall	_stack_push
      003BC7 E5 81            [12] 3631 	mov	a,sp
      003BC9 24 FC            [12] 3632 	add	a,#0xfc
      003BCB F5 81            [12] 3633 	mov	sp,a
                                   3634 ;	calc.c:226: break;
      003BCD 02 46 C5         [24] 3635 	ljmp	00217$
                                   3636 ;	calc.c:228: case '#':
      003BD0                       3637 00157$:
                                   3638 ;	calc.c:229: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003BD0 C0 05            [24] 3639 	push	ar5
      003BD2 C0 06            [24] 3640 	push	ar6
      003BD4 C0 07            [24] 3641 	push	ar7
      003BD6 E5 08            [12] 3642 	mov	a,_bp
      003BD8 24 0F            [12] 3643 	add	a,#0x0f
      003BDA FC               [12] 3644 	mov	r4,a
      003BDB 7B 00            [12] 3645 	mov	r3,#0x00
      003BDD 7A 40            [12] 3646 	mov	r2,#0x40
      003BDF E5 08            [12] 3647 	mov	a,_bp
      003BE1 24 0C            [12] 3648 	add	a,#0x0c
      003BE3 F8               [12] 3649 	mov	r0,a
      003BE4 74 09            [12] 3650 	mov	a,#0x09
      003BE6 26               [12] 3651 	add	a,@r0
      003BE7 FD               [12] 3652 	mov	r5,a
      003BE8 E4               [12] 3653 	clr	a
      003BE9 08               [12] 3654 	inc	r0
      003BEA 36               [12] 3655 	addc	a,@r0
      003BEB FE               [12] 3656 	mov	r6,a
      003BEC 08               [12] 3657 	inc	r0
      003BED 86 07            [24] 3658 	mov	ar7,@r0
      003BEF C0 05            [24] 3659 	push	ar5
      003BF1 C0 04            [24] 3660 	push	ar4
      003BF3 C0 03            [24] 3661 	push	ar3
      003BF5 C0 02            [24] 3662 	push	ar2
      003BF7 8D 82            [24] 3663 	mov	dpl,r5
      003BF9 8E 83            [24] 3664 	mov	dph,r6
      003BFB 8F F0            [24] 3665 	mov	b,r7
      003BFD 12 27 7F         [24] 3666 	lcall	_stack_pop
      003C00 AE 82            [24] 3667 	mov	r6,dpl
      003C02 AF 83            [24] 3668 	mov	r7,dph
      003C04 15 81            [12] 3669 	dec	sp
      003C06 15 81            [12] 3670 	dec	sp
      003C08 15 81            [12] 3671 	dec	sp
      003C0A D0 05            [24] 3672 	pop	ar5
      003C0C EE               [12] 3673 	mov	a,r6
      003C0D 4F               [12] 3674 	orl	a,r7
      003C0E D0 07            [24] 3675 	pop	ar7
      003C10 D0 06            [24] 3676 	pop	ar6
      003C12 D0 05            [24] 3677 	pop	ar5
      003C14 70 25            [24] 3678 	jnz	00168$
      003C16 7F 9D            [12] 3679 	mov	r7,#___str_8
      003C18 7E 70            [12] 3680 	mov	r6,#(___str_8 >> 8)
      003C1A 7D 80            [12] 3681 	mov	r5,#0x80
                                   3682 ;	calc.c:50: return;
      003C1C                       3683 00369$:
                                   3684 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003C1C 8F 82            [24] 3685 	mov	dpl,r7
      003C1E 8E 83            [24] 3686 	mov	dph,r6
      003C20 8D F0            [24] 3687 	mov	b,r5
      003C22 12 57 E4         [24] 3688 	lcall	__gptrget
      003C25 FC               [12] 3689 	mov	r4,a
      003C26 70 03            [24] 3690 	jnz	01081$
      003C28 02 46 C5         [24] 3691 	ljmp	00217$
      003C2B                       3692 01081$:
      003C2B 7B 00            [12] 3693 	mov	r3,#0x00
      003C2D 8C 82            [24] 3694 	mov	dpl,r4
      003C2F 8B 83            [24] 3695 	mov	dph,r3
      003C31 12 29 C0         [24] 3696 	lcall	_putchar
      003C34 0F               [12] 3697 	inc	r7
                                   3698 ;	calc.c:229: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003C35 BF 00 E4         [24] 3699 	cjne	r7,#0x00,00369$
      003C38 0E               [12] 3700 	inc	r6
      003C39 80 E1            [24] 3701 	sjmp	00369$
      003C3B                       3702 00168$:
                                   3703 ;	calc.c:230: else if (!stack_pop(&ctx->s, &d1)) {
      003C3B C0 05            [24] 3704 	push	ar5
      003C3D C0 06            [24] 3705 	push	ar6
      003C3F C0 07            [24] 3706 	push	ar7
      003C41 E5 08            [12] 3707 	mov	a,_bp
      003C43 24 13            [12] 3708 	add	a,#0x13
      003C45 FC               [12] 3709 	mov	r4,a
      003C46 7B 00            [12] 3710 	mov	r3,#0x00
      003C48 7A 40            [12] 3711 	mov	r2,#0x40
      003C4A E5 08            [12] 3712 	mov	a,_bp
      003C4C 24 0C            [12] 3713 	add	a,#0x0c
      003C4E F8               [12] 3714 	mov	r0,a
      003C4F 74 09            [12] 3715 	mov	a,#0x09
      003C51 26               [12] 3716 	add	a,@r0
      003C52 FD               [12] 3717 	mov	r5,a
      003C53 E4               [12] 3718 	clr	a
      003C54 08               [12] 3719 	inc	r0
      003C55 36               [12] 3720 	addc	a,@r0
      003C56 FE               [12] 3721 	mov	r6,a
      003C57 08               [12] 3722 	inc	r0
      003C58 86 07            [24] 3723 	mov	ar7,@r0
      003C5A C0 05            [24] 3724 	push	ar5
      003C5C C0 04            [24] 3725 	push	ar4
      003C5E C0 03            [24] 3726 	push	ar3
      003C60 C0 02            [24] 3727 	push	ar2
      003C62 8D 82            [24] 3728 	mov	dpl,r5
      003C64 8E 83            [24] 3729 	mov	dph,r6
      003C66 8F F0            [24] 3730 	mov	b,r7
      003C68 12 27 7F         [24] 3731 	lcall	_stack_pop
      003C6B AE 82            [24] 3732 	mov	r6,dpl
      003C6D AF 83            [24] 3733 	mov	r7,dph
      003C6F 15 81            [12] 3734 	dec	sp
      003C71 15 81            [12] 3735 	dec	sp
      003C73 15 81            [12] 3736 	dec	sp
      003C75 D0 05            [24] 3737 	pop	ar5
      003C77 EE               [12] 3738 	mov	a,r6
      003C78 4F               [12] 3739 	orl	a,r7
      003C79 D0 07            [24] 3740 	pop	ar7
      003C7B D0 06            [24] 3741 	pop	ar6
      003C7D D0 05            [24] 3742 	pop	ar5
      003C7F 70 58            [24] 3743 	jnz	00165$
                                   3744 ;	calc.c:231: (void)stack_push(&ctx->s, d0);
      003C81 E5 08            [12] 3745 	mov	a,_bp
      003C83 24 0C            [12] 3746 	add	a,#0x0c
      003C85 F8               [12] 3747 	mov	r0,a
      003C86 74 09            [12] 3748 	mov	a,#0x09
      003C88 26               [12] 3749 	add	a,@r0
      003C89 FA               [12] 3750 	mov	r2,a
      003C8A E4               [12] 3751 	clr	a
      003C8B 08               [12] 3752 	inc	r0
      003C8C 36               [12] 3753 	addc	a,@r0
      003C8D FB               [12] 3754 	mov	r3,a
      003C8E 08               [12] 3755 	inc	r0
      003C8F 86 04            [24] 3756 	mov	ar4,@r0
      003C91 E5 08            [12] 3757 	mov	a,_bp
      003C93 24 0F            [12] 3758 	add	a,#0x0f
      003C95 F8               [12] 3759 	mov	r0,a
      003C96 E6               [12] 3760 	mov	a,@r0
      003C97 C0 E0            [24] 3761 	push	acc
      003C99 08               [12] 3762 	inc	r0
      003C9A E6               [12] 3763 	mov	a,@r0
      003C9B C0 E0            [24] 3764 	push	acc
      003C9D 08               [12] 3765 	inc	r0
      003C9E E6               [12] 3766 	mov	a,@r0
      003C9F C0 E0            [24] 3767 	push	acc
      003CA1 08               [12] 3768 	inc	r0
      003CA2 E6               [12] 3769 	mov	a,@r0
      003CA3 C0 E0            [24] 3770 	push	acc
      003CA5 8A 82            [24] 3771 	mov	dpl,r2
      003CA7 8B 83            [24] 3772 	mov	dph,r3
      003CA9 8C F0            [24] 3773 	mov	b,r4
      003CAB 12 26 B5         [24] 3774 	lcall	_stack_push
      003CAE E5 81            [12] 3775 	mov	a,sp
      003CB0 24 FC            [12] 3776 	add	a,#0xfc
      003CB2 F5 81            [12] 3777 	mov	sp,a
                                   3778 ;	calc.c:232: printstr("\r\nstack underflow\r\n");
      003CB4 7F 9D            [12] 3779 	mov	r7,#___str_8
      003CB6 7E 70            [12] 3780 	mov	r6,#(___str_8 >> 8)
      003CB8 7D 80            [12] 3781 	mov	r5,#0x80
                                   3782 ;	calc.c:50: return;
      003CBA                       3783 00372$:
                                   3784 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003CBA 8F 82            [24] 3785 	mov	dpl,r7
      003CBC 8E 83            [24] 3786 	mov	dph,r6
      003CBE 8D F0            [24] 3787 	mov	b,r5
      003CC0 12 57 E4         [24] 3788 	lcall	__gptrget
      003CC3 FC               [12] 3789 	mov	r4,a
      003CC4 70 03            [24] 3790 	jnz	01084$
      003CC6 02 46 C5         [24] 3791 	ljmp	00217$
      003CC9                       3792 01084$:
      003CC9 7B 00            [12] 3793 	mov	r3,#0x00
      003CCB 8C 82            [24] 3794 	mov	dpl,r4
      003CCD 8B 83            [24] 3795 	mov	dph,r3
      003CCF 12 29 C0         [24] 3796 	lcall	_putchar
      003CD2 0F               [12] 3797 	inc	r7
                                   3798 ;	calc.c:232: printstr("\r\nstack underflow\r\n");
      003CD3 BF 00 E4         [24] 3799 	cjne	r7,#0x00,00372$
      003CD6 0E               [12] 3800 	inc	r6
      003CD7 80 E1            [24] 3801 	sjmp	00372$
      003CD9                       3802 00165$:
                                   3803 ;	calc.c:233: } else if (!d0) {
      003CD9 E5 08            [12] 3804 	mov	a,_bp
      003CDB 24 0F            [12] 3805 	add	a,#0x0f
      003CDD F8               [12] 3806 	mov	r0,a
      003CDE E6               [12] 3807 	mov	a,@r0
      003CDF 08               [12] 3808 	inc	r0
      003CE0 46               [12] 3809 	orl	a,@r0
      003CE1 08               [12] 3810 	inc	r0
      003CE2 46               [12] 3811 	orl	a,@r0
      003CE3 08               [12] 3812 	inc	r0
      003CE4 46               [12] 3813 	orl	a,@r0
      003CE5 60 03            [24] 3814 	jz	01086$
      003CE7 02 3D 75         [24] 3815 	ljmp	00162$
      003CEA                       3816 01086$:
                                   3817 ;	calc.c:234: (void)stack_push(&ctx->s, d1);
      003CEA E5 08            [12] 3818 	mov	a,_bp
      003CEC 24 0C            [12] 3819 	add	a,#0x0c
      003CEE F8               [12] 3820 	mov	r0,a
      003CEF 74 09            [12] 3821 	mov	a,#0x09
      003CF1 26               [12] 3822 	add	a,@r0
      003CF2 FA               [12] 3823 	mov	r2,a
      003CF3 E4               [12] 3824 	clr	a
      003CF4 08               [12] 3825 	inc	r0
      003CF5 36               [12] 3826 	addc	a,@r0
      003CF6 FB               [12] 3827 	mov	r3,a
      003CF7 08               [12] 3828 	inc	r0
      003CF8 86 04            [24] 3829 	mov	ar4,@r0
      003CFA E5 08            [12] 3830 	mov	a,_bp
      003CFC 24 13            [12] 3831 	add	a,#0x13
      003CFE F8               [12] 3832 	mov	r0,a
      003CFF E6               [12] 3833 	mov	a,@r0
      003D00 C0 E0            [24] 3834 	push	acc
      003D02 08               [12] 3835 	inc	r0
      003D03 E6               [12] 3836 	mov	a,@r0
      003D04 C0 E0            [24] 3837 	push	acc
      003D06 08               [12] 3838 	inc	r0
      003D07 E6               [12] 3839 	mov	a,@r0
      003D08 C0 E0            [24] 3840 	push	acc
      003D0A 08               [12] 3841 	inc	r0
      003D0B E6               [12] 3842 	mov	a,@r0
      003D0C C0 E0            [24] 3843 	push	acc
      003D0E 8A 82            [24] 3844 	mov	dpl,r2
      003D10 8B 83            [24] 3845 	mov	dph,r3
      003D12 8C F0            [24] 3846 	mov	b,r4
      003D14 12 26 B5         [24] 3847 	lcall	_stack_push
      003D17 E5 81            [12] 3848 	mov	a,sp
      003D19 24 FC            [12] 3849 	add	a,#0xfc
      003D1B F5 81            [12] 3850 	mov	sp,a
                                   3851 ;	calc.c:235: (void)stack_push(&ctx->s, d0);			
      003D1D E5 08            [12] 3852 	mov	a,_bp
      003D1F 24 0C            [12] 3853 	add	a,#0x0c
      003D21 F8               [12] 3854 	mov	r0,a
      003D22 74 09            [12] 3855 	mov	a,#0x09
      003D24 26               [12] 3856 	add	a,@r0
      003D25 FA               [12] 3857 	mov	r2,a
      003D26 E4               [12] 3858 	clr	a
      003D27 08               [12] 3859 	inc	r0
      003D28 36               [12] 3860 	addc	a,@r0
      003D29 FB               [12] 3861 	mov	r3,a
      003D2A 08               [12] 3862 	inc	r0
      003D2B 86 04            [24] 3863 	mov	ar4,@r0
      003D2D E5 08            [12] 3864 	mov	a,_bp
      003D2F 24 0F            [12] 3865 	add	a,#0x0f
      003D31 F8               [12] 3866 	mov	r0,a
      003D32 E6               [12] 3867 	mov	a,@r0
      003D33 C0 E0            [24] 3868 	push	acc
      003D35 08               [12] 3869 	inc	r0
      003D36 E6               [12] 3870 	mov	a,@r0
      003D37 C0 E0            [24] 3871 	push	acc
      003D39 08               [12] 3872 	inc	r0
      003D3A E6               [12] 3873 	mov	a,@r0
      003D3B C0 E0            [24] 3874 	push	acc
      003D3D 08               [12] 3875 	inc	r0
      003D3E E6               [12] 3876 	mov	a,@r0
      003D3F C0 E0            [24] 3877 	push	acc
      003D41 8A 82            [24] 3878 	mov	dpl,r2
      003D43 8B 83            [24] 3879 	mov	dph,r3
      003D45 8C F0            [24] 3880 	mov	b,r4
      003D47 12 26 B5         [24] 3881 	lcall	_stack_push
      003D4A E5 81            [12] 3882 	mov	a,sp
      003D4C 24 FC            [12] 3883 	add	a,#0xfc
      003D4E F5 81            [12] 3884 	mov	sp,a
                                   3885 ;	calc.c:236: printstr("\r\ndivision by zero\r\n");
      003D50 7F B1            [12] 3886 	mov	r7,#___str_9
      003D52 7E 70            [12] 3887 	mov	r6,#(___str_9 >> 8)
      003D54 7D 80            [12] 3888 	mov	r5,#0x80
                                   3889 ;	calc.c:50: return;
      003D56                       3890 00375$:
                                   3891 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003D56 8F 82            [24] 3892 	mov	dpl,r7
      003D58 8E 83            [24] 3893 	mov	dph,r6
      003D5A 8D F0            [24] 3894 	mov	b,r5
      003D5C 12 57 E4         [24] 3895 	lcall	__gptrget
      003D5F FC               [12] 3896 	mov	r4,a
      003D60 70 03            [24] 3897 	jnz	01087$
      003D62 02 46 C5         [24] 3898 	ljmp	00217$
      003D65                       3899 01087$:
      003D65 7B 00            [12] 3900 	mov	r3,#0x00
      003D67 8C 82            [24] 3901 	mov	dpl,r4
      003D69 8B 83            [24] 3902 	mov	dph,r3
      003D6B 12 29 C0         [24] 3903 	lcall	_putchar
      003D6E 0F               [12] 3904 	inc	r7
                                   3905 ;	calc.c:236: printstr("\r\ndivision by zero\r\n");
      003D6F BF 00 E4         [24] 3906 	cjne	r7,#0x00,00375$
      003D72 0E               [12] 3907 	inc	r6
      003D73 80 E1            [24] 3908 	sjmp	00375$
      003D75                       3909 00162$:
                                   3910 ;	calc.c:238: if (ctx->digit[0] == '%') d1 %= d0;
      003D75 8D 82            [24] 3911 	mov	dpl,r5
      003D77 8E 83            [24] 3912 	mov	dph,r6
      003D79 8F F0            [24] 3913 	mov	b,r7
      003D7B 12 57 E4         [24] 3914 	lcall	__gptrget
      003D7E FD               [12] 3915 	mov	r5,a
      003D7F BD 25 45         [24] 3916 	cjne	r5,#0x25,00159$
      003D82 E5 08            [12] 3917 	mov	a,_bp
      003D84 24 0F            [12] 3918 	add	a,#0x0f
      003D86 F8               [12] 3919 	mov	r0,a
      003D87 E6               [12] 3920 	mov	a,@r0
      003D88 C0 E0            [24] 3921 	push	acc
      003D8A 08               [12] 3922 	inc	r0
      003D8B E6               [12] 3923 	mov	a,@r0
      003D8C C0 E0            [24] 3924 	push	acc
      003D8E 08               [12] 3925 	inc	r0
      003D8F E6               [12] 3926 	mov	a,@r0
      003D90 C0 E0            [24] 3927 	push	acc
      003D92 08               [12] 3928 	inc	r0
      003D93 E6               [12] 3929 	mov	a,@r0
      003D94 C0 E0            [24] 3930 	push	acc
      003D96 E5 08            [12] 3931 	mov	a,_bp
      003D98 24 13            [12] 3932 	add	a,#0x13
      003D9A F8               [12] 3933 	mov	r0,a
      003D9B 86 82            [24] 3934 	mov	dpl,@r0
      003D9D 08               [12] 3935 	inc	r0
      003D9E 86 83            [24] 3936 	mov	dph,@r0
      003DA0 08               [12] 3937 	inc	r0
      003DA1 86 F0            [24] 3938 	mov	b,@r0
      003DA3 08               [12] 3939 	inc	r0
      003DA4 E6               [12] 3940 	mov	a,@r0
      003DA5 12 54 22         [24] 3941 	lcall	__modslong
      003DA8 AC 82            [24] 3942 	mov	r4,dpl
      003DAA AD 83            [24] 3943 	mov	r5,dph
      003DAC AE F0            [24] 3944 	mov	r6,b
      003DAE FF               [12] 3945 	mov	r7,a
      003DAF E5 81            [12] 3946 	mov	a,sp
      003DB1 24 FC            [12] 3947 	add	a,#0xfc
      003DB3 F5 81            [12] 3948 	mov	sp,a
      003DB5 E5 08            [12] 3949 	mov	a,_bp
      003DB7 24 13            [12] 3950 	add	a,#0x13
      003DB9 F8               [12] 3951 	mov	r0,a
      003DBA A6 04            [24] 3952 	mov	@r0,ar4
      003DBC 08               [12] 3953 	inc	r0
      003DBD A6 05            [24] 3954 	mov	@r0,ar5
      003DBF 08               [12] 3955 	inc	r0
      003DC0 A6 06            [24] 3956 	mov	@r0,ar6
      003DC2 08               [12] 3957 	inc	r0
      003DC3 A6 07            [24] 3958 	mov	@r0,ar7
      003DC5 80 5F            [24] 3959 	sjmp	00160$
      003DC7                       3960 00159$:
                                   3961 ;	calc.c:239: else d1 = (unsigned long)d1 % (unsigned long)d0;
      003DC7 E5 08            [12] 3962 	mov	a,_bp
      003DC9 24 13            [12] 3963 	add	a,#0x13
      003DCB F8               [12] 3964 	mov	r0,a
      003DCC E5 08            [12] 3965 	mov	a,_bp
      003DCE 24 08            [12] 3966 	add	a,#0x08
      003DD0 F9               [12] 3967 	mov	r1,a
      003DD1 E6               [12] 3968 	mov	a,@r0
      003DD2 F7               [12] 3969 	mov	@r1,a
      003DD3 08               [12] 3970 	inc	r0
      003DD4 09               [12] 3971 	inc	r1
      003DD5 E6               [12] 3972 	mov	a,@r0
      003DD6 F7               [12] 3973 	mov	@r1,a
      003DD7 08               [12] 3974 	inc	r0
      003DD8 09               [12] 3975 	inc	r1
      003DD9 E6               [12] 3976 	mov	a,@r0
      003DDA F7               [12] 3977 	mov	@r1,a
      003DDB 08               [12] 3978 	inc	r0
      003DDC 09               [12] 3979 	inc	r1
      003DDD E6               [12] 3980 	mov	a,@r0
      003DDE F7               [12] 3981 	mov	@r1,a
      003DDF E5 08            [12] 3982 	mov	a,_bp
      003DE1 24 0F            [12] 3983 	add	a,#0x0f
      003DE3 F8               [12] 3984 	mov	r0,a
      003DE4 86 02            [24] 3985 	mov	ar2,@r0
      003DE6 08               [12] 3986 	inc	r0
      003DE7 86 03            [24] 3987 	mov	ar3,@r0
      003DE9 08               [12] 3988 	inc	r0
      003DEA 86 06            [24] 3989 	mov	ar6,@r0
      003DEC 08               [12] 3990 	inc	r0
      003DED 86 07            [24] 3991 	mov	ar7,@r0
      003DEF C0 02            [24] 3992 	push	ar2
      003DF1 C0 03            [24] 3993 	push	ar3
      003DF3 C0 06            [24] 3994 	push	ar6
      003DF5 C0 07            [24] 3995 	push	ar7
      003DF7 E5 08            [12] 3996 	mov	a,_bp
      003DF9 24 08            [12] 3997 	add	a,#0x08
      003DFB F8               [12] 3998 	mov	r0,a
      003DFC 86 82            [24] 3999 	mov	dpl,@r0
      003DFE 08               [12] 4000 	inc	r0
      003DFF 86 83            [24] 4001 	mov	dph,@r0
      003E01 08               [12] 4002 	inc	r0
      003E02 86 F0            [24] 4003 	mov	b,@r0
      003E04 08               [12] 4004 	inc	r0
      003E05 E6               [12] 4005 	mov	a,@r0
      003E06 12 55 19         [24] 4006 	lcall	__modulong
      003E09 AC 82            [24] 4007 	mov	r4,dpl
      003E0B AD 83            [24] 4008 	mov	r5,dph
      003E0D AE F0            [24] 4009 	mov	r6,b
      003E0F FF               [12] 4010 	mov	r7,a
      003E10 E5 81            [12] 4011 	mov	a,sp
      003E12 24 FC            [12] 4012 	add	a,#0xfc
      003E14 F5 81            [12] 4013 	mov	sp,a
      003E16 E5 08            [12] 4014 	mov	a,_bp
      003E18 24 13            [12] 4015 	add	a,#0x13
      003E1A F8               [12] 4016 	mov	r0,a
      003E1B A6 04            [24] 4017 	mov	@r0,ar4
      003E1D 08               [12] 4018 	inc	r0
      003E1E A6 05            [24] 4019 	mov	@r0,ar5
      003E20 08               [12] 4020 	inc	r0
      003E21 A6 06            [24] 4021 	mov	@r0,ar6
      003E23 08               [12] 4022 	inc	r0
      003E24 A6 07            [24] 4023 	mov	@r0,ar7
      003E26                       4024 00160$:
                                   4025 ;	calc.c:240: (void)stack_push(&ctx->s, d1);
      003E26 E5 08            [12] 4026 	mov	a,_bp
      003E28 24 0C            [12] 4027 	add	a,#0x0c
      003E2A F8               [12] 4028 	mov	r0,a
      003E2B 74 09            [12] 4029 	mov	a,#0x09
      003E2D 26               [12] 4030 	add	a,@r0
      003E2E FD               [12] 4031 	mov	r5,a
      003E2F E4               [12] 4032 	clr	a
      003E30 08               [12] 4033 	inc	r0
      003E31 36               [12] 4034 	addc	a,@r0
      003E32 FE               [12] 4035 	mov	r6,a
      003E33 08               [12] 4036 	inc	r0
      003E34 86 07            [24] 4037 	mov	ar7,@r0
      003E36 E5 08            [12] 4038 	mov	a,_bp
      003E38 24 13            [12] 4039 	add	a,#0x13
      003E3A F8               [12] 4040 	mov	r0,a
      003E3B E6               [12] 4041 	mov	a,@r0
      003E3C C0 E0            [24] 4042 	push	acc
      003E3E 08               [12] 4043 	inc	r0
      003E3F E6               [12] 4044 	mov	a,@r0
      003E40 C0 E0            [24] 4045 	push	acc
      003E42 08               [12] 4046 	inc	r0
      003E43 E6               [12] 4047 	mov	a,@r0
      003E44 C0 E0            [24] 4048 	push	acc
      003E46 08               [12] 4049 	inc	r0
      003E47 E6               [12] 4050 	mov	a,@r0
      003E48 C0 E0            [24] 4051 	push	acc
      003E4A 8D 82            [24] 4052 	mov	dpl,r5
      003E4C 8E 83            [24] 4053 	mov	dph,r6
      003E4E 8F F0            [24] 4054 	mov	b,r7
      003E50 12 26 B5         [24] 4055 	lcall	_stack_push
      003E53 E5 81            [12] 4056 	mov	a,sp
      003E55 24 FC            [12] 4057 	add	a,#0xfc
      003E57 F5 81            [12] 4058 	mov	sp,a
                                   4059 ;	calc.c:242: break;
      003E59 02 46 C5         [24] 4060 	ljmp	00217$
                                   4061 ;	calc.c:243: case '&':
      003E5C                       4062 00170$:
                                   4063 ;	calc.c:244: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003E5C E5 08            [12] 4064 	mov	a,_bp
      003E5E 24 0F            [12] 4065 	add	a,#0x0f
      003E60 FF               [12] 4066 	mov	r7,a
      003E61 7E 00            [12] 4067 	mov	r6,#0x00
      003E63 7D 40            [12] 4068 	mov	r5,#0x40
      003E65 E5 08            [12] 4069 	mov	a,_bp
      003E67 24 0C            [12] 4070 	add	a,#0x0c
      003E69 F8               [12] 4071 	mov	r0,a
      003E6A 74 09            [12] 4072 	mov	a,#0x09
      003E6C 26               [12] 4073 	add	a,@r0
      003E6D FA               [12] 4074 	mov	r2,a
      003E6E E4               [12] 4075 	clr	a
      003E6F 08               [12] 4076 	inc	r0
      003E70 36               [12] 4077 	addc	a,@r0
      003E71 FB               [12] 4078 	mov	r3,a
      003E72 08               [12] 4079 	inc	r0
      003E73 86 04            [24] 4080 	mov	ar4,@r0
      003E75 C0 07            [24] 4081 	push	ar7
      003E77 C0 06            [24] 4082 	push	ar6
      003E79 C0 05            [24] 4083 	push	ar5
      003E7B 8A 82            [24] 4084 	mov	dpl,r2
      003E7D 8B 83            [24] 4085 	mov	dph,r3
      003E7F 8C F0            [24] 4086 	mov	b,r4
      003E81 12 27 7F         [24] 4087 	lcall	_stack_pop
      003E84 AE 82            [24] 4088 	mov	r6,dpl
      003E86 AF 83            [24] 4089 	mov	r7,dph
      003E88 15 81            [12] 4090 	dec	sp
      003E8A 15 81            [12] 4091 	dec	sp
      003E8C 15 81            [12] 4092 	dec	sp
      003E8E EE               [12] 4093 	mov	a,r6
      003E8F 4F               [12] 4094 	orl	a,r7
      003E90 70 25            [24] 4095 	jnz	00175$
      003E92 7D 9D            [12] 4096 	mov	r5,#___str_8
      003E94 7E 70            [12] 4097 	mov	r6,#(___str_8 >> 8)
      003E96 7F 80            [12] 4098 	mov	r7,#0x80
                                   4099 ;	calc.c:50: return;
      003E98                       4100 00378$:
                                   4101 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003E98 8D 82            [24] 4102 	mov	dpl,r5
      003E9A 8E 83            [24] 4103 	mov	dph,r6
      003E9C 8F F0            [24] 4104 	mov	b,r7
      003E9E 12 57 E4         [24] 4105 	lcall	__gptrget
      003EA1 FC               [12] 4106 	mov	r4,a
      003EA2 70 03            [24] 4107 	jnz	01092$
      003EA4 02 46 C5         [24] 4108 	ljmp	00217$
      003EA7                       4109 01092$:
      003EA7 7B 00            [12] 4110 	mov	r3,#0x00
      003EA9 8C 82            [24] 4111 	mov	dpl,r4
      003EAB 8B 83            [24] 4112 	mov	dph,r3
      003EAD 12 29 C0         [24] 4113 	lcall	_putchar
      003EB0 0D               [12] 4114 	inc	r5
                                   4115 ;	calc.c:244: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003EB1 BD 00 E4         [24] 4116 	cjne	r5,#0x00,00378$
      003EB4 0E               [12] 4117 	inc	r6
      003EB5 80 E1            [24] 4118 	sjmp	00378$
      003EB7                       4119 00175$:
                                   4120 ;	calc.c:245: else if (!stack_pop(&ctx->s, &d1)) {
      003EB7 E5 08            [12] 4121 	mov	a,_bp
      003EB9 24 13            [12] 4122 	add	a,#0x13
      003EBB FF               [12] 4123 	mov	r7,a
      003EBC 7E 00            [12] 4124 	mov	r6,#0x00
      003EBE 7D 40            [12] 4125 	mov	r5,#0x40
      003EC0 E5 08            [12] 4126 	mov	a,_bp
      003EC2 24 0C            [12] 4127 	add	a,#0x0c
      003EC4 F8               [12] 4128 	mov	r0,a
      003EC5 74 09            [12] 4129 	mov	a,#0x09
      003EC7 26               [12] 4130 	add	a,@r0
      003EC8 FA               [12] 4131 	mov	r2,a
      003EC9 E4               [12] 4132 	clr	a
      003ECA 08               [12] 4133 	inc	r0
      003ECB 36               [12] 4134 	addc	a,@r0
      003ECC FB               [12] 4135 	mov	r3,a
      003ECD 08               [12] 4136 	inc	r0
      003ECE 86 04            [24] 4137 	mov	ar4,@r0
      003ED0 C0 07            [24] 4138 	push	ar7
      003ED2 C0 06            [24] 4139 	push	ar6
      003ED4 C0 05            [24] 4140 	push	ar5
      003ED6 8A 82            [24] 4141 	mov	dpl,r2
      003ED8 8B 83            [24] 4142 	mov	dph,r3
      003EDA 8C F0            [24] 4143 	mov	b,r4
      003EDC 12 27 7F         [24] 4144 	lcall	_stack_pop
      003EDF AE 82            [24] 4145 	mov	r6,dpl
      003EE1 AF 83            [24] 4146 	mov	r7,dph
      003EE3 15 81            [12] 4147 	dec	sp
      003EE5 15 81            [12] 4148 	dec	sp
      003EE7 15 81            [12] 4149 	dec	sp
      003EE9 EE               [12] 4150 	mov	a,r6
      003EEA 4F               [12] 4151 	orl	a,r7
      003EEB 70 58            [24] 4152 	jnz	00172$
                                   4153 ;	calc.c:246: (void)stack_push(&ctx->s, d0);
      003EED E5 08            [12] 4154 	mov	a,_bp
      003EEF 24 0C            [12] 4155 	add	a,#0x0c
      003EF1 F8               [12] 4156 	mov	r0,a
      003EF2 74 09            [12] 4157 	mov	a,#0x09
      003EF4 26               [12] 4158 	add	a,@r0
      003EF5 FD               [12] 4159 	mov	r5,a
      003EF6 E4               [12] 4160 	clr	a
      003EF7 08               [12] 4161 	inc	r0
      003EF8 36               [12] 4162 	addc	a,@r0
      003EF9 FE               [12] 4163 	mov	r6,a
      003EFA 08               [12] 4164 	inc	r0
      003EFB 86 07            [24] 4165 	mov	ar7,@r0
      003EFD E5 08            [12] 4166 	mov	a,_bp
      003EFF 24 0F            [12] 4167 	add	a,#0x0f
      003F01 F8               [12] 4168 	mov	r0,a
      003F02 E6               [12] 4169 	mov	a,@r0
      003F03 C0 E0            [24] 4170 	push	acc
      003F05 08               [12] 4171 	inc	r0
      003F06 E6               [12] 4172 	mov	a,@r0
      003F07 C0 E0            [24] 4173 	push	acc
      003F09 08               [12] 4174 	inc	r0
      003F0A E6               [12] 4175 	mov	a,@r0
      003F0B C0 E0            [24] 4176 	push	acc
      003F0D 08               [12] 4177 	inc	r0
      003F0E E6               [12] 4178 	mov	a,@r0
      003F0F C0 E0            [24] 4179 	push	acc
      003F11 8D 82            [24] 4180 	mov	dpl,r5
      003F13 8E 83            [24] 4181 	mov	dph,r6
      003F15 8F F0            [24] 4182 	mov	b,r7
      003F17 12 26 B5         [24] 4183 	lcall	_stack_push
      003F1A E5 81            [12] 4184 	mov	a,sp
      003F1C 24 FC            [12] 4185 	add	a,#0xfc
      003F1E F5 81            [12] 4186 	mov	sp,a
                                   4187 ;	calc.c:247: printstr("\r\nstack underflow\r\n");
      003F20 7D 9D            [12] 4188 	mov	r5,#___str_8
      003F22 7E 70            [12] 4189 	mov	r6,#(___str_8 >> 8)
      003F24 7F 80            [12] 4190 	mov	r7,#0x80
                                   4191 ;	calc.c:50: return;
      003F26                       4192 00381$:
                                   4193 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003F26 8D 82            [24] 4194 	mov	dpl,r5
      003F28 8E 83            [24] 4195 	mov	dph,r6
      003F2A 8F F0            [24] 4196 	mov	b,r7
      003F2C 12 57 E4         [24] 4197 	lcall	__gptrget
      003F2F FC               [12] 4198 	mov	r4,a
      003F30 70 03            [24] 4199 	jnz	01095$
      003F32 02 46 C5         [24] 4200 	ljmp	00217$
      003F35                       4201 01095$:
      003F35 7B 00            [12] 4202 	mov	r3,#0x00
      003F37 8C 82            [24] 4203 	mov	dpl,r4
      003F39 8B 83            [24] 4204 	mov	dph,r3
      003F3B 12 29 C0         [24] 4205 	lcall	_putchar
      003F3E 0D               [12] 4206 	inc	r5
                                   4207 ;	calc.c:247: printstr("\r\nstack underflow\r\n");
      003F3F BD 00 E4         [24] 4208 	cjne	r5,#0x00,00381$
      003F42 0E               [12] 4209 	inc	r6
      003F43 80 E1            [24] 4210 	sjmp	00381$
      003F45                       4211 00172$:
                                   4212 ;	calc.c:249: d1 &= d0;
      003F45 E5 08            [12] 4213 	mov	a,_bp
      003F47 24 13            [12] 4214 	add	a,#0x13
      003F49 F8               [12] 4215 	mov	r0,a
      003F4A E5 08            [12] 4216 	mov	a,_bp
      003F4C 24 0F            [12] 4217 	add	a,#0x0f
      003F4E F9               [12] 4218 	mov	r1,a
      003F4F E7               [12] 4219 	mov	a,@r1
      003F50 56               [12] 4220 	anl	a,@r0
      003F51 F6               [12] 4221 	mov	@r0,a
      003F52 09               [12] 4222 	inc	r1
      003F53 E7               [12] 4223 	mov	a,@r1
      003F54 08               [12] 4224 	inc	r0
      003F55 56               [12] 4225 	anl	a,@r0
      003F56 F6               [12] 4226 	mov	@r0,a
      003F57 09               [12] 4227 	inc	r1
      003F58 E7               [12] 4228 	mov	a,@r1
      003F59 08               [12] 4229 	inc	r0
      003F5A 56               [12] 4230 	anl	a,@r0
      003F5B F6               [12] 4231 	mov	@r0,a
      003F5C 09               [12] 4232 	inc	r1
      003F5D E7               [12] 4233 	mov	a,@r1
      003F5E 08               [12] 4234 	inc	r0
      003F5F 56               [12] 4235 	anl	a,@r0
      003F60 F6               [12] 4236 	mov	@r0,a
                                   4237 ;	calc.c:250: (void)stack_push(&ctx->s, d1);
      003F61 E5 08            [12] 4238 	mov	a,_bp
      003F63 24 0C            [12] 4239 	add	a,#0x0c
      003F65 F8               [12] 4240 	mov	r0,a
      003F66 74 09            [12] 4241 	mov	a,#0x09
      003F68 26               [12] 4242 	add	a,@r0
      003F69 FD               [12] 4243 	mov	r5,a
      003F6A E4               [12] 4244 	clr	a
      003F6B 08               [12] 4245 	inc	r0
      003F6C 36               [12] 4246 	addc	a,@r0
      003F6D FE               [12] 4247 	mov	r6,a
      003F6E 08               [12] 4248 	inc	r0
      003F6F 86 07            [24] 4249 	mov	ar7,@r0
      003F71 E5 08            [12] 4250 	mov	a,_bp
      003F73 24 13            [12] 4251 	add	a,#0x13
      003F75 F8               [12] 4252 	mov	r0,a
      003F76 E6               [12] 4253 	mov	a,@r0
      003F77 C0 E0            [24] 4254 	push	acc
      003F79 08               [12] 4255 	inc	r0
      003F7A E6               [12] 4256 	mov	a,@r0
      003F7B C0 E0            [24] 4257 	push	acc
      003F7D 08               [12] 4258 	inc	r0
      003F7E E6               [12] 4259 	mov	a,@r0
      003F7F C0 E0            [24] 4260 	push	acc
      003F81 08               [12] 4261 	inc	r0
      003F82 E6               [12] 4262 	mov	a,@r0
      003F83 C0 E0            [24] 4263 	push	acc
      003F85 8D 82            [24] 4264 	mov	dpl,r5
      003F87 8E 83            [24] 4265 	mov	dph,r6
      003F89 8F F0            [24] 4266 	mov	b,r7
      003F8B 12 26 B5         [24] 4267 	lcall	_stack_push
      003F8E E5 81            [12] 4268 	mov	a,sp
      003F90 24 FC            [12] 4269 	add	a,#0xfc
      003F92 F5 81            [12] 4270 	mov	sp,a
                                   4271 ;	calc.c:252: break;
      003F94 02 46 C5         [24] 4272 	ljmp	00217$
                                   4273 ;	calc.c:253: case '|':
      003F97                       4274 00177$:
                                   4275 ;	calc.c:254: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003F97 E5 08            [12] 4276 	mov	a,_bp
      003F99 24 0F            [12] 4277 	add	a,#0x0f
      003F9B FF               [12] 4278 	mov	r7,a
      003F9C 7E 00            [12] 4279 	mov	r6,#0x00
      003F9E 7D 40            [12] 4280 	mov	r5,#0x40
      003FA0 E5 08            [12] 4281 	mov	a,_bp
      003FA2 24 0C            [12] 4282 	add	a,#0x0c
      003FA4 F8               [12] 4283 	mov	r0,a
      003FA5 74 09            [12] 4284 	mov	a,#0x09
      003FA7 26               [12] 4285 	add	a,@r0
      003FA8 FA               [12] 4286 	mov	r2,a
      003FA9 E4               [12] 4287 	clr	a
      003FAA 08               [12] 4288 	inc	r0
      003FAB 36               [12] 4289 	addc	a,@r0
      003FAC FB               [12] 4290 	mov	r3,a
      003FAD 08               [12] 4291 	inc	r0
      003FAE 86 04            [24] 4292 	mov	ar4,@r0
      003FB0 C0 07            [24] 4293 	push	ar7
      003FB2 C0 06            [24] 4294 	push	ar6
      003FB4 C0 05            [24] 4295 	push	ar5
      003FB6 8A 82            [24] 4296 	mov	dpl,r2
      003FB8 8B 83            [24] 4297 	mov	dph,r3
      003FBA 8C F0            [24] 4298 	mov	b,r4
      003FBC 12 27 7F         [24] 4299 	lcall	_stack_pop
      003FBF AE 82            [24] 4300 	mov	r6,dpl
      003FC1 AF 83            [24] 4301 	mov	r7,dph
      003FC3 15 81            [12] 4302 	dec	sp
      003FC5 15 81            [12] 4303 	dec	sp
      003FC7 15 81            [12] 4304 	dec	sp
      003FC9 EE               [12] 4305 	mov	a,r6
      003FCA 4F               [12] 4306 	orl	a,r7
      003FCB 70 25            [24] 4307 	jnz	00182$
      003FCD 7D 9D            [12] 4308 	mov	r5,#___str_8
      003FCF 7E 70            [12] 4309 	mov	r6,#(___str_8 >> 8)
      003FD1 7F 80            [12] 4310 	mov	r7,#0x80
                                   4311 ;	calc.c:50: return;
      003FD3                       4312 00384$:
                                   4313 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003FD3 8D 82            [24] 4314 	mov	dpl,r5
      003FD5 8E 83            [24] 4315 	mov	dph,r6
      003FD7 8F F0            [24] 4316 	mov	b,r7
      003FD9 12 57 E4         [24] 4317 	lcall	__gptrget
      003FDC FC               [12] 4318 	mov	r4,a
      003FDD 70 03            [24] 4319 	jnz	01098$
      003FDF 02 46 C5         [24] 4320 	ljmp	00217$
      003FE2                       4321 01098$:
      003FE2 7B 00            [12] 4322 	mov	r3,#0x00
      003FE4 8C 82            [24] 4323 	mov	dpl,r4
      003FE6 8B 83            [24] 4324 	mov	dph,r3
      003FE8 12 29 C0         [24] 4325 	lcall	_putchar
      003FEB 0D               [12] 4326 	inc	r5
                                   4327 ;	calc.c:254: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003FEC BD 00 E4         [24] 4328 	cjne	r5,#0x00,00384$
      003FEF 0E               [12] 4329 	inc	r6
      003FF0 80 E1            [24] 4330 	sjmp	00384$
      003FF2                       4331 00182$:
                                   4332 ;	calc.c:255: else if (!stack_pop(&ctx->s, &d1)) {
      003FF2 E5 08            [12] 4333 	mov	a,_bp
      003FF4 24 13            [12] 4334 	add	a,#0x13
      003FF6 FF               [12] 4335 	mov	r7,a
      003FF7 7E 00            [12] 4336 	mov	r6,#0x00
      003FF9 7D 40            [12] 4337 	mov	r5,#0x40
      003FFB E5 08            [12] 4338 	mov	a,_bp
      003FFD 24 0C            [12] 4339 	add	a,#0x0c
      003FFF F8               [12] 4340 	mov	r0,a
      004000 74 09            [12] 4341 	mov	a,#0x09
      004002 26               [12] 4342 	add	a,@r0
      004003 FA               [12] 4343 	mov	r2,a
      004004 E4               [12] 4344 	clr	a
      004005 08               [12] 4345 	inc	r0
      004006 36               [12] 4346 	addc	a,@r0
      004007 FB               [12] 4347 	mov	r3,a
      004008 08               [12] 4348 	inc	r0
      004009 86 04            [24] 4349 	mov	ar4,@r0
      00400B C0 07            [24] 4350 	push	ar7
      00400D C0 06            [24] 4351 	push	ar6
      00400F C0 05            [24] 4352 	push	ar5
      004011 8A 82            [24] 4353 	mov	dpl,r2
      004013 8B 83            [24] 4354 	mov	dph,r3
      004015 8C F0            [24] 4355 	mov	b,r4
      004017 12 27 7F         [24] 4356 	lcall	_stack_pop
      00401A AE 82            [24] 4357 	mov	r6,dpl
      00401C AF 83            [24] 4358 	mov	r7,dph
      00401E 15 81            [12] 4359 	dec	sp
      004020 15 81            [12] 4360 	dec	sp
      004022 15 81            [12] 4361 	dec	sp
      004024 EE               [12] 4362 	mov	a,r6
      004025 4F               [12] 4363 	orl	a,r7
      004026 70 58            [24] 4364 	jnz	00179$
                                   4365 ;	calc.c:256: (void)stack_push(&ctx->s, d0);
      004028 E5 08            [12] 4366 	mov	a,_bp
      00402A 24 0C            [12] 4367 	add	a,#0x0c
      00402C F8               [12] 4368 	mov	r0,a
      00402D 74 09            [12] 4369 	mov	a,#0x09
      00402F 26               [12] 4370 	add	a,@r0
      004030 FD               [12] 4371 	mov	r5,a
      004031 E4               [12] 4372 	clr	a
      004032 08               [12] 4373 	inc	r0
      004033 36               [12] 4374 	addc	a,@r0
      004034 FE               [12] 4375 	mov	r6,a
      004035 08               [12] 4376 	inc	r0
      004036 86 07            [24] 4377 	mov	ar7,@r0
      004038 E5 08            [12] 4378 	mov	a,_bp
      00403A 24 0F            [12] 4379 	add	a,#0x0f
      00403C F8               [12] 4380 	mov	r0,a
      00403D E6               [12] 4381 	mov	a,@r0
      00403E C0 E0            [24] 4382 	push	acc
      004040 08               [12] 4383 	inc	r0
      004041 E6               [12] 4384 	mov	a,@r0
      004042 C0 E0            [24] 4385 	push	acc
      004044 08               [12] 4386 	inc	r0
      004045 E6               [12] 4387 	mov	a,@r0
      004046 C0 E0            [24] 4388 	push	acc
      004048 08               [12] 4389 	inc	r0
      004049 E6               [12] 4390 	mov	a,@r0
      00404A C0 E0            [24] 4391 	push	acc
      00404C 8D 82            [24] 4392 	mov	dpl,r5
      00404E 8E 83            [24] 4393 	mov	dph,r6
      004050 8F F0            [24] 4394 	mov	b,r7
      004052 12 26 B5         [24] 4395 	lcall	_stack_push
      004055 E5 81            [12] 4396 	mov	a,sp
      004057 24 FC            [12] 4397 	add	a,#0xfc
      004059 F5 81            [12] 4398 	mov	sp,a
                                   4399 ;	calc.c:257: printstr("\r\nstack underflow\r\n");
      00405B 7D 9D            [12] 4400 	mov	r5,#___str_8
      00405D 7E 70            [12] 4401 	mov	r6,#(___str_8 >> 8)
      00405F 7F 80            [12] 4402 	mov	r7,#0x80
                                   4403 ;	calc.c:50: return;
      004061                       4404 00387$:
                                   4405 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004061 8D 82            [24] 4406 	mov	dpl,r5
      004063 8E 83            [24] 4407 	mov	dph,r6
      004065 8F F0            [24] 4408 	mov	b,r7
      004067 12 57 E4         [24] 4409 	lcall	__gptrget
      00406A FC               [12] 4410 	mov	r4,a
      00406B 70 03            [24] 4411 	jnz	01101$
      00406D 02 46 C5         [24] 4412 	ljmp	00217$
      004070                       4413 01101$:
      004070 7B 00            [12] 4414 	mov	r3,#0x00
      004072 8C 82            [24] 4415 	mov	dpl,r4
      004074 8B 83            [24] 4416 	mov	dph,r3
      004076 12 29 C0         [24] 4417 	lcall	_putchar
      004079 0D               [12] 4418 	inc	r5
                                   4419 ;	calc.c:257: printstr("\r\nstack underflow\r\n");
      00407A BD 00 E4         [24] 4420 	cjne	r5,#0x00,00387$
      00407D 0E               [12] 4421 	inc	r6
      00407E 80 E1            [24] 4422 	sjmp	00387$
      004080                       4423 00179$:
                                   4424 ;	calc.c:259: d1 |= d0;
      004080 E5 08            [12] 4425 	mov	a,_bp
      004082 24 13            [12] 4426 	add	a,#0x13
      004084 F8               [12] 4427 	mov	r0,a
      004085 E5 08            [12] 4428 	mov	a,_bp
      004087 24 0F            [12] 4429 	add	a,#0x0f
      004089 F9               [12] 4430 	mov	r1,a
      00408A E7               [12] 4431 	mov	a,@r1
      00408B 46               [12] 4432 	orl	a,@r0
      00408C F6               [12] 4433 	mov	@r0,a
      00408D 09               [12] 4434 	inc	r1
      00408E E7               [12] 4435 	mov	a,@r1
      00408F 08               [12] 4436 	inc	r0
      004090 46               [12] 4437 	orl	a,@r0
      004091 F6               [12] 4438 	mov	@r0,a
      004092 09               [12] 4439 	inc	r1
      004093 E7               [12] 4440 	mov	a,@r1
      004094 08               [12] 4441 	inc	r0
      004095 46               [12] 4442 	orl	a,@r0
      004096 F6               [12] 4443 	mov	@r0,a
      004097 09               [12] 4444 	inc	r1
      004098 E7               [12] 4445 	mov	a,@r1
      004099 08               [12] 4446 	inc	r0
      00409A 46               [12] 4447 	orl	a,@r0
      00409B F6               [12] 4448 	mov	@r0,a
                                   4449 ;	calc.c:260: (void)stack_push(&ctx->s, d1);
      00409C E5 08            [12] 4450 	mov	a,_bp
      00409E 24 0C            [12] 4451 	add	a,#0x0c
      0040A0 F8               [12] 4452 	mov	r0,a
      0040A1 74 09            [12] 4453 	mov	a,#0x09
      0040A3 26               [12] 4454 	add	a,@r0
      0040A4 FD               [12] 4455 	mov	r5,a
      0040A5 E4               [12] 4456 	clr	a
      0040A6 08               [12] 4457 	inc	r0
      0040A7 36               [12] 4458 	addc	a,@r0
      0040A8 FE               [12] 4459 	mov	r6,a
      0040A9 08               [12] 4460 	inc	r0
      0040AA 86 07            [24] 4461 	mov	ar7,@r0
      0040AC E5 08            [12] 4462 	mov	a,_bp
      0040AE 24 13            [12] 4463 	add	a,#0x13
      0040B0 F8               [12] 4464 	mov	r0,a
      0040B1 E6               [12] 4465 	mov	a,@r0
      0040B2 C0 E0            [24] 4466 	push	acc
      0040B4 08               [12] 4467 	inc	r0
      0040B5 E6               [12] 4468 	mov	a,@r0
      0040B6 C0 E0            [24] 4469 	push	acc
      0040B8 08               [12] 4470 	inc	r0
      0040B9 E6               [12] 4471 	mov	a,@r0
      0040BA C0 E0            [24] 4472 	push	acc
      0040BC 08               [12] 4473 	inc	r0
      0040BD E6               [12] 4474 	mov	a,@r0
      0040BE C0 E0            [24] 4475 	push	acc
      0040C0 8D 82            [24] 4476 	mov	dpl,r5
      0040C2 8E 83            [24] 4477 	mov	dph,r6
      0040C4 8F F0            [24] 4478 	mov	b,r7
      0040C6 12 26 B5         [24] 4479 	lcall	_stack_push
      0040C9 E5 81            [12] 4480 	mov	a,sp
      0040CB 24 FC            [12] 4481 	add	a,#0xfc
      0040CD F5 81            [12] 4482 	mov	sp,a
                                   4483 ;	calc.c:262: break;
      0040CF 02 46 C5         [24] 4484 	ljmp	00217$
                                   4485 ;	calc.c:263: case '^':
      0040D2                       4486 00184$:
                                   4487 ;	calc.c:264: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0040D2 E5 08            [12] 4488 	mov	a,_bp
      0040D4 24 0F            [12] 4489 	add	a,#0x0f
      0040D6 FF               [12] 4490 	mov	r7,a
      0040D7 7E 00            [12] 4491 	mov	r6,#0x00
      0040D9 7D 40            [12] 4492 	mov	r5,#0x40
      0040DB E5 08            [12] 4493 	mov	a,_bp
      0040DD 24 0C            [12] 4494 	add	a,#0x0c
      0040DF F8               [12] 4495 	mov	r0,a
      0040E0 74 09            [12] 4496 	mov	a,#0x09
      0040E2 26               [12] 4497 	add	a,@r0
      0040E3 FA               [12] 4498 	mov	r2,a
      0040E4 E4               [12] 4499 	clr	a
      0040E5 08               [12] 4500 	inc	r0
      0040E6 36               [12] 4501 	addc	a,@r0
      0040E7 FB               [12] 4502 	mov	r3,a
      0040E8 08               [12] 4503 	inc	r0
      0040E9 86 04            [24] 4504 	mov	ar4,@r0
      0040EB C0 07            [24] 4505 	push	ar7
      0040ED C0 06            [24] 4506 	push	ar6
      0040EF C0 05            [24] 4507 	push	ar5
      0040F1 8A 82            [24] 4508 	mov	dpl,r2
      0040F3 8B 83            [24] 4509 	mov	dph,r3
      0040F5 8C F0            [24] 4510 	mov	b,r4
      0040F7 12 27 7F         [24] 4511 	lcall	_stack_pop
      0040FA AE 82            [24] 4512 	mov	r6,dpl
      0040FC AF 83            [24] 4513 	mov	r7,dph
      0040FE 15 81            [12] 4514 	dec	sp
      004100 15 81            [12] 4515 	dec	sp
      004102 15 81            [12] 4516 	dec	sp
      004104 EE               [12] 4517 	mov	a,r6
      004105 4F               [12] 4518 	orl	a,r7
      004106 70 25            [24] 4519 	jnz	00189$
      004108 7D 9D            [12] 4520 	mov	r5,#___str_8
      00410A 7E 70            [12] 4521 	mov	r6,#(___str_8 >> 8)
      00410C 7F 80            [12] 4522 	mov	r7,#0x80
                                   4523 ;	calc.c:50: return;
      00410E                       4524 00390$:
                                   4525 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00410E 8D 82            [24] 4526 	mov	dpl,r5
      004110 8E 83            [24] 4527 	mov	dph,r6
      004112 8F F0            [24] 4528 	mov	b,r7
      004114 12 57 E4         [24] 4529 	lcall	__gptrget
      004117 FC               [12] 4530 	mov	r4,a
      004118 70 03            [24] 4531 	jnz	01104$
      00411A 02 46 C5         [24] 4532 	ljmp	00217$
      00411D                       4533 01104$:
      00411D 7B 00            [12] 4534 	mov	r3,#0x00
      00411F 8C 82            [24] 4535 	mov	dpl,r4
      004121 8B 83            [24] 4536 	mov	dph,r3
      004123 12 29 C0         [24] 4537 	lcall	_putchar
      004126 0D               [12] 4538 	inc	r5
                                   4539 ;	calc.c:264: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      004127 BD 00 E4         [24] 4540 	cjne	r5,#0x00,00390$
      00412A 0E               [12] 4541 	inc	r6
      00412B 80 E1            [24] 4542 	sjmp	00390$
      00412D                       4543 00189$:
                                   4544 ;	calc.c:265: else if (!stack_pop(&ctx->s, &d1)) {
      00412D E5 08            [12] 4545 	mov	a,_bp
      00412F 24 13            [12] 4546 	add	a,#0x13
      004131 FF               [12] 4547 	mov	r7,a
      004132 7E 00            [12] 4548 	mov	r6,#0x00
      004134 7D 40            [12] 4549 	mov	r5,#0x40
      004136 E5 08            [12] 4550 	mov	a,_bp
      004138 24 0C            [12] 4551 	add	a,#0x0c
      00413A F8               [12] 4552 	mov	r0,a
      00413B 74 09            [12] 4553 	mov	a,#0x09
      00413D 26               [12] 4554 	add	a,@r0
      00413E FA               [12] 4555 	mov	r2,a
      00413F E4               [12] 4556 	clr	a
      004140 08               [12] 4557 	inc	r0
      004141 36               [12] 4558 	addc	a,@r0
      004142 FB               [12] 4559 	mov	r3,a
      004143 08               [12] 4560 	inc	r0
      004144 86 04            [24] 4561 	mov	ar4,@r0
      004146 C0 07            [24] 4562 	push	ar7
      004148 C0 06            [24] 4563 	push	ar6
      00414A C0 05            [24] 4564 	push	ar5
      00414C 8A 82            [24] 4565 	mov	dpl,r2
      00414E 8B 83            [24] 4566 	mov	dph,r3
      004150 8C F0            [24] 4567 	mov	b,r4
      004152 12 27 7F         [24] 4568 	lcall	_stack_pop
      004155 AE 82            [24] 4569 	mov	r6,dpl
      004157 AF 83            [24] 4570 	mov	r7,dph
      004159 15 81            [12] 4571 	dec	sp
      00415B 15 81            [12] 4572 	dec	sp
      00415D 15 81            [12] 4573 	dec	sp
      00415F EE               [12] 4574 	mov	a,r6
      004160 4F               [12] 4575 	orl	a,r7
      004161 70 58            [24] 4576 	jnz	00186$
                                   4577 ;	calc.c:266: (void)stack_push(&ctx->s, d0);
      004163 E5 08            [12] 4578 	mov	a,_bp
      004165 24 0C            [12] 4579 	add	a,#0x0c
      004167 F8               [12] 4580 	mov	r0,a
      004168 74 09            [12] 4581 	mov	a,#0x09
      00416A 26               [12] 4582 	add	a,@r0
      00416B FD               [12] 4583 	mov	r5,a
      00416C E4               [12] 4584 	clr	a
      00416D 08               [12] 4585 	inc	r0
      00416E 36               [12] 4586 	addc	a,@r0
      00416F FE               [12] 4587 	mov	r6,a
      004170 08               [12] 4588 	inc	r0
      004171 86 07            [24] 4589 	mov	ar7,@r0
      004173 E5 08            [12] 4590 	mov	a,_bp
      004175 24 0F            [12] 4591 	add	a,#0x0f
      004177 F8               [12] 4592 	mov	r0,a
      004178 E6               [12] 4593 	mov	a,@r0
      004179 C0 E0            [24] 4594 	push	acc
      00417B 08               [12] 4595 	inc	r0
      00417C E6               [12] 4596 	mov	a,@r0
      00417D C0 E0            [24] 4597 	push	acc
      00417F 08               [12] 4598 	inc	r0
      004180 E6               [12] 4599 	mov	a,@r0
      004181 C0 E0            [24] 4600 	push	acc
      004183 08               [12] 4601 	inc	r0
      004184 E6               [12] 4602 	mov	a,@r0
      004185 C0 E0            [24] 4603 	push	acc
      004187 8D 82            [24] 4604 	mov	dpl,r5
      004189 8E 83            [24] 4605 	mov	dph,r6
      00418B 8F F0            [24] 4606 	mov	b,r7
      00418D 12 26 B5         [24] 4607 	lcall	_stack_push
      004190 E5 81            [12] 4608 	mov	a,sp
      004192 24 FC            [12] 4609 	add	a,#0xfc
      004194 F5 81            [12] 4610 	mov	sp,a
                                   4611 ;	calc.c:267: printstr("\r\nstack underflow\r\n");
      004196 7D 9D            [12] 4612 	mov	r5,#___str_8
      004198 7E 70            [12] 4613 	mov	r6,#(___str_8 >> 8)
      00419A 7F 80            [12] 4614 	mov	r7,#0x80
                                   4615 ;	calc.c:50: return;
      00419C                       4616 00393$:
                                   4617 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00419C 8D 82            [24] 4618 	mov	dpl,r5
      00419E 8E 83            [24] 4619 	mov	dph,r6
      0041A0 8F F0            [24] 4620 	mov	b,r7
      0041A2 12 57 E4         [24] 4621 	lcall	__gptrget
      0041A5 FC               [12] 4622 	mov	r4,a
      0041A6 70 03            [24] 4623 	jnz	01107$
      0041A8 02 46 C5         [24] 4624 	ljmp	00217$
      0041AB                       4625 01107$:
      0041AB 7B 00            [12] 4626 	mov	r3,#0x00
      0041AD 8C 82            [24] 4627 	mov	dpl,r4
      0041AF 8B 83            [24] 4628 	mov	dph,r3
      0041B1 12 29 C0         [24] 4629 	lcall	_putchar
      0041B4 0D               [12] 4630 	inc	r5
                                   4631 ;	calc.c:267: printstr("\r\nstack underflow\r\n");
      0041B5 BD 00 E4         [24] 4632 	cjne	r5,#0x00,00393$
      0041B8 0E               [12] 4633 	inc	r6
      0041B9 80 E1            [24] 4634 	sjmp	00393$
      0041BB                       4635 00186$:
                                   4636 ;	calc.c:269: d1 ^= d0;
      0041BB E5 08            [12] 4637 	mov	a,_bp
      0041BD 24 13            [12] 4638 	add	a,#0x13
      0041BF F8               [12] 4639 	mov	r0,a
      0041C0 E5 08            [12] 4640 	mov	a,_bp
      0041C2 24 0F            [12] 4641 	add	a,#0x0f
      0041C4 F9               [12] 4642 	mov	r1,a
      0041C5 E7               [12] 4643 	mov	a,@r1
      0041C6 66               [12] 4644 	xrl	a,@r0
      0041C7 F6               [12] 4645 	mov	@r0,a
      0041C8 09               [12] 4646 	inc	r1
      0041C9 E7               [12] 4647 	mov	a,@r1
      0041CA 08               [12] 4648 	inc	r0
      0041CB 66               [12] 4649 	xrl	a,@r0
      0041CC F6               [12] 4650 	mov	@r0,a
      0041CD 09               [12] 4651 	inc	r1
      0041CE E7               [12] 4652 	mov	a,@r1
      0041CF 08               [12] 4653 	inc	r0
      0041D0 66               [12] 4654 	xrl	a,@r0
      0041D1 F6               [12] 4655 	mov	@r0,a
      0041D2 09               [12] 4656 	inc	r1
      0041D3 E7               [12] 4657 	mov	a,@r1
      0041D4 08               [12] 4658 	inc	r0
      0041D5 66               [12] 4659 	xrl	a,@r0
      0041D6 F6               [12] 4660 	mov	@r0,a
                                   4661 ;	calc.c:270: (void)stack_push(&ctx->s, d1);
      0041D7 E5 08            [12] 4662 	mov	a,_bp
      0041D9 24 0C            [12] 4663 	add	a,#0x0c
      0041DB F8               [12] 4664 	mov	r0,a
      0041DC 74 09            [12] 4665 	mov	a,#0x09
      0041DE 26               [12] 4666 	add	a,@r0
      0041DF FD               [12] 4667 	mov	r5,a
      0041E0 E4               [12] 4668 	clr	a
      0041E1 08               [12] 4669 	inc	r0
      0041E2 36               [12] 4670 	addc	a,@r0
      0041E3 FE               [12] 4671 	mov	r6,a
      0041E4 08               [12] 4672 	inc	r0
      0041E5 86 07            [24] 4673 	mov	ar7,@r0
      0041E7 E5 08            [12] 4674 	mov	a,_bp
      0041E9 24 13            [12] 4675 	add	a,#0x13
      0041EB F8               [12] 4676 	mov	r0,a
      0041EC E6               [12] 4677 	mov	a,@r0
      0041ED C0 E0            [24] 4678 	push	acc
      0041EF 08               [12] 4679 	inc	r0
      0041F0 E6               [12] 4680 	mov	a,@r0
      0041F1 C0 E0            [24] 4681 	push	acc
      0041F3 08               [12] 4682 	inc	r0
      0041F4 E6               [12] 4683 	mov	a,@r0
      0041F5 C0 E0            [24] 4684 	push	acc
      0041F7 08               [12] 4685 	inc	r0
      0041F8 E6               [12] 4686 	mov	a,@r0
      0041F9 C0 E0            [24] 4687 	push	acc
      0041FB 8D 82            [24] 4688 	mov	dpl,r5
      0041FD 8E 83            [24] 4689 	mov	dph,r6
      0041FF 8F F0            [24] 4690 	mov	b,r7
      004201 12 26 B5         [24] 4691 	lcall	_stack_push
      004204 E5 81            [12] 4692 	mov	a,sp
      004206 24 FC            [12] 4693 	add	a,#0xfc
      004208 F5 81            [12] 4694 	mov	sp,a
                                   4695 ;	calc.c:272: break;
      00420A 02 46 C5         [24] 4696 	ljmp	00217$
                                   4697 ;	calc.c:273: case '>':
      00420D                       4698 00191$:
                                   4699 ;	calc.c:274: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00420D E5 08            [12] 4700 	mov	a,_bp
      00420F 24 0F            [12] 4701 	add	a,#0x0f
      004211 FF               [12] 4702 	mov	r7,a
      004212 7E 00            [12] 4703 	mov	r6,#0x00
      004214 7D 40            [12] 4704 	mov	r5,#0x40
      004216 E5 08            [12] 4705 	mov	a,_bp
      004218 24 0C            [12] 4706 	add	a,#0x0c
      00421A F8               [12] 4707 	mov	r0,a
      00421B 74 09            [12] 4708 	mov	a,#0x09
      00421D 26               [12] 4709 	add	a,@r0
      00421E FA               [12] 4710 	mov	r2,a
      00421F E4               [12] 4711 	clr	a
      004220 08               [12] 4712 	inc	r0
      004221 36               [12] 4713 	addc	a,@r0
      004222 FB               [12] 4714 	mov	r3,a
      004223 08               [12] 4715 	inc	r0
      004224 86 04            [24] 4716 	mov	ar4,@r0
      004226 C0 07            [24] 4717 	push	ar7
      004228 C0 06            [24] 4718 	push	ar6
      00422A C0 05            [24] 4719 	push	ar5
      00422C 8A 82            [24] 4720 	mov	dpl,r2
      00422E 8B 83            [24] 4721 	mov	dph,r3
      004230 8C F0            [24] 4722 	mov	b,r4
      004232 12 27 7F         [24] 4723 	lcall	_stack_pop
      004235 AE 82            [24] 4724 	mov	r6,dpl
      004237 AF 83            [24] 4725 	mov	r7,dph
      004239 15 81            [12] 4726 	dec	sp
      00423B 15 81            [12] 4727 	dec	sp
      00423D 15 81            [12] 4728 	dec	sp
      00423F EE               [12] 4729 	mov	a,r6
      004240 4F               [12] 4730 	orl	a,r7
      004241 70 25            [24] 4731 	jnz	00196$
      004243 7D 9D            [12] 4732 	mov	r5,#___str_8
      004245 7E 70            [12] 4733 	mov	r6,#(___str_8 >> 8)
      004247 7F 80            [12] 4734 	mov	r7,#0x80
                                   4735 ;	calc.c:50: return;
      004249                       4736 00396$:
                                   4737 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004249 8D 82            [24] 4738 	mov	dpl,r5
      00424B 8E 83            [24] 4739 	mov	dph,r6
      00424D 8F F0            [24] 4740 	mov	b,r7
      00424F 12 57 E4         [24] 4741 	lcall	__gptrget
      004252 FC               [12] 4742 	mov	r4,a
      004253 70 03            [24] 4743 	jnz	01110$
      004255 02 46 C5         [24] 4744 	ljmp	00217$
      004258                       4745 01110$:
      004258 7B 00            [12] 4746 	mov	r3,#0x00
      00425A 8C 82            [24] 4747 	mov	dpl,r4
      00425C 8B 83            [24] 4748 	mov	dph,r3
      00425E 12 29 C0         [24] 4749 	lcall	_putchar
      004261 0D               [12] 4750 	inc	r5
                                   4751 ;	calc.c:274: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      004262 BD 00 E4         [24] 4752 	cjne	r5,#0x00,00396$
      004265 0E               [12] 4753 	inc	r6
      004266 80 E1            [24] 4754 	sjmp	00396$
      004268                       4755 00196$:
                                   4756 ;	calc.c:275: else if (!stack_pop(&ctx->s, &d1)) {
      004268 E5 08            [12] 4757 	mov	a,_bp
      00426A 24 13            [12] 4758 	add	a,#0x13
      00426C FF               [12] 4759 	mov	r7,a
      00426D 7E 00            [12] 4760 	mov	r6,#0x00
      00426F 7D 40            [12] 4761 	mov	r5,#0x40
      004271 E5 08            [12] 4762 	mov	a,_bp
      004273 24 0C            [12] 4763 	add	a,#0x0c
      004275 F8               [12] 4764 	mov	r0,a
      004276 74 09            [12] 4765 	mov	a,#0x09
      004278 26               [12] 4766 	add	a,@r0
      004279 FA               [12] 4767 	mov	r2,a
      00427A E4               [12] 4768 	clr	a
      00427B 08               [12] 4769 	inc	r0
      00427C 36               [12] 4770 	addc	a,@r0
      00427D FB               [12] 4771 	mov	r3,a
      00427E 08               [12] 4772 	inc	r0
      00427F 86 04            [24] 4773 	mov	ar4,@r0
      004281 C0 07            [24] 4774 	push	ar7
      004283 C0 06            [24] 4775 	push	ar6
      004285 C0 05            [24] 4776 	push	ar5
      004287 8A 82            [24] 4777 	mov	dpl,r2
      004289 8B 83            [24] 4778 	mov	dph,r3
      00428B 8C F0            [24] 4779 	mov	b,r4
      00428D 12 27 7F         [24] 4780 	lcall	_stack_pop
      004290 AE 82            [24] 4781 	mov	r6,dpl
      004292 AF 83            [24] 4782 	mov	r7,dph
      004294 15 81            [12] 4783 	dec	sp
      004296 15 81            [12] 4784 	dec	sp
      004298 15 81            [12] 4785 	dec	sp
      00429A EE               [12] 4786 	mov	a,r6
      00429B 4F               [12] 4787 	orl	a,r7
      00429C 70 58            [24] 4788 	jnz	00193$
                                   4789 ;	calc.c:276: (void)stack_push(&ctx->s, d0);
      00429E E5 08            [12] 4790 	mov	a,_bp
      0042A0 24 0C            [12] 4791 	add	a,#0x0c
      0042A2 F8               [12] 4792 	mov	r0,a
      0042A3 74 09            [12] 4793 	mov	a,#0x09
      0042A5 26               [12] 4794 	add	a,@r0
      0042A6 FD               [12] 4795 	mov	r5,a
      0042A7 E4               [12] 4796 	clr	a
      0042A8 08               [12] 4797 	inc	r0
      0042A9 36               [12] 4798 	addc	a,@r0
      0042AA FE               [12] 4799 	mov	r6,a
      0042AB 08               [12] 4800 	inc	r0
      0042AC 86 07            [24] 4801 	mov	ar7,@r0
      0042AE E5 08            [12] 4802 	mov	a,_bp
      0042B0 24 0F            [12] 4803 	add	a,#0x0f
      0042B2 F8               [12] 4804 	mov	r0,a
      0042B3 E6               [12] 4805 	mov	a,@r0
      0042B4 C0 E0            [24] 4806 	push	acc
      0042B6 08               [12] 4807 	inc	r0
      0042B7 E6               [12] 4808 	mov	a,@r0
      0042B8 C0 E0            [24] 4809 	push	acc
      0042BA 08               [12] 4810 	inc	r0
      0042BB E6               [12] 4811 	mov	a,@r0
      0042BC C0 E0            [24] 4812 	push	acc
      0042BE 08               [12] 4813 	inc	r0
      0042BF E6               [12] 4814 	mov	a,@r0
      0042C0 C0 E0            [24] 4815 	push	acc
      0042C2 8D 82            [24] 4816 	mov	dpl,r5
      0042C4 8E 83            [24] 4817 	mov	dph,r6
      0042C6 8F F0            [24] 4818 	mov	b,r7
      0042C8 12 26 B5         [24] 4819 	lcall	_stack_push
      0042CB E5 81            [12] 4820 	mov	a,sp
      0042CD 24 FC            [12] 4821 	add	a,#0xfc
      0042CF F5 81            [12] 4822 	mov	sp,a
                                   4823 ;	calc.c:277: printstr("\r\nstack underflow\r\n");
      0042D1 7D 9D            [12] 4824 	mov	r5,#___str_8
      0042D3 7E 70            [12] 4825 	mov	r6,#(___str_8 >> 8)
      0042D5 7F 80            [12] 4826 	mov	r7,#0x80
                                   4827 ;	calc.c:50: return;
      0042D7                       4828 00399$:
                                   4829 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0042D7 8D 82            [24] 4830 	mov	dpl,r5
      0042D9 8E 83            [24] 4831 	mov	dph,r6
      0042DB 8F F0            [24] 4832 	mov	b,r7
      0042DD 12 57 E4         [24] 4833 	lcall	__gptrget
      0042E0 FC               [12] 4834 	mov	r4,a
      0042E1 70 03            [24] 4835 	jnz	01113$
      0042E3 02 46 C5         [24] 4836 	ljmp	00217$
      0042E6                       4837 01113$:
      0042E6 7B 00            [12] 4838 	mov	r3,#0x00
      0042E8 8C 82            [24] 4839 	mov	dpl,r4
      0042EA 8B 83            [24] 4840 	mov	dph,r3
      0042EC 12 29 C0         [24] 4841 	lcall	_putchar
      0042EF 0D               [12] 4842 	inc	r5
                                   4843 ;	calc.c:277: printstr("\r\nstack underflow\r\n");
      0042F0 BD 00 E4         [24] 4844 	cjne	r5,#0x00,00399$
      0042F3 0E               [12] 4845 	inc	r6
      0042F4 80 E1            [24] 4846 	sjmp	00399$
      0042F6                       4847 00193$:
                                   4848 ;	calc.c:279: d1 = (unsigned long)d1 >> ((unsigned long)d0 & 0x0000001flu);
      0042F6 E5 08            [12] 4849 	mov	a,_bp
      0042F8 24 13            [12] 4850 	add	a,#0x13
      0042FA F8               [12] 4851 	mov	r0,a
      0042FB 86 04            [24] 4852 	mov	ar4,@r0
      0042FD 08               [12] 4853 	inc	r0
      0042FE 86 05            [24] 4854 	mov	ar5,@r0
      004300 08               [12] 4855 	inc	r0
      004301 86 06            [24] 4856 	mov	ar6,@r0
      004303 08               [12] 4857 	inc	r0
      004304 86 07            [24] 4858 	mov	ar7,@r0
      004306 E5 08            [12] 4859 	mov	a,_bp
      004308 24 0F            [12] 4860 	add	a,#0x0f
      00430A F8               [12] 4861 	mov	r0,a
      00430B 86 03            [24] 4862 	mov	ar3,@r0
      00430D 53 03 1F         [24] 4863 	anl	ar3,#0x1f
      004310 8B F0            [24] 4864 	mov	b,r3
      004312 05 F0            [12] 4865 	inc	b
      004314 80 0D            [24] 4866 	sjmp	01116$
      004316                       4867 01115$:
      004316 C3               [12] 4868 	clr	c
      004317 EF               [12] 4869 	mov	a,r7
      004318 13               [12] 4870 	rrc	a
      004319 FF               [12] 4871 	mov	r7,a
      00431A EE               [12] 4872 	mov	a,r6
      00431B 13               [12] 4873 	rrc	a
      00431C FE               [12] 4874 	mov	r6,a
      00431D ED               [12] 4875 	mov	a,r5
      00431E 13               [12] 4876 	rrc	a
      00431F FD               [12] 4877 	mov	r5,a
      004320 EC               [12] 4878 	mov	a,r4
      004321 13               [12] 4879 	rrc	a
      004322 FC               [12] 4880 	mov	r4,a
      004323                       4881 01116$:
      004323 D5 F0 F0         [24] 4882 	djnz	b,01115$
      004326 E5 08            [12] 4883 	mov	a,_bp
      004328 24 13            [12] 4884 	add	a,#0x13
      00432A F8               [12] 4885 	mov	r0,a
      00432B A6 04            [24] 4886 	mov	@r0,ar4
      00432D 08               [12] 4887 	inc	r0
      00432E A6 05            [24] 4888 	mov	@r0,ar5
      004330 08               [12] 4889 	inc	r0
      004331 A6 06            [24] 4890 	mov	@r0,ar6
      004333 08               [12] 4891 	inc	r0
      004334 A6 07            [24] 4892 	mov	@r0,ar7
                                   4893 ;	calc.c:280: (void)stack_push(&ctx->s, d1);
      004336 E5 08            [12] 4894 	mov	a,_bp
      004338 24 0C            [12] 4895 	add	a,#0x0c
      00433A F8               [12] 4896 	mov	r0,a
      00433B 74 09            [12] 4897 	mov	a,#0x09
      00433D 26               [12] 4898 	add	a,@r0
      00433E FD               [12] 4899 	mov	r5,a
      00433F E4               [12] 4900 	clr	a
      004340 08               [12] 4901 	inc	r0
      004341 36               [12] 4902 	addc	a,@r0
      004342 FE               [12] 4903 	mov	r6,a
      004343 08               [12] 4904 	inc	r0
      004344 86 07            [24] 4905 	mov	ar7,@r0
      004346 E5 08            [12] 4906 	mov	a,_bp
      004348 24 13            [12] 4907 	add	a,#0x13
      00434A F8               [12] 4908 	mov	r0,a
      00434B E6               [12] 4909 	mov	a,@r0
      00434C C0 E0            [24] 4910 	push	acc
      00434E 08               [12] 4911 	inc	r0
      00434F E6               [12] 4912 	mov	a,@r0
      004350 C0 E0            [24] 4913 	push	acc
      004352 08               [12] 4914 	inc	r0
      004353 E6               [12] 4915 	mov	a,@r0
      004354 C0 E0            [24] 4916 	push	acc
      004356 08               [12] 4917 	inc	r0
      004357 E6               [12] 4918 	mov	a,@r0
      004358 C0 E0            [24] 4919 	push	acc
      00435A 8D 82            [24] 4920 	mov	dpl,r5
      00435C 8E 83            [24] 4921 	mov	dph,r6
      00435E 8F F0            [24] 4922 	mov	b,r7
      004360 12 26 B5         [24] 4923 	lcall	_stack_push
      004363 E5 81            [12] 4924 	mov	a,sp
      004365 24 FC            [12] 4925 	add	a,#0xfc
      004367 F5 81            [12] 4926 	mov	sp,a
                                   4927 ;	calc.c:282: break;
      004369 02 46 C5         [24] 4928 	ljmp	00217$
                                   4929 ;	calc.c:283: case ']':
      00436C                       4930 00198$:
                                   4931 ;	calc.c:284: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00436C E5 08            [12] 4932 	mov	a,_bp
      00436E 24 0F            [12] 4933 	add	a,#0x0f
      004370 FF               [12] 4934 	mov	r7,a
      004371 7E 00            [12] 4935 	mov	r6,#0x00
      004373 7D 40            [12] 4936 	mov	r5,#0x40
      004375 E5 08            [12] 4937 	mov	a,_bp
      004377 24 0C            [12] 4938 	add	a,#0x0c
      004379 F8               [12] 4939 	mov	r0,a
      00437A 74 09            [12] 4940 	mov	a,#0x09
      00437C 26               [12] 4941 	add	a,@r0
      00437D FA               [12] 4942 	mov	r2,a
      00437E E4               [12] 4943 	clr	a
      00437F 08               [12] 4944 	inc	r0
      004380 36               [12] 4945 	addc	a,@r0
      004381 FB               [12] 4946 	mov	r3,a
      004382 08               [12] 4947 	inc	r0
      004383 86 04            [24] 4948 	mov	ar4,@r0
      004385 C0 07            [24] 4949 	push	ar7
      004387 C0 06            [24] 4950 	push	ar6
      004389 C0 05            [24] 4951 	push	ar5
      00438B 8A 82            [24] 4952 	mov	dpl,r2
      00438D 8B 83            [24] 4953 	mov	dph,r3
      00438F 8C F0            [24] 4954 	mov	b,r4
      004391 12 27 7F         [24] 4955 	lcall	_stack_pop
      004394 AE 82            [24] 4956 	mov	r6,dpl
      004396 AF 83            [24] 4957 	mov	r7,dph
      004398 15 81            [12] 4958 	dec	sp
      00439A 15 81            [12] 4959 	dec	sp
      00439C 15 81            [12] 4960 	dec	sp
      00439E EE               [12] 4961 	mov	a,r6
      00439F 4F               [12] 4962 	orl	a,r7
      0043A0 70 25            [24] 4963 	jnz	00203$
      0043A2 7D 9D            [12] 4964 	mov	r5,#___str_8
      0043A4 7E 70            [12] 4965 	mov	r6,#(___str_8 >> 8)
      0043A6 7F 80            [12] 4966 	mov	r7,#0x80
                                   4967 ;	calc.c:50: return;
      0043A8                       4968 00402$:
                                   4969 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0043A8 8D 82            [24] 4970 	mov	dpl,r5
      0043AA 8E 83            [24] 4971 	mov	dph,r6
      0043AC 8F F0            [24] 4972 	mov	b,r7
      0043AE 12 57 E4         [24] 4973 	lcall	__gptrget
      0043B1 FC               [12] 4974 	mov	r4,a
      0043B2 70 03            [24] 4975 	jnz	01118$
      0043B4 02 46 C5         [24] 4976 	ljmp	00217$
      0043B7                       4977 01118$:
      0043B7 7B 00            [12] 4978 	mov	r3,#0x00
      0043B9 8C 82            [24] 4979 	mov	dpl,r4
      0043BB 8B 83            [24] 4980 	mov	dph,r3
      0043BD 12 29 C0         [24] 4981 	lcall	_putchar
      0043C0 0D               [12] 4982 	inc	r5
                                   4983 ;	calc.c:284: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0043C1 BD 00 E4         [24] 4984 	cjne	r5,#0x00,00402$
      0043C4 0E               [12] 4985 	inc	r6
      0043C5 80 E1            [24] 4986 	sjmp	00402$
      0043C7                       4987 00203$:
                                   4988 ;	calc.c:285: else if (!stack_pop(&ctx->s, &d1)) {
      0043C7 E5 08            [12] 4989 	mov	a,_bp
      0043C9 24 13            [12] 4990 	add	a,#0x13
      0043CB FF               [12] 4991 	mov	r7,a
      0043CC 7E 00            [12] 4992 	mov	r6,#0x00
      0043CE 7D 40            [12] 4993 	mov	r5,#0x40
      0043D0 E5 08            [12] 4994 	mov	a,_bp
      0043D2 24 0C            [12] 4995 	add	a,#0x0c
      0043D4 F8               [12] 4996 	mov	r0,a
      0043D5 74 09            [12] 4997 	mov	a,#0x09
      0043D7 26               [12] 4998 	add	a,@r0
      0043D8 FA               [12] 4999 	mov	r2,a
      0043D9 E4               [12] 5000 	clr	a
      0043DA 08               [12] 5001 	inc	r0
      0043DB 36               [12] 5002 	addc	a,@r0
      0043DC FB               [12] 5003 	mov	r3,a
      0043DD 08               [12] 5004 	inc	r0
      0043DE 86 04            [24] 5005 	mov	ar4,@r0
      0043E0 C0 07            [24] 5006 	push	ar7
      0043E2 C0 06            [24] 5007 	push	ar6
      0043E4 C0 05            [24] 5008 	push	ar5
      0043E6 8A 82            [24] 5009 	mov	dpl,r2
      0043E8 8B 83            [24] 5010 	mov	dph,r3
      0043EA 8C F0            [24] 5011 	mov	b,r4
      0043EC 12 27 7F         [24] 5012 	lcall	_stack_pop
      0043EF AE 82            [24] 5013 	mov	r6,dpl
      0043F1 AF 83            [24] 5014 	mov	r7,dph
      0043F3 15 81            [12] 5015 	dec	sp
      0043F5 15 81            [12] 5016 	dec	sp
      0043F7 15 81            [12] 5017 	dec	sp
      0043F9 EE               [12] 5018 	mov	a,r6
      0043FA 4F               [12] 5019 	orl	a,r7
      0043FB 70 58            [24] 5020 	jnz	00200$
                                   5021 ;	calc.c:286: (void)stack_push(&ctx->s, d0);
      0043FD E5 08            [12] 5022 	mov	a,_bp
      0043FF 24 0C            [12] 5023 	add	a,#0x0c
      004401 F8               [12] 5024 	mov	r0,a
      004402 74 09            [12] 5025 	mov	a,#0x09
      004404 26               [12] 5026 	add	a,@r0
      004405 FD               [12] 5027 	mov	r5,a
      004406 E4               [12] 5028 	clr	a
      004407 08               [12] 5029 	inc	r0
      004408 36               [12] 5030 	addc	a,@r0
      004409 FE               [12] 5031 	mov	r6,a
      00440A 08               [12] 5032 	inc	r0
      00440B 86 07            [24] 5033 	mov	ar7,@r0
      00440D E5 08            [12] 5034 	mov	a,_bp
      00440F 24 0F            [12] 5035 	add	a,#0x0f
      004411 F8               [12] 5036 	mov	r0,a
      004412 E6               [12] 5037 	mov	a,@r0
      004413 C0 E0            [24] 5038 	push	acc
      004415 08               [12] 5039 	inc	r0
      004416 E6               [12] 5040 	mov	a,@r0
      004417 C0 E0            [24] 5041 	push	acc
      004419 08               [12] 5042 	inc	r0
      00441A E6               [12] 5043 	mov	a,@r0
      00441B C0 E0            [24] 5044 	push	acc
      00441D 08               [12] 5045 	inc	r0
      00441E E6               [12] 5046 	mov	a,@r0
      00441F C0 E0            [24] 5047 	push	acc
      004421 8D 82            [24] 5048 	mov	dpl,r5
      004423 8E 83            [24] 5049 	mov	dph,r6
      004425 8F F0            [24] 5050 	mov	b,r7
      004427 12 26 B5         [24] 5051 	lcall	_stack_push
      00442A E5 81            [12] 5052 	mov	a,sp
      00442C 24 FC            [12] 5053 	add	a,#0xfc
      00442E F5 81            [12] 5054 	mov	sp,a
                                   5055 ;	calc.c:287: printstr("\r\nstack underflow\r\n");
      004430 7D 9D            [12] 5056 	mov	r5,#___str_8
      004432 7E 70            [12] 5057 	mov	r6,#(___str_8 >> 8)
      004434 7F 80            [12] 5058 	mov	r7,#0x80
                                   5059 ;	calc.c:50: return;
      004436                       5060 00405$:
                                   5061 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004436 8D 82            [24] 5062 	mov	dpl,r5
      004438 8E 83            [24] 5063 	mov	dph,r6
      00443A 8F F0            [24] 5064 	mov	b,r7
      00443C 12 57 E4         [24] 5065 	lcall	__gptrget
      00443F FC               [12] 5066 	mov	r4,a
      004440 70 03            [24] 5067 	jnz	01121$
      004442 02 46 C5         [24] 5068 	ljmp	00217$
      004445                       5069 01121$:
      004445 7B 00            [12] 5070 	mov	r3,#0x00
      004447 8C 82            [24] 5071 	mov	dpl,r4
      004449 8B 83            [24] 5072 	mov	dph,r3
      00444B 12 29 C0         [24] 5073 	lcall	_putchar
      00444E 0D               [12] 5074 	inc	r5
                                   5075 ;	calc.c:287: printstr("\r\nstack underflow\r\n");
      00444F BD 00 E4         [24] 5076 	cjne	r5,#0x00,00405$
      004452 0E               [12] 5077 	inc	r6
      004453 80 E1            [24] 5078 	sjmp	00405$
      004455                       5079 00200$:
                                   5080 ;	calc.c:289: d1 >>= ((unsigned long)d0 & 0x0000001flu);
      004455 E5 08            [12] 5081 	mov	a,_bp
      004457 24 0F            [12] 5082 	add	a,#0x0f
      004459 F8               [12] 5083 	mov	r0,a
      00445A 86 07            [24] 5084 	mov	ar7,@r0
      00445C 53 07 1F         [24] 5085 	anl	ar7,#0x1f
      00445F 8F F0            [24] 5086 	mov	b,r7
      004461 05 F0            [12] 5087 	inc	b
      004463 E5 08            [12] 5088 	mov	a,_bp
      004465 24 13            [12] 5089 	add	a,#0x13
      004467 F8               [12] 5090 	mov	r0,a
      004468 08               [12] 5091 	inc	r0
      004469 08               [12] 5092 	inc	r0
      00446A 08               [12] 5093 	inc	r0
      00446B E6               [12] 5094 	mov	a,@r0
      00446C 33               [12] 5095 	rlc	a
      00446D 92 D2            [24] 5096 	mov	ov,c
      00446F 18               [12] 5097 	dec	r0
      004470 18               [12] 5098 	dec	r0
      004471 18               [12] 5099 	dec	r0
      004472 80 14            [24] 5100 	sjmp	01124$
      004474                       5101 01123$:
      004474 A2 D2            [12] 5102 	mov	c,ov
      004476 08               [12] 5103 	inc	r0
      004477 08               [12] 5104 	inc	r0
      004478 08               [12] 5105 	inc	r0
      004479 E6               [12] 5106 	mov	a,@r0
      00447A 13               [12] 5107 	rrc	a
      00447B F6               [12] 5108 	mov	@r0,a
      00447C 18               [12] 5109 	dec	r0
      00447D E6               [12] 5110 	mov	a,@r0
      00447E 13               [12] 5111 	rrc	a
      00447F F6               [12] 5112 	mov	@r0,a
      004480 18               [12] 5113 	dec	r0
      004481 E6               [12] 5114 	mov	a,@r0
      004482 13               [12] 5115 	rrc	a
      004483 F6               [12] 5116 	mov	@r0,a
      004484 18               [12] 5117 	dec	r0
      004485 E6               [12] 5118 	mov	a,@r0
      004486 13               [12] 5119 	rrc	a
      004487 F6               [12] 5120 	mov	@r0,a
      004488                       5121 01124$:
      004488 D5 F0 E9         [24] 5122 	djnz	b,01123$
                                   5123 ;	calc.c:290: (void)stack_push(&ctx->s, d1);
      00448B E5 08            [12] 5124 	mov	a,_bp
      00448D 24 0C            [12] 5125 	add	a,#0x0c
      00448F F8               [12] 5126 	mov	r0,a
      004490 74 09            [12] 5127 	mov	a,#0x09
      004492 26               [12] 5128 	add	a,@r0
      004493 FD               [12] 5129 	mov	r5,a
      004494 E4               [12] 5130 	clr	a
      004495 08               [12] 5131 	inc	r0
      004496 36               [12] 5132 	addc	a,@r0
      004497 FE               [12] 5133 	mov	r6,a
      004498 08               [12] 5134 	inc	r0
      004499 86 07            [24] 5135 	mov	ar7,@r0
      00449B E5 08            [12] 5136 	mov	a,_bp
      00449D 24 13            [12] 5137 	add	a,#0x13
      00449F F8               [12] 5138 	mov	r0,a
      0044A0 E6               [12] 5139 	mov	a,@r0
      0044A1 C0 E0            [24] 5140 	push	acc
      0044A3 08               [12] 5141 	inc	r0
      0044A4 E6               [12] 5142 	mov	a,@r0
      0044A5 C0 E0            [24] 5143 	push	acc
      0044A7 08               [12] 5144 	inc	r0
      0044A8 E6               [12] 5145 	mov	a,@r0
      0044A9 C0 E0            [24] 5146 	push	acc
      0044AB 08               [12] 5147 	inc	r0
      0044AC E6               [12] 5148 	mov	a,@r0
      0044AD C0 E0            [24] 5149 	push	acc
      0044AF 8D 82            [24] 5150 	mov	dpl,r5
      0044B1 8E 83            [24] 5151 	mov	dph,r6
      0044B3 8F F0            [24] 5152 	mov	b,r7
      0044B5 12 26 B5         [24] 5153 	lcall	_stack_push
      0044B8 E5 81            [12] 5154 	mov	a,sp
      0044BA 24 FC            [12] 5155 	add	a,#0xfc
      0044BC F5 81            [12] 5156 	mov	sp,a
                                   5157 ;	calc.c:292: break;
      0044BE 02 46 C5         [24] 5158 	ljmp	00217$
                                   5159 ;	calc.c:293: case '<':
      0044C1                       5160 00205$:
                                   5161 ;	calc.c:294: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0044C1 E5 08            [12] 5162 	mov	a,_bp
      0044C3 24 0F            [12] 5163 	add	a,#0x0f
      0044C5 FF               [12] 5164 	mov	r7,a
      0044C6 7E 00            [12] 5165 	mov	r6,#0x00
      0044C8 7D 40            [12] 5166 	mov	r5,#0x40
      0044CA E5 08            [12] 5167 	mov	a,_bp
      0044CC 24 0C            [12] 5168 	add	a,#0x0c
      0044CE F8               [12] 5169 	mov	r0,a
      0044CF 74 09            [12] 5170 	mov	a,#0x09
      0044D1 26               [12] 5171 	add	a,@r0
      0044D2 FA               [12] 5172 	mov	r2,a
      0044D3 E4               [12] 5173 	clr	a
      0044D4 08               [12] 5174 	inc	r0
      0044D5 36               [12] 5175 	addc	a,@r0
      0044D6 FB               [12] 5176 	mov	r3,a
      0044D7 08               [12] 5177 	inc	r0
      0044D8 86 04            [24] 5178 	mov	ar4,@r0
      0044DA C0 07            [24] 5179 	push	ar7
      0044DC C0 06            [24] 5180 	push	ar6
      0044DE C0 05            [24] 5181 	push	ar5
      0044E0 8A 82            [24] 5182 	mov	dpl,r2
      0044E2 8B 83            [24] 5183 	mov	dph,r3
      0044E4 8C F0            [24] 5184 	mov	b,r4
      0044E6 12 27 7F         [24] 5185 	lcall	_stack_pop
      0044E9 AE 82            [24] 5186 	mov	r6,dpl
      0044EB AF 83            [24] 5187 	mov	r7,dph
      0044ED 15 81            [12] 5188 	dec	sp
      0044EF 15 81            [12] 5189 	dec	sp
      0044F1 15 81            [12] 5190 	dec	sp
      0044F3 EE               [12] 5191 	mov	a,r6
      0044F4 4F               [12] 5192 	orl	a,r7
      0044F5 70 25            [24] 5193 	jnz	00210$
      0044F7 7D 9D            [12] 5194 	mov	r5,#___str_8
      0044F9 7E 70            [12] 5195 	mov	r6,#(___str_8 >> 8)
      0044FB 7F 80            [12] 5196 	mov	r7,#0x80
                                   5197 ;	calc.c:50: return;
      0044FD                       5198 00408$:
                                   5199 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0044FD 8D 82            [24] 5200 	mov	dpl,r5
      0044FF 8E 83            [24] 5201 	mov	dph,r6
      004501 8F F0            [24] 5202 	mov	b,r7
      004503 12 57 E4         [24] 5203 	lcall	__gptrget
      004506 FC               [12] 5204 	mov	r4,a
      004507 70 03            [24] 5205 	jnz	01126$
      004509 02 46 C5         [24] 5206 	ljmp	00217$
      00450C                       5207 01126$:
      00450C 7B 00            [12] 5208 	mov	r3,#0x00
      00450E 8C 82            [24] 5209 	mov	dpl,r4
      004510 8B 83            [24] 5210 	mov	dph,r3
      004512 12 29 C0         [24] 5211 	lcall	_putchar
      004515 0D               [12] 5212 	inc	r5
                                   5213 ;	calc.c:294: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      004516 BD 00 E4         [24] 5214 	cjne	r5,#0x00,00408$
      004519 0E               [12] 5215 	inc	r6
      00451A 80 E1            [24] 5216 	sjmp	00408$
      00451C                       5217 00210$:
                                   5218 ;	calc.c:295: else if (!stack_pop(&ctx->s, &d1)) {
      00451C E5 08            [12] 5219 	mov	a,_bp
      00451E 24 13            [12] 5220 	add	a,#0x13
      004520 FF               [12] 5221 	mov	r7,a
      004521 7E 00            [12] 5222 	mov	r6,#0x00
      004523 7D 40            [12] 5223 	mov	r5,#0x40
      004525 E5 08            [12] 5224 	mov	a,_bp
      004527 24 0C            [12] 5225 	add	a,#0x0c
      004529 F8               [12] 5226 	mov	r0,a
      00452A 74 09            [12] 5227 	mov	a,#0x09
      00452C 26               [12] 5228 	add	a,@r0
      00452D FA               [12] 5229 	mov	r2,a
      00452E E4               [12] 5230 	clr	a
      00452F 08               [12] 5231 	inc	r0
      004530 36               [12] 5232 	addc	a,@r0
      004531 FB               [12] 5233 	mov	r3,a
      004532 08               [12] 5234 	inc	r0
      004533 86 04            [24] 5235 	mov	ar4,@r0
      004535 C0 07            [24] 5236 	push	ar7
      004537 C0 06            [24] 5237 	push	ar6
      004539 C0 05            [24] 5238 	push	ar5
      00453B 8A 82            [24] 5239 	mov	dpl,r2
      00453D 8B 83            [24] 5240 	mov	dph,r3
      00453F 8C F0            [24] 5241 	mov	b,r4
      004541 12 27 7F         [24] 5242 	lcall	_stack_pop
      004544 AE 82            [24] 5243 	mov	r6,dpl
      004546 AF 83            [24] 5244 	mov	r7,dph
      004548 15 81            [12] 5245 	dec	sp
      00454A 15 81            [12] 5246 	dec	sp
      00454C 15 81            [12] 5247 	dec	sp
      00454E EE               [12] 5248 	mov	a,r6
      00454F 4F               [12] 5249 	orl	a,r7
      004550 70 58            [24] 5250 	jnz	00207$
                                   5251 ;	calc.c:296: (void)stack_push(&ctx->s, d0);
      004552 E5 08            [12] 5252 	mov	a,_bp
      004554 24 0C            [12] 5253 	add	a,#0x0c
      004556 F8               [12] 5254 	mov	r0,a
      004557 74 09            [12] 5255 	mov	a,#0x09
      004559 26               [12] 5256 	add	a,@r0
      00455A FD               [12] 5257 	mov	r5,a
      00455B E4               [12] 5258 	clr	a
      00455C 08               [12] 5259 	inc	r0
      00455D 36               [12] 5260 	addc	a,@r0
      00455E FE               [12] 5261 	mov	r6,a
      00455F 08               [12] 5262 	inc	r0
      004560 86 07            [24] 5263 	mov	ar7,@r0
      004562 E5 08            [12] 5264 	mov	a,_bp
      004564 24 0F            [12] 5265 	add	a,#0x0f
      004566 F8               [12] 5266 	mov	r0,a
      004567 E6               [12] 5267 	mov	a,@r0
      004568 C0 E0            [24] 5268 	push	acc
      00456A 08               [12] 5269 	inc	r0
      00456B E6               [12] 5270 	mov	a,@r0
      00456C C0 E0            [24] 5271 	push	acc
      00456E 08               [12] 5272 	inc	r0
      00456F E6               [12] 5273 	mov	a,@r0
      004570 C0 E0            [24] 5274 	push	acc
      004572 08               [12] 5275 	inc	r0
      004573 E6               [12] 5276 	mov	a,@r0
      004574 C0 E0            [24] 5277 	push	acc
      004576 8D 82            [24] 5278 	mov	dpl,r5
      004578 8E 83            [24] 5279 	mov	dph,r6
      00457A 8F F0            [24] 5280 	mov	b,r7
      00457C 12 26 B5         [24] 5281 	lcall	_stack_push
      00457F E5 81            [12] 5282 	mov	a,sp
      004581 24 FC            [12] 5283 	add	a,#0xfc
      004583 F5 81            [12] 5284 	mov	sp,a
                                   5285 ;	calc.c:297: printstr("\r\nstack underflow\r\n");
      004585 7D 9D            [12] 5286 	mov	r5,#___str_8
      004587 7E 70            [12] 5287 	mov	r6,#(___str_8 >> 8)
      004589 7F 80            [12] 5288 	mov	r7,#0x80
                                   5289 ;	calc.c:50: return;
      00458B                       5290 00411$:
                                   5291 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00458B 8D 82            [24] 5292 	mov	dpl,r5
      00458D 8E 83            [24] 5293 	mov	dph,r6
      00458F 8F F0            [24] 5294 	mov	b,r7
      004591 12 57 E4         [24] 5295 	lcall	__gptrget
      004594 FC               [12] 5296 	mov	r4,a
      004595 70 03            [24] 5297 	jnz	01129$
      004597 02 46 C5         [24] 5298 	ljmp	00217$
      00459A                       5299 01129$:
      00459A 7B 00            [12] 5300 	mov	r3,#0x00
      00459C 8C 82            [24] 5301 	mov	dpl,r4
      00459E 8B 83            [24] 5302 	mov	dph,r3
      0045A0 12 29 C0         [24] 5303 	lcall	_putchar
      0045A3 0D               [12] 5304 	inc	r5
                                   5305 ;	calc.c:297: printstr("\r\nstack underflow\r\n");
      0045A4 BD 00 E4         [24] 5306 	cjne	r5,#0x00,00411$
      0045A7 0E               [12] 5307 	inc	r6
      0045A8 80 E1            [24] 5308 	sjmp	00411$
      0045AA                       5309 00207$:
                                   5310 ;	calc.c:299: d1 <<= ((unsigned long)d0 & 0x0000001flu);
      0045AA E5 08            [12] 5311 	mov	a,_bp
      0045AC 24 0F            [12] 5312 	add	a,#0x0f
      0045AE F8               [12] 5313 	mov	r0,a
      0045AF 86 07            [24] 5314 	mov	ar7,@r0
      0045B1 53 07 1F         [24] 5315 	anl	ar7,#0x1f
      0045B4 E5 08            [12] 5316 	mov	a,_bp
      0045B6 24 13            [12] 5317 	add	a,#0x13
      0045B8 F8               [12] 5318 	mov	r0,a
      0045B9 86 03            [24] 5319 	mov	ar3,@r0
      0045BB 08               [12] 5320 	inc	r0
      0045BC 86 04            [24] 5321 	mov	ar4,@r0
      0045BE 08               [12] 5322 	inc	r0
      0045BF 86 05            [24] 5323 	mov	ar5,@r0
      0045C1 08               [12] 5324 	inc	r0
      0045C2 86 06            [24] 5325 	mov	ar6,@r0
      0045C4 8F F0            [24] 5326 	mov	b,r7
      0045C6 05 F0            [12] 5327 	inc	b
      0045C8 80 0C            [24] 5328 	sjmp	01132$
      0045CA                       5329 01131$:
      0045CA EB               [12] 5330 	mov	a,r3
      0045CB 2B               [12] 5331 	add	a,r3
      0045CC FB               [12] 5332 	mov	r3,a
      0045CD EC               [12] 5333 	mov	a,r4
      0045CE 33               [12] 5334 	rlc	a
      0045CF FC               [12] 5335 	mov	r4,a
      0045D0 ED               [12] 5336 	mov	a,r5
      0045D1 33               [12] 5337 	rlc	a
      0045D2 FD               [12] 5338 	mov	r5,a
      0045D3 EE               [12] 5339 	mov	a,r6
      0045D4 33               [12] 5340 	rlc	a
      0045D5 FE               [12] 5341 	mov	r6,a
      0045D6                       5342 01132$:
      0045D6 D5 F0 F1         [24] 5343 	djnz	b,01131$
      0045D9 E5 08            [12] 5344 	mov	a,_bp
      0045DB 24 13            [12] 5345 	add	a,#0x13
      0045DD F8               [12] 5346 	mov	r0,a
      0045DE A6 03            [24] 5347 	mov	@r0,ar3
      0045E0 08               [12] 5348 	inc	r0
      0045E1 A6 04            [24] 5349 	mov	@r0,ar4
      0045E3 08               [12] 5350 	inc	r0
      0045E4 A6 05            [24] 5351 	mov	@r0,ar5
      0045E6 08               [12] 5352 	inc	r0
      0045E7 A6 06            [24] 5353 	mov	@r0,ar6
                                   5354 ;	calc.c:300: (void)stack_push(&ctx->s, d1);
      0045E9 E5 08            [12] 5355 	mov	a,_bp
      0045EB 24 0C            [12] 5356 	add	a,#0x0c
      0045ED F8               [12] 5357 	mov	r0,a
      0045EE 74 09            [12] 5358 	mov	a,#0x09
      0045F0 26               [12] 5359 	add	a,@r0
      0045F1 FD               [12] 5360 	mov	r5,a
      0045F2 E4               [12] 5361 	clr	a
      0045F3 08               [12] 5362 	inc	r0
      0045F4 36               [12] 5363 	addc	a,@r0
      0045F5 FE               [12] 5364 	mov	r6,a
      0045F6 08               [12] 5365 	inc	r0
      0045F7 86 07            [24] 5366 	mov	ar7,@r0
      0045F9 E5 08            [12] 5367 	mov	a,_bp
      0045FB 24 13            [12] 5368 	add	a,#0x13
      0045FD F8               [12] 5369 	mov	r0,a
      0045FE E6               [12] 5370 	mov	a,@r0
      0045FF C0 E0            [24] 5371 	push	acc
      004601 08               [12] 5372 	inc	r0
      004602 E6               [12] 5373 	mov	a,@r0
      004603 C0 E0            [24] 5374 	push	acc
      004605 08               [12] 5375 	inc	r0
      004606 E6               [12] 5376 	mov	a,@r0
      004607 C0 E0            [24] 5377 	push	acc
      004609 08               [12] 5378 	inc	r0
      00460A E6               [12] 5379 	mov	a,@r0
      00460B C0 E0            [24] 5380 	push	acc
      00460D 8D 82            [24] 5381 	mov	dpl,r5
      00460F 8E 83            [24] 5382 	mov	dph,r6
      004611 8F F0            [24] 5383 	mov	b,r7
      004613 12 26 B5         [24] 5384 	lcall	_stack_push
      004616 E5 81            [12] 5385 	mov	a,sp
      004618 24 FC            [12] 5386 	add	a,#0xfc
      00461A F5 81            [12] 5387 	mov	sp,a
                                   5388 ;	calc.c:302: break;
      00461C 02 46 C5         [24] 5389 	ljmp	00217$
                                   5390 ;	calc.c:303: case '~':
      00461F                       5391 00212$:
                                   5392 ;	calc.c:304: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00461F E5 08            [12] 5393 	mov	a,_bp
      004621 24 0F            [12] 5394 	add	a,#0x0f
      004623 FF               [12] 5395 	mov	r7,a
      004624 7E 00            [12] 5396 	mov	r6,#0x00
      004626 7D 40            [12] 5397 	mov	r5,#0x40
      004628 E5 08            [12] 5398 	mov	a,_bp
      00462A 24 0C            [12] 5399 	add	a,#0x0c
      00462C F8               [12] 5400 	mov	r0,a
      00462D 74 09            [12] 5401 	mov	a,#0x09
      00462F 26               [12] 5402 	add	a,@r0
      004630 FA               [12] 5403 	mov	r2,a
      004631 E4               [12] 5404 	clr	a
      004632 08               [12] 5405 	inc	r0
      004633 36               [12] 5406 	addc	a,@r0
      004634 FB               [12] 5407 	mov	r3,a
      004635 08               [12] 5408 	inc	r0
      004636 86 04            [24] 5409 	mov	ar4,@r0
      004638 C0 07            [24] 5410 	push	ar7
      00463A C0 06            [24] 5411 	push	ar6
      00463C C0 05            [24] 5412 	push	ar5
      00463E 8A 82            [24] 5413 	mov	dpl,r2
      004640 8B 83            [24] 5414 	mov	dph,r3
      004642 8C F0            [24] 5415 	mov	b,r4
      004644 12 27 7F         [24] 5416 	lcall	_stack_pop
      004647 AE 82            [24] 5417 	mov	r6,dpl
      004649 AF 83            [24] 5418 	mov	r7,dph
      00464B 15 81            [12] 5419 	dec	sp
      00464D 15 81            [12] 5420 	dec	sp
      00464F 15 81            [12] 5421 	dec	sp
      004651 EE               [12] 5422 	mov	a,r6
      004652 4F               [12] 5423 	orl	a,r7
      004653 70 22            [24] 5424 	jnz	00214$
      004655 7D 9D            [12] 5425 	mov	r5,#___str_8
      004657 7E 70            [12] 5426 	mov	r6,#(___str_8 >> 8)
      004659 7F 80            [12] 5427 	mov	r7,#0x80
                                   5428 ;	calc.c:50: return;
      00465B                       5429 00414$:
                                   5430 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00465B 8D 82            [24] 5431 	mov	dpl,r5
      00465D 8E 83            [24] 5432 	mov	dph,r6
      00465F 8F F0            [24] 5433 	mov	b,r7
      004661 12 57 E4         [24] 5434 	lcall	__gptrget
      004664 FC               [12] 5435 	mov	r4,a
      004665 60 5E            [24] 5436 	jz	00217$
      004667 7B 00            [12] 5437 	mov	r3,#0x00
      004669 8C 82            [24] 5438 	mov	dpl,r4
      00466B 8B 83            [24] 5439 	mov	dph,r3
      00466D 12 29 C0         [24] 5440 	lcall	_putchar
      004670 0D               [12] 5441 	inc	r5
                                   5442 ;	calc.c:304: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      004671 BD 00 E7         [24] 5443 	cjne	r5,#0x00,00414$
      004674 0E               [12] 5444 	inc	r6
      004675 80 E4            [24] 5445 	sjmp	00414$
      004677                       5446 00214$:
                                   5447 ;	calc.c:306: d0 = ~d0;
      004677 E5 08            [12] 5448 	mov	a,_bp
      004679 24 0F            [12] 5449 	add	a,#0x0f
      00467B F8               [12] 5450 	mov	r0,a
      00467C E6               [12] 5451 	mov	a,@r0
      00467D F4               [12] 5452 	cpl	a
      00467E F6               [12] 5453 	mov	@r0,a
      00467F 08               [12] 5454 	inc	r0
      004680 E6               [12] 5455 	mov	a,@r0
      004681 F4               [12] 5456 	cpl	a
      004682 F6               [12] 5457 	mov	@r0,a
      004683 08               [12] 5458 	inc	r0
      004684 E6               [12] 5459 	mov	a,@r0
      004685 F4               [12] 5460 	cpl	a
      004686 F6               [12] 5461 	mov	@r0,a
      004687 08               [12] 5462 	inc	r0
      004688 E6               [12] 5463 	mov	a,@r0
      004689 F4               [12] 5464 	cpl	a
      00468A F6               [12] 5465 	mov	@r0,a
                                   5466 ;	calc.c:307: (void)stack_push(&ctx->s, d0);
      00468B E5 08            [12] 5467 	mov	a,_bp
      00468D 24 0C            [12] 5468 	add	a,#0x0c
      00468F F8               [12] 5469 	mov	r0,a
      004690 74 09            [12] 5470 	mov	a,#0x09
      004692 26               [12] 5471 	add	a,@r0
      004693 FD               [12] 5472 	mov	r5,a
      004694 E4               [12] 5473 	clr	a
      004695 08               [12] 5474 	inc	r0
      004696 36               [12] 5475 	addc	a,@r0
      004697 FE               [12] 5476 	mov	r6,a
      004698 08               [12] 5477 	inc	r0
      004699 86 07            [24] 5478 	mov	ar7,@r0
      00469B E5 08            [12] 5479 	mov	a,_bp
      00469D 24 0F            [12] 5480 	add	a,#0x0f
      00469F F8               [12] 5481 	mov	r0,a
      0046A0 E6               [12] 5482 	mov	a,@r0
      0046A1 C0 E0            [24] 5483 	push	acc
      0046A3 08               [12] 5484 	inc	r0
      0046A4 E6               [12] 5485 	mov	a,@r0
      0046A5 C0 E0            [24] 5486 	push	acc
      0046A7 08               [12] 5487 	inc	r0
      0046A8 E6               [12] 5488 	mov	a,@r0
      0046A9 C0 E0            [24] 5489 	push	acc
      0046AB 08               [12] 5490 	inc	r0
      0046AC E6               [12] 5491 	mov	a,@r0
      0046AD C0 E0            [24] 5492 	push	acc
      0046AF 8D 82            [24] 5493 	mov	dpl,r5
      0046B1 8E 83            [24] 5494 	mov	dph,r6
      0046B3 8F F0            [24] 5495 	mov	b,r7
      0046B5 12 26 B5         [24] 5496 	lcall	_stack_push
      0046B8 E5 81            [12] 5497 	mov	a,sp
      0046BA 24 FC            [12] 5498 	add	a,#0xfc
      0046BC F5 81            [12] 5499 	mov	sp,a
                                   5500 ;	calc.c:309: break;
                                   5501 ;	calc.c:310: default:
      0046BE 80 05            [24] 5502 	sjmp	00217$
      0046C0                       5503 00216$:
                                   5504 ;	calc.c:311: return UNDEF;
      0046C0 90 80 00         [24] 5505 	mov	dptr,#0x8000
                                   5506 ;	calc.c:312: }
      0046C3 80 03            [24] 5507 	sjmp	00416$
      0046C5                       5508 00217$:
                                   5509 ;	calc.c:314: return 1;
      0046C5 90 00 01         [24] 5510 	mov	dptr,#0x0001
      0046C8                       5511 00416$:
                                   5512 ;	calc.c:315: }
      0046C8 85 08 81         [24] 5513 	mov	sp,_bp
      0046CB D0 08            [24] 5514 	pop	_bp
      0046CD 22               [24] 5515 	ret
                                   5516 ;------------------------------------------------------------
                                   5517 ;Allocation info for local variables in function 'push_acc'
                                   5518 ;------------------------------------------------------------
                                   5519 ;delta                     Allocated to stack - _bp -5
                                   5520 ;_ctx                      Allocated to stack - _bp +1
                                   5521 ;ctx                       Allocated to registers r2 r3 r4 
                                   5522 ;__1310720097              Allocated to registers 
                                   5523 ;s                         Allocated to registers r5 r6 r7 
                                   5524 ;sloc0                     Allocated to stack - _bp +4
                                   5525 ;------------------------------------------------------------
                                   5526 ;	calc.c:317: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   5527 ;	-----------------------------------------
                                   5528 ;	 function push_acc
                                   5529 ;	-----------------------------------------
      0046CE                       5530 _push_acc:
      0046CE C0 08            [24] 5531 	push	_bp
      0046D0 85 81 08         [24] 5532 	mov	_bp,sp
      0046D3 C0 82            [24] 5533 	push	dpl
      0046D5 C0 83            [24] 5534 	push	dph
      0046D7 C0 F0            [24] 5535 	push	b
      0046D9 E5 81            [12] 5536 	mov	a,sp
      0046DB 24 04            [12] 5537 	add	a,#0x04
      0046DD F5 81            [12] 5538 	mov	sp,a
                                   5539 ;	calc.c:318: struct ctx *ctx = (struct ctx *)_ctx;
      0046DF A8 08            [24] 5540 	mov	r0,_bp
      0046E1 08               [12] 5541 	inc	r0
      0046E2 86 02            [24] 5542 	mov	ar2,@r0
      0046E4 08               [12] 5543 	inc	r0
      0046E5 86 03            [24] 5544 	mov	ar3,@r0
      0046E7 08               [12] 5545 	inc	r0
      0046E8 86 04            [24] 5546 	mov	ar4,@r0
                                   5547 ;	calc.c:322: ctx->acc_valid = 0;
      0046EA 74 06            [12] 5548 	mov	a,#0x06
      0046EC 2A               [12] 5549 	add	a,r2
      0046ED FD               [12] 5550 	mov	r5,a
      0046EE E4               [12] 5551 	clr	a
      0046EF 3B               [12] 5552 	addc	a,r3
      0046F0 FE               [12] 5553 	mov	r6,a
      0046F1 8C 07            [24] 5554 	mov	ar7,r4
      0046F3 8D 82            [24] 5555 	mov	dpl,r5
      0046F5 8E 83            [24] 5556 	mov	dph,r6
      0046F7 8F F0            [24] 5557 	mov	b,r7
      0046F9 E4               [12] 5558 	clr	a
      0046FA 12 53 69         [24] 5559 	lcall	__gptrput
                                   5560 ;	calc.c:323: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
      0046FD 74 02            [12] 5561 	mov	a,#0x02
      0046FF 2A               [12] 5562 	add	a,r2
      004700 FF               [12] 5563 	mov	r7,a
      004701 E4               [12] 5564 	clr	a
      004702 3B               [12] 5565 	addc	a,r3
      004703 FD               [12] 5566 	mov	r5,a
      004704 8C 06            [24] 5567 	mov	ar6,r4
      004706 8F 82            [24] 5568 	mov	dpl,r7
      004708 8D 83            [24] 5569 	mov	dph,r5
      00470A 8E F0            [24] 5570 	mov	b,r6
      00470C E5 08            [12] 5571 	mov	a,_bp
      00470E 24 04            [12] 5572 	add	a,#0x04
      004710 F8               [12] 5573 	mov	r0,a
      004711 12 57 E4         [24] 5574 	lcall	__gptrget
      004714 F6               [12] 5575 	mov	@r0,a
      004715 A3               [24] 5576 	inc	dptr
      004716 12 57 E4         [24] 5577 	lcall	__gptrget
      004719 08               [12] 5578 	inc	r0
      00471A F6               [12] 5579 	mov	@r0,a
      00471B A3               [24] 5580 	inc	dptr
      00471C 12 57 E4         [24] 5581 	lcall	__gptrget
      00471F 08               [12] 5582 	inc	r0
      004720 F6               [12] 5583 	mov	@r0,a
      004721 A3               [24] 5584 	inc	dptr
      004722 12 57 E4         [24] 5585 	lcall	__gptrget
      004725 08               [12] 5586 	inc	r0
      004726 F6               [12] 5587 	mov	@r0,a
      004727 74 09            [12] 5588 	mov	a,#0x09
      004729 2A               [12] 5589 	add	a,r2
      00472A FA               [12] 5590 	mov	r2,a
      00472B E4               [12] 5591 	clr	a
      00472C 3B               [12] 5592 	addc	a,r3
      00472D FB               [12] 5593 	mov	r3,a
      00472E 8C 07            [24] 5594 	mov	ar7,r4
      004730 E5 08            [12] 5595 	mov	a,_bp
      004732 24 04            [12] 5596 	add	a,#0x04
      004734 F8               [12] 5597 	mov	r0,a
      004735 E6               [12] 5598 	mov	a,@r0
      004736 C0 E0            [24] 5599 	push	acc
      004738 08               [12] 5600 	inc	r0
      004739 E6               [12] 5601 	mov	a,@r0
      00473A C0 E0            [24] 5602 	push	acc
      00473C 08               [12] 5603 	inc	r0
      00473D E6               [12] 5604 	mov	a,@r0
      00473E C0 E0            [24] 5605 	push	acc
      004740 08               [12] 5606 	inc	r0
      004741 E6               [12] 5607 	mov	a,@r0
      004742 C0 E0            [24] 5608 	push	acc
      004744 8A 82            [24] 5609 	mov	dpl,r2
      004746 8B 83            [24] 5610 	mov	dph,r3
      004748 8F F0            [24] 5611 	mov	b,r7
      00474A 12 26 B5         [24] 5612 	lcall	_stack_push
      00474D AE 82            [24] 5613 	mov	r6,dpl
      00474F AF 83            [24] 5614 	mov	r7,dph
      004751 E5 81            [12] 5615 	mov	a,sp
      004753 24 FC            [12] 5616 	add	a,#0xfc
      004755 F5 81            [12] 5617 	mov	sp,a
      004757 EE               [12] 5618 	mov	a,r6
      004758 4F               [12] 5619 	orl	a,r7
      004759 70 22            [24] 5620 	jnz	00102$
      00475B 7D C6            [12] 5621 	mov	r5,#___str_10
      00475D 7E 70            [12] 5622 	mov	r6,#(___str_10 >> 8)
      00475F 7F 80            [12] 5623 	mov	r7,#0x80
                                   5624 ;	calc.c:50: return;
      004761                       5625 00109$:
                                   5626 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004761 8D 82            [24] 5627 	mov	dpl,r5
      004763 8E 83            [24] 5628 	mov	dph,r6
      004765 8F F0            [24] 5629 	mov	b,r7
      004767 12 57 E4         [24] 5630 	lcall	__gptrget
      00476A FC               [12] 5631 	mov	r4,a
      00476B 60 10            [24] 5632 	jz	00102$
      00476D 7B 00            [12] 5633 	mov	r3,#0x00
      00476F 8C 82            [24] 5634 	mov	dpl,r4
      004771 8B 83            [24] 5635 	mov	dph,r3
      004773 12 29 C0         [24] 5636 	lcall	_putchar
      004776 0D               [12] 5637 	inc	r5
                                   5638 ;	calc.c:323: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
      004777 BD 00 E7         [24] 5639 	cjne	r5,#0x00,00109$
      00477A 0E               [12] 5640 	inc	r6
      00477B 80 E4            [24] 5641 	sjmp	00109$
      00477D                       5642 00102$:
                                   5643 ;	calc.c:325: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      00477D E5 08            [12] 5644 	mov	a,_bp
      00477F 24 FB            [12] 5645 	add	a,#0xfb
      004781 F8               [12] 5646 	mov	r0,a
      004782 86 05            [24] 5647 	mov	ar5,@r0
      004784 08               [12] 5648 	inc	r0
      004785 86 06            [24] 5649 	mov	ar6,@r0
      004787 08               [12] 5650 	inc	r0
      004788 86 07            [24] 5651 	mov	ar7,@r0
      00478A 74 02            [12] 5652 	mov	a,#0x02
      00478C 2D               [12] 5653 	add	a,r5
      00478D FA               [12] 5654 	mov	r2,a
      00478E E4               [12] 5655 	clr	a
      00478F 3E               [12] 5656 	addc	a,r6
      004790 FB               [12] 5657 	mov	r3,a
      004791 8F 04            [24] 5658 	mov	ar4,r7
      004793 8A 82            [24] 5659 	mov	dpl,r2
      004795 8B 83            [24] 5660 	mov	dph,r3
      004797 8C F0            [24] 5661 	mov	b,r4
      004799 12 57 E4         [24] 5662 	lcall	__gptrget
      00479C FA               [12] 5663 	mov	r2,a
      00479D A3               [24] 5664 	inc	dptr
      00479E 12 57 E4         [24] 5665 	lcall	__gptrget
      0047A1 FB               [12] 5666 	mov	r3,a
      0047A2 BA 02 27         [24] 5667 	cjne	r2,#0x02,00104$
      0047A5 BB 00 24         [24] 5668 	cjne	r3,#0x00,00104$
      0047A8 C0 05            [24] 5669 	push	ar5
      0047AA C0 06            [24] 5670 	push	ar6
      0047AC C0 07            [24] 5671 	push	ar7
      0047AE A8 08            [24] 5672 	mov	r0,_bp
      0047B0 08               [12] 5673 	inc	r0
      0047B1 86 82            [24] 5674 	mov	dpl,@r0
      0047B3 08               [12] 5675 	inc	r0
      0047B4 86 83            [24] 5676 	mov	dph,@r0
      0047B6 08               [12] 5677 	inc	r0
      0047B7 86 F0            [24] 5678 	mov	b,@r0
      0047B9 12 2F 3B         [24] 5679 	lcall	_operator
      0047BC AE 82            [24] 5680 	mov	r6,dpl
      0047BE AF 83            [24] 5681 	mov	r7,dph
      0047C0 15 81            [12] 5682 	dec	sp
      0047C2 15 81            [12] 5683 	dec	sp
      0047C4 15 81            [12] 5684 	dec	sp
      0047C6 8E 82            [24] 5685 	mov	dpl,r6
      0047C8 8F 83            [24] 5686 	mov	dph,r7
      0047CA 80 03            [24] 5687 	sjmp	00111$
      0047CC                       5688 00104$:
                                   5689 ;	calc.c:326: else return 1;
      0047CC 90 00 01         [24] 5690 	mov	dptr,#0x0001
      0047CF                       5691 00111$:
                                   5692 ;	calc.c:327: }
      0047CF 85 08 81         [24] 5693 	mov	sp,_bp
      0047D2 D0 08            [24] 5694 	pop	_bp
      0047D4 22               [24] 5695 	ret
                                   5696 ;------------------------------------------------------------
                                   5697 ;Allocation info for local variables in function 'reset_acc'
                                   5698 ;------------------------------------------------------------
                                   5699 ;delta                     Allocated to stack - _bp -5
                                   5700 ;_ctx                      Allocated to registers r5 r6 r7 
                                   5701 ;ctx                       Allocated to registers r5 r6 r7 
                                   5702 ;------------------------------------------------------------
                                   5703 ;	calc.c:329: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   5704 ;	-----------------------------------------
                                   5705 ;	 function reset_acc
                                   5706 ;	-----------------------------------------
      0047D5                       5707 _reset_acc:
      0047D5 C0 08            [24] 5708 	push	_bp
      0047D7 85 81 08         [24] 5709 	mov	_bp,sp
      0047DA AD 82            [24] 5710 	mov	r5,dpl
      0047DC AE 83            [24] 5711 	mov	r6,dph
      0047DE AF F0            [24] 5712 	mov	r7,b
                                   5713 ;	calc.c:330: struct ctx *ctx = (struct ctx *)_ctx;
                                   5714 ;	calc.c:332: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      0047E0 E5 08            [12] 5715 	mov	a,_bp
      0047E2 24 FB            [12] 5716 	add	a,#0xfb
      0047E4 F8               [12] 5717 	mov	r0,a
      0047E5 86 02            [24] 5718 	mov	ar2,@r0
      0047E7 08               [12] 5719 	inc	r0
      0047E8 86 03            [24] 5720 	mov	ar3,@r0
      0047EA 08               [12] 5721 	inc	r0
      0047EB 86 04            [24] 5722 	mov	ar4,@r0
      0047ED 74 02            [12] 5723 	mov	a,#0x02
      0047EF 2A               [12] 5724 	add	a,r2
      0047F0 FA               [12] 5725 	mov	r2,a
      0047F1 E4               [12] 5726 	clr	a
      0047F2 3B               [12] 5727 	addc	a,r3
      0047F3 FB               [12] 5728 	mov	r3,a
      0047F4 8A 82            [24] 5729 	mov	dpl,r2
      0047F6 8B 83            [24] 5730 	mov	dph,r3
      0047F8 8C F0            [24] 5731 	mov	b,r4
      0047FA 12 57 E4         [24] 5732 	lcall	__gptrget
      0047FD FA               [12] 5733 	mov	r2,a
      0047FE A3               [24] 5734 	inc	dptr
      0047FF 12 57 E4         [24] 5735 	lcall	__gptrget
      004802 FB               [12] 5736 	mov	r3,a
      004803 BA 06 16         [24] 5737 	cjne	r2,#0x06,00102$
      004806 BB 00 13         [24] 5738 	cjne	r3,#0x00,00102$
      004809 74 06            [12] 5739 	mov	a,#0x06
      00480B 2D               [12] 5740 	add	a,r5
      00480C FA               [12] 5741 	mov	r2,a
      00480D E4               [12] 5742 	clr	a
      00480E 3E               [12] 5743 	addc	a,r6
      00480F FB               [12] 5744 	mov	r3,a
      004810 8F 04            [24] 5745 	mov	ar4,r7
      004812 8A 82            [24] 5746 	mov	dpl,r2
      004814 8B 83            [24] 5747 	mov	dph,r3
      004816 8C F0            [24] 5748 	mov	b,r4
      004818 E4               [12] 5749 	clr	a
      004819 12 53 69         [24] 5750 	lcall	__gptrput
      00481C                       5751 00102$:
                                   5752 ;	calc.c:333: ctx->acc = 0l;
      00481C 74 02            [12] 5753 	mov	a,#0x02
      00481E 2D               [12] 5754 	add	a,r5
      00481F FD               [12] 5755 	mov	r5,a
      004820 E4               [12] 5756 	clr	a
      004821 3E               [12] 5757 	addc	a,r6
      004822 FE               [12] 5758 	mov	r6,a
      004823 8D 82            [24] 5759 	mov	dpl,r5
      004825 8E 83            [24] 5760 	mov	dph,r6
      004827 8F F0            [24] 5761 	mov	b,r7
      004829 E4               [12] 5762 	clr	a
      00482A 12 53 69         [24] 5763 	lcall	__gptrput
      00482D A3               [24] 5764 	inc	dptr
      00482E 12 53 69         [24] 5765 	lcall	__gptrput
      004831 A3               [24] 5766 	inc	dptr
      004832 12 53 69         [24] 5767 	lcall	__gptrput
      004835 A3               [24] 5768 	inc	dptr
      004836 12 53 69         [24] 5769 	lcall	__gptrput
                                   5770 ;	calc.c:335: return 1;
      004839 90 00 01         [24] 5771 	mov	dptr,#0x0001
                                   5772 ;	calc.c:336: }
      00483C D0 08            [24] 5773 	pop	_bp
      00483E 22               [24] 5774 	ret
                                   5775 ;------------------------------------------------------------
                                   5776 ;Allocation info for local variables in function 'reset_base'
                                   5777 ;------------------------------------------------------------
                                   5778 ;delta                     Allocated to stack - _bp -5
                                   5779 ;_ctx                      Allocated to registers r5 r6 r7 
                                   5780 ;ctx                       Allocated to registers r5 r6 r7 
                                   5781 ;------------------------------------------------------------
                                   5782 ;	calc.c:338: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   5783 ;	-----------------------------------------
                                   5784 ;	 function reset_base
                                   5785 ;	-----------------------------------------
      00483F                       5786 _reset_base:
      00483F C0 08            [24] 5787 	push	_bp
      004841 85 81 08         [24] 5788 	mov	_bp,sp
      004844 AD 82            [24] 5789 	mov	r5,dpl
      004846 AE 83            [24] 5790 	mov	r6,dph
      004848 AF F0            [24] 5791 	mov	r7,b
                                   5792 ;	calc.c:339: struct ctx *ctx = (struct ctx *)_ctx;
                                   5793 ;	calc.c:343: switch (ctx->digit[0]) {
      00484A 74 07            [12] 5794 	mov	a,#0x07
      00484C 2D               [12] 5795 	add	a,r5
      00484D FA               [12] 5796 	mov	r2,a
      00484E E4               [12] 5797 	clr	a
      00484F 3E               [12] 5798 	addc	a,r6
      004850 FB               [12] 5799 	mov	r3,a
      004851 8F 04            [24] 5800 	mov	ar4,r7
      004853 8A 82            [24] 5801 	mov	dpl,r2
      004855 8B 83            [24] 5802 	mov	dph,r3
      004857 8C F0            [24] 5803 	mov	b,r4
      004859 12 57 E4         [24] 5804 	lcall	__gptrget
      00485C FC               [12] 5805 	mov	r4,a
      00485D BC 48 02         [24] 5806 	cjne	r4,#0x48,00124$
      004860 80 0F            [24] 5807 	sjmp	00101$
      004862                       5808 00124$:
      004862 BC 4F 02         [24] 5809 	cjne	r4,#0x4f,00125$
      004865 80 2E            [24] 5810 	sjmp	00103$
      004867                       5811 00125$:
      004867 BC 68 02         [24] 5812 	cjne	r4,#0x68,00126$
      00486A 80 17            [24] 5813 	sjmp	00102$
      00486C                       5814 00126$:
                                   5815 ;	calc.c:344: case 'H':
      00486C BC 6F 48         [24] 5816 	cjne	r4,#0x6f,00105$
      00486F 80 36            [24] 5817 	sjmp	00104$
      004871                       5818 00101$:
                                   5819 ;	calc.c:345: ctx->base = 16;
      004871 8D 82            [24] 5820 	mov	dpl,r5
      004873 8E 83            [24] 5821 	mov	dph,r6
      004875 8F F0            [24] 5822 	mov	b,r7
      004877 74 10            [12] 5823 	mov	a,#0x10
      004879 12 53 69         [24] 5824 	lcall	__gptrput
      00487C A3               [24] 5825 	inc	dptr
      00487D E4               [12] 5826 	clr	a
      00487E 12 53 69         [24] 5827 	lcall	__gptrput
                                   5828 ;	calc.c:346: break;
                                   5829 ;	calc.c:347: case 'h':
      004881 80 34            [24] 5830 	sjmp	00105$
      004883                       5831 00102$:
                                   5832 ;	calc.c:348: ctx->base = 10;
      004883 8D 82            [24] 5833 	mov	dpl,r5
      004885 8E 83            [24] 5834 	mov	dph,r6
      004887 8F F0            [24] 5835 	mov	b,r7
      004889 74 0A            [12] 5836 	mov	a,#0x0a
      00488B 12 53 69         [24] 5837 	lcall	__gptrput
      00488E A3               [24] 5838 	inc	dptr
      00488F E4               [12] 5839 	clr	a
      004890 12 53 69         [24] 5840 	lcall	__gptrput
                                   5841 ;	calc.c:349: break;
                                   5842 ;	calc.c:350: case 'O':
      004893 80 22            [24] 5843 	sjmp	00105$
      004895                       5844 00103$:
                                   5845 ;	calc.c:351: ctx->base = 8;
      004895 8D 82            [24] 5846 	mov	dpl,r5
      004897 8E 83            [24] 5847 	mov	dph,r6
      004899 8F F0            [24] 5848 	mov	b,r7
      00489B 74 08            [12] 5849 	mov	a,#0x08
      00489D 12 53 69         [24] 5850 	lcall	__gptrput
      0048A0 A3               [24] 5851 	inc	dptr
      0048A1 E4               [12] 5852 	clr	a
      0048A2 12 53 69         [24] 5853 	lcall	__gptrput
                                   5854 ;	calc.c:352: break;
                                   5855 ;	calc.c:353: case 'o':
      0048A5 80 10            [24] 5856 	sjmp	00105$
      0048A7                       5857 00104$:
                                   5858 ;	calc.c:354: ctx->base = 2;
      0048A7 8D 82            [24] 5859 	mov	dpl,r5
      0048A9 8E 83            [24] 5860 	mov	dph,r6
      0048AB 8F F0            [24] 5861 	mov	b,r7
      0048AD 74 02            [12] 5862 	mov	a,#0x02
      0048AF 12 53 69         [24] 5863 	lcall	__gptrput
      0048B2 A3               [24] 5864 	inc	dptr
      0048B3 E4               [12] 5865 	clr	a
      0048B4 12 53 69         [24] 5866 	lcall	__gptrput
                                   5867 ;	calc.c:356: }
      0048B7                       5868 00105$:
                                   5869 ;	calc.c:358: return 1;
      0048B7 90 00 01         [24] 5870 	mov	dptr,#0x0001
                                   5871 ;	calc.c:359: }
      0048BA D0 08            [24] 5872 	pop	_bp
      0048BC 22               [24] 5873 	ret
                                   5874 ;------------------------------------------------------------
                                   5875 ;Allocation info for local variables in function 'help'
                                   5876 ;------------------------------------------------------------
                                   5877 ;delta                     Allocated to stack - _bp -5
                                   5878 ;_ctx                      Allocated to registers r5 r6 r7 
                                   5879 ;ctx                       Allocated to stack - _bp +4
                                   5880 ;__1310720099              Allocated to registers 
                                   5881 ;d                         Allocated to stack - _bp +7
                                   5882 ;mask                      Allocated to stack - _bp +11
                                   5883 ;__1310720101              Allocated to registers 
                                   5884 ;s                         Allocated to registers r5 r6 r7 
                                   5885 ;__1310720103              Allocated to registers 
                                   5886 ;s                         Allocated to registers r5 r6 r7 
                                   5887 ;__1310720105              Allocated to registers 
                                   5888 ;s                         Allocated to registers r5 r6 r7 
                                   5889 ;__1310720107              Allocated to registers 
                                   5890 ;s                         Allocated to registers r5 r6 r7 
                                   5891 ;__1310720109              Allocated to registers 
                                   5892 ;s                         Allocated to registers r5 r6 r7 
                                   5893 ;__1310720111              Allocated to registers 
                                   5894 ;s                         Allocated to registers r5 r6 r7 
                                   5895 ;__1310720113              Allocated to registers 
                                   5896 ;s                         Allocated to registers r5 r6 r7 
                                   5897 ;__1310720115              Allocated to registers 
                                   5898 ;s                         Allocated to registers r5 r6 r7 
                                   5899 ;__1310720117              Allocated to registers 
                                   5900 ;s                         Allocated to registers r5 r6 r7 
                                   5901 ;__1310720119              Allocated to registers 
                                   5902 ;s                         Allocated to registers r5 r6 r7 
                                   5903 ;__1310720121              Allocated to registers 
                                   5904 ;s                         Allocated to registers r5 r6 r7 
                                   5905 ;__1310720123              Allocated to registers 
                                   5906 ;s                         Allocated to registers r5 r6 r7 
                                   5907 ;__1310720125              Allocated to registers 
                                   5908 ;s                         Allocated to registers r5 r6 r7 
                                   5909 ;__1310720127              Allocated to registers 
                                   5910 ;s                         Allocated to registers r5 r6 r7 
                                   5911 ;__1310720129              Allocated to registers 
                                   5912 ;s                         Allocated to registers r5 r6 r7 
                                   5913 ;__1310720131              Allocated to registers 
                                   5914 ;s                         Allocated to registers r5 r6 r7 
                                   5915 ;__1310720133              Allocated to registers 
                                   5916 ;s                         Allocated to registers r5 r6 r7 
                                   5917 ;__1310720135              Allocated to registers 
                                   5918 ;s                         Allocated to registers r5 r6 r7 
                                   5919 ;__1310720137              Allocated to registers 
                                   5920 ;s                         Allocated to registers r5 r6 r7 
                                   5921 ;__1310720139              Allocated to registers 
                                   5922 ;s                         Allocated to registers r5 r6 r7 
                                   5923 ;__1310720141              Allocated to registers 
                                   5924 ;s                         Allocated to registers r5 r6 r7 
                                   5925 ;__1310720143              Allocated to registers 
                                   5926 ;s                         Allocated to registers r5 r6 r7 
                                   5927 ;__1310720145              Allocated to registers 
                                   5928 ;s                         Allocated to registers r5 r6 r7 
                                   5929 ;__1310720147              Allocated to registers 
                                   5930 ;s                         Allocated to registers r5 r6 r7 
                                   5931 ;sloc0                     Allocated to stack - _bp +1
                                   5932 ;------------------------------------------------------------
                                   5933 ;	calc.c:361: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   5934 ;	-----------------------------------------
                                   5935 ;	 function help
                                   5936 ;	-----------------------------------------
      0048BD                       5937 _help:
      0048BD C0 08            [24] 5938 	push	_bp
      0048BF E5 81            [12] 5939 	mov	a,sp
      0048C1 F5 08            [12] 5940 	mov	_bp,a
      0048C3 24 0E            [12] 5941 	add	a,#0x0e
      0048C5 F5 81            [12] 5942 	mov	sp,a
      0048C7 AD 82            [24] 5943 	mov	r5,dpl
      0048C9 AE 83            [24] 5944 	mov	r6,dph
      0048CB AF F0            [24] 5945 	mov	r7,b
                                   5946 ;	calc.c:362: struct ctx *ctx = (struct ctx *)_ctx;
      0048CD E5 08            [12] 5947 	mov	a,_bp
      0048CF 24 04            [12] 5948 	add	a,#0x04
      0048D1 F8               [12] 5949 	mov	r0,a
      0048D2 A6 05            [24] 5950 	mov	@r0,ar5
      0048D4 08               [12] 5951 	inc	r0
      0048D5 A6 06            [24] 5952 	mov	@r0,ar6
      0048D7 08               [12] 5953 	inc	r0
      0048D8 A6 07            [24] 5954 	mov	@r0,ar7
                                   5955 ;	calc.c:365: printf("\r\nbase = %d, ", ctx->base);
      0048DA E5 08            [12] 5956 	mov	a,_bp
      0048DC 24 04            [12] 5957 	add	a,#0x04
      0048DE F8               [12] 5958 	mov	r0,a
      0048DF 86 82            [24] 5959 	mov	dpl,@r0
      0048E1 08               [12] 5960 	inc	r0
      0048E2 86 83            [24] 5961 	mov	dph,@r0
      0048E4 08               [12] 5962 	inc	r0
      0048E5 86 F0            [24] 5963 	mov	b,@r0
      0048E7 12 57 E4         [24] 5964 	lcall	__gptrget
      0048EA FB               [12] 5965 	mov	r3,a
      0048EB A3               [24] 5966 	inc	dptr
      0048EC 12 57 E4         [24] 5967 	lcall	__gptrget
      0048EF FC               [12] 5968 	mov	r4,a
      0048F0 C0 03            [24] 5969 	push	ar3
      0048F2 C0 04            [24] 5970 	push	ar4
      0048F4 74 D9            [12] 5971 	mov	a,#___str_11
      0048F6 C0 E0            [24] 5972 	push	acc
      0048F8 74 70            [12] 5973 	mov	a,#(___str_11 >> 8)
      0048FA C0 E0            [24] 5974 	push	acc
      0048FC 74 80            [12] 5975 	mov	a,#0x80
      0048FE C0 E0            [24] 5976 	push	acc
      004900 12 57 AB         [24] 5977 	lcall	_printf
      004903 E5 81            [12] 5978 	mov	a,sp
      004905 24 FB            [12] 5979 	add	a,#0xfb
      004907 F5 81            [12] 5980 	mov	sp,a
                                   5981 ;	calc.c:366: printf("acc = %ld / ", ctx->acc);
      004909 E5 08            [12] 5982 	mov	a,_bp
      00490B 24 04            [12] 5983 	add	a,#0x04
      00490D F8               [12] 5984 	mov	r0,a
      00490E A9 08            [24] 5985 	mov	r1,_bp
      004910 09               [12] 5986 	inc	r1
      004911 74 02            [12] 5987 	mov	a,#0x02
      004913 26               [12] 5988 	add	a,@r0
      004914 F7               [12] 5989 	mov	@r1,a
      004915 E4               [12] 5990 	clr	a
      004916 08               [12] 5991 	inc	r0
      004917 36               [12] 5992 	addc	a,@r0
      004918 09               [12] 5993 	inc	r1
      004919 F7               [12] 5994 	mov	@r1,a
      00491A 08               [12] 5995 	inc	r0
      00491B 09               [12] 5996 	inc	r1
      00491C E6               [12] 5997 	mov	a,@r0
      00491D F7               [12] 5998 	mov	@r1,a
      00491E A8 08            [24] 5999 	mov	r0,_bp
      004920 08               [12] 6000 	inc	r0
      004921 86 82            [24] 6001 	mov	dpl,@r0
      004923 08               [12] 6002 	inc	r0
      004924 86 83            [24] 6003 	mov	dph,@r0
      004926 08               [12] 6004 	inc	r0
      004927 86 F0            [24] 6005 	mov	b,@r0
      004929 12 57 E4         [24] 6006 	lcall	__gptrget
      00492C FC               [12] 6007 	mov	r4,a
      00492D A3               [24] 6008 	inc	dptr
      00492E 12 57 E4         [24] 6009 	lcall	__gptrget
      004931 FD               [12] 6010 	mov	r5,a
      004932 A3               [24] 6011 	inc	dptr
      004933 12 57 E4         [24] 6012 	lcall	__gptrget
      004936 FE               [12] 6013 	mov	r6,a
      004937 A3               [24] 6014 	inc	dptr
      004938 12 57 E4         [24] 6015 	lcall	__gptrget
      00493B FF               [12] 6016 	mov	r7,a
      00493C C0 04            [24] 6017 	push	ar4
      00493E C0 05            [24] 6018 	push	ar5
      004940 C0 06            [24] 6019 	push	ar6
      004942 C0 07            [24] 6020 	push	ar7
      004944 74 E7            [12] 6021 	mov	a,#___str_12
      004946 C0 E0            [24] 6022 	push	acc
      004948 74 70            [12] 6023 	mov	a,#(___str_12 >> 8)
      00494A C0 E0            [24] 6024 	push	acc
      00494C 74 80            [12] 6025 	mov	a,#0x80
      00494E C0 E0            [24] 6026 	push	acc
      004950 12 57 AB         [24] 6027 	lcall	_printf
      004953 E5 81            [12] 6028 	mov	a,sp
      004955 24 F9            [12] 6029 	add	a,#0xf9
      004957 F5 81            [12] 6030 	mov	sp,a
                                   6031 ;	calc.c:367: printf("%08lx / ", ctx->acc);
      004959 A8 08            [24] 6032 	mov	r0,_bp
      00495B 08               [12] 6033 	inc	r0
      00495C 86 82            [24] 6034 	mov	dpl,@r0
      00495E 08               [12] 6035 	inc	r0
      00495F 86 83            [24] 6036 	mov	dph,@r0
      004961 08               [12] 6037 	inc	r0
      004962 86 F0            [24] 6038 	mov	b,@r0
      004964 12 57 E4         [24] 6039 	lcall	__gptrget
      004967 FC               [12] 6040 	mov	r4,a
      004968 A3               [24] 6041 	inc	dptr
      004969 12 57 E4         [24] 6042 	lcall	__gptrget
      00496C FD               [12] 6043 	mov	r5,a
      00496D A3               [24] 6044 	inc	dptr
      00496E 12 57 E4         [24] 6045 	lcall	__gptrget
      004971 FE               [12] 6046 	mov	r6,a
      004972 A3               [24] 6047 	inc	dptr
      004973 12 57 E4         [24] 6048 	lcall	__gptrget
      004976 FF               [12] 6049 	mov	r7,a
      004977 C0 04            [24] 6050 	push	ar4
      004979 C0 05            [24] 6051 	push	ar5
      00497B C0 06            [24] 6052 	push	ar6
      00497D C0 07            [24] 6053 	push	ar7
      00497F 74 88            [12] 6054 	mov	a,#___str_4
      004981 C0 E0            [24] 6055 	push	acc
      004983 74 70            [12] 6056 	mov	a,#(___str_4 >> 8)
      004985 C0 E0            [24] 6057 	push	acc
      004987 74 80            [12] 6058 	mov	a,#0x80
      004989 C0 E0            [24] 6059 	push	acc
      00498B 12 57 AB         [24] 6060 	lcall	_printf
      00498E E5 81            [12] 6061 	mov	a,sp
      004990 24 F9            [12] 6062 	add	a,#0xf9
      004992 F5 81            [12] 6063 	mov	sp,a
                                   6064 ;	calc.c:368: printbin(ctx->acc);
      004994 A8 08            [24] 6065 	mov	r0,_bp
      004996 08               [12] 6066 	inc	r0
      004997 86 82            [24] 6067 	mov	dpl,@r0
      004999 08               [12] 6068 	inc	r0
      00499A 86 83            [24] 6069 	mov	dph,@r0
      00499C 08               [12] 6070 	inc	r0
      00499D 86 F0            [24] 6071 	mov	b,@r0
      00499F E5 08            [12] 6072 	mov	a,_bp
      0049A1 24 07            [12] 6073 	add	a,#0x07
      0049A3 F9               [12] 6074 	mov	r1,a
      0049A4 12 57 E4         [24] 6075 	lcall	__gptrget
      0049A7 F7               [12] 6076 	mov	@r1,a
      0049A8 A3               [24] 6077 	inc	dptr
      0049A9 12 57 E4         [24] 6078 	lcall	__gptrget
      0049AC 09               [12] 6079 	inc	r1
      0049AD F7               [12] 6080 	mov	@r1,a
      0049AE A3               [24] 6081 	inc	dptr
      0049AF 12 57 E4         [24] 6082 	lcall	__gptrget
      0049B2 09               [12] 6083 	inc	r1
      0049B3 F7               [12] 6084 	mov	@r1,a
      0049B4 A3               [24] 6085 	inc	dptr
      0049B5 12 57 E4         [24] 6086 	lcall	__gptrget
      0049B8 09               [12] 6087 	inc	r1
      0049B9 F7               [12] 6088 	mov	@r1,a
                                   6089 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      0049BA E5 08            [12] 6090 	mov	a,_bp
      0049BC 24 0B            [12] 6091 	add	a,#0x0b
      0049BE F8               [12] 6092 	mov	r0,a
      0049BF E4               [12] 6093 	clr	a
      0049C0 F6               [12] 6094 	mov	@r0,a
      0049C1 08               [12] 6095 	inc	r0
      0049C2 F6               [12] 6096 	mov	@r0,a
      0049C3 08               [12] 6097 	inc	r0
      0049C4 F6               [12] 6098 	mov	@r0,a
      0049C5 08               [12] 6099 	inc	r0
      0049C6 76 80            [12] 6100 	mov	@r0,#0x80
      0049C8                       6101 00151$:
                                   6102 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0049C8 E5 08            [12] 6103 	mov	a,_bp
      0049CA 24 07            [12] 6104 	add	a,#0x07
      0049CC F8               [12] 6105 	mov	r0,a
      0049CD 86 04            [24] 6106 	mov	ar4,@r0
      0049CF 08               [12] 6107 	inc	r0
      0049D0 86 05            [24] 6108 	mov	ar5,@r0
      0049D2 08               [12] 6109 	inc	r0
      0049D3 86 06            [24] 6110 	mov	ar6,@r0
      0049D5 08               [12] 6111 	inc	r0
      0049D6 86 07            [24] 6112 	mov	ar7,@r0
      0049D8 E5 08            [12] 6113 	mov	a,_bp
      0049DA 24 0B            [12] 6114 	add	a,#0x0b
      0049DC F8               [12] 6115 	mov	r0,a
      0049DD E6               [12] 6116 	mov	a,@r0
      0049DE 52 04            [12] 6117 	anl	ar4,a
      0049E0 08               [12] 6118 	inc	r0
      0049E1 E6               [12] 6119 	mov	a,@r0
      0049E2 52 05            [12] 6120 	anl	ar5,a
      0049E4 08               [12] 6121 	inc	r0
      0049E5 E6               [12] 6122 	mov	a,@r0
      0049E6 52 06            [12] 6123 	anl	ar6,a
      0049E8 08               [12] 6124 	inc	r0
      0049E9 E6               [12] 6125 	mov	a,@r0
      0049EA 52 07            [12] 6126 	anl	ar7,a
      0049EC EC               [12] 6127 	mov	a,r4
      0049ED 4D               [12] 6128 	orl	a,r5
      0049EE 4E               [12] 6129 	orl	a,r6
      0049EF 4F               [12] 6130 	orl	a,r7
      0049F0 60 06            [24] 6131 	jz	00227$
      0049F2 7E 31            [12] 6132 	mov	r6,#0x31
      0049F4 7F 00            [12] 6133 	mov	r7,#0x00
      0049F6 80 04            [24] 6134 	sjmp	00228$
      0049F8                       6135 00227$:
      0049F8 7E 30            [12] 6136 	mov	r6,#0x30
      0049FA 7F 00            [12] 6137 	mov	r7,#0x00
      0049FC                       6138 00228$:
      0049FC 8E 82            [24] 6139 	mov	dpl,r6
      0049FE 8F 83            [24] 6140 	mov	dph,r7
      004A00 12 29 C0         [24] 6141 	lcall	_putchar
                                   6142 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      004A03 E5 08            [12] 6143 	mov	a,_bp
      004A05 24 0B            [12] 6144 	add	a,#0x0b
      004A07 F8               [12] 6145 	mov	r0,a
      004A08 08               [12] 6146 	inc	r0
      004A09 08               [12] 6147 	inc	r0
      004A0A 08               [12] 6148 	inc	r0
      004A0B E6               [12] 6149 	mov	a,@r0
      004A0C C3               [12] 6150 	clr	c
      004A0D 13               [12] 6151 	rrc	a
      004A0E F6               [12] 6152 	mov	@r0,a
      004A0F 18               [12] 6153 	dec	r0
      004A10 E6               [12] 6154 	mov	a,@r0
      004A11 13               [12] 6155 	rrc	a
      004A12 F6               [12] 6156 	mov	@r0,a
      004A13 18               [12] 6157 	dec	r0
      004A14 E6               [12] 6158 	mov	a,@r0
      004A15 13               [12] 6159 	rrc	a
      004A16 F6               [12] 6160 	mov	@r0,a
      004A17 18               [12] 6161 	dec	r0
      004A18 E6               [12] 6162 	mov	a,@r0
      004A19 13               [12] 6163 	rrc	a
      004A1A F6               [12] 6164 	mov	@r0,a
      004A1B E5 08            [12] 6165 	mov	a,_bp
      004A1D 24 0B            [12] 6166 	add	a,#0x0b
      004A1F F8               [12] 6167 	mov	r0,a
      004A20 E6               [12] 6168 	mov	a,@r0
      004A21 08               [12] 6169 	inc	r0
      004A22 46               [12] 6170 	orl	a,@r0
      004A23 08               [12] 6171 	inc	r0
      004A24 46               [12] 6172 	orl	a,@r0
      004A25 08               [12] 6173 	inc	r0
      004A26 46               [12] 6174 	orl	a,@r0
      004A27 70 9F            [24] 6175 	jnz	00151$
                                   6176 ;	calc.c:369: printf(", acc_valid = %d\r\n\r\n", (int)ctx->acc_valid);
      004A29 E5 08            [12] 6177 	mov	a,_bp
      004A2B 24 04            [12] 6178 	add	a,#0x04
      004A2D F8               [12] 6179 	mov	r0,a
      004A2E 74 06            [12] 6180 	mov	a,#0x06
      004A30 26               [12] 6181 	add	a,@r0
      004A31 FD               [12] 6182 	mov	r5,a
      004A32 E4               [12] 6183 	clr	a
      004A33 08               [12] 6184 	inc	r0
      004A34 36               [12] 6185 	addc	a,@r0
      004A35 FE               [12] 6186 	mov	r6,a
      004A36 08               [12] 6187 	inc	r0
      004A37 86 07            [24] 6188 	mov	ar7,@r0
      004A39 8D 82            [24] 6189 	mov	dpl,r5
      004A3B 8E 83            [24] 6190 	mov	dph,r6
      004A3D 8F F0            [24] 6191 	mov	b,r7
      004A3F 12 57 E4         [24] 6192 	lcall	__gptrget
      004A42 FD               [12] 6193 	mov	r5,a
      004A43 7F 00            [12] 6194 	mov	r7,#0x00
      004A45 C0 05            [24] 6195 	push	ar5
      004A47 C0 07            [24] 6196 	push	ar7
      004A49 74 F4            [12] 6197 	mov	a,#___str_13
      004A4B C0 E0            [24] 6198 	push	acc
      004A4D 74 70            [12] 6199 	mov	a,#(___str_13 >> 8)
      004A4F C0 E0            [24] 6200 	push	acc
      004A51 74 80            [12] 6201 	mov	a,#0x80
      004A53 C0 E0            [24] 6202 	push	acc
      004A55 12 57 AB         [24] 6203 	lcall	_printf
      004A58 E5 81            [12] 6204 	mov	a,sp
      004A5A 24 FB            [12] 6205 	add	a,#0xfb
      004A5C F5 81            [12] 6206 	mov	sp,a
                                   6207 ;	calc.c:370: printstr("HhOo\tbase 16 10 8 2\r\n");
      004A5E 7D 09            [12] 6208 	mov	r5,#___str_14
      004A60 7E 71            [12] 6209 	mov	r6,#(___str_14 >> 8)
      004A62 7F 80            [12] 6210 	mov	r7,#0x80
                                   6211 ;	calc.c:50: return;
      004A64                       6212 00154$:
                                   6213 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004A64 8D 82            [24] 6214 	mov	dpl,r5
      004A66 8E 83            [24] 6215 	mov	dph,r6
      004A68 8F F0            [24] 6216 	mov	b,r7
      004A6A 12 57 E4         [24] 6217 	lcall	__gptrget
      004A6D FC               [12] 6218 	mov	r4,a
      004A6E 60 10            [24] 6219 	jz	00104$
      004A70 7B 00            [12] 6220 	mov	r3,#0x00
      004A72 8C 82            [24] 6221 	mov	dpl,r4
      004A74 8B 83            [24] 6222 	mov	dph,r3
      004A76 12 29 C0         [24] 6223 	lcall	_putchar
      004A79 0D               [12] 6224 	inc	r5
                                   6225 ;	calc.c:370: printstr("HhOo\tbase 16 10 8 2\r\n");
      004A7A BD 00 E7         [24] 6226 	cjne	r5,#0x00,00154$
      004A7D 0E               [12] 6227 	inc	r6
      004A7E 80 E4            [24] 6228 	sjmp	00154$
      004A80                       6229 00104$:
                                   6230 ;	calc.c:371: printstr("p\tpeek top\r\n");
      004A80 7D 1F            [12] 6231 	mov	r5,#___str_15
      004A82 7E 71            [12] 6232 	mov	r6,#(___str_15 >> 8)
      004A84 7F 80            [12] 6233 	mov	r7,#0x80
                                   6234 ;	calc.c:50: return;
      004A86                       6235 00157$:
                                   6236 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004A86 8D 82            [24] 6237 	mov	dpl,r5
      004A88 8E 83            [24] 6238 	mov	dph,r6
      004A8A 8F F0            [24] 6239 	mov	b,r7
      004A8C 12 57 E4         [24] 6240 	lcall	__gptrget
      004A8F FC               [12] 6241 	mov	r4,a
      004A90 60 10            [24] 6242 	jz	00106$
      004A92 7B 00            [12] 6243 	mov	r3,#0x00
      004A94 8C 82            [24] 6244 	mov	dpl,r4
      004A96 8B 83            [24] 6245 	mov	dph,r3
      004A98 12 29 C0         [24] 6246 	lcall	_putchar
      004A9B 0D               [12] 6247 	inc	r5
                                   6248 ;	calc.c:371: printstr("p\tpeek top\r\n");
      004A9C BD 00 E7         [24] 6249 	cjne	r5,#0x00,00157$
      004A9F 0E               [12] 6250 	inc	r6
      004AA0 80 E4            [24] 6251 	sjmp	00157$
      004AA2                       6252 00106$:
                                   6253 ;	calc.c:372: printstr("P\tprint stack\r\n");
      004AA2 7D 2C            [12] 6254 	mov	r5,#___str_16
      004AA4 7E 71            [12] 6255 	mov	r6,#(___str_16 >> 8)
      004AA6 7F 80            [12] 6256 	mov	r7,#0x80
                                   6257 ;	calc.c:50: return;
      004AA8                       6258 00160$:
                                   6259 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004AA8 8D 82            [24] 6260 	mov	dpl,r5
      004AAA 8E 83            [24] 6261 	mov	dph,r6
      004AAC 8F F0            [24] 6262 	mov	b,r7
      004AAE 12 57 E4         [24] 6263 	lcall	__gptrget
      004AB1 FC               [12] 6264 	mov	r4,a
      004AB2 60 10            [24] 6265 	jz	00108$
      004AB4 7B 00            [12] 6266 	mov	r3,#0x00
      004AB6 8C 82            [24] 6267 	mov	dpl,r4
      004AB8 8B 83            [24] 6268 	mov	dph,r3
      004ABA 12 29 C0         [24] 6269 	lcall	_putchar
      004ABD 0D               [12] 6270 	inc	r5
                                   6271 ;	calc.c:372: printstr("P\tprint stack\r\n");
      004ABE BD 00 E7         [24] 6272 	cjne	r5,#0x00,00160$
      004AC1 0E               [12] 6273 	inc	r6
      004AC2 80 E4            [24] 6274 	sjmp	00160$
      004AC4                       6275 00108$:
                                   6276 ;	calc.c:373: printstr("v.\tpop top\r\n");
      004AC4 7D 3C            [12] 6277 	mov	r5,#___str_17
      004AC6 7E 71            [12] 6278 	mov	r6,#(___str_17 >> 8)
      004AC8 7F 80            [12] 6279 	mov	r7,#0x80
                                   6280 ;	calc.c:50: return;
      004ACA                       6281 00163$:
                                   6282 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004ACA 8D 82            [24] 6283 	mov	dpl,r5
      004ACC 8E 83            [24] 6284 	mov	dph,r6
      004ACE 8F F0            [24] 6285 	mov	b,r7
      004AD0 12 57 E4         [24] 6286 	lcall	__gptrget
      004AD3 FC               [12] 6287 	mov	r4,a
      004AD4 60 10            [24] 6288 	jz	00110$
      004AD6 7B 00            [12] 6289 	mov	r3,#0x00
      004AD8 8C 82            [24] 6290 	mov	dpl,r4
      004ADA 8B 83            [24] 6291 	mov	dph,r3
      004ADC 12 29 C0         [24] 6292 	lcall	_putchar
      004ADF 0D               [12] 6293 	inc	r5
                                   6294 ;	calc.c:373: printstr("v.\tpop top\r\n");
      004AE0 BD 00 E7         [24] 6295 	cjne	r5,#0x00,00163$
      004AE3 0E               [12] 6296 	inc	r6
      004AE4 80 E4            [24] 6297 	sjmp	00163$
      004AE6                       6298 00110$:
                                   6299 ;	calc.c:374: printstr("V\tpop all\r\n");
      004AE6 7D 49            [12] 6300 	mov	r5,#___str_18
      004AE8 7E 71            [12] 6301 	mov	r6,#(___str_18 >> 8)
      004AEA 7F 80            [12] 6302 	mov	r7,#0x80
                                   6303 ;	calc.c:50: return;
      004AEC                       6304 00166$:
                                   6305 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004AEC 8D 82            [24] 6306 	mov	dpl,r5
      004AEE 8E 83            [24] 6307 	mov	dph,r6
      004AF0 8F F0            [24] 6308 	mov	b,r7
      004AF2 12 57 E4         [24] 6309 	lcall	__gptrget
      004AF5 FC               [12] 6310 	mov	r4,a
      004AF6 60 10            [24] 6311 	jz	00112$
      004AF8 7B 00            [12] 6312 	mov	r3,#0x00
      004AFA 8C 82            [24] 6313 	mov	dpl,r4
      004AFC 8B 83            [24] 6314 	mov	dph,r3
      004AFE 12 29 C0         [24] 6315 	lcall	_putchar
      004B01 0D               [12] 6316 	inc	r5
                                   6317 ;	calc.c:374: printstr("V\tpop all\r\n");
      004B02 BD 00 E7         [24] 6318 	cjne	r5,#0x00,00166$
      004B05 0E               [12] 6319 	inc	r6
      004B06 80 E4            [24] 6320 	sjmp	00166$
      004B08                       6321 00112$:
                                   6322 ;	calc.c:375: printstr("i\treset acc\r\n");
      004B08 7D 55            [12] 6323 	mov	r5,#___str_19
      004B0A 7E 71            [12] 6324 	mov	r6,#(___str_19 >> 8)
      004B0C 7F 80            [12] 6325 	mov	r7,#0x80
                                   6326 ;	calc.c:50: return;
      004B0E                       6327 00169$:
                                   6328 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004B0E 8D 82            [24] 6329 	mov	dpl,r5
      004B10 8E 83            [24] 6330 	mov	dph,r6
      004B12 8F F0            [24] 6331 	mov	b,r7
      004B14 12 57 E4         [24] 6332 	lcall	__gptrget
      004B17 FC               [12] 6333 	mov	r4,a
      004B18 60 10            [24] 6334 	jz	00114$
      004B1A 7B 00            [12] 6335 	mov	r3,#0x00
      004B1C 8C 82            [24] 6336 	mov	dpl,r4
      004B1E 8B 83            [24] 6337 	mov	dph,r3
      004B20 12 29 C0         [24] 6338 	lcall	_putchar
      004B23 0D               [12] 6339 	inc	r5
                                   6340 ;	calc.c:375: printstr("i\treset acc\r\n");
      004B24 BD 00 E7         [24] 6341 	cjne	r5,#0x00,00169$
      004B27 0E               [12] 6342 	inc	r6
      004B28 80 E4            [24] 6343 	sjmp	00169$
      004B2A                       6344 00114$:
                                   6345 ;	calc.c:376: printstr("I\treset and discard acc\r\n");
      004B2A 7D 63            [12] 6346 	mov	r5,#___str_20
      004B2C 7E 71            [12] 6347 	mov	r6,#(___str_20 >> 8)
      004B2E 7F 80            [12] 6348 	mov	r7,#0x80
                                   6349 ;	calc.c:50: return;
      004B30                       6350 00172$:
                                   6351 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004B30 8D 82            [24] 6352 	mov	dpl,r5
      004B32 8E 83            [24] 6353 	mov	dph,r6
      004B34 8F F0            [24] 6354 	mov	b,r7
      004B36 12 57 E4         [24] 6355 	lcall	__gptrget
      004B39 FC               [12] 6356 	mov	r4,a
      004B3A 60 10            [24] 6357 	jz	00116$
      004B3C 7B 00            [12] 6358 	mov	r3,#0x00
      004B3E 8C 82            [24] 6359 	mov	dpl,r4
      004B40 8B 83            [24] 6360 	mov	dph,r3
      004B42 12 29 C0         [24] 6361 	lcall	_putchar
      004B45 0D               [12] 6362 	inc	r5
                                   6363 ;	calc.c:376: printstr("I\treset and discard acc\r\n");
      004B46 BD 00 E7         [24] 6364 	cjne	r5,#0x00,00172$
      004B49 0E               [12] 6365 	inc	r6
      004B4A 80 E4            [24] 6366 	sjmp	00172$
      004B4C                       6367 00116$:
                                   6368 ;	calc.c:377: printstr("x\texchange top 2\r\n");
      004B4C 7D 7D            [12] 6369 	mov	r5,#___str_21
      004B4E 7E 71            [12] 6370 	mov	r6,#(___str_21 >> 8)
      004B50 7F 80            [12] 6371 	mov	r7,#0x80
                                   6372 ;	calc.c:50: return;
      004B52                       6373 00175$:
                                   6374 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004B52 8D 82            [24] 6375 	mov	dpl,r5
      004B54 8E 83            [24] 6376 	mov	dph,r6
      004B56 8F F0            [24] 6377 	mov	b,r7
      004B58 12 57 E4         [24] 6378 	lcall	__gptrget
      004B5B FC               [12] 6379 	mov	r4,a
      004B5C 60 10            [24] 6380 	jz	00118$
      004B5E 7B 00            [12] 6381 	mov	r3,#0x00
      004B60 8C 82            [24] 6382 	mov	dpl,r4
      004B62 8B 83            [24] 6383 	mov	dph,r3
      004B64 12 29 C0         [24] 6384 	lcall	_putchar
      004B67 0D               [12] 6385 	inc	r5
                                   6386 ;	calc.c:377: printstr("x\texchange top 2\r\n");
      004B68 BD 00 E7         [24] 6387 	cjne	r5,#0x00,00175$
      004B6B 0E               [12] 6388 	inc	r6
      004B6C 80 E4            [24] 6389 	sjmp	00175$
      004B6E                       6390 00118$:
                                   6391 ;	calc.c:378: printstr("+\tadd top 2\r\n");
      004B6E 7D 90            [12] 6392 	mov	r5,#___str_22
      004B70 7E 71            [12] 6393 	mov	r6,#(___str_22 >> 8)
      004B72 7F 80            [12] 6394 	mov	r7,#0x80
                                   6395 ;	calc.c:50: return;
      004B74                       6396 00178$:
                                   6397 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004B74 8D 82            [24] 6398 	mov	dpl,r5
      004B76 8E 83            [24] 6399 	mov	dph,r6
      004B78 8F F0            [24] 6400 	mov	b,r7
      004B7A 12 57 E4         [24] 6401 	lcall	__gptrget
      004B7D FC               [12] 6402 	mov	r4,a
      004B7E 60 10            [24] 6403 	jz	00120$
      004B80 7B 00            [12] 6404 	mov	r3,#0x00
      004B82 8C 82            [24] 6405 	mov	dpl,r4
      004B84 8B 83            [24] 6406 	mov	dph,r3
      004B86 12 29 C0         [24] 6407 	lcall	_putchar
      004B89 0D               [12] 6408 	inc	r5
                                   6409 ;	calc.c:378: printstr("+\tadd top 2\r\n");
      004B8A BD 00 E7         [24] 6410 	cjne	r5,#0x00,00178$
      004B8D 0E               [12] 6411 	inc	r6
      004B8E 80 E4            [24] 6412 	sjmp	00178$
      004B90                       6413 00120$:
                                   6414 ;	calc.c:379: printstr("-\tsubtract top 2\r\n");
      004B90 7D 9E            [12] 6415 	mov	r5,#___str_23
      004B92 7E 71            [12] 6416 	mov	r6,#(___str_23 >> 8)
      004B94 7F 80            [12] 6417 	mov	r7,#0x80
                                   6418 ;	calc.c:50: return;
      004B96                       6419 00181$:
                                   6420 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004B96 8D 82            [24] 6421 	mov	dpl,r5
      004B98 8E 83            [24] 6422 	mov	dph,r6
      004B9A 8F F0            [24] 6423 	mov	b,r7
      004B9C 12 57 E4         [24] 6424 	lcall	__gptrget
      004B9F FC               [12] 6425 	mov	r4,a
      004BA0 60 10            [24] 6426 	jz	00122$
      004BA2 7B 00            [12] 6427 	mov	r3,#0x00
      004BA4 8C 82            [24] 6428 	mov	dpl,r4
      004BA6 8B 83            [24] 6429 	mov	dph,r3
      004BA8 12 29 C0         [24] 6430 	lcall	_putchar
      004BAB 0D               [12] 6431 	inc	r5
                                   6432 ;	calc.c:379: printstr("-\tsubtract top 2\r\n");
      004BAC BD 00 E7         [24] 6433 	cjne	r5,#0x00,00181$
      004BAF 0E               [12] 6434 	inc	r6
      004BB0 80 E4            [24] 6435 	sjmp	00181$
      004BB2                       6436 00122$:
                                   6437 ;	calc.c:380: printstr("*\tmultiply top 2\r\n");
      004BB2 7D B1            [12] 6438 	mov	r5,#___str_24
      004BB4 7E 71            [12] 6439 	mov	r6,#(___str_24 >> 8)
      004BB6 7F 80            [12] 6440 	mov	r7,#0x80
                                   6441 ;	calc.c:50: return;
      004BB8                       6442 00184$:
                                   6443 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004BB8 8D 82            [24] 6444 	mov	dpl,r5
      004BBA 8E 83            [24] 6445 	mov	dph,r6
      004BBC 8F F0            [24] 6446 	mov	b,r7
      004BBE 12 57 E4         [24] 6447 	lcall	__gptrget
      004BC1 FC               [12] 6448 	mov	r4,a
      004BC2 60 10            [24] 6449 	jz	00124$
      004BC4 7B 00            [12] 6450 	mov	r3,#0x00
      004BC6 8C 82            [24] 6451 	mov	dpl,r4
      004BC8 8B 83            [24] 6452 	mov	dph,r3
      004BCA 12 29 C0         [24] 6453 	lcall	_putchar
      004BCD 0D               [12] 6454 	inc	r5
                                   6455 ;	calc.c:380: printstr("*\tmultiply top 2\r\n");
      004BCE BD 00 E7         [24] 6456 	cjne	r5,#0x00,00184$
      004BD1 0E               [12] 6457 	inc	r6
      004BD2 80 E4            [24] 6458 	sjmp	00184$
      004BD4                       6459 00124$:
                                   6460 ;	calc.c:381: printstr("/\tdivide top 2\r\n");
      004BD4 7D C4            [12] 6461 	mov	r5,#___str_25
      004BD6 7E 71            [12] 6462 	mov	r6,#(___str_25 >> 8)
      004BD8 7F 80            [12] 6463 	mov	r7,#0x80
                                   6464 ;	calc.c:50: return;
      004BDA                       6465 00187$:
                                   6466 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004BDA 8D 82            [24] 6467 	mov	dpl,r5
      004BDC 8E 83            [24] 6468 	mov	dph,r6
      004BDE 8F F0            [24] 6469 	mov	b,r7
      004BE0 12 57 E4         [24] 6470 	lcall	__gptrget
      004BE3 FC               [12] 6471 	mov	r4,a
      004BE4 60 10            [24] 6472 	jz	00126$
      004BE6 7B 00            [12] 6473 	mov	r3,#0x00
      004BE8 8C 82            [24] 6474 	mov	dpl,r4
      004BEA 8B 83            [24] 6475 	mov	dph,r3
      004BEC 12 29 C0         [24] 6476 	lcall	_putchar
      004BEF 0D               [12] 6477 	inc	r5
                                   6478 ;	calc.c:381: printstr("/\tdivide top 2\r\n");
      004BF0 BD 00 E7         [24] 6479 	cjne	r5,#0x00,00187$
      004BF3 0E               [12] 6480 	inc	r6
      004BF4 80 E4            [24] 6481 	sjmp	00187$
      004BF6                       6482 00126$:
                                   6483 ;	calc.c:382: printstr("\\\tdivide top 2 unsigned\r\n");	
      004BF6 7D D5            [12] 6484 	mov	r5,#___str_26
      004BF8 7E 71            [12] 6485 	mov	r6,#(___str_26 >> 8)
      004BFA 7F 80            [12] 6486 	mov	r7,#0x80
                                   6487 ;	calc.c:50: return;
      004BFC                       6488 00190$:
                                   6489 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004BFC 8D 82            [24] 6490 	mov	dpl,r5
      004BFE 8E 83            [24] 6491 	mov	dph,r6
      004C00 8F F0            [24] 6492 	mov	b,r7
      004C02 12 57 E4         [24] 6493 	lcall	__gptrget
      004C05 FC               [12] 6494 	mov	r4,a
      004C06 60 10            [24] 6495 	jz	00128$
      004C08 7B 00            [12] 6496 	mov	r3,#0x00
      004C0A 8C 82            [24] 6497 	mov	dpl,r4
      004C0C 8B 83            [24] 6498 	mov	dph,r3
      004C0E 12 29 C0         [24] 6499 	lcall	_putchar
      004C11 0D               [12] 6500 	inc	r5
                                   6501 ;	calc.c:382: printstr("\\\tdivide top 2 unsigned\r\n");	
      004C12 BD 00 E7         [24] 6502 	cjne	r5,#0x00,00190$
      004C15 0E               [12] 6503 	inc	r6
      004C16 80 E4            [24] 6504 	sjmp	00190$
      004C18                       6505 00128$:
                                   6506 ;	calc.c:383: printstr("%\tmodulus top 2\r\n");
      004C18 7D EF            [12] 6507 	mov	r5,#___str_27
      004C1A 7E 71            [12] 6508 	mov	r6,#(___str_27 >> 8)
      004C1C 7F 80            [12] 6509 	mov	r7,#0x80
                                   6510 ;	calc.c:50: return;
      004C1E                       6511 00193$:
                                   6512 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004C1E 8D 82            [24] 6513 	mov	dpl,r5
      004C20 8E 83            [24] 6514 	mov	dph,r6
      004C22 8F F0            [24] 6515 	mov	b,r7
      004C24 12 57 E4         [24] 6516 	lcall	__gptrget
      004C27 FC               [12] 6517 	mov	r4,a
      004C28 60 10            [24] 6518 	jz	00130$
      004C2A 7B 00            [12] 6519 	mov	r3,#0x00
      004C2C 8C 82            [24] 6520 	mov	dpl,r4
      004C2E 8B 83            [24] 6521 	mov	dph,r3
      004C30 12 29 C0         [24] 6522 	lcall	_putchar
      004C33 0D               [12] 6523 	inc	r5
                                   6524 ;	calc.c:383: printstr("%\tmodulus top 2\r\n");
      004C34 BD 00 E7         [24] 6525 	cjne	r5,#0x00,00193$
      004C37 0E               [12] 6526 	inc	r6
      004C38 80 E4            [24] 6527 	sjmp	00193$
      004C3A                       6528 00130$:
                                   6529 ;	calc.c:384: printstr("#\tmodulus top 2 unsigned\r\n");
      004C3A 7D 01            [12] 6530 	mov	r5,#___str_28
      004C3C 7E 72            [12] 6531 	mov	r6,#(___str_28 >> 8)
      004C3E 7F 80            [12] 6532 	mov	r7,#0x80
                                   6533 ;	calc.c:50: return;
      004C40                       6534 00196$:
                                   6535 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004C40 8D 82            [24] 6536 	mov	dpl,r5
      004C42 8E 83            [24] 6537 	mov	dph,r6
      004C44 8F F0            [24] 6538 	mov	b,r7
      004C46 12 57 E4         [24] 6539 	lcall	__gptrget
      004C49 FC               [12] 6540 	mov	r4,a
      004C4A 60 10            [24] 6541 	jz	00132$
      004C4C 7B 00            [12] 6542 	mov	r3,#0x00
      004C4E 8C 82            [24] 6543 	mov	dpl,r4
      004C50 8B 83            [24] 6544 	mov	dph,r3
      004C52 12 29 C0         [24] 6545 	lcall	_putchar
      004C55 0D               [12] 6546 	inc	r5
                                   6547 ;	calc.c:384: printstr("#\tmodulus top 2 unsigned\r\n");
      004C56 BD 00 E7         [24] 6548 	cjne	r5,#0x00,00196$
      004C59 0E               [12] 6549 	inc	r6
      004C5A 80 E4            [24] 6550 	sjmp	00196$
      004C5C                       6551 00132$:
                                   6552 ;	calc.c:385: printstr("&\tand top 2\r\n");
      004C5C 7D 1C            [12] 6553 	mov	r5,#___str_29
      004C5E 7E 72            [12] 6554 	mov	r6,#(___str_29 >> 8)
      004C60 7F 80            [12] 6555 	mov	r7,#0x80
                                   6556 ;	calc.c:50: return;
      004C62                       6557 00199$:
                                   6558 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004C62 8D 82            [24] 6559 	mov	dpl,r5
      004C64 8E 83            [24] 6560 	mov	dph,r6
      004C66 8F F0            [24] 6561 	mov	b,r7
      004C68 12 57 E4         [24] 6562 	lcall	__gptrget
      004C6B FC               [12] 6563 	mov	r4,a
      004C6C 60 10            [24] 6564 	jz	00134$
      004C6E 7B 00            [12] 6565 	mov	r3,#0x00
      004C70 8C 82            [24] 6566 	mov	dpl,r4
      004C72 8B 83            [24] 6567 	mov	dph,r3
      004C74 12 29 C0         [24] 6568 	lcall	_putchar
      004C77 0D               [12] 6569 	inc	r5
                                   6570 ;	calc.c:385: printstr("&\tand top 2\r\n");
      004C78 BD 00 E7         [24] 6571 	cjne	r5,#0x00,00199$
      004C7B 0E               [12] 6572 	inc	r6
      004C7C 80 E4            [24] 6573 	sjmp	00199$
      004C7E                       6574 00134$:
                                   6575 ;	calc.c:386: printstr("|\tor top 2\r\n");
      004C7E 7D 2A            [12] 6576 	mov	r5,#___str_30
      004C80 7E 72            [12] 6577 	mov	r6,#(___str_30 >> 8)
      004C82 7F 80            [12] 6578 	mov	r7,#0x80
                                   6579 ;	calc.c:50: return;
      004C84                       6580 00202$:
                                   6581 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004C84 8D 82            [24] 6582 	mov	dpl,r5
      004C86 8E 83            [24] 6583 	mov	dph,r6
      004C88 8F F0            [24] 6584 	mov	b,r7
      004C8A 12 57 E4         [24] 6585 	lcall	__gptrget
      004C8D FC               [12] 6586 	mov	r4,a
      004C8E 60 10            [24] 6587 	jz	00136$
      004C90 7B 00            [12] 6588 	mov	r3,#0x00
      004C92 8C 82            [24] 6589 	mov	dpl,r4
      004C94 8B 83            [24] 6590 	mov	dph,r3
      004C96 12 29 C0         [24] 6591 	lcall	_putchar
      004C99 0D               [12] 6592 	inc	r5
                                   6593 ;	calc.c:386: printstr("|\tor top 2\r\n");
      004C9A BD 00 E7         [24] 6594 	cjne	r5,#0x00,00202$
      004C9D 0E               [12] 6595 	inc	r6
      004C9E 80 E4            [24] 6596 	sjmp	00202$
      004CA0                       6597 00136$:
                                   6598 ;	calc.c:387: printstr("^\txor top 2\r\n");
      004CA0 7D 37            [12] 6599 	mov	r5,#___str_31
      004CA2 7E 72            [12] 6600 	mov	r6,#(___str_31 >> 8)
      004CA4 7F 80            [12] 6601 	mov	r7,#0x80
                                   6602 ;	calc.c:50: return;
      004CA6                       6603 00205$:
                                   6604 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004CA6 8D 82            [24] 6605 	mov	dpl,r5
      004CA8 8E 83            [24] 6606 	mov	dph,r6
      004CAA 8F F0            [24] 6607 	mov	b,r7
      004CAC 12 57 E4         [24] 6608 	lcall	__gptrget
      004CAF FC               [12] 6609 	mov	r4,a
      004CB0 60 10            [24] 6610 	jz	00138$
      004CB2 7B 00            [12] 6611 	mov	r3,#0x00
      004CB4 8C 82            [24] 6612 	mov	dpl,r4
      004CB6 8B 83            [24] 6613 	mov	dph,r3
      004CB8 12 29 C0         [24] 6614 	lcall	_putchar
      004CBB 0D               [12] 6615 	inc	r5
                                   6616 ;	calc.c:387: printstr("^\txor top 2\r\n");
      004CBC BD 00 E7         [24] 6617 	cjne	r5,#0x00,00205$
      004CBF 0E               [12] 6618 	inc	r6
      004CC0 80 E4            [24] 6619 	sjmp	00205$
      004CC2                       6620 00138$:
                                   6621 ;	calc.c:388: printstr(">\tshift right top 2\r\n");
      004CC2 7D 45            [12] 6622 	mov	r5,#___str_32
      004CC4 7E 72            [12] 6623 	mov	r6,#(___str_32 >> 8)
      004CC6 7F 80            [12] 6624 	mov	r7,#0x80
                                   6625 ;	calc.c:50: return;
      004CC8                       6626 00208$:
                                   6627 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004CC8 8D 82            [24] 6628 	mov	dpl,r5
      004CCA 8E 83            [24] 6629 	mov	dph,r6
      004CCC 8F F0            [24] 6630 	mov	b,r7
      004CCE 12 57 E4         [24] 6631 	lcall	__gptrget
      004CD1 FC               [12] 6632 	mov	r4,a
      004CD2 60 10            [24] 6633 	jz	00140$
      004CD4 7B 00            [12] 6634 	mov	r3,#0x00
      004CD6 8C 82            [24] 6635 	mov	dpl,r4
      004CD8 8B 83            [24] 6636 	mov	dph,r3
      004CDA 12 29 C0         [24] 6637 	lcall	_putchar
      004CDD 0D               [12] 6638 	inc	r5
                                   6639 ;	calc.c:388: printstr(">\tshift right top 2\r\n");
      004CDE BD 00 E7         [24] 6640 	cjne	r5,#0x00,00208$
      004CE1 0E               [12] 6641 	inc	r6
      004CE2 80 E4            [24] 6642 	sjmp	00208$
      004CE4                       6643 00140$:
                                   6644 ;	calc.c:389: printstr("]\tarithmetic shift right top 2\r\n");
      004CE4 7D 5B            [12] 6645 	mov	r5,#___str_33
      004CE6 7E 72            [12] 6646 	mov	r6,#(___str_33 >> 8)
      004CE8 7F 80            [12] 6647 	mov	r7,#0x80
                                   6648 ;	calc.c:50: return;
      004CEA                       6649 00211$:
                                   6650 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004CEA 8D 82            [24] 6651 	mov	dpl,r5
      004CEC 8E 83            [24] 6652 	mov	dph,r6
      004CEE 8F F0            [24] 6653 	mov	b,r7
      004CF0 12 57 E4         [24] 6654 	lcall	__gptrget
      004CF3 FC               [12] 6655 	mov	r4,a
      004CF4 60 10            [24] 6656 	jz	00142$
      004CF6 7B 00            [12] 6657 	mov	r3,#0x00
      004CF8 8C 82            [24] 6658 	mov	dpl,r4
      004CFA 8B 83            [24] 6659 	mov	dph,r3
      004CFC 12 29 C0         [24] 6660 	lcall	_putchar
      004CFF 0D               [12] 6661 	inc	r5
                                   6662 ;	calc.c:389: printstr("]\tarithmetic shift right top 2\r\n");
      004D00 BD 00 E7         [24] 6663 	cjne	r5,#0x00,00211$
      004D03 0E               [12] 6664 	inc	r6
      004D04 80 E4            [24] 6665 	sjmp	00211$
      004D06                       6666 00142$:
                                   6667 ;	calc.c:390: printstr("<\tshift left top 2\r\n");
      004D06 7D 7C            [12] 6668 	mov	r5,#___str_34
      004D08 7E 72            [12] 6669 	mov	r6,#(___str_34 >> 8)
      004D0A 7F 80            [12] 6670 	mov	r7,#0x80
                                   6671 ;	calc.c:50: return;
      004D0C                       6672 00214$:
                                   6673 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004D0C 8D 82            [24] 6674 	mov	dpl,r5
      004D0E 8E 83            [24] 6675 	mov	dph,r6
      004D10 8F F0            [24] 6676 	mov	b,r7
      004D12 12 57 E4         [24] 6677 	lcall	__gptrget
      004D15 FC               [12] 6678 	mov	r4,a
      004D16 60 10            [24] 6679 	jz	00144$
      004D18 7B 00            [12] 6680 	mov	r3,#0x00
      004D1A 8C 82            [24] 6681 	mov	dpl,r4
      004D1C 8B 83            [24] 6682 	mov	dph,r3
      004D1E 12 29 C0         [24] 6683 	lcall	_putchar
      004D21 0D               [12] 6684 	inc	r5
                                   6685 ;	calc.c:390: printstr("<\tshift left top 2\r\n");
      004D22 BD 00 E7         [24] 6686 	cjne	r5,#0x00,00214$
      004D25 0E               [12] 6687 	inc	r6
      004D26 80 E4            [24] 6688 	sjmp	00214$
      004D28                       6689 00144$:
                                   6690 ;	calc.c:391: printstr("~\tbitwise not top\r\n");
      004D28 7D 91            [12] 6691 	mov	r5,#___str_35
      004D2A 7E 72            [12] 6692 	mov	r6,#(___str_35 >> 8)
      004D2C 7F 80            [12] 6693 	mov	r7,#0x80
                                   6694 ;	calc.c:50: return;
      004D2E                       6695 00217$:
                                   6696 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004D2E 8D 82            [24] 6697 	mov	dpl,r5
      004D30 8E 83            [24] 6698 	mov	dph,r6
      004D32 8F F0            [24] 6699 	mov	b,r7
      004D34 12 57 E4         [24] 6700 	lcall	__gptrget
      004D37 FC               [12] 6701 	mov	r4,a
      004D38 60 10            [24] 6702 	jz	00146$
      004D3A 7B 00            [12] 6703 	mov	r3,#0x00
      004D3C 8C 82            [24] 6704 	mov	dpl,r4
      004D3E 8B 83            [24] 6705 	mov	dph,r3
      004D40 12 29 C0         [24] 6706 	lcall	_putchar
      004D43 0D               [12] 6707 	inc	r5
                                   6708 ;	calc.c:391: printstr("~\tbitwise not top\r\n");
      004D44 BD 00 E7         [24] 6709 	cjne	r5,#0x00,00217$
      004D47 0E               [12] 6710 	inc	r6
      004D48 80 E4            [24] 6711 	sjmp	00217$
      004D4A                       6712 00146$:
                                   6713 ;	calc.c:392: printstr("?\thelp\r\n");
      004D4A 7D A5            [12] 6714 	mov	r5,#___str_36
      004D4C 7E 72            [12] 6715 	mov	r6,#(___str_36 >> 8)
      004D4E 7F 80            [12] 6716 	mov	r7,#0x80
                                   6717 ;	calc.c:50: return;
      004D50                       6718 00220$:
                                   6719 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004D50 8D 82            [24] 6720 	mov	dpl,r5
      004D52 8E 83            [24] 6721 	mov	dph,r6
      004D54 8F F0            [24] 6722 	mov	b,r7
      004D56 12 57 E4         [24] 6723 	lcall	__gptrget
      004D59 FC               [12] 6724 	mov	r4,a
      004D5A 60 10            [24] 6725 	jz	00148$
      004D5C 7B 00            [12] 6726 	mov	r3,#0x00
      004D5E 8C 82            [24] 6727 	mov	dpl,r4
      004D60 8B 83            [24] 6728 	mov	dph,r3
      004D62 12 29 C0         [24] 6729 	lcall	_putchar
      004D65 0D               [12] 6730 	inc	r5
                                   6731 ;	calc.c:392: printstr("?\thelp\r\n");
      004D66 BD 00 E7         [24] 6732 	cjne	r5,#0x00,00220$
      004D69 0E               [12] 6733 	inc	r6
      004D6A 80 E4            [24] 6734 	sjmp	00220$
      004D6C                       6735 00148$:
                                   6736 ;	calc.c:393: printstr("q\tquit\r\n");
      004D6C 7D AE            [12] 6737 	mov	r5,#___str_37
      004D6E 7E 72            [12] 6738 	mov	r6,#(___str_37 >> 8)
      004D70 7F 80            [12] 6739 	mov	r7,#0x80
                                   6740 ;	calc.c:50: return;
      004D72                       6741 00223$:
                                   6742 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004D72 8D 82            [24] 6743 	mov	dpl,r5
      004D74 8E 83            [24] 6744 	mov	dph,r6
      004D76 8F F0            [24] 6745 	mov	b,r7
      004D78 12 57 E4         [24] 6746 	lcall	__gptrget
      004D7B FC               [12] 6747 	mov	r4,a
      004D7C 60 10            [24] 6748 	jz	00150$
      004D7E 7B 00            [12] 6749 	mov	r3,#0x00
      004D80 8C 82            [24] 6750 	mov	dpl,r4
      004D82 8B 83            [24] 6751 	mov	dph,r3
      004D84 12 29 C0         [24] 6752 	lcall	_putchar
      004D87 0D               [12] 6753 	inc	r5
                                   6754 ;	calc.c:393: printstr("q\tquit\r\n");
      004D88 BD 00 E7         [24] 6755 	cjne	r5,#0x00,00223$
      004D8B 0E               [12] 6756 	inc	r6
      004D8C 80 E4            [24] 6757 	sjmp	00223$
      004D8E                       6758 00150$:
                                   6759 ;	calc.c:395: return 1;
      004D8E 90 00 01         [24] 6760 	mov	dptr,#0x0001
                                   6761 ;	calc.c:396: }
      004D91 85 08 81         [24] 6762 	mov	sp,_bp
      004D94 D0 08            [24] 6763 	pop	_bp
      004D96 22               [24] 6764 	ret
                                   6765 ;------------------------------------------------------------
                                   6766 ;Allocation info for local variables in function 'main'
                                   6767 ;------------------------------------------------------------
                                   6768 ;input                     Allocated to registers r6 r7 
                                   6769 ;__1966080149              Allocated to registers 
                                   6770 ;s                         Allocated to registers r2 r3 r4 
                                   6771 ;sloc0                     Allocated to stack - _bp +1
                                   6772 ;------------------------------------------------------------
                                   6773 ;	calc.c:425: void main(void) {
                                   6774 ;	-----------------------------------------
                                   6775 ;	 function main
                                   6776 ;	-----------------------------------------
      004D97                       6777 _main:
      004D97 C0 08            [24] 6778 	push	_bp
      004D99 85 81 08         [24] 6779 	mov	_bp,sp
      004D9C 05 81            [12] 6780 	inc	sp
                                   6781 ;	calc.c:428: c.base = 10;
      004D9E 90 80 0C         [24] 6782 	mov	dptr,#_c
      004DA1 74 0A            [12] 6783 	mov	a,#0x0a
      004DA3 F0               [24] 6784 	movx	@dptr,a
      004DA4 E4               [12] 6785 	clr	a
      004DA5 A3               [24] 6786 	inc	dptr
      004DA6 F0               [24] 6787 	movx	@dptr,a
                                   6788 ;	calc.c:429: c.acc = 0l;
      004DA7 90 80 0E         [24] 6789 	mov	dptr,#(_c + 0x0002)
      004DAA F0               [24] 6790 	movx	@dptr,a
      004DAB A3               [24] 6791 	inc	dptr
      004DAC F0               [24] 6792 	movx	@dptr,a
      004DAD A3               [24] 6793 	inc	dptr
      004DAE F0               [24] 6794 	movx	@dptr,a
      004DAF A3               [24] 6795 	inc	dptr
      004DB0 F0               [24] 6796 	movx	@dptr,a
                                   6797 ;	calc.c:430: c.acc_valid = (char)0;
      004DB1 90 80 12         [24] 6798 	mov	dptr,#(_c + 0x0006)
      004DB4 F0               [24] 6799 	movx	@dptr,a
                                   6800 ;	calc.c:431: c.digit[0] = c.digit[1] = '\0';
      004DB5 90 80 14         [24] 6801 	mov	dptr,#(_c + 0x0008)
      004DB8 F0               [24] 6802 	movx	@dptr,a
      004DB9 90 80 13         [24] 6803 	mov	dptr,#(_c + 0x0007)
      004DBC F0               [24] 6804 	movx	@dptr,a
                                   6805 ;	calc.c:433: stack_init(&c.s);	
      004DBD 90 80 15         [24] 6806 	mov	dptr,#(_c + 0x0009)
      004DC0 75 F0 00         [24] 6807 	mov	b,#0x00
      004DC3 12 26 80         [24] 6808 	lcall	_stack_init
                                   6809 ;	calc.c:434: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      004DC6 74 0C            [12] 6810 	mov	a,#_c
      004DC8 C0 E0            [24] 6811 	push	acc
      004DCA 74 80            [12] 6812 	mov	a,#(_c >> 8)
      004DCC C0 E0            [24] 6813 	push	acc
      004DCE E4               [12] 6814 	clr	a
      004DCF C0 E0            [24] 6815 	push	acc
      004DD1 74 1B            [12] 6816 	mov	a,#_deltas
      004DD3 C0 E0            [24] 6817 	push	acc
      004DD5 74 A0            [12] 6818 	mov	a,#(_deltas >> 8)
      004DD7 C0 E0            [24] 6819 	push	acc
      004DD9 E4               [12] 6820 	clr	a
      004DDA C0 E0            [24] 6821 	push	acc
      004DDC C0 E0            [24] 6822 	push	acc
      004DDE 74 80            [12] 6823 	mov	a,#0x80
      004DE0 C0 E0            [24] 6824 	push	acc
      004DE2 74 03            [12] 6825 	mov	a,#0x03
      004DE4 C0 E0            [24] 6826 	push	acc
      004DE6 E4               [12] 6827 	clr	a
      004DE7 C0 E0            [24] 6828 	push	acc
      004DE9 C0 E0            [24] 6829 	push	acc
      004DEB C0 E0            [24] 6830 	push	acc
      004DED 90 80 00         [24] 6831 	mov	dptr,#_s
      004DF0 75 F0 00         [24] 6832 	mov	b,#0x00
      004DF3 12 20 90         [24] 6833 	lcall	_state_init
      004DF6 E5 81            [12] 6834 	mov	a,sp
      004DF8 24 F4            [12] 6835 	add	a,#0xf4
      004DFA F5 81            [12] 6836 	mov	sp,a
                                   6837 ;	calc.c:436: while (1) {
      004DFC                       6838 00177$:
                                   6839 ;	calc.c:437: input = getchar();
      004DFC 12 29 C5         [24] 6840 	lcall	_getchar
      004DFF AE 82            [24] 6841 	mov	r6,dpl
      004E01 AF 83            [24] 6842 	mov	r7,dph
                                   6843 ;	calc.c:438: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      004E03 8E 05            [24] 6844 	mov	ar5,r6
      004E05 BD 0D 02         [24] 6845 	cjne	r5,#0x0d,00339$
      004E08 80 03            [24] 6846 	sjmp	00101$
      004E0A                       6847 00339$:
      004E0A BD 0A 36         [24] 6848 	cjne	r5,#0x0a,00102$
      004E0D                       6849 00101$:
      004E0D 7A 65            [12] 6850 	mov	r2,#___str_0
      004E0F 7B 70            [12] 6851 	mov	r3,#(___str_0 >> 8)
      004E11 7C 80            [12] 6852 	mov	r4,#0x80
                                   6853 ;	calc.c:50: return;
      004E13                       6854 00182$:
                                   6855 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004E13 8A 82            [24] 6856 	mov	dpl,r2
      004E15 8B 83            [24] 6857 	mov	dph,r3
      004E17 8C F0            [24] 6858 	mov	b,r4
      004E19 A8 08            [24] 6859 	mov	r0,_bp
      004E1B 08               [12] 6860 	inc	r0
      004E1C 12 57 E4         [24] 6861 	lcall	__gptrget
      004E1F F6               [12] 6862 	mov	@r0,a
      004E20 A8 08            [24] 6863 	mov	r0,_bp
      004E22 08               [12] 6864 	inc	r0
      004E23 E6               [12] 6865 	mov	a,@r0
      004E24 60 24            [24] 6866 	jz	00103$
      004E26 C0 06            [24] 6867 	push	ar6
      004E28 C0 07            [24] 6868 	push	ar7
      004E2A A8 08            [24] 6869 	mov	r0,_bp
      004E2C 08               [12] 6870 	inc	r0
      004E2D 86 06            [24] 6871 	mov	ar6,@r0
      004E2F 7F 00            [12] 6872 	mov	r7,#0x00
      004E31 8E 82            [24] 6873 	mov	dpl,r6
      004E33 8F 83            [24] 6874 	mov	dph,r7
      004E35 12 29 C0         [24] 6875 	lcall	_putchar
      004E38 0A               [12] 6876 	inc	r2
      004E39 BA 00 01         [24] 6877 	cjne	r2,#0x00,00343$
      004E3C 0B               [12] 6878 	inc	r3
      004E3D                       6879 00343$:
      004E3D D0 07            [24] 6880 	pop	ar7
      004E3F D0 06            [24] 6881 	pop	ar6
                                   6882 ;	calc.c:438: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      004E41 80 D0            [24] 6883 	sjmp	00182$
      004E43                       6884 00102$:
                                   6885 ;	calc.c:439: else (void)putchar(input);
      004E43 8E 82            [24] 6886 	mov	dpl,r6
      004E45 8F 83            [24] 6887 	mov	dph,r7
      004E47 12 29 C0         [24] 6888 	lcall	_putchar
      004E4A                       6889 00103$:
                                   6890 ;	calc.c:440: c.digit[0] = (char)input;
      004E4A 90 80 13         [24] 6891 	mov	dptr,#(_c + 0x0007)
      004E4D ED               [12] 6892 	mov	a,r5
      004E4E F0               [24] 6893 	movx	@dptr,a
                                   6894 ;	calc.c:442: if ((char)input == 'q') {
      004E4F BD 71 29         [24] 6895 	cjne	r5,#0x71,00174$
                                   6896 ;	calc.c:443: if (state_exec(&s, EVENT_TERM) <= 0) break;
      004E52 74 07            [12] 6897 	mov	a,#0x07
      004E54 C0 E0            [24] 6898 	push	acc
      004E56 E4               [12] 6899 	clr	a
      004E57 C0 E0            [24] 6900 	push	acc
      004E59 90 80 00         [24] 6901 	mov	dptr,#_s
      004E5C 75 F0 00         [24] 6902 	mov	b,#0x00
      004E5F 12 21 46         [24] 6903 	lcall	_state_exec
      004E62 AB 82            [24] 6904 	mov	r3,dpl
      004E64 AC 83            [24] 6905 	mov	r4,dph
      004E66 15 81            [12] 6906 	dec	sp
      004E68 15 81            [12] 6907 	dec	sp
      004E6A C3               [12] 6908 	clr	c
      004E6B E4               [12] 6909 	clr	a
      004E6C 9B               [12] 6910 	subb	a,r3
      004E6D 74 80            [12] 6911 	mov	a,#(0x00 ^ 0x80)
      004E6F 8C F0            [24] 6912 	mov	b,r4
      004E71 63 F0 80         [24] 6913 	xrl	b,#0x80
      004E74 95 F0            [12] 6914 	subb	a,b
      004E76 40 84            [24] 6915 	jc	00177$
      004E78 02 50 B3         [24] 6916 	ljmp	00178$
      004E7B                       6917 00174$:
                                   6918 ;	calc.c:444: } else if ((char)input == '?') {
      004E7B BD 3F 2C         [24] 6919 	cjne	r5,#0x3f,00171$
                                   6920 ;	calc.c:445: if (state_exec(&s, EVENT_HELP) <= 0) break;
      004E7E 74 03            [12] 6921 	mov	a,#0x03
      004E80 C0 E0            [24] 6922 	push	acc
      004E82 E4               [12] 6923 	clr	a
      004E83 C0 E0            [24] 6924 	push	acc
      004E85 90 80 00         [24] 6925 	mov	dptr,#_s
      004E88 75 F0 00         [24] 6926 	mov	b,#0x00
      004E8B 12 21 46         [24] 6927 	lcall	_state_exec
      004E8E AB 82            [24] 6928 	mov	r3,dpl
      004E90 AC 83            [24] 6929 	mov	r4,dph
      004E92 15 81            [12] 6930 	dec	sp
      004E94 15 81            [12] 6931 	dec	sp
      004E96 C3               [12] 6932 	clr	c
      004E97 E4               [12] 6933 	clr	a
      004E98 9B               [12] 6934 	subb	a,r3
      004E99 74 80            [12] 6935 	mov	a,#(0x00 ^ 0x80)
      004E9B 8C F0            [24] 6936 	mov	b,r4
      004E9D 63 F0 80         [24] 6937 	xrl	b,#0x80
      004EA0 95 F0            [12] 6938 	subb	a,b
      004EA2 50 03            [24] 6939 	jnc	00349$
      004EA4 02 4D FC         [24] 6940 	ljmp	00177$
      004EA7                       6941 00349$:
      004EA7 02 50 B3         [24] 6942 	ljmp	00178$
      004EAA                       6943 00171$:
                                   6944 ;	calc.c:446: } else if ((char)input == 'i') {
      004EAA BD 69 2C         [24] 6945 	cjne	r5,#0x69,00168$
                                   6946 ;	calc.c:447: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      004EAD 74 05            [12] 6947 	mov	a,#0x05
      004EAF C0 E0            [24] 6948 	push	acc
      004EB1 E4               [12] 6949 	clr	a
      004EB2 C0 E0            [24] 6950 	push	acc
      004EB4 90 80 00         [24] 6951 	mov	dptr,#_s
      004EB7 75 F0 00         [24] 6952 	mov	b,#0x00
      004EBA 12 21 46         [24] 6953 	lcall	_state_exec
      004EBD AB 82            [24] 6954 	mov	r3,dpl
      004EBF AC 83            [24] 6955 	mov	r4,dph
      004EC1 15 81            [12] 6956 	dec	sp
      004EC3 15 81            [12] 6957 	dec	sp
      004EC5 C3               [12] 6958 	clr	c
      004EC6 E4               [12] 6959 	clr	a
      004EC7 9B               [12] 6960 	subb	a,r3
      004EC8 74 80            [12] 6961 	mov	a,#(0x00 ^ 0x80)
      004ECA 8C F0            [24] 6962 	mov	b,r4
      004ECC 63 F0 80         [24] 6963 	xrl	b,#0x80
      004ECF 95 F0            [12] 6964 	subb	a,b
      004ED1 50 03            [24] 6965 	jnc	00352$
      004ED3 02 4D FC         [24] 6966 	ljmp	00177$
      004ED6                       6967 00352$:
      004ED6 02 50 B3         [24] 6968 	ljmp	00178$
      004ED9                       6969 00168$:
                                   6970 ;	calc.c:448: } else if ((char)input == 'I') {
      004ED9 BD 49 2C         [24] 6971 	cjne	r5,#0x49,00165$
                                   6972 ;	calc.c:449: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      004EDC 74 06            [12] 6973 	mov	a,#0x06
      004EDE C0 E0            [24] 6974 	push	acc
      004EE0 E4               [12] 6975 	clr	a
      004EE1 C0 E0            [24] 6976 	push	acc
      004EE3 90 80 00         [24] 6977 	mov	dptr,#_s
      004EE6 75 F0 00         [24] 6978 	mov	b,#0x00
      004EE9 12 21 46         [24] 6979 	lcall	_state_exec
      004EEC AB 82            [24] 6980 	mov	r3,dpl
      004EEE AC 83            [24] 6981 	mov	r4,dph
      004EF0 15 81            [12] 6982 	dec	sp
      004EF2 15 81            [12] 6983 	dec	sp
      004EF4 C3               [12] 6984 	clr	c
      004EF5 E4               [12] 6985 	clr	a
      004EF6 9B               [12] 6986 	subb	a,r3
      004EF7 74 80            [12] 6987 	mov	a,#(0x00 ^ 0x80)
      004EF9 8C F0            [24] 6988 	mov	b,r4
      004EFB 63 F0 80         [24] 6989 	xrl	b,#0x80
      004EFE 95 F0            [12] 6990 	subb	a,b
      004F00 50 03            [24] 6991 	jnc	00355$
      004F02 02 4D FC         [24] 6992 	ljmp	00177$
      004F05                       6993 00355$:
      004F05 02 50 B3         [24] 6994 	ljmp	00178$
      004F08                       6995 00165$:
                                   6996 ;	calc.c:451: ((char)input == 'h') || ((char)input == 'H') ||
      004F08 BD 68 02         [24] 6997 	cjne	r5,#0x68,00356$
      004F0B 80 0D            [24] 6998 	sjmp	00158$
      004F0D                       6999 00356$:
      004F0D BD 48 02         [24] 7000 	cjne	r5,#0x48,00357$
      004F10 80 08            [24] 7001 	sjmp	00158$
      004F12                       7002 00357$:
                                   7003 ;	calc.c:452: ((char)input == 'o') || ((char)input == 'O')
      004F12 BD 6F 02         [24] 7004 	cjne	r5,#0x6f,00358$
      004F15 80 03            [24] 7005 	sjmp	00158$
      004F17                       7006 00358$:
      004F17 BD 4F 2C         [24] 7007 	cjne	r5,#0x4f,00159$
      004F1A                       7008 00158$:
                                   7009 ;	calc.c:454: if (state_exec(&s, EVENT_BASE) <= 0) break;
      004F1A 74 04            [12] 7010 	mov	a,#0x04
      004F1C C0 E0            [24] 7011 	push	acc
      004F1E E4               [12] 7012 	clr	a
      004F1F C0 E0            [24] 7013 	push	acc
      004F21 90 80 00         [24] 7014 	mov	dptr,#_s
      004F24 75 F0 00         [24] 7015 	mov	b,#0x00
      004F27 12 21 46         [24] 7016 	lcall	_state_exec
      004F2A AB 82            [24] 7017 	mov	r3,dpl
      004F2C AC 83            [24] 7018 	mov	r4,dph
      004F2E 15 81            [12] 7019 	dec	sp
      004F30 15 81            [12] 7020 	dec	sp
      004F32 C3               [12] 7021 	clr	c
      004F33 E4               [12] 7022 	clr	a
      004F34 9B               [12] 7023 	subb	a,r3
      004F35 74 80            [12] 7024 	mov	a,#(0x00 ^ 0x80)
      004F37 8C F0            [24] 7025 	mov	b,r4
      004F39 63 F0 80         [24] 7026 	xrl	b,#0x80
      004F3C 95 F0            [12] 7027 	subb	a,b
      004F3E 50 03            [24] 7028 	jnc	00361$
      004F40 02 4D FC         [24] 7029 	ljmp	00177$
      004F43                       7030 00361$:
      004F43 02 50 B3         [24] 7031 	ljmp	00178$
      004F46                       7032 00159$:
                                   7033 ;	calc.c:455: } else if (isxdigit(input)) {
      004F46 8E 82            [24] 7034 	mov	dpl,r6
      004F48 8F 83            [24] 7035 	mov	dph,r7
      004F4A C0 05            [24] 7036 	push	ar5
      004F4C 12 50 BB         [24] 7037 	lcall	_isxdigit
      004F4F E5 82            [12] 7038 	mov	a,dpl
      004F51 85 83 F0         [24] 7039 	mov	b,dph
      004F54 D0 05            [24] 7040 	pop	ar5
      004F56 45 F0            [12] 7041 	orl	a,b
      004F58 60 2C            [24] 7042 	jz	00156$
                                   7043 ;	calc.c:456: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      004F5A 74 01            [12] 7044 	mov	a,#0x01
      004F5C C0 E0            [24] 7045 	push	acc
      004F5E E4               [12] 7046 	clr	a
      004F5F C0 E0            [24] 7047 	push	acc
      004F61 90 80 00         [24] 7048 	mov	dptr,#_s
      004F64 75 F0 00         [24] 7049 	mov	b,#0x00
      004F67 12 21 46         [24] 7050 	lcall	_state_exec
      004F6A AE 82            [24] 7051 	mov	r6,dpl
      004F6C AF 83            [24] 7052 	mov	r7,dph
      004F6E 15 81            [12] 7053 	dec	sp
      004F70 15 81            [12] 7054 	dec	sp
      004F72 C3               [12] 7055 	clr	c
      004F73 E4               [12] 7056 	clr	a
      004F74 9E               [12] 7057 	subb	a,r6
      004F75 74 80            [12] 7058 	mov	a,#(0x00 ^ 0x80)
      004F77 8F F0            [24] 7059 	mov	b,r7
      004F79 63 F0 80         [24] 7060 	xrl	b,#0x80
      004F7C 95 F0            [12] 7061 	subb	a,b
      004F7E 50 03            [24] 7062 	jnc	00363$
      004F80 02 4D FC         [24] 7063 	ljmp	00177$
      004F83                       7064 00363$:
      004F83 02 50 B3         [24] 7065 	ljmp	00178$
      004F86                       7066 00156$:
                                   7067 ;	calc.c:458: ((char)input == 'p') || ((char)input == 'P') ||
      004F86 BD 70 02         [24] 7068 	cjne	r5,#0x70,00364$
      004F89 80 17            [24] 7069 	sjmp	00147$
      004F8B                       7070 00364$:
      004F8B BD 50 02         [24] 7071 	cjne	r5,#0x50,00365$
      004F8E 80 12            [24] 7072 	sjmp	00147$
      004F90                       7073 00365$:
                                   7074 ;	calc.c:459: ((char)input == 'v') || ((char)input == 'V') ||
      004F90 BD 76 02         [24] 7075 	cjne	r5,#0x76,00366$
      004F93 80 0D            [24] 7076 	sjmp	00147$
      004F95                       7077 00366$:
      004F95 BD 56 02         [24] 7078 	cjne	r5,#0x56,00367$
      004F98 80 08            [24] 7079 	sjmp	00147$
      004F9A                       7080 00367$:
                                   7081 ;	calc.c:460: ((char)input == '.') ||
      004F9A BD 2E 02         [24] 7082 	cjne	r5,#0x2e,00368$
      004F9D 80 03            [24] 7083 	sjmp	00147$
      004F9F                       7084 00368$:
                                   7085 ;	calc.c:461: ((char)input == 'x')
      004F9F BD 78 2C         [24] 7086 	cjne	r5,#0x78,00148$
      004FA2                       7087 00147$:
                                   7088 ;	calc.c:463: if (state_exec(&s, EVENT_OP) <= 0) break;
      004FA2 74 02            [12] 7089 	mov	a,#0x02
      004FA4 C0 E0            [24] 7090 	push	acc
      004FA6 E4               [12] 7091 	clr	a
      004FA7 C0 E0            [24] 7092 	push	acc
      004FA9 90 80 00         [24] 7093 	mov	dptr,#_s
      004FAC 75 F0 00         [24] 7094 	mov	b,#0x00
      004FAF 12 21 46         [24] 7095 	lcall	_state_exec
      004FB2 AE 82            [24] 7096 	mov	r6,dpl
      004FB4 AF 83            [24] 7097 	mov	r7,dph
      004FB6 15 81            [12] 7098 	dec	sp
      004FB8 15 81            [12] 7099 	dec	sp
      004FBA C3               [12] 7100 	clr	c
      004FBB E4               [12] 7101 	clr	a
      004FBC 9E               [12] 7102 	subb	a,r6
      004FBD 74 80            [12] 7103 	mov	a,#(0x00 ^ 0x80)
      004FBF 8F F0            [24] 7104 	mov	b,r7
      004FC1 63 F0 80         [24] 7105 	xrl	b,#0x80
      004FC4 95 F0            [12] 7106 	subb	a,b
      004FC6 50 03            [24] 7107 	jnc	00371$
      004FC8 02 4D FC         [24] 7108 	ljmp	00177$
      004FCB                       7109 00371$:
      004FCB 02 50 B3         [24] 7110 	ljmp	00178$
      004FCE                       7111 00148$:
                                   7112 ;	calc.c:465: ((char)input == '+') || ((char)input == '-')
      004FCE BD 2B 02         [24] 7113 	cjne	r5,#0x2b,00372$
      004FD1 80 03            [24] 7114 	sjmp	00143$
      004FD3                       7115 00372$:
      004FD3 BD 2D 2C         [24] 7116 	cjne	r5,#0x2d,00144$
      004FD6                       7117 00143$:
                                   7118 ;	calc.c:467: if (state_exec(&s, EVENT_OP) <= 0) break;
      004FD6 74 02            [12] 7119 	mov	a,#0x02
      004FD8 C0 E0            [24] 7120 	push	acc
      004FDA E4               [12] 7121 	clr	a
      004FDB C0 E0            [24] 7122 	push	acc
      004FDD 90 80 00         [24] 7123 	mov	dptr,#_s
      004FE0 75 F0 00         [24] 7124 	mov	b,#0x00
      004FE3 12 21 46         [24] 7125 	lcall	_state_exec
      004FE6 AE 82            [24] 7126 	mov	r6,dpl
      004FE8 AF 83            [24] 7127 	mov	r7,dph
      004FEA 15 81            [12] 7128 	dec	sp
      004FEC 15 81            [12] 7129 	dec	sp
      004FEE C3               [12] 7130 	clr	c
      004FEF E4               [12] 7131 	clr	a
      004FF0 9E               [12] 7132 	subb	a,r6
      004FF1 74 80            [12] 7133 	mov	a,#(0x00 ^ 0x80)
      004FF3 8F F0            [24] 7134 	mov	b,r7
      004FF5 63 F0 80         [24] 7135 	xrl	b,#0x80
      004FF8 95 F0            [12] 7136 	subb	a,b
      004FFA 50 03            [24] 7137 	jnc	00375$
      004FFC 02 4D FC         [24] 7138 	ljmp	00177$
      004FFF                       7139 00375$:
      004FFF 02 50 B3         [24] 7140 	ljmp	00178$
      005002                       7141 00144$:
                                   7142 ;	calc.c:469: ((char)input == '*') ||
      005002 BD 2A 02         [24] 7143 	cjne	r5,#0x2a,00376$
      005005 80 12            [24] 7144 	sjmp	00136$
      005007                       7145 00376$:
                                   7146 ;	calc.c:470: ((char)input == '/') || ((char)input == '\\') ||
      005007 BD 2F 02         [24] 7147 	cjne	r5,#0x2f,00377$
      00500A 80 0D            [24] 7148 	sjmp	00136$
      00500C                       7149 00377$:
      00500C BD 5C 02         [24] 7150 	cjne	r5,#0x5c,00378$
      00500F 80 08            [24] 7151 	sjmp	00136$
      005011                       7152 00378$:
                                   7153 ;	calc.c:471: ((char)input == '%') || ((char)input == '#')
      005011 BD 25 02         [24] 7154 	cjne	r5,#0x25,00379$
      005014 80 03            [24] 7155 	sjmp	00136$
      005016                       7156 00379$:
      005016 BD 23 29         [24] 7157 	cjne	r5,#0x23,00137$
      005019                       7158 00136$:
                                   7159 ;	calc.c:473: if (state_exec(&s, EVENT_OP) <= 0) break;
      005019 74 02            [12] 7160 	mov	a,#0x02
      00501B C0 E0            [24] 7161 	push	acc
      00501D E4               [12] 7162 	clr	a
      00501E C0 E0            [24] 7163 	push	acc
      005020 90 80 00         [24] 7164 	mov	dptr,#_s
      005023 75 F0 00         [24] 7165 	mov	b,#0x00
      005026 12 21 46         [24] 7166 	lcall	_state_exec
      005029 AE 82            [24] 7167 	mov	r6,dpl
      00502B AF 83            [24] 7168 	mov	r7,dph
      00502D 15 81            [12] 7169 	dec	sp
      00502F 15 81            [12] 7170 	dec	sp
      005031 C3               [12] 7171 	clr	c
      005032 E4               [12] 7172 	clr	a
      005033 9E               [12] 7173 	subb	a,r6
      005034 74 80            [12] 7174 	mov	a,#(0x00 ^ 0x80)
      005036 8F F0            [24] 7175 	mov	b,r7
      005038 63 F0 80         [24] 7176 	xrl	b,#0x80
      00503B 95 F0            [12] 7177 	subb	a,b
      00503D 50 74            [24] 7178 	jnc	00178$
      00503F 02 4D FC         [24] 7179 	ljmp	00177$
      005042                       7180 00137$:
                                   7181 ;	calc.c:475: ((char)input == '&') ||
      005042 BD 26 02         [24] 7182 	cjne	r5,#0x26,00383$
      005045 80 1C            [24] 7183 	sjmp	00127$
      005047                       7184 00383$:
                                   7185 ;	calc.c:476: ((char)input == '|') || ((char)input == '^') ||
      005047 BD 7C 02         [24] 7186 	cjne	r5,#0x7c,00384$
      00504A 80 17            [24] 7187 	sjmp	00127$
      00504C                       7188 00384$:
      00504C BD 5E 02         [24] 7189 	cjne	r5,#0x5e,00385$
      00504F 80 12            [24] 7190 	sjmp	00127$
      005051                       7191 00385$:
                                   7192 ;	calc.c:477: ((char)input == '~') ||
      005051 BD 7E 02         [24] 7193 	cjne	r5,#0x7e,00386$
      005054 80 0D            [24] 7194 	sjmp	00127$
      005056                       7195 00386$:
                                   7196 ;	calc.c:478: ((char)input == '>') || ((char)input == ']') ||
      005056 BD 3E 02         [24] 7197 	cjne	r5,#0x3e,00387$
      005059 80 08            [24] 7198 	sjmp	00127$
      00505B                       7199 00387$:
      00505B BD 5D 02         [24] 7200 	cjne	r5,#0x5d,00388$
      00505E 80 03            [24] 7201 	sjmp	00127$
      005060                       7202 00388$:
                                   7203 ;	calc.c:479: ((char)input == '<')
      005060 BD 3C 29         [24] 7204 	cjne	r5,#0x3c,00128$
      005063                       7205 00127$:
                                   7206 ;	calc.c:481: if (state_exec(&s, EVENT_OP) <= 0) break;
      005063 74 02            [12] 7207 	mov	a,#0x02
      005065 C0 E0            [24] 7208 	push	acc
      005067 E4               [12] 7209 	clr	a
      005068 C0 E0            [24] 7210 	push	acc
      00506A 90 80 00         [24] 7211 	mov	dptr,#_s
      00506D 75 F0 00         [24] 7212 	mov	b,#0x00
      005070 12 21 46         [24] 7213 	lcall	_state_exec
      005073 AE 82            [24] 7214 	mov	r6,dpl
      005075 AF 83            [24] 7215 	mov	r7,dph
      005077 15 81            [12] 7216 	dec	sp
      005079 15 81            [12] 7217 	dec	sp
      00507B C3               [12] 7218 	clr	c
      00507C E4               [12] 7219 	clr	a
      00507D 9E               [12] 7220 	subb	a,r6
      00507E 74 80            [12] 7221 	mov	a,#(0x00 ^ 0x80)
      005080 8F F0            [24] 7222 	mov	b,r7
      005082 63 F0 80         [24] 7223 	xrl	b,#0x80
      005085 95 F0            [12] 7224 	subb	a,b
      005087 50 2A            [24] 7225 	jnc	00178$
      005089 02 4D FC         [24] 7226 	ljmp	00177$
      00508C                       7227 00128$:
                                   7228 ;	calc.c:483: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      00508C E4               [12] 7229 	clr	a
      00508D C0 E0            [24] 7230 	push	acc
      00508F C0 E0            [24] 7231 	push	acc
      005091 90 80 00         [24] 7232 	mov	dptr,#_s
      005094 75 F0 00         [24] 7233 	mov	b,#0x00
      005097 12 21 46         [24] 7234 	lcall	_state_exec
      00509A AE 82            [24] 7235 	mov	r6,dpl
      00509C AF 83            [24] 7236 	mov	r7,dph
      00509E 15 81            [12] 7237 	dec	sp
      0050A0 15 81            [12] 7238 	dec	sp
      0050A2 C3               [12] 7239 	clr	c
      0050A3 E4               [12] 7240 	clr	a
      0050A4 9E               [12] 7241 	subb	a,r6
      0050A5 74 80            [12] 7242 	mov	a,#(0x00 ^ 0x80)
      0050A7 8F F0            [24] 7243 	mov	b,r7
      0050A9 63 F0 80         [24] 7244 	xrl	b,#0x80
      0050AC 95 F0            [12] 7245 	subb	a,b
      0050AE 50 03            [24] 7246 	jnc	00392$
      0050B0 02 4D FC         [24] 7247 	ljmp	00177$
      0050B3                       7248 00392$:
      0050B3                       7249 00178$:
                                   7250 ;	calc.c:487: PCON |= 2;
      0050B3 43 87 02         [24] 7251 	orl	_PCON,#0x02
                                   7252 ;	calc.c:489: return;
                                   7253 ;	calc.c:490: }
      0050B6 15 81            [12] 7254 	dec	sp
      0050B8 D0 08            [24] 7255 	pop	_bp
      0050BA 22               [24] 7256 	ret
                                   7257 	.area CSEG    (CODE)
                                   7258 	.area CONST   (CODE)
                                   7259 	.area CONST   (CODE)
      007065                       7260 ___str_0:
      007065 0D                    7261 	.db 0x0d
      007066 0A                    7262 	.db 0x0a
      007067 00                    7263 	.db 0x00
                                   7264 	.area CSEG    (CODE)
                                   7265 	.area CONST   (CODE)
      007068                       7266 ___str_1:
      007068 73 74 61 63 6B 20 75  7267 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007077 0D                    7268 	.db 0x0d
      007078 0A                    7269 	.db 0x0a
      007079 00                    7270 	.db 0x00
                                   7271 	.area CSEG    (CODE)
                                   7272 	.area CONST   (CODE)
      00707A                       7273 ___str_2:
      00707A 56 41 20              7274 	.ascii "VA "
      00707D 00                    7275 	.db 0x00
                                   7276 	.area CSEG    (CODE)
                                   7277 	.area CONST   (CODE)
      00707E                       7278 ___str_3:
      00707E 25 20 31 31 6C 64 20  7279 	.ascii "% 11ld / "
             2F 20
      007087 00                    7280 	.db 0x00
                                   7281 	.area CSEG    (CODE)
                                   7282 	.area CONST   (CODE)
      007088                       7283 ___str_4:
      007088 25 30 38 6C 78 20 2F  7284 	.ascii "%08lx / "
             20
      007090 00                    7285 	.db 0x00
                                   7286 	.area CSEG    (CODE)
                                   7287 	.area CONST   (CODE)
      007091                       7288 ___str_5:
      007091 50 41 20              7289 	.ascii "PA "
      007094 00                    7290 	.db 0x00
                                   7291 	.area CSEG    (CODE)
                                   7292 	.area CONST   (CODE)
      007095                       7293 ___str_6:
      007095 50 54 20              7294 	.ascii "PT "
      007098 00                    7295 	.db 0x00
                                   7296 	.area CSEG    (CODE)
                                   7297 	.area CONST   (CODE)
      007099                       7298 ___str_7:
      007099 56 54 20              7299 	.ascii "VT "
      00709C 00                    7300 	.db 0x00
                                   7301 	.area CSEG    (CODE)
                                   7302 	.area CONST   (CODE)
      00709D                       7303 ___str_8:
      00709D 0D                    7304 	.db 0x0d
      00709E 0A                    7305 	.db 0x0a
      00709F 73 74 61 63 6B 20 75  7306 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      0070AE 0D                    7307 	.db 0x0d
      0070AF 0A                    7308 	.db 0x0a
      0070B0 00                    7309 	.db 0x00
                                   7310 	.area CSEG    (CODE)
                                   7311 	.area CONST   (CODE)
      0070B1                       7312 ___str_9:
      0070B1 0D                    7313 	.db 0x0d
      0070B2 0A                    7314 	.db 0x0a
      0070B3 64 69 76 69 73 69 6F  7315 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      0070C3 0D                    7316 	.db 0x0d
      0070C4 0A                    7317 	.db 0x0a
      0070C5 00                    7318 	.db 0x00
                                   7319 	.area CSEG    (CODE)
                                   7320 	.area CONST   (CODE)
      0070C6                       7321 ___str_10:
      0070C6 0D                    7322 	.db 0x0d
      0070C7 0A                    7323 	.db 0x0a
      0070C8 73 74 61 63 6B 20 6F  7324 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      0070D6 0D                    7325 	.db 0x0d
      0070D7 0A                    7326 	.db 0x0a
      0070D8 00                    7327 	.db 0x00
                                   7328 	.area CSEG    (CODE)
                                   7329 	.area CONST   (CODE)
      0070D9                       7330 ___str_11:
      0070D9 0D                    7331 	.db 0x0d
      0070DA 0A                    7332 	.db 0x0a
      0070DB 62 61 73 65 20 3D 20  7333 	.ascii "base = %d, "
             25 64 2C 20
      0070E6 00                    7334 	.db 0x00
                                   7335 	.area CSEG    (CODE)
                                   7336 	.area CONST   (CODE)
      0070E7                       7337 ___str_12:
      0070E7 61 63 63 20 3D 20 25  7338 	.ascii "acc = %ld / "
             6C 64 20 2F 20
      0070F3 00                    7339 	.db 0x00
                                   7340 	.area CSEG    (CODE)
                                   7341 	.area CONST   (CODE)
      0070F4                       7342 ___str_13:
      0070F4 2C 20 61 63 63 5F 76  7343 	.ascii ", acc_valid = %d"
             61 6C 69 64 20 3D 20
             25 64
      007104 0D                    7344 	.db 0x0d
      007105 0A                    7345 	.db 0x0a
      007106 0D                    7346 	.db 0x0d
      007107 0A                    7347 	.db 0x0a
      007108 00                    7348 	.db 0x00
                                   7349 	.area CSEG    (CODE)
                                   7350 	.area CONST   (CODE)
      007109                       7351 ___str_14:
      007109 48 68 4F 6F           7352 	.ascii "HhOo"
      00710D 09                    7353 	.db 0x09
      00710E 62 61 73 65 20 31 36  7354 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      00711C 0D                    7355 	.db 0x0d
      00711D 0A                    7356 	.db 0x0a
      00711E 00                    7357 	.db 0x00
                                   7358 	.area CSEG    (CODE)
                                   7359 	.area CONST   (CODE)
      00711F                       7360 ___str_15:
      00711F 70                    7361 	.ascii "p"
      007120 09                    7362 	.db 0x09
      007121 70 65 65 6B 20 74 6F  7363 	.ascii "peek top"
             70
      007129 0D                    7364 	.db 0x0d
      00712A 0A                    7365 	.db 0x0a
      00712B 00                    7366 	.db 0x00
                                   7367 	.area CSEG    (CODE)
                                   7368 	.area CONST   (CODE)
      00712C                       7369 ___str_16:
      00712C 50                    7370 	.ascii "P"
      00712D 09                    7371 	.db 0x09
      00712E 70 72 69 6E 74 20 73  7372 	.ascii "print stack"
             74 61 63 6B
      007139 0D                    7373 	.db 0x0d
      00713A 0A                    7374 	.db 0x0a
      00713B 00                    7375 	.db 0x00
                                   7376 	.area CSEG    (CODE)
                                   7377 	.area CONST   (CODE)
      00713C                       7378 ___str_17:
      00713C 76 2E                 7379 	.ascii "v."
      00713E 09                    7380 	.db 0x09
      00713F 70 6F 70 20 74 6F 70  7381 	.ascii "pop top"
      007146 0D                    7382 	.db 0x0d
      007147 0A                    7383 	.db 0x0a
      007148 00                    7384 	.db 0x00
                                   7385 	.area CSEG    (CODE)
                                   7386 	.area CONST   (CODE)
      007149                       7387 ___str_18:
      007149 56                    7388 	.ascii "V"
      00714A 09                    7389 	.db 0x09
      00714B 70 6F 70 20 61 6C 6C  7390 	.ascii "pop all"
      007152 0D                    7391 	.db 0x0d
      007153 0A                    7392 	.db 0x0a
      007154 00                    7393 	.db 0x00
                                   7394 	.area CSEG    (CODE)
                                   7395 	.area CONST   (CODE)
      007155                       7396 ___str_19:
      007155 69                    7397 	.ascii "i"
      007156 09                    7398 	.db 0x09
      007157 72 65 73 65 74 20 61  7399 	.ascii "reset acc"
             63 63
      007160 0D                    7400 	.db 0x0d
      007161 0A                    7401 	.db 0x0a
      007162 00                    7402 	.db 0x00
                                   7403 	.area CSEG    (CODE)
                                   7404 	.area CONST   (CODE)
      007163                       7405 ___str_20:
      007163 49                    7406 	.ascii "I"
      007164 09                    7407 	.db 0x09
      007165 72 65 73 65 74 20 61  7408 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      00717A 0D                    7409 	.db 0x0d
      00717B 0A                    7410 	.db 0x0a
      00717C 00                    7411 	.db 0x00
                                   7412 	.area CSEG    (CODE)
                                   7413 	.area CONST   (CODE)
      00717D                       7414 ___str_21:
      00717D 78                    7415 	.ascii "x"
      00717E 09                    7416 	.db 0x09
      00717F 65 78 63 68 61 6E 67  7417 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      00718D 0D                    7418 	.db 0x0d
      00718E 0A                    7419 	.db 0x0a
      00718F 00                    7420 	.db 0x00
                                   7421 	.area CSEG    (CODE)
                                   7422 	.area CONST   (CODE)
      007190                       7423 ___str_22:
      007190 2B                    7424 	.ascii "+"
      007191 09                    7425 	.db 0x09
      007192 61 64 64 20 74 6F 70  7426 	.ascii "add top 2"
             20 32
      00719B 0D                    7427 	.db 0x0d
      00719C 0A                    7428 	.db 0x0a
      00719D 00                    7429 	.db 0x00
                                   7430 	.area CSEG    (CODE)
                                   7431 	.area CONST   (CODE)
      00719E                       7432 ___str_23:
      00719E 2D                    7433 	.ascii "-"
      00719F 09                    7434 	.db 0x09
      0071A0 73 75 62 74 72 61 63  7435 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      0071AE 0D                    7436 	.db 0x0d
      0071AF 0A                    7437 	.db 0x0a
      0071B0 00                    7438 	.db 0x00
                                   7439 	.area CSEG    (CODE)
                                   7440 	.area CONST   (CODE)
      0071B1                       7441 ___str_24:
      0071B1 2A                    7442 	.ascii "*"
      0071B2 09                    7443 	.db 0x09
      0071B3 6D 75 6C 74 69 70 6C  7444 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      0071C1 0D                    7445 	.db 0x0d
      0071C2 0A                    7446 	.db 0x0a
      0071C3 00                    7447 	.db 0x00
                                   7448 	.area CSEG    (CODE)
                                   7449 	.area CONST   (CODE)
      0071C4                       7450 ___str_25:
      0071C4 2F                    7451 	.ascii "/"
      0071C5 09                    7452 	.db 0x09
      0071C6 64 69 76 69 64 65 20  7453 	.ascii "divide top 2"
             74 6F 70 20 32
      0071D2 0D                    7454 	.db 0x0d
      0071D3 0A                    7455 	.db 0x0a
      0071D4 00                    7456 	.db 0x00
                                   7457 	.area CSEG    (CODE)
                                   7458 	.area CONST   (CODE)
      0071D5                       7459 ___str_26:
      0071D5 5C                    7460 	.db 0x5c
      0071D6 09                    7461 	.db 0x09
      0071D7 64 69 76 69 64 65 20  7462 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      0071EC 0D                    7463 	.db 0x0d
      0071ED 0A                    7464 	.db 0x0a
      0071EE 00                    7465 	.db 0x00
                                   7466 	.area CSEG    (CODE)
                                   7467 	.area CONST   (CODE)
      0071EF                       7468 ___str_27:
      0071EF 25                    7469 	.ascii "%"
      0071F0 09                    7470 	.db 0x09
      0071F1 6D 6F 64 75 6C 75 73  7471 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      0071FE 0D                    7472 	.db 0x0d
      0071FF 0A                    7473 	.db 0x0a
      007200 00                    7474 	.db 0x00
                                   7475 	.area CSEG    (CODE)
                                   7476 	.area CONST   (CODE)
      007201                       7477 ___str_28:
      007201 23                    7478 	.ascii "#"
      007202 09                    7479 	.db 0x09
      007203 6D 6F 64 75 6C 75 73  7480 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      007219 0D                    7481 	.db 0x0d
      00721A 0A                    7482 	.db 0x0a
      00721B 00                    7483 	.db 0x00
                                   7484 	.area CSEG    (CODE)
                                   7485 	.area CONST   (CODE)
      00721C                       7486 ___str_29:
      00721C 26                    7487 	.ascii "&"
      00721D 09                    7488 	.db 0x09
      00721E 61 6E 64 20 74 6F 70  7489 	.ascii "and top 2"
             20 32
      007227 0D                    7490 	.db 0x0d
      007228 0A                    7491 	.db 0x0a
      007229 00                    7492 	.db 0x00
                                   7493 	.area CSEG    (CODE)
                                   7494 	.area CONST   (CODE)
      00722A                       7495 ___str_30:
      00722A 7C                    7496 	.ascii "|"
      00722B 09                    7497 	.db 0x09
      00722C 6F 72 20 74 6F 70 20  7498 	.ascii "or top 2"
             32
      007234 0D                    7499 	.db 0x0d
      007235 0A                    7500 	.db 0x0a
      007236 00                    7501 	.db 0x00
                                   7502 	.area CSEG    (CODE)
                                   7503 	.area CONST   (CODE)
      007237                       7504 ___str_31:
      007237 5E                    7505 	.ascii "^"
      007238 09                    7506 	.db 0x09
      007239 78 6F 72 20 74 6F 70  7507 	.ascii "xor top 2"
             20 32
      007242 0D                    7508 	.db 0x0d
      007243 0A                    7509 	.db 0x0a
      007244 00                    7510 	.db 0x00
                                   7511 	.area CSEG    (CODE)
                                   7512 	.area CONST   (CODE)
      007245                       7513 ___str_32:
      007245 3E                    7514 	.ascii ">"
      007246 09                    7515 	.db 0x09
      007247 73 68 69 66 74 20 72  7516 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      007258 0D                    7517 	.db 0x0d
      007259 0A                    7518 	.db 0x0a
      00725A 00                    7519 	.db 0x00
                                   7520 	.area CSEG    (CODE)
                                   7521 	.area CONST   (CODE)
      00725B                       7522 ___str_33:
      00725B 5D                    7523 	.ascii "]"
      00725C 09                    7524 	.db 0x09
      00725D 61 72 69 74 68 6D 65  7525 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      007279 0D                    7526 	.db 0x0d
      00727A 0A                    7527 	.db 0x0a
      00727B 00                    7528 	.db 0x00
                                   7529 	.area CSEG    (CODE)
                                   7530 	.area CONST   (CODE)
      00727C                       7531 ___str_34:
      00727C 3C                    7532 	.ascii "<"
      00727D 09                    7533 	.db 0x09
      00727E 73 68 69 66 74 20 6C  7534 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      00728E 0D                    7535 	.db 0x0d
      00728F 0A                    7536 	.db 0x0a
      007290 00                    7537 	.db 0x00
                                   7538 	.area CSEG    (CODE)
                                   7539 	.area CONST   (CODE)
      007291                       7540 ___str_35:
      007291 7E                    7541 	.ascii "~"
      007292 09                    7542 	.db 0x09
      007293 62 69 74 77 69 73 65  7543 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      0072A2 0D                    7544 	.db 0x0d
      0072A3 0A                    7545 	.db 0x0a
      0072A4 00                    7546 	.db 0x00
                                   7547 	.area CSEG    (CODE)
                                   7548 	.area CONST   (CODE)
      0072A5                       7549 ___str_36:
      0072A5 3F                    7550 	.ascii "?"
      0072A6 09                    7551 	.db 0x09
      0072A7 68 65 6C 70           7552 	.ascii "help"
      0072AB 0D                    7553 	.db 0x0d
      0072AC 0A                    7554 	.db 0x0a
      0072AD 00                    7555 	.db 0x00
                                   7556 	.area CSEG    (CODE)
                                   7557 	.area CONST   (CODE)
      0072AE                       7558 ___str_37:
      0072AE 71                    7559 	.ascii "q"
      0072AF 09                    7560 	.db 0x09
      0072B0 71 75 69 74           7561 	.ascii "quit"
      0072B4 0D                    7562 	.db 0x0d
      0072B5 0A                    7563 	.db 0x0a
      0072B6 00                    7564 	.db 0x00
                                   7565 	.area CSEG    (CODE)
                                   7566 	.area XINIT   (CODE)
      0072C8                       7567 __xinit__deltas:
      0072C8 00 00                 7568 	.byte #0x00, #0x00	;  0
      0072CA 00 00                 7569 	.byte #0x00, #0x00	;  0
      0072CC 00 00                 7570 	.byte #0x00, #0x00	;  0
      0072CE 00 00                 7571 	.byte #0x00,#0x00
      0072D0 00 00                 7572 	.byte #0x00,#0x00
      0072D2 00 00                 7573 	.byte #0x00, #0x00	;  0
      0072D4 01 00                 7574 	.byte #0x01, #0x00	;  1
      0072D6 02 00                 7575 	.byte #0x02, #0x00	;  2
      0072D8 00 00                 7576 	.byte #0x00,#0x00
      0072DA E2 29                 7577 	.byte _accumulate, (_accumulate >> 8)
      0072DC 00 00                 7578 	.byte #0x00, #0x00	;  0
      0072DE 02 00                 7579 	.byte #0x02, #0x00	;  2
      0072E0 01 00                 7580 	.byte #0x01, #0x00	;  1
      0072E2 00 00                 7581 	.byte #0x00,#0x00
      0072E4 3B 2F                 7582 	.byte _operator, (_operator >> 8)
      0072E6 01 00                 7583 	.byte #0x01, #0x00	;  1
      0072E8 00 00                 7584 	.byte #0x00, #0x00	;  0
      0072EA 00 00                 7585 	.byte #0x00, #0x00	;  0
      0072EC 00 00                 7586 	.byte #0x00,#0x00
      0072EE 00 00                 7587 	.byte #0x00,#0x00
      0072F0 01 00                 7588 	.byte #0x01, #0x00	;  1
      0072F2 02 00                 7589 	.byte #0x02, #0x00	;  2
      0072F4 01 00                 7590 	.byte #0x01, #0x00	;  1
      0072F6 00 00                 7591 	.byte #0x00,#0x00
      0072F8 3B 2F                 7592 	.byte _operator, (_operator >> 8)
      0072FA 01 00                 7593 	.byte #0x01, #0x00	;  1
      0072FC 01 00                 7594 	.byte #0x01, #0x00	;  1
      0072FE 02 00                 7595 	.byte #0x02, #0x00	;  2
      007300 00 00                 7596 	.byte #0x00,#0x00
      007302 E2 29                 7597 	.byte _accumulate, (_accumulate >> 8)
      007304 02 00                 7598 	.byte #0x02, #0x00	;  2
      007306 00 00                 7599 	.byte #0x00, #0x00	;  0
      007308 00 00                 7600 	.byte #0x00, #0x00	;  0
      00730A 00 00                 7601 	.byte #0x00,#0x00
      00730C CE 46                 7602 	.byte _push_acc, (_push_acc >> 8)
      00730E 02 00                 7603 	.byte #0x02, #0x00	;  2
      007310 06 00                 7604 	.byte #0x06, #0x00	;  6
      007312 00 00                 7605 	.byte #0x00, #0x00	;  0
      007314 00 00                 7606 	.byte #0x00,#0x00
      007316 D5 47                 7607 	.byte _reset_acc, (_reset_acc >> 8)
      007318 02 00                 7608 	.byte #0x02, #0x00	;  2
      00731A 01 00                 7609 	.byte #0x01, #0x00	;  1
      00731C 02 00                 7610 	.byte #0x02, #0x00	;  2
      00731E 00 00                 7611 	.byte #0x00,#0x00
      007320 E2 29                 7612 	.byte _accumulate, (_accumulate >> 8)
      007322 02 00                 7613 	.byte #0x02, #0x00	;  2
      007324 02 00                 7614 	.byte #0x02, #0x00	;  2
      007326 01 00                 7615 	.byte #0x01, #0x00	;  1
      007328 00 00                 7616 	.byte #0x00,#0x00
      00732A CE 46                 7617 	.byte _push_acc, (_push_acc >> 8)
      00732C FF 7F                 7618 	.byte #0xff, #0x7f	;  32767
      00732E 05 00                 7619 	.byte #0x05, #0x00	;  5
      007330 FF 7F                 7620 	.byte #0xff, #0x7f	;  32767
      007332 00 00                 7621 	.byte #0x00,#0x00
      007334 D5 47                 7622 	.byte _reset_acc, (_reset_acc >> 8)
      007336 FF 7F                 7623 	.byte #0xff, #0x7f	;  32767
      007338 06 00                 7624 	.byte #0x06, #0x00	;  6
      00733A FF 7F                 7625 	.byte #0xff, #0x7f	;  32767
      00733C 00 00                 7626 	.byte #0x00,#0x00
      00733E 00 00                 7627 	.byte #0x00,#0x00
      007340 FF 7F                 7628 	.byte #0xff, #0x7f	;  32767
      007342 04 00                 7629 	.byte #0x04, #0x00	;  4
      007344 FF 7F                 7630 	.byte #0xff, #0x7f	;  32767
      007346 00 00                 7631 	.byte #0x00,#0x00
      007348 3F 48                 7632 	.byte _reset_base, (_reset_base >> 8)
      00734A FF 7F                 7633 	.byte #0xff, #0x7f	;  32767
      00734C 03 00                 7634 	.byte #0x03, #0x00	;  3
      00734E FF 7F                 7635 	.byte #0xff, #0x7f	;  32767
      007350 00 00                 7636 	.byte #0x00,#0x00
      007352 BD 48                 7637 	.byte _help, (_help >> 8)
      007354 FF 7F                 7638 	.byte #0xff, #0x7f	;  32767
      007356 07 00                 7639 	.byte #0x07, #0x00	;  7
      007358 03 00                 7640 	.byte #0x03, #0x00	;  3
      00735A 00 00                 7641 	.byte #0x00,#0x00
      00735C 53 2B                 7642 	.byte _dump_pop, (_dump_pop >> 8)
      00735E 00 80                 7643 	.byte #0x00, #0x80	; -32768
      007360 00 80                 7644 	.byte #0x00, #0x80	; -32768
      007362 00 80                 7645 	.byte #0x00, #0x80	; -32768
      007364 00 00                 7646 	.byte #0x00,#0x00
      007366 00 00                 7647 	.byte #0x00,#0x00
                                   7648 	.area CABS    (ABS,CODE)
