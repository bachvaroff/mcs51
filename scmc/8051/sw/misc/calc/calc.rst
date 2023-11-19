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
                                     16 	.globl _stack_peek
                                     17 	.globl _stack_pop
                                     18 	.globl _stack_push
                                     19 	.globl _stack_init
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
      009000                        321 _s:
      009000                        322 	.ds 12
      00900C                        323 _c:
      00900C                        324 	.ds 16407
                                    325 ;--------------------------------------------------------
                                    326 ; absolute external ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area XABS    (ABS,XDATA)
                                    329 ;--------------------------------------------------------
                                    330 ; external initialized ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XISEG   (XDATA)
      00D025                        333 _deltas:
      00D025                        334 	.ds 170
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
      002003 02 5C 51         [24]  372 	ljmp	_main
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
                                    383 ;	calc.c:16: int putchar(int c) __naked {
                                    384 ;	-----------------------------------------
                                    385 ;	 function putchar
                                    386 ;	-----------------------------------------
      0029C0                        387 _putchar:
                                    388 ;	naked function: no prologue.
                                    389 ;	calc.c:21: __endasm;
      0029C0 E5 82            [12]  390 	mov	a, dpl
      0029C2 02 00 30         [24]  391 	ljmp	0x0030
                                    392 ;	calc.c:22: }
                                    393 ;	naked function: no epilogue.
                                    394 ;------------------------------------------------------------
                                    395 ;Allocation info for local variables in function 'getchar'
                                    396 ;------------------------------------------------------------
                                    397 ;	calc.c:24: int getchar(void) __naked {
                                    398 ;	-----------------------------------------
                                    399 ;	 function getchar
                                    400 ;	-----------------------------------------
      0029C5                        401 _getchar:
                                    402 ;	naked function: no prologue.
                                    403 ;	calc.c:30: __endasm;
      0029C5 12 00 32         [24]  404 	lcall	0x0032
      0029C8 F5 82            [12]  405 	mov	dpl, a
      0029CA 75 83 00         [24]  406 	mov	dph, #0
      0029CD 22               [24]  407 	ret
                                    408 ;	calc.c:31: }
                                    409 ;	naked function: no epilogue.
                                    410 ;------------------------------------------------------------
                                    411 ;Allocation info for local variables in function 'getchar_poll'
                                    412 ;------------------------------------------------------------
                                    413 ;	calc.c:33: int getchar_poll(void) __naked {
                                    414 ;	-----------------------------------------
                                    415 ;	 function getchar_poll
                                    416 ;	-----------------------------------------
      0029CE                        417 _getchar_poll:
                                    418 ;	naked function: no prologue.
                                    419 ;	calc.c:45: __endasm;
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
                                    430 ;	calc.c:46: }
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
                                    442 ;	calc.c:63: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
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
                                    463 ;	calc.c:64: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      0029F2 E5 08            [12]  464 	mov	a,_bp
      0029F4 24 08            [12]  465 	add	a,#0x08
      0029F6 F8               [12]  466 	mov	r0,a
      0029F7 A6 05            [24]  467 	mov	@r0,ar5
      0029F9 08               [12]  468 	inc	r0
      0029FA A6 06            [24]  469 	mov	@r0,ar6
      0029FC 08               [12]  470 	inc	r0
      0029FD A6 07            [24]  471 	mov	@r0,ar7
                                    472 ;	calc.c:69: if (!ctx->acc_valid) {
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
      002A15 12 67 7F         [24]  488 	lcall	__gptrget
      002A18 70 31            [24]  489 	jnz	00102$
                                    490 ;	calc.c:70: ctx->acc_valid = 1;
      002A1A 8A 82            [24]  491 	mov	dpl,r2
      002A1C 8B 83            [24]  492 	mov	dph,r3
      002A1E 8C F0            [24]  493 	mov	b,r4
      002A20 74 01            [12]  494 	mov	a,#0x01
      002A22 12 63 04         [24]  495 	lcall	__gptrput
                                    496 ;	calc.c:71: ctx->acc = 0l;
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
      002A3C 12 63 04         [24]  513 	lcall	__gptrput
      002A3F A3               [24]  514 	inc	dptr
      002A40 12 63 04         [24]  515 	lcall	__gptrput
      002A43 A3               [24]  516 	inc	dptr
      002A44 12 63 04         [24]  517 	lcall	__gptrput
      002A47 A3               [24]  518 	inc	dptr
      002A48 12 63 04         [24]  519 	lcall	__gptrput
      002A4B                        520 00102$:
                                    521 ;	calc.c:74: d = strtol(ctx->digit, NULL, ctx->base);
      002A4B E5 08            [12]  522 	mov	a,_bp
      002A4D 24 08            [12]  523 	add	a,#0x08
      002A4F F8               [12]  524 	mov	r0,a
      002A50 86 82            [24]  525 	mov	dpl,@r0
      002A52 08               [12]  526 	inc	r0
      002A53 86 83            [24]  527 	mov	dph,@r0
      002A55 08               [12]  528 	inc	r0
      002A56 86 F0            [24]  529 	mov	b,@r0
      002A58 12 67 7F         [24]  530 	lcall	__gptrget
      002A5B FB               [12]  531 	mov	r3,a
      002A5C A3               [24]  532 	inc	dptr
      002A5D 12 67 7F         [24]  533 	lcall	__gptrget
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
      002A82 12 60 C6         [24]  556 	lcall	_strtol
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
                                    571 ;	calc.c:75: ctx->acc = ctx->acc * (long)ctx->base + d;
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
      002AC0 12 67 7F         [24]  599 	lcall	__gptrget
      002AC3 F7               [12]  600 	mov	@r1,a
      002AC4 A3               [24]  601 	inc	dptr
      002AC5 12 67 7F         [24]  602 	lcall	__gptrget
      002AC8 09               [12]  603 	inc	r1
      002AC9 F7               [12]  604 	mov	@r1,a
      002ACA A3               [24]  605 	inc	dptr
      002ACB 12 67 7F         [24]  606 	lcall	__gptrget
      002ACE 09               [12]  607 	inc	r1
      002ACF F7               [12]  608 	mov	@r1,a
      002AD0 A3               [24]  609 	inc	dptr
      002AD1 12 67 7F         [24]  610 	lcall	__gptrget
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
      002AE3 12 67 7F         [24]  621 	lcall	__gptrget
      002AE6 FA               [12]  622 	mov	r2,a
      002AE7 A3               [24]  623 	inc	dptr
      002AE8 12 67 7F         [24]  624 	lcall	__gptrget
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
      002B08 12 6B 78         [24]  644 	lcall	__mullong
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
      002B38 12 63 04         [24]  678 	lcall	__gptrput
      002B3B A3               [24]  679 	inc	dptr
      002B3C ED               [12]  680 	mov	a,r5
      002B3D 12 63 04         [24]  681 	lcall	__gptrput
      002B40 A3               [24]  682 	inc	dptr
      002B41 EE               [12]  683 	mov	a,r6
      002B42 12 63 04         [24]  684 	lcall	__gptrput
      002B45 A3               [24]  685 	inc	dptr
      002B46 EF               [12]  686 	mov	a,r7
      002B47 12 63 04         [24]  687 	lcall	__gptrput
                                    688 ;	calc.c:77: return 1;
      002B4A 90 00 01         [24]  689 	mov	dptr,#0x0001
                                    690 ;	calc.c:78: }
      002B4D 85 08 81         [24]  691 	mov	sp,_bp
      002B50 D0 08            [24]  692 	pop	_bp
      002B52 22               [24]  693 	ret
                                    694 ;------------------------------------------------------------
                                    695 ;Allocation info for local variables in function 'dump_pop'
                                    696 ;------------------------------------------------------------
                                    697 ;delta                     Allocated to stack - _bp -5
                                    698 ;_ctx                      Allocated to registers r5 r6 r7 
                                    699 ;ctx                       Allocated to stack - _bp +11
                                    700 ;d                         Allocated to stack - _bp +14
                                    701 ;r                         Allocated to registers r5 r6 
                                    702 ;__1310720001              Allocated to registers 
                                    703 ;s                         Allocated to registers r5 r6 r7 
                                    704 ;__1966080003              Allocated to registers 
                                    705 ;s                         Allocated to registers r4 r5 r6 
                                    706 ;__1966080005              Allocated to registers 
                                    707 ;s                         Allocated to registers r3 r4 r5 
                                    708 ;__1966080007              Allocated to registers r2 r3 r4 r5 
                                    709 ;d                         Allocated to stack - _bp +18
                                    710 ;mask                      Allocated to stack - _bp +22
                                    711 ;__1966080009              Allocated to registers 
                                    712 ;s                         Allocated to registers r3 r4 r5 
                                    713 ;__1966080011              Allocated to registers 
                                    714 ;s                         Allocated to registers r4 r5 r6 
                                    715 ;__3276800013              Allocated to registers 
                                    716 ;s                         Allocated to registers r5 r3 r2 
                                    717 ;__3276800015              Allocated to registers r2 r3 r4 r7 
                                    718 ;d                         Allocated to stack - _bp +18
                                    719 ;mask                      Allocated to stack - _bp +22
                                    720 ;__3276800017              Allocated to registers 
                                    721 ;s                         Allocated to registers r5 r3 r2 
                                    722 ;sloc0                     Allocated to stack - _bp +1
                                    723 ;sloc1                     Allocated to stack - _bp +2
                                    724 ;sloc2                     Allocated to stack - _bp +5
                                    725 ;sloc3                     Allocated to stack - _bp +8
                                    726 ;------------------------------------------------------------
                                    727 ;	calc.c:80: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    728 ;	-----------------------------------------
                                    729 ;	 function dump_pop
                                    730 ;	-----------------------------------------
      002B53                        731 _dump_pop:
      002B53 C0 08            [24]  732 	push	_bp
      002B55 E5 81            [12]  733 	mov	a,sp
      002B57 F5 08            [12]  734 	mov	_bp,a
      002B59 24 19            [12]  735 	add	a,#0x19
      002B5B F5 81            [12]  736 	mov	sp,a
      002B5D AD 82            [24]  737 	mov	r5,dpl
      002B5F AE 83            [24]  738 	mov	r6,dph
      002B61 AF F0            [24]  739 	mov	r7,b
                                    740 ;	calc.c:81: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002B63 E5 08            [12]  741 	mov	a,_bp
      002B65 24 0B            [12]  742 	add	a,#0x0b
      002B67 F8               [12]  743 	mov	r0,a
      002B68 A6 05            [24]  744 	mov	@r0,ar5
      002B6A 08               [12]  745 	inc	r0
      002B6B A6 06            [24]  746 	mov	@r0,ar6
      002B6D 08               [12]  747 	inc	r0
      002B6E A6 07            [24]  748 	mov	@r0,ar7
                                    749 ;	calc.c:85: if (delta->event == EVENT_TERM) printstr("\r\nPS\r\n");
      002B70 E5 08            [12]  750 	mov	a,_bp
      002B72 24 FB            [12]  751 	add	a,#0xfb
      002B74 F8               [12]  752 	mov	r0,a
      002B75 86 02            [24]  753 	mov	ar2,@r0
      002B77 08               [12]  754 	inc	r0
      002B78 86 03            [24]  755 	mov	ar3,@r0
      002B7A 08               [12]  756 	inc	r0
      002B7B 86 04            [24]  757 	mov	ar4,@r0
      002B7D E5 08            [12]  758 	mov	a,_bp
      002B7F 24 08            [12]  759 	add	a,#0x08
      002B81 F8               [12]  760 	mov	r0,a
      002B82 74 02            [12]  761 	mov	a,#0x02
      002B84 2A               [12]  762 	add	a,r2
      002B85 F6               [12]  763 	mov	@r0,a
      002B86 E4               [12]  764 	clr	a
      002B87 3B               [12]  765 	addc	a,r3
      002B88 08               [12]  766 	inc	r0
      002B89 F6               [12]  767 	mov	@r0,a
      002B8A 08               [12]  768 	inc	r0
      002B8B A6 04            [24]  769 	mov	@r0,ar4
      002B8D E5 08            [12]  770 	mov	a,_bp
      002B8F 24 08            [12]  771 	add	a,#0x08
      002B91 F8               [12]  772 	mov	r0,a
      002B92 86 82            [24]  773 	mov	dpl,@r0
      002B94 08               [12]  774 	inc	r0
      002B95 86 83            [24]  775 	mov	dph,@r0
      002B97 08               [12]  776 	inc	r0
      002B98 86 F0            [24]  777 	mov	b,@r0
      002B9A 12 67 7F         [24]  778 	lcall	__gptrget
      002B9D FE               [12]  779 	mov	r6,a
      002B9E A3               [24]  780 	inc	dptr
      002B9F 12 67 7F         [24]  781 	lcall	__gptrget
      002BA2 FF               [12]  782 	mov	r7,a
      002BA3 BE 08 27         [24]  783 	cjne	r6,#0x08,00102$
      002BA6 BF 00 24         [24]  784 	cjne	r7,#0x00,00102$
      002BA9 7D 00            [12]  785 	mov	r5,#___str_0
      002BAB 7E 80            [12]  786 	mov	r6,#(___str_0 >> 8)
      002BAD 7F 80            [12]  787 	mov	r7,#0x80
                                    788 ;	calc.c:51: return;
      002BAF                        789 00133$:
                                    790 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002BAF 8D 82            [24]  791 	mov	dpl,r5
      002BB1 8E 83            [24]  792 	mov	dph,r6
      002BB3 8F F0            [24]  793 	mov	b,r7
      002BB5 12 67 7F         [24]  794 	lcall	__gptrget
      002BB8 FC               [12]  795 	mov	r4,a
      002BB9 60 12            [24]  796 	jz	00102$
      002BBB 8C 03            [24]  797 	mov	ar3,r4
      002BBD 7C 00            [12]  798 	mov	r4,#0x00
      002BBF 8B 82            [24]  799 	mov	dpl,r3
      002BC1 8C 83            [24]  800 	mov	dph,r4
      002BC3 12 29 C0         [24]  801 	lcall	_putchar
      002BC6 0D               [12]  802 	inc	r5
                                    803 ;	calc.c:85: if (delta->event == EVENT_TERM) printstr("\r\nPS\r\n");
      002BC7 BD 00 E5         [24]  804 	cjne	r5,#0x00,00133$
      002BCA 0E               [12]  805 	inc	r6
      002BCB 80 E2            [24]  806 	sjmp	00133$
      002BCD                        807 00102$:
                                    808 ;	calc.c:86: r = stack_pop(ctx->ps, &d);
      002BCD E5 08            [12]  809 	mov	a,_bp
      002BCF 24 0E            [12]  810 	add	a,#0x0e
      002BD1 FF               [12]  811 	mov	r7,a
      002BD2 E5 08            [12]  812 	mov	a,_bp
      002BD4 24 05            [12]  813 	add	a,#0x05
      002BD6 F8               [12]  814 	mov	r0,a
      002BD7 A6 07            [24]  815 	mov	@r0,ar7
      002BD9 08               [12]  816 	inc	r0
      002BDA 76 00            [12]  817 	mov	@r0,#0x00
      002BDC 08               [12]  818 	inc	r0
      002BDD 76 40            [12]  819 	mov	@r0,#0x40
      002BDF E5 08            [12]  820 	mov	a,_bp
      002BE1 24 0B            [12]  821 	add	a,#0x0b
      002BE3 F8               [12]  822 	mov	r0,a
      002BE4 A9 08            [24]  823 	mov	r1,_bp
      002BE6 09               [12]  824 	inc	r1
      002BE7 09               [12]  825 	inc	r1
      002BE8 74 11            [12]  826 	mov	a,#0x11
      002BEA 26               [12]  827 	add	a,@r0
      002BEB F7               [12]  828 	mov	@r1,a
      002BEC 74 40            [12]  829 	mov	a,#0x40
      002BEE 08               [12]  830 	inc	r0
      002BEF 36               [12]  831 	addc	a,@r0
      002BF0 09               [12]  832 	inc	r1
      002BF1 F7               [12]  833 	mov	@r1,a
      002BF2 08               [12]  834 	inc	r0
      002BF3 09               [12]  835 	inc	r1
      002BF4 E6               [12]  836 	mov	a,@r0
      002BF5 F7               [12]  837 	mov	@r1,a
      002BF6 A8 08            [24]  838 	mov	r0,_bp
      002BF8 08               [12]  839 	inc	r0
      002BF9 08               [12]  840 	inc	r0
      002BFA 86 82            [24]  841 	mov	dpl,@r0
      002BFC 08               [12]  842 	inc	r0
      002BFD 86 83            [24]  843 	mov	dph,@r0
      002BFF 08               [12]  844 	inc	r0
      002C00 86 F0            [24]  845 	mov	b,@r0
      002C02 12 67 7F         [24]  846 	lcall	__gptrget
      002C05 FA               [12]  847 	mov	r2,a
      002C06 A3               [24]  848 	inc	dptr
      002C07 12 67 7F         [24]  849 	lcall	__gptrget
      002C0A FB               [12]  850 	mov	r3,a
      002C0B A3               [24]  851 	inc	dptr
      002C0C 12 67 7F         [24]  852 	lcall	__gptrget
      002C0F FE               [12]  853 	mov	r6,a
      002C10 C0 07            [24]  854 	push	ar7
      002C12 E5 08            [12]  855 	mov	a,_bp
      002C14 24 05            [12]  856 	add	a,#0x05
      002C16 F8               [12]  857 	mov	r0,a
      002C17 E6               [12]  858 	mov	a,@r0
      002C18 C0 E0            [24]  859 	push	acc
      002C1A 08               [12]  860 	inc	r0
      002C1B E6               [12]  861 	mov	a,@r0
      002C1C C0 E0            [24]  862 	push	acc
      002C1E 08               [12]  863 	inc	r0
      002C1F E6               [12]  864 	mov	a,@r0
      002C20 C0 E0            [24]  865 	push	acc
      002C22 8A 82            [24]  866 	mov	dpl,r2
      002C24 8B 83            [24]  867 	mov	dph,r3
      002C26 8E F0            [24]  868 	mov	b,r6
      002C28 12 27 7F         [24]  869 	lcall	_stack_pop
      002C2B AE 82            [24]  870 	mov	r6,dpl
      002C2D AD 83            [24]  871 	mov	r5,dph
      002C2F 15 81            [12]  872 	dec	sp
      002C31 15 81            [12]  873 	dec	sp
      002C33 15 81            [12]  874 	dec	sp
      002C35 D0 07            [24]  875 	pop	ar7
                                    876 ;	calc.c:87: if (!r) {
      002C37 EE               [12]  877 	mov	a,r6
      002C38 4D               [12]  878 	orl	a,r5
      002C39 70 44            [24]  879 	jnz	00181$
                                    880 ;	calc.c:88: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002C3B E5 08            [12]  881 	mov	a,_bp
      002C3D 24 08            [12]  882 	add	a,#0x08
      002C3F F8               [12]  883 	mov	r0,a
      002C40 86 82            [24]  884 	mov	dpl,@r0
      002C42 08               [12]  885 	inc	r0
      002C43 86 83            [24]  886 	mov	dph,@r0
      002C45 08               [12]  887 	inc	r0
      002C46 86 F0            [24]  888 	mov	b,@r0
      002C48 12 67 7F         [24]  889 	lcall	__gptrget
      002C4B FD               [12]  890 	mov	r5,a
      002C4C A3               [24]  891 	inc	dptr
      002C4D 12 67 7F         [24]  892 	lcall	__gptrget
      002C50 FE               [12]  893 	mov	r6,a
      002C51 BD 08 06         [24]  894 	cjne	r5,#0x08,00318$
      002C54 BE 00 03         [24]  895 	cjne	r6,#0x00,00318$
      002C57 02 2E 05         [24]  896 	ljmp	00110$
      002C5A                        897 00318$:
      002C5A 7C 07            [12]  898 	mov	r4,#___str_1
      002C5C 7D 80            [12]  899 	mov	r5,#(___str_1 >> 8)
      002C5E 7E 80            [12]  900 	mov	r6,#0x80
                                    901 ;	calc.c:51: return;
      002C60                        902 00136$:
                                    903 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002C60 8C 82            [24]  904 	mov	dpl,r4
      002C62 8D 83            [24]  905 	mov	dph,r5
      002C64 8E F0            [24]  906 	mov	b,r6
      002C66 12 67 7F         [24]  907 	lcall	__gptrget
      002C69 FB               [12]  908 	mov	r3,a
      002C6A 70 03            [24]  909 	jnz	00319$
      002C6C 02 2E 05         [24]  910 	ljmp	00110$
      002C6F                        911 00319$:
      002C6F 7A 00            [12]  912 	mov	r2,#0x00
      002C71 8B 82            [24]  913 	mov	dpl,r3
      002C73 8A 83            [24]  914 	mov	dph,r2
      002C75 12 29 C0         [24]  915 	lcall	_putchar
      002C78 0C               [12]  916 	inc	r4
                                    917 ;	calc.c:89: } else while (r > 0) {
      002C79 BC 00 E4         [24]  918 	cjne	r4,#0x00,00136$
      002C7C 0D               [12]  919 	inc	r5
      002C7D 80 E1            [24]  920 	sjmp	00136$
      002C7F                        921 00181$:
      002C7F A8 08            [24]  922 	mov	r0,_bp
      002C81 08               [12]  923 	inc	r0
      002C82 A6 07            [24]  924 	mov	@r0,ar7
      002C84                        925 00105$:
      002C84 C3               [12]  926 	clr	c
      002C85 E4               [12]  927 	clr	a
      002C86 9E               [12]  928 	subb	a,r6
      002C87 74 80            [12]  929 	mov	a,#(0x00 ^ 0x80)
      002C89 8D F0            [24]  930 	mov	b,r5
      002C8B 63 F0 80         [24]  931 	xrl	b,#0x80
      002C8E 95 F0            [12]  932 	subb	a,b
      002C90 40 03            [24]  933 	jc	00321$
      002C92 02 2E 05         [24]  934 	ljmp	00110$
      002C95                        935 00321$:
                                    936 ;	calc.c:90: printstr("VA ");
      002C95 7B 19            [12]  937 	mov	r3,#___str_2
      002C97 7C 80            [12]  938 	mov	r4,#(___str_2 >> 8)
      002C99 7D 80            [12]  939 	mov	r5,#0x80
                                    940 ;	calc.c:51: return;
      002C9B                        941 00139$:
                                    942 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002C9B 8B 82            [24]  943 	mov	dpl,r3
      002C9D 8C 83            [24]  944 	mov	dph,r4
      002C9F 8D F0            [24]  945 	mov	b,r5
      002CA1 12 67 7F         [24]  946 	lcall	__gptrget
      002CA4 FA               [12]  947 	mov	r2,a
      002CA5 60 10            [24]  948 	jz	00119$
      002CA7 7E 00            [12]  949 	mov	r6,#0x00
      002CA9 8A 82            [24]  950 	mov	dpl,r2
      002CAB 8E 83            [24]  951 	mov	dph,r6
      002CAD 12 29 C0         [24]  952 	lcall	_putchar
      002CB0 0B               [12]  953 	inc	r3
                                    954 ;	calc.c:90: printstr("VA ");
      002CB1 BB 00 E7         [24]  955 	cjne	r3,#0x00,00139$
      002CB4 0C               [12]  956 	inc	r4
      002CB5 80 E4            [24]  957 	sjmp	00139$
      002CB7                        958 00119$:
                                    959 ;	calc.c:91: printf("% 11ld / ", d);
      002CB7 C0 07            [24]  960 	push	ar7
      002CB9 E5 08            [12]  961 	mov	a,_bp
      002CBB 24 0E            [12]  962 	add	a,#0x0e
      002CBD F8               [12]  963 	mov	r0,a
      002CBE E6               [12]  964 	mov	a,@r0
      002CBF C0 E0            [24]  965 	push	acc
      002CC1 08               [12]  966 	inc	r0
      002CC2 E6               [12]  967 	mov	a,@r0
      002CC3 C0 E0            [24]  968 	push	acc
      002CC5 08               [12]  969 	inc	r0
      002CC6 E6               [12]  970 	mov	a,@r0
      002CC7 C0 E0            [24]  971 	push	acc
      002CC9 08               [12]  972 	inc	r0
      002CCA E6               [12]  973 	mov	a,@r0
      002CCB C0 E0            [24]  974 	push	acc
      002CCD 74 1D            [12]  975 	mov	a,#___str_3
      002CCF C0 E0            [24]  976 	push	acc
      002CD1 74 80            [12]  977 	mov	a,#(___str_3 >> 8)
      002CD3 C0 E0            [24]  978 	push	acc
      002CD5 74 80            [12]  979 	mov	a,#0x80
      002CD7 C0 E0            [24]  980 	push	acc
      002CD9 12 67 46         [24]  981 	lcall	_printf
      002CDC E5 81            [12]  982 	mov	a,sp
      002CDE 24 F9            [12]  983 	add	a,#0xf9
      002CE0 F5 81            [12]  984 	mov	sp,a
                                    985 ;	calc.c:92: printf("%08lx / ", d);
      002CE2 E5 08            [12]  986 	mov	a,_bp
      002CE4 24 0E            [12]  987 	add	a,#0x0e
      002CE6 F8               [12]  988 	mov	r0,a
      002CE7 E6               [12]  989 	mov	a,@r0
      002CE8 C0 E0            [24]  990 	push	acc
      002CEA 08               [12]  991 	inc	r0
      002CEB E6               [12]  992 	mov	a,@r0
      002CEC C0 E0            [24]  993 	push	acc
      002CEE 08               [12]  994 	inc	r0
      002CEF E6               [12]  995 	mov	a,@r0
      002CF0 C0 E0            [24]  996 	push	acc
      002CF2 08               [12]  997 	inc	r0
      002CF3 E6               [12]  998 	mov	a,@r0
      002CF4 C0 E0            [24]  999 	push	acc
      002CF6 74 27            [12] 1000 	mov	a,#___str_4
      002CF8 C0 E0            [24] 1001 	push	acc
      002CFA 74 80            [12] 1002 	mov	a,#(___str_4 >> 8)
      002CFC C0 E0            [24] 1003 	push	acc
      002CFE 74 80            [12] 1004 	mov	a,#0x80
      002D00 C0 E0            [24] 1005 	push	acc
      002D02 12 67 46         [24] 1006 	lcall	_printf
      002D05 E5 81            [12] 1007 	mov	a,sp
      002D07 24 F9            [12] 1008 	add	a,#0xf9
      002D09 F5 81            [12] 1009 	mov	sp,a
      002D0B D0 07            [24] 1010 	pop	ar7
                                   1011 ;	calc.c:93: printbin(d);
      002D0D E5 08            [12] 1012 	mov	a,_bp
      002D0F 24 0E            [12] 1013 	add	a,#0x0e
      002D11 F8               [12] 1014 	mov	r0,a
      002D12 86 02            [24] 1015 	mov	ar2,@r0
      002D14 08               [12] 1016 	inc	r0
      002D15 86 03            [24] 1017 	mov	ar3,@r0
      002D17 08               [12] 1018 	inc	r0
      002D18 86 04            [24] 1019 	mov	ar4,@r0
      002D1A 08               [12] 1020 	inc	r0
      002D1B 86 05            [24] 1021 	mov	ar5,@r0
      002D1D E5 08            [12] 1022 	mov	a,_bp
      002D1F 24 12            [12] 1023 	add	a,#0x12
      002D21 F8               [12] 1024 	mov	r0,a
      002D22 A6 02            [24] 1025 	mov	@r0,ar2
      002D24 08               [12] 1026 	inc	r0
      002D25 A6 03            [24] 1027 	mov	@r0,ar3
      002D27 08               [12] 1028 	inc	r0
      002D28 A6 04            [24] 1029 	mov	@r0,ar4
      002D2A 08               [12] 1030 	inc	r0
      002D2B A6 05            [24] 1031 	mov	@r0,ar5
                                   1032 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002D2D E5 08            [12] 1033 	mov	a,_bp
      002D2F 24 16            [12] 1034 	add	a,#0x16
      002D31 F8               [12] 1035 	mov	r0,a
      002D32 E4               [12] 1036 	clr	a
      002D33 F6               [12] 1037 	mov	@r0,a
      002D34 08               [12] 1038 	inc	r0
      002D35 F6               [12] 1039 	mov	@r0,a
      002D36 08               [12] 1040 	inc	r0
      002D37 F6               [12] 1041 	mov	@r0,a
      002D38 08               [12] 1042 	inc	r0
      002D39 76 80            [12] 1043 	mov	@r0,#0x80
      002D3B                       1044 00141$:
                                   1045 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002D3B E5 08            [12] 1046 	mov	a,_bp
      002D3D 24 12            [12] 1047 	add	a,#0x12
      002D3F F8               [12] 1048 	mov	r0,a
      002D40 86 03            [24] 1049 	mov	ar3,@r0
      002D42 08               [12] 1050 	inc	r0
      002D43 86 04            [24] 1051 	mov	ar4,@r0
      002D45 08               [12] 1052 	inc	r0
      002D46 86 05            [24] 1053 	mov	ar5,@r0
      002D48 08               [12] 1054 	inc	r0
      002D49 86 06            [24] 1055 	mov	ar6,@r0
      002D4B E5 08            [12] 1056 	mov	a,_bp
      002D4D 24 16            [12] 1057 	add	a,#0x16
      002D4F F8               [12] 1058 	mov	r0,a
      002D50 E6               [12] 1059 	mov	a,@r0
      002D51 52 03            [12] 1060 	anl	ar3,a
      002D53 08               [12] 1061 	inc	r0
      002D54 E6               [12] 1062 	mov	a,@r0
      002D55 52 04            [12] 1063 	anl	ar4,a
      002D57 08               [12] 1064 	inc	r0
      002D58 E6               [12] 1065 	mov	a,@r0
      002D59 52 05            [12] 1066 	anl	ar5,a
      002D5B 08               [12] 1067 	inc	r0
      002D5C E6               [12] 1068 	mov	a,@r0
      002D5D 52 06            [12] 1069 	anl	ar6,a
      002D5F EB               [12] 1070 	mov	a,r3
      002D60 4C               [12] 1071 	orl	a,r4
      002D61 4D               [12] 1072 	orl	a,r5
      002D62 4E               [12] 1073 	orl	a,r6
      002D63 60 06            [24] 1074 	jz	00162$
      002D65 7C 31            [12] 1075 	mov	r4,#0x31
      002D67 7D 00            [12] 1076 	mov	r5,#0x00
      002D69 80 04            [24] 1077 	sjmp	00163$
      002D6B                       1078 00162$:
      002D6B 7C 30            [12] 1079 	mov	r4,#0x30
      002D6D 7D 00            [12] 1080 	mov	r5,#0x00
      002D6F                       1081 00163$:
      002D6F 8C 82            [24] 1082 	mov	dpl,r4
      002D71 8D 83            [24] 1083 	mov	dph,r5
      002D73 12 29 C0         [24] 1084 	lcall	_putchar
                                   1085 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002D76 E5 08            [12] 1086 	mov	a,_bp
      002D78 24 16            [12] 1087 	add	a,#0x16
      002D7A F8               [12] 1088 	mov	r0,a
      002D7B 08               [12] 1089 	inc	r0
      002D7C 08               [12] 1090 	inc	r0
      002D7D 08               [12] 1091 	inc	r0
      002D7E E6               [12] 1092 	mov	a,@r0
      002D7F C3               [12] 1093 	clr	c
      002D80 13               [12] 1094 	rrc	a
      002D81 F6               [12] 1095 	mov	@r0,a
      002D82 18               [12] 1096 	dec	r0
      002D83 E6               [12] 1097 	mov	a,@r0
      002D84 13               [12] 1098 	rrc	a
      002D85 F6               [12] 1099 	mov	@r0,a
      002D86 18               [12] 1100 	dec	r0
      002D87 E6               [12] 1101 	mov	a,@r0
      002D88 13               [12] 1102 	rrc	a
      002D89 F6               [12] 1103 	mov	@r0,a
      002D8A 18               [12] 1104 	dec	r0
      002D8B E6               [12] 1105 	mov	a,@r0
      002D8C 13               [12] 1106 	rrc	a
      002D8D F6               [12] 1107 	mov	@r0,a
      002D8E E5 08            [12] 1108 	mov	a,_bp
      002D90 24 16            [12] 1109 	add	a,#0x16
      002D92 F8               [12] 1110 	mov	r0,a
      002D93 E6               [12] 1111 	mov	a,@r0
      002D94 08               [12] 1112 	inc	r0
      002D95 46               [12] 1113 	orl	a,@r0
      002D96 08               [12] 1114 	inc	r0
      002D97 46               [12] 1115 	orl	a,@r0
      002D98 08               [12] 1116 	inc	r0
      002D99 46               [12] 1117 	orl	a,@r0
      002D9A 70 9F            [24] 1118 	jnz	00141$
                                   1119 ;	calc.c:94: printstr("\r\n");
      002D9C 7B 30            [12] 1120 	mov	r3,#___str_5
      002D9E 7C 80            [12] 1121 	mov	r4,#(___str_5 >> 8)
      002DA0 7D 80            [12] 1122 	mov	r5,#0x80
                                   1123 ;	calc.c:51: return;
      002DA2                       1124 00144$:
                                   1125 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002DA2 8B 82            [24] 1126 	mov	dpl,r3
      002DA4 8C 83            [24] 1127 	mov	dph,r4
      002DA6 8D F0            [24] 1128 	mov	b,r5
      002DA8 12 67 7F         [24] 1129 	lcall	__gptrget
      002DAB FA               [12] 1130 	mov	r2,a
      002DAC 60 10            [24] 1131 	jz	00123$
      002DAE 7E 00            [12] 1132 	mov	r6,#0x00
      002DB0 8A 82            [24] 1133 	mov	dpl,r2
      002DB2 8E 83            [24] 1134 	mov	dph,r6
      002DB4 12 29 C0         [24] 1135 	lcall	_putchar
      002DB7 0B               [12] 1136 	inc	r3
                                   1137 ;	calc.c:94: printstr("\r\n");
      002DB8 BB 00 E7         [24] 1138 	cjne	r3,#0x00,00144$
      002DBB 0C               [12] 1139 	inc	r4
      002DBC 80 E4            [24] 1140 	sjmp	00144$
      002DBE                       1141 00123$:
                                   1142 ;	calc.c:95: r = stack_pop(ctx->ps, &d);
      002DBE C0 07            [24] 1143 	push	ar7
      002DC0 A8 08            [24] 1144 	mov	r0,_bp
      002DC2 08               [12] 1145 	inc	r0
      002DC3 86 03            [24] 1146 	mov	ar3,@r0
      002DC5 7C 00            [12] 1147 	mov	r4,#0x00
      002DC7 7D 40            [12] 1148 	mov	r5,#0x40
      002DC9 A8 08            [24] 1149 	mov	r0,_bp
      002DCB 08               [12] 1150 	inc	r0
      002DCC 08               [12] 1151 	inc	r0
      002DCD 86 82            [24] 1152 	mov	dpl,@r0
      002DCF 08               [12] 1153 	inc	r0
      002DD0 86 83            [24] 1154 	mov	dph,@r0
      002DD2 08               [12] 1155 	inc	r0
      002DD3 86 F0            [24] 1156 	mov	b,@r0
      002DD5 12 67 7F         [24] 1157 	lcall	__gptrget
      002DD8 FA               [12] 1158 	mov	r2,a
      002DD9 A3               [24] 1159 	inc	dptr
      002DDA 12 67 7F         [24] 1160 	lcall	__gptrget
      002DDD FE               [12] 1161 	mov	r6,a
      002DDE A3               [24] 1162 	inc	dptr
      002DDF 12 67 7F         [24] 1163 	lcall	__gptrget
      002DE2 FF               [12] 1164 	mov	r7,a
      002DE3 C0 07            [24] 1165 	push	ar7
      002DE5 C0 03            [24] 1166 	push	ar3
      002DE7 C0 04            [24] 1167 	push	ar4
      002DE9 C0 05            [24] 1168 	push	ar5
      002DEB 8A 82            [24] 1169 	mov	dpl,r2
      002DED 8E 83            [24] 1170 	mov	dph,r6
      002DEF 8F F0            [24] 1171 	mov	b,r7
      002DF1 12 27 7F         [24] 1172 	lcall	_stack_pop
      002DF4 AE 82            [24] 1173 	mov	r6,dpl
      002DF6 AD 83            [24] 1174 	mov	r5,dph
      002DF8 15 81            [12] 1175 	dec	sp
      002DFA 15 81            [12] 1176 	dec	sp
      002DFC 15 81            [12] 1177 	dec	sp
      002DFE D0 07            [24] 1178 	pop	ar7
      002E00 D0 07            [24] 1179 	pop	ar7
      002E02 02 2C 84         [24] 1180 	ljmp	00105$
      002E05                       1181 00110$:
                                   1182 ;	calc.c:98: if (delta->event == EVENT_TERM) {
      002E05 E5 08            [12] 1183 	mov	a,_bp
      002E07 24 08            [12] 1184 	add	a,#0x08
      002E09 F8               [12] 1185 	mov	r0,a
      002E0A 86 82            [24] 1186 	mov	dpl,@r0
      002E0C 08               [12] 1187 	inc	r0
      002E0D 86 83            [24] 1188 	mov	dph,@r0
      002E0F 08               [12] 1189 	inc	r0
      002E10 86 F0            [24] 1190 	mov	b,@r0
      002E12 12 67 7F         [24] 1191 	lcall	__gptrget
      002E15 FD               [12] 1192 	mov	r5,a
      002E16 A3               [24] 1193 	inc	dptr
      002E17 12 67 7F         [24] 1194 	lcall	__gptrget
      002E1A FE               [12] 1195 	mov	r6,a
      002E1B BD 08 05         [24] 1196 	cjne	r5,#0x08,00328$
      002E1E BE 00 02         [24] 1197 	cjne	r6,#0x00,00328$
      002E21 80 03            [24] 1198 	sjmp	00329$
      002E23                       1199 00328$:
      002E23 02 30 44         [24] 1200 	ljmp	00113$
      002E26                       1201 00329$:
                                   1202 ;	calc.c:99: printstr("SS\r\n");
      002E26 7C 33            [12] 1203 	mov	r4,#___str_6
      002E28 7D 80            [12] 1204 	mov	r5,#(___str_6 >> 8)
      002E2A 7E 80            [12] 1205 	mov	r6,#0x80
                                   1206 ;	calc.c:51: return;
      002E2C                       1207 00147$:
                                   1208 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002E2C 8C 82            [24] 1209 	mov	dpl,r4
      002E2E 8D 83            [24] 1210 	mov	dph,r5
      002E30 8E F0            [24] 1211 	mov	b,r6
      002E32 12 67 7F         [24] 1212 	lcall	__gptrget
      002E35 FB               [12] 1213 	mov	r3,a
      002E36 60 10            [24] 1214 	jz	00125$
      002E38 7A 00            [12] 1215 	mov	r2,#0x00
      002E3A 8B 82            [24] 1216 	mov	dpl,r3
      002E3C 8A 83            [24] 1217 	mov	dph,r2
      002E3E 12 29 C0         [24] 1218 	lcall	_putchar
      002E41 0C               [12] 1219 	inc	r4
                                   1220 ;	calc.c:99: printstr("SS\r\n");
      002E42 BC 00 E7         [24] 1221 	cjne	r4,#0x00,00147$
      002E45 0D               [12] 1222 	inc	r5
      002E46 80 E4            [24] 1223 	sjmp	00147$
      002E48                       1224 00125$:
                                   1225 ;	calc.c:100: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      002E48 8F 06            [24] 1226 	mov	ar6,r7
      002E4A E5 08            [12] 1227 	mov	a,_bp
      002E4C 24 05            [12] 1228 	add	a,#0x05
      002E4E F8               [12] 1229 	mov	r0,a
      002E4F A6 06            [24] 1230 	mov	@r0,ar6
      002E51 08               [12] 1231 	inc	r0
      002E52 76 00            [12] 1232 	mov	@r0,#0x00
      002E54 08               [12] 1233 	inc	r0
      002E55 76 40            [12] 1234 	mov	@r0,#0x40
      002E57 E5 08            [12] 1235 	mov	a,_bp
      002E59 24 0B            [12] 1236 	add	a,#0x0b
      002E5B F8               [12] 1237 	mov	r0,a
      002E5C E5 08            [12] 1238 	mov	a,_bp
      002E5E 24 08            [12] 1239 	add	a,#0x08
      002E60 F9               [12] 1240 	mov	r1,a
      002E61 74 14            [12] 1241 	mov	a,#0x14
      002E63 26               [12] 1242 	add	a,@r0
      002E64 F7               [12] 1243 	mov	@r1,a
      002E65 74 40            [12] 1244 	mov	a,#0x40
      002E67 08               [12] 1245 	inc	r0
      002E68 36               [12] 1246 	addc	a,@r0
      002E69 09               [12] 1247 	inc	r1
      002E6A F7               [12] 1248 	mov	@r1,a
      002E6B 08               [12] 1249 	inc	r0
      002E6C 09               [12] 1250 	inc	r1
      002E6D E6               [12] 1251 	mov	a,@r0
      002E6E F7               [12] 1252 	mov	@r1,a
      002E6F E5 08            [12] 1253 	mov	a,_bp
      002E71 24 08            [12] 1254 	add	a,#0x08
      002E73 F8               [12] 1255 	mov	r0,a
      002E74 86 82            [24] 1256 	mov	dpl,@r0
      002E76 08               [12] 1257 	inc	r0
      002E77 86 83            [24] 1258 	mov	dph,@r0
      002E79 08               [12] 1259 	inc	r0
      002E7A 86 F0            [24] 1260 	mov	b,@r0
      002E7C 12 67 7F         [24] 1261 	lcall	__gptrget
      002E7F FA               [12] 1262 	mov	r2,a
      002E80 A3               [24] 1263 	inc	dptr
      002E81 12 67 7F         [24] 1264 	lcall	__gptrget
      002E84 FB               [12] 1265 	mov	r3,a
      002E85 A3               [24] 1266 	inc	dptr
      002E86 12 67 7F         [24] 1267 	lcall	__gptrget
      002E89 FE               [12] 1268 	mov	r6,a
      002E8A C0 07            [24] 1269 	push	ar7
      002E8C E5 08            [12] 1270 	mov	a,_bp
      002E8E 24 05            [12] 1271 	add	a,#0x05
      002E90 F8               [12] 1272 	mov	r0,a
      002E91 E6               [12] 1273 	mov	a,@r0
      002E92 C0 E0            [24] 1274 	push	acc
      002E94 08               [12] 1275 	inc	r0
      002E95 E6               [12] 1276 	mov	a,@r0
      002E96 C0 E0            [24] 1277 	push	acc
      002E98 08               [12] 1278 	inc	r0
      002E99 E6               [12] 1279 	mov	a,@r0
      002E9A C0 E0            [24] 1280 	push	acc
      002E9C 8A 82            [24] 1281 	mov	dpl,r2
      002E9E 8B 83            [24] 1282 	mov	dph,r3
      002EA0 8E F0            [24] 1283 	mov	b,r6
      002EA2 12 27 7F         [24] 1284 	lcall	_stack_pop
      002EA5 AD 82            [24] 1285 	mov	r5,dpl
      002EA7 AE 83            [24] 1286 	mov	r6,dph
      002EA9 15 81            [12] 1287 	dec	sp
      002EAB 15 81            [12] 1288 	dec	sp
      002EAD 15 81            [12] 1289 	dec	sp
      002EAF D0 07            [24] 1290 	pop	ar7
      002EB1                       1291 00158$:
      002EB1 C3               [12] 1292 	clr	c
      002EB2 E4               [12] 1293 	clr	a
      002EB3 9D               [12] 1294 	subb	a,r5
      002EB4 74 80            [12] 1295 	mov	a,#(0x00 ^ 0x80)
      002EB6 8E F0            [24] 1296 	mov	b,r6
      002EB8 63 F0 80         [24] 1297 	xrl	b,#0x80
      002EBB 95 F0            [12] 1298 	subb	a,b
      002EBD 40 03            [24] 1299 	jc	00332$
      002EBF 02 30 44         [24] 1300 	ljmp	00113$
      002EC2                       1301 00332$:
                                   1302 ;	calc.c:101: printstr("VA ");
      002EC2 7D 19            [12] 1303 	mov	r5,#___str_2
      002EC4 7B 80            [12] 1304 	mov	r3,#(___str_2 >> 8)
      002EC6 7A 80            [12] 1305 	mov	r2,#0x80
                                   1306 ;	calc.c:51: return;
      002EC8                       1307 00150$:
                                   1308 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002EC8 8D 82            [24] 1309 	mov	dpl,r5
      002ECA 8B 83            [24] 1310 	mov	dph,r3
      002ECC 8A F0            [24] 1311 	mov	b,r2
      002ECE 12 67 7F         [24] 1312 	lcall	__gptrget
      002ED1 FE               [12] 1313 	mov	r6,a
      002ED2 60 16            [24] 1314 	jz	00127$
      002ED4 C0 07            [24] 1315 	push	ar7
      002ED6 8E 04            [24] 1316 	mov	ar4,r6
      002ED8 7F 00            [12] 1317 	mov	r7,#0x00
      002EDA 8C 82            [24] 1318 	mov	dpl,r4
      002EDC 8F 83            [24] 1319 	mov	dph,r7
      002EDE 12 29 C0         [24] 1320 	lcall	_putchar
      002EE1 0D               [12] 1321 	inc	r5
      002EE2 BD 00 01         [24] 1322 	cjne	r5,#0x00,00334$
      002EE5 0B               [12] 1323 	inc	r3
      002EE6                       1324 00334$:
      002EE6 D0 07            [24] 1325 	pop	ar7
                                   1326 ;	calc.c:101: printstr("VA ");
      002EE8 80 DE            [24] 1327 	sjmp	00150$
      002EEA                       1328 00127$:
                                   1329 ;	calc.c:102: printf("% 11ld / ", d);
      002EEA C0 07            [24] 1330 	push	ar7
      002EEC C0 07            [24] 1331 	push	ar7
      002EEE E5 08            [12] 1332 	mov	a,_bp
      002EF0 24 0E            [12] 1333 	add	a,#0x0e
      002EF2 F8               [12] 1334 	mov	r0,a
      002EF3 E6               [12] 1335 	mov	a,@r0
      002EF4 C0 E0            [24] 1336 	push	acc
      002EF6 08               [12] 1337 	inc	r0
      002EF7 E6               [12] 1338 	mov	a,@r0
      002EF8 C0 E0            [24] 1339 	push	acc
      002EFA 08               [12] 1340 	inc	r0
      002EFB E6               [12] 1341 	mov	a,@r0
      002EFC C0 E0            [24] 1342 	push	acc
      002EFE 08               [12] 1343 	inc	r0
      002EFF E6               [12] 1344 	mov	a,@r0
      002F00 C0 E0            [24] 1345 	push	acc
      002F02 74 1D            [12] 1346 	mov	a,#___str_3
      002F04 C0 E0            [24] 1347 	push	acc
      002F06 74 80            [12] 1348 	mov	a,#(___str_3 >> 8)
      002F08 C0 E0            [24] 1349 	push	acc
      002F0A 74 80            [12] 1350 	mov	a,#0x80
      002F0C C0 E0            [24] 1351 	push	acc
      002F0E 12 67 46         [24] 1352 	lcall	_printf
      002F11 E5 81            [12] 1353 	mov	a,sp
      002F13 24 F9            [12] 1354 	add	a,#0xf9
      002F15 F5 81            [12] 1355 	mov	sp,a
                                   1356 ;	calc.c:103: printf("%08lx / ", d);
      002F17 E5 08            [12] 1357 	mov	a,_bp
      002F19 24 0E            [12] 1358 	add	a,#0x0e
      002F1B F8               [12] 1359 	mov	r0,a
      002F1C E6               [12] 1360 	mov	a,@r0
      002F1D C0 E0            [24] 1361 	push	acc
      002F1F 08               [12] 1362 	inc	r0
      002F20 E6               [12] 1363 	mov	a,@r0
      002F21 C0 E0            [24] 1364 	push	acc
      002F23 08               [12] 1365 	inc	r0
      002F24 E6               [12] 1366 	mov	a,@r0
      002F25 C0 E0            [24] 1367 	push	acc
      002F27 08               [12] 1368 	inc	r0
      002F28 E6               [12] 1369 	mov	a,@r0
      002F29 C0 E0            [24] 1370 	push	acc
      002F2B 74 27            [12] 1371 	mov	a,#___str_4
      002F2D C0 E0            [24] 1372 	push	acc
      002F2F 74 80            [12] 1373 	mov	a,#(___str_4 >> 8)
      002F31 C0 E0            [24] 1374 	push	acc
      002F33 74 80            [12] 1375 	mov	a,#0x80
      002F35 C0 E0            [24] 1376 	push	acc
      002F37 12 67 46         [24] 1377 	lcall	_printf
      002F3A E5 81            [12] 1378 	mov	a,sp
      002F3C 24 F9            [12] 1379 	add	a,#0xf9
      002F3E F5 81            [12] 1380 	mov	sp,a
      002F40 D0 07            [24] 1381 	pop	ar7
                                   1382 ;	calc.c:104: printbin(d);
      002F42 E5 08            [12] 1383 	mov	a,_bp
      002F44 24 0E            [12] 1384 	add	a,#0x0e
      002F46 F8               [12] 1385 	mov	r0,a
      002F47 86 02            [24] 1386 	mov	ar2,@r0
      002F49 08               [12] 1387 	inc	r0
      002F4A 86 03            [24] 1388 	mov	ar3,@r0
      002F4C 08               [12] 1389 	inc	r0
      002F4D 86 04            [24] 1390 	mov	ar4,@r0
      002F4F 08               [12] 1391 	inc	r0
      002F50 86 07            [24] 1392 	mov	ar7,@r0
      002F52 E5 08            [12] 1393 	mov	a,_bp
      002F54 24 12            [12] 1394 	add	a,#0x12
      002F56 F8               [12] 1395 	mov	r0,a
      002F57 A6 02            [24] 1396 	mov	@r0,ar2
      002F59 08               [12] 1397 	inc	r0
      002F5A A6 03            [24] 1398 	mov	@r0,ar3
      002F5C 08               [12] 1399 	inc	r0
      002F5D A6 04            [24] 1400 	mov	@r0,ar4
      002F5F 08               [12] 1401 	inc	r0
      002F60 A6 07            [24] 1402 	mov	@r0,ar7
                                   1403 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F62 E5 08            [12] 1404 	mov	a,_bp
      002F64 24 16            [12] 1405 	add	a,#0x16
      002F66 F8               [12] 1406 	mov	r0,a
      002F67 E4               [12] 1407 	clr	a
      002F68 F6               [12] 1408 	mov	@r0,a
      002F69 08               [12] 1409 	inc	r0
      002F6A F6               [12] 1410 	mov	@r0,a
      002F6B 08               [12] 1411 	inc	r0
      002F6C F6               [12] 1412 	mov	@r0,a
      002F6D 08               [12] 1413 	inc	r0
      002F6E 76 80            [12] 1414 	mov	@r0,#0x80
                                   1415 ;	calc.c:109: return 1;
      002F70 D0 07            [24] 1416 	pop	ar7
                                   1417 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F72                       1418 00152$:
                                   1419 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002F72 C0 07            [24] 1420 	push	ar7
      002F74 E5 08            [12] 1421 	mov	a,_bp
      002F76 24 12            [12] 1422 	add	a,#0x12
      002F78 F8               [12] 1423 	mov	r0,a
      002F79 86 02            [24] 1424 	mov	ar2,@r0
      002F7B 08               [12] 1425 	inc	r0
      002F7C 86 03            [24] 1426 	mov	ar3,@r0
      002F7E 08               [12] 1427 	inc	r0
      002F7F 86 04            [24] 1428 	mov	ar4,@r0
      002F81 08               [12] 1429 	inc	r0
      002F82 86 07            [24] 1430 	mov	ar7,@r0
      002F84 E5 08            [12] 1431 	mov	a,_bp
      002F86 24 16            [12] 1432 	add	a,#0x16
      002F88 F8               [12] 1433 	mov	r0,a
      002F89 E6               [12] 1434 	mov	a,@r0
      002F8A 52 02            [12] 1435 	anl	ar2,a
      002F8C 08               [12] 1436 	inc	r0
      002F8D E6               [12] 1437 	mov	a,@r0
      002F8E 52 03            [12] 1438 	anl	ar3,a
      002F90 08               [12] 1439 	inc	r0
      002F91 E6               [12] 1440 	mov	a,@r0
      002F92 52 04            [12] 1441 	anl	ar4,a
      002F94 08               [12] 1442 	inc	r0
      002F95 E6               [12] 1443 	mov	a,@r0
      002F96 52 07            [12] 1444 	anl	ar7,a
      002F98 EA               [12] 1445 	mov	a,r2
      002F99 4B               [12] 1446 	orl	a,r3
      002F9A 4C               [12] 1447 	orl	a,r4
      002F9B 4F               [12] 1448 	orl	a,r7
      002F9C D0 07            [24] 1449 	pop	ar7
      002F9E 60 06            [24] 1450 	jz	00164$
      002FA0 7B 31            [12] 1451 	mov	r3,#0x31
      002FA2 7C 00            [12] 1452 	mov	r4,#0x00
      002FA4 80 04            [24] 1453 	sjmp	00165$
      002FA6                       1454 00164$:
      002FA6 7B 30            [12] 1455 	mov	r3,#0x30
      002FA8 7C 00            [12] 1456 	mov	r4,#0x00
      002FAA                       1457 00165$:
      002FAA 8B 82            [24] 1458 	mov	dpl,r3
      002FAC 8C 83            [24] 1459 	mov	dph,r4
      002FAE 12 29 C0         [24] 1460 	lcall	_putchar
                                   1461 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002FB1 E5 08            [12] 1462 	mov	a,_bp
      002FB3 24 16            [12] 1463 	add	a,#0x16
      002FB5 F8               [12] 1464 	mov	r0,a
      002FB6 08               [12] 1465 	inc	r0
      002FB7 08               [12] 1466 	inc	r0
      002FB8 08               [12] 1467 	inc	r0
      002FB9 E6               [12] 1468 	mov	a,@r0
      002FBA C3               [12] 1469 	clr	c
      002FBB 13               [12] 1470 	rrc	a
      002FBC F6               [12] 1471 	mov	@r0,a
      002FBD 18               [12] 1472 	dec	r0
      002FBE E6               [12] 1473 	mov	a,@r0
      002FBF 13               [12] 1474 	rrc	a
      002FC0 F6               [12] 1475 	mov	@r0,a
      002FC1 18               [12] 1476 	dec	r0
      002FC2 E6               [12] 1477 	mov	a,@r0
      002FC3 13               [12] 1478 	rrc	a
      002FC4 F6               [12] 1479 	mov	@r0,a
      002FC5 18               [12] 1480 	dec	r0
      002FC6 E6               [12] 1481 	mov	a,@r0
      002FC7 13               [12] 1482 	rrc	a
      002FC8 F6               [12] 1483 	mov	@r0,a
      002FC9 E5 08            [12] 1484 	mov	a,_bp
      002FCB 24 16            [12] 1485 	add	a,#0x16
      002FCD F8               [12] 1486 	mov	r0,a
      002FCE E6               [12] 1487 	mov	a,@r0
      002FCF 08               [12] 1488 	inc	r0
      002FD0 46               [12] 1489 	orl	a,@r0
      002FD1 08               [12] 1490 	inc	r0
      002FD2 46               [12] 1491 	orl	a,@r0
      002FD3 08               [12] 1492 	inc	r0
      002FD4 46               [12] 1493 	orl	a,@r0
      002FD5 70 9B            [24] 1494 	jnz	00152$
                                   1495 ;	calc.c:105: printstr("\r\n");
      002FD7 7D 30            [12] 1496 	mov	r5,#___str_5
      002FD9 7B 80            [12] 1497 	mov	r3,#(___str_5 >> 8)
      002FDB 7A 80            [12] 1498 	mov	r2,#0x80
                                   1499 ;	calc.c:51: return;
      002FDD                       1500 00155$:
                                   1501 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002FDD 8D 82            [24] 1502 	mov	dpl,r5
      002FDF 8B 83            [24] 1503 	mov	dph,r3
      002FE1 8A F0            [24] 1504 	mov	b,r2
      002FE3 12 67 7F         [24] 1505 	lcall	__gptrget
      002FE6 FE               [12] 1506 	mov	r6,a
      002FE7 60 16            [24] 1507 	jz	00131$
      002FE9 C0 07            [24] 1508 	push	ar7
      002FEB 8E 04            [24] 1509 	mov	ar4,r6
      002FED 7F 00            [12] 1510 	mov	r7,#0x00
      002FEF 8C 82            [24] 1511 	mov	dpl,r4
      002FF1 8F 83            [24] 1512 	mov	dph,r7
      002FF3 12 29 C0         [24] 1513 	lcall	_putchar
      002FF6 0D               [12] 1514 	inc	r5
      002FF7 BD 00 01         [24] 1515 	cjne	r5,#0x00,00338$
      002FFA 0B               [12] 1516 	inc	r3
      002FFB                       1517 00338$:
      002FFB D0 07            [24] 1518 	pop	ar7
                                   1519 ;	calc.c:105: printstr("\r\n");
      002FFD 80 DE            [24] 1520 	sjmp	00155$
      002FFF                       1521 00131$:
                                   1522 ;	calc.c:100: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      002FFF 8F 06            [24] 1523 	mov	ar6,r7
      003001 7D 00            [12] 1524 	mov	r5,#0x00
      003003 7A 40            [12] 1525 	mov	r2,#0x40
      003005 C0 07            [24] 1526 	push	ar7
      003007 E5 08            [12] 1527 	mov	a,_bp
      003009 24 08            [12] 1528 	add	a,#0x08
      00300B F8               [12] 1529 	mov	r0,a
      00300C 86 82            [24] 1530 	mov	dpl,@r0
      00300E 08               [12] 1531 	inc	r0
      00300F 86 83            [24] 1532 	mov	dph,@r0
      003011 08               [12] 1533 	inc	r0
      003012 86 F0            [24] 1534 	mov	b,@r0
      003014 12 67 7F         [24] 1535 	lcall	__gptrget
      003017 FB               [12] 1536 	mov	r3,a
      003018 A3               [24] 1537 	inc	dptr
      003019 12 67 7F         [24] 1538 	lcall	__gptrget
      00301C FC               [12] 1539 	mov	r4,a
      00301D A3               [24] 1540 	inc	dptr
      00301E 12 67 7F         [24] 1541 	lcall	__gptrget
      003021 FF               [12] 1542 	mov	r7,a
      003022 C0 06            [24] 1543 	push	ar6
      003024 C0 05            [24] 1544 	push	ar5
      003026 C0 02            [24] 1545 	push	ar2
      003028 8B 82            [24] 1546 	mov	dpl,r3
      00302A 8C 83            [24] 1547 	mov	dph,r4
      00302C 8F F0            [24] 1548 	mov	b,r7
      00302E 12 27 7F         [24] 1549 	lcall	_stack_pop
      003031 AC 82            [24] 1550 	mov	r4,dpl
      003033 AF 83            [24] 1551 	mov	r7,dph
      003035 15 81            [12] 1552 	dec	sp
      003037 15 81            [12] 1553 	dec	sp
      003039 15 81            [12] 1554 	dec	sp
      00303B 8C 05            [24] 1555 	mov	ar5,r4
      00303D 8F 06            [24] 1556 	mov	ar6,r7
      00303F D0 07            [24] 1557 	pop	ar7
      003041 02 2E B1         [24] 1558 	ljmp	00158$
      003044                       1559 00113$:
                                   1560 ;	calc.c:109: return 1;
      003044 90 00 01         [24] 1561 	mov	dptr,#0x0001
                                   1562 ;	calc.c:110: }
      003047 85 08 81         [24] 1563 	mov	sp,_bp
      00304A D0 08            [24] 1564 	pop	_bp
      00304C 22               [24] 1565 	ret
                                   1566 ;------------------------------------------------------------
                                   1567 ;Allocation info for local variables in function 'dump_peek'
                                   1568 ;------------------------------------------------------------
                                   1569 ;d                         Allocated to stack - _bp -6
                                   1570 ;_ctx                      Allocated to registers 
                                   1571 ;__1310720019              Allocated to registers 
                                   1572 ;s                         Allocated to registers r5 r6 r7 
                                   1573 ;__1310720021              Allocated to registers r4 r5 r6 r7 
                                   1574 ;d                         Allocated to stack - _bp +1
                                   1575 ;mask                      Allocated to stack - _bp +5
                                   1576 ;__1310720023              Allocated to registers 
                                   1577 ;s                         Allocated to registers r5 r6 r7 
                                   1578 ;------------------------------------------------------------
                                   1579 ;	calc.c:112: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1580 ;	-----------------------------------------
                                   1581 ;	 function dump_peek
                                   1582 ;	-----------------------------------------
      00304D                       1583 _dump_peek:
      00304D C0 08            [24] 1584 	push	_bp
      00304F E5 81            [12] 1585 	mov	a,sp
      003051 F5 08            [12] 1586 	mov	_bp,a
      003053 24 08            [12] 1587 	add	a,#0x08
      003055 F5 81            [12] 1588 	mov	sp,a
                                   1589 ;	calc.c:115: printstr("PA ");
      003057 7D 38            [12] 1590 	mov	r5,#___str_7
      003059 7E 80            [12] 1591 	mov	r6,#(___str_7 >> 8)
      00305B 7F 80            [12] 1592 	mov	r7,#0x80
                                   1593 ;	calc.c:51: return;
      00305D                       1594 00108$:
                                   1595 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00305D 8D 82            [24] 1596 	mov	dpl,r5
      00305F 8E 83            [24] 1597 	mov	dph,r6
      003061 8F F0            [24] 1598 	mov	b,r7
      003063 12 67 7F         [24] 1599 	lcall	__gptrget
      003066 FC               [12] 1600 	mov	r4,a
      003067 60 10            [24] 1601 	jz	00102$
      003069 7B 00            [12] 1602 	mov	r3,#0x00
      00306B 8C 82            [24] 1603 	mov	dpl,r4
      00306D 8B 83            [24] 1604 	mov	dph,r3
      00306F 12 29 C0         [24] 1605 	lcall	_putchar
      003072 0D               [12] 1606 	inc	r5
                                   1607 ;	calc.c:115: printstr("PA ");
      003073 BD 00 E7         [24] 1608 	cjne	r5,#0x00,00108$
      003076 0E               [12] 1609 	inc	r6
      003077 80 E4            [24] 1610 	sjmp	00108$
      003079                       1611 00102$:
                                   1612 ;	calc.c:116: printf("% 11ld / ", d);
      003079 E5 08            [12] 1613 	mov	a,_bp
      00307B 24 FA            [12] 1614 	add	a,#0xfa
      00307D F8               [12] 1615 	mov	r0,a
      00307E E6               [12] 1616 	mov	a,@r0
      00307F C0 E0            [24] 1617 	push	acc
      003081 08               [12] 1618 	inc	r0
      003082 E6               [12] 1619 	mov	a,@r0
      003083 C0 E0            [24] 1620 	push	acc
      003085 08               [12] 1621 	inc	r0
      003086 E6               [12] 1622 	mov	a,@r0
      003087 C0 E0            [24] 1623 	push	acc
      003089 08               [12] 1624 	inc	r0
      00308A E6               [12] 1625 	mov	a,@r0
      00308B C0 E0            [24] 1626 	push	acc
      00308D 74 1D            [12] 1627 	mov	a,#___str_3
      00308F C0 E0            [24] 1628 	push	acc
      003091 74 80            [12] 1629 	mov	a,#(___str_3 >> 8)
      003093 C0 E0            [24] 1630 	push	acc
      003095 74 80            [12] 1631 	mov	a,#0x80
      003097 C0 E0            [24] 1632 	push	acc
      003099 12 67 46         [24] 1633 	lcall	_printf
      00309C E5 81            [12] 1634 	mov	a,sp
      00309E 24 F9            [12] 1635 	add	a,#0xf9
      0030A0 F5 81            [12] 1636 	mov	sp,a
                                   1637 ;	calc.c:117: printf("%08lx / ", d);
      0030A2 E5 08            [12] 1638 	mov	a,_bp
      0030A4 24 FA            [12] 1639 	add	a,#0xfa
      0030A6 F8               [12] 1640 	mov	r0,a
      0030A7 E6               [12] 1641 	mov	a,@r0
      0030A8 C0 E0            [24] 1642 	push	acc
      0030AA 08               [12] 1643 	inc	r0
      0030AB E6               [12] 1644 	mov	a,@r0
      0030AC C0 E0            [24] 1645 	push	acc
      0030AE 08               [12] 1646 	inc	r0
      0030AF E6               [12] 1647 	mov	a,@r0
      0030B0 C0 E0            [24] 1648 	push	acc
      0030B2 08               [12] 1649 	inc	r0
      0030B3 E6               [12] 1650 	mov	a,@r0
      0030B4 C0 E0            [24] 1651 	push	acc
      0030B6 74 27            [12] 1652 	mov	a,#___str_4
      0030B8 C0 E0            [24] 1653 	push	acc
      0030BA 74 80            [12] 1654 	mov	a,#(___str_4 >> 8)
      0030BC C0 E0            [24] 1655 	push	acc
      0030BE 74 80            [12] 1656 	mov	a,#0x80
      0030C0 C0 E0            [24] 1657 	push	acc
      0030C2 12 67 46         [24] 1658 	lcall	_printf
      0030C5 E5 81            [12] 1659 	mov	a,sp
      0030C7 24 F9            [12] 1660 	add	a,#0xf9
      0030C9 F5 81            [12] 1661 	mov	sp,a
                                   1662 ;	calc.c:118: printbin(d);
      0030CB E5 08            [12] 1663 	mov	a,_bp
      0030CD 24 FA            [12] 1664 	add	a,#0xfa
      0030CF F8               [12] 1665 	mov	r0,a
      0030D0 86 04            [24] 1666 	mov	ar4,@r0
      0030D2 08               [12] 1667 	inc	r0
      0030D3 86 05            [24] 1668 	mov	ar5,@r0
      0030D5 08               [12] 1669 	inc	r0
      0030D6 86 06            [24] 1670 	mov	ar6,@r0
      0030D8 08               [12] 1671 	inc	r0
      0030D9 86 07            [24] 1672 	mov	ar7,@r0
      0030DB A8 08            [24] 1673 	mov	r0,_bp
      0030DD 08               [12] 1674 	inc	r0
      0030DE A6 04            [24] 1675 	mov	@r0,ar4
      0030E0 08               [12] 1676 	inc	r0
      0030E1 A6 05            [24] 1677 	mov	@r0,ar5
      0030E3 08               [12] 1678 	inc	r0
      0030E4 A6 06            [24] 1679 	mov	@r0,ar6
      0030E6 08               [12] 1680 	inc	r0
      0030E7 A6 07            [24] 1681 	mov	@r0,ar7
                                   1682 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0030E9 E5 08            [12] 1683 	mov	a,_bp
      0030EB 24 05            [12] 1684 	add	a,#0x05
      0030ED F8               [12] 1685 	mov	r0,a
      0030EE E4               [12] 1686 	clr	a
      0030EF F6               [12] 1687 	mov	@r0,a
      0030F0 08               [12] 1688 	inc	r0
      0030F1 F6               [12] 1689 	mov	@r0,a
      0030F2 08               [12] 1690 	inc	r0
      0030F3 F6               [12] 1691 	mov	@r0,a
      0030F4 08               [12] 1692 	inc	r0
      0030F5 76 80            [12] 1693 	mov	@r0,#0x80
      0030F7                       1694 00110$:
                                   1695 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0030F7 A8 08            [24] 1696 	mov	r0,_bp
      0030F9 08               [12] 1697 	inc	r0
      0030FA 86 04            [24] 1698 	mov	ar4,@r0
      0030FC 08               [12] 1699 	inc	r0
      0030FD 86 05            [24] 1700 	mov	ar5,@r0
      0030FF 08               [12] 1701 	inc	r0
      003100 86 06            [24] 1702 	mov	ar6,@r0
      003102 08               [12] 1703 	inc	r0
      003103 86 07            [24] 1704 	mov	ar7,@r0
      003105 E5 08            [12] 1705 	mov	a,_bp
      003107 24 05            [12] 1706 	add	a,#0x05
      003109 F8               [12] 1707 	mov	r0,a
      00310A E6               [12] 1708 	mov	a,@r0
      00310B 52 04            [12] 1709 	anl	ar4,a
      00310D 08               [12] 1710 	inc	r0
      00310E E6               [12] 1711 	mov	a,@r0
      00310F 52 05            [12] 1712 	anl	ar5,a
      003111 08               [12] 1713 	inc	r0
      003112 E6               [12] 1714 	mov	a,@r0
      003113 52 06            [12] 1715 	anl	ar6,a
      003115 08               [12] 1716 	inc	r0
      003116 E6               [12] 1717 	mov	a,@r0
      003117 52 07            [12] 1718 	anl	ar7,a
      003119 EC               [12] 1719 	mov	a,r4
      00311A 4D               [12] 1720 	orl	a,r5
      00311B 4E               [12] 1721 	orl	a,r6
      00311C 4F               [12] 1722 	orl	a,r7
      00311D 60 06            [24] 1723 	jz	00117$
      00311F 7E 31            [12] 1724 	mov	r6,#0x31
      003121 7F 00            [12] 1725 	mov	r7,#0x00
      003123 80 04            [24] 1726 	sjmp	00118$
      003125                       1727 00117$:
      003125 7E 30            [12] 1728 	mov	r6,#0x30
      003127 7F 00            [12] 1729 	mov	r7,#0x00
      003129                       1730 00118$:
      003129 8E 82            [24] 1731 	mov	dpl,r6
      00312B 8F 83            [24] 1732 	mov	dph,r7
      00312D 12 29 C0         [24] 1733 	lcall	_putchar
                                   1734 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003130 E5 08            [12] 1735 	mov	a,_bp
      003132 24 05            [12] 1736 	add	a,#0x05
      003134 F8               [12] 1737 	mov	r0,a
      003135 08               [12] 1738 	inc	r0
      003136 08               [12] 1739 	inc	r0
      003137 08               [12] 1740 	inc	r0
      003138 E6               [12] 1741 	mov	a,@r0
      003139 C3               [12] 1742 	clr	c
      00313A 13               [12] 1743 	rrc	a
      00313B F6               [12] 1744 	mov	@r0,a
      00313C 18               [12] 1745 	dec	r0
      00313D E6               [12] 1746 	mov	a,@r0
      00313E 13               [12] 1747 	rrc	a
      00313F F6               [12] 1748 	mov	@r0,a
      003140 18               [12] 1749 	dec	r0
      003141 E6               [12] 1750 	mov	a,@r0
      003142 13               [12] 1751 	rrc	a
      003143 F6               [12] 1752 	mov	@r0,a
      003144 18               [12] 1753 	dec	r0
      003145 E6               [12] 1754 	mov	a,@r0
      003146 13               [12] 1755 	rrc	a
      003147 F6               [12] 1756 	mov	@r0,a
      003148 E5 08            [12] 1757 	mov	a,_bp
      00314A 24 05            [12] 1758 	add	a,#0x05
      00314C F8               [12] 1759 	mov	r0,a
      00314D E6               [12] 1760 	mov	a,@r0
      00314E 08               [12] 1761 	inc	r0
      00314F 46               [12] 1762 	orl	a,@r0
      003150 08               [12] 1763 	inc	r0
      003151 46               [12] 1764 	orl	a,@r0
      003152 08               [12] 1765 	inc	r0
      003153 46               [12] 1766 	orl	a,@r0
      003154 70 A1            [24] 1767 	jnz	00110$
                                   1768 ;	calc.c:119: printstr("\r\n");
      003156 7D 30            [12] 1769 	mov	r5,#___str_5
      003158 7E 80            [12] 1770 	mov	r6,#(___str_5 >> 8)
      00315A 7F 80            [12] 1771 	mov	r7,#0x80
                                   1772 ;	calc.c:51: return;
      00315C                       1773 00113$:
                                   1774 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00315C 8D 82            [24] 1775 	mov	dpl,r5
      00315E 8E 83            [24] 1776 	mov	dph,r6
      003160 8F F0            [24] 1777 	mov	b,r7
      003162 12 67 7F         [24] 1778 	lcall	__gptrget
      003165 FC               [12] 1779 	mov	r4,a
      003166 60 10            [24] 1780 	jz	00106$
      003168 7B 00            [12] 1781 	mov	r3,#0x00
      00316A 8C 82            [24] 1782 	mov	dpl,r4
      00316C 8B 83            [24] 1783 	mov	dph,r3
      00316E 12 29 C0         [24] 1784 	lcall	_putchar
      003171 0D               [12] 1785 	inc	r5
                                   1786 ;	calc.c:119: printstr("\r\n");
      003172 BD 00 E7         [24] 1787 	cjne	r5,#0x00,00113$
      003175 0E               [12] 1788 	inc	r6
      003176 80 E4            [24] 1789 	sjmp	00113$
      003178                       1790 00106$:
                                   1791 ;	calc.c:121: return 1;
      003178 90 00 01         [24] 1792 	mov	dptr,#0x0001
                                   1793 ;	calc.c:122: }
      00317B 85 08 81         [24] 1794 	mov	sp,_bp
      00317E D0 08            [24] 1795 	pop	_bp
      003180 22               [24] 1796 	ret
                                   1797 ;------------------------------------------------------------
                                   1798 ;Allocation info for local variables in function 'operator'
                                   1799 ;------------------------------------------------------------
                                   1800 ;delta                     Allocated to stack - _bp -5
                                   1801 ;_ctx                      Allocated to stack - _bp +1
                                   1802 ;ctx                       Allocated to stack - _bp +18
                                   1803 ;t0                        Allocated to registers r7 r6 r5 
                                   1804 ;d0                        Allocated to stack - _bp +21
                                   1805 ;d1                        Allocated to stack - _bp +25
                                   1806 ;__1966080025              Allocated to registers 
                                   1807 ;s                         Allocated to registers r7 r6 r5 
                                   1808 ;__1966080027              Allocated to registers 
                                   1809 ;s                         Allocated to registers r7 r6 r5 
                                   1810 ;__2621440029              Allocated to registers 
                                   1811 ;s                         Allocated to registers r7 r6 r5 
                                   1812 ;__2621440031              Allocated to registers r7 r6 r5 r4 
                                   1813 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1814 ;mask                      Allocated to stack - _bp +29
                                   1815 ;__2621440033              Allocated to registers 
                                   1816 ;s                         Allocated to registers r7 r6 r5 
                                   1817 ;__1966080035              Allocated to registers 
                                   1818 ;s                         Allocated to registers r7 r6 r5 
                                   1819 ;__1966080037              Allocated to registers 
                                   1820 ;s                         Allocated to registers r7 r6 r5 
                                   1821 ;__1966080039              Allocated to registers 
                                   1822 ;s                         Allocated to registers r7 r6 r5 
                                   1823 ;__1966080041              Allocated to registers 
                                   1824 ;s                         Allocated to registers r7 r6 r5 
                                   1825 ;__2621440043              Allocated to registers 
                                   1826 ;s                         Allocated to registers r7 r6 r5 
                                   1827 ;__2621440045              Allocated to registers r7 r6 r5 r4 
                                   1828 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1829 ;mask                      Allocated to stack - _bp +29
                                   1830 ;__2621440047              Allocated to registers 
                                   1831 ;s                         Allocated to registers r7 r6 r5 
                                   1832 ;__1966080049              Allocated to registers 
                                   1833 ;s                         Allocated to registers r7 r6 r5 
                                   1834 ;__1966080051              Allocated to registers 
                                   1835 ;s                         Allocated to registers r7 r6 r5 
                                   1836 ;__2621440053              Allocated to registers 
                                   1837 ;s                         Allocated to registers r7 r6 r5 
                                   1838 ;__1966080055              Allocated to registers 
                                   1839 ;s                         Allocated to registers r7 r6 r5 
                                   1840 ;__3276800057              Allocated to registers 
                                   1841 ;s                         Allocated to registers r7 r6 r5 
                                   1842 ;__1966080059              Allocated to registers 
                                   1843 ;s                         Allocated to registers r7 r6 r5 
                                   1844 ;__3276800061              Allocated to registers 
                                   1845 ;s                         Allocated to registers r7 r6 r5 
                                   1846 ;__1966080063              Allocated to registers 
                                   1847 ;s                         Allocated to registers r7 r6 r5 
                                   1848 ;__1966080065              Allocated to registers 
                                   1849 ;s                         Allocated to registers r7 r6 r5 
                                   1850 ;__1966080067              Allocated to registers 
                                   1851 ;s                         Allocated to registers r7 r6 r5 
                                   1852 ;__1966080069              Allocated to registers 
                                   1853 ;s                         Allocated to registers r7 r6 r5 
                                   1854 ;__1966080071              Allocated to registers 
                                   1855 ;s                         Allocated to registers r7 r6 r5 
                                   1856 ;__3276800073              Allocated to registers 
                                   1857 ;s                         Allocated to registers r7 r6 r5 
                                   1858 ;__1966080075              Allocated to registers 
                                   1859 ;s                         Allocated to registers r7 r6 r5 
                                   1860 ;__2621440077              Allocated to registers 
                                   1861 ;s                         Allocated to registers r7 r6 r5 
                                   1862 ;__1966080079              Allocated to registers 
                                   1863 ;s                         Allocated to registers r7 r6 r5 
                                   1864 ;__2621440081              Allocated to registers 
                                   1865 ;s                         Allocated to registers r7 r6 r5 
                                   1866 ;__1966080083              Allocated to registers 
                                   1867 ;s                         Allocated to registers r7 r6 r5 
                                   1868 ;__2621440085              Allocated to registers 
                                   1869 ;s                         Allocated to registers r7 r6 r5 
                                   1870 ;__1966080087              Allocated to registers 
                                   1871 ;s                         Allocated to registers r7 r6 r5 
                                   1872 ;__2621440089              Allocated to registers 
                                   1873 ;s                         Allocated to registers r7 r6 r5 
                                   1874 ;__2621440091              Allocated to registers 
                                   1875 ;s                         Allocated to registers r7 r6 r5 
                                   1876 ;__1966080093              Allocated to registers 
                                   1877 ;s                         Allocated to registers r7 r6 r5 
                                   1878 ;__2621440095              Allocated to registers 
                                   1879 ;s                         Allocated to registers r7 r6 r5 
                                   1880 ;__2621440097              Allocated to registers 
                                   1881 ;s                         Allocated to registers r7 r6 r5 
                                   1882 ;__1966080099              Allocated to registers 
                                   1883 ;s                         Allocated to registers r5 r4 r3 
                                   1884 ;__2621440101              Allocated to registers 
                                   1885 ;s                         Allocated to registers r5 r4 r3 
                                   1886 ;__1966080103              Allocated to registers 
                                   1887 ;s                         Allocated to registers r5 r4 r3 
                                   1888 ;__2621440105              Allocated to registers 
                                   1889 ;s                         Allocated to registers r5 r4 r3 
                                   1890 ;__1966080107              Allocated to registers 
                                   1891 ;s                         Allocated to registers r5 r4 r3 
                                   1892 ;__2621440109              Allocated to registers 
                                   1893 ;s                         Allocated to registers r5 r4 r3 
                                   1894 ;__1966080111              Allocated to registers 
                                   1895 ;s                         Allocated to registers r5 r4 r3 
                                   1896 ;__2621440113              Allocated to registers 
                                   1897 ;s                         Allocated to registers r5 r4 r3 
                                   1898 ;__1966080115              Allocated to registers 
                                   1899 ;s                         Allocated to registers r5 r4 r3 
                                   1900 ;__2621440117              Allocated to registers 
                                   1901 ;s                         Allocated to registers r5 r4 r3 
                                   1902 ;__1966080119              Allocated to registers 
                                   1903 ;s                         Allocated to registers r5 r4 r3 
                                   1904 ;__2621440121              Allocated to registers 
                                   1905 ;s                         Allocated to registers r5 r4 r3 
                                   1906 ;__1966080123              Allocated to registers 
                                   1907 ;s                         Allocated to registers r5 r4 r3 
                                   1908 ;sloc0                     Allocated to stack - _bp +330
                                   1909 ;sloc1                     Allocated to stack - _bp +4
                                   1910 ;sloc2                     Allocated to stack - _bp +7
                                   1911 ;sloc3                     Allocated to stack - _bp +11
                                   1912 ;sloc4                     Allocated to stack - _bp +14
                                   1913 ;------------------------------------------------------------
                                   1914 ;	calc.c:124: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   1915 ;	-----------------------------------------
                                   1916 ;	 function operator
                                   1917 ;	-----------------------------------------
      003181                       1918 _operator:
      003181 C0 08            [24] 1919 	push	_bp
      003183 85 81 08         [24] 1920 	mov	_bp,sp
      003186 C0 82            [24] 1921 	push	dpl
      003188 C0 83            [24] 1922 	push	dph
      00318A C0 F0            [24] 1923 	push	b
      00318C E5 81            [12] 1924 	mov	a,sp
      00318E 24 1D            [12] 1925 	add	a,#0x1d
      003190 F5 81            [12] 1926 	mov	sp,a
                                   1927 ;	calc.c:125: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      003192 A8 08            [24] 1928 	mov	r0,_bp
      003194 08               [12] 1929 	inc	r0
      003195 E5 08            [12] 1930 	mov	a,_bp
      003197 24 12            [12] 1931 	add	a,#0x12
      003199 F9               [12] 1932 	mov	r1,a
      00319A E6               [12] 1933 	mov	a,@r0
      00319B F7               [12] 1934 	mov	@r1,a
      00319C 08               [12] 1935 	inc	r0
      00319D 09               [12] 1936 	inc	r1
      00319E E6               [12] 1937 	mov	a,@r0
      00319F F7               [12] 1938 	mov	@r1,a
      0031A0 08               [12] 1939 	inc	r0
      0031A1 09               [12] 1940 	inc	r1
      0031A2 E6               [12] 1941 	mov	a,@r0
      0031A3 F7               [12] 1942 	mov	@r1,a
                                   1943 ;	calc.c:129: switch (ctx->digit[0]) {
      0031A4 E5 08            [12] 1944 	mov	a,_bp
      0031A6 24 12            [12] 1945 	add	a,#0x12
      0031A8 F8               [12] 1946 	mov	r0,a
      0031A9 74 07            [12] 1947 	mov	a,#0x07
      0031AB 26               [12] 1948 	add	a,@r0
      0031AC FD               [12] 1949 	mov	r5,a
      0031AD E4               [12] 1950 	clr	a
      0031AE 08               [12] 1951 	inc	r0
      0031AF 36               [12] 1952 	addc	a,@r0
      0031B0 FE               [12] 1953 	mov	r6,a
      0031B1 08               [12] 1954 	inc	r0
      0031B2 86 07            [24] 1955 	mov	ar7,@r0
      0031B4 8D 82            [24] 1956 	mov	dpl,r5
      0031B6 8E 83            [24] 1957 	mov	dph,r6
      0031B8 8F F0            [24] 1958 	mov	b,r7
      0031BA 12 67 7F         [24] 1959 	lcall	__gptrget
      0031BD FC               [12] 1960 	mov	r4,a
      0031BE BC 23 03         [24] 1961 	cjne	r4,#0x23,01232$
      0031C1 02 46 7A         [24] 1962 	ljmp	00189$
      0031C4                       1963 01232$:
      0031C4 BC 25 03         [24] 1964 	cjne	r4,#0x25,01233$
      0031C7 02 46 7A         [24] 1965 	ljmp	00189$
      0031CA                       1966 01233$:
      0031CA BC 26 03         [24] 1967 	cjne	r4,#0x26,01234$
      0031CD 02 49 60         [24] 1968 	ljmp	00202$
      0031D0                       1969 01234$:
      0031D0 BC 2A 03         [24] 1970 	cjne	r4,#0x2a,01235$
      0031D3 02 41 EA         [24] 1971 	ljmp	00167$
      0031D6                       1972 01235$:
      0031D6 BC 2B 03         [24] 1973 	cjne	r4,#0x2b,01236$
      0031D9 02 3E EB         [24] 1974 	ljmp	00153$
      0031DC                       1975 01236$:
      0031DC BC 2D 03         [24] 1976 	cjne	r4,#0x2d,01237$
      0031DF 02 40 6A         [24] 1977 	ljmp	00160$
      0031E2                       1978 01237$:
      0031E2 BC 2E 03         [24] 1979 	cjne	r4,#0x2e,01238$
      0031E5 02 34 B8         [24] 1980 	ljmp	00109$
      0031E8                       1981 01238$:
      0031E8 BC 2F 03         [24] 1982 	cjne	r4,#0x2f,01239$
      0031EB 02 43 90         [24] 1983 	ljmp	00175$
      0031EE                       1984 01239$:
      0031EE BC 3C 03         [24] 1985 	cjne	r4,#0x3c,01240$
      0031F1 02 51 85         [24] 1986 	ljmp	00237$
      0031F4                       1987 01240$:
      0031F4 BC 3E 03         [24] 1988 	cjne	r4,#0x3e,01241$
      0031F7 02 4E 2E         [24] 1989 	ljmp	00223$
      0031FA                       1990 01241$:
      0031FA BC 4D 03         [24] 1991 	cjne	r4,#0x4d,01242$
      0031FD 02 39 91         [24] 1992 	ljmp	00127$
      003200                       1993 01242$:
      003200 BC 50 03         [24] 1994 	cjne	r4,#0x50,01243$
      003203 02 34 17         [24] 1995 	ljmp	00105$
      003206                       1996 01243$:
      003206 BC 54 03         [24] 1997 	cjne	r4,#0x54,01244$
      003209 02 3C 93         [24] 1998 	ljmp	00145$
      00320C                       1999 01244$:
      00320C BC 55 03         [24] 2000 	cjne	r4,#0x55,01245$
      00320F 02 3B AC         [24] 2001 	ljmp	00139$
      003212                       2002 01245$:
      003212 BC 56 03         [24] 2003 	cjne	r4,#0x56,01246$
      003215 02 36 73         [24] 2004 	ljmp	00113$
      003218                       2005 01246$:
      003218 BC 58 03         [24] 2006 	cjne	r4,#0x58,01247$
      00321B 02 3E 4C         [24] 2007 	ljmp	00152$
      00321E                       2008 01247$:
      00321E BC 5C 03         [24] 2009 	cjne	r4,#0x5c,01248$
      003221 02 43 90         [24] 2010 	ljmp	00175$
      003224                       2011 01248$:
      003224 BC 5D 03         [24] 2012 	cjne	r4,#0x5d,01249$
      003227 02 4F D1         [24] 2013 	ljmp	00230$
      00322A                       2014 01249$:
      00322A BC 5E 03         [24] 2015 	cjne	r4,#0x5e,01250$
      00322D 02 4C 94         [24] 2016 	ljmp	00216$
      003230                       2017 01250$:
      003230 BC 6D 03         [24] 2018 	cjne	r4,#0x6d,01251$
      003233 02 38 5D         [24] 2019 	ljmp	00121$
      003236                       2020 01251$:
      003236 BC 70 02         [24] 2021 	cjne	r4,#0x70,01252$
      003239 80 21            [24] 2022 	sjmp	00101$
      00323B                       2023 01252$:
      00323B BC 75 03         [24] 2024 	cjne	r4,#0x75,01253$
      00323E 02 3A C5         [24] 2025 	ljmp	00133$
      003241                       2026 01253$:
      003241 BC 76 03         [24] 2027 	cjne	r4,#0x76,01254$
      003244 02 34 B8         [24] 2028 	ljmp	00109$
      003247                       2029 01254$:
      003247 BC 78 03         [24] 2030 	cjne	r4,#0x78,01255$
      00324A 02 36 BC         [24] 2031 	ljmp	00114$
      00324D                       2032 01255$:
      00324D BC 7C 03         [24] 2033 	cjne	r4,#0x7c,01256$
      003250 02 4A FA         [24] 2034 	ljmp	00209$
      003253                       2035 01256$:
      003253 BC 7E 03         [24] 2036 	cjne	r4,#0x7e,01257$
      003256 02 53 28         [24] 2037 	ljmp	00244$
      003259                       2038 01257$:
      003259 02 54 01         [24] 2039 	ljmp	00248$
                                   2040 ;	calc.c:130: case 'p':
      00325C                       2041 00101$:
                                   2042 ;	calc.c:131: printstr("\r\n");
      00325C 7F 30            [12] 2043 	mov	r7,#___str_5
      00325E 7E 80            [12] 2044 	mov	r6,#(___str_5 >> 8)
      003260 7D 80            [12] 2045 	mov	r5,#0x80
                                   2046 ;	calc.c:51: return;
      003262                       2047 00351$:
                                   2048 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003262 8F 82            [24] 2049 	mov	dpl,r7
      003264 8E 83            [24] 2050 	mov	dph,r6
      003266 8D F0            [24] 2051 	mov	b,r5
      003268 12 67 7F         [24] 2052 	lcall	__gptrget
      00326B FC               [12] 2053 	mov	r4,a
      00326C 60 10            [24] 2054 	jz	00251$
      00326E 7B 00            [12] 2055 	mov	r3,#0x00
      003270 8C 82            [24] 2056 	mov	dpl,r4
      003272 8B 83            [24] 2057 	mov	dph,r3
      003274 12 29 C0         [24] 2058 	lcall	_putchar
      003277 0F               [12] 2059 	inc	r7
                                   2060 ;	calc.c:131: printstr("\r\n");
      003278 BF 00 E7         [24] 2061 	cjne	r7,#0x00,00351$
      00327B 0E               [12] 2062 	inc	r6
      00327C 80 E4            [24] 2063 	sjmp	00351$
      00327E                       2064 00251$:
                                   2065 ;	calc.c:132: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      00327E E5 08            [12] 2066 	mov	a,_bp
      003280 24 15            [12] 2067 	add	a,#0x15
      003282 FF               [12] 2068 	mov	r7,a
      003283 7E 00            [12] 2069 	mov	r6,#0x00
      003285 7D 40            [12] 2070 	mov	r5,#0x40
      003287 E5 08            [12] 2071 	mov	a,_bp
      003289 24 12            [12] 2072 	add	a,#0x12
      00328B F8               [12] 2073 	mov	r0,a
      00328C 74 11            [12] 2074 	mov	a,#0x11
      00328E 26               [12] 2075 	add	a,@r0
      00328F FA               [12] 2076 	mov	r2,a
      003290 ED               [12] 2077 	mov	a,r5
      003291 08               [12] 2078 	inc	r0
      003292 36               [12] 2079 	addc	a,@r0
      003293 FB               [12] 2080 	mov	r3,a
      003294 08               [12] 2081 	inc	r0
      003295 86 04            [24] 2082 	mov	ar4,@r0
      003297 8A 82            [24] 2083 	mov	dpl,r2
      003299 8B 83            [24] 2084 	mov	dph,r3
      00329B 8C F0            [24] 2085 	mov	b,r4
      00329D 12 67 7F         [24] 2086 	lcall	__gptrget
      0032A0 FA               [12] 2087 	mov	r2,a
      0032A1 A3               [24] 2088 	inc	dptr
      0032A2 12 67 7F         [24] 2089 	lcall	__gptrget
      0032A5 FB               [12] 2090 	mov	r3,a
      0032A6 A3               [24] 2091 	inc	dptr
      0032A7 12 67 7F         [24] 2092 	lcall	__gptrget
      0032AA FC               [12] 2093 	mov	r4,a
      0032AB C0 07            [24] 2094 	push	ar7
      0032AD C0 06            [24] 2095 	push	ar6
      0032AF C0 05            [24] 2096 	push	ar5
      0032B1 8A 82            [24] 2097 	mov	dpl,r2
      0032B3 8B 83            [24] 2098 	mov	dph,r3
      0032B5 8C F0            [24] 2099 	mov	b,r4
      0032B7 12 28 56         [24] 2100 	lcall	_stack_peek
      0032BA AB 82            [24] 2101 	mov	r3,dpl
      0032BC AC 83            [24] 2102 	mov	r4,dph
      0032BE 15 81            [12] 2103 	dec	sp
      0032C0 15 81            [12] 2104 	dec	sp
      0032C2 15 81            [12] 2105 	dec	sp
      0032C4 EB               [12] 2106 	mov	a,r3
      0032C5 4C               [12] 2107 	orl	a,r4
      0032C6 70 25            [24] 2108 	jnz	00103$
      0032C8 7F 07            [12] 2109 	mov	r7,#___str_1
      0032CA 7E 80            [12] 2110 	mov	r6,#(___str_1 >> 8)
      0032CC 7D 80            [12] 2111 	mov	r5,#0x80
                                   2112 ;	calc.c:51: return;
      0032CE                       2113 00354$:
                                   2114 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0032CE 8F 82            [24] 2115 	mov	dpl,r7
      0032D0 8E 83            [24] 2116 	mov	dph,r6
      0032D2 8D F0            [24] 2117 	mov	b,r5
      0032D4 12 67 7F         [24] 2118 	lcall	__gptrget
      0032D7 FC               [12] 2119 	mov	r4,a
      0032D8 70 03            [24] 2120 	jnz	01261$
      0032DA 02 54 06         [24] 2121 	ljmp	00249$
      0032DD                       2122 01261$:
      0032DD 7B 00            [12] 2123 	mov	r3,#0x00
      0032DF 8C 82            [24] 2124 	mov	dpl,r4
      0032E1 8B 83            [24] 2125 	mov	dph,r3
      0032E3 12 29 C0         [24] 2126 	lcall	_putchar
      0032E6 0F               [12] 2127 	inc	r7
                                   2128 ;	calc.c:132: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0032E7 BF 00 E4         [24] 2129 	cjne	r7,#0x00,00354$
      0032EA 0E               [12] 2130 	inc	r6
      0032EB 80 E1            [24] 2131 	sjmp	00354$
      0032ED                       2132 00103$:
                                   2133 ;	calc.c:134: printstr("PT ");
      0032ED 7F 3C            [12] 2134 	mov	r7,#___str_8
      0032EF 7E 80            [12] 2135 	mov	r6,#(___str_8 >> 8)
      0032F1 7D 80            [12] 2136 	mov	r5,#0x80
                                   2137 ;	calc.c:51: return;
      0032F3                       2138 00357$:
                                   2139 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0032F3 8F 82            [24] 2140 	mov	dpl,r7
      0032F5 8E 83            [24] 2141 	mov	dph,r6
      0032F7 8D F0            [24] 2142 	mov	b,r5
      0032F9 12 67 7F         [24] 2143 	lcall	__gptrget
      0032FC FC               [12] 2144 	mov	r4,a
      0032FD 60 10            [24] 2145 	jz	00255$
      0032FF 7B 00            [12] 2146 	mov	r3,#0x00
      003301 8C 82            [24] 2147 	mov	dpl,r4
      003303 8B 83            [24] 2148 	mov	dph,r3
      003305 12 29 C0         [24] 2149 	lcall	_putchar
      003308 0F               [12] 2150 	inc	r7
                                   2151 ;	calc.c:134: printstr("PT ");
      003309 BF 00 E7         [24] 2152 	cjne	r7,#0x00,00357$
      00330C 0E               [12] 2153 	inc	r6
      00330D 80 E4            [24] 2154 	sjmp	00357$
      00330F                       2155 00255$:
                                   2156 ;	calc.c:135: printf("% 11ld / ", d0);
      00330F E5 08            [12] 2157 	mov	a,_bp
      003311 24 15            [12] 2158 	add	a,#0x15
      003313 F8               [12] 2159 	mov	r0,a
      003314 E6               [12] 2160 	mov	a,@r0
      003315 C0 E0            [24] 2161 	push	acc
      003317 08               [12] 2162 	inc	r0
      003318 E6               [12] 2163 	mov	a,@r0
      003319 C0 E0            [24] 2164 	push	acc
      00331B 08               [12] 2165 	inc	r0
      00331C E6               [12] 2166 	mov	a,@r0
      00331D C0 E0            [24] 2167 	push	acc
      00331F 08               [12] 2168 	inc	r0
      003320 E6               [12] 2169 	mov	a,@r0
      003321 C0 E0            [24] 2170 	push	acc
      003323 74 1D            [12] 2171 	mov	a,#___str_3
      003325 C0 E0            [24] 2172 	push	acc
      003327 74 80            [12] 2173 	mov	a,#(___str_3 >> 8)
      003329 C0 E0            [24] 2174 	push	acc
      00332B 74 80            [12] 2175 	mov	a,#0x80
      00332D C0 E0            [24] 2176 	push	acc
      00332F 12 67 46         [24] 2177 	lcall	_printf
      003332 E5 81            [12] 2178 	mov	a,sp
      003334 24 F9            [12] 2179 	add	a,#0xf9
      003336 F5 81            [12] 2180 	mov	sp,a
                                   2181 ;	calc.c:136: printf("%08lx / ", d0);
      003338 E5 08            [12] 2182 	mov	a,_bp
      00333A 24 15            [12] 2183 	add	a,#0x15
      00333C F8               [12] 2184 	mov	r0,a
      00333D E6               [12] 2185 	mov	a,@r0
      00333E C0 E0            [24] 2186 	push	acc
      003340 08               [12] 2187 	inc	r0
      003341 E6               [12] 2188 	mov	a,@r0
      003342 C0 E0            [24] 2189 	push	acc
      003344 08               [12] 2190 	inc	r0
      003345 E6               [12] 2191 	mov	a,@r0
      003346 C0 E0            [24] 2192 	push	acc
      003348 08               [12] 2193 	inc	r0
      003349 E6               [12] 2194 	mov	a,@r0
      00334A C0 E0            [24] 2195 	push	acc
      00334C 74 27            [12] 2196 	mov	a,#___str_4
      00334E C0 E0            [24] 2197 	push	acc
      003350 74 80            [12] 2198 	mov	a,#(___str_4 >> 8)
      003352 C0 E0            [24] 2199 	push	acc
      003354 74 80            [12] 2200 	mov	a,#0x80
      003356 C0 E0            [24] 2201 	push	acc
      003358 12 67 46         [24] 2202 	lcall	_printf
      00335B E5 81            [12] 2203 	mov	a,sp
      00335D 24 F9            [12] 2204 	add	a,#0xf9
      00335F F5 81            [12] 2205 	mov	sp,a
                                   2206 ;	calc.c:137: printbin(d0);
      003361 E5 08            [12] 2207 	mov	a,_bp
      003363 24 15            [12] 2208 	add	a,#0x15
      003365 F8               [12] 2209 	mov	r0,a
      003366 86 07            [24] 2210 	mov	ar7,@r0
      003368 08               [12] 2211 	inc	r0
      003369 86 06            [24] 2212 	mov	ar6,@r0
      00336B 08               [12] 2213 	inc	r0
      00336C 86 05            [24] 2214 	mov	ar5,@r0
      00336E 08               [12] 2215 	inc	r0
      00336F 86 04            [24] 2216 	mov	ar4,@r0
      003371 8C 02            [24] 2217 	mov	ar2,r4
                                   2218 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003373 E5 08            [12] 2219 	mov	a,_bp
      003375 24 1D            [12] 2220 	add	a,#0x1d
      003377 F8               [12] 2221 	mov	r0,a
      003378 E4               [12] 2222 	clr	a
      003379 F6               [12] 2223 	mov	@r0,a
      00337A 08               [12] 2224 	inc	r0
      00337B F6               [12] 2225 	mov	@r0,a
      00337C 08               [12] 2226 	inc	r0
      00337D F6               [12] 2227 	mov	@r0,a
      00337E 08               [12] 2228 	inc	r0
      00337F 76 80            [12] 2229 	mov	@r0,#0x80
      003381                       2230 00359$:
                                   2231 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      003381 E5 08            [12] 2232 	mov	a,_bp
      003383 24 07            [12] 2233 	add	a,#0x07
      003385 F8               [12] 2234 	mov	r0,a
      003386 A6 07            [24] 2235 	mov	@r0,ar7
      003388 08               [12] 2236 	inc	r0
      003389 A6 06            [24] 2237 	mov	@r0,ar6
      00338B 08               [12] 2238 	inc	r0
      00338C A6 05            [24] 2239 	mov	@r0,ar5
      00338E 08               [12] 2240 	inc	r0
      00338F A6 02            [24] 2241 	mov	@r0,ar2
      003391 E5 08            [12] 2242 	mov	a,_bp
      003393 24 07            [12] 2243 	add	a,#0x07
      003395 F8               [12] 2244 	mov	r0,a
      003396 E5 08            [12] 2245 	mov	a,_bp
      003398 24 1D            [12] 2246 	add	a,#0x1d
      00339A F9               [12] 2247 	mov	r1,a
      00339B E7               [12] 2248 	mov	a,@r1
      00339C 56               [12] 2249 	anl	a,@r0
      00339D F6               [12] 2250 	mov	@r0,a
      00339E 09               [12] 2251 	inc	r1
      00339F E7               [12] 2252 	mov	a,@r1
      0033A0 08               [12] 2253 	inc	r0
      0033A1 56               [12] 2254 	anl	a,@r0
      0033A2 F6               [12] 2255 	mov	@r0,a
      0033A3 09               [12] 2256 	inc	r1
      0033A4 E7               [12] 2257 	mov	a,@r1
      0033A5 08               [12] 2258 	inc	r0
      0033A6 56               [12] 2259 	anl	a,@r0
      0033A7 F6               [12] 2260 	mov	@r0,a
      0033A8 09               [12] 2261 	inc	r1
      0033A9 E7               [12] 2262 	mov	a,@r1
      0033AA 08               [12] 2263 	inc	r0
      0033AB 56               [12] 2264 	anl	a,@r0
      0033AC F6               [12] 2265 	mov	@r0,a
      0033AD E5 08            [12] 2266 	mov	a,_bp
      0033AF 24 07            [12] 2267 	add	a,#0x07
      0033B1 F8               [12] 2268 	mov	r0,a
      0033B2 E6               [12] 2269 	mov	a,@r0
      0033B3 08               [12] 2270 	inc	r0
      0033B4 46               [12] 2271 	orl	a,@r0
      0033B5 08               [12] 2272 	inc	r0
      0033B6 46               [12] 2273 	orl	a,@r0
      0033B7 08               [12] 2274 	inc	r0
      0033B8 46               [12] 2275 	orl	a,@r0
      0033B9 60 06            [24] 2276 	jz	00500$
      0033BB 7B 31            [12] 2277 	mov	r3,#0x31
      0033BD 7C 00            [12] 2278 	mov	r4,#0x00
      0033BF 80 04            [24] 2279 	sjmp	00501$
      0033C1                       2280 00500$:
      0033C1 7B 30            [12] 2281 	mov	r3,#0x30
      0033C3 7C 00            [12] 2282 	mov	r4,#0x00
      0033C5                       2283 00501$:
      0033C5 8B 82            [24] 2284 	mov	dpl,r3
      0033C7 8C 83            [24] 2285 	mov	dph,r4
      0033C9 12 29 C0         [24] 2286 	lcall	_putchar
                                   2287 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0033CC E5 08            [12] 2288 	mov	a,_bp
      0033CE 24 1D            [12] 2289 	add	a,#0x1d
      0033D0 F8               [12] 2290 	mov	r0,a
      0033D1 08               [12] 2291 	inc	r0
      0033D2 08               [12] 2292 	inc	r0
      0033D3 08               [12] 2293 	inc	r0
      0033D4 E6               [12] 2294 	mov	a,@r0
      0033D5 C3               [12] 2295 	clr	c
      0033D6 13               [12] 2296 	rrc	a
      0033D7 F6               [12] 2297 	mov	@r0,a
      0033D8 18               [12] 2298 	dec	r0
      0033D9 E6               [12] 2299 	mov	a,@r0
      0033DA 13               [12] 2300 	rrc	a
      0033DB F6               [12] 2301 	mov	@r0,a
      0033DC 18               [12] 2302 	dec	r0
      0033DD E6               [12] 2303 	mov	a,@r0
      0033DE 13               [12] 2304 	rrc	a
      0033DF F6               [12] 2305 	mov	@r0,a
      0033E0 18               [12] 2306 	dec	r0
      0033E1 E6               [12] 2307 	mov	a,@r0
      0033E2 13               [12] 2308 	rrc	a
      0033E3 F6               [12] 2309 	mov	@r0,a
      0033E4 E5 08            [12] 2310 	mov	a,_bp
      0033E6 24 1D            [12] 2311 	add	a,#0x1d
      0033E8 F8               [12] 2312 	mov	r0,a
      0033E9 E6               [12] 2313 	mov	a,@r0
      0033EA 08               [12] 2314 	inc	r0
      0033EB 46               [12] 2315 	orl	a,@r0
      0033EC 08               [12] 2316 	inc	r0
      0033ED 46               [12] 2317 	orl	a,@r0
      0033EE 08               [12] 2318 	inc	r0
      0033EF 46               [12] 2319 	orl	a,@r0
      0033F0 70 8F            [24] 2320 	jnz	00359$
                                   2321 ;	calc.c:138: printstr("\r\n");
      0033F2 7F 30            [12] 2322 	mov	r7,#___str_5
      0033F4 7E 80            [12] 2323 	mov	r6,#(___str_5 >> 8)
      0033F6 7D 80            [12] 2324 	mov	r5,#0x80
                                   2325 ;	calc.c:51: return;
      0033F8                       2326 00362$:
                                   2327 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0033F8 8F 82            [24] 2328 	mov	dpl,r7
      0033FA 8E 83            [24] 2329 	mov	dph,r6
      0033FC 8D F0            [24] 2330 	mov	b,r5
      0033FE 12 67 7F         [24] 2331 	lcall	__gptrget
      003401 FC               [12] 2332 	mov	r4,a
      003402 70 03            [24] 2333 	jnz	01267$
      003404 02 54 06         [24] 2334 	ljmp	00249$
      003407                       2335 01267$:
      003407 7B 00            [12] 2336 	mov	r3,#0x00
      003409 8C 82            [24] 2337 	mov	dpl,r4
      00340B 8B 83            [24] 2338 	mov	dph,r3
      00340D 12 29 C0         [24] 2339 	lcall	_putchar
      003410 0F               [12] 2340 	inc	r7
                                   2341 ;	calc.c:141: case 'P':
      003411 BF 00 E4         [24] 2342 	cjne	r7,#0x00,00362$
      003414 0E               [12] 2343 	inc	r6
      003415 80 E1            [24] 2344 	sjmp	00362$
      003417                       2345 00105$:
                                   2346 ;	calc.c:142: printstr("\r\n");
      003417 7F 30            [12] 2347 	mov	r7,#___str_5
      003419 7E 80            [12] 2348 	mov	r6,#(___str_5 >> 8)
      00341B 7D 80            [12] 2349 	mov	r5,#0x80
                                   2350 ;	calc.c:51: return;
      00341D                       2351 00365$:
                                   2352 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00341D 8F 82            [24] 2353 	mov	dpl,r7
      00341F 8E 83            [24] 2354 	mov	dph,r6
      003421 8D F0            [24] 2355 	mov	b,r5
      003423 12 67 7F         [24] 2356 	lcall	__gptrget
      003426 FC               [12] 2357 	mov	r4,a
      003427 60 10            [24] 2358 	jz	00261$
      003429 7B 00            [12] 2359 	mov	r3,#0x00
      00342B 8C 82            [24] 2360 	mov	dpl,r4
      00342D 8B 83            [24] 2361 	mov	dph,r3
      00342F 12 29 C0         [24] 2362 	lcall	_putchar
      003432 0F               [12] 2363 	inc	r7
                                   2364 ;	calc.c:142: printstr("\r\n");
      003433 BF 00 E7         [24] 2365 	cjne	r7,#0x00,00365$
      003436 0E               [12] 2366 	inc	r6
      003437 80 E4            [24] 2367 	sjmp	00365$
      003439                       2368 00261$:
                                   2369 ;	calc.c:143: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      003439 E5 08            [12] 2370 	mov	a,_bp
      00343B 24 12            [12] 2371 	add	a,#0x12
      00343D F8               [12] 2372 	mov	r0,a
      00343E 86 07            [24] 2373 	mov	ar7,@r0
      003440 08               [12] 2374 	inc	r0
      003441 86 06            [24] 2375 	mov	ar6,@r0
      003443 08               [12] 2376 	inc	r0
      003444 86 05            [24] 2377 	mov	ar5,@r0
      003446 E5 08            [12] 2378 	mov	a,_bp
      003448 24 12            [12] 2379 	add	a,#0x12
      00344A F8               [12] 2380 	mov	r0,a
      00344B 74 11            [12] 2381 	mov	a,#0x11
      00344D 26               [12] 2382 	add	a,@r0
      00344E FA               [12] 2383 	mov	r2,a
      00344F 74 40            [12] 2384 	mov	a,#0x40
      003451 08               [12] 2385 	inc	r0
      003452 36               [12] 2386 	addc	a,@r0
      003453 FB               [12] 2387 	mov	r3,a
      003454 08               [12] 2388 	inc	r0
      003455 86 04            [24] 2389 	mov	ar4,@r0
      003457 8A 82            [24] 2390 	mov	dpl,r2
      003459 8B 83            [24] 2391 	mov	dph,r3
      00345B 8C F0            [24] 2392 	mov	b,r4
      00345D 12 67 7F         [24] 2393 	lcall	__gptrget
      003460 FA               [12] 2394 	mov	r2,a
      003461 A3               [24] 2395 	inc	dptr
      003462 12 67 7F         [24] 2396 	lcall	__gptrget
      003465 FB               [12] 2397 	mov	r3,a
      003466 A3               [24] 2398 	inc	dptr
      003467 12 67 7F         [24] 2399 	lcall	__gptrget
      00346A FC               [12] 2400 	mov	r4,a
      00346B C0 07            [24] 2401 	push	ar7
      00346D C0 06            [24] 2402 	push	ar6
      00346F C0 05            [24] 2403 	push	ar5
      003471 74 4D            [12] 2404 	mov	a,#_dump_peek
      003473 C0 E0            [24] 2405 	push	acc
      003475 74 30            [12] 2406 	mov	a,#(_dump_peek >> 8)
      003477 C0 E0            [24] 2407 	push	acc
      003479 8A 82            [24] 2408 	mov	dpl,r2
      00347B 8B 83            [24] 2409 	mov	dph,r3
      00347D 8C F0            [24] 2410 	mov	b,r4
      00347F 12 28 EC         [24] 2411 	lcall	_stack_iter_peek
      003482 AB 82            [24] 2412 	mov	r3,dpl
      003484 AC 83            [24] 2413 	mov	r4,dph
      003486 E5 81            [12] 2414 	mov	a,sp
      003488 24 FB            [12] 2415 	add	a,#0xfb
      00348A F5 81            [12] 2416 	mov	sp,a
      00348C EB               [12] 2417 	mov	a,r3
      00348D 4C               [12] 2418 	orl	a,r4
      00348E 60 03            [24] 2419 	jz	01271$
      003490 02 54 06         [24] 2420 	ljmp	00249$
      003493                       2421 01271$:
      003493 7F 07            [12] 2422 	mov	r7,#___str_1
      003495 7E 80            [12] 2423 	mov	r6,#(___str_1 >> 8)
      003497 7D 80            [12] 2424 	mov	r5,#0x80
                                   2425 ;	calc.c:51: return;
      003499                       2426 00368$:
                                   2427 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003499 8F 82            [24] 2428 	mov	dpl,r7
      00349B 8E 83            [24] 2429 	mov	dph,r6
      00349D 8D F0            [24] 2430 	mov	b,r5
      00349F 12 67 7F         [24] 2431 	lcall	__gptrget
      0034A2 FC               [12] 2432 	mov	r4,a
      0034A3 70 03            [24] 2433 	jnz	01272$
      0034A5 02 54 06         [24] 2434 	ljmp	00249$
      0034A8                       2435 01272$:
      0034A8 7B 00            [12] 2436 	mov	r3,#0x00
      0034AA 8C 82            [24] 2437 	mov	dpl,r4
      0034AC 8B 83            [24] 2438 	mov	dph,r3
      0034AE 12 29 C0         [24] 2439 	lcall	_putchar
      0034B1 0F               [12] 2440 	inc	r7
                                   2441 ;	calc.c:146: case 'v':
      0034B2 BF 00 E4         [24] 2442 	cjne	r7,#0x00,00368$
      0034B5 0E               [12] 2443 	inc	r6
      0034B6 80 E1            [24] 2444 	sjmp	00368$
      0034B8                       2445 00109$:
                                   2446 ;	calc.c:147: printstr("\r\n");
      0034B8 7F 30            [12] 2447 	mov	r7,#___str_5
      0034BA 7E 80            [12] 2448 	mov	r6,#(___str_5 >> 8)
      0034BC 7D 80            [12] 2449 	mov	r5,#0x80
                                   2450 ;	calc.c:51: return;
      0034BE                       2451 00371$:
                                   2452 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0034BE 8F 82            [24] 2453 	mov	dpl,r7
      0034C0 8E 83            [24] 2454 	mov	dph,r6
      0034C2 8D F0            [24] 2455 	mov	b,r5
      0034C4 12 67 7F         [24] 2456 	lcall	__gptrget
      0034C7 FC               [12] 2457 	mov	r4,a
      0034C8 60 10            [24] 2458 	jz	00265$
      0034CA 7B 00            [12] 2459 	mov	r3,#0x00
      0034CC 8C 82            [24] 2460 	mov	dpl,r4
      0034CE 8B 83            [24] 2461 	mov	dph,r3
      0034D0 12 29 C0         [24] 2462 	lcall	_putchar
      0034D3 0F               [12] 2463 	inc	r7
                                   2464 ;	calc.c:147: printstr("\r\n");
      0034D4 BF 00 E7         [24] 2465 	cjne	r7,#0x00,00371$
      0034D7 0E               [12] 2466 	inc	r6
      0034D8 80 E4            [24] 2467 	sjmp	00371$
      0034DA                       2468 00265$:
                                   2469 ;	calc.c:148: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0034DA E5 08            [12] 2470 	mov	a,_bp
      0034DC 24 15            [12] 2471 	add	a,#0x15
      0034DE FF               [12] 2472 	mov	r7,a
      0034DF 7E 00            [12] 2473 	mov	r6,#0x00
      0034E1 7D 40            [12] 2474 	mov	r5,#0x40
      0034E3 E5 08            [12] 2475 	mov	a,_bp
      0034E5 24 12            [12] 2476 	add	a,#0x12
      0034E7 F8               [12] 2477 	mov	r0,a
      0034E8 74 11            [12] 2478 	mov	a,#0x11
      0034EA 26               [12] 2479 	add	a,@r0
      0034EB FA               [12] 2480 	mov	r2,a
      0034EC ED               [12] 2481 	mov	a,r5
      0034ED 08               [12] 2482 	inc	r0
      0034EE 36               [12] 2483 	addc	a,@r0
      0034EF FB               [12] 2484 	mov	r3,a
      0034F0 08               [12] 2485 	inc	r0
      0034F1 86 04            [24] 2486 	mov	ar4,@r0
      0034F3 8A 82            [24] 2487 	mov	dpl,r2
      0034F5 8B 83            [24] 2488 	mov	dph,r3
      0034F7 8C F0            [24] 2489 	mov	b,r4
      0034F9 12 67 7F         [24] 2490 	lcall	__gptrget
      0034FC FA               [12] 2491 	mov	r2,a
      0034FD A3               [24] 2492 	inc	dptr
      0034FE 12 67 7F         [24] 2493 	lcall	__gptrget
      003501 FB               [12] 2494 	mov	r3,a
      003502 A3               [24] 2495 	inc	dptr
      003503 12 67 7F         [24] 2496 	lcall	__gptrget
      003506 FC               [12] 2497 	mov	r4,a
      003507 C0 07            [24] 2498 	push	ar7
      003509 C0 06            [24] 2499 	push	ar6
      00350B C0 05            [24] 2500 	push	ar5
      00350D 8A 82            [24] 2501 	mov	dpl,r2
      00350F 8B 83            [24] 2502 	mov	dph,r3
      003511 8C F0            [24] 2503 	mov	b,r4
      003513 12 27 7F         [24] 2504 	lcall	_stack_pop
      003516 AB 82            [24] 2505 	mov	r3,dpl
      003518 AC 83            [24] 2506 	mov	r4,dph
      00351A 15 81            [12] 2507 	dec	sp
      00351C 15 81            [12] 2508 	dec	sp
      00351E 15 81            [12] 2509 	dec	sp
      003520 EB               [12] 2510 	mov	a,r3
      003521 4C               [12] 2511 	orl	a,r4
      003522 70 25            [24] 2512 	jnz	00111$
      003524 7F 07            [12] 2513 	mov	r7,#___str_1
      003526 7E 80            [12] 2514 	mov	r6,#(___str_1 >> 8)
      003528 7D 80            [12] 2515 	mov	r5,#0x80
                                   2516 ;	calc.c:51: return;
      00352A                       2517 00374$:
                                   2518 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00352A 8F 82            [24] 2519 	mov	dpl,r7
      00352C 8E 83            [24] 2520 	mov	dph,r6
      00352E 8D F0            [24] 2521 	mov	b,r5
      003530 12 67 7F         [24] 2522 	lcall	__gptrget
      003533 FC               [12] 2523 	mov	r4,a
      003534 70 03            [24] 2524 	jnz	01277$
      003536 02 54 06         [24] 2525 	ljmp	00249$
      003539                       2526 01277$:
      003539 7B 00            [12] 2527 	mov	r3,#0x00
      00353B 8C 82            [24] 2528 	mov	dpl,r4
      00353D 8B 83            [24] 2529 	mov	dph,r3
      00353F 12 29 C0         [24] 2530 	lcall	_putchar
      003542 0F               [12] 2531 	inc	r7
                                   2532 ;	calc.c:148: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003543 BF 00 E4         [24] 2533 	cjne	r7,#0x00,00374$
      003546 0E               [12] 2534 	inc	r6
      003547 80 E1            [24] 2535 	sjmp	00374$
      003549                       2536 00111$:
                                   2537 ;	calc.c:150: printstr("VT ");
      003549 7F 40            [12] 2538 	mov	r7,#___str_9
      00354B 7E 80            [12] 2539 	mov	r6,#(___str_9 >> 8)
      00354D 7D 80            [12] 2540 	mov	r5,#0x80
                                   2541 ;	calc.c:51: return;
      00354F                       2542 00377$:
                                   2543 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00354F 8F 82            [24] 2544 	mov	dpl,r7
      003551 8E 83            [24] 2545 	mov	dph,r6
      003553 8D F0            [24] 2546 	mov	b,r5
      003555 12 67 7F         [24] 2547 	lcall	__gptrget
      003558 FC               [12] 2548 	mov	r4,a
      003559 60 10            [24] 2549 	jz	00269$
      00355B 7B 00            [12] 2550 	mov	r3,#0x00
      00355D 8C 82            [24] 2551 	mov	dpl,r4
      00355F 8B 83            [24] 2552 	mov	dph,r3
      003561 12 29 C0         [24] 2553 	lcall	_putchar
      003564 0F               [12] 2554 	inc	r7
                                   2555 ;	calc.c:150: printstr("VT ");
      003565 BF 00 E7         [24] 2556 	cjne	r7,#0x00,00377$
      003568 0E               [12] 2557 	inc	r6
      003569 80 E4            [24] 2558 	sjmp	00377$
      00356B                       2559 00269$:
                                   2560 ;	calc.c:151: printf("% 11ld / ", d0);
      00356B E5 08            [12] 2561 	mov	a,_bp
      00356D 24 15            [12] 2562 	add	a,#0x15
      00356F F8               [12] 2563 	mov	r0,a
      003570 E6               [12] 2564 	mov	a,@r0
      003571 C0 E0            [24] 2565 	push	acc
      003573 08               [12] 2566 	inc	r0
      003574 E6               [12] 2567 	mov	a,@r0
      003575 C0 E0            [24] 2568 	push	acc
      003577 08               [12] 2569 	inc	r0
      003578 E6               [12] 2570 	mov	a,@r0
      003579 C0 E0            [24] 2571 	push	acc
      00357B 08               [12] 2572 	inc	r0
      00357C E6               [12] 2573 	mov	a,@r0
      00357D C0 E0            [24] 2574 	push	acc
      00357F 74 1D            [12] 2575 	mov	a,#___str_3
      003581 C0 E0            [24] 2576 	push	acc
      003583 74 80            [12] 2577 	mov	a,#(___str_3 >> 8)
      003585 C0 E0            [24] 2578 	push	acc
      003587 74 80            [12] 2579 	mov	a,#0x80
      003589 C0 E0            [24] 2580 	push	acc
      00358B 12 67 46         [24] 2581 	lcall	_printf
      00358E E5 81            [12] 2582 	mov	a,sp
      003590 24 F9            [12] 2583 	add	a,#0xf9
      003592 F5 81            [12] 2584 	mov	sp,a
                                   2585 ;	calc.c:152: printf("%08lx / ", d0);
      003594 E5 08            [12] 2586 	mov	a,_bp
      003596 24 15            [12] 2587 	add	a,#0x15
      003598 F8               [12] 2588 	mov	r0,a
      003599 E6               [12] 2589 	mov	a,@r0
      00359A C0 E0            [24] 2590 	push	acc
      00359C 08               [12] 2591 	inc	r0
      00359D E6               [12] 2592 	mov	a,@r0
      00359E C0 E0            [24] 2593 	push	acc
      0035A0 08               [12] 2594 	inc	r0
      0035A1 E6               [12] 2595 	mov	a,@r0
      0035A2 C0 E0            [24] 2596 	push	acc
      0035A4 08               [12] 2597 	inc	r0
      0035A5 E6               [12] 2598 	mov	a,@r0
      0035A6 C0 E0            [24] 2599 	push	acc
      0035A8 74 27            [12] 2600 	mov	a,#___str_4
      0035AA C0 E0            [24] 2601 	push	acc
      0035AC 74 80            [12] 2602 	mov	a,#(___str_4 >> 8)
      0035AE C0 E0            [24] 2603 	push	acc
      0035B0 74 80            [12] 2604 	mov	a,#0x80
      0035B2 C0 E0            [24] 2605 	push	acc
      0035B4 12 67 46         [24] 2606 	lcall	_printf
      0035B7 E5 81            [12] 2607 	mov	a,sp
      0035B9 24 F9            [12] 2608 	add	a,#0xf9
      0035BB F5 81            [12] 2609 	mov	sp,a
                                   2610 ;	calc.c:153: printbin(d0);
      0035BD E5 08            [12] 2611 	mov	a,_bp
      0035BF 24 15            [12] 2612 	add	a,#0x15
      0035C1 F8               [12] 2613 	mov	r0,a
      0035C2 86 07            [24] 2614 	mov	ar7,@r0
      0035C4 08               [12] 2615 	inc	r0
      0035C5 86 06            [24] 2616 	mov	ar6,@r0
      0035C7 08               [12] 2617 	inc	r0
      0035C8 86 05            [24] 2618 	mov	ar5,@r0
      0035CA 08               [12] 2619 	inc	r0
      0035CB 86 04            [24] 2620 	mov	ar4,@r0
      0035CD 8C 02            [24] 2621 	mov	ar2,r4
                                   2622 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0035CF E5 08            [12] 2623 	mov	a,_bp
      0035D1 24 1D            [12] 2624 	add	a,#0x1d
      0035D3 F8               [12] 2625 	mov	r0,a
      0035D4 E4               [12] 2626 	clr	a
      0035D5 F6               [12] 2627 	mov	@r0,a
      0035D6 08               [12] 2628 	inc	r0
      0035D7 F6               [12] 2629 	mov	@r0,a
      0035D8 08               [12] 2630 	inc	r0
      0035D9 F6               [12] 2631 	mov	@r0,a
      0035DA 08               [12] 2632 	inc	r0
      0035DB 76 80            [12] 2633 	mov	@r0,#0x80
      0035DD                       2634 00379$:
                                   2635 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0035DD E5 08            [12] 2636 	mov	a,_bp
      0035DF 24 07            [12] 2637 	add	a,#0x07
      0035E1 F8               [12] 2638 	mov	r0,a
      0035E2 A6 07            [24] 2639 	mov	@r0,ar7
      0035E4 08               [12] 2640 	inc	r0
      0035E5 A6 06            [24] 2641 	mov	@r0,ar6
      0035E7 08               [12] 2642 	inc	r0
      0035E8 A6 05            [24] 2643 	mov	@r0,ar5
      0035EA 08               [12] 2644 	inc	r0
      0035EB A6 02            [24] 2645 	mov	@r0,ar2
      0035ED E5 08            [12] 2646 	mov	a,_bp
      0035EF 24 07            [12] 2647 	add	a,#0x07
      0035F1 F8               [12] 2648 	mov	r0,a
      0035F2 E5 08            [12] 2649 	mov	a,_bp
      0035F4 24 1D            [12] 2650 	add	a,#0x1d
      0035F6 F9               [12] 2651 	mov	r1,a
      0035F7 E7               [12] 2652 	mov	a,@r1
      0035F8 56               [12] 2653 	anl	a,@r0
      0035F9 F6               [12] 2654 	mov	@r0,a
      0035FA 09               [12] 2655 	inc	r1
      0035FB E7               [12] 2656 	mov	a,@r1
      0035FC 08               [12] 2657 	inc	r0
      0035FD 56               [12] 2658 	anl	a,@r0
      0035FE F6               [12] 2659 	mov	@r0,a
      0035FF 09               [12] 2660 	inc	r1
      003600 E7               [12] 2661 	mov	a,@r1
      003601 08               [12] 2662 	inc	r0
      003602 56               [12] 2663 	anl	a,@r0
      003603 F6               [12] 2664 	mov	@r0,a
      003604 09               [12] 2665 	inc	r1
      003605 E7               [12] 2666 	mov	a,@r1
      003606 08               [12] 2667 	inc	r0
      003607 56               [12] 2668 	anl	a,@r0
      003608 F6               [12] 2669 	mov	@r0,a
      003609 E5 08            [12] 2670 	mov	a,_bp
      00360B 24 07            [12] 2671 	add	a,#0x07
      00360D F8               [12] 2672 	mov	r0,a
      00360E E6               [12] 2673 	mov	a,@r0
      00360F 08               [12] 2674 	inc	r0
      003610 46               [12] 2675 	orl	a,@r0
      003611 08               [12] 2676 	inc	r0
      003612 46               [12] 2677 	orl	a,@r0
      003613 08               [12] 2678 	inc	r0
      003614 46               [12] 2679 	orl	a,@r0
      003615 60 06            [24] 2680 	jz	00502$
      003617 7B 31            [12] 2681 	mov	r3,#0x31
      003619 7C 00            [12] 2682 	mov	r4,#0x00
      00361B 80 04            [24] 2683 	sjmp	00503$
      00361D                       2684 00502$:
      00361D 7B 30            [12] 2685 	mov	r3,#0x30
      00361F 7C 00            [12] 2686 	mov	r4,#0x00
      003621                       2687 00503$:
      003621 8B 82            [24] 2688 	mov	dpl,r3
      003623 8C 83            [24] 2689 	mov	dph,r4
      003625 12 29 C0         [24] 2690 	lcall	_putchar
                                   2691 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003628 E5 08            [12] 2692 	mov	a,_bp
      00362A 24 1D            [12] 2693 	add	a,#0x1d
      00362C F8               [12] 2694 	mov	r0,a
      00362D 08               [12] 2695 	inc	r0
      00362E 08               [12] 2696 	inc	r0
      00362F 08               [12] 2697 	inc	r0
      003630 E6               [12] 2698 	mov	a,@r0
      003631 C3               [12] 2699 	clr	c
      003632 13               [12] 2700 	rrc	a
      003633 F6               [12] 2701 	mov	@r0,a
      003634 18               [12] 2702 	dec	r0
      003635 E6               [12] 2703 	mov	a,@r0
      003636 13               [12] 2704 	rrc	a
      003637 F6               [12] 2705 	mov	@r0,a
      003638 18               [12] 2706 	dec	r0
      003639 E6               [12] 2707 	mov	a,@r0
      00363A 13               [12] 2708 	rrc	a
      00363B F6               [12] 2709 	mov	@r0,a
      00363C 18               [12] 2710 	dec	r0
      00363D E6               [12] 2711 	mov	a,@r0
      00363E 13               [12] 2712 	rrc	a
      00363F F6               [12] 2713 	mov	@r0,a
      003640 E5 08            [12] 2714 	mov	a,_bp
      003642 24 1D            [12] 2715 	add	a,#0x1d
      003644 F8               [12] 2716 	mov	r0,a
      003645 E6               [12] 2717 	mov	a,@r0
      003646 08               [12] 2718 	inc	r0
      003647 46               [12] 2719 	orl	a,@r0
      003648 08               [12] 2720 	inc	r0
      003649 46               [12] 2721 	orl	a,@r0
      00364A 08               [12] 2722 	inc	r0
      00364B 46               [12] 2723 	orl	a,@r0
      00364C 70 8F            [24] 2724 	jnz	00379$
                                   2725 ;	calc.c:154: printstr("\r\n");
      00364E 7F 30            [12] 2726 	mov	r7,#___str_5
      003650 7E 80            [12] 2727 	mov	r6,#(___str_5 >> 8)
      003652 7D 80            [12] 2728 	mov	r5,#0x80
                                   2729 ;	calc.c:51: return;
      003654                       2730 00382$:
                                   2731 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003654 8F 82            [24] 2732 	mov	dpl,r7
      003656 8E 83            [24] 2733 	mov	dph,r6
      003658 8D F0            [24] 2734 	mov	b,r5
      00365A 12 67 7F         [24] 2735 	lcall	__gptrget
      00365D FC               [12] 2736 	mov	r4,a
      00365E 70 03            [24] 2737 	jnz	01283$
      003660 02 54 06         [24] 2738 	ljmp	00249$
      003663                       2739 01283$:
      003663 7B 00            [12] 2740 	mov	r3,#0x00
      003665 8C 82            [24] 2741 	mov	dpl,r4
      003667 8B 83            [24] 2742 	mov	dph,r3
      003669 12 29 C0         [24] 2743 	lcall	_putchar
      00366C 0F               [12] 2744 	inc	r7
                                   2745 ;	calc.c:157: case 'V':
      00366D BF 00 E4         [24] 2746 	cjne	r7,#0x00,00382$
      003670 0E               [12] 2747 	inc	r6
      003671 80 E1            [24] 2748 	sjmp	00382$
      003673                       2749 00113$:
                                   2750 ;	calc.c:158: printstr("\r\n");
      003673 7F 30            [12] 2751 	mov	r7,#___str_5
      003675 7E 80            [12] 2752 	mov	r6,#(___str_5 >> 8)
      003677 7D 80            [12] 2753 	mov	r5,#0x80
                                   2754 ;	calc.c:51: return;
      003679                       2755 00385$:
                                   2756 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003679 8F 82            [24] 2757 	mov	dpl,r7
      00367B 8E 83            [24] 2758 	mov	dph,r6
      00367D 8D F0            [24] 2759 	mov	b,r5
      00367F 12 67 7F         [24] 2760 	lcall	__gptrget
      003682 FC               [12] 2761 	mov	r4,a
      003683 60 10            [24] 2762 	jz	00275$
      003685 7B 00            [12] 2763 	mov	r3,#0x00
      003687 8C 82            [24] 2764 	mov	dpl,r4
      003689 8B 83            [24] 2765 	mov	dph,r3
      00368B 12 29 C0         [24] 2766 	lcall	_putchar
      00368E 0F               [12] 2767 	inc	r7
                                   2768 ;	calc.c:158: printstr("\r\n");
      00368F BF 00 E7         [24] 2769 	cjne	r7,#0x00,00385$
      003692 0E               [12] 2770 	inc	r6
      003693 80 E4            [24] 2771 	sjmp	00385$
      003695                       2772 00275$:
                                   2773 ;	calc.c:159: (void)dump_pop(_ctx, delta);
      003695 E5 08            [12] 2774 	mov	a,_bp
      003697 24 FB            [12] 2775 	add	a,#0xfb
      003699 F8               [12] 2776 	mov	r0,a
      00369A E6               [12] 2777 	mov	a,@r0
      00369B C0 E0            [24] 2778 	push	acc
      00369D 08               [12] 2779 	inc	r0
      00369E E6               [12] 2780 	mov	a,@r0
      00369F C0 E0            [24] 2781 	push	acc
      0036A1 08               [12] 2782 	inc	r0
      0036A2 E6               [12] 2783 	mov	a,@r0
      0036A3 C0 E0            [24] 2784 	push	acc
      0036A5 A8 08            [24] 2785 	mov	r0,_bp
      0036A7 08               [12] 2786 	inc	r0
      0036A8 86 82            [24] 2787 	mov	dpl,@r0
      0036AA 08               [12] 2788 	inc	r0
      0036AB 86 83            [24] 2789 	mov	dph,@r0
      0036AD 08               [12] 2790 	inc	r0
      0036AE 86 F0            [24] 2791 	mov	b,@r0
      0036B0 12 2B 53         [24] 2792 	lcall	_dump_pop
      0036B3 15 81            [12] 2793 	dec	sp
      0036B5 15 81            [12] 2794 	dec	sp
      0036B7 15 81            [12] 2795 	dec	sp
                                   2796 ;	calc.c:160: break;
      0036B9 02 54 06         [24] 2797 	ljmp	00249$
                                   2798 ;	calc.c:161: case 'x':
      0036BC                       2799 00114$:
                                   2800 ;	calc.c:162: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0036BC E5 08            [12] 2801 	mov	a,_bp
      0036BE 24 15            [12] 2802 	add	a,#0x15
      0036C0 FF               [12] 2803 	mov	r7,a
      0036C1 7E 00            [12] 2804 	mov	r6,#0x00
      0036C3 7D 40            [12] 2805 	mov	r5,#0x40
      0036C5 E5 08            [12] 2806 	mov	a,_bp
      0036C7 24 12            [12] 2807 	add	a,#0x12
      0036C9 F8               [12] 2808 	mov	r0,a
      0036CA E5 08            [12] 2809 	mov	a,_bp
      0036CC 24 07            [12] 2810 	add	a,#0x07
      0036CE F9               [12] 2811 	mov	r1,a
      0036CF 74 11            [12] 2812 	mov	a,#0x11
      0036D1 26               [12] 2813 	add	a,@r0
      0036D2 F7               [12] 2814 	mov	@r1,a
      0036D3 74 40            [12] 2815 	mov	a,#0x40
      0036D5 08               [12] 2816 	inc	r0
      0036D6 36               [12] 2817 	addc	a,@r0
      0036D7 09               [12] 2818 	inc	r1
      0036D8 F7               [12] 2819 	mov	@r1,a
      0036D9 08               [12] 2820 	inc	r0
      0036DA 09               [12] 2821 	inc	r1
      0036DB E6               [12] 2822 	mov	a,@r0
      0036DC F7               [12] 2823 	mov	@r1,a
      0036DD E5 08            [12] 2824 	mov	a,_bp
      0036DF 24 07            [12] 2825 	add	a,#0x07
      0036E1 F8               [12] 2826 	mov	r0,a
      0036E2 86 82            [24] 2827 	mov	dpl,@r0
      0036E4 08               [12] 2828 	inc	r0
      0036E5 86 83            [24] 2829 	mov	dph,@r0
      0036E7 08               [12] 2830 	inc	r0
      0036E8 86 F0            [24] 2831 	mov	b,@r0
      0036EA 12 67 7F         [24] 2832 	lcall	__gptrget
      0036ED FA               [12] 2833 	mov	r2,a
      0036EE A3               [24] 2834 	inc	dptr
      0036EF 12 67 7F         [24] 2835 	lcall	__gptrget
      0036F2 FB               [12] 2836 	mov	r3,a
      0036F3 A3               [24] 2837 	inc	dptr
      0036F4 12 67 7F         [24] 2838 	lcall	__gptrget
      0036F7 FC               [12] 2839 	mov	r4,a
      0036F8 C0 07            [24] 2840 	push	ar7
      0036FA C0 06            [24] 2841 	push	ar6
      0036FC C0 05            [24] 2842 	push	ar5
      0036FE 8A 82            [24] 2843 	mov	dpl,r2
      003700 8B 83            [24] 2844 	mov	dph,r3
      003702 8C F0            [24] 2845 	mov	b,r4
      003704 12 27 7F         [24] 2846 	lcall	_stack_pop
      003707 AB 82            [24] 2847 	mov	r3,dpl
      003709 AC 83            [24] 2848 	mov	r4,dph
      00370B 15 81            [12] 2849 	dec	sp
      00370D 15 81            [12] 2850 	dec	sp
      00370F 15 81            [12] 2851 	dec	sp
      003711 EB               [12] 2852 	mov	a,r3
      003712 4C               [12] 2853 	orl	a,r4
      003713 70 25            [24] 2854 	jnz	00119$
      003715 7F 44            [12] 2855 	mov	r7,#___str_10
      003717 7E 80            [12] 2856 	mov	r6,#(___str_10 >> 8)
      003719 7D 80            [12] 2857 	mov	r5,#0x80
                                   2858 ;	calc.c:51: return;
      00371B                       2859 00388$:
                                   2860 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00371B 8F 82            [24] 2861 	mov	dpl,r7
      00371D 8E 83            [24] 2862 	mov	dph,r6
      00371F 8D F0            [24] 2863 	mov	b,r5
      003721 12 67 7F         [24] 2864 	lcall	__gptrget
      003724 FC               [12] 2865 	mov	r4,a
      003725 70 03            [24] 2866 	jnz	01288$
      003727 02 54 06         [24] 2867 	ljmp	00249$
      00372A                       2868 01288$:
      00372A 7B 00            [12] 2869 	mov	r3,#0x00
      00372C 8C 82            [24] 2870 	mov	dpl,r4
      00372E 8B 83            [24] 2871 	mov	dph,r3
      003730 12 29 C0         [24] 2872 	lcall	_putchar
      003733 0F               [12] 2873 	inc	r7
                                   2874 ;	calc.c:162: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003734 BF 00 E4         [24] 2875 	cjne	r7,#0x00,00388$
      003737 0E               [12] 2876 	inc	r6
      003738 80 E1            [24] 2877 	sjmp	00388$
      00373A                       2878 00119$:
                                   2879 ;	calc.c:163: else if (!stack_pop(ctx->ps, &d1)) {
      00373A E5 08            [12] 2880 	mov	a,_bp
      00373C 24 19            [12] 2881 	add	a,#0x19
      00373E FF               [12] 2882 	mov	r7,a
      00373F 7E 00            [12] 2883 	mov	r6,#0x00
      003741 7D 40            [12] 2884 	mov	r5,#0x40
      003743 E5 08            [12] 2885 	mov	a,_bp
      003745 24 07            [12] 2886 	add	a,#0x07
      003747 F8               [12] 2887 	mov	r0,a
      003748 86 82            [24] 2888 	mov	dpl,@r0
      00374A 08               [12] 2889 	inc	r0
      00374B 86 83            [24] 2890 	mov	dph,@r0
      00374D 08               [12] 2891 	inc	r0
      00374E 86 F0            [24] 2892 	mov	b,@r0
      003750 12 67 7F         [24] 2893 	lcall	__gptrget
      003753 FA               [12] 2894 	mov	r2,a
      003754 A3               [24] 2895 	inc	dptr
      003755 12 67 7F         [24] 2896 	lcall	__gptrget
      003758 FB               [12] 2897 	mov	r3,a
      003759 A3               [24] 2898 	inc	dptr
      00375A 12 67 7F         [24] 2899 	lcall	__gptrget
      00375D FC               [12] 2900 	mov	r4,a
      00375E C0 07            [24] 2901 	push	ar7
      003760 C0 06            [24] 2902 	push	ar6
      003762 C0 05            [24] 2903 	push	ar5
      003764 8A 82            [24] 2904 	mov	dpl,r2
      003766 8B 83            [24] 2905 	mov	dph,r3
      003768 8C F0            [24] 2906 	mov	b,r4
      00376A 12 27 7F         [24] 2907 	lcall	_stack_pop
      00376D AB 82            [24] 2908 	mov	r3,dpl
      00376F AC 83            [24] 2909 	mov	r4,dph
      003771 15 81            [12] 2910 	dec	sp
      003773 15 81            [12] 2911 	dec	sp
      003775 15 81            [12] 2912 	dec	sp
      003777 EB               [12] 2913 	mov	a,r3
      003778 4C               [12] 2914 	orl	a,r4
      003779 70 63            [24] 2915 	jnz	00116$
                                   2916 ;	calc.c:164: (void)stack_push(ctx->ps, d0);
      00377B E5 08            [12] 2917 	mov	a,_bp
      00377D 24 07            [12] 2918 	add	a,#0x07
      00377F F8               [12] 2919 	mov	r0,a
      003780 86 82            [24] 2920 	mov	dpl,@r0
      003782 08               [12] 2921 	inc	r0
      003783 86 83            [24] 2922 	mov	dph,@r0
      003785 08               [12] 2923 	inc	r0
      003786 86 F0            [24] 2924 	mov	b,@r0
      003788 12 67 7F         [24] 2925 	lcall	__gptrget
      00378B FA               [12] 2926 	mov	r2,a
      00378C A3               [24] 2927 	inc	dptr
      00378D 12 67 7F         [24] 2928 	lcall	__gptrget
      003790 FB               [12] 2929 	mov	r3,a
      003791 A3               [24] 2930 	inc	dptr
      003792 12 67 7F         [24] 2931 	lcall	__gptrget
      003795 FC               [12] 2932 	mov	r4,a
      003796 E5 08            [12] 2933 	mov	a,_bp
      003798 24 15            [12] 2934 	add	a,#0x15
      00379A F8               [12] 2935 	mov	r0,a
      00379B E6               [12] 2936 	mov	a,@r0
      00379C C0 E0            [24] 2937 	push	acc
      00379E 08               [12] 2938 	inc	r0
      00379F E6               [12] 2939 	mov	a,@r0
      0037A0 C0 E0            [24] 2940 	push	acc
      0037A2 08               [12] 2941 	inc	r0
      0037A3 E6               [12] 2942 	mov	a,@r0
      0037A4 C0 E0            [24] 2943 	push	acc
      0037A6 08               [12] 2944 	inc	r0
      0037A7 E6               [12] 2945 	mov	a,@r0
      0037A8 C0 E0            [24] 2946 	push	acc
      0037AA 8A 82            [24] 2947 	mov	dpl,r2
      0037AC 8B 83            [24] 2948 	mov	dph,r3
      0037AE 8C F0            [24] 2949 	mov	b,r4
      0037B0 12 26 B5         [24] 2950 	lcall	_stack_push
      0037B3 E5 81            [12] 2951 	mov	a,sp
      0037B5 24 FC            [12] 2952 	add	a,#0xfc
      0037B7 F5 81            [12] 2953 	mov	sp,a
                                   2954 ;	calc.c:165: printstr("\r\nstack underflow\r\n");
      0037B9 7F 44            [12] 2955 	mov	r7,#___str_10
      0037BB 7E 80            [12] 2956 	mov	r6,#(___str_10 >> 8)
      0037BD 7D 80            [12] 2957 	mov	r5,#0x80
                                   2958 ;	calc.c:51: return;
      0037BF                       2959 00391$:
                                   2960 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0037BF 8F 82            [24] 2961 	mov	dpl,r7
      0037C1 8E 83            [24] 2962 	mov	dph,r6
      0037C3 8D F0            [24] 2963 	mov	b,r5
      0037C5 12 67 7F         [24] 2964 	lcall	__gptrget
      0037C8 FC               [12] 2965 	mov	r4,a
      0037C9 70 03            [24] 2966 	jnz	01291$
      0037CB 02 54 06         [24] 2967 	ljmp	00249$
      0037CE                       2968 01291$:
      0037CE 7B 00            [12] 2969 	mov	r3,#0x00
      0037D0 8C 82            [24] 2970 	mov	dpl,r4
      0037D2 8B 83            [24] 2971 	mov	dph,r3
      0037D4 12 29 C0         [24] 2972 	lcall	_putchar
      0037D7 0F               [12] 2973 	inc	r7
                                   2974 ;	calc.c:165: printstr("\r\nstack underflow\r\n");
      0037D8 BF 00 E4         [24] 2975 	cjne	r7,#0x00,00391$
      0037DB 0E               [12] 2976 	inc	r6
      0037DC 80 E1            [24] 2977 	sjmp	00391$
      0037DE                       2978 00116$:
                                   2979 ;	calc.c:167: (void)stack_push(ctx->ps, d0);
      0037DE E5 08            [12] 2980 	mov	a,_bp
      0037E0 24 07            [12] 2981 	add	a,#0x07
      0037E2 F8               [12] 2982 	mov	r0,a
      0037E3 86 82            [24] 2983 	mov	dpl,@r0
      0037E5 08               [12] 2984 	inc	r0
      0037E6 86 83            [24] 2985 	mov	dph,@r0
      0037E8 08               [12] 2986 	inc	r0
      0037E9 86 F0            [24] 2987 	mov	b,@r0
      0037EB 12 67 7F         [24] 2988 	lcall	__gptrget
      0037EE FA               [12] 2989 	mov	r2,a
      0037EF A3               [24] 2990 	inc	dptr
      0037F0 12 67 7F         [24] 2991 	lcall	__gptrget
      0037F3 FB               [12] 2992 	mov	r3,a
      0037F4 A3               [24] 2993 	inc	dptr
      0037F5 12 67 7F         [24] 2994 	lcall	__gptrget
      0037F8 FC               [12] 2995 	mov	r4,a
      0037F9 E5 08            [12] 2996 	mov	a,_bp
      0037FB 24 15            [12] 2997 	add	a,#0x15
      0037FD F8               [12] 2998 	mov	r0,a
      0037FE E6               [12] 2999 	mov	a,@r0
      0037FF C0 E0            [24] 3000 	push	acc
      003801 08               [12] 3001 	inc	r0
      003802 E6               [12] 3002 	mov	a,@r0
      003803 C0 E0            [24] 3003 	push	acc
      003805 08               [12] 3004 	inc	r0
      003806 E6               [12] 3005 	mov	a,@r0
      003807 C0 E0            [24] 3006 	push	acc
      003809 08               [12] 3007 	inc	r0
      00380A E6               [12] 3008 	mov	a,@r0
      00380B C0 E0            [24] 3009 	push	acc
      00380D 8A 82            [24] 3010 	mov	dpl,r2
      00380F 8B 83            [24] 3011 	mov	dph,r3
      003811 8C F0            [24] 3012 	mov	b,r4
      003813 12 26 B5         [24] 3013 	lcall	_stack_push
      003816 E5 81            [12] 3014 	mov	a,sp
      003818 24 FC            [12] 3015 	add	a,#0xfc
      00381A F5 81            [12] 3016 	mov	sp,a
                                   3017 ;	calc.c:168: (void)stack_push(ctx->ps, d1);
      00381C E5 08            [12] 3018 	mov	a,_bp
      00381E 24 07            [12] 3019 	add	a,#0x07
      003820 F8               [12] 3020 	mov	r0,a
      003821 86 82            [24] 3021 	mov	dpl,@r0
      003823 08               [12] 3022 	inc	r0
      003824 86 83            [24] 3023 	mov	dph,@r0
      003826 08               [12] 3024 	inc	r0
      003827 86 F0            [24] 3025 	mov	b,@r0
      003829 12 67 7F         [24] 3026 	lcall	__gptrget
      00382C FA               [12] 3027 	mov	r2,a
      00382D A3               [24] 3028 	inc	dptr
      00382E 12 67 7F         [24] 3029 	lcall	__gptrget
      003831 FB               [12] 3030 	mov	r3,a
      003832 A3               [24] 3031 	inc	dptr
      003833 12 67 7F         [24] 3032 	lcall	__gptrget
      003836 FC               [12] 3033 	mov	r4,a
      003837 E5 08            [12] 3034 	mov	a,_bp
      003839 24 19            [12] 3035 	add	a,#0x19
      00383B F8               [12] 3036 	mov	r0,a
      00383C E6               [12] 3037 	mov	a,@r0
      00383D C0 E0            [24] 3038 	push	acc
      00383F 08               [12] 3039 	inc	r0
      003840 E6               [12] 3040 	mov	a,@r0
      003841 C0 E0            [24] 3041 	push	acc
      003843 08               [12] 3042 	inc	r0
      003844 E6               [12] 3043 	mov	a,@r0
      003845 C0 E0            [24] 3044 	push	acc
      003847 08               [12] 3045 	inc	r0
      003848 E6               [12] 3046 	mov	a,@r0
      003849 C0 E0            [24] 3047 	push	acc
      00384B 8A 82            [24] 3048 	mov	dpl,r2
      00384D 8B 83            [24] 3049 	mov	dph,r3
      00384F 8C F0            [24] 3050 	mov	b,r4
      003851 12 26 B5         [24] 3051 	lcall	_stack_push
      003854 E5 81            [12] 3052 	mov	a,sp
      003856 24 FC            [12] 3053 	add	a,#0xfc
      003858 F5 81            [12] 3054 	mov	sp,a
                                   3055 ;	calc.c:170: break;
      00385A 02 54 06         [24] 3056 	ljmp	00249$
                                   3057 ;	calc.c:171: case 'm':
      00385D                       3058 00121$:
                                   3059 ;	calc.c:172: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00385D E5 08            [12] 3060 	mov	a,_bp
      00385F 24 15            [12] 3061 	add	a,#0x15
      003861 FF               [12] 3062 	mov	r7,a
      003862 7E 00            [12] 3063 	mov	r6,#0x00
      003864 7D 40            [12] 3064 	mov	r5,#0x40
      003866 E5 08            [12] 3065 	mov	a,_bp
      003868 24 12            [12] 3066 	add	a,#0x12
      00386A F8               [12] 3067 	mov	r0,a
      00386B E5 08            [12] 3068 	mov	a,_bp
      00386D 24 07            [12] 3069 	add	a,#0x07
      00386F F9               [12] 3070 	mov	r1,a
      003870 74 11            [12] 3071 	mov	a,#0x11
      003872 26               [12] 3072 	add	a,@r0
      003873 F7               [12] 3073 	mov	@r1,a
      003874 74 40            [12] 3074 	mov	a,#0x40
      003876 08               [12] 3075 	inc	r0
      003877 36               [12] 3076 	addc	a,@r0
      003878 09               [12] 3077 	inc	r1
      003879 F7               [12] 3078 	mov	@r1,a
      00387A 08               [12] 3079 	inc	r0
      00387B 09               [12] 3080 	inc	r1
      00387C E6               [12] 3081 	mov	a,@r0
      00387D F7               [12] 3082 	mov	@r1,a
      00387E E5 08            [12] 3083 	mov	a,_bp
      003880 24 07            [12] 3084 	add	a,#0x07
      003882 F8               [12] 3085 	mov	r0,a
      003883 86 82            [24] 3086 	mov	dpl,@r0
      003885 08               [12] 3087 	inc	r0
      003886 86 83            [24] 3088 	mov	dph,@r0
      003888 08               [12] 3089 	inc	r0
      003889 86 F0            [24] 3090 	mov	b,@r0
      00388B 12 67 7F         [24] 3091 	lcall	__gptrget
      00388E FA               [12] 3092 	mov	r2,a
      00388F A3               [24] 3093 	inc	dptr
      003890 12 67 7F         [24] 3094 	lcall	__gptrget
      003893 FB               [12] 3095 	mov	r3,a
      003894 A3               [24] 3096 	inc	dptr
      003895 12 67 7F         [24] 3097 	lcall	__gptrget
      003898 FC               [12] 3098 	mov	r4,a
      003899 C0 07            [24] 3099 	push	ar7
      00389B C0 06            [24] 3100 	push	ar6
      00389D C0 05            [24] 3101 	push	ar5
      00389F 8A 82            [24] 3102 	mov	dpl,r2
      0038A1 8B 83            [24] 3103 	mov	dph,r3
      0038A3 8C F0            [24] 3104 	mov	b,r4
      0038A5 12 27 7F         [24] 3105 	lcall	_stack_pop
      0038A8 AB 82            [24] 3106 	mov	r3,dpl
      0038AA AC 83            [24] 3107 	mov	r4,dph
      0038AC 15 81            [12] 3108 	dec	sp
      0038AE 15 81            [12] 3109 	dec	sp
      0038B0 15 81            [12] 3110 	dec	sp
      0038B2 EB               [12] 3111 	mov	a,r3
      0038B3 4C               [12] 3112 	orl	a,r4
      0038B4 70 25            [24] 3113 	jnz	00125$
      0038B6 7F 44            [12] 3114 	mov	r7,#___str_10
      0038B8 7E 80            [12] 3115 	mov	r6,#(___str_10 >> 8)
      0038BA 7D 80            [12] 3116 	mov	r5,#0x80
                                   3117 ;	calc.c:51: return;
      0038BC                       3118 00394$:
                                   3119 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0038BC 8F 82            [24] 3120 	mov	dpl,r7
      0038BE 8E 83            [24] 3121 	mov	dph,r6
      0038C0 8D F0            [24] 3122 	mov	b,r5
      0038C2 12 67 7F         [24] 3123 	lcall	__gptrget
      0038C5 FC               [12] 3124 	mov	r4,a
      0038C6 70 03            [24] 3125 	jnz	01294$
      0038C8 02 54 06         [24] 3126 	ljmp	00249$
      0038CB                       3127 01294$:
      0038CB 7B 00            [12] 3128 	mov	r3,#0x00
      0038CD 8C 82            [24] 3129 	mov	dpl,r4
      0038CF 8B 83            [24] 3130 	mov	dph,r3
      0038D1 12 29 C0         [24] 3131 	lcall	_putchar
      0038D4 0F               [12] 3132 	inc	r7
                                   3133 ;	calc.c:172: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0038D5 BF 00 E4         [24] 3134 	cjne	r7,#0x00,00394$
      0038D8 0E               [12] 3135 	inc	r6
      0038D9 80 E1            [24] 3136 	sjmp	00394$
      0038DB                       3137 00125$:
                                   3138 ;	calc.c:174: if (!stack_push(ctx->ss, d0)) {
      0038DB E5 08            [12] 3139 	mov	a,_bp
      0038DD 24 12            [12] 3140 	add	a,#0x12
      0038DF F8               [12] 3141 	mov	r0,a
      0038E0 74 14            [12] 3142 	mov	a,#0x14
      0038E2 26               [12] 3143 	add	a,@r0
      0038E3 FA               [12] 3144 	mov	r2,a
      0038E4 74 40            [12] 3145 	mov	a,#0x40
      0038E6 08               [12] 3146 	inc	r0
      0038E7 36               [12] 3147 	addc	a,@r0
      0038E8 FB               [12] 3148 	mov	r3,a
      0038E9 08               [12] 3149 	inc	r0
      0038EA 86 04            [24] 3150 	mov	ar4,@r0
      0038EC 8A 82            [24] 3151 	mov	dpl,r2
      0038EE 8B 83            [24] 3152 	mov	dph,r3
      0038F0 8C F0            [24] 3153 	mov	b,r4
      0038F2 12 67 7F         [24] 3154 	lcall	__gptrget
      0038F5 FA               [12] 3155 	mov	r2,a
      0038F6 A3               [24] 3156 	inc	dptr
      0038F7 12 67 7F         [24] 3157 	lcall	__gptrget
      0038FA FB               [12] 3158 	mov	r3,a
      0038FB A3               [24] 3159 	inc	dptr
      0038FC 12 67 7F         [24] 3160 	lcall	__gptrget
      0038FF FC               [12] 3161 	mov	r4,a
      003900 E5 08            [12] 3162 	mov	a,_bp
      003902 24 15            [12] 3163 	add	a,#0x15
      003904 F8               [12] 3164 	mov	r0,a
      003905 E6               [12] 3165 	mov	a,@r0
      003906 C0 E0            [24] 3166 	push	acc
      003908 08               [12] 3167 	inc	r0
      003909 E6               [12] 3168 	mov	a,@r0
      00390A C0 E0            [24] 3169 	push	acc
      00390C 08               [12] 3170 	inc	r0
      00390D E6               [12] 3171 	mov	a,@r0
      00390E C0 E0            [24] 3172 	push	acc
      003910 08               [12] 3173 	inc	r0
      003911 E6               [12] 3174 	mov	a,@r0
      003912 C0 E0            [24] 3175 	push	acc
      003914 8A 82            [24] 3176 	mov	dpl,r2
      003916 8B 83            [24] 3177 	mov	dph,r3
      003918 8C F0            [24] 3178 	mov	b,r4
      00391A 12 26 B5         [24] 3179 	lcall	_stack_push
      00391D AB 82            [24] 3180 	mov	r3,dpl
      00391F AC 83            [24] 3181 	mov	r4,dph
      003921 E5 81            [12] 3182 	mov	a,sp
      003923 24 FC            [12] 3183 	add	a,#0xfc
      003925 F5 81            [12] 3184 	mov	sp,a
      003927 EB               [12] 3185 	mov	a,r3
      003928 4C               [12] 3186 	orl	a,r4
      003929 60 03            [24] 3187 	jz	01296$
      00392B 02 54 06         [24] 3188 	ljmp	00249$
      00392E                       3189 01296$:
                                   3190 ;	calc.c:175: printstr("\r\nsecondary stack overflow\r\n");
      00392E 7F 58            [12] 3191 	mov	r7,#___str_11
      003930 7E 80            [12] 3192 	mov	r6,#(___str_11 >> 8)
      003932 7D 80            [12] 3193 	mov	r5,#0x80
                                   3194 ;	calc.c:51: return;
      003934                       3195 00397$:
                                   3196 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003934 8F 82            [24] 3197 	mov	dpl,r7
      003936 8E 83            [24] 3198 	mov	dph,r6
      003938 8D F0            [24] 3199 	mov	b,r5
      00393A 12 67 7F         [24] 3200 	lcall	__gptrget
      00393D FC               [12] 3201 	mov	r4,a
      00393E 60 10            [24] 3202 	jz	00283$
      003940 7B 00            [12] 3203 	mov	r3,#0x00
      003942 8C 82            [24] 3204 	mov	dpl,r4
      003944 8B 83            [24] 3205 	mov	dph,r3
      003946 12 29 C0         [24] 3206 	lcall	_putchar
      003949 0F               [12] 3207 	inc	r7
                                   3208 ;	calc.c:175: printstr("\r\nsecondary stack overflow\r\n");
      00394A BF 00 E7         [24] 3209 	cjne	r7,#0x00,00397$
      00394D 0E               [12] 3210 	inc	r6
      00394E 80 E4            [24] 3211 	sjmp	00397$
      003950                       3212 00283$:
                                   3213 ;	calc.c:176: (void)stack_push(ctx->ps, d0);
      003950 E5 08            [12] 3214 	mov	a,_bp
      003952 24 07            [12] 3215 	add	a,#0x07
      003954 F8               [12] 3216 	mov	r0,a
      003955 86 82            [24] 3217 	mov	dpl,@r0
      003957 08               [12] 3218 	inc	r0
      003958 86 83            [24] 3219 	mov	dph,@r0
      00395A 08               [12] 3220 	inc	r0
      00395B 86 F0            [24] 3221 	mov	b,@r0
      00395D 12 67 7F         [24] 3222 	lcall	__gptrget
      003960 FA               [12] 3223 	mov	r2,a
      003961 A3               [24] 3224 	inc	dptr
      003962 12 67 7F         [24] 3225 	lcall	__gptrget
      003965 FB               [12] 3226 	mov	r3,a
      003966 A3               [24] 3227 	inc	dptr
      003967 12 67 7F         [24] 3228 	lcall	__gptrget
      00396A FC               [12] 3229 	mov	r4,a
      00396B E5 08            [12] 3230 	mov	a,_bp
      00396D 24 15            [12] 3231 	add	a,#0x15
      00396F F8               [12] 3232 	mov	r0,a
      003970 E6               [12] 3233 	mov	a,@r0
      003971 C0 E0            [24] 3234 	push	acc
      003973 08               [12] 3235 	inc	r0
      003974 E6               [12] 3236 	mov	a,@r0
      003975 C0 E0            [24] 3237 	push	acc
      003977 08               [12] 3238 	inc	r0
      003978 E6               [12] 3239 	mov	a,@r0
      003979 C0 E0            [24] 3240 	push	acc
      00397B 08               [12] 3241 	inc	r0
      00397C E6               [12] 3242 	mov	a,@r0
      00397D C0 E0            [24] 3243 	push	acc
      00397F 8A 82            [24] 3244 	mov	dpl,r2
      003981 8B 83            [24] 3245 	mov	dph,r3
      003983 8C F0            [24] 3246 	mov	b,r4
      003985 12 26 B5         [24] 3247 	lcall	_stack_push
      003988 E5 81            [12] 3248 	mov	a,sp
      00398A 24 FC            [12] 3249 	add	a,#0xfc
      00398C F5 81            [12] 3250 	mov	sp,a
                                   3251 ;	calc.c:179: break;
      00398E 02 54 06         [24] 3252 	ljmp	00249$
                                   3253 ;	calc.c:180: case 'M':
      003991                       3254 00127$:
                                   3255 ;	calc.c:181: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003991 E5 08            [12] 3256 	mov	a,_bp
      003993 24 15            [12] 3257 	add	a,#0x15
      003995 FF               [12] 3258 	mov	r7,a
      003996 7E 00            [12] 3259 	mov	r6,#0x00
      003998 7D 40            [12] 3260 	mov	r5,#0x40
      00399A E5 08            [12] 3261 	mov	a,_bp
      00399C 24 12            [12] 3262 	add	a,#0x12
      00399E F8               [12] 3263 	mov	r0,a
      00399F E5 08            [12] 3264 	mov	a,_bp
      0039A1 24 07            [12] 3265 	add	a,#0x07
      0039A3 F9               [12] 3266 	mov	r1,a
      0039A4 74 14            [12] 3267 	mov	a,#0x14
      0039A6 26               [12] 3268 	add	a,@r0
      0039A7 F7               [12] 3269 	mov	@r1,a
      0039A8 74 40            [12] 3270 	mov	a,#0x40
      0039AA 08               [12] 3271 	inc	r0
      0039AB 36               [12] 3272 	addc	a,@r0
      0039AC 09               [12] 3273 	inc	r1
      0039AD F7               [12] 3274 	mov	@r1,a
      0039AE 08               [12] 3275 	inc	r0
      0039AF 09               [12] 3276 	inc	r1
      0039B0 E6               [12] 3277 	mov	a,@r0
      0039B1 F7               [12] 3278 	mov	@r1,a
      0039B2 E5 08            [12] 3279 	mov	a,_bp
      0039B4 24 07            [12] 3280 	add	a,#0x07
      0039B6 F8               [12] 3281 	mov	r0,a
      0039B7 86 82            [24] 3282 	mov	dpl,@r0
      0039B9 08               [12] 3283 	inc	r0
      0039BA 86 83            [24] 3284 	mov	dph,@r0
      0039BC 08               [12] 3285 	inc	r0
      0039BD 86 F0            [24] 3286 	mov	b,@r0
      0039BF 12 67 7F         [24] 3287 	lcall	__gptrget
      0039C2 FA               [12] 3288 	mov	r2,a
      0039C3 A3               [24] 3289 	inc	dptr
      0039C4 12 67 7F         [24] 3290 	lcall	__gptrget
      0039C7 FB               [12] 3291 	mov	r3,a
      0039C8 A3               [24] 3292 	inc	dptr
      0039C9 12 67 7F         [24] 3293 	lcall	__gptrget
      0039CC FC               [12] 3294 	mov	r4,a
      0039CD C0 07            [24] 3295 	push	ar7
      0039CF C0 06            [24] 3296 	push	ar6
      0039D1 C0 05            [24] 3297 	push	ar5
      0039D3 8A 82            [24] 3298 	mov	dpl,r2
      0039D5 8B 83            [24] 3299 	mov	dph,r3
      0039D7 8C F0            [24] 3300 	mov	b,r4
      0039D9 12 27 7F         [24] 3301 	lcall	_stack_pop
      0039DC AB 82            [24] 3302 	mov	r3,dpl
      0039DE AC 83            [24] 3303 	mov	r4,dph
      0039E0 15 81            [12] 3304 	dec	sp
      0039E2 15 81            [12] 3305 	dec	sp
      0039E4 15 81            [12] 3306 	dec	sp
      0039E6 EB               [12] 3307 	mov	a,r3
      0039E7 4C               [12] 3308 	orl	a,r4
      0039E8 70 25            [24] 3309 	jnz	00131$
      0039EA 7F 75            [12] 3310 	mov	r7,#___str_12
      0039EC 7E 80            [12] 3311 	mov	r6,#(___str_12 >> 8)
      0039EE 7D 80            [12] 3312 	mov	r5,#0x80
                                   3313 ;	calc.c:51: return;
      0039F0                       3314 00400$:
                                   3315 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0039F0 8F 82            [24] 3316 	mov	dpl,r7
      0039F2 8E 83            [24] 3317 	mov	dph,r6
      0039F4 8D F0            [24] 3318 	mov	b,r5
      0039F6 12 67 7F         [24] 3319 	lcall	__gptrget
      0039F9 FC               [12] 3320 	mov	r4,a
      0039FA 70 03            [24] 3321 	jnz	01300$
      0039FC 02 54 06         [24] 3322 	ljmp	00249$
      0039FF                       3323 01300$:
      0039FF 7B 00            [12] 3324 	mov	r3,#0x00
      003A01 8C 82            [24] 3325 	mov	dpl,r4
      003A03 8B 83            [24] 3326 	mov	dph,r3
      003A05 12 29 C0         [24] 3327 	lcall	_putchar
      003A08 0F               [12] 3328 	inc	r7
                                   3329 ;	calc.c:181: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003A09 BF 00 E4         [24] 3330 	cjne	r7,#0x00,00400$
      003A0C 0E               [12] 3331 	inc	r6
      003A0D 80 E1            [24] 3332 	sjmp	00400$
      003A0F                       3333 00131$:
                                   3334 ;	calc.c:183: if (!stack_push(ctx->ps, d0)) {
      003A0F E5 08            [12] 3335 	mov	a,_bp
      003A11 24 12            [12] 3336 	add	a,#0x12
      003A13 F8               [12] 3337 	mov	r0,a
      003A14 74 11            [12] 3338 	mov	a,#0x11
      003A16 26               [12] 3339 	add	a,@r0
      003A17 FA               [12] 3340 	mov	r2,a
      003A18 74 40            [12] 3341 	mov	a,#0x40
      003A1A 08               [12] 3342 	inc	r0
      003A1B 36               [12] 3343 	addc	a,@r0
      003A1C FB               [12] 3344 	mov	r3,a
      003A1D 08               [12] 3345 	inc	r0
      003A1E 86 04            [24] 3346 	mov	ar4,@r0
      003A20 8A 82            [24] 3347 	mov	dpl,r2
      003A22 8B 83            [24] 3348 	mov	dph,r3
      003A24 8C F0            [24] 3349 	mov	b,r4
      003A26 12 67 7F         [24] 3350 	lcall	__gptrget
      003A29 FA               [12] 3351 	mov	r2,a
      003A2A A3               [24] 3352 	inc	dptr
      003A2B 12 67 7F         [24] 3353 	lcall	__gptrget
      003A2E FB               [12] 3354 	mov	r3,a
      003A2F A3               [24] 3355 	inc	dptr
      003A30 12 67 7F         [24] 3356 	lcall	__gptrget
      003A33 FC               [12] 3357 	mov	r4,a
      003A34 E5 08            [12] 3358 	mov	a,_bp
      003A36 24 15            [12] 3359 	add	a,#0x15
      003A38 F8               [12] 3360 	mov	r0,a
      003A39 E6               [12] 3361 	mov	a,@r0
      003A3A C0 E0            [24] 3362 	push	acc
      003A3C 08               [12] 3363 	inc	r0
      003A3D E6               [12] 3364 	mov	a,@r0
      003A3E C0 E0            [24] 3365 	push	acc
      003A40 08               [12] 3366 	inc	r0
      003A41 E6               [12] 3367 	mov	a,@r0
      003A42 C0 E0            [24] 3368 	push	acc
      003A44 08               [12] 3369 	inc	r0
      003A45 E6               [12] 3370 	mov	a,@r0
      003A46 C0 E0            [24] 3371 	push	acc
      003A48 8A 82            [24] 3372 	mov	dpl,r2
      003A4A 8B 83            [24] 3373 	mov	dph,r3
      003A4C 8C F0            [24] 3374 	mov	b,r4
      003A4E 12 26 B5         [24] 3375 	lcall	_stack_push
      003A51 AB 82            [24] 3376 	mov	r3,dpl
      003A53 AC 83            [24] 3377 	mov	r4,dph
      003A55 E5 81            [12] 3378 	mov	a,sp
      003A57 24 FC            [12] 3379 	add	a,#0xfc
      003A59 F5 81            [12] 3380 	mov	sp,a
      003A5B EB               [12] 3381 	mov	a,r3
      003A5C 4C               [12] 3382 	orl	a,r4
      003A5D 60 03            [24] 3383 	jz	01302$
      003A5F 02 54 06         [24] 3384 	ljmp	00249$
      003A62                       3385 01302$:
                                   3386 ;	calc.c:184: printstr("\r\nstack overflow\r\n");
      003A62 7F 93            [12] 3387 	mov	r7,#___str_13
      003A64 7E 80            [12] 3388 	mov	r6,#(___str_13 >> 8)
      003A66 7D 80            [12] 3389 	mov	r5,#0x80
                                   3390 ;	calc.c:51: return;
      003A68                       3391 00403$:
                                   3392 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003A68 8F 82            [24] 3393 	mov	dpl,r7
      003A6A 8E 83            [24] 3394 	mov	dph,r6
      003A6C 8D F0            [24] 3395 	mov	b,r5
      003A6E 12 67 7F         [24] 3396 	lcall	__gptrget
      003A71 FC               [12] 3397 	mov	r4,a
      003A72 60 10            [24] 3398 	jz	00287$
      003A74 7B 00            [12] 3399 	mov	r3,#0x00
      003A76 8C 82            [24] 3400 	mov	dpl,r4
      003A78 8B 83            [24] 3401 	mov	dph,r3
      003A7A 12 29 C0         [24] 3402 	lcall	_putchar
      003A7D 0F               [12] 3403 	inc	r7
                                   3404 ;	calc.c:184: printstr("\r\nstack overflow\r\n");
      003A7E BF 00 E7         [24] 3405 	cjne	r7,#0x00,00403$
      003A81 0E               [12] 3406 	inc	r6
      003A82 80 E4            [24] 3407 	sjmp	00403$
      003A84                       3408 00287$:
                                   3409 ;	calc.c:185: (void)stack_push(ctx->ss, d0);
      003A84 E5 08            [12] 3410 	mov	a,_bp
      003A86 24 07            [12] 3411 	add	a,#0x07
      003A88 F8               [12] 3412 	mov	r0,a
      003A89 86 82            [24] 3413 	mov	dpl,@r0
      003A8B 08               [12] 3414 	inc	r0
      003A8C 86 83            [24] 3415 	mov	dph,@r0
      003A8E 08               [12] 3416 	inc	r0
      003A8F 86 F0            [24] 3417 	mov	b,@r0
      003A91 12 67 7F         [24] 3418 	lcall	__gptrget
      003A94 FA               [12] 3419 	mov	r2,a
      003A95 A3               [24] 3420 	inc	dptr
      003A96 12 67 7F         [24] 3421 	lcall	__gptrget
      003A99 FB               [12] 3422 	mov	r3,a
      003A9A A3               [24] 3423 	inc	dptr
      003A9B 12 67 7F         [24] 3424 	lcall	__gptrget
      003A9E FC               [12] 3425 	mov	r4,a
      003A9F E5 08            [12] 3426 	mov	a,_bp
      003AA1 24 15            [12] 3427 	add	a,#0x15
      003AA3 F8               [12] 3428 	mov	r0,a
      003AA4 E6               [12] 3429 	mov	a,@r0
      003AA5 C0 E0            [24] 3430 	push	acc
      003AA7 08               [12] 3431 	inc	r0
      003AA8 E6               [12] 3432 	mov	a,@r0
      003AA9 C0 E0            [24] 3433 	push	acc
      003AAB 08               [12] 3434 	inc	r0
      003AAC E6               [12] 3435 	mov	a,@r0
      003AAD C0 E0            [24] 3436 	push	acc
      003AAF 08               [12] 3437 	inc	r0
      003AB0 E6               [12] 3438 	mov	a,@r0
      003AB1 C0 E0            [24] 3439 	push	acc
      003AB3 8A 82            [24] 3440 	mov	dpl,r2
      003AB5 8B 83            [24] 3441 	mov	dph,r3
      003AB7 8C F0            [24] 3442 	mov	b,r4
      003AB9 12 26 B5         [24] 3443 	lcall	_stack_push
      003ABC E5 81            [12] 3444 	mov	a,sp
      003ABE 24 FC            [12] 3445 	add	a,#0xfc
      003AC0 F5 81            [12] 3446 	mov	sp,a
                                   3447 ;	calc.c:188: break;
      003AC2 02 54 06         [24] 3448 	ljmp	00249$
                                   3449 ;	calc.c:189: case 'u':
      003AC5                       3450 00133$:
                                   3451 ;	calc.c:190: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003AC5 E5 08            [12] 3452 	mov	a,_bp
      003AC7 24 15            [12] 3453 	add	a,#0x15
      003AC9 FF               [12] 3454 	mov	r7,a
      003ACA 7E 00            [12] 3455 	mov	r6,#0x00
      003ACC 7D 40            [12] 3456 	mov	r5,#0x40
      003ACE E5 08            [12] 3457 	mov	a,_bp
      003AD0 24 12            [12] 3458 	add	a,#0x12
      003AD2 F8               [12] 3459 	mov	r0,a
      003AD3 74 11            [12] 3460 	mov	a,#0x11
      003AD5 26               [12] 3461 	add	a,@r0
      003AD6 FA               [12] 3462 	mov	r2,a
      003AD7 ED               [12] 3463 	mov	a,r5
      003AD8 08               [12] 3464 	inc	r0
      003AD9 36               [12] 3465 	addc	a,@r0
      003ADA FB               [12] 3466 	mov	r3,a
      003ADB 08               [12] 3467 	inc	r0
      003ADC 86 04            [24] 3468 	mov	ar4,@r0
      003ADE 8A 82            [24] 3469 	mov	dpl,r2
      003AE0 8B 83            [24] 3470 	mov	dph,r3
      003AE2 8C F0            [24] 3471 	mov	b,r4
      003AE4 12 67 7F         [24] 3472 	lcall	__gptrget
      003AE7 FA               [12] 3473 	mov	r2,a
      003AE8 A3               [24] 3474 	inc	dptr
      003AE9 12 67 7F         [24] 3475 	lcall	__gptrget
      003AEC FB               [12] 3476 	mov	r3,a
      003AED A3               [24] 3477 	inc	dptr
      003AEE 12 67 7F         [24] 3478 	lcall	__gptrget
      003AF1 FC               [12] 3479 	mov	r4,a
      003AF2 C0 07            [24] 3480 	push	ar7
      003AF4 C0 06            [24] 3481 	push	ar6
      003AF6 C0 05            [24] 3482 	push	ar5
      003AF8 8A 82            [24] 3483 	mov	dpl,r2
      003AFA 8B 83            [24] 3484 	mov	dph,r3
      003AFC 8C F0            [24] 3485 	mov	b,r4
      003AFE 12 28 56         [24] 3486 	lcall	_stack_peek
      003B01 AB 82            [24] 3487 	mov	r3,dpl
      003B03 AC 83            [24] 3488 	mov	r4,dph
      003B05 15 81            [12] 3489 	dec	sp
      003B07 15 81            [12] 3490 	dec	sp
      003B09 15 81            [12] 3491 	dec	sp
      003B0B EB               [12] 3492 	mov	a,r3
      003B0C 4C               [12] 3493 	orl	a,r4
      003B0D 70 25            [24] 3494 	jnz	00137$
      003B0F 7F 44            [12] 3495 	mov	r7,#___str_10
      003B11 7E 80            [12] 3496 	mov	r6,#(___str_10 >> 8)
      003B13 7D 80            [12] 3497 	mov	r5,#0x80
                                   3498 ;	calc.c:51: return;
      003B15                       3499 00406$:
                                   3500 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003B15 8F 82            [24] 3501 	mov	dpl,r7
      003B17 8E 83            [24] 3502 	mov	dph,r6
      003B19 8D F0            [24] 3503 	mov	b,r5
      003B1B 12 67 7F         [24] 3504 	lcall	__gptrget
      003B1E FC               [12] 3505 	mov	r4,a
      003B1F 70 03            [24] 3506 	jnz	01306$
      003B21 02 54 06         [24] 3507 	ljmp	00249$
      003B24                       3508 01306$:
      003B24 7B 00            [12] 3509 	mov	r3,#0x00
      003B26 8C 82            [24] 3510 	mov	dpl,r4
      003B28 8B 83            [24] 3511 	mov	dph,r3
      003B2A 12 29 C0         [24] 3512 	lcall	_putchar
      003B2D 0F               [12] 3513 	inc	r7
                                   3514 ;	calc.c:190: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003B2E BF 00 E4         [24] 3515 	cjne	r7,#0x00,00406$
      003B31 0E               [12] 3516 	inc	r6
      003B32 80 E1            [24] 3517 	sjmp	00406$
      003B34                       3518 00137$:
                                   3519 ;	calc.c:191: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      003B34 E5 08            [12] 3520 	mov	a,_bp
      003B36 24 12            [12] 3521 	add	a,#0x12
      003B38 F8               [12] 3522 	mov	r0,a
      003B39 74 14            [12] 3523 	mov	a,#0x14
      003B3B 26               [12] 3524 	add	a,@r0
      003B3C FA               [12] 3525 	mov	r2,a
      003B3D 74 40            [12] 3526 	mov	a,#0x40
      003B3F 08               [12] 3527 	inc	r0
      003B40 36               [12] 3528 	addc	a,@r0
      003B41 FB               [12] 3529 	mov	r3,a
      003B42 08               [12] 3530 	inc	r0
      003B43 86 04            [24] 3531 	mov	ar4,@r0
      003B45 8A 82            [24] 3532 	mov	dpl,r2
      003B47 8B 83            [24] 3533 	mov	dph,r3
      003B49 8C F0            [24] 3534 	mov	b,r4
      003B4B 12 67 7F         [24] 3535 	lcall	__gptrget
      003B4E FA               [12] 3536 	mov	r2,a
      003B4F A3               [24] 3537 	inc	dptr
      003B50 12 67 7F         [24] 3538 	lcall	__gptrget
      003B53 FB               [12] 3539 	mov	r3,a
      003B54 A3               [24] 3540 	inc	dptr
      003B55 12 67 7F         [24] 3541 	lcall	__gptrget
      003B58 FC               [12] 3542 	mov	r4,a
      003B59 E5 08            [12] 3543 	mov	a,_bp
      003B5B 24 15            [12] 3544 	add	a,#0x15
      003B5D F8               [12] 3545 	mov	r0,a
      003B5E E6               [12] 3546 	mov	a,@r0
      003B5F C0 E0            [24] 3547 	push	acc
      003B61 08               [12] 3548 	inc	r0
      003B62 E6               [12] 3549 	mov	a,@r0
      003B63 C0 E0            [24] 3550 	push	acc
      003B65 08               [12] 3551 	inc	r0
      003B66 E6               [12] 3552 	mov	a,@r0
      003B67 C0 E0            [24] 3553 	push	acc
      003B69 08               [12] 3554 	inc	r0
      003B6A E6               [12] 3555 	mov	a,@r0
      003B6B C0 E0            [24] 3556 	push	acc
      003B6D 8A 82            [24] 3557 	mov	dpl,r2
      003B6F 8B 83            [24] 3558 	mov	dph,r3
      003B71 8C F0            [24] 3559 	mov	b,r4
      003B73 12 26 B5         [24] 3560 	lcall	_stack_push
      003B76 AB 82            [24] 3561 	mov	r3,dpl
      003B78 AC 83            [24] 3562 	mov	r4,dph
      003B7A E5 81            [12] 3563 	mov	a,sp
      003B7C 24 FC            [12] 3564 	add	a,#0xfc
      003B7E F5 81            [12] 3565 	mov	sp,a
      003B80 EB               [12] 3566 	mov	a,r3
      003B81 4C               [12] 3567 	orl	a,r4
      003B82 60 03            [24] 3568 	jz	01308$
      003B84 02 54 06         [24] 3569 	ljmp	00249$
      003B87                       3570 01308$:
      003B87 7F 58            [12] 3571 	mov	r7,#___str_11
      003B89 7E 80            [12] 3572 	mov	r6,#(___str_11 >> 8)
      003B8B 7D 80            [12] 3573 	mov	r5,#0x80
                                   3574 ;	calc.c:51: return;
      003B8D                       3575 00409$:
                                   3576 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003B8D 8F 82            [24] 3577 	mov	dpl,r7
      003B8F 8E 83            [24] 3578 	mov	dph,r6
      003B91 8D F0            [24] 3579 	mov	b,r5
      003B93 12 67 7F         [24] 3580 	lcall	__gptrget
      003B96 FC               [12] 3581 	mov	r4,a
      003B97 70 03            [24] 3582 	jnz	01309$
      003B99 02 54 06         [24] 3583 	ljmp	00249$
      003B9C                       3584 01309$:
      003B9C 7B 00            [12] 3585 	mov	r3,#0x00
      003B9E 8C 82            [24] 3586 	mov	dpl,r4
      003BA0 8B 83            [24] 3587 	mov	dph,r3
      003BA2 12 29 C0         [24] 3588 	lcall	_putchar
      003BA5 0F               [12] 3589 	inc	r7
                                   3590 ;	calc.c:193: case 'U':
      003BA6 BF 00 E4         [24] 3591 	cjne	r7,#0x00,00409$
      003BA9 0E               [12] 3592 	inc	r6
      003BAA 80 E1            [24] 3593 	sjmp	00409$
      003BAC                       3594 00139$:
                                   3595 ;	calc.c:194: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003BAC E5 08            [12] 3596 	mov	a,_bp
      003BAE 24 15            [12] 3597 	add	a,#0x15
      003BB0 FF               [12] 3598 	mov	r7,a
      003BB1 7E 00            [12] 3599 	mov	r6,#0x00
      003BB3 7D 40            [12] 3600 	mov	r5,#0x40
      003BB5 E5 08            [12] 3601 	mov	a,_bp
      003BB7 24 12            [12] 3602 	add	a,#0x12
      003BB9 F8               [12] 3603 	mov	r0,a
      003BBA 74 14            [12] 3604 	mov	a,#0x14
      003BBC 26               [12] 3605 	add	a,@r0
      003BBD FA               [12] 3606 	mov	r2,a
      003BBE ED               [12] 3607 	mov	a,r5
      003BBF 08               [12] 3608 	inc	r0
      003BC0 36               [12] 3609 	addc	a,@r0
      003BC1 FB               [12] 3610 	mov	r3,a
      003BC2 08               [12] 3611 	inc	r0
      003BC3 86 04            [24] 3612 	mov	ar4,@r0
      003BC5 8A 82            [24] 3613 	mov	dpl,r2
      003BC7 8B 83            [24] 3614 	mov	dph,r3
      003BC9 8C F0            [24] 3615 	mov	b,r4
      003BCB 12 67 7F         [24] 3616 	lcall	__gptrget
      003BCE FA               [12] 3617 	mov	r2,a
      003BCF A3               [24] 3618 	inc	dptr
      003BD0 12 67 7F         [24] 3619 	lcall	__gptrget
      003BD3 FB               [12] 3620 	mov	r3,a
      003BD4 A3               [24] 3621 	inc	dptr
      003BD5 12 67 7F         [24] 3622 	lcall	__gptrget
      003BD8 FC               [12] 3623 	mov	r4,a
      003BD9 C0 07            [24] 3624 	push	ar7
      003BDB C0 06            [24] 3625 	push	ar6
      003BDD C0 05            [24] 3626 	push	ar5
      003BDF 8A 82            [24] 3627 	mov	dpl,r2
      003BE1 8B 83            [24] 3628 	mov	dph,r3
      003BE3 8C F0            [24] 3629 	mov	b,r4
      003BE5 12 28 56         [24] 3630 	lcall	_stack_peek
      003BE8 AB 82            [24] 3631 	mov	r3,dpl
      003BEA AC 83            [24] 3632 	mov	r4,dph
      003BEC 15 81            [12] 3633 	dec	sp
      003BEE 15 81            [12] 3634 	dec	sp
      003BF0 15 81            [12] 3635 	dec	sp
      003BF2 EB               [12] 3636 	mov	a,r3
      003BF3 4C               [12] 3637 	orl	a,r4
      003BF4 70 25            [24] 3638 	jnz	00143$
      003BF6 7F 75            [12] 3639 	mov	r7,#___str_12
      003BF8 7E 80            [12] 3640 	mov	r6,#(___str_12 >> 8)
      003BFA 7D 80            [12] 3641 	mov	r5,#0x80
                                   3642 ;	calc.c:51: return;
      003BFC                       3643 00412$:
                                   3644 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003BFC 8F 82            [24] 3645 	mov	dpl,r7
      003BFE 8E 83            [24] 3646 	mov	dph,r6
      003C00 8D F0            [24] 3647 	mov	b,r5
      003C02 12 67 7F         [24] 3648 	lcall	__gptrget
      003C05 FC               [12] 3649 	mov	r4,a
      003C06 70 03            [24] 3650 	jnz	01312$
      003C08 02 54 06         [24] 3651 	ljmp	00249$
      003C0B                       3652 01312$:
      003C0B 7B 00            [12] 3653 	mov	r3,#0x00
      003C0D 8C 82            [24] 3654 	mov	dpl,r4
      003C0F 8B 83            [24] 3655 	mov	dph,r3
      003C11 12 29 C0         [24] 3656 	lcall	_putchar
      003C14 0F               [12] 3657 	inc	r7
                                   3658 ;	calc.c:194: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003C15 BF 00 E4         [24] 3659 	cjne	r7,#0x00,00412$
      003C18 0E               [12] 3660 	inc	r6
      003C19 80 E1            [24] 3661 	sjmp	00412$
      003C1B                       3662 00143$:
                                   3663 ;	calc.c:195: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      003C1B E5 08            [12] 3664 	mov	a,_bp
      003C1D 24 12            [12] 3665 	add	a,#0x12
      003C1F F8               [12] 3666 	mov	r0,a
      003C20 74 11            [12] 3667 	mov	a,#0x11
      003C22 26               [12] 3668 	add	a,@r0
      003C23 FA               [12] 3669 	mov	r2,a
      003C24 74 40            [12] 3670 	mov	a,#0x40
      003C26 08               [12] 3671 	inc	r0
      003C27 36               [12] 3672 	addc	a,@r0
      003C28 FB               [12] 3673 	mov	r3,a
      003C29 08               [12] 3674 	inc	r0
      003C2A 86 04            [24] 3675 	mov	ar4,@r0
      003C2C 8A 82            [24] 3676 	mov	dpl,r2
      003C2E 8B 83            [24] 3677 	mov	dph,r3
      003C30 8C F0            [24] 3678 	mov	b,r4
      003C32 12 67 7F         [24] 3679 	lcall	__gptrget
      003C35 FA               [12] 3680 	mov	r2,a
      003C36 A3               [24] 3681 	inc	dptr
      003C37 12 67 7F         [24] 3682 	lcall	__gptrget
      003C3A FB               [12] 3683 	mov	r3,a
      003C3B A3               [24] 3684 	inc	dptr
      003C3C 12 67 7F         [24] 3685 	lcall	__gptrget
      003C3F FC               [12] 3686 	mov	r4,a
      003C40 E5 08            [12] 3687 	mov	a,_bp
      003C42 24 15            [12] 3688 	add	a,#0x15
      003C44 F8               [12] 3689 	mov	r0,a
      003C45 E6               [12] 3690 	mov	a,@r0
      003C46 C0 E0            [24] 3691 	push	acc
      003C48 08               [12] 3692 	inc	r0
      003C49 E6               [12] 3693 	mov	a,@r0
      003C4A C0 E0            [24] 3694 	push	acc
      003C4C 08               [12] 3695 	inc	r0
      003C4D E6               [12] 3696 	mov	a,@r0
      003C4E C0 E0            [24] 3697 	push	acc
      003C50 08               [12] 3698 	inc	r0
      003C51 E6               [12] 3699 	mov	a,@r0
      003C52 C0 E0            [24] 3700 	push	acc
      003C54 8A 82            [24] 3701 	mov	dpl,r2
      003C56 8B 83            [24] 3702 	mov	dph,r3
      003C58 8C F0            [24] 3703 	mov	b,r4
      003C5A 12 26 B5         [24] 3704 	lcall	_stack_push
      003C5D AB 82            [24] 3705 	mov	r3,dpl
      003C5F AC 83            [24] 3706 	mov	r4,dph
      003C61 E5 81            [12] 3707 	mov	a,sp
      003C63 24 FC            [12] 3708 	add	a,#0xfc
      003C65 F5 81            [12] 3709 	mov	sp,a
      003C67 EB               [12] 3710 	mov	a,r3
      003C68 4C               [12] 3711 	orl	a,r4
      003C69 60 03            [24] 3712 	jz	01314$
      003C6B 02 54 06         [24] 3713 	ljmp	00249$
      003C6E                       3714 01314$:
      003C6E 7F 93            [12] 3715 	mov	r7,#___str_13
      003C70 7E 80            [12] 3716 	mov	r6,#(___str_13 >> 8)
      003C72 7D 80            [12] 3717 	mov	r5,#0x80
                                   3718 ;	calc.c:51: return;
      003C74                       3719 00415$:
                                   3720 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003C74 8F 82            [24] 3721 	mov	dpl,r7
      003C76 8E 83            [24] 3722 	mov	dph,r6
      003C78 8D F0            [24] 3723 	mov	b,r5
      003C7A 12 67 7F         [24] 3724 	lcall	__gptrget
      003C7D FC               [12] 3725 	mov	r4,a
      003C7E 70 03            [24] 3726 	jnz	01315$
      003C80 02 54 06         [24] 3727 	ljmp	00249$
      003C83                       3728 01315$:
      003C83 7B 00            [12] 3729 	mov	r3,#0x00
      003C85 8C 82            [24] 3730 	mov	dpl,r4
      003C87 8B 83            [24] 3731 	mov	dph,r3
      003C89 12 29 C0         [24] 3732 	lcall	_putchar
      003C8C 0F               [12] 3733 	inc	r7
                                   3734 ;	calc.c:197: case 'T':
      003C8D BF 00 E4         [24] 3735 	cjne	r7,#0x00,00415$
      003C90 0E               [12] 3736 	inc	r6
      003C91 80 E1            [24] 3737 	sjmp	00415$
      003C93                       3738 00145$:
                                   3739 ;	calc.c:198: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003C93 E5 08            [12] 3740 	mov	a,_bp
      003C95 24 15            [12] 3741 	add	a,#0x15
      003C97 FF               [12] 3742 	mov	r7,a
      003C98 7E 00            [12] 3743 	mov	r6,#0x00
      003C9A 7D 40            [12] 3744 	mov	r5,#0x40
      003C9C E5 08            [12] 3745 	mov	a,_bp
      003C9E 24 12            [12] 3746 	add	a,#0x12
      003CA0 F8               [12] 3747 	mov	r0,a
      003CA1 E5 08            [12] 3748 	mov	a,_bp
      003CA3 24 07            [12] 3749 	add	a,#0x07
      003CA5 F9               [12] 3750 	mov	r1,a
      003CA6 74 11            [12] 3751 	mov	a,#0x11
      003CA8 26               [12] 3752 	add	a,@r0
      003CA9 F7               [12] 3753 	mov	@r1,a
      003CAA 74 40            [12] 3754 	mov	a,#0x40
      003CAC 08               [12] 3755 	inc	r0
      003CAD 36               [12] 3756 	addc	a,@r0
      003CAE 09               [12] 3757 	inc	r1
      003CAF F7               [12] 3758 	mov	@r1,a
      003CB0 08               [12] 3759 	inc	r0
      003CB1 09               [12] 3760 	inc	r1
      003CB2 E6               [12] 3761 	mov	a,@r0
      003CB3 F7               [12] 3762 	mov	@r1,a
      003CB4 E5 08            [12] 3763 	mov	a,_bp
      003CB6 24 07            [12] 3764 	add	a,#0x07
      003CB8 F8               [12] 3765 	mov	r0,a
      003CB9 86 82            [24] 3766 	mov	dpl,@r0
      003CBB 08               [12] 3767 	inc	r0
      003CBC 86 83            [24] 3768 	mov	dph,@r0
      003CBE 08               [12] 3769 	inc	r0
      003CBF 86 F0            [24] 3770 	mov	b,@r0
      003CC1 12 67 7F         [24] 3771 	lcall	__gptrget
      003CC4 FA               [12] 3772 	mov	r2,a
      003CC5 A3               [24] 3773 	inc	dptr
      003CC6 12 67 7F         [24] 3774 	lcall	__gptrget
      003CC9 FB               [12] 3775 	mov	r3,a
      003CCA A3               [24] 3776 	inc	dptr
      003CCB 12 67 7F         [24] 3777 	lcall	__gptrget
      003CCE FC               [12] 3778 	mov	r4,a
      003CCF C0 07            [24] 3779 	push	ar7
      003CD1 C0 06            [24] 3780 	push	ar6
      003CD3 C0 05            [24] 3781 	push	ar5
      003CD5 8A 82            [24] 3782 	mov	dpl,r2
      003CD7 8B 83            [24] 3783 	mov	dph,r3
      003CD9 8C F0            [24] 3784 	mov	b,r4
      003CDB 12 27 7F         [24] 3785 	lcall	_stack_pop
      003CDE AB 82            [24] 3786 	mov	r3,dpl
      003CE0 AC 83            [24] 3787 	mov	r4,dph
      003CE2 15 81            [12] 3788 	dec	sp
      003CE4 15 81            [12] 3789 	dec	sp
      003CE6 15 81            [12] 3790 	dec	sp
      003CE8 EB               [12] 3791 	mov	a,r3
      003CE9 4C               [12] 3792 	orl	a,r4
      003CEA 70 25            [24] 3793 	jnz	00150$
      003CEC 7F 44            [12] 3794 	mov	r7,#___str_10
      003CEE 7E 80            [12] 3795 	mov	r6,#(___str_10 >> 8)
      003CF0 7D 80            [12] 3796 	mov	r5,#0x80
                                   3797 ;	calc.c:51: return;
      003CF2                       3798 00418$:
                                   3799 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003CF2 8F 82            [24] 3800 	mov	dpl,r7
      003CF4 8E 83            [24] 3801 	mov	dph,r6
      003CF6 8D F0            [24] 3802 	mov	b,r5
      003CF8 12 67 7F         [24] 3803 	lcall	__gptrget
      003CFB FC               [12] 3804 	mov	r4,a
      003CFC 70 03            [24] 3805 	jnz	01318$
      003CFE 02 54 06         [24] 3806 	ljmp	00249$
      003D01                       3807 01318$:
      003D01 7B 00            [12] 3808 	mov	r3,#0x00
      003D03 8C 82            [24] 3809 	mov	dpl,r4
      003D05 8B 83            [24] 3810 	mov	dph,r3
      003D07 12 29 C0         [24] 3811 	lcall	_putchar
      003D0A 0F               [12] 3812 	inc	r7
                                   3813 ;	calc.c:198: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003D0B BF 00 E4         [24] 3814 	cjne	r7,#0x00,00418$
      003D0E 0E               [12] 3815 	inc	r6
      003D0F 80 E1            [24] 3816 	sjmp	00418$
      003D11                       3817 00150$:
                                   3818 ;	calc.c:200: if (!stack_pop(ctx->ss, &d1)) {
      003D11 E5 08            [12] 3819 	mov	a,_bp
      003D13 24 19            [12] 3820 	add	a,#0x19
      003D15 FF               [12] 3821 	mov	r7,a
      003D16 7E 00            [12] 3822 	mov	r6,#0x00
      003D18 7D 40            [12] 3823 	mov	r5,#0x40
      003D1A E5 08            [12] 3824 	mov	a,_bp
      003D1C 24 12            [12] 3825 	add	a,#0x12
      003D1E F8               [12] 3826 	mov	r0,a
      003D1F E5 08            [12] 3827 	mov	a,_bp
      003D21 24 04            [12] 3828 	add	a,#0x04
      003D23 F9               [12] 3829 	mov	r1,a
      003D24 74 14            [12] 3830 	mov	a,#0x14
      003D26 26               [12] 3831 	add	a,@r0
      003D27 F7               [12] 3832 	mov	@r1,a
      003D28 74 40            [12] 3833 	mov	a,#0x40
      003D2A 08               [12] 3834 	inc	r0
      003D2B 36               [12] 3835 	addc	a,@r0
      003D2C 09               [12] 3836 	inc	r1
      003D2D F7               [12] 3837 	mov	@r1,a
      003D2E 08               [12] 3838 	inc	r0
      003D2F 09               [12] 3839 	inc	r1
      003D30 E6               [12] 3840 	mov	a,@r0
      003D31 F7               [12] 3841 	mov	@r1,a
      003D32 E5 08            [12] 3842 	mov	a,_bp
      003D34 24 04            [12] 3843 	add	a,#0x04
      003D36 F8               [12] 3844 	mov	r0,a
      003D37 86 82            [24] 3845 	mov	dpl,@r0
      003D39 08               [12] 3846 	inc	r0
      003D3A 86 83            [24] 3847 	mov	dph,@r0
      003D3C 08               [12] 3848 	inc	r0
      003D3D 86 F0            [24] 3849 	mov	b,@r0
      003D3F 12 67 7F         [24] 3850 	lcall	__gptrget
      003D42 FA               [12] 3851 	mov	r2,a
      003D43 A3               [24] 3852 	inc	dptr
      003D44 12 67 7F         [24] 3853 	lcall	__gptrget
      003D47 FB               [12] 3854 	mov	r3,a
      003D48 A3               [24] 3855 	inc	dptr
      003D49 12 67 7F         [24] 3856 	lcall	__gptrget
      003D4C FC               [12] 3857 	mov	r4,a
      003D4D C0 07            [24] 3858 	push	ar7
      003D4F C0 06            [24] 3859 	push	ar6
      003D51 C0 05            [24] 3860 	push	ar5
      003D53 8A 82            [24] 3861 	mov	dpl,r2
      003D55 8B 83            [24] 3862 	mov	dph,r3
      003D57 8C F0            [24] 3863 	mov	b,r4
      003D59 12 27 7F         [24] 3864 	lcall	_stack_pop
      003D5C AB 82            [24] 3865 	mov	r3,dpl
      003D5E AC 83            [24] 3866 	mov	r4,dph
      003D60 15 81            [12] 3867 	dec	sp
      003D62 15 81            [12] 3868 	dec	sp
      003D64 15 81            [12] 3869 	dec	sp
      003D66 EB               [12] 3870 	mov	a,r3
      003D67 4C               [12] 3871 	orl	a,r4
      003D68 70 63            [24] 3872 	jnz	00147$
                                   3873 ;	calc.c:201: printstr("\r\nsecondary stack underflow\r\n");
      003D6A 7F 75            [12] 3874 	mov	r7,#___str_12
      003D6C 7E 80            [12] 3875 	mov	r6,#(___str_12 >> 8)
      003D6E 7D 80            [12] 3876 	mov	r5,#0x80
                                   3877 ;	calc.c:51: return;
      003D70                       3878 00421$:
                                   3879 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003D70 8F 82            [24] 3880 	mov	dpl,r7
      003D72 8E 83            [24] 3881 	mov	dph,r6
      003D74 8D F0            [24] 3882 	mov	b,r5
      003D76 12 67 7F         [24] 3883 	lcall	__gptrget
      003D79 FC               [12] 3884 	mov	r4,a
      003D7A 60 10            [24] 3885 	jz	00299$
      003D7C 7B 00            [12] 3886 	mov	r3,#0x00
      003D7E 8C 82            [24] 3887 	mov	dpl,r4
      003D80 8B 83            [24] 3888 	mov	dph,r3
      003D82 12 29 C0         [24] 3889 	lcall	_putchar
      003D85 0F               [12] 3890 	inc	r7
                                   3891 ;	calc.c:201: printstr("\r\nsecondary stack underflow\r\n");
      003D86 BF 00 E7         [24] 3892 	cjne	r7,#0x00,00421$
      003D89 0E               [12] 3893 	inc	r6
      003D8A 80 E4            [24] 3894 	sjmp	00421$
      003D8C                       3895 00299$:
                                   3896 ;	calc.c:202: (void)stack_push(ctx->ps, d0);
      003D8C E5 08            [12] 3897 	mov	a,_bp
      003D8E 24 07            [12] 3898 	add	a,#0x07
      003D90 F8               [12] 3899 	mov	r0,a
      003D91 86 82            [24] 3900 	mov	dpl,@r0
      003D93 08               [12] 3901 	inc	r0
      003D94 86 83            [24] 3902 	mov	dph,@r0
      003D96 08               [12] 3903 	inc	r0
      003D97 86 F0            [24] 3904 	mov	b,@r0
      003D99 12 67 7F         [24] 3905 	lcall	__gptrget
      003D9C FA               [12] 3906 	mov	r2,a
      003D9D A3               [24] 3907 	inc	dptr
      003D9E 12 67 7F         [24] 3908 	lcall	__gptrget
      003DA1 FB               [12] 3909 	mov	r3,a
      003DA2 A3               [24] 3910 	inc	dptr
      003DA3 12 67 7F         [24] 3911 	lcall	__gptrget
      003DA6 FC               [12] 3912 	mov	r4,a
      003DA7 E5 08            [12] 3913 	mov	a,_bp
      003DA9 24 15            [12] 3914 	add	a,#0x15
      003DAB F8               [12] 3915 	mov	r0,a
      003DAC E6               [12] 3916 	mov	a,@r0
      003DAD C0 E0            [24] 3917 	push	acc
      003DAF 08               [12] 3918 	inc	r0
      003DB0 E6               [12] 3919 	mov	a,@r0
      003DB1 C0 E0            [24] 3920 	push	acc
      003DB3 08               [12] 3921 	inc	r0
      003DB4 E6               [12] 3922 	mov	a,@r0
      003DB5 C0 E0            [24] 3923 	push	acc
      003DB7 08               [12] 3924 	inc	r0
      003DB8 E6               [12] 3925 	mov	a,@r0
      003DB9 C0 E0            [24] 3926 	push	acc
      003DBB 8A 82            [24] 3927 	mov	dpl,r2
      003DBD 8B 83            [24] 3928 	mov	dph,r3
      003DBF 8C F0            [24] 3929 	mov	b,r4
      003DC1 12 26 B5         [24] 3930 	lcall	_stack_push
      003DC4 E5 81            [12] 3931 	mov	a,sp
      003DC6 24 FC            [12] 3932 	add	a,#0xfc
      003DC8 F5 81            [12] 3933 	mov	sp,a
      003DCA 02 54 06         [24] 3934 	ljmp	00249$
      003DCD                       3935 00147$:
                                   3936 ;	calc.c:204: (void)stack_push(ctx->ps, d1);
      003DCD E5 08            [12] 3937 	mov	a,_bp
      003DCF 24 07            [12] 3938 	add	a,#0x07
      003DD1 F8               [12] 3939 	mov	r0,a
      003DD2 86 82            [24] 3940 	mov	dpl,@r0
      003DD4 08               [12] 3941 	inc	r0
      003DD5 86 83            [24] 3942 	mov	dph,@r0
      003DD7 08               [12] 3943 	inc	r0
      003DD8 86 F0            [24] 3944 	mov	b,@r0
      003DDA 12 67 7F         [24] 3945 	lcall	__gptrget
      003DDD FA               [12] 3946 	mov	r2,a
      003DDE A3               [24] 3947 	inc	dptr
      003DDF 12 67 7F         [24] 3948 	lcall	__gptrget
      003DE2 FB               [12] 3949 	mov	r3,a
      003DE3 A3               [24] 3950 	inc	dptr
      003DE4 12 67 7F         [24] 3951 	lcall	__gptrget
      003DE7 FC               [12] 3952 	mov	r4,a
      003DE8 E5 08            [12] 3953 	mov	a,_bp
      003DEA 24 19            [12] 3954 	add	a,#0x19
      003DEC F8               [12] 3955 	mov	r0,a
      003DED E6               [12] 3956 	mov	a,@r0
      003DEE C0 E0            [24] 3957 	push	acc
      003DF0 08               [12] 3958 	inc	r0
      003DF1 E6               [12] 3959 	mov	a,@r0
      003DF2 C0 E0            [24] 3960 	push	acc
      003DF4 08               [12] 3961 	inc	r0
      003DF5 E6               [12] 3962 	mov	a,@r0
      003DF6 C0 E0            [24] 3963 	push	acc
      003DF8 08               [12] 3964 	inc	r0
      003DF9 E6               [12] 3965 	mov	a,@r0
      003DFA C0 E0            [24] 3966 	push	acc
      003DFC 8A 82            [24] 3967 	mov	dpl,r2
      003DFE 8B 83            [24] 3968 	mov	dph,r3
      003E00 8C F0            [24] 3969 	mov	b,r4
      003E02 12 26 B5         [24] 3970 	lcall	_stack_push
      003E05 E5 81            [12] 3971 	mov	a,sp
      003E07 24 FC            [12] 3972 	add	a,#0xfc
      003E09 F5 81            [12] 3973 	mov	sp,a
                                   3974 ;	calc.c:205: (void)stack_push(ctx->ss, d0);
      003E0B E5 08            [12] 3975 	mov	a,_bp
      003E0D 24 04            [12] 3976 	add	a,#0x04
      003E0F F8               [12] 3977 	mov	r0,a
      003E10 86 82            [24] 3978 	mov	dpl,@r0
      003E12 08               [12] 3979 	inc	r0
      003E13 86 83            [24] 3980 	mov	dph,@r0
      003E15 08               [12] 3981 	inc	r0
      003E16 86 F0            [24] 3982 	mov	b,@r0
      003E18 12 67 7F         [24] 3983 	lcall	__gptrget
      003E1B FA               [12] 3984 	mov	r2,a
      003E1C A3               [24] 3985 	inc	dptr
      003E1D 12 67 7F         [24] 3986 	lcall	__gptrget
      003E20 FB               [12] 3987 	mov	r3,a
      003E21 A3               [24] 3988 	inc	dptr
      003E22 12 67 7F         [24] 3989 	lcall	__gptrget
      003E25 FC               [12] 3990 	mov	r4,a
      003E26 E5 08            [12] 3991 	mov	a,_bp
      003E28 24 15            [12] 3992 	add	a,#0x15
      003E2A F8               [12] 3993 	mov	r0,a
      003E2B E6               [12] 3994 	mov	a,@r0
      003E2C C0 E0            [24] 3995 	push	acc
      003E2E 08               [12] 3996 	inc	r0
      003E2F E6               [12] 3997 	mov	a,@r0
      003E30 C0 E0            [24] 3998 	push	acc
      003E32 08               [12] 3999 	inc	r0
      003E33 E6               [12] 4000 	mov	a,@r0
      003E34 C0 E0            [24] 4001 	push	acc
      003E36 08               [12] 4002 	inc	r0
      003E37 E6               [12] 4003 	mov	a,@r0
      003E38 C0 E0            [24] 4004 	push	acc
      003E3A 8A 82            [24] 4005 	mov	dpl,r2
      003E3C 8B 83            [24] 4006 	mov	dph,r3
      003E3E 8C F0            [24] 4007 	mov	b,r4
      003E40 12 26 B5         [24] 4008 	lcall	_stack_push
      003E43 E5 81            [12] 4009 	mov	a,sp
      003E45 24 FC            [12] 4010 	add	a,#0xfc
      003E47 F5 81            [12] 4011 	mov	sp,a
                                   4012 ;	calc.c:208: break;
      003E49 02 54 06         [24] 4013 	ljmp	00249$
                                   4014 ;	calc.c:209: case 'X':
      003E4C                       4015 00152$:
                                   4016 ;	calc.c:210: t0 = ctx->ps;
      003E4C E5 08            [12] 4017 	mov	a,_bp
      003E4E 24 12            [12] 4018 	add	a,#0x12
      003E50 F8               [12] 4019 	mov	r0,a
      003E51 E5 08            [12] 4020 	mov	a,_bp
      003E53 24 0B            [12] 4021 	add	a,#0x0b
      003E55 F9               [12] 4022 	mov	r1,a
      003E56 74 11            [12] 4023 	mov	a,#0x11
      003E58 26               [12] 4024 	add	a,@r0
      003E59 F7               [12] 4025 	mov	@r1,a
      003E5A 74 40            [12] 4026 	mov	a,#0x40
      003E5C 08               [12] 4027 	inc	r0
      003E5D 36               [12] 4028 	addc	a,@r0
      003E5E 09               [12] 4029 	inc	r1
      003E5F F7               [12] 4030 	mov	@r1,a
      003E60 08               [12] 4031 	inc	r0
      003E61 09               [12] 4032 	inc	r1
      003E62 E6               [12] 4033 	mov	a,@r0
      003E63 F7               [12] 4034 	mov	@r1,a
      003E64 E5 08            [12] 4035 	mov	a,_bp
      003E66 24 0B            [12] 4036 	add	a,#0x0b
      003E68 F8               [12] 4037 	mov	r0,a
      003E69 86 82            [24] 4038 	mov	dpl,@r0
      003E6B 08               [12] 4039 	inc	r0
      003E6C 86 83            [24] 4040 	mov	dph,@r0
      003E6E 08               [12] 4041 	inc	r0
      003E6F 86 F0            [24] 4042 	mov	b,@r0
      003E71 12 67 7F         [24] 4043 	lcall	__gptrget
      003E74 FF               [12] 4044 	mov	r7,a
      003E75 A3               [24] 4045 	inc	dptr
      003E76 12 67 7F         [24] 4046 	lcall	__gptrget
      003E79 FE               [12] 4047 	mov	r6,a
      003E7A A3               [24] 4048 	inc	dptr
      003E7B 12 67 7F         [24] 4049 	lcall	__gptrget
      003E7E FD               [12] 4050 	mov	r5,a
                                   4051 ;	calc.c:211: ctx->ps = ctx->ss;
      003E7F E5 08            [12] 4052 	mov	a,_bp
      003E81 24 12            [12] 4053 	add	a,#0x12
      003E83 F8               [12] 4054 	mov	r0,a
      003E84 E5 08            [12] 4055 	mov	a,_bp
      003E86 24 07            [12] 4056 	add	a,#0x07
      003E88 F9               [12] 4057 	mov	r1,a
      003E89 74 14            [12] 4058 	mov	a,#0x14
      003E8B 26               [12] 4059 	add	a,@r0
      003E8C F7               [12] 4060 	mov	@r1,a
      003E8D 74 40            [12] 4061 	mov	a,#0x40
      003E8F 08               [12] 4062 	inc	r0
      003E90 36               [12] 4063 	addc	a,@r0
      003E91 09               [12] 4064 	inc	r1
      003E92 F7               [12] 4065 	mov	@r1,a
      003E93 08               [12] 4066 	inc	r0
      003E94 09               [12] 4067 	inc	r1
      003E95 E6               [12] 4068 	mov	a,@r0
      003E96 F7               [12] 4069 	mov	@r1,a
      003E97 E5 08            [12] 4070 	mov	a,_bp
      003E99 24 07            [12] 4071 	add	a,#0x07
      003E9B F8               [12] 4072 	mov	r0,a
      003E9C 86 82            [24] 4073 	mov	dpl,@r0
      003E9E 08               [12] 4074 	inc	r0
      003E9F 86 83            [24] 4075 	mov	dph,@r0
      003EA1 08               [12] 4076 	inc	r0
      003EA2 86 F0            [24] 4077 	mov	b,@r0
      003EA4 12 67 7F         [24] 4078 	lcall	__gptrget
      003EA7 FA               [12] 4079 	mov	r2,a
      003EA8 A3               [24] 4080 	inc	dptr
      003EA9 12 67 7F         [24] 4081 	lcall	__gptrget
      003EAC FB               [12] 4082 	mov	r3,a
      003EAD A3               [24] 4083 	inc	dptr
      003EAE 12 67 7F         [24] 4084 	lcall	__gptrget
      003EB1 FC               [12] 4085 	mov	r4,a
      003EB2 E5 08            [12] 4086 	mov	a,_bp
      003EB4 24 0B            [12] 4087 	add	a,#0x0b
      003EB6 F8               [12] 4088 	mov	r0,a
      003EB7 86 82            [24] 4089 	mov	dpl,@r0
      003EB9 08               [12] 4090 	inc	r0
      003EBA 86 83            [24] 4091 	mov	dph,@r0
      003EBC 08               [12] 4092 	inc	r0
      003EBD 86 F0            [24] 4093 	mov	b,@r0
      003EBF EA               [12] 4094 	mov	a,r2
      003EC0 12 63 04         [24] 4095 	lcall	__gptrput
      003EC3 A3               [24] 4096 	inc	dptr
      003EC4 EB               [12] 4097 	mov	a,r3
      003EC5 12 63 04         [24] 4098 	lcall	__gptrput
      003EC8 A3               [24] 4099 	inc	dptr
      003EC9 EC               [12] 4100 	mov	a,r4
      003ECA 12 63 04         [24] 4101 	lcall	__gptrput
                                   4102 ;	calc.c:212: ctx->ss = t0;
      003ECD E5 08            [12] 4103 	mov	a,_bp
      003ECF 24 07            [12] 4104 	add	a,#0x07
      003ED1 F8               [12] 4105 	mov	r0,a
      003ED2 86 82            [24] 4106 	mov	dpl,@r0
      003ED4 08               [12] 4107 	inc	r0
      003ED5 86 83            [24] 4108 	mov	dph,@r0
      003ED7 08               [12] 4109 	inc	r0
      003ED8 86 F0            [24] 4110 	mov	b,@r0
      003EDA EF               [12] 4111 	mov	a,r7
      003EDB 12 63 04         [24] 4112 	lcall	__gptrput
      003EDE A3               [24] 4113 	inc	dptr
      003EDF EE               [12] 4114 	mov	a,r6
      003EE0 12 63 04         [24] 4115 	lcall	__gptrput
      003EE3 A3               [24] 4116 	inc	dptr
      003EE4 ED               [12] 4117 	mov	a,r5
      003EE5 12 63 04         [24] 4118 	lcall	__gptrput
                                   4119 ;	calc.c:213: break;
      003EE8 02 54 06         [24] 4120 	ljmp	00249$
                                   4121 ;	calc.c:214: case '+':
      003EEB                       4122 00153$:
                                   4123 ;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003EEB E5 08            [12] 4124 	mov	a,_bp
      003EED 24 15            [12] 4125 	add	a,#0x15
      003EEF FF               [12] 4126 	mov	r7,a
      003EF0 7E 00            [12] 4127 	mov	r6,#0x00
      003EF2 7D 40            [12] 4128 	mov	r5,#0x40
      003EF4 E5 08            [12] 4129 	mov	a,_bp
      003EF6 24 12            [12] 4130 	add	a,#0x12
      003EF8 F8               [12] 4131 	mov	r0,a
      003EF9 E5 08            [12] 4132 	mov	a,_bp
      003EFB 24 0B            [12] 4133 	add	a,#0x0b
      003EFD F9               [12] 4134 	mov	r1,a
      003EFE 74 11            [12] 4135 	mov	a,#0x11
      003F00 26               [12] 4136 	add	a,@r0
      003F01 F7               [12] 4137 	mov	@r1,a
      003F02 74 40            [12] 4138 	mov	a,#0x40
      003F04 08               [12] 4139 	inc	r0
      003F05 36               [12] 4140 	addc	a,@r0
      003F06 09               [12] 4141 	inc	r1
      003F07 F7               [12] 4142 	mov	@r1,a
      003F08 08               [12] 4143 	inc	r0
      003F09 09               [12] 4144 	inc	r1
      003F0A E6               [12] 4145 	mov	a,@r0
      003F0B F7               [12] 4146 	mov	@r1,a
      003F0C E5 08            [12] 4147 	mov	a,_bp
      003F0E 24 0B            [12] 4148 	add	a,#0x0b
      003F10 F8               [12] 4149 	mov	r0,a
      003F11 86 82            [24] 4150 	mov	dpl,@r0
      003F13 08               [12] 4151 	inc	r0
      003F14 86 83            [24] 4152 	mov	dph,@r0
      003F16 08               [12] 4153 	inc	r0
      003F17 86 F0            [24] 4154 	mov	b,@r0
      003F19 12 67 7F         [24] 4155 	lcall	__gptrget
      003F1C FA               [12] 4156 	mov	r2,a
      003F1D A3               [24] 4157 	inc	dptr
      003F1E 12 67 7F         [24] 4158 	lcall	__gptrget
      003F21 FB               [12] 4159 	mov	r3,a
      003F22 A3               [24] 4160 	inc	dptr
      003F23 12 67 7F         [24] 4161 	lcall	__gptrget
      003F26 FC               [12] 4162 	mov	r4,a
      003F27 C0 07            [24] 4163 	push	ar7
      003F29 C0 06            [24] 4164 	push	ar6
      003F2B C0 05            [24] 4165 	push	ar5
      003F2D 8A 82            [24] 4166 	mov	dpl,r2
      003F2F 8B 83            [24] 4167 	mov	dph,r3
      003F31 8C F0            [24] 4168 	mov	b,r4
      003F33 12 27 7F         [24] 4169 	lcall	_stack_pop
      003F36 AB 82            [24] 4170 	mov	r3,dpl
      003F38 AC 83            [24] 4171 	mov	r4,dph
      003F3A 15 81            [12] 4172 	dec	sp
      003F3C 15 81            [12] 4173 	dec	sp
      003F3E 15 81            [12] 4174 	dec	sp
      003F40 EB               [12] 4175 	mov	a,r3
      003F41 4C               [12] 4176 	orl	a,r4
      003F42 70 25            [24] 4177 	jnz	00158$
      003F44 7F 44            [12] 4178 	mov	r7,#___str_10
      003F46 7E 80            [12] 4179 	mov	r6,#(___str_10 >> 8)
      003F48 7D 80            [12] 4180 	mov	r5,#0x80
                                   4181 ;	calc.c:51: return;
      003F4A                       4182 00424$:
                                   4183 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003F4A 8F 82            [24] 4184 	mov	dpl,r7
      003F4C 8E 83            [24] 4185 	mov	dph,r6
      003F4E 8D F0            [24] 4186 	mov	b,r5
      003F50 12 67 7F         [24] 4187 	lcall	__gptrget
      003F53 FC               [12] 4188 	mov	r4,a
      003F54 70 03            [24] 4189 	jnz	01324$
      003F56 02 54 06         [24] 4190 	ljmp	00249$
      003F59                       4191 01324$:
      003F59 7B 00            [12] 4192 	mov	r3,#0x00
      003F5B 8C 82            [24] 4193 	mov	dpl,r4
      003F5D 8B 83            [24] 4194 	mov	dph,r3
      003F5F 12 29 C0         [24] 4195 	lcall	_putchar
      003F62 0F               [12] 4196 	inc	r7
                                   4197 ;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003F63 BF 00 E4         [24] 4198 	cjne	r7,#0x00,00424$
      003F66 0E               [12] 4199 	inc	r6
      003F67 80 E1            [24] 4200 	sjmp	00424$
      003F69                       4201 00158$:
                                   4202 ;	calc.c:216: else if (!stack_pop(ctx->ps, &d1)) {
      003F69 E5 08            [12] 4203 	mov	a,_bp
      003F6B 24 19            [12] 4204 	add	a,#0x19
      003F6D FF               [12] 4205 	mov	r7,a
      003F6E 7E 00            [12] 4206 	mov	r6,#0x00
      003F70 7D 40            [12] 4207 	mov	r5,#0x40
      003F72 E5 08            [12] 4208 	mov	a,_bp
      003F74 24 0B            [12] 4209 	add	a,#0x0b
      003F76 F8               [12] 4210 	mov	r0,a
      003F77 86 82            [24] 4211 	mov	dpl,@r0
      003F79 08               [12] 4212 	inc	r0
      003F7A 86 83            [24] 4213 	mov	dph,@r0
      003F7C 08               [12] 4214 	inc	r0
      003F7D 86 F0            [24] 4215 	mov	b,@r0
      003F7F 12 67 7F         [24] 4216 	lcall	__gptrget
      003F82 FA               [12] 4217 	mov	r2,a
      003F83 A3               [24] 4218 	inc	dptr
      003F84 12 67 7F         [24] 4219 	lcall	__gptrget
      003F87 FB               [12] 4220 	mov	r3,a
      003F88 A3               [24] 4221 	inc	dptr
      003F89 12 67 7F         [24] 4222 	lcall	__gptrget
      003F8C FC               [12] 4223 	mov	r4,a
      003F8D C0 07            [24] 4224 	push	ar7
      003F8F C0 06            [24] 4225 	push	ar6
      003F91 C0 05            [24] 4226 	push	ar5
      003F93 8A 82            [24] 4227 	mov	dpl,r2
      003F95 8B 83            [24] 4228 	mov	dph,r3
      003F97 8C F0            [24] 4229 	mov	b,r4
      003F99 12 27 7F         [24] 4230 	lcall	_stack_pop
      003F9C AB 82            [24] 4231 	mov	r3,dpl
      003F9E AC 83            [24] 4232 	mov	r4,dph
      003FA0 15 81            [12] 4233 	dec	sp
      003FA2 15 81            [12] 4234 	dec	sp
      003FA4 15 81            [12] 4235 	dec	sp
      003FA6 EB               [12] 4236 	mov	a,r3
      003FA7 4C               [12] 4237 	orl	a,r4
      003FA8 70 63            [24] 4238 	jnz	00155$
                                   4239 ;	calc.c:217: (void)stack_push(ctx->ps, d0);
      003FAA E5 08            [12] 4240 	mov	a,_bp
      003FAC 24 0B            [12] 4241 	add	a,#0x0b
      003FAE F8               [12] 4242 	mov	r0,a
      003FAF 86 82            [24] 4243 	mov	dpl,@r0
      003FB1 08               [12] 4244 	inc	r0
      003FB2 86 83            [24] 4245 	mov	dph,@r0
      003FB4 08               [12] 4246 	inc	r0
      003FB5 86 F0            [24] 4247 	mov	b,@r0
      003FB7 12 67 7F         [24] 4248 	lcall	__gptrget
      003FBA FA               [12] 4249 	mov	r2,a
      003FBB A3               [24] 4250 	inc	dptr
      003FBC 12 67 7F         [24] 4251 	lcall	__gptrget
      003FBF FB               [12] 4252 	mov	r3,a
      003FC0 A3               [24] 4253 	inc	dptr
      003FC1 12 67 7F         [24] 4254 	lcall	__gptrget
      003FC4 FC               [12] 4255 	mov	r4,a
      003FC5 E5 08            [12] 4256 	mov	a,_bp
      003FC7 24 15            [12] 4257 	add	a,#0x15
      003FC9 F8               [12] 4258 	mov	r0,a
      003FCA E6               [12] 4259 	mov	a,@r0
      003FCB C0 E0            [24] 4260 	push	acc
      003FCD 08               [12] 4261 	inc	r0
      003FCE E6               [12] 4262 	mov	a,@r0
      003FCF C0 E0            [24] 4263 	push	acc
      003FD1 08               [12] 4264 	inc	r0
      003FD2 E6               [12] 4265 	mov	a,@r0
      003FD3 C0 E0            [24] 4266 	push	acc
      003FD5 08               [12] 4267 	inc	r0
      003FD6 E6               [12] 4268 	mov	a,@r0
      003FD7 C0 E0            [24] 4269 	push	acc
      003FD9 8A 82            [24] 4270 	mov	dpl,r2
      003FDB 8B 83            [24] 4271 	mov	dph,r3
      003FDD 8C F0            [24] 4272 	mov	b,r4
      003FDF 12 26 B5         [24] 4273 	lcall	_stack_push
      003FE2 E5 81            [12] 4274 	mov	a,sp
      003FE4 24 FC            [12] 4275 	add	a,#0xfc
      003FE6 F5 81            [12] 4276 	mov	sp,a
                                   4277 ;	calc.c:218: printstr("\r\nstack underflow\r\n");
      003FE8 7F 44            [12] 4278 	mov	r7,#___str_10
      003FEA 7E 80            [12] 4279 	mov	r6,#(___str_10 >> 8)
      003FEC 7D 80            [12] 4280 	mov	r5,#0x80
                                   4281 ;	calc.c:51: return;
      003FEE                       4282 00427$:
                                   4283 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003FEE 8F 82            [24] 4284 	mov	dpl,r7
      003FF0 8E 83            [24] 4285 	mov	dph,r6
      003FF2 8D F0            [24] 4286 	mov	b,r5
      003FF4 12 67 7F         [24] 4287 	lcall	__gptrget
      003FF7 FC               [12] 4288 	mov	r4,a
      003FF8 70 03            [24] 4289 	jnz	01327$
      003FFA 02 54 06         [24] 4290 	ljmp	00249$
      003FFD                       4291 01327$:
      003FFD 7B 00            [12] 4292 	mov	r3,#0x00
      003FFF 8C 82            [24] 4293 	mov	dpl,r4
      004001 8B 83            [24] 4294 	mov	dph,r3
      004003 12 29 C0         [24] 4295 	lcall	_putchar
      004006 0F               [12] 4296 	inc	r7
                                   4297 ;	calc.c:218: printstr("\r\nstack underflow\r\n");
      004007 BF 00 E4         [24] 4298 	cjne	r7,#0x00,00427$
      00400A 0E               [12] 4299 	inc	r6
      00400B 80 E1            [24] 4300 	sjmp	00427$
      00400D                       4301 00155$:
                                   4302 ;	calc.c:220: d1 += d0;
      00400D E5 08            [12] 4303 	mov	a,_bp
      00400F 24 19            [12] 4304 	add	a,#0x19
      004011 F8               [12] 4305 	mov	r0,a
      004012 E5 08            [12] 4306 	mov	a,_bp
      004014 24 15            [12] 4307 	add	a,#0x15
      004016 F9               [12] 4308 	mov	r1,a
      004017 E7               [12] 4309 	mov	a,@r1
      004018 26               [12] 4310 	add	a,@r0
      004019 F6               [12] 4311 	mov	@r0,a
      00401A 09               [12] 4312 	inc	r1
      00401B E7               [12] 4313 	mov	a,@r1
      00401C 08               [12] 4314 	inc	r0
      00401D 36               [12] 4315 	addc	a,@r0
      00401E F6               [12] 4316 	mov	@r0,a
      00401F 09               [12] 4317 	inc	r1
      004020 E7               [12] 4318 	mov	a,@r1
      004021 08               [12] 4319 	inc	r0
      004022 36               [12] 4320 	addc	a,@r0
      004023 F6               [12] 4321 	mov	@r0,a
      004024 09               [12] 4322 	inc	r1
      004025 E7               [12] 4323 	mov	a,@r1
      004026 08               [12] 4324 	inc	r0
      004027 36               [12] 4325 	addc	a,@r0
      004028 F6               [12] 4326 	mov	@r0,a
                                   4327 ;	calc.c:221: (void)stack_push(ctx->ps, d1);
      004029 E5 08            [12] 4328 	mov	a,_bp
      00402B 24 0B            [12] 4329 	add	a,#0x0b
      00402D F8               [12] 4330 	mov	r0,a
      00402E 86 82            [24] 4331 	mov	dpl,@r0
      004030 08               [12] 4332 	inc	r0
      004031 86 83            [24] 4333 	mov	dph,@r0
      004033 08               [12] 4334 	inc	r0
      004034 86 F0            [24] 4335 	mov	b,@r0
      004036 12 67 7F         [24] 4336 	lcall	__gptrget
      004039 FA               [12] 4337 	mov	r2,a
      00403A A3               [24] 4338 	inc	dptr
      00403B 12 67 7F         [24] 4339 	lcall	__gptrget
      00403E FB               [12] 4340 	mov	r3,a
      00403F A3               [24] 4341 	inc	dptr
      004040 12 67 7F         [24] 4342 	lcall	__gptrget
      004043 FC               [12] 4343 	mov	r4,a
      004044 E5 08            [12] 4344 	mov	a,_bp
      004046 24 19            [12] 4345 	add	a,#0x19
      004048 F8               [12] 4346 	mov	r0,a
      004049 E6               [12] 4347 	mov	a,@r0
      00404A C0 E0            [24] 4348 	push	acc
      00404C 08               [12] 4349 	inc	r0
      00404D E6               [12] 4350 	mov	a,@r0
      00404E C0 E0            [24] 4351 	push	acc
      004050 08               [12] 4352 	inc	r0
      004051 E6               [12] 4353 	mov	a,@r0
      004052 C0 E0            [24] 4354 	push	acc
      004054 08               [12] 4355 	inc	r0
      004055 E6               [12] 4356 	mov	a,@r0
      004056 C0 E0            [24] 4357 	push	acc
      004058 8A 82            [24] 4358 	mov	dpl,r2
      00405A 8B 83            [24] 4359 	mov	dph,r3
      00405C 8C F0            [24] 4360 	mov	b,r4
      00405E 12 26 B5         [24] 4361 	lcall	_stack_push
      004061 E5 81            [12] 4362 	mov	a,sp
      004063 24 FC            [12] 4363 	add	a,#0xfc
      004065 F5 81            [12] 4364 	mov	sp,a
                                   4365 ;	calc.c:223: break;
      004067 02 54 06         [24] 4366 	ljmp	00249$
                                   4367 ;	calc.c:224: case '-':
      00406A                       4368 00160$:
                                   4369 ;	calc.c:225: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00406A E5 08            [12] 4370 	mov	a,_bp
      00406C 24 15            [12] 4371 	add	a,#0x15
      00406E FF               [12] 4372 	mov	r7,a
      00406F 7E 00            [12] 4373 	mov	r6,#0x00
      004071 7D 40            [12] 4374 	mov	r5,#0x40
      004073 E5 08            [12] 4375 	mov	a,_bp
      004075 24 12            [12] 4376 	add	a,#0x12
      004077 F8               [12] 4377 	mov	r0,a
      004078 E5 08            [12] 4378 	mov	a,_bp
      00407A 24 0B            [12] 4379 	add	a,#0x0b
      00407C F9               [12] 4380 	mov	r1,a
      00407D 74 11            [12] 4381 	mov	a,#0x11
      00407F 26               [12] 4382 	add	a,@r0
      004080 F7               [12] 4383 	mov	@r1,a
      004081 74 40            [12] 4384 	mov	a,#0x40
      004083 08               [12] 4385 	inc	r0
      004084 36               [12] 4386 	addc	a,@r0
      004085 09               [12] 4387 	inc	r1
      004086 F7               [12] 4388 	mov	@r1,a
      004087 08               [12] 4389 	inc	r0
      004088 09               [12] 4390 	inc	r1
      004089 E6               [12] 4391 	mov	a,@r0
      00408A F7               [12] 4392 	mov	@r1,a
      00408B E5 08            [12] 4393 	mov	a,_bp
      00408D 24 0B            [12] 4394 	add	a,#0x0b
      00408F F8               [12] 4395 	mov	r0,a
      004090 86 82            [24] 4396 	mov	dpl,@r0
      004092 08               [12] 4397 	inc	r0
      004093 86 83            [24] 4398 	mov	dph,@r0
      004095 08               [12] 4399 	inc	r0
      004096 86 F0            [24] 4400 	mov	b,@r0
      004098 12 67 7F         [24] 4401 	lcall	__gptrget
      00409B FA               [12] 4402 	mov	r2,a
      00409C A3               [24] 4403 	inc	dptr
      00409D 12 67 7F         [24] 4404 	lcall	__gptrget
      0040A0 FB               [12] 4405 	mov	r3,a
      0040A1 A3               [24] 4406 	inc	dptr
      0040A2 12 67 7F         [24] 4407 	lcall	__gptrget
      0040A5 FC               [12] 4408 	mov	r4,a
      0040A6 C0 07            [24] 4409 	push	ar7
      0040A8 C0 06            [24] 4410 	push	ar6
      0040AA C0 05            [24] 4411 	push	ar5
      0040AC 8A 82            [24] 4412 	mov	dpl,r2
      0040AE 8B 83            [24] 4413 	mov	dph,r3
      0040B0 8C F0            [24] 4414 	mov	b,r4
      0040B2 12 27 7F         [24] 4415 	lcall	_stack_pop
      0040B5 AB 82            [24] 4416 	mov	r3,dpl
      0040B7 AC 83            [24] 4417 	mov	r4,dph
      0040B9 15 81            [12] 4418 	dec	sp
      0040BB 15 81            [12] 4419 	dec	sp
      0040BD 15 81            [12] 4420 	dec	sp
      0040BF EB               [12] 4421 	mov	a,r3
      0040C0 4C               [12] 4422 	orl	a,r4
      0040C1 70 25            [24] 4423 	jnz	00165$
      0040C3 7F 44            [12] 4424 	mov	r7,#___str_10
      0040C5 7E 80            [12] 4425 	mov	r6,#(___str_10 >> 8)
      0040C7 7D 80            [12] 4426 	mov	r5,#0x80
                                   4427 ;	calc.c:51: return;
      0040C9                       4428 00430$:
                                   4429 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0040C9 8F 82            [24] 4430 	mov	dpl,r7
      0040CB 8E 83            [24] 4431 	mov	dph,r6
      0040CD 8D F0            [24] 4432 	mov	b,r5
      0040CF 12 67 7F         [24] 4433 	lcall	__gptrget
      0040D2 FC               [12] 4434 	mov	r4,a
      0040D3 70 03            [24] 4435 	jnz	01330$
      0040D5 02 54 06         [24] 4436 	ljmp	00249$
      0040D8                       4437 01330$:
      0040D8 7B 00            [12] 4438 	mov	r3,#0x00
      0040DA 8C 82            [24] 4439 	mov	dpl,r4
      0040DC 8B 83            [24] 4440 	mov	dph,r3
      0040DE 12 29 C0         [24] 4441 	lcall	_putchar
      0040E1 0F               [12] 4442 	inc	r7
                                   4443 ;	calc.c:225: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0040E2 BF 00 E4         [24] 4444 	cjne	r7,#0x00,00430$
      0040E5 0E               [12] 4445 	inc	r6
      0040E6 80 E1            [24] 4446 	sjmp	00430$
      0040E8                       4447 00165$:
                                   4448 ;	calc.c:226: else if (!stack_pop(ctx->ps, &d1)) {
      0040E8 E5 08            [12] 4449 	mov	a,_bp
      0040EA 24 19            [12] 4450 	add	a,#0x19
      0040EC FF               [12] 4451 	mov	r7,a
      0040ED 7E 00            [12] 4452 	mov	r6,#0x00
      0040EF 7D 40            [12] 4453 	mov	r5,#0x40
      0040F1 E5 08            [12] 4454 	mov	a,_bp
      0040F3 24 0B            [12] 4455 	add	a,#0x0b
      0040F5 F8               [12] 4456 	mov	r0,a
      0040F6 86 82            [24] 4457 	mov	dpl,@r0
      0040F8 08               [12] 4458 	inc	r0
      0040F9 86 83            [24] 4459 	mov	dph,@r0
      0040FB 08               [12] 4460 	inc	r0
      0040FC 86 F0            [24] 4461 	mov	b,@r0
      0040FE 12 67 7F         [24] 4462 	lcall	__gptrget
      004101 FA               [12] 4463 	mov	r2,a
      004102 A3               [24] 4464 	inc	dptr
      004103 12 67 7F         [24] 4465 	lcall	__gptrget
      004106 FB               [12] 4466 	mov	r3,a
      004107 A3               [24] 4467 	inc	dptr
      004108 12 67 7F         [24] 4468 	lcall	__gptrget
      00410B FC               [12] 4469 	mov	r4,a
      00410C C0 07            [24] 4470 	push	ar7
      00410E C0 06            [24] 4471 	push	ar6
      004110 C0 05            [24] 4472 	push	ar5
      004112 8A 82            [24] 4473 	mov	dpl,r2
      004114 8B 83            [24] 4474 	mov	dph,r3
      004116 8C F0            [24] 4475 	mov	b,r4
      004118 12 27 7F         [24] 4476 	lcall	_stack_pop
      00411B AB 82            [24] 4477 	mov	r3,dpl
      00411D AC 83            [24] 4478 	mov	r4,dph
      00411F 15 81            [12] 4479 	dec	sp
      004121 15 81            [12] 4480 	dec	sp
      004123 15 81            [12] 4481 	dec	sp
      004125 EB               [12] 4482 	mov	a,r3
      004126 4C               [12] 4483 	orl	a,r4
      004127 70 63            [24] 4484 	jnz	00162$
                                   4485 ;	calc.c:227: (void)stack_push(ctx->ps, d0);
      004129 E5 08            [12] 4486 	mov	a,_bp
      00412B 24 0B            [12] 4487 	add	a,#0x0b
      00412D F8               [12] 4488 	mov	r0,a
      00412E 86 82            [24] 4489 	mov	dpl,@r0
      004130 08               [12] 4490 	inc	r0
      004131 86 83            [24] 4491 	mov	dph,@r0
      004133 08               [12] 4492 	inc	r0
      004134 86 F0            [24] 4493 	mov	b,@r0
      004136 12 67 7F         [24] 4494 	lcall	__gptrget
      004139 FA               [12] 4495 	mov	r2,a
      00413A A3               [24] 4496 	inc	dptr
      00413B 12 67 7F         [24] 4497 	lcall	__gptrget
      00413E FB               [12] 4498 	mov	r3,a
      00413F A3               [24] 4499 	inc	dptr
      004140 12 67 7F         [24] 4500 	lcall	__gptrget
      004143 FC               [12] 4501 	mov	r4,a
      004144 E5 08            [12] 4502 	mov	a,_bp
      004146 24 15            [12] 4503 	add	a,#0x15
      004148 F8               [12] 4504 	mov	r0,a
      004149 E6               [12] 4505 	mov	a,@r0
      00414A C0 E0            [24] 4506 	push	acc
      00414C 08               [12] 4507 	inc	r0
      00414D E6               [12] 4508 	mov	a,@r0
      00414E C0 E0            [24] 4509 	push	acc
      004150 08               [12] 4510 	inc	r0
      004151 E6               [12] 4511 	mov	a,@r0
      004152 C0 E0            [24] 4512 	push	acc
      004154 08               [12] 4513 	inc	r0
      004155 E6               [12] 4514 	mov	a,@r0
      004156 C0 E0            [24] 4515 	push	acc
      004158 8A 82            [24] 4516 	mov	dpl,r2
      00415A 8B 83            [24] 4517 	mov	dph,r3
      00415C 8C F0            [24] 4518 	mov	b,r4
      00415E 12 26 B5         [24] 4519 	lcall	_stack_push
      004161 E5 81            [12] 4520 	mov	a,sp
      004163 24 FC            [12] 4521 	add	a,#0xfc
      004165 F5 81            [12] 4522 	mov	sp,a
                                   4523 ;	calc.c:228: printstr("\r\nstack underflow\r\n");
      004167 7F 44            [12] 4524 	mov	r7,#___str_10
      004169 7E 80            [12] 4525 	mov	r6,#(___str_10 >> 8)
      00416B 7D 80            [12] 4526 	mov	r5,#0x80
                                   4527 ;	calc.c:51: return;
      00416D                       4528 00433$:
                                   4529 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00416D 8F 82            [24] 4530 	mov	dpl,r7
      00416F 8E 83            [24] 4531 	mov	dph,r6
      004171 8D F0            [24] 4532 	mov	b,r5
      004173 12 67 7F         [24] 4533 	lcall	__gptrget
      004176 FC               [12] 4534 	mov	r4,a
      004177 70 03            [24] 4535 	jnz	01333$
      004179 02 54 06         [24] 4536 	ljmp	00249$
      00417C                       4537 01333$:
      00417C 7B 00            [12] 4538 	mov	r3,#0x00
      00417E 8C 82            [24] 4539 	mov	dpl,r4
      004180 8B 83            [24] 4540 	mov	dph,r3
      004182 12 29 C0         [24] 4541 	lcall	_putchar
      004185 0F               [12] 4542 	inc	r7
                                   4543 ;	calc.c:228: printstr("\r\nstack underflow\r\n");
      004186 BF 00 E4         [24] 4544 	cjne	r7,#0x00,00433$
      004189 0E               [12] 4545 	inc	r6
      00418A 80 E1            [24] 4546 	sjmp	00433$
      00418C                       4547 00162$:
                                   4548 ;	calc.c:230: d1 -= d0;
      00418C E5 08            [12] 4549 	mov	a,_bp
      00418E 24 19            [12] 4550 	add	a,#0x19
      004190 F8               [12] 4551 	mov	r0,a
      004191 E5 08            [12] 4552 	mov	a,_bp
      004193 24 15            [12] 4553 	add	a,#0x15
      004195 F9               [12] 4554 	mov	r1,a
      004196 E6               [12] 4555 	mov	a,@r0
      004197 C3               [12] 4556 	clr	c
      004198 97               [12] 4557 	subb	a,@r1
      004199 F6               [12] 4558 	mov	@r0,a
      00419A 08               [12] 4559 	inc	r0
      00419B E6               [12] 4560 	mov	a,@r0
      00419C 09               [12] 4561 	inc	r1
      00419D 97               [12] 4562 	subb	a,@r1
      00419E F6               [12] 4563 	mov	@r0,a
      00419F 08               [12] 4564 	inc	r0
      0041A0 E6               [12] 4565 	mov	a,@r0
      0041A1 09               [12] 4566 	inc	r1
      0041A2 97               [12] 4567 	subb	a,@r1
      0041A3 F6               [12] 4568 	mov	@r0,a
      0041A4 08               [12] 4569 	inc	r0
      0041A5 E6               [12] 4570 	mov	a,@r0
      0041A6 09               [12] 4571 	inc	r1
      0041A7 97               [12] 4572 	subb	a,@r1
      0041A8 F6               [12] 4573 	mov	@r0,a
                                   4574 ;	calc.c:231: (void)stack_push(ctx->ps, d1);
      0041A9 E5 08            [12] 4575 	mov	a,_bp
      0041AB 24 0B            [12] 4576 	add	a,#0x0b
      0041AD F8               [12] 4577 	mov	r0,a
      0041AE 86 82            [24] 4578 	mov	dpl,@r0
      0041B0 08               [12] 4579 	inc	r0
      0041B1 86 83            [24] 4580 	mov	dph,@r0
      0041B3 08               [12] 4581 	inc	r0
      0041B4 86 F0            [24] 4582 	mov	b,@r0
      0041B6 12 67 7F         [24] 4583 	lcall	__gptrget
      0041B9 FA               [12] 4584 	mov	r2,a
      0041BA A3               [24] 4585 	inc	dptr
      0041BB 12 67 7F         [24] 4586 	lcall	__gptrget
      0041BE FB               [12] 4587 	mov	r3,a
      0041BF A3               [24] 4588 	inc	dptr
      0041C0 12 67 7F         [24] 4589 	lcall	__gptrget
      0041C3 FC               [12] 4590 	mov	r4,a
      0041C4 E5 08            [12] 4591 	mov	a,_bp
      0041C6 24 19            [12] 4592 	add	a,#0x19
      0041C8 F8               [12] 4593 	mov	r0,a
      0041C9 E6               [12] 4594 	mov	a,@r0
      0041CA C0 E0            [24] 4595 	push	acc
      0041CC 08               [12] 4596 	inc	r0
      0041CD E6               [12] 4597 	mov	a,@r0
      0041CE C0 E0            [24] 4598 	push	acc
      0041D0 08               [12] 4599 	inc	r0
      0041D1 E6               [12] 4600 	mov	a,@r0
      0041D2 C0 E0            [24] 4601 	push	acc
      0041D4 08               [12] 4602 	inc	r0
      0041D5 E6               [12] 4603 	mov	a,@r0
      0041D6 C0 E0            [24] 4604 	push	acc
      0041D8 8A 82            [24] 4605 	mov	dpl,r2
      0041DA 8B 83            [24] 4606 	mov	dph,r3
      0041DC 8C F0            [24] 4607 	mov	b,r4
      0041DE 12 26 B5         [24] 4608 	lcall	_stack_push
      0041E1 E5 81            [12] 4609 	mov	a,sp
      0041E3 24 FC            [12] 4610 	add	a,#0xfc
      0041E5 F5 81            [12] 4611 	mov	sp,a
                                   4612 ;	calc.c:233: break;
      0041E7 02 54 06         [24] 4613 	ljmp	00249$
                                   4614 ;	calc.c:234: case '*':
      0041EA                       4615 00167$:
                                   4616 ;	calc.c:235: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0041EA E5 08            [12] 4617 	mov	a,_bp
      0041EC 24 15            [12] 4618 	add	a,#0x15
      0041EE FF               [12] 4619 	mov	r7,a
      0041EF 7E 00            [12] 4620 	mov	r6,#0x00
      0041F1 7D 40            [12] 4621 	mov	r5,#0x40
      0041F3 E5 08            [12] 4622 	mov	a,_bp
      0041F5 24 12            [12] 4623 	add	a,#0x12
      0041F7 F8               [12] 4624 	mov	r0,a
      0041F8 E5 08            [12] 4625 	mov	a,_bp
      0041FA 24 0B            [12] 4626 	add	a,#0x0b
      0041FC F9               [12] 4627 	mov	r1,a
      0041FD 74 11            [12] 4628 	mov	a,#0x11
      0041FF 26               [12] 4629 	add	a,@r0
      004200 F7               [12] 4630 	mov	@r1,a
      004201 74 40            [12] 4631 	mov	a,#0x40
      004203 08               [12] 4632 	inc	r0
      004204 36               [12] 4633 	addc	a,@r0
      004205 09               [12] 4634 	inc	r1
      004206 F7               [12] 4635 	mov	@r1,a
      004207 08               [12] 4636 	inc	r0
      004208 09               [12] 4637 	inc	r1
      004209 E6               [12] 4638 	mov	a,@r0
      00420A F7               [12] 4639 	mov	@r1,a
      00420B E5 08            [12] 4640 	mov	a,_bp
      00420D 24 0B            [12] 4641 	add	a,#0x0b
      00420F F8               [12] 4642 	mov	r0,a
      004210 86 82            [24] 4643 	mov	dpl,@r0
      004212 08               [12] 4644 	inc	r0
      004213 86 83            [24] 4645 	mov	dph,@r0
      004215 08               [12] 4646 	inc	r0
      004216 86 F0            [24] 4647 	mov	b,@r0
      004218 12 67 7F         [24] 4648 	lcall	__gptrget
      00421B FA               [12] 4649 	mov	r2,a
      00421C A3               [24] 4650 	inc	dptr
      00421D 12 67 7F         [24] 4651 	lcall	__gptrget
      004220 FB               [12] 4652 	mov	r3,a
      004221 A3               [24] 4653 	inc	dptr
      004222 12 67 7F         [24] 4654 	lcall	__gptrget
      004225 FC               [12] 4655 	mov	r4,a
      004226 C0 07            [24] 4656 	push	ar7
      004228 C0 06            [24] 4657 	push	ar6
      00422A C0 05            [24] 4658 	push	ar5
      00422C 8A 82            [24] 4659 	mov	dpl,r2
      00422E 8B 83            [24] 4660 	mov	dph,r3
      004230 8C F0            [24] 4661 	mov	b,r4
      004232 12 27 7F         [24] 4662 	lcall	_stack_pop
      004235 AB 82            [24] 4663 	mov	r3,dpl
      004237 AC 83            [24] 4664 	mov	r4,dph
      004239 15 81            [12] 4665 	dec	sp
      00423B 15 81            [12] 4666 	dec	sp
      00423D 15 81            [12] 4667 	dec	sp
      00423F EB               [12] 4668 	mov	a,r3
      004240 4C               [12] 4669 	orl	a,r4
      004241 70 25            [24] 4670 	jnz	00172$
      004243 7F 44            [12] 4671 	mov	r7,#___str_10
      004245 7E 80            [12] 4672 	mov	r6,#(___str_10 >> 8)
      004247 7D 80            [12] 4673 	mov	r5,#0x80
                                   4674 ;	calc.c:51: return;
      004249                       4675 00436$:
                                   4676 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004249 8F 82            [24] 4677 	mov	dpl,r7
      00424B 8E 83            [24] 4678 	mov	dph,r6
      00424D 8D F0            [24] 4679 	mov	b,r5
      00424F 12 67 7F         [24] 4680 	lcall	__gptrget
      004252 FC               [12] 4681 	mov	r4,a
      004253 70 03            [24] 4682 	jnz	01336$
      004255 02 54 06         [24] 4683 	ljmp	00249$
      004258                       4684 01336$:
      004258 7B 00            [12] 4685 	mov	r3,#0x00
      00425A 8C 82            [24] 4686 	mov	dpl,r4
      00425C 8B 83            [24] 4687 	mov	dph,r3
      00425E 12 29 C0         [24] 4688 	lcall	_putchar
      004261 0F               [12] 4689 	inc	r7
                                   4690 ;	calc.c:235: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004262 BF 00 E4         [24] 4691 	cjne	r7,#0x00,00436$
      004265 0E               [12] 4692 	inc	r6
      004266 80 E1            [24] 4693 	sjmp	00436$
      004268                       4694 00172$:
                                   4695 ;	calc.c:236: else if (!stack_pop(ctx->ps, &d1)) {
      004268 E5 08            [12] 4696 	mov	a,_bp
      00426A 24 19            [12] 4697 	add	a,#0x19
      00426C FF               [12] 4698 	mov	r7,a
      00426D 7E 00            [12] 4699 	mov	r6,#0x00
      00426F 7D 40            [12] 4700 	mov	r5,#0x40
      004271 E5 08            [12] 4701 	mov	a,_bp
      004273 24 0B            [12] 4702 	add	a,#0x0b
      004275 F8               [12] 4703 	mov	r0,a
      004276 86 82            [24] 4704 	mov	dpl,@r0
      004278 08               [12] 4705 	inc	r0
      004279 86 83            [24] 4706 	mov	dph,@r0
      00427B 08               [12] 4707 	inc	r0
      00427C 86 F0            [24] 4708 	mov	b,@r0
      00427E 12 67 7F         [24] 4709 	lcall	__gptrget
      004281 FA               [12] 4710 	mov	r2,a
      004282 A3               [24] 4711 	inc	dptr
      004283 12 67 7F         [24] 4712 	lcall	__gptrget
      004286 FB               [12] 4713 	mov	r3,a
      004287 A3               [24] 4714 	inc	dptr
      004288 12 67 7F         [24] 4715 	lcall	__gptrget
      00428B FC               [12] 4716 	mov	r4,a
      00428C C0 07            [24] 4717 	push	ar7
      00428E C0 06            [24] 4718 	push	ar6
      004290 C0 05            [24] 4719 	push	ar5
      004292 8A 82            [24] 4720 	mov	dpl,r2
      004294 8B 83            [24] 4721 	mov	dph,r3
      004296 8C F0            [24] 4722 	mov	b,r4
      004298 12 27 7F         [24] 4723 	lcall	_stack_pop
      00429B AB 82            [24] 4724 	mov	r3,dpl
      00429D AC 83            [24] 4725 	mov	r4,dph
      00429F 15 81            [12] 4726 	dec	sp
      0042A1 15 81            [12] 4727 	dec	sp
      0042A3 15 81            [12] 4728 	dec	sp
      0042A5 EB               [12] 4729 	mov	a,r3
      0042A6 4C               [12] 4730 	orl	a,r4
      0042A7 70 63            [24] 4731 	jnz	00169$
                                   4732 ;	calc.c:237: (void)stack_push(ctx->ps, d0);
      0042A9 E5 08            [12] 4733 	mov	a,_bp
      0042AB 24 0B            [12] 4734 	add	a,#0x0b
      0042AD F8               [12] 4735 	mov	r0,a
      0042AE 86 82            [24] 4736 	mov	dpl,@r0
      0042B0 08               [12] 4737 	inc	r0
      0042B1 86 83            [24] 4738 	mov	dph,@r0
      0042B3 08               [12] 4739 	inc	r0
      0042B4 86 F0            [24] 4740 	mov	b,@r0
      0042B6 12 67 7F         [24] 4741 	lcall	__gptrget
      0042B9 FA               [12] 4742 	mov	r2,a
      0042BA A3               [24] 4743 	inc	dptr
      0042BB 12 67 7F         [24] 4744 	lcall	__gptrget
      0042BE FB               [12] 4745 	mov	r3,a
      0042BF A3               [24] 4746 	inc	dptr
      0042C0 12 67 7F         [24] 4747 	lcall	__gptrget
      0042C3 FC               [12] 4748 	mov	r4,a
      0042C4 E5 08            [12] 4749 	mov	a,_bp
      0042C6 24 15            [12] 4750 	add	a,#0x15
      0042C8 F8               [12] 4751 	mov	r0,a
      0042C9 E6               [12] 4752 	mov	a,@r0
      0042CA C0 E0            [24] 4753 	push	acc
      0042CC 08               [12] 4754 	inc	r0
      0042CD E6               [12] 4755 	mov	a,@r0
      0042CE C0 E0            [24] 4756 	push	acc
      0042D0 08               [12] 4757 	inc	r0
      0042D1 E6               [12] 4758 	mov	a,@r0
      0042D2 C0 E0            [24] 4759 	push	acc
      0042D4 08               [12] 4760 	inc	r0
      0042D5 E6               [12] 4761 	mov	a,@r0
      0042D6 C0 E0            [24] 4762 	push	acc
      0042D8 8A 82            [24] 4763 	mov	dpl,r2
      0042DA 8B 83            [24] 4764 	mov	dph,r3
      0042DC 8C F0            [24] 4765 	mov	b,r4
      0042DE 12 26 B5         [24] 4766 	lcall	_stack_push
      0042E1 E5 81            [12] 4767 	mov	a,sp
      0042E3 24 FC            [12] 4768 	add	a,#0xfc
      0042E5 F5 81            [12] 4769 	mov	sp,a
                                   4770 ;	calc.c:238: printstr("\r\nstack underflow\r\n");
      0042E7 7F 44            [12] 4771 	mov	r7,#___str_10
      0042E9 7E 80            [12] 4772 	mov	r6,#(___str_10 >> 8)
      0042EB 7D 80            [12] 4773 	mov	r5,#0x80
                                   4774 ;	calc.c:51: return;
      0042ED                       4775 00439$:
                                   4776 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0042ED 8F 82            [24] 4777 	mov	dpl,r7
      0042EF 8E 83            [24] 4778 	mov	dph,r6
      0042F1 8D F0            [24] 4779 	mov	b,r5
      0042F3 12 67 7F         [24] 4780 	lcall	__gptrget
      0042F6 FC               [12] 4781 	mov	r4,a
      0042F7 70 03            [24] 4782 	jnz	01339$
      0042F9 02 54 06         [24] 4783 	ljmp	00249$
      0042FC                       4784 01339$:
      0042FC 7B 00            [12] 4785 	mov	r3,#0x00
      0042FE 8C 82            [24] 4786 	mov	dpl,r4
      004300 8B 83            [24] 4787 	mov	dph,r3
      004302 12 29 C0         [24] 4788 	lcall	_putchar
      004305 0F               [12] 4789 	inc	r7
                                   4790 ;	calc.c:238: printstr("\r\nstack underflow\r\n");
      004306 BF 00 E4         [24] 4791 	cjne	r7,#0x00,00439$
      004309 0E               [12] 4792 	inc	r6
      00430A 80 E1            [24] 4793 	sjmp	00439$
      00430C                       4794 00169$:
                                   4795 ;	calc.c:240: d1 *= d0;
      00430C E5 08            [12] 4796 	mov	a,_bp
      00430E 24 15            [12] 4797 	add	a,#0x15
      004310 F8               [12] 4798 	mov	r0,a
      004311 E6               [12] 4799 	mov	a,@r0
      004312 C0 E0            [24] 4800 	push	acc
      004314 08               [12] 4801 	inc	r0
      004315 E6               [12] 4802 	mov	a,@r0
      004316 C0 E0            [24] 4803 	push	acc
      004318 08               [12] 4804 	inc	r0
      004319 E6               [12] 4805 	mov	a,@r0
      00431A C0 E0            [24] 4806 	push	acc
      00431C 08               [12] 4807 	inc	r0
      00431D E6               [12] 4808 	mov	a,@r0
      00431E C0 E0            [24] 4809 	push	acc
      004320 E5 08            [12] 4810 	mov	a,_bp
      004322 24 19            [12] 4811 	add	a,#0x19
      004324 F8               [12] 4812 	mov	r0,a
      004325 86 82            [24] 4813 	mov	dpl,@r0
      004327 08               [12] 4814 	inc	r0
      004328 86 83            [24] 4815 	mov	dph,@r0
      00432A 08               [12] 4816 	inc	r0
      00432B 86 F0            [24] 4817 	mov	b,@r0
      00432D 08               [12] 4818 	inc	r0
      00432E E6               [12] 4819 	mov	a,@r0
      00432F 12 6B 78         [24] 4820 	lcall	__mullong
      004332 AF 82            [24] 4821 	mov	r7,dpl
      004334 AE 83            [24] 4822 	mov	r6,dph
      004336 AD F0            [24] 4823 	mov	r5,b
      004338 FC               [12] 4824 	mov	r4,a
      004339 E5 81            [12] 4825 	mov	a,sp
      00433B 24 FC            [12] 4826 	add	a,#0xfc
      00433D F5 81            [12] 4827 	mov	sp,a
      00433F E5 08            [12] 4828 	mov	a,_bp
      004341 24 19            [12] 4829 	add	a,#0x19
      004343 F8               [12] 4830 	mov	r0,a
      004344 A6 07            [24] 4831 	mov	@r0,ar7
      004346 08               [12] 4832 	inc	r0
      004347 A6 06            [24] 4833 	mov	@r0,ar6
      004349 08               [12] 4834 	inc	r0
      00434A A6 05            [24] 4835 	mov	@r0,ar5
      00434C 08               [12] 4836 	inc	r0
      00434D A6 04            [24] 4837 	mov	@r0,ar4
                                   4838 ;	calc.c:241: (void)stack_push(ctx->ps, d1);
      00434F E5 08            [12] 4839 	mov	a,_bp
      004351 24 0B            [12] 4840 	add	a,#0x0b
      004353 F8               [12] 4841 	mov	r0,a
      004354 86 82            [24] 4842 	mov	dpl,@r0
      004356 08               [12] 4843 	inc	r0
      004357 86 83            [24] 4844 	mov	dph,@r0
      004359 08               [12] 4845 	inc	r0
      00435A 86 F0            [24] 4846 	mov	b,@r0
      00435C 12 67 7F         [24] 4847 	lcall	__gptrget
      00435F FA               [12] 4848 	mov	r2,a
      004360 A3               [24] 4849 	inc	dptr
      004361 12 67 7F         [24] 4850 	lcall	__gptrget
      004364 FB               [12] 4851 	mov	r3,a
      004365 A3               [24] 4852 	inc	dptr
      004366 12 67 7F         [24] 4853 	lcall	__gptrget
      004369 FC               [12] 4854 	mov	r4,a
      00436A E5 08            [12] 4855 	mov	a,_bp
      00436C 24 19            [12] 4856 	add	a,#0x19
      00436E F8               [12] 4857 	mov	r0,a
      00436F E6               [12] 4858 	mov	a,@r0
      004370 C0 E0            [24] 4859 	push	acc
      004372 08               [12] 4860 	inc	r0
      004373 E6               [12] 4861 	mov	a,@r0
      004374 C0 E0            [24] 4862 	push	acc
      004376 08               [12] 4863 	inc	r0
      004377 E6               [12] 4864 	mov	a,@r0
      004378 C0 E0            [24] 4865 	push	acc
      00437A 08               [12] 4866 	inc	r0
      00437B E6               [12] 4867 	mov	a,@r0
      00437C C0 E0            [24] 4868 	push	acc
      00437E 8A 82            [24] 4869 	mov	dpl,r2
      004380 8B 83            [24] 4870 	mov	dph,r3
      004382 8C F0            [24] 4871 	mov	b,r4
      004384 12 26 B5         [24] 4872 	lcall	_stack_push
      004387 E5 81            [12] 4873 	mov	a,sp
      004389 24 FC            [12] 4874 	add	a,#0xfc
      00438B F5 81            [12] 4875 	mov	sp,a
                                   4876 ;	calc.c:243: break;
      00438D 02 54 06         [24] 4877 	ljmp	00249$
                                   4878 ;	calc.c:245: case '\\':
      004390                       4879 00175$:
                                   4880 ;	calc.c:246: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004390 C0 05            [24] 4881 	push	ar5
      004392 C0 06            [24] 4882 	push	ar6
      004394 C0 07            [24] 4883 	push	ar7
      004396 E5 08            [12] 4884 	mov	a,_bp
      004398 24 15            [12] 4885 	add	a,#0x15
      00439A FC               [12] 4886 	mov	r4,a
      00439B 7B 00            [12] 4887 	mov	r3,#0x00
      00439D 7A 40            [12] 4888 	mov	r2,#0x40
      00439F E5 08            [12] 4889 	mov	a,_bp
      0043A1 24 12            [12] 4890 	add	a,#0x12
      0043A3 F8               [12] 4891 	mov	r0,a
      0043A4 E5 08            [12] 4892 	mov	a,_bp
      0043A6 24 0B            [12] 4893 	add	a,#0x0b
      0043A8 F9               [12] 4894 	mov	r1,a
      0043A9 74 11            [12] 4895 	mov	a,#0x11
      0043AB 26               [12] 4896 	add	a,@r0
      0043AC F7               [12] 4897 	mov	@r1,a
      0043AD 74 40            [12] 4898 	mov	a,#0x40
      0043AF 08               [12] 4899 	inc	r0
      0043B0 36               [12] 4900 	addc	a,@r0
      0043B1 09               [12] 4901 	inc	r1
      0043B2 F7               [12] 4902 	mov	@r1,a
      0043B3 08               [12] 4903 	inc	r0
      0043B4 09               [12] 4904 	inc	r1
      0043B5 E6               [12] 4905 	mov	a,@r0
      0043B6 F7               [12] 4906 	mov	@r1,a
      0043B7 E5 08            [12] 4907 	mov	a,_bp
      0043B9 24 0B            [12] 4908 	add	a,#0x0b
      0043BB F8               [12] 4909 	mov	r0,a
      0043BC 86 82            [24] 4910 	mov	dpl,@r0
      0043BE 08               [12] 4911 	inc	r0
      0043BF 86 83            [24] 4912 	mov	dph,@r0
      0043C1 08               [12] 4913 	inc	r0
      0043C2 86 F0            [24] 4914 	mov	b,@r0
      0043C4 12 67 7F         [24] 4915 	lcall	__gptrget
      0043C7 FD               [12] 4916 	mov	r5,a
      0043C8 A3               [24] 4917 	inc	dptr
      0043C9 12 67 7F         [24] 4918 	lcall	__gptrget
      0043CC FE               [12] 4919 	mov	r6,a
      0043CD A3               [24] 4920 	inc	dptr
      0043CE 12 67 7F         [24] 4921 	lcall	__gptrget
      0043D1 FF               [12] 4922 	mov	r7,a
      0043D2 C0 05            [24] 4923 	push	ar5
      0043D4 C0 04            [24] 4924 	push	ar4
      0043D6 C0 03            [24] 4925 	push	ar3
      0043D8 C0 02            [24] 4926 	push	ar2
      0043DA 8D 82            [24] 4927 	mov	dpl,r5
      0043DC 8E 83            [24] 4928 	mov	dph,r6
      0043DE 8F F0            [24] 4929 	mov	b,r7
      0043E0 12 27 7F         [24] 4930 	lcall	_stack_pop
      0043E3 AE 82            [24] 4931 	mov	r6,dpl
      0043E5 AF 83            [24] 4932 	mov	r7,dph
      0043E7 15 81            [12] 4933 	dec	sp
      0043E9 15 81            [12] 4934 	dec	sp
      0043EB 15 81            [12] 4935 	dec	sp
      0043ED D0 05            [24] 4936 	pop	ar5
      0043EF EE               [12] 4937 	mov	a,r6
      0043F0 4F               [12] 4938 	orl	a,r7
      0043F1 D0 07            [24] 4939 	pop	ar7
      0043F3 D0 06            [24] 4940 	pop	ar6
      0043F5 D0 05            [24] 4941 	pop	ar5
      0043F7 70 25            [24] 4942 	jnz	00186$
      0043F9 7F 44            [12] 4943 	mov	r7,#___str_10
      0043FB 7E 80            [12] 4944 	mov	r6,#(___str_10 >> 8)
      0043FD 7D 80            [12] 4945 	mov	r5,#0x80
                                   4946 ;	calc.c:51: return;
      0043FF                       4947 00442$:
                                   4948 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0043FF 8F 82            [24] 4949 	mov	dpl,r7
      004401 8E 83            [24] 4950 	mov	dph,r6
      004403 8D F0            [24] 4951 	mov	b,r5
      004405 12 67 7F         [24] 4952 	lcall	__gptrget
      004408 FC               [12] 4953 	mov	r4,a
      004409 70 03            [24] 4954 	jnz	01342$
      00440B 02 54 06         [24] 4955 	ljmp	00249$
      00440E                       4956 01342$:
      00440E 7B 00            [12] 4957 	mov	r3,#0x00
      004410 8C 82            [24] 4958 	mov	dpl,r4
      004412 8B 83            [24] 4959 	mov	dph,r3
      004414 12 29 C0         [24] 4960 	lcall	_putchar
      004417 0F               [12] 4961 	inc	r7
                                   4962 ;	calc.c:246: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004418 BF 00 E4         [24] 4963 	cjne	r7,#0x00,00442$
      00441B 0E               [12] 4964 	inc	r6
      00441C 80 E1            [24] 4965 	sjmp	00442$
      00441E                       4966 00186$:
                                   4967 ;	calc.c:247: else if (!stack_pop(ctx->ps, &d1)) {
      00441E C0 05            [24] 4968 	push	ar5
      004420 C0 06            [24] 4969 	push	ar6
      004422 C0 07            [24] 4970 	push	ar7
      004424 E5 08            [12] 4971 	mov	a,_bp
      004426 24 19            [12] 4972 	add	a,#0x19
      004428 FC               [12] 4973 	mov	r4,a
      004429 7B 00            [12] 4974 	mov	r3,#0x00
      00442B 7A 40            [12] 4975 	mov	r2,#0x40
      00442D E5 08            [12] 4976 	mov	a,_bp
      00442F 24 0B            [12] 4977 	add	a,#0x0b
      004431 F8               [12] 4978 	mov	r0,a
      004432 86 82            [24] 4979 	mov	dpl,@r0
      004434 08               [12] 4980 	inc	r0
      004435 86 83            [24] 4981 	mov	dph,@r0
      004437 08               [12] 4982 	inc	r0
      004438 86 F0            [24] 4983 	mov	b,@r0
      00443A 12 67 7F         [24] 4984 	lcall	__gptrget
      00443D FD               [12] 4985 	mov	r5,a
      00443E A3               [24] 4986 	inc	dptr
      00443F 12 67 7F         [24] 4987 	lcall	__gptrget
      004442 FE               [12] 4988 	mov	r6,a
      004443 A3               [24] 4989 	inc	dptr
      004444 12 67 7F         [24] 4990 	lcall	__gptrget
      004447 FF               [12] 4991 	mov	r7,a
      004448 C0 05            [24] 4992 	push	ar5
      00444A C0 04            [24] 4993 	push	ar4
      00444C C0 03            [24] 4994 	push	ar3
      00444E C0 02            [24] 4995 	push	ar2
      004450 8D 82            [24] 4996 	mov	dpl,r5
      004452 8E 83            [24] 4997 	mov	dph,r6
      004454 8F F0            [24] 4998 	mov	b,r7
      004456 12 27 7F         [24] 4999 	lcall	_stack_pop
      004459 AE 82            [24] 5000 	mov	r6,dpl
      00445B AF 83            [24] 5001 	mov	r7,dph
      00445D 15 81            [12] 5002 	dec	sp
      00445F 15 81            [12] 5003 	dec	sp
      004461 15 81            [12] 5004 	dec	sp
      004463 D0 05            [24] 5005 	pop	ar5
      004465 EE               [12] 5006 	mov	a,r6
      004466 4F               [12] 5007 	orl	a,r7
      004467 D0 07            [24] 5008 	pop	ar7
      004469 D0 06            [24] 5009 	pop	ar6
      00446B D0 05            [24] 5010 	pop	ar5
      00446D 70 63            [24] 5011 	jnz	00183$
                                   5012 ;	calc.c:248: (void)stack_push(ctx->ps, d0);
      00446F E5 08            [12] 5013 	mov	a,_bp
      004471 24 0B            [12] 5014 	add	a,#0x0b
      004473 F8               [12] 5015 	mov	r0,a
      004474 86 82            [24] 5016 	mov	dpl,@r0
      004476 08               [12] 5017 	inc	r0
      004477 86 83            [24] 5018 	mov	dph,@r0
      004479 08               [12] 5019 	inc	r0
      00447A 86 F0            [24] 5020 	mov	b,@r0
      00447C 12 67 7F         [24] 5021 	lcall	__gptrget
      00447F FA               [12] 5022 	mov	r2,a
      004480 A3               [24] 5023 	inc	dptr
      004481 12 67 7F         [24] 5024 	lcall	__gptrget
      004484 FB               [12] 5025 	mov	r3,a
      004485 A3               [24] 5026 	inc	dptr
      004486 12 67 7F         [24] 5027 	lcall	__gptrget
      004489 FC               [12] 5028 	mov	r4,a
      00448A E5 08            [12] 5029 	mov	a,_bp
      00448C 24 15            [12] 5030 	add	a,#0x15
      00448E F8               [12] 5031 	mov	r0,a
      00448F E6               [12] 5032 	mov	a,@r0
      004490 C0 E0            [24] 5033 	push	acc
      004492 08               [12] 5034 	inc	r0
      004493 E6               [12] 5035 	mov	a,@r0
      004494 C0 E0            [24] 5036 	push	acc
      004496 08               [12] 5037 	inc	r0
      004497 E6               [12] 5038 	mov	a,@r0
      004498 C0 E0            [24] 5039 	push	acc
      00449A 08               [12] 5040 	inc	r0
      00449B E6               [12] 5041 	mov	a,@r0
      00449C C0 E0            [24] 5042 	push	acc
      00449E 8A 82            [24] 5043 	mov	dpl,r2
      0044A0 8B 83            [24] 5044 	mov	dph,r3
      0044A2 8C F0            [24] 5045 	mov	b,r4
      0044A4 12 26 B5         [24] 5046 	lcall	_stack_push
      0044A7 E5 81            [12] 5047 	mov	a,sp
      0044A9 24 FC            [12] 5048 	add	a,#0xfc
      0044AB F5 81            [12] 5049 	mov	sp,a
                                   5050 ;	calc.c:249: printstr("\r\nstack underflow\r\n");
      0044AD 7F 44            [12] 5051 	mov	r7,#___str_10
      0044AF 7E 80            [12] 5052 	mov	r6,#(___str_10 >> 8)
      0044B1 7D 80            [12] 5053 	mov	r5,#0x80
                                   5054 ;	calc.c:51: return;
      0044B3                       5055 00445$:
                                   5056 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0044B3 8F 82            [24] 5057 	mov	dpl,r7
      0044B5 8E 83            [24] 5058 	mov	dph,r6
      0044B7 8D F0            [24] 5059 	mov	b,r5
      0044B9 12 67 7F         [24] 5060 	lcall	__gptrget
      0044BC FC               [12] 5061 	mov	r4,a
      0044BD 70 03            [24] 5062 	jnz	01345$
      0044BF 02 54 06         [24] 5063 	ljmp	00249$
      0044C2                       5064 01345$:
      0044C2 7B 00            [12] 5065 	mov	r3,#0x00
      0044C4 8C 82            [24] 5066 	mov	dpl,r4
      0044C6 8B 83            [24] 5067 	mov	dph,r3
      0044C8 12 29 C0         [24] 5068 	lcall	_putchar
      0044CB 0F               [12] 5069 	inc	r7
                                   5070 ;	calc.c:249: printstr("\r\nstack underflow\r\n");
      0044CC BF 00 E4         [24] 5071 	cjne	r7,#0x00,00445$
      0044CF 0E               [12] 5072 	inc	r6
      0044D0 80 E1            [24] 5073 	sjmp	00445$
      0044D2                       5074 00183$:
                                   5075 ;	calc.c:250: } else if (!d0) {
      0044D2 E5 08            [12] 5076 	mov	a,_bp
      0044D4 24 15            [12] 5077 	add	a,#0x15
      0044D6 F8               [12] 5078 	mov	r0,a
      0044D7 E6               [12] 5079 	mov	a,@r0
      0044D8 08               [12] 5080 	inc	r0
      0044D9 46               [12] 5081 	orl	a,@r0
      0044DA 08               [12] 5082 	inc	r0
      0044DB 46               [12] 5083 	orl	a,@r0
      0044DC 08               [12] 5084 	inc	r0
      0044DD 46               [12] 5085 	orl	a,@r0
      0044DE 60 03            [24] 5086 	jz	01347$
      0044E0 02 45 84         [24] 5087 	ljmp	00180$
      0044E3                       5088 01347$:
                                   5089 ;	calc.c:251: (void)stack_push(ctx->ps, d1);
      0044E3 E5 08            [12] 5090 	mov	a,_bp
      0044E5 24 0B            [12] 5091 	add	a,#0x0b
      0044E7 F8               [12] 5092 	mov	r0,a
      0044E8 86 82            [24] 5093 	mov	dpl,@r0
      0044EA 08               [12] 5094 	inc	r0
      0044EB 86 83            [24] 5095 	mov	dph,@r0
      0044ED 08               [12] 5096 	inc	r0
      0044EE 86 F0            [24] 5097 	mov	b,@r0
      0044F0 12 67 7F         [24] 5098 	lcall	__gptrget
      0044F3 FA               [12] 5099 	mov	r2,a
      0044F4 A3               [24] 5100 	inc	dptr
      0044F5 12 67 7F         [24] 5101 	lcall	__gptrget
      0044F8 FB               [12] 5102 	mov	r3,a
      0044F9 A3               [24] 5103 	inc	dptr
      0044FA 12 67 7F         [24] 5104 	lcall	__gptrget
      0044FD FC               [12] 5105 	mov	r4,a
      0044FE E5 08            [12] 5106 	mov	a,_bp
      004500 24 19            [12] 5107 	add	a,#0x19
      004502 F8               [12] 5108 	mov	r0,a
      004503 E6               [12] 5109 	mov	a,@r0
      004504 C0 E0            [24] 5110 	push	acc
      004506 08               [12] 5111 	inc	r0
      004507 E6               [12] 5112 	mov	a,@r0
      004508 C0 E0            [24] 5113 	push	acc
      00450A 08               [12] 5114 	inc	r0
      00450B E6               [12] 5115 	mov	a,@r0
      00450C C0 E0            [24] 5116 	push	acc
      00450E 08               [12] 5117 	inc	r0
      00450F E6               [12] 5118 	mov	a,@r0
      004510 C0 E0            [24] 5119 	push	acc
      004512 8A 82            [24] 5120 	mov	dpl,r2
      004514 8B 83            [24] 5121 	mov	dph,r3
      004516 8C F0            [24] 5122 	mov	b,r4
      004518 12 26 B5         [24] 5123 	lcall	_stack_push
      00451B E5 81            [12] 5124 	mov	a,sp
      00451D 24 FC            [12] 5125 	add	a,#0xfc
      00451F F5 81            [12] 5126 	mov	sp,a
                                   5127 ;	calc.c:252: (void)stack_push(ctx->ps, d0);			
      004521 E5 08            [12] 5128 	mov	a,_bp
      004523 24 0B            [12] 5129 	add	a,#0x0b
      004525 F8               [12] 5130 	mov	r0,a
      004526 86 82            [24] 5131 	mov	dpl,@r0
      004528 08               [12] 5132 	inc	r0
      004529 86 83            [24] 5133 	mov	dph,@r0
      00452B 08               [12] 5134 	inc	r0
      00452C 86 F0            [24] 5135 	mov	b,@r0
      00452E 12 67 7F         [24] 5136 	lcall	__gptrget
      004531 FA               [12] 5137 	mov	r2,a
      004532 A3               [24] 5138 	inc	dptr
      004533 12 67 7F         [24] 5139 	lcall	__gptrget
      004536 FB               [12] 5140 	mov	r3,a
      004537 A3               [24] 5141 	inc	dptr
      004538 12 67 7F         [24] 5142 	lcall	__gptrget
      00453B FC               [12] 5143 	mov	r4,a
      00453C E5 08            [12] 5144 	mov	a,_bp
      00453E 24 15            [12] 5145 	add	a,#0x15
      004540 F8               [12] 5146 	mov	r0,a
      004541 E6               [12] 5147 	mov	a,@r0
      004542 C0 E0            [24] 5148 	push	acc
      004544 08               [12] 5149 	inc	r0
      004545 E6               [12] 5150 	mov	a,@r0
      004546 C0 E0            [24] 5151 	push	acc
      004548 08               [12] 5152 	inc	r0
      004549 E6               [12] 5153 	mov	a,@r0
      00454A C0 E0            [24] 5154 	push	acc
      00454C 08               [12] 5155 	inc	r0
      00454D E6               [12] 5156 	mov	a,@r0
      00454E C0 E0            [24] 5157 	push	acc
      004550 8A 82            [24] 5158 	mov	dpl,r2
      004552 8B 83            [24] 5159 	mov	dph,r3
      004554 8C F0            [24] 5160 	mov	b,r4
      004556 12 26 B5         [24] 5161 	lcall	_stack_push
      004559 E5 81            [12] 5162 	mov	a,sp
      00455B 24 FC            [12] 5163 	add	a,#0xfc
      00455D F5 81            [12] 5164 	mov	sp,a
                                   5165 ;	calc.c:253: printstr("\r\ndivision by zero\r\n");
      00455F 7F A6            [12] 5166 	mov	r7,#___str_14
      004561 7E 80            [12] 5167 	mov	r6,#(___str_14 >> 8)
      004563 7D 80            [12] 5168 	mov	r5,#0x80
                                   5169 ;	calc.c:51: return;
      004565                       5170 00448$:
                                   5171 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004565 8F 82            [24] 5172 	mov	dpl,r7
      004567 8E 83            [24] 5173 	mov	dph,r6
      004569 8D F0            [24] 5174 	mov	b,r5
      00456B 12 67 7F         [24] 5175 	lcall	__gptrget
      00456E FC               [12] 5176 	mov	r4,a
      00456F 70 03            [24] 5177 	jnz	01348$
      004571 02 54 06         [24] 5178 	ljmp	00249$
      004574                       5179 01348$:
      004574 7B 00            [12] 5180 	mov	r3,#0x00
      004576 8C 82            [24] 5181 	mov	dpl,r4
      004578 8B 83            [24] 5182 	mov	dph,r3
      00457A 12 29 C0         [24] 5183 	lcall	_putchar
      00457D 0F               [12] 5184 	inc	r7
                                   5185 ;	calc.c:253: printstr("\r\ndivision by zero\r\n");
      00457E BF 00 E4         [24] 5186 	cjne	r7,#0x00,00448$
      004581 0E               [12] 5187 	inc	r6
      004582 80 E1            [24] 5188 	sjmp	00448$
      004584                       5189 00180$:
                                   5190 ;	calc.c:255: if (ctx->digit[0] == '/') d1 /= d0;
      004584 8D 82            [24] 5191 	mov	dpl,r5
      004586 8E 83            [24] 5192 	mov	dph,r6
      004588 8F F0            [24] 5193 	mov	b,r7
      00458A 12 67 7F         [24] 5194 	lcall	__gptrget
      00458D FC               [12] 5195 	mov	r4,a
      00458E BC 2F 45         [24] 5196 	cjne	r4,#0x2f,00177$
      004591 E5 08            [12] 5197 	mov	a,_bp
      004593 24 15            [12] 5198 	add	a,#0x15
      004595 F8               [12] 5199 	mov	r0,a
      004596 E6               [12] 5200 	mov	a,@r0
      004597 C0 E0            [24] 5201 	push	acc
      004599 08               [12] 5202 	inc	r0
      00459A E6               [12] 5203 	mov	a,@r0
      00459B C0 E0            [24] 5204 	push	acc
      00459D 08               [12] 5205 	inc	r0
      00459E E6               [12] 5206 	mov	a,@r0
      00459F C0 E0            [24] 5207 	push	acc
      0045A1 08               [12] 5208 	inc	r0
      0045A2 E6               [12] 5209 	mov	a,@r0
      0045A3 C0 E0            [24] 5210 	push	acc
      0045A5 E5 08            [12] 5211 	mov	a,_bp
      0045A7 24 19            [12] 5212 	add	a,#0x19
      0045A9 F8               [12] 5213 	mov	r0,a
      0045AA 86 82            [24] 5214 	mov	dpl,@r0
      0045AC 08               [12] 5215 	inc	r0
      0045AD 86 83            [24] 5216 	mov	dph,@r0
      0045AF 08               [12] 5217 	inc	r0
      0045B0 86 F0            [24] 5218 	mov	b,@r0
      0045B2 08               [12] 5219 	inc	r0
      0045B3 E6               [12] 5220 	mov	a,@r0
      0045B4 12 65 76         [24] 5221 	lcall	__divslong
      0045B7 AF 82            [24] 5222 	mov	r7,dpl
      0045B9 AE 83            [24] 5223 	mov	r6,dph
      0045BB AD F0            [24] 5224 	mov	r5,b
      0045BD FC               [12] 5225 	mov	r4,a
      0045BE E5 81            [12] 5226 	mov	a,sp
      0045C0 24 FC            [12] 5227 	add	a,#0xfc
      0045C2 F5 81            [12] 5228 	mov	sp,a
      0045C4 E5 08            [12] 5229 	mov	a,_bp
      0045C6 24 19            [12] 5230 	add	a,#0x19
      0045C8 F8               [12] 5231 	mov	r0,a
      0045C9 A6 07            [24] 5232 	mov	@r0,ar7
      0045CB 08               [12] 5233 	inc	r0
      0045CC A6 06            [24] 5234 	mov	@r0,ar6
      0045CE 08               [12] 5235 	inc	r0
      0045CF A6 05            [24] 5236 	mov	@r0,ar5
      0045D1 08               [12] 5237 	inc	r0
      0045D2 A6 04            [24] 5238 	mov	@r0,ar4
      0045D4 80 63            [24] 5239 	sjmp	00178$
      0045D6                       5240 00177$:
                                   5241 ;	calc.c:256: else d1 = (unsigned long)d1 / (unsigned long)d0;
      0045D6 E5 08            [12] 5242 	mov	a,_bp
      0045D8 24 19            [12] 5243 	add	a,#0x19
      0045DA F8               [12] 5244 	mov	r0,a
      0045DB 86 07            [24] 5245 	mov	ar7,@r0
      0045DD 08               [12] 5246 	inc	r0
      0045DE 86 06            [24] 5247 	mov	ar6,@r0
      0045E0 08               [12] 5248 	inc	r0
      0045E1 86 05            [24] 5249 	mov	ar5,@r0
      0045E3 08               [12] 5250 	inc	r0
      0045E4 86 04            [24] 5251 	mov	ar4,@r0
      0045E6 E5 08            [12] 5252 	mov	a,_bp
      0045E8 24 15            [12] 5253 	add	a,#0x15
      0045EA F8               [12] 5254 	mov	r0,a
      0045EB E5 08            [12] 5255 	mov	a,_bp
      0045ED 24 0E            [12] 5256 	add	a,#0x0e
      0045EF F9               [12] 5257 	mov	r1,a
      0045F0 E6               [12] 5258 	mov	a,@r0
      0045F1 F7               [12] 5259 	mov	@r1,a
      0045F2 08               [12] 5260 	inc	r0
      0045F3 09               [12] 5261 	inc	r1
      0045F4 E6               [12] 5262 	mov	a,@r0
      0045F5 F7               [12] 5263 	mov	@r1,a
      0045F6 08               [12] 5264 	inc	r0
      0045F7 09               [12] 5265 	inc	r1
      0045F8 E6               [12] 5266 	mov	a,@r0
      0045F9 F7               [12] 5267 	mov	@r1,a
      0045FA 08               [12] 5268 	inc	r0
      0045FB 09               [12] 5269 	inc	r1
      0045FC E6               [12] 5270 	mov	a,@r0
      0045FD F7               [12] 5271 	mov	@r1,a
      0045FE E5 08            [12] 5272 	mov	a,_bp
      004600 24 0E            [12] 5273 	add	a,#0x0e
      004602 F8               [12] 5274 	mov	r0,a
      004603 E6               [12] 5275 	mov	a,@r0
      004604 C0 E0            [24] 5276 	push	acc
      004606 08               [12] 5277 	inc	r0
      004607 E6               [12] 5278 	mov	a,@r0
      004608 C0 E0            [24] 5279 	push	acc
      00460A 08               [12] 5280 	inc	r0
      00460B E6               [12] 5281 	mov	a,@r0
      00460C C0 E0            [24] 5282 	push	acc
      00460E 08               [12] 5283 	inc	r0
      00460F E6               [12] 5284 	mov	a,@r0
      004610 C0 E0            [24] 5285 	push	acc
      004612 8F 82            [24] 5286 	mov	dpl,r7
      004614 8E 83            [24] 5287 	mov	dph,r6
      004616 8D F0            [24] 5288 	mov	b,r5
      004618 EC               [12] 5289 	mov	a,r4
      004619 12 66 73         [24] 5290 	lcall	__divulong
      00461C AF 82            [24] 5291 	mov	r7,dpl
      00461E AE 83            [24] 5292 	mov	r6,dph
      004620 AD F0            [24] 5293 	mov	r5,b
      004622 FC               [12] 5294 	mov	r4,a
      004623 E5 81            [12] 5295 	mov	a,sp
      004625 24 FC            [12] 5296 	add	a,#0xfc
      004627 F5 81            [12] 5297 	mov	sp,a
      004629 E5 08            [12] 5298 	mov	a,_bp
      00462B 24 19            [12] 5299 	add	a,#0x19
      00462D F8               [12] 5300 	mov	r0,a
      00462E A6 07            [24] 5301 	mov	@r0,ar7
      004630 08               [12] 5302 	inc	r0
      004631 A6 06            [24] 5303 	mov	@r0,ar6
      004633 08               [12] 5304 	inc	r0
      004634 A6 05            [24] 5305 	mov	@r0,ar5
      004636 08               [12] 5306 	inc	r0
      004637 A6 04            [24] 5307 	mov	@r0,ar4
      004639                       5308 00178$:
                                   5309 ;	calc.c:257: (void)stack_push(ctx->ps, d1);
      004639 E5 08            [12] 5310 	mov	a,_bp
      00463B 24 0B            [12] 5311 	add	a,#0x0b
      00463D F8               [12] 5312 	mov	r0,a
      00463E 86 82            [24] 5313 	mov	dpl,@r0
      004640 08               [12] 5314 	inc	r0
      004641 86 83            [24] 5315 	mov	dph,@r0
      004643 08               [12] 5316 	inc	r0
      004644 86 F0            [24] 5317 	mov	b,@r0
      004646 12 67 7F         [24] 5318 	lcall	__gptrget
      004649 FA               [12] 5319 	mov	r2,a
      00464A A3               [24] 5320 	inc	dptr
      00464B 12 67 7F         [24] 5321 	lcall	__gptrget
      00464E FB               [12] 5322 	mov	r3,a
      00464F A3               [24] 5323 	inc	dptr
      004650 12 67 7F         [24] 5324 	lcall	__gptrget
      004653 FC               [12] 5325 	mov	r4,a
      004654 E5 08            [12] 5326 	mov	a,_bp
      004656 24 19            [12] 5327 	add	a,#0x19
      004658 F8               [12] 5328 	mov	r0,a
      004659 E6               [12] 5329 	mov	a,@r0
      00465A C0 E0            [24] 5330 	push	acc
      00465C 08               [12] 5331 	inc	r0
      00465D E6               [12] 5332 	mov	a,@r0
      00465E C0 E0            [24] 5333 	push	acc
      004660 08               [12] 5334 	inc	r0
      004661 E6               [12] 5335 	mov	a,@r0
      004662 C0 E0            [24] 5336 	push	acc
      004664 08               [12] 5337 	inc	r0
      004665 E6               [12] 5338 	mov	a,@r0
      004666 C0 E0            [24] 5339 	push	acc
      004668 8A 82            [24] 5340 	mov	dpl,r2
      00466A 8B 83            [24] 5341 	mov	dph,r3
      00466C 8C F0            [24] 5342 	mov	b,r4
      00466E 12 26 B5         [24] 5343 	lcall	_stack_push
      004671 E5 81            [12] 5344 	mov	a,sp
      004673 24 FC            [12] 5345 	add	a,#0xfc
      004675 F5 81            [12] 5346 	mov	sp,a
                                   5347 ;	calc.c:259: break;
      004677 02 54 06         [24] 5348 	ljmp	00249$
                                   5349 ;	calc.c:261: case '#':
      00467A                       5350 00189$:
                                   5351 ;	calc.c:262: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00467A C0 05            [24] 5352 	push	ar5
      00467C C0 06            [24] 5353 	push	ar6
      00467E C0 07            [24] 5354 	push	ar7
      004680 E5 08            [12] 5355 	mov	a,_bp
      004682 24 15            [12] 5356 	add	a,#0x15
      004684 FC               [12] 5357 	mov	r4,a
      004685 7B 00            [12] 5358 	mov	r3,#0x00
      004687 7A 40            [12] 5359 	mov	r2,#0x40
      004689 E5 08            [12] 5360 	mov	a,_bp
      00468B 24 12            [12] 5361 	add	a,#0x12
      00468D F8               [12] 5362 	mov	r0,a
      00468E E5 08            [12] 5363 	mov	a,_bp
      004690 24 0E            [12] 5364 	add	a,#0x0e
      004692 F9               [12] 5365 	mov	r1,a
      004693 74 11            [12] 5366 	mov	a,#0x11
      004695 26               [12] 5367 	add	a,@r0
      004696 F7               [12] 5368 	mov	@r1,a
      004697 74 40            [12] 5369 	mov	a,#0x40
      004699 08               [12] 5370 	inc	r0
      00469A 36               [12] 5371 	addc	a,@r0
      00469B 09               [12] 5372 	inc	r1
      00469C F7               [12] 5373 	mov	@r1,a
      00469D 08               [12] 5374 	inc	r0
      00469E 09               [12] 5375 	inc	r1
      00469F E6               [12] 5376 	mov	a,@r0
      0046A0 F7               [12] 5377 	mov	@r1,a
      0046A1 E5 08            [12] 5378 	mov	a,_bp
      0046A3 24 0E            [12] 5379 	add	a,#0x0e
      0046A5 F8               [12] 5380 	mov	r0,a
      0046A6 86 82            [24] 5381 	mov	dpl,@r0
      0046A8 08               [12] 5382 	inc	r0
      0046A9 86 83            [24] 5383 	mov	dph,@r0
      0046AB 08               [12] 5384 	inc	r0
      0046AC 86 F0            [24] 5385 	mov	b,@r0
      0046AE 12 67 7F         [24] 5386 	lcall	__gptrget
      0046B1 FD               [12] 5387 	mov	r5,a
      0046B2 A3               [24] 5388 	inc	dptr
      0046B3 12 67 7F         [24] 5389 	lcall	__gptrget
      0046B6 FE               [12] 5390 	mov	r6,a
      0046B7 A3               [24] 5391 	inc	dptr
      0046B8 12 67 7F         [24] 5392 	lcall	__gptrget
      0046BB FF               [12] 5393 	mov	r7,a
      0046BC C0 05            [24] 5394 	push	ar5
      0046BE C0 04            [24] 5395 	push	ar4
      0046C0 C0 03            [24] 5396 	push	ar3
      0046C2 C0 02            [24] 5397 	push	ar2
      0046C4 8D 82            [24] 5398 	mov	dpl,r5
      0046C6 8E 83            [24] 5399 	mov	dph,r6
      0046C8 8F F0            [24] 5400 	mov	b,r7
      0046CA 12 27 7F         [24] 5401 	lcall	_stack_pop
      0046CD AE 82            [24] 5402 	mov	r6,dpl
      0046CF AF 83            [24] 5403 	mov	r7,dph
      0046D1 15 81            [12] 5404 	dec	sp
      0046D3 15 81            [12] 5405 	dec	sp
      0046D5 15 81            [12] 5406 	dec	sp
      0046D7 D0 05            [24] 5407 	pop	ar5
      0046D9 EE               [12] 5408 	mov	a,r6
      0046DA 4F               [12] 5409 	orl	a,r7
      0046DB D0 07            [24] 5410 	pop	ar7
      0046DD D0 06            [24] 5411 	pop	ar6
      0046DF D0 05            [24] 5412 	pop	ar5
      0046E1 70 25            [24] 5413 	jnz	00200$
      0046E3 7F 44            [12] 5414 	mov	r7,#___str_10
      0046E5 7E 80            [12] 5415 	mov	r6,#(___str_10 >> 8)
      0046E7 7D 80            [12] 5416 	mov	r5,#0x80
                                   5417 ;	calc.c:51: return;
      0046E9                       5418 00451$:
                                   5419 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0046E9 8F 82            [24] 5420 	mov	dpl,r7
      0046EB 8E 83            [24] 5421 	mov	dph,r6
      0046ED 8D F0            [24] 5422 	mov	b,r5
      0046EF 12 67 7F         [24] 5423 	lcall	__gptrget
      0046F2 FC               [12] 5424 	mov	r4,a
      0046F3 70 03            [24] 5425 	jnz	01353$
      0046F5 02 54 06         [24] 5426 	ljmp	00249$
      0046F8                       5427 01353$:
      0046F8 7B 00            [12] 5428 	mov	r3,#0x00
      0046FA 8C 82            [24] 5429 	mov	dpl,r4
      0046FC 8B 83            [24] 5430 	mov	dph,r3
      0046FE 12 29 C0         [24] 5431 	lcall	_putchar
      004701 0F               [12] 5432 	inc	r7
                                   5433 ;	calc.c:262: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004702 BF 00 E4         [24] 5434 	cjne	r7,#0x00,00451$
      004705 0E               [12] 5435 	inc	r6
      004706 80 E1            [24] 5436 	sjmp	00451$
      004708                       5437 00200$:
                                   5438 ;	calc.c:263: else if (!stack_pop(ctx->ps, &d1)) {
      004708 C0 05            [24] 5439 	push	ar5
      00470A C0 06            [24] 5440 	push	ar6
      00470C C0 07            [24] 5441 	push	ar7
      00470E E5 08            [12] 5442 	mov	a,_bp
      004710 24 19            [12] 5443 	add	a,#0x19
      004712 FC               [12] 5444 	mov	r4,a
      004713 7B 00            [12] 5445 	mov	r3,#0x00
      004715 7A 40            [12] 5446 	mov	r2,#0x40
      004717 E5 08            [12] 5447 	mov	a,_bp
      004719 24 0E            [12] 5448 	add	a,#0x0e
      00471B F8               [12] 5449 	mov	r0,a
      00471C 86 82            [24] 5450 	mov	dpl,@r0
      00471E 08               [12] 5451 	inc	r0
      00471F 86 83            [24] 5452 	mov	dph,@r0
      004721 08               [12] 5453 	inc	r0
      004722 86 F0            [24] 5454 	mov	b,@r0
      004724 12 67 7F         [24] 5455 	lcall	__gptrget
      004727 FD               [12] 5456 	mov	r5,a
      004728 A3               [24] 5457 	inc	dptr
      004729 12 67 7F         [24] 5458 	lcall	__gptrget
      00472C FE               [12] 5459 	mov	r6,a
      00472D A3               [24] 5460 	inc	dptr
      00472E 12 67 7F         [24] 5461 	lcall	__gptrget
      004731 FF               [12] 5462 	mov	r7,a
      004732 C0 05            [24] 5463 	push	ar5
      004734 C0 04            [24] 5464 	push	ar4
      004736 C0 03            [24] 5465 	push	ar3
      004738 C0 02            [24] 5466 	push	ar2
      00473A 8D 82            [24] 5467 	mov	dpl,r5
      00473C 8E 83            [24] 5468 	mov	dph,r6
      00473E 8F F0            [24] 5469 	mov	b,r7
      004740 12 27 7F         [24] 5470 	lcall	_stack_pop
      004743 AE 82            [24] 5471 	mov	r6,dpl
      004745 AF 83            [24] 5472 	mov	r7,dph
      004747 15 81            [12] 5473 	dec	sp
      004749 15 81            [12] 5474 	dec	sp
      00474B 15 81            [12] 5475 	dec	sp
      00474D D0 05            [24] 5476 	pop	ar5
      00474F EE               [12] 5477 	mov	a,r6
      004750 4F               [12] 5478 	orl	a,r7
      004751 D0 07            [24] 5479 	pop	ar7
      004753 D0 06            [24] 5480 	pop	ar6
      004755 D0 05            [24] 5481 	pop	ar5
      004757 70 63            [24] 5482 	jnz	00197$
                                   5483 ;	calc.c:264: (void)stack_push(ctx->ps, d0);
      004759 E5 08            [12] 5484 	mov	a,_bp
      00475B 24 0E            [12] 5485 	add	a,#0x0e
      00475D F8               [12] 5486 	mov	r0,a
      00475E 86 82            [24] 5487 	mov	dpl,@r0
      004760 08               [12] 5488 	inc	r0
      004761 86 83            [24] 5489 	mov	dph,@r0
      004763 08               [12] 5490 	inc	r0
      004764 86 F0            [24] 5491 	mov	b,@r0
      004766 12 67 7F         [24] 5492 	lcall	__gptrget
      004769 FA               [12] 5493 	mov	r2,a
      00476A A3               [24] 5494 	inc	dptr
      00476B 12 67 7F         [24] 5495 	lcall	__gptrget
      00476E FB               [12] 5496 	mov	r3,a
      00476F A3               [24] 5497 	inc	dptr
      004770 12 67 7F         [24] 5498 	lcall	__gptrget
      004773 FC               [12] 5499 	mov	r4,a
      004774 E5 08            [12] 5500 	mov	a,_bp
      004776 24 15            [12] 5501 	add	a,#0x15
      004778 F8               [12] 5502 	mov	r0,a
      004779 E6               [12] 5503 	mov	a,@r0
      00477A C0 E0            [24] 5504 	push	acc
      00477C 08               [12] 5505 	inc	r0
      00477D E6               [12] 5506 	mov	a,@r0
      00477E C0 E0            [24] 5507 	push	acc
      004780 08               [12] 5508 	inc	r0
      004781 E6               [12] 5509 	mov	a,@r0
      004782 C0 E0            [24] 5510 	push	acc
      004784 08               [12] 5511 	inc	r0
      004785 E6               [12] 5512 	mov	a,@r0
      004786 C0 E0            [24] 5513 	push	acc
      004788 8A 82            [24] 5514 	mov	dpl,r2
      00478A 8B 83            [24] 5515 	mov	dph,r3
      00478C 8C F0            [24] 5516 	mov	b,r4
      00478E 12 26 B5         [24] 5517 	lcall	_stack_push
      004791 E5 81            [12] 5518 	mov	a,sp
      004793 24 FC            [12] 5519 	add	a,#0xfc
      004795 F5 81            [12] 5520 	mov	sp,a
                                   5521 ;	calc.c:265: printstr("\r\nstack underflow\r\n");
      004797 7F 44            [12] 5522 	mov	r7,#___str_10
      004799 7E 80            [12] 5523 	mov	r6,#(___str_10 >> 8)
      00479B 7D 80            [12] 5524 	mov	r5,#0x80
                                   5525 ;	calc.c:51: return;
      00479D                       5526 00454$:
                                   5527 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00479D 8F 82            [24] 5528 	mov	dpl,r7
      00479F 8E 83            [24] 5529 	mov	dph,r6
      0047A1 8D F0            [24] 5530 	mov	b,r5
      0047A3 12 67 7F         [24] 5531 	lcall	__gptrget
      0047A6 FC               [12] 5532 	mov	r4,a
      0047A7 70 03            [24] 5533 	jnz	01356$
      0047A9 02 54 06         [24] 5534 	ljmp	00249$
      0047AC                       5535 01356$:
      0047AC 7B 00            [12] 5536 	mov	r3,#0x00
      0047AE 8C 82            [24] 5537 	mov	dpl,r4
      0047B0 8B 83            [24] 5538 	mov	dph,r3
      0047B2 12 29 C0         [24] 5539 	lcall	_putchar
      0047B5 0F               [12] 5540 	inc	r7
                                   5541 ;	calc.c:265: printstr("\r\nstack underflow\r\n");
      0047B6 BF 00 E4         [24] 5542 	cjne	r7,#0x00,00454$
      0047B9 0E               [12] 5543 	inc	r6
      0047BA 80 E1            [24] 5544 	sjmp	00454$
      0047BC                       5545 00197$:
                                   5546 ;	calc.c:266: } else if (!d0) {
      0047BC E5 08            [12] 5547 	mov	a,_bp
      0047BE 24 15            [12] 5548 	add	a,#0x15
      0047C0 F8               [12] 5549 	mov	r0,a
      0047C1 E6               [12] 5550 	mov	a,@r0
      0047C2 08               [12] 5551 	inc	r0
      0047C3 46               [12] 5552 	orl	a,@r0
      0047C4 08               [12] 5553 	inc	r0
      0047C5 46               [12] 5554 	orl	a,@r0
      0047C6 08               [12] 5555 	inc	r0
      0047C7 46               [12] 5556 	orl	a,@r0
      0047C8 60 03            [24] 5557 	jz	01358$
      0047CA 02 48 6E         [24] 5558 	ljmp	00194$
      0047CD                       5559 01358$:
                                   5560 ;	calc.c:267: (void)stack_push(ctx->ps, d1);
      0047CD E5 08            [12] 5561 	mov	a,_bp
      0047CF 24 0E            [12] 5562 	add	a,#0x0e
      0047D1 F8               [12] 5563 	mov	r0,a
      0047D2 86 82            [24] 5564 	mov	dpl,@r0
      0047D4 08               [12] 5565 	inc	r0
      0047D5 86 83            [24] 5566 	mov	dph,@r0
      0047D7 08               [12] 5567 	inc	r0
      0047D8 86 F0            [24] 5568 	mov	b,@r0
      0047DA 12 67 7F         [24] 5569 	lcall	__gptrget
      0047DD FA               [12] 5570 	mov	r2,a
      0047DE A3               [24] 5571 	inc	dptr
      0047DF 12 67 7F         [24] 5572 	lcall	__gptrget
      0047E2 FB               [12] 5573 	mov	r3,a
      0047E3 A3               [24] 5574 	inc	dptr
      0047E4 12 67 7F         [24] 5575 	lcall	__gptrget
      0047E7 FC               [12] 5576 	mov	r4,a
      0047E8 E5 08            [12] 5577 	mov	a,_bp
      0047EA 24 19            [12] 5578 	add	a,#0x19
      0047EC F8               [12] 5579 	mov	r0,a
      0047ED E6               [12] 5580 	mov	a,@r0
      0047EE C0 E0            [24] 5581 	push	acc
      0047F0 08               [12] 5582 	inc	r0
      0047F1 E6               [12] 5583 	mov	a,@r0
      0047F2 C0 E0            [24] 5584 	push	acc
      0047F4 08               [12] 5585 	inc	r0
      0047F5 E6               [12] 5586 	mov	a,@r0
      0047F6 C0 E0            [24] 5587 	push	acc
      0047F8 08               [12] 5588 	inc	r0
      0047F9 E6               [12] 5589 	mov	a,@r0
      0047FA C0 E0            [24] 5590 	push	acc
      0047FC 8A 82            [24] 5591 	mov	dpl,r2
      0047FE 8B 83            [24] 5592 	mov	dph,r3
      004800 8C F0            [24] 5593 	mov	b,r4
      004802 12 26 B5         [24] 5594 	lcall	_stack_push
      004805 E5 81            [12] 5595 	mov	a,sp
      004807 24 FC            [12] 5596 	add	a,#0xfc
      004809 F5 81            [12] 5597 	mov	sp,a
                                   5598 ;	calc.c:268: (void)stack_push(ctx->ps, d0);			
      00480B E5 08            [12] 5599 	mov	a,_bp
      00480D 24 0E            [12] 5600 	add	a,#0x0e
      00480F F8               [12] 5601 	mov	r0,a
      004810 86 82            [24] 5602 	mov	dpl,@r0
      004812 08               [12] 5603 	inc	r0
      004813 86 83            [24] 5604 	mov	dph,@r0
      004815 08               [12] 5605 	inc	r0
      004816 86 F0            [24] 5606 	mov	b,@r0
      004818 12 67 7F         [24] 5607 	lcall	__gptrget
      00481B FA               [12] 5608 	mov	r2,a
      00481C A3               [24] 5609 	inc	dptr
      00481D 12 67 7F         [24] 5610 	lcall	__gptrget
      004820 FB               [12] 5611 	mov	r3,a
      004821 A3               [24] 5612 	inc	dptr
      004822 12 67 7F         [24] 5613 	lcall	__gptrget
      004825 FC               [12] 5614 	mov	r4,a
      004826 E5 08            [12] 5615 	mov	a,_bp
      004828 24 15            [12] 5616 	add	a,#0x15
      00482A F8               [12] 5617 	mov	r0,a
      00482B E6               [12] 5618 	mov	a,@r0
      00482C C0 E0            [24] 5619 	push	acc
      00482E 08               [12] 5620 	inc	r0
      00482F E6               [12] 5621 	mov	a,@r0
      004830 C0 E0            [24] 5622 	push	acc
      004832 08               [12] 5623 	inc	r0
      004833 E6               [12] 5624 	mov	a,@r0
      004834 C0 E0            [24] 5625 	push	acc
      004836 08               [12] 5626 	inc	r0
      004837 E6               [12] 5627 	mov	a,@r0
      004838 C0 E0            [24] 5628 	push	acc
      00483A 8A 82            [24] 5629 	mov	dpl,r2
      00483C 8B 83            [24] 5630 	mov	dph,r3
      00483E 8C F0            [24] 5631 	mov	b,r4
      004840 12 26 B5         [24] 5632 	lcall	_stack_push
      004843 E5 81            [12] 5633 	mov	a,sp
      004845 24 FC            [12] 5634 	add	a,#0xfc
      004847 F5 81            [12] 5635 	mov	sp,a
                                   5636 ;	calc.c:269: printstr("\r\ndivision by zero\r\n");
      004849 7F A6            [12] 5637 	mov	r7,#___str_14
      00484B 7E 80            [12] 5638 	mov	r6,#(___str_14 >> 8)
      00484D 7D 80            [12] 5639 	mov	r5,#0x80
                                   5640 ;	calc.c:51: return;
      00484F                       5641 00457$:
                                   5642 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00484F 8F 82            [24] 5643 	mov	dpl,r7
      004851 8E 83            [24] 5644 	mov	dph,r6
      004853 8D F0            [24] 5645 	mov	b,r5
      004855 12 67 7F         [24] 5646 	lcall	__gptrget
      004858 FC               [12] 5647 	mov	r4,a
      004859 70 03            [24] 5648 	jnz	01359$
      00485B 02 54 06         [24] 5649 	ljmp	00249$
      00485E                       5650 01359$:
      00485E 7B 00            [12] 5651 	mov	r3,#0x00
      004860 8C 82            [24] 5652 	mov	dpl,r4
      004862 8B 83            [24] 5653 	mov	dph,r3
      004864 12 29 C0         [24] 5654 	lcall	_putchar
      004867 0F               [12] 5655 	inc	r7
                                   5656 ;	calc.c:269: printstr("\r\ndivision by zero\r\n");
      004868 BF 00 E4         [24] 5657 	cjne	r7,#0x00,00457$
      00486B 0E               [12] 5658 	inc	r6
      00486C 80 E1            [24] 5659 	sjmp	00457$
      00486E                       5660 00194$:
                                   5661 ;	calc.c:271: if (ctx->digit[0] == '%') d1 %= d0;
      00486E 8D 82            [24] 5662 	mov	dpl,r5
      004870 8E 83            [24] 5663 	mov	dph,r6
      004872 8F F0            [24] 5664 	mov	b,r7
      004874 12 67 7F         [24] 5665 	lcall	__gptrget
      004877 FD               [12] 5666 	mov	r5,a
      004878 BD 25 45         [24] 5667 	cjne	r5,#0x25,00191$
      00487B E5 08            [12] 5668 	mov	a,_bp
      00487D 24 15            [12] 5669 	add	a,#0x15
      00487F F8               [12] 5670 	mov	r0,a
      004880 E6               [12] 5671 	mov	a,@r0
      004881 C0 E0            [24] 5672 	push	acc
      004883 08               [12] 5673 	inc	r0
      004884 E6               [12] 5674 	mov	a,@r0
      004885 C0 E0            [24] 5675 	push	acc
      004887 08               [12] 5676 	inc	r0
      004888 E6               [12] 5677 	mov	a,@r0
      004889 C0 E0            [24] 5678 	push	acc
      00488B 08               [12] 5679 	inc	r0
      00488C E6               [12] 5680 	mov	a,@r0
      00488D C0 E0            [24] 5681 	push	acc
      00488F E5 08            [12] 5682 	mov	a,_bp
      004891 24 19            [12] 5683 	add	a,#0x19
      004893 F8               [12] 5684 	mov	r0,a
      004894 86 82            [24] 5685 	mov	dpl,@r0
      004896 08               [12] 5686 	inc	r0
      004897 86 83            [24] 5687 	mov	dph,@r0
      004899 08               [12] 5688 	inc	r0
      00489A 86 F0            [24] 5689 	mov	b,@r0
      00489C 08               [12] 5690 	inc	r0
      00489D E6               [12] 5691 	mov	a,@r0
      00489E 12 63 BD         [24] 5692 	lcall	__modslong
      0048A1 AC 82            [24] 5693 	mov	r4,dpl
      0048A3 AD 83            [24] 5694 	mov	r5,dph
      0048A5 AE F0            [24] 5695 	mov	r6,b
      0048A7 FF               [12] 5696 	mov	r7,a
      0048A8 E5 81            [12] 5697 	mov	a,sp
      0048AA 24 FC            [12] 5698 	add	a,#0xfc
      0048AC F5 81            [12] 5699 	mov	sp,a
      0048AE E5 08            [12] 5700 	mov	a,_bp
      0048B0 24 19            [12] 5701 	add	a,#0x19
      0048B2 F8               [12] 5702 	mov	r0,a
      0048B3 A6 04            [24] 5703 	mov	@r0,ar4
      0048B5 08               [12] 5704 	inc	r0
      0048B6 A6 05            [24] 5705 	mov	@r0,ar5
      0048B8 08               [12] 5706 	inc	r0
      0048B9 A6 06            [24] 5707 	mov	@r0,ar6
      0048BB 08               [12] 5708 	inc	r0
      0048BC A6 07            [24] 5709 	mov	@r0,ar7
      0048BE 80 5F            [24] 5710 	sjmp	00192$
      0048C0                       5711 00191$:
                                   5712 ;	calc.c:272: else d1 = (unsigned long)d1 % (unsigned long)d0;
      0048C0 E5 08            [12] 5713 	mov	a,_bp
      0048C2 24 19            [12] 5714 	add	a,#0x19
      0048C4 F8               [12] 5715 	mov	r0,a
      0048C5 E5 08            [12] 5716 	mov	a,_bp
      0048C7 24 07            [12] 5717 	add	a,#0x07
      0048C9 F9               [12] 5718 	mov	r1,a
      0048CA E6               [12] 5719 	mov	a,@r0
      0048CB F7               [12] 5720 	mov	@r1,a
      0048CC 08               [12] 5721 	inc	r0
      0048CD 09               [12] 5722 	inc	r1
      0048CE E6               [12] 5723 	mov	a,@r0
      0048CF F7               [12] 5724 	mov	@r1,a
      0048D0 08               [12] 5725 	inc	r0
      0048D1 09               [12] 5726 	inc	r1
      0048D2 E6               [12] 5727 	mov	a,@r0
      0048D3 F7               [12] 5728 	mov	@r1,a
      0048D4 08               [12] 5729 	inc	r0
      0048D5 09               [12] 5730 	inc	r1
      0048D6 E6               [12] 5731 	mov	a,@r0
      0048D7 F7               [12] 5732 	mov	@r1,a
      0048D8 E5 08            [12] 5733 	mov	a,_bp
      0048DA 24 15            [12] 5734 	add	a,#0x15
      0048DC F8               [12] 5735 	mov	r0,a
      0048DD 86 02            [24] 5736 	mov	ar2,@r0
      0048DF 08               [12] 5737 	inc	r0
      0048E0 86 03            [24] 5738 	mov	ar3,@r0
      0048E2 08               [12] 5739 	inc	r0
      0048E3 86 06            [24] 5740 	mov	ar6,@r0
      0048E5 08               [12] 5741 	inc	r0
      0048E6 86 07            [24] 5742 	mov	ar7,@r0
      0048E8 C0 02            [24] 5743 	push	ar2
      0048EA C0 03            [24] 5744 	push	ar3
      0048EC C0 06            [24] 5745 	push	ar6
      0048EE C0 07            [24] 5746 	push	ar7
      0048F0 E5 08            [12] 5747 	mov	a,_bp
      0048F2 24 07            [12] 5748 	add	a,#0x07
      0048F4 F8               [12] 5749 	mov	r0,a
      0048F5 86 82            [24] 5750 	mov	dpl,@r0
      0048F7 08               [12] 5751 	inc	r0
      0048F8 86 83            [24] 5752 	mov	dph,@r0
      0048FA 08               [12] 5753 	inc	r0
      0048FB 86 F0            [24] 5754 	mov	b,@r0
      0048FD 08               [12] 5755 	inc	r0
      0048FE E6               [12] 5756 	mov	a,@r0
      0048FF 12 64 B4         [24] 5757 	lcall	__modulong
      004902 AC 82            [24] 5758 	mov	r4,dpl
      004904 AD 83            [24] 5759 	mov	r5,dph
      004906 AE F0            [24] 5760 	mov	r6,b
      004908 FF               [12] 5761 	mov	r7,a
      004909 E5 81            [12] 5762 	mov	a,sp
      00490B 24 FC            [12] 5763 	add	a,#0xfc
      00490D F5 81            [12] 5764 	mov	sp,a
      00490F E5 08            [12] 5765 	mov	a,_bp
      004911 24 19            [12] 5766 	add	a,#0x19
      004913 F8               [12] 5767 	mov	r0,a
      004914 A6 04            [24] 5768 	mov	@r0,ar4
      004916 08               [12] 5769 	inc	r0
      004917 A6 05            [24] 5770 	mov	@r0,ar5
      004919 08               [12] 5771 	inc	r0
      00491A A6 06            [24] 5772 	mov	@r0,ar6
      00491C 08               [12] 5773 	inc	r0
      00491D A6 07            [24] 5774 	mov	@r0,ar7
      00491F                       5775 00192$:
                                   5776 ;	calc.c:273: (void)stack_push(ctx->ps, d1);
      00491F E5 08            [12] 5777 	mov	a,_bp
      004921 24 0E            [12] 5778 	add	a,#0x0e
      004923 F8               [12] 5779 	mov	r0,a
      004924 86 82            [24] 5780 	mov	dpl,@r0
      004926 08               [12] 5781 	inc	r0
      004927 86 83            [24] 5782 	mov	dph,@r0
      004929 08               [12] 5783 	inc	r0
      00492A 86 F0            [24] 5784 	mov	b,@r0
      00492C 12 67 7F         [24] 5785 	lcall	__gptrget
      00492F FD               [12] 5786 	mov	r5,a
      004930 A3               [24] 5787 	inc	dptr
      004931 12 67 7F         [24] 5788 	lcall	__gptrget
      004934 FE               [12] 5789 	mov	r6,a
      004935 A3               [24] 5790 	inc	dptr
      004936 12 67 7F         [24] 5791 	lcall	__gptrget
      004939 FF               [12] 5792 	mov	r7,a
      00493A E5 08            [12] 5793 	mov	a,_bp
      00493C 24 19            [12] 5794 	add	a,#0x19
      00493E F8               [12] 5795 	mov	r0,a
      00493F E6               [12] 5796 	mov	a,@r0
      004940 C0 E0            [24] 5797 	push	acc
      004942 08               [12] 5798 	inc	r0
      004943 E6               [12] 5799 	mov	a,@r0
      004944 C0 E0            [24] 5800 	push	acc
      004946 08               [12] 5801 	inc	r0
      004947 E6               [12] 5802 	mov	a,@r0
      004948 C0 E0            [24] 5803 	push	acc
      00494A 08               [12] 5804 	inc	r0
      00494B E6               [12] 5805 	mov	a,@r0
      00494C C0 E0            [24] 5806 	push	acc
      00494E 8D 82            [24] 5807 	mov	dpl,r5
      004950 8E 83            [24] 5808 	mov	dph,r6
      004952 8F F0            [24] 5809 	mov	b,r7
      004954 12 26 B5         [24] 5810 	lcall	_stack_push
      004957 E5 81            [12] 5811 	mov	a,sp
      004959 24 FC            [12] 5812 	add	a,#0xfc
      00495B F5 81            [12] 5813 	mov	sp,a
                                   5814 ;	calc.c:275: break;
      00495D 02 54 06         [24] 5815 	ljmp	00249$
                                   5816 ;	calc.c:276: case '&':
      004960                       5817 00202$:
                                   5818 ;	calc.c:277: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004960 E5 08            [12] 5819 	mov	a,_bp
      004962 24 15            [12] 5820 	add	a,#0x15
      004964 FF               [12] 5821 	mov	r7,a
      004965 E5 08            [12] 5822 	mov	a,_bp
      004967 24 0E            [12] 5823 	add	a,#0x0e
      004969 F8               [12] 5824 	mov	r0,a
      00496A A6 07            [24] 5825 	mov	@r0,ar7
      00496C 08               [12] 5826 	inc	r0
      00496D 76 00            [12] 5827 	mov	@r0,#0x00
      00496F 08               [12] 5828 	inc	r0
      004970 76 40            [12] 5829 	mov	@r0,#0x40
      004972 E5 08            [12] 5830 	mov	a,_bp
      004974 24 12            [12] 5831 	add	a,#0x12
      004976 F8               [12] 5832 	mov	r0,a
      004977 74 11            [12] 5833 	mov	a,#0x11
      004979 26               [12] 5834 	add	a,@r0
      00497A FA               [12] 5835 	mov	r2,a
      00497B 74 40            [12] 5836 	mov	a,#0x40
      00497D 08               [12] 5837 	inc	r0
      00497E 36               [12] 5838 	addc	a,@r0
      00497F FB               [12] 5839 	mov	r3,a
      004980 08               [12] 5840 	inc	r0
      004981 86 04            [24] 5841 	mov	ar4,@r0
      004983 8A 82            [24] 5842 	mov	dpl,r2
      004985 8B 83            [24] 5843 	mov	dph,r3
      004987 8C F0            [24] 5844 	mov	b,r4
      004989 12 67 7F         [24] 5845 	lcall	__gptrget
      00498C FD               [12] 5846 	mov	r5,a
      00498D A3               [24] 5847 	inc	dptr
      00498E 12 67 7F         [24] 5848 	lcall	__gptrget
      004991 FE               [12] 5849 	mov	r6,a
      004992 A3               [24] 5850 	inc	dptr
      004993 12 67 7F         [24] 5851 	lcall	__gptrget
      004996 FF               [12] 5852 	mov	r7,a
      004997 C0 04            [24] 5853 	push	ar4
      004999 C0 03            [24] 5854 	push	ar3
      00499B C0 02            [24] 5855 	push	ar2
      00499D E5 08            [12] 5856 	mov	a,_bp
      00499F 24 0E            [12] 5857 	add	a,#0x0e
      0049A1 F8               [12] 5858 	mov	r0,a
      0049A2 E6               [12] 5859 	mov	a,@r0
      0049A3 C0 E0            [24] 5860 	push	acc
      0049A5 08               [12] 5861 	inc	r0
      0049A6 E6               [12] 5862 	mov	a,@r0
      0049A7 C0 E0            [24] 5863 	push	acc
      0049A9 08               [12] 5864 	inc	r0
      0049AA E6               [12] 5865 	mov	a,@r0
      0049AB C0 E0            [24] 5866 	push	acc
      0049AD 8D 82            [24] 5867 	mov	dpl,r5
      0049AF 8E 83            [24] 5868 	mov	dph,r6
      0049B1 8F F0            [24] 5869 	mov	b,r7
      0049B3 12 27 7F         [24] 5870 	lcall	_stack_pop
      0049B6 AE 82            [24] 5871 	mov	r6,dpl
      0049B8 AF 83            [24] 5872 	mov	r7,dph
      0049BA 15 81            [12] 5873 	dec	sp
      0049BC 15 81            [12] 5874 	dec	sp
      0049BE 15 81            [12] 5875 	dec	sp
      0049C0 D0 02            [24] 5876 	pop	ar2
      0049C2 D0 03            [24] 5877 	pop	ar3
      0049C4 D0 04            [24] 5878 	pop	ar4
      0049C6 EE               [12] 5879 	mov	a,r6
      0049C7 4F               [12] 5880 	orl	a,r7
      0049C8 70 25            [24] 5881 	jnz	00207$
      0049CA 7D 44            [12] 5882 	mov	r5,#___str_10
      0049CC 7C 80            [12] 5883 	mov	r4,#(___str_10 >> 8)
      0049CE 7B 80            [12] 5884 	mov	r3,#0x80
                                   5885 ;	calc.c:51: return;
      0049D0                       5886 00460$:
                                   5887 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0049D0 8D 82            [24] 5888 	mov	dpl,r5
      0049D2 8C 83            [24] 5889 	mov	dph,r4
      0049D4 8B F0            [24] 5890 	mov	b,r3
      0049D6 12 67 7F         [24] 5891 	lcall	__gptrget
      0049D9 FF               [12] 5892 	mov	r7,a
      0049DA 70 03            [24] 5893 	jnz	01364$
      0049DC 02 54 06         [24] 5894 	ljmp	00249$
      0049DF                       5895 01364$:
      0049DF 7E 00            [12] 5896 	mov	r6,#0x00
      0049E1 8F 82            [24] 5897 	mov	dpl,r7
      0049E3 8E 83            [24] 5898 	mov	dph,r6
      0049E5 12 29 C0         [24] 5899 	lcall	_putchar
      0049E8 0D               [12] 5900 	inc	r5
                                   5901 ;	calc.c:277: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0049E9 BD 00 E4         [24] 5902 	cjne	r5,#0x00,00460$
      0049EC 0C               [12] 5903 	inc	r4
      0049ED 80 E1            [24] 5904 	sjmp	00460$
      0049EF                       5905 00207$:
                                   5906 ;	calc.c:278: else if (!stack_pop(ctx->ps, &d1)) {
      0049EF E5 08            [12] 5907 	mov	a,_bp
      0049F1 24 19            [12] 5908 	add	a,#0x19
      0049F3 FF               [12] 5909 	mov	r7,a
      0049F4 E5 08            [12] 5910 	mov	a,_bp
      0049F6 24 0E            [12] 5911 	add	a,#0x0e
      0049F8 F8               [12] 5912 	mov	r0,a
      0049F9 A6 07            [24] 5913 	mov	@r0,ar7
      0049FB 08               [12] 5914 	inc	r0
      0049FC 76 00            [12] 5915 	mov	@r0,#0x00
      0049FE 08               [12] 5916 	inc	r0
      0049FF 76 40            [12] 5917 	mov	@r0,#0x40
      004A01 8A 82            [24] 5918 	mov	dpl,r2
      004A03 8B 83            [24] 5919 	mov	dph,r3
      004A05 8C F0            [24] 5920 	mov	b,r4
      004A07 12 67 7F         [24] 5921 	lcall	__gptrget
      004A0A FD               [12] 5922 	mov	r5,a
      004A0B A3               [24] 5923 	inc	dptr
      004A0C 12 67 7F         [24] 5924 	lcall	__gptrget
      004A0F FE               [12] 5925 	mov	r6,a
      004A10 A3               [24] 5926 	inc	dptr
      004A11 12 67 7F         [24] 5927 	lcall	__gptrget
      004A14 FF               [12] 5928 	mov	r7,a
      004A15 C0 04            [24] 5929 	push	ar4
      004A17 C0 03            [24] 5930 	push	ar3
      004A19 C0 02            [24] 5931 	push	ar2
      004A1B E5 08            [12] 5932 	mov	a,_bp
      004A1D 24 0E            [12] 5933 	add	a,#0x0e
      004A1F F8               [12] 5934 	mov	r0,a
      004A20 E6               [12] 5935 	mov	a,@r0
      004A21 C0 E0            [24] 5936 	push	acc
      004A23 08               [12] 5937 	inc	r0
      004A24 E6               [12] 5938 	mov	a,@r0
      004A25 C0 E0            [24] 5939 	push	acc
      004A27 08               [12] 5940 	inc	r0
      004A28 E6               [12] 5941 	mov	a,@r0
      004A29 C0 E0            [24] 5942 	push	acc
      004A2B 8D 82            [24] 5943 	mov	dpl,r5
      004A2D 8E 83            [24] 5944 	mov	dph,r6
      004A2F 8F F0            [24] 5945 	mov	b,r7
      004A31 12 27 7F         [24] 5946 	lcall	_stack_pop
      004A34 AE 82            [24] 5947 	mov	r6,dpl
      004A36 AF 83            [24] 5948 	mov	r7,dph
      004A38 15 81            [12] 5949 	dec	sp
      004A3A 15 81            [12] 5950 	dec	sp
      004A3C 15 81            [12] 5951 	dec	sp
      004A3E D0 02            [24] 5952 	pop	ar2
      004A40 D0 03            [24] 5953 	pop	ar3
      004A42 D0 04            [24] 5954 	pop	ar4
      004A44 EE               [12] 5955 	mov	a,r6
      004A45 4F               [12] 5956 	orl	a,r7
      004A46 70 5C            [24] 5957 	jnz	00204$
                                   5958 ;	calc.c:279: (void)stack_push(ctx->ps, d0);
      004A48 8A 82            [24] 5959 	mov	dpl,r2
      004A4A 8B 83            [24] 5960 	mov	dph,r3
      004A4C 8C F0            [24] 5961 	mov	b,r4
      004A4E 12 67 7F         [24] 5962 	lcall	__gptrget
      004A51 FD               [12] 5963 	mov	r5,a
      004A52 A3               [24] 5964 	inc	dptr
      004A53 12 67 7F         [24] 5965 	lcall	__gptrget
      004A56 FE               [12] 5966 	mov	r6,a
      004A57 A3               [24] 5967 	inc	dptr
      004A58 12 67 7F         [24] 5968 	lcall	__gptrget
      004A5B FF               [12] 5969 	mov	r7,a
      004A5C E5 08            [12] 5970 	mov	a,_bp
      004A5E 24 15            [12] 5971 	add	a,#0x15
      004A60 F8               [12] 5972 	mov	r0,a
      004A61 E6               [12] 5973 	mov	a,@r0
      004A62 C0 E0            [24] 5974 	push	acc
      004A64 08               [12] 5975 	inc	r0
      004A65 E6               [12] 5976 	mov	a,@r0
      004A66 C0 E0            [24] 5977 	push	acc
      004A68 08               [12] 5978 	inc	r0
      004A69 E6               [12] 5979 	mov	a,@r0
      004A6A C0 E0            [24] 5980 	push	acc
      004A6C 08               [12] 5981 	inc	r0
      004A6D E6               [12] 5982 	mov	a,@r0
      004A6E C0 E0            [24] 5983 	push	acc
      004A70 8D 82            [24] 5984 	mov	dpl,r5
      004A72 8E 83            [24] 5985 	mov	dph,r6
      004A74 8F F0            [24] 5986 	mov	b,r7
      004A76 12 26 B5         [24] 5987 	lcall	_stack_push
      004A79 E5 81            [12] 5988 	mov	a,sp
      004A7B 24 FC            [12] 5989 	add	a,#0xfc
      004A7D F5 81            [12] 5990 	mov	sp,a
                                   5991 ;	calc.c:280: printstr("\r\nstack underflow\r\n");
      004A7F 7D 44            [12] 5992 	mov	r5,#___str_10
      004A81 7C 80            [12] 5993 	mov	r4,#(___str_10 >> 8)
      004A83 7B 80            [12] 5994 	mov	r3,#0x80
                                   5995 ;	calc.c:51: return;
      004A85                       5996 00463$:
                                   5997 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004A85 8D 82            [24] 5998 	mov	dpl,r5
      004A87 8C 83            [24] 5999 	mov	dph,r4
      004A89 8B F0            [24] 6000 	mov	b,r3
      004A8B 12 67 7F         [24] 6001 	lcall	__gptrget
      004A8E FF               [12] 6002 	mov	r7,a
      004A8F 70 03            [24] 6003 	jnz	01367$
      004A91 02 54 06         [24] 6004 	ljmp	00249$
      004A94                       6005 01367$:
      004A94 7E 00            [12] 6006 	mov	r6,#0x00
      004A96 8F 82            [24] 6007 	mov	dpl,r7
      004A98 8E 83            [24] 6008 	mov	dph,r6
      004A9A 12 29 C0         [24] 6009 	lcall	_putchar
      004A9D 0D               [12] 6010 	inc	r5
                                   6011 ;	calc.c:280: printstr("\r\nstack underflow\r\n");
      004A9E BD 00 E4         [24] 6012 	cjne	r5,#0x00,00463$
      004AA1 0C               [12] 6013 	inc	r4
      004AA2 80 E1            [24] 6014 	sjmp	00463$
      004AA4                       6015 00204$:
                                   6016 ;	calc.c:282: d1 &= d0;
      004AA4 E5 08            [12] 6017 	mov	a,_bp
      004AA6 24 19            [12] 6018 	add	a,#0x19
      004AA8 F8               [12] 6019 	mov	r0,a
      004AA9 E5 08            [12] 6020 	mov	a,_bp
      004AAB 24 15            [12] 6021 	add	a,#0x15
      004AAD F9               [12] 6022 	mov	r1,a
      004AAE E7               [12] 6023 	mov	a,@r1
      004AAF 56               [12] 6024 	anl	a,@r0
      004AB0 F6               [12] 6025 	mov	@r0,a
      004AB1 09               [12] 6026 	inc	r1
      004AB2 E7               [12] 6027 	mov	a,@r1
      004AB3 08               [12] 6028 	inc	r0
      004AB4 56               [12] 6029 	anl	a,@r0
      004AB5 F6               [12] 6030 	mov	@r0,a
      004AB6 09               [12] 6031 	inc	r1
      004AB7 E7               [12] 6032 	mov	a,@r1
      004AB8 08               [12] 6033 	inc	r0
      004AB9 56               [12] 6034 	anl	a,@r0
      004ABA F6               [12] 6035 	mov	@r0,a
      004ABB 09               [12] 6036 	inc	r1
      004ABC E7               [12] 6037 	mov	a,@r1
      004ABD 08               [12] 6038 	inc	r0
      004ABE 56               [12] 6039 	anl	a,@r0
      004ABF F6               [12] 6040 	mov	@r0,a
                                   6041 ;	calc.c:283: (void)stack_push(ctx->ps, d1);
      004AC0 8A 82            [24] 6042 	mov	dpl,r2
      004AC2 8B 83            [24] 6043 	mov	dph,r3
      004AC4 8C F0            [24] 6044 	mov	b,r4
      004AC6 12 67 7F         [24] 6045 	lcall	__gptrget
      004AC9 FA               [12] 6046 	mov	r2,a
      004ACA A3               [24] 6047 	inc	dptr
      004ACB 12 67 7F         [24] 6048 	lcall	__gptrget
      004ACE FB               [12] 6049 	mov	r3,a
      004ACF A3               [24] 6050 	inc	dptr
      004AD0 12 67 7F         [24] 6051 	lcall	__gptrget
      004AD3 FC               [12] 6052 	mov	r4,a
      004AD4 E5 08            [12] 6053 	mov	a,_bp
      004AD6 24 19            [12] 6054 	add	a,#0x19
      004AD8 F8               [12] 6055 	mov	r0,a
      004AD9 E6               [12] 6056 	mov	a,@r0
      004ADA C0 E0            [24] 6057 	push	acc
      004ADC 08               [12] 6058 	inc	r0
      004ADD E6               [12] 6059 	mov	a,@r0
      004ADE C0 E0            [24] 6060 	push	acc
      004AE0 08               [12] 6061 	inc	r0
      004AE1 E6               [12] 6062 	mov	a,@r0
      004AE2 C0 E0            [24] 6063 	push	acc
      004AE4 08               [12] 6064 	inc	r0
      004AE5 E6               [12] 6065 	mov	a,@r0
      004AE6 C0 E0            [24] 6066 	push	acc
      004AE8 8A 82            [24] 6067 	mov	dpl,r2
      004AEA 8B 83            [24] 6068 	mov	dph,r3
      004AEC 8C F0            [24] 6069 	mov	b,r4
      004AEE 12 26 B5         [24] 6070 	lcall	_stack_push
      004AF1 E5 81            [12] 6071 	mov	a,sp
      004AF3 24 FC            [12] 6072 	add	a,#0xfc
      004AF5 F5 81            [12] 6073 	mov	sp,a
                                   6074 ;	calc.c:285: break;
      004AF7 02 54 06         [24] 6075 	ljmp	00249$
                                   6076 ;	calc.c:286: case '|':
      004AFA                       6077 00209$:
                                   6078 ;	calc.c:287: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004AFA E5 08            [12] 6079 	mov	a,_bp
      004AFC 24 15            [12] 6080 	add	a,#0x15
      004AFE FF               [12] 6081 	mov	r7,a
      004AFF E5 08            [12] 6082 	mov	a,_bp
      004B01 24 0E            [12] 6083 	add	a,#0x0e
      004B03 F8               [12] 6084 	mov	r0,a
      004B04 A6 07            [24] 6085 	mov	@r0,ar7
      004B06 08               [12] 6086 	inc	r0
      004B07 76 00            [12] 6087 	mov	@r0,#0x00
      004B09 08               [12] 6088 	inc	r0
      004B0A 76 40            [12] 6089 	mov	@r0,#0x40
      004B0C E5 08            [12] 6090 	mov	a,_bp
      004B0E 24 12            [12] 6091 	add	a,#0x12
      004B10 F8               [12] 6092 	mov	r0,a
      004B11 74 11            [12] 6093 	mov	a,#0x11
      004B13 26               [12] 6094 	add	a,@r0
      004B14 FA               [12] 6095 	mov	r2,a
      004B15 74 40            [12] 6096 	mov	a,#0x40
      004B17 08               [12] 6097 	inc	r0
      004B18 36               [12] 6098 	addc	a,@r0
      004B19 FB               [12] 6099 	mov	r3,a
      004B1A 08               [12] 6100 	inc	r0
      004B1B 86 04            [24] 6101 	mov	ar4,@r0
      004B1D 8A 82            [24] 6102 	mov	dpl,r2
      004B1F 8B 83            [24] 6103 	mov	dph,r3
      004B21 8C F0            [24] 6104 	mov	b,r4
      004B23 12 67 7F         [24] 6105 	lcall	__gptrget
      004B26 FD               [12] 6106 	mov	r5,a
      004B27 A3               [24] 6107 	inc	dptr
      004B28 12 67 7F         [24] 6108 	lcall	__gptrget
      004B2B FE               [12] 6109 	mov	r6,a
      004B2C A3               [24] 6110 	inc	dptr
      004B2D 12 67 7F         [24] 6111 	lcall	__gptrget
      004B30 FF               [12] 6112 	mov	r7,a
      004B31 C0 04            [24] 6113 	push	ar4
      004B33 C0 03            [24] 6114 	push	ar3
      004B35 C0 02            [24] 6115 	push	ar2
      004B37 E5 08            [12] 6116 	mov	a,_bp
      004B39 24 0E            [12] 6117 	add	a,#0x0e
      004B3B F8               [12] 6118 	mov	r0,a
      004B3C E6               [12] 6119 	mov	a,@r0
      004B3D C0 E0            [24] 6120 	push	acc
      004B3F 08               [12] 6121 	inc	r0
      004B40 E6               [12] 6122 	mov	a,@r0
      004B41 C0 E0            [24] 6123 	push	acc
      004B43 08               [12] 6124 	inc	r0
      004B44 E6               [12] 6125 	mov	a,@r0
      004B45 C0 E0            [24] 6126 	push	acc
      004B47 8D 82            [24] 6127 	mov	dpl,r5
      004B49 8E 83            [24] 6128 	mov	dph,r6
      004B4B 8F F0            [24] 6129 	mov	b,r7
      004B4D 12 27 7F         [24] 6130 	lcall	_stack_pop
      004B50 AE 82            [24] 6131 	mov	r6,dpl
      004B52 AF 83            [24] 6132 	mov	r7,dph
      004B54 15 81            [12] 6133 	dec	sp
      004B56 15 81            [12] 6134 	dec	sp
      004B58 15 81            [12] 6135 	dec	sp
      004B5A D0 02            [24] 6136 	pop	ar2
      004B5C D0 03            [24] 6137 	pop	ar3
      004B5E D0 04            [24] 6138 	pop	ar4
      004B60 EE               [12] 6139 	mov	a,r6
      004B61 4F               [12] 6140 	orl	a,r7
      004B62 70 25            [24] 6141 	jnz	00214$
      004B64 7D 44            [12] 6142 	mov	r5,#___str_10
      004B66 7C 80            [12] 6143 	mov	r4,#(___str_10 >> 8)
      004B68 7B 80            [12] 6144 	mov	r3,#0x80
                                   6145 ;	calc.c:51: return;
      004B6A                       6146 00466$:
                                   6147 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004B6A 8D 82            [24] 6148 	mov	dpl,r5
      004B6C 8C 83            [24] 6149 	mov	dph,r4
      004B6E 8B F0            [24] 6150 	mov	b,r3
      004B70 12 67 7F         [24] 6151 	lcall	__gptrget
      004B73 FF               [12] 6152 	mov	r7,a
      004B74 70 03            [24] 6153 	jnz	01370$
      004B76 02 54 06         [24] 6154 	ljmp	00249$
      004B79                       6155 01370$:
      004B79 7E 00            [12] 6156 	mov	r6,#0x00
      004B7B 8F 82            [24] 6157 	mov	dpl,r7
      004B7D 8E 83            [24] 6158 	mov	dph,r6
      004B7F 12 29 C0         [24] 6159 	lcall	_putchar
      004B82 0D               [12] 6160 	inc	r5
                                   6161 ;	calc.c:287: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004B83 BD 00 E4         [24] 6162 	cjne	r5,#0x00,00466$
      004B86 0C               [12] 6163 	inc	r4
      004B87 80 E1            [24] 6164 	sjmp	00466$
      004B89                       6165 00214$:
                                   6166 ;	calc.c:288: else if (!stack_pop(ctx->ps, &d1)) {
      004B89 E5 08            [12] 6167 	mov	a,_bp
      004B8B 24 19            [12] 6168 	add	a,#0x19
      004B8D FF               [12] 6169 	mov	r7,a
      004B8E E5 08            [12] 6170 	mov	a,_bp
      004B90 24 0E            [12] 6171 	add	a,#0x0e
      004B92 F8               [12] 6172 	mov	r0,a
      004B93 A6 07            [24] 6173 	mov	@r0,ar7
      004B95 08               [12] 6174 	inc	r0
      004B96 76 00            [12] 6175 	mov	@r0,#0x00
      004B98 08               [12] 6176 	inc	r0
      004B99 76 40            [12] 6177 	mov	@r0,#0x40
      004B9B 8A 82            [24] 6178 	mov	dpl,r2
      004B9D 8B 83            [24] 6179 	mov	dph,r3
      004B9F 8C F0            [24] 6180 	mov	b,r4
      004BA1 12 67 7F         [24] 6181 	lcall	__gptrget
      004BA4 FD               [12] 6182 	mov	r5,a
      004BA5 A3               [24] 6183 	inc	dptr
      004BA6 12 67 7F         [24] 6184 	lcall	__gptrget
      004BA9 FE               [12] 6185 	mov	r6,a
      004BAA A3               [24] 6186 	inc	dptr
      004BAB 12 67 7F         [24] 6187 	lcall	__gptrget
      004BAE FF               [12] 6188 	mov	r7,a
      004BAF C0 04            [24] 6189 	push	ar4
      004BB1 C0 03            [24] 6190 	push	ar3
      004BB3 C0 02            [24] 6191 	push	ar2
      004BB5 E5 08            [12] 6192 	mov	a,_bp
      004BB7 24 0E            [12] 6193 	add	a,#0x0e
      004BB9 F8               [12] 6194 	mov	r0,a
      004BBA E6               [12] 6195 	mov	a,@r0
      004BBB C0 E0            [24] 6196 	push	acc
      004BBD 08               [12] 6197 	inc	r0
      004BBE E6               [12] 6198 	mov	a,@r0
      004BBF C0 E0            [24] 6199 	push	acc
      004BC1 08               [12] 6200 	inc	r0
      004BC2 E6               [12] 6201 	mov	a,@r0
      004BC3 C0 E0            [24] 6202 	push	acc
      004BC5 8D 82            [24] 6203 	mov	dpl,r5
      004BC7 8E 83            [24] 6204 	mov	dph,r6
      004BC9 8F F0            [24] 6205 	mov	b,r7
      004BCB 12 27 7F         [24] 6206 	lcall	_stack_pop
      004BCE AE 82            [24] 6207 	mov	r6,dpl
      004BD0 AF 83            [24] 6208 	mov	r7,dph
      004BD2 15 81            [12] 6209 	dec	sp
      004BD4 15 81            [12] 6210 	dec	sp
      004BD6 15 81            [12] 6211 	dec	sp
      004BD8 D0 02            [24] 6212 	pop	ar2
      004BDA D0 03            [24] 6213 	pop	ar3
      004BDC D0 04            [24] 6214 	pop	ar4
      004BDE EE               [12] 6215 	mov	a,r6
      004BDF 4F               [12] 6216 	orl	a,r7
      004BE0 70 5C            [24] 6217 	jnz	00211$
                                   6218 ;	calc.c:289: (void)stack_push(ctx->ps, d0);
      004BE2 8A 82            [24] 6219 	mov	dpl,r2
      004BE4 8B 83            [24] 6220 	mov	dph,r3
      004BE6 8C F0            [24] 6221 	mov	b,r4
      004BE8 12 67 7F         [24] 6222 	lcall	__gptrget
      004BEB FD               [12] 6223 	mov	r5,a
      004BEC A3               [24] 6224 	inc	dptr
      004BED 12 67 7F         [24] 6225 	lcall	__gptrget
      004BF0 FE               [12] 6226 	mov	r6,a
      004BF1 A3               [24] 6227 	inc	dptr
      004BF2 12 67 7F         [24] 6228 	lcall	__gptrget
      004BF5 FF               [12] 6229 	mov	r7,a
      004BF6 E5 08            [12] 6230 	mov	a,_bp
      004BF8 24 15            [12] 6231 	add	a,#0x15
      004BFA F8               [12] 6232 	mov	r0,a
      004BFB E6               [12] 6233 	mov	a,@r0
      004BFC C0 E0            [24] 6234 	push	acc
      004BFE 08               [12] 6235 	inc	r0
      004BFF E6               [12] 6236 	mov	a,@r0
      004C00 C0 E0            [24] 6237 	push	acc
      004C02 08               [12] 6238 	inc	r0
      004C03 E6               [12] 6239 	mov	a,@r0
      004C04 C0 E0            [24] 6240 	push	acc
      004C06 08               [12] 6241 	inc	r0
      004C07 E6               [12] 6242 	mov	a,@r0
      004C08 C0 E0            [24] 6243 	push	acc
      004C0A 8D 82            [24] 6244 	mov	dpl,r5
      004C0C 8E 83            [24] 6245 	mov	dph,r6
      004C0E 8F F0            [24] 6246 	mov	b,r7
      004C10 12 26 B5         [24] 6247 	lcall	_stack_push
      004C13 E5 81            [12] 6248 	mov	a,sp
      004C15 24 FC            [12] 6249 	add	a,#0xfc
      004C17 F5 81            [12] 6250 	mov	sp,a
                                   6251 ;	calc.c:290: printstr("\r\nstack underflow\r\n");
      004C19 7D 44            [12] 6252 	mov	r5,#___str_10
      004C1B 7C 80            [12] 6253 	mov	r4,#(___str_10 >> 8)
      004C1D 7B 80            [12] 6254 	mov	r3,#0x80
                                   6255 ;	calc.c:51: return;
      004C1F                       6256 00469$:
                                   6257 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004C1F 8D 82            [24] 6258 	mov	dpl,r5
      004C21 8C 83            [24] 6259 	mov	dph,r4
      004C23 8B F0            [24] 6260 	mov	b,r3
      004C25 12 67 7F         [24] 6261 	lcall	__gptrget
      004C28 FF               [12] 6262 	mov	r7,a
      004C29 70 03            [24] 6263 	jnz	01373$
      004C2B 02 54 06         [24] 6264 	ljmp	00249$
      004C2E                       6265 01373$:
      004C2E 7E 00            [12] 6266 	mov	r6,#0x00
      004C30 8F 82            [24] 6267 	mov	dpl,r7
      004C32 8E 83            [24] 6268 	mov	dph,r6
      004C34 12 29 C0         [24] 6269 	lcall	_putchar
      004C37 0D               [12] 6270 	inc	r5
                                   6271 ;	calc.c:290: printstr("\r\nstack underflow\r\n");
      004C38 BD 00 E4         [24] 6272 	cjne	r5,#0x00,00469$
      004C3B 0C               [12] 6273 	inc	r4
      004C3C 80 E1            [24] 6274 	sjmp	00469$
      004C3E                       6275 00211$:
                                   6276 ;	calc.c:292: d1 |= d0;
      004C3E E5 08            [12] 6277 	mov	a,_bp
      004C40 24 19            [12] 6278 	add	a,#0x19
      004C42 F8               [12] 6279 	mov	r0,a
      004C43 E5 08            [12] 6280 	mov	a,_bp
      004C45 24 15            [12] 6281 	add	a,#0x15
      004C47 F9               [12] 6282 	mov	r1,a
      004C48 E7               [12] 6283 	mov	a,@r1
      004C49 46               [12] 6284 	orl	a,@r0
      004C4A F6               [12] 6285 	mov	@r0,a
      004C4B 09               [12] 6286 	inc	r1
      004C4C E7               [12] 6287 	mov	a,@r1
      004C4D 08               [12] 6288 	inc	r0
      004C4E 46               [12] 6289 	orl	a,@r0
      004C4F F6               [12] 6290 	mov	@r0,a
      004C50 09               [12] 6291 	inc	r1
      004C51 E7               [12] 6292 	mov	a,@r1
      004C52 08               [12] 6293 	inc	r0
      004C53 46               [12] 6294 	orl	a,@r0
      004C54 F6               [12] 6295 	mov	@r0,a
      004C55 09               [12] 6296 	inc	r1
      004C56 E7               [12] 6297 	mov	a,@r1
      004C57 08               [12] 6298 	inc	r0
      004C58 46               [12] 6299 	orl	a,@r0
      004C59 F6               [12] 6300 	mov	@r0,a
                                   6301 ;	calc.c:293: (void)stack_push(ctx->ps, d1);
      004C5A 8A 82            [24] 6302 	mov	dpl,r2
      004C5C 8B 83            [24] 6303 	mov	dph,r3
      004C5E 8C F0            [24] 6304 	mov	b,r4
      004C60 12 67 7F         [24] 6305 	lcall	__gptrget
      004C63 FA               [12] 6306 	mov	r2,a
      004C64 A3               [24] 6307 	inc	dptr
      004C65 12 67 7F         [24] 6308 	lcall	__gptrget
      004C68 FB               [12] 6309 	mov	r3,a
      004C69 A3               [24] 6310 	inc	dptr
      004C6A 12 67 7F         [24] 6311 	lcall	__gptrget
      004C6D FC               [12] 6312 	mov	r4,a
      004C6E E5 08            [12] 6313 	mov	a,_bp
      004C70 24 19            [12] 6314 	add	a,#0x19
      004C72 F8               [12] 6315 	mov	r0,a
      004C73 E6               [12] 6316 	mov	a,@r0
      004C74 C0 E0            [24] 6317 	push	acc
      004C76 08               [12] 6318 	inc	r0
      004C77 E6               [12] 6319 	mov	a,@r0
      004C78 C0 E0            [24] 6320 	push	acc
      004C7A 08               [12] 6321 	inc	r0
      004C7B E6               [12] 6322 	mov	a,@r0
      004C7C C0 E0            [24] 6323 	push	acc
      004C7E 08               [12] 6324 	inc	r0
      004C7F E6               [12] 6325 	mov	a,@r0
      004C80 C0 E0            [24] 6326 	push	acc
      004C82 8A 82            [24] 6327 	mov	dpl,r2
      004C84 8B 83            [24] 6328 	mov	dph,r3
      004C86 8C F0            [24] 6329 	mov	b,r4
      004C88 12 26 B5         [24] 6330 	lcall	_stack_push
      004C8B E5 81            [12] 6331 	mov	a,sp
      004C8D 24 FC            [12] 6332 	add	a,#0xfc
      004C8F F5 81            [12] 6333 	mov	sp,a
                                   6334 ;	calc.c:295: break;
      004C91 02 54 06         [24] 6335 	ljmp	00249$
                                   6336 ;	calc.c:296: case '^':
      004C94                       6337 00216$:
                                   6338 ;	calc.c:297: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004C94 E5 08            [12] 6339 	mov	a,_bp
      004C96 24 15            [12] 6340 	add	a,#0x15
      004C98 FF               [12] 6341 	mov	r7,a
      004C99 E5 08            [12] 6342 	mov	a,_bp
      004C9B 24 0E            [12] 6343 	add	a,#0x0e
      004C9D F8               [12] 6344 	mov	r0,a
      004C9E A6 07            [24] 6345 	mov	@r0,ar7
      004CA0 08               [12] 6346 	inc	r0
      004CA1 76 00            [12] 6347 	mov	@r0,#0x00
      004CA3 08               [12] 6348 	inc	r0
      004CA4 76 40            [12] 6349 	mov	@r0,#0x40
      004CA6 E5 08            [12] 6350 	mov	a,_bp
      004CA8 24 12            [12] 6351 	add	a,#0x12
      004CAA F8               [12] 6352 	mov	r0,a
      004CAB 74 11            [12] 6353 	mov	a,#0x11
      004CAD 26               [12] 6354 	add	a,@r0
      004CAE FA               [12] 6355 	mov	r2,a
      004CAF 74 40            [12] 6356 	mov	a,#0x40
      004CB1 08               [12] 6357 	inc	r0
      004CB2 36               [12] 6358 	addc	a,@r0
      004CB3 FB               [12] 6359 	mov	r3,a
      004CB4 08               [12] 6360 	inc	r0
      004CB5 86 04            [24] 6361 	mov	ar4,@r0
      004CB7 8A 82            [24] 6362 	mov	dpl,r2
      004CB9 8B 83            [24] 6363 	mov	dph,r3
      004CBB 8C F0            [24] 6364 	mov	b,r4
      004CBD 12 67 7F         [24] 6365 	lcall	__gptrget
      004CC0 FD               [12] 6366 	mov	r5,a
      004CC1 A3               [24] 6367 	inc	dptr
      004CC2 12 67 7F         [24] 6368 	lcall	__gptrget
      004CC5 FE               [12] 6369 	mov	r6,a
      004CC6 A3               [24] 6370 	inc	dptr
      004CC7 12 67 7F         [24] 6371 	lcall	__gptrget
      004CCA FF               [12] 6372 	mov	r7,a
      004CCB C0 04            [24] 6373 	push	ar4
      004CCD C0 03            [24] 6374 	push	ar3
      004CCF C0 02            [24] 6375 	push	ar2
      004CD1 E5 08            [12] 6376 	mov	a,_bp
      004CD3 24 0E            [12] 6377 	add	a,#0x0e
      004CD5 F8               [12] 6378 	mov	r0,a
      004CD6 E6               [12] 6379 	mov	a,@r0
      004CD7 C0 E0            [24] 6380 	push	acc
      004CD9 08               [12] 6381 	inc	r0
      004CDA E6               [12] 6382 	mov	a,@r0
      004CDB C0 E0            [24] 6383 	push	acc
      004CDD 08               [12] 6384 	inc	r0
      004CDE E6               [12] 6385 	mov	a,@r0
      004CDF C0 E0            [24] 6386 	push	acc
      004CE1 8D 82            [24] 6387 	mov	dpl,r5
      004CE3 8E 83            [24] 6388 	mov	dph,r6
      004CE5 8F F0            [24] 6389 	mov	b,r7
      004CE7 12 27 7F         [24] 6390 	lcall	_stack_pop
      004CEA AE 82            [24] 6391 	mov	r6,dpl
      004CEC AF 83            [24] 6392 	mov	r7,dph
      004CEE 15 81            [12] 6393 	dec	sp
      004CF0 15 81            [12] 6394 	dec	sp
      004CF2 15 81            [12] 6395 	dec	sp
      004CF4 D0 02            [24] 6396 	pop	ar2
      004CF6 D0 03            [24] 6397 	pop	ar3
      004CF8 D0 04            [24] 6398 	pop	ar4
      004CFA EE               [12] 6399 	mov	a,r6
      004CFB 4F               [12] 6400 	orl	a,r7
      004CFC 70 25            [24] 6401 	jnz	00221$
      004CFE 7D 44            [12] 6402 	mov	r5,#___str_10
      004D00 7C 80            [12] 6403 	mov	r4,#(___str_10 >> 8)
      004D02 7B 80            [12] 6404 	mov	r3,#0x80
                                   6405 ;	calc.c:51: return;
      004D04                       6406 00472$:
                                   6407 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004D04 8D 82            [24] 6408 	mov	dpl,r5
      004D06 8C 83            [24] 6409 	mov	dph,r4
      004D08 8B F0            [24] 6410 	mov	b,r3
      004D0A 12 67 7F         [24] 6411 	lcall	__gptrget
      004D0D FF               [12] 6412 	mov	r7,a
      004D0E 70 03            [24] 6413 	jnz	01376$
      004D10 02 54 06         [24] 6414 	ljmp	00249$
      004D13                       6415 01376$:
      004D13 7E 00            [12] 6416 	mov	r6,#0x00
      004D15 8F 82            [24] 6417 	mov	dpl,r7
      004D17 8E 83            [24] 6418 	mov	dph,r6
      004D19 12 29 C0         [24] 6419 	lcall	_putchar
      004D1C 0D               [12] 6420 	inc	r5
                                   6421 ;	calc.c:297: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004D1D BD 00 E4         [24] 6422 	cjne	r5,#0x00,00472$
      004D20 0C               [12] 6423 	inc	r4
      004D21 80 E1            [24] 6424 	sjmp	00472$
      004D23                       6425 00221$:
                                   6426 ;	calc.c:298: else if (!stack_pop(ctx->ps, &d1)) {
      004D23 E5 08            [12] 6427 	mov	a,_bp
      004D25 24 19            [12] 6428 	add	a,#0x19
      004D27 FF               [12] 6429 	mov	r7,a
      004D28 E5 08            [12] 6430 	mov	a,_bp
      004D2A 24 0E            [12] 6431 	add	a,#0x0e
      004D2C F8               [12] 6432 	mov	r0,a
      004D2D A6 07            [24] 6433 	mov	@r0,ar7
      004D2F 08               [12] 6434 	inc	r0
      004D30 76 00            [12] 6435 	mov	@r0,#0x00
      004D32 08               [12] 6436 	inc	r0
      004D33 76 40            [12] 6437 	mov	@r0,#0x40
      004D35 8A 82            [24] 6438 	mov	dpl,r2
      004D37 8B 83            [24] 6439 	mov	dph,r3
      004D39 8C F0            [24] 6440 	mov	b,r4
      004D3B 12 67 7F         [24] 6441 	lcall	__gptrget
      004D3E FD               [12] 6442 	mov	r5,a
      004D3F A3               [24] 6443 	inc	dptr
      004D40 12 67 7F         [24] 6444 	lcall	__gptrget
      004D43 FE               [12] 6445 	mov	r6,a
      004D44 A3               [24] 6446 	inc	dptr
      004D45 12 67 7F         [24] 6447 	lcall	__gptrget
      004D48 FF               [12] 6448 	mov	r7,a
      004D49 C0 04            [24] 6449 	push	ar4
      004D4B C0 03            [24] 6450 	push	ar3
      004D4D C0 02            [24] 6451 	push	ar2
      004D4F E5 08            [12] 6452 	mov	a,_bp
      004D51 24 0E            [12] 6453 	add	a,#0x0e
      004D53 F8               [12] 6454 	mov	r0,a
      004D54 E6               [12] 6455 	mov	a,@r0
      004D55 C0 E0            [24] 6456 	push	acc
      004D57 08               [12] 6457 	inc	r0
      004D58 E6               [12] 6458 	mov	a,@r0
      004D59 C0 E0            [24] 6459 	push	acc
      004D5B 08               [12] 6460 	inc	r0
      004D5C E6               [12] 6461 	mov	a,@r0
      004D5D C0 E0            [24] 6462 	push	acc
      004D5F 8D 82            [24] 6463 	mov	dpl,r5
      004D61 8E 83            [24] 6464 	mov	dph,r6
      004D63 8F F0            [24] 6465 	mov	b,r7
      004D65 12 27 7F         [24] 6466 	lcall	_stack_pop
      004D68 AE 82            [24] 6467 	mov	r6,dpl
      004D6A AF 83            [24] 6468 	mov	r7,dph
      004D6C 15 81            [12] 6469 	dec	sp
      004D6E 15 81            [12] 6470 	dec	sp
      004D70 15 81            [12] 6471 	dec	sp
      004D72 D0 02            [24] 6472 	pop	ar2
      004D74 D0 03            [24] 6473 	pop	ar3
      004D76 D0 04            [24] 6474 	pop	ar4
      004D78 EE               [12] 6475 	mov	a,r6
      004D79 4F               [12] 6476 	orl	a,r7
      004D7A 70 5C            [24] 6477 	jnz	00218$
                                   6478 ;	calc.c:299: (void)stack_push(ctx->ps, d0);
      004D7C 8A 82            [24] 6479 	mov	dpl,r2
      004D7E 8B 83            [24] 6480 	mov	dph,r3
      004D80 8C F0            [24] 6481 	mov	b,r4
      004D82 12 67 7F         [24] 6482 	lcall	__gptrget
      004D85 FD               [12] 6483 	mov	r5,a
      004D86 A3               [24] 6484 	inc	dptr
      004D87 12 67 7F         [24] 6485 	lcall	__gptrget
      004D8A FE               [12] 6486 	mov	r6,a
      004D8B A3               [24] 6487 	inc	dptr
      004D8C 12 67 7F         [24] 6488 	lcall	__gptrget
      004D8F FF               [12] 6489 	mov	r7,a
      004D90 E5 08            [12] 6490 	mov	a,_bp
      004D92 24 15            [12] 6491 	add	a,#0x15
      004D94 F8               [12] 6492 	mov	r0,a
      004D95 E6               [12] 6493 	mov	a,@r0
      004D96 C0 E0            [24] 6494 	push	acc
      004D98 08               [12] 6495 	inc	r0
      004D99 E6               [12] 6496 	mov	a,@r0
      004D9A C0 E0            [24] 6497 	push	acc
      004D9C 08               [12] 6498 	inc	r0
      004D9D E6               [12] 6499 	mov	a,@r0
      004D9E C0 E0            [24] 6500 	push	acc
      004DA0 08               [12] 6501 	inc	r0
      004DA1 E6               [12] 6502 	mov	a,@r0
      004DA2 C0 E0            [24] 6503 	push	acc
      004DA4 8D 82            [24] 6504 	mov	dpl,r5
      004DA6 8E 83            [24] 6505 	mov	dph,r6
      004DA8 8F F0            [24] 6506 	mov	b,r7
      004DAA 12 26 B5         [24] 6507 	lcall	_stack_push
      004DAD E5 81            [12] 6508 	mov	a,sp
      004DAF 24 FC            [12] 6509 	add	a,#0xfc
      004DB1 F5 81            [12] 6510 	mov	sp,a
                                   6511 ;	calc.c:300: printstr("\r\nstack underflow\r\n");
      004DB3 7D 44            [12] 6512 	mov	r5,#___str_10
      004DB5 7C 80            [12] 6513 	mov	r4,#(___str_10 >> 8)
      004DB7 7B 80            [12] 6514 	mov	r3,#0x80
                                   6515 ;	calc.c:51: return;
      004DB9                       6516 00475$:
                                   6517 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004DB9 8D 82            [24] 6518 	mov	dpl,r5
      004DBB 8C 83            [24] 6519 	mov	dph,r4
      004DBD 8B F0            [24] 6520 	mov	b,r3
      004DBF 12 67 7F         [24] 6521 	lcall	__gptrget
      004DC2 FF               [12] 6522 	mov	r7,a
      004DC3 70 03            [24] 6523 	jnz	01379$
      004DC5 02 54 06         [24] 6524 	ljmp	00249$
      004DC8                       6525 01379$:
      004DC8 7E 00            [12] 6526 	mov	r6,#0x00
      004DCA 8F 82            [24] 6527 	mov	dpl,r7
      004DCC 8E 83            [24] 6528 	mov	dph,r6
      004DCE 12 29 C0         [24] 6529 	lcall	_putchar
      004DD1 0D               [12] 6530 	inc	r5
                                   6531 ;	calc.c:300: printstr("\r\nstack underflow\r\n");
      004DD2 BD 00 E4         [24] 6532 	cjne	r5,#0x00,00475$
      004DD5 0C               [12] 6533 	inc	r4
      004DD6 80 E1            [24] 6534 	sjmp	00475$
      004DD8                       6535 00218$:
                                   6536 ;	calc.c:302: d1 ^= d0;
      004DD8 E5 08            [12] 6537 	mov	a,_bp
      004DDA 24 19            [12] 6538 	add	a,#0x19
      004DDC F8               [12] 6539 	mov	r0,a
      004DDD E5 08            [12] 6540 	mov	a,_bp
      004DDF 24 15            [12] 6541 	add	a,#0x15
      004DE1 F9               [12] 6542 	mov	r1,a
      004DE2 E7               [12] 6543 	mov	a,@r1
      004DE3 66               [12] 6544 	xrl	a,@r0
      004DE4 F6               [12] 6545 	mov	@r0,a
      004DE5 09               [12] 6546 	inc	r1
      004DE6 E7               [12] 6547 	mov	a,@r1
      004DE7 08               [12] 6548 	inc	r0
      004DE8 66               [12] 6549 	xrl	a,@r0
      004DE9 F6               [12] 6550 	mov	@r0,a
      004DEA 09               [12] 6551 	inc	r1
      004DEB E7               [12] 6552 	mov	a,@r1
      004DEC 08               [12] 6553 	inc	r0
      004DED 66               [12] 6554 	xrl	a,@r0
      004DEE F6               [12] 6555 	mov	@r0,a
      004DEF 09               [12] 6556 	inc	r1
      004DF0 E7               [12] 6557 	mov	a,@r1
      004DF1 08               [12] 6558 	inc	r0
      004DF2 66               [12] 6559 	xrl	a,@r0
      004DF3 F6               [12] 6560 	mov	@r0,a
                                   6561 ;	calc.c:303: (void)stack_push(ctx->ps, d1);
      004DF4 8A 82            [24] 6562 	mov	dpl,r2
      004DF6 8B 83            [24] 6563 	mov	dph,r3
      004DF8 8C F0            [24] 6564 	mov	b,r4
      004DFA 12 67 7F         [24] 6565 	lcall	__gptrget
      004DFD FA               [12] 6566 	mov	r2,a
      004DFE A3               [24] 6567 	inc	dptr
      004DFF 12 67 7F         [24] 6568 	lcall	__gptrget
      004E02 FB               [12] 6569 	mov	r3,a
      004E03 A3               [24] 6570 	inc	dptr
      004E04 12 67 7F         [24] 6571 	lcall	__gptrget
      004E07 FC               [12] 6572 	mov	r4,a
      004E08 E5 08            [12] 6573 	mov	a,_bp
      004E0A 24 19            [12] 6574 	add	a,#0x19
      004E0C F8               [12] 6575 	mov	r0,a
      004E0D E6               [12] 6576 	mov	a,@r0
      004E0E C0 E0            [24] 6577 	push	acc
      004E10 08               [12] 6578 	inc	r0
      004E11 E6               [12] 6579 	mov	a,@r0
      004E12 C0 E0            [24] 6580 	push	acc
      004E14 08               [12] 6581 	inc	r0
      004E15 E6               [12] 6582 	mov	a,@r0
      004E16 C0 E0            [24] 6583 	push	acc
      004E18 08               [12] 6584 	inc	r0
      004E19 E6               [12] 6585 	mov	a,@r0
      004E1A C0 E0            [24] 6586 	push	acc
      004E1C 8A 82            [24] 6587 	mov	dpl,r2
      004E1E 8B 83            [24] 6588 	mov	dph,r3
      004E20 8C F0            [24] 6589 	mov	b,r4
      004E22 12 26 B5         [24] 6590 	lcall	_stack_push
      004E25 E5 81            [12] 6591 	mov	a,sp
      004E27 24 FC            [12] 6592 	add	a,#0xfc
      004E29 F5 81            [12] 6593 	mov	sp,a
                                   6594 ;	calc.c:305: break;
      004E2B 02 54 06         [24] 6595 	ljmp	00249$
                                   6596 ;	calc.c:306: case '>':
      004E2E                       6597 00223$:
                                   6598 ;	calc.c:307: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004E2E E5 08            [12] 6599 	mov	a,_bp
      004E30 24 15            [12] 6600 	add	a,#0x15
      004E32 FC               [12] 6601 	mov	r4,a
      004E33 7B 00            [12] 6602 	mov	r3,#0x00
      004E35 7A 40            [12] 6603 	mov	r2,#0x40
      004E37 E5 08            [12] 6604 	mov	a,_bp
      004E39 24 12            [12] 6605 	add	a,#0x12
      004E3B F8               [12] 6606 	mov	r0,a
      004E3C E5 08            [12] 6607 	mov	a,_bp
      004E3E 24 0B            [12] 6608 	add	a,#0x0b
      004E40 F9               [12] 6609 	mov	r1,a
      004E41 74 11            [12] 6610 	mov	a,#0x11
      004E43 26               [12] 6611 	add	a,@r0
      004E44 F7               [12] 6612 	mov	@r1,a
      004E45 74 40            [12] 6613 	mov	a,#0x40
      004E47 08               [12] 6614 	inc	r0
      004E48 36               [12] 6615 	addc	a,@r0
      004E49 09               [12] 6616 	inc	r1
      004E4A F7               [12] 6617 	mov	@r1,a
      004E4B 08               [12] 6618 	inc	r0
      004E4C 09               [12] 6619 	inc	r1
      004E4D E6               [12] 6620 	mov	a,@r0
      004E4E F7               [12] 6621 	mov	@r1,a
      004E4F E5 08            [12] 6622 	mov	a,_bp
      004E51 24 0B            [12] 6623 	add	a,#0x0b
      004E53 F8               [12] 6624 	mov	r0,a
      004E54 86 82            [24] 6625 	mov	dpl,@r0
      004E56 08               [12] 6626 	inc	r0
      004E57 86 83            [24] 6627 	mov	dph,@r0
      004E59 08               [12] 6628 	inc	r0
      004E5A 86 F0            [24] 6629 	mov	b,@r0
      004E5C 12 67 7F         [24] 6630 	lcall	__gptrget
      004E5F FD               [12] 6631 	mov	r5,a
      004E60 A3               [24] 6632 	inc	dptr
      004E61 12 67 7F         [24] 6633 	lcall	__gptrget
      004E64 FE               [12] 6634 	mov	r6,a
      004E65 A3               [24] 6635 	inc	dptr
      004E66 12 67 7F         [24] 6636 	lcall	__gptrget
      004E69 FF               [12] 6637 	mov	r7,a
      004E6A C0 04            [24] 6638 	push	ar4
      004E6C C0 03            [24] 6639 	push	ar3
      004E6E C0 02            [24] 6640 	push	ar2
      004E70 8D 82            [24] 6641 	mov	dpl,r5
      004E72 8E 83            [24] 6642 	mov	dph,r6
      004E74 8F F0            [24] 6643 	mov	b,r7
      004E76 12 27 7F         [24] 6644 	lcall	_stack_pop
      004E79 AE 82            [24] 6645 	mov	r6,dpl
      004E7B AF 83            [24] 6646 	mov	r7,dph
      004E7D 15 81            [12] 6647 	dec	sp
      004E7F 15 81            [12] 6648 	dec	sp
      004E81 15 81            [12] 6649 	dec	sp
      004E83 EE               [12] 6650 	mov	a,r6
      004E84 4F               [12] 6651 	orl	a,r7
      004E85 70 25            [24] 6652 	jnz	00228$
      004E87 7D 44            [12] 6653 	mov	r5,#___str_10
      004E89 7C 80            [12] 6654 	mov	r4,#(___str_10 >> 8)
      004E8B 7B 80            [12] 6655 	mov	r3,#0x80
                                   6656 ;	calc.c:51: return;
      004E8D                       6657 00478$:
                                   6658 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004E8D 8D 82            [24] 6659 	mov	dpl,r5
      004E8F 8C 83            [24] 6660 	mov	dph,r4
      004E91 8B F0            [24] 6661 	mov	b,r3
      004E93 12 67 7F         [24] 6662 	lcall	__gptrget
      004E96 FF               [12] 6663 	mov	r7,a
      004E97 70 03            [24] 6664 	jnz	01382$
      004E99 02 54 06         [24] 6665 	ljmp	00249$
      004E9C                       6666 01382$:
      004E9C 7E 00            [12] 6667 	mov	r6,#0x00
      004E9E 8F 82            [24] 6668 	mov	dpl,r7
      004EA0 8E 83            [24] 6669 	mov	dph,r6
      004EA2 12 29 C0         [24] 6670 	lcall	_putchar
      004EA5 0D               [12] 6671 	inc	r5
                                   6672 ;	calc.c:307: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004EA6 BD 00 E4         [24] 6673 	cjne	r5,#0x00,00478$
      004EA9 0C               [12] 6674 	inc	r4
      004EAA 80 E1            [24] 6675 	sjmp	00478$
      004EAC                       6676 00228$:
                                   6677 ;	calc.c:308: else if (!stack_pop(ctx->ps, &d1)) {
      004EAC E5 08            [12] 6678 	mov	a,_bp
      004EAE 24 19            [12] 6679 	add	a,#0x19
      004EB0 FC               [12] 6680 	mov	r4,a
      004EB1 7B 00            [12] 6681 	mov	r3,#0x00
      004EB3 7A 40            [12] 6682 	mov	r2,#0x40
      004EB5 E5 08            [12] 6683 	mov	a,_bp
      004EB7 24 0B            [12] 6684 	add	a,#0x0b
      004EB9 F8               [12] 6685 	mov	r0,a
      004EBA 86 82            [24] 6686 	mov	dpl,@r0
      004EBC 08               [12] 6687 	inc	r0
      004EBD 86 83            [24] 6688 	mov	dph,@r0
      004EBF 08               [12] 6689 	inc	r0
      004EC0 86 F0            [24] 6690 	mov	b,@r0
      004EC2 12 67 7F         [24] 6691 	lcall	__gptrget
      004EC5 FD               [12] 6692 	mov	r5,a
      004EC6 A3               [24] 6693 	inc	dptr
      004EC7 12 67 7F         [24] 6694 	lcall	__gptrget
      004ECA FE               [12] 6695 	mov	r6,a
      004ECB A3               [24] 6696 	inc	dptr
      004ECC 12 67 7F         [24] 6697 	lcall	__gptrget
      004ECF FF               [12] 6698 	mov	r7,a
      004ED0 C0 04            [24] 6699 	push	ar4
      004ED2 C0 03            [24] 6700 	push	ar3
      004ED4 C0 02            [24] 6701 	push	ar2
      004ED6 8D 82            [24] 6702 	mov	dpl,r5
      004ED8 8E 83            [24] 6703 	mov	dph,r6
      004EDA 8F F0            [24] 6704 	mov	b,r7
      004EDC 12 27 7F         [24] 6705 	lcall	_stack_pop
      004EDF AE 82            [24] 6706 	mov	r6,dpl
      004EE1 AF 83            [24] 6707 	mov	r7,dph
      004EE3 15 81            [12] 6708 	dec	sp
      004EE5 15 81            [12] 6709 	dec	sp
      004EE7 15 81            [12] 6710 	dec	sp
      004EE9 EE               [12] 6711 	mov	a,r6
      004EEA 4F               [12] 6712 	orl	a,r7
      004EEB 70 63            [24] 6713 	jnz	00225$
                                   6714 ;	calc.c:309: (void)stack_push(ctx->ps, d0);
      004EED E5 08            [12] 6715 	mov	a,_bp
      004EEF 24 0B            [12] 6716 	add	a,#0x0b
      004EF1 F8               [12] 6717 	mov	r0,a
      004EF2 86 82            [24] 6718 	mov	dpl,@r0
      004EF4 08               [12] 6719 	inc	r0
      004EF5 86 83            [24] 6720 	mov	dph,@r0
      004EF7 08               [12] 6721 	inc	r0
      004EF8 86 F0            [24] 6722 	mov	b,@r0
      004EFA 12 67 7F         [24] 6723 	lcall	__gptrget
      004EFD FD               [12] 6724 	mov	r5,a
      004EFE A3               [24] 6725 	inc	dptr
      004EFF 12 67 7F         [24] 6726 	lcall	__gptrget
      004F02 FE               [12] 6727 	mov	r6,a
      004F03 A3               [24] 6728 	inc	dptr
      004F04 12 67 7F         [24] 6729 	lcall	__gptrget
      004F07 FF               [12] 6730 	mov	r7,a
      004F08 E5 08            [12] 6731 	mov	a,_bp
      004F0A 24 15            [12] 6732 	add	a,#0x15
      004F0C F8               [12] 6733 	mov	r0,a
      004F0D E6               [12] 6734 	mov	a,@r0
      004F0E C0 E0            [24] 6735 	push	acc
      004F10 08               [12] 6736 	inc	r0
      004F11 E6               [12] 6737 	mov	a,@r0
      004F12 C0 E0            [24] 6738 	push	acc
      004F14 08               [12] 6739 	inc	r0
      004F15 E6               [12] 6740 	mov	a,@r0
      004F16 C0 E0            [24] 6741 	push	acc
      004F18 08               [12] 6742 	inc	r0
      004F19 E6               [12] 6743 	mov	a,@r0
      004F1A C0 E0            [24] 6744 	push	acc
      004F1C 8D 82            [24] 6745 	mov	dpl,r5
      004F1E 8E 83            [24] 6746 	mov	dph,r6
      004F20 8F F0            [24] 6747 	mov	b,r7
      004F22 12 26 B5         [24] 6748 	lcall	_stack_push
      004F25 E5 81            [12] 6749 	mov	a,sp
      004F27 24 FC            [12] 6750 	add	a,#0xfc
      004F29 F5 81            [12] 6751 	mov	sp,a
                                   6752 ;	calc.c:310: printstr("\r\nstack underflow\r\n");
      004F2B 7D 44            [12] 6753 	mov	r5,#___str_10
      004F2D 7C 80            [12] 6754 	mov	r4,#(___str_10 >> 8)
      004F2F 7B 80            [12] 6755 	mov	r3,#0x80
                                   6756 ;	calc.c:51: return;
      004F31                       6757 00481$:
                                   6758 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004F31 8D 82            [24] 6759 	mov	dpl,r5
      004F33 8C 83            [24] 6760 	mov	dph,r4
      004F35 8B F0            [24] 6761 	mov	b,r3
      004F37 12 67 7F         [24] 6762 	lcall	__gptrget
      004F3A FF               [12] 6763 	mov	r7,a
      004F3B 70 03            [24] 6764 	jnz	01385$
      004F3D 02 54 06         [24] 6765 	ljmp	00249$
      004F40                       6766 01385$:
      004F40 7E 00            [12] 6767 	mov	r6,#0x00
      004F42 8F 82            [24] 6768 	mov	dpl,r7
      004F44 8E 83            [24] 6769 	mov	dph,r6
      004F46 12 29 C0         [24] 6770 	lcall	_putchar
      004F49 0D               [12] 6771 	inc	r5
                                   6772 ;	calc.c:310: printstr("\r\nstack underflow\r\n");
      004F4A BD 00 E4         [24] 6773 	cjne	r5,#0x00,00481$
      004F4D 0C               [12] 6774 	inc	r4
      004F4E 80 E1            [24] 6775 	sjmp	00481$
      004F50                       6776 00225$:
                                   6777 ;	calc.c:312: d1 = (unsigned long)d1 >> ((unsigned long)d0 & 0x0000001flu);
      004F50 E5 08            [12] 6778 	mov	a,_bp
      004F52 24 19            [12] 6779 	add	a,#0x19
      004F54 F8               [12] 6780 	mov	r0,a
      004F55 86 04            [24] 6781 	mov	ar4,@r0
      004F57 08               [12] 6782 	inc	r0
      004F58 86 05            [24] 6783 	mov	ar5,@r0
      004F5A 08               [12] 6784 	inc	r0
      004F5B 86 06            [24] 6785 	mov	ar6,@r0
      004F5D 08               [12] 6786 	inc	r0
      004F5E 86 07            [24] 6787 	mov	ar7,@r0
      004F60 E5 08            [12] 6788 	mov	a,_bp
      004F62 24 15            [12] 6789 	add	a,#0x15
      004F64 F8               [12] 6790 	mov	r0,a
      004F65 86 03            [24] 6791 	mov	ar3,@r0
      004F67 53 03 1F         [24] 6792 	anl	ar3,#0x1f
      004F6A 8B F0            [24] 6793 	mov	b,r3
      004F6C 05 F0            [12] 6794 	inc	b
      004F6E 80 0D            [24] 6795 	sjmp	01388$
      004F70                       6796 01387$:
      004F70 C3               [12] 6797 	clr	c
      004F71 EF               [12] 6798 	mov	a,r7
      004F72 13               [12] 6799 	rrc	a
      004F73 FF               [12] 6800 	mov	r7,a
      004F74 EE               [12] 6801 	mov	a,r6
      004F75 13               [12] 6802 	rrc	a
      004F76 FE               [12] 6803 	mov	r6,a
      004F77 ED               [12] 6804 	mov	a,r5
      004F78 13               [12] 6805 	rrc	a
      004F79 FD               [12] 6806 	mov	r5,a
      004F7A EC               [12] 6807 	mov	a,r4
      004F7B 13               [12] 6808 	rrc	a
      004F7C FC               [12] 6809 	mov	r4,a
      004F7D                       6810 01388$:
      004F7D D5 F0 F0         [24] 6811 	djnz	b,01387$
      004F80 E5 08            [12] 6812 	mov	a,_bp
      004F82 24 19            [12] 6813 	add	a,#0x19
      004F84 F8               [12] 6814 	mov	r0,a
      004F85 A6 04            [24] 6815 	mov	@r0,ar4
      004F87 08               [12] 6816 	inc	r0
      004F88 A6 05            [24] 6817 	mov	@r0,ar5
      004F8A 08               [12] 6818 	inc	r0
      004F8B A6 06            [24] 6819 	mov	@r0,ar6
      004F8D 08               [12] 6820 	inc	r0
      004F8E A6 07            [24] 6821 	mov	@r0,ar7
                                   6822 ;	calc.c:313: (void)stack_push(ctx->ps, d1);
      004F90 E5 08            [12] 6823 	mov	a,_bp
      004F92 24 0B            [12] 6824 	add	a,#0x0b
      004F94 F8               [12] 6825 	mov	r0,a
      004F95 86 82            [24] 6826 	mov	dpl,@r0
      004F97 08               [12] 6827 	inc	r0
      004F98 86 83            [24] 6828 	mov	dph,@r0
      004F9A 08               [12] 6829 	inc	r0
      004F9B 86 F0            [24] 6830 	mov	b,@r0
      004F9D 12 67 7F         [24] 6831 	lcall	__gptrget
      004FA0 FD               [12] 6832 	mov	r5,a
      004FA1 A3               [24] 6833 	inc	dptr
      004FA2 12 67 7F         [24] 6834 	lcall	__gptrget
      004FA5 FE               [12] 6835 	mov	r6,a
      004FA6 A3               [24] 6836 	inc	dptr
      004FA7 12 67 7F         [24] 6837 	lcall	__gptrget
      004FAA FF               [12] 6838 	mov	r7,a
      004FAB E5 08            [12] 6839 	mov	a,_bp
      004FAD 24 19            [12] 6840 	add	a,#0x19
      004FAF F8               [12] 6841 	mov	r0,a
      004FB0 E6               [12] 6842 	mov	a,@r0
      004FB1 C0 E0            [24] 6843 	push	acc
      004FB3 08               [12] 6844 	inc	r0
      004FB4 E6               [12] 6845 	mov	a,@r0
      004FB5 C0 E0            [24] 6846 	push	acc
      004FB7 08               [12] 6847 	inc	r0
      004FB8 E6               [12] 6848 	mov	a,@r0
      004FB9 C0 E0            [24] 6849 	push	acc
      004FBB 08               [12] 6850 	inc	r0
      004FBC E6               [12] 6851 	mov	a,@r0
      004FBD C0 E0            [24] 6852 	push	acc
      004FBF 8D 82            [24] 6853 	mov	dpl,r5
      004FC1 8E 83            [24] 6854 	mov	dph,r6
      004FC3 8F F0            [24] 6855 	mov	b,r7
      004FC5 12 26 B5         [24] 6856 	lcall	_stack_push
      004FC8 E5 81            [12] 6857 	mov	a,sp
      004FCA 24 FC            [12] 6858 	add	a,#0xfc
      004FCC F5 81            [12] 6859 	mov	sp,a
                                   6860 ;	calc.c:315: break;
      004FCE 02 54 06         [24] 6861 	ljmp	00249$
                                   6862 ;	calc.c:316: case ']':
      004FD1                       6863 00230$:
                                   6864 ;	calc.c:317: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004FD1 E5 08            [12] 6865 	mov	a,_bp
      004FD3 24 15            [12] 6866 	add	a,#0x15
      004FD5 FF               [12] 6867 	mov	r7,a
      004FD6 E5 08            [12] 6868 	mov	a,_bp
      004FD8 24 0E            [12] 6869 	add	a,#0x0e
      004FDA F8               [12] 6870 	mov	r0,a
      004FDB A6 07            [24] 6871 	mov	@r0,ar7
      004FDD 08               [12] 6872 	inc	r0
      004FDE 76 00            [12] 6873 	mov	@r0,#0x00
      004FE0 08               [12] 6874 	inc	r0
      004FE1 76 40            [12] 6875 	mov	@r0,#0x40
      004FE3 E5 08            [12] 6876 	mov	a,_bp
      004FE5 24 12            [12] 6877 	add	a,#0x12
      004FE7 F8               [12] 6878 	mov	r0,a
      004FE8 74 11            [12] 6879 	mov	a,#0x11
      004FEA 26               [12] 6880 	add	a,@r0
      004FEB FA               [12] 6881 	mov	r2,a
      004FEC 74 40            [12] 6882 	mov	a,#0x40
      004FEE 08               [12] 6883 	inc	r0
      004FEF 36               [12] 6884 	addc	a,@r0
      004FF0 FB               [12] 6885 	mov	r3,a
      004FF1 08               [12] 6886 	inc	r0
      004FF2 86 04            [24] 6887 	mov	ar4,@r0
      004FF4 8A 82            [24] 6888 	mov	dpl,r2
      004FF6 8B 83            [24] 6889 	mov	dph,r3
      004FF8 8C F0            [24] 6890 	mov	b,r4
      004FFA 12 67 7F         [24] 6891 	lcall	__gptrget
      004FFD FD               [12] 6892 	mov	r5,a
      004FFE A3               [24] 6893 	inc	dptr
      004FFF 12 67 7F         [24] 6894 	lcall	__gptrget
      005002 FE               [12] 6895 	mov	r6,a
      005003 A3               [24] 6896 	inc	dptr
      005004 12 67 7F         [24] 6897 	lcall	__gptrget
      005007 FF               [12] 6898 	mov	r7,a
      005008 C0 04            [24] 6899 	push	ar4
      00500A C0 03            [24] 6900 	push	ar3
      00500C C0 02            [24] 6901 	push	ar2
      00500E E5 08            [12] 6902 	mov	a,_bp
      005010 24 0E            [12] 6903 	add	a,#0x0e
      005012 F8               [12] 6904 	mov	r0,a
      005013 E6               [12] 6905 	mov	a,@r0
      005014 C0 E0            [24] 6906 	push	acc
      005016 08               [12] 6907 	inc	r0
      005017 E6               [12] 6908 	mov	a,@r0
      005018 C0 E0            [24] 6909 	push	acc
      00501A 08               [12] 6910 	inc	r0
      00501B E6               [12] 6911 	mov	a,@r0
      00501C C0 E0            [24] 6912 	push	acc
      00501E 8D 82            [24] 6913 	mov	dpl,r5
      005020 8E 83            [24] 6914 	mov	dph,r6
      005022 8F F0            [24] 6915 	mov	b,r7
      005024 12 27 7F         [24] 6916 	lcall	_stack_pop
      005027 AE 82            [24] 6917 	mov	r6,dpl
      005029 AF 83            [24] 6918 	mov	r7,dph
      00502B 15 81            [12] 6919 	dec	sp
      00502D 15 81            [12] 6920 	dec	sp
      00502F 15 81            [12] 6921 	dec	sp
      005031 D0 02            [24] 6922 	pop	ar2
      005033 D0 03            [24] 6923 	pop	ar3
      005035 D0 04            [24] 6924 	pop	ar4
      005037 EE               [12] 6925 	mov	a,r6
      005038 4F               [12] 6926 	orl	a,r7
      005039 70 25            [24] 6927 	jnz	00235$
      00503B 7D 44            [12] 6928 	mov	r5,#___str_10
      00503D 7C 80            [12] 6929 	mov	r4,#(___str_10 >> 8)
      00503F 7B 80            [12] 6930 	mov	r3,#0x80
                                   6931 ;	calc.c:51: return;
      005041                       6932 00484$:
                                   6933 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005041 8D 82            [24] 6934 	mov	dpl,r5
      005043 8C 83            [24] 6935 	mov	dph,r4
      005045 8B F0            [24] 6936 	mov	b,r3
      005047 12 67 7F         [24] 6937 	lcall	__gptrget
      00504A FF               [12] 6938 	mov	r7,a
      00504B 70 03            [24] 6939 	jnz	01390$
      00504D 02 54 06         [24] 6940 	ljmp	00249$
      005050                       6941 01390$:
      005050 7E 00            [12] 6942 	mov	r6,#0x00
      005052 8F 82            [24] 6943 	mov	dpl,r7
      005054 8E 83            [24] 6944 	mov	dph,r6
      005056 12 29 C0         [24] 6945 	lcall	_putchar
      005059 0D               [12] 6946 	inc	r5
                                   6947 ;	calc.c:317: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00505A BD 00 E4         [24] 6948 	cjne	r5,#0x00,00484$
      00505D 0C               [12] 6949 	inc	r4
      00505E 80 E1            [24] 6950 	sjmp	00484$
      005060                       6951 00235$:
                                   6952 ;	calc.c:318: else if (!stack_pop(ctx->ps, &d1)) {
      005060 E5 08            [12] 6953 	mov	a,_bp
      005062 24 19            [12] 6954 	add	a,#0x19
      005064 FF               [12] 6955 	mov	r7,a
      005065 E5 08            [12] 6956 	mov	a,_bp
      005067 24 0E            [12] 6957 	add	a,#0x0e
      005069 F8               [12] 6958 	mov	r0,a
      00506A A6 07            [24] 6959 	mov	@r0,ar7
      00506C 08               [12] 6960 	inc	r0
      00506D 76 00            [12] 6961 	mov	@r0,#0x00
      00506F 08               [12] 6962 	inc	r0
      005070 76 40            [12] 6963 	mov	@r0,#0x40
      005072 8A 82            [24] 6964 	mov	dpl,r2
      005074 8B 83            [24] 6965 	mov	dph,r3
      005076 8C F0            [24] 6966 	mov	b,r4
      005078 12 67 7F         [24] 6967 	lcall	__gptrget
      00507B FD               [12] 6968 	mov	r5,a
      00507C A3               [24] 6969 	inc	dptr
      00507D 12 67 7F         [24] 6970 	lcall	__gptrget
      005080 FE               [12] 6971 	mov	r6,a
      005081 A3               [24] 6972 	inc	dptr
      005082 12 67 7F         [24] 6973 	lcall	__gptrget
      005085 FF               [12] 6974 	mov	r7,a
      005086 C0 04            [24] 6975 	push	ar4
      005088 C0 03            [24] 6976 	push	ar3
      00508A C0 02            [24] 6977 	push	ar2
      00508C E5 08            [12] 6978 	mov	a,_bp
      00508E 24 0E            [12] 6979 	add	a,#0x0e
      005090 F8               [12] 6980 	mov	r0,a
      005091 E6               [12] 6981 	mov	a,@r0
      005092 C0 E0            [24] 6982 	push	acc
      005094 08               [12] 6983 	inc	r0
      005095 E6               [12] 6984 	mov	a,@r0
      005096 C0 E0            [24] 6985 	push	acc
      005098 08               [12] 6986 	inc	r0
      005099 E6               [12] 6987 	mov	a,@r0
      00509A C0 E0            [24] 6988 	push	acc
      00509C 8D 82            [24] 6989 	mov	dpl,r5
      00509E 8E 83            [24] 6990 	mov	dph,r6
      0050A0 8F F0            [24] 6991 	mov	b,r7
      0050A2 12 27 7F         [24] 6992 	lcall	_stack_pop
      0050A5 AE 82            [24] 6993 	mov	r6,dpl
      0050A7 AF 83            [24] 6994 	mov	r7,dph
      0050A9 15 81            [12] 6995 	dec	sp
      0050AB 15 81            [12] 6996 	dec	sp
      0050AD 15 81            [12] 6997 	dec	sp
      0050AF D0 02            [24] 6998 	pop	ar2
      0050B1 D0 03            [24] 6999 	pop	ar3
      0050B3 D0 04            [24] 7000 	pop	ar4
      0050B5 EE               [12] 7001 	mov	a,r6
      0050B6 4F               [12] 7002 	orl	a,r7
      0050B7 70 5C            [24] 7003 	jnz	00232$
                                   7004 ;	calc.c:319: (void)stack_push(ctx->ps, d0);
      0050B9 8A 82            [24] 7005 	mov	dpl,r2
      0050BB 8B 83            [24] 7006 	mov	dph,r3
      0050BD 8C F0            [24] 7007 	mov	b,r4
      0050BF 12 67 7F         [24] 7008 	lcall	__gptrget
      0050C2 FD               [12] 7009 	mov	r5,a
      0050C3 A3               [24] 7010 	inc	dptr
      0050C4 12 67 7F         [24] 7011 	lcall	__gptrget
      0050C7 FE               [12] 7012 	mov	r6,a
      0050C8 A3               [24] 7013 	inc	dptr
      0050C9 12 67 7F         [24] 7014 	lcall	__gptrget
      0050CC FF               [12] 7015 	mov	r7,a
      0050CD E5 08            [12] 7016 	mov	a,_bp
      0050CF 24 15            [12] 7017 	add	a,#0x15
      0050D1 F8               [12] 7018 	mov	r0,a
      0050D2 E6               [12] 7019 	mov	a,@r0
      0050D3 C0 E0            [24] 7020 	push	acc
      0050D5 08               [12] 7021 	inc	r0
      0050D6 E6               [12] 7022 	mov	a,@r0
      0050D7 C0 E0            [24] 7023 	push	acc
      0050D9 08               [12] 7024 	inc	r0
      0050DA E6               [12] 7025 	mov	a,@r0
      0050DB C0 E0            [24] 7026 	push	acc
      0050DD 08               [12] 7027 	inc	r0
      0050DE E6               [12] 7028 	mov	a,@r0
      0050DF C0 E0            [24] 7029 	push	acc
      0050E1 8D 82            [24] 7030 	mov	dpl,r5
      0050E3 8E 83            [24] 7031 	mov	dph,r6
      0050E5 8F F0            [24] 7032 	mov	b,r7
      0050E7 12 26 B5         [24] 7033 	lcall	_stack_push
      0050EA E5 81            [12] 7034 	mov	a,sp
      0050EC 24 FC            [12] 7035 	add	a,#0xfc
      0050EE F5 81            [12] 7036 	mov	sp,a
                                   7037 ;	calc.c:320: printstr("\r\nstack underflow\r\n");
      0050F0 7D 44            [12] 7038 	mov	r5,#___str_10
      0050F2 7C 80            [12] 7039 	mov	r4,#(___str_10 >> 8)
      0050F4 7B 80            [12] 7040 	mov	r3,#0x80
                                   7041 ;	calc.c:51: return;
      0050F6                       7042 00487$:
                                   7043 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0050F6 8D 82            [24] 7044 	mov	dpl,r5
      0050F8 8C 83            [24] 7045 	mov	dph,r4
      0050FA 8B F0            [24] 7046 	mov	b,r3
      0050FC 12 67 7F         [24] 7047 	lcall	__gptrget
      0050FF FF               [12] 7048 	mov	r7,a
      005100 70 03            [24] 7049 	jnz	01393$
      005102 02 54 06         [24] 7050 	ljmp	00249$
      005105                       7051 01393$:
      005105 7E 00            [12] 7052 	mov	r6,#0x00
      005107 8F 82            [24] 7053 	mov	dpl,r7
      005109 8E 83            [24] 7054 	mov	dph,r6
      00510B 12 29 C0         [24] 7055 	lcall	_putchar
      00510E 0D               [12] 7056 	inc	r5
                                   7057 ;	calc.c:320: printstr("\r\nstack underflow\r\n");
      00510F BD 00 E4         [24] 7058 	cjne	r5,#0x00,00487$
      005112 0C               [12] 7059 	inc	r4
      005113 80 E1            [24] 7060 	sjmp	00487$
      005115                       7061 00232$:
                                   7062 ;	calc.c:322: d1 >>= ((unsigned long)d0 & 0x0000001flu);
      005115 E5 08            [12] 7063 	mov	a,_bp
      005117 24 15            [12] 7064 	add	a,#0x15
      005119 F8               [12] 7065 	mov	r0,a
      00511A 86 07            [24] 7066 	mov	ar7,@r0
      00511C 53 07 1F         [24] 7067 	anl	ar7,#0x1f
      00511F 8F F0            [24] 7068 	mov	b,r7
      005121 05 F0            [12] 7069 	inc	b
      005123 E5 08            [12] 7070 	mov	a,_bp
      005125 24 19            [12] 7071 	add	a,#0x19
      005127 F8               [12] 7072 	mov	r0,a
      005128 08               [12] 7073 	inc	r0
      005129 08               [12] 7074 	inc	r0
      00512A 08               [12] 7075 	inc	r0
      00512B E6               [12] 7076 	mov	a,@r0
      00512C 33               [12] 7077 	rlc	a
      00512D 92 D2            [24] 7078 	mov	ov,c
      00512F 18               [12] 7079 	dec	r0
      005130 18               [12] 7080 	dec	r0
      005131 18               [12] 7081 	dec	r0
      005132 80 14            [24] 7082 	sjmp	01396$
      005134                       7083 01395$:
      005134 A2 D2            [12] 7084 	mov	c,ov
      005136 08               [12] 7085 	inc	r0
      005137 08               [12] 7086 	inc	r0
      005138 08               [12] 7087 	inc	r0
      005139 E6               [12] 7088 	mov	a,@r0
      00513A 13               [12] 7089 	rrc	a
      00513B F6               [12] 7090 	mov	@r0,a
      00513C 18               [12] 7091 	dec	r0
      00513D E6               [12] 7092 	mov	a,@r0
      00513E 13               [12] 7093 	rrc	a
      00513F F6               [12] 7094 	mov	@r0,a
      005140 18               [12] 7095 	dec	r0
      005141 E6               [12] 7096 	mov	a,@r0
      005142 13               [12] 7097 	rrc	a
      005143 F6               [12] 7098 	mov	@r0,a
      005144 18               [12] 7099 	dec	r0
      005145 E6               [12] 7100 	mov	a,@r0
      005146 13               [12] 7101 	rrc	a
      005147 F6               [12] 7102 	mov	@r0,a
      005148                       7103 01396$:
      005148 D5 F0 E9         [24] 7104 	djnz	b,01395$
                                   7105 ;	calc.c:323: (void)stack_push(ctx->ps, d1);
      00514B 8A 82            [24] 7106 	mov	dpl,r2
      00514D 8B 83            [24] 7107 	mov	dph,r3
      00514F 8C F0            [24] 7108 	mov	b,r4
      005151 12 67 7F         [24] 7109 	lcall	__gptrget
      005154 FA               [12] 7110 	mov	r2,a
      005155 A3               [24] 7111 	inc	dptr
      005156 12 67 7F         [24] 7112 	lcall	__gptrget
      005159 FB               [12] 7113 	mov	r3,a
      00515A A3               [24] 7114 	inc	dptr
      00515B 12 67 7F         [24] 7115 	lcall	__gptrget
      00515E FC               [12] 7116 	mov	r4,a
      00515F E5 08            [12] 7117 	mov	a,_bp
      005161 24 19            [12] 7118 	add	a,#0x19
      005163 F8               [12] 7119 	mov	r0,a
      005164 E6               [12] 7120 	mov	a,@r0
      005165 C0 E0            [24] 7121 	push	acc
      005167 08               [12] 7122 	inc	r0
      005168 E6               [12] 7123 	mov	a,@r0
      005169 C0 E0            [24] 7124 	push	acc
      00516B 08               [12] 7125 	inc	r0
      00516C E6               [12] 7126 	mov	a,@r0
      00516D C0 E0            [24] 7127 	push	acc
      00516F 08               [12] 7128 	inc	r0
      005170 E6               [12] 7129 	mov	a,@r0
      005171 C0 E0            [24] 7130 	push	acc
      005173 8A 82            [24] 7131 	mov	dpl,r2
      005175 8B 83            [24] 7132 	mov	dph,r3
      005177 8C F0            [24] 7133 	mov	b,r4
      005179 12 26 B5         [24] 7134 	lcall	_stack_push
      00517C E5 81            [12] 7135 	mov	a,sp
      00517E 24 FC            [12] 7136 	add	a,#0xfc
      005180 F5 81            [12] 7137 	mov	sp,a
                                   7138 ;	calc.c:325: break;
      005182 02 54 06         [24] 7139 	ljmp	00249$
                                   7140 ;	calc.c:326: case '<':
      005185                       7141 00237$:
                                   7142 ;	calc.c:327: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005185 E5 08            [12] 7143 	mov	a,_bp
      005187 24 15            [12] 7144 	add	a,#0x15
      005189 FC               [12] 7145 	mov	r4,a
      00518A 7B 00            [12] 7146 	mov	r3,#0x00
      00518C 7A 40            [12] 7147 	mov	r2,#0x40
      00518E E5 08            [12] 7148 	mov	a,_bp
      005190 24 12            [12] 7149 	add	a,#0x12
      005192 F8               [12] 7150 	mov	r0,a
      005193 E5 08            [12] 7151 	mov	a,_bp
      005195 24 0B            [12] 7152 	add	a,#0x0b
      005197 F9               [12] 7153 	mov	r1,a
      005198 74 11            [12] 7154 	mov	a,#0x11
      00519A 26               [12] 7155 	add	a,@r0
      00519B F7               [12] 7156 	mov	@r1,a
      00519C 74 40            [12] 7157 	mov	a,#0x40
      00519E 08               [12] 7158 	inc	r0
      00519F 36               [12] 7159 	addc	a,@r0
      0051A0 09               [12] 7160 	inc	r1
      0051A1 F7               [12] 7161 	mov	@r1,a
      0051A2 08               [12] 7162 	inc	r0
      0051A3 09               [12] 7163 	inc	r1
      0051A4 E6               [12] 7164 	mov	a,@r0
      0051A5 F7               [12] 7165 	mov	@r1,a
      0051A6 E5 08            [12] 7166 	mov	a,_bp
      0051A8 24 0B            [12] 7167 	add	a,#0x0b
      0051AA F8               [12] 7168 	mov	r0,a
      0051AB 86 82            [24] 7169 	mov	dpl,@r0
      0051AD 08               [12] 7170 	inc	r0
      0051AE 86 83            [24] 7171 	mov	dph,@r0
      0051B0 08               [12] 7172 	inc	r0
      0051B1 86 F0            [24] 7173 	mov	b,@r0
      0051B3 12 67 7F         [24] 7174 	lcall	__gptrget
      0051B6 FD               [12] 7175 	mov	r5,a
      0051B7 A3               [24] 7176 	inc	dptr
      0051B8 12 67 7F         [24] 7177 	lcall	__gptrget
      0051BB FE               [12] 7178 	mov	r6,a
      0051BC A3               [24] 7179 	inc	dptr
      0051BD 12 67 7F         [24] 7180 	lcall	__gptrget
      0051C0 FF               [12] 7181 	mov	r7,a
      0051C1 C0 04            [24] 7182 	push	ar4
      0051C3 C0 03            [24] 7183 	push	ar3
      0051C5 C0 02            [24] 7184 	push	ar2
      0051C7 8D 82            [24] 7185 	mov	dpl,r5
      0051C9 8E 83            [24] 7186 	mov	dph,r6
      0051CB 8F F0            [24] 7187 	mov	b,r7
      0051CD 12 27 7F         [24] 7188 	lcall	_stack_pop
      0051D0 AE 82            [24] 7189 	mov	r6,dpl
      0051D2 AF 83            [24] 7190 	mov	r7,dph
      0051D4 15 81            [12] 7191 	dec	sp
      0051D6 15 81            [12] 7192 	dec	sp
      0051D8 15 81            [12] 7193 	dec	sp
      0051DA EE               [12] 7194 	mov	a,r6
      0051DB 4F               [12] 7195 	orl	a,r7
      0051DC 70 25            [24] 7196 	jnz	00242$
      0051DE 7D 44            [12] 7197 	mov	r5,#___str_10
      0051E0 7C 80            [12] 7198 	mov	r4,#(___str_10 >> 8)
      0051E2 7B 80            [12] 7199 	mov	r3,#0x80
                                   7200 ;	calc.c:51: return;
      0051E4                       7201 00490$:
                                   7202 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0051E4 8D 82            [24] 7203 	mov	dpl,r5
      0051E6 8C 83            [24] 7204 	mov	dph,r4
      0051E8 8B F0            [24] 7205 	mov	b,r3
      0051EA 12 67 7F         [24] 7206 	lcall	__gptrget
      0051ED FF               [12] 7207 	mov	r7,a
      0051EE 70 03            [24] 7208 	jnz	01398$
      0051F0 02 54 06         [24] 7209 	ljmp	00249$
      0051F3                       7210 01398$:
      0051F3 7E 00            [12] 7211 	mov	r6,#0x00
      0051F5 8F 82            [24] 7212 	mov	dpl,r7
      0051F7 8E 83            [24] 7213 	mov	dph,r6
      0051F9 12 29 C0         [24] 7214 	lcall	_putchar
      0051FC 0D               [12] 7215 	inc	r5
                                   7216 ;	calc.c:327: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0051FD BD 00 E4         [24] 7217 	cjne	r5,#0x00,00490$
      005200 0C               [12] 7218 	inc	r4
      005201 80 E1            [24] 7219 	sjmp	00490$
      005203                       7220 00242$:
                                   7221 ;	calc.c:328: else if (!stack_pop(ctx->ps, &d1)) {
      005203 E5 08            [12] 7222 	mov	a,_bp
      005205 24 19            [12] 7223 	add	a,#0x19
      005207 FC               [12] 7224 	mov	r4,a
      005208 7B 00            [12] 7225 	mov	r3,#0x00
      00520A 7A 40            [12] 7226 	mov	r2,#0x40
      00520C E5 08            [12] 7227 	mov	a,_bp
      00520E 24 0B            [12] 7228 	add	a,#0x0b
      005210 F8               [12] 7229 	mov	r0,a
      005211 86 82            [24] 7230 	mov	dpl,@r0
      005213 08               [12] 7231 	inc	r0
      005214 86 83            [24] 7232 	mov	dph,@r0
      005216 08               [12] 7233 	inc	r0
      005217 86 F0            [24] 7234 	mov	b,@r0
      005219 12 67 7F         [24] 7235 	lcall	__gptrget
      00521C FD               [12] 7236 	mov	r5,a
      00521D A3               [24] 7237 	inc	dptr
      00521E 12 67 7F         [24] 7238 	lcall	__gptrget
      005221 FE               [12] 7239 	mov	r6,a
      005222 A3               [24] 7240 	inc	dptr
      005223 12 67 7F         [24] 7241 	lcall	__gptrget
      005226 FF               [12] 7242 	mov	r7,a
      005227 C0 04            [24] 7243 	push	ar4
      005229 C0 03            [24] 7244 	push	ar3
      00522B C0 02            [24] 7245 	push	ar2
      00522D 8D 82            [24] 7246 	mov	dpl,r5
      00522F 8E 83            [24] 7247 	mov	dph,r6
      005231 8F F0            [24] 7248 	mov	b,r7
      005233 12 27 7F         [24] 7249 	lcall	_stack_pop
      005236 AE 82            [24] 7250 	mov	r6,dpl
      005238 AF 83            [24] 7251 	mov	r7,dph
      00523A 15 81            [12] 7252 	dec	sp
      00523C 15 81            [12] 7253 	dec	sp
      00523E 15 81            [12] 7254 	dec	sp
      005240 EE               [12] 7255 	mov	a,r6
      005241 4F               [12] 7256 	orl	a,r7
      005242 70 63            [24] 7257 	jnz	00239$
                                   7258 ;	calc.c:329: (void)stack_push(ctx->ps, d0);
      005244 E5 08            [12] 7259 	mov	a,_bp
      005246 24 0B            [12] 7260 	add	a,#0x0b
      005248 F8               [12] 7261 	mov	r0,a
      005249 86 82            [24] 7262 	mov	dpl,@r0
      00524B 08               [12] 7263 	inc	r0
      00524C 86 83            [24] 7264 	mov	dph,@r0
      00524E 08               [12] 7265 	inc	r0
      00524F 86 F0            [24] 7266 	mov	b,@r0
      005251 12 67 7F         [24] 7267 	lcall	__gptrget
      005254 FD               [12] 7268 	mov	r5,a
      005255 A3               [24] 7269 	inc	dptr
      005256 12 67 7F         [24] 7270 	lcall	__gptrget
      005259 FE               [12] 7271 	mov	r6,a
      00525A A3               [24] 7272 	inc	dptr
      00525B 12 67 7F         [24] 7273 	lcall	__gptrget
      00525E FF               [12] 7274 	mov	r7,a
      00525F E5 08            [12] 7275 	mov	a,_bp
      005261 24 15            [12] 7276 	add	a,#0x15
      005263 F8               [12] 7277 	mov	r0,a
      005264 E6               [12] 7278 	mov	a,@r0
      005265 C0 E0            [24] 7279 	push	acc
      005267 08               [12] 7280 	inc	r0
      005268 E6               [12] 7281 	mov	a,@r0
      005269 C0 E0            [24] 7282 	push	acc
      00526B 08               [12] 7283 	inc	r0
      00526C E6               [12] 7284 	mov	a,@r0
      00526D C0 E0            [24] 7285 	push	acc
      00526F 08               [12] 7286 	inc	r0
      005270 E6               [12] 7287 	mov	a,@r0
      005271 C0 E0            [24] 7288 	push	acc
      005273 8D 82            [24] 7289 	mov	dpl,r5
      005275 8E 83            [24] 7290 	mov	dph,r6
      005277 8F F0            [24] 7291 	mov	b,r7
      005279 12 26 B5         [24] 7292 	lcall	_stack_push
      00527C E5 81            [12] 7293 	mov	a,sp
      00527E 24 FC            [12] 7294 	add	a,#0xfc
      005280 F5 81            [12] 7295 	mov	sp,a
                                   7296 ;	calc.c:330: printstr("\r\nstack underflow\r\n");
      005282 7D 44            [12] 7297 	mov	r5,#___str_10
      005284 7C 80            [12] 7298 	mov	r4,#(___str_10 >> 8)
      005286 7B 80            [12] 7299 	mov	r3,#0x80
                                   7300 ;	calc.c:51: return;
      005288                       7301 00493$:
                                   7302 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005288 8D 82            [24] 7303 	mov	dpl,r5
      00528A 8C 83            [24] 7304 	mov	dph,r4
      00528C 8B F0            [24] 7305 	mov	b,r3
      00528E 12 67 7F         [24] 7306 	lcall	__gptrget
      005291 FF               [12] 7307 	mov	r7,a
      005292 70 03            [24] 7308 	jnz	01401$
      005294 02 54 06         [24] 7309 	ljmp	00249$
      005297                       7310 01401$:
      005297 7E 00            [12] 7311 	mov	r6,#0x00
      005299 8F 82            [24] 7312 	mov	dpl,r7
      00529B 8E 83            [24] 7313 	mov	dph,r6
      00529D 12 29 C0         [24] 7314 	lcall	_putchar
      0052A0 0D               [12] 7315 	inc	r5
                                   7316 ;	calc.c:330: printstr("\r\nstack underflow\r\n");
      0052A1 BD 00 E4         [24] 7317 	cjne	r5,#0x00,00493$
      0052A4 0C               [12] 7318 	inc	r4
      0052A5 80 E1            [24] 7319 	sjmp	00493$
      0052A7                       7320 00239$:
                                   7321 ;	calc.c:332: d1 <<= ((unsigned long)d0 & 0x0000001flu);
      0052A7 E5 08            [12] 7322 	mov	a,_bp
      0052A9 24 15            [12] 7323 	add	a,#0x15
      0052AB F8               [12] 7324 	mov	r0,a
      0052AC 86 07            [24] 7325 	mov	ar7,@r0
      0052AE 74 1F            [12] 7326 	mov	a,#0x1f
      0052B0 5F               [12] 7327 	anl	a,r7
      0052B1 FB               [12] 7328 	mov	r3,a
      0052B2 E5 08            [12] 7329 	mov	a,_bp
      0052B4 24 19            [12] 7330 	add	a,#0x19
      0052B6 F8               [12] 7331 	mov	r0,a
      0052B7 86 04            [24] 7332 	mov	ar4,@r0
      0052B9 08               [12] 7333 	inc	r0
      0052BA 86 05            [24] 7334 	mov	ar5,@r0
      0052BC 08               [12] 7335 	inc	r0
      0052BD 86 06            [24] 7336 	mov	ar6,@r0
      0052BF 08               [12] 7337 	inc	r0
      0052C0 86 07            [24] 7338 	mov	ar7,@r0
      0052C2 8B F0            [24] 7339 	mov	b,r3
      0052C4 05 F0            [12] 7340 	inc	b
      0052C6 80 0C            [24] 7341 	sjmp	01404$
      0052C8                       7342 01403$:
      0052C8 EC               [12] 7343 	mov	a,r4
      0052C9 2C               [12] 7344 	add	a,r4
      0052CA FC               [12] 7345 	mov	r4,a
      0052CB ED               [12] 7346 	mov	a,r5
      0052CC 33               [12] 7347 	rlc	a
      0052CD FD               [12] 7348 	mov	r5,a
      0052CE EE               [12] 7349 	mov	a,r6
      0052CF 33               [12] 7350 	rlc	a
      0052D0 FE               [12] 7351 	mov	r6,a
      0052D1 EF               [12] 7352 	mov	a,r7
      0052D2 33               [12] 7353 	rlc	a
      0052D3 FF               [12] 7354 	mov	r7,a
      0052D4                       7355 01404$:
      0052D4 D5 F0 F1         [24] 7356 	djnz	b,01403$
      0052D7 E5 08            [12] 7357 	mov	a,_bp
      0052D9 24 19            [12] 7358 	add	a,#0x19
      0052DB F8               [12] 7359 	mov	r0,a
      0052DC A6 04            [24] 7360 	mov	@r0,ar4
      0052DE 08               [12] 7361 	inc	r0
      0052DF A6 05            [24] 7362 	mov	@r0,ar5
      0052E1 08               [12] 7363 	inc	r0
      0052E2 A6 06            [24] 7364 	mov	@r0,ar6
      0052E4 08               [12] 7365 	inc	r0
      0052E5 A6 07            [24] 7366 	mov	@r0,ar7
                                   7367 ;	calc.c:333: (void)stack_push(ctx->ps, d1);
      0052E7 E5 08            [12] 7368 	mov	a,_bp
      0052E9 24 0B            [12] 7369 	add	a,#0x0b
      0052EB F8               [12] 7370 	mov	r0,a
      0052EC 86 82            [24] 7371 	mov	dpl,@r0
      0052EE 08               [12] 7372 	inc	r0
      0052EF 86 83            [24] 7373 	mov	dph,@r0
      0052F1 08               [12] 7374 	inc	r0
      0052F2 86 F0            [24] 7375 	mov	b,@r0
      0052F4 12 67 7F         [24] 7376 	lcall	__gptrget
      0052F7 FD               [12] 7377 	mov	r5,a
      0052F8 A3               [24] 7378 	inc	dptr
      0052F9 12 67 7F         [24] 7379 	lcall	__gptrget
      0052FC FE               [12] 7380 	mov	r6,a
      0052FD A3               [24] 7381 	inc	dptr
      0052FE 12 67 7F         [24] 7382 	lcall	__gptrget
      005301 FF               [12] 7383 	mov	r7,a
      005302 E5 08            [12] 7384 	mov	a,_bp
      005304 24 19            [12] 7385 	add	a,#0x19
      005306 F8               [12] 7386 	mov	r0,a
      005307 E6               [12] 7387 	mov	a,@r0
      005308 C0 E0            [24] 7388 	push	acc
      00530A 08               [12] 7389 	inc	r0
      00530B E6               [12] 7390 	mov	a,@r0
      00530C C0 E0            [24] 7391 	push	acc
      00530E 08               [12] 7392 	inc	r0
      00530F E6               [12] 7393 	mov	a,@r0
      005310 C0 E0            [24] 7394 	push	acc
      005312 08               [12] 7395 	inc	r0
      005313 E6               [12] 7396 	mov	a,@r0
      005314 C0 E0            [24] 7397 	push	acc
      005316 8D 82            [24] 7398 	mov	dpl,r5
      005318 8E 83            [24] 7399 	mov	dph,r6
      00531A 8F F0            [24] 7400 	mov	b,r7
      00531C 12 26 B5         [24] 7401 	lcall	_stack_push
      00531F E5 81            [12] 7402 	mov	a,sp
      005321 24 FC            [12] 7403 	add	a,#0xfc
      005323 F5 81            [12] 7404 	mov	sp,a
                                   7405 ;	calc.c:335: break;
      005325 02 54 06         [24] 7406 	ljmp	00249$
                                   7407 ;	calc.c:336: case '~':
      005328                       7408 00244$:
                                   7409 ;	calc.c:337: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005328 E5 08            [12] 7410 	mov	a,_bp
      00532A 24 15            [12] 7411 	add	a,#0x15
      00532C FF               [12] 7412 	mov	r7,a
      00532D E5 08            [12] 7413 	mov	a,_bp
      00532F 24 0E            [12] 7414 	add	a,#0x0e
      005331 F8               [12] 7415 	mov	r0,a
      005332 A6 07            [24] 7416 	mov	@r0,ar7
      005334 08               [12] 7417 	inc	r0
      005335 76 00            [12] 7418 	mov	@r0,#0x00
      005337 08               [12] 7419 	inc	r0
      005338 76 40            [12] 7420 	mov	@r0,#0x40
      00533A E5 08            [12] 7421 	mov	a,_bp
      00533C 24 12            [12] 7422 	add	a,#0x12
      00533E F8               [12] 7423 	mov	r0,a
      00533F 74 11            [12] 7424 	mov	a,#0x11
      005341 26               [12] 7425 	add	a,@r0
      005342 FA               [12] 7426 	mov	r2,a
      005343 74 40            [12] 7427 	mov	a,#0x40
      005345 08               [12] 7428 	inc	r0
      005346 36               [12] 7429 	addc	a,@r0
      005347 FB               [12] 7430 	mov	r3,a
      005348 08               [12] 7431 	inc	r0
      005349 86 04            [24] 7432 	mov	ar4,@r0
      00534B 8A 82            [24] 7433 	mov	dpl,r2
      00534D 8B 83            [24] 7434 	mov	dph,r3
      00534F 8C F0            [24] 7435 	mov	b,r4
      005351 12 67 7F         [24] 7436 	lcall	__gptrget
      005354 FD               [12] 7437 	mov	r5,a
      005355 A3               [24] 7438 	inc	dptr
      005356 12 67 7F         [24] 7439 	lcall	__gptrget
      005359 FE               [12] 7440 	mov	r6,a
      00535A A3               [24] 7441 	inc	dptr
      00535B 12 67 7F         [24] 7442 	lcall	__gptrget
      00535E FF               [12] 7443 	mov	r7,a
      00535F C0 04            [24] 7444 	push	ar4
      005361 C0 03            [24] 7445 	push	ar3
      005363 C0 02            [24] 7446 	push	ar2
      005365 E5 08            [12] 7447 	mov	a,_bp
      005367 24 0E            [12] 7448 	add	a,#0x0e
      005369 F8               [12] 7449 	mov	r0,a
      00536A E6               [12] 7450 	mov	a,@r0
      00536B C0 E0            [24] 7451 	push	acc
      00536D 08               [12] 7452 	inc	r0
      00536E E6               [12] 7453 	mov	a,@r0
      00536F C0 E0            [24] 7454 	push	acc
      005371 08               [12] 7455 	inc	r0
      005372 E6               [12] 7456 	mov	a,@r0
      005373 C0 E0            [24] 7457 	push	acc
      005375 8D 82            [24] 7458 	mov	dpl,r5
      005377 8E 83            [24] 7459 	mov	dph,r6
      005379 8F F0            [24] 7460 	mov	b,r7
      00537B 12 27 7F         [24] 7461 	lcall	_stack_pop
      00537E AE 82            [24] 7462 	mov	r6,dpl
      005380 AF 83            [24] 7463 	mov	r7,dph
      005382 15 81            [12] 7464 	dec	sp
      005384 15 81            [12] 7465 	dec	sp
      005386 15 81            [12] 7466 	dec	sp
      005388 D0 02            [24] 7467 	pop	ar2
      00538A D0 03            [24] 7468 	pop	ar3
      00538C D0 04            [24] 7469 	pop	ar4
      00538E EE               [12] 7470 	mov	a,r6
      00538F 4F               [12] 7471 	orl	a,r7
      005390 70 22            [24] 7472 	jnz	00246$
      005392 7D 44            [12] 7473 	mov	r5,#___str_10
      005394 7C 80            [12] 7474 	mov	r4,#(___str_10 >> 8)
      005396 7B 80            [12] 7475 	mov	r3,#0x80
                                   7476 ;	calc.c:51: return;
      005398                       7477 00496$:
                                   7478 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005398 8D 82            [24] 7479 	mov	dpl,r5
      00539A 8C 83            [24] 7480 	mov	dph,r4
      00539C 8B F0            [24] 7481 	mov	b,r3
      00539E 12 67 7F         [24] 7482 	lcall	__gptrget
      0053A1 FF               [12] 7483 	mov	r7,a
      0053A2 60 62            [24] 7484 	jz	00249$
      0053A4 7E 00            [12] 7485 	mov	r6,#0x00
      0053A6 8F 82            [24] 7486 	mov	dpl,r7
      0053A8 8E 83            [24] 7487 	mov	dph,r6
      0053AA 12 29 C0         [24] 7488 	lcall	_putchar
      0053AD 0D               [12] 7489 	inc	r5
                                   7490 ;	calc.c:337: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0053AE BD 00 E7         [24] 7491 	cjne	r5,#0x00,00496$
      0053B1 0C               [12] 7492 	inc	r4
      0053B2 80 E4            [24] 7493 	sjmp	00496$
      0053B4                       7494 00246$:
                                   7495 ;	calc.c:339: d0 = ~d0;
      0053B4 E5 08            [12] 7496 	mov	a,_bp
      0053B6 24 15            [12] 7497 	add	a,#0x15
      0053B8 F8               [12] 7498 	mov	r0,a
      0053B9 E6               [12] 7499 	mov	a,@r0
      0053BA F4               [12] 7500 	cpl	a
      0053BB F6               [12] 7501 	mov	@r0,a
      0053BC 08               [12] 7502 	inc	r0
      0053BD E6               [12] 7503 	mov	a,@r0
      0053BE F4               [12] 7504 	cpl	a
      0053BF F6               [12] 7505 	mov	@r0,a
      0053C0 08               [12] 7506 	inc	r0
      0053C1 E6               [12] 7507 	mov	a,@r0
      0053C2 F4               [12] 7508 	cpl	a
      0053C3 F6               [12] 7509 	mov	@r0,a
      0053C4 08               [12] 7510 	inc	r0
      0053C5 E6               [12] 7511 	mov	a,@r0
      0053C6 F4               [12] 7512 	cpl	a
      0053C7 F6               [12] 7513 	mov	@r0,a
                                   7514 ;	calc.c:340: (void)stack_push(ctx->ps, d0);
      0053C8 8A 82            [24] 7515 	mov	dpl,r2
      0053CA 8B 83            [24] 7516 	mov	dph,r3
      0053CC 8C F0            [24] 7517 	mov	b,r4
      0053CE 12 67 7F         [24] 7518 	lcall	__gptrget
      0053D1 FA               [12] 7519 	mov	r2,a
      0053D2 A3               [24] 7520 	inc	dptr
      0053D3 12 67 7F         [24] 7521 	lcall	__gptrget
      0053D6 FB               [12] 7522 	mov	r3,a
      0053D7 A3               [24] 7523 	inc	dptr
      0053D8 12 67 7F         [24] 7524 	lcall	__gptrget
      0053DB FC               [12] 7525 	mov	r4,a
      0053DC E5 08            [12] 7526 	mov	a,_bp
      0053DE 24 15            [12] 7527 	add	a,#0x15
      0053E0 F8               [12] 7528 	mov	r0,a
      0053E1 E6               [12] 7529 	mov	a,@r0
      0053E2 C0 E0            [24] 7530 	push	acc
      0053E4 08               [12] 7531 	inc	r0
      0053E5 E6               [12] 7532 	mov	a,@r0
      0053E6 C0 E0            [24] 7533 	push	acc
      0053E8 08               [12] 7534 	inc	r0
      0053E9 E6               [12] 7535 	mov	a,@r0
      0053EA C0 E0            [24] 7536 	push	acc
      0053EC 08               [12] 7537 	inc	r0
      0053ED E6               [12] 7538 	mov	a,@r0
      0053EE C0 E0            [24] 7539 	push	acc
      0053F0 8A 82            [24] 7540 	mov	dpl,r2
      0053F2 8B 83            [24] 7541 	mov	dph,r3
      0053F4 8C F0            [24] 7542 	mov	b,r4
      0053F6 12 26 B5         [24] 7543 	lcall	_stack_push
      0053F9 E5 81            [12] 7544 	mov	a,sp
      0053FB 24 FC            [12] 7545 	add	a,#0xfc
      0053FD F5 81            [12] 7546 	mov	sp,a
                                   7547 ;	calc.c:342: break;
                                   7548 ;	calc.c:343: default:
      0053FF 80 05            [24] 7549 	sjmp	00249$
      005401                       7550 00248$:
                                   7551 ;	calc.c:344: return UNDEF;
      005401 90 80 00         [24] 7552 	mov	dptr,#0x8000
                                   7553 ;	calc.c:345: }
      005404 80 03            [24] 7554 	sjmp	00498$
      005406                       7555 00249$:
                                   7556 ;	calc.c:347: return 1;
      005406 90 00 01         [24] 7557 	mov	dptr,#0x0001
      005409                       7558 00498$:
                                   7559 ;	calc.c:348: }
      005409 85 08 81         [24] 7560 	mov	sp,_bp
      00540C D0 08            [24] 7561 	pop	_bp
      00540E 22               [24] 7562 	ret
                                   7563 ;------------------------------------------------------------
                                   7564 ;Allocation info for local variables in function 'push_acc'
                                   7565 ;------------------------------------------------------------
                                   7566 ;delta                     Allocated to stack - _bp -5
                                   7567 ;_ctx                      Allocated to stack - _bp +1
                                   7568 ;ctx                       Allocated to registers r2 r3 r4 
                                   7569 ;__1310720125              Allocated to registers 
                                   7570 ;s                         Allocated to registers r5 r6 r7 
                                   7571 ;sloc0                     Allocated to stack - _bp +4
                                   7572 ;------------------------------------------------------------
                                   7573 ;	calc.c:350: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7574 ;	-----------------------------------------
                                   7575 ;	 function push_acc
                                   7576 ;	-----------------------------------------
      00540F                       7577 _push_acc:
      00540F C0 08            [24] 7578 	push	_bp
      005411 85 81 08         [24] 7579 	mov	_bp,sp
      005414 C0 82            [24] 7580 	push	dpl
      005416 C0 83            [24] 7581 	push	dph
      005418 C0 F0            [24] 7582 	push	b
      00541A E5 81            [12] 7583 	mov	a,sp
      00541C 24 04            [12] 7584 	add	a,#0x04
      00541E F5 81            [12] 7585 	mov	sp,a
                                   7586 ;	calc.c:351: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      005420 A8 08            [24] 7587 	mov	r0,_bp
      005422 08               [12] 7588 	inc	r0
      005423 86 02            [24] 7589 	mov	ar2,@r0
      005425 08               [12] 7590 	inc	r0
      005426 86 03            [24] 7591 	mov	ar3,@r0
      005428 08               [12] 7592 	inc	r0
      005429 86 04            [24] 7593 	mov	ar4,@r0
                                   7594 ;	calc.c:355: ctx->acc_valid = 0;
      00542B 74 06            [12] 7595 	mov	a,#0x06
      00542D 2A               [12] 7596 	add	a,r2
      00542E FD               [12] 7597 	mov	r5,a
      00542F E4               [12] 7598 	clr	a
      005430 3B               [12] 7599 	addc	a,r3
      005431 FE               [12] 7600 	mov	r6,a
      005432 8C 07            [24] 7601 	mov	ar7,r4
      005434 8D 82            [24] 7602 	mov	dpl,r5
      005436 8E 83            [24] 7603 	mov	dph,r6
      005438 8F F0            [24] 7604 	mov	b,r7
      00543A E4               [12] 7605 	clr	a
      00543B 12 63 04         [24] 7606 	lcall	__gptrput
                                   7607 ;	calc.c:356: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      00543E 74 02            [12] 7608 	mov	a,#0x02
      005440 2A               [12] 7609 	add	a,r2
      005441 FF               [12] 7610 	mov	r7,a
      005442 E4               [12] 7611 	clr	a
      005443 3B               [12] 7612 	addc	a,r3
      005444 FD               [12] 7613 	mov	r5,a
      005445 8C 06            [24] 7614 	mov	ar6,r4
      005447 8F 82            [24] 7615 	mov	dpl,r7
      005449 8D 83            [24] 7616 	mov	dph,r5
      00544B 8E F0            [24] 7617 	mov	b,r6
      00544D E5 08            [12] 7618 	mov	a,_bp
      00544F 24 04            [12] 7619 	add	a,#0x04
      005451 F8               [12] 7620 	mov	r0,a
      005452 12 67 7F         [24] 7621 	lcall	__gptrget
      005455 F6               [12] 7622 	mov	@r0,a
      005456 A3               [24] 7623 	inc	dptr
      005457 12 67 7F         [24] 7624 	lcall	__gptrget
      00545A 08               [12] 7625 	inc	r0
      00545B F6               [12] 7626 	mov	@r0,a
      00545C A3               [24] 7627 	inc	dptr
      00545D 12 67 7F         [24] 7628 	lcall	__gptrget
      005460 08               [12] 7629 	inc	r0
      005461 F6               [12] 7630 	mov	@r0,a
      005462 A3               [24] 7631 	inc	dptr
      005463 12 67 7F         [24] 7632 	lcall	__gptrget
      005466 08               [12] 7633 	inc	r0
      005467 F6               [12] 7634 	mov	@r0,a
      005468 74 11            [12] 7635 	mov	a,#0x11
      00546A 2A               [12] 7636 	add	a,r2
      00546B FA               [12] 7637 	mov	r2,a
      00546C 74 40            [12] 7638 	mov	a,#0x40
      00546E 3B               [12] 7639 	addc	a,r3
      00546F FB               [12] 7640 	mov	r3,a
      005470 8C 07            [24] 7641 	mov	ar7,r4
      005472 8A 82            [24] 7642 	mov	dpl,r2
      005474 8B 83            [24] 7643 	mov	dph,r3
      005476 8F F0            [24] 7644 	mov	b,r7
      005478 12 67 7F         [24] 7645 	lcall	__gptrget
      00547B FA               [12] 7646 	mov	r2,a
      00547C A3               [24] 7647 	inc	dptr
      00547D 12 67 7F         [24] 7648 	lcall	__gptrget
      005480 FB               [12] 7649 	mov	r3,a
      005481 A3               [24] 7650 	inc	dptr
      005482 12 67 7F         [24] 7651 	lcall	__gptrget
      005485 FF               [12] 7652 	mov	r7,a
      005486 E5 08            [12] 7653 	mov	a,_bp
      005488 24 04            [12] 7654 	add	a,#0x04
      00548A F8               [12] 7655 	mov	r0,a
      00548B E6               [12] 7656 	mov	a,@r0
      00548C C0 E0            [24] 7657 	push	acc
      00548E 08               [12] 7658 	inc	r0
      00548F E6               [12] 7659 	mov	a,@r0
      005490 C0 E0            [24] 7660 	push	acc
      005492 08               [12] 7661 	inc	r0
      005493 E6               [12] 7662 	mov	a,@r0
      005494 C0 E0            [24] 7663 	push	acc
      005496 08               [12] 7664 	inc	r0
      005497 E6               [12] 7665 	mov	a,@r0
      005498 C0 E0            [24] 7666 	push	acc
      00549A 8A 82            [24] 7667 	mov	dpl,r2
      00549C 8B 83            [24] 7668 	mov	dph,r3
      00549E 8F F0            [24] 7669 	mov	b,r7
      0054A0 12 26 B5         [24] 7670 	lcall	_stack_push
      0054A3 AE 82            [24] 7671 	mov	r6,dpl
      0054A5 AF 83            [24] 7672 	mov	r7,dph
      0054A7 E5 81            [12] 7673 	mov	a,sp
      0054A9 24 FC            [12] 7674 	add	a,#0xfc
      0054AB F5 81            [12] 7675 	mov	sp,a
      0054AD EE               [12] 7676 	mov	a,r6
      0054AE 4F               [12] 7677 	orl	a,r7
      0054AF 70 22            [24] 7678 	jnz	00102$
      0054B1 7D 93            [12] 7679 	mov	r5,#___str_13
      0054B3 7E 80            [12] 7680 	mov	r6,#(___str_13 >> 8)
      0054B5 7F 80            [12] 7681 	mov	r7,#0x80
                                   7682 ;	calc.c:51: return;
      0054B7                       7683 00109$:
                                   7684 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0054B7 8D 82            [24] 7685 	mov	dpl,r5
      0054B9 8E 83            [24] 7686 	mov	dph,r6
      0054BB 8F F0            [24] 7687 	mov	b,r7
      0054BD 12 67 7F         [24] 7688 	lcall	__gptrget
      0054C0 FC               [12] 7689 	mov	r4,a
      0054C1 60 10            [24] 7690 	jz	00102$
      0054C3 7B 00            [12] 7691 	mov	r3,#0x00
      0054C5 8C 82            [24] 7692 	mov	dpl,r4
      0054C7 8B 83            [24] 7693 	mov	dph,r3
      0054C9 12 29 C0         [24] 7694 	lcall	_putchar
      0054CC 0D               [12] 7695 	inc	r5
                                   7696 ;	calc.c:356: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      0054CD BD 00 E7         [24] 7697 	cjne	r5,#0x00,00109$
      0054D0 0E               [12] 7698 	inc	r6
      0054D1 80 E4            [24] 7699 	sjmp	00109$
      0054D3                       7700 00102$:
                                   7701 ;	calc.c:358: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      0054D3 E5 08            [12] 7702 	mov	a,_bp
      0054D5 24 FB            [12] 7703 	add	a,#0xfb
      0054D7 F8               [12] 7704 	mov	r0,a
      0054D8 86 05            [24] 7705 	mov	ar5,@r0
      0054DA 08               [12] 7706 	inc	r0
      0054DB 86 06            [24] 7707 	mov	ar6,@r0
      0054DD 08               [12] 7708 	inc	r0
      0054DE 86 07            [24] 7709 	mov	ar7,@r0
      0054E0 74 02            [12] 7710 	mov	a,#0x02
      0054E2 2D               [12] 7711 	add	a,r5
      0054E3 FA               [12] 7712 	mov	r2,a
      0054E4 E4               [12] 7713 	clr	a
      0054E5 3E               [12] 7714 	addc	a,r6
      0054E6 FB               [12] 7715 	mov	r3,a
      0054E7 8F 04            [24] 7716 	mov	ar4,r7
      0054E9 8A 82            [24] 7717 	mov	dpl,r2
      0054EB 8B 83            [24] 7718 	mov	dph,r3
      0054ED 8C F0            [24] 7719 	mov	b,r4
      0054EF 12 67 7F         [24] 7720 	lcall	__gptrget
      0054F2 FA               [12] 7721 	mov	r2,a
      0054F3 A3               [24] 7722 	inc	dptr
      0054F4 12 67 7F         [24] 7723 	lcall	__gptrget
      0054F7 FB               [12] 7724 	mov	r3,a
      0054F8 BA 02 27         [24] 7725 	cjne	r2,#0x02,00104$
      0054FB BB 00 24         [24] 7726 	cjne	r3,#0x00,00104$
      0054FE C0 05            [24] 7727 	push	ar5
      005500 C0 06            [24] 7728 	push	ar6
      005502 C0 07            [24] 7729 	push	ar7
      005504 A8 08            [24] 7730 	mov	r0,_bp
      005506 08               [12] 7731 	inc	r0
      005507 86 82            [24] 7732 	mov	dpl,@r0
      005509 08               [12] 7733 	inc	r0
      00550A 86 83            [24] 7734 	mov	dph,@r0
      00550C 08               [12] 7735 	inc	r0
      00550D 86 F0            [24] 7736 	mov	b,@r0
      00550F 12 31 81         [24] 7737 	lcall	_operator
      005512 AE 82            [24] 7738 	mov	r6,dpl
      005514 AF 83            [24] 7739 	mov	r7,dph
      005516 15 81            [12] 7740 	dec	sp
      005518 15 81            [12] 7741 	dec	sp
      00551A 15 81            [12] 7742 	dec	sp
      00551C 8E 82            [24] 7743 	mov	dpl,r6
      00551E 8F 83            [24] 7744 	mov	dph,r7
      005520 80 03            [24] 7745 	sjmp	00111$
      005522                       7746 00104$:
                                   7747 ;	calc.c:359: else return 1;
      005522 90 00 01         [24] 7748 	mov	dptr,#0x0001
      005525                       7749 00111$:
                                   7750 ;	calc.c:360: }
      005525 85 08 81         [24] 7751 	mov	sp,_bp
      005528 D0 08            [24] 7752 	pop	_bp
      00552A 22               [24] 7753 	ret
                                   7754 ;------------------------------------------------------------
                                   7755 ;Allocation info for local variables in function 'reset_acc'
                                   7756 ;------------------------------------------------------------
                                   7757 ;delta                     Allocated to stack - _bp -5
                                   7758 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7759 ;ctx                       Allocated to registers r5 r6 r7 
                                   7760 ;------------------------------------------------------------
                                   7761 ;	calc.c:362: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7762 ;	-----------------------------------------
                                   7763 ;	 function reset_acc
                                   7764 ;	-----------------------------------------
      00552B                       7765 _reset_acc:
      00552B C0 08            [24] 7766 	push	_bp
      00552D 85 81 08         [24] 7767 	mov	_bp,sp
      005530 AD 82            [24] 7768 	mov	r5,dpl
      005532 AE 83            [24] 7769 	mov	r6,dph
      005534 AF F0            [24] 7770 	mov	r7,b
                                   7771 ;	calc.c:363: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   7772 ;	calc.c:365: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      005536 E5 08            [12] 7773 	mov	a,_bp
      005538 24 FB            [12] 7774 	add	a,#0xfb
      00553A F8               [12] 7775 	mov	r0,a
      00553B 86 02            [24] 7776 	mov	ar2,@r0
      00553D 08               [12] 7777 	inc	r0
      00553E 86 03            [24] 7778 	mov	ar3,@r0
      005540 08               [12] 7779 	inc	r0
      005541 86 04            [24] 7780 	mov	ar4,@r0
      005543 74 02            [12] 7781 	mov	a,#0x02
      005545 2A               [12] 7782 	add	a,r2
      005546 FA               [12] 7783 	mov	r2,a
      005547 E4               [12] 7784 	clr	a
      005548 3B               [12] 7785 	addc	a,r3
      005549 FB               [12] 7786 	mov	r3,a
      00554A 8A 82            [24] 7787 	mov	dpl,r2
      00554C 8B 83            [24] 7788 	mov	dph,r3
      00554E 8C F0            [24] 7789 	mov	b,r4
      005550 12 67 7F         [24] 7790 	lcall	__gptrget
      005553 FA               [12] 7791 	mov	r2,a
      005554 A3               [24] 7792 	inc	dptr
      005555 12 67 7F         [24] 7793 	lcall	__gptrget
      005558 FB               [12] 7794 	mov	r3,a
      005559 BA 07 16         [24] 7795 	cjne	r2,#0x07,00102$
      00555C BB 00 13         [24] 7796 	cjne	r3,#0x00,00102$
      00555F 74 06            [12] 7797 	mov	a,#0x06
      005561 2D               [12] 7798 	add	a,r5
      005562 FA               [12] 7799 	mov	r2,a
      005563 E4               [12] 7800 	clr	a
      005564 3E               [12] 7801 	addc	a,r6
      005565 FB               [12] 7802 	mov	r3,a
      005566 8F 04            [24] 7803 	mov	ar4,r7
      005568 8A 82            [24] 7804 	mov	dpl,r2
      00556A 8B 83            [24] 7805 	mov	dph,r3
      00556C 8C F0            [24] 7806 	mov	b,r4
      00556E E4               [12] 7807 	clr	a
      00556F 12 63 04         [24] 7808 	lcall	__gptrput
      005572                       7809 00102$:
                                   7810 ;	calc.c:366: ctx->acc = 0l;
      005572 74 02            [12] 7811 	mov	a,#0x02
      005574 2D               [12] 7812 	add	a,r5
      005575 FD               [12] 7813 	mov	r5,a
      005576 E4               [12] 7814 	clr	a
      005577 3E               [12] 7815 	addc	a,r6
      005578 FE               [12] 7816 	mov	r6,a
      005579 8D 82            [24] 7817 	mov	dpl,r5
      00557B 8E 83            [24] 7818 	mov	dph,r6
      00557D 8F F0            [24] 7819 	mov	b,r7
      00557F E4               [12] 7820 	clr	a
      005580 12 63 04         [24] 7821 	lcall	__gptrput
      005583 A3               [24] 7822 	inc	dptr
      005584 12 63 04         [24] 7823 	lcall	__gptrput
      005587 A3               [24] 7824 	inc	dptr
      005588 12 63 04         [24] 7825 	lcall	__gptrput
      00558B A3               [24] 7826 	inc	dptr
      00558C 12 63 04         [24] 7827 	lcall	__gptrput
                                   7828 ;	calc.c:368: return 1;
      00558F 90 00 01         [24] 7829 	mov	dptr,#0x0001
                                   7830 ;	calc.c:369: }
      005592 D0 08            [24] 7831 	pop	_bp
      005594 22               [24] 7832 	ret
                                   7833 ;------------------------------------------------------------
                                   7834 ;Allocation info for local variables in function 'reset_base'
                                   7835 ;------------------------------------------------------------
                                   7836 ;delta                     Allocated to stack - _bp -5
                                   7837 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7838 ;ctx                       Allocated to registers r5 r6 r7 
                                   7839 ;------------------------------------------------------------
                                   7840 ;	calc.c:371: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   7841 ;	-----------------------------------------
                                   7842 ;	 function reset_base
                                   7843 ;	-----------------------------------------
      005595                       7844 _reset_base:
      005595 C0 08            [24] 7845 	push	_bp
      005597 85 81 08         [24] 7846 	mov	_bp,sp
      00559A AD 82            [24] 7847 	mov	r5,dpl
      00559C AE 83            [24] 7848 	mov	r6,dph
      00559E AF F0            [24] 7849 	mov	r7,b
                                   7850 ;	calc.c:372: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   7851 ;	calc.c:376: switch (ctx->digit[0]) {
      0055A0 74 07            [12] 7852 	mov	a,#0x07
      0055A2 2D               [12] 7853 	add	a,r5
      0055A3 FA               [12] 7854 	mov	r2,a
      0055A4 E4               [12] 7855 	clr	a
      0055A5 3E               [12] 7856 	addc	a,r6
      0055A6 FB               [12] 7857 	mov	r3,a
      0055A7 8F 04            [24] 7858 	mov	ar4,r7
      0055A9 8A 82            [24] 7859 	mov	dpl,r2
      0055AB 8B 83            [24] 7860 	mov	dph,r3
      0055AD 8C F0            [24] 7861 	mov	b,r4
      0055AF 12 67 7F         [24] 7862 	lcall	__gptrget
      0055B2 FC               [12] 7863 	mov	r4,a
      0055B3 BC 48 02         [24] 7864 	cjne	r4,#0x48,00124$
      0055B6 80 0F            [24] 7865 	sjmp	00101$
      0055B8                       7866 00124$:
      0055B8 BC 4F 02         [24] 7867 	cjne	r4,#0x4f,00125$
      0055BB 80 2E            [24] 7868 	sjmp	00103$
      0055BD                       7869 00125$:
      0055BD BC 68 02         [24] 7870 	cjne	r4,#0x68,00126$
      0055C0 80 17            [24] 7871 	sjmp	00102$
      0055C2                       7872 00126$:
                                   7873 ;	calc.c:377: case 'H':
      0055C2 BC 6F 48         [24] 7874 	cjne	r4,#0x6f,00105$
      0055C5 80 36            [24] 7875 	sjmp	00104$
      0055C7                       7876 00101$:
                                   7877 ;	calc.c:378: ctx->base = 16;
      0055C7 8D 82            [24] 7878 	mov	dpl,r5
      0055C9 8E 83            [24] 7879 	mov	dph,r6
      0055CB 8F F0            [24] 7880 	mov	b,r7
      0055CD 74 10            [12] 7881 	mov	a,#0x10
      0055CF 12 63 04         [24] 7882 	lcall	__gptrput
      0055D2 A3               [24] 7883 	inc	dptr
      0055D3 E4               [12] 7884 	clr	a
      0055D4 12 63 04         [24] 7885 	lcall	__gptrput
                                   7886 ;	calc.c:379: break;
                                   7887 ;	calc.c:380: case 'h':
      0055D7 80 34            [24] 7888 	sjmp	00105$
      0055D9                       7889 00102$:
                                   7890 ;	calc.c:381: ctx->base = 10;
      0055D9 8D 82            [24] 7891 	mov	dpl,r5
      0055DB 8E 83            [24] 7892 	mov	dph,r6
      0055DD 8F F0            [24] 7893 	mov	b,r7
      0055DF 74 0A            [12] 7894 	mov	a,#0x0a
      0055E1 12 63 04         [24] 7895 	lcall	__gptrput
      0055E4 A3               [24] 7896 	inc	dptr
      0055E5 E4               [12] 7897 	clr	a
      0055E6 12 63 04         [24] 7898 	lcall	__gptrput
                                   7899 ;	calc.c:382: break;
                                   7900 ;	calc.c:383: case 'O':
      0055E9 80 22            [24] 7901 	sjmp	00105$
      0055EB                       7902 00103$:
                                   7903 ;	calc.c:384: ctx->base = 8;
      0055EB 8D 82            [24] 7904 	mov	dpl,r5
      0055ED 8E 83            [24] 7905 	mov	dph,r6
      0055EF 8F F0            [24] 7906 	mov	b,r7
      0055F1 74 08            [12] 7907 	mov	a,#0x08
      0055F3 12 63 04         [24] 7908 	lcall	__gptrput
      0055F6 A3               [24] 7909 	inc	dptr
      0055F7 E4               [12] 7910 	clr	a
      0055F8 12 63 04         [24] 7911 	lcall	__gptrput
                                   7912 ;	calc.c:385: break;
                                   7913 ;	calc.c:386: case 'o':
      0055FB 80 10            [24] 7914 	sjmp	00105$
      0055FD                       7915 00104$:
                                   7916 ;	calc.c:387: ctx->base = 2;
      0055FD 8D 82            [24] 7917 	mov	dpl,r5
      0055FF 8E 83            [24] 7918 	mov	dph,r6
      005601 8F F0            [24] 7919 	mov	b,r7
      005603 74 02            [12] 7920 	mov	a,#0x02
      005605 12 63 04         [24] 7921 	lcall	__gptrput
      005608 A3               [24] 7922 	inc	dptr
      005609 E4               [12] 7923 	clr	a
      00560A 12 63 04         [24] 7924 	lcall	__gptrput
                                   7925 ;	calc.c:389: }
      00560D                       7926 00105$:
                                   7927 ;	calc.c:391: return 1;
      00560D 90 00 01         [24] 7928 	mov	dptr,#0x0001
                                   7929 ;	calc.c:392: }
      005610 D0 08            [24] 7930 	pop	_bp
      005612 22               [24] 7931 	ret
                                   7932 ;------------------------------------------------------------
                                   7933 ;Allocation info for local variables in function 'status'
                                   7934 ;------------------------------------------------------------
                                   7935 ;delta                     Allocated to stack - _bp -5
                                   7936 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7937 ;ctx                       Allocated to stack - _bp +4
                                   7938 ;__1310720127              Allocated to registers 
                                   7939 ;d                         Allocated to stack - _bp +7
                                   7940 ;mask                      Allocated to stack - _bp +11
                                   7941 ;sloc0                     Allocated to stack - _bp +1
                                   7942 ;------------------------------------------------------------
                                   7943 ;	calc.c:394: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   7944 ;	-----------------------------------------
                                   7945 ;	 function status
                                   7946 ;	-----------------------------------------
      005613                       7947 _status:
      005613 C0 08            [24] 7948 	push	_bp
      005615 E5 81            [12] 7949 	mov	a,sp
      005617 F5 08            [12] 7950 	mov	_bp,a
      005619 24 0E            [12] 7951 	add	a,#0x0e
      00561B F5 81            [12] 7952 	mov	sp,a
      00561D AD 82            [24] 7953 	mov	r5,dpl
      00561F AE 83            [24] 7954 	mov	r6,dph
      005621 AF F0            [24] 7955 	mov	r7,b
                                   7956 ;	calc.c:395: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      005623 E5 08            [12] 7957 	mov	a,_bp
      005625 24 04            [12] 7958 	add	a,#0x04
      005627 F8               [12] 7959 	mov	r0,a
      005628 A6 05            [24] 7960 	mov	@r0,ar5
      00562A 08               [12] 7961 	inc	r0
      00562B A6 06            [24] 7962 	mov	@r0,ar6
      00562D 08               [12] 7963 	inc	r0
      00562E A6 07            [24] 7964 	mov	@r0,ar7
                                   7965 ;	calc.c:399: printf("\r\nbase = %d, ", ctx->base);
      005630 E5 08            [12] 7966 	mov	a,_bp
      005632 24 04            [12] 7967 	add	a,#0x04
      005634 F8               [12] 7968 	mov	r0,a
      005635 86 82            [24] 7969 	mov	dpl,@r0
      005637 08               [12] 7970 	inc	r0
      005638 86 83            [24] 7971 	mov	dph,@r0
      00563A 08               [12] 7972 	inc	r0
      00563B 86 F0            [24] 7973 	mov	b,@r0
      00563D 12 67 7F         [24] 7974 	lcall	__gptrget
      005640 FB               [12] 7975 	mov	r3,a
      005641 A3               [24] 7976 	inc	dptr
      005642 12 67 7F         [24] 7977 	lcall	__gptrget
      005645 FC               [12] 7978 	mov	r4,a
      005646 C0 03            [24] 7979 	push	ar3
      005648 C0 04            [24] 7980 	push	ar4
      00564A 74 BB            [12] 7981 	mov	a,#___str_15
      00564C C0 E0            [24] 7982 	push	acc
      00564E 74 80            [12] 7983 	mov	a,#(___str_15 >> 8)
      005650 C0 E0            [24] 7984 	push	acc
      005652 74 80            [12] 7985 	mov	a,#0x80
      005654 C0 E0            [24] 7986 	push	acc
      005656 12 67 46         [24] 7987 	lcall	_printf
      005659 E5 81            [12] 7988 	mov	a,sp
      00565B 24 FB            [12] 7989 	add	a,#0xfb
      00565D F5 81            [12] 7990 	mov	sp,a
                                   7991 ;	calc.c:400: printf("acc = %ld / ", ctx->acc);
      00565F E5 08            [12] 7992 	mov	a,_bp
      005661 24 04            [12] 7993 	add	a,#0x04
      005663 F8               [12] 7994 	mov	r0,a
      005664 A9 08            [24] 7995 	mov	r1,_bp
      005666 09               [12] 7996 	inc	r1
      005667 74 02            [12] 7997 	mov	a,#0x02
      005669 26               [12] 7998 	add	a,@r0
      00566A F7               [12] 7999 	mov	@r1,a
      00566B E4               [12] 8000 	clr	a
      00566C 08               [12] 8001 	inc	r0
      00566D 36               [12] 8002 	addc	a,@r0
      00566E 09               [12] 8003 	inc	r1
      00566F F7               [12] 8004 	mov	@r1,a
      005670 08               [12] 8005 	inc	r0
      005671 09               [12] 8006 	inc	r1
      005672 E6               [12] 8007 	mov	a,@r0
      005673 F7               [12] 8008 	mov	@r1,a
      005674 A8 08            [24] 8009 	mov	r0,_bp
      005676 08               [12] 8010 	inc	r0
      005677 86 82            [24] 8011 	mov	dpl,@r0
      005679 08               [12] 8012 	inc	r0
      00567A 86 83            [24] 8013 	mov	dph,@r0
      00567C 08               [12] 8014 	inc	r0
      00567D 86 F0            [24] 8015 	mov	b,@r0
      00567F 12 67 7F         [24] 8016 	lcall	__gptrget
      005682 FC               [12] 8017 	mov	r4,a
      005683 A3               [24] 8018 	inc	dptr
      005684 12 67 7F         [24] 8019 	lcall	__gptrget
      005687 FD               [12] 8020 	mov	r5,a
      005688 A3               [24] 8021 	inc	dptr
      005689 12 67 7F         [24] 8022 	lcall	__gptrget
      00568C FE               [12] 8023 	mov	r6,a
      00568D A3               [24] 8024 	inc	dptr
      00568E 12 67 7F         [24] 8025 	lcall	__gptrget
      005691 FF               [12] 8026 	mov	r7,a
      005692 C0 04            [24] 8027 	push	ar4
      005694 C0 05            [24] 8028 	push	ar5
      005696 C0 06            [24] 8029 	push	ar6
      005698 C0 07            [24] 8030 	push	ar7
      00569A 74 C9            [12] 8031 	mov	a,#___str_16
      00569C C0 E0            [24] 8032 	push	acc
      00569E 74 80            [12] 8033 	mov	a,#(___str_16 >> 8)
      0056A0 C0 E0            [24] 8034 	push	acc
      0056A2 74 80            [12] 8035 	mov	a,#0x80
      0056A4 C0 E0            [24] 8036 	push	acc
      0056A6 12 67 46         [24] 8037 	lcall	_printf
      0056A9 E5 81            [12] 8038 	mov	a,sp
      0056AB 24 F9            [12] 8039 	add	a,#0xf9
      0056AD F5 81            [12] 8040 	mov	sp,a
                                   8041 ;	calc.c:401: printf("%08lx / ", ctx->acc);
      0056AF A8 08            [24] 8042 	mov	r0,_bp
      0056B1 08               [12] 8043 	inc	r0
      0056B2 86 82            [24] 8044 	mov	dpl,@r0
      0056B4 08               [12] 8045 	inc	r0
      0056B5 86 83            [24] 8046 	mov	dph,@r0
      0056B7 08               [12] 8047 	inc	r0
      0056B8 86 F0            [24] 8048 	mov	b,@r0
      0056BA 12 67 7F         [24] 8049 	lcall	__gptrget
      0056BD FC               [12] 8050 	mov	r4,a
      0056BE A3               [24] 8051 	inc	dptr
      0056BF 12 67 7F         [24] 8052 	lcall	__gptrget
      0056C2 FD               [12] 8053 	mov	r5,a
      0056C3 A3               [24] 8054 	inc	dptr
      0056C4 12 67 7F         [24] 8055 	lcall	__gptrget
      0056C7 FE               [12] 8056 	mov	r6,a
      0056C8 A3               [24] 8057 	inc	dptr
      0056C9 12 67 7F         [24] 8058 	lcall	__gptrget
      0056CC FF               [12] 8059 	mov	r7,a
      0056CD C0 04            [24] 8060 	push	ar4
      0056CF C0 05            [24] 8061 	push	ar5
      0056D1 C0 06            [24] 8062 	push	ar6
      0056D3 C0 07            [24] 8063 	push	ar7
      0056D5 74 27            [12] 8064 	mov	a,#___str_4
      0056D7 C0 E0            [24] 8065 	push	acc
      0056D9 74 80            [12] 8066 	mov	a,#(___str_4 >> 8)
      0056DB C0 E0            [24] 8067 	push	acc
      0056DD 74 80            [12] 8068 	mov	a,#0x80
      0056DF C0 E0            [24] 8069 	push	acc
      0056E1 12 67 46         [24] 8070 	lcall	_printf
      0056E4 E5 81            [12] 8071 	mov	a,sp
      0056E6 24 F9            [12] 8072 	add	a,#0xf9
      0056E8 F5 81            [12] 8073 	mov	sp,a
                                   8074 ;	calc.c:402: printbin(ctx->acc);
      0056EA A8 08            [24] 8075 	mov	r0,_bp
      0056EC 08               [12] 8076 	inc	r0
      0056ED 86 82            [24] 8077 	mov	dpl,@r0
      0056EF 08               [12] 8078 	inc	r0
      0056F0 86 83            [24] 8079 	mov	dph,@r0
      0056F2 08               [12] 8080 	inc	r0
      0056F3 86 F0            [24] 8081 	mov	b,@r0
      0056F5 E5 08            [12] 8082 	mov	a,_bp
      0056F7 24 07            [12] 8083 	add	a,#0x07
      0056F9 F9               [12] 8084 	mov	r1,a
      0056FA 12 67 7F         [24] 8085 	lcall	__gptrget
      0056FD F7               [12] 8086 	mov	@r1,a
      0056FE A3               [24] 8087 	inc	dptr
      0056FF 12 67 7F         [24] 8088 	lcall	__gptrget
      005702 09               [12] 8089 	inc	r1
      005703 F7               [12] 8090 	mov	@r1,a
      005704 A3               [24] 8091 	inc	dptr
      005705 12 67 7F         [24] 8092 	lcall	__gptrget
      005708 09               [12] 8093 	inc	r1
      005709 F7               [12] 8094 	mov	@r1,a
      00570A A3               [24] 8095 	inc	dptr
      00570B 12 67 7F         [24] 8096 	lcall	__gptrget
      00570E 09               [12] 8097 	inc	r1
      00570F F7               [12] 8098 	mov	@r1,a
                                   8099 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005710 E5 08            [12] 8100 	mov	a,_bp
      005712 24 0B            [12] 8101 	add	a,#0x0b
      005714 F8               [12] 8102 	mov	r0,a
      005715 E4               [12] 8103 	clr	a
      005716 F6               [12] 8104 	mov	@r0,a
      005717 08               [12] 8105 	inc	r0
      005718 F6               [12] 8106 	mov	@r0,a
      005719 08               [12] 8107 	inc	r0
      00571A F6               [12] 8108 	mov	@r0,a
      00571B 08               [12] 8109 	inc	r0
      00571C 76 80            [12] 8110 	mov	@r0,#0x80
      00571E                       8111 00103$:
                                   8112 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00571E E5 08            [12] 8113 	mov	a,_bp
      005720 24 07            [12] 8114 	add	a,#0x07
      005722 F8               [12] 8115 	mov	r0,a
      005723 86 04            [24] 8116 	mov	ar4,@r0
      005725 08               [12] 8117 	inc	r0
      005726 86 05            [24] 8118 	mov	ar5,@r0
      005728 08               [12] 8119 	inc	r0
      005729 86 06            [24] 8120 	mov	ar6,@r0
      00572B 08               [12] 8121 	inc	r0
      00572C 86 07            [24] 8122 	mov	ar7,@r0
      00572E E5 08            [12] 8123 	mov	a,_bp
      005730 24 0B            [12] 8124 	add	a,#0x0b
      005732 F8               [12] 8125 	mov	r0,a
      005733 E6               [12] 8126 	mov	a,@r0
      005734 52 04            [12] 8127 	anl	ar4,a
      005736 08               [12] 8128 	inc	r0
      005737 E6               [12] 8129 	mov	a,@r0
      005738 52 05            [12] 8130 	anl	ar5,a
      00573A 08               [12] 8131 	inc	r0
      00573B E6               [12] 8132 	mov	a,@r0
      00573C 52 06            [12] 8133 	anl	ar6,a
      00573E 08               [12] 8134 	inc	r0
      00573F E6               [12] 8135 	mov	a,@r0
      005740 52 07            [12] 8136 	anl	ar7,a
      005742 EC               [12] 8137 	mov	a,r4
      005743 4D               [12] 8138 	orl	a,r5
      005744 4E               [12] 8139 	orl	a,r6
      005745 4F               [12] 8140 	orl	a,r7
      005746 60 06            [24] 8141 	jz	00107$
      005748 7E 31            [12] 8142 	mov	r6,#0x31
      00574A 7F 00            [12] 8143 	mov	r7,#0x00
      00574C 80 04            [24] 8144 	sjmp	00108$
      00574E                       8145 00107$:
      00574E 7E 30            [12] 8146 	mov	r6,#0x30
      005750 7F 00            [12] 8147 	mov	r7,#0x00
      005752                       8148 00108$:
      005752 8E 82            [24] 8149 	mov	dpl,r6
      005754 8F 83            [24] 8150 	mov	dph,r7
      005756 12 29 C0         [24] 8151 	lcall	_putchar
                                   8152 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005759 E5 08            [12] 8153 	mov	a,_bp
      00575B 24 0B            [12] 8154 	add	a,#0x0b
      00575D F8               [12] 8155 	mov	r0,a
      00575E 08               [12] 8156 	inc	r0
      00575F 08               [12] 8157 	inc	r0
      005760 08               [12] 8158 	inc	r0
      005761 E6               [12] 8159 	mov	a,@r0
      005762 C3               [12] 8160 	clr	c
      005763 13               [12] 8161 	rrc	a
      005764 F6               [12] 8162 	mov	@r0,a
      005765 18               [12] 8163 	dec	r0
      005766 E6               [12] 8164 	mov	a,@r0
      005767 13               [12] 8165 	rrc	a
      005768 F6               [12] 8166 	mov	@r0,a
      005769 18               [12] 8167 	dec	r0
      00576A E6               [12] 8168 	mov	a,@r0
      00576B 13               [12] 8169 	rrc	a
      00576C F6               [12] 8170 	mov	@r0,a
      00576D 18               [12] 8171 	dec	r0
      00576E E6               [12] 8172 	mov	a,@r0
      00576F 13               [12] 8173 	rrc	a
      005770 F6               [12] 8174 	mov	@r0,a
      005771 E5 08            [12] 8175 	mov	a,_bp
      005773 24 0B            [12] 8176 	add	a,#0x0b
      005775 F8               [12] 8177 	mov	r0,a
      005776 E6               [12] 8178 	mov	a,@r0
      005777 08               [12] 8179 	inc	r0
      005778 46               [12] 8180 	orl	a,@r0
      005779 08               [12] 8181 	inc	r0
      00577A 46               [12] 8182 	orl	a,@r0
      00577B 08               [12] 8183 	inc	r0
      00577C 46               [12] 8184 	orl	a,@r0
      00577D 70 9F            [24] 8185 	jnz	00103$
                                   8186 ;	calc.c:403: printf(", acc_valid = %d\r\n", (int)ctx->acc_valid);
      00577F E5 08            [12] 8187 	mov	a,_bp
      005781 24 04            [12] 8188 	add	a,#0x04
      005783 F8               [12] 8189 	mov	r0,a
      005784 74 06            [12] 8190 	mov	a,#0x06
      005786 26               [12] 8191 	add	a,@r0
      005787 FD               [12] 8192 	mov	r5,a
      005788 E4               [12] 8193 	clr	a
      005789 08               [12] 8194 	inc	r0
      00578A 36               [12] 8195 	addc	a,@r0
      00578B FE               [12] 8196 	mov	r6,a
      00578C 08               [12] 8197 	inc	r0
      00578D 86 07            [24] 8198 	mov	ar7,@r0
      00578F 8D 82            [24] 8199 	mov	dpl,r5
      005791 8E 83            [24] 8200 	mov	dph,r6
      005793 8F F0            [24] 8201 	mov	b,r7
      005795 12 67 7F         [24] 8202 	lcall	__gptrget
      005798 FD               [12] 8203 	mov	r5,a
      005799 7F 00            [12] 8204 	mov	r7,#0x00
      00579B C0 05            [24] 8205 	push	ar5
      00579D C0 07            [24] 8206 	push	ar7
      00579F 74 D6            [12] 8207 	mov	a,#___str_17
      0057A1 C0 E0            [24] 8208 	push	acc
      0057A3 74 80            [12] 8209 	mov	a,#(___str_17 >> 8)
      0057A5 C0 E0            [24] 8210 	push	acc
      0057A7 74 80            [12] 8211 	mov	a,#0x80
      0057A9 C0 E0            [24] 8212 	push	acc
      0057AB 12 67 46         [24] 8213 	lcall	_printf
      0057AE E5 81            [12] 8214 	mov	a,sp
      0057B0 24 FB            [12] 8215 	add	a,#0xfb
      0057B2 F5 81            [12] 8216 	mov	sp,a
                                   8217 ;	calc.c:404: printf("primary = %p, secondary = %p\r\n", ctx->ps, ctx->ss);
      0057B4 E5 08            [12] 8218 	mov	a,_bp
      0057B6 24 04            [12] 8219 	add	a,#0x04
      0057B8 F8               [12] 8220 	mov	r0,a
      0057B9 74 14            [12] 8221 	mov	a,#0x14
      0057BB 26               [12] 8222 	add	a,@r0
      0057BC FD               [12] 8223 	mov	r5,a
      0057BD 74 40            [12] 8224 	mov	a,#0x40
      0057BF 08               [12] 8225 	inc	r0
      0057C0 36               [12] 8226 	addc	a,@r0
      0057C1 FE               [12] 8227 	mov	r6,a
      0057C2 08               [12] 8228 	inc	r0
      0057C3 86 07            [24] 8229 	mov	ar7,@r0
      0057C5 8D 82            [24] 8230 	mov	dpl,r5
      0057C7 8E 83            [24] 8231 	mov	dph,r6
      0057C9 8F F0            [24] 8232 	mov	b,r7
      0057CB 12 67 7F         [24] 8233 	lcall	__gptrget
      0057CE FD               [12] 8234 	mov	r5,a
      0057CF A3               [24] 8235 	inc	dptr
      0057D0 12 67 7F         [24] 8236 	lcall	__gptrget
      0057D3 FE               [12] 8237 	mov	r6,a
      0057D4 A3               [24] 8238 	inc	dptr
      0057D5 12 67 7F         [24] 8239 	lcall	__gptrget
      0057D8 FF               [12] 8240 	mov	r7,a
      0057D9 E5 08            [12] 8241 	mov	a,_bp
      0057DB 24 04            [12] 8242 	add	a,#0x04
      0057DD F8               [12] 8243 	mov	r0,a
      0057DE 74 11            [12] 8244 	mov	a,#0x11
      0057E0 26               [12] 8245 	add	a,@r0
      0057E1 FA               [12] 8246 	mov	r2,a
      0057E2 74 40            [12] 8247 	mov	a,#0x40
      0057E4 08               [12] 8248 	inc	r0
      0057E5 36               [12] 8249 	addc	a,@r0
      0057E6 FB               [12] 8250 	mov	r3,a
      0057E7 08               [12] 8251 	inc	r0
      0057E8 86 04            [24] 8252 	mov	ar4,@r0
      0057EA 8A 82            [24] 8253 	mov	dpl,r2
      0057EC 8B 83            [24] 8254 	mov	dph,r3
      0057EE 8C F0            [24] 8255 	mov	b,r4
      0057F0 12 67 7F         [24] 8256 	lcall	__gptrget
      0057F3 FA               [12] 8257 	mov	r2,a
      0057F4 A3               [24] 8258 	inc	dptr
      0057F5 12 67 7F         [24] 8259 	lcall	__gptrget
      0057F8 FB               [12] 8260 	mov	r3,a
      0057F9 A3               [24] 8261 	inc	dptr
      0057FA 12 67 7F         [24] 8262 	lcall	__gptrget
      0057FD FC               [12] 8263 	mov	r4,a
      0057FE C0 05            [24] 8264 	push	ar5
      005800 C0 06            [24] 8265 	push	ar6
      005802 C0 07            [24] 8266 	push	ar7
      005804 C0 02            [24] 8267 	push	ar2
      005806 C0 03            [24] 8268 	push	ar3
      005808 C0 04            [24] 8269 	push	ar4
      00580A 74 E9            [12] 8270 	mov	a,#___str_18
      00580C C0 E0            [24] 8271 	push	acc
      00580E 74 80            [12] 8272 	mov	a,#(___str_18 >> 8)
      005810 C0 E0            [24] 8273 	push	acc
      005812 74 80            [12] 8274 	mov	a,#0x80
      005814 C0 E0            [24] 8275 	push	acc
      005816 12 67 46         [24] 8276 	lcall	_printf
      005819 E5 81            [12] 8277 	mov	a,sp
      00581B 24 F7            [12] 8278 	add	a,#0xf7
      00581D F5 81            [12] 8279 	mov	sp,a
                                   8280 ;	calc.c:406: return 1;
      00581F 90 00 01         [24] 8281 	mov	dptr,#0x0001
                                   8282 ;	calc.c:407: }
      005822 85 08 81         [24] 8283 	mov	sp,_bp
      005825 D0 08            [24] 8284 	pop	_bp
      005827 22               [24] 8285 	ret
                                   8286 ;------------------------------------------------------------
                                   8287 ;Allocation info for local variables in function 'help'
                                   8288 ;------------------------------------------------------------
                                   8289 ;delta                     Allocated to stack - _bp -5
                                   8290 ;_ctx                      Allocated to registers 
                                   8291 ;__1310720129              Allocated to registers 
                                   8292 ;s                         Allocated to registers r5 r6 r7 
                                   8293 ;__1310720131              Allocated to registers 
                                   8294 ;s                         Allocated to registers r5 r6 r7 
                                   8295 ;__1310720133              Allocated to registers 
                                   8296 ;s                         Allocated to registers r5 r6 r7 
                                   8297 ;__1310720135              Allocated to registers 
                                   8298 ;s                         Allocated to registers r5 r6 r7 
                                   8299 ;__1310720137              Allocated to registers 
                                   8300 ;s                         Allocated to registers r5 r6 r7 
                                   8301 ;__1310720139              Allocated to registers 
                                   8302 ;s                         Allocated to registers r5 r6 r7 
                                   8303 ;__1310720141              Allocated to registers 
                                   8304 ;s                         Allocated to registers r5 r6 r7 
                                   8305 ;__1310720143              Allocated to registers 
                                   8306 ;s                         Allocated to registers r5 r6 r7 
                                   8307 ;__1310720145              Allocated to registers 
                                   8308 ;s                         Allocated to registers r5 r6 r7 
                                   8309 ;__1310720147              Allocated to registers 
                                   8310 ;s                         Allocated to registers r5 r6 r7 
                                   8311 ;__1310720149              Allocated to registers 
                                   8312 ;s                         Allocated to registers r5 r6 r7 
                                   8313 ;__1310720151              Allocated to registers 
                                   8314 ;s                         Allocated to registers r5 r6 r7 
                                   8315 ;__1310720153              Allocated to registers 
                                   8316 ;s                         Allocated to registers r5 r6 r7 
                                   8317 ;__1310720155              Allocated to registers 
                                   8318 ;s                         Allocated to registers r5 r6 r7 
                                   8319 ;__1310720157              Allocated to registers 
                                   8320 ;s                         Allocated to registers r5 r6 r7 
                                   8321 ;__1310720159              Allocated to registers 
                                   8322 ;s                         Allocated to registers r5 r6 r7 
                                   8323 ;__1310720161              Allocated to registers 
                                   8324 ;s                         Allocated to registers r5 r6 r7 
                                   8325 ;__1310720163              Allocated to registers 
                                   8326 ;s                         Allocated to registers r5 r6 r7 
                                   8327 ;__1310720165              Allocated to registers 
                                   8328 ;s                         Allocated to registers r5 r6 r7 
                                   8329 ;__1310720167              Allocated to registers 
                                   8330 ;s                         Allocated to registers r5 r6 r7 
                                   8331 ;__1310720169              Allocated to registers 
                                   8332 ;s                         Allocated to registers r5 r6 r7 
                                   8333 ;__1310720171              Allocated to registers 
                                   8334 ;s                         Allocated to registers r5 r6 r7 
                                   8335 ;__1310720173              Allocated to registers 
                                   8336 ;s                         Allocated to registers r5 r6 r7 
                                   8337 ;__1310720175              Allocated to registers 
                                   8338 ;s                         Allocated to registers r5 r6 r7 
                                   8339 ;__1310720177              Allocated to registers 
                                   8340 ;s                         Allocated to registers r5 r6 r7 
                                   8341 ;__1310720179              Allocated to registers 
                                   8342 ;s                         Allocated to registers r5 r6 r7 
                                   8343 ;__1310720181              Allocated to registers 
                                   8344 ;s                         Allocated to registers r5 r6 r7 
                                   8345 ;__1310720183              Allocated to registers 
                                   8346 ;s                         Allocated to registers r5 r6 r7 
                                   8347 ;__1310720185              Allocated to registers 
                                   8348 ;s                         Allocated to registers r5 r6 r7 
                                   8349 ;__1310720187              Allocated to registers 
                                   8350 ;s                         Allocated to registers r5 r6 r7 
                                   8351 ;__1310720189              Allocated to registers 
                                   8352 ;s                         Allocated to registers r5 r6 r7 
                                   8353 ;------------------------------------------------------------
                                   8354 ;	calc.c:409: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   8355 ;	-----------------------------------------
                                   8356 ;	 function help
                                   8357 ;	-----------------------------------------
      005828                       8358 _help:
      005828 C0 08            [24] 8359 	push	_bp
      00582A 85 81 08         [24] 8360 	mov	_bp,sp
                                   8361 ;	calc.c:413: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      00582D 7D 08            [12] 8362 	mov	r5,#___str_19
      00582F 7E 81            [12] 8363 	mov	r6,#(___str_19 >> 8)
      005831 7F 80            [12] 8364 	mov	r7,#0x80
                                   8365 ;	calc.c:51: return;
      005833                       8366 00164$:
                                   8367 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005833 8D 82            [24] 8368 	mov	dpl,r5
      005835 8E 83            [24] 8369 	mov	dph,r6
      005837 8F F0            [24] 8370 	mov	b,r7
      005839 12 67 7F         [24] 8371 	lcall	__gptrget
      00583C FC               [12] 8372 	mov	r4,a
      00583D 60 10            [24] 8373 	jz	00102$
      00583F 7B 00            [12] 8374 	mov	r3,#0x00
      005841 8C 82            [24] 8375 	mov	dpl,r4
      005843 8B 83            [24] 8376 	mov	dph,r3
      005845 12 29 C0         [24] 8377 	lcall	_putchar
      005848 0D               [12] 8378 	inc	r5
                                   8379 ;	calc.c:413: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      005849 BD 00 E7         [24] 8380 	cjne	r5,#0x00,00164$
      00584C 0E               [12] 8381 	inc	r6
      00584D 80 E4            [24] 8382 	sjmp	00164$
      00584F                       8383 00102$:
                                   8384 ;	calc.c:414: printstr("p\tpeek top\r\n");
      00584F 7D 20            [12] 8385 	mov	r5,#___str_20
      005851 7E 81            [12] 8386 	mov	r6,#(___str_20 >> 8)
      005853 7F 80            [12] 8387 	mov	r7,#0x80
                                   8388 ;	calc.c:51: return;
      005855                       8389 00167$:
                                   8390 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005855 8D 82            [24] 8391 	mov	dpl,r5
      005857 8E 83            [24] 8392 	mov	dph,r6
      005859 8F F0            [24] 8393 	mov	b,r7
      00585B 12 67 7F         [24] 8394 	lcall	__gptrget
      00585E FC               [12] 8395 	mov	r4,a
      00585F 60 10            [24] 8396 	jz	00104$
      005861 7B 00            [12] 8397 	mov	r3,#0x00
      005863 8C 82            [24] 8398 	mov	dpl,r4
      005865 8B 83            [24] 8399 	mov	dph,r3
      005867 12 29 C0         [24] 8400 	lcall	_putchar
      00586A 0D               [12] 8401 	inc	r5
                                   8402 ;	calc.c:414: printstr("p\tpeek top\r\n");
      00586B BD 00 E7         [24] 8403 	cjne	r5,#0x00,00167$
      00586E 0E               [12] 8404 	inc	r6
      00586F 80 E4            [24] 8405 	sjmp	00167$
      005871                       8406 00104$:
                                   8407 ;	calc.c:415: printstr("P\tprint stack\r\n");
      005871 7D 2D            [12] 8408 	mov	r5,#___str_21
      005873 7E 81            [12] 8409 	mov	r6,#(___str_21 >> 8)
      005875 7F 80            [12] 8410 	mov	r7,#0x80
                                   8411 ;	calc.c:51: return;
      005877                       8412 00170$:
                                   8413 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005877 8D 82            [24] 8414 	mov	dpl,r5
      005879 8E 83            [24] 8415 	mov	dph,r6
      00587B 8F F0            [24] 8416 	mov	b,r7
      00587D 12 67 7F         [24] 8417 	lcall	__gptrget
      005880 FC               [12] 8418 	mov	r4,a
      005881 60 10            [24] 8419 	jz	00106$
      005883 7B 00            [12] 8420 	mov	r3,#0x00
      005885 8C 82            [24] 8421 	mov	dpl,r4
      005887 8B 83            [24] 8422 	mov	dph,r3
      005889 12 29 C0         [24] 8423 	lcall	_putchar
      00588C 0D               [12] 8424 	inc	r5
                                   8425 ;	calc.c:415: printstr("P\tprint stack\r\n");
      00588D BD 00 E7         [24] 8426 	cjne	r5,#0x00,00170$
      005890 0E               [12] 8427 	inc	r6
      005891 80 E4            [24] 8428 	sjmp	00170$
      005893                       8429 00106$:
                                   8430 ;	calc.c:416: printstr("v.\tpop top\r\n");
      005893 7D 3D            [12] 8431 	mov	r5,#___str_22
      005895 7E 81            [12] 8432 	mov	r6,#(___str_22 >> 8)
      005897 7F 80            [12] 8433 	mov	r7,#0x80
                                   8434 ;	calc.c:51: return;
      005899                       8435 00173$:
                                   8436 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005899 8D 82            [24] 8437 	mov	dpl,r5
      00589B 8E 83            [24] 8438 	mov	dph,r6
      00589D 8F F0            [24] 8439 	mov	b,r7
      00589F 12 67 7F         [24] 8440 	lcall	__gptrget
      0058A2 FC               [12] 8441 	mov	r4,a
      0058A3 60 10            [24] 8442 	jz	00108$
      0058A5 7B 00            [12] 8443 	mov	r3,#0x00
      0058A7 8C 82            [24] 8444 	mov	dpl,r4
      0058A9 8B 83            [24] 8445 	mov	dph,r3
      0058AB 12 29 C0         [24] 8446 	lcall	_putchar
      0058AE 0D               [12] 8447 	inc	r5
                                   8448 ;	calc.c:416: printstr("v.\tpop top\r\n");
      0058AF BD 00 E7         [24] 8449 	cjne	r5,#0x00,00173$
      0058B2 0E               [12] 8450 	inc	r6
      0058B3 80 E4            [24] 8451 	sjmp	00173$
      0058B5                       8452 00108$:
                                   8453 ;	calc.c:417: printstr("V\tpop all\r\n");
      0058B5 7D 4A            [12] 8454 	mov	r5,#___str_23
      0058B7 7E 81            [12] 8455 	mov	r6,#(___str_23 >> 8)
      0058B9 7F 80            [12] 8456 	mov	r7,#0x80
                                   8457 ;	calc.c:51: return;
      0058BB                       8458 00176$:
                                   8459 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0058BB 8D 82            [24] 8460 	mov	dpl,r5
      0058BD 8E 83            [24] 8461 	mov	dph,r6
      0058BF 8F F0            [24] 8462 	mov	b,r7
      0058C1 12 67 7F         [24] 8463 	lcall	__gptrget
      0058C4 FC               [12] 8464 	mov	r4,a
      0058C5 60 10            [24] 8465 	jz	00110$
      0058C7 7B 00            [12] 8466 	mov	r3,#0x00
      0058C9 8C 82            [24] 8467 	mov	dpl,r4
      0058CB 8B 83            [24] 8468 	mov	dph,r3
      0058CD 12 29 C0         [24] 8469 	lcall	_putchar
      0058D0 0D               [12] 8470 	inc	r5
                                   8471 ;	calc.c:417: printstr("V\tpop all\r\n");
      0058D1 BD 00 E7         [24] 8472 	cjne	r5,#0x00,00176$
      0058D4 0E               [12] 8473 	inc	r6
      0058D5 80 E4            [24] 8474 	sjmp	00176$
      0058D7                       8475 00110$:
                                   8476 ;	calc.c:418: printstr("i\treset acc\r\n");
      0058D7 7D 56            [12] 8477 	mov	r5,#___str_24
      0058D9 7E 81            [12] 8478 	mov	r6,#(___str_24 >> 8)
      0058DB 7F 80            [12] 8479 	mov	r7,#0x80
                                   8480 ;	calc.c:51: return;
      0058DD                       8481 00179$:
                                   8482 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0058DD 8D 82            [24] 8483 	mov	dpl,r5
      0058DF 8E 83            [24] 8484 	mov	dph,r6
      0058E1 8F F0            [24] 8485 	mov	b,r7
      0058E3 12 67 7F         [24] 8486 	lcall	__gptrget
      0058E6 FC               [12] 8487 	mov	r4,a
      0058E7 60 10            [24] 8488 	jz	00112$
      0058E9 7B 00            [12] 8489 	mov	r3,#0x00
      0058EB 8C 82            [24] 8490 	mov	dpl,r4
      0058ED 8B 83            [24] 8491 	mov	dph,r3
      0058EF 12 29 C0         [24] 8492 	lcall	_putchar
      0058F2 0D               [12] 8493 	inc	r5
                                   8494 ;	calc.c:418: printstr("i\treset acc\r\n");
      0058F3 BD 00 E7         [24] 8495 	cjne	r5,#0x00,00179$
      0058F6 0E               [12] 8496 	inc	r6
      0058F7 80 E4            [24] 8497 	sjmp	00179$
      0058F9                       8498 00112$:
                                   8499 ;	calc.c:419: printstr("I\treset and discard acc\r\n");
      0058F9 7D 64            [12] 8500 	mov	r5,#___str_25
      0058FB 7E 81            [12] 8501 	mov	r6,#(___str_25 >> 8)
      0058FD 7F 80            [12] 8502 	mov	r7,#0x80
                                   8503 ;	calc.c:51: return;
      0058FF                       8504 00182$:
                                   8505 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0058FF 8D 82            [24] 8506 	mov	dpl,r5
      005901 8E 83            [24] 8507 	mov	dph,r6
      005903 8F F0            [24] 8508 	mov	b,r7
      005905 12 67 7F         [24] 8509 	lcall	__gptrget
      005908 FC               [12] 8510 	mov	r4,a
      005909 60 10            [24] 8511 	jz	00114$
      00590B 7B 00            [12] 8512 	mov	r3,#0x00
      00590D 8C 82            [24] 8513 	mov	dpl,r4
      00590F 8B 83            [24] 8514 	mov	dph,r3
      005911 12 29 C0         [24] 8515 	lcall	_putchar
      005914 0D               [12] 8516 	inc	r5
                                   8517 ;	calc.c:419: printstr("I\treset and discard acc\r\n");
      005915 BD 00 E7         [24] 8518 	cjne	r5,#0x00,00182$
      005918 0E               [12] 8519 	inc	r6
      005919 80 E4            [24] 8520 	sjmp	00182$
      00591B                       8521 00114$:
                                   8522 ;	calc.c:420: printstr("x\texchange top 2\r\n");
      00591B 7D 7E            [12] 8523 	mov	r5,#___str_26
      00591D 7E 81            [12] 8524 	mov	r6,#(___str_26 >> 8)
      00591F 7F 80            [12] 8525 	mov	r7,#0x80
                                   8526 ;	calc.c:51: return;
      005921                       8527 00185$:
                                   8528 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005921 8D 82            [24] 8529 	mov	dpl,r5
      005923 8E 83            [24] 8530 	mov	dph,r6
      005925 8F F0            [24] 8531 	mov	b,r7
      005927 12 67 7F         [24] 8532 	lcall	__gptrget
      00592A FC               [12] 8533 	mov	r4,a
      00592B 60 10            [24] 8534 	jz	00116$
      00592D 7B 00            [12] 8535 	mov	r3,#0x00
      00592F 8C 82            [24] 8536 	mov	dpl,r4
      005931 8B 83            [24] 8537 	mov	dph,r3
      005933 12 29 C0         [24] 8538 	lcall	_putchar
      005936 0D               [12] 8539 	inc	r5
                                   8540 ;	calc.c:420: printstr("x\texchange top 2\r\n");
      005937 BD 00 E7         [24] 8541 	cjne	r5,#0x00,00185$
      00593A 0E               [12] 8542 	inc	r6
      00593B 80 E4            [24] 8543 	sjmp	00185$
      00593D                       8544 00116$:
                                   8545 ;	calc.c:421: printstr("X\texchange stacks primary <-> secondary\r\n");
      00593D 7D 91            [12] 8546 	mov	r5,#___str_27
      00593F 7E 81            [12] 8547 	mov	r6,#(___str_27 >> 8)
      005941 7F 80            [12] 8548 	mov	r7,#0x80
                                   8549 ;	calc.c:51: return;
      005943                       8550 00188$:
                                   8551 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005943 8D 82            [24] 8552 	mov	dpl,r5
      005945 8E 83            [24] 8553 	mov	dph,r6
      005947 8F F0            [24] 8554 	mov	b,r7
      005949 12 67 7F         [24] 8555 	lcall	__gptrget
      00594C FC               [12] 8556 	mov	r4,a
      00594D 60 10            [24] 8557 	jz	00118$
      00594F 7B 00            [12] 8558 	mov	r3,#0x00
      005951 8C 82            [24] 8559 	mov	dpl,r4
      005953 8B 83            [24] 8560 	mov	dph,r3
      005955 12 29 C0         [24] 8561 	lcall	_putchar
      005958 0D               [12] 8562 	inc	r5
                                   8563 ;	calc.c:421: printstr("X\texchange stacks primary <-> secondary\r\n");
      005959 BD 00 E7         [24] 8564 	cjne	r5,#0x00,00188$
      00595C 0E               [12] 8565 	inc	r6
      00595D 80 E4            [24] 8566 	sjmp	00188$
      00595F                       8567 00118$:
                                   8568 ;	calc.c:422: printstr("T\texchange tops primary <-> secondary\r\n");
      00595F 7D BB            [12] 8569 	mov	r5,#___str_28
      005961 7E 81            [12] 8570 	mov	r6,#(___str_28 >> 8)
      005963 7F 80            [12] 8571 	mov	r7,#0x80
                                   8572 ;	calc.c:51: return;
      005965                       8573 00191$:
                                   8574 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005965 8D 82            [24] 8575 	mov	dpl,r5
      005967 8E 83            [24] 8576 	mov	dph,r6
      005969 8F F0            [24] 8577 	mov	b,r7
      00596B 12 67 7F         [24] 8578 	lcall	__gptrget
      00596E FC               [12] 8579 	mov	r4,a
      00596F 60 10            [24] 8580 	jz	00120$
      005971 7B 00            [12] 8581 	mov	r3,#0x00
      005973 8C 82            [24] 8582 	mov	dpl,r4
      005975 8B 83            [24] 8583 	mov	dph,r3
      005977 12 29 C0         [24] 8584 	lcall	_putchar
      00597A 0D               [12] 8585 	inc	r5
                                   8586 ;	calc.c:422: printstr("T\texchange tops primary <-> secondary\r\n");
      00597B BD 00 E7         [24] 8587 	cjne	r5,#0x00,00191$
      00597E 0E               [12] 8588 	inc	r6
      00597F 80 E4            [24] 8589 	sjmp	00191$
      005981                       8590 00120$:
                                   8591 ;	calc.c:423: printstr("U\tcopy top secondary -> primary\r\n");
      005981 7D E3            [12] 8592 	mov	r5,#___str_29
      005983 7E 81            [12] 8593 	mov	r6,#(___str_29 >> 8)
      005985 7F 80            [12] 8594 	mov	r7,#0x80
                                   8595 ;	calc.c:51: return;
      005987                       8596 00194$:
                                   8597 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005987 8D 82            [24] 8598 	mov	dpl,r5
      005989 8E 83            [24] 8599 	mov	dph,r6
      00598B 8F F0            [24] 8600 	mov	b,r7
      00598D 12 67 7F         [24] 8601 	lcall	__gptrget
      005990 FC               [12] 8602 	mov	r4,a
      005991 60 10            [24] 8603 	jz	00122$
      005993 7B 00            [12] 8604 	mov	r3,#0x00
      005995 8C 82            [24] 8605 	mov	dpl,r4
      005997 8B 83            [24] 8606 	mov	dph,r3
      005999 12 29 C0         [24] 8607 	lcall	_putchar
      00599C 0D               [12] 8608 	inc	r5
                                   8609 ;	calc.c:423: printstr("U\tcopy top secondary -> primary\r\n");
      00599D BD 00 E7         [24] 8610 	cjne	r5,#0x00,00194$
      0059A0 0E               [12] 8611 	inc	r6
      0059A1 80 E4            [24] 8612 	sjmp	00194$
      0059A3                       8613 00122$:
                                   8614 ;	calc.c:424: printstr("u\tcopy top primary -> secondary\r\n");
      0059A3 7D 05            [12] 8615 	mov	r5,#___str_30
      0059A5 7E 82            [12] 8616 	mov	r6,#(___str_30 >> 8)
      0059A7 7F 80            [12] 8617 	mov	r7,#0x80
                                   8618 ;	calc.c:51: return;
      0059A9                       8619 00197$:
                                   8620 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0059A9 8D 82            [24] 8621 	mov	dpl,r5
      0059AB 8E 83            [24] 8622 	mov	dph,r6
      0059AD 8F F0            [24] 8623 	mov	b,r7
      0059AF 12 67 7F         [24] 8624 	lcall	__gptrget
      0059B2 FC               [12] 8625 	mov	r4,a
      0059B3 60 10            [24] 8626 	jz	00124$
      0059B5 7B 00            [12] 8627 	mov	r3,#0x00
      0059B7 8C 82            [24] 8628 	mov	dpl,r4
      0059B9 8B 83            [24] 8629 	mov	dph,r3
      0059BB 12 29 C0         [24] 8630 	lcall	_putchar
      0059BE 0D               [12] 8631 	inc	r5
                                   8632 ;	calc.c:424: printstr("u\tcopy top primary -> secondary\r\n");
      0059BF BD 00 E7         [24] 8633 	cjne	r5,#0x00,00197$
      0059C2 0E               [12] 8634 	inc	r6
      0059C3 80 E4            [24] 8635 	sjmp	00197$
      0059C5                       8636 00124$:
                                   8637 ;	calc.c:425: printstr("M\tmove top secondary -> primary\r\n");
      0059C5 7D 27            [12] 8638 	mov	r5,#___str_31
      0059C7 7E 82            [12] 8639 	mov	r6,#(___str_31 >> 8)
      0059C9 7F 80            [12] 8640 	mov	r7,#0x80
                                   8641 ;	calc.c:51: return;
      0059CB                       8642 00200$:
                                   8643 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0059CB 8D 82            [24] 8644 	mov	dpl,r5
      0059CD 8E 83            [24] 8645 	mov	dph,r6
      0059CF 8F F0            [24] 8646 	mov	b,r7
      0059D1 12 67 7F         [24] 8647 	lcall	__gptrget
      0059D4 FC               [12] 8648 	mov	r4,a
      0059D5 60 10            [24] 8649 	jz	00126$
      0059D7 7B 00            [12] 8650 	mov	r3,#0x00
      0059D9 8C 82            [24] 8651 	mov	dpl,r4
      0059DB 8B 83            [24] 8652 	mov	dph,r3
      0059DD 12 29 C0         [24] 8653 	lcall	_putchar
      0059E0 0D               [12] 8654 	inc	r5
                                   8655 ;	calc.c:425: printstr("M\tmove top secondary -> primary\r\n");
      0059E1 BD 00 E7         [24] 8656 	cjne	r5,#0x00,00200$
      0059E4 0E               [12] 8657 	inc	r6
      0059E5 80 E4            [24] 8658 	sjmp	00200$
      0059E7                       8659 00126$:
                                   8660 ;	calc.c:426: printstr("m\tmove top primary -> secondary\r\n");
      0059E7 7D 49            [12] 8661 	mov	r5,#___str_32
      0059E9 7E 82            [12] 8662 	mov	r6,#(___str_32 >> 8)
      0059EB 7F 80            [12] 8663 	mov	r7,#0x80
                                   8664 ;	calc.c:51: return;
      0059ED                       8665 00203$:
                                   8666 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0059ED 8D 82            [24] 8667 	mov	dpl,r5
      0059EF 8E 83            [24] 8668 	mov	dph,r6
      0059F1 8F F0            [24] 8669 	mov	b,r7
      0059F3 12 67 7F         [24] 8670 	lcall	__gptrget
      0059F6 FC               [12] 8671 	mov	r4,a
      0059F7 60 10            [24] 8672 	jz	00128$
      0059F9 7B 00            [12] 8673 	mov	r3,#0x00
      0059FB 8C 82            [24] 8674 	mov	dpl,r4
      0059FD 8B 83            [24] 8675 	mov	dph,r3
      0059FF 12 29 C0         [24] 8676 	lcall	_putchar
      005A02 0D               [12] 8677 	inc	r5
                                   8678 ;	calc.c:426: printstr("m\tmove top primary -> secondary\r\n");
      005A03 BD 00 E7         [24] 8679 	cjne	r5,#0x00,00203$
      005A06 0E               [12] 8680 	inc	r6
      005A07 80 E4            [24] 8681 	sjmp	00203$
      005A09                       8682 00128$:
                                   8683 ;	calc.c:427: printstr("+\tadd top 2\r\n");
      005A09 7D 6B            [12] 8684 	mov	r5,#___str_33
      005A0B 7E 82            [12] 8685 	mov	r6,#(___str_33 >> 8)
      005A0D 7F 80            [12] 8686 	mov	r7,#0x80
                                   8687 ;	calc.c:51: return;
      005A0F                       8688 00206$:
                                   8689 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005A0F 8D 82            [24] 8690 	mov	dpl,r5
      005A11 8E 83            [24] 8691 	mov	dph,r6
      005A13 8F F0            [24] 8692 	mov	b,r7
      005A15 12 67 7F         [24] 8693 	lcall	__gptrget
      005A18 FC               [12] 8694 	mov	r4,a
      005A19 60 10            [24] 8695 	jz	00130$
      005A1B 7B 00            [12] 8696 	mov	r3,#0x00
      005A1D 8C 82            [24] 8697 	mov	dpl,r4
      005A1F 8B 83            [24] 8698 	mov	dph,r3
      005A21 12 29 C0         [24] 8699 	lcall	_putchar
      005A24 0D               [12] 8700 	inc	r5
                                   8701 ;	calc.c:427: printstr("+\tadd top 2\r\n");
      005A25 BD 00 E7         [24] 8702 	cjne	r5,#0x00,00206$
      005A28 0E               [12] 8703 	inc	r6
      005A29 80 E4            [24] 8704 	sjmp	00206$
      005A2B                       8705 00130$:
                                   8706 ;	calc.c:428: printstr("-\tsubtract top 2\r\n");
      005A2B 7D 79            [12] 8707 	mov	r5,#___str_34
      005A2D 7E 82            [12] 8708 	mov	r6,#(___str_34 >> 8)
      005A2F 7F 80            [12] 8709 	mov	r7,#0x80
                                   8710 ;	calc.c:51: return;
      005A31                       8711 00209$:
                                   8712 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005A31 8D 82            [24] 8713 	mov	dpl,r5
      005A33 8E 83            [24] 8714 	mov	dph,r6
      005A35 8F F0            [24] 8715 	mov	b,r7
      005A37 12 67 7F         [24] 8716 	lcall	__gptrget
      005A3A FC               [12] 8717 	mov	r4,a
      005A3B 60 10            [24] 8718 	jz	00132$
      005A3D 7B 00            [12] 8719 	mov	r3,#0x00
      005A3F 8C 82            [24] 8720 	mov	dpl,r4
      005A41 8B 83            [24] 8721 	mov	dph,r3
      005A43 12 29 C0         [24] 8722 	lcall	_putchar
      005A46 0D               [12] 8723 	inc	r5
                                   8724 ;	calc.c:428: printstr("-\tsubtract top 2\r\n");
      005A47 BD 00 E7         [24] 8725 	cjne	r5,#0x00,00209$
      005A4A 0E               [12] 8726 	inc	r6
      005A4B 80 E4            [24] 8727 	sjmp	00209$
      005A4D                       8728 00132$:
                                   8729 ;	calc.c:429: printstr("*\tmultiply top 2\r\n");
      005A4D 7D 8C            [12] 8730 	mov	r5,#___str_35
      005A4F 7E 82            [12] 8731 	mov	r6,#(___str_35 >> 8)
      005A51 7F 80            [12] 8732 	mov	r7,#0x80
                                   8733 ;	calc.c:51: return;
      005A53                       8734 00212$:
                                   8735 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005A53 8D 82            [24] 8736 	mov	dpl,r5
      005A55 8E 83            [24] 8737 	mov	dph,r6
      005A57 8F F0            [24] 8738 	mov	b,r7
      005A59 12 67 7F         [24] 8739 	lcall	__gptrget
      005A5C FC               [12] 8740 	mov	r4,a
      005A5D 60 10            [24] 8741 	jz	00134$
      005A5F 7B 00            [12] 8742 	mov	r3,#0x00
      005A61 8C 82            [24] 8743 	mov	dpl,r4
      005A63 8B 83            [24] 8744 	mov	dph,r3
      005A65 12 29 C0         [24] 8745 	lcall	_putchar
      005A68 0D               [12] 8746 	inc	r5
                                   8747 ;	calc.c:429: printstr("*\tmultiply top 2\r\n");
      005A69 BD 00 E7         [24] 8748 	cjne	r5,#0x00,00212$
      005A6C 0E               [12] 8749 	inc	r6
      005A6D 80 E4            [24] 8750 	sjmp	00212$
      005A6F                       8751 00134$:
                                   8752 ;	calc.c:430: printstr("/\tdivide top 2\r\n");
      005A6F 7D 9F            [12] 8753 	mov	r5,#___str_36
      005A71 7E 82            [12] 8754 	mov	r6,#(___str_36 >> 8)
      005A73 7F 80            [12] 8755 	mov	r7,#0x80
                                   8756 ;	calc.c:51: return;
      005A75                       8757 00215$:
                                   8758 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005A75 8D 82            [24] 8759 	mov	dpl,r5
      005A77 8E 83            [24] 8760 	mov	dph,r6
      005A79 8F F0            [24] 8761 	mov	b,r7
      005A7B 12 67 7F         [24] 8762 	lcall	__gptrget
      005A7E FC               [12] 8763 	mov	r4,a
      005A7F 60 10            [24] 8764 	jz	00136$
      005A81 7B 00            [12] 8765 	mov	r3,#0x00
      005A83 8C 82            [24] 8766 	mov	dpl,r4
      005A85 8B 83            [24] 8767 	mov	dph,r3
      005A87 12 29 C0         [24] 8768 	lcall	_putchar
      005A8A 0D               [12] 8769 	inc	r5
                                   8770 ;	calc.c:430: printstr("/\tdivide top 2\r\n");
      005A8B BD 00 E7         [24] 8771 	cjne	r5,#0x00,00215$
      005A8E 0E               [12] 8772 	inc	r6
      005A8F 80 E4            [24] 8773 	sjmp	00215$
      005A91                       8774 00136$:
                                   8775 ;	calc.c:431: printstr("\\\tdivide top 2 unsigned\r\n");	
      005A91 7D B0            [12] 8776 	mov	r5,#___str_37
      005A93 7E 82            [12] 8777 	mov	r6,#(___str_37 >> 8)
      005A95 7F 80            [12] 8778 	mov	r7,#0x80
                                   8779 ;	calc.c:51: return;
      005A97                       8780 00218$:
                                   8781 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005A97 8D 82            [24] 8782 	mov	dpl,r5
      005A99 8E 83            [24] 8783 	mov	dph,r6
      005A9B 8F F0            [24] 8784 	mov	b,r7
      005A9D 12 67 7F         [24] 8785 	lcall	__gptrget
      005AA0 FC               [12] 8786 	mov	r4,a
      005AA1 60 10            [24] 8787 	jz	00138$
      005AA3 7B 00            [12] 8788 	mov	r3,#0x00
      005AA5 8C 82            [24] 8789 	mov	dpl,r4
      005AA7 8B 83            [24] 8790 	mov	dph,r3
      005AA9 12 29 C0         [24] 8791 	lcall	_putchar
      005AAC 0D               [12] 8792 	inc	r5
                                   8793 ;	calc.c:431: printstr("\\\tdivide top 2 unsigned\r\n");	
      005AAD BD 00 E7         [24] 8794 	cjne	r5,#0x00,00218$
      005AB0 0E               [12] 8795 	inc	r6
      005AB1 80 E4            [24] 8796 	sjmp	00218$
      005AB3                       8797 00138$:
                                   8798 ;	calc.c:432: printstr("%\tmodulus top 2\r\n");
      005AB3 7D CA            [12] 8799 	mov	r5,#___str_38
      005AB5 7E 82            [12] 8800 	mov	r6,#(___str_38 >> 8)
      005AB7 7F 80            [12] 8801 	mov	r7,#0x80
                                   8802 ;	calc.c:51: return;
      005AB9                       8803 00221$:
                                   8804 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005AB9 8D 82            [24] 8805 	mov	dpl,r5
      005ABB 8E 83            [24] 8806 	mov	dph,r6
      005ABD 8F F0            [24] 8807 	mov	b,r7
      005ABF 12 67 7F         [24] 8808 	lcall	__gptrget
      005AC2 FC               [12] 8809 	mov	r4,a
      005AC3 60 10            [24] 8810 	jz	00140$
      005AC5 7B 00            [12] 8811 	mov	r3,#0x00
      005AC7 8C 82            [24] 8812 	mov	dpl,r4
      005AC9 8B 83            [24] 8813 	mov	dph,r3
      005ACB 12 29 C0         [24] 8814 	lcall	_putchar
      005ACE 0D               [12] 8815 	inc	r5
                                   8816 ;	calc.c:432: printstr("%\tmodulus top 2\r\n");
      005ACF BD 00 E7         [24] 8817 	cjne	r5,#0x00,00221$
      005AD2 0E               [12] 8818 	inc	r6
      005AD3 80 E4            [24] 8819 	sjmp	00221$
      005AD5                       8820 00140$:
                                   8821 ;	calc.c:433: printstr("#\tmodulus top 2 unsigned\r\n");
      005AD5 7D DC            [12] 8822 	mov	r5,#___str_39
      005AD7 7E 82            [12] 8823 	mov	r6,#(___str_39 >> 8)
      005AD9 7F 80            [12] 8824 	mov	r7,#0x80
                                   8825 ;	calc.c:51: return;
      005ADB                       8826 00224$:
                                   8827 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005ADB 8D 82            [24] 8828 	mov	dpl,r5
      005ADD 8E 83            [24] 8829 	mov	dph,r6
      005ADF 8F F0            [24] 8830 	mov	b,r7
      005AE1 12 67 7F         [24] 8831 	lcall	__gptrget
      005AE4 FC               [12] 8832 	mov	r4,a
      005AE5 60 10            [24] 8833 	jz	00142$
      005AE7 7B 00            [12] 8834 	mov	r3,#0x00
      005AE9 8C 82            [24] 8835 	mov	dpl,r4
      005AEB 8B 83            [24] 8836 	mov	dph,r3
      005AED 12 29 C0         [24] 8837 	lcall	_putchar
      005AF0 0D               [12] 8838 	inc	r5
                                   8839 ;	calc.c:433: printstr("#\tmodulus top 2 unsigned\r\n");
      005AF1 BD 00 E7         [24] 8840 	cjne	r5,#0x00,00224$
      005AF4 0E               [12] 8841 	inc	r6
      005AF5 80 E4            [24] 8842 	sjmp	00224$
      005AF7                       8843 00142$:
                                   8844 ;	calc.c:434: printstr("&\tand top 2\r\n");
      005AF7 7D F7            [12] 8845 	mov	r5,#___str_40
      005AF9 7E 82            [12] 8846 	mov	r6,#(___str_40 >> 8)
      005AFB 7F 80            [12] 8847 	mov	r7,#0x80
                                   8848 ;	calc.c:51: return;
      005AFD                       8849 00227$:
                                   8850 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005AFD 8D 82            [24] 8851 	mov	dpl,r5
      005AFF 8E 83            [24] 8852 	mov	dph,r6
      005B01 8F F0            [24] 8853 	mov	b,r7
      005B03 12 67 7F         [24] 8854 	lcall	__gptrget
      005B06 FC               [12] 8855 	mov	r4,a
      005B07 60 10            [24] 8856 	jz	00144$
      005B09 7B 00            [12] 8857 	mov	r3,#0x00
      005B0B 8C 82            [24] 8858 	mov	dpl,r4
      005B0D 8B 83            [24] 8859 	mov	dph,r3
      005B0F 12 29 C0         [24] 8860 	lcall	_putchar
      005B12 0D               [12] 8861 	inc	r5
                                   8862 ;	calc.c:434: printstr("&\tand top 2\r\n");
      005B13 BD 00 E7         [24] 8863 	cjne	r5,#0x00,00227$
      005B16 0E               [12] 8864 	inc	r6
      005B17 80 E4            [24] 8865 	sjmp	00227$
      005B19                       8866 00144$:
                                   8867 ;	calc.c:435: printstr("|\tor top 2\r\n");
      005B19 7D 05            [12] 8868 	mov	r5,#___str_41
      005B1B 7E 83            [12] 8869 	mov	r6,#(___str_41 >> 8)
      005B1D 7F 80            [12] 8870 	mov	r7,#0x80
                                   8871 ;	calc.c:51: return;
      005B1F                       8872 00230$:
                                   8873 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005B1F 8D 82            [24] 8874 	mov	dpl,r5
      005B21 8E 83            [24] 8875 	mov	dph,r6
      005B23 8F F0            [24] 8876 	mov	b,r7
      005B25 12 67 7F         [24] 8877 	lcall	__gptrget
      005B28 FC               [12] 8878 	mov	r4,a
      005B29 60 10            [24] 8879 	jz	00146$
      005B2B 7B 00            [12] 8880 	mov	r3,#0x00
      005B2D 8C 82            [24] 8881 	mov	dpl,r4
      005B2F 8B 83            [24] 8882 	mov	dph,r3
      005B31 12 29 C0         [24] 8883 	lcall	_putchar
      005B34 0D               [12] 8884 	inc	r5
                                   8885 ;	calc.c:435: printstr("|\tor top 2\r\n");
      005B35 BD 00 E7         [24] 8886 	cjne	r5,#0x00,00230$
      005B38 0E               [12] 8887 	inc	r6
      005B39 80 E4            [24] 8888 	sjmp	00230$
      005B3B                       8889 00146$:
                                   8890 ;	calc.c:436: printstr("^\txor top 2\r\n");
      005B3B 7D 12            [12] 8891 	mov	r5,#___str_42
      005B3D 7E 83            [12] 8892 	mov	r6,#(___str_42 >> 8)
      005B3F 7F 80            [12] 8893 	mov	r7,#0x80
                                   8894 ;	calc.c:51: return;
      005B41                       8895 00233$:
                                   8896 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005B41 8D 82            [24] 8897 	mov	dpl,r5
      005B43 8E 83            [24] 8898 	mov	dph,r6
      005B45 8F F0            [24] 8899 	mov	b,r7
      005B47 12 67 7F         [24] 8900 	lcall	__gptrget
      005B4A FC               [12] 8901 	mov	r4,a
      005B4B 60 10            [24] 8902 	jz	00148$
      005B4D 7B 00            [12] 8903 	mov	r3,#0x00
      005B4F 8C 82            [24] 8904 	mov	dpl,r4
      005B51 8B 83            [24] 8905 	mov	dph,r3
      005B53 12 29 C0         [24] 8906 	lcall	_putchar
      005B56 0D               [12] 8907 	inc	r5
                                   8908 ;	calc.c:436: printstr("^\txor top 2\r\n");
      005B57 BD 00 E7         [24] 8909 	cjne	r5,#0x00,00233$
      005B5A 0E               [12] 8910 	inc	r6
      005B5B 80 E4            [24] 8911 	sjmp	00233$
      005B5D                       8912 00148$:
                                   8913 ;	calc.c:437: printstr(">\tshift right top 2\r\n");
      005B5D 7D 20            [12] 8914 	mov	r5,#___str_43
      005B5F 7E 83            [12] 8915 	mov	r6,#(___str_43 >> 8)
      005B61 7F 80            [12] 8916 	mov	r7,#0x80
                                   8917 ;	calc.c:51: return;
      005B63                       8918 00236$:
                                   8919 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005B63 8D 82            [24] 8920 	mov	dpl,r5
      005B65 8E 83            [24] 8921 	mov	dph,r6
      005B67 8F F0            [24] 8922 	mov	b,r7
      005B69 12 67 7F         [24] 8923 	lcall	__gptrget
      005B6C FC               [12] 8924 	mov	r4,a
      005B6D 60 10            [24] 8925 	jz	00150$
      005B6F 7B 00            [12] 8926 	mov	r3,#0x00
      005B71 8C 82            [24] 8927 	mov	dpl,r4
      005B73 8B 83            [24] 8928 	mov	dph,r3
      005B75 12 29 C0         [24] 8929 	lcall	_putchar
      005B78 0D               [12] 8930 	inc	r5
                                   8931 ;	calc.c:437: printstr(">\tshift right top 2\r\n");
      005B79 BD 00 E7         [24] 8932 	cjne	r5,#0x00,00236$
      005B7C 0E               [12] 8933 	inc	r6
      005B7D 80 E4            [24] 8934 	sjmp	00236$
      005B7F                       8935 00150$:
                                   8936 ;	calc.c:438: printstr("]\tarithmetic shift right top 2\r\n");
      005B7F 7D 36            [12] 8937 	mov	r5,#___str_44
      005B81 7E 83            [12] 8938 	mov	r6,#(___str_44 >> 8)
      005B83 7F 80            [12] 8939 	mov	r7,#0x80
                                   8940 ;	calc.c:51: return;
      005B85                       8941 00239$:
                                   8942 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005B85 8D 82            [24] 8943 	mov	dpl,r5
      005B87 8E 83            [24] 8944 	mov	dph,r6
      005B89 8F F0            [24] 8945 	mov	b,r7
      005B8B 12 67 7F         [24] 8946 	lcall	__gptrget
      005B8E FC               [12] 8947 	mov	r4,a
      005B8F 60 10            [24] 8948 	jz	00152$
      005B91 7B 00            [12] 8949 	mov	r3,#0x00
      005B93 8C 82            [24] 8950 	mov	dpl,r4
      005B95 8B 83            [24] 8951 	mov	dph,r3
      005B97 12 29 C0         [24] 8952 	lcall	_putchar
      005B9A 0D               [12] 8953 	inc	r5
                                   8954 ;	calc.c:438: printstr("]\tarithmetic shift right top 2\r\n");
      005B9B BD 00 E7         [24] 8955 	cjne	r5,#0x00,00239$
      005B9E 0E               [12] 8956 	inc	r6
      005B9F 80 E4            [24] 8957 	sjmp	00239$
      005BA1                       8958 00152$:
                                   8959 ;	calc.c:439: printstr("<\tshift left top 2\r\n");
      005BA1 7D 57            [12] 8960 	mov	r5,#___str_45
      005BA3 7E 83            [12] 8961 	mov	r6,#(___str_45 >> 8)
      005BA5 7F 80            [12] 8962 	mov	r7,#0x80
                                   8963 ;	calc.c:51: return;
      005BA7                       8964 00242$:
                                   8965 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005BA7 8D 82            [24] 8966 	mov	dpl,r5
      005BA9 8E 83            [24] 8967 	mov	dph,r6
      005BAB 8F F0            [24] 8968 	mov	b,r7
      005BAD 12 67 7F         [24] 8969 	lcall	__gptrget
      005BB0 FC               [12] 8970 	mov	r4,a
      005BB1 60 10            [24] 8971 	jz	00154$
      005BB3 7B 00            [12] 8972 	mov	r3,#0x00
      005BB5 8C 82            [24] 8973 	mov	dpl,r4
      005BB7 8B 83            [24] 8974 	mov	dph,r3
      005BB9 12 29 C0         [24] 8975 	lcall	_putchar
      005BBC 0D               [12] 8976 	inc	r5
                                   8977 ;	calc.c:439: printstr("<\tshift left top 2\r\n");
      005BBD BD 00 E7         [24] 8978 	cjne	r5,#0x00,00242$
      005BC0 0E               [12] 8979 	inc	r6
      005BC1 80 E4            [24] 8980 	sjmp	00242$
      005BC3                       8981 00154$:
                                   8982 ;	calc.c:440: printstr("~\tbitwise not top\r\n");
      005BC3 7D 6C            [12] 8983 	mov	r5,#___str_46
      005BC5 7E 83            [12] 8984 	mov	r6,#(___str_46 >> 8)
      005BC7 7F 80            [12] 8985 	mov	r7,#0x80
                                   8986 ;	calc.c:51: return;
      005BC9                       8987 00245$:
                                   8988 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005BC9 8D 82            [24] 8989 	mov	dpl,r5
      005BCB 8E 83            [24] 8990 	mov	dph,r6
      005BCD 8F F0            [24] 8991 	mov	b,r7
      005BCF 12 67 7F         [24] 8992 	lcall	__gptrget
      005BD2 FC               [12] 8993 	mov	r4,a
      005BD3 60 10            [24] 8994 	jz	00156$
      005BD5 7B 00            [12] 8995 	mov	r3,#0x00
      005BD7 8C 82            [24] 8996 	mov	dpl,r4
      005BD9 8B 83            [24] 8997 	mov	dph,r3
      005BDB 12 29 C0         [24] 8998 	lcall	_putchar
      005BDE 0D               [12] 8999 	inc	r5
                                   9000 ;	calc.c:440: printstr("~\tbitwise not top\r\n");
      005BDF BD 00 E7         [24] 9001 	cjne	r5,#0x00,00245$
      005BE2 0E               [12] 9002 	inc	r6
      005BE3 80 E4            [24] 9003 	sjmp	00245$
      005BE5                       9004 00156$:
                                   9005 ;	calc.c:441: printstr("s\tstatus\r\n");
      005BE5 7D 80            [12] 9006 	mov	r5,#___str_47
      005BE7 7E 83            [12] 9007 	mov	r6,#(___str_47 >> 8)
      005BE9 7F 80            [12] 9008 	mov	r7,#0x80
                                   9009 ;	calc.c:51: return;
      005BEB                       9010 00248$:
                                   9011 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005BEB 8D 82            [24] 9012 	mov	dpl,r5
      005BED 8E 83            [24] 9013 	mov	dph,r6
      005BEF 8F F0            [24] 9014 	mov	b,r7
      005BF1 12 67 7F         [24] 9015 	lcall	__gptrget
      005BF4 FC               [12] 9016 	mov	r4,a
      005BF5 60 10            [24] 9017 	jz	00158$
      005BF7 7B 00            [12] 9018 	mov	r3,#0x00
      005BF9 8C 82            [24] 9019 	mov	dpl,r4
      005BFB 8B 83            [24] 9020 	mov	dph,r3
      005BFD 12 29 C0         [24] 9021 	lcall	_putchar
      005C00 0D               [12] 9022 	inc	r5
                                   9023 ;	calc.c:441: printstr("s\tstatus\r\n");
      005C01 BD 00 E7         [24] 9024 	cjne	r5,#0x00,00248$
      005C04 0E               [12] 9025 	inc	r6
      005C05 80 E4            [24] 9026 	sjmp	00248$
      005C07                       9027 00158$:
                                   9028 ;	calc.c:442: printstr("?\thelp\r\n");
      005C07 7D 8B            [12] 9029 	mov	r5,#___str_48
      005C09 7E 83            [12] 9030 	mov	r6,#(___str_48 >> 8)
      005C0B 7F 80            [12] 9031 	mov	r7,#0x80
                                   9032 ;	calc.c:51: return;
      005C0D                       9033 00251$:
                                   9034 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005C0D 8D 82            [24] 9035 	mov	dpl,r5
      005C0F 8E 83            [24] 9036 	mov	dph,r6
      005C11 8F F0            [24] 9037 	mov	b,r7
      005C13 12 67 7F         [24] 9038 	lcall	__gptrget
      005C16 FC               [12] 9039 	mov	r4,a
      005C17 60 10            [24] 9040 	jz	00160$
      005C19 7B 00            [12] 9041 	mov	r3,#0x00
      005C1B 8C 82            [24] 9042 	mov	dpl,r4
      005C1D 8B 83            [24] 9043 	mov	dph,r3
      005C1F 12 29 C0         [24] 9044 	lcall	_putchar
      005C22 0D               [12] 9045 	inc	r5
                                   9046 ;	calc.c:442: printstr("?\thelp\r\n");
      005C23 BD 00 E7         [24] 9047 	cjne	r5,#0x00,00251$
      005C26 0E               [12] 9048 	inc	r6
      005C27 80 E4            [24] 9049 	sjmp	00251$
      005C29                       9050 00160$:
                                   9051 ;	calc.c:443: printstr("q\tquit\r\n");
      005C29 7D 94            [12] 9052 	mov	r5,#___str_49
      005C2B 7E 83            [12] 9053 	mov	r6,#(___str_49 >> 8)
      005C2D 7F 80            [12] 9054 	mov	r7,#0x80
                                   9055 ;	calc.c:51: return;
      005C2F                       9056 00254$:
                                   9057 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005C2F 8D 82            [24] 9058 	mov	dpl,r5
      005C31 8E 83            [24] 9059 	mov	dph,r6
      005C33 8F F0            [24] 9060 	mov	b,r7
      005C35 12 67 7F         [24] 9061 	lcall	__gptrget
      005C38 FC               [12] 9062 	mov	r4,a
      005C39 60 10            [24] 9063 	jz	00162$
      005C3B 7B 00            [12] 9064 	mov	r3,#0x00
      005C3D 8C 82            [24] 9065 	mov	dpl,r4
      005C3F 8B 83            [24] 9066 	mov	dph,r3
      005C41 12 29 C0         [24] 9067 	lcall	_putchar
      005C44 0D               [12] 9068 	inc	r5
                                   9069 ;	calc.c:443: printstr("q\tquit\r\n");
      005C45 BD 00 E7         [24] 9070 	cjne	r5,#0x00,00254$
      005C48 0E               [12] 9071 	inc	r6
      005C49 80 E4            [24] 9072 	sjmp	00254$
      005C4B                       9073 00162$:
                                   9074 ;	calc.c:445: return 1;
      005C4B 90 00 01         [24] 9075 	mov	dptr,#0x0001
                                   9076 ;	calc.c:446: }
      005C4E D0 08            [24] 9077 	pop	_bp
      005C50 22               [24] 9078 	ret
                                   9079 ;------------------------------------------------------------
                                   9080 ;Allocation info for local variables in function 'main'
                                   9081 ;------------------------------------------------------------
                                   9082 ;input                     Allocated to registers r6 r7 
                                   9083 ;__1966080191              Allocated to registers 
                                   9084 ;s                         Allocated to registers r2 r3 r4 
                                   9085 ;__1310720193              Allocated to registers 
                                   9086 ;s                         Allocated to registers r5 r6 r7 
                                   9087 ;sloc0                     Allocated to stack - _bp +1
                                   9088 ;------------------------------------------------------------
                                   9089 ;	calc.c:476: void main(void) {
                                   9090 ;	-----------------------------------------
                                   9091 ;	 function main
                                   9092 ;	-----------------------------------------
      005C51                       9093 _main:
      005C51 C0 08            [24] 9094 	push	_bp
      005C53 85 81 08         [24] 9095 	mov	_bp,sp
      005C56 05 81            [12] 9096 	inc	sp
                                   9097 ;	calc.c:479: c.base = 10;
      005C58 90 90 0C         [24] 9098 	mov	dptr,#_c
      005C5B 74 0A            [12] 9099 	mov	a,#0x0a
      005C5D F0               [24] 9100 	movx	@dptr,a
      005C5E E4               [12] 9101 	clr	a
      005C5F A3               [24] 9102 	inc	dptr
      005C60 F0               [24] 9103 	movx	@dptr,a
                                   9104 ;	calc.c:480: c.acc = 0l;
      005C61 90 90 0E         [24] 9105 	mov	dptr,#(_c + 0x0002)
      005C64 F0               [24] 9106 	movx	@dptr,a
      005C65 A3               [24] 9107 	inc	dptr
      005C66 F0               [24] 9108 	movx	@dptr,a
      005C67 A3               [24] 9109 	inc	dptr
      005C68 F0               [24] 9110 	movx	@dptr,a
      005C69 A3               [24] 9111 	inc	dptr
      005C6A F0               [24] 9112 	movx	@dptr,a
                                   9113 ;	calc.c:481: c.acc_valid = (char)0;
      005C6B 90 90 12         [24] 9114 	mov	dptr,#(_c + 0x0006)
      005C6E F0               [24] 9115 	movx	@dptr,a
                                   9116 ;	calc.c:482: c.digit[0] = c.digit[1] = '\0';
      005C6F 90 90 14         [24] 9117 	mov	dptr,#(_c + 0x0008)
      005C72 F0               [24] 9118 	movx	@dptr,a
      005C73 90 90 13         [24] 9119 	mov	dptr,#(_c + 0x0007)
      005C76 F0               [24] 9120 	movx	@dptr,a
                                   9121 ;	calc.c:484: c.ps = &c.s0;
      005C77 90 D0 1D         [24] 9122 	mov	dptr,#(_c + 0x4011)
      005C7A 74 15            [12] 9123 	mov	a,#(_c + 0x0009)
      005C7C F0               [24] 9124 	movx	@dptr,a
      005C7D 74 90            [12] 9125 	mov	a,#((_c + 0x0009) >> 8)
      005C7F A3               [24] 9126 	inc	dptr
      005C80 F0               [24] 9127 	movx	@dptr,a
      005C81 E4               [12] 9128 	clr	a
      005C82 A3               [24] 9129 	inc	dptr
      005C83 F0               [24] 9130 	movx	@dptr,a
                                   9131 ;	calc.c:485: c.ss = &c.s1;
      005C84 90 D0 20         [24] 9132 	mov	dptr,#(_c + 0x4014)
      005C87 74 19            [12] 9133 	mov	a,#(_c + 0x200d)
      005C89 F0               [24] 9134 	movx	@dptr,a
      005C8A 74 B0            [12] 9135 	mov	a,#((_c + 0x200d) >> 8)
      005C8C A3               [24] 9136 	inc	dptr
      005C8D F0               [24] 9137 	movx	@dptr,a
      005C8E E4               [12] 9138 	clr	a
      005C8F A3               [24] 9139 	inc	dptr
      005C90 F0               [24] 9140 	movx	@dptr,a
                                   9141 ;	calc.c:486: stack_init(c.ps);
      005C91 90 90 15         [24] 9142 	mov	dptr,#(_c + 0x0009)
      005C94 75 F0 00         [24] 9143 	mov	b,#0x00
      005C97 12 26 80         [24] 9144 	lcall	_stack_init
                                   9145 ;	calc.c:487: stack_init(c.ss);
      005C9A 90 D0 20         [24] 9146 	mov	dptr,#(_c + 0x4014)
      005C9D E0               [24] 9147 	movx	a,@dptr
      005C9E FD               [12] 9148 	mov	r5,a
      005C9F A3               [24] 9149 	inc	dptr
      005CA0 E0               [24] 9150 	movx	a,@dptr
      005CA1 FE               [12] 9151 	mov	r6,a
      005CA2 A3               [24] 9152 	inc	dptr
      005CA3 E0               [24] 9153 	movx	a,@dptr
      005CA4 FF               [12] 9154 	mov	r7,a
      005CA5 8D 82            [24] 9155 	mov	dpl,r5
      005CA7 8E 83            [24] 9156 	mov	dph,r6
      005CA9 8F F0            [24] 9157 	mov	b,r7
      005CAB 12 26 80         [24] 9158 	lcall	_stack_init
                                   9159 ;	calc.c:489: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      005CAE 74 0C            [12] 9160 	mov	a,#_c
      005CB0 C0 E0            [24] 9161 	push	acc
      005CB2 74 90            [12] 9162 	mov	a,#(_c >> 8)
      005CB4 C0 E0            [24] 9163 	push	acc
      005CB6 E4               [12] 9164 	clr	a
      005CB7 C0 E0            [24] 9165 	push	acc
      005CB9 74 25            [12] 9166 	mov	a,#_deltas
      005CBB C0 E0            [24] 9167 	push	acc
      005CBD 74 D0            [12] 9168 	mov	a,#(_deltas >> 8)
      005CBF C0 E0            [24] 9169 	push	acc
      005CC1 E4               [12] 9170 	clr	a
      005CC2 C0 E0            [24] 9171 	push	acc
      005CC4 C0 E0            [24] 9172 	push	acc
      005CC6 74 80            [12] 9173 	mov	a,#0x80
      005CC8 C0 E0            [24] 9174 	push	acc
      005CCA 74 03            [12] 9175 	mov	a,#0x03
      005CCC C0 E0            [24] 9176 	push	acc
      005CCE E4               [12] 9177 	clr	a
      005CCF C0 E0            [24] 9178 	push	acc
      005CD1 C0 E0            [24] 9179 	push	acc
      005CD3 C0 E0            [24] 9180 	push	acc
      005CD5 90 90 00         [24] 9181 	mov	dptr,#_s
      005CD8 75 F0 00         [24] 9182 	mov	b,#0x00
      005CDB 12 20 90         [24] 9183 	lcall	_state_init
      005CDE E5 81            [12] 9184 	mov	a,sp
      005CE0 24 F4            [12] 9185 	add	a,#0xf4
      005CE2 F5 81            [12] 9186 	mov	sp,a
                                   9187 ;	calc.c:491: (void)status(&c, deltas);
      005CE4 74 25            [12] 9188 	mov	a,#_deltas
      005CE6 C0 E0            [24] 9189 	push	acc
      005CE8 74 D0            [12] 9190 	mov	a,#(_deltas >> 8)
      005CEA C0 E0            [24] 9191 	push	acc
      005CEC E4               [12] 9192 	clr	a
      005CED C0 E0            [24] 9193 	push	acc
      005CEF 90 90 0C         [24] 9194 	mov	dptr,#_c
      005CF2 75 F0 00         [24] 9195 	mov	b,#0x00
      005CF5 12 56 13         [24] 9196 	lcall	_status
      005CF8 15 81            [12] 9197 	dec	sp
      005CFA 15 81            [12] 9198 	dec	sp
      005CFC 15 81            [12] 9199 	dec	sp
                                   9200 ;	calc.c:493: while (1) {
      005CFE                       9201 00192$:
                                   9202 ;	calc.c:494: input = getchar();
      005CFE 12 29 C5         [24] 9203 	lcall	_getchar
      005D01 AE 82            [24] 9204 	mov	r6,dpl
      005D03 AF 83            [24] 9205 	mov	r7,dph
                                   9206 ;	calc.c:495: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      005D05 8E 05            [24] 9207 	mov	ar5,r6
      005D07 BD 0D 02         [24] 9208 	cjne	r5,#0x0d,00400$
      005D0A 80 03            [24] 9209 	sjmp	00101$
      005D0C                       9210 00400$:
      005D0C BD 0A 36         [24] 9211 	cjne	r5,#0x0a,00102$
      005D0F                       9212 00101$:
      005D0F 7A 30            [12] 9213 	mov	r2,#___str_5
      005D11 7B 80            [12] 9214 	mov	r3,#(___str_5 >> 8)
      005D13 7C 80            [12] 9215 	mov	r4,#0x80
                                   9216 ;	calc.c:51: return;
      005D15                       9217 00199$:
                                   9218 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005D15 8A 82            [24] 9219 	mov	dpl,r2
      005D17 8B 83            [24] 9220 	mov	dph,r3
      005D19 8C F0            [24] 9221 	mov	b,r4
      005D1B A8 08            [24] 9222 	mov	r0,_bp
      005D1D 08               [12] 9223 	inc	r0
      005D1E 12 67 7F         [24] 9224 	lcall	__gptrget
      005D21 F6               [12] 9225 	mov	@r0,a
      005D22 A8 08            [24] 9226 	mov	r0,_bp
      005D24 08               [12] 9227 	inc	r0
      005D25 E6               [12] 9228 	mov	a,@r0
      005D26 60 24            [24] 9229 	jz	00103$
      005D28 C0 06            [24] 9230 	push	ar6
      005D2A C0 07            [24] 9231 	push	ar7
      005D2C A8 08            [24] 9232 	mov	r0,_bp
      005D2E 08               [12] 9233 	inc	r0
      005D2F 86 06            [24] 9234 	mov	ar6,@r0
      005D31 7F 00            [12] 9235 	mov	r7,#0x00
      005D33 8E 82            [24] 9236 	mov	dpl,r6
      005D35 8F 83            [24] 9237 	mov	dph,r7
      005D37 12 29 C0         [24] 9238 	lcall	_putchar
      005D3A 0A               [12] 9239 	inc	r2
      005D3B BA 00 01         [24] 9240 	cjne	r2,#0x00,00404$
      005D3E 0B               [12] 9241 	inc	r3
      005D3F                       9242 00404$:
      005D3F D0 07            [24] 9243 	pop	ar7
      005D41 D0 06            [24] 9244 	pop	ar6
                                   9245 ;	calc.c:495: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      005D43 80 D0            [24] 9246 	sjmp	00199$
      005D45                       9247 00102$:
                                   9248 ;	calc.c:496: else (void)putchar(input);
      005D45 8E 82            [24] 9249 	mov	dpl,r6
      005D47 8F 83            [24] 9250 	mov	dph,r7
      005D49 12 29 C0         [24] 9251 	lcall	_putchar
      005D4C                       9252 00103$:
                                   9253 ;	calc.c:497: c.digit[0] = (char)input;
      005D4C 90 90 13         [24] 9254 	mov	dptr,#(_c + 0x0007)
      005D4F ED               [12] 9255 	mov	a,r5
      005D50 F0               [24] 9256 	movx	@dptr,a
                                   9257 ;	calc.c:499: if ((char)input == 'q') {
      005D51 BD 71 29         [24] 9258 	cjne	r5,#0x71,00189$
                                   9259 ;	calc.c:500: if (state_exec(&s, EVENT_TERM) <= 0) break;
      005D54 74 08            [12] 9260 	mov	a,#0x08
      005D56 C0 E0            [24] 9261 	push	acc
      005D58 E4               [12] 9262 	clr	a
      005D59 C0 E0            [24] 9263 	push	acc
      005D5B 90 90 00         [24] 9264 	mov	dptr,#_s
      005D5E 75 F0 00         [24] 9265 	mov	b,#0x00
      005D61 12 21 46         [24] 9266 	lcall	_state_exec
      005D64 AB 82            [24] 9267 	mov	r3,dpl
      005D66 AC 83            [24] 9268 	mov	r4,dph
      005D68 15 81            [12] 9269 	dec	sp
      005D6A 15 81            [12] 9270 	dec	sp
      005D6C C3               [12] 9271 	clr	c
      005D6D E4               [12] 9272 	clr	a
      005D6E 9B               [12] 9273 	subb	a,r3
      005D6F 74 80            [12] 9274 	mov	a,#(0x00 ^ 0x80)
      005D71 8C F0            [24] 9275 	mov	b,r4
      005D73 63 F0 80         [24] 9276 	xrl	b,#0x80
      005D76 95 F0            [12] 9277 	subb	a,b
      005D78 40 84            [24] 9278 	jc	00192$
      005D7A 02 60 2C         [24] 9279 	ljmp	00193$
      005D7D                       9280 00189$:
                                   9281 ;	calc.c:501: } else if ((char)input == 's') {
      005D7D BD 73 2C         [24] 9282 	cjne	r5,#0x73,00186$
                                   9283 ;	calc.c:502: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      005D80 74 03            [12] 9284 	mov	a,#0x03
      005D82 C0 E0            [24] 9285 	push	acc
      005D84 E4               [12] 9286 	clr	a
      005D85 C0 E0            [24] 9287 	push	acc
      005D87 90 90 00         [24] 9288 	mov	dptr,#_s
      005D8A 75 F0 00         [24] 9289 	mov	b,#0x00
      005D8D 12 21 46         [24] 9290 	lcall	_state_exec
      005D90 AB 82            [24] 9291 	mov	r3,dpl
      005D92 AC 83            [24] 9292 	mov	r4,dph
      005D94 15 81            [12] 9293 	dec	sp
      005D96 15 81            [12] 9294 	dec	sp
      005D98 C3               [12] 9295 	clr	c
      005D99 E4               [12] 9296 	clr	a
      005D9A 9B               [12] 9297 	subb	a,r3
      005D9B 74 80            [12] 9298 	mov	a,#(0x00 ^ 0x80)
      005D9D 8C F0            [24] 9299 	mov	b,r4
      005D9F 63 F0 80         [24] 9300 	xrl	b,#0x80
      005DA2 95 F0            [12] 9301 	subb	a,b
      005DA4 50 03            [24] 9302 	jnc	00410$
      005DA6 02 5C FE         [24] 9303 	ljmp	00192$
      005DA9                       9304 00410$:
      005DA9 02 60 2C         [24] 9305 	ljmp	00193$
      005DAC                       9306 00186$:
                                   9307 ;	calc.c:503: } else if ((char)input == '?') {
      005DAC BD 3F 2C         [24] 9308 	cjne	r5,#0x3f,00183$
                                   9309 ;	calc.c:504: if (state_exec(&s, EVENT_HELP) <= 0) break;
      005DAF 74 04            [12] 9310 	mov	a,#0x04
      005DB1 C0 E0            [24] 9311 	push	acc
      005DB3 E4               [12] 9312 	clr	a
      005DB4 C0 E0            [24] 9313 	push	acc
      005DB6 90 90 00         [24] 9314 	mov	dptr,#_s
      005DB9 75 F0 00         [24] 9315 	mov	b,#0x00
      005DBC 12 21 46         [24] 9316 	lcall	_state_exec
      005DBF AB 82            [24] 9317 	mov	r3,dpl
      005DC1 AC 83            [24] 9318 	mov	r4,dph
      005DC3 15 81            [12] 9319 	dec	sp
      005DC5 15 81            [12] 9320 	dec	sp
      005DC7 C3               [12] 9321 	clr	c
      005DC8 E4               [12] 9322 	clr	a
      005DC9 9B               [12] 9323 	subb	a,r3
      005DCA 74 80            [12] 9324 	mov	a,#(0x00 ^ 0x80)
      005DCC 8C F0            [24] 9325 	mov	b,r4
      005DCE 63 F0 80         [24] 9326 	xrl	b,#0x80
      005DD1 95 F0            [12] 9327 	subb	a,b
      005DD3 50 03            [24] 9328 	jnc	00413$
      005DD5 02 5C FE         [24] 9329 	ljmp	00192$
      005DD8                       9330 00413$:
      005DD8 02 60 2C         [24] 9331 	ljmp	00193$
      005DDB                       9332 00183$:
                                   9333 ;	calc.c:505: } else if ((char)input == 'i') {
      005DDB BD 69 2C         [24] 9334 	cjne	r5,#0x69,00180$
                                   9335 ;	calc.c:506: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      005DDE 74 06            [12] 9336 	mov	a,#0x06
      005DE0 C0 E0            [24] 9337 	push	acc
      005DE2 E4               [12] 9338 	clr	a
      005DE3 C0 E0            [24] 9339 	push	acc
      005DE5 90 90 00         [24] 9340 	mov	dptr,#_s
      005DE8 75 F0 00         [24] 9341 	mov	b,#0x00
      005DEB 12 21 46         [24] 9342 	lcall	_state_exec
      005DEE AB 82            [24] 9343 	mov	r3,dpl
      005DF0 AC 83            [24] 9344 	mov	r4,dph
      005DF2 15 81            [12] 9345 	dec	sp
      005DF4 15 81            [12] 9346 	dec	sp
      005DF6 C3               [12] 9347 	clr	c
      005DF7 E4               [12] 9348 	clr	a
      005DF8 9B               [12] 9349 	subb	a,r3
      005DF9 74 80            [12] 9350 	mov	a,#(0x00 ^ 0x80)
      005DFB 8C F0            [24] 9351 	mov	b,r4
      005DFD 63 F0 80         [24] 9352 	xrl	b,#0x80
      005E00 95 F0            [12] 9353 	subb	a,b
      005E02 50 03            [24] 9354 	jnc	00416$
      005E04 02 5C FE         [24] 9355 	ljmp	00192$
      005E07                       9356 00416$:
      005E07 02 60 2C         [24] 9357 	ljmp	00193$
      005E0A                       9358 00180$:
                                   9359 ;	calc.c:507: } else if ((char)input == 'I') {
      005E0A BD 49 2C         [24] 9360 	cjne	r5,#0x49,00177$
                                   9361 ;	calc.c:508: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      005E0D 74 07            [12] 9362 	mov	a,#0x07
      005E0F C0 E0            [24] 9363 	push	acc
      005E11 E4               [12] 9364 	clr	a
      005E12 C0 E0            [24] 9365 	push	acc
      005E14 90 90 00         [24] 9366 	mov	dptr,#_s
      005E17 75 F0 00         [24] 9367 	mov	b,#0x00
      005E1A 12 21 46         [24] 9368 	lcall	_state_exec
      005E1D AB 82            [24] 9369 	mov	r3,dpl
      005E1F AC 83            [24] 9370 	mov	r4,dph
      005E21 15 81            [12] 9371 	dec	sp
      005E23 15 81            [12] 9372 	dec	sp
      005E25 C3               [12] 9373 	clr	c
      005E26 E4               [12] 9374 	clr	a
      005E27 9B               [12] 9375 	subb	a,r3
      005E28 74 80            [12] 9376 	mov	a,#(0x00 ^ 0x80)
      005E2A 8C F0            [24] 9377 	mov	b,r4
      005E2C 63 F0 80         [24] 9378 	xrl	b,#0x80
      005E2F 95 F0            [12] 9379 	subb	a,b
      005E31 50 03            [24] 9380 	jnc	00419$
      005E33 02 5C FE         [24] 9381 	ljmp	00192$
      005E36                       9382 00419$:
      005E36 02 60 2C         [24] 9383 	ljmp	00193$
      005E39                       9384 00177$:
                                   9385 ;	calc.c:510: ((char)input == 'h') || ((char)input == 'H') ||
      005E39 BD 68 02         [24] 9386 	cjne	r5,#0x68,00420$
      005E3C 80 0D            [24] 9387 	sjmp	00170$
      005E3E                       9388 00420$:
      005E3E BD 48 02         [24] 9389 	cjne	r5,#0x48,00421$
      005E41 80 08            [24] 9390 	sjmp	00170$
      005E43                       9391 00421$:
                                   9392 ;	calc.c:511: ((char)input == 'o') || ((char)input == 'O')
      005E43 BD 6F 02         [24] 9393 	cjne	r5,#0x6f,00422$
      005E46 80 03            [24] 9394 	sjmp	00170$
      005E48                       9395 00422$:
      005E48 BD 4F 2C         [24] 9396 	cjne	r5,#0x4f,00171$
      005E4B                       9397 00170$:
                                   9398 ;	calc.c:513: if (state_exec(&s, EVENT_BASE) <= 0) break;
      005E4B 74 05            [12] 9399 	mov	a,#0x05
      005E4D C0 E0            [24] 9400 	push	acc
      005E4F E4               [12] 9401 	clr	a
      005E50 C0 E0            [24] 9402 	push	acc
      005E52 90 90 00         [24] 9403 	mov	dptr,#_s
      005E55 75 F0 00         [24] 9404 	mov	b,#0x00
      005E58 12 21 46         [24] 9405 	lcall	_state_exec
      005E5B AB 82            [24] 9406 	mov	r3,dpl
      005E5D AC 83            [24] 9407 	mov	r4,dph
      005E5F 15 81            [12] 9408 	dec	sp
      005E61 15 81            [12] 9409 	dec	sp
      005E63 C3               [12] 9410 	clr	c
      005E64 E4               [12] 9411 	clr	a
      005E65 9B               [12] 9412 	subb	a,r3
      005E66 74 80            [12] 9413 	mov	a,#(0x00 ^ 0x80)
      005E68 8C F0            [24] 9414 	mov	b,r4
      005E6A 63 F0 80         [24] 9415 	xrl	b,#0x80
      005E6D 95 F0            [12] 9416 	subb	a,b
      005E6F 50 03            [24] 9417 	jnc	00425$
      005E71 02 5C FE         [24] 9418 	ljmp	00192$
      005E74                       9419 00425$:
      005E74 02 60 2C         [24] 9420 	ljmp	00193$
      005E77                       9421 00171$:
                                   9422 ;	calc.c:514: } else if (isxdigit(input)) {
      005E77 8E 82            [24] 9423 	mov	dpl,r6
      005E79 8F 83            [24] 9424 	mov	dph,r7
      005E7B C0 05            [24] 9425 	push	ar5
      005E7D 12 60 56         [24] 9426 	lcall	_isxdigit
      005E80 E5 82            [12] 9427 	mov	a,dpl
      005E82 85 83 F0         [24] 9428 	mov	b,dph
      005E85 D0 05            [24] 9429 	pop	ar5
      005E87 45 F0            [12] 9430 	orl	a,b
      005E89 60 2C            [24] 9431 	jz	00168$
                                   9432 ;	calc.c:515: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      005E8B 74 01            [12] 9433 	mov	a,#0x01
      005E8D C0 E0            [24] 9434 	push	acc
      005E8F E4               [12] 9435 	clr	a
      005E90 C0 E0            [24] 9436 	push	acc
      005E92 90 90 00         [24] 9437 	mov	dptr,#_s
      005E95 75 F0 00         [24] 9438 	mov	b,#0x00
      005E98 12 21 46         [24] 9439 	lcall	_state_exec
      005E9B AE 82            [24] 9440 	mov	r6,dpl
      005E9D AF 83            [24] 9441 	mov	r7,dph
      005E9F 15 81            [12] 9442 	dec	sp
      005EA1 15 81            [12] 9443 	dec	sp
      005EA3 C3               [12] 9444 	clr	c
      005EA4 E4               [12] 9445 	clr	a
      005EA5 9E               [12] 9446 	subb	a,r6
      005EA6 74 80            [12] 9447 	mov	a,#(0x00 ^ 0x80)
      005EA8 8F F0            [24] 9448 	mov	b,r7
      005EAA 63 F0 80         [24] 9449 	xrl	b,#0x80
      005EAD 95 F0            [12] 9450 	subb	a,b
      005EAF 50 03            [24] 9451 	jnc	00427$
      005EB1 02 5C FE         [24] 9452 	ljmp	00192$
      005EB4                       9453 00427$:
      005EB4 02 60 2C         [24] 9454 	ljmp	00193$
      005EB7                       9455 00168$:
                                   9456 ;	calc.c:517: ((char)input == 'p') || ((char)input == 'P') ||
      005EB7 BD 70 02         [24] 9457 	cjne	r5,#0x70,00428$
      005EBA 80 17            [24] 9458 	sjmp	00159$
      005EBC                       9459 00428$:
      005EBC BD 50 02         [24] 9460 	cjne	r5,#0x50,00429$
      005EBF 80 12            [24] 9461 	sjmp	00159$
      005EC1                       9462 00429$:
                                   9463 ;	calc.c:518: ((char)input == 'v') || ((char)input == 'V') ||
      005EC1 BD 76 02         [24] 9464 	cjne	r5,#0x76,00430$
      005EC4 80 0D            [24] 9465 	sjmp	00159$
      005EC6                       9466 00430$:
      005EC6 BD 56 02         [24] 9467 	cjne	r5,#0x56,00431$
      005EC9 80 08            [24] 9468 	sjmp	00159$
      005ECB                       9469 00431$:
                                   9470 ;	calc.c:519: ((char)input == '.') ||
      005ECB BD 2E 02         [24] 9471 	cjne	r5,#0x2e,00432$
      005ECE 80 03            [24] 9472 	sjmp	00159$
      005ED0                       9473 00432$:
                                   9474 ;	calc.c:520: ((char)input == 'x')
      005ED0 BD 78 2C         [24] 9475 	cjne	r5,#0x78,00160$
      005ED3                       9476 00159$:
                                   9477 ;	calc.c:522: if (state_exec(&s, EVENT_OP) <= 0) break;
      005ED3 74 02            [12] 9478 	mov	a,#0x02
      005ED5 C0 E0            [24] 9479 	push	acc
      005ED7 E4               [12] 9480 	clr	a
      005ED8 C0 E0            [24] 9481 	push	acc
      005EDA 90 90 00         [24] 9482 	mov	dptr,#_s
      005EDD 75 F0 00         [24] 9483 	mov	b,#0x00
      005EE0 12 21 46         [24] 9484 	lcall	_state_exec
      005EE3 AE 82            [24] 9485 	mov	r6,dpl
      005EE5 AF 83            [24] 9486 	mov	r7,dph
      005EE7 15 81            [12] 9487 	dec	sp
      005EE9 15 81            [12] 9488 	dec	sp
      005EEB C3               [12] 9489 	clr	c
      005EEC E4               [12] 9490 	clr	a
      005EED 9E               [12] 9491 	subb	a,r6
      005EEE 74 80            [12] 9492 	mov	a,#(0x00 ^ 0x80)
      005EF0 8F F0            [24] 9493 	mov	b,r7
      005EF2 63 F0 80         [24] 9494 	xrl	b,#0x80
      005EF5 95 F0            [12] 9495 	subb	a,b
      005EF7 50 03            [24] 9496 	jnc	00435$
      005EF9 02 5C FE         [24] 9497 	ljmp	00192$
      005EFC                       9498 00435$:
      005EFC 02 60 2C         [24] 9499 	ljmp	00193$
      005EFF                       9500 00160$:
                                   9501 ;	calc.c:524: ((char)input == 'X') || ((char)input == 'T') ||
      005EFF BD 58 02         [24] 9502 	cjne	r5,#0x58,00436$
      005F02 80 17            [24] 9503 	sjmp	00151$
      005F04                       9504 00436$:
      005F04 BD 54 02         [24] 9505 	cjne	r5,#0x54,00437$
      005F07 80 12            [24] 9506 	sjmp	00151$
      005F09                       9507 00437$:
                                   9508 ;	calc.c:525: ((char)input == 'm') || ((char)input == 'M') ||
      005F09 BD 6D 02         [24] 9509 	cjne	r5,#0x6d,00438$
      005F0C 80 0D            [24] 9510 	sjmp	00151$
      005F0E                       9511 00438$:
      005F0E BD 4D 02         [24] 9512 	cjne	r5,#0x4d,00439$
      005F11 80 08            [24] 9513 	sjmp	00151$
      005F13                       9514 00439$:
                                   9515 ;	calc.c:526: ((char)input == 'u') || ((char)input == 'U')
      005F13 BD 75 02         [24] 9516 	cjne	r5,#0x75,00440$
      005F16 80 03            [24] 9517 	sjmp	00151$
      005F18                       9518 00440$:
      005F18 BD 55 2C         [24] 9519 	cjne	r5,#0x55,00152$
      005F1B                       9520 00151$:
                                   9521 ;	calc.c:528: if (state_exec(&s, EVENT_OP) <= 0) break;
      005F1B 74 02            [12] 9522 	mov	a,#0x02
      005F1D C0 E0            [24] 9523 	push	acc
      005F1F E4               [12] 9524 	clr	a
      005F20 C0 E0            [24] 9525 	push	acc
      005F22 90 90 00         [24] 9526 	mov	dptr,#_s
      005F25 75 F0 00         [24] 9527 	mov	b,#0x00
      005F28 12 21 46         [24] 9528 	lcall	_state_exec
      005F2B AE 82            [24] 9529 	mov	r6,dpl
      005F2D AF 83            [24] 9530 	mov	r7,dph
      005F2F 15 81            [12] 9531 	dec	sp
      005F31 15 81            [12] 9532 	dec	sp
      005F33 C3               [12] 9533 	clr	c
      005F34 E4               [12] 9534 	clr	a
      005F35 9E               [12] 9535 	subb	a,r6
      005F36 74 80            [12] 9536 	mov	a,#(0x00 ^ 0x80)
      005F38 8F F0            [24] 9537 	mov	b,r7
      005F3A 63 F0 80         [24] 9538 	xrl	b,#0x80
      005F3D 95 F0            [12] 9539 	subb	a,b
      005F3F 50 03            [24] 9540 	jnc	00443$
      005F41 02 5C FE         [24] 9541 	ljmp	00192$
      005F44                       9542 00443$:
      005F44 02 60 2C         [24] 9543 	ljmp	00193$
      005F47                       9544 00152$:
                                   9545 ;	calc.c:530: ((char)input == '+') || ((char)input == '-')
      005F47 BD 2B 02         [24] 9546 	cjne	r5,#0x2b,00444$
      005F4A 80 03            [24] 9547 	sjmp	00147$
      005F4C                       9548 00444$:
      005F4C BD 2D 2C         [24] 9549 	cjne	r5,#0x2d,00148$
      005F4F                       9550 00147$:
                                   9551 ;	calc.c:532: if (state_exec(&s, EVENT_OP) <= 0) break;
      005F4F 74 02            [12] 9552 	mov	a,#0x02
      005F51 C0 E0            [24] 9553 	push	acc
      005F53 E4               [12] 9554 	clr	a
      005F54 C0 E0            [24] 9555 	push	acc
      005F56 90 90 00         [24] 9556 	mov	dptr,#_s
      005F59 75 F0 00         [24] 9557 	mov	b,#0x00
      005F5C 12 21 46         [24] 9558 	lcall	_state_exec
      005F5F AE 82            [24] 9559 	mov	r6,dpl
      005F61 AF 83            [24] 9560 	mov	r7,dph
      005F63 15 81            [12] 9561 	dec	sp
      005F65 15 81            [12] 9562 	dec	sp
      005F67 C3               [12] 9563 	clr	c
      005F68 E4               [12] 9564 	clr	a
      005F69 9E               [12] 9565 	subb	a,r6
      005F6A 74 80            [12] 9566 	mov	a,#(0x00 ^ 0x80)
      005F6C 8F F0            [24] 9567 	mov	b,r7
      005F6E 63 F0 80         [24] 9568 	xrl	b,#0x80
      005F71 95 F0            [12] 9569 	subb	a,b
      005F73 50 03            [24] 9570 	jnc	00447$
      005F75 02 5C FE         [24] 9571 	ljmp	00192$
      005F78                       9572 00447$:
      005F78 02 60 2C         [24] 9573 	ljmp	00193$
      005F7B                       9574 00148$:
                                   9575 ;	calc.c:534: ((char)input == '*') ||
      005F7B BD 2A 02         [24] 9576 	cjne	r5,#0x2a,00448$
      005F7E 80 12            [24] 9577 	sjmp	00140$
      005F80                       9578 00448$:
                                   9579 ;	calc.c:535: ((char)input == '/') || ((char)input == '\\') ||
      005F80 BD 2F 02         [24] 9580 	cjne	r5,#0x2f,00449$
      005F83 80 0D            [24] 9581 	sjmp	00140$
      005F85                       9582 00449$:
      005F85 BD 5C 02         [24] 9583 	cjne	r5,#0x5c,00450$
      005F88 80 08            [24] 9584 	sjmp	00140$
      005F8A                       9585 00450$:
                                   9586 ;	calc.c:536: ((char)input == '%') || ((char)input == '#')
      005F8A BD 25 02         [24] 9587 	cjne	r5,#0x25,00451$
      005F8D 80 03            [24] 9588 	sjmp	00140$
      005F8F                       9589 00451$:
      005F8F BD 23 29         [24] 9590 	cjne	r5,#0x23,00141$
      005F92                       9591 00140$:
                                   9592 ;	calc.c:538: if (state_exec(&s, EVENT_OP) <= 0) break;
      005F92 74 02            [12] 9593 	mov	a,#0x02
      005F94 C0 E0            [24] 9594 	push	acc
      005F96 E4               [12] 9595 	clr	a
      005F97 C0 E0            [24] 9596 	push	acc
      005F99 90 90 00         [24] 9597 	mov	dptr,#_s
      005F9C 75 F0 00         [24] 9598 	mov	b,#0x00
      005F9F 12 21 46         [24] 9599 	lcall	_state_exec
      005FA2 AE 82            [24] 9600 	mov	r6,dpl
      005FA4 AF 83            [24] 9601 	mov	r7,dph
      005FA6 15 81            [12] 9602 	dec	sp
      005FA8 15 81            [12] 9603 	dec	sp
      005FAA C3               [12] 9604 	clr	c
      005FAB E4               [12] 9605 	clr	a
      005FAC 9E               [12] 9606 	subb	a,r6
      005FAD 74 80            [12] 9607 	mov	a,#(0x00 ^ 0x80)
      005FAF 8F F0            [24] 9608 	mov	b,r7
      005FB1 63 F0 80         [24] 9609 	xrl	b,#0x80
      005FB4 95 F0            [12] 9610 	subb	a,b
      005FB6 50 74            [24] 9611 	jnc	00193$
      005FB8 02 5C FE         [24] 9612 	ljmp	00192$
      005FBB                       9613 00141$:
                                   9614 ;	calc.c:540: ((char)input == '&') ||
      005FBB BD 26 02         [24] 9615 	cjne	r5,#0x26,00455$
      005FBE 80 1C            [24] 9616 	sjmp	00131$
      005FC0                       9617 00455$:
                                   9618 ;	calc.c:541: ((char)input == '|') || ((char)input == '^') ||
      005FC0 BD 7C 02         [24] 9619 	cjne	r5,#0x7c,00456$
      005FC3 80 17            [24] 9620 	sjmp	00131$
      005FC5                       9621 00456$:
      005FC5 BD 5E 02         [24] 9622 	cjne	r5,#0x5e,00457$
      005FC8 80 12            [24] 9623 	sjmp	00131$
      005FCA                       9624 00457$:
                                   9625 ;	calc.c:542: ((char)input == '~') ||
      005FCA BD 7E 02         [24] 9626 	cjne	r5,#0x7e,00458$
      005FCD 80 0D            [24] 9627 	sjmp	00131$
      005FCF                       9628 00458$:
                                   9629 ;	calc.c:543: ((char)input == '>') || ((char)input == ']') ||
      005FCF BD 3E 02         [24] 9630 	cjne	r5,#0x3e,00459$
      005FD2 80 08            [24] 9631 	sjmp	00131$
      005FD4                       9632 00459$:
      005FD4 BD 5D 02         [24] 9633 	cjne	r5,#0x5d,00460$
      005FD7 80 03            [24] 9634 	sjmp	00131$
      005FD9                       9635 00460$:
                                   9636 ;	calc.c:544: ((char)input == '<')
      005FD9 BD 3C 29         [24] 9637 	cjne	r5,#0x3c,00132$
      005FDC                       9638 00131$:
                                   9639 ;	calc.c:546: if (state_exec(&s, EVENT_OP) <= 0) break;
      005FDC 74 02            [12] 9640 	mov	a,#0x02
      005FDE C0 E0            [24] 9641 	push	acc
      005FE0 E4               [12] 9642 	clr	a
      005FE1 C0 E0            [24] 9643 	push	acc
      005FE3 90 90 00         [24] 9644 	mov	dptr,#_s
      005FE6 75 F0 00         [24] 9645 	mov	b,#0x00
      005FE9 12 21 46         [24] 9646 	lcall	_state_exec
      005FEC AE 82            [24] 9647 	mov	r6,dpl
      005FEE AF 83            [24] 9648 	mov	r7,dph
      005FF0 15 81            [12] 9649 	dec	sp
      005FF2 15 81            [12] 9650 	dec	sp
      005FF4 C3               [12] 9651 	clr	c
      005FF5 E4               [12] 9652 	clr	a
      005FF6 9E               [12] 9653 	subb	a,r6
      005FF7 74 80            [12] 9654 	mov	a,#(0x00 ^ 0x80)
      005FF9 8F F0            [24] 9655 	mov	b,r7
      005FFB 63 F0 80         [24] 9656 	xrl	b,#0x80
      005FFE 95 F0            [12] 9657 	subb	a,b
      006000 50 2A            [24] 9658 	jnc	00193$
      006002 02 5C FE         [24] 9659 	ljmp	00192$
      006005                       9660 00132$:
                                   9661 ;	calc.c:548: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      006005 E4               [12] 9662 	clr	a
      006006 C0 E0            [24] 9663 	push	acc
      006008 C0 E0            [24] 9664 	push	acc
      00600A 90 90 00         [24] 9665 	mov	dptr,#_s
      00600D 75 F0 00         [24] 9666 	mov	b,#0x00
      006010 12 21 46         [24] 9667 	lcall	_state_exec
      006013 AE 82            [24] 9668 	mov	r6,dpl
      006015 AF 83            [24] 9669 	mov	r7,dph
      006017 15 81            [12] 9670 	dec	sp
      006019 15 81            [12] 9671 	dec	sp
      00601B C3               [12] 9672 	clr	c
      00601C E4               [12] 9673 	clr	a
      00601D 9E               [12] 9674 	subb	a,r6
      00601E 74 80            [12] 9675 	mov	a,#(0x00 ^ 0x80)
      006020 8F F0            [24] 9676 	mov	b,r7
      006022 63 F0 80         [24] 9677 	xrl	b,#0x80
      006025 95 F0            [12] 9678 	subb	a,b
      006027 50 03            [24] 9679 	jnc	00464$
      006029 02 5C FE         [24] 9680 	ljmp	00192$
      00602C                       9681 00464$:
      00602C                       9682 00193$:
                                   9683 ;	calc.c:552: printstr("TERM\r\n");
      00602C 7D 9D            [12] 9684 	mov	r5,#___str_50
      00602E 7E 83            [12] 9685 	mov	r6,#(___str_50 >> 8)
      006030 7F 80            [12] 9686 	mov	r7,#0x80
                                   9687 ;	calc.c:51: return;
      006032                       9688 00202$:
                                   9689 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006032 8D 82            [24] 9690 	mov	dpl,r5
      006034 8E 83            [24] 9691 	mov	dph,r6
      006036 8F F0            [24] 9692 	mov	b,r7
      006038 12 67 7F         [24] 9693 	lcall	__gptrget
      00603B FC               [12] 9694 	mov	r4,a
      00603C 60 10            [24] 9695 	jz	00197$
      00603E 7B 00            [12] 9696 	mov	r3,#0x00
      006040 8C 82            [24] 9697 	mov	dpl,r4
      006042 8B 83            [24] 9698 	mov	dph,r3
      006044 12 29 C0         [24] 9699 	lcall	_putchar
      006047 0D               [12] 9700 	inc	r5
                                   9701 ;	calc.c:552: printstr("TERM\r\n");
      006048 BD 00 E7         [24] 9702 	cjne	r5,#0x00,00202$
      00604B 0E               [12] 9703 	inc	r6
      00604C 80 E4            [24] 9704 	sjmp	00202$
      00604E                       9705 00197$:
                                   9706 ;	calc.c:554: PCON |= 2;
      00604E 43 87 02         [24] 9707 	orl	_PCON,#0x02
                                   9708 ;	calc.c:556: return;
                                   9709 ;	calc.c:557: }
      006051 15 81            [12] 9710 	dec	sp
      006053 D0 08            [24] 9711 	pop	_bp
      006055 22               [24] 9712 	ret
                                   9713 	.area CSEG    (CODE)
                                   9714 	.area CONST   (CODE)
                                   9715 	.area CONST   (CODE)
      008000                       9716 ___str_0:
      008000 0D                    9717 	.db 0x0d
      008001 0A                    9718 	.db 0x0a
      008002 50 53                 9719 	.ascii "PS"
      008004 0D                    9720 	.db 0x0d
      008005 0A                    9721 	.db 0x0a
      008006 00                    9722 	.db 0x00
                                   9723 	.area CSEG    (CODE)
                                   9724 	.area CONST   (CODE)
      008007                       9725 ___str_1:
      008007 73 74 61 63 6B 20 75  9726 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      008016 0D                    9727 	.db 0x0d
      008017 0A                    9728 	.db 0x0a
      008018 00                    9729 	.db 0x00
                                   9730 	.area CSEG    (CODE)
                                   9731 	.area CONST   (CODE)
      008019                       9732 ___str_2:
      008019 56 41 20              9733 	.ascii "VA "
      00801C 00                    9734 	.db 0x00
                                   9735 	.area CSEG    (CODE)
                                   9736 	.area CONST   (CODE)
      00801D                       9737 ___str_3:
      00801D 25 20 31 31 6C 64 20  9738 	.ascii "% 11ld / "
             2F 20
      008026 00                    9739 	.db 0x00
                                   9740 	.area CSEG    (CODE)
                                   9741 	.area CONST   (CODE)
      008027                       9742 ___str_4:
      008027 25 30 38 6C 78 20 2F  9743 	.ascii "%08lx / "
             20
      00802F 00                    9744 	.db 0x00
                                   9745 	.area CSEG    (CODE)
                                   9746 	.area CONST   (CODE)
      008030                       9747 ___str_5:
      008030 0D                    9748 	.db 0x0d
      008031 0A                    9749 	.db 0x0a
      008032 00                    9750 	.db 0x00
                                   9751 	.area CSEG    (CODE)
                                   9752 	.area CONST   (CODE)
      008033                       9753 ___str_6:
      008033 53 53                 9754 	.ascii "SS"
      008035 0D                    9755 	.db 0x0d
      008036 0A                    9756 	.db 0x0a
      008037 00                    9757 	.db 0x00
                                   9758 	.area CSEG    (CODE)
                                   9759 	.area CONST   (CODE)
      008038                       9760 ___str_7:
      008038 50 41 20              9761 	.ascii "PA "
      00803B 00                    9762 	.db 0x00
                                   9763 	.area CSEG    (CODE)
                                   9764 	.area CONST   (CODE)
      00803C                       9765 ___str_8:
      00803C 50 54 20              9766 	.ascii "PT "
      00803F 00                    9767 	.db 0x00
                                   9768 	.area CSEG    (CODE)
                                   9769 	.area CONST   (CODE)
      008040                       9770 ___str_9:
      008040 56 54 20              9771 	.ascii "VT "
      008043 00                    9772 	.db 0x00
                                   9773 	.area CSEG    (CODE)
                                   9774 	.area CONST   (CODE)
      008044                       9775 ___str_10:
      008044 0D                    9776 	.db 0x0d
      008045 0A                    9777 	.db 0x0a
      008046 73 74 61 63 6B 20 75  9778 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      008055 0D                    9779 	.db 0x0d
      008056 0A                    9780 	.db 0x0a
      008057 00                    9781 	.db 0x00
                                   9782 	.area CSEG    (CODE)
                                   9783 	.area CONST   (CODE)
      008058                       9784 ___str_11:
      008058 0D                    9785 	.db 0x0d
      008059 0A                    9786 	.db 0x0a
      00805A 73 65 63 6F 6E 64 61  9787 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      008072 0D                    9788 	.db 0x0d
      008073 0A                    9789 	.db 0x0a
      008074 00                    9790 	.db 0x00
                                   9791 	.area CSEG    (CODE)
                                   9792 	.area CONST   (CODE)
      008075                       9793 ___str_12:
      008075 0D                    9794 	.db 0x0d
      008076 0A                    9795 	.db 0x0a
      008077 73 65 63 6F 6E 64 61  9796 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      008090 0D                    9797 	.db 0x0d
      008091 0A                    9798 	.db 0x0a
      008092 00                    9799 	.db 0x00
                                   9800 	.area CSEG    (CODE)
                                   9801 	.area CONST   (CODE)
      008093                       9802 ___str_13:
      008093 0D                    9803 	.db 0x0d
      008094 0A                    9804 	.db 0x0a
      008095 73 74 61 63 6B 20 6F  9805 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      0080A3 0D                    9806 	.db 0x0d
      0080A4 0A                    9807 	.db 0x0a
      0080A5 00                    9808 	.db 0x00
                                   9809 	.area CSEG    (CODE)
                                   9810 	.area CONST   (CODE)
      0080A6                       9811 ___str_14:
      0080A6 0D                    9812 	.db 0x0d
      0080A7 0A                    9813 	.db 0x0a
      0080A8 64 69 76 69 73 69 6F  9814 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      0080B8 0D                    9815 	.db 0x0d
      0080B9 0A                    9816 	.db 0x0a
      0080BA 00                    9817 	.db 0x00
                                   9818 	.area CSEG    (CODE)
                                   9819 	.area CONST   (CODE)
      0080BB                       9820 ___str_15:
      0080BB 0D                    9821 	.db 0x0d
      0080BC 0A                    9822 	.db 0x0a
      0080BD 62 61 73 65 20 3D 20  9823 	.ascii "base = %d, "
             25 64 2C 20
      0080C8 00                    9824 	.db 0x00
                                   9825 	.area CSEG    (CODE)
                                   9826 	.area CONST   (CODE)
      0080C9                       9827 ___str_16:
      0080C9 61 63 63 20 3D 20 25  9828 	.ascii "acc = %ld / "
             6C 64 20 2F 20
      0080D5 00                    9829 	.db 0x00
                                   9830 	.area CSEG    (CODE)
                                   9831 	.area CONST   (CODE)
      0080D6                       9832 ___str_17:
      0080D6 2C 20 61 63 63 5F 76  9833 	.ascii ", acc_valid = %d"
             61 6C 69 64 20 3D 20
             25 64
      0080E6 0D                    9834 	.db 0x0d
      0080E7 0A                    9835 	.db 0x0a
      0080E8 00                    9836 	.db 0x00
                                   9837 	.area CSEG    (CODE)
                                   9838 	.area CONST   (CODE)
      0080E9                       9839 ___str_18:
      0080E9 70 72 69 6D 61 72 79  9840 	.ascii "primary = %p, secondary = %p"
             20 3D 20 25 70 2C 20
             73 65 63 6F 6E 64 61
             72 79 20 3D 20 25 70
      008105 0D                    9841 	.db 0x0d
      008106 0A                    9842 	.db 0x0a
      008107 00                    9843 	.db 0x00
                                   9844 	.area CSEG    (CODE)
                                   9845 	.area CONST   (CODE)
      008108                       9846 ___str_19:
      008108 0D                    9847 	.db 0x0d
      008109 0A                    9848 	.db 0x0a
      00810A 48 68 4F 6F           9849 	.ascii "HhOo"
      00810E 09                    9850 	.db 0x09
      00810F 62 61 73 65 20 31 36  9851 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      00811D 0D                    9852 	.db 0x0d
      00811E 0A                    9853 	.db 0x0a
      00811F 00                    9854 	.db 0x00
                                   9855 	.area CSEG    (CODE)
                                   9856 	.area CONST   (CODE)
      008120                       9857 ___str_20:
      008120 70                    9858 	.ascii "p"
      008121 09                    9859 	.db 0x09
      008122 70 65 65 6B 20 74 6F  9860 	.ascii "peek top"
             70
      00812A 0D                    9861 	.db 0x0d
      00812B 0A                    9862 	.db 0x0a
      00812C 00                    9863 	.db 0x00
                                   9864 	.area CSEG    (CODE)
                                   9865 	.area CONST   (CODE)
      00812D                       9866 ___str_21:
      00812D 50                    9867 	.ascii "P"
      00812E 09                    9868 	.db 0x09
      00812F 70 72 69 6E 74 20 73  9869 	.ascii "print stack"
             74 61 63 6B
      00813A 0D                    9870 	.db 0x0d
      00813B 0A                    9871 	.db 0x0a
      00813C 00                    9872 	.db 0x00
                                   9873 	.area CSEG    (CODE)
                                   9874 	.area CONST   (CODE)
      00813D                       9875 ___str_22:
      00813D 76 2E                 9876 	.ascii "v."
      00813F 09                    9877 	.db 0x09
      008140 70 6F 70 20 74 6F 70  9878 	.ascii "pop top"
      008147 0D                    9879 	.db 0x0d
      008148 0A                    9880 	.db 0x0a
      008149 00                    9881 	.db 0x00
                                   9882 	.area CSEG    (CODE)
                                   9883 	.area CONST   (CODE)
      00814A                       9884 ___str_23:
      00814A 56                    9885 	.ascii "V"
      00814B 09                    9886 	.db 0x09
      00814C 70 6F 70 20 61 6C 6C  9887 	.ascii "pop all"
      008153 0D                    9888 	.db 0x0d
      008154 0A                    9889 	.db 0x0a
      008155 00                    9890 	.db 0x00
                                   9891 	.area CSEG    (CODE)
                                   9892 	.area CONST   (CODE)
      008156                       9893 ___str_24:
      008156 69                    9894 	.ascii "i"
      008157 09                    9895 	.db 0x09
      008158 72 65 73 65 74 20 61  9896 	.ascii "reset acc"
             63 63
      008161 0D                    9897 	.db 0x0d
      008162 0A                    9898 	.db 0x0a
      008163 00                    9899 	.db 0x00
                                   9900 	.area CSEG    (CODE)
                                   9901 	.area CONST   (CODE)
      008164                       9902 ___str_25:
      008164 49                    9903 	.ascii "I"
      008165 09                    9904 	.db 0x09
      008166 72 65 73 65 74 20 61  9905 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      00817B 0D                    9906 	.db 0x0d
      00817C 0A                    9907 	.db 0x0a
      00817D 00                    9908 	.db 0x00
                                   9909 	.area CSEG    (CODE)
                                   9910 	.area CONST   (CODE)
      00817E                       9911 ___str_26:
      00817E 78                    9912 	.ascii "x"
      00817F 09                    9913 	.db 0x09
      008180 65 78 63 68 61 6E 67  9914 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      00818E 0D                    9915 	.db 0x0d
      00818F 0A                    9916 	.db 0x0a
      008190 00                    9917 	.db 0x00
                                   9918 	.area CSEG    (CODE)
                                   9919 	.area CONST   (CODE)
      008191                       9920 ___str_27:
      008191 58                    9921 	.ascii "X"
      008192 09                    9922 	.db 0x09
      008193 65 78 63 68 61 6E 67  9923 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      0081B8 0D                    9924 	.db 0x0d
      0081B9 0A                    9925 	.db 0x0a
      0081BA 00                    9926 	.db 0x00
                                   9927 	.area CSEG    (CODE)
                                   9928 	.area CONST   (CODE)
      0081BB                       9929 ___str_28:
      0081BB 54                    9930 	.ascii "T"
      0081BC 09                    9931 	.db 0x09
      0081BD 65 78 63 68 61 6E 67  9932 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      0081E0 0D                    9933 	.db 0x0d
      0081E1 0A                    9934 	.db 0x0a
      0081E2 00                    9935 	.db 0x00
                                   9936 	.area CSEG    (CODE)
                                   9937 	.area CONST   (CODE)
      0081E3                       9938 ___str_29:
      0081E3 55                    9939 	.ascii "U"
      0081E4 09                    9940 	.db 0x09
      0081E5 63 6F 70 79 20 74 6F  9941 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008202 0D                    9942 	.db 0x0d
      008203 0A                    9943 	.db 0x0a
      008204 00                    9944 	.db 0x00
                                   9945 	.area CSEG    (CODE)
                                   9946 	.area CONST   (CODE)
      008205                       9947 ___str_30:
      008205 75                    9948 	.ascii "u"
      008206 09                    9949 	.db 0x09
      008207 63 6F 70 79 20 74 6F  9950 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008224 0D                    9951 	.db 0x0d
      008225 0A                    9952 	.db 0x0a
      008226 00                    9953 	.db 0x00
                                   9954 	.area CSEG    (CODE)
                                   9955 	.area CONST   (CODE)
      008227                       9956 ___str_31:
      008227 4D                    9957 	.ascii "M"
      008228 09                    9958 	.db 0x09
      008229 6D 6F 76 65 20 74 6F  9959 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008246 0D                    9960 	.db 0x0d
      008247 0A                    9961 	.db 0x0a
      008248 00                    9962 	.db 0x00
                                   9963 	.area CSEG    (CODE)
                                   9964 	.area CONST   (CODE)
      008249                       9965 ___str_32:
      008249 6D                    9966 	.ascii "m"
      00824A 09                    9967 	.db 0x09
      00824B 6D 6F 76 65 20 74 6F  9968 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008268 0D                    9969 	.db 0x0d
      008269 0A                    9970 	.db 0x0a
      00826A 00                    9971 	.db 0x00
                                   9972 	.area CSEG    (CODE)
                                   9973 	.area CONST   (CODE)
      00826B                       9974 ___str_33:
      00826B 2B                    9975 	.ascii "+"
      00826C 09                    9976 	.db 0x09
      00826D 61 64 64 20 74 6F 70  9977 	.ascii "add top 2"
             20 32
      008276 0D                    9978 	.db 0x0d
      008277 0A                    9979 	.db 0x0a
      008278 00                    9980 	.db 0x00
                                   9981 	.area CSEG    (CODE)
                                   9982 	.area CONST   (CODE)
      008279                       9983 ___str_34:
      008279 2D                    9984 	.ascii "-"
      00827A 09                    9985 	.db 0x09
      00827B 73 75 62 74 72 61 63  9986 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      008289 0D                    9987 	.db 0x0d
      00828A 0A                    9988 	.db 0x0a
      00828B 00                    9989 	.db 0x00
                                   9990 	.area CSEG    (CODE)
                                   9991 	.area CONST   (CODE)
      00828C                       9992 ___str_35:
      00828C 2A                    9993 	.ascii "*"
      00828D 09                    9994 	.db 0x09
      00828E 6D 75 6C 74 69 70 6C  9995 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      00829C 0D                    9996 	.db 0x0d
      00829D 0A                    9997 	.db 0x0a
      00829E 00                    9998 	.db 0x00
                                   9999 	.area CSEG    (CODE)
                                  10000 	.area CONST   (CODE)
      00829F                      10001 ___str_36:
      00829F 2F                   10002 	.ascii "/"
      0082A0 09                   10003 	.db 0x09
      0082A1 64 69 76 69 64 65 20 10004 	.ascii "divide top 2"
             74 6F 70 20 32
      0082AD 0D                   10005 	.db 0x0d
      0082AE 0A                   10006 	.db 0x0a
      0082AF 00                   10007 	.db 0x00
                                  10008 	.area CSEG    (CODE)
                                  10009 	.area CONST   (CODE)
      0082B0                      10010 ___str_37:
      0082B0 5C                   10011 	.db 0x5c
      0082B1 09                   10012 	.db 0x09
      0082B2 64 69 76 69 64 65 20 10013 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      0082C7 0D                   10014 	.db 0x0d
      0082C8 0A                   10015 	.db 0x0a
      0082C9 00                   10016 	.db 0x00
                                  10017 	.area CSEG    (CODE)
                                  10018 	.area CONST   (CODE)
      0082CA                      10019 ___str_38:
      0082CA 25                   10020 	.ascii "%"
      0082CB 09                   10021 	.db 0x09
      0082CC 6D 6F 64 75 6C 75 73 10022 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      0082D9 0D                   10023 	.db 0x0d
      0082DA 0A                   10024 	.db 0x0a
      0082DB 00                   10025 	.db 0x00
                                  10026 	.area CSEG    (CODE)
                                  10027 	.area CONST   (CODE)
      0082DC                      10028 ___str_39:
      0082DC 23                   10029 	.ascii "#"
      0082DD 09                   10030 	.db 0x09
      0082DE 6D 6F 64 75 6C 75 73 10031 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      0082F4 0D                   10032 	.db 0x0d
      0082F5 0A                   10033 	.db 0x0a
      0082F6 00                   10034 	.db 0x00
                                  10035 	.area CSEG    (CODE)
                                  10036 	.area CONST   (CODE)
      0082F7                      10037 ___str_40:
      0082F7 26                   10038 	.ascii "&"
      0082F8 09                   10039 	.db 0x09
      0082F9 61 6E 64 20 74 6F 70 10040 	.ascii "and top 2"
             20 32
      008302 0D                   10041 	.db 0x0d
      008303 0A                   10042 	.db 0x0a
      008304 00                   10043 	.db 0x00
                                  10044 	.area CSEG    (CODE)
                                  10045 	.area CONST   (CODE)
      008305                      10046 ___str_41:
      008305 7C                   10047 	.ascii "|"
      008306 09                   10048 	.db 0x09
      008307 6F 72 20 74 6F 70 20 10049 	.ascii "or top 2"
             32
      00830F 0D                   10050 	.db 0x0d
      008310 0A                   10051 	.db 0x0a
      008311 00                   10052 	.db 0x00
                                  10053 	.area CSEG    (CODE)
                                  10054 	.area CONST   (CODE)
      008312                      10055 ___str_42:
      008312 5E                   10056 	.ascii "^"
      008313 09                   10057 	.db 0x09
      008314 78 6F 72 20 74 6F 70 10058 	.ascii "xor top 2"
             20 32
      00831D 0D                   10059 	.db 0x0d
      00831E 0A                   10060 	.db 0x0a
      00831F 00                   10061 	.db 0x00
                                  10062 	.area CSEG    (CODE)
                                  10063 	.area CONST   (CODE)
      008320                      10064 ___str_43:
      008320 3E                   10065 	.ascii ">"
      008321 09                   10066 	.db 0x09
      008322 73 68 69 66 74 20 72 10067 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      008333 0D                   10068 	.db 0x0d
      008334 0A                   10069 	.db 0x0a
      008335 00                   10070 	.db 0x00
                                  10071 	.area CSEG    (CODE)
                                  10072 	.area CONST   (CODE)
      008336                      10073 ___str_44:
      008336 5D                   10074 	.ascii "]"
      008337 09                   10075 	.db 0x09
      008338 61 72 69 74 68 6D 65 10076 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      008354 0D                   10077 	.db 0x0d
      008355 0A                   10078 	.db 0x0a
      008356 00                   10079 	.db 0x00
                                  10080 	.area CSEG    (CODE)
                                  10081 	.area CONST   (CODE)
      008357                      10082 ___str_45:
      008357 3C                   10083 	.ascii "<"
      008358 09                   10084 	.db 0x09
      008359 73 68 69 66 74 20 6C 10085 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      008369 0D                   10086 	.db 0x0d
      00836A 0A                   10087 	.db 0x0a
      00836B 00                   10088 	.db 0x00
                                  10089 	.area CSEG    (CODE)
                                  10090 	.area CONST   (CODE)
      00836C                      10091 ___str_46:
      00836C 7E                   10092 	.ascii "~"
      00836D 09                   10093 	.db 0x09
      00836E 62 69 74 77 69 73 65 10094 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      00837D 0D                   10095 	.db 0x0d
      00837E 0A                   10096 	.db 0x0a
      00837F 00                   10097 	.db 0x00
                                  10098 	.area CSEG    (CODE)
                                  10099 	.area CONST   (CODE)
      008380                      10100 ___str_47:
      008380 73                   10101 	.ascii "s"
      008381 09                   10102 	.db 0x09
      008382 73 74 61 74 75 73    10103 	.ascii "status"
      008388 0D                   10104 	.db 0x0d
      008389 0A                   10105 	.db 0x0a
      00838A 00                   10106 	.db 0x00
                                  10107 	.area CSEG    (CODE)
                                  10108 	.area CONST   (CODE)
      00838B                      10109 ___str_48:
      00838B 3F                   10110 	.ascii "?"
      00838C 09                   10111 	.db 0x09
      00838D 68 65 6C 70          10112 	.ascii "help"
      008391 0D                   10113 	.db 0x0d
      008392 0A                   10114 	.db 0x0a
      008393 00                   10115 	.db 0x00
                                  10116 	.area CSEG    (CODE)
                                  10117 	.area CONST   (CODE)
      008394                      10118 ___str_49:
      008394 71                   10119 	.ascii "q"
      008395 09                   10120 	.db 0x09
      008396 71 75 69 74          10121 	.ascii "quit"
      00839A 0D                   10122 	.db 0x0d
      00839B 0A                   10123 	.db 0x0a
      00839C 00                   10124 	.db 0x00
                                  10125 	.area CSEG    (CODE)
                                  10126 	.area CONST   (CODE)
      00839D                      10127 ___str_50:
      00839D 54 45 52 4D          10128 	.ascii "TERM"
      0083A1 0D                   10129 	.db 0x0d
      0083A2 0A                   10130 	.db 0x0a
      0083A3 00                   10131 	.db 0x00
                                  10132 	.area CSEG    (CODE)
                                  10133 	.area XINIT   (CODE)
      0083B5                      10134 __xinit__deltas:
      0083B5 00 00                10135 	.byte #0x00, #0x00	;  0
      0083B7 00 00                10136 	.byte #0x00, #0x00	;  0
      0083B9 00 00                10137 	.byte #0x00, #0x00	;  0
      0083BB 00 00                10138 	.byte #0x00,#0x00
      0083BD 00 00                10139 	.byte #0x00,#0x00
      0083BF 00 00                10140 	.byte #0x00, #0x00	;  0
      0083C1 01 00                10141 	.byte #0x01, #0x00	;  1
      0083C3 02 00                10142 	.byte #0x02, #0x00	;  2
      0083C5 00 00                10143 	.byte #0x00,#0x00
      0083C7 E2 29                10144 	.byte _accumulate, (_accumulate >> 8)
      0083C9 00 00                10145 	.byte #0x00, #0x00	;  0
      0083CB 02 00                10146 	.byte #0x02, #0x00	;  2
      0083CD 01 00                10147 	.byte #0x01, #0x00	;  1
      0083CF 00 00                10148 	.byte #0x00,#0x00
      0083D1 81 31                10149 	.byte _operator, (_operator >> 8)
      0083D3 01 00                10150 	.byte #0x01, #0x00	;  1
      0083D5 00 00                10151 	.byte #0x00, #0x00	;  0
      0083D7 00 00                10152 	.byte #0x00, #0x00	;  0
      0083D9 00 00                10153 	.byte #0x00,#0x00
      0083DB 00 00                10154 	.byte #0x00,#0x00
      0083DD 01 00                10155 	.byte #0x01, #0x00	;  1
      0083DF 02 00                10156 	.byte #0x02, #0x00	;  2
      0083E1 01 00                10157 	.byte #0x01, #0x00	;  1
      0083E3 00 00                10158 	.byte #0x00,#0x00
      0083E5 81 31                10159 	.byte _operator, (_operator >> 8)
      0083E7 01 00                10160 	.byte #0x01, #0x00	;  1
      0083E9 01 00                10161 	.byte #0x01, #0x00	;  1
      0083EB 02 00                10162 	.byte #0x02, #0x00	;  2
      0083ED 00 00                10163 	.byte #0x00,#0x00
      0083EF E2 29                10164 	.byte _accumulate, (_accumulate >> 8)
      0083F1 02 00                10165 	.byte #0x02, #0x00	;  2
      0083F3 00 00                10166 	.byte #0x00, #0x00	;  0
      0083F5 00 00                10167 	.byte #0x00, #0x00	;  0
      0083F7 00 00                10168 	.byte #0x00,#0x00
      0083F9 0F 54                10169 	.byte _push_acc, (_push_acc >> 8)
      0083FB 02 00                10170 	.byte #0x02, #0x00	;  2
      0083FD 07 00                10171 	.byte #0x07, #0x00	;  7
      0083FF 00 00                10172 	.byte #0x00, #0x00	;  0
      008401 00 00                10173 	.byte #0x00,#0x00
      008403 2B 55                10174 	.byte _reset_acc, (_reset_acc >> 8)
      008405 02 00                10175 	.byte #0x02, #0x00	;  2
      008407 01 00                10176 	.byte #0x01, #0x00	;  1
      008409 02 00                10177 	.byte #0x02, #0x00	;  2
      00840B 00 00                10178 	.byte #0x00,#0x00
      00840D E2 29                10179 	.byte _accumulate, (_accumulate >> 8)
      00840F 02 00                10180 	.byte #0x02, #0x00	;  2
      008411 02 00                10181 	.byte #0x02, #0x00	;  2
      008413 01 00                10182 	.byte #0x01, #0x00	;  1
      008415 00 00                10183 	.byte #0x00,#0x00
      008417 0F 54                10184 	.byte _push_acc, (_push_acc >> 8)
      008419 FF 7F                10185 	.byte #0xff, #0x7f	;  32767
      00841B 06 00                10186 	.byte #0x06, #0x00	;  6
      00841D FF 7F                10187 	.byte #0xff, #0x7f	;  32767
      00841F 00 00                10188 	.byte #0x00,#0x00
      008421 2B 55                10189 	.byte _reset_acc, (_reset_acc >> 8)
      008423 FF 7F                10190 	.byte #0xff, #0x7f	;  32767
      008425 07 00                10191 	.byte #0x07, #0x00	;  7
      008427 FF 7F                10192 	.byte #0xff, #0x7f	;  32767
      008429 00 00                10193 	.byte #0x00,#0x00
      00842B 00 00                10194 	.byte #0x00,#0x00
      00842D FF 7F                10195 	.byte #0xff, #0x7f	;  32767
      00842F 05 00                10196 	.byte #0x05, #0x00	;  5
      008431 FF 7F                10197 	.byte #0xff, #0x7f	;  32767
      008433 00 00                10198 	.byte #0x00,#0x00
      008435 95 55                10199 	.byte _reset_base, (_reset_base >> 8)
      008437 FF 7F                10200 	.byte #0xff, #0x7f	;  32767
      008439 03 00                10201 	.byte #0x03, #0x00	;  3
      00843B FF 7F                10202 	.byte #0xff, #0x7f	;  32767
      00843D 00 00                10203 	.byte #0x00,#0x00
      00843F 13 56                10204 	.byte _status, (_status >> 8)
      008441 FF 7F                10205 	.byte #0xff, #0x7f	;  32767
      008443 04 00                10206 	.byte #0x04, #0x00	;  4
      008445 FF 7F                10207 	.byte #0xff, #0x7f	;  32767
      008447 00 00                10208 	.byte #0x00,#0x00
      008449 28 58                10209 	.byte _help, (_help >> 8)
      00844B FF 7F                10210 	.byte #0xff, #0x7f	;  32767
      00844D 08 00                10211 	.byte #0x08, #0x00	;  8
      00844F 03 00                10212 	.byte #0x03, #0x00	;  3
      008451 00 00                10213 	.byte #0x00,#0x00
      008453 53 2B                10214 	.byte _dump_pop, (_dump_pop >> 8)
      008455 00 80                10215 	.byte #0x00, #0x80	; -32768
      008457 00 80                10216 	.byte #0x00, #0x80	; -32768
      008459 00 80                10217 	.byte #0x00, #0x80	; -32768
      00845B 00 00                10218 	.byte #0x00,#0x00
      00845D 00 00                10219 	.byte #0x00,#0x00
                                  10220 	.area CABS    (ABS,CODE)
