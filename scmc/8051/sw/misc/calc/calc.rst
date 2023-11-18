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
      002003 02 5A 3B         [24]  372 	ljmp	_main
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
                                    463 ;	calc.c:64: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
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
      002A15 12 65 2D         [24]  488 	lcall	__gptrget
      002A18 70 31            [24]  489 	jnz	00102$
                                    490 ;	calc.c:70: ctx->acc_valid = 1;
      002A1A 8A 82            [24]  491 	mov	dpl,r2
      002A1C 8B 83            [24]  492 	mov	dph,r3
      002A1E 8C F0            [24]  493 	mov	b,r4
      002A20 74 01            [12]  494 	mov	a,#0x01
      002A22 12 60 B2         [24]  495 	lcall	__gptrput
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
      002A3C 12 60 B2         [24]  513 	lcall	__gptrput
      002A3F A3               [24]  514 	inc	dptr
      002A40 12 60 B2         [24]  515 	lcall	__gptrput
      002A43 A3               [24]  516 	inc	dptr
      002A44 12 60 B2         [24]  517 	lcall	__gptrput
      002A47 A3               [24]  518 	inc	dptr
      002A48 12 60 B2         [24]  519 	lcall	__gptrput
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
      002A58 12 65 2D         [24]  530 	lcall	__gptrget
      002A5B FB               [12]  531 	mov	r3,a
      002A5C A3               [24]  532 	inc	dptr
      002A5D 12 65 2D         [24]  533 	lcall	__gptrget
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
      002A82 12 5E 74         [24]  556 	lcall	_strtol
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
      002AC0 12 65 2D         [24]  599 	lcall	__gptrget
      002AC3 F7               [12]  600 	mov	@r1,a
      002AC4 A3               [24]  601 	inc	dptr
      002AC5 12 65 2D         [24]  602 	lcall	__gptrget
      002AC8 09               [12]  603 	inc	r1
      002AC9 F7               [12]  604 	mov	@r1,a
      002ACA A3               [24]  605 	inc	dptr
      002ACB 12 65 2D         [24]  606 	lcall	__gptrget
      002ACE 09               [12]  607 	inc	r1
      002ACF F7               [12]  608 	mov	@r1,a
      002AD0 A3               [24]  609 	inc	dptr
      002AD1 12 65 2D         [24]  610 	lcall	__gptrget
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
      002AE3 12 65 2D         [24]  621 	lcall	__gptrget
      002AE6 FA               [12]  622 	mov	r2,a
      002AE7 A3               [24]  623 	inc	dptr
      002AE8 12 65 2D         [24]  624 	lcall	__gptrget
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
      002B08 12 69 26         [24]  644 	lcall	__mullong
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
      002B38 12 60 B2         [24]  678 	lcall	__gptrput
      002B3B A3               [24]  679 	inc	dptr
      002B3C ED               [12]  680 	mov	a,r5
      002B3D 12 60 B2         [24]  681 	lcall	__gptrput
      002B40 A3               [24]  682 	inc	dptr
      002B41 EE               [12]  683 	mov	a,r6
      002B42 12 60 B2         [24]  684 	lcall	__gptrput
      002B45 A3               [24]  685 	inc	dptr
      002B46 EF               [12]  686 	mov	a,r7
      002B47 12 60 B2         [24]  687 	lcall	__gptrput
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
                                    699 ;ctx                       Allocated to stack - _bp +8
                                    700 ;d                         Allocated to stack - _bp +11
                                    701 ;r                         Allocated to stack - _bp +5
                                    702 ;__1310720001              Allocated to registers 
                                    703 ;s                         Allocated to registers r5 r6 r7 
                                    704 ;__1966080003              Allocated to registers 
                                    705 ;s                         Allocated to registers r4 r5 r6 
                                    706 ;__1966080005              Allocated to registers 
                                    707 ;s                         Allocated to registers r4 r5 r6 
                                    708 ;__1966080007              Allocated to registers r3 r4 r5 r6 
                                    709 ;d                         Allocated to stack - _bp +15
                                    710 ;mask                      Allocated to stack - _bp +19
                                    711 ;__1966080009              Allocated to registers 
                                    712 ;s                         Allocated to registers r4 r5 r6 
                                    713 ;sloc0                     Allocated to stack - _bp +1
                                    714 ;sloc1                     Allocated to stack - _bp +2
                                    715 ;sloc2                     Allocated to stack - _bp +5
                                    716 ;------------------------------------------------------------
                                    717 ;	calc.c:80: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    718 ;	-----------------------------------------
                                    719 ;	 function dump_pop
                                    720 ;	-----------------------------------------
      002B53                        721 _dump_pop:
      002B53 C0 08            [24]  722 	push	_bp
      002B55 E5 81            [12]  723 	mov	a,sp
      002B57 F5 08            [12]  724 	mov	_bp,a
      002B59 24 16            [12]  725 	add	a,#0x16
      002B5B F5 81            [12]  726 	mov	sp,a
      002B5D AD 82            [24]  727 	mov	r5,dpl
      002B5F AE 83            [24]  728 	mov	r6,dph
      002B61 AF F0            [24]  729 	mov	r7,b
                                    730 ;	calc.c:81: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
      002B63 E5 08            [12]  731 	mov	a,_bp
      002B65 24 08            [12]  732 	add	a,#0x08
      002B67 F8               [12]  733 	mov	r0,a
      002B68 A6 05            [24]  734 	mov	@r0,ar5
      002B6A 08               [12]  735 	inc	r0
      002B6B A6 06            [24]  736 	mov	@r0,ar6
      002B6D 08               [12]  737 	inc	r0
      002B6E A6 07            [24]  738 	mov	@r0,ar7
                                    739 ;	calc.c:85: if (delta->event == EVENT_TERM) printstr("\r\n");
      002B70 E5 08            [12]  740 	mov	a,_bp
      002B72 24 FB            [12]  741 	add	a,#0xfb
      002B74 F8               [12]  742 	mov	r0,a
      002B75 86 02            [24]  743 	mov	ar2,@r0
      002B77 08               [12]  744 	inc	r0
      002B78 86 03            [24]  745 	mov	ar3,@r0
      002B7A 08               [12]  746 	inc	r0
      002B7B 86 04            [24]  747 	mov	ar4,@r0
      002B7D 74 02            [12]  748 	mov	a,#0x02
      002B7F 2A               [12]  749 	add	a,r2
      002B80 FA               [12]  750 	mov	r2,a
      002B81 E4               [12]  751 	clr	a
      002B82 3B               [12]  752 	addc	a,r3
      002B83 FB               [12]  753 	mov	r3,a
      002B84 8A 82            [24]  754 	mov	dpl,r2
      002B86 8B 83            [24]  755 	mov	dph,r3
      002B88 8C F0            [24]  756 	mov	b,r4
      002B8A 12 65 2D         [24]  757 	lcall	__gptrget
      002B8D FE               [12]  758 	mov	r6,a
      002B8E A3               [24]  759 	inc	dptr
      002B8F 12 65 2D         [24]  760 	lcall	__gptrget
      002B92 FF               [12]  761 	mov	r7,a
      002B93 BE 08 3D         [24]  762 	cjne	r6,#0x08,00102$
      002B96 BF 00 3A         [24]  763 	cjne	r7,#0x00,00102$
      002B99 7D AE            [12]  764 	mov	r5,#___str_0
      002B9B 7E 7D            [12]  765 	mov	r6,#(___str_0 >> 8)
      002B9D 7F 80            [12]  766 	mov	r7,#0x80
                                    767 ;	calc.c:51: return;
      002B9F                        768 00122$:
                                    769 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002B9F 8D 82            [24]  770 	mov	dpl,r5
      002BA1 8E 83            [24]  771 	mov	dph,r6
      002BA3 8F F0            [24]  772 	mov	b,r7
      002BA5 A8 08            [24]  773 	mov	r0,_bp
      002BA7 08               [12]  774 	inc	r0
      002BA8 12 65 2D         [24]  775 	lcall	__gptrget
      002BAB F6               [12]  776 	mov	@r0,a
      002BAC A8 08            [24]  777 	mov	r0,_bp
      002BAE 08               [12]  778 	inc	r0
      002BAF E6               [12]  779 	mov	a,@r0
      002BB0 60 21            [24]  780 	jz	00102$
      002BB2 C0 02            [24]  781 	push	ar2
      002BB4 C0 03            [24]  782 	push	ar3
      002BB6 C0 04            [24]  783 	push	ar4
      002BB8 A8 08            [24]  784 	mov	r0,_bp
      002BBA 08               [12]  785 	inc	r0
      002BBB 86 03            [24]  786 	mov	ar3,@r0
      002BBD 7C 00            [12]  787 	mov	r4,#0x00
      002BBF 8B 82            [24]  788 	mov	dpl,r3
      002BC1 8C 83            [24]  789 	mov	dph,r4
      002BC3 12 29 C0         [24]  790 	lcall	_putchar
      002BC6 0D               [12]  791 	inc	r5
      002BC7 BD 00 01         [24]  792 	cjne	r5,#0x00,00210$
      002BCA 0E               [12]  793 	inc	r6
      002BCB                        794 00210$:
      002BCB D0 04            [24]  795 	pop	ar4
      002BCD D0 03            [24]  796 	pop	ar3
      002BCF D0 02            [24]  797 	pop	ar2
                                    798 ;	calc.c:85: if (delta->event == EVENT_TERM) printstr("\r\n");
      002BD1 80 CC            [24]  799 	sjmp	00122$
      002BD3                        800 00102$:
                                    801 ;	calc.c:87: r = stack_pop(ctx->ps, &d);
      002BD3 C0 02            [24]  802 	push	ar2
      002BD5 C0 03            [24]  803 	push	ar3
      002BD7 C0 04            [24]  804 	push	ar4
      002BD9 E5 08            [12]  805 	mov	a,_bp
      002BDB 24 0B            [12]  806 	add	a,#0x0b
      002BDD FF               [12]  807 	mov	r7,a
      002BDE E5 08            [12]  808 	mov	a,_bp
      002BE0 24 05            [12]  809 	add	a,#0x05
      002BE2 F8               [12]  810 	mov	r0,a
      002BE3 A6 07            [24]  811 	mov	@r0,ar7
      002BE5 08               [12]  812 	inc	r0
      002BE6 76 00            [12]  813 	mov	@r0,#0x00
      002BE8 08               [12]  814 	inc	r0
      002BE9 76 40            [12]  815 	mov	@r0,#0x40
      002BEB E5 08            [12]  816 	mov	a,_bp
      002BED 24 08            [12]  817 	add	a,#0x08
      002BEF F8               [12]  818 	mov	r0,a
      002BF0 A9 08            [24]  819 	mov	r1,_bp
      002BF2 09               [12]  820 	inc	r1
      002BF3 09               [12]  821 	inc	r1
      002BF4 74 11            [12]  822 	mov	a,#0x11
      002BF6 26               [12]  823 	add	a,@r0
      002BF7 F7               [12]  824 	mov	@r1,a
      002BF8 74 40            [12]  825 	mov	a,#0x40
      002BFA 08               [12]  826 	inc	r0
      002BFB 36               [12]  827 	addc	a,@r0
      002BFC 09               [12]  828 	inc	r1
      002BFD F7               [12]  829 	mov	@r1,a
      002BFE 08               [12]  830 	inc	r0
      002BFF 09               [12]  831 	inc	r1
      002C00 E6               [12]  832 	mov	a,@r0
      002C01 F7               [12]  833 	mov	@r1,a
      002C02 A8 08            [24]  834 	mov	r0,_bp
      002C04 08               [12]  835 	inc	r0
      002C05 08               [12]  836 	inc	r0
      002C06 86 82            [24]  837 	mov	dpl,@r0
      002C08 08               [12]  838 	inc	r0
      002C09 86 83            [24]  839 	mov	dph,@r0
      002C0B 08               [12]  840 	inc	r0
      002C0C 86 F0            [24]  841 	mov	b,@r0
      002C0E 12 65 2D         [24]  842 	lcall	__gptrget
      002C11 FA               [12]  843 	mov	r2,a
      002C12 A3               [24]  844 	inc	dptr
      002C13 12 65 2D         [24]  845 	lcall	__gptrget
      002C16 FB               [12]  846 	mov	r3,a
      002C17 A3               [24]  847 	inc	dptr
      002C18 12 65 2D         [24]  848 	lcall	__gptrget
      002C1B FE               [12]  849 	mov	r6,a
      002C1C C0 07            [24]  850 	push	ar7
      002C1E C0 04            [24]  851 	push	ar4
      002C20 C0 03            [24]  852 	push	ar3
      002C22 C0 02            [24]  853 	push	ar2
      002C24 E5 08            [12]  854 	mov	a,_bp
      002C26 24 05            [12]  855 	add	a,#0x05
      002C28 F8               [12]  856 	mov	r0,a
      002C29 E6               [12]  857 	mov	a,@r0
      002C2A C0 E0            [24]  858 	push	acc
      002C2C 08               [12]  859 	inc	r0
      002C2D E6               [12]  860 	mov	a,@r0
      002C2E C0 E0            [24]  861 	push	acc
      002C30 08               [12]  862 	inc	r0
      002C31 E6               [12]  863 	mov	a,@r0
      002C32 C0 E0            [24]  864 	push	acc
      002C34 8A 82            [24]  865 	mov	dpl,r2
      002C36 8B 83            [24]  866 	mov	dph,r3
      002C38 8E F0            [24]  867 	mov	b,r6
      002C3A 12 27 7F         [24]  868 	lcall	_stack_pop
      002C3D AD 82            [24]  869 	mov	r5,dpl
      002C3F AE 83            [24]  870 	mov	r6,dph
      002C41 15 81            [12]  871 	dec	sp
      002C43 15 81            [12]  872 	dec	sp
      002C45 15 81            [12]  873 	dec	sp
      002C47 D0 02            [24]  874 	pop	ar2
      002C49 D0 03            [24]  875 	pop	ar3
      002C4B D0 04            [24]  876 	pop	ar4
      002C4D D0 07            [24]  877 	pop	ar7
      002C4F E5 08            [12]  878 	mov	a,_bp
      002C51 24 05            [12]  879 	add	a,#0x05
      002C53 F8               [12]  880 	mov	r0,a
      002C54 A6 05            [24]  881 	mov	@r0,ar5
      002C56 08               [12]  882 	inc	r0
      002C57 A6 06            [24]  883 	mov	@r0,ar6
                                    884 ;	calc.c:88: if (!r) {
      002C59 D0 04            [24]  885 	pop	ar4
      002C5B D0 03            [24]  886 	pop	ar3
      002C5D D0 02            [24]  887 	pop	ar2
      002C5F ED               [12]  888 	mov	a,r5
      002C60 4E               [12]  889 	orl	a,r6
      002C61 70 3D            [24]  890 	jnz	00154$
                                    891 ;	calc.c:89: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002C63 8A 82            [24]  892 	mov	dpl,r2
      002C65 8B 83            [24]  893 	mov	dph,r3
      002C67 8C F0            [24]  894 	mov	b,r4
      002C69 12 65 2D         [24]  895 	lcall	__gptrget
      002C6C FA               [12]  896 	mov	r2,a
      002C6D A3               [24]  897 	inc	dptr
      002C6E 12 65 2D         [24]  898 	lcall	__gptrget
      002C71 FB               [12]  899 	mov	r3,a
      002C72 BA 08 06         [24]  900 	cjne	r2,#0x08,00212$
      002C75 BB 00 03         [24]  901 	cjne	r3,#0x00,00212$
      002C78 02 2E 2E         [24]  902 	ljmp	00110$
      002C7B                        903 00212$:
      002C7B 7C B1            [12]  904 	mov	r4,#___str_1
      002C7D 7D 7D            [12]  905 	mov	r5,#(___str_1 >> 8)
      002C7F 7E 80            [12]  906 	mov	r6,#0x80
                                    907 ;	calc.c:51: return;
      002C81                        908 00125$:
                                    909 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002C81 8C 82            [24]  910 	mov	dpl,r4
      002C83 8D 83            [24]  911 	mov	dph,r5
      002C85 8E F0            [24]  912 	mov	b,r6
      002C87 12 65 2D         [24]  913 	lcall	__gptrget
      002C8A FB               [12]  914 	mov	r3,a
      002C8B 70 03            [24]  915 	jnz	00213$
      002C8D 02 2E 2E         [24]  916 	ljmp	00110$
      002C90                        917 00213$:
      002C90 7A 00            [12]  918 	mov	r2,#0x00
      002C92 8B 82            [24]  919 	mov	dpl,r3
      002C94 8A 83            [24]  920 	mov	dph,r2
      002C96 12 29 C0         [24]  921 	lcall	_putchar
      002C99 0C               [12]  922 	inc	r4
                                    923 ;	calc.c:90: } else while (r > 0) {
      002C9A BC 00 E4         [24]  924 	cjne	r4,#0x00,00125$
      002C9D 0D               [12]  925 	inc	r5
      002C9E 80 E1            [24]  926 	sjmp	00125$
      002CA0                        927 00154$:
      002CA0                        928 00105$:
      002CA0 E5 08            [12]  929 	mov	a,_bp
      002CA2 24 05            [12]  930 	add	a,#0x05
      002CA4 F8               [12]  931 	mov	r0,a
      002CA5 C3               [12]  932 	clr	c
      002CA6 E4               [12]  933 	clr	a
      002CA7 96               [12]  934 	subb	a,@r0
      002CA8 74 80            [12]  935 	mov	a,#(0x00 ^ 0x80)
      002CAA 08               [12]  936 	inc	r0
      002CAB 86 F0            [24]  937 	mov	b,@r0
      002CAD 63 F0 80         [24]  938 	xrl	b,#0x80
      002CB0 95 F0            [12]  939 	subb	a,b
      002CB2 40 03            [24]  940 	jc	00215$
      002CB4 02 2E 2E         [24]  941 	ljmp	00110$
      002CB7                        942 00215$:
                                    943 ;	calc.c:91: printstr("VA ");
      002CB7 7C C3            [12]  944 	mov	r4,#___str_2
      002CB9 7D 7D            [12]  945 	mov	r5,#(___str_2 >> 8)
      002CBB 7E 80            [12]  946 	mov	r6,#0x80
                                    947 ;	calc.c:51: return;
      002CBD                        948 00128$:
                                    949 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002CBD 8C 82            [24]  950 	mov	dpl,r4
      002CBF 8D 83            [24]  951 	mov	dph,r5
      002CC1 8E F0            [24]  952 	mov	b,r6
      002CC3 12 65 2D         [24]  953 	lcall	__gptrget
      002CC6 FB               [12]  954 	mov	r3,a
      002CC7 60 10            [24]  955 	jz	00116$
      002CC9 7A 00            [12]  956 	mov	r2,#0x00
      002CCB 8B 82            [24]  957 	mov	dpl,r3
      002CCD 8A 83            [24]  958 	mov	dph,r2
      002CCF 12 29 C0         [24]  959 	lcall	_putchar
      002CD2 0C               [12]  960 	inc	r4
                                    961 ;	calc.c:91: printstr("VA ");
      002CD3 BC 00 E7         [24]  962 	cjne	r4,#0x00,00128$
      002CD6 0D               [12]  963 	inc	r5
      002CD7 80 E4            [24]  964 	sjmp	00128$
      002CD9                        965 00116$:
                                    966 ;	calc.c:92: printf("% 11ld / ", d);
      002CD9 C0 07            [24]  967 	push	ar7
      002CDB E5 08            [12]  968 	mov	a,_bp
      002CDD 24 0B            [12]  969 	add	a,#0x0b
      002CDF F8               [12]  970 	mov	r0,a
      002CE0 E6               [12]  971 	mov	a,@r0
      002CE1 C0 E0            [24]  972 	push	acc
      002CE3 08               [12]  973 	inc	r0
      002CE4 E6               [12]  974 	mov	a,@r0
      002CE5 C0 E0            [24]  975 	push	acc
      002CE7 08               [12]  976 	inc	r0
      002CE8 E6               [12]  977 	mov	a,@r0
      002CE9 C0 E0            [24]  978 	push	acc
      002CEB 08               [12]  979 	inc	r0
      002CEC E6               [12]  980 	mov	a,@r0
      002CED C0 E0            [24]  981 	push	acc
      002CEF 74 C7            [12]  982 	mov	a,#___str_3
      002CF1 C0 E0            [24]  983 	push	acc
      002CF3 74 7D            [12]  984 	mov	a,#(___str_3 >> 8)
      002CF5 C0 E0            [24]  985 	push	acc
      002CF7 74 80            [12]  986 	mov	a,#0x80
      002CF9 C0 E0            [24]  987 	push	acc
      002CFB 12 64 F4         [24]  988 	lcall	_printf
      002CFE E5 81            [12]  989 	mov	a,sp
      002D00 24 F9            [12]  990 	add	a,#0xf9
      002D02 F5 81            [12]  991 	mov	sp,a
                                    992 ;	calc.c:93: printf("%08lx / ", d);
      002D04 E5 08            [12]  993 	mov	a,_bp
      002D06 24 0B            [12]  994 	add	a,#0x0b
      002D08 F8               [12]  995 	mov	r0,a
      002D09 E6               [12]  996 	mov	a,@r0
      002D0A C0 E0            [24]  997 	push	acc
      002D0C 08               [12]  998 	inc	r0
      002D0D E6               [12]  999 	mov	a,@r0
      002D0E C0 E0            [24] 1000 	push	acc
      002D10 08               [12] 1001 	inc	r0
      002D11 E6               [12] 1002 	mov	a,@r0
      002D12 C0 E0            [24] 1003 	push	acc
      002D14 08               [12] 1004 	inc	r0
      002D15 E6               [12] 1005 	mov	a,@r0
      002D16 C0 E0            [24] 1006 	push	acc
      002D18 74 D1            [12] 1007 	mov	a,#___str_4
      002D1A C0 E0            [24] 1008 	push	acc
      002D1C 74 7D            [12] 1009 	mov	a,#(___str_4 >> 8)
      002D1E C0 E0            [24] 1010 	push	acc
      002D20 74 80            [12] 1011 	mov	a,#0x80
      002D22 C0 E0            [24] 1012 	push	acc
      002D24 12 64 F4         [24] 1013 	lcall	_printf
      002D27 E5 81            [12] 1014 	mov	a,sp
      002D29 24 F9            [12] 1015 	add	a,#0xf9
      002D2B F5 81            [12] 1016 	mov	sp,a
      002D2D D0 07            [24] 1017 	pop	ar7
                                   1018 ;	calc.c:94: printbin(d);
      002D2F E5 08            [12] 1019 	mov	a,_bp
      002D31 24 0B            [12] 1020 	add	a,#0x0b
      002D33 F8               [12] 1021 	mov	r0,a
      002D34 86 03            [24] 1022 	mov	ar3,@r0
      002D36 08               [12] 1023 	inc	r0
      002D37 86 04            [24] 1024 	mov	ar4,@r0
      002D39 08               [12] 1025 	inc	r0
      002D3A 86 05            [24] 1026 	mov	ar5,@r0
      002D3C 08               [12] 1027 	inc	r0
      002D3D 86 06            [24] 1028 	mov	ar6,@r0
      002D3F E5 08            [12] 1029 	mov	a,_bp
      002D41 24 0F            [12] 1030 	add	a,#0x0f
      002D43 F8               [12] 1031 	mov	r0,a
      002D44 A6 03            [24] 1032 	mov	@r0,ar3
      002D46 08               [12] 1033 	inc	r0
      002D47 A6 04            [24] 1034 	mov	@r0,ar4
      002D49 08               [12] 1035 	inc	r0
      002D4A A6 05            [24] 1036 	mov	@r0,ar5
      002D4C 08               [12] 1037 	inc	r0
      002D4D A6 06            [24] 1038 	mov	@r0,ar6
                                   1039 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002D4F E5 08            [12] 1040 	mov	a,_bp
      002D51 24 13            [12] 1041 	add	a,#0x13
      002D53 F8               [12] 1042 	mov	r0,a
      002D54 E4               [12] 1043 	clr	a
      002D55 F6               [12] 1044 	mov	@r0,a
      002D56 08               [12] 1045 	inc	r0
      002D57 F6               [12] 1046 	mov	@r0,a
      002D58 08               [12] 1047 	inc	r0
      002D59 F6               [12] 1048 	mov	@r0,a
      002D5A 08               [12] 1049 	inc	r0
      002D5B 76 80            [12] 1050 	mov	@r0,#0x80
      002D5D                       1051 00130$:
                                   1052 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002D5D C0 07            [24] 1053 	push	ar7
      002D5F E5 08            [12] 1054 	mov	a,_bp
      002D61 24 0F            [12] 1055 	add	a,#0x0f
      002D63 F8               [12] 1056 	mov	r0,a
      002D64 86 03            [24] 1057 	mov	ar3,@r0
      002D66 08               [12] 1058 	inc	r0
      002D67 86 05            [24] 1059 	mov	ar5,@r0
      002D69 08               [12] 1060 	inc	r0
      002D6A 86 06            [24] 1061 	mov	ar6,@r0
      002D6C 08               [12] 1062 	inc	r0
      002D6D 86 07            [24] 1063 	mov	ar7,@r0
      002D6F E5 08            [12] 1064 	mov	a,_bp
      002D71 24 13            [12] 1065 	add	a,#0x13
      002D73 F8               [12] 1066 	mov	r0,a
      002D74 E6               [12] 1067 	mov	a,@r0
      002D75 52 03            [12] 1068 	anl	ar3,a
      002D77 08               [12] 1069 	inc	r0
      002D78 E6               [12] 1070 	mov	a,@r0
      002D79 52 05            [12] 1071 	anl	ar5,a
      002D7B 08               [12] 1072 	inc	r0
      002D7C E6               [12] 1073 	mov	a,@r0
      002D7D 52 06            [12] 1074 	anl	ar6,a
      002D7F 08               [12] 1075 	inc	r0
      002D80 E6               [12] 1076 	mov	a,@r0
      002D81 52 07            [12] 1077 	anl	ar7,a
      002D83 EB               [12] 1078 	mov	a,r3
      002D84 4D               [12] 1079 	orl	a,r5
      002D85 4E               [12] 1080 	orl	a,r6
      002D86 4F               [12] 1081 	orl	a,r7
      002D87 D0 07            [24] 1082 	pop	ar7
      002D89 60 06            [24] 1083 	jz	00137$
      002D8B 7D 31            [12] 1084 	mov	r5,#0x31
      002D8D 7E 00            [12] 1085 	mov	r6,#0x00
      002D8F 80 04            [24] 1086 	sjmp	00138$
      002D91                       1087 00137$:
      002D91 7D 30            [12] 1088 	mov	r5,#0x30
      002D93 7E 00            [12] 1089 	mov	r6,#0x00
      002D95                       1090 00138$:
      002D95 8D 82            [24] 1091 	mov	dpl,r5
      002D97 8E 83            [24] 1092 	mov	dph,r6
      002D99 12 29 C0         [24] 1093 	lcall	_putchar
                                   1094 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002D9C E5 08            [12] 1095 	mov	a,_bp
      002D9E 24 13            [12] 1096 	add	a,#0x13
      002DA0 F8               [12] 1097 	mov	r0,a
      002DA1 08               [12] 1098 	inc	r0
      002DA2 08               [12] 1099 	inc	r0
      002DA3 08               [12] 1100 	inc	r0
      002DA4 E6               [12] 1101 	mov	a,@r0
      002DA5 C3               [12] 1102 	clr	c
      002DA6 13               [12] 1103 	rrc	a
      002DA7 F6               [12] 1104 	mov	@r0,a
      002DA8 18               [12] 1105 	dec	r0
      002DA9 E6               [12] 1106 	mov	a,@r0
      002DAA 13               [12] 1107 	rrc	a
      002DAB F6               [12] 1108 	mov	@r0,a
      002DAC 18               [12] 1109 	dec	r0
      002DAD E6               [12] 1110 	mov	a,@r0
      002DAE 13               [12] 1111 	rrc	a
      002DAF F6               [12] 1112 	mov	@r0,a
      002DB0 18               [12] 1113 	dec	r0
      002DB1 E6               [12] 1114 	mov	a,@r0
      002DB2 13               [12] 1115 	rrc	a
      002DB3 F6               [12] 1116 	mov	@r0,a
      002DB4 E5 08            [12] 1117 	mov	a,_bp
      002DB6 24 13            [12] 1118 	add	a,#0x13
      002DB8 F8               [12] 1119 	mov	r0,a
      002DB9 E6               [12] 1120 	mov	a,@r0
      002DBA 08               [12] 1121 	inc	r0
      002DBB 46               [12] 1122 	orl	a,@r0
      002DBC 08               [12] 1123 	inc	r0
      002DBD 46               [12] 1124 	orl	a,@r0
      002DBE 08               [12] 1125 	inc	r0
      002DBF 46               [12] 1126 	orl	a,@r0
      002DC0 70 9B            [24] 1127 	jnz	00130$
                                   1128 ;	calc.c:95: printstr("\r\n");
      002DC2 7C AE            [12] 1129 	mov	r4,#___str_0
      002DC4 7D 7D            [12] 1130 	mov	r5,#(___str_0 >> 8)
      002DC6 7E 80            [12] 1131 	mov	r6,#0x80
                                   1132 ;	calc.c:51: return;
      002DC8                       1133 00133$:
                                   1134 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002DC8 8C 82            [24] 1135 	mov	dpl,r4
      002DCA 8D 83            [24] 1136 	mov	dph,r5
      002DCC 8E F0            [24] 1137 	mov	b,r6
      002DCE 12 65 2D         [24] 1138 	lcall	__gptrget
      002DD1 FB               [12] 1139 	mov	r3,a
      002DD2 60 10            [24] 1140 	jz	00120$
      002DD4 7A 00            [12] 1141 	mov	r2,#0x00
      002DD6 8B 82            [24] 1142 	mov	dpl,r3
      002DD8 8A 83            [24] 1143 	mov	dph,r2
      002DDA 12 29 C0         [24] 1144 	lcall	_putchar
      002DDD 0C               [12] 1145 	inc	r4
                                   1146 ;	calc.c:95: printstr("\r\n");
      002DDE BC 00 E7         [24] 1147 	cjne	r4,#0x00,00133$
      002DE1 0D               [12] 1148 	inc	r5
      002DE2 80 E4            [24] 1149 	sjmp	00133$
      002DE4                       1150 00120$:
                                   1151 ;	calc.c:96: r = stack_pop(ctx->ps, &d);
      002DE4 8F 04            [24] 1152 	mov	ar4,r7
      002DE6 7D 00            [12] 1153 	mov	r5,#0x00
      002DE8 7E 40            [12] 1154 	mov	r6,#0x40
      002DEA C0 07            [24] 1155 	push	ar7
      002DEC A8 08            [24] 1156 	mov	r0,_bp
      002DEE 08               [12] 1157 	inc	r0
      002DEF 08               [12] 1158 	inc	r0
      002DF0 86 82            [24] 1159 	mov	dpl,@r0
      002DF2 08               [12] 1160 	inc	r0
      002DF3 86 83            [24] 1161 	mov	dph,@r0
      002DF5 08               [12] 1162 	inc	r0
      002DF6 86 F0            [24] 1163 	mov	b,@r0
      002DF8 12 65 2D         [24] 1164 	lcall	__gptrget
      002DFB FA               [12] 1165 	mov	r2,a
      002DFC A3               [24] 1166 	inc	dptr
      002DFD 12 65 2D         [24] 1167 	lcall	__gptrget
      002E00 FB               [12] 1168 	mov	r3,a
      002E01 A3               [24] 1169 	inc	dptr
      002E02 12 65 2D         [24] 1170 	lcall	__gptrget
      002E05 FF               [12] 1171 	mov	r7,a
      002E06 C0 04            [24] 1172 	push	ar4
      002E08 C0 05            [24] 1173 	push	ar5
      002E0A C0 06            [24] 1174 	push	ar6
      002E0C 8A 82            [24] 1175 	mov	dpl,r2
      002E0E 8B 83            [24] 1176 	mov	dph,r3
      002E10 8F F0            [24] 1177 	mov	b,r7
      002E12 12 27 7F         [24] 1178 	lcall	_stack_pop
      002E15 AE 82            [24] 1179 	mov	r6,dpl
      002E17 AF 83            [24] 1180 	mov	r7,dph
      002E19 15 81            [12] 1181 	dec	sp
      002E1B 15 81            [12] 1182 	dec	sp
      002E1D 15 81            [12] 1183 	dec	sp
      002E1F E5 08            [12] 1184 	mov	a,_bp
      002E21 24 05            [12] 1185 	add	a,#0x05
      002E23 F8               [12] 1186 	mov	r0,a
      002E24 A6 06            [24] 1187 	mov	@r0,ar6
      002E26 08               [12] 1188 	inc	r0
      002E27 A6 07            [24] 1189 	mov	@r0,ar7
      002E29 D0 07            [24] 1190 	pop	ar7
      002E2B 02 2C A0         [24] 1191 	ljmp	00105$
      002E2E                       1192 00110$:
                                   1193 ;	calc.c:99: return 1;
      002E2E 90 00 01         [24] 1194 	mov	dptr,#0x0001
                                   1195 ;	calc.c:100: }
      002E31 85 08 81         [24] 1196 	mov	sp,_bp
      002E34 D0 08            [24] 1197 	pop	_bp
      002E36 22               [24] 1198 	ret
                                   1199 ;------------------------------------------------------------
                                   1200 ;Allocation info for local variables in function 'dump_peek'
                                   1201 ;------------------------------------------------------------
                                   1202 ;d                         Allocated to stack - _bp -6
                                   1203 ;_ctx                      Allocated to registers 
                                   1204 ;__1310720011              Allocated to registers 
                                   1205 ;s                         Allocated to registers r5 r6 r7 
                                   1206 ;__1310720013              Allocated to registers r4 r5 r6 r7 
                                   1207 ;d                         Allocated to stack - _bp +1
                                   1208 ;mask                      Allocated to stack - _bp +5
                                   1209 ;__1310720015              Allocated to registers 
                                   1210 ;s                         Allocated to registers r5 r6 r7 
                                   1211 ;------------------------------------------------------------
                                   1212 ;	calc.c:102: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1213 ;	-----------------------------------------
                                   1214 ;	 function dump_peek
                                   1215 ;	-----------------------------------------
      002E37                       1216 _dump_peek:
      002E37 C0 08            [24] 1217 	push	_bp
      002E39 E5 81            [12] 1218 	mov	a,sp
      002E3B F5 08            [12] 1219 	mov	_bp,a
      002E3D 24 08            [12] 1220 	add	a,#0x08
      002E3F F5 81            [12] 1221 	mov	sp,a
                                   1222 ;	calc.c:105: printstr("PA ");
      002E41 7D DA            [12] 1223 	mov	r5,#___str_5
      002E43 7E 7D            [12] 1224 	mov	r6,#(___str_5 >> 8)
      002E45 7F 80            [12] 1225 	mov	r7,#0x80
                                   1226 ;	calc.c:51: return;
      002E47                       1227 00108$:
                                   1228 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002E47 8D 82            [24] 1229 	mov	dpl,r5
      002E49 8E 83            [24] 1230 	mov	dph,r6
      002E4B 8F F0            [24] 1231 	mov	b,r7
      002E4D 12 65 2D         [24] 1232 	lcall	__gptrget
      002E50 FC               [12] 1233 	mov	r4,a
      002E51 60 10            [24] 1234 	jz	00102$
      002E53 7B 00            [12] 1235 	mov	r3,#0x00
      002E55 8C 82            [24] 1236 	mov	dpl,r4
      002E57 8B 83            [24] 1237 	mov	dph,r3
      002E59 12 29 C0         [24] 1238 	lcall	_putchar
      002E5C 0D               [12] 1239 	inc	r5
                                   1240 ;	calc.c:105: printstr("PA ");
      002E5D BD 00 E7         [24] 1241 	cjne	r5,#0x00,00108$
      002E60 0E               [12] 1242 	inc	r6
      002E61 80 E4            [24] 1243 	sjmp	00108$
      002E63                       1244 00102$:
                                   1245 ;	calc.c:106: printf("% 11ld / ", d);
      002E63 E5 08            [12] 1246 	mov	a,_bp
      002E65 24 FA            [12] 1247 	add	a,#0xfa
      002E67 F8               [12] 1248 	mov	r0,a
      002E68 E6               [12] 1249 	mov	a,@r0
      002E69 C0 E0            [24] 1250 	push	acc
      002E6B 08               [12] 1251 	inc	r0
      002E6C E6               [12] 1252 	mov	a,@r0
      002E6D C0 E0            [24] 1253 	push	acc
      002E6F 08               [12] 1254 	inc	r0
      002E70 E6               [12] 1255 	mov	a,@r0
      002E71 C0 E0            [24] 1256 	push	acc
      002E73 08               [12] 1257 	inc	r0
      002E74 E6               [12] 1258 	mov	a,@r0
      002E75 C0 E0            [24] 1259 	push	acc
      002E77 74 C7            [12] 1260 	mov	a,#___str_3
      002E79 C0 E0            [24] 1261 	push	acc
      002E7B 74 7D            [12] 1262 	mov	a,#(___str_3 >> 8)
      002E7D C0 E0            [24] 1263 	push	acc
      002E7F 74 80            [12] 1264 	mov	a,#0x80
      002E81 C0 E0            [24] 1265 	push	acc
      002E83 12 64 F4         [24] 1266 	lcall	_printf
      002E86 E5 81            [12] 1267 	mov	a,sp
      002E88 24 F9            [12] 1268 	add	a,#0xf9
      002E8A F5 81            [12] 1269 	mov	sp,a
                                   1270 ;	calc.c:107: printf("%08lx / ", d);
      002E8C E5 08            [12] 1271 	mov	a,_bp
      002E8E 24 FA            [12] 1272 	add	a,#0xfa
      002E90 F8               [12] 1273 	mov	r0,a
      002E91 E6               [12] 1274 	mov	a,@r0
      002E92 C0 E0            [24] 1275 	push	acc
      002E94 08               [12] 1276 	inc	r0
      002E95 E6               [12] 1277 	mov	a,@r0
      002E96 C0 E0            [24] 1278 	push	acc
      002E98 08               [12] 1279 	inc	r0
      002E99 E6               [12] 1280 	mov	a,@r0
      002E9A C0 E0            [24] 1281 	push	acc
      002E9C 08               [12] 1282 	inc	r0
      002E9D E6               [12] 1283 	mov	a,@r0
      002E9E C0 E0            [24] 1284 	push	acc
      002EA0 74 D1            [12] 1285 	mov	a,#___str_4
      002EA2 C0 E0            [24] 1286 	push	acc
      002EA4 74 7D            [12] 1287 	mov	a,#(___str_4 >> 8)
      002EA6 C0 E0            [24] 1288 	push	acc
      002EA8 74 80            [12] 1289 	mov	a,#0x80
      002EAA C0 E0            [24] 1290 	push	acc
      002EAC 12 64 F4         [24] 1291 	lcall	_printf
      002EAF E5 81            [12] 1292 	mov	a,sp
      002EB1 24 F9            [12] 1293 	add	a,#0xf9
      002EB3 F5 81            [12] 1294 	mov	sp,a
                                   1295 ;	calc.c:108: printbin(d);
      002EB5 E5 08            [12] 1296 	mov	a,_bp
      002EB7 24 FA            [12] 1297 	add	a,#0xfa
      002EB9 F8               [12] 1298 	mov	r0,a
      002EBA 86 04            [24] 1299 	mov	ar4,@r0
      002EBC 08               [12] 1300 	inc	r0
      002EBD 86 05            [24] 1301 	mov	ar5,@r0
      002EBF 08               [12] 1302 	inc	r0
      002EC0 86 06            [24] 1303 	mov	ar6,@r0
      002EC2 08               [12] 1304 	inc	r0
      002EC3 86 07            [24] 1305 	mov	ar7,@r0
      002EC5 A8 08            [24] 1306 	mov	r0,_bp
      002EC7 08               [12] 1307 	inc	r0
      002EC8 A6 04            [24] 1308 	mov	@r0,ar4
      002ECA 08               [12] 1309 	inc	r0
      002ECB A6 05            [24] 1310 	mov	@r0,ar5
      002ECD 08               [12] 1311 	inc	r0
      002ECE A6 06            [24] 1312 	mov	@r0,ar6
      002ED0 08               [12] 1313 	inc	r0
      002ED1 A6 07            [24] 1314 	mov	@r0,ar7
                                   1315 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002ED3 E5 08            [12] 1316 	mov	a,_bp
      002ED5 24 05            [12] 1317 	add	a,#0x05
      002ED7 F8               [12] 1318 	mov	r0,a
      002ED8 E4               [12] 1319 	clr	a
      002ED9 F6               [12] 1320 	mov	@r0,a
      002EDA 08               [12] 1321 	inc	r0
      002EDB F6               [12] 1322 	mov	@r0,a
      002EDC 08               [12] 1323 	inc	r0
      002EDD F6               [12] 1324 	mov	@r0,a
      002EDE 08               [12] 1325 	inc	r0
      002EDF 76 80            [12] 1326 	mov	@r0,#0x80
      002EE1                       1327 00110$:
                                   1328 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002EE1 A8 08            [24] 1329 	mov	r0,_bp
      002EE3 08               [12] 1330 	inc	r0
      002EE4 86 04            [24] 1331 	mov	ar4,@r0
      002EE6 08               [12] 1332 	inc	r0
      002EE7 86 05            [24] 1333 	mov	ar5,@r0
      002EE9 08               [12] 1334 	inc	r0
      002EEA 86 06            [24] 1335 	mov	ar6,@r0
      002EEC 08               [12] 1336 	inc	r0
      002EED 86 07            [24] 1337 	mov	ar7,@r0
      002EEF E5 08            [12] 1338 	mov	a,_bp
      002EF1 24 05            [12] 1339 	add	a,#0x05
      002EF3 F8               [12] 1340 	mov	r0,a
      002EF4 E6               [12] 1341 	mov	a,@r0
      002EF5 52 04            [12] 1342 	anl	ar4,a
      002EF7 08               [12] 1343 	inc	r0
      002EF8 E6               [12] 1344 	mov	a,@r0
      002EF9 52 05            [12] 1345 	anl	ar5,a
      002EFB 08               [12] 1346 	inc	r0
      002EFC E6               [12] 1347 	mov	a,@r0
      002EFD 52 06            [12] 1348 	anl	ar6,a
      002EFF 08               [12] 1349 	inc	r0
      002F00 E6               [12] 1350 	mov	a,@r0
      002F01 52 07            [12] 1351 	anl	ar7,a
      002F03 EC               [12] 1352 	mov	a,r4
      002F04 4D               [12] 1353 	orl	a,r5
      002F05 4E               [12] 1354 	orl	a,r6
      002F06 4F               [12] 1355 	orl	a,r7
      002F07 60 06            [24] 1356 	jz	00117$
      002F09 7E 31            [12] 1357 	mov	r6,#0x31
      002F0B 7F 00            [12] 1358 	mov	r7,#0x00
      002F0D 80 04            [24] 1359 	sjmp	00118$
      002F0F                       1360 00117$:
      002F0F 7E 30            [12] 1361 	mov	r6,#0x30
      002F11 7F 00            [12] 1362 	mov	r7,#0x00
      002F13                       1363 00118$:
      002F13 8E 82            [24] 1364 	mov	dpl,r6
      002F15 8F 83            [24] 1365 	mov	dph,r7
      002F17 12 29 C0         [24] 1366 	lcall	_putchar
                                   1367 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F1A E5 08            [12] 1368 	mov	a,_bp
      002F1C 24 05            [12] 1369 	add	a,#0x05
      002F1E F8               [12] 1370 	mov	r0,a
      002F1F 08               [12] 1371 	inc	r0
      002F20 08               [12] 1372 	inc	r0
      002F21 08               [12] 1373 	inc	r0
      002F22 E6               [12] 1374 	mov	a,@r0
      002F23 C3               [12] 1375 	clr	c
      002F24 13               [12] 1376 	rrc	a
      002F25 F6               [12] 1377 	mov	@r0,a
      002F26 18               [12] 1378 	dec	r0
      002F27 E6               [12] 1379 	mov	a,@r0
      002F28 13               [12] 1380 	rrc	a
      002F29 F6               [12] 1381 	mov	@r0,a
      002F2A 18               [12] 1382 	dec	r0
      002F2B E6               [12] 1383 	mov	a,@r0
      002F2C 13               [12] 1384 	rrc	a
      002F2D F6               [12] 1385 	mov	@r0,a
      002F2E 18               [12] 1386 	dec	r0
      002F2F E6               [12] 1387 	mov	a,@r0
      002F30 13               [12] 1388 	rrc	a
      002F31 F6               [12] 1389 	mov	@r0,a
      002F32 E5 08            [12] 1390 	mov	a,_bp
      002F34 24 05            [12] 1391 	add	a,#0x05
      002F36 F8               [12] 1392 	mov	r0,a
      002F37 E6               [12] 1393 	mov	a,@r0
      002F38 08               [12] 1394 	inc	r0
      002F39 46               [12] 1395 	orl	a,@r0
      002F3A 08               [12] 1396 	inc	r0
      002F3B 46               [12] 1397 	orl	a,@r0
      002F3C 08               [12] 1398 	inc	r0
      002F3D 46               [12] 1399 	orl	a,@r0
      002F3E 70 A1            [24] 1400 	jnz	00110$
                                   1401 ;	calc.c:109: printstr("\r\n");
      002F40 7D AE            [12] 1402 	mov	r5,#___str_0
      002F42 7E 7D            [12] 1403 	mov	r6,#(___str_0 >> 8)
      002F44 7F 80            [12] 1404 	mov	r7,#0x80
                                   1405 ;	calc.c:51: return;
      002F46                       1406 00113$:
                                   1407 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002F46 8D 82            [24] 1408 	mov	dpl,r5
      002F48 8E 83            [24] 1409 	mov	dph,r6
      002F4A 8F F0            [24] 1410 	mov	b,r7
      002F4C 12 65 2D         [24] 1411 	lcall	__gptrget
      002F4F FC               [12] 1412 	mov	r4,a
      002F50 60 10            [24] 1413 	jz	00106$
      002F52 7B 00            [12] 1414 	mov	r3,#0x00
      002F54 8C 82            [24] 1415 	mov	dpl,r4
      002F56 8B 83            [24] 1416 	mov	dph,r3
      002F58 12 29 C0         [24] 1417 	lcall	_putchar
      002F5B 0D               [12] 1418 	inc	r5
                                   1419 ;	calc.c:109: printstr("\r\n");
      002F5C BD 00 E7         [24] 1420 	cjne	r5,#0x00,00113$
      002F5F 0E               [12] 1421 	inc	r6
      002F60 80 E4            [24] 1422 	sjmp	00113$
      002F62                       1423 00106$:
                                   1424 ;	calc.c:111: return 1;
      002F62 90 00 01         [24] 1425 	mov	dptr,#0x0001
                                   1426 ;	calc.c:112: }
      002F65 85 08 81         [24] 1427 	mov	sp,_bp
      002F68 D0 08            [24] 1428 	pop	_bp
      002F6A 22               [24] 1429 	ret
                                   1430 ;------------------------------------------------------------
                                   1431 ;Allocation info for local variables in function 'operator'
                                   1432 ;------------------------------------------------------------
                                   1433 ;delta                     Allocated to stack - _bp -5
                                   1434 ;_ctx                      Allocated to stack - _bp +1
                                   1435 ;ctx                       Allocated to stack - _bp +18
                                   1436 ;t0                        Allocated to registers r7 r6 r5 
                                   1437 ;d0                        Allocated to stack - _bp +21
                                   1438 ;d1                        Allocated to stack - _bp +25
                                   1439 ;__1966080017              Allocated to registers 
                                   1440 ;s                         Allocated to registers r7 r6 r5 
                                   1441 ;__1966080019              Allocated to registers 
                                   1442 ;s                         Allocated to registers r7 r6 r5 
                                   1443 ;__2621440021              Allocated to registers 
                                   1444 ;s                         Allocated to registers r7 r6 r5 
                                   1445 ;__2621440023              Allocated to registers r7 r6 r5 r4 
                                   1446 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1447 ;mask                      Allocated to stack - _bp +29
                                   1448 ;__2621440025              Allocated to registers 
                                   1449 ;s                         Allocated to registers r7 r6 r5 
                                   1450 ;__1966080027              Allocated to registers 
                                   1451 ;s                         Allocated to registers r7 r6 r5 
                                   1452 ;__1966080029              Allocated to registers 
                                   1453 ;s                         Allocated to registers r7 r6 r5 
                                   1454 ;__1966080031              Allocated to registers 
                                   1455 ;s                         Allocated to registers r7 r6 r5 
                                   1456 ;__1966080033              Allocated to registers 
                                   1457 ;s                         Allocated to registers r7 r6 r5 
                                   1458 ;__2621440035              Allocated to registers 
                                   1459 ;s                         Allocated to registers r7 r6 r5 
                                   1460 ;__2621440037              Allocated to registers r7 r6 r5 r4 
                                   1461 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1462 ;mask                      Allocated to stack - _bp +29
                                   1463 ;__2621440039              Allocated to registers 
                                   1464 ;s                         Allocated to registers r7 r6 r5 
                                   1465 ;__1966080041              Allocated to registers 
                                   1466 ;s                         Allocated to registers r7 r6 r5 
                                   1467 ;__1966080043              Allocated to registers 
                                   1468 ;s                         Allocated to registers r7 r6 r5 
                                   1469 ;__2621440045              Allocated to registers 
                                   1470 ;s                         Allocated to registers r7 r6 r5 
                                   1471 ;__1966080047              Allocated to registers 
                                   1472 ;s                         Allocated to registers r7 r6 r5 
                                   1473 ;__3276800049              Allocated to registers 
                                   1474 ;s                         Allocated to registers r7 r6 r5 
                                   1475 ;__1966080051              Allocated to registers 
                                   1476 ;s                         Allocated to registers r7 r6 r5 
                                   1477 ;__3276800053              Allocated to registers 
                                   1478 ;s                         Allocated to registers r7 r6 r5 
                                   1479 ;__1966080055              Allocated to registers 
                                   1480 ;s                         Allocated to registers r7 r6 r5 
                                   1481 ;__1966080057              Allocated to registers 
                                   1482 ;s                         Allocated to registers r7 r6 r5 
                                   1483 ;__1966080059              Allocated to registers 
                                   1484 ;s                         Allocated to registers r7 r6 r5 
                                   1485 ;__1966080061              Allocated to registers 
                                   1486 ;s                         Allocated to registers r7 r6 r5 
                                   1487 ;__1966080063              Allocated to registers 
                                   1488 ;s                         Allocated to registers r7 r6 r5 
                                   1489 ;__3276800065              Allocated to registers 
                                   1490 ;s                         Allocated to registers r7 r6 r5 
                                   1491 ;__1966080067              Allocated to registers 
                                   1492 ;s                         Allocated to registers r7 r6 r5 
                                   1493 ;__2621440069              Allocated to registers 
                                   1494 ;s                         Allocated to registers r7 r6 r5 
                                   1495 ;__1966080071              Allocated to registers 
                                   1496 ;s                         Allocated to registers r7 r6 r5 
                                   1497 ;__2621440073              Allocated to registers 
                                   1498 ;s                         Allocated to registers r7 r6 r5 
                                   1499 ;__1966080075              Allocated to registers 
                                   1500 ;s                         Allocated to registers r7 r6 r5 
                                   1501 ;__2621440077              Allocated to registers 
                                   1502 ;s                         Allocated to registers r7 r6 r5 
                                   1503 ;__1966080079              Allocated to registers 
                                   1504 ;s                         Allocated to registers r7 r6 r5 
                                   1505 ;__2621440081              Allocated to registers 
                                   1506 ;s                         Allocated to registers r7 r6 r5 
                                   1507 ;__2621440083              Allocated to registers 
                                   1508 ;s                         Allocated to registers r7 r6 r5 
                                   1509 ;__1966080085              Allocated to registers 
                                   1510 ;s                         Allocated to registers r7 r6 r5 
                                   1511 ;__2621440087              Allocated to registers 
                                   1512 ;s                         Allocated to registers r7 r6 r5 
                                   1513 ;__2621440089              Allocated to registers 
                                   1514 ;s                         Allocated to registers r7 r6 r5 
                                   1515 ;__1966080091              Allocated to registers 
                                   1516 ;s                         Allocated to registers r5 r4 r3 
                                   1517 ;__2621440093              Allocated to registers 
                                   1518 ;s                         Allocated to registers r5 r4 r3 
                                   1519 ;__1966080095              Allocated to registers 
                                   1520 ;s                         Allocated to registers r5 r4 r3 
                                   1521 ;__2621440097              Allocated to registers 
                                   1522 ;s                         Allocated to registers r5 r4 r3 
                                   1523 ;__1966080099              Allocated to registers 
                                   1524 ;s                         Allocated to registers r5 r4 r3 
                                   1525 ;__2621440101              Allocated to registers 
                                   1526 ;s                         Allocated to registers r5 r4 r3 
                                   1527 ;__1966080103              Allocated to registers 
                                   1528 ;s                         Allocated to registers r5 r4 r3 
                                   1529 ;__2621440105              Allocated to registers 
                                   1530 ;s                         Allocated to registers r5 r4 r3 
                                   1531 ;__1966080107              Allocated to registers 
                                   1532 ;s                         Allocated to registers r5 r4 r3 
                                   1533 ;__2621440109              Allocated to registers 
                                   1534 ;s                         Allocated to registers r5 r4 r3 
                                   1535 ;__1966080111              Allocated to registers 
                                   1536 ;s                         Allocated to registers r5 r4 r3 
                                   1537 ;__2621440113              Allocated to registers 
                                   1538 ;s                         Allocated to registers r5 r4 r3 
                                   1539 ;__1966080115              Allocated to registers 
                                   1540 ;s                         Allocated to registers r5 r4 r3 
                                   1541 ;sloc0                     Allocated to stack - _bp +330
                                   1542 ;sloc1                     Allocated to stack - _bp +4
                                   1543 ;sloc2                     Allocated to stack - _bp +7
                                   1544 ;sloc3                     Allocated to stack - _bp +11
                                   1545 ;sloc4                     Allocated to stack - _bp +14
                                   1546 ;------------------------------------------------------------
                                   1547 ;	calc.c:114: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   1548 ;	-----------------------------------------
                                   1549 ;	 function operator
                                   1550 ;	-----------------------------------------
      002F6B                       1551 _operator:
      002F6B C0 08            [24] 1552 	push	_bp
      002F6D 85 81 08         [24] 1553 	mov	_bp,sp
      002F70 C0 82            [24] 1554 	push	dpl
      002F72 C0 83            [24] 1555 	push	dph
      002F74 C0 F0            [24] 1556 	push	b
      002F76 E5 81            [12] 1557 	mov	a,sp
      002F78 24 1D            [12] 1558 	add	a,#0x1d
      002F7A F5 81            [12] 1559 	mov	sp,a
                                   1560 ;	calc.c:115: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
      002F7C A8 08            [24] 1561 	mov	r0,_bp
      002F7E 08               [12] 1562 	inc	r0
      002F7F E5 08            [12] 1563 	mov	a,_bp
      002F81 24 12            [12] 1564 	add	a,#0x12
      002F83 F9               [12] 1565 	mov	r1,a
      002F84 E6               [12] 1566 	mov	a,@r0
      002F85 F7               [12] 1567 	mov	@r1,a
      002F86 08               [12] 1568 	inc	r0
      002F87 09               [12] 1569 	inc	r1
      002F88 E6               [12] 1570 	mov	a,@r0
      002F89 F7               [12] 1571 	mov	@r1,a
      002F8A 08               [12] 1572 	inc	r0
      002F8B 09               [12] 1573 	inc	r1
      002F8C E6               [12] 1574 	mov	a,@r0
      002F8D F7               [12] 1575 	mov	@r1,a
                                   1576 ;	calc.c:119: switch (ctx->digit[0]) {
      002F8E E5 08            [12] 1577 	mov	a,_bp
      002F90 24 12            [12] 1578 	add	a,#0x12
      002F92 F8               [12] 1579 	mov	r0,a
      002F93 74 07            [12] 1580 	mov	a,#0x07
      002F95 26               [12] 1581 	add	a,@r0
      002F96 FD               [12] 1582 	mov	r5,a
      002F97 E4               [12] 1583 	clr	a
      002F98 08               [12] 1584 	inc	r0
      002F99 36               [12] 1585 	addc	a,@r0
      002F9A FE               [12] 1586 	mov	r6,a
      002F9B 08               [12] 1587 	inc	r0
      002F9C 86 07            [24] 1588 	mov	ar7,@r0
      002F9E 8D 82            [24] 1589 	mov	dpl,r5
      002FA0 8E 83            [24] 1590 	mov	dph,r6
      002FA2 8F F0            [24] 1591 	mov	b,r7
      002FA4 12 65 2D         [24] 1592 	lcall	__gptrget
      002FA7 FC               [12] 1593 	mov	r4,a
      002FA8 BC 23 03         [24] 1594 	cjne	r4,#0x23,01232$
      002FAB 02 44 64         [24] 1595 	ljmp	00189$
      002FAE                       1596 01232$:
      002FAE BC 25 03         [24] 1597 	cjne	r4,#0x25,01233$
      002FB1 02 44 64         [24] 1598 	ljmp	00189$
      002FB4                       1599 01233$:
      002FB4 BC 26 03         [24] 1600 	cjne	r4,#0x26,01234$
      002FB7 02 47 4A         [24] 1601 	ljmp	00202$
      002FBA                       1602 01234$:
      002FBA BC 2A 03         [24] 1603 	cjne	r4,#0x2a,01235$
      002FBD 02 3F D4         [24] 1604 	ljmp	00167$
      002FC0                       1605 01235$:
      002FC0 BC 2B 03         [24] 1606 	cjne	r4,#0x2b,01236$
      002FC3 02 3C D5         [24] 1607 	ljmp	00153$
      002FC6                       1608 01236$:
      002FC6 BC 2D 03         [24] 1609 	cjne	r4,#0x2d,01237$
      002FC9 02 3E 54         [24] 1610 	ljmp	00160$
      002FCC                       1611 01237$:
      002FCC BC 2E 03         [24] 1612 	cjne	r4,#0x2e,01238$
      002FCF 02 32 A2         [24] 1613 	ljmp	00109$
      002FD2                       1614 01238$:
      002FD2 BC 2F 03         [24] 1615 	cjne	r4,#0x2f,01239$
      002FD5 02 41 7A         [24] 1616 	ljmp	00175$
      002FD8                       1617 01239$:
      002FD8 BC 3C 03         [24] 1618 	cjne	r4,#0x3c,01240$
      002FDB 02 4F 6F         [24] 1619 	ljmp	00237$
      002FDE                       1620 01240$:
      002FDE BC 3E 03         [24] 1621 	cjne	r4,#0x3e,01241$
      002FE1 02 4C 18         [24] 1622 	ljmp	00223$
      002FE4                       1623 01241$:
      002FE4 BC 4D 03         [24] 1624 	cjne	r4,#0x4d,01242$
      002FE7 02 37 7B         [24] 1625 	ljmp	00127$
      002FEA                       1626 01242$:
      002FEA BC 50 03         [24] 1627 	cjne	r4,#0x50,01243$
      002FED 02 32 01         [24] 1628 	ljmp	00105$
      002FF0                       1629 01243$:
      002FF0 BC 54 03         [24] 1630 	cjne	r4,#0x54,01244$
      002FF3 02 3A 7D         [24] 1631 	ljmp	00145$
      002FF6                       1632 01244$:
      002FF6 BC 55 03         [24] 1633 	cjne	r4,#0x55,01245$
      002FF9 02 39 96         [24] 1634 	ljmp	00139$
      002FFC                       1635 01245$:
      002FFC BC 56 03         [24] 1636 	cjne	r4,#0x56,01246$
      002FFF 02 34 5D         [24] 1637 	ljmp	00113$
      003002                       1638 01246$:
      003002 BC 58 03         [24] 1639 	cjne	r4,#0x58,01247$
      003005 02 3C 36         [24] 1640 	ljmp	00152$
      003008                       1641 01247$:
      003008 BC 5C 03         [24] 1642 	cjne	r4,#0x5c,01248$
      00300B 02 41 7A         [24] 1643 	ljmp	00175$
      00300E                       1644 01248$:
      00300E BC 5D 03         [24] 1645 	cjne	r4,#0x5d,01249$
      003011 02 4D BB         [24] 1646 	ljmp	00230$
      003014                       1647 01249$:
      003014 BC 5E 03         [24] 1648 	cjne	r4,#0x5e,01250$
      003017 02 4A 7E         [24] 1649 	ljmp	00216$
      00301A                       1650 01250$:
      00301A BC 6D 03         [24] 1651 	cjne	r4,#0x6d,01251$
      00301D 02 36 47         [24] 1652 	ljmp	00121$
      003020                       1653 01251$:
      003020 BC 70 02         [24] 1654 	cjne	r4,#0x70,01252$
      003023 80 21            [24] 1655 	sjmp	00101$
      003025                       1656 01252$:
      003025 BC 75 03         [24] 1657 	cjne	r4,#0x75,01253$
      003028 02 38 AF         [24] 1658 	ljmp	00133$
      00302B                       1659 01253$:
      00302B BC 76 03         [24] 1660 	cjne	r4,#0x76,01254$
      00302E 02 32 A2         [24] 1661 	ljmp	00109$
      003031                       1662 01254$:
      003031 BC 78 03         [24] 1663 	cjne	r4,#0x78,01255$
      003034 02 34 A6         [24] 1664 	ljmp	00114$
      003037                       1665 01255$:
      003037 BC 7C 03         [24] 1666 	cjne	r4,#0x7c,01256$
      00303A 02 48 E4         [24] 1667 	ljmp	00209$
      00303D                       1668 01256$:
      00303D BC 7E 03         [24] 1669 	cjne	r4,#0x7e,01257$
      003040 02 51 12         [24] 1670 	ljmp	00244$
      003043                       1671 01257$:
      003043 02 51 EB         [24] 1672 	ljmp	00248$
                                   1673 ;	calc.c:120: case 'p':
      003046                       1674 00101$:
                                   1675 ;	calc.c:121: printstr("\r\n");
      003046 7F AE            [12] 1676 	mov	r7,#___str_0
      003048 7E 7D            [12] 1677 	mov	r6,#(___str_0 >> 8)
      00304A 7D 80            [12] 1678 	mov	r5,#0x80
                                   1679 ;	calc.c:51: return;
      00304C                       1680 00351$:
                                   1681 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00304C 8F 82            [24] 1682 	mov	dpl,r7
      00304E 8E 83            [24] 1683 	mov	dph,r6
      003050 8D F0            [24] 1684 	mov	b,r5
      003052 12 65 2D         [24] 1685 	lcall	__gptrget
      003055 FC               [12] 1686 	mov	r4,a
      003056 60 10            [24] 1687 	jz	00251$
      003058 7B 00            [12] 1688 	mov	r3,#0x00
      00305A 8C 82            [24] 1689 	mov	dpl,r4
      00305C 8B 83            [24] 1690 	mov	dph,r3
      00305E 12 29 C0         [24] 1691 	lcall	_putchar
      003061 0F               [12] 1692 	inc	r7
                                   1693 ;	calc.c:121: printstr("\r\n");
      003062 BF 00 E7         [24] 1694 	cjne	r7,#0x00,00351$
      003065 0E               [12] 1695 	inc	r6
      003066 80 E4            [24] 1696 	sjmp	00351$
      003068                       1697 00251$:
                                   1698 ;	calc.c:122: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003068 E5 08            [12] 1699 	mov	a,_bp
      00306A 24 15            [12] 1700 	add	a,#0x15
      00306C FF               [12] 1701 	mov	r7,a
      00306D 7E 00            [12] 1702 	mov	r6,#0x00
      00306F 7D 40            [12] 1703 	mov	r5,#0x40
      003071 E5 08            [12] 1704 	mov	a,_bp
      003073 24 12            [12] 1705 	add	a,#0x12
      003075 F8               [12] 1706 	mov	r0,a
      003076 74 11            [12] 1707 	mov	a,#0x11
      003078 26               [12] 1708 	add	a,@r0
      003079 FA               [12] 1709 	mov	r2,a
      00307A ED               [12] 1710 	mov	a,r5
      00307B 08               [12] 1711 	inc	r0
      00307C 36               [12] 1712 	addc	a,@r0
      00307D FB               [12] 1713 	mov	r3,a
      00307E 08               [12] 1714 	inc	r0
      00307F 86 04            [24] 1715 	mov	ar4,@r0
      003081 8A 82            [24] 1716 	mov	dpl,r2
      003083 8B 83            [24] 1717 	mov	dph,r3
      003085 8C F0            [24] 1718 	mov	b,r4
      003087 12 65 2D         [24] 1719 	lcall	__gptrget
      00308A FA               [12] 1720 	mov	r2,a
      00308B A3               [24] 1721 	inc	dptr
      00308C 12 65 2D         [24] 1722 	lcall	__gptrget
      00308F FB               [12] 1723 	mov	r3,a
      003090 A3               [24] 1724 	inc	dptr
      003091 12 65 2D         [24] 1725 	lcall	__gptrget
      003094 FC               [12] 1726 	mov	r4,a
      003095 C0 07            [24] 1727 	push	ar7
      003097 C0 06            [24] 1728 	push	ar6
      003099 C0 05            [24] 1729 	push	ar5
      00309B 8A 82            [24] 1730 	mov	dpl,r2
      00309D 8B 83            [24] 1731 	mov	dph,r3
      00309F 8C F0            [24] 1732 	mov	b,r4
      0030A1 12 28 56         [24] 1733 	lcall	_stack_peek
      0030A4 AB 82            [24] 1734 	mov	r3,dpl
      0030A6 AC 83            [24] 1735 	mov	r4,dph
      0030A8 15 81            [12] 1736 	dec	sp
      0030AA 15 81            [12] 1737 	dec	sp
      0030AC 15 81            [12] 1738 	dec	sp
      0030AE EB               [12] 1739 	mov	a,r3
      0030AF 4C               [12] 1740 	orl	a,r4
      0030B0 70 25            [24] 1741 	jnz	00103$
      0030B2 7F B1            [12] 1742 	mov	r7,#___str_1
      0030B4 7E 7D            [12] 1743 	mov	r6,#(___str_1 >> 8)
      0030B6 7D 80            [12] 1744 	mov	r5,#0x80
                                   1745 ;	calc.c:51: return;
      0030B8                       1746 00354$:
                                   1747 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0030B8 8F 82            [24] 1748 	mov	dpl,r7
      0030BA 8E 83            [24] 1749 	mov	dph,r6
      0030BC 8D F0            [24] 1750 	mov	b,r5
      0030BE 12 65 2D         [24] 1751 	lcall	__gptrget
      0030C1 FC               [12] 1752 	mov	r4,a
      0030C2 70 03            [24] 1753 	jnz	01261$
      0030C4 02 51 F0         [24] 1754 	ljmp	00249$
      0030C7                       1755 01261$:
      0030C7 7B 00            [12] 1756 	mov	r3,#0x00
      0030C9 8C 82            [24] 1757 	mov	dpl,r4
      0030CB 8B 83            [24] 1758 	mov	dph,r3
      0030CD 12 29 C0         [24] 1759 	lcall	_putchar
      0030D0 0F               [12] 1760 	inc	r7
                                   1761 ;	calc.c:122: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0030D1 BF 00 E4         [24] 1762 	cjne	r7,#0x00,00354$
      0030D4 0E               [12] 1763 	inc	r6
      0030D5 80 E1            [24] 1764 	sjmp	00354$
      0030D7                       1765 00103$:
                                   1766 ;	calc.c:124: printstr("PT ");
      0030D7 7F DE            [12] 1767 	mov	r7,#___str_6
      0030D9 7E 7D            [12] 1768 	mov	r6,#(___str_6 >> 8)
      0030DB 7D 80            [12] 1769 	mov	r5,#0x80
                                   1770 ;	calc.c:51: return;
      0030DD                       1771 00357$:
                                   1772 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0030DD 8F 82            [24] 1773 	mov	dpl,r7
      0030DF 8E 83            [24] 1774 	mov	dph,r6
      0030E1 8D F0            [24] 1775 	mov	b,r5
      0030E3 12 65 2D         [24] 1776 	lcall	__gptrget
      0030E6 FC               [12] 1777 	mov	r4,a
      0030E7 60 10            [24] 1778 	jz	00255$
      0030E9 7B 00            [12] 1779 	mov	r3,#0x00
      0030EB 8C 82            [24] 1780 	mov	dpl,r4
      0030ED 8B 83            [24] 1781 	mov	dph,r3
      0030EF 12 29 C0         [24] 1782 	lcall	_putchar
      0030F2 0F               [12] 1783 	inc	r7
                                   1784 ;	calc.c:124: printstr("PT ");
      0030F3 BF 00 E7         [24] 1785 	cjne	r7,#0x00,00357$
      0030F6 0E               [12] 1786 	inc	r6
      0030F7 80 E4            [24] 1787 	sjmp	00357$
      0030F9                       1788 00255$:
                                   1789 ;	calc.c:125: printf("% 11ld / ", d0);
      0030F9 E5 08            [12] 1790 	mov	a,_bp
      0030FB 24 15            [12] 1791 	add	a,#0x15
      0030FD F8               [12] 1792 	mov	r0,a
      0030FE E6               [12] 1793 	mov	a,@r0
      0030FF C0 E0            [24] 1794 	push	acc
      003101 08               [12] 1795 	inc	r0
      003102 E6               [12] 1796 	mov	a,@r0
      003103 C0 E0            [24] 1797 	push	acc
      003105 08               [12] 1798 	inc	r0
      003106 E6               [12] 1799 	mov	a,@r0
      003107 C0 E0            [24] 1800 	push	acc
      003109 08               [12] 1801 	inc	r0
      00310A E6               [12] 1802 	mov	a,@r0
      00310B C0 E0            [24] 1803 	push	acc
      00310D 74 C7            [12] 1804 	mov	a,#___str_3
      00310F C0 E0            [24] 1805 	push	acc
      003111 74 7D            [12] 1806 	mov	a,#(___str_3 >> 8)
      003113 C0 E0            [24] 1807 	push	acc
      003115 74 80            [12] 1808 	mov	a,#0x80
      003117 C0 E0            [24] 1809 	push	acc
      003119 12 64 F4         [24] 1810 	lcall	_printf
      00311C E5 81            [12] 1811 	mov	a,sp
      00311E 24 F9            [12] 1812 	add	a,#0xf9
      003120 F5 81            [12] 1813 	mov	sp,a
                                   1814 ;	calc.c:126: printf("%08lx / ", d0);
      003122 E5 08            [12] 1815 	mov	a,_bp
      003124 24 15            [12] 1816 	add	a,#0x15
      003126 F8               [12] 1817 	mov	r0,a
      003127 E6               [12] 1818 	mov	a,@r0
      003128 C0 E0            [24] 1819 	push	acc
      00312A 08               [12] 1820 	inc	r0
      00312B E6               [12] 1821 	mov	a,@r0
      00312C C0 E0            [24] 1822 	push	acc
      00312E 08               [12] 1823 	inc	r0
      00312F E6               [12] 1824 	mov	a,@r0
      003130 C0 E0            [24] 1825 	push	acc
      003132 08               [12] 1826 	inc	r0
      003133 E6               [12] 1827 	mov	a,@r0
      003134 C0 E0            [24] 1828 	push	acc
      003136 74 D1            [12] 1829 	mov	a,#___str_4
      003138 C0 E0            [24] 1830 	push	acc
      00313A 74 7D            [12] 1831 	mov	a,#(___str_4 >> 8)
      00313C C0 E0            [24] 1832 	push	acc
      00313E 74 80            [12] 1833 	mov	a,#0x80
      003140 C0 E0            [24] 1834 	push	acc
      003142 12 64 F4         [24] 1835 	lcall	_printf
      003145 E5 81            [12] 1836 	mov	a,sp
      003147 24 F9            [12] 1837 	add	a,#0xf9
      003149 F5 81            [12] 1838 	mov	sp,a
                                   1839 ;	calc.c:127: printbin(d0);
      00314B E5 08            [12] 1840 	mov	a,_bp
      00314D 24 15            [12] 1841 	add	a,#0x15
      00314F F8               [12] 1842 	mov	r0,a
      003150 86 07            [24] 1843 	mov	ar7,@r0
      003152 08               [12] 1844 	inc	r0
      003153 86 06            [24] 1845 	mov	ar6,@r0
      003155 08               [12] 1846 	inc	r0
      003156 86 05            [24] 1847 	mov	ar5,@r0
      003158 08               [12] 1848 	inc	r0
      003159 86 04            [24] 1849 	mov	ar4,@r0
      00315B 8C 02            [24] 1850 	mov	ar2,r4
                                   1851 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00315D E5 08            [12] 1852 	mov	a,_bp
      00315F 24 1D            [12] 1853 	add	a,#0x1d
      003161 F8               [12] 1854 	mov	r0,a
      003162 E4               [12] 1855 	clr	a
      003163 F6               [12] 1856 	mov	@r0,a
      003164 08               [12] 1857 	inc	r0
      003165 F6               [12] 1858 	mov	@r0,a
      003166 08               [12] 1859 	inc	r0
      003167 F6               [12] 1860 	mov	@r0,a
      003168 08               [12] 1861 	inc	r0
      003169 76 80            [12] 1862 	mov	@r0,#0x80
      00316B                       1863 00359$:
                                   1864 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00316B E5 08            [12] 1865 	mov	a,_bp
      00316D 24 07            [12] 1866 	add	a,#0x07
      00316F F8               [12] 1867 	mov	r0,a
      003170 A6 07            [24] 1868 	mov	@r0,ar7
      003172 08               [12] 1869 	inc	r0
      003173 A6 06            [24] 1870 	mov	@r0,ar6
      003175 08               [12] 1871 	inc	r0
      003176 A6 05            [24] 1872 	mov	@r0,ar5
      003178 08               [12] 1873 	inc	r0
      003179 A6 02            [24] 1874 	mov	@r0,ar2
      00317B E5 08            [12] 1875 	mov	a,_bp
      00317D 24 07            [12] 1876 	add	a,#0x07
      00317F F8               [12] 1877 	mov	r0,a
      003180 E5 08            [12] 1878 	mov	a,_bp
      003182 24 1D            [12] 1879 	add	a,#0x1d
      003184 F9               [12] 1880 	mov	r1,a
      003185 E7               [12] 1881 	mov	a,@r1
      003186 56               [12] 1882 	anl	a,@r0
      003187 F6               [12] 1883 	mov	@r0,a
      003188 09               [12] 1884 	inc	r1
      003189 E7               [12] 1885 	mov	a,@r1
      00318A 08               [12] 1886 	inc	r0
      00318B 56               [12] 1887 	anl	a,@r0
      00318C F6               [12] 1888 	mov	@r0,a
      00318D 09               [12] 1889 	inc	r1
      00318E E7               [12] 1890 	mov	a,@r1
      00318F 08               [12] 1891 	inc	r0
      003190 56               [12] 1892 	anl	a,@r0
      003191 F6               [12] 1893 	mov	@r0,a
      003192 09               [12] 1894 	inc	r1
      003193 E7               [12] 1895 	mov	a,@r1
      003194 08               [12] 1896 	inc	r0
      003195 56               [12] 1897 	anl	a,@r0
      003196 F6               [12] 1898 	mov	@r0,a
      003197 E5 08            [12] 1899 	mov	a,_bp
      003199 24 07            [12] 1900 	add	a,#0x07
      00319B F8               [12] 1901 	mov	r0,a
      00319C E6               [12] 1902 	mov	a,@r0
      00319D 08               [12] 1903 	inc	r0
      00319E 46               [12] 1904 	orl	a,@r0
      00319F 08               [12] 1905 	inc	r0
      0031A0 46               [12] 1906 	orl	a,@r0
      0031A1 08               [12] 1907 	inc	r0
      0031A2 46               [12] 1908 	orl	a,@r0
      0031A3 60 06            [24] 1909 	jz	00500$
      0031A5 7B 31            [12] 1910 	mov	r3,#0x31
      0031A7 7C 00            [12] 1911 	mov	r4,#0x00
      0031A9 80 04            [24] 1912 	sjmp	00501$
      0031AB                       1913 00500$:
      0031AB 7B 30            [12] 1914 	mov	r3,#0x30
      0031AD 7C 00            [12] 1915 	mov	r4,#0x00
      0031AF                       1916 00501$:
      0031AF 8B 82            [24] 1917 	mov	dpl,r3
      0031B1 8C 83            [24] 1918 	mov	dph,r4
      0031B3 12 29 C0         [24] 1919 	lcall	_putchar
                                   1920 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031B6 E5 08            [12] 1921 	mov	a,_bp
      0031B8 24 1D            [12] 1922 	add	a,#0x1d
      0031BA F8               [12] 1923 	mov	r0,a
      0031BB 08               [12] 1924 	inc	r0
      0031BC 08               [12] 1925 	inc	r0
      0031BD 08               [12] 1926 	inc	r0
      0031BE E6               [12] 1927 	mov	a,@r0
      0031BF C3               [12] 1928 	clr	c
      0031C0 13               [12] 1929 	rrc	a
      0031C1 F6               [12] 1930 	mov	@r0,a
      0031C2 18               [12] 1931 	dec	r0
      0031C3 E6               [12] 1932 	mov	a,@r0
      0031C4 13               [12] 1933 	rrc	a
      0031C5 F6               [12] 1934 	mov	@r0,a
      0031C6 18               [12] 1935 	dec	r0
      0031C7 E6               [12] 1936 	mov	a,@r0
      0031C8 13               [12] 1937 	rrc	a
      0031C9 F6               [12] 1938 	mov	@r0,a
      0031CA 18               [12] 1939 	dec	r0
      0031CB E6               [12] 1940 	mov	a,@r0
      0031CC 13               [12] 1941 	rrc	a
      0031CD F6               [12] 1942 	mov	@r0,a
      0031CE E5 08            [12] 1943 	mov	a,_bp
      0031D0 24 1D            [12] 1944 	add	a,#0x1d
      0031D2 F8               [12] 1945 	mov	r0,a
      0031D3 E6               [12] 1946 	mov	a,@r0
      0031D4 08               [12] 1947 	inc	r0
      0031D5 46               [12] 1948 	orl	a,@r0
      0031D6 08               [12] 1949 	inc	r0
      0031D7 46               [12] 1950 	orl	a,@r0
      0031D8 08               [12] 1951 	inc	r0
      0031D9 46               [12] 1952 	orl	a,@r0
      0031DA 70 8F            [24] 1953 	jnz	00359$
                                   1954 ;	calc.c:128: printstr("\r\n");
      0031DC 7F AE            [12] 1955 	mov	r7,#___str_0
      0031DE 7E 7D            [12] 1956 	mov	r6,#(___str_0 >> 8)
      0031E0 7D 80            [12] 1957 	mov	r5,#0x80
                                   1958 ;	calc.c:51: return;
      0031E2                       1959 00362$:
                                   1960 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0031E2 8F 82            [24] 1961 	mov	dpl,r7
      0031E4 8E 83            [24] 1962 	mov	dph,r6
      0031E6 8D F0            [24] 1963 	mov	b,r5
      0031E8 12 65 2D         [24] 1964 	lcall	__gptrget
      0031EB FC               [12] 1965 	mov	r4,a
      0031EC 70 03            [24] 1966 	jnz	01267$
      0031EE 02 51 F0         [24] 1967 	ljmp	00249$
      0031F1                       1968 01267$:
      0031F1 7B 00            [12] 1969 	mov	r3,#0x00
      0031F3 8C 82            [24] 1970 	mov	dpl,r4
      0031F5 8B 83            [24] 1971 	mov	dph,r3
      0031F7 12 29 C0         [24] 1972 	lcall	_putchar
      0031FA 0F               [12] 1973 	inc	r7
                                   1974 ;	calc.c:131: case 'P':
      0031FB BF 00 E4         [24] 1975 	cjne	r7,#0x00,00362$
      0031FE 0E               [12] 1976 	inc	r6
      0031FF 80 E1            [24] 1977 	sjmp	00362$
      003201                       1978 00105$:
                                   1979 ;	calc.c:132: printstr("\r\n");
      003201 7F AE            [12] 1980 	mov	r7,#___str_0
      003203 7E 7D            [12] 1981 	mov	r6,#(___str_0 >> 8)
      003205 7D 80            [12] 1982 	mov	r5,#0x80
                                   1983 ;	calc.c:51: return;
      003207                       1984 00365$:
                                   1985 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003207 8F 82            [24] 1986 	mov	dpl,r7
      003209 8E 83            [24] 1987 	mov	dph,r6
      00320B 8D F0            [24] 1988 	mov	b,r5
      00320D 12 65 2D         [24] 1989 	lcall	__gptrget
      003210 FC               [12] 1990 	mov	r4,a
      003211 60 10            [24] 1991 	jz	00261$
      003213 7B 00            [12] 1992 	mov	r3,#0x00
      003215 8C 82            [24] 1993 	mov	dpl,r4
      003217 8B 83            [24] 1994 	mov	dph,r3
      003219 12 29 C0         [24] 1995 	lcall	_putchar
      00321C 0F               [12] 1996 	inc	r7
                                   1997 ;	calc.c:132: printstr("\r\n");
      00321D BF 00 E7         [24] 1998 	cjne	r7,#0x00,00365$
      003220 0E               [12] 1999 	inc	r6
      003221 80 E4            [24] 2000 	sjmp	00365$
      003223                       2001 00261$:
                                   2002 ;	calc.c:133: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      003223 E5 08            [12] 2003 	mov	a,_bp
      003225 24 12            [12] 2004 	add	a,#0x12
      003227 F8               [12] 2005 	mov	r0,a
      003228 86 07            [24] 2006 	mov	ar7,@r0
      00322A 08               [12] 2007 	inc	r0
      00322B 86 06            [24] 2008 	mov	ar6,@r0
      00322D 08               [12] 2009 	inc	r0
      00322E 86 05            [24] 2010 	mov	ar5,@r0
      003230 E5 08            [12] 2011 	mov	a,_bp
      003232 24 12            [12] 2012 	add	a,#0x12
      003234 F8               [12] 2013 	mov	r0,a
      003235 74 11            [12] 2014 	mov	a,#0x11
      003237 26               [12] 2015 	add	a,@r0
      003238 FA               [12] 2016 	mov	r2,a
      003239 74 40            [12] 2017 	mov	a,#0x40
      00323B 08               [12] 2018 	inc	r0
      00323C 36               [12] 2019 	addc	a,@r0
      00323D FB               [12] 2020 	mov	r3,a
      00323E 08               [12] 2021 	inc	r0
      00323F 86 04            [24] 2022 	mov	ar4,@r0
      003241 8A 82            [24] 2023 	mov	dpl,r2
      003243 8B 83            [24] 2024 	mov	dph,r3
      003245 8C F0            [24] 2025 	mov	b,r4
      003247 12 65 2D         [24] 2026 	lcall	__gptrget
      00324A FA               [12] 2027 	mov	r2,a
      00324B A3               [24] 2028 	inc	dptr
      00324C 12 65 2D         [24] 2029 	lcall	__gptrget
      00324F FB               [12] 2030 	mov	r3,a
      003250 A3               [24] 2031 	inc	dptr
      003251 12 65 2D         [24] 2032 	lcall	__gptrget
      003254 FC               [12] 2033 	mov	r4,a
      003255 C0 07            [24] 2034 	push	ar7
      003257 C0 06            [24] 2035 	push	ar6
      003259 C0 05            [24] 2036 	push	ar5
      00325B 74 37            [12] 2037 	mov	a,#_dump_peek
      00325D C0 E0            [24] 2038 	push	acc
      00325F 74 2E            [12] 2039 	mov	a,#(_dump_peek >> 8)
      003261 C0 E0            [24] 2040 	push	acc
      003263 8A 82            [24] 2041 	mov	dpl,r2
      003265 8B 83            [24] 2042 	mov	dph,r3
      003267 8C F0            [24] 2043 	mov	b,r4
      003269 12 28 EC         [24] 2044 	lcall	_stack_iter_peek
      00326C AB 82            [24] 2045 	mov	r3,dpl
      00326E AC 83            [24] 2046 	mov	r4,dph
      003270 E5 81            [12] 2047 	mov	a,sp
      003272 24 FB            [12] 2048 	add	a,#0xfb
      003274 F5 81            [12] 2049 	mov	sp,a
      003276 EB               [12] 2050 	mov	a,r3
      003277 4C               [12] 2051 	orl	a,r4
      003278 60 03            [24] 2052 	jz	01271$
      00327A 02 51 F0         [24] 2053 	ljmp	00249$
      00327D                       2054 01271$:
      00327D 7F B1            [12] 2055 	mov	r7,#___str_1
      00327F 7E 7D            [12] 2056 	mov	r6,#(___str_1 >> 8)
      003281 7D 80            [12] 2057 	mov	r5,#0x80
                                   2058 ;	calc.c:51: return;
      003283                       2059 00368$:
                                   2060 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003283 8F 82            [24] 2061 	mov	dpl,r7
      003285 8E 83            [24] 2062 	mov	dph,r6
      003287 8D F0            [24] 2063 	mov	b,r5
      003289 12 65 2D         [24] 2064 	lcall	__gptrget
      00328C FC               [12] 2065 	mov	r4,a
      00328D 70 03            [24] 2066 	jnz	01272$
      00328F 02 51 F0         [24] 2067 	ljmp	00249$
      003292                       2068 01272$:
      003292 7B 00            [12] 2069 	mov	r3,#0x00
      003294 8C 82            [24] 2070 	mov	dpl,r4
      003296 8B 83            [24] 2071 	mov	dph,r3
      003298 12 29 C0         [24] 2072 	lcall	_putchar
      00329B 0F               [12] 2073 	inc	r7
                                   2074 ;	calc.c:136: case 'v':
      00329C BF 00 E4         [24] 2075 	cjne	r7,#0x00,00368$
      00329F 0E               [12] 2076 	inc	r6
      0032A0 80 E1            [24] 2077 	sjmp	00368$
      0032A2                       2078 00109$:
                                   2079 ;	calc.c:137: printstr("\r\n");
      0032A2 7F AE            [12] 2080 	mov	r7,#___str_0
      0032A4 7E 7D            [12] 2081 	mov	r6,#(___str_0 >> 8)
      0032A6 7D 80            [12] 2082 	mov	r5,#0x80
                                   2083 ;	calc.c:51: return;
      0032A8                       2084 00371$:
                                   2085 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0032A8 8F 82            [24] 2086 	mov	dpl,r7
      0032AA 8E 83            [24] 2087 	mov	dph,r6
      0032AC 8D F0            [24] 2088 	mov	b,r5
      0032AE 12 65 2D         [24] 2089 	lcall	__gptrget
      0032B1 FC               [12] 2090 	mov	r4,a
      0032B2 60 10            [24] 2091 	jz	00265$
      0032B4 7B 00            [12] 2092 	mov	r3,#0x00
      0032B6 8C 82            [24] 2093 	mov	dpl,r4
      0032B8 8B 83            [24] 2094 	mov	dph,r3
      0032BA 12 29 C0         [24] 2095 	lcall	_putchar
      0032BD 0F               [12] 2096 	inc	r7
                                   2097 ;	calc.c:137: printstr("\r\n");
      0032BE BF 00 E7         [24] 2098 	cjne	r7,#0x00,00371$
      0032C1 0E               [12] 2099 	inc	r6
      0032C2 80 E4            [24] 2100 	sjmp	00371$
      0032C4                       2101 00265$:
                                   2102 ;	calc.c:138: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0032C4 E5 08            [12] 2103 	mov	a,_bp
      0032C6 24 15            [12] 2104 	add	a,#0x15
      0032C8 FF               [12] 2105 	mov	r7,a
      0032C9 7E 00            [12] 2106 	mov	r6,#0x00
      0032CB 7D 40            [12] 2107 	mov	r5,#0x40
      0032CD E5 08            [12] 2108 	mov	a,_bp
      0032CF 24 12            [12] 2109 	add	a,#0x12
      0032D1 F8               [12] 2110 	mov	r0,a
      0032D2 74 11            [12] 2111 	mov	a,#0x11
      0032D4 26               [12] 2112 	add	a,@r0
      0032D5 FA               [12] 2113 	mov	r2,a
      0032D6 ED               [12] 2114 	mov	a,r5
      0032D7 08               [12] 2115 	inc	r0
      0032D8 36               [12] 2116 	addc	a,@r0
      0032D9 FB               [12] 2117 	mov	r3,a
      0032DA 08               [12] 2118 	inc	r0
      0032DB 86 04            [24] 2119 	mov	ar4,@r0
      0032DD 8A 82            [24] 2120 	mov	dpl,r2
      0032DF 8B 83            [24] 2121 	mov	dph,r3
      0032E1 8C F0            [24] 2122 	mov	b,r4
      0032E3 12 65 2D         [24] 2123 	lcall	__gptrget
      0032E6 FA               [12] 2124 	mov	r2,a
      0032E7 A3               [24] 2125 	inc	dptr
      0032E8 12 65 2D         [24] 2126 	lcall	__gptrget
      0032EB FB               [12] 2127 	mov	r3,a
      0032EC A3               [24] 2128 	inc	dptr
      0032ED 12 65 2D         [24] 2129 	lcall	__gptrget
      0032F0 FC               [12] 2130 	mov	r4,a
      0032F1 C0 07            [24] 2131 	push	ar7
      0032F3 C0 06            [24] 2132 	push	ar6
      0032F5 C0 05            [24] 2133 	push	ar5
      0032F7 8A 82            [24] 2134 	mov	dpl,r2
      0032F9 8B 83            [24] 2135 	mov	dph,r3
      0032FB 8C F0            [24] 2136 	mov	b,r4
      0032FD 12 27 7F         [24] 2137 	lcall	_stack_pop
      003300 AB 82            [24] 2138 	mov	r3,dpl
      003302 AC 83            [24] 2139 	mov	r4,dph
      003304 15 81            [12] 2140 	dec	sp
      003306 15 81            [12] 2141 	dec	sp
      003308 15 81            [12] 2142 	dec	sp
      00330A EB               [12] 2143 	mov	a,r3
      00330B 4C               [12] 2144 	orl	a,r4
      00330C 70 25            [24] 2145 	jnz	00111$
      00330E 7F B1            [12] 2146 	mov	r7,#___str_1
      003310 7E 7D            [12] 2147 	mov	r6,#(___str_1 >> 8)
      003312 7D 80            [12] 2148 	mov	r5,#0x80
                                   2149 ;	calc.c:51: return;
      003314                       2150 00374$:
                                   2151 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003314 8F 82            [24] 2152 	mov	dpl,r7
      003316 8E 83            [24] 2153 	mov	dph,r6
      003318 8D F0            [24] 2154 	mov	b,r5
      00331A 12 65 2D         [24] 2155 	lcall	__gptrget
      00331D FC               [12] 2156 	mov	r4,a
      00331E 70 03            [24] 2157 	jnz	01277$
      003320 02 51 F0         [24] 2158 	ljmp	00249$
      003323                       2159 01277$:
      003323 7B 00            [12] 2160 	mov	r3,#0x00
      003325 8C 82            [24] 2161 	mov	dpl,r4
      003327 8B 83            [24] 2162 	mov	dph,r3
      003329 12 29 C0         [24] 2163 	lcall	_putchar
      00332C 0F               [12] 2164 	inc	r7
                                   2165 ;	calc.c:138: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      00332D BF 00 E4         [24] 2166 	cjne	r7,#0x00,00374$
      003330 0E               [12] 2167 	inc	r6
      003331 80 E1            [24] 2168 	sjmp	00374$
      003333                       2169 00111$:
                                   2170 ;	calc.c:140: printstr("VT ");
      003333 7F E2            [12] 2171 	mov	r7,#___str_7
      003335 7E 7D            [12] 2172 	mov	r6,#(___str_7 >> 8)
      003337 7D 80            [12] 2173 	mov	r5,#0x80
                                   2174 ;	calc.c:51: return;
      003339                       2175 00377$:
                                   2176 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003339 8F 82            [24] 2177 	mov	dpl,r7
      00333B 8E 83            [24] 2178 	mov	dph,r6
      00333D 8D F0            [24] 2179 	mov	b,r5
      00333F 12 65 2D         [24] 2180 	lcall	__gptrget
      003342 FC               [12] 2181 	mov	r4,a
      003343 60 10            [24] 2182 	jz	00269$
      003345 7B 00            [12] 2183 	mov	r3,#0x00
      003347 8C 82            [24] 2184 	mov	dpl,r4
      003349 8B 83            [24] 2185 	mov	dph,r3
      00334B 12 29 C0         [24] 2186 	lcall	_putchar
      00334E 0F               [12] 2187 	inc	r7
                                   2188 ;	calc.c:140: printstr("VT ");
      00334F BF 00 E7         [24] 2189 	cjne	r7,#0x00,00377$
      003352 0E               [12] 2190 	inc	r6
      003353 80 E4            [24] 2191 	sjmp	00377$
      003355                       2192 00269$:
                                   2193 ;	calc.c:141: printf("% 11ld / ", d0);
      003355 E5 08            [12] 2194 	mov	a,_bp
      003357 24 15            [12] 2195 	add	a,#0x15
      003359 F8               [12] 2196 	mov	r0,a
      00335A E6               [12] 2197 	mov	a,@r0
      00335B C0 E0            [24] 2198 	push	acc
      00335D 08               [12] 2199 	inc	r0
      00335E E6               [12] 2200 	mov	a,@r0
      00335F C0 E0            [24] 2201 	push	acc
      003361 08               [12] 2202 	inc	r0
      003362 E6               [12] 2203 	mov	a,@r0
      003363 C0 E0            [24] 2204 	push	acc
      003365 08               [12] 2205 	inc	r0
      003366 E6               [12] 2206 	mov	a,@r0
      003367 C0 E0            [24] 2207 	push	acc
      003369 74 C7            [12] 2208 	mov	a,#___str_3
      00336B C0 E0            [24] 2209 	push	acc
      00336D 74 7D            [12] 2210 	mov	a,#(___str_3 >> 8)
      00336F C0 E0            [24] 2211 	push	acc
      003371 74 80            [12] 2212 	mov	a,#0x80
      003373 C0 E0            [24] 2213 	push	acc
      003375 12 64 F4         [24] 2214 	lcall	_printf
      003378 E5 81            [12] 2215 	mov	a,sp
      00337A 24 F9            [12] 2216 	add	a,#0xf9
      00337C F5 81            [12] 2217 	mov	sp,a
                                   2218 ;	calc.c:142: printf("%08lx / ", d0);
      00337E E5 08            [12] 2219 	mov	a,_bp
      003380 24 15            [12] 2220 	add	a,#0x15
      003382 F8               [12] 2221 	mov	r0,a
      003383 E6               [12] 2222 	mov	a,@r0
      003384 C0 E0            [24] 2223 	push	acc
      003386 08               [12] 2224 	inc	r0
      003387 E6               [12] 2225 	mov	a,@r0
      003388 C0 E0            [24] 2226 	push	acc
      00338A 08               [12] 2227 	inc	r0
      00338B E6               [12] 2228 	mov	a,@r0
      00338C C0 E0            [24] 2229 	push	acc
      00338E 08               [12] 2230 	inc	r0
      00338F E6               [12] 2231 	mov	a,@r0
      003390 C0 E0            [24] 2232 	push	acc
      003392 74 D1            [12] 2233 	mov	a,#___str_4
      003394 C0 E0            [24] 2234 	push	acc
      003396 74 7D            [12] 2235 	mov	a,#(___str_4 >> 8)
      003398 C0 E0            [24] 2236 	push	acc
      00339A 74 80            [12] 2237 	mov	a,#0x80
      00339C C0 E0            [24] 2238 	push	acc
      00339E 12 64 F4         [24] 2239 	lcall	_printf
      0033A1 E5 81            [12] 2240 	mov	a,sp
      0033A3 24 F9            [12] 2241 	add	a,#0xf9
      0033A5 F5 81            [12] 2242 	mov	sp,a
                                   2243 ;	calc.c:143: printbin(d0);
      0033A7 E5 08            [12] 2244 	mov	a,_bp
      0033A9 24 15            [12] 2245 	add	a,#0x15
      0033AB F8               [12] 2246 	mov	r0,a
      0033AC 86 07            [24] 2247 	mov	ar7,@r0
      0033AE 08               [12] 2248 	inc	r0
      0033AF 86 06            [24] 2249 	mov	ar6,@r0
      0033B1 08               [12] 2250 	inc	r0
      0033B2 86 05            [24] 2251 	mov	ar5,@r0
      0033B4 08               [12] 2252 	inc	r0
      0033B5 86 04            [24] 2253 	mov	ar4,@r0
      0033B7 8C 02            [24] 2254 	mov	ar2,r4
                                   2255 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0033B9 E5 08            [12] 2256 	mov	a,_bp
      0033BB 24 1D            [12] 2257 	add	a,#0x1d
      0033BD F8               [12] 2258 	mov	r0,a
      0033BE E4               [12] 2259 	clr	a
      0033BF F6               [12] 2260 	mov	@r0,a
      0033C0 08               [12] 2261 	inc	r0
      0033C1 F6               [12] 2262 	mov	@r0,a
      0033C2 08               [12] 2263 	inc	r0
      0033C3 F6               [12] 2264 	mov	@r0,a
      0033C4 08               [12] 2265 	inc	r0
      0033C5 76 80            [12] 2266 	mov	@r0,#0x80
      0033C7                       2267 00379$:
                                   2268 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0033C7 E5 08            [12] 2269 	mov	a,_bp
      0033C9 24 07            [12] 2270 	add	a,#0x07
      0033CB F8               [12] 2271 	mov	r0,a
      0033CC A6 07            [24] 2272 	mov	@r0,ar7
      0033CE 08               [12] 2273 	inc	r0
      0033CF A6 06            [24] 2274 	mov	@r0,ar6
      0033D1 08               [12] 2275 	inc	r0
      0033D2 A6 05            [24] 2276 	mov	@r0,ar5
      0033D4 08               [12] 2277 	inc	r0
      0033D5 A6 02            [24] 2278 	mov	@r0,ar2
      0033D7 E5 08            [12] 2279 	mov	a,_bp
      0033D9 24 07            [12] 2280 	add	a,#0x07
      0033DB F8               [12] 2281 	mov	r0,a
      0033DC E5 08            [12] 2282 	mov	a,_bp
      0033DE 24 1D            [12] 2283 	add	a,#0x1d
      0033E0 F9               [12] 2284 	mov	r1,a
      0033E1 E7               [12] 2285 	mov	a,@r1
      0033E2 56               [12] 2286 	anl	a,@r0
      0033E3 F6               [12] 2287 	mov	@r0,a
      0033E4 09               [12] 2288 	inc	r1
      0033E5 E7               [12] 2289 	mov	a,@r1
      0033E6 08               [12] 2290 	inc	r0
      0033E7 56               [12] 2291 	anl	a,@r0
      0033E8 F6               [12] 2292 	mov	@r0,a
      0033E9 09               [12] 2293 	inc	r1
      0033EA E7               [12] 2294 	mov	a,@r1
      0033EB 08               [12] 2295 	inc	r0
      0033EC 56               [12] 2296 	anl	a,@r0
      0033ED F6               [12] 2297 	mov	@r0,a
      0033EE 09               [12] 2298 	inc	r1
      0033EF E7               [12] 2299 	mov	a,@r1
      0033F0 08               [12] 2300 	inc	r0
      0033F1 56               [12] 2301 	anl	a,@r0
      0033F2 F6               [12] 2302 	mov	@r0,a
      0033F3 E5 08            [12] 2303 	mov	a,_bp
      0033F5 24 07            [12] 2304 	add	a,#0x07
      0033F7 F8               [12] 2305 	mov	r0,a
      0033F8 E6               [12] 2306 	mov	a,@r0
      0033F9 08               [12] 2307 	inc	r0
      0033FA 46               [12] 2308 	orl	a,@r0
      0033FB 08               [12] 2309 	inc	r0
      0033FC 46               [12] 2310 	orl	a,@r0
      0033FD 08               [12] 2311 	inc	r0
      0033FE 46               [12] 2312 	orl	a,@r0
      0033FF 60 06            [24] 2313 	jz	00502$
      003401 7B 31            [12] 2314 	mov	r3,#0x31
      003403 7C 00            [12] 2315 	mov	r4,#0x00
      003405 80 04            [24] 2316 	sjmp	00503$
      003407                       2317 00502$:
      003407 7B 30            [12] 2318 	mov	r3,#0x30
      003409 7C 00            [12] 2319 	mov	r4,#0x00
      00340B                       2320 00503$:
      00340B 8B 82            [24] 2321 	mov	dpl,r3
      00340D 8C 83            [24] 2322 	mov	dph,r4
      00340F 12 29 C0         [24] 2323 	lcall	_putchar
                                   2324 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003412 E5 08            [12] 2325 	mov	a,_bp
      003414 24 1D            [12] 2326 	add	a,#0x1d
      003416 F8               [12] 2327 	mov	r0,a
      003417 08               [12] 2328 	inc	r0
      003418 08               [12] 2329 	inc	r0
      003419 08               [12] 2330 	inc	r0
      00341A E6               [12] 2331 	mov	a,@r0
      00341B C3               [12] 2332 	clr	c
      00341C 13               [12] 2333 	rrc	a
      00341D F6               [12] 2334 	mov	@r0,a
      00341E 18               [12] 2335 	dec	r0
      00341F E6               [12] 2336 	mov	a,@r0
      003420 13               [12] 2337 	rrc	a
      003421 F6               [12] 2338 	mov	@r0,a
      003422 18               [12] 2339 	dec	r0
      003423 E6               [12] 2340 	mov	a,@r0
      003424 13               [12] 2341 	rrc	a
      003425 F6               [12] 2342 	mov	@r0,a
      003426 18               [12] 2343 	dec	r0
      003427 E6               [12] 2344 	mov	a,@r0
      003428 13               [12] 2345 	rrc	a
      003429 F6               [12] 2346 	mov	@r0,a
      00342A E5 08            [12] 2347 	mov	a,_bp
      00342C 24 1D            [12] 2348 	add	a,#0x1d
      00342E F8               [12] 2349 	mov	r0,a
      00342F E6               [12] 2350 	mov	a,@r0
      003430 08               [12] 2351 	inc	r0
      003431 46               [12] 2352 	orl	a,@r0
      003432 08               [12] 2353 	inc	r0
      003433 46               [12] 2354 	orl	a,@r0
      003434 08               [12] 2355 	inc	r0
      003435 46               [12] 2356 	orl	a,@r0
      003436 70 8F            [24] 2357 	jnz	00379$
                                   2358 ;	calc.c:144: printstr("\r\n");
      003438 7F AE            [12] 2359 	mov	r7,#___str_0
      00343A 7E 7D            [12] 2360 	mov	r6,#(___str_0 >> 8)
      00343C 7D 80            [12] 2361 	mov	r5,#0x80
                                   2362 ;	calc.c:51: return;
      00343E                       2363 00382$:
                                   2364 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00343E 8F 82            [24] 2365 	mov	dpl,r7
      003440 8E 83            [24] 2366 	mov	dph,r6
      003442 8D F0            [24] 2367 	mov	b,r5
      003444 12 65 2D         [24] 2368 	lcall	__gptrget
      003447 FC               [12] 2369 	mov	r4,a
      003448 70 03            [24] 2370 	jnz	01283$
      00344A 02 51 F0         [24] 2371 	ljmp	00249$
      00344D                       2372 01283$:
      00344D 7B 00            [12] 2373 	mov	r3,#0x00
      00344F 8C 82            [24] 2374 	mov	dpl,r4
      003451 8B 83            [24] 2375 	mov	dph,r3
      003453 12 29 C0         [24] 2376 	lcall	_putchar
      003456 0F               [12] 2377 	inc	r7
                                   2378 ;	calc.c:147: case 'V':
      003457 BF 00 E4         [24] 2379 	cjne	r7,#0x00,00382$
      00345A 0E               [12] 2380 	inc	r6
      00345B 80 E1            [24] 2381 	sjmp	00382$
      00345D                       2382 00113$:
                                   2383 ;	calc.c:148: printstr("\r\n");
      00345D 7F AE            [12] 2384 	mov	r7,#___str_0
      00345F 7E 7D            [12] 2385 	mov	r6,#(___str_0 >> 8)
      003461 7D 80            [12] 2386 	mov	r5,#0x80
                                   2387 ;	calc.c:51: return;
      003463                       2388 00385$:
                                   2389 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003463 8F 82            [24] 2390 	mov	dpl,r7
      003465 8E 83            [24] 2391 	mov	dph,r6
      003467 8D F0            [24] 2392 	mov	b,r5
      003469 12 65 2D         [24] 2393 	lcall	__gptrget
      00346C FC               [12] 2394 	mov	r4,a
      00346D 60 10            [24] 2395 	jz	00275$
      00346F 7B 00            [12] 2396 	mov	r3,#0x00
      003471 8C 82            [24] 2397 	mov	dpl,r4
      003473 8B 83            [24] 2398 	mov	dph,r3
      003475 12 29 C0         [24] 2399 	lcall	_putchar
      003478 0F               [12] 2400 	inc	r7
                                   2401 ;	calc.c:148: printstr("\r\n");
      003479 BF 00 E7         [24] 2402 	cjne	r7,#0x00,00385$
      00347C 0E               [12] 2403 	inc	r6
      00347D 80 E4            [24] 2404 	sjmp	00385$
      00347F                       2405 00275$:
                                   2406 ;	calc.c:149: (void)dump_pop(_ctx, delta);
      00347F E5 08            [12] 2407 	mov	a,_bp
      003481 24 FB            [12] 2408 	add	a,#0xfb
      003483 F8               [12] 2409 	mov	r0,a
      003484 E6               [12] 2410 	mov	a,@r0
      003485 C0 E0            [24] 2411 	push	acc
      003487 08               [12] 2412 	inc	r0
      003488 E6               [12] 2413 	mov	a,@r0
      003489 C0 E0            [24] 2414 	push	acc
      00348B 08               [12] 2415 	inc	r0
      00348C E6               [12] 2416 	mov	a,@r0
      00348D C0 E0            [24] 2417 	push	acc
      00348F A8 08            [24] 2418 	mov	r0,_bp
      003491 08               [12] 2419 	inc	r0
      003492 86 82            [24] 2420 	mov	dpl,@r0
      003494 08               [12] 2421 	inc	r0
      003495 86 83            [24] 2422 	mov	dph,@r0
      003497 08               [12] 2423 	inc	r0
      003498 86 F0            [24] 2424 	mov	b,@r0
      00349A 12 2B 53         [24] 2425 	lcall	_dump_pop
      00349D 15 81            [12] 2426 	dec	sp
      00349F 15 81            [12] 2427 	dec	sp
      0034A1 15 81            [12] 2428 	dec	sp
                                   2429 ;	calc.c:150: break;
      0034A3 02 51 F0         [24] 2430 	ljmp	00249$
                                   2431 ;	calc.c:151: case 'x':
      0034A6                       2432 00114$:
                                   2433 ;	calc.c:152: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0034A6 E5 08            [12] 2434 	mov	a,_bp
      0034A8 24 15            [12] 2435 	add	a,#0x15
      0034AA FF               [12] 2436 	mov	r7,a
      0034AB 7E 00            [12] 2437 	mov	r6,#0x00
      0034AD 7D 40            [12] 2438 	mov	r5,#0x40
      0034AF E5 08            [12] 2439 	mov	a,_bp
      0034B1 24 12            [12] 2440 	add	a,#0x12
      0034B3 F8               [12] 2441 	mov	r0,a
      0034B4 E5 08            [12] 2442 	mov	a,_bp
      0034B6 24 07            [12] 2443 	add	a,#0x07
      0034B8 F9               [12] 2444 	mov	r1,a
      0034B9 74 11            [12] 2445 	mov	a,#0x11
      0034BB 26               [12] 2446 	add	a,@r0
      0034BC F7               [12] 2447 	mov	@r1,a
      0034BD 74 40            [12] 2448 	mov	a,#0x40
      0034BF 08               [12] 2449 	inc	r0
      0034C0 36               [12] 2450 	addc	a,@r0
      0034C1 09               [12] 2451 	inc	r1
      0034C2 F7               [12] 2452 	mov	@r1,a
      0034C3 08               [12] 2453 	inc	r0
      0034C4 09               [12] 2454 	inc	r1
      0034C5 E6               [12] 2455 	mov	a,@r0
      0034C6 F7               [12] 2456 	mov	@r1,a
      0034C7 E5 08            [12] 2457 	mov	a,_bp
      0034C9 24 07            [12] 2458 	add	a,#0x07
      0034CB F8               [12] 2459 	mov	r0,a
      0034CC 86 82            [24] 2460 	mov	dpl,@r0
      0034CE 08               [12] 2461 	inc	r0
      0034CF 86 83            [24] 2462 	mov	dph,@r0
      0034D1 08               [12] 2463 	inc	r0
      0034D2 86 F0            [24] 2464 	mov	b,@r0
      0034D4 12 65 2D         [24] 2465 	lcall	__gptrget
      0034D7 FA               [12] 2466 	mov	r2,a
      0034D8 A3               [24] 2467 	inc	dptr
      0034D9 12 65 2D         [24] 2468 	lcall	__gptrget
      0034DC FB               [12] 2469 	mov	r3,a
      0034DD A3               [24] 2470 	inc	dptr
      0034DE 12 65 2D         [24] 2471 	lcall	__gptrget
      0034E1 FC               [12] 2472 	mov	r4,a
      0034E2 C0 07            [24] 2473 	push	ar7
      0034E4 C0 06            [24] 2474 	push	ar6
      0034E6 C0 05            [24] 2475 	push	ar5
      0034E8 8A 82            [24] 2476 	mov	dpl,r2
      0034EA 8B 83            [24] 2477 	mov	dph,r3
      0034EC 8C F0            [24] 2478 	mov	b,r4
      0034EE 12 27 7F         [24] 2479 	lcall	_stack_pop
      0034F1 AB 82            [24] 2480 	mov	r3,dpl
      0034F3 AC 83            [24] 2481 	mov	r4,dph
      0034F5 15 81            [12] 2482 	dec	sp
      0034F7 15 81            [12] 2483 	dec	sp
      0034F9 15 81            [12] 2484 	dec	sp
      0034FB EB               [12] 2485 	mov	a,r3
      0034FC 4C               [12] 2486 	orl	a,r4
      0034FD 70 25            [24] 2487 	jnz	00119$
      0034FF 7F E6            [12] 2488 	mov	r7,#___str_8
      003501 7E 7D            [12] 2489 	mov	r6,#(___str_8 >> 8)
      003503 7D 80            [12] 2490 	mov	r5,#0x80
                                   2491 ;	calc.c:51: return;
      003505                       2492 00388$:
                                   2493 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003505 8F 82            [24] 2494 	mov	dpl,r7
      003507 8E 83            [24] 2495 	mov	dph,r6
      003509 8D F0            [24] 2496 	mov	b,r5
      00350B 12 65 2D         [24] 2497 	lcall	__gptrget
      00350E FC               [12] 2498 	mov	r4,a
      00350F 70 03            [24] 2499 	jnz	01288$
      003511 02 51 F0         [24] 2500 	ljmp	00249$
      003514                       2501 01288$:
      003514 7B 00            [12] 2502 	mov	r3,#0x00
      003516 8C 82            [24] 2503 	mov	dpl,r4
      003518 8B 83            [24] 2504 	mov	dph,r3
      00351A 12 29 C0         [24] 2505 	lcall	_putchar
      00351D 0F               [12] 2506 	inc	r7
                                   2507 ;	calc.c:152: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00351E BF 00 E4         [24] 2508 	cjne	r7,#0x00,00388$
      003521 0E               [12] 2509 	inc	r6
      003522 80 E1            [24] 2510 	sjmp	00388$
      003524                       2511 00119$:
                                   2512 ;	calc.c:153: else if (!stack_pop(ctx->ps, &d1)) {
      003524 E5 08            [12] 2513 	mov	a,_bp
      003526 24 19            [12] 2514 	add	a,#0x19
      003528 FF               [12] 2515 	mov	r7,a
      003529 7E 00            [12] 2516 	mov	r6,#0x00
      00352B 7D 40            [12] 2517 	mov	r5,#0x40
      00352D E5 08            [12] 2518 	mov	a,_bp
      00352F 24 07            [12] 2519 	add	a,#0x07
      003531 F8               [12] 2520 	mov	r0,a
      003532 86 82            [24] 2521 	mov	dpl,@r0
      003534 08               [12] 2522 	inc	r0
      003535 86 83            [24] 2523 	mov	dph,@r0
      003537 08               [12] 2524 	inc	r0
      003538 86 F0            [24] 2525 	mov	b,@r0
      00353A 12 65 2D         [24] 2526 	lcall	__gptrget
      00353D FA               [12] 2527 	mov	r2,a
      00353E A3               [24] 2528 	inc	dptr
      00353F 12 65 2D         [24] 2529 	lcall	__gptrget
      003542 FB               [12] 2530 	mov	r3,a
      003543 A3               [24] 2531 	inc	dptr
      003544 12 65 2D         [24] 2532 	lcall	__gptrget
      003547 FC               [12] 2533 	mov	r4,a
      003548 C0 07            [24] 2534 	push	ar7
      00354A C0 06            [24] 2535 	push	ar6
      00354C C0 05            [24] 2536 	push	ar5
      00354E 8A 82            [24] 2537 	mov	dpl,r2
      003550 8B 83            [24] 2538 	mov	dph,r3
      003552 8C F0            [24] 2539 	mov	b,r4
      003554 12 27 7F         [24] 2540 	lcall	_stack_pop
      003557 AB 82            [24] 2541 	mov	r3,dpl
      003559 AC 83            [24] 2542 	mov	r4,dph
      00355B 15 81            [12] 2543 	dec	sp
      00355D 15 81            [12] 2544 	dec	sp
      00355F 15 81            [12] 2545 	dec	sp
      003561 EB               [12] 2546 	mov	a,r3
      003562 4C               [12] 2547 	orl	a,r4
      003563 70 63            [24] 2548 	jnz	00116$
                                   2549 ;	calc.c:154: (void)stack_push(ctx->ps, d0);
      003565 E5 08            [12] 2550 	mov	a,_bp
      003567 24 07            [12] 2551 	add	a,#0x07
      003569 F8               [12] 2552 	mov	r0,a
      00356A 86 82            [24] 2553 	mov	dpl,@r0
      00356C 08               [12] 2554 	inc	r0
      00356D 86 83            [24] 2555 	mov	dph,@r0
      00356F 08               [12] 2556 	inc	r0
      003570 86 F0            [24] 2557 	mov	b,@r0
      003572 12 65 2D         [24] 2558 	lcall	__gptrget
      003575 FA               [12] 2559 	mov	r2,a
      003576 A3               [24] 2560 	inc	dptr
      003577 12 65 2D         [24] 2561 	lcall	__gptrget
      00357A FB               [12] 2562 	mov	r3,a
      00357B A3               [24] 2563 	inc	dptr
      00357C 12 65 2D         [24] 2564 	lcall	__gptrget
      00357F FC               [12] 2565 	mov	r4,a
      003580 E5 08            [12] 2566 	mov	a,_bp
      003582 24 15            [12] 2567 	add	a,#0x15
      003584 F8               [12] 2568 	mov	r0,a
      003585 E6               [12] 2569 	mov	a,@r0
      003586 C0 E0            [24] 2570 	push	acc
      003588 08               [12] 2571 	inc	r0
      003589 E6               [12] 2572 	mov	a,@r0
      00358A C0 E0            [24] 2573 	push	acc
      00358C 08               [12] 2574 	inc	r0
      00358D E6               [12] 2575 	mov	a,@r0
      00358E C0 E0            [24] 2576 	push	acc
      003590 08               [12] 2577 	inc	r0
      003591 E6               [12] 2578 	mov	a,@r0
      003592 C0 E0            [24] 2579 	push	acc
      003594 8A 82            [24] 2580 	mov	dpl,r2
      003596 8B 83            [24] 2581 	mov	dph,r3
      003598 8C F0            [24] 2582 	mov	b,r4
      00359A 12 26 B5         [24] 2583 	lcall	_stack_push
      00359D E5 81            [12] 2584 	mov	a,sp
      00359F 24 FC            [12] 2585 	add	a,#0xfc
      0035A1 F5 81            [12] 2586 	mov	sp,a
                                   2587 ;	calc.c:155: printstr("\r\nstack underflow\r\n");
      0035A3 7F E6            [12] 2588 	mov	r7,#___str_8
      0035A5 7E 7D            [12] 2589 	mov	r6,#(___str_8 >> 8)
      0035A7 7D 80            [12] 2590 	mov	r5,#0x80
                                   2591 ;	calc.c:51: return;
      0035A9                       2592 00391$:
                                   2593 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0035A9 8F 82            [24] 2594 	mov	dpl,r7
      0035AB 8E 83            [24] 2595 	mov	dph,r6
      0035AD 8D F0            [24] 2596 	mov	b,r5
      0035AF 12 65 2D         [24] 2597 	lcall	__gptrget
      0035B2 FC               [12] 2598 	mov	r4,a
      0035B3 70 03            [24] 2599 	jnz	01291$
      0035B5 02 51 F0         [24] 2600 	ljmp	00249$
      0035B8                       2601 01291$:
      0035B8 7B 00            [12] 2602 	mov	r3,#0x00
      0035BA 8C 82            [24] 2603 	mov	dpl,r4
      0035BC 8B 83            [24] 2604 	mov	dph,r3
      0035BE 12 29 C0         [24] 2605 	lcall	_putchar
      0035C1 0F               [12] 2606 	inc	r7
                                   2607 ;	calc.c:155: printstr("\r\nstack underflow\r\n");
      0035C2 BF 00 E4         [24] 2608 	cjne	r7,#0x00,00391$
      0035C5 0E               [12] 2609 	inc	r6
      0035C6 80 E1            [24] 2610 	sjmp	00391$
      0035C8                       2611 00116$:
                                   2612 ;	calc.c:157: (void)stack_push(ctx->ps, d0);
      0035C8 E5 08            [12] 2613 	mov	a,_bp
      0035CA 24 07            [12] 2614 	add	a,#0x07
      0035CC F8               [12] 2615 	mov	r0,a
      0035CD 86 82            [24] 2616 	mov	dpl,@r0
      0035CF 08               [12] 2617 	inc	r0
      0035D0 86 83            [24] 2618 	mov	dph,@r0
      0035D2 08               [12] 2619 	inc	r0
      0035D3 86 F0            [24] 2620 	mov	b,@r0
      0035D5 12 65 2D         [24] 2621 	lcall	__gptrget
      0035D8 FA               [12] 2622 	mov	r2,a
      0035D9 A3               [24] 2623 	inc	dptr
      0035DA 12 65 2D         [24] 2624 	lcall	__gptrget
      0035DD FB               [12] 2625 	mov	r3,a
      0035DE A3               [24] 2626 	inc	dptr
      0035DF 12 65 2D         [24] 2627 	lcall	__gptrget
      0035E2 FC               [12] 2628 	mov	r4,a
      0035E3 E5 08            [12] 2629 	mov	a,_bp
      0035E5 24 15            [12] 2630 	add	a,#0x15
      0035E7 F8               [12] 2631 	mov	r0,a
      0035E8 E6               [12] 2632 	mov	a,@r0
      0035E9 C0 E0            [24] 2633 	push	acc
      0035EB 08               [12] 2634 	inc	r0
      0035EC E6               [12] 2635 	mov	a,@r0
      0035ED C0 E0            [24] 2636 	push	acc
      0035EF 08               [12] 2637 	inc	r0
      0035F0 E6               [12] 2638 	mov	a,@r0
      0035F1 C0 E0            [24] 2639 	push	acc
      0035F3 08               [12] 2640 	inc	r0
      0035F4 E6               [12] 2641 	mov	a,@r0
      0035F5 C0 E0            [24] 2642 	push	acc
      0035F7 8A 82            [24] 2643 	mov	dpl,r2
      0035F9 8B 83            [24] 2644 	mov	dph,r3
      0035FB 8C F0            [24] 2645 	mov	b,r4
      0035FD 12 26 B5         [24] 2646 	lcall	_stack_push
      003600 E5 81            [12] 2647 	mov	a,sp
      003602 24 FC            [12] 2648 	add	a,#0xfc
      003604 F5 81            [12] 2649 	mov	sp,a
                                   2650 ;	calc.c:158: (void)stack_push(ctx->ps, d1);
      003606 E5 08            [12] 2651 	mov	a,_bp
      003608 24 07            [12] 2652 	add	a,#0x07
      00360A F8               [12] 2653 	mov	r0,a
      00360B 86 82            [24] 2654 	mov	dpl,@r0
      00360D 08               [12] 2655 	inc	r0
      00360E 86 83            [24] 2656 	mov	dph,@r0
      003610 08               [12] 2657 	inc	r0
      003611 86 F0            [24] 2658 	mov	b,@r0
      003613 12 65 2D         [24] 2659 	lcall	__gptrget
      003616 FA               [12] 2660 	mov	r2,a
      003617 A3               [24] 2661 	inc	dptr
      003618 12 65 2D         [24] 2662 	lcall	__gptrget
      00361B FB               [12] 2663 	mov	r3,a
      00361C A3               [24] 2664 	inc	dptr
      00361D 12 65 2D         [24] 2665 	lcall	__gptrget
      003620 FC               [12] 2666 	mov	r4,a
      003621 E5 08            [12] 2667 	mov	a,_bp
      003623 24 19            [12] 2668 	add	a,#0x19
      003625 F8               [12] 2669 	mov	r0,a
      003626 E6               [12] 2670 	mov	a,@r0
      003627 C0 E0            [24] 2671 	push	acc
      003629 08               [12] 2672 	inc	r0
      00362A E6               [12] 2673 	mov	a,@r0
      00362B C0 E0            [24] 2674 	push	acc
      00362D 08               [12] 2675 	inc	r0
      00362E E6               [12] 2676 	mov	a,@r0
      00362F C0 E0            [24] 2677 	push	acc
      003631 08               [12] 2678 	inc	r0
      003632 E6               [12] 2679 	mov	a,@r0
      003633 C0 E0            [24] 2680 	push	acc
      003635 8A 82            [24] 2681 	mov	dpl,r2
      003637 8B 83            [24] 2682 	mov	dph,r3
      003639 8C F0            [24] 2683 	mov	b,r4
      00363B 12 26 B5         [24] 2684 	lcall	_stack_push
      00363E E5 81            [12] 2685 	mov	a,sp
      003640 24 FC            [12] 2686 	add	a,#0xfc
      003642 F5 81            [12] 2687 	mov	sp,a
                                   2688 ;	calc.c:160: break;
      003644 02 51 F0         [24] 2689 	ljmp	00249$
                                   2690 ;	calc.c:161: case 'm':
      003647                       2691 00121$:
                                   2692 ;	calc.c:162: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003647 E5 08            [12] 2693 	mov	a,_bp
      003649 24 15            [12] 2694 	add	a,#0x15
      00364B FF               [12] 2695 	mov	r7,a
      00364C 7E 00            [12] 2696 	mov	r6,#0x00
      00364E 7D 40            [12] 2697 	mov	r5,#0x40
      003650 E5 08            [12] 2698 	mov	a,_bp
      003652 24 12            [12] 2699 	add	a,#0x12
      003654 F8               [12] 2700 	mov	r0,a
      003655 E5 08            [12] 2701 	mov	a,_bp
      003657 24 07            [12] 2702 	add	a,#0x07
      003659 F9               [12] 2703 	mov	r1,a
      00365A 74 11            [12] 2704 	mov	a,#0x11
      00365C 26               [12] 2705 	add	a,@r0
      00365D F7               [12] 2706 	mov	@r1,a
      00365E 74 40            [12] 2707 	mov	a,#0x40
      003660 08               [12] 2708 	inc	r0
      003661 36               [12] 2709 	addc	a,@r0
      003662 09               [12] 2710 	inc	r1
      003663 F7               [12] 2711 	mov	@r1,a
      003664 08               [12] 2712 	inc	r0
      003665 09               [12] 2713 	inc	r1
      003666 E6               [12] 2714 	mov	a,@r0
      003667 F7               [12] 2715 	mov	@r1,a
      003668 E5 08            [12] 2716 	mov	a,_bp
      00366A 24 07            [12] 2717 	add	a,#0x07
      00366C F8               [12] 2718 	mov	r0,a
      00366D 86 82            [24] 2719 	mov	dpl,@r0
      00366F 08               [12] 2720 	inc	r0
      003670 86 83            [24] 2721 	mov	dph,@r0
      003672 08               [12] 2722 	inc	r0
      003673 86 F0            [24] 2723 	mov	b,@r0
      003675 12 65 2D         [24] 2724 	lcall	__gptrget
      003678 FA               [12] 2725 	mov	r2,a
      003679 A3               [24] 2726 	inc	dptr
      00367A 12 65 2D         [24] 2727 	lcall	__gptrget
      00367D FB               [12] 2728 	mov	r3,a
      00367E A3               [24] 2729 	inc	dptr
      00367F 12 65 2D         [24] 2730 	lcall	__gptrget
      003682 FC               [12] 2731 	mov	r4,a
      003683 C0 07            [24] 2732 	push	ar7
      003685 C0 06            [24] 2733 	push	ar6
      003687 C0 05            [24] 2734 	push	ar5
      003689 8A 82            [24] 2735 	mov	dpl,r2
      00368B 8B 83            [24] 2736 	mov	dph,r3
      00368D 8C F0            [24] 2737 	mov	b,r4
      00368F 12 27 7F         [24] 2738 	lcall	_stack_pop
      003692 AB 82            [24] 2739 	mov	r3,dpl
      003694 AC 83            [24] 2740 	mov	r4,dph
      003696 15 81            [12] 2741 	dec	sp
      003698 15 81            [12] 2742 	dec	sp
      00369A 15 81            [12] 2743 	dec	sp
      00369C EB               [12] 2744 	mov	a,r3
      00369D 4C               [12] 2745 	orl	a,r4
      00369E 70 25            [24] 2746 	jnz	00125$
      0036A0 7F E6            [12] 2747 	mov	r7,#___str_8
      0036A2 7E 7D            [12] 2748 	mov	r6,#(___str_8 >> 8)
      0036A4 7D 80            [12] 2749 	mov	r5,#0x80
                                   2750 ;	calc.c:51: return;
      0036A6                       2751 00394$:
                                   2752 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0036A6 8F 82            [24] 2753 	mov	dpl,r7
      0036A8 8E 83            [24] 2754 	mov	dph,r6
      0036AA 8D F0            [24] 2755 	mov	b,r5
      0036AC 12 65 2D         [24] 2756 	lcall	__gptrget
      0036AF FC               [12] 2757 	mov	r4,a
      0036B0 70 03            [24] 2758 	jnz	01294$
      0036B2 02 51 F0         [24] 2759 	ljmp	00249$
      0036B5                       2760 01294$:
      0036B5 7B 00            [12] 2761 	mov	r3,#0x00
      0036B7 8C 82            [24] 2762 	mov	dpl,r4
      0036B9 8B 83            [24] 2763 	mov	dph,r3
      0036BB 12 29 C0         [24] 2764 	lcall	_putchar
      0036BE 0F               [12] 2765 	inc	r7
                                   2766 ;	calc.c:162: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0036BF BF 00 E4         [24] 2767 	cjne	r7,#0x00,00394$
      0036C2 0E               [12] 2768 	inc	r6
      0036C3 80 E1            [24] 2769 	sjmp	00394$
      0036C5                       2770 00125$:
                                   2771 ;	calc.c:164: if (!stack_push(ctx->ss, d0)) {
      0036C5 E5 08            [12] 2772 	mov	a,_bp
      0036C7 24 12            [12] 2773 	add	a,#0x12
      0036C9 F8               [12] 2774 	mov	r0,a
      0036CA 74 14            [12] 2775 	mov	a,#0x14
      0036CC 26               [12] 2776 	add	a,@r0
      0036CD FA               [12] 2777 	mov	r2,a
      0036CE 74 40            [12] 2778 	mov	a,#0x40
      0036D0 08               [12] 2779 	inc	r0
      0036D1 36               [12] 2780 	addc	a,@r0
      0036D2 FB               [12] 2781 	mov	r3,a
      0036D3 08               [12] 2782 	inc	r0
      0036D4 86 04            [24] 2783 	mov	ar4,@r0
      0036D6 8A 82            [24] 2784 	mov	dpl,r2
      0036D8 8B 83            [24] 2785 	mov	dph,r3
      0036DA 8C F0            [24] 2786 	mov	b,r4
      0036DC 12 65 2D         [24] 2787 	lcall	__gptrget
      0036DF FA               [12] 2788 	mov	r2,a
      0036E0 A3               [24] 2789 	inc	dptr
      0036E1 12 65 2D         [24] 2790 	lcall	__gptrget
      0036E4 FB               [12] 2791 	mov	r3,a
      0036E5 A3               [24] 2792 	inc	dptr
      0036E6 12 65 2D         [24] 2793 	lcall	__gptrget
      0036E9 FC               [12] 2794 	mov	r4,a
      0036EA E5 08            [12] 2795 	mov	a,_bp
      0036EC 24 15            [12] 2796 	add	a,#0x15
      0036EE F8               [12] 2797 	mov	r0,a
      0036EF E6               [12] 2798 	mov	a,@r0
      0036F0 C0 E0            [24] 2799 	push	acc
      0036F2 08               [12] 2800 	inc	r0
      0036F3 E6               [12] 2801 	mov	a,@r0
      0036F4 C0 E0            [24] 2802 	push	acc
      0036F6 08               [12] 2803 	inc	r0
      0036F7 E6               [12] 2804 	mov	a,@r0
      0036F8 C0 E0            [24] 2805 	push	acc
      0036FA 08               [12] 2806 	inc	r0
      0036FB E6               [12] 2807 	mov	a,@r0
      0036FC C0 E0            [24] 2808 	push	acc
      0036FE 8A 82            [24] 2809 	mov	dpl,r2
      003700 8B 83            [24] 2810 	mov	dph,r3
      003702 8C F0            [24] 2811 	mov	b,r4
      003704 12 26 B5         [24] 2812 	lcall	_stack_push
      003707 AB 82            [24] 2813 	mov	r3,dpl
      003709 AC 83            [24] 2814 	mov	r4,dph
      00370B E5 81            [12] 2815 	mov	a,sp
      00370D 24 FC            [12] 2816 	add	a,#0xfc
      00370F F5 81            [12] 2817 	mov	sp,a
      003711 EB               [12] 2818 	mov	a,r3
      003712 4C               [12] 2819 	orl	a,r4
      003713 60 03            [24] 2820 	jz	01296$
      003715 02 51 F0         [24] 2821 	ljmp	00249$
      003718                       2822 01296$:
                                   2823 ;	calc.c:165: printstr("\r\nsecondary stack overflow\r\n");
      003718 7F FA            [12] 2824 	mov	r7,#___str_9
      00371A 7E 7D            [12] 2825 	mov	r6,#(___str_9 >> 8)
      00371C 7D 80            [12] 2826 	mov	r5,#0x80
                                   2827 ;	calc.c:51: return;
      00371E                       2828 00397$:
                                   2829 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00371E 8F 82            [24] 2830 	mov	dpl,r7
      003720 8E 83            [24] 2831 	mov	dph,r6
      003722 8D F0            [24] 2832 	mov	b,r5
      003724 12 65 2D         [24] 2833 	lcall	__gptrget
      003727 FC               [12] 2834 	mov	r4,a
      003728 60 10            [24] 2835 	jz	00283$
      00372A 7B 00            [12] 2836 	mov	r3,#0x00
      00372C 8C 82            [24] 2837 	mov	dpl,r4
      00372E 8B 83            [24] 2838 	mov	dph,r3
      003730 12 29 C0         [24] 2839 	lcall	_putchar
      003733 0F               [12] 2840 	inc	r7
                                   2841 ;	calc.c:165: printstr("\r\nsecondary stack overflow\r\n");
      003734 BF 00 E7         [24] 2842 	cjne	r7,#0x00,00397$
      003737 0E               [12] 2843 	inc	r6
      003738 80 E4            [24] 2844 	sjmp	00397$
      00373A                       2845 00283$:
                                   2846 ;	calc.c:166: (void)stack_push(ctx->ps, d0);
      00373A E5 08            [12] 2847 	mov	a,_bp
      00373C 24 07            [12] 2848 	add	a,#0x07
      00373E F8               [12] 2849 	mov	r0,a
      00373F 86 82            [24] 2850 	mov	dpl,@r0
      003741 08               [12] 2851 	inc	r0
      003742 86 83            [24] 2852 	mov	dph,@r0
      003744 08               [12] 2853 	inc	r0
      003745 86 F0            [24] 2854 	mov	b,@r0
      003747 12 65 2D         [24] 2855 	lcall	__gptrget
      00374A FA               [12] 2856 	mov	r2,a
      00374B A3               [24] 2857 	inc	dptr
      00374C 12 65 2D         [24] 2858 	lcall	__gptrget
      00374F FB               [12] 2859 	mov	r3,a
      003750 A3               [24] 2860 	inc	dptr
      003751 12 65 2D         [24] 2861 	lcall	__gptrget
      003754 FC               [12] 2862 	mov	r4,a
      003755 E5 08            [12] 2863 	mov	a,_bp
      003757 24 15            [12] 2864 	add	a,#0x15
      003759 F8               [12] 2865 	mov	r0,a
      00375A E6               [12] 2866 	mov	a,@r0
      00375B C0 E0            [24] 2867 	push	acc
      00375D 08               [12] 2868 	inc	r0
      00375E E6               [12] 2869 	mov	a,@r0
      00375F C0 E0            [24] 2870 	push	acc
      003761 08               [12] 2871 	inc	r0
      003762 E6               [12] 2872 	mov	a,@r0
      003763 C0 E0            [24] 2873 	push	acc
      003765 08               [12] 2874 	inc	r0
      003766 E6               [12] 2875 	mov	a,@r0
      003767 C0 E0            [24] 2876 	push	acc
      003769 8A 82            [24] 2877 	mov	dpl,r2
      00376B 8B 83            [24] 2878 	mov	dph,r3
      00376D 8C F0            [24] 2879 	mov	b,r4
      00376F 12 26 B5         [24] 2880 	lcall	_stack_push
      003772 E5 81            [12] 2881 	mov	a,sp
      003774 24 FC            [12] 2882 	add	a,#0xfc
      003776 F5 81            [12] 2883 	mov	sp,a
                                   2884 ;	calc.c:169: break;
      003778 02 51 F0         [24] 2885 	ljmp	00249$
                                   2886 ;	calc.c:170: case 'M':
      00377B                       2887 00127$:
                                   2888 ;	calc.c:171: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      00377B E5 08            [12] 2889 	mov	a,_bp
      00377D 24 15            [12] 2890 	add	a,#0x15
      00377F FF               [12] 2891 	mov	r7,a
      003780 7E 00            [12] 2892 	mov	r6,#0x00
      003782 7D 40            [12] 2893 	mov	r5,#0x40
      003784 E5 08            [12] 2894 	mov	a,_bp
      003786 24 12            [12] 2895 	add	a,#0x12
      003788 F8               [12] 2896 	mov	r0,a
      003789 E5 08            [12] 2897 	mov	a,_bp
      00378B 24 07            [12] 2898 	add	a,#0x07
      00378D F9               [12] 2899 	mov	r1,a
      00378E 74 14            [12] 2900 	mov	a,#0x14
      003790 26               [12] 2901 	add	a,@r0
      003791 F7               [12] 2902 	mov	@r1,a
      003792 74 40            [12] 2903 	mov	a,#0x40
      003794 08               [12] 2904 	inc	r0
      003795 36               [12] 2905 	addc	a,@r0
      003796 09               [12] 2906 	inc	r1
      003797 F7               [12] 2907 	mov	@r1,a
      003798 08               [12] 2908 	inc	r0
      003799 09               [12] 2909 	inc	r1
      00379A E6               [12] 2910 	mov	a,@r0
      00379B F7               [12] 2911 	mov	@r1,a
      00379C E5 08            [12] 2912 	mov	a,_bp
      00379E 24 07            [12] 2913 	add	a,#0x07
      0037A0 F8               [12] 2914 	mov	r0,a
      0037A1 86 82            [24] 2915 	mov	dpl,@r0
      0037A3 08               [12] 2916 	inc	r0
      0037A4 86 83            [24] 2917 	mov	dph,@r0
      0037A6 08               [12] 2918 	inc	r0
      0037A7 86 F0            [24] 2919 	mov	b,@r0
      0037A9 12 65 2D         [24] 2920 	lcall	__gptrget
      0037AC FA               [12] 2921 	mov	r2,a
      0037AD A3               [24] 2922 	inc	dptr
      0037AE 12 65 2D         [24] 2923 	lcall	__gptrget
      0037B1 FB               [12] 2924 	mov	r3,a
      0037B2 A3               [24] 2925 	inc	dptr
      0037B3 12 65 2D         [24] 2926 	lcall	__gptrget
      0037B6 FC               [12] 2927 	mov	r4,a
      0037B7 C0 07            [24] 2928 	push	ar7
      0037B9 C0 06            [24] 2929 	push	ar6
      0037BB C0 05            [24] 2930 	push	ar5
      0037BD 8A 82            [24] 2931 	mov	dpl,r2
      0037BF 8B 83            [24] 2932 	mov	dph,r3
      0037C1 8C F0            [24] 2933 	mov	b,r4
      0037C3 12 27 7F         [24] 2934 	lcall	_stack_pop
      0037C6 AB 82            [24] 2935 	mov	r3,dpl
      0037C8 AC 83            [24] 2936 	mov	r4,dph
      0037CA 15 81            [12] 2937 	dec	sp
      0037CC 15 81            [12] 2938 	dec	sp
      0037CE 15 81            [12] 2939 	dec	sp
      0037D0 EB               [12] 2940 	mov	a,r3
      0037D1 4C               [12] 2941 	orl	a,r4
      0037D2 70 25            [24] 2942 	jnz	00131$
      0037D4 7F 17            [12] 2943 	mov	r7,#___str_10
      0037D6 7E 7E            [12] 2944 	mov	r6,#(___str_10 >> 8)
      0037D8 7D 80            [12] 2945 	mov	r5,#0x80
                                   2946 ;	calc.c:51: return;
      0037DA                       2947 00400$:
                                   2948 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0037DA 8F 82            [24] 2949 	mov	dpl,r7
      0037DC 8E 83            [24] 2950 	mov	dph,r6
      0037DE 8D F0            [24] 2951 	mov	b,r5
      0037E0 12 65 2D         [24] 2952 	lcall	__gptrget
      0037E3 FC               [12] 2953 	mov	r4,a
      0037E4 70 03            [24] 2954 	jnz	01300$
      0037E6 02 51 F0         [24] 2955 	ljmp	00249$
      0037E9                       2956 01300$:
      0037E9 7B 00            [12] 2957 	mov	r3,#0x00
      0037EB 8C 82            [24] 2958 	mov	dpl,r4
      0037ED 8B 83            [24] 2959 	mov	dph,r3
      0037EF 12 29 C0         [24] 2960 	lcall	_putchar
      0037F2 0F               [12] 2961 	inc	r7
                                   2962 ;	calc.c:171: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      0037F3 BF 00 E4         [24] 2963 	cjne	r7,#0x00,00400$
      0037F6 0E               [12] 2964 	inc	r6
      0037F7 80 E1            [24] 2965 	sjmp	00400$
      0037F9                       2966 00131$:
                                   2967 ;	calc.c:173: if (!stack_push(ctx->ps, d0)) {
      0037F9 E5 08            [12] 2968 	mov	a,_bp
      0037FB 24 12            [12] 2969 	add	a,#0x12
      0037FD F8               [12] 2970 	mov	r0,a
      0037FE 74 11            [12] 2971 	mov	a,#0x11
      003800 26               [12] 2972 	add	a,@r0
      003801 FA               [12] 2973 	mov	r2,a
      003802 74 40            [12] 2974 	mov	a,#0x40
      003804 08               [12] 2975 	inc	r0
      003805 36               [12] 2976 	addc	a,@r0
      003806 FB               [12] 2977 	mov	r3,a
      003807 08               [12] 2978 	inc	r0
      003808 86 04            [24] 2979 	mov	ar4,@r0
      00380A 8A 82            [24] 2980 	mov	dpl,r2
      00380C 8B 83            [24] 2981 	mov	dph,r3
      00380E 8C F0            [24] 2982 	mov	b,r4
      003810 12 65 2D         [24] 2983 	lcall	__gptrget
      003813 FA               [12] 2984 	mov	r2,a
      003814 A3               [24] 2985 	inc	dptr
      003815 12 65 2D         [24] 2986 	lcall	__gptrget
      003818 FB               [12] 2987 	mov	r3,a
      003819 A3               [24] 2988 	inc	dptr
      00381A 12 65 2D         [24] 2989 	lcall	__gptrget
      00381D FC               [12] 2990 	mov	r4,a
      00381E E5 08            [12] 2991 	mov	a,_bp
      003820 24 15            [12] 2992 	add	a,#0x15
      003822 F8               [12] 2993 	mov	r0,a
      003823 E6               [12] 2994 	mov	a,@r0
      003824 C0 E0            [24] 2995 	push	acc
      003826 08               [12] 2996 	inc	r0
      003827 E6               [12] 2997 	mov	a,@r0
      003828 C0 E0            [24] 2998 	push	acc
      00382A 08               [12] 2999 	inc	r0
      00382B E6               [12] 3000 	mov	a,@r0
      00382C C0 E0            [24] 3001 	push	acc
      00382E 08               [12] 3002 	inc	r0
      00382F E6               [12] 3003 	mov	a,@r0
      003830 C0 E0            [24] 3004 	push	acc
      003832 8A 82            [24] 3005 	mov	dpl,r2
      003834 8B 83            [24] 3006 	mov	dph,r3
      003836 8C F0            [24] 3007 	mov	b,r4
      003838 12 26 B5         [24] 3008 	lcall	_stack_push
      00383B AB 82            [24] 3009 	mov	r3,dpl
      00383D AC 83            [24] 3010 	mov	r4,dph
      00383F E5 81            [12] 3011 	mov	a,sp
      003841 24 FC            [12] 3012 	add	a,#0xfc
      003843 F5 81            [12] 3013 	mov	sp,a
      003845 EB               [12] 3014 	mov	a,r3
      003846 4C               [12] 3015 	orl	a,r4
      003847 60 03            [24] 3016 	jz	01302$
      003849 02 51 F0         [24] 3017 	ljmp	00249$
      00384C                       3018 01302$:
                                   3019 ;	calc.c:174: printstr("\r\nstack overflow\r\n");
      00384C 7F 35            [12] 3020 	mov	r7,#___str_11
      00384E 7E 7E            [12] 3021 	mov	r6,#(___str_11 >> 8)
      003850 7D 80            [12] 3022 	mov	r5,#0x80
                                   3023 ;	calc.c:51: return;
      003852                       3024 00403$:
                                   3025 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003852 8F 82            [24] 3026 	mov	dpl,r7
      003854 8E 83            [24] 3027 	mov	dph,r6
      003856 8D F0            [24] 3028 	mov	b,r5
      003858 12 65 2D         [24] 3029 	lcall	__gptrget
      00385B FC               [12] 3030 	mov	r4,a
      00385C 60 10            [24] 3031 	jz	00287$
      00385E 7B 00            [12] 3032 	mov	r3,#0x00
      003860 8C 82            [24] 3033 	mov	dpl,r4
      003862 8B 83            [24] 3034 	mov	dph,r3
      003864 12 29 C0         [24] 3035 	lcall	_putchar
      003867 0F               [12] 3036 	inc	r7
                                   3037 ;	calc.c:174: printstr("\r\nstack overflow\r\n");
      003868 BF 00 E7         [24] 3038 	cjne	r7,#0x00,00403$
      00386B 0E               [12] 3039 	inc	r6
      00386C 80 E4            [24] 3040 	sjmp	00403$
      00386E                       3041 00287$:
                                   3042 ;	calc.c:175: (void)stack_push(ctx->ss, d0);
      00386E E5 08            [12] 3043 	mov	a,_bp
      003870 24 07            [12] 3044 	add	a,#0x07
      003872 F8               [12] 3045 	mov	r0,a
      003873 86 82            [24] 3046 	mov	dpl,@r0
      003875 08               [12] 3047 	inc	r0
      003876 86 83            [24] 3048 	mov	dph,@r0
      003878 08               [12] 3049 	inc	r0
      003879 86 F0            [24] 3050 	mov	b,@r0
      00387B 12 65 2D         [24] 3051 	lcall	__gptrget
      00387E FA               [12] 3052 	mov	r2,a
      00387F A3               [24] 3053 	inc	dptr
      003880 12 65 2D         [24] 3054 	lcall	__gptrget
      003883 FB               [12] 3055 	mov	r3,a
      003884 A3               [24] 3056 	inc	dptr
      003885 12 65 2D         [24] 3057 	lcall	__gptrget
      003888 FC               [12] 3058 	mov	r4,a
      003889 E5 08            [12] 3059 	mov	a,_bp
      00388B 24 15            [12] 3060 	add	a,#0x15
      00388D F8               [12] 3061 	mov	r0,a
      00388E E6               [12] 3062 	mov	a,@r0
      00388F C0 E0            [24] 3063 	push	acc
      003891 08               [12] 3064 	inc	r0
      003892 E6               [12] 3065 	mov	a,@r0
      003893 C0 E0            [24] 3066 	push	acc
      003895 08               [12] 3067 	inc	r0
      003896 E6               [12] 3068 	mov	a,@r0
      003897 C0 E0            [24] 3069 	push	acc
      003899 08               [12] 3070 	inc	r0
      00389A E6               [12] 3071 	mov	a,@r0
      00389B C0 E0            [24] 3072 	push	acc
      00389D 8A 82            [24] 3073 	mov	dpl,r2
      00389F 8B 83            [24] 3074 	mov	dph,r3
      0038A1 8C F0            [24] 3075 	mov	b,r4
      0038A3 12 26 B5         [24] 3076 	lcall	_stack_push
      0038A6 E5 81            [12] 3077 	mov	a,sp
      0038A8 24 FC            [12] 3078 	add	a,#0xfc
      0038AA F5 81            [12] 3079 	mov	sp,a
                                   3080 ;	calc.c:178: break;
      0038AC 02 51 F0         [24] 3081 	ljmp	00249$
                                   3082 ;	calc.c:179: case 'u':
      0038AF                       3083 00133$:
                                   3084 ;	calc.c:180: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0038AF E5 08            [12] 3085 	mov	a,_bp
      0038B1 24 15            [12] 3086 	add	a,#0x15
      0038B3 FF               [12] 3087 	mov	r7,a
      0038B4 7E 00            [12] 3088 	mov	r6,#0x00
      0038B6 7D 40            [12] 3089 	mov	r5,#0x40
      0038B8 E5 08            [12] 3090 	mov	a,_bp
      0038BA 24 12            [12] 3091 	add	a,#0x12
      0038BC F8               [12] 3092 	mov	r0,a
      0038BD 74 11            [12] 3093 	mov	a,#0x11
      0038BF 26               [12] 3094 	add	a,@r0
      0038C0 FA               [12] 3095 	mov	r2,a
      0038C1 ED               [12] 3096 	mov	a,r5
      0038C2 08               [12] 3097 	inc	r0
      0038C3 36               [12] 3098 	addc	a,@r0
      0038C4 FB               [12] 3099 	mov	r3,a
      0038C5 08               [12] 3100 	inc	r0
      0038C6 86 04            [24] 3101 	mov	ar4,@r0
      0038C8 8A 82            [24] 3102 	mov	dpl,r2
      0038CA 8B 83            [24] 3103 	mov	dph,r3
      0038CC 8C F0            [24] 3104 	mov	b,r4
      0038CE 12 65 2D         [24] 3105 	lcall	__gptrget
      0038D1 FA               [12] 3106 	mov	r2,a
      0038D2 A3               [24] 3107 	inc	dptr
      0038D3 12 65 2D         [24] 3108 	lcall	__gptrget
      0038D6 FB               [12] 3109 	mov	r3,a
      0038D7 A3               [24] 3110 	inc	dptr
      0038D8 12 65 2D         [24] 3111 	lcall	__gptrget
      0038DB FC               [12] 3112 	mov	r4,a
      0038DC C0 07            [24] 3113 	push	ar7
      0038DE C0 06            [24] 3114 	push	ar6
      0038E0 C0 05            [24] 3115 	push	ar5
      0038E2 8A 82            [24] 3116 	mov	dpl,r2
      0038E4 8B 83            [24] 3117 	mov	dph,r3
      0038E6 8C F0            [24] 3118 	mov	b,r4
      0038E8 12 28 56         [24] 3119 	lcall	_stack_peek
      0038EB AB 82            [24] 3120 	mov	r3,dpl
      0038ED AC 83            [24] 3121 	mov	r4,dph
      0038EF 15 81            [12] 3122 	dec	sp
      0038F1 15 81            [12] 3123 	dec	sp
      0038F3 15 81            [12] 3124 	dec	sp
      0038F5 EB               [12] 3125 	mov	a,r3
      0038F6 4C               [12] 3126 	orl	a,r4
      0038F7 70 25            [24] 3127 	jnz	00137$
      0038F9 7F E6            [12] 3128 	mov	r7,#___str_8
      0038FB 7E 7D            [12] 3129 	mov	r6,#(___str_8 >> 8)
      0038FD 7D 80            [12] 3130 	mov	r5,#0x80
                                   3131 ;	calc.c:51: return;
      0038FF                       3132 00406$:
                                   3133 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0038FF 8F 82            [24] 3134 	mov	dpl,r7
      003901 8E 83            [24] 3135 	mov	dph,r6
      003903 8D F0            [24] 3136 	mov	b,r5
      003905 12 65 2D         [24] 3137 	lcall	__gptrget
      003908 FC               [12] 3138 	mov	r4,a
      003909 70 03            [24] 3139 	jnz	01306$
      00390B 02 51 F0         [24] 3140 	ljmp	00249$
      00390E                       3141 01306$:
      00390E 7B 00            [12] 3142 	mov	r3,#0x00
      003910 8C 82            [24] 3143 	mov	dpl,r4
      003912 8B 83            [24] 3144 	mov	dph,r3
      003914 12 29 C0         [24] 3145 	lcall	_putchar
      003917 0F               [12] 3146 	inc	r7
                                   3147 ;	calc.c:180: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003918 BF 00 E4         [24] 3148 	cjne	r7,#0x00,00406$
      00391B 0E               [12] 3149 	inc	r6
      00391C 80 E1            [24] 3150 	sjmp	00406$
      00391E                       3151 00137$:
                                   3152 ;	calc.c:181: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      00391E E5 08            [12] 3153 	mov	a,_bp
      003920 24 12            [12] 3154 	add	a,#0x12
      003922 F8               [12] 3155 	mov	r0,a
      003923 74 14            [12] 3156 	mov	a,#0x14
      003925 26               [12] 3157 	add	a,@r0
      003926 FA               [12] 3158 	mov	r2,a
      003927 74 40            [12] 3159 	mov	a,#0x40
      003929 08               [12] 3160 	inc	r0
      00392A 36               [12] 3161 	addc	a,@r0
      00392B FB               [12] 3162 	mov	r3,a
      00392C 08               [12] 3163 	inc	r0
      00392D 86 04            [24] 3164 	mov	ar4,@r0
      00392F 8A 82            [24] 3165 	mov	dpl,r2
      003931 8B 83            [24] 3166 	mov	dph,r3
      003933 8C F0            [24] 3167 	mov	b,r4
      003935 12 65 2D         [24] 3168 	lcall	__gptrget
      003938 FA               [12] 3169 	mov	r2,a
      003939 A3               [24] 3170 	inc	dptr
      00393A 12 65 2D         [24] 3171 	lcall	__gptrget
      00393D FB               [12] 3172 	mov	r3,a
      00393E A3               [24] 3173 	inc	dptr
      00393F 12 65 2D         [24] 3174 	lcall	__gptrget
      003942 FC               [12] 3175 	mov	r4,a
      003943 E5 08            [12] 3176 	mov	a,_bp
      003945 24 15            [12] 3177 	add	a,#0x15
      003947 F8               [12] 3178 	mov	r0,a
      003948 E6               [12] 3179 	mov	a,@r0
      003949 C0 E0            [24] 3180 	push	acc
      00394B 08               [12] 3181 	inc	r0
      00394C E6               [12] 3182 	mov	a,@r0
      00394D C0 E0            [24] 3183 	push	acc
      00394F 08               [12] 3184 	inc	r0
      003950 E6               [12] 3185 	mov	a,@r0
      003951 C0 E0            [24] 3186 	push	acc
      003953 08               [12] 3187 	inc	r0
      003954 E6               [12] 3188 	mov	a,@r0
      003955 C0 E0            [24] 3189 	push	acc
      003957 8A 82            [24] 3190 	mov	dpl,r2
      003959 8B 83            [24] 3191 	mov	dph,r3
      00395B 8C F0            [24] 3192 	mov	b,r4
      00395D 12 26 B5         [24] 3193 	lcall	_stack_push
      003960 AB 82            [24] 3194 	mov	r3,dpl
      003962 AC 83            [24] 3195 	mov	r4,dph
      003964 E5 81            [12] 3196 	mov	a,sp
      003966 24 FC            [12] 3197 	add	a,#0xfc
      003968 F5 81            [12] 3198 	mov	sp,a
      00396A EB               [12] 3199 	mov	a,r3
      00396B 4C               [12] 3200 	orl	a,r4
      00396C 60 03            [24] 3201 	jz	01308$
      00396E 02 51 F0         [24] 3202 	ljmp	00249$
      003971                       3203 01308$:
      003971 7F FA            [12] 3204 	mov	r7,#___str_9
      003973 7E 7D            [12] 3205 	mov	r6,#(___str_9 >> 8)
      003975 7D 80            [12] 3206 	mov	r5,#0x80
                                   3207 ;	calc.c:51: return;
      003977                       3208 00409$:
                                   3209 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003977 8F 82            [24] 3210 	mov	dpl,r7
      003979 8E 83            [24] 3211 	mov	dph,r6
      00397B 8D F0            [24] 3212 	mov	b,r5
      00397D 12 65 2D         [24] 3213 	lcall	__gptrget
      003980 FC               [12] 3214 	mov	r4,a
      003981 70 03            [24] 3215 	jnz	01309$
      003983 02 51 F0         [24] 3216 	ljmp	00249$
      003986                       3217 01309$:
      003986 7B 00            [12] 3218 	mov	r3,#0x00
      003988 8C 82            [24] 3219 	mov	dpl,r4
      00398A 8B 83            [24] 3220 	mov	dph,r3
      00398C 12 29 C0         [24] 3221 	lcall	_putchar
      00398F 0F               [12] 3222 	inc	r7
                                   3223 ;	calc.c:183: case 'U':
      003990 BF 00 E4         [24] 3224 	cjne	r7,#0x00,00409$
      003993 0E               [12] 3225 	inc	r6
      003994 80 E1            [24] 3226 	sjmp	00409$
      003996                       3227 00139$:
                                   3228 ;	calc.c:184: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003996 E5 08            [12] 3229 	mov	a,_bp
      003998 24 15            [12] 3230 	add	a,#0x15
      00399A FF               [12] 3231 	mov	r7,a
      00399B 7E 00            [12] 3232 	mov	r6,#0x00
      00399D 7D 40            [12] 3233 	mov	r5,#0x40
      00399F E5 08            [12] 3234 	mov	a,_bp
      0039A1 24 12            [12] 3235 	add	a,#0x12
      0039A3 F8               [12] 3236 	mov	r0,a
      0039A4 74 14            [12] 3237 	mov	a,#0x14
      0039A6 26               [12] 3238 	add	a,@r0
      0039A7 FA               [12] 3239 	mov	r2,a
      0039A8 ED               [12] 3240 	mov	a,r5
      0039A9 08               [12] 3241 	inc	r0
      0039AA 36               [12] 3242 	addc	a,@r0
      0039AB FB               [12] 3243 	mov	r3,a
      0039AC 08               [12] 3244 	inc	r0
      0039AD 86 04            [24] 3245 	mov	ar4,@r0
      0039AF 8A 82            [24] 3246 	mov	dpl,r2
      0039B1 8B 83            [24] 3247 	mov	dph,r3
      0039B3 8C F0            [24] 3248 	mov	b,r4
      0039B5 12 65 2D         [24] 3249 	lcall	__gptrget
      0039B8 FA               [12] 3250 	mov	r2,a
      0039B9 A3               [24] 3251 	inc	dptr
      0039BA 12 65 2D         [24] 3252 	lcall	__gptrget
      0039BD FB               [12] 3253 	mov	r3,a
      0039BE A3               [24] 3254 	inc	dptr
      0039BF 12 65 2D         [24] 3255 	lcall	__gptrget
      0039C2 FC               [12] 3256 	mov	r4,a
      0039C3 C0 07            [24] 3257 	push	ar7
      0039C5 C0 06            [24] 3258 	push	ar6
      0039C7 C0 05            [24] 3259 	push	ar5
      0039C9 8A 82            [24] 3260 	mov	dpl,r2
      0039CB 8B 83            [24] 3261 	mov	dph,r3
      0039CD 8C F0            [24] 3262 	mov	b,r4
      0039CF 12 28 56         [24] 3263 	lcall	_stack_peek
      0039D2 AB 82            [24] 3264 	mov	r3,dpl
      0039D4 AC 83            [24] 3265 	mov	r4,dph
      0039D6 15 81            [12] 3266 	dec	sp
      0039D8 15 81            [12] 3267 	dec	sp
      0039DA 15 81            [12] 3268 	dec	sp
      0039DC EB               [12] 3269 	mov	a,r3
      0039DD 4C               [12] 3270 	orl	a,r4
      0039DE 70 25            [24] 3271 	jnz	00143$
      0039E0 7F 17            [12] 3272 	mov	r7,#___str_10
      0039E2 7E 7E            [12] 3273 	mov	r6,#(___str_10 >> 8)
      0039E4 7D 80            [12] 3274 	mov	r5,#0x80
                                   3275 ;	calc.c:51: return;
      0039E6                       3276 00412$:
                                   3277 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0039E6 8F 82            [24] 3278 	mov	dpl,r7
      0039E8 8E 83            [24] 3279 	mov	dph,r6
      0039EA 8D F0            [24] 3280 	mov	b,r5
      0039EC 12 65 2D         [24] 3281 	lcall	__gptrget
      0039EF FC               [12] 3282 	mov	r4,a
      0039F0 70 03            [24] 3283 	jnz	01312$
      0039F2 02 51 F0         [24] 3284 	ljmp	00249$
      0039F5                       3285 01312$:
      0039F5 7B 00            [12] 3286 	mov	r3,#0x00
      0039F7 8C 82            [24] 3287 	mov	dpl,r4
      0039F9 8B 83            [24] 3288 	mov	dph,r3
      0039FB 12 29 C0         [24] 3289 	lcall	_putchar
      0039FE 0F               [12] 3290 	inc	r7
                                   3291 ;	calc.c:184: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      0039FF BF 00 E4         [24] 3292 	cjne	r7,#0x00,00412$
      003A02 0E               [12] 3293 	inc	r6
      003A03 80 E1            [24] 3294 	sjmp	00412$
      003A05                       3295 00143$:
                                   3296 ;	calc.c:185: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      003A05 E5 08            [12] 3297 	mov	a,_bp
      003A07 24 12            [12] 3298 	add	a,#0x12
      003A09 F8               [12] 3299 	mov	r0,a
      003A0A 74 11            [12] 3300 	mov	a,#0x11
      003A0C 26               [12] 3301 	add	a,@r0
      003A0D FA               [12] 3302 	mov	r2,a
      003A0E 74 40            [12] 3303 	mov	a,#0x40
      003A10 08               [12] 3304 	inc	r0
      003A11 36               [12] 3305 	addc	a,@r0
      003A12 FB               [12] 3306 	mov	r3,a
      003A13 08               [12] 3307 	inc	r0
      003A14 86 04            [24] 3308 	mov	ar4,@r0
      003A16 8A 82            [24] 3309 	mov	dpl,r2
      003A18 8B 83            [24] 3310 	mov	dph,r3
      003A1A 8C F0            [24] 3311 	mov	b,r4
      003A1C 12 65 2D         [24] 3312 	lcall	__gptrget
      003A1F FA               [12] 3313 	mov	r2,a
      003A20 A3               [24] 3314 	inc	dptr
      003A21 12 65 2D         [24] 3315 	lcall	__gptrget
      003A24 FB               [12] 3316 	mov	r3,a
      003A25 A3               [24] 3317 	inc	dptr
      003A26 12 65 2D         [24] 3318 	lcall	__gptrget
      003A29 FC               [12] 3319 	mov	r4,a
      003A2A E5 08            [12] 3320 	mov	a,_bp
      003A2C 24 15            [12] 3321 	add	a,#0x15
      003A2E F8               [12] 3322 	mov	r0,a
      003A2F E6               [12] 3323 	mov	a,@r0
      003A30 C0 E0            [24] 3324 	push	acc
      003A32 08               [12] 3325 	inc	r0
      003A33 E6               [12] 3326 	mov	a,@r0
      003A34 C0 E0            [24] 3327 	push	acc
      003A36 08               [12] 3328 	inc	r0
      003A37 E6               [12] 3329 	mov	a,@r0
      003A38 C0 E0            [24] 3330 	push	acc
      003A3A 08               [12] 3331 	inc	r0
      003A3B E6               [12] 3332 	mov	a,@r0
      003A3C C0 E0            [24] 3333 	push	acc
      003A3E 8A 82            [24] 3334 	mov	dpl,r2
      003A40 8B 83            [24] 3335 	mov	dph,r3
      003A42 8C F0            [24] 3336 	mov	b,r4
      003A44 12 26 B5         [24] 3337 	lcall	_stack_push
      003A47 AB 82            [24] 3338 	mov	r3,dpl
      003A49 AC 83            [24] 3339 	mov	r4,dph
      003A4B E5 81            [12] 3340 	mov	a,sp
      003A4D 24 FC            [12] 3341 	add	a,#0xfc
      003A4F F5 81            [12] 3342 	mov	sp,a
      003A51 EB               [12] 3343 	mov	a,r3
      003A52 4C               [12] 3344 	orl	a,r4
      003A53 60 03            [24] 3345 	jz	01314$
      003A55 02 51 F0         [24] 3346 	ljmp	00249$
      003A58                       3347 01314$:
      003A58 7F 35            [12] 3348 	mov	r7,#___str_11
      003A5A 7E 7E            [12] 3349 	mov	r6,#(___str_11 >> 8)
      003A5C 7D 80            [12] 3350 	mov	r5,#0x80
                                   3351 ;	calc.c:51: return;
      003A5E                       3352 00415$:
                                   3353 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003A5E 8F 82            [24] 3354 	mov	dpl,r7
      003A60 8E 83            [24] 3355 	mov	dph,r6
      003A62 8D F0            [24] 3356 	mov	b,r5
      003A64 12 65 2D         [24] 3357 	lcall	__gptrget
      003A67 FC               [12] 3358 	mov	r4,a
      003A68 70 03            [24] 3359 	jnz	01315$
      003A6A 02 51 F0         [24] 3360 	ljmp	00249$
      003A6D                       3361 01315$:
      003A6D 7B 00            [12] 3362 	mov	r3,#0x00
      003A6F 8C 82            [24] 3363 	mov	dpl,r4
      003A71 8B 83            [24] 3364 	mov	dph,r3
      003A73 12 29 C0         [24] 3365 	lcall	_putchar
      003A76 0F               [12] 3366 	inc	r7
                                   3367 ;	calc.c:187: case 'T':
      003A77 BF 00 E4         [24] 3368 	cjne	r7,#0x00,00415$
      003A7A 0E               [12] 3369 	inc	r6
      003A7B 80 E1            [24] 3370 	sjmp	00415$
      003A7D                       3371 00145$:
                                   3372 ;	calc.c:188: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003A7D E5 08            [12] 3373 	mov	a,_bp
      003A7F 24 15            [12] 3374 	add	a,#0x15
      003A81 FF               [12] 3375 	mov	r7,a
      003A82 7E 00            [12] 3376 	mov	r6,#0x00
      003A84 7D 40            [12] 3377 	mov	r5,#0x40
      003A86 E5 08            [12] 3378 	mov	a,_bp
      003A88 24 12            [12] 3379 	add	a,#0x12
      003A8A F8               [12] 3380 	mov	r0,a
      003A8B E5 08            [12] 3381 	mov	a,_bp
      003A8D 24 07            [12] 3382 	add	a,#0x07
      003A8F F9               [12] 3383 	mov	r1,a
      003A90 74 11            [12] 3384 	mov	a,#0x11
      003A92 26               [12] 3385 	add	a,@r0
      003A93 F7               [12] 3386 	mov	@r1,a
      003A94 74 40            [12] 3387 	mov	a,#0x40
      003A96 08               [12] 3388 	inc	r0
      003A97 36               [12] 3389 	addc	a,@r0
      003A98 09               [12] 3390 	inc	r1
      003A99 F7               [12] 3391 	mov	@r1,a
      003A9A 08               [12] 3392 	inc	r0
      003A9B 09               [12] 3393 	inc	r1
      003A9C E6               [12] 3394 	mov	a,@r0
      003A9D F7               [12] 3395 	mov	@r1,a
      003A9E E5 08            [12] 3396 	mov	a,_bp
      003AA0 24 07            [12] 3397 	add	a,#0x07
      003AA2 F8               [12] 3398 	mov	r0,a
      003AA3 86 82            [24] 3399 	mov	dpl,@r0
      003AA5 08               [12] 3400 	inc	r0
      003AA6 86 83            [24] 3401 	mov	dph,@r0
      003AA8 08               [12] 3402 	inc	r0
      003AA9 86 F0            [24] 3403 	mov	b,@r0
      003AAB 12 65 2D         [24] 3404 	lcall	__gptrget
      003AAE FA               [12] 3405 	mov	r2,a
      003AAF A3               [24] 3406 	inc	dptr
      003AB0 12 65 2D         [24] 3407 	lcall	__gptrget
      003AB3 FB               [12] 3408 	mov	r3,a
      003AB4 A3               [24] 3409 	inc	dptr
      003AB5 12 65 2D         [24] 3410 	lcall	__gptrget
      003AB8 FC               [12] 3411 	mov	r4,a
      003AB9 C0 07            [24] 3412 	push	ar7
      003ABB C0 06            [24] 3413 	push	ar6
      003ABD C0 05            [24] 3414 	push	ar5
      003ABF 8A 82            [24] 3415 	mov	dpl,r2
      003AC1 8B 83            [24] 3416 	mov	dph,r3
      003AC3 8C F0            [24] 3417 	mov	b,r4
      003AC5 12 27 7F         [24] 3418 	lcall	_stack_pop
      003AC8 AB 82            [24] 3419 	mov	r3,dpl
      003ACA AC 83            [24] 3420 	mov	r4,dph
      003ACC 15 81            [12] 3421 	dec	sp
      003ACE 15 81            [12] 3422 	dec	sp
      003AD0 15 81            [12] 3423 	dec	sp
      003AD2 EB               [12] 3424 	mov	a,r3
      003AD3 4C               [12] 3425 	orl	a,r4
      003AD4 70 25            [24] 3426 	jnz	00150$
      003AD6 7F E6            [12] 3427 	mov	r7,#___str_8
      003AD8 7E 7D            [12] 3428 	mov	r6,#(___str_8 >> 8)
      003ADA 7D 80            [12] 3429 	mov	r5,#0x80
                                   3430 ;	calc.c:51: return;
      003ADC                       3431 00418$:
                                   3432 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003ADC 8F 82            [24] 3433 	mov	dpl,r7
      003ADE 8E 83            [24] 3434 	mov	dph,r6
      003AE0 8D F0            [24] 3435 	mov	b,r5
      003AE2 12 65 2D         [24] 3436 	lcall	__gptrget
      003AE5 FC               [12] 3437 	mov	r4,a
      003AE6 70 03            [24] 3438 	jnz	01318$
      003AE8 02 51 F0         [24] 3439 	ljmp	00249$
      003AEB                       3440 01318$:
      003AEB 7B 00            [12] 3441 	mov	r3,#0x00
      003AED 8C 82            [24] 3442 	mov	dpl,r4
      003AEF 8B 83            [24] 3443 	mov	dph,r3
      003AF1 12 29 C0         [24] 3444 	lcall	_putchar
      003AF4 0F               [12] 3445 	inc	r7
                                   3446 ;	calc.c:188: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003AF5 BF 00 E4         [24] 3447 	cjne	r7,#0x00,00418$
      003AF8 0E               [12] 3448 	inc	r6
      003AF9 80 E1            [24] 3449 	sjmp	00418$
      003AFB                       3450 00150$:
                                   3451 ;	calc.c:190: if (!stack_pop(ctx->ss, &d1)) {
      003AFB E5 08            [12] 3452 	mov	a,_bp
      003AFD 24 19            [12] 3453 	add	a,#0x19
      003AFF FF               [12] 3454 	mov	r7,a
      003B00 7E 00            [12] 3455 	mov	r6,#0x00
      003B02 7D 40            [12] 3456 	mov	r5,#0x40
      003B04 E5 08            [12] 3457 	mov	a,_bp
      003B06 24 12            [12] 3458 	add	a,#0x12
      003B08 F8               [12] 3459 	mov	r0,a
      003B09 E5 08            [12] 3460 	mov	a,_bp
      003B0B 24 04            [12] 3461 	add	a,#0x04
      003B0D F9               [12] 3462 	mov	r1,a
      003B0E 74 14            [12] 3463 	mov	a,#0x14
      003B10 26               [12] 3464 	add	a,@r0
      003B11 F7               [12] 3465 	mov	@r1,a
      003B12 74 40            [12] 3466 	mov	a,#0x40
      003B14 08               [12] 3467 	inc	r0
      003B15 36               [12] 3468 	addc	a,@r0
      003B16 09               [12] 3469 	inc	r1
      003B17 F7               [12] 3470 	mov	@r1,a
      003B18 08               [12] 3471 	inc	r0
      003B19 09               [12] 3472 	inc	r1
      003B1A E6               [12] 3473 	mov	a,@r0
      003B1B F7               [12] 3474 	mov	@r1,a
      003B1C E5 08            [12] 3475 	mov	a,_bp
      003B1E 24 04            [12] 3476 	add	a,#0x04
      003B20 F8               [12] 3477 	mov	r0,a
      003B21 86 82            [24] 3478 	mov	dpl,@r0
      003B23 08               [12] 3479 	inc	r0
      003B24 86 83            [24] 3480 	mov	dph,@r0
      003B26 08               [12] 3481 	inc	r0
      003B27 86 F0            [24] 3482 	mov	b,@r0
      003B29 12 65 2D         [24] 3483 	lcall	__gptrget
      003B2C FA               [12] 3484 	mov	r2,a
      003B2D A3               [24] 3485 	inc	dptr
      003B2E 12 65 2D         [24] 3486 	lcall	__gptrget
      003B31 FB               [12] 3487 	mov	r3,a
      003B32 A3               [24] 3488 	inc	dptr
      003B33 12 65 2D         [24] 3489 	lcall	__gptrget
      003B36 FC               [12] 3490 	mov	r4,a
      003B37 C0 07            [24] 3491 	push	ar7
      003B39 C0 06            [24] 3492 	push	ar6
      003B3B C0 05            [24] 3493 	push	ar5
      003B3D 8A 82            [24] 3494 	mov	dpl,r2
      003B3F 8B 83            [24] 3495 	mov	dph,r3
      003B41 8C F0            [24] 3496 	mov	b,r4
      003B43 12 27 7F         [24] 3497 	lcall	_stack_pop
      003B46 AB 82            [24] 3498 	mov	r3,dpl
      003B48 AC 83            [24] 3499 	mov	r4,dph
      003B4A 15 81            [12] 3500 	dec	sp
      003B4C 15 81            [12] 3501 	dec	sp
      003B4E 15 81            [12] 3502 	dec	sp
      003B50 EB               [12] 3503 	mov	a,r3
      003B51 4C               [12] 3504 	orl	a,r4
      003B52 70 63            [24] 3505 	jnz	00147$
                                   3506 ;	calc.c:191: printstr("\r\nsecondary stack underflow\r\n");
      003B54 7F 17            [12] 3507 	mov	r7,#___str_10
      003B56 7E 7E            [12] 3508 	mov	r6,#(___str_10 >> 8)
      003B58 7D 80            [12] 3509 	mov	r5,#0x80
                                   3510 ;	calc.c:51: return;
      003B5A                       3511 00421$:
                                   3512 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003B5A 8F 82            [24] 3513 	mov	dpl,r7
      003B5C 8E 83            [24] 3514 	mov	dph,r6
      003B5E 8D F0            [24] 3515 	mov	b,r5
      003B60 12 65 2D         [24] 3516 	lcall	__gptrget
      003B63 FC               [12] 3517 	mov	r4,a
      003B64 60 10            [24] 3518 	jz	00299$
      003B66 7B 00            [12] 3519 	mov	r3,#0x00
      003B68 8C 82            [24] 3520 	mov	dpl,r4
      003B6A 8B 83            [24] 3521 	mov	dph,r3
      003B6C 12 29 C0         [24] 3522 	lcall	_putchar
      003B6F 0F               [12] 3523 	inc	r7
                                   3524 ;	calc.c:191: printstr("\r\nsecondary stack underflow\r\n");
      003B70 BF 00 E7         [24] 3525 	cjne	r7,#0x00,00421$
      003B73 0E               [12] 3526 	inc	r6
      003B74 80 E4            [24] 3527 	sjmp	00421$
      003B76                       3528 00299$:
                                   3529 ;	calc.c:192: (void)stack_push(ctx->ps, d0);
      003B76 E5 08            [12] 3530 	mov	a,_bp
      003B78 24 07            [12] 3531 	add	a,#0x07
      003B7A F8               [12] 3532 	mov	r0,a
      003B7B 86 82            [24] 3533 	mov	dpl,@r0
      003B7D 08               [12] 3534 	inc	r0
      003B7E 86 83            [24] 3535 	mov	dph,@r0
      003B80 08               [12] 3536 	inc	r0
      003B81 86 F0            [24] 3537 	mov	b,@r0
      003B83 12 65 2D         [24] 3538 	lcall	__gptrget
      003B86 FA               [12] 3539 	mov	r2,a
      003B87 A3               [24] 3540 	inc	dptr
      003B88 12 65 2D         [24] 3541 	lcall	__gptrget
      003B8B FB               [12] 3542 	mov	r3,a
      003B8C A3               [24] 3543 	inc	dptr
      003B8D 12 65 2D         [24] 3544 	lcall	__gptrget
      003B90 FC               [12] 3545 	mov	r4,a
      003B91 E5 08            [12] 3546 	mov	a,_bp
      003B93 24 15            [12] 3547 	add	a,#0x15
      003B95 F8               [12] 3548 	mov	r0,a
      003B96 E6               [12] 3549 	mov	a,@r0
      003B97 C0 E0            [24] 3550 	push	acc
      003B99 08               [12] 3551 	inc	r0
      003B9A E6               [12] 3552 	mov	a,@r0
      003B9B C0 E0            [24] 3553 	push	acc
      003B9D 08               [12] 3554 	inc	r0
      003B9E E6               [12] 3555 	mov	a,@r0
      003B9F C0 E0            [24] 3556 	push	acc
      003BA1 08               [12] 3557 	inc	r0
      003BA2 E6               [12] 3558 	mov	a,@r0
      003BA3 C0 E0            [24] 3559 	push	acc
      003BA5 8A 82            [24] 3560 	mov	dpl,r2
      003BA7 8B 83            [24] 3561 	mov	dph,r3
      003BA9 8C F0            [24] 3562 	mov	b,r4
      003BAB 12 26 B5         [24] 3563 	lcall	_stack_push
      003BAE E5 81            [12] 3564 	mov	a,sp
      003BB0 24 FC            [12] 3565 	add	a,#0xfc
      003BB2 F5 81            [12] 3566 	mov	sp,a
      003BB4 02 51 F0         [24] 3567 	ljmp	00249$
      003BB7                       3568 00147$:
                                   3569 ;	calc.c:194: (void)stack_push(ctx->ps, d1);
      003BB7 E5 08            [12] 3570 	mov	a,_bp
      003BB9 24 07            [12] 3571 	add	a,#0x07
      003BBB F8               [12] 3572 	mov	r0,a
      003BBC 86 82            [24] 3573 	mov	dpl,@r0
      003BBE 08               [12] 3574 	inc	r0
      003BBF 86 83            [24] 3575 	mov	dph,@r0
      003BC1 08               [12] 3576 	inc	r0
      003BC2 86 F0            [24] 3577 	mov	b,@r0
      003BC4 12 65 2D         [24] 3578 	lcall	__gptrget
      003BC7 FA               [12] 3579 	mov	r2,a
      003BC8 A3               [24] 3580 	inc	dptr
      003BC9 12 65 2D         [24] 3581 	lcall	__gptrget
      003BCC FB               [12] 3582 	mov	r3,a
      003BCD A3               [24] 3583 	inc	dptr
      003BCE 12 65 2D         [24] 3584 	lcall	__gptrget
      003BD1 FC               [12] 3585 	mov	r4,a
      003BD2 E5 08            [12] 3586 	mov	a,_bp
      003BD4 24 19            [12] 3587 	add	a,#0x19
      003BD6 F8               [12] 3588 	mov	r0,a
      003BD7 E6               [12] 3589 	mov	a,@r0
      003BD8 C0 E0            [24] 3590 	push	acc
      003BDA 08               [12] 3591 	inc	r0
      003BDB E6               [12] 3592 	mov	a,@r0
      003BDC C0 E0            [24] 3593 	push	acc
      003BDE 08               [12] 3594 	inc	r0
      003BDF E6               [12] 3595 	mov	a,@r0
      003BE0 C0 E0            [24] 3596 	push	acc
      003BE2 08               [12] 3597 	inc	r0
      003BE3 E6               [12] 3598 	mov	a,@r0
      003BE4 C0 E0            [24] 3599 	push	acc
      003BE6 8A 82            [24] 3600 	mov	dpl,r2
      003BE8 8B 83            [24] 3601 	mov	dph,r3
      003BEA 8C F0            [24] 3602 	mov	b,r4
      003BEC 12 26 B5         [24] 3603 	lcall	_stack_push
      003BEF E5 81            [12] 3604 	mov	a,sp
      003BF1 24 FC            [12] 3605 	add	a,#0xfc
      003BF3 F5 81            [12] 3606 	mov	sp,a
                                   3607 ;	calc.c:195: (void)stack_push(ctx->ss, d0);
      003BF5 E5 08            [12] 3608 	mov	a,_bp
      003BF7 24 04            [12] 3609 	add	a,#0x04
      003BF9 F8               [12] 3610 	mov	r0,a
      003BFA 86 82            [24] 3611 	mov	dpl,@r0
      003BFC 08               [12] 3612 	inc	r0
      003BFD 86 83            [24] 3613 	mov	dph,@r0
      003BFF 08               [12] 3614 	inc	r0
      003C00 86 F0            [24] 3615 	mov	b,@r0
      003C02 12 65 2D         [24] 3616 	lcall	__gptrget
      003C05 FA               [12] 3617 	mov	r2,a
      003C06 A3               [24] 3618 	inc	dptr
      003C07 12 65 2D         [24] 3619 	lcall	__gptrget
      003C0A FB               [12] 3620 	mov	r3,a
      003C0B A3               [24] 3621 	inc	dptr
      003C0C 12 65 2D         [24] 3622 	lcall	__gptrget
      003C0F FC               [12] 3623 	mov	r4,a
      003C10 E5 08            [12] 3624 	mov	a,_bp
      003C12 24 15            [12] 3625 	add	a,#0x15
      003C14 F8               [12] 3626 	mov	r0,a
      003C15 E6               [12] 3627 	mov	a,@r0
      003C16 C0 E0            [24] 3628 	push	acc
      003C18 08               [12] 3629 	inc	r0
      003C19 E6               [12] 3630 	mov	a,@r0
      003C1A C0 E0            [24] 3631 	push	acc
      003C1C 08               [12] 3632 	inc	r0
      003C1D E6               [12] 3633 	mov	a,@r0
      003C1E C0 E0            [24] 3634 	push	acc
      003C20 08               [12] 3635 	inc	r0
      003C21 E6               [12] 3636 	mov	a,@r0
      003C22 C0 E0            [24] 3637 	push	acc
      003C24 8A 82            [24] 3638 	mov	dpl,r2
      003C26 8B 83            [24] 3639 	mov	dph,r3
      003C28 8C F0            [24] 3640 	mov	b,r4
      003C2A 12 26 B5         [24] 3641 	lcall	_stack_push
      003C2D E5 81            [12] 3642 	mov	a,sp
      003C2F 24 FC            [12] 3643 	add	a,#0xfc
      003C31 F5 81            [12] 3644 	mov	sp,a
                                   3645 ;	calc.c:198: break;
      003C33 02 51 F0         [24] 3646 	ljmp	00249$
                                   3647 ;	calc.c:199: case 'X':
      003C36                       3648 00152$:
                                   3649 ;	calc.c:200: t0 = ctx->ps;
      003C36 E5 08            [12] 3650 	mov	a,_bp
      003C38 24 12            [12] 3651 	add	a,#0x12
      003C3A F8               [12] 3652 	mov	r0,a
      003C3B E5 08            [12] 3653 	mov	a,_bp
      003C3D 24 0B            [12] 3654 	add	a,#0x0b
      003C3F F9               [12] 3655 	mov	r1,a
      003C40 74 11            [12] 3656 	mov	a,#0x11
      003C42 26               [12] 3657 	add	a,@r0
      003C43 F7               [12] 3658 	mov	@r1,a
      003C44 74 40            [12] 3659 	mov	a,#0x40
      003C46 08               [12] 3660 	inc	r0
      003C47 36               [12] 3661 	addc	a,@r0
      003C48 09               [12] 3662 	inc	r1
      003C49 F7               [12] 3663 	mov	@r1,a
      003C4A 08               [12] 3664 	inc	r0
      003C4B 09               [12] 3665 	inc	r1
      003C4C E6               [12] 3666 	mov	a,@r0
      003C4D F7               [12] 3667 	mov	@r1,a
      003C4E E5 08            [12] 3668 	mov	a,_bp
      003C50 24 0B            [12] 3669 	add	a,#0x0b
      003C52 F8               [12] 3670 	mov	r0,a
      003C53 86 82            [24] 3671 	mov	dpl,@r0
      003C55 08               [12] 3672 	inc	r0
      003C56 86 83            [24] 3673 	mov	dph,@r0
      003C58 08               [12] 3674 	inc	r0
      003C59 86 F0            [24] 3675 	mov	b,@r0
      003C5B 12 65 2D         [24] 3676 	lcall	__gptrget
      003C5E FF               [12] 3677 	mov	r7,a
      003C5F A3               [24] 3678 	inc	dptr
      003C60 12 65 2D         [24] 3679 	lcall	__gptrget
      003C63 FE               [12] 3680 	mov	r6,a
      003C64 A3               [24] 3681 	inc	dptr
      003C65 12 65 2D         [24] 3682 	lcall	__gptrget
      003C68 FD               [12] 3683 	mov	r5,a
                                   3684 ;	calc.c:201: ctx->ps = ctx->ss;
      003C69 E5 08            [12] 3685 	mov	a,_bp
      003C6B 24 12            [12] 3686 	add	a,#0x12
      003C6D F8               [12] 3687 	mov	r0,a
      003C6E E5 08            [12] 3688 	mov	a,_bp
      003C70 24 07            [12] 3689 	add	a,#0x07
      003C72 F9               [12] 3690 	mov	r1,a
      003C73 74 14            [12] 3691 	mov	a,#0x14
      003C75 26               [12] 3692 	add	a,@r0
      003C76 F7               [12] 3693 	mov	@r1,a
      003C77 74 40            [12] 3694 	mov	a,#0x40
      003C79 08               [12] 3695 	inc	r0
      003C7A 36               [12] 3696 	addc	a,@r0
      003C7B 09               [12] 3697 	inc	r1
      003C7C F7               [12] 3698 	mov	@r1,a
      003C7D 08               [12] 3699 	inc	r0
      003C7E 09               [12] 3700 	inc	r1
      003C7F E6               [12] 3701 	mov	a,@r0
      003C80 F7               [12] 3702 	mov	@r1,a
      003C81 E5 08            [12] 3703 	mov	a,_bp
      003C83 24 07            [12] 3704 	add	a,#0x07
      003C85 F8               [12] 3705 	mov	r0,a
      003C86 86 82            [24] 3706 	mov	dpl,@r0
      003C88 08               [12] 3707 	inc	r0
      003C89 86 83            [24] 3708 	mov	dph,@r0
      003C8B 08               [12] 3709 	inc	r0
      003C8C 86 F0            [24] 3710 	mov	b,@r0
      003C8E 12 65 2D         [24] 3711 	lcall	__gptrget
      003C91 FA               [12] 3712 	mov	r2,a
      003C92 A3               [24] 3713 	inc	dptr
      003C93 12 65 2D         [24] 3714 	lcall	__gptrget
      003C96 FB               [12] 3715 	mov	r3,a
      003C97 A3               [24] 3716 	inc	dptr
      003C98 12 65 2D         [24] 3717 	lcall	__gptrget
      003C9B FC               [12] 3718 	mov	r4,a
      003C9C E5 08            [12] 3719 	mov	a,_bp
      003C9E 24 0B            [12] 3720 	add	a,#0x0b
      003CA0 F8               [12] 3721 	mov	r0,a
      003CA1 86 82            [24] 3722 	mov	dpl,@r0
      003CA3 08               [12] 3723 	inc	r0
      003CA4 86 83            [24] 3724 	mov	dph,@r0
      003CA6 08               [12] 3725 	inc	r0
      003CA7 86 F0            [24] 3726 	mov	b,@r0
      003CA9 EA               [12] 3727 	mov	a,r2
      003CAA 12 60 B2         [24] 3728 	lcall	__gptrput
      003CAD A3               [24] 3729 	inc	dptr
      003CAE EB               [12] 3730 	mov	a,r3
      003CAF 12 60 B2         [24] 3731 	lcall	__gptrput
      003CB2 A3               [24] 3732 	inc	dptr
      003CB3 EC               [12] 3733 	mov	a,r4
      003CB4 12 60 B2         [24] 3734 	lcall	__gptrput
                                   3735 ;	calc.c:202: ctx->ss = t0;
      003CB7 E5 08            [12] 3736 	mov	a,_bp
      003CB9 24 07            [12] 3737 	add	a,#0x07
      003CBB F8               [12] 3738 	mov	r0,a
      003CBC 86 82            [24] 3739 	mov	dpl,@r0
      003CBE 08               [12] 3740 	inc	r0
      003CBF 86 83            [24] 3741 	mov	dph,@r0
      003CC1 08               [12] 3742 	inc	r0
      003CC2 86 F0            [24] 3743 	mov	b,@r0
      003CC4 EF               [12] 3744 	mov	a,r7
      003CC5 12 60 B2         [24] 3745 	lcall	__gptrput
      003CC8 A3               [24] 3746 	inc	dptr
      003CC9 EE               [12] 3747 	mov	a,r6
      003CCA 12 60 B2         [24] 3748 	lcall	__gptrput
      003CCD A3               [24] 3749 	inc	dptr
      003CCE ED               [12] 3750 	mov	a,r5
      003CCF 12 60 B2         [24] 3751 	lcall	__gptrput
                                   3752 ;	calc.c:203: break;
      003CD2 02 51 F0         [24] 3753 	ljmp	00249$
                                   3754 ;	calc.c:204: case '+':
      003CD5                       3755 00153$:
                                   3756 ;	calc.c:205: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003CD5 E5 08            [12] 3757 	mov	a,_bp
      003CD7 24 15            [12] 3758 	add	a,#0x15
      003CD9 FF               [12] 3759 	mov	r7,a
      003CDA 7E 00            [12] 3760 	mov	r6,#0x00
      003CDC 7D 40            [12] 3761 	mov	r5,#0x40
      003CDE E5 08            [12] 3762 	mov	a,_bp
      003CE0 24 12            [12] 3763 	add	a,#0x12
      003CE2 F8               [12] 3764 	mov	r0,a
      003CE3 E5 08            [12] 3765 	mov	a,_bp
      003CE5 24 0B            [12] 3766 	add	a,#0x0b
      003CE7 F9               [12] 3767 	mov	r1,a
      003CE8 74 11            [12] 3768 	mov	a,#0x11
      003CEA 26               [12] 3769 	add	a,@r0
      003CEB F7               [12] 3770 	mov	@r1,a
      003CEC 74 40            [12] 3771 	mov	a,#0x40
      003CEE 08               [12] 3772 	inc	r0
      003CEF 36               [12] 3773 	addc	a,@r0
      003CF0 09               [12] 3774 	inc	r1
      003CF1 F7               [12] 3775 	mov	@r1,a
      003CF2 08               [12] 3776 	inc	r0
      003CF3 09               [12] 3777 	inc	r1
      003CF4 E6               [12] 3778 	mov	a,@r0
      003CF5 F7               [12] 3779 	mov	@r1,a
      003CF6 E5 08            [12] 3780 	mov	a,_bp
      003CF8 24 0B            [12] 3781 	add	a,#0x0b
      003CFA F8               [12] 3782 	mov	r0,a
      003CFB 86 82            [24] 3783 	mov	dpl,@r0
      003CFD 08               [12] 3784 	inc	r0
      003CFE 86 83            [24] 3785 	mov	dph,@r0
      003D00 08               [12] 3786 	inc	r0
      003D01 86 F0            [24] 3787 	mov	b,@r0
      003D03 12 65 2D         [24] 3788 	lcall	__gptrget
      003D06 FA               [12] 3789 	mov	r2,a
      003D07 A3               [24] 3790 	inc	dptr
      003D08 12 65 2D         [24] 3791 	lcall	__gptrget
      003D0B FB               [12] 3792 	mov	r3,a
      003D0C A3               [24] 3793 	inc	dptr
      003D0D 12 65 2D         [24] 3794 	lcall	__gptrget
      003D10 FC               [12] 3795 	mov	r4,a
      003D11 C0 07            [24] 3796 	push	ar7
      003D13 C0 06            [24] 3797 	push	ar6
      003D15 C0 05            [24] 3798 	push	ar5
      003D17 8A 82            [24] 3799 	mov	dpl,r2
      003D19 8B 83            [24] 3800 	mov	dph,r3
      003D1B 8C F0            [24] 3801 	mov	b,r4
      003D1D 12 27 7F         [24] 3802 	lcall	_stack_pop
      003D20 AB 82            [24] 3803 	mov	r3,dpl
      003D22 AC 83            [24] 3804 	mov	r4,dph
      003D24 15 81            [12] 3805 	dec	sp
      003D26 15 81            [12] 3806 	dec	sp
      003D28 15 81            [12] 3807 	dec	sp
      003D2A EB               [12] 3808 	mov	a,r3
      003D2B 4C               [12] 3809 	orl	a,r4
      003D2C 70 25            [24] 3810 	jnz	00158$
      003D2E 7F E6            [12] 3811 	mov	r7,#___str_8
      003D30 7E 7D            [12] 3812 	mov	r6,#(___str_8 >> 8)
      003D32 7D 80            [12] 3813 	mov	r5,#0x80
                                   3814 ;	calc.c:51: return;
      003D34                       3815 00424$:
                                   3816 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003D34 8F 82            [24] 3817 	mov	dpl,r7
      003D36 8E 83            [24] 3818 	mov	dph,r6
      003D38 8D F0            [24] 3819 	mov	b,r5
      003D3A 12 65 2D         [24] 3820 	lcall	__gptrget
      003D3D FC               [12] 3821 	mov	r4,a
      003D3E 70 03            [24] 3822 	jnz	01324$
      003D40 02 51 F0         [24] 3823 	ljmp	00249$
      003D43                       3824 01324$:
      003D43 7B 00            [12] 3825 	mov	r3,#0x00
      003D45 8C 82            [24] 3826 	mov	dpl,r4
      003D47 8B 83            [24] 3827 	mov	dph,r3
      003D49 12 29 C0         [24] 3828 	lcall	_putchar
      003D4C 0F               [12] 3829 	inc	r7
                                   3830 ;	calc.c:205: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003D4D BF 00 E4         [24] 3831 	cjne	r7,#0x00,00424$
      003D50 0E               [12] 3832 	inc	r6
      003D51 80 E1            [24] 3833 	sjmp	00424$
      003D53                       3834 00158$:
                                   3835 ;	calc.c:206: else if (!stack_pop(ctx->ps, &d1)) {
      003D53 E5 08            [12] 3836 	mov	a,_bp
      003D55 24 19            [12] 3837 	add	a,#0x19
      003D57 FF               [12] 3838 	mov	r7,a
      003D58 7E 00            [12] 3839 	mov	r6,#0x00
      003D5A 7D 40            [12] 3840 	mov	r5,#0x40
      003D5C E5 08            [12] 3841 	mov	a,_bp
      003D5E 24 0B            [12] 3842 	add	a,#0x0b
      003D60 F8               [12] 3843 	mov	r0,a
      003D61 86 82            [24] 3844 	mov	dpl,@r0
      003D63 08               [12] 3845 	inc	r0
      003D64 86 83            [24] 3846 	mov	dph,@r0
      003D66 08               [12] 3847 	inc	r0
      003D67 86 F0            [24] 3848 	mov	b,@r0
      003D69 12 65 2D         [24] 3849 	lcall	__gptrget
      003D6C FA               [12] 3850 	mov	r2,a
      003D6D A3               [24] 3851 	inc	dptr
      003D6E 12 65 2D         [24] 3852 	lcall	__gptrget
      003D71 FB               [12] 3853 	mov	r3,a
      003D72 A3               [24] 3854 	inc	dptr
      003D73 12 65 2D         [24] 3855 	lcall	__gptrget
      003D76 FC               [12] 3856 	mov	r4,a
      003D77 C0 07            [24] 3857 	push	ar7
      003D79 C0 06            [24] 3858 	push	ar6
      003D7B C0 05            [24] 3859 	push	ar5
      003D7D 8A 82            [24] 3860 	mov	dpl,r2
      003D7F 8B 83            [24] 3861 	mov	dph,r3
      003D81 8C F0            [24] 3862 	mov	b,r4
      003D83 12 27 7F         [24] 3863 	lcall	_stack_pop
      003D86 AB 82            [24] 3864 	mov	r3,dpl
      003D88 AC 83            [24] 3865 	mov	r4,dph
      003D8A 15 81            [12] 3866 	dec	sp
      003D8C 15 81            [12] 3867 	dec	sp
      003D8E 15 81            [12] 3868 	dec	sp
      003D90 EB               [12] 3869 	mov	a,r3
      003D91 4C               [12] 3870 	orl	a,r4
      003D92 70 63            [24] 3871 	jnz	00155$
                                   3872 ;	calc.c:207: (void)stack_push(ctx->ps, d0);
      003D94 E5 08            [12] 3873 	mov	a,_bp
      003D96 24 0B            [12] 3874 	add	a,#0x0b
      003D98 F8               [12] 3875 	mov	r0,a
      003D99 86 82            [24] 3876 	mov	dpl,@r0
      003D9B 08               [12] 3877 	inc	r0
      003D9C 86 83            [24] 3878 	mov	dph,@r0
      003D9E 08               [12] 3879 	inc	r0
      003D9F 86 F0            [24] 3880 	mov	b,@r0
      003DA1 12 65 2D         [24] 3881 	lcall	__gptrget
      003DA4 FA               [12] 3882 	mov	r2,a
      003DA5 A3               [24] 3883 	inc	dptr
      003DA6 12 65 2D         [24] 3884 	lcall	__gptrget
      003DA9 FB               [12] 3885 	mov	r3,a
      003DAA A3               [24] 3886 	inc	dptr
      003DAB 12 65 2D         [24] 3887 	lcall	__gptrget
      003DAE FC               [12] 3888 	mov	r4,a
      003DAF E5 08            [12] 3889 	mov	a,_bp
      003DB1 24 15            [12] 3890 	add	a,#0x15
      003DB3 F8               [12] 3891 	mov	r0,a
      003DB4 E6               [12] 3892 	mov	a,@r0
      003DB5 C0 E0            [24] 3893 	push	acc
      003DB7 08               [12] 3894 	inc	r0
      003DB8 E6               [12] 3895 	mov	a,@r0
      003DB9 C0 E0            [24] 3896 	push	acc
      003DBB 08               [12] 3897 	inc	r0
      003DBC E6               [12] 3898 	mov	a,@r0
      003DBD C0 E0            [24] 3899 	push	acc
      003DBF 08               [12] 3900 	inc	r0
      003DC0 E6               [12] 3901 	mov	a,@r0
      003DC1 C0 E0            [24] 3902 	push	acc
      003DC3 8A 82            [24] 3903 	mov	dpl,r2
      003DC5 8B 83            [24] 3904 	mov	dph,r3
      003DC7 8C F0            [24] 3905 	mov	b,r4
      003DC9 12 26 B5         [24] 3906 	lcall	_stack_push
      003DCC E5 81            [12] 3907 	mov	a,sp
      003DCE 24 FC            [12] 3908 	add	a,#0xfc
      003DD0 F5 81            [12] 3909 	mov	sp,a
                                   3910 ;	calc.c:208: printstr("\r\nstack underflow\r\n");
      003DD2 7F E6            [12] 3911 	mov	r7,#___str_8
      003DD4 7E 7D            [12] 3912 	mov	r6,#(___str_8 >> 8)
      003DD6 7D 80            [12] 3913 	mov	r5,#0x80
                                   3914 ;	calc.c:51: return;
      003DD8                       3915 00427$:
                                   3916 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003DD8 8F 82            [24] 3917 	mov	dpl,r7
      003DDA 8E 83            [24] 3918 	mov	dph,r6
      003DDC 8D F0            [24] 3919 	mov	b,r5
      003DDE 12 65 2D         [24] 3920 	lcall	__gptrget
      003DE1 FC               [12] 3921 	mov	r4,a
      003DE2 70 03            [24] 3922 	jnz	01327$
      003DE4 02 51 F0         [24] 3923 	ljmp	00249$
      003DE7                       3924 01327$:
      003DE7 7B 00            [12] 3925 	mov	r3,#0x00
      003DE9 8C 82            [24] 3926 	mov	dpl,r4
      003DEB 8B 83            [24] 3927 	mov	dph,r3
      003DED 12 29 C0         [24] 3928 	lcall	_putchar
      003DF0 0F               [12] 3929 	inc	r7
                                   3930 ;	calc.c:208: printstr("\r\nstack underflow\r\n");
      003DF1 BF 00 E4         [24] 3931 	cjne	r7,#0x00,00427$
      003DF4 0E               [12] 3932 	inc	r6
      003DF5 80 E1            [24] 3933 	sjmp	00427$
      003DF7                       3934 00155$:
                                   3935 ;	calc.c:210: d1 += d0;
      003DF7 E5 08            [12] 3936 	mov	a,_bp
      003DF9 24 19            [12] 3937 	add	a,#0x19
      003DFB F8               [12] 3938 	mov	r0,a
      003DFC E5 08            [12] 3939 	mov	a,_bp
      003DFE 24 15            [12] 3940 	add	a,#0x15
      003E00 F9               [12] 3941 	mov	r1,a
      003E01 E7               [12] 3942 	mov	a,@r1
      003E02 26               [12] 3943 	add	a,@r0
      003E03 F6               [12] 3944 	mov	@r0,a
      003E04 09               [12] 3945 	inc	r1
      003E05 E7               [12] 3946 	mov	a,@r1
      003E06 08               [12] 3947 	inc	r0
      003E07 36               [12] 3948 	addc	a,@r0
      003E08 F6               [12] 3949 	mov	@r0,a
      003E09 09               [12] 3950 	inc	r1
      003E0A E7               [12] 3951 	mov	a,@r1
      003E0B 08               [12] 3952 	inc	r0
      003E0C 36               [12] 3953 	addc	a,@r0
      003E0D F6               [12] 3954 	mov	@r0,a
      003E0E 09               [12] 3955 	inc	r1
      003E0F E7               [12] 3956 	mov	a,@r1
      003E10 08               [12] 3957 	inc	r0
      003E11 36               [12] 3958 	addc	a,@r0
      003E12 F6               [12] 3959 	mov	@r0,a
                                   3960 ;	calc.c:211: (void)stack_push(ctx->ps, d1);
      003E13 E5 08            [12] 3961 	mov	a,_bp
      003E15 24 0B            [12] 3962 	add	a,#0x0b
      003E17 F8               [12] 3963 	mov	r0,a
      003E18 86 82            [24] 3964 	mov	dpl,@r0
      003E1A 08               [12] 3965 	inc	r0
      003E1B 86 83            [24] 3966 	mov	dph,@r0
      003E1D 08               [12] 3967 	inc	r0
      003E1E 86 F0            [24] 3968 	mov	b,@r0
      003E20 12 65 2D         [24] 3969 	lcall	__gptrget
      003E23 FA               [12] 3970 	mov	r2,a
      003E24 A3               [24] 3971 	inc	dptr
      003E25 12 65 2D         [24] 3972 	lcall	__gptrget
      003E28 FB               [12] 3973 	mov	r3,a
      003E29 A3               [24] 3974 	inc	dptr
      003E2A 12 65 2D         [24] 3975 	lcall	__gptrget
      003E2D FC               [12] 3976 	mov	r4,a
      003E2E E5 08            [12] 3977 	mov	a,_bp
      003E30 24 19            [12] 3978 	add	a,#0x19
      003E32 F8               [12] 3979 	mov	r0,a
      003E33 E6               [12] 3980 	mov	a,@r0
      003E34 C0 E0            [24] 3981 	push	acc
      003E36 08               [12] 3982 	inc	r0
      003E37 E6               [12] 3983 	mov	a,@r0
      003E38 C0 E0            [24] 3984 	push	acc
      003E3A 08               [12] 3985 	inc	r0
      003E3B E6               [12] 3986 	mov	a,@r0
      003E3C C0 E0            [24] 3987 	push	acc
      003E3E 08               [12] 3988 	inc	r0
      003E3F E6               [12] 3989 	mov	a,@r0
      003E40 C0 E0            [24] 3990 	push	acc
      003E42 8A 82            [24] 3991 	mov	dpl,r2
      003E44 8B 83            [24] 3992 	mov	dph,r3
      003E46 8C F0            [24] 3993 	mov	b,r4
      003E48 12 26 B5         [24] 3994 	lcall	_stack_push
      003E4B E5 81            [12] 3995 	mov	a,sp
      003E4D 24 FC            [12] 3996 	add	a,#0xfc
      003E4F F5 81            [12] 3997 	mov	sp,a
                                   3998 ;	calc.c:213: break;
      003E51 02 51 F0         [24] 3999 	ljmp	00249$
                                   4000 ;	calc.c:214: case '-':
      003E54                       4001 00160$:
                                   4002 ;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003E54 E5 08            [12] 4003 	mov	a,_bp
      003E56 24 15            [12] 4004 	add	a,#0x15
      003E58 FF               [12] 4005 	mov	r7,a
      003E59 7E 00            [12] 4006 	mov	r6,#0x00
      003E5B 7D 40            [12] 4007 	mov	r5,#0x40
      003E5D E5 08            [12] 4008 	mov	a,_bp
      003E5F 24 12            [12] 4009 	add	a,#0x12
      003E61 F8               [12] 4010 	mov	r0,a
      003E62 E5 08            [12] 4011 	mov	a,_bp
      003E64 24 0B            [12] 4012 	add	a,#0x0b
      003E66 F9               [12] 4013 	mov	r1,a
      003E67 74 11            [12] 4014 	mov	a,#0x11
      003E69 26               [12] 4015 	add	a,@r0
      003E6A F7               [12] 4016 	mov	@r1,a
      003E6B 74 40            [12] 4017 	mov	a,#0x40
      003E6D 08               [12] 4018 	inc	r0
      003E6E 36               [12] 4019 	addc	a,@r0
      003E6F 09               [12] 4020 	inc	r1
      003E70 F7               [12] 4021 	mov	@r1,a
      003E71 08               [12] 4022 	inc	r0
      003E72 09               [12] 4023 	inc	r1
      003E73 E6               [12] 4024 	mov	a,@r0
      003E74 F7               [12] 4025 	mov	@r1,a
      003E75 E5 08            [12] 4026 	mov	a,_bp
      003E77 24 0B            [12] 4027 	add	a,#0x0b
      003E79 F8               [12] 4028 	mov	r0,a
      003E7A 86 82            [24] 4029 	mov	dpl,@r0
      003E7C 08               [12] 4030 	inc	r0
      003E7D 86 83            [24] 4031 	mov	dph,@r0
      003E7F 08               [12] 4032 	inc	r0
      003E80 86 F0            [24] 4033 	mov	b,@r0
      003E82 12 65 2D         [24] 4034 	lcall	__gptrget
      003E85 FA               [12] 4035 	mov	r2,a
      003E86 A3               [24] 4036 	inc	dptr
      003E87 12 65 2D         [24] 4037 	lcall	__gptrget
      003E8A FB               [12] 4038 	mov	r3,a
      003E8B A3               [24] 4039 	inc	dptr
      003E8C 12 65 2D         [24] 4040 	lcall	__gptrget
      003E8F FC               [12] 4041 	mov	r4,a
      003E90 C0 07            [24] 4042 	push	ar7
      003E92 C0 06            [24] 4043 	push	ar6
      003E94 C0 05            [24] 4044 	push	ar5
      003E96 8A 82            [24] 4045 	mov	dpl,r2
      003E98 8B 83            [24] 4046 	mov	dph,r3
      003E9A 8C F0            [24] 4047 	mov	b,r4
      003E9C 12 27 7F         [24] 4048 	lcall	_stack_pop
      003E9F AB 82            [24] 4049 	mov	r3,dpl
      003EA1 AC 83            [24] 4050 	mov	r4,dph
      003EA3 15 81            [12] 4051 	dec	sp
      003EA5 15 81            [12] 4052 	dec	sp
      003EA7 15 81            [12] 4053 	dec	sp
      003EA9 EB               [12] 4054 	mov	a,r3
      003EAA 4C               [12] 4055 	orl	a,r4
      003EAB 70 25            [24] 4056 	jnz	00165$
      003EAD 7F E6            [12] 4057 	mov	r7,#___str_8
      003EAF 7E 7D            [12] 4058 	mov	r6,#(___str_8 >> 8)
      003EB1 7D 80            [12] 4059 	mov	r5,#0x80
                                   4060 ;	calc.c:51: return;
      003EB3                       4061 00430$:
                                   4062 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003EB3 8F 82            [24] 4063 	mov	dpl,r7
      003EB5 8E 83            [24] 4064 	mov	dph,r6
      003EB7 8D F0            [24] 4065 	mov	b,r5
      003EB9 12 65 2D         [24] 4066 	lcall	__gptrget
      003EBC FC               [12] 4067 	mov	r4,a
      003EBD 70 03            [24] 4068 	jnz	01330$
      003EBF 02 51 F0         [24] 4069 	ljmp	00249$
      003EC2                       4070 01330$:
      003EC2 7B 00            [12] 4071 	mov	r3,#0x00
      003EC4 8C 82            [24] 4072 	mov	dpl,r4
      003EC6 8B 83            [24] 4073 	mov	dph,r3
      003EC8 12 29 C0         [24] 4074 	lcall	_putchar
      003ECB 0F               [12] 4075 	inc	r7
                                   4076 ;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003ECC BF 00 E4         [24] 4077 	cjne	r7,#0x00,00430$
      003ECF 0E               [12] 4078 	inc	r6
      003ED0 80 E1            [24] 4079 	sjmp	00430$
      003ED2                       4080 00165$:
                                   4081 ;	calc.c:216: else if (!stack_pop(ctx->ps, &d1)) {
      003ED2 E5 08            [12] 4082 	mov	a,_bp
      003ED4 24 19            [12] 4083 	add	a,#0x19
      003ED6 FF               [12] 4084 	mov	r7,a
      003ED7 7E 00            [12] 4085 	mov	r6,#0x00
      003ED9 7D 40            [12] 4086 	mov	r5,#0x40
      003EDB E5 08            [12] 4087 	mov	a,_bp
      003EDD 24 0B            [12] 4088 	add	a,#0x0b
      003EDF F8               [12] 4089 	mov	r0,a
      003EE0 86 82            [24] 4090 	mov	dpl,@r0
      003EE2 08               [12] 4091 	inc	r0
      003EE3 86 83            [24] 4092 	mov	dph,@r0
      003EE5 08               [12] 4093 	inc	r0
      003EE6 86 F0            [24] 4094 	mov	b,@r0
      003EE8 12 65 2D         [24] 4095 	lcall	__gptrget
      003EEB FA               [12] 4096 	mov	r2,a
      003EEC A3               [24] 4097 	inc	dptr
      003EED 12 65 2D         [24] 4098 	lcall	__gptrget
      003EF0 FB               [12] 4099 	mov	r3,a
      003EF1 A3               [24] 4100 	inc	dptr
      003EF2 12 65 2D         [24] 4101 	lcall	__gptrget
      003EF5 FC               [12] 4102 	mov	r4,a
      003EF6 C0 07            [24] 4103 	push	ar7
      003EF8 C0 06            [24] 4104 	push	ar6
      003EFA C0 05            [24] 4105 	push	ar5
      003EFC 8A 82            [24] 4106 	mov	dpl,r2
      003EFE 8B 83            [24] 4107 	mov	dph,r3
      003F00 8C F0            [24] 4108 	mov	b,r4
      003F02 12 27 7F         [24] 4109 	lcall	_stack_pop
      003F05 AB 82            [24] 4110 	mov	r3,dpl
      003F07 AC 83            [24] 4111 	mov	r4,dph
      003F09 15 81            [12] 4112 	dec	sp
      003F0B 15 81            [12] 4113 	dec	sp
      003F0D 15 81            [12] 4114 	dec	sp
      003F0F EB               [12] 4115 	mov	a,r3
      003F10 4C               [12] 4116 	orl	a,r4
      003F11 70 63            [24] 4117 	jnz	00162$
                                   4118 ;	calc.c:217: (void)stack_push(ctx->ps, d0);
      003F13 E5 08            [12] 4119 	mov	a,_bp
      003F15 24 0B            [12] 4120 	add	a,#0x0b
      003F17 F8               [12] 4121 	mov	r0,a
      003F18 86 82            [24] 4122 	mov	dpl,@r0
      003F1A 08               [12] 4123 	inc	r0
      003F1B 86 83            [24] 4124 	mov	dph,@r0
      003F1D 08               [12] 4125 	inc	r0
      003F1E 86 F0            [24] 4126 	mov	b,@r0
      003F20 12 65 2D         [24] 4127 	lcall	__gptrget
      003F23 FA               [12] 4128 	mov	r2,a
      003F24 A3               [24] 4129 	inc	dptr
      003F25 12 65 2D         [24] 4130 	lcall	__gptrget
      003F28 FB               [12] 4131 	mov	r3,a
      003F29 A3               [24] 4132 	inc	dptr
      003F2A 12 65 2D         [24] 4133 	lcall	__gptrget
      003F2D FC               [12] 4134 	mov	r4,a
      003F2E E5 08            [12] 4135 	mov	a,_bp
      003F30 24 15            [12] 4136 	add	a,#0x15
      003F32 F8               [12] 4137 	mov	r0,a
      003F33 E6               [12] 4138 	mov	a,@r0
      003F34 C0 E0            [24] 4139 	push	acc
      003F36 08               [12] 4140 	inc	r0
      003F37 E6               [12] 4141 	mov	a,@r0
      003F38 C0 E0            [24] 4142 	push	acc
      003F3A 08               [12] 4143 	inc	r0
      003F3B E6               [12] 4144 	mov	a,@r0
      003F3C C0 E0            [24] 4145 	push	acc
      003F3E 08               [12] 4146 	inc	r0
      003F3F E6               [12] 4147 	mov	a,@r0
      003F40 C0 E0            [24] 4148 	push	acc
      003F42 8A 82            [24] 4149 	mov	dpl,r2
      003F44 8B 83            [24] 4150 	mov	dph,r3
      003F46 8C F0            [24] 4151 	mov	b,r4
      003F48 12 26 B5         [24] 4152 	lcall	_stack_push
      003F4B E5 81            [12] 4153 	mov	a,sp
      003F4D 24 FC            [12] 4154 	add	a,#0xfc
      003F4F F5 81            [12] 4155 	mov	sp,a
                                   4156 ;	calc.c:218: printstr("\r\nstack underflow\r\n");
      003F51 7F E6            [12] 4157 	mov	r7,#___str_8
      003F53 7E 7D            [12] 4158 	mov	r6,#(___str_8 >> 8)
      003F55 7D 80            [12] 4159 	mov	r5,#0x80
                                   4160 ;	calc.c:51: return;
      003F57                       4161 00433$:
                                   4162 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003F57 8F 82            [24] 4163 	mov	dpl,r7
      003F59 8E 83            [24] 4164 	mov	dph,r6
      003F5B 8D F0            [24] 4165 	mov	b,r5
      003F5D 12 65 2D         [24] 4166 	lcall	__gptrget
      003F60 FC               [12] 4167 	mov	r4,a
      003F61 70 03            [24] 4168 	jnz	01333$
      003F63 02 51 F0         [24] 4169 	ljmp	00249$
      003F66                       4170 01333$:
      003F66 7B 00            [12] 4171 	mov	r3,#0x00
      003F68 8C 82            [24] 4172 	mov	dpl,r4
      003F6A 8B 83            [24] 4173 	mov	dph,r3
      003F6C 12 29 C0         [24] 4174 	lcall	_putchar
      003F6F 0F               [12] 4175 	inc	r7
                                   4176 ;	calc.c:218: printstr("\r\nstack underflow\r\n");
      003F70 BF 00 E4         [24] 4177 	cjne	r7,#0x00,00433$
      003F73 0E               [12] 4178 	inc	r6
      003F74 80 E1            [24] 4179 	sjmp	00433$
      003F76                       4180 00162$:
                                   4181 ;	calc.c:220: d1 -= d0;
      003F76 E5 08            [12] 4182 	mov	a,_bp
      003F78 24 19            [12] 4183 	add	a,#0x19
      003F7A F8               [12] 4184 	mov	r0,a
      003F7B E5 08            [12] 4185 	mov	a,_bp
      003F7D 24 15            [12] 4186 	add	a,#0x15
      003F7F F9               [12] 4187 	mov	r1,a
      003F80 E6               [12] 4188 	mov	a,@r0
      003F81 C3               [12] 4189 	clr	c
      003F82 97               [12] 4190 	subb	a,@r1
      003F83 F6               [12] 4191 	mov	@r0,a
      003F84 08               [12] 4192 	inc	r0
      003F85 E6               [12] 4193 	mov	a,@r0
      003F86 09               [12] 4194 	inc	r1
      003F87 97               [12] 4195 	subb	a,@r1
      003F88 F6               [12] 4196 	mov	@r0,a
      003F89 08               [12] 4197 	inc	r0
      003F8A E6               [12] 4198 	mov	a,@r0
      003F8B 09               [12] 4199 	inc	r1
      003F8C 97               [12] 4200 	subb	a,@r1
      003F8D F6               [12] 4201 	mov	@r0,a
      003F8E 08               [12] 4202 	inc	r0
      003F8F E6               [12] 4203 	mov	a,@r0
      003F90 09               [12] 4204 	inc	r1
      003F91 97               [12] 4205 	subb	a,@r1
      003F92 F6               [12] 4206 	mov	@r0,a
                                   4207 ;	calc.c:221: (void)stack_push(ctx->ps, d1);
      003F93 E5 08            [12] 4208 	mov	a,_bp
      003F95 24 0B            [12] 4209 	add	a,#0x0b
      003F97 F8               [12] 4210 	mov	r0,a
      003F98 86 82            [24] 4211 	mov	dpl,@r0
      003F9A 08               [12] 4212 	inc	r0
      003F9B 86 83            [24] 4213 	mov	dph,@r0
      003F9D 08               [12] 4214 	inc	r0
      003F9E 86 F0            [24] 4215 	mov	b,@r0
      003FA0 12 65 2D         [24] 4216 	lcall	__gptrget
      003FA3 FA               [12] 4217 	mov	r2,a
      003FA4 A3               [24] 4218 	inc	dptr
      003FA5 12 65 2D         [24] 4219 	lcall	__gptrget
      003FA8 FB               [12] 4220 	mov	r3,a
      003FA9 A3               [24] 4221 	inc	dptr
      003FAA 12 65 2D         [24] 4222 	lcall	__gptrget
      003FAD FC               [12] 4223 	mov	r4,a
      003FAE E5 08            [12] 4224 	mov	a,_bp
      003FB0 24 19            [12] 4225 	add	a,#0x19
      003FB2 F8               [12] 4226 	mov	r0,a
      003FB3 E6               [12] 4227 	mov	a,@r0
      003FB4 C0 E0            [24] 4228 	push	acc
      003FB6 08               [12] 4229 	inc	r0
      003FB7 E6               [12] 4230 	mov	a,@r0
      003FB8 C0 E0            [24] 4231 	push	acc
      003FBA 08               [12] 4232 	inc	r0
      003FBB E6               [12] 4233 	mov	a,@r0
      003FBC C0 E0            [24] 4234 	push	acc
      003FBE 08               [12] 4235 	inc	r0
      003FBF E6               [12] 4236 	mov	a,@r0
      003FC0 C0 E0            [24] 4237 	push	acc
      003FC2 8A 82            [24] 4238 	mov	dpl,r2
      003FC4 8B 83            [24] 4239 	mov	dph,r3
      003FC6 8C F0            [24] 4240 	mov	b,r4
      003FC8 12 26 B5         [24] 4241 	lcall	_stack_push
      003FCB E5 81            [12] 4242 	mov	a,sp
      003FCD 24 FC            [12] 4243 	add	a,#0xfc
      003FCF F5 81            [12] 4244 	mov	sp,a
                                   4245 ;	calc.c:223: break;
      003FD1 02 51 F0         [24] 4246 	ljmp	00249$
                                   4247 ;	calc.c:224: case '*':
      003FD4                       4248 00167$:
                                   4249 ;	calc.c:225: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003FD4 E5 08            [12] 4250 	mov	a,_bp
      003FD6 24 15            [12] 4251 	add	a,#0x15
      003FD8 FF               [12] 4252 	mov	r7,a
      003FD9 7E 00            [12] 4253 	mov	r6,#0x00
      003FDB 7D 40            [12] 4254 	mov	r5,#0x40
      003FDD E5 08            [12] 4255 	mov	a,_bp
      003FDF 24 12            [12] 4256 	add	a,#0x12
      003FE1 F8               [12] 4257 	mov	r0,a
      003FE2 E5 08            [12] 4258 	mov	a,_bp
      003FE4 24 0B            [12] 4259 	add	a,#0x0b
      003FE6 F9               [12] 4260 	mov	r1,a
      003FE7 74 11            [12] 4261 	mov	a,#0x11
      003FE9 26               [12] 4262 	add	a,@r0
      003FEA F7               [12] 4263 	mov	@r1,a
      003FEB 74 40            [12] 4264 	mov	a,#0x40
      003FED 08               [12] 4265 	inc	r0
      003FEE 36               [12] 4266 	addc	a,@r0
      003FEF 09               [12] 4267 	inc	r1
      003FF0 F7               [12] 4268 	mov	@r1,a
      003FF1 08               [12] 4269 	inc	r0
      003FF2 09               [12] 4270 	inc	r1
      003FF3 E6               [12] 4271 	mov	a,@r0
      003FF4 F7               [12] 4272 	mov	@r1,a
      003FF5 E5 08            [12] 4273 	mov	a,_bp
      003FF7 24 0B            [12] 4274 	add	a,#0x0b
      003FF9 F8               [12] 4275 	mov	r0,a
      003FFA 86 82            [24] 4276 	mov	dpl,@r0
      003FFC 08               [12] 4277 	inc	r0
      003FFD 86 83            [24] 4278 	mov	dph,@r0
      003FFF 08               [12] 4279 	inc	r0
      004000 86 F0            [24] 4280 	mov	b,@r0
      004002 12 65 2D         [24] 4281 	lcall	__gptrget
      004005 FA               [12] 4282 	mov	r2,a
      004006 A3               [24] 4283 	inc	dptr
      004007 12 65 2D         [24] 4284 	lcall	__gptrget
      00400A FB               [12] 4285 	mov	r3,a
      00400B A3               [24] 4286 	inc	dptr
      00400C 12 65 2D         [24] 4287 	lcall	__gptrget
      00400F FC               [12] 4288 	mov	r4,a
      004010 C0 07            [24] 4289 	push	ar7
      004012 C0 06            [24] 4290 	push	ar6
      004014 C0 05            [24] 4291 	push	ar5
      004016 8A 82            [24] 4292 	mov	dpl,r2
      004018 8B 83            [24] 4293 	mov	dph,r3
      00401A 8C F0            [24] 4294 	mov	b,r4
      00401C 12 27 7F         [24] 4295 	lcall	_stack_pop
      00401F AB 82            [24] 4296 	mov	r3,dpl
      004021 AC 83            [24] 4297 	mov	r4,dph
      004023 15 81            [12] 4298 	dec	sp
      004025 15 81            [12] 4299 	dec	sp
      004027 15 81            [12] 4300 	dec	sp
      004029 EB               [12] 4301 	mov	a,r3
      00402A 4C               [12] 4302 	orl	a,r4
      00402B 70 25            [24] 4303 	jnz	00172$
      00402D 7F E6            [12] 4304 	mov	r7,#___str_8
      00402F 7E 7D            [12] 4305 	mov	r6,#(___str_8 >> 8)
      004031 7D 80            [12] 4306 	mov	r5,#0x80
                                   4307 ;	calc.c:51: return;
      004033                       4308 00436$:
                                   4309 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004033 8F 82            [24] 4310 	mov	dpl,r7
      004035 8E 83            [24] 4311 	mov	dph,r6
      004037 8D F0            [24] 4312 	mov	b,r5
      004039 12 65 2D         [24] 4313 	lcall	__gptrget
      00403C FC               [12] 4314 	mov	r4,a
      00403D 70 03            [24] 4315 	jnz	01336$
      00403F 02 51 F0         [24] 4316 	ljmp	00249$
      004042                       4317 01336$:
      004042 7B 00            [12] 4318 	mov	r3,#0x00
      004044 8C 82            [24] 4319 	mov	dpl,r4
      004046 8B 83            [24] 4320 	mov	dph,r3
      004048 12 29 C0         [24] 4321 	lcall	_putchar
      00404B 0F               [12] 4322 	inc	r7
                                   4323 ;	calc.c:225: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00404C BF 00 E4         [24] 4324 	cjne	r7,#0x00,00436$
      00404F 0E               [12] 4325 	inc	r6
      004050 80 E1            [24] 4326 	sjmp	00436$
      004052                       4327 00172$:
                                   4328 ;	calc.c:226: else if (!stack_pop(ctx->ps, &d1)) {
      004052 E5 08            [12] 4329 	mov	a,_bp
      004054 24 19            [12] 4330 	add	a,#0x19
      004056 FF               [12] 4331 	mov	r7,a
      004057 7E 00            [12] 4332 	mov	r6,#0x00
      004059 7D 40            [12] 4333 	mov	r5,#0x40
      00405B E5 08            [12] 4334 	mov	a,_bp
      00405D 24 0B            [12] 4335 	add	a,#0x0b
      00405F F8               [12] 4336 	mov	r0,a
      004060 86 82            [24] 4337 	mov	dpl,@r0
      004062 08               [12] 4338 	inc	r0
      004063 86 83            [24] 4339 	mov	dph,@r0
      004065 08               [12] 4340 	inc	r0
      004066 86 F0            [24] 4341 	mov	b,@r0
      004068 12 65 2D         [24] 4342 	lcall	__gptrget
      00406B FA               [12] 4343 	mov	r2,a
      00406C A3               [24] 4344 	inc	dptr
      00406D 12 65 2D         [24] 4345 	lcall	__gptrget
      004070 FB               [12] 4346 	mov	r3,a
      004071 A3               [24] 4347 	inc	dptr
      004072 12 65 2D         [24] 4348 	lcall	__gptrget
      004075 FC               [12] 4349 	mov	r4,a
      004076 C0 07            [24] 4350 	push	ar7
      004078 C0 06            [24] 4351 	push	ar6
      00407A C0 05            [24] 4352 	push	ar5
      00407C 8A 82            [24] 4353 	mov	dpl,r2
      00407E 8B 83            [24] 4354 	mov	dph,r3
      004080 8C F0            [24] 4355 	mov	b,r4
      004082 12 27 7F         [24] 4356 	lcall	_stack_pop
      004085 AB 82            [24] 4357 	mov	r3,dpl
      004087 AC 83            [24] 4358 	mov	r4,dph
      004089 15 81            [12] 4359 	dec	sp
      00408B 15 81            [12] 4360 	dec	sp
      00408D 15 81            [12] 4361 	dec	sp
      00408F EB               [12] 4362 	mov	a,r3
      004090 4C               [12] 4363 	orl	a,r4
      004091 70 63            [24] 4364 	jnz	00169$
                                   4365 ;	calc.c:227: (void)stack_push(ctx->ps, d0);
      004093 E5 08            [12] 4366 	mov	a,_bp
      004095 24 0B            [12] 4367 	add	a,#0x0b
      004097 F8               [12] 4368 	mov	r0,a
      004098 86 82            [24] 4369 	mov	dpl,@r0
      00409A 08               [12] 4370 	inc	r0
      00409B 86 83            [24] 4371 	mov	dph,@r0
      00409D 08               [12] 4372 	inc	r0
      00409E 86 F0            [24] 4373 	mov	b,@r0
      0040A0 12 65 2D         [24] 4374 	lcall	__gptrget
      0040A3 FA               [12] 4375 	mov	r2,a
      0040A4 A3               [24] 4376 	inc	dptr
      0040A5 12 65 2D         [24] 4377 	lcall	__gptrget
      0040A8 FB               [12] 4378 	mov	r3,a
      0040A9 A3               [24] 4379 	inc	dptr
      0040AA 12 65 2D         [24] 4380 	lcall	__gptrget
      0040AD FC               [12] 4381 	mov	r4,a
      0040AE E5 08            [12] 4382 	mov	a,_bp
      0040B0 24 15            [12] 4383 	add	a,#0x15
      0040B2 F8               [12] 4384 	mov	r0,a
      0040B3 E6               [12] 4385 	mov	a,@r0
      0040B4 C0 E0            [24] 4386 	push	acc
      0040B6 08               [12] 4387 	inc	r0
      0040B7 E6               [12] 4388 	mov	a,@r0
      0040B8 C0 E0            [24] 4389 	push	acc
      0040BA 08               [12] 4390 	inc	r0
      0040BB E6               [12] 4391 	mov	a,@r0
      0040BC C0 E0            [24] 4392 	push	acc
      0040BE 08               [12] 4393 	inc	r0
      0040BF E6               [12] 4394 	mov	a,@r0
      0040C0 C0 E0            [24] 4395 	push	acc
      0040C2 8A 82            [24] 4396 	mov	dpl,r2
      0040C4 8B 83            [24] 4397 	mov	dph,r3
      0040C6 8C F0            [24] 4398 	mov	b,r4
      0040C8 12 26 B5         [24] 4399 	lcall	_stack_push
      0040CB E5 81            [12] 4400 	mov	a,sp
      0040CD 24 FC            [12] 4401 	add	a,#0xfc
      0040CF F5 81            [12] 4402 	mov	sp,a
                                   4403 ;	calc.c:228: printstr("\r\nstack underflow\r\n");
      0040D1 7F E6            [12] 4404 	mov	r7,#___str_8
      0040D3 7E 7D            [12] 4405 	mov	r6,#(___str_8 >> 8)
      0040D5 7D 80            [12] 4406 	mov	r5,#0x80
                                   4407 ;	calc.c:51: return;
      0040D7                       4408 00439$:
                                   4409 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0040D7 8F 82            [24] 4410 	mov	dpl,r7
      0040D9 8E 83            [24] 4411 	mov	dph,r6
      0040DB 8D F0            [24] 4412 	mov	b,r5
      0040DD 12 65 2D         [24] 4413 	lcall	__gptrget
      0040E0 FC               [12] 4414 	mov	r4,a
      0040E1 70 03            [24] 4415 	jnz	01339$
      0040E3 02 51 F0         [24] 4416 	ljmp	00249$
      0040E6                       4417 01339$:
      0040E6 7B 00            [12] 4418 	mov	r3,#0x00
      0040E8 8C 82            [24] 4419 	mov	dpl,r4
      0040EA 8B 83            [24] 4420 	mov	dph,r3
      0040EC 12 29 C0         [24] 4421 	lcall	_putchar
      0040EF 0F               [12] 4422 	inc	r7
                                   4423 ;	calc.c:228: printstr("\r\nstack underflow\r\n");
      0040F0 BF 00 E4         [24] 4424 	cjne	r7,#0x00,00439$
      0040F3 0E               [12] 4425 	inc	r6
      0040F4 80 E1            [24] 4426 	sjmp	00439$
      0040F6                       4427 00169$:
                                   4428 ;	calc.c:230: d1 *= d0;
      0040F6 E5 08            [12] 4429 	mov	a,_bp
      0040F8 24 15            [12] 4430 	add	a,#0x15
      0040FA F8               [12] 4431 	mov	r0,a
      0040FB E6               [12] 4432 	mov	a,@r0
      0040FC C0 E0            [24] 4433 	push	acc
      0040FE 08               [12] 4434 	inc	r0
      0040FF E6               [12] 4435 	mov	a,@r0
      004100 C0 E0            [24] 4436 	push	acc
      004102 08               [12] 4437 	inc	r0
      004103 E6               [12] 4438 	mov	a,@r0
      004104 C0 E0            [24] 4439 	push	acc
      004106 08               [12] 4440 	inc	r0
      004107 E6               [12] 4441 	mov	a,@r0
      004108 C0 E0            [24] 4442 	push	acc
      00410A E5 08            [12] 4443 	mov	a,_bp
      00410C 24 19            [12] 4444 	add	a,#0x19
      00410E F8               [12] 4445 	mov	r0,a
      00410F 86 82            [24] 4446 	mov	dpl,@r0
      004111 08               [12] 4447 	inc	r0
      004112 86 83            [24] 4448 	mov	dph,@r0
      004114 08               [12] 4449 	inc	r0
      004115 86 F0            [24] 4450 	mov	b,@r0
      004117 08               [12] 4451 	inc	r0
      004118 E6               [12] 4452 	mov	a,@r0
      004119 12 69 26         [24] 4453 	lcall	__mullong
      00411C AF 82            [24] 4454 	mov	r7,dpl
      00411E AE 83            [24] 4455 	mov	r6,dph
      004120 AD F0            [24] 4456 	mov	r5,b
      004122 FC               [12] 4457 	mov	r4,a
      004123 E5 81            [12] 4458 	mov	a,sp
      004125 24 FC            [12] 4459 	add	a,#0xfc
      004127 F5 81            [12] 4460 	mov	sp,a
      004129 E5 08            [12] 4461 	mov	a,_bp
      00412B 24 19            [12] 4462 	add	a,#0x19
      00412D F8               [12] 4463 	mov	r0,a
      00412E A6 07            [24] 4464 	mov	@r0,ar7
      004130 08               [12] 4465 	inc	r0
      004131 A6 06            [24] 4466 	mov	@r0,ar6
      004133 08               [12] 4467 	inc	r0
      004134 A6 05            [24] 4468 	mov	@r0,ar5
      004136 08               [12] 4469 	inc	r0
      004137 A6 04            [24] 4470 	mov	@r0,ar4
                                   4471 ;	calc.c:231: (void)stack_push(ctx->ps, d1);
      004139 E5 08            [12] 4472 	mov	a,_bp
      00413B 24 0B            [12] 4473 	add	a,#0x0b
      00413D F8               [12] 4474 	mov	r0,a
      00413E 86 82            [24] 4475 	mov	dpl,@r0
      004140 08               [12] 4476 	inc	r0
      004141 86 83            [24] 4477 	mov	dph,@r0
      004143 08               [12] 4478 	inc	r0
      004144 86 F0            [24] 4479 	mov	b,@r0
      004146 12 65 2D         [24] 4480 	lcall	__gptrget
      004149 FA               [12] 4481 	mov	r2,a
      00414A A3               [24] 4482 	inc	dptr
      00414B 12 65 2D         [24] 4483 	lcall	__gptrget
      00414E FB               [12] 4484 	mov	r3,a
      00414F A3               [24] 4485 	inc	dptr
      004150 12 65 2D         [24] 4486 	lcall	__gptrget
      004153 FC               [12] 4487 	mov	r4,a
      004154 E5 08            [12] 4488 	mov	a,_bp
      004156 24 19            [12] 4489 	add	a,#0x19
      004158 F8               [12] 4490 	mov	r0,a
      004159 E6               [12] 4491 	mov	a,@r0
      00415A C0 E0            [24] 4492 	push	acc
      00415C 08               [12] 4493 	inc	r0
      00415D E6               [12] 4494 	mov	a,@r0
      00415E C0 E0            [24] 4495 	push	acc
      004160 08               [12] 4496 	inc	r0
      004161 E6               [12] 4497 	mov	a,@r0
      004162 C0 E0            [24] 4498 	push	acc
      004164 08               [12] 4499 	inc	r0
      004165 E6               [12] 4500 	mov	a,@r0
      004166 C0 E0            [24] 4501 	push	acc
      004168 8A 82            [24] 4502 	mov	dpl,r2
      00416A 8B 83            [24] 4503 	mov	dph,r3
      00416C 8C F0            [24] 4504 	mov	b,r4
      00416E 12 26 B5         [24] 4505 	lcall	_stack_push
      004171 E5 81            [12] 4506 	mov	a,sp
      004173 24 FC            [12] 4507 	add	a,#0xfc
      004175 F5 81            [12] 4508 	mov	sp,a
                                   4509 ;	calc.c:233: break;
      004177 02 51 F0         [24] 4510 	ljmp	00249$
                                   4511 ;	calc.c:235: case '\\':
      00417A                       4512 00175$:
                                   4513 ;	calc.c:236: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00417A C0 05            [24] 4514 	push	ar5
      00417C C0 06            [24] 4515 	push	ar6
      00417E C0 07            [24] 4516 	push	ar7
      004180 E5 08            [12] 4517 	mov	a,_bp
      004182 24 15            [12] 4518 	add	a,#0x15
      004184 FC               [12] 4519 	mov	r4,a
      004185 7B 00            [12] 4520 	mov	r3,#0x00
      004187 7A 40            [12] 4521 	mov	r2,#0x40
      004189 E5 08            [12] 4522 	mov	a,_bp
      00418B 24 12            [12] 4523 	add	a,#0x12
      00418D F8               [12] 4524 	mov	r0,a
      00418E E5 08            [12] 4525 	mov	a,_bp
      004190 24 0B            [12] 4526 	add	a,#0x0b
      004192 F9               [12] 4527 	mov	r1,a
      004193 74 11            [12] 4528 	mov	a,#0x11
      004195 26               [12] 4529 	add	a,@r0
      004196 F7               [12] 4530 	mov	@r1,a
      004197 74 40            [12] 4531 	mov	a,#0x40
      004199 08               [12] 4532 	inc	r0
      00419A 36               [12] 4533 	addc	a,@r0
      00419B 09               [12] 4534 	inc	r1
      00419C F7               [12] 4535 	mov	@r1,a
      00419D 08               [12] 4536 	inc	r0
      00419E 09               [12] 4537 	inc	r1
      00419F E6               [12] 4538 	mov	a,@r0
      0041A0 F7               [12] 4539 	mov	@r1,a
      0041A1 E5 08            [12] 4540 	mov	a,_bp
      0041A3 24 0B            [12] 4541 	add	a,#0x0b
      0041A5 F8               [12] 4542 	mov	r0,a
      0041A6 86 82            [24] 4543 	mov	dpl,@r0
      0041A8 08               [12] 4544 	inc	r0
      0041A9 86 83            [24] 4545 	mov	dph,@r0
      0041AB 08               [12] 4546 	inc	r0
      0041AC 86 F0            [24] 4547 	mov	b,@r0
      0041AE 12 65 2D         [24] 4548 	lcall	__gptrget
      0041B1 FD               [12] 4549 	mov	r5,a
      0041B2 A3               [24] 4550 	inc	dptr
      0041B3 12 65 2D         [24] 4551 	lcall	__gptrget
      0041B6 FE               [12] 4552 	mov	r6,a
      0041B7 A3               [24] 4553 	inc	dptr
      0041B8 12 65 2D         [24] 4554 	lcall	__gptrget
      0041BB FF               [12] 4555 	mov	r7,a
      0041BC C0 05            [24] 4556 	push	ar5
      0041BE C0 04            [24] 4557 	push	ar4
      0041C0 C0 03            [24] 4558 	push	ar3
      0041C2 C0 02            [24] 4559 	push	ar2
      0041C4 8D 82            [24] 4560 	mov	dpl,r5
      0041C6 8E 83            [24] 4561 	mov	dph,r6
      0041C8 8F F0            [24] 4562 	mov	b,r7
      0041CA 12 27 7F         [24] 4563 	lcall	_stack_pop
      0041CD AE 82            [24] 4564 	mov	r6,dpl
      0041CF AF 83            [24] 4565 	mov	r7,dph
      0041D1 15 81            [12] 4566 	dec	sp
      0041D3 15 81            [12] 4567 	dec	sp
      0041D5 15 81            [12] 4568 	dec	sp
      0041D7 D0 05            [24] 4569 	pop	ar5
      0041D9 EE               [12] 4570 	mov	a,r6
      0041DA 4F               [12] 4571 	orl	a,r7
      0041DB D0 07            [24] 4572 	pop	ar7
      0041DD D0 06            [24] 4573 	pop	ar6
      0041DF D0 05            [24] 4574 	pop	ar5
      0041E1 70 25            [24] 4575 	jnz	00186$
      0041E3 7F E6            [12] 4576 	mov	r7,#___str_8
      0041E5 7E 7D            [12] 4577 	mov	r6,#(___str_8 >> 8)
      0041E7 7D 80            [12] 4578 	mov	r5,#0x80
                                   4579 ;	calc.c:51: return;
      0041E9                       4580 00442$:
                                   4581 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0041E9 8F 82            [24] 4582 	mov	dpl,r7
      0041EB 8E 83            [24] 4583 	mov	dph,r6
      0041ED 8D F0            [24] 4584 	mov	b,r5
      0041EF 12 65 2D         [24] 4585 	lcall	__gptrget
      0041F2 FC               [12] 4586 	mov	r4,a
      0041F3 70 03            [24] 4587 	jnz	01342$
      0041F5 02 51 F0         [24] 4588 	ljmp	00249$
      0041F8                       4589 01342$:
      0041F8 7B 00            [12] 4590 	mov	r3,#0x00
      0041FA 8C 82            [24] 4591 	mov	dpl,r4
      0041FC 8B 83            [24] 4592 	mov	dph,r3
      0041FE 12 29 C0         [24] 4593 	lcall	_putchar
      004201 0F               [12] 4594 	inc	r7
                                   4595 ;	calc.c:236: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004202 BF 00 E4         [24] 4596 	cjne	r7,#0x00,00442$
      004205 0E               [12] 4597 	inc	r6
      004206 80 E1            [24] 4598 	sjmp	00442$
      004208                       4599 00186$:
                                   4600 ;	calc.c:237: else if (!stack_pop(ctx->ps, &d1)) {
      004208 C0 05            [24] 4601 	push	ar5
      00420A C0 06            [24] 4602 	push	ar6
      00420C C0 07            [24] 4603 	push	ar7
      00420E E5 08            [12] 4604 	mov	a,_bp
      004210 24 19            [12] 4605 	add	a,#0x19
      004212 FC               [12] 4606 	mov	r4,a
      004213 7B 00            [12] 4607 	mov	r3,#0x00
      004215 7A 40            [12] 4608 	mov	r2,#0x40
      004217 E5 08            [12] 4609 	mov	a,_bp
      004219 24 0B            [12] 4610 	add	a,#0x0b
      00421B F8               [12] 4611 	mov	r0,a
      00421C 86 82            [24] 4612 	mov	dpl,@r0
      00421E 08               [12] 4613 	inc	r0
      00421F 86 83            [24] 4614 	mov	dph,@r0
      004221 08               [12] 4615 	inc	r0
      004222 86 F0            [24] 4616 	mov	b,@r0
      004224 12 65 2D         [24] 4617 	lcall	__gptrget
      004227 FD               [12] 4618 	mov	r5,a
      004228 A3               [24] 4619 	inc	dptr
      004229 12 65 2D         [24] 4620 	lcall	__gptrget
      00422C FE               [12] 4621 	mov	r6,a
      00422D A3               [24] 4622 	inc	dptr
      00422E 12 65 2D         [24] 4623 	lcall	__gptrget
      004231 FF               [12] 4624 	mov	r7,a
      004232 C0 05            [24] 4625 	push	ar5
      004234 C0 04            [24] 4626 	push	ar4
      004236 C0 03            [24] 4627 	push	ar3
      004238 C0 02            [24] 4628 	push	ar2
      00423A 8D 82            [24] 4629 	mov	dpl,r5
      00423C 8E 83            [24] 4630 	mov	dph,r6
      00423E 8F F0            [24] 4631 	mov	b,r7
      004240 12 27 7F         [24] 4632 	lcall	_stack_pop
      004243 AE 82            [24] 4633 	mov	r6,dpl
      004245 AF 83            [24] 4634 	mov	r7,dph
      004247 15 81            [12] 4635 	dec	sp
      004249 15 81            [12] 4636 	dec	sp
      00424B 15 81            [12] 4637 	dec	sp
      00424D D0 05            [24] 4638 	pop	ar5
      00424F EE               [12] 4639 	mov	a,r6
      004250 4F               [12] 4640 	orl	a,r7
      004251 D0 07            [24] 4641 	pop	ar7
      004253 D0 06            [24] 4642 	pop	ar6
      004255 D0 05            [24] 4643 	pop	ar5
      004257 70 63            [24] 4644 	jnz	00183$
                                   4645 ;	calc.c:238: (void)stack_push(ctx->ps, d0);
      004259 E5 08            [12] 4646 	mov	a,_bp
      00425B 24 0B            [12] 4647 	add	a,#0x0b
      00425D F8               [12] 4648 	mov	r0,a
      00425E 86 82            [24] 4649 	mov	dpl,@r0
      004260 08               [12] 4650 	inc	r0
      004261 86 83            [24] 4651 	mov	dph,@r0
      004263 08               [12] 4652 	inc	r0
      004264 86 F0            [24] 4653 	mov	b,@r0
      004266 12 65 2D         [24] 4654 	lcall	__gptrget
      004269 FA               [12] 4655 	mov	r2,a
      00426A A3               [24] 4656 	inc	dptr
      00426B 12 65 2D         [24] 4657 	lcall	__gptrget
      00426E FB               [12] 4658 	mov	r3,a
      00426F A3               [24] 4659 	inc	dptr
      004270 12 65 2D         [24] 4660 	lcall	__gptrget
      004273 FC               [12] 4661 	mov	r4,a
      004274 E5 08            [12] 4662 	mov	a,_bp
      004276 24 15            [12] 4663 	add	a,#0x15
      004278 F8               [12] 4664 	mov	r0,a
      004279 E6               [12] 4665 	mov	a,@r0
      00427A C0 E0            [24] 4666 	push	acc
      00427C 08               [12] 4667 	inc	r0
      00427D E6               [12] 4668 	mov	a,@r0
      00427E C0 E0            [24] 4669 	push	acc
      004280 08               [12] 4670 	inc	r0
      004281 E6               [12] 4671 	mov	a,@r0
      004282 C0 E0            [24] 4672 	push	acc
      004284 08               [12] 4673 	inc	r0
      004285 E6               [12] 4674 	mov	a,@r0
      004286 C0 E0            [24] 4675 	push	acc
      004288 8A 82            [24] 4676 	mov	dpl,r2
      00428A 8B 83            [24] 4677 	mov	dph,r3
      00428C 8C F0            [24] 4678 	mov	b,r4
      00428E 12 26 B5         [24] 4679 	lcall	_stack_push
      004291 E5 81            [12] 4680 	mov	a,sp
      004293 24 FC            [12] 4681 	add	a,#0xfc
      004295 F5 81            [12] 4682 	mov	sp,a
                                   4683 ;	calc.c:239: printstr("\r\nstack underflow\r\n");
      004297 7F E6            [12] 4684 	mov	r7,#___str_8
      004299 7E 7D            [12] 4685 	mov	r6,#(___str_8 >> 8)
      00429B 7D 80            [12] 4686 	mov	r5,#0x80
                                   4687 ;	calc.c:51: return;
      00429D                       4688 00445$:
                                   4689 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00429D 8F 82            [24] 4690 	mov	dpl,r7
      00429F 8E 83            [24] 4691 	mov	dph,r6
      0042A1 8D F0            [24] 4692 	mov	b,r5
      0042A3 12 65 2D         [24] 4693 	lcall	__gptrget
      0042A6 FC               [12] 4694 	mov	r4,a
      0042A7 70 03            [24] 4695 	jnz	01345$
      0042A9 02 51 F0         [24] 4696 	ljmp	00249$
      0042AC                       4697 01345$:
      0042AC 7B 00            [12] 4698 	mov	r3,#0x00
      0042AE 8C 82            [24] 4699 	mov	dpl,r4
      0042B0 8B 83            [24] 4700 	mov	dph,r3
      0042B2 12 29 C0         [24] 4701 	lcall	_putchar
      0042B5 0F               [12] 4702 	inc	r7
                                   4703 ;	calc.c:239: printstr("\r\nstack underflow\r\n");
      0042B6 BF 00 E4         [24] 4704 	cjne	r7,#0x00,00445$
      0042B9 0E               [12] 4705 	inc	r6
      0042BA 80 E1            [24] 4706 	sjmp	00445$
      0042BC                       4707 00183$:
                                   4708 ;	calc.c:240: } else if (!d0) {
      0042BC E5 08            [12] 4709 	mov	a,_bp
      0042BE 24 15            [12] 4710 	add	a,#0x15
      0042C0 F8               [12] 4711 	mov	r0,a
      0042C1 E6               [12] 4712 	mov	a,@r0
      0042C2 08               [12] 4713 	inc	r0
      0042C3 46               [12] 4714 	orl	a,@r0
      0042C4 08               [12] 4715 	inc	r0
      0042C5 46               [12] 4716 	orl	a,@r0
      0042C6 08               [12] 4717 	inc	r0
      0042C7 46               [12] 4718 	orl	a,@r0
      0042C8 60 03            [24] 4719 	jz	01347$
      0042CA 02 43 6E         [24] 4720 	ljmp	00180$
      0042CD                       4721 01347$:
                                   4722 ;	calc.c:241: (void)stack_push(ctx->ps, d1);
      0042CD E5 08            [12] 4723 	mov	a,_bp
      0042CF 24 0B            [12] 4724 	add	a,#0x0b
      0042D1 F8               [12] 4725 	mov	r0,a
      0042D2 86 82            [24] 4726 	mov	dpl,@r0
      0042D4 08               [12] 4727 	inc	r0
      0042D5 86 83            [24] 4728 	mov	dph,@r0
      0042D7 08               [12] 4729 	inc	r0
      0042D8 86 F0            [24] 4730 	mov	b,@r0
      0042DA 12 65 2D         [24] 4731 	lcall	__gptrget
      0042DD FA               [12] 4732 	mov	r2,a
      0042DE A3               [24] 4733 	inc	dptr
      0042DF 12 65 2D         [24] 4734 	lcall	__gptrget
      0042E2 FB               [12] 4735 	mov	r3,a
      0042E3 A3               [24] 4736 	inc	dptr
      0042E4 12 65 2D         [24] 4737 	lcall	__gptrget
      0042E7 FC               [12] 4738 	mov	r4,a
      0042E8 E5 08            [12] 4739 	mov	a,_bp
      0042EA 24 19            [12] 4740 	add	a,#0x19
      0042EC F8               [12] 4741 	mov	r0,a
      0042ED E6               [12] 4742 	mov	a,@r0
      0042EE C0 E0            [24] 4743 	push	acc
      0042F0 08               [12] 4744 	inc	r0
      0042F1 E6               [12] 4745 	mov	a,@r0
      0042F2 C0 E0            [24] 4746 	push	acc
      0042F4 08               [12] 4747 	inc	r0
      0042F5 E6               [12] 4748 	mov	a,@r0
      0042F6 C0 E0            [24] 4749 	push	acc
      0042F8 08               [12] 4750 	inc	r0
      0042F9 E6               [12] 4751 	mov	a,@r0
      0042FA C0 E0            [24] 4752 	push	acc
      0042FC 8A 82            [24] 4753 	mov	dpl,r2
      0042FE 8B 83            [24] 4754 	mov	dph,r3
      004300 8C F0            [24] 4755 	mov	b,r4
      004302 12 26 B5         [24] 4756 	lcall	_stack_push
      004305 E5 81            [12] 4757 	mov	a,sp
      004307 24 FC            [12] 4758 	add	a,#0xfc
      004309 F5 81            [12] 4759 	mov	sp,a
                                   4760 ;	calc.c:242: (void)stack_push(ctx->ps, d0);			
      00430B E5 08            [12] 4761 	mov	a,_bp
      00430D 24 0B            [12] 4762 	add	a,#0x0b
      00430F F8               [12] 4763 	mov	r0,a
      004310 86 82            [24] 4764 	mov	dpl,@r0
      004312 08               [12] 4765 	inc	r0
      004313 86 83            [24] 4766 	mov	dph,@r0
      004315 08               [12] 4767 	inc	r0
      004316 86 F0            [24] 4768 	mov	b,@r0
      004318 12 65 2D         [24] 4769 	lcall	__gptrget
      00431B FA               [12] 4770 	mov	r2,a
      00431C A3               [24] 4771 	inc	dptr
      00431D 12 65 2D         [24] 4772 	lcall	__gptrget
      004320 FB               [12] 4773 	mov	r3,a
      004321 A3               [24] 4774 	inc	dptr
      004322 12 65 2D         [24] 4775 	lcall	__gptrget
      004325 FC               [12] 4776 	mov	r4,a
      004326 E5 08            [12] 4777 	mov	a,_bp
      004328 24 15            [12] 4778 	add	a,#0x15
      00432A F8               [12] 4779 	mov	r0,a
      00432B E6               [12] 4780 	mov	a,@r0
      00432C C0 E0            [24] 4781 	push	acc
      00432E 08               [12] 4782 	inc	r0
      00432F E6               [12] 4783 	mov	a,@r0
      004330 C0 E0            [24] 4784 	push	acc
      004332 08               [12] 4785 	inc	r0
      004333 E6               [12] 4786 	mov	a,@r0
      004334 C0 E0            [24] 4787 	push	acc
      004336 08               [12] 4788 	inc	r0
      004337 E6               [12] 4789 	mov	a,@r0
      004338 C0 E0            [24] 4790 	push	acc
      00433A 8A 82            [24] 4791 	mov	dpl,r2
      00433C 8B 83            [24] 4792 	mov	dph,r3
      00433E 8C F0            [24] 4793 	mov	b,r4
      004340 12 26 B5         [24] 4794 	lcall	_stack_push
      004343 E5 81            [12] 4795 	mov	a,sp
      004345 24 FC            [12] 4796 	add	a,#0xfc
      004347 F5 81            [12] 4797 	mov	sp,a
                                   4798 ;	calc.c:243: printstr("\r\ndivision by zero\r\n");
      004349 7F 48            [12] 4799 	mov	r7,#___str_12
      00434B 7E 7E            [12] 4800 	mov	r6,#(___str_12 >> 8)
      00434D 7D 80            [12] 4801 	mov	r5,#0x80
                                   4802 ;	calc.c:51: return;
      00434F                       4803 00448$:
                                   4804 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00434F 8F 82            [24] 4805 	mov	dpl,r7
      004351 8E 83            [24] 4806 	mov	dph,r6
      004353 8D F0            [24] 4807 	mov	b,r5
      004355 12 65 2D         [24] 4808 	lcall	__gptrget
      004358 FC               [12] 4809 	mov	r4,a
      004359 70 03            [24] 4810 	jnz	01348$
      00435B 02 51 F0         [24] 4811 	ljmp	00249$
      00435E                       4812 01348$:
      00435E 7B 00            [12] 4813 	mov	r3,#0x00
      004360 8C 82            [24] 4814 	mov	dpl,r4
      004362 8B 83            [24] 4815 	mov	dph,r3
      004364 12 29 C0         [24] 4816 	lcall	_putchar
      004367 0F               [12] 4817 	inc	r7
                                   4818 ;	calc.c:243: printstr("\r\ndivision by zero\r\n");
      004368 BF 00 E4         [24] 4819 	cjne	r7,#0x00,00448$
      00436B 0E               [12] 4820 	inc	r6
      00436C 80 E1            [24] 4821 	sjmp	00448$
      00436E                       4822 00180$:
                                   4823 ;	calc.c:245: if (ctx->digit[0] == '/') d1 /= d0;
      00436E 8D 82            [24] 4824 	mov	dpl,r5
      004370 8E 83            [24] 4825 	mov	dph,r6
      004372 8F F0            [24] 4826 	mov	b,r7
      004374 12 65 2D         [24] 4827 	lcall	__gptrget
      004377 FC               [12] 4828 	mov	r4,a
      004378 BC 2F 45         [24] 4829 	cjne	r4,#0x2f,00177$
      00437B E5 08            [12] 4830 	mov	a,_bp
      00437D 24 15            [12] 4831 	add	a,#0x15
      00437F F8               [12] 4832 	mov	r0,a
      004380 E6               [12] 4833 	mov	a,@r0
      004381 C0 E0            [24] 4834 	push	acc
      004383 08               [12] 4835 	inc	r0
      004384 E6               [12] 4836 	mov	a,@r0
      004385 C0 E0            [24] 4837 	push	acc
      004387 08               [12] 4838 	inc	r0
      004388 E6               [12] 4839 	mov	a,@r0
      004389 C0 E0            [24] 4840 	push	acc
      00438B 08               [12] 4841 	inc	r0
      00438C E6               [12] 4842 	mov	a,@r0
      00438D C0 E0            [24] 4843 	push	acc
      00438F E5 08            [12] 4844 	mov	a,_bp
      004391 24 19            [12] 4845 	add	a,#0x19
      004393 F8               [12] 4846 	mov	r0,a
      004394 86 82            [24] 4847 	mov	dpl,@r0
      004396 08               [12] 4848 	inc	r0
      004397 86 83            [24] 4849 	mov	dph,@r0
      004399 08               [12] 4850 	inc	r0
      00439A 86 F0            [24] 4851 	mov	b,@r0
      00439C 08               [12] 4852 	inc	r0
      00439D E6               [12] 4853 	mov	a,@r0
      00439E 12 63 24         [24] 4854 	lcall	__divslong
      0043A1 AF 82            [24] 4855 	mov	r7,dpl
      0043A3 AE 83            [24] 4856 	mov	r6,dph
      0043A5 AD F0            [24] 4857 	mov	r5,b
      0043A7 FC               [12] 4858 	mov	r4,a
      0043A8 E5 81            [12] 4859 	mov	a,sp
      0043AA 24 FC            [12] 4860 	add	a,#0xfc
      0043AC F5 81            [12] 4861 	mov	sp,a
      0043AE E5 08            [12] 4862 	mov	a,_bp
      0043B0 24 19            [12] 4863 	add	a,#0x19
      0043B2 F8               [12] 4864 	mov	r0,a
      0043B3 A6 07            [24] 4865 	mov	@r0,ar7
      0043B5 08               [12] 4866 	inc	r0
      0043B6 A6 06            [24] 4867 	mov	@r0,ar6
      0043B8 08               [12] 4868 	inc	r0
      0043B9 A6 05            [24] 4869 	mov	@r0,ar5
      0043BB 08               [12] 4870 	inc	r0
      0043BC A6 04            [24] 4871 	mov	@r0,ar4
      0043BE 80 63            [24] 4872 	sjmp	00178$
      0043C0                       4873 00177$:
                                   4874 ;	calc.c:246: else d1 = (unsigned long)d1 / (unsigned long)d0;
      0043C0 E5 08            [12] 4875 	mov	a,_bp
      0043C2 24 19            [12] 4876 	add	a,#0x19
      0043C4 F8               [12] 4877 	mov	r0,a
      0043C5 86 07            [24] 4878 	mov	ar7,@r0
      0043C7 08               [12] 4879 	inc	r0
      0043C8 86 06            [24] 4880 	mov	ar6,@r0
      0043CA 08               [12] 4881 	inc	r0
      0043CB 86 05            [24] 4882 	mov	ar5,@r0
      0043CD 08               [12] 4883 	inc	r0
      0043CE 86 04            [24] 4884 	mov	ar4,@r0
      0043D0 E5 08            [12] 4885 	mov	a,_bp
      0043D2 24 15            [12] 4886 	add	a,#0x15
      0043D4 F8               [12] 4887 	mov	r0,a
      0043D5 E5 08            [12] 4888 	mov	a,_bp
      0043D7 24 0E            [12] 4889 	add	a,#0x0e
      0043D9 F9               [12] 4890 	mov	r1,a
      0043DA E6               [12] 4891 	mov	a,@r0
      0043DB F7               [12] 4892 	mov	@r1,a
      0043DC 08               [12] 4893 	inc	r0
      0043DD 09               [12] 4894 	inc	r1
      0043DE E6               [12] 4895 	mov	a,@r0
      0043DF F7               [12] 4896 	mov	@r1,a
      0043E0 08               [12] 4897 	inc	r0
      0043E1 09               [12] 4898 	inc	r1
      0043E2 E6               [12] 4899 	mov	a,@r0
      0043E3 F7               [12] 4900 	mov	@r1,a
      0043E4 08               [12] 4901 	inc	r0
      0043E5 09               [12] 4902 	inc	r1
      0043E6 E6               [12] 4903 	mov	a,@r0
      0043E7 F7               [12] 4904 	mov	@r1,a
      0043E8 E5 08            [12] 4905 	mov	a,_bp
      0043EA 24 0E            [12] 4906 	add	a,#0x0e
      0043EC F8               [12] 4907 	mov	r0,a
      0043ED E6               [12] 4908 	mov	a,@r0
      0043EE C0 E0            [24] 4909 	push	acc
      0043F0 08               [12] 4910 	inc	r0
      0043F1 E6               [12] 4911 	mov	a,@r0
      0043F2 C0 E0            [24] 4912 	push	acc
      0043F4 08               [12] 4913 	inc	r0
      0043F5 E6               [12] 4914 	mov	a,@r0
      0043F6 C0 E0            [24] 4915 	push	acc
      0043F8 08               [12] 4916 	inc	r0
      0043F9 E6               [12] 4917 	mov	a,@r0
      0043FA C0 E0            [24] 4918 	push	acc
      0043FC 8F 82            [24] 4919 	mov	dpl,r7
      0043FE 8E 83            [24] 4920 	mov	dph,r6
      004400 8D F0            [24] 4921 	mov	b,r5
      004402 EC               [12] 4922 	mov	a,r4
      004403 12 64 21         [24] 4923 	lcall	__divulong
      004406 AF 82            [24] 4924 	mov	r7,dpl
      004408 AE 83            [24] 4925 	mov	r6,dph
      00440A AD F0            [24] 4926 	mov	r5,b
      00440C FC               [12] 4927 	mov	r4,a
      00440D E5 81            [12] 4928 	mov	a,sp
      00440F 24 FC            [12] 4929 	add	a,#0xfc
      004411 F5 81            [12] 4930 	mov	sp,a
      004413 E5 08            [12] 4931 	mov	a,_bp
      004415 24 19            [12] 4932 	add	a,#0x19
      004417 F8               [12] 4933 	mov	r0,a
      004418 A6 07            [24] 4934 	mov	@r0,ar7
      00441A 08               [12] 4935 	inc	r0
      00441B A6 06            [24] 4936 	mov	@r0,ar6
      00441D 08               [12] 4937 	inc	r0
      00441E A6 05            [24] 4938 	mov	@r0,ar5
      004420 08               [12] 4939 	inc	r0
      004421 A6 04            [24] 4940 	mov	@r0,ar4
      004423                       4941 00178$:
                                   4942 ;	calc.c:247: (void)stack_push(ctx->ps, d1);
      004423 E5 08            [12] 4943 	mov	a,_bp
      004425 24 0B            [12] 4944 	add	a,#0x0b
      004427 F8               [12] 4945 	mov	r0,a
      004428 86 82            [24] 4946 	mov	dpl,@r0
      00442A 08               [12] 4947 	inc	r0
      00442B 86 83            [24] 4948 	mov	dph,@r0
      00442D 08               [12] 4949 	inc	r0
      00442E 86 F0            [24] 4950 	mov	b,@r0
      004430 12 65 2D         [24] 4951 	lcall	__gptrget
      004433 FA               [12] 4952 	mov	r2,a
      004434 A3               [24] 4953 	inc	dptr
      004435 12 65 2D         [24] 4954 	lcall	__gptrget
      004438 FB               [12] 4955 	mov	r3,a
      004439 A3               [24] 4956 	inc	dptr
      00443A 12 65 2D         [24] 4957 	lcall	__gptrget
      00443D FC               [12] 4958 	mov	r4,a
      00443E E5 08            [12] 4959 	mov	a,_bp
      004440 24 19            [12] 4960 	add	a,#0x19
      004442 F8               [12] 4961 	mov	r0,a
      004443 E6               [12] 4962 	mov	a,@r0
      004444 C0 E0            [24] 4963 	push	acc
      004446 08               [12] 4964 	inc	r0
      004447 E6               [12] 4965 	mov	a,@r0
      004448 C0 E0            [24] 4966 	push	acc
      00444A 08               [12] 4967 	inc	r0
      00444B E6               [12] 4968 	mov	a,@r0
      00444C C0 E0            [24] 4969 	push	acc
      00444E 08               [12] 4970 	inc	r0
      00444F E6               [12] 4971 	mov	a,@r0
      004450 C0 E0            [24] 4972 	push	acc
      004452 8A 82            [24] 4973 	mov	dpl,r2
      004454 8B 83            [24] 4974 	mov	dph,r3
      004456 8C F0            [24] 4975 	mov	b,r4
      004458 12 26 B5         [24] 4976 	lcall	_stack_push
      00445B E5 81            [12] 4977 	mov	a,sp
      00445D 24 FC            [12] 4978 	add	a,#0xfc
      00445F F5 81            [12] 4979 	mov	sp,a
                                   4980 ;	calc.c:249: break;
      004461 02 51 F0         [24] 4981 	ljmp	00249$
                                   4982 ;	calc.c:251: case '#':
      004464                       4983 00189$:
                                   4984 ;	calc.c:252: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004464 C0 05            [24] 4985 	push	ar5
      004466 C0 06            [24] 4986 	push	ar6
      004468 C0 07            [24] 4987 	push	ar7
      00446A E5 08            [12] 4988 	mov	a,_bp
      00446C 24 15            [12] 4989 	add	a,#0x15
      00446E FC               [12] 4990 	mov	r4,a
      00446F 7B 00            [12] 4991 	mov	r3,#0x00
      004471 7A 40            [12] 4992 	mov	r2,#0x40
      004473 E5 08            [12] 4993 	mov	a,_bp
      004475 24 12            [12] 4994 	add	a,#0x12
      004477 F8               [12] 4995 	mov	r0,a
      004478 E5 08            [12] 4996 	mov	a,_bp
      00447A 24 0E            [12] 4997 	add	a,#0x0e
      00447C F9               [12] 4998 	mov	r1,a
      00447D 74 11            [12] 4999 	mov	a,#0x11
      00447F 26               [12] 5000 	add	a,@r0
      004480 F7               [12] 5001 	mov	@r1,a
      004481 74 40            [12] 5002 	mov	a,#0x40
      004483 08               [12] 5003 	inc	r0
      004484 36               [12] 5004 	addc	a,@r0
      004485 09               [12] 5005 	inc	r1
      004486 F7               [12] 5006 	mov	@r1,a
      004487 08               [12] 5007 	inc	r0
      004488 09               [12] 5008 	inc	r1
      004489 E6               [12] 5009 	mov	a,@r0
      00448A F7               [12] 5010 	mov	@r1,a
      00448B E5 08            [12] 5011 	mov	a,_bp
      00448D 24 0E            [12] 5012 	add	a,#0x0e
      00448F F8               [12] 5013 	mov	r0,a
      004490 86 82            [24] 5014 	mov	dpl,@r0
      004492 08               [12] 5015 	inc	r0
      004493 86 83            [24] 5016 	mov	dph,@r0
      004495 08               [12] 5017 	inc	r0
      004496 86 F0            [24] 5018 	mov	b,@r0
      004498 12 65 2D         [24] 5019 	lcall	__gptrget
      00449B FD               [12] 5020 	mov	r5,a
      00449C A3               [24] 5021 	inc	dptr
      00449D 12 65 2D         [24] 5022 	lcall	__gptrget
      0044A0 FE               [12] 5023 	mov	r6,a
      0044A1 A3               [24] 5024 	inc	dptr
      0044A2 12 65 2D         [24] 5025 	lcall	__gptrget
      0044A5 FF               [12] 5026 	mov	r7,a
      0044A6 C0 05            [24] 5027 	push	ar5
      0044A8 C0 04            [24] 5028 	push	ar4
      0044AA C0 03            [24] 5029 	push	ar3
      0044AC C0 02            [24] 5030 	push	ar2
      0044AE 8D 82            [24] 5031 	mov	dpl,r5
      0044B0 8E 83            [24] 5032 	mov	dph,r6
      0044B2 8F F0            [24] 5033 	mov	b,r7
      0044B4 12 27 7F         [24] 5034 	lcall	_stack_pop
      0044B7 AE 82            [24] 5035 	mov	r6,dpl
      0044B9 AF 83            [24] 5036 	mov	r7,dph
      0044BB 15 81            [12] 5037 	dec	sp
      0044BD 15 81            [12] 5038 	dec	sp
      0044BF 15 81            [12] 5039 	dec	sp
      0044C1 D0 05            [24] 5040 	pop	ar5
      0044C3 EE               [12] 5041 	mov	a,r6
      0044C4 4F               [12] 5042 	orl	a,r7
      0044C5 D0 07            [24] 5043 	pop	ar7
      0044C7 D0 06            [24] 5044 	pop	ar6
      0044C9 D0 05            [24] 5045 	pop	ar5
      0044CB 70 25            [24] 5046 	jnz	00200$
      0044CD 7F E6            [12] 5047 	mov	r7,#___str_8
      0044CF 7E 7D            [12] 5048 	mov	r6,#(___str_8 >> 8)
      0044D1 7D 80            [12] 5049 	mov	r5,#0x80
                                   5050 ;	calc.c:51: return;
      0044D3                       5051 00451$:
                                   5052 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0044D3 8F 82            [24] 5053 	mov	dpl,r7
      0044D5 8E 83            [24] 5054 	mov	dph,r6
      0044D7 8D F0            [24] 5055 	mov	b,r5
      0044D9 12 65 2D         [24] 5056 	lcall	__gptrget
      0044DC FC               [12] 5057 	mov	r4,a
      0044DD 70 03            [24] 5058 	jnz	01353$
      0044DF 02 51 F0         [24] 5059 	ljmp	00249$
      0044E2                       5060 01353$:
      0044E2 7B 00            [12] 5061 	mov	r3,#0x00
      0044E4 8C 82            [24] 5062 	mov	dpl,r4
      0044E6 8B 83            [24] 5063 	mov	dph,r3
      0044E8 12 29 C0         [24] 5064 	lcall	_putchar
      0044EB 0F               [12] 5065 	inc	r7
                                   5066 ;	calc.c:252: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0044EC BF 00 E4         [24] 5067 	cjne	r7,#0x00,00451$
      0044EF 0E               [12] 5068 	inc	r6
      0044F0 80 E1            [24] 5069 	sjmp	00451$
      0044F2                       5070 00200$:
                                   5071 ;	calc.c:253: else if (!stack_pop(ctx->ps, &d1)) {
      0044F2 C0 05            [24] 5072 	push	ar5
      0044F4 C0 06            [24] 5073 	push	ar6
      0044F6 C0 07            [24] 5074 	push	ar7
      0044F8 E5 08            [12] 5075 	mov	a,_bp
      0044FA 24 19            [12] 5076 	add	a,#0x19
      0044FC FC               [12] 5077 	mov	r4,a
      0044FD 7B 00            [12] 5078 	mov	r3,#0x00
      0044FF 7A 40            [12] 5079 	mov	r2,#0x40
      004501 E5 08            [12] 5080 	mov	a,_bp
      004503 24 0E            [12] 5081 	add	a,#0x0e
      004505 F8               [12] 5082 	mov	r0,a
      004506 86 82            [24] 5083 	mov	dpl,@r0
      004508 08               [12] 5084 	inc	r0
      004509 86 83            [24] 5085 	mov	dph,@r0
      00450B 08               [12] 5086 	inc	r0
      00450C 86 F0            [24] 5087 	mov	b,@r0
      00450E 12 65 2D         [24] 5088 	lcall	__gptrget
      004511 FD               [12] 5089 	mov	r5,a
      004512 A3               [24] 5090 	inc	dptr
      004513 12 65 2D         [24] 5091 	lcall	__gptrget
      004516 FE               [12] 5092 	mov	r6,a
      004517 A3               [24] 5093 	inc	dptr
      004518 12 65 2D         [24] 5094 	lcall	__gptrget
      00451B FF               [12] 5095 	mov	r7,a
      00451C C0 05            [24] 5096 	push	ar5
      00451E C0 04            [24] 5097 	push	ar4
      004520 C0 03            [24] 5098 	push	ar3
      004522 C0 02            [24] 5099 	push	ar2
      004524 8D 82            [24] 5100 	mov	dpl,r5
      004526 8E 83            [24] 5101 	mov	dph,r6
      004528 8F F0            [24] 5102 	mov	b,r7
      00452A 12 27 7F         [24] 5103 	lcall	_stack_pop
      00452D AE 82            [24] 5104 	mov	r6,dpl
      00452F AF 83            [24] 5105 	mov	r7,dph
      004531 15 81            [12] 5106 	dec	sp
      004533 15 81            [12] 5107 	dec	sp
      004535 15 81            [12] 5108 	dec	sp
      004537 D0 05            [24] 5109 	pop	ar5
      004539 EE               [12] 5110 	mov	a,r6
      00453A 4F               [12] 5111 	orl	a,r7
      00453B D0 07            [24] 5112 	pop	ar7
      00453D D0 06            [24] 5113 	pop	ar6
      00453F D0 05            [24] 5114 	pop	ar5
      004541 70 63            [24] 5115 	jnz	00197$
                                   5116 ;	calc.c:254: (void)stack_push(ctx->ps, d0);
      004543 E5 08            [12] 5117 	mov	a,_bp
      004545 24 0E            [12] 5118 	add	a,#0x0e
      004547 F8               [12] 5119 	mov	r0,a
      004548 86 82            [24] 5120 	mov	dpl,@r0
      00454A 08               [12] 5121 	inc	r0
      00454B 86 83            [24] 5122 	mov	dph,@r0
      00454D 08               [12] 5123 	inc	r0
      00454E 86 F0            [24] 5124 	mov	b,@r0
      004550 12 65 2D         [24] 5125 	lcall	__gptrget
      004553 FA               [12] 5126 	mov	r2,a
      004554 A3               [24] 5127 	inc	dptr
      004555 12 65 2D         [24] 5128 	lcall	__gptrget
      004558 FB               [12] 5129 	mov	r3,a
      004559 A3               [24] 5130 	inc	dptr
      00455A 12 65 2D         [24] 5131 	lcall	__gptrget
      00455D FC               [12] 5132 	mov	r4,a
      00455E E5 08            [12] 5133 	mov	a,_bp
      004560 24 15            [12] 5134 	add	a,#0x15
      004562 F8               [12] 5135 	mov	r0,a
      004563 E6               [12] 5136 	mov	a,@r0
      004564 C0 E0            [24] 5137 	push	acc
      004566 08               [12] 5138 	inc	r0
      004567 E6               [12] 5139 	mov	a,@r0
      004568 C0 E0            [24] 5140 	push	acc
      00456A 08               [12] 5141 	inc	r0
      00456B E6               [12] 5142 	mov	a,@r0
      00456C C0 E0            [24] 5143 	push	acc
      00456E 08               [12] 5144 	inc	r0
      00456F E6               [12] 5145 	mov	a,@r0
      004570 C0 E0            [24] 5146 	push	acc
      004572 8A 82            [24] 5147 	mov	dpl,r2
      004574 8B 83            [24] 5148 	mov	dph,r3
      004576 8C F0            [24] 5149 	mov	b,r4
      004578 12 26 B5         [24] 5150 	lcall	_stack_push
      00457B E5 81            [12] 5151 	mov	a,sp
      00457D 24 FC            [12] 5152 	add	a,#0xfc
      00457F F5 81            [12] 5153 	mov	sp,a
                                   5154 ;	calc.c:255: printstr("\r\nstack underflow\r\n");
      004581 7F E6            [12] 5155 	mov	r7,#___str_8
      004583 7E 7D            [12] 5156 	mov	r6,#(___str_8 >> 8)
      004585 7D 80            [12] 5157 	mov	r5,#0x80
                                   5158 ;	calc.c:51: return;
      004587                       5159 00454$:
                                   5160 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004587 8F 82            [24] 5161 	mov	dpl,r7
      004589 8E 83            [24] 5162 	mov	dph,r6
      00458B 8D F0            [24] 5163 	mov	b,r5
      00458D 12 65 2D         [24] 5164 	lcall	__gptrget
      004590 FC               [12] 5165 	mov	r4,a
      004591 70 03            [24] 5166 	jnz	01356$
      004593 02 51 F0         [24] 5167 	ljmp	00249$
      004596                       5168 01356$:
      004596 7B 00            [12] 5169 	mov	r3,#0x00
      004598 8C 82            [24] 5170 	mov	dpl,r4
      00459A 8B 83            [24] 5171 	mov	dph,r3
      00459C 12 29 C0         [24] 5172 	lcall	_putchar
      00459F 0F               [12] 5173 	inc	r7
                                   5174 ;	calc.c:255: printstr("\r\nstack underflow\r\n");
      0045A0 BF 00 E4         [24] 5175 	cjne	r7,#0x00,00454$
      0045A3 0E               [12] 5176 	inc	r6
      0045A4 80 E1            [24] 5177 	sjmp	00454$
      0045A6                       5178 00197$:
                                   5179 ;	calc.c:256: } else if (!d0) {
      0045A6 E5 08            [12] 5180 	mov	a,_bp
      0045A8 24 15            [12] 5181 	add	a,#0x15
      0045AA F8               [12] 5182 	mov	r0,a
      0045AB E6               [12] 5183 	mov	a,@r0
      0045AC 08               [12] 5184 	inc	r0
      0045AD 46               [12] 5185 	orl	a,@r0
      0045AE 08               [12] 5186 	inc	r0
      0045AF 46               [12] 5187 	orl	a,@r0
      0045B0 08               [12] 5188 	inc	r0
      0045B1 46               [12] 5189 	orl	a,@r0
      0045B2 60 03            [24] 5190 	jz	01358$
      0045B4 02 46 58         [24] 5191 	ljmp	00194$
      0045B7                       5192 01358$:
                                   5193 ;	calc.c:257: (void)stack_push(ctx->ps, d1);
      0045B7 E5 08            [12] 5194 	mov	a,_bp
      0045B9 24 0E            [12] 5195 	add	a,#0x0e
      0045BB F8               [12] 5196 	mov	r0,a
      0045BC 86 82            [24] 5197 	mov	dpl,@r0
      0045BE 08               [12] 5198 	inc	r0
      0045BF 86 83            [24] 5199 	mov	dph,@r0
      0045C1 08               [12] 5200 	inc	r0
      0045C2 86 F0            [24] 5201 	mov	b,@r0
      0045C4 12 65 2D         [24] 5202 	lcall	__gptrget
      0045C7 FA               [12] 5203 	mov	r2,a
      0045C8 A3               [24] 5204 	inc	dptr
      0045C9 12 65 2D         [24] 5205 	lcall	__gptrget
      0045CC FB               [12] 5206 	mov	r3,a
      0045CD A3               [24] 5207 	inc	dptr
      0045CE 12 65 2D         [24] 5208 	lcall	__gptrget
      0045D1 FC               [12] 5209 	mov	r4,a
      0045D2 E5 08            [12] 5210 	mov	a,_bp
      0045D4 24 19            [12] 5211 	add	a,#0x19
      0045D6 F8               [12] 5212 	mov	r0,a
      0045D7 E6               [12] 5213 	mov	a,@r0
      0045D8 C0 E0            [24] 5214 	push	acc
      0045DA 08               [12] 5215 	inc	r0
      0045DB E6               [12] 5216 	mov	a,@r0
      0045DC C0 E0            [24] 5217 	push	acc
      0045DE 08               [12] 5218 	inc	r0
      0045DF E6               [12] 5219 	mov	a,@r0
      0045E0 C0 E0            [24] 5220 	push	acc
      0045E2 08               [12] 5221 	inc	r0
      0045E3 E6               [12] 5222 	mov	a,@r0
      0045E4 C0 E0            [24] 5223 	push	acc
      0045E6 8A 82            [24] 5224 	mov	dpl,r2
      0045E8 8B 83            [24] 5225 	mov	dph,r3
      0045EA 8C F0            [24] 5226 	mov	b,r4
      0045EC 12 26 B5         [24] 5227 	lcall	_stack_push
      0045EF E5 81            [12] 5228 	mov	a,sp
      0045F1 24 FC            [12] 5229 	add	a,#0xfc
      0045F3 F5 81            [12] 5230 	mov	sp,a
                                   5231 ;	calc.c:258: (void)stack_push(ctx->ps, d0);			
      0045F5 E5 08            [12] 5232 	mov	a,_bp
      0045F7 24 0E            [12] 5233 	add	a,#0x0e
      0045F9 F8               [12] 5234 	mov	r0,a
      0045FA 86 82            [24] 5235 	mov	dpl,@r0
      0045FC 08               [12] 5236 	inc	r0
      0045FD 86 83            [24] 5237 	mov	dph,@r0
      0045FF 08               [12] 5238 	inc	r0
      004600 86 F0            [24] 5239 	mov	b,@r0
      004602 12 65 2D         [24] 5240 	lcall	__gptrget
      004605 FA               [12] 5241 	mov	r2,a
      004606 A3               [24] 5242 	inc	dptr
      004607 12 65 2D         [24] 5243 	lcall	__gptrget
      00460A FB               [12] 5244 	mov	r3,a
      00460B A3               [24] 5245 	inc	dptr
      00460C 12 65 2D         [24] 5246 	lcall	__gptrget
      00460F FC               [12] 5247 	mov	r4,a
      004610 E5 08            [12] 5248 	mov	a,_bp
      004612 24 15            [12] 5249 	add	a,#0x15
      004614 F8               [12] 5250 	mov	r0,a
      004615 E6               [12] 5251 	mov	a,@r0
      004616 C0 E0            [24] 5252 	push	acc
      004618 08               [12] 5253 	inc	r0
      004619 E6               [12] 5254 	mov	a,@r0
      00461A C0 E0            [24] 5255 	push	acc
      00461C 08               [12] 5256 	inc	r0
      00461D E6               [12] 5257 	mov	a,@r0
      00461E C0 E0            [24] 5258 	push	acc
      004620 08               [12] 5259 	inc	r0
      004621 E6               [12] 5260 	mov	a,@r0
      004622 C0 E0            [24] 5261 	push	acc
      004624 8A 82            [24] 5262 	mov	dpl,r2
      004626 8B 83            [24] 5263 	mov	dph,r3
      004628 8C F0            [24] 5264 	mov	b,r4
      00462A 12 26 B5         [24] 5265 	lcall	_stack_push
      00462D E5 81            [12] 5266 	mov	a,sp
      00462F 24 FC            [12] 5267 	add	a,#0xfc
      004631 F5 81            [12] 5268 	mov	sp,a
                                   5269 ;	calc.c:259: printstr("\r\ndivision by zero\r\n");
      004633 7F 48            [12] 5270 	mov	r7,#___str_12
      004635 7E 7E            [12] 5271 	mov	r6,#(___str_12 >> 8)
      004637 7D 80            [12] 5272 	mov	r5,#0x80
                                   5273 ;	calc.c:51: return;
      004639                       5274 00457$:
                                   5275 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004639 8F 82            [24] 5276 	mov	dpl,r7
      00463B 8E 83            [24] 5277 	mov	dph,r6
      00463D 8D F0            [24] 5278 	mov	b,r5
      00463F 12 65 2D         [24] 5279 	lcall	__gptrget
      004642 FC               [12] 5280 	mov	r4,a
      004643 70 03            [24] 5281 	jnz	01359$
      004645 02 51 F0         [24] 5282 	ljmp	00249$
      004648                       5283 01359$:
      004648 7B 00            [12] 5284 	mov	r3,#0x00
      00464A 8C 82            [24] 5285 	mov	dpl,r4
      00464C 8B 83            [24] 5286 	mov	dph,r3
      00464E 12 29 C0         [24] 5287 	lcall	_putchar
      004651 0F               [12] 5288 	inc	r7
                                   5289 ;	calc.c:259: printstr("\r\ndivision by zero\r\n");
      004652 BF 00 E4         [24] 5290 	cjne	r7,#0x00,00457$
      004655 0E               [12] 5291 	inc	r6
      004656 80 E1            [24] 5292 	sjmp	00457$
      004658                       5293 00194$:
                                   5294 ;	calc.c:261: if (ctx->digit[0] == '%') d1 %= d0;
      004658 8D 82            [24] 5295 	mov	dpl,r5
      00465A 8E 83            [24] 5296 	mov	dph,r6
      00465C 8F F0            [24] 5297 	mov	b,r7
      00465E 12 65 2D         [24] 5298 	lcall	__gptrget
      004661 FD               [12] 5299 	mov	r5,a
      004662 BD 25 45         [24] 5300 	cjne	r5,#0x25,00191$
      004665 E5 08            [12] 5301 	mov	a,_bp
      004667 24 15            [12] 5302 	add	a,#0x15
      004669 F8               [12] 5303 	mov	r0,a
      00466A E6               [12] 5304 	mov	a,@r0
      00466B C0 E0            [24] 5305 	push	acc
      00466D 08               [12] 5306 	inc	r0
      00466E E6               [12] 5307 	mov	a,@r0
      00466F C0 E0            [24] 5308 	push	acc
      004671 08               [12] 5309 	inc	r0
      004672 E6               [12] 5310 	mov	a,@r0
      004673 C0 E0            [24] 5311 	push	acc
      004675 08               [12] 5312 	inc	r0
      004676 E6               [12] 5313 	mov	a,@r0
      004677 C0 E0            [24] 5314 	push	acc
      004679 E5 08            [12] 5315 	mov	a,_bp
      00467B 24 19            [12] 5316 	add	a,#0x19
      00467D F8               [12] 5317 	mov	r0,a
      00467E 86 82            [24] 5318 	mov	dpl,@r0
      004680 08               [12] 5319 	inc	r0
      004681 86 83            [24] 5320 	mov	dph,@r0
      004683 08               [12] 5321 	inc	r0
      004684 86 F0            [24] 5322 	mov	b,@r0
      004686 08               [12] 5323 	inc	r0
      004687 E6               [12] 5324 	mov	a,@r0
      004688 12 61 6B         [24] 5325 	lcall	__modslong
      00468B AC 82            [24] 5326 	mov	r4,dpl
      00468D AD 83            [24] 5327 	mov	r5,dph
      00468F AE F0            [24] 5328 	mov	r6,b
      004691 FF               [12] 5329 	mov	r7,a
      004692 E5 81            [12] 5330 	mov	a,sp
      004694 24 FC            [12] 5331 	add	a,#0xfc
      004696 F5 81            [12] 5332 	mov	sp,a
      004698 E5 08            [12] 5333 	mov	a,_bp
      00469A 24 19            [12] 5334 	add	a,#0x19
      00469C F8               [12] 5335 	mov	r0,a
      00469D A6 04            [24] 5336 	mov	@r0,ar4
      00469F 08               [12] 5337 	inc	r0
      0046A0 A6 05            [24] 5338 	mov	@r0,ar5
      0046A2 08               [12] 5339 	inc	r0
      0046A3 A6 06            [24] 5340 	mov	@r0,ar6
      0046A5 08               [12] 5341 	inc	r0
      0046A6 A6 07            [24] 5342 	mov	@r0,ar7
      0046A8 80 5F            [24] 5343 	sjmp	00192$
      0046AA                       5344 00191$:
                                   5345 ;	calc.c:262: else d1 = (unsigned long)d1 % (unsigned long)d0;
      0046AA E5 08            [12] 5346 	mov	a,_bp
      0046AC 24 19            [12] 5347 	add	a,#0x19
      0046AE F8               [12] 5348 	mov	r0,a
      0046AF E5 08            [12] 5349 	mov	a,_bp
      0046B1 24 07            [12] 5350 	add	a,#0x07
      0046B3 F9               [12] 5351 	mov	r1,a
      0046B4 E6               [12] 5352 	mov	a,@r0
      0046B5 F7               [12] 5353 	mov	@r1,a
      0046B6 08               [12] 5354 	inc	r0
      0046B7 09               [12] 5355 	inc	r1
      0046B8 E6               [12] 5356 	mov	a,@r0
      0046B9 F7               [12] 5357 	mov	@r1,a
      0046BA 08               [12] 5358 	inc	r0
      0046BB 09               [12] 5359 	inc	r1
      0046BC E6               [12] 5360 	mov	a,@r0
      0046BD F7               [12] 5361 	mov	@r1,a
      0046BE 08               [12] 5362 	inc	r0
      0046BF 09               [12] 5363 	inc	r1
      0046C0 E6               [12] 5364 	mov	a,@r0
      0046C1 F7               [12] 5365 	mov	@r1,a
      0046C2 E5 08            [12] 5366 	mov	a,_bp
      0046C4 24 15            [12] 5367 	add	a,#0x15
      0046C6 F8               [12] 5368 	mov	r0,a
      0046C7 86 02            [24] 5369 	mov	ar2,@r0
      0046C9 08               [12] 5370 	inc	r0
      0046CA 86 03            [24] 5371 	mov	ar3,@r0
      0046CC 08               [12] 5372 	inc	r0
      0046CD 86 06            [24] 5373 	mov	ar6,@r0
      0046CF 08               [12] 5374 	inc	r0
      0046D0 86 07            [24] 5375 	mov	ar7,@r0
      0046D2 C0 02            [24] 5376 	push	ar2
      0046D4 C0 03            [24] 5377 	push	ar3
      0046D6 C0 06            [24] 5378 	push	ar6
      0046D8 C0 07            [24] 5379 	push	ar7
      0046DA E5 08            [12] 5380 	mov	a,_bp
      0046DC 24 07            [12] 5381 	add	a,#0x07
      0046DE F8               [12] 5382 	mov	r0,a
      0046DF 86 82            [24] 5383 	mov	dpl,@r0
      0046E1 08               [12] 5384 	inc	r0
      0046E2 86 83            [24] 5385 	mov	dph,@r0
      0046E4 08               [12] 5386 	inc	r0
      0046E5 86 F0            [24] 5387 	mov	b,@r0
      0046E7 08               [12] 5388 	inc	r0
      0046E8 E6               [12] 5389 	mov	a,@r0
      0046E9 12 62 62         [24] 5390 	lcall	__modulong
      0046EC AC 82            [24] 5391 	mov	r4,dpl
      0046EE AD 83            [24] 5392 	mov	r5,dph
      0046F0 AE F0            [24] 5393 	mov	r6,b
      0046F2 FF               [12] 5394 	mov	r7,a
      0046F3 E5 81            [12] 5395 	mov	a,sp
      0046F5 24 FC            [12] 5396 	add	a,#0xfc
      0046F7 F5 81            [12] 5397 	mov	sp,a
      0046F9 E5 08            [12] 5398 	mov	a,_bp
      0046FB 24 19            [12] 5399 	add	a,#0x19
      0046FD F8               [12] 5400 	mov	r0,a
      0046FE A6 04            [24] 5401 	mov	@r0,ar4
      004700 08               [12] 5402 	inc	r0
      004701 A6 05            [24] 5403 	mov	@r0,ar5
      004703 08               [12] 5404 	inc	r0
      004704 A6 06            [24] 5405 	mov	@r0,ar6
      004706 08               [12] 5406 	inc	r0
      004707 A6 07            [24] 5407 	mov	@r0,ar7
      004709                       5408 00192$:
                                   5409 ;	calc.c:263: (void)stack_push(ctx->ps, d1);
      004709 E5 08            [12] 5410 	mov	a,_bp
      00470B 24 0E            [12] 5411 	add	a,#0x0e
      00470D F8               [12] 5412 	mov	r0,a
      00470E 86 82            [24] 5413 	mov	dpl,@r0
      004710 08               [12] 5414 	inc	r0
      004711 86 83            [24] 5415 	mov	dph,@r0
      004713 08               [12] 5416 	inc	r0
      004714 86 F0            [24] 5417 	mov	b,@r0
      004716 12 65 2D         [24] 5418 	lcall	__gptrget
      004719 FD               [12] 5419 	mov	r5,a
      00471A A3               [24] 5420 	inc	dptr
      00471B 12 65 2D         [24] 5421 	lcall	__gptrget
      00471E FE               [12] 5422 	mov	r6,a
      00471F A3               [24] 5423 	inc	dptr
      004720 12 65 2D         [24] 5424 	lcall	__gptrget
      004723 FF               [12] 5425 	mov	r7,a
      004724 E5 08            [12] 5426 	mov	a,_bp
      004726 24 19            [12] 5427 	add	a,#0x19
      004728 F8               [12] 5428 	mov	r0,a
      004729 E6               [12] 5429 	mov	a,@r0
      00472A C0 E0            [24] 5430 	push	acc
      00472C 08               [12] 5431 	inc	r0
      00472D E6               [12] 5432 	mov	a,@r0
      00472E C0 E0            [24] 5433 	push	acc
      004730 08               [12] 5434 	inc	r0
      004731 E6               [12] 5435 	mov	a,@r0
      004732 C0 E0            [24] 5436 	push	acc
      004734 08               [12] 5437 	inc	r0
      004735 E6               [12] 5438 	mov	a,@r0
      004736 C0 E0            [24] 5439 	push	acc
      004738 8D 82            [24] 5440 	mov	dpl,r5
      00473A 8E 83            [24] 5441 	mov	dph,r6
      00473C 8F F0            [24] 5442 	mov	b,r7
      00473E 12 26 B5         [24] 5443 	lcall	_stack_push
      004741 E5 81            [12] 5444 	mov	a,sp
      004743 24 FC            [12] 5445 	add	a,#0xfc
      004745 F5 81            [12] 5446 	mov	sp,a
                                   5447 ;	calc.c:265: break;
      004747 02 51 F0         [24] 5448 	ljmp	00249$
                                   5449 ;	calc.c:266: case '&':
      00474A                       5450 00202$:
                                   5451 ;	calc.c:267: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00474A E5 08            [12] 5452 	mov	a,_bp
      00474C 24 15            [12] 5453 	add	a,#0x15
      00474E FF               [12] 5454 	mov	r7,a
      00474F E5 08            [12] 5455 	mov	a,_bp
      004751 24 0E            [12] 5456 	add	a,#0x0e
      004753 F8               [12] 5457 	mov	r0,a
      004754 A6 07            [24] 5458 	mov	@r0,ar7
      004756 08               [12] 5459 	inc	r0
      004757 76 00            [12] 5460 	mov	@r0,#0x00
      004759 08               [12] 5461 	inc	r0
      00475A 76 40            [12] 5462 	mov	@r0,#0x40
      00475C E5 08            [12] 5463 	mov	a,_bp
      00475E 24 12            [12] 5464 	add	a,#0x12
      004760 F8               [12] 5465 	mov	r0,a
      004761 74 11            [12] 5466 	mov	a,#0x11
      004763 26               [12] 5467 	add	a,@r0
      004764 FA               [12] 5468 	mov	r2,a
      004765 74 40            [12] 5469 	mov	a,#0x40
      004767 08               [12] 5470 	inc	r0
      004768 36               [12] 5471 	addc	a,@r0
      004769 FB               [12] 5472 	mov	r3,a
      00476A 08               [12] 5473 	inc	r0
      00476B 86 04            [24] 5474 	mov	ar4,@r0
      00476D 8A 82            [24] 5475 	mov	dpl,r2
      00476F 8B 83            [24] 5476 	mov	dph,r3
      004771 8C F0            [24] 5477 	mov	b,r4
      004773 12 65 2D         [24] 5478 	lcall	__gptrget
      004776 FD               [12] 5479 	mov	r5,a
      004777 A3               [24] 5480 	inc	dptr
      004778 12 65 2D         [24] 5481 	lcall	__gptrget
      00477B FE               [12] 5482 	mov	r6,a
      00477C A3               [24] 5483 	inc	dptr
      00477D 12 65 2D         [24] 5484 	lcall	__gptrget
      004780 FF               [12] 5485 	mov	r7,a
      004781 C0 04            [24] 5486 	push	ar4
      004783 C0 03            [24] 5487 	push	ar3
      004785 C0 02            [24] 5488 	push	ar2
      004787 E5 08            [12] 5489 	mov	a,_bp
      004789 24 0E            [12] 5490 	add	a,#0x0e
      00478B F8               [12] 5491 	mov	r0,a
      00478C E6               [12] 5492 	mov	a,@r0
      00478D C0 E0            [24] 5493 	push	acc
      00478F 08               [12] 5494 	inc	r0
      004790 E6               [12] 5495 	mov	a,@r0
      004791 C0 E0            [24] 5496 	push	acc
      004793 08               [12] 5497 	inc	r0
      004794 E6               [12] 5498 	mov	a,@r0
      004795 C0 E0            [24] 5499 	push	acc
      004797 8D 82            [24] 5500 	mov	dpl,r5
      004799 8E 83            [24] 5501 	mov	dph,r6
      00479B 8F F0            [24] 5502 	mov	b,r7
      00479D 12 27 7F         [24] 5503 	lcall	_stack_pop
      0047A0 AE 82            [24] 5504 	mov	r6,dpl
      0047A2 AF 83            [24] 5505 	mov	r7,dph
      0047A4 15 81            [12] 5506 	dec	sp
      0047A6 15 81            [12] 5507 	dec	sp
      0047A8 15 81            [12] 5508 	dec	sp
      0047AA D0 02            [24] 5509 	pop	ar2
      0047AC D0 03            [24] 5510 	pop	ar3
      0047AE D0 04            [24] 5511 	pop	ar4
      0047B0 EE               [12] 5512 	mov	a,r6
      0047B1 4F               [12] 5513 	orl	a,r7
      0047B2 70 25            [24] 5514 	jnz	00207$
      0047B4 7D E6            [12] 5515 	mov	r5,#___str_8
      0047B6 7C 7D            [12] 5516 	mov	r4,#(___str_8 >> 8)
      0047B8 7B 80            [12] 5517 	mov	r3,#0x80
                                   5518 ;	calc.c:51: return;
      0047BA                       5519 00460$:
                                   5520 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0047BA 8D 82            [24] 5521 	mov	dpl,r5
      0047BC 8C 83            [24] 5522 	mov	dph,r4
      0047BE 8B F0            [24] 5523 	mov	b,r3
      0047C0 12 65 2D         [24] 5524 	lcall	__gptrget
      0047C3 FF               [12] 5525 	mov	r7,a
      0047C4 70 03            [24] 5526 	jnz	01364$
      0047C6 02 51 F0         [24] 5527 	ljmp	00249$
      0047C9                       5528 01364$:
      0047C9 7E 00            [12] 5529 	mov	r6,#0x00
      0047CB 8F 82            [24] 5530 	mov	dpl,r7
      0047CD 8E 83            [24] 5531 	mov	dph,r6
      0047CF 12 29 C0         [24] 5532 	lcall	_putchar
      0047D2 0D               [12] 5533 	inc	r5
                                   5534 ;	calc.c:267: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0047D3 BD 00 E4         [24] 5535 	cjne	r5,#0x00,00460$
      0047D6 0C               [12] 5536 	inc	r4
      0047D7 80 E1            [24] 5537 	sjmp	00460$
      0047D9                       5538 00207$:
                                   5539 ;	calc.c:268: else if (!stack_pop(ctx->ps, &d1)) {
      0047D9 E5 08            [12] 5540 	mov	a,_bp
      0047DB 24 19            [12] 5541 	add	a,#0x19
      0047DD FF               [12] 5542 	mov	r7,a
      0047DE E5 08            [12] 5543 	mov	a,_bp
      0047E0 24 0E            [12] 5544 	add	a,#0x0e
      0047E2 F8               [12] 5545 	mov	r0,a
      0047E3 A6 07            [24] 5546 	mov	@r0,ar7
      0047E5 08               [12] 5547 	inc	r0
      0047E6 76 00            [12] 5548 	mov	@r0,#0x00
      0047E8 08               [12] 5549 	inc	r0
      0047E9 76 40            [12] 5550 	mov	@r0,#0x40
      0047EB 8A 82            [24] 5551 	mov	dpl,r2
      0047ED 8B 83            [24] 5552 	mov	dph,r3
      0047EF 8C F0            [24] 5553 	mov	b,r4
      0047F1 12 65 2D         [24] 5554 	lcall	__gptrget
      0047F4 FD               [12] 5555 	mov	r5,a
      0047F5 A3               [24] 5556 	inc	dptr
      0047F6 12 65 2D         [24] 5557 	lcall	__gptrget
      0047F9 FE               [12] 5558 	mov	r6,a
      0047FA A3               [24] 5559 	inc	dptr
      0047FB 12 65 2D         [24] 5560 	lcall	__gptrget
      0047FE FF               [12] 5561 	mov	r7,a
      0047FF C0 04            [24] 5562 	push	ar4
      004801 C0 03            [24] 5563 	push	ar3
      004803 C0 02            [24] 5564 	push	ar2
      004805 E5 08            [12] 5565 	mov	a,_bp
      004807 24 0E            [12] 5566 	add	a,#0x0e
      004809 F8               [12] 5567 	mov	r0,a
      00480A E6               [12] 5568 	mov	a,@r0
      00480B C0 E0            [24] 5569 	push	acc
      00480D 08               [12] 5570 	inc	r0
      00480E E6               [12] 5571 	mov	a,@r0
      00480F C0 E0            [24] 5572 	push	acc
      004811 08               [12] 5573 	inc	r0
      004812 E6               [12] 5574 	mov	a,@r0
      004813 C0 E0            [24] 5575 	push	acc
      004815 8D 82            [24] 5576 	mov	dpl,r5
      004817 8E 83            [24] 5577 	mov	dph,r6
      004819 8F F0            [24] 5578 	mov	b,r7
      00481B 12 27 7F         [24] 5579 	lcall	_stack_pop
      00481E AE 82            [24] 5580 	mov	r6,dpl
      004820 AF 83            [24] 5581 	mov	r7,dph
      004822 15 81            [12] 5582 	dec	sp
      004824 15 81            [12] 5583 	dec	sp
      004826 15 81            [12] 5584 	dec	sp
      004828 D0 02            [24] 5585 	pop	ar2
      00482A D0 03            [24] 5586 	pop	ar3
      00482C D0 04            [24] 5587 	pop	ar4
      00482E EE               [12] 5588 	mov	a,r6
      00482F 4F               [12] 5589 	orl	a,r7
      004830 70 5C            [24] 5590 	jnz	00204$
                                   5591 ;	calc.c:269: (void)stack_push(ctx->ps, d0);
      004832 8A 82            [24] 5592 	mov	dpl,r2
      004834 8B 83            [24] 5593 	mov	dph,r3
      004836 8C F0            [24] 5594 	mov	b,r4
      004838 12 65 2D         [24] 5595 	lcall	__gptrget
      00483B FD               [12] 5596 	mov	r5,a
      00483C A3               [24] 5597 	inc	dptr
      00483D 12 65 2D         [24] 5598 	lcall	__gptrget
      004840 FE               [12] 5599 	mov	r6,a
      004841 A3               [24] 5600 	inc	dptr
      004842 12 65 2D         [24] 5601 	lcall	__gptrget
      004845 FF               [12] 5602 	mov	r7,a
      004846 E5 08            [12] 5603 	mov	a,_bp
      004848 24 15            [12] 5604 	add	a,#0x15
      00484A F8               [12] 5605 	mov	r0,a
      00484B E6               [12] 5606 	mov	a,@r0
      00484C C0 E0            [24] 5607 	push	acc
      00484E 08               [12] 5608 	inc	r0
      00484F E6               [12] 5609 	mov	a,@r0
      004850 C0 E0            [24] 5610 	push	acc
      004852 08               [12] 5611 	inc	r0
      004853 E6               [12] 5612 	mov	a,@r0
      004854 C0 E0            [24] 5613 	push	acc
      004856 08               [12] 5614 	inc	r0
      004857 E6               [12] 5615 	mov	a,@r0
      004858 C0 E0            [24] 5616 	push	acc
      00485A 8D 82            [24] 5617 	mov	dpl,r5
      00485C 8E 83            [24] 5618 	mov	dph,r6
      00485E 8F F0            [24] 5619 	mov	b,r7
      004860 12 26 B5         [24] 5620 	lcall	_stack_push
      004863 E5 81            [12] 5621 	mov	a,sp
      004865 24 FC            [12] 5622 	add	a,#0xfc
      004867 F5 81            [12] 5623 	mov	sp,a
                                   5624 ;	calc.c:270: printstr("\r\nstack underflow\r\n");
      004869 7D E6            [12] 5625 	mov	r5,#___str_8
      00486B 7C 7D            [12] 5626 	mov	r4,#(___str_8 >> 8)
      00486D 7B 80            [12] 5627 	mov	r3,#0x80
                                   5628 ;	calc.c:51: return;
      00486F                       5629 00463$:
                                   5630 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00486F 8D 82            [24] 5631 	mov	dpl,r5
      004871 8C 83            [24] 5632 	mov	dph,r4
      004873 8B F0            [24] 5633 	mov	b,r3
      004875 12 65 2D         [24] 5634 	lcall	__gptrget
      004878 FF               [12] 5635 	mov	r7,a
      004879 70 03            [24] 5636 	jnz	01367$
      00487B 02 51 F0         [24] 5637 	ljmp	00249$
      00487E                       5638 01367$:
      00487E 7E 00            [12] 5639 	mov	r6,#0x00
      004880 8F 82            [24] 5640 	mov	dpl,r7
      004882 8E 83            [24] 5641 	mov	dph,r6
      004884 12 29 C0         [24] 5642 	lcall	_putchar
      004887 0D               [12] 5643 	inc	r5
                                   5644 ;	calc.c:270: printstr("\r\nstack underflow\r\n");
      004888 BD 00 E4         [24] 5645 	cjne	r5,#0x00,00463$
      00488B 0C               [12] 5646 	inc	r4
      00488C 80 E1            [24] 5647 	sjmp	00463$
      00488E                       5648 00204$:
                                   5649 ;	calc.c:272: d1 &= d0;
      00488E E5 08            [12] 5650 	mov	a,_bp
      004890 24 19            [12] 5651 	add	a,#0x19
      004892 F8               [12] 5652 	mov	r0,a
      004893 E5 08            [12] 5653 	mov	a,_bp
      004895 24 15            [12] 5654 	add	a,#0x15
      004897 F9               [12] 5655 	mov	r1,a
      004898 E7               [12] 5656 	mov	a,@r1
      004899 56               [12] 5657 	anl	a,@r0
      00489A F6               [12] 5658 	mov	@r0,a
      00489B 09               [12] 5659 	inc	r1
      00489C E7               [12] 5660 	mov	a,@r1
      00489D 08               [12] 5661 	inc	r0
      00489E 56               [12] 5662 	anl	a,@r0
      00489F F6               [12] 5663 	mov	@r0,a
      0048A0 09               [12] 5664 	inc	r1
      0048A1 E7               [12] 5665 	mov	a,@r1
      0048A2 08               [12] 5666 	inc	r0
      0048A3 56               [12] 5667 	anl	a,@r0
      0048A4 F6               [12] 5668 	mov	@r0,a
      0048A5 09               [12] 5669 	inc	r1
      0048A6 E7               [12] 5670 	mov	a,@r1
      0048A7 08               [12] 5671 	inc	r0
      0048A8 56               [12] 5672 	anl	a,@r0
      0048A9 F6               [12] 5673 	mov	@r0,a
                                   5674 ;	calc.c:273: (void)stack_push(ctx->ps, d1);
      0048AA 8A 82            [24] 5675 	mov	dpl,r2
      0048AC 8B 83            [24] 5676 	mov	dph,r3
      0048AE 8C F0            [24] 5677 	mov	b,r4
      0048B0 12 65 2D         [24] 5678 	lcall	__gptrget
      0048B3 FA               [12] 5679 	mov	r2,a
      0048B4 A3               [24] 5680 	inc	dptr
      0048B5 12 65 2D         [24] 5681 	lcall	__gptrget
      0048B8 FB               [12] 5682 	mov	r3,a
      0048B9 A3               [24] 5683 	inc	dptr
      0048BA 12 65 2D         [24] 5684 	lcall	__gptrget
      0048BD FC               [12] 5685 	mov	r4,a
      0048BE E5 08            [12] 5686 	mov	a,_bp
      0048C0 24 19            [12] 5687 	add	a,#0x19
      0048C2 F8               [12] 5688 	mov	r0,a
      0048C3 E6               [12] 5689 	mov	a,@r0
      0048C4 C0 E0            [24] 5690 	push	acc
      0048C6 08               [12] 5691 	inc	r0
      0048C7 E6               [12] 5692 	mov	a,@r0
      0048C8 C0 E0            [24] 5693 	push	acc
      0048CA 08               [12] 5694 	inc	r0
      0048CB E6               [12] 5695 	mov	a,@r0
      0048CC C0 E0            [24] 5696 	push	acc
      0048CE 08               [12] 5697 	inc	r0
      0048CF E6               [12] 5698 	mov	a,@r0
      0048D0 C0 E0            [24] 5699 	push	acc
      0048D2 8A 82            [24] 5700 	mov	dpl,r2
      0048D4 8B 83            [24] 5701 	mov	dph,r3
      0048D6 8C F0            [24] 5702 	mov	b,r4
      0048D8 12 26 B5         [24] 5703 	lcall	_stack_push
      0048DB E5 81            [12] 5704 	mov	a,sp
      0048DD 24 FC            [12] 5705 	add	a,#0xfc
      0048DF F5 81            [12] 5706 	mov	sp,a
                                   5707 ;	calc.c:275: break;
      0048E1 02 51 F0         [24] 5708 	ljmp	00249$
                                   5709 ;	calc.c:276: case '|':
      0048E4                       5710 00209$:
                                   5711 ;	calc.c:277: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0048E4 E5 08            [12] 5712 	mov	a,_bp
      0048E6 24 15            [12] 5713 	add	a,#0x15
      0048E8 FF               [12] 5714 	mov	r7,a
      0048E9 E5 08            [12] 5715 	mov	a,_bp
      0048EB 24 0E            [12] 5716 	add	a,#0x0e
      0048ED F8               [12] 5717 	mov	r0,a
      0048EE A6 07            [24] 5718 	mov	@r0,ar7
      0048F0 08               [12] 5719 	inc	r0
      0048F1 76 00            [12] 5720 	mov	@r0,#0x00
      0048F3 08               [12] 5721 	inc	r0
      0048F4 76 40            [12] 5722 	mov	@r0,#0x40
      0048F6 E5 08            [12] 5723 	mov	a,_bp
      0048F8 24 12            [12] 5724 	add	a,#0x12
      0048FA F8               [12] 5725 	mov	r0,a
      0048FB 74 11            [12] 5726 	mov	a,#0x11
      0048FD 26               [12] 5727 	add	a,@r0
      0048FE FA               [12] 5728 	mov	r2,a
      0048FF 74 40            [12] 5729 	mov	a,#0x40
      004901 08               [12] 5730 	inc	r0
      004902 36               [12] 5731 	addc	a,@r0
      004903 FB               [12] 5732 	mov	r3,a
      004904 08               [12] 5733 	inc	r0
      004905 86 04            [24] 5734 	mov	ar4,@r0
      004907 8A 82            [24] 5735 	mov	dpl,r2
      004909 8B 83            [24] 5736 	mov	dph,r3
      00490B 8C F0            [24] 5737 	mov	b,r4
      00490D 12 65 2D         [24] 5738 	lcall	__gptrget
      004910 FD               [12] 5739 	mov	r5,a
      004911 A3               [24] 5740 	inc	dptr
      004912 12 65 2D         [24] 5741 	lcall	__gptrget
      004915 FE               [12] 5742 	mov	r6,a
      004916 A3               [24] 5743 	inc	dptr
      004917 12 65 2D         [24] 5744 	lcall	__gptrget
      00491A FF               [12] 5745 	mov	r7,a
      00491B C0 04            [24] 5746 	push	ar4
      00491D C0 03            [24] 5747 	push	ar3
      00491F C0 02            [24] 5748 	push	ar2
      004921 E5 08            [12] 5749 	mov	a,_bp
      004923 24 0E            [12] 5750 	add	a,#0x0e
      004925 F8               [12] 5751 	mov	r0,a
      004926 E6               [12] 5752 	mov	a,@r0
      004927 C0 E0            [24] 5753 	push	acc
      004929 08               [12] 5754 	inc	r0
      00492A E6               [12] 5755 	mov	a,@r0
      00492B C0 E0            [24] 5756 	push	acc
      00492D 08               [12] 5757 	inc	r0
      00492E E6               [12] 5758 	mov	a,@r0
      00492F C0 E0            [24] 5759 	push	acc
      004931 8D 82            [24] 5760 	mov	dpl,r5
      004933 8E 83            [24] 5761 	mov	dph,r6
      004935 8F F0            [24] 5762 	mov	b,r7
      004937 12 27 7F         [24] 5763 	lcall	_stack_pop
      00493A AE 82            [24] 5764 	mov	r6,dpl
      00493C AF 83            [24] 5765 	mov	r7,dph
      00493E 15 81            [12] 5766 	dec	sp
      004940 15 81            [12] 5767 	dec	sp
      004942 15 81            [12] 5768 	dec	sp
      004944 D0 02            [24] 5769 	pop	ar2
      004946 D0 03            [24] 5770 	pop	ar3
      004948 D0 04            [24] 5771 	pop	ar4
      00494A EE               [12] 5772 	mov	a,r6
      00494B 4F               [12] 5773 	orl	a,r7
      00494C 70 25            [24] 5774 	jnz	00214$
      00494E 7D E6            [12] 5775 	mov	r5,#___str_8
      004950 7C 7D            [12] 5776 	mov	r4,#(___str_8 >> 8)
      004952 7B 80            [12] 5777 	mov	r3,#0x80
                                   5778 ;	calc.c:51: return;
      004954                       5779 00466$:
                                   5780 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004954 8D 82            [24] 5781 	mov	dpl,r5
      004956 8C 83            [24] 5782 	mov	dph,r4
      004958 8B F0            [24] 5783 	mov	b,r3
      00495A 12 65 2D         [24] 5784 	lcall	__gptrget
      00495D FF               [12] 5785 	mov	r7,a
      00495E 70 03            [24] 5786 	jnz	01370$
      004960 02 51 F0         [24] 5787 	ljmp	00249$
      004963                       5788 01370$:
      004963 7E 00            [12] 5789 	mov	r6,#0x00
      004965 8F 82            [24] 5790 	mov	dpl,r7
      004967 8E 83            [24] 5791 	mov	dph,r6
      004969 12 29 C0         [24] 5792 	lcall	_putchar
      00496C 0D               [12] 5793 	inc	r5
                                   5794 ;	calc.c:277: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00496D BD 00 E4         [24] 5795 	cjne	r5,#0x00,00466$
      004970 0C               [12] 5796 	inc	r4
      004971 80 E1            [24] 5797 	sjmp	00466$
      004973                       5798 00214$:
                                   5799 ;	calc.c:278: else if (!stack_pop(ctx->ps, &d1)) {
      004973 E5 08            [12] 5800 	mov	a,_bp
      004975 24 19            [12] 5801 	add	a,#0x19
      004977 FF               [12] 5802 	mov	r7,a
      004978 E5 08            [12] 5803 	mov	a,_bp
      00497A 24 0E            [12] 5804 	add	a,#0x0e
      00497C F8               [12] 5805 	mov	r0,a
      00497D A6 07            [24] 5806 	mov	@r0,ar7
      00497F 08               [12] 5807 	inc	r0
      004980 76 00            [12] 5808 	mov	@r0,#0x00
      004982 08               [12] 5809 	inc	r0
      004983 76 40            [12] 5810 	mov	@r0,#0x40
      004985 8A 82            [24] 5811 	mov	dpl,r2
      004987 8B 83            [24] 5812 	mov	dph,r3
      004989 8C F0            [24] 5813 	mov	b,r4
      00498B 12 65 2D         [24] 5814 	lcall	__gptrget
      00498E FD               [12] 5815 	mov	r5,a
      00498F A3               [24] 5816 	inc	dptr
      004990 12 65 2D         [24] 5817 	lcall	__gptrget
      004993 FE               [12] 5818 	mov	r6,a
      004994 A3               [24] 5819 	inc	dptr
      004995 12 65 2D         [24] 5820 	lcall	__gptrget
      004998 FF               [12] 5821 	mov	r7,a
      004999 C0 04            [24] 5822 	push	ar4
      00499B C0 03            [24] 5823 	push	ar3
      00499D C0 02            [24] 5824 	push	ar2
      00499F E5 08            [12] 5825 	mov	a,_bp
      0049A1 24 0E            [12] 5826 	add	a,#0x0e
      0049A3 F8               [12] 5827 	mov	r0,a
      0049A4 E6               [12] 5828 	mov	a,@r0
      0049A5 C0 E0            [24] 5829 	push	acc
      0049A7 08               [12] 5830 	inc	r0
      0049A8 E6               [12] 5831 	mov	a,@r0
      0049A9 C0 E0            [24] 5832 	push	acc
      0049AB 08               [12] 5833 	inc	r0
      0049AC E6               [12] 5834 	mov	a,@r0
      0049AD C0 E0            [24] 5835 	push	acc
      0049AF 8D 82            [24] 5836 	mov	dpl,r5
      0049B1 8E 83            [24] 5837 	mov	dph,r6
      0049B3 8F F0            [24] 5838 	mov	b,r7
      0049B5 12 27 7F         [24] 5839 	lcall	_stack_pop
      0049B8 AE 82            [24] 5840 	mov	r6,dpl
      0049BA AF 83            [24] 5841 	mov	r7,dph
      0049BC 15 81            [12] 5842 	dec	sp
      0049BE 15 81            [12] 5843 	dec	sp
      0049C0 15 81            [12] 5844 	dec	sp
      0049C2 D0 02            [24] 5845 	pop	ar2
      0049C4 D0 03            [24] 5846 	pop	ar3
      0049C6 D0 04            [24] 5847 	pop	ar4
      0049C8 EE               [12] 5848 	mov	a,r6
      0049C9 4F               [12] 5849 	orl	a,r7
      0049CA 70 5C            [24] 5850 	jnz	00211$
                                   5851 ;	calc.c:279: (void)stack_push(ctx->ps, d0);
      0049CC 8A 82            [24] 5852 	mov	dpl,r2
      0049CE 8B 83            [24] 5853 	mov	dph,r3
      0049D0 8C F0            [24] 5854 	mov	b,r4
      0049D2 12 65 2D         [24] 5855 	lcall	__gptrget
      0049D5 FD               [12] 5856 	mov	r5,a
      0049D6 A3               [24] 5857 	inc	dptr
      0049D7 12 65 2D         [24] 5858 	lcall	__gptrget
      0049DA FE               [12] 5859 	mov	r6,a
      0049DB A3               [24] 5860 	inc	dptr
      0049DC 12 65 2D         [24] 5861 	lcall	__gptrget
      0049DF FF               [12] 5862 	mov	r7,a
      0049E0 E5 08            [12] 5863 	mov	a,_bp
      0049E2 24 15            [12] 5864 	add	a,#0x15
      0049E4 F8               [12] 5865 	mov	r0,a
      0049E5 E6               [12] 5866 	mov	a,@r0
      0049E6 C0 E0            [24] 5867 	push	acc
      0049E8 08               [12] 5868 	inc	r0
      0049E9 E6               [12] 5869 	mov	a,@r0
      0049EA C0 E0            [24] 5870 	push	acc
      0049EC 08               [12] 5871 	inc	r0
      0049ED E6               [12] 5872 	mov	a,@r0
      0049EE C0 E0            [24] 5873 	push	acc
      0049F0 08               [12] 5874 	inc	r0
      0049F1 E6               [12] 5875 	mov	a,@r0
      0049F2 C0 E0            [24] 5876 	push	acc
      0049F4 8D 82            [24] 5877 	mov	dpl,r5
      0049F6 8E 83            [24] 5878 	mov	dph,r6
      0049F8 8F F0            [24] 5879 	mov	b,r7
      0049FA 12 26 B5         [24] 5880 	lcall	_stack_push
      0049FD E5 81            [12] 5881 	mov	a,sp
      0049FF 24 FC            [12] 5882 	add	a,#0xfc
      004A01 F5 81            [12] 5883 	mov	sp,a
                                   5884 ;	calc.c:280: printstr("\r\nstack underflow\r\n");
      004A03 7D E6            [12] 5885 	mov	r5,#___str_8
      004A05 7C 7D            [12] 5886 	mov	r4,#(___str_8 >> 8)
      004A07 7B 80            [12] 5887 	mov	r3,#0x80
                                   5888 ;	calc.c:51: return;
      004A09                       5889 00469$:
                                   5890 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004A09 8D 82            [24] 5891 	mov	dpl,r5
      004A0B 8C 83            [24] 5892 	mov	dph,r4
      004A0D 8B F0            [24] 5893 	mov	b,r3
      004A0F 12 65 2D         [24] 5894 	lcall	__gptrget
      004A12 FF               [12] 5895 	mov	r7,a
      004A13 70 03            [24] 5896 	jnz	01373$
      004A15 02 51 F0         [24] 5897 	ljmp	00249$
      004A18                       5898 01373$:
      004A18 7E 00            [12] 5899 	mov	r6,#0x00
      004A1A 8F 82            [24] 5900 	mov	dpl,r7
      004A1C 8E 83            [24] 5901 	mov	dph,r6
      004A1E 12 29 C0         [24] 5902 	lcall	_putchar
      004A21 0D               [12] 5903 	inc	r5
                                   5904 ;	calc.c:280: printstr("\r\nstack underflow\r\n");
      004A22 BD 00 E4         [24] 5905 	cjne	r5,#0x00,00469$
      004A25 0C               [12] 5906 	inc	r4
      004A26 80 E1            [24] 5907 	sjmp	00469$
      004A28                       5908 00211$:
                                   5909 ;	calc.c:282: d1 |= d0;
      004A28 E5 08            [12] 5910 	mov	a,_bp
      004A2A 24 19            [12] 5911 	add	a,#0x19
      004A2C F8               [12] 5912 	mov	r0,a
      004A2D E5 08            [12] 5913 	mov	a,_bp
      004A2F 24 15            [12] 5914 	add	a,#0x15
      004A31 F9               [12] 5915 	mov	r1,a
      004A32 E7               [12] 5916 	mov	a,@r1
      004A33 46               [12] 5917 	orl	a,@r0
      004A34 F6               [12] 5918 	mov	@r0,a
      004A35 09               [12] 5919 	inc	r1
      004A36 E7               [12] 5920 	mov	a,@r1
      004A37 08               [12] 5921 	inc	r0
      004A38 46               [12] 5922 	orl	a,@r0
      004A39 F6               [12] 5923 	mov	@r0,a
      004A3A 09               [12] 5924 	inc	r1
      004A3B E7               [12] 5925 	mov	a,@r1
      004A3C 08               [12] 5926 	inc	r0
      004A3D 46               [12] 5927 	orl	a,@r0
      004A3E F6               [12] 5928 	mov	@r0,a
      004A3F 09               [12] 5929 	inc	r1
      004A40 E7               [12] 5930 	mov	a,@r1
      004A41 08               [12] 5931 	inc	r0
      004A42 46               [12] 5932 	orl	a,@r0
      004A43 F6               [12] 5933 	mov	@r0,a
                                   5934 ;	calc.c:283: (void)stack_push(ctx->ps, d1);
      004A44 8A 82            [24] 5935 	mov	dpl,r2
      004A46 8B 83            [24] 5936 	mov	dph,r3
      004A48 8C F0            [24] 5937 	mov	b,r4
      004A4A 12 65 2D         [24] 5938 	lcall	__gptrget
      004A4D FA               [12] 5939 	mov	r2,a
      004A4E A3               [24] 5940 	inc	dptr
      004A4F 12 65 2D         [24] 5941 	lcall	__gptrget
      004A52 FB               [12] 5942 	mov	r3,a
      004A53 A3               [24] 5943 	inc	dptr
      004A54 12 65 2D         [24] 5944 	lcall	__gptrget
      004A57 FC               [12] 5945 	mov	r4,a
      004A58 E5 08            [12] 5946 	mov	a,_bp
      004A5A 24 19            [12] 5947 	add	a,#0x19
      004A5C F8               [12] 5948 	mov	r0,a
      004A5D E6               [12] 5949 	mov	a,@r0
      004A5E C0 E0            [24] 5950 	push	acc
      004A60 08               [12] 5951 	inc	r0
      004A61 E6               [12] 5952 	mov	a,@r0
      004A62 C0 E0            [24] 5953 	push	acc
      004A64 08               [12] 5954 	inc	r0
      004A65 E6               [12] 5955 	mov	a,@r0
      004A66 C0 E0            [24] 5956 	push	acc
      004A68 08               [12] 5957 	inc	r0
      004A69 E6               [12] 5958 	mov	a,@r0
      004A6A C0 E0            [24] 5959 	push	acc
      004A6C 8A 82            [24] 5960 	mov	dpl,r2
      004A6E 8B 83            [24] 5961 	mov	dph,r3
      004A70 8C F0            [24] 5962 	mov	b,r4
      004A72 12 26 B5         [24] 5963 	lcall	_stack_push
      004A75 E5 81            [12] 5964 	mov	a,sp
      004A77 24 FC            [12] 5965 	add	a,#0xfc
      004A79 F5 81            [12] 5966 	mov	sp,a
                                   5967 ;	calc.c:285: break;
      004A7B 02 51 F0         [24] 5968 	ljmp	00249$
                                   5969 ;	calc.c:286: case '^':
      004A7E                       5970 00216$:
                                   5971 ;	calc.c:287: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004A7E E5 08            [12] 5972 	mov	a,_bp
      004A80 24 15            [12] 5973 	add	a,#0x15
      004A82 FF               [12] 5974 	mov	r7,a
      004A83 E5 08            [12] 5975 	mov	a,_bp
      004A85 24 0E            [12] 5976 	add	a,#0x0e
      004A87 F8               [12] 5977 	mov	r0,a
      004A88 A6 07            [24] 5978 	mov	@r0,ar7
      004A8A 08               [12] 5979 	inc	r0
      004A8B 76 00            [12] 5980 	mov	@r0,#0x00
      004A8D 08               [12] 5981 	inc	r0
      004A8E 76 40            [12] 5982 	mov	@r0,#0x40
      004A90 E5 08            [12] 5983 	mov	a,_bp
      004A92 24 12            [12] 5984 	add	a,#0x12
      004A94 F8               [12] 5985 	mov	r0,a
      004A95 74 11            [12] 5986 	mov	a,#0x11
      004A97 26               [12] 5987 	add	a,@r0
      004A98 FA               [12] 5988 	mov	r2,a
      004A99 74 40            [12] 5989 	mov	a,#0x40
      004A9B 08               [12] 5990 	inc	r0
      004A9C 36               [12] 5991 	addc	a,@r0
      004A9D FB               [12] 5992 	mov	r3,a
      004A9E 08               [12] 5993 	inc	r0
      004A9F 86 04            [24] 5994 	mov	ar4,@r0
      004AA1 8A 82            [24] 5995 	mov	dpl,r2
      004AA3 8B 83            [24] 5996 	mov	dph,r3
      004AA5 8C F0            [24] 5997 	mov	b,r4
      004AA7 12 65 2D         [24] 5998 	lcall	__gptrget
      004AAA FD               [12] 5999 	mov	r5,a
      004AAB A3               [24] 6000 	inc	dptr
      004AAC 12 65 2D         [24] 6001 	lcall	__gptrget
      004AAF FE               [12] 6002 	mov	r6,a
      004AB0 A3               [24] 6003 	inc	dptr
      004AB1 12 65 2D         [24] 6004 	lcall	__gptrget
      004AB4 FF               [12] 6005 	mov	r7,a
      004AB5 C0 04            [24] 6006 	push	ar4
      004AB7 C0 03            [24] 6007 	push	ar3
      004AB9 C0 02            [24] 6008 	push	ar2
      004ABB E5 08            [12] 6009 	mov	a,_bp
      004ABD 24 0E            [12] 6010 	add	a,#0x0e
      004ABF F8               [12] 6011 	mov	r0,a
      004AC0 E6               [12] 6012 	mov	a,@r0
      004AC1 C0 E0            [24] 6013 	push	acc
      004AC3 08               [12] 6014 	inc	r0
      004AC4 E6               [12] 6015 	mov	a,@r0
      004AC5 C0 E0            [24] 6016 	push	acc
      004AC7 08               [12] 6017 	inc	r0
      004AC8 E6               [12] 6018 	mov	a,@r0
      004AC9 C0 E0            [24] 6019 	push	acc
      004ACB 8D 82            [24] 6020 	mov	dpl,r5
      004ACD 8E 83            [24] 6021 	mov	dph,r6
      004ACF 8F F0            [24] 6022 	mov	b,r7
      004AD1 12 27 7F         [24] 6023 	lcall	_stack_pop
      004AD4 AE 82            [24] 6024 	mov	r6,dpl
      004AD6 AF 83            [24] 6025 	mov	r7,dph
      004AD8 15 81            [12] 6026 	dec	sp
      004ADA 15 81            [12] 6027 	dec	sp
      004ADC 15 81            [12] 6028 	dec	sp
      004ADE D0 02            [24] 6029 	pop	ar2
      004AE0 D0 03            [24] 6030 	pop	ar3
      004AE2 D0 04            [24] 6031 	pop	ar4
      004AE4 EE               [12] 6032 	mov	a,r6
      004AE5 4F               [12] 6033 	orl	a,r7
      004AE6 70 25            [24] 6034 	jnz	00221$
      004AE8 7D E6            [12] 6035 	mov	r5,#___str_8
      004AEA 7C 7D            [12] 6036 	mov	r4,#(___str_8 >> 8)
      004AEC 7B 80            [12] 6037 	mov	r3,#0x80
                                   6038 ;	calc.c:51: return;
      004AEE                       6039 00472$:
                                   6040 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004AEE 8D 82            [24] 6041 	mov	dpl,r5
      004AF0 8C 83            [24] 6042 	mov	dph,r4
      004AF2 8B F0            [24] 6043 	mov	b,r3
      004AF4 12 65 2D         [24] 6044 	lcall	__gptrget
      004AF7 FF               [12] 6045 	mov	r7,a
      004AF8 70 03            [24] 6046 	jnz	01376$
      004AFA 02 51 F0         [24] 6047 	ljmp	00249$
      004AFD                       6048 01376$:
      004AFD 7E 00            [12] 6049 	mov	r6,#0x00
      004AFF 8F 82            [24] 6050 	mov	dpl,r7
      004B01 8E 83            [24] 6051 	mov	dph,r6
      004B03 12 29 C0         [24] 6052 	lcall	_putchar
      004B06 0D               [12] 6053 	inc	r5
                                   6054 ;	calc.c:287: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004B07 BD 00 E4         [24] 6055 	cjne	r5,#0x00,00472$
      004B0A 0C               [12] 6056 	inc	r4
      004B0B 80 E1            [24] 6057 	sjmp	00472$
      004B0D                       6058 00221$:
                                   6059 ;	calc.c:288: else if (!stack_pop(ctx->ps, &d1)) {
      004B0D E5 08            [12] 6060 	mov	a,_bp
      004B0F 24 19            [12] 6061 	add	a,#0x19
      004B11 FF               [12] 6062 	mov	r7,a
      004B12 E5 08            [12] 6063 	mov	a,_bp
      004B14 24 0E            [12] 6064 	add	a,#0x0e
      004B16 F8               [12] 6065 	mov	r0,a
      004B17 A6 07            [24] 6066 	mov	@r0,ar7
      004B19 08               [12] 6067 	inc	r0
      004B1A 76 00            [12] 6068 	mov	@r0,#0x00
      004B1C 08               [12] 6069 	inc	r0
      004B1D 76 40            [12] 6070 	mov	@r0,#0x40
      004B1F 8A 82            [24] 6071 	mov	dpl,r2
      004B21 8B 83            [24] 6072 	mov	dph,r3
      004B23 8C F0            [24] 6073 	mov	b,r4
      004B25 12 65 2D         [24] 6074 	lcall	__gptrget
      004B28 FD               [12] 6075 	mov	r5,a
      004B29 A3               [24] 6076 	inc	dptr
      004B2A 12 65 2D         [24] 6077 	lcall	__gptrget
      004B2D FE               [12] 6078 	mov	r6,a
      004B2E A3               [24] 6079 	inc	dptr
      004B2F 12 65 2D         [24] 6080 	lcall	__gptrget
      004B32 FF               [12] 6081 	mov	r7,a
      004B33 C0 04            [24] 6082 	push	ar4
      004B35 C0 03            [24] 6083 	push	ar3
      004B37 C0 02            [24] 6084 	push	ar2
      004B39 E5 08            [12] 6085 	mov	a,_bp
      004B3B 24 0E            [12] 6086 	add	a,#0x0e
      004B3D F8               [12] 6087 	mov	r0,a
      004B3E E6               [12] 6088 	mov	a,@r0
      004B3F C0 E0            [24] 6089 	push	acc
      004B41 08               [12] 6090 	inc	r0
      004B42 E6               [12] 6091 	mov	a,@r0
      004B43 C0 E0            [24] 6092 	push	acc
      004B45 08               [12] 6093 	inc	r0
      004B46 E6               [12] 6094 	mov	a,@r0
      004B47 C0 E0            [24] 6095 	push	acc
      004B49 8D 82            [24] 6096 	mov	dpl,r5
      004B4B 8E 83            [24] 6097 	mov	dph,r6
      004B4D 8F F0            [24] 6098 	mov	b,r7
      004B4F 12 27 7F         [24] 6099 	lcall	_stack_pop
      004B52 AE 82            [24] 6100 	mov	r6,dpl
      004B54 AF 83            [24] 6101 	mov	r7,dph
      004B56 15 81            [12] 6102 	dec	sp
      004B58 15 81            [12] 6103 	dec	sp
      004B5A 15 81            [12] 6104 	dec	sp
      004B5C D0 02            [24] 6105 	pop	ar2
      004B5E D0 03            [24] 6106 	pop	ar3
      004B60 D0 04            [24] 6107 	pop	ar4
      004B62 EE               [12] 6108 	mov	a,r6
      004B63 4F               [12] 6109 	orl	a,r7
      004B64 70 5C            [24] 6110 	jnz	00218$
                                   6111 ;	calc.c:289: (void)stack_push(ctx->ps, d0);
      004B66 8A 82            [24] 6112 	mov	dpl,r2
      004B68 8B 83            [24] 6113 	mov	dph,r3
      004B6A 8C F0            [24] 6114 	mov	b,r4
      004B6C 12 65 2D         [24] 6115 	lcall	__gptrget
      004B6F FD               [12] 6116 	mov	r5,a
      004B70 A3               [24] 6117 	inc	dptr
      004B71 12 65 2D         [24] 6118 	lcall	__gptrget
      004B74 FE               [12] 6119 	mov	r6,a
      004B75 A3               [24] 6120 	inc	dptr
      004B76 12 65 2D         [24] 6121 	lcall	__gptrget
      004B79 FF               [12] 6122 	mov	r7,a
      004B7A E5 08            [12] 6123 	mov	a,_bp
      004B7C 24 15            [12] 6124 	add	a,#0x15
      004B7E F8               [12] 6125 	mov	r0,a
      004B7F E6               [12] 6126 	mov	a,@r0
      004B80 C0 E0            [24] 6127 	push	acc
      004B82 08               [12] 6128 	inc	r0
      004B83 E6               [12] 6129 	mov	a,@r0
      004B84 C0 E0            [24] 6130 	push	acc
      004B86 08               [12] 6131 	inc	r0
      004B87 E6               [12] 6132 	mov	a,@r0
      004B88 C0 E0            [24] 6133 	push	acc
      004B8A 08               [12] 6134 	inc	r0
      004B8B E6               [12] 6135 	mov	a,@r0
      004B8C C0 E0            [24] 6136 	push	acc
      004B8E 8D 82            [24] 6137 	mov	dpl,r5
      004B90 8E 83            [24] 6138 	mov	dph,r6
      004B92 8F F0            [24] 6139 	mov	b,r7
      004B94 12 26 B5         [24] 6140 	lcall	_stack_push
      004B97 E5 81            [12] 6141 	mov	a,sp
      004B99 24 FC            [12] 6142 	add	a,#0xfc
      004B9B F5 81            [12] 6143 	mov	sp,a
                                   6144 ;	calc.c:290: printstr("\r\nstack underflow\r\n");
      004B9D 7D E6            [12] 6145 	mov	r5,#___str_8
      004B9F 7C 7D            [12] 6146 	mov	r4,#(___str_8 >> 8)
      004BA1 7B 80            [12] 6147 	mov	r3,#0x80
                                   6148 ;	calc.c:51: return;
      004BA3                       6149 00475$:
                                   6150 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004BA3 8D 82            [24] 6151 	mov	dpl,r5
      004BA5 8C 83            [24] 6152 	mov	dph,r4
      004BA7 8B F0            [24] 6153 	mov	b,r3
      004BA9 12 65 2D         [24] 6154 	lcall	__gptrget
      004BAC FF               [12] 6155 	mov	r7,a
      004BAD 70 03            [24] 6156 	jnz	01379$
      004BAF 02 51 F0         [24] 6157 	ljmp	00249$
      004BB2                       6158 01379$:
      004BB2 7E 00            [12] 6159 	mov	r6,#0x00
      004BB4 8F 82            [24] 6160 	mov	dpl,r7
      004BB6 8E 83            [24] 6161 	mov	dph,r6
      004BB8 12 29 C0         [24] 6162 	lcall	_putchar
      004BBB 0D               [12] 6163 	inc	r5
                                   6164 ;	calc.c:290: printstr("\r\nstack underflow\r\n");
      004BBC BD 00 E4         [24] 6165 	cjne	r5,#0x00,00475$
      004BBF 0C               [12] 6166 	inc	r4
      004BC0 80 E1            [24] 6167 	sjmp	00475$
      004BC2                       6168 00218$:
                                   6169 ;	calc.c:292: d1 ^= d0;
      004BC2 E5 08            [12] 6170 	mov	a,_bp
      004BC4 24 19            [12] 6171 	add	a,#0x19
      004BC6 F8               [12] 6172 	mov	r0,a
      004BC7 E5 08            [12] 6173 	mov	a,_bp
      004BC9 24 15            [12] 6174 	add	a,#0x15
      004BCB F9               [12] 6175 	mov	r1,a
      004BCC E7               [12] 6176 	mov	a,@r1
      004BCD 66               [12] 6177 	xrl	a,@r0
      004BCE F6               [12] 6178 	mov	@r0,a
      004BCF 09               [12] 6179 	inc	r1
      004BD0 E7               [12] 6180 	mov	a,@r1
      004BD1 08               [12] 6181 	inc	r0
      004BD2 66               [12] 6182 	xrl	a,@r0
      004BD3 F6               [12] 6183 	mov	@r0,a
      004BD4 09               [12] 6184 	inc	r1
      004BD5 E7               [12] 6185 	mov	a,@r1
      004BD6 08               [12] 6186 	inc	r0
      004BD7 66               [12] 6187 	xrl	a,@r0
      004BD8 F6               [12] 6188 	mov	@r0,a
      004BD9 09               [12] 6189 	inc	r1
      004BDA E7               [12] 6190 	mov	a,@r1
      004BDB 08               [12] 6191 	inc	r0
      004BDC 66               [12] 6192 	xrl	a,@r0
      004BDD F6               [12] 6193 	mov	@r0,a
                                   6194 ;	calc.c:293: (void)stack_push(ctx->ps, d1);
      004BDE 8A 82            [24] 6195 	mov	dpl,r2
      004BE0 8B 83            [24] 6196 	mov	dph,r3
      004BE2 8C F0            [24] 6197 	mov	b,r4
      004BE4 12 65 2D         [24] 6198 	lcall	__gptrget
      004BE7 FA               [12] 6199 	mov	r2,a
      004BE8 A3               [24] 6200 	inc	dptr
      004BE9 12 65 2D         [24] 6201 	lcall	__gptrget
      004BEC FB               [12] 6202 	mov	r3,a
      004BED A3               [24] 6203 	inc	dptr
      004BEE 12 65 2D         [24] 6204 	lcall	__gptrget
      004BF1 FC               [12] 6205 	mov	r4,a
      004BF2 E5 08            [12] 6206 	mov	a,_bp
      004BF4 24 19            [12] 6207 	add	a,#0x19
      004BF6 F8               [12] 6208 	mov	r0,a
      004BF7 E6               [12] 6209 	mov	a,@r0
      004BF8 C0 E0            [24] 6210 	push	acc
      004BFA 08               [12] 6211 	inc	r0
      004BFB E6               [12] 6212 	mov	a,@r0
      004BFC C0 E0            [24] 6213 	push	acc
      004BFE 08               [12] 6214 	inc	r0
      004BFF E6               [12] 6215 	mov	a,@r0
      004C00 C0 E0            [24] 6216 	push	acc
      004C02 08               [12] 6217 	inc	r0
      004C03 E6               [12] 6218 	mov	a,@r0
      004C04 C0 E0            [24] 6219 	push	acc
      004C06 8A 82            [24] 6220 	mov	dpl,r2
      004C08 8B 83            [24] 6221 	mov	dph,r3
      004C0A 8C F0            [24] 6222 	mov	b,r4
      004C0C 12 26 B5         [24] 6223 	lcall	_stack_push
      004C0F E5 81            [12] 6224 	mov	a,sp
      004C11 24 FC            [12] 6225 	add	a,#0xfc
      004C13 F5 81            [12] 6226 	mov	sp,a
                                   6227 ;	calc.c:295: break;
      004C15 02 51 F0         [24] 6228 	ljmp	00249$
                                   6229 ;	calc.c:296: case '>':
      004C18                       6230 00223$:
                                   6231 ;	calc.c:297: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004C18 E5 08            [12] 6232 	mov	a,_bp
      004C1A 24 15            [12] 6233 	add	a,#0x15
      004C1C FC               [12] 6234 	mov	r4,a
      004C1D 7B 00            [12] 6235 	mov	r3,#0x00
      004C1F 7A 40            [12] 6236 	mov	r2,#0x40
      004C21 E5 08            [12] 6237 	mov	a,_bp
      004C23 24 12            [12] 6238 	add	a,#0x12
      004C25 F8               [12] 6239 	mov	r0,a
      004C26 E5 08            [12] 6240 	mov	a,_bp
      004C28 24 0B            [12] 6241 	add	a,#0x0b
      004C2A F9               [12] 6242 	mov	r1,a
      004C2B 74 11            [12] 6243 	mov	a,#0x11
      004C2D 26               [12] 6244 	add	a,@r0
      004C2E F7               [12] 6245 	mov	@r1,a
      004C2F 74 40            [12] 6246 	mov	a,#0x40
      004C31 08               [12] 6247 	inc	r0
      004C32 36               [12] 6248 	addc	a,@r0
      004C33 09               [12] 6249 	inc	r1
      004C34 F7               [12] 6250 	mov	@r1,a
      004C35 08               [12] 6251 	inc	r0
      004C36 09               [12] 6252 	inc	r1
      004C37 E6               [12] 6253 	mov	a,@r0
      004C38 F7               [12] 6254 	mov	@r1,a
      004C39 E5 08            [12] 6255 	mov	a,_bp
      004C3B 24 0B            [12] 6256 	add	a,#0x0b
      004C3D F8               [12] 6257 	mov	r0,a
      004C3E 86 82            [24] 6258 	mov	dpl,@r0
      004C40 08               [12] 6259 	inc	r0
      004C41 86 83            [24] 6260 	mov	dph,@r0
      004C43 08               [12] 6261 	inc	r0
      004C44 86 F0            [24] 6262 	mov	b,@r0
      004C46 12 65 2D         [24] 6263 	lcall	__gptrget
      004C49 FD               [12] 6264 	mov	r5,a
      004C4A A3               [24] 6265 	inc	dptr
      004C4B 12 65 2D         [24] 6266 	lcall	__gptrget
      004C4E FE               [12] 6267 	mov	r6,a
      004C4F A3               [24] 6268 	inc	dptr
      004C50 12 65 2D         [24] 6269 	lcall	__gptrget
      004C53 FF               [12] 6270 	mov	r7,a
      004C54 C0 04            [24] 6271 	push	ar4
      004C56 C0 03            [24] 6272 	push	ar3
      004C58 C0 02            [24] 6273 	push	ar2
      004C5A 8D 82            [24] 6274 	mov	dpl,r5
      004C5C 8E 83            [24] 6275 	mov	dph,r6
      004C5E 8F F0            [24] 6276 	mov	b,r7
      004C60 12 27 7F         [24] 6277 	lcall	_stack_pop
      004C63 AE 82            [24] 6278 	mov	r6,dpl
      004C65 AF 83            [24] 6279 	mov	r7,dph
      004C67 15 81            [12] 6280 	dec	sp
      004C69 15 81            [12] 6281 	dec	sp
      004C6B 15 81            [12] 6282 	dec	sp
      004C6D EE               [12] 6283 	mov	a,r6
      004C6E 4F               [12] 6284 	orl	a,r7
      004C6F 70 25            [24] 6285 	jnz	00228$
      004C71 7D E6            [12] 6286 	mov	r5,#___str_8
      004C73 7C 7D            [12] 6287 	mov	r4,#(___str_8 >> 8)
      004C75 7B 80            [12] 6288 	mov	r3,#0x80
                                   6289 ;	calc.c:51: return;
      004C77                       6290 00478$:
                                   6291 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004C77 8D 82            [24] 6292 	mov	dpl,r5
      004C79 8C 83            [24] 6293 	mov	dph,r4
      004C7B 8B F0            [24] 6294 	mov	b,r3
      004C7D 12 65 2D         [24] 6295 	lcall	__gptrget
      004C80 FF               [12] 6296 	mov	r7,a
      004C81 70 03            [24] 6297 	jnz	01382$
      004C83 02 51 F0         [24] 6298 	ljmp	00249$
      004C86                       6299 01382$:
      004C86 7E 00            [12] 6300 	mov	r6,#0x00
      004C88 8F 82            [24] 6301 	mov	dpl,r7
      004C8A 8E 83            [24] 6302 	mov	dph,r6
      004C8C 12 29 C0         [24] 6303 	lcall	_putchar
      004C8F 0D               [12] 6304 	inc	r5
                                   6305 ;	calc.c:297: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004C90 BD 00 E4         [24] 6306 	cjne	r5,#0x00,00478$
      004C93 0C               [12] 6307 	inc	r4
      004C94 80 E1            [24] 6308 	sjmp	00478$
      004C96                       6309 00228$:
                                   6310 ;	calc.c:298: else if (!stack_pop(ctx->ps, &d1)) {
      004C96 E5 08            [12] 6311 	mov	a,_bp
      004C98 24 19            [12] 6312 	add	a,#0x19
      004C9A FC               [12] 6313 	mov	r4,a
      004C9B 7B 00            [12] 6314 	mov	r3,#0x00
      004C9D 7A 40            [12] 6315 	mov	r2,#0x40
      004C9F E5 08            [12] 6316 	mov	a,_bp
      004CA1 24 0B            [12] 6317 	add	a,#0x0b
      004CA3 F8               [12] 6318 	mov	r0,a
      004CA4 86 82            [24] 6319 	mov	dpl,@r0
      004CA6 08               [12] 6320 	inc	r0
      004CA7 86 83            [24] 6321 	mov	dph,@r0
      004CA9 08               [12] 6322 	inc	r0
      004CAA 86 F0            [24] 6323 	mov	b,@r0
      004CAC 12 65 2D         [24] 6324 	lcall	__gptrget
      004CAF FD               [12] 6325 	mov	r5,a
      004CB0 A3               [24] 6326 	inc	dptr
      004CB1 12 65 2D         [24] 6327 	lcall	__gptrget
      004CB4 FE               [12] 6328 	mov	r6,a
      004CB5 A3               [24] 6329 	inc	dptr
      004CB6 12 65 2D         [24] 6330 	lcall	__gptrget
      004CB9 FF               [12] 6331 	mov	r7,a
      004CBA C0 04            [24] 6332 	push	ar4
      004CBC C0 03            [24] 6333 	push	ar3
      004CBE C0 02            [24] 6334 	push	ar2
      004CC0 8D 82            [24] 6335 	mov	dpl,r5
      004CC2 8E 83            [24] 6336 	mov	dph,r6
      004CC4 8F F0            [24] 6337 	mov	b,r7
      004CC6 12 27 7F         [24] 6338 	lcall	_stack_pop
      004CC9 AE 82            [24] 6339 	mov	r6,dpl
      004CCB AF 83            [24] 6340 	mov	r7,dph
      004CCD 15 81            [12] 6341 	dec	sp
      004CCF 15 81            [12] 6342 	dec	sp
      004CD1 15 81            [12] 6343 	dec	sp
      004CD3 EE               [12] 6344 	mov	a,r6
      004CD4 4F               [12] 6345 	orl	a,r7
      004CD5 70 63            [24] 6346 	jnz	00225$
                                   6347 ;	calc.c:299: (void)stack_push(ctx->ps, d0);
      004CD7 E5 08            [12] 6348 	mov	a,_bp
      004CD9 24 0B            [12] 6349 	add	a,#0x0b
      004CDB F8               [12] 6350 	mov	r0,a
      004CDC 86 82            [24] 6351 	mov	dpl,@r0
      004CDE 08               [12] 6352 	inc	r0
      004CDF 86 83            [24] 6353 	mov	dph,@r0
      004CE1 08               [12] 6354 	inc	r0
      004CE2 86 F0            [24] 6355 	mov	b,@r0
      004CE4 12 65 2D         [24] 6356 	lcall	__gptrget
      004CE7 FD               [12] 6357 	mov	r5,a
      004CE8 A3               [24] 6358 	inc	dptr
      004CE9 12 65 2D         [24] 6359 	lcall	__gptrget
      004CEC FE               [12] 6360 	mov	r6,a
      004CED A3               [24] 6361 	inc	dptr
      004CEE 12 65 2D         [24] 6362 	lcall	__gptrget
      004CF1 FF               [12] 6363 	mov	r7,a
      004CF2 E5 08            [12] 6364 	mov	a,_bp
      004CF4 24 15            [12] 6365 	add	a,#0x15
      004CF6 F8               [12] 6366 	mov	r0,a
      004CF7 E6               [12] 6367 	mov	a,@r0
      004CF8 C0 E0            [24] 6368 	push	acc
      004CFA 08               [12] 6369 	inc	r0
      004CFB E6               [12] 6370 	mov	a,@r0
      004CFC C0 E0            [24] 6371 	push	acc
      004CFE 08               [12] 6372 	inc	r0
      004CFF E6               [12] 6373 	mov	a,@r0
      004D00 C0 E0            [24] 6374 	push	acc
      004D02 08               [12] 6375 	inc	r0
      004D03 E6               [12] 6376 	mov	a,@r0
      004D04 C0 E0            [24] 6377 	push	acc
      004D06 8D 82            [24] 6378 	mov	dpl,r5
      004D08 8E 83            [24] 6379 	mov	dph,r6
      004D0A 8F F0            [24] 6380 	mov	b,r7
      004D0C 12 26 B5         [24] 6381 	lcall	_stack_push
      004D0F E5 81            [12] 6382 	mov	a,sp
      004D11 24 FC            [12] 6383 	add	a,#0xfc
      004D13 F5 81            [12] 6384 	mov	sp,a
                                   6385 ;	calc.c:300: printstr("\r\nstack underflow\r\n");
      004D15 7D E6            [12] 6386 	mov	r5,#___str_8
      004D17 7C 7D            [12] 6387 	mov	r4,#(___str_8 >> 8)
      004D19 7B 80            [12] 6388 	mov	r3,#0x80
                                   6389 ;	calc.c:51: return;
      004D1B                       6390 00481$:
                                   6391 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004D1B 8D 82            [24] 6392 	mov	dpl,r5
      004D1D 8C 83            [24] 6393 	mov	dph,r4
      004D1F 8B F0            [24] 6394 	mov	b,r3
      004D21 12 65 2D         [24] 6395 	lcall	__gptrget
      004D24 FF               [12] 6396 	mov	r7,a
      004D25 70 03            [24] 6397 	jnz	01385$
      004D27 02 51 F0         [24] 6398 	ljmp	00249$
      004D2A                       6399 01385$:
      004D2A 7E 00            [12] 6400 	mov	r6,#0x00
      004D2C 8F 82            [24] 6401 	mov	dpl,r7
      004D2E 8E 83            [24] 6402 	mov	dph,r6
      004D30 12 29 C0         [24] 6403 	lcall	_putchar
      004D33 0D               [12] 6404 	inc	r5
                                   6405 ;	calc.c:300: printstr("\r\nstack underflow\r\n");
      004D34 BD 00 E4         [24] 6406 	cjne	r5,#0x00,00481$
      004D37 0C               [12] 6407 	inc	r4
      004D38 80 E1            [24] 6408 	sjmp	00481$
      004D3A                       6409 00225$:
                                   6410 ;	calc.c:302: d1 = (unsigned long)d1 >> ((unsigned long)d0 & 0x0000001flu);
      004D3A E5 08            [12] 6411 	mov	a,_bp
      004D3C 24 19            [12] 6412 	add	a,#0x19
      004D3E F8               [12] 6413 	mov	r0,a
      004D3F 86 04            [24] 6414 	mov	ar4,@r0
      004D41 08               [12] 6415 	inc	r0
      004D42 86 05            [24] 6416 	mov	ar5,@r0
      004D44 08               [12] 6417 	inc	r0
      004D45 86 06            [24] 6418 	mov	ar6,@r0
      004D47 08               [12] 6419 	inc	r0
      004D48 86 07            [24] 6420 	mov	ar7,@r0
      004D4A E5 08            [12] 6421 	mov	a,_bp
      004D4C 24 15            [12] 6422 	add	a,#0x15
      004D4E F8               [12] 6423 	mov	r0,a
      004D4F 86 03            [24] 6424 	mov	ar3,@r0
      004D51 53 03 1F         [24] 6425 	anl	ar3,#0x1f
      004D54 8B F0            [24] 6426 	mov	b,r3
      004D56 05 F0            [12] 6427 	inc	b
      004D58 80 0D            [24] 6428 	sjmp	01388$
      004D5A                       6429 01387$:
      004D5A C3               [12] 6430 	clr	c
      004D5B EF               [12] 6431 	mov	a,r7
      004D5C 13               [12] 6432 	rrc	a
      004D5D FF               [12] 6433 	mov	r7,a
      004D5E EE               [12] 6434 	mov	a,r6
      004D5F 13               [12] 6435 	rrc	a
      004D60 FE               [12] 6436 	mov	r6,a
      004D61 ED               [12] 6437 	mov	a,r5
      004D62 13               [12] 6438 	rrc	a
      004D63 FD               [12] 6439 	mov	r5,a
      004D64 EC               [12] 6440 	mov	a,r4
      004D65 13               [12] 6441 	rrc	a
      004D66 FC               [12] 6442 	mov	r4,a
      004D67                       6443 01388$:
      004D67 D5 F0 F0         [24] 6444 	djnz	b,01387$
      004D6A E5 08            [12] 6445 	mov	a,_bp
      004D6C 24 19            [12] 6446 	add	a,#0x19
      004D6E F8               [12] 6447 	mov	r0,a
      004D6F A6 04            [24] 6448 	mov	@r0,ar4
      004D71 08               [12] 6449 	inc	r0
      004D72 A6 05            [24] 6450 	mov	@r0,ar5
      004D74 08               [12] 6451 	inc	r0
      004D75 A6 06            [24] 6452 	mov	@r0,ar6
      004D77 08               [12] 6453 	inc	r0
      004D78 A6 07            [24] 6454 	mov	@r0,ar7
                                   6455 ;	calc.c:303: (void)stack_push(ctx->ps, d1);
      004D7A E5 08            [12] 6456 	mov	a,_bp
      004D7C 24 0B            [12] 6457 	add	a,#0x0b
      004D7E F8               [12] 6458 	mov	r0,a
      004D7F 86 82            [24] 6459 	mov	dpl,@r0
      004D81 08               [12] 6460 	inc	r0
      004D82 86 83            [24] 6461 	mov	dph,@r0
      004D84 08               [12] 6462 	inc	r0
      004D85 86 F0            [24] 6463 	mov	b,@r0
      004D87 12 65 2D         [24] 6464 	lcall	__gptrget
      004D8A FD               [12] 6465 	mov	r5,a
      004D8B A3               [24] 6466 	inc	dptr
      004D8C 12 65 2D         [24] 6467 	lcall	__gptrget
      004D8F FE               [12] 6468 	mov	r6,a
      004D90 A3               [24] 6469 	inc	dptr
      004D91 12 65 2D         [24] 6470 	lcall	__gptrget
      004D94 FF               [12] 6471 	mov	r7,a
      004D95 E5 08            [12] 6472 	mov	a,_bp
      004D97 24 19            [12] 6473 	add	a,#0x19
      004D99 F8               [12] 6474 	mov	r0,a
      004D9A E6               [12] 6475 	mov	a,@r0
      004D9B C0 E0            [24] 6476 	push	acc
      004D9D 08               [12] 6477 	inc	r0
      004D9E E6               [12] 6478 	mov	a,@r0
      004D9F C0 E0            [24] 6479 	push	acc
      004DA1 08               [12] 6480 	inc	r0
      004DA2 E6               [12] 6481 	mov	a,@r0
      004DA3 C0 E0            [24] 6482 	push	acc
      004DA5 08               [12] 6483 	inc	r0
      004DA6 E6               [12] 6484 	mov	a,@r0
      004DA7 C0 E0            [24] 6485 	push	acc
      004DA9 8D 82            [24] 6486 	mov	dpl,r5
      004DAB 8E 83            [24] 6487 	mov	dph,r6
      004DAD 8F F0            [24] 6488 	mov	b,r7
      004DAF 12 26 B5         [24] 6489 	lcall	_stack_push
      004DB2 E5 81            [12] 6490 	mov	a,sp
      004DB4 24 FC            [12] 6491 	add	a,#0xfc
      004DB6 F5 81            [12] 6492 	mov	sp,a
                                   6493 ;	calc.c:305: break;
      004DB8 02 51 F0         [24] 6494 	ljmp	00249$
                                   6495 ;	calc.c:306: case ']':
      004DBB                       6496 00230$:
                                   6497 ;	calc.c:307: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004DBB E5 08            [12] 6498 	mov	a,_bp
      004DBD 24 15            [12] 6499 	add	a,#0x15
      004DBF FF               [12] 6500 	mov	r7,a
      004DC0 E5 08            [12] 6501 	mov	a,_bp
      004DC2 24 0E            [12] 6502 	add	a,#0x0e
      004DC4 F8               [12] 6503 	mov	r0,a
      004DC5 A6 07            [24] 6504 	mov	@r0,ar7
      004DC7 08               [12] 6505 	inc	r0
      004DC8 76 00            [12] 6506 	mov	@r0,#0x00
      004DCA 08               [12] 6507 	inc	r0
      004DCB 76 40            [12] 6508 	mov	@r0,#0x40
      004DCD E5 08            [12] 6509 	mov	a,_bp
      004DCF 24 12            [12] 6510 	add	a,#0x12
      004DD1 F8               [12] 6511 	mov	r0,a
      004DD2 74 11            [12] 6512 	mov	a,#0x11
      004DD4 26               [12] 6513 	add	a,@r0
      004DD5 FA               [12] 6514 	mov	r2,a
      004DD6 74 40            [12] 6515 	mov	a,#0x40
      004DD8 08               [12] 6516 	inc	r0
      004DD9 36               [12] 6517 	addc	a,@r0
      004DDA FB               [12] 6518 	mov	r3,a
      004DDB 08               [12] 6519 	inc	r0
      004DDC 86 04            [24] 6520 	mov	ar4,@r0
      004DDE 8A 82            [24] 6521 	mov	dpl,r2
      004DE0 8B 83            [24] 6522 	mov	dph,r3
      004DE2 8C F0            [24] 6523 	mov	b,r4
      004DE4 12 65 2D         [24] 6524 	lcall	__gptrget
      004DE7 FD               [12] 6525 	mov	r5,a
      004DE8 A3               [24] 6526 	inc	dptr
      004DE9 12 65 2D         [24] 6527 	lcall	__gptrget
      004DEC FE               [12] 6528 	mov	r6,a
      004DED A3               [24] 6529 	inc	dptr
      004DEE 12 65 2D         [24] 6530 	lcall	__gptrget
      004DF1 FF               [12] 6531 	mov	r7,a
      004DF2 C0 04            [24] 6532 	push	ar4
      004DF4 C0 03            [24] 6533 	push	ar3
      004DF6 C0 02            [24] 6534 	push	ar2
      004DF8 E5 08            [12] 6535 	mov	a,_bp
      004DFA 24 0E            [12] 6536 	add	a,#0x0e
      004DFC F8               [12] 6537 	mov	r0,a
      004DFD E6               [12] 6538 	mov	a,@r0
      004DFE C0 E0            [24] 6539 	push	acc
      004E00 08               [12] 6540 	inc	r0
      004E01 E6               [12] 6541 	mov	a,@r0
      004E02 C0 E0            [24] 6542 	push	acc
      004E04 08               [12] 6543 	inc	r0
      004E05 E6               [12] 6544 	mov	a,@r0
      004E06 C0 E0            [24] 6545 	push	acc
      004E08 8D 82            [24] 6546 	mov	dpl,r5
      004E0A 8E 83            [24] 6547 	mov	dph,r6
      004E0C 8F F0            [24] 6548 	mov	b,r7
      004E0E 12 27 7F         [24] 6549 	lcall	_stack_pop
      004E11 AE 82            [24] 6550 	mov	r6,dpl
      004E13 AF 83            [24] 6551 	mov	r7,dph
      004E15 15 81            [12] 6552 	dec	sp
      004E17 15 81            [12] 6553 	dec	sp
      004E19 15 81            [12] 6554 	dec	sp
      004E1B D0 02            [24] 6555 	pop	ar2
      004E1D D0 03            [24] 6556 	pop	ar3
      004E1F D0 04            [24] 6557 	pop	ar4
      004E21 EE               [12] 6558 	mov	a,r6
      004E22 4F               [12] 6559 	orl	a,r7
      004E23 70 25            [24] 6560 	jnz	00235$
      004E25 7D E6            [12] 6561 	mov	r5,#___str_8
      004E27 7C 7D            [12] 6562 	mov	r4,#(___str_8 >> 8)
      004E29 7B 80            [12] 6563 	mov	r3,#0x80
                                   6564 ;	calc.c:51: return;
      004E2B                       6565 00484$:
                                   6566 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004E2B 8D 82            [24] 6567 	mov	dpl,r5
      004E2D 8C 83            [24] 6568 	mov	dph,r4
      004E2F 8B F0            [24] 6569 	mov	b,r3
      004E31 12 65 2D         [24] 6570 	lcall	__gptrget
      004E34 FF               [12] 6571 	mov	r7,a
      004E35 70 03            [24] 6572 	jnz	01390$
      004E37 02 51 F0         [24] 6573 	ljmp	00249$
      004E3A                       6574 01390$:
      004E3A 7E 00            [12] 6575 	mov	r6,#0x00
      004E3C 8F 82            [24] 6576 	mov	dpl,r7
      004E3E 8E 83            [24] 6577 	mov	dph,r6
      004E40 12 29 C0         [24] 6578 	lcall	_putchar
      004E43 0D               [12] 6579 	inc	r5
                                   6580 ;	calc.c:307: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004E44 BD 00 E4         [24] 6581 	cjne	r5,#0x00,00484$
      004E47 0C               [12] 6582 	inc	r4
      004E48 80 E1            [24] 6583 	sjmp	00484$
      004E4A                       6584 00235$:
                                   6585 ;	calc.c:308: else if (!stack_pop(ctx->ps, &d1)) {
      004E4A E5 08            [12] 6586 	mov	a,_bp
      004E4C 24 19            [12] 6587 	add	a,#0x19
      004E4E FF               [12] 6588 	mov	r7,a
      004E4F E5 08            [12] 6589 	mov	a,_bp
      004E51 24 0E            [12] 6590 	add	a,#0x0e
      004E53 F8               [12] 6591 	mov	r0,a
      004E54 A6 07            [24] 6592 	mov	@r0,ar7
      004E56 08               [12] 6593 	inc	r0
      004E57 76 00            [12] 6594 	mov	@r0,#0x00
      004E59 08               [12] 6595 	inc	r0
      004E5A 76 40            [12] 6596 	mov	@r0,#0x40
      004E5C 8A 82            [24] 6597 	mov	dpl,r2
      004E5E 8B 83            [24] 6598 	mov	dph,r3
      004E60 8C F0            [24] 6599 	mov	b,r4
      004E62 12 65 2D         [24] 6600 	lcall	__gptrget
      004E65 FD               [12] 6601 	mov	r5,a
      004E66 A3               [24] 6602 	inc	dptr
      004E67 12 65 2D         [24] 6603 	lcall	__gptrget
      004E6A FE               [12] 6604 	mov	r6,a
      004E6B A3               [24] 6605 	inc	dptr
      004E6C 12 65 2D         [24] 6606 	lcall	__gptrget
      004E6F FF               [12] 6607 	mov	r7,a
      004E70 C0 04            [24] 6608 	push	ar4
      004E72 C0 03            [24] 6609 	push	ar3
      004E74 C0 02            [24] 6610 	push	ar2
      004E76 E5 08            [12] 6611 	mov	a,_bp
      004E78 24 0E            [12] 6612 	add	a,#0x0e
      004E7A F8               [12] 6613 	mov	r0,a
      004E7B E6               [12] 6614 	mov	a,@r0
      004E7C C0 E0            [24] 6615 	push	acc
      004E7E 08               [12] 6616 	inc	r0
      004E7F E6               [12] 6617 	mov	a,@r0
      004E80 C0 E0            [24] 6618 	push	acc
      004E82 08               [12] 6619 	inc	r0
      004E83 E6               [12] 6620 	mov	a,@r0
      004E84 C0 E0            [24] 6621 	push	acc
      004E86 8D 82            [24] 6622 	mov	dpl,r5
      004E88 8E 83            [24] 6623 	mov	dph,r6
      004E8A 8F F0            [24] 6624 	mov	b,r7
      004E8C 12 27 7F         [24] 6625 	lcall	_stack_pop
      004E8F AE 82            [24] 6626 	mov	r6,dpl
      004E91 AF 83            [24] 6627 	mov	r7,dph
      004E93 15 81            [12] 6628 	dec	sp
      004E95 15 81            [12] 6629 	dec	sp
      004E97 15 81            [12] 6630 	dec	sp
      004E99 D0 02            [24] 6631 	pop	ar2
      004E9B D0 03            [24] 6632 	pop	ar3
      004E9D D0 04            [24] 6633 	pop	ar4
      004E9F EE               [12] 6634 	mov	a,r6
      004EA0 4F               [12] 6635 	orl	a,r7
      004EA1 70 5C            [24] 6636 	jnz	00232$
                                   6637 ;	calc.c:309: (void)stack_push(ctx->ps, d0);
      004EA3 8A 82            [24] 6638 	mov	dpl,r2
      004EA5 8B 83            [24] 6639 	mov	dph,r3
      004EA7 8C F0            [24] 6640 	mov	b,r4
      004EA9 12 65 2D         [24] 6641 	lcall	__gptrget
      004EAC FD               [12] 6642 	mov	r5,a
      004EAD A3               [24] 6643 	inc	dptr
      004EAE 12 65 2D         [24] 6644 	lcall	__gptrget
      004EB1 FE               [12] 6645 	mov	r6,a
      004EB2 A3               [24] 6646 	inc	dptr
      004EB3 12 65 2D         [24] 6647 	lcall	__gptrget
      004EB6 FF               [12] 6648 	mov	r7,a
      004EB7 E5 08            [12] 6649 	mov	a,_bp
      004EB9 24 15            [12] 6650 	add	a,#0x15
      004EBB F8               [12] 6651 	mov	r0,a
      004EBC E6               [12] 6652 	mov	a,@r0
      004EBD C0 E0            [24] 6653 	push	acc
      004EBF 08               [12] 6654 	inc	r0
      004EC0 E6               [12] 6655 	mov	a,@r0
      004EC1 C0 E0            [24] 6656 	push	acc
      004EC3 08               [12] 6657 	inc	r0
      004EC4 E6               [12] 6658 	mov	a,@r0
      004EC5 C0 E0            [24] 6659 	push	acc
      004EC7 08               [12] 6660 	inc	r0
      004EC8 E6               [12] 6661 	mov	a,@r0
      004EC9 C0 E0            [24] 6662 	push	acc
      004ECB 8D 82            [24] 6663 	mov	dpl,r5
      004ECD 8E 83            [24] 6664 	mov	dph,r6
      004ECF 8F F0            [24] 6665 	mov	b,r7
      004ED1 12 26 B5         [24] 6666 	lcall	_stack_push
      004ED4 E5 81            [12] 6667 	mov	a,sp
      004ED6 24 FC            [12] 6668 	add	a,#0xfc
      004ED8 F5 81            [12] 6669 	mov	sp,a
                                   6670 ;	calc.c:310: printstr("\r\nstack underflow\r\n");
      004EDA 7D E6            [12] 6671 	mov	r5,#___str_8
      004EDC 7C 7D            [12] 6672 	mov	r4,#(___str_8 >> 8)
      004EDE 7B 80            [12] 6673 	mov	r3,#0x80
                                   6674 ;	calc.c:51: return;
      004EE0                       6675 00487$:
                                   6676 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004EE0 8D 82            [24] 6677 	mov	dpl,r5
      004EE2 8C 83            [24] 6678 	mov	dph,r4
      004EE4 8B F0            [24] 6679 	mov	b,r3
      004EE6 12 65 2D         [24] 6680 	lcall	__gptrget
      004EE9 FF               [12] 6681 	mov	r7,a
      004EEA 70 03            [24] 6682 	jnz	01393$
      004EEC 02 51 F0         [24] 6683 	ljmp	00249$
      004EEF                       6684 01393$:
      004EEF 7E 00            [12] 6685 	mov	r6,#0x00
      004EF1 8F 82            [24] 6686 	mov	dpl,r7
      004EF3 8E 83            [24] 6687 	mov	dph,r6
      004EF5 12 29 C0         [24] 6688 	lcall	_putchar
      004EF8 0D               [12] 6689 	inc	r5
                                   6690 ;	calc.c:310: printstr("\r\nstack underflow\r\n");
      004EF9 BD 00 E4         [24] 6691 	cjne	r5,#0x00,00487$
      004EFC 0C               [12] 6692 	inc	r4
      004EFD 80 E1            [24] 6693 	sjmp	00487$
      004EFF                       6694 00232$:
                                   6695 ;	calc.c:312: d1 >>= ((unsigned long)d0 & 0x0000001flu);
      004EFF E5 08            [12] 6696 	mov	a,_bp
      004F01 24 15            [12] 6697 	add	a,#0x15
      004F03 F8               [12] 6698 	mov	r0,a
      004F04 86 07            [24] 6699 	mov	ar7,@r0
      004F06 53 07 1F         [24] 6700 	anl	ar7,#0x1f
      004F09 8F F0            [24] 6701 	mov	b,r7
      004F0B 05 F0            [12] 6702 	inc	b
      004F0D E5 08            [12] 6703 	mov	a,_bp
      004F0F 24 19            [12] 6704 	add	a,#0x19
      004F11 F8               [12] 6705 	mov	r0,a
      004F12 08               [12] 6706 	inc	r0
      004F13 08               [12] 6707 	inc	r0
      004F14 08               [12] 6708 	inc	r0
      004F15 E6               [12] 6709 	mov	a,@r0
      004F16 33               [12] 6710 	rlc	a
      004F17 92 D2            [24] 6711 	mov	ov,c
      004F19 18               [12] 6712 	dec	r0
      004F1A 18               [12] 6713 	dec	r0
      004F1B 18               [12] 6714 	dec	r0
      004F1C 80 14            [24] 6715 	sjmp	01396$
      004F1E                       6716 01395$:
      004F1E A2 D2            [12] 6717 	mov	c,ov
      004F20 08               [12] 6718 	inc	r0
      004F21 08               [12] 6719 	inc	r0
      004F22 08               [12] 6720 	inc	r0
      004F23 E6               [12] 6721 	mov	a,@r0
      004F24 13               [12] 6722 	rrc	a
      004F25 F6               [12] 6723 	mov	@r0,a
      004F26 18               [12] 6724 	dec	r0
      004F27 E6               [12] 6725 	mov	a,@r0
      004F28 13               [12] 6726 	rrc	a
      004F29 F6               [12] 6727 	mov	@r0,a
      004F2A 18               [12] 6728 	dec	r0
      004F2B E6               [12] 6729 	mov	a,@r0
      004F2C 13               [12] 6730 	rrc	a
      004F2D F6               [12] 6731 	mov	@r0,a
      004F2E 18               [12] 6732 	dec	r0
      004F2F E6               [12] 6733 	mov	a,@r0
      004F30 13               [12] 6734 	rrc	a
      004F31 F6               [12] 6735 	mov	@r0,a
      004F32                       6736 01396$:
      004F32 D5 F0 E9         [24] 6737 	djnz	b,01395$
                                   6738 ;	calc.c:313: (void)stack_push(ctx->ps, d1);
      004F35 8A 82            [24] 6739 	mov	dpl,r2
      004F37 8B 83            [24] 6740 	mov	dph,r3
      004F39 8C F0            [24] 6741 	mov	b,r4
      004F3B 12 65 2D         [24] 6742 	lcall	__gptrget
      004F3E FA               [12] 6743 	mov	r2,a
      004F3F A3               [24] 6744 	inc	dptr
      004F40 12 65 2D         [24] 6745 	lcall	__gptrget
      004F43 FB               [12] 6746 	mov	r3,a
      004F44 A3               [24] 6747 	inc	dptr
      004F45 12 65 2D         [24] 6748 	lcall	__gptrget
      004F48 FC               [12] 6749 	mov	r4,a
      004F49 E5 08            [12] 6750 	mov	a,_bp
      004F4B 24 19            [12] 6751 	add	a,#0x19
      004F4D F8               [12] 6752 	mov	r0,a
      004F4E E6               [12] 6753 	mov	a,@r0
      004F4F C0 E0            [24] 6754 	push	acc
      004F51 08               [12] 6755 	inc	r0
      004F52 E6               [12] 6756 	mov	a,@r0
      004F53 C0 E0            [24] 6757 	push	acc
      004F55 08               [12] 6758 	inc	r0
      004F56 E6               [12] 6759 	mov	a,@r0
      004F57 C0 E0            [24] 6760 	push	acc
      004F59 08               [12] 6761 	inc	r0
      004F5A E6               [12] 6762 	mov	a,@r0
      004F5B C0 E0            [24] 6763 	push	acc
      004F5D 8A 82            [24] 6764 	mov	dpl,r2
      004F5F 8B 83            [24] 6765 	mov	dph,r3
      004F61 8C F0            [24] 6766 	mov	b,r4
      004F63 12 26 B5         [24] 6767 	lcall	_stack_push
      004F66 E5 81            [12] 6768 	mov	a,sp
      004F68 24 FC            [12] 6769 	add	a,#0xfc
      004F6A F5 81            [12] 6770 	mov	sp,a
                                   6771 ;	calc.c:315: break;
      004F6C 02 51 F0         [24] 6772 	ljmp	00249$
                                   6773 ;	calc.c:316: case '<':
      004F6F                       6774 00237$:
                                   6775 ;	calc.c:317: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004F6F E5 08            [12] 6776 	mov	a,_bp
      004F71 24 15            [12] 6777 	add	a,#0x15
      004F73 FC               [12] 6778 	mov	r4,a
      004F74 7B 00            [12] 6779 	mov	r3,#0x00
      004F76 7A 40            [12] 6780 	mov	r2,#0x40
      004F78 E5 08            [12] 6781 	mov	a,_bp
      004F7A 24 12            [12] 6782 	add	a,#0x12
      004F7C F8               [12] 6783 	mov	r0,a
      004F7D E5 08            [12] 6784 	mov	a,_bp
      004F7F 24 0B            [12] 6785 	add	a,#0x0b
      004F81 F9               [12] 6786 	mov	r1,a
      004F82 74 11            [12] 6787 	mov	a,#0x11
      004F84 26               [12] 6788 	add	a,@r0
      004F85 F7               [12] 6789 	mov	@r1,a
      004F86 74 40            [12] 6790 	mov	a,#0x40
      004F88 08               [12] 6791 	inc	r0
      004F89 36               [12] 6792 	addc	a,@r0
      004F8A 09               [12] 6793 	inc	r1
      004F8B F7               [12] 6794 	mov	@r1,a
      004F8C 08               [12] 6795 	inc	r0
      004F8D 09               [12] 6796 	inc	r1
      004F8E E6               [12] 6797 	mov	a,@r0
      004F8F F7               [12] 6798 	mov	@r1,a
      004F90 E5 08            [12] 6799 	mov	a,_bp
      004F92 24 0B            [12] 6800 	add	a,#0x0b
      004F94 F8               [12] 6801 	mov	r0,a
      004F95 86 82            [24] 6802 	mov	dpl,@r0
      004F97 08               [12] 6803 	inc	r0
      004F98 86 83            [24] 6804 	mov	dph,@r0
      004F9A 08               [12] 6805 	inc	r0
      004F9B 86 F0            [24] 6806 	mov	b,@r0
      004F9D 12 65 2D         [24] 6807 	lcall	__gptrget
      004FA0 FD               [12] 6808 	mov	r5,a
      004FA1 A3               [24] 6809 	inc	dptr
      004FA2 12 65 2D         [24] 6810 	lcall	__gptrget
      004FA5 FE               [12] 6811 	mov	r6,a
      004FA6 A3               [24] 6812 	inc	dptr
      004FA7 12 65 2D         [24] 6813 	lcall	__gptrget
      004FAA FF               [12] 6814 	mov	r7,a
      004FAB C0 04            [24] 6815 	push	ar4
      004FAD C0 03            [24] 6816 	push	ar3
      004FAF C0 02            [24] 6817 	push	ar2
      004FB1 8D 82            [24] 6818 	mov	dpl,r5
      004FB3 8E 83            [24] 6819 	mov	dph,r6
      004FB5 8F F0            [24] 6820 	mov	b,r7
      004FB7 12 27 7F         [24] 6821 	lcall	_stack_pop
      004FBA AE 82            [24] 6822 	mov	r6,dpl
      004FBC AF 83            [24] 6823 	mov	r7,dph
      004FBE 15 81            [12] 6824 	dec	sp
      004FC0 15 81            [12] 6825 	dec	sp
      004FC2 15 81            [12] 6826 	dec	sp
      004FC4 EE               [12] 6827 	mov	a,r6
      004FC5 4F               [12] 6828 	orl	a,r7
      004FC6 70 25            [24] 6829 	jnz	00242$
      004FC8 7D E6            [12] 6830 	mov	r5,#___str_8
      004FCA 7C 7D            [12] 6831 	mov	r4,#(___str_8 >> 8)
      004FCC 7B 80            [12] 6832 	mov	r3,#0x80
                                   6833 ;	calc.c:51: return;
      004FCE                       6834 00490$:
                                   6835 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004FCE 8D 82            [24] 6836 	mov	dpl,r5
      004FD0 8C 83            [24] 6837 	mov	dph,r4
      004FD2 8B F0            [24] 6838 	mov	b,r3
      004FD4 12 65 2D         [24] 6839 	lcall	__gptrget
      004FD7 FF               [12] 6840 	mov	r7,a
      004FD8 70 03            [24] 6841 	jnz	01398$
      004FDA 02 51 F0         [24] 6842 	ljmp	00249$
      004FDD                       6843 01398$:
      004FDD 7E 00            [12] 6844 	mov	r6,#0x00
      004FDF 8F 82            [24] 6845 	mov	dpl,r7
      004FE1 8E 83            [24] 6846 	mov	dph,r6
      004FE3 12 29 C0         [24] 6847 	lcall	_putchar
      004FE6 0D               [12] 6848 	inc	r5
                                   6849 ;	calc.c:317: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004FE7 BD 00 E4         [24] 6850 	cjne	r5,#0x00,00490$
      004FEA 0C               [12] 6851 	inc	r4
      004FEB 80 E1            [24] 6852 	sjmp	00490$
      004FED                       6853 00242$:
                                   6854 ;	calc.c:318: else if (!stack_pop(ctx->ps, &d1)) {
      004FED E5 08            [12] 6855 	mov	a,_bp
      004FEF 24 19            [12] 6856 	add	a,#0x19
      004FF1 FC               [12] 6857 	mov	r4,a
      004FF2 7B 00            [12] 6858 	mov	r3,#0x00
      004FF4 7A 40            [12] 6859 	mov	r2,#0x40
      004FF6 E5 08            [12] 6860 	mov	a,_bp
      004FF8 24 0B            [12] 6861 	add	a,#0x0b
      004FFA F8               [12] 6862 	mov	r0,a
      004FFB 86 82            [24] 6863 	mov	dpl,@r0
      004FFD 08               [12] 6864 	inc	r0
      004FFE 86 83            [24] 6865 	mov	dph,@r0
      005000 08               [12] 6866 	inc	r0
      005001 86 F0            [24] 6867 	mov	b,@r0
      005003 12 65 2D         [24] 6868 	lcall	__gptrget
      005006 FD               [12] 6869 	mov	r5,a
      005007 A3               [24] 6870 	inc	dptr
      005008 12 65 2D         [24] 6871 	lcall	__gptrget
      00500B FE               [12] 6872 	mov	r6,a
      00500C A3               [24] 6873 	inc	dptr
      00500D 12 65 2D         [24] 6874 	lcall	__gptrget
      005010 FF               [12] 6875 	mov	r7,a
      005011 C0 04            [24] 6876 	push	ar4
      005013 C0 03            [24] 6877 	push	ar3
      005015 C0 02            [24] 6878 	push	ar2
      005017 8D 82            [24] 6879 	mov	dpl,r5
      005019 8E 83            [24] 6880 	mov	dph,r6
      00501B 8F F0            [24] 6881 	mov	b,r7
      00501D 12 27 7F         [24] 6882 	lcall	_stack_pop
      005020 AE 82            [24] 6883 	mov	r6,dpl
      005022 AF 83            [24] 6884 	mov	r7,dph
      005024 15 81            [12] 6885 	dec	sp
      005026 15 81            [12] 6886 	dec	sp
      005028 15 81            [12] 6887 	dec	sp
      00502A EE               [12] 6888 	mov	a,r6
      00502B 4F               [12] 6889 	orl	a,r7
      00502C 70 63            [24] 6890 	jnz	00239$
                                   6891 ;	calc.c:319: (void)stack_push(ctx->ps, d0);
      00502E E5 08            [12] 6892 	mov	a,_bp
      005030 24 0B            [12] 6893 	add	a,#0x0b
      005032 F8               [12] 6894 	mov	r0,a
      005033 86 82            [24] 6895 	mov	dpl,@r0
      005035 08               [12] 6896 	inc	r0
      005036 86 83            [24] 6897 	mov	dph,@r0
      005038 08               [12] 6898 	inc	r0
      005039 86 F0            [24] 6899 	mov	b,@r0
      00503B 12 65 2D         [24] 6900 	lcall	__gptrget
      00503E FD               [12] 6901 	mov	r5,a
      00503F A3               [24] 6902 	inc	dptr
      005040 12 65 2D         [24] 6903 	lcall	__gptrget
      005043 FE               [12] 6904 	mov	r6,a
      005044 A3               [24] 6905 	inc	dptr
      005045 12 65 2D         [24] 6906 	lcall	__gptrget
      005048 FF               [12] 6907 	mov	r7,a
      005049 E5 08            [12] 6908 	mov	a,_bp
      00504B 24 15            [12] 6909 	add	a,#0x15
      00504D F8               [12] 6910 	mov	r0,a
      00504E E6               [12] 6911 	mov	a,@r0
      00504F C0 E0            [24] 6912 	push	acc
      005051 08               [12] 6913 	inc	r0
      005052 E6               [12] 6914 	mov	a,@r0
      005053 C0 E0            [24] 6915 	push	acc
      005055 08               [12] 6916 	inc	r0
      005056 E6               [12] 6917 	mov	a,@r0
      005057 C0 E0            [24] 6918 	push	acc
      005059 08               [12] 6919 	inc	r0
      00505A E6               [12] 6920 	mov	a,@r0
      00505B C0 E0            [24] 6921 	push	acc
      00505D 8D 82            [24] 6922 	mov	dpl,r5
      00505F 8E 83            [24] 6923 	mov	dph,r6
      005061 8F F0            [24] 6924 	mov	b,r7
      005063 12 26 B5         [24] 6925 	lcall	_stack_push
      005066 E5 81            [12] 6926 	mov	a,sp
      005068 24 FC            [12] 6927 	add	a,#0xfc
      00506A F5 81            [12] 6928 	mov	sp,a
                                   6929 ;	calc.c:320: printstr("\r\nstack underflow\r\n");
      00506C 7D E6            [12] 6930 	mov	r5,#___str_8
      00506E 7C 7D            [12] 6931 	mov	r4,#(___str_8 >> 8)
      005070 7B 80            [12] 6932 	mov	r3,#0x80
                                   6933 ;	calc.c:51: return;
      005072                       6934 00493$:
                                   6935 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005072 8D 82            [24] 6936 	mov	dpl,r5
      005074 8C 83            [24] 6937 	mov	dph,r4
      005076 8B F0            [24] 6938 	mov	b,r3
      005078 12 65 2D         [24] 6939 	lcall	__gptrget
      00507B FF               [12] 6940 	mov	r7,a
      00507C 70 03            [24] 6941 	jnz	01401$
      00507E 02 51 F0         [24] 6942 	ljmp	00249$
      005081                       6943 01401$:
      005081 7E 00            [12] 6944 	mov	r6,#0x00
      005083 8F 82            [24] 6945 	mov	dpl,r7
      005085 8E 83            [24] 6946 	mov	dph,r6
      005087 12 29 C0         [24] 6947 	lcall	_putchar
      00508A 0D               [12] 6948 	inc	r5
                                   6949 ;	calc.c:320: printstr("\r\nstack underflow\r\n");
      00508B BD 00 E4         [24] 6950 	cjne	r5,#0x00,00493$
      00508E 0C               [12] 6951 	inc	r4
      00508F 80 E1            [24] 6952 	sjmp	00493$
      005091                       6953 00239$:
                                   6954 ;	calc.c:322: d1 <<= ((unsigned long)d0 & 0x0000001flu);
      005091 E5 08            [12] 6955 	mov	a,_bp
      005093 24 15            [12] 6956 	add	a,#0x15
      005095 F8               [12] 6957 	mov	r0,a
      005096 86 07            [24] 6958 	mov	ar7,@r0
      005098 74 1F            [12] 6959 	mov	a,#0x1f
      00509A 5F               [12] 6960 	anl	a,r7
      00509B FB               [12] 6961 	mov	r3,a
      00509C E5 08            [12] 6962 	mov	a,_bp
      00509E 24 19            [12] 6963 	add	a,#0x19
      0050A0 F8               [12] 6964 	mov	r0,a
      0050A1 86 04            [24] 6965 	mov	ar4,@r0
      0050A3 08               [12] 6966 	inc	r0
      0050A4 86 05            [24] 6967 	mov	ar5,@r0
      0050A6 08               [12] 6968 	inc	r0
      0050A7 86 06            [24] 6969 	mov	ar6,@r0
      0050A9 08               [12] 6970 	inc	r0
      0050AA 86 07            [24] 6971 	mov	ar7,@r0
      0050AC 8B F0            [24] 6972 	mov	b,r3
      0050AE 05 F0            [12] 6973 	inc	b
      0050B0 80 0C            [24] 6974 	sjmp	01404$
      0050B2                       6975 01403$:
      0050B2 EC               [12] 6976 	mov	a,r4
      0050B3 2C               [12] 6977 	add	a,r4
      0050B4 FC               [12] 6978 	mov	r4,a
      0050B5 ED               [12] 6979 	mov	a,r5
      0050B6 33               [12] 6980 	rlc	a
      0050B7 FD               [12] 6981 	mov	r5,a
      0050B8 EE               [12] 6982 	mov	a,r6
      0050B9 33               [12] 6983 	rlc	a
      0050BA FE               [12] 6984 	mov	r6,a
      0050BB EF               [12] 6985 	mov	a,r7
      0050BC 33               [12] 6986 	rlc	a
      0050BD FF               [12] 6987 	mov	r7,a
      0050BE                       6988 01404$:
      0050BE D5 F0 F1         [24] 6989 	djnz	b,01403$
      0050C1 E5 08            [12] 6990 	mov	a,_bp
      0050C3 24 19            [12] 6991 	add	a,#0x19
      0050C5 F8               [12] 6992 	mov	r0,a
      0050C6 A6 04            [24] 6993 	mov	@r0,ar4
      0050C8 08               [12] 6994 	inc	r0
      0050C9 A6 05            [24] 6995 	mov	@r0,ar5
      0050CB 08               [12] 6996 	inc	r0
      0050CC A6 06            [24] 6997 	mov	@r0,ar6
      0050CE 08               [12] 6998 	inc	r0
      0050CF A6 07            [24] 6999 	mov	@r0,ar7
                                   7000 ;	calc.c:323: (void)stack_push(ctx->ps, d1);
      0050D1 E5 08            [12] 7001 	mov	a,_bp
      0050D3 24 0B            [12] 7002 	add	a,#0x0b
      0050D5 F8               [12] 7003 	mov	r0,a
      0050D6 86 82            [24] 7004 	mov	dpl,@r0
      0050D8 08               [12] 7005 	inc	r0
      0050D9 86 83            [24] 7006 	mov	dph,@r0
      0050DB 08               [12] 7007 	inc	r0
      0050DC 86 F0            [24] 7008 	mov	b,@r0
      0050DE 12 65 2D         [24] 7009 	lcall	__gptrget
      0050E1 FD               [12] 7010 	mov	r5,a
      0050E2 A3               [24] 7011 	inc	dptr
      0050E3 12 65 2D         [24] 7012 	lcall	__gptrget
      0050E6 FE               [12] 7013 	mov	r6,a
      0050E7 A3               [24] 7014 	inc	dptr
      0050E8 12 65 2D         [24] 7015 	lcall	__gptrget
      0050EB FF               [12] 7016 	mov	r7,a
      0050EC E5 08            [12] 7017 	mov	a,_bp
      0050EE 24 19            [12] 7018 	add	a,#0x19
      0050F0 F8               [12] 7019 	mov	r0,a
      0050F1 E6               [12] 7020 	mov	a,@r0
      0050F2 C0 E0            [24] 7021 	push	acc
      0050F4 08               [12] 7022 	inc	r0
      0050F5 E6               [12] 7023 	mov	a,@r0
      0050F6 C0 E0            [24] 7024 	push	acc
      0050F8 08               [12] 7025 	inc	r0
      0050F9 E6               [12] 7026 	mov	a,@r0
      0050FA C0 E0            [24] 7027 	push	acc
      0050FC 08               [12] 7028 	inc	r0
      0050FD E6               [12] 7029 	mov	a,@r0
      0050FE C0 E0            [24] 7030 	push	acc
      005100 8D 82            [24] 7031 	mov	dpl,r5
      005102 8E 83            [24] 7032 	mov	dph,r6
      005104 8F F0            [24] 7033 	mov	b,r7
      005106 12 26 B5         [24] 7034 	lcall	_stack_push
      005109 E5 81            [12] 7035 	mov	a,sp
      00510B 24 FC            [12] 7036 	add	a,#0xfc
      00510D F5 81            [12] 7037 	mov	sp,a
                                   7038 ;	calc.c:325: break;
      00510F 02 51 F0         [24] 7039 	ljmp	00249$
                                   7040 ;	calc.c:326: case '~':
      005112                       7041 00244$:
                                   7042 ;	calc.c:327: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005112 E5 08            [12] 7043 	mov	a,_bp
      005114 24 15            [12] 7044 	add	a,#0x15
      005116 FF               [12] 7045 	mov	r7,a
      005117 E5 08            [12] 7046 	mov	a,_bp
      005119 24 0E            [12] 7047 	add	a,#0x0e
      00511B F8               [12] 7048 	mov	r0,a
      00511C A6 07            [24] 7049 	mov	@r0,ar7
      00511E 08               [12] 7050 	inc	r0
      00511F 76 00            [12] 7051 	mov	@r0,#0x00
      005121 08               [12] 7052 	inc	r0
      005122 76 40            [12] 7053 	mov	@r0,#0x40
      005124 E5 08            [12] 7054 	mov	a,_bp
      005126 24 12            [12] 7055 	add	a,#0x12
      005128 F8               [12] 7056 	mov	r0,a
      005129 74 11            [12] 7057 	mov	a,#0x11
      00512B 26               [12] 7058 	add	a,@r0
      00512C FA               [12] 7059 	mov	r2,a
      00512D 74 40            [12] 7060 	mov	a,#0x40
      00512F 08               [12] 7061 	inc	r0
      005130 36               [12] 7062 	addc	a,@r0
      005131 FB               [12] 7063 	mov	r3,a
      005132 08               [12] 7064 	inc	r0
      005133 86 04            [24] 7065 	mov	ar4,@r0
      005135 8A 82            [24] 7066 	mov	dpl,r2
      005137 8B 83            [24] 7067 	mov	dph,r3
      005139 8C F0            [24] 7068 	mov	b,r4
      00513B 12 65 2D         [24] 7069 	lcall	__gptrget
      00513E FD               [12] 7070 	mov	r5,a
      00513F A3               [24] 7071 	inc	dptr
      005140 12 65 2D         [24] 7072 	lcall	__gptrget
      005143 FE               [12] 7073 	mov	r6,a
      005144 A3               [24] 7074 	inc	dptr
      005145 12 65 2D         [24] 7075 	lcall	__gptrget
      005148 FF               [12] 7076 	mov	r7,a
      005149 C0 04            [24] 7077 	push	ar4
      00514B C0 03            [24] 7078 	push	ar3
      00514D C0 02            [24] 7079 	push	ar2
      00514F E5 08            [12] 7080 	mov	a,_bp
      005151 24 0E            [12] 7081 	add	a,#0x0e
      005153 F8               [12] 7082 	mov	r0,a
      005154 E6               [12] 7083 	mov	a,@r0
      005155 C0 E0            [24] 7084 	push	acc
      005157 08               [12] 7085 	inc	r0
      005158 E6               [12] 7086 	mov	a,@r0
      005159 C0 E0            [24] 7087 	push	acc
      00515B 08               [12] 7088 	inc	r0
      00515C E6               [12] 7089 	mov	a,@r0
      00515D C0 E0            [24] 7090 	push	acc
      00515F 8D 82            [24] 7091 	mov	dpl,r5
      005161 8E 83            [24] 7092 	mov	dph,r6
      005163 8F F0            [24] 7093 	mov	b,r7
      005165 12 27 7F         [24] 7094 	lcall	_stack_pop
      005168 AE 82            [24] 7095 	mov	r6,dpl
      00516A AF 83            [24] 7096 	mov	r7,dph
      00516C 15 81            [12] 7097 	dec	sp
      00516E 15 81            [12] 7098 	dec	sp
      005170 15 81            [12] 7099 	dec	sp
      005172 D0 02            [24] 7100 	pop	ar2
      005174 D0 03            [24] 7101 	pop	ar3
      005176 D0 04            [24] 7102 	pop	ar4
      005178 EE               [12] 7103 	mov	a,r6
      005179 4F               [12] 7104 	orl	a,r7
      00517A 70 22            [24] 7105 	jnz	00246$
      00517C 7D E6            [12] 7106 	mov	r5,#___str_8
      00517E 7C 7D            [12] 7107 	mov	r4,#(___str_8 >> 8)
      005180 7B 80            [12] 7108 	mov	r3,#0x80
                                   7109 ;	calc.c:51: return;
      005182                       7110 00496$:
                                   7111 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005182 8D 82            [24] 7112 	mov	dpl,r5
      005184 8C 83            [24] 7113 	mov	dph,r4
      005186 8B F0            [24] 7114 	mov	b,r3
      005188 12 65 2D         [24] 7115 	lcall	__gptrget
      00518B FF               [12] 7116 	mov	r7,a
      00518C 60 62            [24] 7117 	jz	00249$
      00518E 7E 00            [12] 7118 	mov	r6,#0x00
      005190 8F 82            [24] 7119 	mov	dpl,r7
      005192 8E 83            [24] 7120 	mov	dph,r6
      005194 12 29 C0         [24] 7121 	lcall	_putchar
      005197 0D               [12] 7122 	inc	r5
                                   7123 ;	calc.c:327: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005198 BD 00 E7         [24] 7124 	cjne	r5,#0x00,00496$
      00519B 0C               [12] 7125 	inc	r4
      00519C 80 E4            [24] 7126 	sjmp	00496$
      00519E                       7127 00246$:
                                   7128 ;	calc.c:329: d0 = ~d0;
      00519E E5 08            [12] 7129 	mov	a,_bp
      0051A0 24 15            [12] 7130 	add	a,#0x15
      0051A2 F8               [12] 7131 	mov	r0,a
      0051A3 E6               [12] 7132 	mov	a,@r0
      0051A4 F4               [12] 7133 	cpl	a
      0051A5 F6               [12] 7134 	mov	@r0,a
      0051A6 08               [12] 7135 	inc	r0
      0051A7 E6               [12] 7136 	mov	a,@r0
      0051A8 F4               [12] 7137 	cpl	a
      0051A9 F6               [12] 7138 	mov	@r0,a
      0051AA 08               [12] 7139 	inc	r0
      0051AB E6               [12] 7140 	mov	a,@r0
      0051AC F4               [12] 7141 	cpl	a
      0051AD F6               [12] 7142 	mov	@r0,a
      0051AE 08               [12] 7143 	inc	r0
      0051AF E6               [12] 7144 	mov	a,@r0
      0051B0 F4               [12] 7145 	cpl	a
      0051B1 F6               [12] 7146 	mov	@r0,a
                                   7147 ;	calc.c:330: (void)stack_push(ctx->ps, d0);
      0051B2 8A 82            [24] 7148 	mov	dpl,r2
      0051B4 8B 83            [24] 7149 	mov	dph,r3
      0051B6 8C F0            [24] 7150 	mov	b,r4
      0051B8 12 65 2D         [24] 7151 	lcall	__gptrget
      0051BB FA               [12] 7152 	mov	r2,a
      0051BC A3               [24] 7153 	inc	dptr
      0051BD 12 65 2D         [24] 7154 	lcall	__gptrget
      0051C0 FB               [12] 7155 	mov	r3,a
      0051C1 A3               [24] 7156 	inc	dptr
      0051C2 12 65 2D         [24] 7157 	lcall	__gptrget
      0051C5 FC               [12] 7158 	mov	r4,a
      0051C6 E5 08            [12] 7159 	mov	a,_bp
      0051C8 24 15            [12] 7160 	add	a,#0x15
      0051CA F8               [12] 7161 	mov	r0,a
      0051CB E6               [12] 7162 	mov	a,@r0
      0051CC C0 E0            [24] 7163 	push	acc
      0051CE 08               [12] 7164 	inc	r0
      0051CF E6               [12] 7165 	mov	a,@r0
      0051D0 C0 E0            [24] 7166 	push	acc
      0051D2 08               [12] 7167 	inc	r0
      0051D3 E6               [12] 7168 	mov	a,@r0
      0051D4 C0 E0            [24] 7169 	push	acc
      0051D6 08               [12] 7170 	inc	r0
      0051D7 E6               [12] 7171 	mov	a,@r0
      0051D8 C0 E0            [24] 7172 	push	acc
      0051DA 8A 82            [24] 7173 	mov	dpl,r2
      0051DC 8B 83            [24] 7174 	mov	dph,r3
      0051DE 8C F0            [24] 7175 	mov	b,r4
      0051E0 12 26 B5         [24] 7176 	lcall	_stack_push
      0051E3 E5 81            [12] 7177 	mov	a,sp
      0051E5 24 FC            [12] 7178 	add	a,#0xfc
      0051E7 F5 81            [12] 7179 	mov	sp,a
                                   7180 ;	calc.c:332: break;
                                   7181 ;	calc.c:333: default:
      0051E9 80 05            [24] 7182 	sjmp	00249$
      0051EB                       7183 00248$:
                                   7184 ;	calc.c:334: return UNDEF;
      0051EB 90 80 00         [24] 7185 	mov	dptr,#0x8000
                                   7186 ;	calc.c:335: }
      0051EE 80 03            [24] 7187 	sjmp	00498$
      0051F0                       7188 00249$:
                                   7189 ;	calc.c:337: return 1;
      0051F0 90 00 01         [24] 7190 	mov	dptr,#0x0001
      0051F3                       7191 00498$:
                                   7192 ;	calc.c:338: }
      0051F3 85 08 81         [24] 7193 	mov	sp,_bp
      0051F6 D0 08            [24] 7194 	pop	_bp
      0051F8 22               [24] 7195 	ret
                                   7196 ;------------------------------------------------------------
                                   7197 ;Allocation info for local variables in function 'push_acc'
                                   7198 ;------------------------------------------------------------
                                   7199 ;delta                     Allocated to stack - _bp -5
                                   7200 ;_ctx                      Allocated to stack - _bp +1
                                   7201 ;ctx                       Allocated to registers r2 r3 r4 
                                   7202 ;__1310720117              Allocated to registers 
                                   7203 ;s                         Allocated to registers r5 r6 r7 
                                   7204 ;sloc0                     Allocated to stack - _bp +4
                                   7205 ;------------------------------------------------------------
                                   7206 ;	calc.c:340: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7207 ;	-----------------------------------------
                                   7208 ;	 function push_acc
                                   7209 ;	-----------------------------------------
      0051F9                       7210 _push_acc:
      0051F9 C0 08            [24] 7211 	push	_bp
      0051FB 85 81 08         [24] 7212 	mov	_bp,sp
      0051FE C0 82            [24] 7213 	push	dpl
      005200 C0 83            [24] 7214 	push	dph
      005202 C0 F0            [24] 7215 	push	b
      005204 E5 81            [12] 7216 	mov	a,sp
      005206 24 04            [12] 7217 	add	a,#0x04
      005208 F5 81            [12] 7218 	mov	sp,a
                                   7219 ;	calc.c:341: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
      00520A A8 08            [24] 7220 	mov	r0,_bp
      00520C 08               [12] 7221 	inc	r0
      00520D 86 02            [24] 7222 	mov	ar2,@r0
      00520F 08               [12] 7223 	inc	r0
      005210 86 03            [24] 7224 	mov	ar3,@r0
      005212 08               [12] 7225 	inc	r0
      005213 86 04            [24] 7226 	mov	ar4,@r0
                                   7227 ;	calc.c:345: ctx->acc_valid = 0;
      005215 74 06            [12] 7228 	mov	a,#0x06
      005217 2A               [12] 7229 	add	a,r2
      005218 FD               [12] 7230 	mov	r5,a
      005219 E4               [12] 7231 	clr	a
      00521A 3B               [12] 7232 	addc	a,r3
      00521B FE               [12] 7233 	mov	r6,a
      00521C 8C 07            [24] 7234 	mov	ar7,r4
      00521E 8D 82            [24] 7235 	mov	dpl,r5
      005220 8E 83            [24] 7236 	mov	dph,r6
      005222 8F F0            [24] 7237 	mov	b,r7
      005224 E4               [12] 7238 	clr	a
      005225 12 60 B2         [24] 7239 	lcall	__gptrput
                                   7240 ;	calc.c:346: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      005228 74 02            [12] 7241 	mov	a,#0x02
      00522A 2A               [12] 7242 	add	a,r2
      00522B FF               [12] 7243 	mov	r7,a
      00522C E4               [12] 7244 	clr	a
      00522D 3B               [12] 7245 	addc	a,r3
      00522E FD               [12] 7246 	mov	r5,a
      00522F 8C 06            [24] 7247 	mov	ar6,r4
      005231 8F 82            [24] 7248 	mov	dpl,r7
      005233 8D 83            [24] 7249 	mov	dph,r5
      005235 8E F0            [24] 7250 	mov	b,r6
      005237 E5 08            [12] 7251 	mov	a,_bp
      005239 24 04            [12] 7252 	add	a,#0x04
      00523B F8               [12] 7253 	mov	r0,a
      00523C 12 65 2D         [24] 7254 	lcall	__gptrget
      00523F F6               [12] 7255 	mov	@r0,a
      005240 A3               [24] 7256 	inc	dptr
      005241 12 65 2D         [24] 7257 	lcall	__gptrget
      005244 08               [12] 7258 	inc	r0
      005245 F6               [12] 7259 	mov	@r0,a
      005246 A3               [24] 7260 	inc	dptr
      005247 12 65 2D         [24] 7261 	lcall	__gptrget
      00524A 08               [12] 7262 	inc	r0
      00524B F6               [12] 7263 	mov	@r0,a
      00524C A3               [24] 7264 	inc	dptr
      00524D 12 65 2D         [24] 7265 	lcall	__gptrget
      005250 08               [12] 7266 	inc	r0
      005251 F6               [12] 7267 	mov	@r0,a
      005252 74 11            [12] 7268 	mov	a,#0x11
      005254 2A               [12] 7269 	add	a,r2
      005255 FA               [12] 7270 	mov	r2,a
      005256 74 40            [12] 7271 	mov	a,#0x40
      005258 3B               [12] 7272 	addc	a,r3
      005259 FB               [12] 7273 	mov	r3,a
      00525A 8C 07            [24] 7274 	mov	ar7,r4
      00525C 8A 82            [24] 7275 	mov	dpl,r2
      00525E 8B 83            [24] 7276 	mov	dph,r3
      005260 8F F0            [24] 7277 	mov	b,r7
      005262 12 65 2D         [24] 7278 	lcall	__gptrget
      005265 FA               [12] 7279 	mov	r2,a
      005266 A3               [24] 7280 	inc	dptr
      005267 12 65 2D         [24] 7281 	lcall	__gptrget
      00526A FB               [12] 7282 	mov	r3,a
      00526B A3               [24] 7283 	inc	dptr
      00526C 12 65 2D         [24] 7284 	lcall	__gptrget
      00526F FF               [12] 7285 	mov	r7,a
      005270 E5 08            [12] 7286 	mov	a,_bp
      005272 24 04            [12] 7287 	add	a,#0x04
      005274 F8               [12] 7288 	mov	r0,a
      005275 E6               [12] 7289 	mov	a,@r0
      005276 C0 E0            [24] 7290 	push	acc
      005278 08               [12] 7291 	inc	r0
      005279 E6               [12] 7292 	mov	a,@r0
      00527A C0 E0            [24] 7293 	push	acc
      00527C 08               [12] 7294 	inc	r0
      00527D E6               [12] 7295 	mov	a,@r0
      00527E C0 E0            [24] 7296 	push	acc
      005280 08               [12] 7297 	inc	r0
      005281 E6               [12] 7298 	mov	a,@r0
      005282 C0 E0            [24] 7299 	push	acc
      005284 8A 82            [24] 7300 	mov	dpl,r2
      005286 8B 83            [24] 7301 	mov	dph,r3
      005288 8F F0            [24] 7302 	mov	b,r7
      00528A 12 26 B5         [24] 7303 	lcall	_stack_push
      00528D AE 82            [24] 7304 	mov	r6,dpl
      00528F AF 83            [24] 7305 	mov	r7,dph
      005291 E5 81            [12] 7306 	mov	a,sp
      005293 24 FC            [12] 7307 	add	a,#0xfc
      005295 F5 81            [12] 7308 	mov	sp,a
      005297 EE               [12] 7309 	mov	a,r6
      005298 4F               [12] 7310 	orl	a,r7
      005299 70 22            [24] 7311 	jnz	00102$
      00529B 7D 35            [12] 7312 	mov	r5,#___str_11
      00529D 7E 7E            [12] 7313 	mov	r6,#(___str_11 >> 8)
      00529F 7F 80            [12] 7314 	mov	r7,#0x80
                                   7315 ;	calc.c:51: return;
      0052A1                       7316 00109$:
                                   7317 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0052A1 8D 82            [24] 7318 	mov	dpl,r5
      0052A3 8E 83            [24] 7319 	mov	dph,r6
      0052A5 8F F0            [24] 7320 	mov	b,r7
      0052A7 12 65 2D         [24] 7321 	lcall	__gptrget
      0052AA FC               [12] 7322 	mov	r4,a
      0052AB 60 10            [24] 7323 	jz	00102$
      0052AD 7B 00            [12] 7324 	mov	r3,#0x00
      0052AF 8C 82            [24] 7325 	mov	dpl,r4
      0052B1 8B 83            [24] 7326 	mov	dph,r3
      0052B3 12 29 C0         [24] 7327 	lcall	_putchar
      0052B6 0D               [12] 7328 	inc	r5
                                   7329 ;	calc.c:346: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      0052B7 BD 00 E7         [24] 7330 	cjne	r5,#0x00,00109$
      0052BA 0E               [12] 7331 	inc	r6
      0052BB 80 E4            [24] 7332 	sjmp	00109$
      0052BD                       7333 00102$:
                                   7334 ;	calc.c:348: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      0052BD E5 08            [12] 7335 	mov	a,_bp
      0052BF 24 FB            [12] 7336 	add	a,#0xfb
      0052C1 F8               [12] 7337 	mov	r0,a
      0052C2 86 05            [24] 7338 	mov	ar5,@r0
      0052C4 08               [12] 7339 	inc	r0
      0052C5 86 06            [24] 7340 	mov	ar6,@r0
      0052C7 08               [12] 7341 	inc	r0
      0052C8 86 07            [24] 7342 	mov	ar7,@r0
      0052CA 74 02            [12] 7343 	mov	a,#0x02
      0052CC 2D               [12] 7344 	add	a,r5
      0052CD FA               [12] 7345 	mov	r2,a
      0052CE E4               [12] 7346 	clr	a
      0052CF 3E               [12] 7347 	addc	a,r6
      0052D0 FB               [12] 7348 	mov	r3,a
      0052D1 8F 04            [24] 7349 	mov	ar4,r7
      0052D3 8A 82            [24] 7350 	mov	dpl,r2
      0052D5 8B 83            [24] 7351 	mov	dph,r3
      0052D7 8C F0            [24] 7352 	mov	b,r4
      0052D9 12 65 2D         [24] 7353 	lcall	__gptrget
      0052DC FA               [12] 7354 	mov	r2,a
      0052DD A3               [24] 7355 	inc	dptr
      0052DE 12 65 2D         [24] 7356 	lcall	__gptrget
      0052E1 FB               [12] 7357 	mov	r3,a
      0052E2 BA 02 27         [24] 7358 	cjne	r2,#0x02,00104$
      0052E5 BB 00 24         [24] 7359 	cjne	r3,#0x00,00104$
      0052E8 C0 05            [24] 7360 	push	ar5
      0052EA C0 06            [24] 7361 	push	ar6
      0052EC C0 07            [24] 7362 	push	ar7
      0052EE A8 08            [24] 7363 	mov	r0,_bp
      0052F0 08               [12] 7364 	inc	r0
      0052F1 86 82            [24] 7365 	mov	dpl,@r0
      0052F3 08               [12] 7366 	inc	r0
      0052F4 86 83            [24] 7367 	mov	dph,@r0
      0052F6 08               [12] 7368 	inc	r0
      0052F7 86 F0            [24] 7369 	mov	b,@r0
      0052F9 12 2F 6B         [24] 7370 	lcall	_operator
      0052FC AE 82            [24] 7371 	mov	r6,dpl
      0052FE AF 83            [24] 7372 	mov	r7,dph
      005300 15 81            [12] 7373 	dec	sp
      005302 15 81            [12] 7374 	dec	sp
      005304 15 81            [12] 7375 	dec	sp
      005306 8E 82            [24] 7376 	mov	dpl,r6
      005308 8F 83            [24] 7377 	mov	dph,r7
      00530A 80 03            [24] 7378 	sjmp	00111$
      00530C                       7379 00104$:
                                   7380 ;	calc.c:349: else return 1;
      00530C 90 00 01         [24] 7381 	mov	dptr,#0x0001
      00530F                       7382 00111$:
                                   7383 ;	calc.c:350: }
      00530F 85 08 81         [24] 7384 	mov	sp,_bp
      005312 D0 08            [24] 7385 	pop	_bp
      005314 22               [24] 7386 	ret
                                   7387 ;------------------------------------------------------------
                                   7388 ;Allocation info for local variables in function 'reset_acc'
                                   7389 ;------------------------------------------------------------
                                   7390 ;delta                     Allocated to stack - _bp -5
                                   7391 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7392 ;ctx                       Allocated to registers r5 r6 r7 
                                   7393 ;------------------------------------------------------------
                                   7394 ;	calc.c:352: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7395 ;	-----------------------------------------
                                   7396 ;	 function reset_acc
                                   7397 ;	-----------------------------------------
      005315                       7398 _reset_acc:
      005315 C0 08            [24] 7399 	push	_bp
      005317 85 81 08         [24] 7400 	mov	_bp,sp
      00531A AD 82            [24] 7401 	mov	r5,dpl
      00531C AE 83            [24] 7402 	mov	r6,dph
      00531E AF F0            [24] 7403 	mov	r7,b
                                   7404 ;	calc.c:353: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
                                   7405 ;	calc.c:355: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      005320 E5 08            [12] 7406 	mov	a,_bp
      005322 24 FB            [12] 7407 	add	a,#0xfb
      005324 F8               [12] 7408 	mov	r0,a
      005325 86 02            [24] 7409 	mov	ar2,@r0
      005327 08               [12] 7410 	inc	r0
      005328 86 03            [24] 7411 	mov	ar3,@r0
      00532A 08               [12] 7412 	inc	r0
      00532B 86 04            [24] 7413 	mov	ar4,@r0
      00532D 74 02            [12] 7414 	mov	a,#0x02
      00532F 2A               [12] 7415 	add	a,r2
      005330 FA               [12] 7416 	mov	r2,a
      005331 E4               [12] 7417 	clr	a
      005332 3B               [12] 7418 	addc	a,r3
      005333 FB               [12] 7419 	mov	r3,a
      005334 8A 82            [24] 7420 	mov	dpl,r2
      005336 8B 83            [24] 7421 	mov	dph,r3
      005338 8C F0            [24] 7422 	mov	b,r4
      00533A 12 65 2D         [24] 7423 	lcall	__gptrget
      00533D FA               [12] 7424 	mov	r2,a
      00533E A3               [24] 7425 	inc	dptr
      00533F 12 65 2D         [24] 7426 	lcall	__gptrget
      005342 FB               [12] 7427 	mov	r3,a
      005343 BA 07 16         [24] 7428 	cjne	r2,#0x07,00102$
      005346 BB 00 13         [24] 7429 	cjne	r3,#0x00,00102$
      005349 74 06            [12] 7430 	mov	a,#0x06
      00534B 2D               [12] 7431 	add	a,r5
      00534C FA               [12] 7432 	mov	r2,a
      00534D E4               [12] 7433 	clr	a
      00534E 3E               [12] 7434 	addc	a,r6
      00534F FB               [12] 7435 	mov	r3,a
      005350 8F 04            [24] 7436 	mov	ar4,r7
      005352 8A 82            [24] 7437 	mov	dpl,r2
      005354 8B 83            [24] 7438 	mov	dph,r3
      005356 8C F0            [24] 7439 	mov	b,r4
      005358 E4               [12] 7440 	clr	a
      005359 12 60 B2         [24] 7441 	lcall	__gptrput
      00535C                       7442 00102$:
                                   7443 ;	calc.c:356: ctx->acc = 0l;
      00535C 74 02            [12] 7444 	mov	a,#0x02
      00535E 2D               [12] 7445 	add	a,r5
      00535F FD               [12] 7446 	mov	r5,a
      005360 E4               [12] 7447 	clr	a
      005361 3E               [12] 7448 	addc	a,r6
      005362 FE               [12] 7449 	mov	r6,a
      005363 8D 82            [24] 7450 	mov	dpl,r5
      005365 8E 83            [24] 7451 	mov	dph,r6
      005367 8F F0            [24] 7452 	mov	b,r7
      005369 E4               [12] 7453 	clr	a
      00536A 12 60 B2         [24] 7454 	lcall	__gptrput
      00536D A3               [24] 7455 	inc	dptr
      00536E 12 60 B2         [24] 7456 	lcall	__gptrput
      005371 A3               [24] 7457 	inc	dptr
      005372 12 60 B2         [24] 7458 	lcall	__gptrput
      005375 A3               [24] 7459 	inc	dptr
      005376 12 60 B2         [24] 7460 	lcall	__gptrput
                                   7461 ;	calc.c:358: return 1;
      005379 90 00 01         [24] 7462 	mov	dptr,#0x0001
                                   7463 ;	calc.c:359: }
      00537C D0 08            [24] 7464 	pop	_bp
      00537E 22               [24] 7465 	ret
                                   7466 ;------------------------------------------------------------
                                   7467 ;Allocation info for local variables in function 'reset_base'
                                   7468 ;------------------------------------------------------------
                                   7469 ;delta                     Allocated to stack - _bp -5
                                   7470 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7471 ;ctx                       Allocated to registers r5 r6 r7 
                                   7472 ;------------------------------------------------------------
                                   7473 ;	calc.c:361: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   7474 ;	-----------------------------------------
                                   7475 ;	 function reset_base
                                   7476 ;	-----------------------------------------
      00537F                       7477 _reset_base:
      00537F C0 08            [24] 7478 	push	_bp
      005381 85 81 08         [24] 7479 	mov	_bp,sp
      005384 AD 82            [24] 7480 	mov	r5,dpl
      005386 AE 83            [24] 7481 	mov	r6,dph
      005388 AF F0            [24] 7482 	mov	r7,b
                                   7483 ;	calc.c:362: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
                                   7484 ;	calc.c:366: switch (ctx->digit[0]) {
      00538A 74 07            [12] 7485 	mov	a,#0x07
      00538C 2D               [12] 7486 	add	a,r5
      00538D FA               [12] 7487 	mov	r2,a
      00538E E4               [12] 7488 	clr	a
      00538F 3E               [12] 7489 	addc	a,r6
      005390 FB               [12] 7490 	mov	r3,a
      005391 8F 04            [24] 7491 	mov	ar4,r7
      005393 8A 82            [24] 7492 	mov	dpl,r2
      005395 8B 83            [24] 7493 	mov	dph,r3
      005397 8C F0            [24] 7494 	mov	b,r4
      005399 12 65 2D         [24] 7495 	lcall	__gptrget
      00539C FC               [12] 7496 	mov	r4,a
      00539D BC 48 02         [24] 7497 	cjne	r4,#0x48,00124$
      0053A0 80 0F            [24] 7498 	sjmp	00101$
      0053A2                       7499 00124$:
      0053A2 BC 4F 02         [24] 7500 	cjne	r4,#0x4f,00125$
      0053A5 80 2E            [24] 7501 	sjmp	00103$
      0053A7                       7502 00125$:
      0053A7 BC 68 02         [24] 7503 	cjne	r4,#0x68,00126$
      0053AA 80 17            [24] 7504 	sjmp	00102$
      0053AC                       7505 00126$:
                                   7506 ;	calc.c:367: case 'H':
      0053AC BC 6F 48         [24] 7507 	cjne	r4,#0x6f,00105$
      0053AF 80 36            [24] 7508 	sjmp	00104$
      0053B1                       7509 00101$:
                                   7510 ;	calc.c:368: ctx->base = 16;
      0053B1 8D 82            [24] 7511 	mov	dpl,r5
      0053B3 8E 83            [24] 7512 	mov	dph,r6
      0053B5 8F F0            [24] 7513 	mov	b,r7
      0053B7 74 10            [12] 7514 	mov	a,#0x10
      0053B9 12 60 B2         [24] 7515 	lcall	__gptrput
      0053BC A3               [24] 7516 	inc	dptr
      0053BD E4               [12] 7517 	clr	a
      0053BE 12 60 B2         [24] 7518 	lcall	__gptrput
                                   7519 ;	calc.c:369: break;
                                   7520 ;	calc.c:370: case 'h':
      0053C1 80 34            [24] 7521 	sjmp	00105$
      0053C3                       7522 00102$:
                                   7523 ;	calc.c:371: ctx->base = 10;
      0053C3 8D 82            [24] 7524 	mov	dpl,r5
      0053C5 8E 83            [24] 7525 	mov	dph,r6
      0053C7 8F F0            [24] 7526 	mov	b,r7
      0053C9 74 0A            [12] 7527 	mov	a,#0x0a
      0053CB 12 60 B2         [24] 7528 	lcall	__gptrput
      0053CE A3               [24] 7529 	inc	dptr
      0053CF E4               [12] 7530 	clr	a
      0053D0 12 60 B2         [24] 7531 	lcall	__gptrput
                                   7532 ;	calc.c:372: break;
                                   7533 ;	calc.c:373: case 'O':
      0053D3 80 22            [24] 7534 	sjmp	00105$
      0053D5                       7535 00103$:
                                   7536 ;	calc.c:374: ctx->base = 8;
      0053D5 8D 82            [24] 7537 	mov	dpl,r5
      0053D7 8E 83            [24] 7538 	mov	dph,r6
      0053D9 8F F0            [24] 7539 	mov	b,r7
      0053DB 74 08            [12] 7540 	mov	a,#0x08
      0053DD 12 60 B2         [24] 7541 	lcall	__gptrput
      0053E0 A3               [24] 7542 	inc	dptr
      0053E1 E4               [12] 7543 	clr	a
      0053E2 12 60 B2         [24] 7544 	lcall	__gptrput
                                   7545 ;	calc.c:375: break;
                                   7546 ;	calc.c:376: case 'o':
      0053E5 80 10            [24] 7547 	sjmp	00105$
      0053E7                       7548 00104$:
                                   7549 ;	calc.c:377: ctx->base = 2;
      0053E7 8D 82            [24] 7550 	mov	dpl,r5
      0053E9 8E 83            [24] 7551 	mov	dph,r6
      0053EB 8F F0            [24] 7552 	mov	b,r7
      0053ED 74 02            [12] 7553 	mov	a,#0x02
      0053EF 12 60 B2         [24] 7554 	lcall	__gptrput
      0053F2 A3               [24] 7555 	inc	dptr
      0053F3 E4               [12] 7556 	clr	a
      0053F4 12 60 B2         [24] 7557 	lcall	__gptrput
                                   7558 ;	calc.c:379: }
      0053F7                       7559 00105$:
                                   7560 ;	calc.c:381: return 1;
      0053F7 90 00 01         [24] 7561 	mov	dptr,#0x0001
                                   7562 ;	calc.c:382: }
      0053FA D0 08            [24] 7563 	pop	_bp
      0053FC 22               [24] 7564 	ret
                                   7565 ;------------------------------------------------------------
                                   7566 ;Allocation info for local variables in function 'status'
                                   7567 ;------------------------------------------------------------
                                   7568 ;delta                     Allocated to stack - _bp -5
                                   7569 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7570 ;ctx                       Allocated to stack - _bp +4
                                   7571 ;__1310720119              Allocated to registers 
                                   7572 ;d                         Allocated to stack - _bp +7
                                   7573 ;mask                      Allocated to stack - _bp +11
                                   7574 ;sloc0                     Allocated to stack - _bp +1
                                   7575 ;------------------------------------------------------------
                                   7576 ;	calc.c:384: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   7577 ;	-----------------------------------------
                                   7578 ;	 function status
                                   7579 ;	-----------------------------------------
      0053FD                       7580 _status:
      0053FD C0 08            [24] 7581 	push	_bp
      0053FF E5 81            [12] 7582 	mov	a,sp
      005401 F5 08            [12] 7583 	mov	_bp,a
      005403 24 0E            [12] 7584 	add	a,#0x0e
      005405 F5 81            [12] 7585 	mov	sp,a
      005407 AD 82            [24] 7586 	mov	r5,dpl
      005409 AE 83            [24] 7587 	mov	r6,dph
      00540B AF F0            [24] 7588 	mov	r7,b
                                   7589 ;	calc.c:385: calc_ctx_t*ctx = (calc_ctx_t*)_ctx;
      00540D E5 08            [12] 7590 	mov	a,_bp
      00540F 24 04            [12] 7591 	add	a,#0x04
      005411 F8               [12] 7592 	mov	r0,a
      005412 A6 05            [24] 7593 	mov	@r0,ar5
      005414 08               [12] 7594 	inc	r0
      005415 A6 06            [24] 7595 	mov	@r0,ar6
      005417 08               [12] 7596 	inc	r0
      005418 A6 07            [24] 7597 	mov	@r0,ar7
                                   7598 ;	calc.c:389: printf("\r\nbase = %d, ", ctx->base);
      00541A E5 08            [12] 7599 	mov	a,_bp
      00541C 24 04            [12] 7600 	add	a,#0x04
      00541E F8               [12] 7601 	mov	r0,a
      00541F 86 82            [24] 7602 	mov	dpl,@r0
      005421 08               [12] 7603 	inc	r0
      005422 86 83            [24] 7604 	mov	dph,@r0
      005424 08               [12] 7605 	inc	r0
      005425 86 F0            [24] 7606 	mov	b,@r0
      005427 12 65 2D         [24] 7607 	lcall	__gptrget
      00542A FB               [12] 7608 	mov	r3,a
      00542B A3               [24] 7609 	inc	dptr
      00542C 12 65 2D         [24] 7610 	lcall	__gptrget
      00542F FC               [12] 7611 	mov	r4,a
      005430 C0 03            [24] 7612 	push	ar3
      005432 C0 04            [24] 7613 	push	ar4
      005434 74 5D            [12] 7614 	mov	a,#___str_13
      005436 C0 E0            [24] 7615 	push	acc
      005438 74 7E            [12] 7616 	mov	a,#(___str_13 >> 8)
      00543A C0 E0            [24] 7617 	push	acc
      00543C 74 80            [12] 7618 	mov	a,#0x80
      00543E C0 E0            [24] 7619 	push	acc
      005440 12 64 F4         [24] 7620 	lcall	_printf
      005443 E5 81            [12] 7621 	mov	a,sp
      005445 24 FB            [12] 7622 	add	a,#0xfb
      005447 F5 81            [12] 7623 	mov	sp,a
                                   7624 ;	calc.c:390: printf("acc = %ld / ", ctx->acc);
      005449 E5 08            [12] 7625 	mov	a,_bp
      00544B 24 04            [12] 7626 	add	a,#0x04
      00544D F8               [12] 7627 	mov	r0,a
      00544E A9 08            [24] 7628 	mov	r1,_bp
      005450 09               [12] 7629 	inc	r1
      005451 74 02            [12] 7630 	mov	a,#0x02
      005453 26               [12] 7631 	add	a,@r0
      005454 F7               [12] 7632 	mov	@r1,a
      005455 E4               [12] 7633 	clr	a
      005456 08               [12] 7634 	inc	r0
      005457 36               [12] 7635 	addc	a,@r0
      005458 09               [12] 7636 	inc	r1
      005459 F7               [12] 7637 	mov	@r1,a
      00545A 08               [12] 7638 	inc	r0
      00545B 09               [12] 7639 	inc	r1
      00545C E6               [12] 7640 	mov	a,@r0
      00545D F7               [12] 7641 	mov	@r1,a
      00545E A8 08            [24] 7642 	mov	r0,_bp
      005460 08               [12] 7643 	inc	r0
      005461 86 82            [24] 7644 	mov	dpl,@r0
      005463 08               [12] 7645 	inc	r0
      005464 86 83            [24] 7646 	mov	dph,@r0
      005466 08               [12] 7647 	inc	r0
      005467 86 F0            [24] 7648 	mov	b,@r0
      005469 12 65 2D         [24] 7649 	lcall	__gptrget
      00546C FC               [12] 7650 	mov	r4,a
      00546D A3               [24] 7651 	inc	dptr
      00546E 12 65 2D         [24] 7652 	lcall	__gptrget
      005471 FD               [12] 7653 	mov	r5,a
      005472 A3               [24] 7654 	inc	dptr
      005473 12 65 2D         [24] 7655 	lcall	__gptrget
      005476 FE               [12] 7656 	mov	r6,a
      005477 A3               [24] 7657 	inc	dptr
      005478 12 65 2D         [24] 7658 	lcall	__gptrget
      00547B FF               [12] 7659 	mov	r7,a
      00547C C0 04            [24] 7660 	push	ar4
      00547E C0 05            [24] 7661 	push	ar5
      005480 C0 06            [24] 7662 	push	ar6
      005482 C0 07            [24] 7663 	push	ar7
      005484 74 6B            [12] 7664 	mov	a,#___str_14
      005486 C0 E0            [24] 7665 	push	acc
      005488 74 7E            [12] 7666 	mov	a,#(___str_14 >> 8)
      00548A C0 E0            [24] 7667 	push	acc
      00548C 74 80            [12] 7668 	mov	a,#0x80
      00548E C0 E0            [24] 7669 	push	acc
      005490 12 64 F4         [24] 7670 	lcall	_printf
      005493 E5 81            [12] 7671 	mov	a,sp
      005495 24 F9            [12] 7672 	add	a,#0xf9
      005497 F5 81            [12] 7673 	mov	sp,a
                                   7674 ;	calc.c:391: printf("%08lx / ", ctx->acc);
      005499 A8 08            [24] 7675 	mov	r0,_bp
      00549B 08               [12] 7676 	inc	r0
      00549C 86 82            [24] 7677 	mov	dpl,@r0
      00549E 08               [12] 7678 	inc	r0
      00549F 86 83            [24] 7679 	mov	dph,@r0
      0054A1 08               [12] 7680 	inc	r0
      0054A2 86 F0            [24] 7681 	mov	b,@r0
      0054A4 12 65 2D         [24] 7682 	lcall	__gptrget
      0054A7 FC               [12] 7683 	mov	r4,a
      0054A8 A3               [24] 7684 	inc	dptr
      0054A9 12 65 2D         [24] 7685 	lcall	__gptrget
      0054AC FD               [12] 7686 	mov	r5,a
      0054AD A3               [24] 7687 	inc	dptr
      0054AE 12 65 2D         [24] 7688 	lcall	__gptrget
      0054B1 FE               [12] 7689 	mov	r6,a
      0054B2 A3               [24] 7690 	inc	dptr
      0054B3 12 65 2D         [24] 7691 	lcall	__gptrget
      0054B6 FF               [12] 7692 	mov	r7,a
      0054B7 C0 04            [24] 7693 	push	ar4
      0054B9 C0 05            [24] 7694 	push	ar5
      0054BB C0 06            [24] 7695 	push	ar6
      0054BD C0 07            [24] 7696 	push	ar7
      0054BF 74 D1            [12] 7697 	mov	a,#___str_4
      0054C1 C0 E0            [24] 7698 	push	acc
      0054C3 74 7D            [12] 7699 	mov	a,#(___str_4 >> 8)
      0054C5 C0 E0            [24] 7700 	push	acc
      0054C7 74 80            [12] 7701 	mov	a,#0x80
      0054C9 C0 E0            [24] 7702 	push	acc
      0054CB 12 64 F4         [24] 7703 	lcall	_printf
      0054CE E5 81            [12] 7704 	mov	a,sp
      0054D0 24 F9            [12] 7705 	add	a,#0xf9
      0054D2 F5 81            [12] 7706 	mov	sp,a
                                   7707 ;	calc.c:392: printbin(ctx->acc);
      0054D4 A8 08            [24] 7708 	mov	r0,_bp
      0054D6 08               [12] 7709 	inc	r0
      0054D7 86 82            [24] 7710 	mov	dpl,@r0
      0054D9 08               [12] 7711 	inc	r0
      0054DA 86 83            [24] 7712 	mov	dph,@r0
      0054DC 08               [12] 7713 	inc	r0
      0054DD 86 F0            [24] 7714 	mov	b,@r0
      0054DF E5 08            [12] 7715 	mov	a,_bp
      0054E1 24 07            [12] 7716 	add	a,#0x07
      0054E3 F9               [12] 7717 	mov	r1,a
      0054E4 12 65 2D         [24] 7718 	lcall	__gptrget
      0054E7 F7               [12] 7719 	mov	@r1,a
      0054E8 A3               [24] 7720 	inc	dptr
      0054E9 12 65 2D         [24] 7721 	lcall	__gptrget
      0054EC 09               [12] 7722 	inc	r1
      0054ED F7               [12] 7723 	mov	@r1,a
      0054EE A3               [24] 7724 	inc	dptr
      0054EF 12 65 2D         [24] 7725 	lcall	__gptrget
      0054F2 09               [12] 7726 	inc	r1
      0054F3 F7               [12] 7727 	mov	@r1,a
      0054F4 A3               [24] 7728 	inc	dptr
      0054F5 12 65 2D         [24] 7729 	lcall	__gptrget
      0054F8 09               [12] 7730 	inc	r1
      0054F9 F7               [12] 7731 	mov	@r1,a
                                   7732 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0054FA E5 08            [12] 7733 	mov	a,_bp
      0054FC 24 0B            [12] 7734 	add	a,#0x0b
      0054FE F8               [12] 7735 	mov	r0,a
      0054FF E4               [12] 7736 	clr	a
      005500 F6               [12] 7737 	mov	@r0,a
      005501 08               [12] 7738 	inc	r0
      005502 F6               [12] 7739 	mov	@r0,a
      005503 08               [12] 7740 	inc	r0
      005504 F6               [12] 7741 	mov	@r0,a
      005505 08               [12] 7742 	inc	r0
      005506 76 80            [12] 7743 	mov	@r0,#0x80
      005508                       7744 00103$:
                                   7745 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005508 E5 08            [12] 7746 	mov	a,_bp
      00550A 24 07            [12] 7747 	add	a,#0x07
      00550C F8               [12] 7748 	mov	r0,a
      00550D 86 04            [24] 7749 	mov	ar4,@r0
      00550F 08               [12] 7750 	inc	r0
      005510 86 05            [24] 7751 	mov	ar5,@r0
      005512 08               [12] 7752 	inc	r0
      005513 86 06            [24] 7753 	mov	ar6,@r0
      005515 08               [12] 7754 	inc	r0
      005516 86 07            [24] 7755 	mov	ar7,@r0
      005518 E5 08            [12] 7756 	mov	a,_bp
      00551A 24 0B            [12] 7757 	add	a,#0x0b
      00551C F8               [12] 7758 	mov	r0,a
      00551D E6               [12] 7759 	mov	a,@r0
      00551E 52 04            [12] 7760 	anl	ar4,a
      005520 08               [12] 7761 	inc	r0
      005521 E6               [12] 7762 	mov	a,@r0
      005522 52 05            [12] 7763 	anl	ar5,a
      005524 08               [12] 7764 	inc	r0
      005525 E6               [12] 7765 	mov	a,@r0
      005526 52 06            [12] 7766 	anl	ar6,a
      005528 08               [12] 7767 	inc	r0
      005529 E6               [12] 7768 	mov	a,@r0
      00552A 52 07            [12] 7769 	anl	ar7,a
      00552C EC               [12] 7770 	mov	a,r4
      00552D 4D               [12] 7771 	orl	a,r5
      00552E 4E               [12] 7772 	orl	a,r6
      00552F 4F               [12] 7773 	orl	a,r7
      005530 60 06            [24] 7774 	jz	00107$
      005532 7E 31            [12] 7775 	mov	r6,#0x31
      005534 7F 00            [12] 7776 	mov	r7,#0x00
      005536 80 04            [24] 7777 	sjmp	00108$
      005538                       7778 00107$:
      005538 7E 30            [12] 7779 	mov	r6,#0x30
      00553A 7F 00            [12] 7780 	mov	r7,#0x00
      00553C                       7781 00108$:
      00553C 8E 82            [24] 7782 	mov	dpl,r6
      00553E 8F 83            [24] 7783 	mov	dph,r7
      005540 12 29 C0         [24] 7784 	lcall	_putchar
                                   7785 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005543 E5 08            [12] 7786 	mov	a,_bp
      005545 24 0B            [12] 7787 	add	a,#0x0b
      005547 F8               [12] 7788 	mov	r0,a
      005548 08               [12] 7789 	inc	r0
      005549 08               [12] 7790 	inc	r0
      00554A 08               [12] 7791 	inc	r0
      00554B E6               [12] 7792 	mov	a,@r0
      00554C C3               [12] 7793 	clr	c
      00554D 13               [12] 7794 	rrc	a
      00554E F6               [12] 7795 	mov	@r0,a
      00554F 18               [12] 7796 	dec	r0
      005550 E6               [12] 7797 	mov	a,@r0
      005551 13               [12] 7798 	rrc	a
      005552 F6               [12] 7799 	mov	@r0,a
      005553 18               [12] 7800 	dec	r0
      005554 E6               [12] 7801 	mov	a,@r0
      005555 13               [12] 7802 	rrc	a
      005556 F6               [12] 7803 	mov	@r0,a
      005557 18               [12] 7804 	dec	r0
      005558 E6               [12] 7805 	mov	a,@r0
      005559 13               [12] 7806 	rrc	a
      00555A F6               [12] 7807 	mov	@r0,a
      00555B E5 08            [12] 7808 	mov	a,_bp
      00555D 24 0B            [12] 7809 	add	a,#0x0b
      00555F F8               [12] 7810 	mov	r0,a
      005560 E6               [12] 7811 	mov	a,@r0
      005561 08               [12] 7812 	inc	r0
      005562 46               [12] 7813 	orl	a,@r0
      005563 08               [12] 7814 	inc	r0
      005564 46               [12] 7815 	orl	a,@r0
      005565 08               [12] 7816 	inc	r0
      005566 46               [12] 7817 	orl	a,@r0
      005567 70 9F            [24] 7818 	jnz	00103$
                                   7819 ;	calc.c:393: printf(", acc_valid = %d\r\n", (int)ctx->acc_valid);
      005569 E5 08            [12] 7820 	mov	a,_bp
      00556B 24 04            [12] 7821 	add	a,#0x04
      00556D F8               [12] 7822 	mov	r0,a
      00556E 74 06            [12] 7823 	mov	a,#0x06
      005570 26               [12] 7824 	add	a,@r0
      005571 FD               [12] 7825 	mov	r5,a
      005572 E4               [12] 7826 	clr	a
      005573 08               [12] 7827 	inc	r0
      005574 36               [12] 7828 	addc	a,@r0
      005575 FE               [12] 7829 	mov	r6,a
      005576 08               [12] 7830 	inc	r0
      005577 86 07            [24] 7831 	mov	ar7,@r0
      005579 8D 82            [24] 7832 	mov	dpl,r5
      00557B 8E 83            [24] 7833 	mov	dph,r6
      00557D 8F F0            [24] 7834 	mov	b,r7
      00557F 12 65 2D         [24] 7835 	lcall	__gptrget
      005582 FD               [12] 7836 	mov	r5,a
      005583 7F 00            [12] 7837 	mov	r7,#0x00
      005585 C0 05            [24] 7838 	push	ar5
      005587 C0 07            [24] 7839 	push	ar7
      005589 74 78            [12] 7840 	mov	a,#___str_15
      00558B C0 E0            [24] 7841 	push	acc
      00558D 74 7E            [12] 7842 	mov	a,#(___str_15 >> 8)
      00558F C0 E0            [24] 7843 	push	acc
      005591 74 80            [12] 7844 	mov	a,#0x80
      005593 C0 E0            [24] 7845 	push	acc
      005595 12 64 F4         [24] 7846 	lcall	_printf
      005598 E5 81            [12] 7847 	mov	a,sp
      00559A 24 FB            [12] 7848 	add	a,#0xfb
      00559C F5 81            [12] 7849 	mov	sp,a
                                   7850 ;	calc.c:394: printf("primary = %p, secondary = %p\r\n", ctx->ps, ctx->ss);
      00559E E5 08            [12] 7851 	mov	a,_bp
      0055A0 24 04            [12] 7852 	add	a,#0x04
      0055A2 F8               [12] 7853 	mov	r0,a
      0055A3 74 14            [12] 7854 	mov	a,#0x14
      0055A5 26               [12] 7855 	add	a,@r0
      0055A6 FD               [12] 7856 	mov	r5,a
      0055A7 74 40            [12] 7857 	mov	a,#0x40
      0055A9 08               [12] 7858 	inc	r0
      0055AA 36               [12] 7859 	addc	a,@r0
      0055AB FE               [12] 7860 	mov	r6,a
      0055AC 08               [12] 7861 	inc	r0
      0055AD 86 07            [24] 7862 	mov	ar7,@r0
      0055AF 8D 82            [24] 7863 	mov	dpl,r5
      0055B1 8E 83            [24] 7864 	mov	dph,r6
      0055B3 8F F0            [24] 7865 	mov	b,r7
      0055B5 12 65 2D         [24] 7866 	lcall	__gptrget
      0055B8 FD               [12] 7867 	mov	r5,a
      0055B9 A3               [24] 7868 	inc	dptr
      0055BA 12 65 2D         [24] 7869 	lcall	__gptrget
      0055BD FE               [12] 7870 	mov	r6,a
      0055BE A3               [24] 7871 	inc	dptr
      0055BF 12 65 2D         [24] 7872 	lcall	__gptrget
      0055C2 FF               [12] 7873 	mov	r7,a
      0055C3 E5 08            [12] 7874 	mov	a,_bp
      0055C5 24 04            [12] 7875 	add	a,#0x04
      0055C7 F8               [12] 7876 	mov	r0,a
      0055C8 74 11            [12] 7877 	mov	a,#0x11
      0055CA 26               [12] 7878 	add	a,@r0
      0055CB FA               [12] 7879 	mov	r2,a
      0055CC 74 40            [12] 7880 	mov	a,#0x40
      0055CE 08               [12] 7881 	inc	r0
      0055CF 36               [12] 7882 	addc	a,@r0
      0055D0 FB               [12] 7883 	mov	r3,a
      0055D1 08               [12] 7884 	inc	r0
      0055D2 86 04            [24] 7885 	mov	ar4,@r0
      0055D4 8A 82            [24] 7886 	mov	dpl,r2
      0055D6 8B 83            [24] 7887 	mov	dph,r3
      0055D8 8C F0            [24] 7888 	mov	b,r4
      0055DA 12 65 2D         [24] 7889 	lcall	__gptrget
      0055DD FA               [12] 7890 	mov	r2,a
      0055DE A3               [24] 7891 	inc	dptr
      0055DF 12 65 2D         [24] 7892 	lcall	__gptrget
      0055E2 FB               [12] 7893 	mov	r3,a
      0055E3 A3               [24] 7894 	inc	dptr
      0055E4 12 65 2D         [24] 7895 	lcall	__gptrget
      0055E7 FC               [12] 7896 	mov	r4,a
      0055E8 C0 05            [24] 7897 	push	ar5
      0055EA C0 06            [24] 7898 	push	ar6
      0055EC C0 07            [24] 7899 	push	ar7
      0055EE C0 02            [24] 7900 	push	ar2
      0055F0 C0 03            [24] 7901 	push	ar3
      0055F2 C0 04            [24] 7902 	push	ar4
      0055F4 74 8B            [12] 7903 	mov	a,#___str_16
      0055F6 C0 E0            [24] 7904 	push	acc
      0055F8 74 7E            [12] 7905 	mov	a,#(___str_16 >> 8)
      0055FA C0 E0            [24] 7906 	push	acc
      0055FC 74 80            [12] 7907 	mov	a,#0x80
      0055FE C0 E0            [24] 7908 	push	acc
      005600 12 64 F4         [24] 7909 	lcall	_printf
      005603 E5 81            [12] 7910 	mov	a,sp
      005605 24 F7            [12] 7911 	add	a,#0xf7
      005607 F5 81            [12] 7912 	mov	sp,a
                                   7913 ;	calc.c:396: return 1;
      005609 90 00 01         [24] 7914 	mov	dptr,#0x0001
                                   7915 ;	calc.c:397: }
      00560C 85 08 81         [24] 7916 	mov	sp,_bp
      00560F D0 08            [24] 7917 	pop	_bp
      005611 22               [24] 7918 	ret
                                   7919 ;------------------------------------------------------------
                                   7920 ;Allocation info for local variables in function 'help'
                                   7921 ;------------------------------------------------------------
                                   7922 ;delta                     Allocated to stack - _bp -5
                                   7923 ;_ctx                      Allocated to registers 
                                   7924 ;__1310720121              Allocated to registers 
                                   7925 ;s                         Allocated to registers r5 r6 r7 
                                   7926 ;__1310720123              Allocated to registers 
                                   7927 ;s                         Allocated to registers r5 r6 r7 
                                   7928 ;__1310720125              Allocated to registers 
                                   7929 ;s                         Allocated to registers r5 r6 r7 
                                   7930 ;__1310720127              Allocated to registers 
                                   7931 ;s                         Allocated to registers r5 r6 r7 
                                   7932 ;__1310720129              Allocated to registers 
                                   7933 ;s                         Allocated to registers r5 r6 r7 
                                   7934 ;__1310720131              Allocated to registers 
                                   7935 ;s                         Allocated to registers r5 r6 r7 
                                   7936 ;__1310720133              Allocated to registers 
                                   7937 ;s                         Allocated to registers r5 r6 r7 
                                   7938 ;__1310720135              Allocated to registers 
                                   7939 ;s                         Allocated to registers r5 r6 r7 
                                   7940 ;__1310720137              Allocated to registers 
                                   7941 ;s                         Allocated to registers r5 r6 r7 
                                   7942 ;__1310720139              Allocated to registers 
                                   7943 ;s                         Allocated to registers r5 r6 r7 
                                   7944 ;__1310720141              Allocated to registers 
                                   7945 ;s                         Allocated to registers r5 r6 r7 
                                   7946 ;__1310720143              Allocated to registers 
                                   7947 ;s                         Allocated to registers r5 r6 r7 
                                   7948 ;__1310720145              Allocated to registers 
                                   7949 ;s                         Allocated to registers r5 r6 r7 
                                   7950 ;__1310720147              Allocated to registers 
                                   7951 ;s                         Allocated to registers r5 r6 r7 
                                   7952 ;__1310720149              Allocated to registers 
                                   7953 ;s                         Allocated to registers r5 r6 r7 
                                   7954 ;__1310720151              Allocated to registers 
                                   7955 ;s                         Allocated to registers r5 r6 r7 
                                   7956 ;__1310720153              Allocated to registers 
                                   7957 ;s                         Allocated to registers r5 r6 r7 
                                   7958 ;__1310720155              Allocated to registers 
                                   7959 ;s                         Allocated to registers r5 r6 r7 
                                   7960 ;__1310720157              Allocated to registers 
                                   7961 ;s                         Allocated to registers r5 r6 r7 
                                   7962 ;__1310720159              Allocated to registers 
                                   7963 ;s                         Allocated to registers r5 r6 r7 
                                   7964 ;__1310720161              Allocated to registers 
                                   7965 ;s                         Allocated to registers r5 r6 r7 
                                   7966 ;__1310720163              Allocated to registers 
                                   7967 ;s                         Allocated to registers r5 r6 r7 
                                   7968 ;__1310720165              Allocated to registers 
                                   7969 ;s                         Allocated to registers r5 r6 r7 
                                   7970 ;__1310720167              Allocated to registers 
                                   7971 ;s                         Allocated to registers r5 r6 r7 
                                   7972 ;__1310720169              Allocated to registers 
                                   7973 ;s                         Allocated to registers r5 r6 r7 
                                   7974 ;__1310720171              Allocated to registers 
                                   7975 ;s                         Allocated to registers r5 r6 r7 
                                   7976 ;__1310720173              Allocated to registers 
                                   7977 ;s                         Allocated to registers r5 r6 r7 
                                   7978 ;__1310720175              Allocated to registers 
                                   7979 ;s                         Allocated to registers r5 r6 r7 
                                   7980 ;__1310720177              Allocated to registers 
                                   7981 ;s                         Allocated to registers r5 r6 r7 
                                   7982 ;__1310720179              Allocated to registers 
                                   7983 ;s                         Allocated to registers r5 r6 r7 
                                   7984 ;__1310720181              Allocated to registers 
                                   7985 ;s                         Allocated to registers r5 r6 r7 
                                   7986 ;------------------------------------------------------------
                                   7987 ;	calc.c:399: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   7988 ;	-----------------------------------------
                                   7989 ;	 function help
                                   7990 ;	-----------------------------------------
      005612                       7991 _help:
      005612 C0 08            [24] 7992 	push	_bp
      005614 85 81 08         [24] 7993 	mov	_bp,sp
                                   7994 ;	calc.c:403: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      005617 7D AA            [12] 7995 	mov	r5,#___str_17
      005619 7E 7E            [12] 7996 	mov	r6,#(___str_17 >> 8)
      00561B 7F 80            [12] 7997 	mov	r7,#0x80
                                   7998 ;	calc.c:51: return;
      00561D                       7999 00164$:
                                   8000 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00561D 8D 82            [24] 8001 	mov	dpl,r5
      00561F 8E 83            [24] 8002 	mov	dph,r6
      005621 8F F0            [24] 8003 	mov	b,r7
      005623 12 65 2D         [24] 8004 	lcall	__gptrget
      005626 FC               [12] 8005 	mov	r4,a
      005627 60 10            [24] 8006 	jz	00102$
      005629 7B 00            [12] 8007 	mov	r3,#0x00
      00562B 8C 82            [24] 8008 	mov	dpl,r4
      00562D 8B 83            [24] 8009 	mov	dph,r3
      00562F 12 29 C0         [24] 8010 	lcall	_putchar
      005632 0D               [12] 8011 	inc	r5
                                   8012 ;	calc.c:403: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      005633 BD 00 E7         [24] 8013 	cjne	r5,#0x00,00164$
      005636 0E               [12] 8014 	inc	r6
      005637 80 E4            [24] 8015 	sjmp	00164$
      005639                       8016 00102$:
                                   8017 ;	calc.c:404: printstr("p\tpeek top\r\n");
      005639 7D C2            [12] 8018 	mov	r5,#___str_18
      00563B 7E 7E            [12] 8019 	mov	r6,#(___str_18 >> 8)
      00563D 7F 80            [12] 8020 	mov	r7,#0x80
                                   8021 ;	calc.c:51: return;
      00563F                       8022 00167$:
                                   8023 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00563F 8D 82            [24] 8024 	mov	dpl,r5
      005641 8E 83            [24] 8025 	mov	dph,r6
      005643 8F F0            [24] 8026 	mov	b,r7
      005645 12 65 2D         [24] 8027 	lcall	__gptrget
      005648 FC               [12] 8028 	mov	r4,a
      005649 60 10            [24] 8029 	jz	00104$
      00564B 7B 00            [12] 8030 	mov	r3,#0x00
      00564D 8C 82            [24] 8031 	mov	dpl,r4
      00564F 8B 83            [24] 8032 	mov	dph,r3
      005651 12 29 C0         [24] 8033 	lcall	_putchar
      005654 0D               [12] 8034 	inc	r5
                                   8035 ;	calc.c:404: printstr("p\tpeek top\r\n");
      005655 BD 00 E7         [24] 8036 	cjne	r5,#0x00,00167$
      005658 0E               [12] 8037 	inc	r6
      005659 80 E4            [24] 8038 	sjmp	00167$
      00565B                       8039 00104$:
                                   8040 ;	calc.c:405: printstr("P\tprint stack\r\n");
      00565B 7D CF            [12] 8041 	mov	r5,#___str_19
      00565D 7E 7E            [12] 8042 	mov	r6,#(___str_19 >> 8)
      00565F 7F 80            [12] 8043 	mov	r7,#0x80
                                   8044 ;	calc.c:51: return;
      005661                       8045 00170$:
                                   8046 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005661 8D 82            [24] 8047 	mov	dpl,r5
      005663 8E 83            [24] 8048 	mov	dph,r6
      005665 8F F0            [24] 8049 	mov	b,r7
      005667 12 65 2D         [24] 8050 	lcall	__gptrget
      00566A FC               [12] 8051 	mov	r4,a
      00566B 60 10            [24] 8052 	jz	00106$
      00566D 7B 00            [12] 8053 	mov	r3,#0x00
      00566F 8C 82            [24] 8054 	mov	dpl,r4
      005671 8B 83            [24] 8055 	mov	dph,r3
      005673 12 29 C0         [24] 8056 	lcall	_putchar
      005676 0D               [12] 8057 	inc	r5
                                   8058 ;	calc.c:405: printstr("P\tprint stack\r\n");
      005677 BD 00 E7         [24] 8059 	cjne	r5,#0x00,00170$
      00567A 0E               [12] 8060 	inc	r6
      00567B 80 E4            [24] 8061 	sjmp	00170$
      00567D                       8062 00106$:
                                   8063 ;	calc.c:406: printstr("v.\tpop top\r\n");
      00567D 7D DF            [12] 8064 	mov	r5,#___str_20
      00567F 7E 7E            [12] 8065 	mov	r6,#(___str_20 >> 8)
      005681 7F 80            [12] 8066 	mov	r7,#0x80
                                   8067 ;	calc.c:51: return;
      005683                       8068 00173$:
                                   8069 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005683 8D 82            [24] 8070 	mov	dpl,r5
      005685 8E 83            [24] 8071 	mov	dph,r6
      005687 8F F0            [24] 8072 	mov	b,r7
      005689 12 65 2D         [24] 8073 	lcall	__gptrget
      00568C FC               [12] 8074 	mov	r4,a
      00568D 60 10            [24] 8075 	jz	00108$
      00568F 7B 00            [12] 8076 	mov	r3,#0x00
      005691 8C 82            [24] 8077 	mov	dpl,r4
      005693 8B 83            [24] 8078 	mov	dph,r3
      005695 12 29 C0         [24] 8079 	lcall	_putchar
      005698 0D               [12] 8080 	inc	r5
                                   8081 ;	calc.c:406: printstr("v.\tpop top\r\n");
      005699 BD 00 E7         [24] 8082 	cjne	r5,#0x00,00173$
      00569C 0E               [12] 8083 	inc	r6
      00569D 80 E4            [24] 8084 	sjmp	00173$
      00569F                       8085 00108$:
                                   8086 ;	calc.c:407: printstr("V\tpop all\r\n");
      00569F 7D EC            [12] 8087 	mov	r5,#___str_21
      0056A1 7E 7E            [12] 8088 	mov	r6,#(___str_21 >> 8)
      0056A3 7F 80            [12] 8089 	mov	r7,#0x80
                                   8090 ;	calc.c:51: return;
      0056A5                       8091 00176$:
                                   8092 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0056A5 8D 82            [24] 8093 	mov	dpl,r5
      0056A7 8E 83            [24] 8094 	mov	dph,r6
      0056A9 8F F0            [24] 8095 	mov	b,r7
      0056AB 12 65 2D         [24] 8096 	lcall	__gptrget
      0056AE FC               [12] 8097 	mov	r4,a
      0056AF 60 10            [24] 8098 	jz	00110$
      0056B1 7B 00            [12] 8099 	mov	r3,#0x00
      0056B3 8C 82            [24] 8100 	mov	dpl,r4
      0056B5 8B 83            [24] 8101 	mov	dph,r3
      0056B7 12 29 C0         [24] 8102 	lcall	_putchar
      0056BA 0D               [12] 8103 	inc	r5
                                   8104 ;	calc.c:407: printstr("V\tpop all\r\n");
      0056BB BD 00 E7         [24] 8105 	cjne	r5,#0x00,00176$
      0056BE 0E               [12] 8106 	inc	r6
      0056BF 80 E4            [24] 8107 	sjmp	00176$
      0056C1                       8108 00110$:
                                   8109 ;	calc.c:408: printstr("i\treset acc\r\n");
      0056C1 7D F8            [12] 8110 	mov	r5,#___str_22
      0056C3 7E 7E            [12] 8111 	mov	r6,#(___str_22 >> 8)
      0056C5 7F 80            [12] 8112 	mov	r7,#0x80
                                   8113 ;	calc.c:51: return;
      0056C7                       8114 00179$:
                                   8115 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0056C7 8D 82            [24] 8116 	mov	dpl,r5
      0056C9 8E 83            [24] 8117 	mov	dph,r6
      0056CB 8F F0            [24] 8118 	mov	b,r7
      0056CD 12 65 2D         [24] 8119 	lcall	__gptrget
      0056D0 FC               [12] 8120 	mov	r4,a
      0056D1 60 10            [24] 8121 	jz	00112$
      0056D3 7B 00            [12] 8122 	mov	r3,#0x00
      0056D5 8C 82            [24] 8123 	mov	dpl,r4
      0056D7 8B 83            [24] 8124 	mov	dph,r3
      0056D9 12 29 C0         [24] 8125 	lcall	_putchar
      0056DC 0D               [12] 8126 	inc	r5
                                   8127 ;	calc.c:408: printstr("i\treset acc\r\n");
      0056DD BD 00 E7         [24] 8128 	cjne	r5,#0x00,00179$
      0056E0 0E               [12] 8129 	inc	r6
      0056E1 80 E4            [24] 8130 	sjmp	00179$
      0056E3                       8131 00112$:
                                   8132 ;	calc.c:409: printstr("I\treset and discard acc\r\n");
      0056E3 7D 06            [12] 8133 	mov	r5,#___str_23
      0056E5 7E 7F            [12] 8134 	mov	r6,#(___str_23 >> 8)
      0056E7 7F 80            [12] 8135 	mov	r7,#0x80
                                   8136 ;	calc.c:51: return;
      0056E9                       8137 00182$:
                                   8138 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0056E9 8D 82            [24] 8139 	mov	dpl,r5
      0056EB 8E 83            [24] 8140 	mov	dph,r6
      0056ED 8F F0            [24] 8141 	mov	b,r7
      0056EF 12 65 2D         [24] 8142 	lcall	__gptrget
      0056F2 FC               [12] 8143 	mov	r4,a
      0056F3 60 10            [24] 8144 	jz	00114$
      0056F5 7B 00            [12] 8145 	mov	r3,#0x00
      0056F7 8C 82            [24] 8146 	mov	dpl,r4
      0056F9 8B 83            [24] 8147 	mov	dph,r3
      0056FB 12 29 C0         [24] 8148 	lcall	_putchar
      0056FE 0D               [12] 8149 	inc	r5
                                   8150 ;	calc.c:409: printstr("I\treset and discard acc\r\n");
      0056FF BD 00 E7         [24] 8151 	cjne	r5,#0x00,00182$
      005702 0E               [12] 8152 	inc	r6
      005703 80 E4            [24] 8153 	sjmp	00182$
      005705                       8154 00114$:
                                   8155 ;	calc.c:410: printstr("x\texchange top 2\r\n");
      005705 7D 20            [12] 8156 	mov	r5,#___str_24
      005707 7E 7F            [12] 8157 	mov	r6,#(___str_24 >> 8)
      005709 7F 80            [12] 8158 	mov	r7,#0x80
                                   8159 ;	calc.c:51: return;
      00570B                       8160 00185$:
                                   8161 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00570B 8D 82            [24] 8162 	mov	dpl,r5
      00570D 8E 83            [24] 8163 	mov	dph,r6
      00570F 8F F0            [24] 8164 	mov	b,r7
      005711 12 65 2D         [24] 8165 	lcall	__gptrget
      005714 FC               [12] 8166 	mov	r4,a
      005715 60 10            [24] 8167 	jz	00116$
      005717 7B 00            [12] 8168 	mov	r3,#0x00
      005719 8C 82            [24] 8169 	mov	dpl,r4
      00571B 8B 83            [24] 8170 	mov	dph,r3
      00571D 12 29 C0         [24] 8171 	lcall	_putchar
      005720 0D               [12] 8172 	inc	r5
                                   8173 ;	calc.c:410: printstr("x\texchange top 2\r\n");
      005721 BD 00 E7         [24] 8174 	cjne	r5,#0x00,00185$
      005724 0E               [12] 8175 	inc	r6
      005725 80 E4            [24] 8176 	sjmp	00185$
      005727                       8177 00116$:
                                   8178 ;	calc.c:411: printstr("X\texchange stacks primary <-> secondary\r\n");
      005727 7D 33            [12] 8179 	mov	r5,#___str_25
      005729 7E 7F            [12] 8180 	mov	r6,#(___str_25 >> 8)
      00572B 7F 80            [12] 8181 	mov	r7,#0x80
                                   8182 ;	calc.c:51: return;
      00572D                       8183 00188$:
                                   8184 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00572D 8D 82            [24] 8185 	mov	dpl,r5
      00572F 8E 83            [24] 8186 	mov	dph,r6
      005731 8F F0            [24] 8187 	mov	b,r7
      005733 12 65 2D         [24] 8188 	lcall	__gptrget
      005736 FC               [12] 8189 	mov	r4,a
      005737 60 10            [24] 8190 	jz	00118$
      005739 7B 00            [12] 8191 	mov	r3,#0x00
      00573B 8C 82            [24] 8192 	mov	dpl,r4
      00573D 8B 83            [24] 8193 	mov	dph,r3
      00573F 12 29 C0         [24] 8194 	lcall	_putchar
      005742 0D               [12] 8195 	inc	r5
                                   8196 ;	calc.c:411: printstr("X\texchange stacks primary <-> secondary\r\n");
      005743 BD 00 E7         [24] 8197 	cjne	r5,#0x00,00188$
      005746 0E               [12] 8198 	inc	r6
      005747 80 E4            [24] 8199 	sjmp	00188$
      005749                       8200 00118$:
                                   8201 ;	calc.c:412: printstr("T\texchange tops primary <-> secondary\r\n");
      005749 7D 5D            [12] 8202 	mov	r5,#___str_26
      00574B 7E 7F            [12] 8203 	mov	r6,#(___str_26 >> 8)
      00574D 7F 80            [12] 8204 	mov	r7,#0x80
                                   8205 ;	calc.c:51: return;
      00574F                       8206 00191$:
                                   8207 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00574F 8D 82            [24] 8208 	mov	dpl,r5
      005751 8E 83            [24] 8209 	mov	dph,r6
      005753 8F F0            [24] 8210 	mov	b,r7
      005755 12 65 2D         [24] 8211 	lcall	__gptrget
      005758 FC               [12] 8212 	mov	r4,a
      005759 60 10            [24] 8213 	jz	00120$
      00575B 7B 00            [12] 8214 	mov	r3,#0x00
      00575D 8C 82            [24] 8215 	mov	dpl,r4
      00575F 8B 83            [24] 8216 	mov	dph,r3
      005761 12 29 C0         [24] 8217 	lcall	_putchar
      005764 0D               [12] 8218 	inc	r5
                                   8219 ;	calc.c:412: printstr("T\texchange tops primary <-> secondary\r\n");
      005765 BD 00 E7         [24] 8220 	cjne	r5,#0x00,00191$
      005768 0E               [12] 8221 	inc	r6
      005769 80 E4            [24] 8222 	sjmp	00191$
      00576B                       8223 00120$:
                                   8224 ;	calc.c:413: printstr("U\tcopy top secondary -> primary\r\n");
      00576B 7D 85            [12] 8225 	mov	r5,#___str_27
      00576D 7E 7F            [12] 8226 	mov	r6,#(___str_27 >> 8)
      00576F 7F 80            [12] 8227 	mov	r7,#0x80
                                   8228 ;	calc.c:51: return;
      005771                       8229 00194$:
                                   8230 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005771 8D 82            [24] 8231 	mov	dpl,r5
      005773 8E 83            [24] 8232 	mov	dph,r6
      005775 8F F0            [24] 8233 	mov	b,r7
      005777 12 65 2D         [24] 8234 	lcall	__gptrget
      00577A FC               [12] 8235 	mov	r4,a
      00577B 60 10            [24] 8236 	jz	00122$
      00577D 7B 00            [12] 8237 	mov	r3,#0x00
      00577F 8C 82            [24] 8238 	mov	dpl,r4
      005781 8B 83            [24] 8239 	mov	dph,r3
      005783 12 29 C0         [24] 8240 	lcall	_putchar
      005786 0D               [12] 8241 	inc	r5
                                   8242 ;	calc.c:413: printstr("U\tcopy top secondary -> primary\r\n");
      005787 BD 00 E7         [24] 8243 	cjne	r5,#0x00,00194$
      00578A 0E               [12] 8244 	inc	r6
      00578B 80 E4            [24] 8245 	sjmp	00194$
      00578D                       8246 00122$:
                                   8247 ;	calc.c:414: printstr("u\tcopy top primary -> secondary\r\n");
      00578D 7D A7            [12] 8248 	mov	r5,#___str_28
      00578F 7E 7F            [12] 8249 	mov	r6,#(___str_28 >> 8)
      005791 7F 80            [12] 8250 	mov	r7,#0x80
                                   8251 ;	calc.c:51: return;
      005793                       8252 00197$:
                                   8253 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005793 8D 82            [24] 8254 	mov	dpl,r5
      005795 8E 83            [24] 8255 	mov	dph,r6
      005797 8F F0            [24] 8256 	mov	b,r7
      005799 12 65 2D         [24] 8257 	lcall	__gptrget
      00579C FC               [12] 8258 	mov	r4,a
      00579D 60 10            [24] 8259 	jz	00124$
      00579F 7B 00            [12] 8260 	mov	r3,#0x00
      0057A1 8C 82            [24] 8261 	mov	dpl,r4
      0057A3 8B 83            [24] 8262 	mov	dph,r3
      0057A5 12 29 C0         [24] 8263 	lcall	_putchar
      0057A8 0D               [12] 8264 	inc	r5
                                   8265 ;	calc.c:414: printstr("u\tcopy top primary -> secondary\r\n");
      0057A9 BD 00 E7         [24] 8266 	cjne	r5,#0x00,00197$
      0057AC 0E               [12] 8267 	inc	r6
      0057AD 80 E4            [24] 8268 	sjmp	00197$
      0057AF                       8269 00124$:
                                   8270 ;	calc.c:415: printstr("M\tmove top secondary -> primary\r\n");
      0057AF 7D C9            [12] 8271 	mov	r5,#___str_29
      0057B1 7E 7F            [12] 8272 	mov	r6,#(___str_29 >> 8)
      0057B3 7F 80            [12] 8273 	mov	r7,#0x80
                                   8274 ;	calc.c:51: return;
      0057B5                       8275 00200$:
                                   8276 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0057B5 8D 82            [24] 8277 	mov	dpl,r5
      0057B7 8E 83            [24] 8278 	mov	dph,r6
      0057B9 8F F0            [24] 8279 	mov	b,r7
      0057BB 12 65 2D         [24] 8280 	lcall	__gptrget
      0057BE FC               [12] 8281 	mov	r4,a
      0057BF 60 10            [24] 8282 	jz	00126$
      0057C1 7B 00            [12] 8283 	mov	r3,#0x00
      0057C3 8C 82            [24] 8284 	mov	dpl,r4
      0057C5 8B 83            [24] 8285 	mov	dph,r3
      0057C7 12 29 C0         [24] 8286 	lcall	_putchar
      0057CA 0D               [12] 8287 	inc	r5
                                   8288 ;	calc.c:415: printstr("M\tmove top secondary -> primary\r\n");
      0057CB BD 00 E7         [24] 8289 	cjne	r5,#0x00,00200$
      0057CE 0E               [12] 8290 	inc	r6
      0057CF 80 E4            [24] 8291 	sjmp	00200$
      0057D1                       8292 00126$:
                                   8293 ;	calc.c:416: printstr("m\tmove top primary -> secondary\r\n");
      0057D1 7D EB            [12] 8294 	mov	r5,#___str_30
      0057D3 7E 7F            [12] 8295 	mov	r6,#(___str_30 >> 8)
      0057D5 7F 80            [12] 8296 	mov	r7,#0x80
                                   8297 ;	calc.c:51: return;
      0057D7                       8298 00203$:
                                   8299 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0057D7 8D 82            [24] 8300 	mov	dpl,r5
      0057D9 8E 83            [24] 8301 	mov	dph,r6
      0057DB 8F F0            [24] 8302 	mov	b,r7
      0057DD 12 65 2D         [24] 8303 	lcall	__gptrget
      0057E0 FC               [12] 8304 	mov	r4,a
      0057E1 60 10            [24] 8305 	jz	00128$
      0057E3 7B 00            [12] 8306 	mov	r3,#0x00
      0057E5 8C 82            [24] 8307 	mov	dpl,r4
      0057E7 8B 83            [24] 8308 	mov	dph,r3
      0057E9 12 29 C0         [24] 8309 	lcall	_putchar
      0057EC 0D               [12] 8310 	inc	r5
                                   8311 ;	calc.c:416: printstr("m\tmove top primary -> secondary\r\n");
      0057ED BD 00 E7         [24] 8312 	cjne	r5,#0x00,00203$
      0057F0 0E               [12] 8313 	inc	r6
      0057F1 80 E4            [24] 8314 	sjmp	00203$
      0057F3                       8315 00128$:
                                   8316 ;	calc.c:417: printstr("+\tadd top 2\r\n");
      0057F3 7D 0D            [12] 8317 	mov	r5,#___str_31
      0057F5 7E 80            [12] 8318 	mov	r6,#(___str_31 >> 8)
      0057F7 7F 80            [12] 8319 	mov	r7,#0x80
                                   8320 ;	calc.c:51: return;
      0057F9                       8321 00206$:
                                   8322 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0057F9 8D 82            [24] 8323 	mov	dpl,r5
      0057FB 8E 83            [24] 8324 	mov	dph,r6
      0057FD 8F F0            [24] 8325 	mov	b,r7
      0057FF 12 65 2D         [24] 8326 	lcall	__gptrget
      005802 FC               [12] 8327 	mov	r4,a
      005803 60 10            [24] 8328 	jz	00130$
      005805 7B 00            [12] 8329 	mov	r3,#0x00
      005807 8C 82            [24] 8330 	mov	dpl,r4
      005809 8B 83            [24] 8331 	mov	dph,r3
      00580B 12 29 C0         [24] 8332 	lcall	_putchar
      00580E 0D               [12] 8333 	inc	r5
                                   8334 ;	calc.c:417: printstr("+\tadd top 2\r\n");
      00580F BD 00 E7         [24] 8335 	cjne	r5,#0x00,00206$
      005812 0E               [12] 8336 	inc	r6
      005813 80 E4            [24] 8337 	sjmp	00206$
      005815                       8338 00130$:
                                   8339 ;	calc.c:418: printstr("-\tsubtract top 2\r\n");
      005815 7D 1B            [12] 8340 	mov	r5,#___str_32
      005817 7E 80            [12] 8341 	mov	r6,#(___str_32 >> 8)
      005819 7F 80            [12] 8342 	mov	r7,#0x80
                                   8343 ;	calc.c:51: return;
      00581B                       8344 00209$:
                                   8345 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00581B 8D 82            [24] 8346 	mov	dpl,r5
      00581D 8E 83            [24] 8347 	mov	dph,r6
      00581F 8F F0            [24] 8348 	mov	b,r7
      005821 12 65 2D         [24] 8349 	lcall	__gptrget
      005824 FC               [12] 8350 	mov	r4,a
      005825 60 10            [24] 8351 	jz	00132$
      005827 7B 00            [12] 8352 	mov	r3,#0x00
      005829 8C 82            [24] 8353 	mov	dpl,r4
      00582B 8B 83            [24] 8354 	mov	dph,r3
      00582D 12 29 C0         [24] 8355 	lcall	_putchar
      005830 0D               [12] 8356 	inc	r5
                                   8357 ;	calc.c:418: printstr("-\tsubtract top 2\r\n");
      005831 BD 00 E7         [24] 8358 	cjne	r5,#0x00,00209$
      005834 0E               [12] 8359 	inc	r6
      005835 80 E4            [24] 8360 	sjmp	00209$
      005837                       8361 00132$:
                                   8362 ;	calc.c:419: printstr("*\tmultiply top 2\r\n");
      005837 7D 2E            [12] 8363 	mov	r5,#___str_33
      005839 7E 80            [12] 8364 	mov	r6,#(___str_33 >> 8)
      00583B 7F 80            [12] 8365 	mov	r7,#0x80
                                   8366 ;	calc.c:51: return;
      00583D                       8367 00212$:
                                   8368 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00583D 8D 82            [24] 8369 	mov	dpl,r5
      00583F 8E 83            [24] 8370 	mov	dph,r6
      005841 8F F0            [24] 8371 	mov	b,r7
      005843 12 65 2D         [24] 8372 	lcall	__gptrget
      005846 FC               [12] 8373 	mov	r4,a
      005847 60 10            [24] 8374 	jz	00134$
      005849 7B 00            [12] 8375 	mov	r3,#0x00
      00584B 8C 82            [24] 8376 	mov	dpl,r4
      00584D 8B 83            [24] 8377 	mov	dph,r3
      00584F 12 29 C0         [24] 8378 	lcall	_putchar
      005852 0D               [12] 8379 	inc	r5
                                   8380 ;	calc.c:419: printstr("*\tmultiply top 2\r\n");
      005853 BD 00 E7         [24] 8381 	cjne	r5,#0x00,00212$
      005856 0E               [12] 8382 	inc	r6
      005857 80 E4            [24] 8383 	sjmp	00212$
      005859                       8384 00134$:
                                   8385 ;	calc.c:420: printstr("/\tdivide top 2\r\n");
      005859 7D 41            [12] 8386 	mov	r5,#___str_34
      00585B 7E 80            [12] 8387 	mov	r6,#(___str_34 >> 8)
      00585D 7F 80            [12] 8388 	mov	r7,#0x80
                                   8389 ;	calc.c:51: return;
      00585F                       8390 00215$:
                                   8391 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00585F 8D 82            [24] 8392 	mov	dpl,r5
      005861 8E 83            [24] 8393 	mov	dph,r6
      005863 8F F0            [24] 8394 	mov	b,r7
      005865 12 65 2D         [24] 8395 	lcall	__gptrget
      005868 FC               [12] 8396 	mov	r4,a
      005869 60 10            [24] 8397 	jz	00136$
      00586B 7B 00            [12] 8398 	mov	r3,#0x00
      00586D 8C 82            [24] 8399 	mov	dpl,r4
      00586F 8B 83            [24] 8400 	mov	dph,r3
      005871 12 29 C0         [24] 8401 	lcall	_putchar
      005874 0D               [12] 8402 	inc	r5
                                   8403 ;	calc.c:420: printstr("/\tdivide top 2\r\n");
      005875 BD 00 E7         [24] 8404 	cjne	r5,#0x00,00215$
      005878 0E               [12] 8405 	inc	r6
      005879 80 E4            [24] 8406 	sjmp	00215$
      00587B                       8407 00136$:
                                   8408 ;	calc.c:421: printstr("\\\tdivide top 2 unsigned\r\n");	
      00587B 7D 52            [12] 8409 	mov	r5,#___str_35
      00587D 7E 80            [12] 8410 	mov	r6,#(___str_35 >> 8)
      00587F 7F 80            [12] 8411 	mov	r7,#0x80
                                   8412 ;	calc.c:51: return;
      005881                       8413 00218$:
                                   8414 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005881 8D 82            [24] 8415 	mov	dpl,r5
      005883 8E 83            [24] 8416 	mov	dph,r6
      005885 8F F0            [24] 8417 	mov	b,r7
      005887 12 65 2D         [24] 8418 	lcall	__gptrget
      00588A FC               [12] 8419 	mov	r4,a
      00588B 60 10            [24] 8420 	jz	00138$
      00588D 7B 00            [12] 8421 	mov	r3,#0x00
      00588F 8C 82            [24] 8422 	mov	dpl,r4
      005891 8B 83            [24] 8423 	mov	dph,r3
      005893 12 29 C0         [24] 8424 	lcall	_putchar
      005896 0D               [12] 8425 	inc	r5
                                   8426 ;	calc.c:421: printstr("\\\tdivide top 2 unsigned\r\n");	
      005897 BD 00 E7         [24] 8427 	cjne	r5,#0x00,00218$
      00589A 0E               [12] 8428 	inc	r6
      00589B 80 E4            [24] 8429 	sjmp	00218$
      00589D                       8430 00138$:
                                   8431 ;	calc.c:422: printstr("%\tmodulus top 2\r\n");
      00589D 7D 6C            [12] 8432 	mov	r5,#___str_36
      00589F 7E 80            [12] 8433 	mov	r6,#(___str_36 >> 8)
      0058A1 7F 80            [12] 8434 	mov	r7,#0x80
                                   8435 ;	calc.c:51: return;
      0058A3                       8436 00221$:
                                   8437 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0058A3 8D 82            [24] 8438 	mov	dpl,r5
      0058A5 8E 83            [24] 8439 	mov	dph,r6
      0058A7 8F F0            [24] 8440 	mov	b,r7
      0058A9 12 65 2D         [24] 8441 	lcall	__gptrget
      0058AC FC               [12] 8442 	mov	r4,a
      0058AD 60 10            [24] 8443 	jz	00140$
      0058AF 7B 00            [12] 8444 	mov	r3,#0x00
      0058B1 8C 82            [24] 8445 	mov	dpl,r4
      0058B3 8B 83            [24] 8446 	mov	dph,r3
      0058B5 12 29 C0         [24] 8447 	lcall	_putchar
      0058B8 0D               [12] 8448 	inc	r5
                                   8449 ;	calc.c:422: printstr("%\tmodulus top 2\r\n");
      0058B9 BD 00 E7         [24] 8450 	cjne	r5,#0x00,00221$
      0058BC 0E               [12] 8451 	inc	r6
      0058BD 80 E4            [24] 8452 	sjmp	00221$
      0058BF                       8453 00140$:
                                   8454 ;	calc.c:423: printstr("#\tmodulus top 2 unsigned\r\n");
      0058BF 7D 7E            [12] 8455 	mov	r5,#___str_37
      0058C1 7E 80            [12] 8456 	mov	r6,#(___str_37 >> 8)
      0058C3 7F 80            [12] 8457 	mov	r7,#0x80
                                   8458 ;	calc.c:51: return;
      0058C5                       8459 00224$:
                                   8460 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0058C5 8D 82            [24] 8461 	mov	dpl,r5
      0058C7 8E 83            [24] 8462 	mov	dph,r6
      0058C9 8F F0            [24] 8463 	mov	b,r7
      0058CB 12 65 2D         [24] 8464 	lcall	__gptrget
      0058CE FC               [12] 8465 	mov	r4,a
      0058CF 60 10            [24] 8466 	jz	00142$
      0058D1 7B 00            [12] 8467 	mov	r3,#0x00
      0058D3 8C 82            [24] 8468 	mov	dpl,r4
      0058D5 8B 83            [24] 8469 	mov	dph,r3
      0058D7 12 29 C0         [24] 8470 	lcall	_putchar
      0058DA 0D               [12] 8471 	inc	r5
                                   8472 ;	calc.c:423: printstr("#\tmodulus top 2 unsigned\r\n");
      0058DB BD 00 E7         [24] 8473 	cjne	r5,#0x00,00224$
      0058DE 0E               [12] 8474 	inc	r6
      0058DF 80 E4            [24] 8475 	sjmp	00224$
      0058E1                       8476 00142$:
                                   8477 ;	calc.c:424: printstr("&\tand top 2\r\n");
      0058E1 7D 99            [12] 8478 	mov	r5,#___str_38
      0058E3 7E 80            [12] 8479 	mov	r6,#(___str_38 >> 8)
      0058E5 7F 80            [12] 8480 	mov	r7,#0x80
                                   8481 ;	calc.c:51: return;
      0058E7                       8482 00227$:
                                   8483 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0058E7 8D 82            [24] 8484 	mov	dpl,r5
      0058E9 8E 83            [24] 8485 	mov	dph,r6
      0058EB 8F F0            [24] 8486 	mov	b,r7
      0058ED 12 65 2D         [24] 8487 	lcall	__gptrget
      0058F0 FC               [12] 8488 	mov	r4,a
      0058F1 60 10            [24] 8489 	jz	00144$
      0058F3 7B 00            [12] 8490 	mov	r3,#0x00
      0058F5 8C 82            [24] 8491 	mov	dpl,r4
      0058F7 8B 83            [24] 8492 	mov	dph,r3
      0058F9 12 29 C0         [24] 8493 	lcall	_putchar
      0058FC 0D               [12] 8494 	inc	r5
                                   8495 ;	calc.c:424: printstr("&\tand top 2\r\n");
      0058FD BD 00 E7         [24] 8496 	cjne	r5,#0x00,00227$
      005900 0E               [12] 8497 	inc	r6
      005901 80 E4            [24] 8498 	sjmp	00227$
      005903                       8499 00144$:
                                   8500 ;	calc.c:425: printstr("|\tor top 2\r\n");
      005903 7D A7            [12] 8501 	mov	r5,#___str_39
      005905 7E 80            [12] 8502 	mov	r6,#(___str_39 >> 8)
      005907 7F 80            [12] 8503 	mov	r7,#0x80
                                   8504 ;	calc.c:51: return;
      005909                       8505 00230$:
                                   8506 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005909 8D 82            [24] 8507 	mov	dpl,r5
      00590B 8E 83            [24] 8508 	mov	dph,r6
      00590D 8F F0            [24] 8509 	mov	b,r7
      00590F 12 65 2D         [24] 8510 	lcall	__gptrget
      005912 FC               [12] 8511 	mov	r4,a
      005913 60 10            [24] 8512 	jz	00146$
      005915 7B 00            [12] 8513 	mov	r3,#0x00
      005917 8C 82            [24] 8514 	mov	dpl,r4
      005919 8B 83            [24] 8515 	mov	dph,r3
      00591B 12 29 C0         [24] 8516 	lcall	_putchar
      00591E 0D               [12] 8517 	inc	r5
                                   8518 ;	calc.c:425: printstr("|\tor top 2\r\n");
      00591F BD 00 E7         [24] 8519 	cjne	r5,#0x00,00230$
      005922 0E               [12] 8520 	inc	r6
      005923 80 E4            [24] 8521 	sjmp	00230$
      005925                       8522 00146$:
                                   8523 ;	calc.c:426: printstr("^\txor top 2\r\n");
      005925 7D B4            [12] 8524 	mov	r5,#___str_40
      005927 7E 80            [12] 8525 	mov	r6,#(___str_40 >> 8)
      005929 7F 80            [12] 8526 	mov	r7,#0x80
                                   8527 ;	calc.c:51: return;
      00592B                       8528 00233$:
                                   8529 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00592B 8D 82            [24] 8530 	mov	dpl,r5
      00592D 8E 83            [24] 8531 	mov	dph,r6
      00592F 8F F0            [24] 8532 	mov	b,r7
      005931 12 65 2D         [24] 8533 	lcall	__gptrget
      005934 FC               [12] 8534 	mov	r4,a
      005935 60 10            [24] 8535 	jz	00148$
      005937 7B 00            [12] 8536 	mov	r3,#0x00
      005939 8C 82            [24] 8537 	mov	dpl,r4
      00593B 8B 83            [24] 8538 	mov	dph,r3
      00593D 12 29 C0         [24] 8539 	lcall	_putchar
      005940 0D               [12] 8540 	inc	r5
                                   8541 ;	calc.c:426: printstr("^\txor top 2\r\n");
      005941 BD 00 E7         [24] 8542 	cjne	r5,#0x00,00233$
      005944 0E               [12] 8543 	inc	r6
      005945 80 E4            [24] 8544 	sjmp	00233$
      005947                       8545 00148$:
                                   8546 ;	calc.c:427: printstr(">\tshift right top 2\r\n");
      005947 7D C2            [12] 8547 	mov	r5,#___str_41
      005949 7E 80            [12] 8548 	mov	r6,#(___str_41 >> 8)
      00594B 7F 80            [12] 8549 	mov	r7,#0x80
                                   8550 ;	calc.c:51: return;
      00594D                       8551 00236$:
                                   8552 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00594D 8D 82            [24] 8553 	mov	dpl,r5
      00594F 8E 83            [24] 8554 	mov	dph,r6
      005951 8F F0            [24] 8555 	mov	b,r7
      005953 12 65 2D         [24] 8556 	lcall	__gptrget
      005956 FC               [12] 8557 	mov	r4,a
      005957 60 10            [24] 8558 	jz	00150$
      005959 7B 00            [12] 8559 	mov	r3,#0x00
      00595B 8C 82            [24] 8560 	mov	dpl,r4
      00595D 8B 83            [24] 8561 	mov	dph,r3
      00595F 12 29 C0         [24] 8562 	lcall	_putchar
      005962 0D               [12] 8563 	inc	r5
                                   8564 ;	calc.c:427: printstr(">\tshift right top 2\r\n");
      005963 BD 00 E7         [24] 8565 	cjne	r5,#0x00,00236$
      005966 0E               [12] 8566 	inc	r6
      005967 80 E4            [24] 8567 	sjmp	00236$
      005969                       8568 00150$:
                                   8569 ;	calc.c:428: printstr("]\tarithmetic shift right top 2\r\n");
      005969 7D D8            [12] 8570 	mov	r5,#___str_42
      00596B 7E 80            [12] 8571 	mov	r6,#(___str_42 >> 8)
      00596D 7F 80            [12] 8572 	mov	r7,#0x80
                                   8573 ;	calc.c:51: return;
      00596F                       8574 00239$:
                                   8575 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00596F 8D 82            [24] 8576 	mov	dpl,r5
      005971 8E 83            [24] 8577 	mov	dph,r6
      005973 8F F0            [24] 8578 	mov	b,r7
      005975 12 65 2D         [24] 8579 	lcall	__gptrget
      005978 FC               [12] 8580 	mov	r4,a
      005979 60 10            [24] 8581 	jz	00152$
      00597B 7B 00            [12] 8582 	mov	r3,#0x00
      00597D 8C 82            [24] 8583 	mov	dpl,r4
      00597F 8B 83            [24] 8584 	mov	dph,r3
      005981 12 29 C0         [24] 8585 	lcall	_putchar
      005984 0D               [12] 8586 	inc	r5
                                   8587 ;	calc.c:428: printstr("]\tarithmetic shift right top 2\r\n");
      005985 BD 00 E7         [24] 8588 	cjne	r5,#0x00,00239$
      005988 0E               [12] 8589 	inc	r6
      005989 80 E4            [24] 8590 	sjmp	00239$
      00598B                       8591 00152$:
                                   8592 ;	calc.c:429: printstr("<\tshift left top 2\r\n");
      00598B 7D F9            [12] 8593 	mov	r5,#___str_43
      00598D 7E 80            [12] 8594 	mov	r6,#(___str_43 >> 8)
      00598F 7F 80            [12] 8595 	mov	r7,#0x80
                                   8596 ;	calc.c:51: return;
      005991                       8597 00242$:
                                   8598 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005991 8D 82            [24] 8599 	mov	dpl,r5
      005993 8E 83            [24] 8600 	mov	dph,r6
      005995 8F F0            [24] 8601 	mov	b,r7
      005997 12 65 2D         [24] 8602 	lcall	__gptrget
      00599A FC               [12] 8603 	mov	r4,a
      00599B 60 10            [24] 8604 	jz	00154$
      00599D 7B 00            [12] 8605 	mov	r3,#0x00
      00599F 8C 82            [24] 8606 	mov	dpl,r4
      0059A1 8B 83            [24] 8607 	mov	dph,r3
      0059A3 12 29 C0         [24] 8608 	lcall	_putchar
      0059A6 0D               [12] 8609 	inc	r5
                                   8610 ;	calc.c:429: printstr("<\tshift left top 2\r\n");
      0059A7 BD 00 E7         [24] 8611 	cjne	r5,#0x00,00242$
      0059AA 0E               [12] 8612 	inc	r6
      0059AB 80 E4            [24] 8613 	sjmp	00242$
      0059AD                       8614 00154$:
                                   8615 ;	calc.c:430: printstr("~\tbitwise not top\r\n");
      0059AD 7D 0E            [12] 8616 	mov	r5,#___str_44
      0059AF 7E 81            [12] 8617 	mov	r6,#(___str_44 >> 8)
      0059B1 7F 80            [12] 8618 	mov	r7,#0x80
                                   8619 ;	calc.c:51: return;
      0059B3                       8620 00245$:
                                   8621 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0059B3 8D 82            [24] 8622 	mov	dpl,r5
      0059B5 8E 83            [24] 8623 	mov	dph,r6
      0059B7 8F F0            [24] 8624 	mov	b,r7
      0059B9 12 65 2D         [24] 8625 	lcall	__gptrget
      0059BC FC               [12] 8626 	mov	r4,a
      0059BD 60 10            [24] 8627 	jz	00156$
      0059BF 7B 00            [12] 8628 	mov	r3,#0x00
      0059C1 8C 82            [24] 8629 	mov	dpl,r4
      0059C3 8B 83            [24] 8630 	mov	dph,r3
      0059C5 12 29 C0         [24] 8631 	lcall	_putchar
      0059C8 0D               [12] 8632 	inc	r5
                                   8633 ;	calc.c:430: printstr("~\tbitwise not top\r\n");
      0059C9 BD 00 E7         [24] 8634 	cjne	r5,#0x00,00245$
      0059CC 0E               [12] 8635 	inc	r6
      0059CD 80 E4            [24] 8636 	sjmp	00245$
      0059CF                       8637 00156$:
                                   8638 ;	calc.c:431: printstr("s\tstatus\r\n");
      0059CF 7D 22            [12] 8639 	mov	r5,#___str_45
      0059D1 7E 81            [12] 8640 	mov	r6,#(___str_45 >> 8)
      0059D3 7F 80            [12] 8641 	mov	r7,#0x80
                                   8642 ;	calc.c:51: return;
      0059D5                       8643 00248$:
                                   8644 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0059D5 8D 82            [24] 8645 	mov	dpl,r5
      0059D7 8E 83            [24] 8646 	mov	dph,r6
      0059D9 8F F0            [24] 8647 	mov	b,r7
      0059DB 12 65 2D         [24] 8648 	lcall	__gptrget
      0059DE FC               [12] 8649 	mov	r4,a
      0059DF 60 10            [24] 8650 	jz	00158$
      0059E1 7B 00            [12] 8651 	mov	r3,#0x00
      0059E3 8C 82            [24] 8652 	mov	dpl,r4
      0059E5 8B 83            [24] 8653 	mov	dph,r3
      0059E7 12 29 C0         [24] 8654 	lcall	_putchar
      0059EA 0D               [12] 8655 	inc	r5
                                   8656 ;	calc.c:431: printstr("s\tstatus\r\n");
      0059EB BD 00 E7         [24] 8657 	cjne	r5,#0x00,00248$
      0059EE 0E               [12] 8658 	inc	r6
      0059EF 80 E4            [24] 8659 	sjmp	00248$
      0059F1                       8660 00158$:
                                   8661 ;	calc.c:432: printstr("?\thelp\r\n");
      0059F1 7D 2D            [12] 8662 	mov	r5,#___str_46
      0059F3 7E 81            [12] 8663 	mov	r6,#(___str_46 >> 8)
      0059F5 7F 80            [12] 8664 	mov	r7,#0x80
                                   8665 ;	calc.c:51: return;
      0059F7                       8666 00251$:
                                   8667 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0059F7 8D 82            [24] 8668 	mov	dpl,r5
      0059F9 8E 83            [24] 8669 	mov	dph,r6
      0059FB 8F F0            [24] 8670 	mov	b,r7
      0059FD 12 65 2D         [24] 8671 	lcall	__gptrget
      005A00 FC               [12] 8672 	mov	r4,a
      005A01 60 10            [24] 8673 	jz	00160$
      005A03 7B 00            [12] 8674 	mov	r3,#0x00
      005A05 8C 82            [24] 8675 	mov	dpl,r4
      005A07 8B 83            [24] 8676 	mov	dph,r3
      005A09 12 29 C0         [24] 8677 	lcall	_putchar
      005A0C 0D               [12] 8678 	inc	r5
                                   8679 ;	calc.c:432: printstr("?\thelp\r\n");
      005A0D BD 00 E7         [24] 8680 	cjne	r5,#0x00,00251$
      005A10 0E               [12] 8681 	inc	r6
      005A11 80 E4            [24] 8682 	sjmp	00251$
      005A13                       8683 00160$:
                                   8684 ;	calc.c:433: printstr("q\tquit\r\n");
      005A13 7D 36            [12] 8685 	mov	r5,#___str_47
      005A15 7E 81            [12] 8686 	mov	r6,#(___str_47 >> 8)
      005A17 7F 80            [12] 8687 	mov	r7,#0x80
                                   8688 ;	calc.c:51: return;
      005A19                       8689 00254$:
                                   8690 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005A19 8D 82            [24] 8691 	mov	dpl,r5
      005A1B 8E 83            [24] 8692 	mov	dph,r6
      005A1D 8F F0            [24] 8693 	mov	b,r7
      005A1F 12 65 2D         [24] 8694 	lcall	__gptrget
      005A22 FC               [12] 8695 	mov	r4,a
      005A23 60 10            [24] 8696 	jz	00162$
      005A25 7B 00            [12] 8697 	mov	r3,#0x00
      005A27 8C 82            [24] 8698 	mov	dpl,r4
      005A29 8B 83            [24] 8699 	mov	dph,r3
      005A2B 12 29 C0         [24] 8700 	lcall	_putchar
      005A2E 0D               [12] 8701 	inc	r5
                                   8702 ;	calc.c:433: printstr("q\tquit\r\n");
      005A2F BD 00 E7         [24] 8703 	cjne	r5,#0x00,00254$
      005A32 0E               [12] 8704 	inc	r6
      005A33 80 E4            [24] 8705 	sjmp	00254$
      005A35                       8706 00162$:
                                   8707 ;	calc.c:435: return 1;
      005A35 90 00 01         [24] 8708 	mov	dptr,#0x0001
                                   8709 ;	calc.c:436: }
      005A38 D0 08            [24] 8710 	pop	_bp
      005A3A 22               [24] 8711 	ret
                                   8712 ;------------------------------------------------------------
                                   8713 ;Allocation info for local variables in function 'main'
                                   8714 ;------------------------------------------------------------
                                   8715 ;input                     Allocated to registers r6 r7 
                                   8716 ;__1966080183              Allocated to registers 
                                   8717 ;s                         Allocated to registers r2 r3 r4 
                                   8718 ;sloc0                     Allocated to stack - _bp +1
                                   8719 ;------------------------------------------------------------
                                   8720 ;	calc.c:466: void main(void) {
                                   8721 ;	-----------------------------------------
                                   8722 ;	 function main
                                   8723 ;	-----------------------------------------
      005A3B                       8724 _main:
      005A3B C0 08            [24] 8725 	push	_bp
      005A3D 85 81 08         [24] 8726 	mov	_bp,sp
      005A40 05 81            [12] 8727 	inc	sp
                                   8728 ;	calc.c:469: c.base = 10;
      005A42 90 90 0C         [24] 8729 	mov	dptr,#_c
      005A45 74 0A            [12] 8730 	mov	a,#0x0a
      005A47 F0               [24] 8731 	movx	@dptr,a
      005A48 E4               [12] 8732 	clr	a
      005A49 A3               [24] 8733 	inc	dptr
      005A4A F0               [24] 8734 	movx	@dptr,a
                                   8735 ;	calc.c:470: c.acc = 0l;
      005A4B 90 90 0E         [24] 8736 	mov	dptr,#(_c + 0x0002)
      005A4E F0               [24] 8737 	movx	@dptr,a
      005A4F A3               [24] 8738 	inc	dptr
      005A50 F0               [24] 8739 	movx	@dptr,a
      005A51 A3               [24] 8740 	inc	dptr
      005A52 F0               [24] 8741 	movx	@dptr,a
      005A53 A3               [24] 8742 	inc	dptr
      005A54 F0               [24] 8743 	movx	@dptr,a
                                   8744 ;	calc.c:471: c.acc_valid = (char)0;
      005A55 90 90 12         [24] 8745 	mov	dptr,#(_c + 0x0006)
      005A58 F0               [24] 8746 	movx	@dptr,a
                                   8747 ;	calc.c:472: c.digit[0] = c.digit[1] = '\0';
      005A59 90 90 14         [24] 8748 	mov	dptr,#(_c + 0x0008)
      005A5C F0               [24] 8749 	movx	@dptr,a
      005A5D 90 90 13         [24] 8750 	mov	dptr,#(_c + 0x0007)
      005A60 F0               [24] 8751 	movx	@dptr,a
                                   8752 ;	calc.c:474: c.ps = &c.s0;
      005A61 90 D0 1D         [24] 8753 	mov	dptr,#(_c + 0x4011)
      005A64 74 15            [12] 8754 	mov	a,#(_c + 0x0009)
      005A66 F0               [24] 8755 	movx	@dptr,a
      005A67 74 90            [12] 8756 	mov	a,#((_c + 0x0009) >> 8)
      005A69 A3               [24] 8757 	inc	dptr
      005A6A F0               [24] 8758 	movx	@dptr,a
      005A6B E4               [12] 8759 	clr	a
      005A6C A3               [24] 8760 	inc	dptr
      005A6D F0               [24] 8761 	movx	@dptr,a
                                   8762 ;	calc.c:475: c.ss = &c.s1;
      005A6E 90 D0 20         [24] 8763 	mov	dptr,#(_c + 0x4014)
      005A71 74 19            [12] 8764 	mov	a,#(_c + 0x200d)
      005A73 F0               [24] 8765 	movx	@dptr,a
      005A74 74 B0            [12] 8766 	mov	a,#((_c + 0x200d) >> 8)
      005A76 A3               [24] 8767 	inc	dptr
      005A77 F0               [24] 8768 	movx	@dptr,a
      005A78 E4               [12] 8769 	clr	a
      005A79 A3               [24] 8770 	inc	dptr
      005A7A F0               [24] 8771 	movx	@dptr,a
                                   8772 ;	calc.c:476: stack_init(c.ps);
      005A7B 90 90 15         [24] 8773 	mov	dptr,#(_c + 0x0009)
      005A7E 75 F0 00         [24] 8774 	mov	b,#0x00
      005A81 12 26 80         [24] 8775 	lcall	_stack_init
                                   8776 ;	calc.c:477: stack_init(c.ss);
      005A84 90 D0 20         [24] 8777 	mov	dptr,#(_c + 0x4014)
      005A87 E0               [24] 8778 	movx	a,@dptr
      005A88 FD               [12] 8779 	mov	r5,a
      005A89 A3               [24] 8780 	inc	dptr
      005A8A E0               [24] 8781 	movx	a,@dptr
      005A8B FE               [12] 8782 	mov	r6,a
      005A8C A3               [24] 8783 	inc	dptr
      005A8D E0               [24] 8784 	movx	a,@dptr
      005A8E FF               [12] 8785 	mov	r7,a
      005A8F 8D 82            [24] 8786 	mov	dpl,r5
      005A91 8E 83            [24] 8787 	mov	dph,r6
      005A93 8F F0            [24] 8788 	mov	b,r7
      005A95 12 26 80         [24] 8789 	lcall	_stack_init
                                   8790 ;	calc.c:479: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      005A98 74 0C            [12] 8791 	mov	a,#_c
      005A9A C0 E0            [24] 8792 	push	acc
      005A9C 74 90            [12] 8793 	mov	a,#(_c >> 8)
      005A9E C0 E0            [24] 8794 	push	acc
      005AA0 E4               [12] 8795 	clr	a
      005AA1 C0 E0            [24] 8796 	push	acc
      005AA3 74 25            [12] 8797 	mov	a,#_deltas
      005AA5 C0 E0            [24] 8798 	push	acc
      005AA7 74 D0            [12] 8799 	mov	a,#(_deltas >> 8)
      005AA9 C0 E0            [24] 8800 	push	acc
      005AAB E4               [12] 8801 	clr	a
      005AAC C0 E0            [24] 8802 	push	acc
      005AAE C0 E0            [24] 8803 	push	acc
      005AB0 74 80            [12] 8804 	mov	a,#0x80
      005AB2 C0 E0            [24] 8805 	push	acc
      005AB4 74 03            [12] 8806 	mov	a,#0x03
      005AB6 C0 E0            [24] 8807 	push	acc
      005AB8 E4               [12] 8808 	clr	a
      005AB9 C0 E0            [24] 8809 	push	acc
      005ABB C0 E0            [24] 8810 	push	acc
      005ABD C0 E0            [24] 8811 	push	acc
      005ABF 90 90 00         [24] 8812 	mov	dptr,#_s
      005AC2 75 F0 00         [24] 8813 	mov	b,#0x00
      005AC5 12 20 90         [24] 8814 	lcall	_state_init
      005AC8 E5 81            [12] 8815 	mov	a,sp
      005ACA 24 F4            [12] 8816 	add	a,#0xf4
      005ACC F5 81            [12] 8817 	mov	sp,a
                                   8818 ;	calc.c:481: while (1) {
      005ACE                       8819 00192$:
                                   8820 ;	calc.c:482: input = getchar();
      005ACE 12 29 C5         [24] 8821 	lcall	_getchar
      005AD1 AE 82            [24] 8822 	mov	r6,dpl
      005AD3 AF 83            [24] 8823 	mov	r7,dph
                                   8824 ;	calc.c:483: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      005AD5 8E 05            [24] 8825 	mov	ar5,r6
      005AD7 BD 0D 02         [24] 8826 	cjne	r5,#0x0d,00386$
      005ADA 80 03            [24] 8827 	sjmp	00101$
      005ADC                       8828 00386$:
      005ADC BD 0A 36         [24] 8829 	cjne	r5,#0x0a,00102$
      005ADF                       8830 00101$:
      005ADF 7A AE            [12] 8831 	mov	r2,#___str_0
      005AE1 7B 7D            [12] 8832 	mov	r3,#(___str_0 >> 8)
      005AE3 7C 80            [12] 8833 	mov	r4,#0x80
                                   8834 ;	calc.c:51: return;
      005AE5                       8835 00197$:
                                   8836 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005AE5 8A 82            [24] 8837 	mov	dpl,r2
      005AE7 8B 83            [24] 8838 	mov	dph,r3
      005AE9 8C F0            [24] 8839 	mov	b,r4
      005AEB A8 08            [24] 8840 	mov	r0,_bp
      005AED 08               [12] 8841 	inc	r0
      005AEE 12 65 2D         [24] 8842 	lcall	__gptrget
      005AF1 F6               [12] 8843 	mov	@r0,a
      005AF2 A8 08            [24] 8844 	mov	r0,_bp
      005AF4 08               [12] 8845 	inc	r0
      005AF5 E6               [12] 8846 	mov	a,@r0
      005AF6 60 24            [24] 8847 	jz	00103$
      005AF8 C0 06            [24] 8848 	push	ar6
      005AFA C0 07            [24] 8849 	push	ar7
      005AFC A8 08            [24] 8850 	mov	r0,_bp
      005AFE 08               [12] 8851 	inc	r0
      005AFF 86 06            [24] 8852 	mov	ar6,@r0
      005B01 7F 00            [12] 8853 	mov	r7,#0x00
      005B03 8E 82            [24] 8854 	mov	dpl,r6
      005B05 8F 83            [24] 8855 	mov	dph,r7
      005B07 12 29 C0         [24] 8856 	lcall	_putchar
      005B0A 0A               [12] 8857 	inc	r2
      005B0B BA 00 01         [24] 8858 	cjne	r2,#0x00,00390$
      005B0E 0B               [12] 8859 	inc	r3
      005B0F                       8860 00390$:
      005B0F D0 07            [24] 8861 	pop	ar7
      005B11 D0 06            [24] 8862 	pop	ar6
                                   8863 ;	calc.c:483: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      005B13 80 D0            [24] 8864 	sjmp	00197$
      005B15                       8865 00102$:
                                   8866 ;	calc.c:484: else (void)putchar(input);
      005B15 8E 82            [24] 8867 	mov	dpl,r6
      005B17 8F 83            [24] 8868 	mov	dph,r7
      005B19 12 29 C0         [24] 8869 	lcall	_putchar
      005B1C                       8870 00103$:
                                   8871 ;	calc.c:485: c.digit[0] = (char)input;
      005B1C 90 90 13         [24] 8872 	mov	dptr,#(_c + 0x0007)
      005B1F ED               [12] 8873 	mov	a,r5
      005B20 F0               [24] 8874 	movx	@dptr,a
                                   8875 ;	calc.c:487: if ((char)input == 'q') {
      005B21 BD 71 29         [24] 8876 	cjne	r5,#0x71,00189$
                                   8877 ;	calc.c:488: if (state_exec(&s, EVENT_TERM) <= 0) break;
      005B24 74 08            [12] 8878 	mov	a,#0x08
      005B26 C0 E0            [24] 8879 	push	acc
      005B28 E4               [12] 8880 	clr	a
      005B29 C0 E0            [24] 8881 	push	acc
      005B2B 90 90 00         [24] 8882 	mov	dptr,#_s
      005B2E 75 F0 00         [24] 8883 	mov	b,#0x00
      005B31 12 21 46         [24] 8884 	lcall	_state_exec
      005B34 AB 82            [24] 8885 	mov	r3,dpl
      005B36 AC 83            [24] 8886 	mov	r4,dph
      005B38 15 81            [12] 8887 	dec	sp
      005B3A 15 81            [12] 8888 	dec	sp
      005B3C C3               [12] 8889 	clr	c
      005B3D E4               [12] 8890 	clr	a
      005B3E 9B               [12] 8891 	subb	a,r3
      005B3F 74 80            [12] 8892 	mov	a,#(0x00 ^ 0x80)
      005B41 8C F0            [24] 8893 	mov	b,r4
      005B43 63 F0 80         [24] 8894 	xrl	b,#0x80
      005B46 95 F0            [12] 8895 	subb	a,b
      005B48 40 84            [24] 8896 	jc	00192$
      005B4A 02 5D FC         [24] 8897 	ljmp	00193$
      005B4D                       8898 00189$:
                                   8899 ;	calc.c:489: } else if ((char)input == 's') {
      005B4D BD 73 2C         [24] 8900 	cjne	r5,#0x73,00186$
                                   8901 ;	calc.c:490: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      005B50 74 03            [12] 8902 	mov	a,#0x03
      005B52 C0 E0            [24] 8903 	push	acc
      005B54 E4               [12] 8904 	clr	a
      005B55 C0 E0            [24] 8905 	push	acc
      005B57 90 90 00         [24] 8906 	mov	dptr,#_s
      005B5A 75 F0 00         [24] 8907 	mov	b,#0x00
      005B5D 12 21 46         [24] 8908 	lcall	_state_exec
      005B60 AB 82            [24] 8909 	mov	r3,dpl
      005B62 AC 83            [24] 8910 	mov	r4,dph
      005B64 15 81            [12] 8911 	dec	sp
      005B66 15 81            [12] 8912 	dec	sp
      005B68 C3               [12] 8913 	clr	c
      005B69 E4               [12] 8914 	clr	a
      005B6A 9B               [12] 8915 	subb	a,r3
      005B6B 74 80            [12] 8916 	mov	a,#(0x00 ^ 0x80)
      005B6D 8C F0            [24] 8917 	mov	b,r4
      005B6F 63 F0 80         [24] 8918 	xrl	b,#0x80
      005B72 95 F0            [12] 8919 	subb	a,b
      005B74 50 03            [24] 8920 	jnc	00396$
      005B76 02 5A CE         [24] 8921 	ljmp	00192$
      005B79                       8922 00396$:
      005B79 02 5D FC         [24] 8923 	ljmp	00193$
      005B7C                       8924 00186$:
                                   8925 ;	calc.c:491: } else if ((char)input == '?') {
      005B7C BD 3F 2C         [24] 8926 	cjne	r5,#0x3f,00183$
                                   8927 ;	calc.c:492: if (state_exec(&s, EVENT_HELP) <= 0) break;
      005B7F 74 04            [12] 8928 	mov	a,#0x04
      005B81 C0 E0            [24] 8929 	push	acc
      005B83 E4               [12] 8930 	clr	a
      005B84 C0 E0            [24] 8931 	push	acc
      005B86 90 90 00         [24] 8932 	mov	dptr,#_s
      005B89 75 F0 00         [24] 8933 	mov	b,#0x00
      005B8C 12 21 46         [24] 8934 	lcall	_state_exec
      005B8F AB 82            [24] 8935 	mov	r3,dpl
      005B91 AC 83            [24] 8936 	mov	r4,dph
      005B93 15 81            [12] 8937 	dec	sp
      005B95 15 81            [12] 8938 	dec	sp
      005B97 C3               [12] 8939 	clr	c
      005B98 E4               [12] 8940 	clr	a
      005B99 9B               [12] 8941 	subb	a,r3
      005B9A 74 80            [12] 8942 	mov	a,#(0x00 ^ 0x80)
      005B9C 8C F0            [24] 8943 	mov	b,r4
      005B9E 63 F0 80         [24] 8944 	xrl	b,#0x80
      005BA1 95 F0            [12] 8945 	subb	a,b
      005BA3 50 03            [24] 8946 	jnc	00399$
      005BA5 02 5A CE         [24] 8947 	ljmp	00192$
      005BA8                       8948 00399$:
      005BA8 02 5D FC         [24] 8949 	ljmp	00193$
      005BAB                       8950 00183$:
                                   8951 ;	calc.c:493: } else if ((char)input == 'i') {
      005BAB BD 69 2C         [24] 8952 	cjne	r5,#0x69,00180$
                                   8953 ;	calc.c:494: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      005BAE 74 06            [12] 8954 	mov	a,#0x06
      005BB0 C0 E0            [24] 8955 	push	acc
      005BB2 E4               [12] 8956 	clr	a
      005BB3 C0 E0            [24] 8957 	push	acc
      005BB5 90 90 00         [24] 8958 	mov	dptr,#_s
      005BB8 75 F0 00         [24] 8959 	mov	b,#0x00
      005BBB 12 21 46         [24] 8960 	lcall	_state_exec
      005BBE AB 82            [24] 8961 	mov	r3,dpl
      005BC0 AC 83            [24] 8962 	mov	r4,dph
      005BC2 15 81            [12] 8963 	dec	sp
      005BC4 15 81            [12] 8964 	dec	sp
      005BC6 C3               [12] 8965 	clr	c
      005BC7 E4               [12] 8966 	clr	a
      005BC8 9B               [12] 8967 	subb	a,r3
      005BC9 74 80            [12] 8968 	mov	a,#(0x00 ^ 0x80)
      005BCB 8C F0            [24] 8969 	mov	b,r4
      005BCD 63 F0 80         [24] 8970 	xrl	b,#0x80
      005BD0 95 F0            [12] 8971 	subb	a,b
      005BD2 50 03            [24] 8972 	jnc	00402$
      005BD4 02 5A CE         [24] 8973 	ljmp	00192$
      005BD7                       8974 00402$:
      005BD7 02 5D FC         [24] 8975 	ljmp	00193$
      005BDA                       8976 00180$:
                                   8977 ;	calc.c:495: } else if ((char)input == 'I') {
      005BDA BD 49 2C         [24] 8978 	cjne	r5,#0x49,00177$
                                   8979 ;	calc.c:496: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      005BDD 74 07            [12] 8980 	mov	a,#0x07
      005BDF C0 E0            [24] 8981 	push	acc
      005BE1 E4               [12] 8982 	clr	a
      005BE2 C0 E0            [24] 8983 	push	acc
      005BE4 90 90 00         [24] 8984 	mov	dptr,#_s
      005BE7 75 F0 00         [24] 8985 	mov	b,#0x00
      005BEA 12 21 46         [24] 8986 	lcall	_state_exec
      005BED AB 82            [24] 8987 	mov	r3,dpl
      005BEF AC 83            [24] 8988 	mov	r4,dph
      005BF1 15 81            [12] 8989 	dec	sp
      005BF3 15 81            [12] 8990 	dec	sp
      005BF5 C3               [12] 8991 	clr	c
      005BF6 E4               [12] 8992 	clr	a
      005BF7 9B               [12] 8993 	subb	a,r3
      005BF8 74 80            [12] 8994 	mov	a,#(0x00 ^ 0x80)
      005BFA 8C F0            [24] 8995 	mov	b,r4
      005BFC 63 F0 80         [24] 8996 	xrl	b,#0x80
      005BFF 95 F0            [12] 8997 	subb	a,b
      005C01 50 03            [24] 8998 	jnc	00405$
      005C03 02 5A CE         [24] 8999 	ljmp	00192$
      005C06                       9000 00405$:
      005C06 02 5D FC         [24] 9001 	ljmp	00193$
      005C09                       9002 00177$:
                                   9003 ;	calc.c:498: ((char)input == 'h') || ((char)input == 'H') ||
      005C09 BD 68 02         [24] 9004 	cjne	r5,#0x68,00406$
      005C0C 80 0D            [24] 9005 	sjmp	00170$
      005C0E                       9006 00406$:
      005C0E BD 48 02         [24] 9007 	cjne	r5,#0x48,00407$
      005C11 80 08            [24] 9008 	sjmp	00170$
      005C13                       9009 00407$:
                                   9010 ;	calc.c:499: ((char)input == 'o') || ((char)input == 'O')
      005C13 BD 6F 02         [24] 9011 	cjne	r5,#0x6f,00408$
      005C16 80 03            [24] 9012 	sjmp	00170$
      005C18                       9013 00408$:
      005C18 BD 4F 2C         [24] 9014 	cjne	r5,#0x4f,00171$
      005C1B                       9015 00170$:
                                   9016 ;	calc.c:501: if (state_exec(&s, EVENT_BASE) <= 0) break;
      005C1B 74 05            [12] 9017 	mov	a,#0x05
      005C1D C0 E0            [24] 9018 	push	acc
      005C1F E4               [12] 9019 	clr	a
      005C20 C0 E0            [24] 9020 	push	acc
      005C22 90 90 00         [24] 9021 	mov	dptr,#_s
      005C25 75 F0 00         [24] 9022 	mov	b,#0x00
      005C28 12 21 46         [24] 9023 	lcall	_state_exec
      005C2B AB 82            [24] 9024 	mov	r3,dpl
      005C2D AC 83            [24] 9025 	mov	r4,dph
      005C2F 15 81            [12] 9026 	dec	sp
      005C31 15 81            [12] 9027 	dec	sp
      005C33 C3               [12] 9028 	clr	c
      005C34 E4               [12] 9029 	clr	a
      005C35 9B               [12] 9030 	subb	a,r3
      005C36 74 80            [12] 9031 	mov	a,#(0x00 ^ 0x80)
      005C38 8C F0            [24] 9032 	mov	b,r4
      005C3A 63 F0 80         [24] 9033 	xrl	b,#0x80
      005C3D 95 F0            [12] 9034 	subb	a,b
      005C3F 50 03            [24] 9035 	jnc	00411$
      005C41 02 5A CE         [24] 9036 	ljmp	00192$
      005C44                       9037 00411$:
      005C44 02 5D FC         [24] 9038 	ljmp	00193$
      005C47                       9039 00171$:
                                   9040 ;	calc.c:502: } else if (isxdigit(input)) {
      005C47 8E 82            [24] 9041 	mov	dpl,r6
      005C49 8F 83            [24] 9042 	mov	dph,r7
      005C4B C0 05            [24] 9043 	push	ar5
      005C4D 12 5E 04         [24] 9044 	lcall	_isxdigit
      005C50 E5 82            [12] 9045 	mov	a,dpl
      005C52 85 83 F0         [24] 9046 	mov	b,dph
      005C55 D0 05            [24] 9047 	pop	ar5
      005C57 45 F0            [12] 9048 	orl	a,b
      005C59 60 2C            [24] 9049 	jz	00168$
                                   9050 ;	calc.c:503: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      005C5B 74 01            [12] 9051 	mov	a,#0x01
      005C5D C0 E0            [24] 9052 	push	acc
      005C5F E4               [12] 9053 	clr	a
      005C60 C0 E0            [24] 9054 	push	acc
      005C62 90 90 00         [24] 9055 	mov	dptr,#_s
      005C65 75 F0 00         [24] 9056 	mov	b,#0x00
      005C68 12 21 46         [24] 9057 	lcall	_state_exec
      005C6B AE 82            [24] 9058 	mov	r6,dpl
      005C6D AF 83            [24] 9059 	mov	r7,dph
      005C6F 15 81            [12] 9060 	dec	sp
      005C71 15 81            [12] 9061 	dec	sp
      005C73 C3               [12] 9062 	clr	c
      005C74 E4               [12] 9063 	clr	a
      005C75 9E               [12] 9064 	subb	a,r6
      005C76 74 80            [12] 9065 	mov	a,#(0x00 ^ 0x80)
      005C78 8F F0            [24] 9066 	mov	b,r7
      005C7A 63 F0 80         [24] 9067 	xrl	b,#0x80
      005C7D 95 F0            [12] 9068 	subb	a,b
      005C7F 50 03            [24] 9069 	jnc	00413$
      005C81 02 5A CE         [24] 9070 	ljmp	00192$
      005C84                       9071 00413$:
      005C84 02 5D FC         [24] 9072 	ljmp	00193$
      005C87                       9073 00168$:
                                   9074 ;	calc.c:505: ((char)input == 'p') || ((char)input == 'P') ||
      005C87 BD 70 02         [24] 9075 	cjne	r5,#0x70,00414$
      005C8A 80 17            [24] 9076 	sjmp	00159$
      005C8C                       9077 00414$:
      005C8C BD 50 02         [24] 9078 	cjne	r5,#0x50,00415$
      005C8F 80 12            [24] 9079 	sjmp	00159$
      005C91                       9080 00415$:
                                   9081 ;	calc.c:506: ((char)input == 'v') || ((char)input == 'V') ||
      005C91 BD 76 02         [24] 9082 	cjne	r5,#0x76,00416$
      005C94 80 0D            [24] 9083 	sjmp	00159$
      005C96                       9084 00416$:
      005C96 BD 56 02         [24] 9085 	cjne	r5,#0x56,00417$
      005C99 80 08            [24] 9086 	sjmp	00159$
      005C9B                       9087 00417$:
                                   9088 ;	calc.c:507: ((char)input == '.') ||
      005C9B BD 2E 02         [24] 9089 	cjne	r5,#0x2e,00418$
      005C9E 80 03            [24] 9090 	sjmp	00159$
      005CA0                       9091 00418$:
                                   9092 ;	calc.c:508: ((char)input == 'x')
      005CA0 BD 78 2C         [24] 9093 	cjne	r5,#0x78,00160$
      005CA3                       9094 00159$:
                                   9095 ;	calc.c:510: if (state_exec(&s, EVENT_OP) <= 0) break;
      005CA3 74 02            [12] 9096 	mov	a,#0x02
      005CA5 C0 E0            [24] 9097 	push	acc
      005CA7 E4               [12] 9098 	clr	a
      005CA8 C0 E0            [24] 9099 	push	acc
      005CAA 90 90 00         [24] 9100 	mov	dptr,#_s
      005CAD 75 F0 00         [24] 9101 	mov	b,#0x00
      005CB0 12 21 46         [24] 9102 	lcall	_state_exec
      005CB3 AE 82            [24] 9103 	mov	r6,dpl
      005CB5 AF 83            [24] 9104 	mov	r7,dph
      005CB7 15 81            [12] 9105 	dec	sp
      005CB9 15 81            [12] 9106 	dec	sp
      005CBB C3               [12] 9107 	clr	c
      005CBC E4               [12] 9108 	clr	a
      005CBD 9E               [12] 9109 	subb	a,r6
      005CBE 74 80            [12] 9110 	mov	a,#(0x00 ^ 0x80)
      005CC0 8F F0            [24] 9111 	mov	b,r7
      005CC2 63 F0 80         [24] 9112 	xrl	b,#0x80
      005CC5 95 F0            [12] 9113 	subb	a,b
      005CC7 50 03            [24] 9114 	jnc	00421$
      005CC9 02 5A CE         [24] 9115 	ljmp	00192$
      005CCC                       9116 00421$:
      005CCC 02 5D FC         [24] 9117 	ljmp	00193$
      005CCF                       9118 00160$:
                                   9119 ;	calc.c:512: ((char)input == 'X') || ((char)input == 'T') ||
      005CCF BD 58 02         [24] 9120 	cjne	r5,#0x58,00422$
      005CD2 80 17            [24] 9121 	sjmp	00151$
      005CD4                       9122 00422$:
      005CD4 BD 54 02         [24] 9123 	cjne	r5,#0x54,00423$
      005CD7 80 12            [24] 9124 	sjmp	00151$
      005CD9                       9125 00423$:
                                   9126 ;	calc.c:513: ((char)input == 'm') || ((char)input == 'M') ||
      005CD9 BD 6D 02         [24] 9127 	cjne	r5,#0x6d,00424$
      005CDC 80 0D            [24] 9128 	sjmp	00151$
      005CDE                       9129 00424$:
      005CDE BD 4D 02         [24] 9130 	cjne	r5,#0x4d,00425$
      005CE1 80 08            [24] 9131 	sjmp	00151$
      005CE3                       9132 00425$:
                                   9133 ;	calc.c:514: ((char)input == 'u') || ((char)input == 'U')
      005CE3 BD 75 02         [24] 9134 	cjne	r5,#0x75,00426$
      005CE6 80 03            [24] 9135 	sjmp	00151$
      005CE8                       9136 00426$:
      005CE8 BD 55 2C         [24] 9137 	cjne	r5,#0x55,00152$
      005CEB                       9138 00151$:
                                   9139 ;	calc.c:516: if (state_exec(&s, EVENT_OP) <= 0) break;
      005CEB 74 02            [12] 9140 	mov	a,#0x02
      005CED C0 E0            [24] 9141 	push	acc
      005CEF E4               [12] 9142 	clr	a
      005CF0 C0 E0            [24] 9143 	push	acc
      005CF2 90 90 00         [24] 9144 	mov	dptr,#_s
      005CF5 75 F0 00         [24] 9145 	mov	b,#0x00
      005CF8 12 21 46         [24] 9146 	lcall	_state_exec
      005CFB AE 82            [24] 9147 	mov	r6,dpl
      005CFD AF 83            [24] 9148 	mov	r7,dph
      005CFF 15 81            [12] 9149 	dec	sp
      005D01 15 81            [12] 9150 	dec	sp
      005D03 C3               [12] 9151 	clr	c
      005D04 E4               [12] 9152 	clr	a
      005D05 9E               [12] 9153 	subb	a,r6
      005D06 74 80            [12] 9154 	mov	a,#(0x00 ^ 0x80)
      005D08 8F F0            [24] 9155 	mov	b,r7
      005D0A 63 F0 80         [24] 9156 	xrl	b,#0x80
      005D0D 95 F0            [12] 9157 	subb	a,b
      005D0F 50 03            [24] 9158 	jnc	00429$
      005D11 02 5A CE         [24] 9159 	ljmp	00192$
      005D14                       9160 00429$:
      005D14 02 5D FC         [24] 9161 	ljmp	00193$
      005D17                       9162 00152$:
                                   9163 ;	calc.c:518: ((char)input == '+') || ((char)input == '-')
      005D17 BD 2B 02         [24] 9164 	cjne	r5,#0x2b,00430$
      005D1A 80 03            [24] 9165 	sjmp	00147$
      005D1C                       9166 00430$:
      005D1C BD 2D 2C         [24] 9167 	cjne	r5,#0x2d,00148$
      005D1F                       9168 00147$:
                                   9169 ;	calc.c:520: if (state_exec(&s, EVENT_OP) <= 0) break;
      005D1F 74 02            [12] 9170 	mov	a,#0x02
      005D21 C0 E0            [24] 9171 	push	acc
      005D23 E4               [12] 9172 	clr	a
      005D24 C0 E0            [24] 9173 	push	acc
      005D26 90 90 00         [24] 9174 	mov	dptr,#_s
      005D29 75 F0 00         [24] 9175 	mov	b,#0x00
      005D2C 12 21 46         [24] 9176 	lcall	_state_exec
      005D2F AE 82            [24] 9177 	mov	r6,dpl
      005D31 AF 83            [24] 9178 	mov	r7,dph
      005D33 15 81            [12] 9179 	dec	sp
      005D35 15 81            [12] 9180 	dec	sp
      005D37 C3               [12] 9181 	clr	c
      005D38 E4               [12] 9182 	clr	a
      005D39 9E               [12] 9183 	subb	a,r6
      005D3A 74 80            [12] 9184 	mov	a,#(0x00 ^ 0x80)
      005D3C 8F F0            [24] 9185 	mov	b,r7
      005D3E 63 F0 80         [24] 9186 	xrl	b,#0x80
      005D41 95 F0            [12] 9187 	subb	a,b
      005D43 50 03            [24] 9188 	jnc	00433$
      005D45 02 5A CE         [24] 9189 	ljmp	00192$
      005D48                       9190 00433$:
      005D48 02 5D FC         [24] 9191 	ljmp	00193$
      005D4B                       9192 00148$:
                                   9193 ;	calc.c:522: ((char)input == '*') ||
      005D4B BD 2A 02         [24] 9194 	cjne	r5,#0x2a,00434$
      005D4E 80 12            [24] 9195 	sjmp	00140$
      005D50                       9196 00434$:
                                   9197 ;	calc.c:523: ((char)input == '/') || ((char)input == '\\') ||
      005D50 BD 2F 02         [24] 9198 	cjne	r5,#0x2f,00435$
      005D53 80 0D            [24] 9199 	sjmp	00140$
      005D55                       9200 00435$:
      005D55 BD 5C 02         [24] 9201 	cjne	r5,#0x5c,00436$
      005D58 80 08            [24] 9202 	sjmp	00140$
      005D5A                       9203 00436$:
                                   9204 ;	calc.c:524: ((char)input == '%') || ((char)input == '#')
      005D5A BD 25 02         [24] 9205 	cjne	r5,#0x25,00437$
      005D5D 80 03            [24] 9206 	sjmp	00140$
      005D5F                       9207 00437$:
      005D5F BD 23 29         [24] 9208 	cjne	r5,#0x23,00141$
      005D62                       9209 00140$:
                                   9210 ;	calc.c:526: if (state_exec(&s, EVENT_OP) <= 0) break;
      005D62 74 02            [12] 9211 	mov	a,#0x02
      005D64 C0 E0            [24] 9212 	push	acc
      005D66 E4               [12] 9213 	clr	a
      005D67 C0 E0            [24] 9214 	push	acc
      005D69 90 90 00         [24] 9215 	mov	dptr,#_s
      005D6C 75 F0 00         [24] 9216 	mov	b,#0x00
      005D6F 12 21 46         [24] 9217 	lcall	_state_exec
      005D72 AE 82            [24] 9218 	mov	r6,dpl
      005D74 AF 83            [24] 9219 	mov	r7,dph
      005D76 15 81            [12] 9220 	dec	sp
      005D78 15 81            [12] 9221 	dec	sp
      005D7A C3               [12] 9222 	clr	c
      005D7B E4               [12] 9223 	clr	a
      005D7C 9E               [12] 9224 	subb	a,r6
      005D7D 74 80            [12] 9225 	mov	a,#(0x00 ^ 0x80)
      005D7F 8F F0            [24] 9226 	mov	b,r7
      005D81 63 F0 80         [24] 9227 	xrl	b,#0x80
      005D84 95 F0            [12] 9228 	subb	a,b
      005D86 50 74            [24] 9229 	jnc	00193$
      005D88 02 5A CE         [24] 9230 	ljmp	00192$
      005D8B                       9231 00141$:
                                   9232 ;	calc.c:528: ((char)input == '&') ||
      005D8B BD 26 02         [24] 9233 	cjne	r5,#0x26,00441$
      005D8E 80 1C            [24] 9234 	sjmp	00131$
      005D90                       9235 00441$:
                                   9236 ;	calc.c:529: ((char)input == '|') || ((char)input == '^') ||
      005D90 BD 7C 02         [24] 9237 	cjne	r5,#0x7c,00442$
      005D93 80 17            [24] 9238 	sjmp	00131$
      005D95                       9239 00442$:
      005D95 BD 5E 02         [24] 9240 	cjne	r5,#0x5e,00443$
      005D98 80 12            [24] 9241 	sjmp	00131$
      005D9A                       9242 00443$:
                                   9243 ;	calc.c:530: ((char)input == '~') ||
      005D9A BD 7E 02         [24] 9244 	cjne	r5,#0x7e,00444$
      005D9D 80 0D            [24] 9245 	sjmp	00131$
      005D9F                       9246 00444$:
                                   9247 ;	calc.c:531: ((char)input == '>') || ((char)input == ']') ||
      005D9F BD 3E 02         [24] 9248 	cjne	r5,#0x3e,00445$
      005DA2 80 08            [24] 9249 	sjmp	00131$
      005DA4                       9250 00445$:
      005DA4 BD 5D 02         [24] 9251 	cjne	r5,#0x5d,00446$
      005DA7 80 03            [24] 9252 	sjmp	00131$
      005DA9                       9253 00446$:
                                   9254 ;	calc.c:532: ((char)input == '<')
      005DA9 BD 3C 29         [24] 9255 	cjne	r5,#0x3c,00132$
      005DAC                       9256 00131$:
                                   9257 ;	calc.c:534: if (state_exec(&s, EVENT_OP) <= 0) break;
      005DAC 74 02            [12] 9258 	mov	a,#0x02
      005DAE C0 E0            [24] 9259 	push	acc
      005DB0 E4               [12] 9260 	clr	a
      005DB1 C0 E0            [24] 9261 	push	acc
      005DB3 90 90 00         [24] 9262 	mov	dptr,#_s
      005DB6 75 F0 00         [24] 9263 	mov	b,#0x00
      005DB9 12 21 46         [24] 9264 	lcall	_state_exec
      005DBC AE 82            [24] 9265 	mov	r6,dpl
      005DBE AF 83            [24] 9266 	mov	r7,dph
      005DC0 15 81            [12] 9267 	dec	sp
      005DC2 15 81            [12] 9268 	dec	sp
      005DC4 C3               [12] 9269 	clr	c
      005DC5 E4               [12] 9270 	clr	a
      005DC6 9E               [12] 9271 	subb	a,r6
      005DC7 74 80            [12] 9272 	mov	a,#(0x00 ^ 0x80)
      005DC9 8F F0            [24] 9273 	mov	b,r7
      005DCB 63 F0 80         [24] 9274 	xrl	b,#0x80
      005DCE 95 F0            [12] 9275 	subb	a,b
      005DD0 50 2A            [24] 9276 	jnc	00193$
      005DD2 02 5A CE         [24] 9277 	ljmp	00192$
      005DD5                       9278 00132$:
                                   9279 ;	calc.c:536: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      005DD5 E4               [12] 9280 	clr	a
      005DD6 C0 E0            [24] 9281 	push	acc
      005DD8 C0 E0            [24] 9282 	push	acc
      005DDA 90 90 00         [24] 9283 	mov	dptr,#_s
      005DDD 75 F0 00         [24] 9284 	mov	b,#0x00
      005DE0 12 21 46         [24] 9285 	lcall	_state_exec
      005DE3 AE 82            [24] 9286 	mov	r6,dpl
      005DE5 AF 83            [24] 9287 	mov	r7,dph
      005DE7 15 81            [12] 9288 	dec	sp
      005DE9 15 81            [12] 9289 	dec	sp
      005DEB C3               [12] 9290 	clr	c
      005DEC E4               [12] 9291 	clr	a
      005DED 9E               [12] 9292 	subb	a,r6
      005DEE 74 80            [12] 9293 	mov	a,#(0x00 ^ 0x80)
      005DF0 8F F0            [24] 9294 	mov	b,r7
      005DF2 63 F0 80         [24] 9295 	xrl	b,#0x80
      005DF5 95 F0            [12] 9296 	subb	a,b
      005DF7 50 03            [24] 9297 	jnc	00450$
      005DF9 02 5A CE         [24] 9298 	ljmp	00192$
      005DFC                       9299 00450$:
      005DFC                       9300 00193$:
                                   9301 ;	calc.c:540: PCON |= 2;
      005DFC 43 87 02         [24] 9302 	orl	_PCON,#0x02
                                   9303 ;	calc.c:542: return;
                                   9304 ;	calc.c:543: }
      005DFF 15 81            [12] 9305 	dec	sp
      005E01 D0 08            [24] 9306 	pop	_bp
      005E03 22               [24] 9307 	ret
                                   9308 	.area CSEG    (CODE)
                                   9309 	.area CONST   (CODE)
                                   9310 	.area CONST   (CODE)
      007DAE                       9311 ___str_0:
      007DAE 0D                    9312 	.db 0x0d
      007DAF 0A                    9313 	.db 0x0a
      007DB0 00                    9314 	.db 0x00
                                   9315 	.area CSEG    (CODE)
                                   9316 	.area CONST   (CODE)
      007DB1                       9317 ___str_1:
      007DB1 73 74 61 63 6B 20 75  9318 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007DC0 0D                    9319 	.db 0x0d
      007DC1 0A                    9320 	.db 0x0a
      007DC2 00                    9321 	.db 0x00
                                   9322 	.area CSEG    (CODE)
                                   9323 	.area CONST   (CODE)
      007DC3                       9324 ___str_2:
      007DC3 56 41 20              9325 	.ascii "VA "
      007DC6 00                    9326 	.db 0x00
                                   9327 	.area CSEG    (CODE)
                                   9328 	.area CONST   (CODE)
      007DC7                       9329 ___str_3:
      007DC7 25 20 31 31 6C 64 20  9330 	.ascii "% 11ld / "
             2F 20
      007DD0 00                    9331 	.db 0x00
                                   9332 	.area CSEG    (CODE)
                                   9333 	.area CONST   (CODE)
      007DD1                       9334 ___str_4:
      007DD1 25 30 38 6C 78 20 2F  9335 	.ascii "%08lx / "
             20
      007DD9 00                    9336 	.db 0x00
                                   9337 	.area CSEG    (CODE)
                                   9338 	.area CONST   (CODE)
      007DDA                       9339 ___str_5:
      007DDA 50 41 20              9340 	.ascii "PA "
      007DDD 00                    9341 	.db 0x00
                                   9342 	.area CSEG    (CODE)
                                   9343 	.area CONST   (CODE)
      007DDE                       9344 ___str_6:
      007DDE 50 54 20              9345 	.ascii "PT "
      007DE1 00                    9346 	.db 0x00
                                   9347 	.area CSEG    (CODE)
                                   9348 	.area CONST   (CODE)
      007DE2                       9349 ___str_7:
      007DE2 56 54 20              9350 	.ascii "VT "
      007DE5 00                    9351 	.db 0x00
                                   9352 	.area CSEG    (CODE)
                                   9353 	.area CONST   (CODE)
      007DE6                       9354 ___str_8:
      007DE6 0D                    9355 	.db 0x0d
      007DE7 0A                    9356 	.db 0x0a
      007DE8 73 74 61 63 6B 20 75  9357 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007DF7 0D                    9358 	.db 0x0d
      007DF8 0A                    9359 	.db 0x0a
      007DF9 00                    9360 	.db 0x00
                                   9361 	.area CSEG    (CODE)
                                   9362 	.area CONST   (CODE)
      007DFA                       9363 ___str_9:
      007DFA 0D                    9364 	.db 0x0d
      007DFB 0A                    9365 	.db 0x0a
      007DFC 73 65 63 6F 6E 64 61  9366 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      007E14 0D                    9367 	.db 0x0d
      007E15 0A                    9368 	.db 0x0a
      007E16 00                    9369 	.db 0x00
                                   9370 	.area CSEG    (CODE)
                                   9371 	.area CONST   (CODE)
      007E17                       9372 ___str_10:
      007E17 0D                    9373 	.db 0x0d
      007E18 0A                    9374 	.db 0x0a
      007E19 73 65 63 6F 6E 64 61  9375 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      007E32 0D                    9376 	.db 0x0d
      007E33 0A                    9377 	.db 0x0a
      007E34 00                    9378 	.db 0x00
                                   9379 	.area CSEG    (CODE)
                                   9380 	.area CONST   (CODE)
      007E35                       9381 ___str_11:
      007E35 0D                    9382 	.db 0x0d
      007E36 0A                    9383 	.db 0x0a
      007E37 73 74 61 63 6B 20 6F  9384 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      007E45 0D                    9385 	.db 0x0d
      007E46 0A                    9386 	.db 0x0a
      007E47 00                    9387 	.db 0x00
                                   9388 	.area CSEG    (CODE)
                                   9389 	.area CONST   (CODE)
      007E48                       9390 ___str_12:
      007E48 0D                    9391 	.db 0x0d
      007E49 0A                    9392 	.db 0x0a
      007E4A 64 69 76 69 73 69 6F  9393 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      007E5A 0D                    9394 	.db 0x0d
      007E5B 0A                    9395 	.db 0x0a
      007E5C 00                    9396 	.db 0x00
                                   9397 	.area CSEG    (CODE)
                                   9398 	.area CONST   (CODE)
      007E5D                       9399 ___str_13:
      007E5D 0D                    9400 	.db 0x0d
      007E5E 0A                    9401 	.db 0x0a
      007E5F 62 61 73 65 20 3D 20  9402 	.ascii "base = %d, "
             25 64 2C 20
      007E6A 00                    9403 	.db 0x00
                                   9404 	.area CSEG    (CODE)
                                   9405 	.area CONST   (CODE)
      007E6B                       9406 ___str_14:
      007E6B 61 63 63 20 3D 20 25  9407 	.ascii "acc = %ld / "
             6C 64 20 2F 20
      007E77 00                    9408 	.db 0x00
                                   9409 	.area CSEG    (CODE)
                                   9410 	.area CONST   (CODE)
      007E78                       9411 ___str_15:
      007E78 2C 20 61 63 63 5F 76  9412 	.ascii ", acc_valid = %d"
             61 6C 69 64 20 3D 20
             25 64
      007E88 0D                    9413 	.db 0x0d
      007E89 0A                    9414 	.db 0x0a
      007E8A 00                    9415 	.db 0x00
                                   9416 	.area CSEG    (CODE)
                                   9417 	.area CONST   (CODE)
      007E8B                       9418 ___str_16:
      007E8B 70 72 69 6D 61 72 79  9419 	.ascii "primary = %p, secondary = %p"
             20 3D 20 25 70 2C 20
             73 65 63 6F 6E 64 61
             72 79 20 3D 20 25 70
      007EA7 0D                    9420 	.db 0x0d
      007EA8 0A                    9421 	.db 0x0a
      007EA9 00                    9422 	.db 0x00
                                   9423 	.area CSEG    (CODE)
                                   9424 	.area CONST   (CODE)
      007EAA                       9425 ___str_17:
      007EAA 0D                    9426 	.db 0x0d
      007EAB 0A                    9427 	.db 0x0a
      007EAC 48 68 4F 6F           9428 	.ascii "HhOo"
      007EB0 09                    9429 	.db 0x09
      007EB1 62 61 73 65 20 31 36  9430 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      007EBF 0D                    9431 	.db 0x0d
      007EC0 0A                    9432 	.db 0x0a
      007EC1 00                    9433 	.db 0x00
                                   9434 	.area CSEG    (CODE)
                                   9435 	.area CONST   (CODE)
      007EC2                       9436 ___str_18:
      007EC2 70                    9437 	.ascii "p"
      007EC3 09                    9438 	.db 0x09
      007EC4 70 65 65 6B 20 74 6F  9439 	.ascii "peek top"
             70
      007ECC 0D                    9440 	.db 0x0d
      007ECD 0A                    9441 	.db 0x0a
      007ECE 00                    9442 	.db 0x00
                                   9443 	.area CSEG    (CODE)
                                   9444 	.area CONST   (CODE)
      007ECF                       9445 ___str_19:
      007ECF 50                    9446 	.ascii "P"
      007ED0 09                    9447 	.db 0x09
      007ED1 70 72 69 6E 74 20 73  9448 	.ascii "print stack"
             74 61 63 6B
      007EDC 0D                    9449 	.db 0x0d
      007EDD 0A                    9450 	.db 0x0a
      007EDE 00                    9451 	.db 0x00
                                   9452 	.area CSEG    (CODE)
                                   9453 	.area CONST   (CODE)
      007EDF                       9454 ___str_20:
      007EDF 76 2E                 9455 	.ascii "v."
      007EE1 09                    9456 	.db 0x09
      007EE2 70 6F 70 20 74 6F 70  9457 	.ascii "pop top"
      007EE9 0D                    9458 	.db 0x0d
      007EEA 0A                    9459 	.db 0x0a
      007EEB 00                    9460 	.db 0x00
                                   9461 	.area CSEG    (CODE)
                                   9462 	.area CONST   (CODE)
      007EEC                       9463 ___str_21:
      007EEC 56                    9464 	.ascii "V"
      007EED 09                    9465 	.db 0x09
      007EEE 70 6F 70 20 61 6C 6C  9466 	.ascii "pop all"
      007EF5 0D                    9467 	.db 0x0d
      007EF6 0A                    9468 	.db 0x0a
      007EF7 00                    9469 	.db 0x00
                                   9470 	.area CSEG    (CODE)
                                   9471 	.area CONST   (CODE)
      007EF8                       9472 ___str_22:
      007EF8 69                    9473 	.ascii "i"
      007EF9 09                    9474 	.db 0x09
      007EFA 72 65 73 65 74 20 61  9475 	.ascii "reset acc"
             63 63
      007F03 0D                    9476 	.db 0x0d
      007F04 0A                    9477 	.db 0x0a
      007F05 00                    9478 	.db 0x00
                                   9479 	.area CSEG    (CODE)
                                   9480 	.area CONST   (CODE)
      007F06                       9481 ___str_23:
      007F06 49                    9482 	.ascii "I"
      007F07 09                    9483 	.db 0x09
      007F08 72 65 73 65 74 20 61  9484 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      007F1D 0D                    9485 	.db 0x0d
      007F1E 0A                    9486 	.db 0x0a
      007F1F 00                    9487 	.db 0x00
                                   9488 	.area CSEG    (CODE)
                                   9489 	.area CONST   (CODE)
      007F20                       9490 ___str_24:
      007F20 78                    9491 	.ascii "x"
      007F21 09                    9492 	.db 0x09
      007F22 65 78 63 68 61 6E 67  9493 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      007F30 0D                    9494 	.db 0x0d
      007F31 0A                    9495 	.db 0x0a
      007F32 00                    9496 	.db 0x00
                                   9497 	.area CSEG    (CODE)
                                   9498 	.area CONST   (CODE)
      007F33                       9499 ___str_25:
      007F33 58                    9500 	.ascii "X"
      007F34 09                    9501 	.db 0x09
      007F35 65 78 63 68 61 6E 67  9502 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      007F5A 0D                    9503 	.db 0x0d
      007F5B 0A                    9504 	.db 0x0a
      007F5C 00                    9505 	.db 0x00
                                   9506 	.area CSEG    (CODE)
                                   9507 	.area CONST   (CODE)
      007F5D                       9508 ___str_26:
      007F5D 54                    9509 	.ascii "T"
      007F5E 09                    9510 	.db 0x09
      007F5F 65 78 63 68 61 6E 67  9511 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      007F82 0D                    9512 	.db 0x0d
      007F83 0A                    9513 	.db 0x0a
      007F84 00                    9514 	.db 0x00
                                   9515 	.area CSEG    (CODE)
                                   9516 	.area CONST   (CODE)
      007F85                       9517 ___str_27:
      007F85 55                    9518 	.ascii "U"
      007F86 09                    9519 	.db 0x09
      007F87 63 6F 70 79 20 74 6F  9520 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      007FA4 0D                    9521 	.db 0x0d
      007FA5 0A                    9522 	.db 0x0a
      007FA6 00                    9523 	.db 0x00
                                   9524 	.area CSEG    (CODE)
                                   9525 	.area CONST   (CODE)
      007FA7                       9526 ___str_28:
      007FA7 75                    9527 	.ascii "u"
      007FA8 09                    9528 	.db 0x09
      007FA9 63 6F 70 79 20 74 6F  9529 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      007FC6 0D                    9530 	.db 0x0d
      007FC7 0A                    9531 	.db 0x0a
      007FC8 00                    9532 	.db 0x00
                                   9533 	.area CSEG    (CODE)
                                   9534 	.area CONST   (CODE)
      007FC9                       9535 ___str_29:
      007FC9 4D                    9536 	.ascii "M"
      007FCA 09                    9537 	.db 0x09
      007FCB 6D 6F 76 65 20 74 6F  9538 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      007FE8 0D                    9539 	.db 0x0d
      007FE9 0A                    9540 	.db 0x0a
      007FEA 00                    9541 	.db 0x00
                                   9542 	.area CSEG    (CODE)
                                   9543 	.area CONST   (CODE)
      007FEB                       9544 ___str_30:
      007FEB 6D                    9545 	.ascii "m"
      007FEC 09                    9546 	.db 0x09
      007FED 6D 6F 76 65 20 74 6F  9547 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      00800A 0D                    9548 	.db 0x0d
      00800B 0A                    9549 	.db 0x0a
      00800C 00                    9550 	.db 0x00
                                   9551 	.area CSEG    (CODE)
                                   9552 	.area CONST   (CODE)
      00800D                       9553 ___str_31:
      00800D 2B                    9554 	.ascii "+"
      00800E 09                    9555 	.db 0x09
      00800F 61 64 64 20 74 6F 70  9556 	.ascii "add top 2"
             20 32
      008018 0D                    9557 	.db 0x0d
      008019 0A                    9558 	.db 0x0a
      00801A 00                    9559 	.db 0x00
                                   9560 	.area CSEG    (CODE)
                                   9561 	.area CONST   (CODE)
      00801B                       9562 ___str_32:
      00801B 2D                    9563 	.ascii "-"
      00801C 09                    9564 	.db 0x09
      00801D 73 75 62 74 72 61 63  9565 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      00802B 0D                    9566 	.db 0x0d
      00802C 0A                    9567 	.db 0x0a
      00802D 00                    9568 	.db 0x00
                                   9569 	.area CSEG    (CODE)
                                   9570 	.area CONST   (CODE)
      00802E                       9571 ___str_33:
      00802E 2A                    9572 	.ascii "*"
      00802F 09                    9573 	.db 0x09
      008030 6D 75 6C 74 69 70 6C  9574 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      00803E 0D                    9575 	.db 0x0d
      00803F 0A                    9576 	.db 0x0a
      008040 00                    9577 	.db 0x00
                                   9578 	.area CSEG    (CODE)
                                   9579 	.area CONST   (CODE)
      008041                       9580 ___str_34:
      008041 2F                    9581 	.ascii "/"
      008042 09                    9582 	.db 0x09
      008043 64 69 76 69 64 65 20  9583 	.ascii "divide top 2"
             74 6F 70 20 32
      00804F 0D                    9584 	.db 0x0d
      008050 0A                    9585 	.db 0x0a
      008051 00                    9586 	.db 0x00
                                   9587 	.area CSEG    (CODE)
                                   9588 	.area CONST   (CODE)
      008052                       9589 ___str_35:
      008052 5C                    9590 	.db 0x5c
      008053 09                    9591 	.db 0x09
      008054 64 69 76 69 64 65 20  9592 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      008069 0D                    9593 	.db 0x0d
      00806A 0A                    9594 	.db 0x0a
      00806B 00                    9595 	.db 0x00
                                   9596 	.area CSEG    (CODE)
                                   9597 	.area CONST   (CODE)
      00806C                       9598 ___str_36:
      00806C 25                    9599 	.ascii "%"
      00806D 09                    9600 	.db 0x09
      00806E 6D 6F 64 75 6C 75 73  9601 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      00807B 0D                    9602 	.db 0x0d
      00807C 0A                    9603 	.db 0x0a
      00807D 00                    9604 	.db 0x00
                                   9605 	.area CSEG    (CODE)
                                   9606 	.area CONST   (CODE)
      00807E                       9607 ___str_37:
      00807E 23                    9608 	.ascii "#"
      00807F 09                    9609 	.db 0x09
      008080 6D 6F 64 75 6C 75 73  9610 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      008096 0D                    9611 	.db 0x0d
      008097 0A                    9612 	.db 0x0a
      008098 00                    9613 	.db 0x00
                                   9614 	.area CSEG    (CODE)
                                   9615 	.area CONST   (CODE)
      008099                       9616 ___str_38:
      008099 26                    9617 	.ascii "&"
      00809A 09                    9618 	.db 0x09
      00809B 61 6E 64 20 74 6F 70  9619 	.ascii "and top 2"
             20 32
      0080A4 0D                    9620 	.db 0x0d
      0080A5 0A                    9621 	.db 0x0a
      0080A6 00                    9622 	.db 0x00
                                   9623 	.area CSEG    (CODE)
                                   9624 	.area CONST   (CODE)
      0080A7                       9625 ___str_39:
      0080A7 7C                    9626 	.ascii "|"
      0080A8 09                    9627 	.db 0x09
      0080A9 6F 72 20 74 6F 70 20  9628 	.ascii "or top 2"
             32
      0080B1 0D                    9629 	.db 0x0d
      0080B2 0A                    9630 	.db 0x0a
      0080B3 00                    9631 	.db 0x00
                                   9632 	.area CSEG    (CODE)
                                   9633 	.area CONST   (CODE)
      0080B4                       9634 ___str_40:
      0080B4 5E                    9635 	.ascii "^"
      0080B5 09                    9636 	.db 0x09
      0080B6 78 6F 72 20 74 6F 70  9637 	.ascii "xor top 2"
             20 32
      0080BF 0D                    9638 	.db 0x0d
      0080C0 0A                    9639 	.db 0x0a
      0080C1 00                    9640 	.db 0x00
                                   9641 	.area CSEG    (CODE)
                                   9642 	.area CONST   (CODE)
      0080C2                       9643 ___str_41:
      0080C2 3E                    9644 	.ascii ">"
      0080C3 09                    9645 	.db 0x09
      0080C4 73 68 69 66 74 20 72  9646 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      0080D5 0D                    9647 	.db 0x0d
      0080D6 0A                    9648 	.db 0x0a
      0080D7 00                    9649 	.db 0x00
                                   9650 	.area CSEG    (CODE)
                                   9651 	.area CONST   (CODE)
      0080D8                       9652 ___str_42:
      0080D8 5D                    9653 	.ascii "]"
      0080D9 09                    9654 	.db 0x09
      0080DA 61 72 69 74 68 6D 65  9655 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      0080F6 0D                    9656 	.db 0x0d
      0080F7 0A                    9657 	.db 0x0a
      0080F8 00                    9658 	.db 0x00
                                   9659 	.area CSEG    (CODE)
                                   9660 	.area CONST   (CODE)
      0080F9                       9661 ___str_43:
      0080F9 3C                    9662 	.ascii "<"
      0080FA 09                    9663 	.db 0x09
      0080FB 73 68 69 66 74 20 6C  9664 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      00810B 0D                    9665 	.db 0x0d
      00810C 0A                    9666 	.db 0x0a
      00810D 00                    9667 	.db 0x00
                                   9668 	.area CSEG    (CODE)
                                   9669 	.area CONST   (CODE)
      00810E                       9670 ___str_44:
      00810E 7E                    9671 	.ascii "~"
      00810F 09                    9672 	.db 0x09
      008110 62 69 74 77 69 73 65  9673 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      00811F 0D                    9674 	.db 0x0d
      008120 0A                    9675 	.db 0x0a
      008121 00                    9676 	.db 0x00
                                   9677 	.area CSEG    (CODE)
                                   9678 	.area CONST   (CODE)
      008122                       9679 ___str_45:
      008122 73                    9680 	.ascii "s"
      008123 09                    9681 	.db 0x09
      008124 73 74 61 74 75 73     9682 	.ascii "status"
      00812A 0D                    9683 	.db 0x0d
      00812B 0A                    9684 	.db 0x0a
      00812C 00                    9685 	.db 0x00
                                   9686 	.area CSEG    (CODE)
                                   9687 	.area CONST   (CODE)
      00812D                       9688 ___str_46:
      00812D 3F                    9689 	.ascii "?"
      00812E 09                    9690 	.db 0x09
      00812F 68 65 6C 70           9691 	.ascii "help"
      008133 0D                    9692 	.db 0x0d
      008134 0A                    9693 	.db 0x0a
      008135 00                    9694 	.db 0x00
                                   9695 	.area CSEG    (CODE)
                                   9696 	.area CONST   (CODE)
      008136                       9697 ___str_47:
      008136 71                    9698 	.ascii "q"
      008137 09                    9699 	.db 0x09
      008138 71 75 69 74           9700 	.ascii "quit"
      00813C 0D                    9701 	.db 0x0d
      00813D 0A                    9702 	.db 0x0a
      00813E 00                    9703 	.db 0x00
                                   9704 	.area CSEG    (CODE)
                                   9705 	.area XINIT   (CODE)
      008150                       9706 __xinit__deltas:
      008150 00 00                 9707 	.byte #0x00, #0x00	;  0
      008152 00 00                 9708 	.byte #0x00, #0x00	;  0
      008154 00 00                 9709 	.byte #0x00, #0x00	;  0
      008156 00 00                 9710 	.byte #0x00,#0x00
      008158 00 00                 9711 	.byte #0x00,#0x00
      00815A 00 00                 9712 	.byte #0x00, #0x00	;  0
      00815C 01 00                 9713 	.byte #0x01, #0x00	;  1
      00815E 02 00                 9714 	.byte #0x02, #0x00	;  2
      008160 00 00                 9715 	.byte #0x00,#0x00
      008162 E2 29                 9716 	.byte _accumulate, (_accumulate >> 8)
      008164 00 00                 9717 	.byte #0x00, #0x00	;  0
      008166 02 00                 9718 	.byte #0x02, #0x00	;  2
      008168 01 00                 9719 	.byte #0x01, #0x00	;  1
      00816A 00 00                 9720 	.byte #0x00,#0x00
      00816C 6B 2F                 9721 	.byte _operator, (_operator >> 8)
      00816E 01 00                 9722 	.byte #0x01, #0x00	;  1
      008170 00 00                 9723 	.byte #0x00, #0x00	;  0
      008172 00 00                 9724 	.byte #0x00, #0x00	;  0
      008174 00 00                 9725 	.byte #0x00,#0x00
      008176 00 00                 9726 	.byte #0x00,#0x00
      008178 01 00                 9727 	.byte #0x01, #0x00	;  1
      00817A 02 00                 9728 	.byte #0x02, #0x00	;  2
      00817C 01 00                 9729 	.byte #0x01, #0x00	;  1
      00817E 00 00                 9730 	.byte #0x00,#0x00
      008180 6B 2F                 9731 	.byte _operator, (_operator >> 8)
      008182 01 00                 9732 	.byte #0x01, #0x00	;  1
      008184 01 00                 9733 	.byte #0x01, #0x00	;  1
      008186 02 00                 9734 	.byte #0x02, #0x00	;  2
      008188 00 00                 9735 	.byte #0x00,#0x00
      00818A E2 29                 9736 	.byte _accumulate, (_accumulate >> 8)
      00818C 02 00                 9737 	.byte #0x02, #0x00	;  2
      00818E 00 00                 9738 	.byte #0x00, #0x00	;  0
      008190 00 00                 9739 	.byte #0x00, #0x00	;  0
      008192 00 00                 9740 	.byte #0x00,#0x00
      008194 F9 51                 9741 	.byte _push_acc, (_push_acc >> 8)
      008196 02 00                 9742 	.byte #0x02, #0x00	;  2
      008198 07 00                 9743 	.byte #0x07, #0x00	;  7
      00819A 00 00                 9744 	.byte #0x00, #0x00	;  0
      00819C 00 00                 9745 	.byte #0x00,#0x00
      00819E 15 53                 9746 	.byte _reset_acc, (_reset_acc >> 8)
      0081A0 02 00                 9747 	.byte #0x02, #0x00	;  2
      0081A2 01 00                 9748 	.byte #0x01, #0x00	;  1
      0081A4 02 00                 9749 	.byte #0x02, #0x00	;  2
      0081A6 00 00                 9750 	.byte #0x00,#0x00
      0081A8 E2 29                 9751 	.byte _accumulate, (_accumulate >> 8)
      0081AA 02 00                 9752 	.byte #0x02, #0x00	;  2
      0081AC 02 00                 9753 	.byte #0x02, #0x00	;  2
      0081AE 01 00                 9754 	.byte #0x01, #0x00	;  1
      0081B0 00 00                 9755 	.byte #0x00,#0x00
      0081B2 F9 51                 9756 	.byte _push_acc, (_push_acc >> 8)
      0081B4 FF 7F                 9757 	.byte #0xff, #0x7f	;  32767
      0081B6 06 00                 9758 	.byte #0x06, #0x00	;  6
      0081B8 FF 7F                 9759 	.byte #0xff, #0x7f	;  32767
      0081BA 00 00                 9760 	.byte #0x00,#0x00
      0081BC 15 53                 9761 	.byte _reset_acc, (_reset_acc >> 8)
      0081BE FF 7F                 9762 	.byte #0xff, #0x7f	;  32767
      0081C0 07 00                 9763 	.byte #0x07, #0x00	;  7
      0081C2 FF 7F                 9764 	.byte #0xff, #0x7f	;  32767
      0081C4 00 00                 9765 	.byte #0x00,#0x00
      0081C6 00 00                 9766 	.byte #0x00,#0x00
      0081C8 FF 7F                 9767 	.byte #0xff, #0x7f	;  32767
      0081CA 05 00                 9768 	.byte #0x05, #0x00	;  5
      0081CC FF 7F                 9769 	.byte #0xff, #0x7f	;  32767
      0081CE 00 00                 9770 	.byte #0x00,#0x00
      0081D0 7F 53                 9771 	.byte _reset_base, (_reset_base >> 8)
      0081D2 FF 7F                 9772 	.byte #0xff, #0x7f	;  32767
      0081D4 03 00                 9773 	.byte #0x03, #0x00	;  3
      0081D6 FF 7F                 9774 	.byte #0xff, #0x7f	;  32767
      0081D8 00 00                 9775 	.byte #0x00,#0x00
      0081DA FD 53                 9776 	.byte _status, (_status >> 8)
      0081DC FF 7F                 9777 	.byte #0xff, #0x7f	;  32767
      0081DE 04 00                 9778 	.byte #0x04, #0x00	;  4
      0081E0 FF 7F                 9779 	.byte #0xff, #0x7f	;  32767
      0081E2 00 00                 9780 	.byte #0x00,#0x00
      0081E4 12 56                 9781 	.byte _help, (_help >> 8)
      0081E6 FF 7F                 9782 	.byte #0xff, #0x7f	;  32767
      0081E8 08 00                 9783 	.byte #0x08, #0x00	;  8
      0081EA 03 00                 9784 	.byte #0x03, #0x00	;  3
      0081EC 00 00                 9785 	.byte #0x00,#0x00
      0081EE 53 2B                 9786 	.byte _dump_pop, (_dump_pop >> 8)
      0081F0 00 80                 9787 	.byte #0x00, #0x80	; -32768
      0081F2 00 80                 9788 	.byte #0x00, #0x80	; -32768
      0081F4 00 80                 9789 	.byte #0x00, #0x80	; -32768
      0081F6 00 00                 9790 	.byte #0x00,#0x00
      0081F8 00 00                 9791 	.byte #0x00,#0x00
                                   9792 	.area CABS    (ABS,CODE)
